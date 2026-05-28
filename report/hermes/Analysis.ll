inline.NumInlined: 1525
inline.NumDeleted: 715
begin_hunk_0_@_ZN6hermes12LoopAnalysisC2EPNS_8FunctionERKNS_13DominanceInfoE:.lr.ph664
  %.07.i.i.i82.ptr.9 = getelementptr inbounds nuw i8, ptr %6, i64 512
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i82.ptr.9, align 8, !tbaa !37
  %.07.i.i.i82.ptr.10 = getelementptr inbounds nuw i8, ptr %6, i64 568
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i82.ptr.10, align 8, !tbaa !37
  %.07.i.i.i82.ptr.11 = getelementptr inbounds nuw i8, ptr %6, i64 624
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i82.ptr.11, align 8, !tbaa !37
  %.07.i.i.i82.ptr.12 = getelementptr inbounds nuw i8, ptr %6, i64 680
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i82.ptr.12, align 8, !tbaa !37
  %.07.i.i.i82.ptr.13 = getelementptr inbounds nuw i8, ptr %6, i64 736
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i82.ptr.13, align 8, !tbaa !37
  %.07.i.i.i82.ptr.14 = getelementptr inbounds nuw i8, ptr %6, i64 792
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i82.ptr.14, align 8, !tbaa !37
  %.07.i.i.i82.ptr.15 = getelementptr inbounds nuw i8, ptr %6, i64 848
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i82.ptr.15, align 8, !tbaa !37
  %.phi.trans.insert3.i.i56 = getelementptr inbounds nuw i8, ptr %0, i64 280
  %.phi.trans.insert3.i.i64 = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %.phi.trans.insert3.i.i71 = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %.phi.trans.insert3.i.i79 = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.p, ptr %7, align 8, !tbaa !15
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  store i32 16, ptr %i.r, align 4, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !42
  %i.u = ptrtoint ptr %i.t to i64
  store i64 %i.u, ptr %i.p, align 8
  store i32 1, ptr %i.q, align 8, !tbaa !17
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 6 uses
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph664, %.loopexit614
  %i.ab = phi i32 [ 1, %.lr.ph664 ], [ %i.mv, %.loopexit614 ]
  %i.ac = zext i32 %i.ab to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.ad = load ptr, ptr %7, align 8, !tbaa !15
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ac
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !37
  store ptr %i.ag, ptr %i.b, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  call void @_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E11try_emplaceIJRiEEESt4pairINS_16DenseMapIteratorIS5_iS7_SA_Lb0EEEbERKS5_DpOT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.89") align 8 %8, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.ah = load i8, ptr %i.v, align 8, !tbaa !175, !range !179, !noundef !50
  %i.ai = trunc nuw i8 %i.ah to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  br i1 %i.ai, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.aj = load i32, ptr %i.a, align 4, !tbaa !3
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.a, align 4, !tbaa !3
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.am = call noundef ptr @_ZN6hermes10BasicBlock13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %i.al) #11
  %i.an = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.ao = call noundef ptr @_ZN6hermes10BasicBlock13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %i.an) #11 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i, label %.loopexit614, label %_ZN6hermes8succ_endEPNS_10BasicBlockE.exit

_ZN6hermes8succ_endEPNS_10BasicBlockE.exit:       ; preds = %bb.b
  %i.ap = call noundef i32 @_ZNK6hermes14TerminatorInst16getNumSuccessorsEv(ptr noundef nonnull align 8 dereferenceable(132) %i.ao) #11 ; 2 uses
  %.not602660 = icmp eq i32 %i.ap, 0
  br i1 %.not602660, label %.loopexit614, label %.lr.ph662, !llvm.loop !180

.lr.ph662:                                        ; preds = %_ZN6hermes8succ_endEPNS_10BasicBlockE.exit
  br label %bb.c, !llvm.loop !180

bb.c:                                             ; preds = %.lr.ph662, %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E5countES5_.exit
  %.sroa.4563.0661 = phi i32 [ 0, %.lr.ph662 ], [ %i.eo, %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E5countES5_.exit ] ; 2 uses
  %i.aq = call noundef ptr @_ZNK6hermes14TerminatorInst12getSuccessorEj(ptr noundef nonnull align 8 dereferenceable(132) %i.am, i32 noundef %.sroa.4563.0661) #11 ; 9 uses
  %i.ar = load i32, ptr %3, align 8
  %i.as = and i32 %i.ar, 1
  %.not.i.i.i.i = icmp eq i32 %i.as, 0            ; 2 uses
  %i.at = load ptr, ptr %.07.i.i.i67.ptr, align 8
  %i.au = select i1 %.not.i.i.i.i, ptr %i.at, ptr %.07.i.i.i67.ptr ; 2 uses
  %i.av = load i32, ptr %.phi.trans.insert3.i.i64, align 8
  %i.aw = select i1 %.not.i.i.i.i, i32 %i.av, i32 16 ; 2 uses
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %.loopexit612, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = ptrtoint ptr %i.aq to i64
  %i.az = trunc i64 %i.ay to i32                  ; 2 uses
  %i.ba = lshr i32 %i.az, 4
  %i.bb = lshr i32 %i.az, 9
  %i.bc = xor i32 %i.ba, %i.bb
  %i.bd = add i32 %i.aw, -1                       ; 2 uses
  %.02945.i.i = and i32 %i.bd, %i.bc              ; 2 uses
  %i.be = zext nneg i32 %.02945.i.i to i64
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !37 ; 2 uses
  %i.bh = icmp eq ptr %i.aq, %i.bg
  br i1 %i.bh, label %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E5countES5_.exit, label %.lr.ph.i.i, !prof !181

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.e
  %i.bi = phi ptr [ %i.bo, %bb.e ], [ %i.bg, %bb.d ]
  %.02948.i.i = phi i32 [ %.029.i.i, %bb.e ], [ %.02945.i.i, %bb.d ]
  %.02747.i.i = phi i32 [ %i.bk, %bb.e ], [ 1, %bb.d ] ; 2 uses
  %i.bj = icmp eq ptr %i.bi, inttoptr (i64 -8 to ptr)
  br i1 %i.bj, label %.loopexit612, label %bb.e, !prof !31

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.bk = add i32 %.02747.i.i, 1
  %i.bl = add i32 %.02747.i.i, %.02948.i.i
  %.029.i.i = and i32 %i.bl, %i.bd                ; 2 uses
  %i.bm = zext i32 %.029.i.i to i64
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !37 ; 2 uses
  %i.bp = icmp eq ptr %i.aq, %i.bo
  br i1 %i.bp, label %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E5countES5_.exit, label %.lr.ph.i.i, !prof !182, !llvm.loop !183

.loopexit612:                                     ; preds = %.lr.ph.i.i, %bb.c
  %i.bq = load i32, ptr %i.q, align 8, !tbaa !17  ; 2 uses
  %i.br = load i32, ptr %i.r, align 4, !tbaa !18
  %.not.i86 = icmp ult i32 %i.bq, %i.br
  br i1 %.not.i86, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit88, label %bb.f, !prof !31

bb.f:                                             ; preds = %.loopexit612
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull %i.p, i64 noundef 0, i64 noundef 8) #11
  %.pre.i87 = load i32, ptr %i.q, align 8, !tbaa !17
  br label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit88

_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit88: ; preds = %.loopexit612, %bb.f
  %i.bs = phi i32 [ %.pre.i87, %bb.f ], [ %i.bq, %.loopexit612 ]
  %i.bt = load ptr, ptr %7, align 8, !tbaa !15
  %i.bu = zext i32 %i.bs to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bu
  %i.bw = ptrtoint ptr %i.aq to i64               ; 3 uses
  store i64 %i.bw, ptr %i.bv, align 1
  %i.bx = load i32, ptr %i.q, align 8, !tbaa !17
  %i.by = add i32 %i.bx, 1
  store i32 %i.by, ptr %i.q, align 8, !tbaa !17
  %i.bz = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.ca = load i32, ptr %5, align 8               ; 3 uses
  %i.cb = and i32 %i.ca, 1                        ; 2 uses
  %.not.i.i.i.i.i398 = icmp eq i32 %i.cb, 0       ; 2 uses
  %i.cc = load ptr, ptr %.07.i.i.i74.ptr, align 8
  %i.cd = select i1 %.not.i.i.i.i.i398, ptr %i.cc, ptr %.07.i.i.i74.ptr ; 2 uses
  %i.ce = load i32, ptr %.phi.trans.insert3.i.i71, align 8
  %i.cf = select i1 %.not.i.i.i.i.i398, i32 %i.ce, i32 16 ; 7 uses
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit88
  %i.ch = trunc i64 %i.bw to i32                  ; 2 uses
  %i.ci = lshr i32 %i.ch, 4
  %i.cj = lshr i32 %i.ch, 9
  %i.ck = xor i32 %i.ci, %i.cj
  %i.cl = add i32 %i.cf, -1                       ; 2 uses
  %.02945.i.i.i399 = and i32 %i.cl, %i.ck         ; 2 uses
  %i.cm = zext nneg i32 %.02945.i.i.i399 to i64
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %i.cm ; 3 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !37 ; 2 uses
  %i.cp = icmp eq ptr %i.aq, %i.co
  br i1 %i.cp, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E16FindAndConstructERKS5_.exit, label %.lr.ph.i.i.i400, !prof !181

.lr.ph.i.i.i400:                                  ; preds = %bb.g, %bb.i
  %i.cq = phi ptr [ %i.da, %bb.i ], [ %i.co, %bb.g ] ; 2 uses
  %i.cr = phi ptr [ %i.cz, %bb.i ], [ %i.cn, %bb.g ] ; 2 uses
  %.02948.i.i.i401 = phi i32 [ %.029.i.i.i406, %bb.i ], [ %.02945.i.i.i399, %bb.g ]
  %.02747.i.i.i402 = phi i32 [ %i.cw, %bb.i ], [ 1, %bb.g ] ; 2 uses
  %.03246.i.i.i403 = phi ptr [ %spec.select.i.i.i405, %bb.i ], [ null, %bb.g ] ; 4 uses
  %i.cs = icmp eq ptr %i.cq, inttoptr (i64 -8 to ptr)
  br i1 %i.cs, label %bb.h, label %bb.i, !prof !31

bb.h:                                             ; preds = %.lr.ph.i.i.i400
  %.not.i.i.i408 = icmp eq ptr %.03246.i.i.i403, null
  %i.ct = select i1 %.not.i.i.i408, ptr %i.cr, ptr %.03246.i.i.i403
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit.i

bb.i:                                             ; preds = %.lr.ph.i.i.i400
  %i.cu = icmp eq ptr %i.cq, inttoptr (i64 -16 to ptr)
  %i.cv = icmp eq ptr %.03246.i.i.i403, null
  %or.cond.not.i.i.i404 = select i1 %i.cu, i1 %i.cv, i1 false
  %spec.select.i.i.i405 = select i1 %or.cond.not.i.i.i404, ptr %i.cr, ptr %.03246.i.i.i403
  %i.cw = add i32 %.02747.i.i.i402, 1
  %i.cx = add i32 %.02747.i.i.i402, %.02948.i.i.i401
  %.029.i.i.i406 = and i32 %i.cx, %i.cl           ; 2 uses
  %i.cy = zext i32 %.029.i.i.i406 to i64
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %i.cy ; 3 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !37 ; 2 uses
  %i.db = icmp eq ptr %i.aq, %i.da
  br i1 %i.db, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E16FindAndConstructERKS5_.exit, label %.lr.ph.i.i.i400, !prof !182, !llvm.loop !184

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit.i: ; preds = %bb.h, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit88
  %.sink.i.i.i409 = phi ptr [ %i.ct, %bb.h ], [ null, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit88 ]
  %i.dc = lshr i32 %i.ca, 1                       ; 2 uses
  %i.dd = shl i32 %i.dc, 2
  %i.de = add i32 %i.dd, 4
  %i.df = mul i32 %i.cf, 3
  %.not.i.i5.i = icmp ult i32 %i.de, %i.df
  br i1 %.not.i.i5.i, label %bb.k, label %bb.j, !prof !31

bb.j:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit.i
  %i.dg = shl i32 %i.cf, 1
  br label %bb.l

bb.k:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit.i
  %i.dh = load i32, ptr %i.n, align 4, !tbaa !164
  %.neg.i.i.i = xor i32 %i.dc, -1
  %.neg13.i.i.i = add i32 %i.cf, %.neg.i.i.i
  %i.di = sub i32 %.neg13.i.i.i, %i.dh
  %i.dj = lshr i32 %i.cf, 3
  %.not10.i.i.i = icmp ugt i32 %i.di, %i.dj
  br i1 %.not10.i.i.i, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit, label %bb.l, !prof !31

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sink.i.i6.i = phi i32 [ %i.dg, %bb.j ], [ %i.cf, %bb.k ]
  call void @_ZN4llvh13SmallDenseMapIPKN6hermes10BasicBlockEPS2_Lj16ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(264) %5, i32 noundef %.sink.i.i6.i)
  %11 = load i32, ptr %5, align 8                 ; 4 uses
  %12 = and i32 %11, 1                            ; 4 uses
  %.not.i.i.i.i460 = icmp eq i32 %12, 0           ; 2 uses
  %13 = load ptr, ptr %.07.i.i.i74.ptr, align 8
  %14 = select i1 %.not.i.i.i.i460, ptr %13, ptr %.07.i.i.i74.ptr ; 2 uses
  %15 = load i32, ptr %.phi.trans.insert3.i.i71, align 8
  %16 = select i1 %.not.i.i.i.i460, i32 %15, i32 16 ; 2 uses
  %17 = icmp ne i32 %16, 0
  call void @llvm.assume(i1 %17)
  %i.dk = trunc i64 %i.bw to i32                  ; 2 uses
  %i.dl = lshr i32 %i.dk, 4
  %i.dm = lshr i32 %i.dk, 9
  %i.dn = xor i32 %i.dl, %i.dm
  %i.do = add i32 %16, -1                         ; 2 uses
  %.02945.i.i461 = and i32 %i.do, %i.dn           ; 2 uses
  %i.dp = zext nneg i32 %.02945.i.i461 to i64
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %14, i64 %i.dp ; 3 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !37 ; 2 uses
  %i.ds = icmp eq ptr %i.aq, %i.dr
  br i1 %i.ds, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit, label %.lr.ph.i.i462, !prof !181

.lr.ph.i.i462:                                    ; preds = %bb.l, %bb.n
  %i.dt = phi ptr [ %i.ed, %bb.n ], [ %i.dr, %bb.l ] ; 2 uses
  %i.du = phi ptr [ %i.ec, %bb.n ], [ %i.dq, %bb.l ] ; 2 uses
  %.02948.i.i463 = phi i32 [ %.029.i.i466, %bb.n ], [ %.02945.i.i461, %bb.l ]
  %.02747.i.i464 = phi i32 [ %i.dz, %bb.n ], [ 1, %bb.l ] ; 2 uses
  %.03246.i.i = phi ptr [ %spec.select.i.i465, %bb.n ], [ null, %bb.l ] ; 4 uses
  %i.dv = icmp eq ptr %i.dt, inttoptr (i64 -8 to ptr)
  br i1 %i.dv, label %bb.m, label %bb.n, !prof !31

bb.m:                                             ; preds = %.lr.ph.i.i462
  %.not.i.i469 = icmp eq ptr %.03246.i.i, null
  %i.dw = select i1 %.not.i.i469, ptr %i.du, ptr %.03246.i.i
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit

bb.n:                                             ; preds = %.lr.ph.i.i462
  %i.dx = icmp eq ptr %i.dt, inttoptr (i64 -16 to ptr)
  %i.dy = icmp eq ptr %.03246.i.i, null
  %or.cond.not.i.i = select i1 %i.dx, i1 %i.dy, i1 false
  %spec.select.i.i465 = select i1 %or.cond.not.i.i, ptr %i.du, ptr %.03246.i.i
  %i.dz = add i32 %.02747.i.i464, 1
  %i.ea = add i32 %.02747.i.i464, %.02948.i.i463
  %.029.i.i466 = and i32 %i.ea, %i.do             ; 2 uses
  %i.eb = zext i32 %.029.i.i466 to i64
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %14, i64 %i.eb ; 3 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !37 ; 2 uses
  %i.ee = icmp eq ptr %i.aq, %i.ed
  br i1 %i.ee, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit, label %.lr.ph.i.i462, !prof !182, !llvm.loop !184

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit: ; preds = %bb.n, %bb.m, %bb.l, %bb.k
  %.pre-phi.i.i = phi i32 [ %i.cb, %bb.k ], [ %12, %bb.m ], [ %12, %bb.l ], [ %12, %bb.n ]
  %18 = phi ptr [ %.sink.i.i.i409, %bb.k ], [ %i.dw, %bb.m ], [ %i.dq, %bb.l ], [ %i.ec, %bb.n ] ; 4 uses
  %19 = phi i32 [ %i.ca, %bb.k ], [ %11, %bb.m ], [ %11, %bb.l ], [ %11, %bb.n ]
  %i.ef = and i32 %19, -2
  %i.eg = add i32 %i.ef, 2
  %i.eh = or disjoint i32 %i.eg, %.pre-phi.i.i
  store i32 %i.eh, ptr %5, align 8
  %i.ei = load ptr, ptr %18, align 8, !tbaa !37
  %i.ej = icmp eq ptr %i.ei, inttoptr (i64 -8 to ptr)
  br i1 %i.ej, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E16InsertIntoBucketIRKS5_JEEEPSB_SH_OT_DpOT0_.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit
  %i.ek = load i32, ptr %i.n, align 4, !tbaa !164
  %i.el = add i32 %i.ek, -1
  store i32 %i.el, ptr %i.n, align 4, !tbaa !164
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E16InsertIntoBucketIRKS5_JEEEPSB_SH_OT_DpOT0_.exit.i

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E16InsertIntoBucketIRKS5_JEEEPSB_SH_OT_DpOT0_.exit.i: ; preds = %bb.o, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit
  store ptr %i.aq, ptr %18, align 8, !tbaa !37
  %i.em = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr null, ptr %i.em, align 8, !tbaa !37
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E16FindAndConstructERKS5_.exit

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E16FindAndConstructERKS5_.exit: ; preds = %bb.i, %bb.g, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E16InsertIntoBucketIRKS5_JEEEPSB_SH_OT_DpOT0_.exit.i
  %.0.i = phi ptr [ %18, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E16InsertIntoBucketIRKS5_JEEEPSB_SH_OT_DpOT0_.exit.i ], [ %i.cn, %bb.g ], [ %i.cz, %bb.i ]
  %i.en = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store ptr %i.bz, ptr %i.en, align 8, !tbaa !37
  br label %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E5countES5_.exit

_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E5countES5_.exit: ; preds = %bb.e, %bb.d, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E16FindAndConstructERKS5_.exit
  %i.eo = add nuw nsw i32 %.sroa.4563.0661, 1     ; 2 uses
  %.not602 = icmp eq i32 %i.eo, %i.ap
  br i1 %.not602, label %..loopexit614_crit_edge, label %bb.c, !llvm.loop !185

bb.p:                                             ; preds = %bb.a
  %i.ep = load i32, ptr %i.q, align 8, !tbaa !17
  %i.eq = add i32 %i.ep, -1
  store i32 %i.eq, ptr %i.q, align 8, !tbaa !17
  %i.er = load ptr, ptr %i.b, align 8, !tbaa !37  ; 3 uses
  %i.es = load ptr, ptr %i.j, align 8, !tbaa !11  ; 6 uses
  %i.et = load ptr, ptr %4, align 8, !tbaa !7     ; 3 uses
  %i.eu = icmp eq ptr %i.es, %i.et
  br i1 %i.eu, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.ev = load i32, ptr %i.l, align 4, !tbaa !13  ; 4 uses
  %i.ew = zext i32 %i.ev to i64                   ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.ew, 3
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 %.idx.i.i.i
  %.not18.i.i.i = icmp eq i32 %i.ev, 0
  br i1 %.not18.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i91

.lr.ph.i.i.i91:                                   ; preds = %bb.q, %bb.r
  %.01319.i.i.i = phi ptr [ %i.fa, %bb.r ], [ %i.et, %bb.q ] ; 3 uses
  %i.ey = load ptr, ptr %.01319.i.i.i, align 8, !tbaa !28
  %i.ez = icmp eq ptr %i.ey, %i.er
  br i1 %i.ez, label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i91
  %i.fa = getelementptr inbounds nuw i8, ptr %.01319.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i92 = icmp eq ptr %i.fa, %i.ex
  br i1 %.not.i.i.i92, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i91, !llvm.loop !186

._crit_edge.i.i.i:                                ; preds = %bb.r, %bb.q
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %i.ew
  br label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i

bb.s:                                             ; preds = %bb.p
  %i.fc = call noundef ptr @_ZNK4llvh19SmallPtrSetImplBase13FindBucketForEPKv(ptr noundef nonnull align 8 dereferenceable(28) %4, ptr noundef %i.er) #11 ; 2 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !28
  %i.fe = icmp eq ptr %i.fd, %i.er
  %.pre.i.i = load ptr, ptr %i.j, align 8, !tbaa !11 ; 4 uses
  %.pre4.i.i89 = load ptr, ptr %4, align 8, !tbaa !7 ; 3 uses
  br i1 %i.fe, label %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i, label %bb.t

._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i: ; preds = %bb.s
  %.pre5.i.i = load i32, ptr %i.l, align 4
  br label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i

bb.t:                                             ; preds = %bb.s
  %i.ff = icmp eq ptr %.pre.i.i, %.pre4.i.i89
  %i.fg = load i32, ptr %i.l, align 4             ; 2 uses
  %i.fh = load i32, ptr %i.k, align 8
  %.v.v.i14.i.i.i = select i1 %i.ff, i32 %i.fg, i32 %i.fh
  %.v.i15.i.i.i = zext i32 %.v.v.i14.i.i.i to i64
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %.v.i15.i.i.i
  br label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i

_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i: ; preds = %.lr.ph.i.i.i91, %bb.t, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i, %._crit_edge.i.i.i
  %i.fj = phi ptr [ %i.es, %._crit_edge.i.i.i ], [ %.pre4.i.i89, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i ], [ %.pre4.i.i89, %bb.t ], [ %i.es, %.lr.ph.i.i.i91 ]
  %i.fk = phi i32 [ %i.ev, %._crit_edge.i.i.i ], [ %.pre5.i.i, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i ], [ %i.fg, %bb.t ], [ %i.ev, %.lr.ph.i.i.i91 ]
  %i.fl = phi ptr [ %i.es, %._crit_edge.i.i.i ], [ %.pre.i.i, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i ], [ %.pre.i.i, %bb.t ], [ %i.es, %.lr.ph.i.i.i91 ] ; 2 uses
  %.2.i.i.i = phi ptr [ %i.fb, %._crit_edge.i.i.i ], [ %i.fc, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i ], [ %i.fi, %bb.t ], [ %.01319.i.i.i, %.lr.ph.i.i.i91 ] ; 2 uses
  %i.fm = icmp eq ptr %i.fl, %i.fj
  %i.fn = load i32, ptr %i.k, align 8
  %.v.v.i4.i.i.i = select i1 %i.fm, i32 %i.fk, i32 %i.fn
  %.v.i5.i.i.i = zext i32 %.v.v.i4.i.i.i to i64
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %.v.i5.i.i.i ; 3 uses
  %.not3.i4.i.i6.i.i.i = icmp eq ptr %.2.i.i.i, %i.fo
  br i1 %.not3.i4.i.i6.i.i.i, label %_ZNK4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE5countES4_.exit.thread, label %.lr.ph.i5.i.i7.i.i.i

.lr.ph.i5.i.i7.i.i.i:                             ; preds = %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i, %.critedge2.i7.i.i9.i.i.i
  %.sroa.0.3.i.i.i = phi ptr [ %i.fq, %.critedge2.i7.i.i9.i.i.i ], [ %.2.i.i.i, %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i ] ; 3 uses
  %i.fp = load ptr, ptr %.sroa.0.3.i.i.i, align 8, !tbaa !28
  %switch.i6.i.i8.i.i.i = icmp ugt ptr %i.fp, inttoptr (i64 -3 to ptr)
  br i1 %switch.i6.i.i8.i.i.i, label %.critedge2.i7.i.i9.i.i.i, label %_ZNK4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE5countES4_.exit

.critedge2.i7.i.i9.i.i.i:                         ; preds = %.lr.ph.i5.i.i7.i.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i.i.i, i64 8 ; 2 uses
  %.not.i8.i.i10.i.i.i = icmp eq ptr %i.fq, %i.fo
  br i1 %.not.i8.i.i10.i.i.i, label %_ZNK4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE5countES4_.exit.thread, label %.lr.ph.i5.i.i7.i.i.i, !llvm.loop !187

_ZNK4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE5countES4_.exit: ; preds = %.lr.ph.i5.i.i7.i.i.i
  %.not596 = icmp eq ptr %.sroa.0.3.i.i.i, %i.fo
  br i1 %.not596, label %_ZNK4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE5countES4_.exit.thread, label %.loopexit614, !llvm.loop !180

_ZNK4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE5countES4_.exit.thread: ; preds = %.critedge2.i7.i.i9.i.i.i, %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i, %_ZNK4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE5countES4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  store ptr %i.w, ptr %9, align 8, !tbaa !7
  store ptr %i.w, ptr %i.x, align 8, !tbaa !11
  store i32 2, ptr %i.y, align 8, !tbaa !12
  store i32 0, ptr %i.z, align 4, !tbaa !13
  store i32 0, ptr %i.aa, align 8, !tbaa !14
  %i.fr = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.fs = call noundef ptr @_ZN6hermes10BasicBlock13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %i.fr) #11
  %i.ft = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.fu = call noundef ptr @_ZN6hermes10BasicBlock13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ft) #11 ; 2 uses
  %.not.i.i95 = icmp eq ptr %i.fu, null
  br i1 %.not.i.i95, label %._crit_edge, label %_ZN6hermes8succ_endEPNS_10BasicBlockE.exit99

_ZN6hermes8succ_endEPNS_10BasicBlockE.exit99:     ; preds = %_ZNK4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE5countES4_.exit.thread
  %i.fv = call noundef i32 @_ZNK6hermes14TerminatorInst16getNumSuccessorsEv(ptr noundef nonnull align 8 dereferenceable(132) %i.fu) #11 ; 2 uses
  %.not597657 = icmp eq i32 %i.fv, 0
  br i1 %.not597657, label %._crit_edge, label %.lr.ph659

._crit_edge:                                      ; preds = %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit, %_ZNK4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE5countES4_.exit.thread, %_ZN6hermes8succ_endEPNS_10BasicBlockE.exit99
  %i.fw = load i32, ptr %i.z, align 4, !tbaa !13
  %i.fx = load i32, ptr %i.aa, align 8, !tbaa !14
  %i.fy = icmp eq i32 %i.fw, %i.fx
  br i1 %i.fy, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E11try_emplaceIJS8_EEESt4pairINS_16DenseMapIteratorIS5_S8_SA_SD_Lb0EEEbERKS5_DpOT_.exit, label %bb.aq

.lr.ph659:                                        ; preds = %_ZN6hermes8succ_endEPNS_10BasicBlockE.exit99, %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit
  %.sroa.4553.0658 = phi i32 [ %i.kw, %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit ], [ 0, %_ZN6hermes8succ_endEPNS_10BasicBlockE.exit99 ] ; 2 uses
  %i.fz = call noundef ptr @_ZNK6hermes14TerminatorInst12getSuccessorEj(ptr noundef nonnull align 8 dereferenceable(132) %i.fs, i32 noundef %.sroa.4553.0658) #11 ; 10 uses
  %i.ga = load ptr, ptr %i.j, align 8, !tbaa !11  ; 6 uses
  %i.gb = load ptr, ptr %4, align 8, !tbaa !7     ; 3 uses
  %i.gc = icmp eq ptr %i.ga, %i.gb
  br i1 %i.gc, label %bb.u, label %bb.w

bb.u:                                             ; preds = %.lr.ph659
  %i.gd = load i32, ptr %i.l, align 4, !tbaa !13  ; 4 uses
  %i.ge = zext i32 %i.gd to i64                   ; 2 uses
  %.idx.i.i.i120 = shl nuw nsw i64 %i.ge, 3
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gb, i64 %.idx.i.i.i120
  %.not18.i.i.i121 = icmp eq i32 %i.gd, 0
  br i1 %.not18.i.i.i121, label %._crit_edge.i.i.i125, label %.lr.ph.i.i.i122

.lr.ph.i.i.i122:                                  ; preds = %bb.u, %bb.v
  %.01319.i.i.i123 = phi ptr [ %i.gi, %bb.v ], [ %i.gb, %bb.u ] ; 3 uses
  %i.gg = load ptr, ptr %.01319.i.i.i123, align 8, !tbaa !28
  %i.gh = icmp eq ptr %i.gg, %i.fz
  br i1 %i.gh, label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i104, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i.i122
  %i.gi = getelementptr inbounds nuw i8, ptr %.01319.i.i.i123, i64 8 ; 2 uses
  %.not.i.i.i124 = icmp eq ptr %i.gi, %i.gf
  br i1 %.not.i.i.i124, label %._crit_edge.i.i.i125, label %.lr.ph.i.i.i122, !llvm.loop !186

._crit_edge.i.i.i125:                             ; preds = %bb.v, %bb.u
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %i.ge
  br label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i104

bb.w:                                             ; preds = %.lr.ph659
  %i.gk = call noundef ptr @_ZNK4llvh19SmallPtrSetImplBase13FindBucketForEPKv(ptr noundef nonnull align 8 dereferenceable(28) %4, ptr noundef %i.fz) #11 ; 2 uses
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !28
  %i.gm = icmp eq ptr %i.gl, %i.fz
  %.pre.i.i100 = load ptr, ptr %i.j, align 8, !tbaa !11 ; 4 uses
  %.pre4.i.i101 = load ptr, ptr %4, align 8, !tbaa !7 ; 3 uses
  br i1 %i.gm, label %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i117, label %bb.x

._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i117: ; preds = %bb.w
  %.pre5.i.i119 = load i32, ptr %i.l, align 4
  br label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i104

bb.x:                                             ; preds = %bb.w
  %i.gn = icmp eq ptr %.pre.i.i100, %.pre4.i.i101
  %i.go = load i32, ptr %i.l, align 4             ; 2 uses
  %i.gp = load i32, ptr %i.k, align 8
  %.v.v.i14.i.i.i102 = select i1 %i.gn, i32 %i.go, i32 %i.gp
  %.v.i15.i.i.i103 = zext i32 %.v.v.i14.i.i.i102 to i64
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i100, i64 %.v.i15.i.i.i103
  br label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i104

_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i104: ; preds = %.lr.ph.i.i.i122, %bb.x, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i117, %._crit_edge.i.i.i125
  %i.gr = phi ptr [ %i.ga, %._crit_edge.i.i.i125 ], [ %.pre4.i.i101, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i117 ], [ %.pre4.i.i101, %bb.x ], [ %i.ga, %.lr.ph.i.i.i122 ]
  %i.gs = phi i32 [ %i.gd, %._crit_edge.i.i.i125 ], [ %.pre5.i.i119, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i117 ], [ %i.go, %bb.x ], [ %i.gd, %.lr.ph.i.i.i122 ]
  %i.gt = phi ptr [ %i.ga, %._crit_edge.i.i.i125 ], [ %.pre.i.i100, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i117 ], [ %.pre.i.i100, %bb.x ], [ %i.ga, %.lr.ph.i.i.i122 ] ; 2 uses
  %.2.i.i.i105 = phi ptr [ %i.gj, %._crit_edge.i.i.i125 ], [ %i.gk, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i117 ], [ %i.gq, %bb.x ], [ %.01319.i.i.i123, %.lr.ph.i.i.i122 ] ; 2 uses
  %i.gu = icmp eq ptr %i.gt, %i.gr
  %i.gv = load i32, ptr %i.k, align 8
  %.v.v.i4.i.i.i106 = select i1 %i.gu, i32 %i.gs, i32 %i.gv
  %.v.i5.i.i.i107 = zext i32 %.v.v.i4.i.i.i106 to i64
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %.v.i5.i.i.i107 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN6hermes12LoopAnalysisC2EPNS_8FunctionERKNS_13DominanceInfoE:.lr.ph664
  %i.nx = phi i32 [ %.pre726.a, %._crit_edge673.loopexit ], [ %.pre, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E5beginEv.exit ] ; 4 uses
  %i.ny = icmp ult i32 %i.nx, 2
  br i1 %i.ny, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %._crit_edge673
  %.not.i.i.i.i.i.i240 = icmp eq i32 %i.nx, 0     ; 2 uses
  %i.nz = load ptr, ptr %.07.i.i.i82.ptr, align 8 ; 2 uses
  %i.oa = select i1 %.not.i.i.i.i.i.i240, ptr %i.nz, ptr %.07.i.i.i82.ptr
  %i.ob = load i32, ptr %.phi.trans.insert3.i.i79, align 8 ; 2 uses
  %i.oc = select i1 %.not.i.i.i.i.i.i240, i32 %i.ob, i32 16
  %i.od = zext i32 %i.oc to i64
  %i.oe = getelementptr inbounds nuw [56 x i8], ptr %i.oa, i64 %i.od ; 2 uses
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E5beginEv.exit241

bb.bd:                                            ; preds = %._crit_edge673
  %i.of = and i32 %i.nx, 1                        ; 4 uses
  %.not.i.i.i2.i228 = icmp eq i32 %i.of, 0        ; 2 uses
  %i.og = load ptr, ptr %.07.i.i.i82.ptr, align 8 ; 4 uses
  %i.oh = select i1 %.not.i.i.i2.i228, ptr %i.og, ptr %.07.i.i.i82.ptr ; 3 uses
  %i.oi = load i32, ptr %.phi.trans.insert3.i.i79, align 8 ; 4 uses
  %i.oj = select i1 %.not.i.i.i2.i228, i32 %i.oi, i32 16 ; 2 uses
  %i.ok = zext i32 %i.oj to i64
  %.idx.i229 = mul nuw nsw i64 %i.ok, 56
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oh, i64 %.idx.i229 ; 4 uses
  %.not5.i5.i10.i4.i230 = icmp eq i32 %i.oj, 0
  br i1 %.not5.i5.i10.i4.i230, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E5beginEv.exit241, label %.lr.ph.i6.i12.i5.i231

.lr.ph.i6.i12.i5.i231:                            ; preds = %bb.bd, %.critedge2.i8.i14.i8.i234
  %.sroa.0.3.i6.i232 = phi ptr [ %i.on, %.critedge2.i8.i14.i8.i234 ], [ %i.oh, %bb.bd ] ; 3 uses
  %i.om = load ptr, ptr %.sroa.0.3.i6.i232, align 8, !tbaa !37
  %magicptr.i7.i13.i7.i233 = ptrtoint ptr %i.om to i64
  switch i64 %magicptr.i7.i13.i7.i233, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E5beginEv.exit241 [
    i64 -8, label %.critedge2.i8.i14.i8.i234
    i64 -16, label %.critedge2.i8.i14.i8.i234
  ]

.critedge2.i8.i14.i8.i234:                        ; preds = %.lr.ph.i6.i12.i5.i231, %.lr.ph.i6.i12.i5.i231
  %i.on = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i6.i232, i64 56 ; 3 uses
  %.not.i9.i15.i9.i235 = icmp eq ptr %i.on, %i.ol
  br i1 %.not.i9.i15.i9.i235, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E5beginEv.exit241, label %.lr.ph.i6.i12.i5.i231, !llvm.loop !202

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E5beginEv.exit241: ; preds = %.lr.ph.i6.i12.i5.i231, %.critedge2.i8.i14.i8.i234, %bb.bc, %bb.bd
  %.pre-phi729 = phi i32 [ %i.of, %bb.bd ], [ %i.nx, %bb.bc ], [ %i.of, %.critedge2.i8.i14.i8.i234 ], [ %i.of, %.lr.ph.i6.i12.i5.i231 ]
  %i.oo = phi i32 [ %i.oi, %bb.bd ], [ %i.ob, %bb.bc ], [ %i.oi, %.critedge2.i8.i14.i8.i234 ], [ %i.oi, %.lr.ph.i6.i12.i5.i231 ]
  %i.op = phi ptr [ %i.og, %bb.bd ], [ %i.nz, %bb.bc ], [ %i.og, %.critedge2.i8.i14.i8.i234 ], [ %i.og, %.lr.ph.i6.i12.i5.i231 ]
  %.pn16.i236 = phi ptr [ %i.oh, %bb.bd ], [ %i.oe, %bb.bc ], [ %.sroa.0.3.i6.i232, %.lr.ph.i6.i12.i5.i231 ], [ %i.on, %.critedge2.i8.i14.i8.i234 ] ; 2 uses
  %.pn14.i237 = phi ptr [ %i.ol, %bb.bd ], [ %i.oe, %bb.bc ], [ %i.ol, %.critedge2.i8.i14.i8.i234 ], [ %i.ol, %.lr.ph.i6.i12.i5.i231 ] ; 2 uses
  %.not.i.i.i.i.i242 = icmp eq i32 %.pre-phi729, 0 ; 2 uses
  %i.oq = select i1 %.not.i.i.i.i.i242, ptr %i.op, ptr %.07.i.i.i82.ptr
  %i.or = select i1 %.not.i.i.i.i.i242, i32 %i.oo, i32 16
  %i.os = zext i32 %i.or to i64
  %i.ot = getelementptr inbounds nuw [56 x i8], ptr %i.oq, i64 %i.os ; 2 uses
  %.not604680 = icmp eq ptr %.pn16.i236, %i.ot
  br i1 %.not604680, label %._crit_edge683, label %.lr.ph682

.lr.ph672:                                        ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E5beginEv.exit, %_ZN4llvh16DenseMapIteratorIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS2_Lj2EEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EELb0EEppEv.exit
  %.sroa.0518.0671 = phi ptr [ %.sroa.0518.2, %_ZN4llvh16DenseMapIteratorIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS2_Lj2EEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EELb0EEppEv.exit ], [ %.pn16.i, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E5beginEv.exit ] ; 6 uses
  %i.ou = load ptr, ptr %.sroa.0518.0671, align 8, !tbaa !203
  %i.ov = getelementptr inbounds nuw i8, ptr %.sroa.0518.0671, i64 8
  %i.ow = getelementptr inbounds nuw i8, ptr %.sroa.0518.0671, i64 16
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !11 ; 5 uses
  %i.oy = load ptr, ptr %i.ov, align 8, !tbaa !7
  %i.oz = icmp eq ptr %i.ox, %i.oy
  %i.pa = getelementptr inbounds nuw i8, ptr %.sroa.0518.0671, i64 28
  %i.pb = load i32, ptr %i.pa, align 4
  %i.pc = getelementptr inbounds nuw i8, ptr %.sroa.0518.0671, i64 24
  %i.pd = load i32, ptr %i.pc, align 8
  %.v.v.i4.i2.i245 = select i1 %i.oz, i32 %i.pb, i32 %i.pd ; 2 uses
  %.v.i5.i3.i246 = zext i32 %.v.v.i4.i2.i245 to i64 ; 2 uses
  %.idx.i247 = shl nuw nsw i64 %.v.i5.i3.i246, 3
  %i.pe = getelementptr i8, ptr %i.ox, i64 %.idx.i247 ; 4 uses
  %.not3.i4.i.i6.i4.i248 = icmp eq i32 %.v.v.i4.i2.i245, 0
  br i1 %.not3.i4.i.i6.i4.i248, label %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5beginEv.exit258, label %.lr.ph.i5.i.i7.i5.i249

.lr.ph.i5.i.i7.i5.i249:                           ; preds = %.lr.ph672, %.critedge2.i7.i.i9.i11.i256
  %.sroa.0.3.i6.i250 = phi ptr [ %i.pg, %.critedge2.i7.i.i9.i11.i256 ], [ %i.ox, %.lr.ph672 ] ; 3 uses
  %i.pf = load ptr, ptr %.sroa.0.3.i6.i250, align 8, !tbaa !28
  %switch.i6.i.i8.i7.i251 = icmp ugt ptr %i.pf, inttoptr (i64 -3 to ptr)
  br i1 %switch.i6.i.i8.i7.i251, label %.critedge2.i7.i.i9.i11.i256, label %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5beginEv.exit258

.critedge2.i7.i.i9.i11.i256:                      ; preds = %.lr.ph.i5.i.i7.i5.i249
  %i.pg = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i6.i250, i64 8 ; 2 uses
  %.not.i8.i.i10.i12.i257 = icmp eq ptr %i.pg, %i.pe
  br i1 %.not.i8.i.i10.i12.i257, label %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5beginEv.exit258, label %.lr.ph.i5.i.i7.i5.i249, !llvm.loop !187

_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5beginEv.exit258: ; preds = %.lr.ph.i5.i.i7.i5.i249, %.critedge2.i7.i.i9.i11.i256, %.lr.ph672
  %.sroa.0.4.i8.i253 = phi ptr [ %i.ox, %.lr.ph672 ], [ %.sroa.0.3.i6.i250, %.lr.ph.i5.i.i7.i5.i249 ], [ %i.pe, %.critedge2.i7.i.i9.i11.i256 ] ; 2 uses
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr %i.ox, i64 %.v.i5.i3.i246 ; 2 uses
  %.not607666 = icmp eq ptr %.sroa.0.4.i8.i253, %i.ph
  br i1 %.not607666, label %._crit_edge669, label %.lr.ph668

._crit_edge669:                                   ; preds = %_ZN4llvh19SmallPtrSetIteratorIPN6hermes10BasicBlockEEppEv.exit331, %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5beginEv.exit258
  %i.pi = getelementptr inbounds nuw i8, ptr %.sroa.0518.0671, i64 56 ; 3 uses
  %.not5.i3.i = icmp eq ptr %i.pi, %.pn14.i
  br i1 %.not5.i3.i, label %_ZN4llvh16DenseMapIteratorIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS2_Lj2EEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EELb0EEppEv.exit, label %.lr.ph.i4.i263

.lr.ph.i4.i263:                                   ; preds = %._crit_edge669, %.critedge2.i6.i264
  %.sroa.0518.1 = phi ptr [ %i.pk, %.critedge2.i6.i264 ], [ %i.pi, %._crit_edge669 ] ; 3 uses
  %i.pj = load ptr, ptr %.sroa.0518.1, align 8, !tbaa !37
  %magicptr.i5.i = ptrtoint ptr %i.pj to i64
  switch i64 %magicptr.i5.i, label %_ZN4llvh16DenseMapIteratorIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS2_Lj2EEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EELb0EEppEv.exit [
    i64 -8, label %.critedge2.i6.i264
    i64 -16, label %.critedge2.i6.i264
  ]

.critedge2.i6.i264:                               ; preds = %.lr.ph.i4.i263, %.lr.ph.i4.i263
  %i.pk = getelementptr inbounds nuw i8, ptr %.sroa.0518.1, i64 56 ; 3 uses
  %.not.i7.i265 = icmp eq ptr %i.pk, %.pn14.i
  br i1 %.not.i7.i265, label %_ZN4llvh16DenseMapIteratorIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS2_Lj2EEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EELb0EEppEv.exit, label %.lr.ph.i4.i263, !llvm.loop !202

_ZN4llvh16DenseMapIteratorIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS2_Lj2EEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EELb0EEppEv.exit: ; preds = %.lr.ph.i4.i263, %.critedge2.i6.i264, %._crit_edge669
  %.sroa.0518.2 = phi ptr [ %i.pi, %._crit_edge669 ], [ %i.pk, %.critedge2.i6.i264 ], [ %.sroa.0518.1, %.lr.ph.i4.i263 ] ; 2 uses
  %.not603 = icmp eq ptr %.sroa.0518.2, %i.nw
  br i1 %.not603, label %._crit_edge673.loopexit, label %.lr.ph672

.lr.ph668:                                        ; preds = %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5beginEv.exit258, %_ZN4llvh19SmallPtrSetIteratorIPN6hermes10BasicBlockEEppEv.exit331
  %.sroa.0512.0667 = phi ptr [ %.sroa.0512.2, %_ZN4llvh19SmallPtrSetIteratorIPN6hermes10BasicBlockEEppEv.exit331 ], [ %.sroa.0.4.i8.i253, %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5beginEv.exit258 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.pl = load ptr, ptr %.sroa.0512.0667, align 8, !tbaa !28 ; 4 uses
  store ptr %i.pl, ptr %i.c, align 8, !tbaa !37
  %i.pm = load ptr, ptr %i.mx, align 8, !tbaa !11 ; 6 uses
  %i.pn = load ptr, ptr %10, align 8, !tbaa !7    ; 3 uses
  %i.po = icmp eq ptr %i.pm, %i.pn
  br i1 %i.po, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %.lr.ph668
  %i.pp = load i32, ptr %i.mz, align 4, !tbaa !13 ; 4 uses
  %i.pq = zext i32 %i.pp to i64                   ; 2 uses
  %.idx.i.i.i286 = shl nuw nsw i64 %i.pq, 3
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pn, i64 %.idx.i.i.i286
  %.not18.i.i.i287 = icmp eq i32 %i.pp, 0
  br i1 %.not18.i.i.i287, label %._crit_edge.i.i.i291, label %.lr.ph.i.i.i288

.lr.ph.i.i.i288:                                  ; preds = %bb.be, %bb.bf
  %.01319.i.i.i289 = phi ptr [ %i.pu, %bb.bf ], [ %i.pn, %bb.be ] ; 3 uses
  %i.ps = load ptr, ptr %.01319.i.i.i289, align 8, !tbaa !28
  %i.pt = icmp eq ptr %i.ps, %i.pl
  br i1 %i.pt, label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i270, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph.i.i.i288
  %i.pu = getelementptr inbounds nuw i8, ptr %.01319.i.i.i289, i64 8 ; 2 uses
  %.not.i.i.i290 = icmp eq ptr %i.pu, %i.pr
  br i1 %.not.i.i.i290, label %._crit_edge.i.i.i291, label %.lr.ph.i.i.i288, !llvm.loop !186

._crit_edge.i.i.i291:                             ; preds = %bb.bf, %bb.be
  %i.pv = getelementptr inbounds nuw [8 x i8], ptr %i.pm, i64 %i.pq
  br label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i270

bb.bg:                                            ; preds = %.lr.ph668
  %i.pw = call noundef ptr @_ZNK4llvh19SmallPtrSetImplBase13FindBucketForEPKv(ptr noundef nonnull align 8 dereferenceable(28) %10, ptr noundef %i.pl) #11 ; 2 uses
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !28
  %i.py = icmp eq ptr %i.px, %i.pl
  %.pre.i.i266 = load ptr, ptr %i.mx, align 8, !tbaa !11 ; 4 uses
  %.pre4.i.i267 = load ptr, ptr %10, align 8, !tbaa !7 ; 3 uses
  br i1 %i.py, label %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i283, label %bb.bh

._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i283: ; preds = %bb.bg
  %.pre5.i.i285 = load i32, ptr %i.mz, align 4
  br label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i270

bb.bh:                                            ; preds = %bb.bg
  %i.pz = icmp eq ptr %.pre.i.i266, %.pre4.i.i267
  %i.qa = load i32, ptr %i.mz, align 4            ; 2 uses
  %i.qb = load i32, ptr %i.my, align 8
  %.v.v.i14.i.i.i268 = select i1 %i.pz, i32 %i.qa, i32 %i.qb
  %.v.i15.i.i.i269 = zext i32 %.v.v.i14.i.i.i268 to i64
  %i.qc = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i266, i64 %.v.i15.i.i.i269
  br label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i270

_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i270: ; preds = %.lr.ph.i.i.i288, %bb.bh, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i283, %._crit_edge.i.i.i291
  %i.qd = phi ptr [ %i.pm, %._crit_edge.i.i.i291 ], [ %.pre4.i.i267, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i283 ], [ %.pre4.i.i267, %bb.bh ], [ %i.pm, %.lr.ph.i.i.i288 ]
  %i.qe = phi i32 [ %i.pp, %._crit_edge.i.i.i291 ], [ %.pre5.i.i285, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i283 ], [ %i.qa, %bb.bh ], [ %i.pp, %.lr.ph.i.i.i288 ]
  %i.qf = phi ptr [ %i.pm, %._crit_edge.i.i.i291 ], [ %.pre.i.i266, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i283 ], [ %.pre.i.i266, %bb.bh ], [ %i.pm, %.lr.ph.i.i.i288 ] ; 2 uses
  %.2.i.i.i271 = phi ptr [ %i.pv, %._crit_edge.i.i.i291 ], [ %i.pw, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i283 ], [ %i.qc, %bb.bh ], [ %.01319.i.i.i289, %.lr.ph.i.i.i288 ] ; 2 uses
  %i.qg = icmp eq ptr %i.qf, %i.qd
  %i.qh = load i32, ptr %i.my, align 8
  %.v.v.i4.i.i.i272 = select i1 %i.qg, i32 %i.qe, i32 %i.qh
  %.v.i5.i.i.i273 = zext i32 %.v.v.i4.i.i.i272 to i64
  %i.qi = getelementptr inbounds nuw [8 x i8], ptr %i.qf, i64 %.v.i5.i.i.i273 ; 3 uses
  %.not3.i4.i.i6.i.i.i274 = icmp eq ptr %.2.i.i.i271, %i.qi
  br i1 %.not3.i4.i.i6.i.i.i274, label %_ZNK4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE5countES4_.exit292.thread, label %.lr.ph.i5.i.i7.i.i.i275

.lr.ph.i5.i.i7.i.i.i275:                          ; preds = %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i270, %.critedge2.i7.i.i9.i.i.i281
  %.sroa.0.3.i.i.i276 = phi ptr [ %i.qk, %.critedge2.i7.i.i9.i.i.i281 ], [ %.2.i.i.i271, %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i270 ] ; 3 uses
  %i.qj = load ptr, ptr %.sroa.0.3.i.i.i276, align 8, !tbaa !28
  %switch.i6.i.i8.i.i.i277 = icmp ugt ptr %i.qj, inttoptr (i64 -3 to ptr)
  br i1 %switch.i6.i.i8.i.i.i277, label %.critedge2.i7.i.i9.i.i.i281, label %_ZNK4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE5countES4_.exit292

.critedge2.i7.i.i9.i.i.i281:                      ; preds = %.lr.ph.i5.i.i7.i.i.i275
  %i.qk = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i.i.i276, i64 8 ; 2 uses
  %.not.i8.i.i10.i.i.i282 = icmp eq ptr %i.qk, %i.qi
  br i1 %.not.i8.i.i10.i.i.i282, label %_ZNK4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE5countES4_.exit292.thread, label %.lr.ph.i5.i.i7.i.i.i275, !llvm.loop !187

_ZNK4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE5countES4_.exit292: ; preds = %.lr.ph.i5.i.i7.i.i.i275
  %.not608 = icmp eq ptr %.sroa.0.3.i.i.i276, %i.qi
  br i1 %.not608, label %_ZNK4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE5countES4_.exit292.thread, label %_ZN4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE6insertES4_.exit318

_ZNK4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE5countES4_.exit292.thread: ; preds = %.critedge2.i7.i.i9.i.i.i281, %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i270, %_ZNK4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE5countES4_.exit292
  %i.ql = load ptr, ptr %i.c, align 8, !tbaa !37
  %i.qm = call noundef zeroext i1 @_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE9dominatesEPKS2_S5_(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef %i.ql, ptr noundef %i.ou) #11
  %i.qn = load ptr, ptr %i.c, align 8, !tbaa !37  ; 13 uses
  br i1 %i.qm, label %bb.bo, label %bb.bi

bb.bi:                                            ; preds = %_ZNK4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE5countES4_.exit292.thread
  %i.qo = load ptr, ptr %i.mx, align 8, !tbaa !11, !noalias !207
  %i.qp = load ptr, ptr %10, align 8, !tbaa !7, !noalias !207 ; 3 uses
  %i.qq = icmp eq ptr %i.qo, %i.qp
  br i1 %i.qq, label %bb.bj, label %bb.bn

bb.bj:                                            ; preds = %bb.bi
  %i.qr = load i32, ptr %i.mz, align 4, !tbaa !13, !noalias !207 ; 4 uses
  %i.qs = zext i32 %i.qr to i64
  %.idx.i.i307 = shl nuw nsw i64 %i.qs, 3
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qp, i64 %.idx.i.i307 ; 2 uses
  %.not63.i.i308 = icmp eq i32 %i.qr, 0
  br i1 %.not63.i.i308, label %.critedge.thread.i.i317, label %.lr.ph.i.i309

.lr.ph.i.i309:                                    ; preds = %bb.bj, %bb.bk
  %.065.i.i310 = phi ptr [ %spec.select.i.i313, %bb.bk ], [ null, %bb.bj ]
  %.04964.i.i311 = phi ptr [ %i.qw, %bb.bk ], [ %i.qp, %bb.bj ] ; 3 uses
  %i.qu = load ptr, ptr %.04964.i.i311, align 8, !tbaa !28, !noalias !207 ; 2 uses
  %.not27.i.i312 = icmp eq ptr %i.qu, %i.qn
  br i1 %.not27.i.i312, label %_ZN4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE6insertES4_.exit318, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph.i.i309
  %i.qv = icmp eq ptr %i.qu, inttoptr (i64 -2 to ptr)
  %spec.select.i.i313 = select i1 %i.qv, ptr %.04964.i.i311, ptr %.065.i.i310 ; 3 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %.04964.i.i311, i64 8 ; 2 uses
  %.not.i.i314 = icmp eq ptr %i.qw, %i.qt
  br i1 %.not.i.i314, label %.critedge.i.i315, label %.lr.ph.i.i309, !llvm.loop !29

.critedge.i.i315:                                 ; preds = %bb.bk
  %.not28.i.i316 = icmp eq ptr %spec.select.i.i313, null
  br i1 %.not28.i.i316, label %.critedge.thread.i.i317, label %bb.bl

bb.bl:                                            ; preds = %.critedge.i.i315
  store ptr %i.qn, ptr %spec.select.i.i313, align 8, !tbaa !28, !noalias !207
  %i.qx = load i32, ptr %i.na, align 8, !tbaa !14, !noalias !207
  %i.qy = add i32 %i.qx, -1
  store i32 %i.qy, ptr %i.na, align 8, !tbaa !14, !noalias !207
  br label %_ZN4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE6insertES4_.exit318

.critedge.thread.i.i317:                          ; preds = %.critedge.i.i315, %bb.bj
  %i.qz = load i32, ptr %i.my, align 8, !tbaa !12, !noalias !207
  %i.ra = icmp ult i32 %i.qr, %i.qz
  br i1 %i.ra, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %.critedge.thread.i.i317
  %i.rb = add nuw i32 %i.qr, 1
  store i32 %i.rb, ptr %i.mz, align 4, !tbaa !13, !noalias !207
  store ptr %i.qn, ptr %i.qt, align 8, !tbaa !28, !noalias !207
  br label %_ZN4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE6insertES4_.exit318

bb.bn:                                            ; preds = %.critedge.thread.i.i317, %bb.bi
  %i.rc = call { ptr, i8 } @_ZN4llvh19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(28) %10, ptr noundef %i.qn) #11, !noalias !207 ; 0 uses
  br label %_ZN4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE6insertES4_.exit318

bb.bo:                                            ; preds = %_ZNK4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE5countES4_.exit292.thread
  %i.rd = load i32, ptr %i.f, align 8
  %i.re = and i32 %i.rd, 1
  %.not.i.i.i.i319 = icmp eq i32 %i.re, 0         ; 2 uses
  %i.rf = load ptr, ptr %.07.i.i.i59.ptr, align 8
  %i.rg = select i1 %.not.i.i.i.i319, ptr %i.rf, ptr %.07.i.i.i59.ptr ; 2 uses
  %i.rh = load i32, ptr %.phi.trans.insert3.i.i56, align 8
  %i.ri = select i1 %.not.i.i.i.i319, i32 %i.rh, i32 16 ; 2 uses
  %i.rj = icmp eq i32 %i.ri, 0
  br i1 %i.rj, label %.loopexit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.rk = ptrtoint ptr %i.qn to i64
  %i.rl = trunc i64 %i.rk to i32                  ; 2 uses
  %i.rm = lshr i32 %i.rl, 4
  %i.rn = lshr i32 %i.rl, 9
  %i.ro = xor i32 %i.rm, %i.rn
  %i.rp = add i32 %i.ri, -1                       ; 2 uses
  %.02945.i.i320 = and i32 %i.rp, %i.ro           ; 2 uses
  %i.rq = zext nneg i32 %.02945.i.i320 to i64
  %i.rr = getelementptr inbounds nuw [16 x i8], ptr %i.rg, i64 %i.rq
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !37 ; 2 uses
  %i.rt = icmp eq ptr %i.qn, %i.rs
  br i1 %i.rt, label %_ZN4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE6insertES4_.exit318, label %.lr.ph.i.i321, !prof !181

.lr.ph.i.i321:                                    ; preds = %bb.bp, %bb.bq
  %i.ru = phi ptr [ %i.sa, %bb.bq ], [ %i.rs, %bb.bp ]
  %.02948.i.i322 = phi i32 [ %.029.i.i324, %bb.bq ], [ %.02945.i.i320, %bb.bp ]
  %.02747.i.i323 = phi i32 [ %i.rw, %bb.bq ], [ 1, %bb.bp ] ; 2 uses
  %i.rv = icmp eq ptr %i.ru, inttoptr (i64 -8 to ptr)
  br i1 %i.rv, label %.loopexit, label %bb.bq, !prof !31

bb.bq:                                            ; preds = %.lr.ph.i.i321
  %i.rw = add i32 %.02747.i.i323, 1
  %i.rx = add i32 %.02747.i.i323, %.02948.i.i322
  %.029.i.i324 = and i32 %i.rx, %i.rp             ; 2 uses
  %i.ry = zext i32 %.029.i.i324 to i64
  %i.rz = getelementptr inbounds nuw [16 x i8], ptr %i.rg, i64 %i.ry
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !37 ; 2 uses
  %i.sb = icmp eq ptr %i.qn, %i.sa
  br i1 %i.sb, label %_ZN4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE6insertES4_.exit318, label %.lr.ph.i.i321, !prof !182, !llvm.loop !184

.loopexit:                                        ; preds = %.lr.ph.i.i321, %bb.bo
  %i.sc = load i32, ptr %5, align 8               ; 3 uses
  %i.sd = and i32 %i.sc, 1                        ; 2 uses
  %.not.i.i.i.i.i411 = icmp eq i32 %i.sd, 0       ; 2 uses
  %i.se = load ptr, ptr %.07.i.i.i74.ptr, align 8
  %i.sf = select i1 %.not.i.i.i.i.i411, ptr %i.se, ptr %.07.i.i.i74.ptr ; 2 uses
  %i.sg = load i32, ptr %.phi.trans.insert3.i.i71, align 8
  %i.sh = select i1 %.not.i.i.i.i.i411, i32 %i.sg, i32 16 ; 7 uses
  %i.si = icmp eq i32 %i.sh, 0
  br i1 %i.si, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit.i423, label %bb.br

bb.br:                                            ; preds = %.loopexit
  %i.sj = ptrtoint ptr %i.qn to i64
  %i.sk = trunc i64 %i.sj to i32                  ; 2 uses
  %i.sl = lshr i32 %i.sk, 4
  %i.sm = lshr i32 %i.sk, 9
  %i.sn = xor i32 %i.sl, %i.sm
  %i.so = add i32 %i.sh, -1                       ; 2 uses
  %.02945.i.i.i412 = and i32 %i.so, %i.sn         ; 2 uses
  %i.sp = zext nneg i32 %.02945.i.i.i412 to i64
  %i.sq = getelementptr inbounds nuw [16 x i8], ptr %i.sf, i64 %i.sp ; 3 uses
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !37 ; 2 uses
  %i.ss = icmp eq ptr %i.qn, %i.sr
  br i1 %i.ss, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E16FindAndConstructERKS5_.exit436, label %.lr.ph.i.i.i413, !prof !181

.lr.ph.i.i.i413:                                  ; preds = %bb.br, %bb.bt
  %i.st = phi ptr [ %i.td, %bb.bt ], [ %i.sr, %bb.br ] ; 2 uses
  %i.su = phi ptr [ %i.tc, %bb.bt ], [ %i.sq, %bb.br ] ; 2 uses
  %.02948.i.i.i414 = phi i32 [ %.029.i.i.i419, %bb.bt ], [ %.02945.i.i.i412, %bb.br ]
  %.02747.i.i.i415 = phi i32 [ %i.sz, %bb.bt ], [ 1, %bb.br ] ; 2 uses
  %.03246.i.i.i416 = phi ptr [ %spec.select.i.i.i418, %bb.bt ], [ null, %bb.br ] ; 4 uses
  %i.sv = icmp eq ptr %i.st, inttoptr (i64 -8 to ptr)
  br i1 %i.sv, label %bb.bs, label %bb.bt, !prof !31

bb.bs:                                            ; preds = %.lr.ph.i.i.i413
  %.not.i.i.i422 = icmp eq ptr %.03246.i.i.i416, null
  %i.sw = select i1 %.not.i.i.i422, ptr %i.su, ptr %.03246.i.i.i416
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit.i423

bb.bt:                                            ; preds = %.lr.ph.i.i.i413
  %i.sx = icmp eq ptr %i.st, inttoptr (i64 -16 to ptr)
  %i.sy = icmp eq ptr %.03246.i.i.i416, null
  %or.cond.not.i.i.i417 = select i1 %i.sx, i1 %i.sy, i1 false
  %spec.select.i.i.i418 = select i1 %or.cond.not.i.i.i417, ptr %i.su, ptr %.03246.i.i.i416
  %i.sz = add i32 %.02747.i.i.i415, 1
  %i.ta = add i32 %.02747.i.i.i415, %.02948.i.i.i414
  %.029.i.i.i419 = and i32 %i.ta, %i.so           ; 2 uses
  %i.tb = zext i32 %.029.i.i.i419 to i64
  %i.tc = getelementptr inbounds nuw [16 x i8], ptr %i.sf, i64 %i.tb ; 3 uses
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !37 ; 2 uses
  %i.te = icmp eq ptr %i.qn, %i.td
  br i1 %i.te, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E16FindAndConstructERKS5_.exit436, label %.lr.ph.i.i.i413, !prof !182, !llvm.loop !184

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit.i423: ; preds = %bb.bs, %.loopexit
  %.sink.i.i.i424 = phi ptr [ %i.sw, %bb.bs ], [ null, %.loopexit ]
  %i.tf = lshr i32 %i.sc, 1                       ; 2 uses
  %i.tg = shl i32 %i.tf, 2
  %i.th = add i32 %i.tg, 4
  %i.ti = mul i32 %i.sh, 3
  %.not.i.i5.i425 = icmp ult i32 %i.th, %i.ti
  br i1 %.not.i.i5.i425, label %bb.bv, label %bb.bu, !prof !31

bb.bu:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit.i423
  %i.tj = shl i32 %i.sh, 1
  br label %bb.bw

bb.bv:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit.i423
  %i.tk = load i32, ptr %i.n, align 4, !tbaa !164
  %.neg.i.i.i433 = xor i32 %i.tf, -1
  %.neg13.i.i.i434 = add i32 %i.sh, %.neg.i.i.i433
  %i.tl = sub i32 %.neg13.i.i.i434, %i.tk
  %i.tm = lshr i32 %i.sh, 3
  %.not10.i.i.i435 = icmp ugt i32 %i.tl, %i.tm
  br i1 %.not10.i.i.i435, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit482, label %bb.bw, !prof !31

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %.sink.i.i6.i427 = phi i32 [ %i.tj, %bb.bu ], [ %i.sh, %bb.bv ]
  call void @_ZN4llvh13SmallDenseMapIPKN6hermes10BasicBlockEPS2_Lj16ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(264) %5, i32 noundef %.sink.i.i6.i427)
  %20 = load i32, ptr %5, align 8                 ; 4 uses
  %21 = and i32 %20, 1                            ; 4 uses
  %.not.i.i.i.i470 = icmp eq i32 %21, 0           ; 2 uses
  %22 = load ptr, ptr %.07.i.i.i74.ptr, align 8
  %23 = select i1 %.not.i.i.i.i470, ptr %22, ptr %.07.i.i.i74.ptr ; 2 uses
  %24 = load i32, ptr %.phi.trans.insert3.i.i71, align 8
  %25 = select i1 %.not.i.i.i.i470, i32 %24, i32 16 ; 2 uses
  %26 = icmp ne i32 %25, 0
  call void @llvm.assume(i1 %26)
  %i.tn = load ptr, ptr %i.c, align 8, !tbaa !37  ; 6 uses
  %i.to = ptrtoint ptr %i.tn to i64
  %i.tp = trunc i64 %i.to to i32                  ; 2 uses
  %i.tq = lshr i32 %i.tp, 4
  %i.tr = lshr i32 %i.tp, 9
  %i.ts = xor i32 %i.tq, %i.tr
  %i.tt = add i32 %25, -1                         ; 2 uses
  %.02945.i.i471 = and i32 %i.ts, %i.tt           ; 2 uses
  %i.tu = zext nneg i32 %.02945.i.i471 to i64
  %i.tv = getelementptr inbounds nuw [16 x i8], ptr %23, i64 %i.tu ; 3 uses
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !37 ; 2 uses
  %i.tx = icmp eq ptr %i.tn, %i.tw
  br i1 %i.tx, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit482, label %.lr.ph.i.i472, !prof !181

.lr.ph.i.i472:                                    ; preds = %bb.bw, %bb.by
  %i.ty = phi ptr [ %i.ui, %bb.by ], [ %i.tw, %bb.bw ] ; 2 uses
  %i.tz = phi ptr [ %i.uh, %bb.by ], [ %i.tv, %bb.bw ] ; 2 uses
  %.02948.i.i473 = phi i32 [ %.029.i.i478, %bb.by ], [ %.02945.i.i471, %bb.bw ]
  %.02747.i.i474 = phi i32 [ %i.ue, %bb.by ], [ 1, %bb.bw ] ; 2 uses
  %.03246.i.i475 = phi ptr [ %spec.select.i.i477, %bb.by ], [ null, %bb.bw ] ; 4 uses
  %i.ua = icmp eq ptr %i.ty, inttoptr (i64 -8 to ptr)
  br i1 %i.ua, label %bb.bx, label %bb.by, !prof !31

bb.bx:                                            ; preds = %.lr.ph.i.i472
  %.not.i.i481 = icmp eq ptr %.03246.i.i475, null
  %i.ub = select i1 %.not.i.i481, ptr %i.tz, ptr %.03246.i.i475
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit482

bb.by:                                            ; preds = %.lr.ph.i.i472
  %i.uc = icmp eq ptr %i.ty, inttoptr (i64 -16 to ptr)
  %i.ud = icmp eq ptr %.03246.i.i475, null
  %or.cond.not.i.i476 = select i1 %i.uc, i1 %i.ud, i1 false
  %spec.select.i.i477 = select i1 %or.cond.not.i.i476, ptr %i.tz, ptr %.03246.i.i475
  %i.ue = add i32 %.02747.i.i474, 1
  %i.uf = add i32 %.02747.i.i474, %.02948.i.i473
  %.029.i.i478 = and i32 %i.uf, %i.tt             ; 2 uses
  %i.ug = zext i32 %.029.i.i478 to i64
  %i.uh = getelementptr inbounds nuw [16 x i8], ptr %23, i64 %i.ug ; 3 uses
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !37 ; 2 uses
  %i.uj = icmp eq ptr %i.tn, %i.ui
  br i1 %i.uj, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit482, label %.lr.ph.i.i472, !prof !182, !llvm.loop !184

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit482: ; preds = %bb.by, %bb.bx, %bb.bw, %bb.bv
  %27 = phi ptr [ %i.qn, %bb.bv ], [ %i.tn, %bb.bx ], [ %i.tn, %bb.bw ], [ %i.tn, %bb.by ]
  %.pre-phi.i.i431 = phi i32 [ %i.sd, %bb.bv ], [ %21, %bb.bx ], [ %21, %bb.bw ], [ %21, %bb.by ]
  %28 = phi ptr [ %.sink.i.i.i424, %bb.bv ], [ %i.ub, %bb.bx ], [ %i.tv, %bb.bw ], [ %i.uh, %bb.by ] ; 4 uses
  %29 = phi i32 [ %i.sc, %bb.bv ], [ %20, %bb.bx ], [ %20, %bb.bw ], [ %20, %bb.by ]
  %i.uk = and i32 %29, -2
  %i.ul = add i32 %i.uk, 2
  %i.um = or disjoint i32 %i.ul, %.pre-phi.i.i431
  store i32 %i.um, ptr %5, align 8
  %i.un = load ptr, ptr %28, align 8, !tbaa !37
  %i.uo = icmp eq ptr %i.un, inttoptr (i64 -8 to ptr)
  br i1 %i.uo, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E16InsertIntoBucketIRKS5_JEEEPSB_SH_OT_DpOT0_.exit.i432, label %bb.bz

bb.bz:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit482
  %i.up = load i32, ptr %i.n, align 4, !tbaa !164
  %i.uq = add i32 %i.up, -1
  store i32 %i.uq, ptr %i.n, align 4, !tbaa !164
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E16InsertIntoBucketIRKS5_JEEEPSB_SH_OT_DpOT0_.exit.i432

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E16InsertIntoBucketIRKS5_JEEEPSB_SH_OT_DpOT0_.exit.i432: ; preds = %bb.bz, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit482
  store ptr %27, ptr %28, align 8, !tbaa !37
  %i.ur = getelementptr inbounds nuw i8, ptr %28, i64 8
  store ptr null, ptr %i.ur, align 8, !tbaa !37
  %.pre726 = load ptr, ptr %i.c, align 8, !tbaa !37
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E16FindAndConstructERKS5_.exit436

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E16FindAndConstructERKS5_.exit436: ; preds = %bb.bt, %bb.br, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E16InsertIntoBucketIRKS5_JEEEPSB_SH_OT_DpOT0_.exit.i432
  %i.us = phi ptr [ %.pre726, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E16InsertIntoBucketIRKS5_JEEEPSB_SH_OT_DpOT0_.exit.i432 ], [ %i.qn, %bb.br ], [ %i.qn, %bb.bt ]
  %.0.i421 = phi ptr [ %28, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E16InsertIntoBucketIRKS5_JEEEPSB_SH_OT_DpOT0_.exit.i432 ], [ %i.sq, %bb.br ], [ %i.tc, %bb.bt ]
  %i.ut = getelementptr inbounds nuw i8, ptr %.0.i421, i64 8
  %i.uu = load ptr, ptr %i.ut, align 8, !tbaa !37 ; 2 uses
  %i.uv = call noundef zeroext i1 @_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE17properlyDominatesEPKS2_S5_(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef %i.uu, ptr noundef %i.us) #11
  br i1 %i.uv, label %bb.ca, label %_ZN4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE6insertES4_.exit318

bb.ca:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E16FindAndConstructERKS5_.exit436
  %i.uw = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E16FindAndConstructERKS5_(ptr noundef nonnull align 1 dereferenceable(1) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 8
  store ptr %i.uu, ptr %i.ux, align 8, !tbaa !37
  br label %_ZN4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE6insertES4_.exit318

_ZN4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE6insertES4_.exit318: ; preds = %.lr.ph.i.i309, %bb.bq, %bb.bl, %bb.bm, %bb.bn, %bb.bp, %bb.ca, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E16FindAndConstructERKS5_.exit436, %_ZNK4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE5countES4_.exit292
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  %i.uy = getelementptr inbounds nuw i8, ptr %.sroa.0512.0667, i64 8 ; 3 uses
  %.not3.i3.i326 = icmp eq ptr %i.uy, %i.pe
  br i1 %.not3.i3.i326, label %_ZN4llvh19SmallPtrSetIteratorIPN6hermes10BasicBlockEEppEv.exit331, label %.lr.ph.i4.i327

.lr.ph.i4.i327:                                   ; preds = %_ZN4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE6insertES4_.exit318, %.critedge2.i6.i329
  %.sroa.0512.1 = phi ptr [ %i.va, %.critedge2.i6.i329 ], [ %i.uy, %_ZN4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE6insertES4_.exit318 ] ; 3 uses
  %i.uz = load ptr, ptr %.sroa.0512.1, align 8, !tbaa !28
  %switch.i5.i328 = icmp ugt ptr %i.uz, inttoptr (i64 -3 to ptr)
  br i1 %switch.i5.i328, label %.critedge2.i6.i329, label %_ZN4llvh19SmallPtrSetIteratorIPN6hermes10BasicBlockEEppEv.exit331

.critedge2.i6.i329:                               ; preds = %.lr.ph.i4.i327
  %i.va = getelementptr inbounds nuw i8, ptr %.sroa.0512.1, i64 8 ; 3 uses
  %.not.i7.i330 = icmp eq ptr %i.va, %i.pe
  br i1 %.not.i7.i330, label %_ZN4llvh19SmallPtrSetIteratorIPN6hermes10BasicBlockEEppEv.exit331, label %.lr.ph.i4.i327, !llvm.loop !187

_ZN4llvh19SmallPtrSetIteratorIPN6hermes10BasicBlockEEppEv.exit331: ; preds = %.lr.ph.i4.i327, %.critedge2.i6.i329, %_ZN4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE6insertES4_.exit318
  %.sroa.0512.2 = phi ptr [ %i.uy, %_ZN4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE6insertES4_.exit318 ], [ %.sroa.0512.1, %.lr.ph.i4.i327 ], [ %i.va, %.critedge2.i6.i329 ] ; 2 uses
  %.not607 = icmp eq ptr %.sroa.0512.2, %i.ph
  br i1 %.not607, label %._crit_edge669, label %.lr.ph668

._crit_edge683:                                   ; preds = %_ZN4llvh16DenseMapIteratorIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS2_Lj2EEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EELb0EEppEv.exit397, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E5beginEv.exit241
  %i.vb = load ptr, ptr %i.mx, align 8, !tbaa !11 ; 2 uses
  %i.vc = load ptr, ptr %10, align 8, !tbaa !7
  %i.vd = icmp eq ptr %i.vb, %i.vc
  br i1 %i.vd, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit332, label %bb.cb

bb.cb:                                            ; preds = %._crit_edge683
  call void @free(ptr noundef %i.vb) #11
  br label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit332

_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit332:        ; preds = %._crit_edge683, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  %i.ve = load ptr, ptr %7, align 8, !tbaa !15    ; 2 uses
  %i.vf = icmp eq ptr %i.ve, %i.p
  br i1 %i.vf, label %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj16EED2Ev.exit, label %bb.cc

bb.cc:                                            ; preds = %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit332
  call void @free(ptr noundef %i.ve) #11
  br label %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj16EED2Ev.exit

_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj16EED2Ev.exit: ; preds = %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit332, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  %i.vg = load i32, ptr %6, align 8               ; 2 uses
  %i.vh = and i32 %i.vg, 1
  %.not.i.i.i.i333 = icmp eq i32 %i.vh, 0         ; 2 uses
  %i.vi = load i32, ptr %.phi.trans.insert3.i.i79, align 8
  %i.vj = select i1 %.not.i.i.i.i333, i32 %i.vi, i32 16 ; 2 uses
  %i.vk = icmp eq i32 %i.vj, 0
  br i1 %i.vk, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEv.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj16EED2Ev.exit
  %i.vl = load ptr, ptr %.07.i.i.i82.ptr, align 8
  %i.vm = select i1 %.not.i.i.i.i333, ptr %i.vl, ptr %.07.i.i.i82.ptr ; 2 uses
  %i.vn = zext i32 %i.vj to i64
  %.idx.i.i334 = mul nuw nsw i64 %i.vn, 56
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vm, i64 %.idx.i.i334
  br label %.lr.ph.i.i335

.lr.ph.i.i335:                                    ; preds = %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.i.i, %.lr.ph.preheader.i.i
  %.011.i.i = phi ptr [ %i.vv, %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.i.i ], [ %i.vm, %.lr.ph.preheader.i.i ] ; 4 uses
  %i.vp = load ptr, ptr %.011.i.i, align 8, !tbaa !37
  %magicptr.i.i = ptrtoint ptr %i.vp to i64
  switch i64 %magicptr.i.i, label %bb.cd [
    i64 -8, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.i.i
    i64 -16, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.i.i
  ]

bb.cd:                                            ; preds = %.lr.ph.i.i335
  %i.vq = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 8
  %i.vr = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 16
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !11 ; 2 uses
  %i.vt = load ptr, ptr %i.vq, align 8, !tbaa !7
  %i.vu = icmp eq ptr %i.vs, %i.vt
  br i1 %i.vu, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.i.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @free(ptr noundef %i.vs) #11
  br label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.i.i

_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.i.i:       ; preds = %bb.ce, %bb.cd, %.lr.ph.i.i335, %.lr.ph.i.i335
  %i.vv = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 56 ; 2 uses
  %.not.i.i336 = icmp eq ptr %i.vv, %i.vo
  br i1 %.not.i.i336, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEv.exit.loopexit.i, label %.lr.ph.i.i335, !llvm.loop !210

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEv.exit.loopexit.i: ; preds = %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.i.i
  %.pre.i337 = load i32, ptr %6, align 8
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEv.exit.i

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEv.exit.i: ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEv.exit.loopexit.i, %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj16EED2Ev.exit
  %i.vw = phi i32 [ %.pre.i337, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEv.exit.loopexit.i ], [ %i.vg, %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj16EED2Ev.exit ]
  %i.vx = and i32 %i.vw, 1
  %.not.i1.i = icmp eq i32 %i.vx, 0
  br i1 %.not.i1.i, label %bb.cf, label %_ZN4llvh13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS2_Lj2EEELj16ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit

bb.cf:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEv.exit.i
  %i.vy = load ptr, ptr %.07.i.i.i82.ptr, align 8, !tbaa !211
  call void @_ZdlPv(ptr noundef %i.vy) #11
  br label %_ZN4llvh13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS2_Lj2EEELj16ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit

_ZN4llvh13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS2_Lj2EEELj16ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit: ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEv.exit.i, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %i.vz = load i32, ptr %5, align 8
  %i.wa = and i32 %i.vz, 1
  %.not.i.i338 = icmp eq i32 %i.wa, 0
  br i1 %.not.i.i338, label %bb.cg, label %_ZN4llvh13SmallDenseMapIPKN6hermes10BasicBlockEPS2_Lj16ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit

bb.cg:                                            ; preds = %_ZN4llvh13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS2_Lj2EEELj16ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit
  %i.wb = load ptr, ptr %.07.i.i.i74.ptr, align 8, !tbaa !214
  call void @_ZdlPv(ptr noundef %i.wb) #11
  br label %_ZN4llvh13SmallDenseMapIPKN6hermes10BasicBlockEPS2_Lj16ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit

_ZN4llvh13SmallDenseMapIPKN6hermes10BasicBlockEPS2_Lj16ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit: ; preds = %_ZN4llvh13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS2_Lj2EEELj16ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %i.wc = load ptr, ptr %i.j, align 8, !tbaa !11  ; 2 uses
  %i.wd = load ptr, ptr %4, align 8, !tbaa !7
  %i.we = icmp eq ptr %i.wc, %i.wd
  br i1 %i.we, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit339, label %bb.ch

bb.ch:                                            ; preds = %_ZN4llvh13SmallDenseMapIPKN6hermes10BasicBlockEPS2_Lj16ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit
  call void @free(ptr noundef %i.wc) #11
  br label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit339

_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit339:        ; preds = %_ZN4llvh13SmallDenseMapIPKN6hermes10BasicBlockEPS2_Lj16ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.wf = load i32, ptr %3, align 8
  %i.wg = and i32 %i.wf, 1
  %.not.i.i340 = icmp eq i32 %i.wg, 0
  br i1 %.not.i.i340, label %bb.ci, label %_ZN4llvh13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_iEEED2Ev.exit

bb.ci:                                            ; preds = %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit339
  %i.wh = load ptr, ptr %.07.i.i.i67.ptr, align 8, !tbaa !217
  call void @_ZdlPv(ptr noundef %i.wh) #11
  br label %_ZN4llvh13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_iEEED2Ev.exit

_ZN4llvh13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_iEEED2Ev.exit: ; preds = %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit339, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void

.lr.ph682:                                        ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E5beginEv.exit241, %_ZN4llvh16DenseMapIteratorIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS2_Lj2EEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EELb0EEppEv.exit397
  %.sroa.0504.0681 = phi ptr [ %.sroa.0504.2, %_ZN4llvh16DenseMapIteratorIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS2_Lj2EEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EELb0EEppEv.exit397 ], [ %.pn16.i236, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E5beginEv.exit241 ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  %i.wi = load ptr, ptr %.sroa.0504.0681, align 8, !tbaa !203
  store ptr %i.wi, ptr %i.d, align 8, !tbaa !37
  %i.wj = getelementptr inbounds nuw i8, ptr %.sroa.0504.0681, i64 28
  %i.wk = load i32, ptr %i.wj, align 4, !tbaa !13 ; 2 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %.sroa.0504.0681, i64 32
  %i.wm = load i32, ptr %i.wl, align 8, !tbaa !14
  %i.wn = icmp eq i32 %i.wk, %i.wm
  br i1 %i.wn, label %bb.cy, label %bb.cj

bb.cj:                                            ; preds = %.lr.ph682
  %i.wo = getelementptr inbounds nuw i8, ptr %.sroa.0504.0681, i64 8
  %i.wp = getelementptr inbounds nuw i8, ptr %.sroa.0504.0681, i64 16
  %i.wq = load ptr, ptr %i.wp, align 8, !tbaa !11 ; 5 uses
  %i.wr = load ptr, ptr %i.wo, align 8, !tbaa !7
  %i.ws = icmp eq ptr %i.wq, %i.wr
  %i.wt = getelementptr inbounds nuw i8, ptr %.sroa.0504.0681, i64 24
  %i.wu = load i32, ptr %i.wt, align 8
  %.v.v.i4.i2.i341 = select i1 %i.ws, i32 %i.wk, i32 %i.wu ; 2 uses
  %.v.i5.i3.i342 = zext i32 %.v.v.i4.i2.i341 to i64 ; 2 uses
  %.idx.i343 = shl nuw nsw i64 %.v.i5.i3.i342, 3
  %i.wv = getelementptr i8, ptr %i.wq, i64 %.idx.i343 ; 4 uses
  %.not3.i4.i.i6.i4.i344 = icmp eq i32 %.v.v.i4.i2.i341, 0
  br i1 %.not3.i4.i.i6.i4.i344, label %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5beginEv.exit354, label %.lr.ph.i5.i.i7.i5.i345

.lr.ph.i5.i.i7.i5.i345:                           ; preds = %bb.cj, %.critedge2.i7.i.i9.i11.i352
  %.sroa.0.3.i6.i346 = phi ptr [ %i.wx, %.critedge2.i7.i.i9.i11.i352 ], [ %i.wq, %bb.cj ] ; 3 uses
  %i.ww = load ptr, ptr %.sroa.0.3.i6.i346, align 8, !tbaa !28
  %switch.i6.i.i8.i7.i347 = icmp ugt ptr %i.ww, inttoptr (i64 -3 to ptr)
  br i1 %switch.i6.i.i8.i7.i347, label %.critedge2.i7.i.i9.i11.i352, label %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5beginEv.exit354

.critedge2.i7.i.i9.i11.i352:                      ; preds = %.lr.ph.i5.i.i7.i5.i345
  %i.wx = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i6.i346, i64 8 ; 2 uses
  %.not.i8.i.i10.i12.i353 = icmp eq ptr %i.wx, %i.wv
  br i1 %.not.i8.i.i10.i12.i353, label %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5beginEv.exit354, label %.lr.ph.i5.i.i7.i5.i345, !llvm.loop !187

_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5beginEv.exit354: ; preds = %.lr.ph.i5.i.i7.i5.i345, %.critedge2.i7.i.i9.i11.i352, %bb.cj
  %.sroa.0.4.i8.i349 = phi ptr [ %i.wq, %bb.cj ], [ %.sroa.0.3.i6.i346, %.lr.ph.i5.i.i7.i5.i345 ], [ %i.wv, %.critedge2.i7.i.i9.i11.i352 ] ; 2 uses
  %i.wy = getelementptr inbounds nuw [8 x i8], ptr %i.wq, i64 %.v.i5.i3.i342 ; 2 uses
  %.not605674 = icmp eq ptr %.sroa.0.4.i8.i349, %i.wy
  br i1 %.not605674, label %._crit_edge679, label %.lr.ph678

._crit_edge679:                                   ; preds = %_ZN4llvh19SmallPtrSetIteratorIPN6hermes10BasicBlockEEppEv.exit391, %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5beginEv.exit354
  %.0.lcssa = phi ptr [ null, %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5beginEv.exit354 ], [ %.1, %_ZN4llvh19SmallPtrSetIteratorIPN6hermes10BasicBlockEEppEv.exit391 ]
  %i.wz = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E16FindAndConstructERKS5_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 8
  store ptr %.0.lcssa, ptr %i.xa, align 8, !tbaa !37
  br label %bb.cy

.lr.ph678:                                        ; preds = %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5beginEv.exit354, %_ZN4llvh19SmallPtrSetIteratorIPN6hermes10BasicBlockEEppEv.exit391
  %.0677 = phi ptr [ %.1, %_ZN4llvh19SmallPtrSetIteratorIPN6hermes10BasicBlockEEppEv.exit391 ], [ null, %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5beginEv.exit354 ] ; 2 uses
  %.043676 = phi i32 [ %.144, %_ZN4llvh19SmallPtrSetIteratorIPN6hermes10BasicBlockEEppEv.exit391 ], [ -1, %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5beginEv.exit354 ] ; 3 uses
  %.sroa.0499.0675 = phi ptr [ %.sroa.0499.2, %_ZN4llvh19SmallPtrSetIteratorIPN6hermes10BasicBlockEEppEv.exit391 ], [ %.sroa.0.4.i8.i349, %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5beginEv.exit354 ] ; 2 uses
  %i.xb = load ptr, ptr %.sroa.0499.0675, align 8, !tbaa !28 ; 13 uses
  %i.xc = load i32, ptr %3, align 8               ; 3 uses
  %i.xd = and i32 %i.xc, 1                        ; 2 uses
  %.not.i.i.i.i.i437 = icmp eq i32 %i.xd, 0       ; 2 uses
  %i.xe = load ptr, ptr %.07.i.i.i67.ptr, align 8
  %i.xf = select i1 %.not.i.i.i.i.i437, ptr %i.xe, ptr %.07.i.i.i67.ptr ; 2 uses
  %i.xg = load i32, ptr %.phi.trans.insert3.i.i64, align 8
  %i.xh = select i1 %.not.i.i.i.i.i437, i32 %i.xg, i32 16 ; 7 uses
  %i.xi = icmp eq i32 %i.xh, 0
  br i1 %i.xi, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit.i, label %bb.ck

bb.ck:                                            ; preds = %.lr.ph678
  %i.xj = ptrtoint ptr %i.xb to i64
  %i.xk = trunc i64 %i.xj to i32                  ; 2 uses
  %i.xl = lshr i32 %i.xk, 4
  %i.xm = lshr i32 %i.xk, 9
  %i.xn = xor i32 %i.xl, %i.xm
  %i.xo = add i32 %i.xh, -1                       ; 2 uses
  %.02945.i.i.i438 = and i32 %i.xo, %i.xn         ; 2 uses
  %i.xp = zext nneg i32 %.02945.i.i.i438 to i64
  %i.xq = getelementptr inbounds nuw [16 x i8], ptr %i.xf, i64 %i.xp ; 3 uses
  %i.xr = load ptr, ptr %i.xq, align 8, !tbaa !37 ; 2 uses
  %i.xs = icmp eq ptr %i.xb, %i.xr
  br i1 %i.xs, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E16FindAndConstructERKS5_.exit, label %.lr.ph.i.i.i439, !prof !181

.lr.ph.i.i.i439:                                  ; preds = %bb.ck, %bb.cm
  %i.xt = phi ptr [ %i.yd, %bb.cm ], [ %i.xr, %bb.ck ] ; 2 uses
  %i.xu = phi ptr [ %i.yc, %bb.cm ], [ %i.xq, %bb.ck ] ; 2 uses
  %.02948.i.i.i440 = phi i32 [ %.029.i.i.i445, %bb.cm ], [ %.02945.i.i.i438, %bb.ck ]
  %.02747.i.i.i441 = phi i32 [ %i.xz, %bb.cm ], [ 1, %bb.ck ] ; 2 uses
  %.03246.i.i.i442 = phi ptr [ %spec.select.i.i.i444, %bb.cm ], [ null, %bb.ck ] ; 4 uses
  %i.xv = icmp eq ptr %i.xt, inttoptr (i64 -8 to ptr)
  br i1 %i.xv, label %bb.cl, label %bb.cm, !prof !31

bb.cl:                                            ; preds = %.lr.ph.i.i.i439
  %.not.i.i.i448 = icmp eq ptr %.03246.i.i.i442, null
  %i.xw = select i1 %.not.i.i.i448, ptr %i.xu, ptr %.03246.i.i.i442
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit.i

bb.cm:                                            ; preds = %.lr.ph.i.i.i439
  %i.xx = icmp eq ptr %i.xt, inttoptr (i64 -16 to ptr)
  %i.xy = icmp eq ptr %.03246.i.i.i442, null
  %or.cond.not.i.i.i443 = select i1 %i.xx, i1 %i.xy, i1 false
  %spec.select.i.i.i444 = select i1 %or.cond.not.i.i.i443, ptr %i.xu, ptr %.03246.i.i.i442
  %i.xz = add i32 %.02747.i.i.i441, 1
  %i.ya = add i32 %.02747.i.i.i441, %.02948.i.i.i440
  %.029.i.i.i445 = and i32 %i.ya, %i.xo           ; 2 uses
  %i.yb = zext i32 %.029.i.i.i445 to i64
  %i.yc = getelementptr inbounds nuw [16 x i8], ptr %i.xf, i64 %i.yb ; 3 uses
  %i.yd = load ptr, ptr %i.yc, align 8, !tbaa !37 ; 2 uses
  %i.ye = icmp eq ptr %i.xb, %i.yd
  br i1 %i.ye, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E16FindAndConstructERKS5_.exit, label %.lr.ph.i.i.i439, !prof !182, !llvm.loop !183

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit.i: ; preds = %bb.cl, %.lr.ph678
  %.sink.i.i.i449 = phi ptr [ %i.xw, %bb.cl ], [ null, %.lr.ph678 ]
  %i.yf = lshr i32 %i.xc, 1                       ; 2 uses
  %i.yg = shl i32 %i.yf, 2
  %i.yh = add i32 %i.yg, 4
  %i.yi = mul i32 %i.xh, 3
  %.not.i.i5.i450 = icmp ult i32 %i.yh, %i.yi
  br i1 %.not.i.i5.i450, label %bb.co, label %bb.cn, !prof !31

bb.cn:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit.i
  %i.yj = shl i32 %i.xh, 1
  br label %bb.cp

bb.co:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit.i
  %i.yk = load i32, ptr %i.h, align 4, !tbaa !168
  %.neg.i.i.i457 = xor i32 %i.yf, -1
  %.neg13.i.i.i458 = add i32 %i.xh, %.neg.i.i.i457
  %i.yl = sub i32 %.neg13.i.i.i458, %i.yk
  %i.ym = lshr i32 %i.xh, 3
  %.not10.i.i.i459 = icmp ugt i32 %i.yl, %i.ym
  br i1 %.not10.i.i.i459, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit, label %bb.cp, !prof !31

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %.sink.i.i6.i452 = phi i32 [ %i.yj, %bb.cn ], [ %i.xh, %bb.co ]
  call void @_ZN4llvh13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_iEEE4growEj(ptr noundef nonnull align 8 dereferenceable(264) %3, i32 noundef %.sink.i.i6.i452)
  %30 = load i32, ptr %3, align 8                 ; 4 uses
  %31 = and i32 %30, 1                            ; 4 uses
  %.not.i.i.i.i483 = icmp eq i32 %31, 0           ; 2 uses
  %32 = load ptr, ptr %.07.i.i.i67.ptr, align 8
  %33 = select i1 %.not.i.i.i.i483, ptr %32, ptr %.07.i.i.i67.ptr ; 2 uses
  %34 = load i32, ptr %.phi.trans.insert3.i.i64, align 8
  %35 = select i1 %.not.i.i.i.i483, i32 %34, i32 16 ; 2 uses
  %36 = icmp ne i32 %35, 0
  call void @llvm.assume(i1 %36)
  %i.yn = ptrtoint ptr %i.xb to i64
  %i.yo = trunc i64 %i.yn to i32                  ; 2 uses
  %i.yp = lshr i32 %i.yo, 4
  %i.yq = lshr i32 %i.yo, 9
  %i.yr = xor i32 %i.yp, %i.yq
  %i.ys = add i32 %35, -1                         ; 2 uses
  %.02945.i.i484 = and i32 %i.ys, %i.yr           ; 2 uses
  %i.yt = zext nneg i32 %.02945.i.i484 to i64
  %i.yu = getelementptr inbounds nuw [16 x i8], ptr %33, i64 %i.yt ; 3 uses
  %i.yv = load ptr, ptr %i.yu, align 8, !tbaa !37 ; 2 uses
  %i.yw = icmp eq ptr %i.xb, %i.yv
  br i1 %i.yw, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit, label %.lr.ph.i.i485, !prof !181

.lr.ph.i.i485:                                    ; preds = %bb.cp, %bb.cr
  %i.yx = phi ptr [ %i.zh, %bb.cr ], [ %i.yv, %bb.cp ] ; 2 uses
  %i.yy = phi ptr [ %i.zg, %bb.cr ], [ %i.yu, %bb.cp ] ; 2 uses
  %.02948.i.i486 = phi i32 [ %.029.i.i491, %bb.cr ], [ %.02945.i.i484, %bb.cp ]
  %.02747.i.i487 = phi i32 [ %i.zd, %bb.cr ], [ 1, %bb.cp ] ; 2 uses
  %.03246.i.i488 = phi ptr [ %spec.select.i.i490, %bb.cr ], [ null, %bb.cp ] ; 4 uses
  %i.yz = icmp eq ptr %i.yx, inttoptr (i64 -8 to ptr)
  br i1 %i.yz, label %bb.cq, label %bb.cr, !prof !31

bb.cq:                                            ; preds = %.lr.ph.i.i485
  %.not.i.i494 = icmp eq ptr %.03246.i.i488, null
  %i.za = select i1 %.not.i.i494, ptr %i.yy, ptr %.03246.i.i488
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit

bb.cr:                                            ; preds = %.lr.ph.i.i485
  %i.zb = icmp eq ptr %i.yx, inttoptr (i64 -16 to ptr)
  %i.zc = icmp eq ptr %.03246.i.i488, null
  %or.cond.not.i.i489 = select i1 %i.zb, i1 %i.zc, i1 false
  %spec.select.i.i490 = select i1 %or.cond.not.i.i489, ptr %i.yy, ptr %.03246.i.i488
  %i.zd = add i32 %.02747.i.i487, 1
  %i.ze = add i32 %.02747.i.i487, %.02948.i.i486
  %.029.i.i491 = and i32 %i.ze, %i.ys             ; 2 uses
  %i.zf = zext i32 %.029.i.i491 to i64
  %i.zg = getelementptr inbounds nuw [16 x i8], ptr %33, i64 %i.zf ; 3 uses
  %i.zh = load ptr, ptr %i.zg, align 8, !tbaa !37 ; 2 uses
  %i.zi = icmp eq ptr %i.xb, %i.zh
  br i1 %i.zi, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit, label %.lr.ph.i.i485, !prof !182, !llvm.loop !183

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit: ; preds = %bb.cr, %bb.cq, %bb.cp, %bb.co
  %.pre-phi.i.i456 = phi i32 [ %i.xd, %bb.co ], [ %31, %bb.cq ], [ %31, %bb.cp ], [ %31, %bb.cr ]
  %37 = phi ptr [ %.sink.i.i.i449, %bb.co ], [ %i.za, %bb.cq ], [ %i.yu, %bb.cp ], [ %i.zg, %bb.cr ] ; 4 uses
  %38 = phi i32 [ %i.xc, %bb.co ], [ %30, %bb.cq ], [ %30, %bb.cp ], [ %30, %bb.cr ]
  %i.zj = and i32 %38, -2
  %i.zk = add i32 %i.zj, 2
  %i.zl = or disjoint i32 %i.zk, %.pre-phi.i.i456
  store i32 %i.zl, ptr %3, align 8
  %i.zm = load ptr, ptr %37, align 8, !tbaa !37
  %i.zn = icmp eq ptr %i.zm, inttoptr (i64 -8 to ptr)
  br i1 %i.zn, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E16InsertIntoBucketIRKS5_JEEEPSA_SG_OT_DpOT0_.exit.i, label %bb.cs

bb.cs:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit
  %i.zo = load i32, ptr %i.h, align 4, !tbaa !168
  %i.zp = add i32 %i.zo, -1
  store i32 %i.zp, ptr %i.h, align 4, !tbaa !168
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E16InsertIntoBucketIRKS5_JEEEPSA_SG_OT_DpOT0_.exit.i

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E16InsertIntoBucketIRKS5_JEEEPSA_SG_OT_DpOT0_.exit.i: ; preds = %bb.cs, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit
  store ptr %i.xb, ptr %37, align 8, !tbaa !37
  %i.zq = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i32 0, ptr %i.zq, align 8, !tbaa !3
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E16FindAndConstructERKS5_.exit

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E16FindAndConstructERKS5_.exit: ; preds = %bb.cm, %bb.ck, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E16InsertIntoBucketIRKS5_JEEEPSA_SG_OT_DpOT0_.exit.i
  %.0.i447 = phi ptr [ %37, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E16InsertIntoBucketIRKS5_JEEEPSA_SG_OT_DpOT0_.exit.i ], [ %i.xq, %bb.ck ], [ %i.yc, %bb.cm ]
  %i.zr = getelementptr inbounds nuw i8, ptr %.0.i447, i64 8
  %i.zs = load i32, ptr %i.zr, align 4, !tbaa !3  ; 4 uses
  %i.zt = icmp sgt i32 %i.zs, %.043676
  br i1 %i.zt, label %bb.ct, label %.thread

bb.ct:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E16FindAndConstructERKS5_.exit
  %i.zu = load ptr, ptr %i.mx, align 8, !tbaa !11 ; 6 uses
  %i.zv = load ptr, ptr %10, align 8, !tbaa !7    ; 3 uses
  %i.zw = icmp eq ptr %i.zu, %i.zv
  br i1 %i.zw, label %bb.cu, label %bb.cw

bb.cu:                                            ; preds = %bb.ct
  %i.zx = load i32, ptr %i.mz, align 4, !tbaa !13 ; 4 uses
  %i.zy = zext i32 %i.zx to i64                   ; 2 uses
  %.idx.i.i.i379 = shl nuw nsw i64 %i.zy, 3
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zv, i64 %.idx.i.i.i379
  %.not18.i.i.i380 = icmp eq i32 %i.zx, 0
  br i1 %.not18.i.i.i380, label %._crit_edge.i.i.i384, label %.lr.ph.i.i.i381

.lr.ph.i.i.i381:                                  ; preds = %bb.cu, %bb.cv
  %.01319.i.i.i382 = phi ptr [ %i.aac, %bb.cv ], [ %i.zv, %bb.cu ] ; 3 uses
  %i.aaa = load ptr, ptr %.01319.i.i.i382, align 8, !tbaa !28
  %i.aab = icmp eq ptr %i.aaa, %i.xb
  br i1 %i.aab, label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i363, label %bb.cv

bb.cv:                                            ; preds = %.lr.ph.i.i.i381
  %i.aac = getelementptr inbounds nuw i8, ptr %.01319.i.i.i382, i64 8 ; 2 uses
  %.not.i.i.i383 = icmp eq ptr %i.aac, %i.zz
  br i1 %.not.i.i.i383, label %._crit_edge.i.i.i384, label %.lr.ph.i.i.i381, !llvm.loop !186

._crit_edge.i.i.i384:                             ; preds = %bb.cv, %bb.cu
  %i.aad = getelementptr inbounds nuw [8 x i8], ptr %i.zu, i64 %i.zy
  br label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i363

bb.cw:                                            ; preds = %bb.ct
  %i.aae = call noundef ptr @_ZNK4llvh19SmallPtrSetImplBase13FindBucketForEPKv(ptr noundef nonnull align 8 dereferenceable(28) %10, ptr noundef %i.xb) #11 ; 2 uses
  %i.aaf = load ptr, ptr %i.aae, align 8, !tbaa !28
  %i.aag = icmp eq ptr %i.aaf, %i.xb
  %.pre.i.i359 = load ptr, ptr %i.mx, align 8, !tbaa !11 ; 4 uses
  %.pre4.i.i360 = load ptr, ptr %10, align 8, !tbaa !7 ; 3 uses
  br i1 %i.aag, label %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i376, label %bb.cx

._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i376: ; preds = %bb.cw
  %.pre5.i.i378 = load i32, ptr %i.mz, align 4
  br label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i363

bb.cx:                                            ; preds = %bb.cw
  %i.aah = icmp eq ptr %.pre.i.i359, %.pre4.i.i360
  %i.aai = load i32, ptr %i.mz, align 4           ; 2 uses
  %i.aaj = load i32, ptr %i.my, align 8
  %.v.v.i14.i.i.i361 = select i1 %i.aah, i32 %i.aai, i32 %i.aaj
  %.v.i15.i.i.i362 = zext i32 %.v.v.i14.i.i.i361 to i64
  %i.aak = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i359, i64 %.v.i15.i.i.i362
  br label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i363

_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i363: ; preds = %.lr.ph.i.i.i381, %bb.cx, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i376, %._crit_edge.i.i.i384
  %i.aal = phi ptr [ %i.zu, %._crit_edge.i.i.i384 ], [ %.pre4.i.i360, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i376 ], [ %.pre4.i.i360, %bb.cx ], [ %i.zu, %.lr.ph.i.i.i381 ]
  %i.aam = phi i32 [ %i.zx, %._crit_edge.i.i.i384 ], [ %.pre5.i.i378, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i376 ], [ %i.aai, %bb.cx ], [ %i.zx, %.lr.ph.i.i.i381 ]
  %i.aan = phi ptr [ %i.zu, %._crit_edge.i.i.i384 ], [ %.pre.i.i359, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i376 ], [ %.pre.i.i359, %bb.cx ], [ %i.zu, %.lr.ph.i.i.i381 ] ; 2 uses
  %.2.i.i.i364 = phi ptr [ %i.aad, %._crit_edge.i.i.i384 ], [ %i.aae, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i376 ], [ %i.aak, %bb.cx ], [ %.01319.i.i.i382, %.lr.ph.i.i.i381 ] ; 2 uses
  %i.aao = icmp eq ptr %i.aan, %i.aal
  %i.aap = load i32, ptr %i.my, align 8
  %.v.v.i4.i.i.i365 = select i1 %i.aao, i32 %i.aam, i32 %i.aap
  %.v.i5.i.i.i366 = zext i32 %.v.v.i4.i.i.i365 to i64
  %i.aaq = getelementptr inbounds nuw [8 x i8], ptr %i.aan, i64 %.v.i5.i.i.i366
  %.fr = freeze ptr %i.aaq                        ; 3 uses
  %.not3.i4.i.i6.i.i.i367 = icmp eq ptr %.2.i.i.i364, %.fr
  br i1 %.not3.i4.i.i6.i.i.i367, label %.thread, label %.lr.ph.i5.i.i7.i.i.i368

.lr.ph.i5.i.i7.i.i.i368:                          ; preds = %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i363, %.critedge2.i7.i.i9.i.i.i374
  %.sroa.0.3.i.i.i369 = phi ptr [ %i.aas, %.critedge2.i7.i.i9.i.i.i374 ], [ %.2.i.i.i364, %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i363 ] ; 3 uses
  %i.aar = load ptr, ptr %.sroa.0.3.i.i.i369, align 8, !tbaa !28
  %switch.i6.i.i8.i.i.i370 = icmp ugt ptr %i.aar, inttoptr (i64 -3 to ptr)
  br i1 %switch.i6.i.i8.i.i.i370, label %.critedge2.i7.i.i9.i.i.i374, label %_ZNK4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE5countES4_.exit385

.critedge2.i7.i.i9.i.i.i374:                      ; preds = %.lr.ph.i5.i.i7.i.i.i368
  %i.aas = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i.i.i369, i64 8 ; 2 uses
  %.not.i8.i.i10.i.i.i375 = icmp eq ptr %i.aas, %.fr
  br i1 %.not.i8.i.i10.i.i.i375, label %.thread, label %.lr.ph.i5.i.i7.i.i.i368, !llvm.loop !187

_ZNK4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE5countES4_.exit385: ; preds = %.lr.ph.i5.i.i7.i.i.i368
  %.not606 = icmp eq ptr %.sroa.0.3.i.i.i369, %.fr ; 2 uses
  %spec.select = select i1 %.not606, i32 %i.zs, i32 %.043676
  %spec.select975 = select i1 %.not606, ptr %i.xb, ptr %.0677
  br label %.thread

.thread:                                          ; preds = %.critedge2.i7.i.i9.i.i.i374, %_ZNK4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE5countES4_.exit385, %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i363, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E16FindAndConstructERKS5_.exit
  %.144 = phi i32 [ %.043676, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E16FindAndConstructERKS5_.exit ], [ %i.zs, %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i363 ], [ %spec.select, %_ZNK4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE5countES4_.exit385 ], [ %i.zs, %.critedge2.i7.i.i9.i.i.i374 ]
  %.1 = phi ptr [ %.0677, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E16FindAndConstructERKS5_.exit ], [ %i.xb, %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i363 ], [ %spec.select975, %_ZNK4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE5countES4_.exit385 ], [ %i.xb, %.critedge2.i7.i.i9.i.i.i374 ] ; 2 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %.sroa.0499.0675, i64 8 ; 3 uses
  %.not3.i3.i386 = icmp eq ptr %i.aat, %i.wv
  br i1 %.not3.i3.i386, label %_ZN4llvh19SmallPtrSetIteratorIPN6hermes10BasicBlockEEppEv.exit391, label %.lr.ph.i4.i387

.lr.ph.i4.i387:                                   ; preds = %.thread, %.critedge2.i6.i389
  %.sroa.0499.1 = phi ptr [ %i.aav, %.critedge2.i6.i389 ], [ %i.aat, %.thread ] ; 3 uses
  %i.aau = load ptr, ptr %.sroa.0499.1, align 8, !tbaa !28
  %switch.i5.i388 = icmp ugt ptr %i.aau, inttoptr (i64 -3 to ptr)
  br i1 %switch.i5.i388, label %.critedge2.i6.i389, label %_ZN4llvh19SmallPtrSetIteratorIPN6hermes10BasicBlockEEppEv.exit391

.critedge2.i6.i389:                               ; preds = %.lr.ph.i4.i387
  %i.aav = getelementptr inbounds nuw i8, ptr %.sroa.0499.1, i64 8 ; 3 uses
  %.not.i7.i390 = icmp eq ptr %i.aav, %i.wv
  br i1 %.not.i7.i390, label %_ZN4llvh19SmallPtrSetIteratorIPN6hermes10BasicBlockEEppEv.exit391, label %.lr.ph.i4.i387, !llvm.loop !187

_ZN4llvh19SmallPtrSetIteratorIPN6hermes10BasicBlockEEppEv.exit391: ; preds = %.lr.ph.i4.i387, %.critedge2.i6.i389, %.thread
  %.sroa.0499.2 = phi ptr [ %i.aat, %.thread ], [ %.sroa.0499.1, %.lr.ph.i4.i387 ], [ %i.aav, %.critedge2.i6.i389 ] ; 2 uses
  %.not605 = icmp eq ptr %.sroa.0499.2, %i.wy
  br i1 %.not605, label %._crit_edge679, label %.lr.ph678

bb.cy:                                            ; preds = %._crit_edge679, %.lr.ph682
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  %i.aaw = getelementptr inbounds nuw i8, ptr %.sroa.0504.0681, i64 56 ; 3 uses
  %.not5.i3.i392 = icmp eq ptr %i.aaw, %.pn14.i237
  br i1 %.not5.i3.i392, label %_ZN4llvh16DenseMapIteratorIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS2_Lj2EEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EELb0EEppEv.exit397, label %.lr.ph.i4.i393

.lr.ph.i4.i393:                                   ; preds = %bb.cy, %.critedge2.i6.i395
  %.sroa.0504.1 = phi ptr [ %i.aay, %.critedge2.i6.i395 ], [ %i.aaw, %bb.cy ] ; 3 uses
  %i.aax = load ptr, ptr %.sroa.0504.1, align 8, !tbaa !37
  %magicptr.i5.i394 = ptrtoint ptr %i.aax to i64
  switch i64 %magicptr.i5.i394, label %_ZN4llvh16DenseMapIteratorIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS2_Lj2EEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EELb0EEppEv.exit397 [
    i64 -8, label %.critedge2.i6.i395
    i64 -16, label %.critedge2.i6.i395
  ]

.critedge2.i6.i395:                               ; preds = %.lr.ph.i4.i393, %.lr.ph.i4.i393
  %i.aay = getelementptr inbounds nuw i8, ptr %.sroa.0504.1, i64 56 ; 3 uses
  %.not.i7.i396 = icmp eq ptr %i.aay, %.pn14.i237
  br i1 %.not.i7.i396, label %_ZN4llvh16DenseMapIteratorIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS2_Lj2EEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EELb0EEppEv.exit397, label %.lr.ph.i4.i393, !llvm.loop !202

_ZN4llvh16DenseMapIteratorIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS2_Lj2EEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EELb0EEppEv.exit397: ; preds = %.lr.ph.i4.i393, %.critedge2.i6.i395, %bb.cy
  %.sroa.0504.2 = phi ptr [ %i.aaw, %bb.cy ], [ %i.aay, %.critedge2.i6.i395 ], [ %.sroa.0504.1, %.lr.ph.i4.i393 ] ; 2 uses
  %.not604 = icmp eq ptr %.sroa.0504.2, %i.ot
  br i1 %.not604, label %._crit_edge683, label %.lr.ph682
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E11try_emplaceIJRiEEESt4pairINS_16DenseMapIteratorIS5_iS7_SA_Lb0EEEbERKS5_DpOT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.89") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load i32, ptr %1, align 8                ; 3 uses
  %i.c = and i32 %i.b, 1                          ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.c, 0             ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %.not.i.i.i.i, ptr %i.e, ptr %i.d ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i.i.i, i32 %i.h, i32 16 ; 9 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %2, align 8, !tbaa !37     ; 3 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = trunc i64 %i.l to i32                    ; 2 uses
  %i.n = lshr i32 %i.m, 4
  %i.o = lshr i32 %i.m, 9
  %i.p = xor i32 %i.n, %i.o
  %i.q = add i32 %i.i, -1                         ; 2 uses
  %.02945.i.i = and i32 %i.p, %i.q                ; 2 uses
  %i.r = zext nneg i32 %.02945.i.i to i64
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.r ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !37   ; 2 uses
  %i.u = icmp eq ptr %i.k, %i.t
  br i1 %i.u, label %.loopexit, label %.lr.ph.i.i, !prof !181

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %i.v = phi ptr [ %i.af, %bb.d ], [ %i.t, %bb.b ] ; 2 uses
  %i.w = phi ptr [ %i.ae, %bb.d ], [ %i.s, %bb.b ] ; 2 uses
  %.02948.i.i = phi i32 [ %.029.i.i, %bb.d ], [ %.02945.i.i, %bb.b ]
  %.02747.i.i = phi i32 [ %i.ab, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.03246.i.i = phi ptr [ %spec.select.i.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %i.x = icmp eq ptr %i.v, inttoptr (i64 -8 to ptr)
  br i1 %i.x, label %bb.c, label %bb.d, !prof !31

bb.c:                                             ; preds = %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %.03246.i.i, null
  %i.y = select i1 %.not.i.i, ptr %i.w, ptr %.03246.i.i
end_hunk_1
