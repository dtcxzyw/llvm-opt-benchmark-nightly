Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/NVGPUDialect?download=true
inline.NumInlined: 22676
inline.NumDeleted: 7449
loop-unroll.NumCompletelyUnrolled: 57
loop-unroll.NumUnrolled: 57
begin_hunk_0_@_ZL15verifyMmaSyncOpPN4mlir9OperationENS_6detail10TypedValueINS_10VectorTypeEEES5_S5_RKSt5arrayIlLm3EEbb:bb.a

bb.w:                                             ; preds = %bb.u
  %i.by = zext i32 %i.bv to i64
  %i.bz = load ptr, ptr %i.bs, align 8, !tbaa !120
  %i.ca = getelementptr inbounds nuw [24 x i8], ptr %i.bz, i64 %i.by
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ca, ptr noundef nonnull align 8 dereferenceable(24) %15, i64 24, i1 false)
  %i.cb = load i32, ptr %i.bu, align 8, !tbaa !116
  %i.cc = add i32 %i.cb, 1
  store i32 %i.cc, ptr %i.bu, align 8, !tbaa !116
  br label %_ZN4mlir10Diagnostic6appendIRA37_KcEERS0_OT_.exit.i.i69

_ZN4mlir10Diagnostic6appendIRA37_KcEERS0_OT_.exit.i.i69: ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit70

_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit70: ; preds = %bb.t, %_ZN4mlir10Diagnostic6appendIRA37_KcEERS0_OT_.exit.i.i69
  %i.cd = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %25) #29
  %i.ce = load ptr, ptr %25, align 8, !tbaa !100
  %.not.i71 = icmp eq ptr %i.ce, null
  br i1 %.not.i71, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit70
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %25) #29
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit70
  %i.cf = getelementptr inbounds nuw i8, ptr %25, i64 200 ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 8, !tbaa !108, !range !109, !noundef !110
  %i.ch = trunc nuw i8 %i.cg to i1
  store i8 0, ptr %i.cf, align 8, !tbaa !108
  br i1 %i.ch, label %bb.z, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit72

bb.z:                                             ; preds = %bb.y
  %i.ci = getelementptr inbounds nuw i8, ptr %25, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.ci) #29
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit72

_ZN4mlir18InFlightDiagnosticD2Ev.exit72:          ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #29
  br label %bb.cg

bb.aa:                                            ; preds = %bb.s
  %.not52 = icmp eq i64 %i.v, 2
  br i1 %.not52, label %bb.ai, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #29
  %i.cj = getelementptr inbounds nuw i8, ptr %28, i64 32
  store i8 1, ptr %i.cj, align 8, !tbaa !99
  %i.ck = getelementptr inbounds nuw i8, ptr %28, i64 33
  store i8 1, ptr %i.ck, align 1, !tbaa !96
  call void @_ZN4mlir9Operation9emitErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %27, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %28) #29
  %i.cl = load ptr, ptr %27, align 8, !tbaa !100
  %.not.i.i73 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i73, label %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit77, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cm = getelementptr inbounds nuw i8, ptr %27, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  store i32 3, ptr %14, align 8, !tbaa !111
  %i.cn = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr @.str.219, ptr %i.cn, align 8, !tbaa !114
  %.sroa.2.0..sroa_idx.i.i.i.i.i74 = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 36, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i74, align 8, !tbaa !115
  %i.co = getelementptr inbounds nuw i8, ptr %27, i64 32 ; 3 uses
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !116 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %27, i64 36
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !118
  %.not.i.i.i.i.i75 = icmp ult i32 %i.cp, %i.cr
  br i1 %.not.i.i.i.i.i75, label %bb.ae, label %bb.ad, !prof !119

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, ptr noundef nonnull align 8 dereferenceable(24) %14)
  br label %_ZN4mlir10Diagnostic6appendIRA37_KcEERS0_OT_.exit.i.i76

bb.ae:                                            ; preds = %bb.ac
  %i.cs = zext i32 %i.cp to i64
  %i.ct = load ptr, ptr %i.cm, align 8, !tbaa !120
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.ct, i64 %i.cs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %14, i64 24, i1 false)
  %i.cv = load i32, ptr %i.co, align 8, !tbaa !116
  %i.cw = add i32 %i.cv, 1
  store i32 %i.cw, ptr %i.co, align 8, !tbaa !116
  br label %_ZN4mlir10Diagnostic6appendIRA37_KcEERS0_OT_.exit.i.i76

_ZN4mlir10Diagnostic6appendIRA37_KcEERS0_OT_.exit.i.i76: ; preds = %bb.ae, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit77

_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit77: ; preds = %bb.ab, %_ZN4mlir10Diagnostic6appendIRA37_KcEERS0_OT_.exit.i.i76
  %i.cx = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %27) #29
  %i.cy = load ptr, ptr %27, align 8, !tbaa !100
  %.not.i78 = icmp eq ptr %i.cy, null
  br i1 %.not.i78, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit77
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %27) #29
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit77
  %i.cz = getelementptr inbounds nuw i8, ptr %27, i64 200 ; 2 uses
  %i.da = load i8, ptr %i.cz, align 8, !tbaa !108, !range !109, !noundef !110
  %i.db = trunc nuw i8 %i.da to i1
  store i8 0, ptr %i.cz, align 8, !tbaa !108
  br i1 %i.db, label %bb.ah, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit79

bb.ah:                                            ; preds = %bb.ag
  %i.dc = getelementptr inbounds nuw i8, ptr %27, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.dc) #29
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit79

_ZN4mlir18InFlightDiagnosticD2Ev.exit79:          ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #29
  br label %bb.cg

bb.ai:                                            ; preds = %bb.aa
  %.not53 = icmp eq i64 %i.y, 2
  br i1 %.not53, label %bb.aq, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #29
  %i.dd = getelementptr inbounds nuw i8, ptr %30, i64 32
  store i8 1, ptr %i.dd, align 8, !tbaa !99
  %i.de = getelementptr inbounds nuw i8, ptr %30, i64 33
  store i8 1, ptr %i.de, align 1, !tbaa !96
  call void @_ZN4mlir9Operation9emitErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %29, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %30) #29
  %i.df = load ptr, ptr %29, align 8, !tbaa !100
  %.not.i.i80 = icmp eq ptr %i.df, null
  br i1 %.not.i.i80, label %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit84, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dg = getelementptr inbounds nuw i8, ptr %29, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  store i32 3, ptr %13, align 8, !tbaa !111
  %i.dh = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr @.str.220, ptr %i.dh, align 8, !tbaa !114
  %.sroa.2.0..sroa_idx.i.i.i.i.i81 = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 36, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i81, align 8, !tbaa !115
  %i.di = getelementptr inbounds nuw i8, ptr %29, i64 32 ; 3 uses
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !116 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %29, i64 36
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !118
  %.not.i.i.i.i.i82 = icmp ult i32 %i.dj, %i.dl
  br i1 %.not.i.i.i.i.i82, label %bb.am, label %bb.al, !prof !119

bb.al:                                            ; preds = %bb.ak
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.dg, ptr noundef nonnull align 8 dereferenceable(24) %13)
  br label %_ZN4mlir10Diagnostic6appendIRA37_KcEERS0_OT_.exit.i.i83

bb.am:                                            ; preds = %bb.ak
  %i.dm = zext i32 %i.dj to i64
  %i.dn = load ptr, ptr %i.dg, align 8, !tbaa !120
  %i.do = getelementptr inbounds nuw [24 x i8], ptr %i.dn, i64 %i.dm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.do, ptr noundef nonnull align 8 dereferenceable(24) %13, i64 24, i1 false)
  %i.dp = load i32, ptr %i.di, align 8, !tbaa !116
  %i.dq = add i32 %i.dp, 1
  store i32 %i.dq, ptr %i.di, align 8, !tbaa !116
  br label %_ZN4mlir10Diagnostic6appendIRA37_KcEERS0_OT_.exit.i.i83

_ZN4mlir10Diagnostic6appendIRA37_KcEERS0_OT_.exit.i.i83: ; preds = %bb.am, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit84

_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit84: ; preds = %bb.aj, %_ZN4mlir10Diagnostic6appendIRA37_KcEERS0_OT_.exit.i.i83
  %i.dr = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %29) #29
  %i.ds = load ptr, ptr %29, align 8, !tbaa !100
  %.not.i85 = icmp eq ptr %i.ds, null
  br i1 %.not.i85, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit84
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %29) #29
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit84
  %i.dt = getelementptr inbounds nuw i8, ptr %29, i64 200 ; 2 uses
  %i.du = load i8, ptr %i.dt, align 8, !tbaa !108, !range !109, !noundef !110
  %i.dv = trunc nuw i8 %i.du to i1
  store i8 0, ptr %i.dt, align 8, !tbaa !108
  br i1 %i.dv, label %bb.ap, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit86

bb.ap:                                            ; preds = %bb.ao
  %i.dw = getelementptr inbounds nuw i8, ptr %29, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.dw) #29
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit86

_ZN4mlir18InFlightDiagnosticD2Ev.exit86:          ; preds = %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #29
  br label %bb.cg

bb.aq:                                            ; preds = %bb.ai
  %.sroa.0.0.copyload = load i64, ptr %4, align 8 ; 3 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 3 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.13.0.copyload = load i64, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !86 ; 3 uses
  %i.dx = load i64, ptr %i.r, align 8, !tbaa !115 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !115
  %i.ea = shl i64 %i.dx, 5
  %i.eb = mul i64 %i.ea, %i.dz
  %i.ec = mul nsw i64 %.sroa.13.0.copyload, %.sroa.0.0.copyload ; 3 uses
  %i.ed = sdiv i64 %i.ec, 2
  %45 = select i1 %6, i64 %i.ed, i64 %i.ec
  %.not54 = icmp eq i64 %i.eb, %45
  br i1 %.not54, label %bb.be, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #29
  %i.ee = getelementptr inbounds nuw i8, ptr %32, i64 32
  store i8 1, ptr %i.ee, align 8, !tbaa !99
  %i.ef = getelementptr inbounds nuw i8, ptr %32, i64 33
  store i8 1, ptr %i.ef, align 1, !tbaa !96
  call void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %31, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %32) #29
  %i.eg = load ptr, ptr %31, align 8, !tbaa !100
  %.not.i.i87 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i87, label %_ZNO4mlir18InFlightDiagnosticlsIRA29_KcEEOS0_OT_.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.eh = getelementptr inbounds nuw i8, ptr %31, i64 24 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  store i32 3, ptr %12, align 8, !tbaa !111
  %i.ei = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr @.str.5, ptr %i.ei, align 8, !tbaa !114
  %.sroa.2.0..sroa_idx.i.i.i.i.i88 = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i64 9, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i88, align 8, !tbaa !115
  %i.ej = getelementptr inbounds nuw i8, ptr %31, i64 32 ; 9 uses
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !116 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %31, i64 36 ; 3 uses
  %i.em = load i32, ptr %i.el, align 4, !tbaa !118
  %.not.i.i.i.i.i89 = icmp ult i32 %i.ek, %i.em
  br i1 %.not.i.i.i.i.i89, label %bb.au, label %bb.at, !prof !119

bb.at:                                            ; preds = %bb.as
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.eh, ptr noundef nonnull align 8 dereferenceable(24) %12)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA10_KcEEOS0_OT_.exit

bb.au:                                            ; preds = %bb.as
  %i.en = zext i32 %i.ek to i64
  %i.eo = load ptr, ptr %i.eh, align 8, !tbaa !120
  %i.ep = getelementptr inbounds nuw [24 x i8], ptr %i.eo, i64 %i.en
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ep, ptr noundef nonnull align 8 dereferenceable(24) %12, i64 24, i1 false)
  %i.eq = load i32, ptr %i.ej, align 8, !tbaa !116
  %i.er = add i32 %i.eq, 1
  store i32 %i.er, ptr %i.ej, align 8, !tbaa !116
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA10_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA10_KcEEOS0_OT_.exit: ; preds = %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  %.pr = load ptr, ptr %31, align 8, !tbaa !100
  %.not.i.i90 = icmp eq ptr %.pr, null
  br i1 %.not.i.i90, label %_ZNO4mlir18InFlightDiagnosticlsIRA29_KcEEOS0_OT_.exit, label %bb.av

bb.av:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA10_KcEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  store i32 2, ptr %11, align 8, !tbaa !111
  %i.es = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.ec, ptr %i.es, align 8, !tbaa !86
  %i.et = load i32, ptr %i.ej, align 8, !tbaa !116 ; 2 uses
  %i.eu = load i32, ptr %i.el, align 4, !tbaa !118
  %.not.i.i.i.i.i91 = icmp ult i32 %i.et, %i.eu
  br i1 %.not.i.i.i.i.i91, label %bb.ax, label %bb.aw, !prof !119

bb.aw:                                            ; preds = %bb.av
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.eh, ptr noundef nonnull align 8 dereferenceable(24) %11)
  br label %_ZNO4mlir18InFlightDiagnosticlsIlEEOS0_OT_.exit

bb.ax:                                            ; preds = %bb.av
  %i.ev = zext i32 %i.et to i64
  %i.ew = load ptr, ptr %i.eh, align 8, !tbaa !120
  %i.ex = getelementptr inbounds nuw [24 x i8], ptr %i.ew, i64 %i.ev
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ex, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false)
  %i.ey = load i32, ptr %i.ej, align 8, !tbaa !116
  %i.ez = add i32 %i.ey, 1
  store i32 %i.ez, ptr %i.ej, align 8, !tbaa !116
  br label %_ZNO4mlir18InFlightDiagnosticlsIlEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIlEEOS0_OT_.exit:  ; preds = %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  %.pr145 = load ptr, ptr %31, align 8, !tbaa !100
  %.not.i.i92 = icmp eq ptr %.pr145, null
  br i1 %.not.i.i92, label %_ZNO4mlir18InFlightDiagnosticlsIRA29_KcEEOS0_OT_.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIlEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  store i32 3, ptr %10, align 8, !tbaa !111
  %i.fa = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr @.str.221, ptr %i.fa, align 8, !tbaa !114
  %.sroa.2.0..sroa_idx.i.i.i.i.i93 = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 28, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i93, align 8, !tbaa !115
  %i.fb = load i32, ptr %i.ej, align 8, !tbaa !116 ; 2 uses
  %i.fc = load i32, ptr %i.el, align 4, !tbaa !118
  %.not.i.i.i.i.i94 = icmp ult i32 %i.fb, %i.fc
  br i1 %.not.i.i.i.i.i94, label %bb.ba, label %bb.az, !prof !119

bb.az:                                            ; preds = %bb.ay
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.eh, ptr noundef nonnull align 8 dereferenceable(24) %10)
  br label %_ZN4mlir10Diagnostic6appendIRA29_KcEERS0_OT_.exit.i.i

bb.ba:                                            ; preds = %bb.ay
  %i.fd = zext i32 %i.fb to i64
  %i.fe = load ptr, ptr %i.eh, align 8, !tbaa !120
  %i.ff = getelementptr inbounds nuw [24 x i8], ptr %i.fe, i64 %i.fd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ff, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false)
  %i.fg = load i32, ptr %i.ej, align 8, !tbaa !116
  %i.fh = add i32 %i.fg, 1
  store i32 %i.fh, ptr %i.ej, align 8, !tbaa !116
  br label %_ZN4mlir10Diagnostic6appendIRA29_KcEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendIRA29_KcEERS0_OT_.exit.i.i: ; preds = %bb.ba, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA29_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA29_KcEEOS0_OT_.exit: ; preds = %bb.ar, %_ZNO4mlir18InFlightDiagnosticlsIRA10_KcEEOS0_OT_.exit, %_ZNO4mlir18InFlightDiagnosticlsIlEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendIRA29_KcEERS0_OT_.exit.i.i
  %i.fi = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %31) #29
  %i.fj = load ptr, ptr %31, align 8, !tbaa !100
  %.not.i95 = icmp eq ptr %i.fj, null
  br i1 %.not.i95, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA29_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %31) #29
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %_ZNO4mlir18InFlightDiagnosticlsIRA29_KcEEOS0_OT_.exit
  %i.fk = getelementptr inbounds nuw i8, ptr %31, i64 200 ; 2 uses
  %i.fl = load i8, ptr %i.fk, align 8, !tbaa !108, !range !109, !noundef !110
  %i.fm = trunc nuw i8 %i.fl to i1
  store i8 0, ptr %i.fk, align 8, !tbaa !108
  br i1 %i.fm, label %bb.bd, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit96

bb.bd:                                            ; preds = %bb.bc
  %i.fn = getelementptr inbounds nuw i8, ptr %31, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.fn) #29
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit96

_ZN4mlir18InFlightDiagnosticD2Ev.exit96:          ; preds = %bb.bc, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #29
  br label %bb.cg

bb.be:                                            ; preds = %bb.aq
  %i.fo = load i64, ptr %i.u, align 8, !tbaa !115
  %i.fp = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !115
  %i.fr = shl i64 %i.fo, 5
  %i.fs = mul i64 %i.fr, %i.fq
  %i.ft = mul nsw i64 %.sroa.13.0.copyload, %.sroa.8.0.copyload ; 2 uses
  %.not55 = icmp eq i64 %i.fs, %i.ft
  br i1 %.not55, label %bb.bs, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #29
  %i.fu = getelementptr inbounds nuw i8, ptr %34, i64 32
  store i8 1, ptr %i.fu, align 8, !tbaa !99
  %i.fv = getelementptr inbounds nuw i8, ptr %34, i64 33
  store i8 1, ptr %i.fv, align 1, !tbaa !96
  call void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %33, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %34) #29
  %i.fw = load ptr, ptr %33, align 8, !tbaa !100
  %.not.i.i97 = icmp eq ptr %i.fw, null
  br i1 %.not.i.i97, label %_ZNO4mlir18InFlightDiagnosticlsIRA29_KcEEOS0_OT_.exit110, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fx = getelementptr inbounds nuw i8, ptr %33, i64 24 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  store i32 3, ptr %9, align 8, !tbaa !111
  %i.fy = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr @.str.5, ptr %i.fy, align 8, !tbaa !114
  %.sroa.2.0..sroa_idx.i.i.i.i.i98 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 9, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i98, align 8, !tbaa !115
  %i.fz = getelementptr inbounds nuw i8, ptr %33, i64 32 ; 9 uses
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !116 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %33, i64 36 ; 3 uses
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !118
  %.not.i.i.i.i.i99 = icmp ult i32 %i.ga, %i.gc
  br i1 %.not.i.i.i.i.i99, label %bb.bi, label %bb.bh, !prof !119

bb.bh:                                            ; preds = %bb.bg
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.fx, ptr noundef nonnull align 8 dereferenceable(24) %9)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA10_KcEEOS0_OT_.exit101

bb.bi:                                            ; preds = %bb.bg
  %i.gd = zext i32 %i.ga to i64
  %i.ge = load ptr, ptr %i.fx, align 8, !tbaa !120
  %i.gf = getelementptr inbounds nuw [24 x i8], ptr %i.ge, i64 %i.gd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.gf, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false)
  %i.gg = load i32, ptr %i.fz, align 8, !tbaa !116
  %i.gh = add i32 %i.gg, 1
  store i32 %i.gh, ptr %i.fz, align 8, !tbaa !116
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA10_KcEEOS0_OT_.exit101

_ZNO4mlir18InFlightDiagnosticlsIRA10_KcEEOS0_OT_.exit101: ; preds = %bb.bh, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  %.pr147 = load ptr, ptr %33, align 8, !tbaa !100
  %.not.i.i102 = icmp eq ptr %.pr147, null
  br i1 %.not.i.i102, label %_ZNO4mlir18InFlightDiagnosticlsIRA29_KcEEOS0_OT_.exit110, label %bb.bj

bb.bj:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA10_KcEEOS0_OT_.exit101
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  store i32 2, ptr %8, align 8, !tbaa !111
  %i.gi = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.ft, ptr %i.gi, align 8, !tbaa !86
  %i.gj = load i32, ptr %i.fz, align 8, !tbaa !116 ; 2 uses
  %i.gk = load i32, ptr %i.gb, align 4, !tbaa !118
  %.not.i.i.i.i.i103 = icmp ult i32 %i.gj, %i.gk
  br i1 %.not.i.i.i.i.i103, label %bb.bl, label %bb.bk, !prof !119

bb.bk:                                            ; preds = %bb.bj
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.fx, ptr noundef nonnull align 8 dereferenceable(24) %8)
  br label %_ZNO4mlir18InFlightDiagnosticlsIlEEOS0_OT_.exit105

bb.bl:                                            ; preds = %bb.bj
  %i.gl = zext i32 %i.gj to i64
  %i.gm = load ptr, ptr %i.fx, align 8, !tbaa !120
  %i.gn = getelementptr inbounds nuw [24 x i8], ptr %i.gm, i64 %i.gl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.gn, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false)
  %i.go = load i32, ptr %i.fz, align 8, !tbaa !116
  %i.gp = add i32 %i.go, 1
  store i32 %i.gp, ptr %i.fz, align 8, !tbaa !116
  br label %_ZNO4mlir18InFlightDiagnosticlsIlEEOS0_OT_.exit105

_ZNO4mlir18InFlightDiagnosticlsIlEEOS0_OT_.exit105: ; preds = %bb.bk, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %.pr149 = load ptr, ptr %33, align 8, !tbaa !100
  %.not.i.i106 = icmp eq ptr %.pr149, null
  br i1 %.not.i.i106, label %_ZNO4mlir18InFlightDiagnosticlsIRA29_KcEEOS0_OT_.exit110, label %bb.bm

bb.bm:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIlEEOS0_OT_.exit105
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  store i32 3, ptr %7, align 8, !tbaa !111
  %i.gq = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @.str.222, ptr %i.gq, align 8, !tbaa !114
  %.sroa.2.0..sroa_idx.i.i.i.i.i107 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 28, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i107, align 8, !tbaa !115
  %i.gr = load i32, ptr %i.fz, align 8, !tbaa !116 ; 2 uses
  %i.gs = load i32, ptr %i.gb, align 4, !tbaa !118
  %.not.i.i.i.i.i108 = icmp ult i32 %i.gr, %i.gs
  br i1 %.not.i.i.i.i.i108, label %bb.bo, label %bb.bn, !prof !119

bb.bn:                                            ; preds = %bb.bm
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.fx, ptr noundef nonnull align 8 dereferenceable(24) %7)
  br label %_ZN4mlir10Diagnostic6appendIRA29_KcEERS0_OT_.exit.i.i109

bb.bo:                                            ; preds = %bb.bm
  %i.gt = zext i32 %i.gr to i64
  %i.gu = load ptr, ptr %i.fx, align 8, !tbaa !120
  %i.gv = getelementptr inbounds nuw [24 x i8], ptr %i.gu, i64 %i.gt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.gv, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  %i.gw = load i32, ptr %i.fz, align 8, !tbaa !116
  %i.gx = add i32 %i.gw, 1
  store i32 %i.gx, ptr %i.fz, align 8, !tbaa !116
  br label %_ZN4mlir10Diagnostic6appendIRA29_KcEERS0_OT_.exit.i.i109

_ZN4mlir10Diagnostic6appendIRA29_KcEERS0_OT_.exit.i.i109: ; preds = %bb.bo, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA29_KcEEOS0_OT_.exit110

_ZNO4mlir18InFlightDiagnosticlsIRA29_KcEEOS0_OT_.exit110: ; preds = %bb.bf, %_ZNO4mlir18InFlightDiagnosticlsIRA10_KcEEOS0_OT_.exit101, %_ZNO4mlir18InFlightDiagnosticlsIlEEOS0_OT_.exit105, %_ZN4mlir10Diagnostic6appendIRA29_KcEERS0_OT_.exit.i.i109
  %i.gy = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %33) #29
  %i.gz = load ptr, ptr %33, align 8, !tbaa !100
  %.not.i111 = icmp eq ptr %i.gz, null
  br i1 %.not.i111, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA29_KcEEOS0_OT_.exit110
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %33) #29
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %_ZNO4mlir18InFlightDiagnosticlsIRA29_KcEEOS0_OT_.exit110
  %i.ha = getelementptr inbounds nuw i8, ptr %33, i64 200 ; 2 uses
  %i.hb = load i8, ptr %i.ha, align 8, !tbaa !108, !range !109, !noundef !110
  %i.hc = trunc nuw i8 %i.hb to i1
  store i8 0, ptr %i.ha, align 8, !tbaa !108
  br i1 %i.hc, label %bb.br, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit112

bb.br:                                            ; preds = %bb.bq
  %i.hd = getelementptr inbounds nuw i8, ptr %33, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.hd) #29
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit112

_ZN4mlir18InFlightDiagnosticD2Ev.exit112:         ; preds = %bb.bq, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #29
  br label %bb.cg

bb.bs:                                            ; preds = %bb.be
  %i.he = load i64, ptr %i.x, align 8, !tbaa !115
  %i.hf = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !115
  %i.hh = shl i64 %i.he, 5
  %i.hi = mul i64 %i.hh, %i.hg
  %i.hj = mul nsw i64 %.sroa.8.0.copyload, %.sroa.0.0.copyload ; 2 uses
  %.not56 = icmp eq i64 %i.hi, %i.hj
  br i1 %.not56, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #29
  %i.hk = getelementptr inbounds nuw i8, ptr %36, i64 32
  store i8 1, ptr %i.hk, align 8, !tbaa !99
  %i.hl = getelementptr inbounds nuw i8, ptr %36, i64 33
  store i8 1, ptr %i.hl, align 1, !tbaa !96
  call void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %35, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %36) #29
  %i.hm = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsIRA10_KcEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %35, ptr noundef nonnull align 1 dereferenceable(10) @.str.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #29
  store i64 %i.hj, ptr %i.d, align 8, !tbaa !115
  %i.hn = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsIlEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %i.hm, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.ho = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsIRA29_KcEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %i.hn, ptr noundef nonnull align 1 dereferenceable(29) @.str.223)
  %i.hp = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %i.ho) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #29
  call void @_ZN4mlir18InFlightDiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %35) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #29
  br label %bb.cg

bb.bu:                                            ; preds = %bb.bs
  br i1 %5, label %bb.bv, label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  %i.hq = call noundef zeroext i1 @_ZNK4mlir4Type5isF32Ev(ptr noundef nonnull align 8 dereferenceable(8) %20) #29
  br i1 %i.hq, label %._crit_edge, label %bb.bw

._crit_edge:                                      ; preds = %bb.bv
  %.pre = load i64, ptr %i.r, align 8, !tbaa !115
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #29
  %i.hr = getelementptr inbounds nuw i8, ptr %38, i64 32
  store i8 1, ptr %i.hr, align 8, !tbaa !99
  %i.hs = getelementptr inbounds nuw i8, ptr %38, i64 33
  store i8 1, ptr %i.hs, align 1, !tbaa !96
  call void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %37, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %38) #29
  %i.ht = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsIRA49_KcEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %37, ptr noundef nonnull align 1 dereferenceable(49) @.str.224)
  %i.hu = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %i.ht) #29
  call void @_ZN4mlir18InFlightDiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %37) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #29
  br label %bb.cg

bb.bx:                                            ; preds = %._crit_edge, %bb.bu
  %i.hv = phi i64 [ %.pre, %._crit_edge ], [ %i.dx, %bb.bu ]
  %i.hw = sdiv i64 %.sroa.0.0.copyload, 8         ; 2 uses
  %i.hx = sdiv i64 %.sroa.8.0.copyload, 8         ; 2 uses
  %i.hy = sdiv i64 %.sroa.13.0.copyload, %.0      ; 2 uses
  %i.hz = mul nsw i64 %i.hy, %i.hw                ; 3 uses
  %i.ia = sdiv i64 %i.hz, 2
  %46 = select i1 %6, i64 %i.ia, i64 %i.hz
  %.not57 = icmp eq i64 %i.hv, %46
  br i1 %.not57, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.ib = load i64, ptr %i.dy, align 8, !tbaa !115
  %.not58 = icmp eq i64 %i.ib, %i.bo
  br i1 %.not58, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #29
  %i.ic = getelementptr inbounds nuw i8, ptr %40, i64 32
  store i8 1, ptr %i.ic, align 8, !tbaa !99
  %i.id = getelementptr inbounds nuw i8, ptr %40, i64 33
  store i8 1, ptr %i.id, align 1, !tbaa !96
  call void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %39, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %40) #29
  %i.ie = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsIRA33_KcEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %39, ptr noundef nonnull align 1 dereferenceable(33) @.str.225)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #29
  store i64 %i.hz, ptr %i.e, align 8, !tbaa !115
  %i.if = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsIlEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ie, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %i.ig = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsIRA4_KcEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %i.if, ptr noundef nonnull align 1 dereferenceable(4) @.str.226)
  %i.ih = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsIRlEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ig, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.ii = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ih, ptr noundef nonnull align 1 dereferenceable(2) @.str.173)
  %i.ij = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %i.ii) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #29
  call void @_ZN4mlir18InFlightDiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %39) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #29
  br label %bb.cg

bb.ca:                                            ; preds = %bb.by
  %i.ik = load i64, ptr %i.u, align 8, !tbaa !115
  %i.il = mul nsw i64 %i.hy, %i.hx                ; 2 uses
  %.not59 = icmp eq i64 %i.ik, %i.il
  br i1 %.not59, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.im = load i64, ptr %i.fp, align 8, !tbaa !115
  %.not60 = icmp eq i64 %i.im, %i.bo
  br i1 %.not60, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #29
  %i.in = getelementptr inbounds nuw i8, ptr %42, i64 32
  store i8 1, ptr %i.in, align 8, !tbaa !99
  %i.io = getelementptr inbounds nuw i8, ptr %42, i64 33
  store i8 1, ptr %i.io, align 1, !tbaa !96
  call void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %41, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %42) #29
  %i.ip = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsIRA33_KcEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %41, ptr noundef nonnull align 1 dereferenceable(33) @.str.227)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #29
  store i64 %i.il, ptr %i.f, align 8, !tbaa !115
  %i.iq = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsIlEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ip, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.ir = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsIRA4_KcEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %i.iq, ptr noundef nonnull align 1 dereferenceable(4) @.str.226)
  %i.is = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsIRlEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ir, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.it = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %i.is, ptr noundef nonnull align 1 dereferenceable(2) @.str.173)
  %i.iu = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %i.it) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #29
  call void @_ZN4mlir18InFlightDiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %41) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #29
  br label %bb.cg

bb.cd:                                            ; preds = %bb.cb
  %i.iv = load i64, ptr %i.x, align 8, !tbaa !115
  %i.iw = mul nsw i64 %i.hx, %i.hw                ; 2 uses
  %.not61 = icmp eq i64 %i.iv, %i.iw
  br i1 %.not61, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.ix = load i64, ptr %i.hf, align 8, !tbaa !115
  %.not62 = icmp eq i64 %i.ix, 2
  br i1 %.not62, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #29
  %i.iy = getelementptr inbounds nuw i8, ptr %44, i64 32
  store i8 1, ptr %i.iy, align 8, !tbaa !99
  %i.iz = getelementptr inbounds nuw i8, ptr %44, i64 33
  store i8 1, ptr %i.iz, align 1, !tbaa !96
  call void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %43, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %44) #29
  %i.ja = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsIRA33_KcEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %43, ptr noundef nonnull align 1 dereferenceable(33) @.str.228)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #29
  store i64 %i.iw, ptr %i.g, align 8, !tbaa !115
  %i.jb = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsIlEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ja, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  %i.jc = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsIRA4_KcEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %i.jb, ptr noundef nonnull align 1 dereferenceable(4) @.str.226)
  %i.jd = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsIRlEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %i.jc, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.je = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %i.jd, ptr noundef nonnull align 1 dereferenceable(2) @.str.173)
  %i.jf = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %i.je) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #29
  call void @_ZN4mlir18InFlightDiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %43) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #29
  br label %bb.cg

bb.cg:                                            ; preds = %_ZN4mlir18InFlightDiagnosticD2Ev.exit96, %_ZN4mlir18InFlightDiagnosticD2Ev.exit112, %bb.bt, %bb.bw, %bb.cf, %bb.cc, %bb.bz, %bb.ce, %_ZN4mlir18InFlightDiagnosticD2Ev.exit86, %_ZN4mlir18InFlightDiagnosticD2Ev.exit79, %_ZN4mlir18InFlightDiagnosticD2Ev.exit72, %_ZNO4mlir18InFlightDiagnosticlsINS_13OperationNameEEEOS0_OT_.exit, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.0.2 = phi i8 [ %i.ap, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ %i.cd, %_ZN4mlir18InFlightDiagnosticD2Ev.exit72 ], [ %i.cx, %_ZN4mlir18InFlightDiagnosticD2Ev.exit79 ], [ %i.dr, %_ZN4mlir18InFlightDiagnosticD2Ev.exit86 ], [ %i.bn, %_ZNO4mlir18InFlightDiagnosticlsINS_13OperationNameEEEOS0_OT_.exit ], [ %i.fi, %_ZN4mlir18InFlightDiagnosticD2Ev.exit96 ], [ %i.gy, %_ZN4mlir18InFlightDiagnosticD2Ev.exit112 ], [ %i.hp, %bb.bt ], [ %i.hu, %bb.bw ], [ %i.ij, %bb.bz ], [ %i.iu, %bb.cc ], [ %i.jf, %bb.cf ], [ 1, %bb.ce ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i8 %.sroa.0.2
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5nvgpu15MmaSparseSyncOp5buildERNS_9OpBuilderERNS_14OperationStateENS_5ValueES6_S6_S6_N4llvm8ArrayRefIlEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, ptr %2, ptr %3, ptr %4, ptr %5, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef") align 8 captures(none) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.a, align 8
  %i.b = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.c = inttoptr i64 %i.b to ptr
  %.sroa.0.0.copyload = load ptr, ptr %6, align 8, !tbaa !131
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !115
  %i.d = tail call ptr @_ZN4mlir7Builder15getI64ArrayAttrEN4llvm8ArrayRefIlEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload) #29
  %i.e = ptrtoint ptr %5 to i64
  %i.f = ptrtoint ptr %i.d to i64
  tail call void @_ZN4mlir5nvgpu15MmaSparseSyncOp5buildERNS_9OpBuilderERNS_14OperationStateENS_4TypeENS_5ValueES7_S7_S7_NS_9ArrayAttrEjNS_8UnitAttrE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, ptr %i.c, ptr %2, ptr %3, ptr %4, i64 %i.e, i64 %i.f, i32 noundef 0, i64 0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5nvgpu15MmaSparseSyncOp5buildERNS_9OpBuilderERNS_14OperationStateENS_4TypeENS_5ValueES7_S7_S7_NS_9ArrayAttrEjNS_8UnitAttrE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, ptr %2, ptr %3, ptr %4, ptr %5, i64 %6, i64 %7, i32 noundef %8, i64 %9) local_unnamed_addr #0 align 2 {
bb.a:
  %10 = alloca %class.anon.2107, align 1          ; 3 uses
  %11 = alloca %class.anon.2109, align 1          ; 3 uses
  %12 = alloca %class.anon.2107, align 1          ; 3 uses
  %13 = alloca %class.anon.2109, align 1          ; 3 uses
  %14 = alloca %class.anon.2107, align 1          ; 3 uses
  %15 = alloca %class.anon.2109, align 1          ; 3 uses
  %16 = alloca %"class.mlir::Value", align 8      ; 2 uses
  %17 = alloca %"class.mlir::Value", align 8      ; 2 uses
  %18 = alloca %"class.mlir::Value", align 8      ; 2 uses
  %19 = alloca %"class.mlir::Value", align 8      ; 2 uses
  store ptr %3, ptr %16, align 8
  store ptr %4, ptr %17, align 8
  store ptr %5, ptr %18, align 8
  %i.a = inttoptr i64 %6 to ptr
  store ptr %i.a, ptr %19, align 8
  %i.b = inttoptr i64 %7 to ptr
  %i.c = ptrtoint ptr %16 to i64
  call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %i.c, i64 1) #29
  %i.d = ptrtoint ptr %17 to i64
  call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %i.d, i64 1) #29
  %i.e = ptrtoint ptr %18 to i64
  call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %i.e, i64 1) #29
  %i.f = ptrtoint ptr %19 to i64
  call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %i.f, i64 1) #29
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 6 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !128  ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.b, label %_ZN4mlir14OperationState18getOrAddPropertiesINS_5nvgpu6detail33MmaSparseSyncOpGenericAdaptorBase10PropertiesEEERT_v.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.j = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #31 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  store ptr @_ZN4mlir6detail14TypeIDResolverINS_5nvgpu6detail33MmaSparseSyncOpGenericAdaptorBase10PropertiesEvE2idE, ptr %i.i, align 8, !tbaa !30
  store ptr %i.j, ptr %i.g, align 8, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  %i.k = ptrtoint ptr %14 to i64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 272
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefEEE11callback_fnIZNS1_14OperationState18getOrAddPropertiesINS1_5nvgpu6detail33MmaSparseSyncOpGenericAdaptorBase10PropertiesEEERT_vEUlS2_E_EEvlS2_, ptr %i.l, align 8, !tbaa !130
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i64 %i.k, ptr %.sroa.43.0..sroa_idx.i, align 8, !tbaa !115
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #29
  %i.m = ptrtoint ptr %15 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 288
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefES2_EE11callback_fnIZNS1_14OperationState18getOrAddPropertiesINS1_5nvgpu6detail33MmaSparseSyncOpGenericAdaptorBase10PropertiesEEERT_vEUlS2_S2_E_EEvlS2_S2_, ptr %i.n, align 8, !tbaa !130
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 296
  store i64 %i.m, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !115
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  br label %_ZN4mlir14OperationState18getOrAddPropertiesINS_5nvgpu6detail33MmaSparseSyncOpGenericAdaptorBase10PropertiesEEERT_v.exit

_ZN4mlir14OperationState18getOrAddPropertiesINS_5nvgpu6detail33MmaSparseSyncOpGenericAdaptorBase10PropertiesEEERT_v.exit: ; preds = %bb.a, %bb.b
  %i.o = phi ptr [ %i.j, %bb.b ], [ %i.h, %bb.a ]
  store ptr %i.b, ptr %i.o, align 8
  %i.p = call ptr @_ZN4mlir7Builder14getIntegerTypeEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 32) #29
  %i.q = zext i32 %8 to i64
  %i.r = call ptr @_ZN4mlir7Builder14getIntegerAttrENS_4TypeEl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %i.p, i64 noundef %i.q) #29
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !128  ; 2 uses
  %.not.i13 = icmp eq ptr %i.s, null
  br i1 %.not.i13, label %bb.c, label %_ZN4mlir14OperationState18getOrAddPropertiesINS_5nvgpu6detail33MmaSparseSyncOpGenericAdaptorBase10PropertiesEEERT_v.exit16

bb.c:                                             ; preds = %_ZN4mlir14OperationState18getOrAddPropertiesINS_5nvgpu6detail33MmaSparseSyncOpGenericAdaptorBase10PropertiesEEERT_v.exit
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.u = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #31 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  store ptr @_ZN4mlir6detail14TypeIDResolverINS_5nvgpu6detail33MmaSparseSyncOpGenericAdaptorBase10PropertiesEvE2idE, ptr %i.t, align 8, !tbaa !30
  store ptr %i.u, ptr %i.g, align 8, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  %i.v = ptrtoint ptr %12 to i64
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 272
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefEEE11callback_fnIZNS1_14OperationState18getOrAddPropertiesINS1_5nvgpu6detail33MmaSparseSyncOpGenericAdaptorBase10PropertiesEEERT_vEUlS2_E_EEvlS2_, ptr %i.w, align 8, !tbaa !130
  %.sroa.43.0..sroa_idx.i14 = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i64 %i.v, ptr %.sroa.43.0..sroa_idx.i14, align 8, !tbaa !115
end_hunk_0
