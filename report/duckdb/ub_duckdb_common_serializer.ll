inline.NumInlined: 829
inline.NumDeleted: 500
begin_hunk_0
@_ZN6duckdb12MemoryStreamD1Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb12MemoryStreamD2Ev
@_ZN6duckdb12MemoryStreamC1EOS0_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN6duckdb12MemoryStreamC2EOS0_

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb16BinarySerializer15OnPropertyBeginEtPKc(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1328) %0, i16 noundef zeroext %1, ptr nofree readnone captures(none) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %1, ptr %i.a, align 2, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9, !nonnull !92, !align !93 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !94
  %i.e = load ptr, ptr %i.d, align 8
  call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull %i.a, i64 noundef 2), !inline_history !96
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN6duckdb16BinarySerializer13OnPropertyEndEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #1 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb16BinarySerializer23OnOptionalPropertyBeginEtPKcb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1328) %0, i16 noundef zeroext %1, ptr nofree readnone captures(none) %2, i1 noundef zeroext %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  br i1 %3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %1, ptr %i.a, align 2, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9, !nonnull !92, !align !93 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !94
  %i.e = load ptr, ptr %i.d, align 8
  call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull %i.a, i64 noundef 2), !inline_history !97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN6duckdb16BinarySerializer21OnOptionalPropertyEndEb(ptr nofree nonnull readnone align 8 captures(none) %0, i1 zeroext %1) unnamed_addr #1 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN6duckdb16BinarySerializer13OnObjectBeginEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #1 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb16BinarySerializer11OnObjectEndEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1328) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 -1, ptr %i.a, align 2, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9, !nonnull !92, !align !93 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !94
  %i.e = load ptr, ptr %i.d, align 8
  call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull %i.a, i64 noundef 2), !inline_history !96
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb16BinarySerializer11OnListBeginEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1328) %0, i64 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.09.i.i.i = phi i64 [ %1, %bb.a ], [ %i.d, %bb.b ] ; 2 uses
  %.08.i.i.i = phi i64 [ 0, %bb.a ], [ %i.e, %bb.b ] ; 2 uses
  %i.b = trunc i64 %.09.i.i.i to i8
  %i.c = and i8 %i.b, 127
  %i.d = lshr i64 %.09.i.i.i, 7                   ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.d, 0               ; 2 uses
  %masksel.i.i.i = select i1 %.not.i.i.i, i8 0, i8 -128
  %.0.i.i.i = or disjoint i8 %masksel.i.i.i, %i.c
  %i.e = add nuw nsw i64 %.08.i.i.i, 1            ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 %.08.i.i.i
  store i8 %.0.i.i.i, ptr %i.f, align 1, !tbaa !98
  br i1 %.not.i.i.i, label %_ZN6duckdb16BinarySerializer12VarIntEncodeImEEvT_.exit, label %bb.b, !llvm.loop !99

_ZN6duckdb16BinarySerializer12VarIntEncodeImEEvT_.exit: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !9, !nonnull !92, !align !93 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !94
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %i.a, i64 noundef %i.e), !inline_history !101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN6duckdb16BinarySerializer9OnListEndEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #1 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb16BinarySerializer15OnNullableBeginEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1328) %0, i1 noundef zeroext %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = zext i1 %1 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.b, ptr %i.a, align 1, !tbaa !98
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9, !nonnull !92, !align !93 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !94
  %i.f = load ptr, ptr %i.e, align 8
  call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull %i.a, i64 noundef 1), !inline_history !102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb16BinarySerializer10WriteValueEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1328) %0, i1 noundef zeroext %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = zext i1 %1 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.b, ptr %i.a, align 1, !tbaa !98
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9, !nonnull !92, !align !93 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !94
  %i.f = load ptr, ptr %i.e, align 8
  call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull %i.a, i64 noundef 1), !inline_history !103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN6duckdb16BinarySerializer13OnNullableEndEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #1 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN6duckdb16BinarySerializer9WriteNullEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #1 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb16BinarySerializer10WriteValueEh(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1328) %0, i8 noundef zeroext %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.09.i.i.i = phi i8 [ %1, %bb.a ], [ %i.b, %bb.b ] ; 3 uses
  %.08.i.i.i = phi i64 [ 0, %bb.a ], [ %i.c, %bb.b ] ; 2 uses
  %i.b = lshr i8 %.09.i.i.i, 7
  %.not.i.i.i = icmp sgt i8 %.09.i.i.i, -1
  %i.c = add nuw nsw i64 %.08.i.i.i, 1            ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %.08.i.i.i
  store i8 %.09.i.i.i, ptr %i.d, align 1, !tbaa !98
  br i1 %.not.i.i.i, label %_ZN6duckdb16BinarySerializer12VarIntEncodeIhEEvT_.exit, label %bb.b, !llvm.loop !104

_ZN6duckdb16BinarySerializer12VarIntEncodeIhEEvT_.exit: ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !9, !nonnull !92, !align !93 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !94
  %i.h = load ptr, ptr %i.g, align 8
  call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull %i.a, i64 noundef %i.c), !inline_history !105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb16BinarySerializer10WriteValueEc(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1328) %0, i8 noundef signext %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %1, ptr %i.a, align 1, !tbaa !98
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9, !nonnull !92, !align !93 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !94
  %i.e = load ptr, ptr %i.d, align 8
  call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull %i.a, i64 noundef 1), !inline_history !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb16BinarySerializer10WriteValueEa(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1328) %0, i8 noundef signext %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = icmp ult i8 %1, 64
  %.014.lcssa.i.i.sroa.gep3.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br i1 %i.b, label %_ZN6duckdb16BinarySerializer12VarIntEncodeIaEEvT_.exit, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.a
  %2 = ashr i8 %1, 7                              ; 2 uses
  %i.c = icmp ne i8 %2, -1
  %3 = and i8 %1, 64
  %.not.i.peel.i.i = icmp eq i8 %3, 0
  %or.cond16.i.peel.i.i = or i1 %i.c, %.not.i.peel.i.i
  br i1 %or.cond16.i.peel.i.i, label %bb.b, label %_ZN6duckdb16BinarySerializer12VarIntEncodeIaEEvT_.exit

bb.b:                                             ; preds = %.lr.ph.i.preheader.i.i
  %i.d = or i8 %1, -128
  store i8 %i.d, ptr %i.a, align 16, !tbaa !98
  %4 = icmp ugt i8 %2, 63
  %spec.select.i.i = sext i1 %4 to i8
  br label %_ZN6duckdb16BinarySerializer12VarIntEncodeIaEEvT_.exit

_ZN6duckdb16BinarySerializer12VarIntEncodeIaEEvT_.exit: ; preds = %bb.a, %.lr.ph.i.preheader.i.i, %bb.b
  %.015.lcssa.i.i.i = phi i8 [ %1, %bb.a ], [ %1, %.lr.ph.i.preheader.i.i ], [ %spec.select.i.i, %bb.b ]
  %.014.lcssa.i.i.sroa.phi.i = phi ptr [ %i.a, %bb.a ], [ %i.a, %.lr.ph.i.preheader.i.i ], [ %.014.lcssa.i.i.sroa.gep3.i, %bb.b ]
  %.014.lcssa.i.i.i = phi i64 [ 1, %bb.a ], [ 1, %.lr.ph.i.preheader.i.i ], [ 2, %bb.b ]
  %5 = and i8 %.015.lcssa.i.i.i, 127
  store i8 %5, ptr %.014.lcssa.i.i.sroa.phi.i, align 1, !tbaa !98
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !9, !nonnull !92, !align !93 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !94
  %i.h = load ptr, ptr %i.g, align 8
  call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull %i.a, i64 noundef %.014.lcssa.i.i.i), !inline_history !107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb16BinarySerializer10WriteValueEt(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1328) %0, i16 noundef zeroext %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.09.i.i.i = phi i16 [ %1, %bb.a ], [ %i.d, %bb.b ] ; 2 uses
  %.08.i.i.i = phi i64 [ 0, %bb.a ], [ %i.e, %bb.b ] ; 2 uses
  %i.b = trunc i16 %.09.i.i.i to i8
  %i.c = and i8 %i.b, 127
  %i.d = lshr i16 %.09.i.i.i, 7                   ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.d, 0               ; 2 uses
  %masksel.i.i.i = select i1 %.not.i.i.i, i8 0, i8 -128
  %.0.i.i.i = or disjoint i8 %masksel.i.i.i, %i.c
  %i.e = add nuw nsw i64 %.08.i.i.i, 1            ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 %.08.i.i.i
  store i8 %.0.i.i.i, ptr %i.f, align 1, !tbaa !98
  br i1 %.not.i.i.i, label %_ZN6duckdb16BinarySerializer12VarIntEncodeItEEvT_.exit, label %bb.b, !llvm.loop !108

_ZN6duckdb16BinarySerializer12VarIntEncodeItEEvT_.exit: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !9, !nonnull !92, !align !93 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !94
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %i.a, i64 noundef %i.e), !inline_history !109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb16BinarySerializer10WriteValueEs(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1328) %0, i16 noundef signext %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = trunc i16 %1 to i8                       ; 2 uses
  %2 = ashr i16 %1, 7                             ; 2 uses
  %i.c = icmp eq i16 %2, 0
  %i.d = icmp ult i16 %1, 64
  %or.cond20.i.i.i = and i1 %i.d, %i.c
  br i1 %or.cond20.i.i.i, label %_ZN6duckdb16BinarySerializer12VarIntEncodeIsEEvT_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.b
  %3 = phi i16 [ %5, %bb.b ], [ %2, %bb.a ]       ; 5 uses
  %i.e = phi i8 [ %i.i, %bb.b ], [ %i.b, %bb.a ]  ; 2 uses
  %.01422.i.i.i = phi i64 [ %.1.i.i.i, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %.01521.i.i.i = phi i16 [ %3, %bb.b ], [ %1, %bb.a ]
  %i.f = icmp ne i16 %3, -1
  %4 = and i16 %.01521.i.i.i, 64
  %.not.i.i.i = icmp eq i16 %4, 0
  %or.cond16.i.i.i = or i1 %i.f, %.not.i.i.i
  br i1 %or.cond16.i.i.i, label %bb.b, label %_ZN6duckdb16BinarySerializer12VarIntEncodeIsEEvT_.exit

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.g = or i8 %i.e, -128
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %.01422.i.i.i
  store i8 %i.g, ptr %i.h, align 1, !tbaa !98
  %.1.i.i.i = add i64 %.01422.i.i.i, 1            ; 2 uses
  %i.i = trunc i16 %3 to i8                       ; 2 uses
  %5 = ashr i16 %3, 7                             ; 2 uses
  %i.j = icmp eq i16 %5, 0
  %i.k = icmp ult i16 %3, 64
  %or.cond.i.i.i = and i1 %i.k, %i.j
  br i1 %or.cond.i.i.i, label %_ZN6duckdb16BinarySerializer12VarIntEncodeIsEEvT_.exit, label %.lr.ph.i.i.i

_ZN6duckdb16BinarySerializer12VarIntEncodeIsEEvT_.exit: ; preds = %.lr.ph.i.i.i, %bb.b, %bb.a
  %.014.lcssa.i.i.i = phi i64 [ 0, %bb.a ], [ %.01422.i.i.i, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.b ] ; 2 uses
  %.lcssa.i.i.i = phi i8 [ %i.b, %bb.a ], [ %i.e, %.lr.ph.i.i.i ], [ %i.i, %bb.b ]
  %i.l = and i8 %.lcssa.i.i.i, 127
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 %.014.lcssa.i.i.i
  store i8 %i.l, ptr %i.m, align 1, !tbaa !98
  %.118.i.i.i = add i64 %.014.lcssa.i.i.i, 1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !9, !nonnull !92, !align !93 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !94
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull %i.a, i64 noundef %.118.i.i.i), !inline_history !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb16BinarySerializer10WriteValueEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1328) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.09.i.i.i = phi i32 [ %1, %bb.a ], [ %i.d, %bb.b ] ; 2 uses
  %.08.i.i.i = phi i64 [ 0, %bb.a ], [ %i.e, %bb.b ] ; 2 uses
  %i.b = trunc i32 %.09.i.i.i to i8
  %i.c = and i8 %i.b, 127
  %i.d = lshr i32 %.09.i.i.i, 7                   ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.d, 0               ; 2 uses
  %masksel.i.i.i = select i1 %.not.i.i.i, i8 0, i8 -128
  %.0.i.i.i = or disjoint i8 %masksel.i.i.i, %i.c
  %i.e = add nuw nsw i64 %.08.i.i.i, 1            ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 %.08.i.i.i
  store i8 %.0.i.i.i, ptr %i.f, align 1, !tbaa !98
  br i1 %.not.i.i.i, label %_ZN6duckdb16BinarySerializer12VarIntEncodeIjEEvT_.exit, label %bb.b, !llvm.loop !111

_ZN6duckdb16BinarySerializer12VarIntEncodeIjEEvT_.exit: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !9, !nonnull !92, !align !93 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !94
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %i.a, i64 noundef %i.e), !inline_history !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb16BinarySerializer10WriteValueEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1328) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = trunc i32 %1 to i8                       ; 2 uses
  %i.c = ashr i32 %1, 7                           ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  %i.e = icmp ult i32 %1, 64
  %or.cond20.i.i.i = and i1 %i.e, %i.d
  br i1 %or.cond20.i.i.i, label %_ZN6duckdb16BinarySerializer12VarIntEncodeIiEEvT_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.b
  %i.f = phi i32 [ %i.m, %bb.b ], [ %i.c, %bb.a ] ; 5 uses
  %i.g = phi i8 [ %i.l, %bb.b ], [ %i.b, %bb.a ]  ; 2 uses
  %.01422.i.i.i = phi i64 [ %.1.i.i.i, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %.01521.i.i.i = phi i32 [ %i.f, %bb.b ], [ %1, %bb.a ]
  %i.h = icmp ne i32 %i.f, -1
  %i.i = and i32 %.01521.i.i.i, 64
  %.not.i.i.i = icmp eq i32 %i.i, 0
  %or.cond16.i.i.i = or i1 %i.h, %.not.i.i.i
  br i1 %or.cond16.i.i.i, label %bb.b, label %_ZN6duckdb16BinarySerializer12VarIntEncodeIiEEvT_.exit

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.j = or i8 %i.g, -128
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 %.01422.i.i.i
  store i8 %i.j, ptr %i.k, align 1, !tbaa !98
  %.1.i.i.i = add i64 %.01422.i.i.i, 1            ; 2 uses
  %i.l = trunc i32 %i.f to i8                     ; 2 uses
  %i.m = ashr i32 %i.f, 7                         ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  %i.o = icmp ult i32 %i.f, 64
  %or.cond.i.i.i = and i1 %i.o, %i.n
  br i1 %or.cond.i.i.i, label %_ZN6duckdb16BinarySerializer12VarIntEncodeIiEEvT_.exit, label %.lr.ph.i.i.i

_ZN6duckdb16BinarySerializer12VarIntEncodeIiEEvT_.exit: ; preds = %.lr.ph.i.i.i, %bb.b, %bb.a
  %.014.lcssa.i.i.i = phi i64 [ 0, %bb.a ], [ %.01422.i.i.i, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.b ] ; 2 uses
  %.lcssa.i.i.i = phi i8 [ %i.b, %bb.a ], [ %i.g, %.lr.ph.i.i.i ], [ %i.l, %bb.b ]
  %i.p = and i8 %.lcssa.i.i.i, 127
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 %.014.lcssa.i.i.i
  store i8 %i.p, ptr %i.q, align 1, !tbaa !98
  %.118.i.i.i = add i64 %.014.lcssa.i.i.i, 1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !9, !nonnull !92, !align !93 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !94
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull %i.a, i64 noundef %.118.i.i.i), !inline_history !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb16BinarySerializer10WriteValueEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1328) %0, i64 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.09.i.i.i = phi i64 [ %1, %bb.a ], [ %i.d, %bb.b ] ; 2 uses
  %.08.i.i.i = phi i64 [ 0, %bb.a ], [ %i.e, %bb.b ] ; 2 uses
  %i.b = trunc i64 %.09.i.i.i to i8
  %i.c = and i8 %i.b, 127
  %i.d = lshr i64 %.09.i.i.i, 7                   ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.d, 0               ; 2 uses
  %masksel.i.i.i = select i1 %.not.i.i.i, i8 0, i8 -128
  %.0.i.i.i = or disjoint i8 %masksel.i.i.i, %i.c
  %i.e = add nuw nsw i64 %.08.i.i.i, 1            ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 %.08.i.i.i
  store i8 %.0.i.i.i, ptr %i.f, align 1, !tbaa !98
  br i1 %.not.i.i.i, label %_ZN6duckdb16BinarySerializer12VarIntEncodeImEEvT_.exit, label %bb.b, !llvm.loop !99

_ZN6duckdb16BinarySerializer12VarIntEncodeImEEvT_.exit: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !9, !nonnull !92, !align !93 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !94
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %i.a, i64 noundef %i.e), !inline_history !101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb16BinarySerializer10WriteValueEl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1328) %0, i64 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = trunc i64 %1 to i8                       ; 2 uses
  %i.c = ashr i64 %1, 7                           ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  %i.e = icmp ult i64 %1, 64
  %or.cond20.i.i.i = and i1 %i.e, %i.d
  br i1 %or.cond20.i.i.i, label %_ZN6duckdb16BinarySerializer12VarIntEncodeIlEEvT_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.b
  %i.f = phi i64 [ %i.m, %bb.b ], [ %i.c, %bb.a ] ; 5 uses
  %i.g = phi i8 [ %i.l, %bb.b ], [ %i.b, %bb.a ]  ; 2 uses
  %.01422.i.i.i = phi i64 [ %.1.i.i.i, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %.01521.i.i.i = phi i64 [ %i.f, %bb.b ], [ %1, %bb.a ]
  %i.h = icmp ne i64 %i.f, -1
  %i.i = and i64 %.01521.i.i.i, 64
  %.not.i.i.i = icmp eq i64 %i.i, 0
  %or.cond16.i.i.i = or i1 %i.h, %.not.i.i.i
  br i1 %or.cond16.i.i.i, label %bb.b, label %_ZN6duckdb16BinarySerializer12VarIntEncodeIlEEvT_.exit

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.j = or i8 %i.g, -128
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 %.01422.i.i.i
  store i8 %i.j, ptr %i.k, align 1, !tbaa !98
  %.1.i.i.i = add i64 %.01422.i.i.i, 1            ; 2 uses
  %i.l = trunc i64 %i.f to i8                     ; 2 uses
  %i.m = ashr i64 %i.f, 7                         ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  %i.o = icmp ult i64 %i.f, 64
  %or.cond.i.i.i = and i1 %i.o, %i.n
  br i1 %or.cond.i.i.i, label %_ZN6duckdb16BinarySerializer12VarIntEncodeIlEEvT_.exit, label %.lr.ph.i.i.i

_ZN6duckdb16BinarySerializer12VarIntEncodeIlEEvT_.exit: ; preds = %.lr.ph.i.i.i, %bb.b, %bb.a
  %.014.lcssa.i.i.i = phi i64 [ 0, %bb.a ], [ %.01422.i.i.i, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.b ] ; 2 uses
  %.lcssa.i.i.i = phi i8 [ %i.b, %bb.a ], [ %i.g, %.lr.ph.i.i.i ], [ %i.l, %bb.b ]
  %i.p = and i8 %.lcssa.i.i.i, 127
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 %.014.lcssa.i.i.i
  store i8 %i.p, ptr %i.q, align 1, !tbaa !98
  %.118.i.i.i = add i64 %.014.lcssa.i.i.i, 1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !9, !nonnull !92, !align !93 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !94
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull %i.a, i64 noundef %.118.i.i.i), !inline_history !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb16BinarySerializer10WriteValueENS_9hugeint_tE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1328) %0, i64 %1, i64 %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  %i.b = alloca [16 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = trunc i64 %2 to i8                       ; 2 uses
  %i.d = ashr i64 %2, 7                           ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  %i.f = icmp ult i64 %2, 64
  %or.cond20.i.i.i = and i1 %i.f, %i.e
  br i1 %or.cond20.i.i.i, label %_ZN6duckdb16BinarySerializer12VarIntEncodeIlEEvT_.exit, label %.lr.ph.i.i.i
end_hunk_0
