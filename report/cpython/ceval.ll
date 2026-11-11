Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/ceval?download=true
inline.NumInlined: 2622
inline.NumDeleted: 159
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_PyEval_EvalFrameDefault:bb.a
  store ptr null, ptr %i.azh, align 8, !tbaa !298
  %i.azi = getelementptr i8, ptr %i.ayz, i64 56
  store ptr getelementptr inbounds nuw (i8, ptr @_Py_InitCleanup, i64 208), ptr %i.azi, align 8, !tbaa !283
  %i.azj = getelementptr i8, ptr %i.ayz, i64 74
  store i8 0, ptr %i.azj, align 2, !tbaa !300
  %i.azk = getelementptr i8, ptr %i.ayz, i64 75
  store i8 0, ptr %i.azk, align 1, !tbaa !301
  %i.azl = getelementptr i8, ptr %i.ayz, i64 72
  store i16 0, ptr %i.azl, align 8, !tbaa !299
  %.4.val10291 = load ptr, ptr %i.ayb, align 8, !tbaa !285
  %i.azm = getelementptr i8, ptr %i.ayz, i64 80
  %i.azn = and i64 %i.ayj, 1
  %.not.not.i10646 = icmp eq i64 %i.azn, 0
  br i1 %.not.not.i10646, label %bb.lk, label %PyStackRef_DUP.exit

bb.lk:                                            ; preds = %PyStackRef_CLOSE.exit10644
  %i.azo = inttoptr i64 %i.ayj to ptr             ; 2 uses
  %i.azp = load i32, ptr %i.azo, align 8, !tbaa !244
  %i.azq = add i32 %i.azp, 1
  store i32 %i.azq, ptr %i.azo, align 8, !tbaa !244
  br label %PyStackRef_DUP.exit

PyStackRef_DUP.exit:                              ; preds = %PyStackRef_CLOSE.exit10644, %bb.lk
  store i64 %i.ayj, ptr %i.azm, align 8, !tbaa !244
  store ptr %.4.val10291, ptr %i.ayb, align 8, !tbaa !285
  %i.azr = getelementptr i8, ptr %i.ayy, i64 -8
  %i.azs = add i32 %.09034, 1
  %i.azt = sext i32 %i.azs to i64
  %i.azu = call ptr @_PyEvalFramePushAndInit(ptr noundef nonnull %0, i64 %.sroa.0.0.i10641, ptr noundef null, ptr noundef %i.azr, i64 noundef %i.azt, ptr noundef null, ptr noundef nonnull %i.ayz) ; 5 uses
  %.4.val10290 = load ptr, ptr %i.ayb, align 8, !tbaa !285
  %i.azv = getelementptr [8 x i8], ptr %.4.val10290, i64 %i.axb ; 2 uses
  %i.azw = icmp eq ptr %i.azu, null
  br i1 %i.azw, label %bb.ll, label %bb.lm

bb.ll:                                            ; preds = %PyStackRef_DUP.exit
  store ptr %i.azv, ptr %i.ayb, align 8, !tbaa !285
  call void @_PyEval_FrameClearAndPop(ptr noundef nonnull %0, ptr noundef nonnull %i.ayz)
  %.4.val10289 = load ptr, ptr %i.ayb, align 8, !tbaa !285
  br label %_PyEval_FormatExcUnbound.exit

bb.lm:                                            ; preds = %PyStackRef_DUP.exit
  %i.azx = getelementptr i8, ptr %.4, i64 72
  store i16 4, ptr %i.azx, align 8, !tbaa !299
  %i.azy = load i32, ptr %i.mal, align 4, !tbaa !231
  store ptr %i.azv, ptr %i.ayb, align 8, !tbaa !285
  store ptr %i.azu, ptr %i.ba, align 8, !tbaa !281
  %i.azz = add i32 %i.azy, -2
  store i32 %i.azz, ptr %i.mal, align 4, !tbaa !231
  %i.baa = getelementptr i8, ptr %i.azu, i64 64
  %.val10288 = load ptr, ptr %i.baa, align 8, !tbaa !285
  %i.bab = getelementptr i8, ptr %i.azu, i64 56
  %i.bac = load ptr, ptr %i.bab, align 8, !tbaa !283 ; 2 uses
  %i.bad = load i16, ptr %i.bac, align 2, !tbaa !439 ; 2 uses
  %.sroa.23483.0.extract.shift = lshr i16 %i.bad, 8
  %.sroa.23483.0.extract.trunc = zext nneg i16 %.sroa.23483.0.extract.shift to i32
  %i.bae = and i16 %i.bad, 255
  %i.baf = zext nneg i16 %i.bae to i64
  br label %.backedge.backedge

bb.ln:                                            ; preds = %.backedge
  %i.bag = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.bag, align 8, !tbaa !283
  %i.bah = getelementptr i8, ptr %.32, i64 8      ; 9 uses
  %i.bai = load ptr, ptr %i.mak, align 8, !tbaa !267
  %i.baj = getelementptr i8, ptr %i.bai, i64 8568
  %i.bak = load ptr, ptr %i.baj, align 8, !tbaa !268
  %.not9587 = icmp eq ptr %i.bak, null
  br i1 %.not9587, label %bb.lo, label %_PyThreadState_HasStackSpace.exit10639.thread

bb.lo:                                            ; preds = %bb.ln
  %i.bal = xor i32 %.09034, -1
  %i.bam = sext i32 %i.bal to i64
  %i.ban = getelementptr [8 x i8], ptr %.4.val1006111641, i64 %i.bam ; 2 uses
  %.sroa.03470.0.copyload = load i64, ptr %i.ban, align 8, !tbaa !244
  %i.bao = sub i32 -2, %.09034
  %i.bap = sext i32 %i.bao to i64                 ; 2 uses
  %i.baq = getelementptr [8 x i8], ptr %.4.val1006111641, i64 %i.bap ; 2 uses
  %.sroa.03472.0.copyload = load i64, ptr %i.baq, align 8, !tbaa !244 ; 3 uses
  %i.bar = icmp eq i64 %.sroa.03470.0.copyload, 1
  br i1 %i.bar, label %bb.lp, label %_PyThreadState_HasStackSpace.exit10639.thread

bb.lp:                                            ; preds = %bb.lo
  %i.bas = and i64 %.sroa.03472.0.copyload, -2
  %i.bat = inttoptr i64 %i.bas to ptr             ; 3 uses
  %i.bau = getelementptr i8, ptr %i.bat, i64 8
  %.val9858 = load ptr, ptr %i.bau, align 8, !tbaa !245
  %.not9588 = icmp eq ptr %.val9858, @PyMethod_Type
  br i1 %.not9588, label %bb.lq, label %_PyThreadState_HasStackSpace.exit10639.thread

bb.lq:                                            ; preds = %bb.lp
  %i.bav = getelementptr i8, ptr %i.bat, i64 24
  %i.baw = load ptr, ptr %i.bav, align 8, !tbaa !456 ; 4 uses
  %i.bax = load i32, ptr %i.baw, align 8, !tbaa !244 ; 2 uses
  %.not.i10647 = icmp sgt i32 %i.bax, -1
  br i1 %.not.i10647, label %bb.ls, label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  %i.bay = ptrtoint ptr %i.baw to i64
  %i.baz = or i64 %i.bay, 1
  br label %_PyStackRef_FromPyObjectNew.exit10649

bb.ls:                                            ; preds = %bb.lq
  %i.bba = add nuw i32 %i.bax, 1
  store i32 %i.bba, ptr %i.baw, align 8, !tbaa !244
  %i.bbb = ptrtoint ptr %i.baw to i64
  br label %_PyStackRef_FromPyObjectNew.exit10649

_PyStackRef_FromPyObjectNew.exit10649:            ; preds = %bb.lr, %bb.ls
  %.sroa.0.0.i10648 = phi i64 [ %i.baz, %bb.lr ], [ %i.bbb, %bb.ls ] ; 3 uses
  %i.bbc = getelementptr i8, ptr %i.bat, i64 16
  %i.bbd = load ptr, ptr %i.bbc, align 8, !tbaa !308 ; 4 uses
  %i.bbe = load i32, ptr %i.bbd, align 8, !tbaa !244 ; 2 uses
  %.not.i10650 = icmp sgt i32 %i.bbe, -1
  br i1 %.not.i10650, label %bb.lu, label %bb.lt

bb.lt:                                            ; preds = %_PyStackRef_FromPyObjectNew.exit10649
  %i.bbf = ptrtoint ptr %i.bbd to i64
  %i.bbg = or i64 %i.bbf, 1
  br label %_PyStackRef_FromPyObjectNew.exit10652

bb.lu:                                            ; preds = %_PyStackRef_FromPyObjectNew.exit10649
  %i.bbh = add nuw i32 %i.bbe, 1
  store i32 %i.bbh, ptr %i.bbd, align 8, !tbaa !244
  %i.bbi = ptrtoint ptr %i.bbd to i64
  br label %_PyStackRef_FromPyObjectNew.exit10652

_PyStackRef_FromPyObjectNew.exit10652:            ; preds = %bb.lt, %bb.lu
  %.sroa.0.0.i10651 = phi i64 [ %i.bbg, %bb.lt ], [ %i.bbi, %bb.lu ] ; 3 uses
  store i64 %.sroa.0.0.i10651, ptr %i.baq, align 8, !tbaa !244
  store i64 %.sroa.0.0.i10648, ptr %i.ban, align 8, !tbaa !244
  %i.bbj = getelementptr i8, ptr %.4, i64 64      ; 3 uses
  store ptr %.4.val1006111641, ptr %i.bbj, align 8, !tbaa !285
  %i.bbk = and i64 %.sroa.03472.0.copyload, 1
  %.not.not.i10653 = icmp eq i64 %i.bbk, 0
  br i1 %.not.not.i10653, label %bb.lv, label %PyStackRef_CLOSE.exit10654

bb.lv:                                            ; preds = %_PyStackRef_FromPyObjectNew.exit10652
  %i.bbl = inttoptr i64 %.sroa.03472.0.copyload to ptr ; 3 uses
  %i.bbm = load i32, ptr %i.bbl, align 8, !tbaa !244
  %i.bbn = add i32 %i.bbm, -1                     ; 2 uses
  store i32 %i.bbn, ptr %i.bbl, align 8, !tbaa !244
  %i.bbo = icmp eq i32 %i.bbn, 0
  br i1 %i.bbo, label %bb.lw, label %PyStackRef_CLOSE.exit10654

bb.lw:                                            ; preds = %bb.lv
  call void @_Py_Dealloc(ptr noundef nonnull %i.bbl) #21
  br label %PyStackRef_CLOSE.exit10654

PyStackRef_CLOSE.exit10654:                       ; preds = %_PyStackRef_FromPyObjectNew.exit10652, %bb.lv, %bb.lw
  %.4.val10287 = load ptr, ptr %i.bbj, align 8, !tbaa !285 ; 9 uses
  %.4.val1028714961 = ptrtoaddr ptr %.4.val10287 to i64
  %i.bbp = and i64 %.sroa.0.0.i10651, -2
  %i.bbq = inttoptr i64 %i.bbp to ptr             ; 3 uses
  %i.bbr = getelementptr i8, ptr %i.bbq, i64 8
  %i.bbs = load ptr, ptr %i.bbr, align 8, !tbaa !245
  %i.bbt = icmp eq ptr %i.bbs, @PyFunction_Type
  br i1 %i.bbt, label %bb.lx, label %_PyThreadState_HasStackSpace.exit10639.thread

bb.lx:                                            ; preds = %PyStackRef_CLOSE.exit10654
  %i.bbu = getelementptr i8, ptr %.32, i64 4
  %.val10434 = load i32, ptr %i.bbu, align 2
  %i.bbv = getelementptr i8, ptr %i.bbq, i64 144
  %i.bbw = load i32, ptr %i.bbv, align 8, !tbaa !454
  %.not9589 = icmp eq i32 %i.bbw, %.val10434
  br i1 %.not9589, label %bb.ly, label %_PyThreadState_HasStackSpace.exit10639.thread

bb.ly:                                            ; preds = %bb.lx
  %i.bbx = getelementptr i8, ptr %i.bbq, i64 48
  %i.bby = load ptr, ptr %i.bbx, align 8, !tbaa !294 ; 2 uses
  %i.bbz = getelementptr i8, ptr %i.bby, i64 52
  %i.bca = load i32, ptr %i.bbz, align 4, !tbaa !309 ; 2 uses
  %i.bcb = icmp ne i64 %.sroa.0.0.i10648, 1       ; 3 uses
  %i.bcc = zext i1 %i.bcb to i32
  %i.bcd = add i32 %.09034, %i.bcc
  %.not9590 = icmp eq i32 %i.bca, %i.bcd
  br i1 %.not9590, label %bb.lz, label %_PyThreadState_HasStackSpace.exit10639.thread

bb.lz:                                            ; preds = %bb.ly
  %i.bce = load ptr, ptr %i.map, align 8, !tbaa !293 ; 2 uses
  %.not.i10655 = icmp eq ptr %i.bce, null
  br i1 %.not.i10655, label %_PyThreadState_HasStackSpace.exit10639.thread, label %_PyThreadState_HasStackSpace.exit10656

_PyThreadState_HasStackSpace.exit10656:           ; preds = %bb.lz
  %i.bcf = getelementptr i8, ptr %i.bby, i64 76
  %i.bcg = load i32, ptr %i.bcf, align 4, !tbaa !295
  %i.bch = sext i32 %i.bcg to i64
  %i.bci = load ptr, ptr %i.maq, align 8, !tbaa !455
  %i.bcj = ptrtoint ptr %i.bci to i64
  %i.bck = ptrtoint ptr %i.bce to i64
  %i.bcl = sub i64 %i.bcj, %i.bck
  %i.bcm = ashr exact i64 %i.bcl, 3
  %i.bcn = icmp sgt i64 %i.bcm, %i.bch
  br i1 %i.bcn, label %bb.ma, label %_PyThreadState_HasStackSpace.exit10639.thread

bb.ma:                                            ; preds = %_PyThreadState_HasStackSpace.exit10656
  %i.bco = load i32, ptr %i.mal, align 4, !tbaa !231
  %i.bcp = icmp slt i32 %i.bco, 2
  br i1 %i.bcp, label %_PyThreadState_HasStackSpace.exit10639.thread, label %bb.mb

bb.mb:                                            ; preds = %bb.ma
  %i.bcq = sub nsw i32 0, %.09034
  %i.bcr = sext i32 %i.bcq to i64
  %i.bcs = getelementptr [8 x i8], ptr %.4.val10287, i64 %i.bcr ; 6 uses
  %i.bct = call fastcc ptr @_PyFrame_PushUnchecked(ptr noundef nonnull %0, i64 %.sroa.0.0.i10651, i32 noundef %i.bca, ptr noundef nonnull %.4) ; 6 uses
  %i.bcu = ptrtoaddr ptr %i.bct to i64
  %i.bcv = getelementptr i8, ptr %i.bct, i64 80   ; 2 uses
  %i.bcw = zext i1 %i.bcb to i64
  %i.bcx = getelementptr [8 x i8], ptr %i.bcv, i64 %i.bcw ; 6 uses
  store i64 %.sroa.0.0.i10648, ptr %i.bcv, align 8, !tbaa !244
  %i.bcy = icmp sgt i32 %.09034, 0
  br i1 %i.bcy, label %.lr.ph12255.preheader, label %._crit_edge12256

.lr.ph12255.preheader:                            ; preds = %bb.mb
  %wide.trip.count13374 = zext nneg i32 %.09034 to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %.09034, 10
  br i1 %min.iters.check, label %.lr.ph12255.preheader14981, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph12255.preheader
  %7 = zext nneg i32 %.09034 to i64
  %i.bcz = shl nuw nsw i64 %7, 3
  %8 = select i1 %i.bcb, i64 8, i64 0
  %i.bda = add i64 %i.bcz, %i.bcu
  %i.bdb = add i64 %i.bda, %8
  %i.bdc = sub i64 %i.bdb, %.4.val1028714961
  %i.bdd = add i64 %i.bdc, 79
  %diff.check = icmp ult i64 %i.bdd, 31
  br i1 %diff.check, label %.lr.ph12255.preheader14981, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count13374, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bde = getelementptr [8 x i8], ptr %i.bcx, i64 %index ; 2 uses
  %i.bdf = getelementptr [8 x i8], ptr %i.bcs, i64 %index ; 2 uses
  %i.bdg = getelementptr i8, ptr %i.bdf, i64 16
  %wide.load = load <2 x i64>, ptr %i.bdf, align 8, !tbaa !244
  %wide.load14962 = load <2 x i64>, ptr %i.bdg, align 8, !tbaa !244
  %i.bdh = getelementptr i8, ptr %i.bde, i64 16
  store <2 x i64> %wide.load, ptr %i.bde, align 8, !tbaa !244
  store <2 x i64> %wide.load14962, ptr %i.bdh, align 8, !tbaa !244
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bdi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bdi, label %middle.block, label %vector.body, !llvm.loop !415

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count13374
  br i1 %cmp.n, label %._crit_edge12256, label %.lr.ph12255.preheader14981

.lr.ph12255.preheader14981:                       ; preds = %vector.memcheck, %.lr.ph12255.preheader, %middle.block
  %indvars.iv13371.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph12255.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter15521 = and i64 %wide.trip.count13374, 3 ; 2 uses
  %lcmp.mod15522.not = icmp eq i64 %xtraiter15521, 0
  br i1 %lcmp.mod15522.not, label %.lr.ph12255.prol.loopexit, label %.lr.ph12255.prol

.lr.ph12255.prol:                                 ; preds = %.lr.ph12255.preheader14981, %.lr.ph12255.prol
  %indvars.iv13371.prol = phi i64 [ %indvars.iv.next13372.prol, %.lr.ph12255.prol ], [ %indvars.iv13371.ph, %.lr.ph12255.preheader14981 ] ; 3 uses
  %prol.iter15523 = phi i64 [ %prol.iter15523.next, %.lr.ph12255.prol ], [ 0, %.lr.ph12255.preheader14981 ]
  %i.bdj = getelementptr [8 x i8], ptr %i.bcx, i64 %indvars.iv13371.prol
  %i.bdk = getelementptr [8 x i8], ptr %i.bcs, i64 %indvars.iv13371.prol
  %i.bdl = load i64, ptr %i.bdk, align 8, !tbaa !244
  store i64 %i.bdl, ptr %i.bdj, align 8, !tbaa !244
  %indvars.iv.next13372.prol = add nuw nsw i64 %indvars.iv13371.prol, 1 ; 2 uses
  %prol.iter15523.next = add i64 %prol.iter15523, 1 ; 2 uses
  %prol.iter15523.cmp.not = icmp eq i64 %prol.iter15523.next, %xtraiter15521
  br i1 %prol.iter15523.cmp.not, label %.lr.ph12255.prol.loopexit, label %.lr.ph12255.prol, !llvm.loop !416

.lr.ph12255.prol.loopexit:                        ; preds = %.lr.ph12255.prol, %.lr.ph12255.preheader14981
  %indvars.iv13371.unr = phi i64 [ %indvars.iv13371.ph, %.lr.ph12255.preheader14981 ], [ %indvars.iv.next13372.prol, %.lr.ph12255.prol ]
  %i.bdm = sub nsw i64 %indvars.iv13371.ph, %wide.trip.count13374
  %i.bdn = icmp ugt i64 %i.bdm, -4
  br i1 %i.bdn, label %._crit_edge12256, label %.lr.ph12255

.lr.ph12255:                                      ; preds = %.lr.ph12255.prol.loopexit, %.lr.ph12255
  %indvars.iv13371 = phi i64 [ %indvars.iv.next13372.3, %.lr.ph12255 ], [ %indvars.iv13371.unr, %.lr.ph12255.prol.loopexit ] ; 6 uses
  %i.bdo = getelementptr [8 x i8], ptr %i.bcx, i64 %indvars.iv13371
  %i.bdp = getelementptr [8 x i8], ptr %i.bcs, i64 %indvars.iv13371
  %i.bdq = load i64, ptr %i.bdp, align 8, !tbaa !244
  store i64 %i.bdq, ptr %i.bdo, align 8, !tbaa !244
  %indvars.iv.next13372 = add nuw nsw i64 %indvars.iv13371, 1 ; 2 uses
  %i.bdr = getelementptr [8 x i8], ptr %i.bcx, i64 %indvars.iv.next13372
  %i.bds = getelementptr [8 x i8], ptr %i.bcs, i64 %indvars.iv.next13372
  %i.bdt = load i64, ptr %i.bds, align 8, !tbaa !244
  store i64 %i.bdt, ptr %i.bdr, align 8, !tbaa !244
  %indvars.iv.next13372.1 = add nuw nsw i64 %indvars.iv13371, 2 ; 2 uses
  %i.bdu = getelementptr [8 x i8], ptr %i.bcx, i64 %indvars.iv.next13372.1
  %i.bdv = getelementptr [8 x i8], ptr %i.bcs, i64 %indvars.iv.next13372.1
  %i.bdw = load i64, ptr %i.bdv, align 8, !tbaa !244
  store i64 %i.bdw, ptr %i.bdu, align 8, !tbaa !244
  %indvars.iv.next13372.2 = add nuw nsw i64 %indvars.iv13371, 3 ; 2 uses
  %i.bdx = getelementptr [8 x i8], ptr %i.bcx, i64 %indvars.iv.next13372.2
  %i.bdy = getelementptr [8 x i8], ptr %i.bcs, i64 %indvars.iv.next13372.2
  %i.bdz = load i64, ptr %i.bdy, align 8, !tbaa !244
  store i64 %i.bdz, ptr %i.bdx, align 8, !tbaa !244
  %indvars.iv.next13372.3 = add nuw nsw i64 %indvars.iv13371, 4 ; 2 uses
  %exitcond13375.not.3 = icmp eq i64 %indvars.iv.next13372.3, %wide.trip.count13374
  br i1 %exitcond13375.not.3, label %._crit_edge12256, label %.lr.ph12255, !llvm.loop !417

._crit_edge12256:                                 ; preds = %.lr.ph12255.prol.loopexit, %.lr.ph12255, %middle.block, %bb.mb
  %i.bea = getelementptr i8, ptr %.4, i64 72
  store i16 4, ptr %i.bea, align 8, !tbaa !299
  %i.beb = getelementptr [8 x i8], ptr %.4.val10287, i64 %i.bap
  store ptr %i.beb, ptr %i.bbj, align 8, !tbaa !285
  store ptr %i.bct, ptr %i.ba, align 8, !tbaa !281
  %i.bec = load i32, ptr %i.mal, align 4, !tbaa !231
  %i.bed = add i32 %i.bec, -1
  store i32 %i.bed, ptr %i.mal, align 4, !tbaa !231
  %i.bee = getelementptr i8, ptr %i.bct, i64 64
  %.val10286 = load ptr, ptr %i.bee, align 8, !tbaa !285
  %i.bef = getelementptr i8, ptr %i.bct, i64 56
  %i.beg = load ptr, ptr %i.bef, align 8, !tbaa !283 ; 2 uses
  %i.beh = load i16, ptr %i.beg, align 2, !tbaa !439 ; 2 uses
  %.sroa.23436.0.extract.shift = lshr i16 %i.beh, 8
  %.sroa.23436.0.extract.trunc = zext nneg i16 %.sroa.23436.0.extract.shift to i32
  %i.bei = and i16 %i.beh, 255
  %i.bej = zext nneg i16 %i.bei to i64
  br label %.backedge.backedge

bb.mc:                                            ; preds = %.backedge
  %i.bek = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.bek, align 8, !tbaa !283
  %i.bel = getelementptr i8, ptr %.32, i64 8      ; 6 uses
  %i.bem = load ptr, ptr %i.mak, align 8, !tbaa !267
  %i.ben = getelementptr i8, ptr %i.bem, i64 8568
  %i.beo = load ptr, ptr %i.ben, align 8, !tbaa !268
  %.not9584 = icmp eq ptr %i.beo, null
  br i1 %.not9584, label %bb.md, label %_PyThreadState_HasStackSpace.exit10639.thread

bb.md:                                            ; preds = %bb.mc
  %i.bep = xor i32 %.09034, -1
  %i.beq = sext i32 %i.bep to i64
  %i.ber = getelementptr [8 x i8], ptr %.4.val1006111641, i64 %i.beq ; 2 uses
  %.sroa.03425.0.copyload = load i64, ptr %i.ber, align 8, !tbaa !244
  %i.bes = sub i32 -2, %.09034
  %i.bet = sext i32 %i.bes to i64                 ; 2 uses
  %i.beu = getelementptr [8 x i8], ptr %.4.val1006111641, i64 %i.bet ; 2 uses
  %.sroa.03427.0.copyload = load i64, ptr %i.beu, align 8, !tbaa !244 ; 3 uses
  %i.bev = getelementptr i8, ptr %.32, i64 4
  %.val10433 = load i32, ptr %i.bev, align 2
  %i.bew = and i64 %.sroa.03427.0.copyload, -2
  %i.bex = inttoptr i64 %i.bew to ptr             ; 3 uses
  %i.bey = getelementptr i8, ptr %i.bex, i64 8
  %.val9857 = load ptr, ptr %i.bey, align 8, !tbaa !245
  %.not9585 = icmp eq ptr %.val9857, @PyMethod_Type
  br i1 %.not9585, label %bb.me, label %_PyThreadState_HasStackSpace.exit10639.thread

bb.me:                                            ; preds = %bb.md
  %i.bez = getelementptr i8, ptr %i.bex, i64 16   ; 2 uses
  %i.bfa = load ptr, ptr %i.bez, align 8, !tbaa !308 ; 3 uses
  %i.bfb = getelementptr i8, ptr %i.bfa, i64 8
  %i.bfc = load ptr, ptr %i.bfb, align 8, !tbaa !245
  %i.bfd = icmp eq ptr %i.bfc, @PyFunction_Type
  br i1 %i.bfd, label %bb.mf, label %_PyThreadState_HasStackSpace.exit10639.thread

bb.mf:                                            ; preds = %bb.me
  %i.bfe = getelementptr i8, ptr %i.bfa, i64 144
  %i.bff = load i32, ptr %i.bfe, align 8, !tbaa !454
  %i.bfg = icmp eq i32 %i.bff, %.val10433
  %i.bfh = icmp eq i64 %.sroa.03425.0.copyload, 1
  %or.cond11 = select i1 %i.bfg, i1 %i.bfh, i1 false
  br i1 %or.cond11, label %bb.mg, label %_PyThreadState_HasStackSpace.exit10639.thread

bb.mg:                                            ; preds = %bb.mf
  %i.bfi = getelementptr i8, ptr %i.bex, i64 24
  %i.bfj = load ptr, ptr %i.bfi, align 8, !tbaa !456 ; 4 uses
  %i.bfk = load i32, ptr %i.bfj, align 8, !tbaa !244 ; 2 uses
  %.not.i10657 = icmp sgt i32 %i.bfk, -1
  br i1 %.not.i10657, label %bb.mi, label %bb.mh

bb.mh:                                            ; preds = %bb.mg
  %i.bfl = ptrtoint ptr %i.bfj to i64
  %i.bfm = or i64 %i.bfl, 1
  br label %_PyStackRef_FromPyObjectNew.exit10659

bb.mi:                                            ; preds = %bb.mg
  %i.bfn = add nuw i32 %i.bfk, 1
  store i32 %i.bfn, ptr %i.bfj, align 8, !tbaa !244
  %i.bfo = ptrtoint ptr %i.bfj to i64
  %.pre13393 = load ptr, ptr %i.bez, align 8, !tbaa !308
  br label %_PyStackRef_FromPyObjectNew.exit10659

_PyStackRef_FromPyObjectNew.exit10659:            ; preds = %bb.mh, %bb.mi
  %i.bfp = phi ptr [ %i.bfa, %bb.mh ], [ %.pre13393, %bb.mi ] ; 4 uses
  %.sroa.0.0.i10658 = phi i64 [ %i.bfm, %bb.mh ], [ %i.bfo, %bb.mi ] ; 2 uses
  %i.bfq = load i32, ptr %i.bfp, align 8, !tbaa !244 ; 2 uses
  %.not.i10660 = icmp sgt i32 %i.bfq, -1
  br i1 %.not.i10660, label %bb.mk, label %bb.mj

bb.mj:                                            ; preds = %_PyStackRef_FromPyObjectNew.exit10659
  %i.bfr = ptrtoint ptr %i.bfp to i64
  %i.bfs = or i64 %i.bfr, 1
  br label %_PyStackRef_FromPyObjectNew.exit10662

bb.mk:                                            ; preds = %_PyStackRef_FromPyObjectNew.exit10659
  %i.bft = add nuw i32 %i.bfq, 1
  store i32 %i.bft, ptr %i.bfp, align 8, !tbaa !244
  %i.bfu = ptrtoint ptr %i.bfp to i64
  br label %_PyStackRef_FromPyObjectNew.exit10662

_PyStackRef_FromPyObjectNew.exit10662:            ; preds = %bb.mj, %bb.mk
  %.sroa.0.0.i10661 = phi i64 [ %i.bfs, %bb.mj ], [ %i.bfu, %bb.mk ] ; 3 uses
  store i64 %.sroa.0.0.i10661, ptr %i.beu, align 8, !tbaa !244
  store i64 %.sroa.0.0.i10658, ptr %i.ber, align 8, !tbaa !244
  %i.bfv = getelementptr i8, ptr %.4, i64 64      ; 5 uses
  store ptr %.4.val1006111641, ptr %i.bfv, align 8, !tbaa !285
  %i.bfw = and i64 %.sroa.03427.0.copyload, 1
  %.not.not.i10663 = icmp eq i64 %i.bfw, 0
  br i1 %.not.not.i10663, label %bb.ml, label %PyStackRef_CLOSE.exit10664

bb.ml:                                            ; preds = %_PyStackRef_FromPyObjectNew.exit10662
  %i.bfx = inttoptr i64 %.sroa.03427.0.copyload to ptr ; 3 uses
  %i.bfy = load i32, ptr %i.bfx, align 8, !tbaa !244
  %i.bfz = add i32 %i.bfy, -1                     ; 2 uses
  store i32 %i.bfz, ptr %i.bfx, align 8, !tbaa !244
  %i.bga = icmp eq i32 %i.bfz, 0
  br i1 %i.bga, label %bb.mm, label %PyStackRef_CLOSE.exit10664

bb.mm:                                            ; preds = %bb.ml
  call void @_Py_Dealloc(ptr noundef nonnull %i.bfx) #21
  br label %PyStackRef_CLOSE.exit10664

PyStackRef_CLOSE.exit10664:                       ; preds = %_PyStackRef_FromPyObjectNew.exit10662, %bb.ml, %bb.mm
  %.4.val10285 = load ptr, ptr %i.bfv, align 8, !tbaa !285 ; 3 uses
end_hunk_0
begin_hunk_1_@_PyEval_EvalFrameDefault:bb.a
  %.not.not.i10807 = icmp eq i64 %i.cza, 0
  br i1 %.not.not.i10807, label %bb.vf, label %PyStackRef_XCLOSE.exit10808

bb.vf:                                            ; preds = %PyStackRef_XCLOSE.exit10806
  %i.czb = inttoptr i64 %.sroa.02829.0.copyload to ptr ; 3 uses
  %i.czc = load i32, ptr %i.czb, align 8, !tbaa !244
  %i.czd = add i32 %i.czc, -1                     ; 2 uses
  store i32 %i.czd, ptr %i.czb, align 8, !tbaa !244
  %i.cze = icmp eq i32 %i.czd, 0
  br i1 %i.cze, label %bb.vg, label %PyStackRef_XCLOSE.exit10808

bb.vg:                                            ; preds = %bb.vf
  call void @_Py_Dealloc(ptr noundef nonnull %i.czb) #21
  br label %PyStackRef_XCLOSE.exit10808

PyStackRef_XCLOSE.exit10808:                      ; preds = %PyStackRef_XCLOSE.exit10806, %bb.vf, %bb.vg
  %.4.val10213 = load ptr, ptr %i.cyd, align 8, !tbaa !285
  %i.czf = getelementptr i8, ptr %.4.val10213, i64 -8
  store ptr %i.czf, ptr %i.cyd, align 8, !tbaa !285
  %i.czg = and i64 %.sroa.02836.0.copyload, 1
  %.not.not.i10809 = icmp eq i64 %i.czg, 0
  br i1 %.not.not.i10809, label %bb.vh, label %PyStackRef_XCLOSE.exit10810

bb.vh:                                            ; preds = %PyStackRef_XCLOSE.exit10808
  %i.czh = inttoptr i64 %.sroa.02836.0.copyload to ptr ; 3 uses
  %i.czi = load i32, ptr %i.czh, align 8, !tbaa !244
  %i.czj = add i32 %i.czi, -1                     ; 2 uses
  store i32 %i.czj, ptr %i.czh, align 8, !tbaa !244
  %i.czk = icmp eq i32 %i.czj, 0
  br i1 %i.czk, label %bb.vi, label %PyStackRef_XCLOSE.exit10810

bb.vi:                                            ; preds = %bb.vh
  call void @_Py_Dealloc(ptr noundef nonnull %i.czh) #21
  br label %PyStackRef_XCLOSE.exit10810

PyStackRef_XCLOSE.exit10810:                      ; preds = %PyStackRef_XCLOSE.exit10808, %bb.vh, %bb.vi
  %i.czl = load atomic i64, ptr %i.maj monotonic, align 8
  %i.czm = and i64 %i.czl, 255
  %.not.i10811 = icmp eq i64 %i.czm, 0
  br i1 %.not.i10811, label %check_periodics.exit10813.thread, label %check_periodics.exit10813

check_periodics.exit10813.thread:                 ; preds = %PyStackRef_XCLOSE.exit10810
  %.4.val1021111594 = load ptr, ptr %i.cyd, align 8, !tbaa !285
  br label %bb.vj

check_periodics.exit10813:                        ; preds = %PyStackRef_XCLOSE.exit10810
  %i.czn = call i32 @_Py_HandlePending(ptr noundef nonnull %0) #21
  %.4.val10211 = load ptr, ptr %i.cyd, align 8, !tbaa !285 ; 2 uses
  %.not9548 = icmp eq i32 %i.czn, 0
  br i1 %.not9548, label %bb.vj, label %_PyEval_FormatExcUnbound.exit.loopexit

bb.vj:                                            ; preds = %check_periodics.exit10813.thread, %check_periodics.exit10813
  %.4.val1021111596 = phi ptr [ %.4.val1021111594, %check_periodics.exit10813.thread ], [ %.4.val10211, %check_periodics.exit10813 ]
  %i.czo = load i16, ptr %i.cwy, align 2, !tbaa !439 ; 2 uses
  %.sroa.22801.0.extract.shift = lshr i16 %i.czo, 8
  %.sroa.22801.0.extract.trunc = zext nneg i16 %.sroa.22801.0.extract.shift to i32
  %i.czp = and i16 %i.czo, 255
  %i.czq = zext nneg i16 %i.czp to i64
  br label %.backedge.backedge

bb.vk:                                            ; preds = %.backedge
  %i.czr = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.czr, align 8, !tbaa !283
  %i.czs = getelementptr i8, ptr %.32, i64 8      ; 5 uses
  %i.czt = sub i32 -2, %.09034
  %i.czu = sext i32 %i.czt to i64                 ; 3 uses
  %i.czv = getelementptr [8 x i8], ptr %.4.val1006111641, i64 %i.czu
  %.sroa.02798.0.copyload = load i64, ptr %i.czv, align 8, !tbaa !244 ; 2 uses
  %i.czw = and i64 %.sroa.02798.0.copyload, -2
  %i.czx = inttoptr i64 %i.czw to ptr
  %i.czy = getelementptr i8, ptr %i.czx, i64 8
  %i.czz = load ptr, ptr %i.czy, align 8, !tbaa !245 ; 2 uses
  %i.daa = icmp eq ptr %i.czz, @PyFunction_Type
  %i.dab = icmp eq ptr %i.czz, @PyMethod_Type
  %or.cond11684 = or i1 %i.daa, %i.dab
  br i1 %or.cond11684, label %_PyThreadState_HasStackSpace.exit10639.thread, label %bb.vl

bb.vl:                                            ; preds = %bb.vk
  %i.dac = sub i32 0, %.09034
  %i.dad = sext i32 %i.dac to i64
  %i.dae = getelementptr [8 x i8], ptr %.4.val1006111641, i64 %i.dad
  %i.daf = xor i32 %.09034, -1
  %i.dag = sext i32 %i.daf to i64                 ; 2 uses
  %i.dah = getelementptr [8 x i8], ptr %.4.val1006111641, i64 %i.dag
  %.sroa.02797.0.copyload = load i64, ptr %i.dah, align 8, !tbaa !244
  %i.dai = icmp ne i64 %.sroa.02797.0.copyload, 1 ; 2 uses
  %.09113.idx = select i1 %i.dai, i64 -8, i64 0
  %.09113 = getelementptr i8, ptr %i.dae, i64 %.09113.idx
  %i.daj = zext i1 %i.dai to i32
  %.09112 = add i32 %.09034, %i.daj
  %i.dak = getelementptr i8, ptr %.4, i64 64      ; 4 uses
  store ptr %.4.val1006111641, ptr %i.dak, align 8, !tbaa !285
  %i.dal = call ptr @_Py_VectorCall_StackRefSteal(i64 %.sroa.02798.0.copyload, ptr noundef %.09113, i32 noundef %.09112, i64 1) ; 3 uses
  %.4.val10210 = load ptr, ptr %i.dak, align 8, !tbaa !285 ; 3 uses
  %i.dam = icmp eq ptr %i.dal, null
  br i1 %i.dam, label %bb.vm, label %bb.vn

bb.vm:                                            ; preds = %bb.vl
  %i.dan = getelementptr [8 x i8], ptr %.4.val10210, i64 %i.czu
  br label %_PyEval_FormatExcUnbound.exit

bb.vn:                                            ; preds = %bb.vl
  %i.dao = getelementptr i8, ptr %i.dal, i64 6
  %i.dap = load i16, ptr %i.dao, align 2, !tbaa !244
  %i.daq = and i16 %i.dap, 1
  %i.dar = ptrtoint ptr %i.dal to i64
  %i.das = zext nneg i16 %i.daq to i64
  %i.dat = or i64 %i.das, %i.dar
  %i.dau = getelementptr [8 x i8], ptr %.4.val10210, i64 %i.czu
  store i64 %i.dat, ptr %i.dau, align 8, !tbaa !244
  %i.dav = getelementptr [8 x i8], ptr %.4.val10210, i64 %i.dag ; 2 uses
  store ptr %i.dav, ptr %i.dak, align 8, !tbaa !285
  %i.daw = load atomic i64, ptr %i.maj monotonic, align 8
  %i.dax = and i64 %i.daw, 255
  %.not.i10814 = icmp eq i64 %i.dax, 0
  br i1 %.not.i10814, label %check_periodics.exit10816.thread, label %check_periodics.exit10816

check_periodics.exit10816:                        ; preds = %bb.vn
  %i.day = call i32 @_Py_HandlePending(ptr noundef nonnull %0) #21
  %.4.val10209 = load ptr, ptr %i.dak, align 8, !tbaa !285 ; 2 uses
  %.not9544 = icmp eq i32 %i.day, 0
  br i1 %.not9544, label %check_periodics.exit10816.thread, label %_PyEval_FormatExcUnbound.exit.loopexit

check_periodics.exit10816.thread:                 ; preds = %bb.vn, %check_periodics.exit10816
  %.4.val1020911600 = phi ptr [ %.4.val10209, %check_periodics.exit10816 ], [ %i.dav, %bb.vn ]
  %i.daz = load i16, ptr %i.czs, align 2, !tbaa !439 ; 2 uses
  %.sroa.22784.0.extract.shift = lshr i16 %i.daz, 8
  %.sroa.22784.0.extract.trunc = zext nneg i16 %.sroa.22784.0.extract.shift to i32
  %i.dba = and i16 %i.daz, 255
  %i.dbb = zext nneg i16 %i.dba to i64
  br label %.backedge.backedge

bb.vo:                                            ; preds = %.backedge
  %i.dbc = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.dbc, align 8, !tbaa !283
  %i.dbd = getelementptr i8, ptr %.32, i64 8      ; 7 uses
  %i.dbe = load ptr, ptr %i.mak, align 8, !tbaa !267
  %i.dbf = getelementptr i8, ptr %i.dbe, i64 8568
  %i.dbg = load ptr, ptr %i.dbf, align 8, !tbaa !268
  %.not9541 = icmp eq ptr %i.dbg, null
  br i1 %.not9541, label %bb.vp, label %_PyThreadState_HasStackSpace.exit10639.thread

bb.vp:                                            ; preds = %bb.vo
  %i.dbh = sub i32 -2, %.09034
  %i.dbi = sext i32 %i.dbh to i64
  %i.dbj = getelementptr [8 x i8], ptr %.4.val1006111641, i64 %i.dbi ; 2 uses
  %.sroa.02777.0.copyload = load i64, ptr %i.dbj, align 8, !tbaa !244 ; 2 uses
  %i.dbk = and i64 %.sroa.02777.0.copyload, -2
  %i.dbl = inttoptr i64 %i.dbk to ptr             ; 4 uses
  %i.dbm = getelementptr i8, ptr %i.dbl, i64 8
  %i.dbn = load ptr, ptr %i.dbm, align 8, !tbaa !245
  %i.dbo = icmp eq ptr %i.dbn, @PyFunction_Type
  br i1 %i.dbo, label %bb.vq, label %_PyThreadState_HasStackSpace.exit10639.thread

bb.vq:                                            ; preds = %bb.vp
  %i.dbp = getelementptr i8, ptr %.32, i64 4
  %.val10430 = load i32, ptr %i.dbp, align 2
  %i.dbq = getelementptr i8, ptr %i.dbl, i64 144
  %i.dbr = load i32, ptr %i.dbq, align 8, !tbaa !454
  %.not9542 = icmp eq i32 %i.dbr, %.val10430
  br i1 %.not9542, label %bb.vr, label %_PyThreadState_HasStackSpace.exit10639.thread

bb.vr:                                            ; preds = %bb.vq
  %i.dbs = xor i32 %.09034, -1
  %i.dbt = sext i32 %i.dbs to i64
  %i.dbu = getelementptr [8 x i8], ptr %.4.val1006111641, i64 %i.dbt
  %.sroa.02774.0.copyload = load i64, ptr %i.dbu, align 8, !tbaa !244 ; 2 uses
  %i.dbv = getelementptr i8, ptr %i.dbl, i64 48
  %i.dbw = load ptr, ptr %i.dbv, align 8, !tbaa !294 ; 8 uses
  %i.dbx = getelementptr i8, ptr %i.dbw, i64 52
  %i.dby = load i32, ptr %i.dbx, align 4, !tbaa !309 ; 3 uses
  %i.dbz = icmp ne i64 %.sroa.02774.0.copyload, 1 ; 3 uses
  %i.dca = zext i1 %i.dbz to i32
  %i.dcb = add i32 %.09034, %i.dca
  %.not9543 = icmp eq i32 %i.dby, %i.dcb
  br i1 %.not9543, label %bb.vs, label %_PyThreadState_HasStackSpace.exit10639.thread

bb.vs:                                            ; preds = %bb.vr
  %i.dcc = load ptr, ptr %i.map, align 8, !tbaa !293 ; 17 uses
  %.not.i10817 = icmp eq ptr %i.dcc, null
  br i1 %.not.i10817, label %_PyThreadState_HasStackSpace.exit10639.thread, label %_PyThreadState_HasStackSpace.exit10818

_PyThreadState_HasStackSpace.exit10818:           ; preds = %bb.vs
  %i.dcd = getelementptr i8, ptr %i.dbw, i64 76
  %i.dce = load i32, ptr %i.dcd, align 4, !tbaa !295
  %i.dcf = sext i32 %i.dce to i64                 ; 2 uses
  %i.dcg = load ptr, ptr %i.maq, align 8, !tbaa !455
  %i.dch = ptrtoint ptr %i.dcg to i64
  %i.dci = ptrtoint ptr %i.dcc to i64             ; 2 uses
  %i.dcj = sub i64 %i.dch, %i.dci
  %i.dck = ashr exact i64 %i.dcj, 3
  %i.dcl = icmp sgt i64 %i.dck, %i.dcf
  br i1 %i.dcl, label %bb.vt, label %_PyThreadState_HasStackSpace.exit10639.thread

bb.vt:                                            ; preds = %_PyThreadState_HasStackSpace.exit10818
  %i.dcm = load i32, ptr %i.mal, align 4, !tbaa !231
  %i.dcn = icmp slt i32 %i.dcm, 2
  br i1 %i.dcn, label %_PyThreadState_HasStackSpace.exit10639.thread, label %bb.vu

bb.vu:                                            ; preds = %bb.vt
  %i.dco = sub nsw i32 0, %.09034
  %i.dcp = sext i32 %i.dco to i64
  %i.dcq = getelementptr [8 x i8], ptr %.4.val1006111641, i64 %i.dcp ; 6 uses
  %i.dcr = getelementptr [8 x i8], ptr %i.dcc, i64 %i.dcf
  store ptr %i.dcr, ptr %i.map, align 8, !tbaa !293
  %i.dcs = getelementptr i8, ptr %i.dcc, i64 8
  store ptr %.4, ptr %i.dcs, align 8, !tbaa !282
  %i.dct = getelementptr i8, ptr %i.dcc, i64 16
  store i64 %.sroa.02777.0.copyload, ptr %i.dct, align 8, !tbaa !244
  %i.dcu = load i32, ptr %i.dbw, align 8, !tbaa !244 ; 2 uses
  %.not.i.i.i10819 = icmp sgt i32 %i.dcu, -1
  br i1 %.not.i.i.i10819, label %bb.vw, label %bb.vv

bb.vv:                                            ; preds = %bb.vu
  %i.dcv = ptrtoint ptr %i.dbw to i64
  %i.dcw = or i64 %i.dcv, 1
  br label %_PyStackRef_FromPyObjectNew.exit.i.i10820

bb.vw:                                            ; preds = %bb.vu
  %i.dcx = add nuw i32 %i.dcu, 1
  store i32 %i.dcx, ptr %i.dbw, align 8, !tbaa !244
  %i.dcy = ptrtoint ptr %i.dbw to i64
  br label %_PyStackRef_FromPyObjectNew.exit.i.i10820

_PyStackRef_FromPyObjectNew.exit.i.i10820:        ; preds = %bb.vw, %bb.vv
  %.sroa.0.0.i.i.i10821 = phi i64 [ %i.dcw, %bb.vv ], [ %i.dcy, %bb.vw ]
  store i64 %.sroa.0.0.i.i.i10821, ptr %i.dcc, align 8, !tbaa !244
  %i.dcz = getelementptr i8, ptr %i.dbl, i64 16
  %i.dda = getelementptr i8, ptr %i.dcc, i64 24
  %i.ddb = load <2 x ptr>, ptr %i.dcz, align 8, !tbaa !240
  store <2 x ptr> %i.ddb, ptr %i.dda, align 8, !tbaa !240
  %i.ddc = getelementptr i8, ptr %i.dcc, i64 40
  store ptr null, ptr %i.ddc, align 8, !tbaa !296
  %i.ddd = getelementptr i8, ptr %i.dcc, i64 80   ; 4 uses
  %i.dde = getelementptr i8, ptr %i.dbw, i64 72   ; 2 uses
  %i.ddf = load i32, ptr %i.dde, align 8, !tbaa !297 ; 2 uses
  %i.ddg = sext i32 %i.ddf to i64
  %i.ddh = getelementptr [8 x i8], ptr %i.ddd, i64 %i.ddg
  %i.ddi = getelementptr i8, ptr %i.dcc, i64 64   ; 2 uses
  store ptr %i.ddh, ptr %i.ddi, align 8, !tbaa !285
  %i.ddj = getelementptr i8, ptr %i.dcc, i64 48
  store ptr null, ptr %i.ddj, align 8, !tbaa !298
  %i.ddk = getelementptr i8, ptr %i.dbw, i64 208
  %i.ddl = getelementptr i8, ptr %i.dcc, i64 56   ; 2 uses
  store ptr %i.ddk, ptr %i.ddl, align 8, !tbaa !283
  %i.ddm = getelementptr i8, ptr %i.dcc, i64 72
  store i16 0, ptr %i.ddm, align 8, !tbaa !299
  %i.ddn = getelementptr i8, ptr %i.dcc, i64 74
  store i8 0, ptr %i.ddn, align 2, !tbaa !300
  %i.ddo = getelementptr i8, ptr %i.dcc, i64 75
  store i8 0, ptr %i.ddo, align 1, !tbaa !301
  %i.ddp = icmp slt i32 %i.dby, %i.ddf
  br i1 %i.ddp, label %.lr.ph.preheader.i.i10822, label %_PyFrame_PushUnchecked.exit10826

.lr.ph.preheader.i.i10822:                        ; preds = %_PyStackRef_FromPyObjectNew.exit.i.i10820
  %i.ddq = sext i32 %i.dby to i64
  br label %.lr.ph.i.i10823

.lr.ph.i.i10823:                                  ; preds = %.lr.ph.i.i10823, %.lr.ph.preheader.i.i10822
  %indvars.iv.i.i10824 = phi i64 [ %i.ddq, %.lr.ph.preheader.i.i10822 ], [ %indvars.iv.next.i.i10825, %.lr.ph.i.i10823 ] ; 2 uses
  %i.ddr = getelementptr [8 x i8], ptr %i.ddd, i64 %indvars.iv.i.i10824
  store i64 1, ptr %i.ddr, align 8, !tbaa !244
  %indvars.iv.next.i.i10825 = add nsw i64 %indvars.iv.i.i10824, 1 ; 2 uses
  %i.dds = load i32, ptr %i.dde, align 8, !tbaa !297
  %i.ddt = sext i32 %i.dds to i64
  %i.ddu = icmp slt i64 %indvars.iv.next.i.i10825, %i.ddt
  br i1 %i.ddu, label %.lr.ph.i.i10823, label %_PyFrame_PushUnchecked.exit10826, !llvm.loop !1

_PyFrame_PushUnchecked.exit10826:                 ; preds = %.lr.ph.i.i10823, %_PyStackRef_FromPyObjectNew.exit.i.i10820
  %i.ddv = zext i1 %i.dbz to i64
  %i.ddw = getelementptr [8 x i8], ptr %i.ddd, i64 %i.ddv ; 6 uses
  store i64 %.sroa.02774.0.copyload, ptr %i.ddd, align 8, !tbaa !244
  %i.ddx = icmp sgt i32 %.09034, 0
  br i1 %i.ddx, label %.lr.ph12251.preheader, label %._crit_edge12252

.lr.ph12251.preheader:                            ; preds = %_PyFrame_PushUnchecked.exit10826
  %wide.trip.count = zext nneg i32 %.09034 to i64 ; 5 uses
  %min.iters.check14968 = icmp ult i32 %.09034, 10
  br i1 %min.iters.check14968, label %.lr.ph12251.preheader14982, label %vector.memcheck14969

vector.memcheck14969:                             ; preds = %.lr.ph12251.preheader
  %9 = zext nneg i32 %.09034 to i64
  %i.ddy = shl nuw nsw i64 %9, 3
  %10 = select i1 %i.dbz, i64 8, i64 0
  %i.ddz = add i64 %i.ddy, %i.dci
  %i.dea = add i64 %i.ddz, %10
  %i.deb = sub i64 %i.dea, %.4.val100611164114966
  %i.dec = add i64 %i.deb, 79
  %diff.check14970 = icmp ult i64 %i.dec, 31
  br i1 %diff.check14970, label %.lr.ph12251.preheader14982, label %vector.ph14971

vector.ph14971:                                   ; preds = %vector.memcheck14969
  %n.vec14972 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vector.body14973

vector.body14973:                                 ; preds = %vector.body14973, %vector.ph14971
  %index14974 = phi i64 [ 0, %vector.ph14971 ], [ %index.next14977, %vector.body14973 ] ; 3 uses
  %i.ded = getelementptr [8 x i8], ptr %i.ddw, i64 %index14974 ; 2 uses
  %i.dee = getelementptr [8 x i8], ptr %i.dcq, i64 %index14974 ; 2 uses
  %i.def = getelementptr i8, ptr %i.dee, i64 16
  %wide.load14975 = load <2 x i64>, ptr %i.dee, align 8, !tbaa !244
  %wide.load14976 = load <2 x i64>, ptr %i.def, align 8, !tbaa !244
  %i.deg = getelementptr i8, ptr %i.ded, i64 16
  store <2 x i64> %wide.load14975, ptr %i.ded, align 8, !tbaa !244
  store <2 x i64> %wide.load14976, ptr %i.deg, align 8, !tbaa !244
  %index.next14977 = add nuw i64 %index14974, 4   ; 2 uses
  %i.deh = icmp eq i64 %index.next14977, %n.vec14972
  br i1 %i.deh, label %middle.block14978, label %vector.body14973, !llvm.loop !418

middle.block14978:                                ; preds = %vector.body14973
  %cmp.n14979 = icmp eq i64 %n.vec14972, %wide.trip.count
  br i1 %cmp.n14979, label %._crit_edge12252, label %.lr.ph12251.preheader14982

.lr.ph12251.preheader14982:                       ; preds = %vector.memcheck14969, %.lr.ph12251.preheader, %middle.block14978
  %indvars.iv13368.ph = phi i64 [ 0, %vector.memcheck14969 ], [ 0, %.lr.ph12251.preheader ], [ %n.vec14972, %middle.block14978 ] ; 3 uses
  %xtraiter15519 = and i64 %wide.trip.count, 3    ; 2 uses
  %lcmp.mod15520.not = icmp eq i64 %xtraiter15519, 0
  br i1 %lcmp.mod15520.not, label %.lr.ph12251.prol.loopexit, label %.lr.ph12251.prol

.lr.ph12251.prol:                                 ; preds = %.lr.ph12251.preheader14982, %.lr.ph12251.prol
  %indvars.iv13368.prol = phi i64 [ %indvars.iv.next13369.prol, %.lr.ph12251.prol ], [ %indvars.iv13368.ph, %.lr.ph12251.preheader14982 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph12251.prol ], [ 0, %.lr.ph12251.preheader14982 ]
  %i.dei = getelementptr [8 x i8], ptr %i.ddw, i64 %indvars.iv13368.prol
  %i.dej = getelementptr [8 x i8], ptr %i.dcq, i64 %indvars.iv13368.prol
  %i.dek = load i64, ptr %i.dej, align 8, !tbaa !244
  store i64 %i.dek, ptr %i.dei, align 8, !tbaa !244
  %indvars.iv.next13369.prol = add nuw nsw i64 %indvars.iv13368.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter15519
  br i1 %prol.iter.cmp.not, label %.lr.ph12251.prol.loopexit, label %.lr.ph12251.prol, !llvm.loop !419

.lr.ph12251.prol.loopexit:                        ; preds = %.lr.ph12251.prol, %.lr.ph12251.preheader14982
  %indvars.iv13368.unr = phi i64 [ %indvars.iv13368.ph, %.lr.ph12251.preheader14982 ], [ %indvars.iv.next13369.prol, %.lr.ph12251.prol ]
  %i.del = sub nsw i64 %indvars.iv13368.ph, %wide.trip.count
  %i.dem = icmp ugt i64 %i.del, -4
  br i1 %i.dem, label %._crit_edge12252, label %.lr.ph12251

.lr.ph12251:                                      ; preds = %.lr.ph12251.prol.loopexit, %.lr.ph12251
  %indvars.iv13368 = phi i64 [ %indvars.iv.next13369.3, %.lr.ph12251 ], [ %indvars.iv13368.unr, %.lr.ph12251.prol.loopexit ] ; 6 uses
  %i.den = getelementptr [8 x i8], ptr %i.ddw, i64 %indvars.iv13368
  %i.deo = getelementptr [8 x i8], ptr %i.dcq, i64 %indvars.iv13368
  %i.dep = load i64, ptr %i.deo, align 8, !tbaa !244
  store i64 %i.dep, ptr %i.den, align 8, !tbaa !244
  %indvars.iv.next13369 = add nuw nsw i64 %indvars.iv13368, 1 ; 2 uses
  %i.deq = getelementptr [8 x i8], ptr %i.ddw, i64 %indvars.iv.next13369
  %i.der = getelementptr [8 x i8], ptr %i.dcq, i64 %indvars.iv.next13369
  %i.des = load i64, ptr %i.der, align 8, !tbaa !244
  store i64 %i.des, ptr %i.deq, align 8, !tbaa !244
  %indvars.iv.next13369.1 = add nuw nsw i64 %indvars.iv13368, 2 ; 2 uses
  %i.det = getelementptr [8 x i8], ptr %i.ddw, i64 %indvars.iv.next13369.1
  %i.deu = getelementptr [8 x i8], ptr %i.dcq, i64 %indvars.iv.next13369.1
  %i.dev = load i64, ptr %i.deu, align 8, !tbaa !244
  store i64 %i.dev, ptr %i.det, align 8, !tbaa !244
  %indvars.iv.next13369.2 = add nuw nsw i64 %indvars.iv13368, 3 ; 2 uses
  %i.dew = getelementptr [8 x i8], ptr %i.ddw, i64 %indvars.iv.next13369.2
  %i.dex = getelementptr [8 x i8], ptr %i.dcq, i64 %indvars.iv.next13369.2
  %i.dey = load i64, ptr %i.dex, align 8, !tbaa !244
  store i64 %i.dey, ptr %i.dew, align 8, !tbaa !244
  %indvars.iv.next13369.3 = add nuw nsw i64 %indvars.iv13368, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next13369.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge12252, label %.lr.ph12251, !llvm.loop !420

._crit_edge12252:                                 ; preds = %.lr.ph12251.prol.loopexit, %.lr.ph12251, %middle.block14978, %_PyFrame_PushUnchecked.exit10826
  %i.dez = getelementptr i8, ptr %.4, i64 72
  store i16 4, ptr %i.dez, align 8, !tbaa !299
  %i.dfa = getelementptr i8, ptr %.4, i64 64
  store ptr %i.dbj, ptr %i.dfa, align 8, !tbaa !285
  store ptr %i.dcc, ptr %i.ba, align 8, !tbaa !281
  %i.dfb = load i32, ptr %i.mal, align 4, !tbaa !231
  %i.dfc = add i32 %i.dfb, -1
  store i32 %i.dfc, ptr %i.mal, align 4, !tbaa !231
  %.val10208 = load ptr, ptr %i.ddi, align 8, !tbaa !285
  %i.dfd = load ptr, ptr %i.ddl, align 8, !tbaa !283 ; 2 uses
  %i.dfe = load i16, ptr %i.dfd, align 2, !tbaa !439 ; 2 uses
  %.sroa.22749.0.extract.shift = lshr i16 %i.dfe, 8
  %.sroa.22749.0.extract.trunc = zext nneg i16 %.sroa.22749.0.extract.shift to i32
  %i.dff = and i16 %i.dfe, 255
  %i.dfg = zext nneg i16 %i.dff to i64
  br label %.backedge.backedge

bb.vx:                                            ; preds = %.backedge
  %i.dfh = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.dfh, align 8, !tbaa !283
  %i.dfi = getelementptr i8, ptr %.32, i64 8      ; 5 uses
  %i.dfj = load ptr, ptr %i.mak, align 8, !tbaa !267
  %i.dfk = getelementptr i8, ptr %i.dfj, i64 8568
  %i.dfl = load ptr, ptr %i.dfk, align 8, !tbaa !268
  %.not9538 = icmp eq ptr %i.dfl, null
  br i1 %.not9538, label %bb.vy, label %_PyThreadState_HasStackSpace.exit10639.thread

bb.vy:                                            ; preds = %bb.vx
  %i.dfm = sub i32 -2, %.09034
  %i.dfn = sext i32 %i.dfm to i64                 ; 2 uses
  %i.dfo = getelementptr [8 x i8], ptr %.4.val1006111641, i64 %i.dfn
  %.sroa.02743.0.copyload = load i64, ptr %i.dfo, align 8, !tbaa !244 ; 2 uses
  %i.dfp = and i64 %.sroa.02743.0.copyload, -2
  %i.dfq = inttoptr i64 %i.dfp to ptr             ; 4 uses
  %i.dfr = getelementptr i8, ptr %i.dfq, i64 8
  %i.dfs = load ptr, ptr %i.dfr, align 8, !tbaa !245
  %i.dft = icmp eq ptr %i.dfs, @PyFunction_Type
  br i1 %i.dft, label %bb.vz, label %_PyThreadState_HasStackSpace.exit10639.thread

bb.vz:                                            ; preds = %bb.vy
  %i.dfu = getelementptr i8, ptr %.32, i64 4
  %.val10429 = load i32, ptr %i.dfu, align 2
  %i.dfv = getelementptr i8, ptr %i.dfq, i64 144
  %i.dfw = load i32, ptr %i.dfv, align 8, !tbaa !454
  %.not9539 = icmp eq i32 %i.dfw, %.val10429
  br i1 %.not9539, label %bb.wa, label %_PyThreadState_HasStackSpace.exit10639.thread

bb.wa:                                            ; preds = %bb.vz
  %i.dfx = load i32, ptr %i.mal, align 4, !tbaa !231
  %i.dfy = icmp slt i32 %i.dfx, 2
  br i1 %i.dfy, label %_PyThreadState_HasStackSpace.exit10639.thread, label %bb.wb

bb.wb:                                            ; preds = %bb.wa
  %i.dfz = sub i32 0, %.09034
  %i.dga = sext i32 %i.dfz to i64
  %i.dgb = getelementptr [8 x i8], ptr %.4.val1006111641, i64 %i.dga
  %i.dgc = xor i32 %.09034, -1
  %i.dgd = sext i32 %i.dgc to i64
  %i.dge = getelementptr [8 x i8], ptr %.4.val1006111641, i64 %i.dgd
  %.sroa.02742.0.copyload = load i64, ptr %i.dge, align 8, !tbaa !244
  %i.dgf = icmp ne i64 %.sroa.02742.0.copyload, 1 ; 2 uses
  %i.dgg = zext i1 %i.dgf to i32
  %.09117 = add i32 %.09034, %i.dgg
  %.09116.idx = select i1 %i.dgf, i64 -8, i64 0
  %.09116 = getelementptr i8, ptr %i.dgb, i64 %.09116.idx
  %i.dgh = getelementptr i8, ptr %i.dfq, i64 48
  %.val10381 = load ptr, ptr %i.dgh, align 8, !tbaa !294
  %i.dgi = getelementptr i8, ptr %.val10381, i64 48
  %i.dgj = load i32, ptr %i.dgi, align 8, !tbaa !284
  %i.dgk = and i32 %i.dgj, 1
  %.not9540 = icmp eq i32 %i.dgk, 0
  br i1 %.not9540, label %bb.wc, label %_Py_NewRef.exit10827

bb.wc:                                            ; preds = %bb.wb
  %i.dgl = getelementptr i8, ptr %i.dfq, i64 16
  %.val10400 = load ptr, ptr %i.dgl, align 8, !tbaa !458 ; 4 uses
  %i.dgm = load i32, ptr %.val10400, align 8, !tbaa !244 ; 2 uses
  %i.dgn = icmp ugt i32 %i.dgm, -1073741825
  br i1 %i.dgn, label %_Py_NewRef.exit10827, label %bb.wd

bb.wd:                                            ; preds = %bb.wc
  %i.dgo = add nuw i32 %i.dgm, 1
  store i32 %i.dgo, ptr %.val10400, align 8, !tbaa !244
  br label %_Py_NewRef.exit10827

_Py_NewRef.exit10827:                             ; preds = %bb.wd, %bb.wc, %bb.wb
  %i.dgp = phi ptr [ null, %bb.wb ], [ %.val10400, %bb.wc ], [ %.val10400, %bb.wd ]
  %i.dgq = getelementptr i8, ptr %.4, i64 64      ; 3 uses
  store ptr %.4.val1006111641, ptr %i.dgq, align 8, !tbaa !285
  %i.dgr = sext i32 %.09117 to i64
  %i.dgs = call ptr @_PyEvalFramePushAndInit(ptr noundef nonnull %0, i64 %.sroa.02743.0.copyload, ptr noundef %i.dgp, ptr noundef %.09116, i64 noundef %i.dgr, ptr noundef null, ptr noundef nonnull %.4) ; 5 uses
  %.4.val10207 = load ptr, ptr %i.dgq, align 8, !tbaa !285
  %i.dgt = getelementptr [8 x i8], ptr %.4.val10207, i64 %i.dfn ; 2 uses
  %i.dgu = icmp eq ptr %i.dgs, null
  br i1 %i.dgu, label %_PyEval_FormatExcUnbound.exit.loopexit, label %bb.we

bb.we:                                            ; preds = %_Py_NewRef.exit10827
  %i.dgv = getelementptr i8, ptr %.4, i64 72
  store i16 4, ptr %i.dgv, align 8, !tbaa !299
  store ptr %i.dgt, ptr %i.dgq, align 8, !tbaa !285
  store ptr %i.dgs, ptr %i.ba, align 8, !tbaa !281
  %i.dgw = load i32, ptr %i.mal, align 4, !tbaa !231
  %i.dgx = add i32 %i.dgw, -1
  store i32 %i.dgx, ptr %i.mal, align 4, !tbaa !231
  %i.dgy = getelementptr i8, ptr %i.dgs, i64 64
  %.val10206 = load ptr, ptr %i.dgy, align 8, !tbaa !285
  %i.dgz = getelementptr i8, ptr %i.dgs, i64 56
  %i.dha = load ptr, ptr %i.dgz, align 8, !tbaa !283 ; 2 uses
  %i.dhb = load i16, ptr %i.dha, align 2, !tbaa !439 ; 2 uses
  %.sroa.22724.0.extract.shift = lshr i16 %i.dhb, 8
  %.sroa.22724.0.extract.trunc = zext nneg i16 %.sroa.22724.0.extract.shift to i32
  %i.dhc = and i16 %i.dhb, 255
  %i.dhd = zext nneg i16 %i.dhc to i64
  br label %.backedge.backedge

bb.wf:                                            ; preds = %.backedge
  %i.dhe = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.dhe, align 8, !tbaa !283
  %i.dhf = getelementptr i8, ptr %.32, i64 8      ; 6 uses
  %i.dhg = getelementptr i8, ptr %.4.val1006111641, i64 -16
  %.sroa.02722.0.copyload = load i64, ptr %i.dhg, align 8, !tbaa !244
  %i.dhh = icmp eq i64 %.sroa.02722.0.copyload, 1
  br i1 %i.dhh, label %bb.wg, label %_PyThreadState_HasStackSpace.exit10639.thread

end_hunk_1
begin_hunk_2_@_PyEval_EvalFrameDefault:bb.a
PyStackRef_XCLOSE.exit11516:                      ; preds = %.lr.ph, %bb.bxf, %bb.bxg
  %i.lxw = load ptr, ptr %i.lvj, align 8, !tbaa !285 ; 3 uses
  %i.lxx = icmp ugt ptr %i.lxw, %i.lxm
  br i1 %i.lxx, label %.lr.ph, label %._crit_edge, !llvm.loop !430

._crit_edge:                                      ; preds = %PyStackRef_XCLOSE.exit11516, %bb.bxe
  %.lcssa12237 = phi ptr [ %i.lxn, %bb.bxe ], [ %i.lxw, %PyStackRef_XCLOSE.exit11516 ]
  %i.lxy = load i32, ptr %i.r, align 4, !tbaa !16
  %.not9398 = icmp eq i32 %i.lxy, 0
  br i1 %.not9398, label %bb.bxi, label %bb.bxh

bb.bxh:                                           ; preds = %._crit_edge
  %i.lxz = load ptr, ptr %i.lvk, align 8, !tbaa !283
  %.1.val10451 = load i64, ptr %.1.ph, align 8
  %i.lya = and i64 %.1.val10451, 8589934590
  %i.lyb = ptrtoint ptr %i.lxz to i64
  %.neg11699 = add i64 %i.lyb, 8589934384
  %i.lyc = sub i64 %.neg11699, %i.lya
  %i.lyd = shl i64 %i.lyc, 31
  %i.lye = ashr exact i64 %i.lyd, 30
  %i.lyf = or i64 %i.lye, 3
  store i64 %i.lyf, ptr %.lcssa12237, align 8, !tbaa !244
  %i.lyg = load ptr, ptr %i.lvj, align 8, !tbaa !285
  %i.lyh = getelementptr i8, ptr %i.lyg, i64 8
  store ptr %i.lyh, ptr %i.lvj, align 8, !tbaa !285
  br label %bb.bxi

bb.bxi:                                           ; preds = %bb.bxh, %._crit_edge
  %i.lyi = call ptr @_PyErr_GetRaisedException(ptr noundef %0) #21 ; 3 uses
  %i.lyj = getelementptr i8, ptr %i.lyi, i64 6
  %i.lyk = load i16, ptr %i.lyj, align 2, !tbaa !244
  %i.lyl = and i16 %i.lyk, 1
  %i.lym = ptrtoint ptr %i.lyi to i64
  %i.lyn = zext nneg i16 %i.lyl to i64
  %i.lyo = or i64 %i.lyn, %i.lym
  %i.lyp = load ptr, ptr %i.lvj, align 8, !tbaa !285
  store i64 %i.lyo, ptr %i.lyp, align 8, !tbaa !244
  %i.lyq = load ptr, ptr %i.lvj, align 8, !tbaa !285
  %i.lyr = getelementptr i8, ptr %i.lyq, i64 8
  store ptr %i.lyr, ptr %i.lvj, align 8, !tbaa !285
  %.1.val10450 = load i64, ptr %.1.ph, align 8
  %i.lys = and i64 %.1.val10450, -2
  %i.lyt = inttoptr i64 %i.lys to ptr
  %i.lyu = getelementptr i8, ptr %i.lyt, i64 208
  %i.lyv = load i32, ptr %i.q, align 4, !tbaa !16
  %i.lyw = sext i32 %i.lyv to i64
  %i.lyx = getelementptr [2 x i8], ptr %i.lyu, i64 %i.lyw ; 4 uses
  %.val.i11517 = load ptr, ptr %i.lvl, align 8, !tbaa !267
  %i.lyy = getelementptr i8, ptr %.val.i11517, i64 223468
  %i.lyz = load i8, ptr %i.lyy, align 1, !tbaa !244
  %i.lza = icmp eq i8 %i.lyz, 0
  br i1 %i.lza, label %.preheader11705, label %monitor_handled.exit

monitor_handled.exit:                             ; preds = %bb.bxi
  %i.lzb = call i32 @_Py_call_instrumentation_arg(ptr noundef nonnull %0, i32 noundef 12, ptr noundef nonnull %.1.ph, ptr noundef %i.lyx, ptr noundef nonnull %i.lyi) #21
  %i.lzc = icmp slt i32 %i.lzb, 0
  br i1 %i.lzc, label %bb.bws, label %.preheader11705

monitor_unwind.exit:                              ; preds = %_Py_EnterRecursivePy.exit11520, %bb.bxd, %bb.bxa, %bb.bwz, %bb.bwy, %bb.bww, %._crit_edge12826
  %.2 = phi ptr [ %.3, %_Py_EnterRecursivePy.exit11520 ], [ %.1.ph, %._crit_edge12826 ], [ %.1.ph, %bb.bww ], [ %.1.ph, %bb.bwy ], [ %.1.ph, %bb.bwz ], [ %.1.ph, %bb.bxa ], [ %.1.ph, %bb.bxd ] ; 2 uses
  %i.lzd = getelementptr i8, ptr %0, i64 52       ; 2 uses
  %i.lze = load i32, ptr %i.lzd, align 4, !tbaa !231
  %i.lzf = add i32 %i.lze, 1
  store i32 %i.lzf, ptr %i.lzd, align 4, !tbaa !231
  %i.lzg = getelementptr i8, ptr %.2, i64 8
  %i.lzh = load ptr, ptr %i.lzg, align 8, !tbaa !282 ; 7 uses
  store ptr %i.lzh, ptr %i.ba, align 8, !tbaa !281
  call void @_PyEval_FrameClearAndPop(ptr noundef nonnull %0, ptr noundef %.2)
  %i.lzi = getelementptr i8, ptr %i.lzh, i64 72
  store i16 0, ptr %i.lzi, align 8, !tbaa !299
  %i.lzj = getelementptr i8, ptr %i.lzh, i64 74
  %i.lzk = load i8, ptr %i.lzj, align 2, !tbaa !300
  %i.lzl = icmp eq i8 %i.lzk, 3
  br i1 %i.lzl, label %bb.bxj, label %bb.bxk

bb.bxj:                                           ; preds = %monitor_unwind.exit
  %i.lzm = getelementptr i8, ptr %i.lzh, i64 8
  %i.lzn = load ptr, ptr %i.lzm, align 8, !tbaa !282
  store ptr %i.lzn, ptr %i.ba, align 8, !tbaa !281
  br label %PyStackRef_AsPyObjectSteal.exit11077

bb.bxk:                                           ; preds = %monitor_unwind.exit
  %i.lzo = getelementptr i8, ptr %i.lzh, i64 56
  %i.lzp = load ptr, ptr %i.lzo, align 8, !tbaa !283
  %i.lzq = getelementptr i8, ptr %i.lzh, i64 64
  %.val9916 = load ptr, ptr %i.lzq, align 8, !tbaa !285
  br label %_PyEval_FormatExcUnbound.exit

.sink.split:                                      ; preds = %bb.kv, %bb.pz, %bb.ru, %bb.ajb, %bb.ala, %_PyStackRef_FromPyObjectNew.exit11130, %PyStackRef_MakeHeapSafe.exit11333
  %.sink14425 = phi ptr [ %i.jwx, %PyStackRef_MakeHeapSafe.exit11333 ], [ %i.has, %_PyStackRef_FromPyObjectNew.exit11130 ], [ %i.fsw, %bb.ala ], [ %i.fln, %bb.ajb ], [ %i.cfn, %bb.ru ], [ %i.bwx, %bb.pz ], [ %i.avu, %bb.kv ] ; 2 uses
  store ptr %.sink14425, ptr %i.ba, align 8, !tbaa !281
  br label %bb.bxl

bb.bxl:                                           ; preds = %.sink.split, %_Py_EnterRecursiveCallTstate.exit.thread
  %.3 = phi ptr [ %1, %_Py_EnterRecursiveCallTstate.exit.thread ], [ %.sink14425, %.sink.split ] ; 4 uses
  %i.lzr = getelementptr i8, ptr %0, i64 52       ; 2 uses
  %i.lzs = load i32, ptr %i.lzr, align 4, !tbaa !231 ; 2 uses
  %i.lzt = add i32 %i.lzs, -1                     ; 3 uses
  store i32 %i.lzt, ptr %i.lzr, align 4, !tbaa !231
  %i.lzu = icmp slt i32 %i.lzs, 1
  br i1 %i.lzu, label %bb.bxm, label %bb.bxq

bb.bxm:                                           ; preds = %bb.bxl
  %i.lzv = getelementptr i8, ptr %0, i64 60       ; 4 uses
  %i.lzw = load i32, ptr %i.lzv, align 4, !tbaa !241
  %.not.i.i11519 = icmp eq i32 %i.lzw, 0
  br i1 %.not.i.i11519, label %bb.bxp, label %bb.bxn

bb.bxn:                                           ; preds = %bb.bxm
  %i.lzx = icmp slt i32 %i.lzt, -50
  br i1 %i.lzx, label %bb.bxo, label %bb.bxq

bb.bxo:                                           ; preds = %bb.bxn
  call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__._Py_CheckRecursiveCallPy, ptr noundef nonnull @.str.19) #23
  unreachable

bb.bxp:                                           ; preds = %bb.bxm
  %i.lzy = icmp slt i32 %i.lzt, 1
  br i1 %i.lzy, label %_Py_EnterRecursivePy.exit11520, label %bb.bxq

_Py_EnterRecursivePy.exit11520:                   ; preds = %bb.bxp
  store i32 1, ptr %i.lzv, align 4, !tbaa !241
  %i.lzz = load ptr, ptr @PyExc_RecursionError, align 8, !tbaa !240
  %i.maa = call ptr (ptr, ptr, ptr, ...) @_PyErr_Format(ptr noundef nonnull %0, ptr noundef %i.lzz, ptr noundef nonnull @.str.20) #21 ; 0 uses
  %i.mab = load i32, ptr %i.lzv, align 4, !tbaa !241
  %i.mac = add i32 %i.mab, -1
  store i32 %i.mac, ptr %i.lzv, align 4, !tbaa !241
  br label %monitor_unwind.exit

bb.bxq:                                           ; preds = %bb.bxl, %bb.bxp, %bb.bxn
  %i.mad = getelementptr i8, ptr %.3, i64 56
  %i.mae = load ptr, ptr %i.mad, align 8, !tbaa !283
  %i.maf = getelementptr i8, ptr %.3, i64 64
  br label %.preheader11705

.preheader11705:                                  ; preds = %monitor_handled.exit, %bb.bxi, %bb.bxq
  %.65.ph.in = phi ptr [ %i.maf, %bb.bxq ], [ %i.lvj, %bb.bxi ], [ %i.lvj, %monitor_handled.exit ]
  %.32.ph = phi ptr [ %i.mae, %bb.bxq ], [ %i.lyx, %bb.bxi ], [ %i.lyx, %monitor_handled.exit ] ; 2 uses
  %.4.ph = phi ptr [ %.3, %bb.bxq ], [ %.1.ph, %bb.bxi ], [ %.1.ph, %monitor_handled.exit ]
  %.09034.ph.in.in = load i16, ptr %.32.ph, align 2, !tbaa !439 ; 2 uses
  %.pn.in = and i16 %.09034.ph.in.in, 255
  %.pn = zext nneg i16 %.pn.in to i64
  %.09034.ph.in = lshr i16 %.09034.ph.in.in, 8
  %.09034.ph = zext nneg i16 %.09034.ph.in to i32
  %.65.ph = load ptr, ptr %.65.ph.in, align 8, !tbaa !285
  %i.mag = getelementptr i8, ptr %0, i64 64       ; 13 uses
  %i.mah = or disjoint i64 ptrtoint (ptr @_Py_TrueStruct to i64), 1 ; 4 uses
  %i.mai = or disjoint i64 ptrtoint (ptr @_Py_FalseStruct to i64), 1 ; 7 uses
  %i.maj = getelementptr i8, ptr %0, i64 24       ; 26 uses
  %i.mak = getelementptr i8, ptr %0, i64 16       ; 32 uses
  %i.mal = getelementptr i8, ptr %0, i64 52       ; 39 uses
  %i.mam = getelementptr i8, ptr %0, i64 136      ; 10 uses
  %i.man = getelementptr i8, ptr %0, i64 1000     ; 2 uses
  %i.mao = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.map = getelementptr i8, ptr %0, i64 256      ; 15 uses
  %i.maq = getelementptr i8, ptr %0, i64 264      ; 6 uses
  %i.mar = load i32, ptr getelementptr inbounds nuw (i8, ptr @_Py_InitCleanup, i64 76), align 4 ; 2 uses
  %i.mas = sext i32 %i.mar to i64
  %i.mat = load i32, ptr @_Py_InitCleanup, align 8
  %.not.i.i10645 = icmp sgt i32 %i.mat, -1
  %i.mau = or disjoint i64 ptrtoint (ptr @_Py_InitCleanup to i64), 1
  %.sroa.0.0.i.i = select i1 %.not.i.i10645, i64 ptrtoint (ptr @_Py_InitCleanup to i64), i64 %i.mau
  %i.mav = load i32, ptr getelementptr inbounds nuw (i8, ptr @_Py_InitCleanup, i64 72), align 8
  %i.maw = sext i32 %i.mav to i64
  %i.max = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.may = getelementptr i8, ptr %0, i64 128      ; 5 uses
  %i.maz = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.mba = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.mbb = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.mbc = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.mbd = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  br label %.backedge

bb.bxr:                                           ; preds = %bb.k
  store i32 1, ptr %i.bj, align 4, !tbaa !241
  %i.mbe = load ptr, ptr @PyExc_RecursionError, align 8, !tbaa !240
  %i.mbf = call ptr (ptr, ptr, ptr, ...) @_PyErr_Format(ptr noundef nonnull %0, ptr noundef %i.mbe, ptr noundef nonnull @.str.20) #21 ; 0 uses
  %i.mbg = load i32, ptr %i.bj, align 4, !tbaa !241
  %i.mbh = add i32 %i.mbg, -1
  store i32 %i.mbh, ptr %i.bj, align 4, !tbaa !241
  %i.mbi = load i32, ptr %i.bf, align 4, !tbaa !231
  %i.mbj = add i32 %i.mbi, 1
  store i32 %i.mbj, ptr %i.bf, align 4, !tbaa !231
  %i.mbk = load ptr, ptr %i.bd, align 8, !tbaa !282 ; 3 uses
  store ptr %i.mbk, ptr %i.ba, align 8, !tbaa !281
  call void @_PyEval_FrameClearAndPop(ptr noundef nonnull %0, ptr noundef nonnull %1)
  %i.mbl = getelementptr i8, ptr %i.mbk, i64 72
  store i16 0, ptr %i.mbl, align 8, !tbaa !299
  %i.mbm = getelementptr i8, ptr %i.mbk, i64 8
  %i.mbn = load ptr, ptr %i.mbm, align 8, !tbaa !282
  store ptr %i.mbn, ptr %i.ba, align 8, !tbaa !281
  br label %PyStackRef_AsPyObjectSteal.exit11077

PyStackRef_AsPyObjectSteal.exit11077:             ; preds = %bb.aqt, %bb.aqs, %bb.aqr, %bb.bxr, %bb.bxj, %bb.f
  %.0 = phi ptr [ null, %bb.f ], [ null, %bb.bxr ], [ null, %bb.bxj ], [ %i.gov, %bb.aqr ], [ %i.gox, %bb.aqs ], [ %i.gox, %bb.aqt ]
  ret ptr %.0

.backedge:                                        ; preds = %.backedge.backedge, %.preheader11705
  %.4.val1006111641 = phi ptr [ %.65.ph, %.preheader11705 ], [ %.4.val1006111641.be, %.backedge.backedge ] ; 741 uses
  %.32 = phi ptr [ %.32.ph, %.preheader11705 ], [ %.32.be, %.backedge.backedge ] ; 635 uses
  %.09034 = phi i32 [ %.09034.ph, %.preheader11705 ], [ %.09034.be, %.backedge.backedge ] ; 284 uses
  %.4 = phi ptr [ %.4.ph, %.preheader11705 ], [ %.4.be, %.backedge.backedge ] ; 971 uses
  %.pn.pn = phi i64 [ %.pn, %.preheader11705 ], [ %.pn.pn.be, %.backedge.backedge ]
  %.4.val100611164114966 = ptrtoaddr ptr %.4.val1006111641 to i64
  %.in = getelementptr [8 x i8], ptr @_PyEval_EvalFrameDefault.opcode_targets_table, i64 %.pn.pn
  %i.mbo = load ptr, ptr %.in, align 8, !tbaa !235
  indirectbr ptr %i.mbo, [label %bb.kf, label %bb.hp, label %bb.jx, label %bb.bt, label %bb.pc, label %bb.xa, label %bb.xo, label %bb.xx, label %bb.acw, label %bb.aei, label %bb.ael, label %bb.aep, label %bb.aet, label %bb.aez, label %bb.agg, label %bb.agw, label %bb.ahc, label %bb.bjf, label %bb.ahj, label %bb.ahm, label %bb.aqq, label %bb.awp, label %bb.azv, label %bb.bda, label %bb.bdv, label %bb.bdx, label %bb.bdz, label %bb.beb, label %bb.bec, label %bb.bed, label %bb.beo, label %bb.bfj, label %bb.bfm, label %bb.bfq, label %bb.bjr, label %bb.bjw, label %bb.blf, label %bb.bpv, label %bb.bqo, label %bb.bsg, label %bb.btl, label %bb.btp, label %bb.btt, label %bb.bvw, label %bb.u, label %bb.ik, label %bb.it, label %bb.iv, label %bb.iy, label %bb.jo, label %bb.ju, label %bb.kd, label %bb.kg, label %bb.qi, label %bb.qm, label %bb.rc, label %bb.yr, label %bb.aap, label %bb.abm, label %bb.abq, label %bb.abs, label %bb.abw, label %bb.aca, label %bb.aci, label %bb.acn, label %bb.acr, label %bb.adc, label %bb.adj, label %bb.ads, label %bb.aes, label %bb.aff, label %bb.agy, label %bb.ahv, label %bb.aia, label %bb.aqu, label %bb.aqz, label %bb.ard, label %bb.arf, label %bb.arg, label %bb.arl, label %bb.arw, label %bb.awt, label %bb.aww, label %bb.awx, label %bb.axb, label %bb.axd, label %bb.axe, label %bb.axf, label %bb.axg, label %bb.axk, label %bb.axn, label %bb.axu, label %bb.ayw, label %bb.baa, label %bb.bbc, label %bb.bbd, label %bb.bbh, label %bb.bcw, label %bb.bde, label %bb.bdm, label %bb.ber, label %bb.beu, label %bb.bfa, label %bb.bfg, label %bb.bfr, label %bb.bir, label %bb.bjy, label %bb.blx, label %bb.bmc, label %bb.bmg, label %bb.bmk, label %bb.bon, label %bb.bou, label %bb.box, label %bb.bpb, label %bb.bpg, label %bb.bpk, label %bb.bsf, label %bb.btu, label %bb.bue, label %bb.bwe, label %bb.bwg, label %bb.btk, label %bb.aeo, label %bb.amz, label %bb.amq, label %bb.ajf, label %bb.akg, label %bb.bjg, label %bb.ac, label %bb.ao, label %bb.ba, label %bb.bm, label %bb.cn, label %bb.cz, label %bb.dl, label %bb.dt, label %bb.ed, label %bb.ep, label %bb.ex, label %bb.fj, label %bb.fv, label %bb.gr, label %bb.hd, label %bb.kz, label %bb.ln, label %bb.mc, label %bb.mr, label %bb.mw, label %bb.nb, label %bb.ng, label %bb.nq, label %bb.oh, label %bb.qs, label %bb.ry, label %bb.so, label %bb.ss, label %bb.tc, label %bb.tl, label %bb.tx, label %bb.ue, label %bb.ul, label %bb.uw, label %bb.vk, label %bb.vo, label %bb.vx, label %bb.wf, label %bb.wm, label %bb.wt, label %bb.zi, label %bb.zt, label %bb.aae, label %bb.aay, label %bb.abf, label %bb.afl, label %bb.afp, label %bb.afv, label %bb.aga, label %bb.arc, label %bb.are, label %bb.ash, label %bb.asq, label %bb.ata, label %bb.atl, label %bb.atv, label %bb.aua, label %bb.aue, label %bb.auk, label %bb.auu, label %bb.ava, label %bb.avi, label %bb.avt, label %bb.awc, label %bb.azd, label %bb.azn, label %bb.bca, label %bb.bck, label %bb.bjp, label %bb.bla, label %bb.bmt, label %bb.bni, label %bb.bnv, label %bb.bqy, label %bb.brm, label %bb.bsm, label %bb.bsq, label %bb.bss, label %bb.bsy, label %bb.btc, label %bb.bte, label %bb.bur, label %bb.bvc, label %bb.bvn, label %bb.aij, label %bb.ani, label %bb.ale, label %bb.aql, label %bb.aqi, label %bb.aqb, label %bb.apn, label %bb.ape, label %bb.aoy, label %bb.apv, label %bb.aoo, label %bb.amu, label %bb.amm, label %bb.amg, label %bb.amb, label %bb.aor, label %bb.alx]
}

; Function Attrs: nounwind uwtable
define dso_local void @_PyEval_FrameClearAndPop(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 !guid !511 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 88         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !512  ; 2 uses
  %.not = icmp ne ptr %i.b, null
  %i.c = icmp eq ptr %i.b, %1
  %or.cond = and i1 %.not, %i.c
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !281
  store ptr %i.e, ptr %i.a, align 8, !tbaa !512
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr i8, ptr %1, i64 74
  %i.g = load i8, ptr %i.f, align 2, !tbaa !300
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  tail call void @_PyFrame_ClearExceptCode(ptr noundef nonnull %1) #21
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !244 ; 2 uses
  store i64 1, ptr %1, align 8, !tbaa !244
  %i.i = and i64 %.sroa.0.0.copyload.i, 1
  %.not.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.not.i.i, label %bb.e, label %clear_thread_frame.exit

bb.e:                                             ; preds = %bb.d
  %i.j = inttoptr i64 %.sroa.0.0.copyload.i to ptr ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !244
  %i.l = add i32 %i.k, -1                         ; 2 uses
  store i32 %i.l, ptr %i.j, align 8, !tbaa !244
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.f, label %clear_thread_frame.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.j) #21
  br label %clear_thread_frame.exit

clear_thread_frame.exit:                          ; preds = %bb.d, %bb.e, %bb.f
  tail call void @_PyThreadState_PopFrame(ptr noundef nonnull %0, ptr noundef nonnull %1) #21
  br label %bb.k

bb.g:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %1, i64 -5
  store i8 5, ptr %i.n, align 1, !tbaa !317
  %i.o = getelementptr i8, ptr %1, i64 -32        ; 2 uses
  %i.p = getelementptr i8, ptr %1, i64 -24        ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !319
  %i.r = getelementptr i8, ptr %0, i64 136
  store ptr %i.q, ptr %i.r, align 8, !tbaa !318
  store ptr null, ptr %i.p, align 8, !tbaa !319
  %i.s = getelementptr i8, ptr %1, i64 8
  store ptr null, ptr %i.s, align 8, !tbaa !282
  tail call void @_PyFrame_ClearExceptCode(ptr noundef nonnull %1) #21
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !240  ; 4 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %clear_gen_frame.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr null, ptr %i.o, align 8, !tbaa !240
  %i.u = load i32, ptr %i.t, align 8, !tbaa !244  ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.u, -1
  br i1 %.not.i.i.i, label %bb.i, label %clear_gen_frame.exit

bb.i:                                             ; preds = %bb.h
  %i.v = add nsw i32 %i.u, -1                     ; 2 uses
  store i32 %i.v, ptr %i.t, align 8, !tbaa !244
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.j, label %clear_gen_frame.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.t) #21
  br label %clear_gen_frame.exit

clear_gen_frame.exit:                             ; preds = %bb.g, %bb.h, %bb.i, %bb.j
  %i.x = getelementptr i8, ptr %0, i64 1000
  store i32 0, ptr %i.x, align 8, !tbaa !325
  br label %bb.k

bb.k:                                             ; preds = %clear_gen_frame.exit, %clear_thread_frame.exit
  ret void
}

declare i32 @_Py_Instrument(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_Py_Specialize_BinaryOp(i64, i64, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @PyFloat_FromDouble(double noundef) local_unnamed_addr #3

declare void @_PyFloat_ExactDealloc(ptr noundef) local_unnamed_addr #3

declare i64 @_PyCompactLong_Add(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_PyLong_ExactDealloc(ptr noundef) local_unnamed_addr #3

declare ptr @PyUnicode_Concat(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_PyUnicode_ExactDealloc(ptr noundef) local_unnamed_addr #3

declare void @PyUnicode_Append(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @_PyCompactLong_Multiply(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @PyDict_GetItemRef(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_PyErr_SetKeyError(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @_PyFrame_PushUnchecked(ptr nofree noundef captures(none) %0, i64 %1, i32 noundef %2, ptr noundef %3) unnamed_addr #6 !guid !513 {
bb.a:
  %i.a = and i64 %1, -2
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !294  ; 7 uses
  %i.e = getelementptr i8, ptr %0, i64 256        ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !293  ; 14 uses
  %i.g = getelementptr i8, ptr %i.d, i64 76
  %i.h = load i32, ptr %i.g, align 4, !tbaa !295
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr [8 x i8], ptr %i.f, i64 %i.i
  store ptr %i.j, ptr %i.e, align 8, !tbaa !293
  %i.k = getelementptr i8, ptr %i.f, i64 8
  store ptr %3, ptr %i.k, align 8, !tbaa !282
  %i.l = getelementptr i8, ptr %i.f, i64 16
  store i64 %1, ptr %i.l, align 8, !tbaa !244
  %i.m = load i32, ptr %i.d, align 8, !tbaa !244  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.m, -1
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = ptrtoint ptr %i.d to i64
  %i.o = or i64 %i.n, 1
  br label %_PyStackRef_FromPyObjectNew.exit.i

bb.c:                                             ; preds = %bb.a
  %i.p = add nuw i32 %i.m, 1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !244
  %i.q = ptrtoint ptr %i.d to i64
  br label %_PyStackRef_FromPyObjectNew.exit.i

_PyStackRef_FromPyObjectNew.exit.i:               ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i = phi i64 [ %i.o, %bb.b ], [ %i.q, %bb.c ]
  store i64 %.sroa.0.0.i.i, ptr %i.f, align 8, !tbaa !244
  %i.r = getelementptr i8, ptr %i.b, i64 16
  %i.s = getelementptr i8, ptr %i.f, i64 24
  %i.t = load <2 x ptr>, ptr %i.r, align 8, !tbaa !240
  store <2 x ptr> %i.t, ptr %i.s, align 8, !tbaa !240
  %i.u = getelementptr i8, ptr %i.f, i64 40
  store ptr null, ptr %i.u, align 8, !tbaa !296
  %i.v = getelementptr i8, ptr %i.f, i64 80       ; 2 uses
  %i.w = getelementptr i8, ptr %i.d, i64 72       ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !297  ; 2 uses
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr [8 x i8], ptr %i.v, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.f, i64 64
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !285
  %i.ab = getelementptr i8, ptr %i.f, i64 48
  store ptr null, ptr %i.ab, align 8, !tbaa !298
  %i.ac = getelementptr i8, ptr %i.d, i64 208
  %i.ad = getelementptr i8, ptr %i.f, i64 56
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !283
  %i.ae = getelementptr i8, ptr %i.f, i64 72
  store i16 0, ptr %i.ae, align 8, !tbaa !299
  %i.af = getelementptr i8, ptr %i.f, i64 74
  store i8 0, ptr %i.af, align 2, !tbaa !300
  %i.ag = getelementptr i8, ptr %i.f, i64 75
  store i8 0, ptr %i.ag, align 1, !tbaa !301
  %i.ah = icmp slt i32 %2, %i.x
  br i1 %i.ah, label %.lr.ph.preheader.i, label %_PyFrame_Initialize.exit

.lr.ph.preheader.i:                               ; preds = %_PyStackRef_FromPyObjectNew.exit.i
  %i.ai = sext i32 %2 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.ai, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.aj = getelementptr [8 x i8], ptr %i.v, i64 %indvars.iv.i
  store i64 1, ptr %i.aj, align 8, !tbaa !244
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ak = load i32, ptr %i.w, align 8, !tbaa !297
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp slt i64 %indvars.iv.next.i, %i.al
  br i1 %i.am, label %.lr.ph.i, label %_PyFrame_Initialize.exit, !llvm.loop !1

_PyFrame_Initialize.exit:                         ; preds = %.lr.ph.i, %_PyStackRef_FromPyObjectNew.exit.i
  ret ptr %i.f
}

end_hunk_2
