Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SIRegisterInfo?download=true
inline.NumInlined: 3359
inline.NumDeleted: 1309
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 40
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_ZNK4llvm14SIRegisterInfo19buildSpillLoadStoreERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocEjiNS_8RegisterEbNS_10MCRegisterElPNS_17MachineMemOperandEPNS_12RegScavengerEPNS_12LiveRegUnitsEb:bb.a
  %i.pb = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.pc = getelementptr inbounds nuw i8, ptr %17, i64 4
  %i.pd = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.pe = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.pf = getelementptr inbounds nuw i8, ptr %16, i64 4
  %i.pg = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.ph = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.pi = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.pj = getelementptr inbounds nuw i8, ptr %15, i64 4
  %i.pk = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.pl = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.pm = getelementptr inbounds nuw i8, ptr %14, i64 4
  %i.pn = getelementptr inbounds nuw i8, ptr %14, i64 16
  br label %bb.al

bb.al:                                            ; preds = %.lr.ph791, %.critedge
  %.3790 = phi i32 [ %.2, %.lr.ph791 ], [ %.5, %.critedge ] ; 2 uses
  %.0376789 = phi i8 [ %i.c, %.lr.ph791 ], [ %.2378, %.critedge ] ; 5 uses
  %.3387788 = phi i1 [ %.2386723, %.lr.ph791 ], [ %.5389, %.critedge ]
  %.0390787 = phi i32 [ %i.dd, %.lr.ph791 ], [ %.3393, %.critedge ]
  %.0407786 = phi i32 [ 0, %.lr.ph791 ], [ %i.qn, %.critedge ] ; 4 uses
  %.0408785 = phi i32 [ 0, %.lr.ph791 ], [ %i.qv, %.critedge ] ; 5 uses
  %.sroa.0648.0783 = phi i32 [ 0, %.lr.ph791 ], [ %.sroa.0648.3, %.critedge ] ; 7 uses
  %.pre.pre = load ptr, ptr %i.a, align 8, !tbaa !489 ; 2 uses
  br i1 %.3387788, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.po = icmp eq i32 %.0407786, 0                ; 2 uses
  %. = select i1 %i.po, i32 4, i32 %i.dd          ; 2 uses
  %i.pp = getelementptr i8, ptr %.pre.pre, i64 8
  %.val465 = load ptr, ptr %i.pp, align 8, !tbaa !472
  %i.pq = call fastcc noundef i32 @_ZL25getFlatScratchSpillOpcodePKN4llvm11SIInstrInfoEjj(ptr %.val465, i32 noundef %.3790, i32 noundef %.)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.2392 = phi i32 [ %., %bb.am ], [ %.0390787, %bb.al ]
  %.5389 = phi i1 [ %i.po, %bb.am ], [ false, %bb.al ]
  %.4 = phi i32 [ %i.pq, %bb.am ], [ %.3790, %bb.al ] ; 2 uses
  %i.pr = icmp eq i32 %.0407786, %spec.select
  %i.ps = getelementptr i8, ptr %.pre.pre, i64 8
  %.val464 = load ptr, ptr %i.ps, align 8, !tbaa !472 ; 2 uses
  br i1 %i.pr, label %bb.ao, label %._crit_edge802

bb.ao:                                            ; preds = %bb.an
  %i.pt = call fastcc noundef i32 @_ZL25getFlatScratchSpillOpcodePKN4llvm11SIInstrInfoEjj(ptr %.val464, i32 noundef %.4, i32 noundef %.recomposed)
  br label %._crit_edge802

._crit_edge802:                                   ; preds = %bb.an, %bb.ao
  %.3393 = phi i32 [ %.recomposed, %bb.ao ], [ %.2392, %bb.an ] ; 9 uses
  %.5 = phi i32 [ %i.pt, %bb.ao ], [ %.4, %bb.an ] ; 8 uses
  %i.pu = zext i32 %.5 to i64
  %i.pv = sub nsw i64 0, %i.pu
  %i.pw = load i8, ptr %i.b, align 1, !tbaa !491, !range !187, !noundef !184
  %i.px = trunc nuw i8 %i.pw to i1
  %.not17 = xor i1 %i.px, true
  %or.cond19 = and i1 %.1401858, %.not17
  br i1 %or.cond19, label %bb.ap, label %_ZL18getOffenMUBUFStorej.exit

bb.ap:                                            ; preds = %._crit_edge802
  br i1 %i.v, label %bb.aq, label %bb.az

bb.aq:                                            ; preds = %bb.ap
  switch i32 %.5, label %bb.ay [
    i32 2494, label %_ZL18getOffenMUBUFStorej.exit
    i32 2332, label %bb.ar
    i32 3035, label %bb.as
    i32 2386, label %bb.at
    i32 2422, label %bb.au
    i32 2458, label %bb.av
    i32 3002, label %bb.aw
    i32 2299, label %bb.ax
  ]

bb.ar:                                            ; preds = %bb.aq
  br label %_ZL18getOffenMUBUFStorej.exit

bb.as:                                            ; preds = %bb.aq
  br label %_ZL18getOffenMUBUFStorej.exit

bb.at:                                            ; preds = %bb.aq
  br label %_ZL18getOffenMUBUFStorej.exit

bb.au:                                            ; preds = %bb.aq
  br label %_ZL18getOffenMUBUFStorej.exit

bb.av:                                            ; preds = %bb.aq
  br label %_ZL18getOffenMUBUFStorej.exit

bb.aw:                                            ; preds = %bb.aq
  br label %_ZL18getOffenMUBUFStorej.exit

bb.ax:                                            ; preds = %bb.aq
  br label %_ZL18getOffenMUBUFStorej.exit

bb.ay:                                            ; preds = %bb.az, %bb.aq
  br label %_ZL18getOffenMUBUFStorej.exit

bb.az:                                            ; preds = %bb.ap
  switch i32 %.5, label %bb.ay [
    i32 1270, label %_ZL18getOffenMUBUFStorej.exit
    i32 2206, label %bb.ba
    i32 1918, label %bb.bb
    i32 2260, label %bb.bc
    i32 2062, label %bb.bd
    i32 1108, label %bb.be
    i32 1162, label %bb.bf
    i32 1216, label %bb.bg
    i32 2137, label %bb.bh
    i32 2104, label %bb.bi
    i32 1849, label %bb.bj
    i32 1816, label %bb.bk
    i32 1990, label %bb.bl
    i32 1957, label %bb.bm
  ]

bb.ba:                                            ; preds = %bb.az
  br label %_ZL18getOffenMUBUFStorej.exit

bb.bb:                                            ; preds = %bb.az
  br label %_ZL18getOffenMUBUFStorej.exit

bb.bc:                                            ; preds = %bb.az
  br label %_ZL18getOffenMUBUFStorej.exit

bb.bd:                                            ; preds = %bb.az
  br label %_ZL18getOffenMUBUFStorej.exit

bb.be:                                            ; preds = %bb.az
  br label %_ZL18getOffenMUBUFStorej.exit

bb.bf:                                            ; preds = %bb.az
  br label %_ZL18getOffenMUBUFStorej.exit

bb.bg:                                            ; preds = %bb.az
  br label %_ZL18getOffenMUBUFStorej.exit

bb.bh:                                            ; preds = %bb.az
  br label %_ZL18getOffenMUBUFStorej.exit

bb.bi:                                            ; preds = %bb.az
  br label %_ZL18getOffenMUBUFStorej.exit

bb.bj:                                            ; preds = %bb.az
  br label %_ZL18getOffenMUBUFStorej.exit

bb.bk:                                            ; preds = %bb.az
  br label %_ZL18getOffenMUBUFStorej.exit

bb.bl:                                            ; preds = %bb.az
  br label %_ZL18getOffenMUBUFStorej.exit

bb.bm:                                            ; preds = %bb.az
  br label %_ZL18getOffenMUBUFStorej.exit

_ZL18getOffenMUBUFStorej.exit:                    ; preds = %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bc, %bb.bd, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %bb.bl, %bb.bm, %._crit_edge802
  %.neg.pn = phi i64 [ %i.pv, %._crit_edge802 ], [ -2492, %bb.aq ], [ -4294967295, %bb.ay ], [ -2297, %bb.ax ], [ -2330, %bb.ar ], [ -3033, %bb.as ], [ -2384, %bb.at ], [ -2420, %bb.au ], [ -2456, %bb.av ], [ -3000, %bb.aw ], [ -1268, %bb.az ], [ -1955, %bb.bm ], [ -2204, %bb.ba ], [ -1916, %bb.bb ], [ -2258, %bb.bc ], [ -2060, %bb.bd ], [ -1106, %bb.be ], [ -1160, %bb.bf ], [ -1214, %bb.bg ], [ -2135, %bb.bh ], [ -2102, %bb.bi ], [ -1847, %bb.bj ], [ -1814, %bb.bk ], [ -1988, %bb.bl ]
  %.0379 = getelementptr inbounds [32 x i8], ptr %.val464, i64 %.neg.pn
  %i.py = load i32, ptr %43, align 4
  %i.pz = icmp eq i32 %i.py, %.sroa.0648.0783
  %or.cond = select i1 %.1401858, i1 %i.pz, i1 false
  br i1 %or.cond, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %_ZL18getOffenMUBUFStorej.exit
  call fastcc void @"_ZZNK4llvm14SIRegisterInfo19buildSpillLoadStoreERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocEjiNS_8RegisterEbNS_10MCRegisterElPNS_17MachineMemOperandEPNS_12RegScavengerEPNS_12LiveRegUnitsEbENK3$_0clES9_S9_l"(ptr noundef nonnull align 8 dereferenceable(56) %44, i32 %.sroa.0684.2857, i32 %.sroa.0648.0783, i64 noundef %i.dp)
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %_ZL18getOffenMUBUFStorej.exit
  br i1 %i.mm, label %bb.bp, label %._crit_edge807

._crit_edge807:                                   ; preds = %bb.bo
  %.pre808 = lshr i32 %.0408785, 2
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.qa = lshr i32 %.3393, 2
  %i.qb = lshr i32 %.0408785, 2                   ; 2 uses
  %i.qc = zext nneg i32 %i.qa to i64
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr @_ZL30SubRegFromChannelTableWidthMap, i64 %i.qc
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !57
  %i.qf = add i32 %i.qe, -1
  %i.qg = zext i32 %i.qf to i64
  %i.qh = getelementptr inbounds nuw [64 x i8], ptr @_ZN4llvm14SIRegisterInfo22SubRegFromChannelTableE, i64 %i.qg
  %i.qi = zext nneg i32 %i.qb to i64
  %i.qj = getelementptr inbounds nuw [2 x i8], ptr %i.qh, i64 %i.qi
  %i.qk = load i16, ptr %i.qj, align 2, !tbaa !17
  %i.ql = zext i16 %i.qk to i32
  %i.qm = call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %0, i32 %6, i32 noundef %i.ql) #27
  br label %bb.bq

bb.bq:                                            ; preds = %._crit_edge807, %bb.bp
  %.pre-phi809 = phi i32 [ %.pre808, %._crit_edge807 ], [ %i.qb, %bb.bp ] ; 6 uses
  %.sroa.0616.0 = phi i32 [ %6, %._crit_edge807 ], [ %i.qm, %bb.bp ]
  %i.qn = add nuw i32 %.0407786, 1                ; 2 uses
  %i.qo = icmp eq i32 %i.qn, %i.ml                ; 9 uses
  %i.qp = icmp eq i32 %.0407786, 0                ; 6 uses
  %i.qq = zext nneg i8 %.0376789 to i16
  %i.qr = shl nuw nsw i16 %i.qq, 3                ; 2 uses
  %i.qs = select i1 %i.qo, i16 %i.qr, i16 0       ; 2 uses
  %.0717 = or disjoint i16 %i.qs, %i.mo           ; 2 uses
  %i.qt = and i1 %.1383861, %i.qo
  %i.qu = and i1 %or.cond21, %i.qp                ; 2 uses
  %i.qv = add i32 %.3393, %.0408785               ; 3 uses
  %i.qw = lshr i32 %i.qv, 2                       ; 2 uses
  %i.qx = add nsw i32 %i.qw, -1                   ; 4 uses
  %.not441769.not = icmp samesign ugt i32 %i.qw, %.pre-phi809
  br i1 %.not441769.not, label %.lr.ph774, label %.thread731

.lr.ph774:                                        ; preds = %bb.bq
  %i.qy = icmp ugt i32 %.3393, 4
  %i.qz = select i1 %i.mm, i1 true, i1 %i.qy      ; 5 uses
  %i.ra = trunc nuw i8 %.0376789 to i1            ; 2 uses
  %or.cond23 = and i1 %i.v, %i.qz
  %or.cond29 = or i1 %i.qp, %i.qo                 ; 2 uses
  %i.rb = zext nneg i32 %i.qx to i64              ; 2 uses
  %i.rc = zext nneg i32 %.pre-phi809 to i64
  %i.rd = and i32 %.0408785, -4
  %i.re = add i32 %.3393, %i.rd
  %i.rf = and i32 %i.qv, -4
  %i.rg = sub i32 %i.re, %i.rf                    ; 2 uses
  br i1 %i.qz, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %.lr.ph774
  %i.rh = getelementptr inbounds nuw [2 x i8], ptr @_ZN4llvm14SIRegisterInfo22SubRegFromChannelTableE, i64 %i.rb
  %i.ri = load i16, ptr %i.rh, align 2, !tbaa !17
  %i.rj = zext i16 %i.ri to i32
  %i.rk = call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %0, i32 %6, i32 noundef %i.rj) #27
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %.lr.ph774
  %.sroa.0609.0.peel = phi i32 [ %i.rk, %bb.br ], [ %6, %.lr.ph774 ]
  %i.rl = load ptr, ptr %i.f, align 8, !tbaa !228, !nonnull !184, !align !185
  %.sroa.098.0.copyload.peel = load ptr, ptr %42, align 8
  %i.rm = call fastcc { ptr, ptr } @_ZL15spillVGPRtoAGPRRKN4llvm12GCNSubtargetERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEijjbb(ptr noundef nonnull align 8 dereferenceable(520232) %i.rl, ptr noundef nonnull align 8 dereferenceable(360) %1, ptr %.sroa.098.0.copyload.peel, i32 noundef %5, i32 noundef %i.qx, i32 noundef %.sroa.0609.0.peel, i1 noundef zeroext %i.ra, i1 noundef zeroext %13) ; 2 uses
  %i.rn = extractvalue { ptr, ptr } %i.rm, 0      ; 2 uses
  %i.ro = extractvalue { ptr, ptr } %i.rm, 1      ; 3 uses
  %.not442.not.peel = icmp eq ptr %i.ro, null
  br i1 %.not442.not.peel, label %.thread731.loopexit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %or.cond.peel = and i1 %or.cond23, %i.qp
  br i1 %or.cond.peel, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #27
  store ptr null, ptr %i.mq, align 8, !tbaa !475, !alias.scope !919
  store i32 %6, ptr %i.mr, align 4, !tbaa !15, !alias.scope !919
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ms, i8 0, i64 16, i1 false), !alias.scope !919
  store i32 50331648, ptr %38, align 8, !alias.scope !919
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ro, ptr noundef nonnull align 8 dereferenceable(1065) %i.rn, ptr noundef nonnull align 8 dereferenceable(32) %38) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #27
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bt, %bb.bu
  %or.cond458.peel = and i1 %or.cond29, %i.qz
  br i1 %or.cond458.peel, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %.not443.peel = icmp eq i32 %i.qx, %.pre-phi809
  %or.cond459.peel = and i1 %i.qo, %.not443.peel
  %spec.select742.peel = select i1 %or.cond459.peel, i16 %.0717, i16 %i.mo ; 2 uses
  %i.rp = and i16 %spec.select742.peel, 1016
  %.1719.peel = select i1 %i.qp, i16 %spec.select742.peel, i16 %i.rp ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #27
  store ptr null, ptr %i.mt, align 8, !tbaa !475, !alias.scope !920
  %i.rq = and i16 %.1719.peel, 24
  %.not.i495.peel = icmp eq i16 %i.rq, 0
  %i.rr = select i1 %.not.i495.peel, i32 0, i32 67108864
  %i.rs = and i16 %.1719.peel, 34
  %i.rt = or disjoint i16 %i.rs, 4
  %i.ru = zext nneg i16 %i.rt to i32
  %i.rv = shl nuw nsw i32 %i.ru, 23
  %i.rw = or disjoint i32 %i.rv, %i.rr
  store i32 %6, ptr %i.mu, align 4, !tbaa !15, !alias.scope !920
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mv, i8 0, i64 16, i1 false), !alias.scope !920
  store i32 %i.rw, ptr %37, align 8, !alias.scope !920
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ro, ptr noundef nonnull align 8 dereferenceable(1065) %i.rn, ptr noundef nonnull align 8 dereferenceable(32) %37) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #27
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.1414.peel = phi i8 [ 1, %bb.bw ], [ %i.mp, %bb.bv ] ; 2 uses
  %.not441.not.peel = icmp samesign ugt i32 %i.qx, %.pre-phi809
  br i1 %.not441.not.peel, label %.peel.next, label %.thread731.loopexit

.peel.next:                                       ; preds = %bb.bx, %bb.cc
  %indvars.iv.in = phi i64 [ %indvars.iv, %bb.cc ], [ %i.rb, %bb.bx ]
  %.0413772 = phi i8 [ %.1414, %bb.cc ], [ %.1414.peel, %bb.bx ] ; 3 uses
  %.0417771.in = phi i32 [ %.0417771, %bb.cc ], [ %.3393, %bb.bx ]
  %.0417771 = add i32 %.0417771.in, -4            ; 2 uses
  %indvars.iv = add nsw i64 %indvars.iv.in, -1    ; 4 uses
  br i1 %i.qz, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %.peel.next
  %i.rx = getelementptr inbounds nuw [2 x i8], ptr @_ZN4llvm14SIRegisterInfo22SubRegFromChannelTableE, i64 %indvars.iv
  %i.ry = load i16, ptr %i.rx, align 2, !tbaa !17
  %i.rz = zext i16 %i.ry to i32
  %i.sa = call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %0, i32 %6, i32 noundef %i.rz) #27
  br label %bb.bz

bb.bz:                                            ; preds = %.peel.next, %bb.by
  %.sroa.0609.0 = phi i32 [ %i.sa, %bb.by ], [ %6, %.peel.next ]
  %i.sb = load ptr, ptr %i.f, align 8, !tbaa !228, !nonnull !184, !align !185
  %.sroa.098.0.copyload = load ptr, ptr %42, align 8
  %i.sc = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.sd = call fastcc { ptr, ptr } @_ZL15spillVGPRtoAGPRRKN4llvm12GCNSubtargetERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEijjbb(ptr noundef nonnull align 8 dereferenceable(520232) %i.sb, ptr noundef nonnull align 8 dereferenceable(360) %1, ptr %.sroa.098.0.copyload, i32 noundef %5, i32 noundef %i.sc, i32 noundef %.sroa.0609.0, i1 noundef zeroext %i.ra, i1 noundef zeroext %13) ; 2 uses
  %i.se = extractvalue { ptr, ptr } %i.sd, 0
  %i.sf = extractvalue { ptr, ptr } %i.sd, 1      ; 2 uses
  %.not442.not = icmp eq ptr %i.sf, null
  br i1 %.not442.not, label %.thread731.loopexit, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.sg = trunc nuw i8 %.0413772 to i1
  %or.cond27 = select i1 %i.qz, i1 true, i1 %i.sg
  %or.cond458 = and i1 %or.cond29, %or.cond27
  br i1 %or.cond458, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %.not443 = icmp eq i64 %indvars.iv, %i.rc
  %or.cond459 = and i1 %i.qo, %.not443
  %spec.select742 = select i1 %or.cond459, i16 %i.qr, i16 0 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #27
  store ptr null, ptr %i.mt, align 8, !tbaa !475, !alias.scope !920
  %i.sh = and i16 %spec.select742, 24
  %.not.i495 = icmp eq i16 %i.sh, 0
  %i.si = select i1 %.not.i495, i32 0, i32 67108864
  %i.sj = and i16 %spec.select742, 32
  %i.sk = or disjoint i16 %i.sj, 4
  %i.sl = zext nneg i16 %i.sk to i32
  %i.sm = shl nuw nsw i32 %i.sl, 23
  %i.sn = or disjoint i32 %i.sm, %i.si
  store i32 %6, ptr %i.mu, align 4, !tbaa !15, !alias.scope !920
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mv, i8 0, i64 16, i1 false), !alias.scope !920
  store i32 %i.sn, ptr %37, align 8, !alias.scope !920
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.sf, ptr noundef nonnull align 8 dereferenceable(1065) %i.se, ptr noundef nonnull align 8 dereferenceable(32) %37) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #27
  br label %bb.cc

bb.cc:                                            ; preds = %bb.ca, %bb.cb
  %.1414 = phi i8 [ 1, %bb.cb ], [ %.0413772, %bb.ca ] ; 2 uses
  %.not441.not = icmp slt i32 %.pre-phi809, %i.sc
  br i1 %.not441.not, label %.peel.next, label %.thread731.loopexit, !llvm.loop !858

.thread731.loopexit:                              ; preds = %bb.bz, %bb.cc, %bb.bx, %bb.bs
  %.0417.lcssa.ph = phi i32 [ %.3393, %bb.bs ], [ %i.rg, %bb.bx ], [ %i.rg, %bb.cc ], [ %.0417771, %bb.bz ]
  %.0413.lcssa.ph = phi i8 [ %i.mp, %bb.bs ], [ %.1414.peel, %bb.bx ], [ %.1414, %bb.cc ], [ %.0413772, %bb.bz ]
  %.0409.lcssa.ph = phi i1 [ %i.qu, %bb.bs ], [ false, %bb.bx ], [ false, %bb.cc ], [ false, %bb.bz ]
  %i.so = trunc nuw i8 %.0413.lcssa.ph to i1
  br label %.thread731

.thread731:                                       ; preds = %.thread731.loopexit, %bb.bq
  %.0417.lcssa = phi i32 [ %.3393, %bb.bq ], [ %.0417.lcssa.ph, %.thread731.loopexit ] ; 5 uses
  %.0413.lcssa = phi i1 [ %i.mm, %bb.bq ], [ %i.so, %.thread731.loopexit ] ; 2 uses
  %.0409.lcssa = phi i1 [ %i.qu, %bb.bq ], [ %.0409.lcssa.ph, %.thread731.loopexit ] ; 2 uses
  %.not445 = icmp eq i32 %.0417.lcssa, 0
  br i1 %.not445, label %.critedge, label %bb.cd

bb.cd:                                            ; preds = %.thread731
  %i.sp = icmp eq i32 %.0417.lcssa, %.3393        ; 2 uses
  br i1 %i.sp, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.sq = lshr i32 %.0417.lcssa, 2
  %i.sr = zext nneg i32 %i.sq to i64
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr @_ZL30SubRegFromChannelTableWidthMap, i64 %i.sr
  %i.st = load i32, ptr %i.ss, align 4, !tbaa !57
  %i.su = add i32 %i.st, -1
  %i.sv = zext i32 %i.su to i64
  %i.sw = getelementptr inbounds nuw [64 x i8], ptr @_ZN4llvm14SIRegisterInfo22SubRegFromChannelTableE, i64 %i.sv
  %i.sx = zext nneg i32 %.pre-phi809 to i64
  %i.sy = getelementptr inbounds nuw [2 x i8], ptr %i.sw, i64 %i.sx
  %i.sz = load i16, ptr %i.sy, align 2, !tbaa !17
  %i.ta = zext i16 %i.sz to i32
  %i.tb = call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %0, i32 %6, i32 noundef %i.ta) #27
  %i.tc = load ptr, ptr %i.a, align 8, !tbaa !489
  %i.td = getelementptr i8, ptr %i.tc, i64 8
  %.val = load ptr, ptr %i.td, align 8, !tbaa !472 ; 2 uses
  %i.te = call fastcc noundef i32 @_ZL25getFlatScratchSpillOpcodePKN4llvm11SIInstrInfoEjj(ptr %.val, i32 noundef %.5, i32 noundef %.0417.lcssa)
  %i.tf = zext i32 %i.te to i64
  %i.tg = sub nsw i64 0, %i.tf
  %i.th = getelementptr inbounds [32 x i8], ptr %.val, i64 %i.tg
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %.sroa.0616.1 = phi i32 [ %.sroa.0616.0, %bb.cd ], [ %i.tb, %bb.ce ] ; 4 uses
  %.1380 = phi ptr [ %.0379, %bb.cd ], [ %i.th, %bb.ce ]
  br i1 %i.az, label %bb.cg, label %bb.co

bb.cg:                                            ; preds = %bb.cf
  %.not447 = icmp eq i32 %.sroa.0648.0783, 0
  br i1 %.not447, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %.sroa.0.0.copyload.i496 = load i32, ptr %i.mw, align 8, !tbaa !57
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %.sroa.0648.1 = phi i32 [ %.sroa.0.0.copyload.i496, %bb.ch ], [ %.sroa.0648.0783, %bb.cg ] ; 5 uses
  br i1 %i.v, label %bb.cj, label %bb.cq

bb.cj:                                            ; preds = %bb.ci
  %.sroa.089.0.copyload = load ptr, ptr %42, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #27
  %.sroa.088.0.copyload = load ptr, ptr %3, align 8, !tbaa !430
  store ptr %.sroa.088.0.copyload, ptr %47, align 8, !tbaa !430
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mx, i8 0, i64 24, i1 false)
  %i.ti = load ptr, ptr %i.a, align 8, !tbaa !489
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 8
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !472
  %i.tl = getelementptr inbounds i8, ptr %i.tk, i64 -187840
  %i.tm = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %1, ptr %.sroa.089.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %47, ptr noundef nonnull align 8 dereferenceable(32) %i.tl, i32 %.sroa.0648.1) ; 2 uses
  %i.tn = extractvalue { ptr, ptr } %i.tm, 0      ; 3 uses
  %i.to = extractvalue { ptr, ptr } %i.tm, 1      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #27
  store ptr null, ptr %i.my, align 8, !tbaa !475, !alias.scope !921
  %.not.i497 = icmp eq i8 %.0376789, 0
  %i.tp = select i1 %.not.i497, i32 0, i32 67108864
  store i32 %.sroa.0616.1, ptr %i.mz, align 4, !tbaa !15, !alias.scope !921
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.na, i8 0, i64 16, i1 false), !alias.scope !921
  store i32 %i.tp, ptr %36, align 8, !alias.scope !921
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.to, ptr noundef nonnull align 8 dereferenceable(1065) %i.tn, ptr noundef nonnull align 8 dereferenceable(32) %36) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #27
  br i1 %.0409.lcssa, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #27
  store ptr null, ptr %i.nb, align 8, !tbaa !475, !alias.scope !922
  store i32 %6, ptr %i.nc, align 4, !tbaa !15, !alias.scope !922
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nd, i8 0, i64 16, i1 false), !alias.scope !922
  store i32 50331648, ptr %35, align 8, !alias.scope !922
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.to, ptr noundef nonnull align 8 dereferenceable(1065) %i.tn, ptr noundef nonnull align 8 dereferenceable(32) %35) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #27
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %or.cond31 = or i1 %i.qp, %i.qo
  %or.cond461 = and i1 %or.cond31, %.0413.lcssa
  br i1 %or.cond461, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #27
end_hunk_0
