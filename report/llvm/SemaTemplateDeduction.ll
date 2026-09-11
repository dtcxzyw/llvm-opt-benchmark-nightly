Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaTemplateDeduction?download=true
inline.NumInlined: 31829
inline.NumDeleted: 13875
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 33
begin_hunk_0_@"_ZN4llvm12function_refIFvvEE11callback_fnIZL24isAtLeastAsSpecializedAsRN5clang4SemaENS4_14SourceLocationEPNS4_20FunctionTemplateDeclES9_NS4_30TemplatePartialOrderingContextENS_8ArrayRefINS4_8QualTypeEEESD_bE3$_0EEvl":bb.a
  %2 = alloca %"class.(anonymous namespace)::PackDeductionScope", align 8 ; 14 uses
  %3 = alloca %"class.clang::TemplateArgument", align 8 ; 4 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"struct.clang::Sema::CheckTemplateArgumentInfo", align 8 ; 17 uses
  %5 = alloca %"class.clang::LocalInstantiationScope", align 8 ; 18 uses
  %i.b = inttoptr i64 %0 to ptr                   ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3895, !nonnull !728, !align !729 ; 15 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !3896, !nonnull !728, !align !729
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1119 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !3897, !nonnull !728, !align !729 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !3898, !nonnull !728, !align !729 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !3899, !nonnull !728, !align !1162 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !3900, !nonnull !728, !align !729
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !3901, !nonnull !728, !align !729
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !3902, !nonnull !728
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !3903, !nonnull !728, !align !729
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !3904, !nonnull !728, !align !729 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !3905, !nonnull !728, !align !729 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !3906, !nonnull !728 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !3907, !nonnull !728, !align !729 ; 2 uses
  %i.ad = tail call noundef zeroext i1 @_ZN5clang11DeclContext7classofEPKNS_4DeclE(ptr noundef nonnull align 8 dereferenceable(33) %i.g) #22
  br i1 %i.ad, label %_ZN4llvm8dyn_castIN5clang11DeclContextENS1_4DeclEEEDcPT0_.exit.i.i.i, label %_ZN4llvm8dyn_castIN5clang11DeclContextENS1_4DeclEEEDcPT0_.exit.thread.i.i.i

_ZN4llvm8dyn_castIN5clang11DeclContextENS1_4DeclEEEDcPT0_.exit.i.i.i: ; preds = %bb.a
  %i.ae = tail call noundef ptr @_ZN5clang4Decl17castToDeclContextEPKS0_(ptr noundef nonnull %i.g) #22 ; 2 uses
  %.not.not.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.not.i.i.i, label %_ZN4llvm8dyn_castIN5clang11DeclContextENS1_4DeclEEEDcPT0_.exit.thread.i.i.i, label %_ZL27getAsDeclContextOrEnclosingPN5clang4DeclE.exit.i.i

_ZN4llvm8dyn_castIN5clang11DeclContextENS1_4DeclEEEDcPT0_.exit.thread.i.i.i: ; preds = %_ZN4llvm8dyn_castIN5clang11DeclContextENS1_4DeclEEEDcPT0_.exit.i.i.i, %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.af, align 8 ; 3 uses
  %i.ag = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 4
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN4llvm8dyn_castIN5clang11DeclContextENS1_4DeclEEEDcPT0_.exit.thread.i.i.i
  %i.ai = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i to ptr
  br label %_ZL27getAsDeclContextOrEnclosingPN5clang4DeclE.exit.i.i

bb.c:                                             ; preds = %_ZN4llvm8dyn_castIN5clang11DeclContextENS1_4DeclEEEDcPT0_.exit.thread.i.i.i
  %i.aj = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -5
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1033
  br label %_ZL27getAsDeclContextOrEnclosingPN5clang4DeclE.exit.i.i

_ZL27getAsDeclContextOrEnclosingPN5clang4DeclE.exit.i.i: ; preds = %bb.c, %bb.b, %_ZN4llvm8dyn_castIN5clang11DeclContextENS1_4DeclEEEDcPT0_.exit.i.i.i
  %.1.i.i.i = phi ptr [ %i.ae, %_ZN4llvm8dyn_castIN5clang11DeclContextENS1_4DeclEEEDcPT0_.exit.i.i.i ], [ %i.ai, %bb.b ], [ %i.al, %bb.c ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 616 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !994 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 584 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !995
  store ptr null, ptr %i.ao, align 8, !tbaa !995
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 11136 ; 3 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !43
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 3 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !996
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 2584 ; 3 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !997
  store ptr %.1.i.i.i, ptr %i.am, align 8, !tbaa !994
  store i64 0, ptr %i.aq, align 8, !tbaa !43
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !767
  store i32 %i.ax, ptr %i.as, align 8, !tbaa !996
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 3664
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !767
  store i32 %i.az, ptr %i.au, align 8, !tbaa !997
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i8 0, ptr %i.a, align 1, !tbaa !1099
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.ba, ptr %4, align 8, !tbaa !766
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i32 0, ptr %i.bb, align 8, !tbaa !767
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 4, ptr %i.bc, align 4, !tbaa !845
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 128 ; 2 uses
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !766
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 120 ; 2 uses
  store i32 0, ptr %i.bf, align 8, !tbaa !767
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 124
  store i32 4, ptr %i.bg, align 4, !tbaa !845
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 224
  store i8 1, ptr %i.bh, align 8, !tbaa !984
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 225
  store i8 0, ptr %i.bi, align 1, !tbaa !985
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 226
  store i8 0, ptr %i.bj, align 2, !tbaa !986
  %i.bk = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !961
  %i.bm = call fastcc noundef i32 @_ZL31ConvertDeducedTemplateArgumentsRN5clang4SemaEPNS_9NamedDeclEPNS_21TemplateParameterListEbRN4llvm15SmallVectorImplINS_23DeducedTemplateArgumentEEERNS_4sema21TemplateDeductionInfoERNS0_25CheckTemplateArgumentInfoEPNS_23LocalInstantiationScopeEjPb(ptr noundef nonnull align 8 dereferenceable(18640) %i.d, ptr noundef nonnull %i.g, ptr noundef %i.bl, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(504) %i.k, ptr noundef nonnull align 8 dereferenceable(227) %4, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.a)
  %.not.i.i = icmp eq i32 %i.bm, 0
  br i1 %.not.i.i, label %bb.d, label %bb.az

bb.d:                                             ; preds = %_ZL27getAsDeclContextOrEnclosingPN5clang4DeclE.exit.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 232 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !727, !nonnull !728, !align !729
  %i.bp = load ptr, ptr %4, align 8, !tbaa !766
  %i.bq = load i32, ptr %i.bb, align 8, !tbaa !767
  %i.br = zext i32 %i.bq to i64
  %i.bs = call noundef ptr @_ZN5clang20TemplateArgumentList10CreateCopyERNS_10ASTContextEN4llvm8ArrayRefINS_16TemplateArgumentEEE(ptr noundef nonnull align 8 dereferenceable(23904) %i.bo, ptr %i.bp, i64 %i.br) #22
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !727, !nonnull !728, !align !729
  %i.bu = load ptr, ptr %i.bd, align 8, !tbaa !766
  %i.bv = load i32, ptr %i.bf, align 8, !tbaa !767
  %i.bw = zext i32 %i.bv to i64
  %i.bx = call noundef ptr @_ZN5clang20TemplateArgumentList10CreateCopyERNS_10ASTContextEN4llvm8ArrayRefINS_16TemplateArgumentEEE(ptr noundef nonnull align 8 dereferenceable(23904) %i.bt, ptr %i.bu, i64 %i.bw) #22
  store ptr %i.bs, ptr %i.k, align 8, !tbaa !991
  %i.by = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !992
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr %i.d, ptr %5, align 8, !tbaa !799
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 80
  store i32 1, ptr %i.bz, align 8
  store i32 0, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 2 uses
  store ptr %i.cc, ptr %i.cb, align 8, !tbaa !766
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  store i32 0, ptr %i.cd, align 8, !tbaa !767
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 100
  store i32 1, ptr %i.ce, align 4, !tbaa !845
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.d, i64 12576 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !846
  store ptr %i.ch, ptr %i.cf, align 8, !tbaa !855
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 120 ; 3 uses
  store i8 0, ptr %i.ci, align 8, !tbaa !856
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 121
  store i8 0, ptr %i.cj, align 1, !tbaa !857
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 122
  store i8 0, ptr %i.ck, align 2, !tbaa !858
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 128
  store ptr null, ptr %i.cl, align 8, !tbaa !859
  store ptr %5, ptr %i.cg, align 8, !tbaa !846
  %i.cm = load ptr, ptr %4, align 8, !tbaa !766   ; 3 uses
  %i.cn = load i32, ptr %i.bb, align 8, !tbaa !767
  %i.co = zext i32 %i.cn to i64                   ; 3 uses
  %i.cp = load i32, ptr %i.m, align 4, !tbaa !1704
  %.not.i.i.i = icmp eq i32 %i.cp, 0
  br i1 %.not.i.i.i, label %.thread.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cq = load ptr, ptr %i.o, align 8, !tbaa !1701
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.cr, align 8, !tbaa !43
  %i.cs = load ptr, ptr %i.q, align 8, !tbaa !1701
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %.sroa.0.0.copyload.i13.i.i.i = load i64, ptr %i.ct, align 8, !tbaa !43
  %i.cu = load i8, ptr %i.s, align 1, !tbaa !1099, !range !912, !noundef !728
  %i.cv = trunc nuw i8 %i.cu to i1
  %i.cw = call fastcc noundef i32 @_ZL25CheckDeductionConsistencyRN5clang4SemaEPNS_20FunctionTemplateDeclENS_16OptionalUnsignedIjEENS_8QualTypeES6_N4llvm8ArrayRefINS_16TemplateArgumentEEEb(ptr noundef nonnull align 8 dereferenceable(18640) %i.d, ptr noundef nonnull %i.g, i32 0, i64 %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.0.0.copyload.i13.i.i.i, ptr %i.cm, i64 %i.co, i1 noundef zeroext %i.cv)
  %.not11.not.i.i.i = icmp eq i32 %i.cw, 0
  br i1 %.not11.not.i.i.i, label %bb.f, label %"_ZZZL24isAtLeastAsSpecializedAsRN5clang4SemaENS_14SourceLocationEPNS_20FunctionTemplateDeclES4_NS_30TemplatePartialOrderingContextEN4llvm8ArrayRefINS_8QualTypeEEES9_bENK3$_0clEvENKUlS1_S4_NS7_INS_16TemplateArgumentEEEE_clES1_S4_SC_.exit.i.i"

bb.f:                                             ; preds = %bb.e
  %.pre38.i.i.i = load i32, ptr %i.m, align 4, !tbaa !1704
  %i.cx = icmp eq i32 %.pre38.i.i.i, 1
  br i1 %i.cx, label %"_ZZZL24isAtLeastAsSpecializedAsRN5clang4SemaENS_14SourceLocationEPNS_20FunctionTemplateDeclES4_NS_30TemplatePartialOrderingContextEN4llvm8ArrayRefINS_8QualTypeEEES9_bENK3$_0clEvENKUlS1_S4_NS7_INS_16TemplateArgumentEEEE_clES1_S4_SC_.exit.i.i", label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.f, %bb.d
  %i.cy = load ptr, ptr %i.u, align 8, !tbaa !1125
  %.sroa.01.0.copyload.i.i.i = load ptr, ptr %i.w, align 8, !tbaa !1141
  %.sroa.22.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.22.0.copyload.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !tbaa !791 ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.y, align 8, !tbaa !1141 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !791 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %.not183.i.i.i.i = icmp eq i64 %.sroa.22.0.copyload.i.i.i, 0
  br i1 %.not183.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph190.i.i.i.i

.lr.ph190.i.i.i.i:                                ; preds = %.thread.i.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 6 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 39
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.g

bb.g:                                             ; preds = %.thread151.i.i.i.i, %.lr.ph190.i.i.i.i
  %i.di = phi i64 [ 0, %.lr.ph190.i.i.i.i ], [ %.pre-phi207.i.i.i.i, %.thread151.i.i.i.i ] ; 3 uses
  %.062189.i.i.i.i = phi i32 [ undef, %.lr.ph190.i.i.i.i ], [ %.7156.i.i.i.i, %.thread151.i.i.i.i ] ; 6 uses
  %.063188.i.i.i.i = phi i32 [ 0, %.lr.ph190.i.i.i.i ], [ %.669155.i.i.i.i, %.thread151.i.i.i.i ] ; 10 uses
  %.070184.i.i.i.i = phi i32 [ 0, %.lr.ph190.i.i.i.i ], [ %.pre-phi205.i.i.i.i, %.thread151.i.i.i.i ] ; 6 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.copyload.i.i.i, i64 %i.di
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.dj, align 8, !tbaa !43 ; 2 uses
  %i.dk = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, -16
  %i.dl = inttoptr i64 %i.dk to ptr
  %i.dm = load ptr, ptr %i.dl, align 16, !tbaa !42 ; 6 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = load i8, ptr %i.dn, align 16
  %i.dp = icmp ne i8 %i.do, 36
  %.not83162.i.i.i.i = icmp eq ptr %i.dm, null
  %.not83.i.i.i.i = or i1 %.not83162.i.i.i.i, %i.dp
  br i1 %.not83.i.i.i.i, label %bb.h, label %bb.q

bb.h:                                             ; preds = %bb.g
  %i.dq = zext i32 %.063188.i.i.i.i to i64        ; 2 uses
  %.not84.i.i.i.i = icmp ugt i64 %.sroa.2.0.copyload.i.i.i, %i.dq
  br i1 %.not84.i.i.i.i, label %bb.i, label %"_ZL17DeduceForEachTypeIZZZL24isAtLeastAsSpecializedAsRN5clang4SemaENS0_14SourceLocationEPNS0_20FunctionTemplateDeclES5_NS0_30TemplatePartialOrderingContextEN4llvm8ArrayRefINS0_8QualTypeEEESA_bENK3$_0clEvENKUlS2_S5_NS8_INS0_16TemplateArgumentEEEE_clES2_S5_SD_EUlS2_PNS0_21TemplateParameterListEiNS0_16OptionalUnsignedIjEES9_S9_RNS0_4sema21TemplateDeductionInfoERNS7_15SmallVectorImplINS0_23DeducedTemplateArgumentEEE19PartialOrderingKindE_ENS0_23TemplateDeductionResultES2_SG_SA_SA_SL_SP_SQ_bOT_.exit.i.i.i"

bb.i:                                             ; preds = %bb.h
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %i.dq ; 2 uses
  %.sroa.0.0.copyload.i.i.i94.i.i.i.i = load i64, ptr %i.dr, align 8, !tbaa !43 ; 2 uses
  %i.ds = and i64 %.sroa.0.0.copyload.i.i.i94.i.i.i.i, -16
  %i.dt = inttoptr i64 %i.ds to ptr
  %i.du = load ptr, ptr %i.dt, align 16, !tbaa !42 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dw = load i8, ptr %i.dv, align 16
  %i.dx = icmp eq i8 %i.dw, 36
  br i1 %i.dx, label %"_ZL17DeduceForEachTypeIZZZL24isAtLeastAsSpecializedAsRN5clang4SemaENS0_14SourceLocationEPNS0_20FunctionTemplateDeclES5_NS0_30TemplatePartialOrderingContextEN4llvm8ArrayRefINS0_8QualTypeEEESA_bENK3$_0clEvENKUlS2_S5_NS8_INS0_16TemplateArgumentEEEE_clES2_S5_SD_EUlS2_PNS0_21TemplateParameterListEiNS0_16OptionalUnsignedIjEES9_S9_RNS0_4sema21TemplateDeductionInfoERNS7_15SmallVectorImplINS0_23DeducedTemplateArgumentEEE19PartialOrderingKindE_ENS0_23TemplateDeductionResultES2_SG_SA_SA_SL_SP_SQ_bOT_.exit.i.i.i", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dy = add i32 %.063188.i.i.i.i, 1             ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.dz, align 8, !tbaa !43
  %i.ea = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 15
  %.not.i.i.i.i.i = icmp eq i64 %i.ea, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.eb = call { ptr, i64 } @_ZN5clang8QualType27getSplitUnqualifiedTypeImplES0_(i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i) #22
  %i.ec = extractvalue { ptr, i64 } %i.eb, 0
  %.0.copyload.i.i.i.i.i95.pre.i.i.i.i = load i64, ptr %i.dr, align 8 ; 2 uses
  %.pre.i.i.i.i = and i64 %.0.copyload.i.i.i.i.i95.pre.i.i.i.i, -16
  %.pre200.i.i.i.i = inttoptr i64 %.pre.i.i.i.i to ptr
  %.pre39.i.i.i = load ptr, ptr %.pre200.i.i.i.i, align 16, !tbaa !42
  br label %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit.i.i.i.i

_ZNK5clang8QualType18getUnqualifiedTypeEv.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  %i.ed = phi ptr [ %i.du, %bb.j ], [ %.pre39.i.i.i, %bb.k ] ; 2 uses
  %.0.copyload.i.i.i.i.i95.i.i.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i94.i.i.i.i, %bb.j ], [ %.0.copyload.i.i.i.i.i95.pre.i.i.i.i, %bb.k ]
  %.sroa.03.0.in.in.i.i.i.i.i = phi ptr [ %i.dm, %bb.j ], [ %i.ec, %bb.k ]
  %.sroa.03.0.in.i.i.i.i.i = ptrtoint ptr %.sroa.03.0.in.in.i.i.i.i.i to i64
  %.sroa.03.0.i.i.i.i.i = and i64 %.sroa.03.0.in.i.i.i.i.i, -8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %.sroa.0.0.copyload.i.i96.i.i.i.i = load i64, ptr %i.ee, align 8, !tbaa !43
  %i.ef = and i64 %.sroa.0.0.copyload.i.i96.i.i.i.i, 15
  %.not.i97.i.i.i.i = icmp eq i64 %i.ef, 0
  br i1 %.not.i97.i.i.i.i, label %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit101.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit.i.i.i.i
  %i.eg = call { ptr, i64 } @_ZN5clang8QualType27getSplitUnqualifiedTypeImplES0_(i64 %.0.copyload.i.i.i.i.i95.i.i.i.i) #22
  %i.eh = extractvalue { ptr, i64 } %i.eg, 0
  br label %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit101.i.i.i.i

_ZNK5clang8QualType18getUnqualifiedTypeEv.exit101.i.i.i.i: ; preds = %bb.l, %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit.i.i.i.i
  %.sroa.03.0.in.in.i98.i.i.i.i = phi ptr [ %i.eh, %bb.l ], [ %i.ed, %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit.i.i.i.i ]
  %.sroa.03.0.in.i99.i.i.i.i = ptrtoint ptr %.sroa.03.0.in.in.i98.i.i.i.i to i64
  %.sroa.03.0.i100.i.i.i.i = and i64 %.sroa.03.0.in.i99.i.i.i.i, -8
  %.not8.i.i.i.i.i = icmp eq i32 %i.dy, 0
  br i1 %.not8.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit101.i.i.i.i
  %i.ei = load i8, ptr %i.aa, align 1, !tbaa !1099, !range !912, !noundef !728
  %i.ej = zext nneg i8 %i.ei to i32               ; 2 uses
  %.not.i102.i.i.i.i = icmp ult i32 %.063188.i.i.i.i, %i.ej
  %i.ek = sub nuw i32 %i.dy, %i.ej
  %spec.select.i.i.i.i.i = select i1 %.not.i102.i.i.i.i, i32 0, i32 %i.ek
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit101.i.i.i.i
  %.sroa.04.0.i.i.i.i.i = phi i32 [ 0, %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit101.i.i.i.i ], [ %spec.select.i.i.i.i.i, %bb.m ]
  %i.el = load i64, ptr %i.ac, align 8, !tbaa !1161 ; 4 uses
  %i.em = trunc i64 %i.el to i1
  br i1 %i.em, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.en = lshr i64 %i.el, 1
  %i.eo = lshr i64 %i.el, 58
  %i.ep = shl nsw i64 -1, %i.eo
  %i.eq = xor i64 %i.ep, -1
  %i.er = and i64 %i.en, %i.eq
  %i.es = lshr i64 %i.er, %i.di
  %i.et = trunc i64 %i.es to i1
  br label %"_ZZZZL24isAtLeastAsSpecializedAsRN5clang4SemaENS_14SourceLocationEPNS_20FunctionTemplateDeclES4_NS_30TemplatePartialOrderingContextEN4llvm8ArrayRefINS_8QualTypeEEES9_bENK3$_0clEvENKUlS1_S4_NS7_INS_16TemplateArgumentEEEE_clES1_S4_SC_ENKUlS1_PNS_21TemplateParameterListEiNS_16OptionalUnsignedIjEES8_S8_RNS_4sema21TemplateDeductionInfoERNS6_15SmallVectorImplINS_23DeducedTemplateArgumentEEE19PartialOrderingKindE_clES1_SF_iSH_S8_S8_SK_SO_SP_.exit.i.i.i.i"

bb.p:                                             ; preds = %bb.n
  %i.eu = inttoptr i64 %i.el to ptr
  %i.ev = lshr i32 %.070184.i.i.i.i, 6
  %i.ew = zext nneg i32 %i.ev to i64
  %i.ex = load ptr, ptr %i.eu, align 8, !tbaa !766
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.ew
  %i.ez = and i32 %.070184.i.i.i.i, 63
  %i.fa = load i64, ptr %i.ey, align 8, !tbaa !791
  %i.fb = zext nneg i32 %i.ez to i64
  %i.fc = shl nuw i64 1, %i.fb
  %i.fd = and i64 %i.fa, %i.fc
  %i.fe = icmp ne i64 %i.fd, 0
  br label %"_ZZZZL24isAtLeastAsSpecializedAsRN5clang4SemaENS_14SourceLocationEPNS_20FunctionTemplateDeclES4_NS_30TemplatePartialOrderingContextEN4llvm8ArrayRefINS_8QualTypeEEES9_bENK3$_0clEvENKUlS1_S4_NS7_INS_16TemplateArgumentEEEE_clES1_S4_SC_ENKUlS1_PNS_21TemplateParameterListEiNS_16OptionalUnsignedIjEES8_S8_RNS_4sema21TemplateDeductionInfoERNS6_15SmallVectorImplINS_23DeducedTemplateArgumentEEE19PartialOrderingKindE_clES1_SF_iSH_S8_S8_SK_SO_SP_.exit.i.i.i.i"

"_ZZZZL24isAtLeastAsSpecializedAsRN5clang4SemaENS_14SourceLocationEPNS_20FunctionTemplateDeclES4_NS_30TemplatePartialOrderingContextEN4llvm8ArrayRefINS_8QualTypeEEES9_bENK3$_0clEvENKUlS1_S4_NS7_INS_16TemplateArgumentEEEE_clES1_S4_SC_ENKUlS1_PNS_21TemplateParameterListEiNS_16OptionalUnsignedIjEES8_S8_RNS_4sema21TemplateDeductionInfoERNS6_15SmallVectorImplINS_23DeducedTemplateArgumentEEE19PartialOrderingKindE_clES1_SF_iSH_S8_S8_SK_SO_SP_.exit.i.i.i.i": ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i.i = phi i1 [ %i.et, %bb.o ], [ %i.fe, %bb.p ]
  %i.ff = call fastcc noundef range(i32 0, 11) i32 @_ZL25CheckDeductionConsistencyRN5clang4SemaEPNS_20FunctionTemplateDeclENS_16OptionalUnsignedIjEENS_8QualTypeES6_N4llvm8ArrayRefINS_16TemplateArgumentEEEb(ptr noundef nonnull align 8 dereferenceable(18640) %i.d, ptr noundef nonnull %i.g, i32 %.sroa.04.0.i.i.i.i.i, i64 %.sroa.03.0.i.i.i.i.i, i64 %.sroa.03.0.i100.i.i.i.i, ptr %i.cm, i64 %i.co, i1 noundef zeroext %.0.i.i.i.i.i.i.i) ; 2 uses
  %.not85.i.i.i.i = icmp eq i32 %i.ff, 0
  br i1 %.not85.i.i.i.i, label %"_ZZZZL24isAtLeastAsSpecializedAsRN5clang4SemaENS_14SourceLocationEPNS_20FunctionTemplateDeclES4_NS_30TemplatePartialOrderingContextEN4llvm8ArrayRefINS_8QualTypeEEES9_bENK3$_0clEvENKUlS1_S4_NS7_INS_16TemplateArgumentEEEE_clES1_S4_SC_ENKUlS1_PNS_21TemplateParameterListEiNS_16OptionalUnsignedIjEES8_S8_RNS_4sema21TemplateDeductionInfoERNS6_15SmallVectorImplINS_23DeducedTemplateArgumentEEE19PartialOrderingKindE_clES1_SF_iSH_S8_S8_SK_SO_SP_.exit..thread151_crit_edge.i.i.i.i", label %"_ZL17DeduceForEachTypeIZZZL24isAtLeastAsSpecializedAsRN5clang4SemaENS0_14SourceLocationEPNS0_20FunctionTemplateDeclES5_NS0_30TemplatePartialOrderingContextEN4llvm8ArrayRefINS0_8QualTypeEEESA_bENK3$_0clEvENKUlS2_S5_NS8_INS0_16TemplateArgumentEEEE_clES2_S5_SD_EUlS2_PNS0_21TemplateParameterListEiNS0_16OptionalUnsignedIjEES9_S9_RNS0_4sema21TemplateDeductionInfoERNS7_15SmallVectorImplINS0_23DeducedTemplateArgumentEEE19PartialOrderingKindE_ENS0_23TemplateDeductionResultES2_SG_SA_SA_SL_SP_SQ_bOT_.exit.i.i.i"

"_ZZZZL24isAtLeastAsSpecializedAsRN5clang4SemaENS_14SourceLocationEPNS_20FunctionTemplateDeclES4_NS_30TemplatePartialOrderingContextEN4llvm8ArrayRefINS_8QualTypeEEES9_bENK3$_0clEvENKUlS1_S4_NS7_INS_16TemplateArgumentEEEE_clES1_S4_SC_ENKUlS1_PNS_21TemplateParameterListEiNS_16OptionalUnsignedIjEES8_S8_RNS_4sema21TemplateDeductionInfoERNS6_15SmallVectorImplINS_23DeducedTemplateArgumentEEE19PartialOrderingKindE_clES1_SF_iSH_S8_S8_SK_SO_SP_.exit..thread151_crit_edge.i.i.i.i": ; preds = %"_ZZZZL24isAtLeastAsSpecializedAsRN5clang4SemaENS_14SourceLocationEPNS_20FunctionTemplateDeclES4_NS_30TemplatePartialOrderingContextEN4llvm8ArrayRefINS_8QualTypeEEES9_bENK3$_0clEvENKUlS1_S4_NS7_INS_16TemplateArgumentEEEE_clES1_S4_SC_ENKUlS1_PNS_21TemplateParameterListEiNS_16OptionalUnsignedIjEES8_S8_RNS_4sema21TemplateDeductionInfoERNS6_15SmallVectorImplINS_23DeducedTemplateArgumentEEE19PartialOrderingKindE_clES1_SF_iSH_S8_S8_SK_SO_SP_.exit.i.i.i.i"
  %.pre204.i.i.i.i = add i32 %.070184.i.i.i.i, 1  ; 2 uses
  %.pre206.i.i.i.i = zext i32 %.pre204.i.i.i.i to i64
  br label %.thread151.i.i.i.i

bb.q:                                             ; preds = %bb.g
  %i.fg = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.fg, align 16, !tbaa !43 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @_ZN5clang16TemplateArgument12initFromTypeENS_8QualTypeEbb(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 %.sroa.0.0.copyload.i.i.i.i.i, i1 noundef zeroext false, i1 noundef zeroext false) #22
  call fastcc void @_ZN12_GLOBAL__N_118PackDeductionScopeC2ERN5clang4SemaEPNS1_21TemplateParameterListERN4llvm15SmallVectorImplINS1_23DeducedTemplateArgumentEEERNS1_4sema21TemplateDeductionInfoENS1_16TemplateArgumentEbb(ptr noundef nonnull align 8 dereferenceable(512) %2, ptr noundef nonnull align 8 dereferenceable(18640) %i.d, ptr noundef %i.cy, ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(504) %i.k, ptr noundef nonnull byval(%"class.clang::TemplateArgument") align 8 %3, i1 noundef zeroext false, i1 noundef zeroext true)
  %i.fh = add i32 %.070184.i.i.i.i, 1             ; 2 uses
  %i.fi = zext i32 %i.fh to i64                   ; 2 uses
  %i.fj = icmp eq i64 %.sroa.22.0.copyload.i.i.i, %i.fi
  %.val.i.i.i.i = load i32, ptr %i.cz, align 8
  %i.fk = icmp ne i32 %.val.i.i.i.i, 0
  %or.cond.i.i.i.i = select i1 %i.fj, i1 true, i1 %i.fk
  br i1 %or.cond.i.i.i.i, label %.preheader.i.i.i.i, label %bb.an

.preheader.i.i.i.i:                               ; preds = %bb.q
  %i.fl = zext i32 %.063188.i.i.i.i to i64        ; 2 uses
  %i.fm = icmp ugt i64 %.sroa.2.0.copyload.i.i.i, %i.fl
  br i1 %i.fm, label %.lr.ph177.i.i.i.i, label %.critedge.i.i.i.i

.lr.ph177.i.i.i.i:                                ; preds = %.preheader.i.i.i.i
  %i.fn = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -16
  %i.fo = inttoptr i64 %i.fn to ptr
  %i.fp = lshr i32 %.070184.i.i.i.i, 6
  %i.fq = zext nneg i32 %i.fp to i64
  %i.fr = and i32 %.070184.i.i.i.i, 63
  %i.fs = zext nneg i32 %i.fr to i64
  %i.ft = shl nuw i64 1, %i.fs
  %.val91.pre.i.i.i.i = load i32, ptr %i.db, align 8
  br label %bb.r

bb.r:                                             ; preds = %_ZN12_GLOBAL__N_118PackDeductionScope15nextPackElementEv.exit.i.i.i.i, %.lr.ph177.i.i.i.i
  %.val91.i.i.i.i = phi i32 [ %.val91.pre.i.i.i.i, %.lr.ph177.i.i.i.i ], [ %i.jg, %_ZN12_GLOBAL__N_118PackDeductionScope15nextPackElementEv.exit.i.i.i.i ]
  %i.fu = phi i64 [ %i.fl, %.lr.ph177.i.i.i.i ], [ %i.jh, %_ZN12_GLOBAL__N_118PackDeductionScope15nextPackElementEv.exit.i.i.i.i ]
  %.2176.i.i.i.i = phi i32 [ %.062189.i.i.i.i, %.lr.ph177.i.i.i.i ], [ %.2..i.i.i.i, %_ZN12_GLOBAL__N_118PackDeductionScope15nextPackElementEv.exit.i.i.i.i ] ; 2 uses
  %.164175.i.i.i.i = phi i32 [ %.063188.i.i.i.i, %.lr.ph177.i.i.i.i ], [ %i.fy, %_ZN12_GLOBAL__N_118PackDeductionScope15nextPackElementEv.exit.i.i.i.i ] ; 4 uses
  %.val92.i.i.i.i = load i32, ptr %i.cz, align 8, !tbaa !732 ; 2 uses
  %.not.i103.i.i.i.i = icmp eq i32 %.val92.i.i.i.i, 0
  %i.fv = add i32 %.val92.i.i.i.i, -1
  %i.fw = icmp ugt i32 %i.fv, %.val91.i.i.i.i
  %i.fx = select i1 %.not.i103.i.i.i.i, i1 true, i1 %i.fw
  br i1 %i.fx, label %bb.s, label %.critedge.i.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.fy = add i32 %.164175.i.i.i.i, 1             ; 5 uses
  %i.fz = load ptr, ptr %i.fo, align 16, !tbaa !42 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %.sroa.0.0.copyload.i.i105.i.i.i.i = load i64, ptr %i.ga, align 8, !tbaa !43
  %i.gb = and i64 %.sroa.0.0.copyload.i.i105.i.i.i.i, 15
  %.not.i106.i.i.i.i = icmp eq i64 %i.gb, 0
  br i1 %.not.i106.i.i.i.i, label %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit110.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gc = call { ptr, i64 } @_ZN5clang8QualType27getSplitUnqualifiedTypeImplES0_(i64 %.sroa.0.0.copyload.i.i.i.i.i) #22
  %i.gd = extractvalue { ptr, i64 } %i.gc, 0
  br label %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit110.i.i.i.i

_ZNK5clang8QualType18getUnqualifiedTypeEv.exit110.i.i.i.i: ; preds = %bb.t, %bb.s
  %.sroa.03.0.in.in.i107.i.i.i.i = phi ptr [ %i.gd, %bb.t ], [ %i.fz, %bb.s ]
  %.sroa.03.0.in.i108.i.i.i.i = ptrtoint ptr %.sroa.03.0.in.in.i107.i.i.i.i to i64
  %.sroa.03.0.i109.i.i.i.i = and i64 %.sroa.03.0.in.i108.i.i.i.i, -8
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %i.fu
  %.0.copyload.i.i.i.i.i111.i.i.i.i = load i64, ptr %i.ge, align 8 ; 2 uses
  %i.gf = and i64 %.0.copyload.i.i.i.i.i111.i.i.i.i, -16
  %i.gg = inttoptr i64 %i.gf to ptr
  %i.gh = load ptr, ptr %i.gg, align 16, !tbaa !42 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %.sroa.0.0.copyload.i.i112.i.i.i.i = load i64, ptr %i.gi, align 8, !tbaa !43
  %i.gj = and i64 %.sroa.0.0.copyload.i.i112.i.i.i.i, 15
  %.not.i113.i.i.i.i = icmp eq i64 %i.gj, 0
  br i1 %.not.i113.i.i.i.i, label %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit117.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit110.i.i.i.i
  %i.gk = call { ptr, i64 } @_ZN5clang8QualType27getSplitUnqualifiedTypeImplES0_(i64 %.0.copyload.i.i.i.i.i111.i.i.i.i) #22
  %i.gl = extractvalue { ptr, i64 } %i.gk, 0
  br label %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit117.i.i.i.i

_ZNK5clang8QualType18getUnqualifiedTypeEv.exit117.i.i.i.i: ; preds = %bb.u, %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit110.i.i.i.i
  %.sroa.03.0.in.in.i114.i.i.i.i = phi ptr [ %i.gl, %bb.u ], [ %i.gh, %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit110.i.i.i.i ]
  %.sroa.03.0.in.i115.i.i.i.i = ptrtoint ptr %.sroa.03.0.in.in.i114.i.i.i.i to i64
  %.sroa.03.0.i116.i.i.i.i = and i64 %.sroa.03.0.in.i115.i.i.i.i, -8
  %.not8.i118.i.i.i.i = icmp eq i32 %i.fy, 0
  br i1 %.not8.i118.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit117.i.i.i.i
  %i.gm = load i8, ptr %i.aa, align 1, !tbaa !1099, !range !912, !noundef !728
  %i.gn = zext nneg i8 %i.gm to i32               ; 2 uses
  %.not.i119.i.i.i.i = icmp ult i32 %.164175.i.i.i.i, %i.gn
  %i.go = sub nuw i32 %i.fy, %i.gn
  %spec.select.i120.i.i.i.i = select i1 %.not.i119.i.i.i.i, i32 0, i32 %i.go
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit117.i.i.i.i
  %.sroa.04.0.i121.i.i.i.i = phi i32 [ 0, %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit117.i.i.i.i ], [ %spec.select.i120.i.i.i.i, %bb.v ]
  %i.gp = load i64, ptr %i.ac, align 8, !tbaa !1161 ; 4 uses
  %i.gq = trunc i64 %i.gp to i1
  br i1 %i.gq, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.gr = lshr i64 %i.gp, 1
  %i.gs = lshr i64 %i.gp, 58
  %i.gt = shl nsw i64 -1, %i.gs
  %i.gu = xor i64 %i.gt, -1
  %i.gv = and i64 %i.gr, %i.gu
  %i.gw = lshr i64 %i.gv, %i.di
  %i.gx = trunc i64 %i.gw to i1
  br label %"_ZZZZL24isAtLeastAsSpecializedAsRN5clang4SemaENS_14SourceLocationEPNS_20FunctionTemplateDeclES4_NS_30TemplatePartialOrderingContextEN4llvm8ArrayRefINS_8QualTypeEEES9_bENK3$_0clEvENKUlS1_S4_NS7_INS_16TemplateArgumentEEEE_clES1_S4_SC_ENKUlS1_PNS_21TemplateParameterListEiNS_16OptionalUnsignedIjEES8_S8_RNS_4sema21TemplateDeductionInfoERNS6_15SmallVectorImplINS_23DeducedTemplateArgumentEEE19PartialOrderingKindE_clES1_SF_iSH_S8_S8_SK_SO_SP_.exit126.i.i.i.i"

bb.y:                                             ; preds = %bb.w
  %i.gy = inttoptr i64 %i.gp to ptr
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !766
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %i.fq
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !791
  %i.hc = and i64 %i.hb, %i.ft
  %i.hd = icmp ne i64 %i.hc, 0
  br label %"_ZZZZL24isAtLeastAsSpecializedAsRN5clang4SemaENS_14SourceLocationEPNS_20FunctionTemplateDeclES4_NS_30TemplatePartialOrderingContextEN4llvm8ArrayRefINS_8QualTypeEEES9_bENK3$_0clEvENKUlS1_S4_NS7_INS_16TemplateArgumentEEEE_clES1_S4_SC_ENKUlS1_PNS_21TemplateParameterListEiNS_16OptionalUnsignedIjEES8_S8_RNS_4sema21TemplateDeductionInfoERNS6_15SmallVectorImplINS_23DeducedTemplateArgumentEEE19PartialOrderingKindE_clES1_SF_iSH_S8_S8_SK_SO_SP_.exit126.i.i.i.i"

"_ZZZZL24isAtLeastAsSpecializedAsRN5clang4SemaENS_14SourceLocationEPNS_20FunctionTemplateDeclES4_NS_30TemplatePartialOrderingContextEN4llvm8ArrayRefINS_8QualTypeEEES9_bENK3$_0clEvENKUlS1_S4_NS7_INS_16TemplateArgumentEEEE_clES1_S4_SC_ENKUlS1_PNS_21TemplateParameterListEiNS_16OptionalUnsignedIjEES8_S8_RNS_4sema21TemplateDeductionInfoERNS6_15SmallVectorImplINS_23DeducedTemplateArgumentEEE19PartialOrderingKindE_clES1_SF_iSH_S8_S8_SK_SO_SP_.exit126.i.i.i.i": ; preds = %bb.y, %bb.x
  %.0.i.i.i125.i.i.i.i = phi i1 [ %i.gx, %bb.x ], [ %i.hd, %bb.y ]
  %i.he = call fastcc noundef range(i32 0, 11) i32 @_ZL25CheckDeductionConsistencyRN5clang4SemaEPNS_20FunctionTemplateDeclENS_16OptionalUnsignedIjEENS_8QualTypeES6_N4llvm8ArrayRefINS_16TemplateArgumentEEEb(ptr noundef nonnull align 8 dereferenceable(18640) %i.d, ptr noundef nonnull %i.g, i32 %.sroa.04.0.i121.i.i.i.i, i64 %.sroa.03.0.i109.i.i.i.i, i64 %.sroa.03.0.i116.i.i.i.i, ptr %i.cm, i64 %i.co, i1 noundef zeroext %.0.i.i.i125.i.i.i.i) ; 3 uses
  %.not88.i.i.i.i = icmp eq i32 %i.he, 0          ; 2 uses
  %.2..i.i.i.i = select i1 %.not88.i.i.i.i, i32 %.2176.i.i.i.i, i32 %i.he ; 2 uses
  br i1 %.not88.i.i.i.i, label %bb.z, label %.loopexit.i.i.i.i

bb.z:                                             ; preds = %"_ZZZZL24isAtLeastAsSpecializedAsRN5clang4SemaENS_14SourceLocationEPNS_20FunctionTemplateDeclES4_NS_30TemplatePartialOrderingContextEN4llvm8ArrayRefINS_8QualTypeEEES9_bENK3$_0clEvENKUlS1_S4_NS7_INS_16TemplateArgumentEEEE_clES1_S4_SC_ENKUlS1_PNS_21TemplateParameterListEiNS_16OptionalUnsignedIjEES8_S8_RNS_4sema21TemplateDeductionInfoERNS6_15SmallVectorImplINS_23DeducedTemplateArgumentEEE19PartialOrderingKindE_clES1_SF_iSH_S8_S8_SK_SO_SP_.exit126.i.i.i.i"
  %i.hf = load i8, ptr %i.dc, align 1, !tbaa !1169, !range !912, !noundef !728
  %i.hg = trunc nuw i8 %i.hf to i1
  br i1 %i.hg, label %_ZN12_GLOBAL__N_118PackDeductionScope15nextPackElementEv.exit.i.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.hh = load ptr, ptr %i.dd, align 8, !tbaa !766 ; 2 uses
  %i.hi = load i32, ptr %i.de, align 8, !tbaa !767 ; 2 uses
  %i.hj = zext i32 %i.hi to i64
  %.idx.i.i.i.i.i = mul nuw nsw i64 %i.hj, 224
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 %.idx.i.i.i.i.i
  %.not42.i.i.i.i.i = icmp eq i32 %i.hi, 0
  br i1 %.not42.i.i.i.i.i, label %_ZN12_GLOBAL__N_118PackDeductionScope15nextPackElementEv.exit.i.i.i.i, label %.lr.ph46.i.i.i.i.i

.lr.ph46.i.i.i.i.i:                               ; preds = %bb.aa, %bb.am
  %.043.i.i.i.i.i = phi ptr [ %i.je, %bb.am ], [ %i.hh, %bb.aa ] ; 6 uses
  %i.hl = load ptr, ptr %i.df, align 8, !tbaa !1177, !nonnull !728, !align !729
  %i.hm = load i32, ptr %.043.i.i.i.i.i, align 8, !tbaa !787
  %i.hn = zext i32 %i.hm to i64
  %i.ho = load ptr, ptr %i.hl, align 8, !tbaa !766
  %i.hp = getelementptr inbounds nuw [32 x i8], ptr %i.ho, i64 %i.hn ; 7 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.043.i.i.i.i.i, i64 72 ; 6 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.043.i.i.i.i.i, i64 80 ; 7 uses
  %i.hs = load i32, ptr %i.hr, align 8, !tbaa !767 ; 5 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.hs, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph46.i.i.i.i.i
  %i.ht = load i64, ptr %i.hp, align 8
  %i.hu = and i64 %i.ht, 2147483647
  %i.hv = icmp eq i64 %i.hu, 0
  br i1 %i.hv, label %bb.am, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph46.i.i.i.i.i
  %i.hw = zext i32 %i.hs to i64                   ; 2 uses
  %i.hx = load i32, ptr %i.db, align 8, !tbaa !1165 ; 2 uses
  %i.hy = icmp ult i32 %i.hs, %i.hx
  br i1 %i.hy, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i
end_hunk_0
