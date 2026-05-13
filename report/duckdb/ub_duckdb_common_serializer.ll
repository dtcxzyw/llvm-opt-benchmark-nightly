inline.NumInlined: 829
inline.NumDeleted: 500
begin_hunk_0_@_ZN6duckdb16BinarySerializer10WriteValueENS_9hugeint_tE:bb.a
  %i.g = phi i64 [ %i.n, %bb.b ], [ %i.d, %bb.a ] ; 5 uses
  %i.h = phi i8 [ %i.m, %bb.b ], [ %i.c, %bb.a ]  ; 2 uses
  %.01422.i.i.i = phi i64 [ %.1.i.i.i, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %.01521.i.i.i = phi i64 [ %i.g, %bb.b ], [ %2, %bb.a ]
  %i.i = icmp ne i64 %i.g, -1
  %i.j = and i64 %.01521.i.i.i, 64
  %.not.i.i.i = icmp eq i64 %i.j, 0
  %or.cond16.i.i.i = or i1 %i.i, %.not.i.i.i
  br i1 %or.cond16.i.i.i, label %bb.b, label %_ZN6duckdb16BinarySerializer12VarIntEncodeIlEEvT_.exit

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.k = or i8 %i.h, -128
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 %.01422.i.i.i
  store i8 %i.k, ptr %i.l, align 1, !tbaa !98
  %.1.i.i.i = add i64 %.01422.i.i.i, 1            ; 2 uses
  %i.m = trunc i64 %i.g to i8                     ; 2 uses
  %i.n = ashr i64 %i.g, 7                         ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  %i.p = icmp ult i64 %i.g, 64
  %or.cond.i.i.i = and i1 %i.p, %i.o
  br i1 %or.cond.i.i.i, label %_ZN6duckdb16BinarySerializer12VarIntEncodeIlEEvT_.exit, label %.lr.ph.i.i.i

_ZN6duckdb16BinarySerializer12VarIntEncodeIlEEvT_.exit: ; preds = %.lr.ph.i.i.i, %bb.b, %bb.a
  %.014.lcssa.i.i.i = phi i64 [ 0, %bb.a ], [ %.01422.i.i.i, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.b ] ; 2 uses
  %.lcssa.i.i.i = phi i8 [ %i.c, %bb.a ], [ %i.h, %.lr.ph.i.i.i ], [ %i.m, %bb.b ]
  %i.q = and i8 %.lcssa.i.i.i, 127
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 %.014.lcssa.i.i.i
  store i8 %i.q, ptr %i.r, align 1, !tbaa !98
  %.118.i.i.i = add i64 %.014.lcssa.i.i.i, 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !9, !nonnull !92, !align !93 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !94
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull %i.b, i64 noundef %.118.i.i.i), !inline_history !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZN6duckdb16BinarySerializer12VarIntEncodeIlEEvT_.exit
  %.09.i.i.i = phi i64 [ %1, %_ZN6duckdb16BinarySerializer12VarIntEncodeIlEEvT_.exit ], [ %i.y, %bb.c ] ; 2 uses
  %.08.i.i.i = phi i64 [ 0, %_ZN6duckdb16BinarySerializer12VarIntEncodeIlEEvT_.exit ], [ %i.z, %bb.c ] ; 2 uses
  %i.w = trunc i64 %.09.i.i.i to i8
  %i.x = and i8 %i.w, 127
  %i.y = lshr i64 %.09.i.i.i, 7                   ; 2 uses
  %.not.i.i.i1 = icmp eq i64 %i.y, 0              ; 2 uses
  %masksel.i.i.i = select i1 %.not.i.i.i1, i8 0, i8 -128
  %.0.i.i.i = or disjoint i8 %masksel.i.i.i, %i.x
  %i.z = add nuw nsw i64 %.08.i.i.i, 1            ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 %.08.i.i.i
  store i8 %.0.i.i.i, ptr %i.aa, align 1, !tbaa !98
  br i1 %.not.i.i.i1, label %_ZN6duckdb16BinarySerializer12VarIntEncodeImEEvT_.exit, label %bb.c, !llvm.loop !99

_ZN6duckdb16BinarySerializer12VarIntEncodeImEEvT_.exit: ; preds = %bb.c
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !9, !nonnull !92, !align !93 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !94
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull %i.a, i64 noundef %i.z), !inline_history !101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb16BinarySerializer10WriteValueENS_10uhugeint_tE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(1328) %0, i64 %1, i64 %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  %i.b = alloca [16 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.09.i.i.i = phi i64 [ %2, %bb.a ], [ %i.e, %bb.b ] ; 2 uses
  %.08.i.i.i = phi i64 [ 0, %bb.a ], [ %i.f, %bb.b ] ; 2 uses
  %i.c = trunc i64 %.09.i.i.i to i8
  %i.d = and i8 %i.c, 127
  %i.e = lshr i64 %.09.i.i.i, 7                   ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.e, 0               ; 2 uses
  %masksel.i.i.i = select i1 %.not.i.i.i, i8 0, i8 -128
  %.0.i.i.i = or disjoint i8 %masksel.i.i.i, %i.d
  %i.f = add nuw nsw i64 %.08.i.i.i, 1            ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 %.08.i.i.i
  store i8 %.0.i.i.i, ptr %i.g, align 1, !tbaa !98
  br i1 %.not.i.i.i, label %_ZN6duckdb16BinarySerializer12VarIntEncodeImEEvT_.exit, label %bb.b, !llvm.loop !99

_ZN6duckdb16BinarySerializer12VarIntEncodeImEEvT_.exit: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !9, !nonnull !92, !align !93 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !94
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull %i.b, i64 noundef %i.f), !inline_history !101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZN6duckdb16BinarySerializer12VarIntEncodeImEEvT_.exit
  %.09.i.i.i1 = phi i64 [ %1, %_ZN6duckdb16BinarySerializer12VarIntEncodeImEEvT_.exit ], [ %i.n, %bb.c ] ; 2 uses
  %.08.i.i.i2 = phi i64 [ 0, %_ZN6duckdb16BinarySerializer12VarIntEncodeImEEvT_.exit ], [ %i.o, %bb.c ] ; 2 uses
  %i.l = trunc i64 %.09.i.i.i1 to i8
  %i.m = and i8 %i.l, 127
  %i.n = lshr i64 %.09.i.i.i1, 7                  ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %i.n, 0              ; 2 uses
  %masksel.i.i.i4 = select i1 %.not.i.i.i3, i8 0, i8 -128
  %.0.i.i.i5 = or disjoint i8 %masksel.i.i.i4, %i.m
  %i.o = add nuw nsw i64 %.08.i.i.i2, 1           ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 %.08.i.i.i2
  store i8 %.0.i.i.i5, ptr %i.p, align 1, !tbaa !98
  br i1 %.not.i.i.i3, label %_ZN6duckdb16BinarySerializer12VarIntEncodeImEEvT_.exit6, label %bb.c, !llvm.loop !99

_ZN6duckdb16BinarySerializer12VarIntEncodeImEEvT_.exit6: ; preds = %bb.c
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !9, !nonnull !92, !align !93 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !94
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull %i.a, i64 noundef %i.o), !inline_history !101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb16BinarySerializer10WriteValueEf(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(1328) %0, float noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store float %1, ptr %i.a, align 4, !tbaa !115
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9, !nonnull !92, !align !93 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !94
  %i.e = load ptr, ptr %i.d, align 8
  call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull %i.a, i64 noundef 4), !inline_history !116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb16BinarySerializer10WriteValueEd(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(1328) %0, double noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store double %1, ptr %i.a, align 8, !tbaa !117
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9, !nonnull !92, !align !93 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !94
  %i.e = load ptr, ptr %i.d, align 8
  call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull %i.a, i64 noundef 8), !inline_history !119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb16BinarySerializer10WriteValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(1328) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !120
  %i.d = tail call noundef i32 @_ZN6duckdb15NumericCastImplIjmLb0EE7ConvertEm(i64 noundef %i.c) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.09.i.i.i = phi i32 [ %i.d, %bb.a ], [ %i.g, %bb.b ] ; 2 uses
  %.08.i.i.i = phi i64 [ 0, %bb.a ], [ %i.h, %bb.b ] ; 2 uses
  %i.e = trunc i32 %.09.i.i.i to i8
  %i.f = and i8 %i.e, 127
  %i.g = lshr i32 %.09.i.i.i, 7                   ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.g, 0               ; 2 uses
  %masksel.i.i.i = select i1 %.not.i.i.i, i8 0, i8 -128
  %.0.i.i.i = or disjoint i8 %masksel.i.i.i, %i.f
  %i.h = add nuw nsw i64 %.08.i.i.i, 1            ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %.08.i.i.i
  store i8 %.0.i.i.i, ptr %i.i, align 1, !tbaa !98
  br i1 %.not.i.i.i, label %_ZN6duckdb16BinarySerializer12VarIntEncodeIjEEvT_.exit, label %bb.b, !llvm.loop !111

_ZN6duckdb16BinarySerializer12VarIntEncodeIjEEvT_.exit: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !9, !nonnull !92, !align !93 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !94
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull %i.a, i64 noundef %i.h), !inline_history !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.n = load ptr, ptr %1, align 8, !tbaa !121
  %i.o = zext i32 %i.d to i64
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !9, !nonnull !92, !align !93 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !94
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef %i.n, i64 noundef %i.o), !inline_history !122
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb16BinarySerializer10WriteValueENS_8string_tE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(1328) %0, i64 %1, ptr %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  %3 = alloca %"struct.duckdb::string_t", align 8 ; 3 uses
  store i64 %1, ptr %3, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.b, align 8
  %i.c = and i64 %1, 4294967295
  %i.d = tail call noundef i32 @_ZN6duckdb15NumericCastImplIjmLb0EE7ConvertEm(i64 noundef %i.c) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.09.i.i.i = phi i32 [ %i.d, %bb.a ], [ %i.g, %bb.b ] ; 2 uses
  %.08.i.i.i = phi i64 [ 0, %bb.a ], [ %i.h, %bb.b ] ; 2 uses
  %i.e = trunc i32 %.09.i.i.i to i8
  %i.f = and i8 %i.e, 127
  %i.g = lshr i32 %.09.i.i.i, 7                   ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.g, 0               ; 2 uses
  %masksel.i.i.i = select i1 %.not.i.i.i, i8 0, i8 -128
  %.0.i.i.i = or disjoint i8 %masksel.i.i.i, %i.f
  %i.h = add nuw nsw i64 %.08.i.i.i, 1            ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %.08.i.i.i
  store i8 %.0.i.i.i, ptr %i.i, align 1, !tbaa !98
  br i1 %.not.i.i.i, label %_ZN6duckdb16BinarySerializer12VarIntEncodeIjEEvT_.exit, label %bb.b, !llvm.loop !111

_ZN6duckdb16BinarySerializer12VarIntEncodeIjEEvT_.exit: ; preds = %bb.b
  %4 = trunc i64 %1 to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !9, !nonnull !92, !align !93 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !94
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull %i.a, i64 noundef %i.h), !inline_history !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.n = icmp ult i32 %4, 13
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.p = select i1 %i.n, ptr %i.o, ptr %2
  %i.q = zext i32 %i.d to i64
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !9, !nonnull !92, !align !93 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !94
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef %i.p, i64 noundef %i.q), !inline_history !122
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb16BinarySerializer10WriteValueEPKc(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(1328) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #25
  %i.c = tail call noundef i32 @_ZN6duckdb15NumericCastImplIjmLb0EE7ConvertEm(i64 noundef %i.b) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.09.i.i.i = phi i32 [ %i.c, %bb.a ], [ %i.f, %bb.b ] ; 2 uses
  %.08.i.i.i = phi i64 [ 0, %bb.a ], [ %i.g, %bb.b ] ; 2 uses
  %i.d = trunc i32 %.09.i.i.i to i8
  %i.e = and i8 %i.d, 127
  %i.f = lshr i32 %.09.i.i.i, 7                   ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.f, 0               ; 2 uses
  %masksel.i.i.i = select i1 %.not.i.i.i, i8 0, i8 -128
  %.0.i.i.i = or disjoint i8 %masksel.i.i.i, %i.e
  %i.g = add nuw nsw i64 %.08.i.i.i, 1            ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %.08.i.i.i
  store i8 %.0.i.i.i, ptr %i.h, align 1, !tbaa !98
  br i1 %.not.i.i.i, label %_ZN6duckdb16BinarySerializer12VarIntEncodeIjEEvT_.exit, label %bb.b, !llvm.loop !111

_ZN6duckdb16BinarySerializer12VarIntEncodeIjEEvT_.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !9, !nonnull !92, !align !93 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !94
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull %i.a, i64 noundef %i.g), !inline_history !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.m = zext i32 %i.c to i64
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !9, !nonnull !92, !align !93 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !94
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull %1, i64 noundef %i.m), !inline_history !122
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb16BinarySerializer12WriteDataPtrEPKhm(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(1328) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.09.i.i.i = phi i64 [ %2, %bb.a ], [ %i.d, %bb.b ] ; 2 uses
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
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !9, !nonnull !92, !align !93 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !94
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %i.a, i64 noundef %i.e), !inline_history !101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !9, !nonnull !92, !align !93 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !94
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef %1, i64 noundef %2), !inline_history !123
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb18BinaryDeserializer15OnPropertyBeginEtPKc(ptr noundef nonnull align 8 captures(none) dereferenceable(652) %0, i16 noundef zeroext %1, ptr readnone captures(none) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i16, align 2                      ; 2 uses
  %i.c = alloca i16, align 2                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  store i16 %1, ptr %i.b, align 2, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !124, !range !128, !noundef !92
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.d, align 8, !tbaa !124
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 650
  %i.h = load i16, ptr %i.g, align 2, !tbaa !129
  br label %_ZN6duckdb18BinaryDeserializer9NextFieldEv.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !130, !nonnull !92, !align !93 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !94
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull %i.a, i64 noundef 2), !inline_history !131
  %i.m = load i16, ptr %i.a, align 2, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZN6duckdb18BinaryDeserializer9NextFieldEv.exit

_ZN6duckdb18BinaryDeserializer9NextFieldEv.exit:  ; preds = %bb.b, %bb.c
  %.0.i = phi i16 [ %i.h, %bb.b ], [ %i.m, %bb.c ] ; 2 uses
  store i16 %.0.i, ptr %i.c, align 2, !tbaa !7
  %.not = icmp eq i16 %.0.i, %1
  br i1 %.not, label %bb.j, label %bb.d

bb.d:                                             ; preds = %_ZN6duckdb18BinaryDeserializer9NextFieldEv.exit
  %i.n = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6duckdb22SerializationExceptionC2IJRKtRtEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 2 dereferenceable(2) %i.b, ptr noundef nonnull align 2 dereferenceable(2) %i.c)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTIN6duckdb22SerializationExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.k unwind label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i1 [ false, %bb.f ], [ true, %bb.e ]  ; 2 uses
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !121    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.q) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br i1 %.0, label %bb.h, label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br i1 %.0, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.n) #24
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn8 = phi { ptr, i32 } [ %.pn9, %bb.h ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  resume { ptr, i32 } %.pn8

bb.j:                                             ; preds = %_ZN6duckdb18BinaryDeserializer9NextFieldEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  ret void

bb.k:                                             ; preds = %bb.f
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0 align 2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb22SerializationExceptionC2IJRKtRtEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 2 dereferenceable(2) %2, ptr noundef nonnull align 2 dereferenceable(2) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.184", align 8   ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !132
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !noalias !132
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveItJRKtEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RSt6vectorINS_20ExceptionFormatValueESaISD_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 2 dereferenceable(2) %2, ptr noundef nonnull align 2 dereferenceable(2) %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %4, align 8, !tbaa !135, !noalias !132 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !138, !noalias !132 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i ], [ %i.a, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !121  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.e) #27
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !139

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %4, align 8, !tbaa !135, !noalias !132
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.i = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.a, %bb.b ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i, label %_ZN6duckdb9Exception16ConstructMessageIJttEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.i) #27
  br label %_ZN6duckdb9Exception16ConstructMessageIJttEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !132
  br label %common.resume

_ZN6duckdb9Exception16ConstructMessageIJttEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !132
  invoke void @_ZN6duckdb22SerializationExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJttEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_.exit
  %i.k = load ptr, ptr %5, align 8, !tbaa !121    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.k) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret void

bb.f:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJttEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %5, align 8, !tbaa !121    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.o) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %common.resume
}

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #4

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN6duckdb18BinaryDeserializer13OnPropertyEndEv(ptr nonnull readnone align 8 captures(none) %0) unnamed_addr #1 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb18BinaryDeserializer23OnOptionalPropertyBeginEtPKc(ptr noundef nonnull align 8 captures(none) dereferenceable(652) %0, i16 noundef zeroext %1, ptr readnone captures(none) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !124, !range !128, !noundef !92
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._crit_edge.i, label %bb.b

._crit_edge.i:                                    ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 650
  %.pre.i = load i16, ptr %.phi.trans.insert.i, align 2, !tbaa !129
  br label %_ZN6duckdb18BinaryDeserializer9PeekFieldEv.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !130, !nonnull !92, !align !93 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !94
  %i.h = load ptr, ptr %i.g, align 8
  call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull %i.a, i64 noundef 2), !inline_history !140
  %i.i = load i16, ptr %i.a, align 2, !tbaa !7    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 650
  store i16 %i.i, ptr %i.j, align 2, !tbaa !129
end_hunk_0
