Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pocketpy/original/vmath?download=true
inline.NumInlined: 309
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 58
loop-unroll.NumUnrolled: 58
begin_hunk_0_@color32_from_hex_STATIC:bb.a
  %i.b = tail call zeroext i1 @py_checktype(ptr noundef %1, i16 noundef signext 6) #16
  br i1 %i.b, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.c = tail call { ptr, i32 } @py_tosv(ptr noundef %1) #16 ; 2 uses
  %i.d = extractvalue { ptr, i32 } %i.c, 0        ; 2 uses
  %i.e = extractvalue { ptr, i32 } %i.c, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.f = icmp eq i32 %i.e, 7
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  br i1 %i.f, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.i = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %i.d, ptr noundef nonnull @.str.89, ptr noundef nonnull %2, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h) #16
  %.not9 = icmp eq i32 %i.i, 3
  br i1 %.not9, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 47, ptr noundef nonnull @.str.90) #16
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 -1, ptr %i.k, align 1, !tbaa !13
  br label %bb.j

bb.h:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.m = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %i.d, ptr noundef nonnull @.str.91, ptr noundef nonnull %2, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.l) #16
  %.not8 = icmp eq i32 %i.m, 4
  br i1 %.not8, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 47, ptr noundef nonnull @.str.90) #16
  br label %bb.k

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.o = call ptr (...) @py_retval() #16          ; 3 uses
  %i.p = load i32, ptr %2, align 4
  store i16 78, ptr %i.o, align 8, !tbaa !11
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  store i8 0, ptr %i.q, align 2, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i32 %i.p, ptr %i.r, align 8, !tbaa !13
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.f
  %.0 = phi i1 [ %i.j, %bb.f ], [ true, %bb.j ], [ %i.n, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.l

bb.l:                                             ; preds = %bb.c, %bb.k, %bb.b
  %.1 = phi i1 [ %i.a, %bb.b ], [ %.0, %bb.k ], [ false, %bb.c ]
  ret i1 %.1
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @color32_from_vec3_STATIC(i32 noundef %0, ptr noundef %1) #8 {
bb.a:
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 1, i32 noundef %0) #16
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 @py_checktype(ptr noundef %1, i16 noundef signext 73) #16
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.c, align 8
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.22.0.copyload.i = load float, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !13
  %i.d = fmul float %.sroa.22.0.copyload.i, 2.550000e+02
  %i.e = fptoui float %i.d to i8
  %i.f = tail call ptr (...) @py_retval() #16     ; 3 uses
  %.sroa.5.0.insert.ext = zext i8 %i.e to i32
  %.sroa.5.0.insert.shift = shl nuw nsw i32 %.sroa.5.0.insert.ext, 16
  %i.g = fmul <2 x float> %.sroa.01.0.copyload.i, splat (float 2.550000e+02)
  %i.h = fptoui <2 x float> %i.g to <2 x i8>      ; 2 uses
  %i.i = extractelement <2 x i8> %i.h, i64 1
  %i.j = zext i8 %i.i to i32
  %.sroa.4.0.insert.shift = shl nuw nsw i32 %i.j, 8
  %.sroa.5.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.shift, %.sroa.4.0.insert.shift
  %i.k = extractelement <2 x i8> %i.h, i64 0
  %i.l = zext i8 %i.k to i32
  %.sroa.4.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.insert, %i.l
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.4.0.insert.insert, -16777216
  store i16 78, ptr %i.f, align 8, !tbaa !11
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  store i8 0, ptr %i.m, align 2, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i32 %.sroa.0.0.insert.insert, ptr %i.n, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ true, %bb.d ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @color32_from_vec3i_STATIC(i32 noundef %0, ptr noundef %1) #5 {
bb.a:
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 1, i32 noundef %0) #16
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 @py_checktype(ptr noundef %1, i16 noundef signext 75) #16
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.01.0.copyload.i = load i64, ptr %i.c, align 8 ; 2 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.22.0.copyload.i = load i32, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !13
  %i.d = trunc i64 %.sroa.01.0.copyload.i to i32
  %i.e = tail call ptr (...) @py_retval() #16     ; 3 uses
  %.sroa.5.0.insert.ext = shl i32 %.sroa.22.0.copyload.i, 16
  %sh.diff = lshr i64 %.sroa.01.0.copyload.i, 24
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %.sroa.4.0.insert.shift = and i32 %tr.sh.diff, 65280
  %.sroa.5.0.insert.insert = or disjoint i32 %.sroa.4.0.insert.shift, %.sroa.5.0.insert.ext
  %.sroa.0.0.insert.ext = and i32 %i.d, 255
  %.sroa.4.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.insert, %.sroa.0.0.insert.ext
  %.sroa.0.0.insert.insert = or i32 %.sroa.4.0.insert.insert, -16777216
  store i16 78, ptr %i.e, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  store i8 0, ptr %i.f, align 2, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 %.sroa.0.0.insert.insert, ptr %i.g, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ true, %bb.d ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @color32_to_hex(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 1, i32 noundef %0) #16
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i32, ptr %i.c, align 8, !tbaa !13 ; 4 uses
  %.sroa.5.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i, 8
  %.sroa.7.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i, 16
  %.sroa.9.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i, 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.d = icmp eq i32 %.sroa.9.0.extract.shift, 255
  %i.e = and i32 %.sroa.0.0.copyload.i, 255       ; 2 uses
  %i.f = and i32 %.sroa.5.0.extract.shift, 255    ; 2 uses
  %i.g = and i32 %.sroa.7.0.extract.shift, 255    ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 16, ptr noundef nonnull @.str.92, i32 noundef %i.e, i32 noundef %i.f, i32 noundef %i.g) #16
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 16, ptr noundef nonnull @.str.93, i32 noundef %i.e, i32 noundef %i.f, i32 noundef %i.g, i32 noundef %.sroa.9.0.extract.shift) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.09 = phi i32 [ %i.h, %bb.d ], [ %i.i, %bb.e ]
  %i.j = tail call ptr (...) @py_retval() #16
  call void @py_newstrv(ptr noundef %i.j, ptr nonnull %i.a, i32 %.09) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %.0 = phi i1 [ %i.b, %bb.b ], [ true, %bb.f ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @color32_to_vec3(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) #8 {
bb.a:
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 1, i32 noundef %0) #16
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i32, ptr %i.b, align 8, !tbaa !13 ; 5 uses
  %.sroa.6.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i, 8
  %i.c = trunc i32 %.sroa.0.0.copyload.i to i8
  %i.d = insertelement <2 x i8> poison, i8 %i.c, i64 0
  %i.e = trunc i32 %.sroa.6.0.extract.shift to i8
  %i.f = insertelement <2 x i8> %i.d, i8 %i.e, i64 1
  %.sroa.9.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i, 16
  %.sroa.9.0.extract.trunc = trunc i32 %.sroa.9.0.extract.shift to i8 ; 2 uses
  %.sroa.12.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i, 24 ; 2 uses
  %i.g = icmp eq i32 %.sroa.12.0.extract.shift, 255
  br i1 %i.g, label %c11_color32_premult.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.12.0.extract.trunc = trunc nuw i32 %.sroa.12.0.extract.shift to i8
  %i.h = uitofp i8 %.sroa.12.0.extract.trunc to float
  %i.i = fdiv float %i.h, 2.550000e+02            ; 2 uses
  %2 = bitcast i32 %.sroa.0.0.copyload.i to <4 x i8>
  %3 = shufflevector <4 x i8> %2, <4 x i8> poison, <2 x i32> <i32 0, i32 1>
  %i.j = uitofp <2 x i8> %3 to <2 x float>
  %i.k = insertelement <2 x float> poison, float %i.i, i64 0
  %i.l = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> zeroinitializer
  %i.m = fmul <2 x float> %i.l, %i.j
  %i.n = fptoui <2 x float> %i.m to <2 x i8>
  %i.o = uitofp i8 %.sroa.9.0.extract.trunc to float
  %i.p = fmul float %i.i, %i.o
  %i.q = fptoui float %i.p to i8
  br label %c11_color32_premult.exit

c11_color32_premult.exit:                         ; preds = %bb.c, %bb.d
  %.sroa.9.0 = phi i8 [ %.sroa.9.0.extract.trunc, %bb.c ], [ %i.q, %bb.d ]
  %i.r = phi <2 x i8> [ %i.f, %bb.c ], [ %i.n, %bb.d ]
  %i.s = uitofp <2 x i8> %i.r to <2 x float>
  %i.t = fdiv <2 x float> %i.s, splat (float 2.550000e+02)
  %i.u = uitofp i8 %.sroa.9.0 to float
  %i.v = fdiv float %i.u, 2.550000e+02
  %i.w = tail call ptr (...) @py_retval() #16     ; 4 uses
  store i16 73, ptr %i.w, align 8, !tbaa !11
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  store i8 0, ptr %i.x, align 2, !tbaa !12
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store <2 x float> %i.t, ptr %i.y, align 8
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store float %i.v, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %c11_color32_premult.exit, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ true, %c11_color32_premult.exit ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @color32_to_vec3i(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 1, i32 noundef %0) #16
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i32, ptr %i.b, align 8, !tbaa !13 ; 5 uses
  %.sroa.6.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i, 8
  %i.c = trunc i32 %.sroa.0.0.copyload.i to i8
  %i.d = insertelement <2 x i8> poison, i8 %i.c, i64 0
  %i.e = trunc i32 %.sroa.6.0.extract.shift to i8
  %i.f = insertelement <2 x i8> %i.d, i8 %i.e, i64 1
  %.sroa.9.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i, 16
  %.sroa.9.0.extract.trunc = trunc i32 %.sroa.9.0.extract.shift to i8 ; 2 uses
  %.sroa.12.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i, 24 ; 2 uses
  %i.g = icmp eq i32 %.sroa.12.0.extract.shift, 255
  br i1 %i.g, label %c11_color32_premult.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.12.0.extract.trunc = trunc nuw i32 %.sroa.12.0.extract.shift to i8
  %i.h = uitofp i8 %.sroa.12.0.extract.trunc to float
  %i.i = fdiv float %i.h, 2.550000e+02            ; 2 uses
  %2 = bitcast i32 %.sroa.0.0.copyload.i to <4 x i8>
  %3 = shufflevector <4 x i8> %2, <4 x i8> poison, <2 x i32> <i32 0, i32 1>
  %i.j = uitofp <2 x i8> %3 to <2 x float>
  %i.k = insertelement <2 x float> poison, float %i.i, i64 0
  %i.l = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> zeroinitializer
  %i.m = fmul <2 x float> %i.l, %i.j
  %i.n = fptoui <2 x float> %i.m to <2 x i8>
  %i.o = uitofp i8 %.sroa.9.0.extract.trunc to float
  %i.p = fmul float %i.i, %i.o
  %i.q = fptoui float %i.p to i8
  br label %c11_color32_premult.exit

c11_color32_premult.exit:                         ; preds = %bb.c, %bb.d
  %.sroa.9.0 = phi i8 [ %.sroa.9.0.extract.trunc, %bb.c ], [ %i.q, %bb.d ]
  %i.r = phi <2 x i8> [ %i.f, %bb.c ], [ %i.n, %bb.d ] ; 2 uses
  %i.s = extractelement <2 x i8> %i.r, i64 1
  %i.t = zext i8 %i.s to i64
  %.sroa.01.4.insert.shift = shl nuw nsw i64 %i.t, 32
  %i.u = extractelement <2 x i8> %i.r, i64 0
  %i.v = zext i8 %i.u to i64
  %.sroa.01.4.insert.insert = or disjoint i64 %.sroa.01.4.insert.shift, %i.v
  %i.w = zext i8 %.sroa.9.0 to i32
  %i.x = tail call ptr (...) @py_retval() #16     ; 4 uses
  store i16 75, ptr %i.x, align 8, !tbaa !11
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  store i8 0, ptr %i.y, align 2, !tbaa !12
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %.sroa.01.4.insert.insert, ptr %i.z, align 8
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i32 %i.w, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %c11_color32_premult.exit, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ true, %c11_color32_premult.exit ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @color32_to_rgb565(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 1, i32 noundef %0) #16
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i32, ptr %i.b, align 8, !tbaa !13 ; 4 uses
  %.sroa.0.0.extract.trunc = trunc i32 %.sroa.0.0.copyload.i to i8 ; 2 uses
  %.sroa.6.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i, 8
  %.sroa.6.0.extract.trunc = trunc i32 %.sroa.6.0.extract.shift to i8 ; 2 uses
  %.sroa.9.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i, 16
  %.sroa.9.0.extract.trunc = trunc i32 %.sroa.9.0.extract.shift to i8 ; 2 uses
  %.sroa.12.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i, 24 ; 2 uses
  %i.c = icmp eq i32 %.sroa.12.0.extract.shift, 255
  br i1 %i.c, label %c11_color32_premult.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.12.0.extract.trunc = trunc nuw i32 %.sroa.12.0.extract.shift to i8
  %i.d = uitofp i8 %.sroa.12.0.extract.trunc to float
  %i.e = fdiv float %i.d, 2.550000e+02            ; 3 uses
  %i.f = uitofp i8 %.sroa.0.0.extract.trunc to float
  %i.g = fmul float %i.e, %i.f
  %i.h = fptoui float %i.g to i8
  %i.i = uitofp i8 %.sroa.6.0.extract.trunc to float
  %i.j = fmul float %i.e, %i.i
  %i.k = fptoui float %i.j to i8
  %i.l = uitofp i8 %.sroa.9.0.extract.trunc to float
  %i.m = fmul float %i.e, %i.l
  %i.n = fptoui float %i.m to i8
  br label %c11_color32_premult.exit

c11_color32_premult.exit:                         ; preds = %bb.c, %bb.d
  %.sroa.9.0 = phi i8 [ %.sroa.9.0.extract.trunc, %bb.c ], [ %i.n, %bb.d ]
  %.sroa.6.0 = phi i8 [ %.sroa.6.0.extract.trunc, %bb.c ], [ %i.k, %bb.d ]
  %.sroa.0.0 = phi i8 [ %.sroa.0.0.extract.trunc, %bb.c ], [ %i.h, %bb.d ]
  %i.o = lshr i8 %.sroa.0.0, 3
  %i.p = lshr i8 %.sroa.6.0, 2
  %i.q = lshr i8 %.sroa.9.0, 3
  %i.r = zext nneg i8 %i.o to i64
  %i.s = shl nuw nsw i64 %i.r, 11
  %i.t = zext nneg i8 %i.p to i64
  %i.u = shl nuw nsw i64 %i.t, 5
  %i.v = or disjoint i64 %i.s, %i.u
  %i.w = zext nneg i8 %i.q to i64
  %i.x = or disjoint i64 %i.v, %i.w
  %i.y = tail call ptr (...) @py_retval() #16
  tail call void @py_newint(ptr noundef %i.y, i64 noundef %i.x) #16
  br label %bb.e

bb.e:                                             ; preds = %c11_color32_premult.exit, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ true, %c11_color32_premult.exit ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @color32_ansi_fg(i32 noundef %0, ptr noundef %1) #5 {
bb.a:
  %2 = alloca %struct.c11_sv, align 8             ; 5 uses
  %3 = alloca %struct.c11_sbuf, align 8           ; 5 uses
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 2, i32 noundef %0) #16
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i32, ptr %i.b, align 8, !tbaa !13 ; 4 uses
  %.sroa.0.0.extract.trunc = trunc i32 %.sroa.0.0.copyload.i to i8 ; 2 uses
  %.sroa.6.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i, 8
  %.sroa.6.0.extract.trunc = trunc i32 %.sroa.6.0.extract.shift to i8 ; 2 uses
  %.sroa.9.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i, 16
  %.sroa.9.0.extract.trunc = trunc i32 %.sroa.9.0.extract.shift to i8 ; 2 uses
  %.sroa.12.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i, 24 ; 2 uses
  %i.c = icmp eq i32 %.sroa.12.0.extract.shift, 255
  br i1 %i.c, label %c11_color32_premult.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.12.0.extract.trunc = trunc nuw i32 %.sroa.12.0.extract.shift to i8
  %i.d = uitofp i8 %.sroa.12.0.extract.trunc to float
  %i.e = fdiv float %i.d, 2.550000e+02            ; 3 uses
  %i.f = uitofp i8 %.sroa.0.0.extract.trunc to float
  %i.g = fmul float %i.e, %i.f
  %i.h = fptoui float %i.g to i8
  %i.i = uitofp i8 %.sroa.6.0.extract.trunc to float
  %i.j = fmul float %i.e, %i.i
  %i.k = fptoui float %i.j to i8
  %i.l = uitofp i8 %.sroa.9.0.extract.trunc to float
  %i.m = fmul float %i.e, %i.l
  %i.n = fptoui float %i.m to i8
  br label %c11_color32_premult.exit

c11_color32_premult.exit:                         ; preds = %bb.c, %bb.d
  %.sroa.9.0 = phi i8 [ %.sroa.9.0.extract.trunc, %bb.c ], [ %i.n, %bb.d ]
  %.sroa.6.0 = phi i8 [ %.sroa.6.0.extract.trunc, %bb.c ], [ %i.k, %bb.d ]
  %.sroa.0.0 = phi i8 [ %.sroa.0.0.extract.trunc, %bb.c ], [ %i.h, %bb.d ]
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.p = tail call zeroext i1 @py_checktype(ptr noundef nonnull %i.o, i16 noundef signext 6) #16
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %c11_color32_premult.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.q = tail call { ptr, i32 } @py_tosv(ptr noundef nonnull %i.o) #16 ; 2 uses
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  store ptr %i.r, ptr %2, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = extractvalue { ptr, i32 } %i.q, 1
  store i32 %i.t, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @c11_sbuf__ctor(ptr noundef nonnull %3) #16
  %i.u = zext i8 %.sroa.0.0 to i32
  %i.v = zext i8 %.sroa.6.0 to i32
  %i.w = zext i8 %.sroa.9.0 to i32
  call void (ptr, ptr, ...) @pk_sprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.94, i32 noundef %i.u, i32 noundef %i.v, i32 noundef %i.w, ptr noundef nonnull byval(%struct.c11_sv) align 8 %2) #16
  %i.x = call ptr (...) @py_retval() #16
  call void @c11_sbuf__py_submit(ptr noundef nonnull %3, ptr noundef %i.x) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %c11_color32_premult.exit, %bb.b
  %.1 = phi i1 [ %i.a, %bb.b ], [ false, %c11_color32_premult.exit ], [ true, %bb.e ]
  ret i1 %.1
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @color32_ansi_bg(i32 noundef %0, ptr noundef %1) #5 {
bb.a:
  %2 = alloca %struct.c11_sv, align 8             ; 5 uses
  %3 = alloca %struct.c11_sbuf, align 8           ; 5 uses
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.76, i32 noundef 2, i32 noundef %0) #16
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i32, ptr %i.b, align 8, !tbaa !13 ; 4 uses
  %.sroa.0.0.extract.trunc = trunc i32 %.sroa.0.0.copyload.i to i8 ; 2 uses
  %.sroa.6.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i, 8
  %.sroa.6.0.extract.trunc = trunc i32 %.sroa.6.0.extract.shift to i8 ; 2 uses
  %.sroa.9.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i, 16
  %.sroa.9.0.extract.trunc = trunc i32 %.sroa.9.0.extract.shift to i8 ; 2 uses
  %.sroa.12.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i, 24 ; 2 uses
  %i.c = icmp eq i32 %.sroa.12.0.extract.shift, 255
  br i1 %i.c, label %c11_color32_premult.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.12.0.extract.trunc = trunc nuw i32 %.sroa.12.0.extract.shift to i8
  %i.d = uitofp i8 %.sroa.12.0.extract.trunc to float
  %i.e = fdiv float %i.d, 2.550000e+02            ; 3 uses
  %i.f = uitofp i8 %.sroa.0.0.extract.trunc to float
  %i.g = fmul float %i.e, %i.f
  %i.h = fptoui float %i.g to i8
  %i.i = uitofp i8 %.sroa.6.0.extract.trunc to float
  %i.j = fmul float %i.e, %i.i
  %i.k = fptoui float %i.j to i8
end_hunk_0
