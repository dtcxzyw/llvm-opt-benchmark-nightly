Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HexagonFrameLowering?download=true
inline.NumInlined: 5341
inline.NumDeleted: 2406
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZNK4llvm20HexagonFrameLowering12expandAllocaEPNS_12MachineInstrERNS_15MachineFunctionERKNS_16HexagonInstrInfoENS_8RegisterEj:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i8 0, i64 24, i1 false)
  %i.az = load ptr, ptr %i.y, align 8, !tbaa !324
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -30912
  %i.bb = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.c, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull align 8 dereferenceable(32) %i.ba, i32 %i.k) ; 2 uses
  %i.bc = extractvalue { ptr, ptr } %i.bb, 0      ; 2 uses
  %i.bd = extractvalue { ptr, ptr } %i.bb, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #27
  %i.be = getelementptr inbounds nuw i8, ptr %28, i64 8
  store ptr null, ptr %i.be, align 8, !tbaa !327, !alias.scope !1048
  %i.bf = getelementptr inbounds nuw i8, ptr %28, i64 4
  store i32 %i.k, ptr %i.bf, align 4, !tbaa !311, !alias.scope !1048
  %i.bg = getelementptr inbounds nuw i8, ptr %28, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i8 0, i64 16, i1 false), !alias.scope !1048
  store i32 0, ptr %28, align 8, !alias.scope !1048
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bd, ptr noundef nonnull align 8 dereferenceable(1065) %i.bc, ptr noundef nonnull align 8 dereferenceable(32) %28) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #27
  %i.bh = and i64 %i.h, 4294967295
  %i.bi = sub nsw i64 0, %i.bh                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #27
  store i32 1, ptr %27, align 8, !alias.scope !1049
  %i.bj = getelementptr inbounds nuw i8, ptr %27, i64 8
  store ptr null, ptr %i.bj, align 8, !tbaa !327, !alias.scope !1049
  %i.bk = getelementptr inbounds nuw i8, ptr %27, i64 16
  store i64 %i.bi, ptr %i.bk, align 8, !tbaa !311, !alias.scope !1049
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bd, ptr noundef nonnull align 8 dereferenceable(1065) %i.bc, ptr noundef nonnull align 8 dereferenceable(32) %27) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #27
  br i1 %.not287, label %.thread, label %.thread296

.thread296:                                       ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #27
  store ptr %.sroa.0105.0.copyload, ptr %36, align 8, !tbaa !322
  %i.bl = getelementptr inbounds nuw i8, ptr %36, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i8 0, i64 24, i1 false)
  %i.bm = load ptr, ptr %i.y, align 8, !tbaa !324
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -30912
  %i.bo = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.c, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull align 8 dereferenceable(32) %i.bn, i32 %4) ; 2 uses
  %i.bp = extractvalue { ptr, ptr } %i.bo, 0      ; 2 uses
  %i.bq = extractvalue { ptr, ptr } %i.bo, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #27
  %i.br = getelementptr inbounds nuw i8, ptr %26, i64 8
  store ptr null, ptr %i.br, align 8, !tbaa !327, !alias.scope !1050
  %i.bs = getelementptr inbounds nuw i8, ptr %26, i64 4
  store i32 %4, ptr %i.bs, align 4, !tbaa !311, !alias.scope !1050
  %i.bt = getelementptr inbounds nuw i8, ptr %26, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, i8 0, i64 16, i1 false), !alias.scope !1050
  store i32 0, ptr %26, align 8, !alias.scope !1050
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bq, ptr noundef nonnull align 8 dereferenceable(1065) %i.bp, ptr noundef nonnull align 8 dereferenceable(32) %26) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #27
  store i32 1, ptr %25, align 8, !alias.scope !1051
  %i.bu = getelementptr inbounds nuw i8, ptr %25, i64 8
  store ptr null, ptr %i.bu, align 8, !tbaa !327, !alias.scope !1051
  %i.bv = getelementptr inbounds nuw i8, ptr %25, i64 16
  store i64 %i.bi, ptr %i.bv, align 8, !tbaa !311, !alias.scope !1051
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bq, ptr noundef nonnull align 8 dereferenceable(1065) %i.bp, ptr noundef nonnull align 8 dereferenceable(32) %25) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #27
  br label %.thread298

.thread:                                          ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #27
  store ptr %.sroa.0105.0.copyload, ptr %37, align 8, !tbaa !322
  %i.bw = getelementptr inbounds nuw i8, ptr %37, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, i8 0, i64 24, i1 false)
  %i.bx = load ptr, ptr %i.y, align 8, !tbaa !324
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -640
  %i.bz = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.c, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %37, ptr noundef nonnull align 8 dereferenceable(32) %i.by, i32 %4) ; 2 uses
  %i.ca = extractvalue { ptr, ptr } %i.bz, 0
  %i.cb = extractvalue { ptr, ptr } %i.bz, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #27
  %i.cc = getelementptr inbounds nuw i8, ptr %24, i64 8
  store ptr null, ptr %i.cc, align 8, !tbaa !327, !alias.scope !1052
  %i.cd = getelementptr inbounds nuw i8, ptr %24, i64 4
  store i32 %i.k, ptr %i.cd, align 4, !tbaa !311, !alias.scope !1052
  %i.ce = getelementptr inbounds nuw i8, ptr %24, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, i8 0, i64 16, i1 false), !alias.scope !1052
  store i32 0, ptr %24, align 8, !alias.scope !1052
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.cb, ptr noundef nonnull align 8 dereferenceable(1065) %i.ca, ptr noundef nonnull align 8 dereferenceable(32) %24) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #27
  br label %.thread298

.thread298:                                       ; preds = %.thread297.a, %.thread296, %.thread
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %bb.k, label %bb.e

bb.e:                                             ; preds = %.thread298
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #27
  store ptr %.sroa.0105.0.copyload, ptr %38, align 8, !tbaa !322
  %i.cf = getelementptr inbounds nuw i8, ptr %38, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, i8 0, i64 24, i1 false)
  %i.cg = load ptr, ptr %i.y, align 8, !tbaa !324
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 -30688
  %i.ci = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.c, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef nonnull align 8 dereferenceable(32) %i.ch, i32 %i.k) ; 2 uses
  %i.cj = extractvalue { ptr, ptr } %i.ci, 0      ; 2 uses
  %i.ck = extractvalue { ptr, ptr } %i.ci, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #27
  %i.cl = getelementptr inbounds nuw i8, ptr %23, i64 8
  store ptr null, ptr %i.cl, align 8, !tbaa !327, !alias.scope !1053
  %i.cm = getelementptr inbounds nuw i8, ptr %23, i64 4
  store i32 %i.k, ptr %i.cm, align 4, !tbaa !311, !alias.scope !1053
  %i.cn = getelementptr inbounds nuw i8, ptr %23, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, i8 0, i64 16, i1 false), !alias.scope !1053
  store i32 0, ptr %23, align 8, !alias.scope !1053
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ck, ptr noundef nonnull align 8 dereferenceable(1065) %i.cj, ptr noundef nonnull align 8 dereferenceable(32) %23) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27
  %i.co = zext i32 %5 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #27
  store i32 1, ptr %22, align 8, !alias.scope !1054
  %i.cp = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr null, ptr %i.cp, align 8, !tbaa !327, !alias.scope !1054
  %i.cq = getelementptr inbounds nuw i8, ptr %22, i64 16
  store i64 %i.co, ptr %i.cq, align 8, !tbaa !311, !alias.scope !1054
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ck, ptr noundef nonnull align 8 dereferenceable(1065) %i.cj, ptr noundef nonnull align 8 dereferenceable(32) %22) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #27
  br label %bb.k

bb.f:                                             ; preds = %bb.a
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.0.0.copyload.i172 = load i8, ptr %i.cr, align 4, !tbaa !311
  %i.cs = tail call noundef i32 @_ZNK4llvm21HexagonTargetLowering17getStackProbeSizeERKNS_15MachineFunctionENS_5AlignE(ptr noundef nonnull align 8 dereferenceable(518456) %i.s, ptr noundef nonnull align 8 dereferenceable(1065) %2, i8 %.sroa.0.0.copyload.i172) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #27
  store ptr %.sroa.0105.0.copyload, ptr %39, align 8, !tbaa !322
  %i.ct = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ct, i8 0, i64 24, i1 false)
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !324
  %i.cw = getelementptr inbounds i8, ptr %i.cv, i64 -32672
  %i.cx = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.c, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %39, ptr noundef nonnull align 8 dereferenceable(32) %i.cw, i32 %i.k) ; 2 uses
  %i.cy = extractvalue { ptr, ptr } %i.cx, 0      ; 2 uses
  %i.cz = extractvalue { ptr, ptr } %i.cx, 1      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #27
  %i.da = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr null, ptr %i.da, align 8, !tbaa !327, !alias.scope !1055
  %i.db = getelementptr inbounds nuw i8, ptr %21, i64 4
  store i32 %4, ptr %i.db, align 4, !tbaa !311, !alias.scope !1055
  %i.dc = getelementptr inbounds nuw i8, ptr %21, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dc, i8 0, i64 16, i1 false), !alias.scope !1055
  store i32 0, ptr %21, align 8, !alias.scope !1055
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.cz, ptr noundef nonnull align 8 dereferenceable(1065) %i.cy, ptr noundef nonnull align 8 dereferenceable(32) %21) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #27
  %i.dd = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr null, ptr %i.dd, align 8, !tbaa !327, !alias.scope !1056
  %i.de = getelementptr inbounds nuw i8, ptr %20, i64 4
  store i32 %i.m, ptr %i.de, align 4, !tbaa !311, !alias.scope !1056
  %i.df = getelementptr inbounds nuw i8, ptr %20, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.df, i8 0, i64 16, i1 false), !alias.scope !1056
  store i32 0, ptr %20, align 8, !alias.scope !1056
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.cz, ptr noundef nonnull align 8 dereferenceable(1065) %i.cy, ptr noundef nonnull align 8 dereferenceable(32) %20) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #27
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cz, i64 44 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !305
  %i.di = and i32 %i.dh, 12
  %i.dj = or disjoint i32 %i.di, 1
  store i32 %i.dj, ptr %i.dg, align 4, !tbaa !305
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #27
  %i.dk = icmp ugt i32 %i.i, 8
  br i1 %i.dk, label %bb.g, label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_17MachineBasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #27
  store ptr %.sroa.0105.0.copyload, ptr %40, align 8, !tbaa !322
  %i.dl = getelementptr inbounds nuw i8, ptr %40, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dl, i8 0, i64 24, i1 false)
  %i.dm = load ptr, ptr %i.cu, align 8, !tbaa !324
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 -30912
  %i.do = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.c, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %40, ptr noundef nonnull align 8 dereferenceable(32) %i.dn, i32 %i.k) ; 2 uses
  %i.dp = extractvalue { ptr, ptr } %i.do, 0      ; 2 uses
  %i.dq = extractvalue { ptr, ptr } %i.do, 1      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #27
  %i.dr = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr null, ptr %i.dr, align 8, !tbaa !327, !alias.scope !1057
  %i.ds = getelementptr inbounds nuw i8, ptr %19, i64 4
  store i32 %i.k, ptr %i.ds, align 4, !tbaa !311, !alias.scope !1057
  %i.dt = getelementptr inbounds nuw i8, ptr %19, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dt, i8 0, i64 16, i1 false), !alias.scope !1057
  store i32 0, ptr %19, align 8, !alias.scope !1057
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.dq, ptr noundef nonnull align 8 dereferenceable(1065) %i.dp, ptr noundef nonnull align 8 dereferenceable(32) %19) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  %i.du = and i64 %i.h, 4294967295
  %i.dv = sub nsw i64 0, %i.du
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #27
  store i32 1, ptr %18, align 8, !alias.scope !1058
  %i.dw = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr null, ptr %i.dw, align 8, !tbaa !327, !alias.scope !1058
  %i.dx = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i64 %i.dv, ptr %i.dx, align 8, !tbaa !311, !alias.scope !1058
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.dq, ptr noundef nonnull align 8 dereferenceable(1065) %i.dp, ptr noundef nonnull align 8 dereferenceable(32) %18) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dq, i64 44 ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !305
  %i.ea = and i32 %i.dz, 12
  %i.eb = or disjoint i32 %i.ea, 1
  store i32 %i.eb, ptr %i.dy, align 4, !tbaa !305
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #27
  br label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_17MachineBasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit

_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_17MachineBasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit: ; preds = %bb.g, %bb.f
  %i.ec = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !212 ; 6 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !500
  %i.eg = call noundef ptr @_ZN4llvm15MachineFunction23CreateMachineBasicBlockEPKNS_10BasicBlockESt8optionalINS_10UniqueBBIDEE(ptr noundef nonnull align 8 dereferenceable(1065) %2, ptr noundef %i.ef, i64 undef, i8 0) #27 ; 16 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 296 ; 2 uses
  call void @_ZN4llvm21ilist_callback_traitsINS_17MachineBasicBlockEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.eh, ptr noundef %i.eg) #27
  %i.ei = load ptr, ptr %i.ed, align 8, !tbaa !501 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  store ptr %i.ed, ptr %i.ej, align 8, !tbaa !212
  store ptr %i.ei, ptr %i.eg, align 8, !tbaa !501
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store ptr %i.eg, ptr %i.ek, align 8, !tbaa !212
  store ptr %i.eg, ptr %i.ed, align 8, !tbaa !501
  %i.el = load ptr, ptr %i.ee, align 8, !tbaa !500
  %i.em = call noundef ptr @_ZN4llvm15MachineFunction23CreateMachineBasicBlockEPKNS_10BasicBlockESt8optionalINS_10UniqueBBIDEE(ptr noundef nonnull align 8 dereferenceable(1065) %2, ptr noundef %i.el, i64 undef, i8 0) #27 ; 14 uses
  call void @_ZN4llvm21ilist_callback_traitsINS_17MachineBasicBlockEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.eh, ptr noundef %i.em) #27
  %i.en = load ptr, ptr %i.ed, align 8, !tbaa !501 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store ptr %i.ed, ptr %i.eo, align 8, !tbaa !212
  store ptr %i.en, ptr %i.em, align 8, !tbaa !501
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store ptr %i.em, ptr %i.ep, align 8, !tbaa !212
  store ptr %i.em, ptr %i.ed, align 8, !tbaa !501
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !295 ; 7 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 6 uses
  %i.et = icmp eq ptr %i.er, %i.es
  %i.eu = icmp eq ptr %i.em, %i.c
  %or.cond.i.i = or i1 %i.eu, %i.et
  br i1 %or.cond.i.i, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit185, label %bb.h

bb.h:                                             ; preds = %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_17MachineBasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit
  %i.ev = getelementptr inbounds nuw i8, ptr %i.em, i64 48 ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ex = getelementptr inbounds nuw i8, ptr %i.em, i64 40
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE21transferNodesFromListERS2_NS_14ilist_iteratorINS_12ilist_detail12node_optionsIS1_Lb1ELb1EvLb0EvEELb0ELb0EEES8_(ptr noundef nonnull align 8 dereferenceable(24) %i.ex, ptr noundef nonnull align 8 dereferenceable(24) %i.ew, ptr %i.er, ptr nonnull %i.es) #27
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.es, align 8
  %i.ey = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.ez = inttoptr i64 %i.ey to ptr
  %.0.copyload.i.i.i.i20.i.i.i.i.i.i = load i64, ptr %i.er, align 8
  %i.fa = and i64 %.0.copyload.i.i.i.i20.i.i.i.i.i.i, -8
  %i.fb = inttoptr i64 %i.fa to ptr
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  store ptr %i.es, ptr %i.fc, align 8, !tbaa !295
  %.0.copyload.i.i.i.i21.i.i.i.i.i.i = load i64, ptr %i.er, align 8
  %i.fd = and i64 %.0.copyload.i.i.i.i21.i.i.i.i.i.i, -8
  %.0.copyload.i.i.i.i22.i.i.i.i.i.i = load i64, ptr %i.es, align 8
  %i.fe = and i64 %.0.copyload.i.i.i.i22.i.i.i.i.i.i, 7
  %i.ff = or disjoint i64 %i.fe, %i.fd
  store i64 %i.ff, ptr %i.es, align 8
  %.0.copyload.i.i.i.i23.i.i.i.i.i.i = load i64, ptr %i.ev, align 8
  %i.fg = and i64 %.0.copyload.i.i.i.i23.i.i.i.i.i.i, -8 ; 2 uses
  %i.fh = inttoptr i64 %i.fg to ptr
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  store ptr %i.ev, ptr %i.fi, align 8, !tbaa !295
  %.0.copyload.i.i.i.i24.i.i.i.i.i.i = load i64, ptr %i.er, align 8
  %i.fj = and i64 %.0.copyload.i.i.i.i24.i.i.i.i.i.i, 7
  %i.fk = or disjoint i64 %i.fj, %i.fg
  store i64 %i.fk, ptr %i.er, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  store ptr %i.er, ptr %i.fl, align 8, !tbaa !295
  %.0.copyload.i.i.i.i25.i.i.i.i.i.i = load i64, ptr %i.ev, align 8
  %i.fm = and i64 %.0.copyload.i.i.i.i25.i.i.i.i.i.i, 7
  %i.fn = or disjoint i64 %i.fm, %i.ey
  store i64 %i.fn, ptr %i.ev, align 8
  br label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit185

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit185: ; preds = %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_17MachineBasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit, %bb.h
  call void @_ZN4llvm17MachineBasicBlock31transferSuccessorsAndUpdatePHIsEPS0_(ptr noundef nonnull align 8 dereferenceable(360) %i.em, ptr noundef nonnull %i.c) #27
  %i.fo = getelementptr inbounds nuw i8, ptr %i.eg, i64 48 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #27
  store ptr %.sroa.0105.0.copyload, ptr %41, align 8, !tbaa !322
  %i.fp = getelementptr inbounds nuw i8, ptr %41, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fp, i8 0, i64 24, i1 false)
  %i.fq = load ptr, ptr %i.cu, align 8, !tbaa !324
  %i.fr = getelementptr inbounds i8, ptr %i.fq, i64 -30688
  %i.fs = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.eg, ptr nonnull %i.fo, ptr noundef nonnull align 8 dereferenceable(32) %41, ptr noundef nonnull align 8 dereferenceable(32) %i.fr, i32 147) ; 2 uses
  %i.ft = extractvalue { ptr, ptr } %i.fs, 0      ; 2 uses
  %i.fu = extractvalue { ptr, ptr } %i.fs, 1      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27
  %i.fv = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr null, ptr %i.fv, align 8, !tbaa !327, !alias.scope !1059
  %i.fw = getelementptr inbounds nuw i8, ptr %17, i64 4
  store i32 147, ptr %i.fw, align 4, !tbaa !311, !alias.scope !1059
  %i.fx = getelementptr inbounds nuw i8, ptr %17, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fx, i8 0, i64 16, i1 false), !alias.scope !1059
  store i32 0, ptr %17, align 8, !alias.scope !1059
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.fu, ptr noundef nonnull align 8 dereferenceable(1065) %i.ft, ptr noundef nonnull align 8 dereferenceable(32) %17) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  %i.fy = sub nsw i32 0, %i.cs
  %i.fz = sext i32 %i.fy to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  store i32 1, ptr %16, align 8, !alias.scope !1060
  %i.ga = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr null, ptr %i.ga, align 8, !tbaa !327, !alias.scope !1060
  %i.gb = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i64 %i.fz, ptr %i.gb, align 8, !tbaa !311, !alias.scope !1060
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.fu, ptr noundef nonnull align 8 dereferenceable(1065) %i.ft, ptr noundef nonnull align 8 dereferenceable(32) %16) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fu, i64 44 ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !305
  %i.ge = and i32 %i.gd, 12
  %i.gf = or disjoint i32 %i.ge, 1
  store i32 %i.gf, ptr %i.gc, align 4, !tbaa !305
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #27
  %i.gg = load ptr, ptr %i.cu, align 8, !tbaa !324
  %i.gh = getelementptr inbounds i8, ptr %i.gg, i64 -81152
  %i.gi = getelementptr inbounds nuw i8, ptr %i.eg, i64 32 ; 2 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !313 ; 4 uses
  %i.gk = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.gj, ptr noundef nonnull align 8 dereferenceable(32) %i.gh, ptr %.sroa.0105.0.copyload, i1 noundef zeroext false) #27 ; 10 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.eg, i64 40 ; 2 uses
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.gl, ptr noundef %i.gk) #27
  %.0.copyload.i.i.i.i.i.i.i.i.i.i175 = load i64, ptr %i.fo, align 8
  %i.gm = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i175, -8 ; 2 uses
  %i.gn = inttoptr i64 %i.gm to ptr
  %i.go = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  store ptr %i.fo, ptr %i.go, align 8, !tbaa !295
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i = load i64, ptr %i.gk, align 8
  %i.gp = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i, 7
  %i.gq = or disjoint i64 %i.gp, %i.gm
  store i64 %i.gq, ptr %i.gk, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  store ptr %i.gk, ptr %i.gr, align 8, !tbaa !295
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i = load i64, ptr %i.fo, align 8
  %i.gs = ptrtoint ptr %i.gk to i64
  %i.gt = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i, 7
  %i.gu = or disjoint i64 %i.gt, %i.gs
  store i64 %i.gu, ptr %i.fo, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  %i.gv = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr null, ptr %i.gv, align 8, !tbaa !327, !alias.scope !1061
  %i.gw = getelementptr inbounds nuw i8, ptr %15, i64 4
  store i32 147, ptr %i.gw, align 4, !tbaa !311, !alias.scope !1061
  %i.gx = getelementptr inbounds nuw i8, ptr %15, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gx, i8 0, i64 16, i1 false), !alias.scope !1061
  store i32 0, ptr %15, align 8, !alias.scope !1061
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.gk, ptr noundef nonnull align 8 dereferenceable(1065) %i.gj, ptr noundef nonnull align 8 dereferenceable(32) %15) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  store i32 1, ptr %14, align 8, !alias.scope !1062
  %i.gy = getelementptr inbounds nuw i8, ptr %14, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gy, i8 0, i64 16, i1 false)
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.gk, ptr noundef nonnull align 8 dereferenceable(1065) %i.gj, ptr noundef nonnull align 8 dereferenceable(32) %14) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  store i32 1, ptr %13, align 8, !alias.scope !1063
  %i.gz = getelementptr inbounds nuw i8, ptr %13, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gz, i8 0, i64 16, i1 false)
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.gk, ptr noundef nonnull align 8 dereferenceable(1065) %i.gj, ptr noundef nonnull align 8 dereferenceable(32) %13) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gk, i64 44 ; 2 uses
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !305
  %i.hc = and i32 %i.hb, 12
  %i.hd = or disjoint i32 %i.hc, 1
  store i32 %i.hd, ptr %i.ha, align 4, !tbaa !305
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #27
  store ptr %.sroa.0105.0.copyload, ptr %42, align 8, !tbaa !322
  %i.he = getelementptr inbounds nuw i8, ptr %42, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.he, i8 0, i64 24, i1 false)
  %i.hf = load ptr, ptr %i.cu, align 8, !tbaa !324
  %i.hg = getelementptr inbounds i8, ptr %i.hf, i64 -39424
  %i.hh = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.eg, ptr nonnull %i.fo, ptr noundef nonnull align 8 dereferenceable(32) %42, ptr noundef nonnull align 8 dereferenceable(32) %i.hg, i32 106) ; 2 uses
  %i.hi = extractvalue { ptr, ptr } %i.hh, 0      ; 2 uses
  %i.hj = extractvalue { ptr, ptr } %i.hh, 1      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  %i.hk = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr null, ptr %i.hk, align 8, !tbaa !327, !alias.scope !1064
  %i.hl = getelementptr inbounds nuw i8, ptr %12, i64 4
  store i32 147, ptr %i.hl, align 4, !tbaa !311, !alias.scope !1064
  %i.hm = getelementptr inbounds nuw i8, ptr %12, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hm, i8 0, i64 16, i1 false), !alias.scope !1064
  store i32 0, ptr %12, align 8, !alias.scope !1064
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.hj, ptr noundef nonnull align 8 dereferenceable(1065) %i.hi, ptr noundef nonnull align 8 dereferenceable(32) %12) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  %i.hn = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr null, ptr %i.hn, align 8, !tbaa !327, !alias.scope !1065
  %i.ho = getelementptr inbounds nuw i8, ptr %11, i64 4
  store i32 %i.k, ptr %i.ho, align 4, !tbaa !311, !alias.scope !1065
  %i.hp = getelementptr inbounds nuw i8, ptr %11, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hp, i8 0, i64 16, i1 false), !alias.scope !1065
  store i32 0, ptr %11, align 8, !alias.scope !1065
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.hj, ptr noundef nonnull align 8 dereferenceable(1065) %i.hi, ptr noundef nonnull align 8 dereferenceable(32) %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hj, i64 44 ; 2 uses
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !305
  %i.hs = and i32 %i.hr, 12
  %i.ht = or disjoint i32 %i.hs, 1
  store i32 %i.ht, ptr %i.hq, align 4, !tbaa !305
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #27
  %i.hu = load ptr, ptr %i.cu, align 8, !tbaa !324
  %i.hv = getelementptr inbounds i8, ptr %i.hu, i64 -44352
  %i.hw = load ptr, ptr %i.gi, align 8, !tbaa !313 ; 3 uses
  %i.hx = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.hw, ptr noundef nonnull align 8 dereferenceable(32) %i.hv, ptr %.sroa.0105.0.copyload, i1 noundef zeroext false) #27 ; 9 uses
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.gl, ptr noundef %i.hx) #27
  %.0.copyload.i.i.i.i.i.i.i.i.i.i177 = load i64, ptr %i.fo, align 8
  %i.hy = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i177, -8 ; 2 uses
  %i.hz = inttoptr i64 %i.hy to ptr
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
end_hunk_0
begin_hunk_1_@_ZNK4llvm20HexagonFrameLowering18optimizeSpillSlotsERNS_15MachineFunctionERNS_15SmallVectorImplINS_8RegisterEEE:bb.a
  %i.akl = getelementptr inbounds nuw i8, ptr %i.aim, i64 72
  %.sroa.046.0.copyload = load ptr, ptr %i.akl, align 8, !tbaa !322
  %i.akm = load ptr, ptr %i.zc, align 8, !tbaa !324
  %i.akn = getelementptr inbounds i8, ptr %i.akm, i64 -640
  %i.ako = load ptr, ptr %i.agd, align 8, !tbaa !313 ; 3 uses
  %i.akp = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.ako, ptr noundef nonnull align 8 dereferenceable(32) %i.akn, ptr %.sroa.046.0.copyload, i1 noundef zeroext false) #27 ; 9 uses
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.age, ptr noundef %i.akp) #27
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aim, align 8
  %i.akq = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.akr = inttoptr i64 %i.akq to ptr
  %i.aks = getelementptr inbounds nuw i8, ptr %i.akp, i64 8
  store ptr %i.aim, ptr %i.aks, align 8, !tbaa !295
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i = load i64, ptr %i.akp, align 8
  %i.akt = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i, 7
  %i.aku = or disjoint i64 %i.akt, %i.akq
  store i64 %i.aku, ptr %i.akp, align 8
  %i.akv = getelementptr inbounds nuw i8, ptr %i.akr, i64 8
  store ptr %i.akp, ptr %i.akv, align 8, !tbaa !295
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i = load i64, ptr %i.aim, align 8
  %i.akw = ptrtoint ptr %i.akp to i64
  %i.akx = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i, 7
  %i.aky = or disjoint i64 %i.akx, %i.akw
  store i64 %i.aky, ptr %i.aim, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr null, ptr %i.zd, align 8, !tbaa !327, !alias.scope !1441
  store i32 %.lcssa.i, ptr %i.ze, align 4, !tbaa !311, !alias.scope !1441
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.zf, i8 0, i64 16, i1 false), !alias.scope !1441
  store i32 16777216, ptr %5, align 8, !alias.scope !1441
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.akp, ptr noundef nonnull align 8 dereferenceable(1065) %i.ako, ptr noundef nonnull align 8 dereferenceable(32) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.akp, ptr noundef nonnull align 8 dereferenceable(1065) %i.ako, ptr noundef nonnull align 8 dereferenceable(32) %i.aiq) #27
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gt, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit
  %.0257 = phi ptr [ %i.akp, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit ], [ null, %bb.gt ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aim) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i564 = load i64, ptr %i.aim, align 8
  %i.akz = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i564, 4
  %.not.i.i.i565 = icmp eq i64 %i.akz, 0          ; 2 uses
  br i1 %.not.i.i.i565, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i567, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit572

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i567: ; preds = %bb.gu
  %i.ala = getelementptr inbounds nuw i8, ptr %i.aim, i64 44
  %i.alb = load i32, ptr %i.ala, align 4, !tbaa !305
  %i.alc = and i32 %i.alb, 8
  %.not34.i.i.i568 = icmp eq i32 %i.alc, 0
  br i1 %.not34.i.i.i568, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit572, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i569

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i569: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i567, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i569
  %.sroa.0.05.i.i.i570 = phi ptr [ %i.ale, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i569 ], [ %i.aim, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i567 ]
  %i.ald = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i570, i64 8
  %i.ale = load ptr, ptr %i.ald, align 8, !tbaa !295 ; 3 uses
  %i.alf = getelementptr inbounds nuw i8, ptr %i.ale, i64 44
  %i.alg = load i32, ptr %i.alf, align 4, !tbaa !305
  %i.alh = and i32 %i.alg, 8
  %.not3.i.i.i571 = icmp eq i32 %i.alh, 0
  br i1 %.not3.i.i.i571, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit572, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i569, !llvm.loop !4

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit572: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i569, %bb.gu, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i567
  %.sroa.0.1.i.i.i566 = phi ptr [ %i.aim, %bb.gu ], [ %i.aim, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i567 ], [ %i.ale, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i569 ]
  %i.ali = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i566, i64 8
  %i.alj = load ptr, ptr %i.ali, align 8, !tbaa !295 ; 2 uses
  %i.alk = load i64, ptr %i.bh, align 8, !tbaa !654
  %i.all = icmp eq i64 %i.alk, 0
  br i1 %i.all, label %bb.gv, label %bb.gx

bb.gv:                                            ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit572
  %i.alm = load ptr, ptr %21, align 8, !tbaa !46  ; 3 uses
  %i.aln = load i32, ptr %i.bb, align 8, !tbaa !203 ; 2 uses
  %i.alo = zext i32 %i.aln to i64                 ; 2 uses
  %.idx.i.i.i584 = shl nuw nsw i64 %i.alo, 2
  %i.alp = getelementptr inbounds nuw i8, ptr %i.alm, i64 %.idx.i.i.i584 ; 3 uses
  %.not11.i.i.i585 = icmp eq i32 %i.aln, 0
  br i1 %.not11.i.i.i585, label %_ZNK4llvm8SmallSetIiLj4ESt4lessIiEE5vfindERKi.exit.i.i589, label %.lr.ph.i.i.i586

.lr.ph.i.i.i586:                                  ; preds = %bb.gv, %bb.gw
  %.0812.i.i.i587 = phi ptr [ %i.als, %bb.gw ], [ %i.alm, %bb.gv ] ; 3 uses
  %i.alq = load i32, ptr %.0812.i.i.i587, align 4, !tbaa !196
  %i.alr = icmp eq i32 %i.alq, %i.agi
  br i1 %i.alr, label %_ZNK4llvm8SmallSetIiLj4ESt4lessIiEE5vfindERKi.exit.i.i589, label %bb.gw

bb.gw:                                            ; preds = %.lr.ph.i.i.i586
  %i.als = getelementptr inbounds nuw i8, ptr %.0812.i.i.i587, i64 4 ; 2 uses
  %.not.i.i.i588 = icmp eq ptr %i.als, %i.alp
  br i1 %.not.i.i.i588, label %_ZNK4llvm8SmallSetIiLj4ESt4lessIiEE5vfindERKi.exit.i.i589, label %.lr.ph.i.i.i586, !llvm.loop !12

_ZNK4llvm8SmallSetIiLj4ESt4lessIiEE5vfindERKi.exit.i.i589: ; preds = %bb.gw, %.lr.ph.i.i.i586, %bb.gv
  %.1.i.i.i590 = phi ptr [ %i.alp, %bb.gv ], [ %.0812.i.i.i587, %.lr.ph.i.i.i586 ], [ %i.alp, %bb.gw ]
  %i.alt = getelementptr inbounds nuw [4 x i8], ptr %i.alm, i64 %i.alo
  %.not1509 = icmp eq ptr %.1.i.i.i590, %i.alt
  br i1 %.not1509, label %_ZNK4llvm8SmallSetIiLj4ESt4lessIiEE5countERKi.exit591.thread, label %bb.gy

bb.gx:                                            ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit572
  %i.alu = load ptr, ptr %i.be, align 8, !tbaa !651 ; 2 uses
  %.not10.i.i.i.i.i573 = icmp eq ptr %i.alu, null
  br i1 %.not10.i.i.i.i.i573, label %_ZNK4llvm8SmallSetIiLj4ESt4lessIiEE5countERKi.exit591.thread, label %.lr.ph.i.i.i.i.i574

.lr.ph.i.i.i.i.i574:                              ; preds = %bb.gx, %.lr.ph.i.i.i.i.i574
  %.012.i.i.i.i.i575 = phi ptr [ %.1.i.i.i.i.i580, %.lr.ph.i.i.i.i.i574 ], [ %i.alu, %bb.gx ] ; 4 uses
  %.0811.i.i.i.i.i576 = phi ptr [ %.19.i.i.i.i.i577, %.lr.ph.i.i.i.i.i574 ], [ %i.bd, %bb.gx ] ; 2 uses
  %i.alv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i575, i64 32
  %i.alw = load i32, ptr %i.alv, align 4, !tbaa !196
  %i.alx = icmp slt i32 %i.alw, %i.agi            ; 3 uses
  %.19.i.i.i.i.i577 = select i1 %i.alx, ptr %.0811.i.i.i.i.i576, ptr %.012.i.i.i.i.i575 ; 2 uses
  %.1.in.v.i.i.i.i.i578 = select i1 %i.alx, i64 24, i64 16
  %.1.in.i.i.i.i.i579 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i575, i64 %.1.in.v.i.i.i.i.i578
  %.1.i.i.i.i.i580 = load ptr, ptr %.1.in.i.i.i.i.i579, align 8, !tbaa !655 ; 2 uses
  %.not.i.i.i.i.i581 = icmp eq ptr %.1.i.i.i.i.i580, null
  br i1 %.not.i.i.i.i.i581, label %_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i.i.i582, label %.lr.ph.i.i.i.i.i574, !llvm.loop !1370

_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i.i.i582: ; preds = %.lr.ph.i.i.i.i.i574
  %i.aly = icmp eq ptr %.19.i.i.i.i.i577, %i.bd
  br i1 %i.aly, label %_ZNK4llvm8SmallSetIiLj4ESt4lessIiEE5countERKi.exit591.thread, label %_ZNK4llvm8SmallSetIiLj4ESt4lessIiEE5countERKi.exit591

_ZNK4llvm8SmallSetIiLj4ESt4lessIiEE5countERKi.exit591: ; preds = %_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i.i.i582
  %.19.i.i.i.i.i577.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.alx, ptr %.0811.i.i.i.i.i576, ptr %.012.i.i.i.i.i575
  %.19.i.i.i.i.i577.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i577.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.alz = load i32, ptr %.19.i.i.i.i.i577.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !196
  %.not1508 = icmp slt i32 %i.agi, %i.alz
  br i1 %.not1508, label %_ZNK4llvm8SmallSetIiLj4ESt4lessIiEE5countERKi.exit591.thread, label %bb.gy

bb.gy:                                            ; preds = %_ZNK4llvm8SmallSetIiLj4ESt4lessIiEE5vfindERKi.exit.i.i589, %_ZNK4llvm8SmallSetIiLj4ESt4lessIiEE5countERKi.exit591
  %i.ama = load ptr, ptr %i.aih, align 8, !tbaa !677
  %i.amb = getelementptr inbounds i8, ptr %i.ama, i64 -12
  %i.amc = icmp eq ptr %.sroa.0886.01196, %i.amb
  br i1 %i.amc, label %bb.gz, label %_ZNK4llvm8SmallSetIiLj4ESt4lessIiEE5countERKi.exit591.thread

bb.gz:                                            ; preds = %bb.gy
  %i.amd = load i32, ptr %i.aiq, align 8
  %i.ame = lshr i32 %i.amd, 8
  %i.amf = and i32 %i.ame, 4095                   ; 2 uses
  %.not266 = icmp eq i32 %i.amf, 0
  br i1 %.not266, label %bb.hb, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.amg = call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %i.r, i32 %.lcssa.i, i32 noundef %i.amf) #27
  br label %bb.hb

bb.hb:                                            ; preds = %bb.gz, %bb.ha
  %.lcssa.i.sink = phi i32 [ %i.amg, %bb.ha ], [ %.lcssa.i, %bb.gz ]
  call void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32) %i.aiq, i32 %.lcssa.i.sink) #27
  %i.amh = load i32, ptr %i.aiq, align 8
  %i.ami = and i32 %i.amh, -68157185
  store i32 %i.ami, ptr %i.aiq, align 8
  br label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.preheader

_ZNK4llvm8SmallSetIiLj4ESt4lessIiEE5countERKi.exit591.thread: ; preds = %_ZNK4llvm8SmallSetIiLj4ESt4lessIiEE5vfindERKi.exit.i.i589, %_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i.i.i582, %bb.gx, %bb.gy, %_ZNK4llvm8SmallSetIiLj4ESt4lessIiEE5countERKi.exit591
  br i1 %.not.i.i.i565, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i: ; preds = %_ZNK4llvm8SmallSetIiLj4ESt4lessIiEE5countERKi.exit591.thread
  %i.amj = getelementptr inbounds nuw i8, ptr %i.aim, i64 44
  %i.amk = load i32, ptr %i.amj, align 4, !tbaa !305
  %i.aml = and i32 %i.amk, 8
  %.not34.i.i.i.i.i.i = icmp eq i32 %i.aml, 0
  br i1 %.not34.i.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i
  %.sroa.0.05.i.i.i.i.i.i = phi ptr [ %i.amn, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i ], [ %i.aim, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i ]
  %i.amm = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i.i, i64 8
  %i.amn = load ptr, ptr %i.amm, align 8, !tbaa !295 ; 3 uses
  %i.amo = getelementptr inbounds nuw i8, ptr %i.amn, i64 44
  %i.amp = load i32, ptr %i.amo, align 4, !tbaa !305
  %i.amq = and i32 %i.amp, 8
  %.not3.i.i.i.i.i.i = icmp eq i32 %i.amq, 0
  br i1 %.not3.i.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i, !llvm.loop !4

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i, %_ZNK4llvm8SmallSetIiLj4ESt4lessIiEE5countERKi.exit591.thread
  %.sroa.0.1.i.i.i.i.i.i = phi ptr [ %i.aim, %_ZNK4llvm8SmallSetIiLj4ESt4lessIiEE5countERKi.exit591.thread ], [ %i.aim, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i ], [ %i.amn, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i ]
  %i.amr = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i.i, i64 8
  %i.ams = load ptr, ptr %i.amr, align 8, !tbaa !295 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.aim, %i.ams
  br i1 %.not4.i.i.i.i, label %_ZN4llvm17MachineBasicBlock5eraseEPNS_12MachineInstrE.exit, label %.lr.ph.i.i.i.i592

.lr.ph.i.i.i.i592:                                ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i.i, %.lr.ph.i.i.i.i592
  %.sroa.03.05.i.i.i.i = phi ptr [ %i.amu, %.lr.ph.i.i.i.i592 ], [ %i.aim, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i.i ] ; 6 uses
  %i.amt = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 8 ; 3 uses
  %i.amu = load ptr, ptr %i.amt, align 8, !tbaa !295 ; 2 uses
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE18removeNodeFromListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.age, ptr noundef nonnull %.sroa.03.05.i.i.i.i) #27
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.03.05.i.i.i.i, align 8
  %i.amv = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.amw = inttoptr i64 %i.amv to ptr
  %i.amx = load ptr, ptr %i.amt, align 8, !tbaa !295 ; 3 uses
  %.0.copyload.i.i.i.i8.i.i.i.i.i.i.i.i.i = load i64, ptr %i.amx, align 8
  %i.amy = and i64 %.0.copyload.i.i.i.i8.i.i.i.i.i.i.i.i.i, 7
  %i.amz = or disjoint i64 %i.amy, %i.amv
  store i64 %i.amz, ptr %i.amx, align 8
  %i.ana = getelementptr inbounds nuw i8, ptr %i.amw, i64 8
  store ptr %i.amx, ptr %i.ana, align 8, !tbaa !295
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.03.05.i.i.i.i, align 8
  %i.anb = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i.i.i, 7
  store i64 %i.anb, ptr %.sroa.03.05.i.i.i.i, align 8
  store ptr null, ptr %i.amt, align 8, !tbaa !295
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE10deleteNodeEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.age, ptr noundef nonnull %.sroa.03.05.i.i.i.i) #27
  %.not.i.i.i.i593 = icmp eq ptr %i.amu, %i.ams
  br i1 %.not.i.i.i.i593, label %_ZN4llvm17MachineBasicBlock5eraseEPNS_12MachineInstrE.exit, label %.lr.ph.i.i.i.i592, !llvm.loop !9

_ZN4llvm17MachineBasicBlock5eraseEPNS_12MachineInstrE.exit: ; preds = %.lr.ph.i.i.i.i592, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i.i
  call void @_ZN4llvm18HexagonBlockRanges13InstrIndexMap12replaceInstrEPNS_12MachineInstrES3_(ptr noundef nonnull align 8 dereferenceable(64) %i.afq, ptr noundef nonnull %i.aim, ptr noundef %.0257) #27
  br label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.preheader

_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.preheader: ; preds = %_ZN4llvm17MachineBasicBlock5eraseEPNS_12MachineInstrE.exit, %bb.hb
  %i.anc = getelementptr inbounds nuw i8, ptr %i.ain, i64 8
  %i.and = load ptr, ptr %i.anc, align 8, !tbaa !295 ; 2 uses
  %.not10711188 = icmp eq ptr %i.alj, %i.and
  br i1 %.not10711188, label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit._crit_edge, label %.preheader

.preheader:                                       ; preds = %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.preheader, %_ZN4llvm17MachineBasicBlock5eraseENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit
  %storemerge.in.sroa.speculated.in1189 = phi ptr [ %i.anp, %_ZN4llvm17MachineBasicBlock5eraseENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit ], [ %i.alj, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.preheader ] ; 24 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i594 = load i64, ptr %storemerge.in.sroa.speculated.in1189, align 8
  %i.ane = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i594, 4
  %.not.i.i.i.i595 = icmp eq i64 %i.ane, 0
  br i1 %.not.i.i.i.i595, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i

_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit._crit_edge: ; preds = %_ZN4llvm17MachineBasicBlock5eraseENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #27
  call void @_ZN4llvm18HexagonBlockRanges15expandToSubRegsENS0_11RegisterRefERKNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoE(ptr dead_on_unwind nonnull writable sret(%"class.std::set") align 8 %26, i64 %.sroa.04.0.insert.ext.i, ptr noundef nonnull align 8 dereferenceable(520) %i.t, ptr noundef nonnull align 8 dereferenceable(316) %i.r) #27
  %i.anf = load ptr, ptr %i.zm, align 8, !tbaa !652 ; 2 uses
  %.not10721190 = icmp eq ptr %i.anf, %i.zn
  br i1 %.not10721190, label %._crit_edge1194, label %.lr.ph1193

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i: ; preds = %.preheader
  %i.ang = getelementptr inbounds nuw i8, ptr %storemerge.in.sroa.speculated.in1189, i64 44
  %i.anh = load i32, ptr %i.ang, align 4, !tbaa !305
  %i.ani = and i32 %i.anh, 8
  %.not34.i.i.i.i = icmp eq i32 %i.ani, 0
  br i1 %.not34.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i
  %.sroa.0.05.i.i.i.i = phi ptr [ %i.ank, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i ], [ %storemerge.in.sroa.speculated.in1189, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i ]
  %i.anj = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 8
  %i.ank = load ptr, ptr %i.anj, align 8, !tbaa !295 ; 3 uses
  %i.anl = getelementptr inbounds nuw i8, ptr %i.ank, i64 44
  %i.anm = load i32, ptr %i.anl, align 4, !tbaa !305
  %i.ann = and i32 %i.anm, 8
  %.not3.i.i.i.i = icmp eq i32 %i.ann, 0
  br i1 %.not3.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i, !llvm.loop !4

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, %.preheader
  %.sroa.0.1.i.i.i.i = phi ptr [ %storemerge.in.sroa.speculated.in1189, %.preheader ], [ %storemerge.in.sroa.speculated.in1189, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i ], [ %i.ank, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i ]
  %i.ano = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i, i64 8
  %i.anp = load ptr, ptr %i.ano, align 8, !tbaa !295 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #27
  %i.anq = load ptr, ptr %i.n, align 8, !tbaa !34
  %i.anr = getelementptr inbounds nuw i8, ptr %i.anq, i64 88
  %i.ans = load ptr, ptr %i.anr, align 8
  %i.ant = call i32 %i.ans(ptr noundef nonnull align 8 dereferenceable(440) %i.n, ptr noundef nonnull align 8 dereferenceable(80) %storemerge.in.sroa.speculated.in1189, ptr noundef nonnull align 4 dereferenceable(4) %i.h) #27
  %.not267 = icmp eq i32 %i.ant, 0
  %i.anu = load i32, ptr %i.h, align 4
  %i.anv = icmp ne i32 %i.anu, %i.agi
  %i.anw = select i1 %.not267, i1 true, i1 %i.anv
  br i1 %i.anw, label %_ZN4llvm17MachineBasicBlock5eraseENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit, label %bb.hc

bb.hc:                                            ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i
  %i.anx = getelementptr inbounds nuw i8, ptr %storemerge.in.sroa.speculated.in1189, i64 32
  %i.any = load ptr, ptr %i.anx, align 8, !tbaa !310
  %i.anz = getelementptr inbounds nuw i8, ptr %i.any, i64 4
  %i.aoa = load i32, ptr %i.anz, align 4, !tbaa !311 ; 2 uses
  %.not1073 = icmp eq i32 %i.aoa, %.lcssa.i
  br i1 %.not1073, label %bb.hh, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.aob = getelementptr inbounds nuw i8, ptr %storemerge.in.sroa.speculated.in1189, i64 72
  %.sroa.026.0.copyload = load ptr, ptr %i.aob, align 8, !tbaa !322
  %i.aoc = call noundef i32 @_ZNK4llvm16HexagonInstrInfo16getMemAccessSizeERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(440) %i.n, ptr noundef nonnull align 8 dereferenceable(80) %storemerge.in.sroa.speculated.in1189) #27 ; 2 uses
  %i.aod = call noundef zeroext i1 @_ZNK4llvm16HexagonInstrInfo19isSignExtendingLoadERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(440) %i.n, ptr noundef nonnull align 8 dereferenceable(80) %storemerge.in.sroa.speculated.in1189) #27
  br i1 %i.aod, label %bb.he, label %bb.hf

bb.he:                                            ; preds = %bb.hd
  %i.aoe = icmp eq i32 %i.aoc, 1
  %.neg = select i1 %i.aoe, i64 -1047, i64 -1048
  br label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit606

bb.hf:                                            ; preds = %bb.hd
  %i.aof = call noundef zeroext i1 @_ZNK4llvm16HexagonInstrInfo19isZeroExtendingLoadERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(440) %i.n, ptr noundef nonnull align 8 dereferenceable(80) %storemerge.in.sroa.speculated.in1189) #27
  br i1 %i.aof, label %bb.hg, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit606

bb.hg:                                            ; preds = %bb.hf
  %i.aog = icmp eq i32 %i.aoc, 1
  %.neg1074 = select i1 %i.aog, i64 -347, i64 -1119
  br label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit606

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit606: ; preds = %bb.he, %bb.hg, %bb.hf
  %.0249.neg = phi i64 [ %.neg, %bb.he ], [ %.neg1074, %bb.hg ], [ -20, %bb.hf ]
  %i.aoh = load ptr, ptr %i.zc, align 8, !tbaa !324
  %i.aoi = getelementptr inbounds [32 x i8], ptr %i.aoh, i64 %.0249.neg
  %i.aoj = load ptr, ptr %i.agd, align 8, !tbaa !313 ; 3 uses
  %i.aok = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.aoj, ptr noundef nonnull align 8 dereferenceable(32) %i.aoi, ptr %.sroa.026.0.copyload, i1 noundef zeroext false) #27 ; 9 uses
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.age, ptr noundef %i.aok) #27
  %.0.copyload.i.i.i.i.i.i.i.i.i.i598 = load i64, ptr %storemerge.in.sroa.speculated.in1189, align 8
  %i.aol = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i598, -8 ; 2 uses
  %i.aom = inttoptr i64 %i.aol to ptr
  %i.aon = getelementptr inbounds nuw i8, ptr %i.aok, i64 8
  store ptr %storemerge.in.sroa.speculated.in1189, ptr %i.aon, align 8, !tbaa !295
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i599 = load i64, ptr %i.aok, align 8
  %i.aoo = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i599, 7
  %i.aop = or disjoint i64 %i.aoo, %i.aol
  store i64 %i.aop, ptr %i.aok, align 8
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.aom, i64 8
  store ptr %i.aok, ptr %i.aoq, align 8, !tbaa !295
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i600 = load i64, ptr %storemerge.in.sroa.speculated.in1189, align 8
  %i.aor = ptrtoint ptr %i.aok to i64
  %i.aos = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i600, 7
  %i.aot = or disjoint i64 %i.aos, %i.aor
  store i64 %i.aot, ptr %storemerge.in.sroa.speculated.in1189, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr null, ptr %i.zg, align 8, !tbaa !327, !alias.scope !1442
  store i32 %i.aoa, ptr %i.zh, align 4, !tbaa !311, !alias.scope !1442
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.zi, i8 0, i64 16, i1 false), !alias.scope !1442
  store i32 16777216, ptr %4, align 8, !alias.scope !1442
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.aok, ptr noundef nonnull align 8 dereferenceable(1065) %i.aoj, ptr noundef nonnull align 8 dereferenceable(32) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %.not1075 = icmp eq ptr %storemerge.in.sroa.speculated.in1189, %i.ain
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr null, ptr %i.zj, align 8, !tbaa !327, !alias.scope !1443
  %i.aou = select i1 %.not1075, i32 67108864, i32 0
  store i32 %.lcssa.i, ptr %i.zk, align 4, !tbaa !311, !alias.scope !1443
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.zl, i8 0, i64 16, i1 false), !alias.scope !1443
  store i32 %i.aou, ptr %3, align 8, !alias.scope !1443
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.aok, ptr noundef nonnull align 8 dereferenceable(1065) %i.aoj, ptr noundef nonnull align 8 dereferenceable(32) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.hh

bb.hh:                                            ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit606, %bb.hc
  %.0250 = phi ptr [ %i.aok, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit606 ], [ null, %bb.hc ]
  call void @_ZN4llvm18HexagonBlockRanges13InstrIndexMap12replaceInstrEPNS_12MachineInstrES3_(ptr noundef nonnull align 8 dereferenceable(64) %i.afq, ptr noundef nonnull %storemerge.in.sroa.speculated.in1189, ptr noundef %.0250) #27
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %storemerge.in.sroa.speculated.in1189, align 8
  %i.aov = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i.i608 = icmp eq i64 %i.aov, 0
  br i1 %.not.i.i.i.i.i608, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i: ; preds = %bb.hh
  %i.aow = getelementptr inbounds nuw i8, ptr %storemerge.in.sroa.speculated.in1189, i64 44
  %i.aox = load i32, ptr %i.aow, align 4, !tbaa !305
  %i.aoy = and i32 %i.aox, 8
  %.not34.i.i.i.i.i = icmp eq i32 %i.aoy, 0
  br i1 %.not34.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i
  %.sroa.0.05.i.i.i.i.i = phi ptr [ %i.apa, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i ], [ %storemerge.in.sroa.speculated.in1189, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i ]
  %i.aoz = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i, i64 8
  %i.apa = load ptr, ptr %i.aoz, align 8, !tbaa !295 ; 3 uses
  %i.apb = getelementptr inbounds nuw i8, ptr %i.apa, i64 44
  %i.apc = load i32, ptr %i.apb, align 4, !tbaa !305
  %i.apd = and i32 %i.apc, 8
  %.not3.i.i.i.i.i = icmp eq i32 %i.apd, 0
  br i1 %.not3.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i, !llvm.loop !4

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, %bb.hh
  %.sroa.0.1.i.i.i.i.i = phi ptr [ %storemerge.in.sroa.speculated.in1189, %bb.hh ], [ %storemerge.in.sroa.speculated.in1189, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i ], [ %i.apa, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i ]
  %i.ape = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i, i64 8
  %i.apf = load ptr, ptr %i.ape, align 8, !tbaa !295 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %storemerge.in.sroa.speculated.in1189, %i.apf
  br i1 %.not4.i.i.i, label %_ZN4llvm17MachineBasicBlock5eraseENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit, label %.lr.ph.i.i.i609

.lr.ph.i.i.i609:                                  ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i, %.lr.ph.i.i.i609
  %.sroa.03.05.i.i.i = phi ptr [ %i.aph, %.lr.ph.i.i.i609 ], [ %storemerge.in.sroa.speculated.in1189, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i ] ; 6 uses
  %i.apg = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i, i64 8 ; 3 uses
  %i.aph = load ptr, ptr %i.apg, align 8, !tbaa !295 ; 2 uses
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE18removeNodeFromListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.age, ptr noundef nonnull %.sroa.03.05.i.i.i) #27
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i610 = load i64, ptr %.sroa.03.05.i.i.i, align 8
  %i.api = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i610, -8 ; 2 uses
  %i.apj = inttoptr i64 %i.api to ptr
  %i.apk = load ptr, ptr %i.apg, align 8, !tbaa !295 ; 3 uses
  %.0.copyload.i.i.i.i8.i.i.i.i.i.i.i.i = load i64, ptr %i.apk, align 8
  %i.apl = and i64 %.0.copyload.i.i.i.i8.i.i.i.i.i.i.i.i, 7
  %i.apm = or disjoint i64 %i.apl, %i.api
  store i64 %i.apm, ptr %i.apk, align 8
  %i.apn = getelementptr inbounds nuw i8, ptr %i.apj, i64 8
  store ptr %i.apk, ptr %i.apn, align 8, !tbaa !295
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.03.05.i.i.i, align 8
  %i.apo = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i.i, 7
  store i64 %i.apo, ptr %.sroa.03.05.i.i.i, align 8
  store ptr null, ptr %i.apg, align 8, !tbaa !295
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE10deleteNodeEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.age, ptr noundef nonnull %.sroa.03.05.i.i.i) #27
  %.not.i.i.i611 = icmp eq ptr %i.aph, %i.apf
  br i1 %.not.i.i.i611, label %_ZN4llvm17MachineBasicBlock5eraseENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit, label %.lr.ph.i.i.i609, !llvm.loop !9

_ZN4llvm17MachineBasicBlock5eraseENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit: ; preds = %.lr.ph.i.i.i609, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #27
  %.not1071 = icmp eq ptr %i.anp, %i.and
  br i1 %.not1071, label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit._crit_edge, label %.preheader, !llvm.loop !1401

._crit_edge1194:                                  ; preds = %_ZNSt3mapIN4llvm18HexagonBlockRanges11RegisterRefENS1_9RangeListESt4lessIS2_ESaISt4pairIKS2_S3_EEEixERS7_.exit, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit._crit_edge
  %i.app = load ptr, ptr %i.zp, align 8, !tbaa !651
  call void @_ZNSt8_Rb_treeIN4llvm18HexagonBlockRanges11RegisterRefES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %26, ptr noundef %i.app)
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #27
  br label %_ZNK4llvm20HexagonFrameLowering11findPhysRegERNS_15MachineFunctionERNS_18HexagonBlockRanges10IndexRangeERNS3_13InstrIndexMapERSt3mapINS3_11RegisterRefENS3_9RangeListESt4lessIS9_ESaISt4pairIKS9_SA_EEEPKNS_15MCRegisterClassE.exit.thread

.lr.ph1193:                                       ; preds = %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit._crit_edge, %_ZNSt3mapIN4llvm18HexagonBlockRanges11RegisterRefENS1_9RangeListESt4lessIS2_ESaISt4pairIKS2_S3_EEEixERS7_.exit
  %.sroa.0852.01191 = phi ptr [ %i.are, %_ZNSt3mapIN4llvm18HexagonBlockRanges11RegisterRefENS1_9RangeListESt4lessIS2_ESaISt4pairIKS2_S3_EEEixERS7_.exit ], [ %i.anf, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit._crit_edge ] ; 2 uses
  %i.apq = getelementptr inbounds nuw i8, ptr %.sroa.0852.01191, i64 32
  %i.apr = load i64, ptr %i.apq, align 4          ; 3 uses
  %i.aps = load ptr, ptr %i.yz, align 8, !tbaa !651 ; 2 uses
  %.not11.i.i.i.i = icmp eq ptr %i.aps, null
  br i1 %.not11.i.i.i.i, label %.critedge.i621, label %.lr.ph.i.i.i.i612

.lr.ph.i.i.i.i612:                                ; preds = %.lr.ph1193
  %.sroa.0.0.extract.trunc.i.i.i.i.i.i614 = trunc i64 %i.apr to i32 ; 4 uses
  %.sroa.2.0.extract.shift.i.i.i.i.i.i = lshr i64 %i.apr, 32 ; 2 uses
  %.sroa.2.0.extract.trunc.i.i.i.i.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i.i.i.i.i to i32
  br label %bb.hi
end_hunk_1
