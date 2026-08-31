Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaOpenMP?download=true
inline.NumInlined: 65082
inline.NumDeleted: 21278
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 65
begin_hunk_0_@_ZN12_GLOBAL__N_114DSAAttrChecker16VisitDeclRefExprEPN5clang11DeclRefExprE:bb.a
  %i.bm = zext i32 %narrow.i.i.i.i.i to i64
  %i.bn = getelementptr inbounds i8, ptr %i.bh, i64 -6968
  %.val5.i.i.i.i = load ptr, ptr %i.bn, align 8, !tbaa !49
  %i.bo = getelementptr [1736 x i8], ptr %.val5.i.i.i.i, i64 %i.bm ; 3 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 -384
  %i.bq = load ptr, ptr %i.av, align 8, !tbaa !101
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = tail call noundef ptr %i.bs(ptr noundef nonnull align 8 dereferenceable(33) %i.av) #36, !inline_history !4798 ; 2 uses
  %i.bu = load ptr, ptr %i.bp, align 8, !tbaa !211, !noalias !7849 ; 3 uses
  %i.bv = getelementptr i8, ptr %i.bo, i64 -376
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !221, !noalias !7849 ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bo, i64 -364
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !222, !noalias !7849 ; 4 uses
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %.loopexit.i.i.i, label %bb.r

bb.r:                                             ; preds = %_ZN5clang16CanonicalDeclPtrIKNS_4DeclEEC2EPS2_.exit.i
  %i.ca = add i32 %i.by, -1                       ; 2 uses
  %i.cb = ptrtoint ptr %i.bt to i64
  %i.cc = mul i64 %i.cb, -4658895280553007687     ; 2 uses
  %i.cd = lshr i64 %i.cc, 31
  %i.ce = xor i64 %i.cd, %i.cc
  %i.cf = trunc i64 %i.ce to i32
  %i.cg = and i32 %i.ca, %i.cf                    ; 3 uses
  %i.ch = zext i32 %i.cg to i64                   ; 2 uses
  %i.ci = lshr i64 %i.ch, 5
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !187, !noalias !7858
  %i.cl = and i32 %i.cg, 31
  %i.cm = lshr i32 %i.ck, %i.cl
  %i.cn = trunc i32 %i.cm to i1
  br i1 %i.cn, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i, !prof !189

.lr.ph.i.i.i.i:                                   ; preds = %bb.r, %bb.s
  %i.co = phi i64 [ %i.cu, %bb.s ], [ %i.ch, %bb.r ]
  %.03.i.i.i.i = phi i32 [ %i.ct, %bb.s ], [ %i.cg, %bb.r ]
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %i.co ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !224, !noalias !7858
  %i.cr = icmp eq ptr %i.bt, %i.cq
  br i1 %i.cr, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_4DeclEEEN12_GLOBAL__N_110DSAStackTy22UsesAllocatorsDeclKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E4findERKS6_.exit.loopexit.i, label %bb.s, !prof !191

bb.s:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cs = add nuw i32 %.03.i.i.i.i, 1
  %i.ct = and i32 %i.cs, %i.ca                    ; 3 uses
  %i.cu = zext i32 %i.ct to i64                   ; 2 uses
  %i.cv = lshr i64 %i.cu, 5
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !187, !noalias !7858
  %i.cy = and i32 %i.ct, 31
  %i.cz = lshr i32 %i.cx, %i.cy
  %i.da = trunc i32 %i.cz to i1
  br i1 %i.da, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i, !prof !192

.loopexit.i.i.i:                                  ; preds = %bb.s, %bb.r, %_ZN5clang16CanonicalDeclPtrIKNS_4DeclEEC2EPS2_.exit.i
  %i.db = zext i32 %i.by to i64                   ; 2 uses
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %i.db
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_4DeclEEEN12_GLOBAL__N_110DSAStackTy22UsesAllocatorsDeclKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E4findERKS6_.exit.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_4DeclEEEN12_GLOBAL__N_110DSAStackTy22UsesAllocatorsDeclKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E4findERKS6_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i = zext i32 %i.by to i64
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_4DeclEEEN12_GLOBAL__N_110DSAStackTy22UsesAllocatorsDeclKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E4findERKS6_.exit.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_4DeclEEEN12_GLOBAL__N_110DSAStackTy22UsesAllocatorsDeclKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E4findERKS6_.exit.i: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_4DeclEEEN12_GLOBAL__N_110DSAStackTy22UsesAllocatorsDeclKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E4findERKS6_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_4DeclEEEN12_GLOBAL__N_110DSAStackTy22UsesAllocatorsDeclKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E4findERKS6_.exit.loopexit.i ], [ %i.db, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.cp, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_4DeclEEEN12_GLOBAL__N_110DSAStackTy22UsesAllocatorsDeclKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E4findERKS6_.exit.loopexit.i ], [ %i.dc, %.loopexit.i.i.i ]
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %.pre-phi.i
  %i.de = icmp eq ptr %.lcssa.sink.i.i.i, %i.dd
  br i1 %i.de, label %_ZNK12_GLOBAL__N_110DSAStackTy20isUsesAllocatorsDeclEPKN5clang4DeclE.exit.thread, label %_ZNK12_GLOBAL__N_110DSAStackTy20isUsesAllocatorsDeclEPKN5clang4DeclE.exit

_ZNK12_GLOBAL__N_110DSAStackTy20isUsesAllocatorsDeclEPKN5clang4DeclE.exit.thread: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_4DeclEEEN12_GLOBAL__N_110DSAStackTy22UsesAllocatorsDeclKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E4findERKS6_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.df = load ptr, ptr %0, align 8, !tbaa !2373
  call fastcc void @_ZN12_GLOBAL__N_110DSAStackTy9getTopDSAEPN5clang9ValueDeclEb(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef nonnull align 8 dereferenceable(28840) %i.df, ptr noundef nonnull %i.av, i1 noundef zeroext false)
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !1905
  %.not87 = icmp eq ptr %i.dh, null
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  br i1 %.not87, label %bb.t, label %.critedge7

bb.t:                                             ; preds = %_ZNK12_GLOBAL__N_110DSAStackTy20isUsesAllocatorsDeclEPKN5clang4DeclE.exit.thread
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 1632
  store ptr %i.av, ptr %i.a, align 8, !tbaa !190
  %i.dj = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E24lookupOrInsertIntoBucketIS5_JEEESt4pairIPSB_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(48) %i.di, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !7859
  %.fca.1.extract.i.i.i = extractvalue { ptr, i8 } %i.dj, 1
  %i.dk = trunc nuw i8 %.fca.1.extract.i.i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br i1 %i.dk, label %bb.u, label %.critedge108

.critedge7:                                       ; preds = %_ZNK12_GLOBAL__N_110DSAStackTy20isUsesAllocatorsDeclEPKN5clang4DeclE.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %.critedge108

bb.u:                                             ; preds = %bb.t
  %i.dl = call i64 @_ZN5clang24OMPDeclareTargetDeclAttr26isDeclareTargetDeclarationEPKNS_9ValueDeclE(ptr noundef nonnull %i.av) #36 ; 2 uses
  %.sroa.0123.0.extract.trunc = trunc i64 %i.dl to i32 ; 2 uses
  %.sroa.5.0.extract.shift = lshr i64 %i.dl, 32   ; 4 uses
  %i.dm = call noundef zeroext i1 @_ZNK5clang7VarDecl15hasLocalStorageEv(ptr noundef nonnull align 8 dereferenceable(100) %i.av)
  br i1 %i.dm, label %bb.aa, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dn = load ptr, ptr %i.y, align 8, !tbaa !2376 ; 2 uses
  %.not88 = icmp eq ptr %i.dn, null
  br i1 %.not88, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.do = call noundef zeroext i1 @_ZNK5clang12CapturedStmt16capturesVariableEPKNS_7VarDeclE(ptr noundef nonnull align 8 dereferenceable(32) %i.dn, ptr noundef nonnull %i.av) #36
  br i1 %i.do, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dp = load ptr, ptr %0, align 8, !tbaa !2373  ; 4 uses
  %i.dq = getelementptr i8, ptr %i.dp, i64 28624
  %.val112 = load ptr, ptr %i.dq, align 8, !tbaa !49
  %i.dr = getelementptr i8, ptr %i.dp, i64 28632
  %.val113 = load i32, ptr %i.dr, align 8, !tbaa !50
  %i.ds = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_110DSAStackTy25hasRequiresDeclWithClauseIN5clang28OMPUnifiedSharedMemoryClauseEEEbv(ptr %.val112, i32 %.val113)
  %.not177 = xor i1 %i.ds, true
  %i.dt = trunc i64 %.sroa.5.0.extract.shift to i1
  %.not89 = icmp eq i32 %.sroa.0123.0.extract.trunc, 2
  %i.du = and i1 %.not89, %i.dt
  %or.cond179 = select i1 %.not177, i1 %i.du, i1 false
  br i1 %or.cond179, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dv = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_110DSAStackTy31isImplicitDefaultFirstprivateFDEPN5clang7VarDeclE(ptr noundef nonnull align 8 dereferenceable(28840) %i.dp, ptr noundef nonnull %i.av)
  br i1 %i.dv, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dw = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_110DSAStackTy26isImplicitTaskFirstprivateEPN5clang4DeclE(ptr noundef nonnull align 8 dereferenceable(28840) %i.dp, ptr noundef nonnull %i.av)
  br i1 %i.dw, label %bb.aa, label %bb.bk

bb.aa:                                            ; preds = %bb.x, %bb.z, %bb.y, %bb.w, %bb.v, %bb.u
  %i.dx = call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #37
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !292
  %i.ea = icmp eq i32 %i.dz, 127                  ; 2 uses
  br i1 %i.ea, label %bb.ab, label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  %i.eb = load ptr, ptr %0, align 8, !tbaa !2373
  %i.ec = call fastcc noundef i32 @_ZNK12_GLOBAL__N_110DSAStackTy13getDefaultDSAEv(ptr noundef nonnull align 8 dereferenceable(28840) %i.eb)
  switch i32 %i.ec, label %bb.ag [
    i32 1, label %bb.ac
    i32 4, label %bb.ac
    i32 8, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab, %bb.ab, %bb.ab
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !2374
  %i.ef = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_133isImplicitOrExplicitTaskingRegionEN4llvm3omp9DirectiveE(i32 noundef %i.ee)
  br i1 %i.ef, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 1552 ; 2 uses
  %i.eh = call noundef i32 @_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E5countES5_(ptr noundef nonnull align 1 dereferenceable(1) %i.eg, ptr noundef nonnull %i.av)
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.ej = load ptr, ptr %0, align 8, !tbaa !2373  ; 2 uses
  %i.ek = call fastcc noundef i32 @_ZNK12_GLOBAL__N_110DSAStackTy13getDefaultDSAEv(ptr noundef nonnull align 8 dereferenceable(28840) %i.ej)
  switch i32 %i.ek, label %.thread167 [
    i32 1, label %.thread
    i32 8, label %bb.af
    i32 4, label %bb.af
  ]

bb.af:                                            ; preds = %bb.ae, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  call fastcc void @_ZNK12_GLOBAL__N_110DSAStackTy14getImplicitDSAEPN5clang9ValueDeclEb(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef nonnull align 8 dereferenceable(28840) %i.ej, ptr noundef nonnull %i.av, i1 noundef zeroext false)
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.em = load i32, ptr %i.el, align 4, !tbaa !292
  %i.en = icmp eq i32 %i.em, 127
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br i1 %i.en, label %.thread, label %.thread167

.thread:                                          ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  store ptr %i.av, ptr %i.b, align 8, !tbaa !190
  %i.eo = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E24lookupOrInsertIntoBucketIS5_JEEESt4pairIPSD_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.eg, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.eo, 0
  %i.ep = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8
  store ptr %1, ptr %i.ep, align 8, !tbaa !1077
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  br label %.thread167

.thread167:                                       ; preds = %bb.ae, %.thread, %bb.af
  %i.eq = load ptr, ptr %0, align 8, !tbaa !2373
  %i.er = call fastcc noundef i32 @_ZNK12_GLOBAL__N_110DSAStackTy13getDefaultDSAEv(ptr noundef nonnull align 8 dereferenceable(28840) %i.eq)
  %.not90 = icmp eq i32 %i.er, 1
  br i1 %.not90, label %bb.bk, label %bb.ag

bb.ag:                                            ; preds = %bb.ab, %.thread167, %bb.ad, %bb.ac, %bb.aa
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !2391, !nonnull !12, !align !13
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 216
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !1083, !nonnull !12, !align !13
  %i.ew = getelementptr i8, ptr %i.ev, i64 64
  %.val = load i64, ptr %i.ew, align 8
  %i.ex = call fastcc noundef i32 @_ZL27getVariableCategoryFromDeclRKN5clang11LangOptionsEPKNS_9ValueDeclE(i64 %.val, ptr noundef nonnull %i.av) ; 6 uses
  %i.ey = load ptr, ptr %i.es, align 8, !tbaa !2391, !nonnull !12, !align !13
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 216
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !1083, !nonnull !12, !align !13
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 64
  %i.fc = load i64, ptr %i.fb, align 8
  %i.fd = trunc i64 %i.fc to i32
  %i.fe = icmp ugt i32 %i.fd, 49
  br i1 %i.fe, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.ff = load ptr, ptr %0, align 8, !tbaa !2373
  %i.fg = call fastcc noundef i32 @_ZNK12_GLOBAL__N_110DSAStackTy21getDefaultmapModifierEN5clang26OpenMPDefaultmapClauseKindE(ptr noundef nonnull align 8 dereferenceable(28840) %i.ff, i32 noundef %i.ex)
  %i.fh = icmp eq i32 %i.fg, 10
  %or.cond = and i1 %i.ea, %i.fh
  br i1 %or.cond, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 1552 ; 2 uses
  %i.fj = call noundef i32 @_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E5countES5_(ptr noundef nonnull align 1 dereferenceable(1) %i.fi, ptr noundef nonnull %i.av)
  %i.fk = icmp ne i32 %i.fj, 0
  %i.fl = trunc i64 %.sroa.5.0.extract.shift to i1
  %or.cond180 = select i1 %i.fk, i1 true, i1 %i.fl
  br i1 %or.cond180, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fm = load ptr, ptr %0, align 8, !tbaa !2373
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  store ptr %i.av, ptr %5, align 8, !tbaa !7866
  %i.fn = ptrtoint ptr %5 to i64
  %i.fo = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_110DSAStackTy38checkMappableExprComponentListsForDeclEPKN5clang9ValueDeclEbN4llvm12function_refIFbNS5_8ArrayRefINS1_27OMPClauseMappableExprCommon17MappableComponentEEENS5_3omp6ClauseEEEE(ptr noundef nonnull align 8 dereferenceable(28840) %i.fm, ptr noundef nonnull %i.av, i1 noundef zeroext true, ptr nonnull @_ZN4llvm12function_refIFbNS_8ArrayRefIN5clang27OMPClauseMappableExprCommon17MappableComponentEEENS_3omp6ClauseEEE11callback_fnIZN12_GLOBAL__N_114DSAAttrChecker16VisitDeclRefExprEPNS2_11DeclRefExprEEUlS5_S7_E_EEblS5_S7_, i64 %i.fn)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br i1 %i.fo, label %bb.ak, label %.critedge100

.critedge100:                                     ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  store ptr %i.av, ptr %i.c, align 8, !tbaa !190
  %i.fp = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKN5clang9ValueDeclEPKNS2_4ExprELj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E24lookupOrInsertIntoBucketIS5_JEEESt4pairIPSD_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.fi, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.fca.0.extract.i115 = extractvalue { ptr, i8 } %i.fp, 0
  %i.fq = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i115, i64 8
  store ptr %1, ptr %i.fq, align 8, !tbaa !1077
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  br label %bb.bk

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %i.fr = load ptr, ptr %i.es, align 8, !tbaa !2391, !nonnull !12, !align !13
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 216
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !1083, !nonnull !12, !align !13
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 64
  %i.fv = load i64, ptr %i.fu, align 8
  %i.fw = trunc i64 %i.fv to i32
  %i.fx = icmp ugt i32 %i.fw, 50
  br i1 %i.fx, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.fy = load ptr, ptr %0, align 8, !tbaa !2373
  %i.fz = call fastcc noundef i32 @_ZNK12_GLOBAL__N_110DSAStackTy21getDefaultmapModifierEN5clang26OpenMPDefaultmapClauseKindE(ptr noundef nonnull align 8 dereferenceable(28840) %i.fy, i32 noundef %i.ex)
  %i.ga = icmp eq i32 %i.fz, 12
  br i1 %i.ga, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.gc = zext nneg i32 %i.ex to i64
  %i.gd = getelementptr inbounds nuw [48 x i8], ptr %i.gb, i64 %i.gc ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #36
  store i32 11, ptr %i.d, align 4, !tbaa !2321
  %i.ge = call noundef zeroext i1 @_ZN4llvm12is_containedIRNS_11SmallVectorIN5clang21OpenMPMapModifierKindELj7EEES3_EEbOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(44) %i.gd, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  br i1 %i.ge, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang21OpenMPMapModifierKindELb1EE9push_backES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.gd, i32 noundef 11)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.al, %bb.an, %bb.am, %bb.ak
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !2374
  %i.gh = call noundef zeroext i1 @_ZN5clang32isOpenMPTargetExecutionDirectiveEN4llvm3omp9DirectiveE(i32 noundef %i.gg) #36
  br i1 %i.gh, label %bb.ap, label %.critedge10

bb.ap:                                            ; preds = %bb.ao
  %i.gi = load ptr, ptr %0, align 8, !tbaa !2373
  %i.gj = call fastcc i32 @_ZNK12_GLOBAL__N_110DSAStackTy21isLoopControlVariableEPKN5clang9ValueDeclE(ptr noundef nonnull align 8 dereferenceable(28840) %i.gi, ptr noundef nonnull %i.av)
  %.not91 = icmp eq i32 %i.gj, 0
  br i1 %.not91, label %bb.aq, label %.critedge10

bb.aq:                                            ; preds = %bb.ap
  %i.gk = load ptr, ptr %0, align 8, !tbaa !2373
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  store ptr %0, ptr %6, align 8, !tbaa !7868
  %i.gl = ptrtoint ptr %6 to i64
  %i.gm = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_110DSAStackTy38checkMappableExprComponentListsForDeclEPKN5clang9ValueDeclEbN4llvm12function_refIFbNS5_8ArrayRefINS1_27OMPClauseMappableExprCommon17MappableComponentEEENS5_3omp6ClauseEEEE(ptr noundef nonnull align 8 dereferenceable(28840) %i.gk, ptr noundef nonnull %i.av, i1 noundef zeroext true, ptr nonnull @_ZN4llvm12function_refIFbNS_8ArrayRefIN5clang27OMPClauseMappableExprCommon17MappableComponentEEENS_3omp6ClauseEEE11callback_fnIZN12_GLOBAL__N_114DSAAttrChecker16VisitDeclRefExprEPNS2_11DeclRefExprEEUlS5_S7_E0_EEblS5_S7_, i64 %i.gl)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br i1 %i.gm, label %.critedge10, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  %i.gn = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %.sroa.0.0.copyload.i = load i64, ptr %i.gn, align 8, !tbaa !104
  store i64 %.sroa.0.0.copyload.i, ptr %7, align 8
  %i.go = call i64 @_ZNK5clang8QualType19getNonReferenceTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
  %i.gp = and i64 %i.go, -16
  %i.gq = inttoptr i64 %i.gp to ptr
  %i.gr = load ptr, ptr %i.gq, align 16, !tbaa !159
  %i.gs = call noundef ptr @_ZNK5clang4Type18getAsCXXRecordDeclEv(ptr noundef nonnull align 16 dereferenceable(24) %i.gr) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  %.not96 = icmp eq ptr %i.gs, null
  br i1 %.not96, label %.critedge102, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 128
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !2181 ; 2 uses
  %.not.i = icmp eq ptr %i.gu, null
  br i1 %.not.i, label %.critedge102, label %_ZNK5clang13CXXRecordDecl8isLambdaEv.exit

_ZNK5clang13CXXRecordDecl8isLambdaEv.exit:        ; preds = %bb.as
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.gw = load i32, ptr %i.gv, align 8
  %i.gx = and i32 %i.gw, 8388608
  %.not189 = icmp eq i32 %i.gx, 0
  br i1 %.not189, label %.critedge102, label %.critedge104

.critedge102:                                     ; preds = %bb.as, %bb.ar, %_ZNK5clang13CXXRecordDecl8isLambdaEv.exit
  %i.gy = load ptr, ptr %0, align 8, !tbaa !2373  ; 2 uses
  %i.gz = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_110DSAStackTy18mustBeFirstprivateEN5clang26OpenMPDefaultmapClauseKindE(ptr noundef nonnull align 8 dereferenceable(28840) %i.gy, i32 noundef %i.ex)
  %i.ha = trunc i64 %.sroa.5.0.extract.shift to i1
  %not. = xor i1 %i.gz, true
  %i.hb = select i1 %not., i1 true, i1 %i.ha
  br i1 %i.hb, label %.critedge106, label %.critedge104

.critedge104:                                     ; preds = %.critedge102, %_ZNK5clang13CXXRecordDecl8isLambdaEv.exit
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #36
  store ptr %1, ptr %i.e, align 8, !tbaa !1077
  %i.hd = call noundef zeroext i1 @_ZN4llvm9SetVectorIPN5clang4ExprENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EE6insertERKS3_(ptr noundef nonnull align 8 dereferenceable(40) %i.hc, ptr noundef nonnull align 8 dereferenceable(8) %i.e) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #36
  br label %bb.bk

.critedge106:                                     ; preds = %.critedge102
  %i.he = call fastcc noundef i32 @_ZNK12_GLOBAL__N_110DSAStackTy21getDefaultmapModifierEN5clang26OpenMPDefaultmapClauseKindE(ptr noundef nonnull align 8 dereferenceable(28840) %i.gy, i32 noundef %i.ex) ; 2 uses
  %i.hf = icmp eq i32 %i.he, 14
  br i1 %i.hf, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.critedge106
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #36
  store ptr %1, ptr %i.f, align 8, !tbaa !1077
  %i.hh = call noundef zeroext i1 @_ZN4llvm9SetVectorIPN5clang4ExprENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EE6insertERKS3_(ptr noundef nonnull align 8 dereferenceable(40) %i.hg, ptr noundef nonnull align 8 dereferenceable(8) %i.f) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #36
  br label %bb.bk

bb.au:                                            ; preds = %.critedge106
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i116 = load i64, ptr %i.hi, align 8, !tbaa !104
  %i.hj = call fastcc noundef zeroext i1 @_ZL28hasConstQualifiedMappingTypeN5clang8QualTypeE(i64 %.sroa.0.0.copyload.i116)
  switch i32 %i.he, label %_ZL28getMapClauseKindFromModifierN5clang30OpenMPDefaultmapClauseModifierEbb.exit [
    i32 5, label %bb.av
    i32 13, label %bb.av
    i32 6, label %bb.aw
    i32 7, label %bb.ax
    i32 8, label %bb.ay
    i32 12, label %bb.av
    i32 4, label %bb.az
    i32 11, label %bb.az
    i32 10, label %bb.az
  ]

bb.av:                                            ; preds = %bb.au, %bb.au, %bb.au
  br label %_ZL28getMapClauseKindFromModifierN5clang30OpenMPDefaultmapClauseModifierEbb.exit

bb.aw:                                            ; preds = %bb.au
  br label %_ZL28getMapClauseKindFromModifierN5clang30OpenMPDefaultmapClauseModifierEbb.exit

bb.ax:                                            ; preds = %bb.au
  br label %_ZL28getMapClauseKindFromModifierN5clang30OpenMPDefaultmapClauseModifierEbb.exit

bb.ay:                                            ; preds = %bb.au
  br label %_ZL28getMapClauseKindFromModifierN5clang30OpenMPDefaultmapClauseModifierEbb.exit

bb.az:                                            ; preds = %bb.au, %bb.au, %bb.au
  %i.hk = select i1 %i.hj, i64 1, i64 3
  br label %_ZL28getMapClauseKindFromModifierN5clang30OpenMPDefaultmapClauseModifierEbb.exit

_ZL28getMapClauseKindFromModifierN5clang30OpenMPDefaultmapClauseModifierEbb.exit: ; preds = %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az
  %.0.i = phi i64 [ 6, %bb.au ], [ 0, %bb.av ], [ 1, %bb.aw ], [ 2, %bb.ax ], [ 3, %bb.ay ], [ %i.hk, %bb.az ]
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.hm = zext nneg i32 %i.ex to i64
  %i.hn = getelementptr inbounds nuw [240 x i8], ptr %i.hl, i64 %i.hm
  %i.ho = getelementptr inbounds nuw [40 x i8], ptr %i.hn, i64 %.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #36
  store ptr %1, ptr %i.g, align 8, !tbaa !1077
  %i.hp = call noundef zeroext i1 @_ZN4llvm9SetVectorIPN5clang4ExprENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EE6insertERKS3_(ptr noundef nonnull align 8 dereferenceable(40) %i.ho, ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #36
  br label %bb.bk

.critedge10:                                      ; preds = %bb.ao, %bb.aq, %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  %i.hq = load ptr, ptr %0, align 8, !tbaa !2373
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  %i.hr = ptrtoint ptr %9 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  %i.hs = ptrtoint ptr %10 to i64
  call fastcc void @_ZNK12_GLOBAL__N_110DSAStackTy15hasInnermostDSAEPN5clang9ValueDeclEN4llvm12function_refIFbNS4_3omp6ClauseEbEEENS5_IFbNS6_9DirectiveEEEEb(ptr dead_on_unwind noalias writable align 8 %8, ptr noundef nonnull align 8 dereferenceable(28840) %i.hq, ptr noundef nonnull %i.av, ptr nonnull @_ZN4llvm12function_refIFbNS_3omp6ClauseEbEE11callback_fnIZN12_GLOBAL__N_114DSAAttrChecker16VisitDeclRefExprEPN5clang11DeclRefExprEEUlS2_bE_EEblS2_b, i64 %i.hr, ptr nonnull @_ZN4llvm12function_refIFbNS_3omp9DirectiveEEE11callback_fnIZN12_GLOBAL__N_114DSAAttrChecker16VisitDeclRefExprEPN5clang11DeclRefExprEEUlS2_E_EEblS2_, i64 %i.hs, i1 noundef zeroext true)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(37) %3, ptr noundef nonnull align 8 dereferenceable(37) %8, i64 37, i1 false), !tbaa.struct !1520
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  %i.ht = load i32, ptr %i.gf, align 8, !tbaa !2374
  %i.hu = call noundef zeroext i1 @_ZN5clang24isOpenMPTaskingDirectiveEN4llvm3omp9DirectiveE(i32 noundef %i.ht) #36
  %i.hv = load i32, ptr %i.dy, align 4
  %i.hw = icmp eq i32 %i.hv, 102
  %or.cond13 = select i1 %i.hu, i1 %i.hw, i1 false
  br i1 %or.cond13, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %.critedge10
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 1, ptr %i.hx, align 4, !tbaa !2286
  %i.hy = load ptr, ptr %i.es, align 8, !tbaa !2391, !nonnull !12, !align !13
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %i.hz, i32 %i.dx, i32 noundef 4696) #36
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %11) #36
  %i.ia = load ptr, ptr %i.es, align 8, !tbaa !2391, !nonnull !12, !align !13
  %i.ib = load ptr, ptr %0, align 8, !tbaa !2373
  call fastcc void @_ZL17reportOriginalDsaRN5clang4SemaEPKN12_GLOBAL__N_110DSAStackTyEPKNS_9ValueDeclERKNS3_10DSAVarDataEb(ptr noundef nonnull align 8 dereferenceable(18640) %i.ia, ptr noundef %i.ib, ptr noundef nonnull %i.av, ptr noundef nonnull align 8 dereferenceable(37) %3, i1 noundef zeroext false)
  br label %bb.bk

bb.bb:                                            ; preds = %.critedge10
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #36
  %i.ic = load ptr, ptr %0, align 8, !tbaa !2373
  call fastcc void @_ZNK12_GLOBAL__N_110DSAStackTy14getImplicitDSAEPN5clang9ValueDeclEb(ptr dead_on_unwind noalias writable align 8 %12, ptr noundef nonnull align 8 dereferenceable(28840) %i.ic, ptr noundef nonnull %i.av, i1 noundef zeroext false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(37) %3, ptr noundef nonnull align 8 dereferenceable(37) %12, i64 37, i1 false), !tbaa.struct !1520
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  %i.id = load i32, ptr %i.gf, align 8, !tbaa !2374
  %i.ie = call noundef zeroext i1 @_ZN5clang24isOpenMPTaskingDirectiveEN4llvm3omp9DirectiveE(i32 noundef %i.id) #36
  %i.if = load i32, ptr %i.dy, align 4            ; 3 uses
  %i.ig = icmp ne i32 %i.if, 113
  %or.cond16 = select i1 %i.ie, i1 %i.ig, i1 false
  %.pre191 = load ptr, ptr %0, align 8, !tbaa !2373 ; 2 uses
  br i1 %or.cond16, label %bb.bf, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ih = call fastcc noundef i32 @_ZNK12_GLOBAL__N_110DSAStackTy13getDefaultDSAEv(ptr noundef nonnull align 8 dereferenceable(28840) %.pre191) ; 2 uses
  %i.ii = icmp eq i32 %i.ih, 8
  %i.ij = icmp eq i32 %i.if, 43
  %or.cond19 = select i1 %i.ii, i1 %i.ij, i1 false
  br i1 %or.cond19, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ik = icmp ne i32 %i.ih, 4
  %i.il = icmp ne i32 %i.if, 99
  %or.cond22.not94 = select i1 %i.ik, i1 true, i1 %i.il
  %i.im = load ptr, ptr %i.dg, align 8
  %i.in = icmp ne ptr %i.im, null
  %or.cond25 = select i1 %or.cond22.not94, i1 true, i1 %i.in
  br i1 %or.cond25, label %.critedge27, label %bb.bf

bb.be:                                            ; preds = %bb.bc
  %.old23 = load ptr, ptr %i.dg, align 8, !tbaa !1905
  %.old24.not = icmp eq ptr %.old23, null
  br i1 %.old24.not, label %bb.bf, label %.critedge27

bb.bf:                                            ; preds = %bb.bd, %bb.bb, %bb.be
  %i.io = call fastcc i32 @_ZNK12_GLOBAL__N_110DSAStackTy21isLoopControlVariableEPKN5clang9ValueDeclE(ptr noundef nonnull align 8 dereferenceable(28840) %.pre191, ptr noundef nonnull %i.av)
  %.not95 = icmp eq i32 %i.io, 0
  br i1 %.not95, label %bb.bg, label %.critedge27

bb.bg:                                            ; preds = %bb.bf
  %i.ip = load ptr, ptr %0, align 8, !tbaa !2373
  %i.iq = call fastcc noundef i32 @_ZNK12_GLOBAL__N_110DSAStackTy13getDefaultDSAEv(ptr noundef nonnull align 8 dereferenceable(28840) %i.ip)
  %i.ir = icmp eq i32 %i.iq, 4
  br i1 %i.ir, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #36
  store ptr %1, ptr %i.h, align 8, !tbaa !1077
  %i.it = call noundef zeroext i1 @_ZN4llvm9SetVectorIPN5clang4ExprENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EE6insertERKS3_(ptr noundef nonnull align 8 dereferenceable(40) %i.is, ptr noundef nonnull align 8 dereferenceable(8) %i.h) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #36
  br label %bb.bk

bb.bi:                                            ; preds = %bb.bg
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #36
  store ptr %1, ptr %i.i, align 8, !tbaa !1077
  %i.iv = call noundef zeroext i1 @_ZN4llvm9SetVectorIPN5clang4ExprENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EE6insertERKS3_(ptr noundef nonnull align 8 dereferenceable(40) %i.iu, ptr noundef nonnull align 8 dereferenceable(8) %i.i) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #36
  br label %bb.bk

.critedge27:                                      ; preds = %bb.be, %bb.bd, %bb.bf
  %i.iw = load i32, ptr %i.gf, align 8, !tbaa !2374
  %i.ix = call noundef zeroext i1 @_ZN5clang32isOpenMPTargetExecutionDirectiveEN4llvm3omp9DirectiveE(i32 noundef %i.iw) #36
  %.not183 = xor i1 %i.ix, true
  %i.iy = trunc i64 %.sroa.5.0.extract.shift to i1
  %i.iz = icmp eq i32 %.sroa.0123.0.extract.trunc, 2
  %i.ja = and i1 %i.iz, %i.iy
  %or.cond185 = select i1 %.not183, i1 %i.ja, i1 false
  br i1 %or.cond185, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %.critedge27
  %i.jb = load ptr, ptr %0, align 8, !tbaa !2373
  call fastcc void @_ZN12_GLOBAL__N_110DSAStackTy34addToParentTargetRegionLinkGlobalsEPN5clang11DeclRefExprE(ptr noundef nonnull align 8 dereferenceable(28840) %i.jb, ptr noundef nonnull %1)
  br label %bb.bk

bb.bk:                                            ; preds = %.thread167, %.critedge27, %bb.bh, %bb.bi, %.critedge104, %_ZL28getMapClauseKindFromModifierN5clang30OpenMPDefaultmapClauseModifierEbb.exit, %bb.at, %.critedge100, %bb.bj, %bb.ba, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %_ZNK12_GLOBAL__N_110DSAStackTy20isUsesAllocatorsDeclEPKN5clang4DeclE.exit

.critedge108:                                     ; preds = %bb.t, %.critedge7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %_ZNK12_GLOBAL__N_110DSAStackTy20isUsesAllocatorsDeclEPKN5clang4DeclE.exit

_ZNK12_GLOBAL__N_110DSAStackTy20isUsesAllocatorsDeclEPKN5clang4DeclE.exit: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_4DeclEEEN12_GLOBAL__N_110DSAStackTy22UsesAllocatorsDeclKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E4findERKS6_.exit.i, %.critedge98, %bb.l, %bb.q, %.critedge108, %bb.d, %bb.bk, %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_114DSAAttrChecker13VisitCallExprEPN5clang8CallExprE(ptr noundef nonnull align 8 dereferenceable(1680) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i32, ptr %1, align 8
  %i.c = lshr i32 %i.b, 19
  %i.d = and i32 %i.c, 1
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !5212 ; 2 uses
  %i.i = zext i32 %i.h to i64
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx
  %.not2732 = icmp eq i32 %i.h, 0
  br i1 %.not2732, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !2047 ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.f, label %bb.d

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.023.033 = phi ptr [ %i.n, %bb.c ], [ %i.f, %bb.a ] ; 2 uses
  %i.m = load ptr, ptr %.sroa.023.033, align 8, !tbaa !2047 ; 2 uses
  %.not20 = icmp eq ptr %i.m, null
  br i1 %.not20, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call fastcc void @_ZN5clang15StmtVisitorBaseISt11add_pointerN12_GLOBAL__N_114DSAAttrCheckerEvJEE5VisitEPNS_4StmtE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.m)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.023.033, i64 8 ; 2 uses
  %.not27 = icmp eq ptr %i.n, %i.j
  br i1 %.not27, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %._crit_edge
  %i.o = tail call noundef ptr @_ZN5clang4Expr19IgnoreParenImpCastsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #37 ; 3 uses
  %i.p = load i16, ptr %i.o, align 8
  %i.q = and i16 %i.p, 511
  switch i16 %i.q, label %bb.f [
    i16 46, label %bb.e
    i16 73, label %.sink.split
  ]

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !3477
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.e
  %.sink = phi ptr [ %i.s, %bb.e ], [ %i.o, %bb.d ]
  tail call fastcc void @_ZN5clang15StmtVisitorBaseISt11add_pointerN12_GLOBAL__N_114DSAAttrCheckerEvJEE5VisitEPNS_4StmtE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %.sink)
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.d, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_114DSAAttrChecker9VisitStmtEPN5clang4StmtE(ptr noundef nonnull align 8 dereferenceable(1680) %0, ptr noundef nonnull %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::iterator_range.1348", align 8 ; 6 uses
end_hunk_0
