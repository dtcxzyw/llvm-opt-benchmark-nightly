inline.NumInlined: 7
inline.NumDeleted: 3
begin_hunk_0_@utrie2_openDummy_78:bb.a
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.c = icmp eq i32 %0, 0                        ; 2 uses
  %. = select i1 %i.c, i32 4632, i32 5024         ; 2 uses
  %i.d = tail call noalias dereferenceable_or_null(80) ptr @uprv_malloc_78(i64 noundef 80) #12 ; 19 uses
  %i.e = icmp eq ptr %i.d, null
end_hunk_0
begin_hunk_1_@utrie2_openDummy_78:bb.a
bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, i8 0, i64 80, i1 false)
  %i.f = zext nneg i32 %. to i64
  %i.g = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.f) #12 ; 84 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store ptr %i.g, ptr %i.h, align 8
  %i.i = icmp eq ptr %i.g, null
end_hunk_1
begin_hunk_2_@utrie2_openDummy_78:bb.a
  store i32 %., ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  store i8 1, ptr %i.k, align 4
  %.113 = select i1 %i.c, i32 2112, i32 0         ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i32 2112, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i32 196, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i16 0, ptr %i.n, align 8
  %4 = trunc nuw nsw i32 %.113 to i16             ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 34
  store i16 %4, ptr %i.o, align 2
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 36
end_hunk_2
begin_hunk_3_@utrie2_openDummy_78:bb.a
  store i32 %2, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  store i32 0, ptr %i.r, align 4
  %5 = add nuw nsw i32 %.113, 192
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i32 %5, ptr %i.s, align 8
  store i32 1416784178, ptr %i.g, align 4
end_hunk_3
begin_hunk_4_@utrie2_openDummy_78:bb.a
  store i16 0, ptr %i.x, align 2
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 6 uses
  store ptr %i.y, ptr %i.d, align 8
  %6 = lshr exact i32 %.113, 2
  %7 = trunc nuw nsw i32 %6 to i16
  %i.z = getelementptr i8, ptr %i.g, i64 4176
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %7, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 10 uses
  br label %vector.body

end_hunk_4
begin_hunk_5_@utrie2_openDummy_78:bb.a
  br i1 %i.ak, label %.preheader119, label %vector.body, !llvm.loop !5

.preheader119:                                    ; preds = %vector.body
  %i.al = getelementptr i8, ptr %i.g, i64 4192
  %8 = insertelement <2 x i16> poison, i16 %4, i64 0
  %i.am = shufflevector <2 x i16> %8, <2 x i16> poison, <8 x i32> zeroinitializer
  %9 = or disjoint <8 x i16> %i.am, <i16 128, i16 128, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>
  store <8 x i16> %9, ptr %i.z, align 2
  %i.an = getelementptr i8, ptr %i.g, i64 4208
  %10 = insertelement <8 x i16> poison, i16 %4, i64 0
  %11 = shufflevector <8 x i16> %10, <8 x i16> poison, <8 x i32> zeroinitializer ; 3 uses
  store <8 x i16> %11, ptr %i.al, align 2
  %i.ao = getelementptr i8, ptr %i.g, i64 4224
  store <8 x i16> %11, ptr %i.an, align 2
  %i.ap = getelementptr i8, ptr %i.g, i64 4240    ; 4 uses
  store <8 x i16> %11, ptr %i.ao, align 2
  %trunc = trunc nuw i32 %0 to i1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
end_hunk_5
