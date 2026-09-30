Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/tcg-op-gvec?download=true
inline.NumInlined: 877
inline.NumDeleted: 37
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@tcg_gen_gvec_andi:bb.a
  br label %dup_const.exit

bb.c:                                             ; preds = %bb.a
  %i.c = and i64 %3, 65535
  %i.d = mul nuw i64 %i.c, 281479271743489
  br label %dup_const.exit

bb.d:                                             ; preds = %bb.a
  %i.e = and i64 %3, 4294967295
  %i.f = mul nuw i64 %i.e, 4294967297
  br label %dup_const.exit

bb.e:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 425, ptr noundef nonnull @__func__.dup_const, ptr noundef null) #10
  unreachable

dup_const.exit:                                   ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.g = phi i64 [ %3, %bb.a ], [ %i.f, %bb.d ], [ %i.d, %bb.c ], [ %i.b, %bb.b ]
  %i.h = tail call ptr @tcg_constant_i64(i64 noundef %i.g) #9
  tail call void @tcg_gen_gvec_2s(i32 noundef %1, i32 noundef %2, i32 noundef %4, i32 noundef %5, ptr noundef %i.h, ptr noundef nonnull @gop_ands)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tcg_gen_gvec_andcs(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @tcg_temp_ebb_new_i64() #9 ; 3 uses
  tail call void @tcg_gen_dup_i64(i32 noundef %0, ptr noundef %i.a, ptr noundef %3)
  tail call void @tcg_gen_gvec_2s(i32 noundef %1, i32 noundef %2, i32 noundef %4, i32 noundef %5, ptr noundef %i.a, ptr noundef nonnull @tcg_gen_gvec_andcs.g)
  tail call void @tcg_temp_free_i64(ptr noundef %i.a) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_gvec_andcs(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #5 {
bb.a:
  %i.a = load ptr, ptr @helper_info_gvec_andcs, align 8
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
  tail call void @tcg_gen_call4(ptr noundef %i.a, ptr noundef nonnull @helper_info_gvec_andcs, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k) #9
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tcg_gen_gvec_xors(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @tcg_temp_ebb_new_i64() #9 ; 3 uses
  tail call void @tcg_gen_dup_i64(i32 noundef %0, ptr noundef %i.a, ptr noundef %3)
  tail call void @tcg_gen_gvec_2s(i32 noundef %1, i32 noundef %2, i32 noundef %4, i32 noundef %5, ptr noundef %i.a, ptr noundef nonnull @gop_xors)
  tail call void @tcg_temp_free_i64(ptr noundef %i.a) #9
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tcg_gen_gvec_xori(i32 noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #1 {
bb.a:
  switch i32 %0, label %bb.e [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %dup_const.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = and i64 %3, 255
  %i.b = mul nuw i64 %i.a, 72340172838076673
  br label %dup_const.exit

bb.c:                                             ; preds = %bb.a
  %i.c = and i64 %3, 65535
  %i.d = mul nuw i64 %i.c, 281479271743489
  br label %dup_const.exit

bb.d:                                             ; preds = %bb.a
  %i.e = and i64 %3, 4294967295
  %i.f = mul nuw i64 %i.e, 4294967297
  br label %dup_const.exit

bb.e:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 425, ptr noundef nonnull @__func__.dup_const, ptr noundef null) #10
  unreachable

dup_const.exit:                                   ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.g = phi i64 [ %3, %bb.a ], [ %i.f, %bb.d ], [ %i.d, %bb.c ], [ %i.b, %bb.b ]
  %i.h = tail call ptr @tcg_constant_i64(i64 noundef %i.g) #9
  tail call void @tcg_gen_gvec_2s(i32 noundef %1, i32 noundef %2, i32 noundef %4, i32 noundef %5, ptr noundef %i.h, ptr noundef nonnull @gop_xors)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tcg_gen_gvec_ors(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @tcg_temp_ebb_new_i64() #9 ; 3 uses
  tail call void @tcg_gen_dup_i64(i32 noundef %0, ptr noundef %i.a, ptr noundef %3)
  tail call void @tcg_gen_gvec_2s(i32 noundef %1, i32 noundef %2, i32 noundef %4, i32 noundef %5, ptr noundef %i.a, ptr noundef nonnull @gop_ors)
  tail call void @tcg_temp_free_i64(ptr noundef %i.a) #9
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tcg_gen_gvec_ori(i32 noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #1 {
bb.a:
  switch i32 %0, label %bb.e [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %dup_const.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = and i64 %3, 255
  %i.b = mul nuw i64 %i.a, 72340172838076673
  br label %dup_const.exit

bb.c:                                             ; preds = %bb.a
  %i.c = and i64 %3, 65535
  %i.d = mul nuw i64 %i.c, 281479271743489
  br label %dup_const.exit

bb.d:                                             ; preds = %bb.a
  %i.e = and i64 %3, 4294967295
  %i.f = mul nuw i64 %i.e, 4294967297
  br label %dup_const.exit

bb.e:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 425, ptr noundef nonnull @__func__.dup_const, ptr noundef null) #10
  unreachable

dup_const.exit:                                   ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.g = phi i64 [ %3, %bb.a ], [ %i.f, %bb.d ], [ %i.d, %bb.c ], [ %i.b, %bb.b ]
  %i.h = tail call ptr @tcg_constant_i64(i64 noundef %i.g) #9
  tail call void @tcg_gen_gvec_2s(i32 noundef %1, i32 noundef %2, i32 noundef %4, i32 noundef %5, ptr noundef %i.h, ptr noundef nonnull @gop_ors)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tcg_gen_vec_shl8i_i64(ptr noundef %0, ptr noundef %1, i64 noundef %2) #1 {
bb.a:
  %i.a = trunc i64 %2 to i32
  %i.b = shl i32 255, %i.a
  %i.c = and i32 %i.b, 255
  %i.d = zext nneg i32 %i.c to i64
  %i.e = mul nuw i64 %i.d, 72340172838076673
  tail call void @tcg_gen_shli_i64(ptr noundef %0, ptr noundef %1, i64 noundef %2) #9
  tail call void @tcg_gen_andi_i64(ptr noundef %0, ptr noundef %0, i64 noundef %i.e) #9
  ret void
}

declare void @tcg_gen_shli_i64(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tcg_gen_vec_shl16i_i64(ptr noundef %0, ptr noundef %1, i64 noundef %2) #1 {
bb.a:
  %i.a = trunc i64 %2 to i32
  %i.b = shl i32 65535, %i.a
  %i.c = and i32 %i.b, 65535
  %i.d = zext nneg i32 %i.c to i64
  %i.e = mul nuw i64 %i.d, 281479271743489
  tail call void @tcg_gen_shli_i64(ptr noundef %0, ptr noundef %1, i64 noundef %2) #9
  tail call void @tcg_gen_andi_i64(ptr noundef %0, ptr noundef %0, i64 noundef %i.e) #9
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tcg_gen_vec_shl8i_i32(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = shl i32 255, %2
  %i.b = and i32 %i.a, 255
  %i.c = mul nuw i32 %i.b, 16843009
  tail call void @tcg_gen_shli_i32(ptr noundef %0, ptr noundef %1, i32 noundef %2) #9
  tail call void @tcg_gen_andi_i32(ptr noundef %0, ptr noundef %0, i32 noundef %i.c) #9
  ret void
}

declare void @tcg_gen_shli_i32(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tcg_gen_vec_shl16i_i32(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = shl i32 65535, %2
  %i.b = and i32 %i.a, 65535
  %i.c = mul nuw i32 %i.b, 65537
  tail call void @tcg_gen_shli_i32(ptr noundef %0, ptr noundef %1, i32 noundef %2) #9
  tail call void @tcg_gen_andi_i32(ptr noundef %0, ptr noundef %0, i32 noundef %i.c) #9
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tcg_gen_gvec_shli(i32 noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ult i32 %0, 4
  tail call void @llvm.assume(i1 %i.a)
  %i.b = shl nuw nsw i32 8, %0
  %i.c = zext nneg i32 %i.b to i64
  %i.d = icmp samesign ult i64 %3, %i.c
  tail call void @llvm.assume(i1 %i.d)
  %i.e = icmp eq i64 %3, 0
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @tcg_env, align 8          ; 3 uses
  %i.g = icmp eq i32 %1, %2
  br i1 %i.g, label %check_size_align.exit.i.i, label %bb.d

check_size_align.exit.i.i:                        ; preds = %bb.b
  %i.h = icmp ult i32 %5, 2049
  tail call void @llvm.assume(i1 %i.h)
  %i.i = icmp samesign ugt i32 %5, 15
  %i.j = select i1 %i.i, i32 15, i32 7            ; 2 uses
  %i.k = and i32 %i.j, %5
  %i.l = icmp eq i32 %i.k, 0
  tail call void @llvm.assume(i1 %i.l)
  %i.m = and i32 %i.j, %1
  %i.n = icmp eq i32 %i.m, 0
  tail call void @llvm.assume(i1 %i.n)
  %i.o = icmp ult i32 %4, %5
  br i1 %i.o, label %bb.c, label %tcg_gen_gvec_mov.exit

bb.c:                                             ; preds = %check_size_align.exit.i.i
  %i.p = add i32 %4, %1
  %i.q = sub nuw nsw i32 %5, %4                   ; 2 uses
  tail call fastcc void @do_dup(i32 noundef 0, ptr noundef %i.f, i32 noundef %i.p, i32 noundef %i.q, i32 noundef %i.q, ptr noundef null, ptr noundef null, i64 noundef 0), !inline_history !0
  br label %tcg_gen_gvec_mov.exit

bb.d:                                             ; preds = %bb.b
  tail call void @tcg_gen_gvec_2_var(ptr noundef %i.f, i32 noundef %1, ptr noundef %i.f, i32 noundef %2, i32 noundef %4, i32 noundef %5, ptr noundef nonnull @tcg_gen_gvec_mov_var.g)
  br label %tcg_gen_gvec_mov.exit

bb.e:                                             ; preds = %bb.a
  %i.r = zext nneg i32 %0 to i64
  %i.s = getelementptr inbounds nuw [56 x i8], ptr @tcg_gen_gvec_shli.g, i64 %i.r
  tail call void @tcg_gen_gvec_2i(i32 noundef %1, i32 noundef %2, i32 noundef %4, i32 noundef %5, i64 noundef %3, ptr noundef nonnull %i.s)
  br label %tcg_gen_gvec_mov.exit

tcg_gen_gvec_mov.exit:                            ; preds = %bb.d, %bb.c, %check_size_align.exit.i.i, %bb.e
  ret void
}

declare void @tcg_gen_shli_vec(i32 noundef, ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_gvec_shl8i(ptr noundef %0, ptr noundef %1, ptr noundef %2) #5 {
bb.a:
  %i.a = load ptr, ptr @helper_info_gvec_shl8i, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  tail call void @tcg_gen_call3(ptr noundef %i.a, ptr noundef nonnull @helper_info_gvec_shl8i, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_gvec_shl16i(ptr noundef %0, ptr noundef %1, ptr noundef %2) #5 {
bb.a:
  %i.a = load ptr, ptr @helper_info_gvec_shl16i, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  tail call void @tcg_gen_call3(ptr noundef %i.a, ptr noundef nonnull @helper_info_gvec_shl16i, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_gvec_shl32i(ptr noundef %0, ptr noundef %1, ptr noundef %2) #5 {
bb.a:
  %i.a = load ptr, ptr @helper_info_gvec_shl32i, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  tail call void @tcg_gen_call3(ptr noundef %i.a, ptr noundef nonnull @helper_info_gvec_shl32i, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_gvec_shl64i(ptr noundef %0, ptr noundef %1, ptr noundef %2) #5 {
bb.a:
  %i.a = load ptr, ptr @helper_info_gvec_shl64i, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  tail call void @tcg_gen_call3(ptr noundef %i.a, ptr noundef nonnull @helper_info_gvec_shl64i, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i) #9
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tcg_gen_vec_shr8i_i64(ptr noundef %0, ptr noundef %1, i64 noundef %2) #1 {
bb.a:
  %i.a = trunc i64 %2 to i32
  %i.b = lshr i32 255, %i.a
  %i.c = zext nneg i32 %i.b to i64
  %i.d = mul nuw i64 %i.c, 72340172838076673
  tail call void @tcg_gen_shri_i64(ptr noundef %0, ptr noundef %1, i64 noundef %2) #9
  tail call void @tcg_gen_andi_i64(ptr noundef %0, ptr noundef %0, i64 noundef %i.d) #9
  ret void
}

declare void @tcg_gen_shri_i64(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tcg_gen_vec_shr16i_i64(ptr noundef %0, ptr noundef %1, i64 noundef %2) #1 {
bb.a:
  %i.a = trunc i64 %2 to i32
  %i.b = lshr i32 65535, %i.a
  %i.c = zext nneg i32 %i.b to i64
  %i.d = mul nuw i64 %i.c, 281479271743489
  tail call void @tcg_gen_shri_i64(ptr noundef %0, ptr noundef %1, i64 noundef %2) #9
  tail call void @tcg_gen_andi_i64(ptr noundef %0, ptr noundef %0, i64 noundef %i.d) #9
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tcg_gen_vec_shr8i_i32(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = lshr i32 255, %2
  %i.b = mul nuw i32 %i.a, 16843009
  tail call void @tcg_gen_shri_i32(ptr noundef %0, ptr noundef %1, i32 noundef %2) #9
  tail call void @tcg_gen_andi_i32(ptr noundef %0, ptr noundef %0, i32 noundef %i.b) #9
  ret void
}

declare void @tcg_gen_shri_i32(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tcg_gen_vec_shr16i_i32(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = lshr i32 65535, %2
  %i.b = mul nuw i32 %i.a, 65537
  tail call void @tcg_gen_shri_i32(ptr noundef %0, ptr noundef %1, i32 noundef %2) #9
  tail call void @tcg_gen_andi_i32(ptr noundef %0, ptr noundef %0, i32 noundef %i.b) #9
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tcg_gen_gvec_shri(i32 noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ult i32 %0, 4
  tail call void @llvm.assume(i1 %i.a)
  %i.b = shl nuw nsw i32 8, %0
  %i.c = zext nneg i32 %i.b to i64
  %i.d = icmp samesign ult i64 %3, %i.c
  tail call void @llvm.assume(i1 %i.d)
  %i.e = icmp eq i64 %3, 0
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @tcg_env, align 8          ; 3 uses
  %i.g = icmp eq i32 %1, %2
  br i1 %i.g, label %check_size_align.exit.i.i, label %bb.d

check_size_align.exit.i.i:                        ; preds = %bb.b
  %i.h = icmp ult i32 %5, 2049
  tail call void @llvm.assume(i1 %i.h)
  %i.i = icmp samesign ugt i32 %5, 15
  %i.j = select i1 %i.i, i32 15, i32 7            ; 2 uses
  %i.k = and i32 %i.j, %5
  %i.l = icmp eq i32 %i.k, 0
  tail call void @llvm.assume(i1 %i.l)
  %i.m = and i32 %i.j, %1
  %i.n = icmp eq i32 %i.m, 0
  tail call void @llvm.assume(i1 %i.n)
  %i.o = icmp ult i32 %4, %5
  br i1 %i.o, label %bb.c, label %tcg_gen_gvec_mov.exit

bb.c:                                             ; preds = %check_size_align.exit.i.i
  %i.p = add i32 %4, %1
  %i.q = sub nuw nsw i32 %5, %4                   ; 2 uses
  tail call fastcc void @do_dup(i32 noundef 0, ptr noundef %i.f, i32 noundef %i.p, i32 noundef %i.q, i32 noundef %i.q, ptr noundef null, ptr noundef null, i64 noundef 0), !inline_history !0
  br label %tcg_gen_gvec_mov.exit

bb.d:                                             ; preds = %bb.b
  tail call void @tcg_gen_gvec_2_var(ptr noundef %i.f, i32 noundef %1, ptr noundef %i.f, i32 noundef %2, i32 noundef %4, i32 noundef %5, ptr noundef nonnull @tcg_gen_gvec_mov_var.g)
  br label %tcg_gen_gvec_mov.exit

bb.e:                                             ; preds = %bb.a
  %i.r = zext nneg i32 %0 to i64
  %i.s = getelementptr inbounds nuw [56 x i8], ptr @tcg_gen_gvec_shri.g, i64 %i.r
  tail call void @tcg_gen_gvec_2i(i32 noundef %1, i32 noundef %2, i32 noundef %4, i32 noundef %5, i64 noundef %3, ptr noundef nonnull %i.s)
  br label %tcg_gen_gvec_mov.exit

tcg_gen_gvec_mov.exit:                            ; preds = %bb.d, %bb.c, %check_size_align.exit.i.i, %bb.e
  ret void
}

declare void @tcg_gen_shri_vec(i32 noundef, ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_gvec_shr8i(ptr noundef %0, ptr noundef %1, ptr noundef %2) #5 {
bb.a:
  %i.a = load ptr, ptr @helper_info_gvec_shr8i, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  tail call void @tcg_gen_call3(ptr noundef %i.a, ptr noundef nonnull @helper_info_gvec_shr8i, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_gvec_shr16i(ptr noundef %0, ptr noundef %1, ptr noundef %2) #5 {
bb.a:
  %i.a = load ptr, ptr @helper_info_gvec_shr16i, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  tail call void @tcg_gen_call3(ptr noundef %i.a, ptr noundef nonnull @helper_info_gvec_shr16i, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_gvec_shr32i(ptr noundef %0, ptr noundef %1, ptr noundef %2) #5 {
bb.a:
  %i.a = load ptr, ptr @helper_info_gvec_shr32i, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  tail call void @tcg_gen_call3(ptr noundef %i.a, ptr noundef nonnull @helper_info_gvec_shr32i, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_gvec_shr64i(ptr noundef %0, ptr noundef %1, ptr noundef %2) #5 {
bb.a:
  %i.a = load ptr, ptr @helper_info_gvec_shr64i, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  tail call void @tcg_gen_call3(ptr noundef %i.a, ptr noundef nonnull @helper_info_gvec_shr64i, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i) #9
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tcg_gen_vec_sar8i_i64(ptr noundef %0, ptr noundef %1, i64 noundef %2) #1 {
bb.a:
  %i.a = trunc i64 %2 to i32                      ; 3 uses
  %i.b = lshr i32 128, %i.a
  %i.c = zext nneg i32 %i.b to i64
  %i.d = mul nuw i64 %i.c, 72340172838076673
  %i.e = lshr i32 255, %i.a
  %i.f = zext nneg i32 %i.e to i64
  %i.g = mul nuw i64 %i.f, 72340172838076673
  %i.h = tail call ptr @tcg_temp_ebb_new_i64() #9 ; 5 uses
  tail call void @tcg_gen_shri_i64(ptr noundef %0, ptr noundef %1, i64 noundef %2) #9
  tail call void @tcg_gen_andi_i64(ptr noundef %i.h, ptr noundef %0, i64 noundef %i.d) #9
  %i.i = shl i32 2, %i.a
  %i.j = add i32 %i.i, -2
  %i.k = sext i32 %i.j to i64
  tail call void @tcg_gen_muli_i64(ptr noundef %i.h, ptr noundef %i.h, i64 noundef %i.k) #9
  tail call void @tcg_gen_andi_i64(ptr noundef %0, ptr noundef %0, i64 noundef %i.g) #9
  tail call void @tcg_gen_or_i64(ptr noundef %0, ptr noundef %0, ptr noundef %i.h) #9
  tail call void @tcg_temp_free_i64(ptr noundef %i.h) #9
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tcg_gen_vec_sar16i_i64(ptr noundef %0, ptr noundef %1, i64 noundef %2) #1 {
bb.a:
  %i.a = trunc i64 %2 to i32                      ; 3 uses
  %i.b = lshr i32 32768, %i.a
  %i.c = zext nneg i32 %i.b to i64
  %i.d = mul nuw i64 %i.c, 281479271743489
  %i.e = lshr i32 65535, %i.a
  %i.f = zext nneg i32 %i.e to i64
  %i.g = mul nuw i64 %i.f, 281479271743489
  %i.h = tail call ptr @tcg_temp_ebb_new_i64() #9 ; 5 uses
  tail call void @tcg_gen_shri_i64(ptr noundef %0, ptr noundef %1, i64 noundef %2) #9
  tail call void @tcg_gen_andi_i64(ptr noundef %i.h, ptr noundef %0, i64 noundef %i.d) #9
  tail call void @tcg_gen_andi_i64(ptr noundef %0, ptr noundef %0, i64 noundef %i.g) #9
  %i.i = shl i32 2, %i.a
  %i.j = add i32 %i.i, -2
  %i.k = sext i32 %i.j to i64
  tail call void @tcg_gen_muli_i64(ptr noundef %i.h, ptr noundef %i.h, i64 noundef %i.k) #9
  tail call void @tcg_gen_or_i64(ptr noundef %0, ptr noundef %0, ptr noundef %i.h) #9
  tail call void @tcg_temp_free_i64(ptr noundef %i.h) #9
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tcg_gen_vec_sar8i_i32(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = lshr i32 128, %2
  %i.b = mul nuw i32 %i.a, 16843009
  %i.c = lshr i32 255, %2
  %i.d = mul nuw i32 %i.c, 16843009
  %i.e = tail call ptr @tcg_temp_ebb_new_i32() #9 ; 5 uses
  tail call void @tcg_gen_shri_i32(ptr noundef %0, ptr noundef %1, i32 noundef %2) #9
  tail call void @tcg_gen_andi_i32(ptr noundef %i.e, ptr noundef %0, i32 noundef %i.b) #9
  %i.f = shl i32 2, %2
  %i.g = add i32 %i.f, -2
  tail call void @tcg_gen_muli_i32(ptr noundef %i.e, ptr noundef %i.e, i32 noundef %i.g) #9
  tail call void @tcg_gen_andi_i32(ptr noundef %0, ptr noundef %0, i32 noundef %i.d) #9
  tail call void @tcg_gen_or_i32(ptr noundef %0, ptr noundef %0, ptr noundef %i.e) #9
  tail call void @tcg_temp_free_i32(ptr noundef %i.e) #9
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tcg_gen_vec_sar16i_i32(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = lshr i32 32768, %2
  %i.b = mul nuw i32 %i.a, 65537
  %i.c = lshr i32 65535, %2
  %i.d = mul nuw i32 %i.c, 65537
  %i.e = tail call ptr @tcg_temp_ebb_new_i32() #9 ; 5 uses
  tail call void @tcg_gen_shri_i32(ptr noundef %0, ptr noundef %1, i32 noundef %2) #9
  tail call void @tcg_gen_andi_i32(ptr noundef %i.e, ptr noundef %0, i32 noundef %i.b) #9
  tail call void @tcg_gen_andi_i32(ptr noundef %0, ptr noundef %0, i32 noundef %i.d) #9
  %i.f = shl i32 2, %2
  %i.g = add i32 %i.f, -2
  tail call void @tcg_gen_muli_i32(ptr noundef %i.e, ptr noundef %i.e, i32 noundef %i.g) #9
  tail call void @tcg_gen_or_i32(ptr noundef %0, ptr noundef %0, ptr noundef %i.e) #9
  tail call void @tcg_temp_free_i32(ptr noundef %i.e) #9
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tcg_gen_gvec_sari(i32 noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ult i32 %0, 4
  tail call void @llvm.assume(i1 %i.a)
  %i.b = shl nuw nsw i32 8, %0
  %i.c = zext nneg i32 %i.b to i64
  %i.d = icmp samesign ult i64 %3, %i.c
  tail call void @llvm.assume(i1 %i.d)
  %i.e = icmp eq i64 %3, 0
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @tcg_env, align 8          ; 3 uses
  %i.g = icmp eq i32 %1, %2
  br i1 %i.g, label %check_size_align.exit.i.i, label %bb.d

check_size_align.exit.i.i:                        ; preds = %bb.b
  %i.h = icmp ult i32 %5, 2049
  tail call void @llvm.assume(i1 %i.h)
  %i.i = icmp samesign ugt i32 %5, 15
  %i.j = select i1 %i.i, i32 15, i32 7            ; 2 uses
  %i.k = and i32 %i.j, %5
  %i.l = icmp eq i32 %i.k, 0
  tail call void @llvm.assume(i1 %i.l)
  %i.m = and i32 %i.j, %1
  %i.n = icmp eq i32 %i.m, 0
  tail call void @llvm.assume(i1 %i.n)
  %i.o = icmp ult i32 %4, %5
  br i1 %i.o, label %bb.c, label %tcg_gen_gvec_mov.exit

bb.c:                                             ; preds = %check_size_align.exit.i.i
  %i.p = add i32 %4, %1
  %i.q = sub nuw nsw i32 %5, %4                   ; 2 uses
  tail call fastcc void @do_dup(i32 noundef 0, ptr noundef %i.f, i32 noundef %i.p, i32 noundef %i.q, i32 noundef %i.q, ptr noundef null, ptr noundef null, i64 noundef 0), !inline_history !0
  br label %tcg_gen_gvec_mov.exit

bb.d:                                             ; preds = %bb.b
  tail call void @tcg_gen_gvec_2_var(ptr noundef %i.f, i32 noundef %1, ptr noundef %i.f, i32 noundef %2, i32 noundef %4, i32 noundef %5, ptr noundef nonnull @tcg_gen_gvec_mov_var.g)
  br label %tcg_gen_gvec_mov.exit

bb.e:                                             ; preds = %bb.a
  %i.r = zext nneg i32 %0 to i64
  %i.s = getelementptr inbounds nuw [56 x i8], ptr @tcg_gen_gvec_sari.g, i64 %i.r
  tail call void @tcg_gen_gvec_2i(i32 noundef %1, i32 noundef %2, i32 noundef %4, i32 noundef %5, i64 noundef %3, ptr noundef nonnull %i.s)
  br label %tcg_gen_gvec_mov.exit

tcg_gen_gvec_mov.exit:                            ; preds = %bb.d, %bb.c, %check_size_align.exit.i.i, %bb.e
  ret void
}

declare void @tcg_gen_sari_vec(i32 noundef, ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_gvec_sar8i(ptr noundef %0, ptr noundef %1, ptr noundef %2) #5 {
bb.a:
  %i.a = load ptr, ptr @helper_info_gvec_sar8i, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  tail call void @tcg_gen_call3(ptr noundef %i.a, ptr noundef nonnull @helper_info_gvec_sar8i, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_gvec_sar16i(ptr noundef %0, ptr noundef %1, ptr noundef %2) #5 {
bb.a:
  %i.a = load ptr, ptr @helper_info_gvec_sar16i, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  tail call void @tcg_gen_call3(ptr noundef %i.a, ptr noundef nonnull @helper_info_gvec_sar16i, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i) #9
  ret void
}

declare void @tcg_gen_sari_i32(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_gvec_sar32i(ptr noundef %0, ptr noundef %1, ptr noundef %2) #5 {
bb.a:
  %i.a = load ptr, ptr @helper_info_gvec_sar32i, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  tail call void @tcg_gen_call3(ptr noundef %i.a, ptr noundef nonnull @helper_info_gvec_sar32i, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i) #9
  ret void
}

declare void @tcg_gen_sari_i64(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_gvec_sar64i(ptr noundef %0, ptr noundef %1, ptr noundef %2) #5 {
bb.a:
  %i.a = load ptr, ptr @helper_info_gvec_sar64i, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  tail call void @tcg_gen_call3(ptr noundef %i.a, ptr noundef nonnull @helper_info_gvec_sar64i, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i) #9
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tcg_gen_vec_rotl8i_i64(ptr noundef %0, ptr noundef %1, i64 noundef %2) #1 {
bb.a:
  %i.a = trunc i64 %2 to i32
  %i.b = shl i32 255, %i.a
  %i.c = and i32 %i.b, 255
  %i.d = zext nneg i32 %i.c to i64
  %i.e = mul nuw i64 %i.d, 72340172838076673      ; 2 uses
  tail call void @tcg_gen_shli_i64(ptr noundef %0, ptr noundef %1, i64 noundef %2) #9
  %i.f = sub i64 8, %2
  tail call void @tcg_gen_shri_i64(ptr noundef %1, ptr noundef %1, i64 noundef %i.f) #9
  tail call void @tcg_gen_andi_i64(ptr noundef %0, ptr noundef %0, i64 noundef %i.e) #9
  %i.g = xor i64 %i.e, -1
  tail call void @tcg_gen_andi_i64(ptr noundef %1, ptr noundef %1, i64 noundef %i.g) #9
  tail call void @tcg_gen_or_i64(ptr noundef %0, ptr noundef %0, ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tcg_gen_vec_rotl16i_i64(ptr noundef %0, ptr noundef %1, i64 noundef %2) #1 {
bb.a:
  %i.a = trunc i64 %2 to i32
  %i.b = shl i32 65535, %i.a
  %i.c = and i32 %i.b, 65535
  %i.d = zext nneg i32 %i.c to i64
  %i.e = mul nuw i64 %i.d, 281479271743489        ; 2 uses
  tail call void @tcg_gen_shli_i64(ptr noundef %0, ptr noundef %1, i64 noundef %2) #9
  %i.f = sub i64 16, %2
  tail call void @tcg_gen_shri_i64(ptr noundef %1, ptr noundef %1, i64 noundef %i.f) #9
  tail call void @tcg_gen_andi_i64(ptr noundef %0, ptr noundef %0, i64 noundef %i.e) #9
  %i.g = xor i64 %i.e, -1
  tail call void @tcg_gen_andi_i64(ptr noundef %1, ptr noundef %1, i64 noundef %i.g) #9
  tail call void @tcg_gen_or_i64(ptr noundef %0, ptr noundef %0, ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tcg_gen_gvec_rotli(i32 noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ult i32 %0, 4
  tail call void @llvm.assume(i1 %i.a)
  %i.b = shl nuw nsw i32 8, %0
  %i.c = zext nneg i32 %i.b to i64
  %i.d = icmp samesign ult i64 %3, %i.c
  tail call void @llvm.assume(i1 %i.d)
  %i.e = icmp eq i64 %3, 0
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @tcg_env, align 8          ; 3 uses
  %i.g = icmp eq i32 %1, %2
  br i1 %i.g, label %check_size_align.exit.i.i, label %bb.d

check_size_align.exit.i.i:                        ; preds = %bb.b
  %i.h = icmp ult i32 %5, 2049
  tail call void @llvm.assume(i1 %i.h)
  %i.i = icmp samesign ugt i32 %5, 15
  %i.j = select i1 %i.i, i32 15, i32 7            ; 2 uses
  %i.k = and i32 %i.j, %5
  %i.l = icmp eq i32 %i.k, 0
  tail call void @llvm.assume(i1 %i.l)
  %i.m = and i32 %i.j, %1
  %i.n = icmp eq i32 %i.m, 0
  tail call void @llvm.assume(i1 %i.n)
  %i.o = icmp ult i32 %4, %5
  br i1 %i.o, label %bb.c, label %tcg_gen_gvec_mov.exit

bb.c:                                             ; preds = %check_size_align.exit.i.i
  %i.p = add i32 %4, %1
  %i.q = sub nuw nsw i32 %5, %4                   ; 2 uses
  tail call fastcc void @do_dup(i32 noundef 0, ptr noundef %i.f, i32 noundef %i.p, i32 noundef %i.q, i32 noundef %i.q, ptr noundef null, ptr noundef null, i64 noundef 0), !inline_history !0
  br label %tcg_gen_gvec_mov.exit

bb.d:                                             ; preds = %bb.b
  tail call void @tcg_gen_gvec_2_var(ptr noundef %i.f, i32 noundef %1, ptr noundef %i.f, i32 noundef %2, i32 noundef %4, i32 noundef %5, ptr noundef nonnull @tcg_gen_gvec_mov_var.g)
  br label %tcg_gen_gvec_mov.exit

bb.e:                                             ; preds = %bb.a
  %i.r = zext nneg i32 %0 to i64
  %i.s = getelementptr inbounds nuw [56 x i8], ptr @tcg_gen_gvec_rotli.g, i64 %i.r
  tail call void @tcg_gen_gvec_2i(i32 noundef %1, i32 noundef %2, i32 noundef %4, i32 noundef %5, i64 noundef %3, ptr noundef nonnull %i.s)
  br label %tcg_gen_gvec_mov.exit

tcg_gen_gvec_mov.exit:                            ; preds = %bb.d, %bb.c, %check_size_align.exit.i.i, %bb.e
  ret void
}

declare void @tcg_gen_rotli_vec(i32 noundef, ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_gvec_rotl8i(ptr noundef %0, ptr noundef %1, ptr noundef %2) #5 {
bb.a:
  %i.a = load ptr, ptr @helper_info_gvec_rotl8i, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  tail call void @tcg_gen_call3(ptr noundef %i.a, ptr noundef nonnull @helper_info_gvec_rotl8i, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_gvec_rotl16i(ptr noundef %0, ptr noundef %1, ptr noundef %2) #5 {
bb.a:
  %i.a = load ptr, ptr @helper_info_gvec_rotl16i, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  tail call void @tcg_gen_call3(ptr noundef %i.a, ptr noundef nonnull @helper_info_gvec_rotl16i, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i) #9
  ret void
}

declare void @tcg_gen_rotli_i32(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_gvec_rotl32i(ptr noundef %0, ptr noundef %1, ptr noundef %2) #5 {
bb.a:
  %i.a = load ptr, ptr @helper_info_gvec_rotl32i, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  tail call void @tcg_gen_call3(ptr noundef %i.a, ptr noundef nonnull @helper_info_gvec_rotl32i, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i) #9
  ret void
}

declare void @tcg_gen_rotli_i64(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_gvec_rotl64i(ptr noundef %0, ptr noundef %1, ptr noundef %2) #5 {
bb.a:
  %i.a = load ptr, ptr @helper_info_gvec_rotl64i, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  tail call void @tcg_gen_call3(ptr noundef %i.a, ptr noundef nonnull @helper_info_gvec_rotl64i, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i) #9
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tcg_gen_gvec_rotri(i32 noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = shl nuw nsw i32 8, %0                    ; 2 uses
  %i.b = zext nneg i32 %i.a to i64                ; 2 uses
  %i.c = icmp samesign ult i64 %3, %i.b
  tail call void @llvm.assume(i1 %i.c)
  %i.d = sub nsw i64 0, %3
  %i.e = add nsw i32 %i.a, -1
  %i.f = zext nneg i32 %i.e to i64
  %i.g = and i64 %i.d, %i.f                       ; 3 uses
  %i.h = icmp ult i32 %0, 4
  tail call void @llvm.assume(i1 %i.h)
  %i.i = icmp samesign ult i64 %i.g, %i.b
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp eq i64 %i.g, 0
  br i1 %i.j, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr @tcg_env, align 8          ; 3 uses
  %i.l = icmp eq i32 %1, %2
  br i1 %i.l, label %check_size_align.exit.i.i.i, label %bb.d

check_size_align.exit.i.i.i:                      ; preds = %bb.b
  %i.m = icmp ult i32 %5, 2049
  tail call void @llvm.assume(i1 %i.m)
  %i.n = icmp samesign ugt i32 %5, 15
  %i.o = select i1 %i.n, i32 15, i32 7            ; 2 uses
  %i.p = and i32 %i.o, %5
  %i.q = icmp eq i32 %i.p, 0
  tail call void @llvm.assume(i1 %i.q)
  %i.r = and i32 %i.o, %1
  %i.s = icmp eq i32 %i.r, 0
  tail call void @llvm.assume(i1 %i.s)
  %i.t = icmp ult i32 %4, %5
  br i1 %i.t, label %bb.c, label %tcg_gen_gvec_rotli.exit

bb.c:                                             ; preds = %check_size_align.exit.i.i.i
  %i.u = add i32 %4, %1
  %i.v = sub nuw nsw i32 %5, %4                   ; 2 uses
  tail call fastcc void @do_dup(i32 noundef 0, ptr noundef %i.k, i32 noundef %i.u, i32 noundef %i.v, i32 noundef %i.v, ptr noundef null, ptr noundef null, i64 noundef 0), !inline_history !0
  br label %tcg_gen_gvec_rotli.exit

bb.d:                                             ; preds = %bb.b
  tail call void @tcg_gen_gvec_2_var(ptr noundef %i.k, i32 noundef %1, ptr noundef %i.k, i32 noundef %2, i32 noundef %4, i32 noundef %5, ptr noundef nonnull @tcg_gen_gvec_mov_var.g)
  br label %tcg_gen_gvec_rotli.exit

bb.e:                                             ; preds = %bb.a
  %i.w = zext nneg i32 %0 to i64
  %i.x = getelementptr inbounds nuw [56 x i8], ptr @tcg_gen_gvec_rotli.g, i64 %i.w
  tail call void @tcg_gen_gvec_2i(i32 noundef %1, i32 noundef %2, i32 noundef %4, i32 noundef %5, i64 noundef %i.g, ptr noundef nonnull %i.x)
  br label %tcg_gen_gvec_rotli.exit

tcg_gen_gvec_rotli.exit:                          ; preds = %check_size_align.exit.i.i.i, %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tcg_gen_gvec_shls(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ult i32 %0, 4
  tail call void @llvm.assume(i1 %i.a)
  tail call fastcc void @do_gvec_shifts(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull @tcg_gen_gvec_shls.g)
  ret void
}

declare void @tcg_gen_shl_i32(ptr noundef, ptr noundef, ptr noundef) #2

declare void @tcg_gen_shl_i64(ptr noundef, ptr noundef, ptr noundef) #2

declare void @tcg_gen_shls_vec(i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare void @tcg_gen_shlv_vec(i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @do_gvec_shifts(i32 noundef range(i32 0, 4) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) unnamed_addr #1 {
check_size_align.exit:
  %i.a = icmp ult i32 %5, 2049
  tail call void @llvm.assume(i1 %i.a)
  %i.b = icmp samesign ugt i32 %5, 15
  %i.c = select i1 %i.b, i32 15, i32 7
  %i.d = and i32 %i.c, %5
  %i.e = icmp eq i32 %i.d, 0
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp ne i32 %1, %2
  %i.g = add i32 %5, %1
  %.not10.i = icmp ugt i32 %i.g, %2
  %or.cond11.i = and i1 %i.f, %.not10.i
  br i1 %or.cond11.i, label %bb.a, label %check_overlap_2.exit

bb.a:                                             ; preds = %check_size_align.exit
  %i.h = add i32 %5, %2
  %i.i = icmp ule i32 %i.h, %1
  tail call void @llvm.assume(i1 %i.i)
  br label %check_overlap_2.exit

check_overlap_2.exit:                             ; preds = %check_size_align.exit, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.k = icmp eq i32 %0, 3                        ; 4 uses
  %i.l = tail call fastcc i32 @choose_vector_type(ptr noundef nonnull %i.j, i32 noundef %0, i32 noundef %4, i1 noundef zeroext %i.k)
  switch i32 %i.l, label %bb.f [
    i32 0, label %bb.g
    i32 5, label %bb.b
    i32 4, label %bb.d
    i32 3, label %bb.e
  ]

bb.b:                                             ; preds = %check_overlap_2.exit
  %i.m = and i32 %4, -32                          ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %expand_2sh_vec.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.p = zext i32 %i.m to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvars.iv.next, %.lr.ph.i ] ; 2 uses
  %i.q = tail call ptr @tcg_temp_new_vec(i32 noundef 5) #9 ; 2 uses
  %i.r = tail call ptr @tcg_temp_new_vec(i32 noundef 5) #9 ; 2 uses
  %i.s = load ptr, ptr @tcg_env, align 8
  %i.t = trunc nuw i64 %indvars.iv to i32         ; 2 uses
  %i.u = add i32 %2, %i.t
  %i.v = zext i32 %i.u to i64
  tail call void @tcg_gen_ld_vec(ptr noundef %i.q, ptr noundef %i.s, i64 noundef %i.v) #9
  tail call void %i.o(i32 noundef range(i32 0, 4) %0, ptr noundef %i.r, ptr noundef %i.q, ptr noundef %3) #9, !inline_history !55
  %i.w = load ptr, ptr @tcg_env, align 8
  %i.x = add i32 %1, %i.t
  %i.y = zext i32 %i.x to i64
  tail call void @tcg_gen_st_vec(ptr noundef %i.r, ptr noundef %i.w, i64 noundef %i.y) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 32 ; 2 uses
  %i.z = icmp samesign ult i64 %indvars.iv.next, %i.p
  br i1 %i.z, label %.lr.ph.i, label %expand_2sh_vec.exit, !llvm.loop !56

expand_2sh_vec.exit:                              ; preds = %.lr.ph.i, %bb.b
  %i.aa = icmp eq i32 %i.m, %4
  br i1 %i.aa, label %expand_2sh_vec.exit158, label %bb.c

bb.c:                                             ; preds = %expand_2sh_vec.exit
  %i.ab = add i32 %i.m, %1
  %i.ac = add i32 %i.m, %2
  %i.ad = and i32 %4, 31
  %i.ae = sub i32 %5, %i.m
  br label %bb.d

bb.d:                                             ; preds = %check_overlap_2.exit, %bb.c
  %.0140 = phi i32 [ %i.ae, %bb.c ], [ %5, %check_overlap_2.exit ] ; 2 uses
  %.0135 = phi i32 [ %i.ad, %bb.c ], [ %4, %check_overlap_2.exit ] ; 3 uses
  %.0133 = phi i32 [ %i.ac, %bb.c ], [ %2, %check_overlap_2.exit ]
  %.0 = phi i32 [ %i.ab, %bb.c ], [ %1, %check_overlap_2.exit ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  %.not.i155 = icmp eq i32 %.0135, 0
  br i1 %.not.i155, label %expand_2sh_vec.exit158, label %.lr.ph.i156

.lr.ph.i156:                                      ; preds = %bb.d, %.lr.ph.i156
  %.016.i157 = phi i32 [ %i.ap, %.lr.ph.i156 ], [ 0, %bb.d ] ; 3 uses
  %i.ah = tail call ptr @tcg_temp_new_vec(i32 noundef 4) #9 ; 2 uses
  %i.ai = tail call ptr @tcg_temp_new_vec(i32 noundef 4) #9 ; 2 uses
  %i.aj = load ptr, ptr @tcg_env, align 8
  %i.ak = add i32 %.016.i157, %.0133
  %i.al = zext i32 %i.ak to i64
  tail call void @tcg_gen_ld_vec(ptr noundef %i.ah, ptr noundef %i.aj, i64 noundef %i.al) #9
  tail call void %i.ag(i32 noundef range(i32 0, 4) %0, ptr noundef %i.ai, ptr noundef %i.ah, ptr noundef %3) #9, !inline_history !55
  %i.am = load ptr, ptr @tcg_env, align 8
  %i.an = add i32 %.016.i157, %.0
  %i.ao = zext i32 %i.an to i64
  tail call void @tcg_gen_st_vec(ptr noundef %i.ai, ptr noundef %i.am, i64 noundef %i.ao) #9
  %i.ap = add i32 %.016.i157, 16                  ; 2 uses
  %i.aq = icmp ult i32 %i.ap, %.0135
  br i1 %i.aq, label %.lr.ph.i156, label %expand_2sh_vec.exit158, !llvm.loop !56

bb.e:                                             ; preds = %check_overlap_2.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  %.not.i159 = icmp eq i32 %4, 0
  br i1 %.not.i159, label %expand_2sh_vec.exit158, label %.lr.ph.i160

.lr.ph.i160:                                      ; preds = %bb.e, %.lr.ph.i160
  %.016.i161 = phi i32 [ %i.bb, %.lr.ph.i160 ], [ 0, %bb.e ] ; 3 uses
  %i.at = tail call ptr @tcg_temp_new_vec(i32 noundef 3) #9 ; 2 uses
  %i.au = tail call ptr @tcg_temp_new_vec(i32 noundef 3) #9 ; 2 uses
  %i.av = load ptr, ptr @tcg_env, align 8
  %i.aw = add i32 %.016.i161, %2
  %i.ax = zext i32 %i.aw to i64
  tail call void @tcg_gen_ld_vec(ptr noundef %i.at, ptr noundef %i.av, i64 noundef %i.ax) #9
  tail call void %i.as(i32 noundef range(i32 0, 4) %0, ptr noundef %i.au, ptr noundef %i.at, ptr noundef %3) #9, !inline_history !55
  %i.ay = load ptr, ptr @tcg_env, align 8
  %i.az = add i32 %.016.i161, %1
  %i.ba = zext i32 %i.az to i64
  tail call void @tcg_gen_st_vec(ptr noundef %i.au, ptr noundef %i.ay, i64 noundef %i.ba) #9
  %i.bb = add i32 %.016.i161, 8                   ; 2 uses
  %i.bc = icmp ult i32 %i.bb, %4
  br i1 %i.bc, label %.lr.ph.i160, label %expand_2sh_vec.exit158, !llvm.loop !56

bb.f:                                             ; preds = %check_overlap_2.exit
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 3275, ptr noundef nonnull @__func__.do_gvec_shifts, ptr noundef null) #10
  unreachable

bb.g:                                             ; preds = %check_overlap_2.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 72
end_hunk_0
