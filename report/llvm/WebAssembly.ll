Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/WebAssembly?download=true
begin_hunk_0_@_ZNK5clang6driver10toolchains11WebAssembly21addClangTargetOptionsERKN4llvm3opt7ArgListERNS3_11SmallVectorIPKcLj16EEENS_9BoundArchENS0_6Action11OffloadKindE:bb.a
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.024.0.i, i64 8 ; 2 uses
  %.not.i.i.i111 = icmp eq ptr %i.jv, %i.js
  br i1 %.not.i.i.i111, label %._crit_edge313, label %.lr.ph.i.i.i, !llvm.loop !177

_ZNK4llvm3opt7ArgList8filteredIJN5clang7options2IDEEEENS_14iterator_rangeINS0_12arg_iteratorIPKPNS0_3ArgEXsZT_EEEEEDpT_.exit: ; preds = %bb.au, %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit110
  %.sroa.024.1.i = phi ptr [ %i.jr, %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit110 ], [ %.sroa.024.0.i, %bb.au ] ; 2 uses
  %.not301310 = icmp eq ptr %.sroa.024.1.i, %i.js
  br i1 %.not301310, label %._crit_edge313, label %.lr.ph312

.lr.ph312:                                        ; preds = %_ZNK4llvm3opt7ArgList8filteredIJN5clang7options2IDEEEENS_14iterator_rangeINS0_12arg_iteratorIPKPNS0_3ArgEXsZT_EEEEEDpT_.exit
  %i.jw = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 5 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.jy = getelementptr inbounds nuw i8, ptr %16, i64 8
  %.sroa.8.16..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.jz = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %18, i64 12
  %i.kc = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %20, i64 32
  %i.kf = getelementptr inbounds nuw i8, ptr %20, i64 33
  %i.kg = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.kh = getelementptr inbounds nuw i8, ptr %20, i64 24
  %i.ki = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.kj = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.kk = getelementptr inbounds nuw i8, ptr %19, i64 33
  %i.kl = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.av

._crit_edge313:                                   ; preds = %.thread25.i.i.i, %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj1EEppEv.exit160, %_ZNK4llvm3opt7ArgList8filteredIJN5clang7options2IDEEEENS_14iterator_rangeINS0_12arg_iteratorIPKPNS0_3ArgEXsZT_EEEEEDpT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  ret void

bb.av:                                            ; preds = %.lr.ph312, %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj1EEppEv.exit160
  %.sroa.0209.0311 = phi ptr [ %.sroa.024.1.i, %.lr.ph312 ], [ %.sroa.0209.2, %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj1EEppEv.exit160 ] ; 2 uses
  %i.ko = load ptr, ptr %.sroa.0209.0311, align 8, !tbaa !176
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 48
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !28
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !30 ; 4 uses
  %.not.i112 = icmp eq ptr %i.kr, null
  br i1 %.not.i112, label %_ZNK4llvm9StringRef11starts_withES0_.exit166.thread298.2, label %_ZN4llvm9StringRefC2EPKc.exit

_ZN4llvm9StringRefC2EPKc.exit:                    ; preds = %bb.av
  %i.ks = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.kr) #17 ; 3 uses
  store ptr %i.kr, ptr %15, align 8, !tbaa !246
  store i64 %i.ks, ptr %i.jw, align 8, !tbaa !357
  %.not.i114 = icmp ult i64 %i.ks, 34
  br i1 %.not.i114, label %_ZN4llvm9StringRefC2EPKc.exit163, label %_ZNK4llvm9StringRef11starts_withES0_.exit

_ZNK4llvm9StringRef11starts_withES0_.exit:        ; preds = %_ZN4llvm9StringRefC2EPKc.exit
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(34) %i.kr, ptr noundef nonnull dereferenceable(34) @.str.49, i64 34)
  %i.kt = icmp eq i32 %bcmp.i, 0
  br i1 %i.kt, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit166

_ZNK4llvm9StringRef11starts_withES0_.exit.thread: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17, !noalias !358
  store i32 2646, ptr %6, align 4, !noalias !358
  %i.ku = call i64 @_ZNK4llvm3opt7ArgList8getRangeESt16initializer_listINS0_12OptSpecifierEE(ptr noundef nonnull align 8 dereferenceable(176) %1, ptr nonnull %6, i64 1) #17, !noalias !358 ; 2 uses
  %.sroa.4.0.extract.shift.i115 = lshr i64 %i.ku, 32 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17, !noalias !358
  %i.kv = load ptr, ptr %i.jo, align 8, !tbaa !28, !noalias !358 ; 2 uses
  %i.kw = and i64 %i.ku, 4294967295               ; 2 uses
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.kv, i64 %i.kw ; 2 uses
  %i.ky = getelementptr [8 x i8], ptr %i.kv, i64 %.sroa.4.0.extract.shift.i115 ; 5 uses
  %.not29.i.i.i116 = icmp samesign eq i64 %i.kw, %.sroa.4.0.extract.shift.i115
  br i1 %.not29.i.i.i116, label %_ZNK4llvm3opt7ArgList8filteredIJN5clang7options2IDEEEENS_14iterator_rangeINS0_12arg_iteratorIPKPNS0_3ArgEXsZT_EEEEEDpT_.exit128, label %.lr.ph.i.i.i118

.lr.ph.i.i.i118:                                  ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.thread, %.thread25.i.i.i121
  %.sroa.024.0.i119 = phi ptr [ %i.lb, %.thread25.i.i.i121 ], [ %i.kx, %_ZNK4llvm9StringRef11starts_withES0_.exit.thread ] ; 3 uses
  %i.kz = load ptr, ptr %.sroa.024.0.i119, align 8, !tbaa !176, !noalias !358 ; 2 uses
  %.not14.i.i.i120 = icmp eq ptr %i.kz, null
  br i1 %.not14.i.i.i120, label %.thread25.i.i.i121, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph.i.i.i118
  %i.la = call noundef zeroext i1 @_ZNK4llvm3opt6Option7matchesENS0_12OptSpecifierE(ptr noundef nonnull align 8 dereferenceable(16) %i.kz, i32 2646) #17, !noalias !358
  br i1 %i.la, label %_ZNK4llvm3opt7ArgList8filteredIJN5clang7options2IDEEEENS_14iterator_rangeINS0_12arg_iteratorIPKPNS0_3ArgEXsZT_EEEEEDpT_.exit128, label %.thread25.i.i.i121

.thread25.i.i.i121:                               ; preds = %bb.aw, %.lr.ph.i.i.i118
  %i.lb = getelementptr inbounds nuw i8, ptr %.sroa.024.0.i119, i64 8 ; 2 uses
  %.not.i.i.i122 = icmp eq ptr %i.lb, %i.ky
  br i1 %.not.i.i.i122, label %._crit_edge, label %.lr.ph.i.i.i118, !llvm.loop !177

_ZNK4llvm3opt7ArgList8filteredIJN5clang7options2IDEEEENS_14iterator_rangeINS0_12arg_iteratorIPKPNS0_3ArgEXsZT_EEEEEDpT_.exit128: ; preds = %bb.aw, %_ZNK4llvm9StringRef11starts_withES0_.exit.thread
  %.sroa.024.1.i123 = phi ptr [ %i.kx, %_ZNK4llvm9StringRef11starts_withES0_.exit.thread ], [ %.sroa.024.0.i119, %bb.aw ] ; 2 uses
  %.not302303 = icmp eq ptr %.sroa.024.1.i123, %i.ky
  br i1 %.not302303, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4llvm3opt7ArgList8filteredIJN5clang7options2IDEEEENS_14iterator_rangeINS0_12arg_iteratorIPKPNS0_3ArgEXsZT_EEEEEDpT_.exit128, %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj1EEppEv.exit
  %.sroa.0181.0304 = phi ptr [ %.sroa.0181.2, %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj1EEppEv.exit ], [ %.sroa.024.1.i123, %_ZNK4llvm3opt7ArgList8filteredIJN5clang7options2IDEEEENS_14iterator_rangeINS0_12arg_iteratorIPKPNS0_3ArgEXsZT_EEEEEDpT_.exit128 ] ; 2 uses
  %i.lc = load ptr, ptr %.sroa.0181.0304, align 8, !tbaa !176
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 48
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !28
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !30 ; 3 uses
  %.not.i131 = icmp eq ptr %i.lf, null
  br i1 %.not.i131, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread287, label %_ZN4llvm9StringRefC2EPKc.exit133

_ZN4llvm9StringRefC2EPKc.exit133:                 ; preds = %.lr.ph
  %i.lg = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.lf) #17
  %.not.i135 = icmp eq i64 %i.lg, 33
  br i1 %.not.i135, label %_ZN4llvmeqENS_9StringRefES0_.exit, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread287

_ZN4llvmeqENS_9StringRefES0_.exit:                ; preds = %_ZN4llvm9StringRefC2EPKc.exit133
  %bcmp.i136 = call i32 @bcmp(ptr noundef nonnull dereferenceable(33) %i.lf, ptr noundef nonnull dereferenceable(33) @.str.50, i64 33)
  %i.lh = icmp eq i32 %bcmp.i136, 0
  br i1 %i.lh, label %.thread291, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread287

_ZN4llvmeqENS_9StringRefES0_.exit.thread287:      ; preds = %.lr.ph, %_ZN4llvm9StringRefC2EPKc.exit133, %_ZN4llvmeqENS_9StringRefES0_.exit
  %i.li = getelementptr inbounds nuw i8, ptr %.sroa.0181.0304, i64 8 ; 3 uses
  %.not29.i.i = icmp eq ptr %i.li, %i.ky
  br i1 %.not29.i.i, label %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj1EEppEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread287, %.thread25.i.i
  %.sroa.0181.1 = phi ptr [ %i.ll, %.thread25.i.i ], [ %i.li, %_ZN4llvmeqENS_9StringRefES0_.exit.thread287 ] ; 3 uses
  %i.lj = load ptr, ptr %.sroa.0181.1, align 8, !tbaa !176 ; 2 uses
  %.not14.i.i = icmp eq ptr %i.lj, null
  br i1 %.not14.i.i, label %.thread25.i.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %.lr.ph.i.i
  %i.lk = call noundef zeroext i1 @_ZNK4llvm3opt6Option7matchesENS0_12OptSpecifierE(ptr noundef nonnull align 8 dereferenceable(16) %i.lj, i32 2646) #17
  br i1 %i.lk, label %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj1EEppEv.exit, label %.thread25.i.i

.thread25.i.i:                                    ; preds = %.preheader.preheader.i.i, %.lr.ph.i.i
  %i.ll = getelementptr inbounds nuw i8, ptr %.sroa.0181.1, i64 8 ; 3 uses
  %.not.i.i137 = icmp eq ptr %i.ll, %i.ky
  br i1 %.not.i.i137, label %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj1EEppEv.exit, label %.lr.ph.i.i, !llvm.loop !177

_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj1EEppEv.exit: ; preds = %.preheader.preheader.i.i, %.thread25.i.i, %_ZN4llvmeqENS_9StringRefES0_.exit.thread287
  %.sroa.0181.2 = phi ptr [ %i.li, %_ZN4llvmeqENS_9StringRefES0_.exit.thread287 ], [ %.sroa.0181.1, %.preheader.preheader.i.i ], [ %i.ll, %.thread25.i.i ] ; 2 uses
  %.not302 = icmp eq ptr %.sroa.0181.2, %i.ky
  br i1 %.not302, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.thread25.i.i.i121, %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj1EEppEv.exit, %_ZNK4llvm3opt7ArgList8filteredIJN5clang7options2IDEEEENS_14iterator_rangeINS0_12arg_iteratorIPKPNS0_3ArgEXsZT_EEEEEDpT_.exit128
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  %i.lm = load ptr, ptr %i.jx, align 8, !tbaa !38, !nonnull !26, !align !27
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !121, !noalias !361, !nonnull !26, !align !27
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %16, ptr noundef nonnull align 8 dereferenceable(15256) %i.ln, i32 0, i32 noundef 327) #17
  %i.lo = load ptr, ptr %16, align 8, !tbaa !204  ; 2 uses
  %.not.i.i.i138 = icmp eq ptr %i.lo, null
  br i1 %.not.i.i.i138, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i139, label %_ZNK5clang17DiagnosticBuilderlsIA41_cEERKS0_RKT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i139: ; preds = %._crit_edge
  %i.lp = load ptr, ptr %i.jy, align 8, !tbaa !205
  %i.lq = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.lp) ; 2 uses
  store ptr %i.lq, ptr %16, align 8, !tbaa !204
  br label %_ZNK5clang17DiagnosticBuilderlsIA41_cEERKS0_RKT_.exit

_ZNK5clang17DiagnosticBuilderlsIA41_cEERKS0_RKT_.exit: ; preds = %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i139, %._crit_edge
  %i.lr = phi ptr [ %i.lq, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i139 ], [ %i.lo, %._crit_edge ] ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 1
  %i.lt = load i8, ptr %i.lr, align 8, !tbaa !312
  %i.lu = zext i8 %i.lt to i64
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ls, i64 %i.lu
  store i8 1, ptr %i.lv, align 1, !tbaa !15
  %i.lw = load ptr, ptr %16, align 8, !tbaa !204  ; 4 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  %i.ly = load i8, ptr %i.lw, align 8, !tbaa !312 ; 2 uses
  %i.lz = add i8 %i.ly, 1                         ; 2 uses
  store i8 %i.lz, ptr %i.lw, align 8, !tbaa !312
  %i.ma = zext i8 %i.ly to i64
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.lx, i64 %i.ma
  store i64 ptrtoint (ptr @.str.51 to i64), ptr %i.mb, align 8, !tbaa !33
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lw, i64 1
  %i.md = zext i8 %i.lz to i64
  %i.me = getelementptr inbounds nuw i8, ptr %i.mc, i64 %i.md
  store i8 1, ptr %i.me, align 1, !tbaa !15
  %i.mf = load ptr, ptr %16, align 8, !tbaa !204  ; 3 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 16
  %i.mh = load i8, ptr %i.mf, align 8, !tbaa !312 ; 2 uses
  %i.mi = add i8 %i.mh, 1
  store i8 %i.mi, ptr %i.mf, align 8, !tbaa !312
  %i.mj = zext i8 %i.mh to i64
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.mg, i64 %i.mj
  store i64 ptrtoint (ptr @.str.52 to i64), ptr %i.mk, align 8, !tbaa !33
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %16) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  br label %.thread291

.thread291:                                       ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit, %_ZNK5clang17DiagnosticBuilderlsIA41_cEERKS0_RKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 61, ptr %i.a, align 1, !tbaa !15, !noalias !364
  %i.ml = call noundef i64 @_ZNK4llvm9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr nonnull %i.a, i64 1, i64 noundef 0) #17, !noalias !367 ; 2 uses
  %i.mm = icmp eq i64 %i.ml, -1
  br i1 %i.mm, label %_ZNK4llvm9StringRef5splitEc.exit, label %bb.ax

bb.ax:                                            ; preds = %.thread291
  %i.mn = load i64, ptr %i.jw, align 8, !tbaa !357, !noalias !367 ; 2 uses
  %i.mo = load ptr, ptr %15, align 8, !tbaa !246, !noalias !367
  %i.mp = add nuw i64 %i.ml, 1
  %.sroa.speculated4.i.i.i = call i64 @llvm.umin.i64(i64 %i.mn, i64 %i.mp) ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mo, i64 %.sroa.speculated4.i.i.i
  %i.mr = sub i64 %i.mn, %.sroa.speculated4.i.i.i
  br label %_ZNK4llvm9StringRef5splitEc.exit

_ZNK4llvm9StringRef5splitEc.exit:                 ; preds = %.thread291, %bb.ax
  %.sroa.8.0 = phi i64 [ %i.mr, %bb.ax ], [ 0, %.thread291 ]
  %.sroa.5177.0 = phi ptr [ %i.mq, %bb.ax ], [ null, %.thread291 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %.sroa.5177.0, ptr %17, align 8, !tbaa !30
  store i64 %.sroa.8.0, ptr %.sroa.8.16..sroa_idx, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #17
  store ptr %i.jz, ptr %18, align 8, !tbaa !28
  store i32 0, ptr %i.ka, align 8, !tbaa !210
  store i32 4, ptr %i.kb, align 4, !tbaa !209
  call void @_ZNK4llvm9StringRef5splitERNS_15SmallVectorImplIS0_EEcib(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(16) %18, i8 noundef signext 44, i32 noundef -1, i1 noundef zeroext true) #17
  %i.ms = load ptr, ptr %18, align 8, !tbaa !28   ; 3 uses
  %i.mt = load i32, ptr %i.ka, align 8, !tbaa !210 ; 2 uses
  %i.mu = zext i32 %i.mt to i64
  %.idx = shl nuw nsw i64 %i.mu, 4
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ms, i64 %.idx
  %.not58305 = icmp eq i32 %i.mt, 0
  br i1 %.not58305, label %._crit_edge308, label %.lr.ph307

._crit_edge308.loopexit:                          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit146
  %.pre324 = load ptr, ptr %18, align 8, !tbaa !28
  br label %._crit_edge308

._crit_edge308:                                   ; preds = %._crit_edge308.loopexit, %_ZNK4llvm9StringRef5splitEc.exit
  %i.mw = phi ptr [ %.pre324, %._crit_edge308.loopexit ], [ %i.ms, %_ZNK4llvm9StringRef5splitEc.exit ] ; 2 uses
  %i.mx = icmp eq ptr %i.mw, %i.jz
  br i1 %i.mx, label %_ZN4llvm11SmallVectorINS_9StringRefELj4EED2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %._crit_edge308
  call void @free(ptr noundef %i.mw) #17
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj4EED2Ev.exit

_ZN4llvm11SmallVectorINS_9StringRefELj4EED2Ev.exit: ; preds = %._crit_edge308, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  %.pr376 = load i64, ptr %i.jw, align 8, !tbaa !357
  br label %_ZN4llvm9StringRefC2EPKc.exit163

.lr.ph307:                                        ; preds = %_ZNK4llvm9StringRef5splitEc.exit, %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit146
  %.057306 = phi ptr [ %i.nu, %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit146 ], [ %i.ms, %_ZNK4llvm9StringRef5splitEc.exit ] ; 3 uses
  %.sroa.08.0.copyload = load ptr, ptr %.057306, align 8, !tbaa !30
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.057306, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !33
  %i.my = load i32, ptr %i.kc, align 8, !tbaa !210 ; 2 uses
  %i.mz = load i32, ptr %i.kd, align 4, !tbaa !209
  %.not.i142 = icmp ult i32 %i.my, %i.mz
  br i1 %.not.i142, label %bb.ba, label %bb.az, !prof !211

bb.az:                                            ; preds = %.lr.ph307
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.47)
  br label %_ZNK4llvm5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit.i

bb.ba:                                            ; preds = %.lr.ph307
  %i.na = zext i32 %i.my to i64
  %i.nb = load ptr, ptr %2, align 8, !tbaa !28
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.nb, i64 %i.na
  store ptr @.str.47, ptr %i.nc, align 1
  %i.nd = load i32, ptr %i.kc, align 8, !tbaa !210
  %i.ne = add i32 %i.nd, 1
  store i32 %i.ne, ptr %i.kc, align 8, !tbaa !210
  br label %_ZNK4llvm5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit.i

_ZNK4llvm5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit.i: ; preds = %bb.ba, %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #17
  store i8 3, ptr %i.ke, align 8, !tbaa !8, !alias.scope !370
  store i8 5, ptr %i.kf, align 1, !tbaa !14, !alias.scope !370
  store ptr @.str.53, ptr %20, align 8, !tbaa !15, !alias.scope !370
  store ptr %.sroa.08.0.copyload, ptr %i.kg, align 8, !tbaa !15, !alias.scope !370
  store i64 %.sroa.4.0.copyload, ptr %i.kh, align 8, !tbaa !15, !alias.scope !370
  store ptr %20, ptr %19, align 8, !alias.scope !373
  store ptr @.str.54, ptr %i.ki, align 8, !alias.scope !373
  store i8 2, ptr %i.kj, align 8, !tbaa !8, !alias.scope !373
  store i8 3, ptr %i.kk, align 1, !tbaa !14, !alias.scope !373
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  store ptr %i.kl, ptr %5, align 8, !tbaa !268
  store i64 0, ptr %i.km, align 8, !tbaa !269
  store i64 256, ptr %i.kn, align 8, !tbaa !270
  call void @_ZNK4llvm5Twine8toVectorERNS_15SmallVectorImplIcEE(ptr noundef nonnull align 8 dereferenceable(34) %19, ptr noundef nonnull align 8 dereferenceable(24) %5) #17
  %i.nf = load i64, ptr %i.km, align 8, !tbaa !269
  %i.ng = load ptr, ptr %5, align 8, !tbaa !268
  %i.nh = load ptr, ptr %1, align 8, !tbaa !171
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 16
  %i.nj = load ptr, ptr %i.ni, align 8
  %i.nk = call noundef ptr %i.nj(ptr noundef nonnull align 8 dereferenceable(176) %1, ptr %i.ng, i64 %i.nf) #17, !inline_history !378 ; 2 uses
  %i.nl = load ptr, ptr %5, align 8, !tbaa !268   ; 2 uses
  %i.nm = icmp eq ptr %i.nl, %i.kl
  br i1 %i.nm, label %_ZNK4llvm3opt7ArgList13MakeArgStringERKNS_5TwineE.exit, label %bb.bb

bb.bb:                                            ; preds = %_ZNK4llvm5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit.i
  call void @free(ptr noundef %i.nl) #17
  br label %_ZNK4llvm3opt7ArgList13MakeArgStringERKNS_5TwineE.exit

_ZNK4llvm3opt7ArgList13MakeArgStringERKNS_5TwineE.exit: ; preds = %_ZNK4llvm5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit.i, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.nn = load i32, ptr %i.kc, align 8, !tbaa !210 ; 2 uses
  %i.no = load i32, ptr %i.kd, align 4, !tbaa !209
  %.not.i145 = icmp ult i32 %i.nn, %i.no
  br i1 %.not.i145, label %bb.bd, label %bb.bc, !prof !211

bb.bc:                                            ; preds = %_ZNK4llvm3opt7ArgList13MakeArgStringERKNS_5TwineE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.nk)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit146

bb.bd:                                            ; preds = %_ZNK4llvm3opt7ArgList13MakeArgStringERKNS_5TwineE.exit
  %i.np = zext i32 %i.nn to i64
  %i.nq = load ptr, ptr %2, align 8, !tbaa !28
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %i.nq, i64 %i.np
  store ptr %i.nk, ptr %i.nr, align 1
  %i.ns = load i32, ptr %i.kc, align 8, !tbaa !210
  %i.nt = add i32 %i.ns, 1
  store i32 %i.nt, ptr %i.kc, align 8, !tbaa !210
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit146

_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit146: ; preds = %bb.bc, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17
  %i.nu = getelementptr inbounds nuw i8, ptr %.057306, i64 16 ; 2 uses
  %.not58 = icmp eq ptr %i.nu, %i.mv
  br i1 %.not58, label %._crit_edge308.loopexit, label %.lr.ph307

.lr.ph.i.i150:                                    ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit166.thread298.2, %.thread25.i.i157
  %.sroa.0209.1 = phi ptr [ %i.nx, %.thread25.i.i157 ], [ %i.pe, %_ZNK4llvm9StringRef11starts_withES0_.exit166.thread298.2 ] ; 3 uses
  %i.nv = load ptr, ptr %.sroa.0209.1, align 8, !tbaa !176 ; 2 uses
  %.not14.i.i152 = icmp eq ptr %i.nv, null
  br i1 %.not14.i.i152, label %.thread25.i.i157, label %.preheader.preheader.i.i153

.preheader.preheader.i.i153:                      ; preds = %.lr.ph.i.i150
  %i.nw = call noundef zeroext i1 @_ZNK4llvm3opt6Option7matchesENS0_12OptSpecifierE(ptr noundef nonnull align 8 dereferenceable(16) %i.nv, i32 2646) #17
  br i1 %i.nw, label %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj1EEppEv.exit160, label %.thread25.i.i157

.thread25.i.i157:                                 ; preds = %.preheader.preheader.i.i153, %.lr.ph.i.i150
  %i.nx = getelementptr inbounds nuw i8, ptr %.sroa.0209.1, i64 8 ; 3 uses
  %.not.i.i159 = icmp eq ptr %i.nx, %i.js
  br i1 %.not.i.i159, label %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj1EEppEv.exit160, label %.lr.ph.i.i150, !llvm.loop !177

_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj1EEppEv.exit160: ; preds = %.preheader.preheader.i.i153, %.thread25.i.i157, %_ZNK4llvm9StringRef11starts_withES0_.exit166.thread298.2
  %.sroa.0209.2 = phi ptr [ %i.pe, %_ZNK4llvm9StringRef11starts_withES0_.exit166.thread298.2 ], [ %.sroa.0209.1, %.preheader.preheader.i.i153 ], [ %i.nx, %.thread25.i.i157 ] ; 2 uses
  %.not301 = icmp eq ptr %.sroa.0209.2, %i.js
  br i1 %.not301, label %._crit_edge313, label %bb.av

_ZN4llvm9StringRefC2EPKc.exit163:                 ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj4EED2Ev.exit, %_ZN4llvm9StringRefC2EPKc.exit
  %i.ny = phi i64 [ %i.ks, %_ZN4llvm9StringRefC2EPKc.exit ], [ %.pr376, %_ZN4llvm11SmallVectorINS_9StringRefELj4EED2Ev.exit ]
  %.not.i164 = icmp ult i64 %i.ny, 15
  br i1 %.not.i164, label %_ZN4llvm9StringRefC2EPKc.exit163.1, label %_ZNK4llvm9StringRef11starts_withES0_.exit166

_ZNK4llvm9StringRef11starts_withES0_.exit166:     ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit, %_ZN4llvm9StringRefC2EPKc.exit163
  %i.nz = load ptr, ptr %15, align 8, !tbaa !246  ; 2 uses
  %i.oa = load i64, ptr %i.nz, align 1
  %i.ob = xor i64 %i.oa, 7954814264930301741
  %i.oc = getelementptr i8, ptr %i.nz, i64 7
  %i.od = load i64, ptr %i.oc, align 1
  %i.oe = xor i64 %i.od, 7522468666225615214
  %i.of = or i64 %i.ob, %i.oe
  %i.og = icmp ne i64 %i.of, 0
  %i.oh = zext i1 %i.og to i32
  %i.oi = icmp eq i32 %i.oh, 0
  br i1 %i.oi, label %_ZN4llvm9StringRefC2EPKc.exit169, label %_ZN4llvm9StringRefC2EPKc.exit163.1

_ZN4llvm9StringRefC2EPKc.exit169:                 ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit166
  call fastcc void @"_ZZNK5clang6driver10toolchains11WebAssembly21addClangTargetOptionsERKN4llvm3opt7ArgListERNS3_11SmallVectorIPKcLj16EEENS_9BoundArchENS0_6Action11OffloadKindEENK3$_0clENS3_9StringRefE"(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr nonnull @.str.48, i64 15)
  call fastcc void @"_ZZNK5clang6driver10toolchains11WebAssembly21addClangTargetOptionsERKN4llvm3opt7ArgListERNS3_11SmallVectorIPKcLj16EEENS_9BoundArchENS0_6Action11OffloadKindEENK3$_1clEv"(ptr nonnull %i.c, ptr nonnull %2)
  br label %_ZN4llvm9StringRefC2EPKc.exit163.1

_ZN4llvm9StringRefC2EPKc.exit163.1:               ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit166, %_ZN4llvm9StringRefC2EPKc.exit169, %_ZN4llvm9StringRefC2EPKc.exit163
  %.pr380 = load i64, ptr %i.jw, align 8, !tbaa !357
  %.not.i164.1 = icmp ult i64 %.pr380, 17
  br i1 %.not.i164.1, label %_ZNK4llvm9StringRef11starts_withES0_.exit166.thread298.2, label %_ZNK4llvm9StringRef11starts_withES0_.exit166.1

_ZNK4llvm9StringRef11starts_withES0_.exit166.1:   ; preds = %_ZN4llvm9StringRefC2EPKc.exit163.1
  %i.oj = load ptr, ptr %15, align 8, !tbaa !246  ; 2 uses
  %i.ok = load i128, ptr %i.oj, align 1
  %i.ol = xor i128 %i.ok, 144109343085536353655907883296609105709
  %i.om = getelementptr i8, ptr %i.oj, i64 16
  %i.on = load i8, ptr %i.om, align 1
  %i.oo = zext i8 %i.on to i128
  %i.op = xor i128 %i.oo, 106
  %i.oq = or i128 %i.ol, %i.op
  %i.or = icmp ne i128 %i.oq, 0
  %i.os = zext i1 %i.or to i32
  %i.ot = icmp eq i32 %i.os, 0
  br i1 %i.ot, label %_ZN4llvm9StringRefC2EPKc.exit169.1, label %_ZN4llvm9StringRefC2EPKc.exit163.2

_ZN4llvm9StringRefC2EPKc.exit169.1:               ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit166.1
  call fastcc void @"_ZZNK5clang6driver10toolchains11WebAssembly21addClangTargetOptionsERKN4llvm3opt7ArgListERNS3_11SmallVectorIPKcLj16EEENS_9BoundArchENS0_6Action11OffloadKindEENK3$_0clENS3_9StringRefE"(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr nonnull @.str.55, i64 17)
  call fastcc void @"_ZZNK5clang6driver10toolchains11WebAssembly21addClangTargetOptionsERKN4llvm3opt7ArgListERNS3_11SmallVectorIPKcLj16EEENS_9BoundArchENS0_6Action11OffloadKindEENK3$_1clEv"(ptr nonnull %i.c, ptr nonnull %2)
  br label %_ZN4llvm9StringRefC2EPKc.exit163.2

_ZN4llvm9StringRefC2EPKc.exit163.2:               ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit166.1, %_ZN4llvm9StringRefC2EPKc.exit169.1
  %.pr382 = load i64, ptr %i.jw, align 8, !tbaa !357
  %.not.i164.2 = icmp ult i64 %.pr382, 19
  br i1 %.not.i164.2, label %_ZNK4llvm9StringRef11starts_withES0_.exit166.thread298.2, label %_ZNK4llvm9StringRef11starts_withES0_.exit166.2

_ZNK4llvm9StringRef11starts_withES0_.exit166.2:   ; preds = %_ZN4llvm9StringRefC2EPKc.exit163.2
  %i.ou = load ptr, ptr %15, align 8, !tbaa !246  ; 2 uses
  %i.ov = load i128, ptr %i.ou, align 1
  %i.ow = xor i128 %i.ov, 161352600464590826096249786754433906477
  %i.ox = getelementptr i8, ptr %i.ou, i64 3
  %i.oy = load i128, ptr %i.ox, align 1
  %i.oz = xor i128 %i.oy, 138765055870139866975111106771964226931
  %i.pa = or i128 %i.ow, %i.oz
  %i.pb = icmp ne i128 %i.pa, 0
  %i.pc = zext i1 %i.pb to i32
end_hunk_0
