inline.NumInlined: 41
inline.NumDeleted: 27
begin_hunk_0_@_ZN6duckdb10MD5Context6FinishEPh:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !3    ; 2 uses
  %i.c = lshr i32 %i.b, 3
  %i.d = and i32 %i.c, 63                         ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.f = zext nneg i32 %i.d to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  store i8 -128, ptr %i.g, align 1, !tbaa !9
  %2 = xor i32 %i.d, 63                           ; 2 uses
  %3 = icmp samesign ult i32 %2, 8
  br i1 %3, label %_ZN6duckdbL11ByteReverseEPhj.exit, label %bb.b

_ZN6duckdbL11ByteReverseEPhj.exit:                ; preds = %bb.a
  %i.i = zext nneg i32 %2 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.h, i8 0, i64 %i.i, i1 false)
  tail call fastcc void @_ZN6duckdbL12MD5TransformEPjPKj(ptr noundef %0, ptr noundef %i.e)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.e, i8 0, i64 56, i1 false)
end_hunk_0
begin_hunk_1_@_ZN6duckdb10MD5Context6FinishEPh:bb.a
  br label %_ZN6duckdbL11ByteReverseEPhj.exit12

bb.b:                                             ; preds = %bb.a
  %i.j = sub nsw i32 55, %i.d
  %i.k = zext nneg i32 %i.j to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.h, i8 0, i64 %i.k, i1 false)
  br label %_ZN6duckdbL11ByteReverseEPhj.exit12
end_hunk_1
begin_hunk_2_@_ZN6duckdb10MD5Context9FinishHexEPc:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !3    ; 2 uses
  %i.d = lshr i32 %i.c, 3
  %i.e = and i32 %i.d, 63                         ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.g = zext nneg i32 %i.e to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 2 uses
  store i8 -128, ptr %i.h, align 1, !tbaa !9
  %2 = xor i32 %i.e, 63                           ; 2 uses
  %3 = icmp samesign ult i32 %2, 8
  br i1 %3, label %_ZN6duckdbL11ByteReverseEPhj.exit.i, label %bb.b

_ZN6duckdbL11ByteReverseEPhj.exit.i:              ; preds = %bb.a
  %i.j = zext nneg i32 %2 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.i, i8 0, i64 %i.j, i1 false)
  tail call fastcc void @_ZN6duckdbL12MD5TransformEPjPKj(ptr noundef nonnull align 4 dereferenceable(88) %0, ptr noundef %i.f)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.f, i8 0, i64 56, i1 false)
end_hunk_2
begin_hunk_3_@_ZN6duckdb10MD5Context9FinishHexEPc:bb.a
  br label %_ZN6duckdb10MD5Context6FinishEPh.exit

bb.b:                                             ; preds = %bb.a
  %i.k = sub nsw i32 55, %i.e
  %i.l = zext nneg i32 %i.k to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.i, i8 0, i64 %i.l, i1 false)
  br label %_ZN6duckdb10MD5Context6FinishEPh.exit
end_hunk_3
begin_hunk_4_@_ZN6duckdb10MD5Context9FinishHexB5cxx11Ev:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.f = lshr i32 %i.e, 3
  %i.g = and i32 %i.f, 63                         ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.i = zext nneg i32 %i.g to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 2 uses
  store i8 -128, ptr %i.j, align 1, !tbaa !9
  %2 = xor i32 %i.g, 63                           ; 2 uses
  %3 = icmp samesign ult i32 %2, 8
  br i1 %3, label %_ZN6duckdbL11ByteReverseEPhj.exit.i.i, label %bb.b

_ZN6duckdbL11ByteReverseEPhj.exit.i.i:            ; preds = %bb.a
  %i.l = zext nneg i32 %2 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.k, i8 0, i64 %i.l, i1 false)
  tail call fastcc void @_ZN6duckdbL12MD5TransformEPjPKj(ptr noundef nonnull align 4 dereferenceable(88) %1, ptr noundef %i.h)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.h, i8 0, i64 56, i1 false)
end_hunk_4
begin_hunk_5_@_ZN6duckdb10MD5Context9FinishHexB5cxx11Ev:bb.a
  br label %_ZN6duckdb10MD5Context9FinishHexEPc.exit

bb.b:                                             ; preds = %bb.a
  %i.m = sub nsw i32 55, %i.g
  %i.n = zext nneg i32 %i.m to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.k, i8 0, i64 %i.n, i1 false)
  br label %_ZN6duckdb10MD5Context9FinishHexEPc.exit
end_hunk_5
