Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/ftstroke?download=true
inline.NumInlined: 59
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@llvm.lifetime.end.p0
; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @FT_Outline_GetOutsideBorder(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @FT_Outline_Get_Orientation(ptr noundef %0) #10
  %i.b = icmp ne i32 %i.a, 0
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define i32 @FT_Stroker_New(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not14 = icmp eq ptr %1, null
  br i1 %.not14, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = load ptr, ptr %0, align 8, !tbaa !18     ; 3 uses
  %i.c = call ptr @ft_mem_alloc(ptr noundef %i.b, i64 noundef 216, ptr noundef nonnull %i.a) #10 ; 10 uses
  %i.d = load i32, ptr %i.a, align 4, !tbaa !19   ; 2 uses
  %.not15 = icmp eq i32 %i.d, 0
  br i1 %.not15, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  store ptr %0, ptr %i.e, align 8, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  store ptr %i.b, ptr %i.g, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 140
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.h, align 4, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  store i8 0, ptr %i.i, align 8, !tbaa !30
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  store ptr %i.b, ptr %i.k, align 8, !tbaa !28
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 188
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.l, align 4, !tbaa !29
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  store i8 0, ptr %i.m, align 8, !tbaa !30
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store ptr %i.c, ptr %1, align 8, !tbaa !76
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.a, %bb.e
  %.0 = phi i32 [ %i.d, %bb.e ], [ 33, %bb.a ], [ 6, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.0
}

declare hidden ptr @ft_mem_alloc(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @FT_Stroker_Set(ptr nofree noundef writeonly captures(address_is_null) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %FT_Stroker_Rewind.exit

FT_Stroker_Rewind.exit:                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %1, ptr %i.a, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %2, ptr %i.b, align 4, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %3, ptr %i.c, align 8, !tbaa !33
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %spec.select = tail call i64 @llvm.smax.i64(i64 %4, i64 65536)
  store i64 %spec.select, ptr %i.d, align 8, !tbaa !34
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %3, ptr %i.e, align 4, !tbaa !35
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 0, ptr %i.f, align 8, !tbaa !36
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 -1, ptr %i.g, align 4, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i8 0, ptr %i.h, align 8, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 0, ptr %i.i, align 8, !tbaa !36
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i32 -1, ptr %i.j, align 4, !tbaa !29
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i8 0, ptr %i.k, align 8, !tbaa !30
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %FT_Stroker_Rewind.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @FT_Stroker_Rewind(ptr nofree noundef writeonly captures(address_is_null) %0) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 0, ptr %i.a, align 8, !tbaa !36
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 -1, ptr %i.b, align 4, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i8 0, ptr %i.c, align 8, !tbaa !30
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 0, ptr %i.d, align 8, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i32 -1, ptr %i.e, align 4, !tbaa !29
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i8 0, ptr %i.f, align 8, !tbaa !30
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @FT_Stroker_Done(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !28   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !37
  tail call void @ft_mem_free(ptr noundef %i.f, ptr noundef %i.h) #10
  store ptr null, ptr %i.g, align 8, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !38
  tail call void @ft_mem_free(ptr noundef %i.f, ptr noundef %i.j) #10
  store ptr null, ptr %i.i, align 8, !tbaa !38
  store i32 0, ptr %i.d, align 8, !tbaa !36
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 0, ptr %i.k, align 4, !tbaa !39
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 -1, ptr %i.l, align 4, !tbaa !29
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i8 0, ptr %i.m, align 8, !tbaa !30
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !28   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !37
  tail call void @ft_mem_free(ptr noundef %i.p, ptr noundef %i.r) #10
  store ptr null, ptr %i.q, align 8, !tbaa !37
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !38
  tail call void @ft_mem_free(ptr noundef %i.p, ptr noundef %i.t) #10
  store ptr null, ptr %i.s, align 8, !tbaa !38
  store i32 0, ptr %i.n, align 8, !tbaa !36
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i32 0, ptr %i.u, align 4, !tbaa !39
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i32 -1, ptr %i.v, align 4, !tbaa !29
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i8 0, ptr %i.w, align 8, !tbaa !30
  store ptr null, ptr %i.a, align 8, !tbaa !24
  tail call void @ft_mem_free(ptr noundef %i.c, ptr noundef nonnull %0) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare hidden void @ft_mem_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @FT_Stroker_LineTo(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.FT_Vector_, align 16        ; 10 uses
  %3 = alloca %struct.FT_Vector_, align 16        ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8, !tbaa !40     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !41   ; 2 uses
  %i.f = sub nsw i64 %i.c, %i.e
  store i64 %i.f, ptr %2, align 16, !tbaa !40
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !42   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !43   ; 2 uses
  %i.k = sub nsw i64 %i.h, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.k, ptr %i.l, align 8, !tbaa !42
  %i.m = icmp eq i64 %i.c, %i.e
  %i.n = icmp eq i64 %i.h, %i.j
  %or.cond4 = select i1 %i.m, i1 %i.n, i1 false
  br i1 %or.cond4, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = call i64 @FT_Vector_Length(ptr noundef nonnull %2) #10 ; 3 uses
  %i.p = load i64, ptr %2, align 16, !tbaa !40
  %i.q = load i64, ptr %i.l, align 8, !tbaa !42
  %i.r = call i64 @FT_Atan2(i64 noundef %i.p, i64 noundef %i.q) #10 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.t = load i64, ptr %i.s, align 8, !tbaa !31
  %i.u = add nsw i64 %i.r, 5898240
  call void @FT_Vector_From_Polar(ptr noundef nonnull %2, i64 noundef %i.t, i64 noundef %i.u) #10
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load i8, ptr %i.v, align 8, !tbaa !44
  %.not = icmp eq i8 %i.w, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = call fastcc i32 @ft_stroker_subpath_start(ptr noundef %0, i64 noundef %i.r, i64 noundef %i.o) ; 2 uses
  %.not49 = icmp eq i32 %i.x, 0
  br i1 %.not49, label %bb.f, label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.r, ptr %i.y, align 8, !tbaa !45
  %i.z = call fastcc i32 @ft_stroker_process_corner(ptr noundef %0, i64 noundef %i.o) ; 2 uses
  %.not48 = icmp eq i32 %i.z, 0
  br i1 %.not48, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.ab = load <2 x i64>, ptr %1, align 8, !tbaa !46
  %i.ac = load <2 x i64>, ptr %2, align 16, !tbaa !46
  %i.ad = add nsw <2 x i64> %i.ac, %i.ab
  store <2 x i64> %i.ad, ptr %3, align 16, !tbaa !46
  %i.ae = call fastcc i32 @ft_stroke_border_lineto(ptr noundef %i.aa, ptr noundef %3, i8 noundef zeroext 1) ; 2 uses
  %.not50 = icmp eq i32 %i.ae, 0
  br i1 %.not50, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.lcssa = phi i32 [ %i.ae, %bb.f ], [ %i.ak, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.ag = load <2 x i64>, ptr %2, align 16, !tbaa !46 ; 2 uses
  %i.ah = sub nsw <2 x i64> zeroinitializer, %i.ag
  store <2 x i64> %i.ah, ptr %2, align 16, !tbaa !46
  %i.ai = load <2 x i64>, ptr %1, align 8, !tbaa !46
  %i.aj = sub nsw <2 x i64> %i.ai, %i.ag
  store <2 x i64> %i.aj, ptr %3, align 16, !tbaa !46
  %i.ak = call fastcc i32 @ft_stroke_border_lineto(ptr noundef %i.af, ptr noundef %3, i8 noundef zeroext 1) ; 2 uses
  %.not50.1 = icmp eq i32 %i.ak, 0
  br i1 %.not50.1, label %bb.i, label %bb.g

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  store i64 %i.r, ptr %0, align 8, !tbaa !47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !48
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.o, ptr %i.al, align 8, !tbaa !49
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i, %bb.b, %bb.d, %bb.e, %bb.a
  %.041 = phi i32 [ 6, %bb.a ], [ 0, %bb.b ], [ %i.x, %bb.d ], [ %.lcssa, %bb.g ], [ 0, %bb.i ], [ %i.z, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret i32 %.041
}

declare i64 @FT_Vector_Length(ptr noundef) local_unnamed_addr #2

declare i64 @FT_Atan2(i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @FT_Vector_From_Polar(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ft_stroker_subpath_start(ptr nofree noundef nonnull captures(none) initializes((136, 137)) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.FT_Vector_, align 16        ; 5 uses
  %4 = alloca %struct.FT_Vector_, align 16        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load i64, ptr %i.a, align 8, !tbaa !31
  %i.c = add nsw i64 %1, 5898240
  call void @FT_Vector_From_Polar(ptr noundef nonnull %3, i64 noundef %i.b, i64 noundef %i.c) #10
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load <2 x i64>, ptr %i.d, align 8, !tbaa !46
  %i.f = load <2 x i64>, ptr %3, align 16, !tbaa !46
  %i.g = add nsw <2 x i64> %i.f, %i.e
  store <2 x i64> %i.g, ptr %4, align 16, !tbaa !46
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !29   ; 5 uses
  %i.k = icmp sgt i32 %i.j, -1
  %.pre7.i = load i32, ptr %i.h, align 8, !tbaa !36 ; 4 uses
  br i1 %i.k, label %bb.b, label %ft_stroke_border_moveto.exit

bb.b:                                             ; preds = %bb.a
  %i.l = add nuw i32 %i.j, 1
  %.not.i.i = icmp ugt i32 %.pre7.i, %i.l
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.j, ptr %i.h, align 8, !tbaa !36
  br label %ft_stroke_border_moveto.exit

bb.d:                                             ; preds = %bb.b
  %i.m = add i32 %.pre7.i, -1                     ; 2 uses
  store i32 %i.m, ptr %i.h, align 8, !tbaa !36
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !37   ; 2 uses
  %i.p = zext nneg i32 %i.j to i64                ; 3 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.p
  %i.r = zext i32 %i.m to i64                     ; 2 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !48
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !38   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.r
  %i.w = load i8, ptr %i.v, align 1, !tbaa !50
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.p
  store i8 %i.w, ptr %i.x, align 1, !tbaa !50
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !38
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.p ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !50
  %i.ab = or i8 %i.aa, 4
  store i8 %i.ab, ptr %i.z, align 1, !tbaa !50
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !38
  %i.ad = add i32 %.pre7.i, -2
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ae ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !50
  %i.ah = or i8 %i.ag, 8
  store i8 %i.ah, ptr %i.af, align 1, !tbaa !50
  %.pre.pre.i = load i32, ptr %i.h, align 8, !tbaa !36
  br label %ft_stroke_border_moveto.exit

ft_stroke_border_moveto.exit:                     ; preds = %bb.a, %bb.c, %bb.d
  %i.ai = phi i32 [ %.pre7.i, %bb.a ], [ %i.j, %bb.c ], [ %.pre.pre.i, %bb.d ]
  store i32 %i.ai, ptr %i.i, align 4, !tbaa !29
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 0, ptr %i.aj, align 8, !tbaa !51
  %i.ak = call fastcc i32 @ft_stroke_border_lineto(ptr noundef nonnull %i.h, ptr noundef nonnull readonly %4, i8 noundef zeroext 0) ; 2 uses
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %bb.e, label %bb.i

bb.e:                                             ; preds = %ft_stroke_border_moveto.exit
  %i.al = load <2 x i64>, ptr %i.d, align 8, !tbaa !46
  %i.am = load <2 x i64>, ptr %3, align 16, !tbaa !46
  %i.an = sub nsw <2 x i64> %i.al, %i.am
  store <2 x i64> %i.an, ptr %4, align 16, !tbaa !46
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !29 ; 5 uses
  %i.ar = icmp sgt i32 %i.aq, -1
  %.pre7.i17 = load i32, ptr %i.ao, align 8, !tbaa !36 ; 4 uses
  br i1 %i.ar, label %bb.f, label %ft_stroke_border_moveto.exit20

bb.f:                                             ; preds = %bb.e
  %i.as = add nuw i32 %i.aq, 1
  %.not.i.i18 = icmp ugt i32 %.pre7.i17, %i.as
  br i1 %.not.i.i18, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %i.aq, ptr %i.ao, align 8, !tbaa !36
  br label %ft_stroke_border_moveto.exit20

bb.h:                                             ; preds = %bb.f
  %i.at = add i32 %.pre7.i17, -1                  ; 2 uses
  store i32 %i.at, ptr %i.ao, align 8, !tbaa !36
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !37 ; 2 uses
  %i.aw = zext nneg i32 %i.aq to i64              ; 3 uses
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %i.aw
  %i.ay = zext i32 %i.at to i64                   ; 2 uses
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %i.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.az, i64 16, i1 false), !tbaa.struct !48
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !38 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ay
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !50
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.aw
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !50
  %i.bf = load ptr, ptr %i.ba, align 8, !tbaa !38
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.aw ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !50
  %i.bi = or i8 %i.bh, 4
  store i8 %i.bi, ptr %i.bg, align 1, !tbaa !50
  %i.bj = load ptr, ptr %i.ba, align 8, !tbaa !38
  %i.bk = add i32 %.pre7.i17, -2
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bl ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !50
  %i.bo = or i8 %i.bn, 8
  store i8 %i.bo, ptr %i.bm, align 1, !tbaa !50
  %.pre.pre.i19 = load i32, ptr %i.ao, align 8, !tbaa !36
  br label %ft_stroke_border_moveto.exit20

ft_stroke_border_moveto.exit20:                   ; preds = %bb.e, %bb.g, %bb.h
  %i.bp = phi i32 [ %.pre7.i17, %bb.e ], [ %i.aq, %bb.g ], [ %.pre.pre.i19, %bb.h ]
  store i32 %i.bp, ptr %i.ap, align 4, !tbaa !29
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i8 0, ptr %i.bq, align 8, !tbaa !51
  %i.br = call fastcc i32 @ft_stroke_border_lineto(ptr noundef nonnull %i.ao, ptr noundef nonnull readonly %4, i8 noundef zeroext 0)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %1, ptr %i.bs, align 8, !tbaa !52
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.bt, align 8, !tbaa !44
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %2, ptr %i.bu, align 8, !tbaa !53
  br label %bb.i

bb.i:                                             ; preds = %ft_stroke_border_moveto.exit, %ft_stroke_border_moveto.exit20
  %.0 = phi i32 [ %i.ak, %ft_stroke_border_moveto.exit ], [ %i.br, %ft_stroke_border_moveto.exit20 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ft_stroker_process_corner(ptr nofree noundef nonnull captures(none) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.FT_Vector_, align 8         ; 7 uses
  %3 = alloca %struct.FT_Vector_, align 16        ; 6 uses
  %4 = alloca %struct.FT_Vector_, align 8         ; 7 uses
  %5 = alloca %struct.FT_Vector_, align 16        ; 11 uses
  %6 = alloca %struct.FT_Vector_, align 16        ; 10 uses
  %7 = alloca %struct.FT_Vector_, align 8         ; 7 uses
  %8 = alloca %struct.FT_Vector_, align 16        ; 9 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !47
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !45
  %i.d = tail call i64 @FT_Angle_Diff(i64 noundef %i.a, i64 noundef %i.c) #10 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %ft_stroker_outside.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.lobit = lshr i64 %i.d, 63
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %i.f, i64 %.lobit ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  %isneg = icmp slt i64 %i.d, 0
  %i.h = select i1 %isneg, i64 -5898240, i64 5898240 ; 2 uses
  %i.i = load i64, ptr %0, align 8, !tbaa !47
  %i.j = load i64, ptr %i.b, align 8, !tbaa !45
end_hunk_0
