Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Lookup?download=true
begin_hunk_0
%"union.llvm::Twine::Child" = type { %struct.anon }
%struct.anon = type { ptr, i64 }
%"class.clang::NestedNameSpecifier" = type { i64 }

$_ZN4llvm23SmallVectorTemplateBaseIPKN5clang13NamespaceDeclELb1EE15growAndPushBackES4_ = comdat any

$_ZN4llvm9StringMapIPN5clang14IdentifierInfoENS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE11try_emplaceIJDnEEESt4pairINS_17StringMapIterBaseIS3_Lb0EEEbENS_9StringRefEDpOT_ = comdat any

$_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE = comdat any

$_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE15growAndPushBackES3_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIPvLb1EE15growAndPushBackES1_ = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@.str = private unnamed_addr constant [3 x i8] c"::\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang7tooling17replaceNestedNameB5cxx11ENS_19NestedNameSpecifierENS_14SourceLocationEPKNS_11DeclContextEPKNS_9NamedDeclEN4llvm9StringRefE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, i32 %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr noundef byval(%"class.llvm::StringRef") align 8 %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %6 = alloca %"class.llvm::StringRef", align 8   ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %8 = alloca %"class.llvm::StringRef", align 8   ; 5 uses
  %9 = alloca %"class.llvm::SmallVector.17", align 8 ; 9 uses
  %10 = alloca %"class.llvm::SmallVector", align 8 ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %18 = alloca %"class.llvm::SmallVector", align 8 ; 7 uses
  %19 = alloca %"class.llvm::SmallVector", align 8 ; 6 uses
  %20 = alloca %"class.clang::NestedNameSpecifier", align 8 ; 2 uses
  store i64 %1, ptr %20, align 8
  %i.e = icmp ne i64 %1, 0
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.f, align 8 ; 5 uses
  %i.g = and i64 %.0.copyload.i.i.i.i.i.i.i.i, 4
  %i.h = icmp eq i64 %i.g, 0                      ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i to ptr
  br label %_ZNK5clang4Decl14getDeclContextEv.exit

bb.c:                                             ; preds = %bb.a
  %i.j = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -5
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !8
  br label %_ZNK5clang4Decl14getDeclContextEv.exit

_ZNK5clang4Decl14getDeclContextEv.exit:           ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.i, %bb.b ], [ %i.l, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.n = load i16, ptr %i.m, align 8
  %i.o = and i16 %i.n, 127
  %i.p = icmp eq i16 %i.o, 0
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.r = load i32, ptr %i.q, align 4
  %i.s = and i32 %i.r, 127
  %i.t = add nsw i32 %i.s, -60
  %i.u = icmp ult i32 %i.t, 3
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK5clang4Decl14getDeclContextEv.exit
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 74
  %i.w = load i8, ptr %i.v, align 2
  %i.x = trunc i8 %i.w to i1
  %i.y = xor i1 %i.x, true
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK5clang4Decl14getDeclContextEv.exit
  %i.z = phi i1 [ false, %_ZNK5clang4Decl14getDeclContextEv.exit ], [ %i.y, %bb.d ]
  %or.cond = or i1 %i.e, %i.p
  %or.cond3 = or i1 %or.cond, %i.z
  br i1 %or.cond3, label %bb.w, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %i.h, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aa = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i to ptr
  br label %_ZNK5clang4Decl14getDeclContextEv.exit19

bb.h:                                             ; preds = %bb.f
  %i.ab = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -5
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !8
  br label %_ZNK5clang4Decl14getDeclContextEv.exit19

_ZNK5clang4Decl14getDeclContextEv.exit19:         ; preds = %bb.g, %bb.h
  %.0.i.i18 = phi ptr [ %i.aa, %bb.g ], [ %i.ad, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #12
  call fastcc void @_ZL21getAllNamedNamespacesPKN5clang11DeclContextE(ptr dead_on_unwind noalias writable align 8 %18, ptr noundef %.0.i.i18)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #12
  call fastcc void @_ZL21getAllNamedNamespacesPKN5clang11DeclContextE(ptr dead_on_unwind noalias writable align 8 %19, ptr noundef %3)
  %i.ae = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !12 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !12 ; 3 uses
  %i.ai = icmp ult i32 %i.af, %i.ah
  %.pre.i = load ptr, ptr %19, align 8, !tbaa !14 ; 4 uses
  br i1 %i.ai, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %_ZNK5clang4Decl14getDeclContextEv.exit19
  %i.aj = zext i32 %i.ah to i64                   ; 2 uses
  %i.ak = zext i32 %i.af to i64                   ; 3 uses
  %i.al = sub nsw i64 %i.ak, %i.aj
  %i.am = load ptr, ptr %18, align 8, !tbaa !14   ; 2 uses
  %i.an = and i64 %i.al, 4294967295               ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.aj, 3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx.i
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.pre.i, i64 %i.ak
  %.not18.i = icmp eq i32 %i.ah, 0
  %.not1519.i = icmp samesign eq i64 %i.an, %i.ak
  %or.cond20.i = select i1 %.not18.i, i1 true, i1 %.not1519.i
  br i1 %or.cond20.i, label %.critedge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.pre.i, i64 %i.an
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %.lr.ph.preheader.i
  %.01222.i = phi ptr [ %i.ay, %bb.k ], [ %i.aq, %.lr.ph.preheader.i ] ; 2 uses
  %.01321.i = phi ptr [ %i.ax, %bb.k ], [ %i.am, %.lr.ph.preheader.i ] ; 2 uses
  %i.ar = load ptr, ptr %.01321.i, align 8, !tbaa !15 ; 2 uses
  %i.as = load ptr, ptr %.01222.i, align 8, !tbaa !15 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %.critedge.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.au, align 8, !tbaa !17
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %.sroa.0.0.copyload.i16.i = load i64, ptr %i.av, align 8, !tbaa !17
  %i.aw = icmp eq i64 %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i16.i
  br i1 %i.aw, label %.critedge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %.01321.i, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.01222.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.ax, %i.ao
  %.not15.i = icmp eq ptr %i.ay, %i.ap
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not15.i
  br i1 %or.cond.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !19

.critedge.i:                                      ; preds = %bb.k, %bb.j, %.lr.ph.i, %bb.i, %_ZNK5clang4Decl14getDeclContextEv.exit19
  %.1.i = phi i1 [ false, %_ZNK5clang4Decl14getDeclContextEv.exit19 ], [ false, %bb.i ], [ false, %.lr.ph.i ], [ false, %bb.k ], [ true, %bb.j ]
  %i.az = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.ba = icmp eq ptr %.pre.i, %i.az
  br i1 %i.ba, label %_ZN4llvm11SmallVectorIPKN5clang13NamespaceDeclELj4EED2Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %.critedge.i
  call void @free(ptr noundef %.pre.i) #12
  br label %_ZN4llvm11SmallVectorIPKN5clang13NamespaceDeclELj4EED2Ev.exit.i

_ZN4llvm11SmallVectorIPKN5clang13NamespaceDeclELj4EED2Ev.exit.i: ; preds = %bb.l, %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #12
  %i.bb = load ptr, ptr %18, align 8, !tbaa !14   ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZL36usingFromDifferentCanonicalNamespacePKN5clang11DeclContextES2_.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm11SmallVectorIPKN5clang13NamespaceDeclELj4EED2Ev.exit.i
  call void @free(ptr noundef %i.bb) #12
  br label %_ZL36usingFromDifferentCanonicalNamespacePKN5clang11DeclContextES2_.exit

_ZL36usingFromDifferentCanonicalNamespacePKN5clang11DeclContextES2_.exit: ; preds = %_ZN4llvm11SmallVectorIPKN5clang13NamespaceDeclELj4EED2Ev.exit.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #12
  br i1 %.1.i, label %bb.w, label %bb.n

bb.n:                                             ; preds = %_ZL36usingFromDifferentCanonicalNamespacePKN5clang11DeclContextES2_.exit
  %i.be = call noundef i64 @_ZNK4llvm9StringRef5rfindES0_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr nonnull @.str, i64 2) #12 ; 2 uses
  %.not = icmp eq i64 %i.be, -1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !17 ; 3 uses
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = add i64 %i.be, 2
  %.sroa.speculated4.i = call i64 @llvm.umin.i64(i64 %.sroa.5.0.copyload, i64 %i.bf) ; 2 uses
  %i.bg = load ptr, ptr %5, align 8, !tbaa !21
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.sroa.speculated4.i
  %i.bi = sub i64 %.sroa.5.0.copyload, %.sroa.speculated4.i
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %.sroa.034.0.copyload = load ptr, ptr %5, align 8, !tbaa !24
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sroa.034.0 = phi ptr [ %.sroa.034.0.copyload, %bb.p ], [ %i.bh, %bb.o ] ; 3 uses
  %.sroa.5.0 = phi i64 [ %.sroa.5.0.copyload, %bb.p ], [ %i.bi, %bb.o ] ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bj, ptr %0, align 8, !tbaa !25
  %i.bk = icmp eq ptr %.sroa.034.0, null
  %i.bl = icmp ne i64 %.sroa.5.0, 0
  %or.cond.i.i.i = and i1 %i.bk, %i.bl
  br i1 %or.cond.i.i.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.1) #13
  unreachable

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i64 %.sroa.5.0, ptr %i.d, align 8, !tbaa !17
  %i.bm = icmp ugt i64 %.sroa.5.0, 15
  br i1 %i.bm, label %bb.t, label %._crit_edge.i.i.i.i

bb.t:                                             ; preds = %bb.s
  %i.bn = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) #12 ; 2 uses
  store ptr %i.bn, ptr %0, align 8, !tbaa !27
  %i.bo = load i64, ptr %i.d, align 8, !tbaa !17
  store i64 %i.bo, ptr %i.bj, align 8, !tbaa !29
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.t, %bb.s
  %i.bp = phi ptr [ %i.bn, %bb.t ], [ %i.bj, %bb.s ] ; 2 uses
  switch i64 %.sroa.5.0, label %bb.v [
    i64 1, label %bb.u
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit
  ]

bb.u:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bq = load i8, ptr %.sroa.034.0, align 1, !tbaa !29
  store i8 %i.bq, ptr %i.bp, align 1, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit

bb.v:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bp, ptr align 1 %.sroa.034.0, i64 %.sroa.5.0, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.u, %bb.v
  %i.br = load i64, ptr %i.d, align 8, !tbaa !17  ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !30
  %i.bt = load ptr, ptr %0, align 8, !tbaa !27
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.br
  store i8 0, ptr %i.bu, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %_ZL27disambiguateSpellingInScopeB5cxx11N4llvm9StringRefES0_RKN5clang11DeclContextENS1_14SourceLocationE.exit

bb.w:                                             ; preds = %_ZL36usingFromDifferentCanonicalNamespacePKN5clang11DeclContextES2_.exit, %bb.e
  %.sroa.07.0.copyload = load ptr, ptr %5, align 8, !tbaa !24
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %.sroa.28.0.copyload = load i64, ptr %.sroa.28.0..sroa_idx, align 8, !tbaa !17
  %i.bv = call noundef zeroext i1 @_ZNK5clang19NestedNameSpecifier16isFullyQualifiedEv(ptr noundef nonnull align 8 dereferenceable(8) %20) #12
  %i.bw = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i, %bb.w
  %.0.i = phi ptr [ %3, %bb.w ], [ %.2.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i ] ; 2 uses
  %.sroa.025.0.i = phi ptr [ %.sroa.07.0.copyload, %bb.w ], [ %.sroa.025.131.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i ] ; 6 uses
  %.sroa.6.0.i = phi i64 [ %.sroa.28.0.copyload, %bb.w ], [ %.sroa.6.133.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i ] ; 7 uses
  %.sroa.0.0.i = phi ptr [ undef, %bb.w ], [ %.sroa.0.1.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i ] ; 2 uses
  %.sroa.4.0.i = phi i64 [ undef, %bb.w ], [ %.sroa.4.1.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i ] ; 2 uses
  %.not40.i = icmp eq ptr %.0.i, null
  br i1 %.not40.i, label %._crit_edge.i, label %.lr.ph.i20

.lr.ph.i20:                                       ; preds = %bb.x, %_ZNK5clang11DeclContext9getParentEv.exit.i
  %.141.i = phi ptr [ %.0.i.i.i.i, %_ZNK5clang11DeclContext9getParentEv.exit.i ], [ %.0.i, %bb.x ] ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.141.i, i64 8
  %i.cc = load i16, ptr %i.cb, align 8
  %i.cd = and i16 %i.cc, 127
  %i.ce = icmp eq i16 %i.cd, 78
  br i1 %i.ce, label %.critedge.i24, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i20
  %i.cf = call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(32) %.141.i) #12
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cg, align 8 ; 3 uses
  %i.ch = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 4
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cj = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i to ptr
  br label %_ZNK5clang11DeclContext9getParentEv.exit.i

bb.aa:                                            ; preds = %bb.y
  %i.ck = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -5
  %i.cl = inttoptr i64 %i.ck to ptr
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !8
  br label %_ZNK5clang11DeclContext9getParentEv.exit.i

_ZNK5clang11DeclContext9getParentEv.exit.i:       ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i = phi ptr [ %i.cj, %bb.z ], [ %i.cm, %bb.aa ] ; 2 uses
  %.not.i21 = icmp eq ptr %.0.i.i.i.i, null
  br i1 %.not.i21, label %._crit_edge.i, label %.lr.ph.i20, !llvm.loop !31

._crit_edge.i:                                    ; preds = %bb.x, %_ZNK5clang11DeclContext9getParentEv.exit.i
  br i1 %i.bv, label %_ZL22getBestNamespaceSubstrPKN5clang11DeclContextEN4llvm9StringRefEb.exit, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge.i
  %.sroa.speculated4.i.i = call i64 @llvm.umin.i64(i64 %.sroa.6.0.i, i64 2) ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.025.0.i, i64 %.sroa.speculated4.i.i
  %i.co = sub i64 %.sroa.6.0.i, %.sroa.speculated4.i.i
  br label %_ZL22getBestNamespaceSubstrPKN5clang11DeclContextEN4llvm9StringRefEb.exit

.critedge.i24:                                    ; preds = %.lr.ph.i20
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #12
  %i.cp = getelementptr inbounds i8, ptr %.141.i, i64 -48
  call void @_ZNK5clang9NamedDecl24getQualifiedNameAsStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(48) %i.cp) #12
  call void @llvm.experimental.noalias.scope.decl(metadata !32)
  %i.cq = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str, i64 noundef 2) #12, !noalias !32 ; 6 uses
  store ptr %i.bw, ptr %16, align 8, !tbaa !25, !alias.scope !32
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !27 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 5 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %bb.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.ac:                                            ; preds = %.critedge.i24
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !30 ; 3 uses
  %i.cw = icmp ult i64 %i.cv, 16
  call void @llvm.assume(i1 %i.cw)
  %i.cx = add nuw nsw i64 %i.cv, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bw, ptr noundef nonnull align 8 dereferenceable(1) %i.cs, i64 %i.cx, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.critedge.i24
  store ptr %i.cr, ptr %16, align 8, !tbaa !27, !alias.scope !32
  %i.cy = load i64, ptr %i.cs, align 8, !tbaa !29
  store i64 %i.cy, ptr %i.bw, align 8, !tbaa !29, !alias.scope !32
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !30
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit.i

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.ac
  %i.cz = phi i64 [ %i.cv, %bb.ac ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.da = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i64 %i.cz, ptr %i.bx, align 8, !tbaa !30, !alias.scope !32
  store ptr %i.cs, ptr %i.cq, align 8, !tbaa !27
  store i64 0, ptr %i.da, align 8, !tbaa !30
  store i8 0, ptr %i.cs, align 8, !tbaa !29
  call void @llvm.experimental.noalias.scope.decl(metadata !35)
  %i.db = load i64, ptr %i.bx, align 8, !tbaa !30, !noalias !35
  %i.dc = and i64 %i.db, -2
  %i.dd = icmp eq i64 %i.dc, 4611686018427387902
  br i1 %i.dd, label %bb.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i

bb.ad:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #13, !noalias !35
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit.i
  %i.de = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str, i64 noundef 2) #12, !noalias !35 ; 6 uses
  store ptr %i.by, ptr %15, align 8, !tbaa !25, !alias.scope !35
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !27 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 16 ; 5 uses
  %i.dh = icmp eq ptr %i.df, %i.dg
  br i1 %i.dh, label %bb.ae, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !30 ; 3 uses
  %i.dk = icmp ult i64 %i.dj, 16
  call void @llvm.assume(i1 %i.dk)
  %i.dl = add nuw nsw i64 %i.dj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.by, ptr noundef nonnull align 8 dereferenceable(1) %i.dg, i64 %i.dl, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i
  store ptr %i.df, ptr %15, align 8, !tbaa !27, !alias.scope !35
  %i.dm = load i64, ptr %i.dg, align 8, !tbaa !29
  store i64 %i.dm, ptr %i.by, align 8, !tbaa !29, !alias.scope !35
  %.phi.trans.insert.i7.i = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %.pre.i8.i = load i64, ptr %.phi.trans.insert.i7.i, align 8, !tbaa !30
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i, %bb.ae
  %i.dn = phi i64 [ %i.dj, %bb.ae ], [ %.pre.i8.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i ]
  %i.do = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store i64 %i.dn, ptr %i.bz, align 8, !tbaa !30, !alias.scope !35
  store ptr %i.dg, ptr %i.de, align 8, !tbaa !27
  store i64 0, ptr %i.do, align 8, !tbaa !30
  store i8 0, ptr %i.dg, align 8, !tbaa !29
  %i.dp = load ptr, ptr %16, align 8, !tbaa !27   ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.bw
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i
  %i.dr = load i64, ptr %i.bw, align 8, !tbaa !29
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.ds) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i
  %i.dt = load ptr, ptr %17, align 8, !tbaa !27   ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.ca
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i
end_hunk_0
