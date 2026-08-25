Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/XRayArgs?download=true
inline.NumInlined: 990
inline.NumDeleted: 386
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN5clang6driver8XRayArgsC2ERKNS0_9ToolChainERKN4llvm3opt7ArgListE:bb.a
  %i.bv = load ptr, ptr %i.r, align 8, !tbaa !111, !noalias !189, !nonnull !107, !align !108
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %9, ptr noundef nonnull align 8 dereferenceable(15256) %i.bv, i32 0, i32 noundef 57) #17
  %i.bw = load ptr, ptr %9, align 8, !tbaa !170   ; 2 uses
  %.not.i.i.i121 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i121, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i122, label %_ZNK5clang17DiagnosticBuilderlsIA6_cEERKS0_RKT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i122: ; preds = %bb.m
  %i.bx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !174
  %i.bz = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.by) ; 2 uses
  store ptr %i.bz, ptr %9, align 8, !tbaa !170
  br label %_ZNK5clang17DiagnosticBuilderlsIA6_cEERKS0_RKT_.exit

_ZNK5clang17DiagnosticBuilderlsIA6_cEERKS0_RKT_.exit: ; preds = %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i122, %bb.m
  %i.ca = phi ptr [ %i.bz, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i122 ], [ %i.bw, %bb.m ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %i.cc = load i8, ptr %i.ca, align 8, !tbaa !175
  %i.cd = zext i8 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cd
  store i8 1, ptr %i.ce, align 1, !tbaa !187
  %i.cf = load ptr, ptr %9, align 8, !tbaa !170   ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ch = load i8, ptr %i.cf, align 8, !tbaa !175 ; 2 uses
  %i.ci = add i8 %i.ch, 1                         ; 2 uses
  store i8 %i.ci, ptr %i.cf, align 8, !tbaa !175
  %i.cj = zext i8 %i.ch to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.cj
  store i64 ptrtoint (ptr @.str to i64), ptr %i.ck, align 8, !tbaa !157
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 1
  %i.cm = zext i8 %i.ci to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cm
  store i8 1, ptr %i.cn, align 1, !tbaa !187
  %i.co = load ptr, ptr %9, align 8, !tbaa !170   ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load i8, ptr %i.co, align 8, !tbaa !175 ; 2 uses
  %i.cr = add i8 %i.cq, 1
  store i8 %i.cr, ptr %i.co, align 8, !tbaa !175
  %i.cs = zext i8 %i.cq to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.cs
  store i64 ptrtoint (ptr @.str.1 to i64), ptr %i.ct, align 8, !tbaa !157
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %_ZNK5clang17DiagnosticBuilderlsIA6_cEERKS0_RKT_.exit, %bb.i
  %i.cu = call noundef ptr @_ZNK4llvm3opt7ArgList10getLastArgIJN5clang7options2IDEEEEPNS0_3ArgEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %2, i32 noundef 1739) ; 3 uses
  %.not99 = icmp eq ptr %i.cu, null
  br i1 %.not99, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %i.cv = load ptr, ptr %i.r, align 8, !tbaa !111, !noalias !192, !nonnull !107, !align !108
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %10, ptr noundef nonnull align 8 dereferenceable(15256) %i.cv, i32 0, i32 noundef 326) #17
  %i.cw = load ptr, ptr %i.n, align 8, !tbaa !8   ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %.sroa.0.0.copyload.i126 = load ptr, ptr %i.cx, align 8, !tbaa !156
  %.sroa.2.0..sroa_idx.i127 = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  %.sroa.2.0.copyload.i128 = load i64, ptr %.sroa.2.0..sroa_idx.i127, align 8, !tbaa !157
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %10, ptr %.sroa.0.0.copyload.i126, i64 %.sroa.2.0.copyload.i128)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %.sroa.0.0.copyload.i134 = load ptr, ptr %i.cy, align 8, !tbaa !156
  %.sroa.2.0..sroa_idx.i135 = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %.sroa.2.0.copyload.i136 = load i64, ptr %.sroa.2.0..sroa_idx.i135, align 8, !tbaa !157
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %10, ptr %.sroa.0.0.copyload.i134, i64 %.sroa.2.0.copyload.i136)
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %10) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cz = call noundef zeroext i1 @_ZNK4llvm3opt7ArgList7hasFlagENS0_12OptSpecifierES2_b(ptr noundef nonnull align 8 dereferenceable(176) %2, i32 2138, i32 1625, i1 noundef zeroext true) #17
  br i1 %i.cz, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i8 0, ptr %i.o, align 8, !tbaa !19
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  call void @_ZNK4llvm3opt7ArgList15getAllArgValuesB5cxx11ENS0_12OptSpecifierE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %11, ptr noundef nonnull align 8 dereferenceable(176) %2, i32 2136) #17
  %i.da = load ptr, ptr %11, align 8, !tbaa !195  ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !195 ; 2 uses
  %i.dd = icmp eq ptr %i.da, %i.dc
  br i1 %i.dd, label %bb.s, label %.preheader310

.preheader310:                                    ; preds = %bb.r
  %i.de = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %12, i64 12
  %i.dh = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 11 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %13, i64 64 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %13, i64 65 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.do = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 2 uses
  br label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 15, ptr %i.m, align 8, !tbaa !196
  br label %.loopexit311

bb.t:                                             ; preds = %.preheader310, %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit
  %.sroa.0277.0319 = phi ptr [ %i.da, %.preheader310 ], [ %i.is, %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  store ptr %i.de, ptr %12, align 8, !tbaa !197
  store i32 0, ptr %i.df, align 8, !tbaa !198
  store i32 2, ptr %i.dg, align 4, !tbaa !199
  %i.dp = load ptr, ptr %.sroa.0277.0319, align 8, !tbaa !158
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.0277.0319, i64 8
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !159
  call void @_ZN4llvm11SplitStringENS_9StringRefERNS_15SmallVectorImplIS0_EES0_(ptr %i.dp, i64 %i.dr, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr nonnull @.str.2, i64 1) #17
  %i.ds = load ptr, ptr %12, align 8, !tbaa !197  ; 2 uses
  %i.dt = load i32, ptr %i.df, align 8, !tbaa !198 ; 2 uses
  %i.du = zext i32 %i.dt to i64
  %.idx = shl nuw nsw i64 %i.du, 4
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 %.idx
  %.not100315 = icmp eq i32 %i.dt, 0
  br i1 %.not100315, label %.loopexit309, label %.lr.ph.split.preheader.i

.lr.ph.split.preheader.i:                         ; preds = %bb.t, %bb.an
  %.095317 = phi ptr [ %i.ip, %bb.an ], [ %i.ds, %bb.t ] ; 4 uses
  %.sroa.038.0.copyload = load ptr, ptr %.095317, align 8, !tbaa !156 ; 11 uses
  %.sroa.239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.095317, i64 8 ; 2 uses
  %.sroa.239.0.copyload = load i64, ptr %.sroa.239.0..sroa_idx, align 8, !tbaa !157
  %.sroa.239.0.copyload.fr = freeze i64 %.sroa.239.0.copyload ; 2 uses
  switch i64 %.sroa.239.0.copyload.fr, label %_ZN4llvm12StringSwitchIbbE5CasesESt16initializer_listINS_13StringLiteralEEb.exit.a [
    i64 6, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i.5
    i64 4, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i
    i64 3, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i.1
    i64 8, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i.2
    i64 14, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i.3
    i64 13, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i.4
  ]

_ZN4llvmneENS_9StringRefES0_.exit.i.i:            ; preds = %.lr.ph.split.preheader.i
  %i.dw = load i32, ptr %.sroa.038.0.copyload, align 1
  %i.dx = icmp ne i32 %i.dw, 1701736302
  %i.dy = zext i1 %i.dx to i32
  %.not.i.i = icmp eq i32 %i.dy, 0
  br i1 %.not.i.i, label %_ZN4llvm12StringSwitchIbbE5CasesESt16initializer_listINS_13StringLiteralEEb.exit.thread, label %_ZN4llvm12StringSwitchIbbE5CasesESt16initializer_listINS_13StringLiteralEEb.exit.a

_ZN4llvmneENS_9StringRefES0_.exit.i.i.1:          ; preds = %.lr.ph.split.preheader.i
  %i.dz = load i16, ptr %.sroa.038.0.copyload, align 1
  %i.ea = xor i16 %i.dz, 27745
  %i.eb = getelementptr i8, ptr %.sroa.038.0.copyload, i64 2
  %i.ec = load i8, ptr %i.eb, align 1
  %i.ed = zext i8 %i.ec to i16
  %i.ee = xor i16 %i.ed, 108
  %i.ef = or i16 %i.ea, %i.ee
  %i.eg = icmp ne i16 %i.ef, 0
  %i.eh = zext i1 %i.eg to i32
  %.not.i.i.1 = icmp eq i32 %i.eh, 0
  br i1 %.not.i.i.1, label %_ZN4llvm12StringSwitchIbbE5CasesESt16initializer_listINS_13StringLiteralEEb.exit.thread, label %_ZN4llvm12StringSwitchIbbE5CasesESt16initializer_listINS_13StringLiteralEEb.exit.a

_ZN4llvmneENS_9StringRefES0_.exit.i.i.2:          ; preds = %.lr.ph.split.preheader.i
  %i.ei = load i64, ptr %.sroa.038.0.copyload, align 1
  %i.ej = icmp ne i64 %i.ei, 7957695015192261990
  %i.ek = zext i1 %i.ej to i32
  %.not.i.i.2 = icmp eq i32 %i.ek, 0
  br i1 %.not.i.i.2, label %_ZN4llvm12StringSwitchIbbE5CasesESt16initializer_listINS_13StringLiteralEEb.exit.thread, label %_ZN4llvm12StringSwitchIbbE5CasesESt16initializer_listINS_13StringLiteralEEb.exit.a

_ZN4llvmneENS_9StringRefES0_.exit.i.i.3:          ; preds = %.lr.ph.split.preheader.i
  %i.el = load i64, ptr %.sroa.038.0.copyload, align 1
  %i.em = xor i64 %i.el, 7957695015192261990
  %i.en = getelementptr i8, ptr %.sroa.038.0.copyload, i64 6
  %i.eo = load i64, ptr %i.en, align 1
  %i.ep = xor i64 %i.eo, 8751185043426995823
  %i.eq = or i64 %i.em, %i.ep
  %i.er = icmp ne i64 %i.eq, 0
  %i.es = zext i1 %i.er to i32
  %.not.i.i.3 = icmp eq i32 %i.es, 0
  br i1 %.not.i.i.3, label %_ZN4llvm12StringSwitchIbbE5CasesESt16initializer_listINS_13StringLiteralEEb.exit.thread, label %_ZN4llvm12StringSwitchIbbE5CasesESt16initializer_listINS_13StringLiteralEEb.exit.a

_ZN4llvmneENS_9StringRefES0_.exit.i.i.4:          ; preds = %.lr.ph.split.preheader.i
  %i.et = load i64, ptr %.sroa.038.0.copyload, align 1
  %i.eu = xor i64 %i.et, 7957695015192261990
  %i.ev = getelementptr i8, ptr %.sroa.038.0.copyload, i64 5
  %i.ew = load i64, ptr %i.ev, align 1
  %i.ex = xor i64 %i.ew, 8388368156903501673
  %i.ey = or i64 %i.eu, %i.ex
  %i.ez = icmp ne i64 %i.ey, 0
  %i.fa = zext i1 %i.ez to i32
  %.not.i.i.4 = icmp eq i32 %i.fa, 0
  br i1 %.not.i.i.4, label %_ZN4llvm12StringSwitchIbbE5CasesESt16initializer_listINS_13StringLiteralEEb.exit.thread, label %_ZN4llvm12StringSwitchIbbE5CasesESt16initializer_listINS_13StringLiteralEEb.exit.a

_ZN4llvmneENS_9StringRefES0_.exit.i.i.5:          ; preds = %.lr.ph.split.preheader.i
  %i.fb = load i32, ptr %.sroa.038.0.copyload, align 1
  %i.fc = xor i32 %i.fb, 1953723747
  %i.fd = getelementptr i8, ptr %.sroa.038.0.copyload, i64 4
  %i.fe = load i16, ptr %i.fd, align 1
  %i.ff = zext i16 %i.fe to i32
  %i.fg = xor i32 %i.ff, 28015
  %i.fh = or i32 %i.fc, %i.fg
  %i.fi = icmp ne i32 %i.fh, 0
  %i.fj = zext i1 %i.fi to i32
  %.not.i.i.5 = icmp eq i32 %i.fj, 0
  br i1 %.not.i.i.5, label %_ZN4llvm12StringSwitchIbbE5CasesESt16initializer_listINS_13StringLiteralEEb.exit.thread, label %_ZN4llvm12StringSwitchIbbE5CasesESt16initializer_listINS_13StringLiteralEEb.exit.a

_ZN4llvm12StringSwitchIbbE5CasesESt16initializer_listINS_13StringLiteralEEb.exit.a: ; preds = %.lr.ph.split.preheader.i, %_ZN4llvmneENS_9StringRefES0_.exit.i.i.3, %_ZN4llvmneENS_9StringRefES0_.exit.i.i.2, %_ZN4llvmneENS_9StringRefES0_.exit.i.i.1, %_ZN4llvmneENS_9StringRefES0_.exit.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.i.i.4, %_ZN4llvmneENS_9StringRefES0_.exit.i.i.5
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  %i.fk = load ptr, ptr %i.r, align 8, !tbaa !111, !noalias !200, !nonnull !107, !align !108
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %13, ptr noundef nonnull align 8 dereferenceable(15256) %i.fk, i32 0, i32 noundef 410) #17
  %i.fl = load ptr, ptr %13, align 8, !tbaa !170  ; 2 uses
  %.not.i.i.i143 = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.i143, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i144, label %bb.u

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i144: ; preds = %_ZN4llvm12StringSwitchIbbE5CasesESt16initializer_listINS_13StringLiteralEEb.exit.a
  %i.fm = load ptr, ptr %i.dh, align 8, !tbaa !174
  %i.fn = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.fm) ; 2 uses
  store ptr %i.fn, ptr %13, align 8, !tbaa !170
  br label %bb.u

bb.u:                                             ; preds = %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i144, %_ZN4llvm12StringSwitchIbbE5CasesESt16initializer_listINS_13StringLiteralEEb.exit.a
  %i.fo = phi ptr [ %i.fn, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i144 ], [ %i.fl, %_ZN4llvm12StringSwitchIbbE5CasesESt16initializer_listINS_13StringLiteralEEb.exit.a ] ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 1
  %i.fq = load i8, ptr %i.fo, align 8, !tbaa !175
  %i.fr = zext i8 %i.fq to i64
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.fr
  store i8 1, ptr %i.fs, align 1, !tbaa !187
  %i.ft = load ptr, ptr %13, align 8, !tbaa !170  ; 4 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.fv = load i8, ptr %i.ft, align 8, !tbaa !175 ; 2 uses
  %i.fw = add i8 %i.fv, 1                         ; 2 uses
  store i8 %i.fw, ptr %i.ft, align 8, !tbaa !175
  %i.fx = zext i8 %i.fv to i64
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %i.fx
  store i64 ptrtoint (ptr @.str.9 to i64), ptr %i.fy, align 8, !tbaa !157
  %.sroa.0.0.copyload.i145 = load ptr, ptr %.095317, align 8, !tbaa !156 ; 3 uses
  %.sroa.2.0.copyload.i147 = load i64, ptr %.sroa.239.0..sroa_idx, align 8, !tbaa !157 ; 5 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ft, i64 1
  %i.ga = zext i8 %i.fw to i64
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.ga
  store i8 0, ptr %i.gb, align 1, !tbaa !187
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store ptr %i.di, ptr %3, align 8, !tbaa !203
  %i.gc = icmp eq ptr %.sroa.0.0.copyload.i145, null
  %i.gd = icmp ne i64 %.sroa.2.0.copyload.i147, 0
  %or.cond.i.i.i.i = and i1 %i.gc, %i.gd
  br i1 %or.cond.i.i.i.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.18) #18
  unreachable

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 %.sroa.2.0.copyload.i147, ptr %i.a, align 8, !tbaa !157
  %i.ge = icmp ugt i64 %.sroa.2.0.copyload.i147, 15
  br i1 %i.ge, label %bb.x, label %._crit_edge.i.i.i.i.i

bb.x:                                             ; preds = %bb.w
  %i.gf = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #17 ; 2 uses
  store ptr %i.gf, ptr %3, align 8, !tbaa !158
  %i.gg = load i64, ptr %i.a, align 8, !tbaa !157
  store i64 %i.gg, ptr %i.di, align 8, !tbaa !187
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.x, %bb.w
  %i.gh = phi ptr [ %i.gf, %bb.x ], [ %i.di, %bb.w ] ; 2 uses
  switch i64 %.sroa.2.0.copyload.i147, label %bb.z [
    i64 1, label %bb.y
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit.i
  ]

bb.y:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.gi = load i8, ptr %.sroa.0.0.copyload.i145, align 1, !tbaa !187
  store i8 %i.gi, ptr %i.gh, align 1, !tbaa !187
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit.i

bb.z:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gh, ptr align 1 %.sroa.0.0.copyload.i145, i64 %.sroa.2.0.copyload.i147, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit.i: ; preds = %bb.z, %bb.y, %._crit_edge.i.i.i.i.i
  %i.gj = load i64, ptr %i.a, align 8, !tbaa !157 ; 2 uses
  store i64 %i.gj, ptr %i.dj, align 8, !tbaa !159
  %i.gk = load ptr, ptr %3, align 8, !tbaa !158
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.gj
  store i8 0, ptr %i.gl, align 1, !tbaa !187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.gm = load ptr, ptr %13, align 8, !tbaa !170  ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 96
  %i.go = load i8, ptr %i.gm, align 8, !tbaa !175 ; 2 uses
  %i.gp = add i8 %i.go, 1
  store i8 %i.gp, ptr %i.gm, align 8, !tbaa !175
  %i.gq = zext i8 %i.go to i64
  %i.gr = getelementptr inbounds nuw [32 x i8], ptr %i.gn, i64 %i.gq ; 9 uses
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !158 ; 6 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 16 ; 4 uses
  %i.gu = icmp eq ptr %i.gs, %i.gt
  %i.gv = load ptr, ptr %3, align 8, !tbaa !158   ; 6 uses
  %i.gw = icmp eq ptr %i.gv, %i.di                ; 2 uses
  br i1 %i.gu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i233

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit.i
  br i1 %i.gw, label %bb.aa, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i233: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit.i
  br i1 %i.gw, label %bb.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i233, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237
  %i.gx = load i64, ptr %i.dj, align 8, !tbaa !159 ; 3 uses
  %i.gy = icmp ult i64 %i.gx, 16
  call void @llvm.assume(i1 %i.gy)
  %.not21.i.i = icmp eq ptr %3, %i.gr
  br i1 %.not21.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, label %bb.ab, !prof !204

bb.ab:                                            ; preds = %bb.aa
  switch i64 %i.gx, label %bb.ad [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.gz = load i8, ptr %i.gv, align 1, !tbaa !187
  store i8 %i.gz, ptr %i.gs, align 1, !tbaa !187
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gs, ptr align 1 %i.gv, i64 %i.gx, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.ad, %bb.ac, %bb.ab
  %i.ha = load i64, ptr %i.dj, align 8, !tbaa !159 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  store i64 %i.ha, ptr %i.hb, align 8, !tbaa !159
  %i.hc = load ptr, ptr %i.gr, align 8, !tbaa !158
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 %i.ha
  store i8 0, ptr %i.hd, align 1, !tbaa !187
  %.pre.i.i = load ptr, ptr %3, align 8, !tbaa !158
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237
  %i.he = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  store ptr %i.gv, ptr %i.gr, align 8, !tbaa !158
  %i.hf = load i64, ptr %i.dj, align 8, !tbaa !159
  store i64 %i.hf, ptr %i.he, align 8, !tbaa !159
  %i.hg = load i64, ptr %i.di, align 8, !tbaa !187
  store i64 %i.hg, ptr %i.gt, align 8, !tbaa !187
  br label %bb.af

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i233
  %i.hh = load i64, ptr %i.gt, align 8, !tbaa !187
  store ptr %i.gv, ptr %i.gr, align 8, !tbaa !158
  %i.hi = load i64, ptr %i.dj, align 8, !tbaa !159
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  store i64 %i.hi, ptr %i.hj, align 8, !tbaa !159
  %i.hk = load i64, ptr %i.di, align 8, !tbaa !187
  store i64 %i.hk, ptr %i.gt, align 8, !tbaa !187
  %.not.i1.i = icmp eq ptr %i.gs, null
  br i1 %.not.i1.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.gs, ptr %3, align 8, !tbaa !158
  store i64 %i.hh, ptr %i.di, align 8, !tbaa !187
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.af:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.di, ptr %3, align 8, !tbaa !158
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.af, %bb.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.aa
  %i.hl = phi ptr [ %i.gs, %bb.ae ], [ %i.di, %bb.af ], [ %i.gv, %bb.aa ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  store i64 0, ptr %i.dj, align 8, !tbaa !159
  store i8 0, ptr %i.hl, align 1, !tbaa !187
  %i.hm = load ptr, ptr %3, align 8, !tbaa !158   ; 2 uses
  %i.hn = icmp eq ptr %i.hm, %i.di
  br i1 %i.hn, label %_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i234

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i234: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  %i.ho = load i64, ptr %i.di, align 8, !tbaa !187
  %i.hp = add i64 %i.ho, 1
  call void @_ZdlPvm(ptr noundef %i.hm, i64 noundef %i.hp) #19
  br label %_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE.exit

_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i234
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.hq = load i8, ptr %i.dk, align 8, !tbaa !205, !range !208, !noundef !107
  %i.hr = trunc nuw i8 %i.hq to i1
  br i1 %i.hr, label %bb.ag, label %_ZN5clang17DiagnosticBuilder4EmitEv.exit.i

bb.ag:                                            ; preds = %_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE.exit
  %i.hs = load ptr, ptr %i.dl, align 8, !tbaa !209
  %i.ht = load i8, ptr %i.dm, align 1, !tbaa !210, !range !208, !noundef !107
  %i.hu = trunc nuw i8 %i.ht to i1
  %i.hv = call noundef zeroext i1 @_ZN5clang17DiagnosticsEngine14EmitDiagnosticERKNS_17DiagnosticBuilderEb(ptr noundef nonnull align 8 dereferenceable(15256) %i.hs, ptr noundef nonnull align 8 dereferenceable(66) %13, i1 noundef zeroext %i.hu) #17 ; 0 uses
  store ptr null, ptr %i.dl, align 8, !tbaa !209
  store i8 0, ptr %i.dk, align 8, !tbaa !205
  store i8 0, ptr %i.dm, align 1, !tbaa !210
  br label %_ZN5clang17DiagnosticBuilder4EmitEv.exit.i

_ZN5clang17DiagnosticBuilder4EmitEv.exit.i:       ; preds = %bb.ag, %_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE.exit
  %i.hw = load ptr, ptr %i.dn, align 8, !tbaa !158 ; 2 uses
  %i.hx = icmp eq ptr %i.hw, %i.do
  br i1 %i.hx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN5clang17DiagnosticBuilder4EmitEv.exit.i
  %i.hy = load i64, ptr %i.do, align 8, !tbaa !187
  %i.hz = add i64 %i.hy, 1
  call void @_ZdlPvm(ptr noundef %i.hw, i64 noundef %i.hz) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZN5clang17DiagnosticBuilder4EmitEv.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ia = load ptr, ptr %13, align 8, !tbaa !170  ; 6 uses
  %.not.i.i.i148 = icmp eq ptr %i.ia, null
  br i1 %.not.i.i.i148, label %_ZN5clang17DiagnosticBuilderD2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ib = load ptr, ptr %i.dh, align 8, !tbaa !174 ; 4 uses
  %.not.i.i.i.i149 = icmp eq ptr %i.ib, null
  br i1 %.not.i.i.i.i149, label %_ZN5clang17DiagnosticBuilderD2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ic = icmp uge ptr %i.ia, %i.ib
  %i.id = getelementptr inbounds nuw i8, ptr %i.ib, i64 14848 ; 2 uses
  %i.ie = icmp ule ptr %i.ia, %i.id
  %or.cond.i.i.i.i.i = select i1 %i.ic, i1 %i.ie, i1 false
  br i1 %or.cond.i.i.i.i.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.if = getelementptr inbounds nuw i8, ptr %i.ib, i64 14976 ; 2 uses
  %i.ig = load i32, ptr %i.if, align 8, !tbaa !211 ; 2 uses
  %i.ih = add i32 %i.ig, 1
  store i32 %i.ih, ptr %i.if, align 8, !tbaa !211
  %i.ii = zext i32 %i.ig to i64
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %i.ii
  store ptr %i.ia, ptr %i.ij, align 8, !tbaa !213
  br label %_ZN5clang17DiagnosticBuilderD2Ev.exit

bb.ak:                                            ; preds = %bb.ai
  call void @_ZN5clang17DiagnosticStorageD2Ev(ptr noundef nonnull align 8 dead_on_return(928) dereferenceable(928) %i.ia) #17
  call void @_ZdlPvm(ptr noundef nonnull %i.ia, i64 noundef 928) #19
  br label %_ZN5clang17DiagnosticBuilderD2Ev.exit

_ZN5clang17DiagnosticBuilderD2Ev.exit:            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.ah, %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  br label %bb.an

_ZN4llvm12StringSwitchIbbE5CasesESt16initializer_listINS_13StringLiteralEEb.exit.thread: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.i.i.1, %_ZN4llvmneENS_9StringRefES0_.exit.i.i.2, %_ZN4llvmneENS_9StringRefES0_.exit.i.i.3, %_ZN4llvmneENS_9StringRefES0_.exit.i.i.4, %_ZN4llvmneENS_9StringRefES0_.exit.i.i.5
  %i.ik = call noundef i32 @_ZN5clang19parseXRayInstrValueEN4llvm9StringRefE(ptr nonnull %.sroa.038.0.copyload, i64 %.sroa.239.0.copyload.fr) #17 ; 2 uses
  %i.il = icmp eq i32 %i.ik, 0
  %i.im = load i32, ptr %i.m, align 8, !tbaa !214 ; 2 uses
  br i1 %i.il, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_ZN4llvm12StringSwitchIbbE5CasesESt16initializer_listINS_13StringLiteralEEb.exit.thread
  %i.in = or i32 %i.im, %i.ik
  store i32 %i.in, ptr %i.m, align 8, !tbaa !196
  br label %bb.an

bb.am:                                            ; preds = %_ZN4llvm12StringSwitchIbbE5CasesESt16initializer_listINS_13StringLiteralEEb.exit.thread
  %i.io = and i32 %i.im, -16
  store i32 %i.io, ptr %i.m, align 8, !tbaa !214
  br label %.loopexit309

bb.an:                                            ; preds = %_ZN5clang17DiagnosticBuilderD2Ev.exit, %bb.al
  %i.ip = getelementptr inbounds nuw i8, ptr %.095317, i64 16 ; 2 uses
  %.not100 = icmp eq ptr %i.ip, %i.dv
  br i1 %.not100, label %.loopexit309, label %.lr.ph.split.preheader.i

.loopexit309:                                     ; preds = %bb.an, %bb.t, %bb.am
  %i.iq = load ptr, ptr %12, align 8, !tbaa !197  ; 2 uses
  %i.ir = icmp eq ptr %i.iq, %i.de
  br i1 %i.ir, label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %.loopexit309
  call void @free(ptr noundef %i.iq) #17
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit

_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit: ; preds = %.loopexit309, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.0277.0319, i64 32 ; 2 uses
  %.not304 = icmp eq ptr %i.is, %i.dc
  br i1 %.not304, label %.loopexit311, label %bb.t

.loopexit311:                                     ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  call void @_ZNK4llvm3opt7ArgList15getAllArgValuesB5cxx11ENS0_12OptSpecifierE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %14, ptr noundef nonnull align 8 dereferenceable(176) %2, i32 2130) #17
  %i.it = load ptr, ptr %14, align 8, !tbaa !195  ; 3 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !195 ; 2 uses
  %.not305320 = icmp eq ptr %i.it, %i.iv
  br i1 %.not305320, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit311
  %i.iw = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ix = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.iy = getelementptr inbounds nuw i8, ptr %15, i64 33
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.aq

._crit_edge:                                      ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit155
  %.pre = load ptr, ptr %14, align 8, !tbaa !215  ; 3 uses
  %.pre341.a = load ptr, ptr %i.iu, align 8, !tbaa !216 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pre, %.pre341.a
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ji, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %.pre, %._crit_edge ] ; 3 uses
  %i.jd = load ptr, ptr %.05.i.i.i, align 8, !tbaa !158 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.jf = icmp eq ptr %i.jd, %i.je
  br i1 %i.jf, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.jg = load i64, ptr %i.je, align 8, !tbaa !187
  %i.jh = add i64 %i.jg, 1
  call void @_ZdlPvm(ptr noundef %i.jd, i64 noundef %i.jh) #19
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ji = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i150 = icmp eq ptr %i.ji, %.pre341.a
  br i1 %.not.i.i.i150, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !217

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %14, align 8, !tbaa !215
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i: ; preds = %.loopexit311, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i, %._crit_edge
  %i.jj = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i ], [ %.pre, %._crit_edge ], [ %i.it, %.loopexit311 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.jj, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i
  %i.jk = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !219
  %i.jm = ptrtoint ptr %i.jl to i64
  %i.jn = ptrtoint ptr %i.jj to i64
  %i.jo = sub i64 %i.jm, %i.jn
  call void @_ZdlPvm(ptr noundef nonnull %i.jj, i64 noundef %i.jo) #19
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #17
  call void @_ZNK4llvm3opt7ArgList15getAllArgValuesB5cxx11ENS0_12OptSpecifierE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %17, ptr noundef nonnull align 8 dereferenceable(176) %2, i32 2140) #17
  %i.jp = load ptr, ptr %17, align 8, !tbaa !195  ; 3 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !195 ; 2 uses
  %.not306322 = icmp eq ptr %i.jp, %i.jr
  br i1 %.not306322, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i164, label %.lr.ph324

.lr.ph324:                                        ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.js = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.jt = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.ju = getelementptr inbounds nuw i8, ptr %18, i64 33
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.be

bb.aq:                                            ; preds = %.lr.ph, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit155
  %.sroa.0264.0321 = phi ptr [ %i.it, %.lr.ph ], [ %i.lq, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit155 ] ; 10 uses
  %i.jz = load ptr, ptr %i.iw, align 8, !tbaa !220 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  store i8 4, ptr %i.ix, align 8, !tbaa !221
  store i8 1, ptr %i.iy, align 1, !tbaa !224
  store ptr %.sroa.0264.0321, ptr %15, align 8, !tbaa !187
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !225
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 96
  %i.kc = load ptr, ptr %i.kb, align 8
  %i.kd = call noundef zeroext i1 %i.kc(ptr noundef nonnull align 8 dereferenceable(12) %i.jz, ptr noundef nonnull align 8 dereferenceable(34) %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  br i1 %i.kd, label %bb.ar, label %bb.bc

bb.ar:                                            ; preds = %bb.aq
  %i.ke = load ptr, ptr %i.iz, align 8, !tbaa !216 ; 8 uses
  %i.kf = load ptr, ptr %i.ja, align 8, !tbaa !219
  %.not.i151 = icmp eq ptr %i.ke, %i.kf
  br i1 %.not.i151, label %bb.aw, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ke, i64 16 ; 3 uses
  store ptr %i.kg, ptr %i.ke, align 8, !tbaa !203
  %i.kh = load ptr, ptr %.sroa.0264.0321, align 8, !tbaa !158 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.sroa.0264.0321, i64 8
  %i.kj = load i64, ptr %i.ki, align 8, !tbaa !159 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #17
  store i64 %i.kj, ptr %i.h, align 8, !tbaa !157
  %i.kk = icmp ugt i64 %i.kj, 15
  br i1 %i.kk, label %bb.at, label %._crit_edge.i.i.i

bb.at:                                            ; preds = %bb.as
  %i.kl = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ke, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef 0) #17 ; 2 uses
  store ptr %i.kl, ptr %i.ke, align 8, !tbaa !158
  %i.km = load i64, ptr %i.h, align 8, !tbaa !157
  store i64 %i.km, ptr %i.kg, align 8, !tbaa !187
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.at, %bb.as
  %i.kn = phi ptr [ %i.kl, %bb.at ], [ %i.kg, %bb.as ] ; 2 uses
  switch i64 %i.kj, label %bb.av [
    i64 1, label %bb.au
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.au:                                            ; preds = %._crit_edge.i.i.i
  %i.ko = load i8, ptr %i.kh, align 1, !tbaa !187
  store i8 %i.ko, ptr %i.kn, align 1, !tbaa !187
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.av:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kn, ptr align 1 %i.kh, i64 %i.kj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.av, %bb.au, %._crit_edge.i.i.i
  %i.kp = load i64, ptr %i.h, align 8, !tbaa !157 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  store i64 %i.kp, ptr %i.kq, align 8, !tbaa !159
  %i.kr = load ptr, ptr %i.ke, align 8, !tbaa !158
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.kp
  store i8 0, ptr %i.ks, align 1, !tbaa !187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #17
  %i.kt = load ptr, ptr %i.iz, align 8, !tbaa !216
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 32
  store ptr %i.ku, ptr %i.iz, align 8, !tbaa !216
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.aw:                                            ; preds = %bb.ar
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.ke, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0264.0321)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.aw
  %i.kv = load ptr, ptr %i.jb, align 8, !tbaa !216 ; 8 uses
  %i.kw = load ptr, ptr %i.jc, align 8, !tbaa !219
  %.not.i152 = icmp eq ptr %i.kv, %i.kw
  br i1 %.not.i152, label %bb.bb, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kv, i64 16 ; 3 uses
  store ptr %i.kx, ptr %i.kv, align 8, !tbaa !203
  %i.ky = load ptr, ptr %.sroa.0264.0321, align 8, !tbaa !158 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.sroa.0264.0321, i64 8
  %i.la = load i64, ptr %i.kz, align 8, !tbaa !159 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #17
  store i64 %i.la, ptr %i.g, align 8, !tbaa !157
end_hunk_0
begin_hunk_1_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_less_iterEEvT_SF_T0_T1_:bb.a

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit16.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i12.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i9.i.i
  %.0.i.i.i11.i.i = phi i32 [ %i.ag, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i9.i.i ], [ %.0.i6.i.i.i15.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i12.i.i ]
  %i.ai = icmp slt i32 %.0.i.i.i11.i.i, 0
  br i1 %i.ai, label %.preheader.i.i, label %bb.e, !llvm.loop !311

bb.e:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit16.i.i
  %i.aj = icmp ult ptr %.sroa.019.1.i.i, %.sroa.0.1.i.i
  br i1 %i.aj, label %bb.f, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEET_SF_SF_T0_.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.019.1.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.1.i.i) #17
  br label %bb.c, !llvm.loop !312

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEET_SF_SF_T0_.exit: ; preds = %bb.e
  %i.ak = add nsw i64 %.01522, -1                 ; 3 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_less_iterEEvT_SF_T0_T1_(ptr %.sroa.019.1.i.i, ptr %storemerge1423, i64 noundef %i.ak)
  %i.al = ptrtoint ptr %.sroa.019.1.i.i to i64
  %i.am = sub i64 %i.al, %i.a
  %i.an = ashr exact i64 %i.am, 5                 ; 2 uses
  %i.ao = icmp sgt i64 %i.an, 16
  br i1 %i.ao, label %bb.b, label %.loopexit, !llvm.loop !308

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEET_SF_SF_T0_.exit, %bb.a, %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 5                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2
  %i.g = lshr i64 %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 10 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, %bb.b
  %.07 = phi i64 [ %i.g, %bb.b ], [ %i.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.l = getelementptr inbounds [32 x i8], ptr %0, i64 %.07 ; 8 uses
  store ptr %i.h, ptr %3, align 8, !tbaa !203
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !158  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 7 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread: ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !159  ; 3 uses
  %i.r = icmp ult i64 %i.q, 16
  call void @llvm.assume(i1 %i.r)
  %i.s = add nuw nsw i64 %i.q, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.h, ptr noundef nonnull align 8 dereferenceable(1) %i.n, i64 %i.s, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.n, ptr %i.l, align 8, !tbaa !158
  store i64 0, ptr %i.t, align 8, !tbaa !159
  store i8 0, ptr %i.n, align 8, !tbaa !187
  store ptr %i.j, ptr %4, align 8, !tbaa !203
  br label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c
  %i.u = load i64, ptr %i.n, align 8, !tbaa !187
  store i64 %i.u, ptr %i.h, align 8, !tbaa !187
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !159 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.n, ptr %i.l, align 8, !tbaa !158
  store i64 0, ptr %i.v, align 8, !tbaa !159
  store i8 0, ptr %i.n, align 8, !tbaa !187
  store ptr %i.j, ptr %4, align 8, !tbaa !203
  %i.w = icmp eq ptr %i.m, %i.h
  br i1 %i.w, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.x = phi i64 [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 3 uses
  %i.y = icmp ult i64 %i.x, 16
  call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.j, ptr noundef nonnull align 8 dereferenceable(1) %i.h, i64 %i.z, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  store ptr %i.m, ptr %4, align 8, !tbaa !158
  %i.aa = load i64, ptr %i.h, align 8, !tbaa !187
  store i64 %i.aa, ptr %i.j, align 8, !tbaa !187
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8
  %i.ab = phi i64 [ %i.x, %bb.d ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8 ]
  store i64 %i.ab, ptr %i.k, align 8, !tbaa !159
  store ptr %i.h, ptr %3, align 8, !tbaa !158
  store i64 0, ptr %i.i, align 8, !tbaa !159
  store i8 0, ptr %i.h, align 8, !tbaa !187
  call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_less_iterEEvT_T0_SG_T1_T2_(ptr nonnull %0, i64 noundef %.07, i64 noundef %i.d, ptr nofree noundef nonnull align 8 dereferenceable(32) %4)
  %i.ac = load ptr, ptr %4, align 8, !tbaa !158   ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.j
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9
  %i.ae = load i64, ptr %i.j, align 8, !tbaa !187
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.not = icmp eq i64 %.07, 0
  %i.ag = add nsw i64 %.07, -1
  %i.ah = load ptr, ptr %3, align 8, !tbaa !158   ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.h
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aj = load i64, ptr %i.h, align 8, !tbaa !187
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !313

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_RT0_(ptr %0, ptr %1, ptr %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #5 comdat {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 10 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !203
  %i.b = load ptr, ptr %2, align 8, !tbaa !158    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 9 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !159  ; 3 uses
  %i.g = icmp ult i64 %i.f, 16
  call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.b, ptr %4, align 8, !tbaa !158
  %i.i = load i64, ptr %i.c, align 8, !tbaa !187
  store i64 %i.i, ptr %i.a, align 8, !tbaa !187
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !159
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i1: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, %bb.b
  %i.j = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ %i.f, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 %i.j, ptr %i.l, align 8, !tbaa !159
  store ptr %i.c, ptr %2, align 8, !tbaa !158
  store i64 0, ptr %i.k, align 8, !tbaa !159
  store i8 0, ptr %i.c, align 8, !tbaa !187
  %i.m = load ptr, ptr %0, align 8, !tbaa !158    ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !159  ; 3 uses
  %i.r = icmp ult i64 %i.q, 16
  call void @llvm.assume(i1 %i.r)
  %.not21.i = icmp eq ptr %0, %2
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.d, !prof !204

bb.d:                                             ; preds = %bb.c
  switch i64 %i.q, label %bb.f [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.s = load i8, ptr %i.m, align 1, !tbaa !187
  store i8 %i.s, ptr %i.c, align 8, !tbaa !187
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.c, ptr align 1 %i.m, i64 %i.q, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.t = load i64, ptr %i.p, align 8, !tbaa !159  ; 2 uses
  store i64 %i.t, ptr %i.k, align 8, !tbaa !159
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.t
  store i8 0, ptr %i.u, align 1, !tbaa !187
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !158
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i1
  store ptr %i.m, ptr %2, align 8, !tbaa !158
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !159
  store i64 %i.w, ptr %i.k, align 8, !tbaa !159
  %i.x = load i64, ptr %i.n, align 8, !tbaa !187
  store i64 %i.x, ptr %i.c, align 8, !tbaa !187
  store ptr %i.n, ptr %0, align 8, !tbaa !158
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.g
  %i.y = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.n, %bb.g ], [ %i.m, %bb.c ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.z, align 8, !tbaa !159
  store i8 0, ptr %i.y, align 1, !tbaa !187
  %i.aa = ptrtoint ptr %1 to i64
  %i.ab = ptrtoint ptr %0 to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 5
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.ae, ptr %5, align 8, !tbaa !203
  %i.af = load ptr, ptr %4, align 8, !tbaa !158   ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.a
  br i1 %i.ag, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i2

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ah = load i64, ptr %i.l, align 8, !tbaa !159 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 16
  call void @llvm.assume(i1 %i.ai)
  %i.aj = add nuw nsw i64 %i.ah, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ae, ptr noundef nonnull align 8 dereferenceable(1) %i.a, i64 %i.aj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  store ptr %i.af, ptr %5, align 8, !tbaa !158
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !187
  store i64 %i.ak, ptr %i.ae, align 8, !tbaa !187
  %.pre11 = load i64, ptr %i.l, align 8, !tbaa !159
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit3: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i2
  %i.al = phi i64 [ %i.ah, %bb.h ], [ %.pre11, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i2 ]
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.al, ptr %i.am, align 8, !tbaa !159
  store ptr %i.a, ptr %4, align 8, !tbaa !158
  store i64 0, ptr %i.l, align 8, !tbaa !159
  store i8 0, ptr %i.a, align 8, !tbaa !187
  call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_less_iterEEvT_T0_SG_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.ad, ptr nofree noundef nonnull align 8 dereferenceable(32) %5)
  %i.an = load ptr, ptr %5, align 8, !tbaa !158   ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.ae
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit3
  %i.ap = load i64, ptr %i.ae, align 8, !tbaa !187
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ar = load ptr, ptr %4, align 8, !tbaa !158   ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.a
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.at = load i64, ptr %i.a, align 8, !tbaa !187
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_less_iterEEvT_T0_SG_T1_T2_(ptr %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef align 8 dereferenceable(32) %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_val", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %.043 = phi i64 [ %spec.select, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit ], [ %1, %bb.a ] ; 3 uses
  %i.d = shl i64 %.043, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 2 uses
  %i.f = getelementptr inbounds [32 x i8], ptr %0, i64 %i.e ; 2 uses
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [32 x i8], ptr %0, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !159  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !159  ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.j) ; 2 uses
  %i.m = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.m, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %.lr.ph
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !158
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !158
  %i.p = tail call i32 @memcmp(ptr noundef %i.o, ptr noundef %i.n, i64 noundef %.sroa.speculated.i.i.i) #17 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %.lr.ph
  %i.q = sub i64 %i.j, %i.l
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.q, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.p, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.r = icmp slt i32 %.0.i.i.i, 0
  %spec.select = select i1 %i.r, i64 %i.g, i64 %i.e ; 5 uses
  %i.s = getelementptr inbounds [32 x i8], ptr %0, i64 %spec.select ; 9 uses
  %i.t = getelementptr inbounds [32 x i8], ptr %0, i64 %.043 ; 8 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !158  ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !158  ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 4 uses
  %i.z = icmp eq ptr %i.x, %i.y                   ; 2 uses
  br i1 %i.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit
  br i1 %i.z, label %bb.b, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit
  br i1 %i.z, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !159 ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 16
  tail call void @llvm.assume(i1 %i.ac)
  %.not21.i = icmp eq i64 %spec.select, %.043
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.c, !prof !204

bb.c:                                             ; preds = %bb.b
  switch i64 %i.ab, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.ad = load i8, ptr %i.x, align 1, !tbaa !187
  store i8 %i.ad, ptr %i.u, align 1, !tbaa !187
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr align 1 %i.x, i64 %i.ab, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.ae = load i64, ptr %i.aa, align 8, !tbaa !159 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !159
  %i.ag = load ptr, ptr %i.t, align 8, !tbaa !158
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  store i8 0, ptr %i.ah, align 1, !tbaa !187
  %.pre.i = load ptr, ptr %i.s, align 8, !tbaa !158
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.x, ptr %i.t, align 8, !tbaa !158
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ak = load <2 x i64>, ptr %i.aj, align 8, !tbaa !187
  store <2 x i64> %i.ak, ptr %i.ai, align 8, !tbaa !187
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.al = load i64, ptr %i.v, align 8, !tbaa !187
  store ptr %i.x, ptr %i.t, align 8, !tbaa !158
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ao = load <2 x i64>, ptr %i.am, align 8, !tbaa !187
  store <2 x i64> %i.ao, ptr %i.an, align 8, !tbaa !187
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.u, ptr %i.s, align 8, !tbaa !158
  store i64 %i.al, ptr %i.y, align 8, !tbaa !187
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
end_hunk_1
