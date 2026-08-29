Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaDecl?download=true
inline.NumInlined: 28669
inline.NumDeleted: 12983
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN5clang4Sema28diagnoseQualifiedDeclarationERNS_12CXXScopeSpecEPNS_11DeclContextENS_15DeclarationNameENS_14SourceLocationEPNS_20TemplateIdAnnotationEb:bb.a

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %i.bc, i32 %4, i32 noundef 4119) #28
  %i.bd = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_15DeclarationNameEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %13, ptr noundef nonnull align 8 dereferenceable(8) %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  %.sroa.0.0.copyload.i65 = load i64, ptr %1, align 8
  store i64 %.sroa.0.0.copyload.i65, ptr %14, align 8
  %i.be = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.bd, ptr noundef nonnull align 4 dereferenceable(8) %14) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %bb.ah

bb.l:                                             ; preds = %bb.j
  %i.bf = add nsw i16 %i.at, -35
  %i.bg = icmp ult i16 %i.bf, 6
  br i1 %i.bg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %i.bh, i32 %4, i32 noundef 4121) #28
  %i.bi = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_15DeclarationNameEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %15, ptr noundef nonnull align 8 dereferenceable(8) %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  %.sroa.0.0.copyload.i66 = load i64, ptr %1, align 8
  store i64 %.sroa.0.0.copyload.i66, ptr %16, align 8
  %i.bj = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.bi, ptr noundef nonnull align 4 dereferenceable(8) %16) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %15) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br label %bb.ah

bb.n:                                             ; preds = %bb.l
  switch i16 %i.at, label %bb.r [
    i16 9, label %bb.o
    i16 6, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %i.bk, i32 %4, i32 noundef 4120) #28
  %i.bl = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_15DeclarationNameEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %17, ptr noundef nonnull align 8 dereferenceable(8) %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  %.sroa.0.0.copyload.i67 = load i64, ptr %1, align 8
  store i64 %.sroa.0.0.copyload.i67, ptr %18, align 8
  %i.bm = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.bl, ptr noundef nonnull align 4 dereferenceable(8) %18) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %17) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  br label %bb.ah

bb.p:                                             ; preds = %bb.n
  %i.bn = icmp eq i16 %i.ba, 78
  br i1 %i.bn, label %bb.ah, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %19, ptr noundef nonnull align 8 dereferenceable(8) %i.bo, i32 %4, i32 noundef 3839) #28
  %i.bp = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_15DeclarationNameEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %19, ptr noundef nonnull align 8 dereferenceable(8) %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #28
  %.sroa.0.0.copyload.i68 = load i64, ptr %1, align 8
  store i64 %.sroa.0.0.copyload.i68, ptr %20, align 8
  %i.bq = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.bp, ptr noundef nonnull align 4 dereferenceable(8) %20) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %19) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  br label %bb.ah

bb.r:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #28
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %21, ptr noundef nonnull align 8 dereferenceable(8) %i.br, i32 %4, i32 noundef 4122) #28
  %i.bs = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_15DeclarationNameEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %21, ptr noundef nonnull align 8 dereferenceable(8) %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.bt = call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef nonnull %storemerge) #28
  store ptr %i.bt, ptr %i.a, align 8, !tbaa !862
  %i.bu = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIPNS_9NamedDeclEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.bs, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.bv = call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef nonnull %2) #28
  store ptr %i.bv, ptr %i.b, align 8, !tbaa !862
  %i.bw = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIPNS_9NamedDeclEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.bu, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #28
  %.sroa.0.0.copyload.i69 = load i64, ptr %1, align 8
  store i64 %.sroa.0.0.copyload.i69, ptr %22, align 8
  %i.bx = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.bw, ptr noundef nonnull align 4 dereferenceable(8) %22) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %21) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  br label %bb.ah

bb.s:                                             ; preds = %_ZNK5clang11DeclContext6EqualsEPKS0_.exit.thread
  br i1 %spec.select.i70, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  br i1 %6, label %bb.ah, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #28
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %23, ptr noundef nonnull align 8 dereferenceable(8) %i.by, i32 %4, i32 noundef 4241) #28
  %i.bz = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_15DeclarationNameEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %23, ptr noundef nonnull align 8 dereferenceable(8) %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #28
  %.sroa.0.0.copyload.i71 = load i64, ptr %1, align 8
  store i64 %.sroa.0.0.copyload.i71, ptr %24, align 8
  %i.ca = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.bz, ptr noundef nonnull align 4 dereferenceable(8) %24) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %23) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 0, ptr %i.cb, align 8, !tbaa !2497
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, i8 0, i64 16, i1 false)
  %i.cc = load i64, ptr %7, align 8, !tbaa !704   ; 2 uses
  %i.cd = trunc i64 %i.cc to i32
  %i.ce = and i32 %i.cd, 7
  %.off = add nsw i32 %i.ce, -3
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %_ZNK5clang15DeclarationName14getCXXNameTypeEv.exit, label %.critedge5

_ZNK5clang15DeclarationName14getCXXNameTypeEv.exit: ; preds = %bb.u
  %i.cf = and i64 %i.cc, -8
  %i.cg = inttoptr i64 %i.cf to ptr
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !727 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !11, !nonnull !697, !align !698
  %i.cl = getelementptr inbounds i8, ptr %storemerge, i64 -64
  %i.cm = call i64 @_ZNK5clang10ASTContext19getCanonicalTagTypeEPKNS_7TagDeclE(ptr noundef nonnull align 8 dereferenceable(23904) %i.ck, ptr noundef nonnull %i.cl) #28 ; 2 uses
  %i.cn = and i64 %i.ci, -16
  %i.co = inttoptr i64 %i.cn to ptr
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !727
  %i.cr = and i64 %i.ci, 7
  %i.cs = or i64 %i.cq, %i.cr
  %i.ct = and i64 %i.cm, -16
  %i.cu = inttoptr i64 %i.ct to ptr
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !727
  %i.cx = and i64 %i.cm, 7
  %i.cy = or i64 %i.cw, %i.cx
  %i.cz = icmp eq i64 %i.cs, %i.cy
  br i1 %i.cz, label %.critedge5, label %bb.ah

.critedge5:                                       ; preds = %bb.u, %_ZNK5clang15DeclarationName14getCXXNameTypeEv.exit
  br label %bb.ah

bb.v:                                             ; preds = %bb.s
  br i1 %i.ar, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.da = load i32, ptr %5, align 4, !tbaa !751
  %.not152 = icmp eq i32 %i.da, 0
  br i1 %.not152, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #28
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %25, ptr noundef nonnull align 8 dereferenceable(8) %i.db, i32 %4, i32 noundef 5814) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #28
  %.sroa.016.0.copyload = load i32, ptr %5, align 8, !tbaa !706
  %.sroa.2124.0.insert.ext = zext i32 %.sroa.016.0.copyload to i64 ; 2 uses
  %.sroa.2124.0.insert.shift = shl nuw i64 %.sroa.2124.0.insert.ext, 32
  %.sroa.0123.0.insert.insert = or disjoint i64 %.sroa.2124.0.insert.shift, %.sroa.2124.0.insert.ext
  %i.dc = getelementptr inbounds nuw i8, ptr %26, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.dc, i8 0, i64 9, i1 false), !alias.scope !2498
  %i.dd = getelementptr inbounds nuw i8, ptr %26, i64 24 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %26, i64 40 ; 4 uses
  store ptr %i.de, ptr %i.dd, align 8, !tbaa !824, !alias.scope !2498
  %i.df = getelementptr inbounds nuw i8, ptr %26, i64 32
  store i64 0, ptr %i.df, align 8, !tbaa !825, !alias.scope !2498
  store i8 0, ptr %i.de, align 8, !tbaa !727, !alias.scope !2498
  %i.dg = getelementptr inbounds nuw i8, ptr %26, i64 56
  store i8 0, ptr %i.dg, align 8, !tbaa !826, !alias.scope !2498
  store i64 %.sroa.0123.0.insert.insert, ptr %26, align 8, !alias.scope !2498
  %.sroa.22.0..sroa_idx.i.i78 = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i8 1, ptr %.sroa.22.0..sroa_idx.i.i78, align 8, !tbaa !776, !alias.scope !2498
  %i.dh = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_9FixItHintEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %25, ptr noundef nonnull align 8 dereferenceable(57) %26) ; 0 uses
  %i.di = load ptr, ptr %i.dd, align 8, !tbaa !752 ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.de
  br i1 %i.dj, label %_ZN5clang9FixItHintD2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i79: ; preds = %bb.x
  %i.dk = load i64, ptr %i.de, align 8, !tbaa !727
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dl) #29
  br label %_ZN5clang9FixItHintD2Ev.exit81

_ZN5clang9FixItHintD2Ev.exit81:                   ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i79
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %25) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #28
  br label %bb.y

bb.y:                                             ; preds = %_ZN5clang9FixItHintD2Ev.exit81, %bb.w, %bb.v
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.dm, align 8, !tbaa !728 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !1904
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #28
  %i.dp = icmp ugt i64 %.sroa.0.0.copyload.i.i, 7
  %i.dq = and i64 %.sroa.0.0.copyload.i.i, 6
  %i.dr = icmp eq i64 %i.dq, 0
  %or.cond.i = and i1 %i.dp, %i.dr
  br i1 %or.cond.i, label %_ZNK5clang22NestedNameSpecifierLoc12getAsTypeLocEv.exit, label %._crit_edge

_ZNK5clang22NestedNameSpecifierLoc12getAsTypeLocEv.exit: ; preds = %bb.y
  %34 = and i64 %.sroa.0.0.copyload.i.i, -8       ; 2 uses
  %35 = inttoptr i64 %34 to ptr                   ; 2 uses
  %.0.copyload.i.i.i = load ptr, ptr %i.do, align 1 ; 2 uses
  store ptr %35, ptr %27, align 8
  %36 = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 2 uses
  store ptr %.0.copyload.i.i.i, ptr %36, align 8
  %.not154159 = icmp eq i64 %34, 0
  br i1 %.not154159, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK5clang22NestedNameSpecifierLoc12getAsTypeLocEv.exit
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %33, i64 12
  %i.du = getelementptr inbounds nuw i8, ptr %33, i64 24 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %33, i64 40 ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %33, i64 32
  %i.dx = getelementptr inbounds nuw i8, ptr %33, i64 56
  %.sroa.22.0..sroa_idx.i.i106 = getelementptr inbounds nuw i8, ptr %33, i64 8
  br label %bb.z

._crit_edge:                                      ; preds = %bb.ae, %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit, %bb.z, %.thread146, %bb.y, %bb.ad, %_ZN5clang9FixItHintD2Ev.exit109, %bb.af, %_ZNK5clang22NestedNameSpecifierLoc12getAsTypeLocEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #28
  br label %bb.ah

bb.z:                                             ; preds = %.lr.ph, %.thread146
  %.sroa.3.0.copyload.i = phi ptr [ %.0.copyload.i.i.i, %.lr.ph ], [ %.0.copyload.i.i.i104, %.thread146 ] ; 3 uses
  %i.dy = phi ptr [ %35, %.lr.ph ], [ %i.fc, %.thread146 ] ; 5 uses
  %37 = ptrtoint ptr %i.dy to i64
  %38 = and i64 %37, 15
  %.not.i83 = icmp eq i64 %38, 0
  br i1 %.not.i83, label %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit, label %._crit_edge

_ZNK5clang7TypeLoc15getTypeLocClassEv.exit:       ; preds = %bb.z
  %39 = load ptr, ptr %i.dy, align 8, !tbaa !748  ; 2 uses
  %40 = getelementptr inbounds nuw i8, ptr %39, i64 16
  %41 = load i8, ptr %40, align 16
  switch i8 %41, label %._crit_edge [
    i8 50, label %bb.aa
    i8 15, label %bb.ad
    i8 37, label %bb.ad
    i8 20, label %bb.ae
  ]

bb.aa:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload.i, i64 16
  %.sroa.0.0.copyload.i88 = load i32, ptr %i.dz, align 8, !tbaa !706 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 17
  %i.eb = load i16, ptr %i.ea, align 1
  %i.ec = and i16 %i.eb, 4
  %.not155 = icmp eq i16 %i.ec, 0
  br i1 %.not155, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ee = load i32, ptr %i.ed, align 16
  %i.ef = and i32 %i.ee, 134217728
  %.not156 = icmp eq i32 %i.ef, 0
  br i1 %.not156, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #28
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %28, ptr noundef nonnull align 8 dereferenceable(8) %i.ds, i32 %4, i32 noundef 5626) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #28
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload.i, i64 4
  %.sroa.0.0.copyload.i89 = load i64, ptr %i.eg, align 4
  store i64 %.sroa.0.0.copyload.i89, ptr %29, align 8
  %i.eh = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %28, ptr noundef nonnull align 4 dereferenceable(8) %29) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %28) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #28
  br label %bb.af

bb.ad:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit, %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.ei = getelementptr inbounds nuw i8, ptr %39, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #28
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %30, ptr noundef nonnull align 8 dereferenceable(8) %i.ds, i32 %4, i32 noundef 3477) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.ej = load i8, ptr %i.ei, align 16
  %i.ek = icmp eq i8 %i.ej, 15
  %i.el = zext i1 %i.ek to i8
  store i8 %i.el, ptr %i.c, align 1, !tbaa !776
  %i.em = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIbvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %30, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #28
  %i.en = call i32 @_ZNK5clang7TypeLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %27) #28
  %i.eo = call i32 @_ZNK5clang7TypeLoc9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(16) %27) #28
  %.sroa.2.0.insert.ext.i = zext i32 %i.eo to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.en to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.0.insert.insert.i, ptr %31, align 8
  %i.ep = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.em, ptr noundef nonnull align 4 dereferenceable(8) %31) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %30) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #28
  br label %._crit_edge

bb.ae:                                            ; preds = %_ZNK5clang7TypeLoc15getTypeLocClassEv.exit
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  %.sroa.0.0.copyload.i.i95 = load i64, ptr %i.eq, align 16, !tbaa !728 ; 3 uses
  %i.er = icmp ugt i64 %.sroa.0.0.copyload.i.i95, 7
  %i.es = and i64 %.sroa.0.0.copyload.i.i95, 6
  %i.et = icmp eq i64 %i.es, 0
  %or.cond.i98 = and i1 %i.er, %i.et
  br i1 %or.cond.i98, label %.thread146, label %._crit_edge

bb.af:                                            ; preds = %bb.aa, %bb.ab, %bb.ac
  %.not157 = icmp eq i32 %.sroa.0.0.copyload.i88, 0
  br i1 %.not157, label %._crit_edge, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #28
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %32, ptr noundef nonnull align 8 dereferenceable(8) %i.ds, i32 %4, i32 noundef 5814) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #28
  %.sroa.2.0.insert.ext = zext i32 %.sroa.0.0.copyload.i88 to i64 ; 2 uses
  %.sroa.2.0.insert.shift = shl nuw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.2.0.insert.ext
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.dt, i8 0, i64 9, i1 false), !alias.scope !2503
  store ptr %i.dv, ptr %i.du, align 8, !tbaa !824, !alias.scope !2503
  store i64 0, ptr %i.dw, align 8, !tbaa !825, !alias.scope !2503
  store i8 0, ptr %i.dv, align 8, !tbaa !727, !alias.scope !2503
  store i8 0, ptr %i.dx, align 8, !tbaa !826, !alias.scope !2503
  store i64 %.sroa.0.0.insert.insert, ptr %33, align 8, !alias.scope !2503
  store i8 1, ptr %.sroa.22.0..sroa_idx.i.i106, align 8, !tbaa !776, !alias.scope !2503
  %i.eu = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_9FixItHintEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %32, ptr noundef nonnull align 8 dereferenceable(57) %33) ; 0 uses
  %i.ev = load ptr, ptr %i.du, align 8, !tbaa !752 ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %i.dv
  br i1 %i.ew, label %_ZN5clang9FixItHintD2Ev.exit109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i107: ; preds = %bb.ag
  %i.ex = load i64, ptr %i.dv, align 8, !tbaa !727
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.ev, i64 noundef %i.ey) #29
  br label %_ZN5clang9FixItHintD2Ev.exit109

_ZN5clang9FixItHintD2Ev.exit109:                  ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i107
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %32) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #28
  br label %._crit_edge

.thread146:                                       ; preds = %bb.ae
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload.i, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !813
  %i.fb = and i64 %.sroa.0.0.copyload.i.i95, -8   ; 2 uses
  %i.fc = inttoptr i64 %i.fb to ptr               ; 2 uses
  %.0.copyload.i.i.i104 = load ptr, ptr %i.fa, align 1 ; 2 uses
  store ptr %i.fc, ptr %27, align 8, !tbaa !816
  store ptr %.0.copyload.i.i.i104, ptr %36, align 8
  %.not154 = icmp eq i64 %i.fb, 0
  br i1 %.not154, label %._crit_edge, label %bb.z, !llvm.loop !2508

bb.ah:                                            ; preds = %_ZNK5clang15DeclarationName14getCXXNameTypeEv.exit, %bb.t, %bb.i, %bb.m, %bb.q, %bb.r, %bb.o, %bb.k, %bb.p, %_ZN5clang9FixItHintD2Ev.exit, %bb.g, %._crit_edge, %.critedge5
  %.0 = phi i1 [ false, %_ZN5clang9FixItHintD2Ev.exit ], [ true, %bb.i ], [ false, %bb.t ], [ false, %.critedge5 ], [ false, %._crit_edge ], [ false, %bb.p ], [ false, %bb.g ], [ true, %bb.k ], [ true, %bb.o ], [ true, %bb.r ], [ true, %bb.q ], [ true, %bb.m ], [ true, %_ZNK5clang15DeclarationName14getCXXNameTypeEv.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK5clang11DeclContext6EqualsEPKS0_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef ptr @_ZN5clang11DeclContext17getPrimaryContextEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #28
  %i.b = tail call noundef ptr @_ZN5clang11DeclContext17getPrimaryContextEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #28
  %i.c = icmp eq ptr %i.a, %i.b
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi i1 [ false, %bb.a ], [ %i.c, %bb.b ]
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIPNS_9NamedDeclEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.clang::CanonicalDeclPtr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = load i8, ptr %i.b, align 8, !tbaa !707, !range !709, !noundef !697
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !862
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !710  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i, label %_ZNK5clang8SemaBase20ImmediateDiagBuilderlsIPNS_9NamedDeclEvEERKS1_OT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !714
  %i.i = tail call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.h) ; 2 uses
  store ptr %i.i, ptr %i.a, align 8, !tbaa !710
  br label %_ZNK5clang8SemaBase20ImmediateDiagBuilderlsIPNS_9NamedDeclEvEERKS1_OT_.exit

_ZNK5clang8SemaBase20ImmediateDiagBuilderlsIPNS_9NamedDeclEvEERKS1_OT_.exit: ; preds = %bb.b, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i
  %i.j = phi ptr [ %i.i, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i ], [ %i.f, %bb.b ] ; 2 uses
  %i.k = ptrtoint ptr %i.e to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.m = load i8, ptr %i.j, align 8, !tbaa !715
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.n
  store i8 10, ptr %i.o, align 1, !tbaa !727
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !710  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load i8, ptr %i.p, align 8, !tbaa !715   ; 2 uses
  %i.s = add i8 %i.r, 1
  store i8 %i.s, ptr %i.p, align 8, !tbaa !715
  %i.t = zext i8 %i.r to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.t
  store i64 %i.k, ptr %i.u, align 8, !tbaa !728
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.x = load i8, ptr %i.w, align 4, !tbaa !729, !range !709, !noundef !697
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.z = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilder22getDeviceDeferredDiagsEv(ptr noundef nonnull align 8 dereferenceable(136) %0) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !731 ; 3 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !701
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call noundef ptr %i.ae(ptr noundef nonnull align 8 dereferenceable(168) %i.ab) #28, !inline_history !741
  br label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit

_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit: ; preds = %bb.d, %bb.e
  %i.ag = phi ptr [ %i.af, %bb.e ], [ null, %bb.d ]
  store ptr %i.ag, ptr %2, align 8, !tbaa !742
  %i.ah = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E24lookupOrInsertIntoBucketIS6_JEEES8_IPSI_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.ah, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8
  %i.aj = load i32, ptr %i.v, align 8, !tbaa !706
  %i.ak = zext i32 %i.aj to i64
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !744
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %i.al, i64 %i.ak ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 3 uses
  %i.ao = load ptr, ptr %1, align 8, !tbaa !862
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !710 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i, label %_ZNK5clang17PartialDiagnosticlsIPNS_9NamedDeclEvEERKS0_OT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i: ; preds = %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !714
  %i.as = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.ar) ; 2 uses
  store ptr %i.as, ptr %i.an, align 8, !tbaa !710
  br label %_ZNK5clang17PartialDiagnosticlsIPNS_9NamedDeclEvEERKS0_OT_.exit

_ZNK5clang17PartialDiagnosticlsIPNS_9NamedDeclEvEERKS0_OT_.exit: ; preds = %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i
  %i.at = phi ptr [ %i.as, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i ], [ %i.ap, %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit ] ; 2 uses
  %i.au = ptrtoint ptr %i.ao to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %i.aw = load i8, ptr %i.at, align 8, !tbaa !715
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ax
  store i8 10, ptr %i.ay, align 1, !tbaa !727
  %i.az = load ptr, ptr %i.an, align 8, !tbaa !710 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load i8, ptr %i.az, align 8, !tbaa !715 ; 2 uses
  %i.bc = add i8 %i.bb, 1
  store i8 %i.bc, ptr %i.az, align 8, !tbaa !715
  %i.bd = zext i8 %i.bb to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bd
  store i64 %i.au, ptr %i.be, align 8, !tbaa !728
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %_ZNK5clang17PartialDiagnosticlsIPNS_9NamedDeclEvEERKS0_OT_.exit, %_ZNK5clang8SemaBase20ImmediateDiagBuilderlsIPNS_9NamedDeclEvEERKS1_OT_.exit
  ret ptr %0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define linkonce_odr hidden i64 @_ZNK5clang7TypeLoc14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = tail call i32 @_ZNK5clang7TypeLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #28
  %i.b = tail call i32 @_ZNK5clang7TypeLoc9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #28
  %.sroa.2.0.insert.ext = zext i32 %i.b to i64
  %.sroa.2.0.insert.shift = shl nuw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %i.a to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

declare noundef ptr @_ZN5clang4Sema28ActOnDecompositionDeclaratorEPNS_5ScopeERNS_10DeclaratorEN4llvm15MutableArrayRefIPNS_21TemplateParameterListEEE(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef, ptr noundef nonnull align 8 dereferenceable(2664), ptr, i64) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5clang4Sema31DiagnoseUnexpandedParameterPackERKNS_19DeclarationNameInfoENS0_30UnexpandedParameterPackContextE(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5clang4Sema31DiagnoseUnexpandedParameterPackERKNS_12CXXScopeSpecENS0_30UnexpandedParameterPackContextE(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_19NestedNameSpecifierEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.clang::CanonicalDeclPtr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = load i8, ptr %i.b, align 8, !tbaa !707, !range !709, !noundef !697
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i = load i64, ptr %1, align 8, !tbaa !728
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !710  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i, label %_ZNK5clang8SemaBase20ImmediateDiagBuilderlsINS_19NestedNameSpecifierEvEERKS1_OT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !714
  %i.h = tail call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.g) ; 2 uses
  store ptr %i.h, ptr %i.a, align 8, !tbaa !710
  br label %_ZNK5clang8SemaBase20ImmediateDiagBuilderlsINS_19NestedNameSpecifierEvEERKS1_OT_.exit

_ZNK5clang8SemaBase20ImmediateDiagBuilderlsINS_19NestedNameSpecifierEvEERKS1_OT_.exit: ; preds = %bb.b, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i
  %i.i = phi ptr [ %i.h, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i ], [ %i.e, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.k = load i8, ptr %i.i, align 8, !tbaa !715
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.l
  store i8 11, ptr %i.m, align 1, !tbaa !727
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !710  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i8, ptr %i.n, align 8, !tbaa !715   ; 2 uses
  %i.q = add i8 %i.p, 1
  store i8 %i.q, ptr %i.n, align 8, !tbaa !715
  %i.r = zext i8 %i.p to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.r
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.s, align 8, !tbaa !728
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.v = load i8, ptr %i.u, align 4, !tbaa !729, !range !709, !noundef !697
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.x = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilder22getDeviceDeferredDiagsEv(ptr noundef nonnull align 8 dereferenceable(136) %0) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
end_hunk_0
