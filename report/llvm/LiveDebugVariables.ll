Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LiveDebugVariables?download=true
inline.NumInlined: 5856
inline.NumDeleted: 2807
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN12_GLOBAL__N_19UserValue16insertDebugValueEPN4llvm17MachineBasicBlockENS1_9SlotIndexES4_NS_16DbgVariableValueENS1_8ArrayRefIbEENS6_IjEERNS1_13LiveIntervalsERKNS1_15TargetInstrInfoERKNS1_18TargetRegisterInfoERNS1_8DenseMapIS3_NS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEENS1_12DenseMapInfoIS3_vEENS1_6detail12DenseMapPairIS3_SK_EEEE:bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 224
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4.0..09.i.i.i.i.i.sroa_idx.6, i8 0, i64 28, i1 false)
  store i32 -2147483648, ptr %i.bw, align 8, !tbaa !170
  %.sroa.4.0..09.i.i.i.i.i.sroa_idx.7 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 228
  %i.bx = add nsw i64 %.068.i.i.i.i.i, -8         ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 256
  %.not.i.i.i.i.i.7 = icmp eq i64 %i.bx, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4.0..09.i.i.i.i.i.sroa_idx.7, i8 0, i64 28, i1 false)
  br i1 %.not.i.i.i.i.i.7, label %_ZN4llvm15SmallVectorImplINS_14MachineOperandEE6assignEmRKS1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !3

.lr.ph.i.i.i.i:                                   ; preds = %bb.k
  store i32 -2147483648, ptr %i.ac, align 8, !tbaa !170
  %.sroa.6.0..09.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 20
  %.not.i.i.i.i = icmp eq i8 %i.ag, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6.0..09.i.i.i.i.sroa_idx, i8 0, i64 28, i1 false)
  br i1 %.not.i.i.i.i, label %_ZN4llvm15SmallVectorImplINS_14MachineOperandEE6assignEmRKS1_.exit, label %.lr.ph.i.i.i.i.1

.lr.ph.i.i.i.i.1:                                 ; preds = %.lr.ph.i.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %10, i64 48
  store i32 -2147483648, ptr %i.bz, align 8, !tbaa !170
  %.sroa.6.0..09.i.i.i.i.sroa_idx.1 = getelementptr inbounds nuw i8, ptr %10, i64 52
  %.not.i.i.i.i.1 = icmp eq i8 %i.ag, 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6.0..09.i.i.i.i.sroa_idx.1, i8 0, i64 28, i1 false)
  br i1 %.not.i.i.i.i.1, label %_ZN4llvm15SmallVectorImplINS_14MachineOperandEE6assignEmRKS1_.exit, label %.lr.ph.i.i.i.i.2

.lr.ph.i.i.i.i.2:                                 ; preds = %.lr.ph.i.i.i.i.1
  %i.ca = getelementptr inbounds nuw i8, ptr %10, i64 80
  store i32 -2147483648, ptr %i.ca, align 8, !tbaa !170
  %.sroa.6.0..09.i.i.i.i.sroa_idx.2 = getelementptr inbounds nuw i8, ptr %10, i64 84
  %.not.i.i.i.i.2 = icmp eq i8 %i.ag, 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6.0..09.i.i.i.i.sroa_idx.2, i8 0, i64 28, i1 false)
  br i1 %.not.i.i.i.i.2, label %_ZN4llvm15SmallVectorImplINS_14MachineOperandEE6assignEmRKS1_.exit, label %.lr.ph.i.i.i.i.3

.lr.ph.i.i.i.i.3:                                 ; preds = %.lr.ph.i.i.i.i.2
  %i.cb = getelementptr inbounds nuw i8, ptr %10, i64 112
  store i32 -2147483648, ptr %i.cb, align 8, !tbaa !170
  %.sroa.6.0..09.i.i.i.i.sroa_idx.3 = getelementptr inbounds nuw i8, ptr %10, i64 116
  %.not.i.i.i.i.3 = icmp eq i8 %i.ag, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6.0..09.i.i.i.i.sroa_idx.3, i8 0, i64 28, i1 false)
  br i1 %.not.i.i.i.i.3, label %_ZN4llvm15SmallVectorImplINS_14MachineOperandEE6assignEmRKS1_.exit, label %.lr.ph.i.i.i.i.4

.lr.ph.i.i.i.i.4:                                 ; preds = %.lr.ph.i.i.i.i.3
  %i.cc = getelementptr inbounds nuw i8, ptr %10, i64 144
  store i32 -2147483648, ptr %i.cc, align 8, !tbaa !170
  %.sroa.6.0..09.i.i.i.i.sroa_idx.4 = getelementptr inbounds nuw i8, ptr %10, i64 148
  %.not.i.i.i.i.4 = icmp eq i8 %i.ag, 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6.0..09.i.i.i.i.sroa_idx.4, i8 0, i64 28, i1 false)
  br i1 %.not.i.i.i.i.4, label %_ZN4llvm15SmallVectorImplINS_14MachineOperandEE6assignEmRKS1_.exit, label %.lr.ph.i.i.i.i.5

.lr.ph.i.i.i.i.5:                                 ; preds = %.lr.ph.i.i.i.i.4
  %i.cd = getelementptr inbounds nuw i8, ptr %10, i64 176
  store i32 -2147483648, ptr %i.cd, align 8, !tbaa !170
  %.sroa.6.0..09.i.i.i.i.sroa_idx.5 = getelementptr inbounds nuw i8, ptr %10, i64 180
  %.not.i.i.i.i.5 = icmp eq i8 %i.ag, 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6.0..09.i.i.i.i.sroa_idx.5, i8 0, i64 28, i1 false)
  br i1 %.not.i.i.i.i.5, label %_ZN4llvm15SmallVectorImplINS_14MachineOperandEE6assignEmRKS1_.exit, label %.lr.ph.i.i.i.i.6

.lr.ph.i.i.i.i.6:                                 ; preds = %.lr.ph.i.i.i.i.5
  %i.ce = getelementptr inbounds nuw i8, ptr %10, i64 208
  store i32 -2147483648, ptr %i.ce, align 8, !tbaa !170
  %.sroa.6.0..09.i.i.i.i.sroa_idx.6 = getelementptr inbounds nuw i8, ptr %10, i64 212
  %.not.i.i.i.i.6 = icmp eq i8 %i.ag, 7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6.0..09.i.i.i.i.sroa_idx.6, i8 0, i64 28, i1 false)
  br i1 %.not.i.i.i.i.6, label %_ZN4llvm15SmallVectorImplINS_14MachineOperandEE6assignEmRKS1_.exit, label %.lr.ph.i.i.i.i.7

.lr.ph.i.i.i.i.7:                                 ; preds = %.lr.ph.i.i.i.i.6
  %i.cf = getelementptr inbounds nuw i8, ptr %10, i64 240
  store i32 -2147483648, ptr %i.cf, align 8, !tbaa !170
  %.sroa.6.0..09.i.i.i.i.sroa_idx.7 = getelementptr inbounds nuw i8, ptr %10, i64 244
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6.0..09.i.i.i.i.sroa_idx.7, i8 0, i64 28, i1 false)
  br label %_ZN4llvm15SmallVectorImplINS_14MachineOperandEE6assignEmRKS1_.exit

_ZN4llvm15SmallVectorImplINS_14MachineOperandEE6assignEmRKS1_.exit: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.1, %.lr.ph.i.i.i.i.2, %.lr.ph.i.i.i.i.3, %.lr.ph.i.i.i.i.4, %.lr.ph.i.i.i.i.5, %.lr.ph.i.i.i.i.6, %.lr.ph.i.i.i.i.7, %.lr.ph.i.i.i.i.i, %bb.a
  %storemerge.shrunk = phi i8 [ 0, %bb.a ], [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %i.ag, %.lr.ph.i.i.i.i.7 ], [ %i.ag, %.lr.ph.i.i.i.i.6 ], [ %i.ag, %.lr.ph.i.i.i.i.5 ], [ %i.ag, %.lr.ph.i.i.i.i.4 ], [ %i.ag, %.lr.ph.i.i.i.i.3 ], [ %i.ag, %.lr.ph.i.i.i.i.2 ], [ %i.ag, %.lr.ph.i.i.i.i.1 ], [ %i.ag, %.lr.ph.i.i.i.i ]
  %storemerge = zext nneg i8 %storemerge.shrunk to i32
  store i32 %storemerge, ptr %i.ad, align 8, !tbaa !75
  br label %.loopexit

_ZNK12_GLOBAL__N_116DbgVariableValue7isUndefEv.exit.thread24: ; preds = %._crit_edge._crit_edge52.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i, %_ZNK12_GLOBAL__N_116DbgVariableValue7isUndefEv.exit
  %i.cg = shl i8 %.val57, 2                       ; 2 uses
  %.idx = zext i8 %i.cg to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %.val56, i64 %.idx
  %.not47 = icmp eq i8 %i.cg, 0
  br i1 %.not47, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK12_GLOBAL__N_116DbgVariableValue7isUndefEv.exit.thread24
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseINS_14MachineOperandELb1EE9push_backERKS1_.exit
  %.048 = phi ptr [ %.val56, %.lr.ph ], [ %i.cu, %_ZN4llvm23SmallVectorTemplateBaseINS_14MachineOperandELb1EE9push_backERKS1_.exit ] ; 2 uses
  %i.cj = load i32, ptr %.048, align 4, !tbaa !174
  %i.ck = zext i32 %i.cj to i64
  %i.cl = load ptr, ptr %i.ci, align 8, !tbaa !56
  %i.cm = getelementptr inbounds nuw [32 x i8], ptr %i.cl, i64 %i.ck ; 2 uses
  %i.cn = load i32, ptr %i.ad, align 8, !tbaa !75 ; 2 uses
  %i.co = load i32, ptr %i.ae, align 4, !tbaa !164
  %.not.i = icmp ult i32 %i.cn, %i.co
  br i1 %.not.i, label %bb.n, label %bb.m, !prof !171

bb.m:                                             ; preds = %bb.l
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_14MachineOperandELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(32) %i.cm)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_14MachineOperandELb1EE9push_backERKS1_.exit

bb.n:                                             ; preds = %bb.l
  %i.cp = zext i32 %i.cn to i64
  %i.cq = load ptr, ptr %10, align 8, !tbaa !56
  %i.cr = getelementptr inbounds nuw [32 x i8], ptr %i.cq, i64 %i.cp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.cr, ptr noundef nonnull align 8 dereferenceable(32) %i.cm, i64 32, i1 false)
  %i.cs = load i32, ptr %i.ad, align 8, !tbaa !75
  %i.ct = add i32 %i.cs, 1
  store i32 %i.ct, ptr %i.ad, align 8, !tbaa !75
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_14MachineOperandELb1EE9push_backERKS1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_14MachineOperandELb1EE9push_backERKS1_.exit: ; preds = %bb.m, %bb.n
  %i.cu = getelementptr inbounds nuw i8, ptr %.048, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.cu, %i.ch
  br i1 %.not, label %.loopexit, label %bb.l

.loopexit:                                        ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_14MachineOperandELb1EE9push_backERKS1_.exit, %_ZNK12_GLOBAL__N_116DbgVariableValue7isUndefEv.exit.thread24, %_ZN4llvm15SmallVectorImplINS_14MachineOperandEE6assignEmRKS1_.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val51 = load ptr, ptr %i.cv, align 8, !tbaa !254 ; 3 uses
  %.val49 = load i8, ptr %i.af, align 8
  %.val49.fr = freeze i8 %.val49                  ; 2 uses
  %i.cw = lshr i8 %.val49.fr, 6
  %.lobit = and i8 %i.cw, 1                       ; 3 uses
  %i.cx = icmp slt i8 %.val49.fr, 0               ; 2 uses
  %i.cy = and i64 %.8.val, 4294967295
  %.not4849 = icmp eq i64 %i.cy, 0
  br i1 %.not4849, label %.preheader, label %.lr.ph53

.lr.ph53:                                         ; preds = %.loopexit
  %i.cz = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 5 uses
  %i.db = getelementptr inbounds nuw i8, ptr %11, i64 12 ; 2 uses
  %i.dc = and i64 %.8.val, 4294967295             ; 2 uses
  br i1 %i.cx, label %.lr.ph53.split.us, label %.lr.ph53.split

.lr.ph53.split.us:                                ; preds = %.lr.ph53, %bb.s
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %bb.s ], [ 0, %.lr.ph53 ] ; 4 uses
  %.04252.us = phi ptr [ %.1.us, %bb.s ], [ %.val51, %.lr.ph53 ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.0.val, i64 %indvars.iv82
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !1138, !range !52, !noundef !53
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %bb.o, label %bb.s

bb.o:                                             ; preds = %.lr.ph53.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  store ptr %i.cz, ptr %11, align 8, !tbaa !56
  store i32 0, ptr %i.da, align 8, !tbaa !75
  store i32 4, ptr %i.db, align 4, !tbaa !164
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %.0.val1, i64 %indvars.iv82
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !174
  %i.di = zext i32 %i.dh to i64
  call void @_ZN4llvm12DIExpression12appendOffsetERNS_15SmallVectorImplImEEl(ptr noundef nonnull align 8 dereferenceable(16) %11, i64 noundef %i.di) #24
  %i.dj = load i32, ptr %i.da, align 8, !tbaa !75 ; 2 uses
  %i.dk = load i32, ptr %i.db, align 4, !tbaa !164
  %.not.i61.us = icmp ult i32 %i.dj, %i.dk
  br i1 %.not.i61.us, label %bb.q, label %bb.p, !prof !171

bb.p:                                             ; preds = %bb.o
  call void @_ZN4llvm23SmallVectorTemplateBaseImLb1EE15growAndPushBackEm(ptr noundef nonnull align 8 dereferenceable(16) %11, i64 noundef 6)
  %.pre = load i32, ptr %i.da, align 8, !tbaa !75
  br label %_ZN4llvm23SmallVectorTemplateBaseImLb1EE9push_backEm.exit.us

bb.q:                                             ; preds = %bb.o
  %i.dl = zext i32 %i.dj to i64
  %i.dm = load ptr, ptr %11, align 8, !tbaa !56
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.dl
  store i64 6, ptr %i.dn, align 1
  %i.do = load i32, ptr %i.da, align 8, !tbaa !75
  %i.dp = add i32 %i.do, 1                        ; 2 uses
  store i32 %i.dp, ptr %i.da, align 8, !tbaa !75
  br label %_ZN4llvm23SmallVectorTemplateBaseImLb1EE9push_backEm.exit.us

_ZN4llvm23SmallVectorTemplateBaseImLb1EE9push_backEm.exit.us: ; preds = %bb.q, %bb.p
  %i.dq = phi i32 [ %i.dp, %bb.q ], [ %.pre, %bb.p ]
  %i.dr = load ptr, ptr %11, align 8, !tbaa !56
  %i.ds = zext i32 %i.dq to i64
  %i.dt = trunc nuw i64 %indvars.iv82 to i32
  %i.du = call noundef ptr @_ZN4llvm12DIExpression14appendOpsToArgEPKS0_NS_8ArrayRefImEEjb(ptr noundef %.04252.us, ptr %i.dr, i64 %i.ds, i32 noundef %i.dt, i1 noundef zeroext false) #24
  %i.dv = load ptr, ptr %11, align 8, !tbaa !56   ; 2 uses
  %i.dw = icmp eq ptr %i.dv, %i.cz
  br i1 %i.dw, label %_ZN4llvm11SmallVectorImLj4EED2Ev.exit.us, label %bb.r

bb.r:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseImLb1EE9push_backEm.exit.us
  call void @free(ptr noundef %i.dv) #24
  br label %_ZN4llvm11SmallVectorImLj4EED2Ev.exit.us

_ZN4llvm11SmallVectorImLj4EED2Ev.exit.us:         ; preds = %bb.r, %_ZN4llvm23SmallVectorTemplateBaseImLb1EE9push_backEm.exit.us
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %bb.s

bb.s:                                             ; preds = %_ZN4llvm11SmallVectorImLj4EED2Ev.exit.us, %.lr.ph53.split.us
  %.1.us = phi ptr [ %i.du, %_ZN4llvm11SmallVectorImLj4EED2Ev.exit.us ], [ %.04252.us, %.lr.ph53.split.us ] ; 2 uses
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1 ; 2 uses
  %.not48.us = icmp eq i64 %indvars.iv.next83, %i.dc
  br i1 %.not48.us, label %.preheader, label %.lr.ph53.split.us, !llvm.loop !1126

.preheader:                                       ; preds = %bb.u, %bb.s, %.loopexit
  %.043.lcssa = phi i8 [ %.lobit, %.loopexit ], [ %.lobit, %bb.s ], [ %.144, %bb.u ]
  %.042.lcssa = phi ptr [ %.val51, %.loopexit ], [ %.1.us, %bb.s ], [ %.1, %bb.u ]
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dy = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.neg = select i1 %i.cx, i64 -15, i64 -14
  %i.dz = trunc nuw i8 %.043.lcssa to i1
  %i.ea = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 6 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 9 uses
  %i.ef = and i64 %i.aa, -8
  %i.eg = inttoptr i64 %i.ef to ptr
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  br label %bb.v

.lr.ph53.split:                                   ; preds = %.lr.ph53, %bb.u
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.u ], [ 0, %.lr.ph53 ] ; 3 uses
  %.04252 = phi ptr [ %.1, %bb.u ], [ %.val51, %.lr.ph53 ] ; 2 uses
  %.04351 = phi i8 [ %.144, %bb.u ], [ %.lobit, %.lr.ph53 ] ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.0.val, i64 %indvars.iv
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !1138, !range !52, !noundef !53
  %i.ek = trunc nuw i8 %i.ej to i1
  br i1 %i.ek, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph53.split
  %spec.select = shl nuw nsw i8 %.04351, 1
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %.0.val1, i64 %indvars.iv
  %i.em = load i32, ptr %i.el, align 4, !tbaa !174
  %i.en = zext i32 %i.em to i64
  %i.eo = call noundef ptr @_ZN4llvm12DIExpression7prependEPKS0_hl(ptr noundef %.04252, i8 noundef zeroext %spec.select, i64 noundef %i.en) #24
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph53.split, %bb.t
  %.144 = phi i8 [ %.04351, %.lr.ph53.split ], [ 1, %bb.t ] ; 2 uses
  %.1 = phi ptr [ %.04252, %.lr.ph53.split ], [ %i.eo, %bb.t ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not48 = icmp eq i64 %indvars.iv.next, %i.dc
  br i1 %.not48, label %.preheader, label %.lr.ph53.split, !llvm.loop !1126

bb.v:                                             ; preds = %.preheader, %_ZL22findNextInsertLocationPN4llvm17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEENS_9SlotIndexENS_8ArrayRefINS_14MachineOperandEEERNS_13LiveIntervalsERKNS_18TargetRegisterInfoE.exit
  %.sroa.017.0 = phi ptr [ %.sroa.035.0.i, %_ZL22findNextInsertLocationPN4llvm17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEENS_9SlotIndexENS_8ArrayRefINS_14MachineOperandEEERNS_13LiveIntervalsERKNS_18TargetRegisterInfoE.exit ], [ %i.ab, %.preheader ] ; 3 uses
  %i.ep = load ptr, ptr %i.dy, align 8, !tbaa !519
  %i.eq = getelementptr inbounds [32 x i8], ptr %i.ep, i64 %.neg
  %i.er = load ptr, ptr %10, align 8, !tbaa !56
  store ptr %i.er, ptr %12, align 8, !tbaa !1140
  %i.es = load i32, ptr %i.ad, align 8, !tbaa !75
  %i.et = zext i32 %i.es to i64
  store i64 %i.et, ptr %i.ea, align 8, !tbaa !1141
  %i.eu = load ptr, ptr %0, align 8, !tbaa !153
  %i.ev = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocERKNS_11MCInstrDescEbNS_8ArrayRefINS_14MachineOperandEEEPKNS_6MDNodeESG_(ptr noundef nonnull align 8 dereferenceable(360) %1, ptr %.sroa.017.0, ptr noundef nonnull align 8 dereferenceable(8) %i.dx, ptr noundef nonnull align 8 dereferenceable(32) %i.eq, i1 noundef zeroext %i.dz, ptr noundef nonnull byval(%"class.llvm::ArrayRef.162") align 8 %12, ptr noundef %i.eu, ptr noundef %.042.lcssa) #24 ; 0 uses
  %i.ew = load ptr, ptr %10, align 8, !tbaa !56   ; 2 uses
  %i.ex = load i32, ptr %i.ad, align 8, !tbaa !75 ; 2 uses
  %i.ey = zext i32 %i.ex to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  store ptr %i.eb, ptr %9, align 8, !tbaa !56
  store i32 0, ptr %i.ec, align 8, !tbaa !75
  store i32 4, ptr %i.ed, align 4, !tbaa !164
  %.idx.i = shl nuw nsw i64 %i.ey, 5
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 %.idx.i
  %.not54.i = icmp eq i32 %i.ex, 0
  br i1 %.not54.i, label %_ZSt9__advanceIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit.i
  %.pre.i63 = load i32, ptr %i.ec, align 8, !tbaa !75
  %i.fa = icmp eq i32 %.pre.i63, 0
  %.not3864.i = icmp eq ptr %.sroa.017.0, %i.ee
  %or.cond = select i1 %i.fa, i1 true, i1 %.not3864.i
  br i1 %or.cond, label %_ZSt9__advanceIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i, label %.lr.ph66.i

.lr.ph.i:                                         ; preds = %bb.v, %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit.i
  %.055.i = phi ptr [ %i.fn, %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit.i ], [ %i.ew, %bb.v ] ; 3 uses
  %i.fb = load i32, ptr %.055.i, align 8
  %i.fc = and i32 %i.fb, 255
  %i.fd = icmp eq i32 %i.fc, 0
  br i1 %i.fd, label %bb.w, label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit.i

bb.w:                                             ; preds = %.lr.ph.i
  %i.fe = getelementptr inbounds nuw i8, ptr %.055.i, i64 4
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !170 ; 2 uses
  %i.fg = load i32, ptr %i.ec, align 8, !tbaa !75 ; 2 uses
  %i.fh = load i32, ptr %i.ed, align 4, !tbaa !164
  %.not.i21.i = icmp ult i32 %i.fg, %i.fh
  br i1 %.not.i21.i, label %bb.y, label %bb.x, !prof !171

bb.x:                                             ; preds = %bb.w
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 %i.ff)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit.i

bb.y:                                             ; preds = %bb.w
  %i.fi = zext i32 %i.fg to i64
  %i.fj = load ptr, ptr %9, align 8, !tbaa !56
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.fi
  store i32 %i.ff, ptr %i.fk, align 1
  %i.fl = load i32, ptr %i.ec, align 8, !tbaa !75
  %i.fm = add i32 %i.fl, 1
  store i32 %i.fm, ptr %i.ec, align 8, !tbaa !75
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit.i

_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit.i: ; preds = %bb.y, %bb.x, %.lr.ph.i
  %i.fn = getelementptr inbounds nuw i8, ptr %.055.i, i64 32 ; 2 uses
  %.not.i62 = icmp eq ptr %i.fn, %i.ez
  br i1 %.not.i62, label %._crit_edge.i, label %.lr.ph.i

.lr.ph66.i:                                       ; preds = %._crit_edge.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i
  %.sroa.031.065.i = phi ptr [ %i.lb, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i ], [ %.sroa.017.0, %._crit_edge.i ] ; 25 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.031.065.i, i64 44 ; 4 uses
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !260 ; 2 uses
  %i.fq = and i32 %i.fp, 12
  %i.fr = icmp eq i32 %i.fq, 0
  %i.fs = and i32 %i.fp, 4
  %i.ft = icmp ne i32 %i.fs, 0
  %or.cond.i.i.i = or i1 %i.fr, %i.ft
  br i1 %or.cond.i.i.i, label %.split.i, label %_ZNK4llvm12MachineInstr12isTerminatorENS0_9QueryTypeE.exit.i

.split.i:                                         ; preds = %.lr.ph66.i
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.031.065.i, i64 16
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !526
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !528
  %i.fy = and i64 %i.fx, 512
  %.not39.i = icmp eq i64 %i.fy, 0
  br i1 %.not39.i, label %bb.z, label %_ZSt9__advanceIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i

_ZNK4llvm12MachineInstr12isTerminatorENS0_9QueryTypeE.exit.i: ; preds = %.lr.ph66.i
  %i.fz = call noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.031.065.i, i64 noundef 512, i32 noundef 1) #24
  br i1 %i.fz, label %_ZSt9__advanceIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i, label %bb.z

bb.z:                                             ; preds = %_ZNK4llvm12MachineInstr12isTerminatorENS0_9QueryTypeE.exit.i, %.split.i
  %i.ga = load ptr, ptr %i.a, align 8, !tbaa !295 ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 104
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !343, !noalias !1142 ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 112
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !344, !noalias !1142 ; 4 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ga, i64 124
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !345, !noalias !1142 ; 3 uses
  %i.gh = icmp eq i32 %i.gg, 0
  br i1 %i.gh, label %_ZNK4llvm13LiveIntervals12isNotInMIMapERKNS_12MachineInstrE.exit.thread.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gi = add i32 %i.gg, -1                       ; 4 uses
  %i.gj = ptrtoint ptr %.sroa.031.065.i to i64
  %i.gk = mul i64 %i.gj, -4658895280553007687     ; 2 uses
  %i.gl = lshr i64 %i.gk, 31
  %i.gm = xor i64 %i.gl, %i.gk
  %i.gn = trunc i64 %i.gm to i32
  %i.go = and i32 %i.gi, %i.gn                    ; 3 uses
  %i.gp = zext i32 %i.go to i64                   ; 2 uses
  %i.gq = lshr i64 %i.gp, 5
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %i.gq
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !174
  %i.gt = and i32 %i.go, 31
  %i.gu = lshr i32 %i.gs, %i.gt
  %i.gv = trunc i32 %i.gu to i1
  br i1 %i.gv, label %.lr.ph.i.i.i.i.i.i65, label %_ZNK4llvm13LiveIntervals12isNotInMIMapERKNS_12MachineInstrE.exit.thread.i, !prof !213

.lr.ph.i.i.i.i.i.i65:                             ; preds = %bb.aa, %bb.ab
  %i.gw = phi i64 [ %i.hb, %bb.ab ], [ %i.gp, %bb.aa ]
  %.017.i.i.i.i.i.i = phi i32 [ %i.ha, %bb.ab ], [ %i.go, %bb.aa ]
  %i.gx = getelementptr inbounds nuw [16 x i8], ptr %i.gc, i64 %i.gw
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !346
  %.not.i22.i = icmp eq ptr %.sroa.031.065.i, %i.gy
  br i1 %.not.i22.i, label %_ZNK4llvm13LiveIntervals12isNotInMIMapERKNS_12MachineInstrE.exit.i, label %bb.ab, !prof !171

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i.i.i65
  %i.gz = add nuw i32 %.017.i.i.i.i.i.i, 1
  %i.ha = and i32 %i.gz, %i.gi                    ; 3 uses
  %i.hb = zext i32 %i.ha to i64                   ; 2 uses
  %i.hc = lshr i64 %i.hb, 5
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %i.hc
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !174
  %i.hf = and i32 %i.ha, 31
  %i.hg = lshr i32 %i.he, %i.hf
  %i.hh = trunc i32 %i.hg to i1
  br i1 %i.hh, label %.lr.ph.i.i.i.i.i.i65, label %_ZNK4llvm13LiveIntervals12isNotInMIMapERKNS_12MachineInstrE.exit.thread.i, !prof !217

_ZNK4llvm13LiveIntervals12isNotInMIMapERKNS_12MachineInstrE.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i65
  %i.hi = load i32, ptr %i.fo, align 4, !tbaa !260 ; 2 uses
  %i.hj = and i32 %i.hi, 4
  %.not2.i.i.i.i = icmp eq i32 %i.hj, 0
  br i1 %.not2.i.i.i.i, label %_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i.i.i, label %.lr.ph.i.i.i.i66

.lr.ph.i.i.i.i66:                                 ; preds = %_ZNK4llvm13LiveIntervals12isNotInMIMapERKNS_12MachineInstrE.exit.i, %.lr.ph.i.i.i.i66
  %.sroa.0.03.i.i.i.i = phi ptr [ %i.hl, %.lr.ph.i.i.i.i66 ], [ %.sroa.031.065.i, %_ZNK4llvm13LiveIntervals12isNotInMIMapERKNS_12MachineInstrE.exit.i ]
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.0.03.i.i.i.i, align 8
  %i.hk = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -8
  %i.hl = inttoptr i64 %i.hk to ptr               ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 44
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !260
  %i.ho = and i32 %i.hn, 4
  %.not.i.i.i.i67 = icmp eq i32 %i.ho, 0
  br i1 %.not.i.i.i.i67, label %_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i.i.i, label %.lr.ph.i.i.i.i66, !llvm.loop !6

_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i66, %_ZNK4llvm13LiveIntervals12isNotInMIMapERKNS_12MachineInstrE.exit.i
  %.sroa.0.0.lcssa.i.i.i.i = phi ptr [ %.sroa.031.065.i, %_ZNK4llvm13LiveIntervals12isNotInMIMapERKNS_12MachineInstrE.exit.i ], [ %i.hl, %.lr.ph.i.i.i.i66 ] ; 3 uses
  %i.hp = and i32 %i.hi, 8
  %.not3.i.i.i.i = icmp eq i32 %i.hp, 0
  br i1 %.not3.i.i.i.i, label %_ZN4llvm12getBundleEndENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i.i.i, label %.lr.ph.i11.i.i.i

.lr.ph.i11.i.i.i:                                 ; preds = %_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i.i.i, %.lr.ph.i11.i.i.i
  %.sroa.0.04.i.i.i.i = phi ptr [ %i.hr, %.lr.ph.i11.i.i.i ], [ %.sroa.031.065.i, %_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i.i.i ]
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i.i.i.i, i64 8
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !255 ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 44
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !260
  %i.hu = and i32 %i.ht, 8
  %.not.i12.i.i.i = icmp eq i32 %i.hu, 0
  br i1 %.not.i12.i.i.i, label %_ZN4llvm12getBundleEndENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i.i.i, label %.lr.ph.i11.i.i.i, !llvm.loop !7

_ZN4llvm12getBundleEndENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i.i.i: ; preds = %.lr.ph.i11.i.i.i, %_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i.i.i
  %.sroa.0.0.lcssa.i13.i.i.i = phi ptr [ %.sroa.031.065.i, %_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i.i.i ], [ %i.hr, %.lr.ph.i11.i.i.i ]
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i13.i.i.i, i64 8
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !255 ; 3 uses
  %.not8.i.i.i.i = icmp eq ptr %.sroa.0.0.lcssa.i.i.i.i, %i.hw
  br i1 %.not8.i.i.i.i, label %_ZN4llvm28skipDebugInstructionsForwardINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEEEET_S7_S7_b.exit.i.i.i, label %.lr.ph.i14.i.i.i

.lr.ph.i14.i.i.i:                                 ; preds = %_ZN4llvm12getBundleEndENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i.i.i, %.critedge2.i.i.i.i
  %.sroa.03.09.i.i.i.i = phi ptr [ %i.ia, %.critedge2.i.i.i.i ], [ %.sroa.0.0.lcssa.i.i.i.i, %_ZN4llvm12getBundleEndENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i.i.i ] ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i.i.i, i64 52
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !198
  switch i32 %i.hy, label %_ZN4llvm28skipDebugInstructionsForwardINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEEEET_S7_S7_b.exit.i.i.i [
    i32 25, label %.critedge2.i.i.i.i
    i32 18, label %.critedge2.i.i.i.i
    i32 17, label %.critedge2.i.i.i.i
    i32 16, label %.critedge2.i.i.i.i
    i32 15, label %.critedge2.i.i.i.i
    i32 14, label %.critedge2.i.i.i.i
  ]

.critedge2.i.i.i.i:                               ; preds = %.lr.ph.i14.i.i.i, %.lr.ph.i14.i.i.i, %.lr.ph.i14.i.i.i, %.lr.ph.i14.i.i.i, %.lr.ph.i14.i.i.i, %.lr.ph.i14.i.i.i
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i.i.i, i64 8
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !255 ; 2 uses
  %.not.i15.i.i.i = icmp eq ptr %i.ia, %i.hw
  br i1 %.not.i15.i.i.i, label %_ZN4llvm28skipDebugInstructionsForwardINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEEEET_S7_S7_b.exit.i.i.i, label %.lr.ph.i14.i.i.i, !llvm.loop !8

_ZN4llvm28skipDebugInstructionsForwardINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEEEET_S7_S7_b.exit.i.i.i: ; preds = %.critedge2.i.i.i.i, %.lr.ph.i14.i.i.i, %_ZN4llvm12getBundleEndENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i.i.i
  %i.ib = phi ptr [ %.sroa.0.0.lcssa.i.i.i.i, %_ZN4llvm12getBundleEndENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i.i.i ], [ %i.hw, %.critedge2.i.i.i.i ], [ %.sroa.03.09.i.i.i.i, %.lr.ph.i14.i.i.i ] ; 2 uses
  %i.ic = ptrtoint ptr %i.ib to i64
  %i.id = mul i64 %i.ic, -4658895280553007687     ; 2 uses
  %i.ie = lshr i64 %i.id, 31
  %i.if = xor i64 %i.ie, %i.id
  %i.ig = trunc i64 %i.if to i32
  %i.ih = and i32 %i.gi, %i.ig                    ; 3 uses
  %i.ii = zext i32 %i.ih to i64                   ; 2 uses
  %i.ij = lshr i64 %i.ii, 5
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %i.ij
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !174, !noalias !1143
  %i.im = and i32 %i.ih, 31
  %i.in = lshr i32 %i.il, %i.im
  %i.io = trunc i32 %i.in to i1
  br i1 %i.io, label %.lr.ph.i.i.i.i.i23.i, label %.loopexit.i.i.i.i.i, !prof !213
end_hunk_0
