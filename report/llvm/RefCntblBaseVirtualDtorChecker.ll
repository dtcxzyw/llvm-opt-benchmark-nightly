Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RefCntblBaseVirtualDtorChecker?download=true
inline.NumInlined: 2123
inline.NumDeleted: 1260
begin_hunk_0_@_ZN12_GLOBAL__N_126DerefFuncDeleteExprVisitor18VisitCXXDeleteExprEPKN5clang13CXXDeleteExprE:.preheader
  %.not71 = icmp eq ptr %.1.i, %i.aw
  br i1 %.not71, label %.loopexit, label %.critedge76.jt0

bb.j:                                             ; preds = %bb.d
  %i.ax = icmp ne i8 %i.u, 49
  %.not67 = or i1 %.not6616, %i.ax
  br i1 %.not67, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !118 ; 4 uses
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !184 ; 4 uses
  %i.bb = icmp ne ptr %i.az, null
  %i.bc = icmp ne ptr %i.ba, null
  %or.cond.i85 = and i1 %i.bb, %i.bc
  br i1 %or.cond.i85, label %bb.l, label %.critedge76.jt0

bb.l:                                             ; preds = %bb.k
  %i.bd = icmp eq ptr %i.az, %i.ba
  br i1 %i.bd, label %.loopexit, label %_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit

_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit: ; preds = %bb.l
  %i.be = load ptr, ptr %i.az, align 8, !tbaa !22
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = tail call noundef ptr %i.bg(ptr noundef nonnull align 8 dereferenceable(33) %i.az) #17, !inline_history !508
  %i.bi = load ptr, ptr %i.ba, align 8, !tbaa !22
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = tail call noundef ptr %i.bk(ptr noundef nonnull align 8 dereferenceable(33) %i.ba) #17, !inline_history !508
  %i.bm = icmp eq ptr %i.bh, %i.bl
  br i1 %i.bm, label %.loopexit, label %.critedge76.jt0

bb.m:                                             ; preds = %bb.j
  %i.bn = icmp ne i8 %i.u, 46
  %.not68 = or i1 %.not6616, %i.bn
  br i1 %.not68, label %.critedge76.jt0, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bo = load i64, ptr %i.t, align 16
  %i.bp = and i64 %i.bo, 524288
  %.not.i = icmp eq i64 %i.bp, 0
  %.sroa.0.0.in.v.i = select i1 %.not.i, i64 8, i64 48
  %.sroa.0.0.in.i = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.0.0.in.v.i
  %.sroa.0.0.i = load i64, ptr %.sroa.0.0.in.i, align 8, !tbaa !31
  %i.bq = and i64 %.sroa.0.0.i, -16
  %i.br = inttoptr i64 %i.bq to ptr
  %i.bs = load ptr, ptr %i.br, align 16, !tbaa !113 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load i8, ptr %i.bt, align 16
  %i.bv = icmp ne i8 %i.bu, 49
  %.not6919 = icmp eq ptr %i.bs, null
  %.not69 = or i1 %.not6919, %i.bv
  br i1 %.not69, label %.critedge76.jt0, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !118 ; 4 uses
  %i.by = load ptr, ptr %i.a, align 8, !tbaa !184 ; 4 uses
  %i.bz = icmp ne ptr %i.bx, null
  %i.ca = icmp ne ptr %i.by, null
  %or.cond.i90 = and i1 %i.bz, %i.ca
  br i1 %or.cond.i90, label %bb.p, label %.critedge76.jt0

bb.p:                                             ; preds = %bb.o
  %i.cb = icmp eq ptr %i.bx, %i.by
  br i1 %i.cb, label %.loopexit, label %_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit92

_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit92: ; preds = %bb.p
  %i.cc = load ptr, ptr %i.bx, align 8, !tbaa !22
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = tail call noundef ptr %i.ce(ptr noundef nonnull align 8 dereferenceable(33) %i.bx) #17, !inline_history !508
  %i.cg = load ptr, ptr %i.by, align 8, !tbaa !22
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = tail call noundef ptr %i.ci(ptr noundef nonnull align 8 dereferenceable(33) %i.by) #17, !inline_history !508
  %i.ck = icmp eq ptr %i.cf, %i.cj
  br i1 %i.ck, label %.loopexit, label %.critedge76.jt0

.critedge76.jt0:                                  ; preds = %bb.o, %bb.c, %bb.n, %_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit92, %bb.k, %_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit, %bb.m, %bb.e, %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit, %bb.a
  %.347.jt0 = phi ptr [ %i.e, %bb.a ], [ %i.h, %bb.c ], [ %i.h, %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit ], [ %i.h, %bb.e ], [ %i.h, %bb.m ], [ %i.h, %_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit ], [ %i.h, %bb.o ], [ %i.h, %bb.k ], [ %i.h, %_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit92 ], [ %i.h, %bb.n ] ; 2 uses
  %.not = icmp eq ptr %.347.jt0, null
  br i1 %.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.b, %.critedge76.jt0, %bb.p, %bb.l, %_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit92, %_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit, %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit, %.preheader
  %.14 = phi i1 [ false, %.preheader ], [ false, %bb.b ], [ true, %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit ], [ true, %_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit ], [ true, %_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit92 ], [ true, %bb.l ], [ false, %.critedge76.jt0 ], [ true, %bb.p ]
  ret i1 %.14
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_126DerefFuncDeleteExprVisitor13VisitChildrenEPKN5clang4StmtE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::iterator_range.1211", align 8 ; 6 uses
  %3 = alloca %"struct.clang::ConstStmtIterator", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17, !noalias !515
  call void @_ZN5clang4Stmt8childrenEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::iterator_range.1211") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %1) #17, !noalias !515
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.412.24.copyload = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.6.24..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.6.24.copyload = load i64, ptr %.sroa.6.24..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17, !noalias !515
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !31     ; 2 uses
  %i.d = icmp ne ptr %i.c, %.sroa.412.24.copyload
  %i.e = load i64, ptr %i.b, align 8              ; 2 uses
  %i.f = icmp ne i64 %i.e, %.sroa.6.24.copyload
  %.not3.i16 = select i1 %i.d, i1 true, i1 %i.f
  br i1 %.not3.i16, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZN5clang16StmtIteratorImplINS_17ConstStmtIteratorEPKNS_4StmtEEppEv.exit
  %i.g = phi i64 [ %i.u, %_ZN5clang16StmtIteratorImplINS_17ConstStmtIteratorEPKNS_4StmtEEppEv.exit ], [ %i.e, %bb.a ]
  %i.h = phi ptr [ %i.s, %_ZN5clang16StmtIteratorImplINS_17ConstStmtIteratorEPKNS_4StmtEEppEv.exit ], [ %i.c, %bb.a ]
  %i.i = and i64 %i.g, 3
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZNK5clang16StmtIteratorImplINS_17ConstStmtIteratorEPKNS_4StmtEEdeEv.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.k = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5clang16StmtIteratorBase11GetDeclExprEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #17
  br label %_ZNK5clang16StmtIteratorImplINS_17ConstStmtIteratorEPKNS_4StmtEEdeEv.exit

_ZNK5clang16StmtIteratorImplINS_17ConstStmtIteratorEPKNS_4StmtEEdeEv.exit: ; preds = %.lr.ph, %bb.b
  %.in.i = phi ptr [ %i.k, %bb.b ], [ %i.h, %.lr.ph ]
  %i.l = load ptr, ptr %.in.i, align 8, !tbaa !185 ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNK5clang16StmtIteratorImplINS_17ConstStmtIteratorEPKNS_4StmtEEdeEv.exit
  %i.m = call fastcc noundef zeroext i1 @_ZN5clang15StmtVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_126DerefFuncDeleteExprVisitorEbJEE5VisitEPKNS_4StmtE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.l)
  br i1 %i.m, label %._crit_edge, label %.critedge

.critedge:                                        ; preds = %bb.c, %_ZNK5clang16StmtIteratorImplINS_17ConstStmtIteratorEPKNS_4StmtEEdeEv.exit
  %i.n = load i64, ptr %i.b, align 8, !tbaa !518  ; 2 uses
  %i.o = and i64 %i.n, 3
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.critedge
  %i.q = load ptr, ptr %3, align 8, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.r, ptr %3, align 8, !tbaa !31
  br label %_ZN5clang16StmtIteratorImplINS_17ConstStmtIteratorEPKNS_4StmtEEppEv.exit

bb.e:                                             ; preds = %.critedge
  %.not.i = icmp ult i64 %i.n, 4
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN5clang16StmtIteratorBase6NextVAEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #17
  br label %_ZN5clang16StmtIteratorImplINS_17ConstStmtIteratorEPKNS_4StmtEEppEv.exit

bb.g:                                             ; preds = %bb.e
  call void @_ZN5clang16StmtIteratorBase8NextDeclEb(ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext true) #17
  br label %_ZN5clang16StmtIteratorImplINS_17ConstStmtIteratorEPKNS_4StmtEEppEv.exit

_ZN5clang16StmtIteratorImplINS_17ConstStmtIteratorEPKNS_4StmtEEppEv.exit: ; preds = %bb.d, %bb.f, %bb.g
  %i.s = load ptr, ptr %3, align 8, !tbaa !31     ; 2 uses
  %i.t = icmp ne ptr %i.s, %.sroa.412.24.copyload
  %i.u = load i64, ptr %i.b, align 8              ; 2 uses
  %i.v = icmp ne i64 %i.u, %.sroa.6.24.copyload
  %.not3.i = select i1 %i.t, i1 true, i1 %i.v
  br i1 %.not3.i, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN5clang16StmtIteratorImplINS_17ConstStmtIteratorEPKNS_4StmtEEppEv.exit, %bb.c, %bb.a
  %.not3.i15 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ false, %_ZN5clang16StmtIteratorImplINS_17ConstStmtIteratorEPKNS_4StmtEEppEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret i1 %.not3.i15
}

declare void @_ZN5clang4Stmt8childrenEv(ptr dead_on_unwind writable sret(%"class.llvm::iterator_range.1211") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5clang16StmtIteratorBase11GetDeclExprEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

declare void @_ZN5clang16StmtIteratorBase6NextVAEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

declare void @_ZN5clang16StmtIteratorBase8NextDeclEb(ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_126DerefFuncDeleteExprVisitor19VisitLambdaArgumentEPKN5clang4ExprE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.f, %bb.a
  %.tr68 = phi ptr [ %1, %bb.a ], [ %i.q, %bb.f ]
  %i.b = tail call noundef ptr @_ZN5clang4Expr16IgnoreParenCastsEv(ptr noundef nonnull align 8 dereferenceable(16) %.tr68) #20 ; 3 uses
  %i.c = load i16, ptr %i.b, align 8
  %i.d = and i16 %i.c, 511
  %.not = icmp eq i16 %i.d, 120
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %tailrecurse
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !528
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %tailrecurse
  %.028 = phi ptr [ %i.f, %bb.b ], [ %i.b, %tailrecurse ]
  %i.g = tail call noundef ptr @_ZN5clang4Expr16IgnoreParenCastsEv(ptr noundef nonnull align 8 dereferenceable(16) %.028) #20 ; 7 uses
  %i.h = load i16, ptr %i.g, align 8
  %i.i = and i16 %i.h, 511
  switch i16 %i.i, label %.loopexit [
    i16 73, label %bb.d
    i16 53, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !532  ; 3 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %.thread54, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 28
  %i.m = load i32, ptr %i.l, align 4
  %i.n = and i32 %i.m, 127
  %i.o = add nsw i32 %i.n, -41
  %i.p = icmp ult i32 %i.o, 7
  br i1 %i.p, label %bb.f, label %.thread54

bb.f:                                             ; preds = %bb.e
  %i.q = tail call noundef ptr @_ZN5clang7VarDecl7getInitEv(ptr noundef nonnull align 8 dereferenceable(100) %i.k) #17
  br label %tailrecurse

bb.g:                                             ; preds = %bb.c
  %i.r = tail call noundef ptr @_ZNK5clang10LambdaExpr7getBodyEv(ptr noundef nonnull align 8 dereferenceable(32) %i.g) #17 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.r, ptr %i.a, align 8, !tbaa !185
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %_ZN12_GLOBAL__N_126DerefFuncDeleteExprVisitor9VisitBodyEPKN5clang4StmtE.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4StmtENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSB_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !533, !inline_history !4
  %.fca.1.extract.i.i.i.i = extractvalue { ptr, i8 } %i.t, 1
  %i.u = trunc nuw i8 %.fca.1.extract.i.i.i.i to i1
  br i1 %i.u, label %_ZN12_GLOBAL__N_126DerefFuncDeleteExprVisitor9VisitBodyEPKN5clang4StmtE.exit, label %_ZN12_GLOBAL__N_126DerefFuncDeleteExprVisitor9VisitBodyEPKN5clang4StmtE.exit.thread

_ZN12_GLOBAL__N_126DerefFuncDeleteExprVisitor9VisitBodyEPKN5clang4StmtE.exit.thread: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

_ZN12_GLOBAL__N_126DerefFuncDeleteExprVisitor9VisitBodyEPKN5clang4StmtE.exit: ; preds = %bb.h
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !185
  %i.w = call fastcc noundef zeroext i1 @_ZN5clang15StmtVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_126DerefFuncDeleteExprVisitorEbJEE5VisitEPKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %i.v), !inline_history !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.w, label %.thread54, label %.loopexit

.loopexit:                                        ; preds = %bb.c, %_ZN12_GLOBAL__N_126DerefFuncDeleteExprVisitor9VisitBodyEPKN5clang4StmtE.exit, %_ZN12_GLOBAL__N_126DerefFuncDeleteExprVisitor9VisitBodyEPKN5clang4StmtE.exit.thread
  %i.x = load i16, ptr %i.g, align 8
  %i.y = and i16 %i.x, 511
  %i.z = add nsw i16 %i.y, -119
  %spec.select.i.i.i.i.i.i.i.i = icmp ult i16 %i.z, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i, label %.thread54, label %.preheader

.preheader:                                       ; preds = %.loopexit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !536
  %.not4371.not = icmp eq i32 %i.ab, 0
  br i1 %.not4371.not, label %.thread54, label %bb.j

bb.i:                                             ; preds = %bb.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ac = load i32, ptr %i.aa, align 8, !tbaa !536
  %i.ad = zext i32 %i.ac to i64
  %.not43 = icmp samesign ult i64 %indvars.iv.next, %i.ad
  br i1 %.not43, label %bb.j, label %.thread54, !llvm.loop !525

bb.j:                                             ; preds = %.preheader, %bb.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ 0, %.preheader ] ; 2 uses
  %i.ae = load i16, ptr %i.g, align 8
  %i.af = and i16 %i.ae, 511
  %.not.i.i.i.i = icmp eq i16 %i.af, 118
  %spec.select.v.i.i.i.i = select i1 %.not.i.i.i.i, i64 48, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 %spec.select.v.i.i.i.i
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !195
  %i.aj = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_126DerefFuncDeleteExprVisitor19VisitLambdaArgumentEPKN5clang4ExprE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %i.ai) ; 3 uses
  br i1 %i.aj, label %.thread54, label %bb.i

.thread54:                                        ; preds = %bb.d, %bb.e, %bb.i, %bb.j, %.preheader, %.loopexit, %_ZN12_GLOBAL__N_126DerefFuncDeleteExprVisitor9VisitBodyEPKN5clang4StmtE.exit
  %.6 = phi i1 [ false, %.loopexit ], [ true, %_ZN12_GLOBAL__N_126DerefFuncDeleteExprVisitor9VisitBodyEPKN5clang4StmtE.exit ], [ false, %.preheader ], [ %i.aj, %bb.i ], [ %i.aj, %bb.j ], [ false, %bb.e ], [ false, %bb.d ]
  ret i1 %.6
}

declare noundef ptr @_ZN5clang4Expr25getReferencedDeclOfCalleeEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

declare noundef ptr @_ZNK5clang10LambdaExpr7getBodyEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZN5clang4Expr16IgnoreParenCastsEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #11

declare noundef ptr @_ZN5clang7VarDecl7getInitEv(ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN4llvm12function_refIFbPKN5clang16CXXBaseSpecifierERNS1_11CXXBasePathEEE11callback_fnIZNK12_GLOBAL__N_130RefCntblBaseVirtualDtorChecker18visitCXXRecordDeclEPKNS1_13CXXRecordDeclEEUlS4_S6_E1_EEblS4_S6_(i64 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2) #0 align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.b = getelementptr i8, ptr %1, i64 16
  %.val = load ptr, ptr %i.b, align 8, !tbaa !108
  %.val.val = load i64, ptr %.val, align 8, !tbaa !31 ; 2 uses
  %i.c = and i64 %.val.val, -16
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !113 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.f, align 8, !tbaa !31
  %i.g = and i64 %.sroa.0.0.copyload.i.i.i.i, 15
  %.not.i.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i.i, label %_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call { ptr, i64 } @_ZN5clang8QualType27getSplitUnqualifiedTypeImplES0_(i64 %.val.val) #17
  %i.i = extractvalue { ptr, i64 } %i.h, 0
  br label %_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit.i

_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit.i:    ; preds = %bb.b, %bb.a
  %.sroa.03.0.in.in.i.i.i = phi ptr [ %i.i, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  %i.j = icmp ult ptr %.sroa.03.0.in.in.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %i.j, label %_ZZNK12_GLOBAL__N_130RefCntblBaseVirtualDtorChecker18visitCXXRecordDeclEPKN5clang13CXXRecordDeclEENKUlPKNS1_16CXXBaseSpecifierERNS1_11CXXBasePathEE1_clES7_S9_.exit, label %_ZNK5clang8QualType16getTypePtrOrNullEv.exit.i

_ZNK5clang8QualType16getTypePtrOrNullEv.exit.i:   ; preds = %_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit.i
  %.sroa.03.0.in.i.i.i = ptrtoint ptr %.sroa.03.0.in.in.i.i.i to i64
  %i.k = and i64 %.sroa.03.0.in.i.i.i, -16
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load ptr, ptr %i.l, align 16, !tbaa !113 ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZZNK12_GLOBAL__N_130RefCntblBaseVirtualDtorChecker18visitCXXRecordDeclEPKN5clang13CXXRecordDeclEENKUlPKNS1_16CXXBaseSpecifierERNS1_11CXXBasePathEE1_clES7_S9_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK5clang8QualType16getTypePtrOrNullEv.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.n, align 8, !tbaa !31
  %i.o = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -16
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load ptr, ptr %i.p, align 16, !tbaa !113 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i8, ptr %i.r, align 16              ; 3 uses
  %i.t = add i8 %i.s, -47
  %switch.i.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.t, 3
  %.not.i7.i.i = icmp ne ptr %i.q, null
  %.not.i.not8.i.i = and i1 %.not.i7.i.i, %switch.i.i.i.i.i.i.i.i.i.i.i
  %i.u = and i8 %i.s, 62
  %spec.select.i.i.i.i = icmp eq i8 %i.u, 48
  %or.cond.i.i = and i1 %spec.select.i.i.i.i, %.not.i.not8.i.i
  br i1 %or.cond.i.i, label %bb.d, label %_ZZNK12_GLOBAL__N_130RefCntblBaseVirtualDtorChecker18visitCXXRecordDeclEPKN5clang13CXXRecordDeclEENKUlPKNS1_16CXXBaseSpecifierERNS1_11CXXBasePathEE1_clES7_S9_.exit

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !118  ; 3 uses
  %i.x = icmp eq i8 %i.s, 49
  br i1 %i.x, label %bb.e, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 28
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = and i32 %i.z, 127
  %i.ab = add nsw i32 %i.aa, -60
  %i.ac = icmp ult i32 %i.ab, 3
  br i1 %i.ac, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i, label %_ZZNK12_GLOBAL__N_130RefCntblBaseVirtualDtorChecker18visitCXXRecordDeclEPKN5clang13CXXRecordDeclEENKUlPKNS1_16CXXBaseSpecifierERNS1_11CXXBasePathEE1_clES7_S9_.exit

_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i:     ; preds = %bb.e, %bb.d
  %i.ad = tail call noundef ptr @_ZNK5clang13CXXRecordDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(144) %i.w) ; 2 uses
  %.not.not.i.i.i = icmp eq ptr %i.ad, null
  %spec.select.i = select i1 %.not.not.i.i.i, ptr %i.w, ptr %i.ad
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !538, !nonnull !41, !align !105
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !65
  %i.ag = tail call fastcc i16 @_ZN12_GLOBAL__N_130RefCntblBaseVirtualDtorChecker28isClassWithSpecializedDeleteEPKN5clang13CXXRecordDeclES4_(ptr noundef %spec.select.i, ptr noundef %i.af) ; 2 uses
  %.not6.i = icmp samesign ult i16 %i.ag, 256
  br i1 %.not6.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !539, !nonnull !41
  store i8 1, ptr %i.ai, align 1, !tbaa !59
  br label %_ZZNK12_GLOBAL__N_130RefCntblBaseVirtualDtorChecker18visitCXXRecordDeclEPKN5clang13CXXRecordDeclEENKUlPKNS1_16CXXBaseSpecifierERNS1_11CXXBasePathEE1_clES7_S9_.exit

bb.g:                                             ; preds = %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i
  %i.aj = trunc i16 %i.ag to i1
  br label %_ZZNK12_GLOBAL__N_130RefCntblBaseVirtualDtorChecker18visitCXXRecordDeclEPKN5clang13CXXRecordDeclEENKUlPKNS1_16CXXBaseSpecifierERNS1_11CXXBasePathEE1_clES7_S9_.exit

_ZZNK12_GLOBAL__N_130RefCntblBaseVirtualDtorChecker18visitCXXRecordDeclEPKN5clang13CXXRecordDeclEENKUlPKNS1_16CXXBaseSpecifierERNS1_11CXXBasePathEE1_clES7_S9_.exit: ; preds = %_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit.i, %_ZNK5clang8QualType16getTypePtrOrNullEv.exit.i, %bb.c, %bb.e, %bb.f, %bb.g
  %.1.i = phi i1 [ false, %_ZNK5clang8QualType16getTypePtrOrNullEv.exit.i ], [ %i.aj, %bb.g ], [ false, %_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit.i ], [ false, %bb.f ], [ false, %bb.e ], [ false, %bb.c ]
  ret i1 %.1.i
}

declare noundef i32 @_ZNK5clang13CXXMethodDecl23size_overridden_methodsEv(ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48)) unnamed_addr #9

declare void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang4Decl13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(33)) local_unnamed_addr #11

declare { i64, i8 } @_ZNK5clang4ento22PathDiagnosticLocation8genRangeEN4llvm12PointerUnionIJPKNS_10StackFrameEPNS_19AnalysisDeclContextEEEE(ptr noundef nonnull align 8 dereferenceable(60), i64) local_unnamed_addr #5

declare void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang4ento9BugReportD2Ev(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(488) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5clang4ento9BugReportE, i64 16), ptr %0, align 8, !tbaa !22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.d = load i32, ptr %i.c, align 8, !tbaa !60   ; 2 uses
  %.not4.i.i = icmp eq i32 %i.d, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN5clang9FixItHintELb0EE13destroy_rangeEPS2_S4_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.a
  %i.e = zext i32 %i.d to i64
  %.idx.i = shl nuw nsw i64 %i.e, 6
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN5clang9FixItHintD2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.g, %_ZN5clang9FixItHintD2Ev.exit.i.i ], [ %i.f, %.lr.ph.i.preheader.i ] ; 3 uses
  %i.g = getelementptr inbounds i8, ptr %.05.i.i, i64 -64 ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %.05.i.i, i64 -40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !30   ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %.05.i.i, i64 -24 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN5clang9FixItHintD2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !31
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #19
  br label %_ZN5clang9FixItHintD2Ev.exit.i.i

_ZN5clang9FixItHintD2Ev.exit.i.i:                 ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %.not.i.i = icmp eq ptr %i.b, %i.g
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN5clang9FixItHintELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !540

_ZN4llvm23SmallVectorTemplateBaseIN5clang9FixItHintELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i: ; preds = %_ZN5clang9FixItHintD2Ev.exit.i.i
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !58
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang9FixItHintELb0EE13destroy_rangeEPS2_S4_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIN5clang9FixItHintELb0EE13destroy_rangeEPS2_S4_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang9FixItHintELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i, %bb.a
  %i.n = phi ptr [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseIN5clang9FixItHintELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZN4llvm11SmallVectorIN5clang9FixItHintELj4EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang9FixItHintELb0EE13destroy_rangeEPS2_S4_.exit.i
  tail call void @free(ptr noundef %i.n) #17
  br label %_ZN4llvm11SmallVectorIN5clang9FixItHintELj4EED2Ev.exit

_ZN4llvm11SmallVectorIN5clang9FixItHintELj4EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang9FixItHintELb0EE13destroy_rangeEPS2_S4_.exit.i, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !58   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.t = load i32, ptr %i.s, align 8, !tbaa !60   ; 2 uses
  %.not4.i.i1 = icmp eq i32 %i.t, 0
  br i1 %.not4.i.i1, label %_ZN4llvm23SmallVectorTemplateBaseISt10shared_ptrIN5clang4ento23PathDiagnosticNotePieceEELb0EE13destroy_rangeEPS5_S7_.exit.i, label %.lr.ph.i.preheader.i2

.lr.ph.i.preheader.i2:                            ; preds = %_ZN4llvm11SmallVectorIN5clang9FixItHintELj4EED2Ev.exit
  %i.u = zext i32 %i.t to i64
  %.idx.i3 = shl nuw nsw i64 %i.u, 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i3
  br label %.lr.ph.i.i4

.lr.ph.i.i4:                                      ; preds = %_ZNSt12__shared_ptrIN5clang4ento23PathDiagnosticNotePieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, %.lr.ph.i.preheader.i2
  %.05.i.i5 = phi ptr [ %i.w, %_ZNSt12__shared_ptrIN5clang4ento23PathDiagnosticNotePieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i ], [ %i.v, %.lr.ph.i.preheader.i2 ] ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %.05.i.i5, i64 -16 ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %.05.i.i5, i64 -8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !545  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN5clang4ento23PathDiagnosticNotePieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i4
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  %i.aa = load atomic i64, ptr %i.z acquire, align 8 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 4294967297
end_hunk_0
