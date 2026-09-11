Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HexagonFrameLowering?download=true
inline.NumInlined: 5341
inline.NumDeleted: 2406
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZNK4llvm20HexagonFrameLowering22findShrunkPrologEpilogERNS_15MachineFunctionERPNS_17MachineBasicBlockES5_:bb.a
  %i.kn = zext nneg i32 %i.kh to i64              ; 2 uses
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %i.kn
  %i.kp = load i64, ptr %i.ko, align 8, !tbaa !52
  %i.kq = select i1 %.not.i.i93, i64 -1, i64 %i.km
  %i.kr = icmp eq i32 %i.kh, %i.id
  %i.ks = select i1 %i.kr, i64 %i.ii, i64 -1
  %spec.select44.peel.i.i.i = and i64 %i.kq, %i.ks
  %.230.peel.i.i66.i = and i64 %spec.select44.peel.i.i.i, %i.kp ; 2 uses
  %.not37.peel.i.i67.i = icmp eq i64 %.230.peel.i.i66.i, 0
  br i1 %.not37.peel.i.i67.i, label %bb.ab, label %_ZNK4llvm9BitVector9find_nextEj.exit.i

bb.ab:                                            ; preds = %.lr.ph.i.i.i
  %indvars.iv.next.peel.i.i.i = add nuw nsw i64 %i.kn, 1 ; 2 uses
  %exitcond.peel.not.i.i.i = icmp eq i64 %indvars.iv.next.peel.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.peel.not.i.i.i, label %.thread98.i, label %.peel.next.i.i71.i

.peel.next.i.i71.i:                               ; preds = %bb.ab, %bb.ac
  %indvars.iv.i.i72.i = phi i64 [ %indvars.iv.next.i.i77.i, %bb.ac ], [ %indvars.iv.next.peel.i.i.i, %bb.ab ] ; 4 uses
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %indvars.iv.i.i72.i
  %i.ku = load i64, ptr %i.kt, align 8, !tbaa !52
  %i.kv = icmp eq i64 %indvars.iv.i.i72.i, %i.ij
  %i.kw = select i1 %i.kv, i64 %i.ii, i64 -1
  %.230.i.i73.i = and i64 %i.kw, %i.ku            ; 2 uses
  %.not37.i.i74.i = icmp eq i64 %.230.i.i73.i, 0
  br i1 %.not37.i.i74.i, label %bb.ac, label %.loopexit48.i.i75.i

.loopexit48.i.i75.i:                              ; preds = %.peel.next.i.i71.i
  %.pre.i.i76.i = trunc nuw nsw i64 %indvars.iv.i.i72.i to i32
  br label %_ZNK4llvm9BitVector9find_nextEj.exit.i

bb.ac:                                            ; preds = %.peel.next.i.i71.i
  %indvars.iv.next.i.i77.i = add nuw nsw i64 %indvars.iv.i.i72.i, 1 ; 2 uses
  %exitcond.not.i.i78.i = icmp eq i64 %indvars.iv.next.i.i77.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i78.i, label %.thread98.i, label %.peel.next.i.i71.i, !llvm.loop !2

_ZNK4llvm9BitVector9find_nextEj.exit.i:           ; preds = %.loopexit48.i.i75.i, %.lr.ph.i.i.i
  %.pre-phi.i.i68.i = phi i32 [ %.pre.i.i76.i, %.loopexit48.i.i75.i ], [ %i.kh, %.lr.ph.i.i.i ]
  %.230.lcssa.i.i69.i = phi i64 [ %.230.i.i73.i, %.loopexit48.i.i75.i ], [ %.230.peel.i.i66.i, %.lr.ph.i.i.i ]
  %i.kx = shl nuw i32 %.pre-phi.i.i68.i, 6        ; 2 uses
  %i.ky = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.230.lcssa.i.i69.i, i1 true)
  %i.kz = trunc nuw nsw i64 %i.ky to i32
  %i.la = or disjoint i32 %i.kx, %i.kz
  %i.lb = icmp slt i32 %i.kx, 0
  br i1 %i.lb, label %.thread98.i, label %bb.y, !llvm.loop !727

.thread98.i:                                      ; preds = %bb.x, %_ZNK4llvm9BitVector9find_nextEj.exit.i, %bb.ab, %bb.aa, %bb.z, %_ZN4llvm16MCSubRegIteratorppEv.exit.i, %bb.ac, %_ZNK4llvm9BitVector10find_firstEv.exit.i, %bb.w, %bb.u, %bb.s, %bb.q, %.lr.ph135.i
  %i.lc = getelementptr inbounds nuw i8, ptr %.052134.i, i64 32 ; 2 uses
  %.not.i94 = icmp eq ptr %i.lc, %i.hz
  br i1 %.not.i94, label %._crit_edge.i, label %.lr.ph135.i

._crit_edge.i:                                    ; preds = %.thread98.i, %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.092.0138.i) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.092.0138.i, align 8
  %i.ld = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i = icmp eq i64 %i.ld, 0
  br i1 %.not.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i: ; preds = %._crit_edge.i
  %i.le = load i32, ptr %i.hf, align 4, !tbaa !305
  %i.lf = and i32 %i.le, 8
  %.not34.i.i.i.i = icmp eq i32 %i.lf, 0
  br i1 %.not34.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i
  %.sroa.0.05.i.i.i.i = phi ptr [ %i.lh, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i ], [ %.sroa.092.0138.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i ]
  %i.lg = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 8
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !295 ; 3 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 44
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !305
  %i.lk = and i32 %i.lj, 8
  %.not3.i.i.i.i = icmp eq i32 %i.lk, 0
  br i1 %.not3.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i, !llvm.loop !3

_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i, %._crit_edge.i
  %.sroa.0.1.i.i.i.i = phi ptr [ %.sroa.092.0138.i, %._crit_edge.i ], [ %.sroa.092.0138.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i ], [ %i.lh, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i ]
  %i.ll = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i, i64 8
  %.sroa.092.0.i = load ptr, ptr %i.ll, align 8, !tbaa !295 ; 2 uses
  %.not112.not.i = icmp eq ptr %.sroa.092.0.i, %i.he
  br i1 %.not112.not.i, label %_ZL15needsStackFrameRKN4llvm17MachineBasicBlockERKNS_9BitVectorERKNS_19HexagonRegisterInfoE.exit, label %.lr.ph141.i

.loopexit:                                        ; preds = %_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit.i, %.split.i, %bb.o, %.lr.ph135.i, %bb.r, %bb.y, %bb.t
  %i.lm = load i32, ptr %i.fo, align 8, !tbaa !203 ; 2 uses
  %i.ln = load i32, ptr %i.fp, align 4, !tbaa !204
  %.not.i95 = icmp ult i32 %i.lm, %i.ln
  br i1 %.not.i95, label %bb.ae, label %bb.ad, !prof !267

bb.ad:                                            ; preds = %.loopexit
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineBasicBlockELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull %.sroa.0135.0210)
  br label %_ZL15needsStackFrameRKN4llvm17MachineBasicBlockERKNS_9BitVectorERKNS_19HexagonRegisterInfoE.exit

bb.ae:                                            ; preds = %.loopexit
  %i.lo = zext i32 %i.lm to i64
  %i.lp = load ptr, ptr %8, align 8, !tbaa !46
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.lp, i64 %i.lo
  store ptr %.sroa.0135.0210, ptr %i.lq, align 1
  %i.lr = load i32, ptr %i.fo, align 8, !tbaa !203
  %i.ls = add i32 %i.lr, 1
  store i32 %i.ls, ptr %i.fo, align 8, !tbaa !203
  br label %_ZL15needsStackFrameRKN4llvm17MachineBasicBlockERKNS_9BitVectorERKNS_19HexagonRegisterInfoE.exit

_ZL15needsStackFrameRKN4llvm17MachineBasicBlockERKNS_9BitVectorERKNS_19HexagonRegisterInfoE.exit: ; preds = %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i, %bb.ae, %bb.ad, %bb.n
  %i.lt = getelementptr inbounds nuw i8, ptr %.sroa.0135.0210, i64 8
  %.sroa.0135.0 = load ptr, ptr %i.lt, align 8, !tbaa !212 ; 2 uses
  %.not171 = icmp eq ptr %.sroa.0135.0, %i.br
  br i1 %.not171, label %._crit_edge212, label %bb.n

bb.af:                                            ; preds = %._crit_edge212
  %i.lu = load ptr, ptr %8, align 8, !tbaa !46    ; 3 uses
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !214 ; 4 uses
  %.not226 = icmp eq i32 %i.hc, 1
  br i1 %.not226, label %._crit_edge223, label %.lr.ph216

.lr.ph216:                                        ; preds = %bb.af
  %i.lw = load i32, ptr %i.ab, align 8            ; 2 uses
  %i.lx = load ptr, ptr %i.z, align 8             ; 2 uses
  %wide.trip.count = zext i32 %i.hc to i64
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE26findNearestCommonDominatorEPS1_S3_.exit, %.lr.ph216
  %indvars.iv = phi i64 [ 1, %.lr.ph216 ], [ %indvars.iv.next, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE26findNearestCommonDominatorEPS1_S3_.exit ] ; 2 uses
  %.072213 = phi ptr [ %i.lv, %.lr.ph216 ], [ %.1.i, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE26findNearestCommonDominatorEPS1_S3_.exit ] ; 3 uses
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.lu, i64 %indvars.iv
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !214 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %.072213, i64 32
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !313
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 304
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !212 ; 3 uses
  %i.me = icmp ne ptr %.072213, %i.md
  %i.mf = icmp ne ptr %i.lz, %i.md
  %or.cond.not.i = and i1 %i.me, %i.mf
  br i1 %or.cond.not.i, label %bb.ah, label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE26findNearestCommonDominatorEPS1_S3_.exit

bb.ah:                                            ; preds = %bb.ag
  %i.mg = getelementptr inbounds nuw i8, ptr %.072213, i64 220
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !314
  %i.mi = add i32 %i.mh, 1                        ; 2 uses
  %i.mj = icmp ugt i32 %i.lw, %i.mi
  br i1 %i.mj, label %bb.ai, label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE7getNodeEPKS1_.exit.i

bb.ai:                                            ; preds = %bb.ah
  %i.mk = zext i32 %i.mi to i64
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %i.lx, i64 %i.mk
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !766
  br label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE7getNodeEPKS1_.exit.i

_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE7getNodeEPKS1_.exit.i: ; preds = %bb.ai, %bb.ah
  %i.mn = phi ptr [ %i.mm, %bb.ai ], [ null, %bb.ah ] ; 3 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.lz, i64 220
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !314
  %i.mq = add i32 %i.mp, 1                        ; 2 uses
  %i.mr = icmp ugt i32 %i.lw, %i.mq
  br i1 %i.mr, label %bb.aj, label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE7getNodeEPKS1_.exit14.i

bb.aj:                                            ; preds = %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE7getNodeEPKS1_.exit.i
  %i.ms = zext i32 %i.mq to i64
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.lx, i64 %i.ms
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !766
  br label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE7getNodeEPKS1_.exit14.i

_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE7getNodeEPKS1_.exit14.i: ; preds = %bb.aj, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE7getNodeEPKS1_.exit.i
  %i.mv = phi ptr [ %i.mu, %bb.aj ], [ null, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE7getNodeEPKS1_.exit.i ] ; 3 uses
  %.not26.i = icmp eq ptr %i.mn, %i.mv
  br i1 %.not26.i, label %._crit_edge.i98, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE7getNodeEPKS1_.exit14.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.mv, i64 16
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !769
  br label %.lr.ph.i96

.lr.ph.i96:                                       ; preds = %.lr.ph.i96, %.lr.ph.preheader.i
  %i.mw = phi i32 [ %i.nc, %.lr.ph.i96 ], [ %.pre.i, %.lr.ph.preheader.i ] ; 2 uses
  %.028.i = phi ptr [ %spec.select23.i, %.lr.ph.i96 ], [ %i.mv, %.lr.ph.preheader.i ] ; 2 uses
  %.02127.i = phi ptr [ %i.nb, %.lr.ph.i96 ], [ %i.mn, %.lr.ph.preheader.i ] ; 3 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %.02127.i, i64 16
  %i.my = load i32, ptr %i.mx, align 8, !tbaa !769 ; 2 uses
  %i.mz = icmp ult i32 %i.my, %i.mw               ; 2 uses
  %spec.select.i = select i1 %i.mz, ptr %.028.i, ptr %.02127.i
  %spec.select23.i = select i1 %i.mz, ptr %.02127.i, ptr %.028.i ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 8
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !770 ; 3 uses
  %.not.i97 = icmp eq ptr %i.nb, %spec.select23.i
  %i.nc = call i32 @llvm.umin.i32(i32 %i.my, i32 %i.mw)
  br i1 %.not.i97, label %._crit_edge.i98, label %.lr.ph.i96, !llvm.loop !728

._crit_edge.i98:                                  ; preds = %.lr.ph.i96, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE7getNodeEPKS1_.exit14.i
  %.021.lcssa.i = phi ptr [ %i.mn, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE7getNodeEPKS1_.exit14.i ], [ %i.nb, %.lr.ph.i96 ]
  %i.nd = load ptr, ptr %.021.lcssa.i, align 8, !tbaa !771
  br label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE26findNearestCommonDominatorEPS1_S3_.exit

_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE26findNearestCommonDominatorEPS1_S3_.exit: ; preds = %bb.ag, %._crit_edge.i98
  %.1.i = phi ptr [ %i.nd, %._crit_edge.i98 ], [ %i.md, %bb.ag ] ; 3 uses
  %.not87 = icmp eq ptr %.1.i, null
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %or.cond329 = select i1 %.not87, i1 true, i1 %exitcond.not
  br i1 %or.cond329, label %.lr.ph222, label %bb.ag, !llvm.loop !729

.lr.ph222:                                        ; preds = %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE26findNearestCommonDominatorEPS1_S3_.exit
  %i.ne = load i32, ptr %i.av, align 8, !tbaa !203 ; 2 uses
  %i.nf = load ptr, ptr %i.at, align 8            ; 2 uses
  %umax = call i32 @llvm.umax.i32(i32 %i.hc, i32 2)
  %wide.trip.count249 = zext i32 %umax to i64
  br label %bb.al

bb.ak:                                            ; preds = %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE26findNearestCommonDominatorEPS1_S3_.exit
  %indvars.iv.next247 = add nuw nsw i64 %indvars.iv246, 1 ; 2 uses
  %exitcond250.not = icmp eq i64 %indvars.iv.next247, %wide.trip.count249
  br i1 %exitcond250.not, label %._crit_edge223, label %bb.al, !llvm.loop !730

bb.al:                                            ; preds = %.lr.ph222, %bb.ak
  %indvars.iv246 = phi i64 [ 1, %.lr.ph222 ], [ %indvars.iv.next247, %bb.ak ] ; 2 uses
  %.070219 = phi ptr [ %i.lv, %.lr.ph222 ], [ %i.of, %bb.ak ] ; 2 uses
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %i.lu, i64 %indvars.iv246
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !214 ; 2 uses
  %.not.i.i.i99 = icmp eq ptr %.070219, null
  br i1 %.not.i.i.i99, label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.thread.i.i, label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.i.i

_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.i.i: ; preds = %bb.al
  %i.ni = getelementptr inbounds nuw i8, ptr %.070219, i64 220
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !314
  %i.nk = add i32 %i.nj, 1
  br label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.thread.i.i

_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.thread.i.i: ; preds = %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.i.i, %bb.al
  %.sroa.0.0.extract.trunc10.i.i = phi i32 [ %i.nk, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.i.i ], [ 0, %bb.al ] ; 2 uses
  %i.nl = icmp ugt i32 %i.ne, %.sroa.0.0.extract.trunc10.i.i
  br i1 %i.nl, label %bb.am, label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE7getNodeEPKS1_.exit.i

bb.am:                                            ; preds = %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.thread.i.i
  %i.nm = zext i32 %.sroa.0.0.extract.trunc10.i.i to i64
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %i.nf, i64 %i.nm
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !766
  br label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE7getNodeEPKS1_.exit.i

_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE7getNodeEPKS1_.exit.i: ; preds = %bb.am, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.thread.i.i
  %i.np = phi ptr [ %i.no, %bb.am ], [ null, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.thread.i.i ] ; 3 uses
  %.not.i.i14.i = icmp eq ptr %i.nh, null
  br i1 %.not.i.i14.i, label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.thread.i16.i, label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.i15.i

_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.i15.i: ; preds = %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE7getNodeEPKS1_.exit.i
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nh, i64 220
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !314
  %i.ns = add i32 %i.nr, 1
  br label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.thread.i16.i

_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.thread.i16.i: ; preds = %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.i15.i, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE7getNodeEPKS1_.exit.i
  %.sroa.0.0.extract.trunc10.i17.i = phi i32 [ %i.ns, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.i15.i ], [ 0, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE7getNodeEPKS1_.exit.i ] ; 2 uses
  %i.nt = icmp ugt i32 %i.ne, %.sroa.0.0.extract.trunc10.i17.i
  br i1 %i.nt, label %bb.an, label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE7getNodeEPKS1_.exit18.i

bb.an:                                            ; preds = %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.thread.i16.i
  %i.nu = zext i32 %.sroa.0.0.extract.trunc10.i17.i to i64
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %i.nf, i64 %i.nu
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !766
  br label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE7getNodeEPKS1_.exit18.i

_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE7getNodeEPKS1_.exit18.i: ; preds = %bb.an, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.thread.i16.i
  %i.nx = phi ptr [ %i.nw, %bb.an ], [ null, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.thread.i16.i ] ; 3 uses
  %.not28.i = icmp eq ptr %i.np, %i.nx
  br i1 %.not28.i, label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE26findNearestCommonDominatorEPS1_S3_.exit, label %.lr.ph.preheader.i100

.lr.ph.preheader.i100:                            ; preds = %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE7getNodeEPKS1_.exit18.i
  %.phi.trans.insert.i101 = getelementptr inbounds nuw i8, ptr %i.nx, i64 16
  %.pre.i102 = load i32, ptr %.phi.trans.insert.i101, align 8, !tbaa !769
  br label %.lr.ph.i103

.lr.ph.i103:                                      ; preds = %.lr.ph.i103, %.lr.ph.preheader.i100
  %i.ny = phi i32 [ %i.oe, %.lr.ph.i103 ], [ %.pre.i102, %.lr.ph.preheader.i100 ] ; 2 uses
  %.030.i = phi ptr [ %spec.select27.i, %.lr.ph.i103 ], [ %i.nx, %.lr.ph.preheader.i100 ] ; 2 uses
  %.02529.i = phi ptr [ %i.od, %.lr.ph.i103 ], [ %i.np, %.lr.ph.preheader.i100 ] ; 3 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %.02529.i, i64 16
  %i.oa = load i32, ptr %i.nz, align 8, !tbaa !769 ; 2 uses
  %i.ob = icmp ult i32 %i.oa, %i.ny               ; 2 uses
  %spec.select.i104 = select i1 %i.ob, ptr %.030.i, ptr %.02529.i
  %spec.select27.i = select i1 %i.ob, ptr %.02529.i, ptr %.030.i ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %spec.select.i104, i64 8
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !770 ; 3 uses
  %.not.i105 = icmp eq ptr %i.od, %spec.select27.i
  %i.oe = call i32 @llvm.umin.i32(i32 %i.oa, i32 %i.ny)
  br i1 %.not.i105, label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE26findNearestCommonDominatorEPS1_S3_.exit, label %.lr.ph.i103, !llvm.loop !731

_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE26findNearestCommonDominatorEPS1_S3_.exit: ; preds = %.lr.ph.i103, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE7getNodeEPKS1_.exit18.i
  %.025.lcssa.i = phi ptr [ %i.np, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE7getNodeEPKS1_.exit18.i ], [ %i.od, %.lr.ph.i103 ]
  %i.of = load ptr, ptr %.025.lcssa.i, align 8, !tbaa !771 ; 3 uses
  %.not88 = icmp eq ptr %i.of, null
  br i1 %.not88, label %.thread, label %bb.ak

._crit_edge223:                                   ; preds = %bb.ak, %bb.af
  %.173296 = phi ptr [ %i.lv, %bb.af ], [ %.1.i, %bb.ak ] ; 4 uses
  %.070.lcssa = phi ptr [ %i.lv, %bb.af ], [ %i.of, %bb.ak ] ; 4 uses
  %i.og = icmp ne ptr %.173296, null
  %i.oh = icmp ne ptr %.070.lcssa, null
  %or.cond = select i1 %i.og, i1 %i.oh, i1 false
  br i1 %or.cond, label %bb.ao, label %.thread

bb.ao:                                            ; preds = %._crit_edge223
  %i.oi = call noundef zeroext i1 @_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE9dominatesEPKS1_S4_(ptr noundef nonnull align 8 dereferenceable(204) %4, ptr noundef nonnull %.173296, ptr noundef nonnull %.070.lcssa) #27
  br i1 %i.oi, label %bb.ap, label %.thread

bb.ap:                                            ; preds = %bb.ao
  %i.oj = call noundef zeroext i1 @_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE9dominatesEPKS1_S4_(ptr noundef nonnull align 8 dereferenceable(228) %5, ptr noundef nonnull %.070.lcssa, ptr noundef nonnull %.173296) #27
  br i1 %i.oj, label %bb.aq, label %.thread

bb.aq:                                            ; preds = %bb.ap
  store ptr %.173296, ptr %2, align 8, !tbaa !214
  store ptr %.070.lcssa, ptr %3, align 8, !tbaa !214
  br label %.thread

.thread:                                          ; preds = %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE26findNearestCommonDominatorEPS1_S3_.exit, %bb.aq, %._crit_edge223, %bb.ao, %bb.ap, %._crit_edge212
  %i.ok = load ptr, ptr %9, align 8, !tbaa !46    ; 2 uses
  %i.ol = icmp eq ptr %i.ok, %i.fq
  br i1 %i.ol, label %_ZN4llvm9BitVectorD2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %.thread
  call void @free(ptr noundef %i.ok) #27
  br label %_ZN4llvm9BitVectorD2Ev.exit

_ZN4llvm9BitVectorD2Ev.exit:                      ; preds = %.thread, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %i.om = load ptr, ptr %8, align 8, !tbaa !46    ; 2 uses
  %i.on = icmp eq ptr %i.om, %i.fn
  br i1 %i.on, label %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj16EED2Ev.exit, label %bb.as

bb.as:                                            ; preds = %_ZN4llvm9BitVectorD2Ev.exit
  call void @free(ptr noundef %i.om) #27
  br label %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj16EED2Ev.exit: ; preds = %_ZN4llvm9BitVectorD2Ev.exit, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %.loopexit178

.loopexit178:                                     ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E24lookupOrInsertIntoBucketIjJEEESt4pairIPS6_bEOT_DpOT0_.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E24lookupOrInsertIntoBucketIjJEEESt4pairIPS6_bEOT_DpOT0_.exit.thread, %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj16EED2Ev.exit
  %i.oo = load ptr, ptr %7, align 8, !tbaa !46    ; 2 uses
  %i.op = icmp eq ptr %i.oo, %i.bj
  br i1 %i.op, label %_ZN4llvm25ReversePostOrderTraversalIPKNS_15MachineFunctionENS_11GraphTraitsIS3_EEED2Ev.exit, label %bb.at

bb.at:                                            ; preds = %.loopexit178
  call void @free(ptr noundef %i.oo) #27
  br label %_ZN4llvm25ReversePostOrderTraversalIPKNS_15MachineFunctionENS_11GraphTraitsIS3_EEED2Ev.exit

_ZN4llvm25ReversePostOrderTraversalIPKNS_15MachineFunctionENS_11GraphTraitsIS3_EEED2Ev.exit: ; preds = %.loopexit178, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.oq = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !263 ; 2 uses
  %i.os = icmp eq i32 %i.or, 0
  br i1 %i.os, label %_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %_ZN4llvm25ReversePostOrderTraversalIPKNS_15MachineFunctionENS_11GraphTraitsIS3_EEED2Ev.exit
  %i.ot = load ptr, ptr %6, align 8, !tbaa !261
  %i.ou = zext i32 %i.or to i64                   ; 2 uses
  %i.ov = shl nuw nsw i64 %i.ou, 3
  %i.ow = add nuw nsw i64 %i.ou, 31
  %i.ox = lshr i64 %i.ow, 3
  %i.oy = and i64 %i.ox, 1073741820
  %i.oz = add nuw nsw i64 %i.oy, %i.ov
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ot, i64 noundef %i.oz, i64 noundef 4) #27
  br label %_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEED2Ev.exit

_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEED2Ev.exit: ; preds = %_ZN4llvm25ReversePostOrderTraversalIPKNS_15MachineFunctionENS_11GraphTraitsIS3_EEED2Ev.exit, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.pa = load ptr, ptr %i.ay, align 8, !tbaa !46 ; 2 uses
  %i.pb = load i32, ptr %i.ba, align 8, !tbaa !203 ; 2 uses
  %i.pc = zext i32 %i.pb to i64
  %.idx.i112 = shl nuw nsw i64 %i.pc, 3
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pa, i64 %.idx.i112
  %.not6.i.i = icmp eq i32 %i.pb, 0
  br i1 %.not6.i.i, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE15DeallocateSlabsEPPvS4_.exit.i, label %.lr.ph.i.i113

.lr.ph.i.i113:                                    ; preds = %_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEED2Ev.exit, %.lr.ph.i.i113
  %.07.i.i = phi ptr [ %i.pn, %.lr.ph.i.i113 ], [ %i.pa, %_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEED2Ev.exit ] ; 3 uses
  %i.pe = load ptr, ptr %i.ay, align 8, !tbaa !46
  %i.pf = ptrtoint ptr %.07.i.i to i64
  %i.pg = ptrtoint ptr %i.pe to i64
  %i.ph = sub i64 %i.pf, %i.pg
  %sum.shift.i.i = lshr i64 %i.ph, 4
  %i.pi = trunc i64 %sum.shift.i.i to i32
  %i.pj = and i32 %i.pi, 2147483647
  %i.pk = call i32 @llvm.umin.i32(i32 %i.pj, i32 30)
  %.sroa.speculated.i.i.i = zext nneg i32 %i.pk to i64
  %i.pl = shl nuw nsw i64 448, %.sroa.speculated.i.i.i
  %i.pm = load ptr, ptr %.07.i.i, align 8, !tbaa !47
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.pm, i64 noundef %i.pl, i64 noundef 16) #27
  %i.pn = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  %.not.i.i114 = icmp eq ptr %i.pn, %i.pd
  br i1 %.not.i.i114, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE15DeallocateSlabsEPPvS4_.exit.i, label %.lr.ph.i.i113, !llvm.loop !732

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE15DeallocateSlabsEPPvS4_.exit.i: ; preds = %.lr.ph.i.i113, %_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEED2Ev.exit
  %i.po = load ptr, ptr %i.bc, align 8, !tbaa !46 ; 3 uses
  %i.pp = load i32, ptr %i.be, align 8, !tbaa !203 ; 2 uses
  %i.pq = zext i32 %i.pp to i64
  %.idx.i.i = shl nuw nsw i64 %i.pq, 4
  %i.pr = getelementptr inbounds nuw i8, ptr %i.po, i64 %.idx.i.i
  %.not10.i.i = icmp eq i32 %i.pp, 0
  br i1 %.not10.i.i, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE26DeallocateCustomSizedSlabsEv.exit.i, label %.lr.ph.i1.i

.lr.ph.i1.i:                                      ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE15DeallocateSlabsEPPvS4_.exit.i, %.lr.ph.i1.i
  %.011.i.i = phi ptr [ %i.pv, %.lr.ph.i1.i ], [ %i.po, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE15DeallocateSlabsEPPvS4_.exit.i ] ; 3 uses
  %i.ps = load ptr, ptr %.011.i.i, align 8, !tbaa !773
  %i.pt = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 8
  %i.pu = load i64, ptr %i.pt, align 8, !tbaa !774
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ps, i64 noundef %i.pu, i64 noundef 16) #27
  %i.pv = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 16 ; 2 uses
end_hunk_0
