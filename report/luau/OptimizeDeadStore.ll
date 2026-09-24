Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/OptimizeDeadStore?download=true
inline.NumInlined: 1559
inline.NumDeleted: 597
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN4Luau7CodeGen27markDeadStoresInBlockChainsERNS0_9IrBuilderE:bb.a

bb.ra:                                            ; preds = %bb.qz
  %i.ckr = invoke noalias noundef nonnull dereferenceable(20) ptr @_Znwm(i64 noundef 20) #24
          to label %.noexc270.i38 unwind label %bb.rj ; 6 uses

.noexc270.i38:                                    ; preds = %bb.ra
  %i.cks = load ptr, ptr %i.ckl, align 8, !tbaa !86 ; 7 uses
  %i.ckt = load i32, ptr %i.ckm, align 8, !tbaa !87 ; 3 uses
  %i.cku = zext i32 %i.ckt to i64
  %.idx.i.i266.i = shl nuw nsw i64 %i.cku, 2      ; 2 uses
  %i.ckv = getelementptr inbounds nuw i8, ptr %i.cks, i64 %.idx.i.i266.i
  %.not11.i.i.i.i.i.i.i39 = icmp eq i32 %i.ckt, 0
  br i1 %.not11.i.i.i.i.i.i.i39, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i44, label %.lr.ph.i.i.i.i.i.i.i40.preheader

.lr.ph.i.i.i.i.i.i.i40.preheader:                 ; preds = %.noexc270.i38
  %i.ckw = ptrtoaddr ptr %i.cks to i64
  %i.ckx = ptrtoaddr ptr %i.ckr to i64
  %i.cky = add nsw i64 %.idx.i.i266.i, -4         ; 2 uses
  %i.ckz = lshr exact i64 %i.cky, 2
  %i.cla = add nuw nsw i64 %i.ckz, 1              ; 2 uses
  %min.iters.check1453 = icmp ult i64 %i.cky, 28
  %i.clb = sub i64 %i.ckw, %i.ckx
  %diff.check1451 = icmp ugt i64 %i.clb, -32
  %or.cond1710 = select i1 %min.iters.check1453, i1 true, i1 %diff.check1451
  br i1 %or.cond1710, label %.lr.ph.i.i.i.i.i.i.i40.preheader1784, label %vector.ph1454

vector.ph1454:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i40.preheader
  %n.vec1455 = and i64 %i.cla, 9223372036854775800 ; 3 uses
  %i.clc = shl i64 %n.vec1455, 2                  ; 2 uses
  %i.cld = getelementptr i8, ptr %i.ckr, i64 %i.clc
  %i.cle = getelementptr i8, ptr %i.cks, i64 %i.clc
  br label %vector.body1456

vector.body1456:                                  ; preds = %vector.body1456, %vector.ph1454
  %index1457 = phi i64 [ 0, %vector.ph1454 ], [ %index.next1462, %vector.body1456 ] ; 2 uses
  %i.clf = shl i64 %index1457, 2                  ; 2 uses
  %next.gep1458 = getelementptr i8, ptr %i.ckr, i64 %i.clf ; 2 uses
  %next.gep1459 = getelementptr i8, ptr %i.cks, i64 %i.clf ; 2 uses
  %i.clg = getelementptr i8, ptr %next.gep1459, i64 16
  %wide.load1460 = load <4 x i32>, ptr %next.gep1459, align 4, !tbaa !88
  %wide.load1461 = load <4 x i32>, ptr %i.clg, align 4, !tbaa !88
  %i.clh = getelementptr i8, ptr %next.gep1458, i64 16
  store <4 x i32> %wide.load1460, ptr %next.gep1458, align 4, !tbaa !88
  store <4 x i32> %wide.load1461, ptr %i.clh, align 4, !tbaa !88
  %index.next1462 = add nuw i64 %index1457, 8     ; 2 uses
  %i.cli = icmp eq i64 %index.next1462, %n.vec1455
  br i1 %i.cli, label %middle.block1463, label %vector.body1456, !llvm.loop !215

middle.block1463:                                 ; preds = %vector.body1456
  %cmp.n1464 = icmp eq i64 %i.cla, %n.vec1455
  br i1 %cmp.n1464, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i44, label %.lr.ph.i.i.i.i.i.i.i40.preheader1784

.lr.ph.i.i.i.i.i.i.i40.preheader1784:             ; preds = %.lr.ph.i.i.i.i.i.i.i40.preheader, %middle.block1463
  %.013.i.i.i.i.i.i.i41.ph = phi ptr [ %i.ckr, %.lr.ph.i.i.i.i.i.i.i40.preheader ], [ %i.cld, %middle.block1463 ]
  %.sroa.08.012.i.i.i.i.i.i.i42.ph = phi ptr [ %i.cks, %.lr.ph.i.i.i.i.i.i.i40.preheader ], [ %i.cle, %middle.block1463 ]
  br label %.lr.ph.i.i.i.i.i.i.i40

.lr.ph.i.i.i.i.i.i.i40:                           ; preds = %.lr.ph.i.i.i.i.i.i.i40.preheader1784, %.lr.ph.i.i.i.i.i.i.i40
  %.013.i.i.i.i.i.i.i41 = phi ptr [ %i.cll, %.lr.ph.i.i.i.i.i.i.i40 ], [ %.013.i.i.i.i.i.i.i41.ph, %.lr.ph.i.i.i.i.i.i.i40.preheader1784 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i.i42 = phi ptr [ %i.clk, %.lr.ph.i.i.i.i.i.i.i40 ], [ %.sroa.08.012.i.i.i.i.i.i.i42.ph, %.lr.ph.i.i.i.i.i.i.i40.preheader1784 ] ; 2 uses
  %i.clj = load i32, ptr %.sroa.08.012.i.i.i.i.i.i.i42, align 4, !tbaa !88
  store i32 %i.clj, ptr %.013.i.i.i.i.i.i.i41, align 4, !tbaa !88
  %i.clk = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i42, i64 4 ; 2 uses
  %i.cll = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i41, i64 4
  %.not.i.i.i.i.i.i.i43 = icmp eq ptr %i.clk, %i.ckv
  br i1 %.not.i.i.i.i.i.i.i43, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i44, label %.lr.ph.i.i.i.i.i.i.i40, !llvm.loop !216

_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i44: ; preds = %.lr.ph.i.i.i.i.i.i.i40, %middle.block1463, %.noexc270.i38
  %i.clm = getelementptr inbounds nuw i8, ptr %i.ckd, i64 24
  %.not.i.i267.i = icmp eq ptr %i.cks, %i.clm
  br i1 %.not.i.i267.i, label %bb.rc, label %bb.rb

bb.rb:                                            ; preds = %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i44
  call void @_ZdlPv(ptr noundef %i.cks) #23
  %.pre.pre.i268.i = load i32, ptr %i.ckm, align 8, !tbaa !87
  br label %bb.rc

bb.rc:                                            ; preds = %bb.rb, %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i44
  %.pre.i269.i = phi i32 [ %i.ckt, %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i44 ], [ %.pre.pre.i268.i, %bb.rb ]
  store ptr %i.ckr, ptr %i.ckl, align 8, !tbaa !86
  store i32 5, ptr %i.cko, align 4, !tbaa !108
  %i.cln = icmp eq i32 %.pre.i269.i, 0
  br i1 %i.cln, label %.lr.ph13.preheader.i.i, label %.noexc251.i

.lr.ph13.preheader.i.i:                           ; preds = %bb.rc, %..lr.ph13.preheader.i_crit_edge.i
  %i.clo = phi ptr [ %.pre547.i, %..lr.ph13.preheader.i_crit_edge.i ], [ %i.ckr, %bb.rc ]
  store i32 0, ptr %i.clo, align 4
  br label %.noexc251.i

.noexc251.i:                                      ; preds = %.lr.ph13.preheader.i.i, %bb.rc
  store i32 1, ptr %i.ckm, align 8, !tbaa !87
  %.pre548.i = load ptr, ptr %i.ckh, align 8, !tbaa !32
  %.pre549.i = load ptr, ptr %i.ag, align 8, !tbaa !316
  br label %bb.rd

bb.rd:                                            ; preds = %.noexc251.i, %bb.qy
  %i.clp = phi ptr [ %.pre549.i, %.noexc251.i ], [ %i.ckh, %bb.qy ]
  %i.clq = phi ptr [ %.pre548.i, %.noexc251.i ], [ %i.cki, %bb.qy ]
  %i.clr = load ptr, ptr %i.ckl, align 8, !tbaa !86 ; 3 uses
  %i.cls = load i32, ptr %i.clr, align 4
  %i.clt = lshr i32 %i.cls, 4
  %i.clu = zext nneg i32 %i.clt to i64
  %i.clv = getelementptr inbounds nuw [4 x i8], ptr %i.clq, i64 %i.clu ; 2 uses
  %i.clw = load i32, ptr %i.clv, align 4, !tbaa !34
  %i.clx = add i32 %i.clw, -1
  store i32 %i.clx, ptr %i.clv, align 4, !tbaa !34
  %i.cly = load i32, ptr %i.ckm, align 8, !tbaa !87
  %.not.i253.not.i = icmp eq i32 %i.cly, 0
  br i1 %.not.i253.not.i, label %bb.re, label %bb.ri, !prof !146

bb.re:                                            ; preds = %bb.rd
  %i.clz = getelementptr inbounds nuw i8, ptr %i.ckd, i64 20 ; 2 uses
  %i.cma = load i32, ptr %i.clz, align 4, !tbaa !108
  %i.cmb = icmp eq i32 %i.cma, 0
  br i1 %i.cmb, label %bb.rf, label %.lr.ph13.preheader.i271.i

bb.rf:                                            ; preds = %bb.re
  %i.cmc = invoke noalias noundef nonnull dereferenceable(20) ptr @_Znwm(i64 noundef 20) #24
          to label %.noexc288.i37 unwind label %bb.rj ; 7 uses

.noexc288.i37:                                    ; preds = %bb.rf
  %i.cmd = load ptr, ptr %i.ckl, align 8, !tbaa !86 ; 7 uses
  %i.cme = load i32, ptr %i.ckm, align 8, !tbaa !87 ; 3 uses
  %i.cmf = zext i32 %i.cme to i64
  %.idx.i.i277.i = shl nuw nsw i64 %i.cmf, 2      ; 2 uses
  %i.cmg = getelementptr inbounds nuw i8, ptr %i.cmd, i64 %.idx.i.i277.i
  %.not11.i.i.i.i.i.i278.i = icmp eq i32 %i.cme, 0
  br i1 %.not11.i.i.i.i.i.i278.i, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i283.i, label %.lr.ph.i.i.i.i.i.i279.i.preheader

.lr.ph.i.i.i.i.i.i279.i.preheader:                ; preds = %.noexc288.i37
  %i.cmh = ptrtoaddr ptr %i.cmd to i64
  %i.cmi = ptrtoaddr ptr %i.cmc to i64
  %i.cmj = add nsw i64 %.idx.i.i277.i, -4         ; 2 uses
  %i.cmk = lshr exact i64 %i.cmj, 2
  %i.cml = add nuw nsw i64 %i.cmk, 1              ; 2 uses
  %min.iters.check1436 = icmp ult i64 %i.cmj, 28
  %i.cmm = sub i64 %i.cmh, %i.cmi
  %diff.check1434 = icmp ugt i64 %i.cmm, -32
  %or.cond1711 = select i1 %min.iters.check1436, i1 true, i1 %diff.check1434
  br i1 %or.cond1711, label %.lr.ph.i.i.i.i.i.i279.i.preheader1783, label %vector.ph1437

vector.ph1437:                                    ; preds = %.lr.ph.i.i.i.i.i.i279.i.preheader
  %n.vec1438 = and i64 %i.cml, 9223372036854775800 ; 3 uses
  %i.cmn = shl i64 %n.vec1438, 2                  ; 2 uses
  %i.cmo = getelementptr i8, ptr %i.cmc, i64 %i.cmn
  %i.cmp = getelementptr i8, ptr %i.cmd, i64 %i.cmn
  br label %vector.body1439

vector.body1439:                                  ; preds = %vector.body1439, %vector.ph1437
  %index1440 = phi i64 [ 0, %vector.ph1437 ], [ %index.next1445, %vector.body1439 ] ; 2 uses
  %i.cmq = shl i64 %index1440, 2                  ; 2 uses
  %next.gep1441 = getelementptr i8, ptr %i.cmc, i64 %i.cmq ; 2 uses
  %next.gep1442 = getelementptr i8, ptr %i.cmd, i64 %i.cmq ; 2 uses
  %i.cmr = getelementptr i8, ptr %next.gep1442, i64 16
  %wide.load1443 = load <4 x i32>, ptr %next.gep1442, align 4, !tbaa !88
  %wide.load1444 = load <4 x i32>, ptr %i.cmr, align 4, !tbaa !88
  %i.cms = getelementptr i8, ptr %next.gep1441, i64 16
  store <4 x i32> %wide.load1443, ptr %next.gep1441, align 4, !tbaa !88
  store <4 x i32> %wide.load1444, ptr %i.cms, align 4, !tbaa !88
  %index.next1445 = add nuw i64 %index1440, 8     ; 2 uses
  %i.cmt = icmp eq i64 %index.next1445, %n.vec1438
  br i1 %i.cmt, label %middle.block1446, label %vector.body1439, !llvm.loop !217

middle.block1446:                                 ; preds = %vector.body1439
  %cmp.n1447 = icmp eq i64 %i.cml, %n.vec1438
  br i1 %cmp.n1447, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i283.i, label %.lr.ph.i.i.i.i.i.i279.i.preheader1783

.lr.ph.i.i.i.i.i.i279.i.preheader1783:            ; preds = %.lr.ph.i.i.i.i.i.i279.i.preheader, %middle.block1446
  %.013.i.i.i.i.i.i280.i.ph = phi ptr [ %i.cmc, %.lr.ph.i.i.i.i.i.i279.i.preheader ], [ %i.cmo, %middle.block1446 ]
  %.sroa.08.012.i.i.i.i.i.i281.i.ph = phi ptr [ %i.cmd, %.lr.ph.i.i.i.i.i.i279.i.preheader ], [ %i.cmp, %middle.block1446 ]
  br label %.lr.ph.i.i.i.i.i.i279.i

.lr.ph.i.i.i.i.i.i279.i:                          ; preds = %.lr.ph.i.i.i.i.i.i279.i.preheader1783, %.lr.ph.i.i.i.i.i.i279.i
  %.013.i.i.i.i.i.i280.i = phi ptr [ %i.cmw, %.lr.ph.i.i.i.i.i.i279.i ], [ %.013.i.i.i.i.i.i280.i.ph, %.lr.ph.i.i.i.i.i.i279.i.preheader1783 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i281.i = phi ptr [ %i.cmv, %.lr.ph.i.i.i.i.i.i279.i ], [ %.sroa.08.012.i.i.i.i.i.i281.i.ph, %.lr.ph.i.i.i.i.i.i279.i.preheader1783 ] ; 2 uses
  %i.cmu = load i32, ptr %.sroa.08.012.i.i.i.i.i.i281.i, align 4, !tbaa !88
  store i32 %i.cmu, ptr %.013.i.i.i.i.i.i280.i, align 4, !tbaa !88
  %i.cmv = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i281.i, i64 4 ; 2 uses
  %i.cmw = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i280.i, i64 4
  %.not.i.i.i.i.i.i282.i = icmp eq ptr %i.cmv, %i.cmg
  br i1 %.not.i.i.i.i.i.i282.i, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i283.i, label %.lr.ph.i.i.i.i.i.i279.i, !llvm.loop !218

_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i283.i: ; preds = %.lr.ph.i.i.i.i.i.i279.i, %middle.block1446, %.noexc288.i37
  %i.cmx = getelementptr inbounds nuw i8, ptr %i.ckd, i64 24
  %.not.i.i284.i = icmp eq ptr %i.cmd, %i.cmx
  br i1 %.not.i.i284.i, label %bb.rh, label %bb.rg

bb.rg:                                            ; preds = %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i283.i
  call void @_ZdlPv(ptr noundef %i.cmd) #23
  %.pre.pre.i285.i = load i32, ptr %i.ckm, align 8, !tbaa !87
  br label %bb.rh

bb.rh:                                            ; preds = %bb.rg, %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i283.i
  %.pre.i287.i = phi i32 [ %i.cme, %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i283.i ], [ %.pre.pre.i285.i, %bb.rg ]
  store ptr %i.cmc, ptr %i.ckl, align 8, !tbaa !86
  store i32 5, ptr %i.clz, align 4, !tbaa !108
  %i.cmy = icmp eq i32 %.pre.i287.i, 0
  br i1 %i.cmy, label %.lr.ph13.preheader.i271.i, label %.noexc254.i

.lr.ph13.preheader.i271.i:                        ; preds = %bb.rh, %bb.re
  %i.cmz = phi ptr [ %i.cmc, %bb.rh ], [ %i.clr, %bb.re ]
  store i32 0, ptr %i.cmz, align 4
  %.pre550.pre.i = load ptr, ptr %i.ckl, align 8, !tbaa !86
  br label %.noexc254.i

.noexc254.i:                                      ; preds = %.lr.ph13.preheader.i271.i, %bb.rh
  %.pre550.i = phi ptr [ %i.cmc, %bb.rh ], [ %.pre550.pre.i, %.lr.ph13.preheader.i271.i ]
  store i32 1, ptr %i.ckm, align 8, !tbaa !87
  br label %bb.ri

bb.ri:                                            ; preds = %.noexc254.i, %bb.rd
  %i.cna = phi ptr [ %.pre550.i, %.noexc254.i ], [ %i.clr, %bb.rd ]
  %i.cnb = load i32, ptr %i.cna, align 4
  %i.cnc = lshr i32 %i.cnb, 4
  %i.cnd = zext nneg i32 %i.cnc to i64
  %i.cne = load ptr, ptr %i.clp, align 8, !tbaa !32
  %i.cnf = getelementptr inbounds nuw [4 x i8], ptr %i.cne, i64 %i.cnd
  %i.cng = load i32, ptr %i.cnf, align 4, !tbaa !34
  %i.cnh = icmp eq i32 %i.cng, 0
  %spec.select.i = select i1 %i.cnh, i1 true, i1 %.1518.i
  br label %bb.rk

bb.rj:                                            ; preds = %bb.rf, %bb.ra
  %i.cni = landingpad { ptr, i32 }
          cleanup
  br label %.body.i30

bb.rk:                                            ; preds = %bb.ri, %.lr.ph.i35
  %.2.i = phi i1 [ %.1518.i, %.lr.ph.i35 ], [ %spec.select.i, %bb.ri ] ; 2 uses
  %i.cnj = add i32 %.073519.i, 1                  ; 2 uses
  %i.cnk = load i32, ptr %i.cjy, align 4, !tbaa !315
  %.not89.i = icmp ugt i32 %i.cnj, %i.cnk
  br i1 %.not89.i, label %._crit_edge.i36, label %.lr.ph.i35, !llvm.loop !219

.lr.ph535.i:                                      ; preds = %._crit_edge525.i, %._crit_edge531.i
  %.sroa.0328.0533.i = phi ptr [ %i.cnt, %._crit_edge531.i ], [ %.sroa.0118.5, %._crit_edge525.i ] ; 3 uses
  %i.cnl = load i32, ptr %.sroa.0328.0533.i, align 4, !tbaa !34
  %i.cnm = zext i32 %i.cnl to i64
  %i.cnn = load ptr, ptr %i.c, align 8, !tbaa !26
  %i.cno = getelementptr inbounds nuw [36 x i8], ptr %i.cnn, i64 %i.cnm ; 2 uses
  %i.cnp = getelementptr inbounds nuw i8, ptr %i.cno, i64 4
  %i.cnq = load i32, ptr %i.cnp, align 4, !tbaa !314 ; 2 uses
  %i.cnr = getelementptr inbounds nuw i8, ptr %i.cno, i64 8 ; 2 uses
  %i.cns = load i32, ptr %i.cnr, align 4, !tbaa !315
  %.not87527.i = icmp ugt i32 %i.cnq, %i.cns
  br i1 %.not87527.i, label %._crit_edge531.i, label %.lr.ph530.i

._crit_edge531.i:                                 ; preds = %bb.ru, %.lr.ph535.i
  %i.cnt = getelementptr inbounds nuw i8, ptr %.sroa.0328.0533.i, i64 4
  %.not342.i = icmp eq ptr %.sroa.0328.0533.i, %.pn141
  br i1 %.not342.i, label %.loopexit.i34, label %.lr.ph535.i

.lr.ph530.i:                                      ; preds = %.lr.ph535.i, %bb.ru
  %.072528.i = phi i32 [ %i.cpn, %bb.ru ], [ %i.cnq, %.lr.ph535.i ] ; 2 uses
  %i.cnu = zext i32 %.072528.i to i64
  %i.cnv = load ptr, ptr %i.o, align 8, !tbaa !29
  %i.cnw = getelementptr inbounds nuw [64 x i8], ptr %i.cnv, i64 %i.cnu ; 6 uses
  %i.cnx = load i8, ptr %i.cnw, align 8, !tbaa !85
  switch i8 %i.cnx, label %bb.ru [
    i8 -52, label %bb.rl
    i8 -49, label %bb.rl
    i8 -47, label %bb.rl
    i8 -41, label %bb.rl
    i8 -45, label %bb.rl
    i8 -43, label %bb.rl
  ]

bb.rl:                                            ; preds = %.lr.ph530.i, %.lr.ph530.i, %.lr.ph530.i, %.lr.ph530.i, %.lr.ph530.i, %.lr.ph530.i
  %i.cny = load ptr, ptr %i.ag, align 8, !tbaa !316, !nonnull !47, !align !145
  %i.cnz = getelementptr inbounds nuw i8, ptr %i.cnw, i64 8 ; 4 uses
  %i.coa = getelementptr inbounds nuw i8, ptr %i.cnw, i64 16 ; 4 uses
  %i.cob = load i32, ptr %i.coa, align 8, !tbaa !87
  %.not.i256.not.i = icmp eq i32 %i.cob, 0
  br i1 %.not.i256.not.i, label %bb.rm, label %bb.rq, !prof !146

bb.rm:                                            ; preds = %bb.rl
  %i.coc = getelementptr inbounds nuw i8, ptr %i.cnw, i64 20 ; 2 uses
  %i.cod = load i32, ptr %i.coc, align 4, !tbaa !108
  %i.coe = icmp eq i32 %i.cod, 0
  br i1 %i.coe, label %bb.rn, label %..lr.ph13.preheader.i290_crit_edge.i

..lr.ph13.preheader.i290_crit_edge.i:             ; preds = %bb.rm
  %.pre551.i = load ptr, ptr %i.cnz, align 8, !tbaa !86
  br label %.lr.ph13.preheader.i290.i

bb.rn:                                            ; preds = %bb.rm
  %i.cof = invoke noalias noundef nonnull dereferenceable(20) ptr @_Znwm(i64 noundef 20) #24
          to label %.noexc307.i unwind label %bb.rs ; 6 uses

.noexc307.i:                                      ; preds = %bb.rn
  %i.cog = load ptr, ptr %i.cnz, align 8, !tbaa !86 ; 7 uses
  %i.coh = load i32, ptr %i.coa, align 8, !tbaa !87 ; 3 uses
  %i.coi = zext i32 %i.coh to i64
  %.idx.i.i296.i = shl nuw nsw i64 %i.coi, 2      ; 2 uses
  %i.coj = getelementptr inbounds nuw i8, ptr %i.cog, i64 %.idx.i.i296.i
  %.not11.i.i.i.i.i.i297.i = icmp eq i32 %i.coh, 0
  br i1 %.not11.i.i.i.i.i.i297.i, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i302.i, label %.lr.ph.i.i.i.i.i.i298.i.preheader

.lr.ph.i.i.i.i.i.i298.i.preheader:                ; preds = %.noexc307.i
  %i.cok = ptrtoaddr ptr %i.cog to i64
  %i.col = ptrtoaddr ptr %i.cof to i64
  %i.com = add nsw i64 %.idx.i.i296.i, -4         ; 2 uses
  %i.con = lshr exact i64 %i.com, 2
  %i.coo = add nuw nsw i64 %i.con, 1              ; 2 uses
  %min.iters.check = icmp ult i64 %i.com, 28
  %i.cop = sub i64 %i.cok, %i.col
  %diff.check = icmp ugt i64 %i.cop, -32
  %or.cond1712 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond1712, label %.lr.ph.i.i.i.i.i.i298.i.preheader1782, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i298.i.preheader
  %n.vec = and i64 %i.coo, 9223372036854775800    ; 3 uses
  %i.coq = shl i64 %n.vec, 2                      ; 2 uses
  %i.cor = getelementptr i8, ptr %i.cof, i64 %i.coq
  %i.cos = getelementptr i8, ptr %i.cog, i64 %i.coq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cot = shl i64 %index, 2                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cof, i64 %i.cot ; 2 uses
  %next.gep1430 = getelementptr i8, ptr %i.cog, i64 %i.cot ; 2 uses
  %i.cou = getelementptr i8, ptr %next.gep1430, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep1430, align 4, !tbaa !88
  %wide.load1431 = load <4 x i32>, ptr %i.cou, align 4, !tbaa !88
  %i.cov = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !88
  store <4 x i32> %wide.load1431, ptr %i.cov, align 4, !tbaa !88
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cow = icmp eq i64 %index.next, %n.vec
  br i1 %i.cow, label %middle.block, label %vector.body, !llvm.loop !220

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.coo, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i302.i, label %.lr.ph.i.i.i.i.i.i298.i.preheader1782

.lr.ph.i.i.i.i.i.i298.i.preheader1782:            ; preds = %.lr.ph.i.i.i.i.i.i298.i.preheader, %middle.block
  %.013.i.i.i.i.i.i299.i.ph = phi ptr [ %i.cof, %.lr.ph.i.i.i.i.i.i298.i.preheader ], [ %i.cor, %middle.block ]
  %.sroa.08.012.i.i.i.i.i.i300.i.ph = phi ptr [ %i.cog, %.lr.ph.i.i.i.i.i.i298.i.preheader ], [ %i.cos, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i298.i

.lr.ph.i.i.i.i.i.i298.i:                          ; preds = %.lr.ph.i.i.i.i.i.i298.i.preheader1782, %.lr.ph.i.i.i.i.i.i298.i
  %.013.i.i.i.i.i.i299.i = phi ptr [ %i.coz, %.lr.ph.i.i.i.i.i.i298.i ], [ %.013.i.i.i.i.i.i299.i.ph, %.lr.ph.i.i.i.i.i.i298.i.preheader1782 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i300.i = phi ptr [ %i.coy, %.lr.ph.i.i.i.i.i.i298.i ], [ %.sroa.08.012.i.i.i.i.i.i300.i.ph, %.lr.ph.i.i.i.i.i.i298.i.preheader1782 ] ; 2 uses
  %i.cox = load i32, ptr %.sroa.08.012.i.i.i.i.i.i300.i, align 4, !tbaa !88
  store i32 %i.cox, ptr %.013.i.i.i.i.i.i299.i, align 4, !tbaa !88
  %i.coy = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i300.i, i64 4 ; 2 uses
  %i.coz = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i299.i, i64 4
  %.not.i.i.i.i.i.i301.i = icmp eq ptr %i.coy, %i.coj
  br i1 %.not.i.i.i.i.i.i301.i, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i302.i, label %.lr.ph.i.i.i.i.i.i298.i, !llvm.loop !221

_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i302.i: ; preds = %.lr.ph.i.i.i.i.i.i298.i, %middle.block, %.noexc307.i
  %i.cpa = getelementptr inbounds nuw i8, ptr %i.cnw, i64 24
  %.not.i.i303.i = icmp eq ptr %i.cog, %i.cpa
  br i1 %.not.i.i303.i, label %bb.rp, label %bb.ro

bb.ro:                                            ; preds = %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i302.i
  call void @_ZdlPv(ptr noundef %i.cog) #23
  %.pre.pre.i304.i = load i32, ptr %i.coa, align 8, !tbaa !87
  br label %bb.rp

bb.rp:                                            ; preds = %bb.ro, %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i302.i
  %.pre.i306.i = phi i32 [ %i.coh, %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i302.i ], [ %.pre.pre.i304.i, %bb.ro ]
  store ptr %i.cof, ptr %i.cnz, align 8, !tbaa !86
  store i32 5, ptr %i.coc, align 4, !tbaa !108
  %i.cpb = icmp eq i32 %.pre.i306.i, 0
  br i1 %i.cpb, label %.lr.ph13.preheader.i290.i, label %.noexc257.i

.lr.ph13.preheader.i290.i:                        ; preds = %bb.rp, %..lr.ph13.preheader.i290_crit_edge.i
  %i.cpc = phi ptr [ %.pre551.i, %..lr.ph13.preheader.i290_crit_edge.i ], [ %i.cof, %bb.rp ]
  store i32 0, ptr %i.cpc, align 4
  br label %.noexc257.i

.noexc257.i:                                      ; preds = %.lr.ph13.preheader.i290.i, %bb.rp
  store i32 1, ptr %i.coa, align 8, !tbaa !87
  br label %bb.rq

bb.rq:                                            ; preds = %.noexc257.i, %bb.rl
  %i.cpd = load ptr, ptr %i.cnz, align 8, !tbaa !86
  %i.cpe = load i32, ptr %i.cpd, align 4
  %i.cpf = lshr i32 %i.cpe, 4
  %i.cpg = zext nneg i32 %i.cpf to i64            ; 2 uses
  %i.cph = load ptr, ptr %i.cny, align 8, !tbaa !32
  %i.cpi = getelementptr inbounds nuw [4 x i8], ptr %i.cph, i64 %i.cpg
  %i.cpj = load i32, ptr %i.cpi, align 4, !tbaa !34
  %i.cpk = icmp eq i32 %i.cpj, 0
  br i1 %i.cpk, label %._crit_edge552.i, label %bb.ru

._crit_edge552.i:                                 ; preds = %bb.rq
  %.pre554.i = load ptr, ptr %i.o, align 8, !tbaa !29
  %.phi.trans.insert.i = getelementptr inbounds nuw [64 x i8], ptr %.pre554.i, i64 %i.cpg
  %.pre555.i = load i8, ptr %.phi.trans.insert.i, align 8, !tbaa !85
  %.off.i = add i8 %.pre555.i, -105
  %switch.i = icmp ult i8 %.off.i, 2
  br i1 %switch.i, label %bb.rr, label %bb.ru

bb.rr:                                            ; preds = %._crit_edge552.i
  invoke void @_ZN4Luau7CodeGen4killERNS0_10IrFunctionERNS0_6IrInstE(ptr noundef nonnull align 8 dereferenceable(928) %i.c, ptr noundef nonnull align 8 dereferenceable(59) %i.cnw)
          to label %bb.ru unwind label %bb.rt

bb.rs:                                            ; preds = %bb.rn
end_hunk_0
