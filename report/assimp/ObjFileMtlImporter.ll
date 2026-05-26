inline.NumInlined: 1119
inline.NumDeleted: 346
begin_hunk_0_@_ZN6Assimp18ObjFileMtlImporter4loadEv:bb.a
  %i.aly = icmp eq ptr %i.alw, %i.alt
  %.0.i.i721 = or i1 %i.alx, %i.aly
  br i1 %.0.i.i721, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit722, label %.lr.ph.i717thread-pre-split, !llvm.loop !13

_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit722: ; preds = %.lr.ph.i717, %.lr.ph.i717, %.lr.ph.i717, %.lr.ph.i717, %.lr.ph.i717, %.lr.ph.i717, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i720, %bb.eq
  %.sroa.0.0.lcssa.i719 = phi ptr [ %i.bi, %bb.eq ], [ %i.alw, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i720 ], [ %.sroa.0.06.i718, %.lr.ph.i717 ], [ %.sroa.0.06.i718, %.lr.ph.i717 ], [ %.sroa.0.06.i718, %.lr.ph.i717 ], [ %.sroa.0.06.i718, %.lr.ph.i717 ], [ %.sroa.0.06.i718, %.lr.ph.i717 ], [ %.sroa.0.06.i718, %.lr.ph.i717 ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store ptr %i.as, ptr %6, align 8
  store i64 0, ptr %i.at, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #22
  %i.alz = ptrtoint ptr %.sroa.0.0.lcssa.i719 to i64 ; 3 uses
  %i.ama = ptrtoint ptr %i.bi to i64              ; 2 uses
  %i.amb = sub i64 %i.alz, %i.ama                 ; 10 uses
  store i64 %i.amb, ptr %i.l, align 8
  %i.amc = icmp ugt i64 %i.amb, 15
  br i1 %i.amc, label %.noexc.i732, label %._crit_edge.i.i723

.noexc.i732:                                      ; preds = %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit722
  %i.amd = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.l, i64 noundef 0)
          to label %.noexc733 unwind label %bb.ex ; 2 uses

.noexc733:                                        ; preds = %.noexc.i732
  store ptr %i.amd, ptr %6, align 8
  %i.ame = load i64, ptr %i.l, align 8            ; 2 uses
  store i64 %i.ame, ptr %i.as, align 8
  br label %._crit_edge.i.i723

._crit_edge.i.i723:                               ; preds = %.noexc733, %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit722
  %i.amf = phi i64 [ %i.ame, %.noexc733 ], [ %i.amb, %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit722 ]
  %i.amg = phi ptr [ %i.amd, %.noexc733 ], [ %i.as, %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit722 ] ; 7 uses
  %.not5.i.i.i724 = icmp eq ptr %i.bi, %.sroa.0.0.lcssa.i719
  br i1 %.not5.i.i.i724, label %bb.er, label %iter.check1430

iter.check1430:                                   ; preds = %._crit_edge.i.i723
  %i.amh = ptrtoaddr ptr %i.amg to i64
  %min.iters.check1413 = icmp ult i64 %i.amb, 4
  %i.ami = sub i64 %i.amh, %i.ama
  %diff.check1412 = icmp ult i64 %i.ami, 32
  %or.cond1486 = select i1 %min.iters.check1413, i1 true, i1 %diff.check1412
  br i1 %or.cond1486, label %.lr.ph.i.i.i725.preheader, label %vector.main.loop.iter.check1414

vector.main.loop.iter.check1414:                  ; preds = %iter.check1430
  %min.iters.check1415 = icmp ult i64 %i.amb, 32
  br i1 %min.iters.check1415, label %vec.epilog.ph1434, label %vector.ph1416

vector.ph1416:                                    ; preds = %vector.main.loop.iter.check1414
  %n.mod.vf1417 = and i64 %i.amb, 28
  %n.vec1418 = and i64 %i.amb, -32                ; 5 uses
  %i.amj = getelementptr i8, ptr %i.amg, i64 %n.vec1418
  %i.amk = getelementptr i8, ptr %i.bi, i64 %n.vec1418
  br label %vector.body1419

vector.body1419:                                  ; preds = %vector.body1419, %vector.ph1416
  %index1420 = phi i64 [ 0, %vector.ph1416 ], [ %index.next1425, %vector.body1419 ] ; 3 uses
  %next.gep1421 = getelementptr i8, ptr %i.amg, i64 %index1420 ; 2 uses
  %next.gep1422 = getelementptr i8, ptr %i.bi, i64 %index1420 ; 2 uses
  %i.aml = getelementptr i8, ptr %next.gep1422, i64 16
  %wide.load1423 = load <16 x i8>, ptr %next.gep1422, align 1
  %wide.load1424 = load <16 x i8>, ptr %i.aml, align 1
  %i.amm = getelementptr i8, ptr %next.gep1421, i64 16
  store <16 x i8> %wide.load1423, ptr %next.gep1421, align 1
  store <16 x i8> %wide.load1424, ptr %i.amm, align 1
  %index.next1425 = add nuw i64 %index1420, 32    ; 2 uses
  %i.amn = icmp eq i64 %index.next1425, %n.vec1418
  br i1 %i.amn, label %middle.block1426, label %vector.body1419, !llvm.loop !37

middle.block1426:                                 ; preds = %vector.body1419
  %cmp.n1427 = icmp eq i64 %i.amb, %n.vec1418
  br i1 %cmp.n1427, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i729, label %vec.epilog.iter.check1432

vec.epilog.iter.check1432:                        ; preds = %middle.block1426
  %min.epilog.iters.check1433 = icmp eq i64 %n.mod.vf1417, 0
  br i1 %min.epilog.iters.check1433, label %.lr.ph.i.i.i725.preheader, label %vec.epilog.ph1434, !prof !17

vec.epilog.ph1434:                                ; preds = %vector.main.loop.iter.check1414, %vec.epilog.iter.check1432
  %vec.epilog.resume.val1428 = phi i64 [ %n.vec1418, %vec.epilog.iter.check1432 ], [ 0, %vector.main.loop.iter.check1414 ]
  %n.vec1436 = and i64 %i.amb, -4                 ; 4 uses
  %i.amo = getelementptr i8, ptr %i.amg, i64 %n.vec1436
  %i.amp = getelementptr i8, ptr %i.bi, i64 %n.vec1436
  br label %vec.epilog.vector.body1437

vec.epilog.vector.body1437:                       ; preds = %vec.epilog.vector.body1437, %vec.epilog.ph1434
  %index1438 = phi i64 [ %vec.epilog.resume.val1428, %vec.epilog.ph1434 ], [ %index.next1442, %vec.epilog.vector.body1437 ] ; 3 uses
  %next.gep1439 = getelementptr i8, ptr %i.amg, i64 %index1438
  %next.gep1440 = getelementptr i8, ptr %i.bi, i64 %index1438
  %wide.load1441 = load <4 x i8>, ptr %next.gep1440, align 1
  store <4 x i8> %wide.load1441, ptr %next.gep1439, align 1
  %index.next1442 = add nuw i64 %index1438, 4     ; 2 uses
  %i.amq = icmp eq i64 %index.next1442, %n.vec1436
  br i1 %i.amq, label %vec.epilog.middle.block1443, label %vec.epilog.vector.body1437, !llvm.loop !38

vec.epilog.middle.block1443:                      ; preds = %vec.epilog.vector.body1437
  %cmp.n1444 = icmp eq i64 %i.amb, %n.vec1436
  br i1 %cmp.n1444, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i729, label %.lr.ph.i.i.i725.preheader

.lr.ph.i.i.i725.preheader:                        ; preds = %iter.check1430, %vec.epilog.iter.check1432, %vec.epilog.middle.block1443
  %.07.i.i.i726.ph = phi ptr [ %i.amg, %iter.check1430 ], [ %i.amj, %vec.epilog.iter.check1432 ], [ %i.amo, %vec.epilog.middle.block1443 ] ; 2 uses
  %.sroa.02.06.i.i.i727.ph = phi ptr [ %i.bi, %iter.check1430 ], [ %i.amk, %vec.epilog.iter.check1432 ], [ %i.amp, %vec.epilog.middle.block1443 ] ; 3 uses
  %.sroa.02.06.i.i.i727.ph1489 = ptrtoint ptr %.sroa.02.06.i.i.i727.ph to i64 ; 2 uses
  %i.amr = sub i64 %i.alz, %.sroa.02.06.i.i.i727.ph1489
  %xtraiter1490 = and i64 %i.amr, 7               ; 2 uses
  %lcmp.mod1491.not = icmp eq i64 %xtraiter1490, 0
  br i1 %lcmp.mod1491.not, label %.lr.ph.i.i.i725.prol.loopexit, label %.lr.ph.i.i.i725.prol

.lr.ph.i.i.i725.prol:                             ; preds = %.lr.ph.i.i.i725.preheader, %.lr.ph.i.i.i725.prol
  %.07.i.i.i726.prol = phi ptr [ %i.amu, %.lr.ph.i.i.i725.prol ], [ %.07.i.i.i726.ph, %.lr.ph.i.i.i725.preheader ] ; 2 uses
  %.sroa.02.06.i.i.i727.prol = phi ptr [ %i.amt, %.lr.ph.i.i.i725.prol ], [ %.sroa.02.06.i.i.i727.ph, %.lr.ph.i.i.i725.preheader ] ; 2 uses
  %prol.iter1492 = phi i64 [ %prol.iter1492.next, %.lr.ph.i.i.i725.prol ], [ 0, %.lr.ph.i.i.i725.preheader ]
  %i.ams = load i8, ptr %.sroa.02.06.i.i.i727.prol, align 1
  store i8 %i.ams, ptr %.07.i.i.i726.prol, align 1
  %i.amt = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i727.prol, i64 1 ; 2 uses
  %i.amu = getelementptr inbounds nuw i8, ptr %.07.i.i.i726.prol, i64 1 ; 2 uses
  %prol.iter1492.next = add i64 %prol.iter1492, 1 ; 2 uses
  %prol.iter1492.cmp.not = icmp eq i64 %prol.iter1492.next, %xtraiter1490
  br i1 %prol.iter1492.cmp.not, label %.lr.ph.i.i.i725.prol.loopexit, label %.lr.ph.i.i.i725.prol, !llvm.loop !39

.lr.ph.i.i.i725.prol.loopexit:                    ; preds = %.lr.ph.i.i.i725.prol, %.lr.ph.i.i.i725.preheader
  %.07.i.i.i726.unr = phi ptr [ %.07.i.i.i726.ph, %.lr.ph.i.i.i725.preheader ], [ %i.amu, %.lr.ph.i.i.i725.prol ]
  %.sroa.02.06.i.i.i727.unr = phi ptr [ %.sroa.02.06.i.i.i727.ph, %.lr.ph.i.i.i725.preheader ], [ %i.amt, %.lr.ph.i.i.i725.prol ]
  %i.amv = sub i64 %.sroa.02.06.i.i.i727.ph1489, %i.alz
  %i.amw = icmp ugt i64 %i.amv, -8
  br i1 %i.amw, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i729, label %.lr.ph.i.i.i725

.lr.ph.i.i.i725:                                  ; preds = %.lr.ph.i.i.i725.prol.loopexit, %.lr.ph.i.i.i725
  %.07.i.i.i726 = phi ptr [ %i.anu, %.lr.ph.i.i.i725 ], [ %.07.i.i.i726.unr, %.lr.ph.i.i.i725.prol.loopexit ] ; 9 uses
  %.sroa.02.06.i.i.i727 = phi ptr [ %i.ant, %.lr.ph.i.i.i725 ], [ %.sroa.02.06.i.i.i727.unr, %.lr.ph.i.i.i725.prol.loopexit ] ; 9 uses
  %i.amx = load i8, ptr %.sroa.02.06.i.i.i727, align 1
  store i8 %i.amx, ptr %.07.i.i.i726, align 1
  %i.amy = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i727, i64 1
  %i.amz = getelementptr inbounds nuw i8, ptr %.07.i.i.i726, i64 1
  %i.ana = load i8, ptr %i.amy, align 1
  store i8 %i.ana, ptr %i.amz, align 1
  %i.anb = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i727, i64 2
  %i.anc = getelementptr inbounds nuw i8, ptr %.07.i.i.i726, i64 2
  %i.and = load i8, ptr %i.anb, align 1
  store i8 %i.and, ptr %i.anc, align 1
  %i.ane = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i727, i64 3
  %i.anf = getelementptr inbounds nuw i8, ptr %.07.i.i.i726, i64 3
  %i.ang = load i8, ptr %i.ane, align 1
  store i8 %i.ang, ptr %i.anf, align 1
  %i.anh = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i727, i64 4
  %i.ani = getelementptr inbounds nuw i8, ptr %.07.i.i.i726, i64 4
  %i.anj = load i8, ptr %i.anh, align 1
  store i8 %i.anj, ptr %i.ani, align 1
  %i.ank = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i727, i64 5
  %i.anl = getelementptr inbounds nuw i8, ptr %.07.i.i.i726, i64 5
  %i.anm = load i8, ptr %i.ank, align 1
  store i8 %i.anm, ptr %i.anl, align 1
  %i.ann = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i727, i64 6
  %i.ano = getelementptr inbounds nuw i8, ptr %.07.i.i.i726, i64 6
  %i.anp = load i8, ptr %i.ann, align 1
  store i8 %i.anp, ptr %i.ano, align 1
  %i.anq = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i727, i64 7
  %i.anr = getelementptr inbounds nuw i8, ptr %.07.i.i.i726, i64 7
  %i.ans = load i8, ptr %i.anq, align 1
  store i8 %i.ans, ptr %i.anr, align 1
  %i.ant = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i727, i64 8 ; 2 uses
  %i.anu = getelementptr inbounds nuw i8, ptr %.07.i.i.i726, i64 8
  %.not.i.i.i728.7 = icmp eq ptr %i.ant, %.sroa.0.0.lcssa.i719
  br i1 %.not.i.i.i728.7, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i729, label %.lr.ph.i.i.i725, !llvm.loop !40

_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i729: ; preds = %.lr.ph.i.i.i725.prol.loopexit, %.lr.ph.i.i.i725, %vec.epilog.middle.block1443, %middle.block1426
  %.pre16.i.i730 = load i64, ptr %i.l, align 8
  %.pre17.i.i731 = load ptr, ptr %6, align 8
  br label %bb.er

bb.er:                                            ; preds = %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i729, %._crit_edge.i.i723
  %i.anv = phi ptr [ %.pre17.i.i731, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i729 ], [ %i.amg, %._crit_edge.i.i723 ]
  %i.anw = phi i64 [ %.pre16.i.i730, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i729 ], [ %i.amf, %._crit_edge.i.i723 ] ; 2 uses
  store i64 %i.anw, ptr %i.at, align 8
  %i.anx = getelementptr inbounds nuw i8, ptr %i.anv, i64 %i.anw
  store i8 0, ptr %i.anx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #22
  %.sroa.018.0.copyload = load ptr, ptr %i.af, align 8 ; 7 uses
  %i.any = getelementptr inbounds i8, ptr %.sroa.018.0.copyload, i64 -1 ; 6 uses
  %i.anz = icmp eq ptr %.sroa.0.0.lcssa.i719, %.sroa.018.0.copyload
  %i.aoa = icmp eq ptr %.sroa.0.0.lcssa.i719, %i.any
  %.0.i6.i735 = select i1 %i.anz, i1 true, i1 %i.aoa
  br i1 %.0.i6.i735, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit742, label %.lr.ph.i736

.lr.ph.i736:                                      ; preds = %bb.er, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i738
  %.sroa.0.07.i737 = phi ptr [ %i.aoc, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i738 ], [ %.sroa.0.0.lcssa.i719, %bb.er ] ; 3 uses
  %i.aob = load i8, ptr %.sroa.0.07.i737, align 1
  switch i8 %i.aob, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit742 [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i738
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i738
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i738:            ; preds = %.lr.ph.i736, %.lr.ph.i736
  %i.aoc = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i737, i64 1 ; 4 uses
  %i.aod = icmp eq ptr %i.aoc, %.sroa.018.0.copyload
  %i.aoe = icmp eq ptr %i.aoc, %i.any
  %.0.i.i739 = select i1 %i.aod, i1 true, i1 %i.aoe
  br i1 %.0.i.i739, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit742, label %.lr.ph.i736, !llvm.loop !11

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit742: ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i738, %.lr.ph.i736, %bb.er
  %.sroa.0.0.lcssa.i741 = phi ptr [ %.sroa.0.0.lcssa.i719, %bb.er ], [ %i.aoc, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i738 ], [ %.sroa.0.07.i737, %.lr.ph.i736 ] ; 5 uses
  store ptr %.sroa.0.0.lcssa.i741, ptr %i.ae, align 8
  %i.aof = load i64, ptr %i.at, align 8           ; 6 uses
  %cond1074 = icmp eq i64 %i.aof, 10
  %.pre1106 = load ptr, ptr %6, align 8, !noalias !41 ; 6 uses
  br i1 %cond1074, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit745, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit748.thread1071

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit745: ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit742
  %i.aog = load i64, ptr %.pre1106, align 1
  %i.aoh = xor i64 %i.aog, 7018422918076069235
  %i.aoi = getelementptr i8, ptr %.pre1106, i64 8
  %i.aoj = load i16, ptr %i.aoi, align 1
  %i.aok = zext i16 %i.aoj to i64
  %i.aol = xor i64 %i.aok, 25955
  %i.aom = or i64 %i.aoh, %i.aol
  %i.aon = icmp ne i64 %i.aom, 0
  %i.aoo = zext i1 %i.aon to i32
  %i.aop = icmp eq i32 %i.aoo, 0
  br i1 %i.aop, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit745.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit748

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit748: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit745
  %i.aoq = load i64, ptr %.pre1106, align 1
  %i.aor = xor i64 %i.aoq, 7598247072170599283
  %i.aos = getelementptr i8, ptr %.pre1106, i64 8
  %i.aot = load i16, ptr %i.aos, align 1
  %i.aou = zext i16 %i.aot to i64
  %i.aov = xor i64 %i.aou, 26478
  %i.aow = or i64 %i.aor, %i.aov
  %i.aox = icmp ne i64 %i.aow, 0
  %i.aoy = zext i1 %i.aox to i32
  %i.aoz = icmp eq i32 %i.aoy, 0
  br i1 %i.aoz, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit745.thread, label %._crit_edge.i.i.i773.thread

._crit_edge.i.i.i773.thread:                      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit748
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !44)
  store ptr %i.au, ptr %7, align 8, !alias.scope !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #22, !noalias !44
  store i64 %i.aof, ptr %i.j, align 8, !noalias !44
  br label %bb.fa

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit745.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit748, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit745
  %i.apa = load ptr, ptr %i.ap, align 8           ; 2 uses
  %.not.i749 = icmp eq ptr %i.apa, null
  br i1 %.not.i749, label %_ZN6Assimp18ObjFileMtlImporter23getFloatIfMaterialValidEMNS_7ObjFile8MaterialENS_5MaybeIfEE.exit772, label %bb.es

bb.es:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit745.thread
  %i.apb = getelementptr inbounds nuw i8, ptr %i.apa, i64 64
  %i.apc = load ptr, ptr %i.apb, align 8          ; 3 uses
  %.not2.i750 = icmp eq ptr %i.apc, null
  br i1 %.not2.i750, label %_ZN6Assimp18ObjFileMtlImporter23getFloatIfMaterialValidEMNS_7ObjFile8MaterialENS_5MaybeIfEE.exit772, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.apd = getelementptr inbounds nuw i8, ptr %i.apc, i64 20756
  %i.ape = load ptr, ptr %i.aq, align 8           ; 3 uses
  %i.apf = icmp eq ptr %.sroa.0.0.lcssa.i741, %.sroa.018.0.copyload
  %i.apg = icmp eq ptr %.sroa.0.0.lcssa.i741, %i.any
  %.0.i6.i.i.i.i753 = select i1 %i.apf, i1 true, i1 %i.apg
  br i1 %.0.i6.i.i.i.i753, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i758.preheader, label %.lr.ph.i.i.i.i754

.lr.ph.i.i.i.i754:                                ; preds = %bb.et, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i756
  %.sroa.0.07.i.i.i.i755 = phi ptr [ %i.api, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i756 ], [ %.sroa.0.0.lcssa.i741, %bb.et ] ; 3 uses
  %i.aph = load i8, ptr %.sroa.0.07.i.i.i.i755, align 1
  switch i8 %i.aph, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i758.preheader [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i756
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i756
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i756:      ; preds = %.lr.ph.i.i.i.i754, %.lr.ph.i.i.i.i754
  %i.api = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i755, i64 1 ; 4 uses
  %i.apj = icmp eq ptr %i.api, %.sroa.018.0.copyload
  %i.apk = icmp eq ptr %i.api, %i.any
  %.0.i.i.i.i.i757 = select i1 %i.apj, i1 true, i1 %i.apk
  br i1 %.0.i.i.i.i.i757, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i758.preheader, label %.lr.ph.i.i.i.i754, !llvm.loop !11

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i758.preheader: ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i756, %.lr.ph.i.i.i.i754, %bb.et
  %.sroa.0.0.i.i.i760.ph = phi ptr [ %.sroa.0.0.lcssa.i741, %bb.et ], [ %i.api, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i756 ], [ %.sroa.0.07.i.i.i.i755, %.lr.ph.i.i.i.i754 ]
  br label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i758

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i758: ; preds = %bb.ev, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i758.preheader
  %.sroa.0.0.i.i.i760 = phi ptr [ %.sroa.0.0.i.i.i760.ph, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i758.preheader ], [ %i.apx, %bb.ev ] ; 13 uses
  %.0.i.i.i761 = phi i64 [ 0, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i758.preheader ], [ %i.apw, %bb.ev ] ; 11 uses
  %i.apl = load i8, ptr %.sroa.0.0.i.i.i760, align 1 ; 2 uses
  switch i8 %i.apl, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i769 [
    i8 32, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i762
    i8 9, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i762
    i8 13, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i762
    i8 10, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i762
    i8 0, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i762
    i8 12, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i762
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i769: ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i758
  %i.apm = icmp eq ptr %.sroa.0.0.i.i.i760, %.sroa.018.0.copyload
  %i.apn = icmp eq ptr %.sroa.0.0.i.i.i760, %i.any
  %.0.i.i.i.i770 = select i1 %i.apm, i1 true, i1 %i.apn
  br i1 %.0.i.i.i.i770, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i762, label %bb.eu

bb.eu:                                            ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i769
  %i.apo = getelementptr inbounds nuw i8, ptr %i.ape, i64 %.0.i.i.i761
  store i8 %i.apl, ptr %i.apo, align 1
  %i.app = icmp eq i64 %.0.i.i.i761, 2046
  br i1 %i.app, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i762, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i758.1

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i758.1: ; preds = %bb.eu
  %i.apq = or disjoint i64 %.0.i.i.i761, 1        ; 8 uses
  %i.apr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i760, i64 1 ; 10 uses
  %i.aps = load i8, ptr %i.apr, align 1           ; 2 uses
  switch i8 %i.aps, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i769.1 [
    i8 32, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i762
    i8 9, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i762
    i8 13, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i762
    i8 10, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i762
    i8 0, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i762
    i8 12, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i762
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i769.1: ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i758.1
  %i.apt = icmp eq ptr %i.apr, %.sroa.018.0.copyload
  %i.apu = icmp eq ptr %i.apr, %i.any
  %.0.i.i.i.i770.1 = select i1 %i.apt, i1 true, i1 %i.apu
  br i1 %.0.i.i.i.i770.1, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i762, label %bb.ev

bb.ev:                                            ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i769.1
  %i.apv = getelementptr inbounds nuw i8, ptr %i.ape, i64 %i.apq
  store i8 %i.aps, ptr %i.apv, align 1
  %i.apw = add nuw nsw i64 %.0.i.i.i761, 2
  %i.apx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i760, i64 2
  br label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i758, !llvm.loop !12

_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i762: ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i769.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i758.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i758.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i758.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i758.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i758.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i758.1, %bb.eu, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i769, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i758, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i758, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i758, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i758, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i758, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i758
  %.sroa.0.0.i.i.i760.lcssa = phi ptr [ %.sroa.0.0.i.i.i760, %bb.eu ], [ %.sroa.0.0.i.i.i760, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i769 ], [ %.sroa.0.0.i.i.i760, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i758 ], [ %.sroa.0.0.i.i.i760, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i758 ], [ %.sroa.0.0.i.i.i760, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i758 ], [ %.sroa.0.0.i.i.i760, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i758 ], [ %.sroa.0.0.i.i.i760, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i758 ], [ %.sroa.0.0.i.i.i760, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i758 ], [ %i.apr, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i758.1 ], [ %i.apr, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i758.1 ], [ %i.apr, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i758.1 ], [ %i.apr, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i758.1 ], [ %i.apr, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i758.1 ], [ %i.apr, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i758.1 ], [ %i.apr, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i769.1 ]
  %.1.i.i.i763 = phi i64 [ 2047, %bb.eu ], [ %.0.i.i.i761, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i769 ], [ %.0.i.i.i761, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i758 ], [ %.0.i.i.i761, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i758 ], [ %.0.i.i.i761, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i758 ], [ %.0.i.i.i761, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i758 ], [ %.0.i.i.i761, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i758 ], [ %.0.i.i.i761, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i758 ], [ %i.apq, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i758.1 ], [ %i.apq, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i758.1 ], [ %i.apq, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i758.1 ], [ %i.apq, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i758.1 ], [ %i.apq, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i758.1 ], [ %i.apq, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i758.1 ], [ %i.apq, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i769.1 ]
  %i.apy = getelementptr inbounds nuw i8, ptr %i.ape, i64 %.1.i.i.i763
  store i8 0, ptr %i.apy, align 1
  store ptr %.sroa.0.0.i.i.i760.lcssa, ptr %i.ae, align 8
  %i.apz = load ptr, ptr %i.aq, align 8           ; 2 uses
  %char0.i.i764 = load i8, ptr %i.apz, align 1
  %.not.i.i765 = icmp eq i8 %char0.i.i764, 0
  br i1 %.not.i.i765, label %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERNS_5MaybeIfEE.exit.i766, label %bb.ew

bb.ew:                                            ; preds = %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i762
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #22
  store float 0.000000e+00, ptr %i.k, align 4
  %i.aqa = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %i.apz, ptr noundef nonnull align 4 dereferenceable(4) %i.k, i1 noundef zeroext true)
          to label %.noexc771 unwind label %bb.ey ; 0 uses

.noexc771:                                        ; preds = %bb.ew
  %i.aqb = load float, ptr %i.k, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #22
  br label %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERNS_5MaybeIfEE.exit.i766

_ZN6Assimp18ObjFileMtlImporter13getFloatValueERNS_5MaybeIfEE.exit.i766: ; preds = %.noexc771, %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i762
  %.sink8.i.i767 = phi float [ %i.aqb, %.noexc771 ], [ 0.000000e+00, %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i762 ]
  %.sink.i.i768 = phi i8 [ 1, %.noexc771 ], [ 0, %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i762 ]
  store float %.sink8.i.i767, ptr %i.apd, align 4
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.apc, i64 20760
  store i8 %.sink.i.i768, ptr %i.aqc, align 4
  br label %_ZN6Assimp18ObjFileMtlImporter23getFloatIfMaterialValidEMNS_7ObjFile8MaterialENS_5MaybeIfEE.exit772

bb.ex:                                            ; preds = %.noexc.i732
  %i.aqd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit901

bb.ey:                                            ; preds = %bb.fx, %bb.fo, %bb.fh, %bb.ew, %bb.ga, %bb.fz
  %i.aqe = landingpad { ptr, i32 }
          cleanup
  br label %bb.gd

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit748.thread1071: ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit742
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !41)
  store ptr %i.au, ptr %7, align 8, !alias.scope !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #22, !noalias !41
  store i64 %i.aof, ptr %i.j, align 8, !noalias !41
  %i.aqf = icmp ugt i64 %i.aof, 15
  br i1 %i.aqf, label %.noexc.i.i778, label %._crit_edge.i.i.i773

.noexc.i.i778:                                    ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit748.thread1071
  %i.aqg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef 0)
          to label %.noexc779 unwind label %bb.fi ; 2 uses

.noexc779:                                        ; preds = %.noexc.i.i778
  store ptr %i.aqg, ptr %7, align 8, !alias.scope !41
  %i.aqh = load i64, ptr %i.j, align 8, !noalias !41
  store i64 %i.aqh, ptr %i.au, align 8, !alias.scope !41
  br label %._crit_edge.i.i.i773

._crit_edge.i.i.i773:                             ; preds = %.noexc779, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit748.thread1071
  %i.aqi = phi ptr [ %i.aqg, %.noexc779 ], [ %i.au, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit748.thread1071 ] ; 2 uses
  switch i64 %i.aof, label %bb.fa [
    i64 1, label %bb.ez
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i774
  ]

bb.ez:                                            ; preds = %._crit_edge.i.i.i773
  %i.aqj = load i8, ptr %.pre1106, align 1
  store i8 %i.aqj, ptr %i.aqi, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i774

bb.fa:                                            ; preds = %._crit_edge.i.i.i773.thread, %._crit_edge.i.i.i773
  %i.aqk = phi ptr [ %i.au, %._crit_edge.i.i.i773.thread ], [ %i.aqi, %._crit_edge.i.i.i773 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aqk, ptr align 1 %.pre1106, i64 %i.aof, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i774

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i774: ; preds = %bb.fa, %bb.ez, %._crit_edge.i.i.i773
  %i.aql = load i64, ptr %i.j, align 8, !noalias !41 ; 2 uses
  store i64 %i.aql, ptr %i.av, align 8, !alias.scope !41
  %i.aqm = load ptr, ptr %7, align 8, !alias.scope !41
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.aqm, i64 %i.aql
  store i8 0, ptr %i.aqn, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #22, !noalias !41
  %i.aqo = load i64, ptr %i.at, align 8, !noalias !41
  %.not.i775 = icmp eq i64 %i.aqo, 0
  br i1 %.not.i775, label %_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit780, label %.lr.ph.i776

.lr.ph.i776:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i774, %.lr.ph.i776
  %.06.i777 = phi i64 [ %i.aqv, %.lr.ph.i776 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i774 ] ; 2 uses
  %i.aqp = load ptr, ptr %7, align 8, !alias.scope !41
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.aqp, i64 %.06.i777 ; 2 uses
  %i.aqr = load i8, ptr %i.aqq, align 1
  %i.aqs = zext i8 %i.aqr to i32
  %i.aqt = call i32 @tolower(i32 noundef %i.aqs) #26
  %i.aqu = trunc i32 %i.aqt to i8
  store i8 %i.aqu, ptr %i.aqq, align 1
  %i.aqv = add nuw i64 %.06.i777, 1               ; 2 uses
  %i.aqw = load i64, ptr %i.at, align 8, !noalias !41
  %i.aqx = icmp ult i64 %i.aqv, %i.aqw
  br i1 %i.aqx, label %.lr.ph.i776, label %_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit780, !llvm.loop !36

_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit780: ; preds = %.lr.ph.i776, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i774
  %i.aqy = load i64, ptr %i.av, align 8           ; 2 uses
  %i.aqz = icmp eq i64 %i.aqy, 12
  %.pre1107 = load ptr, ptr %7, align 8           ; 4 uses
  br i1 %i.aqz, label %bb.fb, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit783

bb.fb:                                            ; preds = %_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit780
  %i.ara = load i64, ptr %.pre1107, align 1
  %i.arb = xor i64 %i.ara, 8241988044499284083
  %i.arc = getelementptr i8, ptr %.pre1107, i64 8
  %i.ard = load i32, ptr %i.arc, align 1
  %i.are = zext i32 %i.ard to i64
  %i.arf = xor i64 %i.are, 1953393012
  %i.arg = or i64 %i.arb, %i.arf
  %i.arh = icmp ne i64 %i.arg, 0
  %i.ari = zext i1 %i.arh to i32
  %i.arj = icmp eq i32 %i.ari, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit783

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit783: ; preds = %_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit780, %bb.fb
  %i.ark = phi i1 [ false, %_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit780 ], [ %i.arj, %bb.fb ]
  %i.arl = icmp eq ptr %.pre1107, %i.au
  br i1 %i.arl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i785, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i784

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i785: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit783
  %i.arm = icmp ult i64 %i.aqy, 16
  call void @llvm.assume(i1 %i.arm)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit786

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i784: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit783
  %i.arn = load i64, ptr %i.au, align 8
  %i.aro = add i64 %i.arn, 1
  call void @_ZdlPvm(ptr noundef %.pre1107, i64 noundef %i.aro) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit786

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit786: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i785, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i784
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br i1 %i.ark, label %bb.fc, label %bb.fj

bb.fc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit786
  %i.arp = load ptr, ptr %i.ap, align 8           ; 2 uses
  %.not.i787 = icmp eq ptr %i.arp, null
  br i1 %.not.i787, label %_ZN6Assimp18ObjFileMtlImporter23getFloatIfMaterialValidEMNS_7ObjFile8MaterialENS_5MaybeIfEE.exit772, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.arq = getelementptr inbounds nuw i8, ptr %i.arp, i64 64
  %i.arr = load ptr, ptr %i.arq, align 8          ; 3 uses
  %.not2.i788 = icmp eq ptr %i.arr, null
  br i1 %.not2.i788, label %_ZN6Assimp18ObjFileMtlImporter23getFloatIfMaterialValidEMNS_7ObjFile8MaterialENS_5MaybeIfEE.exit772, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.ars = getelementptr inbounds nuw i8, ptr %i.arr, i64 20764
  %.sroa.01.0.copyload.i.i789 = load ptr, ptr %i.ae, align 8 ; 4 uses
  %.sroa.0.0.copyload.i.i790 = load ptr, ptr %i.af, align 8 ; 5 uses
  %i.art = load ptr, ptr %i.aq, align 8           ; 3 uses
  %i.aru = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i790, i64 -1 ; 4 uses
  %i.arv = icmp eq ptr %.sroa.01.0.copyload.i.i789, %.sroa.0.0.copyload.i.i790
  %i.arw = icmp eq ptr %.sroa.01.0.copyload.i.i789, %i.aru
  %.0.i6.i.i.i.i791 = select i1 %i.arv, i1 true, i1 %i.arw
  br i1 %.0.i6.i.i.i.i791, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i796.preheader, label %.lr.ph.i.i.i.i792

.lr.ph.i.i.i.i792:                                ; preds = %bb.fe, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i794
  %.sroa.0.07.i.i.i.i793 = phi ptr [ %i.ary, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i794 ], [ %.sroa.01.0.copyload.i.i789, %bb.fe ] ; 3 uses
  %i.arx = load i8, ptr %.sroa.0.07.i.i.i.i793, align 1
  switch i8 %i.arx, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i796.preheader [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i794
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i794
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i794:      ; preds = %.lr.ph.i.i.i.i792, %.lr.ph.i.i.i.i792
  %i.ary = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i793, i64 1 ; 4 uses
  %i.arz = icmp eq ptr %i.ary, %.sroa.0.0.copyload.i.i790
  %i.asa = icmp eq ptr %i.ary, %i.aru
  %.0.i.i.i.i.i795 = select i1 %i.arz, i1 true, i1 %i.asa
  br i1 %.0.i.i.i.i.i795, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i796.preheader, label %.lr.ph.i.i.i.i792, !llvm.loop !11

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i796.preheader: ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i794, %.lr.ph.i.i.i.i792, %bb.fe
  %.sroa.0.0.i.i.i798.ph = phi ptr [ %.sroa.01.0.copyload.i.i789, %bb.fe ], [ %i.ary, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i794 ], [ %.sroa.0.07.i.i.i.i793, %.lr.ph.i.i.i.i792 ]
  br label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i796

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i796: ; preds = %bb.fg, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i796.preheader
  %.sroa.0.0.i.i.i798 = phi ptr [ %.sroa.0.0.i.i.i798.ph, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i796.preheader ], [ %i.asn, %bb.fg ] ; 13 uses
  %.0.i.i.i799 = phi i64 [ 0, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i796.preheader ], [ %i.asm, %bb.fg ] ; 11 uses
  %i.asb = load i8, ptr %.sroa.0.0.i.i.i798, align 1 ; 2 uses
  switch i8 %i.asb, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i807 [
    i8 32, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i800
    i8 9, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i800
    i8 13, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i800
    i8 10, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i800
    i8 0, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i800
    i8 12, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i800
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i807: ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i796
  %i.asc = icmp eq ptr %.sroa.0.0.i.i.i798, %.sroa.0.0.copyload.i.i790
  %i.asd = icmp eq ptr %.sroa.0.0.i.i.i798, %i.aru
  %.0.i.i.i.i808 = select i1 %i.asc, i1 true, i1 %i.asd
  br i1 %.0.i.i.i.i808, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i800, label %bb.ff

bb.ff:                                            ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i807
  %i.ase = getelementptr inbounds nuw i8, ptr %i.art, i64 %.0.i.i.i799
  store i8 %i.asb, ptr %i.ase, align 1
  %i.asf = icmp eq i64 %.0.i.i.i799, 2046
  br i1 %i.asf, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i800, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i796.1

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i796.1: ; preds = %bb.ff
  %i.asg = or disjoint i64 %.0.i.i.i799, 1        ; 8 uses
  %i.ash = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i798, i64 1 ; 10 uses
  %i.asi = load i8, ptr %i.ash, align 1           ; 2 uses
  switch i8 %i.asi, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i807.1 [
    i8 32, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i800
    i8 9, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i800
    i8 13, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i800
    i8 10, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i800
    i8 0, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i800
    i8 12, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i800
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i807.1: ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i796.1
  %i.asj = icmp eq ptr %i.ash, %.sroa.0.0.copyload.i.i790
  %i.ask = icmp eq ptr %i.ash, %i.aru
  %.0.i.i.i.i808.1 = select i1 %i.asj, i1 true, i1 %i.ask
  br i1 %.0.i.i.i.i808.1, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i800, label %bb.fg

bb.fg:                                            ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i807.1
  %i.asl = getelementptr inbounds nuw i8, ptr %i.art, i64 %i.asg
  store i8 %i.asi, ptr %i.asl, align 1
  %i.asm = add nuw nsw i64 %.0.i.i.i799, 2
  %i.asn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i798, i64 2
  br label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i796, !llvm.loop !12

_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i800: ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i807.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i796.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i796.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i796.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i796.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i796.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i796.1, %bb.ff, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i807, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i796, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i796, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i796, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i796, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i796, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i796
  %.sroa.0.0.i.i.i798.lcssa = phi ptr [ %.sroa.0.0.i.i.i798, %bb.ff ], [ %.sroa.0.0.i.i.i798, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i807 ], [ %.sroa.0.0.i.i.i798, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i796 ], [ %.sroa.0.0.i.i.i798, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i796 ], [ %.sroa.0.0.i.i.i798, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i796 ], [ %.sroa.0.0.i.i.i798, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i796 ], [ %.sroa.0.0.i.i.i798, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i796 ], [ %.sroa.0.0.i.i.i798, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i796 ], [ %i.ash, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i796.1 ], [ %i.ash, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i796.1 ], [ %i.ash, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i796.1 ], [ %i.ash, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i796.1 ], [ %i.ash, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i796.1 ], [ %i.ash, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i796.1 ], [ %i.ash, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i807.1 ]
  %.1.i.i.i801 = phi i64 [ 2047, %bb.ff ], [ %.0.i.i.i799, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i807 ], [ %.0.i.i.i799, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i796 ], [ %.0.i.i.i799, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i796 ], [ %.0.i.i.i799, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i796 ], [ %.0.i.i.i799, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i796 ], [ %.0.i.i.i799, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i796 ], [ %.0.i.i.i799, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i796 ], [ %i.asg, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i796.1 ], [ %i.asg, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i796.1 ], [ %i.asg, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i796.1 ], [ %i.asg, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i796.1 ], [ %i.asg, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i796.1 ], [ %i.asg, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i796.1 ], [ %i.asg, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i807.1 ]
  %i.aso = getelementptr inbounds nuw i8, ptr %i.art, i64 %.1.i.i.i801
  store i8 0, ptr %i.aso, align 1
  store ptr %.sroa.0.0.i.i.i798.lcssa, ptr %i.ae, align 8
  %i.asp = load ptr, ptr %i.aq, align 8           ; 2 uses
  %char0.i.i802 = load i8, ptr %i.asp, align 1
  %.not.i.i803 = icmp eq i8 %char0.i.i802, 0
  br i1 %.not.i.i803, label %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERNS_5MaybeIfEE.exit.i804, label %bb.fh

bb.fh:                                            ; preds = %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i800
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #22
  store float 0.000000e+00, ptr %i.i, align 4
  %i.asq = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %i.asp, ptr noundef nonnull align 4 dereferenceable(4) %i.i, i1 noundef zeroext true)
          to label %.noexc809 unwind label %bb.ey ; 0 uses

.noexc809:                                        ; preds = %bb.fh
  %i.asr = load float, ptr %i.i, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #22
  br label %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERNS_5MaybeIfEE.exit.i804

_ZN6Assimp18ObjFileMtlImporter13getFloatValueERNS_5MaybeIfEE.exit.i804: ; preds = %.noexc809, %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i800
  %.sink8.i.i805 = phi float [ %i.asr, %.noexc809 ], [ 0.000000e+00, %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i800 ]
  %.sink.i.i806 = phi i8 [ 1, %.noexc809 ], [ 0, %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i800 ]
  store float %.sink8.i.i805, ptr %i.ars, align 4
  %i.ass = getelementptr inbounds nuw i8, ptr %i.arr, i64 20768
  store i8 %.sink.i.i806, ptr %i.ass, align 4
  br label %_ZN6Assimp18ObjFileMtlImporter23getFloatIfMaterialValidEMNS_7ObjFile8MaterialENS_5MaybeIfEE.exit772

bb.fi:                                            ; preds = %.noexc.i.i778
  %i.ast = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.gd

bb.fj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit786
  %i.asu = load i64, ptr %i.at, align 8           ; 6 uses
  %i.asv = icmp eq i64 %i.asu, 5
  %.pre1108 = load ptr, ptr %6, align 8, !noalias !46 ; 4 uses
  br i1 %i.asv, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit813, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit813.thread1072

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit813: ; preds = %bb.fj
  %i.asw = load i32, ptr %.pre1108, align 1
  %i.asx = xor i32 %i.asw, 1701144691
  %i.asy = getelementptr i8, ptr %.pre1108, i64 4
  %i.asz = load i8, ptr %i.asy, align 1
  %i.ata = zext i8 %i.asz to i32
  %i.atb = xor i32 %i.ata, 110
  %i.atc = or i32 %i.asx, %i.atb
  %i.atd = icmp ne i32 %i.atc, 0
  %i.ate = zext i1 %i.atd to i32
  %i.atf = icmp eq i32 %i.ate, 0
  br i1 %i.atf, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit813.thread, label %._crit_edge.i.i.i838.thread

._crit_edge.i.i.i838.thread:                      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit813
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !49)
  store ptr %i.aw, ptr %8, align 8, !alias.scope !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #22, !noalias !49
  store i64 %i.asu, ptr %i.g, align 8, !noalias !49
  br label %bb.fq

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit813.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit813
  %i.atg = load ptr, ptr %i.ap, align 8           ; 2 uses
  %.not.i814 = icmp eq ptr %i.atg, null
  br i1 %.not.i814, label %_ZN6Assimp18ObjFileMtlImporter23getFloatIfMaterialValidEMNS_7ObjFile8MaterialENS_5MaybeIfEE.exit772, label %bb.fk

bb.fk:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit813.thread
  %i.ath = getelementptr inbounds nuw i8, ptr %i.atg, i64 64
  %i.ati = load ptr, ptr %i.ath, align 8          ; 3 uses
  %.not2.i815 = icmp eq ptr %i.ati, null
  br i1 %.not2.i815, label %_ZN6Assimp18ObjFileMtlImporter23getFloatIfMaterialValidEMNS_7ObjFile8MaterialENS_5MaybeIfEE.exit772, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.atj = getelementptr inbounds nuw i8, ptr %i.ati, i64 20696
  %.sroa.01.0.copyload.i.i816 = load ptr, ptr %i.ae, align 8 ; 4 uses
  %.sroa.0.0.copyload.i.i817 = load ptr, ptr %i.af, align 8 ; 5 uses
  %i.atk = load ptr, ptr %i.aq, align 8           ; 3 uses
  %i.atl = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i817, i64 -1 ; 4 uses
  %i.atm = icmp eq ptr %.sroa.01.0.copyload.i.i816, %.sroa.0.0.copyload.i.i817
  %i.atn = icmp eq ptr %.sroa.01.0.copyload.i.i816, %i.atl
  %.0.i6.i.i.i.i818 = select i1 %i.atm, i1 true, i1 %i.atn
  br i1 %.0.i6.i.i.i.i818, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i823.preheader, label %.lr.ph.i.i.i.i819

.lr.ph.i.i.i.i819:                                ; preds = %bb.fl, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i821
  %.sroa.0.07.i.i.i.i820 = phi ptr [ %i.atp, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i821 ], [ %.sroa.01.0.copyload.i.i816, %bb.fl ] ; 3 uses
  %i.ato = load i8, ptr %.sroa.0.07.i.i.i.i820, align 1
  switch i8 %i.ato, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i823.preheader [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i821
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i821
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i821:      ; preds = %.lr.ph.i.i.i.i819, %.lr.ph.i.i.i.i819
  %i.atp = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i820, i64 1 ; 4 uses
  %i.atq = icmp eq ptr %i.atp, %.sroa.0.0.copyload.i.i817
  %i.atr = icmp eq ptr %i.atp, %i.atl
  %.0.i.i.i.i.i822 = select i1 %i.atq, i1 true, i1 %i.atr
  br i1 %.0.i.i.i.i.i822, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i823.preheader, label %.lr.ph.i.i.i.i819, !llvm.loop !11

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i823.preheader: ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i821, %.lr.ph.i.i.i.i819, %bb.fl
  %.sroa.0.0.i.i.i825.ph = phi ptr [ %.sroa.01.0.copyload.i.i816, %bb.fl ], [ %i.atp, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i821 ], [ %.sroa.0.07.i.i.i.i820, %.lr.ph.i.i.i.i819 ]
  br label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i823

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i823: ; preds = %bb.fn, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i823.preheader
  %.sroa.0.0.i.i.i825 = phi ptr [ %.sroa.0.0.i.i.i825.ph, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i823.preheader ], [ %i.aue, %bb.fn ] ; 13 uses
  %.0.i.i.i826 = phi i64 [ 0, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i823.preheader ], [ %i.aud, %bb.fn ] ; 11 uses
  %i.ats = load i8, ptr %.sroa.0.0.i.i.i825, align 1 ; 2 uses
  switch i8 %i.ats, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i834 [
    i8 32, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i827
    i8 9, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i827
    i8 13, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i827
    i8 10, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i827
    i8 0, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i827
    i8 12, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i827
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i834: ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i823
  %i.att = icmp eq ptr %.sroa.0.0.i.i.i825, %.sroa.0.0.copyload.i.i817
  %i.atu = icmp eq ptr %.sroa.0.0.i.i.i825, %i.atl
  %.0.i.i.i.i835 = select i1 %i.att, i1 true, i1 %i.atu
  br i1 %.0.i.i.i.i835, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i827, label %bb.fm

bb.fm:                                            ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i834
  %i.atv = getelementptr inbounds nuw i8, ptr %i.atk, i64 %.0.i.i.i826
  store i8 %i.ats, ptr %i.atv, align 1
  %i.atw = icmp eq i64 %.0.i.i.i826, 2046
  br i1 %i.atw, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i827, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i823.1

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i823.1: ; preds = %bb.fm
  %i.atx = or disjoint i64 %.0.i.i.i826, 1        ; 8 uses
  %i.aty = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i825, i64 1 ; 10 uses
  %i.atz = load i8, ptr %i.aty, align 1           ; 2 uses
  switch i8 %i.atz, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i834.1 [
    i8 32, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i827
    i8 9, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i827
    i8 13, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i827
    i8 10, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i827
    i8 0, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i827
    i8 12, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i827
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i834.1: ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i823.1
  %i.aua = icmp eq ptr %i.aty, %.sroa.0.0.copyload.i.i817
  %i.aub = icmp eq ptr %i.aty, %i.atl
  %.0.i.i.i.i835.1 = select i1 %i.aua, i1 true, i1 %i.aub
  br i1 %.0.i.i.i.i835.1, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i827, label %bb.fn

bb.fn:                                            ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i834.1
  %i.auc = getelementptr inbounds nuw i8, ptr %i.atk, i64 %i.atx
  store i8 %i.atz, ptr %i.auc, align 1
  %i.aud = add nuw nsw i64 %.0.i.i.i826, 2
  %i.aue = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i825, i64 2
  br label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i823, !llvm.loop !12

_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i827: ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i834.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i823.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i823.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i823.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i823.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i823.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i823.1, %bb.fm, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i834, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i823, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i823, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i823, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i823, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i823, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i823
  %.sroa.0.0.i.i.i825.lcssa = phi ptr [ %.sroa.0.0.i.i.i825, %bb.fm ], [ %.sroa.0.0.i.i.i825, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i834 ], [ %.sroa.0.0.i.i.i825, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i823 ], [ %.sroa.0.0.i.i.i825, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i823 ], [ %.sroa.0.0.i.i.i825, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i823 ], [ %.sroa.0.0.i.i.i825, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i823 ], [ %.sroa.0.0.i.i.i825, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i823 ], [ %.sroa.0.0.i.i.i825, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i823 ], [ %i.aty, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i823.1 ], [ %i.aty, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i823.1 ], [ %i.aty, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i823.1 ], [ %i.aty, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i823.1 ], [ %i.aty, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i823.1 ], [ %i.aty, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i823.1 ], [ %i.aty, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i834.1 ]
  %.1.i.i.i828 = phi i64 [ 2047, %bb.fm ], [ %.0.i.i.i826, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i834 ], [ %.0.i.i.i826, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i823 ], [ %.0.i.i.i826, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i823 ], [ %.0.i.i.i826, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i823 ], [ %.0.i.i.i826, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i823 ], [ %.0.i.i.i826, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i823 ], [ %.0.i.i.i826, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i823 ], [ %i.atx, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i823.1 ], [ %i.atx, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i823.1 ], [ %i.atx, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i823.1 ], [ %i.atx, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i823.1 ], [ %i.atx, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i823.1 ], [ %i.atx, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i823.1 ], [ %i.atx, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i834.1 ]
  %i.auf = getelementptr inbounds nuw i8, ptr %i.atk, i64 %.1.i.i.i828
  store i8 0, ptr %i.auf, align 1
  store ptr %.sroa.0.0.i.i.i825.lcssa, ptr %i.ae, align 8
  %i.aug = load ptr, ptr %i.aq, align 8           ; 2 uses
  %char0.i.i829 = load i8, ptr %i.aug, align 1
  %.not.i.i830 = icmp eq i8 %char0.i.i829, 0
  br i1 %.not.i.i830, label %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERNS_5MaybeIfEE.exit.i831, label %bb.fo

bb.fo:                                            ; preds = %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i827
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #22
  store float 0.000000e+00, ptr %i.h, align 4
  %i.auh = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %i.aug, ptr noundef nonnull align 4 dereferenceable(4) %i.h, i1 noundef zeroext true)
          to label %.noexc836 unwind label %bb.ey ; 0 uses

.noexc836:                                        ; preds = %bb.fo
  %i.aui = load float, ptr %i.h, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #22
  br label %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERNS_5MaybeIfEE.exit.i831

_ZN6Assimp18ObjFileMtlImporter13getFloatValueERNS_5MaybeIfEE.exit.i831: ; preds = %.noexc836, %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i827
  %.sink8.i.i832 = phi float [ %i.aui, %.noexc836 ], [ 0.000000e+00, %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i827 ]
  %.sink.i.i833 = phi i8 [ 1, %.noexc836 ], [ 0, %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i827 ]
  store float %.sink8.i.i832, ptr %i.atj, align 4
  %i.auj = getelementptr inbounds nuw i8, ptr %i.ati, i64 20700
  store i8 %.sink.i.i833, ptr %i.auj, align 4
  br label %_ZN6Assimp18ObjFileMtlImporter23getFloatIfMaterialValidEMNS_7ObjFile8MaterialENS_5MaybeIfEE.exit772

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit813.thread1072: ; preds = %bb.fj
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !46)
  store ptr %i.aw, ptr %8, align 8, !alias.scope !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #22, !noalias !46
  store i64 %i.asu, ptr %i.g, align 8, !noalias !46
  %i.auk = icmp ugt i64 %i.asu, 15
  br i1 %i.auk, label %.noexc.i.i843, label %._crit_edge.i.i.i838

.noexc.i.i843:                                    ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit813.thread1072
  %i.aul = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %.noexc844 unwind label %bb.fy ; 2 uses

.noexc844:                                        ; preds = %.noexc.i.i843
  store ptr %i.aul, ptr %8, align 8, !alias.scope !46
  %i.aum = load i64, ptr %i.g, align 8, !noalias !46
  store i64 %i.aum, ptr %i.aw, align 8, !alias.scope !46
  br label %._crit_edge.i.i.i838

._crit_edge.i.i.i838:                             ; preds = %.noexc844, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit813.thread1072
  %i.aun = phi ptr [ %i.aul, %.noexc844 ], [ %i.aw, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit813.thread1072 ] ; 2 uses
  switch i64 %i.asu, label %bb.fq [
    i64 1, label %bb.fp
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i839
  ]

bb.fp:                                            ; preds = %._crit_edge.i.i.i838
  %i.auo = load i8, ptr %.pre1108, align 1
  store i8 %i.auo, ptr %i.aun, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i839

bb.fq:                                            ; preds = %._crit_edge.i.i.i838.thread, %._crit_edge.i.i.i838
  %i.aup = phi ptr [ %i.aw, %._crit_edge.i.i.i838.thread ], [ %i.aun, %._crit_edge.i.i.i838 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aup, ptr align 1 %.pre1108, i64 %i.asu, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i839

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i839: ; preds = %bb.fq, %bb.fp, %._crit_edge.i.i.i838
  %i.auq = load i64, ptr %i.g, align 8, !noalias !46 ; 2 uses
  store i64 %i.auq, ptr %i.ax, align 8, !alias.scope !46
  %i.aur = load ptr, ptr %8, align 8, !alias.scope !46
  %i.aus = getelementptr inbounds nuw i8, ptr %i.aur, i64 %i.auq
  store i8 0, ptr %i.aus, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #22, !noalias !46
  %i.aut = load i64, ptr %i.at, align 8, !noalias !46
  %.not.i840 = icmp eq i64 %i.aut, 0
  br i1 %.not.i840, label %_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit845, label %.lr.ph.i841

.lr.ph.i841:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i839, %.lr.ph.i841
  %.06.i842 = phi i64 [ %i.ava, %.lr.ph.i841 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i839 ] ; 2 uses
  %i.auu = load ptr, ptr %8, align 8, !alias.scope !46
  %i.auv = getelementptr inbounds nuw i8, ptr %i.auu, i64 %.06.i842 ; 2 uses
  %i.auw = load i8, ptr %i.auv, align 1
  %i.aux = zext i8 %i.auw to i32
  %i.auy = call i32 @tolower(i32 noundef %i.aux) #26
  %i.auz = trunc i32 %i.auy to i8
  store i8 %i.auz, ptr %i.auv, align 1
  %i.ava = add nuw i64 %.06.i842, 1               ; 2 uses
  %i.avb = load i64, ptr %i.at, align 8, !noalias !46
  %i.avc = icmp ult i64 %i.ava, %i.avb
  br i1 %i.avc, label %.lr.ph.i841, label %_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit845, !llvm.loop !36

_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit845: ; preds = %.lr.ph.i841, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i839
  %i.avd = load i64, ptr %i.ax, align 8           ; 2 uses
  %i.ave = icmp eq i64 %i.avd, 9
  %.pre1109 = load ptr, ptr %8, align 8           ; 4 uses
  br i1 %i.ave, label %bb.fr, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit848

bb.fr:                                            ; preds = %_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit845
  %i.avf = load i64, ptr %.pre1109, align 1
  %i.avg = xor i64 %i.avf, 7956018234223061107
  %i.avh = getelementptr i8, ptr %.pre1109, i64 8
  %i.avi = load i8, ptr %i.avh, align 1
  %i.avj = zext i8 %i.avi to i64
  %i.avk = xor i64 %i.avj, 116
  %i.avl = or i64 %i.avg, %i.avk
  %i.avm = icmp ne i64 %i.avl, 0
  %i.avn = zext i1 %i.avm to i32
  %i.avo = icmp eq i32 %i.avn, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit848

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit848: ; preds = %_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit845, %bb.fr
  %i.avp = phi i1 [ false, %_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit845 ], [ %i.avo, %bb.fr ]
  %i.avq = icmp eq ptr %.pre1109, %i.aw
  br i1 %i.avq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i850, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i849

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i850: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit848
  %i.avr = icmp ult i64 %i.avd, 16
  call void @llvm.assume(i1 %i.avr)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit851

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i849: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit848
  %i.avs = load i64, ptr %i.aw, align 8
  %i.avt = add i64 %i.avs, 1
  call void @_ZdlPvm(ptr noundef %.pre1109, i64 noundef %i.avt) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit851

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit851: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i850, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i849
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br i1 %i.avp, label %bb.fs, label %bb.fz

bb.fs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit851
  %i.avu = load ptr, ptr %i.ap, align 8           ; 2 uses
  %.not.i852 = icmp eq ptr %i.avu, null
  br i1 %.not.i852, label %_ZN6Assimp18ObjFileMtlImporter23getFloatIfMaterialValidEMNS_7ObjFile8MaterialENS_5MaybeIfEE.exit772, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.avv = getelementptr inbounds nuw i8, ptr %i.avu, i64 64
  %i.avw = load ptr, ptr %i.avv, align 8          ; 3 uses
  %.not2.i853 = icmp eq ptr %i.avw, null
  br i1 %.not2.i853, label %_ZN6Assimp18ObjFileMtlImporter23getFloatIfMaterialValidEMNS_7ObjFile8MaterialENS_5MaybeIfEE.exit772, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.avx = getelementptr inbounds nuw i8, ptr %i.avw, i64 20704
  %.sroa.01.0.copyload.i.i854 = load ptr, ptr %i.ae, align 8 ; 4 uses
  %.sroa.0.0.copyload.i.i855 = load ptr, ptr %i.af, align 8 ; 5 uses
  %i.avy = load ptr, ptr %i.aq, align 8           ; 3 uses
  %i.avz = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i855, i64 -1 ; 4 uses
  %i.awa = icmp eq ptr %.sroa.01.0.copyload.i.i854, %.sroa.0.0.copyload.i.i855
  %i.awb = icmp eq ptr %.sroa.01.0.copyload.i.i854, %i.avz
  %.0.i6.i.i.i.i856 = select i1 %i.awa, i1 true, i1 %i.awb
  br i1 %.0.i6.i.i.i.i856, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861.preheader, label %.lr.ph.i.i.i.i857

.lr.ph.i.i.i.i857:                                ; preds = %bb.fu, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i859
  %.sroa.0.07.i.i.i.i858 = phi ptr [ %i.awd, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i859 ], [ %.sroa.01.0.copyload.i.i854, %bb.fu ] ; 3 uses
  %i.awc = load i8, ptr %.sroa.0.07.i.i.i.i858, align 1
  switch i8 %i.awc, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861.preheader [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i859
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i859
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i859:      ; preds = %.lr.ph.i.i.i.i857, %.lr.ph.i.i.i.i857
  %i.awd = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i858, i64 1 ; 4 uses
  %i.awe = icmp eq ptr %i.awd, %.sroa.0.0.copyload.i.i855
  %i.awf = icmp eq ptr %i.awd, %i.avz
  %.0.i.i.i.i.i860 = select i1 %i.awe, i1 true, i1 %i.awf
  br i1 %.0.i.i.i.i.i860, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861.preheader, label %.lr.ph.i.i.i.i857, !llvm.loop !11

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861.preheader: ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i859, %.lr.ph.i.i.i.i857, %bb.fu
  %.sroa.0.0.i.i.i863.ph = phi ptr [ %.sroa.01.0.copyload.i.i854, %bb.fu ], [ %i.awd, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i.i859 ], [ %.sroa.0.07.i.i.i.i858, %.lr.ph.i.i.i.i857 ]
  br label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861: ; preds = %bb.fw, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861.preheader
  %.sroa.0.0.i.i.i863 = phi ptr [ %.sroa.0.0.i.i.i863.ph, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861.preheader ], [ %i.aws, %bb.fw ] ; 13 uses
  %.0.i.i.i864 = phi i64 [ 0, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861.preheader ], [ %i.awr, %bb.fw ] ; 11 uses
  %i.awg = load i8, ptr %.sroa.0.0.i.i.i863, align 1 ; 2 uses
  switch i8 %i.awg, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i872 [
    i8 32, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i865
    i8 9, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i865
    i8 13, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i865
    i8 10, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i865
    i8 0, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i865
    i8 12, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i865
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i872: ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861
  %i.awh = icmp eq ptr %.sroa.0.0.i.i.i863, %.sroa.0.0.copyload.i.i855
  %i.awi = icmp eq ptr %.sroa.0.0.i.i.i863, %i.avz
  %.0.i.i.i.i873 = select i1 %i.awh, i1 true, i1 %i.awi
  br i1 %.0.i.i.i.i873, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i865, label %bb.fv

bb.fv:                                            ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i872
  %i.awj = getelementptr inbounds nuw i8, ptr %i.avy, i64 %.0.i.i.i864
  store i8 %i.awg, ptr %i.awj, align 1
  %i.awk = icmp eq i64 %.0.i.i.i864, 2046
  br i1 %i.awk, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i865, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861.1

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861.1: ; preds = %bb.fv
  %i.awl = or disjoint i64 %.0.i.i.i864, 1        ; 8 uses
  %i.awm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i863, i64 1 ; 10 uses
  %i.awn = load i8, ptr %i.awm, align 1           ; 2 uses
  switch i8 %i.awn, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i872.1 [
    i8 32, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i865
    i8 9, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i865
    i8 13, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i865
    i8 10, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i865
    i8 0, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i865
    i8 12, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i865
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i872.1: ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861.1
  %i.awo = icmp eq ptr %i.awm, %.sroa.0.0.copyload.i.i855
  %i.awp = icmp eq ptr %i.awm, %i.avz
  %.0.i.i.i.i873.1 = select i1 %i.awo, i1 true, i1 %i.awp
  br i1 %.0.i.i.i.i873.1, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i865, label %bb.fw

bb.fw:                                            ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i872.1
  %i.awq = getelementptr inbounds nuw i8, ptr %i.avy, i64 %i.awl
  store i8 %i.awn, ptr %i.awq, align 1
  %i.awr = add nuw nsw i64 %.0.i.i.i864, 2
  %i.aws = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i863, i64 2
  br label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861, !llvm.loop !12

_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i865: ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i872.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861.1, %bb.fv, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i872, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861
  %.sroa.0.0.i.i.i863.lcssa = phi ptr [ %.sroa.0.0.i.i.i863, %bb.fv ], [ %.sroa.0.0.i.i.i863, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i872 ], [ %.sroa.0.0.i.i.i863, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861 ], [ %.sroa.0.0.i.i.i863, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861 ], [ %.sroa.0.0.i.i.i863, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861 ], [ %.sroa.0.0.i.i.i863, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861 ], [ %.sroa.0.0.i.i.i863, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861 ], [ %.sroa.0.0.i.i.i863, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861 ], [ %i.awm, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861.1 ], [ %i.awm, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861.1 ], [ %i.awm, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861.1 ], [ %i.awm, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861.1 ], [ %i.awm, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861.1 ], [ %i.awm, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861.1 ], [ %i.awm, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i872.1 ]
  %.1.i.i.i866 = phi i64 [ 2047, %bb.fv ], [ %.0.i.i.i864, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i872 ], [ %.0.i.i.i864, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861 ], [ %.0.i.i.i864, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861 ], [ %.0.i.i.i864, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861 ], [ %.0.i.i.i864, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861 ], [ %.0.i.i.i864, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861 ], [ %.0.i.i.i864, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861 ], [ %i.awl, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861.1 ], [ %i.awl, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861.1 ], [ %i.awl, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861.1 ], [ %i.awl, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861.1 ], [ %i.awl, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861.1 ], [ %i.awl, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.i861.1 ], [ %i.awl, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.i872.1 ]
  %i.awt = getelementptr inbounds nuw i8, ptr %i.avy, i64 %.1.i.i.i866
  store i8 0, ptr %i.awt, align 1
  store ptr %.sroa.0.0.i.i.i863.lcssa, ptr %i.ae, align 8
  %i.awu = load ptr, ptr %i.aq, align 8           ; 2 uses
  %char0.i.i867 = load i8, ptr %i.awu, align 1
  %.not.i.i868 = icmp eq i8 %char0.i.i867, 0
  br i1 %.not.i.i868, label %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERNS_5MaybeIfEE.exit.i869, label %bb.fx

bb.fx:                                            ; preds = %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i865
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  store float 0.000000e+00, ptr %i.f, align 4
  %i.awv = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %i.awu, ptr noundef nonnull align 4 dereferenceable(4) %i.f, i1 noundef zeroext true)
          to label %.noexc874 unwind label %bb.ey ; 0 uses

.noexc874:                                        ; preds = %bb.fx
  %i.aww = load float, ptr %i.f, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  br label %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERNS_5MaybeIfEE.exit.i869

_ZN6Assimp18ObjFileMtlImporter13getFloatValueERNS_5MaybeIfEE.exit.i869: ; preds = %.noexc874, %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i865
  %.sink8.i.i870 = phi float [ %i.aww, %.noexc874 ], [ 0.000000e+00, %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i865 ]
  %.sink.i.i871 = phi i8 [ 1, %.noexc874 ], [ 0, %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i.i865 ]
  store float %.sink8.i.i870, ptr %i.avx, align 4
  %i.awx = getelementptr inbounds nuw i8, ptr %i.avw, i64 20708
  store i8 %.sink.i.i871, ptr %i.awx, align 4
  br label %_ZN6Assimp18ObjFileMtlImporter23getFloatIfMaterialValidEMNS_7ObjFile8MaterialENS_5MaybeIfEE.exit772

bb.fy:                                            ; preds = %.noexc.i.i843
  %i.awy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.gd

bb.fz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit851
  %i.awz = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.ga unwind label %bb.ey

bb.ga:                                            ; preds = %bb.fz
  invoke void @_ZN6Assimp6Logger4warnIJRA20_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.awz, ptr noundef nonnull align 1 dereferenceable(20) @.str.15, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZN6Assimp18ObjFileMtlImporter23getFloatIfMaterialValidEMNS_7ObjFile8MaterialENS_5MaybeIfEE.exit772 unwind label %bb.ey

_ZN6Assimp18ObjFileMtlImporter23getFloatIfMaterialValidEMNS_7ObjFile8MaterialENS_5MaybeIfEE.exit772: ; preds = %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERNS_5MaybeIfEE.exit.i869, %bb.ft, %bb.fs, %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERNS_5MaybeIfEE.exit.i831, %bb.fk, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit813.thread, %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERNS_5MaybeIfEE.exit.i804, %bb.fd, %bb.fc, %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERNS_5MaybeIfEE.exit.i766, %bb.es, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit745.thread, %bb.ga
  %.sroa.016.0.copyload = load ptr, ptr %i.ae, align 8 ; 5 uses
  %.sroa.015.0.copyload = load ptr, ptr %i.af, align 8 ; 7 uses
  %i.axa = ptrtoint ptr %.sroa.015.0.copyload to i64
  %.not.i876 = icmp ult ptr %.sroa.016.0.copyload, %.sroa.015.0.copyload
  br i1 %.not.i876, label %.preheader.i878, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit895

.preheader.i878:                                  ; preds = %_ZN6Assimp18ObjFileMtlImporter23getFloatIfMaterialValidEMNS_7ObjFile8MaterialENS_5MaybeIfEE.exit772
  %i.axb = getelementptr inbounds i8, ptr %.sroa.015.0.copyload, i64 -1 ; 2 uses
  %i.axc = icmp eq ptr %.sroa.016.0.copyload, %i.axb
  br i1 %i.axc, label %.critedge.i881, label %.lr.ph.i879

.lr.ph.i879:                                      ; preds = %.preheader.i878, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i893
  %.sroa.010.021.i880 = phi ptr [ %i.axe, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i893 ], [ %.sroa.016.0.copyload, %.preheader.i878 ] ; 6 uses
  %i.axd = load i8, ptr %.sroa.010.021.i880, align 1
  switch i8 %i.axd, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i893 [
    i8 13, label %.critedge.i881
    i8 10, label %.critedge.i881
    i8 0, label %.critedge.i881
    i8 12, label %.critedge.i881
  ]

end_hunk_0
begin_hunk_1_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp7ObjFile8MaterialEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESN_IJEEEEESt17_Rb_tree_iteratorISC_ESt23_Rb_tree_const_iteratorISC_EDpOT_:bb.a
  store i64 %i.m, ptr %i.e, align 8
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.b
  %i.n = phi i64 [ %i.j, %bb.b ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  store i64 %i.n, ptr %i.q, align 8
  store ptr %i.g, ptr %i.d, align 8
  store i64 0, ptr %i.p, align 8
  store i8 0, ptr %i.g, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr null, ptr %i.r, align 8
  store ptr %i.a, ptr %i.o, align 8
  %i.s = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp7ObjFile8MaterialEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISC_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %bb.d unwind label %bb.g       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.t = extractvalue { ptr, ptr } %i.s, 0        ; 2 uses
  %i.u = extractvalue { ptr, ptr } %i.s, 1        ; 5 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i = icmp ne ptr %i.t, null
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.w
  br i1 %or.cond.i.i, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = load i64, ptr %i.q, align 8              ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.z, i64 %i.x) ; 2 uses
  %i.aa = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.aa, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = load ptr, ptr %i.b, align 8
  %i.ae = tail call i32 @memcmp(ptr noundef %i.ad, ptr noundef %i.ac, i64 noundef %.sroa.speculated.i.i.i.i.i) #22 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.f
  %i.af = sub i64 %i.x, %i.z
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.af, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.ae, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.ag = icmp slt i32 %.0.i.i.i.i.i, 0
  br label %.thread

.thread:                                          ; preds = %bb.e, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
  %i.ah = phi i1 [ %i.ag, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ], [ true, %bb.e ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ah, ptr noundef nonnull %i.a, ptr noundef nonnull %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.v) #22
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = add i64 %i.aj, 1
  store i64 %i.ak, ptr %i.ai, align 8
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp7ObjFile8MaterialEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE10_Auto_nodeD2Ev.exit

bb.g:                                             ; preds = %bb.c
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp7ObjFile8MaterialEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  resume { ptr, i32 } %i.al

bb.h:                                             ; preds = %bb.d
  %i.am = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.e
  br i1 %i.an, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp7ObjFile8MaterialEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i8: ; preds = %bb.h
  %i.ao = load i64, ptr %i.e, align 8
  %i.ap = add i64 %i.ao, 1
  tail call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #24
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp7ObjFile8MaterialEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit.i

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp7ObjFile8MaterialEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 72) #24
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp7ObjFile8MaterialEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp7ObjFile8MaterialEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp7ObjFile8MaterialEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit.i
  %.sroa.0.011 = phi ptr [ %i.a, %.thread ], [ %i.t, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp7ObjFile8MaterialEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret ptr %.sroa.0.011
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #21

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold noreturn }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #22 = { nounwind }
attributes #23 = { builtin allocsize(0) }
attributes #24 = { builtin nounwind }
attributes #25 = { noreturn }
attributes #26 = { nounwind willreturn memory(read) }
attributes #27 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = !{!6}
!6 = distinct !{!6, !7, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!7 = distinct !{!7, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!8 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!9 = distinct !{!9, !4}
!10 = distinct !{!10, !4}
!11 = distinct !{!11, !4}
!12 = distinct !{!12, !4}
!13 = distinct !{!13, !4}
!14 = distinct !{!14, !4, !15, !16}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = !{!"branch_weights", i32 4, i32 28}
!18 = distinct !{!18, !4, !15, !16}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.unroll.disable"}
!21 = distinct !{!21, !4, !15}
!22 = distinct !{!22, !4, !15, !16}
!23 = distinct !{!23, !4, !15, !16}
!24 = distinct !{!24, !20}
!25 = distinct !{!25, !4, !15}
!26 = distinct !{null}
!27 = distinct !{!27, !4, !15, !16}
!28 = distinct !{!28, !4, !15, !16}
!29 = distinct !{!29, !20}
!30 = distinct !{!30, !4, !15}
!31 = !{!32}
!32 = distinct !{!32, !33, !"_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0:thread"}
!33 = distinct !{!33, !"_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!34 = !{!35}
!35 = distinct !{!35, !33, !"_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!36 = distinct !{!36, !4}
!37 = distinct !{!37, !4, !15, !16}
!38 = distinct !{!38, !4, !15, !16}
!39 = distinct !{!39, !20}
!40 = distinct !{!40, !4, !15}
!41 = !{!42}
!42 = distinct !{!42, !43, !"_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!43 = distinct !{!43, !"_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!44 = !{!45}
!45 = distinct !{!45, !43, !"_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0:thread"}
!46 = !{!47}
!47 = distinct !{!47, !48, !"_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!48 = distinct !{!48, !"_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!49 = !{!50}
!50 = distinct !{!50, !48, !"_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0:thread"}
!51 = distinct !{!51, !4, !15, !16}
!52 = distinct !{!52, !4, !15, !16}
!53 = distinct !{!53, !20}
!54 = distinct !{!54, !4, !15}
!55 = !{!56}
!56 = distinct !{!56, !57, !"_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!57 = distinct !{!57, !"_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!58 = !{!59}
!59 = distinct !{!59, !60, !"_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!60 = distinct !{!60, !"_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!61 = distinct !{!61, !4}
!62 = !{i8 0, i8 2}
!63 = !{}
!64 = !{!65}
!65 = distinct !{!65, !66, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_: argument 0"}
!66 = distinct !{!66, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_"}
!67 = !{!68, !65}
!68 = distinct !{!68, !69, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!69 = distinct !{!69, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!70 = distinct !{!70, !4}
!71 = !{!72}
!72 = distinct !{!72, !73, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!73 = distinct !{!73, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!74 = distinct !{!74, !4}
!75 = !{!76}
!76 = distinct !{!76, !77, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!77 = distinct !{!77, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!78 = distinct !{!78, !4}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6rbeginEv: argument 0"}
!81 = distinct !{!81, !"_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6rbeginEv"}
!82 = !{!83}
!83 = distinct !{!83, !84, !"_ZSt7find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEZ13ai_trim_rightRS9_EUlhE_ET_SE_SE_T0_: argument 0"}
!84 = distinct !{!84, !"_ZSt7find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEZ13ai_trim_rightRS9_EUlhE_ET_SE_SE_T0_"}
!85 = !{!86, !83}
!86 = distinct !{!86, !87, !"_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS1_5__ops10_Iter_predIZ13ai_trim_rightRS9_EUlhE_EEET_SH_SH_T0_: argument 0"}
!87 = distinct !{!87, !"_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS1_5__ops10_Iter_predIZ13ai_trim_rightRS9_EUlhE_EEET_SH_SH_T0_"}
!88 = !{!89}
!89 = distinct !{!89, !90, !"_ZSt16forward_as_tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt5tupleIJDpOT_EES9_: argument 0"}
!90 = distinct !{!90, !"_ZSt16forward_as_tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt5tupleIJDpOT_EES9_"}
!91 = distinct !{!91, !4}
!92 = distinct !{!92, !4}
!93 = distinct !{!93, !4}
!94 = distinct !{!94, !4}
!95 = distinct !{!95, !4}
!96 = !{!97}
!97 = distinct !{!97, !98, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!98 = distinct !{!98, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!99 = !{!100}
!100 = distinct !{!100, !98, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!101 = !{!97, !100}
!102 = distinct !{!102, !4}
!103 = !{!104}
!104 = distinct !{!104, !105, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!105 = distinct !{!105, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!106 = !{!107}
!107 = distinct !{!107, !105, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!108 = !{!104, !107}
!109 = !{!110}
!110 = distinct !{!110, !111, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE: argument 0"}
!111 = distinct !{!111, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE"}
!112 = !{!113}
!113 = distinct !{!113, !114, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!114 = distinct !{!114, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!115 = !{!116}
!116 = distinct !{!116, !117, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!117 = distinct !{!117, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!118 = !{!119}
!119 = distinct !{!119, !120, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!120 = distinct !{!120, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!121 = !{!119, !116, !113, !110}
!122 = !{!123}
!123 = distinct !{!123, !124, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!124 = distinct !{!124, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!125 = !{!126}
!126 = distinct !{!126, !127, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!127 = distinct !{!127, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!128 = !{!129}
!129 = distinct !{!129, !130, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!130 = distinct !{!130, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!131 = !{!129, !126, !123}
!132 = !{!133}
!133 = distinct !{!133, !134, !"_Z18ai_str_toprintableRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc: argument 0"}
!134 = distinct !{!134, !"_Z18ai_str_toprintableRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc"}
!135 = distinct !{!135, !4}
!136 = distinct !{!136, !4}
!137 = distinct !{!137, !4}
!138 = !{!139}
!139 = distinct !{!139, !140, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE: argument 0"}
!140 = distinct !{!140, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE"}
!141 = !{!142}
!142 = distinct !{!142, !143, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!143 = distinct !{!143, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!144 = !{!145}
!145 = distinct !{!145, !146, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!146 = distinct !{!146, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!147 = !{!148}
!148 = distinct !{!148, !149, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!149 = distinct !{!149, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!150 = !{!148, !145, !142, !139}
!151 = distinct !{!151, !4}
end_hunk_1
