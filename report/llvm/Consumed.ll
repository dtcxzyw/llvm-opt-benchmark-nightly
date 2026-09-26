Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Consumed?download=true
inline.NumInlined: 2410
inline.NumDeleted: 1365
begin_hunk_0_@_ZN5clang8consumed19ConsumedStmtVisitor21VisitCXXConstructExprEPKNS_16CXXConstructExprE:bb.a
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load ptr, ptr %i.y, align 16, !tbaa !162 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load i8, ptr %i.aa, align 16
  %i.ac = and i8 %i.ab, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i.i.i = icmp eq i8 %i.ac, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i.i.i, label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.ad = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.z) #14
  br label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i

_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i
  %.1.i.i.i.i = phi ptr [ %i.ad, %bb.c ], [ %i.z, %.lr.ph.i.i.i ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 16
  %i.af = load i24, ptr %i.ae, align 16
  %i.ag = and i24 %i.af, 1048576
  %.not.i.i.i = icmp eq i24 %i.ag, 0
  br i1 %.not.i.i.i, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !7

_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i.i: ; preds = %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i.i
  %.0.lcssa.i.i.i = phi ptr [ %.1.i8.i.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i.i ], [ %.1.i.i.i.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32
  %.sroa.0.0.in.i.sroa.speculate.load._ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i.i = load i64, ptr %i.ah, align 8, !tbaa !48
  %.pre = and i64 %.sroa.0.0.in.i.sroa.speculate.load._ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i.i, -16
  %.pre92 = inttoptr i64 %.pre to ptr
  br label %_ZNK5clang13CXXMethodDecl30getFunctionObjectParameterTypeEv.exit

_ZNK5clang13CXXMethodDecl30getFunctionObjectParameterTypeEv.exit: ; preds = %bb.b, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i.i, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i.i
  %.pre-phi93 = phi ptr [ %i.g, %bb.b ], [ %i.g, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i.i ], [ %.pre92, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i.i ] ; 2 uses
  %i.ai = load ptr, ptr %.pre-phi93, align 8, !tbaa !162
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i13 = load i64, ptr %i.aj, align 8, !tbaa !48
  %i.ak = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i13, -16
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load ptr, ptr %i.al, align 16, !tbaa !162 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load i8, ptr %i.an, align 16            ; 4 uses
  switch i8 %i.ao, label %bb.d [
    i8 43, label %_ZL16isConsumableTypeRKN5clang8QualTypeE.exit.thread83
    i8 42, label %_ZL16isConsumableTypeRKN5clang8QualTypeE.exit.thread83
    i8 40, label %_ZL16isConsumableTypeRKN5clang8QualTypeE.exit.thread83
  ]

bb.d:                                             ; preds = %_ZNK5clang13CXXMethodDecl30getFunctionObjectParameterTypeEv.exit
  %i.ap = add i8 %i.ao, -47
  %switch.i.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.ap, 3
  %i.aq = and i8 %i.ao, 62
  %spec.select.i.i.i.i = icmp eq i8 %i.aq, 48
  %or.cond.i.i = and i1 %switch.i.i.i.i.i.i.i.i.i.i.i, %spec.select.i.i.i.i
  br i1 %or.cond.i.i, label %bb.e, label %_ZL16isConsumableTypeRKN5clang8QualTypeE.exit.thread83

bb.e:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !168 ; 3 uses
  %i.at = icmp eq i8 %i.ao, 49
  br i1 %i.at, label %bb.f, label %select.unfold.i

bb.f:                                             ; preds = %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 28
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = and i32 %i.av, 127
  %i.ax = add nsw i32 %i.aw, -60
  %i.ay = icmp ult i32 %i.ax, 3
  br i1 %i.ay, label %select.unfold.i, label %_ZL16isConsumableTypeRKN5clang8QualTypeE.exit.thread83

select.unfold.i:                                  ; preds = %bb.f, %bb.e
  %i.az = tail call noundef ptr @_ZNK5clang13CXXRecordDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(144) %i.as) ; 2 uses
  %.not.not.i.i.i = icmp eq ptr %i.az, null
  %spec.select.i = select i1 %.not.not.i.i.i, ptr %i.as, ptr %i.az ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 28
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = and i32 %i.bb, 256
  %.not.i.i14 = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i14, label %_ZL16isConsumableTypeRKN5clang8QualTypeE.exit.thread83, label %bb.g

bb.g:                                             ; preds = %select.unfold.i
  %i.bd = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %spec.select.i) #14 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !72 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !73 ; 2 uses
  %i.bh = zext i32 %i.bg to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.bh, 3
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.i.i.i ; 2 uses
  %.not.i.i.i15 = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i.i15, label %_ZL16isConsumableTypeRKN5clang8QualTypeE.exit.thread83, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.g, %bb.h
  %.sroa.07.1.i.i.i.i.i = phi ptr [ %i.bn, %bb.h ], [ %i.be, %bb.g ] ; 3 uses
  %i.bj = load ptr, ptr %.sroa.07.1.i.i.i.i.i, align 8, !tbaa !75
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 36
  %i.bl = load i16, ptr %i.bk, align 4
  %i.bm = icmp eq i16 %i.bl, 194
  br i1 %i.bm, label %_ZL16isConsumableTypeRKN5clang8QualTypeE.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bn, %i.bi
  br i1 %.not.i.i.i.i.i.i, label %_ZL16isConsumableTypeRKN5clang8QualTypeE.exit.thread83, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !4

_ZL16isConsumableTypeRKN5clang8QualTypeE.exit:    ; preds = %.lr.ph.i.i.i.i.i.i
  %.not = icmp eq ptr %.sroa.07.1.i.i.i.i.i, %i.bi
  br i1 %.not, label %_ZL16isConsumableTypeRKN5clang8QualTypeE.exit.thread83, label %bb.i

bb.i:                                             ; preds = %_ZL16isConsumableTypeRKN5clang8QualTypeE.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = and i32 %i.bp, 256
  %.not.i = icmp eq i32 %i.bq, 0
  br i1 %.not.i, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.br = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %i.d) #14 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !72 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !73 ; 2 uses
  %i.bv = zext i32 %i.bu to i64
  %.idx.i.i = shl nuw nsw i64 %i.bv, 3
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.idx.i.i ; 2 uses
  %.not.i.i16 = icmp eq i32 %i.bu, 0
  br i1 %.not.i.i16, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.j, %bb.k
  %.sroa.07.1.i.i.i.i = phi ptr [ %i.cb, %bb.k ], [ %i.bs, %bb.j ] ; 3 uses
  %i.bx = load ptr, ptr %.sroa.07.1.i.i.i.i, align 8, !tbaa !75
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 36
  %i.bz = load i16, ptr %i.by, align 4
  %i.ca = icmp eq i16 %i.bz, 371
  br i1 %i.ca, label %_ZN5clangneENS_22specific_attr_iteratorINS_19ReturnTypestateAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cb, %i.bw
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !2

_ZN5clangneENS_22specific_attr_iteratorINS_19ReturnTypestateAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.not5.i.i = icmp eq ptr %.sroa.07.1.i.i.i.i, %i.bw
  br i1 %.not5.i.i, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %_ZN5clangneENS_22specific_attr_iteratorINS_19ReturnTypestateAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.i.i
  %i.cc = load ptr, ptr %i.bs, align 8, !tbaa !75 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 36
  %i.ce = load i16, ptr %i.cd, align 4
  %i.cf = icmp eq i16 %i.ce, 371
  br i1 %i.cf, label %_ZNK5clang4Decl7getAttrINS_19ReturnTypestateAttrEEEPT_v.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.l, %.lr.ph.i.i.i.i
  %i.cg = phi ptr [ %i.ch, %.lr.ph.i.i.i.i ], [ %i.bs, %bb.l ]
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !75 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 36
  %i.ck = load i16, ptr %i.cj, align 4
  %i.cl = icmp eq i16 %i.ck, 371
  br i1 %i.cl, label %_ZNK5clang4Decl7getAttrINS_19ReturnTypestateAttrEEEPT_v.exit, label %.lr.ph.i.i.i.i, !llvm.loop !3

_ZNK5clang4Decl7getAttrINS_19ReturnTypestateAttrEEEPT_v.exit: ; preds = %.lr.ph.i.i.i.i, %bb.l
  %i.cm = phi ptr [ %i.cc, %bb.l ], [ %i.ci, %.lr.ph.i.i.i.i ]
  %i.cn = getelementptr i8, ptr %i.cm, i64 40
  %.val = load i32, ptr %i.cn, align 8, !tbaa !159
  %i.co = zext nneg i32 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN5clang8consumed16ConsumedAnalyzer28determineExpectedReturnStateERNS_19AnalysisDeclContextEPKNS_12FunctionDeclE.28, i64 %i.co
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  store ptr %1, ptr %2, align 8, !tbaa !46
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 1, ptr %i.cq, align 8, !tbaa !47
  %.sroa.472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %switch.ext, ptr %.sroa.472.0..sroa_idx, align 8
  %i.cr = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4StmtENS2_8consumed15PropagationInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E24lookupOrInsertIntoBucketIS5_JS7_EEESt4pairIPSC_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.cp, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(56) %i.cq), !noalias !459 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %_ZL16isConsumableTypeRKN5clang8QualTypeE.exit.thread83

.loopexit:                                        ; preds = %bb.k, %bb.i, %bb.j, %_ZN5clangneENS_22specific_attr_iteratorINS_19ReturnTypestateAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.i.i
  %i.cs = tail call noundef zeroext i1 @_ZNK5clang18CXXConstructorDecl20isDefaultConstructorEv(ptr noundef nonnull align 8 dereferenceable(176) %i.d) #14
  br i1 %i.cs, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.loopexit
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  store ptr %1, ptr %3, align 8, !tbaa !46
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 1, ptr %i.cu, align 8, !tbaa !47
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 3, ptr %.sroa.462.0..sroa_idx, align 8
  %i.cv = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4StmtENS2_8consumed15PropagationInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E24lookupOrInsertIntoBucketIS5_JS7_EEESt4pairIPSC_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ct, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(56) %i.cu), !noalias !460 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %_ZL16isConsumableTypeRKN5clang8QualTypeE.exit.thread83

bb.n:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i32 0, ptr %i.b, align 4, !tbaa !38
  %i.cw = call noundef zeroext i1 @_ZNK5clang18CXXConstructorDecl17isMoveConstructorERj(ptr noundef nonnull align 8 dereferenceable(176) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br i1 %i.cw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cx = load i16, ptr %1, align 8
  %i.cy = and i16 %i.cx, 511
  %.not.i.i.i.i = icmp eq i16 %i.cy, 118
  %spec.select.v.i.i.i.i = select i1 %.not.i.i.i.i, i64 48, i64 40
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.v.i.i.i.i
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !156
  call void @_ZN5clang8consumed19ConsumedStmtVisitor8copyInfoEPKNS_4ExprES4_NS0_13ConsumedStateE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %i.da, ptr noundef nonnull %1, i32 noundef 3)
  br label %_ZL16isConsumableTypeRKN5clang8QualTypeE.exit.thread83

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i32 0, ptr %i.a, align 4, !tbaa !38
  %i.db = call noundef zeroext i1 @_ZNK5clang18CXXConstructorDecl17isCopyConstructorERj(ptr noundef nonnull align 8 dereferenceable(176) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br i1 %i.db, label %bb.q, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i

bb.q:                                             ; preds = %bb.p
  %i.dc = call i64 @_ZNK5clang13CXXMethodDecl11getThisTypeEv(ptr noundef nonnull align 8 dereferenceable(168) %i.d) #14
  %i.dd = and i64 %i.dc, -16
  %i.de = inttoptr i64 %i.dd to ptr
  %i.df = load ptr, ptr %i.de, align 16, !tbaa !162
  %i.dg = call noundef ptr @_ZNK5clang4Type23getPointeeCXXRecordDeclEv(ptr noundef nonnull align 16 dereferenceable(24) %i.df) #14 ; 3 uses
  %.not.not.not.i = icmp eq ptr %i.dg, null
  br i1 %.not.not.not.i, label %_ZL18isSetOnReadPtrTypeRKN5clang8QualTypeE.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 28
  %i.di = load i32, ptr %i.dh, align 4
  %i.dj = and i32 %i.di, 256
  %.not.i.i23 = icmp eq i32 %i.dj, 0
  br i1 %.not.i.i23, label %_ZL18isSetOnReadPtrTypeRKN5clang8QualTypeE.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dk = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %i.dg) #14 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !72 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !73 ; 2 uses
  %i.do = zext i32 %i.dn to i64
  %.idx.i.i.i24 = shl nuw nsw i64 %i.do, 3
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.idx.i.i.i24 ; 3 uses
  %.not.i.i.i25 = icmp eq i32 %i.dn, 0
  br i1 %.not.i.i.i25, label %_ZL18isSetOnReadPtrTypeRKN5clang8QualTypeE.exit, label %.lr.ph.i.i.i.i.i.i26

.lr.ph.i.i.i.i.i.i26:                             ; preds = %bb.s, %bb.t
  %.sroa.07.1.i.i.i.i.i27 = phi ptr [ %i.du, %bb.t ], [ %i.dl, %bb.s ] ; 3 uses
  %i.dq = load ptr, ptr %.sroa.07.1.i.i.i.i.i27, align 8, !tbaa !75
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 36
  %i.ds = load i16, ptr %i.dr, align 4
  %i.dt = icmp eq i16 %i.ds, 196
  br i1 %i.dt, label %_ZN5clangneENS_22specific_attr_iteratorINS_23ConsumableSetOnReadAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.loopexit.i.i.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i.i.i.i.i26
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i.i.i27, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i28 = icmp eq ptr %i.du, %i.dp
  br i1 %.not.i.i.i.i.i.i28, label %_ZN5clangneENS_22specific_attr_iteratorINS_23ConsumableSetOnReadAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i26, !llvm.loop !5

_ZN5clangneENS_22specific_attr_iteratorINS_23ConsumableSetOnReadAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.loopexit.i.i.i: ; preds = %bb.t, %.lr.ph.i.i.i.i.i.i26
  %.sroa.07.0.i.i.ph.i.i.i29 = phi ptr [ %i.dp, %bb.t ], [ %.sroa.07.1.i.i.i.i.i27, %.lr.ph.i.i.i.i.i.i26 ]
  %i.dv = icmp ne ptr %.sroa.07.0.i.i.ph.i.i.i29, %i.dp
  %i.dw = zext i1 %i.dv to i32
  br label %_ZL18isSetOnReadPtrTypeRKN5clang8QualTypeE.exit

_ZL18isSetOnReadPtrTypeRKN5clang8QualTypeE.exit:  ; preds = %bb.q, %bb.r, %bb.s, %_ZN5clangneENS_22specific_attr_iteratorINS_23ConsumableSetOnReadAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.loopexit.i.i.i
  %spec.select.i30 = phi i32 [ 0, %bb.q ], [ 0, %bb.r ], [ 0, %bb.s ], [ %i.dw, %_ZN5clangneENS_22specific_attr_iteratorINS_23ConsumableSetOnReadAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.loopexit.i.i.i ]
  %i.dx = load i16, ptr %1, align 8
  %i.dy = and i16 %i.dx, 511
  %.not.i.i.i.i31 = icmp eq i16 %i.dy, 118
  %spec.select.v.i.i.i.i32 = select i1 %.not.i.i.i.i31, i64 48, i64 40
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.v.i.i.i.i32
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !156
  call void @_ZN5clang8consumed19ConsumedStmtVisitor8copyInfoEPKNS_4ExprES4_NS0_13ConsumedStateE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %i.ea, ptr noundef nonnull %1, i32 noundef %spec.select.i30)
  br label %_ZL16isConsumableTypeRKN5clang8QualTypeE.exit.thread83

_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i:     ; preds = %bb.p
  %i.eb = load ptr, ptr %.pre-phi93, align 8, !tbaa !162
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.ec, align 8, !tbaa !48
  %i.ed = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -16
  %i.ee = inttoptr i64 %i.ed to ptr
  %i.ef = load ptr, ptr %i.ee, align 16, !tbaa !162, !nonnull !87, !noundef !87 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.eh = load i8, ptr %i.eg, align 16            ; 2 uses
  %i.ei = add nsw i8 %i.eh, -47
  %switch.i.i.i.i.i.i.i.i.i.i.i34 = icmp ult i8 %i.ei, 3
  %i.ej = and i8 %i.eh, 62
  %spec.select.i.i.i.i35 = icmp eq i8 %i.ej, 48
  call void @llvm.assume(i1 %switch.i.i.i.i.i.i.i.i.i.i.i34)
  call void @llvm.assume(i1 %spec.select.i.i.i.i35)
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !168 ; 2 uses
  %i.em = call noundef ptr @_ZNK5clang13CXXRecordDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(144) %i.el) ; 2 uses
  %.not.not.i.i.i36 = icmp eq ptr %i.em, null
  %spec.select.i.i.i = select i1 %.not.not.i.i.i36, ptr %i.el, ptr %i.em
  %i.en = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %spec.select.i.i.i) #14
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !72 ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !75 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 36
  %i.er = load i16, ptr %i.eq, align 4
  %i.es = icmp eq i16 %i.er, 194
  br i1 %i.es, label %_ZNK5clang4Decl7getAttrINS_14ConsumableAttrEEEPT_v.exit.i, label %.lr.ph.i.i.i.i.i42

.lr.ph.i.i.i.i.i42:                               ; preds = %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i, %.lr.ph.i.i.i.i.i42
  %i.et = phi ptr [ %i.eu, %.lr.ph.i.i.i.i.i42 ], [ %i.eo, %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i ]
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8 ; 2 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !75 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 36
  %i.ex = load i16, ptr %i.ew, align 4
  %i.ey = icmp eq i16 %i.ex, 194
  br i1 %i.ey, label %_ZNK5clang4Decl7getAttrINS_14ConsumableAttrEEEPT_v.exit.i, label %.lr.ph.i.i.i.i.i42, !llvm.loop !6

_ZNK5clang4Decl7getAttrINS_14ConsumableAttrEEEPT_v.exit.i: ; preds = %.lr.ph.i.i.i.i.i42, %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i
  %i.ez = phi ptr [ %i.ep, %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i ], [ %i.ev, %.lr.ph.i.i.i.i.i42 ]
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 40
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !173
  %i.fc = zext nneg i32 %i.fb to i64
  %switch.gep105 = getelementptr inbounds nuw i8, ptr @switch.table._ZN5clang8consumed16ConsumedAnalyzer28determineExpectedReturnStateERNS_19AnalysisDeclContextEPKNS_12FunctionDeclE.28, i64 %i.fc
  %switch.load106 = load i8, ptr %switch.gep105, align 1
  %switch.ext107 = zext i8 %switch.load106 to i32
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  store ptr %1, ptr %4, align 8, !tbaa !46
  %i.fe = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 1, ptr %i.fe, align 8, !tbaa !47
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %switch.ext107, ptr %.sroa.451.0..sroa_idx, align 8
  %i.ff = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4StmtENS2_8consumed15PropagationInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E24lookupOrInsertIntoBucketIS5_JS7_EEESt4pairIPSC_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.fd, ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(56) %i.fe), !noalias !461 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %_ZL16isConsumableTypeRKN5clang8QualTypeE.exit.thread83

_ZL16isConsumableTypeRKN5clang8QualTypeE.exit.thread83: ; preds = %bb.h, %bb.f, %bb.d, %bb.g, %select.unfold.i, %_ZNK5clang13CXXMethodDecl30getFunctionObjectParameterTypeEv.exit, %_ZNK5clang13CXXMethodDecl30getFunctionObjectParameterTypeEv.exit, %_ZNK5clang13CXXMethodDecl30getFunctionObjectParameterTypeEv.exit, %_ZNK5clang4Decl7getAttrINS_19ReturnTypestateAttrEEEPT_v.exit, %bb.o, %_ZNK5clang4Decl7getAttrINS_14ConsumableAttrEEEPT_v.exit.i, %_ZL18isSetOnReadPtrTypeRKN5clang8QualTypeE.exit, %bb.m, %_ZL16isConsumableTypeRKN5clang8QualTypeE.exit
  ret void
}

declare noundef zeroext i1 @_ZNK5clang18CXXConstructorDecl20isDefaultConstructorEv(ptr noundef nonnull align 8 dereferenceable(176)) local_unnamed_addr #5

declare i64 @_ZNK5clang13CXXMethodDecl11getThisTypeEv(ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang8consumed19ConsumedStmtVisitor22VisitCXXMemberCallExprEPKNS_17CXXMemberCallExprE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK5clang17CXXMemberCallExpr13getMethodDeclEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #14 ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_ZNK5clang17CXXMemberCallExpr25getImplicitObjectArgumentEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  %i.c = tail call noundef zeroext i1 @_ZN5clang8consumed19ConsumedStmtVisitor10handleCallEPKNS_8CallExprEPKNS_4ExprEPKNS_12FunctionDeclE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %1, ptr noundef %i.b, ptr noundef nonnull %i.a) ; 0 uses
  tail call void @_ZN5clang8consumed19ConsumedStmtVisitor19propagateReturnTypeEPKNS_4ExprEPKNS_12FunctionDeclE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %1, ptr noundef nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare noundef ptr @_ZNK5clang17CXXMemberCallExpr13getMethodDeclEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

declare noundef ptr @_ZNK5clang17CXXMemberCallExpr25getImplicitObjectArgumentEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang8consumed19ConsumedStmtVisitor24VisitCXXOperatorCallExprEPKNS_19CXXOperatorCallExprE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.c = tail call noundef ptr @_ZN5clang4Expr25getReferencedDeclOfCalleeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #14 ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNK5clang8CallExpr15getDirectCalleeEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.e = load i32, ptr %i.d, align 4
  %i.f = and i32 %i.e, 127
  %i.g = add nsw i32 %i.f, -35
  %i.h = icmp ult i32 %i.g, 6
  br i1 %i.h, label %_ZNK5clang8CallExpr15getDirectCalleeEv.exit, label %_ZNK5clang8CallExpr15getDirectCalleeEv.exit.thread

_ZNK5clang8CallExpr15getDirectCalleeEv.exit:      ; preds = %bb.b
  %i.i = load i32, ptr %1, align 8                ; 4 uses
  %i.j = and i32 %i.i, 2113929216
  %i.k = icmp eq i32 %i.j, 503316480
  br i1 %i.k, label %bb.c, label %bb.k

bb.c:                                             ; preds = %_ZNK5clang8CallExpr15getDirectCalleeEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.m = lshr i32 %i.i, 19
  %i.n = and i32 %i.m, 1
  %i.o = zext nneg i32 %i.n to i64                ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !156  ; 5 uses
  %i.s = load i16, ptr %i.r, align 8, !noalias !472
  %i.t = and i16 %i.s, 511
  %.not.i.i = icmp eq i16 %i.t, 62
  br i1 %.not.i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.u = load i32, ptr %i.r, align 8, !noalias !472
  %i.v = and i32 %i.u, 524288
  %.not8.i.i = icmp eq i32 %i.v, 0
  br i1 %.not8.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !31, !noalias !472
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0.i.i = phi ptr [ %i.r, %bb.d ], [ %i.x, %bb.e ], [ %i.r, %bb.c ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = tail call noundef ptr @_ZN5clang4Expr12IgnoreParensEv(ptr noundef nonnull align 8 dereferenceable(16) %.0.i.i) #16, !noalias !472 ; 2 uses
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !35, !noalias !473 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !36, !noalias !473 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !37, !noalias !473 ; 4 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %.loopexit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = add i32 %i.ae, -1                       ; 2 uses
  %i.ah = ptrtoint ptr %i.z to i64
  %i.ai = mul i64 %i.ah, -4658895280553007687     ; 2 uses
  %i.aj = lshr i64 %i.ai, 31
  %i.ak = xor i64 %i.aj, %i.ai
  %i.al = trunc i64 %i.ak to i32
  %i.am = and i32 %i.ag, %i.al                    ; 3 uses
  %i.an = zext i32 %i.am to i64                   ; 2 uses
  %i.ao = lshr i64 %i.an, 5
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !38, !noalias !474
  %i.ar = and i32 %i.am, 31
  %i.as = lshr i32 %i.aq, %i.ar
  %i.at = trunc i32 %i.as to i1
  br i1 %i.at, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i.i.i.i, !prof !39

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.g, %bb.h
  %i.au = phi i64 [ %i.ba, %bb.h ], [ %i.an, %bb.g ]
  %.017.i.i.i.i.i.i = phi i32 [ %i.az, %bb.h ], [ %i.am, %bb.g ]
  %i.av = getelementptr inbounds nuw [64 x i8], ptr %i.aa, i64 %i.au ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !40, !noalias !474
  %i.ax = icmp eq ptr %i.z, %i.aw
  br i1 %i.ax, label %_ZN5clang8consumed19ConsumedStmtVisitor8findInfoEPKNS_4ExprE.exit.loopexit.i, label %bb.h, !prof !41

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ay = add nuw i32 %.017.i.i.i.i.i.i, 1
  %i.az = and i32 %i.ay, %i.ag                    ; 3 uses
  %i.ba = zext i32 %i.az to i64                   ; 2 uses
  %i.bb = lshr i64 %i.ba, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !38, !noalias !474
  %i.be = and i32 %i.az, 31
  %i.bf = lshr i32 %i.bd, %i.be
  %i.bg = trunc i32 %i.bf to i1
  br i1 %i.bg, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i.i.i.i, !prof !42

.loopexit.i.i.i.i:                                ; preds = %bb.h, %bb.g, %bb.f
  %i.bh = zext i32 %i.ae to i64                   ; 2 uses
  %i.bi = getelementptr inbounds nuw [64 x i8], ptr %i.aa, i64 %i.bh
  br label %_ZN5clang8consumed19ConsumedStmtVisitor8findInfoEPKNS_4ExprE.exit.i

_ZN5clang8consumed19ConsumedStmtVisitor8findInfoEPKNS_4ExprE.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre.i = zext i32 %i.ae to i64
  br label %_ZN5clang8consumed19ConsumedStmtVisitor8findInfoEPKNS_4ExprE.exit.i

_ZN5clang8consumed19ConsumedStmtVisitor8findInfoEPKNS_4ExprE.exit.i: ; preds = %_ZN5clang8consumed19ConsumedStmtVisitor8findInfoEPKNS_4ExprE.exit.loopexit.i, %.loopexit.i.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN5clang8consumed19ConsumedStmtVisitor8findInfoEPKNS_4ExprE.exit.loopexit.i ], [ %i.bh, %.loopexit.i.i.i.i ]
  %.lcssa.sink.i.i.i.i = phi ptr [ %i.av, %_ZN5clang8consumed19ConsumedStmtVisitor8findInfoEPKNS_4ExprE.exit.loopexit.i ], [ %i.bi, %.loopexit.i.i.i.i ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [64 x i8], ptr %i.aa, i64 %.pre-phi.i
  %.not.i = icmp eq ptr %.lcssa.sink.i.i.i.i, %i.bj
  br i1 %.not.i, label %_ZN5clang8consumed19ConsumedStmtVisitor7getInfoEPKNS_4ExprE.exit, label %bb.i

end_hunk_0
