Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Expr?download=true
inline.NumInlined: 7608
inline.NumDeleted: 4168
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZNK5clang4Expr13isEvaluatableERKNS_10ASTContextENS0_15SideEffectsKindE
declare noundef zeroext i1 @_ZNK5clang4Expr13isEvaluatableERKNS_10ASTContextENS0_15SideEffectsKindE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(23904), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK5clang8CallExpr20isBuiltinAssumeFalseERKNS_10ASTContextE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(23904) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = tail call noundef ptr @_ZN5clang4Expr25getReferencedDeclOfCalleeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNK5clang8CallExpr16getBuiltinCalleeEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.f = load i32, ptr %i.e, align 4
  %i.g = and i32 %i.f, 127
  %i.h = add nsw i32 %i.g, -35
  %i.i = icmp ult i32 %i.h, 6
  br i1 %i.i, label %_ZNK5clang8CallExpr16getBuiltinCalleeEv.exit, label %_ZNK5clang8CallExpr16getBuiltinCalleeEv.exit.thread

_ZNK5clang8CallExpr16getBuiltinCalleeEv.exit:     ; preds = %bb.b
  %i.j = tail call noundef i32 @_ZNK5clang12FunctionDecl12getBuiltinIDEb(ptr noundef nonnull align 8 dereferenceable(168) %i.d, i1 noundef zeroext false) #30
  switch i32 %i.j, label %_ZNK5clang8CallExpr16getBuiltinCalleeEv.exit.thread [
    i32 1001, label %bb.c
    i32 162, label %bb.c
  ]

bb.c:                                             ; preds = %_ZNK5clang8CallExpr16getBuiltinCalleeEv.exit, %_ZNK5clang8CallExpr16getBuiltinCalleeEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load i32, ptr %0, align 8
  %i.m = lshr i32 %i.l, 19
  %i.n = and i32 %i.m, 1
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !114  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.r = load i24, ptr %i.q, align 8
  %i.s = and i24 %i.r, 131072
  %.not = icmp eq i24 %i.s, 0
  br i1 %.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.t = call noundef zeroext i1 @_ZNK5clang4Expr26EvaluateAsBooleanConditionERbRKNS_10ASTContextEb(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(23904) %1, i1 noundef zeroext false) #30
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = load i8, ptr %i.a, align 1, !tbaa !139, !range !140, !noundef !141
  %i.v = trunc nuw i8 %i.u to i1
  %i.w = xor i1 %i.v, true
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.x = phi i1 [ false, %bb.d ], [ false, %bb.c ], [ %i.w, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %_ZNK5clang8CallExpr16getBuiltinCalleeEv.exit.thread

_ZNK5clang8CallExpr16getBuiltinCalleeEv.exit.thread: ; preds = %bb.a, %bb.b, %_ZNK5clang8CallExpr16getBuiltinCalleeEv.exit, %bb.f
  %.0 = phi i1 [ %i.x, %bb.f ], [ false, %_ZNK5clang8CallExpr16getBuiltinCalleeEv.exit ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK5clang8CallExpr22getCalleeAllocSizeAttrEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.c = tail call noundef ptr @_ZN5clang4Expr25getReferencedDeclOfCalleeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNK5clang4Decl7getAttrINS_13AllocSizeAttrEEEPT_v.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = and i32 %i.e, 127
  %i.g = add nsw i32 %i.f, -35
  %i.h = icmp ult i32 %i.g, 6
  br i1 %i.h, label %_ZNK5clang8CallExpr15getDirectCalleeEv.exit, label %_ZNK5clang4Decl7getAttrINS_13AllocSizeAttrEEEPT_v.exit

_ZNK5clang8CallExpr15getDirectCalleeEv.exit:      ; preds = %bb.b
  %i.i = and i32 %i.e, 256
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %_ZNK5clang4Decl7getAttrINS_13AllocSizeAttrEEEPT_v.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK5clang8CallExpr15getDirectCalleeEv.exit
  %i.j = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %i.c) #30 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !69   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !66   ; 2 uses
  %i.n = zext i32 %i.m to i64
  %.idx.i.i = shl nuw nsw i64 %i.n, 3
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx.i.i ; 2 uses
  %.not.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i, label %_ZNK5clang4Decl7getAttrINS_13AllocSizeAttrEEEPT_v.exit.thread, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %bb.d
  %.sroa.07.1.i.i.i.i = phi ptr [ %i.t, %bb.d ], [ %i.k, %bb.c ] ; 3 uses
  %i.p = load ptr, ptr %.sroa.07.1.i.i.i.i, align 8, !tbaa !601
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 36
  %i.r = load i16, ptr %i.q, align 4
  %i.s = icmp eq i16 %i.r, 136
  br i1 %i.s, label %_ZN5clangneENS_22specific_attr_iteratorINS_13AllocSizeAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.t, %i.o
  br i1 %.not.i.i.i.i.i, label %_ZNK5clang4Decl7getAttrINS_13AllocSizeAttrEEEPT_v.exit.thread, label %.lr.ph.i.i.i.i.i, !llvm.loop !1131

_ZN5clangneENS_22specific_attr_iteratorINS_13AllocSizeAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.not5.i.i = icmp eq ptr %.sroa.07.1.i.i.i.i, %i.o
  br i1 %.not5.i.i, label %_ZNK5clang4Decl7getAttrINS_13AllocSizeAttrEEEPT_v.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN5clangneENS_22specific_attr_iteratorINS_13AllocSizeAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.i.i
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !601  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 36
  %i.w = load i16, ptr %i.v, align 4
  %i.x = icmp eq i16 %i.w, 136
  br i1 %i.x, label %_ZNK5clang4Decl7getAttrINS_13AllocSizeAttrEEEPT_v.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %.lr.ph.i.i.i.i
  %i.y = phi ptr [ %i.z, %.lr.ph.i.i.i.i ], [ %i.k, %bb.e ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !601 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 36
  %i.ac = load i16, ptr %i.ab, align 4
  %i.ad = icmp eq i16 %i.ac, 136
  br i1 %i.ad, label %_ZNK5clang4Decl7getAttrINS_13AllocSizeAttrEEEPT_v.exit.thread, label %.lr.ph.i.i.i.i, !llvm.loop !1132

_ZNK5clang4Decl7getAttrINS_13AllocSizeAttrEEEPT_v.exit: ; preds = %bb.a, %bb.b
  %i.ae = tail call noundef ptr @_ZN5clang4Expr25getReferencedDeclOfCalleeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) ; 3 uses
  %.not11.not = icmp eq ptr %i.ae, null
  br i1 %.not11.not, label %_ZNK5clang4Decl7getAttrINS_13AllocSizeAttrEEEPT_v.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK5clang4Decl7getAttrINS_13AllocSizeAttrEEEPT_v.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 28
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = and i32 %i.ag, 256
  %.not.i12 = icmp eq i32 %i.ah, 0
  br i1 %.not.i12, label %_ZNK5clang4Decl7getAttrINS_13AllocSizeAttrEEEPT_v.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %i.ae) #30 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !69 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !66 ; 2 uses
  %i.am = zext i32 %i.al to i64
  %.idx.i.i13 = shl nuw nsw i64 %i.am, 3
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx.i.i13 ; 2 uses
  %.not.i.i14 = icmp eq i32 %i.al, 0
  br i1 %.not.i.i14, label %_ZNK5clang4Decl7getAttrINS_13AllocSizeAttrEEEPT_v.exit.thread, label %.lr.ph.i.i.i.i.i15

.lr.ph.i.i.i.i.i15:                               ; preds = %bb.g, %bb.h
  %.sroa.07.1.i.i.i.i16 = phi ptr [ %i.as, %bb.h ], [ %i.aj, %bb.g ] ; 3 uses
  %i.ao = load ptr, ptr %.sroa.07.1.i.i.i.i16, align 8, !tbaa !601
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 36
  %i.aq = load i16, ptr %i.ap, align 4
  %i.ar = icmp eq i16 %i.aq, 136
  br i1 %i.ar, label %_ZN5clangneENS_22specific_attr_iteratorINS_13AllocSizeAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.i.i18, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i15
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i.i16, i64 8 ; 2 uses
  %.not.i.i.i.i.i17 = icmp eq ptr %i.as, %i.an
  br i1 %.not.i.i.i.i.i17, label %_ZNK5clang4Decl7getAttrINS_13AllocSizeAttrEEEPT_v.exit.thread, label %.lr.ph.i.i.i.i.i15, !llvm.loop !1131

_ZN5clangneENS_22specific_attr_iteratorINS_13AllocSizeAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.i.i18: ; preds = %.lr.ph.i.i.i.i.i15
  %.not5.i.i19 = icmp eq ptr %.sroa.07.1.i.i.i.i16, %i.an
  br i1 %.not5.i.i19, label %_ZNK5clang4Decl7getAttrINS_13AllocSizeAttrEEEPT_v.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZN5clangneENS_22specific_attr_iteratorINS_13AllocSizeAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.i.i18
  %i.at = load ptr, ptr %i.aj, align 8, !tbaa !601 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 36
  %i.av = load i16, ptr %i.au, align 4
  %i.aw = icmp eq i16 %i.av, 136
  br i1 %i.aw, label %_ZNK5clang4Decl7getAttrINS_13AllocSizeAttrEEEPT_v.exit.thread, label %.lr.ph.i.i.i.i20

.lr.ph.i.i.i.i20:                                 ; preds = %bb.i, %.lr.ph.i.i.i.i20
  %i.ax = phi ptr [ %i.ay, %.lr.ph.i.i.i.i20 ], [ %i.aj, %bb.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !601 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 36
  %i.bb = load i16, ptr %i.ba, align 4
  %i.bc = icmp eq i16 %i.bb, 136
  br i1 %i.bc, label %_ZNK5clang4Decl7getAttrINS_13AllocSizeAttrEEEPT_v.exit.thread, label %.lr.ph.i.i.i.i20, !llvm.loop !1132

_ZNK5clang4Decl7getAttrINS_13AllocSizeAttrEEEPT_v.exit.thread: ; preds = %bb.d, %.lr.ph.i.i.i.i, %bb.h, %.lr.ph.i.i.i.i20, %_ZNK5clang4Decl7getAttrINS_13AllocSizeAttrEEEPT_v.exit, %bb.f, %bb.g, %_ZN5clangneENS_22specific_attr_iteratorINS_13AllocSizeAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.i.i18, %bb.i, %bb.e, %_ZN5clangneENS_22specific_attr_iteratorINS_13AllocSizeAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.i.i, %bb.c, %_ZNK5clang8CallExpr15getDirectCalleeEv.exit
  %.2 = phi ptr [ null, %_ZNK5clang8CallExpr15getDirectCalleeEv.exit ], [ %i.aa, %.lr.ph.i.i.i.i ], [ null, %bb.h ], [ %i.u, %bb.e ], [ null, %_ZN5clangneENS_22specific_attr_iteratorINS_13AllocSizeAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.i.i ], [ null, %bb.c ], [ null, %_ZNK5clang4Decl7getAttrINS_13AllocSizeAttrEEEPT_v.exit ], [ null, %bb.f ], [ null, %bb.g ], [ null, %_ZN5clangneENS_22specific_attr_iteratorINS_13AllocSizeAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.i.i18 ], [ %i.at, %bb.i ], [ %i.az, %.lr.ph.i.i.i.i20 ], [ null, %bb.d ]
  ret ptr %.2
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK5clang8CallExpr36evaluateBytesReturnedByAllocSizeCallERKNS_10ASTContextE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::optional.858") align 8 captures(none) initializes((16, 17)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(23904) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %3 = alloca %"class.llvm::APSInt", align 8      ; 9 uses
  %4 = alloca %"class.llvm::APSInt", align 8      ; 8 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.llvm::APInt", align 8       ; 7 uses
  %i.c = tail call noundef ptr @_ZNK5clang8CallExpr22getCalleeAllocSizeAttrEv(ptr noundef nonnull align 8 dereferenceable(24) %1) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.0.0.copyload.i = load i32, ptr %i.d, align 8, !tbaa !42 ; 2 uses
  %i.e = and i32 %.sroa.0.0.copyload.i, 1073741823
  %6 = add nsw i32 %i.e, -1
  %7 = shl i32 %.sroa.0.0.copyload.i, 1
  %8 = ashr i32 %7, 31
  %i.f = add nsw i32 %6, %8                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.g = tail call i64 @_ZNK5clang10ASTContext11getSizeTypeEv(ptr noundef nonnull align 8 dereferenceable(23904) %2) #30
  %i.h = and i64 %i.g, -16
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load ptr, ptr %i.i, align 16, !tbaa !48
  %i.k = tail call { i64, i64 } @_ZNK5clang10ASTContext11getTypeInfoEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(23904) %2, ptr noundef %i.j) #30
  %i.l = extractvalue { i64, i64 } %i.k, 0
  %i.m = trunc i64 %i.l to i32
  store i32 %i.m, ptr %i.a, align 4, !tbaa !92
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i32, ptr %i.n, align 8, !tbaa !136
  %.not = icmp ugt i32 %i.o, %i.f
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.p, align 8, !tbaa !1134
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 1, ptr %i.q, align 8, !tbaa !138
  store i64 0, ptr %3, align 8, !tbaa !42
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i8 0, ptr %i.r, align 4, !tbaa !156
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.t = load i32, ptr %1, align 8
  %i.u = lshr i32 %i.t, 19
  %i.v = and i32 %i.u, 1
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.w
  %i.y = zext i32 %i.f to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !114
  %i.ab = call fastcc noundef zeroext i1 @"_ZZNK5clang8CallExpr36evaluateBytesReturnedByAllocSizeCallERKNS_10ASTContextEENK3$_0clEPKNS_4ExprERN4llvm6APSIntE"(ptr nonnull %2, ptr nonnull %i.a, ptr noundef %i.aa, ptr noundef nonnull align 8 dereferenceable(13) %3)
  br i1 %i.ab, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.ac, align 8, !tbaa !1134
  br label %bb.o

bb.e:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %.sroa.0.0.copyload.i12 = load i32, ptr %i.ad, align 4, !tbaa !42 ; 3 uses
  %i.ae = icmp slt i32 %.sroa.0.0.copyload.i12, 0
  br i1 %i.ae, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load i32, ptr %i.q, align 8, !tbaa !138
  store i32 %i.ag, ptr %i.af, align 8, !tbaa !138
  %i.ah = load i64, ptr %3, align 8
  store i64 %i.ah, ptr %0, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.ai, align 8, !tbaa !1134
  br label %_ZN4llvm5APIntD2Ev.exit15

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 1, ptr %i.aj, align 8, !tbaa !138
  store i64 0, ptr %4, align 8, !tbaa !42
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i8 0, ptr %i.ak, align 4, !tbaa !156
  %i.al = and i32 %.sroa.0.0.copyload.i12, 1073741823
  %9 = add nsw i32 %i.al, -1
  %10 = shl i32 %.sroa.0.0.copyload.i12, 1
  %11 = ashr i32 %10, 31
  %i.am = add nsw i32 %9, %11
  %i.an = load i32, ptr %1, align 8
  %i.ao = lshr i32 %i.an, 19
  %i.ap = and i32 %i.ao, 1
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.aq
  %i.as = zext i32 %i.am to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !114
  %i.av = call fastcc noundef zeroext i1 @"_ZZNK5clang8CallExpr36evaluateBytesReturnedByAllocSizeCallERKNS_10ASTContextEENK3$_0clEPKNS_4ExprERN4llvm6APSIntE"(ptr nonnull %2, ptr nonnull %i.a, ptr noundef %i.au, ptr noundef nonnull align 8 dereferenceable(13) %4)
  br i1 %i.av, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.aw, align 8, !tbaa !1134
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @_ZNK4llvm5APInt7umul_ovERKS0_Rb(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %5, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 1 dereferenceable(1) %i.b) #30
  %i.ax = load i8, ptr %i.b, align 1, !tbaa !139, !range !140, !noundef !141
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.i, label %.thread22

.thread22:                                        ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !138
  store i32 %i.bb, ptr %i.az, align 8, !tbaa !138
  %i.bc = load i64, ptr %5, align 8
  store i64 %i.bc, ptr %0, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.bd, align 8, !tbaa !1134
  br label %_ZN4llvm5APIntD2Ev.exit

bb.i:                                             ; preds = %bb.h
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !138
  %i.be = icmp ugt i32 %.pre, 64
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.bf, align 8, !tbaa !1134
  br i1 %i.be, label %bb.j, label %_ZN4llvm5APIntD2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.bg = load ptr, ptr %5, align 8, !tbaa !42    ; 2 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %_ZN4llvm5APIntD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZdaPv(ptr noundef nonnull %i.bg) #32
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %.thread22, %bb.i, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %bb.l

bb.l:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit, %bb.g
  %i.bi = load i32, ptr %i.aj, align 8, !tbaa !138
  %i.bj = icmp ugt i32 %i.bi, 64
  br i1 %i.bj, label %bb.m, label %_ZN4llvm5APIntD2Ev.exit14

bb.m:                                             ; preds = %bb.l
  %i.bk = load ptr, ptr %4, align 8, !tbaa !42    ; 2 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %_ZN4llvm5APIntD2Ev.exit14, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZdaPv(ptr noundef nonnull %i.bk) #32
  br label %_ZN4llvm5APIntD2Ev.exit14

_ZN4llvm5APIntD2Ev.exit14:                        ; preds = %bb.l, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.o

bb.o:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit14, %bb.d
  %.pr = load i32, ptr %i.q, align 8, !tbaa !138
  %i.bm = icmp ugt i32 %.pr, 64
  br i1 %i.bm, label %bb.p, label %_ZN4llvm5APIntD2Ev.exit15

bb.p:                                             ; preds = %bb.o
  %i.bn = load ptr, ptr %3, align 8, !tbaa !42    ; 2 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %_ZN4llvm5APIntD2Ev.exit15, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZdaPv(ptr noundef nonnull %i.bn) #32
  br label %_ZN4llvm5APIntD2Ev.exit15

_ZN4llvm5APIntD2Ev.exit15:                        ; preds = %.thread, %bb.o, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.r

bb.r:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit15, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

declare i64 @_ZNK5clang10ASTContext11getSizeTypeEv(ptr noundef nonnull align 8 dereferenceable(23904)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @"_ZZNK5clang8CallExpr36evaluateBytesReturnedByAllocSizeCallERKNS_10ASTContextEENK3$_0clEPKNS_4ExprERN4llvm6APSIntE"(ptr %.0.val, ptr nofree readonly captures(none) %.8.val, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(13) %1) unnamed_addr #9 align 2 {
bb.a:
  %2 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  %3 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  %4 = alloca %"struct.clang::Expr::EvalResult", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  store i8 0, ptr %4, align 8, !tbaa !78
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 1
  store i8 0, ptr %i.a, align 1, !tbaa !79
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i8 0, ptr %i.b, align 2, !tbaa !80
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.c, align 8, !tbaa !81
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store i32 0, ptr %i.d, align 8, !tbaa !85
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 2 uses
  %i.f = load i8, ptr %i.e, align 4
  %i.g = and i8 %i.f, -2
  store i8 %i.g, ptr %i.e, align 4
  %i.h = load i24, ptr %0, align 8
  %i.i = and i24 %i.h, 131072
  %.not = icmp eq i24 %i.i, 0
  %.sink7.i.sroa.gep = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sink7.i.sroa.gep2 = getelementptr inbounds nuw i8, ptr %2, i64 8
  br i1 %.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.j = call noundef zeroext i1 @_ZNK5clang4Expr13EvaluateAsIntERNS0_10EvalResultERKNS_10ASTContextENS0_15SideEffectsKindEb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(23904) %.0.val, i32 noundef 2, i1 noundef zeroext false) #30
  br i1 %i.j, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !138
  %i.n = icmp ult i32 %i.m, 65
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !138  ; 3 uses
  %i.q = icmp ult i32 %i.p, 65
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = load i64, ptr %i.k, align 8, !tbaa !42
  store i64 %i.r, ptr %1, align 8, !tbaa !42
  store i32 %i.p, ptr %i.l, align 8, !tbaa !138
  br label %_ZN4llvm6APSIntaSERKS0_.exit

bb.f:                                             ; preds = %bb.d, %bb.c
  call void @_ZN4llvm5APInt14assignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(13) %1, ptr noundef nonnull align 8 dereferenceable(13) %i.k) #30
  %.pre.pre = load i32, ptr %i.l, align 8, !tbaa !138
  br label %_ZN4llvm6APSIntaSERKS0_.exit

_ZN4llvm6APSIntaSERKS0_.exit:                     ; preds = %bb.e, %bb.f
  %.pre = phi i32 [ %i.p, %bb.e ], [ %.pre.pre, %bb.f ] ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.t = load i8, ptr %i.s, align 4, !tbaa !156, !range !140, !noundef !141 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  store i8 %i.t, ptr %i.u, align 4, !tbaa !156
  %i.v = trunc nuw i8 %i.t to i1                  ; 2 uses
  br i1 %i.v, label %_ZNK4llvm6APSInt10isNegativeEv.exit.thread, label %_ZNK4llvm6APSInt10isNegativeEv.exit

_ZNK4llvm6APSInt10isNegativeEv.exit:              ; preds = %_ZN4llvm6APSIntaSERKS0_.exit
  %i.w = add i32 %.pre, -1                        ; 2 uses
  %i.x = and i32 %i.w, 63
  %i.y = zext nneg i32 %i.x to i64
  %i.z = shl nuw i64 1, %i.y
  %i.aa = icmp ult i32 %.pre, 65
  %i.ab = load ptr, ptr %1, align 8
  %i.ac = lshr i32 %i.w, 6
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ad
  %.in.i.i.i.i = select i1 %i.aa, ptr %1, ptr %i.ae
  %i.af = load i64, ptr %.in.i.i.i.i, align 8, !tbaa !42
  %i.ag = and i64 %i.z, %i.af
  %.not3 = icmp eq i64 %i.ag, 0
  br i1 %.not3, label %_ZNK4llvm6APSInt10isNegativeEv.exit.thread, label %bb.l

_ZNK4llvm6APSInt10isNegativeEv.exit.thread:       ; preds = %_ZN4llvm6APSIntaSERKS0_.exit, %_ZNK4llvm6APSInt10isNegativeEv.exit
  %i.ah = load i32, ptr %.8.val, align 4, !tbaa !92 ; 3 uses
  %i.ai = icmp ult i32 %.pre, 65
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK4llvm6APSInt10isNegativeEv.exit.thread
  %.neg.i.i.i = add nsw i32 %.pre, -64
  %i.aj = load i64, ptr %1, align 8, !tbaa !42
  %i.ak = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aj, i1 false)
  %i.al = trunc nuw nsw i64 %i.ak to i32
  %i.am = add nsw i32 %.neg.i.i.i, %i.al
  br label %_ZNK4llvm5APInt6isIntNEj.exit

bb.h:                                             ; preds = %_ZNK4llvm6APSInt10isNegativeEv.exit.thread
  %i.an = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %1) #29
  br label %_ZNK4llvm5APInt6isIntNEj.exit

_ZNK4llvm5APInt6isIntNEj.exit:                    ; preds = %bb.g, %bb.h
  %.0.i.i.i = phi i32 [ %i.am, %bb.g ], [ %i.an, %bb.h ]
  %i.ao = sub i32 %.pre, %.0.i.i.i
end_hunk_0
