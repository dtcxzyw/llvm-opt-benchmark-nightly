Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/Analysis?download=true
inline.NumInlined: 1525
inline.NumDeleted: 715
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN6hermes12LoopAnalysisC2EPNS_8FunctionERKNS_13DominanceInfoE:.lr.ph664.a
  store i32 0, ptr %i.l, align 4, !tbaa !23
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  store i32 0, ptr %i.m, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  store i32 1, ptr %5, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 7 uses
  store i32 0, ptr %i.n, align 4, !tbaa !63
  %.07.i.i.i74.ptr = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 10 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i74.ptr, align 8, !tbaa !35
  %.07.i.i.i74.ptr.1 = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i74.ptr.1, align 8, !tbaa !35
  %.07.i.i.i74.ptr.2 = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i74.ptr.2, align 8, !tbaa !35
  %.07.i.i.i74.ptr.3 = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i74.ptr.3, align 8, !tbaa !35
  %.07.i.i.i74.ptr.4 = getelementptr inbounds nuw i8, ptr %5, i64 72
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i74.ptr.4, align 8, !tbaa !35
  %.07.i.i.i74.ptr.5 = getelementptr inbounds nuw i8, ptr %5, i64 88
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i74.ptr.5, align 8, !tbaa !35
  %.07.i.i.i74.ptr.6 = getelementptr inbounds nuw i8, ptr %5, i64 104
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i74.ptr.6, align 8, !tbaa !35
  %.07.i.i.i74.ptr.7 = getelementptr inbounds nuw i8, ptr %5, i64 120
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i74.ptr.7, align 8, !tbaa !35
  %.07.i.i.i74.ptr.8 = getelementptr inbounds nuw i8, ptr %5, i64 136
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i74.ptr.8, align 8, !tbaa !35
  %.07.i.i.i74.ptr.9 = getelementptr inbounds nuw i8, ptr %5, i64 152
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i74.ptr.9, align 8, !tbaa !35
  %.07.i.i.i74.ptr.10 = getelementptr inbounds nuw i8, ptr %5, i64 168
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i74.ptr.10, align 8, !tbaa !35
  %.07.i.i.i74.ptr.11 = getelementptr inbounds nuw i8, ptr %5, i64 184
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i74.ptr.11, align 8, !tbaa !35
  %.07.i.i.i74.ptr.12 = getelementptr inbounds nuw i8, ptr %5, i64 200
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i74.ptr.12, align 8, !tbaa !35
  %.07.i.i.i74.ptr.13 = getelementptr inbounds nuw i8, ptr %5, i64 216
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i74.ptr.13, align 8, !tbaa !35
  %.07.i.i.i74.ptr.14 = getelementptr inbounds nuw i8, ptr %5, i64 232
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i74.ptr.14, align 8, !tbaa !35
  %.07.i.i.i74.ptr.15 = getelementptr inbounds nuw i8, ptr %5, i64 248
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i74.ptr.15, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  store i32 1, ptr %6, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 0, ptr %i.o, align 4, !tbaa !70
  %.07.i.i.i82.ptr = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 18 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i82.ptr, align 8, !tbaa !35
  %.07.i.i.i82.ptr.1 = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i82.ptr.1, align 8, !tbaa !35
  %.07.i.i.i82.ptr.2 = getelementptr inbounds nuw i8, ptr %6, i64 120
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i82.ptr.2, align 8, !tbaa !35
  %.07.i.i.i82.ptr.3 = getelementptr inbounds nuw i8, ptr %6, i64 176
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i82.ptr.3, align 8, !tbaa !35
  %.07.i.i.i82.ptr.4 = getelementptr inbounds nuw i8, ptr %6, i64 232
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i82.ptr.4, align 8, !tbaa !35
  %.07.i.i.i82.ptr.5 = getelementptr inbounds nuw i8, ptr %6, i64 288
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i82.ptr.5, align 8, !tbaa !35
  %.07.i.i.i82.ptr.6 = getelementptr inbounds nuw i8, ptr %6, i64 344
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i82.ptr.6, align 8, !tbaa !35
  %.07.i.i.i82.ptr.7 = getelementptr inbounds nuw i8, ptr %6, i64 400
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i82.ptr.7, align 8, !tbaa !35
  %.07.i.i.i82.ptr.8 = getelementptr inbounds nuw i8, ptr %6, i64 456
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i82.ptr.8, align 8, !tbaa !35
  %.07.i.i.i82.ptr.9 = getelementptr inbounds nuw i8, ptr %6, i64 512
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i82.ptr.9, align 8, !tbaa !35
  %.07.i.i.i82.ptr.10 = getelementptr inbounds nuw i8, ptr %6, i64 568
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i82.ptr.10, align 8, !tbaa !35
  %.07.i.i.i82.ptr.11 = getelementptr inbounds nuw i8, ptr %6, i64 624
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i82.ptr.11, align 8, !tbaa !35
  %.07.i.i.i82.ptr.12 = getelementptr inbounds nuw i8, ptr %6, i64 680
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i82.ptr.12, align 8, !tbaa !35
  %.07.i.i.i82.ptr.13 = getelementptr inbounds nuw i8, ptr %6, i64 736
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i82.ptr.13, align 8, !tbaa !35
  %.07.i.i.i82.ptr.14 = getelementptr inbounds nuw i8, ptr %6, i64 792
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i82.ptr.14, align 8, !tbaa !35
  %.07.i.i.i82.ptr.15 = getelementptr inbounds nuw i8, ptr %6, i64 848
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i82.ptr.15, align 8, !tbaa !35
  %.phi.trans.insert3.i.i56 = getelementptr inbounds nuw i8, ptr %0, i64 280
  %.phi.trans.insert3.i.i64 = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %.phi.trans.insert3.i.i71 = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %.phi.trans.insert3.i.i79 = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.p, ptr %7, align 8, !tbaa !26
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  store i32 16, ptr %i.r, align 4, !tbaa !28
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !40
  %i.u = ptrtoint ptr %i.t to i64
  store i64 %i.u, ptr %i.p, align 8
  store i32 1, ptr %i.q, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 6 uses
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph664.a, %.loopexit614
  %i.ab = phi i32 [ 1, %.lr.ph664.a ], [ %i.nc, %.loopexit614 ]
  %i.ac = zext i32 %i.ab to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.ad = load ptr, ptr %7, align 8, !tbaa !26
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ac
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !35
  store ptr %i.ag, ptr %i.b, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  call void @_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E11try_emplaceIJRiEEESt4pairINS_16DenseMapIteratorIS5_iS7_SA_Lb0EEEbERKS5_DpOT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.89") align 8 %8, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.ah = load i8, ptr %i.v, align 8, !tbaa !74, !range !227, !noundef !41
  %i.ai = trunc nuw i8 %i.ah to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  br i1 %i.ai, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.aj = load i32, ptr %i.a, align 4, !tbaa !11
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.a, align 4, !tbaa !11
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !35
  %i.am = call noundef ptr @_ZN6hermes10BasicBlock13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %i.al) #11
  %i.an = load ptr, ptr %i.b, align 8, !tbaa !35
  %i.ao = call noundef ptr @_ZN6hermes10BasicBlock13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %i.an) #11 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i, label %.loopexit614, label %_ZN6hermes8succ_endEPNS_10BasicBlockE.exit

_ZN6hermes8succ_endEPNS_10BasicBlockE.exit:       ; preds = %bb.b
  %i.ap = call noundef i32 @_ZNK6hermes14TerminatorInst16getNumSuccessorsEv(ptr noundef nonnull align 8 dereferenceable(132) %i.ao) #11 ; 2 uses
  %.not602660 = icmp eq i32 %i.ap, 0
  br i1 %.not602660, label %.loopexit614, label %.lr.ph662, !llvm.loop !209

.lr.ph662:                                        ; preds = %_ZN6hermes8succ_endEPNS_10BasicBlockE.exit
  br label %bb.c, !llvm.loop !209

bb.c:                                             ; preds = %.lr.ph662, %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E5countES5_.exit
  %.sroa.4563.0661 = phi i32 [ 0, %.lr.ph662 ], [ %i.ev, %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E5countES5_.exit ] ; 2 uses
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
  %.02745.i.i = and i32 %i.bd, %i.bc              ; 2 uses
  %i.be = zext nneg i32 %.02745.i.i to i64
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !35 ; 2 uses
  %i.bh = icmp eq ptr %i.aq, %i.bg
  br i1 %i.bh, label %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E5countES5_.exit, label %.lr.ph.i.i, !prof !75

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.e
  %i.bi = phi ptr [ %i.bo, %bb.e ], [ %i.bg, %bb.d ]
  %.02748.i.i = phi i32 [ %.027.i.i, %bb.e ], [ %.02745.i.i, %bb.d ]
  %.047.i.i = phi i32 [ %i.bk, %bb.e ], [ 1, %bb.d ] ; 2 uses
  %i.bj = icmp eq ptr %i.bi, inttoptr (i64 -8 to ptr)
  br i1 %i.bj, label %.loopexit612, label %bb.e, !prof !32

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.bk = add i32 %.047.i.i, 1
  %i.bl = add i32 %.047.i.i, %.02748.i.i
  %.027.i.i = and i32 %i.bl, %i.bd                ; 2 uses
  %i.bm = zext i32 %.027.i.i to i64
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !35 ; 2 uses
  %i.bp = icmp eq ptr %i.aq, %i.bo
  br i1 %i.bp, label %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E5countES5_.exit, label %.lr.ph.i.i, !prof !76, !llvm.loop !1

.loopexit612:                                     ; preds = %.lr.ph.i.i, %bb.c
  %i.bq = load i32, ptr %i.q, align 8, !tbaa !27  ; 2 uses
  %i.br = load i32, ptr %i.r, align 4, !tbaa !28
  %.not.i86 = icmp ult i32 %i.bq, %i.br
  br i1 %.not.i86, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit88, label %bb.f, !prof !32

bb.f:                                             ; preds = %.loopexit612
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull %i.p, i64 noundef 0, i64 noundef 8) #11
  %.pre.i87 = load i32, ptr %i.q, align 8, !tbaa !27
  br label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit88

_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit88: ; preds = %.loopexit612, %bb.f
  %i.bs = phi i32 [ %.pre.i87, %bb.f ], [ %i.bq, %.loopexit612 ]
  %i.bt = load ptr, ptr %7, align 8, !tbaa !26
  %i.bu = zext i32 %i.bs to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bu
  %i.bw = ptrtoint ptr %i.aq to i64               ; 3 uses
  store i64 %i.bw, ptr %i.bv, align 1
  %i.bx = load i32, ptr %i.q, align 8, !tbaa !27
  %i.by = add i32 %i.bx, 1
  store i32 %i.by, ptr %i.q, align 8, !tbaa !27
  %i.bz = load ptr, ptr %i.b, align 8, !tbaa !35
  %i.ca = load i32, ptr %5, align 8               ; 3 uses
  %i.cb = and i32 %i.ca, 1
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
  %.02745.i.i.i399 = and i32 %i.cl, %i.ck         ; 2 uses
  %i.cm = zext nneg i32 %.02745.i.i.i399 to i64
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %i.cm ; 3 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !35 ; 2 uses
  %i.cp = icmp eq ptr %i.aq, %i.co
  br i1 %i.cp, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E16FindAndConstructERKS5_.exit, label %.lr.ph.i.i.i400, !prof !75

.lr.ph.i.i.i400:                                  ; preds = %bb.g, %bb.i
  %i.cq = phi ptr [ %i.da, %bb.i ], [ %i.co, %bb.g ] ; 2 uses
  %i.cr = phi ptr [ %i.cz, %bb.i ], [ %i.cn, %bb.g ] ; 2 uses
  %.02748.i.i.i401 = phi i32 [ %.027.i.i.i406, %bb.i ], [ %.02745.i.i.i399, %bb.g ]
  %.047.i.i.i402 = phi i32 [ %i.cw, %bb.i ], [ 1, %bb.g ] ; 2 uses
  %.02946.i.i.i403 = phi ptr [ %spec.select.i.i.i405, %bb.i ], [ null, %bb.g ] ; 4 uses
  %i.cs = icmp eq ptr %i.cq, inttoptr (i64 -8 to ptr)
  br i1 %i.cs, label %bb.h, label %bb.i, !prof !32

bb.h:                                             ; preds = %.lr.ph.i.i.i400
  %.not.i.i.i408 = icmp eq ptr %.02946.i.i.i403, null
  %i.ct = select i1 %.not.i.i.i408, ptr %i.cr, ptr %.02946.i.i.i403
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit.i

bb.i:                                             ; preds = %.lr.ph.i.i.i400
  %i.cu = icmp eq ptr %i.cq, inttoptr (i64 -16 to ptr)
  %i.cv = icmp eq ptr %.02946.i.i.i403, null
  %or.cond.not.i.i.i404 = select i1 %i.cu, i1 %i.cv, i1 false
  %spec.select.i.i.i405 = select i1 %or.cond.not.i.i.i404, ptr %i.cr, ptr %.02946.i.i.i403
  %i.cw = add i32 %.047.i.i.i402, 1
  %i.cx = add i32 %.047.i.i.i402, %.02748.i.i.i401
  %.027.i.i.i406 = and i32 %i.cx, %i.cl           ; 2 uses
  %i.cy = zext i32 %.027.i.i.i406 to i64
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %i.cy ; 3 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !35 ; 2 uses
  %i.db = icmp eq ptr %i.aq, %i.da
  br i1 %i.db, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E16FindAndConstructERKS5_.exit, label %.lr.ph.i.i.i400, !prof !76, !llvm.loop !2

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit.i: ; preds = %bb.h, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit88
  %.sink.i.i.i409 = phi ptr [ %i.ct, %bb.h ], [ null, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit88 ]
  %i.dc = lshr i32 %i.ca, 1                       ; 2 uses
  %i.dd = shl i32 %i.dc, 2
  %i.de = add i32 %i.dd, 4
  %i.df = mul i32 %i.cf, 3
  %.not.i.i5.i = icmp ult i32 %i.de, %i.df
  br i1 %.not.i.i5.i, label %bb.k, label %bb.j, !prof !32

bb.j:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit.i
  %i.dg = shl i32 %i.cf, 1
  br label %.sink.split.i.i.i

bb.k:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit.i
  %i.dh = load i32, ptr %i.n, align 4, !tbaa !63
  %.neg.i.i.i = xor i32 %i.dc, -1
  %.neg13.i.i.i = add i32 %i.cf, %.neg.i.i.i
  %i.di = sub i32 %.neg13.i.i.i, %i.dh
  %i.dj = lshr i32 %i.cf, 3
  %.not10.i.i.i = icmp ugt i32 %i.di, %i.dj
  br i1 %.not10.i.i.i, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit, label %.sink.split.i.i.i, !prof !32

.sink.split.i.i.i:                                ; preds = %bb.k, %bb.j
  %.sink.i.i6.i = phi i32 [ %i.dg, %bb.j ], [ %i.cf, %bb.k ]
  call void @_ZN4llvh13SmallDenseMapIPKN6hermes10BasicBlockEPS2_Lj16ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(264) %5, i32 noundef %.sink.i.i6.i)
  %i.dk = load i32, ptr %5, align 8               ; 4 uses
  %i.dl = and i32 %i.dk, 1
  %.not.i.i.i.i460 = icmp eq i32 %i.dl, 0         ; 2 uses
  %i.dm = load ptr, ptr %.07.i.i.i74.ptr, align 8
  %i.dn = select i1 %.not.i.i.i.i460, ptr %i.dm, ptr %.07.i.i.i74.ptr ; 2 uses
  %i.do = load i32, ptr %.phi.trans.insert3.i.i71, align 8
  %i.dp = select i1 %.not.i.i.i.i460, i32 %i.do, i32 16 ; 2 uses
  %i.dq = icmp ne i32 %i.dp, 0
  call void @llvm.assume(i1 %i.dq)
  %i.dr = trunc i64 %i.bw to i32                  ; 2 uses
  %i.ds = lshr i32 %i.dr, 4
  %i.dt = lshr i32 %i.dr, 9
  %i.du = xor i32 %i.ds, %i.dt
  %i.dv = add i32 %i.dp, -1                       ; 2 uses
  %.02745.i.i461 = and i32 %i.dv, %i.du           ; 2 uses
  %i.dw = zext nneg i32 %.02745.i.i461 to i64
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %i.dn, i64 %i.dw ; 3 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !35 ; 2 uses
  %i.dz = icmp eq ptr %i.aq, %i.dy
  br i1 %i.dz, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit, label %.lr.ph.i.i462, !prof !75

.lr.ph.i.i462:                                    ; preds = %.sink.split.i.i.i, %bb.m
  %i.ea = phi ptr [ %i.ek, %bb.m ], [ %i.dy, %.sink.split.i.i.i ] ; 2 uses
  %i.eb = phi ptr [ %i.ej, %bb.m ], [ %i.dx, %.sink.split.i.i.i ] ; 2 uses
  %.02748.i.i463 = phi i32 [ %.027.i.i466, %bb.m ], [ %.02745.i.i461, %.sink.split.i.i.i ]
  %.047.i.i464 = phi i32 [ %i.eg, %bb.m ], [ 1, %.sink.split.i.i.i ] ; 2 uses
  %.02946.i.i = phi ptr [ %spec.select.i.i465, %bb.m ], [ null, %.sink.split.i.i.i ] ; 4 uses
  %i.ec = icmp eq ptr %i.ea, inttoptr (i64 -8 to ptr)
  br i1 %i.ec, label %bb.l, label %bb.m, !prof !32

bb.l:                                             ; preds = %.lr.ph.i.i462
  %.not.i.i469 = icmp eq ptr %.02946.i.i, null
  %i.ed = select i1 %.not.i.i469, ptr %i.eb, ptr %.02946.i.i
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit

bb.m:                                             ; preds = %.lr.ph.i.i462
  %i.ee = icmp eq ptr %i.ea, inttoptr (i64 -16 to ptr)
  %i.ef = icmp eq ptr %.02946.i.i, null
  %or.cond.not.i.i = select i1 %i.ee, i1 %i.ef, i1 false
  %spec.select.i.i465 = select i1 %or.cond.not.i.i, ptr %i.eb, ptr %.02946.i.i
  %i.eg = add i32 %.047.i.i464, 1
  %i.eh = add i32 %.047.i.i464, %.02748.i.i463
  %.027.i.i466 = and i32 %i.eh, %i.dv             ; 2 uses
  %i.ei = zext i32 %.027.i.i466 to i64
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %i.dn, i64 %i.ei ; 3 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !35 ; 2 uses
  %i.el = icmp eq ptr %i.aq, %i.ek
  br i1 %i.el, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit, label %.lr.ph.i.i462, !prof !76, !llvm.loop !2

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit: ; preds = %bb.m, %bb.l, %.sink.split.i.i.i, %bb.k
  %i.em = phi ptr [ %.sink.i.i.i409, %bb.k ], [ %i.ed, %bb.l ], [ %i.dx, %.sink.split.i.i.i ], [ %i.ej, %bb.m ] ; 4 uses
  %i.en = phi i32 [ %i.ca, %bb.k ], [ %i.dk, %bb.l ], [ %i.dk, %.sink.split.i.i.i ], [ %i.dk, %bb.m ]
  %i.eo = add i32 %i.en, 2
  store i32 %i.eo, ptr %5, align 8
  %i.ep = load ptr, ptr %i.em, align 8, !tbaa !35
  %i.eq = icmp eq ptr %i.ep, inttoptr (i64 -8 to ptr)
  br i1 %i.eq, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E16InsertIntoBucketIRKS5_JEEEPSB_SH_OT_DpOT0_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit
  %i.er = load i32, ptr %i.n, align 4, !tbaa !63
  %i.es = add i32 %i.er, -1
  store i32 %i.es, ptr %i.n, align 4, !tbaa !63
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E16InsertIntoBucketIRKS5_JEEEPSB_SH_OT_DpOT0_.exit.i

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E16InsertIntoBucketIRKS5_JEEEPSB_SH_OT_DpOT0_.exit.i: ; preds = %bb.n, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit
  store ptr %i.aq, ptr %i.em, align 8, !tbaa !35
  %i.et = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store ptr null, ptr %i.et, align 8, !tbaa !35
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E16FindAndConstructERKS5_.exit

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E16FindAndConstructERKS5_.exit: ; preds = %bb.i, %bb.g, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E16InsertIntoBucketIRKS5_JEEEPSB_SH_OT_DpOT0_.exit.i
  %.0.i = phi ptr [ %i.em, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E16InsertIntoBucketIRKS5_JEEEPSB_SH_OT_DpOT0_.exit.i ], [ %i.cn, %bb.g ], [ %i.cz, %bb.i ]
  %i.eu = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store ptr %i.bz, ptr %i.eu, align 8, !tbaa !35
  br label %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E5countES5_.exit

_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E5countES5_.exit: ; preds = %bb.e, %bb.d, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E16FindAndConstructERKS5_.exit
  %i.ev = add nuw nsw i32 %.sroa.4563.0661, 1     ; 2 uses
  %.not602.a = icmp eq i32 %i.ev, %i.ap
  br i1 %.not602.a, label %..loopexit614_crit_edge, label %bb.c, !llvm.loop !210

bb.o:                                             ; preds = %bb.a
  %i.ew = load i32, ptr %i.q, align 8, !tbaa !27
  %i.ex = add i32 %i.ew, -1
  store i32 %i.ex, ptr %i.q, align 8, !tbaa !27
  %i.ey = load ptr, ptr %i.b, align 8, !tbaa !35  ; 3 uses
  %i.ez = load ptr, ptr %i.j, align 8, !tbaa !21  ; 6 uses
  %i.fa = load ptr, ptr %4, align 8, !tbaa !20    ; 3 uses
  %i.fb = icmp eq ptr %i.ez, %i.fa
  br i1 %i.fb, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.fc = load i32, ptr %i.l, align 4, !tbaa !23  ; 4 uses
  %i.fd = zext i32 %i.fc to i64                   ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.fd, 3
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fa, i64 %.idx.i.i.i
  %.not18.i.i.i = icmp eq i32 %i.fc, 0
  br i1 %.not18.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i91

.lr.ph.i.i.i91:                                   ; preds = %bb.p, %bb.q
  %.01219.i.i.i = phi ptr [ %i.fh, %bb.q ], [ %i.fa, %bb.p ] ; 3 uses
  %i.ff = load ptr, ptr %.01219.i.i.i, align 8, !tbaa !30
  %i.fg = icmp eq ptr %i.ff, %i.ey
  br i1 %i.fg, label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i91
  %i.fh = getelementptr inbounds nuw i8, ptr %.01219.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i92 = icmp eq ptr %i.fh, %i.fe
  br i1 %.not.i.i.i92, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i91, !llvm.loop !211

._crit_edge.i.i.i:                                ; preds = %bb.q, %bb.p
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.fd
  br label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i

bb.r:                                             ; preds = %bb.o
  %i.fj = call noundef ptr @_ZNK4llvh19SmallPtrSetImplBase13FindBucketForEPKv(ptr noundef nonnull align 8 dereferenceable(28) %4, ptr noundef %i.ey) #11 ; 2 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !30
  %i.fl = icmp eq ptr %i.fk, %i.ey
  %.pre.i.i = load ptr, ptr %i.j, align 8, !tbaa !21 ; 4 uses
  %.pre4.i.i89 = load ptr, ptr %4, align 8, !tbaa !20 ; 3 uses
  br i1 %i.fl, label %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i, label %bb.s

._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i: ; preds = %bb.r
  %.pre5.i.i = load i32, ptr %i.l, align 4
  br label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i

bb.s:                                             ; preds = %bb.r
  %i.fm = icmp eq ptr %.pre.i.i, %.pre4.i.i89
  %i.fn = load i32, ptr %i.l, align 4             ; 2 uses
  %i.fo = load i32, ptr %i.k, align 8
  %.v.v.i14.i.i.i = select i1 %i.fm, i32 %i.fn, i32 %i.fo
  %.v.i15.i.i.i = zext i32 %.v.v.i14.i.i.i to i64
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %.v.i15.i.i.i
  br label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i

_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i: ; preds = %.lr.ph.i.i.i91, %bb.s, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i, %._crit_edge.i.i.i
  %i.fq = phi ptr [ %i.ez, %._crit_edge.i.i.i ], [ %.pre4.i.i89, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i ], [ %.pre4.i.i89, %bb.s ], [ %i.ez, %.lr.ph.i.i.i91 ]
  %i.fr = phi i32 [ %i.fc, %._crit_edge.i.i.i ], [ %.pre5.i.i, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i ], [ %i.fn, %bb.s ], [ %i.fc, %.lr.ph.i.i.i91 ]
  %i.fs = phi ptr [ %i.ez, %._crit_edge.i.i.i ], [ %.pre.i.i, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i ], [ %.pre.i.i, %bb.s ], [ %i.ez, %.lr.ph.i.i.i91 ] ; 2 uses
  %.2.i.i.i = phi ptr [ %i.fi, %._crit_edge.i.i.i ], [ %i.fj, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i ], [ %i.fp, %bb.s ], [ %.01219.i.i.i, %.lr.ph.i.i.i91 ] ; 2 uses
  %i.ft = icmp eq ptr %i.fs, %i.fq
  %i.fu = load i32, ptr %i.k, align 8
  %.v.v.i4.i.i.i = select i1 %i.ft, i32 %i.fr, i32 %i.fu
  %.v.i5.i.i.i = zext i32 %.v.v.i4.i.i.i to i64
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %.v.i5.i.i.i ; 3 uses
  %.not3.i4.i.i6.i.i.i = icmp eq ptr %.2.i.i.i, %i.fv
  br i1 %.not3.i4.i.i6.i.i.i, label %_ZNK4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE5countES4_.exit.thread, label %.lr.ph.i5.i.i7.i.i.i

.lr.ph.i5.i.i7.i.i.i:                             ; preds = %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i, %.critedge2.i7.i.i9.i.i.i
  %.sroa.0.3.i.i.i = phi ptr [ %i.fx, %.critedge2.i7.i.i9.i.i.i ], [ %.2.i.i.i, %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i ] ; 3 uses
  %i.fw = load ptr, ptr %.sroa.0.3.i.i.i, align 8, !tbaa !30
  %switch.i6.i.i8.i.i.i = icmp ugt ptr %i.fw, inttoptr (i64 -3 to ptr)
  br i1 %switch.i6.i.i8.i.i.i, label %.critedge2.i7.i.i9.i.i.i, label %_ZNK4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE5countES4_.exit

.critedge2.i7.i.i9.i.i.i:                         ; preds = %.lr.ph.i5.i.i7.i.i.i
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i.i.i, i64 8 ; 2 uses
  %.not.i8.i.i10.i.i.i = icmp eq ptr %i.fx, %i.fv
  br i1 %.not.i8.i.i10.i.i.i, label %_ZNK4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE5countES4_.exit.thread, label %.lr.ph.i5.i.i7.i.i.i, !llvm.loop !212

_ZNK4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE5countES4_.exit: ; preds = %.lr.ph.i5.i.i7.i.i.i
  %.not596.a = icmp eq ptr %.sroa.0.3.i.i.i, %i.fv
  br i1 %.not596.a, label %_ZNK4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE5countES4_.exit.thread, label %.loopexit614, !llvm.loop !209

_ZNK4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE5countES4_.exit.thread: ; preds = %.critedge2.i7.i.i9.i.i.i, %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i, %_ZNK4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE5countES4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  store ptr %i.w, ptr %9, align 8, !tbaa !20
  store ptr %i.w, ptr %i.x, align 8, !tbaa !21
  store i32 2, ptr %i.y, align 8, !tbaa !22
  store i32 0, ptr %i.z, align 4, !tbaa !23
  store i32 0, ptr %i.aa, align 8, !tbaa !24
  %i.fy = load ptr, ptr %i.b, align 8, !tbaa !35
  %i.fz = call noundef ptr @_ZN6hermes10BasicBlock13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %i.fy) #11
  %i.ga = load ptr, ptr %i.b, align 8, !tbaa !35
  %i.gb = call noundef ptr @_ZN6hermes10BasicBlock13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ga) #11 ; 2 uses
  %.not.i.i95 = icmp eq ptr %i.gb, null
  br i1 %.not.i.i95, label %._crit_edge, label %_ZN6hermes8succ_endEPNS_10BasicBlockE.exit99

_ZN6hermes8succ_endEPNS_10BasicBlockE.exit99:     ; preds = %_ZNK4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE5countES4_.exit.thread
  %i.gc = call noundef i32 @_ZNK6hermes14TerminatorInst16getNumSuccessorsEv(ptr noundef nonnull align 8 dereferenceable(132) %i.gb) #11 ; 2 uses
  %.not597657 = icmp eq i32 %i.gc, 0
  br i1 %.not597657, label %._crit_edge, label %.lr.ph659

._crit_edge:                                      ; preds = %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit, %_ZNK4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE5countES4_.exit.thread, %_ZN6hermes8succ_endEPNS_10BasicBlockE.exit99
  %i.gd = load i32, ptr %i.z, align 4, !tbaa !23
  %i.ge = load i32, ptr %i.aa, align 8, !tbaa !24
  %i.gf = icmp eq i32 %i.gd, %i.ge
  br i1 %i.gf, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E11try_emplaceIJS8_EEESt4pairINS_16DenseMapIteratorIS5_S8_SA_SD_Lb0EEEbERKS5_DpOT_.exit, label %bb.ap

.lr.ph659:                                        ; preds = %_ZN6hermes8succ_endEPNS_10BasicBlockE.exit99, %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit
  %.sroa.4553.0658 = phi i32 [ %i.ld, %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit ], [ 0, %_ZN6hermes8succ_endEPNS_10BasicBlockE.exit99 ] ; 2 uses
  %i.gg = call noundef ptr @_ZNK6hermes14TerminatorInst12getSuccessorEj(ptr noundef nonnull align 8 dereferenceable(132) %i.fz, i32 noundef %.sroa.4553.0658) #11 ; 10 uses
  %i.gh = load ptr, ptr %i.j, align 8, !tbaa !21  ; 6 uses
  %i.gi = load ptr, ptr %4, align 8, !tbaa !20    ; 3 uses
  %i.gj = icmp eq ptr %i.gh, %i.gi
  br i1 %i.gj, label %bb.t, label %bb.v

bb.t:                                             ; preds = %.lr.ph659
  %i.gk = load i32, ptr %i.l, align 4, !tbaa !23  ; 4 uses
  %i.gl = zext i32 %i.gk to i64                   ; 2 uses
  %.idx.i.i.i120 = shl nuw nsw i64 %i.gl, 3
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gi, i64 %.idx.i.i.i120
  %.not18.i.i.i121 = icmp eq i32 %i.gk, 0
  br i1 %.not18.i.i.i121, label %._crit_edge.i.i.i125, label %.lr.ph.i.i.i122

.lr.ph.i.i.i122:                                  ; preds = %bb.t, %bb.u
  %.01219.i.i.i123 = phi ptr [ %i.gp, %bb.u ], [ %i.gi, %bb.t ] ; 3 uses
  %i.gn = load ptr, ptr %.01219.i.i.i123, align 8, !tbaa !30
  %i.go = icmp eq ptr %i.gn, %i.gg
  br i1 %i.go, label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i104, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i.i122
  %i.gp = getelementptr inbounds nuw i8, ptr %.01219.i.i.i123, i64 8 ; 2 uses
  %.not.i.i.i124 = icmp eq ptr %i.gp, %i.gm
  br i1 %.not.i.i.i124, label %._crit_edge.i.i.i125, label %.lr.ph.i.i.i122, !llvm.loop !211

._crit_edge.i.i.i125:                             ; preds = %bb.u, %bb.t
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %i.gl
  br label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i104

bb.v:                                             ; preds = %.lr.ph659
  %i.gr = call noundef ptr @_ZNK4llvh19SmallPtrSetImplBase13FindBucketForEPKv(ptr noundef nonnull align 8 dereferenceable(28) %4, ptr noundef %i.gg) #11 ; 2 uses
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !30
  %i.gt = icmp eq ptr %i.gs, %i.gg
  %.pre.i.i100 = load ptr, ptr %i.j, align 8, !tbaa !21 ; 4 uses
  %.pre4.i.i101 = load ptr, ptr %4, align 8, !tbaa !20 ; 3 uses
  br i1 %i.gt, label %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i117, label %bb.w

._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i117: ; preds = %bb.v
  %.pre5.i.i119 = load i32, ptr %i.l, align 4
  br label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i104

bb.w:                                             ; preds = %bb.v
  %i.gu = icmp eq ptr %.pre.i.i100, %.pre4.i.i101
  %i.gv = load i32, ptr %i.l, align 4             ; 2 uses
  %i.gw = load i32, ptr %i.k, align 8
  %.v.v.i14.i.i.i102 = select i1 %i.gu, i32 %i.gv, i32 %i.gw
  %.v.i15.i.i.i103 = zext i32 %.v.v.i14.i.i.i102 to i64
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i100, i64 %.v.i15.i.i.i103
  br label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i104

_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i104: ; preds = %.lr.ph.i.i.i122, %bb.w, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i117, %._crit_edge.i.i.i125
  %i.gy = phi ptr [ %i.gh, %._crit_edge.i.i.i125 ], [ %.pre4.i.i101, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i117 ], [ %.pre4.i.i101, %bb.w ], [ %i.gh, %.lr.ph.i.i.i122 ]
  %i.gz = phi i32 [ %i.gk, %._crit_edge.i.i.i125 ], [ %.pre5.i.i119, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i117 ], [ %i.gv, %bb.w ], [ %i.gk, %.lr.ph.i.i.i122 ]
  %i.ha = phi ptr [ %i.gh, %._crit_edge.i.i.i125 ], [ %.pre.i.i100, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i117 ], [ %.pre.i.i100, %bb.w ], [ %i.gh, %.lr.ph.i.i.i122 ] ; 2 uses
  %.2.i.i.i105 = phi ptr [ %i.gq, %._crit_edge.i.i.i125 ], [ %i.gr, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i117 ], [ %i.gx, %bb.w ], [ %.01219.i.i.i123, %.lr.ph.i.i.i122 ] ; 2 uses
  %i.hb = icmp eq ptr %i.ha, %i.gy
  %i.hc = load i32, ptr %i.k, align 8
  %.v.v.i4.i.i.i106 = select i1 %i.hb, i32 %i.gz, i32 %i.hc
  %.v.i5.i.i.i107 = zext i32 %.v.v.i4.i.i.i106 to i64
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %.v.i5.i.i.i107 ; 3 uses
  %.not3.i4.i.i6.i.i.i108 = icmp eq ptr %.2.i.i.i105, %i.hd
  br i1 %.not3.i4.i.i6.i.i.i108, label %_ZNK4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE5countES4_.exit126.thread, label %.lr.ph.i5.i.i7.i.i.i109

.lr.ph.i5.i.i7.i.i.i109:                          ; preds = %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i104, %.critedge2.i7.i.i9.i.i.i115
end_hunk_0
begin_hunk_1_@_ZN6hermes12LoopAnalysisC2EPNS_8FunctionERKNS_13DominanceInfoE:.lr.ph664.a
    i64 -8, label %.critedge2.i6.i264
    i64 -16, label %.critedge2.i6.i264
  ]

.critedge2.i6.i264:                               ; preds = %.lr.ph.i4.i263, %.lr.ph.i4.i263
  %i.pr = getelementptr inbounds nuw i8, ptr %.sroa.0518.1, i64 56 ; 3 uses
  %.not.i7.i265 = icmp eq ptr %i.pr, %.pn14.i
  br i1 %.not.i7.i265, label %_ZN4llvh16DenseMapIteratorIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS2_Lj2EEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EELb0EEppEv.exit, label %.lr.ph.i4.i263, !llvm.loop !222

_ZN4llvh16DenseMapIteratorIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS2_Lj2EEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EELb0EEppEv.exit: ; preds = %.lr.ph.i4.i263, %.critedge2.i6.i264, %._crit_edge669
  %.sroa.0518.2 = phi ptr [ %i.pp, %._crit_edge669 ], [ %i.pr, %.critedge2.i6.i264 ], [ %.sroa.0518.1, %.lr.ph.i4.i263 ] ; 2 uses
  %.not603.a = icmp eq ptr %.sroa.0518.2, %i.od
  br i1 %.not603.a, label %._crit_edge673.loopexit, label %.lr.ph672

.lr.ph668:                                        ; preds = %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5beginEv.exit258, %_ZN4llvh19SmallPtrSetIteratorIPN6hermes10BasicBlockEEppEv.exit331
  %.sroa.0512.0667 = phi ptr [ %.sroa.0512.2, %_ZN4llvh19SmallPtrSetIteratorIPN6hermes10BasicBlockEEppEv.exit331 ], [ %.sroa.0.4.i8.i253, %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5beginEv.exit258 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.ps = load ptr, ptr %.sroa.0512.0667, align 8, !tbaa !30 ; 4 uses
  store ptr %i.ps, ptr %i.c, align 8, !tbaa !35
  %i.pt = load ptr, ptr %i.ne, align 8, !tbaa !21 ; 6 uses
  %i.pu = load ptr, ptr %10, align 8, !tbaa !20   ; 3 uses
  %i.pv = icmp eq ptr %i.pt, %i.pu
  br i1 %i.pv, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %.lr.ph668
  %i.pw = load i32, ptr %i.ng, align 4, !tbaa !23 ; 4 uses
  %i.px = zext i32 %i.pw to i64                   ; 2 uses
  %.idx.i.i.i286 = shl nuw nsw i64 %i.px, 3
  %i.py = getelementptr inbounds nuw i8, ptr %i.pu, i64 %.idx.i.i.i286
  %.not18.i.i.i287 = icmp eq i32 %i.pw, 0
  br i1 %.not18.i.i.i287, label %._crit_edge.i.i.i291, label %.lr.ph.i.i.i288

.lr.ph.i.i.i288:                                  ; preds = %bb.bd, %bb.be
  %.01219.i.i.i289 = phi ptr [ %i.qb, %bb.be ], [ %i.pu, %bb.bd ] ; 3 uses
  %i.pz = load ptr, ptr %.01219.i.i.i289, align 8, !tbaa !30
  %i.qa = icmp eq ptr %i.pz, %i.ps
  br i1 %i.qa, label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i270, label %bb.be

bb.be:                                            ; preds = %.lr.ph.i.i.i288
  %i.qb = getelementptr inbounds nuw i8, ptr %.01219.i.i.i289, i64 8 ; 2 uses
  %.not.i.i.i290 = icmp eq ptr %i.qb, %i.py
  br i1 %.not.i.i.i290, label %._crit_edge.i.i.i291, label %.lr.ph.i.i.i288, !llvm.loop !211

._crit_edge.i.i.i291:                             ; preds = %bb.be, %bb.bd
  %i.qc = getelementptr inbounds nuw [8 x i8], ptr %i.pt, i64 %i.px
  br label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i270

bb.bf:                                            ; preds = %.lr.ph668
  %i.qd = call noundef ptr @_ZNK4llvh19SmallPtrSetImplBase13FindBucketForEPKv(ptr noundef nonnull align 8 dereferenceable(28) %10, ptr noundef %i.ps) #11 ; 2 uses
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !30
  %i.qf = icmp eq ptr %i.qe, %i.ps
  %.pre.i.i266 = load ptr, ptr %i.ne, align 8, !tbaa !21 ; 4 uses
  %.pre4.i.i267 = load ptr, ptr %10, align 8, !tbaa !20 ; 3 uses
  br i1 %i.qf, label %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i283, label %bb.bg

._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i283: ; preds = %bb.bf
  %.pre5.i.i285 = load i32, ptr %i.ng, align 4
  br label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i270

bb.bg:                                            ; preds = %bb.bf
  %i.qg = icmp eq ptr %.pre.i.i266, %.pre4.i.i267
  %i.qh = load i32, ptr %i.ng, align 4            ; 2 uses
  %i.qi = load i32, ptr %i.nf, align 8
  %.v.v.i14.i.i.i268 = select i1 %i.qg, i32 %i.qh, i32 %i.qi
  %.v.i15.i.i.i269 = zext i32 %.v.v.i14.i.i.i268 to i64
  %i.qj = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i266, i64 %.v.i15.i.i.i269
  br label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i270

_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i270: ; preds = %.lr.ph.i.i.i288, %bb.bg, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i283, %._crit_edge.i.i.i291
  %i.qk = phi ptr [ %i.pt, %._crit_edge.i.i.i291 ], [ %.pre4.i.i267, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i283 ], [ %.pre4.i.i267, %bb.bg ], [ %i.pt, %.lr.ph.i.i.i288 ]
  %i.ql = phi i32 [ %i.pw, %._crit_edge.i.i.i291 ], [ %.pre5.i.i285, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i283 ], [ %i.qh, %bb.bg ], [ %i.pw, %.lr.ph.i.i.i288 ]
  %i.qm = phi ptr [ %i.pt, %._crit_edge.i.i.i291 ], [ %.pre.i.i266, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i283 ], [ %.pre.i.i266, %bb.bg ], [ %i.pt, %.lr.ph.i.i.i288 ] ; 2 uses
  %.2.i.i.i271 = phi ptr [ %i.qc, %._crit_edge.i.i.i291 ], [ %i.qd, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i283 ], [ %i.qj, %bb.bg ], [ %.01219.i.i.i289, %.lr.ph.i.i.i288 ] ; 2 uses
  %i.qn = icmp eq ptr %i.qm, %i.qk
  %i.qo = load i32, ptr %i.nf, align 8
  %.v.v.i4.i.i.i272 = select i1 %i.qn, i32 %i.ql, i32 %i.qo
  %.v.i5.i.i.i273 = zext i32 %.v.v.i4.i.i.i272 to i64
  %i.qp = getelementptr inbounds nuw [8 x i8], ptr %i.qm, i64 %.v.i5.i.i.i273 ; 3 uses
  %.not3.i4.i.i6.i.i.i274 = icmp eq ptr %.2.i.i.i271, %i.qp
  br i1 %.not3.i4.i.i6.i.i.i274, label %_ZNK4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE5countES4_.exit292.thread, label %.lr.ph.i5.i.i7.i.i.i275

.lr.ph.i5.i.i7.i.i.i275:                          ; preds = %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i270, %.critedge2.i7.i.i9.i.i.i281
  %.sroa.0.3.i.i.i276 = phi ptr [ %i.qr, %.critedge2.i7.i.i9.i.i.i281 ], [ %.2.i.i.i271, %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i270 ] ; 3 uses
  %i.qq = load ptr, ptr %.sroa.0.3.i.i.i276, align 8, !tbaa !30
  %switch.i6.i.i8.i.i.i277 = icmp ugt ptr %i.qq, inttoptr (i64 -3 to ptr)
  br i1 %switch.i6.i.i8.i.i.i277, label %.critedge2.i7.i.i9.i.i.i281, label %_ZNK4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE5countES4_.exit292

.critedge2.i7.i.i9.i.i.i281:                      ; preds = %.lr.ph.i5.i.i7.i.i.i275
  %i.qr = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i.i.i276, i64 8 ; 2 uses
  %.not.i8.i.i10.i.i.i282 = icmp eq ptr %i.qr, %i.qp
  br i1 %.not.i8.i.i10.i.i.i282, label %_ZNK4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE5countES4_.exit292.thread, label %.lr.ph.i5.i.i7.i.i.i275, !llvm.loop !212

_ZNK4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE5countES4_.exit292: ; preds = %.lr.ph.i5.i.i7.i.i.i275
  %.not608 = icmp eq ptr %.sroa.0.3.i.i.i276, %i.qp
  br i1 %.not608, label %_ZNK4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE5countES4_.exit292.thread, label %_ZN4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE6insertES4_.exit318

_ZNK4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE5countES4_.exit292.thread: ; preds = %.critedge2.i7.i.i9.i.i.i281, %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i270, %_ZNK4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE5countES4_.exit292
  %i.qs = load ptr, ptr %i.c, align 8, !tbaa !35
  %i.qt = call noundef zeroext i1 @_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE9dominatesEPKS2_S5_(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef %i.qs, ptr noundef %i.pb) #11
  %i.qu = load ptr, ptr %i.c, align 8, !tbaa !35  ; 13 uses
  br i1 %i.qt, label %bb.bn, label %bb.bh

bb.bh:                                            ; preds = %_ZNK4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE5countES4_.exit292.thread
  %i.qv = load ptr, ptr %i.ne, align 8, !tbaa !21, !noalias !236
  %i.qw = load ptr, ptr %10, align 8, !tbaa !20, !noalias !236 ; 3 uses
  %i.qx = icmp eq ptr %i.qv, %i.qw
  br i1 %i.qx, label %bb.bi, label %bb.bm

bb.bi:                                            ; preds = %bb.bh
  %i.qy = load i32, ptr %i.ng, align 4, !tbaa !23, !noalias !236 ; 4 uses
  %i.qz = zext i32 %i.qy to i64
  %.idx.i.i307 = shl nuw nsw i64 %i.qz, 3
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qw, i64 %.idx.i.i307 ; 2 uses
  %.not63.i.i308 = icmp eq i32 %i.qy, 0
  br i1 %.not63.i.i308, label %.critedge.thread.i.i317, label %.lr.ph.i.i309

.lr.ph.i.i309:                                    ; preds = %bb.bi, %bb.bj
  %.065.i.i310 = phi ptr [ %spec.select.i.i313, %bb.bj ], [ null, %bb.bi ]
  %.04964.i.i311 = phi ptr [ %i.rd, %bb.bj ], [ %i.qw, %bb.bi ] ; 3 uses
  %i.rb = load ptr, ptr %.04964.i.i311, align 8, !tbaa !30, !noalias !236 ; 2 uses
  %.not27.i.i312 = icmp eq ptr %i.rb, %i.qu
  br i1 %.not27.i.i312, label %_ZN4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE6insertES4_.exit318, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph.i.i309
  %i.rc = icmp eq ptr %i.rb, inttoptr (i64 -2 to ptr)
  %spec.select.i.i313 = select i1 %i.rc, ptr %.04964.i.i311, ptr %.065.i.i310 ; 3 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %.04964.i.i311, i64 8 ; 2 uses
  %.not.i.i314 = icmp eq ptr %i.rd, %i.ra
  br i1 %.not.i.i314, label %.critedge.i.i315, label %.lr.ph.i.i309, !llvm.loop !0

.critedge.i.i315:                                 ; preds = %bb.bj
  %.not28.i.i316 = icmp eq ptr %spec.select.i.i313, null
  br i1 %.not28.i.i316, label %.critedge.thread.i.i317, label %bb.bk

bb.bk:                                            ; preds = %.critedge.i.i315
  store ptr %i.qu, ptr %spec.select.i.i313, align 8, !tbaa !30, !noalias !236
  %i.re = load i32, ptr %i.nh, align 8, !tbaa !24, !noalias !236
  %i.rf = add i32 %i.re, -1
  store i32 %i.rf, ptr %i.nh, align 8, !tbaa !24, !noalias !236
  br label %_ZN4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE6insertES4_.exit318

.critedge.thread.i.i317:                          ; preds = %.critedge.i.i315, %bb.bi
  %i.rg = load i32, ptr %i.nf, align 8, !tbaa !22, !noalias !236
  %i.rh = icmp ult i32 %i.qy, %i.rg
  br i1 %i.rh, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %.critedge.thread.i.i317
  %i.ri = add nuw i32 %i.qy, 1
  store i32 %i.ri, ptr %i.ng, align 4, !tbaa !23, !noalias !236
  store ptr %i.qu, ptr %i.ra, align 8, !tbaa !30, !noalias !236
  br label %_ZN4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE6insertES4_.exit318

bb.bm:                                            ; preds = %.critedge.thread.i.i317, %bb.bh
  %i.rj = call { ptr, i8 } @_ZN4llvh19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(28) %10, ptr noundef %i.qu) #11, !noalias !236 ; 0 uses
  br label %_ZN4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE6insertES4_.exit318

bb.bn:                                            ; preds = %_ZNK4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE5countES4_.exit292.thread
  %i.rk = load i32, ptr %i.f, align 8
  %i.rl = and i32 %i.rk, 1
  %.not.i.i.i.i319 = icmp eq i32 %i.rl, 0         ; 2 uses
  %i.rm = load ptr, ptr %.07.i.i.i59.ptr, align 8
  %i.rn = select i1 %.not.i.i.i.i319, ptr %i.rm, ptr %.07.i.i.i59.ptr ; 2 uses
  %i.ro = load i32, ptr %.phi.trans.insert3.i.i56, align 8
  %i.rp = select i1 %.not.i.i.i.i319, i32 %i.ro, i32 16 ; 2 uses
  %i.rq = icmp eq i32 %i.rp, 0
  br i1 %i.rq, label %.loopexit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.rr = ptrtoint ptr %i.qu to i64
  %i.rs = trunc i64 %i.rr to i32                  ; 2 uses
  %i.rt = lshr i32 %i.rs, 4
  %i.ru = lshr i32 %i.rs, 9
  %i.rv = xor i32 %i.rt, %i.ru
  %i.rw = add i32 %i.rp, -1                       ; 2 uses
  %.02745.i.i320 = and i32 %i.rw, %i.rv           ; 2 uses
  %i.rx = zext nneg i32 %.02745.i.i320 to i64
  %i.ry = getelementptr inbounds nuw [16 x i8], ptr %i.rn, i64 %i.rx
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !35 ; 2 uses
  %i.sa = icmp eq ptr %i.qu, %i.rz
  br i1 %i.sa, label %_ZN4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE6insertES4_.exit318, label %.lr.ph.i.i321, !prof !75

.lr.ph.i.i321:                                    ; preds = %bb.bo, %bb.bp
  %i.sb = phi ptr [ %i.sh, %bb.bp ], [ %i.rz, %bb.bo ]
  %.02748.i.i322 = phi i32 [ %.027.i.i324, %bb.bp ], [ %.02745.i.i320, %bb.bo ]
  %.047.i.i323 = phi i32 [ %i.sd, %bb.bp ], [ 1, %bb.bo ] ; 2 uses
  %i.sc = icmp eq ptr %i.sb, inttoptr (i64 -8 to ptr)
  br i1 %i.sc, label %.loopexit, label %bb.bp, !prof !32

bb.bp:                                            ; preds = %.lr.ph.i.i321
  %i.sd = add i32 %.047.i.i323, 1
  %i.se = add i32 %.047.i.i323, %.02748.i.i322
  %.027.i.i324 = and i32 %i.se, %i.rw             ; 2 uses
  %i.sf = zext i32 %.027.i.i324 to i64
  %i.sg = getelementptr inbounds nuw [16 x i8], ptr %i.rn, i64 %i.sf
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !35 ; 2 uses
  %i.si = icmp eq ptr %i.qu, %i.sh
  br i1 %i.si, label %_ZN4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE6insertES4_.exit318, label %.lr.ph.i.i321, !prof !76, !llvm.loop !2

.loopexit:                                        ; preds = %.lr.ph.i.i321, %bb.bn
  %i.sj = load i32, ptr %5, align 8               ; 3 uses
  %i.sk = and i32 %i.sj, 1
  %.not.i.i.i.i.i411 = icmp eq i32 %i.sk, 0       ; 2 uses
  %i.sl = load ptr, ptr %.07.i.i.i74.ptr, align 8
  %i.sm = select i1 %.not.i.i.i.i.i411, ptr %i.sl, ptr %.07.i.i.i74.ptr ; 2 uses
  %i.sn = load i32, ptr %.phi.trans.insert3.i.i71, align 8
  %i.so = select i1 %.not.i.i.i.i.i411, i32 %i.sn, i32 16 ; 7 uses
  %i.sp = icmp eq i32 %i.so, 0
  br i1 %i.sp, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit.i423, label %bb.bq

bb.bq:                                            ; preds = %.loopexit
  %i.sq = ptrtoint ptr %i.qu to i64
  %i.sr = trunc i64 %i.sq to i32                  ; 2 uses
  %i.ss = lshr i32 %i.sr, 4
  %i.st = lshr i32 %i.sr, 9
  %i.su = xor i32 %i.ss, %i.st
  %i.sv = add i32 %i.so, -1                       ; 2 uses
  %.02745.i.i.i412 = and i32 %i.sv, %i.su         ; 2 uses
  %i.sw = zext nneg i32 %.02745.i.i.i412 to i64
  %i.sx = getelementptr inbounds nuw [16 x i8], ptr %i.sm, i64 %i.sw ; 3 uses
  %i.sy = load ptr, ptr %i.sx, align 8, !tbaa !35 ; 2 uses
  %i.sz = icmp eq ptr %i.qu, %i.sy
  br i1 %i.sz, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E16FindAndConstructERKS5_.exit436, label %.lr.ph.i.i.i413, !prof !75

.lr.ph.i.i.i413:                                  ; preds = %bb.bq, %bb.bs
  %i.ta = phi ptr [ %i.tk, %bb.bs ], [ %i.sy, %bb.bq ] ; 2 uses
  %i.tb = phi ptr [ %i.tj, %bb.bs ], [ %i.sx, %bb.bq ] ; 2 uses
  %.02748.i.i.i414 = phi i32 [ %.027.i.i.i419, %bb.bs ], [ %.02745.i.i.i412, %bb.bq ]
  %.047.i.i.i415 = phi i32 [ %i.tg, %bb.bs ], [ 1, %bb.bq ] ; 2 uses
  %.02946.i.i.i416 = phi ptr [ %spec.select.i.i.i418, %bb.bs ], [ null, %bb.bq ] ; 4 uses
  %i.tc = icmp eq ptr %i.ta, inttoptr (i64 -8 to ptr)
  br i1 %i.tc, label %bb.br, label %bb.bs, !prof !32

bb.br:                                            ; preds = %.lr.ph.i.i.i413
  %.not.i.i.i422 = icmp eq ptr %.02946.i.i.i416, null
  %i.td = select i1 %.not.i.i.i422, ptr %i.tb, ptr %.02946.i.i.i416
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit.i423

bb.bs:                                            ; preds = %.lr.ph.i.i.i413
  %i.te = icmp eq ptr %i.ta, inttoptr (i64 -16 to ptr)
  %i.tf = icmp eq ptr %.02946.i.i.i416, null
  %or.cond.not.i.i.i417 = select i1 %i.te, i1 %i.tf, i1 false
  %spec.select.i.i.i418 = select i1 %or.cond.not.i.i.i417, ptr %i.tb, ptr %.02946.i.i.i416
  %i.tg = add i32 %.047.i.i.i415, 1
  %i.th = add i32 %.047.i.i.i415, %.02748.i.i.i414
  %.027.i.i.i419 = and i32 %i.th, %i.sv           ; 2 uses
  %i.ti = zext i32 %.027.i.i.i419 to i64
  %i.tj = getelementptr inbounds nuw [16 x i8], ptr %i.sm, i64 %i.ti ; 3 uses
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !35 ; 2 uses
  %i.tl = icmp eq ptr %i.qu, %i.tk
  br i1 %i.tl, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E16FindAndConstructERKS5_.exit436, label %.lr.ph.i.i.i413, !prof !76, !llvm.loop !2

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit.i423: ; preds = %bb.br, %.loopexit
  %.sink.i.i.i424 = phi ptr [ %i.td, %bb.br ], [ null, %.loopexit ]
  %i.tm = lshr i32 %i.sj, 1                       ; 2 uses
  %i.tn = shl i32 %i.tm, 2
  %i.to = add i32 %i.tn, 4
  %i.tp = mul i32 %i.so, 3
  %.not.i.i5.i425 = icmp ult i32 %i.to, %i.tp
  br i1 %.not.i.i5.i425, label %bb.bu, label %bb.bt, !prof !32

bb.bt:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit.i423
  %i.tq = shl i32 %i.so, 1
  br label %.sink.split.i.i.i426

bb.bu:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit.i423
  %i.tr = load i32, ptr %i.n, align 4, !tbaa !63
  %.neg.i.i.i433 = xor i32 %i.tm, -1
  %.neg13.i.i.i434 = add i32 %i.so, %.neg.i.i.i433
  %i.ts = sub i32 %.neg13.i.i.i434, %i.tr
  %i.tt = lshr i32 %i.so, 3
  %.not10.i.i.i435 = icmp ugt i32 %i.ts, %i.tt
  br i1 %.not10.i.i.i435, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit482, label %.sink.split.i.i.i426, !prof !32

.sink.split.i.i.i426:                             ; preds = %bb.bu, %bb.bt
  %.sink.i.i6.i427 = phi i32 [ %i.tq, %bb.bt ], [ %i.so, %bb.bu ]
  call void @_ZN4llvh13SmallDenseMapIPKN6hermes10BasicBlockEPS2_Lj16ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(264) %5, i32 noundef %.sink.i.i6.i427)
  %i.tu = load i32, ptr %5, align 8               ; 4 uses
  %i.tv = and i32 %i.tu, 1
  %.not.i.i.i.i470 = icmp eq i32 %i.tv, 0         ; 2 uses
  %i.tw = load ptr, ptr %.07.i.i.i74.ptr, align 8
  %i.tx = select i1 %.not.i.i.i.i470, ptr %i.tw, ptr %.07.i.i.i74.ptr ; 2 uses
  %i.ty = load i32, ptr %.phi.trans.insert3.i.i71, align 8
  %i.tz = select i1 %.not.i.i.i.i470, i32 %i.ty, i32 16 ; 2 uses
  %i.ua = icmp ne i32 %i.tz, 0
  call void @llvm.assume(i1 %i.ua)
  %i.ub = load ptr, ptr %i.c, align 8, !tbaa !35  ; 6 uses
  %i.uc = ptrtoint ptr %i.ub to i64
  %i.ud = trunc i64 %i.uc to i32                  ; 2 uses
  %i.ue = lshr i32 %i.ud, 4
  %i.uf = lshr i32 %i.ud, 9
  %i.ug = xor i32 %i.ue, %i.uf
  %i.uh = add i32 %i.tz, -1                       ; 2 uses
  %.02745.i.i471 = and i32 %i.ug, %i.uh           ; 2 uses
  %i.ui = zext nneg i32 %.02745.i.i471 to i64
  %i.uj = getelementptr inbounds nuw [16 x i8], ptr %i.tx, i64 %i.ui ; 3 uses
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !35 ; 2 uses
  %i.ul = icmp eq ptr %i.ub, %i.uk
  br i1 %i.ul, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit482, label %.lr.ph.i.i472, !prof !75

.lr.ph.i.i472:                                    ; preds = %.sink.split.i.i.i426, %bb.bw
  %i.um = phi ptr [ %i.uw, %bb.bw ], [ %i.uk, %.sink.split.i.i.i426 ] ; 2 uses
  %i.un = phi ptr [ %i.uv, %bb.bw ], [ %i.uj, %.sink.split.i.i.i426 ] ; 2 uses
  %.02748.i.i473 = phi i32 [ %.027.i.i478, %bb.bw ], [ %.02745.i.i471, %.sink.split.i.i.i426 ]
  %.047.i.i474 = phi i32 [ %i.us, %bb.bw ], [ 1, %.sink.split.i.i.i426 ] ; 2 uses
  %.02946.i.i475 = phi ptr [ %spec.select.i.i477, %bb.bw ], [ null, %.sink.split.i.i.i426 ] ; 4 uses
  %i.uo = icmp eq ptr %i.um, inttoptr (i64 -8 to ptr)
  br i1 %i.uo, label %bb.bv, label %bb.bw, !prof !32

bb.bv:                                            ; preds = %.lr.ph.i.i472
  %.not.i.i481 = icmp eq ptr %.02946.i.i475, null
  %i.up = select i1 %.not.i.i481, ptr %i.un, ptr %.02946.i.i475
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit482

bb.bw:                                            ; preds = %.lr.ph.i.i472
  %i.uq = icmp eq ptr %i.um, inttoptr (i64 -16 to ptr)
  %i.ur = icmp eq ptr %.02946.i.i475, null
  %or.cond.not.i.i476 = select i1 %i.uq, i1 %i.ur, i1 false
  %spec.select.i.i477 = select i1 %or.cond.not.i.i476, ptr %i.un, ptr %.02946.i.i475
  %i.us = add i32 %.047.i.i474, 1
  %i.ut = add i32 %.047.i.i474, %.02748.i.i473
  %.027.i.i478 = and i32 %i.ut, %i.uh             ; 2 uses
  %i.uu = zext i32 %.027.i.i478 to i64
  %i.uv = getelementptr inbounds nuw [16 x i8], ptr %i.tx, i64 %i.uu ; 3 uses
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !35 ; 2 uses
  %i.ux = icmp eq ptr %i.ub, %i.uw
  br i1 %i.ux, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit482, label %.lr.ph.i.i472, !prof !76, !llvm.loop !2

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit482: ; preds = %bb.bw, %bb.bv, %.sink.split.i.i.i426, %bb.bu
  %i.uy = phi ptr [ %i.qu, %bb.bu ], [ %i.ub, %bb.bv ], [ %i.ub, %.sink.split.i.i.i426 ], [ %i.ub, %bb.bw ]
  %i.uz = phi ptr [ %.sink.i.i.i424, %bb.bu ], [ %i.up, %bb.bv ], [ %i.uj, %.sink.split.i.i.i426 ], [ %i.uv, %bb.bw ] ; 4 uses
  %i.va = phi i32 [ %i.sj, %bb.bu ], [ %i.tu, %bb.bv ], [ %i.tu, %.sink.split.i.i.i426 ], [ %i.tu, %bb.bw ]
  %i.vb = add i32 %i.va, 2
  store i32 %i.vb, ptr %5, align 8
  %i.vc = load ptr, ptr %i.uz, align 8, !tbaa !35
  %i.vd = icmp eq ptr %i.vc, inttoptr (i64 -8 to ptr)
  br i1 %i.vd, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E16InsertIntoBucketIRKS5_JEEEPSB_SH_OT_DpOT0_.exit.i432, label %bb.bx

bb.bx:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit482
  %i.ve = load i32, ptr %i.n, align 4, !tbaa !63
  %i.vf = add i32 %i.ve, -1
  store i32 %i.vf, ptr %i.n, align 4, !tbaa !63
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E16InsertIntoBucketIRKS5_JEEEPSB_SH_OT_DpOT0_.exit.i432

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E16InsertIntoBucketIRKS5_JEEEPSB_SH_OT_DpOT0_.exit.i432: ; preds = %bb.bx, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit482
  store ptr %i.uy, ptr %i.uz, align 8, !tbaa !35
  %i.vg = getelementptr inbounds nuw i8, ptr %i.uz, i64 8
  store ptr null, ptr %i.vg, align 8, !tbaa !35
  %.pre726 = load ptr, ptr %i.c, align 8, !tbaa !35
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E16FindAndConstructERKS5_.exit436

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E16FindAndConstructERKS5_.exit436: ; preds = %bb.bs, %bb.bq, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E16InsertIntoBucketIRKS5_JEEEPSB_SH_OT_DpOT0_.exit.i432
  %i.vh = phi ptr [ %.pre726, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E16InsertIntoBucketIRKS5_JEEEPSB_SH_OT_DpOT0_.exit.i432 ], [ %i.qu, %bb.bq ], [ %i.qu, %bb.bs ]
  %.0.i421 = phi ptr [ %i.uz, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E16InsertIntoBucketIRKS5_JEEEPSB_SH_OT_DpOT0_.exit.i432 ], [ %i.sx, %bb.bq ], [ %i.tj, %bb.bs ]
  %i.vi = getelementptr inbounds nuw i8, ptr %.0.i421, i64 8
  %i.vj = load ptr, ptr %i.vi, align 8, !tbaa !35 ; 2 uses
  %i.vk = call noundef zeroext i1 @_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE17properlyDominatesEPKS2_S5_(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef %i.vj, ptr noundef %i.vh) #11
  br i1 %i.vk, label %bb.by, label %_ZN4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE6insertES4_.exit318

bb.by:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E16FindAndConstructERKS5_.exit436
  %i.vl = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E16FindAndConstructERKS5_(ptr noundef nonnull align 1 dereferenceable(1) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vl, i64 8
  store ptr %i.vj, ptr %i.vm, align 8, !tbaa !35
  br label %_ZN4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE6insertES4_.exit318

_ZN4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE6insertES4_.exit318: ; preds = %.lr.ph.i.i309, %bb.bp, %bb.bk, %bb.bl, %bb.bm, %bb.bo, %bb.by, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E16FindAndConstructERKS5_.exit436, %_ZNK4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE5countES4_.exit292
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  %i.vn = getelementptr inbounds nuw i8, ptr %.sroa.0512.0667, i64 8 ; 3 uses
  %.not3.i3.i326 = icmp eq ptr %i.vn, %i.pl
  br i1 %.not3.i3.i326, label %_ZN4llvh19SmallPtrSetIteratorIPN6hermes10BasicBlockEEppEv.exit331, label %.lr.ph.i4.i327

.lr.ph.i4.i327:                                   ; preds = %_ZN4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE6insertES4_.exit318, %.critedge2.i6.i329
  %.sroa.0512.1 = phi ptr [ %i.vp, %.critedge2.i6.i329 ], [ %i.vn, %_ZN4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE6insertES4_.exit318 ] ; 3 uses
  %i.vo = load ptr, ptr %.sroa.0512.1, align 8, !tbaa !30
  %switch.i5.i328 = icmp ugt ptr %i.vo, inttoptr (i64 -3 to ptr)
  br i1 %switch.i5.i328, label %.critedge2.i6.i329, label %_ZN4llvh19SmallPtrSetIteratorIPN6hermes10BasicBlockEEppEv.exit331

.critedge2.i6.i329:                               ; preds = %.lr.ph.i4.i327
  %i.vp = getelementptr inbounds nuw i8, ptr %.sroa.0512.1, i64 8 ; 3 uses
  %.not.i7.i330 = icmp eq ptr %i.vp, %i.pl
  br i1 %.not.i7.i330, label %_ZN4llvh19SmallPtrSetIteratorIPN6hermes10BasicBlockEEppEv.exit331, label %.lr.ph.i4.i327, !llvm.loop !212

_ZN4llvh19SmallPtrSetIteratorIPN6hermes10BasicBlockEEppEv.exit331: ; preds = %.lr.ph.i4.i327, %.critedge2.i6.i329, %_ZN4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE6insertES4_.exit318
  %.sroa.0512.2 = phi ptr [ %i.vn, %_ZN4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE6insertES4_.exit318 ], [ %.sroa.0512.1, %.lr.ph.i4.i327 ], [ %i.vp, %.critedge2.i6.i329 ] ; 2 uses
  %.not607 = icmp eq ptr %.sroa.0512.2, %i.po
  br i1 %.not607, label %._crit_edge669, label %.lr.ph668

._crit_edge683:                                   ; preds = %_ZN4llvh16DenseMapIteratorIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS2_Lj2EEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EELb0EEppEv.exit397, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E5beginEv.exit241
  %i.vq = load ptr, ptr %i.ne, align 8, !tbaa !21 ; 2 uses
  %i.vr = load ptr, ptr %10, align 8, !tbaa !20
  %i.vs = icmp eq ptr %i.vq, %i.vr
  br i1 %i.vs, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit332, label %bb.bz

bb.bz:                                            ; preds = %._crit_edge683
  call void @free(ptr noundef %i.vq) #11
  br label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit332

_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit332:        ; preds = %._crit_edge683, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  %i.vt = load ptr, ptr %7, align 8, !tbaa !26    ; 2 uses
  %i.vu = icmp eq ptr %i.vt, %i.p
  br i1 %i.vu, label %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj16EED2Ev.exit, label %bb.ca

bb.ca:                                            ; preds = %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit332
  call void @free(ptr noundef %i.vt) #11
  br label %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj16EED2Ev.exit

_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj16EED2Ev.exit: ; preds = %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit332, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  %i.vv = load i32, ptr %6, align 8               ; 2 uses
  %i.vw = and i32 %i.vv, 1
  %.not.i.i.i.i333 = icmp eq i32 %i.vw, 0         ; 2 uses
  %i.vx = load i32, ptr %.phi.trans.insert3.i.i79, align 8
  %i.vy = select i1 %.not.i.i.i.i333, i32 %i.vx, i32 16 ; 2 uses
  %i.vz = icmp eq i32 %i.vy, 0
  br i1 %i.vz, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEv.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj16EED2Ev.exit
  %i.wa = load ptr, ptr %.07.i.i.i82.ptr, align 8
  %i.wb = select i1 %.not.i.i.i.i333, ptr %i.wa, ptr %.07.i.i.i82.ptr ; 2 uses
  %i.wc = zext i32 %i.vy to i64
  %.idx.i.i334 = mul nuw nsw i64 %i.wc, 56
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wb, i64 %.idx.i.i334
  br label %.lr.ph.i.i335

.lr.ph.i.i335:                                    ; preds = %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.i.i, %.lr.ph.preheader.i.i
  %.011.i.i = phi ptr [ %i.wk, %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.i.i ], [ %i.wb, %.lr.ph.preheader.i.i ] ; 4 uses
  %i.we = load ptr, ptr %.011.i.i, align 8, !tbaa !35
  %magicptr.i.i = ptrtoint ptr %i.we to i64
  switch i64 %magicptr.i.i, label %bb.cb [
    i64 -8, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.i.i
    i64 -16, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.i.i
  ]

bb.cb:                                            ; preds = %.lr.ph.i.i335
  %i.wf = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 8
  %i.wg = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 16
  %i.wh = load ptr, ptr %i.wg, align 8, !tbaa !21 ; 2 uses
  %i.wi = load ptr, ptr %i.wf, align 8, !tbaa !20
  %i.wj = icmp eq ptr %i.wh, %i.wi
  br i1 %i.wj, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.i.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @free(ptr noundef %i.wh) #11
  br label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.i.i

_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.i.i:       ; preds = %bb.cc, %bb.cb, %.lr.ph.i.i335, %.lr.ph.i.i335
  %i.wk = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 56 ; 2 uses
  %.not.i.i336 = icmp eq ptr %i.wk, %i.wd
  br i1 %.not.i.i336, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEv.exit.loopexit.i, label %.lr.ph.i.i335, !llvm.loop !225

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEv.exit.loopexit.i: ; preds = %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.i.i
  %.pre.i337 = load i32, ptr %6, align 8
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEv.exit.i

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEv.exit.i: ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEv.exit.loopexit.i, %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj16EED2Ev.exit
  %i.wl = phi i32 [ %.pre.i337, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEv.exit.loopexit.i ], [ %i.vv, %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj16EED2Ev.exit ]
  %i.wm = and i32 %i.wl, 1
  %.not.i1.i = icmp eq i32 %i.wm, 0
  br i1 %.not.i1.i, label %bb.cd, label %_ZN4llvh13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS2_Lj2EEELj16ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit

bb.cd:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEv.exit.i
  %i.wn = load ptr, ptr %.07.i.i.i82.ptr, align 8, !tbaa !238
  call void @_ZdlPv(ptr noundef %i.wn) #11
  br label %_ZN4llvh13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS2_Lj2EEELj16ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit

_ZN4llvh13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS2_Lj2EEELj16ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit: ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEv.exit.i, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %i.wo = load i32, ptr %5, align 8
  %i.wp = and i32 %i.wo, 1
  %.not.i.i338 = icmp eq i32 %i.wp, 0
  br i1 %.not.i.i338, label %bb.ce, label %_ZN4llvh13SmallDenseMapIPKN6hermes10BasicBlockEPS2_Lj16ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit

bb.ce:                                            ; preds = %_ZN4llvh13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS2_Lj2EEELj16ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit
  %i.wq = load ptr, ptr %.07.i.i.i74.ptr, align 8, !tbaa !240
  call void @_ZdlPv(ptr noundef %i.wq) #11
  br label %_ZN4llvh13SmallDenseMapIPKN6hermes10BasicBlockEPS2_Lj16ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit

_ZN4llvh13SmallDenseMapIPKN6hermes10BasicBlockEPS2_Lj16ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit: ; preds = %_ZN4llvh13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS2_Lj2EEELj16ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %i.wr = load ptr, ptr %i.j, align 8, !tbaa !21  ; 2 uses
  %i.ws = load ptr, ptr %4, align 8, !tbaa !20
  %i.wt = icmp eq ptr %i.wr, %i.ws
  br i1 %i.wt, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit339, label %bb.cf

bb.cf:                                            ; preds = %_ZN4llvh13SmallDenseMapIPKN6hermes10BasicBlockEPS2_Lj16ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit
  call void @free(ptr noundef %i.wr) #11
  br label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit339

_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit339:        ; preds = %_ZN4llvh13SmallDenseMapIPKN6hermes10BasicBlockEPS2_Lj16ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.wu = load i32, ptr %3, align 8
  %i.wv = and i32 %i.wu, 1
  %.not.i.i340 = icmp eq i32 %i.wv, 0
  br i1 %.not.i.i340, label %bb.cg, label %_ZN4llvh13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_iEEED2Ev.exit

bb.cg:                                            ; preds = %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit339
  %i.ww = load ptr, ptr %.07.i.i.i67.ptr, align 8, !tbaa !242
  call void @_ZdlPv(ptr noundef %i.ww) #11
  br label %_ZN4llvh13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_iEEED2Ev.exit

_ZN4llvh13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_iEEED2Ev.exit: ; preds = %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit339, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void

.lr.ph682:                                        ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E5beginEv.exit241, %_ZN4llvh16DenseMapIteratorIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS2_Lj2EEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EELb0EEppEv.exit397
  %.sroa.0504.0681 = phi ptr [ %.sroa.0504.2, %_ZN4llvh16DenseMapIteratorIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS2_Lj2EEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EELb0EEppEv.exit397 ], [ %.pn16.i236, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E5beginEv.exit241 ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  %i.wx = load ptr, ptr %.sroa.0504.0681, align 8, !tbaa !235
  store ptr %i.wx, ptr %i.d, align 8, !tbaa !35
  %i.wy = getelementptr inbounds nuw i8, ptr %.sroa.0504.0681, i64 28
  %i.wz = load i32, ptr %i.wy, align 4, !tbaa !23 ; 2 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %.sroa.0504.0681, i64 32
  %i.xb = load i32, ptr %i.xa, align 8, !tbaa !24
  %i.xc = icmp eq i32 %i.wz, %i.xb
  br i1 %i.xc, label %bb.cv, label %bb.ch

bb.ch:                                            ; preds = %.lr.ph682
  %i.xd = getelementptr inbounds nuw i8, ptr %.sroa.0504.0681, i64 8
  %i.xe = getelementptr inbounds nuw i8, ptr %.sroa.0504.0681, i64 16
  %i.xf = load ptr, ptr %i.xe, align 8, !tbaa !21 ; 5 uses
  %i.xg = load ptr, ptr %i.xd, align 8, !tbaa !20
  %i.xh = icmp eq ptr %i.xf, %i.xg
  %i.xi = getelementptr inbounds nuw i8, ptr %.sroa.0504.0681, i64 24
  %i.xj = load i32, ptr %i.xi, align 8
  %.v.v.i4.i2.i341 = select i1 %i.xh, i32 %i.wz, i32 %i.xj ; 2 uses
  %.v.i5.i3.i342 = zext i32 %.v.v.i4.i2.i341 to i64 ; 2 uses
  %.idx.i343 = shl nuw nsw i64 %.v.i5.i3.i342, 3
  %i.xk = getelementptr i8, ptr %i.xf, i64 %.idx.i343 ; 4 uses
  %.not3.i4.i.i6.i4.i344 = icmp eq i32 %.v.v.i4.i2.i341, 0
  br i1 %.not3.i4.i.i6.i4.i344, label %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5beginEv.exit354, label %.lr.ph.i5.i.i7.i5.i345

.lr.ph.i5.i.i7.i5.i345:                           ; preds = %bb.ch, %.critedge2.i7.i.i9.i11.i352
  %.sroa.0.3.i6.i346 = phi ptr [ %i.xm, %.critedge2.i7.i.i9.i11.i352 ], [ %i.xf, %bb.ch ] ; 3 uses
  %i.xl = load ptr, ptr %.sroa.0.3.i6.i346, align 8, !tbaa !30
  %switch.i6.i.i8.i7.i347 = icmp ugt ptr %i.xl, inttoptr (i64 -3 to ptr)
  br i1 %switch.i6.i.i8.i7.i347, label %.critedge2.i7.i.i9.i11.i352, label %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5beginEv.exit354

.critedge2.i7.i.i9.i11.i352:                      ; preds = %.lr.ph.i5.i.i7.i5.i345
  %i.xm = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i6.i346, i64 8 ; 2 uses
  %.not.i8.i.i10.i12.i353 = icmp eq ptr %i.xm, %i.xk
  br i1 %.not.i8.i.i10.i12.i353, label %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5beginEv.exit354, label %.lr.ph.i5.i.i7.i5.i345, !llvm.loop !212

_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5beginEv.exit354: ; preds = %.lr.ph.i5.i.i7.i5.i345, %.critedge2.i7.i.i9.i11.i352, %bb.ch
  %.sroa.0.4.i8.i349 = phi ptr [ %i.xf, %bb.ch ], [ %.sroa.0.3.i6.i346, %.lr.ph.i5.i.i7.i5.i345 ], [ %i.xk, %.critedge2.i7.i.i9.i11.i352 ] ; 2 uses
  %i.xn = getelementptr inbounds nuw [8 x i8], ptr %i.xf, i64 %.v.i5.i3.i342 ; 2 uses
  %.not605674 = icmp eq ptr %.sroa.0.4.i8.i349, %i.xn
  br i1 %.not605674, label %._crit_edge679, label %.lr.ph678

._crit_edge679:                                   ; preds = %_ZN4llvh19SmallPtrSetIteratorIPN6hermes10BasicBlockEEppEv.exit391, %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5beginEv.exit354
  %.043.lcssa = phi ptr [ null, %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5beginEv.exit354 ], [ %.144, %_ZN4llvh19SmallPtrSetIteratorIPN6hermes10BasicBlockEEppEv.exit391 ]
  %i.xo = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E16FindAndConstructERKS5_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xo, i64 8
  store ptr %.043.lcssa, ptr %i.xp, align 8, !tbaa !35
  br label %bb.cv

.lr.ph678:                                        ; preds = %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5beginEv.exit354, %_ZN4llvh19SmallPtrSetIteratorIPN6hermes10BasicBlockEEppEv.exit391
  %.0677 = phi i32 [ %.1, %_ZN4llvh19SmallPtrSetIteratorIPN6hermes10BasicBlockEEppEv.exit391 ], [ -1, %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5beginEv.exit354 ] ; 3 uses
  %.043676 = phi ptr [ %.144, %_ZN4llvh19SmallPtrSetIteratorIPN6hermes10BasicBlockEEppEv.exit391 ], [ null, %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5beginEv.exit354 ] ; 2 uses
  %.sroa.0499.0675 = phi ptr [ %.sroa.0499.2, %_ZN4llvh19SmallPtrSetIteratorIPN6hermes10BasicBlockEEppEv.exit391 ], [ %.sroa.0.4.i8.i349, %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5beginEv.exit354 ] ; 2 uses
  %i.xq = load ptr, ptr %.sroa.0499.0675, align 8, !tbaa !30 ; 13 uses
  %i.xr = load i32, ptr %3, align 8               ; 3 uses
  %i.xs = and i32 %i.xr, 1
  %.not.i.i.i.i.i437 = icmp eq i32 %i.xs, 0       ; 2 uses
  %i.xt = load ptr, ptr %.07.i.i.i67.ptr, align 8
  %i.xu = select i1 %.not.i.i.i.i.i437, ptr %i.xt, ptr %.07.i.i.i67.ptr ; 2 uses
  %i.xv = load i32, ptr %.phi.trans.insert3.i.i64, align 8
  %i.xw = select i1 %.not.i.i.i.i.i437, i32 %i.xv, i32 16 ; 7 uses
  %i.xx = icmp eq i32 %i.xw, 0
  br i1 %i.xx, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit.i, label %bb.ci

bb.ci:                                            ; preds = %.lr.ph678
  %i.xy = ptrtoint ptr %i.xq to i64
  %i.xz = trunc i64 %i.xy to i32                  ; 2 uses
  %i.ya = lshr i32 %i.xz, 4
  %i.yb = lshr i32 %i.xz, 9
  %i.yc = xor i32 %i.ya, %i.yb
  %i.yd = add i32 %i.xw, -1                       ; 2 uses
  %.02745.i.i.i438 = and i32 %i.yd, %i.yc         ; 2 uses
  %i.ye = zext nneg i32 %.02745.i.i.i438 to i64
  %i.yf = getelementptr inbounds nuw [16 x i8], ptr %i.xu, i64 %i.ye ; 3 uses
  %i.yg = load ptr, ptr %i.yf, align 8, !tbaa !35 ; 2 uses
  %i.yh = icmp eq ptr %i.xq, %i.yg
  br i1 %i.yh, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E16FindAndConstructERKS5_.exit, label %.lr.ph.i.i.i439, !prof !75

.lr.ph.i.i.i439:                                  ; preds = %bb.ci, %bb.ck
  %i.yi = phi ptr [ %i.ys, %bb.ck ], [ %i.yg, %bb.ci ] ; 2 uses
  %i.yj = phi ptr [ %i.yr, %bb.ck ], [ %i.yf, %bb.ci ] ; 2 uses
  %.02748.i.i.i440 = phi i32 [ %.027.i.i.i445, %bb.ck ], [ %.02745.i.i.i438, %bb.ci ]
  %.047.i.i.i441 = phi i32 [ %i.yo, %bb.ck ], [ 1, %bb.ci ] ; 2 uses
  %.02946.i.i.i442 = phi ptr [ %spec.select.i.i.i444, %bb.ck ], [ null, %bb.ci ] ; 4 uses
  %i.yk = icmp eq ptr %i.yi, inttoptr (i64 -8 to ptr)
  br i1 %i.yk, label %bb.cj, label %bb.ck, !prof !32

bb.cj:                                            ; preds = %.lr.ph.i.i.i439
  %.not.i.i.i448 = icmp eq ptr %.02946.i.i.i442, null
  %i.yl = select i1 %.not.i.i.i448, ptr %i.yj, ptr %.02946.i.i.i442
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit.i

bb.ck:                                            ; preds = %.lr.ph.i.i.i439
  %i.ym = icmp eq ptr %i.yi, inttoptr (i64 -16 to ptr)
  %i.yn = icmp eq ptr %.02946.i.i.i442, null
  %or.cond.not.i.i.i443 = select i1 %i.ym, i1 %i.yn, i1 false
  %spec.select.i.i.i444 = select i1 %or.cond.not.i.i.i443, ptr %i.yj, ptr %.02946.i.i.i442
  %i.yo = add i32 %.047.i.i.i441, 1
  %i.yp = add i32 %.047.i.i.i441, %.02748.i.i.i440
  %.027.i.i.i445 = and i32 %i.yp, %i.yd           ; 2 uses
  %i.yq = zext i32 %.027.i.i.i445 to i64
  %i.yr = getelementptr inbounds nuw [16 x i8], ptr %i.xu, i64 %i.yq ; 3 uses
  %i.ys = load ptr, ptr %i.yr, align 8, !tbaa !35 ; 2 uses
  %i.yt = icmp eq ptr %i.xq, %i.ys
  br i1 %i.yt, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E16FindAndConstructERKS5_.exit, label %.lr.ph.i.i.i439, !prof !76, !llvm.loop !1

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit.i: ; preds = %bb.cj, %.lr.ph678
  %.sink.i.i.i449 = phi ptr [ %i.yl, %bb.cj ], [ null, %.lr.ph678 ]
  %i.yu = lshr i32 %i.xr, 1                       ; 2 uses
  %i.yv = shl i32 %i.yu, 2
  %i.yw = add i32 %i.yv, 4
  %i.yx = mul i32 %i.xw, 3
  %.not.i.i5.i450 = icmp ult i32 %i.yw, %i.yx
  br i1 %.not.i.i5.i450, label %bb.cm, label %bb.cl, !prof !32

bb.cl:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit.i
  %i.yy = shl i32 %i.xw, 1
  br label %.sink.split.i.i.i451

bb.cm:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit.i
  %i.yz = load i32, ptr %i.h, align 4, !tbaa !66
  %.neg.i.i.i457 = xor i32 %i.yu, -1
  %.neg13.i.i.i458 = add i32 %i.xw, %.neg.i.i.i457
  %i.za = sub i32 %.neg13.i.i.i458, %i.yz
  %i.zb = lshr i32 %i.xw, 3
  %.not10.i.i.i459 = icmp ugt i32 %i.za, %i.zb
  br i1 %.not10.i.i.i459, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit, label %.sink.split.i.i.i451, !prof !32

.sink.split.i.i.i451:                             ; preds = %bb.cm, %bb.cl
  %.sink.i.i6.i452 = phi i32 [ %i.yy, %bb.cl ], [ %i.xw, %bb.cm ]
  call void @_ZN4llvh13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_iEEE4growEj(ptr noundef nonnull align 8 dereferenceable(264) %3, i32 noundef %.sink.i.i6.i452)
  %i.zc = load i32, ptr %3, align 8               ; 4 uses
  %i.zd = and i32 %i.zc, 1
  %.not.i.i.i.i483 = icmp eq i32 %i.zd, 0         ; 2 uses
  %i.ze = load ptr, ptr %.07.i.i.i67.ptr, align 8
  %i.zf = select i1 %.not.i.i.i.i483, ptr %i.ze, ptr %.07.i.i.i67.ptr ; 2 uses
  %i.zg = load i32, ptr %.phi.trans.insert3.i.i64, align 8
  %i.zh = select i1 %.not.i.i.i.i483, i32 %i.zg, i32 16 ; 2 uses
  %i.zi = icmp ne i32 %i.zh, 0
  call void @llvm.assume(i1 %i.zi)
  %i.zj = ptrtoint ptr %i.xq to i64
  %i.zk = trunc i64 %i.zj to i32                  ; 2 uses
  %i.zl = lshr i32 %i.zk, 4
  %i.zm = lshr i32 %i.zk, 9
  %i.zn = xor i32 %i.zl, %i.zm
  %i.zo = add i32 %i.zh, -1                       ; 2 uses
  %.02745.i.i484 = and i32 %i.zo, %i.zn           ; 2 uses
  %i.zp = zext nneg i32 %.02745.i.i484 to i64
  %i.zq = getelementptr inbounds nuw [16 x i8], ptr %i.zf, i64 %i.zp ; 3 uses
  %i.zr = load ptr, ptr %i.zq, align 8, !tbaa !35 ; 2 uses
  %i.zs = icmp eq ptr %i.xq, %i.zr
  br i1 %i.zs, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit, label %.lr.ph.i.i485, !prof !75

.lr.ph.i.i485:                                    ; preds = %.sink.split.i.i.i451, %bb.co
  %i.zt = phi ptr [ %i.aad, %bb.co ], [ %i.zr, %.sink.split.i.i.i451 ] ; 2 uses
  %i.zu = phi ptr [ %i.aac, %bb.co ], [ %i.zq, %.sink.split.i.i.i451 ] ; 2 uses
  %.02748.i.i486 = phi i32 [ %.027.i.i491, %bb.co ], [ %.02745.i.i484, %.sink.split.i.i.i451 ]
  %.047.i.i487 = phi i32 [ %i.zz, %bb.co ], [ 1, %.sink.split.i.i.i451 ] ; 2 uses
  %.02946.i.i488 = phi ptr [ %spec.select.i.i490, %bb.co ], [ null, %.sink.split.i.i.i451 ] ; 4 uses
  %i.zv = icmp eq ptr %i.zt, inttoptr (i64 -8 to ptr)
  br i1 %i.zv, label %bb.cn, label %bb.co, !prof !32

bb.cn:                                            ; preds = %.lr.ph.i.i485
  %.not.i.i494 = icmp eq ptr %.02946.i.i488, null
  %i.zw = select i1 %.not.i.i494, ptr %i.zu, ptr %.02946.i.i488
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit

bb.co:                                            ; preds = %.lr.ph.i.i485
  %i.zx = icmp eq ptr %i.zt, inttoptr (i64 -16 to ptr)
  %i.zy = icmp eq ptr %.02946.i.i488, null
  %or.cond.not.i.i489 = select i1 %i.zx, i1 %i.zy, i1 false
  %spec.select.i.i490 = select i1 %or.cond.not.i.i489, ptr %i.zu, ptr %.02946.i.i488
  %i.zz = add i32 %.047.i.i487, 1
  %i.aaa = add i32 %.047.i.i487, %.02748.i.i486
  %.027.i.i491 = and i32 %i.aaa, %i.zo            ; 2 uses
  %i.aab = zext i32 %.027.i.i491 to i64
  %i.aac = getelementptr inbounds nuw [16 x i8], ptr %i.zf, i64 %i.aab ; 3 uses
  %i.aad = load ptr, ptr %i.aac, align 8, !tbaa !35 ; 2 uses
  %i.aae = icmp eq ptr %i.xq, %i.aad
  br i1 %i.aae, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit, label %.lr.ph.i.i485, !prof !76, !llvm.loop !1

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit: ; preds = %bb.co, %bb.cn, %.sink.split.i.i.i451, %bb.cm
  %i.aaf = phi ptr [ %.sink.i.i.i449, %bb.cm ], [ %i.zw, %bb.cn ], [ %i.zq, %.sink.split.i.i.i451 ], [ %i.aac, %bb.co ] ; 4 uses
  %i.aag = phi i32 [ %i.xr, %bb.cm ], [ %i.zc, %bb.cn ], [ %i.zc, %.sink.split.i.i.i451 ], [ %i.zc, %bb.co ]
  %i.aah = add i32 %i.aag, 2
  store i32 %i.aah, ptr %3, align 8
  %i.aai = load ptr, ptr %i.aaf, align 8, !tbaa !35
  %i.aaj = icmp eq ptr %i.aai, inttoptr (i64 -8 to ptr)
  br i1 %i.aaj, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E16InsertIntoBucketIRKS5_JEEEPSA_SG_OT_DpOT0_.exit.i, label %bb.cp

bb.cp:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit
  %i.aak = load i32, ptr %i.h, align 4, !tbaa !66
  %i.aal = add i32 %i.aak, -1
  store i32 %i.aal, ptr %i.h, align 4, !tbaa !66
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E16InsertIntoBucketIRKS5_JEEEPSA_SG_OT_DpOT0_.exit.i

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E16InsertIntoBucketIRKS5_JEEEPSA_SG_OT_DpOT0_.exit.i: ; preds = %bb.cp, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit
  store ptr %i.xq, ptr %i.aaf, align 8, !tbaa !35
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aaf, i64 8
  store i32 0, ptr %i.aam, align 8, !tbaa !11
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E16FindAndConstructERKS5_.exit

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E16FindAndConstructERKS5_.exit: ; preds = %bb.ck, %bb.ci, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E16InsertIntoBucketIRKS5_JEEEPSA_SG_OT_DpOT0_.exit.i
  %.0.i447 = phi ptr [ %i.aaf, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E16InsertIntoBucketIRKS5_JEEEPSA_SG_OT_DpOT0_.exit.i ], [ %i.yf, %bb.ci ], [ %i.yr, %bb.ck ]
  %i.aan = getelementptr inbounds nuw i8, ptr %.0.i447, i64 8
  %i.aao = load i32, ptr %i.aan, align 4, !tbaa !11 ; 4 uses
  %i.aap = icmp sgt i32 %i.aao, %.0677
  br i1 %i.aap, label %bb.cq, label %.split

bb.cq:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E16FindAndConstructERKS5_.exit
  %i.aaq = load ptr, ptr %i.ne, align 8, !tbaa !21 ; 6 uses
  %i.aar = load ptr, ptr %10, align 8, !tbaa !20  ; 3 uses
  %i.aas = icmp eq ptr %i.aaq, %i.aar
  br i1 %i.aas, label %bb.cr, label %bb.ct

bb.cr:                                            ; preds = %bb.cq
  %i.aat = load i32, ptr %i.ng, align 4, !tbaa !23 ; 4 uses
  %i.aau = zext i32 %i.aat to i64                 ; 2 uses
  %.idx.i.i.i379 = shl nuw nsw i64 %i.aau, 3
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aar, i64 %.idx.i.i.i379
  %.not18.i.i.i380 = icmp eq i32 %i.aat, 0
  br i1 %.not18.i.i.i380, label %._crit_edge.i.i.i384, label %.lr.ph.i.i.i381

.lr.ph.i.i.i381:                                  ; preds = %bb.cr, %bb.cs
  %.01219.i.i.i382 = phi ptr [ %i.aay, %bb.cs ], [ %i.aar, %bb.cr ] ; 3 uses
  %i.aaw = load ptr, ptr %.01219.i.i.i382, align 8, !tbaa !30
  %i.aax = icmp eq ptr %i.aaw, %i.xq
  br i1 %i.aax, label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i363, label %bb.cs

bb.cs:                                            ; preds = %.lr.ph.i.i.i381
  %i.aay = getelementptr inbounds nuw i8, ptr %.01219.i.i.i382, i64 8 ; 2 uses
  %.not.i.i.i383 = icmp eq ptr %i.aay, %i.aav
  br i1 %.not.i.i.i383, label %._crit_edge.i.i.i384, label %.lr.ph.i.i.i381, !llvm.loop !211

._crit_edge.i.i.i384:                             ; preds = %bb.cs, %bb.cr
  %i.aaz = getelementptr inbounds nuw [8 x i8], ptr %i.aaq, i64 %i.aau
  br label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i363

bb.ct:                                            ; preds = %bb.cq
  %i.aba = call noundef ptr @_ZNK4llvh19SmallPtrSetImplBase13FindBucketForEPKv(ptr noundef nonnull align 8 dereferenceable(28) %10, ptr noundef %i.xq) #11 ; 2 uses
  %i.abb = load ptr, ptr %i.aba, align 8, !tbaa !30
  %i.abc = icmp eq ptr %i.abb, %i.xq
  %.pre.i.i359 = load ptr, ptr %i.ne, align 8, !tbaa !21 ; 4 uses
  %.pre4.i.i360 = load ptr, ptr %10, align 8, !tbaa !20 ; 3 uses
  br i1 %i.abc, label %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i376, label %bb.cu

._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i376: ; preds = %bb.ct
  %.pre5.i.i378 = load i32, ptr %i.ng, align 4
  br label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i363

bb.cu:                                            ; preds = %bb.ct
  %i.abd = icmp eq ptr %.pre.i.i359, %.pre4.i.i360
  %i.abe = load i32, ptr %i.ng, align 4           ; 2 uses
  %i.abf = load i32, ptr %i.nf, align 8
  %.v.v.i14.i.i.i361 = select i1 %i.abd, i32 %i.abe, i32 %i.abf
  %.v.i15.i.i.i362 = zext i32 %.v.v.i14.i.i.i361 to i64
  %i.abg = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i359, i64 %.v.i15.i.i.i362
  br label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i363

_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i363: ; preds = %.lr.ph.i.i.i381, %bb.cu, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i376, %._crit_edge.i.i.i384
  %i.abh = phi ptr [ %i.aaq, %._crit_edge.i.i.i384 ], [ %.pre4.i.i360, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i376 ], [ %.pre4.i.i360, %bb.cu ], [ %i.aaq, %.lr.ph.i.i.i381 ]
  %i.abi = phi i32 [ %i.aat, %._crit_edge.i.i.i384 ], [ %.pre5.i.i378, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i376 ], [ %i.abe, %bb.cu ], [ %i.aat, %.lr.ph.i.i.i381 ]
  %i.abj = phi ptr [ %i.aaq, %._crit_edge.i.i.i384 ], [ %.pre.i.i359, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i376 ], [ %.pre.i.i359, %bb.cu ], [ %i.aaq, %.lr.ph.i.i.i381 ] ; 2 uses
  %.2.i.i.i364 = phi ptr [ %i.aaz, %._crit_edge.i.i.i384 ], [ %i.aba, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i376 ], [ %i.abg, %bb.cu ], [ %.01219.i.i.i382, %.lr.ph.i.i.i381 ] ; 2 uses
  %i.abk = icmp eq ptr %i.abj, %i.abh
  %i.abl = load i32, ptr %i.nf, align 8
  %.v.v.i4.i.i.i365 = select i1 %i.abk, i32 %i.abi, i32 %i.abl
  %.v.i5.i.i.i366 = zext i32 %.v.v.i4.i.i.i365 to i64
  %i.abm = getelementptr inbounds nuw [8 x i8], ptr %i.abj, i64 %.v.i5.i.i.i366
  %.fr = freeze ptr %i.abm                        ; 3 uses
  %.not3.i4.i.i6.i.i.i367 = icmp eq ptr %.2.i.i.i364, %.fr
  br i1 %.not3.i4.i.i6.i.i.i367, label %.split, label %.lr.ph.i5.i.i7.i.i.i368

.lr.ph.i5.i.i7.i.i.i368:                          ; preds = %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i363, %.critedge2.i7.i.i9.i.i.i374
  %.sroa.0.3.i.i.i369 = phi ptr [ %i.abo, %.critedge2.i7.i.i9.i.i.i374 ], [ %.2.i.i.i364, %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i363 ] ; 3 uses
  %i.abn = load ptr, ptr %.sroa.0.3.i.i.i369, align 8, !tbaa !30
  %switch.i6.i.i8.i.i.i370 = icmp ugt ptr %i.abn, inttoptr (i64 -3 to ptr)
  br i1 %switch.i6.i.i8.i.i.i370, label %.critedge2.i7.i.i9.i.i.i374, label %_ZNK4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE5countES4_.exit385

.critedge2.i7.i.i9.i.i.i374:                      ; preds = %.lr.ph.i5.i.i7.i.i.i368
  %i.abo = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i.i.i369, i64 8 ; 2 uses
  %.not.i8.i.i10.i.i.i375 = icmp eq ptr %i.abo, %.fr
  br i1 %.not.i8.i.i10.i.i.i375, label %.split, label %.lr.ph.i5.i.i7.i.i.i368, !llvm.loop !212

_ZNK4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE5countES4_.exit385: ; preds = %.lr.ph.i5.i.i7.i.i.i368
  %.not606 = icmp eq ptr %.sroa.0.3.i.i.i369, %.fr ; 2 uses
  %spec.select = select i1 %.not606, ptr %i.xq, ptr %.043676
  %spec.select974 = select i1 %.not606, i32 %i.aao, i32 %.0677
  br label %.split

.split:                                           ; preds = %.critedge2.i7.i.i9.i.i.i374, %_ZNK4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE5countES4_.exit385, %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i363, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E16FindAndConstructERKS5_.exit
  %.144 = phi ptr [ %.043676, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E16FindAndConstructERKS5_.exit ], [ %i.xq, %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i363 ], [ %spec.select, %_ZNK4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE5countES4_.exit385 ], [ %i.xq, %.critedge2.i7.i.i9.i.i.i374 ] ; 2 uses
  %.1 = phi i32 [ %.0677, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E16FindAndConstructERKS5_.exit ], [ %i.aao, %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i363 ], [ %spec.select974, %_ZNK4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE5countES4_.exit385 ], [ %i.aao, %.critedge2.i7.i.i9.i.i.i374 ]
  %i.abp = getelementptr inbounds nuw i8, ptr %.sroa.0499.0675, i64 8 ; 3 uses
  %.not3.i3.i386 = icmp eq ptr %i.abp, %i.xk
  br i1 %.not3.i3.i386, label %_ZN4llvh19SmallPtrSetIteratorIPN6hermes10BasicBlockEEppEv.exit391, label %.lr.ph.i4.i387

.lr.ph.i4.i387:                                   ; preds = %.split, %.critedge2.i6.i389
  %.sroa.0499.1 = phi ptr [ %i.abr, %.critedge2.i6.i389 ], [ %i.abp, %.split ] ; 3 uses
  %i.abq = load ptr, ptr %.sroa.0499.1, align 8, !tbaa !30
  %switch.i5.i388 = icmp ugt ptr %i.abq, inttoptr (i64 -3 to ptr)
  br i1 %switch.i5.i388, label %.critedge2.i6.i389, label %_ZN4llvh19SmallPtrSetIteratorIPN6hermes10BasicBlockEEppEv.exit391

.critedge2.i6.i389:                               ; preds = %.lr.ph.i4.i387
  %i.abr = getelementptr inbounds nuw i8, ptr %.sroa.0499.1, i64 8 ; 3 uses
  %.not.i7.i390 = icmp eq ptr %i.abr, %i.xk
  br i1 %.not.i7.i390, label %_ZN4llvh19SmallPtrSetIteratorIPN6hermes10BasicBlockEEppEv.exit391, label %.lr.ph.i4.i387, !llvm.loop !212

_ZN4llvh19SmallPtrSetIteratorIPN6hermes10BasicBlockEEppEv.exit391: ; preds = %.lr.ph.i4.i387, %.critedge2.i6.i389, %.split
  %.sroa.0499.2 = phi ptr [ %i.abp, %.split ], [ %.sroa.0499.1, %.lr.ph.i4.i387 ], [ %i.abr, %.critedge2.i6.i389 ] ; 2 uses
  %.not605 = icmp eq ptr %.sroa.0499.2, %i.xn
  br i1 %.not605, label %._crit_edge679, label %.lr.ph678

bb.cv:                                            ; preds = %._crit_edge679, %.lr.ph682
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  %i.abs = getelementptr inbounds nuw i8, ptr %.sroa.0504.0681, i64 56 ; 3 uses
  %.not5.i3.i392 = icmp eq ptr %i.abs, %.pn14.i237
  br i1 %.not5.i3.i392, label %_ZN4llvh16DenseMapIteratorIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS2_Lj2EEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EELb0EEppEv.exit397, label %.lr.ph.i4.i393

.lr.ph.i4.i393:                                   ; preds = %bb.cv, %.critedge2.i6.i395
  %.sroa.0504.1 = phi ptr [ %i.abu, %.critedge2.i6.i395 ], [ %i.abs, %bb.cv ] ; 3 uses
  %i.abt = load ptr, ptr %.sroa.0504.1, align 8, !tbaa !35
  %magicptr.i5.i394 = ptrtoint ptr %i.abt to i64
  switch i64 %magicptr.i5.i394, label %_ZN4llvh16DenseMapIteratorIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS2_Lj2EEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EELb0EEppEv.exit397 [
    i64 -8, label %.critedge2.i6.i395
    i64 -16, label %.critedge2.i6.i395
  ]

.critedge2.i6.i395:                               ; preds = %.lr.ph.i4.i393, %.lr.ph.i4.i393
  %i.abu = getelementptr inbounds nuw i8, ptr %.sroa.0504.1, i64 56 ; 3 uses
  %.not.i7.i396 = icmp eq ptr %i.abu, %.pn14.i237
  br i1 %.not.i7.i396, label %_ZN4llvh16DenseMapIteratorIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS2_Lj2EEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EELb0EEppEv.exit397, label %.lr.ph.i4.i393, !llvm.loop !222

_ZN4llvh16DenseMapIteratorIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS2_Lj2EEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EELb0EEppEv.exit397: ; preds = %.lr.ph.i4.i393, %.critedge2.i6.i395, %bb.cv
  %.sroa.0504.2 = phi ptr [ %i.abs, %bb.cv ], [ %i.abu, %.critedge2.i6.i395 ], [ %.sroa.0504.1, %.lr.ph.i4.i393 ] ; 2 uses
  %.not604 = icmp eq ptr %.sroa.0504.2, %i.pa
  br i1 %.not604, label %._crit_edge683, label %.lr.ph682
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E11try_emplaceIJRiEEESt4pairINS_16DenseMapIteratorIS5_iS7_SA_Lb0EEEbERKS5_DpOT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.89") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 comdat align 2 !guid !243 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load i32, ptr %1, align 8                ; 3 uses
  %i.c = and i32 %i.b, 1
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
  %i.k = load ptr, ptr %2, align 8, !tbaa !35     ; 3 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = trunc i64 %i.l to i32                    ; 2 uses
  %i.n = lshr i32 %i.m, 4
  %i.o = lshr i32 %i.m, 9
  %i.p = xor i32 %i.n, %i.o
  %i.q = add i32 %i.i, -1                         ; 2 uses
  %.02745.i.i = and i32 %i.p, %i.q                ; 2 uses
  %i.r = zext nneg i32 %.02745.i.i to i64
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.r ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !35   ; 2 uses
  %i.u = icmp eq ptr %i.k, %i.t
  br i1 %i.u, label %.loopexit, label %.lr.ph.i.i, !prof !75

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %i.v = phi ptr [ %i.af, %bb.d ], [ %i.t, %bb.b ] ; 2 uses
  %i.w = phi ptr [ %i.ae, %bb.d ], [ %i.s, %bb.b ] ; 2 uses
  %.02748.i.i = phi i32 [ %.027.i.i, %bb.d ], [ %.02745.i.i, %bb.b ]
  %.047.i.i = phi i32 [ %i.ab, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.02946.i.i = phi ptr [ %spec.select.i.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %i.x = icmp eq ptr %i.v, inttoptr (i64 -8 to ptr)
  br i1 %i.x, label %bb.c, label %bb.d, !prof !32

bb.c:                                             ; preds = %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %.02946.i.i, null
  %i.y = select i1 %.not.i.i, ptr %i.w, ptr %.02946.i.i
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.z = icmp eq ptr %i.v, inttoptr (i64 -16 to ptr)
  %i.aa = icmp eq ptr %.02946.i.i, null
  %or.cond.not.i.i = select i1 %i.z, i1 %i.aa, i1 false
  %spec.select.i.i = select i1 %or.cond.not.i.i, ptr %i.w, ptr %.02946.i.i
  %i.ab = add i32 %.047.i.i, 1
  %i.ac = add i32 %.047.i.i, %.02748.i.i
  %.027.i.i = and i32 %i.ac, %i.q                 ; 2 uses
  %i.ad = zext i32 %.027.i.i to i64
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.ad ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !35 ; 2 uses
  %i.ag = icmp eq ptr %i.k, %i.af
  br i1 %i.ag, label %.loopexit, label %.lr.ph.i.i, !prof !76, !llvm.loop !1

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit: ; preds = %bb.c, %bb.a
  %.sink.i.i = phi ptr [ %i.y, %bb.c ], [ null, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sink.i.i, ptr %i.a, align 8, !tbaa !79
  %i.ah = lshr i32 %i.b, 1                        ; 2 uses
  %i.ai = shl i32 %i.ah, 2
  %i.aj = add i32 %i.ai, 4
  %i.ak = mul i32 %i.i, 3
  %.not.i.i6 = icmp ult i32 %i.aj, %i.ak
  br i1 %.not.i.i6, label %bb.f, label %bb.e, !prof !32

bb.e:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit
  %i.al = shl i32 %i.i, 1
  br label %.sink.split.i.i

bb.f:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !66
  %.neg.i.i = xor i32 %i.ah, -1
  %.neg13.i.i = add i32 %i.i, %.neg.i.i
  %i.ao = sub i32 %.neg13.i.i, %i.an
  %i.ap = lshr i32 %i.i, 3
  %.not10.i.i = icmp ugt i32 %i.ao, %i.ap
  br i1 %.not10.i.i, label %bb.g, label %.sink.split.i.i, !prof !32

.sink.split.i.i:                                  ; preds = %bb.f, %bb.e
  %.sink.i.i7 = phi i32 [ %i.al, %bb.e ], [ %i.i, %bb.f ]
  tail call void @_ZN4llvh13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_iEEE4growEj(ptr noundef nonnull align 8 dereferenceable(264) %1, i32 noundef %.sink.i.i7)
  %i.aq = call noundef zeroext i1 @_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %1, align 8
  %.pre9.i = load ptr, ptr %i.a, align 8, !tbaa !79
  br label %bb.g

bb.g:                                             ; preds = %.sink.split.i.i, %bb.f
  %i.ar = phi ptr [ %.pre9.i, %.sink.split.i.i ], [ %.sink.i.i, %bb.f ] ; 4 uses
  %i.as = phi i32 [ %.pre.i, %.sink.split.i.i ], [ %i.b, %bb.f ]
  %i.at = add i32 %i.as, 2
  store i32 %i.at, ptr %1, align 8
  %i.au = load ptr, ptr %i.ar, align 8, !tbaa !35
  %i.av = icmp eq ptr %i.au, inttoptr (i64 -8 to ptr)
  br i1 %i.av, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E16InsertIntoBucketIRKS5_JRiEEEPSA_SH_OT_DpOT0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !66
  %i.ay = add i32 %i.ax, -1
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !66
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E16InsertIntoBucketIRKS5_JRiEEEPSA_SH_OT_DpOT0_.exit

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E16InsertIntoBucketIRKS5_JRiEEEPSA_SH_OT_DpOT0_.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.az = load ptr, ptr %2, align 8, !tbaa !35
  store ptr %i.az, ptr %i.ar, align 8, !tbaa !35
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bb = load i32, ptr %3, align 4, !tbaa !11
  store i32 %i.bb, ptr %i.ba, align 8, !tbaa !11
  %i.bc = load i32, ptr %1, align 8
  %i.bd = and i32 %i.bc, 1
  %.not.i.i.i.i8 = icmp eq i32 %i.bd, 0           ; 2 uses
  %i.be = load ptr, ptr %i.d, align 8
  %i.bf = select i1 %.not.i.i.i.i8, ptr %i.be, ptr %i.d
  %i.bg = load i32, ptr %i.g, align 8
  %i.bh = select i1 %.not.i.i.i.i8, i32 %i.bg, i32 16
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.b, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E16InsertIntoBucketIRKS5_JRiEEEPSA_SH_OT_DpOT0_.exit
  %.sink37 = phi i32 [ %i.bh, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E16InsertIntoBucketIRKS5_JRiEEEPSA_SH_OT_DpOT0_.exit ], [ %i.i, %bb.b ], [ %i.i, %bb.d ]
  %.sink35 = phi ptr [ %i.bf, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E16InsertIntoBucketIRKS5_JRiEEEPSA_SH_OT_DpOT0_.exit ], [ %i.f, %bb.b ], [ %i.f, %bb.d ]
  %.sink34 = phi ptr [ %i.ar, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E16InsertIntoBucketIRKS5_JRiEEEPSA_SH_OT_DpOT0_.exit ], [ %i.s, %bb.b ], [ %i.ae, %bb.d ]
  %.sink = phi i8 [ 1, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E16InsertIntoBucketIRKS5_JRiEEEPSA_SH_OT_DpOT0_.exit ], [ 0, %bb.b ], [ 0, %bb.d ]
  %i.bi = zext i32 %.sink37 to i64
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %.sink35, i64 %i.bi
  store ptr %.sink34, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bj, ptr %.sroa.4.0..sroa_idx, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.bk, align 8, !tbaa !74
  ret void
}

declare noundef zeroext i1 @_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE9dominatesEPKS2_S5_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE17properlyDominatesEPKS2_S5_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZNK6hermes12LoopAnalysis13getLoopHeaderEPKNS_10BasicBlockE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(528) %0, ptr noundef %1) local_unnamed_addr #3 align 2 !guid !244 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  %i.b = and i32 %i.a, 1
  %.not.i.i.i.i = icmp eq i32 %i.b, 0             ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = select i1 %.not.i.i.i.i, ptr %i.d, ptr %i.c ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i32, ptr %i.f, align 8
  %i.h = select i1 %.not.i.i.i.i, i32 %i.g, i32 16 ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E6lookupES5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = ptrtoint ptr %1 to i64
  %i.k = trunc i64 %i.j to i32                    ; 2 uses
  %i.l = lshr i32 %i.k, 4
  %i.m = lshr i32 %i.k, 9
  %i.n = xor i32 %i.l, %i.m
  %i.o = add i32 %i.h, -1                         ; 2 uses
  %.02745.i.i = and i32 %i.o, %i.n                ; 2 uses
  %i.p = zext nneg i32 %.02745.i.i to i64         ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !35   ; 2 uses
  %i.s = icmp eq ptr %1, %i.r
  br i1 %i.s, label %.loopexit.i, label %.lr.ph.i.i, !prof !75

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %i.t = phi ptr [ %i.z, %bb.c ], [ %i.r, %bb.b ]
  %.02748.i.i = phi i32 [ %.027.i.i, %bb.c ], [ %.02745.i.i, %bb.b ]
  %.047.i.i = phi i32 [ %i.v, %bb.c ], [ 1, %bb.b ] ; 2 uses
  %i.u = icmp eq ptr %i.t, inttoptr (i64 -8 to ptr)
  br i1 %i.u, label %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E6lookupES5_.exit, label %bb.c, !prof !32

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.v = add i32 %.047.i.i, 1
  %i.w = add i32 %.047.i.i, %.02748.i.i
  %.027.i.i = and i32 %i.w, %i.o                  ; 2 uses
  %i.x = zext i32 %.027.i.i to i64                ; 2 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !35   ; 2 uses
  %i.aa = icmp eq ptr %1, %i.z
  br i1 %i.aa, label %.loopexit.i, label %.lr.ph.i.i, !prof !76, !llvm.loop !2

.loopexit.i:                                      ; preds = %bb.c, %bb.b
  %i.ab = phi i64 [ %i.p, %bb.b ], [ %i.x, %bb.c ]
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !35
  br label %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E6lookupES5_.exit

_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E6lookupES5_.exit: ; preds = %.lr.ph.i.i, %bb.a, %.loopexit.i
  %.0.i = phi ptr [ %i.ae, %.loopexit.i ], [ null, %bb.a ], [ null, %.lr.ph.i.i ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZNK6hermes12LoopAnalysis16getLoopPreheaderEPKNS_10BasicBlockE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(528) %0, ptr noundef %1) local_unnamed_addr #3 align 2 !guid !245 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  %i.b = and i32 %i.a, 1
  %.not.i.i.i.i.i = icmp eq i32 %i.b, 0           ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = select i1 %.not.i.i.i.i.i, ptr %i.d, ptr %i.c ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i32, ptr %i.f, align 8
  %i.h = select i1 %.not.i.i.i.i.i, i32 %i.g, i32 16 ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E6lookupES5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = ptrtoint ptr %1 to i64
  %i.k = trunc i64 %i.j to i32                    ; 2 uses
  %i.l = lshr i32 %i.k, 4
  %i.m = lshr i32 %i.k, 9
  %i.n = xor i32 %i.l, %i.m
  %i.o = add i32 %i.h, -1                         ; 2 uses
  %.02745.i.i.i = and i32 %i.o, %i.n              ; 2 uses
  %i.p = zext nneg i32 %.02745.i.i.i to i64       ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !35   ; 2 uses
  %i.s = icmp eq ptr %1, %i.r
  br i1 %i.s, label %_ZNK6hermes12LoopAnalysis13getLoopHeaderEPKNS_10BasicBlockE.exit, label %.lr.ph.i.i.i, !prof !75

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.c
  %i.t = phi ptr [ %i.z, %bb.c ], [ %i.r, %bb.b ]
  %.02748.i.i.i = phi i32 [ %.027.i.i.i, %bb.c ], [ %.02745.i.i.i, %bb.b ]
  %.047.i.i.i = phi i32 [ %i.v, %bb.c ], [ 1, %bb.b ] ; 2 uses
  %i.u = icmp eq ptr %i.t, inttoptr (i64 -8 to ptr)
  br i1 %i.u, label %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E6lookupES5_.exit, label %bb.c, !prof !32

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.v = add i32 %.047.i.i.i, 1
  %i.w = add i32 %.047.i.i.i, %.02748.i.i.i
  %.027.i.i.i = and i32 %i.w, %i.o                ; 2 uses
  %i.x = zext i32 %.027.i.i.i to i64              ; 2 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !35   ; 2 uses
  %i.aa = icmp eq ptr %1, %i.z
  br i1 %i.aa, label %_ZNK6hermes12LoopAnalysis13getLoopHeaderEPKNS_10BasicBlockE.exit, label %.lr.ph.i.i.i, !prof !76, !llvm.loop !2

_ZNK6hermes12LoopAnalysis13getLoopHeaderEPKNS_10BasicBlockE.exit: ; preds = %bb.c, %bb.b
  %i.ab = phi i64 [ %i.p, %bb.b ], [ %i.x, %bb.c ]
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !35 ; 4 uses
  %.not = icmp eq ptr %i.ae, null
  br i1 %.not, label %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E6lookupES5_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK6hermes12LoopAnalysis13getLoopHeaderEPKNS_10BasicBlockE.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = and i32 %i.ag, 1
  %.not.i.i.i.i = icmp eq i32 %i.ah, 0            ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = select i1 %.not.i.i.i.i, ptr %i.aj, ptr %i.ai ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.am = load i32, ptr %i.al, align 8
  %i.an = select i1 %.not.i.i.i.i, i32 %i.am, i32 16 ; 2 uses
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E6lookupES5_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ap = ptrtoint ptr %i.ae to i64
  %i.aq = trunc i64 %i.ap to i32                  ; 2 uses
  %i.ar = lshr i32 %i.aq, 4
  %i.as = lshr i32 %i.aq, 9
  %i.at = xor i32 %i.ar, %i.as
  %i.au = add i32 %i.an, -1                       ; 2 uses
  %.02745.i.i = and i32 %i.au, %i.at              ; 2 uses
  %i.av = zext nneg i32 %.02745.i.i to i64        ; 2 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !35 ; 2 uses
  %i.ay = icmp eq ptr %i.ae, %i.ax
  br i1 %i.ay, label %.loopexit.i, label %.lr.ph.i.i, !prof !75

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %i.az = phi ptr [ %i.bf, %bb.f ], [ %i.ax, %bb.e ]
  %.02748.i.i = phi i32 [ %.027.i.i, %bb.f ], [ %.02745.i.i, %bb.e ]
  %.047.i.i = phi i32 [ %i.bb, %bb.f ], [ 1, %bb.e ] ; 2 uses
  %i.ba = icmp eq ptr %i.az, inttoptr (i64 -8 to ptr)
  br i1 %i.ba, label %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E6lookupES5_.exit, label %bb.f, !prof !32

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bb = add i32 %.047.i.i, 1
  %i.bc = add i32 %.047.i.i, %.02748.i.i
  %.027.i.i = and i32 %i.bc, %i.au                ; 2 uses
  %i.bd = zext i32 %.027.i.i to i64               ; 2 uses
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %i.bd
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !35 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN4llvh13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_iEEE4growEj:bb.a
  %i.cq = load ptr, ptr %.0.ptr38.15, align 8, !tbaa !35 ; 2 uses
  %magicptr.15 = ptrtoint ptr %i.cq to i64
  switch i64 %magicptr.15, label %bb.aj [
    i64 -8, label %bb.ak
    i64 -16, label %bb.ak
  ]

bb.aj:                                            ; preds = %bb.ai
  store ptr %i.cq, ptr %.1.14, align 8, !tbaa !35
  %i.cr = getelementptr inbounds nuw i8, ptr %.1.14, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !11
  store i32 %i.ct, ptr %i.cr, align 8, !tbaa !11
  %i.cu = getelementptr inbounds nuw i8, ptr %.1.14, i64 16
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ai
  %.1.15 = phi ptr [ %.1.14, %bb.ai ], [ %.1.14, %bb.ai ], [ %i.cu, %bb.aj ]
  %i.cv = load i32, ptr %0, align 8
  %i.cw = and i32 %i.cv, -2
  store i32 %i.cw, ptr %0, align 8
  %i.cx = zext i32 %.027 to i64
  %i.cy = shl nuw nsw i64 %i.cx, 4
  %i.cz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cy) #15
  store ptr %i.cz, ptr %i.s, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.027, ptr %i.da, align 8
  call void @_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E18moveFromOldBucketsEPSA_SD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %2, ptr noundef nonnull %.1.15)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %bb.ap

bb.al:                                            ; preds = %bb.c
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.db, align 8, !tbaa !79 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !11
  %i.dc = icmp ult i32 %.027, 17
  br i1 %i.dc, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.dd = or disjoint i32 %i.p, 1
  store i32 %i.dd, ptr %0, align 8
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.de = zext i32 %.027 to i64
  %i.df = shl nuw nsw i64 %i.de, 4
  %i.dg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.df) #15
  store ptr %i.dg, ptr %i.db, align 8
  store i32 %.027, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.dh = zext i32 %.sroa.6.0.copyload to i64
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload, i64 %i.dh
  tail call void @_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E18moveFromOldBucketsEPSA_SD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %.sroa.0.0.copyload, ptr noundef %i.di)
  tail call void @_ZdlPv(ptr noundef %.sroa.0.0.copyload) #11
  br label %bb.ap

bb.ap:                                            ; preds = %bb.d, %bb.ao, %bb.ak
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E18moveFromOldBucketsEPSA_SD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !guid !308 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  %i.b = and i32 %i.a, 1                          ; 2 uses
  store i32 %i.b, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.c, align 4, !tbaa !66
  %.not.i.i.i.i = icmp eq i32 %i.b, 0             ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %.not.i.i.i.i, ptr %i.e, ptr %i.d ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i.i.i, i32 %i.h, i32 16 ; 2 uses
  %i.j = zext i32 %i.i to i64
  %.idx.i = shl nuw nsw i64 %i.j, 4               ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i
  %.not6.i = icmp eq i32 %i.i, 0
  br i1 %.not6.i, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E9initEmptyEv.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.l = add nsw i64 %.idx.i, -16                 ; 2 uses
  %i.m = lshr exact i64 %i.l, 4
  %i.n = add nuw nsw i64 %i.m, 1
  %xtraiter = and i64 %i.n, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.07.i.prol = phi ptr [ %i.o, %.lr.ph.i.prol ], [ %i.f, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.prol, align 8, !tbaa !35
  %i.o = getelementptr inbounds nuw i8, ptr %.07.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !305

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.07.i.unr = phi ptr [ %i.f, %.lr.ph.i.preheader ], [ %i.o, %.lr.ph.i.prol ]
  %i.p = icmp ult i64 %i.l, 112
  br i1 %i.p, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E9initEmptyEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.07.i = phi ptr [ %i.x, %.lr.ph.i ], [ %.07.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i, align 8, !tbaa !35
  %i.q = getelementptr inbounds nuw i8, ptr %.07.i, i64 16
  store ptr inttoptr (i64 -8 to ptr), ptr %i.q, align 8, !tbaa !35
  %i.r = getelementptr inbounds nuw i8, ptr %.07.i, i64 32
  store ptr inttoptr (i64 -8 to ptr), ptr %i.r, align 8, !tbaa !35
  %i.s = getelementptr inbounds nuw i8, ptr %.07.i, i64 48
  store ptr inttoptr (i64 -8 to ptr), ptr %i.s, align 8, !tbaa !35
  %i.t = getelementptr inbounds nuw i8, ptr %.07.i, i64 64
  store ptr inttoptr (i64 -8 to ptr), ptr %i.t, align 8, !tbaa !35
  %i.u = getelementptr inbounds nuw i8, ptr %.07.i, i64 80
  store ptr inttoptr (i64 -8 to ptr), ptr %i.u, align 8, !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %.07.i, i64 96
  store ptr inttoptr (i64 -8 to ptr), ptr %i.v, align 8, !tbaa !35
  %i.w = getelementptr inbounds nuw i8, ptr %.07.i, i64 112
  store ptr inttoptr (i64 -8 to ptr), ptr %i.w, align 8, !tbaa !35
  %i.x = getelementptr inbounds nuw i8, ptr %.07.i, i64 128 ; 2 uses
  %.not.i.7 = icmp eq ptr %i.x, %i.k
  br i1 %.not.i.7, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E9initEmptyEv.exit, label %.lr.ph.i, !llvm.loop !306

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E9initEmptyEv.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  %.not20 = icmp eq ptr %1, %2
  br i1 %.not20, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E9initEmptyEv.exit
  ret void

.lr.ph:                                           ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E9initEmptyEv.exit, %bb.e
  %.021 = phi ptr [ %i.bg, %bb.e ], [ %1, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E9initEmptyEv.exit ] ; 3 uses
  %i.y = load ptr, ptr %.021, align 8, !tbaa !35  ; 4 uses
  %magicptr = ptrtoint ptr %i.y to i64            ; 2 uses
  switch i64 %magicptr, label %bb.b [
    i64 -8, label %bb.e
    i64 -16, label %bb.e
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.z = load i32, ptr %0, align 8
  %i.aa = and i32 %i.z, 1
  %.not.i.i.i.i15 = icmp eq i32 %i.aa, 0          ; 2 uses
  %i.ab = load ptr, ptr %i.d, align 8
  %i.ac = select i1 %.not.i.i.i.i15, ptr %i.ab, ptr %i.d ; 2 uses
  %i.ad = load i32, ptr %i.g, align 8
  %i.ae = select i1 %.not.i.i.i.i15, i32 %i.ad, i32 16 ; 2 uses
  %i.af = icmp ne i32 %i.ae, 0
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = trunc i64 %magicptr to i32              ; 2 uses
  %i.ah = lshr i32 %i.ag, 4
  %i.ai = lshr i32 %i.ag, 9
  %i.aj = xor i32 %i.ah, %i.ai
  %i.ak = add i32 %i.ae, -1                       ; 2 uses
  %.02745.i.i = and i32 %i.ak, %i.aj              ; 2 uses
  %i.al = zext nneg i32 %.02745.i.i to i64
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.al ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !35 ; 2 uses
  %i.ao = icmp eq ptr %i.y, %i.an
  br i1 %i.ao, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit, label %.lr.ph.i.i, !prof !75

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %i.ap = phi ptr [ %i.az, %bb.d ], [ %i.an, %bb.b ] ; 2 uses
  %i.aq = phi ptr [ %i.ay, %bb.d ], [ %i.am, %bb.b ] ; 2 uses
  %.02748.i.i = phi i32 [ %.027.i.i, %bb.d ], [ %.02745.i.i, %bb.b ]
  %.047.i.i = phi i32 [ %i.av, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.02946.i.i = phi ptr [ %spec.select.i.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %i.ar = icmp eq ptr %i.ap, inttoptr (i64 -8 to ptr)
  br i1 %i.ar, label %bb.c, label %bb.d, !prof !32

bb.c:                                             ; preds = %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %.02946.i.i, null
  %i.as = select i1 %.not.i.i, ptr %i.aq, ptr %.02946.i.i
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.at = icmp eq ptr %i.ap, inttoptr (i64 -16 to ptr)
  %i.au = icmp eq ptr %.02946.i.i, null
  %or.cond.not.i.i = select i1 %i.at, i1 %i.au, i1 false
  %spec.select.i.i = select i1 %or.cond.not.i.i, ptr %i.aq, ptr %.02946.i.i
  %i.av = add i32 %.047.i.i, 1
  %i.aw = add i32 %.047.i.i, %.02748.i.i
  %.027.i.i = and i32 %i.aw, %i.ak                ; 2 uses
  %i.ax = zext i32 %.027.i.i to i64
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.ax ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !35 ; 2 uses
  %i.ba = icmp eq ptr %i.y, %i.az
  br i1 %i.ba, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit, label %.lr.ph.i.i, !prof !76, !llvm.loop !1

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit: ; preds = %bb.d, %bb.b, %bb.c
  %.sink.i.i = phi ptr [ %i.as, %bb.c ], [ %i.am, %bb.b ], [ %i.ay, %bb.d ] ; 2 uses
  store ptr %i.y, ptr %.sink.i.i, align 8, !tbaa !35
  %i.bb = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.021, i64 8
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !11
  store i32 %i.bd, ptr %i.bb, align 8, !tbaa !11
  %i.be = load i32, ptr %0, align 8
  %i.bf = add i32 %i.be, 2
  store i32 %i.bf, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %.lr.ph, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %.021, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.bg, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !307
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E16FindAndConstructERKS5_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 !guid !309 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load i32, ptr %0, align 8                ; 3 uses
  %i.c = and i32 %i.b, 1
  %.not.i.i.i.i = icmp eq i32 %i.c, 0             ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %.not.i.i.i.i, ptr %i.e, ptr %i.d ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i32, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i.i.i, i32 %i.h, i32 16 ; 7 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %1, align 8, !tbaa !35     ; 3 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = trunc i64 %i.l to i32                    ; 2 uses
  %i.n = lshr i32 %i.m, 4
  %i.o = lshr i32 %i.m, 9
  %i.p = xor i32 %i.n, %i.o
  %i.q = add i32 %i.i, -1                         ; 2 uses
  %.02745.i.i = and i32 %i.p, %i.q                ; 2 uses
  %i.r = zext nneg i32 %.02745.i.i to i64
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.r ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !35   ; 2 uses
  %i.u = icmp eq ptr %i.k, %i.t
  br i1 %i.u, label %.loopexit, label %.lr.ph.i.i, !prof !75

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %i.v = phi ptr [ %i.af, %bb.d ], [ %i.t, %bb.b ] ; 2 uses
  %i.w = phi ptr [ %i.ae, %bb.d ], [ %i.s, %bb.b ] ; 2 uses
  %.02748.i.i = phi i32 [ %.027.i.i, %bb.d ], [ %.02745.i.i, %bb.b ]
  %.047.i.i = phi i32 [ %i.ab, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.02946.i.i = phi ptr [ %spec.select.i.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %i.x = icmp eq ptr %i.v, inttoptr (i64 -8 to ptr)
  br i1 %i.x, label %bb.c, label %bb.d, !prof !32

bb.c:                                             ; preds = %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %.02946.i.i, null
  %i.y = select i1 %.not.i.i, ptr %i.w, ptr %.02946.i.i
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.z = icmp eq ptr %i.v, inttoptr (i64 -16 to ptr)
  %i.aa = icmp eq ptr %.02946.i.i, null
  %or.cond.not.i.i = select i1 %i.z, i1 %i.aa, i1 false
  %spec.select.i.i = select i1 %or.cond.not.i.i, ptr %i.w, ptr %.02946.i.i
  %i.ab = add i32 %.047.i.i, 1
  %i.ac = add i32 %.047.i.i, %.02748.i.i
  %.027.i.i = and i32 %i.ac, %i.q                 ; 2 uses
  %i.ad = zext i32 %.027.i.i to i64
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.ad ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !35 ; 2 uses
  %i.ag = icmp eq ptr %i.k, %i.af
  br i1 %i.ag, label %.loopexit, label %.lr.ph.i.i, !prof !76, !llvm.loop !2

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit: ; preds = %bb.c, %bb.a
  %.sink.i.i = phi ptr [ %i.y, %bb.c ], [ null, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sink.i.i, ptr %i.a, align 8, !tbaa !87
  %i.ah = lshr i32 %i.b, 1                        ; 2 uses
  %i.ai = shl i32 %i.ah, 2
  %i.aj = add i32 %i.ai, 4
  %i.ak = mul i32 %i.i, 3
  %.not.i.i5 = icmp ult i32 %i.aj, %i.ak
  br i1 %.not.i.i5, label %bb.f, label %bb.e, !prof !32

bb.e:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit
  %i.al = shl i32 %i.i, 1
  br label %.sink.split.i.i

bb.f:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !63
  %.neg.i.i = xor i32 %i.ah, -1
  %.neg13.i.i = add i32 %i.i, %.neg.i.i
  %i.ao = sub i32 %.neg13.i.i, %i.an
  %i.ap = lshr i32 %i.i, 3
  %.not10.i.i = icmp ugt i32 %i.ao, %i.ap
  br i1 %.not10.i.i, label %bb.g, label %.sink.split.i.i, !prof !32

.sink.split.i.i:                                  ; preds = %bb.f, %bb.e
  %.sink.i.i6 = phi i32 [ %i.al, %bb.e ], [ %i.i, %bb.f ]
  tail call void @_ZN4llvh13SmallDenseMapIPKN6hermes10BasicBlockEPS2_Lj16ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(264) %0, i32 noundef %.sink.i.i6)
  %i.aq = call noundef zeroext i1 @_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %0, align 8
  %.pre8.i = load ptr, ptr %i.a, align 8, !tbaa !87
  br label %bb.g

bb.g:                                             ; preds = %.sink.split.i.i, %bb.f
  %i.ar = phi ptr [ %.pre8.i, %.sink.split.i.i ], [ %.sink.i.i, %bb.f ] ; 4 uses
  %i.as = phi i32 [ %.pre.i, %.sink.split.i.i ], [ %i.b, %bb.f ]
  %i.at = add i32 %i.as, 2
  store i32 %i.at, ptr %0, align 8
  %i.au = load ptr, ptr %i.ar, align 8, !tbaa !35
  %i.av = icmp eq ptr %i.au, inttoptr (i64 -8 to ptr)
  br i1 %i.av, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E16InsertIntoBucketIRKS5_JEEEPSB_SH_OT_DpOT0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !63
  %i.ay = add i32 %i.ax, -1
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !63
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E16InsertIntoBucketIRKS5_JEEEPSB_SH_OT_DpOT0_.exit

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E16InsertIntoBucketIRKS5_JEEEPSB_SH_OT_DpOT0_.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.az = load ptr, ptr %1, align 8, !tbaa !35
  store ptr %i.az, ptr %i.ar, align 8, !tbaa !35
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr null, ptr %i.ba, align 8, !tbaa !35
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.b, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E16InsertIntoBucketIRKS5_JEEEPSB_SH_OT_DpOT0_.exit
  %.0 = phi ptr [ %i.ar, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E16InsertIntoBucketIRKS5_JEEEPSB_SH_OT_DpOT0_.exit ], [ %i.s, %bb.b ], [ %i.ae, %bb.d ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !guid !310 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  %i.b = and i32 %i.a, 1
  %.not.i.i.i = icmp eq i32 %i.b, 0               ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = select i1 %.not.i.i.i, ptr %i.d, ptr %i.c ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i32, ptr %i.f, align 8
  %i.h = select i1 %.not.i.i.i, i32 %i.g, i32 16  ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPKSB_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %1, align 8, !tbaa !35     ; 3 uses
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = trunc i64 %i.k to i32                    ; 2 uses
  %i.m = lshr i32 %i.l, 4
  %i.n = lshr i32 %i.l, 9
  %i.o = xor i32 %i.m, %i.n
  %i.p = add i32 %i.h, -1                         ; 2 uses
  %.02745.i = and i32 %i.o, %i.p                  ; 2 uses
  %i.q = zext nneg i32 %.02745.i to i64
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.q ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !35   ; 2 uses
  %i.t = icmp eq ptr %i.j, %i.s
  br i1 %i.t, label %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPKSB_.exit, label %.lr.ph.i, !prof !75

.lr.ph.i:                                         ; preds = %bb.b, %bb.d
  %i.u = phi ptr [ %i.ae, %bb.d ], [ %i.s, %bb.b ] ; 2 uses
  %i.v = phi ptr [ %i.ad, %bb.d ], [ %i.r, %bb.b ] ; 2 uses
  %.02748.i = phi i32 [ %.027.i, %bb.d ], [ %.02745.i, %bb.b ]
  %.047.i = phi i32 [ %i.aa, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.02946.i = phi ptr [ %spec.select.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %i.w = icmp eq ptr %i.u, inttoptr (i64 -8 to ptr)
  br i1 %i.w, label %bb.c, label %bb.d, !prof !32

bb.c:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq ptr %.02946.i, null
  %i.x = select i1 %.not.i, ptr %i.v, ptr %.02946.i
  br label %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPKSB_.exit

bb.d:                                             ; preds = %.lr.ph.i
  %i.y = icmp eq ptr %i.u, inttoptr (i64 -16 to ptr)
  %i.z = icmp eq ptr %.02946.i, null
  %or.cond.not.i = select i1 %i.y, i1 %i.z, i1 false
  %spec.select.i = select i1 %or.cond.not.i, ptr %i.v, ptr %.02946.i
  %i.aa = add i32 %.047.i, 1
  %i.ab = add i32 %.047.i, %.02748.i
  %.027.i = and i32 %i.ab, %i.p                   ; 2 uses
  %i.ac = zext i32 %.027.i to i64
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.ac ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !35 ; 2 uses
  %i.af = icmp eq ptr %i.j, %i.ae
  br i1 %i.af, label %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPKSB_.exit, label %.lr.ph.i, !prof !76, !llvm.loop !2

_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPKSB_.exit: ; preds = %bb.d, %bb.a, %bb.b, %bb.c
  %.sink.i = phi ptr [ %i.x, %bb.c ], [ null, %bb.a ], [ %i.r, %bb.b ], [ %i.ad, %bb.d ]
  %.234.i = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ true, %bb.b ], [ true, %bb.d ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !87
  ret i1 %.234.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh13SmallDenseMapIPKN6hermes10BasicBlockEPS2_Lj16ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(264) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !guid !311 {
bb.a:
  %2 = alloca %"struct.llvh::AlignedCharArrayUnion.259", align 16 ; 7 uses
  %i.a = icmp ugt i32 %1, 15
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %1, -1
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = lshr i64 %i.c, 1
  %i.e = or i64 %i.d, %i.c                        ; 2 uses
  %i.f = lshr i64 %i.e, 2
  %i.g = or i64 %i.f, %i.e                        ; 2 uses
  %i.h = lshr i64 %i.g, 4
  %i.i = or i64 %i.h, %i.g                        ; 2 uses
  %i.j = lshr i64 %i.i, 8
  %i.k = or i64 %i.j, %i.i                        ; 2 uses
  %i.l = lshr i64 %i.k, 16
  %i.m = or i64 %i.l, %i.k
  %i.n = trunc nuw i64 %i.m to i32
  %i.o = add i32 %i.n, 1
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.o, i32 64)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.027 = phi i32 [ %.sroa.speculated, %bb.b ], [ %1, %bb.a ] ; 6 uses
  %i.p = load i32, ptr %0, align 8                ; 2 uses
  %i.q = and i32 %i.p, 1
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.al, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = icmp ult i32 %.027, 16
  br i1 %i.r, label %bb.ap, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !35
  %magicptr = ptrtoint ptr %i.t to i64
  switch i64 %magicptr, label %bb.f [
    i64 -8, label %bb.g
    i64 -16, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.u = load <2 x ptr>, ptr %i.s, align 8, !tbaa !35
  store <2 x ptr> %i.u, ptr %2, align 16, !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.e, %bb.f
  %.1 = phi ptr [ %2, %bb.e ], [ %2, %bb.e ], [ %i.v, %bb.f ] ; 4 uses
  %.0.ptr38.1 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.w = load ptr, ptr %.0.ptr38.1, align 8, !tbaa !35
  %magicptr.1 = ptrtoint ptr %i.w to i64
  switch i64 %magicptr.1, label %bb.h [
    i64 -8, label %bb.i
    i64 -16, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.x = load <2 x ptr>, ptr %.0.ptr38.1, align 8, !tbaa !35
  store <2 x ptr> %i.x, ptr %.1, align 8, !tbaa !35
  %i.y = getelementptr inbounds nuw i8, ptr %.1, i64 16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.g
  %.1.1 = phi ptr [ %.1, %bb.g ], [ %.1, %bb.g ], [ %i.y, %bb.h ] ; 5 uses
  %.0.ptr38.2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load ptr, ptr %.0.ptr38.2, align 8, !tbaa !35 ; 2 uses
  %magicptr.2 = ptrtoint ptr %i.z to i64
  switch i64 %magicptr.2, label %bb.j [
    i64 -8, label %bb.k
    i64 -16, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  store ptr %i.z, ptr %.1.1, align 8, !tbaa !35
  %i.aa = getelementptr inbounds nuw i8, ptr %.1.1, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !35
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !35
  %i.ad = getelementptr inbounds nuw i8, ptr %.1.1, i64 16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.i
  %.1.2 = phi ptr [ %.1.1, %bb.i ], [ %.1.1, %bb.i ], [ %i.ad, %bb.j ] ; 5 uses
  %.0.ptr38.3 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ae = load ptr, ptr %.0.ptr38.3, align 8, !tbaa !35 ; 2 uses
  %magicptr.3 = ptrtoint ptr %i.ae to i64
  switch i64 %magicptr.3, label %bb.l [
    i64 -8, label %bb.m
    i64 -16, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  store ptr %i.ae, ptr %.1.2, align 8, !tbaa !35
  %i.af = getelementptr inbounds nuw i8, ptr %.1.2, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !35
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !35
  %i.ai = getelementptr inbounds nuw i8, ptr %.1.2, i64 16
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.k
  %.1.3 = phi ptr [ %.1.2, %bb.k ], [ %.1.2, %bb.k ], [ %i.ai, %bb.l ] ; 5 uses
  %.0.ptr38.4 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aj = load ptr, ptr %.0.ptr38.4, align 8, !tbaa !35 ; 2 uses
  %magicptr.4 = ptrtoint ptr %i.aj to i64
end_hunk_2
begin_hunk_3_@_ZN4llvh13SmallDenseMapIPKN6hermes10BasicBlockEPS2_Lj16ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEE4growEj:bb.a
  %i.cm = load ptr, ptr %.0.ptr38.15, align 8, !tbaa !35 ; 2 uses
  %magicptr.15 = ptrtoint ptr %i.cm to i64
  switch i64 %magicptr.15, label %bb.aj [
    i64 -8, label %bb.ak
    i64 -16, label %bb.ak
  ]

bb.aj:                                            ; preds = %bb.ai
  store ptr %i.cm, ptr %.1.14, align 8, !tbaa !35
  %i.cn = getelementptr inbounds nuw i8, ptr %.1.14, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !35
  store ptr %i.cp, ptr %i.cn, align 8, !tbaa !35
  %i.cq = getelementptr inbounds nuw i8, ptr %.1.14, i64 16
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ai
  %.1.15 = phi ptr [ %.1.14, %bb.ai ], [ %.1.14, %bb.ai ], [ %i.cq, %bb.aj ]
  %i.cr = load i32, ptr %0, align 8
  %i.cs = and i32 %i.cr, -2
  store i32 %i.cs, ptr %0, align 8
  %i.ct = zext i32 %.027 to i64
  %i.cu = shl nuw nsw i64 %i.ct, 4
  %i.cv = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cu) #15
  store ptr %i.cv, ptr %i.s, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.027, ptr %i.cw, align 8
  call void @_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E18moveFromOldBucketsEPSB_SE_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %2, ptr noundef nonnull %.1.15)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %bb.ap

bb.al:                                            ; preds = %bb.c
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.cx, align 8, !tbaa !87 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !11
  %i.cy = icmp ult i32 %.027, 17
  br i1 %i.cy, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.cz = or disjoint i32 %i.p, 1
  store i32 %i.cz, ptr %0, align 8
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.da = zext i32 %.027 to i64
  %i.db = shl nuw nsw i64 %i.da, 4
  %i.dc = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.db) #15
  store ptr %i.dc, ptr %i.cx, align 8
  store i32 %.027, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.dd = zext i32 %.sroa.6.0.copyload to i64
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload, i64 %i.dd
  tail call void @_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E18moveFromOldBucketsEPSB_SE_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %.sroa.0.0.copyload, ptr noundef %i.de)
  tail call void @_ZdlPv(ptr noundef %.sroa.0.0.copyload) #11
  br label %bb.ap

bb.ap:                                            ; preds = %bb.d, %bb.ao, %bb.ak
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E18moveFromOldBucketsEPSB_SE_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !guid !315 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  %i.b = and i32 %i.a, 1                          ; 2 uses
  store i32 %i.b, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.c, align 4, !tbaa !63
  %.not.i.i.i.i = icmp eq i32 %i.b, 0             ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %.not.i.i.i.i, ptr %i.e, ptr %i.d ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i.i.i, i32 %i.h, i32 16 ; 2 uses
  %i.j = zext i32 %i.i to i64
  %.idx.i = shl nuw nsw i64 %i.j, 4               ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i
  %.not6.i = icmp eq i32 %i.i, 0
  br i1 %.not6.i, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E9initEmptyEv.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.l = add nsw i64 %.idx.i, -16                 ; 2 uses
  %i.m = lshr exact i64 %i.l, 4
  %i.n = add nuw nsw i64 %i.m, 1
  %xtraiter = and i64 %i.n, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.07.i.prol = phi ptr [ %i.o, %.lr.ph.i.prol ], [ %i.f, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.prol, align 8, !tbaa !35
  %i.o = getelementptr inbounds nuw i8, ptr %.07.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !312

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.07.i.unr = phi ptr [ %i.f, %.lr.ph.i.preheader ], [ %i.o, %.lr.ph.i.prol ]
  %i.p = icmp ult i64 %i.l, 112
  br i1 %i.p, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E9initEmptyEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.07.i = phi ptr [ %i.x, %.lr.ph.i ], [ %.07.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i, align 8, !tbaa !35
  %i.q = getelementptr inbounds nuw i8, ptr %.07.i, i64 16
  store ptr inttoptr (i64 -8 to ptr), ptr %i.q, align 8, !tbaa !35
  %i.r = getelementptr inbounds nuw i8, ptr %.07.i, i64 32
  store ptr inttoptr (i64 -8 to ptr), ptr %i.r, align 8, !tbaa !35
  %i.s = getelementptr inbounds nuw i8, ptr %.07.i, i64 48
  store ptr inttoptr (i64 -8 to ptr), ptr %i.s, align 8, !tbaa !35
  %i.t = getelementptr inbounds nuw i8, ptr %.07.i, i64 64
  store ptr inttoptr (i64 -8 to ptr), ptr %i.t, align 8, !tbaa !35
  %i.u = getelementptr inbounds nuw i8, ptr %.07.i, i64 80
  store ptr inttoptr (i64 -8 to ptr), ptr %i.u, align 8, !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %.07.i, i64 96
  store ptr inttoptr (i64 -8 to ptr), ptr %i.v, align 8, !tbaa !35
  %i.w = getelementptr inbounds nuw i8, ptr %.07.i, i64 112
  store ptr inttoptr (i64 -8 to ptr), ptr %i.w, align 8, !tbaa !35
  %i.x = getelementptr inbounds nuw i8, ptr %.07.i, i64 128 ; 2 uses
  %.not.i.7 = icmp eq ptr %i.x, %i.k
  br i1 %.not.i.7, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E9initEmptyEv.exit, label %.lr.ph.i, !llvm.loop !313

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E9initEmptyEv.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  %.not20 = icmp eq ptr %1, %2
  br i1 %.not20, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E9initEmptyEv.exit
  ret void

.lr.ph:                                           ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E9initEmptyEv.exit, %bb.e
  %.021 = phi ptr [ %i.bg, %bb.e ], [ %1, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E9initEmptyEv.exit ] ; 3 uses
  %i.y = load ptr, ptr %.021, align 8, !tbaa !35  ; 4 uses
  %magicptr = ptrtoint ptr %i.y to i64            ; 2 uses
  switch i64 %magicptr, label %bb.b [
    i64 -8, label %bb.e
    i64 -16, label %bb.e
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.z = load i32, ptr %0, align 8
  %i.aa = and i32 %i.z, 1
  %.not.i.i.i.i15 = icmp eq i32 %i.aa, 0          ; 2 uses
  %i.ab = load ptr, ptr %i.d, align 8
  %i.ac = select i1 %.not.i.i.i.i15, ptr %i.ab, ptr %i.d ; 2 uses
  %i.ad = load i32, ptr %i.g, align 8
  %i.ae = select i1 %.not.i.i.i.i15, i32 %i.ad, i32 16 ; 2 uses
  %i.af = icmp ne i32 %i.ae, 0
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = trunc i64 %magicptr to i32              ; 2 uses
  %i.ah = lshr i32 %i.ag, 4
  %i.ai = lshr i32 %i.ag, 9
  %i.aj = xor i32 %i.ah, %i.ai
  %i.ak = add i32 %i.ae, -1                       ; 2 uses
  %.02745.i.i = and i32 %i.ak, %i.aj              ; 2 uses
  %i.al = zext nneg i32 %.02745.i.i to i64
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.al ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !35 ; 2 uses
  %i.ao = icmp eq ptr %i.y, %i.an
  br i1 %i.ao, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit, label %.lr.ph.i.i, !prof !75

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %i.ap = phi ptr [ %i.az, %bb.d ], [ %i.an, %bb.b ] ; 2 uses
  %i.aq = phi ptr [ %i.ay, %bb.d ], [ %i.am, %bb.b ] ; 2 uses
  %.02748.i.i = phi i32 [ %.027.i.i, %bb.d ], [ %.02745.i.i, %bb.b ]
  %.047.i.i = phi i32 [ %i.av, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.02946.i.i = phi ptr [ %spec.select.i.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %i.ar = icmp eq ptr %i.ap, inttoptr (i64 -8 to ptr)
  br i1 %i.ar, label %bb.c, label %bb.d, !prof !32

bb.c:                                             ; preds = %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %.02946.i.i, null
  %i.as = select i1 %.not.i.i, ptr %i.aq, ptr %.02946.i.i
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.at = icmp eq ptr %i.ap, inttoptr (i64 -16 to ptr)
  %i.au = icmp eq ptr %.02946.i.i, null
  %or.cond.not.i.i = select i1 %i.at, i1 %i.au, i1 false
  %spec.select.i.i = select i1 %or.cond.not.i.i, ptr %i.aq, ptr %.02946.i.i
  %i.av = add i32 %.047.i.i, 1
  %i.aw = add i32 %.047.i.i, %.02748.i.i
  %.027.i.i = and i32 %i.aw, %i.ak                ; 2 uses
  %i.ax = zext i32 %.027.i.i to i64
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.ax ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !35 ; 2 uses
  %i.ba = icmp eq ptr %i.y, %i.az
  br i1 %i.ba, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit, label %.lr.ph.i.i, !prof !76, !llvm.loop !2

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit: ; preds = %bb.d, %bb.b, %bb.c
  %.sink.i.i = phi ptr [ %i.as, %bb.c ], [ %i.am, %bb.b ], [ %i.ay, %bb.d ] ; 2 uses
  store ptr %i.y, ptr %.sink.i.i, align 8, !tbaa !35
  %i.bb = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.021, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !35
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !35
  %i.be = load i32, ptr %0, align 8
  %i.bf = add i32 %i.be, 2
  store i32 %i.bf, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %.lr.ph, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockEPS3_Lj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %.021, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.bg, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !314
}

declare noundef ptr @_ZNK4llvh19SmallPtrSetImplBase13FindBucketForEPKv(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !guid !316 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  %i.b = and i32 %i.a, 1
  %.not.i.i.i = icmp eq i32 %i.b, 0               ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = select i1 %.not.i.i.i, ptr %i.d, ptr %i.c ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i32, ptr %i.f, align 8
  %i.h = select i1 %.not.i.i.i, i32 %i.g, i32 16  ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPKSD_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %1, align 8, !tbaa !35     ; 3 uses
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = trunc i64 %i.k to i32                    ; 2 uses
  %i.m = lshr i32 %i.l, 4
  %i.n = lshr i32 %i.l, 9
  %i.o = xor i32 %i.m, %i.n
  %i.p = add i32 %i.h, -1                         ; 2 uses
  %.02745.i = and i32 %i.o, %i.p                  ; 2 uses
  %i.q = zext nneg i32 %.02745.i to i64
  %i.r = getelementptr inbounds nuw [56 x i8], ptr %i.e, i64 %i.q ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !35   ; 2 uses
  %i.t = icmp eq ptr %i.j, %i.s
  br i1 %i.t, label %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPKSD_.exit, label %.lr.ph.i, !prof !75

.lr.ph.i:                                         ; preds = %bb.b, %bb.d
  %i.u = phi ptr [ %i.ae, %bb.d ], [ %i.s, %bb.b ] ; 2 uses
  %i.v = phi ptr [ %i.ad, %bb.d ], [ %i.r, %bb.b ] ; 2 uses
  %.02748.i = phi i32 [ %.027.i, %bb.d ], [ %.02745.i, %bb.b ]
  %.047.i = phi i32 [ %i.aa, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.02946.i = phi ptr [ %spec.select.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %i.w = icmp eq ptr %i.u, inttoptr (i64 -8 to ptr)
  br i1 %i.w, label %bb.c, label %bb.d, !prof !32

bb.c:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq ptr %.02946.i, null
  %i.x = select i1 %.not.i, ptr %i.v, ptr %.02946.i
  br label %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPKSD_.exit

bb.d:                                             ; preds = %.lr.ph.i
  %i.y = icmp eq ptr %i.u, inttoptr (i64 -16 to ptr)
  %i.z = icmp eq ptr %.02946.i, null
  %or.cond.not.i = select i1 %i.y, i1 %i.z, i1 false
  %spec.select.i = select i1 %or.cond.not.i, ptr %i.v, ptr %.02946.i
  %i.aa = add i32 %.047.i, 1
  %i.ab = add i32 %.047.i, %.02748.i
  %.027.i = and i32 %i.ab, %i.p                   ; 2 uses
  %i.ac = zext i32 %.027.i to i64
  %i.ad = getelementptr inbounds nuw [56 x i8], ptr %i.e, i64 %i.ac ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !35 ; 2 uses
  %i.af = icmp eq ptr %i.j, %i.ae
  br i1 %i.af, label %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPKSD_.exit, label %.lr.ph.i, !prof !76, !llvm.loop !3

_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPKSD_.exit: ; preds = %bb.d, %bb.a, %bb.b, %bb.c
  %.sink.i = phi ptr [ %i.x, %bb.c ], [ null, %bb.a ], [ %i.r, %bb.b ], [ %i.ad, %bb.d ]
  %.234.i = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ true, %bb.b ], [ true, %bb.d ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !88
  ret i1 %.234.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E16InsertIntoBucketIRKS5_JS8_EEEPSD_SJ_OT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(48) %3) local_unnamed_addr #0 comdat align 2 !guid !317 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8, !tbaa !88
  %i.b = load i32, ptr %0, align 8                ; 3 uses
  %i.c = lshr i32 %i.b, 1                         ; 2 uses
  %i.d = and i32 %i.b, 1
  %.not.i.i.i = icmp eq i32 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i32, ptr %i.e, align 8
  %i.g = select i1 %.not.i.i.i, i32 %i.f, i32 16  ; 5 uses
  %i.h = shl i32 %i.c, 2
  %i.i = add i32 %i.h, 4
  %i.j = mul i32 %i.g, 3
  %.not.i = icmp ult i32 %i.i, %i.j
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !32

bb.b:                                             ; preds = %bb.a
  %i.k = shl i32 %i.g, 1
  br label %.sink.split.i

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !70
  %.neg.i = xor i32 %i.c, -1
  %.neg13.i = add i32 %i.g, %.neg.i
  %i.n = sub i32 %.neg13.i, %i.m
  %i.o = lshr i32 %i.g, 3
  %.not10.i = icmp ugt i32 %i.n, %i.o
  br i1 %.not10.i, label %bb.d, label %.sink.split.i, !prof !32

.sink.split.i:                                    ; preds = %bb.c, %bb.b
  %.sink.i = phi i32 [ %i.k, %bb.b ], [ %i.g, %bb.c ]
  tail call void @_ZN4llvh13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS2_Lj2EEELj16ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(904) %0, i32 noundef %.sink.i)
  %i.p = call noundef zeroext i1 @_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre = load i32, ptr %0, align 8
  %.pre9 = load ptr, ptr %i.a, align 8, !tbaa !88
  br label %bb.d

bb.d:                                             ; preds = %.sink.split.i, %bb.c
  %i.q = phi ptr [ %.pre9, %.sink.split.i ], [ %1, %bb.c ] ; 5 uses
  %i.r = phi i32 [ %.pre, %.sink.split.i ], [ %i.b, %bb.c ]
  %i.s = add i32 %i.r, 2
  store i32 %i.s, ptr %0, align 8
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !35
  %i.u = icmp eq ptr %i.t, inttoptr (i64 -8 to ptr)
  br i1 %i.u, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E20InsertIntoBucketImplIS5_EEPSD_RKS5_RKT_SH_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !70
  %i.x = add i32 %i.w, -1
  store i32 %i.x, ptr %i.v, align 4, !tbaa !70
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E20InsertIntoBucketImplIS5_EEPSD_RKS5_RKT_SH_.exit

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E20InsertIntoBucketImplIS5_EEPSD_RKS5_RKT_SH_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.y = load ptr, ptr %2, align 8, !tbaa !35
  store ptr %i.y, ptr %i.q, align 8, !tbaa !35
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  call void @_ZN4llvh19SmallPtrSetImplBaseC2EPPKvjOS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.z, ptr noundef nonnull %i.aa, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(48) %3) #11
  ret ptr %i.q
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS2_Lj2EEELj16ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(904) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !guid !318 {
bb.a:
  %2 = alloca %"struct.llvh::AlignedCharArrayUnion.260", align 8 ; 9 uses
  %i.a = icmp ugt i32 %1, 15
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %1, -1
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = lshr i64 %i.c, 1
  %i.e = or i64 %i.d, %i.c                        ; 2 uses
  %i.f = lshr i64 %i.e, 2
  %i.g = or i64 %i.f, %i.e                        ; 2 uses
  %i.h = lshr i64 %i.g, 4
  %i.i = or i64 %i.h, %i.g                        ; 2 uses
  %i.j = lshr i64 %i.i, 8
  %i.k = or i64 %i.j, %i.i                        ; 2 uses
  %i.l = lshr i64 %i.k, 16
  %i.m = or i64 %i.l, %i.k
  %i.n = trunc nuw i64 %i.m to i32
  %i.o = add i32 %i.n, 1
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.o, i32 64)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.027 = phi i32 [ %.sroa.speculated, %bb.b ], [ %1, %bb.a ] ; 6 uses
  %i.p = load i32, ptr %0, align 8                ; 2 uses
  %i.q = and i32 %i.p, 1
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.al, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = icmp ult i32 %.027, 16
  br i1 %i.r, label %bb.ap, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !35   ; 2 uses
  %magicptr = ptrtoint ptr %i.t to i64
  switch i64 %magicptr, label %bb.f [
    i64 -8, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit
    i64 -16, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit
  ]

bb.f:                                             ; preds = %bb.e
  store ptr %i.t, ptr %2, align 8, !tbaa !35
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @_ZN4llvh19SmallPtrSetImplBaseC2EPPKvjOS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.u, ptr noundef nonnull %i.w, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(48) %i.v) #11
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !21   ; 2 uses
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !20
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef %i.z) #11
  br label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit

_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit:           ; preds = %bb.e, %bb.e, %bb.g, %bb.f
  %.1 = phi ptr [ %2, %bb.e ], [ %2, %bb.e ], [ %i.x, %bb.f ], [ %i.x, %bb.g ] ; 6 uses
  %.0.ptr38.1 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load ptr, ptr %.0.ptr38.1, align 8, !tbaa !35 ; 2 uses
  %magicptr.1 = ptrtoint ptr %i.ac to i64
  switch i64 %magicptr.1, label %bb.h [
    i64 -8, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.1
    i64 -16, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.1
  ]

bb.h:                                             ; preds = %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit
  store ptr %i.ac, ptr %.1, align 8, !tbaa !35
  %i.ad = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.1, i64 40
  call void @_ZN4llvh19SmallPtrSetImplBaseC2EPPKvjOS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, ptr noundef nonnull %i.af, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(48) %i.ae) #11
  %i.ag = getelementptr inbounds nuw i8, ptr %.1, i64 56 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !21 ; 2 uses
  %i.aj = load ptr, ptr %i.ae, align 8, !tbaa !20
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.1, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef %i.ai) #11
  br label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.1

_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.1:         ; preds = %bb.i, %bb.h, %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit, %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit
  %.1.1 = phi ptr [ %.1, %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit ], [ %.1, %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit ], [ %i.ag, %bb.h ], [ %i.ag, %bb.i ] ; 6 uses
  %.0.ptr38.2 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.al = load ptr, ptr %.0.ptr38.2, align 8, !tbaa !35 ; 2 uses
  %magicptr.2 = ptrtoint ptr %i.al to i64
  switch i64 %magicptr.2, label %bb.j [
    i64 -8, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.2
    i64 -16, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.2
  ]

bb.j:                                             ; preds = %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.1
  store ptr %i.al, ptr %.1.1, align 8, !tbaa !35
  %i.am = getelementptr inbounds nuw i8, ptr %.1.1, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.1.1, i64 40
  call void @_ZN4llvh19SmallPtrSetImplBaseC2EPPKvjOS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.am, ptr noundef nonnull %i.ao, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(48) %i.an) #11
  %i.ap = getelementptr inbounds nuw i8, ptr %.1.1, i64 56 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !21 ; 2 uses
  %i.as = load ptr, ptr %i.an, align 8, !tbaa !20
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.2, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @free(ptr noundef %i.ar) #11
  br label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.2

_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.2:         ; preds = %bb.k, %bb.j, %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.1, %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.1
  %.1.2 = phi ptr [ %.1.1, %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.1 ], [ %.1.1, %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.1 ], [ %i.ap, %bb.j ], [ %i.ap, %bb.k ] ; 6 uses
  %.0.ptr38.3 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.au = load ptr, ptr %.0.ptr38.3, align 8, !tbaa !35 ; 2 uses
  %magicptr.3 = ptrtoint ptr %i.au to i64
  switch i64 %magicptr.3, label %bb.l [
    i64 -8, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.3
    i64 -16, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.3
  ]

bb.l:                                             ; preds = %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.2
  store ptr %i.au, ptr %.1.2, align 8, !tbaa !35
  %i.av = getelementptr inbounds nuw i8, ptr %.1.2, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.1.2, i64 40
  call void @_ZN4llvh19SmallPtrSetImplBaseC2EPPKvjOS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.av, ptr noundef nonnull %i.ax, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(48) %i.aw) #11
  %i.ay = getelementptr inbounds nuw i8, ptr %.1.2, i64 56 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !21 ; 2 uses
  %i.bb = load ptr, ptr %i.aw, align 8, !tbaa !20
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.3, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @free(ptr noundef %i.ba) #11
  br label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.3

_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.3:         ; preds = %bb.m, %bb.l, %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.2, %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.2
  %.1.3 = phi ptr [ %.1.2, %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.2 ], [ %.1.2, %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.2 ], [ %i.ay, %bb.l ], [ %i.ay, %bb.m ] ; 6 uses
  %.0.ptr38.4 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.bd = load ptr, ptr %.0.ptr38.4, align 8, !tbaa !35 ; 2 uses
  %magicptr.4 = ptrtoint ptr %i.bd to i64
  switch i64 %magicptr.4, label %bb.n [
    i64 -8, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.4
    i64 -16, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.4
  ]

bb.n:                                             ; preds = %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.3
  store ptr %i.bd, ptr %.1.3, align 8, !tbaa !35
  %i.be = getelementptr inbounds nuw i8, ptr %.1.3, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.1.3, i64 40
  call void @_ZN4llvh19SmallPtrSetImplBaseC2EPPKvjOS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.be, ptr noundef nonnull %i.bg, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(48) %i.bf) #11
  %i.bh = getelementptr inbounds nuw i8, ptr %.1.3, i64 56 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !21 ; 2 uses
  %i.bk = load ptr, ptr %i.bf, align 8, !tbaa !20
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.4, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @free(ptr noundef %i.bj) #11
  br label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.4

_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.4:         ; preds = %bb.o, %bb.n, %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.3, %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.3
  %.1.4 = phi ptr [ %.1.3, %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.3 ], [ %.1.3, %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.3 ], [ %i.bh, %bb.n ], [ %i.bh, %bb.o ] ; 6 uses
  %.0.ptr38.5 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.bm = load ptr, ptr %.0.ptr38.5, align 8, !tbaa !35 ; 2 uses
  %magicptr.5 = ptrtoint ptr %i.bm to i64
  switch i64 %magicptr.5, label %bb.p [
    i64 -8, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.5
    i64 -16, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.5
end_hunk_3
begin_hunk_4_@_ZN4llvh13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS2_Lj2EEELj16ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEE4growEj:bb.a
  %.0.ptr38.14 = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.ep = load ptr, ptr %.0.ptr38.14, align 8, !tbaa !35 ; 2 uses
  %magicptr.14 = ptrtoint ptr %i.ep to i64
  switch i64 %magicptr.14, label %bb.ah [
    i64 -8, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.14
    i64 -16, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.14
  ]

bb.ah:                                            ; preds = %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.13
  store ptr %i.ep, ptr %.1.13, align 8, !tbaa !35
  %i.eq = getelementptr inbounds nuw i8, ptr %.1.13, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.1.13, i64 40
  call void @_ZN4llvh19SmallPtrSetImplBaseC2EPPKvjOS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.eq, ptr noundef nonnull %i.es, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(48) %i.er) #11
  %i.et = getelementptr inbounds nuw i8, ptr %.1.13, i64 56 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !21 ; 2 uses
  %i.ew = load ptr, ptr %i.er, align 8, !tbaa !20
  %i.ex = icmp eq ptr %i.ev, %i.ew
  br i1 %i.ex, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.14, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @free(ptr noundef %i.ev) #11
  br label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.14

_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.14:        ; preds = %bb.ai, %bb.ah, %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.13, %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.13
  %.1.14 = phi ptr [ %.1.13, %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.13 ], [ %.1.13, %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.13 ], [ %i.et, %bb.ah ], [ %i.et, %bb.ai ] ; 6 uses
  %.0.ptr38.15 = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.ey = load ptr, ptr %.0.ptr38.15, align 8, !tbaa !35 ; 2 uses
  %magicptr.15 = ptrtoint ptr %i.ey to i64
  switch i64 %magicptr.15, label %bb.aj [
    i64 -8, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.15
    i64 -16, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.15
  ]

bb.aj:                                            ; preds = %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.14
  store ptr %i.ey, ptr %.1.14, align 8, !tbaa !35
  %i.ez = getelementptr inbounds nuw i8, ptr %.1.14, i64 8
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.1.14, i64 40
  call void @_ZN4llvh19SmallPtrSetImplBaseC2EPPKvjOS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.ez, ptr noundef nonnull %i.fb, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(48) %i.fa) #11
  %i.fc = getelementptr inbounds nuw i8, ptr %.1.14, i64 56 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !21 ; 2 uses
  %i.ff = load ptr, ptr %i.fa, align 8, !tbaa !20
  %i.fg = icmp eq ptr %i.fe, %i.ff
  br i1 %i.fg, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.15, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @free(ptr noundef %i.fe) #11
  br label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.15

_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.15:        ; preds = %bb.ak, %bb.aj, %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.14, %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.14
  %.1.15 = phi ptr [ %.1.14, %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.14 ], [ %.1.14, %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.14 ], [ %i.fc, %bb.aj ], [ %i.fc, %bb.ak ]
  %i.fh = load i32, ptr %0, align 8
  %i.fi = and i32 %i.fh, -2
  store i32 %i.fi, ptr %0, align 8
  %i.fj = zext i32 %.027 to i64
  %i.fk = mul nuw nsw i64 %i.fj, 56
  %i.fl = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fk) #15
  store ptr %i.fl, ptr %i.s, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.027, ptr %i.fm, align 8
  call void @_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E18moveFromOldBucketsEPSD_SG_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %2, ptr noundef nonnull %.1.15)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %bb.ap

bb.al:                                            ; preds = %bb.c
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.fn, align 8, !tbaa !88 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !11
  %i.fo = icmp ult i32 %.027, 17
  br i1 %i.fo, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.fp = or disjoint i32 %i.p, 1
  store i32 %i.fp, ptr %0, align 8
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.fq = zext i32 %.027 to i64
  %i.fr = mul nuw nsw i64 %i.fq, 56
  %i.fs = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fr) #15
  store ptr %i.fs, ptr %i.fn, align 8
  store i32 %.027, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.ft = zext i32 %.sroa.6.0.copyload to i64
  %i.fu = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.0.copyload, i64 %i.ft
  tail call void @_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E18moveFromOldBucketsEPSD_SG_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %.sroa.0.0.copyload, ptr noundef %i.fu)
  tail call void @_ZdlPv(ptr noundef %.sroa.0.0.copyload) #11
  br label %bb.ap

bb.ap:                                            ; preds = %bb.d, %bb.ao, %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E18moveFromOldBucketsEPSD_SG_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !guid !321 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  %i.b = and i32 %i.a, 1                          ; 2 uses
  store i32 %i.b, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.c, align 4, !tbaa !70
  %.not.i.i.i.i = icmp eq i32 %i.b, 0             ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %.not.i.i.i.i, ptr %i.e, ptr %i.d ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i.i.i, i32 %i.h, i32 16 ; 2 uses
  %i.j = zext i32 %i.i to i64
  %.idx.i = mul nuw nsw i64 %i.j, 56
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i
  %.not6.i = icmp eq i32 %i.i, 0
  br i1 %.not6.i, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E9initEmptyEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.07.i = phi ptr [ %i.l, %.lr.ph.i ], [ %i.f, %bb.a ] ; 2 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i, align 8, !tbaa !35
  %i.l = getelementptr inbounds nuw i8, ptr %.07.i, i64 56 ; 2 uses
  %.not.i = icmp eq ptr %i.l, %i.k
  br i1 %.not.i, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E9initEmptyEv.exit, label %.lr.ph.i, !llvm.loop !319

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E9initEmptyEv.exit: ; preds = %.lr.ph.i, %bb.a
  %.not20 = icmp eq ptr %1, %2
  br i1 %.not20, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E9initEmptyEv.exit
  ret void

.lr.ph:                                           ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E9initEmptyEv.exit, %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit
  %.021 = phi ptr [ %i.ay, %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit ], [ %1, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E9initEmptyEv.exit ] ; 4 uses
  %i.m = load ptr, ptr %.021, align 8, !tbaa !35  ; 4 uses
  %magicptr = ptrtoint ptr %i.m to i64            ; 2 uses
  switch i64 %magicptr, label %bb.b [
    i64 -8, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit
    i64 -16, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.n = load i32, ptr %0, align 8
  %i.o = and i32 %i.n, 1
  %.not.i.i.i.i15 = icmp eq i32 %i.o, 0           ; 2 uses
  %i.p = load ptr, ptr %i.d, align 8
  %i.q = select i1 %.not.i.i.i.i15, ptr %i.p, ptr %i.d ; 2 uses
  %i.r = load i32, ptr %i.g, align 8
  %i.s = select i1 %.not.i.i.i.i15, i32 %i.r, i32 16 ; 2 uses
  %i.t = icmp ne i32 %i.s, 0
  tail call void @llvm.assume(i1 %i.t)
  %i.u = trunc i64 %magicptr to i32               ; 2 uses
  %i.v = lshr i32 %i.u, 4
  %i.w = lshr i32 %i.u, 9
  %i.x = xor i32 %i.v, %i.w
  %i.y = add i32 %i.s, -1                         ; 2 uses
  %.02745.i.i = and i32 %i.y, %i.x                ; 2 uses
  %i.z = zext nneg i32 %.02745.i.i to i64
  %i.aa = getelementptr inbounds nuw [56 x i8], ptr %i.q, i64 %i.z ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !35 ; 2 uses
  %i.ac = icmp eq ptr %i.m, %i.ab
  br i1 %i.ac, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit, label %.lr.ph.i.i, !prof !75

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %i.ad = phi ptr [ %i.an, %bb.d ], [ %i.ab, %bb.b ] ; 2 uses
  %i.ae = phi ptr [ %i.am, %bb.d ], [ %i.aa, %bb.b ] ; 2 uses
  %.02748.i.i = phi i32 [ %.027.i.i, %bb.d ], [ %.02745.i.i, %bb.b ]
  %.047.i.i = phi i32 [ %i.aj, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.02946.i.i = phi ptr [ %spec.select.i.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %i.af = icmp eq ptr %i.ad, inttoptr (i64 -8 to ptr)
  br i1 %i.af, label %bb.c, label %bb.d, !prof !32

bb.c:                                             ; preds = %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %.02946.i.i, null
  %i.ag = select i1 %.not.i.i, ptr %i.ae, ptr %.02946.i.i
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ah = icmp eq ptr %i.ad, inttoptr (i64 -16 to ptr)
  %i.ai = icmp eq ptr %.02946.i.i, null
  %or.cond.not.i.i = select i1 %i.ah, i1 %i.ai, i1 false
  %spec.select.i.i = select i1 %or.cond.not.i.i, ptr %i.ae, ptr %.02946.i.i
  %i.aj = add i32 %.047.i.i, 1
  %i.ak = add i32 %.047.i.i, %.02748.i.i
  %.027.i.i = and i32 %i.ak, %i.y                 ; 2 uses
  %i.al = zext i32 %.027.i.i to i64
  %i.am = getelementptr inbounds nuw [56 x i8], ptr %i.q, i64 %i.al ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !35 ; 2 uses
  %i.ao = icmp eq ptr %i.m, %i.an
  br i1 %i.ao, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit, label %.lr.ph.i.i, !prof !76, !llvm.loop !3

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit: ; preds = %bb.d, %bb.b, %bb.c
  %.sink.i.i = phi ptr [ %i.ag, %bb.c ], [ %i.aa, %bb.b ], [ %i.am, %bb.d ] ; 3 uses
  store ptr %i.m, ptr %.sink.i.i, align 8, !tbaa !35
  %i.ap = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.021, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 40
  tail call void @_ZN4llvh19SmallPtrSetImplBaseC2EPPKvjOS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.ap, ptr noundef nonnull %i.ar, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(48) %i.aq) #11
  %i.as = load i32, ptr %0, align 8
  %i.at = add i32 %i.as, 2
  store i32 %i.at, ptr %0, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %.021, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !21 ; 2 uses
  %i.aw = load ptr, ptr %i.aq, align 8, !tbaa !20
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit
  tail call void @free(ptr noundef %i.av) #11
  br label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit

_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit:           ; preds = %.lr.ph, %.lr.ph, %bb.e, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %.021, i64 56 ; 2 uses
  %.not = icmp eq ptr %i.ay, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !320
}

declare void @_ZN4llvh19SmallPtrSetImplBaseC2EPPKvjOS0_(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E15LookupBucketForIS5_EEbRKT_RPSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !guid !322 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !84     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !85   ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E15LookupBucketForIS5_EEbRKT_RPKSC_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !81     ; 3 uses
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = trunc i64 %i.f to i32                    ; 2 uses
  %i.h = lshr i32 %i.g, 4
  %i.i = lshr i32 %i.g, 9
  %i.j = xor i32 %i.h, %i.i
  %i.k = add i32 %i.c, -1                         ; 2 uses
  %.02744.i = and i32 %i.j, %i.k                  ; 2 uses
  %i.l = zext nneg i32 %.02744.i to i64
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !81   ; 2 uses
  %i.o = icmp eq ptr %i.e, %i.n
  br i1 %i.o, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E15LookupBucketForIS5_EEbRKT_RPKSC_.exit, label %.lr.ph.i, !prof !75

.lr.ph.i:                                         ; preds = %bb.b, %bb.d
  %i.p = phi ptr [ %i.z, %bb.d ], [ %i.n, %bb.b ] ; 2 uses
  %i.q = phi ptr [ %i.y, %bb.d ], [ %i.m, %bb.b ] ; 2 uses
  %.02747.i = phi i32 [ %.027.i, %bb.d ], [ %.02744.i, %bb.b ]
  %.046.i = phi i32 [ %i.v, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.02945.i = phi ptr [ %spec.select.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %i.r = icmp eq ptr %i.p, inttoptr (i64 -8 to ptr)
  br i1 %i.r, label %bb.c, label %bb.d, !prof !32

bb.c:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq ptr %.02945.i, null
  %i.s = select i1 %.not.i, ptr %i.q, ptr %.02945.i
  br label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E15LookupBucketForIS5_EEbRKT_RPKSC_.exit

bb.d:                                             ; preds = %.lr.ph.i
  %i.t = icmp eq ptr %i.p, inttoptr (i64 -16 to ptr)
  %i.u = icmp eq ptr %.02945.i, null
  %or.cond.not.i = select i1 %i.t, i1 %i.u, i1 false
  %spec.select.i = select i1 %or.cond.not.i, ptr %i.q, ptr %.02945.i
  %i.v = add i32 %.046.i, 1
  %i.w = add i32 %.046.i, %.02747.i
  %.027.i = and i32 %i.w, %i.k                    ; 2 uses
  %i.x = zext i32 %.027.i to i64
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.x ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !81   ; 2 uses
  %i.aa = icmp eq ptr %i.e, %i.z
  br i1 %i.aa, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E15LookupBucketForIS5_EEbRKT_RPKSC_.exit, label %.lr.ph.i, !prof !76, !llvm.loop !4

_ZNK4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E15LookupBucketForIS5_EEbRKT_RPKSC_.exit: ; preds = %bb.d, %bb.a, %bb.b, %bb.c
  %.sink.i = phi ptr [ %i.s, %bb.c ], [ null, %bb.a ], [ %i.m, %bb.b ], [ %i.y, %bb.d ]
  %.234.i = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ true, %bb.b ], [ true, %bb.d ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !89
  ret i1 %.234.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E16FindAndConstructERKS5_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 !guid !323 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !84     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !85   ; 7 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E15LookupBucketForIS5_EEbRKT_RPSC_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !81     ; 3 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = lshr i32 %i.h, 4
  %i.j = lshr i32 %i.h, 9
  %i.k = xor i32 %i.i, %i.j
  %i.l = add i32 %i.d, -1                         ; 2 uses
  %.02744.i.i = and i32 %i.k, %i.l                ; 2 uses
  %i.m = zext nneg i32 %.02744.i.i to i64
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.m ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !81   ; 2 uses
  %i.p = icmp eq ptr %i.f, %i.o
  br i1 %i.p, label %.loopexit, label %.lr.ph.i.i, !prof !75

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %i.q = phi ptr [ %i.aa, %bb.d ], [ %i.o, %bb.b ] ; 2 uses
  %i.r = phi ptr [ %i.z, %bb.d ], [ %i.n, %bb.b ] ; 2 uses
  %.02747.i.i = phi i32 [ %.027.i.i, %bb.d ], [ %.02744.i.i, %bb.b ]
  %.046.i.i = phi i32 [ %i.w, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.02945.i.i = phi ptr [ %spec.select.i.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %i.s = icmp eq ptr %i.q, inttoptr (i64 -8 to ptr)
  br i1 %i.s, label %bb.c, label %bb.d, !prof !32

bb.c:                                             ; preds = %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %.02945.i.i, null
  %i.t = select i1 %.not.i.i, ptr %i.r, ptr %.02945.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E15LookupBucketForIS5_EEbRKT_RPSC_.exit

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.u = icmp eq ptr %i.q, inttoptr (i64 -16 to ptr)
  %i.v = icmp eq ptr %.02945.i.i, null
  %or.cond.not.i.i = select i1 %i.u, i1 %i.v, i1 false
  %spec.select.i.i = select i1 %or.cond.not.i.i, ptr %i.r, ptr %.02945.i.i
  %i.w = add i32 %.046.i.i, 1
  %i.x = add i32 %.046.i.i, %.02747.i.i
  %.027.i.i = and i32 %i.x, %i.l                  ; 2 uses
  %i.y = zext i32 %.027.i.i to i64
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.y ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !81  ; 2 uses
  %i.ab = icmp eq ptr %i.f, %i.aa
  br i1 %i.ab, label %.loopexit, label %.lr.ph.i.i, !prof !76, !llvm.loop !4

_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E15LookupBucketForIS5_EEbRKT_RPSC_.exit: ; preds = %bb.c, %bb.a
  %.sink.i.i = phi ptr [ %i.t, %bb.c ], [ null, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sink.i.i, ptr %i.a, align 8, !tbaa !89
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !90 ; 3 uses
  %i.ae = shl i32 %i.ad, 2
  %i.af = add i32 %i.ae, 4
  %i.ag = mul i32 %i.d, 3
  %.not.i.i4 = icmp ult i32 %i.af, %i.ag
  br i1 %.not.i.i4, label %bb.f, label %bb.e, !prof !32

bb.e:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E15LookupBucketForIS5_EEbRKT_RPSC_.exit
  %i.ah = shl i32 %i.d, 1
  br label %.sink.split.i.i

bb.f:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E15LookupBucketForIS5_EEbRKT_RPSC_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !91
  %.neg.i.i = xor i32 %i.ad, -1
  %.neg12.i.i = add i32 %i.d, %.neg.i.i
  %i.ak = sub i32 %.neg12.i.i, %i.aj
  %i.al = lshr i32 %i.d, 3
  %.not10.i.i = icmp ugt i32 %i.ak, %i.al
  br i1 %.not10.i.i, label %bb.g, label %.sink.split.i.i, !prof !32

.sink.split.i.i:                                  ; preds = %bb.f, %bb.e
  %.sink.i.i5 = phi i32 [ %i.ah, %bb.e ], [ %i.d, %bb.f ]
  tail call void @_ZN4llvh8DenseMapIPKN6hermes9ScopeDescENS1_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %.sink.i.i5)
  %i.am = call noundef zeroext i1 @_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E15LookupBucketForIS5_EEbRKT_RPSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %i.ac, align 8, !tbaa !90
  %.pre8.i = load ptr, ptr %i.a, align 8, !tbaa !89
  br label %bb.g

bb.g:                                             ; preds = %.sink.split.i.i, %bb.f
  %i.an = phi ptr [ %.pre8.i, %.sink.split.i.i ], [ %.sink.i.i, %bb.f ] ; 5 uses
  %i.ao = phi i32 [ %.pre.i, %.sink.split.i.i ], [ %i.ad, %bb.f ]
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.ac, align 8, !tbaa !90
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !81
  %i.ar = icmp eq ptr %i.aq, inttoptr (i64 -8 to ptr)
  br i1 %i.ar, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E16InsertIntoBucketIRKS5_JEEEPSC_SI_OT_DpOT0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !91
  %i.au = add i32 %i.at, -1
  store i32 %i.au, ptr %i.as, align 4, !tbaa !91
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E16InsertIntoBucketIRKS5_JEEEPSC_SI_OT_DpOT0_.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E16InsertIntoBucketIRKS5_JEEEPSC_SI_OT_DpOT0_.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.av = load ptr, ptr %1, align 8, !tbaa !81
  store ptr %i.av, ptr %i.an, align 8, !tbaa !81
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i32 0, ptr %i.aw, align 8, !tbaa !325
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  store i8 0, ptr %i.ax, align 4, !tbaa !326
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.b, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E16InsertIntoBucketIRKS5_JEEEPSC_SI_OT_DpOT0_.exit
  %.0 = phi ptr [ %i.an, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E16InsertIntoBucketIRKS5_JEEEPSC_SI_OT_DpOT0_.exit ], [ %i.n, %bb.b ], [ %i.z, %bb.d ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh8DenseMapIPKN6hermes9ScopeDescENS1_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !guid !331 {
_ZN4llvh8DenseMapIPKN6hermes9ScopeDescENS1_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEE15allocateBucketsEj.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !85   ; 2 uses
end_hunk_4
