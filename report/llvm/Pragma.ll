Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Pragma?download=true
inline.NumInlined: 2935
inline.NumDeleted: 1302
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN12_GLOBAL__N_120PragmaWarningHandler12HandlePragmaERN5clang12PreprocessorENS1_16PragmaIntroducerERNS1_5TokenE:bb.a
bb.p:                                             ; preds = %bb.o
  %i.cf = icmp eq i16 %i.ca, 7
  br i1 %i.cf, label %bb.y, label %bb.q

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
  %i.cm = and i64 %i.cl, 4294967295
  %.not.i.i.i.i = icmp eq i64 %i.cm, 7
  br i1 %.not.i.i.i.i, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.cn = load i32, ptr %i.ck, align 1
  %i.co = xor i32 %i.cn, 1634100580
  %i.cp = getelementptr i8, ptr %i.ck, i64 3
  %i.cq = load i32, ptr %i.cp, align 1
  %i.cr = xor i32 %i.cq, 1953264993
  %i.cs = or i32 %i.co, %i.cr
  %i.ct = icmp ne i32 %i.cs, 0
  %i.cu = zext i1 %i.ct to i32
  %.not.i.i = icmp eq i32 %i.cu, 0
  br i1 %.not.i.i, label %_ZN4llvm12StringSwitchIiiE4CaseENS_13StringLiteralEi.exit175, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cv = load i32, ptr %i.ck, align 1
  %i.cw = xor i32 %i.cv, 1634953572
  %i.cx = getelementptr i8, ptr %i.ck, i64 3
  %i.cy = load i32, ptr %i.cx, align 1
  %i.cz = xor i32 %i.cy, 1701601889
  %i.da = or i32 %i.cw, %i.cz
  %i.db = icmp ne i32 %i.da, 0
  %i.dc = zext i1 %i.db to i32
  %.not.i.i149 = icmp eq i32 %i.dc, 0
  br i1 %.not.i.i149, label %_ZN4llvm12StringSwitchIiiE4CaseENS_13StringLiteralEi.exit175, label %.thread260

bb.u:                                             ; preds = %bb.r
  %trunc277 = trunc i64 %i.cl to i32
  switch i32 %trunc277, label %.thread260 [
    i32 5, label %bb.v
    i32 4, label %bb.w
    i32 8, label %bb.x
  ]

bb.v:                                             ; preds = %bb.u
  %i.dd = load i32, ptr %i.ck, align 1
  %i.de = xor i32 %i.dd, 1869771365
  %i.df = getelementptr i8, ptr %i.ck, i64 4
  %i.dg = load i8, ptr %i.df, align 1
  %i.dh = zext i8 %i.dg to i32
  %i.di = xor i32 %i.dh, 114
  %i.dj = or i32 %i.de, %i.di
  %i.dk = icmp ne i32 %i.dj, 0
  %i.dl = zext i1 %i.dk to i32
  %.not.i.i157 = icmp eq i32 %i.dl, 0
  br i1 %.not.i.i157, label %_ZN4llvm12StringSwitchIiiE4CaseENS_13StringLiteralEi.exit175, label %.thread260

bb.w:                                             ; preds = %bb.u
  %i.dm = load i32, ptr %i.ck, align 1
  %i.dn = icmp ne i32 %i.dm, 1701015151
  %i.do = zext i1 %i.dn to i32
  %.not.i.i165 = icmp eq i32 %i.do, 0
  br i1 %.not.i.i165, label %_ZN4llvm12StringSwitchIiiE4CaseENS_13StringLiteralEi.exit175, label %.thread260

bb.x:                                             ; preds = %bb.u
  %i.dp = load i64, ptr %i.ck, align 1
  %i.dq = icmp ne i64 %i.dp, 8319104478870533491
  %i.dr = zext i1 %i.dq to i32
  %.not.i.i173 = icmp eq i32 %i.dr, 0
  br i1 %.not.i.i173, label %_ZN4llvm12StringSwitchIiiE4CaseENS_13StringLiteralEi.exit175, label %.thread260

_ZN4llvm12StringSwitchIiiE4CaseENS_13StringLiteralEi.exit175: ; preds = %bb.t, %bb.s, %bb.x, %bb.w, %bb.v
  %.sroa.14.4 = phi i32 [ 4, %bb.x ], [ 3, %bb.w ], [ 2, %bb.v ], [ 1, %bb.t ], [ 0, %bb.s ]
  call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %1, ptr noundef nonnull align 8 dereferenceable(20) %3) #23
  br label %bb.ab

bb.y:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.ds = call noundef zeroext i1 @_ZN5clang12Preprocessor25parseSimpleIntegerLiteralERNS_5TokenERm(ptr noundef nonnull align 8 dereferenceable(3344) %1, ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #23
  br i1 %i.ds, label %bb.z, label %.thread268

bb.z:                                             ; preds = %bb.y
  %i.dt = load i64, ptr %i.b, align 8, !tbaa !20  ; 2 uses
  %i.du = add i64 %i.dt, -1
  %i.dv = icmp ult i64 %i.du, 4
  br i1 %i.dv, label %bb.aa, label %.thread268

.thread268:                                       ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %.thread260

bb.aa:                                            ; preds = %bb.z
  %i.dw = trunc nuw nsw i64 %i.dt to i32
  %i.dx = add nuw nsw i32 %i.dw, 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.ab

.thread260:                                       ; preds = %bb.u, %bb.t, %bb.v, %bb.w, %bb.x, %.thread268
  %i.dy = load ptr, ptr %i.bz, align 8, !tbaa !282, !noalias !1092
  %i.dz = load i32, ptr %3, align 8, !tbaa !283, !noalias !1092
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %8, ptr noundef nonnull align 8 dereferenceable(15256) %i.dy, i32 %i.dz, i32 noundef 1437) #23
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %8) #23
  br label %.critedge136

bb.ab:                                            ; preds = %bb.aa, %_ZN4llvm12StringSwitchIiiE4CaseENS_13StringLiteralEi.exit175
  %.2118266 = phi i32 [ %.sroa.14.4, %_ZN4llvm12StringSwitchIiiE4CaseENS_13StringLiteralEi.exit175 ], [ %i.dx, %bb.aa ] ; 2 uses
  %i.ea = load i16, ptr %i.g, align 8, !tbaa !40
  %.not278 = icmp eq i16 %i.ea, 63
  br i1 %.not278, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.eb = load ptr, ptr %i.bz, align 8, !tbaa !282, !noalias !1093
  %i.ec = load i32, ptr %3, align 8, !tbaa !283, !noalias !1093
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %9, ptr noundef nonnull align 8 dereferenceable(15256) %i.eb, i32 %i.ec, i32 noundef 1434) #23
  %i.ed = load ptr, ptr %9, align 8, !tbaa !289   ; 2 uses
  %.not.i.i.i176 = icmp eq ptr %i.ed, null
  br i1 %.not.i.i.i176, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i177, label %_ZNK5clang17DiagnosticBuilderlsIA2_cEERKS0_RKT_.exit178

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i177: ; preds = %bb.ac
  %i.ee = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !290
  %i.eg = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.ef) ; 2 uses
  store ptr %i.eg, ptr %9, align 8, !tbaa !289
  br label %_ZNK5clang17DiagnosticBuilderlsIA2_cEERKS0_RKT_.exit178

_ZNK5clang17DiagnosticBuilderlsIA2_cEERKS0_RKT_.exit178: ; preds = %bb.ac, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i177
  %i.eh = phi ptr [ %i.eg, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i177 ], [ %i.ed, %bb.ac ] ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 1
  %i.ej = load i8, ptr %i.eh, align 8, !tbaa !357
  %i.ek = zext i8 %i.ej to i64
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.ek
  store i8 1, ptr %i.el, align 1, !tbaa !23
  %i.em = load ptr, ptr %9, align 8, !tbaa !289   ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eo = load i8, ptr %i.em, align 8, !tbaa !357 ; 2 uses
  %i.ep = add i8 %i.eo, 1
  store i8 %i.ep, ptr %i.em, align 8, !tbaa !357
  %i.eq = zext i8 %i.eo to i64
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.eq
  store i64 ptrtoint (ptr @.str.83 to i64), ptr %i.er, align 8, !tbaa !20
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %.critedge136

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  store ptr %i.bw, ptr %10, align 8, !tbaa !309
  store i32 0, ptr %i.bx, align 8, !tbaa !310
  store i32 4, ptr %i.by, align 4, !tbaa !311
  call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %1, ptr noundef nonnull align 8 dereferenceable(20) %3) #23
  %i.es = load i16, ptr %i.g, align 8, !tbaa !40
  %i.et = icmp eq i16 %i.es, 7
  br i1 %i.et, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.ad, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.eu = call noundef zeroext i1 @_ZN5clang12Preprocessor25parseSimpleIntegerLiteralERNS_5TokenERm(ptr noundef nonnull align 8 dereferenceable(3344) %1, ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c) #23
  %i.ev = load i64, ptr %i.c, align 8             ; 2 uses
  %i.ew = add i64 %i.ev, -1
  %i.ex = icmp ult i64 %i.ew, 2147483647
  %or.cond7.not = select i1 %i.eu, i1 %i.ex, i1 false
  br i1 %or.cond7.not, label %bb.ae, label %bb.ao

bb.ae:                                            ; preds = %.lr.ph
  %i.ey = trunc nuw nsw i64 %i.ev to i32          ; 2 uses
  %i.ez = load i32, ptr %i.bx, align 8, !tbaa !310 ; 2 uses
  %i.fa = load i32, ptr %i.by, align 4, !tbaa !311
  %.not.i = icmp ult i32 %i.ez, %i.fa
  br i1 %.not.i, label %bb.ag, label %bb.af, !prof !315

bb.af:                                            ; preds = %bb.ae
  call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef %i.ey)
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit

bb.ag:                                            ; preds = %bb.ae
  %i.fb = zext i32 %i.ez to i64
  %i.fc = load ptr, ptr %10, align 8, !tbaa !309
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.fb
  store i32 %i.ey, ptr %i.fd, align 1
  %i.fe = load i32, ptr %i.bx, align 8, !tbaa !310
  %i.ff = add i32 %i.fe, 1
  store i32 %i.ff, ptr %i.bx, align 8, !tbaa !310
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit: ; preds = %bb.ag, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  %i.fg = load i16, ptr %i.g, align 8, !tbaa !40
  %i.fh = icmp eq i16 %i.fg, 7
  br i1 %i.fh, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit, %bb.ad
  %i.fi = icmp eq i32 %.2118266, 1
  br i1 %i.fi, label %bb.ah, label %.loopexit

bb.ah:                                            ; preds = %._crit_edge
  %i.fj = load ptr, ptr %10, align 8, !tbaa !309  ; 2 uses
  %i.fk = load i32, ptr %i.bx, align 8, !tbaa !310 ; 2 uses
  %i.fl = zext i32 %i.fk to i64
  %.idx = shl nuw nsw i64 %i.fl, 2
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 %.idx
  %.not131284 = icmp eq i32 %i.fk, 0
  br i1 %.not131284, label %.loopexit, label %.lr.ph287

.lr.ph287:                                        ; preds = %bb.ah, %bb.aj
  %.0113285 = phi ptr [ %i.fs, %bb.aj ], [ %i.fj, %bb.ah ] ; 2 uses
  %i.fn = load i32, ptr %.0113285, align 4, !tbaa !319
  %i.fo = call i64 @_ZN5clang24diagGroupFromCLWarningIDEj(i32 noundef %i.fn) #23 ; 2 uses
  %i.fp = and i64 %i.fo, 4294967296
  %.not279 = icmp eq i64 %i.fp, 0
  br i1 %.not279, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph287
  %.sroa.0184.0.extract.trunc = trunc i64 %i.fo to i32
  %i.fq = load ptr, ptr %i.bz, align 8, !tbaa !282
  %i.fr = call noundef zeroext i1 @_ZN5clang17DiagnosticsEngine19setSeverityForGroupENS_4diag6FlavorENS1_5GroupENS1_8SeverityENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(15256) %i.fq, i32 noundef 0, i32 noundef %.sroa.0184.0.extract.trunc, i8 noundef zeroext 1, i32 %i.d) #23 ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.lr.ph287
  %i.fs = getelementptr inbounds nuw i8, ptr %.0113285, i64 4 ; 2 uses
  %.not131 = icmp eq ptr %i.fs, %i.fm
  br i1 %.not131, label %.loopexit, label %.lr.ph287

.loopexit:                                        ; preds = %bb.aj, %bb.ah, %._crit_edge
  br i1 %.not132, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.loopexit
  %i.ft = load ptr, ptr %10, align 8, !tbaa !309
  %i.fu = load i32, ptr %i.bx, align 8, !tbaa !310
  %i.fv = zext i32 %i.fu to i64
  %i.fw = load ptr, ptr %i.f, align 8, !tbaa !14
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 200
  %i.fy = load ptr, ptr %i.fx, align 8
  call void %i.fy(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i32 %i.d, i32 noundef %.2118266, ptr %i.ft, i64 %i.fv) #23
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %.loopexit
  %i.fz = load i16, ptr %i.g, align 8, !tbaa !40
  %.not280 = icmp eq i16 %i.fz, 64
  br i1 %.not280, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ga = load ptr, ptr %10, align 8, !tbaa !309  ; 2 uses
  %i.gb = icmp eq ptr %i.ga, %i.bw
  br i1 %i.gb, label %bb.as, label %bb.ap

bb.an:                                            ; preds = %bb.al
  call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %1, ptr noundef nonnull align 8 dereferenceable(20) %3) #23
  %i.gc = load ptr, ptr %10, align 8, !tbaa !309  ; 2 uses
  %i.gd = icmp eq ptr %i.gc, %i.bw
  br i1 %i.gd, label %bb.at, label %bb.aq

bb.ao:                                            ; preds = %.lr.ph
  %i.ge = load ptr, ptr %i.bz, align 8, !tbaa !282, !noalias !1094
  %i.gf = load i32, ptr %3, align 8, !tbaa !283, !noalias !1094
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %11, ptr noundef nonnull align 8 dereferenceable(15256) %i.ge, i32 %i.gf, i32 noundef 1435) #23
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  %i.gg = load ptr, ptr %10, align 8, !tbaa !309  ; 2 uses
  %i.gh = icmp eq ptr %i.gg, %i.bw
  br i1 %i.gh, label %bb.au, label %bb.ar

bb.ap:                                            ; preds = %bb.am
  call void @free(ptr noundef %i.ga) #23
  br label %bb.as

bb.aq:                                            ; preds = %bb.an
  call void @free(ptr noundef %i.gc) #23
  br label %bb.at

bb.ar:                                            ; preds = %bb.ao
  call void @free(ptr noundef %i.gg) #23
  br label %bb.au

bb.as:                                            ; preds = %bb.ap, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %.loopexit283

bb.at:                                            ; preds = %bb.aq, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.o

bb.au:                                            ; preds = %bb.ar, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %.critedge136

.loopexit283:                                     ; preds = %bb.as, %bb.j, %bb.i, %bb.m, %bb.n, %bb.l
  %i.gi = load i16, ptr %i.g, align 8, !tbaa !40
  %.not281 = icmp eq i16 %i.gi, 23
  br i1 %.not281, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %.loopexit283
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !282, !noalias !1095
  %i.gl = load i32, ptr %3, align 8, !tbaa !283, !noalias !1095
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %12, ptr noundef nonnull align 8 dereferenceable(15256) %i.gk, i32 %i.gl, i32 noundef 1434) #23
  %i.gm = load ptr, ptr %12, align 8, !tbaa !289  ; 2 uses
  %.not.i.i.i179 = icmp eq ptr %i.gm, null
  br i1 %.not.i.i.i179, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i180, label %_ZNK5clang17DiagnosticBuilderlsIA2_cEERKS0_RKT_.exit181

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i180: ; preds = %bb.av
  %i.gn = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !290
  %i.gp = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.go) ; 2 uses
  store ptr %i.gp, ptr %12, align 8, !tbaa !289
  br label %_ZNK5clang17DiagnosticBuilderlsIA2_cEERKS0_RKT_.exit181

_ZNK5clang17DiagnosticBuilderlsIA2_cEERKS0_RKT_.exit181: ; preds = %bb.av, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i180
  %i.gq = phi ptr [ %i.gp, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i180 ], [ %i.gm, %bb.av ] ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 1
  %i.gs = load i8, ptr %i.gq, align 8, !tbaa !357
  %i.gt = zext i8 %i.gs to i64
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gt
  store i8 1, ptr %i.gu, align 1, !tbaa !23
  %i.gv = load ptr, ptr %12, align 8, !tbaa !289  ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.gx = load i8, ptr %i.gv, align 8, !tbaa !357 ; 2 uses
  %i.gy = add i8 %i.gx, 1
  store i8 %i.gy, ptr %i.gv, align 8, !tbaa !357
  %i.gz = zext i8 %i.gx to i64
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %i.gz
  store i64 ptrtoint (ptr @.str.4 to i64), ptr %i.ha, align 8, !tbaa !20
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %.critedge136

bb.aw:                                            ; preds = %.loopexit283
  call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %1, ptr noundef nonnull align 8 dereferenceable(20) %3) #23
  %i.hb = load i16, ptr %i.g, align 8, !tbaa !40
  %.not282 = icmp eq i16 %i.hb, 2
  br i1 %.not282, label %.critedge136, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !282, !noalias !1096
  %i.he = load i32, ptr %3, align 8, !tbaa !283, !noalias !1096
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %13, ptr noundef nonnull align 8 dereferenceable(15256) %i.hd, i32 %i.he, i32 noundef 1248) #23
  %i.hf = load ptr, ptr %13, align 8, !tbaa !289  ; 2 uses
  %.not.i.i.i182 = icmp eq ptr %i.hf, null
  br i1 %.not.i.i.i182, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i183, label %_ZNK5clang17DiagnosticBuilderlsIA15_cEERKS0_RKT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i183: ; preds = %bb.ax
  %i.hg = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !290
  %i.hi = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.hh) ; 2 uses
  store ptr %i.hi, ptr %13, align 8, !tbaa !289
  br label %_ZNK5clang17DiagnosticBuilderlsIA15_cEERKS0_RKT_.exit

_ZNK5clang17DiagnosticBuilderlsIA15_cEERKS0_RKT_.exit: ; preds = %bb.ax, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i183
  %i.hj = phi ptr [ %i.hi, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i183 ], [ %i.hf, %bb.ax ] ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 1
  %i.hl = load i8, ptr %i.hj, align 8, !tbaa !357
  %i.hm = zext i8 %i.hl to i64
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hk, i64 %i.hm
  store i8 1, ptr %i.hn, align 1, !tbaa !23
  %i.ho = load ptr, ptr %13, align 8, !tbaa !289  ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  %i.hq = load i8, ptr %i.ho, align 8, !tbaa !357 ; 2 uses
  %i.hr = add i8 %i.hq, 1
  store i8 %i.hr, ptr %i.ho, align 8, !tbaa !357
  %i.hs = zext i8 %i.hq to i64
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %i.hs
  store i64 ptrtoint (ptr @.str.27 to i64), ptr %i.ht, align 8, !tbaa !20
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %.critedge136

.critedge136:                                     ; preds = %bb.au, %.thread260, %_ZNK5clang17DiagnosticBuilderlsIA2_cEERKS0_RKT_.exit178, %.thread, %bb.q, %_ZNK5clang17DiagnosticBuilderlsIA2_cEERKS0_RKT_.exit181, %_ZNK5clang17DiagnosticBuilderlsIA15_cEERKS0_RKT_.exit, %bb.aw, %_ZNK5clang17DiagnosticBuilderlsIA2_cEERKS0_RKT_.exit
  ret void
}

declare i64 @_ZN5clang24diagGroupFromCLWarningIDEj(i32 noundef) local_unnamed_addr #6

declare noundef zeroext i1 @_ZN5clang17DiagnosticsEngine19setSeverityForGroupENS_4diag6FlavorENS1_5GroupENS1_8SeverityENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(15256), i32 noundef, i32 noundef, i8 noundef zeroext, i32) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !310
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 4) #23
  %i.f = load ptr, ptr %0, align 8, !tbaa !309
  %i.g = load i32, ptr %i.a, align 8, !tbaa !310
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.h
  store i32 %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !310
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !310
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_124PragmaExecCharsetHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 8)) %0) unnamed_addr #9 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5clang13PragmaHandlerE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN5clang13PragmaHandlerD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !23
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #24, !inline_history !408
  br label %_ZN5clang13PragmaHandlerD2Ev.exit

_ZN5clang13PragmaHandlerD2Ev.exit:                ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #24
  ret void
end_hunk_0
