Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/WebAssemblyAsmPrinter?download=true
begin_hunk_0_@_ZN4llvm21WebAssemblyAsmPrinter9emitDeclsERKNS_6ModuleE:bb.a
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !349
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 288
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = call noundef zeroext i1 %i.cx(ptr noundef nonnull align 8 dereferenceable(304) %i.cu, ptr noundef nonnull %i.bb, i32 noundef 24) #21 ; 0 uses
  %i.cz = load ptr, ptr %i.ct, align 8, !tbaa !197 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !349
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 200
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(304) %i.cz, ptr noundef nonnull %i.bb, ptr null) #21
  %i.dd = load ptr, ptr %i.ct, align 8, !tbaa !197 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !349
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 160
  %i.dg = load ptr, ptr %i.df, align 8
  call void %i.dg(ptr noundef nonnull align 8 dereferenceable(304) %i.dd) #21
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge133
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0109.0134 = load ptr, ptr %i.dh, align 8, !tbaa !525 ; 2 uses
  %.not124135 = icmp eq ptr %.sroa.0109.0134, %i.di
  br i1 %.not124135, label %_ZN4llvm6detail12DenseSetImplIPNS_8MCSymbolENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit, label %.lr.ph138

.lr.ph138:                                        ; preds = %bb.p
  %i.dj = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.dm = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  br label %bb.r

._crit_edge139:                                   ; preds = %bb.am
  %.phi.trans.insert145 = getelementptr inbounds nuw i8, ptr %7, i64 20
  %.pre146 = load i32, ptr %.phi.trans.insert145, align 4, !tbaa !526 ; 2 uses
  %i.dr = icmp eq i32 %.pre146, 0
  br i1 %i.dr, label %_ZN4llvm6detail12DenseSetImplIPNS_8MCSymbolENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %._crit_edge139
  %i.ds = load ptr, ptr %7, align 8, !tbaa !529
  %i.dt = zext i32 %.pre146 to i64                ; 2 uses
  %i.du = shl nuw nsw i64 %i.dt, 3
  %i.dv = add nuw nsw i64 %i.dt, 31
  %i.dw = lshr i64 %i.dv, 3
  %i.dx = and i64 %i.dw, 1073741820
  %i.dy = add nuw nsw i64 %i.dx, %i.du
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ds, i64 noundef %i.dy, i64 noundef 8) #21
  br label %_ZN4llvm6detail12DenseSetImplIPNS_8MCSymbolENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit

_ZN4llvm6detail12DenseSetImplIPNS_8MCSymbolENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit: ; preds = %bb.p, %._crit_edge139, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.an

bb.r:                                             ; preds = %.lr.ph138, %bb.am
  %.sroa.0109.0136 = phi ptr [ %.sroa.0109.0134, %.lr.ph138 ], [ %.sroa.0109.0, %bb.am ] ; 4 uses
  %i.dz = getelementptr inbounds i8, ptr %.sroa.0109.0136, i64 -64 ; 10 uses
  %i.ea = getelementptr inbounds i8, ptr %.sroa.0109.0136, i64 -32
  %i.eb = load i32, ptr %i.ea, align 8
  %i.ec = and i32 %i.eb, 8192
  %.not125 = icmp eq i32 %i.ec, 0
  br i1 %.not125, label %bb.s, label %bb.am

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  store ptr %i.dj, ptr %8, align 8, !tbaa !236
  store i64 0, ptr %i.dk, align 8, !tbaa !238
  store i64 4, ptr %i.dl, align 8, !tbaa !239
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  store ptr %i.dm, ptr %9, align 8, !tbaa !236
  store i64 0, ptr %i.dn, align 8, !tbaa !238
  store i64 4, ptr %i.do, align 8, !tbaa !239
  %i.ed = getelementptr inbounds i8, ptr %.sroa.0109.0136, i64 -40
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !240
  %i.ef = load ptr, ptr %i.dp, align 8, !tbaa !245, !nonnull !207, !align !224
  call void @_ZN4llvm19computeSignatureVTsEPKNS_12FunctionTypeEPKNS_8FunctionERS4_RKNS_13TargetMachineERNS_15SmallVectorImplINS_3MVTEEESD_(ptr noundef %i.ee, ptr noundef nonnull %i.dz, ptr noundef nonnull align 8 dereferenceable(140) %i.dz, ptr noundef nonnull align 8 dereferenceable(1728) %i.ef, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %8) #21
  %i.eg = load ptr, ptr %i.t, align 8, !tbaa !223, !nonnull !207, !align !224
  %i.eh = call noundef ptr @_ZN4llvm17signatureFromMVTsERNS_9MCContextERKNS_15SmallVectorImplINS_3MVTEEES6_(ptr noundef nonnull align 8 dereferenceable(2208) %i.eg, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %9) #21 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i8 0, ptr %i.a, align 1, !tbaa !208
  %i.ei = call noundef ptr @_ZN4llvm21WebAssemblyAsmPrinter22getMCSymbolForFunctionEPKNS_8FunctionEPNS_4wasm13WasmSignatureERb(ptr noundef nonnull align 8 dereferenceable(1112) %0, ptr noundef nonnull %i.dz, ptr noundef %i.eh, ptr noundef nonnull align 1 dereferenceable(1) %i.a) ; 14 uses
  %i.ej = load i8, ptr %i.a, align 1, !tbaa !208, !range !206, !noundef !207
  %i.ek = trunc nuw i8 %i.ej to i1                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  br i1 %i.ek, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  store ptr %i.ei, ptr %i.b, align 8, !tbaa !530
  %i.el = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MCSymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.b), !noalias !531
  %.fca.1.extract.i.i.i = extractvalue { ptr, i8 } %i.el, 1
  %i.em = trunc nuw i8 %.fca.1.extract.i.i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br i1 %i.em, label %bb.u, label %bb.aj

.critedge:                                        ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.u

bb.u:                                             ; preds = %.critedge, %bb.t
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  store i64 4294967296, ptr %i.en, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ei, i64 112 ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !355
  %.not81 = icmp eq ptr %i.ep, null
  br i1 %.not81, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store ptr %i.eh, ptr %i.eo, align 8, !tbaa !355
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.eq = load ptr, ptr %i.dq, align 8, !tbaa !197
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !198 ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !349
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 96
  %i.ev = load ptr, ptr %i.eu, align 8
  call void %i.ev(ptr noundef nonnull align 8 dereferenceable(16) %i.es, ptr noundef nonnull %i.ei) #21
  %i.ew = call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(140) %i.dz, ptr nonnull @.str.18, i64 18) #21
  br i1 %i.ew, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.ex = call ptr @_ZNK4llvm8Function14getFnAttributeENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(140) %i.dz, ptr nonnull @.str.18, i64 18) #21
  store ptr %i.ex, ptr %10, align 8
  %i.ey = call { ptr, i64 } @_ZNK4llvm9Attribute16getValueAsStringEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #21 ; 2 uses
  %i.ez = extractvalue { ptr, i64 } %i.ey, 0      ; 2 uses
  %i.fa = extractvalue { ptr, i64 } %i.ey, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %i.fb = load ptr, ptr %i.t, align 8, !tbaa !223, !nonnull !207, !align !224
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 192
  store ptr %i.fc, ptr %4, align 8, !tbaa !538
  %i.fd = call { ptr, i64 } @_ZN4llvm11StringSaver4saveENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr %i.ez, i64 %i.fa) #21 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.fe = extractvalue { ptr, i64 } %i.fd, 0
  %i.ff = extractvalue { ptr, i64 } %i.fd, 1
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ei, i64 40
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ei, i64 56 ; 2 uses
  %i.fi = load i8, ptr %i.fh, align 8, !tbaa !539, !range !206, !noundef !207
  %i.fj = trunc nuw i8 %i.fi to i1
  store ptr %i.fe, ptr %i.fg, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ei, i64 48
  store i64 %i.ff, ptr %.sroa.2.0..sroa_idx.i, align 8
  br i1 %i.fj, label %_ZN4llvm12MCSymbolWasm15setImportModuleENS_9StringRefE.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i8 1, ptr %i.fh, align 8, !tbaa !539
  br label %_ZN4llvm12MCSymbolWasm15setImportModuleENS_9StringRefE.exit

_ZN4llvm12MCSymbolWasm15setImportModuleENS_9StringRefE.exit: ; preds = %bb.x, %bb.y
  %i.fk = load ptr, ptr %i.dq, align 8, !tbaa !197
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !198 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !349
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 136
  %i.fp = load ptr, ptr %i.fo, align 8
  call void %i.fp(ptr noundef nonnull align 8 dereferenceable(16) %i.fm, ptr noundef nonnull %i.ei, ptr %i.ez, i64 %i.fa) #21
  br label %bb.z

bb.z:                                             ; preds = %_ZN4llvm12MCSymbolWasm15setImportModuleENS_9StringRefE.exit, %bb.w
  %i.fq = call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(140) %i.dz, ptr nonnull @.str.19, i64 16) #21
  br i1 %i.fq, label %bb.aa, label %bb.ag

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  br i1 %i.ek, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.fs = load i32, ptr %i.fr, align 8
  %i.ft = and i32 %i.fs, 4
  %.not.i89 = icmp eq i32 %i.ft, 0
  br i1 %.not.i89, label %_ZNK4llvm8MCSymbol7getNameEv.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fu = getelementptr inbounds i8, ptr %i.ei, i64 -8
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !225 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 24
  %i.fx = load i64, ptr %i.fv, align 8, !tbaa !227
  br label %_ZNK4llvm8MCSymbol7getNameEv.exit

_ZNK4llvm8MCSymbol7getNameEv.exit:                ; preds = %bb.ab, %bb.ac
  %.sroa.0.0.i90 = phi ptr [ %i.fw, %bb.ac ], [ null, %bb.ab ]
  %.sroa.4.0.i = phi i64 [ %i.fx, %bb.ac ], [ 0, %bb.ab ]
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i90, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %.sroa.4.0.i, 1
  br label %bb.ae

bb.ad:                                            ; preds = %bb.aa
  %i.fy = call ptr @_ZNK4llvm8Function14getFnAttributeENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(140) %i.dz, ptr nonnull @.str.19, i64 16) #21
  store ptr %i.fy, ptr %11, align 8
  %i.fz = call { ptr, i64 } @_ZNK4llvm9Attribute16getValueAsStringEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #21
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %_ZNK4llvm8MCSymbol7getNameEv.exit
  %.pn = phi { ptr, i64 } [ %.fca.1.insert.i, %_ZNK4llvm8MCSymbol7getNameEv.exit ], [ %i.fz, %bb.ad ] ; 2 uses
  %.sroa.6.0 = extractvalue { ptr, i64 } %.pn, 1  ; 2 uses
  %.sroa.014.0 = extractvalue { ptr, i64 } %.pn, 0 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.ga = load ptr, ptr %i.t, align 8, !tbaa !223, !nonnull !207, !align !224
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 192
  store ptr %i.gb, ptr %3, align 8, !tbaa !538
  %i.gc = call { ptr, i64 } @_ZN4llvm11StringSaver4saveENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr %.sroa.014.0, i64 %.sroa.6.0) #21 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.gd = extractvalue { ptr, i64 } %i.gc, 0
  %i.ge = extractvalue { ptr, i64 } %i.gc, 1
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ei, i64 64
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ei, i64 80 ; 2 uses
  %i.gh = load i8, ptr %i.gg, align 8, !tbaa !539, !range !206, !noundef !207
  %i.gi = trunc nuw i8 %i.gh to i1
  store ptr %i.gd, ptr %i.gf, align 8
  %.sroa.2.0..sroa_idx.i92 = getelementptr inbounds nuw i8, ptr %i.ei, i64 72
  store i64 %i.ge, ptr %.sroa.2.0..sroa_idx.i92, align 8
  br i1 %i.gi, label %_ZN4llvm12MCSymbolWasm13setImportNameENS_9StringRefE.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store i8 1, ptr %i.gg, align 8, !tbaa !539
  br label %_ZN4llvm12MCSymbolWasm13setImportNameENS_9StringRefE.exit

_ZN4llvm12MCSymbolWasm13setImportNameENS_9StringRefE.exit: ; preds = %bb.ae, %bb.af
  %i.gj = load ptr, ptr %i.dq, align 8, !tbaa !197
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !198 ; 2 uses
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !349
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 144
  %i.go = load ptr, ptr %i.gn, align 8
  call void %i.go(ptr noundef nonnull align 8 dereferenceable(16) %i.gl, ptr noundef nonnull %i.ei, ptr %.sroa.014.0, i64 %.sroa.6.0) #21
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN4llvm12MCSymbolWasm13setImportNameENS_9StringRefE.exit, %bb.z
  %i.gp = call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(140) %i.dz, ptr nonnull @.str.20, i64 16) #21
  br i1 %i.gp, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.gq = call noundef ptr @_ZNK4llvm10AsmPrinter9getSymbolEPKNS_11GlobalValueE(ptr noundef nonnull align 8 dereferenceable(1073) %0, ptr noundef nonnull %i.dz) #21 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  %i.gr = call ptr @_ZNK4llvm8Function14getFnAttributeENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(140) %i.dz, ptr nonnull @.str.20, i64 16) #21
  store ptr %i.gr, ptr %12, align 8
  %i.gs = call { ptr, i64 } @_ZNK4llvm9Attribute16getValueAsStringEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #21 ; 2 uses
  %i.gt = extractvalue { ptr, i64 } %i.gs, 0      ; 2 uses
  %i.gu = extractvalue { ptr, i64 } %i.gs, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  %i.gv = load ptr, ptr %i.t, align 8, !tbaa !223, !nonnull !207, !align !224
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 192
  store ptr %i.gw, ptr %2, align 8, !tbaa !538
  %i.gx = call { ptr, i64 } @_ZN4llvm11StringSaver4saveENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr %i.gt, i64 %i.gu) #21 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.gy = extractvalue { ptr, i64 } %i.gx, 0
  %i.gz = extractvalue { ptr, i64 } %i.gx, 1
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gq, i64 88
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gq, i64 104 ; 2 uses
  %i.hc = load i8, ptr %i.hb, align 8, !tbaa !539, !range !206, !noundef !207
  %i.hd = trunc nuw i8 %i.hc to i1
  store ptr %i.gy, ptr %i.ha, align 8
  %.sroa.2.0..sroa_idx.i95 = getelementptr inbounds nuw i8, ptr %i.gq, i64 96
  store i64 %i.gz, ptr %.sroa.2.0..sroa_idx.i95, align 8
  br i1 %i.hd, label %_ZN4llvm12MCSymbolWasm13setExportNameENS_9StringRefE.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store i8 1, ptr %i.hb, align 8, !tbaa !539
  br label %_ZN4llvm12MCSymbolWasm13setExportNameENS_9StringRefE.exit

_ZN4llvm12MCSymbolWasm13setExportNameENS_9StringRefE.exit: ; preds = %bb.ah, %bb.ai
  %i.he = load ptr, ptr %i.dq, align 8, !tbaa !197
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !198 ; 2 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !349
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 152
  %i.hj = load ptr, ptr %i.hi, align 8
  call void %i.hj(ptr noundef nonnull align 8 dereferenceable(16) %i.hg, ptr noundef nonnull %i.gq, ptr %i.gt, i64 %i.gu) #21
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ag, %_ZN4llvm12MCSymbolWasm13setExportNameENS_9StringRefE.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.hk = load ptr, ptr %9, align 8, !tbaa !236   ; 2 uses
  %i.hl = icmp eq ptr %i.hk, %i.dm
  br i1 %i.hl, label %_ZN4llvm11SmallVectorINS_3MVTELj4EED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @free(ptr noundef %i.hk) #21
  br label %_ZN4llvm11SmallVectorINS_3MVTELj4EED2Ev.exit

_ZN4llvm11SmallVectorINS_3MVTELj4EED2Ev.exit:     ; preds = %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.hm = load ptr, ptr %8, align 8, !tbaa !236   ; 2 uses
  %i.hn = icmp eq ptr %i.hm, %i.dj
  br i1 %i.hn, label %_ZN4llvm11SmallVectorINS_3MVTELj4EED2Ev.exit96, label %bb.al

bb.al:                                            ; preds = %_ZN4llvm11SmallVectorINS_3MVTELj4EED2Ev.exit
  call void @free(ptr noundef %i.hm) #21
  br label %_ZN4llvm11SmallVectorINS_3MVTELj4EED2Ev.exit96

_ZN4llvm11SmallVectorINS_3MVTELj4EED2Ev.exit96:   ; preds = %_ZN4llvm11SmallVectorINS_3MVTELj4EED2Ev.exit, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.am

bb.am:                                            ; preds = %bb.r, %_ZN4llvm11SmallVectorINS_3MVTELj4EED2Ev.exit96
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.0109.0136, i64 8
  %.sroa.0109.0 = load ptr, ptr %i.ho, align 8, !tbaa !525 ; 2 uses
  %.not124 = icmp eq ptr %.sroa.0109.0, %i.di
  br i1 %.not124, label %._crit_edge139, label %bb.r

bb.an:                                            ; preds = %bb.a, %_ZN4llvm6detail12DenseSetImplIPNS_8MCSymbolENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit
  ret void
}

declare noundef ptr @_ZNK4llvm9MCContext12lookupSymbolERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(2208), ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #4

declare void @_ZN4llvm19computeSignatureVTsEPKNS_12FunctionTypeEPKNS_8FunctionERS4_RKNS_13TargetMachineERNS_15SmallVectorImplINS_3MVTEEESD_(ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(140), ptr noundef nonnull align 8 dereferenceable(1728), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare noundef ptr @_ZN4llvm17signatureFromMVTsERNS_9MCContextERKNS_15SmallVectorImplINS_3MVTEEES6_(ptr noundef nonnull align 8 dereferenceable(2208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(140), ptr, i64) local_unnamed_addr #4

declare ptr @_ZNK4llvm8Function14getFnAttributeENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(140), ptr, i64) local_unnamed_addr #4

declare { ptr, i64 } @_ZNK4llvm9Attribute16getValueAsStringEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvm21WebAssemblyAsmPrinter16emitEndOfAsmFileERNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(1112) %0, ptr noundef nonnull align 8 dereferenceable(1288) %1) unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %3 = alloca %"struct.std::pair.886", align 8    ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  tail call void @_ZN4llvm21WebAssemblyAsmPrinter9emitDeclsERKNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(1112) %0, ptr noundef nonnull align 8 dereferenceable(1288) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.084.0103 = load ptr, ptr %i.a, align 8, !tbaa !525 ; 2 uses
  %.not96104 = icmp eq ptr %.sroa.084.0103, %i.b
  br i1 %.not96104, label %.loopexit102, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.084.0105 = phi ptr [ %.sroa.084.0, %bb.c ], [ %.sroa.084.0103, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds i8, ptr %.sroa.084.0105, i64 -32
  %i.d = load i32, ptr %i.c, align 8
  %i.e = and i32 %i.d, 8192
  %.not97 = icmp eq i32 %i.e, 0
  br i1 %.not97, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds i8, ptr %.sroa.084.0105, i64 -64
  %i.g = tail call noundef zeroext i1 @_ZNK4llvm8Function15hasAddressTakenEPPKNS_4UserEbbbbb(ptr noundef nonnull align 8 dereferenceable(140) %i.f, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false) #21
  br i1 %i.g, label %.critedge, label %bb.c

.critedge:                                        ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !223, !nonnull !207, !align !224
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !8
  %i.l = tail call noundef ptr @_ZN4llvm11WebAssembly30getOrCreateFunctionTableSymbolERNS_9MCContextEPKNS_20WebAssemblySubtargetE(ptr noundef nonnull align 8 dereferenceable(2208) %i.i, ptr noundef %i.k) #21
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !197  ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !349
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 288
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(304) %i.n, ptr noundef %i.l, i32 noundef 18) #21 ; 0 uses
  br label %.loopexit102

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.084.0105, i64 8
  %.sroa.084.0 = load ptr, ptr %i.s, align 8, !tbaa !525 ; 2 uses
  %.not96 = icmp eq ptr %.sroa.084.0, %i.b
  br i1 %.not96, label %.loopexit102, label %.lr.ph

.loopexit102:                                     ; preds = %bb.c, %bb.a, %.critedge
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.078.0106 = load ptr, ptr %i.t, align 8, !tbaa !525 ; 2 uses
  %.not98107 = icmp eq ptr %.sroa.078.0106, %i.u
  br i1 %.not98107, label %._crit_edge, label %.lr.ph109

.lr.ph109:                                        ; preds = %.loopexit102
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.d

._crit_edge:                                      ; preds = %_ZNK4llvm4Type7isSizedEPNS_15SmallPtrSetImplIPS0_EE.exit.thread88, %.loopexit102
  %i.y = tail call noundef ptr @_ZNK4llvm6Module16getNamedMetadataENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(1288) %1, ptr nonnull @.str.21, i64 20) #21 ; 3 uses
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %.loopexit, label %bb.j

bb.d:                                             ; preds = %.lr.ph109, %_ZNK4llvm4Type7isSizedEPNS_15SmallPtrSetImplIPS0_EE.exit.thread88
  %.sroa.078.0108 = phi ptr [ %.sroa.078.0106, %.lr.ph109 ], [ %.sroa.078.0, %_ZNK4llvm4Type7isSizedEPNS_15SmallPtrSetImplIPS0_EE.exit.thread88 ] ; 5 uses
  %i.z = getelementptr inbounds i8, ptr %.sroa.078.0108, i64 -64 ; 3 uses
  %i.aa = tail call noundef zeroext i1 @_ZNK4llvm11GlobalValue13isDeclarationEv(ptr noundef nonnull align 8 dereferenceable(89) %i.z) #21
  br i1 %i.aa, label %bb.e, label %_ZNK4llvm4Type7isSizedEPNS_15SmallPtrSetImplIPS0_EE.exit.thread88

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds i8, ptr %.sroa.078.0108, i64 -32
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = and i32 %i.ac, 15
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.f, label %_ZNK4llvm4Type7isSizedEPNS_15SmallPtrSetImplIPS0_EE.exit.thread88
end_hunk_0
begin_hunk_1_@_ZN4llvm23SmallVectorTemplateBaseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ELb0EE19moveElementsForGrowEPS8_:bb.a
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ELb0EE18uninitialized_moveIPS8_SB_EEvT_SC_T0_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !793

_ZN4llvm23SmallVectorTemplateBaseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ELb0EE18uninitialized_moveIPS8_SB_EEvT_SC_T0_.exit: ; preds = %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EJS7_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !145   ; 2 uses
  %.pre3 = load i32, ptr %i.b, align 8, !tbaa !209 ; 2 uses
  %.not4.i = icmp eq i32 %.pre3, 0
  br i1 %.not4.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ELb0EE13destroy_rangeEPS8_SA_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ELb0EE18uninitialized_moveIPS8_SB_EEvT_SC_T0_.exit
  %i.ah = zext i32 %.pre3 to i64
  %.idx2 = shl nuw nsw i64 %i.ah, 6
  %i.ai = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit.i
  %.05.i = phi ptr [ %i.aj, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit.i ], [ %i.ai, %.lr.ph.i.preheader ] ; 4 uses
  %i.aj = getelementptr inbounds i8, ptr %.05.i, i64 -64 ; 3 uses
  %i.ak = getelementptr inbounds i8, ptr %.05.i, i64 -32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !193 ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %.05.i, i64 -16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph.i
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !178
  %i.ap = add i64 %i.ao, 1
  tail call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.aq = load ptr, ptr %i.aj, align 8, !tbaa !193 ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %.05.i, i64 -48 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !178
  %i.au = add i64 %i.at, 1
  tail call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #22
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit.i

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  %.not.i = icmp eq ptr %.pre, %i.aj
  br i1 %.not.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ELb0EE13destroy_rangeEPS8_SA_.exit, label %.lr.ph.i, !llvm.loop !574

_ZN4llvm23SmallVectorTemplateBaseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ELb0EE13destroy_rangeEPS8_SA_.exit: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit.i, %bb.a, %_ZN4llvm23SmallVectorTemplateBaseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ELb0EE18uninitialized_moveIPS8_SB_EEvT_SC_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm23SmallVectorTemplateBaseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ELb0EE18growAndEmplaceBackIJS7_S7_EEERS8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = call noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, i64 noundef 0, i64 noundef 64, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #21 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !209
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %i.f ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !188
  %i.i = load ptr, ptr %1, align 8, !tbaa !193    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !190  ; 2 uses
  %i.n = icmp ult i64 %i.m, 16
  call void @llvm.assume(i1 %i.n)
  %i.o = add nuw nsw i64 %i.m, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.h, ptr noundef nonnull align 8 dereferenceable(1) %i.j, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  store ptr %i.i, ptr %i.g, align 8, !tbaa !193
  %i.p = load i64, ptr %i.j, align 8, !tbaa !178
  store i64 %i.p, ptr %i.h, align 8, !tbaa !178
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !190
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.r, ptr %i.s, align 8, !tbaa !190
  store ptr %i.j, ptr %1, align 8, !tbaa !193
  store i64 0, ptr %i.q, align 8, !tbaa !190
  store i8 0, ptr %i.j, align 8, !tbaa !178
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 3 uses
  store ptr %i.u, ptr %i.t, align 8, !tbaa !188
  %i.v = load ptr, ptr %2, align 8, !tbaa !193    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !190  ; 2 uses
  %i.aa = icmp ult i64 %i.z, 16
  call void @llvm.assume(i1 %i.aa)
  %i.ab = add nuw nsw i64 %i.z, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.u, ptr noundef nonnull align 8 dereferenceable(1) %i.w, i64 %i.ab, i1 false)
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IS5_S5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS9_SA_EEEbE4typeELb1EEEOS9_OSA_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.v, ptr %i.t, align 8, !tbaa !193
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !178
  store i64 %i.ac, ptr %i.u, align 8, !tbaa !178
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IS5_S5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS9_SA_EEEbE4typeELb1EEEOS9_OSA_.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IS5_S5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS9_SA_EEEbE4typeELb1EEEOS9_OSA_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !190
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !190
  store ptr %i.w, ptr %2, align 8, !tbaa !193
  store i64 0, ptr %i.ad, align 8, !tbaa !190
  store i8 0, ptr %i.w, align 8, !tbaa !178
  call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ELb0EE19moveElementsForGrowEPS8_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.c)
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !192
  %i.ah = load ptr, ptr %0, align 8, !tbaa !145   ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.b
  br i1 %i.ai, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ELb0EE21takeAllocationForGrowEPS8_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IS5_S5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS9_SA_EEEbE4typeELb1EEEOS9_OSA_.exit
  call void @free(ptr noundef %i.ah) #21
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ELb0EE21takeAllocationForGrowEPS8_m.exit

_ZN4llvm23SmallVectorTemplateBaseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ELb0EE21takeAllocationForGrowEPS8_m.exit: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IS5_S5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS9_SA_EEEbE4typeELb1EEEOS9_OSA_.exit, %bb.d
  store ptr %i.c, ptr %0, align 8, !tbaa !145
  %i.aj = trunc i64 %i.ag to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !352
  %i.al = load i32, ptr %i.d, align 8, !tbaa !209
  %i.am = add i32 %i.al, 1                        ; 2 uses
  store i32 %i.am, ptr %i.d, align 8, !tbaa !209
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %i.an
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %i.ap
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E24lookupOrInsertIntoBucketIRKS2_JEEESt4pairIPS7_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store ptr null, ptr %i.b, align 8, !tbaa !794
  %i.c = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E15LookupBucketForIS2_EEbRKT_RPS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !794  ; 3 uses
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8, !tbaa !794
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !795
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !606  ; 2 uses
  %i.i = shl i32 %i.f, 2
  %i.j = add i32 %i.i, 4
  %i.k = mul i32 %i.h, 3
  %.not.i = icmp ult i32 %i.j, %i.k
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E22findBucketForInsertionIS2_EEPS7_RKT_SB_.exit, label %bb.c, !prof !376

bb.c:                                             ; preds = %bb.b
  %i.l = shl i32 %i.h, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.l)
  %i.m = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E15LookupBucketForIS2_EEbRKT_RPS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !794
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E22findBucketForInsertionIS2_EEPS7_RKT_SB_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E22findBucketForInsertionIS2_EEPS7_RKT_SB_.exit: ; preds = %bb.b, %bb.c
  %i.n = phi ptr [ %.pre.i, %bb.c ], [ %i.d, %bb.b ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !796
  %i.q = load ptr, ptr %0, align 8, !tbaa !609
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = sdiv exact i64 %i.t, 24                  ; 2 uses
  %i.v = trunc i64 %i.u to i32
  %i.w = and i32 %i.v, 31
  %i.x = shl nuw i32 1, %i.w
  %i.y = lshr i64 %i.u, 5
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.y ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !182
  %i.ab = or i32 %i.x, %i.aa
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !182
  %i.ac = load i32, ptr %i.e, align 8, !tbaa !795
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr %i.e, align 8, !tbaa !795
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !566
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i32 0, ptr %i.ae, align 4, !tbaa !182
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E22findBucketForInsertionIS2_EEPS7_RKT_SB_.exit
  %.sroa.0.0 = phi ptr [ %i.n, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E22findBucketForInsertionIS2_EEPS7_RKT_SB_.exit ], [ %i.d, %bb.a ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E22findBucketForInsertionIS2_EEPS7_RKT_SB_.exit ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E15LookupBucketForIS2_EEbRKT_RPS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !609, !noalias !797 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !796, !noalias !797 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !606, !noalias !797 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 3 uses
  %.sroa.05.0.copyload = load ptr, ptr %1, align 8, !tbaa !520
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.26.0.copyload = load i64, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !192
  %i.h = tail call noundef i32 @_ZN4llvm12DenseMapInfoINS_9StringRefEvE12getHashValueES1_(ptr %.sroa.05.0.copyload, i64 %.sroa.26.0.copyload) #21
  %.02131 = and i32 %i.h, %i.g                    ; 4 uses
  %i.i = zext i32 %.02131 to i64                  ; 2 uses
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.i ; 3 uses
  %i.k = lshr i64 %i.i, 5
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !182
  %i.n = and i32 %.02131, 31
  %i.o = lshr i32 %i.m, %i.n
  %i.p = trunc i32 %i.o to i1
  br i1 %i.p, label %.lr.ph, label %.thread, !prof !773

.lr.ph:                                           ; preds = %bb.b
  %.sroa.01.0.copyload = load ptr, ptr %1, align 8, !tbaa !520
  %.sroa.22.0.copyload = load i64, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !192
  %.sroa.22.0.copyload.fr = freeze i64 %.sroa.22.0.copyload ; 3 uses
  %i.q = icmp eq i64 %.sroa.22.0.copyload.fr, 0
  br i1 %i.q, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25.us
  %i.r = phi ptr [ %i.u, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25.us ], [ %i.j, %.lr.ph ] ; 2 uses
  %.02132.us = phi i32 [ %.021.us, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25.us ], [ %.02131, %.lr.ph ]
  %.sroa.2.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.2.0.copyload.us = load i64, ptr %.sroa.2.0..sroa_idx.us, align 8, !tbaa !192
  %.not.i.i.us = icmp eq i64 %.sroa.2.0.copyload.us, 0 ; 3 uses
  br i1 %.not.i.i.us, label %.thread, label %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25.us, !prof !802

_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25.us: ; preds = %.lr.ph.split.us
  %i.s = add nuw i32 %.02132.us, 1
  %.021.us = and i32 %i.s, %i.g                   ; 3 uses
  %i.t = zext i32 %.021.us to i64                 ; 2 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !182
  %i.y = and i32 %.021.us, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.split.us, label %.thread, !prof !774, !llvm.loop !803

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25
  %i.ab = phi ptr [ %i.af, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25 ], [ %i.j, %.lr.ph ] ; 3 uses
  %.02132 = phi i32 [ %.021, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25 ], [ %.02131, %.lr.ph ]
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !192
  %.not.i.i = icmp eq i64 %.sroa.22.0.copyload.fr, %.sroa.2.0.copyload
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit, label %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25, !prof !802

_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit: ; preds = %.lr.ph.split
  %.sroa.0.0.copyload = load ptr, ptr %i.ab, align 8, !tbaa !520
  %bcmp.i.i = tail call i32 @bcmp(ptr %.sroa.01.0.copyload, ptr %.sroa.0.0.copyload, i64 %.sroa.22.0.copyload.fr)
  %i.ac = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.ac, label %.thread, label %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25, !prof !804

_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25: ; preds = %.lr.ph.split, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit
  %i.ad = add nuw i32 %.02132, 1
  %.021 = and i32 %i.ad, %i.g                     ; 3 uses
  %i.ae = zext i32 %.021 to i64                   ; 2 uses
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.ae ; 2 uses
  %i.ag = lshr i64 %i.ae, 5
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !182
  %i.aj = and i32 %.021, 31
  %i.ak = lshr i32 %i.ai, %i.aj
  %i.al = trunc i32 %i.ak to i1
  br i1 %i.al, label %.lr.ph.split, label %.thread, !prof !774, !llvm.loop !803

.thread:                                          ; preds = %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25, %.lr.ph.split.us, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25.us, %bb.b, %bb.a
  %.us-phi.sink = phi ptr [ %i.u, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25.us ], [ null, %bb.a ], [ %i.j, %bb.b ], [ %i.r, %.lr.ph.split.us ], [ %i.af, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25 ], [ %i.ab, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit ]
  %.2 = phi i1 [ %.not.i.i.us, %.lr.ph.split.us ], [ false, %bb.a ], [ false, %bb.b ], [ %.not.i.i.us, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25.us ], [ false, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25 ], [ true, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit ]
  store ptr %.us-phi.sink, ptr %2, align 8, !tbaa !794
  ret i1 %.2
}

declare noundef i32 @_ZN4llvm12DenseMapInfoINS_9StringRefEvE12getHashValueES1_(ptr, i64) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.704", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !606
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 24                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #21 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !609
  store ptr %i.y, ptr %i.q, align 8, !tbaa !796
  store i32 0, ptr %i.p, align 16, !tbaa !795
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E8moveFromERS8_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !749
  %i.aa = load ptr, ptr %0, align 8, !tbaa !794
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !749
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !749
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !749
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !182 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !182
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !182
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !182
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !182
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = mul nuw nsw i64 %i.ai, 24
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #21
  br label %_ZN4llvm8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEED2Ev.exit

_ZN4llvm8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E8moveFromERS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !609
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !796
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !606  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !796  ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !609
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !606
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i22 = icmp eq i64 %i.n, 0
  br i1 %.not.i22, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit, label %.lr.ph25

.lr.ph25:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !182  ; 2 uses
  %.not11.i20 = icmp eq i32 %i.p, 0
  br i1 %.not11.i20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph25
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E8moveFromERS8_ENKUljE_clEj.exit
  %.0.i21 = phi i32 [ %i.p, %.lr.ph ], [ %i.an, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E8moveFromERS8_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i21, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.t ; 4 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.u, align 8, !tbaa !520
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !192
  %i.v = tail call noundef i32 @_ZN4llvm12DenseMapInfoINS_9StringRefEvE12getHashValueES1_(ptr %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.v, %bb.b ], [ %i.ad, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.w = zext i32 %.0.i7 to i64                   ; 2 uses
  %i.x = lshr i64 %i.w, 5                         ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !182
  %i.aa = and i32 %.0.i7, 31                      ; 2 uses
  %i.ab = lshr i32 %i.z, %i.aa
  %i.ac = trunc i32 %i.ab to i1
  %i.ad = add i32 %.0.i7, 1
  br i1 %i.ac, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E8moveFromERS8_ENKUljE_clEj.exit, !llvm.loop !805

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E8moveFromERS8_ENKUljE_clEj.exit: ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.x ; 2 uses
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.w ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !566
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !182
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !182
  %i.aj = shl nuw i32 1, %i.aa
  %i.ak = load i32, ptr %i.ae, align 4, !tbaa !182
  %i.al = or i32 %i.ak, %i.aj
  store i32 %i.al, ptr %i.ae, align 4, !tbaa !182
  %i.am = add i32 %.0.i21, -1
  %i.an = and i32 %i.am, %.0.i21                  ; 2 uses
  %.not11.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !806

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E8moveFromERS8_ENKUljE_clEj.exit, %.lr.ph25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph25, !llvm.loop !807

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !606
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ao = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !795
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.aq, ptr %i.ar, align 8, !tbaa !795
  %i.as = icmp eq i32 %i.ao, 0
  br i1 %i.as, label %_ZN4llvm8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit
  %i.at = load ptr, ptr %1, align 8, !tbaa !609
  %i.au = zext i32 %i.ao to i64                   ; 2 uses
  %i.av = mul nuw nsw i64 %i.au, 24
  %i.aw = add nuw nsw i64 %i.au, 31
  %i.ax = lshr i64 %i.aw, 3
  %i.ay = and i64 %i.ax, 1073741820
  %i.az = add nuw nsw i64 %i.ay, %i.av
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.at, i64 noundef %i.az, i64 noundef 8) #21
  store i32 0, ptr %i.d, align 4, !tbaa !606
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEE4killEv.exit

_ZN4llvm8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefENS_11SmallVectorIPNS_8MCSymbolELj4EEEELb0EE18growAndEmplaceBackIJRKSt21piecewise_construct_tSt5tupleIJRKS2_EESD_IJEEEEERS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = call noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, i64 noundef 0, i64 noundef 64, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #21 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !209
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %i.f ; 5 uses
  %i.h = load i64, ptr %2, align 8, !tbaa !600
  %i.i = inttoptr i64 %i.h to ptr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !566
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %i.k, ptr %i.j, align 8, !tbaa !145
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i32 0, ptr %i.l, align 8, !tbaa !209
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  store i32 4, ptr %i.m, align 4, !tbaa !352
  %i.n = load ptr, ptr %0, align 8, !tbaa !145    ; 3 uses
  %i.o = load i32, ptr %i.d, align 8, !tbaa !209  ; 2 uses
  %i.p = zext i32 %i.o to i64
  %.idx.i = shl nuw nsw i64 %i.p, 6
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx.i
  %.not7.i.i.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not7.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefENS_11SmallVectorIPNS_8MCSymbolELj4EEEELb0EE19moveElementsForGrowEPS7_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %_ZSt10_ConstructISt4pairIN4llvm9StringRefENS1_11SmallVectorIPNS1_8MCSymbolELj4EEEEJS7_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.aa, %_ZSt10_ConstructISt4pairIN4llvm9StringRefENS1_11SmallVectorIPNS1_8MCSymbolELj4EEEEJS7_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.c, %bb.a ] ; 6 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.z, %_ZSt10_ConstructISt4pairIN4llvm9StringRefENS1_11SmallVectorIPNS1_8MCSymbolELj4EEEEJS7_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.n, %bb.a ] ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.04.08.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !566
  %i.r = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 32
  store ptr %i.s, ptr %i.r, align 8, !tbaa !145
  %i.t = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 24
  store i32 0, ptr %i.t, align 8, !tbaa !209
  %i.u = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 28
  store i32 4, ptr %i.u, align 4, !tbaa !352
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 24
  %i.w = load i32, ptr %i.v, align 8, !tbaa !209
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt4pairIN4llvm9StringRefENS1_11SmallVectorIPNS1_8MCSymbolELj4EEEEJS7_EEvPT_DpOT0_.exit.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 16
  %i.y = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIPNS_8MCSymbolEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef nonnull align 8 dereferenceable(48) %i.x) ; 0 uses
  br label %_ZSt10_ConstructISt4pairIN4llvm9StringRefENS1_11SmallVectorIPNS1_8MCSymbolELj4EEEEJS7_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructISt4pairIN4llvm9StringRefENS1_11SmallVectorIPNS1_8MCSymbolELj4EEEEJS7_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 64 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 64
  %.not.i.i.i.i.i.i = icmp eq ptr %i.z, %i.q
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefENS_11SmallVectorIPNS_8MCSymbolELj4EEEELb0EE18uninitialized_moveIPS7_SA_EEvT_SB_T0_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !808

_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefENS_11SmallVectorIPNS_8MCSymbolELj4EEEELb0EE18uninitialized_moveIPS7_SA_EEvT_SB_T0_.exit.i: ; preds = %_ZSt10_ConstructISt4pairIN4llvm9StringRefENS1_11SmallVectorIPNS1_8MCSymbolELj4EEEEJS7_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !145 ; 3 uses
  %.pre3.i = load i32, ptr %i.d, align 8, !tbaa !209 ; 2 uses
  %.not4.i.i = icmp eq i32 %.pre3.i, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefENS_11SmallVectorIPNS_8MCSymbolELj4EEEELb0EE19moveElementsForGrowEPS7_.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefENS_11SmallVectorIPNS_8MCSymbolELj4EEEELb0EE18uninitialized_moveIPS7_SA_EEvT_SB_T0_.exit.i
  %i.ab = zext i32 %.pre3.i to i64
  %.idx2.i = shl nuw nsw i64 %i.ab, 6
  %i.ac = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %.idx2.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt4pairIN4llvm9StringRefENS0_11SmallVectorIPNS0_8MCSymbolELj4EEEED2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.ad, %_ZNSt4pairIN4llvm9StringRefENS0_11SmallVectorIPNS0_8MCSymbolELj4EEEED2Ev.exit.i.i ], [ %i.ac, %.lr.ph.i.preheader.i ] ; 3 uses
  %i.ad = getelementptr inbounds i8, ptr %.05.i.i, i64 -64 ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %.05.i.i, i64 -48
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !145 ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %.05.i.i, i64 -32
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt4pairIN4llvm9StringRefENS0_11SmallVectorIPNS0_8MCSymbolELj4EEEED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  call void @free(ptr noundef %i.af) #21
  br label %_ZNSt4pairIN4llvm9StringRefENS0_11SmallVectorIPNS0_8MCSymbolELj4EEEED2Ev.exit.i.i

_ZNSt4pairIN4llvm9StringRefENS0_11SmallVectorIPNS0_8MCSymbolELj4EEEED2Ev.exit.i.i: ; preds = %bb.c, %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %.pre.i, %i.ad
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefENS_11SmallVectorIPNS_8MCSymbolELj4EEEELb0EE19moveElementsForGrowEPS7_.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !605

_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefENS_11SmallVectorIPNS_8MCSymbolELj4EEEELb0EE19moveElementsForGrowEPS7_.exit.loopexit: ; preds = %_ZNSt4pairIN4llvm9StringRefENS0_11SmallVectorIPNS0_8MCSymbolELj4EEEED2Ev.exit.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !145
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefENS_11SmallVectorIPNS_8MCSymbolELj4EEEELb0EE19moveElementsForGrowEPS7_.exit

_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefENS_11SmallVectorIPNS_8MCSymbolELj4EEEELb0EE19moveElementsForGrowEPS7_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefENS_11SmallVectorIPNS_8MCSymbolELj4EEEELb0EE19moveElementsForGrowEPS7_.exit.loopexit, %bb.a, %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefENS_11SmallVectorIPNS_8MCSymbolELj4EEEELb0EE18uninitialized_moveIPS7_SA_EEvT_SB_T0_.exit.i
  %i.ai = phi ptr [ %.pre, %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefENS_11SmallVectorIPNS_8MCSymbolELj4EEEELb0EE19moveElementsForGrowEPS7_.exit.loopexit ], [ %i.n, %bb.a ], [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefENS_11SmallVectorIPNS_8MCSymbolELj4EEEELb0EE18uninitialized_moveIPS7_SA_EEvT_SB_T0_.exit.i ] ; 2 uses
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !192
  %i.ak = icmp eq ptr %i.ai, %i.b
  br i1 %i.ak, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefENS_11SmallVectorIPNS_8MCSymbolELj4EEEELb0EE21takeAllocationForGrowEPS7_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefENS_11SmallVectorIPNS_8MCSymbolELj4EEEELb0EE19moveElementsForGrowEPS7_.exit
  call void @free(ptr noundef %i.ai) #21
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefENS_11SmallVectorIPNS_8MCSymbolELj4EEEELb0EE21takeAllocationForGrowEPS7_m.exit

_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefENS_11SmallVectorIPNS_8MCSymbolELj4EEEELb0EE21takeAllocationForGrowEPS7_m.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefENS_11SmallVectorIPNS_8MCSymbolELj4EEEELb0EE19moveElementsForGrowEPS7_.exit, %bb.d
  store ptr %i.c, ptr %0, align 8, !tbaa !145
  %i.al = trunc i64 %i.aj to i32
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.al, ptr %i.am, align 4, !tbaa !352
  %i.an = load i32, ptr %i.d, align 8, !tbaa !209
  %i.ao = add i32 %i.an, 1                        ; 2 uses
  store i32 %i.ao, ptr %i.d, align 8, !tbaa !209
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %i.ap
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %i.ar
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIPNS_8MCSymbolEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !145    ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !145    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN4llvm15SmallVectorImplIPNS_8MCSymbolEE12assignRemoteEOS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef %i.e) #21
  %.pre = load ptr, ptr %1, align 8, !tbaa !145
  br label %_ZN4llvm15SmallVectorImplIPNS_8MCSymbolEE12assignRemoteEOS3_.exit

_ZN4llvm15SmallVectorImplIPNS_8MCSymbolEE12assignRemoteEOS3_.exit: ; preds = %bb.c, %bb.d
  %i.h = phi ptr [ %i.b, %bb.c ], [ %.pre, %bb.d ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %0, align 8, !tbaa !145
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load <2 x i32>, ptr %i.j, align 8, !tbaa !182
  store <2 x i32> %i.l, ptr %i.i, align 8, !tbaa !182
  store ptr %i.c, ptr %1, align 8, !tbaa !145
  store i32 0, ptr %i.k, align 4, !tbaa !352
  store i32 0, ptr %i.j, align 8, !tbaa !209
  br label %bb.p

bb.e:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !209  ; 6 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !209  ; 4 uses
end_hunk_1
