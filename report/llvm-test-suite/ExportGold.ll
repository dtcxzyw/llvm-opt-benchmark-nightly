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
  %.sroa.0890.0 = phi ptr [ %i.uz, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i330 ], [ %i.uz, %.noexc335 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i328 ] ; 26 uses
  %.0.i.i.i.i.i332 = phi ptr [ %i.ve, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i330 ], [ %i.vb, %.noexc335 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i328 ] ; 3 uses
  %.sroa.0890.01443 = ptrtoaddr ptr %.sroa.0890.0 to i64 ; 3 uses
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
  store i32 0, ptr %i.vj, align 4, !tbaa !9
  %i.vk = getelementptr inbounds nuw [4 x i8], ptr %i.vj, i64 %i.vg
  %6 = getelementptr i8, ptr %i.vj, i64 4
  %.idx.i.i.i.i.i.i.i340.a = add nsw i64 %i.vi, -4
  call void @llvm.memset.p0.i64(ptr align 4 %6, i8 0, i64 %.idx.i.i.i.i.i.i.i340.a, i1 false), !tbaa !9
  %7 = ptrtoint ptr %i.vk to i64
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit345

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit345:            ; preds = %.noexc344, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i337
  %.sroa.0882.0 = phi ptr [ %i.vj, %.noexc344 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i337 ] ; 9 uses
  %.sroa.11887.0 = phi i64 [ %7, %.noexc344 ], [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i337 ] ; 2 uses
  %i.vl = load i32, ptr %i.tb, align 8, !tbaa !72 ; 3 uses
  %i.vm = sext i32 %i.vl to i64                   ; 4 uses
  %i.vn = icmp slt i32 %i.vl, 0
  br i1 %i.vn, label %bb.cb, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i346

bb.cb:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit345
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.33) #16
          to label %.noexc352 unwind label %bb.ch

.noexc352:                                        ; preds = %bb.cb
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i346: ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit345
  %.not.i.i.i.i347 = icmp ne i32 %i.vl, 0
  call void @llvm.assume(i1 %.not.i.i.i.i347)
  %i.vo = shl nuw nsw i64 %i.vm, 2
  %i.vp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vo) #18
          to label %.noexc353 unwind label %bb.ch ; 6 uses

.noexc353:                                        ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i346
  store i32 0, ptr %i.vp, align 4, !tbaa !9
  %i.vq = add nsw i64 %i.vm, -1                   ; 2 uses
  %i.vr = icmp eq i64 %i.vq, 0
  br i1 %i.vr, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit354, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i348

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i348: ; preds = %.noexc353
  %i.vs = getelementptr i8, ptr %i.vp, i64 4
  %.idx.i.i.i.i.i.i.i349 = shl nuw nsw i64 %i.vq, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.vs, i8 0, i64 %.idx.i.i.i.i.i.i.i349, i1 false), !tbaa !9
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit354

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit354:            ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i348, %.noexc353
  %.pr1282 = load i32, ptr %i.tb, align 8, !tbaa !72 ; 3 uses
  %i.vt = mul nsw i32 %.pr1282, 3
  %i.vu = sext i32 %i.vt to i64                   ; 2 uses
  %i.vv = icmp slt i32 %.pr1282, 0
  br i1 %i.vv, label %bb.cc, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i355

bb.cc:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit354
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.33) #16
          to label %.noexc361 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit518.thread

.noexc361:                                        ; preds = %bb.cc
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i355: ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit354
  %.not.i.i.i.i356 = icmp eq i32 %.pr1282, 0
  br i1 %.not.i.i.i.i356, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit363, label %bb.cd

bb.cd:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i355
  %i.vw = shl nuw nsw i64 %i.vu, 2                ; 2 uses
  %i.vx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vw) #18
          to label %.noexc362 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit518.thread ; 4 uses

.noexc362:                                        ; preds = %bb.cd
  store i32 0, ptr %i.vx, align 4, !tbaa !9
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr %i.vx, i64 %i.vu
  %8 = getelementptr i8, ptr %i.vx, i64 4
  %.idx.i.i.i.i.i.i.i358.a = add nsw i64 %i.vw, -4
  call void @llvm.memset.p0.i64(ptr align 4 %8, i8 0, i64 %.idx.i.i.i.i.i.i.i358.a, i1 false), !tbaa !9
  %9 = ptrtoint ptr %i.vy to i64
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit363

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit363:            ; preds = %.noexc362, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i355
  %.sroa.0866.0 = phi ptr [ %i.vx, %.noexc362 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i355 ] ; 9 uses
  %.sroa.11871.0 = phi i64 [ %9, %.noexc362 ], [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i355 ] ; 2 uses
  %i.vz = load ptr, ptr %i.pl, align 8, !tbaa !19
  %i.wa = load ptr, ptr %i.sb, align 8, !tbaa !19
  invoke void @_ZN8Parallel7gathervIiEEvPKT_iPS1_PKi(ptr noundef nonnull %i.vz, i32 noundef %i.pt, ptr noundef nonnull %i.vp, ptr noundef nonnull %i.wa)
          to label %bb.ce unwind label %bb.ci

bb.ce:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit363
  %i.wb = load i32, ptr @_ZN8Parallel4mypeE, align 4, !tbaa !9
  %i.wc = icmp eq i32 %i.wb, 0
  br i1 %i.wc, label %.preheader1023, label %.loopexit1024

.preheader1023:                                   ; preds = %bb.ce
  %i.wd = load i32, ptr @_ZN8Parallel5numpeE, align 4, !tbaa !9 ; 3 uses
  %i.we = icmp sgt i32 %i.wd, 0
  br i1 %i.we, label %.lr.ph1068, label %.loopexit1024

.lr.ph1068:                                       ; preds = %.preheader1023
  %i.wf = load ptr, ptr %i.sb, align 8, !tbaa !19 ; 7 uses
  %wide.trip.count = zext nneg i32 %i.wd to i64   ; 5 uses
  %min.iters.check1445 = icmp ult i32 %i.wd, 8
  %i.wg = ptrtoaddr ptr %i.wf to i64
  %i.wh = sub i64 %i.wg, %.sroa.0890.01443
  %diff.check = icmp ugt i64 %i.wh, -32
  %or.cond = select i1 %min.iters.check1445, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph1444.preheader, label %vector.ph1446

vector.ph1446:                                    ; preds = %.lr.ph1068
  %n.vec1447 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vector.body1448

vector.body1448:                                  ; preds = %vector.body1448, %vector.ph1446
  %index1449 = phi i64 [ 0, %vector.ph1446 ], [ %index.next1452, %vector.body1448 ] ; 3 uses
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %i.wf, i64 %index1449 ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 16
  %wide.load1450 = load <4 x i32>, ptr %i.wi, align 4, !tbaa !9
  %wide.load1451 = load <4 x i32>, ptr %i.wj, align 4, !tbaa !9
  %i.wk = mul nsw <4 x i32> %wide.load1450, splat (i32 3)
  %i.wl = mul nsw <4 x i32> %wide.load1451, splat (i32 3)
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0890.0, i64 %index1449 ; 2 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 16
  store <4 x i32> %i.wk, ptr %i.wm, align 4, !tbaa !9
  store <4 x i32> %i.wl, ptr %i.wn, align 4, !tbaa !9
  %index.next1452 = add nuw i64 %index1449, 8     ; 2 uses
  %i.wo = icmp eq i64 %index.next1452, %n.vec1447
  br i1 %i.wo, label %middle.block1453, label %vector.body1448, !llvm.loop !98

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
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %i.wf, i64 %indvars.iv1129.prol
  %i.wq = load i32, ptr %i.wp, align 4, !tbaa !9
  %i.wr = mul nsw i32 %i.wq, 3
  %i.ws = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0890.0, i64 %indvars.iv1129.prol
  store i32 %i.wr, ptr %i.ws, align 4, !tbaa !9
  %indvars.iv.next1130.prol = add nuw nsw i64 %indvars.iv1129.prol, 1 ; 2 uses
  %prol.iter1518.next = add i64 %prol.iter1518, 1 ; 2 uses
  %prol.iter1518.cmp.not = icmp eq i64 %prol.iter1518.next, %xtraiter1516
  br i1 %prol.iter1518.cmp.not, label %scalar.ph1444.prol.loopexit, label %scalar.ph1444.prol, !llvm.loop !99

scalar.ph1444.prol.loopexit:                      ; preds = %scalar.ph1444.prol, %scalar.ph1444.preheader
  %indvars.iv1129.unr = phi i64 [ %indvars.iv1129.ph, %scalar.ph1444.preheader ], [ %indvars.iv.next1130.prol, %scalar.ph1444.prol ]
  %i.wt = sub nsw i64 %indvars.iv1129.ph, %wide.trip.count
  %i.wu = icmp ugt i64 %i.wt, -4
  br i1 %i.wu, label %.loopexit1024, label %scalar.ph1444

bb.cf:                                            ; preds = %bb.by, %bb.bx
  %i.wv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit524.thread

bb.cg:                                            ; preds = %bb.ca, %bb.bz
  %i.ww = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit522

bb.ch:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i346, %bb.cb
  %i.wx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit520

_ZNSt6vectorIiSaIiEED2Ev.exit518.thread:          ; preds = %bb.cc, %bb.cd
  %i.wy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit518

bb.ci:                                            ; preds = %.invoke1381, %.noexc677, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i672, %.noexc675, %bb.cs, %.noexc666, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i661, %.noexc664, %bb.co, %bb.cm, %bb.cp, %._crit_edge, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit363
  %i.wz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit516

scalar.ph1444:                                    ; preds = %scalar.ph1444.prol.loopexit, %scalar.ph1444
  %indvars.iv1129 = phi i64 [ %indvars.iv.next1130.3, %scalar.ph1444 ], [ %indvars.iv1129.unr, %scalar.ph1444.prol.loopexit ] ; 6 uses
  %i.xa = getelementptr inbounds nuw [4 x i8], ptr %i.wf, i64 %indvars.iv1129
  %i.xb = load i32, ptr %i.xa, align 4, !tbaa !9
  %i.xc = mul nsw i32 %i.xb, 3
  %i.xd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0890.0, i64 %indvars.iv1129
  store i32 %i.xc, ptr %i.xd, align 4, !tbaa !9
  %indvars.iv.next1130 = add nuw nsw i64 %indvars.iv1129, 1 ; 2 uses
  %i.xe = getelementptr inbounds nuw [4 x i8], ptr %i.wf, i64 %indvars.iv.next1130
  %i.xf = load i32, ptr %i.xe, align 4, !tbaa !9
  %i.xg = mul nsw i32 %i.xf, 3
  %i.xh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0890.0, i64 %indvars.iv.next1130
  store i32 %i.xg, ptr %i.xh, align 4, !tbaa !9
  %indvars.iv.next1130.1 = add nuw nsw i64 %indvars.iv1129, 2 ; 2 uses
  %i.xi = getelementptr inbounds nuw [4 x i8], ptr %i.wf, i64 %indvars.iv.next1130.1
  %i.xj = load i32, ptr %i.xi, align 4, !tbaa !9
  %i.xk = mul nsw i32 %i.xj, 3
  %i.xl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0890.0, i64 %indvars.iv.next1130.1
  store i32 %i.xk, ptr %i.xl, align 4, !tbaa !9
  %indvars.iv.next1130.2 = add nuw nsw i64 %indvars.iv1129, 3 ; 2 uses
  %i.xm = getelementptr inbounds nuw [4 x i8], ptr %i.wf, i64 %indvars.iv.next1130.2
  %i.xn = load i32, ptr %i.xm, align 4, !tbaa !9
  %i.xo = mul nsw i32 %i.xn, 3
  %i.xp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0890.0, i64 %indvars.iv.next1130.2
  store i32 %i.xo, ptr %i.xp, align 4, !tbaa !9
  %indvars.iv.next1130.3 = add nuw nsw i64 %indvars.iv1129, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next1130.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit1024, label %scalar.ph1444, !llvm.loop !100

.loopexit1024:                                    ; preds = %scalar.ph1444.prol.loopexit, %scalar.ph1444, %middle.block1453, %.preheader1023, %bb.ce
  br i1 %.not.i.i.i.i338, label %._crit_edge, label %.lr.ph1071

.lr.ph1071:                                       ; preds = %.loopexit1024
  %i.xq = load ptr, ptr %i.pl, align 8, !tbaa !19
  %i.xr = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.xs = load ptr, ptr %i.xr, align 8, !tbaa !19
  %i.xt = load i32, ptr %i.b, align 4, !tbaa !9   ; 3 uses
  %wide.trip.count1139 = and i64 %i.ps, 2147483647
  br label %bb.cj

._crit_edge:                                      ; preds = %bb.cj, %.loopexit1024
  invoke void @_ZN8Parallel7gathervIiEEvPKT_iPS1_PKi(ptr noundef nonnull %.sroa.0882.0, i32 noundef %i.vf, ptr noundef nonnull %.sroa.0866.0, ptr noundef nonnull %.sroa.0890.0)
          to label %bb.ck unwind label %bb.ci

bb.cj:                                            ; preds = %.lr.ph1071, %bb.cj
  %indvars.iv1136 = phi i64 [ 0, %.lr.ph1071 ], [ %indvars.iv.next1137, %bb.cj ] ; 3 uses
  %i.xu = getelementptr inbounds nuw [4 x i8], ptr %i.xq, i64 %indvars.iv1136
  %i.xv = load i32, ptr %i.xu, align 4, !tbaa !9
  %i.xw = sext i32 %i.xv to i64
  %i.xx = getelementptr inbounds nuw [4 x i8], ptr %i.xs, i64 %i.xw
  %i.xy = load i32, ptr %i.xx, align 4, !tbaa !9
  %i.xz = mul nuw nsw i64 %indvars.iv1136, 3      ; 3 uses
  %i.ya = sext i32 %i.xy to i64                   ; 3 uses
  %i.yb = getelementptr inbounds [4 x i8], ptr %i.pk, i64 %i.ya
  %i.yc = load i32, ptr %i.yb, align 4, !tbaa !9
  %i.yd = add nsw i32 %i.xt, %i.yc
  %i.ye = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0882.0, i64 %i.xz
  store i32 %i.yd, ptr %i.ye, align 4, !tbaa !9
  %i.yf = getelementptr [4 x i8], ptr %i.pk, i64 %i.ya
  %i.yg = getelementptr i8, ptr %i.yf, i64 4
  %i.yh = load i32, ptr %i.yg, align 4, !tbaa !9
  %i.yi = add nsw i32 %i.xt, %i.yh
  %i.yj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0882.0, i64 %i.xz
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yj, i64 4
  store i32 %i.yi, ptr %i.yk, align 4, !tbaa !9
  %i.yl = getelementptr [4 x i8], ptr %i.pk, i64 %i.ya
  %i.ym = getelementptr i8, ptr %i.yl, i64 8
  %i.yn = load i32, ptr %i.ym, align 4, !tbaa !9
  %i.yo = add nsw i32 %i.xt, %i.yn
  %i.yp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0882.0, i64 %i.xz
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 8
  store i32 %i.yo, ptr %i.yq, align 4, !tbaa !9
  %indvars.iv.next1137 = add nuw nsw i64 %indvars.iv1136, 1 ; 2 uses
  %exitcond1140.not = icmp eq i64 %indvars.iv.next1137, %wide.trip.count1139
  br i1 %exitcond1140.not, label %._crit_edge, label %bb.cj, !llvm.loop !101

bb.ck:                                            ; preds = %._crit_edge
  %i.yr = load i32, ptr @_ZN8Parallel4mypeE, align 4, !tbaa !9
  %i.ys = icmp eq i32 %i.yr, 0
  br i1 %i.ys, label %bb.cl, label %.loopexit1012

bb.cl:                                            ; preds = %bb.ck
  %i.yt = load i32, ptr %i.tb, align 8, !tbaa !72
  %i.yu = icmp sgt i32 %i.yt, 0
  br i1 %i.yu, label %bb.cm, label %.loopexit1012

bb.cm:                                            ; preds = %bb.cl
  %i.yv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.27, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit365 unwind label %bb.ci ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit365: ; preds = %bb.cm
  %i.yw = load ptr, ptr %4, align 8, !tbaa !30
  %i.yx = getelementptr i8, ptr %i.yw, i64 -24
  %i.yy = load i64, ptr %i.yx, align 8
  %i.yz = getelementptr inbounds i8, ptr %4, i64 %i.yy
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 240
  %i.zb = load ptr, ptr %i.za, align 8, !tbaa !47 ; 6 uses
  %.not.i.i.i658 = icmp eq ptr %i.zb, null
  br i1 %.not.i.i.i658, label %.invoke1381, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i659

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i659: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit365
end_hunk_0
begin_hunk_1_@_ZN10ExportGold12writeGeoFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEid:bb.a
  %i.atr = load i8, ptr %i.atq, align 8, !tbaa !52
  %.not.i1.i.i781 = icmp eq i8 %i.atr, 0
  br i1 %.not.i1.i.i781, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i780
  %i.ats = getelementptr inbounds nuw i8, ptr %i.atp, i64 67
  %i.att = load i8, ptr %i.ats, align 1, !tbaa !27
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i782

bb.fq:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i780
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.atp)
          to label %.noexc785 unwind label %.loopexit979

.noexc785:                                        ; preds = %bb.fq
  %i.atu = load ptr, ptr %i.atp, align 8, !tbaa !30
  %i.atv = getelementptr inbounds nuw i8, ptr %i.atu, i64 48
  %i.atw = load ptr, ptr %i.atv, align 8
  %i.atx = invoke noundef signext i8 %i.atw(ptr noundef nonnull align 8 dereferenceable(570) %i.atp, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i782 unwind label %.loopexit979, !inline_history !1

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i782: ; preds = %.noexc785, %bb.fp
  %.0.i.i.i783 = phi i8 [ %i.att, %bb.fp ], [ %i.atx, %.noexc785 ]
  %i.aty = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.atj, i8 noundef signext %.0.i.i.i783)
          to label %.noexc787 unwind label %.loopexit979

.noexc787:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i782
  %i.atz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aty)
          to label %_ZNSolsEPFRSoS_E.exit468 unwind label %.loopexit979 ; 0 uses

_ZNSolsEPFRSoS_E.exit468:                         ; preds = %.noexc787
  %indvars.iv.next1188 = add nuw nsw i64 %indvars.iv1187, 1 ; 2 uses
  %i.aua = load i32, ptr %i.ur, align 8, !tbaa !74 ; 2 uses
  %i.aub = sext i32 %i.aua to i64
  %i.auc = icmp slt i64 %indvars.iv.next1188, %i.aub
  br i1 %i.auc, label %.lr.ph1108, label %.preheader977, !llvm.loop !115

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
  %.01421114 = phi i32 [ %i.avk, %_ZNSolsEPFRSoS_E.exit470 ], [ 0, %.preheader977 ] ; 2 uses
  %i.aud = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0808.0, i64 %indvars.iv1193 ; 3 uses
  %i.aue = load i32, ptr %i.aud, align 4, !tbaa !9
  %i.auf = icmp sgt i32 %i.aue, 0
  br i1 %i.auf, label %.lr.ph1111.preheader, label %._crit_edge1112

.lr.ph1111.preheader:                             ; preds = %.preheader
  %i.aug = sext i32 %.01421114 to i64
  %invariant.gep1377 = getelementptr [4 x i8], ptr %i.apx, i64 %i.aug
  br label %.lr.ph1111

._crit_edge1112:                                  ; preds = %bb.fu, %.preheader
  %i.auh = load ptr, ptr %4, align 8, !tbaa !30
  %i.aui = getelementptr i8, ptr %i.auh, i64 -24
  %i.auj = load i64, ptr %i.aui, align 8
  %i.auk = getelementptr inbounds i8, ptr %4, i64 %i.auj
  %i.aul = getelementptr inbounds nuw i8, ptr %i.auk, i64 240
  %i.aum = load ptr, ptr %i.aul, align 8, !tbaa !47 ; 6 uses
  %.not.i.i.i790 = icmp eq ptr %i.aum, null
  br i1 %.not.i.i.i790, label %bb.fr, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i791

bb.fr:                                            ; preds = %._crit_edge1112
  invoke void @_ZSt16__throw_bad_castv() #16
          to label %.noexc795 unwind label %.loopexit.split-lp

.noexc795:                                        ; preds = %bb.fr
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i791: ; preds = %._crit_edge1112
  %i.aun = getelementptr inbounds nuw i8, ptr %i.aum, i64 56
  %i.auo = load i8, ptr %i.aun, align 8, !tbaa !52
  %.not.i1.i.i792 = icmp eq i8 %i.auo, 0
  br i1 %.not.i1.i.i792, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i791
  %i.aup = getelementptr inbounds nuw i8, ptr %i.aum, i64 67
  %i.auq = load i8, ptr %i.aup, align 1, !tbaa !27
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i793

bb.ft:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i791
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aum)
          to label %.noexc796 unwind label %.loopexit

.noexc796:                                        ; preds = %bb.ft
  %i.aur = load ptr, ptr %i.aum, align 8, !tbaa !30
  %i.aus = getelementptr inbounds nuw i8, ptr %i.aur, i64 48
  %i.aut = load ptr, ptr %i.aus, align 8
  %i.auu = invoke noundef signext i8 %i.aut(ptr noundef nonnull align 8 dereferenceable(570) %i.aum, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i793 unwind label %.loopexit, !inline_history !1

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i793: ; preds = %.noexc796, %bb.fs
  %.0.i.i.i794 = phi i8 [ %i.auq, %bb.fs ], [ %i.auu, %.noexc796 ]
  %i.auv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %4, i8 noundef signext %.0.i.i.i794)
          to label %.noexc798 unwind label %.loopexit

.noexc798:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i793
  %i.auw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.auv)
          to label %_ZNSolsEPFRSoS_E.exit470 unwind label %.loopexit ; 0 uses

.lr.ph1111:                                       ; preds = %.lr.ph1111.preheader, %bb.fu
  %indvars.iv1190 = phi i64 [ 0, %.lr.ph1111.preheader ], [ %indvars.iv.next1191, %bb.fu ] ; 2 uses
  %i.aux = load ptr, ptr %4, align 8, !tbaa !30
  %i.auy = getelementptr i8, ptr %i.aux, i64 -24
  %i.auz = load i64, ptr %i.auy, align 8
  %i.ava = getelementptr inbounds i8, ptr %4, i64 %i.auz
  %i.avb = getelementptr inbounds nuw i8, ptr %i.ava, i64 16
  store i64 10, ptr %i.avb, align 8, !tbaa !68
  %gep1378 = getelementptr [4 x i8], ptr %invariant.gep1377, i64 %indvars.iv1190
  %i.avc = load i32, ptr %gep1378, align 4, !tbaa !9
  %i.avd = add nsw i32 %i.avc, 1
  %i.ave = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %i.avd)
          to label %bb.fu unwind label %.thread931 ; 0 uses

bb.fu:                                            ; preds = %.lr.ph1111
  %indvars.iv.next1191 = add nuw nsw i64 %indvars.iv1190, 1 ; 2 uses
  %i.avf = load i32, ptr %i.aud, align 4, !tbaa !9
  %i.avg = sext i32 %i.avf to i64
  %i.avh = icmp slt i64 %indvars.iv.next1191, %i.avg
  br i1 %i.avh, label %.lr.ph1111, label %._crit_edge1112, !llvm.loop !116

.thread931:                                       ; preds = %.lr.ph1111
  %i.avi = landingpad { ptr, i32 }
          cleanup
  br label %bb.fw

_ZNSolsEPFRSoS_E.exit470:                         ; preds = %.noexc798
  %i.avj = load i32, ptr %i.aud, align 4, !tbaa !9
  %i.avk = add nsw i32 %i.avj, %.01421114
  %indvars.iv.next1194 = add nuw nsw i64 %indvars.iv1193, 1 ; 2 uses
  %i.avl = load i32, ptr %i.ur, align 8, !tbaa !74
  %i.avm = sext i32 %i.avl to i64
  %i.avn = icmp slt i64 %indvars.iv.next1194, %i.avm
  br i1 %i.avn, label %.preheader, label %._crit_edge1116, !llvm.loop !117

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
  %i.avo = icmp eq i32 %.pr928, 0
  br i1 %i.avo, label %.thread929, label %_ZNSt6vectorIiSaIiEED2Ev.exit500

.thread929:                                       ; preds = %bb.ey, %._crit_edge1116
  %i.avp = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.avq = invoke noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(240) %i.avp)
          to label %.noexc472 unwind label %bb.fi

.noexc472:                                        ; preds = %.thread929
  %.not.i471 = icmp eq ptr %i.avq, null
  br i1 %.not.i471, label %bb.fv, label %_ZNSt6vectorIiSaIiEED2Ev.exit500

bb.fv:                                            ; preds = %.noexc472
  %i.avr = load ptr, ptr %4, align 8, !tbaa !30
  %i.avs = getelementptr i8, ptr %i.avr, i64 -24
  %i.avt = load i64, ptr %i.avs, align 8
  %i.avu = getelementptr inbounds i8, ptr %4, i64 %i.avt ; 2 uses
  %i.avv = getelementptr inbounds nuw i8, ptr %i.avu, i64 32
  %i.avw = load i32, ptr %i.avv, align 8, !tbaa !39
  %i.avx = or i32 %i.avw, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.avu, i32 noundef %i.avx)
          to label %_ZNSt6vectorIiSaIiEED2Ev.exit500 unwind label %bb.fi

_ZNSt6vectorIiSaIiEED2Ev.exit500:                 ; preds = %bb.ex, %.noexc472, %bb.fv, %._crit_edge1116
  call void @_ZdlPvm(ptr noundef nonnull %i.apx, i64 noundef %i.apw) #14
  %i.avy = ptrtoint ptr %.sroa.13.0 to i64
  %i.avz = ptrtoint ptr %.sroa.0808.0 to i64
  %i.awa = sub i64 %i.avy, %i.avz
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0808.0, i64 noundef %i.awa) #14
  %.idx = shl nuw nsw i64 %i.amv, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.amy, i64 noundef %.idx) #14
  %i.awb = ptrtoint ptr %.sroa.14.0.lcssa to i64
  %i.awc = sub i64 %i.awb, %i.apa
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0823.0.lcssa, i64 noundef %i.awc) #14
  %i.awd = ptrtoint ptr %.sroa.11839.0 to i64
  %i.awe = ptrtoint ptr %.sroa.0834.0 to i64
  %i.awf = sub i64 %i.awd, %i.awe
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0834.0, i64 noundef %i.awf) #14
  %i.awg = ptrtoint ptr %.sroa.0842.0 to i64
  %i.awh = sub i64 %.sroa.11847.0, %i.awg
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0842.0, i64 noundef %i.awh) #14
  %.idx1387 = shl nuw nsw i64 %i.adv, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.ady, i64 noundef %.idx1387) #14
  %i.awi = ptrtoint ptr %.sroa.0858.0 to i64
  %i.awj = sub i64 %.sroa.11863.0, %i.awi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0858.0, i64 noundef %i.awj) #14
  %i.awk = ptrtoint ptr %.sroa.0866.0 to i64
  %i.awl = sub i64 %.sroa.11871.0, %i.awk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0866.0, i64 noundef %i.awl) #14
  %.idx1388 = shl nuw nsw i64 %i.vm, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.vp, i64 noundef %.idx1388) #14
  %i.awm = ptrtoint ptr %.sroa.0882.0 to i64
  %i.awn = sub i64 %.sroa.11887.0, %i.awm
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0882.0, i64 noundef %i.awn) #14
  %i.awo = ptrtoint ptr %.sroa.17.0 to i64
  %i.awp = ptrtoint ptr %.sroa.0890.0 to i64
  %i.awq = sub i64 %i.awo, %i.awp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0890.0, i64 noundef %i.awq) #14
  call void @_ZdlPvm(ptr noundef nonnull %i.jx, i64 noundef %i.jw) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  %.idx1389 = shl nuw nsw i64 %i.hr, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.hu, i64 noundef %.idx1389) #14
  call void @_ZdlPvm(ptr noundef nonnull %i.hi, i64 noundef %i.hh) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248) %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret void

bb.fw:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit979, %.loopexit.split-lp980, %.loopexit984, %.loopexit.split-lp985, %bb.fi, %.thread931
  %.pn195934 = phi { ptr, i32 } [ %i.avi, %.thread931 ], [ %lpad.loopexit.split-lp982, %.loopexit.split-lp980 ], [ %lpad.loopexit.split-lp987, %.loopexit.split-lp985 ], [ %i.ary, %bb.fi ], [ %lpad.loopexit986, %.loopexit984 ], [ %lpad.loopexit981, %.loopexit979 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZdlPvm(ptr noundef nonnull %i.apx, i64 noundef %i.apw) #14
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit502

_ZNSt6vectorIiSaIiEED2Ev.exit502:                 ; preds = %.loopexit989, %.loopexit.split-lp990, %bb.fw, %bb.en
  %.sroa.0823.3 = phi ptr [ %.sroa.0823.0.lcssa, %bb.fw ], [ %.sroa.0823.1, %bb.en ], [ %.sroa.0823.21087, %.loopexit989 ], [ %.sroa.0823.21087, %.loopexit.split-lp990 ] ; 2 uses
  %.sroa.14.3 = phi ptr [ %.sroa.14.0.lcssa, %bb.fw ], [ %.sroa.14.1, %bb.en ], [ %.sroa.14.21089, %.loopexit989 ], [ %.sroa.14.21089, %.loopexit.split-lp990 ] ; 2 uses
  %.pn199 = phi { ptr, i32 } [ %.pn195934, %bb.fw ], [ %i.ant, %bb.en ], [ %lpad.loopexit991, %.loopexit989 ], [ %lpad.loopexit.split-lp992, %.loopexit.split-lp990 ] ; 2 uses
  %.not.i.i.i503 = icmp eq ptr %.sroa.0808.0, null
  br i1 %.not.i.i.i503, label %_ZNSt6vectorIiSaIiEED2Ev.exit504, label %_ZNSt6vectorIiSaIiEED2Ev.exit502.thread

_ZNSt6vectorIiSaIiEED2Ev.exit502.thread:          ; preds = %bb.fg, %bb.fh, %_ZNSt6vectorIiSaIiEED2Ev.exit502
  %.pn199944 = phi { ptr, i32 } [ %.pn199, %_ZNSt6vectorIiSaIiEED2Ev.exit502 ], [ %i.arx, %bb.fh ], [ %i.arw, %bb.fg ]
  %.sroa.14.3942 = phi ptr [ %.sroa.14.3, %_ZNSt6vectorIiSaIiEED2Ev.exit502 ], [ %.sroa.14.0.lcssa, %bb.fh ], [ %.sroa.14.0.lcssa, %bb.fg ]
  %.sroa.0823.3940 = phi ptr [ %.sroa.0823.3, %_ZNSt6vectorIiSaIiEED2Ev.exit502 ], [ %.sroa.0823.0.lcssa, %bb.fh ], [ %.sroa.0823.0.lcssa, %bb.fg ]
  %i.awr = ptrtoint ptr %.sroa.13.0 to i64
  %i.aws = ptrtoint ptr %.sroa.0808.0 to i64
  %i.awt = sub i64 %i.awr, %i.aws
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0808.0, i64 noundef %i.awt) #14
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit504

_ZNSt6vectorIiSaIiEED2Ev.exit504:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit502.thread, %_ZNSt6vectorIiSaIiEED2Ev.exit502
  %.sroa.0823.4 = phi ptr [ %.sroa.0823.3940, %_ZNSt6vectorIiSaIiEED2Ev.exit502.thread ], [ %.sroa.0823.3, %_ZNSt6vectorIiSaIiEED2Ev.exit502 ]
  %.sroa.14.4 = phi ptr [ %.sroa.14.3942, %_ZNSt6vectorIiSaIiEED2Ev.exit502.thread ], [ %.sroa.14.3, %_ZNSt6vectorIiSaIiEED2Ev.exit502 ]
  %.pn199.pn = phi { ptr, i32 } [ %.pn199944, %_ZNSt6vectorIiSaIiEED2Ev.exit502.thread ], [ %.pn199, %_ZNSt6vectorIiSaIiEED2Ev.exit502 ]
  %i.awu = ptrtoint ptr %.sroa.14.4 to i64
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit506

_ZNSt6vectorIiSaIiEED2Ev.exit506:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit504, %_ZNSt6vectorIiSaIiEED2Ev.exit504.thread
  %.pn199.pn1342 = phi { ptr, i32 } [ %i.ans, %_ZNSt6vectorIiSaIiEED2Ev.exit504.thread ], [ %.pn199.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit504 ] ; 2 uses
  %.sroa.14.41340 = phi i64 [ 0, %_ZNSt6vectorIiSaIiEED2Ev.exit504.thread ], [ %i.awu, %_ZNSt6vectorIiSaIiEED2Ev.exit504 ]
  %.sroa.0823.41338 = phi ptr [ null, %_ZNSt6vectorIiSaIiEED2Ev.exit504.thread ], [ %.sroa.0823.4, %_ZNSt6vectorIiSaIiEED2Ev.exit504 ] ; 3 uses
  %.idx1390 = shl nuw nsw i64 %i.amv, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.amy, i64 noundef %.idx1390) #14
  %.not.i.i.i507 = icmp eq ptr %.sroa.0823.41338, null
  br i1 %.not.i.i.i507, label %_ZNSt6vectorIiSaIiEED2Ev.exit508, label %bb.fx

bb.fx:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit506
  %i.awv = ptrtoint ptr %.sroa.0823.41338 to i64
  %i.aww = sub i64 %.sroa.14.41340, %i.awv
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0823.41338, i64 noundef %i.aww) #14
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit508

_ZNSt6vectorIiSaIiEED2Ev.exit508:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit506.thread, %_ZNSt6vectorIiSaIiEED2Ev.exit506, %bb.fx
  %.pn199.pn.pn950 = phi { ptr, i32 } [ %i.anr, %_ZNSt6vectorIiSaIiEED2Ev.exit506.thread ], [ %.pn199.pn1342, %_ZNSt6vectorIiSaIiEED2Ev.exit506 ], [ %.pn199.pn1342, %bb.fx ] ; 2 uses
  %.not.i.i.i509 = icmp eq ptr %.sroa.0834.0, null
  br i1 %.not.i.i.i509, label %_ZNSt6vectorIiSaIiEED2Ev.exit510, label %bb.fy

bb.fy:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit508
  %i.awx = ptrtoint ptr %.sroa.11839.0 to i64
  %i.awy = ptrtoint ptr %.sroa.0834.0 to i64
  %i.awz = sub i64 %i.awx, %i.awy
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0834.0, i64 noundef %i.awz) #14
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit510

_ZNSt6vectorIiSaIiEED2Ev.exit510:                 ; preds = %.loopexit1003, %.loopexit.split-lp1004, %bb.em, %_ZNSt6vectorIiSaIiEED2Ev.exit508, %bb.fy, %bb.dl
  %.pn206 = phi { ptr, i32 } [ %.pn199.pn.pn950, %_ZNSt6vectorIiSaIiEED2Ev.exit508 ], [ %i.afj, %bb.dl ], [ %lpad.loopexit.split-lp1006, %.loopexit.split-lp1004 ], [ %.pn199.pn.pn950, %bb.fy ], [ %i.anq, %bb.em ], [ %lpad.loopexit1005, %.loopexit1003 ] ; 2 uses
  %.not.i.i.i511 = icmp eq ptr %.sroa.0842.0, null
  br i1 %.not.i.i.i511, label %_ZNSt6vectorIiSaIiEED2Ev.exit512, label %_ZNSt6vectorIiSaIiEED2Ev.exit510.thread1344

_ZNSt6vectorIiSaIiEED2Ev.exit510.thread1344:      ; preds = %.loopexit.split-lp999, %.loopexit998, %_ZNSt6vectorIiSaIiEED2Ev.exit510.thread, %_ZNSt6vectorIiSaIiEED2Ev.exit510
  %.pn206953 = phi { ptr, i32 } [ %i.ami, %_ZNSt6vectorIiSaIiEED2Ev.exit510.thread ], [ %.pn206, %_ZNSt6vectorIiSaIiEED2Ev.exit510 ], [ %lpad.loopexit.split-lp1001, %.loopexit.split-lp999 ], [ %lpad.loopexit1000, %.loopexit998 ]
  %i.axa = ptrtoint ptr %.sroa.0842.0 to i64
  %i.axb = sub i64 %.sroa.11847.0, %i.axa
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0842.0, i64 noundef %i.axb) #14
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit512

_ZNSt6vectorIiSaIiEED2Ev.exit512:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit510, %_ZNSt6vectorIiSaIiEED2Ev.exit510.thread1344, %_ZNSt6vectorIiSaIiEED2Ev.exit512.thread
  %.pn206.pn1353 = phi { ptr, i32 } [ %i.afi, %_ZNSt6vectorIiSaIiEED2Ev.exit512.thread ], [ %.pn206953, %_ZNSt6vectorIiSaIiEED2Ev.exit510.thread1344 ], [ %.pn206, %_ZNSt6vectorIiSaIiEED2Ev.exit510 ]
  %.idx1391 = shl nuw nsw i64 %i.adv, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.ady, i64 noundef %.idx1391) #14
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit514

_ZNSt6vectorIiSaIiEED2Ev.exit514:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit512, %bb.dk
  %.pn206.pn.pn = phi { ptr, i32 } [ %i.afh, %bb.dk ], [ %.pn206.pn1353, %_ZNSt6vectorIiSaIiEED2Ev.exit512 ] ; 2 uses
  %.not.i.i.i515 = icmp eq ptr %.sroa.0858.0, null
  br i1 %.not.i.i.i515, label %_ZNSt6vectorIiSaIiEED2Ev.exit516, label %bb.fz

bb.fz:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit514
  %i.axc = ptrtoint ptr %.sroa.0858.0 to i64
  %i.axd = sub i64 %.sroa.11863.0, %i.axc
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0858.0, i64 noundef %i.axd) #14
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit516

_ZNSt6vectorIiSaIiEED2Ev.exit516:                 ; preds = %.loopexit1018, %.loopexit.split-lp1019, %bb.dj, %_ZNSt6vectorIiSaIiEED2Ev.exit514, %bb.fz, %bb.ci
  %.pn213 = phi { ptr, i32 } [ %.pn206.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit514 ], [ %i.wz, %bb.ci ], [ %lpad.loopexit.split-lp1021, %.loopexit.split-lp1019 ], [ %.pn206.pn.pn, %bb.fz ], [ %i.afg, %bb.dj ], [ %lpad.loopexit1020, %.loopexit1018 ] ; 2 uses
  %.not.i.i.i517 = icmp eq ptr %.sroa.0866.0, null
  br i1 %.not.i.i.i517, label %_ZNSt6vectorIiSaIiEED2Ev.exit518, label %_ZNSt6vectorIiSaIiEED2Ev.exit516.thread1354

_ZNSt6vectorIiSaIiEED2Ev.exit516.thread1354:      ; preds = %.loopexit.split-lp1014, %.loopexit1013, %_ZNSt6vectorIiSaIiEED2Ev.exit516.thread, %_ZNSt6vectorIiSaIiEED2Ev.exit516
  %.pn213957 = phi { ptr, i32 } [ %i.adi, %_ZNSt6vectorIiSaIiEED2Ev.exit516.thread ], [ %.pn213, %_ZNSt6vectorIiSaIiEED2Ev.exit516 ], [ %lpad.loopexit.split-lp1016, %.loopexit.split-lp1014 ], [ %lpad.loopexit1015, %.loopexit1013 ]
  %i.axe = ptrtoint ptr %.sroa.0866.0 to i64
  %i.axf = sub i64 %.sroa.11871.0, %i.axe
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0866.0, i64 noundef %i.axf) #14
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit518

_ZNSt6vectorIiSaIiEED2Ev.exit518:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit516, %_ZNSt6vectorIiSaIiEED2Ev.exit516.thread1354, %_ZNSt6vectorIiSaIiEED2Ev.exit518.thread
  %.pn213.pn1363 = phi { ptr, i32 } [ %i.wy, %_ZNSt6vectorIiSaIiEED2Ev.exit518.thread ], [ %.pn213957, %_ZNSt6vectorIiSaIiEED2Ev.exit516.thread1354 ], [ %.pn213, %_ZNSt6vectorIiSaIiEED2Ev.exit516 ]
  %.idx1392 = shl nuw nsw i64 %i.vm, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.vp, i64 noundef %.idx1392) #14
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit520

_ZNSt6vectorIiSaIiEED2Ev.exit520:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit518, %bb.ch
  %.pn213.pn.pn = phi { ptr, i32 } [ %i.wx, %bb.ch ], [ %.pn213.pn1363, %_ZNSt6vectorIiSaIiEED2Ev.exit518 ] ; 2 uses
  %.not.i.i.i521 = icmp eq ptr %.sroa.0882.0, null
  br i1 %.not.i.i.i521, label %_ZNSt6vectorIiSaIiEED2Ev.exit522, label %bb.ga

bb.ga:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit520
  %i.axg = ptrtoint ptr %.sroa.0882.0 to i64
  %i.axh = sub i64 %.sroa.11887.0, %i.axg
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0882.0, i64 noundef %i.axh) #14
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit522

_ZNSt6vectorIiSaIiEED2Ev.exit522:                 ; preds = %bb.ga, %_ZNSt6vectorIiSaIiEED2Ev.exit520, %bb.cg
  %.pn213.pn.pn.pn = phi { ptr, i32 } [ %i.ww, %bb.cg ], [ %.pn213.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit520 ], [ %.pn213.pn.pn, %bb.ga ] ; 2 uses
  %.not.i.i.i523 = icmp eq ptr %.sroa.0890.0, null
  br i1 %.not.i.i.i523, label %_ZNSt6vectorIiSaIiEED2Ev.exit524.thread, label %bb.gb

bb.gb:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit522
  %i.axi = ptrtoint ptr %.sroa.17.0 to i64
  %i.axj = ptrtoint ptr %.sroa.0890.0 to i64
  %i.axk = sub i64 %i.axi, %i.axj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0890.0, i64 noundef %i.axk) #14
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit524.thread

_ZNSt6vectorIiSaIiEED2Ev.exit524.thread:          ; preds = %.loopexit1027, %.loopexit.split-lp1028, %.loopexit1033, %.loopexit.split-lp1034, %.loopexit1038, %.loopexit.split-lp1039, %bb.bt, %bb.gb, %_ZNSt6vectorIiSaIiEED2Ev.exit522, %bb.cf, %bb.az
  %.pn220961 = phi { ptr, i32 } [ %i.sa, %bb.bt ], [ %i.mc, %bb.az ], [ %lpad.loopexit.split-lp1041, %.loopexit.split-lp1039 ], [ %i.wv, %bb.cf ], [ %.pn213.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit522 ], [ %lpad.loopexit.split-lp1036, %.loopexit.split-lp1034 ], [ %.pn213.pn.pn.pn, %bb.gb ], [ %lpad.loopexit1040, %.loopexit1038 ], [ %lpad.loopexit1035, %.loopexit1033 ], [ %lpad.loopexit1029, %.loopexit1027 ], [ %lpad.loopexit.split-lp1030, %.loopexit.split-lp1028 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.jx, i64 noundef %i.jw) #14
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit528

_ZNSt6vectorIiSaIiEED2Ev.exit528:                 ; preds = %bb.ax, %bb.ay, %_ZNSt6vectorIiSaIiEED2Ev.exit524.thread
  %.pn220.pn.pn965 = phi { ptr, i32 } [ %.pn220961, %_ZNSt6vectorIiSaIiEED2Ev.exit524.thread ], [ %i.mb, %bb.ay ], [ %i.ma, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  %.idx1393 = shl nuw nsw i64 %i.hr, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.hu, i64 noundef %.idx1393) #14
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
