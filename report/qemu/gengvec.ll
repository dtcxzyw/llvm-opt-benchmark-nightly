Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/gengvec?download=true
inline.NumInlined: 607
inline.NumDeleted: 11
begin_hunk_0_@gen_helper_neon_uqshl_d:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  %i.j = ptrtoint ptr %3 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.j
  %i.l = ptrtoint ptr %4 to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.l
  tail call void @tcg_gen_call5(ptr noundef %i.a, ptr noundef nonnull @helper_info_neon_uqshl_d, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k, ptr noundef %i.m) #9
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @gen_neon_sqrshl(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %0, 4
  tail call void @llvm.assume(i1 %i.a)
  %i.b = load ptr, ptr @tcg_env, align 8
  %i.c = zext nneg i32 %0 to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr @gen_neon_sqrshl.fns, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8
  tail call void @tcg_gen_gvec_3_ptr(i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %i.b, i32 noundef %4, i32 noundef %5, i32 noundef 0, ptr noundef %i.e) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_neon_sqrshl_b(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #1 {
bb.a:
  %i.a = load ptr, ptr @helper_info_neon_sqrshl_b, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 5 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  %i.j = ptrtoint ptr %3 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.j
  %i.l = ptrtoint ptr %4 to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.l
  tail call void @tcg_gen_call5(ptr noundef %i.a, ptr noundef nonnull @helper_info_neon_sqrshl_b, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k, ptr noundef %i.m) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_neon_sqrshl_h(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #1 {
bb.a:
  %i.a = load ptr, ptr @helper_info_neon_sqrshl_h, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 5 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  %i.j = ptrtoint ptr %3 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.j
  %i.l = ptrtoint ptr %4 to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.l
  tail call void @tcg_gen_call5(ptr noundef %i.a, ptr noundef nonnull @helper_info_neon_sqrshl_h, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k, ptr noundef %i.m) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_neon_sqrshl_s(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #1 {
bb.a:
  %i.a = load ptr, ptr @helper_info_neon_sqrshl_s, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 5 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  %i.j = ptrtoint ptr %3 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.j
  %i.l = ptrtoint ptr %4 to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.l
  tail call void @tcg_gen_call5(ptr noundef %i.a, ptr noundef nonnull @helper_info_neon_sqrshl_s, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k, ptr noundef %i.m) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_neon_sqrshl_d(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #1 {
bb.a:
  %i.a = load ptr, ptr @helper_info_neon_sqrshl_d, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 5 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  %i.j = ptrtoint ptr %3 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.j
  %i.l = ptrtoint ptr %4 to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.l
  tail call void @tcg_gen_call5(ptr noundef %i.a, ptr noundef nonnull @helper_info_neon_sqrshl_d, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k, ptr noundef %i.m) #9
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @gen_neon_uqrshl(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %0, 4
  tail call void @llvm.assume(i1 %i.a)
  %i.b = load ptr, ptr @tcg_env, align 8
  %i.c = zext nneg i32 %0 to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr @gen_neon_uqrshl.fns, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8
  tail call void @tcg_gen_gvec_3_ptr(i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %i.b, i32 noundef %4, i32 noundef %5, i32 noundef 0, ptr noundef %i.e) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_neon_uqrshl_b(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #1 {
bb.a:
  %i.a = load ptr, ptr @helper_info_neon_uqrshl_b, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 5 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  %i.j = ptrtoint ptr %3 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.j
  %i.l = ptrtoint ptr %4 to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.l
  tail call void @tcg_gen_call5(ptr noundef %i.a, ptr noundef nonnull @helper_info_neon_uqrshl_b, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k, ptr noundef %i.m) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_neon_uqrshl_h(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #1 {
bb.a:
  %i.a = load ptr, ptr @helper_info_neon_uqrshl_h, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 5 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  %i.j = ptrtoint ptr %3 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.j
  %i.l = ptrtoint ptr %4 to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.l
  tail call void @tcg_gen_call5(ptr noundef %i.a, ptr noundef nonnull @helper_info_neon_uqrshl_h, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k, ptr noundef %i.m) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_neon_uqrshl_s(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #1 {
bb.a:
  %i.a = load ptr, ptr @helper_info_neon_uqrshl_s, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 5 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  %i.j = ptrtoint ptr %3 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.j
  %i.l = ptrtoint ptr %4 to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.l
  tail call void @tcg_gen_call5(ptr noundef %i.a, ptr noundef nonnull @helper_info_neon_uqrshl_s, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k, ptr noundef %i.m) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_neon_uqrshl_d(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #1 {
bb.a:
  %i.a = load ptr, ptr @helper_info_neon_uqrshl_d, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 5 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  %i.j = ptrtoint ptr %3 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.j
  %i.l = ptrtoint ptr %4 to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.l
  tail call void @tcg_gen_call5(ptr noundef %i.a, ptr noundef nonnull @helper_info_neon_uqrshl_d, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k, ptr noundef %i.m) #9
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @gen_neon_sqshli(i32 noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %0, 4
  tail call void @llvm.assume(i1 %i.a)
  %i.b = shl nuw nsw i32 8, %0
  %i.c = zext nneg i32 %i.b to i64
  %i.d = icmp samesign ule i64 %3, %i.c
  tail call void @llvm.assume(i1 %i.d)
  %i.e = load ptr, ptr @tcg_env, align 8
  %i.f = trunc nuw nsw i64 %3 to i32
  %i.g = zext nneg i32 %0 to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @gen_neon_sqshli.fns, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8
  tail call void @tcg_gen_gvec_2_ptr(i32 noundef %1, i32 noundef %2, ptr noundef %i.e, i32 noundef %4, i32 noundef %5, i32 noundef %i.f, ptr noundef %i.i) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_neon_sqshli_b(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #1 {
bb.a:
  %i.a = load ptr, ptr @helper_info_neon_sqshli_b, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  %i.j = ptrtoint ptr %3 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.j
  tail call void @tcg_gen_call4(ptr noundef %i.a, ptr noundef nonnull @helper_info_neon_sqshli_b, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_neon_sqshli_h(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #1 {
bb.a:
  %i.a = load ptr, ptr @helper_info_neon_sqshli_h, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  %i.j = ptrtoint ptr %3 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.j
  tail call void @tcg_gen_call4(ptr noundef %i.a, ptr noundef nonnull @helper_info_neon_sqshli_h, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_neon_sqshli_s(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #1 {
bb.a:
  %i.a = load ptr, ptr @helper_info_neon_sqshli_s, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  %i.j = ptrtoint ptr %3 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.j
  tail call void @tcg_gen_call4(ptr noundef %i.a, ptr noundef nonnull @helper_info_neon_sqshli_s, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_neon_sqshli_d(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #1 {
bb.a:
  %i.a = load ptr, ptr @helper_info_neon_sqshli_d, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  %i.j = ptrtoint ptr %3 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.j
  tail call void @tcg_gen_call4(ptr noundef %i.a, ptr noundef nonnull @helper_info_neon_sqshli_d, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k) #9
  ret void
}

declare void @tcg_gen_gvec_2_ptr(i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @gen_neon_uqshli(i32 noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %0, 4
  tail call void @llvm.assume(i1 %i.a)
  %i.b = shl nuw nsw i32 8, %0
  %i.c = zext nneg i32 %i.b to i64
  %i.d = icmp samesign ule i64 %3, %i.c
  tail call void @llvm.assume(i1 %i.d)
  %i.e = load ptr, ptr @tcg_env, align 8
  %i.f = trunc nuw nsw i64 %3 to i32
  %i.g = zext nneg i32 %0 to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @gen_neon_uqshli.fns, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8
  tail call void @tcg_gen_gvec_2_ptr(i32 noundef %1, i32 noundef %2, ptr noundef %i.e, i32 noundef %4, i32 noundef %5, i32 noundef %i.f, ptr noundef %i.i) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_neon_uqshli_b(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #1 {
bb.a:
  %i.a = load ptr, ptr @helper_info_neon_uqshli_b, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  %i.j = ptrtoint ptr %3 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.j
  tail call void @tcg_gen_call4(ptr noundef %i.a, ptr noundef nonnull @helper_info_neon_uqshli_b, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_neon_uqshli_h(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #1 {
bb.a:
  %i.a = load ptr, ptr @helper_info_neon_uqshli_h, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  %i.j = ptrtoint ptr %3 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.j
  tail call void @tcg_gen_call4(ptr noundef %i.a, ptr noundef nonnull @helper_info_neon_uqshli_h, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_neon_uqshli_s(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #1 {
bb.a:
  %i.a = load ptr, ptr @helper_info_neon_uqshli_s, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  %i.j = ptrtoint ptr %3 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.j
  tail call void @tcg_gen_call4(ptr noundef %i.a, ptr noundef nonnull @helper_info_neon_uqshli_s, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_neon_uqshli_d(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #1 {
bb.a:
  %i.a = load ptr, ptr @helper_info_neon_uqshli_d, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  %i.j = ptrtoint ptr %3 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.j
  tail call void @tcg_gen_call4(ptr noundef %i.a, ptr noundef nonnull @helper_info_neon_uqshli_d, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k) #9
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @gen_neon_sqshlui(i32 noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %0, 4
  tail call void @llvm.assume(i1 %i.a)
  %i.b = shl nuw nsw i32 8, %0
  %i.c = zext nneg i32 %i.b to i64
  %i.d = icmp samesign ule i64 %3, %i.c
  tail call void @llvm.assume(i1 %i.d)
  %i.e = load ptr, ptr @tcg_env, align 8
  %i.f = trunc nuw nsw i64 %3 to i32
  %i.g = zext nneg i32 %0 to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @gen_neon_sqshlui.fns, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8
  tail call void @tcg_gen_gvec_2_ptr(i32 noundef %1, i32 noundef %2, ptr noundef %i.e, i32 noundef %4, i32 noundef %5, i32 noundef %i.f, ptr noundef %i.i) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_neon_sqshlui_b(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #1 {
bb.a:
  %i.a = load ptr, ptr @helper_info_neon_sqshlui_b, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  %i.j = ptrtoint ptr %3 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.j
  tail call void @tcg_gen_call4(ptr noundef %i.a, ptr noundef nonnull @helper_info_neon_sqshlui_b, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_neon_sqshlui_h(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #1 {
bb.a:
  %i.a = load ptr, ptr @helper_info_neon_sqshlui_h, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  %i.j = ptrtoint ptr %3 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.j
  tail call void @tcg_gen_call4(ptr noundef %i.a, ptr noundef nonnull @helper_info_neon_sqshlui_h, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_neon_sqshlui_s(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #1 {
bb.a:
  %i.a = load ptr, ptr @helper_info_neon_sqshlui_s, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  %i.j = ptrtoint ptr %3 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.j
  tail call void @tcg_gen_call4(ptr noundef %i.a, ptr noundef nonnull @helper_info_neon_sqshlui_s, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_neon_sqshlui_d(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #1 {
bb.a:
  %i.a = load ptr, ptr @helper_info_neon_sqshlui_d, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  %i.j = ptrtoint ptr %3 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.j
  tail call void @tcg_gen_call4(ptr noundef %i.a, ptr noundef nonnull @helper_info_neon_sqshlui_d, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k) #9
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @gen_uqadd_bhs(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %.neg = shl i32 -8, %4
  %i.a = add i32 %.neg, 64
  %i.b = zext nneg i32 %i.a to i64
  %i.c = lshr i64 -1, %i.b
  %i.d = tail call ptr @tcg_temp_new_i64() #9     ; 5 uses
  tail call void @tcg_gen_add_i64(ptr noundef %i.d, ptr noundef %2, ptr noundef %3) #9
  %i.e = tail call ptr @tcg_constant_i64(i64 noundef %i.c) #9
  tail call void @tcg_gen_umin_i64(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.e) #9
  tail call void @tcg_gen_xor_i64(ptr noundef %i.d, ptr noundef %i.d, ptr noundef %0) #9
  tail call void @tcg_gen_or_i64(ptr noundef %1, ptr noundef %1, ptr noundef %i.d) #9
  ret void
}

declare void @tcg_gen_xor_i64(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @tcg_gen_or_i64(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @gen_uqadd_d(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = tail call ptr @tcg_temp_new_i64() #9     ; 6 uses
  tail call void @tcg_gen_add_i64(ptr noundef %i.a, ptr noundef %2, ptr noundef %3) #9
  %i.b = tail call ptr @tcg_constant_i64(i64 noundef -1) #9
  tail call void @tcg_gen_movcond_i64(i32 noundef 10, ptr noundef %0, ptr noundef %i.a, ptr noundef %2, ptr noundef %i.b, ptr noundef %i.a) #9
  tail call void @tcg_gen_xor_i64(ptr noundef %i.a, ptr noundef %i.a, ptr noundef %0) #9
  tail call void @tcg_gen_or_i64(ptr noundef %1, ptr noundef %1, ptr noundef %i.a) #9
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @gen_gvec_uqadd_qc(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %4, 17
  tail call void @llvm.assume(i1 %i.a)
  %i.b = zext i32 %0 to i64
  %i.c = getelementptr inbounds nuw [48 x i8], ptr @gen_gvec_uqadd_qc.ops, i64 %i.b
  tail call void @tcg_gen_gvec_4(i32 noundef %1, i32 noundef 12656, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull %i.c) #9
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_uqadd_vec(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = tail call ptr @tcg_temp_new_vec_matching(ptr noundef %1) #9 ; 4 uses
  tail call void @tcg_gen_add_vec(i32 noundef %0, ptr noundef %i.a, ptr noundef %3, ptr noundef %4) #9
  tail call void @tcg_gen_usadd_vec(i32 noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef %4) #9
  tail call void @tcg_gen_xor_vec(i32 noundef %0, ptr noundef %i.a, ptr noundef %i.a, ptr noundef %1) #9
  tail call void @tcg_gen_or_vec(i32 noundef %0, ptr noundef %2, ptr noundef %2, ptr noundef %i.a) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_gvec_uqadd_b(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #1 {
bb.a:
  %i.a = load ptr, ptr @helper_info_gvec_uqadd_b, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 5 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  %i.j = ptrtoint ptr %3 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.j
  %i.l = ptrtoint ptr %4 to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.l
  tail call void @tcg_gen_call5(ptr noundef %i.a, ptr noundef nonnull @helper_info_gvec_uqadd_b, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k, ptr noundef %i.m) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_gvec_uqadd_h(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #1 {
bb.a:
  %i.a = load ptr, ptr @helper_info_gvec_uqadd_h, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 5 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  %i.j = ptrtoint ptr %3 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.j
  %i.l = ptrtoint ptr %4 to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.l
  tail call void @tcg_gen_call5(ptr noundef %i.a, ptr noundef nonnull @helper_info_gvec_uqadd_h, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k, ptr noundef %i.m) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_gvec_uqadd_s(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #1 {
bb.a:
  %i.a = load ptr, ptr @helper_info_gvec_uqadd_s, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 5 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  %i.j = ptrtoint ptr %3 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.j
  %i.l = ptrtoint ptr %4 to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.l
  tail call void @tcg_gen_call5(ptr noundef %i.a, ptr noundef nonnull @helper_info_gvec_uqadd_s, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k, ptr noundef %i.m) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
end_hunk_0
