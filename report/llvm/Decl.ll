Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Decl?download=true
inline.NumInlined: 7977
inline.NumDeleted: 4496
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNK5clang12FunctionDecl24isImplicitlyInstantiableEv:bb.a
bb.a:
  %1 = alloca %"class.clang::Redeclarable<clang::FunctionDecl>::redecl_iterator", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 128
  %.not18 = icmp eq i32 %i.c, 0
  br i1 %.not18, label %bb.b, label %_ZNK5clang12FunctionDecl45getTemplateSpecializationKindForInstantiationEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.d, align 8 ; 2 uses
  %i.e = and i64 %.sroa.0.0.copyload.i.i.i.i, 6   ; 2 uses
  %i.f = icmp ne i64 %i.e, 4
  %i.g = and i64 %.sroa.0.0.copyload.i.i.i.i, -7  ; 2 uses
  %i.h = inttoptr i64 %i.g to ptr                 ; 4 uses
  %.not.not34.i = icmp eq i64 %i.g, 0             ; 2 uses
  %.not.not.i = or i1 %i.f, %.not.not34.i
  br i1 %.not.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.i, align 8
  %i.j = and i64 %.0.copyload.i.i.i.i.i.i, 4
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %_ZNK5clang34FunctionTemplateSpecializationInfo27getMemberSpecializationInfoEv.exit.thread.i, label %_ZNK5clang34FunctionTemplateSpecializationInfo27getMemberSpecializationInfoEv.exit.i

_ZNK5clang34FunctionTemplateSpecializationInfo27getMemberSpecializationInfoEv.exit.i: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !829  ; 2 uses
  %.not17.i = icmp eq ptr %i.l, null
  br i1 %.not17.i, label %_ZNK5clang34FunctionTemplateSpecializationInfo27getMemberSpecializationInfoEv.exit.thread.i, label %_ZNK5clang12FunctionDecl45getTemplateSpecializationKindForInstantiationEv.exit

_ZNK5clang34FunctionTemplateSpecializationInfo27getMemberSpecializationInfoEv.exit.thread.i: ; preds = %_ZNK5clang34FunctionTemplateSpecializationInfo27getMemberSpecializationInfoEv.exit.i, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  br label %_ZNK5clang12FunctionDecl45getTemplateSpecializationKindForInstantiationEv.exit

bb.d:                                             ; preds = %bb.b
  %i.n = icmp ne i64 %i.e, 2
  %.not18.not.i = or i1 %i.n, %.not.not34.i
  br i1 %.not18.not.i, label %_ZNK5clang12FunctionDecl45getTemplateSpecializationKindForInstantiationEv.exit.thread, label %_ZNK5clang12FunctionDecl45getTemplateSpecializationKindForInstantiationEv.exit

_ZNK5clang12FunctionDecl45getTemplateSpecializationKindForInstantiationEv.exit: ; preds = %bb.d, %_ZNK5clang34FunctionTemplateSpecializationInfo27getMemberSpecializationInfoEv.exit.i, %_ZNK5clang34FunctionTemplateSpecializationInfo27getMemberSpecializationInfoEv.exit.thread.i
  %.3.i.in.in.in.in.in = phi ptr [ %i.l, %_ZNK5clang34FunctionTemplateSpecializationInfo27getMemberSpecializationInfoEv.exit.i ], [ %i.m, %_ZNK5clang34FunctionTemplateSpecializationInfo27getMemberSpecializationInfoEv.exit.thread.i ], [ %i.h, %bb.d ]
  %.3.i.in.in.in.in = load i64, ptr %.3.i.in.in.in.in.in, align 8
  %.3.i.in.in.in = trunc i64 %.3.i.in.in.in.in to i32
  %.3.i.in.in = lshr i32 %.3.i.in.in.in, 1
  %.3.i.in = and i32 %.3.i.in.in, 3
  switch i32 %.3.i.in, label %default.unreachable [
    i32 0, label %bb.e
    i32 3, label %_ZNK5clang12FunctionDecl45getTemplateSpecializationKindForInstantiationEv.exit.thread
    i32 1, label %_ZNK5clang12FunctionDecl45getTemplateSpecializationKindForInstantiationEv.exit.thread
    i32 2, label %bb.f
  ]

bb.e:                                             ; preds = %_ZNK5clang12FunctionDecl45getTemplateSpecializationKindForInstantiationEv.exit
  br label %_ZNK5clang12FunctionDecl45getTemplateSpecializationKindForInstantiationEv.exit.thread

default.unreachable:                              ; preds = %_ZNK5clang12FunctionDecl45getTemplateSpecializationKindForInstantiationEv.exit
  unreachable

bb.f:                                             ; preds = %_ZNK5clang12FunctionDecl45getTemplateSpecializationKindForInstantiationEv.exit
  %i.o = tail call noundef ptr @_ZNK5clang12FunctionDecl31getTemplateInstantiationPatternEb(ptr noundef nonnull align 8 dereferenceable(168) %0, i1 noundef zeroext true) ; 4 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %_ZNK5clang12FunctionDecl45getTemplateSpecializationKindForInstantiationEv.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  store ptr %i.o, ptr %1, align 8, !tbaa !710
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.o, ptr %.sroa.411.0..sroa_idx.i, align 8, !tbaa !710
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !471
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge.i, %bb.g
  %i.p = phi ptr [ %i.ac, %.critedge.i ], [ %i.o, %bb.g ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.r = load i32, ptr %i.q, align 8              ; 4 uses
  %i.s = and i32 %i.r, 134217728
  %.not.i.i6 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i6, label %bb.h, label %_ZNK5clang12FunctionDecl28doesThisDeclarationHaveABodyEv.exit.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 128 ; 2 uses
  %i.u = load i8, ptr %i.t, align 8, !tbaa !466
  %i.v = trunc i8 %i.u to i1
  %i.w = load ptr, ptr %i.t, align 8
  %i.x = icmp ne ptr %i.w, null
  %i.y = select i1 %i.v, i1 true, i1 %i.x
  %i.z = and i32 %i.r, 1073741824
  %i.aa = icmp ne i32 %i.z, 0
  %or.cond.i = or i1 %i.aa, %i.y
  br i1 %or.cond.i, label %bb.i, label %.critedge.i

_ZNK5clang12FunctionDecl28doesThisDeclarationHaveABodyEv.exit.i: ; preds = %.lr.ph.i
  %.old.i = and i32 %i.r, 1073741824
  %.old14.not.i = icmp eq i32 %.old.i, 0
  br i1 %.old14.not.i, label %.critedge.i, label %bb.i

.critedge.i:                                      ; preds = %_ZNK5clang12FunctionDecl28doesThisDeclarationHaveABodyEv.exit.i, %bb.h
  %i.ab = call noundef nonnull align 8 dereferenceable(17) ptr @_ZN5clang12RedeclarableINS_12FunctionDeclEE15redecl_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(17) %1) ; 0 uses
  %i.ac = load ptr, ptr %1, align 8, !tbaa !712   ; 2 uses
  %.not.not.i7 = icmp eq ptr %i.ac, null
  br i1 %.not.not.i7, label %.thread14, label %.lr.ph.i

.thread14:                                        ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br label %_ZNK5clang12FunctionDecl45getTemplateSpecializationKindForInstantiationEv.exit.thread

bb.i:                                             ; preds = %_ZNK5clang12FunctionDecl28doesThisDeclarationHaveABodyEv.exit.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  %i.ad = and i32 %i.r, 65536
  %i.ae = icmp ne i32 %i.ad, 0
  br label %_ZNK5clang12FunctionDecl45getTemplateSpecializationKindForInstantiationEv.exit.thread

_ZNK5clang12FunctionDecl45getTemplateSpecializationKindForInstantiationEv.exit.thread: ; preds = %bb.d, %bb.f, %bb.i, %.thread14, %_ZNK5clang12FunctionDecl45getTemplateSpecializationKindForInstantiationEv.exit, %_ZNK5clang12FunctionDecl45getTemplateSpecializationKindForInstantiationEv.exit, %bb.a, %bb.e
  %.1 = phi i1 [ true, %bb.e ], [ true, %.thread14 ], [ false, %bb.a ], [ true, %bb.f ], [ false, %_ZNK5clang12FunctionDecl45getTemplateSpecializationKindForInstantiationEv.exit ], [ false, %_ZNK5clang12FunctionDecl45getTemplateSpecializationKindForInstantiationEv.exit ], [ %i.ae, %bb.i ], [ false, %bb.d ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef range(i32 0, 5) i32 @_ZNK5clang12FunctionDecl45getTemplateSpecializationKindForInstantiationEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.a, align 8 ; 2 uses
  %i.b = and i64 %.sroa.0.0.copyload.i.i.i, 6     ; 3 uses
  %i.c = icmp ne i64 %i.b, 4
  %i.d = and i64 %.sroa.0.0.copyload.i.i.i, -7    ; 2 uses
  %i.e = inttoptr i64 %i.d to ptr                 ; 4 uses
  %.not.not34 = icmp eq i64 %i.d, 0               ; 2 uses
  %.not.not = or i1 %i.c, %.not.not34
  br i1 %.not.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.f, align 8
  %i.g = and i64 %.0.copyload.i.i.i.i.i, 4
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %_ZNK5clang34FunctionTemplateSpecializationInfo27getMemberSpecializationInfoEv.exit.thread, label %_ZNK5clang34FunctionTemplateSpecializationInfo27getMemberSpecializationInfoEv.exit

_ZNK5clang34FunctionTemplateSpecializationInfo27getMemberSpecializationInfoEv.exit: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !829  ; 2 uses
  %.not17 = icmp eq ptr %i.i, null
  br i1 %.not17, label %_ZNK5clang34FunctionTemplateSpecializationInfo27getMemberSpecializationInfoEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK5clang34FunctionTemplateSpecializationInfo27getMemberSpecializationInfoEv.exit
  %.0.copyload.i.i.i.i = load i64, ptr %i.i, align 8
  %i.j = trunc i64 %.0.copyload.i.i.i.i to i32
  %i.k = lshr i32 %i.j, 1
  %i.l = and i32 %i.k, 3
  %i.m = add nuw nsw i32 %i.l, 1
  br label %.thread30

_ZNK5clang34FunctionTemplateSpecializationInfo27getMemberSpecializationInfoEv.exit.thread: ; preds = %bb.b, %_ZNK5clang34FunctionTemplateSpecializationInfo27getMemberSpecializationInfoEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.0.copyload.i.i.i.i19 = load i64, ptr %i.n, align 8
  %i.o = trunc i64 %.0.copyload.i.i.i.i19 to i32
  %i.p = lshr i32 %i.o, 1
  %i.q = and i32 %i.p, 3
  %i.r = add nuw nsw i32 %i.q, 1
  br label %.thread30

bb.d:                                             ; preds = %bb.a
  %i.s = icmp ne i64 %i.b, 2
  %.not18.not = or i1 %i.s, %.not.not34
  br i1 %.not18.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.0.copyload.i.i.i.i22 = load i64, ptr %i.e, align 8
  %i.t = trunc i64 %.0.copyload.i.i.i.i22 to i32
  %i.u = lshr i32 %i.t, 1
  %i.v = and i32 %i.u, 3
  %i.w = add nuw nsw i32 %i.v, 1
  br label %.thread30

bb.f:                                             ; preds = %bb.d
  %i.x = icmp eq i64 %i.b, 6
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = and i32 %i.z, 25165824
  %.not.i24 = icmp eq i32 %i.aa, 0
  br i1 %.not.i24, label %.thread30, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  br label %.thread30

.thread30:                                        ; preds = %_ZNK5clang34FunctionTemplateSpecializationInfo27getMemberSpecializationInfoEv.exit.thread, %bb.c, %bb.e, %bb.g, %bb.h
  %.3 = phi i32 [ 2, %bb.g ], [ 0, %bb.h ], [ %i.w, %bb.e ], [ %i.m, %bb.c ], [ %i.r, %_ZNK5clang34FunctionTemplateSpecializationInfo27getMemberSpecializationInfoEv.exit.thread ]
  ret i32 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK5clang12FunctionDecl23isTemplateInstantiationEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.a, align 8 ; 2 uses
  %i.b = and i64 %.sroa.0.0.copyload.i.i.i.i, 6   ; 3 uses
  %i.c = icmp ne i64 %i.b, 4
  %i.d = and i64 %.sroa.0.0.copyload.i.i.i.i, -7  ; 2 uses
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  %.not.not19.i = icmp eq i64 %i.d, 0             ; 2 uses
  %.not.not.i = or i1 %i.c, %.not.not19.i
  br i1 %.not.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.f, align 8
  %i.g = trunc i64 %.0.copyload.i.i.i.i.i to i32
  %i.h = lshr i32 %i.g, 1
  %i.i = and i32 %i.h, 3
  %i.j = add nuw nsw i32 %i.i, 1
  br label %_ZNK5clang12FunctionDecl29getTemplateSpecializationKindEv.exit

bb.c:                                             ; preds = %bb.a
  %i.k = icmp ne i64 %i.b, 2
  %.not11.not.i = or i1 %i.k, %.not.not19.i
  br i1 %.not11.not.i, label %1, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.0.copyload.i.i.i.i14.i = load i64, ptr %i.e, align 8
  %i.l = trunc i64 %.0.copyload.i.i.i.i14.i to i32
  %i.m = lshr i32 %i.l, 1
  %i.n = and i32 %i.m, 3
  %i.o = add nuw nsw i32 %i.n, 1
  br label %_ZNK5clang12FunctionDecl29getTemplateSpecializationKindEv.exit

1:                                                ; preds = %bb.c
  %2 = icmp eq i64 %i.b, 6
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 25165824
  %.not.i.i = icmp eq i32 %6, 0
  br i1 %.not.i.i, label %_ZNK5clang12FunctionDecl29getTemplateSpecializationKindEv.exit, label %7

7:                                                ; preds = %3, %1
  br label %_ZNK5clang12FunctionDecl29getTemplateSpecializationKindEv.exit

_ZNK5clang12FunctionDecl29getTemplateSpecializationKindEv.exit: ; preds = %bb.b, %bb.d, %3, %7
  %.2.i = phi i32 [ %i.j, %bb.b ], [ 0, %7 ], [ %i.o, %bb.d ], [ 2, %3 ]
  %i.p = and i32 %.2.i, -3
  %i.q = icmp ne i32 %i.p, 0
  ret i1 %i.q
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZNK5clang12FunctionDecl18getPrimaryTemplateEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.a, align 8 ; 2 uses
  %i.b = and i64 %.sroa.0.0.copyload.i.i.i, 6
  %i.c = icmp ne i64 %i.b, 4
  %i.d = and i64 %.sroa.0.0.copyload.i.i.i, -7    ; 2 uses
  %.not6 = icmp eq i64 %i.d, 0
  %.not.not = or i1 %i.c, %.not6
  br i1 %.not.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.0.copyload.i.i.i.i = load i64, ptr %i.f, align 8
  %i.g = and i64 %.0.copyload.i.i.i.i, -8
  %i.h = inttoptr i64 %i.g to ptr
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %spec.select = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ]
  ret ptr %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZNK5clang12FunctionDecl38getTemplateSpecializationArgsAsWrittenEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.a, align 8 ; 2 uses
  %i.b = and i64 %.sroa.0.0.copyload.i.i.i, 6     ; 2 uses
  %i.c = icmp ne i64 %i.b, 4
  %i.d = and i64 %.sroa.0.0.copyload.i.i.i, -7    ; 2 uses
  %i.e = inttoptr i64 %i.d to ptr
  %.not.not16 = icmp eq i64 %i.d, 0               ; 2 uses
  %.not.not = or i1 %i.c, %.not.not16
  br i1 %.not.not, label %bb.b, label %.sink.split

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ne i64 %i.b, 6
  %.not11.not = or i1 %i.f, %.not.not16
  br i1 %.not11.not, label %bb.c, label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.a
  %.sink18 = phi i64 [ 32, %bb.a ], [ 8, %bb.b ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sink18
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1132
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b
  %.2 = phi ptr [ null, %bb.b ], [ %i.h, %.sink.split ]
  ret ptr %.2
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang12FunctionDecl33setFunctionTemplateSpecializationERNS_10ASTContextEPNS_20FunctionTemplateDeclEPNS_20TemplateArgumentListEPvNS_26TemplateSpecializationKindEPKNS_24TemplateArgumentListInfoENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(23904) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, i32 %7) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.a, align 8 ; 2 uses
  %i.b = and i64 %.sroa.0.0.copyload.i.i.i, 6
  %i.c = icmp eq i64 %i.b, 2
  %i.d = and i64 %.sroa.0.0.copyload.i.i.i, -7
  %i.e = inttoptr i64 %i.d to ptr
  %.0.i.i = select i1 %i.c, ptr %i.e, ptr null
  %i.f = tail call noundef ptr @_ZN5clang34FunctionTemplateSpecializationInfo6CreateERNS_10ASTContextEPNS_12FunctionDeclEPNS_20FunctionTemplateDeclENS_26TemplateSpecializationKindEPNS_20TemplateArgumentListEPKNS_24TemplateArgumentListInfoENS_14SourceLocationEPNS_24MemberSpecializationInfoE(ptr noundef nonnull align 8 dereferenceable(23904) %1, ptr noundef nonnull %0, ptr noundef %2, i32 noundef %5, ptr noundef %3, ptr noundef %6, i32 %7, ptr noundef %.0.i.i) #29 ; 2 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = or i64 %i.g, 4
  store i64 %i.h, ptr %i.a, align 8
  tail call void @_ZN5clang20FunctionTemplateDecl17addSpecializationEPNS_34FunctionTemplateSpecializationInfoEPv(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef %i.f, ptr noundef %4) #29
  ret void
}

declare noundef ptr @_ZN5clang34FunctionTemplateSpecializationInfo6CreateERNS_10ASTContextEPNS_12FunctionDeclEPNS_20FunctionTemplateDeclENS_26TemplateSpecializationKindEPNS_20TemplateArgumentListEPKNS_24TemplateArgumentListInfoENS_14SourceLocationEPNS_24MemberSpecializationInfoE(ptr noundef nonnull align 8 dereferenceable(23904), ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32, ptr noundef) local_unnamed_addr #4

declare void @_ZN5clang20FunctionTemplateDecl17addSpecializationEPNS_34FunctionTemplateSpecializationInfoEPv(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang12FunctionDecl34setDependentTemplateSpecializationERNS_10ASTContextERKNS_17UnresolvedSetImplEPKNS_24TemplateArgumentListInfoE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(168) initializes((152, 160)) %0, ptr noundef nonnull align 8 dereferenceable(23904) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %3) local_unnamed_addr #2 align 2 {
bb.a:
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef ptr @_ZN5clang27ASTTemplateArgumentListInfo6CreateERKNS_10ASTContextERKNS_24TemplateArgumentListInfoE(ptr noundef nonnull align 8 dereferenceable(23904) %1, ptr noundef nonnull align 8 dereferenceable(280) %3) #29
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !519
  %i.e = zext i32 %i.d to i64
  %i.f = shl nuw nsw i64 %i.e, 3
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 2632 ; 3 uses
  %i.h = add nuw nsw i64 %i.f, 16                 ; 3 uses
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !781  ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = add i64 %i.h, %i.j                       ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 2640
  %i.m = load i64, ptr %i.l, align 8, !tbaa !782
  %i.n = icmp ult i64 %i.k, %i.m
  br i1 %i.n, label %bb.d, label %bb.e, !prof !55

bb.d:                                             ; preds = %bb.c
  %i.o = inttoptr i64 %i.k to ptr
  store ptr %i.o, ptr %i.g, align 8, !tbaa !781
  br label %_ZN5clang43DependentFunctionTemplateSpecializationInfo6CreateERNS_10ASTContextERKNS_17UnresolvedSetImplEPKNS_24TemplateArgumentListInfoE.exit

bb.e:                                             ; preds = %bb.c
  %i.p = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef %i.h, i64 noundef %i.h, i8 3) ; 2 uses
  %.pre = ptrtoint ptr %i.p to i64
  br label %_ZN5clang43DependentFunctionTemplateSpecializationInfo6CreateERNS_10ASTContextERKNS_17UnresolvedSetImplEPKNS_24TemplateArgumentListInfoE.exit

_ZN5clang43DependentFunctionTemplateSpecializationInfo6CreateERNS_10ASTContextERKNS_17UnresolvedSetImplEPKNS_24TemplateArgumentListInfoE.exit: ; preds = %bb.d, %bb.e
  %.pre-phi = phi i64 [ %i.j, %bb.d ], [ %.pre, %bb.e ]
  %.0.i.i.i.i = phi ptr [ %i.i, %bb.d ], [ %i.p, %bb.e ]
  tail call void @_ZN5clang43DependentFunctionTemplateSpecializationInfoC1ERKNS_17UnresolvedSetImplEPKNS_27ASTTemplateArgumentListInfoE(ptr noundef nonnull align 8 dereferenceable(16) %.0.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %i.b) #29
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.r = or i64 %.pre-phi, 6
  store i64 %i.r, ptr %i.q, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang43DependentFunctionTemplateSpecializationInfo6CreateERNS_10ASTContextERKNS_17UnresolvedSetImplEPKNS_24TemplateArgumentListInfoE(ptr noundef nonnull align 8 dereferenceable(23904) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2) local_unnamed_addr #2 align 2 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef ptr @_ZN5clang27ASTTemplateArgumentListInfo6CreateERKNS_10ASTContextERKNS_24TemplateArgumentListInfoE(ptr noundef nonnull align 8 dereferenceable(23904) %0, ptr noundef nonnull align 8 dereferenceable(280) %2) #29
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !519
  %i.e = zext i32 %i.d to i64
  %i.f = shl nuw nsw i64 %i.e, 3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2632 ; 3 uses
  %i.h = add nuw nsw i64 %i.f, 16                 ; 3 uses
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !781  ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = add i64 %i.h, %i.j                       ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2640
  %i.m = load i64, ptr %i.l, align 8, !tbaa !782
  %i.n = icmp ult i64 %i.k, %i.m
  br i1 %i.n, label %bb.d, label %bb.e, !prof !55

bb.d:                                             ; preds = %bb.c
  %i.o = inttoptr i64 %i.k to ptr
  store ptr %i.o, ptr %i.g, align 8, !tbaa !781
  br label %_ZNK5clang10ASTContext8AllocateEmj.exit

bb.e:                                             ; preds = %bb.c
  %i.p = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef %i.h, i64 noundef %i.h, i8 3)
  br label %_ZNK5clang10ASTContext8AllocateEmj.exit

_ZNK5clang10ASTContext8AllocateEmj.exit:          ; preds = %bb.d, %bb.e
  %.0.i.i.i = phi ptr [ %i.i, %bb.d ], [ %i.p, %bb.e ] ; 2 uses
  tail call void @_ZN5clang43DependentFunctionTemplateSpecializationInfoC1ERKNS_17UnresolvedSetImplEPKNS_27ASTTemplateArgumentListInfoE(ptr noundef nonnull align 8 dereferenceable(16) %.0.i.i.i, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %i.b) #29
  ret ptr %.0.i.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK5clang12FunctionDecl30getDependentSpecializationInfoEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.a, align 8 ; 2 uses
  %i.b = and i64 %.sroa.0.0.copyload.i.i.i, 6
  %i.c = icmp eq i64 %i.b, 6
  %i.d = and i64 %.sroa.0.0.copyload.i.i.i, -7
  %i.e = inttoptr i64 %i.d to ptr
  %.0.i.i.i = select i1 %i.c, ptr %i.e, ptr null
  ret ptr %.0.i.i.i
}

declare noundef ptr @_ZN5clang27ASTTemplateArgumentListInfo6CreateERKNS_10ASTContextERKNS_24TemplateArgumentListInfoE(ptr noundef nonnull align 8 dereferenceable(23904), ptr noundef nonnull align 8 dereferenceable(280)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local void @_ZN5clang43DependentFunctionTemplateSpecializationInfoC2ERKNS_17UnresolvedSetImplEPKNS_27ASTTemplateArgumentListInfoE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 4), (8, 16)) %0, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %1, ptr noundef %2) unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !519  ; 3 uses
  store i32 %i.b, ptr %0, align 8, !tbaa !1135
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.c, align 8, !tbaa !1136
  %i.d = load ptr, ptr %1, align 8, !tbaa !518    ; 2 uses
  %i.e = zext i32 %i.b to i64
  %.idx = shl nuw nsw i64 %i.e, 3
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %.not6.i = icmp eq i32 %i.b, 0
  br i1 %.not6.i, label %"_ZSt9transformIN5clang21UnresolvedSetIteratorEPPNS0_20FunctionTemplateDeclEZNS0_43DependentFunctionTemplateSpecializationInfoC1ERKNS0_17UnresolvedSetImplEPKNS0_27ASTTemplateArgumentListInfoEE3$_0ET0_T_SE_SD_T1_.exit", label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_0
