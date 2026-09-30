Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CompilerInvocation?download=true
inline.NumInlined: 19714
inline.NumDeleted: 4740
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZN5clang18CompilerInvocation18CreateFromArgsImplERS0_N4llvm8ArrayRefIPKcEERNS_17DiagnosticsEngineES5_:bb.a
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.mw:                                            ; preds = %._crit_edge.i.i
  %i.cjx = load i8, ptr %i.cjq, align 1, !tbaa !92
  store i8 %i.cjx, ptr %i.cjw, align 1, !tbaa !92
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.mx:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cjw, ptr align 1 %i.cjq, i64 %i.cjs, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.mw, %bb.mx
  %i.cjy = load i64, ptr %i.ad, align 8, !tbaa !273 ; 2 uses
  store i64 %i.cjy, ptr %i.cjk, align 8, !tbaa !72
  %i.cjz = load ptr, ptr %173, align 8, !tbaa !272
  %i.cka = getelementptr inbounds nuw i8, ptr %i.cjz, i64 %i.cjy
  store i8 0, ptr %i.cka, align 1, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #26
  %i.ckb = load i64, ptr %i.cjk, align 8, !tbaa !72 ; 2 uses
  %i.ckc = icmp eq i64 %i.ckb, 9
  %.pre580 = load ptr, ptr %173, align 8, !tbaa !272 ; 4 uses
  br i1 %i.ckc, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread478

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ckd = load i64, ptr %.pre580, align 1
  %i.cke = xor i64 %i.ckd, 7162254444803090797
  %i.ckf = getelementptr i8, ptr %.pre580, i64 8
  %i.ckg = load i8, ptr %i.ckf, align 1
  %i.ckh = zext i8 %i.ckg to i64
  %i.cki = xor i64 %i.ckh, 116
  %i.ckj = or i64 %i.cke, %i.cki
  %i.ckk = icmp ne i64 %i.ckj, 0
  %i.ckl = zext i1 %i.ckk to i32
  %i.ckm = icmp eq i32 %i.ckl, 0
  br i1 %i.ckm, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread478

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ckn = load ptr, ptr %i.cjl, align 8, !tbaa !285
  %i.cko = call noundef zeroext i8 @_ZNK5clang13DiagnosticIDs21getDiagnosticSeverityEjNS_14SourceLocationERKNS_17DiagnosticsEngineE(ptr noundef nonnull align 8 dereferenceable(24) %i.ckn, i32 noundef 877, i32 0, ptr noundef nonnull align 8 dereferenceable(15256) %3) #29
  %i.ckp = icmp eq i8 %i.cko, 1
  br i1 %i.ckp, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread478, label %bb.my

bb.my:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.ckq = load ptr, ptr %i.cjm, align 8, !tbaa !269
  %i.ckr = getelementptr inbounds nuw i8, ptr %i.ckq, i64 32 ; 2 uses
  %i.cks = load i64, ptr %i.ckr, align 8
  %i.ckt = or i64 %i.cks, 33554432
  store i64 %i.ckt, ptr %i.ckr, align 8
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread478

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread478: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %bb.my, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.cku = icmp eq ptr %.pre580, %i.cjj
  br i1 %i.cku, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i242, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i242: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread478
  %i.ckv = icmp ult i64 %i.ckb, 16
  call void @llvm.assume(i1 %i.ckv)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread478
  %i.ckw = load i64, ptr %i.cjj, align 8, !tbaa !92
  %i.ckx = add i64 %i.ckw, 1
  call void @_ZdlPvm(ptr noundef %.pre580, i64 noundef %i.ckx) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i242, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241
  call void @llvm.lifetime.end.p0(ptr nonnull %173) #26
  %i.cky = getelementptr inbounds nuw i8, ptr %.sroa.0438.0539, i64 32 ; 2 uses
  %.not493 = icmp eq ptr %i.cky, %i.cji
  br i1 %.not493, label %._crit_edge542, label %bb.mu

bb.mz:                                            ; preds = %._crit_edge542
  %i.ckz = getelementptr inbounds nuw i8, ptr %i.bh, i64 80
  %i.cla = load i64, ptr %i.ckz, align 8
  %i.clb = and i64 %i.cla, 70368744177664
  %.not118 = icmp eq i64 %i.clb, 0
  br i1 %.not118, label %bb.nb, label %bb.na

bb.na:                                            ; preds = %bb.mz
  %i.clc = load ptr, ptr %i.avu, align 8, !tbaa !275
  %i.cld = getelementptr inbounds nuw i8, ptr %i.clc, i64 672
  %i.cle = load ptr, ptr %i.avz, align 8, !tbaa !254
  %i.clf = getelementptr inbounds nuw i8, ptr %i.cle, i64 32
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.clf, ptr noundef nonnull align 8 dereferenceable(32) %i.cld) #26
  br label %bb.nb

bb.nb:                                            ; preds = %bb.mz, %bb.na, %._crit_edge542
  %i.clg = getelementptr inbounds nuw i8, ptr %i.bh, i64 88 ; 2 uses
  %i.clh = load i64, ptr %i.clg, align 8
  %i.cli = and i64 %i.clh, 4398046511104
  %.not119 = icmp eq i64 %i.cli, 0
  br i1 %.not119, label %_ZL15isCodeGenActionN5clang8frontend10ActionKindE.exit, label %bb.nc

bb.nc:                                            ; preds = %bb.nb
  %i.clj = load ptr, ptr %i.avu, align 8, !tbaa !275 ; 2 uses
  %i.clk = load i64, ptr %i.clj, align 8
  %i.cll = and i64 %i.clk, 8589934592
  %.not120 = icmp eq i64 %i.cll, 0
  br i1 %.not120, label %bb.nd, label %_ZL15isCodeGenActionN5clang8frontend10ActionKindE.exit

bb.nd:                                            ; preds = %bb.nc
  %i.clm = getelementptr inbounds nuw i8, ptr %i.clj, i64 240
  %i.cln = load i32, ptr %i.clm, align 8, !tbaa !236
  switch i32 %i.cln, label %bb.ne [
    i32 7, label %bb.nf
    i32 8, label %bb.nf
    i32 10, label %bb.nf
    i32 9, label %bb.nf
    i32 11, label %bb.nf
    i32 12, label %bb.nf
    i32 13, label %bb.nf
    i32 14, label %bb.nf
    i32 17, label %bb.nf
    i32 18, label %bb.nf
    i32 19, label %bb.nf
    i32 20, label %bb.nf
    i32 21, label %bb.nf
    i32 22, label %bb.nf
    i32 0, label %_ZL15isCodeGenActionN5clang8frontend10ActionKindE.exit
    i32 1, label %_ZL15isCodeGenActionN5clang8frontend10ActionKindE.exit
    i32 2, label %_ZL15isCodeGenActionN5clang8frontend10ActionKindE.exit
    i32 3, label %_ZL15isCodeGenActionN5clang8frontend10ActionKindE.exit
    i32 15, label %_ZL15isCodeGenActionN5clang8frontend10ActionKindE.exit
    i32 16, label %_ZL15isCodeGenActionN5clang8frontend10ActionKindE.exit
    i32 26, label %_ZL15isCodeGenActionN5clang8frontend10ActionKindE.exit
    i32 24, label %_ZL15isCodeGenActionN5clang8frontend10ActionKindE.exit
    i32 25, label %_ZL15isCodeGenActionN5clang8frontend10ActionKindE.exit
    i32 27, label %_ZL15isCodeGenActionN5clang8frontend10ActionKindE.exit
    i32 31, label %_ZL15isCodeGenActionN5clang8frontend10ActionKindE.exit
    i32 32, label %_ZL15isCodeGenActionN5clang8frontend10ActionKindE.exit
    i32 33, label %_ZL15isCodeGenActionN5clang8frontend10ActionKindE.exit
    i32 34, label %_ZL15isCodeGenActionN5clang8frontend10ActionKindE.exit
    i32 4, label %_ZL15isCodeGenActionN5clang8frontend10ActionKindE.exit
    i32 5, label %_ZL15isCodeGenActionN5clang8frontend10ActionKindE.exit
    i32 6, label %_ZL15isCodeGenActionN5clang8frontend10ActionKindE.exit
    i32 23, label %_ZL15isCodeGenActionN5clang8frontend10ActionKindE.exit
    i32 28, label %_ZL15isCodeGenActionN5clang8frontend10ActionKindE.exit
    i32 29, label %_ZL15isCodeGenActionN5clang8frontend10ActionKindE.exit
    i32 30, label %_ZL15isCodeGenActionN5clang8frontend10ActionKindE.exit
    i32 35, label %_ZL15isCodeGenActionN5clang8frontend10ActionKindE.exit
    i32 36, label %_ZL15isCodeGenActionN5clang8frontend10ActionKindE.exit
  ]

bb.ne:                                            ; preds = %bb.nd
  unreachable

bb.nf:                                            ; preds = %bb.nd, %bb.nd, %bb.nd, %bb.nd, %bb.nd, %bb.nd, %bb.nd, %bb.nd, %bb.nd, %bb.nd, %bb.nd, %bb.nd, %bb.nd, %bb.nd
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %174, ptr noundef nonnull align 8 dereferenceable(15256) %3, i32 0, i32 noundef 614) #26
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %174) #26
  br label %_ZL15isCodeGenActionN5clang8frontend10ActionKindE.exit

_ZL15isCodeGenActionN5clang8frontend10ActionKindE.exit: ; preds = %bb.nd, %bb.nd, %bb.nd, %bb.nd, %bb.nd, %bb.nd, %bb.nd, %bb.nd, %bb.nd, %bb.nd, %bb.nd, %bb.nd, %bb.nd, %bb.nd, %bb.nd, %bb.nd, %bb.nd, %bb.nd, %bb.nd, %bb.nd, %bb.nd, %bb.nd, %bb.nd, %bb.nf, %bb.nc, %bb.nb
  %i.clo = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  %i.clp = load i64, ptr %i.clo, align 8
  %i.clq = and i64 %i.clp, 34359738368
  %.not121 = icmp eq i64 %i.clq, 0
  br i1 %.not121, label %bb.nh, label %bb.ng

bb.ng:                                            ; preds = %_ZL15isCodeGenActionN5clang8frontend10ActionKindE.exit
  %i.clr = load ptr, ptr %i.avu, align 8, !tbaa !275
  %i.cls = getelementptr inbounds nuw i8, ptr %i.clr, i64 672
  %i.clt = load ptr, ptr %i.avz, align 8, !tbaa !254
  %i.clu = getelementptr inbounds nuw i8, ptr %i.clt, i64 32
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.clu, ptr noundef nonnull align 8 dereferenceable(32) %i.cls) #26
  br label %bb.nh

bb.nh:                                            ; preds = %bb.ng, %_ZL15isCodeGenActionN5clang8frontend10ActionKindE.exit
  %i.clv = load i64, ptr %i.clg, align 8
  %i.clw = and i64 %i.clv, 68719476736
  %.not122 = icmp eq i64 %i.clw, 0
  br i1 %.not122, label %bb.nl, label %bb.ni

bb.ni:                                            ; preds = %bb.nh
  %i.clx = call noundef ptr @_ZNK4llvm3opt7ArgList10getLastArgIJN5clang7options2IDEEEEPNS0_3ArgEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %166, i32 noundef 3558)
  %.not494 = icmp eq ptr %i.clx, null
  br i1 %.not494, label %bb.nj, label %bb.nk

bb.nj:                                            ; preds = %bb.ni
  %i.cly = load ptr, ptr %i.avz, align 8, !tbaa !254 ; 2 uses
  %i.clz = getelementptr inbounds nuw i8, ptr %i.cly, i64 8
  %i.cma = load i64, ptr %i.clz, align 8, !tbaa !72
  %i.cmb = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.cly, i64 noundef 0, i64 noundef %i.cma, ptr noundef nonnull @.str.144, i64 noundef 23) #26 ; 0 uses
  br label %bb.nk

bb.nk:                                            ; preds = %bb.nj, %bb.ni
  %i.cmc = load ptr, ptr %i.avu, align 8, !tbaa !275
  %i.cmd = getelementptr inbounds nuw i8, ptr %i.cmc, i64 672
  %i.cme = load ptr, ptr %i.avz, align 8, !tbaa !254
  %i.cmf = getelementptr inbounds nuw i8, ptr %i.cme, i64 32
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.cmf, ptr noundef nonnull align 8 dereferenceable(32) %i.cmd) #26
  br label %bb.nl

bb.nl:                                            ; preds = %bb.nk, %bb.nh
  %i.cmg = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 6 uses
  %i.cmh = load ptr, ptr %i.cmg, align 8, !tbaa !269
  %i.cmi = load ptr, ptr %i.avu, align 8, !tbaa !275
  %i.cmj = getelementptr inbounds nuw i8, ptr %i.cmi, i64 104
  %i.cmk = call noundef zeroext i1 @_ZN5clang18CompilerInvocation16ParseCodeGenArgsERNS_14CodeGenOptionsERN4llvm3opt7ArgListENS_9InputKindERNS_17DiagnosticsEngineERKNS3_6TripleERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11LangOptionsE(ptr noundef nonnull align 8 dereferenceable(2496) %i.cmh, ptr noundef nonnull align 8 dereferenceable(176) %166, i32 %.sroa.011.0.copyload, ptr noundef nonnull align 8 dereferenceable(15256) %3, ptr noundef nonnull align 8 dereferenceable(56) %172, ptr noundef nonnull align 8 dereferenceable(32) %i.cmj, ptr noundef nonnull align 8 dereferenceable(1136) %i.bh) ; 0 uses
  %i.cml = getelementptr inbounds nuw i8, ptr %i.bh, i64 232
  %.sroa.0.0.copyload.i244 = load i64, ptr %i.cml, align 8 ; 2 uses
  %i.cmm = and i64 %.sroa.0.0.copyload.i244, 1033
  %i.cmn = icmp eq i64 %i.cmm, 0
  %178 = shl i64 %.sroa.0.0.copyload.i244, 16
  %179 = and i64 %178, 134217728
  %180 = xor i64 %179, -1
  %i.cmo = select i1 %i.cmn, i64 %180, i64 -134217729
  %i.cmp = load ptr, ptr %i.cmg, align 8, !tbaa !269 ; 2 uses
  %i.cmq = load i64, ptr %i.cmp, align 8
  %i.cmr = and i64 %i.cmo, %i.cmq
  store i64 %i.cmr, ptr %i.cmp, align 8
  %i.cms = load ptr, ptr %i.ciu, align 8, !tbaa !260 ; 41 uses
  %i.cmt = load ptr, ptr %i.avu, align 8, !tbaa !275 ; 2 uses
  %i.cmu = getelementptr inbounds nuw i8, ptr %i.cmt, i64 240
  %i.cmv = load i32, ptr %i.cmu, align 8, !tbaa !236
  call void @llvm.lifetime.start.p0(ptr nonnull %73)
  %i.cmw = getelementptr inbounds nuw i8, ptr %i.cms, i64 235 ; 2 uses
  store i8 0, ptr %i.cmw, align 1, !tbaa !595
  %i.cmx = call noundef ptr @_ZNK4llvm3opt7ArgList10getLastArgIJNS0_12OptSpecifierEEEEPNS0_3ArgEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %166, i32 1044)
  %.not.not.i.not.i259 = icmp eq ptr %i.cmx, null
  br i1 %.not.not.i.not.i259, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ESt16initializer_listIS5_ERKS6_.exit.i, label %bb.nm

bb.nm:                                            ; preds = %bb.nl
  store i8 1, ptr %i.cmw, align 1, !tbaa !595
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ESt16initializer_listIS5_ERKS6_.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ESt16initializer_listIS5_ERKS6_.exit.i: ; preds = %bb.nm, %bb.nl
  %i.cmy = getelementptr inbounds nuw i8, ptr %i.cms, i64 48 ; 4 uses
  %i.cmz = load ptr, ptr %i.cmy, align 8, !tbaa !390 ; 5 uses
  %i.cna = getelementptr inbounds nuw i8, ptr %i.cms, i64 56 ; 3 uses
  %i.cnb = load ptr, ptr %i.cna, align 8, !tbaa !389 ; 2 uses
  %i.cnc = getelementptr inbounds nuw i8, ptr %i.cms, i64 64 ; 3 uses
  %i.cnd = load ptr, ptr %i.cnc, align 8, !tbaa !470
  %.not4.i.i.i.i.i.i260 = icmp eq ptr %i.cmz, %i.cnb
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cmy, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i260, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i.i.i266, label %.lr.ph.i.i.i.i.i.i261

.lr.ph.i.i.i.i.i.i261:                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ESt16initializer_listIS5_ERKS6_.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i264
  %.05.i.i.i.i.i.i262 = phi ptr [ %i.cnj, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i264 ], [ %i.cmz, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ESt16initializer_listIS5_ERKS6_.exit.i ] ; 3 uses
  %i.cne = load ptr, ptr %.05.i.i.i.i.i.i262, align 8, !tbaa !272 ; 2 uses
  %i.cnf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i262, i64 16 ; 2 uses
  %i.cng = icmp eq ptr %i.cne, %i.cnf
  br i1 %i.cng, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i264, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i263

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i263: ; preds = %.lr.ph.i.i.i.i.i.i261
  %i.cnh = load i64, ptr %i.cnf, align 8, !tbaa !92
  %i.cni = add i64 %i.cnh, 1
  call void @_ZdlPvm(ptr noundef %i.cne, i64 noundef %i.cni) #27
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i264

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i264: ; preds = %.lr.ph.i.i.i.i.i.i261, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i263
  %i.cnj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i262, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i265 = icmp eq ptr %i.cnj, %i.cnb
  br i1 %.not.i.i.i.i.i.i265, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i.i.i266, label %.lr.ph.i.i.i.i.i.i261, !llvm.loop !17

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i.i.i266: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i264, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ESt16initializer_listIS5_ERKS6_.exit.i
  %.not.i.i1.i.i.i.i267 = icmp eq ptr %i.cmz, null
  br i1 %.not.i.i1.i.i.i.i267, label %bb.no, label %bb.nn

bb.nn:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i.i.i266
  %i.cnk = ptrtoint ptr %i.cnd to i64
  %i.cnl = ptrtoint ptr %i.cmz to i64
  %i.cnm = sub i64 %i.cnk, %i.cnl
  call void @_ZdlPvm(ptr noundef nonnull %i.cmz, i64 noundef %i.cnm) #27
  br label %bb.no

bb.no:                                            ; preds = %bb.nn, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i.i.i266
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #26, !noalias !2443
  call void @_ZNK4llvm3opt7ArgList15getAllArgValuesB5cxx11ENS0_12OptSpecifierE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %65, ptr noundef nonnull align 8 dereferenceable(176) %166, i32 2311) #26, !noalias !2443
  %i.cnn = load ptr, ptr %65, align 8, !tbaa !390, !noalias !2443 ; 6 uses
  %i.cno = getelementptr inbounds nuw i8, ptr %65, i64 8
  %i.cnp = load ptr, ptr %i.cno, align 8, !tbaa !389, !noalias !2443 ; 4 uses
  %i.cnq = getelementptr inbounds nuw i8, ptr %65, i64 16
  %i.cnr = load ptr, ptr %i.cnq, align 8, !tbaa !470, !noalias !2443
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #26, !noalias !2443
  %i.cns = ptrtoint ptr %i.cnp to i64
  %i.cnt = ptrtoint ptr %i.cnn to i64             ; 2 uses
  %i.cnu = sub i64 %i.cns, %i.cnt                 ; 3 uses
  %.not.i.i.i.i.i268 = icmp eq ptr %i.cnp, %i.cnn ; 2 uses
  br i1 %.not.i.i.i.i.i268, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit.i274, label %bb.np

bb.np:                                            ; preds = %bb.no
  %i.cnv = icmp ugt i64 %i.cnu, 9223372036854775776
  br i1 %i.cnv, label %bb.nq, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i.i269, !prof !252

bb.nq:                                            ; preds = %bb.np
  call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i.i269: ; preds = %bb.np
  %i.cnw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cnu) #25 ; 2 uses
  br label %.lr.ph.i.i.i.i.i142.i

.lr.ph.i.i.i.i.i142.i:                            ; preds = %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i273, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i.i269
  %.09.i.i.i.i.i.i270 = phi ptr [ %i.col, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i273 ], [ %i.cnw, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i.i269 ] ; 7 uses
  %.sroa.04.08.i.i.i.i.i.i271 = phi ptr [ %i.cok, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i273 ], [ %i.cnn, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i.i269 ] ; 3 uses
  %i.cnx = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i270, i64 16 ; 3 uses
  store ptr %i.cnx, ptr %.09.i.i.i.i.i.i270, align 8, !tbaa !69
  %i.cny = load ptr, ptr %.sroa.04.08.i.i.i.i.i.i271, align 8, !tbaa !272 ; 2 uses
  %i.cnz = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i271, i64 8
  %i.coa = load i64, ptr %i.cnz, align 8, !tbaa !72 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #26
  store i64 %i.coa, ptr %i.aa, align 8, !tbaa !273
  %i.cob = icmp ugt i64 %i.coa, 15
  br i1 %i.cob, label %bb.nr, label %._crit_edge.i.i.i.i.i.i.i.i.i272

bb.nr:                                            ; preds = %.lr.ph.i.i.i.i.i142.i
  %i.coc = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %.09.i.i.i.i.i.i270, ptr noundef nonnull align 8 dereferenceable(8) %i.aa, i64 noundef 0) #26 ; 2 uses
  store ptr %i.coc, ptr %.09.i.i.i.i.i.i270, align 8, !tbaa !272
  %i.cod = load i64, ptr %i.aa, align 8, !tbaa !273
  store i64 %i.cod, ptr %i.cnx, align 8, !tbaa !92
  br label %._crit_edge.i.i.i.i.i.i.i.i.i272

._crit_edge.i.i.i.i.i.i.i.i.i272:                 ; preds = %bb.nr, %.lr.ph.i.i.i.i.i142.i
  %i.coe = phi ptr [ %i.coc, %bb.nr ], [ %i.cnx, %.lr.ph.i.i.i.i.i142.i ] ; 2 uses
  switch i64 %i.coa, label %bb.nt [
    i64 1, label %bb.ns
    i64 0, label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i273
  ]

bb.ns:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i272
  %i.cof = load i8, ptr %i.cny, align 1, !tbaa !92
  store i8 %i.cof, ptr %i.coe, align 1, !tbaa !92
  br label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i273

bb.nt:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i272
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.coe, ptr align 1 %i.cny, i64 %i.coa, i1 false)
  br label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i273

_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i273: ; preds = %bb.nt, %bb.ns, %._crit_edge.i.i.i.i.i.i.i.i.i272
  %i.cog = load i64, ptr %i.aa, align 8, !tbaa !273 ; 2 uses
  %i.coh = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i270, i64 8
  store i64 %i.cog, ptr %i.coh, align 8, !tbaa !72
  %i.coi = load ptr, ptr %.09.i.i.i.i.i.i270, align 8, !tbaa !272
  %i.coj = getelementptr inbounds nuw i8, ptr %i.coi, i64 %i.cog
  store i8 0, ptr %i.coj, align 1, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #26
  %i.cok = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i271, i64 32 ; 2 uses
  %i.col = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i270, i64 32 ; 2 uses
  %.not.i.i.i.i.i143.i = icmp eq ptr %i.cok, %i.cnp
  br i1 %.not.i.i.i.i.i143.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit.i274, label %.lr.ph.i.i.i.i.i142.i, !llvm.loop !18

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit.i274: ; preds = %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i273, %bb.no
  %.sink.i275 = phi ptr [ null, %bb.no ], [ %i.cnw, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i273 ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i276 = phi ptr [ null, %bb.no ], [ %i.col, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i273 ]
  %i.com = getelementptr inbounds nuw i8, ptr %.sink.i275, i64 %i.cnu
  %i.con = load ptr, ptr %i.cmy, align 8, !tbaa !390 ; 5 uses
  %i.coo = load ptr, ptr %i.cna, align 8, !tbaa !389 ; 2 uses
  %i.cop = load ptr, ptr %i.cnc, align 8, !tbaa !470
  store ptr %.sink.i275, ptr %i.cmy, align 8, !tbaa !390
  store ptr %.0.lcssa.i.i.i.i.i.i276, ptr %i.cna, align 8, !tbaa !389
  store ptr %i.com, ptr %i.cnc, align 8, !tbaa !470
  %.not4.i.i.i.i.i144.i = icmp eq ptr %i.con, %i.coo
  br i1 %.not4.i.i.i.i.i144.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i.i150.i, label %.lr.ph.i.i.i.i.i145.i

.lr.ph.i.i.i.i.i145.i:                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit.i274, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i148.i
  %.05.i.i.i.i.i146.i = phi ptr [ %i.cov, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i148.i ], [ %i.con, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit.i274 ] ; 3 uses
  %i.coq = load ptr, ptr %.05.i.i.i.i.i146.i, align 8, !tbaa !272 ; 2 uses
  %i.cor = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i146.i, i64 16 ; 2 uses
  %i.cos = icmp eq ptr %i.coq, %i.cor
  br i1 %i.cos, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i148.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i147.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i147.i: ; preds = %.lr.ph.i.i.i.i.i145.i
  %i.cot = load i64, ptr %i.cor, align 8, !tbaa !92
  %i.cou = add i64 %i.cot, 1
  call void @_ZdlPvm(ptr noundef %i.coq, i64 noundef %i.cou) #27
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i148.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i148.i: ; preds = %.lr.ph.i.i.i.i.i145.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i147.i
  %i.cov = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i146.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i149.i = icmp eq ptr %i.cov, %i.coo
  br i1 %.not.i.i.i.i.i149.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i.i150.i, label %.lr.ph.i.i.i.i.i145.i, !llvm.loop !17

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i.i150.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i148.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit.i274
  %.not.i.i1.i.i.i151.i = icmp eq ptr %i.con, null
  br i1 %.not.i.i1.i.i.i151.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit165.i, label %bb.nu

bb.nu:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i.i150.i
  %i.cow = ptrtoint ptr %i.cop to i64
  %i.cox = ptrtoint ptr %i.con to i64
  %i.coy = sub i64 %i.cow, %i.cox
  call void @_ZdlPvm(ptr noundef nonnull %i.con, i64 noundef %i.coy) #27
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit165.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit165.i: ; preds = %bb.nu, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i.i150.i
  br i1 %.not.i.i.i.i.i268, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i.i.i.i.i282, label %.lr.ph.i.i.i.i.i.i.i.i277

.lr.ph.i.i.i.i.i.i.i.i277:                        ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit165.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i280
  %.05.i.i.i.i.i.i.i.i278 = phi ptr [ %i.cpe, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i280 ], [ %i.cnn, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit165.i ] ; 3 uses
  %i.coz = load ptr, ptr %.05.i.i.i.i.i.i.i.i278, align 8, !tbaa !272 ; 2 uses
  %i.cpa = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i278, i64 16 ; 2 uses
  %i.cpb = icmp eq ptr %i.coz, %i.cpa
  br i1 %i.cpb, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i280, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i279

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i279: ; preds = %.lr.ph.i.i.i.i.i.i.i.i277
  %i.cpc = load i64, ptr %i.cpa, align 8, !tbaa !92
  %i.cpd = add i64 %i.cpc, 1
  call void @_ZdlPvm(ptr noundef %i.coz, i64 noundef %i.cpd) #27
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i280

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i280: ; preds = %.lr.ph.i.i.i.i.i.i.i.i277, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i279
  %i.cpe = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i278, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i281 = icmp eq ptr %i.cpe, %i.cnp
  br i1 %.not.i.i.i.i.i.i.i.i281, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i.i.i.i.i282, label %.lr.ph.i.i.i.i.i.i.i.i277, !llvm.loop !17

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i.i.i.i.i282: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i280, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit165.i
  %.not.i.i1.i.i.i.i.i.i283 = icmp eq ptr %i.cnn, null
end_hunk_0
