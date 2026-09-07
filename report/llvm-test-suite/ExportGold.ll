Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/ExportGold?download=true
inline.NumInlined: 734
inline.NumDeleted: 191
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN10ExportGold12writeGeoFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEid:bb.a
  %next.gep = getelementptr i8, ptr %i.sh, i64 %i.ss ; 2 uses
  %i.st = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !9
  %wide.load1410 = load <4 x i32>, ptr %i.st, align 4, !tbaa !9
  %i.su = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.sv = add <4 x i32> %wide.load1410, %vec.phi1409 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.sw = icmp eq i64 %index.next, %n.vec
  br i1 %i.sw, label %middle.block, label %vector.body, !llvm.loop !92

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.sv, %i.su
  %i.sx = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.sp, %n.vec
  br i1 %cmp.n, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit, label %.lr.ph.i309.preheader1512

.lr.ph.i309.preheader1512:                        ; preds = %.lr.ph.i309.preheader, %middle.block
  %.07.i.ph = phi i32 [ 0, %.lr.ph.i309.preheader ], [ %i.sx, %middle.block ]
  %.sroa.02.06.i.ph = phi ptr [ %i.sh, %.lr.ph.i309.preheader ], [ %i.sr, %middle.block ]
  br label %.lr.ph.i309

.lr.ph.i309:                                      ; preds = %.lr.ph.i309.preheader1512, %.lr.ph.i309
  %.07.i = phi i32 [ %i.sz, %.lr.ph.i309 ], [ %.07.i.ph, %.lr.ph.i309.preheader1512 ]
  %.sroa.02.06.i = phi ptr [ %i.ta, %.lr.ph.i309 ], [ %.sroa.02.06.i.ph, %.lr.ph.i309.preheader1512 ] ; 2 uses
  %i.sy = load i32, ptr %.sroa.02.06.i, align 4, !tbaa !9
  %i.sz = add nsw i32 %i.sy, %.07.i               ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 4 ; 2 uses
  %.not.i310 = icmp eq ptr %i.ta, %i.sj
  br i1 %.not.i310, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit, label %.lr.ph.i309, !llvm.loop !93

_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit: ; preds = %.lr.ph.i309, %middle.block, %bb.bw
  %.0.lcssa.i = phi i32 [ 0, %bb.bw ], [ %i.sx, %middle.block ], [ %i.sz, %.lr.ph.i309 ]
  %i.tb = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 8 uses
  store i32 %.0.lcssa.i, ptr %i.tb, align 8, !tbaa !72
  %i.tc = load ptr, ptr %i.sd, align 8, !tbaa !126 ; 5 uses
  %i.td = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !126 ; 3 uses
  %.not5.i312 = icmp eq ptr %i.tc, %i.te
  br i1 %.not5.i312, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit319, label %.lr.ph.i313.preheader

.lr.ph.i313.preheader:                            ; preds = %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit
  %i.tf = ptrtoaddr ptr %i.te to i64
  %i.tg = ptrtoaddr ptr %i.tc to i64
  %i.th = add i64 %i.tf, -4
  %i.ti = sub i64 %i.th, %i.tg                    ; 2 uses
  %i.tj = lshr i64 %i.ti, 2
  %i.tk = add nuw nsw i64 %i.tj, 1                ; 2 uses
  %min.iters.check1412 = icmp ult i64 %i.ti, 28
  br i1 %min.iters.check1412, label %.lr.ph.i313.preheader1508, label %vector.ph1413

vector.ph1413:                                    ; preds = %.lr.ph.i313.preheader
  %n.vec1414 = and i64 %i.tk, 9223372036854775800 ; 3 uses
  %i.tl = shl i64 %n.vec1414, 2
  %i.tm = getelementptr i8, ptr %i.tc, i64 %i.tl
  br label %vector.body1415

vector.body1415:                                  ; preds = %vector.body1415, %vector.ph1413
  %index1416 = phi i64 [ 0, %vector.ph1413 ], [ %index.next1422, %vector.body1415 ] ; 2 uses
  %vec.phi1417 = phi <4 x i32> [ zeroinitializer, %vector.ph1413 ], [ %i.tp, %vector.body1415 ]
  %vec.phi1418 = phi <4 x i32> [ zeroinitializer, %vector.ph1413 ], [ %i.tq, %vector.body1415 ]
  %i.tn = shl i64 %index1416, 2
  %next.gep1419 = getelementptr i8, ptr %i.tc, i64 %i.tn ; 2 uses
  %i.to = getelementptr i8, ptr %next.gep1419, i64 16
  %wide.load1420 = load <4 x i32>, ptr %next.gep1419, align 4, !tbaa !9
  %wide.load1421 = load <4 x i32>, ptr %i.to, align 4, !tbaa !9
  %i.tp = add <4 x i32> %wide.load1420, %vec.phi1417 ; 2 uses
  %i.tq = add <4 x i32> %wide.load1421, %vec.phi1418 ; 2 uses
  %index.next1422 = add nuw i64 %index1416, 8     ; 2 uses
  %i.tr = icmp eq i64 %index.next1422, %n.vec1414
  br i1 %i.tr, label %middle.block1423, label %vector.body1415, !llvm.loop !94

middle.block1423:                                 ; preds = %vector.body1415
  %bin.rdx1424 = add <4 x i32> %i.tq, %i.tp
  %i.ts = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1424) ; 2 uses
  %cmp.n1425 = icmp eq i64 %i.tk, %n.vec1414
  br i1 %cmp.n1425, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit319, label %.lr.ph.i313.preheader1508

.lr.ph.i313.preheader1508:                        ; preds = %.lr.ph.i313.preheader, %middle.block1423
  %.07.i314.ph = phi i32 [ 0, %.lr.ph.i313.preheader ], [ %i.ts, %middle.block1423 ]
  %.sroa.02.06.i315.ph = phi ptr [ %i.tc, %.lr.ph.i313.preheader ], [ %i.tm, %middle.block1423 ]
  br label %.lr.ph.i313

.lr.ph.i313:                                      ; preds = %.lr.ph.i313.preheader1508, %.lr.ph.i313
  %.07.i314 = phi i32 [ %i.tu, %.lr.ph.i313 ], [ %.07.i314.ph, %.lr.ph.i313.preheader1508 ]
  %.sroa.02.06.i315 = phi ptr [ %i.tv, %.lr.ph.i313 ], [ %.sroa.02.06.i315.ph, %.lr.ph.i313.preheader1508 ] ; 2 uses
  %i.tt = load i32, ptr %.sroa.02.06.i315, align 4, !tbaa !9
  %i.tu = add nsw i32 %i.tt, %.07.i314            ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i315, i64 4 ; 2 uses
  %.not.i316 = icmp eq ptr %i.tv, %i.te
  br i1 %.not.i316, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit319, label %.lr.ph.i313, !llvm.loop !95

_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit319: ; preds = %.lr.ph.i313, %middle.block1423, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit
  %.0.lcssa.i318 = phi i32 [ 0, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit ], [ %i.ts, %middle.block1423 ], [ %i.tu, %.lr.ph.i313 ]
  %i.tw = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 8 uses
  store i32 %.0.lcssa.i318, ptr %i.tw, align 4, !tbaa !73
  %i.tx = load ptr, ptr %i.sf, align 8, !tbaa !126 ; 5 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !126 ; 3 uses
  %.not5.i320 = icmp eq ptr %i.tx, %i.tz
  br i1 %.not5.i320, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit327, label %.lr.ph.i321.preheader

.lr.ph.i321.preheader:                            ; preds = %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit319
  %i.ua = ptrtoaddr ptr %i.tz to i64
  %i.ub = ptrtoaddr ptr %i.tx to i64
  %i.uc = add i64 %i.ua, -4
  %i.ud = sub i64 %i.uc, %i.ub                    ; 2 uses
  %i.ue = lshr i64 %i.ud, 2
  %i.uf = add nuw nsw i64 %i.ue, 1                ; 2 uses
  %min.iters.check1429 = icmp ult i64 %i.ud, 28
  br i1 %min.iters.check1429, label %.lr.ph.i321.preheader1504, label %vector.ph1430

vector.ph1430:                                    ; preds = %.lr.ph.i321.preheader
  %n.vec1431 = and i64 %i.uf, 9223372036854775800 ; 3 uses
  %i.ug = shl i64 %n.vec1431, 2
  %i.uh = getelementptr i8, ptr %i.tx, i64 %i.ug
  br label %vector.body1432

vector.body1432:                                  ; preds = %vector.body1432, %vector.ph1430
  %index1433 = phi i64 [ 0, %vector.ph1430 ], [ %index.next1439, %vector.body1432 ] ; 2 uses
  %vec.phi1434 = phi <4 x i32> [ zeroinitializer, %vector.ph1430 ], [ %i.uk, %vector.body1432 ]
  %vec.phi1435 = phi <4 x i32> [ zeroinitializer, %vector.ph1430 ], [ %i.ul, %vector.body1432 ]
  %i.ui = shl i64 %index1433, 2
  %next.gep1436 = getelementptr i8, ptr %i.tx, i64 %i.ui ; 2 uses
  %i.uj = getelementptr i8, ptr %next.gep1436, i64 16
  %wide.load1437 = load <4 x i32>, ptr %next.gep1436, align 4, !tbaa !9
  %wide.load1438 = load <4 x i32>, ptr %i.uj, align 4, !tbaa !9
  %i.uk = add <4 x i32> %wide.load1437, %vec.phi1434 ; 2 uses
  %i.ul = add <4 x i32> %wide.load1438, %vec.phi1435 ; 2 uses
  %index.next1439 = add nuw i64 %index1433, 8     ; 2 uses
  %i.um = icmp eq i64 %index.next1439, %n.vec1431
  br i1 %i.um, label %middle.block1440, label %vector.body1432, !llvm.loop !96

middle.block1440:                                 ; preds = %vector.body1432
  %bin.rdx1441 = add <4 x i32> %i.ul, %i.uk
  %i.un = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1441) ; 2 uses
  %cmp.n1442 = icmp eq i64 %i.uf, %n.vec1431
  br i1 %cmp.n1442, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit327, label %.lr.ph.i321.preheader1504

.lr.ph.i321.preheader1504:                        ; preds = %.lr.ph.i321.preheader, %middle.block1440
  %.07.i322.ph = phi i32 [ 0, %.lr.ph.i321.preheader ], [ %i.un, %middle.block1440 ]
  %.sroa.02.06.i323.ph = phi ptr [ %i.tx, %.lr.ph.i321.preheader ], [ %i.uh, %middle.block1440 ]
  br label %.lr.ph.i321

.lr.ph.i321:                                      ; preds = %.lr.ph.i321.preheader1504, %.lr.ph.i321
  %.07.i322 = phi i32 [ %i.up, %.lr.ph.i321 ], [ %.07.i322.ph, %.lr.ph.i321.preheader1504 ]
  %.sroa.02.06.i323 = phi ptr [ %i.uq, %.lr.ph.i321 ], [ %.sroa.02.06.i323.ph, %.lr.ph.i321.preheader1504 ] ; 2 uses
  %i.uo = load i32, ptr %.sroa.02.06.i323, align 4, !tbaa !9
  %i.up = add nsw i32 %i.uo, %.07.i322            ; 2 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i323, i64 4 ; 2 uses
  %.not.i324 = icmp eq ptr %i.uq, %i.tz
  br i1 %.not.i324, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit327, label %.lr.ph.i321, !llvm.loop !97

_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit327: ; preds = %.lr.ph.i321, %middle.block1440, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit319
  %.0.lcssa.i326 = phi i32 [ 0, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit319 ], [ %i.un, %middle.block1440 ], [ %i.up, %.lr.ph.i321 ]
  %i.ur = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 9 uses
  store i32 %.0.lcssa.i326, ptr %i.ur, align 8, !tbaa !74
  %i.us = load i32, ptr @_ZN8Parallel4mypeE, align 4, !tbaa !9
  %i.ut = icmp eq i32 %i.us, 0
  %i.uu = load i32, ptr @_ZN8Parallel5numpeE, align 4
  %i.uv = select i1 %i.ut, i32 %i.uu, i32 0       ; 3 uses
  %i.uw = sext i32 %i.uv to i64                   ; 3 uses
  %i.ux = icmp slt i32 %i.uv, 0
  br i1 %i.ux, label %bb.bx, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i328

bb.bx:                                            ; preds = %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit327
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.33) #16
          to label %.noexc334 unwind label %bb.cf

.noexc334:                                        ; preds = %bb.bx
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i328: ; preds = %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit327
  %.not.i.i.i.i329 = icmp eq i32 %i.uv, 0
  br i1 %.not.i.i.i.i329, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit336, label %bb.by

bb.by:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i328
  %i.uy = shl nuw nsw i64 %i.uw, 2
  %i.uz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.uy) #18
          to label %.noexc335 unwind label %bb.cf ; 5 uses

.noexc335:                                        ; preds = %bb.by
  %i.va = getelementptr inbounds nuw [4 x i8], ptr %i.uz, i64 %i.uw ; 2 uses
  store i32 0, ptr %i.uz, align 4, !tbaa !9
  %i.vb = getelementptr i8, ptr %i.uz, i64 4      ; 3 uses
  %i.vc = add nsw i64 %i.uw, -1                   ; 2 uses
  %i.vd = icmp eq i64 %i.vc, 0
  br i1 %i.vd, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit336, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i330

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i330: ; preds = %.noexc335
  %.idx.i.i.i.i.i.i.i331 = shl nuw nsw i64 %i.vc, 2 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.vb, i8 0, i64 %.idx.i.i.i.i.i.i.i331, i1 false), !tbaa !9
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vb, i64 %.idx.i.i.i.i.i.i.i331
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit336

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit336:            ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i330, %.noexc335, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i328
  %.sroa.17.0 = phi ptr [ %i.va, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i330 ], [ %i.va, %.noexc335 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i328 ] ; 2 uses
  %.sroa.0890.0 = phi ptr [ %i.uz, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i330 ], [ %i.uz, %.noexc335 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i328 ] ; 26 uses
  %.0.i.i.i.i.i332 = phi ptr [ %i.ve, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i330 ], [ %i.vb, %.noexc335 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i328 ] ; 3 uses
  %.sroa.0890.01445 = ptrtoaddr ptr %.sroa.0890.0 to i64 ; 3 uses
  %i.vf = mul nsw i32 %i.pt, 3                    ; 2 uses
  %i.vg = sext i32 %i.vf to i64                   ; 3 uses
  %i.vh = icmp slt i32 %i.pt, 0
  br i1 %i.vh, label %bb.bz, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i337

bb.bz:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit336
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.33) #16
          to label %.noexc343 unwind label %bb.cg

.noexc343:                                        ; preds = %bb.bz
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i337: ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit336
  %.not.i.i.i.i338 = icmp eq i32 %i.pt, 0         ; 2 uses
  br i1 %.not.i.i.i.i338, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit345, label %bb.ca

bb.ca:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i337
  %i.vi = shl nuw nsw i64 %i.vg, 2
  %i.vj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vi) #18
          to label %.noexc344 unwind label %bb.cg ; 5 uses

.noexc344:                                        ; preds = %bb.ca
  %i.vk = getelementptr inbounds nuw [4 x i8], ptr %i.vj, i64 %i.vg ; 2 uses
  store i32 0, ptr %i.vj, align 4, !tbaa !9
  %i.vl = add nsw i64 %i.vg, -1                   ; 2 uses
  %6 = icmp eq i64 %i.vl, 0
  br i1 %6, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit345, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i339

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i339: ; preds = %.noexc344
  %7 = getelementptr i8, ptr %i.vj, i64 4
  %.idx.i.i.i.i.i.i.i340 = shl nuw nsw i64 %i.vl, 2
  call void @llvm.memset.p0.i64(ptr align 4 %7, i8 0, i64 %.idx.i.i.i.i.i.i.i340, i1 false), !tbaa !9
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit345

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit345:            ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i339, %.noexc344, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i337
  %.sroa.0882.0 = phi ptr [ %i.vj, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i339 ], [ %i.vj, %.noexc344 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i337 ] ; 9 uses
  %.sroa.11887.0 = phi ptr [ %i.vk, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i339 ], [ %i.vk, %.noexc344 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i337 ] ; 2 uses
  %i.vm = load i32, ptr %i.tb, align 8, !tbaa !72 ; 3 uses
  %i.vn = sext i32 %i.vm to i64                   ; 4 uses
  %i.vo = icmp slt i32 %i.vm, 0
  br i1 %i.vo, label %bb.cb, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i346

bb.cb:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit345
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.33) #16
          to label %.noexc352 unwind label %bb.ch

.noexc352:                                        ; preds = %bb.cb
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i346: ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit345
  %.not.i.i.i.i347 = icmp ne i32 %i.vm, 0
  call void @llvm.assume(i1 %.not.i.i.i.i347)
  %i.vp = shl nuw nsw i64 %i.vn, 2
  %i.vq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vp) #18
          to label %.noexc353 unwind label %bb.ch ; 6 uses

.noexc353:                                        ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i346
  store i32 0, ptr %i.vq, align 4, !tbaa !9
  %i.vr = add nsw i64 %i.vn, -1                   ; 2 uses
  %i.vs = icmp eq i64 %i.vr, 0
  br i1 %i.vs, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit354, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i348

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i348: ; preds = %.noexc353
  %i.vt = getelementptr i8, ptr %i.vq, i64 4
  %.idx.i.i.i.i.i.i.i349 = shl nuw nsw i64 %i.vr, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.vt, i8 0, i64 %.idx.i.i.i.i.i.i.i349, i1 false), !tbaa !9
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit354

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit354:            ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i348, %.noexc353
  %.pr1284 = load i32, ptr %i.tb, align 8, !tbaa !72 ; 3 uses
  %i.vu = mul nsw i32 %.pr1284, 3
  %i.vv = sext i32 %i.vu to i64                   ; 3 uses
  %i.vw = icmp slt i32 %.pr1284, 0
  br i1 %i.vw, label %bb.cc, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i355

bb.cc:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit354
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.33) #16
          to label %.noexc361 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit518.thread

.noexc361:                                        ; preds = %bb.cc
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i355: ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit354
  %.not.i.i.i.i356 = icmp eq i32 %.pr1284, 0
  br i1 %.not.i.i.i.i356, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit363, label %bb.cd

bb.cd:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i355
  %i.vx = shl nuw nsw i64 %i.vv, 2
  %i.vy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vx) #18
          to label %.noexc362 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit518.thread ; 5 uses

.noexc362:                                        ; preds = %bb.cd
  %i.vz = getelementptr inbounds nuw [4 x i8], ptr %i.vy, i64 %i.vv ; 2 uses
  store i32 0, ptr %i.vy, align 4, !tbaa !9
  %i.wa = add nsw i64 %i.vv, -1                   ; 2 uses
  %8 = icmp eq i64 %i.wa, 0
  br i1 %8, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit363, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i357

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i357: ; preds = %.noexc362
  %9 = getelementptr i8, ptr %i.vy, i64 4
  %.idx.i.i.i.i.i.i.i358 = shl nuw nsw i64 %i.wa, 2
  call void @llvm.memset.p0.i64(ptr align 4 %9, i8 0, i64 %.idx.i.i.i.i.i.i.i358, i1 false), !tbaa !9
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit363

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit363:            ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i357, %.noexc362, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i355
  %.sroa.0866.0 = phi ptr [ %i.vy, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i357 ], [ %i.vy, %.noexc362 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i355 ] ; 9 uses
  %.sroa.11871.0 = phi ptr [ %i.vz, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i357 ], [ %i.vz, %.noexc362 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i355 ] ; 2 uses
  %i.wb = load ptr, ptr %i.pl, align 8, !tbaa !19
  %i.wc = load ptr, ptr %i.sb, align 8, !tbaa !19
  invoke void @_ZN8Parallel7gathervIiEEvPKT_iPS1_PKi(ptr noundef nonnull %i.wb, i32 noundef %i.pt, ptr noundef nonnull %i.vq, ptr noundef nonnull %i.wc)
          to label %bb.ce unwind label %bb.ci

bb.ce:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit363
  %i.wd = load i32, ptr @_ZN8Parallel4mypeE, align 4, !tbaa !9
  %i.we = icmp eq i32 %i.wd, 0
  br i1 %i.we, label %.preheader1023, label %.loopexit1024

.preheader1023:                                   ; preds = %bb.ce
  %i.wf = load i32, ptr @_ZN8Parallel5numpeE, align 4, !tbaa !9 ; 3 uses
  %i.wg = icmp sgt i32 %i.wf, 0
  br i1 %i.wg, label %.lr.ph1068, label %.loopexit1024

.lr.ph1068:                                       ; preds = %.preheader1023
  %i.wh = load ptr, ptr %i.sb, align 8, !tbaa !19 ; 7 uses
  %wide.trip.count = zext nneg i32 %i.wf to i64   ; 5 uses
  %min.iters.check1447 = icmp ult i32 %i.wf, 8
  %i.wi = ptrtoaddr ptr %i.wh to i64
  %i.wj = sub i64 %i.wi, %.sroa.0890.01445
  %diff.check = icmp ugt i64 %i.wj, -32
  %or.cond = select i1 %min.iters.check1447, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph1446.preheader, label %vector.ph1448

vector.ph1448:                                    ; preds = %.lr.ph1068
  %n.vec1449 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vector.body1450

vector.body1450:                                  ; preds = %vector.body1450, %vector.ph1448
  %index1451 = phi i64 [ 0, %vector.ph1448 ], [ %index.next1454, %vector.body1450 ] ; 3 uses
  %i.wk = getelementptr inbounds nuw [4 x i8], ptr %i.wh, i64 %index1451 ; 2 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 16
  %wide.load1452 = load <4 x i32>, ptr %i.wk, align 4, !tbaa !9
  %wide.load1453 = load <4 x i32>, ptr %i.wl, align 4, !tbaa !9
  %i.wm = mul nsw <4 x i32> %wide.load1452, splat (i32 3)
  %i.wn = mul nsw <4 x i32> %wide.load1453, splat (i32 3)
  %i.wo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0890.0, i64 %index1451 ; 2 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 16
  store <4 x i32> %i.wm, ptr %i.wo, align 4, !tbaa !9
  store <4 x i32> %i.wn, ptr %i.wp, align 4, !tbaa !9
  %index.next1454 = add nuw i64 %index1451, 8     ; 2 uses
  %i.wq = icmp eq i64 %index.next1454, %n.vec1449
  br i1 %i.wq, label %middle.block1455, label %vector.body1450, !llvm.loop !98

middle.block1455:                                 ; preds = %vector.body1450
  %cmp.n1456 = icmp eq i64 %n.vec1449, %wide.trip.count
  br i1 %cmp.n1456, label %.loopexit1024, label %scalar.ph1446.preheader

scalar.ph1446.preheader:                          ; preds = %.lr.ph1068, %middle.block1455
  %indvars.iv1129.ph = phi i64 [ 0, %.lr.ph1068 ], [ %n.vec1449, %middle.block1455 ] ; 3 uses
  %xtraiter1518 = and i64 %wide.trip.count, 3     ; 2 uses
  %lcmp.mod1519.not = icmp eq i64 %xtraiter1518, 0
  br i1 %lcmp.mod1519.not, label %scalar.ph1446.prol.loopexit, label %scalar.ph1446.prol

scalar.ph1446.prol:                               ; preds = %scalar.ph1446.preheader, %scalar.ph1446.prol
  %indvars.iv1129.prol = phi i64 [ %indvars.iv.next1130.prol, %scalar.ph1446.prol ], [ %indvars.iv1129.ph, %scalar.ph1446.preheader ] ; 3 uses
  %prol.iter1520 = phi i64 [ %prol.iter1520.next, %scalar.ph1446.prol ], [ 0, %scalar.ph1446.preheader ]
  %i.wr = getelementptr inbounds nuw [4 x i8], ptr %i.wh, i64 %indvars.iv1129.prol
  %i.ws = load i32, ptr %i.wr, align 4, !tbaa !9
  %i.wt = mul nsw i32 %i.ws, 3
  %i.wu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0890.0, i64 %indvars.iv1129.prol
  store i32 %i.wt, ptr %i.wu, align 4, !tbaa !9
  %indvars.iv.next1130.prol = add nuw nsw i64 %indvars.iv1129.prol, 1 ; 2 uses
  %prol.iter1520.next = add i64 %prol.iter1520, 1 ; 2 uses
  %prol.iter1520.cmp.not = icmp eq i64 %prol.iter1520.next, %xtraiter1518
  br i1 %prol.iter1520.cmp.not, label %scalar.ph1446.prol.loopexit, label %scalar.ph1446.prol, !llvm.loop !99

scalar.ph1446.prol.loopexit:                      ; preds = %scalar.ph1446.prol, %scalar.ph1446.preheader
  %indvars.iv1129.unr = phi i64 [ %indvars.iv1129.ph, %scalar.ph1446.preheader ], [ %indvars.iv.next1130.prol, %scalar.ph1446.prol ]
  %i.wv = sub nsw i64 %indvars.iv1129.ph, %wide.trip.count
  %i.ww = icmp ugt i64 %i.wv, -4
  br i1 %i.ww, label %.loopexit1024, label %scalar.ph1446

bb.cf:                                            ; preds = %bb.by, %bb.bx
  %i.wx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit524.thread

bb.cg:                                            ; preds = %bb.ca, %bb.bz
  %i.wy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit522

bb.ch:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i346, %bb.cb
  %i.wz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit520

_ZNSt6vectorIiSaIiEED2Ev.exit518.thread:          ; preds = %bb.cc, %bb.cd
  %i.xa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit518

bb.ci:                                            ; preds = %.invoke1383.a, %.noexc677, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i672, %.noexc675, %bb.cs, %.noexc666, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i661, %.noexc664, %bb.co, %bb.cm, %bb.cp, %._crit_edge, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit363
  %i.xb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit516

scalar.ph1446:                                    ; preds = %scalar.ph1446.prol.loopexit, %scalar.ph1446
  %indvars.iv1129 = phi i64 [ %indvars.iv.next1130.3, %scalar.ph1446 ], [ %indvars.iv1129.unr, %scalar.ph1446.prol.loopexit ] ; 6 uses
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr %i.wh, i64 %indvars.iv1129
  %i.xd = load i32, ptr %i.xc, align 4, !tbaa !9
  %i.xe = mul nsw i32 %i.xd, 3
  %i.xf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0890.0, i64 %indvars.iv1129
  store i32 %i.xe, ptr %i.xf, align 4, !tbaa !9
  %indvars.iv.next1130 = add nuw nsw i64 %indvars.iv1129, 1 ; 2 uses
  %i.xg = getelementptr inbounds nuw [4 x i8], ptr %i.wh, i64 %indvars.iv.next1130
  %i.xh = load i32, ptr %i.xg, align 4, !tbaa !9
  %i.xi = mul nsw i32 %i.xh, 3
  %i.xj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0890.0, i64 %indvars.iv.next1130
  store i32 %i.xi, ptr %i.xj, align 4, !tbaa !9
  %indvars.iv.next1130.1 = add nuw nsw i64 %indvars.iv1129, 2 ; 2 uses
  %i.xk = getelementptr inbounds nuw [4 x i8], ptr %i.wh, i64 %indvars.iv.next1130.1
  %i.xl = load i32, ptr %i.xk, align 4, !tbaa !9
  %i.xm = mul nsw i32 %i.xl, 3
  %i.xn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0890.0, i64 %indvars.iv.next1130.1
  store i32 %i.xm, ptr %i.xn, align 4, !tbaa !9
  %indvars.iv.next1130.2 = add nuw nsw i64 %indvars.iv1129, 3 ; 2 uses
  %i.xo = getelementptr inbounds nuw [4 x i8], ptr %i.wh, i64 %indvars.iv.next1130.2
  %i.xp = load i32, ptr %i.xo, align 4, !tbaa !9
  %i.xq = mul nsw i32 %i.xp, 3
  %i.xr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0890.0, i64 %indvars.iv.next1130.2
  store i32 %i.xq, ptr %i.xr, align 4, !tbaa !9
  %indvars.iv.next1130.3 = add nuw nsw i64 %indvars.iv1129, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next1130.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit1024, label %scalar.ph1446, !llvm.loop !100

.loopexit1024:                                    ; preds = %scalar.ph1446.prol.loopexit, %scalar.ph1446, %middle.block1455, %.preheader1023, %bb.ce
  br i1 %.not.i.i.i.i338, label %._crit_edge, label %.lr.ph1071

.lr.ph1071:                                       ; preds = %.loopexit1024
  %i.xs = load ptr, ptr %i.pl, align 8, !tbaa !19
  %i.xt = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.xu = load ptr, ptr %i.xt, align 8, !tbaa !19
  %i.xv = load i32, ptr %i.b, align 4, !tbaa !9   ; 3 uses
  %wide.trip.count1139 = and i64 %i.ps, 2147483647
  br label %bb.cj

._crit_edge:                                      ; preds = %bb.cj, %.loopexit1024
  invoke void @_ZN8Parallel7gathervIiEEvPKT_iPS1_PKi(ptr noundef nonnull %.sroa.0882.0, i32 noundef %i.vf, ptr noundef nonnull %.sroa.0866.0, ptr noundef nonnull %.sroa.0890.0)
          to label %bb.ck unwind label %bb.ci

bb.cj:                                            ; preds = %.lr.ph1071, %bb.cj
  %indvars.iv1136 = phi i64 [ 0, %.lr.ph1071 ], [ %indvars.iv.next1137, %bb.cj ] ; 3 uses
  %i.xw = getelementptr inbounds nuw [4 x i8], ptr %i.xs, i64 %indvars.iv1136
  %i.xx = load i32, ptr %i.xw, align 4, !tbaa !9
  %i.xy = sext i32 %i.xx to i64
  %i.xz = getelementptr inbounds nuw [4 x i8], ptr %i.xu, i64 %i.xy
  %i.ya = load i32, ptr %i.xz, align 4, !tbaa !9
  %i.yb = mul nuw nsw i64 %indvars.iv1136, 3      ; 3 uses
  %i.yc = sext i32 %i.ya to i64                   ; 3 uses
  %i.yd = getelementptr inbounds [4 x i8], ptr %i.pk, i64 %i.yc
  %i.ye = load i32, ptr %i.yd, align 4, !tbaa !9
  %i.yf = add nsw i32 %i.xv, %i.ye
  %i.yg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0882.0, i64 %i.yb
  store i32 %i.yf, ptr %i.yg, align 4, !tbaa !9
  %i.yh = getelementptr [4 x i8], ptr %i.pk, i64 %i.yc
  %i.yi = getelementptr i8, ptr %i.yh, i64 4
  %i.yj = load i32, ptr %i.yi, align 4, !tbaa !9
  %i.yk = add nsw i32 %i.xv, %i.yj
  %i.yl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0882.0, i64 %i.yb
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 4
  store i32 %i.yk, ptr %i.ym, align 4, !tbaa !9
  %i.yn = getelementptr [4 x i8], ptr %i.pk, i64 %i.yc
  %i.yo = getelementptr i8, ptr %i.yn, i64 8
  %i.yp = load i32, ptr %i.yo, align 4, !tbaa !9
  %i.yq = add nsw i32 %i.xv, %i.yp
  %i.yr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0882.0, i64 %i.yb
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 8
  store i32 %i.yq, ptr %i.ys, align 4, !tbaa !9
  %indvars.iv.next1137 = add nuw nsw i64 %indvars.iv1136, 1 ; 2 uses
  %exitcond1140.not = icmp eq i64 %indvars.iv.next1137, %wide.trip.count1139
  br i1 %exitcond1140.not, label %._crit_edge, label %bb.cj, !llvm.loop !101

bb.ck:                                            ; preds = %._crit_edge
  %i.yt = load i32, ptr @_ZN8Parallel4mypeE, align 4, !tbaa !9
  %i.yu = icmp eq i32 %i.yt, 0
  br i1 %i.yu, label %bb.cl, label %.loopexit1012

bb.cl:                                            ; preds = %bb.ck
  %i.yv = load i32, ptr %i.tb, align 8, !tbaa !72
  %i.yw = icmp sgt i32 %i.yv, 0
  br i1 %i.yw, label %bb.cm, label %.loopexit1012

bb.cm:                                            ; preds = %bb.cl
  %i.yx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.27, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit365 unwind label %bb.ci ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit365: ; preds = %bb.cm
  %i.yy = load ptr, ptr %4, align 8, !tbaa !30
  %i.yz = getelementptr i8, ptr %i.yy, i64 -24
  %i.za = load i64, ptr %i.yz, align 8
  %i.zb = getelementptr inbounds i8, ptr %4, i64 %i.za
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 240
  %i.zd = load ptr, ptr %i.zc, align 8, !tbaa !47 ; 6 uses
  %.not.i.i.i658 = icmp eq ptr %i.zd, null
  br i1 %.not.i.i.i658, label %.invoke1383.a, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i659

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i659: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit365
end_hunk_0
begin_hunk_1_@_ZN10ExportGold12writeGeoFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEid:bb.a
  %i.att = load i8, ptr %i.ats, align 8, !tbaa !52
  %.not.i1.i.i781 = icmp eq i8 %i.att, 0
  br i1 %.not.i1.i.i781, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i780
  %i.atu = getelementptr inbounds nuw i8, ptr %i.atr, i64 67
  %i.atv = load i8, ptr %i.atu, align 1, !tbaa !27
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i782

bb.fq:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i780
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.atr)
          to label %.noexc785 unwind label %.loopexit979

.noexc785:                                        ; preds = %bb.fq
  %i.atw = load ptr, ptr %i.atr, align 8, !tbaa !30
  %i.atx = getelementptr inbounds nuw i8, ptr %i.atw, i64 48
  %i.aty = load ptr, ptr %i.atx, align 8
  %i.atz = invoke noundef signext i8 %i.aty(ptr noundef nonnull align 8 dereferenceable(570) %i.atr, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i782 unwind label %.loopexit979, !inline_history !1

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i782: ; preds = %.noexc785, %bb.fp
  %.0.i.i.i783 = phi i8 [ %i.atv, %bb.fp ], [ %i.atz, %.noexc785 ]
  %i.aua = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.atl, i8 noundef signext %.0.i.i.i783)
          to label %.noexc787 unwind label %.loopexit979

.noexc787:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i782
  %i.aub = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aua)
          to label %_ZNSolsEPFRSoS_E.exit468 unwind label %.loopexit979 ; 0 uses

_ZNSolsEPFRSoS_E.exit468:                         ; preds = %.noexc787
  %indvars.iv.next1188 = add nuw nsw i64 %indvars.iv1187, 1 ; 2 uses
  %i.auc = load i32, ptr %i.ur, align 8, !tbaa !74 ; 2 uses
  %i.aud = sext i32 %i.auc to i64
  %i.aue = icmp slt i64 %indvars.iv.next1188, %i.aud
  br i1 %i.aue, label %.lr.ph1108, label %.preheader977, !llvm.loop !115

.loopexit979:                                     ; preds = %.lr.ph1108, %bb.fq, %.noexc785, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i782, %.noexc787
  %lpad.loopexit981 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fw

.loopexit.split-lp980:                            ; preds = %bb.fo
  %lpad.loopexit.split-lp982 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fw

.preheader:                                       ; preds = %.preheader977, %_ZNSolsEPFRSoS_E.exit470
  %indvars.iv1193 = phi i64 [ %indvars.iv.next1194, %_ZNSolsEPFRSoS_E.exit470 ], [ 0, %.preheader977 ] ; 2 uses
  %.01421114 = phi i32 [ %i.avm, %_ZNSolsEPFRSoS_E.exit470 ], [ 0, %.preheader977 ] ; 2 uses
  %i.auf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0808.0, i64 %indvars.iv1193 ; 3 uses
  %i.aug = load i32, ptr %i.auf, align 4, !tbaa !9
  %i.auh = icmp sgt i32 %i.aug, 0
  br i1 %i.auh, label %.lr.ph1111.preheader, label %._crit_edge1112

.lr.ph1111.preheader:                             ; preds = %.preheader
  %i.aui = sext i32 %.01421114 to i64
  %invariant.gep1379 = getelementptr [4 x i8], ptr %i.apz, i64 %i.aui
  br label %.lr.ph1111

._crit_edge1112:                                  ; preds = %bb.fu, %.preheader
  %i.auj = load ptr, ptr %4, align 8, !tbaa !30
  %i.auk = getelementptr i8, ptr %i.auj, i64 -24
  %i.aul = load i64, ptr %i.auk, align 8
  %i.aum = getelementptr inbounds i8, ptr %4, i64 %i.aul
  %i.aun = getelementptr inbounds nuw i8, ptr %i.aum, i64 240
  %i.auo = load ptr, ptr %i.aun, align 8, !tbaa !47 ; 6 uses
  %.not.i.i.i790 = icmp eq ptr %i.auo, null
  br i1 %.not.i.i.i790, label %bb.fr, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i791

bb.fr:                                            ; preds = %._crit_edge1112
  invoke void @_ZSt16__throw_bad_castv() #16
          to label %.noexc795 unwind label %.loopexit.split-lp

.noexc795:                                        ; preds = %bb.fr
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i791: ; preds = %._crit_edge1112
  %i.aup = getelementptr inbounds nuw i8, ptr %i.auo, i64 56
  %i.auq = load i8, ptr %i.aup, align 8, !tbaa !52
  %.not.i1.i.i792 = icmp eq i8 %i.auq, 0
  br i1 %.not.i1.i.i792, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i791
  %i.aur = getelementptr inbounds nuw i8, ptr %i.auo, i64 67
  %i.aus = load i8, ptr %i.aur, align 1, !tbaa !27
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i793

bb.ft:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i791
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.auo)
          to label %.noexc796 unwind label %.loopexit

.noexc796:                                        ; preds = %bb.ft
  %i.aut = load ptr, ptr %i.auo, align 8, !tbaa !30
  %i.auu = getelementptr inbounds nuw i8, ptr %i.aut, i64 48
  %i.auv = load ptr, ptr %i.auu, align 8
  %i.auw = invoke noundef signext i8 %i.auv(ptr noundef nonnull align 8 dereferenceable(570) %i.auo, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i793 unwind label %.loopexit, !inline_history !1

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i793: ; preds = %.noexc796, %bb.fs
  %.0.i.i.i794 = phi i8 [ %i.aus, %bb.fs ], [ %i.auw, %.noexc796 ]
  %i.aux = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %4, i8 noundef signext %.0.i.i.i794)
          to label %.noexc798 unwind label %.loopexit

.noexc798:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i793
  %i.auy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aux)
          to label %_ZNSolsEPFRSoS_E.exit470 unwind label %.loopexit ; 0 uses

.lr.ph1111:                                       ; preds = %.lr.ph1111.preheader, %bb.fu
  %indvars.iv1190 = phi i64 [ 0, %.lr.ph1111.preheader ], [ %indvars.iv.next1191, %bb.fu ] ; 2 uses
  %i.auz = load ptr, ptr %4, align 8, !tbaa !30
  %i.ava = getelementptr i8, ptr %i.auz, i64 -24
  %i.avb = load i64, ptr %i.ava, align 8
  %i.avc = getelementptr inbounds i8, ptr %4, i64 %i.avb
  %i.avd = getelementptr inbounds nuw i8, ptr %i.avc, i64 16
  store i64 10, ptr %i.avd, align 8, !tbaa !68
  %gep1380 = getelementptr [4 x i8], ptr %invariant.gep1379, i64 %indvars.iv1190
  %i.ave = load i32, ptr %gep1380, align 4, !tbaa !9
  %i.avf = add nsw i32 %i.ave, 1
  %i.avg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %i.avf)
          to label %bb.fu unwind label %.thread931 ; 0 uses

bb.fu:                                            ; preds = %.lr.ph1111
  %indvars.iv.next1191 = add nuw nsw i64 %indvars.iv1190, 1 ; 2 uses
  %i.avh = load i32, ptr %i.auf, align 4, !tbaa !9
  %i.avi = sext i32 %i.avh to i64
  %i.avj = icmp slt i64 %indvars.iv.next1191, %i.avi
  br i1 %i.avj, label %.lr.ph1111, label %._crit_edge1112, !llvm.loop !116

.thread931:                                       ; preds = %.lr.ph1111
  %i.avk = landingpad { ptr, i32 }
          cleanup
  br label %bb.fw

_ZNSolsEPFRSoS_E.exit470:                         ; preds = %.noexc798
  %i.avl = load i32, ptr %i.auf, align 4, !tbaa !9
  %i.avm = add nsw i32 %i.avl, %.01421114
  %indvars.iv.next1194 = add nuw nsw i64 %indvars.iv1193, 1 ; 2 uses
  %i.avn = load i32, ptr %i.ur, align 8, !tbaa !74
  %i.avo = sext i32 %i.avn to i64
  %i.avp = icmp slt i64 %indvars.iv.next1194, %i.avo
  br i1 %i.avp, label %.preheader, label %._crit_edge1116, !llvm.loop !117

.loopexit:                                        ; preds = %bb.ft, %.noexc796, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i793, %.noexc798
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.fw

.loopexit.split-lp:                               ; preds = %bb.fr
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.fw

._crit_edge1116:                                  ; preds = %_ZNSolsEPFRSoS_E.exit470, %_ZNSolsEPFRSoS_E.exit464.preheader, %.preheader978, %.preheader977
  %.pr928 = load i32, ptr @_ZN8Parallel4mypeE, align 4, !tbaa !9
  %i.avq = icmp eq i32 %.pr928, 0
  br i1 %i.avq, label %.thread929, label %_ZNSt6vectorIiSaIiEED2Ev.exit500

.thread929:                                       ; preds = %bb.ey, %._crit_edge1116
  %i.avr = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.avs = invoke noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(240) %i.avr)
          to label %.noexc472 unwind label %bb.fi

.noexc472:                                        ; preds = %.thread929
  %.not.i471 = icmp eq ptr %i.avs, null
  br i1 %.not.i471, label %bb.fv, label %_ZNSt6vectorIiSaIiEED2Ev.exit500

bb.fv:                                            ; preds = %.noexc472
  %i.avt = load ptr, ptr %4, align 8, !tbaa !30
  %i.avu = getelementptr i8, ptr %i.avt, i64 -24
  %i.avv = load i64, ptr %i.avu, align 8
  %i.avw = getelementptr inbounds i8, ptr %4, i64 %i.avv ; 2 uses
  %i.avx = getelementptr inbounds nuw i8, ptr %i.avw, i64 32
  %i.avy = load i32, ptr %i.avx, align 8, !tbaa !39
  %i.avz = or i32 %i.avy, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.avw, i32 noundef %i.avz)
          to label %_ZNSt6vectorIiSaIiEED2Ev.exit500 unwind label %bb.fi

_ZNSt6vectorIiSaIiEED2Ev.exit500:                 ; preds = %bb.ex, %.noexc472, %bb.fv, %._crit_edge1116
  call void @_ZdlPvm(ptr noundef nonnull %i.apz, i64 noundef %i.apy) #14
  %i.awa = ptrtoint ptr %.sroa.13.0 to i64
  %i.awb = ptrtoint ptr %.sroa.0808.0 to i64
  %i.awc = sub i64 %i.awa, %i.awb
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0808.0, i64 noundef %i.awc) #14
  %.idx = shl nuw nsw i64 %i.amx, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.ana, i64 noundef %.idx) #14
  %i.awd = ptrtoint ptr %.sroa.14.0.lcssa to i64
  %i.awe = sub i64 %i.awd, %i.apc
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0823.0.lcssa, i64 noundef %i.awe) #14
  %i.awf = ptrtoint ptr %.sroa.11839.0 to i64
  %i.awg = ptrtoint ptr %.sroa.0834.0 to i64
  %i.awh = sub i64 %i.awf, %i.awg
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0834.0, i64 noundef %i.awh) #14
  %i.awi = ptrtoint ptr %.sroa.0842.0 to i64
  %i.awj = sub i64 %.sroa.11847.0, %i.awi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0842.0, i64 noundef %i.awj) #14
  %.idx1389.a = shl nuw nsw i64 %i.adx, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.aea, i64 noundef %.idx1389.a) #14
  %i.awk = ptrtoint ptr %.sroa.0858.0 to i64
  %i.awl = sub i64 %.sroa.11863.0, %i.awk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0858.0, i64 noundef %i.awl) #14
  %10 = ptrtoint ptr %.sroa.11871.0 to i64
  %i.awm = ptrtoint ptr %.sroa.0866.0 to i64
  %i.awn = sub i64 %10, %i.awm
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0866.0, i64 noundef %i.awn) #14
  %.idx1390.a = shl nuw nsw i64 %i.vn, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.vq, i64 noundef %.idx1390.a) #14
  %11 = ptrtoint ptr %.sroa.11887.0 to i64
  %i.awo = ptrtoint ptr %.sroa.0882.0 to i64
  %i.awp = sub i64 %11, %i.awo
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0882.0, i64 noundef %i.awp) #14
  %i.awq = ptrtoint ptr %.sroa.17.0 to i64
  %i.awr = ptrtoint ptr %.sroa.0890.0 to i64
  %i.aws = sub i64 %i.awq, %i.awr
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0890.0, i64 noundef %i.aws) #14
  call void @_ZdlPvm(ptr noundef nonnull %i.jx, i64 noundef %i.jw) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  %.idx1391.a = shl nuw nsw i64 %i.hr, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.hu, i64 noundef %.idx1391.a) #14
  call void @_ZdlPvm(ptr noundef nonnull %i.hi, i64 noundef %i.hh) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248) %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret void

bb.fw:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit979, %.loopexit.split-lp980, %.loopexit984, %.loopexit.split-lp985, %bb.fi, %.thread931
  %.pn195934 = phi { ptr, i32 } [ %i.avk, %.thread931 ], [ %lpad.loopexit.split-lp982, %.loopexit.split-lp980 ], [ %lpad.loopexit.split-lp987, %.loopexit.split-lp985 ], [ %i.asa, %bb.fi ], [ %lpad.loopexit986, %.loopexit984 ], [ %lpad.loopexit981, %.loopexit979 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZdlPvm(ptr noundef nonnull %i.apz, i64 noundef %i.apy) #14
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit502

_ZNSt6vectorIiSaIiEED2Ev.exit502:                 ; preds = %.loopexit989, %.loopexit.split-lp990, %bb.fw, %bb.en
  %.sroa.0823.3 = phi ptr [ %.sroa.0823.0.lcssa, %bb.fw ], [ %.sroa.0823.1, %bb.en ], [ %.sroa.0823.21087, %.loopexit989 ], [ %.sroa.0823.21087, %.loopexit.split-lp990 ] ; 2 uses
  %.sroa.14.3 = phi ptr [ %.sroa.14.0.lcssa, %bb.fw ], [ %.sroa.14.1, %bb.en ], [ %.sroa.14.21089, %.loopexit989 ], [ %.sroa.14.21089, %.loopexit.split-lp990 ] ; 2 uses
  %.pn199 = phi { ptr, i32 } [ %.pn195934, %bb.fw ], [ %i.anv, %bb.en ], [ %lpad.loopexit991, %.loopexit989 ], [ %lpad.loopexit.split-lp992, %.loopexit.split-lp990 ] ; 2 uses
  %.not.i.i.i503 = icmp eq ptr %.sroa.0808.0, null
  br i1 %.not.i.i.i503, label %_ZNSt6vectorIiSaIiEED2Ev.exit504, label %_ZNSt6vectorIiSaIiEED2Ev.exit502.thread

_ZNSt6vectorIiSaIiEED2Ev.exit502.thread:          ; preds = %bb.fg, %bb.fh, %_ZNSt6vectorIiSaIiEED2Ev.exit502
  %.pn199944 = phi { ptr, i32 } [ %.pn199, %_ZNSt6vectorIiSaIiEED2Ev.exit502 ], [ %i.arz, %bb.fh ], [ %i.ary, %bb.fg ]
  %.sroa.14.3942 = phi ptr [ %.sroa.14.3, %_ZNSt6vectorIiSaIiEED2Ev.exit502 ], [ %.sroa.14.0.lcssa, %bb.fh ], [ %.sroa.14.0.lcssa, %bb.fg ]
  %.sroa.0823.3940 = phi ptr [ %.sroa.0823.3, %_ZNSt6vectorIiSaIiEED2Ev.exit502 ], [ %.sroa.0823.0.lcssa, %bb.fh ], [ %.sroa.0823.0.lcssa, %bb.fg ]
  %i.awt = ptrtoint ptr %.sroa.13.0 to i64
  %i.awu = ptrtoint ptr %.sroa.0808.0 to i64
  %i.awv = sub i64 %i.awt, %i.awu
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0808.0, i64 noundef %i.awv) #14
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit504

_ZNSt6vectorIiSaIiEED2Ev.exit504:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit502.thread, %_ZNSt6vectorIiSaIiEED2Ev.exit502
  %.sroa.0823.4 = phi ptr [ %.sroa.0823.3940, %_ZNSt6vectorIiSaIiEED2Ev.exit502.thread ], [ %.sroa.0823.3, %_ZNSt6vectorIiSaIiEED2Ev.exit502 ]
  %.sroa.14.4 = phi ptr [ %.sroa.14.3942, %_ZNSt6vectorIiSaIiEED2Ev.exit502.thread ], [ %.sroa.14.3, %_ZNSt6vectorIiSaIiEED2Ev.exit502 ]
  %.pn199.pn = phi { ptr, i32 } [ %.pn199944, %_ZNSt6vectorIiSaIiEED2Ev.exit502.thread ], [ %.pn199, %_ZNSt6vectorIiSaIiEED2Ev.exit502 ]
  %i.aww = ptrtoint ptr %.sroa.14.4 to i64
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit506

_ZNSt6vectorIiSaIiEED2Ev.exit506:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit504, %_ZNSt6vectorIiSaIiEED2Ev.exit504.thread
  %.pn199.pn1344 = phi { ptr, i32 } [ %i.anu, %_ZNSt6vectorIiSaIiEED2Ev.exit504.thread ], [ %.pn199.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit504 ] ; 2 uses
  %.sroa.14.41342 = phi i64 [ 0, %_ZNSt6vectorIiSaIiEED2Ev.exit504.thread ], [ %i.aww, %_ZNSt6vectorIiSaIiEED2Ev.exit504 ]
  %.sroa.0823.41340 = phi ptr [ null, %_ZNSt6vectorIiSaIiEED2Ev.exit504.thread ], [ %.sroa.0823.4, %_ZNSt6vectorIiSaIiEED2Ev.exit504 ] ; 3 uses
  %.idx1392.a = shl nuw nsw i64 %i.amx, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.ana, i64 noundef %.idx1392.a) #14
  %.not.i.i.i507 = icmp eq ptr %.sroa.0823.41340, null
  br i1 %.not.i.i.i507, label %_ZNSt6vectorIiSaIiEED2Ev.exit508, label %bb.fx

bb.fx:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit506
  %i.awx = ptrtoint ptr %.sroa.0823.41340 to i64
  %i.awy = sub i64 %.sroa.14.41342, %i.awx
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0823.41340, i64 noundef %i.awy) #14
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit508

_ZNSt6vectorIiSaIiEED2Ev.exit508:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit506.thread, %_ZNSt6vectorIiSaIiEED2Ev.exit506, %bb.fx
  %.pn199.pn.pn950 = phi { ptr, i32 } [ %i.ant, %_ZNSt6vectorIiSaIiEED2Ev.exit506.thread ], [ %.pn199.pn1344, %_ZNSt6vectorIiSaIiEED2Ev.exit506 ], [ %.pn199.pn1344, %bb.fx ] ; 2 uses
  %.not.i.i.i509 = icmp eq ptr %.sroa.0834.0, null
  br i1 %.not.i.i.i509, label %_ZNSt6vectorIiSaIiEED2Ev.exit510, label %bb.fy

bb.fy:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit508
  %i.awz = ptrtoint ptr %.sroa.11839.0 to i64
  %i.axa = ptrtoint ptr %.sroa.0834.0 to i64
  %i.axb = sub i64 %i.awz, %i.axa
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0834.0, i64 noundef %i.axb) #14
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit510

_ZNSt6vectorIiSaIiEED2Ev.exit510:                 ; preds = %.loopexit1003, %.loopexit.split-lp1004, %bb.em, %_ZNSt6vectorIiSaIiEED2Ev.exit508, %bb.fy, %bb.dl
  %.pn206 = phi { ptr, i32 } [ %.pn199.pn.pn950, %_ZNSt6vectorIiSaIiEED2Ev.exit508 ], [ %i.afl, %bb.dl ], [ %lpad.loopexit.split-lp1006, %.loopexit.split-lp1004 ], [ %.pn199.pn.pn950, %bb.fy ], [ %i.ans, %bb.em ], [ %lpad.loopexit1005, %.loopexit1003 ] ; 2 uses
  %.not.i.i.i511 = icmp eq ptr %.sroa.0842.0, null
  br i1 %.not.i.i.i511, label %_ZNSt6vectorIiSaIiEED2Ev.exit512, label %_ZNSt6vectorIiSaIiEED2Ev.exit510.thread1346

_ZNSt6vectorIiSaIiEED2Ev.exit510.thread1346:      ; preds = %.loopexit.split-lp999, %.loopexit998, %_ZNSt6vectorIiSaIiEED2Ev.exit510.thread, %_ZNSt6vectorIiSaIiEED2Ev.exit510
  %.pn206953 = phi { ptr, i32 } [ %i.amk, %_ZNSt6vectorIiSaIiEED2Ev.exit510.thread ], [ %.pn206, %_ZNSt6vectorIiSaIiEED2Ev.exit510 ], [ %lpad.loopexit.split-lp1001, %.loopexit.split-lp999 ], [ %lpad.loopexit1000, %.loopexit998 ]
  %i.axc = ptrtoint ptr %.sroa.0842.0 to i64
  %i.axd = sub i64 %.sroa.11847.0, %i.axc
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0842.0, i64 noundef %i.axd) #14
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit512

_ZNSt6vectorIiSaIiEED2Ev.exit512:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit510, %_ZNSt6vectorIiSaIiEED2Ev.exit510.thread1346, %_ZNSt6vectorIiSaIiEED2Ev.exit512.thread
  %.pn206.pn1355 = phi { ptr, i32 } [ %i.afk, %_ZNSt6vectorIiSaIiEED2Ev.exit512.thread ], [ %.pn206953, %_ZNSt6vectorIiSaIiEED2Ev.exit510.thread1346 ], [ %.pn206, %_ZNSt6vectorIiSaIiEED2Ev.exit510 ]
  %.idx1393.a = shl nuw nsw i64 %i.adx, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.aea, i64 noundef %.idx1393.a) #14
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit514

_ZNSt6vectorIiSaIiEED2Ev.exit514:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit512, %bb.dk
  %.pn206.pn.pn = phi { ptr, i32 } [ %i.afj, %bb.dk ], [ %.pn206.pn1355, %_ZNSt6vectorIiSaIiEED2Ev.exit512 ] ; 2 uses
  %.not.i.i.i515 = icmp eq ptr %.sroa.0858.0, null
  br i1 %.not.i.i.i515, label %_ZNSt6vectorIiSaIiEED2Ev.exit516, label %bb.fz

bb.fz:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit514
  %i.axe = ptrtoint ptr %.sroa.0858.0 to i64
  %i.axf = sub i64 %.sroa.11863.0, %i.axe
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0858.0, i64 noundef %i.axf) #14
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit516

_ZNSt6vectorIiSaIiEED2Ev.exit516:                 ; preds = %.loopexit1018, %.loopexit.split-lp1019, %bb.dj, %_ZNSt6vectorIiSaIiEED2Ev.exit514, %bb.fz, %bb.ci
  %.pn213 = phi { ptr, i32 } [ %.pn206.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit514 ], [ %i.xb, %bb.ci ], [ %lpad.loopexit.split-lp1021, %.loopexit.split-lp1019 ], [ %.pn206.pn.pn, %bb.fz ], [ %i.afi, %bb.dj ], [ %lpad.loopexit1020, %.loopexit1018 ] ; 2 uses
  %.not.i.i.i517 = icmp eq ptr %.sroa.0866.0, null
  br i1 %.not.i.i.i517, label %_ZNSt6vectorIiSaIiEED2Ev.exit518, label %_ZNSt6vectorIiSaIiEED2Ev.exit516.thread1356

_ZNSt6vectorIiSaIiEED2Ev.exit516.thread1356:      ; preds = %.loopexit.split-lp1014, %.loopexit1013, %_ZNSt6vectorIiSaIiEED2Ev.exit516.thread, %_ZNSt6vectorIiSaIiEED2Ev.exit516
  %.pn213957 = phi { ptr, i32 } [ %i.adk, %_ZNSt6vectorIiSaIiEED2Ev.exit516.thread ], [ %.pn213, %_ZNSt6vectorIiSaIiEED2Ev.exit516 ], [ %lpad.loopexit.split-lp1016, %.loopexit.split-lp1014 ], [ %lpad.loopexit1015, %.loopexit1013 ]
  %12 = ptrtoint ptr %.sroa.11871.0 to i64
  %i.axg = ptrtoint ptr %.sroa.0866.0 to i64
  %i.axh = sub i64 %12, %i.axg
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0866.0, i64 noundef %i.axh) #14
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit518

_ZNSt6vectorIiSaIiEED2Ev.exit518:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit516, %_ZNSt6vectorIiSaIiEED2Ev.exit516.thread1356, %_ZNSt6vectorIiSaIiEED2Ev.exit518.thread
  %.pn213.pn1365 = phi { ptr, i32 } [ %i.xa, %_ZNSt6vectorIiSaIiEED2Ev.exit518.thread ], [ %.pn213957, %_ZNSt6vectorIiSaIiEED2Ev.exit516.thread1356 ], [ %.pn213, %_ZNSt6vectorIiSaIiEED2Ev.exit516 ]
  %.idx1394 = shl nuw nsw i64 %i.vn, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.vq, i64 noundef %.idx1394) #14
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit520

_ZNSt6vectorIiSaIiEED2Ev.exit520:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit518, %bb.ch
  %.pn213.pn.pn = phi { ptr, i32 } [ %i.wz, %bb.ch ], [ %.pn213.pn1365, %_ZNSt6vectorIiSaIiEED2Ev.exit518 ] ; 2 uses
  %.not.i.i.i521 = icmp eq ptr %.sroa.0882.0, null
  br i1 %.not.i.i.i521, label %_ZNSt6vectorIiSaIiEED2Ev.exit522, label %bb.ga

bb.ga:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit520
  %13 = ptrtoint ptr %.sroa.11887.0 to i64
  %i.axi = ptrtoint ptr %.sroa.0882.0 to i64
  %i.axj = sub i64 %13, %i.axi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0882.0, i64 noundef %i.axj) #14
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit522

_ZNSt6vectorIiSaIiEED2Ev.exit522:                 ; preds = %bb.ga, %_ZNSt6vectorIiSaIiEED2Ev.exit520, %bb.cg
  %.pn213.pn.pn.pn = phi { ptr, i32 } [ %i.wy, %bb.cg ], [ %.pn213.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit520 ], [ %.pn213.pn.pn, %bb.ga ] ; 2 uses
  %.not.i.i.i523 = icmp eq ptr %.sroa.0890.0, null
  br i1 %.not.i.i.i523, label %_ZNSt6vectorIiSaIiEED2Ev.exit524.thread, label %bb.gb

bb.gb:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit522
  %i.axk = ptrtoint ptr %.sroa.17.0 to i64
  %i.axl = ptrtoint ptr %.sroa.0890.0 to i64
  %i.axm = sub i64 %i.axk, %i.axl
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0890.0, i64 noundef %i.axm) #14
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit524.thread

_ZNSt6vectorIiSaIiEED2Ev.exit524.thread:          ; preds = %.loopexit1027, %.loopexit.split-lp1028, %.loopexit1033, %.loopexit.split-lp1034, %.loopexit1038, %.loopexit.split-lp1039, %bb.bt, %bb.gb, %_ZNSt6vectorIiSaIiEED2Ev.exit522, %bb.cf, %bb.az
  %.pn220961 = phi { ptr, i32 } [ %i.sa, %bb.bt ], [ %i.mc, %bb.az ], [ %lpad.loopexit.split-lp1041, %.loopexit.split-lp1039 ], [ %i.wx, %bb.cf ], [ %.pn213.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit522 ], [ %lpad.loopexit.split-lp1036, %.loopexit.split-lp1034 ], [ %.pn213.pn.pn.pn, %bb.gb ], [ %lpad.loopexit1040, %.loopexit1038 ], [ %lpad.loopexit1035, %.loopexit1033 ], [ %lpad.loopexit1029, %.loopexit1027 ], [ %lpad.loopexit.split-lp1030, %.loopexit.split-lp1028 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.jx, i64 noundef %i.jw) #14
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit528

_ZNSt6vectorIiSaIiEED2Ev.exit528:                 ; preds = %bb.ax, %bb.ay, %_ZNSt6vectorIiSaIiEED2Ev.exit524.thread
  %.pn220.pn.pn965 = phi { ptr, i32 } [ %.pn220961, %_ZNSt6vectorIiSaIiEED2Ev.exit524.thread ], [ %i.mb, %bb.ay ], [ %i.ma, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  %.idx1395 = shl nuw nsw i64 %i.hr, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.hu, i64 noundef %.idx1395) #14
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit528.thread

_ZNSt6vectorIiSaIiEED2Ev.exit528.thread:          ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit528, %bb.av, %bb.aw
  %.pn220.pn.pn.pn.pn969 = phi { ptr, i32 } [ %.pn220.pn.pn965, %_ZNSt6vectorIiSaIiEED2Ev.exit528 ], [ %i.lz, %bb.aw ], [ %i.ly, %bb.av ]
  call void @_ZdlPvm(ptr noundef nonnull %i.hi, i64 noundef %i.hh) #14
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit530

_ZNSt6vectorIiSaIiEED2Ev.exit530:                 ; preds = %bb.au, %_ZNSt6vectorIiSaIiEED2Ev.exit528.thread, %bb.at
  %.pn220.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.lw, %bb.at ], [ %i.lx, %bb.au ], [ %.pn220.pn.pn.pn.pn969, %_ZNSt6vectorIiSaIiEED2Ev.exit528.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.gc

bb.gc:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit530, %bb.ae, %.body
  %.pn220.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn220.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit530 ], [ %i.gv, %bb.ae ], [ %.pn, %.body ]
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248) %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  resume { ptr, i32 } %.pn220.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10ExportGold12writeVarFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_PKd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(188) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::basic_ofstream", align 8 ; 46 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(248) %4)
  %i.a = load i32, ptr @_ZN8Parallel4mypeE, align 4, !tbaa !9
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZNSolsEPFRSoS_E.exit109

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %i.c = load ptr, ptr %1, align 8, !tbaa !28, !noalias !144
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !26, !noalias !144 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.f, ptr %6, align 8, !tbaa !23, !alias.scope !145
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i64 0, ptr %i.g, align 8, !tbaa !26, !alias.scope !145
  store i8 0, ptr %i.f, align 8, !tbaa !27, !alias.scope !145
  %i.h = add i64 %i.e, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.h)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %i.g, align 8, !tbaa !26, !alias.scope !145
  %i.j = sub i64 4611686018427387903, %i.i
  %i.k = icmp ult i64 %i.j, %i.e
  br i1 %i.k, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.c
  %i.l = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %i.c, i64 noundef %i.e)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.d ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.m = load i64, ptr %i.g, align 8, !tbaa !26, !alias.scope !145
  %i.n = icmp eq i64 %i.m, 4611686018427387903
  br i1 %i.n, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #16
          to label %.cont.i.i unwind label %bb.d

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.30, i64 noundef 1)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %6, align 8, !tbaa !28, !alias.scope !145 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.f
  br i1 %i.r, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !146)
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !26, !noalias !146 ; 2 uses
  %i.u = load i64, ptr %i.g, align 8, !tbaa !26, !noalias !146
  %i.v = sub i64 4611686018427387903, %i.u
  %i.w = icmp ult i64 %i.v, %i.t
  br i1 %i.w, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.e:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #16
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.x = load ptr, ptr %2, align 8, !tbaa !28, !noalias !146
  %i.y = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %i.x, i64 noundef %i.t)
          to label %.noexc81 unwind label %bb.k   ; 6 uses

.noexc81:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.z, ptr %5, align 8, !tbaa !23, !alias.scope !146
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !28  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 5 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.f:                                             ; preds = %.noexc81
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !26 ; 3 uses
  %i.af = icmp ult i64 %i.ae, 16
  call void @llvm.assume(i1 %i.af)
  %i.ag = add nuw nsw i64 %i.ae, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(1) %i.ab, i64 %i.ag, i1 false)
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc81
  store ptr %i.aa, ptr %5, align 8, !tbaa !28, !alias.scope !146
  %i.ah = load i64, ptr %i.ab, align 8, !tbaa !27
  store i64 %i.ah, ptr %i.z, align 8, !tbaa !27, !alias.scope !146
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !26
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %i.ai = phi i64 [ %i.ae, %bb.f ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.ai, ptr %i.ak, align 8, !tbaa !26, !alias.scope !146
  store ptr %i.ab, ptr %i.y, align 8, !tbaa !28
  store i64 0, ptr %i.aj, align 8, !tbaa !26
  store i8 0, ptr %i.ab, align 8, !tbaa !27
  %i.al = load ptr, ptr %6, align 8, !tbaa !28    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.f
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %bb.g
  %i.an = load i64, ptr %i.f, align 8, !tbaa !27
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.ap = load ptr, ptr %5, align 8, !tbaa !28
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ar = invoke noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(240) %i.aq, ptr noundef %i.ap, i32 noundef 16)
          to label %.noexc83 unwind label %bb.l

.noexc83:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.not.i = icmp eq ptr %i.ar, null
  %i.as = load ptr, ptr %4, align 8, !tbaa !30
  %i.at = getelementptr i8, ptr %i.as, i64 -24
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr inbounds i8, ptr %4, i64 %i.au ; 2 uses
  br i1 %.not.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.noexc83
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !39
  %i.ay = or i32 %i.ax, 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.noexc83
  %.sink.i = phi i32 [ %i.ay, %bb.h ], [ 0, %.noexc83 ]
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.av, i32 noundef %.sink.i)
          to label %_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode.exit unwind label %bb.l

_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode.exit: ; preds = %bb.i
  %i.az = load ptr, ptr %4, align 8, !tbaa !30
  %i.ba = getelementptr i8, ptr %i.az, i64 -24
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds i8, ptr %4, i64 %i.bb
end_hunk_1
