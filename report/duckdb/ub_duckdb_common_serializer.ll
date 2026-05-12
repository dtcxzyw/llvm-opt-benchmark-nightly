inline.NumInlined: 829
inline.NumDeleted: 500
begin_hunk_0_@_ZN6duckdb16BinarySerializer10WriteValueENS_8string_tE
define void @_ZN6duckdb16BinarySerializer10WriteValueENS_8string_tE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(1328) %0, i64 %1, ptr %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  %3 = alloca %"struct.duckdb::string_t", align 8 ; 3 uses
  store i64 %1, ptr %3, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.b, align 8
  %i.c = and i64 %1, 4294967295
  %i.d = tail call noundef i32 @_ZN6duckdb15NumericCastImplIjmLb0EE7ConvertEm(i64 noundef %i.c) ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6duckdb16BinarySerializer10WriteValueENS_8string_tE:bb.a
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
end_hunk_1
begin_hunk_2_@_ZN6duckdb18BinaryDeserializer15OnPropertyBeginEtPKc
define void @_ZN6duckdb18BinaryDeserializer15OnPropertyBeginEtPKc(ptr noundef nonnull align 8 captures(none) dereferenceable(652) %0, i16 noundef zeroext %1, ptr readnone captures(none) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i16, align 2                      ; 2 uses
  %i.c = alloca i16, align 2                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
end_hunk_2
begin_hunk_3_@_ZN6duckdb18BinaryDeserializer15OnPropertyBeginEtPKc:bb.a
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
end_hunk_3
