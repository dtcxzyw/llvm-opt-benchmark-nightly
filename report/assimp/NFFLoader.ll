Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/NFFLoader?download=true
inline.NumInlined: 2277
inline.NumDeleted: 734
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
loop-unroll.NumUnrolledNotLatch: 7
begin_hunk_0_@_ZN6Assimp11NFFImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i

.critedge.i1262:                                  ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit1258.thread
  %.0.i1260.ptr.le = getelementptr inbounds nuw i8, ptr %i.i, i64 %.0.i1260.idx ; 2 uses
  %i.aba = add i8 %i.aaz, -58
  %or.cond11.i1266 = icmp ult i8 %i.aba, -10
  br i1 %or.cond11.i1266, label %_ZN6Assimp9strtoul10EPKcPS1_.exit1275.thread, label %.lr.ph.i1267

_ZN6Assimp9strtoul10EPKcPS1_.exit1275.thread:     ; preds = %.critedge.i1262
  store ptr %.0.i1260.ptr.le, ptr %i.j, align 8
  br label %.loopexit2998

.lr.ph.i1267:                                     ; preds = %.critedge.i1262, %.lr.ph.i1267
  %i.abb = phi i8 [ %i.abg, %.lr.ph.i1267 ], [ %i.aaz, %.critedge.i1262 ]
  %.013.i1268 = phi i32 [ %i.abe, %.lr.ph.i1267 ], [ 0, %.critedge.i1262 ]
  %.0812.i1269 = phi ptr [ %i.abf, %.lr.ph.i1267 ], [ %.0.i1260.ptr.le, %.critedge.i1262 ]
  %i.abc = mul i32 %.013.i1268, 10
  %narrow.i1270 = add nsw i8 %i.abb, -48
  %i.abd = zext nneg i8 %narrow.i1270 to i32
  %i.abe = add i32 %i.abc, %i.abd                 ; 3 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %.0812.i1269, i64 1 ; 3 uses
  %i.abg = load i8, ptr %i.abf, align 1           ; 2 uses
  %i.abh = add i8 %i.abg, -58
  %or.cond.i1271 = icmp ult i8 %i.abh, -10
  br i1 %or.cond.i1271, label %_ZN6Assimp9strtoul10EPKcPS1_.exit1275, label %.lr.ph.i1267, !llvm.loop !26

_ZN6Assimp9strtoul10EPKcPS1_.exit1275:            ; preds = %.lr.ph.i1267
  store ptr %i.abf, ptr %i.j, align 8
  %.not781 = icmp eq i32 %i.abe, 0
  br i1 %.not781, label %.loopexit2998, label %bb.gq

bb.gq:                                            ; preds = %_ZN6Assimp9strtoul10EPKcPS1_.exit1275
  %i.abi = zext i32 %i.abe to i64                 ; 5 uses
  %i.abj = ptrtoint ptr %.sroa.16.03957 to i64    ; 2 uses
  %i.abk = ptrtoint ptr %.sroa.02606.03956 to i64 ; 2 uses
  %i.abl = sub i64 %i.abj, %i.abk                 ; 4 uses
  %i.abm = ashr exact i64 %i.abl, 2               ; 6 uses
  %i.abn = icmp ult i64 %i.abm, %i.abi
  br i1 %i.abn, label %bb.gr, label %bb.gu

bb.gr:                                            ; preds = %bb.gq
  %i.abo = sub nuw nsw i64 %i.abi, %i.abm         ; 5 uses
  %i.abp = ptrtoint ptr %.sroa.27.03958 to i64    ; 2 uses
  %i.abq = sub i64 %i.abp, %i.abj
  %i.abr = ashr exact i64 %i.abq, 2               ; 2 uses
  %i.abs = xor i64 %i.abm, 2305843009213693951
  %i.abt = icmp ule i64 %i.abr, %i.abs
  call void @llvm.assume(i1 %i.abt)
  %.not28.i = icmp ult i64 %i.abr, %i.abo
  br i1 %.not28.i, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  store i32 0, ptr %.sroa.16.03957, align 4
  %i.abu = getelementptr i8, ptr %.sroa.16.03957, i64 4 ; 3 uses
  %i.abv = add nsw i64 %i.abo, -1                 ; 2 uses
  %i.abw = icmp eq i64 %i.abv, 0
  br i1 %i.abw, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i: ; preds = %bb.gs
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.abv, 2   ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.abu, i8 0, i64 %.idx.i.i.i.i.i.i, i1 false)
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abu, i64 %.idx.i.i.i.i.i.i
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.gr
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.abm, i64 %i.abo)
  %i.aby = add nuw nsw i64 %.sroa.speculated.i.i, %i.abm ; 2 uses
  %i.abz = shl nuw nsw i64 %i.aby, 2
  %i.aca = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.abz) #29
          to label %.noexc2535 unwind label %.loopexit.split-lp3000.loopexit ; 4 uses

.noexc2535:                                       ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aca, i64 %i.abl ; 3 uses
  store i32 0, ptr %i.acb, align 4
  %i.acc = add nsw i64 %i.abo, -1                 ; 2 uses
  %i.acd = icmp eq i64 %i.acc, 0
  br i1 %i.acd, label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc2535
  %i.ace = getelementptr i8, ptr %i.acb, i64 4
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.acc, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ace, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc2535
  %i.acf = icmp sgt i64 %i.abl, 0
  br i1 %i.acf, label %bb.gt, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i

bb.gt:                                            ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aca, ptr align 4 %.sroa.02606.03956, i64 %i.abl, i1 false)
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i: ; preds = %bb.gt, %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33.i
  %i.acg = sub i64 %i.abp, %i.abk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.02606.03956, i64 noundef %i.acg) #28
  %i.ach = getelementptr inbounds nuw [4 x i8], ptr %i.acb, i64 %i.abo
  %i.aci = getelementptr inbounds nuw [4 x i8], ptr %i.aca, i64 %i.aby
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

bb.gu:                                            ; preds = %bb.gq
  %i.acj = icmp ugt i64 %i.abm, %i.abi
  br i1 %i.acj, label %bb.gv, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

bb.gv:                                            ; preds = %bb.gu
  %i.ack = getelementptr inbounds nuw [4 x i8], ptr %.sroa.02606.03956, i64 %i.abi ; 2 uses
  %.not.i.i1276 = icmp eq ptr %.sroa.16.03957, %i.ack
  %spec.select2873 = select i1 %.not.i.i1276, ptr %.sroa.16.03957, ptr %i.ack
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

_ZNSt6vectorIjSaIjEE6resizeEm.exit:               ; preds = %bb.gv, %bb.gs, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i, %bb.gu
  %.sroa.02606.5 = phi ptr [ %.sroa.02606.03956, %bb.gu ], [ %.sroa.02606.03956, %bb.gv ], [ %.sroa.02606.03956, %bb.gs ], [ %.sroa.02606.03956, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.aca, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i ] ; 3 uses
  %.sroa.16.3 = phi ptr [ %.sroa.16.03957, %bb.gu ], [ %spec.select2873, %bb.gv ], [ %i.abu, %bb.gs ], [ %i.abx, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.ach, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i ]
  %.sroa.27.5 = phi ptr [ %.sroa.27.03958, %bb.gu ], [ %.sroa.27.03958, %bb.gv ], [ %.sroa.27.03958, %bb.gs ], [ %.sroa.27.03958, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.aci, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i ] ; 2 uses
  br label %bb.gw

bb.gw:                                            ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit, %bb.hc
  %indvars.iv = phi i64 [ 0, %_ZNSt6vectorIjSaIjEE6resizeEm.exit ], [ %indvars.iv.next, %bb.hc ] ; 2 uses
  %i.acl = load ptr, ptr %i.j, align 8            ; 3 uses
  %i.acm = ptrtoaddr ptr %i.acl to i64
  %i.acn = sub i64 %i.fj, %i.acm
  %scevgep.i1278 = getelementptr i8, ptr %i.acl, i64 %i.acn
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gz, %bb.gw
  %.0.i1279 = phi ptr [ %i.acl, %bb.gw ], [ %i.acp, %bb.gz ] ; 4 uses
  %i.aco = load i8, ptr %.0.i1279, align 1
  switch i8 %i.aco, label %.critedge.i1281 [
    i8 32, label %bb.gy
    i8 9, label %bb.gy
  ]

bb.gy:                                            ; preds = %bb.gx, %bb.gx
  %.not.i1280 = icmp eq ptr %.0.i1279, %i.bg
  br i1 %.not.i1280, label %.critedge.i1281, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.acp = getelementptr inbounds nuw i8, ptr %.0.i1279, i64 1
  br label %bb.gx, !llvm.loop !2

.critedge.i1281:                                  ; preds = %bb.gy, %bb.gx
  %.0.lcssa.i1282 = phi ptr [ %.0.i1279, %bb.gx ], [ %scevgep.i1278, %bb.gy ] ; 4 uses
  store ptr %.0.lcssa.i1282, ptr %i.j, align 8
  %i.acq = load i8, ptr %.0.lcssa.i1282, align 1  ; 2 uses
  %i.acr = add i8 %i.acq, -58
  %or.cond11.i1285 = icmp ult i8 %i.acr, -10
  br i1 %or.cond11.i1285, label %_ZN6Assimp9strtoul10EPKcPS1_.exit1294, label %.lr.ph.i1286

.lr.ph.i1286:                                     ; preds = %.critedge.i1281, %.lr.ph.i1286
  %i.acs = phi i8 [ %i.acx, %.lr.ph.i1286 ], [ %i.acq, %.critedge.i1281 ]
  %.013.i1287 = phi i32 [ %i.acv, %.lr.ph.i1286 ], [ 0, %.critedge.i1281 ]
  %.0812.i1288 = phi ptr [ %i.acw, %.lr.ph.i1286 ], [ %.0.lcssa.i1282, %.critedge.i1281 ]
  %i.act = mul i32 %.013.i1287, 10
  %narrow.i1289 = add nsw i8 %i.acs, -48
  %i.acu = zext nneg i8 %narrow.i1289 to i32
  %i.acv = add i32 %i.act, %i.acu                 ; 2 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %.0812.i1288, i64 1 ; 3 uses
  %i.acx = load i8, ptr %i.acw, align 1           ; 2 uses
  %i.acy = add i8 %i.acx, -58
  %or.cond.i1290 = icmp ult i8 %i.acy, -10
  br i1 %or.cond.i1290, label %_ZN6Assimp9strtoul10EPKcPS1_.exit1294, label %.lr.ph.i1286, !llvm.loop !26

_ZN6Assimp9strtoul10EPKcPS1_.exit1294:            ; preds = %.lr.ph.i1286, %.critedge.i1281
  %.08.lcssa.i1291 = phi ptr [ %.0.lcssa.i1282, %.critedge.i1281 ], [ %i.acw, %.lr.ph.i1286 ]
  %.0.lcssa.i1292 = phi i32 [ 0, %.critedge.i1281 ], [ %i.acv, %.lr.ph.i1286 ] ; 2 uses
  store ptr %.08.lcssa.i1291, ptr %i.j, align 8
  %.not797 = icmp ult i32 %.0.lcssa.i1292, %i.aam
  br i1 %.not797, label %bb.hc, label %bb.ha

bb.ha:                                            ; preds = %_ZN6Assimp9strtoul10EPKcPS1_.exit1294
  %i.acz = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.hb unwind label %.loopexit2999

bb.hb:                                            ; preds = %bb.ha
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.acz, ptr noundef nonnull @.str.33)
          to label %bb.hc unwind label %.loopexit2999

.loopexit2999:                                    ; preds = %bb.ha, %bb.hb
  %lpad.loopexit3001 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp3000

.loopexit.split-lp3000.loopexit:                  ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i, %_ZN6Assimp11GetNextLineIcEEbRPKT_PS1_.exit1250.thread, %bb.gn
  %lpad.loopexit3016 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp3000

.loopexit.split-lp3000.thread5149.loopexit.split-lp: ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i, %bb.gg
  %lpad.loopexit.split-lp6651 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit1450

.loopexit.split-lp3000.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.kw
  %lpad.loopexit.split-lp3056 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp3000.thread

bb.hc:                                            ; preds = %bb.hb, %_ZN6Assimp9strtoul10EPKcPS1_.exit1294
  %.0681 = phi i32 [ %.0.lcssa.i1292, %_ZN6Assimp9strtoul10EPKcPS1_.exit1294 ], [ 0, %bb.hb ]
  %i.ada = getelementptr inbounds nuw [4 x i8], ptr %.sroa.02606.5, i64 %indvars.iv
  store i32 %.0681, ptr %i.ada, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %46 = icmp samesign ult i64 %indvars.iv.next, %i.abi
  br i1 %46, label %bb.gw, label %.loopexit2998, !llvm.loop !55

.loopexit2998:                                    ; preds = %bb.hc, %_ZN6Assimp9strtoul10EPKcPS1_.exit1275, %_ZN6Assimp9strtoul10EPKcPS1_.exit1275.thread
  %.sroa.02606.2 = phi ptr [ %.sroa.02606.03956, %_ZN6Assimp9strtoul10EPKcPS1_.exit1275 ], [ %.sroa.02606.03956, %_ZN6Assimp9strtoul10EPKcPS1_.exit1275.thread ], [ %.sroa.02606.5, %bb.hc ] ; 7 uses
  %.sroa.16.1 = phi ptr [ %.sroa.16.03957, %_ZN6Assimp9strtoul10EPKcPS1_.exit1275 ], [ %.sroa.16.03957, %_ZN6Assimp9strtoul10EPKcPS1_.exit1275.thread ], [ %.sroa.16.3, %bb.hc ] ; 4 uses
  %.sroa.27.2 = phi ptr [ %.sroa.27.03958, %_ZN6Assimp9strtoul10EPKcPS1_.exit1275 ], [ %.sroa.27.03958, %_ZN6Assimp9strtoul10EPKcPS1_.exit1275.thread ], [ %.sroa.27.5, %bb.hc ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #27
  store <4 x float> splat (float 1.000000e+00), ptr %i.fz, align 16
  store float 1.000000e+00, ptr %i.gd, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.ge, i8 0, i64 24, i1 false)
  store float 1.000000e+00, ptr %i.gf, align 4
  store ptr %i.gh, ptr %i.gg, align 16
  store i64 0, ptr %i.gi, align 8
  store i8 0, ptr %i.gh, align 16
  store i8 0, ptr %i.gj, align 16
  store i8 1, ptr %i.gk, align 1
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.gl, align 4
  store ptr %i.go, ptr %i.gn, align 16
  store i64 0, ptr %i.gp, align 8
  store i8 0, ptr %i.go, align 16
  store i32 0, ptr %i.gq, align 16
  store <4 x float> splat (float 1.000000e+00), ptr %23, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #27
  store <4 x float> splat (float 1.000000e+00), ptr %24, align 16
  br label %.outer2994.outer

.outer2994.outer:                                 ; preds = %.outer2994.outer.backedge, %.loopexit2998
  %.4695.ph.ph = phi i1 [ %.36943959, %.loopexit2998 ], [ true, %.outer2994.outer.backedge ] ; 2 uses
  %.0678.ph.ph = phi i32 [ 0, %.loopexit2998 ], [ %.0678.ph.ph6623, %.outer2994.outer.backedge ]
  br label %.outer2994.outer6622

.outer2994:                                       ; preds = %.outer2994.backedge, %.outer2994.outer6622
  br label %bb.hd

bb.hd:                                            ; preds = %.outer2994, %bb.ia
  %i.adb = load ptr, ptr %i.j, align 8            ; 3 uses
  %i.adc = ptrtoaddr ptr %i.adb to i64
  %i.add = sub i64 %i.fj, %i.adc
  %scevgep.i1295 = getelementptr i8, ptr %i.adb, i64 %i.add
  br label %bb.he

bb.he:                                            ; preds = %bb.hg, %bb.hd
  %.0.i1296 = phi ptr [ %i.adb, %bb.hd ], [ %i.adf, %bb.hg ] ; 4 uses
  %i.ade = load i8, ptr %.0.i1296, align 1
  switch i8 %i.ade, label %.critedge.i1298 [
    i8 32, label %bb.hf
    i8 9, label %bb.hf
  ]

bb.hf:                                            ; preds = %bb.he, %bb.he
  %.not.i1297 = icmp eq ptr %.0.i1296, %i.bg
  br i1 %.not.i1297, label %.critedge.i1298, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.adf = getelementptr inbounds nuw i8, ptr %.0.i1296, i64 1
  br label %bb.he, !llvm.loop !2

.critedge.i1298:                                  ; preds = %bb.hf, %bb.he
  %i.adg = phi ptr [ %.0.i1296, %bb.he ], [ %scevgep.i1295, %bb.hf ] ; 18 uses
  store ptr %i.adg, ptr %i.j, align 8
  %i.adh = load i8, ptr %i.adg, align 1           ; 5 uses
  switch i8 %i.adh, label %sub_02908 [
    i8 13, label %bb.je
    i8 10, label %bb.je
    i8 0, label %bb.je
    i8 12, label %bb.je
  ]

sub_02908:                                        ; preds = %.critedge.i1298
  %i.adi = zext i8 %i.adh to i32
  %i.adj = sub nsw i32 48, %i.adi
  %.not4068 = icmp eq i8 %i.adh, 48
  br i1 %.not4068, label %sub_12909, label %_ZN6Assimp9IsLineEndIcEEbT_.exit1302.tail

sub_12909:                                        ; preds = %sub_02908
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adg, i64 1
  %i.adl = load i8, ptr %i.adk, align 1
  %i.adm = zext i8 %i.adl to i32
  %i.adn = sub nsw i32 120, %i.adm
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit1302.tail

_ZN6Assimp9IsLineEndIcEEbT_.exit1302.tail:        ; preds = %sub_02908, %sub_12909
  %i.ado = phi i32 [ %i.adj, %sub_02908 ], [ %i.adn, %sub_12909 ]
  %.not.i1303 = icmp eq i32 %i.ado, 0
  br i1 %.not.i1303, label %bb.hh, label %bb.hs

bb.hh:                                            ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit1302.tail
  %i.adp = getelementptr inbounds nuw i8, ptr %i.adg, i64 2
  %i.adq = load i8, ptr %i.adp, align 1           ; 2 uses
  switch i8 %i.adq, label %bb.hs [
    i8 32, label %bb.hi
    i8 9, label %bb.hi
    i8 13, label %bb.hi
    i8 10, label %bb.hi
    i8 0, label %bb.hi
    i8 12, label %bb.hi
  ]

bb.hi:                                            ; preds = %bb.hh, %bb.hh, %bb.hh, %bb.hh, %bb.hh, %bb.hh
  %.not11.i1305 = icmp eq i8 %i.adq, 0
  %storemerge.i1306.v = select i1 %.not11.i1305, i64 2, i64 3
  %storemerge.i1306 = getelementptr inbounds nuw i8, ptr %i.adg, i64 %storemerge.i1306.v ; 3 uses
  store ptr %storemerge.i1306, ptr %i.j, align 8
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hp, %bb.hi
  %.016.i1308 = phi ptr [ %storemerge.i1306, %bb.hi ], [ %i.aeg, %bb.hp ] ; 4 uses
  %.0.i1309 = phi i32 [ 0, %bb.hi ], [ %.1.i1314, %bb.hp ] ; 9 uses
  %i.adr = load i8, ptr %.016.i1308, align 1      ; 3 uses
  %i.ads = add i8 %i.adr, -48                     ; 2 uses
  %or.cond.i1310 = icmp ult i8 %i.ads, 10
  br i1 %or.cond.i1310, label %bb.hk, label %bb.hl

bb.hk:                                            ; preds = %bb.hj
  %i.adt = shl i32 %.0.i1309, 4
  %i.adu = zext nneg i8 %i.ads to i32
  %i.adv = or disjoint i32 %i.adt, %i.adu
  br label %bb.hp

bb.hl:                                            ; preds = %bb.hj
  %i.adw = add i8 %i.adr, -65                     ; 2 uses
  %or.cond23.i1311 = icmp ult i8 %i.adw, 6
  br i1 %or.cond23.i1311, label %bb.hm, label %bb.hn

bb.hm:                                            ; preds = %bb.hl
  %i.adx = shl i32 %.0.i1309, 4
  %i.ady = zext nneg i8 %i.adw to i32
  %i.adz = or disjoint i32 %i.adx, 10
  %i.aea = add nuw i32 %i.adz, %i.ady
  br label %bb.hp

bb.hn:                                            ; preds = %bb.hl
  %i.aeb = add i8 %i.adr, -97                     ; 2 uses
  %or.cond24.i1312 = icmp ult i8 %i.aeb, 6
  br i1 %or.cond24.i1312, label %bb.ho, label %_ZN6Assimp9strtoul16EPKcPS1_.exit1315

bb.ho:                                            ; preds = %bb.hn
  %i.aec = shl i32 %.0.i1309, 4
  %i.aed = zext nneg i8 %i.aeb to i32
  %i.aee = or disjoint i32 %i.aec, 10
  %i.aef = add nuw i32 %i.aee, %i.aed
  br label %bb.hp

bb.hp:                                            ; preds = %bb.ho, %bb.hm, %bb.hk
  %.1.i1314 = phi i32 [ %i.adv, %bb.hk ], [ %i.aea, %bb.hm ], [ %i.aef, %bb.ho ]
  %i.aeg = getelementptr inbounds nuw i8, ptr %.016.i1308, i64 1
  br label %bb.hj, !llvm.loop !31

_ZN6Assimp9strtoul16EPKcPS1_.exit1315:            ; preds = %bb.hn
  store ptr %.016.i1308, ptr %i.j, align 8
  %i.aeh = ptrtoint ptr %.016.i1308 to i64
  %i.aei = ptrtoint ptr %storemerge.i1306 to i64
  %i.aej = sub i64 %i.aeh, %i.aei
  %i.aek = and i64 %i.aej, 4294967292
  %.not788 = icmp eq i64 %i.aek, 0
  br i1 %.not788, label %bb.hr, label %bb.hq

bb.hq:                                            ; preds = %_ZN6Assimp9strtoul16EPKcPS1_.exit1315
  %i.ael = lshr i32 %.0.i1309, 16
  %i.aem = lshr i32 %.0.i1309, 8
  %i.aen = and i32 %i.ael, 255
  %i.aeo = uitofp nneg i32 %i.aen to float
  %i.aep = and i32 %i.aem, 255
  %i.aeq = uitofp nneg i32 %i.aep to float
  %i.aer = insertelement <2 x float> poison, float %i.aeo, i64 0
  %i.aes = insertelement <2 x float> %i.aer, float %i.aeq, i64 1
  %i.aet = fdiv <2 x float> %i.aes, splat (float 2.550000e+02)
  store <2 x float> %i.aet, ptr %24, align 16
  %i.aeu = and i32 %.0.i1309, 255
  %i.aev = uitofp nneg i32 %i.aeu to float
  %i.aew = fdiv float %i.aev, 2.550000e+02
  br label %.outer2994.outer.backedge

.outer2994.outer.backedge:                        ; preds = %bb.hq, %bb.hr
  %storemerge7155 = phi float [ %i.aew, %bb.hq ], [ %i.afi, %bb.hr ]
  store float %storemerge7155, ptr %i.gr, align 8
  br label %.outer2994.outer, !llvm.loop !56

bb.hr:                                            ; preds = %_ZN6Assimp9strtoul16EPKcPS1_.exit1315
  %i.aex = lshr i32 %.0.i1309, 8
  %i.aey = lshr i32 %.0.i1309, 4
  %i.aez = and i32 %i.aex, 15
  %i.afa = uitofp nneg i32 %i.aez to float
  %i.afb = and i32 %i.aey, 15
  %i.afc = uitofp nneg i32 %i.afb to float
  %i.afd = insertelement <2 x float> poison, float %i.afa, i64 0
  %i.afe = insertelement <2 x float> %i.afd, float %i.afc, i64 1
  %i.aff = fmul nnan <2 x float> %i.afe, splat (float 6.250000e-02)
  store <2 x float> %i.aff, ptr %24, align 16
  %i.afg = and i32 %.0.i1309, 15
  %i.afh = uitofp nneg i32 %i.afg to float
  %i.afi = fmul nnan float %i.afh, 6.250000e-02
  br label %.outer2994.outer.backedge

bb.hs:                                            ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit1302.tail, %bb.hh
  %i.afj = icmp eq i8 %i.adh, 95
  br i1 %i.afj, label %bb.ht, label %bb.io

bb.ht:                                            ; preds = %bb.hs
  %i.afk = getelementptr inbounds nuw i8, ptr %i.adg, i64 1
  %i.afl = load i8, ptr %i.afk, align 1
end_hunk_0
