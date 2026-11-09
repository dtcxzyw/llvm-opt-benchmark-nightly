Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Pragma?download=true
inline.NumInlined: 2935
inline.NumDeleted: 1302
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN12_GLOBAL__N_120PragmaWarningHandler12HandlePragmaERN5clang12PreprocessorENS1_16PragmaIntroducerERNS1_5TokenE:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1200
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !294  ; 9 uses
  tail call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %1, ptr noundef nonnull align 8 dereferenceable(20) %3) #23
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 11 uses
  %i.h = load i16, ptr %i.g, align 8, !tbaa !40
  %.not274 = icmp eq i16 %i.h, 22
  br i1 %.not274, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !282, !noalias !1088
  %i.k = load i32, ptr %3, align 8, !tbaa !283, !noalias !1088
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %4, ptr noundef nonnull align 8 dereferenceable(15256) %i.j, i32 %i.k, i32 noundef 1434) #23
  %i.l = load ptr, ptr %4, align 8, !tbaa !289    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i, label %_ZNK5clang17DiagnosticBuilderlsIA2_cEERKS0_RKT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !290
  %i.o = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.n) ; 2 uses
  store ptr %i.o, ptr %4, align 8, !tbaa !289
  br label %_ZNK5clang17DiagnosticBuilderlsIA2_cEERKS0_RKT_.exit

_ZNK5clang17DiagnosticBuilderlsIA2_cEERKS0_RKT_.exit: ; preds = %bb.b, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i
  %i.p = phi ptr [ %i.o, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i ], [ %i.l, %bb.b ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.r = load i8, ptr %i.p, align 8, !tbaa !357
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.s
  store i8 1, ptr %i.t, align 1, !tbaa !23
  %i.u = load ptr, ptr %4, align 8, !tbaa !289    ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i8, ptr %i.u, align 8, !tbaa !357   ; 2 uses
  %i.x = add i8 %i.w, 1
  store i8 %i.x, ptr %i.u, align 8, !tbaa !357
  %i.y = zext i8 %i.w to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.y
  store i64 ptrtoint (ptr @.str.2 to i64), ptr %i.z, align 8, !tbaa !20
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %.critedge136

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %1, ptr noundef nonnull align 8 dereferenceable(20) %3) #23
  %i.aa = load i16, ptr %i.g, align 8, !tbaa !40  ; 2 uses
  %i.ab = add i16 %i.aa, -7
  %i.ac = icmp ult i16 %i.ab, 13
  %i.ad = icmp eq i16 %i.aa, 1
  %or.cond.i = or i1 %i.ad, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not129275 = icmp eq ptr %i.af, null
  %.not129 = select i1 %or.cond.i, i1 true, i1 %.not129275
  br i1 %.not129, label %.critedge138, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !43 ; 3 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !35
  %trunc = trunc i64 %i.ai to i32
  switch i32 %trunc, label %.critedge138 [
    i32 4, label %_ZNK5clang14IdentifierInfo5isStrILm5EEEbRAT__Kc.exit
    i32 3, label %_ZNK5clang14IdentifierInfo5isStrILm4EEEbRAT__Kc.exit
  ]

_ZNK5clang14IdentifierInfo5isStrILm5EEEbRAT__Kc.exit: ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ak = load i32, ptr %i.aj, align 1
  %i.al = icmp ne i32 %i.ak, 1752397168
  %i.am = zext i1 %i.al to i32
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.e, label %.critedge138

bb.e:                                             ; preds = %_ZNK5clang14IdentifierInfo5isStrILm5EEEbRAT__Kc.exit
  tail call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %1, ptr noundef nonnull align 8 dereferenceable(20) %3) #23
  %i.ao = load i16, ptr %i.g, align 8, !tbaa !40
  %i.ap = icmp eq i16 %i.ao, 67
  br i1 %i.ap, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %1, ptr noundef nonnull align 8 dereferenceable(20) %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.aq = load i16, ptr %i.g, align 8, !tbaa !40
  %i.ar = icmp eq i16 %i.aq, 7
  br i1 %i.ar, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.as = call noundef zeroext i1 @_ZN5clang12Preprocessor25parseSimpleIntegerLiteralERNS_5TokenERm(ptr noundef nonnull align 8 dereferenceable(3344) %1, ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #23
  br i1 %i.as, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.at = load i64, ptr %i.a, align 8, !tbaa !20
  %i.au = trunc i64 %i.at to i32                  ; 2 uses
  %or.cond = icmp ult i32 %i.au, 5
  br i1 %or.cond, label %.critedge, label %.thread

.thread:                                          ; preds = %bb.f, %bb.g, %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !282, !noalias !1089
  %i.ax = load i32, ptr %3, align 8, !tbaa !283, !noalias !1089
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %5, ptr noundef nonnull align 8 dereferenceable(15256) %i.aw, i32 %i.ax, i32 noundef 1436) #23
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %.critedge136

.critedge:                                        ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.i

bb.i:                                             ; preds = %.critedge, %bb.e
  %.1115 = phi i32 [ %i.au, %.critedge ], [ -1, %bb.e ]
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !282
  call void @_ZN5clang17DiagnosticsEngine12pushMappingsENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(15256) %i.az, i32 %i.d) #23
  %.not134 = icmp eq ptr %i.f, null
  br i1 %.not134, label %.loopexit283, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = load ptr, ptr %i.f, align 8, !tbaa !14
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 208
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i32 %i.d, i32 noundef %.1115) #23
  br label %.loopexit283

_ZNK5clang14IdentifierInfo5isStrILm4EEEbRAT__Kc.exit: ; preds = %bb.d
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %i.be = load i16, ptr %i.bd, align 1
  %i.bf = xor i16 %i.be, 28528
  %i.bg = getelementptr i8, ptr %i.bd, i64 2
  %i.bh = load i8, ptr %i.bg, align 1
  %i.bi = zext i8 %i.bh to i16
  %i.bj = xor i16 %i.bi, 112
  %i.bk = or i16 %i.bf, %i.bj
  %i.bl = icmp ne i16 %i.bk, 0
  %i.bm = zext i1 %i.bl to i32
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.k, label %.critedge138

bb.k:                                             ; preds = %_ZNK5clang14IdentifierInfo5isStrILm4EEEbRAT__Kc.exit
  tail call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %1, ptr noundef nonnull align 8 dereferenceable(20) %3) #23
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !282
  %i.bq = tail call noundef zeroext i1 @_ZN5clang17DiagnosticsEngine11popMappingsENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(15256) %i.bp, i32 %i.d) #23
  br i1 %i.bq, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.br = load ptr, ptr %i.bo, align 8, !tbaa !282, !noalias !1090
  %i.bs = load i32, ptr %3, align 8, !tbaa !283, !noalias !1090
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %6, ptr noundef nonnull align 8 dereferenceable(15256) %i.br, i32 %i.bs, i32 noundef 1417) #23
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %6) #23
  br label %.loopexit283

bb.m:                                             ; preds = %bb.k
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %.loopexit283, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bt = load ptr, ptr %i.f, align 8, !tbaa !14
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 216
  %i.bv = load ptr, ptr %i.bu, align 8
  tail call void %i.bv(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i32 %i.d) #23
  br label %.loopexit283

.critedge138:                                     ; preds = %bb.d, %_ZNK5clang14IdentifierInfo5isStrILm5EEEbRAT__Kc.exit, %bb.c, %_ZNK5clang14IdentifierInfo5isStrILm4EEEbRAT__Kc.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 6 uses
  %i.by = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 5 uses
  %.not132 = icmp eq ptr %i.f, null
  br label %bb.o

bb.o:                                             ; preds = %.critedge138, %bb.as
  %i.ca = load i16, ptr %i.g, align 8, !tbaa !40  ; 3 uses
  %i.cb = add i16 %i.ca, -7
  %i.cc = icmp ult i16 %i.cb, 13
  %i.cd = icmp eq i16 %i.ca, 1
  %or.cond.i142 = or i1 %i.cd, %i.cc
  %i.ce = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not130276 = icmp eq ptr %i.ce, null
  %.not130 = select i1 %or.cond.i142, i1 true, i1 %.not130276
  br i1 %.not130, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.cf = icmp eq i16 %i.ca, 7
  br i1 %i.cf, label %bb.x, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cg = load ptr, ptr %i.bz, align 8, !tbaa !282, !noalias !1091
  %i.ch = load i32, ptr %3, align 8, !tbaa !283, !noalias !1091
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %7, ptr noundef nonnull align 8 dereferenceable(15256) %i.cg, i32 %i.ch, i32 noundef 1437) #23
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %7) #23
  br label %.critedge136

bb.r:                                             ; preds = %bb.o
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !43 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16 ; 8 uses
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !35 ; 2 uses
  %trunc289 = trunc i64 %i.cl to i32
  switch i32 %trunc289, label %14 [
    i32 7, label %bb.s
    i32 5, label %bb.u
    i32 4, label %bb.v
  ]

bb.s:                                             ; preds = %bb.r
  %i.cm = load i32, ptr %i.ck, align 1
  %i.cn = xor i32 %i.cm, 1634100580
  %i.co = getelementptr i8, ptr %i.ck, i64 3
  %i.cp = load i32, ptr %i.co, align 1
  %i.cq = xor i32 %i.cp, 1953264993
  %i.cr = or i32 %i.cn, %i.cq
  %i.cs = icmp ne i32 %i.cr, 0
  %i.ct = zext i1 %i.cs to i32
  %.not.i.i = icmp eq i32 %i.ct, 0
  br i1 %.not.i.i, label %_ZN4llvm12StringSwitchIiiE4CaseENS_13StringLiteralEi.exit175, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cu = load i32, ptr %i.ck, align 1
  %i.cv = xor i32 %i.cu, 1634953572
  %i.cw = getelementptr i8, ptr %i.ck, i64 3
  %i.cx = load i32, ptr %i.cw, align 1
  %i.cy = xor i32 %i.cx, 1701601889
  %i.cz = or i32 %i.cv, %i.cy
  %i.da = icmp ne i32 %i.cz, 0
  %i.db = zext i1 %i.da to i32
  %.not.i.i149 = icmp eq i32 %i.db, 0
  br i1 %.not.i.i149, label %_ZN4llvm12StringSwitchIiiE4CaseENS_13StringLiteralEi.exit175, label %.thread260

bb.u:                                             ; preds = %bb.r
  %i.dc = load i32, ptr %i.ck, align 1
  %i.dd = xor i32 %i.dc, 1869771365
  %i.de = getelementptr i8, ptr %i.ck, i64 4
  %i.df = load i8, ptr %i.de, align 1
  %i.dg = zext i8 %i.df to i32
  %i.dh = xor i32 %i.dg, 114
  %i.di = or i32 %i.dd, %i.dh
  %i.dj = icmp ne i32 %i.di, 0
  %i.dk = zext i1 %i.dj to i32
  %.not.i.i157 = icmp eq i32 %i.dk, 0
  br i1 %.not.i.i157, label %_ZN4llvm12StringSwitchIiiE4CaseENS_13StringLiteralEi.exit175, label %.thread260

bb.v:                                             ; preds = %bb.r
  %i.dl = load i32, ptr %i.ck, align 1
  %i.dm = icmp ne i32 %i.dl, 1701015151
  %i.dn = zext i1 %i.dm to i32
  %.not.i.i165 = icmp eq i32 %i.dn, 0
  br i1 %.not.i.i165, label %_ZN4llvm12StringSwitchIiiE4CaseENS_13StringLiteralEi.exit175, label %.thread260

14:                                               ; preds = %bb.r
  %15 = and i64 %i.cl, 4294967295
  %.not.i.i.i.i171 = icmp eq i64 %15, 8
  br i1 %.not.i.i.i.i171, label %bb.w, label %.thread260

bb.w:                                             ; preds = %14
  %i.do = load i64, ptr %i.ck, align 1
  %i.dp = icmp ne i64 %i.do, 8319104478870533491
  %i.dq = zext i1 %i.dp to i32
  %.not.i.i173 = icmp eq i32 %i.dq, 0
  br i1 %.not.i.i173, label %_ZN4llvm12StringSwitchIiiE4CaseENS_13StringLiteralEi.exit175, label %.thread260

_ZN4llvm12StringSwitchIiiE4CaseENS_13StringLiteralEi.exit175: ; preds = %bb.t, %bb.s, %bb.w, %bb.v, %bb.u
  %.sroa.14.4 = phi i32 [ 4, %bb.w ], [ 3, %bb.v ], [ 2, %bb.u ], [ 1, %bb.t ], [ 0, %bb.s ]
  call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %1, ptr noundef nonnull align 8 dereferenceable(20) %3) #23
  br label %bb.aa

bb.x:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.dr = call noundef zeroext i1 @_ZN5clang12Preprocessor25parseSimpleIntegerLiteralERNS_5TokenERm(ptr noundef nonnull align 8 dereferenceable(3344) %1, ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #23
  br i1 %i.dr, label %bb.y, label %.thread268

bb.y:                                             ; preds = %bb.x
  %i.ds = load i64, ptr %i.b, align 8, !tbaa !20  ; 2 uses
  %i.dt = add i64 %i.ds, -1
  %i.du = icmp ult i64 %i.dt, 4
  br i1 %i.du, label %bb.z, label %.thread268

.thread268:                                       ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %.thread260

bb.z:                                             ; preds = %bb.y
  %i.dv = trunc nuw nsw i64 %i.ds to i32
  %i.dw = add nuw nsw i32 %i.dv, 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.aa

.thread260:                                       ; preds = %bb.t, %bb.u, %bb.v, %14, %bb.w, %.thread268
  %i.dx = load ptr, ptr %i.bz, align 8, !tbaa !282, !noalias !1092
  %i.dy = load i32, ptr %3, align 8, !tbaa !283, !noalias !1092
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %8, ptr noundef nonnull align 8 dereferenceable(15256) %i.dx, i32 %i.dy, i32 noundef 1437) #23
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %8) #23
  br label %.critedge136

bb.aa:                                            ; preds = %bb.z, %_ZN4llvm12StringSwitchIiiE4CaseENS_13StringLiteralEi.exit175
  %.2118266 = phi i32 [ %.sroa.14.4, %_ZN4llvm12StringSwitchIiiE4CaseENS_13StringLiteralEi.exit175 ], [ %i.dw, %bb.z ] ; 2 uses
  %i.dz = load i16, ptr %i.g, align 8, !tbaa !40
  %.not278 = icmp eq i16 %i.dz, 63
  br i1 %.not278, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.ea = load ptr, ptr %i.bz, align 8, !tbaa !282, !noalias !1093
  %i.eb = load i32, ptr %3, align 8, !tbaa !283, !noalias !1093
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %9, ptr noundef nonnull align 8 dereferenceable(15256) %i.ea, i32 %i.eb, i32 noundef 1434) #23
  %i.ec = load ptr, ptr %9, align 8, !tbaa !289   ; 2 uses
  %.not.i.i.i176 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i176, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i177, label %_ZNK5clang17DiagnosticBuilderlsIA2_cEERKS0_RKT_.exit178

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i177: ; preds = %bb.ab
  %i.ed = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !290
  %i.ef = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.ee) ; 2 uses
  store ptr %i.ef, ptr %9, align 8, !tbaa !289
  br label %_ZNK5clang17DiagnosticBuilderlsIA2_cEERKS0_RKT_.exit178

_ZNK5clang17DiagnosticBuilderlsIA2_cEERKS0_RKT_.exit178: ; preds = %bb.ab, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i177
  %i.eg = phi ptr [ %i.ef, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i177 ], [ %i.ec, %bb.ab ] ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 1
  %i.ei = load i8, ptr %i.eg, align 8, !tbaa !357
  %i.ej = zext i8 %i.ei to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ej
  store i8 1, ptr %i.ek, align 1, !tbaa !23
  %i.el = load ptr, ptr %9, align 8, !tbaa !289   ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.en = load i8, ptr %i.el, align 8, !tbaa !357 ; 2 uses
  %i.eo = add i8 %i.en, 1
  store i8 %i.eo, ptr %i.el, align 8, !tbaa !357
  %i.ep = zext i8 %i.en to i64
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.ep
  store i64 ptrtoint (ptr @.str.83 to i64), ptr %i.eq, align 8, !tbaa !20
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %.critedge136

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  store ptr %i.bw, ptr %10, align 8, !tbaa !309
  store i32 0, ptr %i.bx, align 8, !tbaa !310
  store i32 4, ptr %i.by, align 4, !tbaa !311
  call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %1, ptr noundef nonnull align 8 dereferenceable(20) %3) #23
  %i.er = load i16, ptr %i.g, align 8, !tbaa !40
  %i.es = icmp eq i16 %i.er, 7
  br i1 %i.es, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.ac, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.et = call noundef zeroext i1 @_ZN5clang12Preprocessor25parseSimpleIntegerLiteralERNS_5TokenERm(ptr noundef nonnull align 8 dereferenceable(3344) %1, ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c) #23
  %i.eu = load i64, ptr %i.c, align 8             ; 2 uses
  %i.ev = add i64 %i.eu, -1
  %i.ew = icmp ult i64 %i.ev, 2147483647
  %or.cond7.not = select i1 %i.et, i1 %i.ew, i1 false
  br i1 %or.cond7.not, label %bb.ad, label %bb.an

bb.ad:                                            ; preds = %.lr.ph
  %i.ex = trunc nuw nsw i64 %i.eu to i32          ; 2 uses
  %i.ey = load i32, ptr %i.bx, align 8, !tbaa !310 ; 2 uses
  %i.ez = load i32, ptr %i.by, align 4, !tbaa !311
  %.not.i = icmp ult i32 %i.ey, %i.ez
  br i1 %.not.i, label %bb.af, label %bb.ae, !prof !315

bb.ae:                                            ; preds = %bb.ad
  call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef %i.ex)
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit

bb.af:                                            ; preds = %bb.ad
  %i.fa = zext i32 %i.ey to i64
  %i.fb = load ptr, ptr %10, align 8, !tbaa !309
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.fa
  store i32 %i.ex, ptr %i.fc, align 1
  %i.fd = load i32, ptr %i.bx, align 8, !tbaa !310
  %i.fe = add i32 %i.fd, 1
  store i32 %i.fe, ptr %i.bx, align 8, !tbaa !310
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit: ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  %i.ff = load i16, ptr %i.g, align 8, !tbaa !40
  %i.fg = icmp eq i16 %i.ff, 7
  br i1 %i.fg, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit, %bb.ac
  %i.fh = icmp eq i32 %.2118266, 1                ; 2 uses
  %spec.store.select = zext i1 %i.fh to i8
  br i1 %i.fh, label %bb.ag, label %.loopexit

bb.ag:                                            ; preds = %._crit_edge
  %i.fi = load ptr, ptr %10, align 8, !tbaa !309  ; 2 uses
  %i.fj = load i32, ptr %i.bx, align 8, !tbaa !310 ; 2 uses
  %i.fk = zext i32 %i.fj to i64
  %.idx = shl nuw nsw i64 %i.fk, 2
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 %.idx
  %.not131284 = icmp eq i32 %i.fj, 0
  br i1 %.not131284, label %.loopexit, label %.lr.ph287

.lr.ph287:                                        ; preds = %bb.ag, %bb.ai
  %.0113285 = phi ptr [ %i.fr, %bb.ai ], [ %i.fi, %bb.ag ] ; 2 uses
  %i.fm = load i32, ptr %.0113285, align 4, !tbaa !319
  %i.fn = call i64 @_ZN5clang24diagGroupFromCLWarningIDEj(i32 noundef %i.fm) #23 ; 2 uses
  %i.fo = and i64 %i.fn, 4294967296
  %.not279 = icmp eq i64 %i.fo, 0
  br i1 %.not279, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph287
  %.sroa.0184.0.extract.trunc = trunc i64 %i.fn to i32
  %i.fp = load ptr, ptr %i.bz, align 8, !tbaa !282
  %i.fq = call noundef zeroext i1 @_ZN5clang17DiagnosticsEngine19setSeverityForGroupENS_4diag6FlavorENS1_5GroupENS1_8SeverityENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(15256) %i.fp, i32 noundef 0, i32 noundef %.sroa.0184.0.extract.trunc, i8 noundef zeroext %spec.store.select, i32 %i.d) #23 ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.lr.ph287
  %i.fr = getelementptr inbounds nuw i8, ptr %.0113285, i64 4 ; 2 uses
  %.not131 = icmp eq ptr %i.fr, %i.fl
  br i1 %.not131, label %.loopexit, label %.lr.ph287

.loopexit:                                        ; preds = %bb.ai, %bb.ag, %._crit_edge
  br i1 %.not132, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.loopexit
  %i.fs = load ptr, ptr %10, align 8, !tbaa !309
  %i.ft = load i32, ptr %i.bx, align 8, !tbaa !310
  %i.fu = zext i32 %i.ft to i64
  %i.fv = load ptr, ptr %i.f, align 8, !tbaa !14
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 200
  %i.fx = load ptr, ptr %i.fw, align 8
  call void %i.fx(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i32 %i.d, i32 noundef %.2118266, ptr %i.fs, i64 %i.fu) #23
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.loopexit
  %i.fy = load i16, ptr %i.g, align 8, !tbaa !40
  %.not280 = icmp eq i16 %i.fy, 64
  br i1 %.not280, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fz = load ptr, ptr %10, align 8, !tbaa !309  ; 2 uses
  %i.ga = icmp eq ptr %i.fz, %i.bw
  br i1 %i.ga, label %bb.ar, label %bb.ao

bb.am:                                            ; preds = %bb.ak
  call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %1, ptr noundef nonnull align 8 dereferenceable(20) %3) #23
  %i.gb = load ptr, ptr %10, align 8, !tbaa !309  ; 2 uses
  %i.gc = icmp eq ptr %i.gb, %i.bw
  br i1 %i.gc, label %bb.as, label %bb.ap

bb.an:                                            ; preds = %.lr.ph
  %i.gd = load ptr, ptr %i.bz, align 8, !tbaa !282, !noalias !1094
  %i.ge = load i32, ptr %3, align 8, !tbaa !283, !noalias !1094
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %11, ptr noundef nonnull align 8 dereferenceable(15256) %i.gd, i32 %i.ge, i32 noundef 1435) #23
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  %i.gf = load ptr, ptr %10, align 8, !tbaa !309  ; 2 uses
  %i.gg = icmp eq ptr %i.gf, %i.bw
  br i1 %i.gg, label %bb.at, label %bb.aq

bb.ao:                                            ; preds = %bb.al
  call void @free(ptr noundef %i.fz) #23
  br label %bb.ar

bb.ap:                                            ; preds = %bb.am
  call void @free(ptr noundef %i.gb) #23
  br label %bb.as

bb.aq:                                            ; preds = %bb.an
  call void @free(ptr noundef %i.gf) #23
  br label %bb.at

bb.ar:                                            ; preds = %bb.ao, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %.loopexit283

bb.as:                                            ; preds = %bb.ap, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.o

bb.at:                                            ; preds = %bb.aq, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %.critedge136

.loopexit283:                                     ; preds = %bb.ar, %bb.j, %bb.i, %bb.m, %bb.n, %bb.l
  %i.gh = load i16, ptr %i.g, align 8, !tbaa !40
  %.not281 = icmp eq i16 %i.gh, 23
  br i1 %.not281, label %bb.av, label %bb.au

bb.au:                                            ; preds = %.loopexit283
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !282, !noalias !1095
  %i.gk = load i32, ptr %3, align 8, !tbaa !283, !noalias !1095
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %12, ptr noundef nonnull align 8 dereferenceable(15256) %i.gj, i32 %i.gk, i32 noundef 1434) #23
end_hunk_0
