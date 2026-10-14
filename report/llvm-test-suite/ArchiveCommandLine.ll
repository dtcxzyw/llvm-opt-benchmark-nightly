Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/ArchiveCommandLine?download=true
inline.NumInlined: 366
inline.NumDeleted: 75
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZN25CArchiveCommandLineParser6Parse2ER26CArchiveCommandLineOptions:bb.a
  %i.arz = sext i32 %i.ary to i64
  %i.asa = icmp slt i64 %indvars.iv.next.i369, %i.arz
  br i1 %i.asa, label %bb.hy, label %_ZL20SetAddCommandOptionsN12NCommandType5EEnumERKN18NCommandLineParser7CParserER14CUpdateOptions.exit, !llvm.loop !132

.body.i:                                          ; preds = %.loopexit.split-lp.i, %.loopexit93.i, %bb.im, %bb.il, %bb.ik, %bb.hx, %bb.hi, %.loopexit.split-lp98.i, %.loopexit97.i, %.body.thread.i.i
  %.pn.pn.i364 = phi { ptr, i32 } [ %i.akr, %bb.hi ], [ %i.apj, %bb.hx ], [ %.pn21188.i.i, %.body.thread.i.i ], [ %i.ars, %bb.im ], [ %.pn.i63.i, %bb.ik ], [ %.pn.i63.i, %bb.il ], [ %lpad.loopexit.split-lp100.i, %.loopexit.split-lp98.i ], [ %lpad.loopexit99.i, %.loopexit97.i ], [ %lpad.loopexit.i, %.loopexit93.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @_ZN21CUpdateArchiveCommandD2Ev(ptr noundef nonnull align 8 dead_on_return(164) dereferenceable(164) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %common.resume

_ZL20SetAddCommandOptionsN12NCommandType5EEnumERKN18NCommandLineParser7CParserER14CUpdateOptions.exit: ; preds = %bb.io, %bb.hv, %.preheader.i
  call void @_ZN21CUpdateArchiveCommandD2Ev(ptr noundef nonnull align 8 dead_on_return(164) dereferenceable(164) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %i.asb = getelementptr inbounds nuw i8, ptr %1, i64 232
  call fastcc void @_ZL16SetMethodOptionsRKN18NCommandLineParser7CParserER13CObjectVectorI9CPropertyE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.asb)
  %i.asc = call noundef nonnull align 8 dereferenceable(44) ptr @_ZNK18NCommandLineParser7CParserixEm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef 4)
  %i.asd = load i8, ptr %i.asc, align 8, !tbaa !35, !range !36, !noundef !37 ; 2 uses
  %i.ase = trunc nuw i8 %i.asd to i1
  %i.asf = xor i8 %i.asd, 1
  %i.asg = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 2 uses
  store i8 %i.asf, ptr %i.asg, align 8, !tbaa !180
  br i1 %i.ase, label %.thread638, label %bb.ip

bb.ip:                                            ; preds = %_ZL20SetAddCommandOptionsN12NCommandType5EEnumERKN18NCommandLineParser7CParserER14CUpdateOptions.exit
  %i.ash = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.asi = load i8, ptr %i.ash, align 2, !tbaa !39, !range !36, !noundef !37
  %i.asj = trunc nuw i8 %i.asi to i1
  br i1 %i.asj, label %bb.iq, label %bb.ir

bb.iq:                                            ; preds = %bb.ip
  %i.ask = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.asl = load i8, ptr %i.ask, align 4, !tbaa !33, !range !36, !noundef !37
  %i.asm = trunc nuw i8 %i.asl to i1
  br i1 %i.asm, label %.thread638, label %bb.is

bb.ir:                                            ; preds = %bb.ip
  %i.asn = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.aso = load i8, ptr %i.asn, align 1, !tbaa !32, !range !36, !noundef !37
  %i.asp = trunc nuw i8 %i.aso to i1
  br i1 %i.asp, label %.thread638, label %bb.is

bb.is:                                            ; preds = %bb.ir, %bb.iq
  store i8 0, ptr %i.asg, align 8, !tbaa !180
  br label %.thread638

.thread638:                                       ; preds = %bb.iq, %bb.ir, %bb.is, %_ZL20SetAddCommandOptionsN12NCommandType5EEnumERKN18NCommandLineParser7CParserER14CUpdateOptions.exit
  %i.asq = call noundef nonnull align 8 dereferenceable(44) ptr @_ZNK18NCommandLineParser7CParserixEm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef 23)
  %i.asr = load i8, ptr %i.asq, align 8, !tbaa !35, !range !36, !noundef !37 ; 2 uses
  %i.ass = trunc nuw i8 %i.asr to i1
  %i.ast = getelementptr inbounds nuw i8, ptr %1, i64 473 ; 2 uses
  store i8 %i.asr, ptr %i.ast, align 1, !tbaa !181
  br i1 %i.ass, label %bb.it, label %bb.iz

bb.it:                                            ; preds = %.thread638
  %i.asu = call noundef nonnull align 8 dereferenceable(44) ptr @_ZNK18NCommandLineParser7CParserixEm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef 23)
  %i.asv = getelementptr inbounds nuw i8, ptr %i.asu, i64 24
  %i.asw = load ptr, ptr %i.asv, align 8, !tbaa !40
  %i.asx = load ptr, ptr %i.asw, align 8, !tbaa !41 ; 3 uses
  %i.asy = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 5 uses
  %i.asz = icmp eq ptr %i.asx, %i.asy
  %.phi.trans.insert814 = getelementptr inbounds nuw i8, ptr %1, i64 488 ; 5 uses
  br i1 %i.asz, label %._ZN11CStringBaseIwEaSERKS0_.exit396_crit_edge, label %bb.iu

._ZN11CStringBaseIwEaSERKS0_.exit396_crit_edge:   ; preds = %bb.it
  %.pre815 = load i32, ptr %.phi.trans.insert814, align 8, !tbaa !42
  br label %_ZN11CStringBaseIwEaSERKS0_.exit396

bb.iu:                                            ; preds = %bb.it
  store i32 0, ptr %.phi.trans.insert814, align 8, !tbaa !42
  %i.ata = load ptr, ptr %i.asy, align 8, !tbaa !16 ; 2 uses
  store i32 0, ptr %i.ata, align 4, !tbaa !45
  %i.atb = getelementptr inbounds nuw i8, ptr %i.asx, i64 8 ; 2 uses
  %i.atc = load i32, ptr %i.atb, align 8, !tbaa !42 ; 2 uses
  %i.atd = add nsw i32 %i.atc, 1                  ; 3 uses
  %i.ate = getelementptr inbounds nuw i8, ptr %1, i64 492 ; 3 uses
  %i.atf = load i32, ptr %i.ate, align 4, !tbaa !46
  %i.atg = icmp eq i32 %i.atd, %i.atf
  br i1 %i.atg, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i381, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.ath = zext nneg i32 %i.atd to i64
  %i.ati = icmp slt i32 %i.atc, -1
  %i.atj = shl nuw nsw i64 %i.ath, 2
  %i.atk = select i1 %i.ati, i64 -1, i64 %i.atj
  %i.atl = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.atk) #25 ; 5 uses
  %i.atm = load i32, ptr %i.ate, align 4, !tbaa !46
  %i.atn = icmp sgt i32 %i.atm, 0
  %.pre7.i380 = load i32, ptr %.phi.trans.insert814, align 8, !tbaa !42 ; 5 uses
  br i1 %i.atn, label %.preheader.i.i386, label %bb.iw

.preheader.i.i386:                                ; preds = %bb.iv
  %i.ato = icmp sgt i32 %.pre7.i380, 0
  %.pre.i.i387 = load ptr, ptr %i.asy, align 8, !tbaa !16 ; 4 uses
  br i1 %i.ato, label %.lr.ph.i.i391, label %._crit_edge.i.i388

.lr.ph.i.i391:                                    ; preds = %.preheader.i.i386
  %wide.trip.count.i.i392 = zext nneg i32 %.pre7.i380 to i64 ; 3 uses
  %min.iters.check1363 = icmp ult i32 %.pre7.i380, 8
  br i1 %min.iters.check1363, label %scalar.ph1362.preheader, label %vector.ph1364

vector.ph1364:                                    ; preds = %.lr.ph.i.i391
  %n.vec1365 = and i64 %wide.trip.count.i.i392, 2147483640 ; 3 uses
  br label %vector.body1366

vector.body1366:                                  ; preds = %vector.body1366, %vector.ph1364
  %index1367 = phi i64 [ 0, %vector.ph1364 ], [ %index.next1370, %vector.body1366 ] ; 3 uses
  %i.atp = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i387, i64 %index1367 ; 2 uses
  %i.atq = getelementptr inbounds nuw i8, ptr %i.atp, i64 16
  %wide.load1368 = load <4 x i32>, ptr %i.atp, align 4, !tbaa !45
  %wide.load1369 = load <4 x i32>, ptr %i.atq, align 4, !tbaa !45
  %i.atr = getelementptr inbounds nuw [4 x i8], ptr %i.atl, i64 %index1367 ; 2 uses
  %i.ats = getelementptr inbounds nuw i8, ptr %i.atr, i64 16
  store <4 x i32> %wide.load1368, ptr %i.atr, align 4, !tbaa !45
  store <4 x i32> %wide.load1369, ptr %i.ats, align 4, !tbaa !45
  %index.next1370 = add nuw i64 %index1367, 8     ; 2 uses
  %i.att = icmp eq i64 %index.next1370, %n.vec1365
  br i1 %i.att, label %middle.block1371, label %vector.body1366, !llvm.loop !133

middle.block1371:                                 ; preds = %vector.body1366
  %cmp.n1372 = icmp eq i64 %n.vec1365, %wide.trip.count.i.i392
  br i1 %cmp.n1372, label %._crit_edge.thread.i.i389, label %scalar.ph1362.preheader

scalar.ph1362.preheader:                          ; preds = %.lr.ph.i.i391, %middle.block1371
  %indvars.iv.i.i393.ph = phi i64 [ 0, %.lr.ph.i.i391 ], [ %n.vec1365, %middle.block1371 ]
  br label %scalar.ph1362

._crit_edge.i.i388:                               ; preds = %.preheader.i.i386
  %i.atu = icmp eq ptr %.pre.i.i387, null
  br i1 %i.atu, label %bb.iw, label %._crit_edge.thread.i.i389

scalar.ph1362:                                    ; preds = %scalar.ph1362.preheader, %scalar.ph1362
  %indvars.iv.i.i393 = phi i64 [ %indvars.iv.next.i.i394, %scalar.ph1362 ], [ %indvars.iv.i.i393.ph, %scalar.ph1362.preheader ] ; 3 uses
  %i.atv = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i387, i64 %indvars.iv.i.i393
  %i.atw = load i32, ptr %i.atv, align 4, !tbaa !45
  %i.atx = getelementptr inbounds nuw [4 x i8], ptr %i.atl, i64 %indvars.iv.i.i393
  store i32 %i.atw, ptr %i.atx, align 4, !tbaa !45
  %indvars.iv.next.i.i394 = add nuw nsw i64 %indvars.iv.i.i393, 1 ; 2 uses
  %exitcond.not.i.i395 = icmp eq i64 %indvars.iv.next.i.i394, %wide.trip.count.i.i392
  br i1 %exitcond.not.i.i395, label %._crit_edge.thread.i.i389, label %scalar.ph1362, !llvm.loop !134

._crit_edge.thread.i.i389:                        ; preds = %scalar.ph1362, %middle.block1371, %._crit_edge.i.i388
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i387) #21
  %.pre.i390 = load i32, ptr %.phi.trans.insert814, align 8, !tbaa !42
  br label %bb.iw

bb.iw:                                            ; preds = %._crit_edge.thread.i.i389, %._crit_edge.i.i388, %bb.iv
  %i.aty = phi i32 [ %.pre.i390, %._crit_edge.thread.i.i389 ], [ %.pre7.i380, %._crit_edge.i.i388 ], [ %.pre7.i380, %bb.iv ]
  store ptr %i.atl, ptr %i.asy, align 8, !tbaa !16
  %i.atz = sext i32 %i.aty to i64
  %i.aua = getelementptr inbounds [4 x i8], ptr %i.atl, i64 %i.atz
  store i32 0, ptr %i.aua, align 4, !tbaa !45
  store i32 %i.atd, ptr %i.ate, align 4, !tbaa !46
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i381

_ZN11CStringBaseIwE11SetCapacityEi.exit.i381:     ; preds = %bb.iw, %bb.iu
  %i.aub = phi ptr [ %i.ata, %bb.iu ], [ %i.atl, %bb.iw ]
  %i.auc = load ptr, ptr %i.asx, align 8, !tbaa !16
  br label %bb.ix

bb.ix:                                            ; preds = %bb.ix, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i381
  %.04.i.i382 = phi ptr [ %i.aub, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i381 ], [ %i.auf, %bb.ix ] ; 2 uses
  %.0.i.i383 = phi ptr [ %i.auc, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i381 ], [ %i.aud, %bb.ix ] ; 2 uses
  %i.aud = getelementptr inbounds nuw i8, ptr %.0.i.i383, i64 4
  %i.aue = load i32, ptr %.0.i.i383, align 4, !tbaa !45 ; 2 uses
  %i.auf = getelementptr inbounds nuw i8, ptr %.04.i.i382, i64 4
  store i32 %i.aue, ptr %.04.i.i382, align 4, !tbaa !45
  %.not.i.i384 = icmp eq i32 %i.aue, 0
  br i1 %.not.i.i384, label %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i385, label %bb.ix, !llvm.loop !0

_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i385:         ; preds = %bb.ix
  %i.aug = load i32, ptr %i.atb, align 8, !tbaa !42 ; 2 uses
  store i32 %i.aug, ptr %.phi.trans.insert814, align 8, !tbaa !42
  br label %_ZN11CStringBaseIwEaSERKS0_.exit396

_ZN11CStringBaseIwEaSERKS0_.exit396:              ; preds = %._ZN11CStringBaseIwEaSERKS0_.exit396_crit_edge, %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i385
  %i.auh = phi i32 [ %.pre815, %._ZN11CStringBaseIwEaSERKS0_.exit396_crit_edge ], [ %i.aug, %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i385 ] ; 2 uses
  %i.aui = getelementptr inbounds nuw i8, ptr %1, i64 488 ; 2 uses
  %i.auj = icmp sgt i32 %i.auh, 0
  br i1 %i.auj, label %bb.iy, label %bb.iz

bb.iy:                                            ; preds = %_ZN11CStringBaseIwEaSERKS0_.exit396
  %i.auk = load ptr, ptr %i.asy, align 8, !tbaa !16 ; 3 uses
  %i.aul = load i32, ptr %i.auk, align 4, !tbaa !45
  %i.aum = icmp eq i32 %i.aul, 46
  br i1 %i.aum, label %_ZN11CStringBaseIwE6DeleteEii.exit.a, label %bb.iz

_ZN11CStringBaseIwE6DeleteEii.exit.a:             ; preds = %bb.iy
  %i.aun = getelementptr inbounds nuw i8, ptr %1, i64 474
  store i8 1, ptr %i.aun, align 2, !tbaa !182
  %i.auo = getelementptr inbounds nuw i8, ptr %i.auk, i64 4
  %i.aup = zext nneg i32 %i.auh to i64
  %i.auq = shl nuw nsw i64 %i.aup, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.auk, ptr nonnull align 4 %i.auo, i64 %i.auq, i1 false)
  %i.aur = load i32, ptr %i.aui, align 8, !tbaa !42
  %i.aus = add nsw i32 %i.aur, -1
  store i32 %i.aus, ptr %i.aui, align 8, !tbaa !42
  br label %bb.iz

bb.iz:                                            ; preds = %_ZN11CStringBaseIwEaSERKS0_.exit396, %_ZN11CStringBaseIwE6DeleteEii.exit.a, %bb.iy, %.thread638
  %i.aut = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.auu = load i8, ptr %i.aut, align 2, !tbaa !39, !range !36, !noundef !37 ; 2 uses
  %i.auv = getelementptr inbounds nuw i8, ptr %1, i64 472
  store i8 %i.auu, ptr %i.auv, align 8, !tbaa !183
  %i.auw = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.aux = load i8, ptr %i.auw, align 1, !tbaa !38, !range !36, !noundef !37 ; 2 uses
  %i.auy = getelementptr inbounds nuw i8, ptr %1, i64 449
  store i8 %i.aux, ptr %i.auy, align 1, !tbaa !184
  %i.auz = trunc nuw i8 %i.auu to i1
  br i1 %i.auz, label %bb.ja, label %bb.je

bb.ja:                                            ; preds = %bb.iz
  %i.ava = load i8, ptr %i.ast, align 1, !tbaa !181, !range !36, !noundef !37
  %i.avb = trunc nuw i8 %i.ava to i1
  br i1 %i.avb, label %bb.jb, label %bb.jc

bb.jb:                                            ; preds = %bb.ja
  %i.avc = call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr @.str.8, ptr %i.avc, align 16, !tbaa !52
  call void @__cxa_throw(ptr nonnull %i.avc, ptr nonnull @_ZTIPKc, ptr null) #24
  unreachable

bb.jc:                                            ; preds = %bb.ja
  %i.avd = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.ave = load i8, ptr %i.avd, align 1, !tbaa !32, !range !36, !noundef !37
  %i.avf = trunc nuw i8 %i.ave to i1
  br i1 %i.avf, label %bb.jd, label %bb.je

bb.jd:                                            ; preds = %bb.jc
  %i.avg = call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr @.str.52, ptr %i.avg, align 16, !tbaa !52
  call void @__cxa_throw(ptr nonnull %i.avg, ptr nonnull @_ZTIPKc, ptr null) #24
  unreachable

bb.je:                                            ; preds = %bb.iz, %bb.jc
  %i.avh = trunc nuw i8 %i.aux to i1
  br i1 %i.avh, label %bb.jf, label %_ZN11CStringBaseIwEaSERKS0_.exit413

bb.jf:                                            ; preds = %bb.je
  %i.avi = call noundef nonnull align 8 dereferenceable(44) ptr @_ZNK18NCommandLineParser7CParserixEm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef 20)
  %i.avj = getelementptr inbounds nuw i8, ptr %i.avi, i64 24
  %i.avk = load ptr, ptr %i.avj, align 8, !tbaa !40
  %i.avl = load ptr, ptr %i.avk, align 8, !tbaa !41 ; 3 uses
  %i.avm = getelementptr inbounds nuw i8, ptr %1, i64 456 ; 4 uses
  %i.avn = icmp eq ptr %i.avl, %i.avm
  br i1 %i.avn, label %_ZN11CStringBaseIwEaSERKS0_.exit413, label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  %i.avo = getelementptr inbounds nuw i8, ptr %1, i64 464 ; 4 uses
  store i32 0, ptr %i.avo, align 8, !tbaa !42
  %i.avp = load ptr, ptr %i.avm, align 8, !tbaa !16 ; 2 uses
  store i32 0, ptr %i.avp, align 4, !tbaa !45
  %i.avq = getelementptr inbounds nuw i8, ptr %i.avl, i64 8 ; 2 uses
  %i.avr = load i32, ptr %i.avq, align 8, !tbaa !42 ; 2 uses
  %i.avs = add nsw i32 %i.avr, 1                  ; 3 uses
  %i.avt = getelementptr inbounds nuw i8, ptr %1, i64 468 ; 3 uses
  %i.avu = load i32, ptr %i.avt, align 4, !tbaa !46
  %i.avv = icmp eq i32 %i.avs, %i.avu
  br i1 %i.avv, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i398, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  %i.avw = zext nneg i32 %i.avs to i64
  %i.avx = icmp slt i32 %i.avr, -1
  %i.avy = shl nuw nsw i64 %i.avw, 2
  %i.avz = select i1 %i.avx, i64 -1, i64 %i.avy
  %i.awa = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.avz) #25 ; 5 uses
  %i.awb = load i32, ptr %i.avt, align 4, !tbaa !46
  %i.awc = icmp sgt i32 %i.awb, 0
  %.pre7.i397 = load i32, ptr %i.avo, align 8, !tbaa !42 ; 5 uses
  br i1 %i.awc, label %.preheader.i.i403, label %bb.ji

.preheader.i.i403:                                ; preds = %bb.jh
  %i.awd = icmp sgt i32 %.pre7.i397, 0
  %.pre.i.i404 = load ptr, ptr %i.avm, align 8, !tbaa !16 ; 4 uses
  br i1 %i.awd, label %.lr.ph.i.i408, label %._crit_edge.i.i405

.lr.ph.i.i408:                                    ; preds = %.preheader.i.i403
  %wide.trip.count.i.i409 = zext nneg i32 %.pre7.i397 to i64 ; 3 uses
  %min.iters.check1375 = icmp ult i32 %.pre7.i397, 8
  br i1 %min.iters.check1375, label %scalar.ph1374.preheader, label %vector.ph1376

vector.ph1376:                                    ; preds = %.lr.ph.i.i408
  %n.vec1377 = and i64 %wide.trip.count.i.i409, 2147483640 ; 3 uses
  br label %vector.body1378

vector.body1378:                                  ; preds = %vector.body1378, %vector.ph1376
  %index1379 = phi i64 [ 0, %vector.ph1376 ], [ %index.next1382, %vector.body1378 ] ; 3 uses
  %i.awe = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i404, i64 %index1379 ; 2 uses
  %i.awf = getelementptr inbounds nuw i8, ptr %i.awe, i64 16
  %wide.load1380 = load <4 x i32>, ptr %i.awe, align 4, !tbaa !45
  %wide.load1381 = load <4 x i32>, ptr %i.awf, align 4, !tbaa !45
  %i.awg = getelementptr inbounds nuw [4 x i8], ptr %i.awa, i64 %index1379 ; 2 uses
  %i.awh = getelementptr inbounds nuw i8, ptr %i.awg, i64 16
  store <4 x i32> %wide.load1380, ptr %i.awg, align 4, !tbaa !45
  store <4 x i32> %wide.load1381, ptr %i.awh, align 4, !tbaa !45
  %index.next1382 = add nuw i64 %index1379, 8     ; 2 uses
  %i.awi = icmp eq i64 %index.next1382, %n.vec1377
  br i1 %i.awi, label %middle.block1383, label %vector.body1378, !llvm.loop !135

middle.block1383:                                 ; preds = %vector.body1378
  %cmp.n1384 = icmp eq i64 %n.vec1377, %wide.trip.count.i.i409
  br i1 %cmp.n1384, label %._crit_edge.thread.i.i406, label %scalar.ph1374.preheader

scalar.ph1374.preheader:                          ; preds = %.lr.ph.i.i408, %middle.block1383
  %indvars.iv.i.i410.ph = phi i64 [ 0, %.lr.ph.i.i408 ], [ %n.vec1377, %middle.block1383 ]
  br label %scalar.ph1374

._crit_edge.i.i405:                               ; preds = %.preheader.i.i403
  %i.awj = icmp eq ptr %.pre.i.i404, null
  br i1 %i.awj, label %bb.ji, label %._crit_edge.thread.i.i406

scalar.ph1374:                                    ; preds = %scalar.ph1374.preheader, %scalar.ph1374
  %indvars.iv.i.i410 = phi i64 [ %indvars.iv.next.i.i411, %scalar.ph1374 ], [ %indvars.iv.i.i410.ph, %scalar.ph1374.preheader ] ; 3 uses
  %i.awk = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i404, i64 %indvars.iv.i.i410
  %i.awl = load i32, ptr %i.awk, align 4, !tbaa !45
  %i.awm = getelementptr inbounds nuw [4 x i8], ptr %i.awa, i64 %indvars.iv.i.i410
  store i32 %i.awl, ptr %i.awm, align 4, !tbaa !45
  %indvars.iv.next.i.i411 = add nuw nsw i64 %indvars.iv.i.i410, 1 ; 2 uses
  %exitcond.not.i.i412 = icmp eq i64 %indvars.iv.next.i.i411, %wide.trip.count.i.i409
  br i1 %exitcond.not.i.i412, label %._crit_edge.thread.i.i406, label %scalar.ph1374, !llvm.loop !136

._crit_edge.thread.i.i406:                        ; preds = %scalar.ph1374, %middle.block1383, %._crit_edge.i.i405
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i404) #21
  %.pre.i407 = load i32, ptr %i.avo, align 8, !tbaa !42
  br label %bb.ji

bb.ji:                                            ; preds = %._crit_edge.thread.i.i406, %._crit_edge.i.i405, %bb.jh
  %i.awn = phi i32 [ %.pre.i407, %._crit_edge.thread.i.i406 ], [ %.pre7.i397, %._crit_edge.i.i405 ], [ %.pre7.i397, %bb.jh ]
  store ptr %i.awa, ptr %i.avm, align 8, !tbaa !16
  %i.awo = sext i32 %i.awn to i64
  %i.awp = getelementptr inbounds [4 x i8], ptr %i.awa, i64 %i.awo
  store i32 0, ptr %i.awp, align 4, !tbaa !45
  store i32 %i.avs, ptr %i.avt, align 4, !tbaa !46
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i398

_ZN11CStringBaseIwE11SetCapacityEi.exit.i398:     ; preds = %bb.ji, %bb.jg
  %i.awq = phi ptr [ %i.avp, %bb.jg ], [ %i.awa, %bb.ji ]
  %i.awr = load ptr, ptr %i.avl, align 8, !tbaa !16
  br label %bb.jj

bb.jj:                                            ; preds = %bb.jj, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i398
  %.04.i.i399 = phi ptr [ %i.awq, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i398 ], [ %i.awu, %bb.jj ] ; 2 uses
  %.0.i.i400 = phi ptr [ %i.awr, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i398 ], [ %i.aws, %bb.jj ] ; 2 uses
  %i.aws = getelementptr inbounds nuw i8, ptr %.0.i.i400, i64 4
  %i.awt = load i32, ptr %.0.i.i400, align 4, !tbaa !45 ; 2 uses
  %i.awu = getelementptr inbounds nuw i8, ptr %.04.i.i399, i64 4
  store i32 %i.awt, ptr %.04.i.i399, align 4, !tbaa !45
  %.not.i.i401 = icmp eq i32 %i.awt, 0
  br i1 %.not.i.i401, label %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i402, label %bb.jj, !llvm.loop !0

_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i402:         ; preds = %bb.jj
  %i.awv = load i32, ptr %i.avq, align 8, !tbaa !42
  store i32 %i.awv, ptr %i.avo, align 8, !tbaa !42
  br label %_ZN11CStringBaseIwEaSERKS0_.exit413

bb.jk:                                            ; preds = %bb.fb
  switch i32 %i.ym, label %bb.kq [
    i32 7, label %bb.jl
    i32 8, label %_ZN11CStringBaseIwEaSERKS0_.exit413
  ]

bb.jl:                                            ; preds = %bb.jk
  %i.aww = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 2 uses
  store i32 -1, ptr %i.aww, align 8, !tbaa !185
  %i.awx = getelementptr inbounds nuw i8, ptr %1, i64 572 ; 2 uses
  store i32 -1, ptr %i.awx, align 4, !tbaa !186
  %i.awy = getelementptr inbounds nuw i8, ptr %1, i64 564 ; 2 uses
  store i32 1, ptr %i.awy, align 4, !tbaa !187
  %i.awz = icmp slt i32 %.0167, %i.f
  br i1 %i.awz, label %bb.jm, label %bb.jq

bb.jm:                                            ; preds = %bb.jl
  %i.axa = load ptr, ptr %i.j, align 8, !tbaa !40
  %i.axb = zext nneg i32 %.0167 to i64
  %i.axc = getelementptr inbounds nuw [8 x i8], ptr %i.axa, i64 %i.axb
  %i.axd = load ptr, ptr %i.axc, align 8, !tbaa !41
  %i.axe = load ptr, ptr %i.axd, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  %i.axf = call noundef i64 @_Z21ConvertStringToUInt64PKwPS0_(ptr noundef %i.axe, ptr noundef nonnull %i.c) ; 2 uses
  %i.axg = load ptr, ptr %i.c, align 8, !tbaa !173
  %i.axh = load i32, ptr %i.axg, align 4, !tbaa !45
  %.not.i = icmp eq i32 %i.axh, 0
  %i.axi = icmp ult i64 %i.axf, 4294967296
  %or.cond.not.i = and i1 %i.axi, %.not.i
  br i1 %or.cond.not.i, label %_ZL21ConvertStringToUInt32PKwRj.exit.thread, label %bb.jn

_ZL21ConvertStringToUInt32PKwRj.exit.thread:      ; preds = %bb.jm
  %i.axj = trunc nuw i64 %i.axf to i32
  store i32 %i.axj, ptr %i.awy, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br label %bb.jq

bb.jn:                                            ; preds = %bb.jm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  %i.axk = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN28CArchiveCommandLineExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.axk, ptr noundef nonnull @.str.41)
          to label %bb.jo unwind label %bb.jp

bb.jo:                                            ; preds = %bb.jn
  call void @__cxa_throw(ptr nonnull %i.axk, ptr nonnull @_ZTI28CArchiveCommandLineException, ptr nonnull @_ZN11CStringBaseIcED2Ev) #24
end_hunk_0
