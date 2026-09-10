Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ARMISelDAGToDAG?download=true
inline.NumInlined: 5550
inline.NumDeleted: 1231
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN12_GLOBAL__N_115ARMDAGToDAGISel16tryWriteRegisterEPN4llvm6SDNodeE:bb.a
bb.ay:                                            ; preds = %bb.ax
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lq, i64 240
  %.sroa.0.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.lq, i64 256
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.lq, i64 272
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lw, i64 16 ; 2 uses
  %i.lz = load <2 x i64>, ptr %i.lx, align 8
  %i.ma = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.mb = load <2 x i64>, ptr %.sroa.0.sroa.3.0..sroa_idx.i, align 8
  %i.mc = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.md = load <2 x i64>, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %i.ly, i64 48, i1 false), !tbaa.struct !473
  %i.me = load <2 x i64>, ptr %2, align 16, !tbaa !24, !alias.scope !746
  %i.mf = and <2 x i64> %i.me, %i.lz
  store <2 x i64> %i.mf, ptr %2, align 16, !tbaa !24, !alias.scope !746
  %i.mg = load <2 x i64>, ptr %i.ma, align 16, !tbaa !24, !alias.scope !746
  %i.mh = and <2 x i64> %i.mg, %i.mb
  store <2 x i64> %i.mh, ptr %i.ma, align 16, !tbaa !24, !alias.scope !746
  %i.mi = load <2 x i64>, ptr %i.mc, align 16, !tbaa !24, !alias.scope !746
  %i.mj = and <2 x i64> %i.mi, %i.md
  store <2 x i64> %i.mj, ptr %i.mc, align 16, !tbaa !24, !alias.scope !746
  %bcmp.i.i.i.i.i.i.i = call i32 @bcmp(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %i.ly, i64 48)
  %.not9.i.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %.not9.i.i.i.i.i.i.i, label %_ZL21getMClassRegisterMaskN4llvm9StringRefEPKNS_12ARMSubtargetE.exit, label %_ZL21getMClassRegisterMaskN4llvm9StringRefEPKNS_12ARMSubtargetE.exit.thread

_ZL21getMClassRegisterMaskN4llvm9StringRefEPKNS_12ARMSubtargetE.exit: ; preds = %bb.ay
  %i.mk = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  %i.ml = load i16, ptr %i.mk, align 8, !tbaa !545
  %i.mm = and i16 %i.ml, 4095
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  %i.mn = load ptr, ptr %i.aj, align 8, !tbaa !314
  %i.mo = zext nneg i16 %i.mm to i64
  %i.mp = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.mn, i64 noundef %i.mo, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract22 = extractvalue { ptr, i32 } %i.mp, 0
  %.fca.1.extract23 = extractvalue { ptr, i32 } %i.mp, 1
  store ptr %.fca.0.extract22, ptr %17, align 16
  %.sroa.225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i32 %.fca.1.extract23, ptr %.sroa.225.0..sroa_idx, align 8
  %i.mq = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.mr = load ptr, ptr %i.c, align 8, !tbaa !327
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.mq, ptr noundef nonnull align 8 dereferenceable(12) %i.ms, i64 12, i1 false), !tbaa.struct !357
  %i.mt = getelementptr inbounds nuw i8, ptr %17, i64 32
  %i.mu = load ptr, ptr %i.aj, align 8, !tbaa !314
  %i.mv = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.mu, i64 noundef 14, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract18 = extractvalue { ptr, i32 } %i.mv, 0
  %.fca.1.extract19 = extractvalue { ptr, i32 } %i.mv, 1
  store ptr %.fca.0.extract18, ptr %i.mt, align 16
  %.sroa.221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 40
  store i32 %.fca.1.extract19, ptr %.sroa.221.0..sroa_idx, align 8
  %i.mw = getelementptr inbounds nuw i8, ptr %17, i64 48
  %i.mx = load ptr, ptr %i.aj, align 8, !tbaa !314
  %i.my = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.mx, i32 0, i16 7, ptr null) #24 ; 2 uses
  %.fca.0.extract14 = extractvalue { ptr, i32 } %i.my, 0
  %.fca.1.extract15 = extractvalue { ptr, i32 } %i.my, 1
  store ptr %.fca.0.extract14, ptr %i.mw, align 16
  %.sroa.217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 56
  store i32 %.fca.1.extract15, ptr %.sroa.217.0..sroa_idx, align 8
  %i.mz = getelementptr inbounds nuw i8, ptr %17, i64 64
  %i.na = load ptr, ptr %i.c, align 8, !tbaa !327
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.mz, ptr noundef nonnull align 8 dereferenceable(12) %i.na, i64 12, i1 false), !tbaa.struct !357
  %i.nb = load ptr, ptr %i.aj, align 8, !tbaa !314
  store ptr %17, ptr %18, align 8, !tbaa !361
  %i.nc = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 5, ptr %i.nc, align 8, !tbaa !362
  %i.nd = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.nb, i32 noundef 4214, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 1, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %18) #24 ; 2 uses
  %i.ne = load ptr, ptr %i.aj, align 8, !tbaa !314
  call void @_ZN4llvm12SelectionDAG18ReplaceAllUsesWithEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(920) %i.ne, ptr noundef nonnull %1, ptr noundef %i.nd) #24
  call void @_ZN4llvm16SelectionDAGISel22EnforceNodeIdInvariantEPNS_6SDNodeE(ptr noundef %i.nd) #24
  %i.nf = load ptr, ptr %i.aj, align 8, !tbaa !314
  call void @_ZN4llvm12SelectionDAG14RemoveDeadNodeEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(920) %i.nf, ptr noundef nonnull %1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  br label %_ZL21getMClassRegisterMaskN4llvm9StringRefEPKNS_12ARMSubtargetE.exit.thread

bb.az:                                            ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit
  %i.ng = load ptr, ptr %16, align 8, !tbaa !536  ; 4 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ni = load i64, ptr %i.nh, align 8, !tbaa !537
  %cond.i = icmp eq i64 %i.ni, 4
  br i1 %cond.i, label %_ZN4llvmeqENS_9StringRefES0_.exit.i, label %_ZL21getMClassRegisterMaskN4llvm9StringRefEPKNS_12ARMSubtargetE.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit.i:              ; preds = %bb.az
  %i.nj = load i32, ptr %i.ng, align 1
  %i.nk = icmp ne i32 %i.nj, 1920168033
  %i.nl = zext i1 %i.nk to i32
  %i.nm = icmp eq i32 %i.nl, 0
  br i1 %i.nm, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i, label %_ZN4llvmneENS_9StringRefES0_.exit.i

_ZN4llvmeqENS_9StringRefES0_.exit.thread.i:       ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i
  switch i64 %.sroa.9.0, label %_ZL21getMClassRegisterMaskN4llvm9StringRefEPKNS_12ARMSubtargetE.exit.thread [
    i64 0, label %_ZL22getARClassRegisterMaskN4llvm9StringRefES0_.exit.thread345
    i64 1, label %bb.ba
    i64 5, label %bb.bb
    i64 6, label %bb.bc
  ]

bb.ba:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i
  %lhsc.i.i = load i8, ptr %.sroa.6.0, align 1
  %.not.i.i.i.i160 = icmp eq i8 %lhsc.i.i, 103
  br i1 %.not.i.i.i.i160, label %_ZL22getARClassRegisterMaskN4llvm9StringRefES0_.exit.thread345, label %_ZL21getMClassRegisterMaskN4llvm9StringRefEPKNS_12ARMSubtargetE.exit.thread

bb.bb:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i
  %i.nn = load i32, ptr %.sroa.6.0, align 1
  %i.no = xor i32 %i.nn, 1986230894
  %i.np = getelementptr i8, ptr %.sroa.6.0, i64 4
  %i.nq = load i8, ptr %i.np, align 1
  %i.nr = zext i8 %i.nq to i32
  %i.ns = xor i32 %i.nr, 113
  %i.nt = or i32 %i.no, %i.ns
  %i.nu = icmp ne i32 %i.nt, 0
  %i.nv = zext i1 %i.nu to i32
  %.not.i.i13.i.i = icmp eq i32 %i.nv, 0
  br i1 %.not.i.i13.i.i, label %_ZL22getARClassRegisterMaskN4llvm9StringRefES0_.exit.thread345, label %_ZL21getMClassRegisterMaskN4llvm9StringRefEPKNS_12ARMSubtargetE.exit.thread

bb.bc:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i
  %i.nw = load i32, ptr %.sroa.6.0, align 1
  %i.nx = xor i32 %i.nw, 1986230894
  %i.ny = getelementptr i8, ptr %.sroa.6.0, i64 4
  %i.nz = load i16, ptr %i.ny, align 1
  %i.oa = zext i16 %i.nz to i32
  %i.ob = xor i32 %i.oa, 26481
  %i.oc = or i32 %i.nx, %i.ob
  %i.od = icmp ne i32 %i.oc, 0
  %i.oe = zext i1 %i.od to i32
  %.not.i.i21.i.i = icmp eq i32 %i.oe, 0
  br i1 %.not.i.i21.i.i, label %_ZL22getARClassRegisterMaskN4llvm9StringRefES0_.exit.thread345, label %_ZL21getMClassRegisterMaskN4llvm9StringRefEPKNS_12ARMSubtargetE.exit.thread

_ZN4llvmneENS_9StringRefES0_.exit.i:              ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i
  %i.of = load i32, ptr %i.ng, align 1
  %i.og = icmp ne i32 %i.of, 1920168035
  %i.oh = zext i1 %i.og to i32
  %.not94.i = icmp eq i32 %i.oh, 0
  br i1 %.not94.i, label %_ZN4llvmneENS_9StringRefES0_.exit.thread80.i, label %_ZN4llvmneENS_9StringRefES0_.exit54.i

_ZN4llvmneENS_9StringRefES0_.exit54.i:            ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i
  %i.oi = load i32, ptr %i.ng, align 1
  %i.oj = icmp ne i32 %i.oi, 1920168051
  %i.ok = zext i1 %i.oj to i32
  %.not95.i = icmp eq i32 %i.ok, 0
  br i1 %.not95.i, label %_ZN4llvmneENS_9StringRefES0_.exit.thread80.i, label %_ZL21getMClassRegisterMaskN4llvm9StringRefEPKNS_12ARMSubtargetE.exit.thread

_ZN4llvmneENS_9StringRefES0_.exit.thread80.i:     ; preds = %_ZN4llvmneENS_9StringRefES0_.exit54.i, %_ZN4llvmneENS_9StringRefES0_.exit.i
  switch i64 %.sroa.9.0, label %.lr.ph.preheader.i [
    i64 0, label %_ZL22getARClassRegisterMaskN4llvm9StringRefES0_.exit.thread345
    i64 3, label %_ZN4llvmeqENS_9StringRefES0_.exit58.i
  ]

_ZN4llvmeqENS_9StringRefES0_.exit58.i:            ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread80.i
  %i.ol = load i16, ptr %.sroa.6.0, align 1
  %i.om = xor i16 %i.ol, 27745
  %i.on = getelementptr i8, ptr %.sroa.6.0, i64 2
  %i.oo = load i8, ptr %i.on, align 1
  %i.op = zext i8 %i.oo to i16
  %i.oq = xor i16 %i.op, 108
  %i.or = or i16 %i.om, %i.oq
  %i.os = icmp ne i16 %i.or, 0
  %i.ot = zext i1 %i.os to i32
  %i.ou = icmp eq i32 %i.ot, 0
  br i1 %i.ou, label %_ZL22getARClassRegisterMaskN4llvm9StringRefES0_.exit.thread345, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit58.i, %_ZN4llvmneENS_9StringRefES0_.exit.thread80.i
  %i.ov = getelementptr inbounds nuw i8, ptr %.sroa.6.0, i64 %.sroa.9.0
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bd, %.lr.ph.preheader.i
  %.036100.i = phi i32 [ %i.pa, %bb.bd ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.04199.i = phi ptr [ %i.pb, %bb.bd ], [ %.sroa.6.0, %.lr.ph.preheader.i ] ; 2 uses
  %i.ow = load i8, ptr %.04199.i, align 1, !tbaa !343
  %switch.tableidx = add i8 %i.ow, -99            ; 3 uses
  %i.ox = icmp ult i8 %switch.tableidx, 22
  br i1 %i.ox, label %switch.hole_check, label %_ZL21getMClassRegisterMaskN4llvm9StringRefEPKNS_12ARMSubtargetE.exit.thread

switch.hole_check:                                ; preds = %.lr.ph.i
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 2162697, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %_ZL21getMClassRegisterMaskN4llvm9StringRefEPKNS_12ARMSubtargetE.exit.thread

switch.lookup:                                    ; preds = %switch.hole_check
  %i.oy = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN12_GLOBAL__N_115ARMDAGToDAGISel16tryWriteRegisterEPN4llvm6SDNodeE, i64 %i.oy
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32       ; 2 uses
  %i.oz = and i32 %.036100.i, %switch.ext
  %.not46.i = icmp eq i32 %i.oz, 0
  br i1 %.not46.i, label %bb.bd, label %_ZL21getMClassRegisterMaskN4llvm9StringRefEPKNS_12ARMSubtargetE.exit.thread

bb.bd:                                            ; preds = %switch.lookup
  %i.pa = or i32 %.036100.i, %switch.ext          ; 3 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %.04199.i, i64 1 ; 2 uses
  %.not.i158 = icmp eq ptr %i.pb, %i.ov
  br i1 %.not.i158, label %_ZL22getARClassRegisterMaskN4llvm9StringRefES0_.exit.a, label %.lr.ph.i

_ZL22getARClassRegisterMaskN4llvm9StringRefES0_.exit.a: ; preds = %bb.bd
  %i.pc = load i32, ptr %i.ng, align 1
  %i.pd = icmp ne i32 %i.pc, 1920168051
  %i.pe = zext i1 %i.pd to i32
  %bcmp.i61.fr.i = freeze i32 %i.pe
  %i.pf = icmp eq i32 %bcmp.i61.fr.i, 0
  %i.pg = or i32 %i.pa, 16
  %spec.select.i159 = select i1 %i.pf, i32 %i.pg, i32 %i.pa
  %21 = sext i32 %spec.select.i159 to i64
  br label %_ZL22getARClassRegisterMaskN4llvm9StringRefES0_.exit.thread345

_ZL22getARClassRegisterMaskN4llvm9StringRefES0_.exit.thread345: ; preds = %bb.bb, %bb.bc, %bb.ba, %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i, %_ZL22getARClassRegisterMaskN4llvm9StringRefES0_.exit.a, %_ZN4llvmeqENS_9StringRefES0_.exit58.i, %_ZN4llvmneENS_9StringRefES0_.exit.thread80.i
  %.3.i348 = phi i64 [ %21, %_ZL22getARClassRegisterMaskN4llvm9StringRefES0_.exit.a ], [ 9, %_ZN4llvmeqENS_9StringRefES0_.exit58.i ], [ 9, %_ZN4llvmneENS_9StringRefES0_.exit.thread80.i ], [ 12, %bb.bc ], [ 8, %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i ], [ 4, %bb.ba ], [ 8, %bb.bb ]
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  %i.ph = load ptr, ptr %i.aj, align 8, !tbaa !314
  %i.pi = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.ph, i64 noundef %.3.i348, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract5 = extractvalue { ptr, i32 } %i.pi, 0
  %.fca.1.extract6 = extractvalue { ptr, i32 } %i.pi, 1
  store ptr %.fca.0.extract5, ptr %19, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i32 %.fca.1.extract6, ptr %.sroa.28.0..sroa_idx, align 8
  %i.pj = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.pk = load ptr, ptr %i.c, align 8, !tbaa !327
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.pj, ptr noundef nonnull align 8 dereferenceable(12) %i.pl, i64 12, i1 false), !tbaa.struct !357
  %i.pm = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.pn = load ptr, ptr %i.aj, align 8, !tbaa !314
  %i.po = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.pn, i64 noundef 14, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract1 = extractvalue { ptr, i32 } %i.po, 0
  %.fca.1.extract2 = extractvalue { ptr, i32 } %i.po, 1
  store ptr %.fca.0.extract1, ptr %i.pm, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 40
  store i32 %.fca.1.extract2, ptr %.sroa.24.0..sroa_idx, align 8
  %i.pp = getelementptr inbounds nuw i8, ptr %19, i64 48
  %i.pq = load ptr, ptr %i.aj, align 8, !tbaa !314
  %i.pr = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.pq, i32 0, i16 7, ptr null) #24 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.pr, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.pr, 1
  store ptr %.fca.0.extract, ptr %i.pp, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 56
  store i32 %.fca.1.extract, ptr %.sroa.2.0..sroa_idx, align 8
  %i.ps = getelementptr inbounds nuw i8, ptr %19, i64 64
  %i.pt = load ptr, ptr %i.c, align 8, !tbaa !327
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ps, ptr noundef nonnull align 8 dereferenceable(12) %i.pt, i64 12, i1 false), !tbaa.struct !357
  %i.pu = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !481
  %i.pw = load ptr, ptr %6, align 8, !tbaa !482   ; 7 uses
  %i.px = ptrtoint ptr %i.pv to i64
  %i.py = ptrtoint ptr %i.pw to i64               ; 3 uses
  %i.pz = sub i64 %i.px, %i.py
  %i.qa = icmp ult i64 %i.pz, 80
  br i1 %i.qa, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %_ZL22getARClassRegisterMaskN4llvm9StringRefES0_.exit.thread345
  %i.qb = call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #26 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.qb, ptr noundef nonnull align 8 dereferenceable(80) %19, i64 80, i1 false)
  %i.qc = load ptr, ptr %6, align 8, !tbaa !482   ; 3 uses
  %.not.i.i197 = icmp eq ptr %i.qc, null
  br i1 %.not.i.i197, label %_ZNSt12_Vector_baseIN4llvm7SDValueESaIS1_EE13_M_deallocateEPS1_m.exit.i198, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.qd = load ptr, ptr %i.pu, align 8, !tbaa !481
  %i.qe = ptrtoint ptr %i.qd to i64
  %i.qf = ptrtoint ptr %i.qc to i64
  %i.qg = sub i64 %i.qe, %i.qf
  call void @_ZdlPvm(ptr noundef nonnull %i.qc, i64 noundef %i.qg) #27
  br label %_ZNSt12_Vector_baseIN4llvm7SDValueESaIS1_EE13_M_deallocateEPS1_m.exit.i198

_ZNSt12_Vector_baseIN4llvm7SDValueESaIS1_EE13_M_deallocateEPS1_m.exit.i198: ; preds = %bb.bf, %bb.be
  store ptr %i.qb, ptr %6, align 8, !tbaa !482
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qb, i64 80 ; 3 uses
  store ptr %i.qh, ptr %i.am, align 8, !tbaa !480
  store ptr %i.qh, ptr %i.pu, align 8, !tbaa !481
  br label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE13_M_assign_auxIPKS1_EEvT_S7_St20forward_iterator_tag.exit199

bb.bg:                                            ; preds = %_ZL22getARClassRegisterMaskN4llvm9StringRefES0_.exit.thread345
  %i.qi = load ptr, ptr %i.am, align 8, !tbaa !480 ; 3 uses
  %i.qj = ptrtoint ptr %i.qi to i64               ; 2 uses
  %i.qk = sub i64 %i.qj, %i.py                    ; 5 uses
  %.not.i185 = icmp ult i64 %i.qk, 80
  br i1 %.not.i185, label %_ZSt9__advanceIPKN4llvm7SDValueElEvRT_T0_St26random_access_iterator_tag.exit.i187, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.pw, ptr noundef nonnull align 8 dereferenceable(80) %19, i64 80, i1 false)
  %i.ql = getelementptr inbounds nuw i8, ptr %i.pw, i64 80 ; 3 uses
  %.not.i16.i186 = icmp eq ptr %i.qi, %i.ql
  br i1 %.not.i16.i186, label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE13_M_assign_auxIPKS1_EEvT_S7_St20forward_iterator_tag.exit199, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  store ptr %i.ql, ptr %i.am, align 8, !tbaa !480
  br label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE13_M_assign_auxIPKS1_EEvT_S7_St20forward_iterator_tag.exit199

_ZSt9__advanceIPKN4llvm7SDValueElEvRT_T0_St26random_access_iterator_tag.exit.i187: ; preds = %bb.bg
  %i.qm = icmp samesign ugt i64 %i.qk, 16
  br i1 %i.qm, label %bb.bj, label %bb.bk, !prof !541

bb.bj:                                            ; preds = %_ZSt9__advanceIPKN4llvm7SDValueElEvRT_T0_St26random_access_iterator_tag.exit.i187
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.pw, ptr nonnull align 8 %19, i64 %i.qk, i1 false)
  br label %_ZSt4copyIPKN4llvm7SDValueEPS1_ET0_T_S6_S5_.exit17.i189

bb.bk:                                            ; preds = %_ZSt9__advanceIPKN4llvm7SDValueElEvRT_T0_St26random_access_iterator_tag.exit.i187
  %i.qn = icmp eq i64 %i.qk, 16
  br i1 %i.qn, label %bb.bl, label %_ZSt4copyIPKN4llvm7SDValueEPS1_ET0_T_S6_S5_.exit17.i189

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.pw, ptr noundef nonnull align 8 dereferenceable(12) %19, i64 12, i1 false), !tbaa.struct !357
  br label %_ZSt4copyIPKN4llvm7SDValueEPS1_ET0_T_S6_S5_.exit17.i189

_ZSt4copyIPKN4llvm7SDValueEPS1_ET0_T_S6_S5_.exit17.i189: ; preds = %bb.bl, %bb.bk, %bb.bj
  %i.qo = load ptr, ptr %i.am, align 8, !tbaa !480 ; 2 uses
  %scevgep368 = getelementptr i8, ptr %19, i64 %i.qk
  %i.qp = add i64 %i.py, 64
  %i.qq = sub i64 %i.qp, %i.qj
  %i.qr = and i64 %i.qq, -16
  %i.qs = add i64 %i.qr, 16                       ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.qo, ptr align 8 %scevgep368, i64 %i.qs, i1 false)
  %scevgep369 = getelementptr i8, ptr %i.qo, i64 %i.qs ; 2 uses
  store ptr %scevgep369, ptr %i.am, align 8, !tbaa !480
  %.pre372 = load ptr, ptr %6, align 8, !tbaa !482
  br label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE13_M_assign_auxIPKS1_EEvT_S7_St20forward_iterator_tag.exit199

_ZNSt6vectorIN4llvm7SDValueESaIS1_EE13_M_assign_auxIPKS1_EEvT_S7_St20forward_iterator_tag.exit199: ; preds = %_ZNSt12_Vector_baseIN4llvm7SDValueESaIS1_EE13_M_deallocateEPS1_m.exit.i198, %bb.bh, %bb.bi, %_ZSt4copyIPKN4llvm7SDValueEPS1_ET0_T_S6_S5_.exit17.i189
  %i.qt = phi ptr [ %i.qh, %_ZNSt12_Vector_baseIN4llvm7SDValueESaIS1_EE13_M_deallocateEPS1_m.exit.i198 ], [ %i.qi, %bb.bh ], [ %i.ql, %bb.bi ], [ %scevgep369, %_ZSt4copyIPKN4llvm7SDValueEPS1_ET0_T_S6_S5_.exit17.i189 ]
  %i.qu = phi ptr [ %i.qb, %_ZNSt12_Vector_baseIN4llvm7SDValueESaIS1_EE13_M_deallocateEPS1_m.exit.i198 ], [ %i.pw, %bb.bh ], [ %i.pw, %bb.bi ], [ %.pre372, %_ZSt4copyIPKN4llvm7SDValueEPS1_ET0_T_S6_S5_.exit17.i189 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  %i.qv = load ptr, ptr %i.aj, align 8, !tbaa !314
  %i.qw = select i1 %i.aa, i32 4213, i32 1018
  store ptr %i.qu, ptr %20, align 8, !tbaa !361
  %i.qx = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.qy = ptrtoint ptr %i.qt to i64
  %i.qz = ptrtoint ptr %i.qu to i64
  %i.ra = sub i64 %i.qy, %i.qz
  %i.rb = ashr exact i64 %i.ra, 4
  store i64 %i.rb, ptr %i.qx, align 8, !tbaa !362
  %i.rc = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.qv, i32 noundef %i.qw, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 1, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %20) #24 ; 2 uses
  %i.rd = load ptr, ptr %i.aj, align 8, !tbaa !314
  call void @_ZN4llvm12SelectionDAG18ReplaceAllUsesWithEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(920) %i.rd, ptr noundef nonnull %1, ptr noundef %i.rc) #24
  call void @_ZN4llvm16SelectionDAGISel22EnforceNodeIdInvariantEPNS_6SDNodeE(ptr noundef %i.rc) #24
  %i.re = load ptr, ptr %i.aj, align 8, !tbaa !314
  call void @_ZN4llvm12SelectionDAG14RemoveDeadNodeEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(920) %i.re, ptr noundef nonnull %1) #24
  br label %_ZL21getMClassRegisterMaskN4llvm9StringRefEPKNS_12ARMSubtargetE.exit.thread

_ZL21getMClassRegisterMaskN4llvm9StringRefEPKNS_12ARMSubtargetE.exit.thread: ; preds = %switch.lookup, %.lr.ph.i, %switch.hole_check, %bb.bc, %bb.bb, %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i, %bb.ba, %_ZN4llvmneENS_9StringRefES0_.exit54.i, %bb.az, %bb.ax, %bb.ay, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE13_M_assign_auxIPKS1_EEvT_S7_St20forward_iterator_tag.exit199, %_ZL21getMClassRegisterMaskN4llvm9StringRefEPKNS_12ARMSubtargetE.exit
  %.2 = phi i1 [ true, %_ZL21getMClassRegisterMaskN4llvm9StringRefEPKNS_12ARMSubtargetE.exit ], [ false, %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i ], [ false, %bb.ba ], [ true, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE13_M_assign_auxIPKS1_EEvT_S7_St20forward_iterator_tag.exit199 ], [ false, %bb.ax ], [ false, %bb.ay ], [ false, %bb.az ], [ false, %_ZN4llvmneENS_9StringRefES0_.exit54.i ], [ false, %bb.bc ], [ false, %bb.bb ], [ false, %switch.hole_check ], [ false, %.lr.ph.i ], [ false, %switch.lookup ]
  %i.rf = load ptr, ptr %16, align 8, !tbaa !536  ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.rh = icmp eq ptr %i.rf, %i.rg
  br i1 %i.rh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZL21getMClassRegisterMaskN4llvm9StringRefEPKNS_12ARMSubtargetE.exit.thread
  %i.ri = load i64, ptr %i.rg, align 8, !tbaa !343
  %i.rj = add i64 %i.ri, 1
  call void @_ZdlPvm(ptr noundef %i.rf, i64 noundef %i.rj) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZL21getMClassRegisterMaskN4llvm9StringRefEPKNS_12ARMSubtargetE.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br label %bb.bm

bb.bm:                                            ; preds = %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE13_M_assign_auxIPKS1_EEvT_S7_St20forward_iterator_tag.exit184, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit153, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE13_M_assign_auxIPKS1_EEvT_S7_St20forward_iterator_tag.exit
  %.4 = phi i1 [ true, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE13_M_assign_auxIPKS1_EEvT_S7_St20forward_iterator_tag.exit ], [ true, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE13_M_assign_auxIPKS1_EEvT_S7_St20forward_iterator_tag.exit184 ], [ %.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit153 ]
  %i.rk = load ptr, ptr %9, align 8, !tbaa !536   ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.rm = icmp eq ptr %i.rk, %i.rl
  br i1 %i.rm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161: ; preds = %bb.bm
  %i.rn = load i64, ptr %i.rl, align 8, !tbaa !343
  %i.ro = add i64 %i.rn, 1
  call void @_ZdlPvm(ptr noundef %i.rk, i64 noundef %i.ro) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.bn

bb.bn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit
  %.5 = phi i1 [ %.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163 ], [ true, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit ]
  %i.rp = load ptr, ptr %6, align 8, !tbaa !482   ; 3 uses
  %.not.i.i.i164 = icmp eq ptr %i.rp, null
  br i1 %.not.i.i.i164, label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EED2Ev.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.rq = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !481
  %i.rs = ptrtoint ptr %i.rr to i64
  %i.rt = ptrtoint ptr %i.rp to i64
  %i.ru = sub i64 %i.rs, %i.rt
  call void @_ZdlPvm(ptr noundef nonnull %i.rp, i64 noundef %i.ru) #27
  br label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EED2Ev.exit

_ZNSt6vectorIN4llvm7SDValueESaIS1_EED2Ev.exit:    ; preds = %bb.bn, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret i1 %.5
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115ARMDAGToDAGISel15tryReadRegisterEPN4llvm6SDNodeE(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr noundef %1) unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.llvm::FeatureBitset", align 16 ; 8 uses
  %3 = alloca %"class.llvm::StringRef", align 8   ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.llvm::SDLoc", align 8       ; 19 uses
  %6 = alloca %"class.std::vector.403", align 8   ; 20 uses
  %7 = alloca %"class.llvm::SmallVector.432", align 8 ; 8 uses
  %8 = alloca %"class.llvm::ArrayRef", align 8    ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %.sroa.10 = alloca [16 x i8], align 4           ; 5 uses
  %11 = alloca %"struct.llvm::EVT", align 8       ; 3 uses
  %12 = alloca %"class.llvm::ArrayRef", align 8   ; 3 uses
  %.sroa.8523 = alloca [16 x i8], align 4         ; 5 uses
  %13 = alloca %"struct.llvm::EVT", align 8       ; 3 uses
  %14 = alloca %"class.llvm::ArrayRef", align 8   ; 3 uses
  %15 = alloca [4 x %"class.llvm::SDValue"], align 16 ; 10 uses
  %16 = alloca %"struct.llvm::EVT", align 8       ; 3 uses
  %17 = alloca %"class.llvm::ArrayRef", align 8   ; 3 uses
  %.sroa.8 = alloca [16 x i8], align 4            ; 5 uses
  %18 = alloca %"struct.llvm::EVT", align 8       ; 3 uses
  %19 = alloca %"class.llvm::ArrayRef", align 8   ; 3 uses
  %20 = alloca [3 x %"class.llvm::SDValue"], align 8 ; 9 uses
  %21 = alloca %"struct.llvm::EVT", align 8       ; 3 uses
  %22 = alloca %"class.llvm::ArrayRef", align 8   ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !327
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !332
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !531  ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = and i64 %i.h, 2
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds i8, ptr %i.f, i64 -32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !18
  br label %_ZNK4llvm6MDNode10getOperandEj.exit

bb.c:                                             ; preds = %bb.a
  %i.l = lshr i64 %i.h, 2
  %i.m = and i64 %i.l, 15
  %i.n = sub nsw i64 0, %i.m
  %i.o = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.n
  br label %_ZNK4llvm6MDNode10getOperandEj.exit

_ZNK4llvm6MDNode10getOperandEj.exit:              ; preds = %bb.b, %bb.c
  %.sroa.0.0.i.i = phi ptr [ %i.o, %bb.c ], [ %i.k, %bb.b ]
  %i.p = load ptr, ptr %.sroa.0.0.i.i, align 8, !tbaa !534 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !194  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 461
  %i.t = load i8, ptr %i.s, align 1, !tbaa !313, !range !15, !noundef !16
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 410
  %i.w = load i8, ptr %i.v, align 2, !range !15
  %i.x = trunc nuw i8 %i.w to i1
  %i.y = select i1 %i.u, i1 %i.x, i1 false        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !353
  store i64 %i.aa, ptr %5, align 8, !tbaa !353
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !354
  store i32 %i.ad, ptr %i.ab, align 8, !tbaa !356
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.ae = tail call { ptr, i64 } @_ZNK4llvm8MDString9getStringEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #24 ; 2 uses
  %i.af = extractvalue { ptr, i64 } %i.ae, 0
  %i.ag = extractvalue { ptr, i64 } %i.ae, 1
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 31 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !314
  call fastcc void @_ZL32getIntOperandsFromRegisterStringN4llvm9StringRefEPNS_12SelectionDAGERKNS_5SDLocERSt6vectorINS_7SDValueESaIS7_EE(ptr %i.af, i64 %i.ag, ptr noundef %i.ai, ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
  %i.aj = load ptr, ptr %6, align 8, !tbaa !535   ; 18 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 12 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !535 ; 27 uses
  %i.am = icmp eq ptr %i.aj, %i.al
  br i1 %i.am, label %bb.s, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm6MDNode10getOperandEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.an, ptr %7, align 8, !tbaa !18
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 3, ptr %i.ap, align 4, !tbaa !459
  %i.aq = ptrtoint ptr %i.al to i64
  %i.ar = ptrtoint ptr %i.aj to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 6 uses
  %i.at = icmp eq i64 %i.as, 80
  br i1 %i.at, label %_ZN4llvm15SmallVectorImplINS_3EVTEE6appendESt16initializer_listIS1_E.exit, label %_ZN4llvm15SmallVectorImplINS_3EVTEE6appendESt16initializer_listIS1_E.exit105

_ZN4llvm15SmallVectorImplINS_3EVTEE6appendESt16initializer_listIS1_E.exit: ; preds = %bb.d
  %i.au = select i1 %i.y, i32 4205, i32 1011
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.an, ptr noundef nonnull align 8 dereferenceable(32) @constinit.29, i64 32, i1 false)
  br label %bb.e

_ZN4llvm15SmallVectorImplINS_3EVTEE6appendESt16initializer_listIS1_E.exit105: ; preds = %bb.d
  %i.av = select i1 %i.y, i32 4207, i32 1013
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.an, ptr noundef nonnull align 8 dereferenceable(48) @constinit.30, i64 48, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_3EVTEE6appendESt16initializer_listIS1_E.exit105, %_ZN4llvm15SmallVectorImplINS_3EVTEE6appendESt16initializer_listIS1_E.exit
  %storemerge = phi i32 [ 3, %_ZN4llvm15SmallVectorImplINS_3EVTEE6appendESt16initializer_listIS1_E.exit105 ], [ 2, %_ZN4llvm15SmallVectorImplINS_3EVTEE6appendESt16initializer_listIS1_E.exit ]
  %.097 = phi i32 [ %i.av, %_ZN4llvm15SmallVectorImplINS_3EVTEE6appendESt16initializer_listIS1_E.exit105 ], [ %i.au, %_ZN4llvm15SmallVectorImplINS_3EVTEE6appendESt16initializer_listIS1_E.exit ]
  store i32 %storemerge, ptr %i.ao, align 8, !tbaa !460
  %i.aw = load ptr, ptr %i.ah, align 8, !tbaa !314
  %i.ax = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.aw, i64 noundef 14, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract63 = extractvalue { ptr, i32 } %i.ax, 0 ; 2 uses
  %.fca.1.extract64 = extractvalue { ptr, i32 } %i.ax, 1 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !481 ; 2 uses
  %.not.i.i106 = icmp eq ptr %i.al, %i.az
  br i1 %.not.i.i106, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %.fca.0.extract63, ptr %i.al, align 8, !tbaa !329
  %.sroa.5311.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i32 %.fca.1.extract64, ptr %.sroa.5311.0..sroa_idx, align 8, !tbaa !330
  %i.ba = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  br label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backEOS1_.exit

bb.g:                                             ; preds = %bb.e
  %i.bb = icmp eq i64 %i.as, 9223372036854775792
  br i1 %i.bb, label %bb.h, label %.lr.ph.i.i.i.i.i.i.preheader

bb.h:                                             ; preds = %bb.g
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #25
  unreachable

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.g
  %i.bc = ashr exact i64 %i.as, 4
  %i.bd = ashr exact i64 %i.as, 3                 ; 2 uses
  %i.be = icmp ult i64 %i.bd, %i.bc
  %i.bf = call i64 @llvm.umin.i64(i64 %i.bd, i64 576460752303423487)
  %i.bg = select i1 %i.be, i64 576460752303423487, i64 %i.bf ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #26 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.as ; 2 uses
  store ptr %.fca.0.extract63, ptr %i.bj, align 8, !tbaa !329
  %.sroa.5311.0..sroa_idx312 = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
end_hunk_0
