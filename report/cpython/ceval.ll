Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/ceval?download=true
inline.NumInlined: 2622
inline.NumDeleted: 159
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_PyEval_EvalFrameDefault:bb.a
  %i.azq = add i32 %i.azp, 1
  store i32 %i.azq, ptr %i.azo, align 8, !tbaa !124
  br label %PyStackRef_DUP.exit

PyStackRef_DUP.exit:                              ; preds = %PyStackRef_CLOSE.exit10644, %bb.lk
  store i64 %i.ayj, ptr %i.azm, align 8, !tbaa !124
  store ptr %.4.val10291, ptr %i.ayb, align 8, !tbaa !165
  %i.azr = getelementptr i8, ptr %i.ayy, i64 -8
  %i.azs = add i32 %.09034, 1
  %i.azt = sext i32 %i.azs to i64
  %i.azu = call ptr @_PyEvalFramePushAndInit(ptr noundef nonnull %0, i64 %.sroa.0.0.i10641, ptr noundef null, ptr noundef %i.azr, i64 noundef %i.azt, ptr noundef null, ptr noundef nonnull %i.ayz) ; 5 uses
  %.4.val10290 = load ptr, ptr %i.ayb, align 8, !tbaa !165
  %i.azv = getelementptr [8 x i8], ptr %.4.val10290, i64 %i.axb ; 2 uses
  %i.azw = icmp eq ptr %i.azu, null
  br i1 %i.azw, label %bb.ll, label %bb.lm

bb.ll:                                            ; preds = %PyStackRef_DUP.exit
  store ptr %i.azv, ptr %i.ayb, align 8, !tbaa !165
  call void @_PyEval_FrameClearAndPop(ptr noundef nonnull %0, ptr noundef nonnull %i.ayz)
  %.4.val10289 = load ptr, ptr %i.ayb, align 8, !tbaa !165
  br label %_PyEval_FormatExcUnbound.exit

bb.lm:                                            ; preds = %PyStackRef_DUP.exit
  %i.azx = getelementptr i8, ptr %.4, i64 72
  store i16 4, ptr %i.azx, align 8, !tbaa !179
  %i.azy = load i32, ptr %i.mah, align 4, !tbaa !111
  store ptr %i.azv, ptr %i.ayb, align 8, !tbaa !165
  store ptr %i.azu, ptr %i.ba, align 8, !tbaa !161
  %i.azz = add i32 %i.azy, -2
  store i32 %i.azz, ptr %i.mah, align 4, !tbaa !111
  %i.baa = getelementptr i8, ptr %i.azu, i64 64
  %.val10288 = load ptr, ptr %i.baa, align 8, !tbaa !165
  %i.bab = getelementptr i8, ptr %i.azu, i64 56
  %i.bac = load ptr, ptr %i.bab, align 8, !tbaa !163 ; 2 uses
  %i.bad = load i16, ptr %i.bac, align 2, !tbaa !291 ; 2 uses
  %.sroa.23483.0.extract.shift = lshr i16 %i.bad, 8
  %.sroa.23483.0.extract.trunc = zext nneg i16 %.sroa.23483.0.extract.shift to i32
  %i.bae = and i16 %i.bad, 255
  %i.baf = zext nneg i16 %i.bae to i64
  br label %.backedge.backedge

bb.ln:                                            ; preds = %.backedge
  %i.bag = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.bag, align 8, !tbaa !163
  %i.bah = getelementptr i8, ptr %.32, i64 8      ; 9 uses
  %i.bai = load ptr, ptr %i.mag, align 8, !tbaa !147
  %i.baj = getelementptr i8, ptr %i.bai, i64 8568
  %i.bak = load ptr, ptr %i.baj, align 8, !tbaa !148
  %.not9587 = icmp eq ptr %i.bak, null
  br i1 %.not9587, label %bb.lo, label %_PyThreadState_HasStackSpace.exit10639.thread

bb.lo:                                            ; preds = %bb.ln
  %i.bal = xor i32 %.09034, -1
  %i.bam = sext i32 %i.bal to i64
  %i.ban = getelementptr [8 x i8], ptr %.4.val1006111641, i64 %i.bam ; 2 uses
  %.sroa.03470.0.copyload = load i64, ptr %i.ban, align 8, !tbaa !124
  %i.bao = sub i32 -2, %.09034
  %i.bap = sext i32 %i.bao to i64                 ; 2 uses
  %i.baq = getelementptr [8 x i8], ptr %.4.val1006111641, i64 %i.bap ; 2 uses
  %.sroa.03472.0.copyload = load i64, ptr %i.baq, align 8, !tbaa !124 ; 3 uses
  %i.bar = icmp eq i64 %.sroa.03470.0.copyload, 1
  br i1 %i.bar, label %bb.lp, label %_PyThreadState_HasStackSpace.exit10639.thread

bb.lp:                                            ; preds = %bb.lo
  %i.bas = and i64 %.sroa.03472.0.copyload, -2
  %i.bat = inttoptr i64 %i.bas to ptr             ; 3 uses
  %i.bau = getelementptr i8, ptr %i.bat, i64 8
  %.val9858 = load ptr, ptr %i.bau, align 8, !tbaa !125
  %.not9588 = icmp eq ptr %.val9858, @PyMethod_Type
  br i1 %.not9588, label %bb.lq, label %_PyThreadState_HasStackSpace.exit10639.thread

bb.lq:                                            ; preds = %bb.lp
  %i.bav = getelementptr i8, ptr %i.bat, i64 24
  %i.baw = load ptr, ptr %i.bav, align 8, !tbaa !308 ; 4 uses
  %i.bax = load i32, ptr %i.baw, align 8, !tbaa !124 ; 2 uses
  %.not.i10647 = icmp sgt i32 %i.bax, -1
  br i1 %.not.i10647, label %bb.ls, label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  %i.bay = ptrtoint ptr %i.baw to i64
  %i.baz = or i64 %i.bay, 1
  br label %_PyStackRef_FromPyObjectNew.exit10649

bb.ls:                                            ; preds = %bb.lq
  %i.bba = add nuw i32 %i.bax, 1
  store i32 %i.bba, ptr %i.baw, align 8, !tbaa !124
  %i.bbb = ptrtoint ptr %i.baw to i64
  br label %_PyStackRef_FromPyObjectNew.exit10649

_PyStackRef_FromPyObjectNew.exit10649:            ; preds = %bb.lr, %bb.ls
  %.sroa.0.0.i10648 = phi i64 [ %i.baz, %bb.lr ], [ %i.bbb, %bb.ls ] ; 3 uses
  %i.bbc = getelementptr i8, ptr %i.bat, i64 16
  %i.bbd = load ptr, ptr %i.bbc, align 8, !tbaa !188 ; 4 uses
  %i.bbe = load i32, ptr %i.bbd, align 8, !tbaa !124 ; 2 uses
  %.not.i10650 = icmp sgt i32 %i.bbe, -1
  br i1 %.not.i10650, label %bb.lu, label %bb.lt

bb.lt:                                            ; preds = %_PyStackRef_FromPyObjectNew.exit10649
  %i.bbf = ptrtoint ptr %i.bbd to i64
  %i.bbg = or i64 %i.bbf, 1
  br label %_PyStackRef_FromPyObjectNew.exit10652

bb.lu:                                            ; preds = %_PyStackRef_FromPyObjectNew.exit10649
  %i.bbh = add nuw i32 %i.bbe, 1
  store i32 %i.bbh, ptr %i.bbd, align 8, !tbaa !124
  %i.bbi = ptrtoint ptr %i.bbd to i64
  br label %_PyStackRef_FromPyObjectNew.exit10652

_PyStackRef_FromPyObjectNew.exit10652:            ; preds = %bb.lt, %bb.lu
  %.sroa.0.0.i10651 = phi i64 [ %i.bbg, %bb.lt ], [ %i.bbi, %bb.lu ] ; 3 uses
  store i64 %.sroa.0.0.i10651, ptr %i.baq, align 8, !tbaa !124
  store i64 %.sroa.0.0.i10648, ptr %i.ban, align 8, !tbaa !124
  %i.bbj = getelementptr i8, ptr %.4, i64 64      ; 3 uses
  store ptr %.4.val1006111641, ptr %i.bbj, align 8, !tbaa !165
  %i.bbk = and i64 %.sroa.03472.0.copyload, 1
  %.not.not.i10653 = icmp eq i64 %i.bbk, 0
  br i1 %.not.not.i10653, label %bb.lv, label %PyStackRef_CLOSE.exit10654

bb.lv:                                            ; preds = %_PyStackRef_FromPyObjectNew.exit10652
  %i.bbl = inttoptr i64 %.sroa.03472.0.copyload to ptr ; 3 uses
  %i.bbm = load i32, ptr %i.bbl, align 8, !tbaa !124
  %i.bbn = add i32 %i.bbm, -1                     ; 2 uses
  store i32 %i.bbn, ptr %i.bbl, align 8, !tbaa !124
  %i.bbo = icmp eq i32 %i.bbn, 0
  br i1 %i.bbo, label %bb.lw, label %PyStackRef_CLOSE.exit10654

bb.lw:                                            ; preds = %bb.lv
  call void @_Py_Dealloc(ptr noundef nonnull %i.bbl) #21
  br label %PyStackRef_CLOSE.exit10654

PyStackRef_CLOSE.exit10654:                       ; preds = %_PyStackRef_FromPyObjectNew.exit10652, %bb.lv, %bb.lw
  %.4.val10287 = load ptr, ptr %i.bbj, align 8, !tbaa !165 ; 9 uses
  %.4.val1028714960 = ptrtoaddr ptr %.4.val10287 to i64
  %i.bbp = and i64 %.sroa.0.0.i10651, -2
  %i.bbq = inttoptr i64 %i.bbp to ptr             ; 3 uses
  %i.bbr = getelementptr i8, ptr %i.bbq, i64 8
  %i.bbs = load ptr, ptr %i.bbr, align 8, !tbaa !125
  %i.bbt = icmp eq ptr %i.bbs, @PyFunction_Type
  br i1 %i.bbt, label %bb.lx, label %_PyThreadState_HasStackSpace.exit10639.thread

bb.lx:                                            ; preds = %PyStackRef_CLOSE.exit10654
  %i.bbu = getelementptr i8, ptr %.32, i64 4
  %.val10434 = load i32, ptr %i.bbu, align 2
  %i.bbv = getelementptr i8, ptr %i.bbq, i64 144
  %i.bbw = load i32, ptr %i.bbv, align 8, !tbaa !306
  %.not9589 = icmp eq i32 %i.bbw, %.val10434
  br i1 %.not9589, label %bb.ly, label %_PyThreadState_HasStackSpace.exit10639.thread

bb.ly:                                            ; preds = %bb.lx
  %i.bbx = getelementptr i8, ptr %i.bbq, i64 48
  %i.bby = load ptr, ptr %i.bbx, align 8, !tbaa !174 ; 2 uses
  %i.bbz = getelementptr i8, ptr %i.bby, i64 52
  %i.bca = load i32, ptr %i.bbz, align 4, !tbaa !189 ; 2 uses
  %i.bcb = icmp ne i64 %.sroa.0.0.i10648, 1       ; 3 uses
  %i.bcc = zext i1 %i.bcb to i32
  %i.bcd = add i32 %.09034, %i.bcc
  %.not9590 = icmp eq i32 %i.bca, %i.bcd
  br i1 %.not9590, label %bb.lz, label %_PyThreadState_HasStackSpace.exit10639.thread

bb.lz:                                            ; preds = %bb.ly
  %i.bce = load ptr, ptr %i.mal, align 8, !tbaa !173 ; 2 uses
  %.not.i10655 = icmp eq ptr %i.bce, null
  br i1 %.not.i10655, label %_PyThreadState_HasStackSpace.exit10639.thread, label %_PyThreadState_HasStackSpace.exit10656

_PyThreadState_HasStackSpace.exit10656:           ; preds = %bb.lz
  %i.bcf = getelementptr i8, ptr %i.bby, i64 76
  %i.bcg = load i32, ptr %i.bcf, align 4, !tbaa !175
  %i.bch = sext i32 %i.bcg to i64
  %i.bci = load ptr, ptr %i.mam, align 8, !tbaa !307
  %i.bcj = ptrtoint ptr %i.bci to i64
  %i.bck = ptrtoint ptr %i.bce to i64
  %i.bcl = sub i64 %i.bcj, %i.bck
  %i.bcm = ashr exact i64 %i.bcl, 3
  %i.bcn = icmp sgt i64 %i.bcm, %i.bch
  br i1 %i.bcn, label %bb.ma, label %_PyThreadState_HasStackSpace.exit10639.thread

bb.ma:                                            ; preds = %_PyThreadState_HasStackSpace.exit10656
  %i.bco = load i32, ptr %i.mah, align 4, !tbaa !111
  %i.bcp = icmp slt i32 %i.bco, 2
  br i1 %i.bcp, label %_PyThreadState_HasStackSpace.exit10639.thread, label %bb.mb

bb.mb:                                            ; preds = %bb.ma
  %i.bcq = sub i32 0, %.09034
  %i.bcr = sext i32 %i.bcq to i64                 ; 2 uses
  %i.bcs = getelementptr [8 x i8], ptr %.4.val10287, i64 %i.bcr ; 6 uses
  %i.bct = call fastcc ptr @_PyFrame_PushUnchecked(ptr noundef nonnull %0, i64 %.sroa.0.0.i10651, i32 noundef %i.bca, ptr noundef nonnull %.4) ; 6 uses
  %i.bcu = ptrtoaddr ptr %i.bct to i64
  %i.bcv = getelementptr i8, ptr %i.bct, i64 80   ; 2 uses
  %i.bcw = zext i1 %i.bcb to i64
  %i.bcx = getelementptr [8 x i8], ptr %i.bcv, i64 %i.bcw ; 6 uses
  store i64 %.sroa.0.0.i10648, ptr %i.bcv, align 8, !tbaa !124
  %i.bcy = icmp sgt i32 %.09034, 0
  br i1 %i.bcy, label %.lr.ph12255.preheader, label %._crit_edge12256

.lr.ph12255.preheader:                            ; preds = %bb.mb
  %wide.trip.count13374 = zext nneg i32 %.09034 to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %.09034, 10
  br i1 %min.iters.check, label %.lr.ph12255.preheader14977, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph12255.preheader
  %7 = add i64 %i.bcu, 80
  %i.bcz = select i1 %i.bcb, i64 8, i64 0
  %8 = add i64 %7, %i.bcz
  %9 = shl nsw i64 %i.bcr, 3
  %i.bda = add i64 %9, %.4.val1028714960
  %i.bdb = sub i64 %i.bda, %8
  %diff.check = icmp ugt i64 %i.bdb, -32
  br i1 %diff.check, label %.lr.ph12255.preheader14977, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count13374, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bdc = getelementptr [8 x i8], ptr %i.bcx, i64 %index ; 2 uses
  %i.bdd = getelementptr [8 x i8], ptr %i.bcs, i64 %index ; 2 uses
  %i.bde = getelementptr i8, ptr %i.bdd, i64 16
  %wide.load = load <2 x i64>, ptr %i.bdd, align 8, !tbaa !124
  %wide.load14961 = load <2 x i64>, ptr %i.bde, align 8, !tbaa !124
  %i.bdf = getelementptr i8, ptr %i.bdc, i64 16
  store <2 x i64> %wide.load, ptr %i.bdc, align 8, !tbaa !124
  store <2 x i64> %wide.load14961, ptr %i.bdf, align 8, !tbaa !124
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bdg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bdg, label %middle.block, label %vector.body, !llvm.loop !268

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count13374
  br i1 %cmp.n, label %._crit_edge12256, label %.lr.ph12255.preheader14977

.lr.ph12255.preheader14977:                       ; preds = %vector.memcheck, %.lr.ph12255.preheader, %middle.block
  %indvars.iv13371.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph12255.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter15517 = and i64 %wide.trip.count13374, 3 ; 2 uses
  %lcmp.mod15518.not = icmp eq i64 %xtraiter15517, 0
  br i1 %lcmp.mod15518.not, label %.lr.ph12255.prol.loopexit, label %.lr.ph12255.prol

.lr.ph12255.prol:                                 ; preds = %.lr.ph12255.preheader14977, %.lr.ph12255.prol
  %indvars.iv13371.prol = phi i64 [ %indvars.iv.next13372.prol, %.lr.ph12255.prol ], [ %indvars.iv13371.ph, %.lr.ph12255.preheader14977 ] ; 3 uses
  %prol.iter15519 = phi i64 [ %prol.iter15519.next, %.lr.ph12255.prol ], [ 0, %.lr.ph12255.preheader14977 ]
  %i.bdh = getelementptr [8 x i8], ptr %i.bcx, i64 %indvars.iv13371.prol
  %i.bdi = getelementptr [8 x i8], ptr %i.bcs, i64 %indvars.iv13371.prol
  %i.bdj = load i64, ptr %i.bdi, align 8, !tbaa !124
  store i64 %i.bdj, ptr %i.bdh, align 8, !tbaa !124
  %indvars.iv.next13372.prol = add nuw nsw i64 %indvars.iv13371.prol, 1 ; 2 uses
  %prol.iter15519.next = add i64 %prol.iter15519, 1 ; 2 uses
  %prol.iter15519.cmp.not = icmp eq i64 %prol.iter15519.next, %xtraiter15517
  br i1 %prol.iter15519.cmp.not, label %.lr.ph12255.prol.loopexit, label %.lr.ph12255.prol, !llvm.loop !269

.lr.ph12255.prol.loopexit:                        ; preds = %.lr.ph12255.prol, %.lr.ph12255.preheader14977
  %indvars.iv13371.unr = phi i64 [ %indvars.iv13371.ph, %.lr.ph12255.preheader14977 ], [ %indvars.iv.next13372.prol, %.lr.ph12255.prol ]
  %i.bdk = sub nsw i64 %indvars.iv13371.ph, %wide.trip.count13374
  %i.bdl = icmp ugt i64 %i.bdk, -4
  br i1 %i.bdl, label %._crit_edge12256, label %.lr.ph12255

.lr.ph12255:                                      ; preds = %.lr.ph12255.prol.loopexit, %.lr.ph12255
  %indvars.iv13371 = phi i64 [ %indvars.iv.next13372.3, %.lr.ph12255 ], [ %indvars.iv13371.unr, %.lr.ph12255.prol.loopexit ] ; 6 uses
  %i.bdm = getelementptr [8 x i8], ptr %i.bcx, i64 %indvars.iv13371
  %i.bdn = getelementptr [8 x i8], ptr %i.bcs, i64 %indvars.iv13371
  %i.bdo = load i64, ptr %i.bdn, align 8, !tbaa !124
  store i64 %i.bdo, ptr %i.bdm, align 8, !tbaa !124
  %indvars.iv.next13372 = add nuw nsw i64 %indvars.iv13371, 1 ; 2 uses
  %i.bdp = getelementptr [8 x i8], ptr %i.bcx, i64 %indvars.iv.next13372
  %i.bdq = getelementptr [8 x i8], ptr %i.bcs, i64 %indvars.iv.next13372
  %i.bdr = load i64, ptr %i.bdq, align 8, !tbaa !124
  store i64 %i.bdr, ptr %i.bdp, align 8, !tbaa !124
  %indvars.iv.next13372.1 = add nuw nsw i64 %indvars.iv13371, 2 ; 2 uses
  %i.bds = getelementptr [8 x i8], ptr %i.bcx, i64 %indvars.iv.next13372.1
  %i.bdt = getelementptr [8 x i8], ptr %i.bcs, i64 %indvars.iv.next13372.1
  %i.bdu = load i64, ptr %i.bdt, align 8, !tbaa !124
  store i64 %i.bdu, ptr %i.bds, align 8, !tbaa !124
  %indvars.iv.next13372.2 = add nuw nsw i64 %indvars.iv13371, 3 ; 2 uses
  %i.bdv = getelementptr [8 x i8], ptr %i.bcx, i64 %indvars.iv.next13372.2
  %i.bdw = getelementptr [8 x i8], ptr %i.bcs, i64 %indvars.iv.next13372.2
  %i.bdx = load i64, ptr %i.bdw, align 8, !tbaa !124
  store i64 %i.bdx, ptr %i.bdv, align 8, !tbaa !124
  %indvars.iv.next13372.3 = add nuw nsw i64 %indvars.iv13371, 4 ; 2 uses
  %exitcond13375.not.3 = icmp eq i64 %indvars.iv.next13372.3, %wide.trip.count13374
  br i1 %exitcond13375.not.3, label %._crit_edge12256, label %.lr.ph12255, !llvm.loop !270

._crit_edge12256:                                 ; preds = %.lr.ph12255.prol.loopexit, %.lr.ph12255, %middle.block, %bb.mb
  %i.bdy = getelementptr i8, ptr %.4, i64 72
  store i16 4, ptr %i.bdy, align 8, !tbaa !179
  %i.bdz = getelementptr [8 x i8], ptr %.4.val10287, i64 %i.bap
  store ptr %i.bdz, ptr %i.bbj, align 8, !tbaa !165
  store ptr %i.bct, ptr %i.ba, align 8, !tbaa !161
  %i.bea = load i32, ptr %i.mah, align 4, !tbaa !111
  %i.beb = add i32 %i.bea, -1
  store i32 %i.beb, ptr %i.mah, align 4, !tbaa !111
  %i.bec = getelementptr i8, ptr %i.bct, i64 64
  %.val10286 = load ptr, ptr %i.bec, align 8, !tbaa !165
  %i.bed = getelementptr i8, ptr %i.bct, i64 56
  %i.bee = load ptr, ptr %i.bed, align 8, !tbaa !163 ; 2 uses
  %i.bef = load i16, ptr %i.bee, align 2, !tbaa !291 ; 2 uses
  %.sroa.23436.0.extract.shift = lshr i16 %i.bef, 8
  %.sroa.23436.0.extract.trunc = zext nneg i16 %.sroa.23436.0.extract.shift to i32
  %i.beg = and i16 %i.bef, 255
  %i.beh = zext nneg i16 %i.beg to i64
  br label %.backedge.backedge

bb.mc:                                            ; preds = %.backedge
  %i.bei = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.bei, align 8, !tbaa !163
  %i.bej = getelementptr i8, ptr %.32, i64 8      ; 6 uses
  %i.bek = load ptr, ptr %i.mag, align 8, !tbaa !147
  %i.bel = getelementptr i8, ptr %i.bek, i64 8568
  %i.bem = load ptr, ptr %i.bel, align 8, !tbaa !148
  %.not9584 = icmp eq ptr %i.bem, null
  br i1 %.not9584, label %bb.md, label %_PyThreadState_HasStackSpace.exit10639.thread

bb.md:                                            ; preds = %bb.mc
  %i.ben = xor i32 %.09034, -1
  %i.beo = sext i32 %i.ben to i64
  %i.bep = getelementptr [8 x i8], ptr %.4.val1006111641, i64 %i.beo ; 2 uses
  %.sroa.03425.0.copyload = load i64, ptr %i.bep, align 8, !tbaa !124
  %i.beq = sub i32 -2, %.09034
  %i.ber = sext i32 %i.beq to i64                 ; 2 uses
  %i.bes = getelementptr [8 x i8], ptr %.4.val1006111641, i64 %i.ber ; 2 uses
  %.sroa.03427.0.copyload = load i64, ptr %i.bes, align 8, !tbaa !124 ; 3 uses
  %i.bet = getelementptr i8, ptr %.32, i64 4
  %.val10433 = load i32, ptr %i.bet, align 2
  %i.beu = and i64 %.sroa.03427.0.copyload, -2
  %i.bev = inttoptr i64 %i.beu to ptr             ; 3 uses
  %i.bew = getelementptr i8, ptr %i.bev, i64 8
  %.val9857 = load ptr, ptr %i.bew, align 8, !tbaa !125
  %.not9585 = icmp eq ptr %.val9857, @PyMethod_Type
  br i1 %.not9585, label %bb.me, label %_PyThreadState_HasStackSpace.exit10639.thread

bb.me:                                            ; preds = %bb.md
  %i.bex = getelementptr i8, ptr %i.bev, i64 16   ; 2 uses
  %i.bey = load ptr, ptr %i.bex, align 8, !tbaa !188 ; 3 uses
  %i.bez = getelementptr i8, ptr %i.bey, i64 8
  %i.bfa = load ptr, ptr %i.bez, align 8, !tbaa !125
  %i.bfb = icmp eq ptr %i.bfa, @PyFunction_Type
  br i1 %i.bfb, label %bb.mf, label %_PyThreadState_HasStackSpace.exit10639.thread

bb.mf:                                            ; preds = %bb.me
  %i.bfc = getelementptr i8, ptr %i.bey, i64 144
  %i.bfd = load i32, ptr %i.bfc, align 8, !tbaa !306
  %i.bfe = icmp eq i32 %i.bfd, %.val10433
  %i.bff = icmp eq i64 %.sroa.03425.0.copyload, 1
  %or.cond11 = select i1 %i.bfe, i1 %i.bff, i1 false
  br i1 %or.cond11, label %bb.mg, label %_PyThreadState_HasStackSpace.exit10639.thread

bb.mg:                                            ; preds = %bb.mf
  %i.bfg = getelementptr i8, ptr %i.bev, i64 24
  %i.bfh = load ptr, ptr %i.bfg, align 8, !tbaa !308 ; 4 uses
  %i.bfi = load i32, ptr %i.bfh, align 8, !tbaa !124 ; 2 uses
  %.not.i10657 = icmp sgt i32 %i.bfi, -1
  br i1 %.not.i10657, label %bb.mi, label %bb.mh

bb.mh:                                            ; preds = %bb.mg
  %i.bfj = ptrtoint ptr %i.bfh to i64
  %i.bfk = or i64 %i.bfj, 1
  br label %_PyStackRef_FromPyObjectNew.exit10659

bb.mi:                                            ; preds = %bb.mg
  %i.bfl = add nuw i32 %i.bfi, 1
  store i32 %i.bfl, ptr %i.bfh, align 8, !tbaa !124
  %i.bfm = ptrtoint ptr %i.bfh to i64
  %.pre13393 = load ptr, ptr %i.bex, align 8, !tbaa !188
  br label %_PyStackRef_FromPyObjectNew.exit10659

_PyStackRef_FromPyObjectNew.exit10659:            ; preds = %bb.mh, %bb.mi
  %i.bfn = phi ptr [ %i.bey, %bb.mh ], [ %.pre13393, %bb.mi ] ; 4 uses
  %.sroa.0.0.i10658 = phi i64 [ %i.bfk, %bb.mh ], [ %i.bfm, %bb.mi ] ; 2 uses
  %i.bfo = load i32, ptr %i.bfn, align 8, !tbaa !124 ; 2 uses
  %.not.i10660 = icmp sgt i32 %i.bfo, -1
  br i1 %.not.i10660, label %bb.mk, label %bb.mj

bb.mj:                                            ; preds = %_PyStackRef_FromPyObjectNew.exit10659
  %i.bfp = ptrtoint ptr %i.bfn to i64
  %i.bfq = or i64 %i.bfp, 1
  br label %_PyStackRef_FromPyObjectNew.exit10662

bb.mk:                                            ; preds = %_PyStackRef_FromPyObjectNew.exit10659
  %i.bfr = add nuw i32 %i.bfo, 1
  store i32 %i.bfr, ptr %i.bfn, align 8, !tbaa !124
  %i.bfs = ptrtoint ptr %i.bfn to i64
  br label %_PyStackRef_FromPyObjectNew.exit10662

_PyStackRef_FromPyObjectNew.exit10662:            ; preds = %bb.mj, %bb.mk
  %.sroa.0.0.i10661 = phi i64 [ %i.bfq, %bb.mj ], [ %i.bfs, %bb.mk ] ; 3 uses
  store i64 %.sroa.0.0.i10661, ptr %i.bes, align 8, !tbaa !124
  store i64 %.sroa.0.0.i10658, ptr %i.bep, align 8, !tbaa !124
  %i.bft = getelementptr i8, ptr %.4, i64 64      ; 5 uses
  store ptr %.4.val1006111641, ptr %i.bft, align 8, !tbaa !165
  %i.bfu = and i64 %.sroa.03427.0.copyload, 1
  %.not.not.i10663 = icmp eq i64 %i.bfu, 0
  br i1 %.not.not.i10663, label %bb.ml, label %PyStackRef_CLOSE.exit10664

bb.ml:                                            ; preds = %_PyStackRef_FromPyObjectNew.exit10662
  %i.bfv = inttoptr i64 %.sroa.03427.0.copyload to ptr ; 3 uses
  %i.bfw = load i32, ptr %i.bfv, align 8, !tbaa !124
  %i.bfx = add i32 %i.bfw, -1                     ; 2 uses
  store i32 %i.bfx, ptr %i.bfv, align 8, !tbaa !124
  %i.bfy = icmp eq i32 %i.bfx, 0
  br i1 %i.bfy, label %bb.mm, label %PyStackRef_CLOSE.exit10664

bb.mm:                                            ; preds = %bb.ml
  call void @_Py_Dealloc(ptr noundef nonnull %i.bfv) #21
  br label %PyStackRef_CLOSE.exit10664

PyStackRef_CLOSE.exit10664:                       ; preds = %_PyStackRef_FromPyObjectNew.exit10662, %bb.ml, %bb.mm
  %.4.val10285 = load ptr, ptr %i.bft, align 8, !tbaa !165 ; 3 uses
  %i.bfz = load i32, ptr %i.mah, align 4, !tbaa !111
  %i.bga = icmp slt i32 %i.bfz, 2
end_hunk_0
begin_hunk_1_@_PyEval_EvalFrameDefault:bb.a
  %i.dad = xor i32 %.09034, -1
  %i.dae = sext i32 %i.dad to i64                 ; 2 uses
  %i.daf = getelementptr [8 x i8], ptr %.4.val1006111641, i64 %i.dae
  %.sroa.02797.0.copyload = load i64, ptr %i.daf, align 8, !tbaa !124
  %i.dag = icmp ne i64 %.sroa.02797.0.copyload, 1 ; 2 uses
  %.09113.idx = select i1 %i.dag, i64 -8, i64 0
  %.09113 = getelementptr i8, ptr %i.dac, i64 %.09113.idx
  %i.dah = zext i1 %i.dag to i32
  %.09112 = add i32 %.09034, %i.dah
  %i.dai = getelementptr i8, ptr %.4, i64 64      ; 4 uses
  store ptr %.4.val1006111641, ptr %i.dai, align 8, !tbaa !165
  %i.daj = call ptr @_Py_VectorCall_StackRefSteal(i64 %.sroa.02798.0.copyload, ptr noundef %.09113, i32 noundef %.09112, i64 1) ; 3 uses
  %.4.val10210 = load ptr, ptr %i.dai, align 8, !tbaa !165 ; 3 uses
  %i.dak = icmp eq ptr %i.daj, null
  br i1 %i.dak, label %bb.vm, label %bb.vn

bb.vm:                                            ; preds = %bb.vl
  %i.dal = getelementptr [8 x i8], ptr %.4.val10210, i64 %i.czs
  br label %_PyEval_FormatExcUnbound.exit

bb.vn:                                            ; preds = %bb.vl
  %i.dam = getelementptr i8, ptr %i.daj, i64 6
  %i.dan = load i16, ptr %i.dam, align 2, !tbaa !124
  %i.dao = and i16 %i.dan, 1
  %i.dap = ptrtoint ptr %i.daj to i64
  %i.daq = zext nneg i16 %i.dao to i64
  %i.dar = or i64 %i.daq, %i.dap
  %i.das = getelementptr [8 x i8], ptr %.4.val10210, i64 %i.czs
  store i64 %i.dar, ptr %i.das, align 8, !tbaa !124
  %i.dat = getelementptr [8 x i8], ptr %.4.val10210, i64 %i.dae ; 2 uses
  store ptr %i.dat, ptr %i.dai, align 8, !tbaa !165
  %i.dau = load atomic i64, ptr %i.maf monotonic, align 8
  %i.dav = and i64 %i.dau, 255
  %.not.i10814 = icmp eq i64 %i.dav, 0
  br i1 %.not.i10814, label %check_periodics.exit10816.thread, label %check_periodics.exit10816

check_periodics.exit10816:                        ; preds = %bb.vn
  %i.daw = call i32 @_Py_HandlePending(ptr noundef nonnull %0) #21
  %.4.val10209 = load ptr, ptr %i.dai, align 8, !tbaa !165 ; 2 uses
  %.not9544 = icmp eq i32 %i.daw, 0
  br i1 %.not9544, label %check_periodics.exit10816.thread, label %_PyEval_FormatExcUnbound.exit.loopexit

check_periodics.exit10816.thread:                 ; preds = %bb.vn, %check_periodics.exit10816
  %.4.val1020911600 = phi ptr [ %.4.val10209, %check_periodics.exit10816 ], [ %i.dat, %bb.vn ]
  %i.dax = load i16, ptr %i.czq, align 2, !tbaa !291 ; 2 uses
  %.sroa.22784.0.extract.shift = lshr i16 %i.dax, 8
  %.sroa.22784.0.extract.trunc = zext nneg i16 %.sroa.22784.0.extract.shift to i32
  %i.day = and i16 %i.dax, 255
  %i.daz = zext nneg i16 %i.day to i64
  br label %.backedge.backedge

bb.vo:                                            ; preds = %.backedge
  %i.dba = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.dba, align 8, !tbaa !163
  %i.dbb = getelementptr i8, ptr %.32, i64 8      ; 7 uses
  %i.dbc = load ptr, ptr %i.mag, align 8, !tbaa !147
  %i.dbd = getelementptr i8, ptr %i.dbc, i64 8568
  %i.dbe = load ptr, ptr %i.dbd, align 8, !tbaa !148
  %.not9541 = icmp eq ptr %i.dbe, null
  br i1 %.not9541, label %bb.vp, label %_PyThreadState_HasStackSpace.exit10639.thread

bb.vp:                                            ; preds = %bb.vo
  %i.dbf = sub i32 -2, %.09034
  %i.dbg = sext i32 %i.dbf to i64
  %i.dbh = getelementptr [8 x i8], ptr %.4.val1006111641, i64 %i.dbg ; 2 uses
  %.sroa.02777.0.copyload = load i64, ptr %i.dbh, align 8, !tbaa !124 ; 2 uses
  %i.dbi = and i64 %.sroa.02777.0.copyload, -2
  %i.dbj = inttoptr i64 %i.dbi to ptr             ; 4 uses
  %i.dbk = getelementptr i8, ptr %i.dbj, i64 8
  %i.dbl = load ptr, ptr %i.dbk, align 8, !tbaa !125
  %i.dbm = icmp eq ptr %i.dbl, @PyFunction_Type
  br i1 %i.dbm, label %bb.vq, label %_PyThreadState_HasStackSpace.exit10639.thread

bb.vq:                                            ; preds = %bb.vp
  %i.dbn = getelementptr i8, ptr %.32, i64 4
  %.val10430 = load i32, ptr %i.dbn, align 2
  %i.dbo = getelementptr i8, ptr %i.dbj, i64 144
  %i.dbp = load i32, ptr %i.dbo, align 8, !tbaa !306
  %.not9542 = icmp eq i32 %i.dbp, %.val10430
  br i1 %.not9542, label %bb.vr, label %_PyThreadState_HasStackSpace.exit10639.thread

bb.vr:                                            ; preds = %bb.vq
  %i.dbq = xor i32 %.09034, -1
  %i.dbr = sext i32 %i.dbq to i64
  %i.dbs = getelementptr [8 x i8], ptr %.4.val1006111641, i64 %i.dbr
  %.sroa.02774.0.copyload = load i64, ptr %i.dbs, align 8, !tbaa !124 ; 2 uses
  %i.dbt = getelementptr i8, ptr %i.dbj, i64 48
  %i.dbu = load ptr, ptr %i.dbt, align 8, !tbaa !174 ; 8 uses
  %i.dbv = getelementptr i8, ptr %i.dbu, i64 52
  %i.dbw = load i32, ptr %i.dbv, align 4, !tbaa !189 ; 3 uses
  %i.dbx = icmp ne i64 %.sroa.02774.0.copyload, 1 ; 3 uses
  %i.dby = zext i1 %i.dbx to i32
  %i.dbz = add i32 %.09034, %i.dby
  %.not9543 = icmp eq i32 %i.dbw, %i.dbz
  br i1 %.not9543, label %bb.vs, label %_PyThreadState_HasStackSpace.exit10639.thread

bb.vs:                                            ; preds = %bb.vr
  %i.dca = load ptr, ptr %i.mal, align 8, !tbaa !173 ; 17 uses
  %.not.i10817 = icmp eq ptr %i.dca, null
  br i1 %.not.i10817, label %_PyThreadState_HasStackSpace.exit10639.thread, label %_PyThreadState_HasStackSpace.exit10818

_PyThreadState_HasStackSpace.exit10818:           ; preds = %bb.vs
  %i.dcb = getelementptr i8, ptr %i.dbu, i64 76
  %i.dcc = load i32, ptr %i.dcb, align 4, !tbaa !175
  %i.dcd = sext i32 %i.dcc to i64                 ; 2 uses
  %i.dce = load ptr, ptr %i.mam, align 8, !tbaa !307
  %i.dcf = ptrtoint ptr %i.dce to i64
  %i.dcg = ptrtoint ptr %i.dca to i64             ; 2 uses
  %i.dch = sub i64 %i.dcf, %i.dcg
  %i.dci = ashr exact i64 %i.dch, 3
  %i.dcj = icmp sgt i64 %i.dci, %i.dcd
  br i1 %i.dcj, label %bb.vt, label %_PyThreadState_HasStackSpace.exit10639.thread

bb.vt:                                            ; preds = %_PyThreadState_HasStackSpace.exit10818
  %i.dck = load i32, ptr %i.mah, align 4, !tbaa !111
  %i.dcl = icmp slt i32 %i.dck, 2
  br i1 %i.dcl, label %_PyThreadState_HasStackSpace.exit10639.thread, label %bb.vu

bb.vu:                                            ; preds = %bb.vt
  %i.dcm = sub i32 0, %.09034
  %i.dcn = sext i32 %i.dcm to i64                 ; 2 uses
  %i.dco = getelementptr [8 x i8], ptr %.4.val1006111641, i64 %i.dcn ; 6 uses
  %i.dcp = getelementptr [8 x i8], ptr %i.dca, i64 %i.dcd
  store ptr %i.dcp, ptr %i.mal, align 8, !tbaa !173
  %i.dcq = getelementptr i8, ptr %i.dca, i64 8
  store ptr %.4, ptr %i.dcq, align 8, !tbaa !162
  %i.dcr = getelementptr i8, ptr %i.dca, i64 16
  store i64 %.sroa.02777.0.copyload, ptr %i.dcr, align 8, !tbaa !124
  %i.dcs = load i32, ptr %i.dbu, align 8, !tbaa !124 ; 2 uses
  %.not.i.i.i10819 = icmp sgt i32 %i.dcs, -1
  br i1 %.not.i.i.i10819, label %bb.vw, label %bb.vv

bb.vv:                                            ; preds = %bb.vu
  %i.dct = ptrtoint ptr %i.dbu to i64
  %i.dcu = or i64 %i.dct, 1
  br label %_PyStackRef_FromPyObjectNew.exit.i.i10820

bb.vw:                                            ; preds = %bb.vu
  %i.dcv = add nuw i32 %i.dcs, 1
  store i32 %i.dcv, ptr %i.dbu, align 8, !tbaa !124
  %i.dcw = ptrtoint ptr %i.dbu to i64
  br label %_PyStackRef_FromPyObjectNew.exit.i.i10820

_PyStackRef_FromPyObjectNew.exit.i.i10820:        ; preds = %bb.vw, %bb.vv
  %.sroa.0.0.i.i.i10821 = phi i64 [ %i.dcu, %bb.vv ], [ %i.dcw, %bb.vw ]
  store i64 %.sroa.0.0.i.i.i10821, ptr %i.dca, align 8, !tbaa !124
  %i.dcx = getelementptr i8, ptr %i.dbj, i64 16
  %i.dcy = getelementptr i8, ptr %i.dca, i64 24
  %i.dcz = load <2 x ptr>, ptr %i.dcx, align 8, !tbaa !120
  store <2 x ptr> %i.dcz, ptr %i.dcy, align 8, !tbaa !120
  %i.dda = getelementptr i8, ptr %i.dca, i64 40
  store ptr null, ptr %i.dda, align 8, !tbaa !176
  %i.ddb = getelementptr i8, ptr %i.dca, i64 80   ; 4 uses
  %i.ddc = getelementptr i8, ptr %i.dbu, i64 72   ; 2 uses
  %i.ddd = load i32, ptr %i.ddc, align 8, !tbaa !177 ; 2 uses
  %i.dde = sext i32 %i.ddd to i64
  %i.ddf = getelementptr [8 x i8], ptr %i.ddb, i64 %i.dde
  %i.ddg = getelementptr i8, ptr %i.dca, i64 64   ; 2 uses
  store ptr %i.ddf, ptr %i.ddg, align 8, !tbaa !165
  %i.ddh = getelementptr i8, ptr %i.dca, i64 48
  store ptr null, ptr %i.ddh, align 8, !tbaa !178
  %i.ddi = getelementptr i8, ptr %i.dbu, i64 208
  %i.ddj = getelementptr i8, ptr %i.dca, i64 56   ; 2 uses
  store ptr %i.ddi, ptr %i.ddj, align 8, !tbaa !163
  %i.ddk = getelementptr i8, ptr %i.dca, i64 72
  store i16 0, ptr %i.ddk, align 8, !tbaa !179
  %i.ddl = getelementptr i8, ptr %i.dca, i64 74
  store i8 0, ptr %i.ddl, align 2, !tbaa !180
  %i.ddm = getelementptr i8, ptr %i.dca, i64 75
  store i8 0, ptr %i.ddm, align 1, !tbaa !181
  %i.ddn = icmp slt i32 %i.dbw, %i.ddd
  br i1 %i.ddn, label %.lr.ph.preheader.i.i10822, label %_PyFrame_PushUnchecked.exit10826

.lr.ph.preheader.i.i10822:                        ; preds = %_PyStackRef_FromPyObjectNew.exit.i.i10820
  %i.ddo = sext i32 %i.dbw to i64
  br label %.lr.ph.i.i10823

.lr.ph.i.i10823:                                  ; preds = %.lr.ph.i.i10823, %.lr.ph.preheader.i.i10822
  %indvars.iv.i.i10824 = phi i64 [ %i.ddo, %.lr.ph.preheader.i.i10822 ], [ %indvars.iv.next.i.i10825, %.lr.ph.i.i10823 ] ; 2 uses
  %i.ddp = getelementptr [8 x i8], ptr %i.ddb, i64 %indvars.iv.i.i10824
  store i64 1, ptr %i.ddp, align 8, !tbaa !124
  %indvars.iv.next.i.i10825 = add nsw i64 %indvars.iv.i.i10824, 1 ; 2 uses
  %i.ddq = load i32, ptr %i.ddc, align 8, !tbaa !177
  %i.ddr = sext i32 %i.ddq to i64
  %i.dds = icmp slt i64 %indvars.iv.next.i.i10825, %i.ddr
  br i1 %i.dds, label %.lr.ph.i.i10823, label %_PyFrame_PushUnchecked.exit10826, !llvm.loop !1

_PyFrame_PushUnchecked.exit10826:                 ; preds = %.lr.ph.i.i10823, %_PyStackRef_FromPyObjectNew.exit.i.i10820
  %i.ddt = zext i1 %i.dbx to i64
  %i.ddu = getelementptr [8 x i8], ptr %i.ddb, i64 %i.ddt ; 6 uses
  store i64 %.sroa.02774.0.copyload, ptr %i.ddb, align 8, !tbaa !124
  %i.ddv = icmp sgt i32 %.09034, 0
  br i1 %i.ddv, label %.lr.ph12251.preheader, label %._crit_edge12252

.lr.ph12251.preheader:                            ; preds = %_PyFrame_PushUnchecked.exit10826
  %wide.trip.count = zext nneg i32 %.09034 to i64 ; 5 uses
  %min.iters.check14966 = icmp ult i32 %.09034, 10
  br i1 %min.iters.check14966, label %.lr.ph12251.preheader14978, label %vector.memcheck14962

vector.memcheck14962:                             ; preds = %.lr.ph12251.preheader
  %10 = add i64 %i.dcg, 80
  %i.ddw = select i1 %i.dbx, i64 8, i64 0
  %11 = add i64 %10, %i.ddw
  %12 = shl nsw i64 %i.dcn, 3
  %i.ddx = add i64 %12, %.4.val100611164114963
  %i.ddy = sub i64 %i.ddx, %11
  %diff.check14964 = icmp ugt i64 %i.ddy, -32
  br i1 %diff.check14964, label %.lr.ph12251.preheader14978, label %vector.ph14967

vector.ph14967:                                   ; preds = %vector.memcheck14962
  %n.vec14968 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vector.body14969

vector.body14969:                                 ; preds = %vector.body14969, %vector.ph14967
  %index14970 = phi i64 [ 0, %vector.ph14967 ], [ %index.next14973, %vector.body14969 ] ; 3 uses
  %i.ddz = getelementptr [8 x i8], ptr %i.ddu, i64 %index14970 ; 2 uses
  %i.dea = getelementptr [8 x i8], ptr %i.dco, i64 %index14970 ; 2 uses
  %i.deb = getelementptr i8, ptr %i.dea, i64 16
  %wide.load14971 = load <2 x i64>, ptr %i.dea, align 8, !tbaa !124
  %wide.load14972 = load <2 x i64>, ptr %i.deb, align 8, !tbaa !124
  %i.dec = getelementptr i8, ptr %i.ddz, i64 16
  store <2 x i64> %wide.load14971, ptr %i.ddz, align 8, !tbaa !124
  store <2 x i64> %wide.load14972, ptr %i.dec, align 8, !tbaa !124
  %index.next14973 = add nuw i64 %index14970, 4   ; 2 uses
  %i.ded = icmp eq i64 %index.next14973, %n.vec14968
  br i1 %i.ded, label %middle.block14974, label %vector.body14969, !llvm.loop !271

middle.block14974:                                ; preds = %vector.body14969
  %cmp.n14975 = icmp eq i64 %n.vec14968, %wide.trip.count
  br i1 %cmp.n14975, label %._crit_edge12252, label %.lr.ph12251.preheader14978

.lr.ph12251.preheader14978:                       ; preds = %vector.memcheck14962, %.lr.ph12251.preheader, %middle.block14974
  %indvars.iv13368.ph = phi i64 [ 0, %vector.memcheck14962 ], [ 0, %.lr.ph12251.preheader ], [ %n.vec14968, %middle.block14974 ] ; 3 uses
  %xtraiter15515 = and i64 %wide.trip.count, 3    ; 2 uses
  %lcmp.mod15516.not = icmp eq i64 %xtraiter15515, 0
  br i1 %lcmp.mod15516.not, label %.lr.ph12251.prol.loopexit, label %.lr.ph12251.prol

.lr.ph12251.prol:                                 ; preds = %.lr.ph12251.preheader14978, %.lr.ph12251.prol
  %indvars.iv13368.prol = phi i64 [ %indvars.iv.next13369.prol, %.lr.ph12251.prol ], [ %indvars.iv13368.ph, %.lr.ph12251.preheader14978 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph12251.prol ], [ 0, %.lr.ph12251.preheader14978 ]
  %i.dee = getelementptr [8 x i8], ptr %i.ddu, i64 %indvars.iv13368.prol
  %i.def = getelementptr [8 x i8], ptr %i.dco, i64 %indvars.iv13368.prol
  %i.deg = load i64, ptr %i.def, align 8, !tbaa !124
  store i64 %i.deg, ptr %i.dee, align 8, !tbaa !124
  %indvars.iv.next13369.prol = add nuw nsw i64 %indvars.iv13368.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter15515
  br i1 %prol.iter.cmp.not, label %.lr.ph12251.prol.loopexit, label %.lr.ph12251.prol, !llvm.loop !272

.lr.ph12251.prol.loopexit:                        ; preds = %.lr.ph12251.prol, %.lr.ph12251.preheader14978
  %indvars.iv13368.unr = phi i64 [ %indvars.iv13368.ph, %.lr.ph12251.preheader14978 ], [ %indvars.iv.next13369.prol, %.lr.ph12251.prol ]
  %i.deh = sub nsw i64 %indvars.iv13368.ph, %wide.trip.count
  %i.dei = icmp ugt i64 %i.deh, -4
  br i1 %i.dei, label %._crit_edge12252, label %.lr.ph12251

.lr.ph12251:                                      ; preds = %.lr.ph12251.prol.loopexit, %.lr.ph12251
  %indvars.iv13368 = phi i64 [ %indvars.iv.next13369.3, %.lr.ph12251 ], [ %indvars.iv13368.unr, %.lr.ph12251.prol.loopexit ] ; 6 uses
  %i.dej = getelementptr [8 x i8], ptr %i.ddu, i64 %indvars.iv13368
  %i.dek = getelementptr [8 x i8], ptr %i.dco, i64 %indvars.iv13368
  %i.del = load i64, ptr %i.dek, align 8, !tbaa !124
  store i64 %i.del, ptr %i.dej, align 8, !tbaa !124
  %indvars.iv.next13369 = add nuw nsw i64 %indvars.iv13368, 1 ; 2 uses
  %i.dem = getelementptr [8 x i8], ptr %i.ddu, i64 %indvars.iv.next13369
  %i.den = getelementptr [8 x i8], ptr %i.dco, i64 %indvars.iv.next13369
  %i.deo = load i64, ptr %i.den, align 8, !tbaa !124
  store i64 %i.deo, ptr %i.dem, align 8, !tbaa !124
  %indvars.iv.next13369.1 = add nuw nsw i64 %indvars.iv13368, 2 ; 2 uses
  %i.dep = getelementptr [8 x i8], ptr %i.ddu, i64 %indvars.iv.next13369.1
  %i.deq = getelementptr [8 x i8], ptr %i.dco, i64 %indvars.iv.next13369.1
  %i.der = load i64, ptr %i.deq, align 8, !tbaa !124
  store i64 %i.der, ptr %i.dep, align 8, !tbaa !124
  %indvars.iv.next13369.2 = add nuw nsw i64 %indvars.iv13368, 3 ; 2 uses
  %i.des = getelementptr [8 x i8], ptr %i.ddu, i64 %indvars.iv.next13369.2
  %i.det = getelementptr [8 x i8], ptr %i.dco, i64 %indvars.iv.next13369.2
  %i.deu = load i64, ptr %i.det, align 8, !tbaa !124
  store i64 %i.deu, ptr %i.des, align 8, !tbaa !124
  %indvars.iv.next13369.3 = add nuw nsw i64 %indvars.iv13368, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next13369.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge12252, label %.lr.ph12251, !llvm.loop !273

._crit_edge12252:                                 ; preds = %.lr.ph12251.prol.loopexit, %.lr.ph12251, %middle.block14974, %_PyFrame_PushUnchecked.exit10826
  %i.dev = getelementptr i8, ptr %.4, i64 72
  store i16 4, ptr %i.dev, align 8, !tbaa !179
  %i.dew = getelementptr i8, ptr %.4, i64 64
  store ptr %i.dbh, ptr %i.dew, align 8, !tbaa !165
  store ptr %i.dca, ptr %i.ba, align 8, !tbaa !161
  %i.dex = load i32, ptr %i.mah, align 4, !tbaa !111
  %i.dey = add i32 %i.dex, -1
  store i32 %i.dey, ptr %i.mah, align 4, !tbaa !111
  %.val10208 = load ptr, ptr %i.ddg, align 8, !tbaa !165
  %i.dez = load ptr, ptr %i.ddj, align 8, !tbaa !163 ; 2 uses
  %i.dfa = load i16, ptr %i.dez, align 2, !tbaa !291 ; 2 uses
  %.sroa.22749.0.extract.shift = lshr i16 %i.dfa, 8
  %.sroa.22749.0.extract.trunc = zext nneg i16 %.sroa.22749.0.extract.shift to i32
  %i.dfb = and i16 %i.dfa, 255
  %i.dfc = zext nneg i16 %i.dfb to i64
  br label %.backedge.backedge

bb.vx:                                            ; preds = %.backedge
  %i.dfd = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.dfd, align 8, !tbaa !163
  %i.dfe = getelementptr i8, ptr %.32, i64 8      ; 5 uses
  %i.dff = load ptr, ptr %i.mag, align 8, !tbaa !147
  %i.dfg = getelementptr i8, ptr %i.dff, i64 8568
  %i.dfh = load ptr, ptr %i.dfg, align 8, !tbaa !148
  %.not9538 = icmp eq ptr %i.dfh, null
  br i1 %.not9538, label %bb.vy, label %_PyThreadState_HasStackSpace.exit10639.thread

bb.vy:                                            ; preds = %bb.vx
  %i.dfi = sub i32 -2, %.09034
  %i.dfj = sext i32 %i.dfi to i64                 ; 2 uses
  %i.dfk = getelementptr [8 x i8], ptr %.4.val1006111641, i64 %i.dfj
  %.sroa.02743.0.copyload = load i64, ptr %i.dfk, align 8, !tbaa !124 ; 2 uses
  %i.dfl = and i64 %.sroa.02743.0.copyload, -2
  %i.dfm = inttoptr i64 %i.dfl to ptr             ; 4 uses
  %i.dfn = getelementptr i8, ptr %i.dfm, i64 8
  %i.dfo = load ptr, ptr %i.dfn, align 8, !tbaa !125
  %i.dfp = icmp eq ptr %i.dfo, @PyFunction_Type
  br i1 %i.dfp, label %bb.vz, label %_PyThreadState_HasStackSpace.exit10639.thread

bb.vz:                                            ; preds = %bb.vy
  %i.dfq = getelementptr i8, ptr %.32, i64 4
  %.val10429 = load i32, ptr %i.dfq, align 2
  %i.dfr = getelementptr i8, ptr %i.dfm, i64 144
  %i.dfs = load i32, ptr %i.dfr, align 8, !tbaa !306
  %.not9539 = icmp eq i32 %i.dfs, %.val10429
  br i1 %.not9539, label %bb.wa, label %_PyThreadState_HasStackSpace.exit10639.thread

bb.wa:                                            ; preds = %bb.vz
  %i.dft = load i32, ptr %i.mah, align 4, !tbaa !111
  %i.dfu = icmp slt i32 %i.dft, 2
  br i1 %i.dfu, label %_PyThreadState_HasStackSpace.exit10639.thread, label %bb.wb

bb.wb:                                            ; preds = %bb.wa
  %i.dfv = sub i32 0, %.09034
  %i.dfw = sext i32 %i.dfv to i64
  %i.dfx = getelementptr [8 x i8], ptr %.4.val1006111641, i64 %i.dfw
  %i.dfy = xor i32 %.09034, -1
  %i.dfz = sext i32 %i.dfy to i64
  %i.dga = getelementptr [8 x i8], ptr %.4.val1006111641, i64 %i.dfz
  %.sroa.02742.0.copyload = load i64, ptr %i.dga, align 8, !tbaa !124
  %i.dgb = icmp ne i64 %.sroa.02742.0.copyload, 1 ; 2 uses
  %i.dgc = zext i1 %i.dgb to i32
  %.09117 = add i32 %.09034, %i.dgc
  %.09116.idx = select i1 %i.dgb, i64 -8, i64 0
  %.09116 = getelementptr i8, ptr %i.dfx, i64 %.09116.idx
  %i.dgd = getelementptr i8, ptr %i.dfm, i64 48
  %.val10381 = load ptr, ptr %i.dgd, align 8, !tbaa !174
  %i.dge = getelementptr i8, ptr %.val10381, i64 48
  %i.dgf = load i32, ptr %i.dge, align 8, !tbaa !164
  %i.dgg = and i32 %i.dgf, 1
  %.not9540 = icmp eq i32 %i.dgg, 0
  br i1 %.not9540, label %bb.wc, label %_Py_NewRef.exit10827

bb.wc:                                            ; preds = %bb.wb
  %i.dgh = getelementptr i8, ptr %i.dfm, i64 16
  %.val10400 = load ptr, ptr %i.dgh, align 8, !tbaa !310 ; 4 uses
  %i.dgi = load i32, ptr %.val10400, align 8, !tbaa !124 ; 2 uses
  %i.dgj = icmp ugt i32 %i.dgi, -1073741825
  br i1 %i.dgj, label %_Py_NewRef.exit10827, label %bb.wd

bb.wd:                                            ; preds = %bb.wc
  %i.dgk = add nuw i32 %i.dgi, 1
  store i32 %i.dgk, ptr %.val10400, align 8, !tbaa !124
  br label %_Py_NewRef.exit10827

_Py_NewRef.exit10827:                             ; preds = %bb.wd, %bb.wc, %bb.wb
  %i.dgl = phi ptr [ null, %bb.wb ], [ %.val10400, %bb.wc ], [ %.val10400, %bb.wd ]
  %i.dgm = getelementptr i8, ptr %.4, i64 64      ; 3 uses
  store ptr %.4.val1006111641, ptr %i.dgm, align 8, !tbaa !165
  %i.dgn = sext i32 %.09117 to i64
  %i.dgo = call ptr @_PyEvalFramePushAndInit(ptr noundef nonnull %0, i64 %.sroa.02743.0.copyload, ptr noundef %i.dgl, ptr noundef %.09116, i64 noundef %i.dgn, ptr noundef null, ptr noundef nonnull %.4) ; 5 uses
  %.4.val10207 = load ptr, ptr %i.dgm, align 8, !tbaa !165
  %i.dgp = getelementptr [8 x i8], ptr %.4.val10207, i64 %i.dfj ; 2 uses
  %i.dgq = icmp eq ptr %i.dgo, null
  br i1 %i.dgq, label %_PyEval_FormatExcUnbound.exit.loopexit, label %bb.we

bb.we:                                            ; preds = %_Py_NewRef.exit10827
  %i.dgr = getelementptr i8, ptr %.4, i64 72
  store i16 4, ptr %i.dgr, align 8, !tbaa !179
  store ptr %i.dgp, ptr %i.dgm, align 8, !tbaa !165
  store ptr %i.dgo, ptr %i.ba, align 8, !tbaa !161
  %i.dgs = load i32, ptr %i.mah, align 4, !tbaa !111
  %i.dgt = add i32 %i.dgs, -1
  store i32 %i.dgt, ptr %i.mah, align 4, !tbaa !111
  %i.dgu = getelementptr i8, ptr %i.dgo, i64 64
  %.val10206 = load ptr, ptr %i.dgu, align 8, !tbaa !165
  %i.dgv = getelementptr i8, ptr %i.dgo, i64 56
  %i.dgw = load ptr, ptr %i.dgv, align 8, !tbaa !163 ; 2 uses
  %i.dgx = load i16, ptr %i.dgw, align 2, !tbaa !291 ; 2 uses
  %.sroa.22724.0.extract.shift = lshr i16 %i.dgx, 8
  %.sroa.22724.0.extract.trunc = zext nneg i16 %.sroa.22724.0.extract.shift to i32
  %i.dgy = and i16 %i.dgx, 255
  %i.dgz = zext nneg i16 %i.dgy to i64
  br label %.backedge.backedge

bb.wf:                                            ; preds = %.backedge
  %i.dha = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.dha, align 8, !tbaa !163
  %i.dhb = getelementptr i8, ptr %.32, i64 8      ; 6 uses
  %i.dhc = getelementptr i8, ptr %.4.val1006111641, i64 -16
  %.sroa.02722.0.copyload = load i64, ptr %i.dhc, align 8, !tbaa !124
  %i.dhd = icmp eq i64 %.sroa.02722.0.copyload, 1
  br i1 %i.dhd, label %bb.wg, label %_PyThreadState_HasStackSpace.exit10639.thread

bb.wg:                                            ; preds = %bb.wf
  %i.dhe = getelementptr i8, ptr %.4.val1006111641, i64 -24
  %.sroa.02721.0.copyload = load i64, ptr %i.dhe, align 8, !tbaa !124
end_hunk_1
