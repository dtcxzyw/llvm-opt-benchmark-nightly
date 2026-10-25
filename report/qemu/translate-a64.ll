Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/translate-a64?download=true
inline.NumInlined: 6569
inline.NumDeleted: 927
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@trans_SMAX_i:bb.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @trans_UMAX_i(i64 %.104.val.120.val, ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = and i64 %.104.val.120.val, 67553994410557440
  %i.b = icmp ne i64 %i.a, 0                      ; 2 uses
  br i1 %i.b, label %bb.b, label %gen_rri.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4
  %.not = icmp eq i32 %i.d, 0
  %i.e = select i1 %.not, ptr @gen_umax32_i64, ptr @tcg_gen_umax_i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %i.h = icmp eq i32 %i.g, 31
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.i, i64 noundef 0) #14
  br label %cpu_reg.exit.i

bb.d:                                             ; preds = %bb.b
  %i.j = sext i32 %i.g to i64
  %i.k = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8
  br label %cpu_reg.exit.i

cpu_reg.exit.i:                                   ; preds = %bb.d, %bb.c
  %i.m = phi ptr [ %i.l, %bb.d ], [ %i.i, %bb.c ]
  %i.n = load i32, ptr %0, align 4                ; 2 uses
  %i.o = icmp eq i32 %i.n, 31
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %cpu_reg.exit.i
  %i.p = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.p, i64 noundef 0) #14
  br label %cpu_reg.exit18.i

bb.f:                                             ; preds = %cpu_reg.exit.i
  %i.q = sext i32 %i.n to i64
  %i.r = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8
  br label %cpu_reg.exit18.i

cpu_reg.exit18.i:                                 ; preds = %bb.f, %bb.e
  %i.t = phi ptr [ %i.s, %bb.f ], [ %i.p, %bb.e ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load i32, ptr %i.u, align 4
  %i.w = sext i32 %i.v to i64
  %i.x = tail call ptr @tcg_constant_i64(i64 noundef %i.w) #14
  tail call void %i.e(ptr noundef %i.t, ptr noundef %i.m, ptr noundef %i.x) #14, !inline_history !11
  %i.y = load i32, ptr %i.c, align 4
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %bb.g, label %gen_rri.exit

bb.g:                                             ; preds = %cpu_reg.exit18.i
  tail call void @tcg_gen_ext32u_i64(ptr noundef %i.t, ptr noundef %i.t) #14
  br label %gen_rri.exit

gen_rri.exit:                                     ; preds = %bb.g, %cpu_reg.exit18.i, %bb.a
  ret i1 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @trans_SMIN_i(i64 %.104.val.120.val, ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = and i64 %.104.val.120.val, 67553994410557440
  %i.b = icmp ne i64 %i.a, 0                      ; 2 uses
  br i1 %i.b, label %bb.b, label %gen_rri.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4
  %.not = icmp eq i32 %i.d, 0
  %i.e = select i1 %.not, ptr @gen_smin32_i64, ptr @tcg_gen_smin_i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %i.h = icmp eq i32 %i.g, 31
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.i, i64 noundef 0) #14
  br label %cpu_reg.exit.i

bb.d:                                             ; preds = %bb.b
  %i.j = sext i32 %i.g to i64
  %i.k = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8
  br label %cpu_reg.exit.i

cpu_reg.exit.i:                                   ; preds = %bb.d, %bb.c
  %i.m = phi ptr [ %i.l, %bb.d ], [ %i.i, %bb.c ]
  %i.n = load i32, ptr %0, align 4                ; 2 uses
  %i.o = icmp eq i32 %i.n, 31
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %cpu_reg.exit.i
  %i.p = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.p, i64 noundef 0) #14
  br label %cpu_reg.exit18.i

bb.f:                                             ; preds = %cpu_reg.exit.i
  %i.q = sext i32 %i.n to i64
  %i.r = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8
  br label %cpu_reg.exit18.i

cpu_reg.exit18.i:                                 ; preds = %bb.f, %bb.e
  %i.t = phi ptr [ %i.s, %bb.f ], [ %i.p, %bb.e ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load i32, ptr %i.u, align 4
  %i.w = sext i32 %i.v to i64
  %i.x = tail call ptr @tcg_constant_i64(i64 noundef %i.w) #14
  tail call void %i.e(ptr noundef %i.t, ptr noundef %i.m, ptr noundef %i.x) #14, !inline_history !11
  %i.y = load i32, ptr %i.c, align 4
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %bb.g, label %gen_rri.exit

bb.g:                                             ; preds = %cpu_reg.exit18.i
  tail call void @tcg_gen_ext32u_i64(ptr noundef %i.t, ptr noundef %i.t) #14
  br label %gen_rri.exit

gen_rri.exit:                                     ; preds = %bb.g, %cpu_reg.exit18.i, %bb.a
  ret i1 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @trans_UMIN_i(i64 %.104.val.120.val, ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = and i64 %.104.val.120.val, 67553994410557440
  %i.b = icmp ne i64 %i.a, 0                      ; 2 uses
  br i1 %i.b, label %bb.b, label %gen_rri.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4
  %.not = icmp eq i32 %i.d, 0
  %i.e = select i1 %.not, ptr @gen_umin32_i64, ptr @tcg_gen_umin_i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %i.h = icmp eq i32 %i.g, 31
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.i, i64 noundef 0) #14
  br label %cpu_reg.exit.i

bb.d:                                             ; preds = %bb.b
  %i.j = sext i32 %i.g to i64
  %i.k = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8
  br label %cpu_reg.exit.i

cpu_reg.exit.i:                                   ; preds = %bb.d, %bb.c
  %i.m = phi ptr [ %i.l, %bb.d ], [ %i.i, %bb.c ]
  %i.n = load i32, ptr %0, align 4                ; 2 uses
  %i.o = icmp eq i32 %i.n, 31
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %cpu_reg.exit.i
  %i.p = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.p, i64 noundef 0) #14
  br label %cpu_reg.exit18.i

bb.f:                                             ; preds = %cpu_reg.exit.i
  %i.q = sext i32 %i.n to i64
  %i.r = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8
  br label %cpu_reg.exit18.i

cpu_reg.exit18.i:                                 ; preds = %bb.f, %bb.e
  %i.t = phi ptr [ %i.s, %bb.f ], [ %i.p, %bb.e ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load i32, ptr %i.u, align 4
  %i.w = sext i32 %i.v to i64
  %i.x = tail call ptr @tcg_constant_i64(i64 noundef %i.w) #14
  tail call void %i.e(ptr noundef %i.t, ptr noundef %i.m, ptr noundef %i.x) #14, !inline_history !11
  %i.y = load i32, ptr %i.c, align 4
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %bb.g, label %gen_rri.exit

bb.g:                                             ; preds = %cpu_reg.exit18.i
  tail call void @tcg_gen_ext32u_i64(ptr noundef %i.t, ptr noundef %i.t) #14
  br label %gen_rri.exit

gen_rri.exit:                                     ; preds = %bb.g, %cpu_reg.exit18.i, %bb.a
  ret i1 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @trans_ADDS_i(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %.not = icmp eq i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = load i32, ptr %0, align 4                ; 2 uses
  %i.i = icmp eq i32 %i.h, 31
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.j, i64 noundef 0) #14
  br label %cpu_reg.exit18.i

bb.c:                                             ; preds = %bb.a
  %i.k = sext i32 %i.h to i64
  %i.l = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8
  br label %cpu_reg.exit18.i

cpu_reg.exit18.i:                                 ; preds = %bb.c, %bb.b
  %i.n = phi ptr [ %i.m, %bb.c ], [ %i.j, %bb.b ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i32, ptr %i.o, align 4
  %i.q = sext i32 %i.p to i64
  %i.r = tail call ptr @tcg_constant_i64(i64 noundef %i.q) #14 ; 2 uses
  br i1 %.not, label %call.1, label %call.0

call.0:                                           ; preds = %cpu_reg.exit18.i
  tail call fastcc void @gen_add64_CC(ptr noundef %i.n, ptr noundef %i.g, ptr noundef %i.r) #14, !inline_history !11
  br label %cpu_reg.exit18.i.tail

call.1:                                           ; preds = %cpu_reg.exit18.i
  tail call fastcc void @gen_add32_CC(ptr noundef %i.n, ptr noundef %i.g, ptr noundef %i.r) #14, !inline_history !11
  br label %cpu_reg.exit18.i.tail

cpu_reg.exit18.i.tail:                            ; preds = %call.1, %call.0
  %1 = load i32, ptr %i.a, align 4
  %.not.i = icmp eq i32 %1, 0
  br i1 %.not.i, label %bb.d, label %gen_rri.exit

bb.d:                                             ; preds = %cpu_reg.exit18.i.tail
  tail call void @tcg_gen_ext32u_i64(ptr noundef %i.n, ptr noundef %i.n) #14
  br label %gen_rri.exit

gen_rri.exit:                                     ; preds = %cpu_reg.exit18.i.tail, %bb.d
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @trans_SUB_i(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = load i32, ptr %0, align 4
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i32, ptr %i.j, align 4
  %i.l = sext i32 %i.k to i64
  %i.m = tail call ptr @tcg_constant_i64(i64 noundef %i.l) #14
  tail call void @tcg_gen_sub_i64(ptr noundef %i.i, ptr noundef %i.e, ptr noundef %i.m) #14, !inline_history !11
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.o = load i32, ptr %i.n, align 4
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %bb.b, label %gen_rri.exit

bb.b:                                             ; preds = %bb.a
  tail call void @tcg_gen_ext32u_i64(ptr noundef %i.i, ptr noundef %i.i) #14
  br label %gen_rri.exit

gen_rri.exit:                                     ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @trans_SUBG_i(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 40
  %.val = load i64, ptr %i.c, align 8
  %i.d = and i64 %.val, 3840
  %i.e = icmp ne i64 %i.d, 0                      ; 2 uses
  br i1 %i.e, label %bb.b, label %gen_add_sub_imm_with_tags.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 290
  %.val4 = load i8, ptr %i.f, align 2, !range !29, !noundef !30
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i32, ptr %i.g, align 4
  %.neg = mul i32 %i.h, -16                       ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i32, ptr %i.i, align 4
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = load i32, ptr %1, align 4
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8              ; 4 uses
  %i.r = trunc nuw i8 %.val4 to i1
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr @tcg_env, align 8
  %i.t = tail call ptr @tcg_constant_i32(i32 noundef %.neg) #14
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.v = load i32, ptr %i.u, align 4
  %i.w = tail call ptr @tcg_constant_i32(i32 noundef %i.v) #14
  %i.x = load ptr, ptr @helper_info_addsubg, align 8
  %i.y = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.z = load ptr, ptr %i.y, align 8              ; 5 uses
  %i.aa = ptrtoint ptr %i.q to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aa
  %i.ac = ptrtoint ptr %i.s to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ac
  %i.ae = ptrtoint ptr %i.m to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ae
  %i.ag = ptrtoint ptr %i.t to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ag
  %i.ai = ptrtoint ptr %i.w to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ai
  tail call void @tcg_gen_call4(ptr noundef %i.x, ptr noundef nonnull @helper_info_addsubg, ptr noundef %i.ab, ptr noundef %i.ad, ptr noundef %i.af, ptr noundef %i.ah, ptr noundef %i.aj) #14
  br label %gen_add_sub_imm_with_tags.exit

bb.d:                                             ; preds = %bb.b
  %i.ak = sext i32 %.neg to i64
  tail call void @tcg_gen_addi_i64(ptr noundef %i.q, ptr noundef %i.m, i64 noundef %i.ak) #14
  tail call void @tcg_gen_andi_i64(ptr noundef %i.q, ptr noundef %i.q, i64 noundef -1080863910568919041) #14
  br label %gen_add_sub_imm_with_tags.exit

gen_add_sub_imm_with_tags.exit:                   ; preds = %bb.d, %bb.c, %bb.a
  ret i1 %i.e
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @trans_SUBS_i(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %.not = icmp eq i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = load i32, ptr %0, align 4                ; 2 uses
  %i.i = icmp eq i32 %i.h, 31
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.j, i64 noundef 0) #14
  br label %cpu_reg.exit18.i

bb.c:                                             ; preds = %bb.a
  %i.k = sext i32 %i.h to i64
  %i.l = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8
  br label %cpu_reg.exit18.i

cpu_reg.exit18.i:                                 ; preds = %bb.c, %bb.b
  %i.n = phi ptr [ %i.m, %bb.c ], [ %i.j, %bb.b ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i32, ptr %i.o, align 4
  %i.q = sext i32 %i.p to i64
  %i.r = tail call ptr @tcg_constant_i64(i64 noundef %i.q) #14 ; 2 uses
  br i1 %.not, label %call.1, label %call.0

call.0:                                           ; preds = %cpu_reg.exit18.i
  tail call fastcc void @gen_sub64_CC(ptr noundef %i.n, ptr noundef %i.g, ptr noundef %i.r) #14, !inline_history !11
  br label %cpu_reg.exit18.i.tail

call.1:                                           ; preds = %cpu_reg.exit18.i
  tail call fastcc void @gen_sub32_CC(ptr noundef %i.n, ptr noundef %i.g, ptr noundef %i.r) #14, !inline_history !11
  br label %cpu_reg.exit18.i.tail

cpu_reg.exit18.i.tail:                            ; preds = %call.1, %call.0
  %1 = load i32, ptr %i.a, align 4
  %.not.i = icmp eq i32 %1, 0
  br i1 %.not.i, label %bb.d, label %gen_rri.exit

bb.d:                                             ; preds = %cpu_reg.exit18.i.tail
  tail call void @tcg_gen_ext32u_i64(ptr noundef %i.n, ptr noundef %i.n) #14
  br label %gen_rri.exit

gen_rri.exit:                                     ; preds = %cpu_reg.exit18.i.tail, %bb.d
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @trans_AND_i(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = and i32 %i.b, 63                         ; 2 uses
  %i.d = lshr i32 %i.b, 6                         ; 2 uses
  %i.e = and i32 %i.d, 64                         ; 2 uses
  %i.f = or disjoint i32 %i.e, %i.c
  %i.g = xor i32 %i.f, 63                         ; 2 uses
  %i.h = icmp samesign ult i32 %i.g, 2
  br i1 %i.h, label %gen_rri_log.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = and i32 %i.d, 63
  %i.j = tail call range(i32 25, 33) i32 @llvm.ctlz.i32(i32 %i.g, i1 true)
  %i.k = lshr exact i32 -2147483648, %i.j         ; 4 uses
  %i.l = add nsw i32 %i.k, -1                     ; 3 uses
  %i.m = and i32 %i.l, %i.c                       ; 2 uses
  %i.n = and i32 %i.i, %i.l                       ; 3 uses
  %i.o = icmp eq i32 %i.m, %i.l
  br i1 %i.o, label %gen_rri_log.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = xor i32 %i.m, 63
  %i.q = zext nneg i32 %i.p to i64
  %i.r = lshr i64 -1, %i.q                        ; 3 uses
  %.not.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = zext nneg i32 %i.n to i64
  %i.t = lshr i64 %i.r, %i.s
  %i.u = sub nsw i32 %i.k, %i.n
  %i.v = zext nneg i32 %i.u to i64
  %i.w = shl i64 %i.r, %i.v
  %i.x = or i64 %i.t, %i.w
  %i.y = sub nuw nsw i32 64, %i.k
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = lshr i64 -1, %i.z
  %i.ab = and i64 %i.x, %i.aa
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i64 [ %i.ab, %bb.d ], [ %i.r, %bb.c ] ; 2 uses
  %.not7.not.i = icmp eq i32 %i.e, 0
  br i1 %.not7.not.i, label %.lr.ph.i.i.i, label %.loopexit.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.lr.ph.i.i.i
  %.010.i.i.i = phi i32 [ %i.af, %.lr.ph.i.i.i ], [ %i.k, %bb.e ] ; 3 uses
  %.079.i.i.i = phi i64 [ %i.ae, %.lr.ph.i.i.i ], [ %.0.i.i, %bb.e ] ; 2 uses
  %i.ac = zext nneg i32 %.010.i.i.i to i64
  %i.ad = shl i64 %.079.i.i.i, %i.ac
  %i.ae = or i64 %i.ad, %.079.i.i.i               ; 2 uses
  %i.af = shl nuw nsw i32 %.010.i.i.i, 1
  %i.ag = icmp samesign ult i32 %.010.i.i.i, 32
  br i1 %i.ag, label %.lr.ph.i.i.i, label %.loopexit.i, !llvm.loop !0

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i, %bb.e
  %.0.ph.i = phi i64 [ %.0.i.i, %bb.e ], [ %i.ae, %.lr.ph.i.i.i ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4
  %.not.i = icmp eq i32 %i.ai, 0
  %i.aj = and i64 %.0.ph.i, 4294967295
  %spec.select.i = select i1 %.not.i, i64 %i.aj, i64 %.0.ph.i
  %i.ak = load i32, ptr %0, align 4
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8            ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ap = load i32, ptr %i.ao, align 4            ; 2 uses
  %i.aq = icmp eq i32 %i.ap, 31
  br i1 %i.aq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.loopexit.i
  %i.ar = tail call ptr @tcg_temp_new_i64() #14   ; 2 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.ar, i64 noundef 0) #14
  br label %cpu_reg.exit23.i

bb.g:                                             ; preds = %.loopexit.i
  %i.as = sext i32 %i.ap to i64
  %i.at = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8
  br label %cpu_reg.exit23.i

cpu_reg.exit23.i:                                 ; preds = %bb.g, %bb.f
  %.0.i22.i = phi ptr [ %i.ar, %bb.f ], [ %i.au, %bb.g ]
  tail call void @tcg_gen_andi_i64(ptr noundef %i.an, ptr noundef %.0.i22.i, i64 noundef %spec.select.i) #14, !callees !36, !inline_history !12
  %i.av = load i32, ptr %i.ah, align 4
  %.not20.i = icmp eq i32 %i.av, 0
  br i1 %.not20.i, label %bb.h, label %gen_rri_log.exit

bb.h:                                             ; preds = %cpu_reg.exit23.i
  tail call void @tcg_gen_ext32u_i64(ptr noundef %i.an, ptr noundef %i.an) #14
  br label %gen_rri_log.exit

gen_rri_log.exit:                                 ; preds = %bb.a, %bb.b, %cpu_reg.exit23.i, %bb.h
  %.030.i5.i = phi i1 [ true, %cpu_reg.exit23.i ], [ true, %bb.h ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %.030.i5.i
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @trans_MOVN(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4
  %i.g = load i32, ptr %0, align 4                ; 2 uses
  %i.h = icmp eq i32 %i.g, 31
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.i, i64 noundef 0) #14
  br label %cpu_reg.exit

bb.c:                                             ; preds = %bb.a
  %i.j = sext i32 %i.g to i64
  %i.k = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8
  br label %cpu_reg.exit

cpu_reg.exit:                                     ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.i, %bb.b ], [ %i.l, %bb.c ]
  %.not = icmp eq i32 %i.f, 0
  %i.m = sext i32 %i.d to i64
  %i.n = shl i32 %i.b, 4
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl i64 %i.m, %i.o
  %i.q = xor i64 %i.p, -1                         ; 2 uses
  %i.r = and i64 %i.q, 4294967295
  %spec.select = select i1 %.not, i64 %i.r, i64 %i.q
  tail call void @tcg_gen_movi_i64(ptr noundef %.0.i, i64 noundef %spec.select) #14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @trans_ORR_i(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = and i32 %i.b, 63                         ; 2 uses
  %i.d = lshr i32 %i.b, 6                         ; 2 uses
  %i.e = and i32 %i.d, 64                         ; 2 uses
  %i.f = or disjoint i32 %i.e, %i.c
  %i.g = xor i32 %i.f, 63                         ; 2 uses
  %i.h = icmp samesign ult i32 %i.g, 2
  br i1 %i.h, label %gen_rri_log.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = and i32 %i.d, 63
  %i.j = tail call range(i32 25, 33) i32 @llvm.ctlz.i32(i32 %i.g, i1 true)
  %i.k = lshr exact i32 -2147483648, %i.j         ; 4 uses
  %i.l = add nsw i32 %i.k, -1                     ; 3 uses
  %i.m = and i32 %i.l, %i.c                       ; 2 uses
  %i.n = and i32 %i.i, %i.l                       ; 3 uses
  %i.o = icmp eq i32 %i.m, %i.l
  br i1 %i.o, label %gen_rri_log.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = xor i32 %i.m, 63
  %i.q = zext nneg i32 %i.p to i64
  %i.r = lshr i64 -1, %i.q                        ; 3 uses
  %.not.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = zext nneg i32 %i.n to i64
  %i.t = lshr i64 %i.r, %i.s
  %i.u = sub nsw i32 %i.k, %i.n
  %i.v = zext nneg i32 %i.u to i64
  %i.w = shl i64 %i.r, %i.v
  %i.x = or i64 %i.t, %i.w
  %i.y = sub nuw nsw i32 64, %i.k
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = lshr i64 -1, %i.z
  %i.ab = and i64 %i.x, %i.aa
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i64 [ %i.ab, %bb.d ], [ %i.r, %bb.c ] ; 2 uses
  %.not7.not.i = icmp eq i32 %i.e, 0
  br i1 %.not7.not.i, label %.lr.ph.i.i.i, label %.loopexit.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.lr.ph.i.i.i
  %.010.i.i.i = phi i32 [ %i.af, %.lr.ph.i.i.i ], [ %i.k, %bb.e ] ; 3 uses
  %.079.i.i.i = phi i64 [ %i.ae, %.lr.ph.i.i.i ], [ %.0.i.i, %bb.e ] ; 2 uses
  %i.ac = zext nneg i32 %.010.i.i.i to i64
  %i.ad = shl i64 %.079.i.i.i, %i.ac
  %i.ae = or i64 %i.ad, %.079.i.i.i               ; 2 uses
  %i.af = shl nuw nsw i32 %.010.i.i.i, 1
  %i.ag = icmp samesign ult i32 %.010.i.i.i, 32
  br i1 %i.ag, label %.lr.ph.i.i.i, label %.loopexit.i, !llvm.loop !0

end_hunk_0
begin_hunk_1_@trans_IRG:bb.a
  %i.d = and i64 %.val, 3840
  %i.e = icmp ne i64 %i.d, 0                      ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %1, align 4
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load i32, ptr %i.j, align 4
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 290
  %i.p = load i8, ptr %i.o, align 2, !range !29, !noundef !30
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr @tcg_env, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i32, ptr %i.s, align 4              ; 2 uses
  %i.u = icmp eq i32 %i.t, 31
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.v, i64 noundef 0) #14
  br label %cpu_reg.exit

bb.e:                                             ; preds = %bb.c
  %i.w = sext i32 %i.t to i64
  %i.x = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8
  br label %cpu_reg.exit

cpu_reg.exit:                                     ; preds = %bb.d, %bb.e
  %.0.i = phi ptr [ %i.v, %bb.d ], [ %i.y, %bb.e ]
  %i.z = load ptr, ptr @helper_info_irg, align 8
  %i.aa = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.ab = load ptr, ptr %i.aa, align 8            ; 4 uses
  %i.ac = ptrtoint ptr %i.i to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ac
  %i.ae = ptrtoint ptr %i.r to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ae
  %i.ag = ptrtoint ptr %i.n to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ag
  %i.ai = ptrtoint ptr %.0.i to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ai
  tail call void @tcg_gen_call3(ptr noundef %i.z, ptr noundef nonnull @helper_info_irg, ptr noundef %i.ad, ptr noundef %i.af, ptr noundef %i.ah, ptr noundef %i.aj) #14
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  tail call void @tcg_gen_andi_i64(ptr noundef %i.i, ptr noundef %i.n, i64 noundef -1080863910568919041) #14
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %cpu_reg.exit, %bb.f
  ret i1 %i.e
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @trans_PACGA(i64 %.104.val.112.val, i64 %.104.val.120.val, ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = lshr i64 %.104.val.112.val, 4
  %i.b = lshr i64 %.104.val.112.val, 8
  %i.c = or i64 %i.a, %i.b
  %i.d = lshr i64 %.104.val.120.val, 12
  %i.e = or i64 %i.c, %i.d
  %i.f = and i64 %i.e, 15
  %i.g = icmp ne i64 %i.f, 0                      ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %0, align 4                ; 2 uses
  %i.i = icmp eq i32 %i.h, 31
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.j, i64 noundef 0) #14
  br label %cpu_reg.exit

bb.d:                                             ; preds = %bb.b
  %i.k = sext i32 %i.h to i64
  %i.l = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8
  br label %cpu_reg.exit

cpu_reg.exit:                                     ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.j, %bb.c ], [ %i.m, %bb.d ]
  %i.n = load ptr, ptr @tcg_env, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.p = load i32, ptr %i.o, align 4              ; 2 uses
  %i.q = icmp eq i32 %i.p, 31
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %cpu_reg.exit
  %i.r = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.r, i64 noundef 0) #14
  br label %cpu_reg.exit11

bb.f:                                             ; preds = %cpu_reg.exit
  %i.s = sext i32 %i.p to i64
  %i.t = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8
  br label %cpu_reg.exit11

cpu_reg.exit11:                                   ; preds = %bb.e, %bb.f
  %.0.i10 = phi ptr [ %i.r, %bb.e ], [ %i.u, %bb.f ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i32, ptr %i.v, align 4
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = load ptr, ptr @helper_info_pacga, align 8
  %i.ab = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.ac = load ptr, ptr %i.ab, align 8            ; 4 uses
  %i.ad = ptrtoint ptr %.0.i to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ad
  %i.af = ptrtoint ptr %i.n to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.af
  %i.ah = ptrtoint ptr %.0.i10 to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ah
  %i.aj = ptrtoint ptr %i.z to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aj
  tail call void @tcg_gen_call3(ptr noundef %i.aa, ptr noundef nonnull @helper_info_pacga, ptr noundef %i.ae, ptr noundef %i.ag, ptr noundef %i.ai, ptr noundef %i.ak) #14
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %cpu_reg.exit11
  ret i1 %i.g
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @trans_GMI(i64 %.104.val.40.val, ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = and i64 %.104.val.40.val, 3840
  %i.b = icmp ne i64 %i.a, 0                      ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @tcg_temp_new_i64() #14    ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8
  tail call void @tcg_gen_extract_i64(ptr noundef %i.c, ptr noundef %i.h, i32 noundef 56, i32 noundef 4) #14
  %i.i = tail call ptr @tcg_constant_i64(i64 noundef 1) #14
  tail call void @tcg_gen_shl_i64(ptr noundef %i.c, ptr noundef %i.i, ptr noundef %i.c) #14
  %i.j = load i32, ptr %0, align 4                ; 2 uses
  %i.k = icmp eq i32 %i.j, 31
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.l, i64 noundef 0) #14
  br label %cpu_reg.exit

bb.d:                                             ; preds = %bb.b
  %i.m = sext i32 %i.j to i64
  %i.n = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8
  br label %cpu_reg.exit

cpu_reg.exit:                                     ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.l, %bb.c ], [ %i.o, %bb.d ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i32, ptr %i.p, align 4              ; 2 uses
  %i.r = icmp eq i32 %i.q, 31
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %cpu_reg.exit
  %i.s = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.s, i64 noundef 0) #14
  br label %cpu_reg.exit14

bb.f:                                             ; preds = %cpu_reg.exit
  %i.t = sext i32 %i.q to i64
  %i.u = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8
  br label %cpu_reg.exit14

cpu_reg.exit14:                                   ; preds = %bb.e, %bb.f
  %.0.i13 = phi ptr [ %i.s, %bb.e ], [ %i.v, %bb.f ]
  tail call void @tcg_gen_or_i64(ptr noundef %.0.i, ptr noundef %.0.i13, ptr noundef %i.c) #14
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %cpu_reg.exit14
  ret i1 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @trans_RBIT(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 4
  %.not.not = icmp eq i32 %i.e, 0
  %i.f = icmp eq i32 %i.a, 31
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.g, i64 noundef 0) #14
  br label %cpu_reg.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = sext i32 %i.a to i64
  %i.i = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8
  br label %cpu_reg.exit.i

cpu_reg.exit.i:                                   ; preds = %bb.c, %bb.b
  %.0.i.i = phi ptr [ %i.g, %bb.b ], [ %i.j, %bb.c ] ; 2 uses
  %i.k = icmp eq i32 %i.c, 31
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %cpu_reg.exit.i
  %i.l = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.l, i64 noundef 0) #14
  br label %gen_rr.exit

bb.e:                                             ; preds = %cpu_reg.exit.i
  %i.m = sext i32 %i.c to i64
  %i.n = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8
  br label %gen_rr.exit

gen_rr.exit:                                      ; preds = %bb.d, %bb.e
  %.0.i4.i = phi ptr [ %i.l, %bb.d ], [ %i.o, %bb.e ] ; 2 uses
  br i1 %.not.not, label %call.1, label %call.0

call.0:                                           ; preds = %gen_rr.exit
  tail call fastcc void @gen_helper_rbit64(ptr noundef %.0.i.i, ptr noundef %.0.i4.i) #14, !inline_history !13
  br label %gen_rr.exit.tail

call.1:                                           ; preds = %gen_rr.exit
  tail call fastcc void @gen_rbit32(ptr noundef %.0.i.i, ptr noundef %.0.i4.i) #14, !inline_history !13
  br label %gen_rr.exit.tail

gen_rr.exit.tail:                                 ; preds = %call.1, %call.0
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @trans_ABS(i64 %.104.val.120.val, ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = and i64 %.104.val.120.val, 67553994410557440
  %i.b = icmp ne i64 %i.a, 0                      ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 4                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 4
  %.not = icmp eq i32 %i.g, 0
  %i.h = select i1 %.not, ptr @gen_abs32, ptr @tcg_gen_abs_i64
  %i.i = icmp eq i32 %i.c, 31
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.j, i64 noundef 0) #14
  br label %cpu_reg.exit.i

bb.d:                                             ; preds = %bb.b
  %i.k = sext i32 %i.c to i64
  %i.l = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8
  br label %cpu_reg.exit.i

cpu_reg.exit.i:                                   ; preds = %bb.d, %bb.c
  %.0.i.i = phi ptr [ %i.j, %bb.c ], [ %i.m, %bb.d ]
  %i.n = icmp eq i32 %i.e, 31
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %cpu_reg.exit.i
  %i.o = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.o, i64 noundef 0) #14
  br label %gen_rr.exit

bb.f:                                             ; preds = %cpu_reg.exit.i
  %i.p = sext i32 %i.e to i64
  %i.q = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8
  br label %gen_rr.exit

gen_rr.exit:                                      ; preds = %bb.e, %bb.f
  %.0.i4.i = phi ptr [ %i.o, %bb.e ], [ %i.r, %bb.f ]
  tail call void %i.h(ptr noundef %.0.i.i, ptr noundef %.0.i4.i) #14, !inline_history !13
  br label %bb.g

bb.g:                                             ; preds = %gen_rr.exit, %bb.a
  ret i1 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @trans_PACIA(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 112
  %.val = load i64, ptr %i.c, align 8             ; 2 uses
  %i.d = getelementptr i8, ptr %i.b, i64 120
  %.val4 = load i64, ptr %i.d, align 8
  %i.e = lshr i64 %.val, 4
  %i.f = lshr i64 %.val, 8
  %i.g = or i64 %i.e, %i.f
  %i.h = lshr i64 %.val4, 12
  %i.i = or i64 %i.g, %i.h
  %i.j = and i64 %i.i, 15
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %gen_pacaut.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i32, ptr %i.k, align 4
  %.not.i = icmp eq i32 %i.l, 0
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.n = load i32, ptr %i.m, align 4              ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not13.i = icmp eq i32 %i.n, 31
  br i1 %.not13.i, label %bb.d, label %gen_pacaut.exit

bb.d:                                             ; preds = %bb.c
  %i.o = tail call ptr @tcg_constant_i64(i64 noundef 0) #14
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.p = sext i32 %i.n to i64
  %i.q = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i = phi ptr [ %i.o, %bb.d ], [ %i.r, %bb.e ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 289
  %i.t = load i8, ptr %i.s, align 1, !range !29, !noundef !30
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.g, label %gen_pacaut.exit

bb.g:                                             ; preds = %bb.f
  %i.v = load i32, ptr %1, align 4                ; 2 uses
  %i.w = icmp eq i32 %i.v, 31
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.x, i64 noundef 0) #14
  br label %cpu_reg.exit.i

bb.i:                                             ; preds = %bb.g
  %i.y = sext i32 %i.v to i64
  %i.z = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8
  br label %cpu_reg.exit.i

cpu_reg.exit.i:                                   ; preds = %bb.i, %bb.h
  %.0.i.i = phi ptr [ %i.x, %bb.h ], [ %i.aa, %bb.i ]
  %i.ab = load ptr, ptr @tcg_env, align 8
  %i.ac = load ptr, ptr @helper_info_pacia, align 8
  %i.ad = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.ae = load ptr, ptr %i.ad, align 8            ; 3 uses
  %i.af = ptrtoint ptr %.0.i.i to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.af ; 2 uses
  %i.ah = ptrtoint ptr %i.ab to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ah
  %i.aj = ptrtoint ptr %.0.i to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj
  tail call void @tcg_gen_call3(ptr noundef %i.ac, ptr noundef nonnull @helper_info_pacia, ptr noundef %i.ag, ptr noundef %i.ai, ptr noundef %i.ag, ptr noundef %i.ak) #14
  br label %gen_pacaut.exit

gen_pacaut.exit:                                  ; preds = %cpu_reg.exit.i, %bb.f, %bb.c, %bb.a
  %i.al = phi i1 [ false, %bb.a ], [ false, %bb.c ], [ true, %cpu_reg.exit.i ], [ true, %bb.f ]
  ret i1 %i.al
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @trans_REV16(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 4
  %.not.not = icmp eq i32 %i.e, 0
  %i.f = icmp eq i32 %i.a, 31
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.g, i64 noundef 0) #14
  br label %cpu_reg.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = sext i32 %i.a to i64
  %i.i = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8
  br label %cpu_reg.exit.i

cpu_reg.exit.i:                                   ; preds = %bb.c, %bb.b
  %.0.i.i = phi ptr [ %i.g, %bb.b ], [ %i.j, %bb.c ] ; 2 uses
  %i.k = icmp eq i32 %i.c, 31
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %cpu_reg.exit.i
  %i.l = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.l, i64 noundef 0) #14
  br label %gen_rr.exit

bb.e:                                             ; preds = %cpu_reg.exit.i
  %i.m = sext i32 %i.c to i64
  %i.n = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8
  br label %gen_rr.exit

gen_rr.exit:                                      ; preds = %bb.d, %bb.e
  %.0.i4.i = phi ptr [ %i.l, %bb.d ], [ %i.o, %bb.e ] ; 2 uses
  br i1 %.not.not, label %call.1, label %call.0

call.0:                                           ; preds = %gen_rr.exit
  tail call fastcc void @gen_rev16_64(ptr noundef %.0.i.i, ptr noundef %.0.i4.i) #14, !inline_history !13
  br label %gen_rr.exit.tail

call.1:                                           ; preds = %gen_rr.exit
  tail call fastcc void @gen_rev16_32(ptr noundef %.0.i.i, ptr noundef %.0.i4.i) #14, !inline_history !13
  br label %gen_rr.exit.tail

gen_rr.exit.tail:                                 ; preds = %call.1, %call.0
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @trans_PACIB(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 112
  %.val = load i64, ptr %i.c, align 8             ; 2 uses
  %i.d = getelementptr i8, ptr %i.b, i64 120
  %.val4 = load i64, ptr %i.d, align 8
  %i.e = lshr i64 %.val, 4
  %i.f = lshr i64 %.val, 8
  %i.g = or i64 %i.e, %i.f
  %i.h = lshr i64 %.val4, 12
  %i.i = or i64 %i.g, %i.h
  %i.j = and i64 %i.i, 15
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %gen_pacaut.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i32, ptr %i.k, align 4
  %.not.i = icmp eq i32 %i.l, 0
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.n = load i32, ptr %i.m, align 4              ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not13.i = icmp eq i32 %i.n, 31
  br i1 %.not13.i, label %bb.d, label %gen_pacaut.exit

bb.d:                                             ; preds = %bb.c
  %i.o = tail call ptr @tcg_constant_i64(i64 noundef 0) #14
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.p = sext i32 %i.n to i64
  %i.q = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i = phi ptr [ %i.o, %bb.d ], [ %i.r, %bb.e ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 289
  %i.t = load i8, ptr %i.s, align 1, !range !29, !noundef !30
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.g, label %gen_pacaut.exit

bb.g:                                             ; preds = %bb.f
  %i.v = load i32, ptr %1, align 4                ; 2 uses
  %i.w = icmp eq i32 %i.v, 31
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.x, i64 noundef 0) #14
  br label %cpu_reg.exit.i

bb.i:                                             ; preds = %bb.g
  %i.y = sext i32 %i.v to i64
  %i.z = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8
  br label %cpu_reg.exit.i

cpu_reg.exit.i:                                   ; preds = %bb.i, %bb.h
  %.0.i.i = phi ptr [ %i.x, %bb.h ], [ %i.aa, %bb.i ]
  %i.ab = load ptr, ptr @tcg_env, align 8
  %i.ac = load ptr, ptr @helper_info_pacib, align 8
  %i.ad = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.ae = load ptr, ptr %i.ad, align 8            ; 3 uses
  %i.af = ptrtoint ptr %.0.i.i to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.af ; 2 uses
  %i.ah = ptrtoint ptr %i.ab to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ah
  %i.aj = ptrtoint ptr %.0.i to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj
  tail call void @tcg_gen_call3(ptr noundef %i.ac, ptr noundef nonnull @helper_info_pacib, ptr noundef %i.ag, ptr noundef %i.ai, ptr noundef %i.ag, ptr noundef %i.ak) #14
  br label %gen_pacaut.exit

gen_pacaut.exit:                                  ; preds = %cpu_reg.exit.i, %bb.f, %bb.c, %bb.a
  %i.al = phi i1 [ false, %bb.a ], [ false, %bb.c ], [ true, %cpu_reg.exit.i ], [ true, %bb.f ]
  ret i1 %i.al
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @trans_CLZ(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 4
  %.not.not = icmp eq i32 %i.e, 0
  %i.f = icmp eq i32 %i.a, 31
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.g, i64 noundef 0) #14
  br label %cpu_reg.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = sext i32 %i.a to i64
  %i.i = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8
  br label %cpu_reg.exit.i

cpu_reg.exit.i:                                   ; preds = %bb.c, %bb.b
  %.0.i.i = phi ptr [ %i.g, %bb.b ], [ %i.j, %bb.c ] ; 2 uses
  %i.k = icmp eq i32 %i.c, 31
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %cpu_reg.exit.i
  %i.l = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.l, i64 noundef 0) #14
  br label %gen_rr.exit

bb.e:                                             ; preds = %cpu_reg.exit.i
  %i.m = sext i32 %i.c to i64
  %i.n = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8
  br label %gen_rr.exit

gen_rr.exit:                                      ; preds = %bb.d, %bb.e
  %.0.i4.i = phi ptr [ %i.l, %bb.d ], [ %i.o, %bb.e ] ; 2 uses
  br i1 %.not.not, label %call.1, label %call.0

call.0:                                           ; preds = %gen_rr.exit
  tail call fastcc void @gen_clz64(ptr noundef %.0.i.i, ptr noundef %.0.i4.i) #14, !inline_history !13
  br label %gen_rr.exit.tail

call.1:                                           ; preds = %gen_rr.exit
  tail call fastcc void @gen_clz32(ptr noundef %.0.i.i, ptr noundef %.0.i4.i) #14, !inline_history !13
  br label %gen_rr.exit.tail

gen_rr.exit.tail:                                 ; preds = %call.1, %call.0
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @trans_AUTIA(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 112
  %.val = load i64, ptr %i.c, align 8             ; 2 uses
  %i.d = getelementptr i8, ptr %i.b, i64 120
  %.val4 = load i64, ptr %i.d, align 8
  %i.e = lshr i64 %.val, 4
  %i.f = lshr i64 %.val, 8
  %i.g = or i64 %i.e, %i.f
  %i.h = lshr i64 %.val4, 12
  %i.i = or i64 %i.g, %i.h
  %i.j = and i64 %i.i, 15
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %gen_pacaut.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i32, ptr %i.k, align 4
  %.not.i = icmp eq i32 %i.l, 0
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.n = load i32, ptr %i.m, align 4              ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not13.i = icmp eq i32 %i.n, 31
  br i1 %.not13.i, label %bb.d, label %gen_pacaut.exit

bb.d:                                             ; preds = %bb.c
  %i.o = tail call ptr @tcg_constant_i64(i64 noundef 0) #14
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.p = sext i32 %i.n to i64
  %i.q = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i = phi ptr [ %i.o, %bb.d ], [ %i.r, %bb.e ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 289
  %i.t = load i8, ptr %i.s, align 1, !range !29, !noundef !30
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.g, label %gen_pacaut.exit

bb.g:                                             ; preds = %bb.f
  %i.v = load i32, ptr %1, align 4                ; 2 uses
  %i.w = icmp eq i32 %i.v, 31
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.x, i64 noundef 0) #14
  br label %cpu_reg.exit.i

bb.i:                                             ; preds = %bb.g
  %i.y = sext i32 %i.v to i64
  %i.z = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8
  br label %cpu_reg.exit.i

cpu_reg.exit.i:                                   ; preds = %bb.i, %bb.h
  %.0.i.i = phi ptr [ %i.x, %bb.h ], [ %i.aa, %bb.i ]
  %i.ab = load ptr, ptr @tcg_env, align 8
  %i.ac = load ptr, ptr @helper_info_autia, align 8
  %i.ad = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.ae = load ptr, ptr %i.ad, align 8            ; 3 uses
  %i.af = ptrtoint ptr %.0.i.i to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.af ; 2 uses
  %i.ah = ptrtoint ptr %i.ab to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ah
  %i.aj = ptrtoint ptr %.0.i to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj
  tail call void @tcg_gen_call3(ptr noundef %i.ac, ptr noundef nonnull @helper_info_autia, ptr noundef %i.ag, ptr noundef %i.ai, ptr noundef %i.ag, ptr noundef %i.ak) #14
  br label %gen_pacaut.exit

gen_pacaut.exit:                                  ; preds = %cpu_reg.exit.i, %bb.f, %bb.c, %bb.a
  %i.al = phi i1 [ false, %bb.a ], [ false, %bb.c ], [ true, %cpu_reg.exit.i ], [ true, %bb.f ]
  ret i1 %i.al
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @trans_CLS(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp eq i32 %i.a, 31
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.g, i64 noundef 0) #14
  br label %cpu_reg.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = sext i32 %i.a to i64
  %i.i = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8
  br label %cpu_reg.exit.i

cpu_reg.exit.i:                                   ; preds = %bb.c, %bb.b
  %.0.i.i = phi ptr [ %i.g, %bb.b ], [ %i.j, %bb.c ]
  %i.k = icmp eq i32 %i.c, 31
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %cpu_reg.exit.i
  %i.l = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.l, i64 noundef 0) #14
  br label %gen_rr.exit

bb.e:                                             ; preds = %cpu_reg.exit.i
  %i.m = sext i32 %i.c to i64
  %i.n = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8
  br label %gen_rr.exit

gen_rr.exit:                                      ; preds = %bb.d, %bb.e
  %.0.i4.i = phi ptr [ %i.l, %bb.d ], [ %i.o, %bb.e ]
  %.not = icmp eq i32 %i.e, 0
  %i.p = select i1 %.not, ptr @gen_cls32, ptr @tcg_gen_clrsb_i64
  tail call void %i.p(ptr noundef %.0.i.i, ptr noundef %.0.i4.i) #14, !inline_history !13
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @trans_AUTIB(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 112
  %.val = load i64, ptr %i.c, align 8             ; 2 uses
  %i.d = getelementptr i8, ptr %i.b, i64 120
  %.val4 = load i64, ptr %i.d, align 8
  %i.e = lshr i64 %.val, 4
  %i.f = lshr i64 %.val, 8
  %i.g = or i64 %i.e, %i.f
  %i.h = lshr i64 %.val4, 12
  %i.i = or i64 %i.g, %i.h
  %i.j = and i64 %i.i, 15
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %gen_pacaut.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i32, ptr %i.k, align 4
  %.not.i = icmp eq i32 %i.l, 0
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.n = load i32, ptr %i.m, align 4              ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not13.i = icmp eq i32 %i.n, 31
  br i1 %.not13.i, label %bb.d, label %gen_pacaut.exit

bb.d:                                             ; preds = %bb.c
  %i.o = tail call ptr @tcg_constant_i64(i64 noundef 0) #14
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.p = sext i32 %i.n to i64
  %i.q = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i = phi ptr [ %i.o, %bb.d ], [ %i.r, %bb.e ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 289
  %i.t = load i8, ptr %i.s, align 1, !range !29, !noundef !30
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.g, label %gen_pacaut.exit

bb.g:                                             ; preds = %bb.f
  %i.v = load i32, ptr %1, align 4                ; 2 uses
  %i.w = icmp eq i32 %i.v, 31
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.x, i64 noundef 0) #14
  br label %cpu_reg.exit.i

bb.i:                                             ; preds = %bb.g
  %i.y = sext i32 %i.v to i64
  %i.z = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8
  br label %cpu_reg.exit.i

cpu_reg.exit.i:                                   ; preds = %bb.i, %bb.h
  %.0.i.i = phi ptr [ %i.x, %bb.h ], [ %i.aa, %bb.i ]
  %i.ab = load ptr, ptr @tcg_env, align 8
  %i.ac = load ptr, ptr @helper_info_autib, align 8
  %i.ad = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.ae = load ptr, ptr %i.ad, align 8            ; 3 uses
  %i.af = ptrtoint ptr %.0.i.i to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.af ; 2 uses
  %i.ah = ptrtoint ptr %i.ab to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ah
  %i.aj = ptrtoint ptr %.0.i to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj
  tail call void @tcg_gen_call3(ptr noundef %i.ac, ptr noundef nonnull @helper_info_autib, ptr noundef %i.ag, ptr noundef %i.ai, ptr noundef %i.ag, ptr noundef %i.ak) #14
  br label %gen_pacaut.exit

gen_pacaut.exit:                                  ; preds = %cpu_reg.exit.i, %bb.f, %bb.c, %bb.a
  %i.al = phi i1 [ false, %bb.a ], [ false, %bb.c ], [ true, %cpu_reg.exit.i ], [ true, %bb.f ]
  ret i1 %i.al
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @trans_XPACI(ptr nofree noundef readonly captures(none) %0, i32 %.0.val) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 112
  %.val = load i64, ptr %i.c, align 8             ; 2 uses
  %i.d = getelementptr i8, ptr %i.b, i64 120
  %.val4 = load i64, ptr %i.d, align 8
  %i.e = lshr i64 %.val, 4
  %i.f = lshr i64 %.val, 8
  %i.g = or i64 %i.e, %i.f
  %i.h = lshr i64 %.val4, 12
  %i.i = or i64 %i.g, %i.h
  %i.j = and i64 %i.i, 15
  %i.k = icmp ne i64 %i.j, 0                      ; 2 uses
  br i1 %i.k, label %bb.b, label %do_xpac.exit

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %0, i64 289
  %.val5 = load i8, ptr %i.l, align 1, !range !29, !noundef !30
  %i.m = trunc nuw i8 %.val5 to i1
  br i1 %i.m, label %bb.c, label %do_xpac.exit

bb.c:                                             ; preds = %bb.b
  %i.n = icmp eq i32 %.0.val, 31
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.o, i64 noundef 0) #14
  br label %cpu_reg.exit.i

bb.e:                                             ; preds = %bb.c
  %i.p = sext i32 %.0.val to i64
  %i.q = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8
  br label %cpu_reg.exit.i

cpu_reg.exit.i:                                   ; preds = %bb.e, %bb.d
  %.0.i.i = phi ptr [ %i.o, %bb.d ], [ %i.r, %bb.e ]
  %i.s = load ptr, ptr @tcg_env, align 8
  %i.t = load ptr, ptr @helper_info_xpaci, align 8
  %i.u = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = ptrtoint ptr %.0.i.i to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w ; 2 uses
  %i.y = ptrtoint ptr %i.s to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.y
  tail call void @tcg_gen_call2(ptr noundef %i.t, ptr noundef nonnull @helper_info_xpaci, ptr noundef %i.x, ptr noundef %i.z, ptr noundef %i.x) #14
  br label %do_xpac.exit

do_xpac.exit:                                     ; preds = %cpu_reg.exit.i, %bb.b, %bb.a
  ret i1 %i.k
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @trans_XPACD(ptr nofree noundef readonly captures(none) %0, i32 %.0.val) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 112
  %.val = load i64, ptr %i.c, align 8             ; 2 uses
  %i.d = getelementptr i8, ptr %i.b, i64 120
  %.val4 = load i64, ptr %i.d, align 8
  %i.e = lshr i64 %.val, 4
  %i.f = lshr i64 %.val, 8
  %i.g = or i64 %i.e, %i.f
  %i.h = lshr i64 %.val4, 12
  %i.i = or i64 %i.g, %i.h
  %i.j = and i64 %i.i, 15
  %i.k = icmp ne i64 %i.j, 0                      ; 2 uses
  br i1 %i.k, label %bb.b, label %do_xpac.exit

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %0, i64 289
  %.val5 = load i8, ptr %i.l, align 1, !range !29, !noundef !30
  %i.m = trunc nuw i8 %.val5 to i1
  br i1 %i.m, label %bb.c, label %do_xpac.exit

bb.c:                                             ; preds = %bb.b
  %i.n = icmp eq i32 %.0.val, 31
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.o, i64 noundef 0) #14
  br label %cpu_reg.exit.i

bb.e:                                             ; preds = %bb.c
  %i.p = sext i32 %.0.val to i64
  %i.q = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8
  br label %cpu_reg.exit.i

cpu_reg.exit.i:                                   ; preds = %bb.e, %bb.d
  %.0.i.i = phi ptr [ %i.o, %bb.d ], [ %i.r, %bb.e ]
  %i.s = load ptr, ptr @tcg_env, align 8
  %i.t = load ptr, ptr @helper_info_xpacd, align 8
  %i.u = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = ptrtoint ptr %.0.i.i to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w ; 2 uses
  %i.y = ptrtoint ptr %i.s to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.y
  tail call void @tcg_gen_call2(ptr noundef %i.t, ptr noundef nonnull @helper_info_xpacd, ptr noundef %i.x, ptr noundef %i.z, ptr noundef %i.x) #14
  br label %do_xpac.exit

do_xpac.exit:                                     ; preds = %cpu_reg.exit.i, %bb.b, %bb.a
  ret i1 %i.k
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @trans_REV32(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 4
  %.not.not = icmp eq i32 %i.e, 0
  %i.f = icmp eq i32 %i.a, 31
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.g, i64 noundef 0) #14
  br label %cpu_reg.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = sext i32 %i.a to i64
  %i.i = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8
  br label %cpu_reg.exit.i

cpu_reg.exit.i:                                   ; preds = %bb.c, %bb.b
  %.0.i.i = phi ptr [ %i.g, %bb.b ], [ %i.j, %bb.c ] ; 2 uses
  %i.k = icmp eq i32 %i.c, 31
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %cpu_reg.exit.i
  %i.l = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.l, i64 noundef 0) #14
  br label %gen_rr.exit

bb.e:                                             ; preds = %cpu_reg.exit.i
  %i.m = sext i32 %i.c to i64
  %i.n = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8
  br label %gen_rr.exit

gen_rr.exit:                                      ; preds = %bb.d, %bb.e
  %.0.i4.i = phi ptr [ %i.l, %bb.d ], [ %i.o, %bb.e ] ; 2 uses
  br i1 %.not.not, label %call.1, label %call.0

call.0:                                           ; preds = %gen_rr.exit
  tail call fastcc void @gen_rev32(ptr noundef %.0.i.i, ptr noundef %.0.i4.i) #14, !inline_history !13
  br label %gen_rr.exit.tail

call.1:                                           ; preds = %gen_rr.exit
  tail call fastcc void @gen_rev_32(ptr noundef %.0.i.i, ptr noundef %.0.i4.i) #14, !inline_history !13
  br label %gen_rr.exit.tail

gen_rr.exit.tail:                                 ; preds = %call.1, %call.0
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @trans_PACDA(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 112
  %.val = load i64, ptr %i.c, align 8             ; 2 uses
  %i.d = getelementptr i8, ptr %i.b, i64 120
  %.val4 = load i64, ptr %i.d, align 8
  %i.e = lshr i64 %.val, 4
  %i.f = lshr i64 %.val, 8
  %i.g = or i64 %i.e, %i.f
  %i.h = lshr i64 %.val4, 12
  %i.i = or i64 %i.g, %i.h
  %i.j = and i64 %i.i, 15
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %gen_pacaut.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i32, ptr %i.k, align 4
  %.not.i = icmp eq i32 %i.l, 0
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.n = load i32, ptr %i.m, align 4              ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not13.i = icmp eq i32 %i.n, 31
  br i1 %.not13.i, label %bb.d, label %gen_pacaut.exit

bb.d:                                             ; preds = %bb.c
  %i.o = tail call ptr @tcg_constant_i64(i64 noundef 0) #14
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.p = sext i32 %i.n to i64
  %i.q = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i = phi ptr [ %i.o, %bb.d ], [ %i.r, %bb.e ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 289
  %i.t = load i8, ptr %i.s, align 1, !range !29, !noundef !30
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.g, label %gen_pacaut.exit

bb.g:                                             ; preds = %bb.f
  %i.v = load i32, ptr %1, align 4                ; 2 uses
  %i.w = icmp eq i32 %i.v, 31
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.x, i64 noundef 0) #14
  br label %cpu_reg.exit.i

bb.i:                                             ; preds = %bb.g
  %i.y = sext i32 %i.v to i64
  %i.z = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8
  br label %cpu_reg.exit.i

cpu_reg.exit.i:                                   ; preds = %bb.i, %bb.h
  %.0.i.i = phi ptr [ %i.x, %bb.h ], [ %i.aa, %bb.i ]
  %i.ab = load ptr, ptr @tcg_env, align 8
  %i.ac = load ptr, ptr @helper_info_pacda, align 8
  %i.ad = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.ae = load ptr, ptr %i.ad, align 8            ; 3 uses
  %i.af = ptrtoint ptr %.0.i.i to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.af ; 2 uses
  %i.ah = ptrtoint ptr %i.ab to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ah
  %i.aj = ptrtoint ptr %.0.i to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj
  tail call void @tcg_gen_call3(ptr noundef %i.ac, ptr noundef nonnull @helper_info_pacda, ptr noundef %i.ag, ptr noundef %i.ai, ptr noundef %i.ag, ptr noundef %i.ak) #14
  br label %gen_pacaut.exit

gen_pacaut.exit:                                  ; preds = %cpu_reg.exit.i, %bb.f, %bb.c, %bb.a
  %i.al = phi i1 [ false, %bb.a ], [ false, %bb.c ], [ true, %cpu_reg.exit.i ], [ true, %bb.f ]
  ret i1 %i.al
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @trans_REV64(i32 %.0.val, i32 %.4.val) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %.0.val, 31
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.b, i64 noundef 0) #14
  br label %cpu_reg.exit.i

bb.c:                                             ; preds = %bb.a
  %i.c = sext i32 %.0.val to i64
  %i.d = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8
  br label %cpu_reg.exit.i

cpu_reg.exit.i:                                   ; preds = %bb.c, %bb.b
  %.0.i.i = phi ptr [ %i.b, %bb.b ], [ %i.e, %bb.c ]
  %i.f = icmp eq i32 %.4.val, 31
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %cpu_reg.exit.i
  %i.g = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.g, i64 noundef 0) #14
  br label %gen_rr.exit

bb.e:                                             ; preds = %cpu_reg.exit.i
  %i.h = sext i32 %.4.val to i64
  %i.i = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8
  br label %gen_rr.exit

gen_rr.exit:                                      ; preds = %bb.d, %bb.e
  %.0.i4.i = phi ptr [ %i.g, %bb.d ], [ %i.j, %bb.e ]
  tail call void @tcg_gen_bswap64_i64(ptr noundef %.0.i.i, ptr noundef %.0.i4.i) #14, !inline_history !13
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @trans_PACDB(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 112
  %.val = load i64, ptr %i.c, align 8             ; 2 uses
  %i.d = getelementptr i8, ptr %i.b, i64 120
  %.val4 = load i64, ptr %i.d, align 8
  %i.e = lshr i64 %.val, 4
  %i.f = lshr i64 %.val, 8
  %i.g = or i64 %i.e, %i.f
  %i.h = lshr i64 %.val4, 12
  %i.i = or i64 %i.g, %i.h
  %i.j = and i64 %i.i, 15
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %gen_pacaut.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i32, ptr %i.k, align 4
  %.not.i = icmp eq i32 %i.l, 0
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.n = load i32, ptr %i.m, align 4              ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not13.i = icmp eq i32 %i.n, 31
  br i1 %.not13.i, label %bb.d, label %gen_pacaut.exit

bb.d:                                             ; preds = %bb.c
  %i.o = tail call ptr @tcg_constant_i64(i64 noundef 0) #14
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.p = sext i32 %i.n to i64
  %i.q = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i = phi ptr [ %i.o, %bb.d ], [ %i.r, %bb.e ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 289
  %i.t = load i8, ptr %i.s, align 1, !range !29, !noundef !30
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.g, label %gen_pacaut.exit

bb.g:                                             ; preds = %bb.f
  %i.v = load i32, ptr %1, align 4                ; 2 uses
  %i.w = icmp eq i32 %i.v, 31
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.x, i64 noundef 0) #14
  br label %cpu_reg.exit.i

bb.i:                                             ; preds = %bb.g
  %i.y = sext i32 %i.v to i64
  %i.z = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8
  br label %cpu_reg.exit.i

cpu_reg.exit.i:                                   ; preds = %bb.i, %bb.h
  %.0.i.i = phi ptr [ %i.x, %bb.h ], [ %i.aa, %bb.i ]
  %i.ab = load ptr, ptr @tcg_env, align 8
  %i.ac = load ptr, ptr @helper_info_pacdb, align 8
  %i.ad = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.ae = load ptr, ptr %i.ad, align 8            ; 3 uses
  %i.af = ptrtoint ptr %.0.i.i to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.af ; 2 uses
  %i.ah = ptrtoint ptr %i.ab to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ah
  %i.aj = ptrtoint ptr %.0.i to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj
  tail call void @tcg_gen_call3(ptr noundef %i.ac, ptr noundef nonnull @helper_info_pacdb, ptr noundef %i.ag, ptr noundef %i.ai, ptr noundef %i.ag, ptr noundef %i.ak) #14
  br label %gen_pacaut.exit

gen_pacaut.exit:                                  ; preds = %cpu_reg.exit.i, %bb.f, %bb.c, %bb.a
  %i.al = phi i1 [ false, %bb.a ], [ false, %bb.c ], [ true, %cpu_reg.exit.i ], [ true, %bb.f ]
  ret i1 %i.al
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @trans_CTZ(i64 %.104.val.120.val, ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = and i64 %.104.val.120.val, 67553994410557440
  %i.b = icmp ne i64 %i.a, 0                      ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 4                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 4
  %.not = icmp eq i32 %i.g, 0
  %i.h = icmp eq i32 %i.c, 31
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.i, i64 noundef 0) #14
  br label %cpu_reg.exit.i

bb.d:                                             ; preds = %bb.b
  %i.j = sext i32 %i.c to i64
  %i.k = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8
  br label %cpu_reg.exit.i

cpu_reg.exit.i:                                   ; preds = %bb.d, %bb.c
  %.0.i.i = phi ptr [ %i.i, %bb.c ], [ %i.l, %bb.d ] ; 2 uses
  %i.m = icmp eq i32 %i.e, 31
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %cpu_reg.exit.i
  %i.n = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.n, i64 noundef 0) #14
  br label %gen_rr.exit

bb.f:                                             ; preds = %cpu_reg.exit.i
  %i.o = sext i32 %i.e to i64
  %i.p = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8
  br label %gen_rr.exit

gen_rr.exit:                                      ; preds = %bb.e, %bb.f
  %.0.i4.i = phi ptr [ %i.n, %bb.e ], [ %i.q, %bb.f ] ; 2 uses
  br i1 %.not, label %gen_rr.exit.a, label %call.0

call.0:                                           ; preds = %gen_rr.exit
  tail call fastcc void @gen_ctz64(ptr noundef %.0.i.i, ptr noundef %.0.i4.i) #14, !inline_history !13
  br label %bb.g

gen_rr.exit.a:                                    ; preds = %gen_rr.exit
  tail call fastcc void @gen_ctz32(ptr noundef %.0.i.i, ptr noundef %.0.i4.i) #14, !inline_history !13
  br label %bb.g

bb.g:                                             ; preds = %call.0, %gen_rr.exit.a, %bb.a
  ret i1 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @trans_AUTDA(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 112
  %.val = load i64, ptr %i.c, align 8             ; 2 uses
  %i.d = getelementptr i8, ptr %i.b, i64 120
  %.val4 = load i64, ptr %i.d, align 8
  %i.e = lshr i64 %.val, 4
  %i.f = lshr i64 %.val, 8
  %i.g = or i64 %i.e, %i.f
  %i.h = lshr i64 %.val4, 12
  %i.i = or i64 %i.g, %i.h
  %i.j = and i64 %i.i, 15
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %gen_pacaut.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i32, ptr %i.k, align 4
  %.not.i = icmp eq i32 %i.l, 0
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.n = load i32, ptr %i.m, align 4              ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not13.i = icmp eq i32 %i.n, 31
  br i1 %.not13.i, label %bb.d, label %gen_pacaut.exit

bb.d:                                             ; preds = %bb.c
  %i.o = tail call ptr @tcg_constant_i64(i64 noundef 0) #14
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.p = sext i32 %i.n to i64
  %i.q = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i = phi ptr [ %i.o, %bb.d ], [ %i.r, %bb.e ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 289
  %i.t = load i8, ptr %i.s, align 1, !range !29, !noundef !30
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.g, label %gen_pacaut.exit

bb.g:                                             ; preds = %bb.f
  %i.v = load i32, ptr %1, align 4                ; 2 uses
  %i.w = icmp eq i32 %i.v, 31
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.x, i64 noundef 0) #14
  br label %cpu_reg.exit.i

bb.i:                                             ; preds = %bb.g
  %i.y = sext i32 %i.v to i64
  %i.z = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8
  br label %cpu_reg.exit.i

cpu_reg.exit.i:                                   ; preds = %bb.i, %bb.h
  %.0.i.i = phi ptr [ %i.x, %bb.h ], [ %i.aa, %bb.i ]
  %i.ab = load ptr, ptr @tcg_env, align 8
  %i.ac = load ptr, ptr @helper_info_autda, align 8
  %i.ad = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.ae = load ptr, ptr %i.ad, align 8            ; 3 uses
  %i.af = ptrtoint ptr %.0.i.i to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.af ; 2 uses
  %i.ah = ptrtoint ptr %i.ab to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ah
  %i.aj = ptrtoint ptr %.0.i to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj
  tail call void @tcg_gen_call3(ptr noundef %i.ac, ptr noundef nonnull @helper_info_autda, ptr noundef %i.ag, ptr noundef %i.ai, ptr noundef %i.ag, ptr noundef %i.ak) #14
  br label %gen_pacaut.exit

gen_pacaut.exit:                                  ; preds = %cpu_reg.exit.i, %bb.f, %bb.c, %bb.a
  %i.al = phi i1 [ false, %bb.a ], [ false, %bb.c ], [ true, %cpu_reg.exit.i ], [ true, %bb.f ]
  ret i1 %i.al
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @trans_CNT(i64 %.104.val.120.val, ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = and i64 %.104.val.120.val, 67553994410557440
  %i.b = icmp ne i64 %i.a, 0                      ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 4                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 4
  %.not = icmp eq i32 %i.g, 0
  %i.h = select i1 %.not, ptr @gen_cnt32, ptr @tcg_gen_ctpop_i64
  %i.i = icmp eq i32 %i.c, 31
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.j, i64 noundef 0) #14
  br label %cpu_reg.exit.i

bb.d:                                             ; preds = %bb.b
  %i.k = sext i32 %i.c to i64
  %i.l = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8
  br label %cpu_reg.exit.i

cpu_reg.exit.i:                                   ; preds = %bb.d, %bb.c
  %.0.i.i = phi ptr [ %i.j, %bb.c ], [ %i.m, %bb.d ]
  %i.n = icmp eq i32 %i.e, 31
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %cpu_reg.exit.i
  %i.o = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.o, i64 noundef 0) #14
  br label %gen_rr.exit

bb.f:                                             ; preds = %cpu_reg.exit.i
  %i.p = sext i32 %i.e to i64
  %i.q = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8
  br label %gen_rr.exit

gen_rr.exit:                                      ; preds = %bb.e, %bb.f
  %.0.i4.i = phi ptr [ %i.o, %bb.e ], [ %i.r, %bb.f ]
  tail call void %i.h(ptr noundef %.0.i.i, ptr noundef %.0.i4.i) #14, !inline_history !13
  br label %bb.g

bb.g:                                             ; preds = %gen_rr.exit, %bb.a
  ret i1 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @trans_AUTDB(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 112
  %.val = load i64, ptr %i.c, align 8             ; 2 uses
  %i.d = getelementptr i8, ptr %i.b, i64 120
  %.val4 = load i64, ptr %i.d, align 8
  %i.e = lshr i64 %.val, 4
  %i.f = lshr i64 %.val, 8
  %i.g = or i64 %i.e, %i.f
  %i.h = lshr i64 %.val4, 12
  %i.i = or i64 %i.g, %i.h
  %i.j = and i64 %i.i, 15
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %gen_pacaut.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i32, ptr %i.k, align 4
  %.not.i = icmp eq i32 %i.l, 0
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.n = load i32, ptr %i.m, align 4              ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not13.i = icmp eq i32 %i.n, 31
  br i1 %.not13.i, label %bb.d, label %gen_pacaut.exit

bb.d:                                             ; preds = %bb.c
  %i.o = tail call ptr @tcg_constant_i64(i64 noundef 0) #14
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.p = sext i32 %i.n to i64
  %i.q = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i = phi ptr [ %i.o, %bb.d ], [ %i.r, %bb.e ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 289
  %i.t = load i8, ptr %i.s, align 1, !range !29, !noundef !30
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.g, label %gen_pacaut.exit

bb.g:                                             ; preds = %bb.f
  %i.v = load i32, ptr %1, align 4                ; 2 uses
  %i.w = icmp eq i32 %i.v, 31
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.x, i64 noundef 0) #14
  br label %cpu_reg.exit.i

bb.i:                                             ; preds = %bb.g
  %i.y = sext i32 %i.v to i64
  %i.z = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.y
end_hunk_1
begin_hunk_2_@trans_LDRA:bb.a
  tail call void @tcg_gen_qemu_ld_i64_chk(ptr noundef %.0.i, ptr noundef %i.bt, i64 noundef range(i64 0, 22) %i.bp, i32 noundef %i.au, i32 noundef 1) #14
  br i1 %.not35, label %bb.j, label %do_gpr_ld_memidx.exit

bb.j:                                             ; preds = %do_gpr_ld.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 323 ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !range !29, !noundef !30
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.k, label %disas_set_insn_syndrome.exit.i

bb.k:                                             ; preds = %bb.j
  tail call void @__assert_fail(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 331, ptr noundef nonnull @__PRETTY_FUNCTION__.disas_set_insn_syndrome) #15
  unreachable

disas_set_insn_syndrome.exit.i:                   ; preds = %bb.j
  %i.bx = shl i32 %i.bl, 16
  %i.by = and i32 %i.bx, 2031616
  %i.bz = shl i32 %i.at, 18
  %i.ca = and i32 %i.bz, 2097152
  %.masked93.i.i = or disjoint i32 %i.by, %i.ca
  %.masked.i.i = lshr exact i32 %.masked93.i.i, 13
  %i.cb = or disjoint i32 %.masked.i.i, 7684
  store i8 1, ptr %i.bu, align 1
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = zext nneg i32 %i.cb to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 48
  store i64 %i.ce, ptr %i.cf, align 8
  br label %do_gpr_ld_memidx.exit

do_gpr_ld_memidx.exit:                            ; preds = %do_gpr_ld.exit, %disas_set_insn_syndrome.exit.i
  %i.cg = load i32, ptr %i.av, align 4
  %.not36 = icmp eq i32 %i.cg, 0
  br i1 %.not36, label %bb.m, label %bb.l

bb.l:                                             ; preds = %do_gpr_ld_memidx.exit
  %i.ch = load i32, ptr %i.l, align 4
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.ci
  %i.ck = load ptr, ptr %i.cj, align 8
  tail call void @tcg_gen_mov_i64(ptr noundef %i.ck, ptr noundef %i.n) #14
  br label %bb.m

bb.m:                                             ; preds = %do_gpr_ld_memidx.exit, %bb.l, %bb.a
  ret i1 %i.k
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @trans_RMIF(i64 %.104.val.104.val, ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 4              ; 4 uses
  %i.c = and i64 %.104.val.104.val, 67553994410557440
  %i.d = icmp ne i64 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %i.g = tail call ptr @tcg_temp_new_i64() #14    ; 5 uses
  %.not.i = icmp eq i32 %i.f, 31
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = sext i32 %i.f to i64
  %i.i = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8
  tail call void @tcg_gen_mov_i64(ptr noundef %i.g, ptr noundef %i.j) #14
  br label %read_cpu_reg.exit

bb.d:                                             ; preds = %bb.b
  tail call void @tcg_gen_movi_i64(ptr noundef %i.g, i64 noundef 0) #14
  br label %read_cpu_reg.exit

read_cpu_reg.exit:                                ; preds = %bb.c, %bb.d
  %i.k = load i32, ptr %0, align 4
  %i.l = sext i32 %i.k to i64
  tail call void @tcg_gen_rotri_i64(ptr noundef %i.g, ptr noundef %i.g, i64 noundef %i.l) #14
  %i.m = tail call ptr @tcg_temp_new_i32() #14    ; 5 uses
  tail call void @tcg_gen_extrl_i64_i32(ptr noundef %i.m, ptr noundef %i.g) #14
  %i.n = and i32 %i.b, 8
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %read_cpu_reg.exit
  %i.o = load ptr, ptr @cpu_NF, align 8
  tail call void @tcg_gen_shli_i32(ptr noundef %i.o, ptr noundef %i.m, i32 noundef 28) #14
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %read_cpu_reg.exit
  %i.p = and i32 %i.b, 4
  %.not19 = icmp eq i32 %i.p, 0
  br i1 %.not19, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr @cpu_ZF, align 8
  tail call void @tcg_gen_not_i32(ptr noundef %i.q, ptr noundef %i.m) #14
  %i.r = load ptr, ptr @cpu_ZF, align 8           ; 2 uses
  tail call void @tcg_gen_andi_i32(ptr noundef %i.r, ptr noundef %i.r, i32 noundef 4) #14
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.s = and i32 %i.b, 2
  %.not20 = icmp eq i32 %i.s, 0
  br i1 %.not20, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = load ptr, ptr @cpu_CF, align 8
  tail call void @tcg_gen_extract_i32(ptr noundef %i.t, ptr noundef %i.m, i32 noundef 1, i32 noundef 1) #14
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.u = and i32 %i.b, 1
  %.not21 = icmp eq i32 %i.u, 0
  br i1 %.not21, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = load ptr, ptr @cpu_VF, align 8
  tail call void @tcg_gen_shli_i32(ptr noundef %i.v, ptr noundef %i.m, i32 noundef 31) #14
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.a
  ret i1 %i.d
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @trans_CCMP(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.DisasCompare, align 8       ; 6 uses
  %i.a = tail call ptr @tcg_temp_new_i32() #14    ; 5 uses
  %i.b = tail call ptr @tcg_temp_new_i32() #14    ; 7 uses
  %i.c = tail call ptr @tcg_temp_new_i32() #14    ; 5 uses
  %i.d = tail call ptr @tcg_temp_new_i64() #14    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !annotation !32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4
  call void @arm_test_cc(ptr noundef nonnull %1, i32 noundef %i.f) #14
  %i.g = load i32, ptr %1, align 8
  %i.h = xor i32 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  call void @tcg_gen_setcondi_i32(i32 noundef %i.h, ptr noundef %i.a, ptr noundef %i.j, i32 noundef 0) #14
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i32, ptr %i.k, align 4
  %.not = icmp eq i32 %i.l, 0
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i32, ptr %i.m, align 4              ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = sext i32 %i.n to i64
  %i.p = call ptr @tcg_constant_i64(i64 noundef %i.o) #14
  br label %cpu_reg.exit

bb.c:                                             ; preds = %bb.a
  %i.q = icmp eq i32 %i.n, 31
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = call ptr @tcg_temp_new_i64() #14         ; 2 uses
  call void @tcg_gen_movi_i64(ptr noundef %i.r, i64 noundef 0) #14
  br label %cpu_reg.exit

bb.e:                                             ; preds = %bb.c
  %i.s = sext i32 %i.n to i64
  %i.t = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8
  br label %cpu_reg.exit

cpu_reg.exit:                                     ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi ptr [ %i.p, %bb.b ], [ %i.r, %bb.d ], [ %i.u, %bb.e ] ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.w = load i32, ptr %i.v, align 4              ; 2 uses
  %i.x = icmp eq i32 %i.w, 31
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %cpu_reg.exit
  %i.y = call ptr @tcg_temp_new_i64() #14         ; 2 uses
  call void @tcg_gen_movi_i64(ptr noundef %i.y, i64 noundef 0) #14
  br label %cpu_reg.exit47

bb.g:                                             ; preds = %cpu_reg.exit
  %i.z = sext i32 %i.w to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8
  br label %cpu_reg.exit47

cpu_reg.exit47:                                   ; preds = %bb.f, %bb.g
  %.0.i46 = phi ptr [ %i.y, %bb.f ], [ %i.ab, %bb.g ] ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ad = load i32, ptr %i.ac, align 4
  %.not41 = icmp eq i32 %i.ad, 0
  %i.ae = load i32, ptr %0, align 4
  %.not.i48 = icmp eq i32 %i.ae, 0                ; 2 uses
  br i1 %.not41, label %bb.k, label %bb.h

bb.h:                                             ; preds = %cpu_reg.exit47
  br i1 %.not.i48, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call fastcc void @gen_sub64_CC(ptr noundef %i.d, ptr noundef %.0.i46, ptr noundef %.0)
  br label %gen_sub_CC.exit

bb.j:                                             ; preds = %bb.h
  call fastcc void @gen_sub32_CC(ptr noundef %i.d, ptr noundef %.0.i46, ptr noundef %.0)
  br label %gen_sub_CC.exit

bb.k:                                             ; preds = %cpu_reg.exit47
  br i1 %.not.i48, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call fastcc void @gen_add64_CC(ptr noundef %i.d, ptr noundef %.0.i46, ptr noundef %.0)
  br label %gen_sub_CC.exit

bb.m:                                             ; preds = %bb.k
  call fastcc void @gen_add32_CC(ptr noundef %i.d, ptr noundef %.0.i46, ptr noundef %.0)
  br label %gen_sub_CC.exit

gen_sub_CC.exit:                                  ; preds = %bb.m, %bb.l, %bb.j, %bb.i
  call void @tcg_gen_neg_i32(ptr noundef %i.b, ptr noundef %i.a) #14
  call void @tcg_gen_subi_i32(ptr noundef %i.c, ptr noundef %i.a, i32 noundef 1) #14
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load i32, ptr %i.af, align 4            ; 9 uses
  %i.ah = call zeroext i1 @tcg_op_supported(i32 noundef 9, i32 noundef 0, i32 noundef 0) #14 ; 4 uses
  %i.ai = and i32 %i.ag, 8
  %.not42 = icmp eq i32 %i.ai, 0
  %i.aj = load ptr, ptr @cpu_NF, align 8          ; 6 uses
  br i1 %.not42, label %bb.n, label %bb.o

bb.n:                                             ; preds = %gen_sub_CC.exit
  %i.ak = and i32 %i.ag, 4
  %.not434 = icmp eq i32 %i.ak, 0                 ; 2 uses
  br i1 %i.ah, label %.thread3, label %.thread

bb.o:                                             ; preds = %gen_sub_CC.exit
  call void @tcg_gen_or_i32(ptr noundef %i.aj, ptr noundef %i.aj, ptr noundef %i.b) #14
  %i.al = and i32 %i.ag, 4
  %.not43 = icmp eq i32 %i.al, 0
  br i1 %.not43, label %bb.q, label %bb.p

.thread3:                                         ; preds = %bb.n
  call void @tcg_gen_andc_i32(ptr noundef %i.aj, ptr noundef %i.aj, ptr noundef %i.b) #14
  br i1 %.not434, label %bb.q, label %.thread9

.thread:                                          ; preds = %bb.n
  call void @tcg_gen_and_i32(ptr noundef %i.aj, ptr noundef %i.aj, ptr noundef %i.c) #14
  br i1 %.not434, label %bb.q, label %.thread6

bb.p:                                             ; preds = %bb.o
  br i1 %i.ah, label %.thread9, label %.thread6

bb.q:                                             ; preds = %bb.o, %.thread, %.thread3
  %i.am = load ptr, ptr @cpu_ZF, align 8          ; 2 uses
  call void @tcg_gen_or_i32(ptr noundef %i.am, ptr noundef %i.am, ptr noundef %i.a) #14
  %i.an = and i32 %i.ag, 2
  %.not44 = icmp eq i32 %i.an, 0
  br i1 %.not44, label %bb.r, label %bb.s

.thread9:                                         ; preds = %bb.p, %.thread3
  %i.ao = load ptr, ptr @cpu_ZF, align 8          ; 2 uses
  call void @tcg_gen_andc_i32(ptr noundef %i.ao, ptr noundef %i.ao, ptr noundef %i.b) #14
  %i.ap = and i32 %i.ag, 2
  %.not4410 = icmp eq i32 %i.ap, 0
  br i1 %.not4410, label %.thread15, label %bb.s

.thread6:                                         ; preds = %bb.p, %.thread
  %i.aq = load ptr, ptr @cpu_ZF, align 8          ; 2 uses
  call void @tcg_gen_and_i32(ptr noundef %i.aq, ptr noundef %i.aq, ptr noundef %i.c) #14
  %i.ar = and i32 %i.ag, 2
  %.not447 = icmp eq i32 %i.ar, 0
  br i1 %.not447, label %.thread12, label %bb.s

bb.r:                                             ; preds = %bb.q
  br i1 %i.ah, label %.thread15, label %.thread12

bb.s:                                             ; preds = %bb.q, %.thread6, %.thread9
  %i.as = load ptr, ptr @cpu_CF, align 8          ; 2 uses
  call void @tcg_gen_or_i32(ptr noundef %i.as, ptr noundef %i.as, ptr noundef %i.a) #14
  %i.at = and i32 %i.ag, 1
  %.not45 = icmp eq i32 %i.at, 0
  br i1 %.not45, label %bb.u, label %bb.t

.thread15:                                        ; preds = %bb.r, %.thread9
  %i.au = load ptr, ptr @cpu_CF, align 8          ; 2 uses
  call void @tcg_gen_andc_i32(ptr noundef %i.au, ptr noundef %i.au, ptr noundef %i.b) #14
  %i.av = and i32 %i.ag, 1
  %.not4516 = icmp eq i32 %i.av, 0
  br i1 %.not4516, label %.thread17, label %bb.t

.thread12:                                        ; preds = %bb.r, %.thread6
  %i.aw = load ptr, ptr @cpu_CF, align 8          ; 2 uses
  call void @tcg_gen_and_i32(ptr noundef %i.aw, ptr noundef %i.aw, ptr noundef %i.c) #14
  %i.ax = and i32 %i.ag, 1
  %.not4513 = icmp eq i32 %i.ax, 0
  br i1 %.not4513, label %.thread14, label %bb.t

bb.t:                                             ; preds = %.thread15, %.thread12, %bb.s
  %i.ay = load ptr, ptr @cpu_VF, align 8          ; 2 uses
  call void @tcg_gen_or_i32(ptr noundef %i.ay, ptr noundef %i.ay, ptr noundef %i.b) #14
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  br i1 %i.ah, label %.thread17, label %.thread14

.thread17:                                        ; preds = %.thread15, %bb.u
  %i.az = load ptr, ptr @cpu_VF, align 8          ; 2 uses
  call void @tcg_gen_andc_i32(ptr noundef %i.az, ptr noundef %i.az, ptr noundef %i.b) #14
  br label %bb.v

.thread14:                                        ; preds = %.thread12, %bb.u
  %i.ba = load ptr, ptr @cpu_VF, align 8          ; 2 uses
  call void @tcg_gen_and_i32(ptr noundef %i.ba, ptr noundef %i.ba, ptr noundef %i.c) #14
  br label %bb.v

bb.v:                                             ; preds = %.thread17, %.thread14, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @trans_LD_lit_v(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 283 ; 3 uses
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.c, align 1
  %.not7.i.i = icmp eq i8 %i.d, 0
  br i1 %.not7.i.i, label %fp_access_check_only.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.3, i32 noundef 1438, ptr noundef nonnull @__PRETTY_FUNCTION__.fp_access_check_only) #15
  unreachable

fp_access_check_only.exit.i:                      ; preds = %bb.b
  store i8 -1, ptr %i.c, align 1
  tail call void @gen_exception_insn_el(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1, i32 noundef 534773760, i32 noundef %i.b) #14
  br label %fp_access_check.exit

bb.d:                                             ; preds = %bb.a
  store i8 1, ptr %i.c, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 302
  %i.f = load i8, ptr %i.e, align 2, !range !29, !noundef !30
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 303
  %i.i = load i8, ptr %i.h, align 1, !range !29, !noundef !30
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @gen_exception_insn(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1, i32 noundef 1979711489) #14
  br label %fp_access_check.exit

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i32, ptr %i.k, align 4              ; 7 uses
  %i.m = and i32 %i.l, 7
  %i.n = icmp eq i32 %i.m, 4
  br i1 %i.n, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.o = and i32 %i.l, 224
  %.not.i.i10 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i10, label %bb.i, label %finalize_memop_atom.exit.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 298
  %i.q = load i8, ptr %i.p, align 2, !range !29, !noundef !30
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = select i1 %i.r, i32 224, i32 480
  %i.t = or i32 %i.s, %i.l
  br label %finalize_memop_atom.exit.i

finalize_memop_atom.exit.i:                       ; preds = %bb.i, %bb.h
  %.0.i.i = phi i32 [ %i.l, %bb.h ], [ %i.t, %bb.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.v = load i32, ptr %i.u, align 4
  %i.w = or i32 %.0.i.i, %i.v
  %i.x = or i32 %i.w, 512
  br label %finalize_memop_asimd.exit

bb.j:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 282
  %i.z = load i8, ptr %i.y, align 2, !range !29, !noundef !30
  %i.aa = and i32 %i.l, 224
  %.not.i.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i, label %bb.k, label %finalize_memop.exit.i

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 298
  %i.ac = load i8, ptr %i.ab, align 2, !range !29, !noundef !30
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = select i1 %i.ad, i32 224, i32 480
  %i.af = or i32 %i.ae, %i.l
  br label %finalize_memop.exit.i

finalize_memop.exit.i:                            ; preds = %bb.k, %bb.j
  %.0.i.i.i = phi i32 [ %i.l, %bb.j ], [ %i.af, %bb.k ]
  %i.ag = zext nneg i8 %i.z to i32
  %i.ah = shl nuw nsw i32 %i.ag, 10
  %i.ai = or i32 %.0.i.i.i, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = or i32 %i.ai, %i.ak
  br label %finalize_memop_asimd.exit

finalize_memop_asimd.exit:                        ; preds = %finalize_memop_atom.exit.i, %finalize_memop.exit.i
  %.0.i = phi i32 [ %i.x, %finalize_memop_atom.exit.i ], [ %i.al, %finalize_memop.exit.i ]
  %i.am = tail call ptr @tcg_temp_new_i64() #14   ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 4
end_hunk_2
begin_hunk_3_@shift_reg:bb.a
.thread33:                                        ; preds = %bb.g
  tail call void @tcg_gen_rotr_i64(ptr noundef %0, ptr noundef %1, ptr noundef %4) #14
  br label %bb.k

.thread:                                          ; preds = %bb.g
  %i.b = tail call ptr @tcg_temp_new_i32() #14    ; 4 uses
  %i.c = tail call ptr @tcg_temp_new_i32() #14    ; 2 uses
  tail call void @tcg_gen_extrl_i64_i32(ptr noundef %i.b, ptr noundef %1) #14
  tail call void @tcg_gen_extrl_i64_i32(ptr noundef %i.c, ptr noundef %4) #14
  tail call void @tcg_gen_rotr_i32(ptr noundef %i.b, ptr noundef %i.b, ptr noundef %i.c) #14
  tail call void @tcg_gen_extu_i32_i64(ptr noundef %0, ptr noundef %i.b) #14
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.3, i32 noundef 8787, ptr noundef nonnull @__PRETTY_FUNCTION__.shift_reg) #15
  unreachable

bb.i:                                             ; preds = %bb.f, %bb.c, %bb.b
  %.not31 = icmp eq i32 %2, 0
  br i1 %.not31, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.thread, %bb.i
  tail call void @tcg_gen_ext32u_i64(ptr noundef %0, ptr noundef %0) #14
  br label %bb.k

bb.k:                                             ; preds = %.thread33, %bb.j, %bb.i
  ret void
}

declare ptr @tcg_constant_i64(i64 noundef) local_unnamed_addr #2

declare void @tcg_gen_shl_i64(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @tcg_gen_shr_i64(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @tcg_gen_ext32s_i64(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @tcg_gen_sar_i64(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @tcg_gen_rotr_i64(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @tcg_gen_rotr_i32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @tcg_gen_extu_i32_i64(ptr noundef, ptr noundef) #2

declare void @tcg_gen_mov_i32(ptr noundef, ptr noundef) #2

declare void @tcg_gen_movi_i32(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @tcg_gen_extr_i64_i32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @tcg_gen_or_i32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @tcg_gen_eqv_i64(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @do_addsub_reg(ptr nofree noundef nonnull readonly captures(none) %0, i1 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp eq i32 %i.b, 3
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 6 uses
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i32, ptr %i.f, align 4
  %i.h = and i32 %i.g, 32
  %.not38 = icmp eq i32 %i.h, 0
  br i1 %.not38, label %bb.d, label %bb.ae

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = load i32, ptr %0, align 4                ; 2 uses
  %i.j = icmp eq i32 %i.i, 31
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.k, i64 noundef 0) #14
  %.pre = load i32, ptr %i.d, align 4
  br label %cpu_reg.exit

bb.f:                                             ; preds = %bb.d
  %i.l = sext i32 %i.i to i64
  %i.m = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8
  br label %cpu_reg.exit

cpu_reg.exit:                                     ; preds = %bb.e, %bb.f
  %i.o = phi i32 [ %.pre, %bb.e ], [ %i.e, %bb.f ]
  %.0.i = phi ptr [ %i.k, %bb.e ], [ %i.n, %bb.f ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = load i32, ptr %i.p, align 4              ; 2 uses
  %i.r = tail call ptr @tcg_temp_new_i64() #14    ; 9 uses
  %.not.i = icmp eq i32 %i.q, 31
  br i1 %.not.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %cpu_reg.exit
  %.not7.i = icmp eq i32 %i.o, 0
  %i.s = sext i32 %i.q to i64
  %i.t = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  br i1 %.not7.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @tcg_gen_mov_i64(ptr noundef %i.r, ptr noundef %i.u) #14
  br label %read_cpu_reg.exit

bb.i:                                             ; preds = %bb.g
  tail call void @tcg_gen_ext32u_i64(ptr noundef %i.r, ptr noundef %i.u) #14
  br label %read_cpu_reg.exit

bb.j:                                             ; preds = %cpu_reg.exit
  tail call void @tcg_gen_movi_i64(ptr noundef %i.r, i64 noundef 0) #14
  br label %read_cpu_reg.exit

read_cpu_reg.exit:                                ; preds = %bb.h, %bb.i, %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i32, ptr %i.v, align 4              ; 2 uses
  %i.x = load i32, ptr %i.d, align 4
  %i.y = tail call ptr @tcg_temp_new_i64() #14    ; 13 uses
  %.not.i40 = icmp eq i32 %i.w, 31
  br i1 %.not.i40, label %bb.n, label %bb.k

bb.k:                                             ; preds = %read_cpu_reg.exit
  %.not7.i41 = icmp eq i32 %i.x, 0
  %i.z = sext i32 %i.w to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  br i1 %.not7.i41, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @tcg_gen_mov_i64(ptr noundef %i.y, ptr noundef %i.ab) #14
  br label %read_cpu_reg.exit42

bb.m:                                             ; preds = %bb.k
  tail call void @tcg_gen_ext32u_i64(ptr noundef %i.y, ptr noundef %i.ab) #14
  br label %read_cpu_reg.exit42

bb.n:                                             ; preds = %read_cpu_reg.exit
  tail call void @tcg_gen_movi_i64(ptr noundef %i.y, i64 noundef 0) #14
  br label %read_cpu_reg.exit42

read_cpu_reg.exit42:                              ; preds = %bb.l, %bb.m, %bb.n
  %i.ac = load i32, ptr %i.d, align 4             ; 2 uses
  %i.ad = load i32, ptr %i.a, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load i32, ptr %i.ae, align 4            ; 3 uses
  %.not.i43 = icmp eq i32 %i.ac, 0
  %i.ag = select i1 %.not.i43, i32 32, i32 64
  %i.ah = icmp ult i32 %i.af, %i.ag
  br i1 %i.ah, label %bb.p, label %bb.o

bb.o:                                             ; preds = %read_cpu_reg.exit42
  tail call void @__assert_fail(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.3, i32 noundef 8803, ptr noundef nonnull @__PRETTY_FUNCTION__.shift_reg_imm) #15
  unreachable

bb.p:                                             ; preds = %read_cpu_reg.exit42
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @tcg_gen_mov_i64(ptr noundef %i.y, ptr noundef %i.y) #14
  br label %shift_reg_imm.exit

bb.r:                                             ; preds = %bb.p
  %i.aj = zext nneg i32 %i.af to i64
  %i.ak = tail call ptr @tcg_constant_i64(i64 noundef %i.aj) #14
  tail call fastcc void @shift_reg(ptr noundef %i.y, ptr noundef %i.y, i32 noundef %i.ac, i32 noundef %i.ad, ptr noundef %i.ak)
  br label %shift_reg_imm.exit

shift_reg_imm.exit:                               ; preds = %bb.q, %bb.r
  %i.al = tail call ptr @tcg_temp_new_i64() #14   ; 8 uses
  br i1 %2, label %bb.v, label %bb.s

bb.s:                                             ; preds = %shift_reg_imm.exit
  br i1 %1, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @tcg_gen_sub_i64(ptr noundef %i.al, ptr noundef %i.r, ptr noundef %i.y) #14
  br label %gen_sub_CC.exit

bb.u:                                             ; preds = %bb.s
  tail call void @tcg_gen_add_i64(ptr noundef %i.al, ptr noundef %i.r, ptr noundef %i.y) #14
  br label %gen_sub_CC.exit

bb.v:                                             ; preds = %shift_reg_imm.exit
  %i.am = load i32, ptr %i.d, align 4
  %.not.i44 = icmp eq i32 %i.am, 0                ; 2 uses
  br i1 %1, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  br i1 %.not.i44, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call fastcc void @gen_sub64_CC(ptr noundef %i.al, ptr noundef %i.r, ptr noundef %i.y)
  br label %gen_sub_CC.exit

bb.y:                                             ; preds = %bb.w
  tail call fastcc void @gen_sub32_CC(ptr noundef %i.al, ptr noundef %i.r, ptr noundef %i.y)
  br label %gen_sub_CC.exit

bb.z:                                             ; preds = %bb.v
  br i1 %.not.i44, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call fastcc void @gen_add64_CC(ptr noundef %i.al, ptr noundef %i.r, ptr noundef %i.y)
  br label %gen_sub_CC.exit

bb.ab:                                            ; preds = %bb.z
  tail call fastcc void @gen_add32_CC(ptr noundef %i.al, ptr noundef %i.r, ptr noundef %i.y)
  br label %gen_sub_CC.exit

gen_sub_CC.exit:                                  ; preds = %bb.ab, %bb.aa, %bb.y, %bb.x, %bb.t, %bb.u
  %i.an = load i32, ptr %i.d, align 4
  %.not39 = icmp eq i32 %i.an, 0
  br i1 %.not39, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %gen_sub_CC.exit
  tail call void @tcg_gen_mov_i64(ptr noundef %.0.i, ptr noundef %i.al) #14
  br label %bb.ae

bb.ad:                                            ; preds = %gen_sub_CC.exit
  tail call void @tcg_gen_ext32u_i64(ptr noundef %.0.i, ptr noundef %i.al) #14
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad, %bb.a, %bb.c
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.c ], [ true, %bb.ad ], [ true, %bb.ac ]
  ret i1 %.0
}

declare void @tcg_gen_sub_i64(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @tcg_gen_add_i64(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @gen_sub64_CC(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @tcg_temp_new_i64() #14    ; 4 uses
  %i.b = tail call ptr @tcg_temp_new_i64() #14    ; 6 uses
  tail call void @tcg_gen_sub_i64(ptr noundef %i.a, ptr noundef %1, ptr noundef %2) #14
  %i.c = load ptr, ptr @cpu_ZF, align 8
  %i.d = load ptr, ptr @cpu_NF, align 8
  tail call void @tcg_gen_extr_i64_i32(ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.a) #14
  %i.e = load ptr, ptr @cpu_ZF, align 8           ; 2 uses
  %i.f = load ptr, ptr @cpu_NF, align 8
  tail call void @tcg_gen_or_i32(ptr noundef %i.e, ptr noundef %i.e, ptr noundef %i.f) #14
  tail call void @tcg_gen_setcond_i64(i32 noundef 11, ptr noundef %i.b, ptr noundef %1, ptr noundef %2) #14
  %i.g = load ptr, ptr @cpu_CF, align 8
  tail call void @tcg_gen_extrl_i64_i32(ptr noundef %i.g, ptr noundef %i.b) #14
  tail call void @tcg_gen_xor_i64(ptr noundef %i.b, ptr noundef %i.a, ptr noundef %1) #14
  %i.h = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  tail call void @tcg_gen_xor_i64(ptr noundef %i.h, ptr noundef %1, ptr noundef %2) #14
  tail call void @tcg_gen_and_i64(ptr noundef %i.b, ptr noundef %i.b, ptr noundef %i.h) #14
  %i.i = load ptr, ptr @cpu_VF, align 8
  tail call void @tcg_gen_extrh_i64_i32(ptr noundef %i.i, ptr noundef %i.b) #14
  tail call void @tcg_gen_mov_i64(ptr noundef %0, ptr noundef %i.a) #14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @gen_sub32_CC(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @tcg_temp_new_i32() #14    ; 5 uses
  %i.b = tail call ptr @tcg_temp_new_i32() #14    ; 4 uses
  tail call void @tcg_gen_extrl_i64_i32(ptr noundef %i.a, ptr noundef %1) #14
  tail call void @tcg_gen_extrl_i64_i32(ptr noundef %i.b, ptr noundef %2) #14
  %i.c = load ptr, ptr @cpu_NF, align 8
  tail call void @tcg_gen_sub_i32(ptr noundef %i.c, ptr noundef %i.a, ptr noundef %i.b) #14
  %i.d = load ptr, ptr @cpu_ZF, align 8
  %i.e = load ptr, ptr @cpu_NF, align 8
  tail call void @tcg_gen_mov_i32(ptr noundef %i.d, ptr noundef %i.e) #14
  %i.f = load ptr, ptr @cpu_CF, align 8
  tail call void @tcg_gen_setcond_i32(i32 noundef 11, ptr noundef %i.f, ptr noundef %i.a, ptr noundef %i.b) #14
  %i.g = load ptr, ptr @cpu_VF, align 8
  %i.h = load ptr, ptr @cpu_NF, align 8
  tail call void @tcg_gen_xor_i32(ptr noundef %i.g, ptr noundef %i.h, ptr noundef %i.a) #14
  %i.i = tail call ptr @tcg_temp_new_i32() #14    ; 2 uses
  tail call void @tcg_gen_xor_i32(ptr noundef %i.i, ptr noundef %i.a, ptr noundef %i.b) #14
  %i.j = load ptr, ptr @cpu_VF, align 8           ; 2 uses
  tail call void @tcg_gen_and_i32(ptr noundef %i.j, ptr noundef %i.j, ptr noundef %i.i) #14
  %i.k = load ptr, ptr @cpu_NF, align 8
  tail call void @tcg_gen_extu_i32_i64(ptr noundef %0, ptr noundef %i.k) #14
  ret void
}

declare void @tcg_gen_extrh_i64_i32(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @tcg_gen_sub_i32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @tcg_gen_setcond_i32(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @tcg_gen_xor_i32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @tcg_gen_and_i32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @gen_add64_CC(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @tcg_temp_new_i64() #14    ; 4 uses
  %i.b = tail call ptr @tcg_temp_new_i64() #14    ; 6 uses
  %i.c = tail call ptr @tcg_temp_new_i64() #14    ; 5 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.c, i64 noundef 0) #14
  tail call void @tcg_gen_add2_i64(ptr noundef %i.a, ptr noundef %i.b, ptr noundef %1, ptr noundef %i.c, ptr noundef %2, ptr noundef %i.c) #14
  %i.d = load ptr, ptr @cpu_CF, align 8
  tail call void @tcg_gen_extrl_i64_i32(ptr noundef %i.d, ptr noundef %i.b) #14
  %i.e = load ptr, ptr @cpu_ZF, align 8
  %i.f = load ptr, ptr @cpu_NF, align 8
  tail call void @tcg_gen_extr_i64_i32(ptr noundef %i.e, ptr noundef %i.f, ptr noundef %i.a) #14
  %i.g = load ptr, ptr @cpu_ZF, align 8           ; 2 uses
  %i.h = load ptr, ptr @cpu_NF, align 8
  tail call void @tcg_gen_or_i32(ptr noundef %i.g, ptr noundef %i.g, ptr noundef %i.h) #14
  tail call void @tcg_gen_xor_i64(ptr noundef %i.b, ptr noundef %i.a, ptr noundef %1) #14
  tail call void @tcg_gen_xor_i64(ptr noundef %i.c, ptr noundef %1, ptr noundef %2) #14
  tail call void @tcg_gen_andc_i64(ptr noundef %i.b, ptr noundef %i.b, ptr noundef %i.c) #14
  %i.i = load ptr, ptr @cpu_VF, align 8
  tail call void @tcg_gen_extrh_i64_i32(ptr noundef %i.i, ptr noundef %i.b) #14
  tail call void @tcg_gen_mov_i64(ptr noundef %0, ptr noundef %i.a) #14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @gen_add32_CC(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @tcg_temp_new_i32() #14    ; 4 uses
  %i.b = tail call ptr @tcg_temp_new_i32() #14    ; 3 uses
  %i.c = tail call ptr @tcg_temp_new_i32() #14    ; 5 uses
  tail call void @tcg_gen_movi_i32(ptr noundef %i.c, i32 noundef 0) #14
  tail call void @tcg_gen_extrl_i64_i32(ptr noundef %i.a, ptr noundef %1) #14
  tail call void @tcg_gen_extrl_i64_i32(ptr noundef %i.b, ptr noundef %2) #14
  %i.d = load ptr, ptr @cpu_NF, align 8
  %i.e = load ptr, ptr @cpu_CF, align 8
  tail call void @tcg_gen_add2_i32(ptr noundef %i.d, ptr noundef %i.e, ptr noundef %i.a, ptr noundef %i.c, ptr noundef %i.b, ptr noundef %i.c) #14
  %i.f = load ptr, ptr @cpu_ZF, align 8
  %i.g = load ptr, ptr @cpu_NF, align 8
  tail call void @tcg_gen_mov_i32(ptr noundef %i.f, ptr noundef %i.g) #14
  %i.h = load ptr, ptr @cpu_VF, align 8
  %i.i = load ptr, ptr @cpu_NF, align 8
  tail call void @tcg_gen_xor_i32(ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.a) #14
  tail call void @tcg_gen_xor_i32(ptr noundef %i.c, ptr noundef %i.a, ptr noundef %i.b) #14
  %i.j = load ptr, ptr @cpu_VF, align 8           ; 2 uses
  tail call void @tcg_gen_andc_i32(ptr noundef %i.j, ptr noundef %i.j, ptr noundef %i.c) #14
  %i.k = load ptr, ptr @cpu_NF, align 8
  tail call void @tcg_gen_extu_i32_i64(ptr noundef %0, ptr noundef %i.k) #14
  ret void
}

declare void @tcg_gen_add2_i64(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @tcg_gen_add2_i32(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @tcg_gen_andc_i32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @do_addsub_ext(ptr nofree noundef nonnull readonly captures(none) %0, i1 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp slt i32 %i.b, 5                     ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.y

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 4                ; 3 uses
  br i1 %2, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8
  br label %cpu_reg.exit

bb.d:                                             ; preds = %bb.b
  %i.h = icmp eq i32 %i.d, 31
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.i, i64 noundef 0) #14
  br label %cpu_reg.exit

bb.f:                                             ; preds = %bb.d
  %i.j = sext i32 %i.d to i64
  %i.k = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8
  br label %cpu_reg.exit

cpu_reg.exit:                                     ; preds = %bb.f, %bb.e, %bb.c
  %.0 = phi ptr [ %i.g, %bb.c ], [ %i.i, %bb.e ], [ %i.l, %bb.f ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.n = load i32, ptr %i.m, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.p = load i32, ptr %i.o, align 4
  %i.q = tail call ptr @tcg_temp_new_i64() #14    ; 8 uses
  %.not.i = icmp eq i32 %i.p, 0
  %i.r = sext i32 %i.n to i64
  %i.s = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %cpu_reg.exit
  tail call void @tcg_gen_mov_i64(ptr noundef %i.q, ptr noundef %i.t) #14
  br label %read_cpu_reg_sp.exit

bb.h:                                             ; preds = %cpu_reg.exit
  tail call void @tcg_gen_ext32u_i64(ptr noundef %i.q, ptr noundef %i.t) #14
  br label %read_cpu_reg_sp.exit

read_cpu_reg_sp.exit:                             ; preds = %bb.g, %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load i32, ptr %i.u, align 4              ; 2 uses
  %i.w = load i32, ptr %i.o, align 4
  %i.x = tail call ptr @tcg_temp_new_i64() #14    ; 13 uses
  %.not.i39 = icmp eq i32 %i.v, 31
  br i1 %.not.i39, label %bb.l, label %bb.i

bb.i:                                             ; preds = %read_cpu_reg_sp.exit
  %.not7.i = icmp eq i32 %i.w, 0
  %i.y = sext i32 %i.v to i64
  %i.z = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  br i1 %.not7.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @tcg_gen_mov_i64(ptr noundef %i.x, ptr noundef %i.aa) #14
  br label %read_cpu_reg.exit

bb.k:                                             ; preds = %bb.i
  tail call void @tcg_gen_ext32u_i64(ptr noundef %i.x, ptr noundef %i.aa) #14
  br label %read_cpu_reg.exit

bb.l:                                             ; preds = %read_cpu_reg_sp.exit
  tail call void @tcg_gen_movi_i64(ptr noundef %i.x, i64 noundef 0) #14
  br label %read_cpu_reg.exit

read_cpu_reg.exit:                                ; preds = %bb.j, %bb.k, %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ac = load i32, ptr %i.ab, align 4            ; 2 uses
  %i.ad = load i32, ptr %i.a, align 4
  %i.ae = and i32 %i.ac, 3
  %i.af = shl i32 %i.ac, 1
  %i.ag = and i32 %i.af, 8
  %i.ah = or disjoint i32 %i.ag, %i.ae
  tail call void @tcg_gen_ext_i64(ptr noundef %i.x, ptr noundef %i.x, i32 noundef %i.ah) #14
  %i.ai = zext i32 %i.ad to i64
  tail call void @tcg_gen_shli_i64(ptr noundef %i.x, ptr noundef %i.x, i64 noundef %i.ai) #14
  %i.aj = tail call ptr @tcg_temp_new_i64() #14   ; 8 uses
  br i1 %2, label %bb.p, label %bb.m

bb.m:                                             ; preds = %read_cpu_reg.exit
  br i1 %1, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @tcg_gen_sub_i64(ptr noundef %i.aj, ptr noundef %i.q, ptr noundef %i.x) #14
  br label %gen_sub_CC.exit

bb.o:                                             ; preds = %bb.m
  tail call void @tcg_gen_add_i64(ptr noundef %i.aj, ptr noundef %i.q, ptr noundef %i.x) #14
  br label %gen_sub_CC.exit

bb.p:                                             ; preds = %read_cpu_reg.exit
  %i.ak = load i32, ptr %i.o, align 4
  %.not.i40 = icmp eq i32 %i.ak, 0                ; 2 uses
  br i1 %1, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  br i1 %.not.i40, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call fastcc void @gen_sub64_CC(ptr noundef %i.aj, ptr noundef %i.q, ptr noundef %i.x)
  br label %gen_sub_CC.exit

bb.s:                                             ; preds = %bb.q
  tail call fastcc void @gen_sub32_CC(ptr noundef %i.aj, ptr noundef %i.q, ptr noundef %i.x)
  br label %gen_sub_CC.exit

bb.t:                                             ; preds = %bb.p
  br i1 %.not.i40, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call fastcc void @gen_add64_CC(ptr noundef %i.aj, ptr noundef %i.q, ptr noundef %i.x)
  br label %gen_sub_CC.exit

bb.v:                                             ; preds = %bb.t
  tail call fastcc void @gen_add32_CC(ptr noundef %i.aj, ptr noundef %i.q, ptr noundef %i.x)
  br label %gen_sub_CC.exit

gen_sub_CC.exit:                                  ; preds = %bb.v, %bb.u, %bb.s, %bb.r, %bb.n, %bb.o
  %i.al = load i32, ptr %i.o, align 4
  %.not = icmp eq i32 %i.al, 0
  br i1 %.not, label %bb.x, label %bb.w

bb.w:                                             ; preds = %gen_sub_CC.exit
  tail call void @tcg_gen_mov_i64(ptr noundef %.0, ptr noundef %i.aj) #14
  br label %bb.y

bb.x:                                             ; preds = %gen_sub_CC.exit
  tail call void @tcg_gen_ext32u_i64(ptr noundef %.0, ptr noundef %i.aj) #14
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x, %bb.a
  ret i1 %i.c
}

declare void @tcg_gen_ext_i64(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @tcg_gen_shli_i64(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @tcg_gen_qemu_st_i128_chk(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @tcg_gen_not_i64(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @tcg_gen_orc_i64(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @pow2_align(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @read_vec_element(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = and i32 %3, 7
  %i.b = shl i32 %2, %i.a
  %i.c = shl i32 %1, 8
  %i.d = add i32 %i.c, 3888
  %i.e = add i32 %i.d, %i.b                       ; 7 uses
  switch i32 %3, label %bb.i [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 8, label %bb.e
    i32 9, label %bb.f
    i32 10, label %bb.g
    i32 3, label %bb.h
    i32 11, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @tcg_env, align 8
  %i.g = sext i32 %i.e to i64
  tail call void @tcg_gen_ld8u_i64(ptr noundef %0, ptr noundef %i.f, i64 noundef %i.g) #14
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @tcg_env, align 8
  %i.i = sext i32 %i.e to i64
  tail call void @tcg_gen_ld16u_i64(ptr noundef %0, ptr noundef %i.h, i64 noundef %i.i) #14
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  %i.j = load ptr, ptr @tcg_env, align 8
  %i.k = sext i32 %i.e to i64
  tail call void @tcg_gen_ld32u_i64(ptr noundef %0, ptr noundef %i.j, i64 noundef %i.k) #14
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.l = load ptr, ptr @tcg_env, align 8
  %i.m = sext i32 %i.e to i64
  tail call void @tcg_gen_ld8s_i64(ptr noundef %0, ptr noundef %i.l, i64 noundef %i.m) #14
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %i.n = load ptr, ptr @tcg_env, align 8
  %i.o = sext i32 %i.e to i64
  tail call void @tcg_gen_ld16s_i64(ptr noundef %0, ptr noundef %i.n, i64 noundef %i.o) #14
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.p = load ptr, ptr @tcg_env, align 8
  %i.q = sext i32 %i.e to i64
  tail call void @tcg_gen_ld32s_i64(ptr noundef %0, ptr noundef %i.p, i64 noundef %i.q) #14
  br label %bb.j

bb.h:                                             ; preds = %bb.a, %bb.a
  %i.r = load ptr, ptr @tcg_env, align 8
  %i.s = sext i32 %i.e to i64
  tail call void @tcg_gen_ld_i64(ptr noundef %0, ptr noundef %i.r, i64 noundef %i.s) #14
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 1336, ptr noundef nonnull @__func__.read_vec_element, ptr noundef null) #15
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

declare void @tcg_gen_ld8u_i64(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @tcg_gen_ld16u_i64(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @tcg_gen_ld32u_i64(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @tcg_gen_ld8s_i64(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @tcg_gen_ld16s_i64(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @tcg_gen_ld32s_i64(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @tcg_gen_ld_i64(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @write_vec_element(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = and i32 %3, 7
  %i.b = shl i32 %2, %i.a
  %i.c = shl i32 %1, 8
  %i.d = add i32 %i.c, 3888
  %i.e = add i32 %i.d, %i.b                       ; 4 uses
  switch i32 %3, label %bb.f [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @tcg_env, align 8
  %i.g = sext i32 %i.e to i64
  tail call void @tcg_gen_st8_i64(ptr noundef %0, ptr noundef %i.f, i64 noundef %i.g) #14
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @tcg_env, align 8
  %i.i = sext i32 %i.e to i64
  tail call void @tcg_gen_st16_i64(ptr noundef %0, ptr noundef %i.h, i64 noundef %i.i) #14
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.j = load ptr, ptr @tcg_env, align 8
  %i.k = sext i32 %i.e to i64
  tail call void @tcg_gen_st32_i64(ptr noundef %0, ptr noundef %i.j, i64 noundef %i.k) #14
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.l = load ptr, ptr @tcg_env, align 8
  %i.m = sext i32 %i.e to i64
  tail call void @tcg_gen_st_i64(ptr noundef %0, ptr noundef %i.l, i64 noundef %i.m) #14
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 1385, ptr noundef nonnull @__func__.write_vec_element, ptr noundef null) #15
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

declare void @tcg_gen_st8_i64(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @tcg_gen_st16_i64(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @tcg_gen_st32_i64(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @do_fp_st(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @tcg_temp_new_i64() #14    ; 3 uses
  %i.b = load ptr, ptr @tcg_env, align 8
  %i.c = shl i32 %1, 8                            ; 2 uses
  %i.d = add i32 %i.c, 3888
  %i.e = sext i32 %i.d to i64
  tail call void @tcg_gen_ld_i64(ptr noundef %i.a, ptr noundef %i.b, i64 noundef %i.e) #14
  %i.f = and i32 %3, 4
  %.not.not = icmp eq i32 %i.f, 0
  br i1 %.not.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 192
  %.val17 = load i32, ptr %i.g, align 8
  %i.h = and i32 %.val17, 31                      ; 2 uses
  %i.i = icmp samesign ult i32 %i.h, 22
  br i1 %i.i, label %get_mem_index.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, i32 noundef 1022, ptr noundef nonnull @__PRETTY_FUNCTION__.arm_to_core_mmu_idx) #15
  unreachable

get_mem_index.exit:                               ; preds = %bb.b
  %i.j = zext nneg i32 %i.h to i64
  %i.k = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = ptrtoint ptr %2 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  tail call void @tcg_gen_qemu_st_i64_chk(ptr noundef %i.a, ptr noundef %i.n, i64 noundef range(i64 0, 22) %i.j, i32 noundef %3, i32 noundef 1) #14
  br label %bb.f

end_hunk_3
begin_hunk_4_@do_adc_sbc:bb.a
bb.a:
  %i.a = load i32, ptr %0, align 4                ; 2 uses
  %i.b = icmp eq i32 %i.a, 31
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.c, i64 noundef 0) #14
  br label %cpu_reg.exit

bb.c:                                             ; preds = %bb.a
  %i.d = sext i32 %i.a to i64
  %i.e = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8
  br label %cpu_reg.exit

cpu_reg.exit:                                     ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.f, %bb.c ] ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %i.i = icmp eq i32 %i.h, 31
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %cpu_reg.exit
  %i.j = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.j, i64 noundef 0) #14
  br label %cpu_reg.exit19

bb.e:                                             ; preds = %cpu_reg.exit
  %i.k = sext i32 %i.h to i64
  %i.l = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8
  br label %cpu_reg.exit19

cpu_reg.exit19:                                   ; preds = %bb.d, %bb.e
  %.0.i18 = phi ptr [ %i.j, %bb.d ], [ %i.m, %bb.e ] ; 5 uses
  br i1 %1, label %bb.f, label %bb.i

bb.f:                                             ; preds = %cpu_reg.exit19
  %i.n = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i32, ptr %i.o, align 4              ; 2 uses
  %i.q = icmp eq i32 %i.p, 31
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.r, i64 noundef 0) #14
  br label %cpu_reg.exit21

bb.h:                                             ; preds = %bb.f
  %i.s = sext i32 %i.p to i64
  %i.t = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8
  br label %cpu_reg.exit21

cpu_reg.exit21:                                   ; preds = %bb.g, %bb.h
  %.0.i20 = phi ptr [ %i.r, %bb.g ], [ %i.u, %bb.h ]
  tail call void @tcg_gen_not_i64(ptr noundef %i.n, ptr noundef %.0.i20) #14
  br label %cpu_reg.exit23

bb.i:                                             ; preds = %cpu_reg.exit19
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i32, ptr %i.v, align 4              ; 2 uses
  %i.x = icmp eq i32 %i.w, 31
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.y, i64 noundef 0) #14
  br label %cpu_reg.exit23

bb.k:                                             ; preds = %bb.i
  %i.z = sext i32 %i.w to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8
  br label %cpu_reg.exit23

cpu_reg.exit23:                                   ; preds = %bb.k, %bb.j, %cpu_reg.exit21
  %.0 = phi ptr [ %i.n, %cpu_reg.exit21 ], [ %i.y, %bb.j ], [ %i.ab, %bb.k ] ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ad = load i32, ptr %i.ac, align 4            ; 2 uses
  br i1 %2, label %bb.l, label %bb.o

bb.l:                                             ; preds = %cpu_reg.exit23
  %.not.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = tail call ptr @tcg_temp_new_i64() #14   ; 4 uses
  %i.af = tail call ptr @tcg_temp_new_i64() #14   ; 4 uses
  %i.ag = tail call ptr @tcg_temp_new_i64() #14   ; 4 uses
  %i.ah = tail call ptr @tcg_temp_new_i64() #14   ; 2 uses
  %i.ai = load ptr, ptr @cpu_CF, align 8
  tail call void @tcg_gen_extu_i32_i64(ptr noundef %i.af, ptr noundef %i.ai) #14
  tail call void @tcg_gen_addcio_i64(ptr noundef %i.ae, ptr noundef %i.af, ptr noundef %.0.i18, ptr noundef %.0, ptr noundef %i.af) #14
  %i.aj = load ptr, ptr @cpu_CF, align 8
  tail call void @tcg_gen_extrl_i64_i32(ptr noundef %i.aj, ptr noundef %i.af) #14
  %i.ak = load ptr, ptr @cpu_ZF, align 8
  %i.al = load ptr, ptr @cpu_NF, align 8
  tail call void @tcg_gen_extr_i64_i32(ptr noundef %i.ak, ptr noundef %i.al, ptr noundef %i.ae) #14
  %i.am = load ptr, ptr @cpu_ZF, align 8          ; 2 uses
  %i.an = load ptr, ptr @cpu_NF, align 8
  tail call void @tcg_gen_or_i32(ptr noundef %i.am, ptr noundef %i.am, ptr noundef %i.an) #14
  tail call void @tcg_gen_xor_i64(ptr noundef %i.ag, ptr noundef %i.ae, ptr noundef %.0.i18) #14
  tail call void @tcg_gen_xor_i64(ptr noundef %i.ah, ptr noundef %.0.i18, ptr noundef %.0) #14
  tail call void @tcg_gen_andc_i64(ptr noundef %i.ag, ptr noundef %i.ag, ptr noundef %i.ah) #14
  %i.ao = load ptr, ptr @cpu_VF, align 8
  tail call void @tcg_gen_extrh_i64_i32(ptr noundef %i.ao, ptr noundef %i.ag) #14
  tail call void @tcg_gen_mov_i64(ptr noundef %.0.i, ptr noundef %i.ae) #14
  br label %gen_adc_CC.exit

bb.n:                                             ; preds = %bb.l
  %i.ap = tail call ptr @tcg_temp_new_i32() #14   ; 4 uses
  %i.aq = tail call ptr @tcg_temp_new_i32() #14   ; 3 uses
  %i.ar = tail call ptr @tcg_temp_new_i32() #14   ; 2 uses
  tail call void @tcg_gen_extrl_i64_i32(ptr noundef %i.ap, ptr noundef %.0.i18) #14
  tail call void @tcg_gen_extrl_i64_i32(ptr noundef %i.aq, ptr noundef %.0) #14
  %i.as = load ptr, ptr @cpu_NF, align 8
  %i.at = load ptr, ptr @cpu_CF, align 8          ; 2 uses
  tail call void @tcg_gen_addcio_i32(ptr noundef %i.as, ptr noundef %i.at, ptr noundef %i.ap, ptr noundef %i.aq, ptr noundef %i.at) #14
  %i.au = load ptr, ptr @cpu_ZF, align 8
  %i.av = load ptr, ptr @cpu_NF, align 8
  tail call void @tcg_gen_mov_i32(ptr noundef %i.au, ptr noundef %i.av) #14
  %i.aw = load ptr, ptr @cpu_VF, align 8
  %i.ax = load ptr, ptr @cpu_NF, align 8
  tail call void @tcg_gen_xor_i32(ptr noundef %i.aw, ptr noundef %i.ax, ptr noundef %i.ap) #14
  tail call void @tcg_gen_xor_i32(ptr noundef %i.ar, ptr noundef %i.ap, ptr noundef %i.aq) #14
  %i.ay = load ptr, ptr @cpu_VF, align 8          ; 2 uses
  tail call void @tcg_gen_andc_i32(ptr noundef %i.ay, ptr noundef %i.ay, ptr noundef %i.ar) #14
  %i.az = load ptr, ptr @cpu_NF, align 8
  tail call void @tcg_gen_extu_i32_i64(ptr noundef %.0.i, ptr noundef %i.az) #14
  br label %gen_adc_CC.exit

bb.o:                                             ; preds = %cpu_reg.exit23
  %i.ba = tail call ptr @tcg_temp_new_i64() #14   ; 2 uses
  %i.bb = load ptr, ptr @cpu_CF, align 8
  tail call void @tcg_gen_extu_i32_i64(ptr noundef %i.ba, ptr noundef %i.bb) #14
  tail call void @tcg_gen_add_i64(ptr noundef %.0.i, ptr noundef %.0.i18, ptr noundef %.0) #14
  tail call void @tcg_gen_add_i64(ptr noundef %.0.i, ptr noundef %.0.i, ptr noundef %i.ba) #14
  %.not.i24 = icmp eq i32 %i.ad, 0
  br i1 %.not.i24, label %bb.p, label %gen_adc_CC.exit

bb.p:                                             ; preds = %bb.o
  tail call void @tcg_gen_ext32u_i64(ptr noundef %.0.i, ptr noundef %.0.i) #14
  br label %gen_adc_CC.exit

gen_adc_CC.exit:                                  ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  ret void
}

declare void @tcg_gen_addcio_i64(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @tcg_gen_addcio_i32(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @tcg_gen_negsetcond_i64(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @arm_test_cc(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @tcg_gen_ext_i32_i64(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @do_subp(ptr nofree noundef nonnull readonly captures(none) %0, i1 noundef zeroext %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4
  %i.c = tail call ptr @tcg_temp_new_i64() #14    ; 5 uses
  %i.d = sext i32 %i.b to i64
  %i.e = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8
  tail call void @tcg_gen_mov_i64(ptr noundef %i.c, ptr noundef %i.f) #14
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 4
  %i.i = tail call ptr @tcg_temp_new_i64() #14    ; 5 uses
  %i.j = sext i32 %i.h to i64
  %i.k = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8
  tail call void @tcg_gen_mov_i64(ptr noundef %i.i, ptr noundef %i.l) #14
  %i.m = load i32, ptr %0, align 4                ; 2 uses
  %i.n = icmp eq i32 %i.m, 31
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.o, i64 noundef 0) #14
  br label %cpu_reg.exit

bb.c:                                             ; preds = %bb.a
  %i.p = sext i32 %i.m to i64
  %i.q = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8
  br label %cpu_reg.exit

cpu_reg.exit:                                     ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.o, %bb.b ], [ %i.r, %bb.c ] ; 2 uses
  tail call void @tcg_gen_sextract_i64(ptr noundef %i.c, ptr noundef %i.c, i32 noundef 0, i32 noundef 56) #14
  tail call void @tcg_gen_sextract_i64(ptr noundef %i.i, ptr noundef %i.i, i32 noundef 0, i32 noundef 56) #14
  br i1 %1, label %bb.d, label %bb.e

bb.d:                                             ; preds = %cpu_reg.exit
  tail call fastcc void @gen_sub64_CC(ptr noundef %.0.i, ptr noundef %i.c, ptr noundef %i.i)
  br label %bb.f

bb.e:                                             ; preds = %cpu_reg.exit
  tail call void @tcg_gen_sub_i64(ptr noundef %.0.i, ptr noundef %i.c, ptr noundef %i.i) #14
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @do_shift_reg(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef range(i32 0, 4) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  %i.b = load i32, ptr %0, align 4                ; 2 uses
  %i.c = icmp eq i32 %i.b, 31
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.d, i64 noundef 0) #14
  br label %cpu_reg.exit

bb.c:                                             ; preds = %bb.a
  %i.e = sext i32 %i.b to i64
  %i.f = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8
  br label %cpu_reg.exit

cpu_reg.exit:                                     ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.d, %bb.b ], [ %i.g, %bb.c ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = load i32, ptr %i.h, align 4              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = tail call ptr @tcg_temp_new_i64() #14    ; 4 uses
  %.not.i = icmp eq i32 %i.i, 31
  br i1 %.not.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %cpu_reg.exit
  %.not7.i = icmp eq i32 %i.k, 0
  %i.m = sext i32 %i.i to i64
  %i.n = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  br i1 %.not7.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @tcg_gen_mov_i64(ptr noundef %i.l, ptr noundef %i.o) #14
  br label %read_cpu_reg.exit

bb.f:                                             ; preds = %bb.d
  tail call void @tcg_gen_ext32u_i64(ptr noundef %i.l, ptr noundef %i.o) #14
  br label %read_cpu_reg.exit

bb.g:                                             ; preds = %cpu_reg.exit
  tail call void @tcg_gen_movi_i64(ptr noundef %i.l, i64 noundef 0) #14
  br label %read_cpu_reg.exit

read_cpu_reg.exit:                                ; preds = %bb.e, %bb.f, %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i32, ptr %i.p, align 4              ; 2 uses
  %i.r = icmp eq i32 %i.q, 31
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %read_cpu_reg.exit
  %i.s = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.s, i64 noundef 0) #14
  br label %cpu_reg.exit14

bb.i:                                             ; preds = %read_cpu_reg.exit
  %i.t = sext i32 %i.q to i64
  %i.u = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8
  br label %cpu_reg.exit14

cpu_reg.exit14:                                   ; preds = %bb.h, %bb.i
  %.0.i13 = phi ptr [ %i.s, %bb.h ], [ %i.v, %bb.i ]
  %i.w = load i32, ptr %i.j, align 4
  %.not = icmp eq i32 %i.w, 0
  %i.x = select i1 %.not, i64 31, i64 63
  tail call void @tcg_gen_andi_i64(ptr noundef %i.a, ptr noundef %.0.i13, i64 noundef %i.x) #14
  %i.y = load i32, ptr %i.j, align 4
  tail call fastcc void @shift_reg(ptr noundef %.0.i, ptr noundef %i.l, i32 noundef %i.y, i32 noundef %1, ptr noundef %i.a)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @do_crc32(ptr nofree noundef nonnull readonly captures(none) %0, i1 noundef zeroext %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4
  switch i32 %i.b, label %bb.h [
    i32 0, label %bb.b
    i32 1, label %bb.b
    i32 2, label %bb.b
    i32 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.c = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = icmp eq i32 %i.e, 31
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.g, i64 noundef 0) #14
  br label %cpu_reg.exit

bb.d:                                             ; preds = %bb.b
  %i.h = sext i32 %i.e to i64
  %i.i = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8
  br label %cpu_reg.exit

cpu_reg.exit:                                     ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.g, %bb.c ], [ %i.j, %bb.d ]
  %i.k = load i32, ptr %i.a, align 4
  %i.l = shl i32 8, %i.k
  tail call void @tcg_gen_extract_i64(ptr noundef %i.c, ptr noundef %.0.i, i32 noundef 0, i32 noundef %i.l) #14
  br label %cpu_reg.exit21

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i32, ptr %i.m, align 4              ; 2 uses
  %i.o = icmp eq i32 %i.n, 31
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.p, i64 noundef 0) #14
  br label %cpu_reg.exit21

bb.g:                                             ; preds = %bb.e
  %i.q = sext i32 %i.n to i64
  %i.r = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8
  br label %cpu_reg.exit21

bb.h:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 8845, ptr noundef nonnull @__func__.do_crc32, ptr noundef null) #15
  unreachable

cpu_reg.exit21:                                   ; preds = %bb.g, %bb.f, %cpu_reg.exit
  %.0 = phi ptr [ %i.c, %cpu_reg.exit ], [ %i.p, %bb.f ], [ %i.s, %bb.g ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.u = load i32, ptr %i.t, align 4              ; 2 uses
  %i.v = icmp eq i32 %i.u, 31
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %cpu_reg.exit21
  %i.w = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.w, i64 noundef 0) #14
  br label %cpu_reg.exit23

bb.j:                                             ; preds = %cpu_reg.exit21
  %i.x = sext i32 %i.u to i64
  %i.y = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8
  br label %cpu_reg.exit23

cpu_reg.exit23:                                   ; preds = %bb.i, %bb.j
  %.0.i22 = phi ptr [ %i.w, %bb.i ], [ %i.z, %bb.j ]
  %i.aa = load i32, ptr %i.a, align 4
  %i.ab = shl nuw i32 1, %i.aa
  %i.ac = tail call ptr @tcg_constant_i32(i32 noundef %i.ab) #14
  %i.ad = load i32, ptr %0, align 4               ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 31
  br i1 %i.ae, label %bb.k, label %bb.l

bb.k:                                             ; preds = %cpu_reg.exit23
  %i.af = tail call ptr @tcg_temp_new_i64() #14   ; 2 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.af, i64 noundef 0) #14
  br label %cpu_reg.exit25

bb.l:                                             ; preds = %cpu_reg.exit23
  %i.ag = sext i32 %i.ad to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8
  br label %cpu_reg.exit25

cpu_reg.exit25:                                   ; preds = %bb.k, %bb.l
  %.0.i24 = phi ptr [ %i.af, %bb.k ], [ %i.ai, %bb.l ]
  %i.aj = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.ak = load ptr, ptr %i.aj, align 8            ; 4 uses
  %i.al = ptrtoint ptr %.0.i24 to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.al
  %i.an = ptrtoint ptr %.0.i22 to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.an
  %i.ap = ptrtoint ptr %.0 to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ap
  %i.ar = ptrtoint ptr %i.ac to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ar
  %helper_info_crc32c_64.helper_info_crc32_64 = select i1 %1, ptr @helper_info_crc32c_64, ptr @helper_info_crc32_64 ; 2 uses
  %i.at = load ptr, ptr %helper_info_crc32c_64.helper_info_crc32_64, align 8
  tail call void @tcg_gen_call3(ptr noundef %i.at, ptr noundef nonnull %helper_info_crc32c_64.helper_info_crc32_64, ptr noundef %i.am, ptr noundef %i.ao, ptr noundef %i.aq, ptr noundef %i.as) #14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @gen_rrr(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = icmp eq i32 %i.b, 31
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.d, i64 noundef 0) #14
  br label %cpu_reg.exit

bb.c:                                             ; preds = %bb.a
  %i.e = sext i32 %i.b to i64
  %i.f = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8
  br label %cpu_reg.exit

cpu_reg.exit:                                     ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.d, %bb.b ], [ %i.g, %bb.c ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = load i32, ptr %i.h, align 4              ; 2 uses
  %i.j = icmp eq i32 %i.i, 31
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %cpu_reg.exit
  %i.k = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.k, i64 noundef 0) #14
  br label %cpu_reg.exit14

bb.e:                                             ; preds = %cpu_reg.exit
  %i.l = sext i32 %i.i to i64
  %i.m = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8
  br label %cpu_reg.exit14

cpu_reg.exit14:                                   ; preds = %bb.d, %bb.e
  %.0.i13 = phi ptr [ %i.k, %bb.d ], [ %i.n, %bb.e ]
  %i.o = load i32, ptr %0, align 4                ; 2 uses
  %i.p = icmp eq i32 %i.o, 31
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %cpu_reg.exit14
  %i.q = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.q, i64 noundef 0) #14
  br label %cpu_reg.exit16

bb.g:                                             ; preds = %cpu_reg.exit14
  %i.r = sext i32 %i.o to i64
  %i.s = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8
  br label %cpu_reg.exit16

cpu_reg.exit16:                                   ; preds = %bb.f, %bb.g
  %.0.i15 = phi ptr [ %i.q, %bb.f ], [ %i.t, %bb.g ] ; 3 uses
  tail call void %1(ptr noundef %.0.i15, ptr noundef %.0.i13, ptr noundef %.0.i) #14
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.v = load i32, ptr %i.u, align 4
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %cpu_reg.exit16
  tail call void @tcg_gen_ext32u_i64(ptr noundef %.0.i15, ptr noundef %.0.i15) #14
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %cpu_reg.exit16
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @gen_helper_rbit64(ptr noundef %0, ptr noundef %1) unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr @helper_info_rbit64, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  tail call void @tcg_gen_call1(ptr noundef %i.a, ptr noundef nonnull @helper_info_rbit64, ptr noundef %i.e, ptr noundef %i.g) #14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @gen_rbit32(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @tcg_temp_new_i32() #14    ; 3 uses
  tail call void @tcg_gen_extrl_i64_i32(ptr noundef %i.a, ptr noundef %1) #14
  %i.b = load ptr, ptr @helper_info_rbit, align 8
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e ; 2 uses
  tail call void @tcg_gen_call1(ptr noundef %i.b, ptr noundef nonnull @helper_info_rbit, ptr noundef %i.f, ptr noundef %i.f) #14
  tail call void @tcg_gen_extu_i32_i64(ptr noundef %0, ptr noundef %i.a) #14
  ret void
}

declare void @tcg_gen_abs_i64(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_abs32(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @tcg_temp_new_i32() #14    ; 4 uses
  tail call void @tcg_gen_extrl_i64_i32(ptr noundef %i.a, ptr noundef %1) #14
  tail call void @tcg_gen_abs_i32(ptr noundef %i.a, ptr noundef %i.a) #14, !callees !19, !inline_history !20
  tail call void @tcg_gen_extu_i32_i64(ptr noundef %0, ptr noundef %i.a) #14
  ret void
}

declare void @tcg_gen_abs_i32(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @gen_rev16_64(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @tcg_constant_i64(i64 noundef 71777214294589695) #14 ; 2 uses
  %i.b = tail call ptr @tcg_temp_new_i64() #14    ; 4 uses
  tail call void @tcg_gen_shri_i64(ptr noundef %i.b, ptr noundef %1, i64 noundef 8) #14
  tail call void @tcg_gen_and_i64(ptr noundef %0, ptr noundef %1, ptr noundef %i.a) #14
  tail call void @tcg_gen_and_i64(ptr noundef %i.b, ptr noundef %i.b, ptr noundef %i.a) #14
  tail call void @tcg_gen_shli_i64(ptr noundef %0, ptr noundef %0, i64 noundef 8) #14
  tail call void @tcg_gen_or_i64(ptr noundef %0, ptr noundef %0, ptr noundef %i.b) #14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @gen_rev16_32(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @tcg_constant_i64(i64 noundef 16711935) #14 ; 2 uses
  %i.b = tail call ptr @tcg_temp_new_i64() #14    ; 4 uses
  tail call void @tcg_gen_shri_i64(ptr noundef %i.b, ptr noundef %1, i64 noundef 8) #14
  tail call void @tcg_gen_and_i64(ptr noundef %0, ptr noundef %1, ptr noundef %i.a) #14
  tail call void @tcg_gen_and_i64(ptr noundef %i.b, ptr noundef %i.b, ptr noundef %i.a) #14
  tail call void @tcg_gen_shli_i64(ptr noundef %0, ptr noundef %0, i64 noundef 8) #14
  tail call void @tcg_gen_or_i64(ptr noundef %0, ptr noundef %0, ptr noundef %i.b) #14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @gen_clz64(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  tail call void @tcg_gen_clzi_i64(ptr noundef %0, ptr noundef %1, i64 noundef 64) #14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @gen_clz32(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @tcg_temp_new_i32() #14    ; 4 uses
  tail call void @tcg_gen_extrl_i64_i32(ptr noundef %i.a, ptr noundef %1) #14
  tail call void @tcg_gen_clzi_i32(ptr noundef %i.a, ptr noundef %i.a, i32 noundef 32) #14
  tail call void @tcg_gen_extu_i32_i64(ptr noundef %0, ptr noundef %i.a) #14
  ret void
}

declare void @tcg_gen_clzi_i64(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @tcg_gen_clzi_i32(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @tcg_gen_clrsb_i64(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_cls32(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @tcg_temp_new_i32() #14    ; 4 uses
  tail call void @tcg_gen_extrl_i64_i32(ptr noundef %i.a, ptr noundef %1) #14
  tail call void @tcg_gen_clrsb_i32(ptr noundef %i.a, ptr noundef %i.a) #14, !callees !19, !inline_history !20
  tail call void @tcg_gen_extu_i32_i64(ptr noundef %0, ptr noundef %i.a) #14
  ret void
}

declare void @tcg_gen_clrsb_i32(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @do_div(ptr nofree noundef nonnull readonly captures(none) %0, i1 noundef zeroext %1) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4                ; 2 uses
  %i.b = icmp eq i32 %i.a, 31
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.c, i64 noundef 0) #14
  br label %cpu_reg.exit

bb.c:                                             ; preds = %bb.a
  %i.d = sext i32 %i.a to i64
  %i.e = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8
  br label %cpu_reg.exit

cpu_reg.exit:                                     ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.f, %bb.c ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4
  %i.i = icmp eq i32 %i.h, 0                      ; 2 uses
  %or.cond = and i1 %1, %i.i
  br i1 %or.cond, label %bb.d, label %bb.i

bb.d:                                             ; preds = %cpu_reg.exit
  %i.j = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  %i.k = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = load i32, ptr %i.l, align 4              ; 2 uses
  %i.n = icmp eq i32 %i.m, 31
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.o, i64 noundef 0) #14
  br label %cpu_reg.exit28

bb.f:                                             ; preds = %bb.d
  %i.p = sext i32 %i.m to i64
  %i.q = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8
  br label %cpu_reg.exit28

cpu_reg.exit28:                                   ; preds = %bb.e, %bb.f
  %.0.i27 = phi ptr [ %i.o, %bb.e ], [ %i.r, %bb.f ]
  tail call void @tcg_gen_ext32s_i64(ptr noundef %i.j, ptr noundef %.0.i27) #14
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i32, ptr %i.s, align 4              ; 2 uses
  %i.u = icmp eq i32 %i.t, 31
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %cpu_reg.exit28
  %i.v = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.v, i64 noundef 0) #14
  br label %cpu_reg.exit30

bb.h:                                             ; preds = %cpu_reg.exit28
  %i.w = sext i32 %i.t to i64
  %i.x = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8
  br label %cpu_reg.exit30

cpu_reg.exit30:                                   ; preds = %bb.g, %bb.h
  %.0.i29 = phi ptr [ %i.v, %bb.g ], [ %i.y, %bb.h ]
  tail call void @tcg_gen_ext32s_i64(ptr noundef %i.k, ptr noundef %.0.i29) #14
  br label %read_cpu_reg.exit33

bb.i:                                             ; preds = %cpu_reg.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aa = load i32, ptr %i.z, align 4             ; 2 uses
  %i.ab = tail call ptr @tcg_temp_new_i64() #14   ; 6 uses
  %.not.i = icmp eq i32 %i.aa, 31
  br i1 %.not.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = sext i32 %i.aa to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  br i1 %i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @tcg_gen_mov_i64(ptr noundef %i.ab, ptr noundef %i.ae) #14
  br label %read_cpu_reg.exit

bb.l:                                             ; preds = %bb.j
  tail call void @tcg_gen_ext32u_i64(ptr noundef %i.ab, ptr noundef %i.ae) #14
  br label %read_cpu_reg.exit

bb.m:                                             ; preds = %bb.i
  tail call void @tcg_gen_movi_i64(ptr noundef %i.ab, i64 noundef 0) #14
  br label %read_cpu_reg.exit

read_cpu_reg.exit:                                ; preds = %bb.k, %bb.l, %bb.m
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load i32, ptr %i.af, align 4            ; 2 uses
  %i.ah = load i32, ptr %i.g, align 4
  %i.ai = tail call ptr @tcg_temp_new_i64() #14   ; 6 uses
  %.not.i31 = icmp eq i32 %i.ag, 31
  br i1 %.not.i31, label %bb.q, label %bb.n

bb.n:                                             ; preds = %read_cpu_reg.exit
  %.not7.i32 = icmp eq i32 %i.ah, 0
  %i.aj = sext i32 %i.ag to i64
  %i.ak = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  br i1 %.not7.i32, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @tcg_gen_mov_i64(ptr noundef %i.ai, ptr noundef %i.al) #14
  br label %read_cpu_reg.exit33

bb.p:                                             ; preds = %bb.n
  tail call void @tcg_gen_ext32u_i64(ptr noundef %i.ai, ptr noundef %i.al) #14
  br label %read_cpu_reg.exit33

bb.q:                                             ; preds = %read_cpu_reg.exit
  tail call void @tcg_gen_movi_i64(ptr noundef %i.ai, i64 noundef 0) #14
  br label %read_cpu_reg.exit33

read_cpu_reg.exit33:                              ; preds = %bb.q, %bb.p, %bb.o, %cpu_reg.exit30
  %.026 = phi ptr [ %i.j, %cpu_reg.exit30 ], [ %i.ab, %bb.o ], [ %i.ab, %bb.p ], [ %i.ab, %bb.q ]
  %.0 = phi ptr [ %i.k, %cpu_reg.exit30 ], [ %i.ai, %bb.o ], [ %i.ai, %bb.p ], [ %i.ai, %bb.q ]
  %i.am = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.an = load ptr, ptr %i.am, align 8            ; 3 uses
  %i.ao = ptrtoint ptr %.0.i to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ao
  %i.aq = ptrtoint ptr %.026 to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.aq
  %i.as = ptrtoint ptr %.0 to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.as
  %helper_info_sdiv64.helper_info_udiv64 = select i1 %1, ptr @helper_info_sdiv64, ptr @helper_info_udiv64 ; 2 uses
  %i.au = load ptr, ptr %helper_info_sdiv64.helper_info_udiv64, align 8
  tail call void @tcg_gen_call2(ptr noundef %i.au, ptr noundef nonnull %helper_info_sdiv64.helper_info_udiv64, ptr noundef %i.ap, ptr noundef %i.ar, ptr noundef %i.at) #14
  %i.av = load i32, ptr %i.g, align 4
  %.not = icmp eq i32 %i.av, 0
  br i1 %.not, label %bb.r, label %bb.s

bb.r:                                             ; preds = %read_cpu_reg.exit33
  tail call void @tcg_gen_ext32u_i64(ptr noundef %.0.i, ptr noundef %.0.i) #14
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %read_cpu_reg.exit33
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @gen_rev32(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  tail call void @tcg_gen_bswap64_i64(ptr noundef %0, ptr noundef %1) #14
  tail call void @tcg_gen_rotri_i64(ptr noundef %0, ptr noundef %0, i64 noundef 32) #14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @gen_rev_32(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  tail call void @tcg_gen_bswap32_i64(ptr noundef %0, ptr noundef %1, i32 noundef 2) #14
  ret void
}

declare void @tcg_gen_bswap64_i64(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @tcg_gen_rotri_i64(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @tcg_gen_bswap32_i64(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @gen_ctz64(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  tail call void @tcg_gen_ctzi_i64(ptr noundef %0, ptr noundef %1, i64 noundef 64) #14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @gen_ctz32(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @tcg_temp_new_i32() #14    ; 4 uses
  tail call void @tcg_gen_extrl_i64_i32(ptr noundef %i.a, ptr noundef %1) #14
  tail call void @tcg_gen_ctzi_i32(ptr noundef %i.a, ptr noundef %i.a, i32 noundef 32) #14
  tail call void @tcg_gen_extu_i32_i64(ptr noundef %0, ptr noundef %i.a) #14
  ret void
}

declare void @tcg_gen_ctzi_i64(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @tcg_gen_ctzi_i32(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @tcg_gen_ctpop_i64(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_cnt32(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @tcg_temp_new_i32() #14    ; 4 uses
  tail call void @tcg_gen_extrl_i64_i32(ptr noundef %i.a, ptr noundef %1) #14
  tail call void @tcg_gen_ctpop_i32(ptr noundef %i.a, ptr noundef %i.a) #14, !callees !19, !inline_history !20
  tail call void @tcg_gen_extu_i32_i64(ptr noundef %0, ptr noundef %i.a) #14
  ret void
}

declare void @tcg_gen_ctpop_i32(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @do_muladd(ptr nofree noundef nonnull readonly captures(none) %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i32 noundef range(i32 2, 11) %3) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4                ; 2 uses
  %i.b = icmp eq i32 %i.a, 31
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.c, i64 noundef 0) #14
  br label %cpu_reg.exit

bb.c:                                             ; preds = %bb.a
  %i.d = sext i32 %i.a to i64
  %i.e = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8
  br label %cpu_reg.exit

cpu_reg.exit:                                     ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.f, %bb.c ] ; 5 uses
  %i.g = icmp eq i32 %3, 3
  br i1 %i.g, label %bb.d, label %bb.i

bb.d:                                             ; preds = %cpu_reg.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = load i32, ptr %i.h, align 4              ; 2 uses
  %i.j = icmp eq i32 %i.i, 31
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.k, i64 noundef 0) #14
  br label %cpu_reg.exit38

bb.f:                                             ; preds = %bb.d
  %i.l = sext i32 %i.i to i64
  %i.m = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8
  br label %cpu_reg.exit38

cpu_reg.exit38:                                   ; preds = %bb.e, %bb.f
  %.0.i37 = phi ptr [ %i.k, %bb.e ], [ %i.n, %bb.f ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i32, ptr %i.o, align 4              ; 2 uses
  %i.q = icmp eq i32 %i.p, 31
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %cpu_reg.exit38
  %i.r = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.r, i64 noundef 0) #14
  br label %cpu_reg.exit40

bb.h:                                             ; preds = %cpu_reg.exit38
  %i.s = sext i32 %i.p to i64
  %i.t = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8
  br label %cpu_reg.exit40

bb.i:                                             ; preds = %cpu_reg.exit
  %i.v = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  %i.w = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.y = load i32, ptr %i.x, align 4              ; 2 uses
  %i.z = icmp eq i32 %i.y, 31
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aa = tail call ptr @tcg_temp_new_i64() #14   ; 2 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.aa, i64 noundef 0) #14
  br label %cpu_reg.exit42

bb.k:                                             ; preds = %bb.i
  %i.ab = sext i32 %i.y to i64
  %i.ac = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8
  br label %cpu_reg.exit42

cpu_reg.exit42:                                   ; preds = %bb.j, %bb.k
  %.0.i41 = phi ptr [ %i.aa, %bb.j ], [ %i.ad, %bb.k ]
  tail call void @tcg_gen_ext_i64(ptr noundef %i.v, ptr noundef %.0.i41, i32 noundef %3) #14
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i32, ptr %i.ae, align 4            ; 2 uses
  %i.ag = icmp eq i32 %i.af, 31
  br i1 %i.ag, label %bb.l, label %bb.m

bb.l:                                             ; preds = %cpu_reg.exit42
  %i.ah = tail call ptr @tcg_temp_new_i64() #14   ; 2 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.ah, i64 noundef 0) #14
  br label %cpu_reg.exit44

bb.m:                                             ; preds = %cpu_reg.exit42
  %i.ai = sext i32 %i.af to i64
  %i.aj = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8
  br label %cpu_reg.exit44

cpu_reg.exit44:                                   ; preds = %bb.l, %bb.m
  %.0.i43 = phi ptr [ %i.ah, %bb.l ], [ %i.ak, %bb.m ]
  tail call void @tcg_gen_ext_i64(ptr noundef %i.w, ptr noundef %.0.i43, i32 noundef %3) #14
  br label %cpu_reg.exit40

cpu_reg.exit40:                                   ; preds = %bb.h, %bb.g, %cpu_reg.exit44
  %.035 = phi ptr [ %i.v, %cpu_reg.exit44 ], [ %.0.i37, %bb.g ], [ %.0.i37, %bb.h ] ; 2 uses
  %.0 = phi ptr [ %i.w, %cpu_reg.exit44 ], [ %i.r, %bb.g ], [ %i.u, %bb.h ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4
  %i.an = icmp ne i32 %i.am, 31
  %or.cond = or i1 %2, %i.an
  br i1 %or.cond, label %bb.o, label %bb.n

bb.n:                                             ; preds = %cpu_reg.exit40
  tail call void @tcg_gen_mul_i64(ptr noundef %.0.i, ptr noundef %.035, ptr noundef %.0) #14
  br label %bb.t

bb.o:                                             ; preds = %cpu_reg.exit40
  %i.ao = tail call ptr @tcg_temp_new_i64() #14   ; 3 uses
  %i.ap = load i32, ptr %i.al, align 4            ; 2 uses
  %i.aq = icmp eq i32 %i.ap, 31
  br i1 %i.aq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ar = tail call ptr @tcg_temp_new_i64() #14   ; 2 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.ar, i64 noundef 0) #14
  br label %cpu_reg.exit46

bb.q:                                             ; preds = %bb.o
  %i.as = sext i32 %i.ap to i64
  %i.at = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8
  br label %cpu_reg.exit46

cpu_reg.exit46:                                   ; preds = %bb.p, %bb.q
  %.0.i45 = phi ptr [ %i.ar, %bb.p ], [ %i.au, %bb.q ] ; 2 uses
  tail call void @tcg_gen_mul_i64(ptr noundef %i.ao, ptr noundef %.035, ptr noundef %.0) #14
  br i1 %2, label %bb.r, label %bb.s

bb.r:                                             ; preds = %cpu_reg.exit46
  tail call void @tcg_gen_sub_i64(ptr noundef %.0.i, ptr noundef %.0.i45, ptr noundef %i.ao) #14
  br label %bb.t

bb.s:                                             ; preds = %cpu_reg.exit46
  tail call void @tcg_gen_add_i64(ptr noundef %.0.i, ptr noundef %.0.i45, ptr noundef %i.ao) #14
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.n
  br i1 %1, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @tcg_gen_ext32u_i64(ptr noundef %.0.i, ptr noundef %.0.i) #14
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  ret void
}

declare void @tcg_gen_muls2_i64(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @tcg_gen_mulu2_i64(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @op_addr_ldst_imm_pre(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr nofree noundef nonnull captures(none) initializes((0, 8)) %3, i64 noundef range(i64 -2147483648, 2147483648) %4, i1 noundef zeroext %5, i32 noundef %6) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = tail call ptr @tcg_temp_new_i64() #14    ; 4 uses
  %i.d = sext i32 %i.b to i64
  %i.e = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8
  tail call void @tcg_gen_mov_i64(ptr noundef %i.c, ptr noundef %i.f) #14
  store ptr %i.c, ptr %3, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i32, ptr %i.g, align 4
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.c
end_hunk_4
