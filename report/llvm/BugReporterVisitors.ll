Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/BugReporterVisitors?download=true
inline.NumInlined: 8634
inline.NumDeleted: 4808
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN12_GLOBAL__N_115StoreSiteFinder9VisitNodeEPKN5clang4ento12ExplodedNodeERNS2_18BugReporterContextERNS2_22PathSensitiveBugReportE:bb.a
  br label %_ZL21isInitializationOfVarPKN5clang4ento12ExplodedNodeEPKNS0_9VarRegionE.exit.thread395

_ZL21isInitializationOfVarPKN5clang4ento12ExplodedNodeEPKNS0_9VarRegionE.exit.thread395: ; preds = %bb.g, %bb.f, %bb.e, %_ZL21isInitializationOfVarPKN5clang4ento12ExplodedNodeEPKNS0_9VarRegionE.exit, %_ZL21isInitializationOfVarPKN5clang4ento12ExplodedNodeEPKNS0_9VarRegionE.exit.thread, %_ZNK5clang4ento12ExplodedNode12getFirstPredEv.exit
  %.0196 = phi ptr [ %i.cu, %_ZL21isInitializationOfVarPKN5clang4ento12ExplodedNodeEPKNS0_9VarRegionE.exit.thread ], [ null, %_ZL21isInitializationOfVarPKN5clang4ento12ExplodedNodeEPKNS0_9VarRegionE.exit ], [ null, %_ZNK5clang4ento12ExplodedNode12getFirstPredEv.exit ], [ null, %bb.e ], [ null, %bb.f ], [ null, %bb.g ] ; 9 uses
  %.0 = phi ptr [ %i.l, %_ZL21isInitializationOfVarPKN5clang4ento12ExplodedNodeEPKNS0_9VarRegionE.exit.thread ], [ null, %_ZL21isInitializationOfVarPKN5clang4ento12ExplodedNodeEPKNS0_9VarRegionE.exit ], [ null, %_ZNK5clang4ento12ExplodedNode12getFirstPredEv.exit ], [ null, %bb.e ], [ null, %bb.f ], [ null, %bb.g ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.cv, align 8, !noalias !2510
  %i.cw = trunc i64 %.0.copyload.i.i.i.i.i.i.i to i32
  %i.cx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.0.copyload.i.i.i5.i.i.i.i = load i64, ptr %i.cx, align 8, !noalias !2510
  %i.cy = trunc i64 %.0.copyload.i.i.i5.i.i.i.i to i32
  %i.cz = shl i32 %i.cw, 3
  %i.da = and i32 %i.cz, 48
  %i.db = shl i32 %i.cy, 1
  %i.dc = and i32 %i.db, 12
  %i.dd = or disjoint i32 %i.dc, %i.da
  %i.de = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.0.copyload.i.i.i6.i.i.i.i = load i64, ptr %i.de, align 8, !noalias !2510 ; 2 uses
  %i.df = trunc i64 %.0.copyload.i.i.i6.i.i.i.i to i32
  %i.dg = and i32 %i.df, 3
  %i.dh = or disjoint i32 %i.dd, %i.dg
  %i.di = icmp eq i32 %i.dh, 14
  br i1 %i.di, label %bb.v, label %_ZNKR5clang4ento12ExplodedNode13getLocationAsINS_15PostInitializerEEESt8optionalIT_Ev.exit

bb.v:                                             ; preds = %_ZL21isInitializationOfVarPKN5clang4ento12ExplodedNodeEPKNS0_9VarRegionE.exit.thread395
  %i.dj = and i64 %.0.copyload.i.i.i6.i.i.i.i, -4
  %i.dk = inttoptr i64 %i.dj to ptr
  %i.dl = load ptr, ptr %i.m, align 8, !tbaa !872
  %i.dm = icmp eq ptr %i.dl, %i.dk
  br i1 %i.dm, label %_ZNKR5clang4ento12ExplodedNode13getLocationAsINS_15PostInitializerEEESt8optionalIT_Ev.exit.thread402, label %_ZNKR5clang4ento12ExplodedNode13getLocationAsINS_15PostInitializerEEESt8optionalIT_Ev.exit

_ZNKR5clang4ento12ExplodedNode13getLocationAsINS_15PostInitializerEEESt8optionalIT_Ev.exit.thread402: ; preds = %bb.v
  %i.dn = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.0388.0.copyload = load ptr, ptr %i.dn, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0388.0.copyload, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !2517
  br label %bb.bm

_ZNKR5clang4ento12ExplodedNode13getLocationAsINS_15PostInitializerEEESt8optionalIT_Ev.exit: ; preds = %_ZL21isInitializationOfVarPKN5clang4ento12ExplodedNodeEPKNS0_9VarRegionE.exit.thread395, %bb.v
  %.not230 = icmp eq ptr %.0, null
  br i1 %.not230, label %bb.w, label %bb.bm

bb.w:                                             ; preds = %_ZNKR5clang4ento12ExplodedNode13getLocationAsINS_15PostInitializerEEESt8optionalIT_Ev.exit
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 4 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !191 ; 2 uses
  %i.ds = load ptr, ptr %i.m, align 8, !tbaa !872
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !221
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 96
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !637 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !638
  %i.dz = load ptr, ptr %i.dw, align 8, !tbaa !113
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = call { ptr, i8 } %i.eb(ptr noundef nonnull align 8 dereferenceable(40) %i.dw, ptr noundef %i.dy, ptr %i.ds, i8 4, i64 0) #24, !inline_history !2 ; 2 uses
  %.fca.0.extract148 = extractvalue { ptr, i8 } %i.ec, 0
  %.fca.1.extract149 = extractvalue { ptr, i8 } %i.ec, 1
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %.sroa.0145.0.copyload = load ptr, ptr %i.ed, align 8, !tbaa !47
  %.sroa.2146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %.sroa.2146.0.copyload = load i8, ptr %.sroa.2146.0..sroa_idx, align 8, !tbaa !692
  %i.ee = icmp ne ptr %.fca.0.extract148, %.sroa.0145.0.copyload
  %i.ef = icmp ne i8 %.fca.1.extract149, %.sroa.2146.0.copyload
  %.not4.i = select i1 %i.ee, i1 true, i1 %i.ef
  br i1 %.not4.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.ck

bb.y:                                             ; preds = %bb.w
  %i.eg = getelementptr inbounds nuw i8, ptr %i.l, i64 56 ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !191 ; 2 uses
  %i.ei = load ptr, ptr %i.m, align 8, !tbaa !872
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !221
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 96
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !637 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !638
  %i.ep = load ptr, ptr %i.em, align 8, !tbaa !113
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.er = load ptr, ptr %i.eq, align 8
  %i.es = call { ptr, i8 } %i.er(ptr noundef nonnull align 8 dereferenceable(40) %i.em, ptr noundef %i.eo, ptr %i.ei, i8 4, i64 0) #24, !inline_history !2 ; 2 uses
  %.fca.0.extract139 = extractvalue { ptr, i8 } %i.es, 0 ; 2 uses
  %.fca.1.extract140 = extractvalue { ptr, i8 } %i.es, 1 ; 2 uses
  %.sroa.0136.0.copyload = load ptr, ptr %i.ed, align 8, !tbaa !47 ; 2 uses
  %.sroa.2137.0.copyload = load i8, ptr %.sroa.2146.0..sroa_idx, align 8, !tbaa !692 ; 2 uses
  %i.et = icmp eq ptr %.fca.0.extract139, %.sroa.0136.0.copyload
  %i.eu = icmp eq i8 %.fca.1.extract140, %.sroa.2137.0.copyload
  %i.ev = select i1 %i.et, i1 %i.eu, i1 false
  br i1 %i.ev, label %_ZL16hasVisibleUpdatePKN5clang4ento12ExplodedNodeENS0_4SValES3_S4_.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.ew = icmp eq i8 %.fca.1.extract140, 7
  br i1 %i.ew, label %bb.aa, label %.sink.split

bb.aa:                                            ; preds = %bb.z
  store ptr %.fca.0.extract139, ptr %6, align 8, !alias.scope !2518
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 7, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !2518
  %i.ex = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i8 1, ptr %i.ex, align 8, !tbaa !2520, !alias.scope !2518
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.ey = icmp eq i8 %.sroa.2137.0.copyload, 7
  br i1 %i.ey, label %bb.ab, label %_ZL16hasVisibleUpdatePKN5clang4ento12ExplodedNodeENS0_4SValES3_S4_.exit.thread409

bb.ab:                                            ; preds = %bb.aa
  store ptr %.sroa.0136.0.copyload, ptr %7, align 8, !alias.scope !2521
  %.sroa.4.0..sroa_idx.i.i.i7.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i8 7, ptr %.sroa.4.0..sroa_idx.i.i.i7.i, align 8, !alias.scope !2521
  %i.ez = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i8 1, ptr %i.ez, align 8, !tbaa !2520, !alias.scope !2521
  %i.fa = call noundef nonnull ptr @_ZNK5clang4ento6nonloc15LazyCompoundVal9getRegionEv(ptr noundef nonnull align 8 dereferenceable(9) %6) #24
  %i.fb = call noundef nonnull ptr @_ZNK5clang4ento6nonloc15LazyCompoundVal9getRegionEv(ptr noundef nonnull align 8 dereferenceable(9) %7) #24
  %i.fc = icmp eq ptr %i.fa, %i.fb
  br i1 %i.fc, label %bb.ac, label %_ZL16hasVisibleUpdatePKN5clang4ento12ExplodedNodeENS0_4SValES3_S4_.exit.thread409

bb.ac:                                            ; preds = %bb.ab
  %i.fd = call noundef ptr @_ZNK5clang4ento6nonloc15LazyCompoundVal8getStoreEv(ptr noundef nonnull align 8 dereferenceable(9) %6) #24
  %i.fe = load ptr, ptr %i.eg, align 8, !tbaa !191
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !638
  %i.fh = icmp eq ptr %i.fd, %i.fg
  br i1 %i.fh, label %_ZL16hasVisibleUpdatePKN5clang4ento12ExplodedNodeENS0_4SValES3_S4_.exit, label %_ZL16hasVisibleUpdatePKN5clang4ento12ExplodedNodeENS0_4SValES3_S4_.exit.thread409

_ZL16hasVisibleUpdatePKN5clang4ento12ExplodedNodeENS0_4SValES3_S4_.exit.thread409: ; preds = %bb.ac, %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %.sink.split

_ZL16hasVisibleUpdatePKN5clang4ento12ExplodedNodeENS0_4SValES3_S4_.exit: ; preds = %bb.ac
  %i.fi = call noundef ptr @_ZNK5clang4ento6nonloc15LazyCompoundVal8getStoreEv(ptr noundef nonnull align 8 dereferenceable(9) %7) #24
  %i.fj = load ptr, ptr %i.dq, align 8, !tbaa !191
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !638
  %i.fm = icmp eq ptr %i.fi, %i.fl
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br i1 %i.fm, label %_ZL16hasVisibleUpdatePKN5clang4ento12ExplodedNodeENS0_4SValES3_S4_.exit.thread, label %bb.ae

_ZL16hasVisibleUpdatePKN5clang4ento12ExplodedNodeENS0_4SValES3_S4_.exit.thread: ; preds = %bb.y, %_ZL16hasVisibleUpdatePKN5clang4ento12ExplodedNodeENS0_4SValES3_S4_.exit
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.0.copyload.i.i.i.i.i.i.i257 = load i64, ptr %i.fn, align 8, !noalias !2522
  %i.fo = trunc i64 %.0.copyload.i.i.i.i.i.i.i257 to i32
  %i.fp = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.0.copyload.i.i.i5.i.i.i.i258 = load i64, ptr %i.fp, align 8, !noalias !2522
  %i.fq = trunc i64 %.0.copyload.i.i.i5.i.i.i.i258 to i32
  %i.fr = shl i32 %i.fo, 3
  %i.fs = and i32 %i.fr, 48
  %i.ft = shl i32 %i.fq, 1
  %i.fu = and i32 %i.ft, 12
  %i.fv = or disjoint i32 %i.fu, %i.fs
  %i.fw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.0.copyload.i.i.i6.i.i.i.i259 = load i64, ptr %i.fw, align 8, !noalias !2522 ; 2 uses
  %i.fx = trunc i64 %.0.copyload.i.i.i6.i.i.i.i259 to i32
  %i.fy = and i32 %i.fx, 3
  %i.fz = or disjoint i32 %i.fv, %i.fy
  %i.ga = icmp eq i32 %i.fz, 10
  br i1 %i.ga, label %bb.ad, label %.critedge255

bb.ad:                                            ; preds = %_ZL16hasVisibleUpdatePKN5clang4ento12ExplodedNodeENS0_4SValES3_S4_.exit.thread
  %i.gb = and i64 %.0.copyload.i.i.i6.i.i.i.i259, -4
  %i.gc = inttoptr i64 %i.gb to ptr
  %i.gd = load ptr, ptr %i.m, align 8, !tbaa !872
  %.not231 = icmp eq ptr %i.gd, %i.gc
  br i1 %.not231, label %bb.ae, label %.critedge255

.critedge255:                                     ; preds = %_ZL16hasVisibleUpdatePKN5clang4ento12ExplodedNodeENS0_4SValES3_S4_.exit.thread, %bb.ad
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.ck

.sink.split:                                      ; preds = %bb.z, %_ZL16hasVisibleUpdatePKN5clang4ento12ExplodedNodeENS0_4SValES3_S4_.exit.thread409
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.ae

bb.ae:                                            ; preds = %.sink.split, %bb.ad, %_ZL16hasVisibleUpdatePKN5clang4ento12ExplodedNodeENS0_4SValES3_S4_.exit
  %i.ge = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i262 = load i64, ptr %i.ge, align 8, !noalias !2523
  %i.gf = trunc i64 %.0.copyload.i.i.i.i.i.i.i262 to i32
  %i.gg = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %.0.copyload.i.i.i5.i.i.i.i263 = load i64, ptr %i.gg, align 8, !noalias !2523
  %i.gh = trunc i64 %.0.copyload.i.i.i5.i.i.i.i263 to i32
  %i.gi = shl i32 %i.gf, 3
  %i.gj = and i32 %i.gi, 48
  %i.gk = shl i32 %i.gh, 1
  %i.gl = and i32 %i.gk, 12
  %i.gm = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.0.copyload.i.i.i6.i.i.i.i264 = load i64, ptr %i.gm, align 8, !noalias !2523
  %i.gn = trunc i64 %.0.copyload.i.i.i6.i.i.i.i264 to i32
  %i.go = and i32 %i.gn, 2
  %i.gp = add nsw i32 %i.gj, -6
  %i.gq = add nuw nsw i32 %i.gp, %i.go
  %i.gr = add nsw i32 %i.gq, %i.gl
  %i.gs = icmp ult i32 %i.gr, 8
  br i1 %i.gs, label %bb.af, label %_ZNKR5clang4ento12ExplodedNode13getLocationAsINS_8PostStmtEEESt8optionalIT_Ev.exit

bb.af:                                            ; preds = %bb.ae
  %i.gt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0371.0.copyload = load ptr, ptr %i.gt, align 8 ; 9 uses
  %i.gu = load i16, ptr %.sroa.0371.0.copyload, align 8 ; 2 uses
  %i.gv = and i16 %i.gu, 510
  %spec.select.i.i.i.i.i.i.i.i.i.not = icmp eq i16 %i.gv, 122
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.not, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.gw = load i32, ptr %.sroa.0371.0.copyload, align 8
  %i.gx = lshr i32 %i.gw, 19
  %i.gy = and i32 %i.gx, 63
  %i.gz = add nsw i32 %i.gy, -21
  %i.ha = icmp ult i32 %i.gz, 11
  br i1 %i.ha, label %bb.ah, label %_ZNKR5clang4ento12ExplodedNode13getLocationAsINS_8PostStmtEEESt8optionalIT_Ev.exit

bb.ah:                                            ; preds = %bb.ag
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.0371.0.copyload, i64 24
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !134
  br label %_ZNKR5clang4ento12ExplodedNode13getLocationAsINS_8PostStmtEEESt8optionalIT_Ev.exit

bb.ai:                                            ; preds = %bb.af
  %i.hd = and i16 %i.gu, 511                      ; 3 uses
  %.not441 = icmp eq i16 %i.hd, 255
  br i1 %.not441, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.0371.0.copyload, i64 8
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !1055 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 28
  %i.hh = load i32, ptr %i.hg, align 4
  %i.hi = and i32 %i.hh, 127
  %i.hj = add nsw i32 %i.hi, -41
  %i.hk = icmp ult i32 %i.hj, 7
  br i1 %i.hk, label %bb.ak, label %_ZNKR5clang4ento12ExplodedNode13getLocationAsINS_8PostStmtEEESt8optionalIT_Ev.exit

bb.ak:                                            ; preds = %bb.aj
  %i.hl = call noundef ptr @_ZN5clang7VarDecl7getInitEv(ptr noundef nonnull align 8 dereferenceable(100) %i.hf) #24 ; 2 uses
  %i.hm = load i16, ptr %i.hl, align 8
  %i.hn = and i16 %i.hm, 511
  %.not443 = icmp eq i16 %i.hn, 55
  br i1 %.not443, label %bb.al, label %_ZNKR5clang4ento12ExplodedNode13getLocationAsINS_8PostStmtEEESt8optionalIT_Ev.exit

bb.al:                                            ; preds = %bb.ak
  %i.ho = load ptr, ptr %i.m, align 8, !tbaa !872
  %i.hp = call fastcc noundef ptr @_ZL29tryExtractInitializerFromListPKN5clang12InitListExprEPKNS_4ento9MemRegionE(ptr noundef %i.hl, ptr noundef %i.ho)
  br label %_ZNKR5clang4ento12ExplodedNode13getLocationAsINS_8PostStmtEEESt8optionalIT_Ev.exit

bb.am:                                            ; preds = %bb.ai
  %i.hq = add nsw i16 %i.hd, -119
  %spec.select.i.i.i.i.i.i.i.i.i268 = icmp ult i16 %i.hq, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i268, label %bb.bd, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hr = load ptr, ptr %i.dq, align 8, !tbaa !191 ; 6 uses
  %.not.i.i = icmp eq ptr %i.hr, null             ; 2 uses
  br i1 %.not.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.hr) #24
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit: ; preds = %bb.an, %bb.ao
  %i.hs = getelementptr i8, ptr %.sroa.0371.0.copyload, i64 16
  %.val = load ptr, ptr %i.hs, align 8, !tbaa !2526 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.ht = call noundef zeroext i1 @_ZNK5clang18CXXConstructorDecl23isCopyOrMoveConstructorERj(ptr noundef nonnull align 8 dereferenceable(176) %.val, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br i1 %i.ht, label %_ZL23isTrivialCopyOrMoveCtorPKN5clang16CXXConstructExprE.exit, label %_ZL23isTrivialCopyOrMoveCtorPKN5clang16CXXConstructExprE.exit.thread

_ZL23isTrivialCopyOrMoveCtorPKN5clang16CXXConstructExprE.exit: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit
  %i.hu = getelementptr inbounds nuw i8, ptr %.val, i64 80
  %i.hv = load i32, ptr %i.hu, align 8
  %i.hw = and i32 %i.hv, 8388608
  %.not445 = icmp eq i32 %i.hw, 0
  br i1 %.not445, label %_ZL23isTrivialCopyOrMoveCtorPKN5clang16CXXConstructExprE.exit.thread, label %bb.ap

bb.ap:                                            ; preds = %_ZL23isTrivialCopyOrMoveCtorPKN5clang16CXXConstructExprE.exit
  %i.hx = load ptr, ptr %i.m, align 8, !tbaa !693
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !646
  %i.ia = icmp sgt i32 %i.hz, 8
  br i1 %i.ia, label %bb.aq, label %_ZL23isTrivialCopyOrMoveCtorPKN5clang16CXXConstructExprE.exit.thread

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @_ZNSt5stackIPKN5clang4ento9SubRegionESt5dequeIS4_SaIS4_EEEC2IS7_vEEv(ptr noundef nonnull align 8 dereferenceable(80) %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.ib = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 5 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 2 uses
  br label %bb.ar

bb.ar:                                            ; preds = %_ZNSt5stackIPKN5clang4ento9SubRegionESt5dequeIS4_SaIS4_EEE4pushERKS4_.exit, %bb.aq
  %storemerge.in = phi ptr [ %i.m, %bb.aq ], [ %i.ik, %_ZNSt5stackIPKN5clang4ento9SubRegionESt5dequeIS4_SaIS4_EEE4pushERKS4_.exit ]
  %storemerge = load ptr, ptr %storemerge.in, align 8, !tbaa !693 ; 3 uses
  store ptr %storemerge, ptr %i.b, align 8, !tbaa !1074
  %i.id = getelementptr inbounds nuw i8, ptr %storemerge, i64 16
  %i.ie = load i32, ptr %i.id, align 8, !tbaa !646
  switch i32 %i.ie, label %bb.au [
    i32 20, label %.critedge
    i32 24, label %.critedge
  ]

.critedge:                                        ; preds = %bb.ar, %bb.ar
  %i.if = load ptr, ptr %i.ib, align 8, !tbaa !1080 ; 3 uses
  %i.ig = load ptr, ptr %i.ic, align 8, !tbaa !2527
  %i.ih = getelementptr inbounds i8, ptr %i.ig, i64 -8
  %.not.i.i270 = icmp eq ptr %i.if, %i.ih
  br i1 %.not.i.i270, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.critedge
  store ptr %storemerge, ptr %i.if, align 8, !tbaa !1074
  %i.ii = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  store ptr %i.ii, ptr %i.ib, align 8, !tbaa !1080
  br label %_ZNSt5stackIPKN5clang4ento9SubRegionESt5dequeIS4_SaIS4_EEE4pushERKS4_.exit

bb.at:                                            ; preds = %.critedge
  call void @_ZNSt5dequeIPKN5clang4ento9SubRegionESaIS4_EE16_M_push_back_auxIJRKS4_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZNSt5stackIPKN5clang4ento9SubRegionESt5dequeIS4_SaIS4_EEE4pushERKS4_.exit

_ZNSt5stackIPKN5clang4ento9SubRegionESt5dequeIS4_SaIS4_EEE4pushERKS4_.exit: ; preds = %bb.as, %bb.at
  %i.ij = load ptr, ptr %i.b, align 8, !tbaa !1074
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 48
  br label %bb.ar, !llvm.loop !2490

bb.au:                                            ; preds = %bb.ar
  %i.il = load i16, ptr %.sroa.0371.0.copyload, align 8
  %i.im = and i16 %i.il, 511
  %.not.i.i.i.i = icmp eq i16 %i.im, 118          ; 2 uses
  %spec.select.i.i.i.i.i.i = select i1 %.not.i.i.i.i, ptr %.sroa.0371.0.copyload, ptr null
  %18 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i.i, i64 48
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.0371.0.copyload, i64 40
  %spec.select.i.i.i.i271 = select i1 %.not.i.i.i.i, ptr %18, ptr %i.in
  %i.io = load ptr, ptr %spec.select.i.i.i.i271, align 8, !tbaa !853 ; 2 uses
  %.sroa.3.0.copyload.i = load i64, ptr %i.gg, align 8, !tbaa !115
  %i.ip = and i64 %.sroa.3.0.copyload.i, -8
  %i.iq = inttoptr i64 %i.ip to ptr
  %i.ir = call { ptr, i8 } @_ZNK5clang4ento12ProgramState7getSValEPKNS_4ExprEPKNS_10StackFrameE(ptr noundef nonnull align 8 dereferenceable(48) %i.hr, ptr noundef %i.io, ptr noundef %i.iq) ; 2 uses
  %.fca.0.extract116 = extractvalue { ptr, i8 } %i.ir, 0
  %.fca.1.extract117 = extractvalue { ptr, i8 } %i.ir, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  store ptr %.fca.0.extract116, ptr %10, align 8, !tbaa !47
  %.sroa.4121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  store i8 %.fca.1.extract117, ptr %.sroa.4121.0..sroa_idx, align 8, !tbaa !692
  %i.is = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.it = load ptr, ptr %i.ib, align 8, !tbaa !1081 ; 2 uses
  %i.iu = load ptr, ptr %i.is, align 8, !tbaa !1081
  %i.iv = icmp eq ptr %i.it, %i.iu
  br i1 %i.iv, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.au
  %i.iw = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %9, i64 72 ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  br label %bb.av

bb.av:                                            ; preds = %.lr.ph, %bb.bb
  %i.iz = phi ptr [ %i.it, %.lr.ph ], [ %i.ki, %bb.bb ] ; 2 uses
  %i.ja = load ptr, ptr %i.iw, align 8, !tbaa !1082, !noalias !2528 ; 2 uses
  %i.jb = icmp eq ptr %i.iz, %i.ja
  br i1 %i.jb, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jc = getelementptr inbounds i8, ptr %i.iz, i64 -8 ; 2 uses
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !1074
  br label %_ZNSt5stackIPKN5clang4ento9SubRegionESt5dequeIS4_SaIS4_EEE3popEv.exit

bb.ax:                                            ; preds = %bb.av
  %i.je = load ptr, ptr %i.ix, align 8, !tbaa !1083, !noalias !2528
  %i.jf = getelementptr inbounds i8, ptr %i.je, i64 -8
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !1084
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 504
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !1074
  call void @_ZdlPvm(ptr noundef %i.ja, i64 noundef 512) #27
  %i.jj = load ptr, ptr %i.ix, align 8, !tbaa !1085
  %i.jk = getelementptr inbounds i8, ptr %i.jj, i64 -8 ; 2 uses
  store ptr %i.jk, ptr %i.ix, align 8, !tbaa !1083
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !1084 ; 3 uses
  store ptr %i.jl, ptr %i.iw, align 8, !tbaa !1082
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 512
  store ptr %i.jm, ptr %i.ic, align 8, !tbaa !1086
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jl, i64 504
  br label %_ZNSt5stackIPKN5clang4ento9SubRegionESt5dequeIS4_SaIS4_EEE3popEv.exit

_ZNSt5stackIPKN5clang4ento9SubRegionESt5dequeIS4_SaIS4_EEE3popEv.exit: ; preds = %bb.aw, %bb.ax
  %i.jo = phi ptr [ %i.jd, %bb.aw ], [ %i.ji, %bb.ax ] ; 7 uses
  %storemerge.i.i = phi ptr [ %i.jc, %bb.aw ], [ %i.jn, %bb.ax ]
  store ptr %storemerge.i.i, ptr %i.ib, align 8, !tbaa !1080
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 16
  %i.jq = load i32, ptr %i.jp, align 8, !tbaa !646 ; 2 uses
  %i.jr = icmp ne i32 %i.jq, 20
  %.not236446 = icmp eq ptr %i.jo, null           ; 2 uses
  %.not236 = or i1 %.not236446, %i.jr
  br i1 %.not236, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt5stackIPKN5clang4ento9SubRegionESt5dequeIS4_SaIS4_EEE3popEv.exit
  %i.js = load ptr, ptr %i.jo, align 8, !tbaa !113
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 112
  %i.ju = load ptr, ptr %i.jt, align 8
  %i.jv = call noundef nonnull ptr %i.ju(ptr noundef nonnull align 8 dereferenceable(64) %i.jo) #24
  %.sroa.0106.0.copyload = load ptr, ptr %10, align 8, !tbaa !47
  %.sroa.2107.0.copyload = load i8, ptr %.sroa.4121.0..sroa_idx, align 8, !tbaa !692
  %i.jw = call { ptr, i8 } @_ZNK5clang4ento12ProgramState9getLValueEPKNS_9FieldDeclENS0_4SValE(ptr noundef nonnull align 8 dereferenceable(48) %i.hr, ptr noundef nonnull %i.jv, ptr %.sroa.0106.0.copyload, i8 %.sroa.2107.0.copyload) #24 ; 2 uses
  %.fca.0.extract102 = extractvalue { ptr, i8 } %i.jw, 0
  %.fca.1.extract103 = extractvalue { ptr, i8 } %i.jw, 1
  br label %.sink.split501

bb.az:                                            ; preds = %_ZNSt5stackIPKN5clang4ento9SubRegionESt5dequeIS4_SaIS4_EEE3popEv.exit
  %i.jx = icmp ne i32 %i.jq, 24
  %.not237 = or i1 %.not236446, %i.jx
  br i1 %.not237, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jo, i64 72
  %.sroa.2.0.copyload.i = load i8, ptr %.sroa.2.0..sroa_idx.i, align 8 ; 2 uses
  %i.jy = add i8 %.sroa.2.0.copyload.i, -5
  %spec.select.i.i.i.i.i.i276 = icmp ult i8 %i.jy, 6
  br i1 %spec.select.i.i.i.i.i.i276, label %_ZNK5clang4ento4SVal5getAsINS0_6NonLocEEESt8optionalIT_Ev.exit.i, label %.sink.split501

_ZNK5clang4ento4SVal5getAsINS0_6NonLocEEESt8optionalIT_Ev.exit.i: ; preds = %bb.ba
  %.sroa.285.0.copyload = load i8, ptr %.sroa.4121.0..sroa_idx, align 8, !tbaa !692
  %.sroa.084.0.copyload = load ptr, ptr %10, align 8, !tbaa !47
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jo, i64 64
  %.sroa.0.0.copyload.i275 = load ptr, ptr %i.jz, align 8
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jo, i64 56
  %.sroa.0.0.copyload.i = load i64, ptr %i.ka, align 8, !tbaa !115
  %i.kb = load ptr, ptr %i.iy, align 8, !tbaa !221
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 96
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !637 ; 2 uses
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !113
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 96
  %i.kg = load ptr, ptr %i.kf, align 8
  %i.kh = call { ptr, i8 } %i.kg(ptr noundef nonnull align 8 dereferenceable(40) %i.kd, i64 %.sroa.0.0.copyload.i, ptr %.sroa.0.0.copyload.i275, i8 %.sroa.2.0.copyload.i, ptr %.sroa.084.0.copyload, i8 %.sroa.285.0.copyload) #24, !inline_history !2493 ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.kh, 0
  %.fca.1.extract.i = extractvalue { ptr, i8 } %i.kh, 1
  br label %.sink.split501

.sink.split501:                                   ; preds = %_ZNK5clang4ento4SVal5getAsINS0_6NonLocEEESt8optionalIT_Ev.exit.i, %bb.ba, %bb.ay
  %.sroa.010.1.i.sink = phi ptr [ %.fca.0.extract102, %bb.ay ], [ %.fca.0.extract.i, %_ZNK5clang4ento4SVal5getAsINS0_6NonLocEEESt8optionalIT_Ev.exit.i ], [ null, %bb.ba ]
  %.sroa.311.1.i.sink = phi i8 [ %.fca.1.extract103, %bb.ay ], [ %.fca.1.extract.i, %_ZNK5clang4ento4SVal5getAsINS0_6NonLocEEESt8optionalIT_Ev.exit.i ], [ 1, %bb.ba ]
  store ptr %.sroa.010.1.i.sink, ptr %10, align 8, !tbaa !47
  store i8 %.sroa.311.1.i.sink, ptr %.sroa.4121.0..sroa_idx, align 8, !tbaa !692
  br label %bb.bb

bb.bb:                                            ; preds = %.sink.split501, %bb.az
  %i.ki = load ptr, ptr %i.ib, align 8, !tbaa !1081 ; 2 uses
  %i.kj = load ptr, ptr %i.is, align 8, !tbaa !1081
  %i.kk = icmp eq ptr %i.ki, %i.kj
  br i1 %i.kk, label %._crit_edge, label %bb.av, !llvm.loop !2494

._crit_edge:                                      ; preds = %bb.bb, %bb.au
  %i.kl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !868 ; 2 uses
  %.sroa.077.0.copyload = load ptr, ptr %i.ed, align 8, !tbaa !47
  %.sroa.278.0.copyload = load i8, ptr %.sroa.2146.0..sroa_idx, align 8, !tbaa !692
  %i.kn = call noundef ptr @_ZNK5clang4ento4SVal11getAsRegionEv(ptr noundef nonnull align 8 dereferenceable(9) %10) #24
  %i.ko = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.076.0.copyload = load i64, ptr %i.ko, align 4
  %i.kp = load ptr, ptr %i.km, align 8, !tbaa !113
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 24
  %i.kr = load ptr, ptr %i.kq, align 8
  %i.ks = call i16 %i.kr(ptr noundef nonnull align 8 dereferenceable(72) %i.km, ptr %.sroa.077.0.copyload, i8 %.sroa.278.0.copyload, ptr noundef %i.kn, i64 %.sroa.076.0.copyload, ptr noundef null) #24 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @_ZNSt5stackIPKN5clang4ento9SubRegionESt5dequeIS4_SaIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %_ZL23isTrivialCopyOrMoveCtorPKN5clang16CXXConstructExprE.exit.thread

_ZL23isTrivialCopyOrMoveCtorPKN5clang16CXXConstructExprE.exit.thread: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit, %._crit_edge, %bb.ap, %_ZL23isTrivialCopyOrMoveCtorPKN5clang16CXXConstructExprE.exit
  %.5 = phi ptr [ %i.io, %._crit_edge ], [ %.0196, %bb.ap ], [ %.0196, %_ZL23isTrivialCopyOrMoveCtorPKN5clang16CXXConstructExprE.exit ], [ %.0196, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit ] ; 2 uses
  br i1 %.not.i.i, label %_ZNKR5clang4ento12ExplodedNode13getLocationAsINS_8PostStmtEEESt8optionalIT_Ev.exit, label %bb.bc

bb.bc:                                            ; preds = %_ZL23isTrivialCopyOrMoveCtorPKN5clang16CXXConstructExprE.exit.thread
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.hr) #24
  br label %_ZNKR5clang4ento12ExplodedNode13getLocationAsINS_8PostStmtEEESt8optionalIT_Ev.exit

bb.bd:                                            ; preds = %bb.am
  %.not449 = icmp eq i16 %i.hd, 55
  br i1 %.not449, label %bb.be, label %_ZNKR5clang4ento12ExplodedNode13getLocationAsINS_8PostStmtEEESt8optionalIT_Ev.exit

bb.be:                                            ; preds = %bb.bd
  %i.kt = load ptr, ptr %i.m, align 8, !tbaa !872
  %i.ku = call fastcc noundef ptr @_ZL29tryExtractInitializerFromListPKN5clang12InitListExprEPKNS_4ento9MemRegionE(ptr noundef %.sroa.0371.0.copyload, ptr noundef %i.kt)
  br label %_ZNKR5clang4ento12ExplodedNode13getLocationAsINS_8PostStmtEEESt8optionalIT_Ev.exit

_ZNKR5clang4ento12ExplodedNode13getLocationAsINS_8PostStmtEEESt8optionalIT_Ev.exit: ; preds = %bb.bc, %_ZL23isTrivialCopyOrMoveCtorPKN5clang16CXXConstructExprE.exit.thread, %bb.aj, %bb.al, %bb.ak, %bb.ae, %bb.ah, %bb.ag, %bb.be, %bb.bd
  %.10 = phi ptr [ %.0196, %bb.bd ], [ %i.hc, %bb.ah ], [ %.0196, %bb.ag ], [ %.0196, %bb.ae ], [ %.0196, %bb.ak ], [ %i.ku, %bb.be ], [ %.0196, %bb.aj ], [ %i.hp, %bb.al ], [ %.5, %_ZL23isTrivialCopyOrMoveCtorPKN5clang16CXXConstructExprE.exit.thread ], [ %.5, %bb.bc ] ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i281 = load i64, ptr %i.ge, align 8, !noalias !2529
  %i.kv = trunc i64 %.0.copyload.i.i.i.i.i.i.i281 to i32
  %.0.copyload.i.i.i5.i.i.i.i282 = load i64, ptr %i.gg, align 8, !noalias !2529
  %i.kw = trunc i64 %.0.copyload.i.i.i5.i.i.i.i282 to i32
  %i.kx = shl i32 %i.kv, 3
  %i.ky = and i32 %i.kx, 48
  %i.kz = shl i32 %i.kw, 1
  %i.la = and i32 %i.kz, 12
  %i.lb = or disjoint i32 %i.la, %i.ky
  %.0.copyload.i.i.i6.i.i.i.i283 = load i64, ptr %i.gm, align 8, !noalias !2529 ; 3 uses
  %i.lc = trunc i64 %.0.copyload.i.i.i6.i.i.i.i283 to i32
  %i.ld = and i32 %i.lc, 3
  %i.le = or disjoint i32 %i.lb, %i.ld
  %i.lf = icmp eq i32 %i.le, 15
  br i1 %i.lf, label %bb.bf, label %_ZNKR5clang4ento12ExplodedNode13getLocationAsINS_9CallEnterEEESt8optionalIT_Ev.exit

bb.bf:                                            ; preds = %_ZNKR5clang4ento12ExplodedNode13getLocationAsINS_8PostStmtEEESt8optionalIT_Ev.exit
  %i.lg = load ptr, ptr %i.m, align 8, !tbaa !872 ; 4 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 16
  %i.li = load i32, ptr %i.lh, align 8, !tbaa !646
  %i.lj = and i32 %i.li, -2
  %i.lk = icmp ne i32 %i.lj, 22
  %.not239.not450 = icmp eq ptr %i.lg, null
  %.not239.not = or i1 %.not239.not450, %i.lk
  br i1 %.not239.not, label %_ZNKR5clang4ento12ExplodedNode13getLocationAsINS_9CallEnterEEESt8optionalIT_Ev.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ll = load ptr, ptr %i.lg, align 8, !tbaa !113
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 112
  %i.ln = load ptr, ptr %i.lm, align 8
  %i.lo = call noundef ptr %i.ln(ptr noundef nonnull align 8 dereferenceable(56) %i.lg) #24 ; 4 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 28
  %i.lq = load i32, ptr %i.lp, align 4
  %i.lr = and i32 %i.lq, 127
  %i.ls = icmp ne i32 %i.lr, 44
  %.not240451 = icmp eq ptr %i.lo, null
  %.not240 = or i1 %.not240451, %i.ls
  br i1 %.not240, label %_ZNK5clang15ObjCMessageExpr19getInstanceReceiverEv.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.lt = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !194, !nonnull !114, !align !195
  %i.lv = call noundef nonnull align 8 dereferenceable(288) ptr @_ZNK5clang4ento24PathSensitiveBugReporter15getStateManagerEv(ptr noundef nonnull align 8 dereferenceable(128) %i.lu) #24
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 248
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.ly = and i64 %.0.copyload.i.i.i6.i.i.i.i283, -4
end_hunk_0
