Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AVR?download=true
inline.NumInlined: 835
inline.NumDeleted: 398
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNK5clang6driver5tools3AVR6Linker12ConstructJobERNS0_11CompilationERKNS0_9JobActionERKNS0_9InputInfoERKN4llvm11SmallVectorIS9_Lj4EEERKNSC_3opt7ArgListEPKc:bb.a
bb.c:                                             ; preds = %_ZN12_GLOBAL__N_124GetMCUSectionAddressDataEN4llvm9StringRefE.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !325
  call void @_ZNK5clang6driver9ToolChain14GetProgramPathB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(2568) %i.y, ptr noundef %i.aa) #15
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit: ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15
  %i.ab = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  store ptr %i.ab, ptr %13, align 8, !tbaa !110
  %i.ac = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 40 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %13, i64 12 ; 14 uses
  store i32 16, ptr %i.ad, align 4, !tbaa !109
  store ptr @.str.11, ptr %i.ab, align 8
  %i.ae = load ptr, ptr %3, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %13, i64 24
  store ptr %i.ae, ptr %i.af, align 8
  store i32 2, ptr %i.ac, align 8, !tbaa !108
  %i.ag = call noundef ptr @_ZNK4llvm3opt7ArgList10getLastArgIJN5clang7options2IDEEEEPNS0_3ArgEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %5, i32 noundef 3442)
  %.not204.a = icmp eq ptr %i.ag, null
  br i1 %.not204.a, label %bb.d, label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit77

bb.d:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit
  %i.ah = load i32, ptr %i.ac, align 8, !tbaa !108 ; 2 uses
  %i.ai = load i32, ptr %i.ad, align 4, !tbaa !109
  %.not.i76 = icmp ult i32 %i.ah, %i.ai
  br i1 %.not.i76, label %bb.f, label %bb.e, !prof !111

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull @.str.12)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit77

bb.f:                                             ; preds = %bb.d
  %i.aj = zext i32 %i.ah to i64
  %i.ak = load ptr, ptr %13, align 8, !tbaa !110
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.aj
  store ptr @.str.12, ptr %i.al, align 1
  %i.am = load i32, ptr %i.ac, align 8, !tbaa !108
  %i.an = add i32 %i.am, 1
  store i32 %i.an, ptr %i.ac, align 8, !tbaa !108
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit77

_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit77: ; preds = %bb.f, %bb.e, %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit
  call void @_ZNK4llvm3opt7ArgList10AddAllArgsERNS_11SmallVectorIPKcLj16EEENS0_12OptSpecifierE(ptr noundef nonnull align 8 dereferenceable(176) %5, ptr noundef nonnull align 8 dereferenceable(144) %13, i32 2384) #15
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !321, !nonnull !71, !align !72 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !10
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 680
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(2568) %i.ao, ptr noundef nonnull align 8 dereferenceable(176) %5, ptr noundef nonnull align 8 dereferenceable(144) %13) #15
  %i.as = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 624
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = call noundef i32 %i.au(ptr noundef nonnull align 8 dereferenceable(2568) %i.b, ptr noundef nonnull align 8 dereferenceable(176) %5) #15 ; 3 uses
  %i.aw = call noundef ptr @_ZNK4llvm3opt7ArgList10getLastArgIJN5clang7options2IDEEEEPNS0_3ArgEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %5, i32 noundef 3257)
  %.not205.a = icmp eq ptr %i.aw, null
  br i1 %.not205.a, label %bb.g, label %bb.r

bb.g:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit77
  %i.ax = call noundef ptr @_ZNK4llvm3opt7ArgList10getLastArgIJN5clang7options2IDEEEEPNS0_3ArgEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %5, i32 noundef 3442)
  %.not206.a = icmp eq ptr %i.ax, null
  br i1 %.not206.a, label %bb.h, label %bb.r

bb.h:                                             ; preds = %bb.g
  %i.ay = call noundef ptr @_ZNK4llvm3opt7ArgList10getLastArgIJN5clang7options2IDEEEEPNS0_3ArgEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %5, i32 noundef 3237)
  %.not207.a = icmp eq ptr %i.ay, null
  br i1 %.not207.a, label %bb.i, label %bb.r

bb.i:                                             ; preds = %bb.h
  %i.az = load i64, ptr %i.g, align 8, !tbaa !16  ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %.sink.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !70, !noalias !326, !nonnull !71, !align !72
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %14, ptr noundef nonnull align 8 dereferenceable(15256) %i.bb, i32 0, i32 noundef 562) #15
  %i.bc = load ptr, ptr %10, align 8, !tbaa !17
  %i.bd = load i64, ptr %i.g, align 8, !tbaa !16
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %14, ptr %i.bc, i64 %i.bd)
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %14) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  br label %bb.q

bb.l:                                             ; preds = %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.bf = load i8, ptr %i.be, align 8, !tbaa !121, !range !104, !noundef !71
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bh = load ptr, ptr %i.d, align 8, !tbaa !70, !noalias !327, !nonnull !71, !align !72
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %15, ptr noundef nonnull align 8 dereferenceable(15256) %i.bh, i32 0, i32 noundef 563) #15
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %15) #15
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #15
  %i.bi = load ptr, ptr %10, align 8, !tbaa !17
  call fastcc void @_ZN12_GLOBAL__N_113GetMCUSubPathB5cxx11EN4llvm9StringRefE(ptr dead_on_unwind noalias writable align 8 %16, ptr %i.bi, i64 %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #15
  %i.bj = getelementptr inbounds nuw i8, ptr %20, i64 32
  %i.bk = getelementptr inbounds nuw i8, ptr %20, i64 33
  store i8 1, ptr %i.bk, align 1, !tbaa !125
  store ptr @.str.13, ptr %20, align 8, !tbaa !18
  store i8 3, ptr %i.bj, align 8, !tbaa !124
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #15
  %i.bl = getelementptr inbounds nuw i8, ptr %21, i64 32
  store i8 4, ptr %i.bl, align 8, !tbaa !124
  %i.bm = getelementptr inbounds nuw i8, ptr %21, i64 33
  store i8 1, ptr %i.bm, align 1, !tbaa !125
  store ptr %11, ptr %21, align 8, !tbaa !18
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %19, ptr noundef nonnull align 8 dereferenceable(34) %20, ptr noundef nonnull align 8 dereferenceable(34) %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #15
  %i.bn = getelementptr inbounds nuw i8, ptr %22, i64 32
  %i.bo = getelementptr inbounds nuw i8, ptr %22, i64 33
  store i8 1, ptr %i.bo, align 1, !tbaa !125
  store ptr @.str.14, ptr %22, align 8, !tbaa !18
  store i8 3, ptr %i.bn, align 8, !tbaa !124
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %18, ptr noundef nonnull align 8 dereferenceable(34) %19, ptr noundef nonnull align 8 dereferenceable(34) %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #15
  %i.bp = getelementptr inbounds nuw i8, ptr %23, i64 32
  store i8 4, ptr %i.bp, align 8, !tbaa !124
  %i.bq = getelementptr inbounds nuw i8, ptr %23, i64 33
  store i8 1, ptr %i.bq, align 1, !tbaa !125
  store ptr %16, ptr %23, align 8, !tbaa !18
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %17, ptr noundef nonnull align 8 dereferenceable(34) %18, ptr noundef nonnull align 8 dereferenceable(34) %23)
  %i.br = call noundef ptr @_ZNK4llvm3opt7ArgList13MakeArgStringERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(176) %5, ptr noundef nonnull align 8 dereferenceable(34) %17)
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef %i.br)
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15
  %i.bs = icmp eq i32 %i.av, 1
  br i1 %i.bs, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #15
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 5136
  %.sroa.0.0.copyload.i = load ptr, ptr %i.bt, align 8, !tbaa !105
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 5144
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !106
  %i.bu = getelementptr inbounds nuw i8, ptr %26, i64 32
  store i8 3, ptr %i.bu, align 8, !tbaa !124, !alias.scope !328
  %i.bv = getelementptr inbounds nuw i8, ptr %26, i64 33
  store i8 5, ptr %i.bv, align 1, !tbaa !125, !alias.scope !328
  store ptr @.str.13, ptr %26, align 8, !tbaa !18, !alias.scope !328
  %i.bw = getelementptr inbounds nuw i8, ptr %26, i64 16
  store ptr %.sroa.0.0.copyload.i, ptr %i.bw, align 8, !tbaa !18, !alias.scope !328
  %i.bx = getelementptr inbounds nuw i8, ptr %26, i64 24
  store i64 %.sroa.2.0.copyload.i, ptr %i.bx, align 8, !tbaa !18, !alias.scope !328
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #15
  %i.by = getelementptr inbounds nuw i8, ptr %27, i64 32
  %i.bz = getelementptr inbounds nuw i8, ptr %27, i64 33
  store i8 1, ptr %i.bz, align 1, !tbaa !125
  store ptr @.str.15, ptr %27, align 8, !tbaa !18
  store i8 3, ptr %i.by, align 8, !tbaa !124
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %25, ptr noundef nonnull align 8 dereferenceable(34) %26, ptr noundef nonnull align 8 dereferenceable(34) %27)
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #15
  %i.ca = getelementptr inbounds nuw i8, ptr %28, i64 32
  store i8 4, ptr %i.ca, align 8, !tbaa !124
  %i.cb = getelementptr inbounds nuw i8, ptr %28, i64 33
  store i8 1, ptr %i.cb, align 1, !tbaa !125
  store ptr %16, ptr %28, align 8, !tbaa !18
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %24, ptr noundef nonnull align 8 dereferenceable(34) %25, ptr noundef nonnull align 8 dereferenceable(34) %28)
  %i.cc = call noundef ptr @_ZNK4llvm3opt7ArgList13MakeArgStringERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(176) %5, ptr noundef nonnull align 8 dereferenceable(34) %24)
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef %i.cc)
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #15
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cd = load ptr, ptr %16, align 8, !tbaa !17   ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !18
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #16
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #15
  br label %bb.r

bb.q:                                             ; preds = %bb.k, %bb.m, %bb.i
  %i.ci = load ptr, ptr %i.d, align 8, !tbaa !70, !noalias !329, !nonnull !71, !align !72
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %29, ptr noundef nonnull align 8 dereferenceable(15256) %i.ci, i32 0, i32 noundef 566) #15
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %29) #15
  br label %bb.r

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %bb.q, %bb.h, %bb.g, %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit77
  %.1 = phi i1 [ false, %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit77 ], [ false, %bb.g ], [ false, %bb.h ], [ true, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ], [ false, %bb.q ]
  %i.cj = call noundef ptr @_ZNK4llvm3opt7ArgList10getLastArgIJN5clang7options2IDEEEEPNS0_3ArgEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %5, i32 noundef 3442)
  %.not208 = icmp eq ptr %i.cj, null
  br i1 %.not208, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  br i1 %.us-phi213, label %_ZN4llvmplERKNS_5TwineES2_.exit, label %bb.v

_ZN4llvmplERKNS_5TwineES2_.exit:                  ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #15
  %i.ck = zext i32 %.us-phi212 to i64
  %i.cl = inttoptr i64 %i.ck to ptr
  store ptr @.str.16, ptr %30, align 8, !alias.scope !330
  %i.cm = getelementptr inbounds nuw i8, ptr %30, i64 16
  store ptr %i.cl, ptr %i.cm, align 8, !alias.scope !330
  %i.cn = getelementptr inbounds nuw i8, ptr %30, i64 32
  store i8 3, ptr %i.cn, align 8, !tbaa !124, !alias.scope !330
  %i.co = getelementptr inbounds nuw i8, ptr %30, i64 33
  store i8 15, ptr %i.co, align 1, !tbaa !125, !alias.scope !330
  %i.cp = call noundef ptr @_ZNK4llvm3opt7ArgList13MakeArgStringERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(176) %5, ptr noundef nonnull align 8 dereferenceable(34) %30) ; 2 uses
  %i.cq = load i32, ptr %i.ac, align 8, !tbaa !108 ; 2 uses
  %i.cr = load i32, ptr %i.ad, align 4, !tbaa !109
  %.not.i78 = icmp ult i32 %i.cq, %i.cr
  br i1 %.not.i78, label %bb.u, label %bb.t, !prof !111

bb.t:                                             ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef %i.cp)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit79

bb.u:                                             ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit
  %i.cs = zext i32 %i.cq to i64
  %i.ct = load ptr, ptr %13, align 8, !tbaa !110
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cs
  store ptr %i.cp, ptr %i.cu, align 1
  %i.cv = load i32, ptr %i.ac, align 8, !tbaa !108
  %i.cw = add i32 %i.cv, 1
  store i32 %i.cw, ptr %i.ac, align 8, !tbaa !108
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit79

_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit79: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #15
  br label %bb.w

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #15
  %i.cx = load ptr, ptr %i.d, align 8, !tbaa !70, !noalias !331, !nonnull !71, !align !72
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %31, ptr noundef nonnull align 8 dereferenceable(15256) %i.cx, i32 0, i32 noundef 564) #15
  %i.cy = load ptr, ptr %10, align 8, !tbaa !17
  %i.cz = load i64, ptr %i.g, align 8, !tbaa !16
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %31, ptr %i.cy, i64 %i.cz)
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %31) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #15
  br label %bb.w

bb.w:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit79, %bb.v, %bb.r
  %i.da = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 152
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = call noundef i32 %i.dc(ptr noundef nonnull align 8 dereferenceable(2568) %i.b, ptr noundef nonnull align 8 dereferenceable(176) %5, i32 noundef 0) #15 ; 2 uses
  %.not61 = icmp eq i32 %i.dd, 0
  br i1 %.not61, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.de = icmp eq i32 %i.dd, 2
  call void @_ZN5clang6driver5tools13addLTOOptionsERKNS0_9ToolChainERKN4llvm3opt7ArgListERNS5_11SmallVectorIPKcLj16EEERKNS0_9InputInfoERKNSA_ISF_Lj4EEEb(ptr noundef nonnull align 8 dereferenceable(2568) %i.b, ptr noundef nonnull align 8 dereferenceable(176) %5, ptr noundef nonnull align 8 dereferenceable(144) %13, ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(176) %4, i1 noundef zeroext %i.de) #15
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  br i1 %.1, label %bb.z, label %bb.bu

bb.z:                                             ; preds = %bb.y
  %i.df = load i32, ptr %i.ac, align 8, !tbaa !108 ; 2 uses
  %i.dg = load i32, ptr %i.ad, align 4, !tbaa !109
  %.not.i80 = icmp ult i32 %i.df, %i.dg
  br i1 %.not.i80, label %bb.ab, label %bb.aa, !prof !111

bb.aa:                                            ; preds = %bb.z
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull @.str.17)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit81

bb.ab:                                            ; preds = %bb.z
  %i.dh = zext i32 %i.df to i64
  %i.di = load ptr, ptr %13, align 8, !tbaa !110
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.dh
  store ptr @.str.17, ptr %i.dj, align 1
  %i.dk = load i32, ptr %i.ac, align 8, !tbaa !108
  %i.dl = add i32 %i.dk, 1
  store i32 %i.dl, ptr %i.ac, align 8, !tbaa !108
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit81

_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit81: ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #15
  %i.dm = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 4 uses
  store ptr %i.dm, ptr %34, align 8, !tbaa !107
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.dm, ptr noundef nonnull align 1 dereferenceable(6) @.str.18, i64 6, i1 false)
  %i.dn = getelementptr inbounds nuw i8, ptr %34, i64 8
  store i64 6, ptr %i.dn, align 8, !tbaa !16
  %i.do = getelementptr inbounds nuw i8, ptr %34, i64 22
  store i8 0, ptr %i.do, align 2, !tbaa !18
  call void @llvm.experimental.noalias.scope.decl(metadata !332)
  %i.dp = load i64, ptr %i.g, align 8, !tbaa !16, !noalias !332 ; 2 uses
  %i.dq = icmp ugt i64 %i.dp, 4611686018427387897
  br i1 %i.dq, label %bb.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.ac:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit81
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.418) #17, !noalias !332
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit81
  %i.dr = load ptr, ptr %10, align 8, !tbaa !17, !noalias !332
  %i.ds = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef %i.dr, i64 noundef %i.dp) #15, !noalias !332 ; 6 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 7 uses
  store ptr %i.dt, ptr %33, align 8, !tbaa !107, !alias.scope !332
  %i.du = load ptr, ptr %i.ds, align 8, !tbaa !17 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 16 ; 5 uses
  %i.dw = icmp eq ptr %i.du, %i.dv
  br i1 %i.dw, label %bb.ad, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !16 ; 3 uses
  %i.dz = icmp ult i64 %i.dy, 16
  call void @llvm.assume(i1 %i.dz)
  %i.ea = add nuw nsw i64 %i.dy, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dt, ptr noundef nonnull align 8 dereferenceable(1) %i.dv, i64 %i.ea, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  store ptr %i.du, ptr %33, align 8, !tbaa !17, !alias.scope !332
  %i.eb = load i64, ptr %i.dv, align 8, !tbaa !18
  store i64 %i.eb, ptr %i.dt, align 8, !tbaa !18, !alias.scope !332
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !16
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82
  %i.ec = phi i64 [ %i.dy, %bb.ad ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82 ]
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 2 uses
  store i64 %i.ec, ptr %i.ee, align 8, !tbaa !16, !alias.scope !332
  store ptr %i.dv, ptr %i.ds, align 8, !tbaa !17
  store i64 0, ptr %i.ed, align 8, !tbaa !16
  store i8 0, ptr %i.dv, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #15
  %i.ef = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 5 uses
  store ptr %i.ef, ptr %35, align 8, !tbaa !107
  store i16 28462, ptr %i.ef, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %35, i64 8
  store i64 2, ptr %i.eg, align 8, !tbaa !16
  %i.eh = getelementptr inbounds nuw i8, ptr %35, i64 18
  store i8 0, ptr %i.eh, align 2, !tbaa !18
  call void @llvm.experimental.noalias.scope.decl(metadata !333)
  %i.ei = load i64, ptr %i.ee, align 8, !tbaa !16, !noalias !333 ; 4 uses
  %i.ej = add i64 %i.ei, 2                        ; 2 uses
  %i.ek = load ptr, ptr %33, align 8, !tbaa !17, !noalias !333 ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.dt
  br i1 %i.el, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i89: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit
  %i.em = icmp ult i64 %i.ei, 16
  call void @llvm.assume(i1 %i.em)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit
  %i.en = load i64, ptr %i.dt, align 8, !tbaa !18, !noalias !333
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i89
  %i.eo = phi i64 [ %i.en, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i89 ]
  %i.ep = icmp ule i64 %i.ej, %i.eo
  %.not.i87 = icmp ugt i64 %i.ej, 15
  %or.cond310 = or i1 %i.ep, %.not.i87
  br i1 %or.cond310, label %bb.af, label %.critedge.i88

.critedge.i88:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.eq = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %35, i64 noundef 0, i64 noundef 0, ptr noundef %i.ek, i64 noundef %i.ei) #15, !noalias !333 ; 5 uses
  %i.er = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 3 uses
  store ptr %i.er, ptr %32, align 8, !tbaa !107, !alias.scope !333
  %i.es = load ptr, ptr %i.eq, align 8, !tbaa !17 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 16 ; 5 uses
  %i.eu = icmp eq ptr %i.es, %i.et
  br i1 %i.eu, label %bb.ae, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i

bb.ae:                                            ; preds = %.critedge.i88
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !16 ; 2 uses
  %i.ex = icmp ult i64 %i.ew, 16
  call void @llvm.assume(i1 %i.ex)
  %i.ey = add nuw nsw i64 %i.ew, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.er, ptr noundef nonnull align 8 dereferenceable(1) %i.et, i64 %i.ey, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

end_hunk_0
