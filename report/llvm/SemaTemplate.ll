Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaTemplate?download=true
inline.NumInlined: 36021
inline.NumDeleted: 15703
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN5clang4Sema29hasAnyAcceptableTemplateNamesERNS_12LookupResultEbbb:bb.a
    i32 77, label %bb.c
    i32 79, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.o = tail call noundef ptr @_ZN5clang9NamedDecl21getUnderlyingDeclImplEv(ptr noundef nonnull align 8 dereferenceable(48) %i.k) #29
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.o, i64 28
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  %.pre27 = and i32 %.pre, 127
  br label %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit.us

_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit.us: ; preds = %bb.c, %bb.b
  %.pre-phi = phi i32 [ %.pre27, %bb.c ], [ %i.n, %bb.b ]
  %i.p = add nsw i32 %.pre-phi, -35
  %i.q = icmp ult i32 %i.p, 6
  br i1 %i.q, label %.thread, label %.critedge.us

.critedge.us:                                     ; preds = %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit.us
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.08.015.us, i64 8 ; 2 uses
  %.not13.us.not = icmp eq ptr %i.r, %i.f
  br i1 %.not13.us.not, label %.thread, label %.lr.ph.split.us, !llvm.loop !2290

.lr.ph.split:                                     ; preds = %.lr.ph
  call void @llvm.assume(i1 true) [ "align"(ptr %i.b, i64 8) ]
  %.0.copyload.i.i.i.i.i.i22 = load i64, ptr %i.b, align 8
  %i.s = and i64 %.0.copyload.i.i.i.i.i.i22, -8
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = tail call noundef ptr @_ZN5clang4Sema21getAsTemplateNameDeclEPNS_9NamedDeclEbb(ptr noundef %i.t, i1 noundef zeroext %2, i1 noundef zeroext %3)
  %.not23 = icmp eq ptr %i.u, null
  br i1 %.not23, label %.critedge.preheader, label %.thread

.critedge.preheader:                              ; preds = %.lr.ph.split
  %.not13.not.not33 = icmp eq i32 %i.d, 1
  br i1 %.not13.not.not33, label %.thread, label %.lr.ph35, !llvm.loop !2290

.lr.ph35:                                         ; preds = %.critedge.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.d, !llvm.loop !2290

bb.d:                                             ; preds = %.lr.ph35, %.critedge
  %i.w = phi ptr [ %i.v, %.lr.ph35 ], [ %i.aa, %.critedge ] ; 2 uses
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.w, align 8
  %i.x = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = tail call noundef ptr @_ZN5clang4Sema21getAsTemplateNameDeclEPNS_9NamedDeclEbb(ptr noundef %i.y, i1 noundef zeroext %2, i1 noundef zeroext %3)
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %.critedge, label %..thread.loopexit31_crit_edge, !llvm.loop !2290

.critedge:                                        ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %.not13.not.not = icmp eq ptr %i.aa, %i.f
  br i1 %.not13.not.not, label %.critedge..thread.loopexit31_crit_edge, label %bb.d, !llvm.loop !2290

..thread.loopexit31_crit_edge:                    ; preds = %bb.d
  br label %.thread, !llvm.loop !2290

.critedge..thread.loopexit31_crit_edge:           ; preds = %.critedge
  br label %.thread, !llvm.loop !2290

.thread:                                          ; preds = %.critedge.us, %.lr.ph.split.us, %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit.us, %.critedge.preheader, %..thread.loopexit31_crit_edge, %.critedge..thread.loopexit31_crit_edge, %.lr.ph.split, %bb.a
  %.not13.lcssa = phi i1 [ false, %bb.a ], [ true, %.lr.ph.split ], [ true, %..thread.loopexit31_crit_edge ], [ false, %.critedge..thread.loopexit31_crit_edge ], [ false, %.critedge.preheader ], [ true, %.lr.ph.split.us ], [ false, %.critedge.us ], [ true, %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit.us ]
  ret i1 %.not13.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 0, 8) i32 @_ZN5clang4Sema14isTemplateNameEPNS_5ScopeERNS_12CXXScopeSpecEbRKNS_13UnqualifiedIdENS_9OpaquePtrINS_8QualTypeEEEbRNS8_INS_12TemplateNameEEERbb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(48) %2, i1 noundef zeroext %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4, ptr %5, i1 noundef zeroext %6, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) initializes((0, 1)) %8, i1 noundef zeroext %9) local_unnamed_addr #2 align 2 {
bb.a:
  %10 = alloca %"class.clang::DeclarationName", align 8 ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.clang::LookupResult", align 8 ; 28 uses
  %12 = alloca %"class.clang::TemplateName", align 8 ; 5 uses
  %13 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  store i8 0, ptr %8, align 1, !tbaa !860
  %i.b = load i32, ptr %4, align 8, !tbaa !863
  switch i32 %i.b, label %bb.aj [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !843
  %i.e = ptrtoint ptr %i.d to i64
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !864, !nonnull !865, !align !866
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !843
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 17856
  %i.k = sext i32 %i.i to i64
  %i.l = getelementptr inbounds [16 x i8], ptr %i.j, i64 %i.k
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = or disjoint i64 %i.m, 6
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !864, !nonnull !865, !align !866
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 17800
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !843
  %i.t = tail call i64 @_ZN5clang20DeclarationNameTable25getCXXLiteralOperatorNameEPKNS_14IdentifierInfoE(ptr noundef nonnull align 8 dereferenceable(824) %i.q, ptr noundef %i.s) #28
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sink = phi i64 [ %i.t, %bb.d ], [ %i.n, %bb.c ], [ %i.e, %bb.b ] ; 4 uses
  store i64 %.sink, ptr %10, align 8, !tbaa !867
  %i.u = ptrtoint ptr %5 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.v, align 8, !tbaa !58
  store i32 0, ptr %11, align 8, !tbaa !857
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 4
  store i32 0, ptr %i.w, align 4, !tbaa !859
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !84
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store i32 0, ptr %i.z, align 8, !tbaa !765
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 20
  store i32 8, ptr %i.aa, align 4, !tbaa !868
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 88 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 112 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false)
  store ptr %0, ptr %i.ac, align 8, !tbaa !869
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 120
  store i64 %.sink, ptr %i.ad, align 8, !tbaa !867
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 128
  store i32 %.sroa.0.0.copyload.i, ptr %i.ae, align 8, !tbaa !58
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 136
  call void @_ZN5clang18DeclarationNameLocC1ENS_15DeclarationNameE(ptr noundef nonnull align 8 dereferenceable(8) %i.af, i64 %.sink) #28
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 144
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 162
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.ag, i8 0, i64 18, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 163 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %11, i64 164 ; 4 uses
  store <4 x i8> <i8 1, i8 1, i8 1, i8 0>, ptr %i.ah, align 2, !tbaa !860
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 166
  store i8 0, ptr %i.ak, align 2, !tbaa !870
  %i.al = getelementptr inbounds nuw i8, ptr %11, i64 167
  store i8 0, ptr %i.al, align 1, !tbaa !871
  call void @_ZN5clang12LookupResult9configureEv(ptr noundef nonnull align 8 dereferenceable(168) %11) #28
  %i.am = call noundef zeroext i1 @_ZN5clang4Sema18LookupTemplateNameERNS_12LookupResultEPNS_5ScopeERNS_12CXXScopeSpecENS_8QualTypeEbNS0_20RequiredTemplateKindEPNS0_19AssumedTemplateKindEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 8 dereferenceable(168) %11, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 %i.u, i1 noundef zeroext %6, i64 4294967296, ptr noundef nonnull %i.a, i1 noundef zeroext %9)
  br i1 %i.am, label %bb.ab, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = load i32, ptr %11, align 8, !tbaa !857  ; 2 uses
  %i.ao = icmp eq i32 %i.an, 1
  %i.ap = zext i1 %i.ao to i8
  store i8 %i.ap, ptr %8, align 1, !tbaa !860
  %i.aq = load i32, ptr %i.a, align 4, !tbaa !873 ; 2 uses
  %.not = icmp eq i32 %i.aq, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !864, !nonnull !865, !align !866
  %i.at = call i64 @_ZNK5clang10ASTContext22getAssumedTemplateNameENS_15DeclarationNameE(ptr noundef nonnull align 8 dereferenceable(23904) %i.as, i64 %.sink) #28
  %i.au = inttoptr i64 %i.at to ptr
  store ptr %i.au, ptr %7, align 8, !tbaa !874
  %i.av = icmp eq i32 %i.aq, 1
  %i.aw = select i1 %i.av, i32 5, i32 1
  br label %bb.ab

bb.h:                                             ; preds = %bb.f
  %i.ax = load i32, ptr %i.z, align 8, !tbaa !765 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i.i.i, label %bb.ab, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = load ptr, ptr %i.x, align 8, !tbaa !84  ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ay, i64 8) ]
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.ay, align 8
  %i.az = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.ba = inttoptr i64 %i.az to ptr               ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 28
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = and i32 %i.bc, 126
  %i.be = icmp eq i32 %i.bd, 54
  %spec.select.i.i = select i1 %i.be, ptr %i.ba, ptr null
  %i.bf = icmp eq i32 %i.an, 5
  br i1 %i.bf, label %.lr.ph.preheader, label %.thread130

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.bg = zext i32 %i.ax to i64
  %.idx = shl nuw nsw i64 %i.bg, 3
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.idx ; 2 uses
  br label %.lr.ph.outer

.lr.ph.outer:                                     ; preds = %.thread, %.lr.ph.preheader
  %.065145.ph = phi i1 [ true, %.thread ], [ false, %.lr.ph.preheader ]
  %.sroa.093.0144.ph = phi ptr [ %i.bq, %.thread ], [ %i.ay, %.lr.ph.preheader ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.outer, %bb.k
  %.sroa.093.0144 = phi ptr [ %i.bp, %bb.k ], [ %.sroa.093.0144.ph, %.lr.ph.outer ] ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.sroa.093.0144, i64 8) ]
  %.0.copyload.i.i.i.i.i.i74 = load i64, ptr %.sroa.093.0144, align 8
  %i.bi = and i64 %.0.copyload.i.i.i.i.i.i74, -8
  %i.bj = inttoptr i64 %i.bi to ptr               ; 3 uses
  %i.bk = call noundef ptr @_ZN5clang4Sema21getAsTemplateNameDeclEPNS_9NamedDeclEbb(ptr noundef %i.bj, i1 noundef zeroext true, i1 noundef zeroext true) ; 3 uses
  %.not71 = icmp eq ptr %i.bk, null
  br i1 %.not71, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 28
  %i.bm = load i32, ptr %i.bl, align 4
  %i.bn = and i32 %i.bm, 127
  %i.bo = icmp eq i32 %i.bn, 72
  br i1 %i.bo, label %.thread, label %.thread130.thread

bb.k:                                             ; preds = %.lr.ph
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.093.0144, i64 8 ; 2 uses
  %.not140 = icmp eq ptr %i.bp, %i.bh
  br i1 %.not140, label %._crit_edge, label %.lr.ph

.thread:                                          ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.093.0144, i64 8 ; 2 uses
  %.not140160 = icmp eq ptr %i.bq, %i.bh
  br i1 %.not140160, label %.split, label %.lr.ph.outer

._crit_edge:                                      ; preds = %bb.k
  br i1 %.065145.ph, label %.split, label %.thread134

.thread134:                                       ; preds = %._crit_edge
  store i8 0, ptr %i.ai, align 1, !tbaa !875
  store i8 0, ptr %i.aj, align 4, !tbaa !876
  br label %bb.ab

.split:                                           ; preds = %.thread, %._crit_edge
  call void @_ZN5clang4Sema29FilterAcceptableTemplateNamesERNS_12LookupResultEbb(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(168) %11, i1 noundef zeroext true, i1 noundef zeroext true)
  br label %.thread130

.thread130.thread:                                ; preds = %bb.j
  %i.br = getelementptr inbounds nuw i8, ptr %i.bj, i64 28
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = and i32 %i.bs, 126
  %i.bu = icmp eq i32 %i.bt, 54
  %spec.select.i.i75 = select i1 %i.bu, ptr %i.bj, ptr null
  br label %bb.n

.thread130:                                       ; preds = %.split, %bb.i
  %i.bv = load ptr, ptr %i.x, align 8, !tbaa !84  ; 4 uses
  %i.bw = load i32, ptr %i.z, align 8, !tbaa !765 ; 2 uses
  %i.bx = icmp ugt i32 %i.bw, 1
  br i1 %i.bx, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.thread130
  %i.by = zext i32 %i.bw to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !864, !nonnull !865, !align !866
  %i.cc = call i64 @_ZNK5clang10ASTContext25getOverloadedTemplateNameENS_21UnresolvedSetIteratorES1_(ptr noundef nonnull align 8 dereferenceable(23904) %i.cb, ptr %i.bv, ptr nonnull %i.bz) #28
  store i8 0, ptr %i.ai, align 1, !tbaa !875
  store i8 0, ptr %i.aj, align 4, !tbaa !876
  br label %bb.x

bb.m:                                             ; preds = %.thread130
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bv, i64 8) ]
  %.0.copyload.i.i.i.i.i.i76 = load i64, ptr %i.bv, align 8
  %i.cd = and i64 %.0.copyload.i.i.i.i.i.i76, -8
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = call noundef ptr @_ZN5clang4Sema21getAsTemplateNameDeclEPNS_9NamedDeclEbb(ptr noundef %i.ce, i1 noundef zeroext true, i1 noundef zeroext true)
  br label %bb.n

bb.n:                                             ; preds = %.thread130.thread, %bb.m
  %.364167169 = phi ptr [ %spec.select.i.i, %bb.m ], [ %spec.select.i.i75, %.thread130.thread ] ; 2 uses
  %.4108 = phi ptr [ %i.cf, %bb.m ], [ %i.bk, %.thread130.thread ] ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.4108, i64 28 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4
  %i.ci = and i32 %i.ch, 127
  %i.cj = icmp eq i32 %i.ci, 29
  br i1 %i.cj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i8 1, ptr %8, align 1, !tbaa !860
  br label %bb.ab

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %.not73 = icmp eq ptr %.364167169, null
  br i1 %.not73, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZN5clang12TemplateNameC1EPNS_15UsingShadowDeclE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull %.364167169) #28
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  call void @_ZN5clang12TemplateNameC1EPNS_12TemplateDeclE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull %.4108) #28
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ck = load i64, ptr %12, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  %i.cl = load i32, ptr %2, align 8, !tbaa !877
  %i.cm = icmp ne i32 %i.cl, 0
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.co = load i32, ptr %i.cn, align 4
  %i.cp = icmp ne i32 %i.co, 0
  %i.cq = select i1 %i.cm, i1 %i.cp, i1 false
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.cr, align 8, !tbaa !867 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i, 0
  %or.cond = select i1 %i.cq, i1 %.not.i, i1 false
  br i1 %or.cond, label %bb.t, label %_ZNK5clang12CXXScopeSpec9isInvalidEv.exit.thread

_ZNK5clang12CXXScopeSpec9isInvalidEv.exit.thread: ; preds = %bb.s
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !864, !nonnull !865, !align !866
  %i.cu = call i64 @_ZNK5clang10ASTContext24getQualifiedTemplateNameENS_19NestedNameSpecifierEbNS_12TemplateNameE(ptr noundef nonnull align 8 dereferenceable(23904) %i.ct, i64 %.sroa.0.0.copyload.i.i.i, i1 noundef zeroext %3, i64 %i.ck) #28
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNK5clang12CXXScopeSpec9isInvalidEv.exit.thread
  %.sroa.087.0 = phi i64 [ %i.ck, %bb.s ], [ %i.cu, %_ZNK5clang12CXXScopeSpec9isInvalidEv.exit.thread ] ; 4 uses
  %i.cv = load i32, ptr %i.cg, align 4
  %i.cw = and i32 %i.cv, 127                      ; 2 uses
  switch i32 %i.cw, label %bb.w [
    i32 72, label %bb.u
    i32 69, label %bb.v
    i32 70, label %bb.x
  ]

bb.u:                                             ; preds = %bb.t
  store i8 0, ptr %i.ai, align 1, !tbaa !875
  store i8 0, ptr %i.aj, align 4, !tbaa !876
  br label %bb.x

bb.v:                                             ; preds = %bb.t
  %i.cx = getelementptr inbounds nuw i8, ptr %.4108, i64 80
  %i.cy = load i8, ptr %i.cx, align 8
  %i.cz = and i8 %i.cy, 7
  %i.da = zext nneg i8 %i.cz to i32
  br label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.db = icmp eq i32 %i.cw, 74
  %i.dc = select i1 %i.db, i32 6, i32 2
  br label %bb.x

bb.x:                                             ; preds = %bb.t, %bb.u, %bb.w, %bb.v, %bb.l
  %.sroa.087.1 = phi i64 [ %i.cc, %bb.l ], [ %.sroa.087.0, %bb.v ], [ %.sroa.087.0, %bb.t ], [ %.sroa.087.0, %bb.w ], [ %.sroa.087.0, %bb.u ] ; 2 uses
  %.170 = phi i32 [ 1, %bb.l ], [ %i.da, %bb.v ], [ 3, %bb.t ], [ %i.dc, %bb.w ], [ 1, %bb.u ]
  %i.dd = call noundef zeroext i1 @_ZN5clang34isPackProducingBuiltinTemplateNameENS_12TemplateNameE(i64 %.sroa.087.1) #28
  %i.de = icmp ne ptr %1, null
  %or.cond7 = and i1 %i.de, %i.dd
  br i1 %or.cond7, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !83
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i78 = load i32, ptr %i.v, align 8, !tbaa !58
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %i.di, i32 %.sroa.0.0.copyload.i78, i32 noundef 3386) #28
  %i.dj = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_15DeclarationNameEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %13, ptr noundef nonnull align 8 dereferenceable(8) %10) ; 0 uses
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.dk = inttoptr i64 %.sroa.087.1 to ptr
  store ptr %i.dk, ptr %7, align 8, !tbaa !874
  br label %bb.ab

bb.ab:                                            ; preds = %.thread134, %bb.aa, %bb.o, %bb.h, %bb.e, %bb.g
  %.3 = phi i32 [ 0, %bb.h ], [ %i.aw, %bb.g ], [ 0, %bb.e ], [ 0, %bb.o ], [ %.170, %bb.aa ], [ 0, %.thread134 ]
  %i.dl = load i8, ptr %i.ai, align 1, !tbaa !875, !range !878, !noundef !865
  %i.dm = trunc nuw i8 %i.dl to i1
  %.pre151 = load i32, ptr %11, align 8           ; 3 uses
  br i1 %i.dm, label %bb.ac, label %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i

bb.ac:                                            ; preds = %bb.ab
  %i.dn = icmp ne i32 %.pre151, 5
  %i.do = getelementptr inbounds nuw i8, ptr %11, i64 96
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = icmp ne ptr %i.dp, null
  %or.cond.i.i = select i1 %i.dn, i1 %i.dq, i1 false
  br i1 %or.cond.i.i, label %bb.ad, label %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i

bb.ad:                                            ; preds = %bb.ac
  %i.dr = load ptr, ptr %i.ac, align 8, !tbaa !869 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 216
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !879, !nonnull !865, !align !866
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 40
  %i.dv = load i64, ptr %i.du, align 8
  %i.dw = and i64 %i.dv, 18014398509481984
  %.not.i.i = icmp eq i64 %i.dw, 0
  br i1 %.not.i.i, label %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @_ZN5clang4Sema17CheckLookupAccessERKNS_12LookupResultE(ptr noundef nonnull align 8 dereferenceable(18640) %i.dr, ptr noundef nonnull align 8 dereferenceable(168) %11) #28
  %.pre = load i32, ptr %11, align 8
  br label %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i

end_hunk_0
