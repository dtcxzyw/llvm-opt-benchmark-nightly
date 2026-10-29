Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaExpr?download=true
inline.NumInlined: 75953
inline.NumDeleted: 20715
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZL28DiagnoseRecursiveConstFieldsRN5clang4SemaEPKNS_9ValueDeclEPKNS_10RecordTypeENS_14SourceLocationENS_11SourceRangeE16OriginalExprKindRb:_ZNSt6vectorIPKN5clang10RecordTypeESaIS3_EE9push_backERKS3_.exit
  %i.aqt = load ptr, ptr %.sroa.032.2.i.i.i.i, align 8, !tbaa !4164
  %i.aqu = icmp eq ptr %i.aqt, %i.apo
  %spec.select.i.i.i.i105 = select i1 %i.aqu, ptr %.sroa.032.2.i.i.i.i, ptr %.sroa.11.1528
  br label %_ZN4llvm12is_containedIRSt6vectorIPKN5clang10RecordTypeESaIS5_EES5_EEbOT_RKT0_.exit

_ZN4llvm12is_containedIRSt6vectorIPKN5clang10RecordTypeESaIS5_EES5_EEbOT_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.cr
  %i.aqv = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 8
  br label %_ZN4llvm12is_containedIRSt6vectorIPKN5clang10RecordTypeESaIS5_EES5_EEbOT_RKT0_.exit

_ZN4llvm12is_containedIRSt6vectorIPKN5clang10RecordTypeESaIS5_EES5_EEbOT_RKT0_.exit.loopexit.split.loop.exit751: ; preds = %bb.cs
  %i.aqw = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 16
  br label %_ZN4llvm12is_containedIRSt6vectorIPKN5clang10RecordTypeESaIS5_EES5_EEbOT_RKT0_.exit

_ZN4llvm12is_containedIRSt6vectorIPKN5clang10RecordTypeESaIS5_EES5_EEbOT_RKT0_.exit.loopexit.split.loop.exit753: ; preds = %bb.ct
  %i.aqx = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 24
  br label %_ZN4llvm12is_containedIRSt6vectorIPKN5clang10RecordTypeESaIS5_EES5_EEbOT_RKT0_.exit

_ZN4llvm12is_containedIRSt6vectorIPKN5clang10RecordTypeESaIS5_EES5_EEbOT_RKT0_.exit: ; preds = %bb.cq, %_ZN4llvm12is_containedIRSt6vectorIPKN5clang10RecordTypeESaIS5_EES5_EEbOT_RKT0_.exit.loopexit.split.loop.exit, %_ZN4llvm12is_containedIRSt6vectorIPKN5clang10RecordTypeESaIS5_EES5_EEbOT_RKT0_.exit.loopexit.split.loop.exit751, %_ZN4llvm12is_containedIRSt6vectorIPKN5clang10RecordTypeESaIS5_EES5_EEbOT_RKT0_.exit.loopexit.split.loop.exit753, %bb.cv, %._crit_edge._crit_edge.i.i.i.i, %._crit_edge._crit_edge57.i.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i.i = phi ptr [ %.sroa.032.1.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ], [ %spec.select.i.i.i.i105, %._crit_edge._crit_edge57.i.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i.i, %bb.cv ], [ %i.aqx, %_ZN4llvm12is_containedIRSt6vectorIPKN5clang10RecordTypeESaIS5_EES5_EEbOT_RKT0_.exit.loopexit.split.loop.exit753 ], [ %i.aqw, %_ZN4llvm12is_containedIRSt6vectorIPKN5clang10RecordTypeESaIS5_EES5_EEbOT_RKT0_.exit.loopexit.split.loop.exit751 ], [ %i.aqv, %_ZN4llvm12is_containedIRSt6vectorIPKN5clang10RecordTypeESaIS5_EES5_EEbOT_RKT0_.exit.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i.i, %bb.cq ]
  %.not468 = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i, %.sroa.11.1528
  br i1 %.not468, label %_ZN4llvm12is_containedIRSt6vectorIPKN5clang10RecordTypeESaIS5_EES5_EEbOT_RKT0_.exit.thread, label %_ZNSt6vectorIPKN5clang10RecordTypeESaIS3_EE9push_backERKS3_.exit113

_ZN4llvm12is_containedIRSt6vectorIPKN5clang10RecordTypeESaIS5_EES5_EEbOT_RKT0_.exit.thread: ; preds = %._crit_edge.i.i.i.i, %_ZN4llvm12is_containedIRSt6vectorIPKN5clang10RecordTypeESaIS5_EES5_EEbOT_RKT0_.exit
  %.not.i106 = icmp eq ptr %.sroa.11.1528, %.sroa.19.1529
  br i1 %.not.i106, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %_ZN4llvm12is_containedIRSt6vectorIPKN5clang10RecordTypeESaIS5_EES5_EEbOT_RKT0_.exit.thread
  store ptr %i.apo, ptr %.sroa.11.1528, align 8, !tbaa !4164
  %i.aqy = getelementptr inbounds nuw i8, ptr %.sroa.11.1528, i64 8
  br label %_ZNSt6vectorIPKN5clang10RecordTypeESaIS3_EE9push_backERKS3_.exit113

bb.cz:                                            ; preds = %_ZN4llvm12is_containedIRSt6vectorIPKN5clang10RecordTypeESaIS5_EES5_EEbOT_RKT0_.exit.thread
  %i.aqz = icmp eq i64 %i.apu, 9223372036854775800
  br i1 %i.aqz, label %bb.da, label %_ZNKSt6vectorIPKN5clang10RecordTypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i107

bb.da:                                            ; preds = %bb.cz
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.52) #33
  unreachable

_ZNKSt6vectorIPKN5clang10RecordTypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i107: ; preds = %bb.cz
  %i.ara = ashr exact i64 %i.apu, 3               ; 3 uses
  %.sroa.speculated.i.i.i108 = call i64 @llvm.umax.i64(i64 %i.ara, i64 1)
  %i.arb = add nsw i64 %.sroa.speculated.i.i.i108, %i.ara ; 2 uses
  %i.arc = icmp ult i64 %i.arb, %i.ara
  %i.ard = call i64 @llvm.umin.i64(i64 %i.arb, i64 1152921504606846975)
  %i.are = select i1 %i.arc, i64 1152921504606846975, i64 %i.ard ; 3 uses
  %.not.i.i.i109 = icmp ne i64 %i.are, 0
  call void @llvm.assume(i1 %.not.i.i.i109)
  %i.arf = shl nuw nsw i64 %i.are, 3
  %i.arg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.arf) #34 ; 4 uses
  %i.arh = getelementptr inbounds i8, ptr %i.arg, i64 %i.apu ; 2 uses
  store ptr %i.apo, ptr %i.arh, align 8, !tbaa !4164
  %i.ari = icmp sgt i64 %i.apu, 0
  br i1 %i.ari, label %bb.db, label %_ZNSt6vectorIPKN5clang10RecordTypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i112

bb.db:                                            ; preds = %_ZNKSt6vectorIPKN5clang10RecordTypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i107
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.arg, ptr align 8 %.sroa.0422.1527, i64 %i.apu, i1 false)
  br label %_ZNSt6vectorIPKN5clang10RecordTypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i112

_ZNSt6vectorIPKN5clang10RecordTypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i112: ; preds = %bb.db, %_ZNKSt6vectorIPKN5clang10RecordTypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i107
  %i.arj = getelementptr inbounds nuw i8, ptr %i.arh, i64 8
  %i.ark = ptrtoint ptr %.sroa.19.1529 to i64
  %i.arl = sub i64 %i.ark, %i.apt
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0422.1527, i64 noundef %i.arl) #32
  %i.arm = getelementptr inbounds nuw [8 x i8], ptr %i.arg, i64 %i.are
  br label %_ZNSt6vectorIPKN5clang10RecordTypeESaIS3_EE9push_backERKS3_.exit113

_ZNSt6vectorIPKN5clang10RecordTypeESaIS3_EE9push_backERKS3_.exit113: ; preds = %_ZNSt6vectorIPKN5clang10RecordTypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i112, %bb.cy, %_ZN4llvm12is_containedIRSt6vectorIPKN5clang10RecordTypeESaIS5_EES5_EEbOT_RKT0_.exit, %bb.co
  %.sroa.0422.2 = phi ptr [ %.sroa.0422.1527, %bb.co ], [ %.sroa.0422.1527, %_ZN4llvm12is_containedIRSt6vectorIPKN5clang10RecordTypeESaIS5_EES5_EEbOT_RKT0_.exit ], [ %i.arg, %_ZNSt6vectorIPKN5clang10RecordTypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i112 ], [ %.sroa.0422.1527, %bb.cy ] ; 2 uses
  %.sroa.11.2 = phi ptr [ %.sroa.11.1528, %bb.co ], [ %.sroa.11.1528, %_ZN4llvm12is_containedIRSt6vectorIPKN5clang10RecordTypeESaIS5_EES5_EEbOT_RKT0_.exit ], [ %i.arj, %_ZNSt6vectorIPKN5clang10RecordTypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i112 ], [ %i.aqy, %bb.cy ] ; 2 uses
  %.sroa.19.2 = phi ptr [ %.sroa.19.1529, %bb.co ], [ %.sroa.19.1529, %_ZN4llvm12is_containedIRSt6vectorIPKN5clang10RecordTypeESaIS5_EES5_EEbOT_RKT0_.exit ], [ %i.arm, %_ZNSt6vectorIPKN5clang10RecordTypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i112 ], [ %.sroa.19.1529, %bb.cy ] ; 2 uses
  %i.arn = getelementptr inbounds nuw i8, ptr %.sroa.0416.0530, i64 8
  %.0.copyload.i.i.i.i.i.i114 = load i64, ptr %i.arn, align 8
  %i.aro = and i64 %.0.copyload.i.i.i.i.i.i114, -8 ; 2 uses
  %i.arp = inttoptr i64 %i.aro to ptr             ; 2 uses
  %.not1.i.i = icmp eq i64 %i.aro, 0
  br i1 %.not1.i.i, label %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIPKN5clang10RecordTypeESaIS3_EE9push_backERKS3_.exit113, %bb.dc
  %.sroa.0416.1 = phi ptr [ %i.arx, %bb.dc ], [ %i.arp, %_ZNSt6vectorIPKN5clang10RecordTypeESaIS3_EE9push_backERKS3_.exit113 ] ; 3 uses
  %i.arq = getelementptr inbounds nuw i8, ptr %.sroa.0416.1, i64 28
  %i.arr = load i32, ptr %i.arq, align 4
  %i.ars = and i32 %i.arr, 127
  %i.art = add nsw i32 %i.ars, -50
  %i.aru = icmp ult i32 %i.art, 3
  br i1 %i.aru, label %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit, label %bb.dc

bb.dc:                                            ; preds = %.lr.ph.i.i
  %i.arv = getelementptr inbounds nuw i8, ptr %.sroa.0416.1, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.arv, align 8
  %i.arw = and i64 %.0.copyload.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.arx = inttoptr i64 %i.arw to ptr             ; 2 uses
  %.not.i.i115 = icmp eq i64 %i.arw, 0
  br i1 %.not.i.i115, label %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit, label %.lr.ph.i.i, !llvm.loop !20

_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit: ; preds = %.lr.ph.i.i, %bb.dc, %_ZNSt6vectorIPKN5clang10RecordTypeESaIS3_EE9push_backERKS3_.exit113
  %.sroa.0416.2 = phi ptr [ %i.arp, %_ZNSt6vectorIPKN5clang10RecordTypeESaIS3_EE9push_backERKS3_.exit113 ], [ %i.arx, %bb.dc ], [ %.sroa.0416.1, %.lr.ph.i.i ] ; 2 uses
  %.not466 = icmp eq ptr %.sroa.0416.2, null
  br i1 %.not466, label %._crit_edge, label %bb.b

_ZNSt6vectorIPKN5clang10RecordTypeESaIS3_EED2Ev.exit: ; preds = %._crit_edge
  %i.ary = ptrtoint ptr %.sroa.19.1.lcssa to i64
  %i.arz = sub i64 %i.ary, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0422.1.lcssa, i64 noundef %i.arz) #32
  ret void
}

declare noundef zeroext i1 @_ZNK5clang4Type18isObjCNSObjectTypeEv(ptr noundef nonnull align 16 dereferenceable(24)) local_unnamed_addr #2

declare i64 @_ZNK5clang8CallExpr17getCallReturnTypeERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(23904)) local_unnamed_addr #2

declare i32 @_ZN5clang5Lexer19getLocForEndOfTokenENS_14SourceLocationEjRKNS_13SourceManagerERKNS_11LangOptionsE(i32, i32 noundef, ptr noundef nonnull align 8 dereferenceable(776), ptr noundef nonnull align 8 dereferenceable(1136)) local_unnamed_addr #2

declare void @_ZNK4llvm5Twine8toVectorERNS_15SmallVectorImplIcEE(ptr noundef nonnull align 8 dereferenceable(34), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare noundef i32 @_ZNK5clang13CXXMethodDecl23size_overridden_methodsEv(ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #2

declare noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef) local_unnamed_addr #2

declare { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL23diagnoseXorMisusedAsPowRN5clang4SemaERKNS_12ActionResultIPNS_4ExprELb1EEES7_NS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i64 %.0.val, i64 %.0.val1, i32 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.llvm::APInt", align 8       ; 18 uses
  %3 = alloca %"class.llvm::APInt", align 8       ; 16 uses
  %4 = alloca %"class.llvm::StringRef", align 8   ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 19 uses
  %7 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  %8 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %11 = alloca %"class.llvm::APInt", align 8      ; 9 uses
  %12 = alloca %"class.llvm::APInt", align 8      ; 5 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.d = alloca i8, align 1                       ; 6 uses
  %14 = alloca %"class.llvm::APInt", align 8      ; 8 uses
  %15 = alloca %"class.llvm::APInt", align 8      ; 5 uses
  %16 = alloca %"class.llvm::APInt", align 8      ; 9 uses
  %17 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %20 = alloca %"class.clang::FixItHint", align 8 ; 6 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %22 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %24 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %27 = alloca %"class.clang::FixItHint", align 8 ; 6 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %29 = alloca %"class.std::allocator.255", align 1 ; 3 uses
  %30 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %34 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %36 = alloca %"class.clang::FixItHint", align 8 ; 6 uses
  %37 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.e = icmp slt i32 %1, 0
  br i1 %i.e, label %.critedge165, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = and i64 %.0.val, -2
  %i.g = inttoptr i64 %i.f to ptr                 ; 6 uses
  %i.h = tail call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #31
  %i.i = icmp slt i32 %i.h, 0
  %i.j = and i64 %.0.val1, -2
  %i.k = inttoptr i64 %i.j to ptr                 ; 5 uses
  br i1 %i.i, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.l = tail call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #31
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %.critedge165, label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.n = load i16, ptr %i.g, align 8
  %i.o = and i16 %i.n, 511
  %.not = icmp eq i16 %i.o, 54
  br i1 %.not, label %bb.d, label %.critedge165

bb.d:                                             ; preds = %.critedge
  %i.p = load i16, ptr %i.k, align 8
  %i.q = and i16 %i.p, 511
  switch i16 %i.q, label %.critedge165 [
    i16 54, label %bb.h
    i16 4, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.r = load i32, ptr %i.k, align 8
  %i.s = lshr i32 %i.r, 19
  %i.t = and i32 %i.s, 31                         ; 2 uses
  %i.u = add nsw i32 %i.t, -8
  %or.cond = icmp ult i32 %i.u, -2
  br i1 %or.cond, label %.critedge165, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1610 ; 2 uses
  %i.x = load i16, ptr %i.w, align 8
  %i.y = and i16 %i.x, 511
  %.not99 = icmp eq i16 %i.y, 54
  br i1 %.not99, label %bb.g, label %.critedge165

bb.g:                                             ; preds = %bb.f
  %39 = icmp eq i32 %i.t, 7                       ; 2 uses
  %i.z = xor i1 %39, true
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g
  %.2146 = phi ptr [ %i.k, %bb.d ], [ %i.w, %bb.g ] ; 4 uses
  %.2143 = phi i1 [ false, %bb.d ], [ %i.z, %bb.g ]
  %.2 = phi i1 [ false, %bb.d ], [ %39, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4187)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !2217, !noalias !4188 ; 4 uses
  %i.ad = icmp ugt i32 %i.ac, 64
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ae = zext i32 %i.ac to i64
  %i.af = add nuw nsw i64 %i.ae, 63
  %i.ag = lshr i64 %i.af, 6
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !788, !noalias !4188
  call void @_ZN4llvm5APIntC1EjNS_8ArrayRefImEE(ptr noundef nonnull align 8 dereferenceable(12) %2, i32 noundef %i.ac, ptr %i.ah, i64 %i.ag) #30
  br label %_ZNK5clang12APIntStorage8getValueEv.exit

bb.j:                                             ; preds = %bb.h
  %i.ai = load i64, ptr %i.aa, align 8, !tbaa !788, !noalias !4188
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.ac, ptr %i.aj, align 8, !tbaa !1770, !alias.scope !4188
  store i64 %i.ai, ptr %2, align 8, !tbaa !788, !alias.scope !4188
  br label %_ZNK5clang12APIntStorage8getValueEv.exit

_ZNK5clang12APIntStorage8getValueEv.exit:         ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.ak = getelementptr inbounds nuw i8, ptr %.2146, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4189)
  call void @llvm.experimental.noalias.scope.decl(metadata !4190)
  %i.al = getelementptr inbounds nuw i8, ptr %.2146, i64 24
  %i.am = load i32, ptr %i.al, align 8, !tbaa !2217, !noalias !4191 ; 4 uses
  %i.an = icmp ugt i32 %i.am, 64
  br i1 %i.an, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK5clang12APIntStorage8getValueEv.exit
  %i.ao = zext i32 %i.am to i64
  %i.ap = add nuw nsw i64 %i.ao, 63
  %i.aq = lshr i64 %i.ap, 6
  %i.ar = load ptr, ptr %i.ak, align 8, !tbaa !788, !noalias !4191
  call void @_ZN4llvm5APIntC1EjNS_8ArrayRefImEE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef %i.am, ptr %i.ar, i64 %i.aq) #30
  br label %_ZNK5clang12APIntStorage8getValueEv.exit173

bb.l:                                             ; preds = %_ZNK5clang12APIntStorage8getValueEv.exit
  %i.as = load i64, ptr %i.ak, align 8, !tbaa !788, !noalias !4191
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.am, ptr %i.at, align 8, !tbaa !1770, !alias.scope !4191
  store i64 %i.as, ptr %3, align 8, !tbaa !788, !alias.scope !4191
  br label %_ZNK5clang12APIntStorage8getValueEv.exit173

_ZNK5clang12APIntStorage8getValueEv.exit173:      ; preds = %bb.k, %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !1770 ; 4 uses
  %i.aw = icmp ult i32 %i.av, 65
  br i1 %i.aw, label %_ZNK4llvm5APIntneEm.exit, label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i

_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i:        ; preds = %_ZNK5clang12APIntStorage8getValueEv.exit173
  %i.ax = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %2) #31
  %i.ay = sub i32 %i.av, %i.ax
  %i.az = icmp ult i32 %i.ay, 65
  br i1 %i.az, label %_ZNK4llvm5APIntneEm.exit.thread70, label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i174

_ZNK4llvm5APIntneEm.exit:                         ; preds = %_ZNK5clang12APIntStorage8getValueEv.exit173
  %.0.i.i.i = load i64, ptr %2, align 8           ; 2 uses
  %.not101 = icmp eq i64 %.0.i.i.i, 2
  br i1 %.not101, label %bb.m, label %_ZNK4llvm5APIntneEm.exit177

_ZNK4llvm5APIntneEm.exit.thread70:                ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i
  %i.ba = load ptr, ptr %2, align 8
  %.0.i.i.i72 = load i64, ptr %i.ba, align 8, !tbaa !788
  %.not100 = icmp eq i64 %.0.i.i.i72, 2
  br i1 %.not100, label %bb.m, label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i174

_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i174:     ; preds = %_ZNK4llvm5APIntneEm.exit.thread70, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i
  %i.bb = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %2) #31
  %i.bc = sub i32 %i.av, %i.bb
  %i.bd = icmp ult i32 %i.bc, 65
  br i1 %i.bd, label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i174._ZNK4llvm5APIntneEm.exit177_crit_edge, label %_ZNK4llvm5APIntneEm.exit177.thread

_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i174._ZNK4llvm5APIntneEm.exit177_crit_edge: ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i174
  %.pre = load ptr, ptr %2, align 8
  %.0.i.i.i176.pr = load i64, ptr %.pre, align 8, !tbaa !788
  br label %_ZNK4llvm5APIntneEm.exit177

_ZNK4llvm5APIntneEm.exit177:                      ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i174._ZNK4llvm5APIntneEm.exit177_crit_edge, %_ZNK4llvm5APIntneEm.exit
  %.0.i.i.i176 = phi i64 [ %.0.i.i.i176.pr, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i174._ZNK4llvm5APIntneEm.exit177_crit_edge ], [ %.0.i.i.i, %_ZNK4llvm5APIntneEm.exit ]
  %.not102 = icmp eq i64 %.0.i.i.i176, 10
  br i1 %.not102, label %bb.m, label %_ZNK4llvm5APIntneEm.exit177.thread

bb.m:                                             ; preds = %_ZNK4llvm5APIntneEm.exit.thread70, %_ZNK4llvm5APIntneEm.exit177, %_ZNK4llvm5APIntneEm.exit
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !1770
  %.not162 = icmp eq i32 %i.av, %i.bf
  br i1 %.not162, label %bb.n, label %_ZNK4llvm5APIntneEm.exit177.thread

bb.n:                                             ; preds = %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %.sroa.0.0.copyload.i = load i32, ptr %i.bg, align 4, !tbaa !795
  %i.bh = getelementptr inbounds nuw i8, ptr %.2146, i64 28
  %.sroa.0.0.copyload.i178 = load i32, ptr %i.bh, align 4, !tbaa !795
  %i.bi = call i32 @_ZN5clang4Sema19getLocForEndOfTokenENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %.sroa.0.0.copyload.i178, i32 noundef 0) #30
  %.sroa.2.0.insert.ext.i = zext i32 %i.bi to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %.sroa.0.0.copyload.i to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 4 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !1505, !nonnull !97, !align !787
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 5 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !786, !nonnull !97, !align !787
  %i.bn = call { ptr, i64 } @_ZN5clang5Lexer13getSourceTextENS_15CharSourceRangeERKNS_13SourceManagerERKNS_11LangOptionsEPb(i64 %.sroa.0.0.insert.insert.i, i8 0, ptr noundef nonnull align 8 dereferenceable(776) %i.bk, ptr noundef nonnull align 8 dereferenceable(1136) %i.bm, ptr noundef null) #30 ; 2 uses
  %i.bo = extractvalue { ptr, i64 } %i.bn, 0
  store ptr %i.bo, ptr %4, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bq = extractvalue { ptr, i64 } %i.bn, 1
  store i64 %i.bq, ptr %i.bp, align 8
  %i.br = call i32 @_ZN5clang4Sema19getLocForEndOfTokenENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %1, i32 noundef 0) #30
  %.sroa.2.0.insert.ext.i179 = zext i32 %i.br to i64
  %.sroa.2.0.insert.shift.i180 = shl nuw i64 %.sroa.2.0.insert.ext.i179, 32
  %.sroa.0.0.insert.ext.i181 = zext nneg i32 %1 to i64
  %.sroa.0.0.insert.insert.i182 = or disjoint i64 %.sroa.2.0.insert.shift.i180, %.sroa.0.0.insert.ext.i181
  %i.bs = load ptr, ptr %i.bj, align 8, !tbaa !1505, !nonnull !97, !align !787
  %i.bt = load ptr, ptr %i.bl, align 8, !tbaa !786, !nonnull !97, !align !787
  %i.bu = call { ptr, i64 } @_ZN5clang5Lexer13getSourceTextENS_15CharSourceRangeERKNS_13SourceManagerERKNS_11LangOptionsEPb(i64 %.sroa.0.0.insert.insert.i182, i8 0, ptr noundef nonnull align 8 dereferenceable(776) %i.bs, ptr noundef nonnull align 8 dereferenceable(1136) %i.bt, ptr noundef null) #30 ; 2 uses
  %i.bv = extractvalue { ptr, i64 } %i.bu, 1
  %.not.i = icmp eq i64 %i.bv, 3
  br i1 %.not.i, label %_ZN4llvmeqENS_9StringRefES0_.exit, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread75

_ZN4llvmeqENS_9StringRefES0_.exit:                ; preds = %bb.n
  %i.bw = extractvalue { ptr, i64 } %i.bu, 0      ; 2 uses
  %i.bx = load i16, ptr %i.bw, align 1
  %i.by = xor i16 %i.bx, 28536
  %i.bz = getelementptr i8, ptr %i.bw, i64 2
  %i.ca = load i8, ptr %i.bz, align 1
  %i.cb = zext i8 %i.ca to i16
  %i.cc = xor i16 %i.cb, 114
  %i.cd = or i16 %i.by, %i.cc
  %i.ce = icmp ne i16 %i.cd, 0
  %i.cf = zext i1 %i.ce to i32
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread75

_ZN4llvmeqENS_9StringRefES0_.exit.thread75:       ; preds = %bb.n, %_ZN4llvmeqENS_9StringRefES0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.ch = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g) #31
  %i.ci = load ptr, ptr %i.bj, align 8, !tbaa !1505, !nonnull !97, !align !787
  %i.cj = load ptr, ptr %i.bl, align 8, !tbaa !786, !nonnull !97, !align !787
  %i.ck = call { ptr, i64 } @_ZN5clang5Lexer13getSourceTextENS_15CharSourceRangeERKNS_13SourceManagerERKNS_11LangOptionsEPb(i64 %i.ch, i8 1, ptr noundef nonnull align 8 dereferenceable(776) %i.ci, ptr noundef nonnull align 8 dereferenceable(1136) %i.cj, ptr noundef null) #30 ; 2 uses
  %i.cl = extractvalue { ptr, i64 } %i.ck, 0      ; 3 uses
  %i.cm = extractvalue { ptr, i64 } %i.ck, 1      ; 5 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.cn, ptr %5, align 8, !tbaa !845
  %i.co = icmp eq ptr %i.cl, null
  %i.cp = icmp ne i64 %i.cm, 0
  %or.cond.i.i.i = and i1 %i.co, %i.cp
  br i1 %or.cond.i.i.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread75
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.38) #33
  unreachable

bb.p:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i64 %i.cm, ptr %i.b, align 8, !tbaa !815
  %i.cq = icmp ugt i64 %i.cm, 15
  br i1 %i.cq, label %bb.q, label %._crit_edge.i.i.i.i

bb.q:                                             ; preds = %bb.p
  %i.cr = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #30 ; 2 uses
  store ptr %i.cr, ptr %5, align 8, !tbaa !843
  %i.cs = load i64, ptr %i.b, align 8, !tbaa !815
  store i64 %i.cs, ptr %i.cn, align 8, !tbaa !788
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.q, %bb.p
  %i.ct = phi ptr [ %i.cr, %bb.q ], [ %i.cn, %bb.p ] ; 2 uses
  switch i64 %i.cm, label %bb.s [
    i64 1, label %bb.r
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit
  ]

bb.r:                                             ; preds = %._crit_edge.i.i.i.i
  %i.cu = load i8, ptr %i.cl, align 1, !tbaa !788
  store i8 %i.cu, ptr %i.ct, align 1, !tbaa !788
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit

bb.s:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ct, ptr align 1 %i.cl, i64 %i.cm, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.r, %bb.s
  %i.cv = load i64, ptr %i.b, align 8, !tbaa !815 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.cv, ptr %i.cw, align 8, !tbaa !846
  %i.cx = load ptr, ptr %5, align 8, !tbaa !843
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cv
  store i8 0, ptr %i.cy, align 1, !tbaa !788
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.cz = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %.2146) #31
  %i.da = load ptr, ptr %i.bj, align 8, !tbaa !1505, !nonnull !97, !align !787
end_hunk_0
