Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AVRRegisterInfo?download=true
begin_hunk_0_@_ZNK4llvm15AVRRegisterInfo19eliminateFrameIndexENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEijPNS_12RegScavengerE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  %i.cj = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr null, ptr %i.cj, align 8, !tbaa !388, !alias.scope !397
  %i.ck = getelementptr inbounds nuw i8, ptr %14, i64 4
  store i32 34, ptr %i.ck, align 4, !tbaa !8, !alias.scope !397
  %i.cl = getelementptr inbounds nuw i8, ptr %14, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, i8 0, i64 16, i1 false), !alias.scope !397
  store i32 0, ptr %14, align 8, !alias.scope !397
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ci, ptr noundef nonnull align 8 dereferenceable(1065) %i.ch, ptr noundef nonnull align 8 dereferenceable(32) %14) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %1, align 8
  %i.cm = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i = icmp eq i64 %i.cm, 0
  br i1 %.not.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i: ; preds = %bb.e
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !400
  %i.cp = and i32 %i.co, 8
  %.not34.i.i.i.i = icmp eq i32 %i.cp, 0
  br i1 %.not34.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i
  %.sroa.0.05.i.i.i.i = phi ptr [ %i.cr, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i ], [ %1, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !401 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 44
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !400
  %i.cu = and i32 %i.ct, 8
  %.not3.i.i.i.i = icmp eq i32 %i.cu, 0
  br i1 %.not3.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i, !llvm.loop !402

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i, %bb.e, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i
  %.sroa.0.1.i.i.i.i = phi ptr [ %1, %bb.e ], [ %1, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i ], [ %i.cr, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !401 ; 12 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.not = icmp eq ptr %i.cw, %i.cx
  br i1 %.not, label %_ZN4llvmL15foldFrameOffsetERNS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERiNS_8RegisterE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 52
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !385 ; 2 uses
  switch i32 %i.cz, label %_ZN4llvmL15foldFrameOffsetERNS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERiNS_8RegisterE.exit [
    i32 428, label %bb.g
    i32 421, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !358 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !8
  %.not.i = icmp eq i32 %i.bd, %i.dd
  br i1 %.not.i, label %bb.h, label %_ZN4llvmL15foldFrameOffsetERNS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERiNS_8RegisterE.exit

bb.h:                                             ; preds = %bb.g
  switch i32 %i.cz, label %.sink.split.i [
    i32 421, label %bb.i
    i32 428, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 80
  %i.df = load i64, ptr %i.de, align 8, !tbaa !8
  %i.dg = trunc i64 %i.df to i32
  %i.dh = sub i32 %i.ay, %i.dg
  br label %.sink.split.i

bb.j:                                             ; preds = %bb.h
  %i.di = getelementptr inbounds nuw i8, ptr %i.db, i64 80
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !8
  %i.dk = trunc i64 %i.dj to i32
  %i.dl = add i32 %i.ay, %i.dk
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.i, %bb.j, %bb.h
  %.3 = phi i32 [ %i.ay, %bb.h ], [ %i.dl, %bb.j ], [ %i.dh, %bb.i ]
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cw, align 8
  %i.dm = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i.i = icmp eq i64 %i.dm, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i: ; preds = %.sink.split.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cw, i64 44
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !400
  %i.dp = and i32 %i.do, 8
  %.not34.i.i.i.i.i = icmp eq i32 %i.dp, 0
  br i1 %.not34.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i
  %.sroa.0.05.i.i.i.i.i = phi ptr [ %i.dr, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i ], [ %i.cw, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i ]
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !401 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 44
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !400
  %i.du = and i32 %i.dt, 8
  %.not3.i.i.i.i.i = icmp eq i32 %i.du, 0
  br i1 %.not3.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i, !llvm.loop !402

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, %.sink.split.i
  %.sroa.0.1.i.i.i.i.i = phi ptr [ %i.cw, %.sink.split.i ], [ %i.cw, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i ], [ %i.dr, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i ]
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !401
  %i.dx = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %i.cw) #17 ; 0 uses
  br label %_ZN4llvmL15foldFrameOffsetERNS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERiNS_8RegisterE.exit

_ZN4llvmL15foldFrameOffsetERNS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERiNS_8RegisterE.exit: ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit.i, %bb.g, %bb.f, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit
  %.0 = phi i32 [ %i.ay, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit ], [ %i.ay, %bb.f ], [ %.3, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit.i ], [ %i.ay, %bb.g ] ; 3 uses
  %.sroa.0171.0 = phi ptr [ %i.cw, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit ], [ %i.cw, %bb.f ], [ %i.dw, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit.i ], [ %i.cw, %bb.g ]
  switch i32 %i.bd, label %bb.m [
    i32 57, label %bb.k
    i32 59, label %bb.k
    i32 61, label %bb.k
  ]

bb.k:                                             ; preds = %_ZN4llvmL15foldFrameOffsetERNS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERiNS_8RegisterE.exit, %_ZN4llvmL15foldFrameOffsetERNS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERiNS_8RegisterE.exit, %_ZN4llvmL15foldFrameOffsetERNS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERiNS_8RegisterE.exit
  %i.dy = icmp ult i32 %.0, 64
  br i1 %i.dy, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.dz = getelementptr inbounds nuw i8, ptr %i.u, i64 348
  %i.ea = load i8, ptr %i.dz, align 4, !tbaa !403, !range !274, !noundef !193
  %i.eb = trunc nuw i8 %i.ea to i1
  br i1 %i.eb, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %_ZN4llvmL15foldFrameOffsetERNS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERiNS_8RegisterE.exit
  %i.ec = sub nsw i32 0, %.0
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.1 = phi i32 [ %i.ec, %bb.m ], [ %.0, %bb.l ]
  %.090.neg = phi i64 [ -421, %bb.m ], [ -428, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #17
  store ptr %.sroa.071.0.copyload, ptr %20, align 8, !tbaa !295
  %i.ed = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ed, i8 0, i64 24, i1 false)
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !387
  %i.eg = getelementptr inbounds [32 x i8], ptr %i.ef, i64 %.090.neg
  %i.eh = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.c, ptr %.sroa.0171.0, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(32) %i.eg, i32 %i.bd) ; 2 uses
  %i.ei = extractvalue { ptr, ptr } %i.eh, 0      ; 2 uses
  %i.ej = extractvalue { ptr, ptr } %i.eh, 1      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  %i.ek = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr null, ptr %i.ek, align 8, !tbaa !388, !alias.scope !404
  %i.el = getelementptr inbounds nuw i8, ptr %13, i64 4
  store i32 %i.bd, ptr %i.el, align 4, !tbaa !8, !alias.scope !404
  %i.em = getelementptr inbounds nuw i8, ptr %13, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.em, i8 0, i64 16, i1 false), !alias.scope !404
  store i32 67108864, ptr %13, align 8, !alias.scope !404
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ej, ptr noundef nonnull align 8 dereferenceable(1065) %i.ei, ptr noundef nonnull align 8 dereferenceable(32) %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  %i.en = sext i32 %.1 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  store i32 1, ptr %12, align 8, !alias.scope !407
  %i.eo = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr null, ptr %i.eo, align 8, !tbaa !388, !alias.scope !407
  %i.ep = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i64 %i.en, ptr %i.ep, align 8, !tbaa !8, !alias.scope !407
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ej, ptr noundef nonnull align 8 dereferenceable(1065) %i.ei, ptr noundef nonnull align 8 dereferenceable(32) %12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ej, i64 32
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !358
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 96 ; 2 uses
  %i.et = load i32, ptr %i.es, align 8
  %i.eu = or i32 %i.et, 67108864
  store i32 %i.eu, ptr %i.es, align 8
  %i.ev = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #17 ; 0 uses
  br label %bb.u

bb.o:                                             ; preds = %bb.a
  %i.ew = getelementptr inbounds nuw i8, ptr %i.u, i64 383 ; 2 uses
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !196, !range !274, !noundef !193
  %i.ey = trunc nuw i8 %i.ex to i1                ; 2 uses
  %i.ez = select i1 %i.ey, i32 0, i32 62          ; 3 uses
  %i.fa = icmp sgt i32 %i.ay, %i.ez
  br i1 %i.fa, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.fb = sub nsw i32 %i.ay, %i.ez                ; 4 uses
  %i.fc = icmp sgt i32 %i.fb, 63
  br i1 %i.fc, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fd = getelementptr inbounds nuw i8, ptr %i.u, i64 348
  %i.fe = load i8, ptr %i.fd, align 4, !tbaa !403, !range !274, !noundef !193
  %i.ff = trunc nuw i8 %i.fe to i1
  br i1 %i.ff, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.fg = sub nsw i32 0, %i.fb
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.093 = phi i32 [ %i.fg, %bb.r ], [ %i.fb, %bb.q ]
  %.092.neg = phi i64 [ -421, %bb.r ], [ -506, %bb.q ]
  %.091.neg = phi i64 [ -421, %bb.r ], [ -428, %bb.q ]
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #17
  store ptr %.sroa.071.0.copyload, ptr %21, align 8, !tbaa !295
  %i.fh = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fh, i8 0, i64 24, i1 false)
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !387
  %i.fk = getelementptr inbounds i8, ptr %i.fj, i64 -14976
  %i.fl = select i1 %i.ey, i32 21, i32 5
  %i.fm = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.c, ptr nonnull %1, ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(32) %i.fk, i32 %i.fl) ; 2 uses
  %i.fn = extractvalue { ptr, ptr } %i.fm, 0
  %i.fo = extractvalue { ptr, ptr } %i.fm, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  store i32 1, ptr %11, align 8, !alias.scope !410
  %i.fp = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr null, ptr %i.fp, align 8, !tbaa !388, !alias.scope !410
  %i.fq = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 63, ptr %i.fq, align 8, !tbaa !8, !alias.scope !410
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.fo, ptr noundef nonnull align 8 dereferenceable(1065) %i.fn, ptr noundef nonnull align 8 dereferenceable(32) %11) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #17
  store ptr %.sroa.071.0.copyload, ptr %22, align 8, !tbaa !295
  %i.fr = getelementptr inbounds nuw i8, ptr %22, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fr, i8 0, i64 24, i1 false)
  %i.fs = load ptr, ptr %i.fi, align 8, !tbaa !387
  %i.ft = getelementptr inbounds [32 x i8], ptr %i.fs, i64 %.091.neg
  %i.fu = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.c, ptr nonnull %1, ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(32) %i.ft, i32 60) ; 2 uses
  %i.fv = extractvalue { ptr, ptr } %i.fu, 0      ; 2 uses
  %i.fw = extractvalue { ptr, ptr } %i.fu, 1      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %i.fx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr null, ptr %i.fx, align 8, !tbaa !388, !alias.scope !413
  %i.fy = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 60, ptr %i.fy, align 4, !tbaa !8, !alias.scope !413
  %i.fz = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fz, i8 0, i64 16, i1 false), !alias.scope !413
  store i32 67108864, ptr %10, align 8, !alias.scope !413
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.fw, ptr noundef nonnull align 8 dereferenceable(1065) %i.fv, ptr noundef nonnull align 8 dereferenceable(32) %10) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  %i.ga = sext i32 %.093 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  store i32 1, ptr %9, align 8, !alias.scope !416
  %i.gb = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr null, ptr %i.gb, align 8, !tbaa !388, !alias.scope !416
  %i.gc = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 %i.ga, ptr %i.gc, align 8, !tbaa !8, !alias.scope !416
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.fw, ptr noundef nonnull align 8 dereferenceable(1065) %i.fv, ptr noundef nonnull align 8 dereferenceable(32) %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #17
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fw, i64 32
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !358
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 96 ; 2 uses
  %i.gg = load i32, ptr %i.gf, align 8
  %i.gh = or i32 %i.gg, 67108864
  store i32 %i.gh, ptr %i.gf, align 8
  %.0.copyload.i.i.i.i.i.i.i.i.i.i98 = load i64, ptr %1, align 8
  %i.gi = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i98, 4
  %.not.i.i.i.i99 = icmp eq i64 %i.gi, 0
  br i1 %.not.i.i.i.i99, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i101, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i101: ; preds = %bb.s
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !400
  %i.gl = and i32 %i.gk, 8
  %.not34.i.i.i.i102 = icmp eq i32 %i.gl, 0
  br i1 %.not34.i.i.i.i102, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i103

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i103: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i101, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i103
  %.sroa.0.05.i.i.i.i104 = phi ptr [ %i.gn, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i103 ], [ %1, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i101 ]
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i104, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !401 ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 44
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !400
  %i.gq = and i32 %i.gp, 8
  %.not3.i.i.i.i105 = icmp eq i32 %i.gq, 0
  br i1 %.not3.i.i.i.i105, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i103, !llvm.loop !402

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i103, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i101, %bb.s
  %.sroa.0.1.i.i.i.i100 = phi ptr [ %1, %bb.s ], [ %1, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i101 ], [ %i.gn, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i103 ]
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i100, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !401 ; 4 uses
  %i.gt = load ptr, ptr %i.fi, align 8, !tbaa !387
  %i.gu = getelementptr inbounds i8, ptr %i.gt, i64 -15776
  %i.gv = load ptr, ptr %i.d, align 8, !tbaa !312 ; 3 uses
  %i.gw = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.gv, ptr noundef nonnull align 8 dereferenceable(32) %i.gu, ptr %.sroa.071.0.copyload, i1 noundef zeroext false) #17 ; 8 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.gx, ptr noundef %i.gw) #17
  %.0.copyload.i.i.i.i.i.i.i.i.i.i106 = load i64, ptr %i.gs, align 8
  %i.gy = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i106, -8 ; 2 uses
  %i.gz = inttoptr i64 %i.gy to ptr
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  store ptr %i.gs, ptr %i.ha, align 8, !tbaa !401
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i = load i64, ptr %i.gw, align 8
  %i.hb = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i, 7
  %i.hc = or disjoint i64 %i.hb, %i.gy
  store i64 %i.hc, ptr %i.gw, align 8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  store ptr %i.gw, ptr %i.hd, align 8, !tbaa !401
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i = load i64, ptr %i.gs, align 8
  %i.he = ptrtoint ptr %i.gw to i64
  %i.hf = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i, 7
  %i.hg = or disjoint i64 %i.hf, %i.he
  store i64 %i.hg, ptr %i.gs, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  store i32 1, ptr %8, align 8, !alias.scope !419
  %i.hh = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr null, ptr %i.hh, align 8, !tbaa !388, !alias.scope !419
  %i.hi = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 63, ptr %i.hi, align 8, !tbaa !8, !alias.scope !419
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.gw, ptr noundef nonnull align 8 dereferenceable(1065) %i.gv, ptr noundef nonnull align 8 dereferenceable(32) %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %i.hj = load i8, ptr %i.ew, align 1, !tbaa !196, !range !274, !noundef !193
  %i.hk = trunc nuw i8 %i.hj to i1
  %i.hl = select i1 %i.hk, i32 21, i32 5
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.hm = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.hm, align 8, !tbaa !388, !alias.scope !422
  %i.hn = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.hl, ptr %i.hn, align 4, !tbaa !8, !alias.scope !422
  %i.ho = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ho, i8 0, i64 16, i1 false), !alias.scope !422
  store i32 67108864, ptr %7, align 8, !alias.scope !422
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.gw, ptr noundef nonnull align 8 dereferenceable(1065) %i.gv, ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %.0.copyload.i.i.i.i.i.i.i.i.i.i109 = load i64, ptr %1, align 8
  %i.hp = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i109, 4
  %.not.i.i.i.i110 = icmp eq i64 %i.hp, 0
  br i1 %.not.i.i.i.i110, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i114, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i111

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i114: ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !400
  %i.hs = and i32 %i.hr, 8
  %.not34.i.i.i.i115 = icmp eq i32 %i.hs, 0
  br i1 %.not34.i.i.i.i115, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i111, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i116

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i116: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i114, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i116
  %.sroa.0.05.i.i.i.i117 = phi ptr [ %i.hu, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i116 ], [ %1, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i114 ]
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i117, i64 8
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !401 ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 44
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !400
  %i.hx = and i32 %i.hw, 8
  %.not3.i.i.i.i118 = icmp eq i32 %i.hx, 0
  br i1 %.not3.i.i.i.i118, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i111, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i116, !llvm.loop !402

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i111: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i116, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i114, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i
  %.sroa.0.1.i.i.i.i112 = phi ptr [ %1, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i ], [ %1, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i114 ], [ %i.hu, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i116 ]
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i112, i64 8
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !401
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #17
  store ptr %.sroa.071.0.copyload, ptr %23, align 8, !tbaa !295
  %i.ia = getelementptr inbounds nuw i8, ptr %23, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ia, i8 0, i64 24, i1 false)
  %i.ib = load ptr, ptr %i.fi, align 8, !tbaa !387
  %i.ic = getelementptr inbounds [32 x i8], ptr %i.ib, i64 %.092.neg
  %i.id = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.c, ptr %i.hz, ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(32) %i.ic, i32 60) ; 2 uses
  %i.ie = extractvalue { ptr, ptr } %i.id, 0      ; 2 uses
  %i.if = extractvalue { ptr, ptr } %i.id, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.ig = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.ig, align 8, !tbaa !388, !alias.scope !425
  %i.ih = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 60, ptr %i.ih, align 4, !tbaa !8, !alias.scope !425
  %i.ii = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ii, i8 0, i64 16, i1 false), !alias.scope !425
  store i32 67108864, ptr %6, align 8, !alias.scope !425
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.if, ptr noundef nonnull align 8 dereferenceable(1065) %i.ie, ptr noundef nonnull align 8 dereferenceable(32) %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.ij = sext i32 %i.fb to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  store i32 1, ptr %5, align 8, !alias.scope !428
  %i.ik = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.ik, align 8, !tbaa !388, !alias.scope !428
  %i.il = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.ij, ptr %i.il, align 8, !tbaa !8, !alias.scope !428
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.if, ptr noundef nonnull align 8 dereferenceable(1065) %i.ie, ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #17
  %.pre = load ptr, ptr %i.v, align 8, !tbaa !358
  br label %bb.t

bb.t:                                             ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i111, %bb.o
  %i.im = phi ptr [ %.pre, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i111 ], [ %i.w, %bb.o ]
  %.2 = phi i32 [ %i.ez, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i111 ], [ %i.ay, %bb.o ]
  %i.in = getelementptr inbounds nuw [32 x i8], ptr %i.im, i64 %i.x
  call void @_ZN4llvm14MachineOperand16ChangeToRegisterENS_8RegisterEbbbbbb(ptr noundef nonnull align 8 dereferenceable(32) %i.in, i32 60, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false) #17
  %i.io = load ptr, ptr %i.v, align 8, !tbaa !358
  %i.ip = getelementptr inbounds nuw [32 x i8], ptr %i.io, i64 %i.aq
  %i.iq = sext i32 %.2 to i64
  call void @_ZN4llvm14MachineOperand17ChangeToImmediateElj(ptr noundef nonnull align 8 dereferenceable(32) %i.ip, i64 noundef %i.iq, i32 noundef 0) #17
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.n
  ret i1 false
}

declare noundef ptr @_ZNK4llvm16AVRTargetMachine16getSubtargetImplEv(ptr noundef nonnull align 8 dereferenceable(521056)) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 %4) local_unnamed_addr #6 comdat {
bb.a:
  %5 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !400
  %i.c = and i32 %i.b, 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !312  ; 6 uses
  %.sroa.03.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !295
  %i.f = tail call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr %.sroa.03.0.copyload.i, i1 noundef zeroext false) #17 ; 6 uses
  %i.g = tail call ptr @_ZN4llvm17MachineBasicBlock6insertENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEPS4_(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr nonnull %1, ptr noundef %i.f) #17 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !431  ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm12MachineInstr13setPCSectionsERNS_15MachineFunctionEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(80) %i.f, ptr noundef nonnull align 8 dereferenceable(1065) %i.e, ptr noundef nonnull %i.i) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !435  ; 2 uses
  %.not7.i.i = icmp eq ptr %i.k, null
  br i1 %.not7.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4llvm12MachineInstr15setMMRAMetadataERNS_15MachineFunctionEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(80) %i.f, ptr noundef nonnull align 8 dereferenceable(1065) %i.e, ptr noundef nonnull %i.k) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !436  ; 2 uses
  %.not8.i.i = icmp eq ptr %i.m, null
  br i1 %.not8.i.i, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit, label %bb.g

end_hunk_0
