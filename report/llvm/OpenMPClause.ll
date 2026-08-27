Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/OpenMPClause?download=true
inline.NumInlined: 5877
inline.NumDeleted: 2473
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN5clang16OMPClausePrinter21VisitOMPSimdlenClauseEPNS_16OMPSimdlenClauseE
define dso_local void @_ZN5clang16OMPClausePrinter21VisitOMPSimdlenClauseEPNS_16OMPSimdlenClauseE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #1 align 2 {
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
  %i.i = icmp ult i64 %i.h, 8
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull @.str.8, i64 noundef 8) #21 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  store i64 2913377525171054963, ptr %i.e, align 1
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !656
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.l, ptr %i.d, align 8, !tbaa !656
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !674
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
define dso_local void @_ZN5clang16OMPClausePrinter19VisitOMPSizesClauseEPNS_14OMPSizesClauseE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.llvm::StringRef", align 8   ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !647, !nonnull !376, !align !651 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !652
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !656  ; 2 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ult i64 %i.h, 6
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull @.str.9, i64 noundef 6) #21 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.e, ptr noundef nonnull align 1 dereferenceable(6) @.str.9, i64 6, i1 false)
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !656
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 6
  store ptr %i.l, ptr %i.d, align 8, !tbaa !656
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !247  ; 3 uses
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.idx = shl nuw nsw i64 %i.o, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx
  %.not17 = icmp eq i32 %i.n, 0
  br i1 %.not17, label %._crit_edge, label %_ZN4llvm11raw_ostreamlsEPKc.exit15.peel

_ZN4llvm11raw_ostreamlsEPKc.exit15.peel:          ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !17
  %.pre = load ptr, ptr %0, align 8, !tbaa !647
  %.pre21 = load ptr, ptr %i.r, align 8, !tbaa !661
  store ptr @.str.2, ptr %2, align 8, !tbaa !662
  store i64 1, ptr %i.s, align 8, !tbaa !664
  tail call void @_ZNK5clang4Stmt11printPrettyERN4llvm11raw_ostreamEPNS_13PrinterHelperERKNS_14PrintingPolicyEjNS1_9StringRefEPKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull align 8 dereferenceable(48) %.pre, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(16) %.pre21, i32 noundef 0, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %2, ptr noundef null) #21
  %.not.peel = icmp eq i32 %i.n, 1
  br i1 %.not.peel, label %._crit_edge, label %.peel.next

.peel.next:                                       ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit15.peel
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.f

._crit_edge:                                      ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit15, %_ZN4llvm11raw_ostreamlsEPKc.exit15.peel, %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.v = load ptr, ptr %0, align 8, !tbaa !647, !nonnull !376, !align !651 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !652
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 32 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !656  ; 2 uses
  %i.aa = icmp eq ptr %i.x, %i.z
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.ab = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.v, ptr noundef nonnull @.str.3, i64 noundef 1) #21 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit12

bb.e:                                             ; preds = %._crit_edge
  store i8 41, ptr %i.z, align 1
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !656
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  store ptr %i.ad, ptr %i.y, align 8, !tbaa !656
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit12

_ZN4llvm11raw_ostreamlsEPKc.exit12:               ; preds = %bb.d, %bb.e
  ret void

bb.f:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit15, %.peel.next
  %.019 = phi ptr [ %i.u, %.peel.next ], [ %i.at, %_ZN4llvm11raw_ostreamlsEPKc.exit15 ] ; 2 uses
  %i.ae = load ptr, ptr %.019, align 8, !tbaa !17
  %i.af = load ptr, ptr %0, align 8, !tbaa !647, !nonnull !376, !align !651 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !652
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 32 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !656 ; 2 uses
  %i.ak = ptrtoint ptr %i.ah to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = icmp ult i64 %i.am, 2
  br i1 %i.an, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ao = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.af, ptr noundef nonnull @.str.10, i64 noundef 2) #21 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit15

bb.h:                                             ; preds = %bb.f
  store i16 8236, ptr %i.aj, align 1
  %i.ap = load ptr, ptr %i.ai, align 8, !tbaa !656
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  store ptr %i.aq, ptr %i.ai, align 8, !tbaa !656
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit15

_ZN4llvm11raw_ostreamlsEPKc.exit15:               ; preds = %bb.h, %bb.g
  %i.ar = load ptr, ptr %0, align 8, !tbaa !647, !nonnull !376, !align !651
  %i.as = load ptr, ptr %i.r, align 8, !tbaa !661, !nonnull !376, !align !651
  store ptr @.str.2, ptr %2, align 8, !tbaa !662
  store i64 1, ptr %i.s, align 8, !tbaa !664
  tail call void @_ZNK5clang4Stmt11printPrettyERN4llvm11raw_ostreamEPNS_13PrinterHelperERKNS_14PrintingPolicyEjNS1_9StringRefEPKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull align 8 dereferenceable(48) %i.ar, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(16) %i.as, i32 noundef 0, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %2, ptr noundef null) #21
  %i.at = getelementptr inbounds nuw i8, ptr %.019, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.at, %i.q
  br i1 %.not, label %._crit_edge, label %bb.f, !llvm.loop !676
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang16OMPClausePrinter20VisitOMPCountsClauseEPNS_15OMPCountsClauseE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.llvm::StringRef", align 8   ; 9 uses
  %3 = alloca %"class.llvm::StringRef", align 8   ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !647, !nonnull !376, !align !651 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !652
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !656  ; 2 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ult i64 %i.h, 7
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull @.str.11, i64 noundef 7) #21 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.e, ptr noundef nonnull align 1 dereferenceable(7) @.str.11, i64 7, i1 false)
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !656
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 7
  store ptr %i.l, ptr %i.d, align 8, !tbaa !656
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0.0.copyload.i = load i64, ptr %i.m, align 4
  %.sroa.0.0.copyload.i.fr = freeze i64 %.sroa.0.0.copyload.i ; 3 uses
  %.sroa.014.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i.fr to i32
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i32, ptr %i.n, align 8, !tbaa !52   ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !647, !nonnull !376, !align !651 ; 8 uses
  %i.s = icmp eq i32 %i.o, 0
  br i1 %i.s, label %"_ZN4llvm15interleaveCommaINS_10iota_rangeIjEEZN5clang16OMPClausePrinter20VisitOMPCountsClauseEPNS3_15OMPCountsClauseEE3$_0NS_11raw_ostreamEjEEvRKT_RT1_T0_.exit", label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.t = and i64 %.sroa.0.0.copyload.i.fr, 4294967296
  %.not = icmp eq i64 %i.t, 0
  %i.u = and i64 %.sroa.0.0.copyload.i.fr, 8589934591
  %or.cond = icmp eq i64 %i.u, 4294967296
  br i1 %or.cond, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !652
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !656  ; 2 uses
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = icmp ult i64 %i.ab, 8
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef nonnull @.str.132, i64 noundef 8) #21 ; 0 uses
  br label %"_ZZN5clang16OMPClausePrinter20VisitOMPCountsClauseEPNS_15OMPCountsClauseEENK3$_0clEj.exit.i.i.i"

bb.g:                                             ; preds = %bb.e
  store i64 7812735341989752175, ptr %i.y, align 1
  %i.ae = load ptr, ptr %i.x, align 8, !tbaa !656
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.af, ptr %i.x, align 8, !tbaa !656
  br label %"_ZZN5clang16OMPClausePrinter20VisitOMPCountsClauseEPNS_15OMPCountsClauseEENK3$_0clEj.exit.i.i.i"

bb.h:                                             ; preds = %bb.d
  %i.ag = load ptr, ptr %i.q, align 8, !tbaa !17
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !661, !nonnull !376, !align !651
  store ptr @.str.2, ptr %3, align 8, !tbaa !662
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1, ptr %i.aj, align 8, !tbaa !664
  tail call void @_ZNK5clang4Stmt11printPrettyERN4llvm11raw_ostreamEPNS_13PrinterHelperERKNS_14PrintingPolicyEjNS1_9StringRefEPKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i32 noundef 0, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %3, ptr noundef null) #21
  br label %"_ZZN5clang16OMPClausePrinter20VisitOMPCountsClauseEPNS_15OMPCountsClauseEENK3$_0clEj.exit.i.i.i"

"_ZZN5clang16OMPClausePrinter20VisitOMPCountsClauseEPNS_15OMPCountsClauseEENK3$_0clEj.exit.i.i.i": ; preds = %bb.h, %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.not13.i.i.i = icmp eq i32 %i.o, 1
  br i1 %.not13.i.i.i, label %"_ZN4llvm15interleaveCommaINS_10iota_rangeIjEEZN5clang16OMPClausePrinter20VisitOMPCountsClauseEPNS3_15OMPCountsClauseEE3$_0NS_11raw_ostreamEjEEvRKT_RT1_T0_.exit", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %"_ZZN5clang16OMPClausePrinter20VisitOMPCountsClauseEPNS_15OMPCountsClauseEENK3$_0clEj.exit.i.i.i"
  %i.ak = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br i1 %.not, label %.lr.ph.i.i.i.split.us, label %.lr.ph.i.i.i.split

.lr.ph.i.i.i.split.us:                            ; preds = %.lr.ph.i.i.i, %"_ZZN4llvm10interleaveINS_10iota_rangeIjEEZN5clang16OMPClausePrinter20VisitOMPCountsClauseEPNS3_15OMPCountsClauseEE3$_0NS_11raw_ostreamEjEEvRKT_RT1_T0_RKNS_9StringRefEENKUlvE_clEv.exit.i.i.i.us"
  %.sroa.06.014.i.i.i.us = phi i64 [ %.sroa.06.0.i.i.i.us, %"_ZZN4llvm10interleaveINS_10iota_rangeIjEEZN5clang16OMPClausePrinter20VisitOMPCountsClauseEPNS3_15OMPCountsClauseEE3$_0NS_11raw_ostreamEjEEvRKT_RT1_T0_RKNS_9StringRefEENKUlvE_clEv.exit.i.i.i.us" ], [ 1, %.lr.ph.i.i.i ] ; 2 uses
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !652
  %i.ap = load ptr, ptr %i.al, align 8, !tbaa !656 ; 2 uses
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = icmp ult i64 %i.as, 2
  br i1 %i.at, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.split.us
  store i16 8236, ptr %i.ap, align 1
  %i.au = load ptr, ptr %i.al, align 8, !tbaa !656
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  store ptr %i.av, ptr %i.al, align 8, !tbaa !656
  br label %"_ZZN4llvm10interleaveINS_10iota_rangeIjEEZN5clang16OMPClausePrinter20VisitOMPCountsClauseEPNS3_15OMPCountsClauseEE3$_0NS_11raw_ostreamEjEEvRKT_RT1_T0_RKNS_9StringRefEENKUlvE_clEv.exit.i.i.i.us"

bb.j:                                             ; preds = %.lr.ph.i.i.i.split.us
  %i.aw = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef nonnull @.str.10, i64 noundef 2) #21 ; 0 uses
  br label %"_ZZN4llvm10interleaveINS_10iota_rangeIjEEZN5clang16OMPClausePrinter20VisitOMPCountsClauseEPNS3_15OMPCountsClauseEE3$_0NS_11raw_ostreamEjEEvRKT_RT1_T0_RKNS_9StringRefEENKUlvE_clEv.exit.i.i.i.us"

"_ZZN4llvm10interleaveINS_10iota_rangeIjEEZN5clang16OMPClausePrinter20VisitOMPCountsClauseEPNS3_15OMPCountsClauseEE3$_0NS_11raw_ostreamEjEEvRKT_RT1_T0_RKNS_9StringRefEENKUlvE_clEv.exit.i.i.i.us": ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.ax = and i64 %.sroa.06.014.i.i.i.us, 4294967295
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ax
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !17
  %i.ba = load ptr, ptr %0, align 8, !tbaa !647, !nonnull !376, !align !651
  %i.bb = load ptr, ptr %i.am, align 8, !tbaa !661, !nonnull !376, !align !651
  store ptr @.str.2, ptr %2, align 8, !tbaa !662
  store i64 1, ptr %i.an, align 8, !tbaa !664
  tail call void @_ZNK5clang4Stmt11printPrettyERN4llvm11raw_ostreamEPNS_13PrinterHelperERKNS_14PrintingPolicyEjNS1_9StringRefEPKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull align 8 dereferenceable(48) %i.ba, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i32 noundef 0, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %2, ptr noundef null) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %.sroa.06.0.i.i.i.us = add i64 %.sroa.06.014.i.i.i.us, 1 ; 2 uses
  %.not.i.i.i.us = icmp eq i64 %.sroa.06.0.i.i.i.us, %i.p
  br i1 %.not.i.i.i.us, label %"_ZN4llvm15interleaveCommaINS_10iota_rangeIjEEZN5clang16OMPClausePrinter20VisitOMPCountsClauseEPNS3_15OMPCountsClauseEE3$_0NS_11raw_ostreamEjEEvRKT_RT1_T0_.exit", label %.lr.ph.i.i.i.split.us, !llvm.loop !677

.lr.ph.i.i.i.split:                               ; preds = %.lr.ph.i.i.i, %"_ZZN5clang16OMPClausePrinter20VisitOMPCountsClauseEPNS_15OMPCountsClauseEENK3$_0clEj.exit3.i.i.i"
  %.sroa.06.014.i.i.i = phi i64 [ %.sroa.06.0.i.i.i, %"_ZZN5clang16OMPClausePrinter20VisitOMPCountsClauseEPNS_15OMPCountsClauseEENK3$_0clEj.exit3.i.i.i" ], [ 1, %.lr.ph.i.i.i ] ; 3 uses
  %i.bc = load ptr, ptr %i.ak, align 8, !tbaa !652
  %i.bd = load ptr, ptr %i.al, align 8, !tbaa !656 ; 2 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = icmp ult i64 %i.bg, 2
  br i1 %i.bh, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.i.i.i.split
  %i.bi = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef nonnull @.str.10, i64 noundef 2) #21 ; 0 uses
  br label %"_ZZN4llvm10interleaveINS_10iota_rangeIjEEZN5clang16OMPClausePrinter20VisitOMPCountsClauseEPNS3_15OMPCountsClauseEE3$_0NS_11raw_ostreamEjEEvRKT_RT1_T0_RKNS_9StringRefEENKUlvE_clEv.exit.i.i.i"

bb.l:                                             ; preds = %.lr.ph.i.i.i.split
  store i16 8236, ptr %i.bd, align 1
  %i.bj = load ptr, ptr %i.al, align 8, !tbaa !656
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  store ptr %i.bk, ptr %i.al, align 8, !tbaa !656
  br label %"_ZZN4llvm10interleaveINS_10iota_rangeIjEEZN5clang16OMPClausePrinter20VisitOMPCountsClauseEPNS3_15OMPCountsClauseEE3$_0NS_11raw_ostreamEjEEvRKT_RT1_T0_RKNS_9StringRefEENKUlvE_clEv.exit.i.i.i"

"_ZZN4llvm10interleaveINS_10iota_rangeIjEEZN5clang16OMPClausePrinter20VisitOMPCountsClauseEPNS3_15OMPCountsClauseEE3$_0NS_11raw_ostreamEjEEvRKT_RT1_T0_RKNS_9StringRefEENKUlvE_clEv.exit.i.i.i": ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %4 = trunc i64 %.sroa.06.014.i.i.i to i32
  %i.bl = icmp eq i32 %.sroa.014.0.extract.trunc, %4
  br i1 %i.bl, label %bb.m, label %bb.p

bb.m:                                             ; preds = %"_ZZN4llvm10interleaveINS_10iota_rangeIjEEZN5clang16OMPClausePrinter20VisitOMPCountsClauseEPNS3_15OMPCountsClauseEE3$_0NS_11raw_ostreamEjEEvRKT_RT1_T0_RKNS_9StringRefEENKUlvE_clEv.exit.i.i.i"
  %i.bm = load ptr, ptr %0, align 8, !tbaa !647, !nonnull !376, !align !651 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !652
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 32 ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !656 ; 2 uses
  %i.br = ptrtoint ptr %i.bo to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = icmp ult i64 %i.bt, 8
  br i1 %i.bu, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bv = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.bm, ptr noundef nonnull @.str.132, i64 noundef 8) #21 ; 0 uses
  br label %"_ZZN5clang16OMPClausePrinter20VisitOMPCountsClauseEPNS_15OMPCountsClauseEENK3$_0clEj.exit3.i.i.i"

bb.o:                                             ; preds = %bb.m
  store i64 7812735341989752175, ptr %i.bq, align 1
  %i.bw = load ptr, ptr %i.bp, align 8, !tbaa !656
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr %i.bx, ptr %i.bp, align 8, !tbaa !656
  br label %"_ZZN5clang16OMPClausePrinter20VisitOMPCountsClauseEPNS_15OMPCountsClauseEENK3$_0clEj.exit3.i.i.i"

bb.p:                                             ; preds = %"_ZZN4llvm10interleaveINS_10iota_rangeIjEEZN5clang16OMPClausePrinter20VisitOMPCountsClauseEPNS3_15OMPCountsClauseEE3$_0NS_11raw_ostreamEjEEvRKT_RT1_T0_RKNS_9StringRefEENKUlvE_clEv.exit.i.i.i"
  %i.by = and i64 %.sroa.06.014.i.i.i, 4294967295
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.by
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !17
  %i.cb = load ptr, ptr %0, align 8, !tbaa !647, !nonnull !376, !align !651
  %i.cc = load ptr, ptr %i.am, align 8, !tbaa !661, !nonnull !376, !align !651
  store ptr @.str.2, ptr %2, align 8, !tbaa !662
  store i64 1, ptr %i.an, align 8, !tbaa !664
  tail call void @_ZNK5clang4Stmt11printPrettyERN4llvm11raw_ostreamEPNS_13PrinterHelperERKNS_14PrintingPolicyEjNS1_9StringRefEPKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, ptr noundef nonnull align 8 dereferenceable(48) %i.cb, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i32 noundef 0, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %2, ptr noundef null) #21
  br label %"_ZZN5clang16OMPClausePrinter20VisitOMPCountsClauseEPNS_15OMPCountsClauseEENK3$_0clEj.exit3.i.i.i"

"_ZZN5clang16OMPClausePrinter20VisitOMPCountsClauseEPNS_15OMPCountsClauseEENK3$_0clEj.exit3.i.i.i": ; preds = %bb.p, %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %.sroa.06.0.i.i.i = add i64 %.sroa.06.014.i.i.i, 1 ; 2 uses
  %.not.i.i.i = icmp eq i64 %.sroa.06.0.i.i.i, %i.p
  br i1 %.not.i.i.i, label %"_ZN4llvm15interleaveCommaINS_10iota_rangeIjEEZN5clang16OMPClausePrinter20VisitOMPCountsClauseEPNS3_15OMPCountsClauseEE3$_0NS_11raw_ostreamEjEEvRKT_RT1_T0_.exit", label %.lr.ph.i.i.i.split, !llvm.loop !677

"_ZN4llvm15interleaveCommaINS_10iota_rangeIjEEZN5clang16OMPClausePrinter20VisitOMPCountsClauseEPNS3_15OMPCountsClauseEE3$_0NS_11raw_ostreamEjEEvRKT_RT1_T0_.exit": ; preds = %"_ZZN5clang16OMPClausePrinter20VisitOMPCountsClauseEPNS_15OMPCountsClauseEENK3$_0clEj.exit3.i.i.i", %"_ZZN4llvm10interleaveINS_10iota_rangeIjEEZN5clang16OMPClausePrinter20VisitOMPCountsClauseEPNS3_15OMPCountsClauseEE3$_0NS_11raw_ostreamEjEEvRKT_RT1_T0_RKNS_9StringRefEENKUlvE_clEv.exit.i.i.i.us", %_ZN4llvm11raw_ostreamlsEPKc.exit, %"_ZZN5clang16OMPClausePrinter20VisitOMPCountsClauseEPNS_15OMPCountsClauseEENK3$_0clEj.exit.i.i.i"
  %i.cd = load ptr, ptr %0, align 8, !tbaa !647, !nonnull !376, !align !651 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !652
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 32 ; 3 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !656 ; 2 uses
  %i.ci = icmp eq ptr %i.cf, %i.ch
  br i1 %i.ci, label %bb.q, label %bb.r

bb.q:                                             ; preds = %"_ZN4llvm15interleaveCommaINS_10iota_rangeIjEEZN5clang16OMPClausePrinter20VisitOMPCountsClauseEPNS3_15OMPCountsClauseEE3$_0NS_11raw_ostreamEjEEvRKT_RT1_T0_.exit"
  %i.cj = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.cd, ptr noundef nonnull @.str.3, i64 noundef 1) #21 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit7

bb.r:                                             ; preds = %"_ZN4llvm15interleaveCommaINS_10iota_rangeIjEEZN5clang16OMPClausePrinter20VisitOMPCountsClauseEPNS3_15OMPCountsClauseEE3$_0NS_11raw_ostreamEjEEvRKT_RT1_T0_.exit"
  store i8 41, ptr %i.ch, align 1
  %i.ck = load ptr, ptr %i.cg, align 8, !tbaa !656
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 1
  store ptr %i.cl, ptr %i.cg, align 8, !tbaa !656
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit7

_ZN4llvm11raw_ostreamlsEPKc.exit7:                ; preds = %bb.q, %bb.r
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang16OMPClausePrinter25VisitOMPPermutationClauseEPNS_20OMPPermutationClauseE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.llvm::StringRef", align 8   ; 5 uses
  %3 = alloca %"class.llvm::StringRef", align 8   ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !647, !nonnull !376, !align !651 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !652
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !656  ; 2 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ult i64 %i.h, 12
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull @.str.12, i64 noundef 12) #21 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.e, ptr noundef nonnull align 1 dereferenceable(12) @.str.12, i64 12, i1 false)
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !656
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store ptr %i.l, ptr %i.d, align 8, !tbaa !656
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !215  ; 3 uses
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !647    ; 4 uses
  %.idx.i.i = shl nuw nsw i64 %i.o, 3
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i
  %i.s = icmp eq i32 %i.n, 0
  br i1 %i.s, label %"_ZN4llvm15interleaveCommaINS_15MutableArrayRefIPN5clang4ExprEEEZNS2_16OMPClausePrinter25VisitOMPPermutationClauseEPNS2_20OMPPermutationClauseEE3$_0NS_11raw_ostreamES4_EEvRKT_RT1_T0_.exit", label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !17
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val10.val11.i.i.i = load ptr, ptr %i.u, align 8, !tbaa !661
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr @.str.2, ptr %3, align 8, !tbaa !662
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1, ptr %i.v, align 8, !tbaa !664
  tail call void @_ZNK5clang4Stmt11printPrettyERN4llvm11raw_ostreamEPNS_13PrinterHelperERKNS_14PrintingPolicyEjNS1_9StringRefEPKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(16) %.val10.val11.i.i.i, i32 noundef 0, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %3, ptr noundef null) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.not18.i.i.i = icmp eq i32 %i.n, 1
  br i1 %.not18.i.i.i, label %"_ZN4llvm15interleaveCommaINS_15MutableArrayRefIPN5clang4ExprEEEZNS2_16OMPClausePrinter25VisitOMPPermutationClauseEPNS2_20OMPPermutationClauseEE3$_0NS_11raw_ostreamES4_EEvRKT_RT1_T0_.exit", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d
  %.017.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.e

bb.e:                                             ; preds = %"_ZZN4llvm10interleaveINS_15MutableArrayRefIPN5clang4ExprEEEZNS2_16OMPClausePrinter25VisitOMPPermutationClauseEPNS2_20OMPPermutationClauseEE3$_0NS_11raw_ostreamES4_EEvRKT_RT1_T0_RKNS_9StringRefEENKUlvE_clEv.exit.i.i.i", %.lr.ph.i.i.i
  %.019.i.i.i = phi ptr [ %.017.i.i.i, %.lr.ph.i.i.i ], [ %.0.i.i.i, %"_ZZN4llvm10interleaveINS_15MutableArrayRefIPN5clang4ExprEEEZNS2_16OMPClausePrinter25VisitOMPPermutationClauseEPNS2_20OMPPermutationClauseEE3$_0NS_11raw_ostreamES4_EEvRKT_RT1_T0_RKNS_9StringRefEENKUlvE_clEv.exit.i.i.i" ] ; 2 uses
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !652
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !656 ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = icmp ult i64 %i.ad, 2
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.af = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef nonnull @.str.10, i64 noundef 2) #21 ; 0 uses
  br label %"_ZZN4llvm10interleaveINS_15MutableArrayRefIPN5clang4ExprEEEZNS2_16OMPClausePrinter25VisitOMPPermutationClauseEPNS2_20OMPPermutationClauseEE3$_0NS_11raw_ostreamES4_EEvRKT_RT1_T0_RKNS_9StringRefEENKUlvE_clEv.exit.i.i.i"

bb.g:                                             ; preds = %bb.e
  store i16 8236, ptr %i.aa, align 1
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !656
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  store ptr %i.ah, ptr %i.x, align 8, !tbaa !656
  br label %"_ZZN4llvm10interleaveINS_15MutableArrayRefIPN5clang4ExprEEEZNS2_16OMPClausePrinter25VisitOMPPermutationClauseEPNS2_20OMPPermutationClauseEE3$_0NS_11raw_ostreamES4_EEvRKT_RT1_T0_RKNS_9StringRefEENKUlvE_clEv.exit.i.i.i"

"_ZZN4llvm10interleaveINS_15MutableArrayRefIPN5clang4ExprEEEZNS2_16OMPClausePrinter25VisitOMPPermutationClauseEPNS2_20OMPPermutationClauseEE3$_0NS_11raw_ostreamES4_EEvRKT_RT1_T0_RKNS_9StringRefEENKUlvE_clEv.exit.i.i.i": ; preds = %bb.g, %bb.f
  %i.ai = load ptr, ptr %.019.i.i.i, align 8, !tbaa !17
  %.val.val.i.i.i = load ptr, ptr %0, align 8, !tbaa !647
  %.val.val12.i.i.i = load ptr, ptr %i.u, align 8, !tbaa !661
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr @.str.2, ptr %2, align 8, !tbaa !662
  store i64 1, ptr %i.y, align 8, !tbaa !664
  tail call void @_ZNK5clang4Stmt11printPrettyERN4llvm11raw_ostreamEPNS_13PrinterHelperERKNS_14PrintingPolicyEjNS1_9StringRefEPKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull align 8 dereferenceable(48) %.val.val.i.i.i, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(16) %.val.val12.i.i.i, i32 noundef 0, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %2, ptr noundef null) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.019.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.0.i.i.i, %i.r
  br i1 %.not.i.i.i, label %"_ZN4llvm15interleaveCommaINS_15MutableArrayRefIPN5clang4ExprEEEZNS2_16OMPClausePrinter25VisitOMPPermutationClauseEPNS2_20OMPPermutationClauseEE3$_0NS_11raw_ostreamES4_EEvRKT_RT1_T0_.exit", label %bb.e, !llvm.loop !678

"_ZN4llvm15interleaveCommaINS_15MutableArrayRefIPN5clang4ExprEEEZNS2_16OMPClausePrinter25VisitOMPPermutationClauseEPNS2_20OMPPermutationClauseEE3$_0NS_11raw_ostreamES4_EEvRKT_RT1_T0_.exit": ; preds = %"_ZZN4llvm10interleaveINS_15MutableArrayRefIPN5clang4ExprEEEZNS2_16OMPClausePrinter25VisitOMPPermutationClauseEPNS2_20OMPPermutationClauseEE3$_0NS_11raw_ostreamES4_EEvRKT_RT1_T0_RKNS_9StringRefEENKUlvE_clEv.exit.i.i.i", %_ZN4llvm11raw_ostreamlsEPKc.exit, %bb.d
  %i.aj = load ptr, ptr %0, align 8, !tbaa !647, !nonnull !376, !align !651 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !652
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 32 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !656 ; 2 uses
  %i.ao = icmp eq ptr %i.al, %i.an
  br i1 %i.ao, label %bb.h, label %bb.i

bb.h:                                             ; preds = %"_ZN4llvm15interleaveCommaINS_15MutableArrayRefIPN5clang4ExprEEEZNS2_16OMPClausePrinter25VisitOMPPermutationClauseEPNS2_20OMPPermutationClauseEE3$_0NS_11raw_ostreamES4_EEvRKT_RT1_T0_.exit"
  %i.ap = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.aj, ptr noundef nonnull @.str.3, i64 noundef 1) #21 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit5

bb.i:                                             ; preds = %"_ZN4llvm15interleaveCommaINS_15MutableArrayRefIPN5clang4ExprEEEZNS2_16OMPClausePrinter25VisitOMPPermutationClauseEPNS2_20OMPPermutationClauseEE3$_0NS_11raw_ostreamES4_EEvRKT_RT1_T0_.exit"
  store i8 41, ptr %i.an, align 1
  %i.aq = load ptr, ptr %i.am, align 8, !tbaa !656
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  store ptr %i.ar, ptr %i.am, align 8, !tbaa !656
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit5

_ZN4llvm11raw_ostreamlsEPKc.exit5:                ; preds = %bb.h, %bb.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang16OMPClausePrinter18VisitOMPFullClauseEPNS_13OMPFullClauseE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !647, !nonnull !376, !align !651 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !652
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !656  ; 2 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ult i64 %i.h, 4
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull @.str.13, i64 noundef 4) #21 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

end_hunk_0
