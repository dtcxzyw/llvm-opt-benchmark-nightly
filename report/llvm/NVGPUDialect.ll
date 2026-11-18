Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/NVGPUDialect?download=true
inline.NumInlined: 22676
inline.NumDeleted: 7449
loop-unroll.NumCompletelyUnrolled: 57
loop-unroll.NumUnrolled: 57
begin_hunk_0_@_ZN4mlir5nvgpu17DeviceAsyncCopyOp6verifyEv:bb.a
  %i.bv = load i32, ptr %i.bm, align 4, !tbaa !118
  %.not.i.i.i.i.i33 = icmp ult i32 %i.bu, %i.bv
  br i1 %.not.i.i.i.i.i33, label %bb.t, label %bb.s, !prof !119

bb.s:                                             ; preds = %bb.r
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRKjEEOS0_OT_.exit

bb.t:                                             ; preds = %bb.r
  %i.bw = zext i32 %i.bu to i64
  %i.bx = load ptr, ptr %i.bi, align 8, !tbaa !120
  %i.by = getelementptr inbounds nuw [24 x i8], ptr %i.bx, i64 %i.bw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.by, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  %i.bz = load i32, ptr %i.bk, align 8, !tbaa !117
  %i.ca = add i32 %i.bz, 1
  store i32 %i.ca, ptr %i.bk, align 8, !tbaa !117
  br label %_ZNO4mlir18InFlightDiagnosticlsIRKjEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRKjEEOS0_OT_.exit: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %.pr93 = load ptr, ptr %17, align 8, !tbaa !107
  %.not.i.i34 = icmp eq ptr %.pr93, null
  br i1 %.not.i.i34, label %_ZNO4mlir18InFlightDiagnosticlsIRA38_KcEEOS0_OT_.exit, label %bb.u

bb.u:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRKjEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store i32 3, ptr %5, align 8, !tbaa !113
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.3, ptr %i.cb, align 8, !tbaa !114
  %.sroa.2.0..sroa_idx.i.i.i.i.i35 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 37, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i35, align 8, !tbaa !115
  %i.cc = load i32, ptr %i.bk, align 8, !tbaa !117 ; 2 uses
  %i.cd = load i32, ptr %i.bm, align 4, !tbaa !118
  %.not.i.i.i.i.i36 = icmp ult i32 %i.cc, %i.cd
  br i1 %.not.i.i.i.i.i36, label %bb.w, label %bb.v, !prof !119

bb.v:                                             ; preds = %bb.u
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %_ZN4mlir10Diagnostic6appendIRA38_KcEERS0_OT_.exit.i.i

bb.w:                                             ; preds = %bb.u
  %i.ce = zext i32 %i.cc to i64
  %i.cf = load ptr, ptr %i.bi, align 8, !tbaa !120
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %i.cf, i64 %i.ce
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.cg, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  %i.ch = load i32, ptr %i.bk, align 8, !tbaa !117
  %i.ci = add i32 %i.ch, 1
  store i32 %i.ci, ptr %i.bk, align 8, !tbaa !117
  br label %_ZN4mlir10Diagnostic6appendIRA38_KcEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendIRA38_KcEERS0_OT_.exit.i.i: ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA38_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA38_KcEEOS0_OT_.exit: ; preds = %bb.n, %_ZNO4mlir18InFlightDiagnosticlsIRA70_KcEEOS0_OT_.exit, %_ZNO4mlir18InFlightDiagnosticlsIRKjEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendIRA38_KcEERS0_OT_.exit.i.i
  %i.cj = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %17) #29
  %i.ck = load ptr, ptr %17, align 8, !tbaa !107
  %.not.i37 = icmp eq ptr %i.ck, null
  br i1 %.not.i37, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA38_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %17) #29
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZNO4mlir18InFlightDiagnosticlsIRA38_KcEEOS0_OT_.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %17, i64 200 ; 2 uses
  %i.cm = load i8, ptr %i.cl, align 8, !tbaa !108, !range !109, !noundef !110
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %bb.z, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit38

bb.z:                                             ; preds = %bb.y
  %i.co = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i8 0, ptr %i.cl, align 8, !tbaa !108
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.co) #29
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit38

_ZN4mlir18InFlightDiagnosticD2Ev.exit38:          ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  br label %bb.bi

bb.aa:                                            ; preds = %.split, %_ZN4mlir5nvgpu12NVGPUDialect27hasSharedMemoryAddressSpaceENS_10MemRefTypeE.exit
  %i.cp = call ptr @_ZNK4mlir10MemRefType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #29
  %i.cq = call ptr @_ZNK4mlir10MemRefType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #29
  %.not107 = icmp eq ptr %i.cp, %i.cq
  br i1 %.not107, label %_ZN4mlir5nvgpu17DeviceAsyncCopyOp13getSrcIndicesEv.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #29
  %i.cr = getelementptr inbounds nuw i8, ptr %20, i64 32
  %i.cs = getelementptr inbounds nuw i8, ptr %20, i64 33
  store i8 1, ptr %i.cs, align 1, !tbaa !98
  store ptr @.str.4, ptr %20, align 8, !tbaa !86
  store i8 3, ptr %i.cr, align 8, !tbaa !99
  call void @_ZN4mlir7OpState9emitErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %19, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %20) #29
  %i.ct = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %19) #29
  %i.cu = load ptr, ptr %19, align 8, !tbaa !107
  %.not.i39 = icmp eq ptr %i.cu, null
  br i1 %.not.i39, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %19) #29
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.cv = getelementptr inbounds nuw i8, ptr %19, i64 200 ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 8, !tbaa !108, !range !109, !noundef !110
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %bb.ae, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit40

bb.ae:                                            ; preds = %bb.ad
  %i.cy = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i8 0, ptr %i.cv, align 8, !tbaa !108
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.cy) #29
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit40

_ZN4mlir18InFlightDiagnosticD2Ev.exit40:          ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29
  br label %bb.bi

_ZN4mlir5nvgpu17DeviceAsyncCopyOp13getSrcIndicesEv.exit: ; preds = %bb.aa
  %i.cz = call { ptr, i64 } @_ZNK4mlir10MemRefType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #29
  %i.da = extractvalue { ptr, i64 } %i.cz, 1
  %i.db = load ptr, ptr %0, align 8, !tbaa !89    ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 44
  %i.dd = load i32, ptr %i.dc, align 4            ; 2 uses
  %.not.i.i.i.i.i41 = icmp ugt i32 %i.dd, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i.i41)
  %i.de = lshr i32 %i.dd, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.de, 1
  %i.df = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %i.db, i64 %i.df ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 80
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !90
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 84
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !90
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 88
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !90
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dg, i64 92
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !90
  %i.dp = add i32 %i.dk, %i.di
  %i.dq = add i32 %i.dp, %i.dm                    ; 2 uses
  %i.dr = zext i32 %i.dq to i64
  %.narrow.i.i = add i32 %i.do, %i.dq
  %i.ds = zext i32 %.narrow.i.i to i64
  %i.dt = sub nsw i64 %i.ds, %i.dr
  %.not = icmp eq i64 %i.da, %i.dt
  br i1 %.not, label %_ZN4mlir5nvgpu17DeviceAsyncCopyOp13getDstIndicesEv.exit, label %bb.af

bb.af:                                            ; preds = %_ZN4mlir5nvgpu17DeviceAsyncCopyOp13getSrcIndicesEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #29
  %i.du = getelementptr inbounds nuw i8, ptr %22, i64 32
  store i8 1, ptr %i.du, align 8, !tbaa !99
  %i.dv = getelementptr inbounds nuw i8, ptr %22, i64 33
  store i8 1, ptr %i.dv, align 1, !tbaa !98
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %21, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %22) #29
  %i.dw = load ptr, ptr %21, align 8, !tbaa !107
  %.not.i.i43 = icmp eq ptr %i.dw, null
  br i1 %.not.i.i43, label %_ZNO4mlir18InFlightDiagnosticlsIRA10_KcEEOS0_OT_.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dx = getelementptr inbounds nuw i8, ptr %21, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store i32 3, ptr %4, align 8, !tbaa !113
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.5, ptr %i.dy, align 8, !tbaa !114
  %.sroa.2.0..sroa_idx.i.i.i.i.i44 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 9, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i44, align 8, !tbaa !115
  %i.dz = getelementptr inbounds nuw i8, ptr %21, i64 32 ; 3 uses
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !117 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %21, i64 36
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !118
  %.not.i.i.i.i.i45 = icmp ult i32 %i.ea, %i.ec
  br i1 %.not.i.i.i.i.i45, label %bb.ai, label %bb.ah, !prof !119

bb.ah:                                            ; preds = %bb.ag
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.dx, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %_ZN4mlir10Diagnostic6appendIRA10_KcEERS0_OT_.exit.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.ed = zext i32 %i.ea to i64
  %i.ee = load ptr, ptr %i.dx, align 8, !tbaa !120
  %i.ef = getelementptr inbounds nuw [24 x i8], ptr %i.ee, i64 %i.ed
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ef, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.eg = load i32, ptr %i.dz, align 8, !tbaa !117
  %i.eh = add i32 %i.eg, 1
  store i32 %i.eh, ptr %i.dz, align 8, !tbaa !117
  br label %_ZN4mlir10Diagnostic6appendIRA10_KcEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendIRA10_KcEERS0_OT_.exit.i.i: ; preds = %bb.ai, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA10_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA10_KcEEOS0_OT_.exit: ; preds = %bb.af, %_ZN4mlir10Diagnostic6appendIRA10_KcEERS0_OT_.exit.i.i
  %i.ei = call { ptr, i64 } @_ZNK4mlir10MemRefType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #29
  %i.ej = load ptr, ptr %21, align 8, !tbaa !107
  %.not.i.i46 = icmp eq ptr %i.ej, null
  br i1 %.not.i.i46, label %_ZNO4mlir18InFlightDiagnosticlsIRA22_KcEEOS0_OT_.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA10_KcEEOS0_OT_.exit
  %i.ek = extractvalue { ptr, i64 } %i.ei, 1
  %i.el = getelementptr inbounds nuw i8, ptr %21, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store i32 2, ptr %3, align 8, !tbaa !113
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ek, ptr %i.em, align 8, !tbaa !86
  %i.en = getelementptr inbounds nuw i8, ptr %21, i64 32 ; 6 uses
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !117 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %21, i64 36 ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !118
  %.not.i.i.i.i.i47 = icmp ult i32 %i.eo, %i.eq
  br i1 %.not.i.i.i.i.i47, label %bb.al, label %bb.ak, !prof !119

bb.ak:                                            ; preds = %bb.aj
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.el, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %_ZNO4mlir18InFlightDiagnosticlsIlEEOS0_OT_.exit

bb.al:                                            ; preds = %bb.aj
  %i.er = zext i32 %i.eo to i64
  %i.es = load ptr, ptr %i.el, align 8, !tbaa !120
  %i.et = getelementptr inbounds nuw [24 x i8], ptr %i.es, i64 %i.er
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.et, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.eu = load i32, ptr %i.en, align 8, !tbaa !117
  %i.ev = add i32 %i.eu, 1
  store i32 %i.ev, ptr %i.en, align 8, !tbaa !117
  br label %_ZNO4mlir18InFlightDiagnosticlsIlEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIlEEOS0_OT_.exit:  ; preds = %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %.pr95 = load ptr, ptr %21, align 8, !tbaa !107
  %.not.i.i48 = icmp eq ptr %.pr95, null
  br i1 %.not.i.i48, label %_ZNO4mlir18InFlightDiagnosticlsIRA22_KcEEOS0_OT_.exit.thread, label %bb.am

bb.am:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIlEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  store i32 3, ptr %2, align 8, !tbaa !113
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.6, ptr %i.ew, align 8, !tbaa !114
  %.sroa.2.0..sroa_idx.i.i.i.i.i49 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 21, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i49, align 8, !tbaa !115
  %i.ex = load i32, ptr %i.en, align 8, !tbaa !117 ; 2 uses
  %i.ey = load i32, ptr %i.ep, align 4, !tbaa !118
  %.not.i.i.i.i.i50 = icmp ult i32 %i.ex, %i.ey
  br i1 %.not.i.i.i.i.i50, label %bb.ao, label %bb.an, !prof !119

bb.an:                                            ; preds = %bb.am
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.el, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA22_KcEEOS0_OT_.exit

bb.ao:                                            ; preds = %bb.am
  %i.ez = zext i32 %i.ex to i64
  %i.fa = load ptr, ptr %i.el, align 8, !tbaa !120
  %i.fb = getelementptr inbounds nuw [24 x i8], ptr %i.fa, i64 %i.ez
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.fb, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.fc = load i32, ptr %i.en, align 8, !tbaa !117
  %i.fd = add i32 %i.fc, 1
  store i32 %i.fd, ptr %i.en, align 8, !tbaa !117
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA22_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA22_KcEEOS0_OT_.exit.thread: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA10_KcEEOS0_OT_.exit, %_ZNO4mlir18InFlightDiagnosticlsIlEEOS0_OT_.exit
  %30 = load ptr, ptr %0, align 8, !tbaa !89
  %31 = getelementptr inbounds nuw i8, ptr %30, i64 44
  %32 = load i32, ptr %31, align 4
  %.not.i.i.i.i.i51121 = icmp ugt i32 %32, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i.i51121)
  br label %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA22_KcEEOS0_OT_.exit: ; preds = %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %.pre = load ptr, ptr %21, align 8, !tbaa !107
  %i.fe = icmp eq ptr %.pre, null
  %i.ff = load ptr, ptr %0, align 8, !tbaa !89    ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 44
  %i.fh = load i32, ptr %i.fg, align 4            ; 2 uses
  %.not.i.i.i.i.i51 = icmp ugt i32 %i.fh, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i.i51)
  br i1 %i.fe, label %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA22_KcEEOS0_OT_.exit
  %i.fi = lshr i32 %i.fh, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i52 = and i32 %i.fi, 1
  %i.fj = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i52 to i64
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr %i.ff, i64 %i.fj ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 92
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !90
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 88
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !90
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fk, i64 84
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !90
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fk, i64 80
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !90
  %i.ft = add i32 %i.fq, %i.fs
  %i.fu = add i32 %i.ft, %i.fo                    ; 2 uses
  %.narrow.i.i55 = add i32 %i.fm, %i.fu
  %i.fv = zext i32 %.narrow.i.i55 to i64
  %i.fw = zext i32 %i.fu to i64
  %i.fx = sub nsw i64 %i.fv, %i.fw
  %i.fy = getelementptr inbounds nuw i8, ptr %21, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  store i32 5, ptr %1, align 8, !tbaa !113
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.fx, ptr %i.fz, align 8, !tbaa !86
  %i.ga = getelementptr inbounds nuw i8, ptr %21, i64 32 ; 3 uses
  %i.gb = load i32, ptr %i.ga, align 8, !tbaa !117 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %21, i64 36
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !118
  %.not.i.i.i.i.i60 = icmp ult i32 %i.gb, %i.gd
  br i1 %.not.i.i.i.i.i60, label %bb.ar, label %bb.aq, !prof !119

bb.aq:                                            ; preds = %bb.ap
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.fy, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZN4mlir10Diagnostic6appendImEERS0_OT_.exit.i.i

bb.ar:                                            ; preds = %bb.ap
  %i.ge = zext i32 %i.gb to i64
  %i.gf = load ptr, ptr %i.fy, align 8, !tbaa !120
  %i.gg = getelementptr inbounds nuw [24 x i8], ptr %i.gf, i64 %i.ge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.gg, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.gh = load i32, ptr %i.ga, align 8, !tbaa !117
  %i.gi = add i32 %i.gh, 1
  store i32 %i.gi, ptr %i.ga, align 8, !tbaa !117
  br label %_ZN4mlir10Diagnostic6appendImEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendImEERS0_OT_.exit.i.i:  ; preds = %bb.ar, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br label %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit:  ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA22_KcEEOS0_OT_.exit.thread, %_ZNO4mlir18InFlightDiagnosticlsIRA22_KcEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendImEERS0_OT_.exit.i.i
  %i.gj = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %21) #29
  %i.gk = load ptr, ptr %21, align 8, !tbaa !107
  %.not.i61 = icmp eq ptr %i.gk, null
  br i1 %.not.i61, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %21) #29
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit
  %i.gl = getelementptr inbounds nuw i8, ptr %21, i64 200 ; 2 uses
  %i.gm = load i8, ptr %i.gl, align 8, !tbaa !108, !range !109, !noundef !110
  %i.gn = trunc nuw i8 %i.gm to i1
  br i1 %i.gn, label %bb.au, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit62

bb.au:                                            ; preds = %bb.at
  %i.go = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i8 0, ptr %i.gl, align 8, !tbaa !108
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.go) #29
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit62

_ZN4mlir18InFlightDiagnosticD2Ev.exit62:          ; preds = %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #29
  br label %bb.bi

_ZN4mlir5nvgpu17DeviceAsyncCopyOp13getDstIndicesEv.exit: ; preds = %_ZN4mlir5nvgpu17DeviceAsyncCopyOp13getSrcIndicesEv.exit
  %i.gp = call { ptr, i64 } @_ZNK4mlir10MemRefType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #29
  %i.gq = extractvalue { ptr, i64 } %i.gp, 1
  %i.gr = load ptr, ptr %0, align 8, !tbaa !89    ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 44
  %i.gt = load i32, ptr %i.gs, align 4            ; 2 uses
  %.not.i.i.i.i.i63 = icmp ugt i32 %i.gt, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i.i63)
  %i.gu = lshr i32 %i.gt, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i64 = and i32 %i.gu, 1
  %i.gv = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i64 to i64
  %i.gw = getelementptr inbounds nuw [16 x i8], ptr %i.gr, i64 %i.gv ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 80
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !90 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 84
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !90
  %i.hb = zext i32 %i.gy to i64
  %.narrow.i.i67 = add i32 %i.ha, %i.gy
  %i.hc = zext i32 %.narrow.i.i67 to i64
  %i.hd = sub nsw i64 %i.hc, %i.hb
  %.not19 = icmp eq i64 %i.gq, %i.hd
  br i1 %.not19, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %_ZN4mlir5nvgpu17DeviceAsyncCopyOp13getDstIndicesEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #29
  %i.he = getelementptr inbounds nuw i8, ptr %24, i64 32
  store i8 1, ptr %i.he, align 8, !tbaa !99
  %i.hf = getelementptr inbounds nuw i8, ptr %24, i64 33
  store i8 1, ptr %i.hf, align 1, !tbaa !98
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %23, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %24) #29
  %i.hg = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsIRA10_KcEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %23, ptr noundef nonnull align 1 dereferenceable(10) @.str.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.hh = call { ptr, i64 } @_ZNK4mlir10MemRefType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #29
  %i.hi = extractvalue { ptr, i64 } %i.hh, 1
  store i64 %i.hi, ptr %i.a, align 8, !tbaa !115
  %i.hj = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsIlEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %i.hg, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.hk = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsIRA27_KcEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %i.hj, ptr noundef nonnull align 1 dereferenceable(27) @.str.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  %i.hl = call { ptr, i64 } @_ZN4mlir5nvgpu17DeviceAsyncCopyOp13getDstIndicesEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.hm = extractvalue { ptr, i64 } %i.hl, 1
  store i64 %i.hm, ptr %i.b, align 8, !tbaa !115
  %i.hn = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %i.hk, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.ho = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %i.hn) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  call void @_ZN4mlir18InFlightDiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #29
  br label %bb.bi

bb.aw:                                            ; preds = %_ZN4mlir5nvgpu17DeviceAsyncCopyOp13getDstIndicesEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #29
  call void @_ZN4mlir5nvgpu17DeviceAsyncCopyOp14getDstElementsEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %25, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.hp = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !85
  %i.hr = icmp ult i32 %i.hq, 65                  ; 2 uses
  %i.hs = load ptr, ptr %25, align 8              ; 3 uses
  %spec.select.i = select i1 %i.hr, ptr %25, ptr %i.hs
  %.0.i = load i64, ptr %spec.select.i, align 8, !tbaa !86 ; 2 uses
  %i.ht = icmp eq ptr %i.hs, null
  %or.cond106 = select i1 %i.hr, i1 true, i1 %i.ht
  br i1 %or.cond106, label %_ZN4llvm5APIntD2Ev.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @_ZdaPv(ptr noundef nonnull %i.hs) #30
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #29
  store i64 %.0.i, ptr %i.c, align 8, !tbaa !115
  %i.hu = call noundef i32 @_ZNK4mlir6detail15ShapedTypeTraitINS_10MemRefTypeEE22getElementTypeBitWidthEv(ptr noundef nonnull align 1 dereferenceable(1) %12)
  %i.hv = zext i32 %i.hu to i64
  %i.hw = mul nsw i64 %.0.i, %i.hv
  %i.hx = and i64 %i.hw, -8                       ; 2 uses
  %.not108 = icmp eq i64 %i.hx, 128
  switch i64 %i.hx, label %bb.ay [
    i64 128, label %bb.bd
    i64 64, label %bb.bd
    i64 32, label %bb.bd
  ]

bb.ay:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit
  %i.hy = call noundef i32 @_ZNK4mlir6detail15ShapedTypeTraitINS_10MemRefTypeEE22getElementTypeBitWidthEv(ptr noundef nonnull align 1 dereferenceable(1) %12) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #29
  %i.hz = getelementptr inbounds nuw i8, ptr %27, i64 32
  store i8 1, ptr %i.hz, align 8, !tbaa !99
  %i.ia = getelementptr inbounds nuw i8, ptr %27, i64 33
  store i8 1, ptr %i.ia, align 1, !tbaa !98
  call void @_ZN4mlir7OpState9emitErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %26, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %27) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #29
  %i.ib = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNR4mlir18InFlightDiagnosticlsIRA28_KcEERS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %26, ptr noundef nonnull align 1 dereferenceable(28) @.str.8)
  %i.ic = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNR4mlir18InFlightDiagnosticlsIRlEERS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ib, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.id = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNR4mlir18InFlightDiagnosticlsIRA13_KcEERS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ic, ptr noundef nonnull align 1 dereferenceable(13) @.str.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #29
  %i.ie = call noundef i32 @_ZNK4mlir6detail15ShapedTypeTraitINS_10MemRefTypeEE22getElementTypeBitWidthEv(ptr noundef nonnull align 1 dereferenceable(1) %12)
  store i32 %i.ie, ptr %i.d, align 4, !tbaa !90
  %i.if = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNR4mlir18InFlightDiagnosticlsIjEERS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %i.id, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  %i.ig = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNR4mlir18InFlightDiagnosticlsIRA37_KcEERS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %i.if, ptr noundef nonnull align 1 dereferenceable(37) @.str.10) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #29
  %.not20 = icmp ugt i32 %i.hy, 32
  br i1 %.not20, label %bb.az, label %.thread

.thread:                                          ; preds = %bb.ay
  %.rhs.trunc104 = trunc nuw nsw i32 %i.hy to i8  ; 2 uses
  %i.ih = udiv i8 32, %.rhs.trunc104
  %.zext105 = zext nneg i8 %i.ih to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #29
  store i32 %.zext105, ptr %i.e, align 4, !tbaa !90
  %i.ii = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNR4mlir18InFlightDiagnosticlsIjEERS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %26, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
  %i.ij = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNR4mlir18InFlightDiagnosticlsIRA3_KcEERS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ii, ptr noundef nonnull align 1 dereferenceable(3) @.str.11) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #29
  br label %.thread98

bb.az:                                            ; preds = %bb.ay
  %.not21 = icmp ugt i32 %i.hy, 64
  br i1 %.not21, label %bb.ba, label %..thread98_crit_edge

..thread98_crit_edge:                             ; preds = %bb.az
  %.pre110 = trunc nuw nsw i32 %i.hy to i8
  br label %.thread98

.thread98:                                        ; preds = %..thread98_crit_edge, %.thread
  %.rhs.trunc102.pre-phi = phi i8 [ %.pre110, %..thread98_crit_edge ], [ %.rhs.trunc104, %.thread ] ; 2 uses
  %i.ik = udiv i8 64, %.rhs.trunc102.pre-phi
  %.zext103 = zext nneg i8 %i.ik to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #29
  store i32 %.zext103, ptr %i.f, align 4, !tbaa !90
  %i.il = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNR4mlir18InFlightDiagnosticlsIjEERS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %26, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
  %i.im = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNR4mlir18InFlightDiagnosticlsIRA3_KcEERS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %i.il, ptr noundef nonnull align 1 dereferenceable(3) @.str.11) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #29
  br label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %.not22 = icmp ugt i32 %i.hy, 128
  br i1 %.not22, label %bb.bc, label %._crit_edge

._crit_edge:                                      ; preds = %bb.ba
  %.pre109 = trunc nuw i32 %i.hy to i8
  br label %bb.bb

bb.bb:                                            ; preds = %._crit_edge, %.thread98
  %.rhs.trunc.pre-phi = phi i8 [ %.pre109, %._crit_edge ], [ %.rhs.trunc102.pre-phi, %.thread98 ]
  %i.in = udiv i8 -128, %.rhs.trunc.pre-phi
  %.zext = zext i8 %i.in to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #29
  store i32 %.zext, ptr %i.g, align 4, !tbaa !90
  %i.io = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNR4mlir18InFlightDiagnosticlsIjEERS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %26, ptr noundef nonnull align 4 dereferenceable(4) %i.g)
  %i.ip = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNR4mlir18InFlightDiagnosticlsIRA2_KcEERS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %i.io, ptr noundef nonnull align 1 dereferenceable(2) @.str.12) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #29
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.iq = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %26) #29
  call void @_ZN4mlir18InFlightDiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %26) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #29
  br label %bb.bh

bb.bd:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit, %_ZN4llvm5APIntD2Ev.exit, %_ZN4llvm5APIntD2Ev.exit
  %i.ir = load ptr, ptr %0, align 8, !tbaa !89    ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 44
  %i.it = load i32, ptr %i.is, align 4            ; 2 uses
  %.not.i.i.i.i = icmp ugt i32 %i.it, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ir, i64 64
  %i.iv = lshr i32 %i.it, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i = and i32 %i.iv, 1
  %i.iw = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i to i64
  %i.ix = getelementptr inbounds nuw [16 x i8], ptr %i.iu, i64 %i.iw
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !123
  %.not.not.i.not = icmp eq ptr %i.iy, null
  br i1 %.not.not.i.not, label %bb.bh, label %bb.be
end_hunk_0
