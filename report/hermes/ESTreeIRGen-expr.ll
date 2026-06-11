inline.NumInlined: 1773
inline.NumDeleted: 898
begin_hunk_0_@_ZN6hermes5irgen11ESTreeIRGen27genOptionalMemberExpressionEPNS_6ESTree28OptionalMemberExpressionNodeEPNS_10BasicBlockENS1_25MemberExpressionOperationE:bb.a
  %i.z = ptrtoint ptr %i.s to i64
  store i64 %i.z, ptr %i.y, align 1
  %i.aa = load i32, ptr %i.b, align 8, !tbaa !220
  %i.ab = add i32 %i.aa, 1
  store i32 %i.ab, ptr %i.b, align 8, !tbaa !220
  %i.ac = load i32, ptr %i.e, align 8, !tbaa !220 ; 2 uses
  %i.ad = load i32, ptr %i.f, align 4, !tbaa !221
  %.not.i33 = icmp ult i32 %i.ac, %i.ad
  br i1 %.not.i33, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit, label %bb.d, !prof !200

bb.d:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull %i.d, i64 noundef 0, i64 noundef 8) #16
  %.pre.i34 = load i32, ptr %i.e, align 8, !tbaa !220
  br label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit

_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit: ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit, %bb.d
  %i.ae = phi i32 [ %.pre.i34, %bb.d ], [ %i.ac, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit ]
  %i.af = load ptr, ptr %5, align 8, !tbaa !219
  %i.ag = zext i32 %i.ae to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ag
  %i.ai = ptrtoint ptr %i.r to i64
  store i64 %i.ai, ptr %i.ah, align 1
  %i.aj = load i32, ptr %i.e, align 8, !tbaa !220
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.e, align 8, !tbaa !220
  %i.al = call noundef ptr @_ZN6hermes9IRBuilder16createBranchInstEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef %i.m) #16 ; 0 uses
  call void @_ZN6hermes9IRBuilder17setInsertionBlockEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef %i.n) #16
  br label %bb.e

bb.e:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit, %bb.a
  %.049 = phi ptr [ %i.r, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit ], [ %2, %bb.a ] ; 3 uses
  %.0 = phi ptr [ %i.m, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit ], [ null, %bb.a ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !302 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !10 ; 2 uses
  %i.aq = icmp ne i32 %i.ap, 59
  %.not51 = icmp eq ptr %i.an, null               ; 2 uses
  %.not = or i1 %.not51, %i.aq
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = call { ptr, ptr } @_ZN6hermes5irgen11ESTreeIRGen27genOptionalMemberExpressionEPNS_6ESTree28OptionalMemberExpressionNodeEPNS_10BasicBlockENS1_25MemberExpressionOperationE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %i.an, ptr noundef %.049, i32 noundef 0)
  %i.as = extractvalue { ptr, ptr } %i.ar, 0
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.at = icmp ne i32 %i.ap, 52
  %.not32 = or i1 %.not51, %i.at
  br i1 %.not32, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = call noundef ptr @_ZN6hermes5irgen11ESTreeIRGen19genOptionalCallExprEPNS_6ESTree26OptionalCallExpressionNodeEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %i.an, ptr noundef %.049)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.av = call noundef ptr @_ZN6hermes5irgen11ESTreeIRGen13genExpressionEPNS_6ESTree4NodeENS_10IdentifierE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %i.an, ptr null)
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.f
  %.1 = phi ptr [ %i.as, %bb.f ], [ %i.au, %bb.h ], [ %i.av, %bb.i ] ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 65
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !304, !range !27, !noundef !28
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !286
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 72
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !287
  %i.be = call noundef ptr @_ZN6hermes9IRBuilder16createBasicBlockEPNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(40) %i.az, ptr noundef %i.bd) #16 ; 2 uses
  %i.bf = call noundef ptr @_ZN6hermes9IRBuilder14getLiteralNullEv(ptr noundef nonnull align 8 dereferenceable(40) %i.az) #16
  %i.bg = call noundef ptr @_ZN6hermes9IRBuilder24createBinaryOperatorInstEPNS_5ValueES2_NS_18BinaryOperatorInst6OpKindE(ptr noundef nonnull align 8 dereferenceable(40) %i.az, ptr noundef %.1, ptr noundef %i.bf, i32 noundef 1) #16 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, null
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %spec.select = select i1 %i.bh, ptr null, ptr %i.bi
  %i.bj = call noundef ptr @_ZN6hermes9IRBuilder20createCondBranchInstEPNS_5ValueEPNS_10BasicBlockES4_(ptr noundef nonnull align 8 dereferenceable(40) %i.az, ptr noundef %spec.select, ptr noundef %.049, ptr noundef %i.be) #16 ; 0 uses
  call void @_ZN6hermes9IRBuilder17setInsertionBlockEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(40) %i.az, ptr noundef %i.be) #16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bk = call noundef ptr @_ZN6hermes5irgen11ESTreeIRGen27genMemberExpressionPropertyEPNS_6ESTree24MemberExpressionLikeNodeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %1) #16 ; 2 uses
  switch i32 %3, label %bb.o [
    i32 0, label %bb.m
    i32 1, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bm = call noundef ptr @_ZN6hermes9IRBuilder22createLoadPropertyInstEPNS_5ValueES2_(ptr noundef nonnull align 8 dereferenceable(40) %i.bl, ptr noundef %.1, ptr noundef %i.bk) #16 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %spec.select1 = select i1 %i.bn, ptr null, ptr %i.bo
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bq = call noundef ptr @_ZN6hermes9IRBuilder24createDeletePropertyInstEPNS_5ValueES2_(ptr noundef nonnull align 8 dereferenceable(40) %i.bp, ptr noundef %.1, ptr noundef %i.bk) #16 ; 2 uses
  %i.br = icmp eq ptr %i.bq, null
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %spec.select2 = select i1 %i.br, ptr null, ptr %i.bs
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %.050 = phi ptr [ null, %bb.l ], [ %spec.select1, %bb.m ], [ %spec.select2, %bb.n ] ; 2 uses
  br i1 %i.g, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.bt = load i32, ptr %i.b, align 8, !tbaa !220 ; 2 uses
  %i.bu = load i32, ptr %i.c, align 4, !tbaa !221
  %.not.i36 = icmp ult i32 %i.bt, %i.bu
  br i1 %.not.i36, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit38, label %bb.q, !prof !200

bb.q:                                             ; preds = %bb.p
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.a, i64 noundef 0, i64 noundef 8) #16
  %.pre.i37 = load i32, ptr %i.b, align 8, !tbaa !220
  br label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit38

_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit38: ; preds = %bb.p, %bb.q
  %i.bv = phi i32 [ %.pre.i37, %bb.q ], [ %i.bt, %bb.p ]
  %i.bw = load ptr, ptr %4, align 8, !tbaa !219
  %i.bx = zext i32 %i.bv to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bx
  %i.bz = ptrtoint ptr %.050 to i64
  store i64 %i.bz, ptr %i.by, align 1
  %i.ca = load i32, ptr %i.b, align 8, !tbaa !220
  %i.cb = add i32 %i.ca, 1
  store i32 %i.cb, ptr %i.b, align 8, !tbaa !220
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.cd = call noundef ptr @_ZN6hermes9IRBuilder17getInsertionBlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.cc) #16
  %i.ce = load i32, ptr %i.e, align 8, !tbaa !220 ; 2 uses
  %i.cf = load i32, ptr %i.f, align 4, !tbaa !221
  %.not.i39 = icmp ult i32 %i.ce, %i.cf
  br i1 %.not.i39, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit41, label %bb.r, !prof !200

bb.r:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit38
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull %i.d, i64 noundef 0, i64 noundef 8) #16
  %.pre.i40 = load i32, ptr %i.e, align 8, !tbaa !220
  br label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit41

_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit41: ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit38, %bb.r
  %i.cg = phi i32 [ %.pre.i40, %bb.r ], [ %i.ce, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit38 ]
  %i.ch = load ptr, ptr %5, align 8, !tbaa !219
  %i.ci = zext i32 %i.cg to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.ci
  %i.ck = ptrtoint ptr %i.cd to i64
  store i64 %i.ck, ptr %i.cj, align 1
  %i.cl = load i32, ptr %i.e, align 8, !tbaa !220
  %i.cm = add i32 %i.cl, 1
  store i32 %i.cm, ptr %i.e, align 8, !tbaa !220
  %i.cn = call noundef ptr @_ZN6hermes9IRBuilder16createBranchInstEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(40) %i.cc, ptr noundef %.0) #16 ; 0 uses
  call void @_ZN6hermes9IRBuilder17setInsertionBlockEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(40) %i.cc, ptr noundef %.0) #16
  %i.co = call noundef ptr @_ZN6hermes9IRBuilder13createPhiInstERKN4llvh11SmallVectorIPNS_5ValueELj8EEERKNS2_IPNS_10BasicBlockELj8EEE(ptr noundef nonnull align 8 dereferenceable(40) %i.cc, ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 8 dereferenceable(80) %5) #16 ; 2 uses
  %i.cp = icmp eq ptr %i.co, null
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %spec.select3 = select i1 %i.cp, ptr null, ptr %i.cq
  br label %bb.s

bb.s:                                             ; preds = %bb.o, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit41
  %.sroa.028.0 = phi ptr [ %spec.select3, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit41 ], [ %.050, %bb.o ]
  %i.cr = load ptr, ptr %5, align 8, !tbaa !219   ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.d
  br i1 %i.cs, label %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj8EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @free(ptr noundef %i.cr) #16
  br label %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj8EED2Ev.exit

_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj8EED2Ev.exit: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.ct = load ptr, ptr %4, align 8, !tbaa !219   ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.a
  br i1 %i.cu, label %_ZN4llvh11SmallVectorIPN6hermes5ValueELj8EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj8EED2Ev.exit
  call void @free(ptr noundef %i.ct) #16
  br label %_ZN4llvh11SmallVectorIPN6hermes5ValueELj8EED2Ev.exit

_ZN4llvh11SmallVectorIPN6hermes5ValueELj8EED2Ev.exit: ; preds = %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj8EED2Ev.exit, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.028.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.1, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN6hermes5irgen11ESTreeIRGen12genArrayExprEPNS_6ESTree19ArrayExpressionNodeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = tail call noundef ptr @_ZN6hermes5irgen11ESTreeIRGen20genArrayFromElementsERN4llvh12simple_ilistINS_6ESTree4NodeEJEEE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN6hermes5irgen11ESTreeIRGen13genObjectExprEPNS_6ESTree20ObjectExpressionNodeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.llvh::StringMap", align 8   ; 12 uses
  %3 = alloca %"class.llvh::StringMap.210", align 8 ; 10 uses
  %4 = alloca %"class.llvh::SmallVector.212", align 8 ; 15 uses
  %5 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  %6 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %7 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %9 = alloca %"class.llvh::Twine", align 8       ; 7 uses
  %10 = alloca %"class.llvh::SMRange", align 16   ; 4 uses
  %11 = alloca %"class.llvh::Twine", align 8      ; 7 uses
  %12 = alloca %"class.llvh::Twine", align 8      ; 7 uses
  %13 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %i.c = alloca [2 x ptr], align 8                ; 5 uses
  %i.d = alloca [2 x ptr], align 8                ; 5 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %2, i8 0, i64 20, i1 false)
  store i32 40, ptr %i.e, align 4, !tbaa !305
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %3, i8 0, i64 20, i1 false)
  store i32 24, ptr %i.f, align 4, !tbaa !305
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.g, ptr %4, align 8, !tbaa !219
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  store i32 0, ptr %i.h, align 8, !tbaa !220
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  store i32 32, ptr %i.i, align 4, !tbaa !221
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %.sroa.0312.0387 = load ptr, ptr %i.k, align 8, !tbaa !301 ; 2 uses
  %.not375388 = icmp eq ptr %.sroa.0312.0387, %i.j
  br i1 %.not375388, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 17
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 17
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 17
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %12, i64 17
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 17
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %13, i64 17
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.s
  %.not = icmp eq ptr %.4, null
  br i1 %.not, label %._crit_edge.thread, label %bb.t

bb.b:                                             ; preds = %.lr.ph, %bb.s
  %.sroa.0312.0391 = phi ptr [ %.sroa.0312.0387, %.lr.ph ], [ %.sroa.0312.0, %bb.s ] ; 15 uses
  %.0390 = phi ptr [ null, %.lr.ph ], [ %.4, %bb.s ] ; 7 uses
  %.0117389 = phi i32 [ 0, %.lr.ph ], [ %.2119, %bb.s ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0312.0391, i64 16
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !10
  %i.ag = icmp eq i32 %i.af, 45
  br i1 %i.ag, label %bb.s, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.h, align 8, !tbaa !220
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0312.0391, i64 72
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !308, !range !27, !noundef !28
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ak = add i32 %.0117389, 1
  br label %bb.s

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0312.0391, i64 48
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !310 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !10 ; 3 uses
  %i.ap = icmp ne i32 %i.ao, 36
  %.not.not35.i = icmp eq ptr %i.am, null         ; 3 uses
  %.not.not.i = or i1 %.not.not35.i, %i.ap
  br i1 %.not.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !19 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.ar, align 8, !tbaa !7
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !22
  br label %_ZN6hermes5irgenL19propertyKeyAsStringERN4llvh15SmallVectorImplIcEEPNS_6ESTree4NodeE.exit

bb.g:                                             ; preds = %bb.e
  %i.as = icmp ne i32 %i.ao, 66
  %.not18.not.i = or i1 %.not.not35.i, %i.as
  br i1 %.not18.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !194 ; 2 uses
  %.sroa.0.0.copyload23.i = load ptr, ptr %i.au, align 8, !tbaa !7
  %.sroa.4.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.4.0.copyload25.i = load i64, ptr %.sroa.4.0..sroa_idx24.i, align 8, !tbaa !22
  br label %_ZN6hermes5irgenL19propertyKeyAsStringERN4llvh15SmallVectorImplIcEEPNS_6ESTree4NodeE.exit

bb.i:                                             ; preds = %bb.g
  %i.av = icmp ne i32 %i.ao, 37
  %.not19.i = or i1 %.not.not35.i, %i.av
  br i1 %.not19.i, label %_ZN6hermes5irgenL19propertyKeyAsStringERN4llvh15SmallVectorImplIcEEPNS_6ESTree4NodeE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = load i32, ptr %i.i, align 4, !tbaa !221
  %i.ax = icmp ult i32 %i.aw, 32
  br i1 %i.ax, label %bb.k, label %.lr.ph.preheader.i.i

bb.k:                                             ; preds = %bb.j
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.g, i64 noundef 32, i64 noundef 1) #16
  %.pre.i.i = load i32, ptr %i.h, align 8, !tbaa !220 ; 2 uses
  %.not13.i.i = icmp eq i32 %.pre.i.i, 32
  br i1 %.not13.i.i, label %_ZN4llvh15SmallVectorImplIcE6resizeEm.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.k, %bb.j
  %.pre-phi.i.in41.i = phi i32 [ %.pre.i.i, %bb.k ], [ 0, %bb.j ]
  %.pre-phi.i.i = zext i32 %.pre-phi.i.in41.i to i64 ; 2 uses
  %i.ay = load ptr, ptr %4, align 8, !tbaa !219
  %i.az = getelementptr i8, ptr %i.ay, i64 %.pre-phi.i.i
  %i.ba = sub nsw i64 32, %.pre-phi.i.i
  call void @llvm.memset.p0.i64(ptr align 1 %i.az, i8 0, i64 %i.ba, i1 false), !tbaa !192
  br label %_ZN4llvh15SmallVectorImplIcE6resizeEm.exit.i

_ZN4llvh15SmallVectorImplIcE6resizeEm.exit.i:     ; preds = %bb.k, %.lr.ph.preheader.i.i
  store i32 32, ptr %i.h, align 8, !tbaa !220
  %i.bb = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !29
  %i.bd = load ptr, ptr %4, align 8, !tbaa !219
  %i.be = call noundef i64 @_ZN6hermes14numberToStringEdPcm(double noundef %i.bc, ptr noundef %i.bd, i64 noundef 32) #16
  %i.bf = load ptr, ptr %4, align 8, !tbaa !219
  br label %_ZN6hermes5irgenL19propertyKeyAsStringERN4llvh15SmallVectorImplIcEEPNS_6ESTree4NodeE.exit

_ZN6hermes5irgenL19propertyKeyAsStringERN4llvh15SmallVectorImplIcEEPNS_6ESTree4NodeE.exit: ; preds = %bb.f, %bb.h, %bb.i, %_ZN4llvh15SmallVectorImplIcE6resizeEm.exit.i
  %.sroa.4.2.i = phi i64 [ undef, %bb.i ], [ %i.be, %_ZN4llvh15SmallVectorImplIcE6resizeEm.exit.i ], [ %.sroa.4.0.copyload25.i, %bb.h ], [ %.sroa.4.0.copyload.i, %bb.f ] ; 3 uses
  %.sroa.0.2.i = phi ptr [ undef, %bb.i ], [ %i.bf, %_ZN4llvh15SmallVectorImplIcE6resizeEm.exit.i ], [ %.sroa.0.0.copyload23.i, %bb.h ], [ %.sroa.0.0.copyload.i, %bb.f ] ; 4 uses
  store ptr %.sroa.0.2.i, ptr %5, align 8
  store i64 %.sroa.4.2.i, ptr %i.l, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0312.0391, i64 64 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !311 ; 2 uses
  %.sroa.282.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.sroa.282.0.copyload = load i64, ptr %.sroa.282.0..sroa_idx, align 8, !tbaa !22
  %i.bi = icmp eq i64 %.sroa.282.0.copyload, 4
  br i1 %i.bi, label %_ZNK4llvh9StringRef6equalsES0_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread

_ZNK4llvh9StringRef6equalsES0_.exit:              ; preds = %_ZN6hermes5irgenL19propertyKeyAsStringERN4llvh15SmallVectorImplIcEEPNS_6ESTree4NodeE.exit
  %.sroa.081.0.copyload = load ptr, ptr %i.bh, align 8, !tbaa !7
  %i.bj = load i32, ptr %.sroa.081.0.copyload, align 1
  %i.bk = icmp ne i32 %i.bj, 1953066601
  %i.bl = zext i1 %i.bk to i32
  %i.bm = icmp eq i32 %i.bl, 0
  %i.bn = icmp eq i64 %.sroa.4.2.i, 9
  %or.cond = select i1 %i.bm, i1 %i.bn, i1 false
  br i1 %or.cond, label %_ZNK4llvh9StringRef6equalsES0_.exit138, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread

_ZNK4llvh9StringRef6equalsES0_.exit138:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit
  %i.bo = load i64, ptr %.sroa.0.2.i, align 1
  %i.bp = xor i64 %i.bo, 6876843178028195679
  %i.bq = getelementptr i8, ptr %.sroa.0.2.i, i64 8
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = zext i8 %i.br to i64
  %i.bt = xor i64 %i.bs, 95
  %i.bu = or i64 %i.bp, %i.bt
  %i.bv = icmp ne i64 %i.bu, 0
  %i.bw = zext i1 %i.bv to i32
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %_ZNK4llvh9StringRef6equalsES0_.exit138.thread361, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread

_ZNK4llvh9StringRef6equalsES0_.exit138.thread361: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit138
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0312.0391, i64 73
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !312, !range !27, !noundef !28
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread, label %bb.l

bb.l:                                             ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit138.thread361
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0312.0391, i64 74
  %i.cc = load i8, ptr %i.cb, align 2, !tbaa !313, !range !27, !noundef !28
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not137 = icmp eq ptr %.0390, null
  br i1 %.not137, label %bb.r, label %bb.n

end_hunk_0
begin_hunk_1_@_ZN6hermes5irgen11ESTreeIRGen13genObjectExprEPNS_6ESTree20ObjectExpressionNodeE:bb.a

_ZZN6hermes5irgen11ESTreeIRGen13genObjectExprEPNS_6ESTree20ObjectExpressionNodeEEN13PropertyValue9setGetterEPNS2_22FunctionExpressionNodeE.exit: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit139.thread363, %bb.o
  %i.di = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store ptr %i.dd, ptr %i.di, align 8, !tbaa !320
  br label %_ZN4llvhplERKNS_5TwineES2_.exit

_ZNK4llvh9StringRef6equalsES0_.exit139.thread:    ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit139
  %i.dj = load i16, ptr %.sroa.068.0.copyload, align 1
  %i.dk = xor i16 %i.dj, 25971
  %i.dl = getelementptr i8, ptr %.sroa.068.0.copyload, i64 2
  %i.dm = load i8, ptr %i.dl, align 1
  %i.dn = zext i8 %i.dm to i16
  %i.do = xor i16 %i.dn, 116
  %i.dp = or i16 %i.dk, %i.do
  %i.dq = icmp ne i16 %i.dp, 0
  %i.dr = zext i1 %i.dq to i32
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %_ZNK4llvh9StringRef6equalsES0_.exit140.thread365, label %_ZNK4llvh9StringRef6equalsES0_.exit140.thread

_ZNK4llvh9StringRef6equalsES0_.exit140.thread365: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit139.thread
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0312.0391, i64 56
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !314
  %i.dv = load i8, ptr %i.cq, align 8, !tbaa !315, !range !27, !noundef !28
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %_ZZN6hermes5irgen11ESTreeIRGen13genObjectExprEPNS_6ESTree20ObjectExpressionNodeEEN13PropertyValue9setSetterEPNS2_22FunctionExpressionNodeE.exit, label %bb.p

bb.p:                                             ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit140.thread365
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dx, i8 0, i64 16, i1 false)
  store i8 1, ptr %i.cq, align 8, !tbaa !315
  br label %_ZZN6hermes5irgen11ESTreeIRGen13genObjectExprEPNS_6ESTree20ObjectExpressionNodeEEN13PropertyValue9setSetterEPNS2_22FunctionExpressionNodeE.exit

_ZZN6hermes5irgen11ESTreeIRGen13genObjectExprEPNS_6ESTree20ObjectExpressionNodeEEN13PropertyValue9setSetterEPNS2_22FunctionExpressionNodeE.exit: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit140.thread365, %bb.p
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  store ptr %i.du, ptr %i.dy, align 8, !tbaa !319
  br label %_ZN4llvhplERKNS_5TwineES2_.exit

_ZNK4llvh9StringRef6equalsES0_.exit140.thread:    ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread, %_ZNK4llvh9StringRef6equalsES0_.exit139.thread
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0312.0391, i64 56
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !314
  store i8 0, ptr %i.cq, align 8, !tbaa !315
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store ptr %i.ea, ptr %i.eb, align 8, !tbaa !318
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ec, i8 0, i64 16, i1 false)
  br label %_ZN4llvhplERKNS_5TwineES2_.exit

_ZN4llvhplERKNS_5TwineES2_.exit:                  ; preds = %_ZZN6hermes5irgen11ESTreeIRGen13genObjectExprEPNS_6ESTree20ObjectExpressionNodeEEN13PropertyValue9setGetterEPNS2_22FunctionExpressionNodeE.exit, %_ZNK4llvh9StringRef6equalsES0_.exit140.thread, %_ZZN6hermes5irgen11ESTreeIRGen13genObjectExprEPNS_6ESTree20ObjectExpressionNodeEEN13PropertyValue9setSetterEPNS2_22FunctionExpressionNodeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  %i.ed = load ptr, ptr %i.bg, align 8, !tbaa !311
  store ptr %i.ed, ptr %9, align 8, !tbaa !192, !alias.scope !321
  store ptr %5, ptr %i.r, align 8, !tbaa !192, !alias.scope !321
  store i8 5, ptr %i.s, align 8, !tbaa !193, !alias.scope !321
  store i8 5, ptr %i.t, align 1, !tbaa !189, !alias.scope !321
  call void @_ZNK4llvh5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(18) %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  %i.ee = load ptr, ptr %8, align 8, !tbaa !240
  %i.ef = load i64, ptr %i.u, align 8, !tbaa !238
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.0312.0391, i64 24 ; 2 uses
  %i.eh = load <2 x ptr>, ptr %i.eg, align 8, !tbaa !7
  store <2 x ptr> %i.eh, ptr %10, align 16
  %i.ei = call { ptr, i8 } @_ZN4llvh9StringMapINS_7SMRangeENS_15MallocAllocatorEE11try_emplaceIJS1_EEESt4pairINS_17StringMapIteratorIS1_EEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %3, ptr %i.ee, i64 %i.ef, ptr noundef nonnull align 8 dereferenceable(16) %10) ; 2 uses
  %.fca.1.extract = extractvalue { ptr, i8 } %i.ei, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  %i.ej = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.ej, label %bb.q, label %_ZN4llvhplERKNS_5TwineES2_.exit190

_ZN4llvhplERKNS_5TwineES2_.exit190:               ; preds = %_ZN4llvhplERKNS_5TwineES2_.exit
  %.sroa.2.0..sroa_idx.i168 = getelementptr inbounds nuw i8, ptr %.sroa.0312.0391, i64 32
  %.fca.0.extract = extractvalue { ptr, i8 } %i.ei, 0
  %i.ek = load ptr, ptr %i.m, align 8, !tbaa !123
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 40
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !124
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 160
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !127, !nonnull !28, !align !188
  %.sroa.0.0.copyload.i172 = load ptr, ptr %i.eg, align 8, !tbaa !7 ; 2 uses
  %.sroa.2.0.copyload.i174 = load ptr, ptr %.sroa.2.0..sroa_idx.i168, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  store ptr @.str.12, ptr %12, align 8, !tbaa !192, !alias.scope !326
  store ptr %5, ptr %i.v, align 8, !tbaa !192, !alias.scope !326
  store i8 3, ptr %i.w, align 8, !tbaa !193, !alias.scope !326
  store i8 5, ptr %i.x, align 1, !tbaa !189, !alias.scope !326
  store ptr %12, ptr %11, align 8, !tbaa !192, !alias.scope !331
  store ptr @.str.13, ptr %i.aa, align 8, !tbaa !192, !alias.scope !331
  store i8 2, ptr %i.y, align 8, !tbaa !193, !alias.scope !331
  store i8 3, ptr %i.z, align 1, !tbaa !189, !alias.scope !331
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocENS2_7SMRangeERKNS2_5TwineENS_7WarningENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.eo, i32 noundef 1, ptr %.sroa.0.0.copyload.i172, ptr %.sroa.0.0.copyload.i172, ptr %.sroa.2.0.copyload.i174, ptr noundef nonnull align 8 dereferenceable(18) %11, i32 noundef 4, i32 noundef 0) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  %i.ep = load ptr, ptr %i.m, align 8, !tbaa !123
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 40
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !124
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 160
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !127, !nonnull !28, !align !188
  %i.eu = load ptr, ptr %.fca.0.extract, align 8, !tbaa !336 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %.sroa.060.0.copyload = load ptr, ptr %i.ev, align 8, !tbaa !7
  %.sroa.261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %.sroa.261.0.copyload = load ptr, ptr %.sroa.261.0..sroa_idx, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  store i8 1, ptr %i.ac, align 1, !tbaa !189
  store ptr @.str.9, ptr %13, align 8, !tbaa !192
  store i8 3, ptr %i.ab, align 8, !tbaa !193
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh7SMRangeERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.et, i32 noundef 3, ptr %.sroa.060.0.copyload, ptr %.sroa.261.0.copyload, ptr noundef nonnull align 8 dereferenceable(18) %13, i32 noundef 0) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  br label %bb.q

bb.q:                                             ; preds = %_ZN4llvhplERKNS_5TwineES2_.exit190, %_ZN4llvhplERKNS_5TwineES2_.exit
  %i.ew = load ptr, ptr %8, align 8, !tbaa !240   ; 2 uses
  %i.ex = icmp eq ptr %i.ew, %i.ad
  br i1 %i.ex, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  %i.ey = load i64, ptr %i.ad, align 8, !tbaa !192
  %i.ez = add i64 %i.ey, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.ez) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br label %bb.r

bb.r:                                             ; preds = %bb.n, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.2 = phi ptr [ %.0390, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.0390, %bb.n ], [ %.sroa.0312.0391, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.s

bb.s:                                             ; preds = %bb.d, %bb.r, %bb.b
  %.2119 = phi i32 [ %.0117389, %bb.b ], [ %i.ak, %bb.d ], [ %.0117389, %bb.r ] ; 4 uses
  %.4 = phi ptr [ %.0390, %bb.b ], [ %.0390, %bb.d ], [ %.2, %bb.r ] ; 7 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.0312.0391, i64 8
  %.sroa.0312.0 = load ptr, ptr %i.fa, align 8, !tbaa !301 ; 2 uses
  %.not375 = icmp eq ptr %.sroa.0312.0, %i.j
  br i1 %.not375, label %._crit_edge, label %bb.b

bb.t:                                             ; preds = %._crit_edge
  %i.fb = load ptr, ptr %i.k, align 8, !tbaa !301
  %i.fc = icmp eq ptr %i.fb, %.4
  br i1 %i.fc, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fd = getelementptr inbounds nuw i8, ptr %.4, i64 56
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !314
  %i.ff = call noundef zeroext i1 @_ZN6hermes5irgen14isConstantExprEPNS_6ESTree4NodeE(ptr noundef %i.fe) #16
  br i1 %i.ff, label %bb.v, label %._crit_edge.thread

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.fg = getelementptr inbounds nuw i8, ptr %.4, i64 56
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !314
  %i.fi = call noundef ptr @_ZN6hermes5irgen11ESTreeIRGen13genExpressionEPNS_6ESTree4NodeENS_10IdentifierE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %i.fh, ptr null)
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %bb.v, %bb.u, %._crit_edge
  %.0.lcssa436 = phi ptr [ %.4, %bb.v ], [ %.4, %bb.u ], [ null, %._crit_edge ], [ null, %bb.a ]
  %.0117.lcssa435 = phi i32 [ %.2119, %bb.v ], [ %.2119, %bb.u ], [ %.2119, %._crit_edge ], [ 0, %bb.a ]
  %.0125 = phi ptr [ %i.fi, %bb.v ], [ null, %bb.u ], [ null, %._crit_edge ], [ null, %bb.a ] ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 23 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !338
  %i.fm = add i32 %i.fl, %.0117.lcssa435
  %i.fn = call noundef ptr @_ZN6hermes9IRBuilder21createAllocObjectInstEjPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(40) %i.fj, i32 noundef %i.fm, ptr noundef %.0125) #16 ; 4 uses
  %.sroa.0294.0394 = load ptr, ptr %i.k, align 8, !tbaa !301 ; 2 uses
  %.not376395 = icmp eq ptr %.sroa.0294.0394, %i.j
  br i1 %.not376395, label %._crit_edge401, label %.lr.ph400

.lr.ph400:                                        ; preds = %._crit_edge.thread
  %i.fo = icmp eq ptr %i.fn, null
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %spec.select = select i1 %i.fo, ptr null, ptr %i.fp ; 12 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.fr = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 5 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 5 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %.not136 = icmp eq ptr %.0125, null
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.ad

._crit_edge401:                                   ; preds = %"_ZZN6hermes5irgen11ESTreeIRGen13genObjectExprEPNS_6ESTree20ObjectExpressionNodeEENK3$_1clEv.exit", %._crit_edge.thread
  %i.gb = load ptr, ptr %4, align 8, !tbaa !219   ; 2 uses
  %i.gc = icmp eq ptr %i.gb, %i.g
  br i1 %i.gc, label %_ZN4llvh11SmallVectorIcLj32EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %._crit_edge401
  call void @free(ptr noundef %i.gb) #16
  br label %_ZN4llvh11SmallVectorIcLj32EED2Ev.exit

_ZN4llvh11SmallVectorIcLj32EED2Ev.exit:           ; preds = %._crit_edge401, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.gd = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !338
  %i.gf = icmp eq i32 %i.ge, 0
  br i1 %i.gf, label %_ZN4llvh11SmallVectorIcLj32EED2Ev.exit._ZN4llvh9StringMapINS_7SMRangeENS_15MallocAllocatorEED2Ev.exit_crit_edge, label %bb.x

_ZN4llvh11SmallVectorIcLj32EED2Ev.exit._ZN4llvh9StringMapINS_7SMRangeENS_15MallocAllocatorEED2Ev.exit_crit_edge: ; preds = %_ZN4llvh11SmallVectorIcLj32EED2Ev.exit
  %.pre404 = load ptr, ptr %3, align 8, !tbaa !339
  br label %_ZN4llvh9StringMapINS_7SMRangeENS_15MallocAllocatorEED2Ev.exit

bb.x:                                             ; preds = %_ZN4llvh11SmallVectorIcLj32EED2Ev.exit
  %i.gg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !340 ; 2 uses
  %.not10.i = icmp eq i32 %i.gh, 0
  %.pre405 = load ptr, ptr %3, align 8, !tbaa !339 ; 2 uses
  br i1 %.not10.i, label %_ZN4llvh9StringMapINS_7SMRangeENS_15MallocAllocatorEED2Ev.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.x
  %i.gi = zext i32 %i.gh to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.z, %.lr.ph.preheader.i
  %18 = phi ptr [ %.pre405, %.lr.ph.preheader.i ], [ %19, %bb.z ] ; 3 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.z ] ; 2 uses
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %18, i64 %indvars.iv.i
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !336 ; 2 uses
  %magicptr.i = ptrtoint ptr %i.gk to i64
  switch i64 %magicptr.i, label %bb.y [
    i64 0, label %bb.z
    i64 -8, label %bb.z
  ]

bb.y:                                             ; preds = %.lr.ph.i
  call void @free(ptr noundef nonnull align 8 dereferenceable(24) %i.gk) #16
  %.pre = load ptr, ptr %3, align 8, !tbaa !339
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph.i, %.lr.ph.i
  %19 = phi ptr [ %.pre, %bb.y ], [ %18, %.lr.ph.i ], [ %18, %.lr.ph.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i191 = icmp eq i64 %indvars.iv.next.i, %i.gi
  br i1 %.not.i191, label %_ZN4llvh9StringMapINS_7SMRangeENS_15MallocAllocatorEED2Ev.exit, label %.lr.ph.i, !llvm.loop !341

_ZN4llvh9StringMapINS_7SMRangeENS_15MallocAllocatorEED2Ev.exit: ; preds = %bb.z, %_ZN4llvh11SmallVectorIcLj32EED2Ev.exit._ZN4llvh9StringMapINS_7SMRangeENS_15MallocAllocatorEED2Ev.exit_crit_edge, %bb.x
  %20 = phi ptr [ %.pre404, %_ZN4llvh11SmallVectorIcLj32EED2Ev.exit._ZN4llvh9StringMapINS_7SMRangeENS_15MallocAllocatorEED2Ev.exit_crit_edge ], [ %.pre405, %bb.x ], [ %19, %bb.z ]
  call void @free(ptr noundef %20) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %i.gl = load i32, ptr %i.fk, align 4, !tbaa !338
  %i.gm = icmp eq i32 %i.gl, 0
  br i1 %i.gm, label %_ZN4llvh9StringMapINS_7SMRangeENS_15MallocAllocatorEED2Ev.exit._ZN4llvh9StringMapIZN6hermes5irgen11ESTreeIRGen13genObjectExprEPNS1_6ESTree20ObjectExpressionNodeEE13PropertyValueNS_15MallocAllocatorEED2Ev.exit_crit_edge, label %bb.aa

_ZN4llvh9StringMapINS_7SMRangeENS_15MallocAllocatorEED2Ev.exit._ZN4llvh9StringMapIZN6hermes5irgen11ESTreeIRGen13genObjectExprEPNS1_6ESTree20ObjectExpressionNodeEE13PropertyValueNS_15MallocAllocatorEED2Ev.exit_crit_edge: ; preds = %_ZN4llvh9StringMapINS_7SMRangeENS_15MallocAllocatorEED2Ev.exit
  %.pre408 = load ptr, ptr %2, align 8, !tbaa !339
  br label %_ZN4llvh9StringMapIZN6hermes5irgen11ESTreeIRGen13genObjectExprEPNS1_6ESTree20ObjectExpressionNodeEE13PropertyValueNS_15MallocAllocatorEED2Ev.exit

bb.aa:                                            ; preds = %_ZN4llvh9StringMapINS_7SMRangeENS_15MallocAllocatorEED2Ev.exit
  %i.gn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !340 ; 2 uses
  %.not10.i192 = icmp eq i32 %i.go, 0
  %.pre409 = load ptr, ptr %2, align 8, !tbaa !339 ; 2 uses
  br i1 %.not10.i192, label %_ZN4llvh9StringMapIZN6hermes5irgen11ESTreeIRGen13genObjectExprEPNS1_6ESTree20ObjectExpressionNodeEE13PropertyValueNS_15MallocAllocatorEED2Ev.exit, label %.lr.ph.preheader.i193

.lr.ph.preheader.i193:                            ; preds = %bb.aa
  %i.gp = zext i32 %i.go to i64
  br label %.lr.ph.i194

.lr.ph.i194:                                      ; preds = %bb.ac, %.lr.ph.preheader.i193
  %21 = phi ptr [ %.pre409, %.lr.ph.preheader.i193 ], [ %22, %bb.ac ] ; 3 uses
  %indvars.iv.i195 = phi i64 [ 0, %.lr.ph.preheader.i193 ], [ %indvars.iv.next.i197, %bb.ac ] ; 2 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %21, i64 %indvars.iv.i195
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !336 ; 2 uses
  %magicptr.i196 = ptrtoint ptr %i.gr to i64
  switch i64 %magicptr.i196, label %bb.ab [
    i64 0, label %bb.ac
    i64 -8, label %bb.ac
  ]

bb.ab:                                            ; preds = %.lr.ph.i194
  call void @free(ptr noundef nonnull align 8 dereferenceable(40) %i.gr) #16
  %.pre406 = load ptr, ptr %2, align 8, !tbaa !339
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph.i194, %.lr.ph.i194
  %22 = phi ptr [ %.pre406, %bb.ab ], [ %21, %.lr.ph.i194 ], [ %21, %.lr.ph.i194 ] ; 2 uses
  %indvars.iv.next.i197 = add nuw nsw i64 %indvars.iv.i195, 1 ; 2 uses
  %.not.i198 = icmp eq i64 %indvars.iv.next.i197, %i.gp
  br i1 %.not.i198, label %_ZN4llvh9StringMapIZN6hermes5irgen11ESTreeIRGen13genObjectExprEPNS1_6ESTree20ObjectExpressionNodeEE13PropertyValueNS_15MallocAllocatorEED2Ev.exit, label %.lr.ph.i194, !llvm.loop !342

_ZN4llvh9StringMapIZN6hermes5irgen11ESTreeIRGen13genObjectExprEPNS1_6ESTree20ObjectExpressionNodeEE13PropertyValueNS_15MallocAllocatorEED2Ev.exit: ; preds = %bb.ac, %_ZN4llvh9StringMapINS_7SMRangeENS_15MallocAllocatorEED2Ev.exit._ZN4llvh9StringMapIZN6hermes5irgen11ESTreeIRGen13genObjectExprEPNS1_6ESTree20ObjectExpressionNodeEE13PropertyValueNS_15MallocAllocatorEED2Ev.exit_crit_edge, %bb.aa
  %23 = phi ptr [ %.pre408, %_ZN4llvh9StringMapINS_7SMRangeENS_15MallocAllocatorEED2Ev.exit._ZN4llvh9StringMapIZN6hermes5irgen11ESTreeIRGen13genObjectExprEPNS1_6ESTree20ObjectExpressionNodeEE13PropertyValueNS_15MallocAllocatorEED2Ev.exit_crit_edge ], [ %.pre409, %bb.aa ], [ %22, %bb.ac ]
  %i.gs = icmp eq ptr %i.fn, null
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.gu = select i1 %i.gs, ptr null, ptr %i.gt
  call void @free(ptr noundef %23) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret ptr %i.gu

bb.ad:                                            ; preds = %.lr.ph400, %"_ZZN6hermes5irgen11ESTreeIRGen13genObjectExprEPNS_6ESTree20ObjectExpressionNodeEENK3$_1clEv.exit"
  %.sroa.0294.0397 = phi ptr [ %.sroa.0294.0394, %.lr.ph400 ], [ %.sroa.0294.0, %"_ZZN6hermes5irgen11ESTreeIRGen13genObjectExprEPNS_6ESTree20ObjectExpressionNodeEENK3$_1clEv.exit" ] ; 12 uses
  %.0358396 = phi i8 [ 0, %.lr.ph400 ], [ %.1, %"_ZZN6hermes5irgen11ESTreeIRGen13genObjectExprEPNS_6ESTree20ObjectExpressionNodeEENK3$_1clEv.exit" ] ; 12 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.0294.0397, i64 16
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !10
  %i.gx = icmp ne i32 %i.gw, 45
  %.not133377 = icmp eq ptr %.sroa.0294.0397, null
  %.not133 = or i1 %.not133377, %i.gx
  br i1 %.not133, label %.critedge, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  store ptr %spec.select, ptr %i.c, align 8, !tbaa !235
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.0294.0397, i64 48
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !343
  %i.ha = call noundef ptr @_ZN6hermes5irgen11ESTreeIRGen13genExpressionEPNS_6ESTree4NodeENS_10IdentifierE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %i.gz, ptr null)
  store ptr %i.ha, ptr %i.fq, align 8, !tbaa !235
  %i.hb = call noundef ptr @_ZN6hermes5irgen11ESTreeIRGen14genBuiltinCallENS_13BuiltinMethod4EnumEN4llvh8ArrayRefIPNS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(200) %0, i8 noundef zeroext 44, ptr nonnull %i.c, i64 2) #16 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %"_ZZN6hermes5irgen11ESTreeIRGen13genObjectExprEPNS_6ESTree20ObjectExpressionNodeEENK3$_1clEv.exit"

.critedge:                                        ; preds = %bb.ad
  store i32 0, ptr %i.h, align 8, !tbaa !220
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.0294.0397, i64 72
  %i.hd = load i8, ptr %i.hc, align 8, !tbaa !308, !range !27, !noundef !28
  %i.he = trunc nuw i8 %i.hd to i1
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.0294.0397, i64 48 ; 2 uses
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !310 ; 6 uses
  br i1 %i.he, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.critedge
  %i.hh = call noundef ptr @_ZN6hermes5irgen11ESTreeIRGen13genExpressionEPNS_6ESTree4NodeENS_10IdentifierE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %i.hg, ptr null) ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.0294.0397, i64 56
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !314
  %i.hk = call noundef ptr @_ZN6hermes5irgen11ESTreeIRGen13genExpressionEPNS_6ESTree4NodeENS_10IdentifierE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %i.hj, ptr null) ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.0294.0397, i64 64
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !311 ; 2 uses
  %.sroa.031.0.copyload = load ptr, ptr %i.hm, align 8, !tbaa !7 ; 4 uses
  %.sroa.232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %.sroa.232.0.copyload = load i64, ptr %.sroa.232.0..sroa_idx, align 8, !tbaa !22
  %cond385 = icmp eq i64 %.sroa.232.0.copyload, 3
  br i1 %cond385, label %_ZNK4llvh9StringRef6equalsES0_.exit141, label %_ZNK4llvh9StringRef6equalsES0_.exit142.thread

_ZNK4llvh9StringRef6equalsES0_.exit141:           ; preds = %bb.af
  %i.hn = load i16, ptr %.sroa.031.0.copyload, align 1
  %i.ho = xor i16 %i.hn, 25959
  %i.hp = getelementptr i8, ptr %.sroa.031.0.copyload, i64 2
  %i.hq = load i8, ptr %i.hp, align 1
  %i.hr = zext i8 %i.hq to i16
  %i.hs = xor i16 %i.hr, 116
  %i.ht = or i16 %i.ho, %i.hs
  %i.hu = icmp ne i16 %i.ht, 0
  %i.hv = zext i1 %i.hu to i32
  %i.hw = icmp eq i32 %i.hv, 0
  br i1 %i.hw, label %_ZNK4llvh9StringRef6equalsES0_.exit141.thread367, label %_ZNK4llvh9StringRef6equalsES0_.exit141.thread

_ZNK4llvh9StringRef6equalsES0_.exit141.thread367: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit141
  %i.hx = call noundef ptr @_ZN6hermes9IRBuilder19getLiteralUndefinedEv(ptr noundef nonnull align 8 dereferenceable(40) %i.fj) #16
  %i.hy = call noundef ptr @_ZN6hermes9IRBuilder27createStoreGetterSetterInstEPNS_5ValueES2_S2_S2_NS0_14PropEnumerableE(ptr noundef nonnull align 8 dereferenceable(40) %i.fj, ptr noundef %i.hk, ptr noundef %i.hx, ptr noundef %spec.select, ptr noundef %i.hh, i32 noundef 1) #16 ; 0 uses
  br label %"_ZZN6hermes5irgen11ESTreeIRGen13genObjectExprEPNS_6ESTree20ObjectExpressionNodeEENK3$_1clEv.exit"

_ZNK4llvh9StringRef6equalsES0_.exit141.thread:    ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit141
  %i.hz = load i16, ptr %.sroa.031.0.copyload, align 1
  %i.ia = xor i16 %i.hz, 25971
  %i.ib = getelementptr i8, ptr %.sroa.031.0.copyload, i64 2
  %i.ic = load i8, ptr %i.ib, align 1
  %i.id = zext i8 %i.ic to i16
  %i.ie = xor i16 %i.id, 116
  %i.if = or i16 %i.ia, %i.ie
  %i.ig = icmp ne i16 %i.if, 0
  %i.ih = zext i1 %i.ig to i32
  %i.ii = icmp eq i32 %i.ih, 0
  br i1 %i.ii, label %_ZNK4llvh9StringRef6equalsES0_.exit142.thread369, label %_ZNK4llvh9StringRef6equalsES0_.exit142.thread

_ZNK4llvh9StringRef6equalsES0_.exit142.thread369: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit141.thread
  %i.ij = call noundef ptr @_ZN6hermes9IRBuilder19getLiteralUndefinedEv(ptr noundef nonnull align 8 dereferenceable(40) %i.fj) #16
  %i.ik = call noundef ptr @_ZN6hermes9IRBuilder27createStoreGetterSetterInstEPNS_5ValueES2_S2_S2_NS0_14PropEnumerableE(ptr noundef nonnull align 8 dereferenceable(40) %i.fj, ptr noundef %i.ij, ptr noundef %i.hk, ptr noundef %spec.select, ptr noundef %i.hh, i32 noundef 1) #16 ; 0 uses
  br label %"_ZZN6hermes5irgen11ESTreeIRGen13genObjectExprEPNS_6ESTree20ObjectExpressionNodeEENK3$_1clEv.exit"

_ZNK4llvh9StringRef6equalsES0_.exit142.thread:    ; preds = %bb.af, %_ZNK4llvh9StringRef6equalsES0_.exit141.thread
  %i.il = call noundef ptr @_ZN6hermes9IRBuilder26createStoreOwnPropertyInstEPNS_5ValueES2_S2_NS0_14PropEnumerableE(ptr noundef nonnull align 8 dereferenceable(40) %i.fj, ptr noundef %i.hk, ptr noundef %spec.select, ptr noundef %i.hh, i32 noundef 1) #16 ; 0 uses
  br label %"_ZZN6hermes5irgen11ESTreeIRGen13genObjectExprEPNS_6ESTree20ObjectExpressionNodeEENK3$_1clEv.exit"

bb.ag:                                            ; preds = %.critedge
  %i.im = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.in = load i32, ptr %i.im, align 8, !tbaa !10 ; 3 uses
  %i.io = icmp ne i32 %i.in, 36
  %.not.not35.i200 = icmp eq ptr %i.hg, null      ; 3 uses
  %.not.not.i201 = or i1 %.not.not35.i200, %i.io
  br i1 %.not.not.i201, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hg, i64 48
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !19 ; 2 uses
  %.sroa.0.0.copyload.i202 = load ptr, ptr %i.iq, align 8, !tbaa !7
  %.sroa.4.0..sroa_idx.i203 = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %.sroa.4.0.copyload.i204 = load i64, ptr %.sroa.4.0..sroa_idx.i203, align 8, !tbaa !22
  br label %_ZN6hermes5irgenL19propertyKeyAsStringERN4llvh15SmallVectorImplIcEEPNS_6ESTree4NodeE.exit222

bb.ai:                                            ; preds = %bb.ag
  %i.ir = icmp ne i32 %i.in, 66
  %.not18.not.i209 = or i1 %.not.not35.i200, %i.ir
  br i1 %.not18.not.i209, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.is = getelementptr inbounds nuw i8, ptr %i.hg, i64 48
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !194 ; 2 uses
  %.sroa.0.0.copyload23.i210 = load ptr, ptr %i.it, align 8, !tbaa !7
  %.sroa.4.0..sroa_idx24.i211 = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %.sroa.4.0.copyload25.i212 = load i64, ptr %.sroa.4.0..sroa_idx24.i211, align 8, !tbaa !22
  br label %_ZN6hermes5irgenL19propertyKeyAsStringERN4llvh15SmallVectorImplIcEEPNS_6ESTree4NodeE.exit222

bb.ak:                                            ; preds = %bb.ai
  %i.iu = icmp ne i32 %i.in, 37
  %.not19.i213 = or i1 %.not.not35.i200, %i.iu
  br i1 %.not19.i213, label %_ZN6hermes5irgenL19propertyKeyAsStringERN4llvh15SmallVectorImplIcEEPNS_6ESTree4NodeE.exit222, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.iv = load i32, ptr %i.i, align 4, !tbaa !221
  %i.iw = icmp ult i32 %i.iv, 32
  br i1 %i.iw, label %bb.am, label %.lr.ph.preheader.i.i215

bb.am:                                            ; preds = %bb.al
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.g, i64 noundef 32, i64 noundef 1) #16
  %.pre.i.i220 = load i32, ptr %i.h, align 8, !tbaa !220 ; 2 uses
  %.not13.i.i221 = icmp eq i32 %.pre.i.i220, 32
  br i1 %.not13.i.i221, label %_ZN4llvh15SmallVectorImplIcE6resizeEm.exit.i219, label %.lr.ph.preheader.i.i215

.lr.ph.preheader.i.i215:                          ; preds = %bb.am, %bb.al
  %.pre-phi.i.in41.i216 = phi i32 [ %.pre.i.i220, %bb.am ], [ 0, %bb.al ]
  %.pre-phi.i.i217 = zext i32 %.pre-phi.i.in41.i216 to i64 ; 2 uses
  %i.ix = load ptr, ptr %4, align 8, !tbaa !219
  %i.iy = getelementptr i8, ptr %i.ix, i64 %.pre-phi.i.i217
  %i.iz = sub nsw i64 32, %.pre-phi.i.i217
  call void @llvm.memset.p0.i64(ptr align 1 %i.iy, i8 0, i64 %i.iz, i1 false), !tbaa !192
  br label %_ZN4llvh15SmallVectorImplIcE6resizeEm.exit.i219

_ZN4llvh15SmallVectorImplIcE6resizeEm.exit.i219:  ; preds = %bb.am, %.lr.ph.preheader.i.i215
  store i32 32, ptr %i.h, align 8, !tbaa !220
  %i.ja = getelementptr inbounds nuw i8, ptr %i.hg, i64 48
  %i.jb = load double, ptr %i.ja, align 8, !tbaa !29
  %i.jc = load ptr, ptr %4, align 8, !tbaa !219
  %i.jd = call noundef i64 @_ZN6hermes14numberToStringEdPcm(double noundef %i.jb, ptr noundef %i.jc, i64 noundef 32) #16
  %i.je = load ptr, ptr %4, align 8, !tbaa !219
  br label %_ZN6hermes5irgenL19propertyKeyAsStringERN4llvh15SmallVectorImplIcEEPNS_6ESTree4NodeE.exit222

_ZN6hermes5irgenL19propertyKeyAsStringERN4llvh15SmallVectorImplIcEEPNS_6ESTree4NodeE.exit222: ; preds = %bb.ah, %bb.aj, %bb.ak, %_ZN4llvh15SmallVectorImplIcE6resizeEm.exit.i219
  %.sroa.4.2.i205 = phi i64 [ undef, %bb.ak ], [ %i.jd, %_ZN4llvh15SmallVectorImplIcE6resizeEm.exit.i219 ], [ %.sroa.4.0.copyload25.i212, %bb.aj ], [ %.sroa.4.0.copyload.i204, %bb.ah ] ; 12 uses
  %.sroa.0.2.i206 = phi ptr [ undef, %bb.ak ], [ %i.je, %_ZN4llvh15SmallVectorImplIcE6resizeEm.exit.i219 ], [ %.sroa.0.0.copyload23.i210, %bb.aj ], [ %.sroa.0.0.copyload.i202, %bb.ah ] ; 10 uses
  %i.jf = icmp eq ptr %.sroa.0294.0397, %.0.lcssa436
  br i1 %i.jf, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %_ZN6hermes5irgenL19propertyKeyAsStringERN4llvh15SmallVectorImplIcEEPNS_6ESTree4NodeE.exit222
  br i1 %.not136, label %bb.ao, label %"_ZZN6hermes5irgen11ESTreeIRGen13genObjectExprEPNS_6ESTree20ObjectExpressionNodeEENK3$_1clEv.exit"

bb.ao:                                            ; preds = %bb.an
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.0294.0397, i64 56
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !314
  %i.ji = call noundef ptr @_ZN6hermes5irgen11ESTreeIRGen13genExpressionEPNS_6ESTree4NodeENS_10IdentifierE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %i.jh, ptr null)
  %i.jj = call noundef ptr @_ZN6hermes9IRBuilder17getInsertionBlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.fj) #16
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.fz, align 8, !tbaa !7
  store i64 0, ptr %i.fz, align 8, !tbaa !7
  %i.jk = load ptr, ptr %i.hf, align 8, !tbaa !310
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 40
  %.sroa.0.0.copyload.i223 = load ptr, ptr %i.jl, align 8, !tbaa !7
  store ptr %.sroa.0.0.copyload.i223, ptr %i.fz, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  store ptr %spec.select, ptr %i.d, align 8, !tbaa !235
  store ptr %i.ji, ptr %i.ga, align 8, !tbaa !235
  %i.jm = call noundef ptr @_ZN6hermes5irgen11ESTreeIRGen14genBuiltinCallENS_13BuiltinMethod4EnumEN4llvh8ArrayRefIPNS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(200) %0, i8 noundef zeroext 37, ptr nonnull %i.d, i64 2) #16 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @_ZN6hermes9IRBuilder17setInsertionBlockEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(40) %i.fj, ptr noundef %i.jj) #16
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.fz, align 8, !tbaa !7
  br label %"_ZZN6hermes5irgen11ESTreeIRGen13genObjectExprEPNS_6ESTree20ObjectExpressionNodeEENK3$_1clEv.exit"

bb.ap:                                            ; preds = %_ZN6hermes5irgenL19propertyKeyAsStringERN4llvh15SmallVectorImplIcEEPNS_6ESTree4NodeE.exit222
  %i.jn = call fastcc noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvh9StringMapIZN6hermes5irgen11ESTreeIRGen13genObjectExprEPNS1_6ESTree20ObjectExpressionNodeEE13PropertyValueNS_15MallocAllocatorEEixENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(25) %2, ptr %.sroa.0.2.i206, i64 %.sroa.4.2.i205) ; 7 uses
  %i.jo = call noundef ptr @_ZN6hermes9IRBuilder16getLiteralStringEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(40) %i.fj, ptr %.sroa.0.2.i206, i64 %.sroa.4.2.i205) #16 ; 7 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.sroa.0294.0397, i64 64
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !311 ; 2 uses
  %.sroa.021.0.copyload = load ptr, ptr %i.jq, align 8, !tbaa !7 ; 4 uses
  %.sroa.222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %.sroa.222.0.copyload = load i64, ptr %.sroa.222.0..sroa_idx, align 8, !tbaa !22
  %cond386 = icmp eq i64 %.sroa.222.0.copyload, 3
  br i1 %cond386, label %_ZNK4llvh9StringRef6equalsES0_.exit143, label %_ZNK4llvh9StringRef6equalsES0_.exit144.thread

_ZNK4llvh9StringRef6equalsES0_.exit143:           ; preds = %bb.ap
  %i.jr = load i16, ptr %.sroa.021.0.copyload, align 1
  %i.js = xor i16 %i.jr, 25959
  %i.jt = getelementptr i8, ptr %.sroa.021.0.copyload, i64 2
  %i.ju = load i8, ptr %i.jt, align 1
  %i.jv = zext i8 %i.ju to i16
  %i.jw = xor i16 %i.jv, 116
  %i.jx = or i16 %i.js, %i.jw
  %i.jy = icmp ne i16 %i.jx, 0
  %i.jz = zext i1 %i.jy to i32
  %i.ka = icmp eq i32 %i.jz, 0
end_hunk_1
begin_hunk_2_@_ZN6hermes5irgen11ESTreeIRGen8emitCallEPNS_6ESTree22CallExpressionLikeNodeEPNS_5ValueES6_:bb.a
  br i1 %i.cs, label %"_ZZN6hermes5irgenL20getTextifiedCallExprERNS_9IRBuilderEPNS_6ESTree4NodeEENK3$_0clERPKc.exit65.loopexit.i", label %.preheader.i54.i, !llvm.loop !437

bb.o:                                             ; preds = %.critedge.i58.i
  %i.ct = icmp eq i8 %i.co, 32
  %or.cond.i59.i = and i1 %.0.shrunk3.i55.i, %i.ct
  br i1 %or.cond.i59.i, label %.critedge3.backedge.i62.i, label %"_ZZN6hermes5irgenL20getTextifiedCallExprERNS_9IRBuilderEPNS_6ESTree4NodeEENK3$_0clERPKc.exit65.loopexit.i"

"_ZZN6hermes5irgenL20getTextifiedCallExprERNS_9IRBuilderEPNS_6ESTree4NodeEENK3$_0clERPKc.exit65.loopexit.i": ; preds = %bb.o, %.critedge3.backedge.i62.i
  br i1 %.lcssa109, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !451

.loopexit.i:                                      ; preds = %"_ZZN6hermes5irgenL20getTextifiedCallExprERNS_9IRBuilderEPNS_6ESTree4NodeEENK3$_0clERPKc.exit65.loopexit.i", %_ZN4llvh11raw_ostreamlsEPKc.exit.i, %._crit_edge.i
  %.1109.i = phi ptr [ %.0105.lcssa.i, %._crit_edge.i ], [ %.0105.lcssa.i, %_ZN4llvh11raw_ostreamlsEPKc.exit.i ], [ %.4112.i, %"_ZZN6hermes5irgenL20getTextifiedCallExprERNS_9IRBuilderEPNS_6ESTree4NodeEENK3$_0clERPKc.exit65.loopexit.i" ] ; 2 uses
  %i.cu = icmp ult ptr %.1109.i, %.sroa.2.0.copyload.i.i
  br i1 %i.cu, label %.preheader.i67.preheader.lr.ph.i, label %._crit_edge153.i

.preheader.i67.preheader.lr.ph.i:                 ; preds = %.loopexit.i
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  br label %.preheader.i67.i

.preheader.i67.i:                                 ; preds = %.preheader.i67.i.backedge, %.preheader.i67.preheader.lr.ph.i
  %.0.shrunk3.i68.i = phi i1 [ false, %.preheader.i67.preheader.lr.ph.i ], [ %.0.shrunk3.i68.i.be, %.preheader.i67.i.backedge ] ; 2 uses
  %i.cx = phi ptr [ %.1109.i, %.preheader.i67.preheader.lr.ph.i ], [ %storemerge.i70.i.lcssa, %.preheader.i67.i.backedge ] ; 5 uses
  %storemerge.i70.i147 = getelementptr inbounds nuw i8, ptr %i.cx, i64 1 ; 3 uses
  %i.cy = icmp ult ptr %storemerge.i70.i147, %.sroa.2.0.copyload.i.i
  br i1 %i.cy, label %.lr.ph149, label %.critedge.i71.i

bb.p:                                             ; preds = %.lr.ph149
  %storemerge.i70.i = getelementptr inbounds nuw i8, ptr %storemerge.i70.i148, i64 1 ; 3 uses
  %i.cz = icmp ult ptr %storemerge.i70.i, %.sroa.2.0.copyload.i.i
  br i1 %i.cz, label %.lr.ph149, label %.critedge.i71.i, !llvm.loop !433

.lr.ph149:                                        ; preds = %.preheader.i67.i, %bb.p
  %storemerge.i70.i148 = phi ptr [ %storemerge.i70.i, %bb.p ], [ %storemerge.i70.i147, %.preheader.i67.i ] ; 3 uses
  %i.da = load i8, ptr %storemerge.i70.i148, align 1, !tbaa !192, !noalias !452
  %i.db = icmp slt i8 %i.da, -64
  br i1 %i.db, label %bb.p, label %..critedge.i71.i_crit_edge, !llvm.loop !433

..critedge.i71.i_crit_edge:                       ; preds = %.lr.ph149
  br label %.critedge.i71.i, !llvm.loop !433

.critedge.i71.i:                                  ; preds = %bb.p, %..critedge.i71.i_crit_edge, %.preheader.i67.i
  %storemerge.i70.i.lcssa = phi ptr [ %storemerge.i70.i148, %..critedge.i71.i_crit_edge ], [ %storemerge.i70.i147, %.preheader.i67.i ], [ %storemerge.i70.i, %bb.p ] ; 3 uses
  %.lcssa = phi i1 [ true, %..critedge.i71.i_crit_edge ], [ false, %.preheader.i67.i ], [ false, %bb.p ] ; 2 uses
  %i.dc = load i8, ptr %i.cx, align 1, !tbaa !192, !noalias !452 ; 3 uses
  %i.dd = icmp eq i8 %i.dc, 10
  %i.de = or i1 %.0.shrunk3.i68.i, %i.dd
  %i.df = icmp ult i8 %i.dc, 32
  br i1 %i.df, label %.critedge3.backedge.i75.i, label %bb.q

.critedge3.backedge.i75.i:                        ; preds = %bb.q, %.critedge.i71.i
  %.0.shrunk.be.i76.i = phi i1 [ %i.de, %.critedge.i71.i ], [ true, %bb.q ]
  %i.dg = icmp ne ptr %storemerge.i70.i.lcssa, %.sroa.2.0.copyload.i.i ; 2 uses
  %brmerge = or i1 %i.dg, %.lcssa
  %.0.shrunk.be.i76.i.mux = select i1 %i.dg, i1 %.0.shrunk.be.i76.i, i1 false
  br i1 %brmerge, label %.preheader.i67.i.backedge, label %._crit_edge153.i

bb.q:                                             ; preds = %.critedge.i71.i
  %i.dh = icmp eq i8 %i.dc, 32
  %or.cond.i72.i = and i1 %.0.shrunk3.i68.i, %i.dh
  br i1 %or.cond.i72.i, label %.critedge3.backedge.i75.i, label %"_ZZN6hermes5irgenL20getTextifiedCallExprERNS_9IRBuilderEPNS_6ESTree4NodeEENK3$_0clERPKc.exit78.i"

"_ZZN6hermes5irgenL20getTextifiedCallExprERNS_9IRBuilderEPNS_6ESTree4NodeEENK3$_0clERPKc.exit78.i": ; preds = %bb.q
  %i.di = ptrtoint ptr %storemerge.i70.i.lcssa to i64
  %i.dj = ptrtoint ptr %i.cx to i64
  %i.dk = sub i64 %i.di, %i.dj                    ; 4 uses
  %i.dl = load ptr, ptr %i.cv, align 8, !tbaa !438
  %i.dm = load ptr, ptr %i.cw, align 8, !tbaa !439 ; 2 uses
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = icmp ugt i64 %i.dk, %i.dp
  br i1 %i.dq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %"_ZZN6hermes5irgenL20getTextifiedCallExprERNS_9IRBuilderEPNS_6ESTree4NodeEENK3$_0clERPKc.exit78.i"
  %i.dr = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull %i.cx, i64 noundef %i.dk) #16 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit81.i

bb.s:                                             ; preds = %"_ZZN6hermes5irgenL20getTextifiedCallExprERNS_9IRBuilderEPNS_6ESTree4NodeEENK3$_0clERPKc.exit78.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.dm, ptr noundef nonnull align 1 dereferenceable(1) %i.cx, i64 %i.dk, i1 false)
  %i.ds = load ptr, ptr %i.cw, align 8, !tbaa !439
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dk
  store ptr %i.dt, ptr %i.cw, align 8, !tbaa !439
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit81.i

_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit81.i:  ; preds = %bb.s, %bb.r
  br i1 %.lcssa, label %.preheader.i67.i.backedge, label %._crit_edge153.i

.preheader.i67.i.backedge:                        ; preds = %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit81.i, %.critedge3.backedge.i75.i
  %.0.shrunk3.i68.i.be = phi i1 [ %.0.shrunk.be.i76.i.mux, %.critedge3.backedge.i75.i ], [ false, %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit81.i ]
  br label %.preheader.i67.i, !llvm.loop !437

._crit_edge153.i:                                 ; preds = %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit81.i, %.critedge3.backedge.i75.i, %.loopexit.i
  %i.du = load ptr, ptr %i.q, align 8, !tbaa !455, !nonnull !28, !align !188 ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !219
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !220
  %i.dy = zext i32 %i.dx to i64
  %i.dz = call noundef ptr @_ZN6hermes9IRBuilder16getLiteralStringEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr %i.dv, i64 %i.dy) #16
  call void @_ZN4llvh11raw_ostreamD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.ea = load ptr, ptr %4, align 8, !tbaa !219   ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.l
  br i1 %i.eb, label %_ZN6hermes5irgenL20getTextifiedCallExprERNS_9IRBuilderEPNS_6ESTree4NodeE.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge153.i
  call void @free(ptr noundef %i.ea) #16
  br label %_ZN6hermes5irgenL20getTextifiedCallExprERNS_9IRBuilderEPNS_6ESTree4NodeE.exit

_ZN6hermes5irgenL20getTextifiedCallExprERNS_9IRBuilderEPNS_6ESTree4NodeE.exit: ; preds = %._crit_edge153.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.ec = load ptr, ptr %6, align 8, !tbaa !219
  %i.ed = load i32, ptr %i.g, align 8, !tbaa !220
  %i.ee = zext i32 %i.ed to i64
  %i.ef = call noundef ptr @_ZN6hermes9IRBuilder14createCallInstEPNS_13LiteralStringEPNS_5ValueES4_N4llvh8ArrayRefIS4_EE(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef %i.dz, ptr noundef %2, ptr noundef %3, ptr %i.ec, i64 %i.ee) #16 ; 2 uses
  %i.eg = icmp eq ptr %i.ef, null
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.ei = select i1 %i.eg, ptr null, ptr %i.eh
  %i.ej = load ptr, ptr %6, align 8, !tbaa !219   ; 2 uses
  %i.ek = icmp eq ptr %i.ej, %i.f
  br i1 %i.ek, label %_ZN4llvh11SmallVectorIPN6hermes5ValueELj2EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN6hermes5irgenL20getTextifiedCallExprERNS_9IRBuilderEPNS_6ESTree4NodeE.exit
  call void @free(ptr noundef %i.ej) #16
  br label %_ZN4llvh11SmallVectorIPN6hermes5ValueELj2EED2Ev.exit

_ZN4llvh11SmallVectorIPN6hermes5ValueELj2EED2Ev.exit: ; preds = %_ZN6hermes5irgenL20getTextifiedCallExprERNS_9IRBuilderEPNS_6ESTree4NodeE.exit, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.x

.lr.ph58:                                         ; preds = %.critedge, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit
  %.sroa.024.056 = phi ptr [ %.sroa.024.0, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit ], [ %.sroa.024.054, %.critedge ] ; 2 uses
  %i.el = call noundef ptr @_ZN6hermes5irgen11ESTreeIRGen13genExpressionEPNS_6ESTree4NodeENS_10IdentifierE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %.sroa.024.056, ptr null)
  %i.em = load i32, ptr %i.g, align 8, !tbaa !220 ; 2 uses
  %i.en = load i32, ptr %i.h, align 4, !tbaa !221
  %.not.i = icmp ult i32 %i.em, %i.en
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit, label %bb.v, !prof !200

bb.v:                                             ; preds = %.lr.ph58
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %i.f, i64 noundef 0, i64 noundef 8) #16
  %.pre.i = load i32, ptr %i.g, align 8, !tbaa !220
  br label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit

_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit: ; preds = %.lr.ph58, %bb.v
  %i.eo = phi i32 [ %.pre.i, %bb.v ], [ %i.em, %.lr.ph58 ]
  %i.ep = load ptr, ptr %6, align 8, !tbaa !219
  %i.eq = zext i32 %i.eo to i64
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.eq
  %i.es = ptrtoint ptr %i.el to i64
  store i64 %i.es, ptr %i.er, align 1
  %i.et = load i32, ptr %i.g, align 8, !tbaa !220
  %i.eu = add i32 %i.et, 1
  store i32 %i.eu, ptr %i.g, align 8, !tbaa !220
  %.sroa.024.0.in = getelementptr inbounds nuw i8, ptr %.sroa.024.056, i64 8
  %.sroa.024.0 = load ptr, ptr %.sroa.024.0.in, align 8, !tbaa !301 ; 2 uses
  %.not32 = icmp eq ptr %.sroa.024.0, %i.i
  br i1 %.not32, label %._crit_edge59, label %.lr.ph58

bb.w:                                             ; preds = %._crit_edge
  %i.ev = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6hermes6ESTree12getArgumentsEPNS0_22CallExpressionLikeNodeE(ptr noundef %1) #16
  %i.ew = tail call noundef ptr @_ZN6hermes5irgen11ESTreeIRGen20genArrayFromElementsERN4llvh12simple_ilistINS_6ESTree4NodeEJEEE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ev)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store ptr %2, ptr %i.a, align 8, !tbaa !235
  %i.ex = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ew, ptr %i.ex, align 8, !tbaa !235
  %i.ey = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %3, ptr %i.ey, align 8, !tbaa !235
  %i.ez = call noundef ptr @_ZN6hermes5irgen11ESTreeIRGen14genBuiltinCallENS_13BuiltinMethod4EnumEN4llvh8ArrayRefIPNS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(200) %0, i8 noundef zeroext 47, ptr nonnull %i.a, i64 3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN4llvh11SmallVectorIPN6hermes5ValueELj2EED2Ev.exit
  %.0 = phi ptr [ %i.ez, %bb.w ], [ %i.ei, %_ZN4llvh11SmallVectorIPN6hermes5ValueELj2EED2Ev.exit ]
  ret ptr %.0
}

declare noundef ptr @_ZN6hermes9IRBuilder17getInsertionBlockEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes9IRBuilder16createBranchInstEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes6ESTree9getCalleeEPNS0_22CallExpressionLikeNodeE(ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes9IRBuilder13createPhiInstERKN4llvh11SmallVectorIPNS_5ValueELj8EEERKNS2_IPNS_10BasicBlockELj8EEE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN6hermes6ESTree12getArgumentsEPNS0_22CallExpressionLikeNodeE(ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes9IRBuilder14createCallInstEPNS_13LiteralStringEPNS_5ValueES4_N4llvh8ArrayRefIS4_EE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef, ptr, i64) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes5irgen11ESTreeIRGen27genMemberExpressionPropertyEPNS_6ESTree24MemberExpressionLikeNodeE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes9IRBuilder22createLoadPropertyInstEPNS_5ValueES2_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes9IRBuilder24createDeletePropertyInstEPNS_5ValueES2_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes9IRBuilder20createDirectEvalInstEPNS_5ValueEPNS_11LiteralBoolE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvh9StringMapIZN6hermes5irgen11ESTreeIRGen13genObjectExprEPNS1_6ESTree20ObjectExpressionNodeEE13PropertyValueNS_15MallocAllocatorEEixENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr %1, i64 %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4llvh13StringMapImpl15LookupBucketForENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr %1, i64 %2) #16 ; 2 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !339
  %i.c = zext i32 %i.a to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !336  ; 2 uses
  %magicptr.i = ptrtoint ptr %i.e to i64
  switch i64 %magicptr.i, label %.preheader.i [
    i64 0, label %bb.c
    i64 -8, label %bb.b
  ]

.preheader.i:                                     ; preds = %bb.a, %.critedge.i.i.i.i
  %i.f = phi ptr [ %.pre.i, %.critedge.i.i.i.i ], [ %i.e, %bb.a ] ; 2 uses
  %storemerge.i.i.i = phi ptr [ %i.g, %.critedge.i.i.i.i ], [ %i.d, %bb.a ]
  %magicptr.i.i.i.i = ptrtoint ptr %i.f to i64
  switch i64 %magicptr.i.i.i.i, label %_ZN4llvh9StringMapIZN6hermes5irgen11ESTreeIRGen13genObjectExprEPNS1_6ESTree20ObjectExpressionNodeEE13PropertyValueNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIS7_EEbENS_9StringRefEDpOT_.exit [
    i64 0, label %.critedge.i.i.i.i
    i64 -8, label %.critedge.i.i.i.i
  ]

.critedge.i.i.i.i:                                ; preds = %.preheader.i, %.preheader.i
  %i.g = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i, i64 8 ; 2 uses
  %.pre.i = load ptr, ptr %i.g, align 8, !tbaa !336
  br label %.preheader.i, !llvm.loop !458

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !459
  %i.j = add i32 %i.i, -1
  store i32 %i.j, ptr %i.h, align 8, !tbaa !459
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = add i64 %2, 41
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.k) #20 ; 5 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %_ZN4llvh15MallocAllocator8AllocateEmm.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvh22report_bad_alloc_errorEPKcb(ptr noundef nonnull @.str.38, i1 noundef zeroext true) #16
  br label %_ZN4llvh15MallocAllocator8AllocateEmm.exit.i.i

_ZN4llvh15MallocAllocator8AllocateEmm.exit.i.i:   ; preds = %bb.d, %bb.c
  store i64 %2, ptr %i.l, align 8, !tbaa !460
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i8 0, i64 32, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 2 uses
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_ZN4llvh14StringMapEntryIZN6hermes5irgen11ESTreeIRGen13genObjectExprEPNS1_6ESTree20ObjectExpressionNodeEE13PropertyValueE6CreateINS_15MallocAllocatorEJEEEPS8_NS_9StringRefERT_DpOT0_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN4llvh15MallocAllocator8AllocateEmm.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr readonly align 1 %1, i64 %2, i1 false)
  br label %_ZN4llvh14StringMapEntryIZN6hermes5irgen11ESTreeIRGen13genObjectExprEPNS1_6ESTree20ObjectExpressionNodeEE13PropertyValueE6CreateINS_15MallocAllocatorEJEEEPS8_NS_9StringRefERT_DpOT0_.exit.i

_ZN4llvh14StringMapEntryIZN6hermes5irgen11ESTreeIRGen13genObjectExprEPNS1_6ESTree20ObjectExpressionNodeEE13PropertyValueE6CreateINS_15MallocAllocatorEJEEEPS8_NS_9StringRefERT_DpOT0_.exit.i: ; preds = %bb.e, %_ZN4llvh15MallocAllocator8AllocateEmm.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %2
  store i8 0, ptr %i.p, align 1, !tbaa !192
  store ptr %i.l, ptr %i.d, align 8, !tbaa !336
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !338
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 4, !tbaa !338
  %i.t = tail call noundef i32 @_ZN4llvh13StringMapImpl11RehashTableEj(ptr noundef nonnull align 8 dereferenceable(25) %0, i32 noundef %i.a) #16
  %i.u = load ptr, ptr %0, align 8, !tbaa !339
  %i.v = zext i32 %i.t to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.v
  br label %bb.f

bb.f:                                             ; preds = %.critedge.i.i.i27.i, %_ZN4llvh14StringMapEntryIZN6hermes5irgen11ESTreeIRGen13genObjectExprEPNS1_6ESTree20ObjectExpressionNodeEE13PropertyValueE6CreateINS_15MallocAllocatorEJEEEPS8_NS_9StringRefERT_DpOT0_.exit.i
  %storemerge.i.i25.i = phi ptr [ %i.w, %_ZN4llvh14StringMapEntryIZN6hermes5irgen11ESTreeIRGen13genObjectExprEPNS1_6ESTree20ObjectExpressionNodeEE13PropertyValueE6CreateINS_15MallocAllocatorEJEEEPS8_NS_9StringRefERT_DpOT0_.exit.i ], [ %i.y, %.critedge.i.i.i27.i ] ; 2 uses
  %i.x = load ptr, ptr %storemerge.i.i25.i, align 8, !tbaa !336 ; 2 uses
  %magicptr.i.i.i26.i = ptrtoint ptr %i.x to i64
  switch i64 %magicptr.i.i.i26.i, label %_ZN4llvh9StringMapIZN6hermes5irgen11ESTreeIRGen13genObjectExprEPNS1_6ESTree20ObjectExpressionNodeEE13PropertyValueNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIS7_EEbENS_9StringRefEDpOT_.exit [
    i64 0, label %.critedge.i.i.i27.i
    i64 -8, label %.critedge.i.i.i27.i
  ]

.critedge.i.i.i27.i:                              ; preds = %bb.f, %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %storemerge.i.i25.i, i64 8
  br label %bb.f, !llvm.loop !458

_ZN4llvh9StringMapIZN6hermes5irgen11ESTreeIRGen13genObjectExprEPNS1_6ESTree20ObjectExpressionNodeEE13PropertyValueNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIS7_EEbENS_9StringRefEDpOT_.exit: ; preds = %bb.f, %.preheader.i
  %.val.val = phi ptr [ %i.f, %.preheader.i ], [ %i.x, %bb.f ]
  %i.z = getelementptr inbounds nuw i8, ptr %.val.val, i64 8
  ret ptr %i.z
}

declare void @_ZNK4llvh5Twine3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(18)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvh9StringMapINS_7SMRangeENS_15MallocAllocatorEE11try_emplaceIJS1_EEESt4pairINS_17StringMapIteratorIS1_EEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4llvh13StringMapImpl15LookupBucketForENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2) #16 ; 2 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !339
  %i.c = zext i32 %i.a to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !336  ; 2 uses
  %magicptr = ptrtoint ptr %i.e to i64
  switch i64 %magicptr, label %.preheader.i.i [
    i64 0, label %bb.c
    i64 -8, label %bb.b
  ]

.preheader.i.i:                                   ; preds = %bb.a, %.critedge.i.i.i
  %i.f = phi ptr [ %.pre, %.critedge.i.i.i ], [ %i.e, %bb.a ]
  %.sroa.030.0 = phi ptr [ %i.g, %.critedge.i.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %magicptr.i.i.i = ptrtoint ptr %i.f to i64
  switch i64 %magicptr.i.i.i, label %_ZN4llvh17StringMapIteratorINS_7SMRangeEEC2EPPNS_18StringMapEntryBaseEb.exit [
    i64 0, label %.critedge.i.i.i
    i64 -8, label %.critedge.i.i.i
  ]

.critedge.i.i.i:                                  ; preds = %.preheader.i.i, %.preheader.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.030.0, i64 8 ; 2 uses
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !336
  br label %.preheader.i.i, !llvm.loop !462

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !459
  %i.j = add i32 %i.i, -1
  store i32 %i.j, ptr %i.h, align 8, !tbaa !459
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.k = add i64 %2, 25
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.k) #20 ; 5 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %_ZN4llvh15MallocAllocator8AllocateEmm.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvh22report_bad_alloc_errorEPKcb(ptr noundef nonnull @.str.38, i1 noundef zeroext true) #16
  br label %_ZN4llvh15MallocAllocator8AllocateEmm.exit.i

_ZN4llvh15MallocAllocator8AllocateEmm.exit.i:     ; preds = %bb.d, %bb.c
  store i64 %2, ptr %i.l, align 8, !tbaa !460
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !463
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_ZN4llvh14StringMapEntryINS_7SMRangeEE6CreateINS_15MallocAllocatorEJS1_EEEPS2_NS_9StringRefERT_DpOT0_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvh15MallocAllocator8AllocateEmm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr align 1 %1, i64 %2, i1 false)
  br label %_ZN4llvh14StringMapEntryINS_7SMRangeEE6CreateINS_15MallocAllocatorEJS1_EEEPS2_NS_9StringRefERT_DpOT0_.exit

_ZN4llvh14StringMapEntryINS_7SMRangeEE6CreateINS_15MallocAllocatorEJS1_EEEPS2_NS_9StringRefERT_DpOT0_.exit: ; preds = %_ZN4llvh15MallocAllocator8AllocateEmm.exit.i, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %2
  store i8 0, ptr %i.p, align 1, !tbaa !192
  store ptr %i.l, ptr %i.d, align 8, !tbaa !336
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !338
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 4, !tbaa !338
  %i.t = tail call noundef i32 @_ZN4llvh13StringMapImpl11RehashTableEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %i.a) #16
  %i.u = load ptr, ptr %0, align 8, !tbaa !339
  %i.v = zext i32 %i.t to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.v
  br label %.preheader.i.i23

.preheader.i.i23:                                 ; preds = %.critedge.i.i.i25, %_ZN4llvh14StringMapEntryINS_7SMRangeEE6CreateINS_15MallocAllocatorEJS1_EEEPS2_NS_9StringRefERT_DpOT0_.exit
  %.sroa.0.0 = phi ptr [ %i.w, %_ZN4llvh14StringMapEntryINS_7SMRangeEE6CreateINS_15MallocAllocatorEJS1_EEEPS2_NS_9StringRefERT_DpOT0_.exit ], [ %i.y, %.critedge.i.i.i25 ] ; 3 uses
  %i.x = load ptr, ptr %.sroa.0.0, align 8, !tbaa !336
  %magicptr.i.i.i24 = ptrtoint ptr %i.x to i64
  switch i64 %magicptr.i.i.i24, label %_ZN4llvh17StringMapIteratorINS_7SMRangeEEC2EPPNS_18StringMapEntryBaseEb.exit [
    i64 0, label %.critedge.i.i.i25
    i64 -8, label %.critedge.i.i.i25
  ]

.critedge.i.i.i25:                                ; preds = %.preheader.i.i23, %.preheader.i.i23
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8
  br label %.preheader.i.i23, !llvm.loop !462

_ZN4llvh17StringMapIteratorINS_7SMRangeEEC2EPPNS_18StringMapEntryBaseEb.exit: ; preds = %.preheader.i.i23, %.preheader.i.i
  %.sroa.030.0.pn = phi ptr [ %.sroa.030.0, %.preheader.i.i ], [ %.sroa.0.0, %.preheader.i.i23 ]
  %.pn31 = phi i8 [ 0, %.preheader.i.i ], [ 1, %.preheader.i.i23 ]
  %.fca.0.insert.i.pn = insertvalue { ptr, i8 } poison, ptr %.sroa.030.0.pn, 0
  %.pn = insertvalue { ptr, i8 } %.fca.0.insert.i.pn, i8 %.pn31, 1
  ret { ptr, i8 } %.pn
}

declare noundef zeroext i1 @_ZN6hermes5irgen14isConstantExprEPNS_6ESTree4NodeE(ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes9IRBuilder21createAllocObjectInstEjPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes9IRBuilder27createStoreGetterSetterInstEPNS_5ValueES2_S2_S2_NS0_14PropEnumerableE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @_ZN6hermes9IRBuilder16createIdentifierEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(40), ptr, i64) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes9IRBuilder29createStoreNewOwnPropertyInstEPNS_5ValueES2_PNS_7LiteralENS0_14PropEnumerableE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN6hermes5irgen11ESTreeIRGen19genYieldOrAwaitExprEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 14 uses
  %i.b = tail call noundef ptr @_ZN6hermes9IRBuilder17getInsertionBlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #16
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !287
  %i.e = tail call noundef ptr @_ZN6hermes9IRBuilder16createBasicBlockEPNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef %i.d) #16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !35
  %i.h = tail call ptr @_ZN6hermes5irgen15FunctionContext21genAnonymousLabelNameEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(480) %i.g, ptr nonnull @.str.16, i64 8) #16
  %i.i = tail call noundef ptr @_ZN6hermes9IRBuilder20createAllocStackInstENS_10IdentifierE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr %i.h) #16 ; 3 uses
  %i.j = tail call noundef ptr @_ZN6hermes9IRBuilder22createSaveAndYieldInstEPNS_5ValueEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef %1, ptr noundef %i.e) #16 ; 0 uses
  tail call void @_ZN6hermes9IRBuilder17setInsertionBlockEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef %i.e) #16
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !287
  %i.l = tail call noundef ptr @_ZN6hermes9IRBuilder16createBasicBlockEPNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef %i.k) #16 ; 2 uses
  %i.m = icmp eq ptr %i.i, null
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %spec.select.i = select i1 %i.m, ptr null, ptr %i.n
  %i.o = tail call noundef ptr @_ZN6hermes9IRBuilder25createResumeGeneratorInstEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef %spec.select.i) #16 ; 2 uses
  %i.p = tail call noundef ptr @_ZN6hermes9IRBuilder17getInsertionBlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #16
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !287
  %i.s = tail call noundef ptr @_ZN6hermes9IRBuilder16createBasicBlockEPNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef %i.r) #16 ; 2 uses
  %i.t = tail call noundef ptr @_ZN6hermes9IRBuilder19createLoadStackInstEPNS_14AllocStackInstE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef %i.i) #16 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %spec.select2.c.i = select i1 %i.u, ptr null, ptr %i.v
  %i.w = tail call noundef ptr @_ZN6hermes9IRBuilder20createCondBranchInstEPNS_5ValueEPNS_10BasicBlockES4_(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef %spec.select2.c.i, ptr noundef %i.s, ptr noundef %i.l) #16 ; 0 uses
  tail call void @_ZN6hermes9IRBuilder17setInsertionBlockEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef %i.s) #16
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !35
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 120
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !408
  tail call void @_ZN6hermes5irgen11ESTreeIRGen29genFinallyBeforeControlChangeEPNS0_14SurroundingTryES3_NS0_17ControlFlowChangeEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %i.z, ptr noundef null, i32 noundef 0, ptr noundef null) #16
  %i.aa = icmp eq ptr %i.o, null
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %spec.select4.i = select i1 %i.aa, ptr null, ptr %i.ab ; 2 uses
  %i.ac = tail call noundef ptr @_ZN6hermes9IRBuilder16createReturnInstEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef %spec.select4.i) #16 ; 0 uses
  tail call void @_ZN6hermes9IRBuilder17setInsertionBlockEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef %i.l) #16
  ret ptr %spec.select4.i
}

declare noundef ptr @_ZN6hermes9IRBuilder20createAllocStackInstENS_10IdentifierE(ptr noundef nonnull align 8 dereferenceable(40), ptr) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes9IRBuilder22createSaveAndYieldInstEPNS_5ValueEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN6hermes5irgen11ESTreeIRGen18genResumeGeneratorENS1_10GenFinallyEPNS_14AllocStackInstEPNS_10BasicBlockES4_(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 15 uses
  %i.b = icmp eq ptr %2, null
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %spec.select = select i1 %i.b, ptr null, ptr %i.c
  %i.d = tail call noundef ptr @_ZN6hermes9IRBuilder25createResumeGeneratorInstEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef %spec.select) #16 ; 4 uses
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %i.d, null
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %spec.select1 = select i1 %i.e, ptr null, ptr %i.f ; 2 uses
  %i.g = tail call noundef ptr @_ZN6hermes9IRBuilder20createStoreStackInstEPNS_5ValueEPNS_14AllocStackInstE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef %spec.select1, ptr noundef nonnull %4) #16 ; 0 uses
  %i.h = tail call noundef ptr @_ZN6hermes9IRBuilder17getInsertionBlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #16
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !287
  %i.k = tail call noundef ptr @_ZN6hermes9IRBuilder16createBasicBlockEPNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef %i.j) #16 ; 2 uses
  %i.l = tail call noundef ptr @_ZN6hermes9IRBuilder19createLoadStackInstEPNS_14AllocStackInstE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef %2) #16 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %spec.select2 = select i1 %i.m, ptr null, ptr %i.n
  %i.o = tail call noundef ptr @_ZN6hermes9IRBuilder20createCondBranchInstEPNS_5ValueEPNS_10BasicBlockES4_(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef %spec.select2, ptr noundef %i.k, ptr noundef %3) #16 ; 0 uses
  tail call void @_ZN6hermes9IRBuilder17setInsertionBlockEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef %i.k) #16
  %i.p = tail call noundef ptr @_ZN6hermes9IRBuilder20createStoreStackInstEPNS_5ValueEPNS_14AllocStackInstE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef %spec.select1, ptr noundef nonnull %4) #16 ; 0 uses
  br label %bb.c

.critedge:                                        ; preds = %bb.a
  %i.q = tail call noundef ptr @_ZN6hermes9IRBuilder17getInsertionBlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #16
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !287
  %i.t = tail call noundef ptr @_ZN6hermes9IRBuilder16createBasicBlockEPNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef %i.s) #16 ; 2 uses
  %i.u = tail call noundef ptr @_ZN6hermes9IRBuilder19createLoadStackInstEPNS_14AllocStackInstE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef %2) #16 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %spec.select2.c = select i1 %i.v, ptr null, ptr %i.w
  %i.x = tail call noundef ptr @_ZN6hermes9IRBuilder20createCondBranchInstEPNS_5ValueEPNS_10BasicBlockES4_(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef %spec.select2.c, ptr noundef %i.t, ptr noundef %3) #16 ; 0 uses
  tail call void @_ZN6hermes9IRBuilder17setInsertionBlockEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef %i.t) #16
  br label %bb.c

bb.c:                                             ; preds = %.critedge, %bb.b
  %i.y = icmp eq i32 %1, 1
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !35
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 120
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !408
  tail call void @_ZN6hermes5irgen11ESTreeIRGen29genFinallyBeforeControlChangeEPNS0_14SurroundingTryES3_NS0_17ControlFlowChangeEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %i.ac, ptr noundef null, i32 noundef 0, ptr noundef null) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ad = icmp eq ptr %i.d, null
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %spec.select4 = select i1 %i.ad, ptr null, ptr %i.ae ; 2 uses
  %i.af = tail call noundef ptr @_ZN6hermes9IRBuilder16createReturnInstEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef %spec.select4) #16 ; 0 uses
  tail call void @_ZN6hermes9IRBuilder17setInsertionBlockEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef %3) #16
  ret ptr %spec.select4
}

declare { ptr, ptr } @_ZN6hermes5irgen11ESTreeIRGen19emitGetIteratorSlowEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef) local_unnamed_addr #2

declare void @_ZN6hermes5irgen11ESTreeIRGen16emitEnsureObjectEPNS_5ValueEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, ptr, i64) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes5irgen11ESTreeIRGen24emitIteratorCompleteSlowEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes5irgen11ESTreeIRGen21emitIteratorValueSlowEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes9IRBuilder25createResumeGeneratorInstEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #2

declare void @_ZN6hermes5irgen11ESTreeIRGen29genFinallyBeforeControlChangeEPNS0_14SurroundingTryES3_NS0_17ControlFlowChangeEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes9IRBuilder16createReturnInstEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #2

declare noundef i32 @_ZN6hermes18BinaryOperatorInst13parseOperatorEN4llvh9StringRefE(ptr, i64) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes9IRBuilder15getGlobalObjectEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes9IRBuilder16getLiteralStringENS_10IdentifierE(ptr noundef nonnull align 8 dereferenceable(40), ptr) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes9IRBuilder23createUnaryOperatorInstEPNS_5ValueENS_17UnaryOperatorInst6OpKindE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes9IRBuilder18createAsNumberInstEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #2

declare void @_ZN6hermes5irgen11ESTreeIRGen10createLRefEPNS_6ESTree4NodeEb(ptr dead_on_unwind writable sret(%"class.hermes::irgen::LReference") align 8, ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes5irgen10LReference8emitLoadEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes9IRBuilder19createAsNumericInstEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #2

declare void @_ZN6hermes5irgen10LReference9emitStoreEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #2

declare noundef i32 @_ZN6hermes18BinaryOperatorInst23parseAssignmentOperatorEN4llvh9StringRefE(ptr, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN6hermes5irgen11ESTreeIRGen24genLogicalAssignmentExprEPNS_6ESTree24AssignmentExpressionNodeENS_18BinaryOperatorInst6OpKindENS0_10LReferenceENS_10IdentifierE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef byval(%"class.hermes::irgen::LReference") align 8 %3, ptr %4) local_unnamed_addr #0 align 2 {
_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit:
  %5 = alloca %"class.llvh::SmallVector.188", align 8 ; 10 uses
  %6 = alloca %"class.llvh::SmallVector.190", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !286
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !287
  %i.f = tail call noundef ptr @_ZN6hermes9IRBuilder16createBasicBlockEPNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef %i.e) #16 ; 4 uses
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !286
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !287
  %i.j = tail call noundef ptr @_ZN6hermes9IRBuilder16createBasicBlockEPNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef %i.i) #16 ; 5 uses
  %i.k = call noundef ptr @_ZN6hermes5irgen10LReference8emitLoadEv(ptr noundef nonnull align 8 dereferenceable(48) %3) #16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.l, ptr %5, align 8, !tbaa !219
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  store i32 8, ptr %i.n, align 4, !tbaa !221
end_hunk_2
begin_hunk_3_@llvm.umax.i64
!139 = !{!"_ZTSSt5tupleIJPN6hermes6parser13PreParsedDataESt14default_deleteIS2_EEE", !140, i64 0}
!140 = !{!"_ZTSSt11_Tuple_implILm0EJPN6hermes6parser13PreParsedDataESt14default_deleteIS2_EEE", !141, i64 0}
!141 = !{!"_ZTSSt10_Head_baseILm0EPN6hermes6parser13PreParsedDataELb0EE", !142, i64 0}
!142 = !{!"p1 _ZTSN6hermes6parser13PreParsedDataE", !9, i64 0}
!143 = !{!"_ZTSN6hermes11StringTableE", !144, i64 0, !145, i64 8}
!144 = !{!"p1 _ZTSN6hermes28BacktrackingBumpPtrAllocatorE", !9, i64 0}
!145 = !{!"_ZTSN4llvh8DenseMapINS_9StringRefEPN6hermes12UniqueStringENS_12DenseMapInfoIS1_EENS_6detail12DenseMapPairIS1_S4_EEEE", !146, i64 0, !4, i64 8, !4, i64 12, !4, i64 16}
!146 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairINS_9StringRefEPN6hermes12UniqueStringEEE", !9, i64 0}
!147 = !{!"_ZTSSt3mapISt4pairIPN6hermes12UniqueStringES3_ENS1_14CompiledRegExpESt4lessIS4_ESaIS0_IKS4_S5_EEE", !148, i64 0}
!148 = !{!"_ZTSSt8_Rb_treeISt4pairIPN6hermes12UniqueStringES3_ES0_IKS4_NS1_14CompiledRegExpEESt10_Select1stIS7_ESt4lessIS4_ESaIS7_EE", !149, i64 0}
!149 = !{!"_ZTSNSt8_Rb_treeISt4pairIPN6hermes12UniqueStringES3_ES0_IKS4_NS1_14CompiledRegExpEESt10_Select1stIS7_ESt4lessIS4_ESaIS7_EE13_Rb_tree_implISB_Lb1EEE", !150, i64 0, !152, i64 8}
!150 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessISt4pairIPN6hermes12UniqueStringES4_EEE", !151, i64 0}
!151 = !{!"_ZTSSt4lessISt4pairIPN6hermes12UniqueStringES3_EE"}
!152 = !{!"_ZTSSt15_Rb_tree_header", !153, i64 0, !23, i64 32}
!153 = !{!"_ZTSSt18_Rb_tree_node_base", !154, i64 0, !155, i64 8, !155, i64 16, !155, i64 24}
!154 = !{!"_ZTSSt14_Rb_tree_color", !5, i64 0}
!155 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !9, i64 0}
!156 = !{!"_ZTSSt10unique_ptrIN6hermes18SourceErrorManagerESt14default_deleteIS1_EE", !157, i64 0}
!157 = !{!"_ZTSSt15__uniq_ptr_dataIN6hermes18SourceErrorManagerESt14default_deleteIS1_ELb1ELb1EE", !158, i64 0}
!158 = !{!"_ZTSSt15__uniq_ptr_implIN6hermes18SourceErrorManagerESt14default_deleteIS1_EE", !159, i64 0}
!159 = !{!"_ZTSSt5tupleIJPN6hermes18SourceErrorManagerESt14default_deleteIS1_EEE", !160, i64 0}
!160 = !{!"_ZTSSt11_Tuple_implILm0EJPN6hermes18SourceErrorManagerESt14default_deleteIS1_EEE", !161, i64 0}
!161 = !{!"_ZTSSt10_Head_baseILm0EPN6hermes18SourceErrorManagerELb0EE", !162, i64 0}
!162 = !{!"p1 _ZTSN6hermes18SourceErrorManagerE", !9, i64 0}
!163 = !{!"_ZTSN6hermes16ParseFlowSettingE", !5, i64 0}
!164 = !{!"_ZTSSt10unique_ptrIN4llvh8DenseMapINS0_9StringRefENS1_IS2_S2_NS0_12DenseMapInfoIS2_EENS0_6detail12DenseMapPairIS2_S2_EEEES4_NS6_IS2_S8_EEEESt14default_deleteISA_EE", !165, i64 0}
!165 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvh8DenseMapINS0_9StringRefENS1_IS2_S2_NS0_12DenseMapInfoIS2_EENS0_6detail12DenseMapPairIS2_S2_EEEES4_NS6_IS2_S8_EEEESt14default_deleteISA_ELb1ELb1EE", !166, i64 0}
!166 = !{!"_ZTSSt15__uniq_ptr_implIN4llvh8DenseMapINS0_9StringRefENS1_IS2_S2_NS0_12DenseMapInfoIS2_EENS0_6detail12DenseMapPairIS2_S2_EEEES4_NS6_IS2_S8_EEEESt14default_deleteISA_EE", !167, i64 0}
!167 = !{!"_ZTSSt5tupleIJPN4llvh8DenseMapINS0_9StringRefENS1_IS2_S2_NS0_12DenseMapInfoIS2_EENS0_6detail12DenseMapPairIS2_S2_EEEES4_NS6_IS2_S8_EEEESt14default_deleteISA_EEE", !168, i64 0}
!168 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvh8DenseMapINS0_9StringRefENS1_IS2_S2_NS0_12DenseMapInfoIS2_EENS0_6detail12DenseMapPairIS2_S2_EEEES4_NS6_IS2_S8_EEEESt14default_deleteISA_EEE", !169, i64 0}
!169 = !{!"_ZTSSt10_Head_baseILm0EPN4llvh8DenseMapINS0_9StringRefENS1_IS2_S2_NS0_12DenseMapInfoIS2_EENS0_6detail12DenseMapPairIS2_S2_EEEES4_NS6_IS2_S8_EEEELb0EE", !170, i64 0}
!170 = !{!"p1 _ZTSN4llvh8DenseMapINS_9StringRefENS0_IS1_S1_NS_12DenseMapInfoIS1_EENS_6detail12DenseMapPairIS1_S1_EEEES3_NS5_IS1_S7_EEEE", !9, i64 0}
!171 = !{!"_ZTSSt6vectorIjSaIjEE", !172, i64 0}
!172 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !173, i64 0}
!173 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !174, i64 0}
!174 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !175, i64 0, !175, i64 8, !175, i64 16}
!175 = !{!"p1 int", !9, i64 0}
!176 = !{!"_ZTSN6hermes16DebugInfoSettingE", !5, i64 0}
!177 = !{!"_ZTSN6hermes22CodeGenerationSettingsE", !26, i64 0, !26, i64 1, !26, i64 2, !26, i64 3, !26, i64 4, !26, i64 5, !26, i64 6, !26, i64 7, !26, i64 8, !26, i64 9, !178, i64 16, !178, i64 168, !179, i64 320}
!178 = !{!"_ZTSN6hermes35CodeGenerationSettings_DumpSettingsE", !26, i64 0, !179, i64 8, !179, i64 80}
!179 = !{!"_ZTSN4llvh13SmallDenseSetINS_9StringRefELj4ENS_12DenseMapInfoIS1_EEEE", !180, i64 0}
!180 = !{!"_ZTSN4llvh6detail12DenseSetImplINS_9StringRefENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS0_12DenseSetPairIS2_EEEES6_EE", !181, i64 0}
!181 = !{!"_ZTSN4llvh13SmallDenseMapINS_9StringRefENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS1_EENS2_12DenseSetPairIS1_EEEE", !4, i64 0, !4, i64 0, !4, i64 4, !182, i64 8}
!182 = !{!"_ZTSN4llvh21AlignedCharArrayUnionIA4_NS_6detail12DenseSetPairINS_9StringRefEEENS_13SmallDenseMapIS3_NS1_13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_EES4_E8LargeRepEccccccccEE", !183, i64 0}
!183 = !{!"_ZTSN4llvh16AlignedCharArrayILm8ELm64EEE", !5, i64 0}
!184 = !{!"_ZTSN6hermes20OptimizationSettingsE", !26, i64 0, !26, i64 1, !26, i64 2, !26, i64 3, !26, i64 4, !26, i64 5}
!185 = !{!"_ZTSSt10shared_ptrIN6hermes3hbc14BackendContextEE", !186, i64 0}
!186 = !{!"_ZTSSt12__shared_ptrIN6hermes3hbc14BackendContextELN9__gnu_cxx12_Lock_policyE2EE", !187, i64 0, !54, i64 8}
!187 = !{!"p1 _ZTSN6hermes3hbc14BackendContextE", !9, i64 0}
!188 = !{i64 8}
!189 = !{!190, !191, i64 17}
!190 = !{!"_ZTSN4llvh5TwineE", !5, i64 0, !5, i64 8, !191, i64 16, !191, i64 17}
!191 = !{!"_ZTSN4llvh5Twine8NodeKindE", !5, i64 0}
!192 = !{!5, !5, i64 0}
!193 = !{!190, !191, i64 16}
!194 = !{!195, !21, i64 48}
!195 = !{!"_ZTSN6hermes6ESTree14IdentifierNodeE", !11, i64 0, !21, i64 48, !44, i64 56, !26, i64 64}
!196 = !{!48, !49, i64 0}
!197 = !{!48, !4, i64 16}
!198 = !{!21, !21, i64 0}
!199 = !{!"branch_weights", i32 1999, i32 1}
!200 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!201 = !{!"branch_weights", i32 1, i32 0}
!202 = distinct !{!202, !203}
!203 = !{!"llvm.loop.mustprogress"}
!204 = !{!61, !78, i64 192}
!205 = !{!61, !77, i64 168}
!206 = !{!94, !95, i64 0}
!207 = !{!208, !21, i64 48}
!208 = !{!"_ZTSN6hermes6ESTree17RegExpLiteralNodeE", !11, i64 0, !21, i64 48, !21, i64 56}
!209 = !{!208, !21, i64 56}
!210 = !{!152, !155, i64 8}
!211 = !{!212, !21, i64 0}
!212 = !{!"_ZTSSt4pairIPN6hermes12UniqueStringES2_E", !21, i64 0, !21, i64 8}
!213 = !{!212, !21, i64 8}
!214 = !{!155, !155, i64 0}
!215 = distinct !{!215, !203}
!216 = !{!217, !4, i64 8}
!217 = !{!"_ZTSN4llvh8DenseMapINS_8ArrayRefIDsEEjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEEE", !218, i64 0, !4, i64 8, !4, i64 12, !4, i64 16}
!218 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairINS_8ArrayRefIDsEEjEE", !9, i64 0}
!219 = !{!70, !9, i64 0}
!220 = !{!70, !4, i64 8}
!221 = !{!70, !4, i64 12}
!222 = !{!223, !224, i64 0}
!223 = !{!"_ZTSSt15_Deque_iteratorIN4llvh11SmallVectorIDsLj5EEERS2_PS2_E", !224, i64 0, !224, i64 8, !224, i64 16, !225, i64 24}
!224 = !{!"p1 _ZTSN4llvh11SmallVectorIDsLj5EEE", !9, i64 0}
!225 = !{!"p2 _ZTSN4llvh11SmallVectorIDsLj5EEE", !226, i64 0}
!226 = !{!"any p2 pointer", !9, i64 0}
!227 = !{!228}
!228 = distinct !{!228, !229, !"_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EE5beginEv: argument 0"}
!229 = distinct !{!229, !"_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EE5beginEv"}
!230 = !{!231}
!231 = distinct !{!231, !232, !"_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EE3endEv: argument 0"}
!232 = distinct !{!232, !"_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EE3endEv"}
!233 = !{!223, !225, i64 24}
!234 = !{!223, !224, i64 16}
!235 = !{!79, !79, i64 0}
!236 = !{!237, !8, i64 0}
!237 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !8, i64 0}
!238 = !{!239, !23, i64 8}
!239 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !237, i64 0, !23, i64 8, !5, i64 16}
!240 = !{!239, !8, i64 0}
!241 = !{!242, !243, i64 0}
!242 = !{!"_ZTSN4llvh8ArrayRefIDsEE", !243, i64 0, !23, i64 8}
!243 = !{!"p1 char16_t", !9, i64 0}
!244 = !{!242, !23, i64 8}
!245 = !{!218, !218, i64 0}
!246 = !{!217, !218, i64 0}
!247 = !{!217, !4, i64 16}
!248 = !{!249, !4, i64 16}
!249 = !{!"_ZTSSt4pairIN4llvh8ArrayRefIDsEEjE", !242, i64 0, !4, i64 16}
!250 = !{!251, !252, i64 0}
!251 = !{!"_ZTSSt4pairIPN6hermes7LiteralES2_E", !252, i64 0, !252, i64 8}
!252 = !{!"p1 _ZTSN6hermes7LiteralE", !9, i64 0}
!253 = !{!251, !252, i64 8}
!254 = !{!224, !224, i64 0}
!255 = !{!256, !21, i64 48}
!256 = !{!"_ZTSN6hermes6ESTree24AssignmentExpressionNodeE", !11, i64 0, !21, i64 48, !44, i64 56, !44, i64 64}
!257 = !{!258, !8, i64 0}
!258 = !{!"_ZTSN4llvh9StringRefE", !8, i64 0, !23, i64 8}
!259 = !{!258, !23, i64 8}
!260 = !{!261}
!261 = distinct !{!261, !262, !"_ZN6hermes6ESTreeL14linearizeRightINS0_24AssignmentExpressionNodeEEEN4llvh11SmallVectorIPT_Lj1EEES6_NS3_8ArrayRefINS3_9StringRefEEE: argument 0"}
!262 = distinct !{!262, !"_ZN6hermes6ESTreeL14linearizeRightINS0_24AssignmentExpressionNodeEEEN4llvh11SmallVectorIPT_Lj1EEES6_NS3_8ArrayRefINS3_9StringRefEEE"}
!263 = !{!256, !44, i64 64}
!264 = !{!265}
!265 = distinct !{!265, !266, !"_ZN4llvh25SmallVectorTemplateCommonIPN6hermes6ESTree24AssignmentExpressionNodeEvE6rbeginEv: argument 0"}
!266 = distinct !{!266, !"_ZN4llvh25SmallVectorTemplateCommonIPN6hermes6ESTree24AssignmentExpressionNodeEvE6rbeginEv"}
!267 = !{!268, !268, i64 0}
!268 = !{!"p1 _ZTSN6hermes6ESTree24AssignmentExpressionNodeE", !9, i64 0}
!269 = !{!256, !44, i64 56}
!270 = !{!271, !272, i64 48}
!271 = !{!"_ZTSN6hermes20GlobalObjectPropertyE", !94, i64 0, !37, i64 40, !272, i64 48, !26, i64 56}
!272 = !{!"p1 _ZTSN6hermes13LiteralStringE", !9, i64 0}
!273 = !{!274, !44, i64 48}
!274 = !{!"_ZTSN6hermes6ESTree18CallExpressionNodeE", !275, i64 0, !44, i64 48, !44, i64 56, !276, i64 64}
!275 = !{!"_ZTSN6hermes6ESTree22CallExpressionLikeNodeE", !11, i64 0}
!276 = !{!"_ZTSN4llvh12simple_ilistIN6hermes6ESTree4NodeEJEEE", !277, i64 0}
!277 = !{!"_ZTSN4llvh14ilist_sentinelINS_12ilist_detail12node_optionsIN6hermes6ESTree4NodeELb0ELb0EvEEEE", !13, i64 0}
!278 = !{!279, !82, i64 8}
!279 = !{!"_ZTSSt4pairIN6hermes10IdentifierEPNS0_19ScopedHashTableNodeIS1_PNS0_5ValueEEEE", !56, i64 0, !82, i64 8}
!280 = !{!281, !79, i64 8}
!281 = !{!"_ZTSN6hermes19ScopedHashTableNodeINS_10IdentifierEPNS_5ValueEEE", !56, i64 0, !79, i64 8, !82, i64 16, !82, i64 24, !4, i64 32}
!282 = !{!283, !44, i64 48}
!283 = !{!"_ZTSN6hermes6ESTree20MemberExpressionNodeE", !284, i64 0, !44, i64 48, !44, i64 56, !26, i64 64}
!284 = !{!"_ZTSN6hermes6ESTree24MemberExpressionLikeNodeE", !11, i64 0}
!285 = !{ptr @_ZN6hermes5irgen11ESTreeIRGen19genMemberExpressionEPNS_6ESTree20MemberExpressionNodeENS1_25MemberExpressionOperationE}
!286 = !{!38, !41, i64 16}
!287 = !{!288, !72, i64 72}
!288 = !{!"_ZTSN6hermes10BasicBlockE", !289, i64 0, !94, i64 16, !291, i64 56, !72, i64 72}
!289 = !{!"_ZTSN4llvh22ilist_node_with_parentIN6hermes10BasicBlockENS1_8FunctionEJEEE", !290, i64 0}
!290 = !{!"_ZTSN4llvh10ilist_nodeIN6hermes10BasicBlockEJEEE", !107, i64 0}
!291 = !{!"_ZTSN4llvh6iplistIN6hermes11InstructionEJEEE", !292, i64 0}
!292 = !{!"_ZTSN4llvh11iplist_implINS_12simple_ilistIN6hermes11InstructionEJEEENS_12ilist_traitsIS3_EEEE", !293, i64 0}
!293 = !{!"_ZTSN4llvh12simple_ilistIN6hermes11InstructionEJEEE", !294, i64 0}
!294 = !{!"_ZTSN4llvh14ilist_sentinelINS_12ilist_detail12node_optionsIN6hermes11InstructionELb0ELb0EvEEEE", !295, i64 0}
!295 = !{!"_ZTSN4llvh15ilist_node_implINS_12ilist_detail12node_optionsIN6hermes11InstructionELb0ELb0EvEEEE", !14, i64 0}
!296 = !{!297, !44, i64 48}
!297 = !{!"_ZTSN6hermes6ESTree26OptionalCallExpressionNodeE", !275, i64 0, !44, i64 48, !44, i64 56, !276, i64 64, !26, i64 80}
!298 = !{!297, !26, i64 80}
!299 = !{!300, !44, i64 48}
!300 = !{!"_ZTSN6hermes6ESTree17NewExpressionNodeE", !11, i64 0, !44, i64 48, !44, i64 56, !276, i64 64}
!301 = !{!14, !15, i64 8}
!302 = !{!303, !44, i64 48}
!303 = !{!"_ZTSN6hermes6ESTree28OptionalMemberExpressionNodeE", !284, i64 0, !44, i64 48, !44, i64 56, !26, i64 64, !26, i64 65}
!304 = !{!303, !26, i64 65}
!305 = !{!306, !4, i64 20}
!306 = !{!"_ZTSN4llvh13StringMapImplE", !307, i64 0, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20}
!307 = !{!"p2 _ZTSN4llvh18StringMapEntryBaseE", !226, i64 0}
!308 = !{!309, !26, i64 72}
!309 = !{!"_ZTSN6hermes6ESTree12PropertyNodeE", !11, i64 0, !44, i64 48, !44, i64 56, !21, i64 64, !26, i64 72, !26, i64 73, !26, i64 74}
!310 = !{!309, !44, i64 48}
!311 = !{!309, !21, i64 64}
!312 = !{!309, !26, i64 73}
!313 = !{!309, !26, i64 74}
!314 = !{!309, !44, i64 56}
!315 = !{!316, !26, i64 0}
!316 = !{!"_ZTSZN6hermes5irgen11ESTreeIRGen13genObjectExprEPNS_6ESTree20ObjectExpressionNodeEE13PropertyValue", !26, i64 0, !5, i64 4, !44, i64 8, !317, i64 16, !317, i64 24}
!317 = !{!"p1 _ZTSN6hermes6ESTree22FunctionExpressionNodeE", !9, i64 0}
!318 = !{!316, !44, i64 8}
!319 = !{!316, !317, i64 24}
!320 = !{!316, !317, i64 16}
!321 = !{!322, !324}
!322 = distinct !{!322, !323, !"_ZNK4llvh5Twine6concatERKS0_: argument 0"}
!323 = distinct !{!323, !"_ZNK4llvh5Twine6concatERKS0_"}
!324 = distinct !{!324, !325, !"_ZN4llvhplERKNS_5TwineES2_: argument 0"}
!325 = distinct !{!325, !"_ZN4llvhplERKNS_5TwineES2_"}
!326 = !{!327, !329}
!327 = distinct !{!327, !328, !"_ZNK4llvh5Twine6concatERKS0_: argument 0"}
!328 = distinct !{!328, !"_ZNK4llvh5Twine6concatERKS0_"}
!329 = distinct !{!329, !330, !"_ZN4llvhplERKNS_5TwineES2_: argument 0"}
!330 = distinct !{!330, !"_ZN4llvhplERKNS_5TwineES2_"}
!331 = !{!332, !334}
!332 = distinct !{!332, !333, !"_ZNK4llvh5Twine6concatERKS0_: argument 0"}
!333 = distinct !{!333, !"_ZNK4llvh5Twine6concatERKS0_"}
!334 = distinct !{!334, !335, !"_ZN4llvhplERKNS_5TwineES2_: argument 0"}
!335 = distinct !{!335, !"_ZN4llvhplERKNS_5TwineES2_"}
!336 = !{!337, !337, i64 0}
!337 = !{!"p1 _ZTSN4llvh18StringMapEntryBaseE", !9, i64 0}
!338 = !{!306, !4, i64 12}
!339 = !{!306, !307, i64 0}
!340 = !{!306, !4, i64 8}
!341 = distinct !{!341, !203}
!342 = distinct !{!342, !203}
!343 = !{!344, !44, i64 48}
!344 = !{!"_ZTSN6hermes6ESTree17SpreadElementNodeE", !11, i64 0, !44, i64 48}
!345 = !{!316, !5, i64 4}
!346 = !{!347}
!347 = distinct !{!347, !348, !"_ZNK4llvh9StringRef3strB5cxx11Ev: argument 0"}
!348 = distinct !{!348, !"_ZNK4llvh9StringRef3strB5cxx11Ev"}
!349 = !{!350}
!350 = distinct !{!350, !351, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!351 = distinct !{!351, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!352 = !{!353}
!353 = distinct !{!353, !354, !"_ZNK4llvh9StringRef3strB5cxx11Ev: argument 0"}
!354 = distinct !{!354, !"_ZNK4llvh9StringRef3strB5cxx11Ev"}
!355 = !{!356}
!356 = distinct !{!356, !357, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!357 = distinct !{!357, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!358 = !{!359, !21, i64 64}
!359 = !{!"_ZTSN6hermes6ESTree21LogicalExpressionNodeE", !11, i64 0, !44, i64 48, !44, i64 56, !21, i64 64}
!360 = !{!359, !44, i64 48}
!361 = !{!359, !44, i64 56}
!362 = !{!363, !21, i64 64}
!363 = !{!"_ZTSN6hermes6ESTree20BinaryExpressionNodeE", !11, i64 0, !44, i64 48, !44, i64 56, !21, i64 64}
!364 = !{!365}
!365 = distinct !{!365, !366, !"_ZN6hermes6ESTreeL13linearizeLeftINS0_20BinaryExpressionNodeEEEN4llvh11SmallVectorIPT_Lj1EEES6_NS3_8ArrayRefINS3_9StringRefEEE: argument 0"}
!366 = distinct !{!366, !"_ZN6hermes6ESTreeL13linearizeLeftINS0_20BinaryExpressionNodeEEEN4llvh11SmallVectorIPT_Lj1EEES6_NS3_8ArrayRefINS3_9StringRefEEE"}
!367 = !{!363, !44, i64 48}
!368 = !{!369, !369, i64 0}
!369 = !{!"p1 _ZTSN6hermes6ESTree20BinaryExpressionNodeE", !9, i64 0}
!370 = distinct !{!370, !203}
!371 = !{!363, !44, i64 56}
!372 = !{!373, !21, i64 48}
!373 = !{!"_ZTSN6hermes6ESTree19UnaryExpressionNodeE", !11, i64 0, !21, i64 48, !44, i64 56, !26, i64 64}
!374 = !{!373, !44, i64 56}
!375 = !{!61, !79, i64 184}
!376 = !{!377, !26, i64 64}
!377 = !{!"_ZTSN6hermes6ESTree20UpdateExpressionNodeE", !11, i64 0, !21, i64 48, !44, i64 56, !26, i64 64}
!378 = !{!377, !21, i64 48}
!379 = !{!377, !44, i64 56}
!380 = !{!381, !44, i64 48}
!381 = !{!"_ZTSN6hermes6ESTree25ConditionalExpressionNodeE", !11, i64 0, !44, i64 48, !44, i64 56, !44, i64 64}
!382 = !{!381, !44, i64 64}
!383 = !{!381, !44, i64 56}
!384 = !{!385, !21, i64 56}
!385 = !{!"_ZTSN6hermes6ESTree19TemplateElementNodeE", !11, i64 0, !26, i64 48, !21, i64 56, !21, i64 64}
!386 = distinct !{!386, !203}
!387 = !{!388, !44, i64 56}
!388 = !{!"_ZTSN6hermes6ESTree28TaggedTemplateExpressionNodeE", !11, i64 0, !44, i64 48, !44, i64 56}
!389 = !{!36, !37, i64 0}
!390 = !{!385, !21, i64 64}
!391 = !{!392, !393, i64 8}
!392 = !{!"_ZTSNSt12_Vector_baseIPN6hermes13LiteralStringESaIS2_EE17_Vector_impl_dataE", !393, i64 0, !393, i64 8, !393, i64 16}
!393 = !{!"p2 _ZTSN6hermes13LiteralStringE", !226, i64 0}
!394 = !{!392, !393, i64 16}
!395 = !{!272, !272, i64 0}
!396 = !{!392, !393, i64 0}
!397 = !{!388, !44, i64 48}
!398 = !{!122, !44, i64 48}
!399 = !{!62, !62, i64 0}
!400 = !{!41, !41, i64 0}
!401 = !{!74, !74, i64 0}
!402 = !{!403, !403, i64 0}
!403 = !{!"p1 _ZTSN6hermes5irgen11ESTreeIRGen18IteratorRecordSlowE", !9, i64 0}
!404 = !{!405, !46, i64 0}
!405 = !{!"_ZTSN6hermes5irgen14SurroundingTryE", !46, i64 0, !73, i64 8, !44, i64 16, !18, i64 24, !406, i64 32}
!406 = !{!"_ZTSSt8functionIFvPN6hermes6ESTree4NodeENS0_5irgen17ControlFlowChangeEPNS0_10BasicBlockEEE", !407, i64 0, !9, i64 24}
!407 = !{!"_ZTSSt14_Function_base", !5, i64 0, !9, i64 16}
!408 = !{!61, !73, i64 120}
!409 = !{!405, !73, i64 8}
!410 = !{!405, !44, i64 16}
!411 = !{!406, !9, i64 24}
!412 = !{!407, !9, i64 16}
!413 = distinct !{null, null, null, null}
!414 = !{!415, !79, i64 0}
!415 = !{!"_ZTSN6hermes5irgen11ESTreeIRGen18IteratorRecordSlowE", !79, i64 0, !79, i64 8}
!416 = !{!417, !44, i64 48}
!417 = !{!"_ZTSN6hermes6ESTree19AwaitExpressionNodeE", !11, i64 0, !44, i64 48}
!418 = !{!178, !26, i64 0}
!419 = !{!181, !4, i64 4}
!420 = distinct !{!420, !203}
!421 = !{!14, !15, i64 0}
!422 = !{!423, !424, i64 0}
!423 = !{!"_ZTSN4llvh13SmallDenseMapINS_9StringRefENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS1_EENS2_12DenseSetPairIS1_EEE8LargeRepE", !424, i64 0, !4, i64 8}
!424 = !{!"p1 _ZTSN4llvh6detail12DenseSetPairINS_9StringRefEEE", !9, i64 0}
!425 = !{!90, !26, i64 188}
!426 = !{!427, !428, i64 32}
!427 = !{!"_ZTSN4llvh11raw_ostreamE", !8, i64 8, !8, i64 16, !8, i64 24, !428, i64 32}
!428 = !{!"_ZTSN4llvh11raw_ostream10BufferKindE", !5, i64 0}
!429 = !{!430, !430, i64 0}
!430 = !{!"vtable pointer", !6, i64 0}
!431 = !{!432, !432, i64 0}
!432 = !{!"p1 _ZTSN4llvh15SmallVectorImplIcEE", !9, i64 0}
!433 = distinct !{!433, !203}
!434 = !{!435}
!435 = distinct !{!435, !436, !"_ZZN6hermes5irgenL20getTextifiedCallExprERNS_9IRBuilderEPNS_6ESTree4NodeEENK3$_0clERPKc: argument 0"}
!436 = distinct !{!436, !"_ZZN6hermes5irgenL20getTextifiedCallExprERNS_9IRBuilderEPNS_6ESTree4NodeEENK3$_0clERPKc"}
!437 = distinct !{!437, !203}
!438 = !{!427, !8, i64 16}
!439 = !{!427, !8, i64 24}
!440 = distinct !{!440, !203}
!441 = !{!442}
!442 = distinct !{!442, !443, !"_ZZN6hermes5irgenL20getTextifiedCallExprERNS_9IRBuilderEPNS_6ESTree4NodeEENK3$_0clERPKc: argument 0"}
!443 = distinct !{!443, !"_ZZN6hermes5irgenL20getTextifiedCallExprERNS_9IRBuilderEPNS_6ESTree4NodeEENK3$_0clERPKc"}
!444 = distinct !{!444, !203}
!445 = !{!446}
!446 = distinct !{!446, !447, !"_ZZN6hermes5irgenL20getTextifiedCallExprERNS_9IRBuilderEPNS_6ESTree4NodeEENK3$_0clERPKc: argument 0"}
!447 = distinct !{!447, !"_ZZN6hermes5irgenL20getTextifiedCallExprERNS_9IRBuilderEPNS_6ESTree4NodeEENK3$_0clERPKc"}
!448 = !{!449}
!449 = distinct !{!449, !450, !"_ZZN6hermes5irgenL20getTextifiedCallExprERNS_9IRBuilderEPNS_6ESTree4NodeEENK3$_0clERPKc: argument 0"}
!450 = distinct !{!450, !"_ZZN6hermes5irgenL20getTextifiedCallExprERNS_9IRBuilderEPNS_6ESTree4NodeEENK3$_0clERPKc"}
!451 = distinct !{!451, !203}
!452 = !{!453}
!453 = distinct !{!453, !454, !"_ZZN6hermes5irgenL20getTextifiedCallExprERNS_9IRBuilderEPNS_6ESTree4NodeEENK3$_0clERPKc: argument 0"}
!454 = distinct !{!454, !"_ZZN6hermes5irgenL20getTextifiedCallExprERNS_9IRBuilderEPNS_6ESTree4NodeEENK3$_0clERPKc"}
!455 = !{!456, !432, i64 40}
!456 = !{!"_ZTSN4llvh19raw_svector_ostreamE", !457, i64 0, !432, i64 40}
!457 = !{!"_ZTSN4llvh17raw_pwrite_streamE", !427, i64 0}
!458 = distinct !{!458, !203}
!459 = !{!306, !4, i64 16}
!460 = !{!461, !23, i64 0}
!461 = !{!"_ZTSN4llvh18StringMapEntryBaseE", !23, i64 0}
!462 = distinct !{!462, !203}
!463 = !{i64 0, i64 8, !7, i64 8, i64 8, !7}
!464 = !{!465, !465, i64 0}
!465 = !{!"_ZTSN6hermes5irgen17ControlFlowChangeE", !5, i64 0}
!466 = !{!9, !9, i64 0}
!467 = !{!468, !62, i64 0}
!468 = !{!"_ZTSZZN6hermes5irgen11ESTreeIRGen16genYieldStarExprEPNS_6ESTree19YieldExpressionNodeEENK3$_0clEvEUlPNS2_4NodeENS0_17ControlFlowChangeEPNS_10BasicBlockEE_", !62, i64 0, !41, i64 8, !74, i64 16, !403, i64 24}
!469 = !{!468, !403, i64 24}
!470 = !{!468, !74, i64 16}
!471 = !{!468, !41, i64 8}
!472 = !{!473, !473, i64 0}
!473 = !{!"p1 _ZTSSt9type_info", !9, i64 0}
!474 = !{i64 0, i64 8, !399, i64 8, i64 8, !400, i64 16, i64 8, !401, i64 24, i64 8, !402}
!475 = distinct !{!475, !203}
!476 = !{!243, !243, i64 0}
!477 = !{!"branch_weights", !"expected", i32 2146665872, i32 817776}
!478 = !{!"branch_weights", i32 2146410443, i32 1073205}
!479 = distinct !{!479, !203}
!480 = !{!"branch_weights", i32 1, i32 1048575}
!481 = !{!482}
!482 = distinct !{!482, !483, !"_ZN4llvh7hashing6detail10hash_state6createEPKcm: argument 0"}
!483 = distinct !{!483, !"_ZN4llvh7hashing6detail10hash_state6createEPKcm"}
!484 = distinct !{!484, !203}
end_hunk_3
