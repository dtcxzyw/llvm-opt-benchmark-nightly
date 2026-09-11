Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RISCVRegisterInfo?download=true
inline.NumInlined: 1780
inline.NumDeleted: 867
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %i.b, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %i.c, 1
  ret { ptr, ptr } %.fca.1.insert
}

declare void @_ZNK4llvm14RISCVInstrInfo6mulImmERNS_15MachineFunctionERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocENS_8RegisterEjNS6_6MIFlagE(ptr noundef nonnull align 8 dereferenceable(440), ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef nonnull align 8 dereferenceable(360), ptr, ptr noundef nonnull align 8 dereferenceable(8), i32, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZNK4llvm14RISCVInstrInfo6movImmERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocENS_8RegisterEmNS4_6MIFlagEbb(ptr noundef nonnull align 8 dereferenceable(440), ptr noundef nonnull align 8 dereferenceable(360), ptr, ptr noundef nonnull align 8 dereferenceable(8), i32, i64 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm17RISCVRegisterInfo23lowerSegmentSpillReloadENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEb(ptr noundef nonnull align 8 dereferenceable(316) %0, ptr %1, i1 noundef zeroext %2) local_unnamed_addr #4 align 2 {
bb.a:
  %3 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %4 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %5 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %6 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %7 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %8 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %9 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %10 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %11 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %12 = alloca %"class.llvm::DebugLoc", align 8   ; 9 uses
  %13 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %14 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %15 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %16 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !389
  store i64 %i.b, ptr %12, align 8, !tbaa !389
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !403  ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !385  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !386  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !179, !nonnull !180, !align !181 ; 9 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !50
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef ptr %i.m(ptr noundef nonnull align 8 dereferenceable(519768) %i.j) #24
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !50
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 200
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef ptr %i.q(ptr noundef nonnull align 8 dereferenceable(519768) %i.j) #24
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.t = load i32, ptr %i.s, align 4, !tbaa !404
  %i.u = tail call { i64, i8 } @_ZN4llvm5RISCV20isRVVSpillForZvlssegEj(i32 noundef %i.t) #24
  %.fca.0.extract82 = extractvalue { i64, i8 } %i.u, 0 ; 2 uses
  %.sroa.0187.0.extract.trunc = trunc i64 %.fca.0.extract82 to i32
  %.sroa.0187.4.extract.shift = lshr i64 %.fca.0.extract82, 32
  %.sroa.0187.4.extract.trunc = trunc nuw i64 %.sroa.0187.4.extract.shift to i32
  %i.v = mul i32 %.sroa.0187.4.extract.trunc, %.sroa.0187.0.extract.trunc ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !405  ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !12   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 104
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !57
  %i.ac = zext i32 %i.z to i64
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.ac
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !48
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 36
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !12
  %i.ai = load i32, ptr %i.af, align 8            ; 2 uses
  %i.aj = lshr i32 %i.ai, 26
  %i.ak = lshr i32 %i.ai, 24
  %.lobit.i = and i32 %i.ak, 1
  %i.al = xor i32 %.lobit.i, 1
  %i.am = and i32 %i.al, %i.aj
  %i.an = tail call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.h, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN4llvm27RISCVMCRegisterClassStorageE, i64 640), ptr nonnull @.str.50, i64 0) #24 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !12 ; 4 uses
  %i.aq = icmp ugt i64 %i.ap, 7
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = and i64 %i.ap, 7
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.at = inttoptr i64 %i.ap to ptr               ; 2 uses
  store ptr %i.at, ptr %i.ao, align 8, !tbaa !12
  br label %_ZNK4llvm12MachineInstr17memoperands_beginEv.exit

bb.c:                                             ; preds = %bb.a
  %i.au = and i64 %i.ap, -8
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %.pre = load ptr, ptr %i.aw, align 8, !tbaa !619
  br label %_ZNK4llvm12MachineInstr17memoperands_beginEv.exit

_ZNK4llvm12MachineInstr17memoperands_beginEv.exit: ; preds = %bb.b, %bb.c
  %i.ax = phi ptr [ %i.at, %bb.b ], [ %.pre, %bb.c ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load i64, ptr %i.ay, align 8            ; 12 uses
  %i.ba = icmp eq i64 %i.az, 1152921504606846976
  %i.bb = and i64 %i.az, 1152921504606846975
  %i.bc = icmp ne i64 %i.bb, 0
  %i.bd = or i1 %i.ba, %i.bc
  br i1 %i.bd, label %bb.d, label %_ZNK4llvm17MachineMemOperand7getSizeEv.exit

bb.d:                                             ; preds = %_ZNK4llvm12MachineInstr17memoperands_beginEv.exit
  %.mask.i.i.i.i = and i64 %i.az, -1152921504606846976
  %i.be = icmp eq i64 %.mask.i.i.i.i, 4611686018427387904 ; 2 uses
  br i1 %i.be, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bf = lshr i64 %i.az, 60
  %.off.i.i.i.i = add nsw i64 %i.bf, -1
  %switch.i.i.i.i = icmp ult i64 %.off.i.i.i.i, 3
  br i1 %switch.i.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bg = icmp slt i64 %i.az, -8070450532247928832
  %spec.select.i.i.i.i.i = or i1 %i.bg, %i.be
  %i.bh = lshr i64 %i.az, 44
  %i.bi = and i64 %i.bh, 65535
  %i.bj = lshr i64 %i.az, 28
  %i.bk = and i64 %i.bj, 4294967295
  %i.bl = select i1 %spec.select.i.i.i.i.i, i64 %i.bi, i64 %i.bk
  br label %_ZNK4llvm3LLT14getSizeInBytesEv.exit.i

bb.g:                                             ; preds = %bb.e
  %i.bm = lshr i64 %i.az, 4
  %.sroa.0.0.insert.ext.i.i.i.i.i = and i64 %i.bm, 65535
  %i.bn = icmp slt i64 %i.az, -8070450532247928832
  %i.bo = lshr i64 %i.az, 44
  %i.bp = and i64 %i.bo, 65535
  %i.bq = lshr i64 %i.az, 28
  %.0.in.i3.i.i.i = select i1 %i.bn, i64 %i.bp, i64 %i.bq
  %i.br = mul nuw nsw i64 %.0.in.i3.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i.i
  %i.bs = and i64 %i.br, 4294967295
  %.sroa.0.4.extract.trunc.i.i.i = shl i64 %i.az, 62
  %i.bt = and i64 %.sroa.0.4.extract.trunc.i.i.i, 4611686018427387904
  br label %_ZNK4llvm3LLT14getSizeInBytesEv.exit.i

_ZNK4llvm3LLT14getSizeInBytesEv.exit.i:           ; preds = %bb.g, %bb.f
  %.sroa.05.0.i.i.i = phi i64 [ %i.bl, %bb.f ], [ %i.bs, %bb.g ]
  %.sroa.3.0.i.i.i = phi i64 [ 0, %bb.f ], [ %i.bt, %bb.g ]
  %i.bu = add nuw nsw i64 %.sroa.05.0.i.i.i, 7
  %i.bv = lshr i64 %i.bu, 3
  %i.bw = or disjoint i64 %i.bv, %.sroa.3.0.i.i.i
  br label %_ZNK4llvm17MachineMemOperand7getSizeEv.exit

_ZNK4llvm17MachineMemOperand7getSizeEv.exit:      ; preds = %_ZNK4llvm12MachineInstr17memoperands_beginEv.exit, %_ZNK4llvm3LLT14getSizeInBytesEv.exit.i
  %.sroa.03.0.i = phi i64 [ %i.bw, %_ZNK4llvm3LLT14getSizeInBytesEv.exit.i ], [ -1, %_ZNK4llvm12MachineInstr17memoperands_beginEv.exit ] ; 2 uses
  %i.bx = and i64 %.sroa.03.0.i, 4611686018427387903
  %i.by = and i64 %.sroa.03.0.i, 4611686018427387904
  %i.bz = zext i32 %i.v to i64
  %i.ca = udiv i64 %i.bx, %i.bz
  %.not205 = icmp eq i32 %i.v, 0
  br i1 %.not205, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4llvm17MachineMemOperand7getSizeEv.exit
  %.neg204 = select i1 %2, i64 -16596, i64 -16255
  %.neg203 = select i1 %2, i64 -16597, i64 -16259
  %.neg202 = select i1 %2, i64 -16598, i64 -16263
  %.neg = select i1 %2, i64 -16599, i64 -16267
  %i.cb = getelementptr inbounds nuw i8, ptr %i.j, i64 680
  %i.cc = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 5 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.ch = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ck = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.cn = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.co = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.cq = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cu = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cz = select i1 %2, i32 0, i32 16777216
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.df = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.y
  %.0211 = phi i16 [ %i.ae, %.lr.ph ], [ %i.gv, %bb.y ] ; 5 uses
  %.sroa.070.0210 = phi i32 [ %i.ah, %.lr.ph ], [ %.sroa.070.1, %bb.y ] ; 2 uses
  %.0113209 = phi i32 [ 0, %.lr.ph ], [ %.2, %bb.y ] ; 6 uses
  %.0114208 = phi i32 [ 0, %.lr.ph ], [ %.sroa.0159.0.extract.trunc163, %bb.y ] ; 3 uses
  %.0115207 = phi i32 [ 0, %.lr.ph ], [ %i.du, %bb.y ] ; 3 uses
  %.sroa.0168.0206 = phi i32 [ 0, %.lr.ph ], [ %.sroa.0168.3, %bb.y ] ; 4 uses
  %i.dj = sub i32 %i.v, %.0115207                 ; 3 uses
  %i.dk = icmp ugt i32 %i.dj, 7
  %i.dl = and i16 %.0211, 7
  %i.dm = icmp eq i16 %i.dl, 0
  %or.cond.i = and i1 %i.dk, %i.dm
  br i1 %or.cond.i, label %_ZL18getSpillReloadInfojtb.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dn = icmp ugt i32 %i.dj, 3
  %i.do = and i16 %.0211, 3
  %i.dp = icmp eq i16 %i.do, 0
  %or.cond12.i = and i1 %i.dn, %i.dp
  br i1 %or.cond12.i, label %_ZL18getSpillReloadInfojtb.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dq = icmp ugt i32 %i.dj, 1
  %i.dr = and i16 %.0211, 1
  %i.ds = icmp eq i16 %i.dr, 0
  %or.cond14.i = and i1 %i.dq, %i.ds              ; 3 uses
  %.neg203..neg204 = select i1 %or.cond14.i, i64 %.neg203, i64 %.neg204
  %. = select i1 %or.cond14.i, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm27RISCVMCRegisterClassStorageE, i64 6976), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm27RISCVMCRegisterClassStorageE, i64 4416)
  %.212 = zext i1 %or.cond14.i to i8
  br label %_ZL18getSpillReloadInfojtb.exit

_ZL18getSpillReloadInfojtb.exit:                  ; preds = %bb.j, %bb.i, %bb.h
  %.sroa.0165.0.neg = phi i64 [ %.neg202, %bb.i ], [ %.neg, %bb.h ], [ %.neg203..neg204, %bb.j ]
  %.sroa.7167.0 = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm27RISCVMCRegisterClassStorageE, i64 7808), %bb.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm27RISCVMCRegisterClassStorageE, i64 9408), %bb.h ], [ %., %bb.j ] ; 2 uses
  %.sroa.12.0 = phi i8 [ 2, %bb.i ], [ 3, %bb.h ], [ %.212, %bb.j ]
  %i.dt = call i64 @_ZN4llvm10RISCVVType11decodeVLMULENS0_5VLMULE(i8 noundef zeroext %.sroa.12.0) #24 ; 3 uses
  %.sroa.0159.0.extract.trunc163 = trunc i64 %i.dt to i32 ; 2 uses
  %i.du = add i32 %.0115207, %.sroa.0159.0.extract.trunc163 ; 3 uses
  %i.dv = icmp ne i32 %i.du, %i.v                 ; 2 uses
  %.not119 = icmp eq i32 %.0114208, 0
  br i1 %.not119, label %bb.t, label %bb.k

bb.k:                                             ; preds = %_ZL18getSpillReloadInfojtb.exit
  %i.dw = call noundef i32 @_ZNK4llvm14RISCVSubtarget25getMinRVVVectorSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(519768) %i.j) #24 ; 2 uses
  %i.dx = icmp eq i32 %i.dw, 0
  br i1 %i.dx, label %bb.l, label %_ZNK4llvm14RISCVSubtarget11getRealVLenEv.exit

bb.l:                                             ; preds = %bb.k
  %i.dy = load i32, ptr %i.cb, align 8, !tbaa !387
  br label %_ZNK4llvm14RISCVSubtarget11getRealVLenEv.exit

_ZNK4llvm14RISCVSubtarget11getRealVLenEv.exit:    ; preds = %bb.k, %bb.l
  %i.dz = phi i32 [ %i.dy, %bb.l ], [ %i.dw, %bb.k ] ; 2 uses
  %i.ea = call noundef i32 @_ZNK4llvm14RISCVSubtarget25getMaxRVVVectorSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(519768) %i.j) #24 ; 2 uses
  %i.eb = icmp eq i32 %i.ea, 0
  %i.ec = select i1 %i.eb, i32 65536, i32 %i.ea
  %.not.i = icmp eq i32 %i.dz, %i.ec
  br i1 %.not.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNK4llvm14RISCVSubtarget11getRealVLenEv.exit
  %i.ed = lshr i32 %i.dz, 3
  %i.ee = mul i32 %i.ed, %.0114208
  %i.ef = zext i32 %i.ee to i64
  %i.eg = call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.h, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN4llvm27RISCVMCRegisterClassStorageE, i64 640), ptr nonnull @.str.50, i64 0) #24 ; 2 uses
  %i.eh = load ptr, ptr %i.j, align 8, !tbaa !50
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 128
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = call noundef ptr %i.ej(ptr noundef nonnull align 8 dereferenceable(519768) %i.j) #24
  call void @_ZNK4llvm14RISCVInstrInfo6movImmERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocENS_8RegisterEmNS4_6MIFlagEbb(ptr noundef nonnull align 8 dereferenceable(440) %i.ek, ptr noundef nonnull align 8 dereferenceable(360) %i.d, ptr nonnull %1, ptr noundef nonnull align 8 dereferenceable(8) %12, i32 %i.eg, i64 noundef %i.ef, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false) #24
  br label %bb.s

bb.n:                                             ; preds = %_ZNK4llvm14RISCVSubtarget11getRealVLenEv.exit
  %.not120 = icmp eq i32 %.sroa.0168.0206, 0
  br i1 %.not120, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.el = call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.h, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN4llvm27RISCVMCRegisterClassStorageE, i64 640), ptr nonnull @.str.50, i64 0) #24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  %.sroa.029.0.copyload = load ptr, ptr %12, align 8, !tbaa !389
  store ptr %.sroa.029.0.copyload, ptr %13, align 8, !tbaa !389
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i8 0, i64 24, i1 false)
  %i.em = load ptr, ptr %i.cd, align 8, !tbaa !390
  %i.en = getelementptr inbounds i8, ptr %i.em, i64 -30208
  %i.eo = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.d, ptr nonnull %1, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.en, i32 %i.el) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.0168.1 = phi i32 [ %i.el, %bb.o ], [ %.sroa.0168.0206, %bb.n ] ; 10 uses
  %i.ep = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.0114208, i1 true)
  %i.eq = xor i32 %i.ep, 31                       ; 7 uses
  %i.er = icmp ugt i32 %.0113209, %i.eq
  br i1 %i.er, label %bb.q, label %17

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  %.sroa.021.0.copyload = load ptr, ptr %12, align 8, !tbaa !389
  store ptr %.sroa.021.0.copyload, ptr %14, align 8, !tbaa !389
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ck, i8 0, i64 24, i1 false)
  %i.es = load ptr, ptr %i.cd, align 8, !tbaa !390
  %i.et = getelementptr inbounds i8, ptr %i.es, i64 -509504
  %i.eu = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.d, ptr nonnull %1, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %i.et, i32 %.sroa.0168.1) ; 2 uses
  %i.ev = extractvalue { ptr, ptr } %i.eu, 0      ; 2 uses
  %i.ew = extractvalue { ptr, ptr } %i.eu, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  store ptr null, ptr %i.cl, align 8, !tbaa !393, !alias.scope !620
  store i32 %.sroa.0168.1, ptr %i.cm, align 4, !tbaa !12, !alias.scope !620
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, i8 0, i64 16, i1 false), !alias.scope !620
  store i32 67108864, ptr %11, align 8, !alias.scope !620
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ew, ptr noundef nonnull align 8 dereferenceable(1065) %i.ev, ptr noundef nonnull align 8 dereferenceable(32) %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.ex = sub nuw nsw i32 %.0113209, %i.eq
  %i.ey = zext nneg i32 %i.ex to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  store i32 1, ptr %10, align 8, !alias.scope !621
  store ptr null, ptr %i.co, align 8, !tbaa !393, !alias.scope !621
  store i64 %i.ey, ptr %i.cp, align 8, !tbaa !12, !alias.scope !621
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ew, ptr noundef nonnull align 8 dereferenceable(1065) %i.ev, ptr noundef nonnull align 8 dereferenceable(32) %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  br label %bb.s

17:                                               ; preds = %bb.p
  %18 = icmp samesign ult i32 %.0113209, %i.eq
  br i1 %18, label %bb.r, label %bb.s

bb.r:                                             ; preds = %17
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  %.sroa.017.0.copyload = load ptr, ptr %12, align 8, !tbaa !389
  store ptr %.sroa.017.0.copyload, ptr %15, align 8, !tbaa !389
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i8 0, i64 24, i1 false)
  %i.ez = load ptr, ptr %i.cd, align 8, !tbaa !390
  %i.fa = getelementptr inbounds i8, ptr %i.ez, i64 -508320
  %i.fb = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.d, ptr nonnull %1, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %i.fa, i32 %.sroa.0168.1) ; 2 uses
  %i.fc = extractvalue { ptr, ptr } %i.fb, 0      ; 2 uses
  %i.fd = extractvalue { ptr, ptr } %i.fb, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  store ptr null, ptr %i.cf, align 8, !tbaa !393, !alias.scope !622
  store i32 %.sroa.0168.1, ptr %i.cg, align 4, !tbaa !12, !alias.scope !622
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, i8 0, i64 16, i1 false), !alias.scope !622
  store i32 67108864, ptr %9, align 8, !alias.scope !622
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.fd, ptr noundef nonnull align 8 dereferenceable(1065) %i.fc, ptr noundef nonnull align 8 dereferenceable(32) %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.fe = sub nuw nsw i32 %i.eq, %.0113209
  %i.ff = zext nneg i32 %i.fe to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  store i32 1, ptr %8, align 8, !alias.scope !623
  store ptr null, ptr %i.ci, align 8, !tbaa !393, !alias.scope !623
  store i64 %i.ff, ptr %i.cj, align 8, !tbaa !12, !alias.scope !623
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.fd, ptr noundef nonnull align 8 dereferenceable(1065) %i.fc, ptr noundef nonnull align 8 dereferenceable(32) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %17, %bb.m
  %.sroa.0156.0 = phi i32 [ %i.eg, %bb.m ], [ %.sroa.0168.1, %17 ], [ %.sroa.0168.1, %bb.r ], [ %.sroa.0168.1, %bb.q ] ; 2 uses
  %.sroa.0168.2 = phi i32 [ %.sroa.0168.0206, %bb.m ], [ %.sroa.0168.1, %17 ], [ %.sroa.0168.1, %bb.r ], [ %.sroa.0168.1, %bb.q ] ; 2 uses
  %.1 = phi i32 [ %.0113209, %bb.m ], [ %i.eq, %17 ], [ %i.eq, %bb.r ], [ %i.eq, %bb.q ]
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  %.sroa.013.0.copyload = load ptr, ptr %12, align 8, !tbaa !389
  store ptr %.sroa.013.0.copyload, ptr %16, align 8, !tbaa !389
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cq, i8 0, i64 24, i1 false)
  %i.fg = load ptr, ptr %i.cd, align 8, !tbaa !390
  %i.fh = getelementptr inbounds i8, ptr %i.fg, i64 -439200
  %i.fi = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.d, ptr nonnull %1, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %i.fh, i32 %i.an) ; 2 uses
  %i.fj = extractvalue { ptr, ptr } %i.fi, 0      ; 2 uses
  %i.fk = extractvalue { ptr, ptr } %i.fi, 1      ; 2 uses
  %i.fl = or i32 %.0115207, %i.am
  %.not198 = icmp eq i32 %i.fl, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  store ptr null, ptr %i.cr, align 8, !tbaa !393, !alias.scope !624
  %i.fm = select i1 %.not198, i32 0, i32 67108864
  store i32 %.sroa.070.0210, ptr %i.cs, align 4, !tbaa !12, !alias.scope !624
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ct, i8 0, i64 16, i1 false), !alias.scope !624
  store i32 %i.fm, ptr %7, align 8, !alias.scope !624
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.fk, ptr noundef nonnull align 8 dereferenceable(1065) %i.fj, ptr noundef nonnull align 8 dereferenceable(32) %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.fn = icmp eq i32 %.sroa.0156.0, %.sroa.0168.2
  %.not201 = select i1 %i.fn, i1 %i.dv, i1 false
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store ptr null, ptr %i.cu, align 8, !tbaa !393, !alias.scope !625
  %i.fo = select i1 %.not201, i32 0, i32 67108864
  store i32 %.sroa.0156.0, ptr %i.cv, align 4, !tbaa !12, !alias.scope !625
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, i8 0, i64 16, i1 false), !alias.scope !625
  store i32 %i.fo, ptr %6, align 8, !alias.scope !625
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.fk, ptr noundef nonnull align 8 dereferenceable(1065) %i.fj, ptr noundef nonnull align 8 dereferenceable(32) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZL18getSpillReloadInfojtb.exit
  %.sroa.0168.3 = phi i32 [ %.sroa.0168.0206, %_ZL18getSpillReloadInfojtb.exit ], [ %.sroa.0168.2, %bb.s ]
  %.2 = phi i32 [ %.0113209, %_ZL18getSpillReloadInfojtb.exit ], [ %.1, %bb.s ]
  %.sroa.070.1 = phi i32 [ %.sroa.070.0210, %_ZL18getSpillReloadInfojtb.exit ], [ %i.an, %bb.s ] ; 2 uses
  %i.fp = zext i16 %.0211 to i32
  %i.fq = add nuw nsw i32 %i.fp, 36               ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.7167.0, i64 50
  %i.fs = load i8, ptr %i.fr, align 2, !tbaa !406
  %i.ft = and i8 %i.fs, 6
  %i.fu = icmp eq i8 %i.ft, 0
  br i1 %i.fu, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fv = call i32 @_ZNK4llvm14MCRegisterInfo19getMatchingSuperRegENS_10MCRegisterEjPKNS_15MCRegisterClassE(ptr noundef nonnull align 8 dereferenceable(316) %0, i32 %i.fq, i32 noundef 8, ptr noundef nonnull align 8 dereferenceable(62) %.sroa.7167.0) #24
  br label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit: ; preds = %bb.u, %bb.t
  %.sroa.06.0.i = phi i32 [ %i.fv, %bb.u ], [ %i.fq, %bb.t ]
  %.sroa.07.0.copyload = load ptr, ptr %12, align 8, !tbaa !389
  %i.fw = load ptr, ptr %i.cd, align 8, !tbaa !390
  %i.fx = getelementptr inbounds [32 x i8], ptr %i.fw, i64 %.sroa.0165.0.neg
  %i.fy = load ptr, ptr %i.e, align 8, !tbaa !385 ; 5 uses
  %i.fz = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.fy, ptr noundef nonnull align 8 dereferenceable(32) %i.fx, ptr %.sroa.07.0.copyload, i1 noundef zeroext false) #24 ; 10 uses
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.cx, ptr noundef %i.fz) #24
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %1, align 8
  %i.ga = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.gb = inttoptr i64 %i.ga to ptr
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  store ptr %1, ptr %i.gc, align 8, !tbaa !401
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i = load i64, ptr %i.fz, align 8
  %i.gd = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i, 7
  %i.ge = or disjoint i64 %i.gd, %i.ga
  store i64 %i.ge, ptr %i.fz, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  store ptr %i.fz, ptr %i.gf, align 8, !tbaa !401
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i = load i64, ptr %1, align 8
  %i.gg = ptrtoint ptr %i.fz to i64
  %i.gh = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i, 7
  %i.gi = or disjoint i64 %i.gh, %i.gg
  store i64 %i.gi, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store ptr null, ptr %i.cy, align 8, !tbaa !393, !alias.scope !626
  store i32 %.sroa.06.0.i, ptr %i.da, align 4, !tbaa !12, !alias.scope !626
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.db, i8 0, i64 16, i1 false), !alias.scope !626
  store i32 %i.cz, ptr %5, align 8, !alias.scope !626
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.fz, ptr noundef nonnull align 8 dereferenceable(1065) %i.fy, ptr noundef nonnull align 8 dereferenceable(32) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store ptr null, ptr %i.dc, align 8, !tbaa !393, !alias.scope !627
  %i.gj = select i1 %i.dv, i32 0, i32 67108864
  store i32 %.sroa.070.1, ptr %i.dd, align 4, !tbaa !12, !alias.scope !627
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.de, i8 0, i64 16, i1 false), !alias.scope !627
  store i32 %i.gj, ptr %4, align 8, !alias.scope !627
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.fz, ptr noundef nonnull align 8 dereferenceable(1065) %i.fy, ptr noundef nonnull align 8 dereferenceable(32) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.gk = load i64, ptr %i.df, align 8, !tbaa !637
  %i.gl = and i64 %i.dt, 4294967295
  %i.gm = mul i64 %i.gl, %i.ca                    ; 2 uses
  %i.gn = icmp ugt i64 %i.gm, 4611686018427387899
  %i.go = or i64 %i.gm, %i.by
  %i.gp = select i1 %i.gn, i64 -4611686018427387906, i64 %i.go ; 3 uses
  %i.gq = icmp sgt i64 %i.gp, -1
  br i1 %i.gq, label %bb.v, label %_ZN4llvm15MachineFunction20getMachineMemOperandEPKNS_17MachineMemOperandElNS_8TypeSizeE.exit

bb.v:                                             ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit
  %.not.i.i129 = icmp samesign ult i64 %i.gp, 4611686018427387904
  %i.gr = shl i64 %i.gp, 31
  %i.gs = and i64 %i.gr, 1152921502459363328      ; 2 uses
  br i1 %.not.i.i129, label %bb.w, label %_ZN4llvm3LLT8toVectorENS0_4KindE.exit.i.i.i

_ZN4llvm3LLT8toVectorENS0_4KindE.exit.i.i.i:      ; preds = %bb.v
  %storemerge.i.i44.i.i.i = or disjoint i64 %i.gs, 5764607523034234897
  br label %_ZN4llvm15MachineFunction20getMachineMemOperandEPKNS_17MachineMemOperandElNS_8TypeSizeE.exit

bb.w:                                             ; preds = %bb.v
  %storemerge.i.i.i.i.i = or disjoint i64 %i.gs, 1152921504606846976
  br label %_ZN4llvm15MachineFunction20getMachineMemOperandEPKNS_17MachineMemOperandElNS_8TypeSizeE.exit

_ZN4llvm15MachineFunction20getMachineMemOperandEPKNS_17MachineMemOperandElNS_8TypeSizeE.exit: ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit, %_ZN4llvm3LLT8toVectorENS0_4KindE.exit.i.i.i, %bb.w
  %.sroa.012.0.i.i = phi i64 [ 0, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit ], [ %storemerge.i.i.i.i.i, %bb.w ], [ %storemerge.i.i44.i.i.i, %_ZN4llvm3LLT8toVectorENS0_4KindE.exit.i.i.i ]
  %i.gt = call noundef ptr @_ZN4llvm15MachineFunction20getMachineMemOperandEPKNS_17MachineMemOperandElNS_3LLTE(ptr noundef nonnull align 8 dereferenceable(1065) %i.f, ptr noundef nonnull %i.ax, i64 noundef %i.gk, i64 %.sroa.012.0.i.i) #24
  call void @_ZN4llvm12MachineInstr13addMemOperandERNS_15MachineFunctionEPNS_17MachineMemOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.fz, ptr noundef nonnull align 8 dereferenceable(1065) %i.fy, ptr noundef %i.gt) #24
  br i1 %2, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZN4llvm15MachineFunction20getMachineMemOperandEPKNS_17MachineMemOperandElNS_8TypeSizeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr null, ptr %i.dg, align 8, !tbaa !393, !alias.scope !638
  store i32 %i.z, ptr %i.dh, align 4, !tbaa !12, !alias.scope !638
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.di, i8 0, i64 16, i1 false), !alias.scope !638
  store i32 33554432, ptr %3, align 8, !alias.scope !638
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.fz, ptr noundef nonnull align 8 dereferenceable(1065) %i.fy, ptr noundef nonnull align 8 dereferenceable(32) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN4llvm15MachineFunction20getMachineMemOperandEPKNS_17MachineMemOperandElNS_8TypeSizeE.exit
  %i.gu = trunc i64 %i.dt to i16
  %i.gv = add i16 %.0211, %i.gu
  %.not = icmp eq i32 %i.du, %i.v
  br i1 %.not, label %._crit_edge, label %bb.h, !llvm.loop !617

._crit_edge:                                      ; preds = %bb.y, %_ZNK4llvm17MachineMemOperand7getSizeEv.exit
  %i.gw = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #24 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  ret void
}

declare { i64, i8 } @_ZN4llvm5RISCV20isRVVSpillForZvlssegEj(i32 noundef) local_unnamed_addr #5

declare i64 @_ZN4llvm10RISCVVType11decodeVLMULENS0_5VLMULE(i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local i32 @_ZNK4llvm17RISCVRegisterInfo20findVRegWithEncodingERKNS_15MCRegisterClassEt(ptr noundef nonnull align 8 dereferenceable(316) %0, ptr noundef nonnull align 8 dereferenceable(62) %1, i16 noundef zeroext %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = zext i16 %2 to i32
  %i.b = add nuw nsw i32 %i.a, 36                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 50
  %i.d = load i8, ptr %i.c, align 2, !tbaa !406
  %i.e = and i8 %i.d, 6
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @_ZNK4llvm14MCRegisterInfo19getMatchingSuperRegENS_10MCRegisterEjPKNS_15MCRegisterClassE(ptr noundef nonnull align 8 dereferenceable(240) %0, i32 %i.b, i32 noundef 8, ptr noundef nonnull %1) #24
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.06.0 = phi i32 [ %i.g, %bb.b ], [ %i.b, %bb.a ]
  ret i32 %.sroa.06.0
}

declare ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm17RISCVRegisterInfo19eliminateFrameIndexENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEijPNS_12RegScavengerE(ptr noundef nonnull align 8 dereferenceable(316) %0, ptr %1, i32 %2, i32 noundef %3, ptr nofree readnone captures(none) %4) unnamed_addr #4 align 2 {
bb.a:
  %5 = alloca %"class.llvm::DebugLoc", align 8    ; 4 uses
  %6 = alloca %"class.llvm::Register", align 4    ; 6 uses
  %7 = alloca %"class.llvm::StackOffset", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !403
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !385  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !386
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !179, !nonnull !180, !align !181 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !50
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef ptr %i.k(ptr noundef nonnull align 8 dereferenceable(519768) %i.h) #24
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 656
  %i.n = load i8, ptr %i.m, align 8, !tbaa !331, !range !183, !noundef !180
  %i.o = trunc nuw i8 %i.n to i1                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.q = load i64, ptr %i.p, align 8, !tbaa !389
  store i64 %i.q, ptr %5, align 8, !tbaa !389
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 11 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !405
  %i.t = zext i32 %3 to i64                       ; 3 uses
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i32, ptr %i.v, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store i32 0, ptr %6, align 4, !tbaa !407
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !179, !nonnull !180, !align !181 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !50
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 136
end_hunk_0
