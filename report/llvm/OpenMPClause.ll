Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/OpenMPClause?download=true
inline.NumInlined: 5877
inline.NumDeleted: 2473
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN5clang16OMPClausePrinter22VisitOMPNumTasksClauseEPNS_17OMPNumTasksClauseE:bb.a
  %i.ar = load ptr, ptr %0, align 8, !tbaa !647, !nonnull !376, !align !651
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !661, !nonnull !376, !align !651
  store ptr @.str.2, ptr %2, align 8, !tbaa !662
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 1, ptr %i.au, align 8, !tbaa !664
  tail call void @_ZNK5clang4Stmt11printPrettyERN4llvm11raw_ostreamEPNS_13PrinterHelperERKNS_14PrintingPolicyEjNS1_9StringRefEPKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull align 8 dereferenceable(48) %i.ar, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(16) %i.at, i32 noundef 0, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %2, ptr noundef null) #21
  %i.av = load ptr, ptr %0, align 8, !tbaa !647, !nonnull !376, !align !651 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !652
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 32 ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !656 ; 2 uses
  %i.ba = icmp eq ptr %i.ax, %i.az
  br i1 %i.ba, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit11
  %i.bb = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.av, ptr noundef nonnull @.str.3, i64 noundef 1) #21 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit15

bb.k:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit11
  store i8 41, ptr %i.az, align 1
  %i.bc = load ptr, ptr %i.ay, align 8, !tbaa !656
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  store ptr %i.bd, ptr %i.ay, align 8, !tbaa !656
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit15

_ZN4llvm11raw_ostreamlsEPKc.exit15:               ; preds = %bb.j, %bb.k
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang16OMPClausePrinter18VisitOMPHintClauseEPNS_13OMPHintClauseE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.llvm::StringRef", align 8   ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !647, !nonnull !376, !align !651 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !652
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !656  ; 2 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ult i64 %i.h, 5
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull @.str.69, i64 noundef 5) #21 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.e, ptr noundef nonnull align 1 dereferenceable(5) @.str.69, i64 5, i1 false)
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !656
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 5
  store ptr %i.l, ptr %i.d, align 8, !tbaa !656
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !743
  %i.o = load ptr, ptr %0, align 8, !tbaa !647, !nonnull !376, !align !651
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !661, !nonnull !376, !align !651
  store ptr @.str.2, ptr %2, align 8, !tbaa !662
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 1, ptr %i.r, align 8, !tbaa !664
  tail call void @_ZNK5clang4Stmt11printPrettyERN4llvm11raw_ostreamEPNS_13PrinterHelperERKNS_14PrintingPolicyEjNS1_9StringRefEPKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i32 noundef 0, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %2, ptr noundef null) #21
  %i.s = load ptr, ptr %0, align 8, !tbaa !647, !nonnull !376, !align !651 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !652
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !656  ; 2 uses
  %i.x = icmp eq ptr %i.u, %i.w
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.y = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.s, ptr noundef nonnull @.str.3, i64 noundef 1) #21 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit4

bb.e:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  store i8 41, ptr %i.w, align 1
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !656
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  store ptr %i.aa, ptr %i.v, align 8, !tbaa !656
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit4

_ZN4llvm11raw_ostreamlsEPKc.exit4:                ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang16OMPClausePrinter18VisitOMPInitClauseEPNS_13OMPInitClauseE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.llvm::StringRef", align 8   ; 5 uses
  %3 = alloca %"class.llvm::StringRef", align 8   ; 5 uses
  %4 = alloca %"struct.clang::OMPInitClause::PrefView", align 8 ; 6 uses
  %5 = alloca %"struct.clang::OMPInitClause::PrefView", align 8 ; 6 uses
  %6 = alloca %"class.llvm::StringRef", align 8   ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !647, !nonnull !376, !align !651 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !652
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !656  ; 2 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ult i64 %i.h, 5
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull @.str.70, i64 noundef 5) #21 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.e, ptr noundef nonnull align 1 dereferenceable(5) @.str.70, i64 5, i1 false)
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !656
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 5
  store ptr %i.l, ptr %i.d, align 8, !tbaa !656
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !146, !noalias !745
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.q = icmp eq i32 %i.n, 1
  br i1 %i.q, label %_ZN4llvm11raw_ostreamlsEPKc.exit36, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.r = load ptr, ptr %0, align 8, !tbaa !647, !nonnull !376, !align !651 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !652
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !656  ; 2 uses
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = icmp ult i64 %i.y, 12
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef nonnull @.str.71, i64 noundef 12) #21 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit12

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.v, ptr noundef nonnull align 1 dereferenceable(12) @.str.71, i64 12, i1 false)
  %i.ab = load ptr, ptr %i.u, align 8, !tbaa !656
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store ptr %i.ac, ptr %i.u, align 8, !tbaa !656
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit12

_ZN4llvm11raw_ostreamlsEPKc.exit12:               ; preds = %bb.e, %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.ae = load i8, ptr %i.ad, align 2, !tbaa !613, !range !375, !noundef !376
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = load i32, ptr %i.m, align 4, !tbaa !146, !noalias !376 ; 3 uses
  %i.ah = add i32 %i.ag, -1                       ; 5 uses
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  br i1 %i.af, label %bb.g, label %bb.k

bb.g:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit12
  %i.aj = load i32, ptr %i.p, align 4, !tbaa !148, !noalias !748
  %i.ak = add i32 %i.aj, %i.ag
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.al ; 3 uses
  %i.an = load ptr, ptr %0, align 8, !tbaa !647, !nonnull !376, !align !651 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.ao = icmp eq i32 %i.ah, 0
  br i1 %i.ao, label %"_ZN4llvm15interleaveCommaINS_14iterator_rangeINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZNK5clang13OMPInitClause5prefsEvEUljE_NS7_8PrefViewEEEEEZNS6_16OMPClausePrinter18VisitOMPInitClauseEPS7_E3$_0NS_11raw_ostreamES9_EEvRKT_RT1_T0_.exit", label %_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZNK5clang13OMPInitClause5prefsEvEUljE_NS5_8PrefViewEEdeEv.exit.i.i.i

_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZNK5clang13OMPInitClause5prefsEvEUljE_NS5_8PrefViewEEdeEv.exit.i.i.i: ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !751)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !754)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !757)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !760)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !763)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !766)
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !17, !noalias !769
  store ptr %i.aq, ptr %4, align 8, !tbaa !770, !alias.scope !769
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.as = zext i32 %i.ag to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.as
  %i.au = load i32, ptr %i.am, align 4, !tbaa !330, !noalias !769
  %i.av = zext i32 %i.au to i64
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !772, !alias.scope !769
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !359, !alias.scope !769
  tail call fastcc void @"_ZZN5clang16OMPClausePrinter18VisitOMPInitClauseEPNS_13OMPInitClauseEENK3$_0clENS1_8PrefViewE"(ptr nonnull readonly %0, ptr noundef nonnull byval(%"struct.clang::OMPInitClause::PrefView") align 8 %4)
  %.not2.i.i.i = icmp eq i32 %i.ah, 1
  br i1 %.not2.i.i.i, label %"_ZN4llvm15interleaveCommaINS_14iterator_rangeINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZNK5clang13OMPInitClause5prefsEvEUljE_NS7_8PrefViewEEEEEZNS6_16OMPClausePrinter18VisitOMPInitClauseEPS7_E3$_0NS_11raw_ostreamES9_EEvRKT_RT1_T0_.exit", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZNK5clang13OMPInitClause5prefsEvEUljE_NS5_8PrefViewEEdeEv.exit.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.h

bb.h:                                             ; preds = %_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZNK5clang13OMPInitClause5prefsEvEUljE_NS5_8PrefViewEEdeEv.exit6.i.i.i, %.lr.ph.i.i.i
  %storemerge3.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i ], [ %9, %_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZNK5clang13OMPInitClause5prefsEvEUljE_NS5_8PrefViewEEdeEv.exit6.i.i.i ] ; 3 uses
  %i.bb = load ptr, ptr %i.ax, align 8, !tbaa !652
  %i.bc = load ptr, ptr %i.ay, align 8, !tbaa !656 ; 2 uses
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = icmp ult i64 %i.bf, 2
  br i1 %i.bg, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bh = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.an, ptr noundef nonnull @.str.10, i64 noundef 2) #21 ; 0 uses
  br label %_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZNK5clang13OMPInitClause5prefsEvEUljE_NS5_8PrefViewEEdeEv.exit6.i.i.i

bb.j:                                             ; preds = %bb.h
  store i16 8236, ptr %i.bc, align 1
  %i.bi = load ptr, ptr %i.ay, align 8, !tbaa !656
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  store ptr %i.bj, ptr %i.ay, align 8, !tbaa !656
  br label %_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZNK5clang13OMPInitClause5prefsEvEUljE_NS5_8PrefViewEEdeEv.exit6.i.i.i

_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZNK5clang13OMPInitClause5prefsEvEUljE_NS5_8PrefViewEEdeEv.exit6.i.i.i: ; preds = %bb.j, %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !773)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !776)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !779)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !782)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !785)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !788)
  %i.bk = add nuw nsw i64 %storemerge3.i.i.i, 4294967295
  %i.bl = and i64 %i.bk, 4294967295
  %7 = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.bl
  %8 = load i32, ptr %7, align 4, !tbaa !330, !noalias !791 ; 2 uses
  %9 = add nuw nsw i64 %storemerge3.i.i.i, 1      ; 3 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %9
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !17, !noalias !791
  store ptr %i.bn, ptr %5, align 8, !tbaa !770, !alias.scope !791
  %i.bo = load i32, ptr %i.m, align 8, !tbaa !146, !noalias !791
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.bp
  %i.br = zext i32 %8 to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.br
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %storemerge3.i.i.i
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !330, !noalias !791
  %i.bv = sub i32 %i.bu, %8
  %i.bw = zext i32 %i.bv to i64
  store ptr %i.bs, ptr %i.az, align 8, !tbaa !772, !alias.scope !791
  store i64 %i.bw, ptr %i.ba, align 8, !tbaa !359, !alias.scope !791
  tail call fastcc void @"_ZZN5clang16OMPClausePrinter18VisitOMPInitClauseEPNS_13OMPInitClauseEENK3$_0clENS1_8PrefViewE"(ptr nonnull readonly %0, ptr noundef nonnull byval(%"struct.clang::OMPInitClause::PrefView") align 8 %5)
  %.not.i.i.i = icmp eq i64 %9, %i.ai
  br i1 %.not.i.i.i, label %"_ZN4llvm15interleaveCommaINS_14iterator_rangeINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZNK5clang13OMPInitClause5prefsEvEUljE_NS7_8PrefViewEEEEEZNS6_16OMPClausePrinter18VisitOMPInitClauseEPS7_E3$_0NS_11raw_ostreamES9_EEvRKT_RT1_T0_.exit", label %bb.h, !llvm.loop !792

"_ZN4llvm15interleaveCommaINS_14iterator_rangeINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZNK5clang13OMPInitClause5prefsEvEUljE_NS7_8PrefViewEEEEEZNS6_16OMPClausePrinter18VisitOMPInitClauseEPS7_E3$_0NS_11raw_ostreamES9_EEvRKT_RT1_T0_.exit": ; preds = %_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZNK5clang13OMPInitClause5prefsEvEUljE_NS5_8PrefViewEEdeEv.exit6.i.i.i, %bb.g, %_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZNK5clang13OMPInitClause5prefsEvEUljE_NS5_8PrefViewEEdeEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %"_ZN4llvm10interleaveINS_14iterator_rangeINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZNK5clang13OMPInitClause5prefsEvEUljE_NS7_8PrefViewEEEEEZNS6_16OMPClausePrinter18VisitOMPInitClauseEPS7_E3$_1NS_11raw_ostreamES9_EEvRKT_RT1_T0_RKNS_9StringRefE.exit"

bb.k:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit12
  %i.bx = load ptr, ptr %0, align 8, !tbaa !647, !nonnull !376, !align !651 ; 4 uses
  %i.by = icmp eq i32 %i.ah, 0
  br i1 %i.by, label %"_ZN4llvm10interleaveINS_14iterator_rangeINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZNK5clang13OMPInitClause5prefsEvEUljE_NS7_8PrefViewEEEEEZNS6_16OMPClausePrinter18VisitOMPInitClauseEPS7_E3$_1NS_11raw_ostreamES9_EEvRKT_RT1_T0_RKNS_9StringRefE.exit", label %_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZNK5clang13OMPInitClause5prefsEvEUljE_NS5_8PrefViewEEdeEv.exit.i.i

_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZNK5clang13OMPInitClause5prefsEvEUljE_NS5_8PrefViewEEdeEv.exit.i.i: ; preds = %bb.k
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !17, !noalias !793 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %.not.i.i.i33 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i33, label %"_ZZN5clang16OMPClausePrinter18VisitOMPInitClauseEPNS_13OMPInitClauseEENK3$_1clENS1_8PrefViewE.exit.i.i", label %bb.l

bb.l:                                             ; preds = %_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZNK5clang13OMPInitClause5prefsEvEUljE_NS5_8PrefViewEEdeEv.exit.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !661, !nonnull !376, !align !651
  store ptr @.str.2, ptr %3, align 8, !tbaa !662
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1, ptr %i.cd, align 8, !tbaa !664
  tail call void @_ZNK5clang4Stmt11printPrettyERN4llvm11raw_ostreamEPNS_13PrinterHelperERKNS_14PrintingPolicyEjNS1_9StringRefEPKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, ptr noundef nonnull align 8 dereferenceable(48) %i.bx, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i32 noundef 0, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %3, ptr noundef null) #21
  br label %"_ZZN5clang16OMPClausePrinter18VisitOMPInitClauseEPNS_13OMPInitClauseEENK3$_1clENS1_8PrefViewE.exit.i.i"

"_ZZN5clang16OMPClausePrinter18VisitOMPInitClauseEPNS_13OMPInitClauseEENK3$_1clENS1_8PrefViewE.exit.i.i": ; preds = %bb.l, %_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZNK5clang13OMPInitClause5prefsEvEUljE_NS5_8PrefViewEEdeEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.not7.i.i = icmp eq i32 %i.ah, 1
  br i1 %.not7.i.i, label %"_ZN4llvm10interleaveINS_14iterator_rangeINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZNK5clang13OMPInitClause5prefsEvEUljE_NS7_8PrefViewEEEEEZNS6_16OMPClausePrinter18VisitOMPInitClauseEPS7_E3$_1NS_11raw_ostreamES9_EEvRKT_RT1_T0_RKNS_9StringRefE.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %"_ZZN5clang16OMPClausePrinter18VisitOMPInitClauseEPNS_13OMPInitClauseEENK3$_1clENS1_8PrefViewE.exit.i.i"
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bx, i64 32 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.m

bb.m:                                             ; preds = %"_ZZN5clang16OMPClausePrinter18VisitOMPInitClauseEPNS_13OMPInitClauseEENK3$_1clENS1_8PrefViewE.exit10.i.i", %.lr.ph.i.i
  %storemerge8.i.i = phi i64 [ 1, %.lr.ph.i.i ], [ %i.co, %"_ZZN5clang16OMPClausePrinter18VisitOMPInitClauseEPNS_13OMPInitClauseEENK3$_1clENS1_8PrefViewE.exit10.i.i" ]
  %i.ci = load ptr, ptr %i.ce, align 8, !tbaa !652
  %i.cj = load ptr, ptr %i.cf, align 8, !tbaa !656 ; 2 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cl = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.bx, ptr noundef nonnull @.str.17, i64 noundef 1) #21 ; 0 uses
  br label %"_ZZN4llvm10interleaveINS_14iterator_rangeINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZNK5clang13OMPInitClause5prefsEvEUljE_NS7_8PrefViewEEEEEZNS6_16OMPClausePrinter18VisitOMPInitClauseEPS7_E3$_1NS_11raw_ostreamES9_EEvRKT_RT1_T0_RKNS_9StringRefEENKUlvE_clEv.exit.i.i"

bb.o:                                             ; preds = %bb.m
  store i8 44, ptr %i.cj, align 1
  %i.cm = load ptr, ptr %i.cf, align 8, !tbaa !656
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 1
  store ptr %i.cn, ptr %i.cf, align 8, !tbaa !656
  br label %"_ZZN4llvm10interleaveINS_14iterator_rangeINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZNK5clang13OMPInitClause5prefsEvEUljE_NS7_8PrefViewEEEEEZNS6_16OMPClausePrinter18VisitOMPInitClauseEPS7_E3$_1NS_11raw_ostreamES9_EEvRKT_RT1_T0_RKNS_9StringRefEENKUlvE_clEv.exit.i.i"

"_ZZN4llvm10interleaveINS_14iterator_rangeINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZNK5clang13OMPInitClause5prefsEvEUljE_NS7_8PrefViewEEEEEZNS6_16OMPClausePrinter18VisitOMPInitClauseEPS7_E3$_1NS_11raw_ostreamES9_EEvRKT_RT1_T0_RKNS_9StringRefEENKUlvE_clEv.exit.i.i": ; preds = %bb.o, %bb.n
  %i.co = add i64 %storemerge8.i.i, 1             ; 3 uses
  %i.cp = and i64 %i.co, 4294967295
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.cp
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !17, !noalias !806 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %.not.i9.i.i = icmp eq ptr %i.cr, null
  br i1 %.not.i9.i.i, label %"_ZZN5clang16OMPClausePrinter18VisitOMPInitClauseEPNS_13OMPInitClauseEENK3$_1clENS1_8PrefViewE.exit10.i.i", label %bb.p

bb.p:                                             ; preds = %"_ZZN4llvm10interleaveINS_14iterator_rangeINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZNK5clang13OMPInitClause5prefsEvEUljE_NS7_8PrefViewEEEEEZNS6_16OMPClausePrinter18VisitOMPInitClauseEPS7_E3$_1NS_11raw_ostreamES9_EEvRKT_RT1_T0_RKNS_9StringRefEENKUlvE_clEv.exit.i.i"
  %i.cs = load ptr, ptr %0, align 8, !tbaa !647, !nonnull !376, !align !651
  %i.ct = load ptr, ptr %i.cg, align 8, !tbaa !661, !nonnull !376, !align !651
  store ptr @.str.2, ptr %2, align 8, !tbaa !662
  store i64 1, ptr %i.ch, align 8, !tbaa !664
  tail call void @_ZNK5clang4Stmt11printPrettyERN4llvm11raw_ostreamEPNS_13PrinterHelperERKNS_14PrintingPolicyEjNS1_9StringRefEPKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.cr, ptr noundef nonnull align 8 dereferenceable(48) %i.cs, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(16) %i.ct, i32 noundef 0, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %2, ptr noundef null) #21
  br label %"_ZZN5clang16OMPClausePrinter18VisitOMPInitClauseEPNS_13OMPInitClauseEENK3$_1clENS1_8PrefViewE.exit10.i.i"

"_ZZN5clang16OMPClausePrinter18VisitOMPInitClauseEPNS_13OMPInitClauseEENK3$_1clENS1_8PrefViewE.exit10.i.i": ; preds = %bb.p, %"_ZZN4llvm10interleaveINS_14iterator_rangeINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZNK5clang13OMPInitClause5prefsEvEUljE_NS7_8PrefViewEEEEEZNS6_16OMPClausePrinter18VisitOMPInitClauseEPS7_E3$_1NS_11raw_ostreamES9_EEvRKT_RT1_T0_RKNS_9StringRefEENKUlvE_clEv.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %.not.i.i = icmp eq i64 %i.co, %i.ai
  br i1 %.not.i.i, label %"_ZN4llvm10interleaveINS_14iterator_rangeINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZNK5clang13OMPInitClause5prefsEvEUljE_NS7_8PrefViewEEEEEZNS6_16OMPClausePrinter18VisitOMPInitClauseEPS7_E3$_1NS_11raw_ostreamES9_EEvRKT_RT1_T0_RKNS_9StringRefE.exit", label %bb.m, !llvm.loop !819

"_ZN4llvm10interleaveINS_14iterator_rangeINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZNK5clang13OMPInitClause5prefsEvEUljE_NS7_8PrefViewEEEEEZNS6_16OMPClausePrinter18VisitOMPInitClauseEPS7_E3$_1NS_11raw_ostreamES9_EEvRKT_RT1_T0_RKNS_9StringRefE.exit": ; preds = %"_ZZN5clang16OMPClausePrinter18VisitOMPInitClauseEPNS_13OMPInitClauseEENK3$_1clENS1_8PrefViewE.exit10.i.i", %"_ZZN5clang16OMPClausePrinter18VisitOMPInitClauseEPNS_13OMPInitClauseEENK3$_1clENS1_8PrefViewE.exit.i.i", %bb.k, %"_ZN4llvm15interleaveCommaINS_14iterator_rangeINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZNK5clang13OMPInitClause5prefsEvEUljE_NS7_8PrefViewEEEEEZNS6_16OMPClausePrinter18VisitOMPInitClauseEPS7_E3$_0NS_11raw_ostreamES9_EEvRKT_RT1_T0_.exit"
  %i.cu = load ptr, ptr %0, align 8, !tbaa !647, !nonnull !376, !align !651 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !652
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 32 ; 3 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !656 ; 2 uses
  %i.cz = ptrtoint ptr %i.cw to i64
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = icmp ult i64 %i.db, 3
  br i1 %i.dc, label %bb.q, label %bb.r

bb.q:                                             ; preds = %"_ZN4llvm10interleaveINS_14iterator_rangeINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZNK5clang13OMPInitClause5prefsEvEUljE_NS7_8PrefViewEEEEEZNS6_16OMPClausePrinter18VisitOMPInitClauseEPS7_E3$_1NS_11raw_ostreamES9_EEvRKT_RT1_T0_RKNS_9StringRefE.exit"
  %i.dd = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.cu, ptr noundef nonnull @.str.72, i64 noundef 3) #21 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit36

bb.r:                                             ; preds = %"_ZN4llvm10interleaveINS_14iterator_rangeINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZNK5clang13OMPInitClause5prefsEvEUljE_NS7_8PrefViewEEEEEZNS6_16OMPClausePrinter18VisitOMPInitClauseEPS7_E3$_1NS_11raw_ostreamES9_EEvRKT_RT1_T0_RKNS_9StringRefE.exit"
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.cy, ptr noundef nonnull align 1 dereferenceable(3) @.str.72, i64 3, i1 false)
  %i.de = load ptr, ptr %i.cx, align 8, !tbaa !656
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 3
  store ptr %i.df, ptr %i.cx, align 8, !tbaa !656
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit36

_ZN4llvm11raw_ostreamlsEPKc.exit36:               ; preds = %bb.r, %bb.q, %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 8, !tbaa !610, !range !375, !noundef !376
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.s, label %_ZN4llvm11raw_ostreamlsEPKc.exit39

bb.s:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit36
  %i.dj = load ptr, ptr %0, align 8, !tbaa !647, !nonnull !376, !align !651 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !652
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 32 ; 3 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !656 ; 2 uses
  %i.do = ptrtoint ptr %i.dl to i64
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = sub i64 %i.do, %i.dp
  %i.dr = icmp ult i64 %i.dq, 6
  br i1 %i.dr, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ds = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.dj, ptr noundef nonnull @.str.73, i64 noundef 6) #21 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit39

bb.u:                                             ; preds = %bb.s
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.dn, ptr noundef nonnull align 1 dereferenceable(6) @.str.73, i64 6, i1 false)
  %i.dt = load ptr, ptr %i.dm, align 8, !tbaa !656
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 6
  store ptr %i.du, ptr %i.dm, align 8, !tbaa !656
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit39

_ZN4llvm11raw_ostreamlsEPKc.exit39:               ; preds = %bb.u, %bb.t, %_ZN4llvm11raw_ostreamlsEPKc.exit36
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !611, !range !375, !noundef !376
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %bb.v, label %_ZN4llvm11raw_ostreamlsEPKc.exit45

bb.v:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit39
  %i.dy = load i8, ptr %i.dg, align 8, !tbaa !610, !range !375, !noundef !376
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %bb.w, label %_ZN4llvm11raw_ostreamlsEPKc.exit42

bb.w:                                             ; preds = %bb.v
  %i.ea = load ptr, ptr %0, align 8, !tbaa !647, !nonnull !376, !align !651 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !652
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 32 ; 3 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !656 ; 2 uses
  %i.ef = ptrtoint ptr %i.ec to i64
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = sub i64 %i.ef, %i.eg
  %i.ei = icmp ult i64 %i.eh, 2
  br i1 %i.ei, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ej = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ea, ptr noundef nonnull @.str.10, i64 noundef 2) #21 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit42

bb.y:                                             ; preds = %bb.w
  store i16 8236, ptr %i.ee, align 1
  %i.ek = load ptr, ptr %i.ed, align 8, !tbaa !656
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 2
  store ptr %i.el, ptr %i.ed, align 8, !tbaa !656
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit42

_ZN4llvm11raw_ostreamlsEPKc.exit42:               ; preds = %bb.y, %bb.x, %bb.v
  %i.em = load ptr, ptr %0, align 8, !tbaa !647, !nonnull !376, !align !651 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !652
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 32 ; 3 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !656 ; 2 uses
  %i.er = ptrtoint ptr %i.eo to i64
  %i.es = ptrtoint ptr %i.eq to i64
  %i.et = sub i64 %i.er, %i.es
  %i.eu = icmp ult i64 %i.et, 10
  br i1 %i.eu, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit42
  %i.ev = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.em, ptr noundef nonnull @.str.74, i64 noundef 10) #21 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit45

bb.aa:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit42
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.eq, ptr noundef nonnull align 1 dereferenceable(10) @.str.74, i64 10, i1 false)
  %i.ew = load ptr, ptr %i.ep, align 8, !tbaa !656
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 10
  store ptr %i.ex, ptr %i.ep, align 8, !tbaa !656
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit45

_ZN4llvm11raw_ostreamlsEPKc.exit45:               ; preds = %bb.aa, %bb.z, %_ZN4llvm11raw_ostreamlsEPKc.exit39
  %i.ey = load ptr, ptr %0, align 8, !tbaa !647, !nonnull !376, !align !651 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !652
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 32 ; 3 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !656 ; 2 uses
  %i.fd = ptrtoint ptr %i.fa to i64
  %i.fe = ptrtoint ptr %i.fc to i64
  %i.ff = sub i64 %i.fd, %i.fe
  %i.fg = icmp ult i64 %i.ff, 3
  br i1 %i.fg, label %bb.ab, label %bb.ac
end_hunk_0
