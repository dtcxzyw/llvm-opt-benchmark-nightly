Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaLookup?download=true
inline.NumInlined: 15494
inline.NumDeleted: 5921
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 59
begin_hunk_0_@_ZL18CppNamespaceLookupRN5clang4SemaERNS_12LookupResultERNS_10ASTContextEPKNS_11DeclContextERN12_GLOBAL__N_123UnqualUsingDirectiveSetE:bb.a

_ZSt13__lower_boundIPKN12_GLOBAL__N_116UnqualUsingEntryEPKN5clang11DeclContextEN9__gnu_cxx5__ops14_Iter_comp_valINS1_10ComparatorEEEET_SD_SD_RKT0_T1_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %.critedge.i.i.i
  %.011.lcssa.i.i.i.i = phi ptr [ %.014.i.i.i, %.critedge.i.i.i ], [ %.112.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %.idx = shl nuw nsw i64 %.01315.i.i.i, 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.w = add nuw nsw i64 %.idx29, 16
  %gepdiff = sub nsw i64 %.idx, %i.w
  %i.x = ashr exact i64 %gepdiff, 4               ; 2 uses
  %i.y = icmp sgt i64 %i.x, 0
  br i1 %i.y, label %.lr.ph.i26.i.i.i, label %_ZNK12_GLOBAL__N_123UnqualUsingDirectiveSet16getNamespacesForEPKN5clang11DeclContextE.exit

.lr.ph.i26.i.i.i:                                 ; preds = %_ZSt13__lower_boundIPKN12_GLOBAL__N_116UnqualUsingEntryEPKN5clang11DeclContextEN9__gnu_cxx5__ops14_Iter_comp_valINS1_10ComparatorEEEET_SD_SD_RKT0_T1_.exit.i.i.i, %.lr.ph.i26.i.i.i
  %.04.i27.i.i.i = phi i64 [ %.1.i32.i.i.i, %.lr.ph.i26.i.i.i ], [ %i.x, %_ZSt13__lower_boundIPKN12_GLOBAL__N_116UnqualUsingEntryEPKN5clang11DeclContextEN9__gnu_cxx5__ops14_Iter_comp_valINS1_10ComparatorEEEET_SD_SD_RKT0_T1_.exit.i.i.i ] ; 2 uses
  %.0113.i28.i.i.i = phi ptr [ %.112.i31.i.i.i, %.lr.ph.i26.i.i.i ], [ %i.v, %_ZSt13__lower_boundIPKN12_GLOBAL__N_116UnqualUsingEntryEPKN5clang11DeclContextEN9__gnu_cxx5__ops14_Iter_comp_valINS1_10ComparatorEEEET_SD_SD_RKT0_T1_.exit.i.i.i ] ; 2 uses
  %i.z = lshr i64 %.04.i27.i.i.i, 1               ; 3 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.0113.i28.i.i.i, i64 %i.z ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %.val13.i.i.i.i = load ptr, ptr %i.ab, align 8, !tbaa !1364
  %i.ac = icmp ult ptr %i.d, %.val13.i.i.i.i      ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ae = xor i64 %i.z, -1
  %i.af = add nsw i64 %.04.i27.i.i.i, %i.ae
  %.112.i31.i.i.i = select i1 %i.ac, ptr %.0113.i28.i.i.i, ptr %i.ad ; 2 uses
  %.1.i32.i.i.i = select i1 %i.ac, i64 %i.z, i64 %i.af ; 2 uses
  %i.ag = icmp sgt i64 %.1.i32.i.i.i, 0
  br i1 %i.ag, label %.lr.ph.i26.i.i.i, label %_ZNK12_GLOBAL__N_123UnqualUsingDirectiveSet16getNamespacesForEPKN5clang11DeclContextE.exit, !llvm.loop !9

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1.i.i.i = phi ptr [ %i.j, %bb.b ], [ %.014.i.i.i, %bb.c ]
  %.2.i.i.i = phi i64 [ %i.l, %bb.b ], [ %i.f, %bb.c ] ; 2 uses
  %i.ah = icmp sgt i64 %.2.i.i.i, 0
  br i1 %i.ah, label %.lr.ph.i.i.i, label %._crit_edge, !llvm.loop !10

_ZNK12_GLOBAL__N_123UnqualUsingDirectiveSet16getNamespacesForEPKN5clang11DeclContextE.exit: ; preds = %.lr.ph.i26.i.i.i, %_ZSt13__lower_boundIPKN12_GLOBAL__N_116UnqualUsingEntryEPKN5clang11DeclContextEN9__gnu_cxx5__ops14_Iter_comp_valINS1_10ComparatorEEEET_SD_SD_RKT0_T1_.exit.i.i.i
  %.sroa.3.0.i.i.i = phi ptr [ %i.v, %_ZSt13__lower_boundIPKN12_GLOBAL__N_116UnqualUsingEntryEPKN5clang11DeclContextEN9__gnu_cxx5__ops14_Iter_comp_valINS1_10ComparatorEEEET_SD_SD_RKT0_T1_.exit.i.i.i ], [ %.112.i31.i.i.i, %.lr.ph.i26.i.i.i ] ; 2 uses
  %.not6 = icmp eq ptr %.011.lcssa.i.i.i.i, %.sroa.3.0.i.i.i
  br i1 %.not6, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.d, %.lr.ph, %bb.a, %_ZNK12_GLOBAL__N_123UnqualUsingDirectiveSet16getNamespacesForEPKN5clang11DeclContextE.exit
  %.015.lcssa = phi i1 [ %i.a, %_ZNK12_GLOBAL__N_123UnqualUsingDirectiveSet16getNamespacesForEPKN5clang11DeclContextE.exit ], [ %spec.select, %.lr.ph ], [ %i.a, %bb.a ], [ %i.a, %bb.d ]
  tail call void @_ZN5clang12LookupResult11resolveKindEv(ptr noundef nonnull align 8 dereferenceable(168) %1)
  ret i1 %.015.lcssa

.lr.ph:                                           ; preds = %_ZNK12_GLOBAL__N_123UnqualUsingDirectiveSet16getNamespacesForEPKN5clang11DeclContextE.exit, %.lr.ph
  %.08 = phi ptr [ %i.aj, %.lr.ph ], [ %.011.lcssa.i.i.i.i, %_ZNK12_GLOBAL__N_123UnqualUsingDirectiveSet16getNamespacesForEPKN5clang11DeclContextE.exit ] ; 2 uses
  %.0157 = phi i1 [ %spec.select, %.lr.ph ], [ %i.a, %_ZNK12_GLOBAL__N_123UnqualUsingDirectiveSet16getNamespacesForEPKN5clang11DeclContextE.exit ]
  %.0.val = load ptr, ptr %.08, align 8, !tbaa !1365
  %i.ai = tail call fastcc noundef zeroext i1 @_ZL12LookupDirectRN5clang4SemaERNS_12LookupResultEPKNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 8 dereferenceable(168) %1, ptr noundef %.0.val)
  %spec.select = select i1 %i.ai, i1 true, i1 %.0157 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.08, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.aj, %.sroa.3.0.i.i.i
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5clang4Sema19LookupQualifiedNameERNS_12LookupResultEPNS_11DeclContextEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 8 dereferenceable(168) %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::SmallVector.2079", align 8 ; 12 uses
  %5 = alloca %"class.llvm::SmallPtrSet.1327", align 8 ; 12 uses
  %6 = alloca %"struct.clang::DeclContext::udir_iterator", align 8 ; 6 uses
  %7 = alloca %"class.clang::LookupResult", align 8 ; 28 uses
  %8 = alloca %"struct.clang::DeclContext::udir_iterator", align 8 ; 6 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %9 = alloca %class.anon.1482, align 8           ; 5 uses
  %10 = alloca %"class.clang::CXXBasePaths", align 8 ; 27 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %11 = alloca %class.anon.1485, align 8          ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.c, align 8, !tbaa !771
  %.not255 = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not255, label %bb.bi, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.e = load i16, ptr %i.d, align 8              ; 3 uses
  %i.f = and i16 %i.e, 4096
  %i.g = or i16 %i.e, 4096
  store i16 %i.g, ptr %i.d, align 8
  %i.h = and i16 %i.e, 127
  %i.i = add nsw i16 %i.h, -63
  %i.j = icmp ult i16 %i.i, -3                    ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %2, i64 -64 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 3 uses
  %i.m = load i8, ptr %i.l, align 8, !range !769
  %i.n = trunc nuw i8 %i.m to i1
  %or.cond = select i1 %3, i1 true, i1 %i.n
  br i1 %or.cond, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i.i76 = load i64, ptr %i.c, align 8, !tbaa !771 ; 2 uses
  %i.o = and i64 %.sroa.0.0.copyload.i.i76, 7
  %cond = icmp eq i64 %i.o, 5
  br i1 %cond, label %_ZNK5clang15DeclarationName14getCXXNameTypeEv.exit, label %.critedge

_ZNK5clang15DeclarationName14getCXXNameTypeEv.exit: ; preds = %bb.c
  %i.p = and i64 %.sroa.0.0.copyload.i.i76, -8
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !1145
  %i.t = and i64 %i.s, -16
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load ptr, ptr %i.u, align 16, !tbaa !1184
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 17
  %i.x = load i16, ptr %i.w, align 1
  %i.y = and i16 %i.x, 4
  %.not256 = icmp eq i16 %i.y, 0
  br i1 %.not256, label %.critedge, label %.critedge72

.critedge72:                                      ; preds = %_ZNK5clang15DeclarationName14getCXXNameTypeEv.exit
  store i32 1, ptr %1, align 8, !tbaa !1151
  br label %switch.lookup

.critedge:                                        ; preds = %bb.c, %_ZNK5clang15DeclarationName14getCXXNameTypeEv.exit, %bb.b
  %i.z = tail call fastcc noundef zeroext i1 @_ZL12LookupDirectRN5clang4SemaERNS_12LookupResultEPKNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 8 dereferenceable(168) %1, ptr noundef nonnull %2)
  br i1 %i.z, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.critedge
  tail call void @_ZN5clang12LookupResult11resolveKindEv(ptr noundef nonnull align 8 dereferenceable(168) %1)
  br i1 %i.j, label %switch.lookup, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr %i.k, ptr %i.aa, align 8, !tbaa !1349
  br label %switch.lookup

bb.f:                                             ; preds = %.critedge
  %i.ab = load i8, ptr %i.l, align 8, !tbaa !768, !range !769, !noundef !766
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %switch.lookup, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = load i16, ptr %i.d, align 8
  %i.ae = and i16 %i.ad, 127
  switch i16 %i.ae, label %bb.am [
    i16 78, label %_ZN4llvm15SmallPtrSetImplIPN5clang11DeclContextEE6insertES3_.exit179
    i16 0, label %_ZN4llvm15SmallPtrSetImplIPN5clang11DeclContextEE6insertES3_.exit179
  ]

_ZN4llvm15SmallPtrSetImplIPN5clang11DeclContextEE6insertES3_.exit179: ; preds = %bb.g, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.af, ptr %4, align 8, !tbaa !1142
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 10 uses
  store i32 0, ptr %i.ag, align 8, !tbaa !1150
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  store i32 8, ptr %i.ah, align 4, !tbaa !1152
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %.ptr257 = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr %.ptr257, ptr %5, align 8, !tbaa !1144
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i32 8, ptr %i.ai, align 8, !tbaa !1215
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store i8 1, ptr %i.ak, align 8, !tbaa !1143
  store i32 1, ptr %i.aj, align 4, !tbaa !1216, !noalias !2159
  store ptr %2, ptr %.ptr257, align 8, !tbaa !1341, !noalias !2159
  %i.al = call { i64, i64 } @_ZNK5clang11DeclContext16using_directivesEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #28, !inline_history !2152 ; 2 uses
  %i.am = extractvalue { i64, i64 } %i.al, 0      ; 2 uses
  %i.an = extractvalue { i64, i64 } %i.al, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  store i64 %i.am, ptr %6, align 8
  %.not258269 = icmp eq i64 %i.am, %i.an
  br i1 %.not258269, label %._crit_edge, label %.lr.ph270

._crit_edge:                                      ; preds = %_ZN4llvm21iterator_adaptor_baseIN5clang11DeclContext13udir_iteratorENS1_12DeclListNode8iteratorESt20forward_iterator_tagPNS1_18UsingDirectiveDeclElPS8_RS8_EppEv.exit114, %_ZN4llvm15SmallPtrSetImplIPN5clang11DeclContextEE6insertES3_.exit179
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  store i32 0, ptr %7, align 8, !tbaa !1151
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 0, ptr %i.ao, align 4, !tbaa !1188
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !1142
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store i32 0, ptr %i.ar, align 8, !tbaa !1150
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 8, ptr %i.as, align 4, !tbaa !1152
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 88 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 112 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i8 0, i64 24, i1 false)
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !87
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !87
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !tbaa.struct !1366
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 144
  store i32 0, ptr %i.ay, align 8, !tbaa !1367
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 148
  store i32 0, ptr %i.az, align 4, !tbaa !1367
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 152
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.bc = load <2 x i32>, ptr %i.bb, align 8, !tbaa !1145
  store <2 x i32> %i.bc, ptr %i.ba, align 8, !tbaa !1145
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 160
  %i.be = load i8, ptr %i.l, align 8, !tbaa !768, !range !769, !noundef !766
  store i8 %i.be, ptr %i.bd, align 8, !tbaa !768
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 161
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 161
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 163
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 164
  %12 = load <2 x i8>, ptr %i.bg, align 1, !tbaa !1296
  %13 = shufflevector <2 x i8> %12, <2 x i8> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bj = shufflevector <4 x i8> %13, <4 x i8> <i8 poison, i8 poison, i8 0, i8 0>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i8> %i.bj, ptr %i.bf, align 1, !tbaa !1296
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 165
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 165
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !1141, !range !769, !noundef !766
  store i8 %i.bm, ptr %i.bk, align 1, !tbaa !1141
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 166 ; 2 uses
  store i8 0, ptr %i.bn, align 2, !tbaa !1348
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 167
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 167
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !1368, !range !769, !noundef !766
  store i8 %i.bq, ptr %i.bo, align 1, !tbaa !1368
  %i.br = load i32, ptr %i.ag, align 8, !tbaa !1150 ; 2 uses
  %.not.i108275 = icmp eq i32 %i.br, 0
  br i1 %.not.i108275, label %_ZL36LookupQualifiedNameInUsingDirectivesRN5clang4SemaERNS_12LookupResultEPNS_11DeclContextE.exit, label %.lr.ph280

.lr.ph280:                                        ; preds = %._crit_edge
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.m

.lr.ph270:                                        ; preds = %_ZN4llvm15SmallPtrSetImplIPN5clang11DeclContextEE6insertES3_.exit179, %_ZN4llvm21iterator_adaptor_baseIN5clang11DeclContext13udir_iteratorENS1_12DeclListNode8iteratorESt20forward_iterator_tagPNS1_18UsingDirectiveDeclElPS8_RS8_EppEv.exit114
  %i.bv = call noundef ptr @_ZNK5clang11DeclContext13udir_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #28, !inline_history !2152 ; 3 uses
  %i.bw = call noundef ptr @_ZN5clang18UsingDirectiveDecl21getNominatedNamespaceEv(ptr noundef nonnull align 8 dereferenceable(88) %i.bv) #28, !inline_history !2152
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 88
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !2162 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.0.copyload.i.i.i.i.i.i145 = load i64, ptr %i.bz, align 8
  %i.ca = and i64 %.0.copyload.i.i.i.i.i.i145, 6
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %_ZN5clang4Sema9isVisibleEPKNS_9NamedDeclE.exit147.thread, label %_ZN5clang4Sema9isVisibleEPKNS_9NamedDeclE.exit147

_ZN5clang4Sema9isVisibleEPKNS_9NamedDeclE.exit147: ; preds = %.lr.ph270
  %i.cc = call noundef zeroext i1 @_ZN5clang12LookupResult16isAcceptableSlowERNS_4SemaEPNS_9NamedDeclENS1_14AcceptableKindE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %i.bv, i32 noundef 0) #31, !inline_history !1185
  br i1 %i.cc, label %_ZN5clang4Sema9isVisibleEPKNS_9NamedDeclE.exit147.thread, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang13NamespaceDeclELb1EE9push_backES3_.exit116

_ZN5clang4Sema9isVisibleEPKNS_9NamedDeclE.exit147.thread: ; preds = %.lr.ph270, %_ZN5clang4Sema9isVisibleEPKNS_9NamedDeclE.exit147
  %i.cd = icmp eq ptr %i.by, null
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 48
  %spec.select.i79 = select i1 %i.cd, ptr null, ptr %i.ce ; 3 uses
  %i.cf = load i8, ptr %i.ak, align 8, !tbaa !1143, !range !769, !noalias !2163, !noundef !766
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.h, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i117

bb.h:                                             ; preds = %_ZN5clang4Sema9isVisibleEPKNS_9NamedDeclE.exit147.thread
  %i.ch = load ptr, ptr %5, align 8, !tbaa !1144, !noalias !2163 ; 2 uses
  %i.ci = load i32, ptr %i.aj, align 4, !tbaa !1216, !noalias !2163 ; 4 uses
  %i.cj = zext i32 %i.ci to i64
  %.idx.i.i132 = shl nuw nsw i64 %i.cj, 3
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.idx.i.i132 ; 2 uses
  %.not22.i.i133 = icmp eq i32 %i.ci, 0
  br i1 %.not22.i.i133, label %._crit_edge.i.i139, label %.lr.ph.i.i134

.lr.ph.i.i134:                                    ; preds = %bb.h, %.critedge.i.i137
  %.023.i.i135 = phi ptr [ %i.cm, %.critedge.i.i137 ], [ %i.ch, %bb.h ] ; 2 uses
  %i.cl = load ptr, ptr %.023.i.i135, align 8, !tbaa !1341, !noalias !2163
  %.not15.i.i136 = icmp eq ptr %i.cl, %spec.select.i79
  br i1 %.not15.i.i136, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang13NamespaceDeclELb1EE9push_backES3_.exit116, label %.critedge.i.i137

.critedge.i.i137:                                 ; preds = %.lr.ph.i.i134
  %i.cm = getelementptr inbounds nuw i8, ptr %.023.i.i135, i64 8 ; 2 uses
  %.not.i.i138 = icmp eq ptr %i.cm, %i.ck
  br i1 %.not.i.i138, label %._crit_edge.i.i139, label %.lr.ph.i.i134

._crit_edge.i.i139:                               ; preds = %.critedge.i.i137, %bb.h
  %i.cn = load i32, ptr %i.ai, align 8, !tbaa !1215, !noalias !2163
  %i.co = icmp ult i32 %i.ci, %i.cn
  br i1 %i.co, label %.critedge339, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i117

.critedge339:                                     ; preds = %._crit_edge.i.i139
  %i.cp = add nuw i32 %i.ci, 1
  store i32 %i.cp, ptr %i.aj, align 4, !tbaa !1216, !noalias !2163
  store ptr %spec.select.i79, ptr %i.ck, align 8, !tbaa !1341, !noalias !2163
  br label %bb.i

_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i117: ; preds = %._crit_edge.i.i139, %_ZN5clang4Sema9isVisibleEPKNS_9NamedDeclE.exit147.thread
  %i.cq = call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17) %5, ptr noundef %spec.select.i79) #28, !noalias !2163
  %i.cr = extractvalue { ptr, i8 } %i.cq, 1
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %bb.i, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang13NamespaceDeclELb1EE9push_backES3_.exit116

bb.i:                                             ; preds = %.critedge339, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i117
  %i.ct = load i32, ptr %i.ag, align 8, !tbaa !1150 ; 2 uses
  %i.cu = load i32, ptr %i.ah, align 4, !tbaa !1152
  %.not.i115 = icmp ult i32 %i.ct, %i.cu
  br i1 %.not.i115, label %bb.k, label %bb.j, !prof !1186

bb.j:                                             ; preds = %bb.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang13NamespaceDeclELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.by)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang13NamespaceDeclELb1EE9push_backES3_.exit116

bb.k:                                             ; preds = %bb.i
  %i.cv = zext i32 %i.ct to i64
  %i.cw = load ptr, ptr %4, align 8, !tbaa !1142
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cv
  store ptr %i.by, ptr %i.cx, align 1
  %i.cy = load i32, ptr %i.ag, align 8, !tbaa !1150
  %i.cz = add i32 %i.cy, 1
  store i32 %i.cz, ptr %i.ag, align 8, !tbaa !1150
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang13NamespaceDeclELb1EE9push_backES3_.exit116

_ZN4llvm23SmallVectorTemplateBaseIPN5clang13NamespaceDeclELb1EE9push_backES3_.exit116: ; preds = %.lr.ph.i.i134, %_ZN5clang4Sema9isVisibleEPKNS_9NamedDeclE.exit147, %bb.k, %bb.j, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i117
  %.sroa.0.0.copyload.i.i.i109 = load i64, ptr %6, align 8 ; 2 uses
  %i.da = and i64 %.sroa.0.0.copyload.i.i.i109, 4
  %.not.i.i.i.i110 = icmp eq i64 %i.da, 0
  %i.db = and i64 %.sroa.0.0.copyload.i.i.i109, -5 ; 2 uses
  %.not3.i.i111 = icmp eq i64 %i.db, 0
  %.not.i.i112 = or i1 %.not.i.i.i.i110, %.not3.i.i111
  br i1 %.not.i.i112, label %_ZN4llvm21iterator_adaptor_baseIN5clang11DeclContext13udir_iteratorENS1_12DeclListNode8iteratorESt20forward_iterator_tagPNS1_18UsingDirectiveDeclElPS8_RS8_EppEv.exit114, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang13NamespaceDeclELb1EE9push_backES3_.exit116
  %i.dc = inttoptr i64 %i.db to ptr
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load i64, ptr %i.dd, align 8
  br label %_ZN4llvm21iterator_adaptor_baseIN5clang11DeclContext13udir_iteratorENS1_12DeclListNode8iteratorESt20forward_iterator_tagPNS1_18UsingDirectiveDeclElPS8_RS8_EppEv.exit114

_ZN4llvm21iterator_adaptor_baseIN5clang11DeclContext13udir_iteratorENS1_12DeclListNode8iteratorESt20forward_iterator_tagPNS1_18UsingDirectiveDeclElPS8_RS8_EppEv.exit114: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang13NamespaceDeclELb1EE9push_backES3_.exit116, %bb.l
  %storemerge.i.i113 = phi i64 [ %i.de, %bb.l ], [ 0, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang13NamespaceDeclELb1EE9push_backES3_.exit116 ] ; 2 uses
  store i64 %storemerge.i.i113, ptr %6, align 8
  %.not258 = icmp eq i64 %storemerge.i.i113, %i.an
  br i1 %.not258, label %._crit_edge, label %.lr.ph270

bb.m:                                             ; preds = %.lr.ph280, %.thread231
  %i.df = phi i32 [ %i.br, %.lr.ph280 ], [ %i.gf, %.thread231 ] ; 2 uses
  %.0.i78278 = phi i1 [ false, %.lr.ph280 ], [ %.1.i, %.thread231 ]
  %.039.i277 = phi i1 [ false, %.lr.ph280 ], [ %.2.i235, %.thread231 ] ; 2 uses
  %.041.i276 = phi i1 [ false, %.lr.ph280 ], [ %.243.i234, %.thread231 ] ; 3 uses
  %i.dg = load ptr, ptr %4, align 8, !tbaa !1142
  %i.dh = zext i32 %i.df to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.dh
  %i.dj = getelementptr inbounds i8, ptr %i.di, i64 -8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !1369 ; 2 uses
  %i.dl = add i32 %i.df, -1
  store i32 %i.dl, ptr %i.ag, align 8, !tbaa !1150
  %i.dm = load i32, ptr %i.bs, align 8, !tbaa !1150
  %.not.i.i.i107 = icmp eq i32 %i.dm, 0           ; 3 uses
  %i.dn = select i1 %.not.i.i.i107, ptr %1, ptr %7 ; 3 uses
  %i.do = icmp eq ptr %i.dk, null
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 48 ; 2 uses
  %i.dq = select i1 %i.do, ptr null, ptr %i.dp
  %i.dr = call fastcc noundef zeroext i1 @_ZL12LookupDirectRN5clang4SemaERNS_12LookupResultEPKNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 8 dereferenceable(168) %i.dn, ptr noundef %i.dq), !inline_history !2152
  br i1 %i.dr, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  call void @_ZN5clang12LookupResult11resolveKindEv(ptr noundef nonnull align 8 dereferenceable(168) %i.dn), !inline_history !2152
  %i.ds = load i32, ptr %i.dn, align 8, !tbaa !1151
  %i.dt = icmp eq i32 %i.ds, 2
  br i1 %i.dt, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %.sroa.sel = select i1 %.not.i.i.i107, ptr %.sroa.gep, ptr %i.ap
  %i.du = load ptr, ptr %.sroa.sel, align 8, !tbaa !1142 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.du, i64 8) ]
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.du, align 8
  %i.dv = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -8
  %i.dw = inttoptr i64 %i.dv to ptr               ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 28
  %i.dy = load i32, ptr %i.dx, align 4
  %i.dz = and i32 %i.dy, 127                      ; 2 uses
  switch i32 %i.dz, label %_ZNK5clang12LookupResult15isSingleTagDeclEv.exit [
    i32 54, label %bb.p
    i32 55, label %bb.p
    i32 77, label %bb.p
    i32 79, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o, %bb.o, %bb.o
  %i.ea = call noundef ptr @_ZN5clang9NamedDecl21getUnderlyingDeclImplEv(ptr noundef nonnull align 8 dereferenceable(48) %i.dw) #29
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ea, i64 28
  %.pre.i106 = load i32, ptr %.phi.trans.insert.i, align 4
  %.pre.i106.fr = freeze i32 %.pre.i106
  %.pre1.i = and i32 %.pre.i106.fr, 127
  br label %_ZNK5clang12LookupResult15isSingleTagDeclEv.exit

_ZNK5clang12LookupResult15isSingleTagDeclEv.exit: ; preds = %bb.o, %bb.p
  %.pre-phi.i = phi i32 [ %i.dz, %bb.o ], [ %.pre1.i, %bb.p ]
  %i.eb = add nsw i32 %.pre-phi.i, -59
  %i.ec = icmp ult i32 %i.eb, 5                   ; 2 uses
  %spec.select = select i1 %i.ec, i1 true, i1 %.041.i276
  %not. = xor i1 %i.ec, true
  %spec.select263 = select i1 %not., i1 true, i1 %.039.i277
  br label %.thread

.thread:                                          ; preds = %_ZNK5clang12LookupResult15isSingleTagDeclEv.exit, %bb.n
  %i.ed = phi i1 [ %.041.i276, %bb.n ], [ %spec.select, %_ZNK5clang12LookupResult15isSingleTagDeclEv.exit ] ; 2 uses
  %i.ee = phi i1 [ true, %bb.n ], [ %spec.select263, %_ZNK5clang12LookupResult15isSingleTagDeclEv.exit ] ; 2 uses
  br i1 %.not.i.i.i107, label %.thread231, label %bb.q

bb.q:                                             ; preds = %.thread
  %i.ef = load ptr, ptr %i.ap, align 8, !tbaa !1142
  %i.eg = load i32, ptr %i.ar, align 8, !tbaa !1150 ; 3 uses
  %i.eh = zext i32 %i.eg to i64                   ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.eh, 3
  %i.ei = load i32, ptr %i.bs, align 8, !tbaa !1150 ; 2 uses
  %i.ej = zext i32 %i.ei to i64
  %i.ek = add nuw nsw i64 %i.ej, %i.eh            ; 2 uses
  %i.el = load i32, ptr %i.bt, align 4, !tbaa !1152
  %i.em = zext i32 %i.el to i64
  %i.en = icmp samesign ugt i64 %i.ek, %i.em
end_hunk_0
