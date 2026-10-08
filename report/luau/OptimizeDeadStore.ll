Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/OptimizeDeadStore?download=true
inline.NumInlined: 1559
inline.NumDeleted: 597
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN4Luau7CodeGen27markDeadStoresInBlockChainsERNS0_9IrBuilderE:bb.a

bb.ra:                                            ; preds = %bb.qz
  %i.ckp = invoke noalias noundef nonnull dereferenceable(20) ptr @_Znwm(i64 noundef 20) #24
          to label %.noexc270.i37 unwind label %bb.rj ; 6 uses

.noexc270.i37:                                    ; preds = %bb.ra
  %i.ckq = load ptr, ptr %i.ckj, align 8, !tbaa !86 ; 7 uses
  %i.ckr = load i32, ptr %i.ckk, align 8, !tbaa !87 ; 3 uses
  %i.cks = zext i32 %i.ckr to i64
  %.idx.i.i266.i = shl nuw nsw i64 %i.cks, 2      ; 2 uses
  %i.ckt = getelementptr inbounds nuw i8, ptr %i.ckq, i64 %.idx.i.i266.i
  %.not11.i.i.i.i.i.i.i38 = icmp eq i32 %i.ckr, 0
  br i1 %.not11.i.i.i.i.i.i.i38, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i43, label %.lr.ph.i.i.i.i.i.i.i39.preheader

.lr.ph.i.i.i.i.i.i.i39.preheader:                 ; preds = %.noexc270.i37
  %i.cku = ptrtoaddr ptr %i.ckq to i64
  %i.ckv = ptrtoaddr ptr %i.ckp to i64
  %i.ckw = add nsw i64 %.idx.i.i266.i, -4         ; 2 uses
  %i.ckx = lshr exact i64 %i.ckw, 2
  %i.cky = add nuw nsw i64 %i.ckx, 1              ; 2 uses
  %min.iters.check1453 = icmp ult i64 %i.ckw, 28
  %i.ckz = sub i64 %i.cku, %i.ckv
  %diff.check1451 = icmp ugt i64 %i.ckz, -32
  %or.cond1710 = select i1 %min.iters.check1453, i1 true, i1 %diff.check1451
  br i1 %or.cond1710, label %.lr.ph.i.i.i.i.i.i.i39.preheader1784, label %vector.ph1454

vector.ph1454:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i39.preheader
  %n.vec1455 = and i64 %i.cky, 9223372036854775800 ; 3 uses
  %i.cla = shl i64 %n.vec1455, 2                  ; 2 uses
  %i.clb = getelementptr i8, ptr %i.ckp, i64 %i.cla
  %i.clc = getelementptr i8, ptr %i.ckq, i64 %i.cla
  br label %vector.body1456

vector.body1456:                                  ; preds = %vector.body1456, %vector.ph1454
  %index1457 = phi i64 [ 0, %vector.ph1454 ], [ %index.next1462, %vector.body1456 ] ; 2 uses
  %i.cld = shl i64 %index1457, 2                  ; 2 uses
  %next.gep1458 = getelementptr i8, ptr %i.ckp, i64 %i.cld ; 2 uses
  %next.gep1459 = getelementptr i8, ptr %i.ckq, i64 %i.cld ; 2 uses
  %i.cle = getelementptr i8, ptr %next.gep1459, i64 16
  %wide.load1460 = load <4 x i32>, ptr %next.gep1459, align 4, !tbaa !88
  %wide.load1461 = load <4 x i32>, ptr %i.cle, align 4, !tbaa !88
  %i.clf = getelementptr i8, ptr %next.gep1458, i64 16
  store <4 x i32> %wide.load1460, ptr %next.gep1458, align 4, !tbaa !88
  store <4 x i32> %wide.load1461, ptr %i.clf, align 4, !tbaa !88
  %index.next1462 = add nuw i64 %index1457, 8     ; 2 uses
  %i.clg = icmp eq i64 %index.next1462, %n.vec1455
  br i1 %i.clg, label %middle.block1463, label %vector.body1456, !llvm.loop !215

middle.block1463:                                 ; preds = %vector.body1456
  %cmp.n1464 = icmp eq i64 %i.cky, %n.vec1455
  br i1 %cmp.n1464, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i43, label %.lr.ph.i.i.i.i.i.i.i39.preheader1784

.lr.ph.i.i.i.i.i.i.i39.preheader1784:             ; preds = %.lr.ph.i.i.i.i.i.i.i39.preheader, %middle.block1463
  %.013.i.i.i.i.i.i.i40.ph = phi ptr [ %i.ckp, %.lr.ph.i.i.i.i.i.i.i39.preheader ], [ %i.clb, %middle.block1463 ]
  %.sroa.08.012.i.i.i.i.i.i.i41.ph = phi ptr [ %i.ckq, %.lr.ph.i.i.i.i.i.i.i39.preheader ], [ %i.clc, %middle.block1463 ]
  br label %.lr.ph.i.i.i.i.i.i.i39

.lr.ph.i.i.i.i.i.i.i39:                           ; preds = %.lr.ph.i.i.i.i.i.i.i39.preheader1784, %.lr.ph.i.i.i.i.i.i.i39
  %.013.i.i.i.i.i.i.i40 = phi ptr [ %i.clj, %.lr.ph.i.i.i.i.i.i.i39 ], [ %.013.i.i.i.i.i.i.i40.ph, %.lr.ph.i.i.i.i.i.i.i39.preheader1784 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i.i41 = phi ptr [ %i.cli, %.lr.ph.i.i.i.i.i.i.i39 ], [ %.sroa.08.012.i.i.i.i.i.i.i41.ph, %.lr.ph.i.i.i.i.i.i.i39.preheader1784 ] ; 2 uses
  %i.clh = load i32, ptr %.sroa.08.012.i.i.i.i.i.i.i41, align 4, !tbaa !88
  store i32 %i.clh, ptr %.013.i.i.i.i.i.i.i40, align 4, !tbaa !88
  %i.cli = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i41, i64 4 ; 2 uses
  %i.clj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i40, i64 4
  %.not.i.i.i.i.i.i.i42 = icmp eq ptr %i.cli, %i.ckt
  br i1 %.not.i.i.i.i.i.i.i42, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i43, label %.lr.ph.i.i.i.i.i.i.i39, !llvm.loop !216

_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i43: ; preds = %.lr.ph.i.i.i.i.i.i.i39, %middle.block1463, %.noexc270.i37
  %i.clk = getelementptr inbounds nuw i8, ptr %i.ckb, i64 24
  %.not.i.i267.i = icmp eq ptr %i.ckq, %i.clk
  br i1 %.not.i.i267.i, label %bb.rc, label %bb.rb

bb.rb:                                            ; preds = %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i43
  call void @_ZdlPv(ptr noundef %i.ckq) #23
  %.pre.pre.i268.i = load i32, ptr %i.ckk, align 8, !tbaa !87
  br label %bb.rc

bb.rc:                                            ; preds = %bb.rb, %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i43
  %.pre.i269.i = phi i32 [ %i.ckr, %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i43 ], [ %.pre.pre.i268.i, %bb.rb ]
  store ptr %i.ckp, ptr %i.ckj, align 8, !tbaa !86
  store i32 5, ptr %i.ckm, align 4, !tbaa !108
  %i.cll = icmp eq i32 %.pre.i269.i, 0
  br i1 %i.cll, label %.lr.ph13.preheader.i.i, label %.noexc251.i

.lr.ph13.preheader.i.i:                           ; preds = %bb.rc, %..lr.ph13.preheader.i_crit_edge.i
  %i.clm = phi ptr [ %.pre547.i, %..lr.ph13.preheader.i_crit_edge.i ], [ %i.ckp, %bb.rc ]
  store i32 0, ptr %i.clm, align 4
  br label %.noexc251.i

.noexc251.i:                                      ; preds = %.lr.ph13.preheader.i.i, %bb.rc
  store i32 1, ptr %i.ckk, align 8, !tbaa !87
  %.pre548.i = load ptr, ptr %i.ckf, align 8, !tbaa !32
  %.pre549.i = load ptr, ptr %i.ag, align 8, !tbaa !316
  br label %bb.rd

bb.rd:                                            ; preds = %.noexc251.i, %bb.qy
  %i.cln = phi ptr [ %.pre549.i, %.noexc251.i ], [ %i.ckf, %bb.qy ]
  %i.clo = phi ptr [ %.pre548.i, %.noexc251.i ], [ %i.ckg, %bb.qy ]
  %i.clp = load ptr, ptr %i.ckj, align 8, !tbaa !86 ; 3 uses
  %i.clq = load i32, ptr %i.clp, align 4
  %i.clr = lshr i32 %i.clq, 4
  %i.cls = zext nneg i32 %i.clr to i64
  %i.clt = getelementptr inbounds nuw [4 x i8], ptr %i.clo, i64 %i.cls ; 2 uses
  %i.clu = load i32, ptr %i.clt, align 4, !tbaa !34
  %i.clv = add i32 %i.clu, -1
  store i32 %i.clv, ptr %i.clt, align 4, !tbaa !34
  %i.clw = load i32, ptr %i.ckk, align 8, !tbaa !87
  %.not.i253.not.i = icmp eq i32 %i.clw, 0
  br i1 %.not.i253.not.i, label %bb.re, label %bb.ri, !prof !146

bb.re:                                            ; preds = %bb.rd
  %i.clx = getelementptr inbounds nuw i8, ptr %i.ckb, i64 20 ; 2 uses
  %i.cly = load i32, ptr %i.clx, align 4, !tbaa !108
  %i.clz = icmp eq i32 %i.cly, 0
  br i1 %i.clz, label %bb.rf, label %.lr.ph13.preheader.i271.i

bb.rf:                                            ; preds = %bb.re
  %i.cma = invoke noalias noundef nonnull dereferenceable(20) ptr @_Znwm(i64 noundef 20) #24
          to label %.noexc288.i unwind label %bb.rj ; 7 uses

.noexc288.i:                                      ; preds = %bb.rf
  %i.cmb = load ptr, ptr %i.ckj, align 8, !tbaa !86 ; 7 uses
  %i.cmc = load i32, ptr %i.ckk, align 8, !tbaa !87 ; 3 uses
  %i.cmd = zext i32 %i.cmc to i64
  %.idx.i.i277.i = shl nuw nsw i64 %i.cmd, 2      ; 2 uses
  %i.cme = getelementptr inbounds nuw i8, ptr %i.cmb, i64 %.idx.i.i277.i
  %.not11.i.i.i.i.i.i278.i = icmp eq i32 %i.cmc, 0
  br i1 %.not11.i.i.i.i.i.i278.i, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i283.i, label %.lr.ph.i.i.i.i.i.i279.i.preheader

.lr.ph.i.i.i.i.i.i279.i.preheader:                ; preds = %.noexc288.i
  %i.cmf = ptrtoaddr ptr %i.cmb to i64
  %i.cmg = ptrtoaddr ptr %i.cma to i64
  %i.cmh = add nsw i64 %.idx.i.i277.i, -4         ; 2 uses
  %i.cmi = lshr exact i64 %i.cmh, 2
  %i.cmj = add nuw nsw i64 %i.cmi, 1              ; 2 uses
  %min.iters.check1436 = icmp ult i64 %i.cmh, 28
  %i.cmk = sub i64 %i.cmf, %i.cmg
  %diff.check1434 = icmp ugt i64 %i.cmk, -32
  %or.cond1711 = select i1 %min.iters.check1436, i1 true, i1 %diff.check1434
  br i1 %or.cond1711, label %.lr.ph.i.i.i.i.i.i279.i.preheader1783, label %vector.ph1437

vector.ph1437:                                    ; preds = %.lr.ph.i.i.i.i.i.i279.i.preheader
  %n.vec1438 = and i64 %i.cmj, 9223372036854775800 ; 3 uses
  %i.cml = shl i64 %n.vec1438, 2                  ; 2 uses
  %i.cmm = getelementptr i8, ptr %i.cma, i64 %i.cml
  %i.cmn = getelementptr i8, ptr %i.cmb, i64 %i.cml
  br label %vector.body1439

vector.body1439:                                  ; preds = %vector.body1439, %vector.ph1437
  %index1440 = phi i64 [ 0, %vector.ph1437 ], [ %index.next1445, %vector.body1439 ] ; 2 uses
  %i.cmo = shl i64 %index1440, 2                  ; 2 uses
  %next.gep1441 = getelementptr i8, ptr %i.cma, i64 %i.cmo ; 2 uses
  %next.gep1442 = getelementptr i8, ptr %i.cmb, i64 %i.cmo ; 2 uses
  %i.cmp = getelementptr i8, ptr %next.gep1442, i64 16
  %wide.load1443 = load <4 x i32>, ptr %next.gep1442, align 4, !tbaa !88
  %wide.load1444 = load <4 x i32>, ptr %i.cmp, align 4, !tbaa !88
  %i.cmq = getelementptr i8, ptr %next.gep1441, i64 16
  store <4 x i32> %wide.load1443, ptr %next.gep1441, align 4, !tbaa !88
  store <4 x i32> %wide.load1444, ptr %i.cmq, align 4, !tbaa !88
  %index.next1445 = add nuw i64 %index1440, 8     ; 2 uses
  %i.cmr = icmp eq i64 %index.next1445, %n.vec1438
  br i1 %i.cmr, label %middle.block1446, label %vector.body1439, !llvm.loop !217

middle.block1446:                                 ; preds = %vector.body1439
  %cmp.n1447 = icmp eq i64 %i.cmj, %n.vec1438
  br i1 %cmp.n1447, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i283.i, label %.lr.ph.i.i.i.i.i.i279.i.preheader1783

.lr.ph.i.i.i.i.i.i279.i.preheader1783:            ; preds = %.lr.ph.i.i.i.i.i.i279.i.preheader, %middle.block1446
  %.013.i.i.i.i.i.i280.i.ph = phi ptr [ %i.cma, %.lr.ph.i.i.i.i.i.i279.i.preheader ], [ %i.cmm, %middle.block1446 ]
  %.sroa.08.012.i.i.i.i.i.i281.i.ph = phi ptr [ %i.cmb, %.lr.ph.i.i.i.i.i.i279.i.preheader ], [ %i.cmn, %middle.block1446 ]
  br label %.lr.ph.i.i.i.i.i.i279.i

.lr.ph.i.i.i.i.i.i279.i:                          ; preds = %.lr.ph.i.i.i.i.i.i279.i.preheader1783, %.lr.ph.i.i.i.i.i.i279.i
  %.013.i.i.i.i.i.i280.i = phi ptr [ %i.cmu, %.lr.ph.i.i.i.i.i.i279.i ], [ %.013.i.i.i.i.i.i280.i.ph, %.lr.ph.i.i.i.i.i.i279.i.preheader1783 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i281.i = phi ptr [ %i.cmt, %.lr.ph.i.i.i.i.i.i279.i ], [ %.sroa.08.012.i.i.i.i.i.i281.i.ph, %.lr.ph.i.i.i.i.i.i279.i.preheader1783 ] ; 2 uses
  %i.cms = load i32, ptr %.sroa.08.012.i.i.i.i.i.i281.i, align 4, !tbaa !88
  store i32 %i.cms, ptr %.013.i.i.i.i.i.i280.i, align 4, !tbaa !88
  %i.cmt = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i281.i, i64 4 ; 2 uses
  %i.cmu = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i280.i, i64 4
  %.not.i.i.i.i.i.i282.i = icmp eq ptr %i.cmt, %i.cme
  br i1 %.not.i.i.i.i.i.i282.i, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i283.i, label %.lr.ph.i.i.i.i.i.i279.i, !llvm.loop !218

_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i283.i: ; preds = %.lr.ph.i.i.i.i.i.i279.i, %middle.block1446, %.noexc288.i
  %i.cmv = getelementptr inbounds nuw i8, ptr %i.ckb, i64 24
  %.not.i.i284.i = icmp eq ptr %i.cmb, %i.cmv
  br i1 %.not.i.i284.i, label %bb.rh, label %bb.rg

bb.rg:                                            ; preds = %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i283.i
  call void @_ZdlPv(ptr noundef %i.cmb) #23
  %.pre.pre.i285.i = load i32, ptr %i.ckk, align 8, !tbaa !87
  br label %bb.rh

bb.rh:                                            ; preds = %bb.rg, %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i283.i
  %.pre.i287.i = phi i32 [ %i.cmc, %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i283.i ], [ %.pre.pre.i285.i, %bb.rg ]
  store ptr %i.cma, ptr %i.ckj, align 8, !tbaa !86
  store i32 5, ptr %i.clx, align 4, !tbaa !108
  %i.cmw = icmp eq i32 %.pre.i287.i, 0
  br i1 %i.cmw, label %.lr.ph13.preheader.i271.i, label %.noexc254.i

.lr.ph13.preheader.i271.i:                        ; preds = %bb.rh, %bb.re
  %i.cmx = phi ptr [ %i.cma, %bb.rh ], [ %i.clp, %bb.re ]
  store i32 0, ptr %i.cmx, align 4
  %.pre550.pre.i = load ptr, ptr %i.ckj, align 8, !tbaa !86
  br label %.noexc254.i

.noexc254.i:                                      ; preds = %.lr.ph13.preheader.i271.i, %bb.rh
  %.pre550.i = phi ptr [ %i.cma, %bb.rh ], [ %.pre550.pre.i, %.lr.ph13.preheader.i271.i ]
  store i32 1, ptr %i.ckk, align 8, !tbaa !87
  br label %bb.ri

bb.ri:                                            ; preds = %.noexc254.i, %bb.rd
  %i.cmy = phi ptr [ %.pre550.i, %.noexc254.i ], [ %i.clp, %bb.rd ]
  %i.cmz = load i32, ptr %i.cmy, align 4
  %i.cna = lshr i32 %i.cmz, 4
  %i.cnb = zext nneg i32 %i.cna to i64
  %i.cnc = load ptr, ptr %i.cln, align 8, !tbaa !32
  %i.cnd = getelementptr inbounds nuw [4 x i8], ptr %i.cnc, i64 %i.cnb
  %i.cne = load i32, ptr %i.cnd, align 4, !tbaa !34
  %i.cnf = icmp eq i32 %i.cne, 0
  %spec.select.i = select i1 %i.cnf, i1 true, i1 %.1518.i
  br label %bb.rk

bb.rj:                                            ; preds = %bb.rf, %bb.ra
  %i.cng = landingpad { ptr, i32 }
          cleanup
  br label %.body.i30

bb.rk:                                            ; preds = %bb.ri, %.lr.ph.i35
  %.2.i = phi i1 [ %.1518.i, %.lr.ph.i35 ], [ %spec.select.i, %bb.ri ] ; 2 uses
  %i.cnh = add i32 %.073519.i, 1                  ; 2 uses
  %i.cni = load i32, ptr %i.cjw, align 4, !tbaa !315
  %.not89.i = icmp ugt i32 %i.cnh, %i.cni
  br i1 %.not89.i, label %._crit_edge.i36, label %.lr.ph.i35, !llvm.loop !219

.lr.ph535.i:                                      ; preds = %._crit_edge525.i, %._crit_edge531.i
  %.sroa.0328.0533.i = phi ptr [ %i.cnr, %._crit_edge531.i ], [ %.sroa.0118.5, %._crit_edge525.i ] ; 3 uses
  %i.cnj = load i32, ptr %.sroa.0328.0533.i, align 4, !tbaa !34
  %i.cnk = zext i32 %i.cnj to i64
  %i.cnl = load ptr, ptr %i.c, align 8, !tbaa !26
  %i.cnm = getelementptr inbounds nuw [36 x i8], ptr %i.cnl, i64 %i.cnk ; 2 uses
  %i.cnn = getelementptr inbounds nuw i8, ptr %i.cnm, i64 4
  %i.cno = load i32, ptr %i.cnn, align 4, !tbaa !314 ; 2 uses
  %i.cnp = getelementptr inbounds nuw i8, ptr %i.cnm, i64 8 ; 2 uses
  %i.cnq = load i32, ptr %i.cnp, align 4, !tbaa !315
  %.not87527.i = icmp ugt i32 %i.cno, %i.cnq
  br i1 %.not87527.i, label %._crit_edge531.i, label %.lr.ph530.i

._crit_edge531.i:                                 ; preds = %bb.ru, %.lr.ph535.i
  %i.cnr = getelementptr inbounds nuw i8, ptr %.sroa.0328.0533.i, i64 4
  %.not342.i = icmp eq ptr %.sroa.0328.0533.i, %.pn141
  br i1 %.not342.i, label %.loopexit.i34, label %.lr.ph535.i

.lr.ph530.i:                                      ; preds = %.lr.ph535.i, %bb.ru
  %.072528.i = phi i32 [ %i.cpl, %bb.ru ], [ %i.cno, %.lr.ph535.i ] ; 2 uses
  %i.cns = zext i32 %.072528.i to i64
  %i.cnt = load ptr, ptr %i.o, align 8, !tbaa !29
  %i.cnu = getelementptr inbounds nuw [64 x i8], ptr %i.cnt, i64 %i.cns ; 6 uses
  %i.cnv = load i8, ptr %i.cnu, align 8, !tbaa !85
  switch i8 %i.cnv, label %bb.ru [
    i8 -52, label %bb.rl
    i8 -49, label %bb.rl
    i8 -47, label %bb.rl
    i8 -41, label %bb.rl
    i8 -45, label %bb.rl
    i8 -43, label %bb.rl
  ]

bb.rl:                                            ; preds = %.lr.ph530.i, %.lr.ph530.i, %.lr.ph530.i, %.lr.ph530.i, %.lr.ph530.i, %.lr.ph530.i
  %i.cnw = load ptr, ptr %i.ag, align 8, !tbaa !316, !nonnull !47, !align !145
  %i.cnx = getelementptr inbounds nuw i8, ptr %i.cnu, i64 8 ; 4 uses
  %i.cny = getelementptr inbounds nuw i8, ptr %i.cnu, i64 16 ; 4 uses
  %i.cnz = load i32, ptr %i.cny, align 8, !tbaa !87
  %.not.i256.not.i = icmp eq i32 %i.cnz, 0
  br i1 %.not.i256.not.i, label %bb.rm, label %bb.rq, !prof !146

bb.rm:                                            ; preds = %bb.rl
  %i.coa = getelementptr inbounds nuw i8, ptr %i.cnu, i64 20 ; 2 uses
  %i.cob = load i32, ptr %i.coa, align 4, !tbaa !108
  %i.coc = icmp eq i32 %i.cob, 0
  br i1 %i.coc, label %bb.rn, label %..lr.ph13.preheader.i290_crit_edge.i

..lr.ph13.preheader.i290_crit_edge.i:             ; preds = %bb.rm
  %.pre551.i = load ptr, ptr %i.cnx, align 8, !tbaa !86
  br label %.lr.ph13.preheader.i290.i

bb.rn:                                            ; preds = %bb.rm
  %i.cod = invoke noalias noundef nonnull dereferenceable(20) ptr @_Znwm(i64 noundef 20) #24
          to label %.noexc307.i unwind label %bb.rs ; 6 uses

.noexc307.i:                                      ; preds = %bb.rn
  %i.coe = load ptr, ptr %i.cnx, align 8, !tbaa !86 ; 7 uses
  %i.cof = load i32, ptr %i.cny, align 8, !tbaa !87 ; 3 uses
  %i.cog = zext i32 %i.cof to i64
  %.idx.i.i296.i = shl nuw nsw i64 %i.cog, 2      ; 2 uses
  %i.coh = getelementptr inbounds nuw i8, ptr %i.coe, i64 %.idx.i.i296.i
  %.not11.i.i.i.i.i.i297.i = icmp eq i32 %i.cof, 0
  br i1 %.not11.i.i.i.i.i.i297.i, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i302.i, label %.lr.ph.i.i.i.i.i.i298.i.preheader

.lr.ph.i.i.i.i.i.i298.i.preheader:                ; preds = %.noexc307.i
  %i.coi = ptrtoaddr ptr %i.coe to i64
  %i.coj = ptrtoaddr ptr %i.cod to i64
  %i.cok = add nsw i64 %.idx.i.i296.i, -4         ; 2 uses
  %i.col = lshr exact i64 %i.cok, 2
  %i.com = add nuw nsw i64 %i.col, 1              ; 2 uses
  %min.iters.check = icmp ult i64 %i.cok, 28
  %i.con = sub i64 %i.coi, %i.coj
  %diff.check = icmp ugt i64 %i.con, -32
  %or.cond1712 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond1712, label %.lr.ph.i.i.i.i.i.i298.i.preheader1782, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i298.i.preheader
  %n.vec = and i64 %i.com, 9223372036854775800    ; 3 uses
  %i.coo = shl i64 %n.vec, 2                      ; 2 uses
  %i.cop = getelementptr i8, ptr %i.cod, i64 %i.coo
  %i.coq = getelementptr i8, ptr %i.coe, i64 %i.coo
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cor = shl i64 %index, 2                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cod, i64 %i.cor ; 2 uses
  %next.gep1430 = getelementptr i8, ptr %i.coe, i64 %i.cor ; 2 uses
  %i.cos = getelementptr i8, ptr %next.gep1430, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep1430, align 4, !tbaa !88
  %wide.load1431 = load <4 x i32>, ptr %i.cos, align 4, !tbaa !88
  %i.cot = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !88
  store <4 x i32> %wide.load1431, ptr %i.cot, align 4, !tbaa !88
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cou = icmp eq i64 %index.next, %n.vec
  br i1 %i.cou, label %middle.block, label %vector.body, !llvm.loop !220

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.com, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i302.i, label %.lr.ph.i.i.i.i.i.i298.i.preheader1782

.lr.ph.i.i.i.i.i.i298.i.preheader1782:            ; preds = %.lr.ph.i.i.i.i.i.i298.i.preheader, %middle.block
  %.013.i.i.i.i.i.i299.i.ph = phi ptr [ %i.cod, %.lr.ph.i.i.i.i.i.i298.i.preheader ], [ %i.cop, %middle.block ]
  %.sroa.08.012.i.i.i.i.i.i300.i.ph = phi ptr [ %i.coe, %.lr.ph.i.i.i.i.i.i298.i.preheader ], [ %i.coq, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i298.i

.lr.ph.i.i.i.i.i.i298.i:                          ; preds = %.lr.ph.i.i.i.i.i.i298.i.preheader1782, %.lr.ph.i.i.i.i.i.i298.i
  %.013.i.i.i.i.i.i299.i = phi ptr [ %i.cox, %.lr.ph.i.i.i.i.i.i298.i ], [ %.013.i.i.i.i.i.i299.i.ph, %.lr.ph.i.i.i.i.i.i298.i.preheader1782 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i300.i = phi ptr [ %i.cow, %.lr.ph.i.i.i.i.i.i298.i ], [ %.sroa.08.012.i.i.i.i.i.i300.i.ph, %.lr.ph.i.i.i.i.i.i298.i.preheader1782 ] ; 2 uses
  %i.cov = load i32, ptr %.sroa.08.012.i.i.i.i.i.i300.i, align 4, !tbaa !88
  store i32 %i.cov, ptr %.013.i.i.i.i.i.i299.i, align 4, !tbaa !88
  %i.cow = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i300.i, i64 4 ; 2 uses
  %i.cox = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i299.i, i64 4
  %.not.i.i.i.i.i.i301.i = icmp eq ptr %i.cow, %i.coh
  br i1 %.not.i.i.i.i.i.i301.i, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i302.i, label %.lr.ph.i.i.i.i.i.i298.i, !llvm.loop !221

_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i302.i: ; preds = %.lr.ph.i.i.i.i.i.i298.i, %middle.block, %.noexc307.i
  %i.coy = getelementptr inbounds nuw i8, ptr %i.cnu, i64 24
  %.not.i.i303.i = icmp eq ptr %i.coe, %i.coy
  br i1 %.not.i.i303.i, label %bb.rp, label %bb.ro

bb.ro:                                            ; preds = %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i302.i
  call void @_ZdlPv(ptr noundef %i.coe) #23
  %.pre.pre.i304.i = load i32, ptr %i.cny, align 8, !tbaa !87
  br label %bb.rp

bb.rp:                                            ; preds = %bb.ro, %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i302.i
  %.pre.i306.i = phi i32 [ %i.cof, %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i302.i ], [ %.pre.pre.i304.i, %bb.ro ]
  store ptr %i.cod, ptr %i.cnx, align 8, !tbaa !86
  store i32 5, ptr %i.coa, align 4, !tbaa !108
  %i.coz = icmp eq i32 %.pre.i306.i, 0
  br i1 %i.coz, label %.lr.ph13.preheader.i290.i, label %.noexc257.i

.lr.ph13.preheader.i290.i:                        ; preds = %bb.rp, %..lr.ph13.preheader.i290_crit_edge.i
  %i.cpa = phi ptr [ %.pre551.i, %..lr.ph13.preheader.i290_crit_edge.i ], [ %i.cod, %bb.rp ]
  store i32 0, ptr %i.cpa, align 4
  br label %.noexc257.i

.noexc257.i:                                      ; preds = %.lr.ph13.preheader.i290.i, %bb.rp
  store i32 1, ptr %i.cny, align 8, !tbaa !87
  br label %bb.rq

bb.rq:                                            ; preds = %.noexc257.i, %bb.rl
  %i.cpb = load ptr, ptr %i.cnx, align 8, !tbaa !86
  %i.cpc = load i32, ptr %i.cpb, align 4
  %i.cpd = lshr i32 %i.cpc, 4
  %i.cpe = zext nneg i32 %i.cpd to i64            ; 2 uses
  %i.cpf = load ptr, ptr %i.cnw, align 8, !tbaa !32
  %i.cpg = getelementptr inbounds nuw [4 x i8], ptr %i.cpf, i64 %i.cpe
  %i.cph = load i32, ptr %i.cpg, align 4, !tbaa !34
  %i.cpi = icmp eq i32 %i.cph, 0
  br i1 %i.cpi, label %._crit_edge552.i, label %bb.ru

._crit_edge552.i:                                 ; preds = %bb.rq
  %.pre554.i = load ptr, ptr %i.o, align 8, !tbaa !29
  %.phi.trans.insert.i = getelementptr inbounds nuw [64 x i8], ptr %.pre554.i, i64 %i.cpe
  %.pre555.i = load i8, ptr %.phi.trans.insert.i, align 8, !tbaa !85
  %.off.i = add i8 %.pre555.i, -105
  %switch.i = icmp ult i8 %.off.i, 2
  br i1 %switch.i, label %bb.rr, label %bb.ru

bb.rr:                                            ; preds = %._crit_edge552.i
  invoke void @_ZN4Luau7CodeGen4killERNS0_10IrFunctionERNS0_6IrInstE(ptr noundef nonnull align 8 dereferenceable(928) %i.c, ptr noundef nonnull align 8 dereferenceable(59) %i.cnu)
          to label %bb.ru unwind label %bb.rt

bb.rs:                                            ; preds = %bb.rn
end_hunk_0
