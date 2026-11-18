Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ExprEngine?download=true
inline.NumInlined: 9448
inline.NumDeleted: 4592
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN5clang4ento10ExprEngine22VisitArrayInitLoopExprEPKNS_17ArrayInitLoopExprEPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetE:bb.a

bb.w:                                             ; preds = %bb.v
  %i.er = load ptr, ptr %i.cn, align 8, !tbaa !934
  %i.es = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !333
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 96
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !751 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !41
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 72
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = call { ptr, i8 } %i.ey(ptr noundef nonnull align 8 dereferenceable(40) %i.ev, ptr noundef %i.er, ptr noundef %i.dt) #22, !inline_history !12 ; 2 uses
  %.fca.0.extract5 = extractvalue { ptr, i8 } %i.ez, 0
  %.fca.1.extract6 = extractvalue { ptr, i8 } %i.ez, 1
  store ptr %.fca.0.extract5, ptr %8, align 8, !tbaa !762
  store i8 %.fca.1.extract6, ptr %.sroa.486.0..sroa_idx, align 8, !tbaa !764
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.fa = call noundef ptr @_ZNK5clang4ento4SVal11getAsRegionEv(ptr noundef nonnull align 8 dereferenceable(9) %8) #22 ; 2 uses
  %.not70 = icmp eq ptr %i.fa, null
  br i1 %.not70, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !333
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 96
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !751 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !941
  %i.fh = load ptr, ptr %i.fe, align 8, !tbaa !41
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8
  %i.fk = call { ptr, i8 } %i.fj(ptr noundef nonnull align 8 dereferenceable(40) %i.fe, ptr noundef %i.fg, ptr nonnull %i.fa, i8 4, i64 0) #22, !inline_history !13 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i8 } %i.fk, 0
  %.fca.1.extract = extractvalue { ptr, i8 } %i.fk, 1
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %storemerge99 = phi ptr [ %.fca.0.extract, %bb.y ], [ null, %bb.x ] ; 2 uses
  %storemerge = phi i8 [ %.fca.1.extract, %bb.y ], [ 1, %bb.x ] ; 2 uses
  store ptr %storemerge99, ptr %8, align 8, !tbaa !762
  store i8 %storemerge, ptr %.sroa.486.0..sroa_idx, align 8, !tbaa !764
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.fl = load ptr, ptr %i.du, align 8, !tbaa !323 ; 3 uses
  store ptr %i.fl, ptr %4, align 8, !tbaa !323
  %.not.i.i.i = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.fl) #22
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i: ; preds = %bb.aa, %bb.z
  %i.fm = call noundef ptr @_ZNK5clang4ento10CoreEngine19makeNodeWithBindingEPNS0_12ExplodedNodeEPKNS_4ExprENS0_4SValEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEENS_12ProgramPoint4KindE(ptr noundef nonnull align 8 dereferenceable(232) %i.cp, ptr noundef nonnull %i.dr, ptr noundef nonnull %1, ptr %storemerge99, i8 %storemerge, ptr nofree noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 6) ; 3 uses
  %i.fn = load ptr, ptr %4, align 8, !tbaa !323   ; 2 uses
  %.not.i.i6.i = icmp eq ptr %i.fn, null
  br i1 %.not.i.i6.i, label %_ZNK5clang4ento10CoreEngine19makeNodeWithBindingEPNS0_12ExplodedNodeEPKNS_4ExprENS0_4SValENS_12ProgramPoint4KindE.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.fn) #22
  br label %_ZNK5clang4ento10CoreEngine19makeNodeWithBindingEPNS0_12ExplodedNodeEPKNS_4ExprENS0_4SValENS_12ProgramPoint4KindE.exit

_ZNK5clang4ento10CoreEngine19makeNodeWithBindingEPNS0_12ExplodedNodeEPKNS_4ExprENS0_4SValENS_12ProgramPoint4KindE.exit: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.fm, ptr %i.a, align 8, !tbaa !886
  %.not.i = icmp eq ptr %i.fm, null
  br i1 %.not.i, label %_ZN5clang4ento15ExplodedNodeSet6insertEPNS0_12ExplodedNodeE.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZNK5clang4ento10CoreEngine19makeNodeWithBindingEPNS0_12ExplodedNodeEPKNS_4ExprENS0_4SValENS_12ProgramPoint4KindE.exit
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 72
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !888
  %i.fq = trunc i64 %i.fp to i1
  br i1 %i.fq, label %_ZN5clang4ento15ExplodedNodeSet6insertEPNS0_12ExplodedNodeE.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fr = call noundef zeroext i1 @_ZN4llvm9SetVectorIPN5clang4ento12ExplodedNodeENS_11SmallVectorIS4_Lj4EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj4EE6insertERKS4_(ptr noundef nonnull align 8 dereferenceable(72) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  br label %_ZN5clang4ento15ExplodedNodeSet6insertEPNS0_12ExplodedNodeE.exit

_ZN5clang4ento15ExplodedNodeSet6insertEPNS0_12ExplodedNodeE.exit: ; preds = %_ZNK5clang4ento10CoreEngine19makeNodeWithBindingEPNS0_12ExplodedNodeEPKNS_4ExprENS0_4SValENS_12ProgramPoint4KindE.exit, %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br i1 %.not.i.i75, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZN5clang4ento15ExplodedNodeSet6insertEPNS0_12ExplodedNodeE.exit
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.dv) #22
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit: ; preds = %_ZN5clang4ento15ExplodedNodeSet6insertEPNS0_12ExplodedNodeE.exit, %bb.ae
  %i.fs = getelementptr inbounds nuw i8, ptr %.0101, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.fs, %i.cm
  br i1 %.not, label %._crit_edge, label %bb.q
}

declare void @_ZN5clang4ento10ExprEngine19VisitAttributedStmtEPKNS_14AttributedStmtEPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetE(ptr noundef nonnull align 8 dereferenceable(812), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #1

declare void @_ZN5clang4ento11SValBuilder14getConstantValEPKNS_4ExprE(ptr dead_on_unwind writable sret(%"class.std::optional.576") align 8, ptr noundef nonnull align 8 dereferenceable(412), ptr noundef) local_unnamed_addr #1

declare { ptr, i8 } @_ZN5clang4ento11SValBuilder16conjureSymbolValEPKvNS_8CFGBlock14ElementRefImplILb1EEEPKNS_10StackFrameENS_8QualTypeEj(ptr noundef nonnull align 8 dereferenceable(412), ptr noundef, ptr, i64, ptr noundef, i64, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang4ento10ExprEngine23VisitArraySubscriptExprEPKNS_18ArraySubscriptExprEPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetE(ptr noundef nonnull align 8 dereferenceable(812) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(72) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"class.clang::PostStmt", align 8   ; 7 uses
  %5 = alloca %"class.llvm::IntrusiveRefCntPtr.508", align 8 ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %6 = alloca %"class.llvm::IntrusiveRefCntPtr.508", align 8 ; 5 uses
  %7 = alloca %"class.clang::ento::EnvironmentEntry", align 8 ; 4 uses
  %8 = alloca %"class.clang::ento::EnvironmentEntry", align 8 ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %9 = alloca %"class.clang::ento::ExplodedNodeSet", align 8 ; 10 uses
  %10 = alloca %"class.clang::ento::ExplodedNodeSet", align 8 ; 11 uses
  %11 = alloca %"class.clang::ento::ExplodedNodeSet", align 8 ; 12 uses
  %i.d = tail call noundef zeroext i1 @_ZNK5clang18ArraySubscriptExpr9lhsIsBaseEv(ptr noundef nonnull align 8 dereferenceable(32) %1)
  %.in.v.i = select i1 %i.d, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %1, i64 %.in.v.i
  %i.e = load ptr, ptr %.in.i, align 8, !tbaa !904
  %i.f = tail call noundef ptr @_ZN5clang4Expr12IgnoreParensEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #24
  %i.g = tail call noundef zeroext i1 @_ZNK5clang18ArraySubscriptExpr9lhsIsBaseEv(ptr noundef nonnull align 8 dereferenceable(32) %1)
  %.in.v.i46 = select i1 %i.g, i64 24, i64 16
  %.in.i47 = getelementptr inbounds nuw i8, ptr %1, i64 %.in.v.i46
  %i.h = load ptr, ptr %.in.i47, align 8, !tbaa !904
  %i.i = tail call noundef ptr @_ZN5clang4Expr12IgnoreParensEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %9, i8 0, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !752
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  store i32 0, ptr %i.l, align 8, !tbaa !753
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 36
  store i32 4, ptr %i.m, align 4, !tbaa !754
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !206, !nonnull !71, !align !207
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 256
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !786
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %10, i8 0, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  store ptr %i.s, ptr %i.r, align 8, !tbaa !752
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i32 0, ptr %i.t, align 8, !tbaa !753
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 36
  store i32 4, ptr %i.u, align 4, !tbaa !754
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %2, ptr %i.c, align 8, !tbaa !886
  %.not.i.i = icmp eq ptr %2, null
  br i1 %.not.i.i, label %_ZN5clang4ento15ExplodedNodeSetC2EPNS0_12ExplodedNodeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.w = load i64, ptr %i.v, align 8, !tbaa !888
  %i.x = trunc i64 %i.w to i1
  br i1 %i.x, label %_ZN5clang4ento15ExplodedNodeSetC2EPNS0_12ExplodedNodeE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = call noundef zeroext i1 @_ZN4llvm9SetVectorIPN5clang4ento12ExplodedNodeENS_11SmallVectorIS4_Lj4EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj4EE6insertERKS4_(ptr noundef nonnull align 8 dereferenceable(72) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 0 uses
  br label %_ZN5clang4ento15ExplodedNodeSetC2EPNS0_12ExplodedNodeE.exit

_ZN5clang4ento15ExplodedNodeSetC2EPNS0_12ExplodedNodeE.exit: ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_ZN5clang4ento14CheckerManager18runCheckersForStmtEbRNS0_15ExplodedNodeSetERKS2_PKNS_4StmtERNS0_10ExprEngineEb(ptr noundef nonnull align 8 dereferenceable(1864) %i.q, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(72) %10, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(812) %0, i1 noundef zeroext false) #22
  %i.z = load ptr, ptr %i.r, align 8, !tbaa !752  ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.s
  br i1 %i.aa, label %_ZN4llvm11SmallVectorIPN5clang4ento12ExplodedNodeELj4EED2Ev.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN5clang4ento15ExplodedNodeSetC2EPNS0_12ExplodedNodeE.exit
  call void @free(ptr noundef %i.z) #22
  br label %_ZN4llvm11SmallVectorIPN5clang4ento12ExplodedNodeELj4EED2Ev.exit.i.i

_ZN4llvm11SmallVectorIPN5clang4ento12ExplodedNodeELj4EED2Ev.exit.i.i: ; preds = %bb.d, %_ZN5clang4ento15ExplodedNodeSetC2EPNS0_12ExplodedNodeE.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 20
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !891 ; 2 uses
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %_ZN5clang4ento15ExplodedNodeSetD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11SmallVectorIPN5clang4ento12ExplodedNodeELj4EED2Ev.exit.i.i
  %i.ae = load ptr, ptr %10, align 8, !tbaa !892
  %i.af = zext i32 %i.ac to i64                   ; 2 uses
  %i.ag = shl nuw nsw i64 %i.af, 3
  %i.ah = add nuw nsw i64 %i.af, 31
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = and i64 %i.ai, 1073741820
  %i.ak = add nuw nsw i64 %i.aj, %i.ag
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ae, i64 noundef %i.ak, i64 noundef 8) #22
  br label %_ZN5clang4ento15ExplodedNodeSetD2Ev.exit

_ZN5clang4ento15ExplodedNodeSetD2Ev.exit:         ; preds = %_ZN4llvm11SmallVectorIPN5clang4ento12ExplodedNodeELj4EED2Ev.exit.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %11, i8 0, i64 24, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 2 uses
  store ptr %i.am, ptr %i.al, align 8, !tbaa !752
  %i.an = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i32 0, ptr %i.an, align 8, !tbaa !753
  %i.ao = getelementptr inbounds nuw i8, ptr %11, i64 36
  store i32 4, ptr %i.ao, align 4, !tbaa !754
  %i.ap = call noundef zeroext i1 @_ZNK5clang18ArraySubscriptExpr9lhsIsBaseEv(ptr noundef nonnull align 8 dereferenceable(32) %1) ; 0 uses
  %i.aq = load i24, ptr %1, align 8
  %i.ar = and i24 %i.aq, 1536
  %.not84 = icmp eq i24 %i.ar, 0
  br i1 %.not84, label %bb.f, label %_ZNK5clang8QualType22isCForbiddenLValueTypeEv.exit.thread81

bb.f:                                             ; preds = %_ZN5clang4ento15ExplodedNodeSetD2Ev.exit
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i50 = load i64, ptr %i.as, align 8, !tbaa !317 ; 3 uses
  %i.at = and i64 %.sroa.0.0.copyload.i50, -16
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = load ptr, ptr %i.au, align 16, !tbaa !320
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.aw, align 8, !tbaa !317
  %i.ax = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, -16
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = load ptr, ptr %i.ay, align 16, !tbaa !320 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 16            ; 2 uses
  %i.bc = icmp eq i8 %i.bb, 13
  %.not7.i.i.i = icmp ne ptr %i.az, null
  %.not.not.not.i.i.i = and i1 %.not7.i.i.i, %i.bc
  br i1 %.not.not.not.i.i.i, label %_ZNK5clang4Type10isVoidTypeEv.exit.i, label %_ZNK5clang8QualType22isCForbiddenLValueTypeEv.exit

_ZNK5clang4Type10isVoidTypeEv.exit.i:             ; preds = %bb.f
  %i.bd = load i32, ptr %i.ba, align 16
  %i.be = and i32 %i.bd, 536346624
  %i.bf = icmp eq i32 %i.be, 236978176
  %i.bg = and i64 %.sroa.0.0.copyload.i50, 15
  %.not.i.i52 = icmp eq i64 %i.bg, 0
  %or.cond.i = and i1 %.not.i.i52, %i.bf
  br i1 %or.cond.i, label %_ZNK5clang8QualType13hasQualifiersEv.exit.i, label %_ZNK5clang8QualType22isCForbiddenLValueTypeEv.exit.thread81

_ZNK5clang8QualType13hasQualifiersEv.exit.i:      ; preds = %_ZNK5clang4Type10isVoidTypeEv.exit.i
  %i.bh = inttoptr i64 %.sroa.0.0.copyload.i50 to ptr
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.0.copyload.i.i.i.i.i1.i.i = load i64, ptr %i.bi, align 8
  %i.bj = and i64 %.0.copyload.i.i.i.i.i1.i.i, 15
  %.not.i = icmp eq i64 %i.bj, 0
  br i1 %.not.i, label %_ZNK5clang8QualType22isCForbiddenLValueTypeEv.exit.thread, label %_ZNK5clang8QualType22isCForbiddenLValueTypeEv.exit.thread81

_ZNK5clang8QualType22isCForbiddenLValueTypeEv.exit: ; preds = %bb.f
  %i.bk = add i8 %i.bb, -23
  %spec.select.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.bk, 2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i, label %_ZNK5clang8QualType22isCForbiddenLValueTypeEv.exit.thread, label %_ZNK5clang8QualType22isCForbiddenLValueTypeEv.exit.thread81

_ZNK5clang8QualType22isCForbiddenLValueTypeEv.exit.thread: ; preds = %_ZNK5clang8QualType13hasQualifiersEv.exit.i, %_ZNK5clang8QualType22isCForbiddenLValueTypeEv.exit
  %i.bl = load ptr, ptr %i.n, align 8, !tbaa !206, !nonnull !71, !align !207
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 208
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1801, !nonnull !71, !align !207
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = and i64 %i.bo, 4096
  %.not = icmp eq i64 %i.bp, 0
  br label %_ZNK5clang8QualType22isCForbiddenLValueTypeEv.exit.thread81

_ZNK5clang8QualType22isCForbiddenLValueTypeEv.exit.thread81: ; preds = %_ZNK5clang8QualType13hasQualifiersEv.exit.i, %_ZNK5clang4Type10isVoidTypeEv.exit.i, %_ZNK5clang8QualType22isCForbiddenLValueTypeEv.exit, %_ZNK5clang8QualType22isCForbiddenLValueTypeEv.exit.thread, %_ZN5clang4ento15ExplodedNodeSetD2Ev.exit
  %i.bq = phi i1 [ true, %_ZN5clang4ento15ExplodedNodeSetD2Ev.exit ], [ false, %_ZNK5clang8QualType22isCForbiddenLValueTypeEv.exit ], [ %.not, %_ZNK5clang8QualType22isCForbiddenLValueTypeEv.exit.thread ], [ false, %_ZNK5clang4Type10isVoidTypeEv.exit.i ], [ false, %_ZNK5clang8QualType13hasQualifiersEv.exit.i ] ; 2 uses
  %i.br = load ptr, ptr %i.j, align 8, !tbaa !752 ; 2 uses
  %i.bs = load i32, ptr %i.l, align 8, !tbaa !753 ; 2 uses
  %i.bt = zext i32 %i.bs to i64
  %.idx = shl nuw nsw i64 %i.bt, 3
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 %.idx
  %.not4585 = icmp eq i32 %i.bs, 0
  br i1 %.not4585, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK5clang8QualType22isCForbiddenLValueTypeEv.exit.thread81
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.k

._crit_edge:                                      ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit70, %_ZNK5clang8QualType22isCForbiddenLValueTypeEv.exit.thread81
  %i.ca = load ptr, ptr %i.n, align 8, !tbaa !206, !nonnull !71, !align !207
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 256
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !786
  call void @_ZN5clang4ento14CheckerManager18runCheckersForStmtEbRNS0_15ExplodedNodeSetERKS2_PKNS_4StmtERNS0_10ExprEngineEb(ptr noundef nonnull align 8 dereferenceable(1864) %i.cc, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(72) %11, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(812) %0, i1 noundef zeroext false) #22
  %i.cd = load ptr, ptr %i.al, align 8, !tbaa !752 ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.am
  br i1 %i.ce, label %_ZN4llvm11SmallVectorIPN5clang4ento12ExplodedNodeELj4EED2Ev.exit.i.i53, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  call void @free(ptr noundef %i.cd) #22
  br label %_ZN4llvm11SmallVectorIPN5clang4ento12ExplodedNodeELj4EED2Ev.exit.i.i53

_ZN4llvm11SmallVectorIPN5clang4ento12ExplodedNodeELj4EED2Ev.exit.i.i53: ; preds = %bb.g, %._crit_edge
  %i.cf = getelementptr inbounds nuw i8, ptr %11, i64 20
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !891 ; 2 uses
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %_ZN5clang4ento15ExplodedNodeSetD2Ev.exit54, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm11SmallVectorIPN5clang4ento12ExplodedNodeELj4EED2Ev.exit.i.i53
  %i.ci = load ptr, ptr %11, align 8, !tbaa !892
  %i.cj = zext i32 %i.cg to i64                   ; 2 uses
  %i.ck = shl nuw nsw i64 %i.cj, 3
  %i.cl = add nuw nsw i64 %i.cj, 31
  %i.cm = lshr i64 %i.cl, 3
  %i.cn = and i64 %i.cm, 1073741820
  %i.co = add nuw nsw i64 %i.cn, %i.ck
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ci, i64 noundef %i.co, i64 noundef 8) #22
  br label %_ZN5clang4ento15ExplodedNodeSetD2Ev.exit54

_ZN5clang4ento15ExplodedNodeSetD2Ev.exit54:       ; preds = %_ZN4llvm11SmallVectorIPN5clang4ento12ExplodedNodeELj4EED2Ev.exit.i.i53, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.cp = load ptr, ptr %i.j, align 8, !tbaa !752 ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.k
  br i1 %i.cq, label %_ZN4llvm11SmallVectorIPN5clang4ento12ExplodedNodeELj4EED2Ev.exit.i.i55, label %bb.i

bb.i:                                             ; preds = %_ZN5clang4ento15ExplodedNodeSetD2Ev.exit54
  call void @free(ptr noundef %i.cp) #22
  br label %_ZN4llvm11SmallVectorIPN5clang4ento12ExplodedNodeELj4EED2Ev.exit.i.i55

_ZN4llvm11SmallVectorIPN5clang4ento12ExplodedNodeELj4EED2Ev.exit.i.i55: ; preds = %bb.i, %_ZN5clang4ento15ExplodedNodeSetD2Ev.exit54
  %i.cr = getelementptr inbounds nuw i8, ptr %9, i64 20
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !891 ; 2 uses
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %_ZN5clang4ento15ExplodedNodeSetD2Ev.exit56, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm11SmallVectorIPN5clang4ento12ExplodedNodeELj4EED2Ev.exit.i.i55
  %i.cu = load ptr, ptr %9, align 8, !tbaa !892
  %i.cv = zext i32 %i.cs to i64                   ; 2 uses
  %i.cw = shl nuw nsw i64 %i.cv, 3
  %i.cx = add nuw nsw i64 %i.cv, 31
  %i.cy = lshr i64 %i.cx, 3
  %i.cz = and i64 %i.cy, 1073741820
  %i.da = add nuw nsw i64 %i.cz, %i.cw
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.cu, i64 noundef %i.da, i64 noundef 8) #22
  br label %_ZN5clang4ento15ExplodedNodeSetD2Ev.exit56

_ZN5clang4ento15ExplodedNodeSetD2Ev.exit56:       ; preds = %_ZN4llvm11SmallVectorIPN5clang4ento12ExplodedNodeELj4EED2Ev.exit.i.i55, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  ret void

bb.k:                                             ; preds = %.lr.ph, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit70
  %.086 = phi ptr [ %i.br, %.lr.ph ], [ %i.fg, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit70 ] ; 2 uses
  %i.db = load ptr, ptr %.086, align 8, !tbaa !886 ; 4 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.db, i64 24 ; 2 uses
  %.sroa.3.0.copyload.i = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !317
  %i.dc = and i64 %.sroa.3.0.copyload.i, -8
  %i.dd = inttoptr i64 %i.dc to ptr               ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 56 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !323 ; 9 uses
  %.not.i.i57 = icmp eq ptr %i.df, null           ; 3 uses
  br i1 %.not.i.i57, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.thread

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit: ; preds = %bb.k
  br i1 %i.bq, label %bb.l, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit63

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.thread: ; preds = %bb.k
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.df) #22
  br i1 %i.bq, label %bb.l, label %bb.r

bb.l:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.thread, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit
  %.sroa.0.0.copyload.i58 = load i64, ptr %i.bz, align 8, !tbaa !317 ; 3 uses
  %i.dg = and i64 %.sroa.0.0.copyload.i58, -16
  %i.dh = inttoptr i64 %i.dg to ptr
  %i.di = load ptr, ptr %i.dh, align 16, !tbaa !320
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.dj, align 8, !tbaa !317
  %i.dk = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, -16
  %i.dl = inttoptr i64 %i.dk to ptr
  %i.dm = load ptr, ptr %i.dl, align 16, !tbaa !320 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16 ; 2 uses
  %i.do = load i8, ptr %i.dn, align 16
  %i.dp = icmp eq i8 %i.do, 13
  %.not7.i.i = icmp ne ptr %i.dm, null
  %.not.not.not.i.i = and i1 %.not7.i.i, %i.dp
  br i1 %.not.not.not.i.i, label %_ZNK5clang4Type10isVoidTypeEv.exit, label %_ZNK5clang4Type10isVoidTypeEv.exit.thread

_ZNK5clang4Type10isVoidTypeEv.exit:               ; preds = %bb.l
  %i.dq = load i32, ptr %i.dn, align 16
  %i.dr = and i32 %i.dq, 536346624
  %i.ds = icmp eq i32 %i.dr, 236978176
  br i1 %i.ds, label %bb.m, label %_ZNK5clang4Type10isVoidTypeEv.exit.thread

bb.m:                                             ; preds = %_ZNK5clang4Type10isVoidTypeEv.exit
  %i.dt = load ptr, ptr %i.n, align 8, !tbaa !206, !nonnull !71, !align !207 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !41
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = call noundef nonnull align 8 dereferenceable(23904) ptr %i.dw(ptr noundef nonnull align 8 dereferenceable(272) %i.dt) #22, !inline_history !0
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 18912
  %.sroa.0.0.copyload.i60 = load i64, ptr %i.dy, align 8, !tbaa !317
  br label %_ZNK5clang4Type10isVoidTypeEv.exit.thread

_ZNK5clang4Type10isVoidTypeEv.exit.thread:        ; preds = %bb.l, %bb.m, %_ZNK5clang4Type10isVoidTypeEv.exit
  %.sroa.072.0 = phi i64 [ %.sroa.0.0.copyload.i60, %bb.m ], [ %.sroa.0.0.copyload.i58, %_ZNK5clang4Type10isVoidTypeEv.exit ], [ %.sroa.0.0.copyload.i58, %bb.l ]
  %i.dz = getelementptr inbounds nuw i8, ptr %i.df, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @_ZN5clang4ento16EnvironmentEntryC1EPKNS_4ExprEPKNS_10StackFrameE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef %i.i, ptr noundef %i.dd) #22
  %i.ea = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 3 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !333
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 240
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !241
  %i.ee = call { ptr, i8 } @_ZNK5clang4ento11Environment7getSValERKNS0_16EnvironmentEntryERNS0_11SValBuilderE(ptr noundef nonnull align 8 dereferenceable(8) %i.dz, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(412) %i.ed) #22 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %.fca.1.extract10 = extractvalue { ptr, i8 } %i.ee, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @_ZN5clang4ento16EnvironmentEntryC1EPKNS_4ExprEPKNS_10StackFrameE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %i.f, ptr noundef %i.dd) #22
  %i.ef = load ptr, ptr %i.ea, align 8, !tbaa !333
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 240
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !241
  %i.ei = call { ptr, i8 } @_ZNK5clang4ento11Environment7getSValERKNS0_16EnvironmentEntryERNS0_11SValBuilderE(ptr noundef nonnull align 8 dereferenceable(8) %i.dz, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(412) %i.eh) #22 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.ej = add i8 %.fca.1.extract10, -5
  %spec.select.i.i.i.i.i.i = icmp ult i8 %i.ej, 6
  br i1 %spec.select.i.i.i.i.i.i, label %_ZNK5clang4ento4SVal5getAsINS0_6NonLocEEESt8optionalIT_Ev.exit.i, label %_ZNK5clang4ento12ProgramState9getLValueENS_8QualTypeENS0_4SValES3_.exit

_ZNK5clang4ento4SVal5getAsINS0_6NonLocEEESt8optionalIT_Ev.exit.i: ; preds = %_ZNK5clang4Type10isVoidTypeEv.exit.thread
  %.fca.1.extract4 = extractvalue { ptr, i8 } %i.ei, 1
  %.fca.0.extract3 = extractvalue { ptr, i8 } %i.ei, 0
  %.fca.0.extract9 = extractvalue { ptr, i8 } %i.ee, 0
  %i.ek = load ptr, ptr %i.ea, align 8, !tbaa !333
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 96
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !751 ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !41
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 96
  %i.ep = load ptr, ptr %i.eo, align 8
  %i.eq = call { ptr, i8 } %i.ep(ptr noundef nonnull align 8 dereferenceable(40) %i.em, i64 %.sroa.072.0, ptr %.fca.0.extract9, i8 %.fca.1.extract10, ptr %.fca.0.extract3, i8 %.fca.1.extract4) #22, !inline_history !14 ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.eq, 0
  %.fca.1.extract.i = extractvalue { ptr, i8 } %i.eq, 1
  br label %_ZNK5clang4ento12ProgramState9getLValueENS_8QualTypeENS0_4SValES3_.exit

_ZNK5clang4ento12ProgramState9getLValueENS_8QualTypeENS0_4SValES3_.exit: ; preds = %_ZNK5clang4Type10isVoidTypeEv.exit.thread, %_ZNK5clang4ento4SVal5getAsINS0_6NonLocEEESt8optionalIT_Ev.exit.i
  %.sroa.010.1.i = phi ptr [ %.fca.0.extract.i, %_ZNK5clang4ento4SVal5getAsINS0_6NonLocEEESt8optionalIT_Ev.exit.i ], [ null, %_ZNK5clang4Type10isVoidTypeEv.exit.thread ]
  %.sroa.311.1.i = phi i8 [ %.fca.1.extract.i, %_ZNK5clang4ento4SVal5getAsINS0_6NonLocEEESt8optionalIT_Ev.exit.i ], [ 1, %_ZNK5clang4Type10isVoidTypeEv.exit.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.er = load ptr, ptr %i.de, align 8, !tbaa !323 ; 3 uses
  store ptr %i.er, ptr %6, align 8, !tbaa !323
  %.not.i.i.i = icmp eq ptr %i.er, null
  br i1 %.not.i.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNK5clang4ento12ProgramState9getLValueENS_8QualTypeENS0_4SValES3_.exit
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.er) #22
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i: ; preds = %bb.n, %_ZNK5clang4ento12ProgramState9getLValueENS_8QualTypeENS0_4SValES3_.exit
  %i.es = call noundef ptr @_ZNK5clang4ento10CoreEngine19makeNodeWithBindingEPNS0_12ExplodedNodeEPKNS_4ExprENS0_4SValEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEENS_12ProgramPoint4KindE(ptr noundef nonnull align 8 dereferenceable(232) %i.bv, ptr noundef nonnull %i.db, ptr noundef nonnull %1, ptr %.sroa.010.1.i, i8 %.sroa.311.1.i, ptr nofree noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 12) ; 3 uses
  %i.et = load ptr, ptr %6, align 8, !tbaa !323   ; 2 uses
  %.not.i.i6.i = icmp eq ptr %i.et, null
  br i1 %.not.i.i6.i, label %_ZNK5clang4ento10CoreEngine19makeNodeWithBindingEPNS0_12ExplodedNodeEPKNS_4ExprENS0_4SValENS_12ProgramPoint4KindE.exit, label %bb.o

bb.o:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.et) #22
  br label %_ZNK5clang4ento10CoreEngine19makeNodeWithBindingEPNS0_12ExplodedNodeEPKNS_4ExprENS0_4SValENS_12ProgramPoint4KindE.exit

_ZNK5clang4ento10CoreEngine19makeNodeWithBindingEPNS0_12ExplodedNodeEPKNS_4ExprENS0_4SValENS_12ProgramPoint4KindE.exit: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.es, ptr %i.b, align 8, !tbaa !886
  %.not.i61 = icmp eq ptr %i.es, null
  br i1 %.not.i61, label %_ZN5clang4ento15ExplodedNodeSet6insertEPNS0_12ExplodedNodeE.exit, label %bb.p

bb.p:                                             ; preds = %_ZNK5clang4ento10CoreEngine19makeNodeWithBindingEPNS0_12ExplodedNodeEPKNS_4ExprENS0_4SValENS_12ProgramPoint4KindE.exit
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 72
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !888
  %i.ew = trunc i64 %i.ev to i1
  br i1 %i.ew, label %_ZN5clang4ento15ExplodedNodeSet6insertEPNS0_12ExplodedNodeE.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ex = call noundef zeroext i1 @_ZN4llvm9SetVectorIPN5clang4ento12ExplodedNodeENS_11SmallVectorIS4_Lj4EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj4EE6insertERKS4_(ptr noundef nonnull align 8 dereferenceable(72) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  br label %_ZN5clang4ento15ExplodedNodeSet6insertEPNS0_12ExplodedNodeE.exit

_ZN5clang4ento15ExplodedNodeSet6insertEPNS0_12ExplodedNodeE.exit: ; preds = %_ZNK5clang4ento10CoreEngine19makeNodeWithBindingEPNS0_12ExplodedNodeEPKNS_4ExprENS0_4SValENS_12ProgramPoint4KindE.exit, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.x

bb.r:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.thread
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.df) #22
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit63

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit63: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %.sroa.3.0.copyload.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !317
  %i.ey = and i64 %.sroa.3.0.copyload.i.i, -8
  store ptr %1, ptr %4, align 8, !tbaa !903
  store i64 2, ptr %i.bw, align 8
  %i.ez = or disjoint i64 %i.ey, 2
  store i64 %i.ez, ptr %i.bx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.by, i8 0, i64 24, i1 false)
  store ptr %i.df, ptr %5, align 8, !tbaa !323
  br i1 %.not.i.i57, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i65, label %bb.s

bb.s:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit63
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.df) #22
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i65

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i65: ; preds = %bb.s, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit63
  %i.fa = call noundef ptr @_ZNK5clang4ento10CoreEngine8makeNodeERKNS_12ProgramPointEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPNS0_12ExplodedNodeEb(ptr noundef nonnull align 8 dereferenceable(232) %i.bv, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr nofree noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %i.db, i1 noundef zeroext false) #22 ; 3 uses
  %i.fb = load ptr, ptr %5, align 8, !tbaa !323   ; 2 uses
  %.not.i.i4.i = icmp eq ptr %i.fb, null
  br i1 %.not.i.i4.i, label %_ZNK5clang4ento10CoreEngine16makePostStmtNodeEPKNS_4StmtEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPNS0_12ExplodedNodeEb.exit, label %bb.t

bb.t:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i65
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.fb) #22
  br label %_ZNK5clang4ento10CoreEngine16makePostStmtNodeEPKNS_4StmtEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPNS0_12ExplodedNodeEb.exit

_ZNK5clang4ento10CoreEngine16makePostStmtNodeEPKNS_4StmtEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPNS0_12ExplodedNodeEb.exit: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i65, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.fa, ptr %i.a, align 8, !tbaa !886
  %.not.i66 = icmp eq ptr %i.fa, null
  br i1 %.not.i66, label %_ZN5clang4ento15ExplodedNodeSet6insertEPNS0_12ExplodedNodeE.exit67, label %bb.u

bb.u:                                             ; preds = %_ZNK5clang4ento10CoreEngine16makePostStmtNodeEPKNS_4StmtEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPNS0_12ExplodedNodeEb.exit
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 72
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !888
  %i.fe = trunc i64 %i.fd to i1
  br i1 %i.fe, label %_ZN5clang4ento15ExplodedNodeSet6insertEPNS0_12ExplodedNodeE.exit67, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ff = call noundef zeroext i1 @_ZN4llvm9SetVectorIPN5clang4ento12ExplodedNodeENS_11SmallVectorIS4_Lj4EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj4EE6insertERKS4_(ptr noundef nonnull align 8 dereferenceable(72) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  br label %_ZN5clang4ento15ExplodedNodeSet6insertEPNS0_12ExplodedNodeE.exit67

_ZN5clang4ento15ExplodedNodeSet6insertEPNS0_12ExplodedNodeE.exit67: ; preds = %_ZNK5clang4ento10CoreEngine16makePostStmtNodeEPKNS_4StmtEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPNS0_12ExplodedNodeEb.exit, %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %.not.i.i57, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit70, label %bb.w

bb.w:                                             ; preds = %_ZN5clang4ento15ExplodedNodeSet6insertEPNS0_12ExplodedNodeE.exit67
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.df) #22
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN5clang4ento15ExplodedNodeSet6insertEPNS0_12ExplodedNodeE.exit
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.df) #22
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit70

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit70: ; preds = %_ZN5clang4ento15ExplodedNodeSet6insertEPNS0_12ExplodedNodeE.exit67, %bb.x
  %i.fg = getelementptr inbounds nuw i8, ptr %.086, i64 8 ; 2 uses
  %.not45 = icmp eq ptr %i.fg, %i.bu
  br i1 %.not45, label %._crit_edge, label %bb.k
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang4ento10ExprEngine15VisitGCCAsmStmtEPKNS_10GCCAsmStmtEPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetE(ptr noundef nonnull align 8 dereferenceable(812) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(72) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.clang::ento::BlockCounter", align 8 ; 4 uses
  %5 = alloca %"class.clang::ento::EnvironmentEntry", align 8 ; 4 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %6 = alloca %"class.clang::PostStmt", align 8   ; 7 uses
  %7 = alloca %"class.llvm::IntrusiveRefCntPtr.508", align 8 ; 5 uses
  %8 = alloca %"class.clang::ento::BlockCounter", align 8 ; 4 uses
  %9 = alloca %"class.clang::ento::EnvironmentEntry", align 8 ; 4 uses
  %10 = alloca %"class.std::optional.557", align 8 ; 6 uses
  %11 = alloca %"class.llvm::IntrusiveRefCntPtr.508", align 8 ; 3 uses
  %12 = alloca %"class.std::optional.557", align 8 ; 6 uses
  %13 = alloca %"class.llvm::IntrusiveRefCntPtr.508", align 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !323  ; 4 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.c) #22
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit: ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1815 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !1816 ; 2 uses
  %i.h = zext i32 %i.g to i64
  %.idx = shl nuw nsw i64 %i.h, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx
  %.not91 = icmp eq i32 %i.g, 0
  br i1 %.not91, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 168
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %_ZNK5clang4ento4SVal5getAsINS0_3LocEEESt8optionalIT_Ev.exit
  %.pre102 = load ptr, ptr %i.d, align 8, !tbaa !1815
  %.pre103 = load i32, ptr %i.f, align 8, !tbaa !1816
  %i.n = zext i32 %.pre103 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit
  %i.o = phi i64 [ 0, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit ], [ %i.n, %._crit_edge.loopexit ]
  %i.p = phi ptr [ %i.e, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit ], [ %.pre102, %._crit_edge.loopexit ]
  %.sroa.080.0.lcssa = phi ptr [ %i.c, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit ], [ %.sroa.080.1, %._crit_edge.loopexit ] ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.o ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.s = load i32, ptr %i.r, align 4, !tbaa !1817 ; 2 uses
  %i.t = zext i32 %i.s to i64
  %.idx101 = shl nuw nsw i64 %i.t, 3
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx101
  %.not9094 = icmp eq i32 %i.s, 0
  br i1 %.not9094, label %._crit_edge99, label %.lr.ph98

.lr.ph98:                                         ; preds = %._crit_edge
  %.sroa.3.0..sroa_idx.i42 = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 16
  %.sroa.4.0..sroa_idx.i.i.i49 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 168
  br label %bb.l

bb.c:                                             ; preds = %.lr.ph, %_ZNK5clang4ento4SVal5getAsINS0_3LocEEESt8optionalIT_Ev.exit
  %.sroa.080.093 = phi ptr [ %i.c, %.lr.ph ], [ %.sroa.080.1, %_ZNK5clang4ento4SVal5getAsINS0_3LocEEESt8optionalIT_Ev.exit ] ; 6 uses
  %.sroa.075.092 = phi ptr [ %i.e, %.lr.ph ], [ %i.ba, %_ZNK5clang4ento4SVal5getAsINS0_3LocEEESt8optionalIT_Ev.exit ] ; 2 uses
  %i.z = load ptr, ptr %.sroa.075.092, align 8, !tbaa !904
  %.sroa.3.0.copyload.i = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !317
  %i.aa = and i64 %.sroa.3.0.copyload.i, -8
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.080.093, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @_ZN5clang4ento16EnvironmentEntryC1EPKNS_4ExprEPKNS_10StackFrameE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef %i.z, ptr noundef %i.ab) #22
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.080.093, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !333
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 240
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !241
  %i.ah = call { ptr, i8 } @_ZNK5clang4ento11Environment7getSValERKNS0_16EnvironmentEntryERNS0_11SValBuilderE(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(412) %i.ag) #22 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %.fca.1.extract8 = extractvalue { ptr, i8 } %i.ah, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.ai = add i8 %.fca.1.extract8, -2
  %spec.select.i.i.i.i.i = icmp ult i8 %i.ai, 3
  br i1 %spec.select.i.i.i.i.i, label %bb.d, label %_ZNK5clang4ento4SVal5getAsINS0_3LocEEESt8optionalIT_Ev.exit

bb.d:                                             ; preds = %bb.c
  %.fca.0.extract7 = extractvalue { ptr, i8 } %i.ah, 0
  store ptr %.fca.0.extract7, ptr %10, align 8, !alias.scope !1818
  store i8 %.fca.1.extract8, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !1818
  store i8 1, ptr %i.j, align 8, !tbaa !1820, !alias.scope !1818
  %i.aj = load ptr, ptr %i.k, align 8, !tbaa !244 ; 3 uses
  %.not.i.i30 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i30, label %._ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit_crit_edge, label %bb.e

._ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit_crit_edge: ; preds = %bb.d
  %.pre = load ptr, ptr inttoptr (i64 8 to ptr), align 8, !tbaa !771
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !771 ; 2 uses
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit: ; preds = %._ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit_crit_edge, %bb.e
  %i.am = phi ptr [ %i.al, %bb.e ], [ %.pre, %._ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit_crit_edge ]
  %i.an = phi ptr [ %i.al, %bb.e ], [ null, %._ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit_crit_edge ]
  %i.ao = load i32, ptr %i.l, align 8, !tbaa !243
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !772
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.as = load ptr, ptr %i.m, align 8, !tbaa !773
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.at, align 8, !tbaa !762
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %8, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %i.av = load i32, ptr %i.au, align 8, !tbaa !783
  %i.aw = call noundef i32 @_ZNK5clang4ento12BlockCounter13getNumVisitedEPKNS_10StackFrameEj(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %i.ar, i32 noundef %i.av) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %.sroa.3.0.copyload.i34 = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !317
  %i.ax = and i64 %.sroa.3.0.copyload.i34, -8
  %i.ay = inttoptr i64 %i.ax to ptr
  call void @_ZNK5clang4ento12ProgramState17invalidateRegionsEN4llvm8ArrayRefINS0_4SValEEENS_8CFGBlock14ElementRefImplILb1EEEjPKNS_10StackFrameEbPNS2_8DenseSetIPKNS0_7SymExprENS2_12DenseMapInfoISF_vEEEEPKNS0_9CallEventEPNS0_33RegionAndSymbolInvalidationTraitsE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::IntrusiveRefCntPtr.508") align 8 %11, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.080.093, ptr nonnull %10, i64 1, ptr %i.an, i64 %i.ap, i32 noundef %i.aw, ptr noundef %i.ay, i1 noundef zeroext true, ptr noundef null, ptr noundef null, ptr noundef null) #22
  %i.az = load ptr, ptr %11, align 8, !tbaa !323
  store ptr %.sroa.080.093, ptr %11, align 8, !tbaa !323
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.080.093) #22
end_hunk_0
