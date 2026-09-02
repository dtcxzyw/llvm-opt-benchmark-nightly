Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libpng/original/pngset?download=true
inline.NumInlined: 18
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@png_set_sCAL_s:bb.a
bb.n:                                             ; preds = %bb.l
  %i.p = trunc nuw nsw i32 %2 to i8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 284
  store i8 %i.p, ptr %i.q, align 4, !tbaa !123
  %i.r = add i64 %i.e, 1                          ; 2 uses
  %i.s = tail call noalias ptr @png_malloc_warn(ptr noundef nonnull %0, i64 noundef %i.r) #11 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 2 uses
  store ptr %i.s, ptr %i.t, align 8, !tbaa !124
  %i.u = icmp eq ptr %i.s, null
  br i1 %i.u, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.43) #11
  br label %bb.s

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull align 1 %3, i64 %i.r, i1 false)
  %i.v = add i64 %i.k, 1                          ; 2 uses
  %i.w = tail call noalias ptr @png_malloc_warn(ptr noundef nonnull %0, i64 noundef %i.v) #11 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 296
  store ptr %i.w, ptr %i.x, align 8, !tbaa !125
  %i.y = icmp eq ptr %i.w, null
  br i1 %i.y, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef nonnull %i.s) #11
  store ptr null, ptr %i.t, align 8, !tbaa !124
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.43) #11
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %4, i64 %i.v, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 252 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !59
  %i.ab = or i32 %i.aa, 256
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !59
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !28
  %i.ae = or i32 %i.ad, 16384
  store i32 %i.ae, ptr %i.ac, align 8, !tbaa !28
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %bb.r, %bb.q, %bb.o
  ret void
}

; Function Attrs: noreturn
declare void @png_error(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @png_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @png_set_sCAL(ptr noalias noundef %0, ptr noalias nofree noundef captures(address_is_null) %1, i32 noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [18 x i8], align 16               ; 4 uses
  %i.b = alloca [18 x i8], align 16               ; 4 uses
  %i.c = fcmp ugt double %3, 0.000000e+00
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.44) #11
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = fcmp ugt double %4, 0.000000e+00
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.45) #11
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @png_ascii_from_fp(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 18, double noundef %3, i32 noundef 5) #11
  call void @png_ascii_from_fp(ptr noundef %0, ptr noundef nonnull %i.b, i64 noundef 18, double noundef %4, i32 noundef 5) #11
  call void @png_set_sCAL_s(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  ret void
}

declare void @png_ascii_from_fp(ptr noundef, ptr noundef, i64 noundef, double noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @png_set_sCAL_fixed(ptr noalias noundef %0, ptr noalias nofree noundef captures(address_is_null) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [18 x i8], align 16               ; 4 uses
  %i.b = alloca [18 x i8], align 16               ; 4 uses
  %i.c = icmp slt i32 %3, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.44) #11
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = icmp slt i32 %4, 1
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.45) #11
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @png_ascii_from_fixed(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 18, i32 noundef %3) #11
  call void @png_ascii_from_fixed(ptr noundef %0, ptr noundef nonnull %i.b, i64 noundef 18, i32 noundef %4) #11
  call void @png_set_sCAL_s(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  ret void
}

declare void @png_ascii_from_fixed(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @png_set_pHYs(ptr noalias nofree noundef readnone captures(address_is_null) %0, ptr noalias nofree noundef captures(address_is_null) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 184
  store i32 %2, ptr %i.c, align 8, !tbaa !126
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 188
  store i32 %3, ptr %i.d, align 4, !tbaa !127
  %i.e = trunc i32 %4 to i8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 192
  store i8 %i.e, ptr %i.f, align 8, !tbaa !128
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !28
  %i.i = or i32 %i.h, 128
  store i32 %i.i, ptr %i.g, align 8, !tbaa !28
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @png_set_PLTE(ptr noalias noundef %0, ptr noalias noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %4 = alloca [256 x %struct.png_color_struct], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.d = load i8, ptr %i.c, align 1, !tbaa !63
  %i.e = icmp eq i8 %i.d, 3
  br i1 %i.e, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.g = load i8, ptr %i.f, align 4, !tbaa !62
  %i.h = zext nneg i8 %i.g to i32
  %i.i = shl nuw i32 1, %i.h
  %i.j = icmp slt i32 %3, 0
  %i.k = icmp sgt i32 %3, %i.i
  %or.cond42 = select i1 %i.j, i1 true, i1 %i.k
  br i1 %or.cond42, label %bb.d, label %bb.e

.thread:                                          ; preds = %bb.b
  %or.cond4243 = icmp ugt i32 %3, 256
  br i1 %or.cond4243, label %.thread44, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #13
  unreachable

.thread44:                                        ; preds = %.thread
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #11
  br label %bb.m

bb.e:                                             ; preds = %.thread, %bb.c
  %i.l = icmp ne i32 %3, 0                        ; 2 uses
  %i.m = icmp eq ptr %2, null
  %or.cond3 = and i1 %i.m, %i.l
  br i1 %or.cond3, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = icmp eq i32 %3, 0
  br i1 %i.n, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.p = load i32, ptr %i.o, align 8, !tbaa !65
  %5 = and i32 %i.p, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.e, %bb.g
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.47) #13
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.q = zext nneg i32 %3 to i64
  %i.r = mul nuw nsw i64 %i.q, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %4, ptr align 1 %2, i64 %i.r, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i
  tail call void @png_free_data(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 4096, i32 noundef 0) #11
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !129
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %i.t) #11
  %i.u = tail call noalias ptr @png_calloc(ptr noundef nonnull %0, i64 noundef 768) #11
  store ptr %i.u, ptr %i.s, align 8, !tbaa !129
  %i.v = tail call noalias ptr @png_calloc(ptr noundef nonnull %0, i64 noundef 768) #11 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.v, ptr %i.w, align 8, !tbaa !130
  %i.x = trunc i32 %3 to i16                      ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i16 %i.x, ptr %i.y, align 8, !tbaa !61
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 608
  store i16 %i.x, ptr %i.z, align 8, !tbaa !131
  br i1 %i.l, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aa = zext nneg i32 %3 to i64
  %i.ab = mul nuw nsw i64 %i.aa, 3                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr nonnull align 16 %4, i64 %i.ab, i1 false)
  %i.ac = load ptr, ptr %i.s, align 8, !tbaa !129
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ac, ptr nonnull align 16 %4, i64 %i.ab, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 252 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !59
  %i.af = or i32 %i.ae, 4096
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !59
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !28
  %i.ai = or i32 %i.ah, 8
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !28
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %bb.l, %.thread44
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void
}

declare noalias ptr @png_calloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @png_set_sBIT(ptr noalias nofree noundef readnone captures(address_is_null) %0, ptr noalias nofree noundef captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp eq ptr %2, null
  %or.cond3 = or i1 %or.cond, %i.c
  br i1 %or.cond3, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 136
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.d, ptr noundef nonnull align 1 dereferenceable(5) %2, i64 5, i1 false), !tbaa.struct !132
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !28
  %i.g = or i32 %i.f, 2
  store i32 %i.g, ptr %i.e, align 8, !tbaa !28
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @png_set_sRGB(ptr noalias nofree noundef readnone captures(address_is_null) %0, ptr noalias nofree noundef captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 348
  store i32 %2, ptr %i.c, align 4, !tbaa !66
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !28
  %i.f = or i32 %i.e, 2048
  store i32 %i.f, ptr %i.d, align 8, !tbaa !28
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @png_set_sRGB_gAMA_and_cHRM(ptr noalias nofree noundef readnone captures(address_is_null) %0, ptr noalias nofree noundef captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %png_set_cHRM_fixed.exit

png_set_cHRM_fixed.exit:                          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 348
  store i32 %2, ptr %i.c, align 4, !tbaa !66, !alias.scope !142, !noalias !143
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !28, !alias.scope !142, !noalias !143
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 344
  store i32 45455, ptr %i.f, align 8, !tbaa !60, !alias.scope !144, !noalias !145
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 312
  store <4 x i32> <i32 64000, i32 33000, i32 30000, i32 60000>, ptr %i.g, align 8, !tbaa !47, !alias.scope !146, !noalias !147
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 328
  store <4 x i32> <i32 15000, i32 6000, i32 31270, i32 32900>, ptr %i.h, align 8, !tbaa !47, !alias.scope !146, !noalias !147
  %i.i = or i32 %i.e, 2053
  store i32 %i.i, ptr %i.d, align 8, !tbaa !28, !alias.scope !146, !noalias !147
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %png_set_cHRM_fixed.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @png_set_iCCP(ptr noalias noundef %0, ptr noalias noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = insertelement <4 x ptr> poison, ptr %0, i64 0
  %i.b = insertelement <4 x ptr> %i.a, ptr %1, i64 1
  %i.c = insertelement <4 x ptr> %i.b, ptr %2, i64 2
  %i.d = insertelement <4 x ptr> %i.c, ptr %4, i64 3
  %i.e = icmp eq <4 x ptr> %i.d, splat (ptr null)
  %i.f = bitcast <4 x i1> %i.e to i4
  %.not47 = icmp eq i4 %i.f, 0
  br i1 %.not47, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @png_app_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.48) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #12
  %i.h = add i64 %i.g, 1                          ; 2 uses
  %i.i = tail call noalias ptr @png_malloc_warn(ptr noundef nonnull %0, i64 noundef %i.h) #11 ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @png_benign_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.49) #11
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %2, i64 %i.h, i1 false)
  %i.k = zext i32 %5 to i64                       ; 2 uses
  %i.l = tail call noalias ptr @png_malloc_warn(ptr noundef nonnull %0, i64 noundef %i.k) #11 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef nonnull %i.i) #11
  tail call void @png_benign_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.50) #11
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull align 1 %4, i64 %i.k, i1 false)
  tail call void @png_free_data(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 16, i32 noundef 0) #11
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i32 %5, ptr %i.n, align 8, !tbaa !148
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr %i.i, ptr %i.o, align 8, !tbaa !149
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %i.l, ptr %i.p, align 8, !tbaa !150
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 252 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !59
  %i.s = or i32 %i.r, 16
  store i32 %i.s, ptr %i.q, align 4, !tbaa !59
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !28
  %i.v = or i32 %i.u, 4096
  store i32 %i.v, ptr %i.t, align 8, !tbaa !28
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h, %bb.g, %bb.e
  ret void
}

declare void @png_benign_error(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @png_set_text(ptr noalias noundef %0, ptr noalias nofree noundef captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @png_set_text_2(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

end_hunk_0
begin_hunk_1_@png_set_unknown_chunk_location:bb.a
  br i1 %i.f, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.g = and i32 %3, 11
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @png_app_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.62) #11
  %i.i = and i32 %3, 4
  %.not = icmp eq i32 %i.i, 0
  %. = select i1 %.not, i32 1, i32 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ %., %bb.d ], [ %3, %bb.c ]
  %i.j = and i32 %.0, 11                          ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.f, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.g, %bb.e
  %.1.i.ph = phi i32 [ %i.j, %bb.e ], [ %i.q, %bb.g ]
  br label %.preheader.i

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !58, !alias.scope !192
  %i.n = and i32 %i.m, 32768
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.g, label %.thread.i

bb.g:                                             ; preds = %bb.f
  tail call void @png_app_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.72) #11
  %i.p = load i32, ptr %i.l, align 4, !tbaa !58, !alias.scope !192
  %i.q = and i32 %i.p, 11                         ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %.thread.i, label %.preheader.i.preheader

.thread.i:                                        ; preds = %bb.g, %bb.f
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.73) #13
  unreachable

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.1.i = phi i32 [ %i.u, %.preheader.i ], [ %.1.i.ph, %.preheader.i.preheader ] ; 5 uses
  %i.s = sub nsw i32 0, %.1.i
  %i.t = and i32 %.1.i, %i.s                      ; 2 uses
  %.not.i = icmp eq i32 %.1.i, %i.t
  %i.u = xor i32 %i.t, %.1.i
  br i1 %.not.i, label %check_location.exit, label %.preheader.i, !llvm.loop !0

check_location.exit:                              ; preds = %.preheader.i
  %i.v = trunc nuw nsw i32 %.1.i to i8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !67
  %i.y = zext nneg i32 %2 to i64
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i8 %i.v, ptr %i.aa, align 8, !tbaa !69
  br label %bb.h

bb.h:                                             ; preds = %check_location.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 0, 6) i32 @png_permit_mng_features(ptr noalias nofree noundef writeonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = and i32 %1, 5                            ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1048
  store i32 %i.b, ptr %i.c, align 8, !tbaa !65
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @png_set_keep_unknown_chunks(ptr noalias noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %or.cond = icmp ugt i32 %1, 3
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @png_app_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.63) #11
  br label %bb.ae

bb.d:                                             ; preds = %bb.b
  %i.b = icmp slt i32 %3, 1
  br i1 %i.b, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1016
  store i32 %1, ptr %i.c, align 8, !tbaa !196
  %i.d = icmp eq i32 %3, 0
  br i1 %i.d, label %bb.ae, label %.thread

bb.f:                                             ; preds = %bb.d
  %i.e = icmp eq ptr %2, null
  br i1 %i.e, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  tail call void @png_app_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.64) #11
  br label %bb.ae

.thread:                                          ; preds = %bb.e, %bb.f
  %.071 = phi ptr [ %2, %bb.f ], [ @png_set_keep_unknown_chunks.chunks_to_ignore, %bb.e ] ; 2 uses
  %.066 = phi i32 [ %3, %bb.f ], [ 21, %bb.e ]    ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1020 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !197
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !198  ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  %spec.store.select = select i1 %i.j, i32 0, i32 %i.g ; 7 uses
  %i.k = add i32 %spec.store.select, %.066        ; 2 uses
  %i.l = icmp ugt i32 %i.k, 858993459
  br i1 %i.l, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.thread
  tail call void @png_app_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.65) #11
  br label %bb.ae

bb.i:                                             ; preds = %.thread
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = mul nuw i32 %i.k, 5
  %i.n = zext i32 %i.m to i64
  %i.o = tail call noalias ptr @png_malloc(ptr noundef nonnull %0, i64 noundef %i.n) #11 ; 5 uses
  %.not80 = icmp eq i32 %spec.store.select, 0
  br i1 %.not80, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !198
  %i.q = mul i32 %spec.store.select, 5
  %i.r = zext i32 %i.q to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.p, i64 %i.r, i1 false)
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %.not79 = icmp eq i32 %spec.store.select, 0
  br i1 %.not79, label %thread-pre-split, label %.lr.ph.i.preheader.us.preheader

bb.m:                                             ; preds = %bb.j, %bb.k
  %.not81 = icmp eq ptr %i.o, null
  br i1 %.not81, label %thread-pre-split, label %.preheader90

.preheader90:                                     ; preds = %bb.m
  %i.s = trunc nuw nsw i32 %1 to i8
  %wide.trip.count = zext nneg i32 %.066 to i64
  br label %.preheader90.split

.lr.ph.i.preheader.us.preheader:                  ; preds = %bb.l
  %wide.trip.count109 = zext nneg i32 %.066 to i64
  br label %.lr.ph.i.preheader.us

.lr.ph.i.preheader.us:                            ; preds = %.lr.ph.i.preheader.us.preheader, %add_one_chunk.exit.us
  %indvars.iv106 = phi i64 [ 0, %.lr.ph.i.preheader.us.preheader ], [ %indvars.iv.next107, %add_one_chunk.exit.us ] ; 2 uses
  %i.t = mul i64 %indvars.iv106, 5
  %i.u = and i64 %i.t, 4294967295
  %i.v = getelementptr inbounds nuw i8, ptr %.071, i64 %i.u
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.preheader.us, %bb.n
  %.023.i.us = phi i32 [ %i.ab, %bb.n ], [ 0, %.lr.ph.i.preheader.us ]
  %.01722.i.us = phi ptr [ %i.ac, %bb.n ], [ %i.i, %.lr.ph.i.preheader.us ] ; 3 uses
  %i.w = load i32, ptr %.01722.i.us, align 1
  %i.x = load i32, ptr %i.v, align 1
  %i.y = icmp ne i32 %i.w, %i.x
  %i.z = zext i1 %i.y to i32
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %.sink.split.i.loopexit.us, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.us
  %i.ab = add nuw i32 %.023.i.us, 1               ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.01722.i.us, i64 5
  %exitcond.not.i.us = icmp eq i32 %i.ab, %spec.store.select
  br i1 %exitcond.not.i.us, label %add_one_chunk.exit.us, label %.lr.ph.i.us, !llvm.loop !193

add_one_chunk.exit.us:                            ; preds = %bb.n, %.sink.split.i.loopexit.us
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 2 uses
  %exitcond110.not = icmp eq i64 %indvars.iv.next107, %wide.trip.count109
  br i1 %exitcond110.not, label %.preheader, label %.lr.ph.i.preheader.us, !llvm.loop !194

.sink.split.i.loopexit.us:                        ; preds = %.lr.ph.i.us
  %i.ad = getelementptr inbounds nuw i8, ptr %.01722.i.us, i64 4
  store i8 0, ptr %i.ad, align 1, !tbaa !9
  br label %add_one_chunk.exit.us

.preheader:                                       ; preds = %.sink.split.i, %add_one_chunk.exit.us
  %.068124126 = phi ptr [ %i.i, %add_one_chunk.exit.us ], [ %i.o, %.sink.split.i ] ; 7 uses
  %.us-phi = phi i32 [ %spec.store.select, %add_one_chunk.exit.us ], [ %.016.ph.i, %.sink.split.i ] ; 5 uses
  %.not100 = icmp eq i32 %.us-phi, 0
  br i1 %.not100, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %xtraiter = and i32 %.us-phi, 1
  %4 = icmp eq i32 %.us-phi, 1
  br i1 %4, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %.us-phi, -2
  br label %.lr.ph

.preheader90.split:                               ; preds = %.preheader90, %.sink.split.i
  %indvars.iv = phi i64 [ 0, %.preheader90 ], [ %indvars.iv.next, %.sink.split.i ] ; 2 uses
  %.06592 = phi i32 [ %spec.store.select, %.preheader90 ], [ %.016.ph.i, %.sink.split.i ] ; 4 uses
  %i.ae = mul i64 %indvars.iv, 5
  %i.af = and i64 %i.ae, 4294967295
  %i.ag = getelementptr inbounds nuw i8, ptr %.071, i64 %i.af ; 2 uses
  %.not24.i = icmp eq i32 %.06592, 0
  br i1 %.not24.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader90.split, %bb.o
  %.023.i = phi i32 [ %i.am, %bb.o ], [ 0, %.preheader90.split ]
  %.01722.i = phi ptr [ %i.an, %bb.o ], [ %i.o, %.preheader90.split ] ; 3 uses
  %i.ah = load i32, ptr %.01722.i, align 1
  %i.ai = load i32, ptr %i.ag, align 1
  %i.aj = icmp ne i32 %i.ah, %i.ai
  %i.ak = zext i1 %i.aj to i32
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %.sink.split.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i
  %i.am = add nuw i32 %.023.i, 1                  ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.01722.i, i64 5 ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.am, %.06592
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !193

._crit_edge.i:                                    ; preds = %bb.o, %.preheader90.split
  %.017.lcssa.i = phi ptr [ %i.o, %.preheader90.split ], [ %i.an, %bb.o ] ; 2 uses
  %i.ao = add i32 %.06592, 1
  %i.ap = load i32, ptr %i.ag, align 1
  store i32 %i.ap, ptr %.017.lcssa.i, align 1
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.lr.ph.i, %._crit_edge.i
  %.017.lcssa.sink.i = phi ptr [ %.017.lcssa.i, %._crit_edge.i ], [ %.01722.i, %.lr.ph.i ]
  %.016.ph.i = phi i32 [ %i.ao, %._crit_edge.i ], [ %.06592, %.lr.ph.i ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.017.lcssa.sink.i, i64 4
  store i8 %i.s, ptr %i.aq, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %.preheader90.split, !llvm.loop !194

.lr.ph:                                           ; preds = %bb.v, %.lr.ph.preheader.new
  %.06298 = phi ptr [ %.068124126, %.lr.ph.preheader.new ], [ %.163.1, %bb.v ] ; 4 uses
  %.06496 = phi ptr [ %.068124126, %.lr.ph.preheader.new ], [ %i.ba, %bb.v ] ; 6 uses
  %.16795 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %.2.1, %bb.v ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.v ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.06496, i64 4
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !9
  %.not85 = icmp eq i8 %i.as, 0
  br i1 %.not85, label %.lr.ph.1, label %bb.p

bb.p:                                             ; preds = %.lr.ph
  %.not86 = icmp eq ptr %.06298, %.06496
  br i1 %.not86, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.06298, ptr noundef nonnull align 1 dereferenceable(5) %.06496, i64 5, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.at = getelementptr inbounds nuw i8, ptr %.06298, i64 5
  %i.au = add i32 %.16795, 1
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.r
  %.2 = phi i32 [ %i.au, %bb.r ], [ %.16795, %.lr.ph ] ; 2 uses
  %.163 = phi ptr [ %i.at, %bb.r ], [ %.06298, %.lr.ph ] ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.06496, i64 5 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.06496, i64 9
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !9
  %.not85.1 = icmp eq i8 %i.ax, 0
  br i1 %.not85.1, label %bb.v, label %bb.s

bb.s:                                             ; preds = %.lr.ph.1
  %.not86.1 = icmp eq ptr %.163, %i.av
  br i1 %.not86.1, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.163, ptr noundef nonnull align 1 dereferenceable(5) %i.av, i64 5, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ay = getelementptr inbounds nuw i8, ptr %.163, i64 5
  %i.az = add i32 %.2, 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph.1
  %.2.1 = phi i32 [ %i.az, %bb.u ], [ %.2, %.lr.ph.1 ] ; 3 uses
  %.163.1 = phi ptr [ %i.ay, %bb.u ], [ %.163, %.lr.ph.1 ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.06496, i64 10 ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !195

._crit_edge.unr-lcssa:                            ; preds = %bb.v
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.06298.epil.init = phi ptr [ %.068124126, %.lr.ph.preheader ], [ %.163.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %.06496.epil.init = phi ptr [ %.068124126, %.lr.ph.preheader ], [ %i.ba, %._crit_edge.unr-lcssa ] ; 3 uses
  %.16795.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %.2.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %lcmp.mod149 = trunc i32 %.us-phi to i1
  tail call void @llvm.assume(i1 %lcmp.mod149)
  %i.bb = getelementptr inbounds nuw i8, ptr %.06496.epil.init, i64 4
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !9
  %.not85.epil = icmp eq i8 %i.bc, 0
  br i1 %.not85.epil, label %._crit_edge, label %bb.w

bb.w:                                             ; preds = %.lr.ph.epil.preheader
  %.not86.epil = icmp eq ptr %.06298.epil.init, %.06496.epil.init
  br i1 %.not86.epil, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.06298.epil.init, ptr noundef nonnull align 1 dereferenceable(5) %.06496.epil.init, i64 5, i1 false)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bd = add i32 %.16795.epil.init, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %bb.y, %._crit_edge.unr-lcssa
  %.2.lcssa = phi i32 [ %.2.1, %._crit_edge.unr-lcssa ], [ %i.bd, %bb.y ], [ %.16795.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %i.be = icmp eq i32 %.2.lcssa, 0
  br i1 %i.be, label %._crit_edge.thread, label %thread-pre-split

._crit_edge.thread:                               ; preds = %.preheader, %._crit_edge
  %i.bf = load ptr, ptr %i.h, align 8, !tbaa !198 ; 2 uses
  %.not82 = icmp eq ptr %i.bf, %.068124126
  br i1 %.not82, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %._crit_edge.thread
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef nonnull %.068124126) #11
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.l, %bb.z, %._crit_edge, %bb.m
  %.270.ph = phi ptr [ %.068124126, %._crit_edge ], [ null, %bb.m ], [ null, %bb.z ], [ null, %bb.l ]
  %.3.ph = phi i32 [ %.2.lcssa, %._crit_edge ], [ 0, %bb.m ], [ 0, %bb.z ], [ 0, %bb.l ]
  %.pr = load ptr, ptr %i.h, align 8, !tbaa !198
  br label %bb.aa

bb.aa:                                            ; preds = %thread-pre-split, %._crit_edge.thread
  %i.bg = phi ptr [ %.pr, %thread-pre-split ], [ %i.bf, %._crit_edge.thread ] ; 3 uses
  %.270 = phi ptr [ %.270.ph, %thread-pre-split ], [ null, %._crit_edge.thread ] ; 2 uses
  %.3 = phi i32 [ %.3.ph, %thread-pre-split ], [ 0, %._crit_edge.thread ]
  store i32 %.3, ptr %i.f, align 4, !tbaa !197
  %.not83 = icmp eq ptr %i.bg, %.270
  br i1 %.not83, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.not84 = icmp eq ptr %i.bg, null
  br i1 %.not84, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef nonnull %i.bg) #11
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  store ptr %.270, ptr %i.h, align 8, !tbaa !198
  br label %bb.ae

bb.ae:                                            ; preds = %bb.aa, %bb.ad, %bb.e, %bb.a, %bb.h, %bb.g, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @png_set_read_user_chunk_fn(ptr noalias nofree noundef writeonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1008
  store ptr %2, ptr %i.b, align 8, !tbaa !199
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1000
  store ptr %1, ptr %i.c, align 8, !tbaa !200
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @png_set_rows(ptr noalias noundef %0, ptr noalias noundef %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !201  ; 2 uses
  %.not = icmp eq ptr %i.d, null
  %.not14 = icmp eq ptr %i.d, %2
  %or.cond16 = or i1 %.not, %.not14
  br i1 %or.cond16, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @png_free_data(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 64, i32 noundef 0) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr %2, ptr %i.c, align 8, !tbaa !201
  %.not15 = icmp eq ptr %2, null
  br i1 %.not15, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !28
  %i.g = or i32 %i.f, 32768
  store i32 %i.g, ptr %i.e, align 8, !tbaa !28
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define void @png_set_compression_buffer_size(ptr noalias noundef %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add i64 %1, -2147483648
  %or.cond = icmp ult i64 %i.b, -2147483647
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.66) #13
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.d = load i32, ptr %i.c, align 4, !tbaa !58
  %i.e = and i32 %i.d, 32768
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = trunc nuw nsw i64 %1 to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1184
  store i32 %i.f, ptr %i.g, align 8, !tbaa !202
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.i = load i32, ptr %i.h, align 8, !tbaa !203
  %.not22 = icmp eq i32 %i.i, 0
  br i1 %.not22, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.67) #11
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.j = icmp samesign ult i64 %1, 6
  br i1 %i.j, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.69) #11
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !204
  %i.m = zext i32 %i.l to i64
  %.not23 = icmp eq i64 %1, %i.m
  br i1 %.not23, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 432
  tail call void @png_free_buffer_list(ptr noundef nonnull %0, ptr noundef nonnull %i.n) #11
  %i.o = trunc nuw nsw i64 %1 to i32
  store i32 %i.o, ptr %i.k, align 8, !tbaa !204
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.a, %bb.i, %bb.g, %bb.e
  ret void
}

declare void @png_free_buffer_list(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @png_set_invalid(ptr noalias nofree noundef readnone captures(address_is_null) %0, ptr noalias nofree noundef captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = xor i32 %2, -1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !28
  %i.f = and i32 %i.e, %i.c
  store i32 %i.f, ptr %i.d, align 8, !tbaa !28
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
end_hunk_1
