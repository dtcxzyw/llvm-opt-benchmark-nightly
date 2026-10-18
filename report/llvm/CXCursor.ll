Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CXCursor?download=true
inline.NumInlined: 1706
inline.NumDeleted: 1102
begin_hunk_0_@_ZN5clang8cxcursoreqE8CXCursorS1_:bb.a
  %i.c = icmp eq i32 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i128, ptr %i.d, align 1
  %i.g = load i128, ptr %i.e, align 1
  %i.h = xor i128 %i.f, %i.g
  %i.i = getelementptr i8, ptr %i.d, i64 16
  %i.j = getelementptr i8, ptr %i.e, i64 16
  %i.k = load i64, ptr %i.i, align 1
  %i.l = load i64, ptr %i.j, align 1
  %i.m = zext i64 %i.k to i128
  %i.n = zext i64 %i.l to i128
  %i.o = xor i128 %i.m, %i.n
  %i.p = or i128 %i.h, %i.o
  %i.q = icmp ne i128 %i.p, 0
  %i.r = zext i1 %i.q to i32
  %i.s = icmp eq i32 %i.r, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.t = phi i1 [ false, %bb.a ], [ %i.s, %bb.b ]
  ret i1 %i.t
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN5clang8cxcursor18isFirstInDeclGroupE8CXCursor(ptr nofree noundef readonly byval(%struct.CXCursor) align 8 captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.c = icmp ne ptr %i.b, null
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i32 @clang_Cursor_isNull(ptr nofree noundef readonly byval(%struct.CXCursor) align 8 captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %1 = alloca %struct.CXCursor, align 8           ; 2 uses
  call void @clang_getNullCursor(ptr dead_on_unwind nonnull writable sret(%struct.CXCursor) align 8 %1) #18
  %i.a = call i32 @clang_equalCursors(ptr noundef nonnull byval(%struct.CXCursor) align 8 %0, ptr noundef nonnull byval(%struct.CXCursor) align 8 %1) #18
  ret i32 %i.a
}

declare i32 @clang_equalCursors(ptr noundef byval(%struct.CXCursor) align 8, ptr noundef byval(%struct.CXCursor) align 8) local_unnamed_addr #4

declare void @clang_getNullCursor(ptr dead_on_unwind writable sret(%struct.CXCursor) align 8) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @clang_Cursor_getTranslationUnit(ptr nofree noundef readonly byval(%struct.CXCursor) align 8 captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %.sroa.1.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.1.0.copyload = load ptr, ptr %.sroa.1.0..sroa_idx, align 8, !tbaa !53
  ret ptr %.sroa.1.0.copyload
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i32 @clang_Cursor_getNumArguments(ptr nofree noundef readonly byval(%struct.CXCursor) align 8 captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !13     ; 3 uses
  %i.b = tail call i32 @clang_isDeclaration(i32 noundef %i.a) #18
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.thread51, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.1.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.1.0.copyload = load ptr, ptr %.sroa.1.0..sroa_idx, align 8 ; 4 uses
  %.not.i.i = icmp eq ptr %.sroa.1.0.copyload, null
  br i1 %.not.i.i, label %.thread51, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.1.0.copyload, i64 28
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 127                        ; 2 uses
  %i.f = icmp eq i32 %i.e, 20
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.1.0.copyload, i64 104
  %i.h = load i32, ptr %i.g, align 8, !tbaa !81
  br label %.thread55

bb.e:                                             ; preds = %bb.c
  %i.i = add nsw i32 %i.e, -35
  %i.j = icmp ult i32 %i.i, 6
  br i1 %i.j, label %_ZN4llvm16dyn_cast_or_nullIN5clang12FunctionDeclEKNS1_4DeclEEEDaPT0_.exit, label %.thread51

_ZN4llvm16dyn_cast_or_nullIN5clang12FunctionDeclEKNS1_4DeclEEEDaPT0_.exit: ; preds = %bb.e
  %i.k = tail call noundef i32 @_ZNK5clang12FunctionDecl12getNumParamsEv(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.1.0.copyload) #18
  br label %.thread55

.thread51:                                        ; preds = %bb.b, %bb.e, %bb.a
  %i.l = tail call i32 @clang_isExpression(i32 noundef %i.a) #18
  %.not34 = icmp eq i32 %i.l, 0
  br i1 %.not34, label %.thread55, label %_ZN5clang8cxcursor13getCursorExprE8CXCursor.exit

_ZN5clang8cxcursor13getCursorExprE8CXCursor.exit: ; preds = %.thread51
  %.sroa.242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.242.0.copyload = load ptr, ptr %.sroa.242.0..sroa_idx, align 8, !nonnull !55, !noundef !55 ; 3 uses
  %i.m = add i32 %i.a, -43
  %or.cond5.i.i = icmp ult i32 %i.m, -3
  tail call void @llvm.assume(i1 %or.cond5.i.i)
  %i.n = load i16, ptr %.sroa.242.0.copyload, align 8
  %i.o = and i16 %i.n, 511                        ; 2 uses
  %i.p = add nsw i16 %i.o, -96
  %.not35 = icmp ult i16 %i.p, -5
  br i1 %.not35, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN5clang8cxcursor13getCursorExprE8CXCursor.exit
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.242.0.copyload, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !88
  br label %.thread55

bb.g:                                             ; preds = %_ZN5clang8cxcursor13getCursorExprE8CXCursor.exit
  %i.s = add nsw i16 %i.o, -119
  %.not66 = icmp ult i16 %i.s, -2
  br i1 %.not66, label %.thread55, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.242.0.copyload, i64 32
  %i.u = load i32, ptr %i.t, align 8, !tbaa !89
  br label %.thread55

.thread55:                                        ; preds = %bb.h, %bb.f, %_ZN4llvm16dyn_cast_or_nullIN5clang12FunctionDeclEKNS1_4DeclEEEDaPT0_.exit, %bb.d, %.thread51, %bb.g
  %.7 = phi i32 [ -1, %.thread51 ], [ %i.h, %bb.d ], [ -1, %bb.g ], [ %i.k, %_ZN4llvm16dyn_cast_or_nullIN5clang12FunctionDeclEKNS1_4DeclEEEDaPT0_.exit ], [ %i.u, %bb.h ], [ %i.r, %bb.f ]
  ret i32 %.7
}

declare i32 @clang_isDeclaration(i32 noundef) local_unnamed_addr #4

declare i32 @clang_isExpression(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @clang_Cursor_getArgument(ptr dead_on_unwind noalias writable sret(%struct.CXCursor) align 8 %0, ptr nofree noundef readonly byval(%struct.CXCursor) align 8 captures(none) %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !13     ; 3 uses
  %i.b = tail call i32 @clang_isDeclaration(i32 noundef %i.a) #18
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.thread89, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.182.0.copyload = load ptr, ptr %.sroa.182.0..sroa_idx, align 8 ; 7 uses
  %.not.i.i = icmp eq ptr %.sroa.182.0.copyload, null
  br i1 %.not.i.i, label %.thread89, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.182.0.copyload, i64 28
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 127                        ; 2 uses
  %i.f = icmp eq i32 %i.e, 20
  br i1 %i.f, label %_ZN4llvm16dyn_cast_or_nullIN5clang14ObjCMethodDeclEKNS1_4DeclEEEDaPT0_.exit, label %bb.e

_ZN4llvm16dyn_cast_or_nullIN5clang14ObjCMethodDeclEKNS1_4DeclEEEDaPT0_.exit: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.182.0.copyload, i64 104
  %i.h = load i32, ptr %i.g, align 8, !tbaa !81
  %i.i = icmp ult i32 %2, %i.h
  br i1 %i.i, label %bb.d, label %.thread89

bb.d:                                             ; preds = %_ZN4llvm16dyn_cast_or_nullIN5clang14ObjCMethodDeclEKNS1_4DeclEEEDaPT0_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.182.0.copyload, i64 96
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !80
  %i.l = zext i32 %2 to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !470
  %.sroa.178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.178.0.copyload = load ptr, ptr %.sroa.178.0..sroa_idx, align 8, !tbaa !53
  tail call void @_ZN5clang8cxcursor12MakeCXCursorEPKNS_4DeclEP21CXTranslationUnitImplNS_11SourceRangeEb(ptr dead_on_unwind writable sret(%struct.CXCursor) align 8 %0, ptr noundef %i.n, ptr noundef %.sroa.178.0.copyload, i64 0, i1 noundef zeroext true)
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.o = add nsw i32 %i.e, -35
  %i.p = icmp ult i32 %i.o, 6
  br i1 %i.p, label %_ZN4llvm16dyn_cast_or_nullIN5clang12FunctionDeclEKNS1_4DeclEEEDaPT0_.exit, label %.thread89

_ZN4llvm16dyn_cast_or_nullIN5clang12FunctionDeclEKNS1_4DeclEEEDaPT0_.exit: ; preds = %bb.e
  %i.q = tail call noundef i32 @_ZNK5clang12FunctionDecl12getNumParamsEv(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.182.0.copyload) #18
  %i.r = icmp ugt i32 %i.q, %2
  br i1 %i.r, label %.critedge, label %.thread89

.critedge:                                        ; preds = %_ZN4llvm16dyn_cast_or_nullIN5clang12FunctionDeclEKNS1_4DeclEEEDaPT0_.exit
  %i.s = zext i32 %2 to i64
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.182.0.copyload, i64 120
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !487
  %i.v = tail call noundef i32 @_ZNK5clang12FunctionDecl12getNumParamsEv(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.182.0.copyload) #18 ; 0 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !470
  %.sroa.173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.173.0.copyload = load ptr, ptr %.sroa.173.0..sroa_idx, align 8, !tbaa !53
  tail call void @_ZN5clang8cxcursor12MakeCXCursorEPKNS_4DeclEP21CXTranslationUnitImplNS_11SourceRangeEb(ptr dead_on_unwind writable sret(%struct.CXCursor) align 8 %0, ptr noundef %i.x, ptr noundef %.sroa.173.0.copyload, i64 0, i1 noundef zeroext true)
  br label %bb.j

.thread89:                                        ; preds = %bb.b, %bb.e, %_ZN4llvm16dyn_cast_or_nullIN5clang14ObjCMethodDeclEKNS1_4DeclEEEDaPT0_.exit, %_ZN4llvm16dyn_cast_or_nullIN5clang12FunctionDeclEKNS1_4DeclEEEDaPT0_.exit, %bb.a
  %i.y = tail call i32 @clang_isExpression(i32 noundef %i.a) #18
  %.not43 = icmp eq i32 %i.y, 0
  br i1 %.not43, label %.thread92, label %_ZN5clang8cxcursor13getCursorExprE8CXCursor.exit

_ZN5clang8cxcursor13getCursorExprE8CXCursor.exit: ; preds = %.thread89
  %.sroa.268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.268.0.copyload = load ptr, ptr %.sroa.268.0..sroa_idx, align 8, !nonnull !55, !noundef !55 ; 7 uses
  %.sroa.369.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.z = add i32 %i.a, -43
  %or.cond5.i.i = icmp ult i32 %i.z, -3
  tail call void @llvm.assume(i1 %or.cond5.i.i)
  %i.aa = load i16, ptr %.sroa.268.0.copyload, align 8
  %i.ab = and i16 %i.aa, 511                      ; 3 uses
  %i.ac = add nsw i16 %i.ab, -96
  %.not44 = icmp ult i16 %i.ac, -5
  br i1 %.not44, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN5clang8cxcursor13getCursorExprE8CXCursor.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.268.0.copyload, i64 16
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !88
  %i.af = icmp ult i32 %2, %i.ae
  br i1 %i.af, label %.critedge47, label %.thread92

.critedge47:                                      ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.268.0.copyload, i64 40
  %i.ah = load i32, ptr %.sroa.268.0.copyload, align 8
  %i.ai = lshr i32 %i.ah, 19
  %i.aj = and i32 %i.ai, 1
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ak
  %i.am = zext i32 %2 to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !488
  %.sroa.164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.164.0.copyload = load ptr, ptr %.sroa.164.0..sroa_idx, align 8
  %.sroa.162.0.copyload = load ptr, ptr %.sroa.369.0..sroa_idx, align 8, !tbaa !53
  tail call void @_ZN5clang8cxcursor12MakeCXCursorEPKNS_4StmtEPKNS_4DeclEP21CXTranslationUnitImplNS_11SourceRangeE(ptr dead_on_unwind writable sret(%struct.CXCursor) align 8 %0, ptr noundef %i.ao, ptr noundef %.sroa.164.0.copyload, ptr noundef %.sroa.162.0.copyload, i64 0)
  br label %bb.j

bb.g:                                             ; preds = %_ZN5clang8cxcursor13getCursorExprE8CXCursor.exit
  %i.ap = add nsw i16 %i.ab, -119
  %.not95 = icmp ult i16 %i.ap, -2
  br i1 %.not95, label %.thread92, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.268.0.copyload, i64 32
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !89
  %i.as = icmp ult i32 %2, %i.ar
  br i1 %i.as, label %bb.i, label %.thread92

bb.i:                                             ; preds = %bb.h
  %.not.i.i.i.i = icmp eq i16 %i.ab, 118          ; 2 uses
  %spec.select.i.i.i.i.i.i = select i1 %.not.i.i.i.i, ptr %.sroa.268.0.copyload, ptr null
  %3 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i.i, i64 48
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.268.0.copyload, i64 40
  %spec.select.i.i.i.i55 = select i1 %.not.i.i.i.i, ptr %3, ptr %i.at
  %i.au = zext i32 %2 to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i.i.i.i55, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !488
  %.sroa.158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.158.0.copyload = load ptr, ptr %.sroa.158.0..sroa_idx, align 8
  %.sroa.1.0.copyload = load ptr, ptr %.sroa.369.0..sroa_idx, align 8, !tbaa !53
  tail call void @_ZN5clang8cxcursor12MakeCXCursorEPKNS_4StmtEPKNS_4DeclEP21CXTranslationUnitImplNS_11SourceRangeE(ptr dead_on_unwind writable sret(%struct.CXCursor) align 8 %0, ptr noundef %i.aw, ptr noundef %.sroa.158.0.copyload, ptr noundef %.sroa.1.0.copyload, i64 0)
  br label %bb.j

.thread92:                                        ; preds = %bb.f, %bb.g, %bb.h, %.thread89
  tail call void @clang_getNullCursor(ptr dead_on_unwind writable sret(%struct.CXCursor) align 8 %0) #18
  br label %bb.j

bb.j:                                             ; preds = %.critedge47, %bb.i, %bb.d, %.critedge, %.thread92
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i32 @clang_Cursor_getNumTemplateArguments(ptr nofree noundef readonly byval(%struct.CXCursor) align 8 captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @clang_getCursorKind(ptr noundef nonnull byval(%struct.CXCursor) align 8 %0) #18 ; 2 uses
  %i.b = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.a)
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %.split, label %.thread

.split:                                           ; preds = %bb.a
  %i.d = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.a, i1 true)
  switch i32 %i.d, label %.thread [
    i32 5, label %bb.b
    i32 3, label %bb.b
    i32 2, label %bb.b
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %.split, %.split, %.split, %.split
  %.sroa.129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.129.0.copyload = load ptr, ptr %.sroa.129.0..sroa_idx, align 8 ; 4 uses
  %.not.i = icmp eq ptr %.sroa.129.0.copyload, null
  br i1 %.not.i, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.129.0.copyload, i64 28
  %i.f = load i32, ptr %i.e, align 4
  %i.g = and i32 %i.f, 127                        ; 2 uses
  %i.h = add nsw i32 %i.g, -35
  %i.i = icmp ult i32 %i.h, 6
  br i1 %i.i, label %_ZN4llvm19dyn_cast_if_presentIN5clang12FunctionDeclEKNS1_4DeclEEEDaPT0_.exit, label %bb.e

_ZN4llvm19dyn_cast_if_presentIN5clang12FunctionDeclEKNS1_4DeclEEEDaPT0_.exit: ; preds = %bb.c
  %i.j = tail call noundef ptr @_ZNK5clang12FunctionDecl29getTemplateSpecializationInfoEv(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.129.0.copyload) #18 ; 2 uses
  %.not23 = icmp eq ptr %i.j, null
  br i1 %.not23, label %.thread, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm19dyn_cast_if_presentIN5clang12FunctionDeclEKNS1_4DeclEEEDaPT0_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  br label %.thread.sink.split

bb.e:                                             ; preds = %bb.c
  %i.l = add nsw i32 %i.g, -61
  %i.m = icmp ult i32 %i.l, 2
  br i1 %i.m, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.129.0.copyload, i64 168
  br label %.thread.sink.split

.thread.sink.split:                               ; preds = %bb.f, %bb.d
  %.sink.in = phi ptr [ %i.k, %bb.d ], [ %i.n, %bb.f ]
  %.sink = load ptr, ptr %.sink.in, align 8, !tbaa !489
  %i.o = load i32, ptr %.sink, align 8, !tbaa !98
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.b, %_ZN4llvm19dyn_cast_if_presentIN5clang12FunctionDeclEKNS1_4DeclEEEDaPT0_.exit, %bb.e, %bb.a, %.split
  %.3 = phi i32 [ -1, %_ZN4llvm19dyn_cast_if_presentIN5clang12FunctionDeclEKNS1_4DeclEEEDaPT0_.exit ], [ -1, %.split ], [ -1, %bb.a ], [ -1, %bb.b ], [ -1, %bb.e ], [ %i.o, %.thread.sink.split ]
  ret i32 %.3
}

declare i32 @clang_getCursorKind(ptr noundef byval(%struct.CXCursor) align 8) local_unnamed_addr #4

declare noundef ptr @_ZNK5clang12FunctionDecl29getTemplateSpecializationInfoEv(ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i32 0, 10) i32 @clang_Cursor_getTemplateArgumentKind(ptr nofree noundef readonly byval(%struct.CXCursor) align 8 captures(none) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 4 uses
  %i.a = tail call i32 @clang_getCursorKind(ptr noundef nonnull byval(%struct.CXCursor) align 8 %0) #18 ; 2 uses
  %i.b = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.a)
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %.split.i, label %_ZL32clang_Cursor_getTemplateArgument8CXCursorjPN5clang16TemplateArgumentE.exit.thread

.split.i:                                         ; preds = %bb.a
  %i.d = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.a, i1 true)
  switch i32 %i.d, label %_ZL32clang_Cursor_getTemplateArgument8CXCursorjPN5clang16TemplateArgumentE.exit.thread [
    i32 5, label %bb.b
    i32 3, label %bb.b
    i32 2, label %bb.b
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %.split.i, %.split.i, %.split.i, %.split.i
  %.not.i.i = icmp eq ptr %.sroa.4.0.copyload, null
  br i1 %.not.i.i, label %_ZL32clang_Cursor_getTemplateArgument8CXCursorjPN5clang16TemplateArgumentE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 28
  %i.f = load i32, ptr %i.e, align 4
  %i.g = and i32 %i.f, 127                        ; 2 uses
  %i.h = add nsw i32 %i.g, -35
  %i.i = icmp ult i32 %i.h, 6
  br i1 %i.i, label %_ZN4llvm19dyn_cast_if_presentIN5clang12FunctionDeclEKNS1_4DeclEEEDaPT0_.exit.i, label %bb.e

_ZN4llvm19dyn_cast_if_presentIN5clang12FunctionDeclEKNS1_4DeclEEEDaPT0_.exit.i: ; preds = %bb.c
  %i.j = tail call noundef ptr @_ZNK5clang12FunctionDecl29getTemplateSpecializationInfoEv(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.4.0.copyload) #18 ; 2 uses
  %.not33.i = icmp eq ptr %i.j, null
  br i1 %.not33.i, label %_ZL32clang_Cursor_getTemplateArgument8CXCursorjPN5clang16TemplateArgumentE.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm19dyn_cast_if_presentIN5clang12FunctionDeclEKNS1_4DeclEEEDaPT0_.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !105  ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !98
  %.not34.i = icmp ult i32 %1, %i.m
  br i1 %.not34.i, label %bb.f, label %_ZL32clang_Cursor_getTemplateArgument8CXCursorjPN5clang16TemplateArgumentE.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.n = add nsw i32 %i.g, -61
  %i.o = icmp ult i32 %i.n, 2
  br i1 %i.o, label %_ZN4llvm19dyn_cast_if_presentIN5clang31ClassTemplateSpecializationDeclEKNS1_4DeclEEEDaPT0_.exit.i, label %_ZL32clang_Cursor_getTemplateArgument8CXCursorjPN5clang16TemplateArgumentE.exit.thread

_ZN4llvm19dyn_cast_if_presentIN5clang31ClassTemplateSpecializationDeclEKNS1_4DeclEEEDaPT0_.exit.i: ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 168
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !130  ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !98
  %.not36.i = icmp ult i32 %1, %i.r
  br i1 %.not36.i, label %bb.f, label %_ZL32clang_Cursor_getTemplateArgument8CXCursorjPN5clang16TemplateArgumentE.exit.thread

bb.f:                                             ; preds = %_ZN4llvm19dyn_cast_if_presentIN5clang31ClassTemplateSpecializationDeclEKNS1_4DeclEEEDaPT0_.exit.i, %bb.d
  %.sink.i = phi ptr [ %i.l, %bb.d ], [ %i.q, %_ZN4llvm19dyn_cast_if_presentIN5clang31ClassTemplateSpecializationDeclEKNS1_4DeclEEEDaPT0_.exit.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sink.i, i64 8
  %i.t = zext i32 %1 to i64
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %i.t
  %.sroa.0.0.copyload = load i64, ptr %i.u, align 8 ; 2 uses
  %i.v = and i64 %.sroa.0.0.copyload, 2147483646
  %i.w = icmp samesign ult i64 %i.v, 10
  br i1 %i.w, label %switch.lookup, label %_ZL32clang_Cursor_getTemplateArgument8CXCursorjPN5clang16TemplateArgumentE.exit.thread

switch.lookup:                                    ; preds = %bb.f
  %i.x = and i64 %.sroa.0.0.copyload, 2147483647
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.clang_Cursor_getTemplateArgumentKind, i64 %i.x
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %_ZL32clang_Cursor_getTemplateArgument8CXCursorjPN5clang16TemplateArgumentE.exit.thread

_ZL32clang_Cursor_getTemplateArgument8CXCursorjPN5clang16TemplateArgumentE.exit.thread: ; preds = %_ZN4llvm19dyn_cast_if_presentIN5clang12FunctionDeclEKNS1_4DeclEEEDaPT0_.exit.i, %bb.b, %_ZN4llvm19dyn_cast_if_presentIN5clang31ClassTemplateSpecializationDeclEKNS1_4DeclEEEDaPT0_.exit.i, %bb.d, %bb.a, %.split.i, %bb.e, %bb.f, %switch.lookup
  %.0 = phi i32 [ %switch.ext, %switch.lookup ], [ 9, %bb.f ], [ 9, %bb.e ], [ 9, %.split.i ], [ 9, %bb.a ], [ 9, %bb.d ], [ 9, %_ZN4llvm19dyn_cast_if_presentIN5clang31ClassTemplateSpecializationDeclEKNS1_4DeclEEEDaPT0_.exit.i ], [ 9, %bb.b ], [ 9, %_ZN4llvm19dyn_cast_if_presentIN5clang12FunctionDeclEKNS1_4DeclEEEDaPT0_.exit.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @clang_Cursor_getTemplateArgumentType(ptr dead_on_unwind noalias writable sret(%struct.CXType) align 8 %0, ptr nofree noundef readonly byval(%struct.CXCursor) align 8 captures(none) %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 4 uses
  %i.a = tail call i32 @clang_getCursorKind(ptr noundef nonnull byval(%struct.CXCursor) align 8 %1) #18 ; 2 uses
  %i.b = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.a)
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %.split.i, label %bb.f

.split.i:                                         ; preds = %bb.a
  %i.d = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.a, i1 true)
  switch i32 %i.d, label %bb.f [
    i32 5, label %bb.b
    i32 3, label %bb.b
    i32 2, label %bb.b
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %.split.i, %.split.i, %.split.i, %.split.i
  %.not.i.i = icmp eq ptr %.sroa.4.0.copyload, null
  br i1 %.not.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 28
  %i.f = load i32, ptr %i.e, align 4
  %i.g = and i32 %i.f, 127                        ; 2 uses
  %i.h = add nsw i32 %i.g, -35
  %i.i = icmp ult i32 %i.h, 6
  br i1 %i.i, label %_ZN4llvm19dyn_cast_if_presentIN5clang12FunctionDeclEKNS1_4DeclEEEDaPT0_.exit.i, label %bb.e

_ZN4llvm19dyn_cast_if_presentIN5clang12FunctionDeclEKNS1_4DeclEEEDaPT0_.exit.i: ; preds = %bb.c
  %i.j = tail call noundef ptr @_ZNK5clang12FunctionDecl29getTemplateSpecializationInfoEv(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.4.0.copyload) #18 ; 2 uses
  %.not33.i = icmp eq ptr %i.j, null
  br i1 %.not33.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm19dyn_cast_if_presentIN5clang12FunctionDeclEKNS1_4DeclEEEDaPT0_.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !105  ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !98
  %.not34.i = icmp ult i32 %2, %i.m
  br i1 %.not34.i, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
end_hunk_0
