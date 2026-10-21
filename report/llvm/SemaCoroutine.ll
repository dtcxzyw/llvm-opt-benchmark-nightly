Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaCoroutine?download=true
inline.NumInlined: 3398
inline.NumDeleted: 1861
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN5clang20CoroutineStmtBuilder20makeNewAndDeleteExprEv:bb.a
  %i.pk = and i64 %.sroa.0.0.copyload.i124, -16
  %i.pl = inttoptr i64 %i.pk to ptr
  %i.pm = load ptr, ptr %i.pl, align 16, !tbaa !713 ; 3 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 16
  %i.po = load i8, ptr %i.pn, align 16
  %.not.i125 = icmp eq i8 %i.po, 24
  br i1 %.not.i125, label %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.pp = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.pm) #19
  br label %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit

_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit: ; preds = %bb.bt, %bb.bu
  %.1.i = phi ptr [ %i.pp, %bb.bu ], [ %i.pm, %bb.bt ]
  %i.pq = call noundef i32 @_ZNK5clang17FunctionProtoType8canThrowEv(ptr noundef nonnull align 16 dereferenceable(48) %.1.i) #19
  %i.pr = icmp eq i32 %i.pq, 0
  br i1 %i.pr, label %.critedge91, label %bb.bv

bb.bv:                                            ; preds = %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  %i.ps = load ptr, ptr %i.r, align 8, !tbaa !999, !nonnull !715, !align !716
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 8
  %i.pu = load ptr, ptr %i.e, align 8, !tbaa !973
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 24
  %.sroa.0.0.copyload.i126 = load i32, ptr %i.pv, align 8, !tbaa !717
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %18, ptr noundef nonnull align 8 dereferenceable(8) %i.pt, i32 %.sroa.0.0.copyload.i126, i32 noundef 3564) #19
  %i.pw = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIPNS_12FunctionDeclEEERKNS_8SemaBase21SemaDiagnosticBuilderES6_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %18, ptr noundef nonnull align 8 dereferenceable(8) %i.e) ; 0 uses
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %18) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  %i.px = load ptr, ptr %i.r, align 8, !tbaa !999, !nonnull !715, !align !716
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 8
  %.sroa.040.0.copyload = load i32, ptr %i.t, align 4, !tbaa !717
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %19, ptr noundef nonnull align 8 dereferenceable(8) %i.py, i32 %.sroa.040.0.copyload, i32 noundef 6004) #19
  %i.pz = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIPNS_12FunctionDeclEEERKNS_8SemaBase21SemaDiagnosticBuilderES6_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %19, ptr noundef nonnull align 8 dereferenceable(8) %i.e) ; 0 uses
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %19) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  br label %.critedge

.critedge91:                                      ; preds = %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit, %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #19
  store ptr null, ptr %i.k, align 8, !tbaa !973
  %i.qa = load ptr, ptr %i.r, align 8, !tbaa !999, !nonnull !715, !align !716 ; 6 uses
  %.sroa.039.0.copyload = load i32, ptr %i.t, align 4, !tbaa !717 ; 4 uses
  %.sroa.038.0.copyload = load i64, ptr %11, align 8, !tbaa !24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 232
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !714, !nonnull !715, !align !716
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 17888
  %i.qe = ptrtoint ptr %i.qd to i64
  %i.qf = or disjoint i64 %i.qe, 6                ; 3 uses
  call fastcc void @_ZL27DiagnoseTypeAwareAllocatorsRN5clang4SemaENS_14SourceLocationEjNS_15DeclarationNameENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(18640) %i.qa, i32 %.sroa.039.0.copyload, i32 noundef 6914, i64 %i.qf, i64 %.sroa.038.0.copyload)
  %i.qg = and i64 %.sroa.038.0.copyload, -16
  %i.qh = inttoptr i64 %i.qg to ptr
  %i.qi = load ptr, ptr %i.qh, align 16, !tbaa !713
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i127 = load i64, ptr %i.qj, align 8, !tbaa !24
  %i.qk = and i64 %.sroa.0.0.copyload.i.i.i.i.i127, -16
  %i.ql = inttoptr i64 %i.qk to ptr
  %i.qm = load ptr, ptr %i.ql, align 16, !tbaa !713 ; 3 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 16
  %i.qo = load i8, ptr %i.qn, align 16            ; 3 uses
  %i.qp = add i8 %i.qo, -47
  %switch.i.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.qp, 3
  %.not.i7.i.i = icmp ne ptr %i.qm, null
  %.not.i.not8.i.i = and i1 %.not.i7.i.i, %switch.i.i.i.i.i.i.i.i.i.i.i
  %i.qq = and i8 %i.qo, 62
  %spec.select.i.i.i.i = icmp eq i8 %i.qq, 48
  %or.cond.i.i = and i1 %spec.select.i.i.i.i, %.not.i.not8.i.i
  br i1 %or.cond.i.i, label %bb.bw, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i128

bb.bw:                                            ; preds = %.critedge91
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qm, i64 24
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !726 ; 3 uses
  %i.qt = icmp eq i8 %i.qo, 49
  br i1 %i.qt, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qs, i64 28
  %i.qv = load i32, ptr %i.qu, align 4
  %i.qw = and i32 %i.qv, 127
  %i.qx = add nsw i32 %i.qw, -60
  %i.qy = icmp ult i32 %i.qx, 3
  br i1 %i.qy, label %bb.by, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i128

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.qz = call noundef ptr @_ZNK5clang13CXXRecordDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(144) %i.qs) ; 2 uses
  %.not.not.i.i.i133 = icmp eq ptr %i.qz, null
  %spec.select.i.i.i134 = select i1 %.not.not.i.i.i133, ptr %i.qs, ptr %i.qz
  br label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i128

_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i128:  ; preds = %bb.by, %bb.bx, %.critedge91
  %.1.i.i129 = phi ptr [ null, %bb.bx ], [ null, %.critedge91 ], [ %spec.select.i.i.i134, %bb.by ]
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qa, i64 216
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !774, !nonnull !715, !align !716
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 8
  %i.rd = load i64, ptr %i.rc, align 8
  %i.re = lshr i64 %i.rd, 59
  %i.rf = trunc nuw nsw i64 %i.re to i32
  %i.rg = and i32 %i.rf, 1                        ; 2 uses
  store i64 0, ptr %1, align 8, !tbaa !24
  %.sroa.5.0..sroa_idx.i130 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 0, ptr %.sroa.5.0..sroa_idx.i130, align 8, !tbaa !1019
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.rg, ptr %.sroa.6.0..sroa_idx.i, align 4, !tbaa !1020
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 1, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !1594
  %i.rh = call noundef zeroext i1 @_ZN5clang4Sema24FindDeallocationFunctionENS_14SourceLocationEPNS_13CXXRecordDeclENS_15DeclarationNameERPNS_12FunctionDeclENS_30ImplicitDeallocationParametersEb(ptr noundef nonnull align 8 dereferenceable(18640) %i.qa, i32 %.sroa.039.0.copyload, ptr noundef %.1.i.i129, i64 %i.qf, ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull byval(%"struct.clang::ImplicitDeallocationParameters") align 8 %1, i1 noundef zeroext true) #19
  br i1 %i.rh, label %_ZL20findDeleteForPromiseRN5clang4SemaENS_14SourceLocationENS_8QualTypeERPNS_12FunctionDeclE.exit.thread, label %bb.bz

bb.bz:                                            ; preds = %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i128
  %i.ri = load ptr, ptr %i.k, align 8, !tbaa !973 ; 2 uses
  %.not.i131 = icmp eq ptr %i.ri, null
  br i1 %.not.i131, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  store i64 0, ptr %2, align 8, !tbaa !24
  %.sroa.5.0..sroa_idx29.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %.sroa.5.0..sroa_idx29.i, align 8, !tbaa !1019
  %.sroa.6.0..sroa_idx31.i = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.rg, ptr %.sroa.6.0..sroa_idx31.i, align 4, !tbaa !1020
  %.sroa.7.0..sroa_idx33.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 1, ptr %.sroa.7.0..sroa_idx33.i, align 8, !tbaa !1594
  %i.rj = call noundef ptr @_ZN5clang4Sema29FindUsualDeallocationFunctionENS_14SourceLocationENS_30ImplicitDeallocationParametersENS_15DeclarationNameEb(ptr noundef nonnull align 8 dereferenceable(18640) %i.qa, i32 %.sroa.039.0.copyload, ptr noundef nonnull byval(%"struct.clang::ImplicitDeallocationParameters") align 8 %2, i64 %i.qf, i1 noundef zeroext true) #19 ; 3 uses
  store ptr %i.rj, ptr %i.k, align 8, !tbaa !973
  %.not27.i = icmp eq ptr %i.rj, null
  br i1 %.not27.i, label %_ZL20findDeleteForPromiseRN5clang4SemaENS_14SourceLocationENS_8QualTypeERPNS_12FunctionDeclE.exit.thread, label %bb.cb

_ZL20findDeleteForPromiseRN5clang4SemaENS_14SourceLocationENS_8QualTypeERPNS_12FunctionDeclE.exit.thread: ; preds = %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i128, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.cz

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.rk = phi ptr [ %i.rj, %bb.ca ], [ %i.ri, %bb.bz ]
  call void @_ZN5clang4Sema22MarkFunctionReferencedENS_14SourceLocationEPNS_12FunctionDeclEb(ptr noundef nonnull align 8 dereferenceable(18640) %i.qa, i32 %.sroa.039.0.copyload, ptr noundef nonnull %i.rk, i1 noundef zeroext true) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #19
  %i.rl = load ptr, ptr %i.r, align 8, !tbaa !999, !nonnull !715, !align !716
  %.sroa.037.0.copyload = load i32, ptr %i.t, align 4, !tbaa !717
  %i.rm = call noundef ptr @_ZN5clang4Sema20BuildBuiltinCallExprENS_14SourceLocationENS_7Builtin2IDEN4llvm15MutableArrayRefIPNS_4ExprEEE(ptr noundef nonnull align 8 dereferenceable(18640) %i.rl, i32 %.sroa.037.0.copyload, i32 noundef 388, ptr null, i64 0) #19
  store ptr %i.rm, ptr %i.l, align 8, !tbaa !959
  %i.rn = load ptr, ptr %i.r, align 8, !tbaa !999, !nonnull !715, !align !716
  %.sroa.036.0.copyload = load i32, ptr %i.t, align 4, !tbaa !717
  %i.ro = call noundef ptr @_ZN5clang4Sema20BuildBuiltinCallExprENS_14SourceLocationENS_7Builtin2IDEN4llvm15MutableArrayRefIPNS_4ExprEEE(ptr noundef nonnull align 8 dereferenceable(18640) %i.rn, i32 %.sroa.036.0.copyload, i32 noundef 394, ptr null, i64 0) #19 ; 3 uses
  %i.rp = load ptr, ptr %i.r, align 8, !tbaa !999, !nonnull !715, !align !716 ; 3 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 216
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !774, !nonnull !715, !align !716
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 8
  %i.rt = load i64, ptr %i.rs, align 8
  %i.ru = and i64 %i.rt, 576460752303423488
  %.not86 = icmp eq i64 %i.ru, 0
  br i1 %.not86, label %bb.ce, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %.sroa.031.0.copyload = load i32, ptr %i.t, align 4, !tbaa !717
  %i.rv = call noundef ptr @_ZN5clang4Sema20BuildBuiltinCallExprENS_14SourceLocationENS_7Builtin2IDEN4llvm15MutableArrayRefIPNS_4ExprEEE(ptr noundef nonnull align 8 dereferenceable(18640) %i.rp, i32 %.sroa.031.0.copyload, i32 noundef 382, ptr null, i64 0) #19
  %i.rw = load ptr, ptr %i.r, align 8, !tbaa !999, !nonnull !715, !align !716 ; 2 uses
  %i.rx = call noundef ptr @_ZNK5clang4Sema15getStdAlignValTEv(ptr noundef nonnull align 8 dereferenceable(18640) %i.rw) #19
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rw, i64 232 ; 2 uses
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !714, !nonnull !715, !align !716
  %i.sa = call i64 @_ZNK5clang10ASTContext19getCanonicalTagTypeEPKNS_7TagDeclE(ptr noundef nonnull align 8 dereferenceable(23904) %i.rz, ptr noundef %i.rx) #19
  %i.sb = load ptr, ptr %i.ry, align 8, !tbaa !714, !nonnull !715, !align !716
  %i.sc = call noundef ptr @_ZNK5clang10ASTContext24getTrivialTypeSourceInfoENS_8QualTypeENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(23904) %i.sb, i64 %i.sa, i32 0) #19 ; 2 uses
  %.not87.not = icmp eq ptr %i.sc, null
  br i1 %.not87.not, label %.thread192, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.sd = load ptr, ptr %i.r, align 8, !tbaa !999, !nonnull !715, !align !716
  %.sroa.027.0.copyload = load i32, ptr %i.t, align 4, !tbaa !717 ; 2 uses
  %.sroa.2167.0.insert.ext = zext i32 %.sroa.027.0.copyload to i64 ; 2 uses
  %.sroa.2167.0.insert.shift = shl nuw i64 %.sroa.2167.0.insert.ext, 32
  %.sroa.0166.0.insert.insert = or disjoint i64 %.sroa.2167.0.insert.shift, %.sroa.2167.0.insert.ext ; 2 uses
  %i.se = call i64 @_ZN5clang4Sema17BuildCXXNamedCastENS_14SourceLocationENS_3tok9TokenKindEPNS_14TypeSourceInfoEPNS_4ExprENS_11SourceRangeES8_(ptr noundef nonnull align 8 dereferenceable(18640) %i.sd, i32 %.sroa.027.0.copyload, i16 noundef zeroext 148, ptr noundef nonnull %i.sc, ptr noundef %i.rv, i64 %.sroa.0166.0.insert.insert, i64 %.sroa.0166.0.insert.insert) #19
  %i.sf = and i64 %i.se, -2
  %i.sg = inttoptr i64 %i.sf to ptr
  %.pre211.a = load ptr, ptr %i.r, align 8, !tbaa !999
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cb
  %i.sh = phi ptr [ %.pre211.a, %bb.cd ], [ %i.rp, %bb.cb ]
  %.176 = phi ptr [ %i.sg, %bb.cd ], [ null, %bb.cb ] ; 3 uses
  %i.si = load ptr, ptr %i.e, align 8, !tbaa !973 ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 48
  %.sroa.0.0.copyload.i135 = load i64, ptr %i.sj, align 8, !tbaa !24
  %.sroa.021.0.copyload = load i32, ptr %i.t, align 4, !tbaa !717
  %i.sk = call noundef ptr @_ZN5clang4Sema16BuildDeclRefExprEPNS_9ValueDeclENS_8QualTypeENS_13ExprValueKindENS_14SourceLocationEPKNS_12CXXScopeSpecE(ptr noundef nonnull align 8 dereferenceable(18640) %i.sh, ptr noundef nonnull %i.si, i64 %.sroa.0.0.copyload.i135, i32 noundef 1, i32 %.sroa.021.0.copyload, ptr noundef null) #19 ; 2 uses
  %i.sl = ptrtoint ptr %i.sk to i64
  %i.sm = icmp eq ptr %i.sk, inttoptr (i64 1 to ptr)
  br i1 %i.sm, label %.thread192, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  %.ptr203 = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 3 uses
  store ptr %.ptr203, ptr %20, align 8, !tbaa !21
  %i.sn = getelementptr inbounds nuw i8, ptr %20, i64 12
  store i32 2, ptr %i.sn, align 4, !tbaa !23
  store ptr %i.ro, ptr %.ptr203, align 8, !tbaa !959
  %i.so = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 4 uses
  store i32 1, ptr %i.so, align 8, !tbaa !22
  %i.sp = load ptr, ptr %i.r, align 8, !tbaa !999, !nonnull !715, !align !716
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 216
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !774, !nonnull !715, !align !716
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 8
  %i.st = load i64, ptr %i.ss, align 8
  %i.su = and i64 %i.st, 576460752303423488
  %.not88 = icmp ne i64 %i.su, 0
  %i.sv = load i32, ptr %i.da, align 4
  %i.sw = icmp eq i32 %i.sv, 1
  %or.cond202 = select i1 %.not88, i1 %i.sw, i1 false
  br i1 %or.cond202, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %22 = getelementptr inbounds nuw i8, ptr %20, i64 24
  store ptr %.176, ptr %22, align 8
  store i32 2, ptr %i.so, align 8, !tbaa !22
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %.lr.ph.i.i.i.i.i.i.i.i
  %i.sx = load ptr, ptr %i.e, align 8, !tbaa !973
  %i.sy = call noundef i32 @_ZNK5clang12FunctionDecl12getNumParamsEv(ptr noundef nonnull align 8 dereferenceable(168) %i.sx) #19
  %i.sz = load i32, ptr %i.so, align 8, !tbaa !22 ; 3 uses
  %i.ta = icmp ult i32 %i.sz, %i.sy
  br i1 %i.ta, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.tb = zext i32 %i.sz to i64
  %i.tc = load ptr, ptr %20, align 8, !tbaa !21
  %i.td = getelementptr inbounds nuw [8 x i8], ptr %i.tc, i64 %i.tb
  %i.te = load ptr, ptr %12, align 8, !tbaa !21   ; 2 uses
  %i.tf = load i32, ptr %i.y, align 8, !tbaa !22
  %i.tg = zext i32 %i.tf to i64
  %i.th = getelementptr inbounds nuw [8 x i8], ptr %i.te, i64 %i.tg
  %i.ti = call noundef ptr @_ZN4llvm15SmallVectorImplIPN5clang4ExprEE6insertIPS3_vEES6_S6_T_S7_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef %i.td, ptr noundef %i.te, ptr noundef %i.th) ; 0 uses
  %.pre212.a = load i32, ptr %i.so, align 8, !tbaa !22
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.tj = phi i32 [ %.pre212.a, %bb.ch ], [ %i.sz, %bb.cg ]
  %i.tk = load ptr, ptr %i.r, align 8, !tbaa !999, !nonnull !715, !align !716 ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 680
  %i.tm = load ptr, ptr %i.tl, align 8, !tbaa !958
  %i.tn = and i64 %i.sl, -2
  %i.to = inttoptr i64 %i.tn to ptr
  %.sroa.020.0.copyload = load i32, ptr %i.t, align 4, !tbaa !717 ; 2 uses
  %i.tp = load ptr, ptr %20, align 8, !tbaa !21
  %i.tq = zext i32 %i.tj to i64
  %i.tr = call i64 @_ZN5clang4Sema13BuildCallExprEPNS_5ScopeEPNS_4ExprENS_14SourceLocationEN4llvm15MutableArrayRefIS4_EES5_S4_bb(ptr noundef nonnull align 8 dereferenceable(18640) %i.tk, ptr noundef %i.tm, ptr noundef %i.to, i32 %.sroa.020.0.copyload, ptr %i.tp, i64 %i.tq, i32 %.sroa.020.0.copyload, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #19
  %i.ts = load ptr, ptr %i.r, align 8, !tbaa !999, !nonnull !715, !align !716
  %i.tt = and i64 %i.tr, -2                       ; 2 uses
  %i.tu = inttoptr i64 %i.tt to ptr               ; 2 uses
  %.not.i136 = icmp eq i64 %i.tt, 0
  br i1 %.not.i136, label %_ZN5clang4Sema19ActOnFinishFullExprEPNS_4ExprEb.exit, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.tv = call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %i.tu) #20
  br label %_ZN5clang4Sema19ActOnFinishFullExprEPNS_4ExprEb.exit

_ZN5clang4Sema19ActOnFinishFullExprEPNS_4ExprEb.exit: ; preds = %bb.ci, %bb.cj
  %.sroa.0.0.i = phi i32 [ %i.tv, %bb.cj ], [ 0, %bb.ci ]
  %i.tw = call i64 @_ZN5clang4Sema19ActOnFinishFullExprEPNS_4ExprENS_14SourceLocationEbbb(ptr noundef nonnull align 8 dereferenceable(18640) %i.ts, ptr noundef %i.tu, i32 %.sroa.0.0.i, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false) #19 ; 2 uses
  %i.tx = icmp eq i64 %i.tw, 1
  br i1 %i.tx, label %bb.cx, label %bb.ck

bb.ck:                                            ; preds = %_ZN5clang4Sema19ActOnFinishFullExprEPNS_4ExprEb.exit
  %i.ty = load ptr, ptr %i.k, align 8, !tbaa !973 ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 48
  %.sroa.0.0.copyload.i137 = load i64, ptr %i.tz, align 8, !tbaa !24 ; 2 uses
  %i.ua = load ptr, ptr %i.r, align 8, !tbaa !999, !nonnull !715, !align !716
  %.sroa.016.0.copyload = load i32, ptr %i.t, align 4, !tbaa !717
  %i.ub = call noundef ptr @_ZN5clang4Sema16BuildDeclRefExprEPNS_9ValueDeclENS_8QualTypeENS_13ExprValueKindENS_14SourceLocationEPKNS_12CXXScopeSpecE(ptr noundef nonnull align 8 dereferenceable(18640) %i.ua, ptr noundef %i.ty, i64 %.sroa.0.0.copyload.i137, i32 noundef 1, i32 %.sroa.016.0.copyload, ptr noundef null) #19 ; 2 uses
  %i.uc = ptrtoint ptr %i.ub to i64
  %i.ud = icmp eq ptr %i.ub, inttoptr (i64 1 to ptr)
  br i1 %i.ud, label %bb.cx, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.ue = load ptr, ptr %i.r, align 8, !tbaa !999, !nonnull !715, !align !716
  %.sroa.014.0.copyload = load i32, ptr %i.t, align 4, !tbaa !717
  %i.uf = call noundef ptr @_ZN5clang4Sema20BuildBuiltinCallExprENS_14SourceLocationENS_7Builtin2IDEN4llvm15MutableArrayRefIPNS_4ExprEEE(ptr noundef nonnull align 8 dereferenceable(18640) %i.ue, i32 %.sroa.014.0.copyload, i32 noundef 389, ptr nonnull %i.l, i64 1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #19
  %i.ug = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 3 uses
  store ptr %i.ug, ptr %21, align 8, !tbaa !21
  %i.uh = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 4 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %21, i64 12
  store i32 2, ptr %i.ui, align 4, !tbaa !23
  store ptr %i.uf, ptr %i.ug, align 8
  store i32 1, ptr %i.uh, align 8, !tbaa !22
  %i.uj = and i64 %.sroa.0.0.copyload.i137, -16
  %i.uk = inttoptr i64 %i.uj to ptr
  %i.ul = load ptr, ptr %i.uk, align 16, !tbaa !713 ; 3 uses
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 16
  %i.un = load i8, ptr %i.um, align 16
  %.not.i138 = icmp eq i8 %i.un, 24
  br i1 %.not.i138, label %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit140, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.uo = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.ul) #19
  %.pre213.a = load i32, ptr %i.uh, align 8, !tbaa !22
  br label %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit140

_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit140: ; preds = %bb.cl, %bb.cm
  %i.up = phi i32 [ %.pre213.a, %bb.cm ], [ 1, %bb.cl ] ; 3 uses
  %.1.i139 = phi ptr [ %i.uo, %bb.cm ], [ %i.ul, %bb.cl ] ; 3 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %.1.i139, i64 16 ; 2 uses
  %i.ur = load i64, ptr %i.uq, align 16
  %i.us = lshr i64 %i.ur, 48
  %i.ut = zext i32 %i.up to i64                   ; 2 uses
  %i.uu = icmp samesign ugt i64 %i.us, %i.ut
  br i1 %i.uu, label %bb.cn, label %bb.cp

bb.cn:                                            ; preds = %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit140
  %i.uv = getelementptr inbounds nuw i8, ptr %.1.i139, i64 48
  %i.uw = getelementptr inbounds nuw [8 x i8], ptr %i.uv, i64 %i.ut
  %.sroa.0.0.copyload.i141 = load i64, ptr %i.uw, align 8, !tbaa !24
  %i.ux = getelementptr inbounds nuw i8, ptr %i.ro, i64 8
  %.sroa.0.0.copyload.i142 = load i64, ptr %i.ux, align 8, !tbaa !24
  %i.uy = and i64 %.sroa.0.0.copyload.i141, -16
  %i.uz = inttoptr i64 %i.uy to ptr
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 8
  %i.vb = load i64, ptr %i.va, align 8, !tbaa !24
  %i.vc = and i64 %i.vb, -16
  %i.vd = inttoptr i64 %i.vc to ptr
  %i.ve = load ptr, ptr %i.vd, align 16, !tbaa !713
  %i.vf = and i64 %.sroa.0.0.copyload.i142, -16
  %i.vg = inttoptr i64 %i.vf to ptr
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 8
  %i.vi = load i64, ptr %i.vh, align 8, !tbaa !24
  %i.vj = and i64 %i.vi, -16
  %i.vk = inttoptr i64 %i.vj to ptr
  %i.vl = load ptr, ptr %i.vk, align 16, !tbaa !713
  %i.vm = icmp eq ptr %i.ve, %i.vl
  br i1 %i.vm, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull %i.ro)
  %.pre216.pre = load i32, ptr %i.uh, align 8, !tbaa !22
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn, %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit140
  %.pre216 = phi i32 [ %.pre216.pre, %bb.co ], [ %i.up, %bb.cn ], [ %i.up, %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit140 ] ; 4 uses
  %i.vn = load ptr, ptr %i.r, align 8, !tbaa !999, !nonnull !715, !align !716 ; 4 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 216
  %i.vp = load ptr, ptr %i.vo, align 8, !tbaa !774, !nonnull !715, !align !716
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 8
  %i.vr = load i64, ptr %i.vq, align 8
  %i.vs = and i64 %i.vr, 576460752303423488
  %.not89 = icmp eq i64 %i.vs, 0
  br i1 %.not89, label %bb.ct, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.vt = load i64, ptr %i.uq, align 16
  %i.vu = lshr i64 %i.vt, 48
  %i.vv = zext i32 %.pre216 to i64                ; 2 uses
  %i.vw = icmp samesign ugt i64 %i.vu, %i.vv
  br i1 %i.vw, label %bb.cr, label %bb.ct

bb.cr:                                            ; preds = %bb.cq
  %i.vx = getelementptr inbounds nuw i8, ptr %.1.i139, i64 48
  %i.vy = getelementptr inbounds nuw [8 x i8], ptr %i.vx, i64 %i.vv
  %.sroa.0.0.copyload.i143 = load i64, ptr %i.vy, align 8, !tbaa !24
  %i.vz = getelementptr inbounds nuw i8, ptr %.176, i64 8
  %.sroa.0.0.copyload.i144 = load i64, ptr %i.vz, align 8, !tbaa !24
  %i.wa = and i64 %.sroa.0.0.copyload.i143, -16
  %i.wb = inttoptr i64 %i.wa to ptr
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 8
  %i.wd = load i64, ptr %i.wc, align 8, !tbaa !24
  %i.we = and i64 %i.wd, -16
  %i.wf = inttoptr i64 %i.we to ptr
  %i.wg = load ptr, ptr %i.wf, align 16, !tbaa !713
  %i.wh = and i64 %.sroa.0.0.copyload.i144, -16
  %i.wi = inttoptr i64 %i.wh to ptr
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 8
  %i.wk = load i64, ptr %i.wj, align 8, !tbaa !24
  %i.wl = and i64 %i.wk, -16
  %i.wm = inttoptr i64 %i.wl to ptr
  %i.wn = load ptr, ptr %i.wm, align 16, !tbaa !713
  %i.wo = icmp eq ptr %i.wg, %i.wn
  br i1 %i.wo, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull %.176)
  %.pre214.a = load ptr, ptr %i.r, align 8, !tbaa !999
  %.pre215 = load i32, ptr %i.uh, align 8, !tbaa !22
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr, %bb.cq, %bb.cp
  %i.wp = phi i32 [ %.pre215, %bb.cs ], [ %.pre216, %bb.cr ], [ %.pre216, %bb.cq ], [ %.pre216, %bb.cp ]
  %i.wq = phi ptr [ %.pre214.a, %bb.cs ], [ %i.vn, %bb.cr ], [ %i.vn, %bb.cq ], [ %i.vn, %bb.cp ] ; 2 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 680
  %i.ws = load ptr, ptr %i.wr, align 8, !tbaa !958
  %i.wt = and i64 %i.uc, -2
  %i.wu = inttoptr i64 %i.wt to ptr
  %.sroa.05.0.copyload = load i32, ptr %i.t, align 4, !tbaa !717 ; 2 uses
  %i.wv = load ptr, ptr %21, align 8, !tbaa !21
  %i.ww = zext i32 %i.wp to i64
  %i.wx = call i64 @_ZN5clang4Sema13BuildCallExprEPNS_5ScopeEPNS_4ExprENS_14SourceLocationEN4llvm15MutableArrayRefIS4_EES5_S4_bb(ptr noundef nonnull align 8 dereferenceable(18640) %i.wq, ptr noundef %i.ws, ptr noundef %i.wu, i32 %.sroa.05.0.copyload, ptr %i.wv, i64 %i.ww, i32 %.sroa.05.0.copyload, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #19
  %i.wy = load ptr, ptr %i.r, align 8, !tbaa !999, !nonnull !715, !align !716
  %i.wz = and i64 %i.wx, -2
  %i.xa = inttoptr i64 %i.wz to ptr
  %i.xb = call i64 @_ZN5clang4Sema19ActOnFinishFullExprEPNS_4ExprEb(ptr noundef nonnull align 8 dereferenceable(18640) %i.wy, ptr noundef %i.xa, i1 noundef zeroext false) ; 2 uses
  %i.xc = icmp ne i64 %i.xb, 1                    ; 2 uses
  br i1 %i.xc, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.xd = and i64 %i.tw, -2
  %i.xe = inttoptr i64 %i.xd to ptr
  %i.xf = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.xe, ptr %i.xf, align 8, !tbaa !1595
  %i.xg = and i64 %i.xb, -2
  %i.xh = inttoptr i64 %i.xg to ptr
  %i.xi = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.xh, ptr %i.xi, align 8, !tbaa !1596
  br label %bb.cv

bb.cv:                                            ; preds = %bb.ct, %bb.cu
  %i.xj = load ptr, ptr %21, align 8, !tbaa !21   ; 2 uses
end_hunk_0
