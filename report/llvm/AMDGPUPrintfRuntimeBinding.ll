Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AMDGPUPrintfRuntimeBinding?download=true
inline.NumInlined: 939
inline.NumDeleted: 615
begin_hunk_0_@_ZN12_GLOBAL__N_130AMDGPUPrintfRuntimeBindingImpl17lowerPrintfForGpuERN4llvm6ModuleE:bb.a
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = sub nsw i64 0, %i.cr
  %i.ct = getelementptr inbounds [32 x i8], ptr %i.cm, i64 %i.cs
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !263 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  %i.cv = call noundef zeroext i1 @_ZN4llvm21getConstantStringInfoEPKNS_5ValueERNS_9StringRefEb(ptr noundef %i.cu, ptr noundef nonnull align 8 dereferenceable(16) %13, i1 noundef zeroext true) #15
  br i1 %i.cv, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.cw = call noundef ptr @_ZNK4llvm5Value17stripPointerCastsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cu) #15
  %i.cx = load i8, ptr %i.cw, align 8, !tbaa !46
  switch i8 %i.cx, label %bb.d [
    i8 9, label %bb.dv
    i8 1, label %bb.dv
    i8 0, label %bb.dv
  ]

bb.d:                                             ; preds = %bb.c
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !77
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !78, !nonnull !59, !align !60
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  %i.db = call noundef ptr @_ZNK4llvm11Instruction11getFunctionEv(ptr noundef nonnull align 8 dereferenceable(72) %i.cm) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  store i8 1, ptr %i.ah, align 1, !tbaa !266
  store ptr @.str.22, ptr %9, align 8, !tbaa !79
  store i8 3, ptr %i.ag, align 8, !tbaa !267
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cm, i64 48
  call void @_ZN4llvm18DiagnosticLocationC1ERKNS_8DebugLocE(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.dc) #15
  store i32 25, ptr %i.ai, align 8, !tbaa !270
  store i8 0, ptr %i.aj, align 4, !tbaa !271
  store ptr %i.db, ptr %i.ak, align 8, !tbaa !273
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 8 dereferenceable(16) %10, i64 16, i1 false), !tbaa.struct !276
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm25DiagnosticInfoUnsupportedE, i64 16), ptr %8, align 8, !tbaa !24
  store ptr %9, ptr %i.am, align 8, !tbaa !278
  call void @_ZN4llvm11LLVMContext8diagnoseERKNS_14DiagnosticInfoE(ptr noundef nonnull align 8 dereferenceable(8) %i.da, ptr noundef nonnull align 8 dereferenceable(13) %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %bb.dv

bb.e:                                             ; preds = %bb.b
  %.sroa.0165.0.copyload = load ptr, ptr %13, align 8, !tbaa !12
  %.sroa.2166.0.copyload = load i64, ptr %.sroa.2166.0..sroa_idx, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %.sroa.0165.0.copyload, ptr %7, align 8
  store i64 %.sroa.2166.0.copyload, ptr %i.an, align 8
  %i.dd = call noundef i64 @_ZNK4llvm9StringRef13find_first_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr nonnull @_ZZNK12_GLOBAL__N_130AMDGPUPrintfRuntimeBindingImpl23getConversionSpecifiersERN4llvm15SmallVectorImplIcEENS1_9StringRefEmE14ConvSpecifiers, i64 17, i64 noundef 0) #15 ; 2 uses
  %.not10.i = icmp eq i64 %i.dd, -1
  br i1 %.not10.i, label %_ZNK12_GLOBAL__N_130AMDGPUPrintfRuntimeBindingImpl23getConversionSpecifiersERN4llvm15SmallVectorImplIcEENS1_9StringRefEm.exit, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.e, %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit.i
  %i.de = phi i64 [ %i.ec, %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit.i ], [ %i.dd, %bb.e ] ; 3 uses
  %.01211.i = phi i64 [ %i.eb, %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit.i ], [ 0, %bb.e ] ; 2 uses
  %i.df = sub i64 %i.de, %.01211.i
  %i.dg = load i64, ptr %i.an, align 8, !tbaa !279 ; 2 uses
  %.sroa.speculated4.i.i = call i64 @llvm.umin.i64(i64 %i.dg, i64 %.01211.i) ; 2 uses
  %i.dh = load ptr, ptr %7, align 8, !tbaa !280   ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.sroa.speculated4.i.i ; 2 uses
  %i.dj = sub i64 %i.dg, %.sroa.speculated4.i.i
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.dj, i64 %i.df) ; 2 uses
  %.not.i.i.i5 = icmp eq i64 %.sroa.speculated.i.i, 0
  br i1 %.not.i.i.i5, label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit.i, label %.lr.ph7

bb.f:                                             ; preds = %.lr.ph7
  %.not.i.i.i = icmp eq i64 %i.dk, 0
  br i1 %.not.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit.i, label %.lr.ph7, !llvm.loop !132

.lr.ph7:                                          ; preds = %.lr.ph12.i, %bb.f
  %.0.i.i.i6 = phi i64 [ %i.dk, %bb.f ], [ %.sroa.speculated.i.i, %.lr.ph12.i ] ; 2 uses
  %i.dk = add i64 %.0.i.i.i6, -1                  ; 5 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !79
  %i.dn = icmp eq i8 %i.dm, 37
  br i1 %i.dn, label %_ZNK4llvm9StringRef12find_last_ofEcm.exit.preheader.i, label %bb.f, !llvm.loop !132

_ZNK4llvm9StringRef12find_last_ofEcm.exit.preheader.i: ; preds = %.lr.ph7
  %indvars515.le = trunc i64 %.0.i.i.i6 to i1
  %.not176.i = icmp eq i64 %i.dk, 0
  br i1 %.not176.i, label %.critedge13.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK4llvm9StringRef12find_last_ofEcm.exit.preheader.i, %_ZNK4llvm9StringRef12find_last_ofEcm.exit.i
  %.08.i = phi i64 [ %i.do, %_ZNK4llvm9StringRef12find_last_ofEcm.exit.i ], [ %i.dk, %_ZNK4llvm9StringRef12find_last_ofEcm.exit.preheader.i ]
  %.0117.i = phi i1 [ %i.ds, %_ZNK4llvm9StringRef12find_last_ofEcm.exit.i ], [ true, %_ZNK4llvm9StringRef12find_last_ofEcm.exit.preheader.i ] ; 2 uses
  %i.do = add i64 %.08.i, -1                      ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !79
  %i.dr = icmp eq i8 %i.dq, 37
  br i1 %i.dr, label %_ZNK4llvm9StringRef12find_last_ofEcm.exit.i, label %.critedge.i

_ZNK4llvm9StringRef12find_last_ofEcm.exit.i:      ; preds = %.lr.ph.i
  %i.ds = xor i1 %.0117.i, true
  %.not17.i = icmp eq i64 %i.do, 0
  br i1 %.not17.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !133

.critedge.i:                                      ; preds = %_ZNK4llvm9StringRef12find_last_ofEcm.exit.i, %.lr.ph.i
  %.011.lcssa.i = phi i1 [ %indvars515.le, %_ZNK4llvm9StringRef12find_last_ofEcm.exit.i ], [ %.0117.i, %.lr.ph.i ]
  br i1 %.011.lcssa.i, label %.critedge13.i, label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit.i

.critedge13.i:                                    ; preds = %.critedge.i, %_ZNK4llvm9StringRef12find_last_ofEcm.exit.preheader.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.de
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !79  ; 2 uses
  %i.dv = load i64, ptr %i.ae, align 8, !tbaa !76 ; 2 uses
  %i.dw = load i64, ptr %i.af, align 8, !tbaa !262
  %.not.i.i = icmp ult i64 %i.dv, %i.dw
  br i1 %.not.i.i, label %bb.h, label %bb.g, !prof !55

bb.g:                                             ; preds = %.critedge13.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIcLb1EE15growAndPushBackEc(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 noundef signext %i.du)
  br label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit.i

bb.h:                                             ; preds = %.critedge13.i
  %i.dx = load ptr, ptr %12, align 8, !tbaa !75
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.dv
  store i8 %i.du, ptr %i.dy, align 1
  %i.dz = load i64, ptr %i.ae, align 8, !tbaa !76
  %i.ea = add i64 %i.dz, 1
  store i64 %i.ea, ptr %i.ae, align 8, !tbaa !76
  br label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit.i

_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit.i: ; preds = %bb.f, %.lr.ph12.i, %bb.h, %bb.g, %.critedge.i
  %i.eb = add nuw i64 %i.de, 1                    ; 2 uses
  %i.ec = call noundef i64 @_ZNK4llvm9StringRef13find_first_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr nonnull @_ZZNK12_GLOBAL__N_130AMDGPUPrintfRuntimeBindingImpl23getConversionSpecifiersERN4llvm15SmallVectorImplIcEENS1_9StringRefEmE14ConvSpecifiers, i64 17, i64 noundef %i.eb) #15 ; 2 uses
  %.not.i = icmp eq i64 %i.ec, -1
  br i1 %.not.i, label %_ZNK12_GLOBAL__N_130AMDGPUPrintfRuntimeBindingImpl23getConversionSpecifiersERN4llvm15SmallVectorImplIcEENS1_9StringRefEm.exit, label %.lr.ph12.i, !llvm.loop !134

_ZNK12_GLOBAL__N_130AMDGPUPrintfRuntimeBindingImpl23getConversionSpecifiersERN4llvm15SmallVectorImplIcEENS1_9StringRefEm.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15
  store ptr %i.ao, ptr %14, align 8, !tbaa !82
  store i64 0, ptr %i.ap, align 8, !tbaa !83
  store i8 0, ptr %i.ao, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #15
  store i32 0, ptr %i.aq, align 8, !tbaa !284
  store i8 0, ptr %i.ar, align 8, !tbaa !285
  store i32 1, ptr %i.as, align 4, !tbaa !286
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %15, align 8, !tbaa !24
  store ptr %14, ptr %i.au, align 8, !tbaa !288
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %15, ptr noundef null, i64 noundef 0, i32 noundef 0) #15
  %i.ed = call noundef ptr @_ZN4llvm8CallBase7arg_endEv(ptr noundef nonnull align 8 dereferenceable(88) %i.cm)
  %i.ee = load i32, ptr %i.co, align 4
  %i.ef = and i32 %i.ee, 268435455
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = sub nsw i64 0, %i.eg
  %i.ei = getelementptr inbounds [32 x i8], ptr %i.cm, i64 %i.eh
  %i.ej = ptrtoint ptr %i.ed to i64
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = sub i64 %i.ej, %i.ek
  %i.em = lshr exact i64 %i.el, 5
  %i.en = add nuw nsw i64 %i.em, 4294967295
  %i.eo = and i64 %i.en, 4294967295
  %i.ep = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %15, i64 noundef %i.eo) #15 ; 0 uses
  %i.eq = load ptr, ptr %i.av, align 8, !tbaa !289 ; 3 uses
  %i.er = load ptr, ptr %i.aw, align 8, !tbaa !290
  %.not.i260 = icmp ult ptr %i.eq, %i.er
  br i1 %.not.i260, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNK12_GLOBAL__N_130AMDGPUPrintfRuntimeBindingImpl23getConversionSpecifiersERN4llvm15SmallVectorImplIcEENS1_9StringRefEm.exit
  %i.es = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %15, i8 noundef zeroext 58) #15 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.j:                                             ; preds = %_ZNK12_GLOBAL__N_130AMDGPUPrintfRuntimeBindingImpl23getConversionSpecifiersERN4llvm15SmallVectorImplIcEENS1_9StringRefEm.exit
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 1
  store ptr %i.et, ptr %i.av, align 8, !tbaa !289
  store i8 58, ptr %i.eq, align 1, !tbaa !79
  br label %_ZN4llvm11raw_ostreamlsEc.exit

_ZN4llvm11raw_ostreamlsEc.exit:                   ; preds = %bb.i, %bb.j
  %i.eu = getelementptr inbounds nuw i8, ptr %i.cm, i64 24 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.cm, i64 40 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.cm, i64 48 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit274, %_ZN4llvm11raw_ostreamlsEc.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN4llvm11raw_ostreamlsEc.exit274 ], [ 1, %_ZN4llvm11raw_ostreamlsEc.exit ] ; 7 uses
  %.0229 = phi i32 [ %i.lb, %_ZN4llvm11raw_ostreamlsEc.exit274 ], [ 4, %_ZN4llvm11raw_ostreamlsEc.exit ] ; 2 uses
  %i.ex = load i8, ptr %i.cm, align 8, !tbaa !46
  switch i8 %i.ex, label %bb.n [
    i8 88, label %_ZN4llvm8CallBase17data_operands_endEv.exit.i
    i8 36, label %bb.l
    i8 42, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  br label %_ZN4llvm8CallBase17data_operands_endEv.exit.i

bb.m:                                             ; preds = %bb.k
  %i.ey = call noundef i32 @_ZNK4llvm8CallBase34getNumSubclassExtraOperandsDynamicEv(ptr noundef nonnull align 8 dereferenceable(88) %i.cm) #15
  %i.ez = zext i32 %i.ey to i64
  %i.fa = shl nuw nsw i64 %i.ez, 5
  %i.fb = sub nuw nsw i64 -32, %i.fa
  br label %_ZN4llvm8CallBase17data_operands_endEv.exit.i

bb.n:                                             ; preds = %bb.k
  unreachable

_ZN4llvm8CallBase17data_operands_endEv.exit.i:    ; preds = %bb.m, %bb.l, %bb.k
  %.0.i.i.i367.neg = phi i64 [ %i.fb, %bb.m ], [ -96, %bb.l ], [ -32, %bb.k ]
  %i.fc = load i32, ptr %i.co, align 4            ; 2 uses
  %i.fd = icmp slt i32 %i.fc, 0
  br i1 %i.fd, label %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i.i.i, label %_ZNK4llvm8CallBase17hasOperandBundlesEv.exit.i.i

_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i.i.i: ; preds = %_ZN4llvm8CallBase17data_operands_endEv.exit.i
  %i.fe = call { ptr, i64 } @_ZN4llvm4User13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(88) %i.cm) #15
  %i.ff = extractvalue { ptr, i64 } %i.fe, 0      ; 2 uses
  %.pr.i.i.i.i = load i32, ptr %i.co, align 4     ; 2 uses
  %i.fg = icmp slt i32 %.pr.i.i.i.i, 0
  br i1 %i.fg, label %bb.o, label %_ZNK4llvm8CallBase17hasOperandBundlesEv.exit.i.i

bb.o:                                             ; preds = %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i.i.i
  %i.fh = call { ptr, i64 } @_ZN4llvm4User13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(88) %i.cm) #15 ; 2 uses
  %i.fi = extractvalue { ptr, i64 } %i.fh, 0
  %i.fj = extractvalue { ptr, i64 } %i.fh, 1
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.fj
  %i.fl = ptrtoint ptr %i.fk to i64
  %.pre523.pre = load i32, ptr %i.co, align 4
  br label %_ZNK4llvm8CallBase17hasOperandBundlesEv.exit.i.i

_ZNK4llvm8CallBase17hasOperandBundlesEv.exit.i.i: ; preds = %bb.o, %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i.i.i, %_ZN4llvm8CallBase17data_operands_endEv.exit.i
  %.pre523 = phi i32 [ %.pre523.pre, %bb.o ], [ %.pr.i.i.i.i, %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i.i.i ], [ %i.fc, %_ZN4llvm8CallBase17data_operands_endEv.exit.i ] ; 2 uses
  %.0.i.i3.i.i.i.i = phi ptr [ %i.ff, %bb.o ], [ %i.ff, %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i.i.i ], [ null, %_ZN4llvm8CallBase17data_operands_endEv.exit.i ]
  %.0.i.i1.i.i.i.i = phi i64 [ %i.fl, %bb.o ], [ 0, %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i.i.i ], [ 0, %_ZN4llvm8CallBase17data_operands_endEv.exit.i ]
  %i.fm = ptrtoint ptr %.0.i.i3.i.i.i.i to i64
  %i.fn = sub i64 %.0.i.i1.i.i.i.i, %i.fm
  %i.fo = and i64 %i.fn, 68719476720
  %.not.i.i368 = icmp eq i64 %i.fo, 0
  br i1 %.not.i.i368, label %_ZN4llvm8CallBase7arg_endEv.exit, label %bb.p

bb.p:                                             ; preds = %_ZNK4llvm8CallBase17hasOperandBundlesEv.exit.i.i
  %i.fp = icmp slt i32 %.pre523, 0
  call void @llvm.assume(i1 %i.fp)
  %i.fq = call { ptr, i64 } @_ZN4llvm4User13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(88) %i.cm) #15
  %i.fr = extractvalue { ptr, i64 } %i.fq, 0
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !86
  %i.fu = call { ptr, i64 } @_ZN4llvm4User13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(88) %i.cm) #15 ; 2 uses
  %i.fv = extractvalue { ptr, i64 } %i.fu, 0
  %i.fw = extractvalue { ptr, i64 } %i.fu, 1
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.fw
  %i.fy = getelementptr inbounds i8, ptr %i.fx, i64 -4
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !87
  %i.ga = sub i32 %i.fz, %i.ft
  %i.gb = zext i32 %i.ga to i64
  %.neg = mul nsw i64 %i.gb, -32
  %.pre = load i32, ptr %i.co, align 4
  br label %_ZN4llvm8CallBase7arg_endEv.exit

_ZN4llvm8CallBase7arg_endEv.exit:                 ; preds = %_ZNK4llvm8CallBase17hasOperandBundlesEv.exit.i.i, %bb.p
  %i.gc = phi i32 [ %.pre, %bb.p ], [ %.pre523, %_ZNK4llvm8CallBase17hasOperandBundlesEv.exit.i.i ]
  %.0.i.i369.neg = phi i64 [ %.neg, %bb.p ], [ 0, %_ZNK4llvm8CallBase17hasOperandBundlesEv.exit.i.i ]
  %i.gd = add nsw i64 %.0.i.i369.neg, %.0.i.i.i367.neg
  %i.ge = and i32 %i.gc, 268435455
  %i.gf = zext nneg i32 %i.ge to i64
  %.neg455 = mul nsw i64 %i.gf, -32               ; 2 uses
  %gepdiff = sub nsw i64 %i.gd, %.neg455
  %i.gg = lshr exact i64 %gepdiff, 5
  %i.gh = and i64 %i.gg, 4294967295
  %i.gi = icmp samesign uge i64 %indvars.iv, %i.gh
  %i.gj = load i64, ptr %i.ae, align 8
  %.not251 = icmp ult i64 %i.gj, %indvars.iv
  %or.cond = select i1 %i.gi, i1 true, i1 %.not251
  br i1 %or.cond, label %.critedge, label %bb.q

.critedge:                                        ; preds = %_ZN4llvm8CallBase7arg_endEv.exit
  %i.gk = load ptr, ptr %13, align 8, !tbaa !280  ; 2 uses
  %i.gl = load i64, ptr %.sroa.2166.0..sroa_idx, align 8, !tbaa !279 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.gl
  %.not252488 = icmp samesign eq i64 %i.gl, 0
  br i1 %.not252488, label %._crit_edge, label %.lr.ph

bb.q:                                             ; preds = %_ZN4llvm8CallBase7arg_endEv.exit
  %i.gn = getelementptr inbounds i8, ptr %i.cm, i64 %.neg455
  %i.go = getelementptr inbounds nuw [32 x i8], ptr %i.gn, i64 %indvars.iv
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !263 ; 8 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8 ; 2 uses
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !77 ; 6 uses
  %i.gs = load ptr, ptr %0, align 8, !tbaa !54
  %i.gt = call { i64, i8 } @_ZNK4llvm10DataLayout16getTypeAllocSizeEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.gs, ptr noundef %i.gr) #15 ; 2 uses
  %.fca.1.extract131 = extractvalue { i64, i8 } %i.gt, 1
  %i.gu = trunc nuw i8 %.fca.1.extract131 to i1
  br i1 %i.gu, label %bb.r, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.r:                                             ; preds = %bb.q
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.23) #16
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %bb.q
  %.fca.0.extract130 = extractvalue { i64, i8 } %i.gt, 0
  %i.gv = trunc i64 %.fca.0.extract130 to i32     ; 2 uses
  %i.gw = and i32 %i.gv, 3
  %.not257 = icmp eq i32 %i.gw, 0
  br i1 %.not257, label %_ZN4llvm8CallBase10setOperandEjPNS_5ValueE.exit, label %bb.s

bb.s:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.gx = call noundef ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.h) #15 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gr, i64 8 ; 3 uses
  %i.gz = load i32, ptr %i.gy, align 8            ; 2 uses
  %i.ha = and i32 %i.gz, 254
  %spec.select.i.i.i.i.i.i.i.i.not.i = icmp eq i32 %i.ha, 18
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i, label %bb.t, label %_ZNK4llvm4Type14getWithNewTypeEPS0_.exit

bb.t:                                             ; preds = %bb.s
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gr, i64 32
  %i.hc = load i32, ptr %i.hb, align 8, !tbaa !89
  %i.hd = and i32 %i.gz, 19
  %i.he = icmp eq i32 %i.hd, 19
  %.sroa.2.0.insert.shift.i.i.i = select i1 %i.he, i64 4294967296, i64 0
  %.sroa.0.0.insert.ext.i.i.i = zext i32 %i.hc to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  %i.hf = call noundef ptr @_ZN4llvm10VectorType3getEPNS_4TypeENS_12ElementCountE(ptr noundef %i.gx, i64 %.sroa.0.0.insert.insert.i.i.i) #15
  br label %_ZNK4llvm4Type14getWithNewTypeEPS0_.exit

_ZNK4llvm4Type14getWithNewTypeEPS0_.exit:         ; preds = %bb.s, %bb.t
  %spec.select.i = phi ptr [ %i.hf, %bb.t ], [ %i.gx, %bb.s ] ; 4 uses
  %i.hg = load ptr, ptr %i.ev, align 8, !tbaa !291
  store ptr %i.hg, ptr %i.t, align 8, !tbaa !292
  store ptr %i.eu, ptr %i.ax, align 8
  store i16 0, ptr %.sroa.4.0..sroa_idx.i261, align 8
  %i.hh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.cm) #15 ; 0 uses
  %i.hi = load i64, ptr %i.ew, align 8, !tbaa !293
  store i64 %i.hi, ptr %11, align 8, !tbaa !293
  %i.hj = load i32, ptr %i.gy, align 8            ; 2 uses
  %i.hk = and i32 %i.hj, 254
  %spec.select.i.i.i = icmp eq i32 %i.hk, 18
  br i1 %spec.select.i.i.i, label %bb.u, label %_ZNK4llvm4Type13getScalarTypeEv.exit.i

bb.u:                                             ; preds = %_ZNK4llvm4Type14getWithNewTypeEPS0_.exit
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !38
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !39
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8
  br label %_ZNK4llvm4Type13getScalarTypeEv.exit.i

_ZNK4llvm4Type13getScalarTypeEv.exit.i:           ; preds = %bb.u, %_ZNK4llvm4Type14getWithNewTypeEPS0_.exit
  %i.ho = phi i32 [ %.pre.i, %bb.u ], [ %i.hj, %_ZNK4llvm4Type14getWithNewTypeEPS0_.exit ] ; 2 uses
  %trunc.i.i.i = trunc i32 %i.ho to i8
  switch i8 %trunc.i.i.i, label %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit [
    i8 3, label %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit.thread
    i8 2, label %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit.thread
    i8 0, label %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit.thread
    i8 1, label %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit.thread
    i8 5, label %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit.thread
  ]

_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit:          ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit.i
  %i.hp = and i32 %i.ho, 253
  %spec.select.i.i = icmp eq i32 %i.hp, 4
  br i1 %spec.select.i.i, label %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit.thread, label %bb.y

_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit.thread:   ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit.i, %_ZNK4llvm4Type13getScalarTypeEv.exit.i, %_ZNK4llvm4Type13getScalarTypeEv.exit.i, %_ZNK4llvm4Type13getScalarTypeEv.exit.i, %_ZNK4llvm4Type13getScalarTypeEv.exit.i, %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit
  %i.hq = call noundef ptr @_ZN4llvm4Type10getFloatTyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.h) #15 ; 2 uses
  %i.hr = load i32, ptr %i.gy, align 8            ; 2 uses
  %i.hs = and i32 %i.hr, 254
  %spec.select.i.i.i.i.i.i.i.i.not.i262 = icmp eq i32 %i.hs, 18
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i262, label %bb.v, label %_ZNK4llvm4Type14getWithNewTypeEPS0_.exit267

bb.v:                                             ; preds = %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit.thread
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gr, i64 32
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !89
  %i.hv = and i32 %i.hr, 19
  %i.hw = icmp eq i32 %i.hv, 19
  %.sroa.2.0.insert.shift.i.i.i264 = select i1 %i.hw, i64 4294967296, i64 0
  %.sroa.0.0.insert.ext.i.i.i265 = zext i32 %i.hu to i64
  %.sroa.0.0.insert.insert.i.i.i266 = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i264, %.sroa.0.0.insert.ext.i.i.i265
  %i.hx = call noundef ptr @_ZN4llvm10VectorType3getEPNS_4TypeENS_12ElementCountE(ptr noundef %i.hq, i64 %.sroa.0.0.insert.insert.i.i.i266) #15
  br label %_ZNK4llvm4Type14getWithNewTypeEPS0_.exit267

_ZNK4llvm4Type14getWithNewTypeEPS0_.exit267:      ; preds = %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit.thread, %bb.v
  %spec.select.i263 = phi ptr [ %i.hx, %bb.v ], [ %i.hq, %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit.thread ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #15
  store i16 257, ptr %i.bb, align 8
  %i.hy = load i8, ptr %i.p, align 4, !tbaa !257, !range !294, !noundef !59
  %i.hz = trunc nuw i8 %i.hy to i1
  br i1 %i.hz, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZNK4llvm4Type14getWithNewTypeEPS0_.exit267
  %i.ia = call noundef ptr @_ZN4llvm13IRBuilderBase23CreateConstrainedFPCastEjPNS_5ValueEPNS_4TypeENS_9FMFSourceERKNS_5TwineEPNS_6MDNodeESt8optionalINS_12RoundingModeEESB_INS_2fp17ExceptionBehaviorEE(ptr noundef nonnull align 8 dereferenceable(88) %11, i32 noundef 119, ptr noundef nonnull %i.gp, ptr noundef %spec.select.i263, i64 0, ptr noundef nonnull align 8 dereferenceable(34) %16, ptr noundef null, i16 0, i16 0) #15
  br label %_ZN4llvm13IRBuilderBase11CreateFPExtEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeE.exit

bb.x:                                             ; preds = %_ZNK4llvm4Type14getWithNewTypeEPS0_.exit267
  %i.ib = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateCastENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeENS_9FMFSourceE(ptr noundef nonnull align 8 dereferenceable(88) %11, i32 noundef 47, ptr noundef nonnull %i.gp, ptr noundef %spec.select.i263, ptr noundef nonnull align 8 dereferenceable(34) %16, ptr noundef null, i64 0)
  br label %_ZN4llvm13IRBuilderBase11CreateFPExtEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeE.exit

_ZN4llvm13IRBuilderBase11CreateFPExtEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeE.exit: ; preds = %bb.w, %bb.x
  %.0.i.i = phi ptr [ %i.ia, %bb.w ], [ %i.ib, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #15
  br label %bb.ad

bb.y:                                             ; preds = %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit
  %i.ic = load ptr, ptr %12, align 8, !tbaa !75
  %i.id = getelementptr i8, ptr %i.ic, i64 %indvars.iv
  %i.ie = getelementptr i8, ptr %i.id, i64 -1
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !79
  switch i8 %i.if, label %bb.ac [
    i8 120, label %bb.z
    i8 88, label %bb.z
    i8 117, label %bb.z
    i8 111, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y, %bb.y, %bb.y, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #15
  store i16 257, ptr %i.ay, align 8
  %i.ig = load ptr, ptr %i.gq, align 8, !tbaa !77
  %i.ih = icmp eq ptr %i.ig, %spec.select.i
  br i1 %i.ih, label %_ZN4llvm13IRBuilderBase10CreateZExtEPNS_5ValueEPNS_4TypeERKNS_5TwineEb.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ii = load ptr, ptr %i.l, align 8, !tbaa !91, !nonnull !59, !align !60 ; 2 uses
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !24
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 120
  %i.il = load ptr, ptr %i.ik, align 8
  %i.im = call noundef ptr %i.il(ptr noundef nonnull align 8 dereferenceable(8) %i.ii, i32 noundef 40, ptr noundef nonnull %i.gp, ptr noundef %spec.select.i) #15, !inline_history !135 ; 2 uses
  %.not.not.i = icmp eq ptr %i.im, null
  br i1 %.not.not.i, label %bb.ab, label %_ZN4llvm13IRBuilderBase10CreateZExtEPNS_5ValueEPNS_4TypeERKNS_5TwineEb.exit

bb.ab:                                            ; preds = %bb.aa
  %i.in = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 72, i32 1) #15 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  store i16 257, ptr %i.az, align 8
  call void @_ZN4llvm8ZExtInstC1EPNS_5ValueEPNS_4TypeERKNS_5TwineENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(72) %i.in, ptr noundef nonnull %i.gp, ptr noundef %spec.select.i, ptr noundef nonnull align 8 dereferenceable(34) %6, ptr null, i64 0) #15
  %i.io = load ptr, ptr %i.m, align 8, !tbaa !92, !nonnull !59, !align !60 ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.ax, align 8
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i261, align 8
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !24
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  %i.ir = load ptr, ptr %i.iq, align 8
  call void %i.ir(ptr noundef nonnull align 8 dereferenceable(8) %i.io, ptr noundef nonnull %i.in, ptr noundef nonnull align 8 dereferenceable(34) %17, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.2.0.copyload.i.i) #15, !inline_history !136
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %11, ptr noundef nonnull %i.in) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %_ZN4llvm13IRBuilderBase10CreateZExtEPNS_5ValueEPNS_4TypeERKNS_5TwineEb.exit

_ZN4llvm13IRBuilderBase10CreateZExtEPNS_5ValueEPNS_4TypeERKNS_5TwineEb.exit: ; preds = %bb.z, %bb.aa, %bb.ab
  %.1.i = phi ptr [ %i.im, %bb.aa ], [ %i.gp, %bb.z ], [ %i.in, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15
  br label %bb.ad

bb.ac:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #15
  store i16 257, ptr %i.ba, align 8
  %i.is = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateCastENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeENS_9FMFSourceE(ptr noundef nonnull align 8 dereferenceable(88) %11, i32 noundef 41, ptr noundef nonnull %i.gp, ptr noundef %spec.select.i, ptr noundef nonnull align 8 dereferenceable(34) %18, ptr noundef null, i64 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #15
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN4llvm13IRBuilderBase10CreateZExtEPNS_5ValueEPNS_4TypeERKNS_5TwineEb.exit, %bb.ac, %_ZN4llvm13IRBuilderBase11CreateFPExtEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeE.exit
  %.0232 = phi ptr [ %.0.i.i, %_ZN4llvm13IRBuilderBase11CreateFPExtEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeE.exit ], [ %.1.i, %_ZN4llvm13IRBuilderBase10CreateZExtEPNS_5ValueEPNS_4TypeERKNS_5TwineEb.exit ], [ %i.is, %bb.ac ] ; 6 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.0232, i64 8
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !77 ; 3 uses
  %i.iv = load ptr, ptr %0, align 8, !tbaa !54
  %i.iw = call { i64, i8 } @_ZNK4llvm10DataLayout16getTypeAllocSizeEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.iv, ptr noundef %i.iu) #15 ; 2 uses
  %.fca.1.extract125 = extractvalue { i64, i8 } %i.iw, 1
  %i.ix = trunc nuw i8 %.fca.1.extract125 to i1
  br i1 %i.ix, label %bb.ae, label %_ZNK4llvm8TypeSizecvmEv.exit268

bb.ae:                                            ; preds = %bb.ad
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_130AMDGPUPrintfRuntimeBindingImpl17lowerPrintfForGpuERN4llvm6ModuleE:bb.a
bb.bo:                                            ; preds = %.lr.ph
  %i.px = load ptr, ptr %i.aw, align 8, !tbaa !290
  %i.py = load ptr, ptr %i.av, align 8, !tbaa !289 ; 2 uses
  %i.pz = ptrtoint ptr %i.px to i64
  %i.qa = ptrtoint ptr %i.py to i64
  %i.qb = sub i64 %i.pz, %i.qa
  %i.qc = icmp ult i64 %i.qb, 3
  br i1 %i.qc, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.qd = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef nonnull @.str.12, i64 noundef 3) #15 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.bq:                                            ; preds = %bb.bo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.py, ptr noundef nonnull align 1 dereferenceable(3) @.str.12, i64 3, i1 false)
  %i.qe = load ptr, ptr %i.av, align 8, !tbaa !289
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 3
  store ptr %i.qf, ptr %i.av, align 8, !tbaa !289
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.br:                                            ; preds = %.lr.ph
  %i.qg = load ptr, ptr %i.av, align 8, !tbaa !289 ; 3 uses
  %i.qh = load ptr, ptr %i.aw, align 8, !tbaa !290
  %.not.i307 = icmp ult ptr %i.qg, %i.qh
  br i1 %.not.i307, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.qi = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %15, i8 noundef zeroext %i.nu) #15 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.bt:                                            ; preds = %bb.br
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qg, i64 1
  store ptr %i.qj, ptr %i.av, align 8, !tbaa !289
  store i8 %i.nu, ptr %i.qg, align 1, !tbaa !79
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.bt, %bb.bs, %bb.bq, %bb.bp, %bb.bn, %bb.bm, %bb.bk, %bb.bj, %bb.bh, %bb.bg, %bb.be, %bb.bd, %bb.bb, %bb.ba, %bb.ay, %bb.ax
  %i.qk = getelementptr inbounds nuw i8, ptr %.0241489, i64 1 ; 2 uses
  %.not252 = icmp eq ptr %i.qk, %i.gm
  br i1 %.not252, label %._crit_edge, label %.lr.ph

bb.bu:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #15
  %i.ql = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  store i16 257, ptr %i.bo, align 8
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !77
  %i.qn = call noundef ptr @_ZN4llvm8Constant15getAllOnesValueEPNS_4TypeE(ptr noundef %i.qm) #15 ; 2 uses
  %i.qo = load ptr, ptr %i.l, align 8, !tbaa !91, !nonnull !59, !align !60 ; 2 uses
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !24
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 16
  %i.qr = load ptr, ptr %i.qq, align 8
  %i.qs = call noundef ptr %i.qr(ptr noundef nonnull align 8 dereferenceable(8) %i.qo, i32 noundef 31, ptr noundef nonnull %i.nq, ptr noundef %i.qn) #15, !inline_history !142 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.qs, null
  br i1 %.not.not.i.i, label %bb.bv, label %_ZN4llvm13IRBuilderBase9CreateNotEPNS_5ValueERKNS_5TwineE.exit

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  store i16 257, ptr %i.bp, align 8
  %i.qt = call noundef ptr @_ZN4llvm14BinaryOperator6CreateENS_11Instruction9BinaryOpsEPNS_5ValueES4_RKNS_5TwineENS_14InsertPositionE(i32 noundef 31, ptr noundef nonnull %i.nq, ptr noundef %i.qn, ptr noundef nonnull align 8 dereferenceable(34) %3, ptr null, i64 0) #15 ; 3 uses
  %i.qu = load ptr, ptr %i.m, align 8, !tbaa !92, !nonnull !59, !align !60 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.ax, align 8
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i261, align 8
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !24
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 16
  %i.qx = load ptr, ptr %i.qw, align 8
  call void %i.qx(ptr noundef nonnull align 8 dereferenceable(8) %i.qu, ptr noundef %i.qt, ptr noundef nonnull align 8 dereferenceable(34) %25, ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.2.0.copyload.i.i.i) #15, !inline_history !143
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %11, ptr noundef %i.qt) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %_ZN4llvm13IRBuilderBase9CreateNotEPNS_5ValueERKNS_5TwineE.exit

_ZN4llvm13IRBuilderBase9CreateNotEPNS_5ValueERKNS_5TwineE.exit: ; preds = %bb.bu, %bb.bv
  %.1.i.i = phi ptr [ %i.qt, %bb.bv ], [ %i.qs, %bb.bu ]
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #15
  store i8 1, ptr %i.br, align 1, !tbaa !266
  store ptr @.str.16, ptr %26, align 8, !tbaa !79
  store i8 3, ptr %i.bq, align 8, !tbaa !267
  %i.qy = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateCastENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeENS_9FMFSourceE(ptr noundef nonnull align 8 dereferenceable(88) %11, i32 noundef 41, ptr noundef %.1.i.i, ptr noundef %i.u, ptr noundef nonnull align 8 dereferenceable(34) %26, ptr noundef null, i64 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #15
  call void @_ZN4llvm5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.cm, ptr noundef %i.qy) #15
  br label %bb.bw

bb.bw:                                            ; preds = %_ZN4llvm13IRBuilderBase9CreateNotEPNS_5ValueERKNS_5TwineE.exit, %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit
  %i.qz = load ptr, ptr %i.ev, align 8, !tbaa !291
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #15
  %i.ra = getelementptr inbounds nuw i8, ptr %i.nq, i64 24
  store i16 257, ptr %i.bs, align 8
  %i.rb = call noundef ptr @_ZN4llvm10SplitBlockEPNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES0_EELb0ELb0EEEPNS_14DomTreeUpdaterEPNS_8LoopInfoEPNS_16MemorySSAUpdaterERKNS_5TwineE(ptr noundef %i.qz, ptr nonnull %i.ra, i64 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(34) %27) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #15
  %i.rc = getelementptr inbounds nuw i8, ptr %i.nq, i64 32
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !309
  %i.re = call noundef ptr @_ZN4llvm25SplitBlockAndInsertIfThenEPNS_5ValueENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEEbPNS_6MDNodeEPNS_14DomTreeUpdaterEPNS_8LoopInfoEPS6_(ptr noundef %i.nq, ptr nonnull %i.rd, i64 0, i1 noundef zeroext false, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #15 ; 3 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 24 ; 7 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.re, i64 40
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !291
  store ptr %i.rh, ptr %i.t, align 8, !tbaa !292
  store ptr %i.rf, ptr %i.ax, align 8
  store i16 0, ptr %.sroa.4.0..sroa_idx.i261, align 8
  %i.ri = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.re) #15
  %i.rj = load i64, ptr %i.ri, align 8, !tbaa !293
  store i64 %i.rj, ptr %11, align 8, !tbaa !293
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #15
  store i32 32, ptr %i.bt, align 8, !tbaa !311
  store i64 0, ptr %28, align 8, !tbaa !79
  %i.rk = call noundef ptr @_ZN4llvm11ConstantInt3getERNS_11LLVMContextERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(12) %28) #15
  store ptr %i.rk, ptr %i.d, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #15
  store i8 1, ptr %i.bv, align 1, !tbaa !266
  store ptr @.str.17, ptr %29, align 8, !tbaa !79
  store i8 3, ptr %i.bu, align 8, !tbaa !267
  store ptr %i.rf, ptr %30, align 8
  store i64 0, ptr %.sroa.2.0..sroa_idx.i314, align 8
  %i.rl = call noundef ptr @_ZN4llvm17GetElementPtrInst6CreateEPNS_4TypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineENS_14InsertPositionE(ptr noundef %i.lh, ptr noundef nonnull %i.ni, ptr nonnull %i.d, i64 1, ptr noundef nonnull align 8 dereferenceable(34) %29, ptr noundef nonnull byval(%"class.llvm::InsertPosition") align 8 %30)
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #15
  %i.rm = load i32, ptr %i.bt, align 8, !tbaa !311
  %i.rn = icmp ugt i32 %i.rm, 64
  br i1 %i.rn, label %bb.bx, label %_ZN4llvm5APIntD2Ev.exit

bb.bx:                                            ; preds = %bb.bw
  %i.ro = load ptr, ptr %28, align 8, !tbaa !79   ; 2 uses
  %i.rp = icmp eq ptr %i.ro, null
  br i1 %i.rp, label %_ZN4llvm5APIntD2Ev.exit, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void @_ZdaPv(ptr noundef nonnull %i.ro) #18
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.bw, %bb.bx, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  %i.rq = call noundef ptr @_ZN4llvm11PointerType3getERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.h, i32 noundef 1) #15
  %i.rr = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 72, i32 1) #15 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #15
  store i8 1, ptr %i.bx, align 1, !tbaa !266
  store ptr @.str.18, ptr %31, align 8, !tbaa !79
  store i8 3, ptr %i.bw, align 8, !tbaa !267
  call void @_ZN4llvm11BitCastInstC1EPNS_5ValueEPNS_4TypeERKNS_5TwineENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(72) %i.rr, ptr noundef %i.rl, ptr noundef %i.rq, ptr noundef nonnull align 8 dereferenceable(34) %31, ptr nonnull %i.rf, i64 0) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #15
  %i.rs = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 80, i32 2) #15
  %i.rt = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeEmbb(ptr noundef %i.u, i64 noundef %i.lo, i1 noundef zeroext false, i1 noundef zeroext false) #15
  call void @_ZN4llvm9StoreInstC1EPNS_5ValueES2_NS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(73) %i.rs, ptr noundef %i.rt, ptr noundef nonnull %i.rr, ptr nonnull %i.rf, i64 0) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #15
  store i32 32, ptr %i.by, align 8, !tbaa !311
  store i64 4, ptr %32, align 8, !tbaa !79
  %i.ru = call noundef ptr @_ZN4llvm11ConstantInt3getERNS_11LLVMContextERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(12) %32) #15
  store ptr %i.ru, ptr %i.e, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #15
  store i8 1, ptr %i.ca, align 1, !tbaa !266
  store ptr @.str.19, ptr %33, align 8, !tbaa !79
  store i8 3, ptr %i.bz, align 8, !tbaa !267
  store ptr %i.rf, ptr %34, align 8
  store i64 0, ptr %.sroa.2.0..sroa_idx.i317, align 8
  %i.rv = call noundef ptr @_ZN4llvm17GetElementPtrInst6CreateEPNS_4TypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineENS_14InsertPositionE(ptr noundef %i.lh, ptr noundef nonnull %i.ni, ptr nonnull %i.e, i64 1, ptr noundef nonnull align 8 dereferenceable(34) %33, ptr noundef nonnull byval(%"class.llvm::InsertPosition") align 8 %34)
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #15
  %i.rw = load i32, ptr %i.by, align 8, !tbaa !311
  %i.rx = icmp ugt i32 %i.rw, 64
  br i1 %i.rx, label %bb.bz, label %_ZN4llvm5APIntD2Ev.exit318

bb.bz:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit
  %i.ry = load ptr, ptr %32, align 8, !tbaa !79   ; 2 uses
  %i.rz = icmp eq ptr %i.ry, null
  br i1 %i.rz, label %_ZN4llvm5APIntD2Ev.exit318, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void @_ZdaPv(ptr noundef nonnull %i.ry) #18
  br label %_ZN4llvm5APIntD2Ev.exit318

_ZN4llvm5APIntD2Ev.exit318:                       ; preds = %_ZN4llvm5APIntD2Ev.exit, %bb.bz, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  %i.sa = call noundef ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.h) #15
  br label %bb.cb

bb.cb:                                            ; preds = %_ZN4llvm11SmallVectorIPNS_5ValueELj32EED2Ev.exit, %_ZN4llvm5APIntD2Ev.exit318
  %indvars.iv520 = phi i64 [ %indvars.iv.next521, %_ZN4llvm11SmallVectorIPNS_5ValueELj32EED2Ev.exit ], [ 1, %_ZN4llvm5APIntD2Ev.exit318 ] ; 7 uses
  %.0242 = phi ptr [ %.1243.lcssa, %_ZN4llvm11SmallVectorIPNS_5ValueELj32EED2Ev.exit ], [ %i.rv, %_ZN4llvm5APIntD2Ev.exit318 ] ; 2 uses
  %indvars522 = trunc i64 %indvars.iv520 to i32
  %i.sb = load i8, ptr %i.cm, align 8, !tbaa !46
  switch i8 %i.sb, label %bb.ce [
    i8 88, label %_ZN4llvm8CallBase17data_operands_endEv.exit.i370
    i8 36, label %bb.cc
    i8 42, label %bb.cd
  ]

bb.cc:                                            ; preds = %bb.cb
  br label %_ZN4llvm8CallBase17data_operands_endEv.exit.i370

bb.cd:                                            ; preds = %bb.cb
  %i.sc = call noundef i32 @_ZNK4llvm8CallBase34getNumSubclassExtraOperandsDynamicEv(ptr noundef nonnull align 8 dereferenceable(88) %i.cm) #15
  %i.sd = zext i32 %i.sc to i64
  %i.se = shl nuw nsw i64 %i.sd, 5
  %i.sf = sub nuw nsw i64 -32, %i.se
  br label %_ZN4llvm8CallBase17data_operands_endEv.exit.i370

bb.ce:                                            ; preds = %bb.cb
  unreachable

_ZN4llvm8CallBase17data_operands_endEv.exit.i370: ; preds = %bb.cd, %bb.cc, %bb.cb
  %.0.i.i.i371.neg = phi i64 [ %i.sf, %bb.cd ], [ -96, %bb.cc ], [ -32, %bb.cb ]
  %i.sg = load i32, ptr %i.co, align 4            ; 2 uses
  %i.sh = icmp slt i32 %i.sg, 0
  br i1 %i.sh, label %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i.i.i377, label %_ZNK4llvm8CallBase17hasOperandBundlesEv.exit.i.i372

_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i.i.i377: ; preds = %_ZN4llvm8CallBase17data_operands_endEv.exit.i370
  %i.si = call { ptr, i64 } @_ZN4llvm4User13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(88) %i.cm) #15
  %i.sj = extractvalue { ptr, i64 } %i.si, 0      ; 2 uses
  %.pr.i.i.i.i378 = load i32, ptr %i.co, align 4  ; 2 uses
  %i.sk = icmp slt i32 %.pr.i.i.i.i378, 0
  br i1 %i.sk, label %bb.cf, label %_ZNK4llvm8CallBase17hasOperandBundlesEv.exit.i.i372

bb.cf:                                            ; preds = %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i.i.i377
  %i.sl = call { ptr, i64 } @_ZN4llvm4User13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(88) %i.cm) #15 ; 2 uses
  %i.sm = extractvalue { ptr, i64 } %i.sl, 0
  %i.sn = extractvalue { ptr, i64 } %i.sl, 1
  %i.so = getelementptr inbounds nuw i8, ptr %i.sm, i64 %i.sn
  %i.sp = ptrtoint ptr %i.so to i64
  %.pre525.pre = load i32, ptr %i.co, align 4
  br label %_ZNK4llvm8CallBase17hasOperandBundlesEv.exit.i.i372

_ZNK4llvm8CallBase17hasOperandBundlesEv.exit.i.i372: ; preds = %bb.cf, %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i.i.i377, %_ZN4llvm8CallBase17data_operands_endEv.exit.i370
  %.pre525 = phi i32 [ %.pre525.pre, %bb.cf ], [ %.pr.i.i.i.i378, %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i.i.i377 ], [ %i.sg, %_ZN4llvm8CallBase17data_operands_endEv.exit.i370 ] ; 2 uses
  %.0.i.i3.i.i.i.i373 = phi ptr [ %i.sj, %bb.cf ], [ %i.sj, %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i.i.i377 ], [ null, %_ZN4llvm8CallBase17data_operands_endEv.exit.i370 ]
  %.0.i.i1.i.i.i.i374 = phi i64 [ %i.sp, %bb.cf ], [ 0, %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i.i.i377 ], [ 0, %_ZN4llvm8CallBase17data_operands_endEv.exit.i370 ]
  %i.sq = ptrtoint ptr %.0.i.i3.i.i.i.i373 to i64
  %i.sr = sub i64 %.0.i.i1.i.i.i.i374, %i.sq
  %i.ss = and i64 %i.sr, 68719476720
  %.not.i.i375 = icmp eq i64 %i.ss, 0
  br i1 %.not.i.i375, label %_ZN4llvm8CallBase7arg_endEv.exit379, label %bb.cg

bb.cg:                                            ; preds = %_ZNK4llvm8CallBase17hasOperandBundlesEv.exit.i.i372
  %i.st = icmp slt i32 %.pre525, 0
  call void @llvm.assume(i1 %i.st)
  %i.su = call { ptr, i64 } @_ZN4llvm4User13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(88) %i.cm) #15
  %i.sv = extractvalue { ptr, i64 } %i.su, 0
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 8
  %i.sx = load i32, ptr %i.sw, align 8, !tbaa !86
  %i.sy = call { ptr, i64 } @_ZN4llvm4User13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(88) %i.cm) #15 ; 2 uses
  %i.sz = extractvalue { ptr, i64 } %i.sy, 0
  %i.ta = extractvalue { ptr, i64 } %i.sy, 1
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sz, i64 %i.ta
  %i.tc = getelementptr inbounds i8, ptr %i.tb, i64 -4
  %i.td = load i32, ptr %i.tc, align 4, !tbaa !87
  %i.te = sub i32 %i.td, %i.sx
  %i.tf = zext i32 %i.te to i64
  %.neg464 = mul nsw i64 %i.tf, -32
  %.pre524 = load i32, ptr %i.co, align 4
  br label %_ZN4llvm8CallBase7arg_endEv.exit379

_ZN4llvm8CallBase7arg_endEv.exit379:              ; preds = %_ZNK4llvm8CallBase17hasOperandBundlesEv.exit.i.i372, %bb.cg
  %i.tg = phi i32 [ %.pre524, %bb.cg ], [ %.pre525, %_ZNK4llvm8CallBase17hasOperandBundlesEv.exit.i.i372 ]
  %.0.i.i376.neg = phi i64 [ %.neg464, %bb.cg ], [ 0, %_ZNK4llvm8CallBase17hasOperandBundlesEv.exit.i.i372 ]
  %i.th = add nsw i64 %.0.i.i376.neg, %.0.i.i.i371.neg
  %i.ti = and i32 %i.tg, 268435455
  %i.tj = zext nneg i32 %i.ti to i64
  %.neg465 = mul nsw i64 %i.tj, -32               ; 2 uses
  %gepdiff462 = sub nsw i64 %i.th, %.neg465
  %i.tk = lshr exact i64 %gepdiff462, 5
  %i.tl = and i64 %i.tk, 4294967295
  %i.tm = icmp samesign uge i64 %indvars.iv520, %i.tl
  %i.tn = load i64, ptr %i.ae, align 8
  %.not253 = icmp ult i64 %i.tn, %indvars.iv520
  %or.cond593 = select i1 %i.tm, i1 true, i1 %.not253
  br i1 %or.cond593, label %.critedge3, label %bb.ci

.critedge3:                                       ; preds = %_ZN4llvm8CallBase7arg_endEv.exit379
  %i.to = load ptr, ptr %22, align 8, !tbaa !26   ; 2 uses
  %i.tp = icmp eq ptr %i.to, %i.bi
  br i1 %i.tp, label %_ZN4llvm11SmallVectorIPNS_5ValueELj1EED2Ev.exit, label %bb.ch

bb.ch:                                            ; preds = %.critedge3
  call void @free(ptr noundef %i.to) #15
  br label %_ZN4llvm11SmallVectorIPNS_5ValueELj1EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_5ValueELj1EED2Ev.exit:  ; preds = %.critedge3, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #15
  %i.tq = load ptr, ptr %19, align 8, !tbaa !93   ; 2 uses
  %i.tr = icmp eq ptr %i.tq, %i.bf
  br i1 %i.tr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319: ; preds = %_ZN4llvm11SmallVectorIPNS_5ValueELj1EED2Ev.exit
  %i.ts = load i64, ptr %i.bf, align 8, !tbaa !79
  %i.tt = add i64 %i.ts, 1
  call void @_ZdlPvm(ptr noundef %i.tq, i64 noundef %i.tt) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321: ; preds = %_ZN4llvm11SmallVectorIPNS_5ValueELj1EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %15) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  %i.tu = load ptr, ptr %14, align 8, !tbaa !93   ; 2 uses
  %i.tv = icmp eq ptr %i.tu, %i.ao
  br i1 %i.tv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321
  %i.tw = load i64, ptr %i.ao, align 8, !tbaa !79
  %i.tx = add i64 %i.tw, 1
  call void @_ZdlPvm(ptr noundef %i.tu, i64 noundef %i.tx) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  br label %bb.dv

bb.ci:                                            ; preds = %_ZN4llvm8CallBase7arg_endEv.exit379
  %i.ty = getelementptr inbounds i8, ptr %i.cm, i64 %.neg465
  %i.tz = getelementptr inbounds nuw [32 x i8], ptr %i.ty, i64 %indvars.iv520
  %i.ua = load ptr, ptr %i.tz, align 8, !tbaa !263 ; 10 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 8 ; 2 uses
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !77 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #15
  store ptr %i.cb, ptr %35, align 8, !tbaa !26
  store i32 0, ptr %i.cc, align 8, !tbaa !41
  store i32 32, ptr %i.cd, align 4, !tbaa !27
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 8
  %i.ue = load i32, ptr %i.ud, align 8            ; 3 uses
  %i.uf = and i32 %i.ue, 254
  %spec.select.i.i.i325 = icmp eq i32 %i.uf, 18   ; 3 uses
  br i1 %spec.select.i.i.i325, label %bb.cj, label %_ZNK4llvm4Type13getScalarTypeEv.exit.i326

bb.cj:                                            ; preds = %bb.ci
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uc, i64 16
  %i.uh = load ptr, ptr %i.ug, align 8, !tbaa !38
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !39
  %.phi.trans.insert.i330 = getelementptr inbounds nuw i8, ptr %i.ui, i64 8
  %.pre.i331 = load i32, ptr %.phi.trans.insert.i330, align 8
  br label %_ZNK4llvm4Type13getScalarTypeEv.exit.i326

_ZNK4llvm4Type13getScalarTypeEv.exit.i326:        ; preds = %bb.cj, %bb.ci
  %i.uj = phi i32 [ %.pre.i331, %bb.cj ], [ %i.ue, %bb.ci ] ; 2 uses
  %trunc.i.i.i327 = trunc i32 %i.uj to i8
  switch i8 %trunc.i.i.i327, label %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit332 [
    i8 3, label %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit332.thread
    i8 2, label %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit332.thread
    i8 0, label %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit332.thread
    i8 1, label %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit332.thread
    i8 5, label %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit332.thread
  ]

_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit332:       ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit.i326
  %i.uk = and i32 %i.uj, 253
  %spec.select.i.i329 = icmp ne i32 %i.uk, 4
  %brmerge = or i1 %spec.select.i.i.i325, %spec.select.i.i329
  br i1 %brmerge, label %bb.cq, label %bb.ck

_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit332.thread: ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit.i326, %_ZNK4llvm4Type13getScalarTypeEv.exit.i326, %_ZNK4llvm4Type13getScalarTypeEv.exit.i326, %_ZNK4llvm4Type13getScalarTypeEv.exit.i326, %_ZNK4llvm4Type13getScalarTypeEv.exit.i326
  br i1 %spec.select.i.i.i325, label %bb.cq, label %bb.ck

bb.ck:                                            ; preds = %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit332, %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit332.thread
  %i.ul = load ptr, ptr %12, align 8, !tbaa !75
  %i.um = getelementptr i8, ptr %i.ul, i64 %indvars.iv520
  %i.un = getelementptr i8, ptr %i.um, i64 -1
  %i.uo = load i8, ptr %i.un, align 1, !tbaa !79
  %i.up = icmp eq i8 %i.uo, 102
  br i1 %i.up, label %bb.cl, label %.thread

bb.cl:                                            ; preds = %bb.ck
  %i.uq = load i8, ptr %i.ua, align 8, !tbaa !46
  switch i8 %i.uq, label %.thread [
    i8 7, label %bb.co
    i8 77, label %bb.cm
  ]

bb.cm:                                            ; preds = %bb.cl
  %i.ur = load ptr, ptr %i.ub, align 8, !tbaa !77
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 8
  %i.ut = load i32, ptr %i.us, align 8
  %i.uu = and i32 %i.ut, 255
  %i.uv = icmp eq i32 %i.uu, 3
  br i1 %i.uv, label %bb.cn, label %.thread

bb.cn:                                            ; preds = %bb.cm
  %i.uw = getelementptr inbounds i8, ptr %i.ua, i64 -32
  %i.ux = load ptr, ptr %i.uw, align 8, !tbaa !263 ; 2 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 8
  %i.uz = load ptr, ptr %i.uy, align 8, !tbaa !77
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 8
  %i.vb = load i32, ptr %i.va, align 8
  %i.vc = and i32 %i.vb, 255
  %i.vd = icmp eq i32 %i.vc, 2
  %spec.select452 = select i1 %i.vd, ptr %i.ux, ptr %i.ua
  br label %.thread

bb.co:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #15
  %i.ve = getelementptr inbounds nuw i8, ptr %i.ua, i64 24
  call void @_ZN4llvm7APFloat7StorageC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %36, ptr noundef nonnull align 8 dereferenceable(24) %i.ve) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #15
  store i8 0, ptr %i.f, align 1, !tbaa !312
  %i.vf = call noundef i32 @_ZN4llvm7APFloat7convertERKNS_12fltSemanticsENS_12RoundingModeEPb(ptr noundef nonnull align 8 dereferenceable(24) %36, ptr noundef nonnull align 4 dereferenceable(29) @_ZN4llvm11APFloatBase13semIEEEsingleE, i8 noundef signext 1, ptr noundef nonnull %i.f) #15 ; 0 uses
  %i.vg = call noundef ptr @_ZN4llvm10ConstantFP3getERNS_11LLVMContextERKNS_7APFloatE(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %36) #15 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %36) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #15
  %.pre526 = load i32, ptr %i.cc, align 8, !tbaa !41 ; 2 uses
  %.pre527 = load i32, ptr %i.cd, align 4, !tbaa !27
  %i.vh = icmp ult i32 %.pre526, %.pre527
  %i.vi = zext i32 %.pre526 to i64
  br i1 %i.vh, label %.thread, label %bb.cp, !prof !313

bb.cp:                                            ; preds = %bb.co
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %35, ptr noundef %i.vg)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit337thread-pre-split

.thread:                                          ; preds = %bb.cm, %bb.cn, %bb.cl, %bb.ck, %bb.co
  %.2584 = phi ptr [ %i.vg, %bb.co ], [ %i.ua, %bb.cm ], [ %spec.select452, %bb.cn ], [ %i.ua, %bb.cl ], [ %i.ua, %bb.ck ]
  %i.vj = phi i64 [ %i.vi, %bb.co ], [ 0, %bb.cm ], [ 0, %bb.cn ], [ 0, %bb.cl ], [ 0, %bb.ck ]
  %i.vk = load ptr, ptr %35, align 8, !tbaa !26
  %i.vl = getelementptr inbounds nuw [8 x i8], ptr %i.vk, i64 %i.vj
  store ptr %.2584, ptr %i.vl, align 1
  %i.vm = load i32, ptr %i.cc, align 8, !tbaa !41
  %i.vn = add i32 %i.vm, 1                        ; 2 uses
  store i32 %i.vn, ptr %i.cc, align 8, !tbaa !41
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit337

bb.cq:                                            ; preds = %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit332, %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit332.thread
  %i.vo = and i32 %i.ue, 255
  %i.vp = icmp eq i32 %i.vo, 15
  br i1 %i.vp, label %bb.cr, label %.lr.ph493.sink.split

bb.cr:                                            ; preds = %bb.cq
  %i.vq = load ptr, ptr %12, align 8, !tbaa !75
  %i.vr = getelementptr i8, ptr %i.vq, i64 %indvars.iv520
  %i.vs = getelementptr i8, ptr %i.vr, i64 -1
  %i.vt = load i8, ptr %i.vs, align 1, !tbaa !79
  %i.vu = icmp eq i8 %i.vt, 115
  br i1 %i.vu, label %bb.cs, label %.lr.ph493.sink.split

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.vv = call noundef zeroext i1 @_ZN4llvm21getConstantStringInfoEPKNS_5ValueERNS_9StringRefEb(ptr noundef nonnull %i.ua, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext true) #15 ; 2 uses
  %.fca.0.load.pre.i339 = load ptr, ptr %2, align 8
  %.fca.1.load.pre.i341 = load i64, ptr %.fca.1.gep.phi.trans.insert.i340, align 8
  %.fca.1.load.i342 = select i1 %i.vv, i64 %.fca.1.load.pre.i341, i64 3 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.vw = icmp eq i64 %.fca.1.load.i342, 0
  br i1 %i.vw, label %bb.dh, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %.fca.0.load.i343 = select i1 %i.vv, ptr %.fca.0.load.pre.i339, ptr @.str.24
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #15
  store ptr %.fca.0.load.i343, ptr %37, align 8, !tbaa !12
  store i64 %.fca.1.load.i342, ptr %.sroa.2.0..sroa_idx.i346, align 8, !tbaa !14
  store i8 1, ptr %i.ce, align 8, !tbaa !315
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %38, i8 0, i64 16, i1 false)
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %_ZN4llvm5APIntD2Ev.exit352
  %i.vx = load i64, ptr %38, align 8, !tbaa !319  ; 2 uses
  %i.vy = icmp ult i64 %i.vx, %.fca.1.load.i342
  br i1 %i.vy, label %bb.cv, label %_ZN4llvm13DataExtractor6CursorD2Ev.exit

bb.cv:                                            ; preds = %bb.cu
  %i.vz = sub nuw i64 %.fca.1.load.i342, %i.vx    ; 2 uses
  switch i64 %i.vz, label %_ZN4llvm5ErrorD2Ev.exit [
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_130AMDGPUPrintfRuntimeBindingImpl17lowerPrintfForGpuERN4llvm6ModuleE:bb.a
  %i.wa = call noundef zeroext i8 @_ZNK4llvm13DataExtractor5getU8EPmPNS_5ErrorE(ptr noundef nonnull align 8 dereferenceable(17) %37, ptr noundef nonnull align 8 dereferenceable(16) %38, ptr noundef nonnull %i.cf) #15
  %i.wb = zext i8 %i.wa to i64
  br label %_ZN4llvm5ErrorD2Ev.exit.thread

bb.cx:                                            ; preds = %bb.cv
  %i.wc = call noundef zeroext i16 @_ZNK4llvm13DataExtractor6getU16EPmPNS_5ErrorE(ptr noundef nonnull align 8 dereferenceable(17) %37, ptr noundef nonnull align 8 dereferenceable(16) %38, ptr noundef nonnull %i.cf) #15
  %i.wd = zext i16 %i.wc to i64
  br label %_ZN4llvm5ErrorD2Ev.exit.thread

bb.cy:                                            ; preds = %bb.cv
  %i.we = call noundef i32 @_ZNK4llvm13DataExtractor6getU24EPmPNS_5ErrorE(ptr noundef nonnull align 8 dereferenceable(17) %37, ptr noundef nonnull align 8 dereferenceable(16) %38, ptr noundef nonnull %i.cf) #15
  %i.wf = zext i32 %i.we to i64
  br label %_ZN4llvm5ErrorD2Ev.exit.thread

_ZN4llvm5ErrorD2Ev.exit.thread:                   ; preds = %bb.cw, %bb.cx, %bb.cy
  %.0231.ph = phi i64 [ %i.wf, %bb.cy ], [ %i.wd, %bb.cx ], [ %i.wb, %bb.cw ]
  store ptr null, ptr %i.cf, align 8, !tbaa !320, !noalias !321
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #15
  store i32 32, ptr %i.cg, align 8, !tbaa !311
  store i64 %.0231.ph, ptr %39, align 8, !tbaa !79
  br label %bb.cz

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %bb.cv
  %i.wg = icmp ult i64 %i.vz, 4
  %i.wh = call noundef i32 @_ZNK4llvm13DataExtractor6getU32EPmPNS_5ErrorE(ptr noundef nonnull align 8 dereferenceable(17) %37, ptr noundef nonnull align 8 dereferenceable(16) %38, ptr noundef nonnull %i.cf) #15
  %i.wi = zext i32 %i.wh to i64
  store ptr null, ptr %i.cf, align 8, !tbaa !320, !noalias !321
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #15
  store i32 32, ptr %i.cg, align 8, !tbaa !311
  store i64 %i.wi, ptr %39, align 8, !tbaa !79
  br i1 %i.wg, label %bb.cz, label %bb.dc

bb.cz:                                            ; preds = %_ZN4llvm5ErrorD2Ev.exit.thread, %_ZN4llvm5ErrorD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #15
  call void @_ZNK4llvm5APInt4zextEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %40, ptr noundef nonnull align 8 dereferenceable(12) %39, i32 noundef 32) #15
  %i.wj = load i32, ptr %i.cg, align 8, !tbaa !311
  %i.wk = icmp ult i32 %i.wj, 65
  br i1 %i.wk, label %_ZN4llvm5APIntD2Ev.exit349, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.wl = load ptr, ptr %39, align 8, !tbaa !79   ; 2 uses
  %i.wm = icmp eq ptr %i.wl, null
  br i1 %i.wm, label %_ZN4llvm5APIntD2Ev.exit349, label %bb.db

bb.db:                                            ; preds = %bb.da
  call void @_ZdaPv(ptr noundef nonnull %i.wl) #18
  br label %_ZN4llvm5APIntD2Ev.exit349

_ZN4llvm5APIntD2Ev.exit349:                       ; preds = %bb.db, %bb.da, %bb.cz
  %i.wn = load i64, ptr %40, align 8
  store i64 %i.wn, ptr %39, align 8
  %i.wo = load i32, ptr %i.ch, align 8, !tbaa !311 ; 2 uses
  store i32 %i.wo, ptr %i.cg, align 8, !tbaa !311
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #15
  br label %bb.dc

bb.dc:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit349, %_ZN4llvm5ErrorD2Ev.exit
  %i.wp = phi i32 [ %i.wo, %_ZN4llvm5APIntD2Ev.exit349 ], [ 32, %_ZN4llvm5ErrorD2Ev.exit ]
  %i.wq = call noundef ptr @_ZN4llvm4Type9getIntNTyERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.h, i32 noundef %i.wp) #15
  %i.wr = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeERKNS_5APIntE(ptr noundef %i.wq, ptr noundef nonnull align 8 dereferenceable(12) %39) #15 ; 2 uses
  %i.ws = load i32, ptr %i.cc, align 8, !tbaa !41 ; 2 uses
  %i.wt = load i32, ptr %i.cd, align 4, !tbaa !27
  %.not.i350 = icmp ult i32 %i.ws, %i.wt
  br i1 %.not.i350, label %bb.de, label %bb.dd, !prof !55

bb.dd:                                            ; preds = %bb.dc
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %35, ptr noundef %i.wr)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit351

bb.de:                                            ; preds = %bb.dc
  %i.wu = zext i32 %i.ws to i64
  %i.wv = load ptr, ptr %35, align 8, !tbaa !26
  %i.ww = getelementptr inbounds nuw [8 x i8], ptr %i.wv, i64 %i.wu
  store ptr %i.wr, ptr %i.ww, align 1
  %i.wx = load i32, ptr %i.cc, align 8, !tbaa !41
  %i.wy = add i32 %i.wx, 1
  store i32 %i.wy, ptr %i.cc, align 8, !tbaa !41
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit351

_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit351: ; preds = %bb.dd, %bb.de
  %i.wz = load i32, ptr %i.cg, align 8, !tbaa !311
  %i.xa = icmp ugt i32 %i.wz, 64
  br i1 %i.xa, label %bb.df, label %_ZN4llvm5APIntD2Ev.exit352

bb.df:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit351
  %i.xb = load ptr, ptr %39, align 8, !tbaa !79   ; 2 uses
  %i.xc = icmp eq ptr %i.xb, null
  br i1 %i.xc, label %_ZN4llvm5APIntD2Ev.exit352, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  call void @_ZdaPv(ptr noundef nonnull %i.xb) #18
  br label %_ZN4llvm5APIntD2Ev.exit352

_ZN4llvm5APIntD2Ev.exit352:                       ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit351, %bb.df, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #15
  %.pr = load ptr, ptr %i.cf, align 8, !tbaa !320 ; 3 uses
  %.not.i347 = icmp eq ptr %.pr, null
  br i1 %.not.i347, label %bb.cu, label %.critedge5, !llvm.loop !146

.critedge5:                                       ; preds = %_ZN4llvm5APIntD2Ev.exit352
  %i.xd = load ptr, ptr %.pr, align 8, !tbaa !24
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 8
  %i.xf = load ptr, ptr %i.xe, align 8
  call void %i.xf(ptr noundef nonnull align 8 dereferenceable(8) %.pr) #15, !inline_history !147
  br label %_ZN4llvm13DataExtractor6CursorD2Ev.exit

_ZN4llvm13DataExtractor6CursorD2Ev.exit:          ; preds = %bb.cu, %.critedge5
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #15
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit337thread-pre-split

bb.dh:                                            ; preds = %bb.cs
  %i.xg = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeEmbb(ptr noundef %i.sa, i64 noundef 4294967040, i1 noundef zeroext false, i1 noundef zeroext false) #15 ; 2 uses
  %i.xh = load i32, ptr %i.cc, align 8, !tbaa !41 ; 2 uses
  %i.xi = load i32, ptr %i.cd, align 4, !tbaa !27
  %.not.i353 = icmp ult i32 %i.xh, %i.xi
  br i1 %.not.i353, label %bb.dj, label %bb.di, !prof !55

bb.di:                                            ; preds = %bb.dh
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %35, ptr noundef %i.xg)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit337thread-pre-split

bb.dj:                                            ; preds = %bb.dh
  %i.xj = zext i32 %i.xh to i64
  %i.xk = load ptr, ptr %35, align 8, !tbaa !26
  %i.xl = getelementptr inbounds nuw [8 x i8], ptr %i.xk, i64 %i.xj
  store ptr %i.xg, ptr %i.xl, align 1
  %i.xm = load i32, ptr %i.cc, align 8, !tbaa !41
  %i.xn = add i32 %i.xm, 1                        ; 2 uses
  store i32 %i.xn, ptr %i.cc, align 8, !tbaa !41
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit337

_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit337thread-pre-split: ; preds = %bb.cp, %bb.di, %_ZN4llvm13DataExtractor6CursorD2Ev.exit
  %.pr587 = load i32, ptr %i.cc, align 8, !tbaa !41
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit337

_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit337: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit337thread-pre-split, %bb.dj, %.thread
  %i.xo = phi i32 [ %.pr587, %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit337thread-pre-split ], [ %i.xn, %bb.dj ], [ %i.vn, %.thread ] ; 2 uses
  %.not256490 = icmp eq i32 %i.xo, 0
  br i1 %.not256490, label %.thread449, label %.lr.ph493

.lr.ph493.sink.split:                             ; preds = %bb.cq, %bb.cr
  store ptr %i.ua, ptr %i.cb, align 8
  store i32 1, ptr %i.cc, align 8, !tbaa !41
  br label %.lr.ph493

.lr.ph493:                                        ; preds = %.lr.ph493.sink.split, %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit337
  %i.xp = phi i32 [ %i.xo, %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit337 ], [ 1, %.lr.ph493.sink.split ]
  %i.xq = add i32 %indvars522, 1
  %i.xr = zext i32 %i.xp to i64
  br label %bb.dk

bb.dk:                                            ; preds = %.lr.ph493, %.loopexit
  %indvars.iv517 = phi i64 [ 0, %.lr.ph493 ], [ %indvars.iv.next518, %.loopexit ] ; 2 uses
  %.1243491 = phi ptr [ %.0242, %.lr.ph493 ], [ %i.zq, %.loopexit ] ; 4 uses
  %i.xs = load ptr, ptr %35, align 8, !tbaa !26
  %i.xt = getelementptr inbounds nuw [8 x i8], ptr %i.xs, i64 %indvars.iv517
  %i.xu = load ptr, ptr %i.xt, align 8, !tbaa !96 ; 2 uses
  %i.xv = load ptr, ptr %0, align 8, !tbaa !54
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xu, i64 8
  %i.xx = load ptr, ptr %i.xw, align 8, !tbaa !77
  %i.xy = call { i64, i8 } @_ZNK4llvm10DataLayout16getTypeAllocSizeEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.xv, ptr noundef %i.xx) #15 ; 2 uses
  %.fca.0.extract = extractvalue { i64, i8 } %i.xy, 0
  %.fca.1.extract = extractvalue { i64, i8 } %i.xy, 1
  %i.xz = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.xz, label %bb.dl, label %_ZNK4llvm8TypeSizecvmEv.exit359

bb.dl:                                            ; preds = %bb.dk
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.23) #16
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit359:                  ; preds = %bb.dk
  %i.ya = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 80, i32 2) #15
  call void @_ZN4llvm9StoreInstC1EPNS_5ValueES2_NS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(73) %i.ya, ptr noundef nonnull %i.xu, ptr noundef %.1243491, ptr nonnull %i.rf, i64 0) #15
  %indvars.iv.next518 = add nuw nsw i64 %indvars.iv517, 1 ; 2 uses
  %i.yb = icmp eq i64 %indvars.iv.next518, %i.xr  ; 2 uses
  br i1 %i.yb, label %bb.dm, label %bb.ds

bb.dm:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit359
  %i.yc = load i8, ptr %i.cm, align 8, !tbaa !46
  switch i8 %i.yc, label %bb.dp [
    i8 88, label %_ZN4llvm8CallBase17data_operands_endEv.exit.i380
    i8 36, label %bb.dn
    i8 42, label %bb.do
  ]

bb.dn:                                            ; preds = %bb.dm
  br label %_ZN4llvm8CallBase17data_operands_endEv.exit.i380

bb.do:                                            ; preds = %bb.dm
  %i.yd = call noundef i32 @_ZNK4llvm8CallBase34getNumSubclassExtraOperandsDynamicEv(ptr noundef nonnull align 8 dereferenceable(88) %i.cm) #15
  %i.ye = zext i32 %i.yd to i64
  %i.yf = shl nuw nsw i64 %i.ye, 5
  %i.yg = sub nuw nsw i64 -32, %i.yf
  br label %_ZN4llvm8CallBase17data_operands_endEv.exit.i380

bb.dp:                                            ; preds = %bb.dm
  unreachable

_ZN4llvm8CallBase17data_operands_endEv.exit.i380: ; preds = %bb.do, %bb.dn, %bb.dm
  %.0.i.i.i381.neg = phi i64 [ %i.yg, %bb.do ], [ -96, %bb.dn ], [ -32, %bb.dm ]
  %i.yh = load i32, ptr %i.co, align 4            ; 2 uses
  %i.yi = icmp slt i32 %i.yh, 0
  br i1 %i.yi, label %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i.i.i387, label %_ZNK4llvm8CallBase17hasOperandBundlesEv.exit.i.i382

_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i.i.i387: ; preds = %_ZN4llvm8CallBase17data_operands_endEv.exit.i380
  %i.yj = call { ptr, i64 } @_ZN4llvm4User13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(88) %i.cm) #15
  %i.yk = extractvalue { ptr, i64 } %i.yj, 0      ; 2 uses
  %.pr.i.i.i.i388 = load i32, ptr %i.co, align 4  ; 2 uses
  %i.yl = icmp slt i32 %.pr.i.i.i.i388, 0
  br i1 %i.yl, label %bb.dq, label %_ZNK4llvm8CallBase17hasOperandBundlesEv.exit.i.i382

bb.dq:                                            ; preds = %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i.i.i387
  %i.ym = call { ptr, i64 } @_ZN4llvm4User13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(88) %i.cm) #15 ; 2 uses
  %i.yn = extractvalue { ptr, i64 } %i.ym, 0
  %i.yo = extractvalue { ptr, i64 } %i.ym, 1
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yn, i64 %i.yo
  %i.yq = ptrtoint ptr %i.yp to i64
  %.pre529.pre = load i32, ptr %i.co, align 4
  br label %_ZNK4llvm8CallBase17hasOperandBundlesEv.exit.i.i382

_ZNK4llvm8CallBase17hasOperandBundlesEv.exit.i.i382: ; preds = %bb.dq, %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i.i.i387, %_ZN4llvm8CallBase17data_operands_endEv.exit.i380
  %.pre529 = phi i32 [ %.pre529.pre, %bb.dq ], [ %.pr.i.i.i.i388, %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i.i.i387 ], [ %i.yh, %_ZN4llvm8CallBase17data_operands_endEv.exit.i380 ] ; 2 uses
  %.0.i.i3.i.i.i.i383 = phi ptr [ %i.yk, %bb.dq ], [ %i.yk, %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i.i.i387 ], [ null, %_ZN4llvm8CallBase17data_operands_endEv.exit.i380 ]
  %.0.i.i1.i.i.i.i384 = phi i64 [ %i.yq, %bb.dq ], [ 0, %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i.i.i387 ], [ 0, %_ZN4llvm8CallBase17data_operands_endEv.exit.i380 ]
  %i.yr = ptrtoint ptr %.0.i.i3.i.i.i.i383 to i64
  %i.ys = sub i64 %.0.i.i1.i.i.i.i384, %i.yr
  %i.yt = and i64 %i.ys, 68719476720
  %.not.i.i385 = icmp eq i64 %i.yt, 0
  br i1 %.not.i.i385, label %_ZN4llvm8CallBase7arg_endEv.exit389, label %bb.dr

bb.dr:                                            ; preds = %_ZNK4llvm8CallBase17hasOperandBundlesEv.exit.i.i382
  %i.yu = icmp slt i32 %.pre529, 0
  call void @llvm.assume(i1 %i.yu)
  %i.yv = call { ptr, i64 } @_ZN4llvm4User13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(88) %i.cm) #15
  %i.yw = extractvalue { ptr, i64 } %i.yv, 0
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 8
  %i.yy = load i32, ptr %i.yx, align 8, !tbaa !86
  %i.yz = call { ptr, i64 } @_ZN4llvm4User13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(88) %i.cm) #15 ; 2 uses
  %i.za = extractvalue { ptr, i64 } %i.yz, 0
  %i.zb = extractvalue { ptr, i64 } %i.yz, 1
  %i.zc = getelementptr inbounds nuw i8, ptr %i.za, i64 %i.zb
  %i.zd = getelementptr inbounds i8, ptr %i.zc, i64 -4
  %i.ze = load i32, ptr %i.zd, align 4, !tbaa !87
  %i.zf = sub i32 %i.ze, %i.yy
  %i.zg = zext i32 %i.zf to i64
  %.neg474 = mul nsw i64 %i.zg, -32
  %.pre528 = load i32, ptr %i.co, align 4
  br label %_ZN4llvm8CallBase7arg_endEv.exit389

_ZN4llvm8CallBase7arg_endEv.exit389:              ; preds = %_ZNK4llvm8CallBase17hasOperandBundlesEv.exit.i.i382, %bb.dr
  %i.zh = phi i32 [ %.pre528, %bb.dr ], [ %.pre529, %_ZNK4llvm8CallBase17hasOperandBundlesEv.exit.i.i382 ]
  %.0.i.i386.neg = phi i64 [ %.neg474, %bb.dr ], [ 0, %_ZNK4llvm8CallBase17hasOperandBundlesEv.exit.i.i382 ]
  %i.zi = add nsw i64 %.0.i.i386.neg, %.0.i.i.i381.neg
  %i.zj = and i32 %i.zh, 268435455
  %i.zk = lshr i64 %i.zi, 5
  %i.zl = trunc i64 %i.zk to i32
  %i.zm = add i32 %i.zj, %i.zl
  %i.zn = icmp eq i32 %i.xq, %i.zm
  br i1 %i.zn, label %.thread449, label %bb.ds

bb.ds:                                            ; preds = %_ZN4llvm8CallBase7arg_endEv.exit389, %_ZNK4llvm8TypeSizecvmEv.exit359
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #15
  %i.zo = and i64 %.fca.0.extract, 4294967295
  %i.zp = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeEmbb(ptr noundef %i.u, i64 noundef %i.zo, i1 noundef zeroext false, i1 noundef zeroext false) #15
  store ptr %i.zp, ptr %i.g, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #15
  store i8 1, ptr %i.cj, align 1, !tbaa !266
  store ptr @.str.21, ptr %41, align 8, !tbaa !79
  store i8 3, ptr %i.ci, align 8, !tbaa !267
  %i.zq = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 88, i32 2) #15 ; 6 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %.1243491, i64 8
  %i.zs = load ptr, ptr %i.zr, align 8, !tbaa !77 ; 4 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 8
  %i.zu = load i32, ptr %i.zt, align 8
  %i.zv = and i32 %i.zu, 254
  %spec.select.i.i.i.i = icmp eq i32 %i.zv, 18
  br i1 %spec.select.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.ds
  %i.zw = load ptr, ptr %i.g, align 8, !tbaa !96
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 8
  %i.zy = load ptr, ptr %i.zx, align 8, !tbaa !77 ; 3 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 8
  %i.aaa = load i32, ptr %i.zz, align 8           ; 2 uses
  %i.aab = and i32 %i.aaa, 254
  %spec.select.i.i.i.i.i.i.i.i.i.i.i = icmp ne i32 %i.aab, 18
  %.not2428.i.i.i = icmp eq ptr %i.zy, null
  %.not24.i.i.i = or i1 %.not2428.i.i.i, %spec.select.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not24.i.i.i, label %.loopexit, label %bb.dt

bb.dt:                                            ; preds = %.lr.ph.i.i.i.preheader
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zy, i64 32
  %i.aad = load i32, ptr %i.aac, align 8, !tbaa !89
  %i.aae = and i32 %i.aaa, 19
  %i.aaf = icmp eq i32 %i.aae, 19
  %.sroa.2.0.insert.shift.i.i.i.i.i = select i1 %i.aaf, i64 4294967296, i64 0
  %.sroa.0.0.insert.ext.i.i.i.i.i = zext i32 %i.aad to i64
  %.sroa.0.0.insert.insert.i.i.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i.i
  %i.aag = call noundef ptr @_ZN4llvm10VectorType3getEPNS_4TypeENS_12ElementCountE(ptr noundef nonnull %i.zs, i64 %.sroa.0.0.insert.insert.i.i.i.i.i) #15
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i.i.preheader, %bb.dt, %bb.ds
  %.3.i.i.i = phi ptr [ %i.zs, %bb.ds ], [ %i.aag, %bb.dt ], [ %i.zs, %.lr.ph.i.i.i.preheader ]
  call void @_ZN4llvm11InstructionC2EPNS_4TypeEjNS_4User9AllocInfoENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(88) %i.zq, ptr noundef %.3.i.i.i, i32 noundef 35, i32 2, ptr nonnull %i.rf, i64 0) #15
  %i.aah = getelementptr inbounds nuw i8, ptr %i.zq, i64 72
  store ptr %i.lh, ptr %i.aah, align 8, !tbaa !104
  %i.aai = getelementptr inbounds nuw i8, ptr %i.zq, i64 80
  %i.aaj = call noundef ptr @_ZN4llvm17GetElementPtrInst14getIndexedTypeEPNS_4TypeENS_8ArrayRefIPNS_5ValueEEE(ptr noundef %i.lh, ptr nonnull %i.g, i64 1) #15
  store ptr %i.aaj, ptr %i.aai, align 8, !tbaa !105
  call void @_ZN4llvm17GetElementPtrInst4initEPNS_5ValueENS_8ArrayRefIS2_EERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88) %i.zq, ptr noundef nonnull %.1243491, ptr nonnull %i.g, i64 1, ptr noundef nonnull align 8 dereferenceable(34) %41) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #15
  br i1 %i.yb, label %.thread449, label %bb.dk, !llvm.loop !148

.thread449:                                       ; preds = %.loopexit, %_ZN4llvm8CallBase7arg_endEv.exit389, %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit337
  %.1243.lcssa = phi ptr [ %.0242, %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit337 ], [ %.1243491, %_ZN4llvm8CallBase7arg_endEv.exit389 ], [ %i.zq, %.loopexit ]
  %i.aak = load ptr, ptr %35, align 8, !tbaa !26  ; 2 uses
  %i.aal = icmp eq ptr %i.aak, %i.cb
  br i1 %i.aal, label %_ZN4llvm11SmallVectorIPNS_5ValueELj32EED2Ev.exit, label %bb.du

bb.du:                                            ; preds = %.thread449
  call void @free(ptr noundef %i.aak) #15
  br label %_ZN4llvm11SmallVectorIPNS_5ValueELj32EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_5ValueELj32EED2Ev.exit: ; preds = %.thread449, %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #15
  %indvars.iv.next521 = add nuw nsw i64 %indvars.iv520, 1
  br label %bb.cb, !llvm.loop !149

bb.dv:                                            ; preds = %bb.c, %bb.c, %bb.c, %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324
  %.1 = phi i32 [ %i.ln, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324 ], [ %.0224497, %bb.d ], [ %.0224497, %bb.c ], [ %.0224497, %bb.c ], [ %.0224497, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  %i.aam = load ptr, ptr %12, align 8, !tbaa !75  ; 2 uses
  %i.aan = icmp eq ptr %i.aam, %i.ad
  br i1 %i.aan, label %_ZN4llvm11SmallVectorIcLj16EED2Ev.exit, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  call void @free(ptr noundef %i.aam) #15
  br label %_ZN4llvm11SmallVectorIcLj16EED2Ev.exit

_ZN4llvm11SmallVectorIcLj16EED2Ev.exit:           ; preds = %bb.dv, %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  %i.aao = getelementptr inbounds nuw i8, ptr %.0225496, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.aao, %i.ac
  br i1 %.not, label %._crit_edge500, label %bb.b

._crit_edge505:                                   ; preds = %.lr.ph504, %bb.a, %._crit_edge500
  store i32 0, ptr %i.z, align 8, !tbaa !41
  call void @_ZN4llvm24IRBuilderDefaultInserterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.j) #15
  call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.i) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  ret void

.lr.ph504:                                        ; preds = %._crit_edge500, %.lr.ph504
  %.0502 = phi ptr [ %i.aau, %.lr.ph504 ], [ %.pre530, %._crit_edge500 ] ; 2 uses
  %i.aap = load ptr, ptr %.0502, align 8, !tbaa !261 ; 3 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aap, i64 8
  %i.aar = load ptr, ptr %i.aaq, align 8, !tbaa !77
  %i.aas = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeEmbb(ptr noundef %i.aar, i64 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false) #15
  call void @_ZN4llvm5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.aap, ptr noundef %i.aas) #15
  %i.aat = call { ptr, i64 } @_ZN4llvm11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(72) %i.aap) #15 ; 0 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %.0502, i64 8 ; 2 uses
  %.not250 = icmp eq ptr %i.aau, %i.cl
  br i1 %.not250, label %._crit_edge505, label %.lr.ph504
}

declare noundef zeroext i1 @_ZNK4llvm13AttributeList9hasFnAttrENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK4llvm8CallBase25hasFnAttrOnCalledFunctionENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(88), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPNS_8CallInstELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !41
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #15
  %i.f = load ptr, ptr %0, align 8, !tbaa !26
  %i.g = load i32, ptr %i.a, align 8, !tbaa !41
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !41
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !41
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare noundef ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare noundef ptr @_ZN4llvm6Module24getOrInsertNamedMetadataENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(1288), ptr, i64) local_unnamed_addr #4

declare noundef i32 @_ZNK4llvm11NamedMDNode14getNumOperandsEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN4llvm21getConstantStringInfoEPKNS_5ValueERNS_9StringRefEb(ptr noundef, ptr noundef nonnull align 8 dereferenceable(16), i1 noundef zeroext) local_unnamed_addr #4

end_hunk_2
