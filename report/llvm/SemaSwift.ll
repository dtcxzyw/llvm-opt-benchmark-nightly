Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaSwift?download=true
begin_hunk_0_@_ZN5clang4Sema19checkUInt32ArgumentINS_10ParsedAttrEEEbRKT_PKNS_4ExprERjjb:_ZN4llvm5APIntD2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEERKS1_OT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %14) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  br label %bb.x

bb.u:                                             ; preds = %_ZNK4llvm5APInt6isIntNEj.exit
  %not. = xor i1 %5, true
  %i.db = or i1 %not., %i.ac
  br i1 %i.db, label %bb.w, label %_ZNK4llvm6APSInt10isNegativeEv.exit

_ZNK4llvm6APSInt10isNegativeEv.exit:              ; preds = %bb.u
  %i.dc = add i32 %i.w, -1                        ; 2 uses
  %i.dd = and i32 %i.dc, 63
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = shl nuw i64 1, %i.de
  %i.dg = lshr i32 %i.dc, 6
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.dh
  %.in.i.i.i.i = select i1 %i.au, ptr %8, ptr %i.di
  %i.dj = load i64, ptr %.in.i.i.i.i, align 8, !tbaa !68
  %i.dk = and i64 %i.dj, %i.df
  %.not28 = icmp eq i64 %i.dk, 0
  br i1 %.not28, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNK4llvm6APSInt10isNegativeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dm = call i32 @_ZN5clang4Sema10getAttrLocERKNS_19AttributeCommonInfoE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) #17
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %i.dl, i32 %i.dm, i32 noundef 3235) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #17
  store ptr %1, ptr %i.i, align 8, !tbaa !828
  %i.dn = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIPKNS_10ParsedAttrEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #17
  store i32 1, ptr %i.j, align 4, !tbaa !32
  %i.do = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.dn, ptr noundef nonnull align 4 dereferenceable(4) %i.j) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #17
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %16) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  br label %bb.x

bb.w:                                             ; preds = %_ZNK4llvm6APSInt10isNegativeEv.exit, %bb.u
  %spec.select.i = select i1 %i.au, ptr %8, ptr %i.z
  %.0.i = load i64, ptr %spec.select.i, align 8, !tbaa !68
  %i.dp = trunc i64 %.0.i to i32
  store i32 %i.dp, ptr %3, align 4, !tbaa !32
  br label %bb.x

bb.x:                                             ; preds = %bb.e, %bb.f, %bb.w, %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.0 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %bb.v ], [ true, %bb.w ], [ false, %bb.f ], [ false, %bb.e ]
  %i.dq = load i8, ptr %i.m, align 8, !tbaa !826, !range !49, !noundef !50
  %i.dr = trunc nuw i8 %i.dq to i1
  store i8 0, ptr %i.m, align 8, !tbaa !826
  %i.ds = load i32, ptr %i.k, align 8
  %i.dt = icmp ugt i32 %i.ds, 64
  %or.cond.i.i.i22 = select i1 %i.dr, i1 %i.dt, i1 false
  br i1 %or.cond.i.i.i22, label %bb.y, label %_ZNSt14_Optional_baseIN4llvm6APSIntELb0ELb0EED2Ev.exit23

bb.y:                                             ; preds = %bb.x
  %i.du = load ptr, ptr %8, align 8, !tbaa !68    ; 2 uses
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %_ZNSt14_Optional_baseIN4llvm6APSIntELb0ELb0EED2Ev.exit23, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZdaPv(ptr noundef nonnull %i.du) #18
  br label %_ZNSt14_Optional_baseIN4llvm6APSIntELb0ELb0EED2Ev.exit23

_ZNSt14_Optional_baseIN4llvm6APSIntELb0ELb0EED2Ev.exit23: ; preds = %bb.x, %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  ret i1 %.0
}

declare void @_ZN5clang19SwiftAsyncErrorAttrC1ERNS_10ASTContextERKNS_19AttributeCommonInfoENS0_14ConventionKindEj(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(23904), ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN5clangL25checkSwiftAsyncErrorBlockERNS_4SemaEPNS_4DeclEPKNS_19SwiftAsyncErrorAttrEPKNS_14SwiftAsyncAttrE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.clang::CanonicalDeclPtr", align 8 ; 4 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %5 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %6 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %7 = alloca %"class.clang::QualType", align 8   ; 4 uses
  %8 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %9 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !847
  store ptr %3, ptr %i.b, align 8, !tbaa !849
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.h = load i32, ptr %i.g, align 8, !tbaa !851
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %.sink.split.i

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.k = load i32, ptr %i.j, align 8, !tbaa !855
  %.not61 = icmp eq i32 %i.k, 0
  br i1 %.not61, label %.critedge63, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.m, align 8
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.0.0.copyload.i.i to i32
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.l, i32 %.sroa.0.0.extract.trunc.i, i32 noundef 5170) #17
  %i.n = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIPKNS_14SwiftAsyncAttrEEERKNS_8SemaBase21SemaDiagnosticBuilderES7_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.p = load i32, ptr %i.o, align 4
  %i.q = and i32 %i.p, 127
  %i.r = icmp eq i32 %i.q, 20
  %i.s = zext i1 %i.r to i8
  store i8 %i.s, ptr %i.c, align 1, !tbaa !30
  %i.t = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIbvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.n, ptr noundef nonnull align 1 dereferenceable(1) %i.c) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %.critedge63

.sink.split.i:                                    ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 44
  %.sroa.0.0.copyload.i = load i32, ptr %i.u, align 4, !tbaa !68 ; 2 uses
  %i.v = and i32 %.sroa.0.0.copyload.i, 1073741823
  %i.w = add nsw i32 %i.v, -1
  %i.x = shl i32 %.sroa.0.0.copyload.i, 1
  %i.y = ashr i32 %i.x, 31
  %i.z = add nsw i32 %i.w, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = and i32 %i.ab, 127                      ; 2 uses
  %i.ad = add nsw i32 %i.ac, -41
  %i.ae = icmp ult i32 %i.ad, -6
  %.not.not30.i = icmp eq ptr %1, null            ; 2 uses
  %.not.not.i = or i1 %.not.not30.i, %i.ae
  %i.af = icmp ne i32 %i.ac, 20
  %.not21.not.i = or i1 %.not.not30.i, %i.af
  %spec.select155 = select i1 %.not21.not.i, i64 72, i64 96
  %.sink35.i = select i1 %.not.not.i, i64 %spec.select155, i64 120
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %.sink35.i
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !857
  %i.ai = zext i32 %i.z to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !806
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %.sroa.0.0.copyload.i65 = load i64, ptr %i.al, align 8, !tbaa !68
  %i.am = and i64 %.sroa.0.0.copyload.i65, -16
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = load ptr, ptr %i.an, align 16, !tbaa !110 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load i8, ptr %i.ap, align 16
  %.not.i = icmp eq i8 %i.aq, 11
  br i1 %.not.i, label %_ZNK5clang4Type6castAsINS_16BlockPointerTypeEEEPKT_v.exit, label %bb.d

bb.d:                                             ; preds = %.sink.split.i
  %i.ar = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.ao) #17
  br label %_ZNK5clang4Type6castAsINS_16BlockPointerTypeEEEPKT_v.exit

_ZNK5clang4Type6castAsINS_16BlockPointerTypeEEEPKT_v.exit: ; preds = %.sink.split.i, %bb.d
  %.1.i = phi ptr [ %i.ar, %bb.d ], [ %i.ao, %.sink.split.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.1.i, i64 32
  %.sroa.0.0.copyload.i66 = load i64, ptr %i.as, align 16, !tbaa !68
  %i.at = and i64 %.sroa.0.0.copyload.i66, -16
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = load ptr, ptr %i.au, align 16, !tbaa !110 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load i8, ptr %i.aw, align 16
  %.not.i68 = icmp eq i8 %i.ax, 24
  br i1 %.not.i68, label %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread106, label %bb.e

bb.e:                                             ; preds = %_ZNK5clang4Type6castAsINS_16BlockPointerTypeEEEPKT_v.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.ay, align 8, !tbaa !68
  %i.az = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = load ptr, ptr %i.ba, align 16, !tbaa !110
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load i8, ptr %i.bc, align 16
  %i.be = icmp eq i8 %i.bd, 24
  br i1 %i.be, label %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit, label %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread

_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit: ; preds = %bb.e
  %i.bf = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.av) #17 ; 2 uses
  %.not = icmp eq ptr %i.bf, null
  br i1 %.not, label %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread, label %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread106

_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread106: ; preds = %_ZNK5clang4Type6castAsINS_16BlockPointerTypeEEEPKT_v.exit, %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit
  %.1.i69109 = phi ptr [ %i.bf, %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit ], [ %i.av, %_ZNK5clang4Type6castAsINS_16BlockPointerTypeEEEPKT_v.exit ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.1.i69109, i64 48
  %i.bh = getelementptr inbounds nuw i8, ptr %.1.i69109, i64 16
  %i.bi = load i64, ptr %i.bh, align 16
  %i.bj = lshr i64 %i.bi, 48
  br label %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread

_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread: ; preds = %bb.e, %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread106, %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit
  %.sroa.7.0 = phi i64 [ 0, %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit ], [ %i.bj, %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread106 ], [ 0, %bb.e ] ; 3 uses
  %.sroa.095.0 = phi ptr [ null, %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit ], [ %i.bg, %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread106 ], [ null, %bb.e ] ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !855
  switch i32 %i.bl, label %.critedge63 [
    i32 2, label %bb.f
    i32 3, label %bb.f
    i32 1, label %bb.n
  ]

bb.f:                                             ; preds = %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread, %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !858 ; 4 uses
  store i32 %i.bn, ptr %i.d, align 4, !tbaa !32
  %i.bo = icmp eq i32 %i.bn, 0
  %i.bp = zext i32 %i.bn to i64
  %i.bq = icmp samesign ult i64 %.sroa.7.0, %i.bp
  %or.cond = select i1 %i.bo, i1 true, i1 %i.bq
  br i1 %or.cond, label %.critedge, label %bb.g

.critedge:                                        ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload.i.i70 = load i64, ptr %i.bs, align 8
  %.sroa.0.0.extract.trunc.i71 = trunc i64 %.sroa.0.0.copyload.i.i70 to i32
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.br, i32 %.sroa.0.0.extract.trunc.i71, i32 noundef 3169) #17
  %i.bt = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIPKNS_19SwiftAsyncErrorAttrEEERKNS_8SemaBase21SemaDiagnosticBuilderES7_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  store i32 2, ptr %i.e, align 4, !tbaa !32
  %i.bu = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.bt, ptr noundef nonnull align 4 dereferenceable(4) %i.e) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  br label %.critedge63

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.bv = add i32 %i.bn, -1
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.095.0, i64 %i.bw
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !68 ; 2 uses
  store i64 %i.by, ptr %7, align 8, !tbaa !68
  %i.bz = and i64 %i.by, -16
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = load ptr, ptr %i.ca, align 16, !tbaa !110
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !117, !nonnull !50, !align !93
  %i.ce = tail call noundef zeroext i1 @_ZNK5clang4Type14isIntegralTypeERKNS_10ASTContextE(ptr noundef nonnull align 16 dereferenceable(24) %i.cb, ptr noundef nonnull align 8 dereferenceable(23904) %i.cd) #17
  br i1 %i.ce, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cf = load i32, ptr %i.bk, align 8, !tbaa !855
  %i.cg = icmp eq i32 %i.cf, 2                    ; 2 uses
  %i.ch = select i1 %i.cg, ptr @.str, ptr @.str.1 ; 2 uses
  %i.ci = select i1 %i.cg, i64 13, i64 16         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload.i.i74 = load i64, ptr %i.ck, align 8
  %.sroa.0.0.extract.trunc.i75 = trunc i64 %.sroa.0.0.copyload.i.i74 to i32
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %i.cj, i32 %.sroa.0.0.extract.trunc.i75, i32 noundef 5169) #17
  %i.cl = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIPKNS_19SwiftAsyncErrorAttrEEERKNS_8SemaBase21SemaDiagnosticBuilderES7_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 7 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 120
  %i.cn = load i8, ptr %i.cm, align 8, !tbaa !47, !range !49, !noundef !50
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(84) %i.cp, ptr nonnull %i.ch, i64 %i.ci)
  br label %_ZN5clanglsIN4llvm9StringRefEEERKNS_8SemaBase21SemaDiagnosticBuilderES6_RKT_.exit

bb.j:                                             ; preds = %bb.h
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 128
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cl, i64 132
  %i.cs = load i8, ptr %i.cr, align 4, !tbaa !70, !range !49, !noundef !50
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %bb.k, label %_ZN5clanglsIN4llvm9StringRefEEERKNS_8SemaBase21SemaDiagnosticBuilderES6_RKT_.exit

bb.k:                                             ; preds = %bb.j
  %i.cu = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilder22getDeviceDeferredDiagsEv(ptr noundef nonnull align 8 dereferenceable(136) %i.cl) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !72 ; 3 uses
  %.not.i.i = icmp eq ptr %i.cw, null
  br i1 %.not.i.i, label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !83
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = call noundef ptr %i.cz(ptr noundef nonnull align 8 dereferenceable(168) %i.cw) #17, !inline_history !859
  br label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i

_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i: ; preds = %bb.l, %bb.k
  %i.db = phi ptr [ %i.da, %bb.l ], [ null, %bb.k ]
  store ptr %i.db, ptr %4, align 8, !tbaa !86
  %i.dc = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E24lookupOrInsertIntoBucketIS6_JEEES8_IPSI_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.cu, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.dc, 0
  %i.dd = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 8
  %i.de = load i32, ptr %i.cq, align 8, !tbaa !32
  %i.df = zext i32 %i.de to i64
  %i.dg = load ptr, ptr %i.dd, align 8, !tbaa !88
  %i.dh = getelementptr inbounds nuw [32 x i8], ptr %i.dg, i64 %i.df
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(20) %i.di, ptr nonnull %i.ch, i64 %i.ci)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %_ZN5clanglsIN4llvm9StringRefEEERKNS_8SemaBase21SemaDiagnosticBuilderES6_RKT_.exit

_ZN5clanglsIN4llvm9StringRefEEERKNS_8SemaBase21SemaDiagnosticBuilderES6_RKT_.exit: ; preds = %bb.i, %bb.j, %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i
  %i.dj = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIjEERKNS_8SemaBase21SemaDiagnosticBuilderES4_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.cl, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  %i.dk = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_8QualTypeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.dj, ptr noundef nonnull align 8 dereferenceable(8) %7) ; 0 uses
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %_ZN5clanglsIN4llvm9StringRefEEERKNS_8SemaBase21SemaDiagnosticBuilderES6_RKT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  br label %.critedge63

bb.n:                                             ; preds = %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread
  %.idx = shl nuw nsw i64 %.sroa.7.0, 3
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.095.0, i64 %.idx
  %.not56156 = icmp eq i64 %.sroa.7.0, 0
  br i1 %.not56156, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread
  %.049157 = phi ptr [ %.sroa.095.0, %.lr.ph ], [ %i.gk, %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread ] ; 2 uses
  %i.dn = load i64, ptr %.049157, align 8, !tbaa !68
  %i.do = and i64 %i.dn, -16
  %i.dp = inttoptr i64 %i.do to ptr               ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 16, !tbaa !110 ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load i8, ptr %i.dr, align 16
  %.not.i78 = icmp eq i8 %i.ds, 31
  br i1 %.not.i78, label %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit.thread112, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %.sroa.0.0.copyload.i.i.i.i79 = load i64, ptr %i.dt, align 8, !tbaa !68
  %i.du = and i64 %.sroa.0.0.copyload.i.i.i.i79, -16
  %i.dv = inttoptr i64 %i.du to ptr
  %i.dw = load ptr, ptr %i.dv, align 16, !tbaa !110
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = load i8, ptr %i.dx, align 16
  %i.dz = icmp eq i8 %i.dy, 31
  br i1 %i.dz, label %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit, label %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit.thread

_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit: ; preds = %bb.p
  %i.ea = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.dq) #17 ; 2 uses
  %.not57 = icmp eq ptr %i.ea, null
  br i1 %.not57, label %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit.thread, label %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit.thread112

_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit.thread112: ; preds = %bb.o, %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit
  %.1.i80115 = phi ptr [ %i.ea, %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit ], [ %i.dq, %bb.o ]
  %i.eb = getelementptr inbounds nuw i8, ptr %.1.i80115, i64 32
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.eb, align 8
  %i.ec = and i64 %.0.copyload.i.i.i.i.i.i.i, -16
  %i.ed = inttoptr i64 %i.ec to ptr
  %i.ee = load ptr, ptr %i.ed, align 16, !tbaa !110 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eg = load i8, ptr %i.ef, align 16
  %i.eh = and i8 %i.eg, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i.i = icmp eq i8 %i.eh, 32
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i.i, label %_ZNK5clang21ObjCObjectPointerType13getObjectTypeEv.exit.i.preheader, label %bb.q

bb.q:                                             ; preds = %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit.thread112
  %i.ei = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.ee) #17
  br label %_ZNK5clang21ObjCObjectPointerType13getObjectTypeEv.exit.i.preheader

_ZNK5clang21ObjCObjectPointerType13getObjectTypeEv.exit.i.preheader: ; preds = %bb.q, %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit.thread112
  %.pn.i.i.ph = phi ptr [ %i.ee, %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit.thread112 ], [ %i.ei, %bb.q ]
  br label %_ZNK5clang21ObjCObjectPointerType13getObjectTypeEv.exit.i

_ZNK5clang21ObjCObjectPointerType13getObjectTypeEv.exit.i: ; preds = %_ZNK5clang21ObjCObjectPointerType13getObjectTypeEv.exit.i.preheader, %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread16.i.i
  %.pn.i.i = phi ptr [ %.1.i19.i.i, %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread16.i.i ], [ %.pn.i.i.ph, %_ZNK5clang21ObjCObjectPointerType13getObjectTypeEv.exit.i.preheader ]
  %.sroa.0.0.in.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 24
  %.sroa.0.0.i.i = load i64, ptr %.sroa.0.0.in.i.i, align 8, !tbaa !68
  %i.ej = and i64 %.sroa.0.0.i.i, -16
  %i.ek = inttoptr i64 %i.ej to ptr
  %i.el = load ptr, ptr %i.ek, align 16, !tbaa !110 ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.en = load i8, ptr %i.em, align 16            ; 2 uses
  %i.eo = and i8 %i.en, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i1.i = icmp eq i8 %i.eo, 32
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i1.i, label %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread16.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNK5clang21ObjCObjectPointerType13getObjectTypeEv.exit.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.ep, align 8, !tbaa !68
  %i.eq = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, -16
  %i.er = inttoptr i64 %i.eq to ptr
  %i.es = load ptr, ptr %i.er, align 16, !tbaa !110
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
end_hunk_0
begin_hunk_1_@_ZN5clang9SemaSwift12DiagnoseNameEPNS_4DeclEN4llvm9StringRefENS_14SourceLocationERKNS_10ParsedAttrEb:bb.a
  %i.cw = call fastcc noundef zeroext i1 @_ZN5clangL23isValidSwiftContextNameEN4llvm9StringRefE(ptr %i.cr, i64 %.sroa.speculated.i.i.i133.i)
  br i1 %i.cw, label %thread-pre-split.i, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  %i.cx = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %i.cx, i32 %4, i32 noundef 6741) #17
  %i.cy = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_10ParsedAttrEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %11, ptr noundef nonnull align 8 dereferenceable(80) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  store i32 1, ptr %i.e, align 4, !tbaa !32
  %i.cz = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.cy, ptr noundef nonnull align 4 dereferenceable(4) %i.e) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %11) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  br label %_ZN5clangL25validateSwiftFunctionNameERNS_4SemaERKNS_10ParsedAttrENS_14SourceLocationEN4llvm9StringRefERjRb.exit.thread101

thread-pre-split.i:                               ; preds = %bb.o
  %.sroa.244.0.copyload.pr.i = load i64, ptr %.sroa.5212.0..sroa.4209.8..sroa_idx.i, align 8, !tbaa !69
  %.sroa.043.0.copyload.pre.i = load ptr, ptr %9, align 8, !tbaa !94
  br label %bb.q

bb.q:                                             ; preds = %thread-pre-split.i, %bb.m
  %.sroa.043.0.copyload.i = phi ptr [ %.sroa.043.0.copyload.pre.i, %thread-pre-split.i ], [ %.sroa.0202.0233.i, %bb.m ] ; 5 uses
  %.sroa.244.0.copyload.i = phi i64 [ %.sroa.244.0.copyload.pr.i, %thread-pre-split.i ], [ %.sroa.5204.0234.i, %bb.m ] ; 3 uses
  %.not261.i = phi i1 [ true, %thread-pre-split.i ], [ false, %bb.m ]
  %i.da = icmp eq i64 %.sroa.244.0.copyload.i, 0
  br i1 %i.da, label %_ZN5clang22isValidAsciiIdentifierEN4llvm9StringRefEb.exit.thread.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.db = load i8, ptr %.sroa.043.0.copyload.i, align 1, !tbaa !68 ; 2 uses
  %i.dc = zext i8 %i.db to i64
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr @_ZN5clang8charinfo9InfoTableE, i64 %i.dc
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !898
  %i.df = and i16 %i.de, 224
  %.not.i.i137.not.i = icmp eq i16 %i.df, 0
  br i1 %.not.i.i137.not.i, label %_ZN5clang22isValidAsciiIdentifierEN4llvm9StringRefEb.exit.thread.i, label %_ZN5clang25isAsciiIdentifierContinueEhb.exit.thread.preheader.i.i

_ZN5clang25isAsciiIdentifierContinueEhb.exit.thread.preheader.i.i: ; preds = %bb.r
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.043.0.copyload.i, i64 %.sroa.244.0.copyload.i
  br label %_ZN5clang25isAsciiIdentifierContinueEhb.exit.thread.i.i

bb.s:                                             ; preds = %_ZN5clang25isAsciiIdentifierContinueEhb.exit.thread.i.i
  %i.dh = getelementptr inbounds nuw i8, ptr %.0820.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dh, %i.dg
  br i1 %.not.i.i, label %_ZN5clang22isValidAsciiIdentifierEN4llvm9StringRefEb.exit.i, label %_ZN5clang25isAsciiIdentifierContinueEhb.exit.thread.i.i, !llvm.loop !900

_ZN5clang25isAsciiIdentifierContinueEhb.exit.thread.i.i: ; preds = %bb.s, %_ZN5clang25isAsciiIdentifierContinueEhb.exit.thread.preheader.i.i
  %.0820.i.i = phi ptr [ %i.dh, %bb.s ], [ %.sroa.043.0.copyload.i, %_ZN5clang25isAsciiIdentifierContinueEhb.exit.thread.preheader.i.i ] ; 2 uses
  %i.di = load i8, ptr %.0820.i.i, align 1, !tbaa !68
  %i.dj = zext i8 %i.di to i64
  %i.dk = getelementptr inbounds nuw i8, ptr @_ZZN5clang25isAsciiIdentifierContinueEhE10IDContinue, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !68
  %.not.i9.i.not.i = icmp eq i8 %i.dl, 0
  br i1 %.not.i9.i.not.i, label %_ZN5clang22isValidAsciiIdentifierEN4llvm9StringRefEb.exit.thread.i, label %bb.s

_ZN5clang22isValidAsciiIdentifierEN4llvm9StringRefEb.exit.i: ; preds = %bb.s
  switch i64 %.sroa.244.0.copyload.i, label %_ZN4llvmeqENS_9StringRefES0_.exit142.thread.i [
    i64 1, label %_ZN4llvmeqENS_9StringRefES0_.exit.i
    i64 9, label %.thread240.i
  ]

_ZN4llvmeqENS_9StringRefES0_.exit.i:              ; preds = %_ZN5clang22isValidAsciiIdentifierEN4llvm9StringRefEb.exit.i
  %i.dm = icmp eq i8 %i.db, 95
  br i1 %i.dm, label %_ZN5clang22isValidAsciiIdentifierEN4llvm9StringRefEb.exit.thread.i, label %_ZN4llvmeqENS_9StringRefES0_.exit142.thread.i

_ZN5clang22isValidAsciiIdentifierEN4llvm9StringRefEb.exit.thread.i: ; preds = %_ZN5clang25isAsciiIdentifierContinueEhb.exit.thread.i.i, %_ZN4llvmeqENS_9StringRefES0_.exit.i, %bb.r, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  %i.dn = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %i.dn, i32 %4, i32 noundef 6741) #17
  %i.do = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_10ParsedAttrEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %12, ptr noundef nonnull align 8 dereferenceable(80) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #17
  store i32 0, ptr %i.f, align 4, !tbaa !32
  %i.dp = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.do, ptr noundef nonnull align 4 dereferenceable(4) %i.f) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  br label %_ZN5clangL25validateSwiftFunctionNameERNS_4SemaERKNS_10ParsedAttrENS_14SourceLocationEN4llvm9StringRefERjRb.exit.thread101

.thread240.i:                                     ; preds = %_ZN5clang22isValidAsciiIdentifierEN4llvm9StringRefEb.exit.i
  %i.dq = load i64, ptr %.sroa.043.0.copyload.i, align 1
  %i.dr = xor i64 %i.dq, 8100131176265708915
  %i.ds = getelementptr i8, ptr %.sroa.043.0.copyload.i, i64 8
  %i.dt = load i8, ptr %i.ds, align 1
  %i.du = zext i8 %i.dt to i64
  %i.dv = xor i64 %i.du, 116
  %i.dw = or i64 %i.dr, %i.dv
  %i.dx = icmp ne i64 %i.dw, 0
  %i.dy = zext i1 %i.dx to i32
  %i.dz = icmp eq i32 %i.dy, 0                    ; 2 uses
  %.not.i = xor i1 %i.dz, true
  %or.cond.i = or i1 %i.bz, %.not.i
  %or.cond3.i = or i1 %.0117291.i, %or.cond.i
  br i1 %or.cond3.i, label %_ZN4llvmeqENS_9StringRefES0_.exit142.thread.i, label %bb.t

bb.t:                                             ; preds = %.thread240.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  %i.ea = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %i.ea, i32 %4, i32 noundef 6747) #17
  %i.eb = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_10ParsedAttrEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %13, ptr noundef nonnull align 8 dereferenceable(80) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #17
  store i32 0, ptr %i.g, align 4, !tbaa !32
  %i.ec = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.eb, ptr noundef nonnull align 4 dereferenceable(4) %i.g) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #17
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  br label %_ZN5clangL25validateSwiftFunctionNameERNS_4SemaERKNS_10ParsedAttrENS_14SourceLocationEN4llvm9StringRefERjRb.exit.thread101

_ZN4llvmeqENS_9StringRefES0_.exit142.thread.i:    ; preds = %.thread240.i, %_ZN4llvmeqENS_9StringRefES0_.exit.i, %_ZN5clang22isValidAsciiIdentifierEN4llvm9StringRefEb.exit.i
  %.0.i140245.i = phi i1 [ %i.dz, %.thread240.i ], [ false, %_ZN5clang22isValidAsciiIdentifierEN4llvm9StringRefEb.exit.i ], [ false, %_ZN4llvmeqENS_9StringRefES0_.exit.i ] ; 3 uses
  %i.ed = load i64, ptr %.sroa.9215.16..sroa.0208.0..sroa_idx.i, align 8, !tbaa !889 ; 2 uses
  %i.ee = icmp eq i64 %i.ed, 0
  br i1 %i.ee, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit142.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  %i.ef = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %i.ef, i32 %4, i32 noundef 6742) #17
  %i.eg = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_10ParsedAttrEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %14, ptr noundef nonnull align 8 dereferenceable(80) %5) ; 0 uses
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %14) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  br label %_ZN5clangL25validateSwiftFunctionNameERNS_4SemaERKNS_10ParsedAttrENS_14SourceLocationEN4llvm9StringRefERjRb.exit.thread101

bb.v:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit142.thread.i
  %i.eh = add i64 %i.ed, -1                       ; 3 uses
  %i.ei = load ptr, ptr %10, align 8, !tbaa !891
  store i64 %i.eh, ptr %.sroa.9215.16..sroa.0208.0..sroa_idx.i, align 8, !tbaa !69
  %i.ej = icmp eq i64 %i.eh, 0
  br i1 %i.ej, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  br i1 %.0.i140245.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  %i.ek = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %i.ek, i32 %4, i32 noundef 6747) #17
  %i.el = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_10ParsedAttrEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %15, ptr noundef nonnull align 8 dereferenceable(80) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #17
  store i32 1, ptr %i.h, align 4, !tbaa !32
  %i.em = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.el, ptr noundef nonnull align 4 dereferenceable(4) %i.h) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #17
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  br label %_ZN5clangL25validateSwiftFunctionNameERNS_4SemaERKNS_10ParsedAttrENS_14SourceLocationEN4llvm9StringRefERjRb.exit.thread101

bb.y:                                             ; preds = %bb.w
  br i1 %.0117291.i, label %bb.z, label %bb.aw

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  %i.en = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %i.en, i32 %4, i32 noundef 6745) #17
  %i.eo = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_10ParsedAttrEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %16, ptr noundef nonnull align 8 dereferenceable(80) %5) ; 0 uses
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %16) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  br label %_ZN5clangL25validateSwiftFunctionNameERNS_4SemaERKNS_10ParsedAttrENS_14SourceLocationEN4llvm9StringRefERjRb.exit.thread101

bb.aa:                                            ; preds = %bb.v
  %i.ep = getelementptr i8, ptr %i.ei, i64 %i.eh
  %i.eq = getelementptr i8, ptr %i.ep, i64 -1
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !68
  %.not124.i = icmp eq i8 %i.er, 58
  br i1 %.not124.i, label %.preheader.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #17
  %i.es = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %i.es, i32 %4, i32 noundef 6739) #17
  %i.et = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_10ParsedAttrEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %17, ptr noundef nonnull align 8 dereferenceable(80) %5) ; 0 uses
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %17) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  br label %_ZN5clangL25validateSwiftFunctionNameERNS_4SemaERKNS_10ParsedAttrENS_14SourceLocationEN4llvm9StringRefERjRb.exit.thread101

.preheader.i:                                     ; preds = %bb.aa, %_ZN4llvmeqENS_9StringRefES0_.exit163.thread.i
  %i.eu = phi i32 [ %i.gd, %_ZN4llvmeqENS_9StringRefES0_.exit163.thread.i ], [ 0, %bb.aa ] ; 2 uses
  %.sroa.3.0.i = phi i1 [ %.sroa.3.1.i, %_ZN4llvmeqENS_9StringRefES0_.exit163.thread.i ], [ false, %bb.aa ] ; 4 uses
  %.sroa.3193.0.i = phi i8 [ %.sroa.3193.1.i, %_ZN4llvmeqENS_9StringRefES0_.exit163.thread.i ], [ 0, %bb.aa ] ; 4 uses
  %.0120.i = phi i32 [ %.1121.i, %_ZN4llvmeqENS_9StringRefES0_.exit163.thread.i ], [ 0, %bb.aa ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 58, ptr %i.b, align 1, !tbaa !68, !noalias !901
  %i.ev = call noundef i64 @_ZNK4llvm9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr nonnull %i.b, i64 1, i64 noundef 0) #17, !noalias !904 ; 3 uses
  %i.ew = icmp eq i64 %i.ev, -1
  br i1 %i.ew, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.preheader.i
  %.sroa.0186.0.copyload.i = load ptr, ptr %10, align 8, !tbaa !94
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.9215.16..sroa.0208.0..sroa_idx.i, align 8, !tbaa !69
  br label %_ZNK4llvm9StringRef5splitEc.exit147.i

bb.ad:                                            ; preds = %.preheader.i
  %i.ex = load i64, ptr %.sroa.9215.16..sroa.0208.0..sroa_idx.i, align 8, !tbaa !889, !noalias !904 ; 3 uses
  %.sroa.speculated.i.i.i143.i = call i64 @llvm.umin.i64(i64 %i.ev, i64 %i.ex)
  %i.ey = load ptr, ptr %10, align 8, !tbaa !891, !noalias !904 ; 2 uses
  %i.ez = add nuw i64 %i.ev, 1
  %.sroa.speculated4.i.i.i144.i = call i64 @llvm.umin.i64(i64 %i.ex, i64 %i.ez) ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 %.sroa.speculated4.i.i.i144.i
  %i.fb = sub i64 %i.ex, %.sroa.speculated4.i.i.i144.i
  br label %_ZNK4llvm9StringRef5splitEc.exit147.i

_ZNK4llvm9StringRef5splitEc.exit147.i:            ; preds = %bb.ad, %bb.ac
  %.sroa.0186.0.i = phi ptr [ %.sroa.0186.0.copyload.i, %bb.ac ], [ %i.ey, %bb.ad ] ; 5 uses
  %.sroa.5.0.i = phi i64 [ %.sroa.5.0.copyload.i, %bb.ac ], [ %.sroa.speculated.i.i.i143.i, %bb.ad ] ; 5 uses
  %.sroa.9.0.i = phi i64 [ 0, %bb.ac ], [ %i.fb, %bb.ad ] ; 2 uses
  %.sroa.6.0.i = phi ptr [ null, %bb.ac ], [ %i.fa, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %.sroa.6.0.i, ptr %10, align 8, !tbaa !94
  store i64 %.sroa.9.0.i, ptr %.sroa.9215.16..sroa.0208.0..sroa_idx.i, align 8, !tbaa !69
  %i.fc = icmp eq i64 %.sroa.5.0.i, 0
  br i1 %i.fc, label %.loopexit.i, label %bb.ae

bb.ae:                                            ; preds = %_ZNK4llvm9StringRef5splitEc.exit147.i
  %i.fd = load i8, ptr %.sroa.0186.0.i, align 1, !tbaa !68 ; 2 uses
  %i.fe = zext i8 %i.fd to i64
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr @_ZN5clang8charinfo9InfoTableE, i64 %i.fe
  %i.fg = load i16, ptr %i.ff, align 2, !tbaa !898
  %i.fh = and i16 %i.fg, 224
  %.not.i.i148.not.i = icmp eq i16 %i.fh, 0
  br i1 %.not.i.i148.not.i, label %.loopexit.i, label %_ZN5clang25isAsciiIdentifierContinueEhb.exit.thread.preheader.i150.i

_ZN5clang25isAsciiIdentifierContinueEhb.exit.thread.preheader.i150.i: ; preds = %bb.ae
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.0186.0.i, i64 %.sroa.5.0.i
  br label %_ZN5clang25isAsciiIdentifierContinueEhb.exit.thread.i151.i

bb.af:                                            ; preds = %_ZN5clang25isAsciiIdentifierContinueEhb.exit.thread.i151.i
  %i.fj = getelementptr inbounds nuw i8, ptr %.0820.i152.i, i64 1 ; 2 uses
  %.not.i154.i = icmp eq ptr %i.fj, %i.fi
  br i1 %.not.i154.i, label %_ZN5clang22isValidAsciiIdentifierEN4llvm9StringRefEb.exit155.i, label %_ZN5clang25isAsciiIdentifierContinueEhb.exit.thread.i151.i, !llvm.loop !900

_ZN5clang25isAsciiIdentifierContinueEhb.exit.thread.i151.i: ; preds = %bb.af, %_ZN5clang25isAsciiIdentifierContinueEhb.exit.thread.preheader.i150.i
  %.0820.i152.i = phi ptr [ %i.fj, %bb.af ], [ %.sroa.0186.0.i, %_ZN5clang25isAsciiIdentifierContinueEhb.exit.thread.preheader.i150.i ] ; 2 uses
  %i.fk = load i8, ptr %.0820.i152.i, align 1, !tbaa !68
  %i.fl = zext i8 %i.fk to i64
  %i.fm = getelementptr inbounds nuw i8, ptr @_ZZN5clang25isAsciiIdentifierContinueEhE10IDContinue, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !68
  %.not.i9.i153.not.i = icmp eq i8 %i.fn, 0
  br i1 %.not.i9.i153.not.i, label %.loopexit.i, label %bb.af

.loopexit.i:                                      ; preds = %bb.ae, %_ZNK4llvm9StringRef5splitEc.exit147.i, %_ZN5clang25isAsciiIdentifierContinueEhb.exit.thread.i151.i
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #17
  %i.fo = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %18, ptr noundef nonnull align 8 dereferenceable(8) %i.fo, i32 %4, i32 noundef 6741) #17
  %i.fp = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_10ParsedAttrEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %18, ptr noundef nonnull align 8 dereferenceable(80) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #17
  store i32 2, ptr %i.i, align 4, !tbaa !32
  %i.fq = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.fp, ptr noundef nonnull align 4 dereferenceable(4) %i.i) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #17
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %18) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  br label %_ZN5clangL25validateSwiftFunctionNameERNS_4SemaERKNS_10ParsedAttrENS_14SourceLocationEN4llvm9StringRefERjRb.exit.thread101

_ZN5clang22isValidAsciiIdentifierEN4llvm9StringRefEb.exit155.i: ; preds = %bb.af
  %.not.i156.i = icmp eq i64 %.sroa.5.0.i, 4
  %or.cond262.i = and i1 %.not261.i, %.not.i156.i
  br i1 %or.cond262.i, label %_ZN4llvmeqENS_9StringRefES0_.exit159.i, label %_ZN4llvmeqENS_9StringRefES0_.exit159.thread248.i

_ZN4llvmeqENS_9StringRefES0_.exit159.i:           ; preds = %_ZN5clang22isValidAsciiIdentifierEN4llvm9StringRefEb.exit155.i
  %i.fr = load i32, ptr %.sroa.0186.0.i, align 1
  %i.fs = icmp ne i32 %i.fr, 1718379891
  %i.ft = zext i1 %i.fs to i32
  %i.fu = icmp eq i32 %i.ft, 0
  br i1 %i.fu, label %_ZN4llvmeqENS_9StringRefES0_.exit159.thread.i, label %_ZN4llvmeqENS_9StringRefES0_.exit163.thread.i

_ZN4llvmeqENS_9StringRefES0_.exit159.thread.i:    ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit159.i
  %i.fv = trunc nuw i8 %.sroa.3193.0.i to i1
  br i1 %i.fv, label %bb.ag, label %_ZN4llvmeqENS_9StringRefES0_.exit163.thread.i

bb.ag:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit159.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #17
  %i.fw = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %19, ptr noundef nonnull align 8 dereferenceable(8) %i.fw, i32 %4, i32 noundef 6743) #17
  %i.fx = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_10ParsedAttrEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %19, ptr noundef nonnull align 8 dereferenceable(80) %5) ; 0 uses
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %19) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17
  br label %_ZN5clangL25validateSwiftFunctionNameERNS_4SemaERKNS_10ParsedAttrENS_14SourceLocationEN4llvm9StringRefERjRb.exit.thread101

_ZN4llvmeqENS_9StringRefES0_.exit159.thread248.i: ; preds = %_ZN5clang22isValidAsciiIdentifierEN4llvm9StringRefEb.exit155.i
  %.not.i160.i = icmp eq i64 %.sroa.5.0.i, 8
  br i1 %.not.i160.i, label %_ZN4llvmeqENS_9StringRefES0_.exit163.i, label %_ZN4llvmeqENS_9StringRefES0_.exit163.thread.i

_ZN4llvmeqENS_9StringRefES0_.exit163.i:           ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit159.thread248.i
  %i.fy = load i64, ptr %.sroa.0186.0.i, align 1
  %i.fz = icmp ne i64 %i.fy, 7310868735424161134
  %i.ga = zext i1 %i.fz to i32
  %i.gb = icmp eq i32 %i.ga, 0                    ; 2 uses
  %spec.select.i = select i1 %i.gb, i1 true, i1 %.sroa.3.0.i
  %i.gc = zext i1 %i.gb to i32
  %spec.select263.i = add i32 %.0120.i, %i.gc
  br label %_ZN4llvmeqENS_9StringRefES0_.exit163.thread.i

_ZN4llvmeqENS_9StringRefES0_.exit163.thread.i:    ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit163.i, %_ZN4llvmeqENS_9StringRefES0_.exit159.thread248.i, %_ZN4llvmeqENS_9StringRefES0_.exit159.thread.i, %_ZN4llvmeqENS_9StringRefES0_.exit159.i
  %.sroa.3.1.i = phi i1 [ %.sroa.3.0.i, %_ZN4llvmeqENS_9StringRefES0_.exit159.i ], [ %spec.select.i, %_ZN4llvmeqENS_9StringRefES0_.exit163.i ], [ %.sroa.3.0.i, %_ZN4llvmeqENS_9StringRefES0_.exit159.thread.i ], [ %.sroa.3.0.i, %_ZN4llvmeqENS_9StringRefES0_.exit159.thread248.i ] ; 3 uses
  %.sroa.3193.1.i = phi i8 [ %.sroa.3193.0.i, %_ZN4llvmeqENS_9StringRefES0_.exit159.i ], [ %.sroa.3193.0.i, %_ZN4llvmeqENS_9StringRefES0_.exit163.i ], [ 1, %_ZN4llvmeqENS_9StringRefES0_.exit159.thread.i ], [ %.sroa.3193.0.i, %_ZN4llvmeqENS_9StringRefES0_.exit159.thread248.i ] ; 2 uses
  %.1121.i = phi i32 [ %.0120.i, %_ZN4llvmeqENS_9StringRefES0_.exit159.i ], [ %spec.select263.i, %_ZN4llvmeqENS_9StringRefES0_.exit163.i ], [ %.0120.i, %_ZN4llvmeqENS_9StringRefES0_.exit159.thread.i ], [ %.0120.i, %_ZN4llvmeqENS_9StringRefES0_.exit159.thread248.i ] ; 2 uses
  %i.gd = add i32 %i.eu, 1                        ; 8 uses
  store i32 %i.gd, ptr %i.o, align 4, !tbaa !32
  %i.ge = icmp eq i64 %.sroa.9.0.i, 0
  br i1 %i.ge, label %bb.ah, label %.preheader.i, !llvm.loop !907

bb.ah:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit163.thread.i
  %.0.i140245.not.i = xor i1 %.0.i140245.i, true
  %i.gf = trunc nuw i8 %.sroa.3193.1.i to i1      ; 2 uses
  %or.cond259.i = select i1 %.0.i140245.not.i, i1 true, i1 %i.gf
  br i1 %or.cond259.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #17
  %i.gg = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %20, ptr noundef nonnull align 8 dereferenceable(8) %i.gg, i32 %4, i32 noundef 6747) #17
  %i.gh = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_10ParsedAttrEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %20, ptr noundef nonnull align 8 dereferenceable(80) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #17
  store i32 2, ptr %i.j, align 4, !tbaa !32
  %i.gi = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.gh, ptr noundef nonnull align 4 dereferenceable(4) %i.j) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #17
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %20) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17
  br label %_ZN5clangL25validateSwiftFunctionNameERNS_4SemaERKNS_10ParsedAttrENS_14SourceLocationEN4llvm9StringRefERjRb.exit.thread101

bb.aj:                                            ; preds = %bb.ah
  %i.gj = icmp eq i32 %i.eu, 0
  %.sroa.216.0.copyload.i = load i64, ptr %.sroa.5212.0..sroa.4209.8..sroa_idx.i, align 8
  %.not.i164.i = icmp eq i64 %.sroa.216.0.copyload.i, 4
  %or.cond303.i = select i1 %i.gj, i1 %.not.i164.i, i1 false
  br i1 %or.cond303.i, label %_ZN4llvmeqENS_9StringRefES0_.exit167.i, label %_ZN4llvmeqENS_9StringRefES0_.exit167.thread257.i

_ZN4llvmeqENS_9StringRefES0_.exit167.i:           ; preds = %bb.aj
  %.sroa.015.0.copyload.i = load ptr, ptr %9, align 8, !tbaa !94
  %i.gk = load i32, ptr %.sroa.015.0.copyload.i, align 1
  %i.gl = icmp ne i32 %i.gk, 1953066601
  %i.gm = zext i1 %i.gl to i32
  %i.gn = icmp eq i32 %i.gm, 0
  br i1 %i.gn, label %_ZN4llvmeqENS_9StringRefES0_.exit167.thread.i, label %_ZN4llvmeqENS_9StringRefES0_.exit167.thread257.i

_ZN4llvmeqENS_9StringRefES0_.exit167.thread.i:    ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit167.i
  %.not.i.i168.not.i = icmp ne i64 %.sroa.5.0.i, 1
  %i.go = icmp ne i8 %i.fd, 95
  %spec.select = or i1 %.not.i.i168.not.i, %i.go
  br label %_ZN4llvmeqENS_9StringRefES0_.exit167.thread257.i

_ZN4llvmeqENS_9StringRefES0_.exit167.thread257.i: ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit167.thread.i, %_ZN4llvmeqENS_9StringRefES0_.exit167.i, %bb.aj
  %i.gp = phi i1 [ false, %_ZN4llvmeqENS_9StringRefES0_.exit167.i ], [ false, %bb.aj ], [ %spec.select, %_ZN4llvmeqENS_9StringRefES0_.exit167.thread.i ] ; 4 uses
  %or.cond5.i = or i1 %.0117291.i, %i.bz
  br i1 %or.cond5.i, label %bb.ak, label %bb.aw

bb.ak:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit167.thread257.i
  %not..i = xor i1 %i.bz, true
  %i.gq = zext i1 %not..i to i32
  %i.gr = select i1 %i.bz, i32 6740, i32 6745     ; 2 uses
  %i.gs = select i1 %i.bz, i32 1, i32 2
  %spec.select126.i = select i1 %i.gf, i32 %i.gs, i32 %i.gq ; 2 uses
  br i1 %.0.i140245.i, label %bb.al, label %bb.au

bb.al:                                            ; preds = %bb.ak
  %i.gt = icmp ult i32 %i.gd, %spec.select126.i
  br i1 %i.gt, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #17
  %i.gu = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %21, ptr noundef nonnull align 8 dereferenceable(8) %i.gu, i32 %4, i32 noundef %i.gr) #17
  %i.gv = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_10ParsedAttrEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %21, ptr noundef nonnull align 8 dereferenceable(80) %5) ; 0 uses
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %21) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #17
  br label %_ZN5clangL25validateSwiftFunctionNameERNS_4SemaERKNS_10ParsedAttrENS_14SourceLocationEN4llvm9StringRefERjRb.exit.thread101

bb.an:                                            ; preds = %bb.al
  br i1 %.0117291.i, label %bb.ao, label %bb.as

bb.ao:                                            ; preds = %bb.an
  br i1 %.sroa.3.1.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #17
  %i.gw = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %22, ptr noundef nonnull align 8 dereferenceable(8) %i.gw, i32 %4, i32 noundef 6749) #17
  %i.gx = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_10ParsedAttrEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %22, ptr noundef nonnull align 8 dereferenceable(80) %5) ; 0 uses
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %22) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #17
  br label %_ZN5clangL25validateSwiftFunctionNameERNS_4SemaERKNS_10ParsedAttrENS_14SourceLocationEN4llvm9StringRefERjRb.exit.thread101

bb.aq:                                            ; preds = %bb.ao
  %i.gy = icmp ugt i32 %.1121.i, 1
  br i1 %i.gy, label %bb.ar, label %bb.aw

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #17
  %i.gz = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %23, ptr noundef nonnull align 8 dereferenceable(8) %i.gz, i32 %4, i32 noundef 6748) #17
  %i.ha = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_10ParsedAttrEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %23, ptr noundef nonnull align 8 dereferenceable(80) %5) ; 0 uses
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %23) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #17
  br label %_ZN5clangL25validateSwiftFunctionNameERNS_4SemaERKNS_10ParsedAttrENS_14SourceLocationEN4llvm9StringRefERjRb.exit.thread101

bb.as:                                            ; preds = %bb.an
  br i1 %.sroa.3.1.i, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #17
  %i.hb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %24, ptr noundef nonnull align 8 dereferenceable(8) %i.hb, i32 %4, i32 noundef 6746) #17
  %i.hc = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_10ParsedAttrEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %24, ptr noundef nonnull align 8 dereferenceable(80) %5) ; 0 uses
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %24) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #17
end_hunk_1
