Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CGObjCGNU?download=true
inline.NumInlined: 6710
inline.NumDeleted: 2728
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN12_GLOBAL__N_114CGObjCGNUstep218ModuleInitFunctionEv:_ZN4llvm11GlobalValue13setVisibilityENS0_15VisibilityTypesE.exit
  store ptr @.str.84, ptr %11, align 8, !tbaa !390
  store i8 3, ptr %i.w, align 8, !tbaa !468
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !469, !nonnull !386, !align !387
  %i.aa = tail call noundef ptr @_ZN4llvm4UsernwEmNS0_26HungOffOperandsAllocMarkerE(i64 noundef 144) #24 ; 7 uses
  call void @_ZN4llvm8FunctionC1EPNS_12FunctionTypeENS_11GlobalValue12LinkageTypesEjRKNS_5TwineEPNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(140) %i.aa, ptr noundef %i.v, i32 noundef 3, i32 noundef -1, ptr noundef nonnull align 8 dereferenceable(34) %11, ptr noundef nonnull %i.z) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8            ; 2 uses
  %i.ad = and i32 %i.ac, -49
  %i.ae = and i32 %i.ac, 15
  %.not324 = icmp eq i32 %i.ae, 9
  %spec.select.v = select i1 %.not324, i32 16, i32 16400
  %spec.select = or i32 %i.ad, %spec.select.v
  store i32 %spec.select, ptr %i.ab, align 8
  %i.af = load ptr, ptr %i.y, align 8, !tbaa !469, !nonnull !386, !align !387
  %i.ag = call noundef ptr @_ZN4llvm6Module17getOrInsertComdatENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(1288) %i.af, ptr nonnull @.str.84, i64 21) #24
  call void @_ZN4llvm12GlobalObject9setComdatEPNS_6ComdatE(ptr noundef nonnull align 8 dereferenceable(60) %i.aa, ptr noundef %i.ag) #24
  %i.ah = load ptr, ptr %i.s, align 8, !tbaa !429, !nonnull !386, !align !387
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %i.ai = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %12, i64 33
  store i8 1, ptr %i.aj, align 1, !tbaa !465
  store ptr @.str.40, ptr %12, align 8, !tbaa !390
  store i8 3, ptr %i.ai, align 8, !tbaa !468
  %i.ak = call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #23 ; 3 uses
  call void @_ZN4llvm10BasicBlockC1ERNS_11LLVMContextERKNS_5TwineEPNS_8FunctionEPS0_(ptr noundef nonnull align 8 dereferenceable(80) %i.ak, ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull align 8 dereferenceable(34) %12, ptr noundef nonnull %i.aa, ptr noundef null) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 27 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !420, !nonnull !386, !align !387 ; 2 uses
  %i.an = load ptr, ptr %i.s, align 8, !tbaa !429, !nonnull !386, !align !387
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 200
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !470, !nonnull !386, !align !387
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 296 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm12TargetFolderE, i64 16), ptr %10, align 8, !tbaa !391
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !471
  %i.as = getelementptr inbounds nuw i8, ptr %13, i64 88 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %13, i64 104 ; 3 uses
  store ptr null, ptr %13, align 8, !tbaa !473
  %i.au = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 3 uses
  store ptr %i.an, ptr %i.au, align 8, !tbaa !476
  %i.av = getelementptr inbounds nuw i8, ptr %13, i64 40
  store ptr %i.as, ptr %i.av, align 8, !tbaa !477
  %i.aw = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 2 uses
  store ptr %i.at, ptr %i.aw, align 8, !tbaa !479
  %i.ax = getelementptr inbounds nuw i8, ptr %13, i64 56
  store ptr null, ptr %i.ax, align 8, !tbaa !481
  %i.ay = getelementptr inbounds nuw i8, ptr %13, i64 64
  store i32 0, ptr %i.ay, align 8, !tbaa !491
  %i.az = getelementptr inbounds nuw i8, ptr %13, i64 68
  store i8 0, ptr %i.az, align 4, !tbaa !492
  %i.ba = getelementptr inbounds nuw i8, ptr %13, i64 69
  store i8 2, ptr %i.ba, align 1, !tbaa !493
  %i.bb = getelementptr inbounds nuw i8, ptr %13, i64 70
  store i8 7, ptr %i.bb, align 2, !tbaa !494
  %i.bc = getelementptr inbounds nuw i8, ptr %13, i64 72
  %i.bd = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.bd, i8 0, i64 18, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm12TargetFolderE, i64 16), ptr %i.as, align 8, !tbaa !391
  %i.be = getelementptr inbounds nuw i8, ptr %13, i64 96
  store ptr %i.aq, ptr %i.be, align 8, !tbaa !471
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5clang7CodeGen17CGBuilderInserterE, i64 16), ptr %i.at, align 8, !tbaa !391
  %i.bf = getelementptr inbounds nuw i8, ptr %13, i64 112
  store ptr null, ptr %i.bf, align 8, !tbaa !495
  call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #24
  %i.bg = getelementptr inbounds nuw i8, ptr %13, i64 120
  store ptr %i.am, ptr %i.bg, align 8, !tbaa !498
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  store ptr %i.ak, ptr %i.bd, align 8, !tbaa !500
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.bi = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  store ptr %i.bh, ptr %i.bi, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  %i.bj = load ptr, ptr %i.al, align 8, !tbaa !420, !nonnull !386, !align !387
  store ptr %i.bj, ptr %14, align 8, !tbaa !501
  %i.bk = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 2 uses
  store ptr %i.bl, ptr %i.bk, align 8, !tbaa !424
  %i.bm = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  store i32 0, ptr %i.bm, align 8, !tbaa !427
  %i.bn = getelementptr inbounds nuw i8, ptr %14, i64 20 ; 2 uses
  store i32 16, ptr %i.bn, align 4, !tbaa !425
  %i.bo = getelementptr inbounds nuw i8, ptr %14, i64 152 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.bo, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !502)
  store ptr %14, ptr %15, align 8, !tbaa !505, !alias.scope !502
  %i.bp = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %15, i64 40
  store i64 0, ptr %i.bq, align 8, !tbaa !507, !alias.scope !502
  %i.br = getelementptr inbounds nuw i8, ptr %14, i64 176
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(27) %i.bp, i8 0, i64 27, i1 false)
  store i8 1, ptr %i.br, align 8, !tbaa !509, !noalias !502
  %i.bs = getelementptr inbounds nuw i8, ptr %15, i64 48 ; 2 uses
  store ptr null, ptr %i.bs, align 8, !tbaa !521, !alias.scope !502
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !526
  %i.bv = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.bu, i64 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false) #24 ; 2 uses
  %i.bw = load i32, ptr %i.bm, align 8, !tbaa !427 ; 2 uses
  %i.bx = load i32, ptr %i.bn, align 4, !tbaa !425
  %.not.i.i.i = icmp ult i32 %i.bw, %i.bx
  br i1 %.not.i.i.i, label %bb.b, label %bb.a, !prof !527

bb.a:                                             ; preds = %_ZN4llvm11GlobalValue13setVisibilityENS0_15VisibilityTypesE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, ptr noundef %i.bv)
  br label %_ZN5clang7CodeGen28ConstantAggregateBuilderBase6addIntEPN4llvm11IntegerTypeEmb.exit

bb.b:                                             ; preds = %_ZN4llvm11GlobalValue13setVisibilityENS0_15VisibilityTypesE.exit
  %i.by = zext i32 %i.bw to i64
  %i.bz = load ptr, ptr %i.bk, align 8, !tbaa !424
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.by
  store ptr %i.bv, ptr %i.ca, align 1
  %i.cb = load i32, ptr %i.bm, align 8, !tbaa !427
  %i.cc = add i32 %i.cb, 1
  store i32 %i.cc, ptr %i.bm, align 8, !tbaa !427
  br label %_ZN5clang7CodeGen28ConstantAggregateBuilderBase6addIntEPN4llvm11IntegerTypeEmb.exit

_ZN5clang7CodeGen28ConstantAggregateBuilderBase6addIntEPN4llvm11IntegerTypeEmb.exit: ; preds = %bb.a, %bb.b
  %i.cd = load ptr, ptr %i.al, align 8, !tbaa !420, !nonnull !386, !align !387 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 216
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !528, !nonnull !386, !align !387
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 268
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !529
  %i.ci = icmp eq i32 %i.ch, 1                    ; 2 uses
  %_ZN12_GLOBAL__N_114CGObjCGNUstep223PECOFFSectionsBaseNamesE._ZN12_GLOBAL__N_114CGObjCGNUstep217SectionsBaseNamesE = select i1 %i.ci, ptr @_ZN12_GLOBAL__N_114CGObjCGNUstep223PECOFFSectionsBaseNamesE, ptr @_ZN12_GLOBAL__N_114CGObjCGNUstep217SectionsBaseNamesE ; 2 uses
  %i.cj = select i1 %i.ci, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_114CGObjCGNUstep223PECOFFSectionsBaseNamesE, i64 64), ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_114CGObjCGNUstep217SectionsBaseNamesE, i64 64) ; 2 uses
  %.not334 = icmp eq ptr %_ZN12_GLOBAL__N_114CGObjCGNUstep223PECOFFSectionsBaseNamesE._ZN12_GLOBAL__N_114CGObjCGNUstep217SectionsBaseNamesE, %i.cj
  br i1 %.not334, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_4TypeELb1EE9push_backES2_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5clang7CodeGen28ConstantAggregateBuilderBase6addIntEPN4llvm11IntegerTypeEmb.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %.sroa.23.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 33
  %.sroa.23.0..sroa_idx.i.i.i15.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.2.0..sroa_idx.i.i.i16.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 33
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 1656 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.d

_ZN4llvm11GlobalValue13setVisibilityENS0_15VisibilityTypesE.exit121.loopexit: ; preds = %_ZN5clang7CodeGen28ConstantAggregateBuilderBase3addEPN4llvm8ConstantE.exit126
  %.pre = load ptr, ptr %i.al, align 8, !tbaa !420
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_4TypeELb1EE9push_backES2_.exit.i

bb.c:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_4TypeELb1EE9push_backES2_.exit.i
  call void @free(ptr noundef %i.eb) #24
  br label %_ZN12_GLOBAL__N_114CGObjCGNUstep219CallRuntimeFunctionERN5clang7CodeGen11CGBuilderTyEN4llvm9StringRefENS5_8ArrayRefIPNS5_5ValueEEE.exit

_ZN4llvm23SmallVectorTemplateBaseIPNS_4TypeELb1EE9push_backES2_.exit.i: ; preds = %_ZN4llvm11GlobalValue13setVisibilityENS0_15VisibilityTypesE.exit121.loopexit, %_ZN5clang7CodeGen28ConstantAggregateBuilderBase6addIntEPN4llvm11IntegerTypeEmb.exit
  %i.cv = phi ptr [ %.pre, %_ZN4llvm11GlobalValue13setVisibilityENS0_15VisibilityTypesE.exit121.loopexit ], [ %i.cd, %_ZN5clang7CodeGen28ConstantAggregateBuilderBase6addIntEPN4llvm11IntegerTypeEmb.exit ]
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 138
  %i.cx = load i8, ptr %i.cw, align 2, !tbaa !390
  %i.cy = zext i8 %i.cx to i64
  %i.cz = load ptr, ptr %15, align 8, !tbaa !537, !nonnull !386, !align !387
  %i.da = load ptr, ptr %i.bs, align 8, !tbaa !521
  %i.db = call noundef ptr @_ZN5clang7CodeGen28ConstantAggregateBuilderBase12finishStructEPN4llvm10StructTypeE(ptr noundef nonnull align 8 dereferenceable(56) %15, ptr noundef %i.da) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.dc = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 1, ptr %i.dc, align 1, !tbaa !465
  store ptr @.str.85, ptr %9, align 8, !tbaa !390
  %i.dd = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i8 3, ptr %i.dd, align 8, !tbaa !468
  %i.de = call noundef ptr @_ZN5clang7CodeGen23ConstantInitBuilderBase12createGlobalEPN4llvm8ConstantERKNS2_5TwineENS_9CharUnitsEbNS2_11GlobalValue12LinkageTypesEj(ptr noundef nonnull align 8 dereferenceable(177) %i.cz, ptr noundef %i.db, ptr noundef nonnull align 8 dereferenceable(34) %9, i64 %i.cy, i1 noundef zeroext false, i32 noundef 3, i32 noundef 0) #24 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 32 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 8            ; 2 uses
  %i.dh = and i32 %i.dg, -49
  %i.di = and i32 %i.dg, 15
  %.not325 = icmp eq i32 %i.di, 9
  %spec.select332.v = select i1 %.not325, i32 16, i32 16400
  %spec.select332 = or i32 %i.dh, %spec.select332.v
  store i32 %spec.select332, ptr %i.df, align 8
  %i.dj = load ptr, ptr %i.y, align 8, !tbaa !469, !nonnull !386, !align !387
  %i.dk = call noundef ptr @_ZN4llvm6Module17getOrInsertComdatENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(1288) %i.dj, ptr nonnull @.str.85, i64 10) #24
  call void @_ZN4llvm12GlobalObject9setComdatEPNS_6ComdatE(ptr noundef nonnull align 8 dereferenceable(60) %i.de, ptr noundef %i.dk) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #24
  store ptr %i.de, ptr %i.j, align 8, !tbaa !538
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.dl = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.dl, ptr %7, align 8, !tbaa !424
  %i.dm = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 8, ptr %i.dn, align 4, !tbaa !425
  %i.do = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !539
  store ptr %i.dp, ptr %i.dl, align 8
  store i32 1, ptr %i.dm, align 8, !tbaa !427
  %.pre347.a = load ptr, ptr %i.au, align 8, !tbaa !543
  %i.dq = call noundef ptr @_ZN4llvm4Type9getVoidTyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %.pre347.a) #24
  %i.dr = load ptr, ptr %7, align 8, !tbaa !424
  %i.ds = load i32, ptr %i.dm, align 8, !tbaa !427
  %i.dt = zext i32 %i.ds to i64
  %i.du = call noundef ptr @_ZN4llvm12FunctionType3getEPNS_4TypeENS_8ArrayRefIS2_EEb(ptr noundef %i.dq, ptr %i.dr, i64 %i.dt, i1 noundef zeroext false) #24
  %i.dv = load ptr, ptr %i.al, align 8, !tbaa !420, !nonnull !386, !align !387
  %i.dw = call { ptr, ptr } @_ZN5clang7CodeGen13CodeGenModule21CreateRuntimeFunctionEPN4llvm12FunctionTypeENS2_9StringRefENS2_13AttributeListEbb(ptr noundef nonnull align 8 dereferenceable(4008) %i.dv, ptr noundef %i.du, ptr nonnull @.str.86, i64 11, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #24 ; 2 uses
  %i.dx = extractvalue { ptr, ptr } %i.dw, 0
  %i.dy = extractvalue { ptr, ptr } %i.dw, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.dz = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i16 257, ptr %i.dz, align 8
  %i.ea = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateCallEPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(128) %13, ptr noundef %i.dx, ptr noundef %i.dy, ptr nonnull %i.j, i64 1, ptr noundef nonnull align 8 dereferenceable(34) %8, ptr noundef null) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.eb = load ptr, ptr %7, align 8, !tbaa !424   ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %i.dl
  br i1 %i.ec, label %_ZN12_GLOBAL__N_114CGObjCGNUstep219CallRuntimeFunctionERN5clang7CodeGen11CGBuilderTyEN4llvm9StringRefENS5_8ArrayRefIPNS5_5ValueEEE.exit, label %bb.c

_ZN12_GLOBAL__N_114CGObjCGNUstep219CallRuntimeFunctionERN5clang7CodeGen11CGBuilderTyEN4llvm9StringRefENS5_8ArrayRefIPNS5_5ValueEEE.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_4TypeELb1EE9push_backES2_.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #24
  %i.ed = load ptr, ptr %i.au, align 8, !tbaa !543, !nonnull !386, !align !387
  %i.ee = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 72, i32 0) #24 ; 3 uses
  call void @_ZN4llvm10ReturnInstC1ERNS_11LLVMContextEPNS_5ValueENS_4User9AllocInfoENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(72) %i.ee, ptr noundef nonnull align 8 dereferenceable(8) %i.ed, ptr noundef null, i32 0, ptr null, i64 0) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.ef = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i16 257, ptr %i.ef, align 8
  %i.eg = load ptr, ptr %i.aw, align 8, !tbaa !544, !nonnull !386, !align !387 ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.bi, align 8
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !391
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8
  call void %i.ej(ptr noundef nonnull align 8 dereferenceable(8) %i.eg, ptr noundef nonnull %i.ee, ptr noundef nonnull align 8 dereferenceable(34) %6, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.2.0.copyload.i.i) #24, !inline_history !545
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %13, ptr noundef nonnull %i.ee) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.ek = load ptr, ptr %i.al, align 8, !tbaa !420, !nonnull !386, !align !387
  call void @_ZN5clang7CodeGen13CodeGenModule21addCompilerUsedGlobalEPN4llvm11GlobalValueE(ptr noundef nonnull align 8 dereferenceable(4008) %i.ek, ptr noundef nonnull %i.aa) #24
  %i.el = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 96, i32 1) #24 ; 7 uses
  %i.em = load ptr, ptr %i.y, align 8, !tbaa !469, !nonnull !386, !align !387
  %i.en = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !539
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  %i.ep = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.eq = getelementptr inbounds nuw i8, ptr %16, i64 33
  store i8 1, ptr %i.eq, align 1, !tbaa !465
  store ptr @.str.87, ptr %16, align 8, !tbaa !390
  store i8 3, ptr %i.ep, align 8, !tbaa !468
  call void @_ZN4llvm14GlobalVariableC1ERNS_6ModuleEPNS_4TypeEbNS_11GlobalValue12LinkageTypesEPNS_8ConstantERKNS_5TwineEPS0_NS5_15ThreadLocalModeESt8optionalIjEb(ptr noundef nonnull align 8 dereferenceable(89) %i.el, ptr noundef nonnull align 8 dereferenceable(1288) %i.em, ptr noundef %i.eo, i1 noundef zeroext false, i32 noundef 2, ptr noundef nonnull %i.aa, ptr noundef nonnull align 8 dereferenceable(34) %16, ptr noundef null, i32 noundef 0, i64 0, i1 noundef zeroext false) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  %i.er = load ptr, ptr %i.al, align 8, !tbaa !420, !nonnull !386, !align !387 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 216
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !528, !nonnull !386, !align !387
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 268
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !529
  %i.ew = icmp eq i32 %i.ev, 1
  br i1 %i.ew, label %bb.m, label %bb.n

bb.d:                                             ; preds = %.lr.ph, %_ZN5clang7CodeGen28ConstantAggregateBuilderBase3addEPN4llvm8ConstantE.exit126
  %.0335 = phi ptr [ %_ZN12_GLOBAL__N_114CGObjCGNUstep223PECOFFSectionsBaseNamesE._ZN12_GLOBAL__N_114CGObjCGNUstep217SectionsBaseNamesE, %.lr.ph ], [ %i.gz, %_ZN5clang7CodeGen28ConstantAggregateBuilderBase3addEPN4llvm8ConstantE.exit126 ] ; 2 uses
  %i.ex = load ptr, ptr %.0335, align 8, !tbaa !546 ; 5 uses
  %.not.i122 = icmp eq ptr %i.ex, null
  br i1 %.not.i122, label %_ZN4llvm9StringRefC2EPKc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ey = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ex) #24
  br label %_ZN4llvm9StringRefC2EPKc.exit

_ZN4llvm9StringRefC2EPKc.exit:                    ; preds = %bb.d, %bb.e
  %.sroa.0.0.i = phi i64 [ %i.ey, %bb.e ], [ 0, %bb.d ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.ex, ptr %2, align 8
  store i64 %.sroa.0.0.i, ptr %i.ck, align 8
  %i.ez = load ptr, ptr %i.al, align 8, !tbaa !420, !nonnull !386, !align !387
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 216
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !528, !nonnull !386, !align !387
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 268
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !529
  %i.fe = icmp eq i32 %i.fd, 1
  br i1 %i.fe, label %bb.f, label %_ZN4llvmplERKNS_5TwineES2_.exit.i

bb.f:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit
  %i.ff = load ptr, ptr %i.cs, align 8, !tbaa !394 ; 2 uses
  %i.fg = icmp eq ptr %i.ff, null
  br i1 %i.fg, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.fh = load ptr, ptr %i.s, align 8, !tbaa !429, !nonnull !386, !align !387
  %i.fi = call noundef ptr @_ZN4llvm10StructType6createERNS_11LLVMContextENS_8ArrayRefIPNS_4TypeEEENS_9StringRefEb(ptr noundef nonnull align 8 dereferenceable(8) %i.fh, ptr null, i64 0, ptr nonnull @.str.119, i64 22, i1 noundef zeroext true) #24 ; 2 uses
  store ptr %i.fi, ptr %i.cs, align 8, !tbaa !394
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.fj = phi ptr [ %i.fi, %bb.g ], [ %i.ff, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #24
  %i.fk = call noundef ptr @_ZN4llvm8Constant12getNullValueEPNS_4TypeE(ptr noundef %i.fj) #24
  store ptr %i.fk, ptr %i.i, align 8, !tbaa !547
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr %0, ptr %3, align 8, !tbaa !548
  store ptr %i.i, ptr %i.ct, align 8, !tbaa !552
  store ptr %2, ptr %i.cu, align 8, !tbaa !553
  %i.fl = call fastcc noundef ptr @_ZZN12_GLOBAL__N_114CGObjCGNUstep216GetSectionBoundsEN4llvm9StringRefEENKUlS2_S2_E_clES2_S2_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr nonnull @.str.120, i64 8, ptr nonnull @.str.121, i64 2)
  %i.fm = call fastcc noundef ptr @_ZZN12_GLOBAL__N_114CGObjCGNUstep216GetSectionBoundsEN4llvm9StringRefEENKUlS2_S2_E_clES2_S2_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr nonnull @.str.122, i64 6, ptr nonnull @.str.123, i64 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #24
  br label %_ZN12_GLOBAL__N_114CGObjCGNUstep216GetSectionBoundsEN4llvm9StringRefE.exit

_ZN4llvmplERKNS_5TwineES2_.exit.i:                ; preds = %_ZN4llvm9StringRefC2EPKc.exit
  %i.fn = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 96, i32 1) #24 ; 4 uses
  %i.fo = load ptr, ptr %i.y, align 8, !tbaa !469, !nonnull !386, !align !387
  %i.fp = load ptr, ptr %i.cl, align 8, !tbaa !436
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store ptr @.str.120, ptr %4, align 8, !alias.scope !554
  store i64 8, ptr %.sroa.23.0..sroa_idx.i.i.i.i, align 8, !tbaa !390, !alias.scope !554
  store ptr %i.ex, ptr %i.cm, align 8, !alias.scope !554
  store i64 %.sroa.0.0.i, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !390, !alias.scope !554
  store i8 5, ptr %i.cn, align 8, !tbaa !468, !alias.scope !554
  store i8 5, ptr %i.co, align 1, !tbaa !465, !alias.scope !554
  call void @_ZN4llvm14GlobalVariableC1ERNS_6ModuleEPNS_4TypeEbNS_11GlobalValue12LinkageTypesEPNS_8ConstantERKNS_5TwineEPS0_NS5_15ThreadLocalModeESt8optionalIjEb(ptr noundef nonnull align 8 dereferenceable(89) %i.fn, ptr noundef nonnull align 8 dereferenceable(1288) %i.fo, ptr noundef %i.fp, i1 noundef zeroext false, i32 noundef 0, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(34) %4, ptr noundef null, i32 noundef 0, i64 0, i1 noundef zeroext false) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 32 ; 2 uses
  %i.fr = load i32, ptr %i.fq, align 8            ; 2 uses
  %i.fs = and i32 %i.fr, -49
  %i.ft = and i32 %i.fr, 15
  %.not.i123 = icmp eq i32 %i.ft, 9
  %spec.select.v.i = select i1 %.not.i123, i32 16, i32 16400
  %spec.select.i = or i32 %spec.select.v.i, %i.fs
  store i32 %spec.select.i, ptr %i.fq, align 8
  %i.fu = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 96, i32 1) #24 ; 4 uses
  %i.fv = load ptr, ptr %i.y, align 8, !tbaa !469, !nonnull !386, !align !387
  %i.fw = load ptr, ptr %i.cl, align 8, !tbaa !436
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store ptr @.str.124, ptr %5, align 8, !alias.scope !559
  store i64 7, ptr %.sroa.23.0..sroa_idx.i.i.i15.i, align 8, !tbaa !390, !alias.scope !559
  store ptr %i.ex, ptr %i.cp, align 8, !alias.scope !559
  store i64 %.sroa.0.0.i, ptr %.sroa.2.0..sroa_idx.i.i.i16.i, align 8, !tbaa !390, !alias.scope !559
  store i8 5, ptr %i.cq, align 8, !tbaa !468, !alias.scope !559
  store i8 5, ptr %i.cr, align 1, !tbaa !465, !alias.scope !559
  call void @_ZN4llvm14GlobalVariableC1ERNS_6ModuleEPNS_4TypeEbNS_11GlobalValue12LinkageTypesEPNS_8ConstantERKNS_5TwineEPS0_NS5_15ThreadLocalModeESt8optionalIjEb(ptr noundef nonnull align 8 dereferenceable(89) %i.fu, ptr noundef nonnull align 8 dereferenceable(1288) %i.fv, ptr noundef %i.fw, i1 noundef zeroext false, i32 noundef 0, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(34) %5, ptr noundef null, i32 noundef 0, i64 0, i1 noundef zeroext false) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 32 ; 3 uses
  %i.fy = load i32, ptr %i.fx, align 8            ; 2 uses
  %i.fz = and i32 %i.fy, -49                      ; 2 uses
  %i.ga = or disjoint i32 %i.fz, 16
  store i32 %i.ga, ptr %i.fx, align 8
  %i.gb = and i32 %i.fy, 15
  %.not49.i = icmp eq i32 %i.gb, 9
  br i1 %.not49.i, label %_ZN12_GLOBAL__N_114CGObjCGNUstep216GetSectionBoundsEN4llvm9StringRefE.exit, label %_ZNK4llvm11GlobalValue18isImplicitDSOLocalEv.exit.thread.i20.i

_ZNK4llvm11GlobalValue18isImplicitDSOLocalEv.exit.thread.i20.i: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit.i
  %i.gc = or i32 %i.fz, 16400
  store i32 %i.gc, ptr %i.fx, align 8
  br label %_ZN12_GLOBAL__N_114CGObjCGNUstep216GetSectionBoundsEN4llvm9StringRefE.exit

_ZN12_GLOBAL__N_114CGObjCGNUstep216GetSectionBoundsEN4llvm9StringRefE.exit: ; preds = %bb.h, %_ZN4llvmplERKNS_5TwineES2_.exit.i, %_ZNK4llvm11GlobalValue18isImplicitDSOLocalEv.exit.thread.i20.i
  %.sroa.046.0.i = phi ptr [ %i.fl, %bb.h ], [ %i.fn, %_ZN4llvmplERKNS_5TwineES2_.exit.i ], [ %i.fn, %_ZNK4llvm11GlobalValue18isImplicitDSOLocalEv.exit.thread.i20.i ] ; 2 uses
  %.sroa.347.0.i = phi ptr [ %i.fm, %bb.h ], [ %i.fu, %_ZN4llvmplERKNS_5TwineES2_.exit.i ], [ %i.fu, %_ZNK4llvm11GlobalValue18isImplicitDSOLocalEv.exit.thread.i20.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.gd = load ptr, ptr %15, align 8, !tbaa !537, !nonnull !386, !align !387 ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 16 ; 3 uses
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !427 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gd, i64 20
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !425
  %.not.i.i124 = icmp ult i32 %i.gg, %i.gi
  br i1 %.not.i.i124, label %bb.j, label %bb.i, !prof !527

bb.i:                                             ; preds = %_ZN12_GLOBAL__N_114CGObjCGNUstep216GetSectionBoundsEN4llvm9StringRefE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ge, ptr noundef %.sroa.046.0.i)
  br label %_ZN5clang7CodeGen28ConstantAggregateBuilderBase3addEPN4llvm8ConstantE.exit

bb.j:                                             ; preds = %_ZN12_GLOBAL__N_114CGObjCGNUstep216GetSectionBoundsEN4llvm9StringRefE.exit
  %i.gj = zext i32 %i.gg to i64
  %i.gk = load ptr, ptr %i.ge, align 8, !tbaa !424
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %i.gj
  store ptr %.sroa.046.0.i, ptr %i.gl, align 1
  %i.gm = load i32, ptr %i.gf, align 8, !tbaa !427
  %i.gn = add i32 %i.gm, 1
  store i32 %i.gn, ptr %i.gf, align 8, !tbaa !427
  br label %_ZN5clang7CodeGen28ConstantAggregateBuilderBase3addEPN4llvm8ConstantE.exit

_ZN5clang7CodeGen28ConstantAggregateBuilderBase3addEPN4llvm8ConstantE.exit: ; preds = %bb.i, %bb.j
  %i.go = load ptr, ptr %15, align 8, !tbaa !537, !nonnull !386, !align !387 ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 16 ; 3 uses
  %i.gr = load i32, ptr %i.gq, align 8, !tbaa !427 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.go, i64 20
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !425
  %.not.i.i125 = icmp ult i32 %i.gr, %i.gt
  br i1 %.not.i.i125, label %bb.l, label %bb.k, !prof !527

bb.k:                                             ; preds = %_ZN5clang7CodeGen28ConstantAggregateBuilderBase3addEPN4llvm8ConstantE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.gp, ptr noundef %.sroa.347.0.i)
  br label %_ZN5clang7CodeGen28ConstantAggregateBuilderBase3addEPN4llvm8ConstantE.exit126

bb.l:                                             ; preds = %_ZN5clang7CodeGen28ConstantAggregateBuilderBase3addEPN4llvm8ConstantE.exit
  %i.gu = zext i32 %i.gr to i64
  %i.gv = load ptr, ptr %i.gp, align 8, !tbaa !424
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %i.gu
  store ptr %.sroa.347.0.i, ptr %i.gw, align 1
end_hunk_0
