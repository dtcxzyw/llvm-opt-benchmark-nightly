Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AsmPrinterInlineAsm?download=true
inline.NumInlined: 741
inline.NumDeleted: 482
begin_hunk_0_@_ZN4llvm10AsmPrinter13emitInlineAsmEPKNS_12MachineInstrE:bb.a
  %i.ic = add nuw nsw i32 %.0142265.i, 1
  %i.id = add nuw nsw i32 %i.ic, %i.ib            ; 2 uses
  %i.ie = add i32 %.0251264.i, -1                 ; 2 uses
  %.not155.i = icmp eq i32 %i.ie, 0
  br i1 %.not155.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !495

._crit_edge.i:                                    ; preds = %bb.bo, %.lr.ph.i, %.preheader262.i
  %.0142.lcssa.i = phi i32 [ 2, %.preheader262.i ], [ %i.id, %bb.bo ], [ %.0142265.i, %.lr.ph.i ] ; 3 uses
  %.not157.i = icmp samesign ult i32 %.0142.lcssa.i, %.pre282.i
  br i1 %.not157.i, label %bb.bp, label %.critedge171.i

bb.bp:                                            ; preds = %._crit_edge.i
  %i.if = load ptr, ptr %i.d, align 8, !tbaa !385 ; 2 uses
  %i.ig = zext nneg i32 %.0142.lcssa.i to i64
  %i.ih = getelementptr inbounds nuw [32 x i8], ptr %i.if, i64 %i.ig ; 2 uses
  %i.ii = load i32, ptr %i.ih, align 8
  %i.ij = and i32 %i.ii, 255
  %i.ik = icmp eq i32 %i.ij, 14
  br i1 %i.ik, label %.critedge171.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.il = add nuw nsw i32 %.0142.lcssa.i, 1       ; 3 uses
  %i.im = zext nneg i32 %i.il to i64
  %i.in = getelementptr inbounds nuw [32 x i8], ptr %i.if, i64 %i.im ; 3 uses
  %i.io = load i32, ptr %i.in, align 8
  %trunc.i = trunc i32 %i.io to i8
  switch i8 %trunc.i, label %bb.bt [
    i8 11, label %bb.br
    i8 4, label %bb.bs
  ]

bb.br:                                            ; preds = %bb.bq
  %i.ip = getelementptr inbounds nuw i8, ptr %i.in, i64 16
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !297
  %i.ir = call noundef ptr @_ZNK4llvm10AsmPrinter21GetBlockAddressSymbolEPKNS_12BlockAddressE(ptr noundef nonnull align 8 dereferenceable(1073) %0, ptr noundef %i.iq) #17 ; 2 uses
  %i.is = load ptr, ptr %i.l, align 8, !tbaa !337, !nonnull !311, !align !312
  call void @_ZNK4llvm8MCSymbol5printERNS_11raw_ostreamEPKNS_9MCAsmInfoE(ptr noundef nonnull align 8 dereferenceable(24) %i.ir, ptr noundef nonnull align 8 dereferenceable(48) %39, ptr noundef nonnull align 8 dereferenceable(448) %i.is) #17
  %i.it = load ptr, ptr %i.de, align 8, !tbaa !292 ; 2 uses
  %.not.i215.i = icmp eq ptr %i.it, null
  %i.iu = select i1 %.not.i215.i, ptr %i.df, ptr %i.it
  call void @_ZN4llvm9MCContext22registerInlineAsmLabelEPNS_8MCSymbolE(ptr noundef nonnull align 8 dereferenceable(2208) %i.iu, ptr noundef nonnull %i.ir) #17
  br label %.critedge173.i

bb.bs:                                            ; preds = %bb.bq
  %i.iv = getelementptr inbounds nuw i8, ptr %i.in, i64 16
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !297
  %i.ix = call noundef ptr @_ZNK4llvm17MachineBasicBlock9getSymbolEv(ptr noundef nonnull align 8 dereferenceable(360) %i.iw) #17
  %i.iy = load ptr, ptr %i.l, align 8, !tbaa !337, !nonnull !311, !align !312
  call void @_ZNK4llvm8MCSymbol5printERNS_11raw_ostreamEPKNS_9MCAsmInfoE(ptr noundef nonnull align 8 dereferenceable(24) %i.ix, ptr noundef nonnull align 8 dereferenceable(48) %39, ptr noundef nonnull align 8 dereferenceable(448) %i.iy) #17
  br label %.critedge173.i

bb.bt:                                            ; preds = %bb.bq
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !297
  %i.jb = and i64 %i.ja, 7
  %i.jc = icmp eq i64 %i.jb, 6
  %i.jd = load ptr, ptr %0, align 8, !tbaa !336   ; 2 uses
  br i1 %i.jc, label %.split.i, label %bb.bu

.split.i:                                         ; preds = %bb.bt
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 456
  %i.jf = load ptr, ptr %i.je, align 8
  %i.jg = call noundef zeroext i1 %i.jf(ptr noundef nonnull align 8 dereferenceable(1073) %0, ptr noundef nonnull %1, i32 noundef %i.il, ptr noundef %.not159.i, ptr noundef nonnull align 8 dereferenceable(48) %39) #17, !inline_history !492
  br i1 %i.jg, label %.critedge171.i, label %.critedge173.i

bb.bu:                                            ; preds = %bb.bt
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jd, i64 448
  %i.ji = load ptr, ptr %i.jh, align 8
  %i.jj = call noundef zeroext i1 %i.ji(ptr noundef nonnull align 8 dereferenceable(1073) %0, ptr noundef nonnull %1, i32 noundef %i.il, ptr noundef %.not159.i, ptr noundef nonnull align 8 dereferenceable(48) %39) #17, !inline_history !492
  br i1 %i.jj, label %.critedge171.i, label %.critedge173.i

.critedge171.i:                                   ; preds = %bb.bu, %.split.i, %bb.bp, %._crit_edge.i
  %i.jk = call noundef ptr @_ZNK4llvm12MachineInstr5getMFEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #17
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !620, !nonnull !311, !align !312
  %i.jm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(140) %i.jl) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #17
  %i.jn = load i8, ptr %i.g, align 1, !tbaa !297
  %.not.i217.i = icmp eq i8 %i.jn, 0
  store ptr @.str.20, ptr %34, align 8
  br i1 %.not.i217.i, label %_ZN4llvmplERKNS_5TwineES2_.exit236.i, label %bb.bv

bb.bv:                                            ; preds = %.critedge171.i
  store ptr %i.g, ptr %i.dg, align 8, !alias.scope !621
  br label %_ZN4llvmplERKNS_5TwineES2_.exit236.i

_ZN4llvmplERKNS_5TwineES2_.exit236.i:             ; preds = %bb.bv, %.critedge171.i
  %.sroa.05.0.i.i226.i = phi ptr [ %34, %bb.bv ], [ @.str.20, %.critedge171.i ]
  %.014.i.i225.i = phi i8 [ 2, %bb.bv ], [ 3, %.critedge171.i ]
  %storemerge.i66 = phi i8 [ 3, %bb.bv ], [ 1, %.critedge171.i ]
  store i8 3, ptr %i.dh, align 8, !tbaa !396
  store i8 %storemerge.i66, ptr %i.di, align 1, !tbaa !396
  store ptr %.sroa.05.0.i.i226.i, ptr %33, align 8, !alias.scope !622
  store ptr @.str.14, ptr %i.dl, align 8, !alias.scope !622
  store i8 %.014.i.i225.i, ptr %i.dj, align 8, !tbaa !298, !alias.scope !622
  store i8 3, ptr %i.dk, align 1, !tbaa !296, !alias.scope !622
  call void @_ZN4llvm23DiagnosticInfoInlineAsmC1EmRKNS_5TwineENS_18DiagnosticSeverityE(ptr noundef nonnull align 8 dereferenceable(40) %32, i64 noundef %i.bg, ptr noundef nonnull align 8 dereferenceable(34) %33, i8 noundef signext 0) #17
  call void @_ZN4llvm11LLVMContext8diagnoseERKNS_14DiagnosticInfoE(ptr noundef nonnull align 8 dereferenceable(8) %i.jm, ptr noundef nonnull align 8 dereferenceable(13) %32) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #17
  br label %.critedge173.i

.critedge173.i:                                   ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit236.i, %bb.bu, %.split.i, %bb.bs, %bb.br, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  br label %_ZN4llvm11raw_ostreamlsEc.exit176.i.backedge

_ZN4llvm11raw_ostreamlsEc.exit176.i.backedge:     ; preds = %.critedge173.i, %bb.au, %bb.an, %bb.am, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ae, %_ZN4llvm11raw_ostreamlsEc.exit179.i, %bb.u, %bb.t, %bb.r, %.critedge.i
  %.0137.i.be = phi ptr [ %.0146.i, %bb.r ], [ %.4.i, %.critedge173.i ], [ %.0146.i, %.critedge.i ], [ %i.du, %bb.u ], [ %i.fy, %bb.au ], [ %i.du, %bb.t ], [ %i.ex, %bb.an ], [ %i.ex, %bb.am ], [ %i.eq, %bb.ah ], [ %i.eq, %bb.ai ], [ %i.eq, %bb.aj ], [ %i.ex, %bb.ak ], [ %i.ep, %bb.ae ], [ %i.eh, %_ZN4llvm11raw_ostreamlsEc.exit179.i ]
  %.0.i.be = phi i32 [ %.0.i, %bb.r ], [ %.0.i, %.critedge173.i ], [ %.0.i, %.critedge.i ], [ %.0.i, %bb.u ], [ %.0.i, %bb.au ], [ %.0.i, %bb.t ], [ -1, %bb.an ], [ -1, %bb.am ], [ -1, %bb.ah ], [ -1, %bb.ai ], [ %i.ew, %bb.aj ], [ -1, %bb.ak ], [ 0, %bb.ae ], [ %.0.i, %_ZN4llvm11raw_ostreamlsEc.exit179.i ]
  br label %_ZN4llvm11raw_ostreamlsEc.exit176.i, !llvm.loop !504

bb.bw:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit176.i
  %.pre281.i = load ptr, ptr %i.db, align 8, !tbaa !394 ; 3 uses
  br i1 %i.bt, label %bb.bx, label %_ZN4llvm11raw_ostreamlsEPKc.exit239.i

bb.bx:                                            ; preds = %bb.bw
  %i.jo = load ptr, ptr %i.dc, align 8, !tbaa !393
  %i.jp = ptrtoint ptr %i.jo to i64
  %i.jq = ptrtoint ptr %.pre281.i to i64
  %i.jr = sub i64 %i.jp, %i.jq
  %i.js = icmp ult i64 %i.jr, 13
  br i1 %i.js, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.jt = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %39, ptr noundef nonnull @.str.21, i64 noundef 13) #17 ; 0 uses
  %.pre280.i = load ptr, ptr %i.db, align 8, !tbaa !394
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit239.i

bb.bz:                                            ; preds = %bb.bx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.pre281.i, ptr noundef nonnull align 1 dereferenceable(13) @.str.21, i64 13, i1 false)
  %i.ju = load ptr, ptr %i.db, align 8, !tbaa !394
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 13 ; 2 uses
  store ptr %i.jv, ptr %i.db, align 8, !tbaa !394
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit239.i

_ZN4llvm11raw_ostreamlsEPKc.exit239.i:            ; preds = %bb.bz, %bb.by, %bb.bw
  %i.jw = phi ptr [ %i.jv, %bb.bz ], [ %.pre280.i, %bb.by ], [ %.pre281.i, %bb.bw ] ; 3 uses
  %i.jx = load ptr, ptr %i.dc, align 8, !tbaa !393
  %.not.i240.i = icmp ult ptr %i.jw, %i.jx
  br i1 %.not.i240.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit239.i
  %i.jy = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %39, i8 noundef zeroext 10) #17
  br label %_ZN4llvm11raw_ostreamlsEc.exit242.i

bb.cb:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit239.i
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jw, i64 1
  store ptr %i.jz, ptr %i.db, align 8, !tbaa !394
  store i8 10, ptr %i.jw, align 1, !tbaa !297
  br label %_ZN4llvm11raw_ostreamlsEc.exit242.i

_ZN4llvm11raw_ostreamlsEc.exit242.i:              ; preds = %bb.cb, %bb.ca
  %.0.i241.i = phi ptr [ %i.jy, %bb.ca ], [ %39, %bb.cb ] ; 3 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.0.i241.i, i64 32 ; 2 uses
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !394 ; 3 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.0.i241.i, i64 24
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !393
  %.not.i243.i = icmp ult ptr %i.kb, %i.kd
  br i1 %.not.i243.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit242.i
  %i.ke = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %.0.i241.i, i8 noundef zeroext 0) #17 ; 0 uses
  br label %_ZL16EmitInlineAsmStrPKcPKN4llvm12MachineInstrEPNS1_17MachineModuleInfoERKNS1_9MCAsmInfoEPNS1_10AsmPrinterEmRNS1_11raw_ostreamE.exit

bb.cd:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit242.i
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kb, i64 1
  store ptr %i.kf, ptr %i.ka, align 8, !tbaa !394
  store i8 0, ptr %i.kb, align 1, !tbaa !297
  br label %_ZL16EmitInlineAsmStrPKcPKN4llvm12MachineInstrEPNS1_17MachineModuleInfoERKNS1_9MCAsmInfoEPNS1_10AsmPrinterEmRNS1_11raw_ostreamE.exit

_ZL16EmitInlineAsmStrPKcPKN4llvm12MachineInstrEPNS1_17MachineModuleInfoERKNS1_9MCAsmInfoEPNS1_10AsmPrinterEmRNS1_11raw_ostreamE.exit: ; preds = %bb.cc, %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #17
  %i.kg = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 2 uses
  store ptr %i.kg, ptr %40, align 8, !tbaa !386
  %i.kh = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 7 uses
  store i32 0, ptr %i.kh, align 8, !tbaa !397
  %i.ki = getelementptr inbounds nuw i8, ptr %40, i64 12 ; 2 uses
  store i32 8, ptr %i.ki, align 4, !tbaa !623
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !398
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !624, !nonnull !311, !align !312 ; 2 uses
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !336
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 200
  %i.kp = load ptr, ptr %i.ko, align 8
  %i.kq = call noundef ptr %i.kp(ptr noundef nonnull align 8 dereferenceable(344) %i.km) #17 ; 8 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ks = load i24, ptr %i.kr, align 8            ; 2 uses
  %i.kt = zext i24 %i.ks to i32
  %i.ku = icmp ugt i24 %i.ks, 2
  br i1 %i.ku, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.cj, %_ZL16EmitInlineAsmStrPKcPKN4llvm12MachineInstrEPNS1_17MachineModuleInfoERKNS1_9MCAsmInfoEPNS1_10AsmPrinterEmRNS1_11raw_ostreamE.exit
  %i.kv = load i32, ptr %i.kh, align 8, !tbaa !397
  %.not.i68 = icmp eq i32 %i.kv, 0
  br i1 %.not.i68, label %bb.cn, label %._crit_edge.i.i

.lr.ph:                                           ; preds = %_ZL16EmitInlineAsmStrPKcPKN4llvm12MachineInstrEPNS1_17MachineModuleInfoERKNS1_9MCAsmInfoEPNS1_10AsmPrinterEmRNS1_11raw_ostreamE.exit, %bb.cj
  %.05490 = phi i32 [ %i.ly, %bb.cj ], [ 2, %_ZL16EmitInlineAsmStrPKcPKN4llvm12MachineInstrEPNS1_17MachineModuleInfoERKNS1_9MCAsmInfoEPNS1_10AsmPrinterEmRNS1_11raw_ostreamE.exit ] ; 4 uses
  %i.kw = load ptr, ptr %i.d, align 8, !tbaa !385 ; 2 uses
  %i.kx = zext i32 %.05490 to i64
  %i.ky = getelementptr inbounds nuw [32 x i8], ptr %i.kw, i64 %i.kx ; 2 uses
  %i.kz = load i32, ptr %i.ky, align 8
  %i.la = and i32 %i.kz, 255
  %i.lb = icmp eq i32 %i.la, 1
  br i1 %i.lb, label %bb.ce, label %bb.cj

bb.ce:                                            ; preds = %.lr.ph
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ky, i64 16
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !297
  %i.le = trunc i64 %i.ld to i32                  ; 2 uses
  %i.lf = and i32 %i.le, 7
  %i.lg = icmp eq i32 %i.lf, 4
  br i1 %i.lg, label %bb.cf, label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit

bb.cf:                                            ; preds = %bb.ce
  %50 = add nuw nsw i32 %.05490, 1
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds nuw [32 x i8], ptr %i.kw, i64 %51
  %i.lh = getelementptr inbounds nuw i8, ptr %52, i64 4
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !297 ; 3 uses
  %i.lj = load ptr, ptr %i.kj, align 8, !tbaa !398
  %i.lk = load ptr, ptr %i.kq, align 8, !tbaa !336
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 136
  %i.lm = load ptr, ptr %i.ll, align 8
  %i.ln = call noundef zeroext i1 %i.lm(ptr noundef nonnull align 8 dereferenceable(316) %i.kq, ptr noundef nonnull align 8 dereferenceable(1065) %i.lj, i32 %i.li) #17
  br i1 %i.ln, label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.lo = load i32, ptr %i.kh, align 8, !tbaa !397 ; 2 uses
  %i.lp = load i32, ptr %i.ki, align 4, !tbaa !623
  %.not.i69 = icmp ult i32 %i.lo, %i.lp
  br i1 %.not.i69, label %bb.ci, label %bb.ch, !prof !625

bb.ch:                                            ; preds = %bb.cg
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %40, i32 %i.li)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit

bb.ci:                                            ; preds = %bb.cg
  %i.lq = zext i32 %i.lo to i64
  %i.lr = load ptr, ptr %40, align 8, !tbaa !386
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %i.lq
  store i32 %i.li, ptr %i.ls, align 1
  %i.lt = load i32, ptr %i.kh, align 8, !tbaa !397
  %i.lu = add i32 %i.lt, 1
  store i32 %i.lu, ptr %i.kh, align 8, !tbaa !397
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit: ; preds = %bb.cf, %bb.ch, %bb.ci, %bb.ce
  %i.lv = lshr i32 %i.le, 3
  %i.lw = and i32 %i.lv, 8191
  %i.lx = add i32 %i.lw, %.05490
  br label %bb.cj

bb.cj:                                            ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit
  %.1 = phi i32 [ %i.lx, %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit ], [ %.05490, %.lr.ph ]
  %i.ly = add i32 %.1, 1                          ; 2 uses
  %i.lz = icmp ult i32 %i.ly, %i.kt
  br i1 %i.lz, label %.lr.ph, label %._crit_edge, !llvm.loop !505

._crit_edge.i.i:                                  ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #17
  %i.ma = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 4 uses
  store ptr %i.ma, ptr %41, align 8, !tbaa !399
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 53, ptr %i.a, align 8, !tbaa !400
  %i.mb = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %41, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #17 ; 3 uses
  store ptr %i.mb, ptr %41, align 8, !tbaa !401
  %i.mc = load i64, ptr %i.a, align 8, !tbaa !400 ; 3 uses
  store i64 %i.mc, ptr %i.ma, align 8, !tbaa !297
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(53) %i.mb, ptr noundef nonnull align 1 dereferenceable(53) @.str.2, i64 53, i1 false)
  %i.md = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 4 uses
  store i64 %i.mc, ptr %i.md, align 8, !tbaa !402
  %i.me = getelementptr inbounds nuw i8, ptr %i.mb, i64 %i.mc
  store i8 0, ptr %i.me, align 1, !tbaa !297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.mf = load ptr, ptr %40, align 8, !tbaa !386  ; 3 uses
  %i.mg = load i32, ptr %i.kh, align 8, !tbaa !397 ; 3 uses
  %i.mh = zext i32 %i.mg to i64
  %.idx = shl nuw nsw i64 %i.mh, 2
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mf, i64 %.idx
  %.not5791 = icmp eq i32 %i.mg, 0
  br i1 %.not5791, label %._crit_edge94, label %_ZN4llvmpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit.peel

_ZN4llvmpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit.peel: ; preds = %._crit_edge.i.i
  %i.mj = load i32, ptr %i.mf, align 4, !tbaa !626
  %i.mk = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %41, ptr noundef nonnull @.str.4, i64 noundef 0) #17 ; 0 uses
  %i.ml = load ptr, ptr %i.kq, align 8, !tbaa !336
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 624
  %i.mn = load ptr, ptr %i.mm, align 8
  %i.mo = call { ptr, i64 } %i.mn(ptr noundef nonnull align 8 dereferenceable(316) %i.kq, i32 %i.mj) #17 ; 2 uses
  %i.mp = extractvalue { ptr, i64 } %i.mo, 1      ; 2 uses
  %i.mq = load i64, ptr %i.md, align 8, !tbaa !402
  %i.mr = sub i64 4611686018427387903, %i.mq
  %i.ms = icmp ult i64 %i.mr, %i.mp
  br i1 %i.ms, label %.loopexit102, label %_ZN4llvmpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit71.peel

_ZN4llvmpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit71.peel: ; preds = %_ZN4llvmpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit.peel
  %i.mt = extractvalue { ptr, i64 } %i.mo, 0
  %i.mu = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %41, ptr noundef %i.mt, i64 noundef %i.mp) #17 ; 0 uses
  %.not57.peel = icmp eq i32 %i.mg, 1
  br i1 %.not57.peel, label %._crit_edge94, label %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit.peel.next

_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit.peel.next: ; preds = %_ZN4llvmpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit71.peel
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mf, i64 4
  br label %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit

._crit_edge94:                                    ; preds = %_ZN4llvmpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit71, %_ZN4llvmpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit71.peel, %._crit_edge.i.i
  %i.mw = load ptr, ptr %i.kj, align 8, !tbaa !398
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !620, !nonnull !311, !align !312
  %i.my = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(140) %i.mx) #17 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #17
  %i.mz = getelementptr inbounds nuw i8, ptr %43, i64 32
  store i8 4, ptr %i.mz, align 8, !tbaa !298
  %i.na = getelementptr inbounds nuw i8, ptr %43, i64 33
  store i8 1, ptr %i.na, align 1, !tbaa !296
  store ptr %41, ptr %43, align 8, !tbaa !297
  call void @_ZN4llvm23DiagnosticInfoInlineAsmC1EmRKNS_5TwineENS_18DiagnosticSeverityE(ptr noundef nonnull align 8 dereferenceable(40) %42, i64 noundef %i.bg, ptr noundef nonnull align 8 dereferenceable(34) %43, i8 noundef signext 1) #17
  call void @_ZN4llvm11LLVMContext8diagnoseERKNS_14DiagnosticInfoE(ptr noundef nonnull align 8 dereferenceable(8) %i.my, ptr noundef nonnull align 8 dereferenceable(13) %42) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #17
  %i.nb = getelementptr inbounds nuw i8, ptr %45, i64 32
  %i.nc = getelementptr inbounds nuw i8, ptr %45, i64 33
  store i8 1, ptr %i.nc, align 1, !tbaa !296
  store ptr @.str.5, ptr %45, align 8, !tbaa !297
  store i8 3, ptr %i.nb, align 8, !tbaa !298
  call void @_ZN4llvm23DiagnosticInfoInlineAsmC1EmRKNS_5TwineENS_18DiagnosticSeverityE(ptr noundef nonnull align 8 dereferenceable(40) %44, i64 noundef %i.bg, ptr noundef nonnull align 8 dereferenceable(34) %45, i8 noundef signext 3) #17
  call void @_ZN4llvm11LLVMContext8diagnoseERKNS_14DiagnosticInfoE(ptr noundef nonnull align 8 dereferenceable(8) %i.my, ptr noundef nonnull align 8 dereferenceable(13) %44) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #17
  %i.nd = load ptr, ptr %40, align 8, !tbaa !386  ; 2 uses
  %i.ne = load i32, ptr %i.kh, align 8, !tbaa !397 ; 2 uses
  %i.nf = zext i32 %i.ne to i64
  %.idx100 = shl nuw nsw i64 %i.nf, 2
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nd, i64 %.idx100
  %.not5895 = icmp eq i32 %i.ne, 0
  br i1 %.not5895, label %._crit_edge99, label %.lr.ph98

.lr.ph98:                                         ; preds = %._crit_edge94
  %i.nh = getelementptr inbounds nuw i8, ptr %46, i64 32 ; 3 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %48, i64 32
  %i.nj = getelementptr inbounds nuw i8, ptr %48, i64 33
  %i.nk = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 2 uses
  br label %bb.ck

_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit:   ; preds = %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit.peel.next, %_ZN4llvmpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit71
  %.05593 = phi ptr [ %i.oa, %_ZN4llvmpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit71 ], [ %i.mv, %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit.peel.next ] ; 2 uses
  %i.nl = load i64, ptr %i.md, align 8, !tbaa !402
  %i.nm = and i64 %i.nl, -2
  %i.nn = icmp eq i64 %i.nm, 4611686018427387902
  br i1 %i.nn, label %.loopexit, label %_ZN4llvmpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit

.loopexit:                                        ; preds = %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #18
  unreachable

_ZN4llvmpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit: ; preds = %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit
  %i.no = load i32, ptr %.05593, align 4, !tbaa !626
  %i.np = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %41, ptr noundef nonnull @.str.3, i64 noundef 2) #17 ; 0 uses
  %i.nq = load ptr, ptr %i.kq, align 8, !tbaa !336
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 624
  %i.ns = load ptr, ptr %i.nr, align 8
  %i.nt = call { ptr, i64 } %i.ns(ptr noundef nonnull align 8 dereferenceable(316) %i.kq, i32 %i.no) #17 ; 2 uses
  %i.nu = extractvalue { ptr, i64 } %i.nt, 1      ; 2 uses
  %i.nv = load i64, ptr %i.md, align 8, !tbaa !402
  %i.nw = sub i64 4611686018427387903, %i.nv
  %i.nx = icmp ult i64 %i.nw, %i.nu
  br i1 %i.nx, label %.loopexit102, label %_ZN4llvmpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit71

.loopexit102:                                     ; preds = %_ZN4llvmpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit, %_ZN4llvmpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit.peel
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #18
  unreachable

_ZN4llvmpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit71: ; preds = %_ZN4llvmpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit
  %i.ny = extractvalue { ptr, i64 } %i.nt, 0
  %i.nz = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %41, ptr noundef %i.ny, i64 noundef %i.nu) #17 ; 0 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %.05593, i64 4 ; 2 uses
  %.not57 = icmp eq ptr %i.oa, %i.mi
  br i1 %.not57, label %._crit_edge94, label %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit, !llvm.loop !506

._crit_edge99:                                    ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, %._crit_edge94
  %i.ob = load ptr, ptr %41, align 8, !tbaa !401  ; 2 uses
  %i.oc = icmp eq ptr %i.ob, %i.ma
  br i1 %i.oc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge99
  %i.od = load i64, ptr %i.ma, align 8, !tbaa !297
  %i.oe = add i64 %i.od, 1
  call void @_ZdlPvm(ptr noundef %i.ob, i64 noundef %i.oe) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge99, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #17
  br label %bb.cn

bb.ck:                                            ; preds = %.lr.ph98, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  %.096 = phi ptr [ %i.nd, %.lr.ph98 ], [ %i.or, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit ] ; 2 uses
  %i.of = load i32, ptr %.096, align 4, !tbaa !626
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #17
  %i.og = load ptr, ptr %i.kj, align 8, !tbaa !398
  %i.oh = load ptr, ptr %i.kq, align 8, !tbaa !336
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 128
  %i.oj = load ptr, ptr %i.oi, align 8
  call void %i.oj(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.516") align 8 %46, ptr noundef nonnull align 8 dereferenceable(316) %i.kq, ptr noundef nonnull align 8 dereferenceable(1065) %i.og, i32 %i.of) #17
  %i.ok = load i8, ptr %i.nh, align 8, !tbaa !629, !range !333, !noundef !311
  %i.ol = trunc nuw i8 %i.ok to i1
  br i1 %i.ol, label %bb.cl, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #17
  store i8 4, ptr %i.ni, align 8, !tbaa !298
  store i8 1, ptr %i.nj, align 1, !tbaa !296
  store ptr %46, ptr %48, align 8, !tbaa !297
  call void @_ZN4llvm23DiagnosticInfoInlineAsmC1EmRKNS_5TwineENS_18DiagnosticSeverityE(ptr noundef nonnull align 8 dereferenceable(40) %47, i64 noundef %i.bg, ptr noundef nonnull align 8 dereferenceable(34) %48, i8 noundef signext 3) #17
  call void @_ZN4llvm11LLVMContext8diagnoseERKNS_14DiagnosticInfoE(ptr noundef nonnull align 8 dereferenceable(8) %i.my, ptr noundef nonnull align 8 dereferenceable(13) %47) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #17
  %.pre = load i8, ptr %i.nh, align 8, !tbaa !629, !range !333
  %i.om = trunc nuw i8 %.pre to i1
  br i1 %i.om, label %bb.cm, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.cm:                                            ; preds = %bb.cl
  store i8 0, ptr %i.nh, align 8, !tbaa !629
  %i.on = load ptr, ptr %46, align 8, !tbaa !401  ; 2 uses
  %i.oo = icmp eq ptr %i.on, %i.nk
  br i1 %i.oo, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.cm
  %i.op = load i64, ptr %i.nk, align 8, !tbaa !297
  %i.oq = add i64 %i.op, 1
  call void @_ZdlPvm(ptr noundef %i.on, i64 noundef %i.oq) #19
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.cm, %bb.ck, %bb.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #17
  %i.or = getelementptr inbounds nuw i8, ptr %.096, i64 4 ; 2 uses
  %.not58 = icmp eq ptr %i.or, %i.ng
  br i1 %.not58, label %._crit_edge99, label %bb.ck

bb.cn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %._crit_edge
  %i.os = load ptr, ptr %38, align 8, !tbaa !521
  %i.ot = load i64, ptr %i.bi, align 8, !tbaa !522
  %i.ou = call noundef nonnull align 8 dereferenceable(320) ptr @_ZNK4llvm10AsmPrinter16getSubtargetInfoEv(ptr noundef nonnull align 8 dereferenceable(1073) %0) #17
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !310, !nonnull !311, !align !312
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 1408
  %i.oy = call noundef i32 @_ZNK4llvm12MachineInstr19getInlineAsmDialectEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #17
  %i.oz = load ptr, ptr %0, align 8, !tbaa !336
end_hunk_0
