Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TemplateBase?download=true
inline.NumInlined: 1377
inline.NumDeleted: 805
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK5clang19TemplateArgumentLoc14getSourceRangeEv:bb.a
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !135
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %_ZNK5clang19TemplateArgumentLoc23getTemplateQualifierLocEv.exit30

_ZNK5clang19TemplateArgumentLoc23getTemplateQualifierLocEv.exit30: ; preds = %bb.l, %bb.m
  %.sroa.0.0.i24 = phi i64 [ %.sroa.0.0.copyload.i.i28, %bb.m ], [ 0, %bb.l ]
  %.sroa.4.0.i25 = phi ptr [ %i.as, %bb.m ], [ null, %bb.l ]
  store i64 %.sroa.0.0.i24, ptr %10, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %.sroa.4.0.i25, ptr %i.at, align 8
  %i.au = call i32 @_ZNK5clang22NestedNameSpecifierLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %10) #23
  %i.av = load i64, ptr %0, align 8
  %i.aw = and i64 %i.av, 2147483646
  %switch.i31 = icmp eq i64 %i.aw, 6
  br i1 %switch.i31, label %bb.n, label %_ZNK5clang19TemplateArgumentLoc18getTemplateNameLocEv.exit

bb.n:                                             ; preds = %_ZNK5clang19TemplateArgumentLoc23getTemplateQualifierLocEv.exit30
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.ax, align 8
  %i.ay = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -4
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %.sroa.0.0.copyload.i.i33 = load i32, ptr %i.ba, align 4, !tbaa !61
  br label %_ZNK5clang19TemplateArgumentLoc18getTemplateNameLocEv.exit

_ZNK5clang19TemplateArgumentLoc18getTemplateNameLocEv.exit: ; preds = %_ZNK5clang19TemplateArgumentLoc23getTemplateQualifierLocEv.exit30, %bb.n
  %.sroa.0.0.i32 = phi i32 [ %.sroa.0.0.copyload.i.i33, %bb.n ], [ 0, %_ZNK5clang19TemplateArgumentLoc23getTemplateQualifierLocEv.exit30 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %_ZNK5clang19TemplateArgumentLoc18getTemplateNameLocEv.exit38

_ZNK5clang19TemplateArgumentLoc23getTemplateQualifierLocEv.exit.thread: ; preds = %bb.k, %_ZNK5clang19TemplateArgumentLoc23getTemplateQualifierLocEv.exit
  %i.bb = phi i64 [ %i.a, %bb.k ], [ %.pre105, %_ZNK5clang19TemplateArgumentLoc23getTemplateQualifierLocEv.exit ]
  %i.bc = and i64 %i.bb, 2147483646
  %switch.i34 = icmp eq i64 %i.bc, 6
  br i1 %switch.i34, label %bb.o, label %_ZNK5clang19TemplateArgumentLoc18getTemplateNameLocEv.exit38

bb.o:                                             ; preds = %_ZNK5clang19TemplateArgumentLoc23getTemplateQualifierLocEv.exit.thread
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.0.copyload.i.i.i.i.i.i.i.i36 = load i64, ptr %i.bd, align 8
  %i.be = and i64 %.0.copyload.i.i.i.i.i.i.i.i36, -4
  %i.bf = inttoptr i64 %i.be to ptr
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  %.sroa.0.0.copyload.i.i37 = load i32, ptr %i.bg, align 4, !tbaa !61 ; 2 uses
  br label %_ZNK5clang19TemplateArgumentLoc18getTemplateNameLocEv.exit38

bb.p:                                             ; preds = %bb.a
  %i.bh = and i64 %i.a, 2147483646
  %switch.i39 = icmp eq i64 %i.bh, 6
  br i1 %switch.i39, label %_ZNK5clang19TemplateArgumentLoc23getTemplateQualifierLocEv.exit46, label %_ZNK5clang19TemplateArgumentLoc23getTemplateQualifierLocEv.exit46.thread

_ZNK5clang19TemplateArgumentLoc23getTemplateQualifierLocEv.exit46: ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !8
  call void @_ZN5clang12TemplateNameC1EPv(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %i.bj) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZNK5clang12TemplateName30getQualifierAndTemplateKeywordEv(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.422") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #23
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.0.0.copyload.i.i44 = load i64, ptr %i.bk, align 8, !tbaa !125
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %.not102 = icmp eq i64 %.sroa.0.0.copyload.i.i44, 0
  %.pre = load i64, ptr %0, align 8               ; 2 uses
  br i1 %.not102, label %_ZNK5clang19TemplateArgumentLoc23getTemplateQualifierLocEv.exit46.thread, label %bb.q

bb.q:                                             ; preds = %_ZNK5clang19TemplateArgumentLoc23getTemplateQualifierLocEv.exit46
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.bl = and i64 %.pre, 2147483646
  %switch.i47 = icmp eq i64 %i.bl, 6
  br i1 %switch.i47, label %bb.r, label %_ZNK5clang19TemplateArgumentLoc23getTemplateQualifierLocEv.exit54

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.bm = load ptr, ptr %i.bi, align 8, !tbaa !8
  call void @_ZN5clang12TemplateNameC1EPv(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.bm) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @_ZNK5clang12TemplateName30getQualifierAndTemplateKeywordEv(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.422") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #23
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i52 = load i64, ptr %i.bn, align 8, !tbaa !125
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.0.copyload.i.i.i.i.i.i.i53 = load i64, ptr %i.bo, align 8
  %i.bp = and i64 %.0.copyload.i.i.i.i.i.i.i53, -4
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !135
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %_ZNK5clang19TemplateArgumentLoc23getTemplateQualifierLocEv.exit54

_ZNK5clang19TemplateArgumentLoc23getTemplateQualifierLocEv.exit54: ; preds = %bb.q, %bb.r
  %.sroa.0.0.i48 = phi i64 [ %.sroa.0.0.copyload.i.i52, %bb.r ], [ 0, %bb.q ]
  %.sroa.4.0.i49 = phi ptr [ %i.br, %bb.r ], [ null, %bb.q ]
  store i64 %.sroa.0.0.i48, ptr %11, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %.sroa.4.0.i49, ptr %i.bs, align 8
  %i.bt = call i32 @_ZNK5clang22NestedNameSpecifierLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #23
  %i.bu = load i64, ptr %0, align 8
  %i.bv = and i64 %i.bu, 2147483647
  %.not.i55 = icmp eq i64 %i.bv, 7
  br i1 %.not.i55, label %bb.s, label %_ZNK5clang19TemplateArgumentLoc22getTemplateEllipsisLocEv.exit

bb.s:                                             ; preds = %_ZNK5clang19TemplateArgumentLoc23getTemplateQualifierLocEv.exit54
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.0.copyload.i.i.i.i.i.i.i.i57 = load i64, ptr %i.bw, align 8
  %i.bx = and i64 %.0.copyload.i.i.i.i.i.i.i.i57, -4
  %i.by = inttoptr i64 %i.bx to ptr
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %.sroa.0.0.copyload.i.i58 = load i32, ptr %i.bz, align 8, !tbaa !61
  br label %_ZNK5clang19TemplateArgumentLoc22getTemplateEllipsisLocEv.exit

_ZNK5clang19TemplateArgumentLoc22getTemplateEllipsisLocEv.exit: ; preds = %_ZNK5clang19TemplateArgumentLoc23getTemplateQualifierLocEv.exit54, %bb.s
  %.sroa.0.0.i56 = phi i32 [ %.sroa.0.0.copyload.i.i58, %bb.s ], [ 0, %_ZNK5clang19TemplateArgumentLoc23getTemplateQualifierLocEv.exit54 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %_ZNK5clang19TemplateArgumentLoc18getTemplateNameLocEv.exit38

_ZNK5clang19TemplateArgumentLoc23getTemplateQualifierLocEv.exit46.thread: ; preds = %bb.p, %_ZNK5clang19TemplateArgumentLoc23getTemplateQualifierLocEv.exit46
  %i.ca = phi i64 [ %i.a, %bb.p ], [ %.pre, %_ZNK5clang19TemplateArgumentLoc23getTemplateQualifierLocEv.exit46 ] ; 2 uses
  %i.cb = and i64 %i.ca, 2147483646
  %switch.i59 = icmp eq i64 %i.cb, 6
  br i1 %switch.i59, label %bb.t, label %_ZNK5clang19TemplateArgumentLoc18getTemplateNameLocEv.exit63

bb.t:                                             ; preds = %_ZNK5clang19TemplateArgumentLoc23getTemplateQualifierLocEv.exit46.thread
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.0.copyload.i.i.i.i.i.i.i.i61 = load i64, ptr %i.cc, align 8
  %i.cd = and i64 %.0.copyload.i.i.i.i.i.i.i.i61, -4
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  %.sroa.0.0.copyload.i.i62 = load i32, ptr %i.cf, align 4, !tbaa !61
  br label %_ZNK5clang19TemplateArgumentLoc18getTemplateNameLocEv.exit63

_ZNK5clang19TemplateArgumentLoc18getTemplateNameLocEv.exit63: ; preds = %_ZNK5clang19TemplateArgumentLoc23getTemplateQualifierLocEv.exit46.thread, %bb.t
  %.sroa.0.0.i60 = phi i32 [ %.sroa.0.0.copyload.i.i62, %bb.t ], [ 0, %_ZNK5clang19TemplateArgumentLoc23getTemplateQualifierLocEv.exit46.thread ] ; 2 uses
  %i.cg = and i64 %i.ca, 2147483647
  %.not.i64 = icmp eq i64 %i.cg, 7
  br i1 %.not.i64, label %bb.u, label %_ZNK5clang19TemplateArgumentLoc18getTemplateNameLocEv.exit38

bb.u:                                             ; preds = %_ZNK5clang19TemplateArgumentLoc18getTemplateNameLocEv.exit63
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.0.copyload.i.i.i.i.i.i.i.i66 = load i64, ptr %i.ch, align 8
  %i.ci = and i64 %.0.copyload.i.i.i.i.i.i.i.i66, -4
  %i.cj = inttoptr i64 %i.ci to ptr
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %.sroa.0.0.copyload.i.i67 = load i32, ptr %i.ck, align 8, !tbaa !61
  br label %_ZNK5clang19TemplateArgumentLoc18getTemplateNameLocEv.exit38

bb.v:                                             ; preds = %bb.a
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.0.copyload.i.i.i.i.i.i69 = load i64, ptr %i.cl, align 8 ; 3 uses
  %i.cm = and i64 %.0.copyload.i.i.i.i.i.i69, 3
  %i.cn = icmp eq i64 %i.cm, 3
  br i1 %i.cn, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.co = lshr i64 %.0.copyload.i.i.i.i.i.i69, 2
  %i.cp = trunc i64 %i.co to i32
  %i.cq = add i32 %i.cp, -1                       ; 2 uses
  br label %_ZNK5clang19TemplateArgumentLoc18getTemplateNameLocEv.exit38

bb.x:                                             ; preds = %bb.v
  %i.cr = and i64 %.0.copyload.i.i.i.i.i.i69, -4
  %i.cs = inttoptr i64 %i.cr to ptr
  %i.ct = tail call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cs) #25 ; 2 uses
  %.sroa.078.0.extract.trunc82 = trunc i64 %i.ct to i32
  %.sroa.20.0.extract.shift90 = lshr i64 %i.ct, 32
  %.sroa.20.0.extract.trunc91 = trunc nuw i64 %.sroa.20.0.extract.shift90 to i32
  br label %_ZNK5clang19TemplateArgumentLoc18getTemplateNameLocEv.exit38

bb.y:                                             ; preds = %bb.a
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.0.copyload.i.i.i.i.i.i72 = load i64, ptr %i.cu, align 8 ; 3 uses
  %i.cv = and i64 %.0.copyload.i.i.i.i.i.i72, 3
  %i.cw = icmp eq i64 %i.cv, 3
  br i1 %i.cw, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cx = lshr i64 %.0.copyload.i.i.i.i.i.i72, 2
  %i.cy = trunc i64 %i.cx to i32
  %i.cz = add i32 %i.cy, -1                       ; 2 uses
  br label %_ZNK5clang19TemplateArgumentLoc18getTemplateNameLocEv.exit38

bb.aa:                                            ; preds = %bb.y
  %i.da = and i64 %.0.copyload.i.i.i.i.i.i72, -4
  %i.db = inttoptr i64 %i.da to ptr
  %i.dc = tail call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.db) #25 ; 2 uses
  %.sroa.078.0.extract.trunc83 = trunc i64 %i.dc to i32
  %.sroa.20.0.extract.shift92 = lshr i64 %i.dc, 32
  %.sroa.20.0.extract.trunc93 = trunc nuw i64 %.sroa.20.0.extract.shift92 to i32
  br label %_ZNK5clang19TemplateArgumentLoc18getTemplateNameLocEv.exit38

bb.ab:                                            ; preds = %bb.a
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.0.copyload.i.i.i.i.i.i75 = load i64, ptr %i.dd, align 8
  %i.de = lshr i64 %.0.copyload.i.i.i.i.i.i75, 2
  %i.df = trunc i64 %i.de to i32
  %i.dg = add i32 %i.df, -1                       ; 2 uses
  br label %_ZNK5clang19TemplateArgumentLoc18getTemplateNameLocEv.exit38

bb.ac:                                            ; preds = %bb.a
  unreachable

_ZNK5clang19TemplateArgumentLoc18getTemplateNameLocEv.exit38: ; preds = %bb.a, %bb.u, %_ZNK5clang19TemplateArgumentLoc18getTemplateNameLocEv.exit63, %bb.o, %_ZNK5clang19TemplateArgumentLoc23getTemplateQualifierLocEv.exit.thread, %bb.i, %bb.j, %bb.ab, %bb.aa, %bb.z, %bb.x, %bb.w, %_ZNK5clang19TemplateArgumentLoc22getTemplateEllipsisLocEv.exit, %_ZNK5clang19TemplateArgumentLoc18getTemplateNameLocEv.exit, %bb.h, %bb.g, %bb.e, %bb.d, %bb.b
  %.sroa.078.0.a = phi i32 [ %.sroa.20.0.extract.trunc, %bb.b ], [ %i.m, %bb.d ], [ %.sroa.20.0.extract.trunc85, %bb.e ], [ %i.v, %bb.g ], [ %.sroa.20.0.extract.trunc87, %bb.h ], [ 0, %_ZNK5clang19TemplateArgumentLoc18getTemplateNameLocEv.exit63 ], [ %i.ah, %bb.j ], [ %.sroa.0.0.i32, %_ZNK5clang19TemplateArgumentLoc18getTemplateNameLocEv.exit ], [ 0, %bb.i ], [ %.sroa.0.0.i56, %_ZNK5clang19TemplateArgumentLoc22getTemplateEllipsisLocEv.exit ], [ 0, %_ZNK5clang19TemplateArgumentLoc23getTemplateQualifierLocEv.exit.thread ], [ %i.cq, %bb.w ], [ %.sroa.20.0.extract.trunc91, %bb.x ], [ %i.cz, %bb.z ], [ %.sroa.20.0.extract.trunc93, %bb.aa ], [ %i.dg, %bb.ab ], [ %.sroa.0.0.copyload.i.i37, %bb.o ], [ %.sroa.0.0.copyload.i.i67, %bb.u ], [ %i.c, %bb.a ]
  %.sroa.20.0 = phi i32 [ %.sroa.078.0.extract.trunc, %bb.b ], [ %i.m, %bb.d ], [ %.sroa.078.0.extract.trunc79, %bb.e ], [ %i.v, %bb.g ], [ %.sroa.078.0.extract.trunc80, %bb.h ], [ %.sroa.0.0.i60, %_ZNK5clang19TemplateArgumentLoc18getTemplateNameLocEv.exit63 ], [ %i.ag, %bb.j ], [ %i.au, %_ZNK5clang19TemplateArgumentLoc18getTemplateNameLocEv.exit ], [ 0, %bb.i ], [ %i.bt, %_ZNK5clang19TemplateArgumentLoc22getTemplateEllipsisLocEv.exit ], [ 0, %_ZNK5clang19TemplateArgumentLoc23getTemplateQualifierLocEv.exit.thread ], [ %i.cq, %bb.w ], [ %.sroa.078.0.extract.trunc82, %bb.x ], [ %i.cz, %bb.z ], [ %.sroa.078.0.extract.trunc83, %bb.aa ], [ %i.dg, %bb.ab ], [ %.sroa.0.0.copyload.i.i37, %bb.o ], [ %.sroa.0.0.i60, %bb.u ], [ %i.c, %bb.a ]
  %.sroa.20.0.insert.ext = zext i32 %.sroa.078.0.a to i64
  %.sroa.20.0.insert.shift = shl nuw i64 %.sroa.20.0.insert.ext, 32
  %.sroa.078.0.insert.ext = zext i32 %.sroa.20.0 to i64
  %.sroa.078.0.insert.insert = or disjoint i64 %.sroa.20.0.insert.shift, %.sroa.078.0.insert.ext
  ret i64 %.sroa.078.0.insert.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #9

declare i32 @_ZNK5clang22NestedNameSpecifierLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN5clanglsERKNS_19StreamingDiagnosticERKNS_16TemplateArgumentE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %"class.clang::TemplateName", align 8 ; 4 uses
  %3 = alloca %"class.clang::TemplateName", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.llvm::SmallString.463", align 8 ; 9 uses
  %5 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.llvm::APSInt", align 8      ; 7 uses
  %8 = alloca %"class.llvm::SmallString", align 8 ; 8 uses
  %9 = alloca %"class.llvm::raw_svector_ostream", align 8 ; 11 uses
  %10 = alloca %"class.clang::LangOptions", align 8 ; 7 uses
  %11 = alloca %"struct.clang::PrintingPolicy", align 8 ; 5 uses
  %12 = alloca %"class.llvm::SmallString", align 8 ; 8 uses
  %13 = alloca %"class.llvm::raw_svector_ostream", align 8 ; 11 uses
  %14 = alloca %"class.clang::LangOptions", align 8 ; 7 uses
  %15 = alloca %"struct.clang::PrintingPolicy", align 8 ; 5 uses
  %i.b = load i64, ptr %1, align 8                ; 3 uses
  %i.c = trunc i64 %i.b to i32
  %i.d = and i32 %i.c, 2147483647
  switch i32 %i.d, label %bb.v [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.o
    i32 6, label %bb.q
    i32 7, label %bb.r
    i32 8, label %bb.s
    i32 9, label %bb.t
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !137    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i, label %_ZN5clanglsERKNS_19StreamingDiagnosticEPKc.exit.i

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !141
  %i.h = tail call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.g) ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !137
  br label %_ZN5clanglsERKNS_19StreamingDiagnosticEPKc.exit.i

_ZN5clanglsERKNS_19StreamingDiagnosticEPKc.exit.i: ; preds = %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i, %bb.b
  %i.i = phi ptr [ %i.h, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i ], [ %i.e, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.k = load i8, ptr %i.i, align 8, !tbaa !142
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.l
  store i8 1, ptr %i.m, align 1, !tbaa !8
  %i.n = load ptr, ptr %0, align 8, !tbaa !137    ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i8, ptr %i.n, align 8, !tbaa !142   ; 2 uses
  %i.q = add i8 %i.p, 1
  store i8 %i.q, ptr %i.n, align 8, !tbaa !142
  %i.r = zext i8 %i.p to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.r
  store i64 ptrtoint (ptr @.str.19 to i64), ptr %i.s, align 8, !tbaa !125
  br label %_ZL15DiagTemplateArgIN5clang19StreamingDiagnosticEERKT_S4_RKNS0_16TemplateArgumentE.exit

bb.c:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !8
  %i.v = load ptr, ptr %0, align 8, !tbaa !137    ; 2 uses
  %.not.i.i27.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i27.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i28.i, label %_ZN5clanglsERKNS_19StreamingDiagnosticENS_8QualTypeE.exit.i

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i28.i: ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !141
  %i.y = tail call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.x) ; 2 uses
  store ptr %i.y, ptr %0, align 8, !tbaa !137
  br label %_ZN5clanglsERKNS_19StreamingDiagnosticENS_8QualTypeE.exit.i

_ZN5clanglsERKNS_19StreamingDiagnosticENS_8QualTypeE.exit.i: ; preds = %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i28.i, %bb.c
  %i.z = phi ptr [ %i.y, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i28.i ], [ %i.v, %bb.c ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.ab = load i8, ptr %i.z, align 8, !tbaa !142
  %i.ac = zext i8 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ac
  store i8 8, ptr %i.ad, align 1, !tbaa !8
  %i.ae = load ptr, ptr %0, align 8, !tbaa !137   ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load i8, ptr %i.ae, align 8, !tbaa !142 ; 2 uses
  %i.ah = add i8 %i.ag, 1
  store i8 %i.ah, ptr %i.ae, align 8, !tbaa !142
  %i.ai = zext i8 %i.ag to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ai
  store i64 %i.u, ptr %i.aj, align 8, !tbaa !125
  br label %_ZL15DiagTemplateArgIN5clang19StreamingDiagnosticEERKT_S4_RKNS0_16TemplateArgumentE.exit

bb.d:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !8
  %i.am = load ptr, ptr %0, align 8, !tbaa !137   ; 2 uses
  %.not.i.i29.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i29.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i30.i, label %_ZN5clanglsERKNS_19StreamingDiagnosticEPKNS_9NamedDeclE.exit.i

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i30.i: ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !141
  %i.ap = tail call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.ao) ; 2 uses
  store ptr %i.ap, ptr %0, align 8, !tbaa !137
  br label %_ZN5clanglsERKNS_19StreamingDiagnosticEPKNS_9NamedDeclE.exit.i

_ZN5clanglsERKNS_19StreamingDiagnosticEPKNS_9NamedDeclE.exit.i: ; preds = %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i30.i, %bb.d
  %i.aq = phi ptr [ %i.ap, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i30.i ], [ %i.am, %bb.d ] ; 2 uses
  %i.ar = ptrtoint ptr %i.al to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %i.at = load i8, ptr %i.aq, align 8, !tbaa !142
  %i.au = zext i8 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.au
  store i8 10, ptr %i.av, align 1, !tbaa !8
  %i.aw = load ptr, ptr %0, align 8, !tbaa !137   ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load i8, ptr %i.aw, align 8, !tbaa !142 ; 2 uses
  %i.az = add i8 %i.ay, 1
  store i8 %i.az, ptr %i.aw, align 8, !tbaa !142
  %i.ba = zext i8 %i.ay to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.ba
  store i64 %i.ar, ptr %i.bb, align 8, !tbaa !125
  br label %_ZL15DiagTemplateArgIN5clang19StreamingDiagnosticEERKT_S4_RKNS0_16TemplateArgumentE.exit

bb.e:                                             ; preds = %bb.a
  %i.bc = load ptr, ptr %0, align 8, !tbaa !137   ; 2 uses
  %.not.i.i31.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i31.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i32.i, label %_ZN5clanglsERKNS_19StreamingDiagnosticEPKc.exit33.i

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i32.i: ; preds = %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !141
  %i.bf = tail call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.be) ; 2 uses
  store ptr %i.bf, ptr %0, align 8, !tbaa !137
  br label %_ZN5clanglsERKNS_19StreamingDiagnosticEPKc.exit33.i

_ZN5clanglsERKNS_19StreamingDiagnosticEPKc.exit33.i: ; preds = %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i32.i, %bb.e
  %i.bg = phi ptr [ %i.bf, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i32.i ], [ %i.bc, %bb.e ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  %i.bi = load i8, ptr %i.bg, align 8, !tbaa !142
  %i.bj = zext i8 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bj
  store i8 1, ptr %i.bk, align 1, !tbaa !8
  %i.bl = load ptr, ptr %0, align 8, !tbaa !137   ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load i8, ptr %i.bl, align 8, !tbaa !142 ; 2 uses
  %i.bo = add i8 %i.bn, 1
  store i8 %i.bo, ptr %i.bl, align 8, !tbaa !142
  %i.bp = zext i8 %i.bn to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bp
  store i64 ptrtoint (ptr @.str.2 to i64), ptr %i.bq, align 8, !tbaa !125
  br label %_ZL15DiagTemplateArgIN5clang19StreamingDiagnosticEERKT_S4_RKNS0_16TemplateArgumentE.exit

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.br = lshr i64 %i.b, 32                       ; 2 uses
  %i.bs = trunc nuw i64 %i.br to i32
  %i.bt = and i32 %i.bs, 2147483647               ; 3 uses
  %i.bu = icmp samesign ult i32 %i.bt, 65
  br i1 %i.bu, label %_ZN4llvm5APIntD2Ev.exit.i.i, label %_ZN4llvm5APIntD2Ev.exit1.i.i

_ZN4llvm5APIntD2Ev.exit.i.i:                      ; preds = %bb.f
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %_ZNK5clang16TemplateArgument13getAsIntegralEv.exit.i

_ZN4llvm5APIntD2Ev.exit1.i.i:                     ; preds = %bb.f
  %i.bw = and i64 %i.br, 2147483647
  %i.bx = add nuw nsw i64 %i.bw, 63
  %i.by = lshr i64 %i.bx, 6
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !8, !noalias !154
  call void @_ZN4llvm5APIntC1EjNS_8ArrayRefImEE(ptr noundef nonnull align 8 dereferenceable(12) %5, i32 noundef %i.bt, ptr %i.ca, i64 %i.by) #23, !noalias !154
  %i.cb = load i64, ptr %1, align 8, !noalias !154
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !9, !noalias !154
  br label %_ZNK5clang16TemplateArgument13getAsIntegralEv.exit.i

_ZNK5clang16TemplateArgument13getAsIntegralEv.exit.i: ; preds = %_ZN4llvm5APIntD2Ev.exit1.i.i, %_ZN4llvm5APIntD2Ev.exit.i.i
  %.sink4.i.i = phi i32 [ %i.bt, %_ZN4llvm5APIntD2Ev.exit.i.i ], [ %i.cd, %_ZN4llvm5APIntD2Ev.exit1.i.i ]
  %.sink3.in.i.i = phi ptr [ %i.bv, %_ZN4llvm5APIntD2Ev.exit.i.i ], [ %5, %_ZN4llvm5APIntD2Ev.exit1.i.i ]
  %.sink.in.in.i.i = phi i64 [ %i.b, %_ZN4llvm5APIntD2Ev.exit.i.i ], [ %i.cb, %_ZN4llvm5APIntD2Ev.exit1.i.i ] ; 2 uses
  %.sink3.i.i = load i64, ptr %.sink3.in.i.i, align 8, !noalias !154
  %.sink.in.i.i = lshr i64 %.sink.in.in.i.i, 63
  %.sink.i.i = trunc nuw nsw i64 %.sink.in.i.i to i8
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i32 %.sink4.i.i, ptr %i.ce, align 8, !tbaa !9, !alias.scope !154
end_hunk_0
