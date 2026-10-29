Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AVRISelDAGToDAG?download=true
inline.NumInlined: 845
inline.NumDeleted: 416
begin_hunk_0_@_ZN12_GLOBAL__N_115AVRDAGToDAGISel6SelectEPN4llvm6SDNodeE:bb.a
bb.f:                                             ; preds = %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #18
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !322
  store i64 %i.co, ptr %41, align 8, !tbaa !322
  %i.cp = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !323
  store i32 %i.cr, ptr %i.cp, align 8, !tbaa !325
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !329
  %.sroa.0.0.copyload.i.i.i.i = load i16, ptr %i.ct, align 8, !tbaa !331 ; 4 uses
  %i.cu = icmp eq i32 %i.d, 66
  %i.cv = select i1 %i.cu, i32 487, i32 486
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !326 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 40
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 7 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !202
  %i.db = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.da, i32 noundef %i.cv, ptr noundef nonnull align 8 dereferenceable(12) %41, i16 249, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.cx, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.cy) #18 ; 3 uses
  %i.dc = load ptr, ptr %i.cz, align 8, !tbaa !202
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 288 ; 2 uses
  %i.de = call noundef zeroext i1 @_ZNK4llvm6SDNode16hasAnyUseOfValueEj(ptr noundef nonnull align 8 dereferenceable(88) %1, i32 noundef 0) #18
  br i1 %i.de, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.df = load ptr, ptr %i.cz, align 8, !tbaa !202 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %38)
  call void @llvm.lifetime.start.p0(ptr nonnull %40)
  store i16 249, ptr %38, align 8, !tbaa !455
  %i.dg = getelementptr inbounds nuw i8, ptr %38, i64 8
  store ptr null, ptr %i.dg, align 8, !tbaa !457
  %i.dh = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_S1_(ptr noundef nonnull align 8 dereferenceable(920) %i.df, i16 %.sroa.0.0.copyload.i.i.i.i, ptr null, i16 1, ptr null, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %38) #18 ; 2 uses
  %i.di = extractvalue { ptr, i32 } %i.dh, 0
  %i.dj = extractvalue { ptr, i32 } %i.dh, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #18
  store ptr %i.dd, ptr %39, align 16, !tbaa !320
  %.sroa.218.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %39, i64 8
  store i32 0, ptr %.sroa.218.0..sroa_idx.i.i.i, align 8, !tbaa !321
  %i.dk = getelementptr inbounds nuw i8, ptr %39, i64 16
  %i.dl = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.df, i32 5, i16 %.sroa.0.0.copyload.i.i.i.i, ptr null) #18 ; 2 uses
  %.fca.0.extract3.i.i.i = extractvalue { ptr, i32 } %i.dl, 0
  %.fca.1.extract4.i.i.i = extractvalue { ptr, i32 } %i.dl, 1
  store ptr %.fca.0.extract3.i.i.i, ptr %i.dk, align 16
  %.sroa.26.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %39, i64 24
  store i32 %.fca.1.extract4.i.i.i, ptr %.sroa.26.0..sroa_idx.i.i.i, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %39, i64 32
  store ptr %i.db, ptr %i.dm, align 16, !tbaa !320
  %.sroa.5112.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %39, i64 40
  store i32 0, ptr %.sroa.5112.0..sroa_idx.i.i, align 8, !tbaa !321
  %.not.i.i.i = icmp eq ptr %i.db, null
  %i.dn = select i1 %.not.i.i.i, i64 2, i64 3
  store ptr %39, ptr %40, align 8, !tbaa !336
  %i.do = getelementptr inbounds nuw i8, ptr %40, i64 8
  store i64 %i.dn, ptr %i.do, align 8, !tbaa !337
  %i.dp = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.df, i32 noundef 52, ptr noundef nonnull align 8 dereferenceable(12) %41, ptr %i.di, i32 %i.dj, ptr noundef nonnull byval(%"class.llvm::ArrayRef.180") align 8 %40) #18 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %38)
  call void @llvm.lifetime.end.p0(ptr nonnull %40)
  %.fca.0.extract36.i.i = extractvalue { ptr, i32 } %i.dp, 0 ; 4 uses
  %.fca.1.extract37.i.i = extractvalue { ptr, i32 } %i.dp, 1
  %i.dq = load ptr, ptr %i.cz, align 8, !tbaa !202
  call void @_ZN4llvm12SelectionDAG25ReplaceAllUsesOfValueWithENS_7SDValueES1_(ptr noundef nonnull align 8 dereferenceable(920) %i.dq, ptr nonnull %1, i32 0, ptr %.fca.0.extract36.i.i, i32 %.fca.1.extract37.i.i) #18
  call void @_ZN4llvm16SelectionDAGISel22EnforceNodeIdInvariantEPNS_6SDNodeE(ptr noundef %.fca.0.extract36.i.i) #18
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.097.0.i.i = phi ptr [ %.fca.0.extract36.i.i, %bb.g ], [ %i.db, %bb.f ] ; 2 uses
  %.sroa.7.0120.i.i = phi i32 [ 2, %bb.g ], [ 0, %bb.f ]
  %.sroa.048.0.i.i = phi ptr [ %.fca.0.extract36.i.i, %bb.g ], [ %i.dd, %bb.f ]
  %.sroa.7.0.i.i = phi i32 [ 1, %bb.g ], [ 0, %bb.f ]
  %i.dr = call noundef zeroext i1 @_ZNK4llvm6SDNode16hasAnyUseOfValueEj(ptr noundef nonnull align 8 dereferenceable(88) %1, i32 noundef 1) #18
  br i1 %i.dr, label %bb.i, label %_ZN12_GLOBAL__N_115AVRDAGToDAGISel20selectMultiplicationEPN4llvm6SDNodeE.exit.i

bb.i:                                             ; preds = %bb.h
  %i.ds = load ptr, ptr %i.cz, align 8, !tbaa !202 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %35)
  call void @llvm.lifetime.start.p0(ptr nonnull %37)
  store i16 249, ptr %35, align 8, !tbaa !455
  %i.dt = getelementptr inbounds nuw i8, ptr %35, i64 8
  store ptr null, ptr %i.dt, align 8, !tbaa !457
  %i.du = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_S1_(ptr noundef nonnull align 8 dereferenceable(920) %i.ds, i16 %.sroa.0.0.copyload.i.i.i.i, ptr null, i16 1, ptr null, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %35) #18 ; 2 uses
  %i.dv = extractvalue { ptr, i32 } %i.du, 0
  %i.dw = extractvalue { ptr, i32 } %i.du, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #18
  store ptr %.sroa.048.0.i.i, ptr %36, align 16, !tbaa !320
  %.sroa.218.0..sroa_idx.i72.i.i = getelementptr inbounds nuw i8, ptr %36, i64 8
  store i32 %.sroa.7.0.i.i, ptr %.sroa.218.0..sroa_idx.i72.i.i, align 8, !tbaa !321
  %i.dx = getelementptr inbounds nuw i8, ptr %36, i64 16
  %i.dy = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.ds, i32 6, i16 %.sroa.0.0.copyload.i.i.i.i, ptr null) #18 ; 2 uses
  %.fca.0.extract3.i73.i.i = extractvalue { ptr, i32 } %i.dy, 0
  %.fca.1.extract4.i74.i.i = extractvalue { ptr, i32 } %i.dy, 1
  store ptr %.fca.0.extract3.i73.i.i, ptr %i.dx, align 16
  %.sroa.26.0..sroa_idx.i75.i.i = getelementptr inbounds nuw i8, ptr %36, i64 24
  store i32 %.fca.1.extract4.i74.i.i, ptr %.sroa.26.0..sroa_idx.i75.i.i, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %36, i64 32
  store ptr %.sroa.097.0.i.i, ptr %i.dz, align 16, !tbaa !320
  %.sroa.5118.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %36, i64 40
  store i32 %.sroa.7.0120.i.i, ptr %.sroa.5118.0..sroa_idx.i.i, align 8, !tbaa !321
  %.not.i76.i.i = icmp eq ptr %.sroa.097.0.i.i, null
  %i.ea = select i1 %.not.i76.i.i, i64 2, i64 3
  store ptr %36, ptr %37, align 8, !tbaa !336
  %i.eb = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i64 %i.ea, ptr %i.eb, align 8, !tbaa !337
  %i.ec = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.ds, i32 noundef 52, ptr noundef nonnull align 8 dereferenceable(12) %41, ptr %i.dv, i32 %i.dw, ptr noundef nonnull byval(%"class.llvm::ArrayRef.180") align 8 %37) #18 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %35)
  call void @llvm.lifetime.end.p0(ptr nonnull %37)
  %.fca.0.extract11.i.i = extractvalue { ptr, i32 } %i.ec, 0 ; 2 uses
  %.fca.1.extract12.i.i = extractvalue { ptr, i32 } %i.ec, 1
  %i.ed = load ptr, ptr %i.cz, align 8, !tbaa !202
  call void @_ZN4llvm12SelectionDAG25ReplaceAllUsesOfValueWithENS_7SDValueES1_(ptr noundef nonnull align 8 dereferenceable(920) %i.ed, ptr nonnull %1, i32 1, ptr %.fca.0.extract11.i.i, i32 %.fca.1.extract12.i.i) #18
  call void @_ZN4llvm16SelectionDAGISel22EnforceNodeIdInvariantEPNS_6SDNodeE(ptr noundef %.fca.0.extract11.i.i) #18
  br label %_ZN12_GLOBAL__N_115AVRDAGToDAGISel20selectMultiplicationEPN4llvm6SDNodeE.exit.i

_ZN12_GLOBAL__N_115AVRDAGToDAGISel20selectMultiplicationEPN4llvm6SDNodeE.exit.i: ; preds = %bb.i, %bb.h
  %i.ee = load ptr, ptr %i.cz, align 8, !tbaa !202
  call void @_ZN4llvm12SelectionDAG14RemoveDeadNodeEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(920) %i.ee, ptr noundef nonnull %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #18
  br label %_ZN12_GLOBAL__N_115AVRDAGToDAGISel9trySelectEPN4llvm6SDNodeE.exit.thread

bb.j:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %34)
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !326 ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 80
  %.sroa.033.0.copyload.i.i = load ptr, ptr %i.eh, align 8, !tbaa !320 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.033.0.copyload.i.i, i64 24
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !201 ; 2 uses
  switch i32 %i.ej, label %bb.k [
    i32 41, label %_ZN12_GLOBAL__N_115AVRDAGToDAGISel9trySelectEPN4llvm6SDNodeE.exit.thread9
    i32 16, label %_ZN12_GLOBAL__N_115AVRDAGToDAGISel9trySelectEPN4llvm6SDNodeE.exit.thread9
    i32 37, label %_ZN12_GLOBAL__N_115AVRDAGToDAGISel9trySelectEPN4llvm6SDNodeE.exit.thread9
    i32 12, label %_ZN12_GLOBAL__N_115AVRDAGToDAGISel9trySelectEPN4llvm6SDNodeE.exit.thread9
  ]

bb.k:                                             ; preds = %bb.j
  %i.ek = add i32 %i.ej, -53
  %spec.select.i.i.i.i = icmp ult i32 %i.ek, 2
  br i1 %spec.select.i.i.i.i, label %_ZN12_GLOBAL__N_115AVRDAGToDAGISel9trySelectEPN4llvm6SDNodeE.exit.thread9, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.033.0.copyload.i.i, i64 40 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !326 ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !327 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !201
  %i.eq = icmp ne i32 %i.ep, 10
  %.not39.i.i = icmp eq ptr %i.en, null
  %.not.i.i = or i1 %.not39.i.i, %i.eq
  br i1 %.not.i.i, label %_ZN12_GLOBAL__N_115AVRDAGToDAGISel9trySelectEPN4llvm6SDNodeE.exit.thread9, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.er = getelementptr inbounds nuw i8, ptr %i.en, i64 88
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.er, align 8, !tbaa !321
  %.not40.i.i = icmp eq i32 %.sroa.0.0.copyload.i.i.i, 1
  br i1 %.not40.i.i, label %_ZN12_GLOBAL__N_115AVRDAGToDAGISel9trySelectEPN4llvm6SDNodeE.exit, label %_ZN12_GLOBAL__N_115AVRDAGToDAGISel9trySelectEPN4llvm6SDNodeE.exit.thread9

bb.n:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  call void @llvm.lifetime.start.p0(ptr nonnull %27)
  call void @llvm.lifetime.start.p0(ptr nonnull %28)
  call void @llvm.lifetime.start.p0(ptr nonnull %29)
  call void @llvm.lifetime.start.p0(ptr nonnull %30)
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.es, align 8
  %i.et = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -5
  %i.eu = inttoptr i64 %i.et to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.eu, align 8 ; 2 uses
  %i.ev = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 4
  %i.ew = icmp ne i64 %i.ev, 0
  %i.ex = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, -5 ; 2 uses
  %.not5.i.i.i = icmp eq i64 %i.ex, 0
  %.not.i.i15.i = or i1 %i.ew, %.not5.i.i.i
  br i1 %.not.i.i15.i, label %_ZN4llvm3AVR21isProgramMemoryAccessEPKNS_9MemSDNodeE.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ey = inttoptr i64 %i.ex to ptr
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !460
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fc = load i32, ptr %i.fb, align 8
  %i.fd = lshr i32 %i.fc, 8
  %.off.i.i.i.i = add nsw i32 %i.fd, -1           ; 4 uses
  %switch.i.i.i.i = icmp ult i32 %.off.i.i.i.i, 6
  br i1 %switch.i.i.i.i, label %bb.w, label %_ZN4llvm3AVR21isProgramMemoryAccessEPKNS_9MemSDNodeE.exit.i.i

_ZN4llvm3AVR21isProgramMemoryAccessEPKNS_9MemSDNodeE.exit.i.i: ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ff = load i16, ptr %i.fe, align 8
  %51 = lshr i16 %i.ff, 7
  %52 = and i16 %51, 7                            ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.0.0.copyload.i.i.i16.i = load i16, ptr %i.fg, align 8, !tbaa !331 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !319 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !202
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 56
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !270
  %i.fn = tail call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.fm) #18
  %i.fo = load ptr, ptr %i.fi, align 8, !tbaa !17
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  %i.fq = load ptr, ptr %i.fp, align 8
  %i.fr = tail call i16 %i.fq(ptr noundef nonnull align 8 dereferenceable(518435) %i.fi, ptr noundef nonnull align 8 dereferenceable(912) %i.fn, i32 noundef 0) #18, !inline_history !451
  %i.fs = load i16, ptr %i.fe, align 8
  %i.ft = and i16 %i.fs, 3072
  %.not41.i.i.i = icmp ne i16 %i.ft, 0
  %53 = add nsw i16 %52, -4
  %or.cond.i.i.i = icmp ult i16 %53, -2
  %or.cond44.i.i.i = or i1 %or.cond.i.i.i, %.not41.i.i.i
  br i1 %or.cond44.i.i.i, label %_ZN12_GLOBAL__N_115AVRDAGToDAGISel6selectILj316EEEbPN4llvm6SDNodeE.exit.i.thread12, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm3AVR21isProgramMemoryAccessEPKNS_9MemSDNodeE.exit.i.i
  %54 = icmp eq i16 %52, 2                        ; 4 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !326 ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 80
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !327
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 88
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !340 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 24 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 32
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !342 ; 3 uses
  %i.gd = icmp ult i32 %i.gc, 65
  br i1 %i.gd, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ge = load i64, ptr %i.ga, align 8, !tbaa !315
  %i.gf = icmp eq i32 %i.gc, 0
  %i.gg = sub nuw nsw i32 64, %i.gc
  %i.gh = zext nneg i32 %i.gg to i64              ; 2 uses
  %i.gi = shl i64 %i.ge, %i.gh
  %i.gj = ashr exact i64 %i.gi, %i.gh
  %.0.i.i.i.i.i.i17.i = select i1 %i.gf, i64 0, i64 %i.gj
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.gk = load ptr, ptr %i.ga, align 8, !tbaa !315
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !13
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.i.i.i

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i.i.i = phi i64 [ %.0.i.i.i.i.i.i17.i, %bb.q ], [ %i.gl, %bb.r ]
  %i.gm = trunc i64 %.0.i.i.i.i.i.i to i32        ; 2 uses
  switch i16 %.sroa.0.0.copyload.i.i.i16.i, label %_ZN12_GLOBAL__N_115AVRDAGToDAGISel6selectILj316EEEbPN4llvm6SDNodeE.exit.i.thread12 [
    i16 5, label %bb.s
    i16 6, label %bb.u
  ]

bb.s:                                             ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.i.i.i
  %or.cond45.v.i.i.i = select i1 %54, i32 -1, i32 1
  %or.cond45.not.i.i.i = icmp eq i32 %or.cond45.v.i.i.i, %i.gm
  br i1 %or.cond45.not.i.i.i, label %bb.t, label %_ZN12_GLOBAL__N_115AVRDAGToDAGISel6selectILj316EEEbPN4llvm6SDNodeE.exit.i.thread12

bb.t:                                             ; preds = %bb.s
  %i.gn = select i1 %54, i32 476, i32 477
  br label %_ZN12_GLOBAL__N_115AVRDAGToDAGISel6selectILj316EEEbPN4llvm6SDNodeE.exit.i

bb.u:                                             ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.i.i.i
  %or.cond46.v.i.i.i = select i1 %54, i32 -2, i32 2
  %or.cond46.not.i.i.i = icmp eq i32 %or.cond46.v.i.i.i, %i.gm
  br i1 %or.cond46.not.i.i.i, label %bb.v, label %_ZN12_GLOBAL__N_115AVRDAGToDAGISel6selectILj316EEEbPN4llvm6SDNodeE.exit.i.thread12

bb.v:                                             ; preds = %bb.u
  %i.go = select i1 %54, i32 375, i32 376
  br label %_ZN12_GLOBAL__N_115AVRDAGToDAGISel6selectILj316EEEbPN4llvm6SDNodeE.exit.i

bb.w:                                             ; preds = %bb.o
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 2 uses
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !77 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 373
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !461, !range !431, !noundef !189
  %i.gt = trunc nuw i8 %i.gs to i1
  br i1 %i.gt, label %_ZN4llvm3AVR20getProgramMemoryBankEPKNS_9MemSDNodeE.exit.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str.3, i1 noundef zeroext true) #19
  unreachable

_ZN4llvm3AVR20getProgramMemoryBankEPKNS_9MemSDNodeE.exit.i.i: ; preds = %bb.w
  %.not.i18.i = icmp eq i32 %.off.i.i.i.i, 0      ; 4 uses
  br i1 %.not.i18.i, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %_ZN4llvm3AVR20getProgramMemoryBankEPKNS_9MemSDNodeE.exit.i.i
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gq, i64 352
  %i.gv = load i8, ptr %i.gu, align 8, !tbaa !462, !range !431, !noundef !189
  %i.gw = trunc nuw i8 %i.gv to i1
  br i1 %i.gw, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str.4, i1 noundef zeroext true) #19
  unreachable

bb.aa:                                            ; preds = %bb.y, %_ZN4llvm3AVR20getProgramMemoryBankEPKNS_9MemSDNodeE.exit.i.i
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.0.0.copyload.i.i19.i = load i16, ptr %i.gx, align 8, !tbaa !331 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !326 ; 3 uses
  %.sroa.0146.0.copyload.i.i = load ptr, ptr %i.gz, align 8, !tbaa !320
  %.sroa.6.0..sroa_idx.i20.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %.sroa.6.0.copyload.i21.i = load i32, ptr %.sroa.6.0..sroa_idx.i20.i, align 8, !tbaa !321
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %i.ha, i64 16, i1 false), !tbaa.struct !432
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !322
  store i64 %i.hc, ptr %17, align 8, !tbaa !322
  %i.hd = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !323
  store i32 %i.hf, ptr %i.hd, align 8, !tbaa !325
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 14 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !202 ; 3 uses
  %.sroa.0155.0.copyload.i.i = load ptr, ptr %16, align 8, !tbaa !320 ; 2 uses
  %.sroa.2156.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %.sroa.2156.0.copyload.i.i = load i32, ptr %.sroa.2156.0..sroa_idx.i.i, align 8, !tbaa !321 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  %i.hi = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_(ptr noundef nonnull align 8 dereferenceable(920) %i.hh, i16 1, ptr null, i16 249, ptr null) #18 ; 2 uses
  %i.hj = extractvalue { ptr, i32 } %i.hi, 0
  %i.hk = extractvalue { ptr, i32 } %i.hi, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  store ptr %.sroa.0146.0.copyload.i.i, ptr %11, align 16, !tbaa !320
  %.sroa.214.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %.sroa.6.0.copyload.i21.i, ptr %.sroa.214.0..sroa_idx.i.i.i, align 8, !tbaa !321
  %i.hl = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.0155.0.copyload.i.i, i64 48
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !329
  %i.ho = zext i32 %.sroa.2156.0.copyload.i.i to i64
  %i.hp = getelementptr inbounds nuw [16 x i8], ptr %i.hn, i64 %i.ho ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i22.i = load i16, ptr %i.hp, align 8, !tbaa !331
  %.sroa.21.0..sroa_idx.i.i.i.i23.i = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %.sroa.21.0.copyload.i.i.i.i24.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i.i23.i, align 8, !tbaa !333
  %i.hq = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.hh, i32 61, i16 %.sroa.0.0.copyload.i.i.i.i22.i, ptr %.sroa.21.0.copyload.i.i.i.i24.i) #18 ; 2 uses
  %.fca.0.extract3.i.i25.i = extractvalue { ptr, i32 } %i.hq, 0
  %.fca.1.extract4.i.i26.i = extractvalue { ptr, i32 } %i.hq, 1
  store ptr %.fca.0.extract3.i.i25.i, ptr %i.hl, align 16
  %.sroa.26.0..sroa_idx.i.i27.i = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i32 %.fca.1.extract4.i.i26.i, ptr %.sroa.26.0..sroa_idx.i.i27.i, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr %.sroa.0155.0.copyload.i.i, ptr %i.hr, align 16, !tbaa !320
  %.sroa.5.0..sroa_idx152.i.i = getelementptr inbounds nuw i8, ptr %11, i64 40
  store i32 %.sroa.2156.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx152.i.i, align 8, !tbaa !321
  %i.hs = getelementptr inbounds nuw i8, ptr %11, i64 48
  store ptr null, ptr %i.hs, align 16, !tbaa !320
  %.sroa.5159.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %11, i64 56
  store i32 0, ptr %.sroa.5159.0..sroa_idx.i.i, align 8, !tbaa !321
  store ptr %11, ptr %12, align 8, !tbaa !336
  %i.ht = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 3, ptr %i.ht, align 8, !tbaa !337
  %i.hu = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.hh, i32 noundef 51, ptr noundef nonnull align 8 dereferenceable(12) %17, ptr %i.hj, i32 %i.hk, ptr noundef nonnull byval(%"class.llvm::ArrayRef.180") align 8 %12) #18 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %.fca.0.extract40.i.i = extractvalue { ptr, i32 } %i.hu, 0 ; 3 uses
  %.fca.1.extract41.i.i = extractvalue { ptr, i32 } %i.hu, 1
  %i.hv = load ptr, ptr %i.hg, align 8, !tbaa !202 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store i16 249, ptr %8, align 8, !tbaa !455
  %i.hw = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr null, ptr %i.hw, align 8, !tbaa !457
  %i.hx = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_S1_(ptr noundef nonnull align 8 dereferenceable(920) %i.hv, i16 6, ptr null, i16 1, ptr null, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %8) #18 ; 2 uses
  %i.hy = extractvalue { ptr, i32 } %i.hx, 0
  %i.hz = extractvalue { ptr, i32 } %i.hx, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  store ptr %.fca.0.extract40.i.i, ptr %9, align 16, !tbaa !320
  %.sroa.218.0..sroa_idx.i.i28.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.fca.1.extract41.i.i, ptr %.sroa.218.0..sroa_idx.i.i28.i, align 8, !tbaa !321
  %i.ia = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ib = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.hv, i32 61, i16 6, ptr null) #18 ; 2 uses
  %.fca.0.extract3.i95.i.i = extractvalue { ptr, i32 } %i.ib, 0
  %.fca.1.extract4.i96.i.i = extractvalue { ptr, i32 } %i.ib, 1
  store ptr %.fca.0.extract3.i95.i.i, ptr %i.ia, align 16
  %.sroa.26.0..sroa_idx.i97.i.i = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i32 %.fca.1.extract4.i96.i.i, ptr %.sroa.26.0..sroa_idx.i97.i.i, align 8
  %i.ic = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %.fca.0.extract40.i.i, ptr %i.ic, align 16, !tbaa !320
  %.sroa.5165.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i32 1, ptr %.sroa.5165.0..sroa_idx.i.i, align 8, !tbaa !321
  %.not.i98.i.i = icmp eq ptr %.fca.0.extract40.i.i, null
  %i.id = select i1 %.not.i98.i.i, i64 2, i64 3
  store ptr %9, ptr %10, align 8, !tbaa !336
  %i.ie = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.id, ptr %i.ie, align 8, !tbaa !337
  %i.if = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.hv, i32 noundef 52, ptr noundef nonnull align 8 dereferenceable(12) %17, ptr %i.hy, i32 %i.hz, ptr noundef nonnull byval(%"class.llvm::ArrayRef.180") align 8 %10) #18 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %.fca.0.extract27.i.i = extractvalue { ptr, i32 } %i.if, 0
  %.fca.1.extract28.i.i = extractvalue { ptr, i32 } %i.if, 1
  store ptr %.fca.0.extract27.i.i, ptr %16, align 8, !tbaa !320
  store i32 %.fca.1.extract28.i.i, ptr %.sroa.2156.0..sroa_idx.i.i, align 8, !tbaa !321
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ih = load i16, ptr %i.ig, align 8
  %i.ii = and i16 %i.ih, 3968
  %or.cond1.i.i.i = icmp eq i16 %i.ii, 384
  br i1 %or.cond1.i.i.i, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.ij = load ptr, ptr %i.gy, align 8, !tbaa !326
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 80
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !327
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 88
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !340 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 24 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.in, i64 32
  %i.iq = load i32, ptr %i.ip, align 8, !tbaa !342 ; 3 uses
  %i.ir = icmp ult i32 %i.iq, 65
  br i1 %i.ir, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.is = load i64, ptr %i.io, align 8, !tbaa !315
  %i.it = icmp eq i32 %i.iq, 0
  %i.iu = sub nuw nsw i32 64, %i.iq
  %i.iv = zext nneg i32 %i.iu to i64              ; 2 uses
  %i.iw = shl i64 %i.is, %i.iv
  %i.ix = ashr exact i64 %i.iw, %i.iv
  %.0.i.i.i.i.i103.i.i = select i1 %i.it, i64 0, i64 %i.ix
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.i99.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.iy = load ptr, ptr %i.io, align 8, !tbaa !315
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !13
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.i99.i.i

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.i99.i.i: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i100.i.i = phi i64 [ %.0.i.i.i.i.i103.i.i, %bb.ac ], [ %i.iz, %bb.ad ]
  %i.ja = icmp eq i16 %.sroa.0.0.copyload.i.i19.i, 5
  %i.jb = and i64 %.0.i.i.i.i100.i.i, 4294967295
  %i.jc = icmp eq i64 %i.jb, 1
  %or.cond.i101.i.i = and i1 %i.ja, %i.jc
  %or.cond3.i.i.i = and i1 %.not.i18.i, %or.cond.i101.i.i
  br i1 %or.cond3.i.i.i, label %_ZN12_GLOBAL__N_115AVRDAGToDAGISel24selectIndexedProgMemLoadEPKN4llvm10LoadSDNodeENS1_3MVTEi.exit.i.i, label %bb.ae

_ZN12_GLOBAL__N_115AVRDAGToDAGISel24selectIndexedProgMemLoadEPKN4llvm10LoadSDNodeENS1_3MVTEi.exit.i.i: ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.i99.i.i
  %i.jd = load ptr, ptr %i.hg, align 8, !tbaa !202
  store i16 6, ptr %18, align 8, !tbaa !455
  %i.je = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr null, ptr %i.je, align 8, !tbaa !457
  store i16 1, ptr %19, align 8, !tbaa !455
  %i.jf = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr null, ptr %i.jf, align 8, !tbaa !457
  store ptr %16, ptr %20, align 8, !tbaa !336
  %i.jg = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 1, ptr %i.jg, align 8, !tbaa !337
  %i.jh = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTES4_S4_NS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.jd, i32 noundef 482, ptr noundef nonnull align 8 dereferenceable(12) %17, i16 5, ptr null, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %18, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %19, ptr noundef nonnull byval(%"class.llvm::ArrayRef.180") align 8 %20) #18
  br label %_ZN12_GLOBAL__N_115AVRDAGToDAGISel6selectILj316EEEbPN4llvm6SDNodeE.exit.i.thread

bb.ae:                                            ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.i99.i.i, %bb.aa
  %i.ji = icmp eq i16 %.sroa.0.0.copyload.i.i19.i, 5
  br i1 %i.ji, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  br i1 %.not.i18.i, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.jj = load ptr, ptr %i.gp, align 8, !tbaa !77
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 374
  %i.jl = load i8, ptr %i.jk, align 2, !tbaa !463, !range !431, !noundef !189
  %i.jm = trunc nuw i8 %i.jl to i1
  %i.jn = select i1 %i.jm, i32 481, i32 377
  %i.jo = load ptr, ptr %i.hg, align 8, !tbaa !202
  store i16 1, ptr %21, align 8, !tbaa !455
  %i.jp = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr null, ptr %i.jp, align 8, !tbaa !457
  store ptr %16, ptr %22, align 8, !tbaa !336
  %i.jq = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 1, ptr %i.jq, align 8, !tbaa !337
  %i.jr = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTES4_NS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.jo, i32 noundef %i.jn, ptr noundef nonnull align 8 dereferenceable(12) %17, i16 5, ptr null, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %21, ptr noundef nonnull byval(%"class.llvm::ArrayRef.180") align 8 %22) #18
  br label %_ZN12_GLOBAL__N_115AVRDAGToDAGISel6selectILj316EEEbPN4llvm6SDNodeE.exit.i.thread

bb.ah:                                            ; preds = %bb.af
  %i.js = load ptr, ptr %i.hg, align 8, !tbaa !202
  %i.jt = zext nneg i32 %.off.i.i.i.i to i64
  %i.ju = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.js, i64 noundef %i.jt, ptr noundef nonnull align 8 dereferenceable(12) %17, i16 5, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #18 ; 2 uses
  %.fca.0.extract6.i.i = extractvalue { ptr, i32 } %i.ju, 0
  %.fca.1.extract7.i.i = extractvalue { ptr, i32 } %i.ju, 1
  %i.jv = load ptr, ptr %i.hg, align 8, !tbaa !202
  store ptr %.fca.0.extract6.i.i, ptr %23, align 8, !tbaa !320
  %.sroa.411.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i32 %.fca.1.extract7.i.i, ptr %.sroa.411.0..sroa_idx.i.i, align 8, !tbaa !321
  %i.jw = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.jv, i32 noundef 474, ptr noundef nonnull align 8 dereferenceable(12) %17, i16 5, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %23) #18
  %i.jx = load ptr, ptr %i.hg, align 8, !tbaa !202
  store i16 1, ptr %24, align 8, !tbaa !455
  %i.jy = getelementptr inbounds nuw i8, ptr %24, i64 8
  store ptr null, ptr %i.jy, align 8, !tbaa !457
  store ptr %i.jw, ptr %25, align 8, !tbaa !327
  %i.jz = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i32 0, ptr %i.jz, align 8, !tbaa !328
  %i.ka = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTES4_NS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.jx, i32 noundef 363, ptr noundef nonnull align 8 dereferenceable(12) %17, i16 5, ptr null, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %24, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %16, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %25) #18
  br label %_ZN12_GLOBAL__N_115AVRDAGToDAGISel6selectILj316EEEbPN4llvm6SDNodeE.exit.i.thread

bb.ai:                                            ; preds = %bb.ae
  %i.kb = load ptr, ptr %i.hg, align 8, !tbaa !202 ; 2 uses
  br i1 %.not.i18.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i16 1, ptr %26, align 8, !tbaa !455
  %i.kc = getelementptr inbounds nuw i8, ptr %26, i64 8
  store ptr null, ptr %i.kc, align 8, !tbaa !457
  store ptr %16, ptr %27, align 8, !tbaa !336
  %i.kd = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i64 1, ptr %i.kd, align 8, !tbaa !337
  %i.ke = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTES4_NS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.kb, i32 noundef 378, ptr noundef nonnull align 8 dereferenceable(12) %17, i16 6, ptr null, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %26, ptr noundef nonnull byval(%"class.llvm::ArrayRef.180") align 8 %27) #18
  br label %_ZN12_GLOBAL__N_115AVRDAGToDAGISel6selectILj316EEEbPN4llvm6SDNodeE.exit.i.thread

bb.ak:                                            ; preds = %bb.ai
  %i.kf = zext nneg i32 %.off.i.i.i.i to i64
  %i.kg = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.kb, i64 noundef %i.kf, ptr noundef nonnull align 8 dereferenceable(12) %17, i16 5, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #18 ; 2 uses
  %.fca.0.extract.i29.i = extractvalue { ptr, i32 } %i.kg, 0
  %.fca.1.extract.i30.i = extractvalue { ptr, i32 } %i.kg, 1
  %i.kh = load ptr, ptr %i.hg, align 8, !tbaa !202
  store ptr %.fca.0.extract.i29.i, ptr %28, align 8, !tbaa !320
  %.sroa.4.0..sroa_idx.i31.i = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i32 %.fca.1.extract.i30.i, ptr %.sroa.4.0..sroa_idx.i31.i, align 8, !tbaa !321
  %i.ki = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.kh, i32 noundef 474, ptr noundef nonnull align 8 dereferenceable(12) %17, i16 5, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %28) #18
  %i.kj = load ptr, ptr %i.hg, align 8, !tbaa !202
  store i16 1, ptr %29, align 8, !tbaa !455
  %i.kk = getelementptr inbounds nuw i8, ptr %29, i64 8
  store ptr null, ptr %i.kk, align 8, !tbaa !457
  store ptr %i.ki, ptr %30, align 8, !tbaa !327
  %i.kl = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i32 0, ptr %i.kl, align 8, !tbaa !328
  %i.km = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTES4_NS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.kj, i32 noundef 365, ptr noundef nonnull align 8 dereferenceable(12) %17, i16 6, ptr null, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %29, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %16, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %30) #18
  br label %_ZN12_GLOBAL__N_115AVRDAGToDAGISel6selectILj316EEEbPN4llvm6SDNodeE.exit.i.thread

_ZN12_GLOBAL__N_115AVRDAGToDAGISel6selectILj316EEEbPN4llvm6SDNodeE.exit.i.thread: ; preds = %_ZN12_GLOBAL__N_115AVRDAGToDAGISel24selectIndexedProgMemLoadEPKN4llvm10LoadSDNodeENS1_3MVTEi.exit.i.i, %bb.ag, %bb.ah, %bb.aj, %bb.ak
  %.082.i.i = phi ptr [ %i.jh, %_ZN12_GLOBAL__N_115AVRDAGToDAGISel24selectIndexedProgMemLoadEPKN4llvm10LoadSDNodeENS1_3MVTEi.exit.i.i ], [ %i.km, %bb.ak ], [ %i.jr, %bb.ag ], [ %i.ka, %bb.ah ], [ %i.ke, %bb.aj ] ; 5 uses
  %i.kn = load ptr, ptr %i.hg, align 8, !tbaa !202
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %.0.copyload.i.i.i.i.i.i.i32.i = load i64, ptr %i.es, align 8
  %i.ko = and i64 %.0.copyload.i.i.i.i.i.i.i32.i, -5
  %i.kp = inttoptr i64 %i.ko to ptr
  store ptr %i.kp, ptr %i.a, align 8, !tbaa !465
  call void @_ZN4llvm12SelectionDAG14setNodeMemRefsEPNS_13MachineSDNodeENS_8ArrayRefIPNS_17MachineMemOperandEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.kn, ptr noundef %.082.i.i, ptr nonnull %i.a, i64 1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.kq = load ptr, ptr %i.hg, align 8, !tbaa !202
  call void @_ZN4llvm12SelectionDAG25ReplaceAllUsesOfValueWithENS_7SDValueES1_(ptr noundef nonnull align 8 dereferenceable(920) %i.kq, ptr nonnull %1, i32 0, ptr %.082.i.i, i32 0) #18
  call void @_ZN4llvm16SelectionDAGISel22EnforceNodeIdInvariantEPNS_6SDNodeE(ptr noundef %.082.i.i) #18
  %i.kr = load ptr, ptr %i.hg, align 8, !tbaa !202
  call void @_ZN4llvm12SelectionDAG25ReplaceAllUsesOfValueWithENS_7SDValueES1_(ptr noundef nonnull align 8 dereferenceable(920) %i.kr, ptr nonnull %1, i32 1, ptr %.082.i.i, i32 1) #18
  call void @_ZN4llvm16SelectionDAGISel22EnforceNodeIdInvariantEPNS_6SDNodeE(ptr noundef %.082.i.i) #18
  %i.ks = load ptr, ptr %i.hg, align 8, !tbaa !202
  call void @_ZN4llvm12SelectionDAG14RemoveDeadNodeEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(920) %i.ks, ptr noundef nonnull %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  call void @llvm.lifetime.end.p0(ptr nonnull %25)
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  call void @llvm.lifetime.end.p0(ptr nonnull %27)
  call void @llvm.lifetime.end.p0(ptr nonnull %28)
  call void @llvm.lifetime.end.p0(ptr nonnull %29)
  call void @llvm.lifetime.end.p0(ptr nonnull %30)
  br label %_ZN12_GLOBAL__N_115AVRDAGToDAGISel9trySelectEPN4llvm6SDNodeE.exit.thread

_ZN12_GLOBAL__N_115AVRDAGToDAGISel6selectILj316EEEbPN4llvm6SDNodeE.exit.i.thread12: ; preds = %_ZN4llvm3AVR21isProgramMemoryAccessEPKNS_9MemSDNodeE.exit.i.i, %bb.u, %bb.s, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  call void @llvm.lifetime.end.p0(ptr nonnull %25)
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  call void @llvm.lifetime.end.p0(ptr nonnull %27)
  call void @llvm.lifetime.end.p0(ptr nonnull %28)
  call void @llvm.lifetime.end.p0(ptr nonnull %29)
  call void @llvm.lifetime.end.p0(ptr nonnull %30)
  br label %_ZN12_GLOBAL__N_115AVRDAGToDAGISel9trySelectEPN4llvm6SDNodeE.exit.thread6

_ZN12_GLOBAL__N_115AVRDAGToDAGISel6selectILj316EEEbPN4llvm6SDNodeE.exit.i: ; preds = %bb.t, %bb.v
  %.040.i.i.i = phi i32 [ %i.gn, %bb.t ], [ %i.go, %bb.v ]
  %i.kt = load ptr, ptr %i.fj, align 8, !tbaa !202
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  %i.ku = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !322
  store i64 %i.kv, ptr %13, align 8, !tbaa !322
  %i.kw = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.kx = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !323
  store i32 %i.ky, ptr %i.kw, align 8, !tbaa !325
  store i16 %i.fr, ptr %14, align 8, !tbaa !331
  %i.kz = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr null, ptr %i.kz, align 8, !tbaa !457
  store i16 1, ptr %15, align 8, !tbaa !455
  %i.la = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr null, ptr %i.la, align 8, !tbaa !457
  %i.lb = getelementptr inbounds nuw i8, ptr %i.fv, i64 40
  %i.lc = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTES4_S4_NS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.kt, i32 noundef %.040.i.i.i, ptr noundef nonnull align 8 dereferenceable(12) %13, i16 %.sroa.0.0.copyload.i.i.i16.i, ptr null, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %14, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %15, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.lb, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.fv) #18 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  %i.ld = load ptr, ptr %i.fj, align 8, !tbaa !202
  call void @_ZN4llvm12SelectionDAG18ReplaceAllUsesWithEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(920) %i.ld, ptr noundef nonnull %1, ptr noundef %i.lc) #18
  call void @_ZN4llvm16SelectionDAGISel22EnforceNodeIdInvariantEPNS_6SDNodeE(ptr noundef %i.lc) #18
  %i.le = load ptr, ptr %i.fj, align 8, !tbaa !202
  call void @_ZN4llvm12SelectionDAG14RemoveDeadNodeEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(920) %i.le, ptr noundef nonnull %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  call void @llvm.lifetime.end.p0(ptr nonnull %25)
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  call void @llvm.lifetime.end.p0(ptr nonnull %27)
  call void @llvm.lifetime.end.p0(ptr nonnull %28)
  call void @llvm.lifetime.end.p0(ptr nonnull %29)
  call void @llvm.lifetime.end.p0(ptr nonnull %30)
  br label %_ZN12_GLOBAL__N_115AVRDAGToDAGISel9trySelectEPN4llvm6SDNodeE.exit.thread

bb.al:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.lf = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !326 ; 5 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 40
  %.sroa.072.0.copyload.i.i = load ptr, ptr %i.lh, align 8, !tbaa !320 ; 3 uses
  %i.li = getelementptr inbounds nuw i8, ptr %.sroa.072.0.copyload.i.i, i64 24
  %i.lj = load i32, ptr %i.li, align 8, !tbaa !201 ; 2 uses
  switch i32 %i.lj, label %bb.am [
    i32 44, label %_ZN12_GLOBAL__N_115AVRDAGToDAGISel6selectILj544EEEbPN4llvm6SDNodeE.exit.i
    i32 39, label %_ZN12_GLOBAL__N_115AVRDAGToDAGISel6selectILj544EEEbPN4llvm6SDNodeE.exit.i
  ]

bb.am:                                            ; preds = %bb.al
  %i.lk = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ll = load i16, ptr %i.lk, align 8, !tbaa !466
  %i.lm = zext i16 %i.ll to i32                   ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.lg, i64 48
  %.sroa.5.sroa.0.0.copyload.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !321 ; 2 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  %.sroa.7.0.copyload.i.i = load i32, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !tbaa !321
  %.sroa.077.0.copyload.i.i = load ptr, ptr %i.lg, align 8, !tbaa !320
  %i.ln = add nsw i32 %i.lm, -1                   ; 2 uses
  %i.lo = zext i32 %i.ln to i64
  %i.lp = getelementptr inbounds nuw [40 x i8], ptr %i.lg, i64 %i.lo ; 2 uses
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !327
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  %i.ls = load i32, ptr %i.lr, align 8, !tbaa !328
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lq, i64 48
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !329
  %i.lv = zext i32 %i.ls to i64
  %i.lw = getelementptr inbounds nuw [16 x i8], ptr %i.lu, i64 %i.lv ; 2 uses
  %.sroa.0.0.copyload.i.i.i33.i = load i16, ptr %i.lw, align 8, !tbaa !331
  %.sroa.21.0..sroa_idx.i.i.i34.i = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  %.sroa.21.0.copyload.i.i.i35.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i34.i, align 8, !tbaa !333
  %.not.i.i.i36.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i33.i, 249
  %i.lx = icmp eq ptr %.sroa.21.0.copyload.i.i.i35.i, null
  %.not4.i.i37.i = select i1 %.not.i.i.i36.i, i1 %i.lx, i1 false
  %spec.select.i.i = select i1 %.not4.i.i37.i, i32 %i.ln, i32 %i.lm ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.ly = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.lz = load i64, ptr %i.ly, align 8, !tbaa !322
  store i64 %i.lz, ptr %4, align 8, !tbaa !322
  %i.ma = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.mb = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !323
  store i32 %i.mc, ptr %i.ma, align 8, !tbaa !325
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !202 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.mf = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_(ptr noundef nonnull align 8 dereferenceable(920) %i.me, i16 1, ptr null, i16 249, ptr null) #18 ; 2 uses
  %i.mg = extractvalue { ptr, i32 } %i.mf, 0
  %i.mh = extractvalue { ptr, i32 } %i.mf, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  store ptr %.sroa.077.0.copyload.i.i, ptr %2, align 16, !tbaa !320
  %.sroa.214.0..sroa_idx.i.i38.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %.sroa.7.0.copyload.i.i, ptr %.sroa.214.0..sroa_idx.i.i38.i, align 8, !tbaa !321
  %i.mi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.mj = getelementptr inbounds nuw i8, ptr %.sroa.072.0.copyload.i.i, i64 48
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !329
  %i.ml = zext i32 %.sroa.5.sroa.0.0.copyload.i.i to i64
  %i.mm = getelementptr inbounds nuw [16 x i8], ptr %i.mk, i64 %i.ml ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i39.i = load i16, ptr %i.mm, align 8, !tbaa !331
  %.sroa.21.0..sroa_idx.i.i.i.i40.i = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  %.sroa.21.0.copyload.i.i.i.i41.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i.i40.i, align 8, !tbaa !333
  %i.mn = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.me, i32 61, i16 %.sroa.0.0.copyload.i.i.i.i39.i, ptr %.sroa.21.0.copyload.i.i.i.i41.i) #18 ; 2 uses
  %.fca.0.extract3.i.i42.i = extractvalue { ptr, i32 } %i.mn, 0
  %.fca.1.extract4.i.i43.i = extractvalue { ptr, i32 } %i.mn, 1
  store ptr %.fca.0.extract3.i.i42.i, ptr %i.mi, align 16
  %.sroa.26.0..sroa_idx.i.i44.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.fca.1.extract4.i.i43.i, ptr %.sroa.26.0..sroa_idx.i.i44.i, align 8
  %i.mo = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %.sroa.072.0.copyload.i.i, ptr %i.mo, align 16, !tbaa !320
  %.sroa.584.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 %.sroa.5.sroa.0.0.copyload.i.i, ptr %.sroa.584.0..sroa_idx.i.i, align 8, !tbaa !321
  %i.mp = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr null, ptr %i.mp, align 16, !tbaa !320
  %.sroa.5.0..sroa_idx87.i.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i32 0, ptr %.sroa.5.0..sroa_idx87.i.i, align 8, !tbaa !321
  store ptr %2, ptr %3, align 8, !tbaa !336
  %i.mq = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 3, ptr %i.mq, align 8, !tbaa !337
  %i.mr = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.me, i32 noundef 51, ptr noundef nonnull align 8 dereferenceable(12) %4, ptr %i.mg, i32 %i.mh, ptr noundef nonnull byval(%"class.llvm::ArrayRef.180") align 8 %3) #18 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.fca.0.extract19.i.i = extractvalue { ptr, i32 } %i.mr, 0 ; 4 uses
  %.fca.1.extract20.i.i = extractvalue { ptr, i32 } %i.mr, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.ms = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.ms, ptr %5, align 8, !tbaa !310
  %i.mt = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 14 uses
  store i32 0, ptr %i.mt, align 8, !tbaa !311
  %i.mu = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 5 uses
  store i32 8, ptr %i.mu, align 4, !tbaa !312
  %i.mv = load ptr, ptr %i.md, align 8, !tbaa !202
  %i.mw = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.mv, i32 61, i16 6, ptr null) #18 ; 2 uses
  %.fca.0.extract13.i.i = extractvalue { ptr, i32 } %i.mw, 0 ; 2 uses
  %.fca.1.extract14.i.i = extractvalue { ptr, i32 } %i.mw, 1 ; 2 uses
  %i.mx = load i32, ptr %i.mt, align 8, !tbaa !311 ; 2 uses
  %i.my = load i32, ptr %i.mu, align 4, !tbaa !312
  %.not.i47.i.i = icmp ult i32 %i.mx, %i.my
  br i1 %.not.i47.i.i, label %bb.ao, label %bb.an, !prof !467

bb.an:                                            ; preds = %bb.am
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr %.fca.0.extract13.i.i, i32 %.fca.1.extract14.i.i)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.i.i

bb.ao:                                            ; preds = %bb.am
  %i.mz = zext i32 %i.mx to i64
  %i.na = load ptr, ptr %5, align 8, !tbaa !310
  %i.nb = getelementptr inbounds nuw [16 x i8], ptr %i.na, i64 %i.mz ; 2 uses
  store ptr %.fca.0.extract13.i.i, ptr %i.nb, align 1
  %.sroa.32.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  store i32 %.fca.1.extract14.i.i, ptr %.sroa.32.0..sroa_idx.i.i.i, align 1
  %i.nc = load i32, ptr %i.mt, align 8, !tbaa !311
  %i.nd = add i32 %i.nc, 1
  store i32 %i.nd, ptr %i.mt, align 8, !tbaa !311
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.i.i: ; preds = %bb.ao, %bb.an
  %.not88.i.i = icmp eq i32 %spec.select.i.i, 2
  br i1 %.not88.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit56.i.i, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.i.i
  %i.ne = load i32, ptr %i.mt, align 8, !tbaa !311 ; 2 uses
  %i.nf = load i32, ptr %i.mu, align 4, !tbaa !312
  %.not.i48.i.i = icmp ult i32 %i.ne, %i.nf
  br i1 %.not.i48.i.i, label %bb.aq, label %bb.ap, !prof !467

bb.ap:                                            ; preds = %._crit_edge.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr %.fca.0.extract19.i.i, i32 %.fca.1.extract20.i.i)
  %.pre.i.i = load i32, ptr %i.mt, align 8, !tbaa !311
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit50.i.i

bb.aq:                                            ; preds = %._crit_edge.i.i
  %i.ng = zext i32 %i.ne to i64
  %i.nh = load ptr, ptr %5, align 8, !tbaa !310
  %i.ni = getelementptr inbounds nuw [16 x i8], ptr %i.nh, i64 %i.ng ; 2 uses
  store ptr %.fca.0.extract19.i.i, ptr %i.ni, align 1
  %.sroa.32.0..sroa_idx.i49.i.i = getelementptr inbounds nuw i8, ptr %i.ni, i64 8
end_hunk_0
