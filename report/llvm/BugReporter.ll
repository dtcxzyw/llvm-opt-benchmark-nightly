Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/BugReporter?download=true
inline.NumInlined: 7606
inline.NumDeleted: 4207
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNK12_GLOBAL__N_121PathDiagnosticBuilder30generatePathDiagnosticsForNodeERNS_23PathDiagnosticConstructERN5clang4ento22PathDiagnosticLocationE:bb.a
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.cy
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 -8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !1064
  br label %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit161

_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit161: ; preds = %bb.l, %bb.m
  %.0.i.i160 = phi ptr [ %i.cv, %bb.l ], [ %i.db, %bb.m ]
  %.val142 = load ptr, ptr %i.d, align 8, !tbaa !1350
  %i.dc = getelementptr i8, ptr %.val142, i64 24
  %.val142.val = load i64, ptr %i.dc, align 8, !tbaa !25
  %i.dd = and i64 %.val142.val, -8
  %i.de = inttoptr i64 %i.dd to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %.0.i.i160, ptr %i.c, align 8, !tbaa !1064
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.dg = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ento10PathPiecesEPKNS2_10StackFrameENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E24lookupOrInsertIntoBucketIRKS6_JEEESt4pairIPSE_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.df, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.dg, 0
  %i.dh = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 8
  store ptr %i.de, ptr %i.dh, align 8, !tbaa !1352
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.di = getelementptr inbounds nuw i8, ptr %i.cs, i64 376
  %i.dj = and i64 %.sroa.7339.0.copyload, -4
  %i.dk = inttoptr i64 %i.dj to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.di, ptr %i.b, align 8, !tbaa !1064
  %i.dl = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ento10PathPiecesEPKNS2_10StackFrameENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E24lookupOrInsertIntoBucketIRKS6_JEEESt4pairIPSE_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.df, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.fca.0.extract.i.i163 = extractvalue { ptr, i8 } %i.dl, 0
  %i.dm = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i163, i64 8
  store ptr %i.dk, ptr %i.dm, align 8, !tbaa !1352
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.n

bb.n:                                             ; preds = %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit161, %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit155
  %.0 = phi ptr [ %i.ck, %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit155 ], [ %i.cs, %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit161 ] ; 3 uses
  call void @_ZN5clang4ento23PathDiagnosticCallPiece9setCalleeERKNS_9CallEnterERKNS_13SourceManagerE(ptr noundef nonnull align 8 dereferenceable(400) %.0, ptr noundef nonnull align 8 dereferenceable(48) %58, ptr noundef nonnull align 8 dereferenceable(776) %i.m) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #29
  %i.dn = load ptr, ptr %.0, align 8, !tbaa !8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dp = load ptr, ptr %i.do, align 8
  call void %i.dp(ptr dead_on_unwind nonnull writable sret(%"class.clang::ento::PathDiagnosticLocation") align 8 %60, ptr noundef nonnull align 8 dereferenceable(400) %.0) #29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %2, ptr noundef nonnull align 8 dereferenceable(60) %60, i64 60, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #29
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !111 ; 2 uses
  %.not.i164 = icmp eq i32 %i.dr, 0
  br i1 %.not.i164, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ds = add i32 %i.dr, -1
  store i32 %i.ds, ptr %i.dq, align 8, !tbaa !111
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #29
  br label %_ZNK5clang12ProgramPoint5getAsINS_9BlockEdgeEEESt8optionalIT_Ev.exit

bb.q:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #29
  %i.dt = icmp eq i32 %i.w, 17
  br i1 %i.dt, label %bb.r, label %bb.ak

bb.r:                                             ; preds = %bb.q
  store ptr %.sroa.0336.0.copyload, ptr %61, align 8
  %.sroa.7339.0..sroa_idx342 = getelementptr inbounds nuw i8, ptr %61, i64 8
  store i64 %.sroa.7339.0.copyload, ptr %.sroa.7339.0..sroa_idx342, align 8
  %.sroa.13344.0..sroa_idx347 = getelementptr inbounds nuw i8, ptr %61, i64 16
  store i64 %.sroa.13344.0.copyload, ptr %.sroa.13344.0..sroa_idx347, align 8
  %.sroa.18.0..sroa_idx351 = getelementptr inbounds nuw i8, ptr %61, i64 24
  store i64 %.sroa.18.0.copyload, ptr %.sroa.18.0..sroa_idx351, align 8
  %.sroa.22.0..sroa_idx354 = getelementptr inbounds nuw i8, ptr %61, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.22.0..sroa_idx354, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.22, i64 16, i1 false)
  %i.du = getelementptr inbounds nuw i8, ptr %61, i64 48
  store i8 1, ptr %i.du, align 8, !tbaa !1853, !alias.scope !1855
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #29
  call void @_ZN5clang4ento23PathDiagnosticCallPiece9constructERKNS_11CallExitEndERKNS_13SourceManagerE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.1315") align 8 %62, ptr noundef nonnull align 8 dereferenceable(48) %61, ptr noundef nonnull align 8 dereferenceable(776) %i.m) #29
  %i.dv = load ptr, ptr %62, align 8, !tbaa !1858
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 376
  %i.dx = load ptr, ptr %61, align 8, !tbaa !1860
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.dw, ptr %i.a, align 8, !tbaa !1064
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dz = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ento10PathPiecesEPKNS2_10StackFrameENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E24lookupOrInsertIntoBucketIRKS6_JEEESt4pairIPSE_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.dy, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i.i169 = extractvalue { ptr, i8 } %i.dz, 0
  %i.ea = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i169, i64 8
  store ptr %i.dx, ptr %i.ea, align 8, !tbaa !1352
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val123 = load ptr, ptr %1, align 8, !tbaa !1341 ; 2 uses
  %i.eb = load ptr, ptr %.val123, align 8, !tbaa !8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 40
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = call noundef i32 %i.ed(ptr noundef nonnull align 8 dereferenceable(32) %.val123) #29, !inline_history !1846
  %i.ef = icmp sgt i32 %i.ee, 1
  br i1 %i.ef, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.val133 = load ptr, ptr %i.eg, align 8, !tbaa !1021 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.val133, i64 352
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !111 ; 2 uses
  %.not.i.i.i170 = icmp eq i32 %i.ei, 0
  br i1 %.not.i.i.i170, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ej = getelementptr inbounds nuw i8, ptr %.val133, i64 320
  br label %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit172

bb.u:                                             ; preds = %bb.s
  %i.ek = getelementptr inbounds nuw i8, ptr %.val133, i64 344
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !109
  %i.em = zext i32 %i.ei to i64
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.em
  %i.eo = getelementptr inbounds i8, ptr %i.en, i64 -8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !1064
  br label %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit172

_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit172: ; preds = %bb.t, %bb.u
  %.0.i.i171 = phi ptr [ %i.ej, %bb.t ], [ %i.ep, %bb.u ] ; 2 uses
  %i.eq = load ptr, ptr %62, align 8, !tbaa !1858 ; 5 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 312
  %i.es = load i64, ptr %i.er, align 8
  %.sroa.2408.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eq, i64 320 ; 2 uses
  %i.et = load <2 x ptr>, ptr %.sroa.2408.0..sroa_idx, align 8
  %.sroa.2408.0.copyload = load ptr, ptr %.sroa.2408.0..sroa_idx, align 8 ; 2 uses
  %.sroa.4409.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eq, i64 336
  %.sroa.4409.0.copyload = load ptr, ptr %.sroa.4409.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eq, i64 344
  %.sroa.5410.0.copyload = load i32, ptr %.sroa.5410.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eq, i64 348
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.8404, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6411.0..sroa_idx, i64 28, i1 false)
  %.not27.i173 = icmp eq ptr %.sroa.4409.0.copyload, null
  %i.eu = icmp eq i32 %.sroa.5410.0.copyload, 0
  %or.cond31.i175 = select i1 %.not27.i173, i1 true, i1 %i.eu
  br i1 %or.cond31.i175, label %_ZL13addEdgeToPathRN5clang4ento10PathPiecesERNS0_22PathDiagnosticLocationES3_.exit184, label %bb.v

bb.v:                                             ; preds = %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit172
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !279
  %.not28.i176 = icmp eq ptr %i.ew, null
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.0.0.copyload.i8.i177 = load i32, ptr %i.ex, align 8
  %.not29.i178 = icmp eq i32 %.sroa.0.0.copyload.i8.i177, 0
  %or.cond32.i179 = select i1 %.not28.i176, i1 true, i1 %.not29.i178
  br i1 %or.cond32.i179, label %_ZL13addEdgeToPathRN5clang4ento10PathPiecesERNS0_22PathDiagnosticLocationES3_.exit184, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not.i180 = icmp ne ptr %.sroa.2408.0.copyload, null
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8
  %i.fa = icmp eq ptr %.sroa.2408.0.copyload, %i.ez
  %or.cond.i181 = select i1 %.not.i180, i1 %i.fa, i1 false
  br i1 %or.cond.i181, label %_ZL13addEdgeToPathRN5clang4ento10PathPiecesERNS0_22PathDiagnosticLocationES3_.exit184, label %_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i182

_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i182: ; preds = %bb.w
  %i.fb = call noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #32, !noalias !1861 ; 8 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  store i32 1, ptr %i.fc, align 8, !tbaa !1067, !noalias !1866
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 12
  store i32 1, ptr %i.fd, align 4, !tbaa !1069, !noalias !1866
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5clang4ento30PathDiagnosticControlFlowPieceESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.fb, align 8, !tbaa !8, !noalias !1866
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 16 ; 3 uses
  call void @_ZN5clang4ento19PathDiagnosticPieceC2ENS1_4KindENS1_11DisplayHintE(ptr noundef nonnull align 8 dereferenceable(152) %i.fe, i32 noundef 0, i32 noundef 1) #29, !noalias !1866
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5clang4ento30PathDiagnosticControlFlowPieceE, i64 16), ptr %i.fe, align 8, !tbaa !8, !noalias !1866
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 144 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ff, i8 0, i64 24, i1 false), !noalias !1866
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9418)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.9418, ptr noundef nonnull align 8 dereferenceable(64) %2, i64 64, i1 false), !noalias !1866
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fb, i64 152
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fb, i64 160
  %i.fi = call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #32, !noalias !1866 ; 8 uses
  store i64 %i.es, ptr %i.fi, align 8, !noalias !1866
  %.sroa.4413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  store <2 x ptr> %i.et, ptr %.sroa.4413.0..sroa_idx, align 8, !noalias !1866
  %.sroa.6415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  store ptr %.sroa.4409.0.copyload, ptr %.sroa.6415.0..sroa_idx, align 8, !noalias !1866
  %.sroa.7416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fi, i64 32
  store i32 %.sroa.5410.0.copyload, ptr %.sroa.7416.0..sroa_idx, align 8, !noalias !1866
  %.sroa.8417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fi, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.8417.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.8404, i64 28, i1 false)
  %.sroa.9418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fi, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.9418.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.9418, i64 64, i1 false), !noalias !1866
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 128 ; 2 uses
  store ptr %i.fi, ptr %i.ff, align 8, !tbaa !1392, !noalias !1866
  store ptr %i.fj, ptr %i.fg, align 8, !tbaa !1395, !noalias !1866
  store ptr %i.fj, ptr %i.fh, align 8, !tbaa !1396, !noalias !1866
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9418)
  %i.fk = load ptr, ptr %.0.i.i171, align 8, !tbaa !1050
  %i.fl = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #32 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  store ptr %i.fe, ptr %i.fm, align 8, !tbaa !1058
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  store ptr %i.fb, ptr %i.fn, align 8, !tbaa !1065
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.fl, ptr noundef %i.fk) #29
  %i.fo = getelementptr inbounds nuw i8, ptr %.0.i.i171, i64 16 ; 2 uses
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !1066
  %i.fq = add i64 %i.fp, 1
  store i64 %i.fq, ptr %i.fo, align 8, !tbaa !1066
  br label %_ZL13addEdgeToPathRN5clang4ento10PathPiecesERNS0_22PathDiagnosticLocationES3_.exit184

_ZL13addEdgeToPathRN5clang4ento10PathPiecesERNS0_22PathDiagnosticLocationES3_.exit184: ; preds = %bb.v, %_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i182, %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit172, %bb.w
  store i32 1, ptr %2, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %.sroa.5.0..sroa_idx.i, i8 0, i64 56, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %_ZL13addEdgeToPathRN5clang4ento10PathPiecesERNS0_22PathDiagnosticLocationES3_.exit184, %bb.r
  %i.fr = load ptr, ptr %62, align 8, !tbaa !1858 ; 4 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %.val132 = load ptr, ptr %i.fs, align 8, !tbaa !1021 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.val132, i64 352
  %i.fu = load i32, ptr %i.ft, align 8, !tbaa !111 ; 2 uses
  %.not.i.i.i185 = icmp eq i32 %i.fu, 0
  br i1 %.not.i.i.i185, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fv = getelementptr inbounds nuw i8, ptr %.val132, i64 320
  br label %_ZNSt12__shared_ptrIN5clang4ento19PathDiagnosticPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.z:                                             ; preds = %bb.x
  %i.fw = getelementptr inbounds nuw i8, ptr %.val132, i64 344
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !109
  %i.fy = zext i32 %i.fu to i64
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.fy
  %i.ga = getelementptr inbounds i8, ptr %i.fz, i64 -8
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !1064
  br label %_ZNSt12__shared_ptrIN5clang4ento19PathDiagnosticPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5clang4ento19PathDiagnosticPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.z, %bb.y
  %.0.i.i186 = phi ptr [ %i.fv, %bb.y ], [ %i.gb, %bb.z ] ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %62, i64 8 ; 2 uses
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !1065
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %62, i8 0, i64 16, i1 false)
  %i.ge = load ptr, ptr %.0.i.i186, align 8, !tbaa !1050
  %i.gf = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #32 ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  store ptr %i.fr, ptr %i.gg, align 8, !tbaa !1058
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  store ptr %i.gd, ptr %i.gh, align 8, !tbaa !1065
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.gf, ptr noundef %i.ge) #29
  %i.gi = getelementptr inbounds nuw i8, ptr %.0.i.i186, i64 16 ; 2 uses
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !1066
  %i.gk = add i64 %i.gj, 1
  store i64 %i.gk, ptr %i.gi, align 8, !tbaa !1066
  %i.gl = load ptr, ptr %i.fs, align 8, !tbaa !1021 ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fr, i64 376 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 344 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 352 ; 3 uses
  %i.gp = load i32, ptr %i.go, align 8, !tbaa !111 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gl, i64 356
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !150
  %.not.i.i190 = icmp ult i32 %i.gp, %i.gr
  br i1 %.not.i.i190, label %bb.ab, label %bb.aa, !prof !227

bb.aa:                                            ; preds = %_ZNSt12__shared_ptrIN5clang4ento19PathDiagnosticPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ento10PathPiecesELb1EE15growAndPushBackES4_(ptr noundef nonnull align 8 dereferenceable(16) %i.gn, ptr noundef nonnull %i.gm)
  br label %_ZN5clang4ento14PathDiagnostic14pushActivePathEPNS0_10PathPiecesE.exit

bb.ab:                                            ; preds = %_ZNSt12__shared_ptrIN5clang4ento19PathDiagnosticPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.gs = zext i32 %i.gp to i64
  %i.gt = load ptr, ptr %i.gn, align 8, !tbaa !109
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %i.gs
  store ptr %i.gm, ptr %i.gu, align 1
  %i.gv = load i32, ptr %i.go, align 8, !tbaa !111
  %i.gw = add i32 %i.gv, 1
  store i32 %i.gw, ptr %i.go, align 8, !tbaa !111
  br label %_ZN5clang4ento14PathDiagnostic14pushActivePathEPNS0_10PathPiecesE.exit

_ZN5clang4ento14PathDiagnostic14pushActivePathEPNS0_10PathPiecesE.exit: ; preds = %bb.aa, %bb.ab
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.val119 = load ptr, ptr %i.d, align 8, !tbaa !1350 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !111 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !150
  %.not.i191 = icmp ult i32 %i.gz, %i.hb
  br i1 %.not.i191, label %bb.ad, label %bb.ac, !prof !227

bb.ac:                                            ; preds = %_ZN5clang4ento14PathDiagnostic14pushActivePathEPNS0_10PathPiecesE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang4ento23PathDiagnosticCallPieceEPKNS3_12ExplodedNodeEELb1EE15growAndPushBackES9_(ptr noundef nonnull align 8 dereferenceable(16) %i.gx, ptr %i.fr, ptr %.val119)
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang4ento23PathDiagnosticCallPieceEPKNS3_12ExplodedNodeEELb1EE9push_backES9_.exit

bb.ad:                                            ; preds = %_ZN5clang4ento14PathDiagnostic14pushActivePathEPNS0_10PathPiecesE.exit
  %i.hc = zext i32 %i.gz to i64
  %i.hd = load ptr, ptr %i.gx, align 8, !tbaa !109
  %i.he = getelementptr inbounds nuw [16 x i8], ptr %i.hd, i64 %i.hc ; 2 uses
  store ptr %i.fr, ptr %i.he, align 1
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  store ptr %.val119, ptr %.sroa.3.0..sroa_idx.i, align 1
  %i.hf = load i32, ptr %i.gy, align 8, !tbaa !111
  %i.hg = add i32 %i.hf, 1
  store i32 %i.hg, ptr %i.gy, align 8, !tbaa !111
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang4ento23PathDiagnosticCallPieceEPKNS3_12ExplodedNodeEELb1EE9push_backES9_.exit

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang4ento23PathDiagnosticCallPieceEPKNS3_12ExplodedNodeEELb1EE9push_backES9_.exit: ; preds = %bb.ac, %bb.ad
  %i.hh = load ptr, ptr %i.gc, align 8, !tbaa !1065 ; 8 uses
  %.not.i.i192 = icmp eq ptr %i.hh, null
  br i1 %.not.i.i192, label %_ZNSt12__shared_ptrIN5clang4ento23PathDiagnosticCallPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang4ento23PathDiagnosticCallPieceEPKNS3_12ExplodedNodeEELb1EE9push_backES9_.exit
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8 ; 4 uses
  %i.hj = load atomic i64, ptr %i.hi acquire, align 8 ; 2 uses
  %i.hk = icmp eq i64 %i.hj, 4294967297
  %i.hl = trunc i64 %i.hj to i32                  ; 2 uses
  br i1 %i.hk, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 0, ptr %i.hi, align 8, !tbaa !1067
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hh, i64 12
  store i32 0, ptr %i.hm, align 4, !tbaa !1069
  %i.hn = load ptr, ptr %i.hh, align 8, !tbaa !8
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %i.hp = load ptr, ptr %i.ho, align 8
  call void %i.hp(ptr noundef nonnull align 8 dereferenceable(16) %i.hh) #29, !inline_history !1867
  %i.hq = load ptr, ptr %i.hh, align 8, !tbaa !8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 24
  %i.hs = load ptr, ptr %i.hr, align 8
  call void %i.hs(ptr noundef nonnull align 8 dereferenceable(16) %i.hh) #29, !inline_history !1867
  br label %_ZNSt12__shared_ptrIN5clang4ento23PathDiagnosticCallPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ag:                                            ; preds = %bb.ae
  %i.ht = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i193 = icmp eq i8 %i.ht, 0
  br i1 %.not.i.i.i193, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hu = add nsw i32 %i.hl, -1
  store i32 %i.hu, ptr %i.hi, align 8, !tbaa !329
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i194

bb.ai:                                            ; preds = %bb.ag
  %i.hv = atomicrmw volatile add ptr %i.hi, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i194

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i194: ; preds = %bb.ai, %bb.ah
  %.0.i.i.i.i195 = phi i32 [ %i.hl, %bb.ah ], [ %i.hv, %bb.ai ]
  %i.hw = icmp eq i32 %.0.i.i.i.i195, 1
  br i1 %i.hw, label %bb.aj, label %_ZNSt12__shared_ptrIN5clang4ento23PathDiagnosticCallPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !228

bb.aj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i194
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hh) #29
  br label %_ZNSt12__shared_ptrIN5clang4ento23PathDiagnosticCallPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5clang4ento23PathDiagnosticCallPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang4ento23PathDiagnosticCallPieceEPKNS3_12ExplodedNodeEELb1EE9push_backES9_.exit, %bb.af, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i194, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #29
  br label %_ZNK5clang12ProgramPoint5getAsINS_9BlockEdgeEEESt8optionalIT_Ev.exit

bb.ak:                                            ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #29
  %i.hx = and i32 %i.t, 2
  %i.hy = add nuw nsw i32 %i.hx, -6
  %i.hz = add nsw i32 %i.hy, %i.s
  %i.ia = add nsw i32 %i.hz, %i.q
  %i.ib = icmp ult i32 %i.ia, 8
  br i1 %i.ib, label %bb.al, label %_ZNK5clang12ProgramPoint5getAsINS_8PostStmtEEESt8optionalIT_Ev.exit

bb.al:                                            ; preds = %bb.ak
  %.val122 = load ptr, ptr %1, align 8, !tbaa !1341 ; 2 uses
  %i.ic = load ptr, ptr %.val122, align 8, !tbaa !8
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 40
  %i.ie = load ptr, ptr %i.id, align 8
  %i.if = tail call noundef i32 %i.ie(ptr noundef nonnull align 8 dereferenceable(32) %.val122) #29, !inline_history !1846
  %i.ig = icmp sgt i32 %i.if, 1
  br i1 %i.ig, label %bb.am, label %_ZNK5clang12ProgramPoint5getAsINS_9BlockEdgeEEESt8optionalIT_Ev.exit

bb.am:                                            ; preds = %bb.al
  %i.ih = load i16, ptr %.sroa.0336.0.copyload, align 8
  %i.ii = and i16 %i.ih, 511
  %i.ij = icmp eq i16 %i.ii, 159
  br i1 %i.ij, label %_ZNK5clang12ProgramPoint5getAsINS_9BlockEdgeEEESt8optionalIT_Ev.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #29
  %.val141 = load ptr, ptr %i.d, align 8, !tbaa !1350
  %i.ik = getelementptr i8, ptr %.val141, i64 24
  %.val141.val = load i64, ptr %i.ik, align 8, !tbaa !25
  %i.il = and i64 %.val141.val, -8                ; 2 uses
  %i.im = tail call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0336.0.copyload) #31
  %.not.i200 = icmp eq i32 %i.im, 0               ; 2 uses
  %i.in = select i1 %.not.i200, i32 1, i32 2
  store i32 %i.in, ptr %63, align 8, !tbaa !824
  %i.io = getelementptr inbounds nuw i8, ptr %63, i64 8 ; 2 uses
  %i.ip = select i1 %.not.i200, ptr null, ptr %.sroa.0336.0.copyload
  store ptr %i.ip, ptr %i.io, align 8, !tbaa !832
  %i.iq = getelementptr inbounds nuw i8, ptr %63, i64 16 ; 2 uses
  store ptr null, ptr %i.iq, align 8, !tbaa !833
  %i.ir = getelementptr inbounds nuw i8, ptr %63, i64 24 ; 2 uses
  store ptr %i.m, ptr %i.ir, align 8, !tbaa !279
  %i.is = getelementptr inbounds nuw i8, ptr %63, i64 32 ; 2 uses
  %i.it = call { i32, ptr } @_ZNK5clang4ento22PathDiagnosticLocation11genLocationENS_14SourceLocationEN4llvm12PointerUnionIJPKNS_10StackFrameEPNS_19AnalysisDeclContextEEEE(ptr noundef nonnull align 8 dereferenceable(60) %63, i32 0, i64 %i.il) #29 ; 2 uses
  %i.iu = extractvalue { i32, ptr } %i.it, 0
  store i32 %i.iu, ptr %i.is, align 8
  %i.iv = getelementptr inbounds nuw i8, ptr %63, i64 40
  %i.iw = extractvalue { i32, ptr } %i.it, 1
  store ptr %i.iw, ptr %i.iv, align 8
  %i.ix = getelementptr inbounds nuw i8, ptr %63, i64 48
  %i.iy = call { i64, i8 } @_ZNK5clang4ento22PathDiagnosticLocation8genRangeEN4llvm12PointerUnionIJPKNS_10StackFrameEPNS_19AnalysisDeclContextEEEE(ptr noundef nonnull align 8 dereferenceable(60) %63, i64 %i.il) #29 ; 2 uses
  %.fca.0.extract.i = extractvalue { i64, i8 } %i.iy, 0
  %.fca.1.extract.i = extractvalue { i64, i8 } %i.iy, 1
  store i64 %.fca.0.extract.i, ptr %i.ix, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %63, i64 56
  store i8 %.fca.1.extract.i, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.iz = getelementptr inbounds nuw i8, ptr %1, i64 160
end_hunk_0
