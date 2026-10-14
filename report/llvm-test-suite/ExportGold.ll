Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/ExportGold?download=true
inline.NumInlined: 734
inline.NumDeleted: 191
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN10ExportGold12writeGeoFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEid:bb.a
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.su, %vector.body ]
  %vec.phi1407 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.sv, %vector.body ]
  %i.ss = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.sh, i64 %i.ss ; 2 uses
  %i.st = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !9
  %wide.load1408 = load <4 x i32>, ptr %i.st, align 4, !tbaa !9
  %i.su = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.sv = add <4 x i32> %wide.load1408, %vec.phi1407 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.sw = icmp eq i64 %index.next, %n.vec
  br i1 %i.sw, label %middle.block, label %vector.body, !llvm.loop !92

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.sv, %i.su
  %i.sx = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.sp, %n.vec
  br i1 %cmp.n, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit, label %.lr.ph.i309.preheader1510

.lr.ph.i309.preheader1510:                        ; preds = %.lr.ph.i309.preheader, %middle.block
  %.07.i.ph = phi i32 [ 0, %.lr.ph.i309.preheader ], [ %i.sx, %middle.block ]
  %.sroa.02.06.i.ph = phi ptr [ %i.sh, %.lr.ph.i309.preheader ], [ %i.sr, %middle.block ]
  br label %.lr.ph.i309

.lr.ph.i309:                                      ; preds = %.lr.ph.i309.preheader1510, %.lr.ph.i309
  %.07.i = phi i32 [ %i.sz, %.lr.ph.i309 ], [ %.07.i.ph, %.lr.ph.i309.preheader1510 ]
  %.sroa.02.06.i = phi ptr [ %i.ta, %.lr.ph.i309 ], [ %.sroa.02.06.i.ph, %.lr.ph.i309.preheader1510 ] ; 2 uses
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
  %min.iters.check1410 = icmp ult i64 %i.ti, 28
  br i1 %min.iters.check1410, label %.lr.ph.i313.preheader1506, label %vector.ph1411

vector.ph1411:                                    ; preds = %.lr.ph.i313.preheader
  %n.vec1412 = and i64 %i.tk, 9223372036854775800 ; 3 uses
  %i.tl = shl i64 %n.vec1412, 2
  %i.tm = getelementptr i8, ptr %i.tc, i64 %i.tl
  br label %vector.body1413

vector.body1413:                                  ; preds = %vector.body1413, %vector.ph1411
  %index1414 = phi i64 [ 0, %vector.ph1411 ], [ %index.next1420, %vector.body1413 ] ; 2 uses
  %vec.phi1415 = phi <4 x i32> [ zeroinitializer, %vector.ph1411 ], [ %i.tp, %vector.body1413 ]
  %vec.phi1416 = phi <4 x i32> [ zeroinitializer, %vector.ph1411 ], [ %i.tq, %vector.body1413 ]
  %i.tn = shl i64 %index1414, 2
  %next.gep1417 = getelementptr i8, ptr %i.tc, i64 %i.tn ; 2 uses
  %i.to = getelementptr i8, ptr %next.gep1417, i64 16
  %wide.load1418 = load <4 x i32>, ptr %next.gep1417, align 4, !tbaa !9
  %wide.load1419 = load <4 x i32>, ptr %i.to, align 4, !tbaa !9
  %i.tp = add <4 x i32> %wide.load1418, %vec.phi1415 ; 2 uses
  %i.tq = add <4 x i32> %wide.load1419, %vec.phi1416 ; 2 uses
  %index.next1420 = add nuw i64 %index1414, 8     ; 2 uses
  %i.tr = icmp eq i64 %index.next1420, %n.vec1412
  br i1 %i.tr, label %middle.block1421, label %vector.body1413, !llvm.loop !94

middle.block1421:                                 ; preds = %vector.body1413
  %bin.rdx1422 = add <4 x i32> %i.tq, %i.tp
  %i.ts = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1422) ; 2 uses
  %cmp.n1423 = icmp eq i64 %i.tk, %n.vec1412
  br i1 %cmp.n1423, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit319, label %.lr.ph.i313.preheader1506

.lr.ph.i313.preheader1506:                        ; preds = %.lr.ph.i313.preheader, %middle.block1421
  %.07.i314.ph = phi i32 [ 0, %.lr.ph.i313.preheader ], [ %i.ts, %middle.block1421 ]
  %.sroa.02.06.i315.ph = phi ptr [ %i.tc, %.lr.ph.i313.preheader ], [ %i.tm, %middle.block1421 ]
  br label %.lr.ph.i313

.lr.ph.i313:                                      ; preds = %.lr.ph.i313.preheader1506, %.lr.ph.i313
  %.07.i314 = phi i32 [ %i.tu, %.lr.ph.i313 ], [ %.07.i314.ph, %.lr.ph.i313.preheader1506 ]
  %.sroa.02.06.i315 = phi ptr [ %i.tv, %.lr.ph.i313 ], [ %.sroa.02.06.i315.ph, %.lr.ph.i313.preheader1506 ] ; 2 uses
  %i.tt = load i32, ptr %.sroa.02.06.i315, align 4, !tbaa !9
  %i.tu = add nsw i32 %i.tt, %.07.i314            ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i315, i64 4 ; 2 uses
  %.not.i316 = icmp eq ptr %i.tv, %i.te
  br i1 %.not.i316, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit319, label %.lr.ph.i313, !llvm.loop !95

_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit319: ; preds = %.lr.ph.i313, %middle.block1421, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit
  %.0.lcssa.i318 = phi i32 [ 0, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit ], [ %i.ts, %middle.block1421 ], [ %i.tu, %.lr.ph.i313 ]
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
  %min.iters.check1427 = icmp ult i64 %i.ud, 28
  br i1 %min.iters.check1427, label %.lr.ph.i321.preheader1502, label %vector.ph1428

vector.ph1428:                                    ; preds = %.lr.ph.i321.preheader
  %n.vec1429 = and i64 %i.uf, 9223372036854775800 ; 3 uses
  %i.ug = shl i64 %n.vec1429, 2
  %i.uh = getelementptr i8, ptr %i.tx, i64 %i.ug
  br label %vector.body1430

vector.body1430:                                  ; preds = %vector.body1430, %vector.ph1428
  %index1431 = phi i64 [ 0, %vector.ph1428 ], [ %index.next1437, %vector.body1430 ] ; 2 uses
  %vec.phi1432 = phi <4 x i32> [ zeroinitializer, %vector.ph1428 ], [ %i.uk, %vector.body1430 ]
  %vec.phi1433 = phi <4 x i32> [ zeroinitializer, %vector.ph1428 ], [ %i.ul, %vector.body1430 ]
  %i.ui = shl i64 %index1431, 2
  %next.gep1434 = getelementptr i8, ptr %i.tx, i64 %i.ui ; 2 uses
  %i.uj = getelementptr i8, ptr %next.gep1434, i64 16
  %wide.load1435 = load <4 x i32>, ptr %next.gep1434, align 4, !tbaa !9
  %wide.load1436 = load <4 x i32>, ptr %i.uj, align 4, !tbaa !9
  %i.uk = add <4 x i32> %wide.load1435, %vec.phi1432 ; 2 uses
  %i.ul = add <4 x i32> %wide.load1436, %vec.phi1433 ; 2 uses
  %index.next1437 = add nuw i64 %index1431, 8     ; 2 uses
  %i.um = icmp eq i64 %index.next1437, %n.vec1429
  br i1 %i.um, label %middle.block1438, label %vector.body1430, !llvm.loop !96

middle.block1438:                                 ; preds = %vector.body1430
  %bin.rdx1439 = add <4 x i32> %i.ul, %i.uk
  %i.un = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1439) ; 2 uses
  %cmp.n1440 = icmp eq i64 %i.uf, %n.vec1429
  br i1 %cmp.n1440, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit327, label %.lr.ph.i321.preheader1502

.lr.ph.i321.preheader1502:                        ; preds = %.lr.ph.i321.preheader, %middle.block1438
  %.07.i322.ph = phi i32 [ 0, %.lr.ph.i321.preheader ], [ %i.un, %middle.block1438 ]
  %.sroa.02.06.i323.ph = phi ptr [ %i.tx, %.lr.ph.i321.preheader ], [ %i.uh, %middle.block1438 ]
  br label %.lr.ph.i321

.lr.ph.i321:                                      ; preds = %.lr.ph.i321.preheader1502, %.lr.ph.i321
  %.07.i322 = phi i32 [ %i.up, %.lr.ph.i321 ], [ %.07.i322.ph, %.lr.ph.i321.preheader1502 ]
  %.sroa.02.06.i323 = phi ptr [ %i.uq, %.lr.ph.i321 ], [ %.sroa.02.06.i323.ph, %.lr.ph.i321.preheader1502 ] ; 2 uses
  %i.uo = load i32, ptr %.sroa.02.06.i323, align 4, !tbaa !9
  %i.up = add nsw i32 %i.uo, %.07.i322            ; 2 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i323, i64 4 ; 2 uses
  %.not.i324 = icmp eq ptr %i.uq, %i.tz
  br i1 %.not.i324, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit327, label %.lr.ph.i321, !llvm.loop !97

_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit327: ; preds = %.lr.ph.i321, %middle.block1438, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit319
  %.0.lcssa.i326 = phi i32 [ 0, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit319 ], [ %i.un, %middle.block1438 ], [ %i.up, %.lr.ph.i321 ]
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
  %.sroa.0890.0 = phi ptr [ %i.uz, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i330 ], [ %i.uz, %.noexc335 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i328 ] ; 28 uses
  %.0.i.i.i.i.i332 = phi ptr [ %i.ve, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i330 ], [ %i.vb, %.noexc335 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i328 ] ; 3 uses
  %i.vf = mul nsw i32 %i.pt, 3                    ; 2 uses
  %i.vg = sext i32 %i.vf to i64                   ; 2 uses
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
  %i.vi = shl nuw nsw i64 %i.vg, 2                ; 2 uses
  %i.vj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vi) #18
          to label %.noexc344 unwind label %bb.cg ; 4 uses

.noexc344:                                        ; preds = %bb.ca
  %i.vk = getelementptr inbounds nuw [4 x i8], ptr %i.vj, i64 %i.vg
  store i32 0, ptr %i.vj, align 4, !tbaa !9
  %i.vl = getelementptr i8, ptr %i.vj, i64 4
  %.idx.i.i.i.i.i.i.i340 = add nsw i64 %i.vi, -4
  call void @llvm.memset.p0.i64(ptr align 4 %i.vl, i8 0, i64 %.idx.i.i.i.i.i.i.i340, i1 false), !tbaa !9
  %i.vm = ptrtoint ptr %i.vk to i64
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit345

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit345:            ; preds = %.noexc344, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i337
  %.sroa.0882.0 = phi ptr [ %i.vj, %.noexc344 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i337 ] ; 9 uses
  %.sroa.11887.0 = phi i64 [ %i.vm, %.noexc344 ], [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i337 ] ; 2 uses
  %i.vn = load i32, ptr %i.tb, align 8, !tbaa !72 ; 3 uses
  %i.vo = sext i32 %i.vn to i64                   ; 4 uses
  %i.vp = icmp slt i32 %i.vn, 0
  br i1 %i.vp, label %bb.cb, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i346

bb.cb:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit345
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.33) #16
          to label %.noexc352 unwind label %bb.ch

.noexc352:                                        ; preds = %bb.cb
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i346: ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit345
  %.not.i.i.i.i347 = icmp ne i32 %i.vn, 0
  call void @llvm.assume(i1 %.not.i.i.i.i347)
  %i.vq = shl nuw nsw i64 %i.vo, 2
  %i.vr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vq) #18
          to label %.noexc353 unwind label %bb.ch ; 6 uses

.noexc353:                                        ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i346
  store i32 0, ptr %i.vr, align 4, !tbaa !9
  %i.vs = add nsw i64 %i.vo, -1                   ; 2 uses
  %i.vt = icmp eq i64 %i.vs, 0
  br i1 %i.vt, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit354, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i348

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i348: ; preds = %.noexc353
  %i.vu = getelementptr i8, ptr %i.vr, i64 4
  %.idx.i.i.i.i.i.i.i349 = shl nuw nsw i64 %i.vs, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.vu, i8 0, i64 %.idx.i.i.i.i.i.i.i349, i1 false), !tbaa !9
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit354

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit354:            ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i348, %.noexc353
  %.pr1282 = load i32, ptr %i.tb, align 8, !tbaa !72 ; 3 uses
  %i.vv = mul nsw i32 %.pr1282, 3
  %i.vw = sext i32 %i.vv to i64                   ; 2 uses
  %i.vx = icmp slt i32 %.pr1282, 0
  br i1 %i.vx, label %bb.cc, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i355

bb.cc:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit354
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.33) #16
          to label %.noexc361 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit518.thread

.noexc361:                                        ; preds = %bb.cc
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i355: ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit354
  %.not.i.i.i.i356 = icmp eq i32 %.pr1282, 0
  br i1 %.not.i.i.i.i356, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit363, label %bb.cd

bb.cd:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i355
  %i.vy = shl nuw nsw i64 %i.vw, 2                ; 2 uses
  %i.vz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vy) #18
          to label %.noexc362 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit518.thread ; 4 uses

.noexc362:                                        ; preds = %bb.cd
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr %i.vz, i64 %i.vw
  store i32 0, ptr %i.vz, align 4, !tbaa !9
  %i.wb = getelementptr i8, ptr %i.vz, i64 4
  %.idx.i.i.i.i.i.i.i358 = add nsw i64 %i.vy, -4
  call void @llvm.memset.p0.i64(ptr align 4 %i.wb, i8 0, i64 %.idx.i.i.i.i.i.i.i358, i1 false), !tbaa !9
  %i.wc = ptrtoint ptr %i.wa to i64
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit363

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit363:            ; preds = %.noexc362, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i355
  %.sroa.0866.0 = phi ptr [ %i.vz, %.noexc362 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i355 ] ; 9 uses
  %.sroa.11871.0 = phi i64 [ %i.wc, %.noexc362 ], [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i355 ] ; 2 uses
  %i.wd = load ptr, ptr %i.pl, align 8, !tbaa !19
  %i.we = load ptr, ptr %i.sb, align 8, !tbaa !19
  invoke void @_ZN8Parallel7gathervIiEEvPKT_iPS1_PKi(ptr noundef nonnull %i.wd, i32 noundef %i.pt, ptr noundef nonnull %i.vr, ptr noundef nonnull %i.we)
          to label %bb.ce unwind label %bb.ci

bb.ce:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit363
  %i.wf = load i32, ptr @_ZN8Parallel4mypeE, align 4, !tbaa !9
  %i.wg = icmp eq i32 %i.wf, 0
  br i1 %i.wg, label %.preheader1023, label %.loopexit1024

.preheader1023:                                   ; preds = %bb.ce
  %i.wh = load i32, ptr @_ZN8Parallel5numpeE, align 4, !tbaa !9 ; 3 uses
  %i.wi = icmp sgt i32 %i.wh, 0
  br i1 %i.wi, label %.lr.ph1068, label %.loopexit1024

.lr.ph1068:                                       ; preds = %.preheader1023
  %i.wj = load ptr, ptr %i.sb, align 8, !tbaa !19 ; 7 uses
  %wide.trip.count = zext nneg i32 %i.wh to i64   ; 5 uses
  %min.iters.check1445 = icmp ult i32 %i.wh, 8
  %6 = ptrtoaddr ptr %.sroa.0890.0 to i64
  %i.wk = ptrtoaddr ptr %i.wj to i64
  %i.wl = sub i64 %i.wk, %6
  %diff.check = icmp ugt i64 %i.wl, -32
  %or.cond = select i1 %min.iters.check1445, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph1444.preheader, label %vector.ph1446

vector.ph1446:                                    ; preds = %.lr.ph1068
  %n.vec1447 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vector.body1448

vector.body1448:                                  ; preds = %vector.body1448, %vector.ph1446
  %index1449 = phi i64 [ 0, %vector.ph1446 ], [ %index.next1452, %vector.body1448 ] ; 3 uses
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %i.wj, i64 %index1449 ; 2 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 16
  %wide.load1450 = load <4 x i32>, ptr %i.wm, align 4, !tbaa !9
  %wide.load1451 = load <4 x i32>, ptr %i.wn, align 4, !tbaa !9
  %i.wo = mul nsw <4 x i32> %wide.load1450, splat (i32 3)
  %i.wp = mul nsw <4 x i32> %wide.load1451, splat (i32 3)
  %i.wq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0890.0, i64 %index1449 ; 2 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 16
  store <4 x i32> %i.wo, ptr %i.wq, align 4, !tbaa !9
  store <4 x i32> %i.wp, ptr %i.wr, align 4, !tbaa !9
  %index.next1452 = add nuw i64 %index1449, 8     ; 2 uses
  %i.ws = icmp eq i64 %index.next1452, %n.vec1447
  br i1 %i.ws, label %middle.block1453, label %vector.body1448, !llvm.loop !98

middle.block1453:                                 ; preds = %vector.body1448
  %cmp.n1454 = icmp eq i64 %n.vec1447, %wide.trip.count
  br i1 %cmp.n1454, label %.loopexit1024, label %scalar.ph1444.preheader

scalar.ph1444.preheader:                          ; preds = %.lr.ph1068, %middle.block1453
  %indvars.iv1129.ph = phi i64 [ 0, %.lr.ph1068 ], [ %n.vec1447, %middle.block1453 ] ; 3 uses
  %xtraiter1516 = and i64 %wide.trip.count, 3     ; 2 uses
  %lcmp.mod1517.not = icmp eq i64 %xtraiter1516, 0
  br i1 %lcmp.mod1517.not, label %scalar.ph1444.prol.loopexit, label %scalar.ph1444.prol

scalar.ph1444.prol:                               ; preds = %scalar.ph1444.preheader, %scalar.ph1444.prol
  %indvars.iv1129.prol = phi i64 [ %indvars.iv.next1130.prol, %scalar.ph1444.prol ], [ %indvars.iv1129.ph, %scalar.ph1444.preheader ] ; 3 uses
  %prol.iter1518 = phi i64 [ %prol.iter1518.next, %scalar.ph1444.prol ], [ 0, %scalar.ph1444.preheader ]
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr %i.wj, i64 %indvars.iv1129.prol
  %i.wu = load i32, ptr %i.wt, align 4, !tbaa !9
  %i.wv = mul nsw i32 %i.wu, 3
  %i.ww = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0890.0, i64 %indvars.iv1129.prol
  store i32 %i.wv, ptr %i.ww, align 4, !tbaa !9
  %indvars.iv.next1130.prol = add nuw nsw i64 %indvars.iv1129.prol, 1 ; 2 uses
  %prol.iter1518.next = add i64 %prol.iter1518, 1 ; 2 uses
  %prol.iter1518.cmp.not = icmp eq i64 %prol.iter1518.next, %xtraiter1516
  br i1 %prol.iter1518.cmp.not, label %scalar.ph1444.prol.loopexit, label %scalar.ph1444.prol, !llvm.loop !99

scalar.ph1444.prol.loopexit:                      ; preds = %scalar.ph1444.prol, %scalar.ph1444.preheader
  %indvars.iv1129.unr = phi i64 [ %indvars.iv1129.ph, %scalar.ph1444.preheader ], [ %indvars.iv.next1130.prol, %scalar.ph1444.prol ]
  %i.wx = sub nsw i64 %indvars.iv1129.ph, %wide.trip.count
  %i.wy = icmp ugt i64 %i.wx, -4
  br i1 %i.wy, label %.loopexit1024, label %scalar.ph1444

bb.cf:                                            ; preds = %bb.by, %bb.bx
  %i.wz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit524.thread

bb.cg:                                            ; preds = %bb.ca, %bb.bz
  %i.xa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit522

bb.ch:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i346, %bb.cb
  %i.xb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit520

_ZNSt6vectorIiSaIiEED2Ev.exit518.thread:          ; preds = %bb.cc, %bb.cd
  %i.xc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit518

bb.ci:                                            ; preds = %.invoke1381, %.noexc677, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i672, %.noexc675, %bb.cs, %.noexc666, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i661, %.noexc664, %bb.co, %bb.cm, %bb.cp, %._crit_edge, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit363
  %i.xd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit516

scalar.ph1444:                                    ; preds = %scalar.ph1444.prol.loopexit, %scalar.ph1444
  %indvars.iv1129 = phi i64 [ %indvars.iv.next1130.3, %scalar.ph1444 ], [ %indvars.iv1129.unr, %scalar.ph1444.prol.loopexit ] ; 6 uses
  %i.xe = getelementptr inbounds nuw [4 x i8], ptr %i.wj, i64 %indvars.iv1129
  %i.xf = load i32, ptr %i.xe, align 4, !tbaa !9
  %i.xg = mul nsw i32 %i.xf, 3
  %i.xh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0890.0, i64 %indvars.iv1129
  store i32 %i.xg, ptr %i.xh, align 4, !tbaa !9
  %indvars.iv.next1130 = add nuw nsw i64 %indvars.iv1129, 1 ; 2 uses
  %i.xi = getelementptr inbounds nuw [4 x i8], ptr %i.wj, i64 %indvars.iv.next1130
  %i.xj = load i32, ptr %i.xi, align 4, !tbaa !9
  %i.xk = mul nsw i32 %i.xj, 3
  %i.xl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0890.0, i64 %indvars.iv.next1130
  store i32 %i.xk, ptr %i.xl, align 4, !tbaa !9
  %indvars.iv.next1130.1 = add nuw nsw i64 %indvars.iv1129, 2 ; 2 uses
  %i.xm = getelementptr inbounds nuw [4 x i8], ptr %i.wj, i64 %indvars.iv.next1130.1
  %i.xn = load i32, ptr %i.xm, align 4, !tbaa !9
  %i.xo = mul nsw i32 %i.xn, 3
  %i.xp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0890.0, i64 %indvars.iv.next1130.1
  store i32 %i.xo, ptr %i.xp, align 4, !tbaa !9
  %indvars.iv.next1130.2 = add nuw nsw i64 %indvars.iv1129, 3 ; 2 uses
  %i.xq = getelementptr inbounds nuw [4 x i8], ptr %i.wj, i64 %indvars.iv.next1130.2
  %i.xr = load i32, ptr %i.xq, align 4, !tbaa !9
  %i.xs = mul nsw i32 %i.xr, 3
  %i.xt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0890.0, i64 %indvars.iv.next1130.2
  store i32 %i.xs, ptr %i.xt, align 4, !tbaa !9
  %indvars.iv.next1130.3 = add nuw nsw i64 %indvars.iv1129, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next1130.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit1024, label %scalar.ph1444, !llvm.loop !100

.loopexit1024:                                    ; preds = %scalar.ph1444.prol.loopexit, %scalar.ph1444, %middle.block1453, %.preheader1023, %bb.ce
  br i1 %.not.i.i.i.i338, label %._crit_edge, label %.lr.ph1071

.lr.ph1071:                                       ; preds = %.loopexit1024
  %i.xu = load ptr, ptr %i.pl, align 8, !tbaa !19
  %i.xv = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.xw = load ptr, ptr %i.xv, align 8, !tbaa !19
  %i.xx = load i32, ptr %i.b, align 4, !tbaa !9   ; 3 uses
  %wide.trip.count1139 = and i64 %i.ps, 2147483647
  br label %bb.cj

._crit_edge:                                      ; preds = %bb.cj, %.loopexit1024
  invoke void @_ZN8Parallel7gathervIiEEvPKT_iPS1_PKi(ptr noundef nonnull %.sroa.0882.0, i32 noundef %i.vf, ptr noundef nonnull %.sroa.0866.0, ptr noundef nonnull %.sroa.0890.0)
          to label %bb.ck unwind label %bb.ci

bb.cj:                                            ; preds = %.lr.ph1071, %bb.cj
  %indvars.iv1136 = phi i64 [ 0, %.lr.ph1071 ], [ %indvars.iv.next1137, %bb.cj ] ; 3 uses
  %i.xy = getelementptr inbounds nuw [4 x i8], ptr %i.xu, i64 %indvars.iv1136
  %i.xz = load i32, ptr %i.xy, align 4, !tbaa !9
  %i.ya = sext i32 %i.xz to i64
  %i.yb = getelementptr inbounds nuw [4 x i8], ptr %i.xw, i64 %i.ya
  %i.yc = load i32, ptr %i.yb, align 4, !tbaa !9
  %i.yd = mul nuw nsw i64 %indvars.iv1136, 3      ; 3 uses
  %i.ye = sext i32 %i.yc to i64                   ; 3 uses
  %i.yf = getelementptr inbounds [4 x i8], ptr %i.pk, i64 %i.ye
  %i.yg = load i32, ptr %i.yf, align 4, !tbaa !9
  %i.yh = add nsw i32 %i.xx, %i.yg
  %i.yi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0882.0, i64 %i.yd
  store i32 %i.yh, ptr %i.yi, align 4, !tbaa !9
  %i.yj = getelementptr [4 x i8], ptr %i.pk, i64 %i.ye
  %i.yk = getelementptr i8, ptr %i.yj, i64 4
  %i.yl = load i32, ptr %i.yk, align 4, !tbaa !9
  %i.ym = add nsw i32 %i.xx, %i.yl
  %i.yn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0882.0, i64 %i.yd
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yn, i64 4
  store i32 %i.ym, ptr %i.yo, align 4, !tbaa !9
  %i.yp = getelementptr [4 x i8], ptr %i.pk, i64 %i.ye
  %i.yq = getelementptr i8, ptr %i.yp, i64 8
  %i.yr = load i32, ptr %i.yq, align 4, !tbaa !9
  %i.ys = add nsw i32 %i.xx, %i.yr
  %i.yt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0882.0, i64 %i.yd
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 8
  store i32 %i.ys, ptr %i.yu, align 4, !tbaa !9
  %indvars.iv.next1137 = add nuw nsw i64 %indvars.iv1136, 1 ; 2 uses
  %exitcond1140.not = icmp eq i64 %indvars.iv.next1137, %wide.trip.count1139
  br i1 %exitcond1140.not, label %._crit_edge, label %bb.cj, !llvm.loop !101

bb.ck:                                            ; preds = %._crit_edge
  %i.yv = load i32, ptr @_ZN8Parallel4mypeE, align 4, !tbaa !9
  %i.yw = icmp eq i32 %i.yv, 0
  br i1 %i.yw, label %bb.cl, label %.loopexit1012

bb.cl:                                            ; preds = %bb.ck
  %i.yx = load i32, ptr %i.tb, align 8, !tbaa !72
  %i.yy = icmp sgt i32 %i.yx, 0
  br i1 %i.yy, label %bb.cm, label %.loopexit1012

bb.cm:                                            ; preds = %bb.cl
  %i.yz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.27, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit365 unwind label %bb.ci ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit365: ; preds = %bb.cm
  %i.za = load ptr, ptr %4, align 8, !tbaa !30
  %i.zb = getelementptr i8, ptr %i.za, i64 -24
  %i.zc = load i64, ptr %i.zb, align 8
  %i.zd = getelementptr inbounds i8, ptr %4, i64 %i.zc
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zd, i64 240
  %i.zf = load ptr, ptr %i.ze, align 8, !tbaa !47 ; 6 uses
  %.not.i.i.i658 = icmp eq ptr %i.zf, null
  br i1 %.not.i.i.i658, label %.invoke1381, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i659

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i659: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit365
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 56
  %i.zh = load i8, ptr %i.zg, align 8, !tbaa !52
  %.not.i1.i.i660 = icmp eq i8 %i.zh, 0
  br i1 %.not.i1.i.i660, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i659
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zf, i64 67
  %i.zj = load i8, ptr %i.zi, align 1, !tbaa !27
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i661

bb.co:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i659
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.zf)
          to label %.noexc664 unwind label %bb.ci

.noexc664:                                        ; preds = %bb.co
  %i.zk = load ptr, ptr %i.zf, align 8, !tbaa !30
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 48
  %i.zm = load ptr, ptr %i.zl, align 8
  %i.zn = invoke noundef signext i8 %i.zm(ptr noundef nonnull align 8 dereferenceable(570) %i.zf, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i661 unwind label %bb.ci, !inline_history !1

end_hunk_0
begin_hunk_1_@_ZN10ExportGold12writeGeoFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEid:bb.a

bb.cz:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i692
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.adl)
          to label %.noexc697 unwind label %.loopexit1013

.noexc697:                                        ; preds = %bb.cz
  %i.acg = load ptr, ptr %i.adl, align 8, !tbaa !30
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acg, i64 48
  %i.aci = load ptr, ptr %i.ach, align 8
  %i.acj = invoke noundef signext i8 %i.aci(ptr noundef nonnull align 8 dereferenceable(570) %i.adl, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i694 unwind label %.loopexit1013, !inline_history !1

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i694: ; preds = %.noexc697, %bb.cy
  %.0.i.i.i695 = phi i8 [ %i.acf, %bb.cy ], [ %i.acj, %.noexc697 ]
  %i.ack = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %4, i8 noundef signext %.0.i.i.i695)
          to label %.noexc699 unwind label %.loopexit1013

.noexc699:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i694
  %i.acl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ack)
          to label %_ZNSolsEPFRSoS_E.exit373 unwind label %.loopexit1013 ; 0 uses

bb.da:                                            ; preds = %.preheader1010
  %i.acm = load ptr, ptr %4, align 8, !tbaa !30
  %i.acn = getelementptr i8, ptr %i.acm, i64 -24
  %i.aco = load i64, ptr %i.acn, align 8
  %i.acp = getelementptr inbounds i8, ptr %4, i64 %i.aco
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acp, i64 16
  store i64 10, ptr %i.acq, align 8, !tbaa !68
  %i.acr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0866.0, i64 %i.abs
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acr, i64 4
  %i.act = load i32, ptr %i.acs, align 4, !tbaa !9
  %i.acu = add nsw i32 %i.act, 1
  %i.acv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %i.acu)
          to label %bb.db unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit516.thread ; 0 uses

bb.db:                                            ; preds = %bb.da
  %i.acw = load ptr, ptr %4, align 8, !tbaa !30
  %i.acx = getelementptr i8, ptr %i.acw, i64 -24
  %i.acy = load i64, ptr %i.acx, align 8
  %i.acz = getelementptr inbounds i8, ptr %4, i64 %i.acy
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acz, i64 16
  store i64 10, ptr %i.ada, align 8, !tbaa !68
  %i.adb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0866.0, i64 %i.abs
  %i.adc = getelementptr inbounds nuw i8, ptr %i.adb, i64 8
  %i.add = load i32, ptr %i.adc, align 4, !tbaa !9
  %i.ade = add nsw i32 %i.add, 1
  %i.adf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %i.ade)
          to label %bb.dc unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit516.thread ; 0 uses

bb.dc:                                            ; preds = %bb.db
  %i.adg = load ptr, ptr %4, align 8, !tbaa !30
  %i.adh = getelementptr i8, ptr %i.adg, i64 -24
  %i.adi = load i64, ptr %i.adh, align 8
  %i.adj = getelementptr inbounds i8, ptr %4, i64 %i.adi
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adj, i64 240
  %i.adl = load ptr, ptr %i.adk, align 8, !tbaa !47 ; 6 uses
  %.not.i.i.i691 = icmp eq ptr %i.adl, null
  br i1 %.not.i.i.i691, label %bb.cx, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i692

_ZNSt6vectorIiSaIiEED2Ev.exit516.thread:          ; preds = %bb.db, %bb.da, %.preheader1010
  %i.adm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit516.thread1354

_ZNSolsEPFRSoS_E.exit373:                         ; preds = %.noexc699
  %indvars.iv.next1149 = add nuw nsw i64 %indvars.iv1148, 1 ; 2 uses
  %i.adn = load i32, ptr %i.tb, align 8, !tbaa !72
  %i.ado = sext i32 %i.adn to i64
  %i.adp = icmp slt i64 %indvars.iv.next1149, %i.ado
  br i1 %i.adp, label %.preheader1010, label %.loopexit1012, !llvm.loop !103

.loopexit1013:                                    ; preds = %bb.cz, %.noexc697, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i694, %.noexc699
  %lpad.loopexit1015 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit516.thread1354

.loopexit.split-lp1014:                           ; preds = %bb.cx
  %lpad.loopexit.split-lp1016 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit516.thread1354

.loopexit1012:                                    ; preds = %_ZNSolsEPFRSoS_E.exit373, %_ZNSolsEPFRSoS_E.exit369.preheader, %.preheader1011, %bb.cl, %bb.ck
  %i.adq = shl nsw i32 %i.qc, 2                   ; 2 uses
  %i.adr = sext i32 %i.adq to i64                 ; 2 uses
  %i.ads = icmp slt i32 %i.qc, 0
  br i1 %i.ads, label %bb.dd, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i374

bb.dd:                                            ; preds = %.loopexit1012
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.33) #16
          to label %.noexc380 unwind label %bb.dj

.noexc380:                                        ; preds = %bb.dd
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i374: ; preds = %.loopexit1012
  %.not.i.i.i.i375 = icmp eq i32 %i.qc, 0         ; 2 uses
  br i1 %.not.i.i.i.i375, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit382, label %bb.de

bb.de:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i374
  %i.adt = shl nuw nsw i64 %i.adr, 2              ; 2 uses
  %i.adu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.adt) #18
          to label %.noexc381 unwind label %bb.dj ; 4 uses

.noexc381:                                        ; preds = %bb.de
  %i.adv = getelementptr inbounds nuw [4 x i8], ptr %i.adu, i64 %i.adr
  store i32 0, ptr %i.adu, align 4, !tbaa !9
  %i.adw = getelementptr i8, ptr %i.adu, i64 4
  %.idx.i.i.i.i.i.i.i377 = add nsw i64 %i.adt, -4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.adw, i8 0, i64 %.idx.i.i.i.i.i.i.i377, i1 false), !tbaa !9
  %i.adx = ptrtoint ptr %i.adv to i64
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit382

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit382:            ; preds = %.noexc381, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i374
  %.sroa.0858.0 = phi ptr [ %i.adu, %.noexc381 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i374 ] ; 10 uses
  %.sroa.11863.0 = phi i64 [ %i.adx, %.noexc381 ], [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i374 ] ; 2 uses
  %i.ady = load i32, ptr %i.tw, align 4, !tbaa !73 ; 3 uses
  %i.adz = sext i32 %i.ady to i64                 ; 4 uses
  %i.aea = icmp slt i32 %i.ady, 0
  br i1 %i.aea, label %bb.df, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i383

bb.df:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit382
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.33) #16
          to label %.noexc389 unwind label %bb.dk

.noexc389:                                        ; preds = %bb.df
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i383: ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit382
  %.not.i.i.i.i384 = icmp ne i32 %i.ady, 0
  call void @llvm.assume(i1 %.not.i.i.i.i384)
  %i.aeb = shl nuw nsw i64 %i.adz, 2
  %i.aec = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aeb) #18
          to label %.noexc390 unwind label %bb.dk ; 6 uses

.noexc390:                                        ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i383
  store i32 0, ptr %i.aec, align 4, !tbaa !9
  %i.aed = add nsw i64 %i.adz, -1                 ; 2 uses
  %i.aee = icmp eq i64 %i.aed, 0
  br i1 %i.aee, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit391, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i385

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i385: ; preds = %.noexc390
  %i.aef = getelementptr i8, ptr %i.aec, i64 4
  %.idx.i.i.i.i.i.i.i386 = shl nuw nsw i64 %i.aed, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.aef, i8 0, i64 %.idx.i.i.i.i.i.i.i386, i1 false), !tbaa !9
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit391

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit391:            ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i385, %.noexc390
  %.pr1298 = load i32, ptr %i.tw, align 4, !tbaa !73 ; 3 uses
  %i.aeg = shl nsw i32 %.pr1298, 2
  %i.aeh = sext i32 %i.aeg to i64                 ; 2 uses
  %i.aei = icmp slt i32 %.pr1298, 0
  br i1 %i.aei, label %bb.dg, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i392

bb.dg:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit391
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.33) #16
          to label %.noexc398 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit512.thread

.noexc398:                                        ; preds = %bb.dg
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i392: ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit391
  %.not.i.i.i.i393 = icmp eq i32 %.pr1298, 0
  br i1 %.not.i.i.i.i393, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit400, label %bb.dh

bb.dh:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i392
  %i.aej = shl nuw nsw i64 %i.aeh, 2              ; 2 uses
  %i.aek = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aej) #18
          to label %.noexc399 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit512.thread ; 4 uses

.noexc399:                                        ; preds = %bb.dh
  %i.ael = getelementptr inbounds nuw [4 x i8], ptr %i.aek, i64 %i.aeh
  store i32 0, ptr %i.aek, align 4, !tbaa !9
  %i.aem = getelementptr i8, ptr %i.aek, i64 4
  %.idx.i.i.i.i.i.i.i395 = add nsw i64 %i.aej, -4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.aem, i8 0, i64 %.idx.i.i.i.i.i.i.i395, i1 false), !tbaa !9
  %i.aen = ptrtoint ptr %i.ael to i64
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit400

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit400:            ; preds = %.noexc399, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i392
  %.sroa.0842.0 = phi ptr [ %i.aek, %.noexc399 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i392 ] ; 10 uses
  %.sroa.11847.0 = phi i64 [ %i.aen, %.noexc399 ], [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i392 ] ; 2 uses
  %i.aeo = load ptr, ptr %i.pu, align 8, !tbaa !19
  %i.aep = load ptr, ptr %i.sd, align 8, !tbaa !19
  invoke void @_ZN8Parallel7gathervIiEEvPKT_iPS1_PKi(ptr noundef nonnull %i.aeo, i32 noundef %i.qc, ptr noundef nonnull %i.aec, ptr noundef nonnull %i.aep)
          to label %bb.di unwind label %bb.dl

bb.di:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit400
  %i.aeq = load i32, ptr @_ZN8Parallel4mypeE, align 4, !tbaa !9
  %i.aer = icmp eq i32 %i.aeq, 0
  br i1 %i.aer, label %.preheader1008, label %.loopexit1009

.preheader1008:                                   ; preds = %bb.di
  %i.aes = load i32, ptr @_ZN8Parallel5numpeE, align 4, !tbaa !9 ; 3 uses
  %i.aet = icmp sgt i32 %i.aes, 0
  br i1 %i.aet, label %.lr.ph1077, label %.loopexit1009

.lr.ph1077:                                       ; preds = %.preheader1008
  %i.aeu = load ptr, ptr %i.sd, align 8, !tbaa !19 ; 7 uses
  %wide.trip.count1154 = zext nneg i32 %i.aes to i64 ; 5 uses
  %min.iters.check1459 = icmp ult i32 %i.aes, 8
  %7 = ptrtoaddr ptr %.sroa.0890.0 to i64
  %i.aev = ptrtoaddr ptr %i.aeu to i64
  %i.aew = sub i64 %i.aev, %7
  %diff.check1457 = icmp ugt i64 %i.aew, -32
  %or.cond1491 = select i1 %min.iters.check1459, i1 true, i1 %diff.check1457
  br i1 %or.cond1491, label %scalar.ph1458.preheader, label %vector.ph1460

vector.ph1460:                                    ; preds = %.lr.ph1077
  %n.vec1461 = and i64 %wide.trip.count1154, 2147483640 ; 3 uses
  br label %vector.body1462

vector.body1462:                                  ; preds = %vector.body1462, %vector.ph1460
  %index1463 = phi i64 [ 0, %vector.ph1460 ], [ %index.next1466, %vector.body1462 ] ; 3 uses
  %i.aex = getelementptr inbounds nuw [4 x i8], ptr %i.aeu, i64 %index1463 ; 2 uses
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aex, i64 16
  %wide.load1464 = load <4 x i32>, ptr %i.aex, align 4, !tbaa !9
  %wide.load1465 = load <4 x i32>, ptr %i.aey, align 4, !tbaa !9
  %i.aez = shl nsw <4 x i32> %wide.load1464, splat (i32 2)
  %i.afa = shl nsw <4 x i32> %wide.load1465, splat (i32 2)
  %i.afb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0890.0, i64 %index1463 ; 2 uses
  %i.afc = getelementptr inbounds nuw i8, ptr %i.afb, i64 16
  store <4 x i32> %i.aez, ptr %i.afb, align 4, !tbaa !9
  store <4 x i32> %i.afa, ptr %i.afc, align 4, !tbaa !9
  %index.next1466 = add nuw i64 %index1463, 8     ; 2 uses
  %i.afd = icmp eq i64 %index.next1466, %n.vec1461
  br i1 %i.afd, label %middle.block1467, label %vector.body1462, !llvm.loop !104

middle.block1467:                                 ; preds = %vector.body1462
  %cmp.n1468 = icmp eq i64 %n.vec1461, %wide.trip.count1154
  br i1 %cmp.n1468, label %.loopexit1009, label %scalar.ph1458.preheader

scalar.ph1458.preheader:                          ; preds = %.lr.ph1077, %middle.block1467
  %indvars.iv1151.ph = phi i64 [ 0, %.lr.ph1077 ], [ %n.vec1461, %middle.block1467 ] ; 3 uses
  %xtraiter1519 = and i64 %wide.trip.count1154, 3 ; 2 uses
  %lcmp.mod1520.not = icmp eq i64 %xtraiter1519, 0
  br i1 %lcmp.mod1520.not, label %scalar.ph1458.prol.loopexit, label %scalar.ph1458.prol

scalar.ph1458.prol:                               ; preds = %scalar.ph1458.preheader, %scalar.ph1458.prol
  %indvars.iv1151.prol = phi i64 [ %indvars.iv.next1152.prol, %scalar.ph1458.prol ], [ %indvars.iv1151.ph, %scalar.ph1458.preheader ] ; 3 uses
  %prol.iter1521 = phi i64 [ %prol.iter1521.next, %scalar.ph1458.prol ], [ 0, %scalar.ph1458.preheader ]
  %i.afe = getelementptr inbounds nuw [4 x i8], ptr %i.aeu, i64 %indvars.iv1151.prol
  %i.aff = load i32, ptr %i.afe, align 4, !tbaa !9
  %i.afg = shl nsw i32 %i.aff, 2
  %i.afh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0890.0, i64 %indvars.iv1151.prol
  store i32 %i.afg, ptr %i.afh, align 4, !tbaa !9
  %indvars.iv.next1152.prol = add nuw nsw i64 %indvars.iv1151.prol, 1 ; 2 uses
  %prol.iter1521.next = add i64 %prol.iter1521, 1 ; 2 uses
  %prol.iter1521.cmp.not = icmp eq i64 %prol.iter1521.next, %xtraiter1519
  br i1 %prol.iter1521.cmp.not, label %scalar.ph1458.prol.loopexit, label %scalar.ph1458.prol, !llvm.loop !105

scalar.ph1458.prol.loopexit:                      ; preds = %scalar.ph1458.prol, %scalar.ph1458.preheader
  %indvars.iv1151.unr = phi i64 [ %indvars.iv1151.ph, %scalar.ph1458.preheader ], [ %indvars.iv.next1152.prol, %scalar.ph1458.prol ]
  %i.afi = sub nsw i64 %indvars.iv1151.ph, %wide.trip.count1154
  %i.afj = icmp ugt i64 %i.afi, -4
  br i1 %i.afj, label %.loopexit1009, label %scalar.ph1458

bb.dj:                                            ; preds = %bb.de, %bb.dd
  %i.afk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit516

bb.dk:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i383, %bb.df
  %i.afl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit514

_ZNSt6vectorIiSaIiEED2Ev.exit512.thread:          ; preds = %bb.dg, %bb.dh
  %i.afm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit512

bb.dl:                                            ; preds = %.invoke1383, %.noexc721, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i716, %.noexc719, %bb.dv, %.noexc710, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i705, %.noexc708, %bb.dr, %bb.dp, %bb.ds, %._crit_edge1082, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit400
  %i.afn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit510

scalar.ph1458:                                    ; preds = %scalar.ph1458.prol.loopexit, %scalar.ph1458
  %indvars.iv1151 = phi i64 [ %indvars.iv.next1152.3, %scalar.ph1458 ], [ %indvars.iv1151.unr, %scalar.ph1458.prol.loopexit ] ; 6 uses
  %i.afo = getelementptr inbounds nuw [4 x i8], ptr %i.aeu, i64 %indvars.iv1151
  %i.afp = load i32, ptr %i.afo, align 4, !tbaa !9
  %i.afq = shl nsw i32 %i.afp, 2
  %i.afr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0890.0, i64 %indvars.iv1151
  store i32 %i.afq, ptr %i.afr, align 4, !tbaa !9
  %indvars.iv.next1152 = add nuw nsw i64 %indvars.iv1151, 1 ; 2 uses
  %i.afs = getelementptr inbounds nuw [4 x i8], ptr %i.aeu, i64 %indvars.iv.next1152
  %i.aft = load i32, ptr %i.afs, align 4, !tbaa !9
  %i.afu = shl nsw i32 %i.aft, 2
  %i.afv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0890.0, i64 %indvars.iv.next1152
  store i32 %i.afu, ptr %i.afv, align 4, !tbaa !9
  %indvars.iv.next1152.1 = add nuw nsw i64 %indvars.iv1151, 2 ; 2 uses
  %i.afw = getelementptr inbounds nuw [4 x i8], ptr %i.aeu, i64 %indvars.iv.next1152.1
  %i.afx = load i32, ptr %i.afw, align 4, !tbaa !9
  %i.afy = shl nsw i32 %i.afx, 2
  %i.afz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0890.0, i64 %indvars.iv.next1152.1
  store i32 %i.afy, ptr %i.afz, align 4, !tbaa !9
  %indvars.iv.next1152.2 = add nuw nsw i64 %indvars.iv1151, 3 ; 2 uses
  %i.aga = getelementptr inbounds nuw [4 x i8], ptr %i.aeu, i64 %indvars.iv.next1152.2
  %i.agb = load i32, ptr %i.aga, align 4, !tbaa !9
  %i.agc = shl nsw i32 %i.agb, 2
  %i.agd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0890.0, i64 %indvars.iv.next1152.2
  store i32 %i.agc, ptr %i.agd, align 4, !tbaa !9
  %indvars.iv.next1152.3 = add nuw nsw i64 %indvars.iv1151, 4 ; 2 uses
  %exitcond1155.not.3 = icmp eq i64 %indvars.iv.next1152.3, %wide.trip.count1154
  br i1 %exitcond1155.not.3, label %.loopexit1009, label %scalar.ph1458, !llvm.loop !106

.loopexit1009:                                    ; preds = %scalar.ph1458.prol.loopexit, %scalar.ph1458, %middle.block1467, %.preheader1008, %bb.di
  br i1 %.not.i.i.i.i375, label %._crit_edge1082, label %.lr.ph1081

.lr.ph1081:                                       ; preds = %.loopexit1009
  %i.age = load ptr, ptr %i.pu, align 8, !tbaa !19
  %i.agf = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.agg = load ptr, ptr %i.agf, align 8, !tbaa !19
  %i.agh = load i32, ptr %i.b, align 4, !tbaa !9  ; 4 uses
  %wide.trip.count1164 = and i64 %i.qb, 2147483647
  br label %bb.dm

._crit_edge1082:                                  ; preds = %bb.dm, %.loopexit1009
  invoke void @_ZN8Parallel7gathervIiEEvPKT_iPS1_PKi(ptr noundef nonnull %.sroa.0858.0, i32 noundef %i.adq, ptr noundef nonnull %.sroa.0842.0, ptr noundef nonnull %.sroa.0890.0)
          to label %bb.dn unwind label %bb.dl

bb.dm:                                            ; preds = %.lr.ph1081, %bb.dm
  %indvars.iv1160 = phi i64 [ 0, %.lr.ph1081 ], [ %indvars.iv.next1161, %bb.dm ] ; 3 uses
  %i.agi = getelementptr inbounds nuw [4 x i8], ptr %i.age, i64 %indvars.iv1160
  %i.agj = load i32, ptr %i.agi, align 4, !tbaa !9
  %i.agk = sext i32 %i.agj to i64
  %i.agl = getelementptr inbounds nuw [4 x i8], ptr %i.agg, i64 %i.agk
  %i.agm = load i32, ptr %i.agl, align 4, !tbaa !9
  %i.agn = shl nuw nsw i64 %indvars.iv1160, 2     ; 4 uses
  %i.ago = sext i32 %i.agm to i64                 ; 4 uses
  %i.agp = getelementptr inbounds [4 x i8], ptr %i.pk, i64 %i.ago
  %i.agq = load i32, ptr %i.agp, align 4, !tbaa !9
  %i.agr = add nsw i32 %i.agh, %i.agq
  %i.ags = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0858.0, i64 %i.agn
  store i32 %i.agr, ptr %i.ags, align 4, !tbaa !9
  %i.agt = getelementptr [4 x i8], ptr %i.pk, i64 %i.ago
  %i.agu = getelementptr i8, ptr %i.agt, i64 4
  %i.agv = load i32, ptr %i.agu, align 4, !tbaa !9
  %i.agw = add nsw i32 %i.agh, %i.agv
  %i.agx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0858.0, i64 %i.agn
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agx, i64 4
  store i32 %i.agw, ptr %i.agy, align 4, !tbaa !9
  %i.agz = getelementptr [4 x i8], ptr %i.pk, i64 %i.ago
  %i.aha = getelementptr i8, ptr %i.agz, i64 8
  %i.ahb = load i32, ptr %i.aha, align 4, !tbaa !9
  %i.ahc = add nsw i32 %i.agh, %i.ahb
  %i.ahd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0858.0, i64 %i.agn
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahd, i64 8
  store i32 %i.ahc, ptr %i.ahe, align 4, !tbaa !9
  %i.ahf = getelementptr [4 x i8], ptr %i.pk, i64 %i.ago
  %i.ahg = getelementptr i8, ptr %i.ahf, i64 12
  %i.ahh = load i32, ptr %i.ahg, align 4, !tbaa !9
  %i.ahi = add nsw i32 %i.agh, %i.ahh
  %i.ahj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0858.0, i64 %i.agn
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahj, i64 12
  store i32 %i.ahi, ptr %i.ahk, align 4, !tbaa !9
  %indvars.iv.next1161 = add nuw nsw i64 %indvars.iv1160, 1 ; 2 uses
  %exitcond1165.not = icmp eq i64 %indvars.iv.next1161, %wide.trip.count1164
  br i1 %exitcond1165.not, label %._crit_edge1082, label %bb.dm, !llvm.loop !107

bb.dn:                                            ; preds = %._crit_edge1082
  %i.ahl = load i32, ptr @_ZN8Parallel4mypeE, align 4, !tbaa !9
  %i.ahm = icmp eq i32 %i.ahl, 0
  br i1 %i.ahm, label %bb.do, label %.loopexit997

bb.do:                                            ; preds = %bb.dn
  %i.ahn = load i32, ptr %i.tw, align 4, !tbaa !73
  %i.aho = icmp sgt i32 %i.ahn, 0
  br i1 %i.aho, label %bb.dp, label %.loopexit997

bb.dp:                                            ; preds = %bb.do
  %i.ahp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.28, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit402 unwind label %bb.dl ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit402: ; preds = %bb.dp
  %i.ahq = load ptr, ptr %4, align 8, !tbaa !30
  %i.ahr = getelementptr i8, ptr %i.ahq, i64 -24
  %i.ahs = load i64, ptr %i.ahr, align 8
  %i.aht = getelementptr inbounds i8, ptr %4, i64 %i.ahs
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.aht, i64 240
  %i.ahv = load ptr, ptr %i.ahu, align 8, !tbaa !47 ; 6 uses
  %.not.i.i.i702 = icmp eq ptr %i.ahv, null
  br i1 %.not.i.i.i702, label %.invoke1383, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i703

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i703: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit402
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahv, i64 56
  %i.ahx = load i8, ptr %i.ahw, align 8, !tbaa !52
  %.not.i1.i.i704 = icmp eq i8 %i.ahx, 0
  br i1 %.not.i1.i.i704, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i703
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahv, i64 67
  %i.ahz = load i8, ptr %i.ahy, align 1, !tbaa !27
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i705

bb.dr:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i703
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ahv)
          to label %.noexc708 unwind label %bb.dl

.noexc708:                                        ; preds = %bb.dr
  %i.aia = load ptr, ptr %i.ahv, align 8, !tbaa !30
  %i.aib = getelementptr inbounds nuw i8, ptr %i.aia, i64 48
  %i.aic = load ptr, ptr %i.aib, align 8
  %i.aid = invoke noundef signext i8 %i.aic(ptr noundef nonnull align 8 dereferenceable(570) %i.ahv, i8 noundef signext 10)
end_hunk_1
begin_hunk_2_@_ZN10ExportGold12writeGeoFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEid:bb.a

bb.el:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i429
  %i.ani = shl nuw nsw i64 %i.ang, 2
  %i.anj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ani) #18
          to label %.noexc436 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit504.thread ; 5 uses

.noexc436:                                        ; preds = %bb.el
  %i.ank = getelementptr inbounds nuw [4 x i8], ptr %i.anj, i64 %i.ang ; 2 uses
  store i32 0, ptr %i.anj, align 4, !tbaa !9
  %i.anl = add nsw i64 %i.ang, -1                 ; 2 uses
  %i.anm = icmp eq i64 %i.anl, 0
  br i1 %i.anm, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit437, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i431

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i431: ; preds = %.noexc436
  %i.ann = getelementptr i8, ptr %i.anj, i64 4
  %.idx.i.i.i.i.i.i.i432 = shl nuw nsw i64 %i.anl, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ann, i8 0, i64 %.idx.i.i.i.i.i.i.i432, i1 false), !tbaa !9
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit437

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit437:            ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i431, %.noexc436, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i429
  %.sroa.0808.0 = phi ptr [ %i.anj, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i431 ], [ %i.anj, %.noexc436 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i429 ] ; 8 uses
  %.sroa.13.0 = phi ptr [ %i.ank, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i431 ], [ %i.ank, %.noexc436 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i429 ] ; 2 uses
  %i.ano = load ptr, ptr %i.qd, align 8, !tbaa !19
  %i.anp = load ptr, ptr %i.sf, align 8, !tbaa !19
  invoke void @_ZN8Parallel7gathervIiEEvPKT_iPS1_PKi(ptr noundef nonnull %i.ano, i32 noundef %i.ql, ptr noundef nonnull %i.anc, ptr noundef nonnull %i.anp)
          to label %.preheader994 unwind label %bb.en

.preheader994:                                    ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit437
  %i.anq = icmp sgt i32 %i.ql, 0
  br i1 %i.anq, label %.lr.ph1100, label %._crit_edge1101

.lr.ph1100:                                       ; preds = %.preheader994
  %i.anr = getelementptr inbounds nuw i8, ptr %0, i64 80
  %wide.trip.count1182 = and i64 %i.qk, 2147483647
  br label %bb.eo

._crit_edge1101.loopexit:                         ; preds = %._crit_edge1093
  %i.ans = ptrtoint ptr %.sroa.10828.1.lcssa to i64
  br label %._crit_edge1101

._crit_edge1101:                                  ; preds = %._crit_edge1101.loopexit, %.preheader994
  %.sroa.0823.0.lcssa = phi ptr [ null, %.preheader994 ], [ %.sroa.0823.2.lcssa, %._crit_edge1101.loopexit ] ; 7 uses
  %.sroa.10828.0.lcssa = phi i64 [ 0, %.preheader994 ], [ %i.ans, %._crit_edge1101.loopexit ]
  %.sroa.14.0.lcssa = phi ptr [ null, %.preheader994 ], [ %.sroa.14.2.lcssa, %._crit_edge1101.loopexit ] ; 5 uses
  %i.ant = load ptr, ptr %i.sf, align 8, !tbaa !19
  invoke void @_ZN8Parallel7gathervIiEEvPKT_iPS1_PKi(ptr noundef nonnull %.sroa.0834.0, i32 noundef %i.ql, ptr noundef nonnull %.sroa.0808.0, ptr noundef nonnull %i.ant)
          to label %bb.eu unwind label %bb.en

bb.em:                                            ; preds = %bb.ei, %bb.eh
  %i.anu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit510

_ZNSt6vectorIiSaIiEED2Ev.exit506.thread:          ; preds = %bb.ej, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i420
  %i.anv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit508

_ZNSt6vectorIiSaIiEED2Ev.exit504.thread:          ; preds = %bb.ek, %bb.el
  %i.anw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit506

bb.en:                                            ; preds = %._crit_edge1101, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit437
  %.sroa.0823.1 = phi ptr [ %.sroa.0823.0.lcssa, %._crit_edge1101 ], [ null, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit437 ]
  %.sroa.14.1 = phi ptr [ %.sroa.14.0.lcssa, %._crit_edge1101 ], [ null, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit437 ]
  %i.anx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit502

bb.eo:                                            ; preds = %.lr.ph1100, %._crit_edge1093
  %indvars.iv1179 = phi i64 [ 0, %.lr.ph1100 ], [ %indvars.iv.next1180, %._crit_edge1093 ] ; 3 uses
  %.sroa.14.01098 = phi ptr [ null, %.lr.ph1100 ], [ %.sroa.14.2.lcssa, %._crit_edge1093 ] ; 2 uses
  %.sroa.10828.01097 = phi ptr [ null, %.lr.ph1100 ], [ %.sroa.10828.1.lcssa, %._crit_edge1093 ] ; 2 uses
  %.sroa.0823.01096 = phi ptr [ null, %.lr.ph1100 ], [ %.sroa.0823.2.lcssa, %._crit_edge1093 ] ; 2 uses
  %i.any = load ptr, ptr %i.qd, align 8, !tbaa !19
  %i.anz = getelementptr inbounds nuw [4 x i8], ptr %i.any, i64 %indvars.iv1179
  %i.aoa = load i32, ptr %i.anz, align 4, !tbaa !9
  %i.aob = sext i32 %i.aoa to i64                 ; 2 uses
  %i.aoc = load ptr, ptr %i.anr, align 8, !tbaa !19
  %i.aod = getelementptr inbounds nuw [4 x i8], ptr %i.aoc, i64 %i.aob
  %i.aoe = load i32, ptr %i.aod, align 4, !tbaa !9
  %i.aof = getelementptr inbounds [4 x i8], ptr %i.pi, i64 %i.aob ; 2 uses
  %i.aog = load i32, ptr %i.aof, align 4, !tbaa !9 ; 2 uses
  %i.aoh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0834.0, i64 %indvars.iv1179
  store i32 %i.aog, ptr %i.aoh, align 4, !tbaa !9
  %i.aoi = icmp sgt i32 %i.aog, 0
  br i1 %i.aoi, label %.lr.ph1092.preheader, label %._crit_edge1093

.lr.ph1092.preheader:                             ; preds = %bb.eo
  %i.aoj = sext i32 %i.aoe to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.pk, i64 %i.aoj
  br label %.lr.ph1092

._crit_edge1093:                                  ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit, %bb.eo
  %.sroa.0823.2.lcssa = phi ptr [ %.sroa.0823.01096, %bb.eo ], [ %.sroa.0823.6, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %.sroa.10828.1.lcssa = phi ptr [ %.sroa.10828.01097, %bb.eo ], [ %.sroa.10828.2, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %.sroa.14.2.lcssa = phi ptr [ %.sroa.14.01098, %bb.eo ], [ %.sroa.14.6, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %indvars.iv.next1180 = add nuw nsw i64 %indvars.iv1179, 1 ; 2 uses
  %exitcond1183.not = icmp eq i64 %indvars.iv.next1180, %wide.trip.count1182
  br i1 %exitcond1183.not, label %._crit_edge1101.loopexit, label %bb.eo, !llvm.loop !110

.lr.ph1092:                                       ; preds = %.lr.ph1092.preheader, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %indvars.iv1176 = phi i64 [ 0, %.lr.ph1092.preheader ], [ %indvars.iv.next1177, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %.sroa.14.21089 = phi ptr [ %.sroa.14.01098, %.lr.ph1092.preheader ], [ %.sroa.14.6, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 5 uses
  %.sroa.10828.11088 = phi ptr [ %.sroa.10828.01097, %.lr.ph1092.preheader ], [ %.sroa.10828.2, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 3 uses
  %.sroa.0823.21087 = phi ptr [ %.sroa.0823.01096, %.lr.ph1092.preheader ], [ %.sroa.0823.6, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 7 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv1176
  %i.aok = load i32, ptr %gep, align 4, !tbaa !9
  %i.aol = load i32, ptr %i.b, align 4, !tbaa !9
  %i.aom = add nsw i32 %i.aol, %i.aok             ; 2 uses
  %.not.i.i438 = icmp eq ptr %.sroa.10828.11088, %.sroa.14.21089
  br i1 %.not.i.i438, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %.lr.ph1092
  store i32 %i.aom, ptr %.sroa.10828.11088, align 4, !tbaa !9
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.eq:                                            ; preds = %.lr.ph1092
  %i.aon = ptrtoint ptr %.sroa.14.21089 to i64
  %i.aoo = ptrtoint ptr %.sroa.0823.21087 to i64
  %i.aop = sub i64 %i.aon, %i.aoo                 ; 6 uses
  %i.aoq = icmp eq i64 %i.aop, 9223372036854775804
  br i1 %i.aoq, label %bb.er, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.er:                                            ; preds = %bb.eq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #16
          to label %.noexc440 unwind label %.loopexit.split-lp990

.noexc440:                                        ; preds = %bb.er
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.eq
  %i.aor = ashr exact i64 %i.aop, 2               ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.aor, i64 1)
  %i.aos = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aor ; 2 uses
  %i.aot = icmp ult i64 %i.aos, %i.aor
  %i.aou = call i64 @llvm.umin.i64(i64 %i.aos, i64 2305843009213693951)
  %i.aov = select i1 %i.aot, i64 2305843009213693951, i64 %i.aou ; 3 uses
  %.not.i.i.i.i439 = icmp ne i64 %i.aov, 0
  call void @llvm.assume(i1 %.not.i.i.i.i439)
  %i.aow = shl nuw nsw i64 %i.aov, 2
  %i.aox = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aow) #18
          to label %.noexc441 unwind label %.loopexit989 ; 4 uses

.noexc441:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.aoy = getelementptr inbounds i8, ptr %i.aox, i64 %i.aop ; 2 uses
  store i32 %i.aom, ptr %i.aoy, align 4, !tbaa !9
  %i.aoz = icmp sgt i64 %i.aop, 0
  br i1 %i.aoz, label %bb.es, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.es:                                            ; preds = %.noexc441
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aox, ptr align 4 %.sroa.0823.21087, i64 %i.aop, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.es, %.noexc441
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0823.21087, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.et

bb.et:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0823.21087, i64 noundef %i.aop) #14
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.et, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.apa = getelementptr inbounds nuw [4 x i8], ptr %i.aox, i64 %i.aov
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.ep
  %.sroa.0823.6 = phi ptr [ %i.aox, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.0823.21087, %bb.ep ] ; 2 uses
  %.pn974 = phi ptr [ %i.aoy, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.10828.11088, %bb.ep ]
  %.sroa.14.6 = phi ptr [ %i.apa, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.14.21089, %bb.ep ] ; 2 uses
  %.sroa.10828.2 = getelementptr inbounds nuw i8, ptr %.pn974, i64 4 ; 2 uses
  %indvars.iv.next1177 = add nuw nsw i64 %indvars.iv1176, 1 ; 2 uses
  %i.apb = load i32, ptr %i.aof, align 4, !tbaa !9
  %i.apc = sext i32 %i.apb to i64
  %i.apd = icmp slt i64 %indvars.iv.next1177, %i.apc
  br i1 %i.apd, label %.lr.ph1092, label %._crit_edge1093, !llvm.loop !111

.loopexit989:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit991 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit502

.loopexit.split-lp990:                            ; preds = %bb.er
  %lpad.loopexit.split-lp992 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit502

bb.eu:                                            ; preds = %._crit_edge1101
  %i.ape = ptrtoint ptr %.sroa.0823.0.lcssa to i64 ; 2 uses
  %i.apf = sub i64 %.sroa.10828.0.lcssa, %i.ape
  %i.apg = lshr exact i64 %i.apf, 2
  %i.aph = trunc i64 %i.apg to i32                ; 2 uses
  invoke void @_ZN8Parallel6gatherEiPi(i32 noundef %i.aph, ptr noundef nonnull %.sroa.0890.0)
          to label %bb.ev unwind label %bb.fg

bb.ev:                                            ; preds = %bb.eu
  %.not5.i442 = icmp ne ptr %.sroa.0890.0, %.0.i.i.i.i.i332
  call void @llvm.assume(i1 %.not5.i442)
  %i.api = ptrtoaddr ptr %.0.i.i.i.i.i332 to i64
  %8 = ptrtoaddr ptr %.sroa.0890.0 to i64
  %i.apj = add i64 %i.api, -4
  %i.apk = sub i64 %i.apj, %8                     ; 2 uses
  %i.apl = lshr i64 %i.apk, 2
  %i.apm = add nuw nsw i64 %i.apl, 1              ; 2 uses
  %min.iters.check1471 = icmp ult i64 %i.apk, 28
  br i1 %min.iters.check1471, label %.lr.ph.i443.preheader, label %vector.ph1472

vector.ph1472:                                    ; preds = %bb.ev
  %n.vec1473 = and i64 %i.apm, 9223372036854775800 ; 3 uses
  %i.apn = shl i64 %n.vec1473, 2
  %i.apo = getelementptr i8, ptr %.sroa.0890.0, i64 %i.apn
  br label %vector.body1474

vector.body1474:                                  ; preds = %vector.body1474, %vector.ph1472
  %index1475 = phi i64 [ 0, %vector.ph1472 ], [ %index.next1481, %vector.body1474 ] ; 2 uses
  %vec.phi1476 = phi <4 x i32> [ zeroinitializer, %vector.ph1472 ], [ %i.apr, %vector.body1474 ]
  %vec.phi1477 = phi <4 x i32> [ zeroinitializer, %vector.ph1472 ], [ %i.aps, %vector.body1474 ]
  %i.app = shl i64 %index1475, 2
  %next.gep1478 = getelementptr i8, ptr %.sroa.0890.0, i64 %i.app ; 2 uses
  %i.apq = getelementptr i8, ptr %next.gep1478, i64 16
  %wide.load1479 = load <4 x i32>, ptr %next.gep1478, align 4, !tbaa !9
  %wide.load1480 = load <4 x i32>, ptr %i.apq, align 4, !tbaa !9
  %i.apr = add <4 x i32> %wide.load1479, %vec.phi1476 ; 2 uses
  %i.aps = add <4 x i32> %wide.load1480, %vec.phi1477 ; 2 uses
  %index.next1481 = add nuw i64 %index1475, 8     ; 2 uses
  %i.apt = icmp eq i64 %index.next1481, %n.vec1473
  br i1 %i.apt, label %middle.block1482, label %vector.body1474, !llvm.loop !112

middle.block1482:                                 ; preds = %vector.body1474
  %bin.rdx1483 = add <4 x i32> %i.aps, %i.apr
  %i.apu = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1483) ; 2 uses
  %cmp.n1484 = icmp eq i64 %i.apm, %n.vec1473
  br i1 %cmp.n1484, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit449, label %.lr.ph.i443.preheader

.lr.ph.i443.preheader:                            ; preds = %bb.ev, %middle.block1482
  %.07.i444.ph = phi i32 [ 0, %bb.ev ], [ %i.apu, %middle.block1482 ]
  %.sroa.02.06.i445.ph = phi ptr [ %.sroa.0890.0, %bb.ev ], [ %i.apo, %middle.block1482 ]
  br label %.lr.ph.i443

.lr.ph.i443:                                      ; preds = %.lr.ph.i443.preheader, %.lr.ph.i443
  %.07.i444 = phi i32 [ %i.apw, %.lr.ph.i443 ], [ %.07.i444.ph, %.lr.ph.i443.preheader ]
  %.sroa.02.06.i445 = phi ptr [ %i.apx, %.lr.ph.i443 ], [ %.sroa.02.06.i445.ph, %.lr.ph.i443.preheader ] ; 2 uses
  %i.apv = load i32, ptr %.sroa.02.06.i445, align 4, !tbaa !9
  %i.apw = add nsw i32 %i.apv, %.07.i444          ; 2 uses
  %i.apx = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i445, i64 4 ; 2 uses
  %.not.i446 = icmp eq ptr %i.apx, %.0.i.i.i.i.i332
  br i1 %.not.i446, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit449, label %.lr.ph.i443, !llvm.loop !113

_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit449: ; preds = %.lr.ph.i443, %middle.block1482
  %.lcssa1395 = phi i32 [ %i.apu, %middle.block1482 ], [ %i.apw, %.lr.ph.i443 ] ; 3 uses
  %i.apy = sext i32 %.lcssa1395 to i64            ; 2 uses
  %i.apz = icmp slt i32 %.lcssa1395, 0
  br i1 %i.apz, label %bb.ew, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i450

bb.ew:                                            ; preds = %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit449
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.33) #16
          to label %.noexc456 unwind label %bb.fh

.noexc456:                                        ; preds = %bb.ew
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i450: ; preds = %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit449
  %.not.i.i.i.i451 = icmp ne i32 %.lcssa1395, 0
  call void @llvm.assume(i1 %.not.i.i.i.i451)
  %i.aqa = shl nuw nsw i64 %i.apy, 2              ; 3 uses
  %i.aqb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aqa) #18
          to label %.noexc457 unwind label %bb.fh ; 6 uses

.noexc457:                                        ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i450
  store i32 0, ptr %i.aqb, align 4, !tbaa !9
  %i.aqc = add nsw i64 %i.apy, -1                 ; 2 uses
  %i.aqd = icmp eq i64 %i.aqc, 0
  br i1 %i.aqd, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit458, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i452

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i452: ; preds = %.noexc457
  %i.aqe = getelementptr i8, ptr %i.aqb, i64 4
  %.idx.i.i.i.i.i.i.i453 = shl nuw nsw i64 %i.aqc, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.aqe, i8 0, i64 %.idx.i.i.i.i.i.i.i453, i1 false), !tbaa !9
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit458

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit458:            ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i452, %.noexc457
  invoke void @_ZN8Parallel7gathervIiEEvPKT_iPS1_PKi(ptr noundef nonnull %.sroa.0823.0.lcssa, i32 noundef %i.aph, ptr noundef nonnull %i.aqb, ptr noundef nonnull %.sroa.0890.0)
          to label %bb.ex unwind label %bb.fi

bb.ex:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit458
  %i.aqf = load i32, ptr @_ZN8Parallel4mypeE, align 4, !tbaa !9
  %i.aqg = icmp eq i32 %i.aqf, 0
  br i1 %i.aqg, label %bb.ey, label %_ZNSt6vectorIiSaIiEED2Ev.exit500

bb.ey:                                            ; preds = %bb.ex
  %i.aqh = load i32, ptr %i.ur, align 8, !tbaa !74
  %i.aqi = icmp sgt i32 %i.aqh, 0
  br i1 %i.aqi, label %bb.ez, label %.thread929

bb.ez:                                            ; preds = %bb.ey
  %i.aqj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.29, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit460 unwind label %bb.fi ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit460: ; preds = %bb.ez
  %i.aqk = load ptr, ptr %4, align 8, !tbaa !30
  %i.aql = getelementptr i8, ptr %i.aqk, i64 -24
  %i.aqm = load i64, ptr %i.aql, align 8
  %i.aqn = getelementptr inbounds i8, ptr %4, i64 %i.aqm
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.aqn, i64 240
  %i.aqp = load ptr, ptr %i.aqo, align 8, !tbaa !47 ; 6 uses
  %.not.i.i.i746 = icmp eq ptr %i.aqp, null
  br i1 %.not.i.i.i746, label %.invoke1385, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i747

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i747: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit460
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.aqp, i64 56
  %i.aqr = load i8, ptr %i.aqq, align 8, !tbaa !52
  %.not.i1.i.i748 = icmp eq i8 %i.aqr, 0
  br i1 %.not.i1.i.i748, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i747
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aqp, i64 67
  %i.aqt = load i8, ptr %i.aqs, align 1, !tbaa !27
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i749

bb.fb:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i747
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aqp)
          to label %.noexc752 unwind label %bb.fi

.noexc752:                                        ; preds = %bb.fb
  %i.aqu = load ptr, ptr %i.aqp, align 8, !tbaa !30
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.aqu, i64 48
  %i.aqw = load ptr, ptr %i.aqv, align 8
  %i.aqx = invoke noundef signext i8 %i.aqw(ptr noundef nonnull align 8 dereferenceable(570) %i.aqp, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i749 unwind label %bb.fi, !inline_history !1

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i749: ; preds = %.noexc752, %bb.fa
  %.0.i.i.i750 = phi i8 [ %i.aqt, %bb.fa ], [ %i.aqx, %.noexc752 ]
  %i.aqy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %4, i8 noundef signext %.0.i.i.i750)
          to label %.noexc754 unwind label %bb.fi

.noexc754:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i749
  %i.aqz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aqy)
          to label %bb.fc unwind label %bb.fi     ; 0 uses

bb.fc:                                            ; preds = %.noexc754
  %i.ara = load ptr, ptr %4, align 8, !tbaa !30
  %i.arb = getelementptr i8, ptr %i.ara, i64 -24
  %i.arc = load i64, ptr %i.arb, align 8
  %i.ard = getelementptr inbounds i8, ptr %4, i64 %i.arc
  %i.are = getelementptr inbounds nuw i8, ptr %i.ard, i64 16
  store i64 10, ptr %i.are, align 8, !tbaa !68
  %i.arf = load i32, ptr %i.ur, align 8, !tbaa !74
  %i.arg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %i.arf)
          to label %bb.fd unwind label %bb.fi     ; 3 uses

bb.fd:                                            ; preds = %bb.fc
  %i.arh = load ptr, ptr %i.arg, align 8, !tbaa !30
  %i.ari = getelementptr i8, ptr %i.arh, i64 -24
  %i.arj = load i64, ptr %i.ari, align 8
  %i.ark = getelementptr inbounds i8, ptr %i.arg, i64 %i.arj
  %i.arl = getelementptr inbounds nuw i8, ptr %i.ark, i64 240
  %i.arm = load ptr, ptr %i.arl, align 8, !tbaa !47 ; 6 uses
  %.not.i.i.i757 = icmp eq ptr %i.arm, null
  br i1 %.not.i.i.i757, label %.invoke1385, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i758

.invoke1385:                                      ; preds = %bb.fd, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit460
  invoke void @_ZSt16__throw_bad_castv() #16
          to label %.cont1386 unwind label %bb.fi

.cont1386:                                        ; preds = %.invoke1385
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i758: ; preds = %bb.fd
  %i.arn = getelementptr inbounds nuw i8, ptr %i.arm, i64 56
  %i.aro = load i8, ptr %i.arn, align 8, !tbaa !52
  %.not.i1.i.i759 = icmp eq i8 %i.aro, 0
  br i1 %.not.i1.i.i759, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i758
  %i.arp = getelementptr inbounds nuw i8, ptr %i.arm, i64 67
  %i.arq = load i8, ptr %i.arp, align 1, !tbaa !27
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i760

bb.ff:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i758
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.arm)
          to label %.noexc763 unwind label %bb.fi

.noexc763:                                        ; preds = %bb.ff
  %i.arr = load ptr, ptr %i.arm, align 8, !tbaa !30
  %i.ars = getelementptr inbounds nuw i8, ptr %i.arr, i64 48
  %i.art = load ptr, ptr %i.ars, align 8
  %i.aru = invoke noundef signext i8 %i.art(ptr noundef nonnull align 8 dereferenceable(570) %i.arm, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i760 unwind label %bb.fi, !inline_history !1

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i760: ; preds = %.noexc763, %bb.fe
  %.0.i.i.i761 = phi i8 [ %i.arq, %bb.fe ], [ %i.aru, %.noexc763 ]
  %i.arv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.arg, i8 noundef signext %.0.i.i.i761)
          to label %.noexc765 unwind label %bb.fi

.noexc765:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i760
  %i.arw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.arv)
          to label %_ZNSolsEPFRSoS_E.exit464.preheader unwind label %bb.fi ; 0 uses

_ZNSolsEPFRSoS_E.exit464.preheader:               ; preds = %.noexc765
  %i.arx = load i32, ptr %i.ur, align 8, !tbaa !74
  %i.ary = icmp sgt i32 %i.arx, 0
  br i1 %i.ary, label %.lr.ph1106, label %._crit_edge1116
end_hunk_2
