Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/translate-sve?download=true
inline.NumInlined: 12920
inline.NumDeleted: 403
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@trans_FACGT_ppzz:bb.a
  %i.f = and i64 %.val2.i, 64424509440
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %do_fp_cmp.exit, label %isar_feature_aa64_sme_or_sve.exit.thread

isar_feature_aa64_sme_or_sve.exit.thread:         ; preds = %bb.a, %isar_feature_aa64_sme_or_sve.exit
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds [8 x i8], ptr @facgt_fns, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8
  %.not6 = icmp eq i32 %i.h, 0
  br i1 %.not6, label %do_fp_cmp.exit, label %bb.b

bb.b:                                             ; preds = %isar_feature_aa64_sme_or_sve.exit.thread
  %i.l = tail call zeroext i1 @sve_access_check(ptr noundef nonnull %0) #9
  br i1 %i.l, label %bb.c, label %do_fp_cmp.exit

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %0, i64 220
  %.val.i5 = load i32, ptr %i.m, align 4          ; 2 uses
  %i.n = load i32, ptr %i.g, align 4
  %i.o = icmp eq i32 %i.n, 1
  %i.p = tail call ptr @tcg_temp_new_ptr() #9     ; 2 uses
  %narrow.i.i = select i1 %i.o, i64 12792, i64 12776
  %i.q = load ptr, ptr @tcg_env, align 8
  tail call void @tcg_gen_addi_i64(ptr noundef %i.p, ptr noundef %i.q, i64 noundef range(i64 -2147483648, 2147483648) %narrow.i.i) #9
  %i.r = load i32, ptr %1, align 4
  %i.s = shl i32 %i.r, 5
  %i.t = add i32 %i.s, 12080
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i32, ptr %i.u, align 4
  %i.w = shl i32 %i.v, 8
  %i.x = add i32 %i.w, 3888
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = shl i32 %i.z, 8
  %i.ab = add i32 %i.aa, 3888
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = shl i32 %i.ad, 5
  %i.af = add i32 %i.ae, 12080
  tail call void @tcg_gen_gvec_4_ptr(i32 noundef %i.t, i32 noundef %i.x, i32 noundef %i.ab, i32 noundef %i.af, ptr noundef %i.p, i32 noundef %.val.i5, i32 noundef %.val.i5, i32 noundef 0, ptr noundef nonnull %i.k) #9
  br label %do_fp_cmp.exit

do_fp_cmp.exit:                                   ; preds = %bb.c, %bb.b, %isar_feature_aa64_sme_or_sve.exit.thread, %isar_feature_aa64_sme_or_sve.exit
  %i.ag = phi i1 [ false, %isar_feature_aa64_sme_or_sve.exit ], [ false, %isar_feature_aa64_sme_or_sve.exit.thread ], [ true, %bb.b ], [ true, %bb.c ]
  ret i1 %i.ag
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @trans_FMLA_zpzzz(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 40
  %.val.i = load i64, ptr %i.c, align 8
  %i.d = and i64 %.val.i, 251658240
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %isar_feature_aa64_sme_or_sve.exit, label %isar_feature_aa64_sme_or_sve.exit.thread

isar_feature_aa64_sme_or_sve.exit:                ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 32
  %.val2.i = load i64, ptr %i.e, align 8
  %i.f = and i64 %.val2.i, 64424509440
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.b, label %isar_feature_aa64_sme_or_sve.exit.thread

isar_feature_aa64_sme_or_sve.exit.thread:         ; preds = %bb.a, %isar_feature_aa64_sme_or_sve.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 315
  %i.h = load i8, ptr %i.g, align 1, !range !15, !noundef !16
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = load i32, ptr %i.j, align 4
  %i.l = sext i32 %i.k to i64
  %fmla_zpzzz_ah_fns.fmla_zpzzz_fns = select i1 %i.i, ptr @fmla_zpzzz_fns, ptr @fmla_zpzzz_fns
  %i.m = getelementptr inbounds [8 x i8], ptr %fmla_zpzzz_ah_fns.fmla_zpzzz_fns, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call fastcc zeroext i1 @do_fmla_zpzzz(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %i.n)
  br label %bb.b

bb.b:                                             ; preds = %isar_feature_aa64_sme_or_sve.exit.thread, %isar_feature_aa64_sme_or_sve.exit
  %i.p = phi i1 [ false, %isar_feature_aa64_sme_or_sve.exit ], [ %i.o, %isar_feature_aa64_sme_or_sve.exit.thread ]
  ret i1 %i.p
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @trans_FMLS_zpzzz(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 40
  %.val.i = load i64, ptr %i.c, align 8
  %i.d = and i64 %.val.i, 251658240
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %isar_feature_aa64_sme_or_sve.exit, label %isar_feature_aa64_sme_or_sve.exit.thread

isar_feature_aa64_sme_or_sve.exit:                ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 32
  %.val2.i = load i64, ptr %i.e, align 8
  %i.f = and i64 %.val2.i, 64424509440
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.b, label %isar_feature_aa64_sme_or_sve.exit.thread

isar_feature_aa64_sme_or_sve.exit.thread:         ; preds = %bb.a, %isar_feature_aa64_sme_or_sve.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 315
  %i.h = load i8, ptr %i.g, align 1, !range !15, !noundef !16
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = load i32, ptr %i.j, align 4
  %i.l = sext i32 %i.k to i64
  %fmls_zpzzz_ah_fns.fmls_zpzzz_fns = select i1 %i.i, ptr @fmls_zpzzz_ah_fns, ptr @fmls_zpzzz_fns
  %i.m = getelementptr inbounds [8 x i8], ptr %fmls_zpzzz_ah_fns.fmls_zpzzz_fns, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call fastcc zeroext i1 @do_fmla_zpzzz(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %i.n)
  br label %bb.b

bb.b:                                             ; preds = %isar_feature_aa64_sme_or_sve.exit.thread, %isar_feature_aa64_sme_or_sve.exit
  %i.p = phi i1 [ false, %isar_feature_aa64_sme_or_sve.exit ], [ %i.o, %isar_feature_aa64_sme_or_sve.exit.thread ]
  ret i1 %i.p
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @trans_FNMLA_zpzzz(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 40
  %.val.i = load i64, ptr %i.c, align 8
  %i.d = and i64 %.val.i, 251658240
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %isar_feature_aa64_sme_or_sve.exit, label %isar_feature_aa64_sme_or_sve.exit.thread

isar_feature_aa64_sme_or_sve.exit:                ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 32
  %.val2.i = load i64, ptr %i.e, align 8
  %i.f = and i64 %.val2.i, 64424509440
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.b, label %isar_feature_aa64_sme_or_sve.exit.thread

isar_feature_aa64_sme_or_sve.exit.thread:         ; preds = %bb.a, %isar_feature_aa64_sme_or_sve.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 315
  %i.h = load i8, ptr %i.g, align 1, !range !15, !noundef !16
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = load i32, ptr %i.j, align 4
  %i.l = sext i32 %i.k to i64
  %fnmla_zpzzz_ah_fns.fnmla_zpzzz_fns = select i1 %i.i, ptr @fnmla_zpzzz_ah_fns, ptr @fnmla_zpzzz_fns
  %i.m = getelementptr inbounds [8 x i8], ptr %fnmla_zpzzz_ah_fns.fnmla_zpzzz_fns, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call fastcc zeroext i1 @do_fmla_zpzzz(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %i.n)
  br label %bb.b

bb.b:                                             ; preds = %isar_feature_aa64_sme_or_sve.exit.thread, %isar_feature_aa64_sme_or_sve.exit
  %i.p = phi i1 [ false, %isar_feature_aa64_sme_or_sve.exit ], [ %i.o, %isar_feature_aa64_sme_or_sve.exit.thread ]
  ret i1 %i.p
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @trans_FNMLS_zpzzz(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 40
  %.val.i = load i64, ptr %i.c, align 8
  %i.d = and i64 %.val.i, 251658240
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %isar_feature_aa64_sme_or_sve.exit, label %isar_feature_aa64_sme_or_sve.exit.thread

isar_feature_aa64_sme_or_sve.exit:                ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 32
  %.val2.i = load i64, ptr %i.e, align 8
  %i.f = and i64 %.val2.i, 64424509440
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.b, label %isar_feature_aa64_sme_or_sve.exit.thread

isar_feature_aa64_sme_or_sve.exit.thread:         ; preds = %bb.a, %isar_feature_aa64_sme_or_sve.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 315
  %i.h = load i8, ptr %i.g, align 1, !range !15, !noundef !16
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = load i32, ptr %i.j, align 4
  %i.l = sext i32 %i.k to i64
  %fnmls_zpzzz_ah_fns.fnmls_zpzzz_fns = select i1 %i.i, ptr @fnmls_zpzzz_ah_fns, ptr @fnmls_zpzzz_fns
  %i.m = getelementptr inbounds [8 x i8], ptr %fnmls_zpzzz_ah_fns.fnmls_zpzzz_fns, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call fastcc zeroext i1 @do_fmla_zpzzz(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %i.n)
  br label %bb.b

bb.b:                                             ; preds = %isar_feature_aa64_sme_or_sve.exit.thread, %isar_feature_aa64_sme_or_sve.exit
  %i.p = phi i1 [ false, %isar_feature_aa64_sme_or_sve.exit ], [ %i.o, %isar_feature_aa64_sme_or_sve.exit.thread ]
  ret i1 %i.p
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @trans_LD1_zprz(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp eq i32 %i.b, 16                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.e = load i8, ptr %i.d, align 4, !range !15, !noundef !16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %i.g, i64 32
  %.val = load i64, ptr %i.h, align 8
  %i.i = and i64 %.val, 64424509440
  %i.j = icmp ne i64 %i.i, 0                      ; 2 uses
  br i1 %i.j, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 303
  store i8 1, ptr %i.k, align 1
  %i.l = tail call zeroext i1 @sve_access_check(ptr noundef nonnull %0) #9
  br i1 %i.l, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i32, ptr %i.m, align 4
  switch i32 %i.n, label %bb.f [
    i32 2, label %bb.d
    i32 3, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %2 = zext nneg i8 %i.e to i64
  %i.o = getelementptr inbounds nuw [384 x i8], ptr @gather_load_fn32, i64 %2
  %i.p = zext i1 %i.c to i64
  %i.q = getelementptr inbounds nuw [192 x i8], ptr %i.o, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.s = load i32, ptr %i.r, align 4
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [96 x i8], ptr %i.q, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = load i32, ptr %i.v, align 4
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds [48 x i8], ptr %i.u, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [24 x i8], ptr %i.y, i64 %i.ab
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %3 = zext nneg i8 %i.e to i64
  %i.ad = getelementptr inbounds nuw [768 x i8], ptr @gather_load_fn64, i64 %3
  %i.ae = zext i1 %i.c to i64
  %i.af = getelementptr inbounds nuw [384 x i8], ptr %i.ad, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [192 x i8], ptr %i.af, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [64 x i8], ptr %i.aj, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [32 x i8], ptr %i.an, i64 %i.aq
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 6582, ptr noundef nonnull @__func__.trans_LD1_zprz, ptr noundef null) #10
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sink = phi ptr [ %i.ar, %bb.e ], [ %i.ac, %bb.d ]
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.at = load i32, ptr %i.as, align 4            ; 2 uses
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %.sink, i64 %i.au
  %.031 = load ptr, ptr %i.av, align 8            ; 2 uses
  %.not = icmp eq ptr %.031, null
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @__assert_fail(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str, i32 noundef 6584, ptr noundef nonnull @__PRETTY_FUNCTION__.trans_LD1_zprz) #10
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.aw = load i32, ptr %1, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.be = mul i32 %i.at, %i.bc
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = tail call ptr @cpu_reg_sp(ptr noundef nonnull %0, i32 noundef %i.bg) #9
  %i.bi = load i32, ptr %i.bd, align 4
  tail call fastcc void @do_mem_zpz(ptr noundef nonnull %0, i32 noundef %i.aw, i32 noundef %i.ay, i32 noundef %i.ba, i32 noundef %i.be, ptr noundef %i.bh, i32 noundef %i.bi, i1 noundef zeroext false, ptr noundef nonnull %.031)
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.a, %bb.i
  ret i1 %i.j
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @trans_LDR_pri(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 40
  %.val.i = load i64, ptr %i.c, align 8
  %i.d = and i64 %.val.i, 251658240
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %isar_feature_aa64_sme_or_sve.exit, label %isar_feature_aa64_sme_or_sve.exit.thread

isar_feature_aa64_sme_or_sve.exit:                ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 32
  %.val2.i = load i64, ptr %i.e, align 8
  %i.f = and i64 %.val2.i, 64424509440
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.c, label %isar_feature_aa64_sme_or_sve.exit.thread

isar_feature_aa64_sme_or_sve.exit.thread:         ; preds = %bb.a, %isar_feature_aa64_sme_or_sve.exit
  %i.g = tail call zeroext i1 @sve_access_check(ptr noundef nonnull %0) #9
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %isar_feature_aa64_sme_or_sve.exit.thread
  %i.h = getelementptr i8, ptr %0, i64 220
  %.val = load i32, ptr %i.h, align 4
  %i.i = ashr i32 %.val, 3                        ; 2 uses
  %i.j = load i32, ptr %1, align 4
  %i.k = shl i32 %i.j, 5
  %i.l = add i32 %i.k, 12080
  %i.m = load ptr, ptr @tcg_env, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.o = load i32, ptr %i.n, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i32, ptr %i.p, align 4
  %i.r = mul i32 %i.q, %i.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 298
  %i.t = load i8, ptr %i.s, align 2, !range !15, !noundef !16
  %i.u = shl nuw nsw i8 %i.t, 5
  %i.v = zext nneg i8 %i.u to i32
  tail call void @gen_sve_ldr(ptr noundef nonnull %0, ptr noundef %i.m, i32 noundef %i.l, i32 noundef %i.i, i32 noundef %i.o, i32 noundef %i.r, i32 noundef %i.v)
  br label %bb.c

bb.c:                                             ; preds = %isar_feature_aa64_sme_or_sve.exit.thread, %bb.b, %isar_feature_aa64_sme_or_sve.exit
  %i.w = phi i1 [ true, %isar_feature_aa64_sme_or_sve.exit.thread ], [ true, %bb.b ], [ false, %isar_feature_aa64_sme_or_sve.exit ]
  ret i1 %i.w
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @trans_LDR_zri(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 40
  %.val.i = load i64, ptr %i.c, align 8
  %i.d = and i64 %.val.i, 251658240
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %isar_feature_aa64_sme_or_sve.exit, label %isar_feature_aa64_sme_or_sve.exit.thread

isar_feature_aa64_sme_or_sve.exit:                ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 32
  %.val2.i = load i64, ptr %i.e, align 8
  %i.f = and i64 %.val2.i, 64424509440
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.c, label %isar_feature_aa64_sme_or_sve.exit.thread

isar_feature_aa64_sme_or_sve.exit.thread:         ; preds = %bb.a, %isar_feature_aa64_sme_or_sve.exit
  %i.g = tail call zeroext i1 @sve_access_check(ptr noundef nonnull %0) #9
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %isar_feature_aa64_sme_or_sve.exit.thread
  %i.h = getelementptr i8, ptr %0, i64 220
  %.val = load i32, ptr %i.h, align 4             ; 2 uses
  %i.i = load i32, ptr %1, align 4
  %i.j = shl i32 %i.i, 8
  %i.k = add i32 %i.j, 3888
  %i.l = load ptr, ptr @tcg_env, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.n = load i32, ptr %i.m, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i32, ptr %i.o, align 4
  %i.q = mul i32 %i.p, %.val
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 298
  %i.s = load i8, ptr %i.r, align 2, !range !15, !noundef !16
  %i.t = shl nuw i8 %i.s, 7
  %i.u = zext i8 %i.t to i32
  tail call void @gen_sve_ldr(ptr noundef nonnull %0, ptr noundef %i.l, i32 noundef %i.k, i32 noundef %.val, i32 noundef %i.n, i32 noundef %i.q, i32 noundef %i.u)
  br label %bb.c

bb.c:                                             ; preds = %isar_feature_aa64_sme_or_sve.exit.thread, %bb.b, %isar_feature_aa64_sme_or_sve.exit
  %i.v = phi i1 [ true, %isar_feature_aa64_sme_or_sve.exit.thread ], [ true, %bb.b ], [ false, %isar_feature_aa64_sme_or_sve.exit ]
  ret i1 %i.v
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @trans_PRF(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 40
  %.val.i = load i64, ptr %i.c, align 8
  %i.d = and i64 %.val.i, 251658240
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %isar_feature_aa64_sme_or_sve.exit, label %isar_feature_aa64_sme_or_sve.exit.thread

isar_feature_aa64_sme_or_sve.exit:                ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 32
  %.val2.i = load i64, ptr %i.e, align 8
  %i.f = and i64 %.val2.i, 64424509440
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.b, label %isar_feature_aa64_sme_or_sve.exit.thread

isar_feature_aa64_sme_or_sve.exit.thread:         ; preds = %bb.a, %isar_feature_aa64_sme_or_sve.exit
  %i.g = tail call zeroext i1 @sve_access_check(ptr noundef nonnull %0) #9 ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %isar_feature_aa64_sme_or_sve.exit, %isar_feature_aa64_sme_or_sve.exit.thread
  %i.h = phi i1 [ false, %isar_feature_aa64_sme_or_sve.exit ], [ true, %isar_feature_aa64_sme_or_sve.exit.thread ]
  ret i1 %i.h
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @trans_LDNT1_zprz(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp eq i32 %i.b, 16                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.e = load i8, ptr %i.d, align 4, !range !15, !noundef !16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.k = load i32, ptr %i.j, align 4
  %.not = icmp eq i32 %i.k, 0
  %i.l = zext i1 %.not to i32
  %i.m = add i32 %i.i, %i.l
  %i.n = icmp slt i32 %i.g, %i.m
  br i1 %i.n, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr i8, ptr %i.p, i64 360
  %.val = load i64, ptr %i.q, align 8
  %i.r = and i64 %.val, 15
  %.not32 = icmp eq i64 %i.r, 0
  br i1 %.not32, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 303
  store i8 1, ptr %i.s, align 1
  %i.t = tail call zeroext i1 @sve_access_check(ptr noundef nonnull %0) #9
  br i1 %i.t, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.u = load i32, ptr %i.f, align 4
  switch i32 %i.u, label %.thread [
    i32 2, label %bb.e
    i32 3, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %2 = zext nneg i8 %i.e to i64
  %i.v = getelementptr inbounds nuw [384 x i8], ptr @gather_load_fn32, i64 %2
  %i.w = zext i1 %i.c to i64
  %i.x = getelementptr inbounds nuw [192 x i8], ptr %i.v, i64 %i.w
  %i.y = load i32, ptr %i.j, align 4
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [24 x i8], ptr %i.x, i64 %i.z
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %3 = zext nneg i8 %i.e to i64
  %i.ab = getelementptr inbounds nuw [768 x i8], ptr @gather_load_fn64, i64 %3
  %i.ac = zext i1 %i.c to i64
  %i.ad = getelementptr inbounds nuw [384 x i8], ptr %i.ab, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 128
  %i.af = load i32, ptr %i.j, align 4
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [32 x i8], ptr %i.ae, i64 %i.ag
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink = phi ptr [ %i.ah, %bb.f ], [ %i.aa, %bb.e ]
  %i.ai = load i32, ptr %i.h, align 4
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [8 x i8], ptr %.sink, i64 %i.aj
  %.028 = load ptr, ptr %i.ak, align 8            ; 2 uses
  %.not29 = icmp eq ptr %.028, null
  br i1 %.not29, label %.thread, label %bb.h

.thread:                                          ; preds = %bb.d, %bb.g
  tail call void @__assert_fail(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str, i32 noundef 6677, ptr noundef nonnull @__PRETTY_FUNCTION__.trans_LDNT1_zprz) #10
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.al = load i32, ptr %1, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = tail call ptr @cpu_reg(ptr noundef nonnull %0, i32 noundef %i.ar) #9
  %i.at = load i32, ptr %i.h, align 4
  tail call fastcc void @do_mem_zpz(ptr noundef nonnull %0, i32 noundef %i.al, i32 noundef %i.an, i32 noundef %i.ap, i32 noundef 0, ptr noundef %i.as, i32 noundef %i.at, i1 noundef zeroext false, ptr noundef nonnull %.028)
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.h
  %.0 = phi i1 [ false, %bb.a ], [ true, %bb.h ], [ false, %bb.b ], [ true, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @trans_PRF_rr(ptr noundef %0, i32 %.0.val) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %.0.val, 31
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 40
  %.val.i = load i64, ptr %i.d, align 8
  %i.e = and i64 %.val.i, 251658240
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %isar_feature_aa64_sme_or_sve.exit, label %isar_feature_aa64_sme_or_sve.exit.thread

isar_feature_aa64_sme_or_sve.exit:                ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.c, i64 32
  %.val2.i = load i64, ptr %i.f, align 8
  %i.g = and i64 %.val2.i, 64424509440
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.c, label %isar_feature_aa64_sme_or_sve.exit.thread

isar_feature_aa64_sme_or_sve.exit.thread:         ; preds = %bb.b, %isar_feature_aa64_sme_or_sve.exit
  %i.h = tail call zeroext i1 @sve_access_check(ptr noundef nonnull %0) #9 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %isar_feature_aa64_sme_or_sve.exit, %isar_feature_aa64_sme_or_sve.exit.thread
  %.0 = phi i1 [ true, %isar_feature_aa64_sme_or_sve.exit.thread ], [ false, %isar_feature_aa64_sme_or_sve.exit ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @trans_LD1_zpiz(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp eq i32 %i.b, 16                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.e = load i8, ptr %i.d, align 4, !range !15, !noundef !16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4              ; 2 uses
  %i.j = icmp slt i32 %i.g, %i.i
  br i1 %i.j, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = icmp eq i32 %i.g, %i.i
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load i32, ptr %i.l, align 4
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr i8, ptr %i.o, i64 32
  %.val = load i64, ptr %i.p, align 8
  %i.q = and i64 %.val, 64424509440
  %.not38 = icmp eq i64 %i.q, 0
  br i1 %.not38, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 303
  store i8 1, ptr %i.r, align 1
  %i.s = tail call zeroext i1 @sve_access_check(ptr noundef nonnull %0) #9
  br i1 %i.s, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.t = load i32, ptr %i.f, align 4
  switch i32 %i.t, label %.thread [
    i32 2, label %bb.g
    i32 3, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %2 = zext nneg i8 %i.e to i64
  %i.u = getelementptr inbounds nuw [384 x i8], ptr @gather_load_fn32, i64 %2
  %i.v = zext i1 %i.c to i64
  %i.w = getelementptr inbounds nuw [192 x i8], ptr %i.u, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.y = load i32, ptr %i.x, align 4
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [96 x i8], ptr %i.w, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [24 x i8], ptr %i.aa, i64 %i.ad
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %3 = zext nneg i8 %i.e to i64
  %i.af = getelementptr inbounds nuw [768 x i8], ptr @gather_load_fn64, i64 %3
  %i.ag = zext i1 %i.c to i64
  %i.ah = getelementptr inbounds nuw [384 x i8], ptr %i.af, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [192 x i8], ptr %i.ah, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 128
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [32 x i8], ptr %i.am, i64 %i.ap
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sink = phi ptr [ %i.aq, %bb.h ], [ %i.ae, %bb.g ]
  %i.ar = load i32, ptr %i.h, align 4             ; 2 uses
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [8 x i8], ptr %.sink, i64 %i.as
  %.032 = load ptr, ptr %i.at, align 8            ; 2 uses
  %.not35 = icmp eq ptr %.032, null
  br i1 %.not35, label %.thread, label %bb.j

.thread:                                          ; preds = %bb.f, %bb.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str, i32 noundef 6642, ptr noundef nonnull @__PRETTY_FUNCTION__.trans_LD1_zpiz) #10
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.au = load i32, ptr %1, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = shl i32 %i.ba, %i.ar
  %i.bc = sext i32 %i.bb to i64
  %i.bd = tail call ptr @tcg_constant_i64(i64 noundef %i.bc) #9
  %i.be = load i32, ptr %i.h, align 4
  tail call fastcc void @do_mem_zpz(ptr noundef nonnull %0, i32 noundef %i.au, i32 noundef %i.aw, i32 noundef %i.ay, i32 noundef 0, ptr noundef %i.bd, i32 noundef %i.be, i1 noundef zeroext false, ptr noundef nonnull %.032)
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.d, %bb.a, %bb.c, %bb.j
  %.0 = phi i1 [ false, %bb.a ], [ true, %bb.j ], [ false, %bb.d ], [ false, %bb.c ], [ true, %bb.e ]
  ret i1 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @trans_LD1_zcrr(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 56
  %.val2.i = load i64, ptr %i.c, align 8
  %i.d = and i64 %.val2.i, 1080863910568919040
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %isar_feature_aa64_sme2_or_sve2p1.exit, label %isar_feature_aa64_sme2_or_sve2p1.exit.thread

isar_feature_aa64_sme2_or_sve2p1.exit:            ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 360
  %.val.i = load i64, ptr %i.e, align 8
  %i.f = and i64 %.val.i, 14
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.b, label %isar_feature_aa64_sme2_or_sve2p1.exit.thread

isar_feature_aa64_sme2_or_sve2p1.exit.thread:     ; preds = %bb.a, %isar_feature_aa64_sme2_or_sve2p1.exit
  %i.g = tail call ptr @tcg_temp_new_i64() #9     ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4
  %i.j = tail call ptr @cpu_reg(ptr noundef nonnull %0, i32 noundef %i.i) #9
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4
  %i.m = sext i32 %i.l to i64
  tail call void @tcg_gen_shli_i64(ptr noundef %i.g, ptr noundef %i.j, i64 noundef %i.m) #9
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i32, ptr %i.n, align 4
  %i.p = tail call ptr @cpu_reg_sp(ptr noundef nonnull %0, i32 noundef %i.o) #9
  tail call void @tcg_gen_add_i64(ptr noundef %i.g, ptr noundef %i.g, ptr noundef %i.p) #9
  %i.q = load i32, ptr %1, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.s = load i32, ptr %i.r, align 4
  %i.t = load i32, ptr %i.k, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.v = load i32, ptr %i.u, align 4
  %i.w = tail call fastcc noundef zeroext i1 @gen_ldst_c(ptr noundef nonnull %0, ptr noundef %i.g, i32 noundef %i.q, i32 noundef %i.s, i32 noundef %i.t, i1 noundef zeroext false, i32 noundef %i.v, i1 noundef zeroext false)
  br label %bb.b

bb.b:                                             ; preds = %isar_feature_aa64_sme2_or_sve2p1.exit.thread, %isar_feature_aa64_sme2_or_sve2p1.exit
  %i.x = phi i1 [ false, %isar_feature_aa64_sme2_or_sve2p1.exit ], [ %i.w, %isar_feature_aa64_sme2_or_sve2p1.exit.thread ]
  ret i1 %i.x
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @trans_ST1_zcrr(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 56
  %.val2.i = load i64, ptr %i.c, align 8
  %i.d = and i64 %.val2.i, 1080863910568919040
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %isar_feature_aa64_sme2_or_sve2p1.exit, label %isar_feature_aa64_sme2_or_sve2p1.exit.thread

isar_feature_aa64_sme2_or_sve2p1.exit:            ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 360
  %.val.i = load i64, ptr %i.e, align 8
  %i.f = and i64 %.val.i, 14
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.b, label %isar_feature_aa64_sme2_or_sve2p1.exit.thread

isar_feature_aa64_sme2_or_sve2p1.exit.thread:     ; preds = %bb.a, %isar_feature_aa64_sme2_or_sve2p1.exit
  %i.g = tail call ptr @tcg_temp_new_i64() #9     ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4
  %i.j = tail call ptr @cpu_reg(ptr noundef nonnull %0, i32 noundef %i.i) #9
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4
  %i.m = sext i32 %i.l to i64
  tail call void @tcg_gen_shli_i64(ptr noundef %i.g, ptr noundef %i.j, i64 noundef %i.m) #9
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i32, ptr %i.n, align 4
  %i.p = tail call ptr @cpu_reg_sp(ptr noundef nonnull %0, i32 noundef %i.o) #9
  tail call void @tcg_gen_add_i64(ptr noundef %i.g, ptr noundef %i.g, ptr noundef %i.p) #9
  %i.q = load i32, ptr %1, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.s = load i32, ptr %i.r, align 4
  %i.t = load i32, ptr %i.k, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.v = load i32, ptr %i.u, align 4
  %i.w = tail call fastcc noundef zeroext i1 @gen_ldst_c(ptr noundef nonnull %0, ptr noundef %i.g, i32 noundef %i.q, i32 noundef %i.s, i32 noundef %i.t, i1 noundef zeroext true, i32 noundef %i.v, i1 noundef zeroext false)
  br label %bb.b

bb.b:                                             ; preds = %isar_feature_aa64_sme2_or_sve2p1.exit.thread, %isar_feature_aa64_sme2_or_sve2p1.exit
  %i.x = phi i1 [ false, %isar_feature_aa64_sme2_or_sve2p1.exit ], [ %i.w, %isar_feature_aa64_sme2_or_sve2p1.exit.thread ]
  ret i1 %i.x
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @trans_LD1_zcri(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 56
  %.val2.i = load i64, ptr %i.c, align 8
  %i.d = and i64 %.val2.i, 1080863910568919040
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %isar_feature_aa64_sme2_or_sve2p1.exit, label %isar_feature_aa64_sme2_or_sve2p1.exit.thread

isar_feature_aa64_sme2_or_sve2p1.exit:            ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 360
  %.val.i = load i64, ptr %i.e, align 8
  %i.f = and i64 %.val.i, 14
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.b, label %isar_feature_aa64_sme2_or_sve2p1.exit.thread

isar_feature_aa64_sme2_or_sve2p1.exit.thread:     ; preds = %bb.a, %isar_feature_aa64_sme2_or_sve2p1.exit
  %i.g = tail call ptr @tcg_temp_new_i64() #9     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i32, ptr %i.h, align 4
  %i.j = tail call ptr @cpu_reg_sp(ptr noundef nonnull %0, i32 noundef %i.i) #9
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load i32, ptr %i.k, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4
  %i.o = mul i32 %i.n, %i.l
  %i.p = getelementptr i8, ptr %0, i64 220
  %.val.i4 = load i32, ptr %i.p, align 4
  %i.q = mul i32 %i.o, %.val.i4
  %i.r = sext i32 %i.q to i64
  tail call void @tcg_gen_addi_i64(ptr noundef %i.g, ptr noundef %i.j, i64 noundef %i.r) #9
  %i.s = load i32, ptr %1, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.u = load i32, ptr %i.t, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i32, ptr %i.v, align 4
  %i.x = load i32, ptr %i.m, align 4
  %i.y = tail call fastcc noundef zeroext i1 @gen_ldst_c(ptr noundef nonnull %0, ptr noundef %i.g, i32 noundef %i.s, i32 noundef %i.u, i32 noundef %i.w, i1 noundef zeroext false, i32 noundef %i.x, i1 noundef zeroext false)
  br label %bb.b

bb.b:                                             ; preds = %isar_feature_aa64_sme2_or_sve2p1.exit.thread, %isar_feature_aa64_sme2_or_sve2p1.exit
  %i.z = phi i1 [ false, %isar_feature_aa64_sme2_or_sve2p1.exit ], [ %i.y, %isar_feature_aa64_sme2_or_sve2p1.exit.thread ]
  ret i1 %i.z
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @trans_ST1_zcri(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 56
  %.val2.i = load i64, ptr %i.c, align 8
  %i.d = and i64 %.val2.i, 1080863910568919040
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %isar_feature_aa64_sme2_or_sve2p1.exit, label %isar_feature_aa64_sme2_or_sve2p1.exit.thread

isar_feature_aa64_sme2_or_sve2p1.exit:            ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 360
  %.val.i = load i64, ptr %i.e, align 8
  %i.f = and i64 %.val.i, 14
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.b, label %isar_feature_aa64_sme2_or_sve2p1.exit.thread
end_hunk_0
begin_hunk_1_@trans_LDFF1_zprr:bb.a
  %i.ap = getelementptr i8, ptr %0, i64 220
  %.val.i = load i32, ptr %i.ap, align 4          ; 2 uses
  br i1 %i.ao, label %bb.d, label %make_svemte_desc.exit

bb.d:                                             ; preds = %do_mem_zpa.exit.thread, %do_mem_zpa.exit
  %.val.i29 = phi i32 [ %.val.i24, %do_mem_zpa.exit.thread ], [ %.val.i, %do_mem_zpa.exit ]
  %.0.i27 = phi ptr [ %i.h, %do_mem_zpa.exit.thread ], [ %i.an, %do_mem_zpa.exit ]
  %i.aq = getelementptr i8, ptr %0, i64 192
  %.val.i22 = load i32, ptr %i.aq, align 8        ; 2 uses
  %i.ar = and i32 %.val.i22, 30
  %i.as = icmp samesign ult i32 %i.ar, 22
  br i1 %i.as, label %get_mem_index.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7, i32 noundef 1022, ptr noundef nonnull @__PRETTY_FUNCTION__.arm_to_core_mmu_idx) #10
  unreachable

get_mem_index.exit.i:                             ; preds = %bb.d
  %.pn.in.in = getelementptr inbounds [4 x i8], ptr @dtype_mop, i64 %i.ai
  %.pn.in = load i32, ptr %.pn.in.in, align 4
  %.pn = and i32 %.pn.in, 7
  %.in = shl nsw i32 -1, %.pn
  %i.at = xor i32 %.in, -1
  %i.au = and i32 %.val.i22, 15
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 197
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = shl i8 %i.aw, 4
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 198
  %i.az = load i8, ptr %i.ay, align 2
  %i.ba = and i8 %i.ax, 48
  %.masked.i = zext nneg i8 %i.ba to i32
  %i.bb = shl i8 %i.az, 6
  %i.bc = zext i8 %i.bb to i32
  %i.bd = shl nuw nsw i32 %i.at, 14
  %i.be = or disjoint i32 %i.au, %i.bd
  %i.bf = or disjoint i32 %i.be, %.masked.i
  %i.bg = or disjoint i32 %i.bf, %i.bc
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = shl nuw nsw i64 %i.bh, 32
  br label %make_svemte_desc.exit

make_svemte_desc.exit:                            ; preds = %do_mem_zpa.exit, %get_mem_index.exit.i
  %.val.i28 = phi i32 [ %.val.i29, %get_mem_index.exit.i ], [ %.val.i, %do_mem_zpa.exit ] ; 2 uses
  %.0.i26 = phi ptr [ %.0.i27, %get_mem_index.exit.i ], [ %i.an, %do_mem_zpa.exit ]
  %.0.i21 = phi i64 [ %i.bi, %get_mem_index.exit.i ], [ 0, %do_mem_zpa.exit ]
  %i.bj = tail call i32 @simd_desc(i32 noundef %.val.i28, i32 noundef %.val.i28, i32 noundef %i.v) #9
  %i.bk = zext i32 %i.bj to i64
  %i.bl = or disjoint i64 %.0.i21, %i.bk
  %i.bm = tail call ptr @tcg_temp_new_ptr() #9    ; 2 uses
  %i.bn = load ptr, ptr @tcg_env, align 8
  %i.bo = shl i32 %i.x, 5
  %i.bp = add i32 %i.bo, 12080
  %i.bq = sext i32 %i.bp to i64
  tail call void @tcg_gen_addi_i64(ptr noundef %i.bm, ptr noundef %i.bn, i64 noundef range(i64 -2147483648, 2147483648) %i.bq) #9
  %i.br = load ptr, ptr @tcg_env, align 8
  %i.bs = tail call ptr @tcg_constant_i64(i64 noundef %i.bl) #9
  tail call void %i.ak(ptr noundef %i.br, ptr noundef %i.bm, ptr noundef %.0.i26, ptr noundef %i.bs) #9, !inline_history !6
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %make_svemte_desc.exit, %bb.a
  ret i1 %i.e
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @trans_LDNF1_zpri(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 32
  %.val = load i64, ptr %i.c, align 8
  %i.d = and i64 %.val, 64424509440
  %i.e = icmp ne i64 %i.d, 0                      ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 303
  store i8 1, ptr %i.f, align 1
  %i.g = tail call zeroext i1 @sve_access_check(ptr noundef nonnull %0) #9
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %0, i64 220        ; 3 uses
  %.val23 = load i32, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4
  %i.k = sext i32 %i.j to i64                     ; 2 uses
  %i.l = getelementptr inbounds i8, ptr @dtype_esz, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1
  %i.n = zext nneg i8 %i.m to i32
  %i.o = ashr i32 %.val23, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.q = load i32, ptr %i.p, align 4
  %i.r = mul i32 %i.o, %i.q
  %i.s = getelementptr inbounds [4 x i8], ptr @dtype_mop, i64 %i.k
  %i.t = load i32, ptr %i.s, align 4
  %i.u = and i32 %i.t, 7
  %i.v = shl i32 %i.r, %i.u
  %i.w = tail call ptr @tcg_temp_new_i64() #9     ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i32, ptr %i.x, align 4
  %i.z = tail call ptr @cpu_reg_sp(ptr noundef nonnull %0, i32 noundef %i.y) #9
  %i.aa = sext i32 %i.v to i64
  tail call void @tcg_gen_addi_i64(ptr noundef %i.w, ptr noundef %i.z, i64 noundef %i.aa) #9
  %i.ab = load i32, ptr %1, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = load i32, ptr %i.i, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 292 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 4, !range !15, !noundef !16 ; 2 uses
  %i.ah = zext nneg i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [256 x i8], ptr @trans_LDNF1_zpri.fns, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = icmp eq i32 %i.ak, 16
  %i.am = zext i1 %i.al to i64
  %i.an = getelementptr inbounds nuw [128 x i8], ptr %i.ai, i64 %i.am
  %i.ao = sext i32 %i.ae to i64                   ; 2 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = trunc nuw i8 %i.ag to i1
  br i1 %i.ar, label %do_mem_zpa.exit.thread, label %do_mem_zpa.exit

do_mem_zpa.exit.thread:                           ; preds = %bb.c
  %.val.i27 = load i32, ptr %i.h, align 4
  br label %bb.d

do_mem_zpa.exit:                                  ; preds = %bb.c
  %i.as = tail call ptr @clean_data_tbi(ptr noundef nonnull %0, ptr noundef %i.w) #9 ; 2 uses
  %.pre = load i8, ptr %i.af, align 4, !range !15
  %i.at = trunc nuw i8 %.pre to i1
  %.val.i = load i32, ptr %i.h, align 4           ; 2 uses
  br i1 %i.at, label %bb.d, label %make_svemte_desc.exit

bb.d:                                             ; preds = %do_mem_zpa.exit.thread, %do_mem_zpa.exit
  %.val.i32 = phi i32 [ %.val.i27, %do_mem_zpa.exit.thread ], [ %.val.i, %do_mem_zpa.exit ]
  %.0.i30 = phi ptr [ %i.w, %do_mem_zpa.exit.thread ], [ %i.as, %do_mem_zpa.exit ]
  %i.au = getelementptr i8, ptr %0, i64 192
  %.val.i25 = load i32, ptr %i.au, align 8        ; 2 uses
  %i.av = and i32 %.val.i25, 30
  %i.aw = icmp samesign ult i32 %i.av, 22
  br i1 %i.aw, label %get_mem_index.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7, i32 noundef 1022, ptr noundef nonnull @__PRETTY_FUNCTION__.arm_to_core_mmu_idx) #10
  unreachable

get_mem_index.exit.i:                             ; preds = %bb.d
  %.pn.in.in = getelementptr inbounds [4 x i8], ptr @dtype_mop, i64 %i.ao
  %.pn.in = load i32, ptr %.pn.in.in, align 4
  %.pn = and i32 %.pn.in, 7
  %.in = shl nsw i32 -1, %.pn
  %i.ax = xor i32 %.in, -1
  %i.ay = and i32 %.val.i25, 15
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 197
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = shl i8 %i.ba, 4
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 198
  %i.bd = load i8, ptr %i.bc, align 2
  %i.be = and i8 %i.bb, 48
  %.masked.i = zext nneg i8 %i.be to i32
  %i.bf = shl i8 %i.bd, 6
  %i.bg = zext i8 %i.bf to i32
  %i.bh = shl nuw nsw i32 %i.ax, 14
  %i.bi = or disjoint i32 %i.ay, %i.bh
  %i.bj = or disjoint i32 %i.bi, %.masked.i
  %i.bk = or disjoint i32 %i.bj, %i.bg
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = shl nuw nsw i64 %i.bl, 32
  br label %make_svemte_desc.exit

make_svemte_desc.exit:                            ; preds = %do_mem_zpa.exit, %get_mem_index.exit.i
  %.val.i31 = phi i32 [ %.val.i32, %get_mem_index.exit.i ], [ %.val.i, %do_mem_zpa.exit ] ; 2 uses
  %.0.i29 = phi ptr [ %.0.i30, %get_mem_index.exit.i ], [ %i.as, %do_mem_zpa.exit ]
  %.0.i24 = phi i64 [ %i.bm, %get_mem_index.exit.i ], [ 0, %do_mem_zpa.exit ]
  %i.bn = tail call i32 @simd_desc(i32 noundef %.val.i31, i32 noundef %.val.i31, i32 noundef %i.ab) #9
  %i.bo = zext i32 %i.bn to i64
  %i.bp = or disjoint i64 %.0.i24, %i.bo
  %i.bq = tail call ptr @tcg_temp_new_ptr() #9    ; 2 uses
  %i.br = load ptr, ptr @tcg_env, align 8
  %i.bs = shl i32 %i.ad, 5
  %i.bt = add i32 %i.bs, 12080
  %i.bu = sext i32 %i.bt to i64
  tail call void @tcg_gen_addi_i64(ptr noundef %i.bq, ptr noundef %i.br, i64 noundef range(i64 -2147483648, 2147483648) %i.bu) #9
  %i.bv = load ptr, ptr @tcg_env, align 8
  %i.bw = tail call ptr @tcg_constant_i64(i64 noundef %i.bp) #9
  tail call void %i.aq(ptr noundef %i.bv, ptr noundef %i.bq, ptr noundef %.0.i29, ptr noundef %i.bw) #9, !inline_history !6
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %make_svemte_desc.exit, %bb.a
  ret i1 %i.e
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @trans_LD1Q(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp eq i32 %i.b, 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.e = load i8, ptr %i.d, align 4, !range !15, !noundef !16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %i.g, i64 360
  %.val = load i64, ptr %i.h, align 8
  %i.i = and i64 %.val, 14
  %i.j = icmp ne i64 %i.i, 0                      ; 2 uses
  br i1 %i.j, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 303
  store i8 1, ptr %i.k, align 1
  %i.l = tail call zeroext i1 @sve_access_check(ptr noundef nonnull %0) #9
  br i1 %i.l, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %2 = zext nneg i8 %i.e to i64
  %i.m = getelementptr inbounds nuw [16 x i8], ptr @gather_load_fn128, i64 %2
  %i.n = zext i1 %i.c to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str, i32 noundef 6606, ptr noundef nonnull @__PRETTY_FUNCTION__.trans_LD1Q) #10
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.r = load i32, ptr %i.q, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.t = load i32, ptr %i.s, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i32, ptr %i.u, align 4
  %i.w = load i32, ptr %1, align 4
  %i.x = tail call ptr @cpu_reg(ptr noundef nonnull %0, i32 noundef %i.w) #9
  tail call fastcc void @do_mem_zpz(ptr noundef nonnull %0, i32 noundef %i.r, i32 noundef %i.t, i32 noundef %i.v, i32 noundef 0, ptr noundef %i.x, i32 noundef 4, i1 noundef zeroext false, ptr noundef nonnull %i.p)
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.a, %bb.e
  ret i1 %i.j
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @trans_ST_zpri(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = icmp sgt i32 %i.b, %i.d
  br i1 %i.e, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %i.d, label %bb.j [
    i32 0, label %bb.c
    i32 1, label %bb.c
    i32 2, label %bb.c
    i32 3, label %bb.c
    i32 4, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 40
  %.val.i = load i64, ptr %i.h, align 8
  %i.i = and i64 %.val.i, 251658240
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %isar_feature_aa64_sme_or_sve.exit, label %isar_feature_aa64_sme_or_sve.exit.thread

isar_feature_aa64_sme_or_sve.exit:                ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.g, i64 32
  %.val2.i = load i64, ptr %i.j, align 8
  %i.k = and i64 %.val2.i, 64424509440
  %.not41 = icmp eq i64 %i.k, 0
  br i1 %.not41, label %bb.l, label %isar_feature_aa64_sme_or_sve.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load i32, ptr %i.l, align 4
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.o = icmp slt i32 %i.b, 4
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str, i32 noundef 6176, ptr noundef nonnull @__PRETTY_FUNCTION__.trans_ST_zpri) #10
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr i8, ptr %i.q, i64 360
  %.val36 = load i64, ptr %i.r, align 8
  %i.s = and i64 %.val36, 14
  %.not40 = icmp eq i64 %i.s, 0
  br i1 %.not40, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 303
  store i8 1, ptr %i.t, align 1
  br label %isar_feature_aa64_sme_or_sve.exit.thread

bb.i:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 56
  %.val.i37 = load i64, ptr %i.w, align 8
  %i.x = and i64 %.val.i37, 1008806316530991104
  %.not.i38 = icmp eq i64 %i.x, 0
  br i1 %.not.i38, label %isar_feature_aa64_sme2p1_or_sve2p1.exit, label %isar_feature_aa64_sme_or_sve.exit.thread

isar_feature_aa64_sme2p1_or_sve2p1.exit:          ; preds = %bb.i
  %i.y = getelementptr i8, ptr %i.v, i64 360
  %.val2.i39 = load i64, ptr %i.y, align 8
  %i.z = and i64 %.val2.i39, 14
  %.not = icmp eq i64 %i.z, 0
  br i1 %.not, label %bb.l, label %isar_feature_aa64_sme_or_sve.exit.thread

bb.j:                                             ; preds = %bb.b
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 6188, ptr noundef nonnull @__func__.trans_ST_zpri, ptr noundef null) #10
  unreachable

isar_feature_aa64_sme_or_sve.exit.thread:         ; preds = %bb.i, %bb.c, %bb.h, %isar_feature_aa64_sme2p1_or_sve2p1.exit, %isar_feature_aa64_sme_or_sve.exit
  %i.aa = tail call zeroext i1 @sve_access_check(ptr noundef nonnull %0) #9
  br i1 %i.aa, label %bb.k, label %bb.l

bb.k:                                             ; preds = %isar_feature_aa64_sme_or_sve.exit.thread
  %i.ab = getelementptr i8, ptr %0, i64 220
  %.val = load i32, ptr %i.ab, align 4
  %i.ac = load i32, ptr %i.c, align 4
  %i.ad = ashr i32 %.val, %i.ac
  %i.ae = tail call ptr @tcg_temp_new_i64() #9    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = tail call ptr @cpu_reg_sp(ptr noundef nonnull %0, i32 noundef %i.ag) #9
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = mul i32 %i.aj, %i.ad
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4
  %i.an = add i32 %i.am, 1
  %i.ao = mul i32 %i.ak, %i.an
  %i.ap = load i32, ptr %i.a, align 4
  %i.aq = shl i32 %i.ao, %i.ap
  %i.ar = sext i32 %i.aq to i64
  tail call void @tcg_gen_addi_i64(ptr noundef %i.ae, ptr noundef %i.ah, i64 noundef %i.ar) #9
  %i.as = load i32, ptr %1, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.au = load i32, ptr %i.at, align 4
  %i.av = load i32, ptr %i.a, align 4
  %i.aw = load i32, ptr %i.c, align 4
  %i.ax = load i32, ptr %i.al, align 4
  tail call fastcc void @do_st_zpa(ptr noundef nonnull %0, i32 noundef %i.as, i32 noundef %i.au, ptr noundef %i.ae, i32 noundef %i.av, i32 noundef %i.aw, i32 noundef %i.ax)
  br label %bb.l

bb.l:                                             ; preds = %isar_feature_aa64_sme_or_sve.exit.thread, %bb.k, %isar_feature_aa64_sme2p1_or_sve2p1.exit, %bb.g, %isar_feature_aa64_sme_or_sve.exit, %bb.a
  %.0 = phi i1 [ false, %bb.g ], [ false, %isar_feature_aa64_sme2p1_or_sve2p1.exit ], [ false, %bb.a ], [ false, %isar_feature_aa64_sme_or_sve.exit ], [ true, %bb.k ], [ true, %isar_feature_aa64_sme_or_sve.exit.thread ]
  ret i1 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @trans_ST_zprr(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp eq i32 %i.b, 31
  br i1 %i.c, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %i.h = icmp sgt i32 %i.e, %i.g
  br i1 %i.h, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i32 %i.g, label %bb.k [
    i32 0, label %bb.d
    i32 1, label %bb.d
    i32 2, label %bb.d
    i32 3, label %bb.d
    i32 4, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 40
  %.val.i = load i64, ptr %i.k, align 8
  %i.l = and i64 %.val.i, 251658240
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %isar_feature_aa64_sme_or_sve.exit, label %isar_feature_aa64_sme_or_sve.exit.thread

isar_feature_aa64_sme_or_sve.exit:                ; preds = %bb.d
  %i.m = getelementptr i8, ptr %i.j, i64 32
  %.val2.i = load i64, ptr %i.m, align 8
  %i.n = and i64 %.val2.i, 64424509440
  %.not39 = icmp eq i64 %i.n, 0
  br i1 %.not39, label %bb.m, label %isar_feature_aa64_sme_or_sve.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load i32, ptr %i.o, align 4
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.r = icmp slt i32 %i.e, 4
  br i1 %i.r, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str, i32 noundef 6139, ptr noundef nonnull @__PRETTY_FUNCTION__.trans_ST_zprr) #10
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr i8, ptr %i.t, i64 360
  %.val = load i64, ptr %i.u, align 8
  %i.v = and i64 %.val, 14
  %.not38 = icmp eq i64 %i.v, 0
  br i1 %.not38, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 303
  store i8 1, ptr %i.w, align 1
  br label %isar_feature_aa64_sme_or_sve.exit.thread

bb.j:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 56
  %.val.i35 = load i64, ptr %i.z, align 8
  %i.aa = and i64 %.val.i35, 1008806316530991104
  %.not.i36 = icmp eq i64 %i.aa, 0
  br i1 %.not.i36, label %isar_feature_aa64_sme2p1_or_sve2p1.exit, label %isar_feature_aa64_sme_or_sve.exit.thread

isar_feature_aa64_sme2p1_or_sve2p1.exit:          ; preds = %bb.j
  %i.ab = getelementptr i8, ptr %i.y, i64 360
  %.val2.i37 = load i64, ptr %i.ab, align 8
  %i.ac = and i64 %.val2.i37, 14
  %.not = icmp eq i64 %i.ac, 0
  br i1 %.not, label %bb.m, label %isar_feature_aa64_sme_or_sve.exit.thread

bb.k:                                             ; preds = %bb.c
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 6151, ptr noundef nonnull @__func__.trans_ST_zprr, ptr noundef null) #10
  unreachable

isar_feature_aa64_sme_or_sve.exit.thread:         ; preds = %bb.j, %bb.d, %bb.i, %isar_feature_aa64_sme2p1_or_sve2p1.exit, %isar_feature_aa64_sme_or_sve.exit
  %i.ad = tail call zeroext i1 @sve_access_check(ptr noundef nonnull %0) #9
  br i1 %i.ad, label %bb.l, label %bb.m

bb.l:                                             ; preds = %isar_feature_aa64_sme_or_sve.exit.thread
  %i.ae = tail call ptr @tcg_temp_new_i64() #9    ; 4 uses
  %i.af = load i32, ptr %i.a, align 4
  %i.ag = tail call ptr @cpu_reg(ptr noundef nonnull %0, i32 noundef %i.af) #9
  %i.ah = load i32, ptr %i.d, align 4
  %i.ai = sext i32 %i.ah to i64
  tail call void @tcg_gen_shli_i64(ptr noundef %i.ae, ptr noundef %i.ag, i64 noundef %i.ai) #9
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = tail call ptr @cpu_reg_sp(ptr noundef nonnull %0, i32 noundef %i.ak) #9
  tail call void @tcg_gen_add_i64(ptr noundef %i.ae, ptr noundef %i.ae, ptr noundef %i.al) #9
  %i.am = load i32, ptr %1, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = load i32, ptr %i.d, align 4
  %i.aq = load i32, ptr %i.f, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.as = load i32, ptr %i.ar, align 4
  tail call fastcc void @do_st_zpa(ptr noundef nonnull %0, i32 noundef %i.am, i32 noundef %i.ao, ptr noundef %i.ae, i32 noundef %i.ap, i32 noundef %i.aq, i32 noundef %i.as)
  br label %bb.m

bb.m:                                             ; preds = %isar_feature_aa64_sme_or_sve.exit.thread, %bb.l, %isar_feature_aa64_sme2p1_or_sve2p1.exit, %bb.h, %isar_feature_aa64_sme_or_sve.exit, %bb.a, %bb.b
  %.0 = phi i1 [ false, %bb.h ], [ false, %isar_feature_aa64_sme2p1_or_sve2p1.exit ], [ false, %bb.a ], [ false, %isar_feature_aa64_sme_or_sve.exit ], [ false, %bb.b ], [ true, %bb.l ], [ true, %isar_feature_aa64_sme_or_sve.exit.thread ]
  ret i1 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @trans_STR_pri(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 40
  %.val.i = load i64, ptr %i.c, align 8
  %i.d = and i64 %.val.i, 251658240
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %isar_feature_aa64_sme_or_sve.exit, label %isar_feature_aa64_sme_or_sve.exit.thread

isar_feature_aa64_sme_or_sve.exit:                ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 32
  %.val2.i = load i64, ptr %i.e, align 8
  %i.f = and i64 %.val2.i, 64424509440
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.c, label %isar_feature_aa64_sme_or_sve.exit.thread

isar_feature_aa64_sme_or_sve.exit.thread:         ; preds = %bb.a, %isar_feature_aa64_sme_or_sve.exit
  %i.g = tail call zeroext i1 @sve_access_check(ptr noundef nonnull %0) #9
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %isar_feature_aa64_sme_or_sve.exit.thread
  %i.h = getelementptr i8, ptr %0, i64 220
  %.val = load i32, ptr %i.h, align 4
  %i.i = ashr i32 %.val, 3                        ; 2 uses
  %i.j = load i32, ptr %1, align 4
  %i.k = shl i32 %i.j, 5
  %i.l = add i32 %i.k, 12080
  %i.m = load ptr, ptr @tcg_env, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.o = load i32, ptr %i.n, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i32, ptr %i.p, align 4
  %i.r = mul i32 %i.q, %i.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 298
  %i.t = load i8, ptr %i.s, align 2, !range !15, !noundef !16
  %i.u = shl nuw nsw i8 %i.t, 5
  %i.v = zext nneg i8 %i.u to i32
  tail call void @gen_sve_str(ptr noundef nonnull %0, ptr noundef %i.m, i32 noundef %i.l, i32 noundef %i.i, i32 noundef %i.o, i32 noundef %i.r, i32 noundef %i.v)
  br label %bb.c

bb.c:                                             ; preds = %isar_feature_aa64_sme_or_sve.exit.thread, %bb.b, %isar_feature_aa64_sme_or_sve.exit
  %i.w = phi i1 [ true, %isar_feature_aa64_sme_or_sve.exit.thread ], [ true, %bb.b ], [ false, %isar_feature_aa64_sme_or_sve.exit ]
  ret i1 %i.w
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @trans_STNT1_zprz(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp eq i32 %i.b, 16                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.e = load i8, ptr %i.d, align 4, !range !15, !noundef !16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp slt i32 %i.g, %i.i
  br i1 %i.j, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr i8, ptr %i.l, i64 360
  %.val = load i64, ptr %i.m, align 8
  %i.n = and i64 %.val, 15
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 303
  store i8 1, ptr %i.o, align 1
  %i.p = tail call zeroext i1 @sve_access_check(ptr noundef nonnull %0) #9
  br i1 %i.p, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.q = load i32, ptr %i.f, align 4
  switch i32 %i.q, label %bb.g [
    i32 2, label %bb.e
    i32 3, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %2 = zext nneg i8 %i.e to i64
  %i.r = getelementptr inbounds nuw [96 x i8], ptr @scatter_store_fn32, i64 %2
  %i.s = zext i1 %i.c to i64
  %i.t = getelementptr inbounds nuw [48 x i8], ptr %i.r, i64 %i.s
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %3 = zext nneg i8 %i.e to i64
  %i.u = getelementptr inbounds nuw [192 x i8], ptr @scatter_store_fn64, i64 %3
  %i.v = zext i1 %i.c to i64
  %i.w = getelementptr inbounds nuw [96 x i8], ptr %i.u, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 6898, ptr noundef nonnull @__func__.trans_STNT1_zprz, ptr noundef null) #10
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.e
  %.sink = phi ptr [ %i.x, %bb.f ], [ %i.t, %bb.e ]
  %i.y = load i32, ptr %i.h, align 4
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %.sink, i64 %i.z
  %.024 = load ptr, ptr %i.aa, align 8
  %i.ab = load i32, ptr %1, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = tail call ptr @cpu_reg(ptr noundef nonnull %0, i32 noundef %i.ah) #9
  %i.aj = load i32, ptr %i.h, align 4
  tail call fastcc void @do_mem_zpz(ptr noundef nonnull %0, i32 noundef %i.ab, i32 noundef %i.ad, i32 noundef %i.af, i32 noundef 0, ptr noundef %i.ai, i32 noundef %i.aj, i1 noundef zeroext true, ptr noundef %.024)
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.h
  %.0 = phi i1 [ false, %bb.a ], [ true, %bb.h ], [ false, %bb.b ], [ true, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @trans_ST1Q(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp eq i32 %i.b, 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.e = load i8, ptr %i.d, align 4, !range !15, !noundef !16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %i.g, i64 360
  %.val = load i64, ptr %i.h, align 8
  %i.i = and i64 %.val, 14
  %i.j = icmp ne i64 %i.i, 0                      ; 2 uses
  br i1 %i.j, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 303
  store i8 1, ptr %i.k, align 1
  %i.l = tail call zeroext i1 @sve_access_check(ptr noundef nonnull %0) #9
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %2 = zext nneg i8 %i.e to i64
  %i.m = getelementptr inbounds nuw [16 x i8], ptr @scatter_store_fn128, i64 %2
  %i.n = zext i1 %i.c to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.r = load i32, ptr %i.q, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.t = load i32, ptr %i.s, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i32, ptr %i.u, align 4
  %i.w = load i32, ptr %1, align 4
  %i.x = tail call ptr @cpu_reg(ptr noundef nonnull %0, i32 noundef %i.w) #9
  tail call fastcc void @do_mem_zpz(ptr noundef nonnull %0, i32 noundef %i.r, i32 noundef %i.t, i32 noundef %i.v, i32 noundef 0, ptr noundef %i.x, i32 noundef 4, i1 noundef zeroext true, ptr noundef %i.p)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  ret i1 %i.j
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @trans_STR_zri(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 40
  %.val.i = load i64, ptr %i.c, align 8
  %i.d = and i64 %.val.i, 251658240
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %isar_feature_aa64_sme_or_sve.exit, label %isar_feature_aa64_sme_or_sve.exit.thread

isar_feature_aa64_sme_or_sve.exit:                ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 32
  %.val2.i = load i64, ptr %i.e, align 8
  %i.f = and i64 %.val2.i, 64424509440
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.c, label %isar_feature_aa64_sme_or_sve.exit.thread

isar_feature_aa64_sme_or_sve.exit.thread:         ; preds = %bb.a, %isar_feature_aa64_sme_or_sve.exit
  %i.g = tail call zeroext i1 @sve_access_check(ptr noundef nonnull %0) #9
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %isar_feature_aa64_sme_or_sve.exit.thread
  %i.h = getelementptr i8, ptr %0, i64 220
  %.val = load i32, ptr %i.h, align 4             ; 2 uses
  %i.i = load i32, ptr %1, align 4
  %i.j = shl i32 %i.i, 8
  %i.k = add i32 %i.j, 3888
  %i.l = load ptr, ptr @tcg_env, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.n = load i32, ptr %i.m, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i32, ptr %i.o, align 4
  %i.q = mul i32 %i.p, %.val
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 298
  %i.s = load i8, ptr %i.r, align 2, !range !15, !noundef !16
  %i.t = shl nuw i8 %i.s, 7
  %i.u = zext i8 %i.t to i32
  tail call void @gen_sve_str(ptr noundef nonnull %0, ptr noundef %i.l, i32 noundef %i.k, i32 noundef %.val, i32 noundef %i.n, i32 noundef %i.q, i32 noundef %i.u)
  br label %bb.c

bb.c:                                             ; preds = %isar_feature_aa64_sme_or_sve.exit.thread, %bb.b, %isar_feature_aa64_sme_or_sve.exit
  %i.v = phi i1 [ true, %isar_feature_aa64_sme_or_sve.exit.thread ], [ true, %bb.b ], [ false, %isar_feature_aa64_sme_or_sve.exit ]
  ret i1 %i.v
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @trans_ST1_zprz(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp eq i32 %i.b, 16                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.e = load i8, ptr %i.d, align 4, !range !15, !noundef !16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4              ; 2 uses
  %i.j = icmp slt i32 %i.g, %i.i
  br i1 %i.j, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = icmp eq i32 %i.i, 0
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.m = load i32, ptr %i.l, align 4
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr i8, ptr %i.o, i64 32
  %.val = load i64, ptr %i.p, align 8
  %i.q = and i64 %.val, 64424509440
  %.not32 = icmp eq i64 %i.q, 0
  br i1 %.not32, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 303
  store i8 1, ptr %i.r, align 1
  %i.s = tail call zeroext i1 @sve_access_check(ptr noundef nonnull %0) #9
  br i1 %i.s, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.t = load i32, ptr %i.f, align 4
  switch i32 %i.t, label %bb.i [
    i32 2, label %bb.g
    i32 3, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %2 = zext nneg i8 %i.e to i64
  %i.u = getelementptr inbounds nuw [96 x i8], ptr @scatter_store_fn32, i64 %2
  %i.v = zext i1 %i.c to i64
  %i.w = getelementptr inbounds nuw [48 x i8], ptr %i.u, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = load i32, ptr %i.x, align 4
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [24 x i8], ptr %i.w, i64 %i.z
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %3 = zext nneg i8 %i.e to i64
  %i.ab = getelementptr inbounds nuw [192 x i8], ptr @scatter_store_fn64, i64 %3
  %i.ac = zext i1 %i.c to i64
  %i.ad = getelementptr inbounds nuw [96 x i8], ptr %i.ab, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [32 x i8], ptr %i.ad, i64 %i.ag
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 6808, ptr noundef nonnull @__func__.trans_ST1_zprz, ptr noundef null) #10
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g
  %.sink = phi ptr [ %i.ah, %bb.h ], [ %i.aa, %bb.g ]
  %i.ai = load i32, ptr %i.h, align 4             ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [8 x i8], ptr %.sink, i64 %i.aj
  %.030 = load ptr, ptr %i.ak, align 8
  %i.al = load i32, ptr %1, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = mul i32 %i.ai, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.au = load i32, ptr %i.at, align 4
  %i.av = tail call ptr @cpu_reg_sp(ptr noundef nonnull %0, i32 noundef %i.au) #9
  %i.aw = load i32, ptr %i.h, align 4
  tail call fastcc void @do_mem_zpz(ptr noundef nonnull %0, i32 noundef %i.al, i32 noundef %i.an, i32 noundef %i.ap, i32 noundef %i.as, ptr noundef %i.av, i32 noundef %i.aw, i1 noundef zeroext true, ptr noundef %.030)
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.d, %bb.a, %bb.c, %bb.j
  %.0 = phi i1 [ false, %bb.a ], [ true, %bb.j ], [ false, %bb.d ], [ false, %bb.c ], [ true, %bb.e ]
  ret i1 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @trans_ST1_zpiz(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp eq i32 %i.b, 16                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.e = load i8, ptr %i.d, align 4, !range !15, !noundef !16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp slt i32 %i.g, %i.i
  br i1 %i.j, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr i8, ptr %i.l, i64 32
  %.val = load i64, ptr %i.m, align 8
  %i.n = and i64 %.val, 64424509440
  %.not28 = icmp eq i64 %i.n, 0
  br i1 %.not28, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 303
  store i8 1, ptr %i.o, align 1
  %i.p = tail call zeroext i1 @sve_access_check(ptr noundef nonnull %0) #9
  br i1 %i.p, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.q = load i32, ptr %i.f, align 4
  switch i32 %i.q, label %.thread [
    i32 2, label %bb.e
    i32 3, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %2 = zext nneg i8 %i.e to i64
  %i.r = getelementptr inbounds nuw [96 x i8], ptr @scatter_store_fn32, i64 %2
  %i.s = zext i1 %i.c to i64
  %i.t = getelementptr inbounds nuw [48 x i8], ptr %i.r, i64 %i.s
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %3 = zext nneg i8 %i.e to i64
  %i.u = getelementptr inbounds nuw [192 x i8], ptr @scatter_store_fn64, i64 %3
  %i.v = zext i1 %i.c to i64
  %i.w = getelementptr inbounds nuw [96 x i8], ptr %i.u, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink = phi ptr [ %i.x, %bb.f ], [ %i.t, %bb.e ]
  %i.y = load i32, ptr %i.h, align 4              ; 2 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %.sink, i64 %i.z
  %.025 = load ptr, ptr %i.aa, align 8            ; 2 uses
  %.not = icmp eq ptr %.025, null
  br i1 %.not, label %.thread, label %bb.h

.thread:                                          ; preds = %bb.d, %bb.g
  tail call void @__assert_fail(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str, i32 noundef 6863, ptr noundef nonnull @__PRETTY_FUNCTION__.trans_ST1_zpiz) #10
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.ab = load i32, ptr %1, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = shl i32 %i.ah, %i.y
  %i.aj = sext i32 %i.ai to i64
  %i.ak = tail call ptr @tcg_constant_i64(i64 noundef %i.aj) #9
  %i.al = load i32, ptr %i.h, align 4
  tail call fastcc void @do_mem_zpz(ptr noundef nonnull %0, i32 noundef %i.ab, i32 noundef %i.ad, i32 noundef %i.af, i32 noundef 0, ptr noundef %i.ak, i32 noundef %i.al, i1 noundef zeroext true, ptr noundef nonnull %.025)
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.h
  %.0 = phi i1 [ false, %bb.a ], [ true, %bb.h ], [ false, %bb.b ], [ true, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @gen_sve_ldr(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = sdiv i32 %3, 16                          ; 2 uses
  %i.b = shl nsw i32 %i.a, 4                      ; 5 uses
  %i.c = srem i32 %3, 16                          ; 5 uses
  %i.d = getelementptr i8, ptr %0, i64 192
  %.val = load i32, ptr %i.d, align 8
  %i.e = and i32 %.val, 31                        ; 6 uses
  %i.f = icmp samesign ult i32 %i.e, 22
  br i1 %i.f, label %get_mem_index.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7, i32 noundef 1022, ptr noundef nonnull @__PRETTY_FUNCTION__.arm_to_core_mmu_idx) #10
  unreachable

get_mem_index.exit:                               ; preds = %bb.a
  %i.g = trunc nsw i32 %i.c to i8
  %i.h = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 range(i8 -15, 16) %i.g)
  %i.i = zext nneg i8 %i.h to i32
  %i.j = add nsw i32 %i.a, %i.i
  %i.k = tail call ptr @tcg_temp_new_i64() #9     ; 2 uses
  %i.l = tail call ptr @cpu_reg_sp(ptr noundef nonnull %0, i32 noundef %4) #9
  %i.m = sext i32 %5 to i64
  tail call void @tcg_gen_addi_i64(ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.m) #9
  %i.n = icmp ne i32 %4, 31
  %i.o = tail call ptr @gen_mte_checkN(ptr noundef nonnull %0, ptr noundef %i.k, i1 noundef zeroext false, i1 noundef zeroext %i.n, i32 noundef %3, i32 noundef 0) #9 ; 13 uses
  %i.p = icmp slt i32 %i.j, 5
  br i1 %i.p, label %bb.c, label %bb.e

bb.c:                                             ; preds = %get_mem_index.exit
  %i.q = tail call ptr @tcg_temp_new_i64() #9     ; 2 uses
  %i.r = tail call ptr @tcg_temp_new_i64() #9     ; 2 uses
  %i.s = tail call ptr @tcg_temp_new_i128() #9    ; 2 uses
  %i.t = icmp sgt i32 %3, 15
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.u = zext nneg i32 %i.e to i64
  %i.v = or i32 %6, 2564
  %i.w = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.x = ptrtoint ptr %i.o to i64
  %i.y = zext nneg i32 %i.b to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.z = load ptr, ptr %i.w, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  tail call void @tcg_gen_qemu_ld_i128_chk(ptr noundef %i.s, ptr noundef %i.aa, i64 noundef range(i64 0, 22) %i.u, i32 noundef range(i32 2564, 0) %i.v, i32 noundef 1) #9
  tail call void @tcg_gen_extr_i128_i64(ptr noundef %i.q, ptr noundef %i.r, ptr noundef %i.s) #9
  %i.ab = trunc nuw nsw i64 %indvars.iv to i32
  %i.ac = add i32 %2, %i.ab                       ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  tail call void @tcg_gen_st_i64(ptr noundef %i.q, ptr noundef %1, i64 noundef %i.ad) #9
  %i.ae = add i32 %i.ac, 8
  %i.af = sext i32 %i.ae to i64
  tail call void @tcg_gen_st_i64(ptr noundef %i.r, ptr noundef %1, i64 noundef %i.af) #9
  tail call void @tcg_gen_addi_i64(ptr noundef %i.o, ptr noundef %i.o, i64 noundef 16) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16 ; 2 uses
  %i.ag = icmp samesign ult i64 %indvars.iv.next, %i.y
  br i1 %i.ag, label %bb.d, label %._crit_edge, !llvm.loop !24

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %.off = add i32 %3, 15
  %.not = icmp ult i32 %.off, 31
  %spec.select = select i1 %.not, i32 %6, i32 0
  br label %bb.f

bb.e:                                             ; preds = %get_mem_index.exit
  %i.ah = tail call ptr @gen_new_label() #9       ; 2 uses
  %i.ai = tail call ptr @tcg_temp_new_ptr() #9    ; 5 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.ai, i64 noundef 0) #9
  tail call void @gen_set_label(ptr noundef %i.ah) #9
  %i.aj = tail call ptr @tcg_temp_new_i128() #9   ; 2 uses
  %i.ak = zext nneg i32 %i.e to i64
  %i.al = or i32 %6, 2564
  %i.am = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = ptrtoint ptr %i.o to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ao
  tail call void @tcg_gen_qemu_ld_i128_chk(ptr noundef %i.aj, ptr noundef %i.ap, i64 noundef range(i64 0, 22) %i.ak, i32 noundef range(i32 2564, 0) %i.al, i32 noundef 1) #9
  tail call void @tcg_gen_addi_i64(ptr noundef %i.o, ptr noundef %i.o, i64 noundef 16) #9
  %i.aq = tail call ptr @tcg_temp_new_ptr() #9    ; 3 uses
  tail call void @tcg_gen_add_i64(ptr noundef %i.aq, ptr noundef %1, ptr noundef %i.ai) #9
  tail call void @tcg_gen_addi_i64(ptr noundef %i.ai, ptr noundef %i.ai, i64 noundef 16) #9
  %i.ar = tail call ptr @tcg_temp_new_i64() #9    ; 2 uses
  %i.as = tail call ptr @tcg_temp_new_i64() #9    ; 2 uses
  tail call void @tcg_gen_extr_i128_i64(ptr noundef %i.ar, ptr noundef %i.as, ptr noundef %i.aj) #9
  %i.at = sext i32 %2 to i64
  tail call void @tcg_gen_st_i64(ptr noundef %i.ar, ptr noundef %i.aq, i64 noundef %i.at) #9
  %i.au = add i32 %2, 8
  %i.av = sext i32 %i.au to i64
  tail call void @tcg_gen_st_i64(ptr noundef %i.as, ptr noundef %i.aq, i64 noundef %i.av) #9
  %i.aw = sext i32 %i.b to i64
  tail call void @tcg_gen_brcondi_i64(i32 noundef 10, ptr noundef %i.ai, i64 noundef range(i64 -2147483648, 2147483633) %i.aw, ptr noundef %i.ah) #9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %.1 = phi i32 [ %spec.select, %._crit_edge ], [ 0, %bb.e ] ; 2 uses
  %i.ax = icmp sgt i32 %i.c, 7
  br i1 %i.ax, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ay = tail call ptr @tcg_temp_new_i64() #9    ; 2 uses
  %i.az = zext nneg i32 %i.e to i64
  %i.ba = or i32 %.1, 2563
  %i.bb = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = ptrtoint ptr %i.o to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bd
  tail call void @tcg_gen_qemu_ld_i64_chk(ptr noundef %i.ay, ptr noundef %i.be, i64 noundef range(i64 0, 22) %i.az, i32 noundef %i.ba, i32 noundef 1) #9
  %i.bf = add i32 %i.b, %2
  %i.bg = sext i32 %i.bf to i64
  tail call void @tcg_gen_st_i64(ptr noundef %i.ay, ptr noundef %1, i64 noundef %i.bg) #9
  %i.bh = add nsw i32 %i.c, -8                    ; 2 uses
  %.not104 = icmp eq i32 %i.bh, 0
  br i1 %.not104, label %.thread, label %.thread110

.thread110:                                       ; preds = %bb.g
  %i.bi = or disjoint i32 %i.b, 8
  tail call void @tcg_gen_addi_i64(ptr noundef %i.o, ptr noundef %i.o, i64 noundef 8) #9
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %.not105 = icmp eq i32 %i.c, 0
  br i1 %.not105, label %.thread, label %bb.i

bb.i:                                             ; preds = %.thread110, %bb.h
  %.2117 = phi i32 [ 0, %.thread110 ], [ %.1, %bb.h ] ; 2 uses
  %.096116 = phi i32 [ %i.bi, %.thread110 ], [ %i.b, %bb.h ]
  %.097115 = phi i32 [ %i.bh, %.thread110 ], [ %i.c, %bb.h ] ; 2 uses
  %i.bj = tail call ptr @tcg_temp_new_i64() #9    ; 5 uses
  switch i32 %.097115, label %bb.l [
    i32 2, label %bb.j
    i32 4, label %bb.j
    i32 6, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.bk = zext nneg i32 %i.e to i64
  %i.bl = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.097115, i1 true)
  %i.bm = or i32 %.2117, %i.bl
  %i.bn = or i32 %i.bm, 2560
  %i.bo = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = ptrtoint ptr %i.o to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bq
  tail call void @tcg_gen_qemu_ld_i64_chk(ptr noundef %i.bj, ptr noundef %i.br, i64 noundef range(i64 0, 22) %i.bk, i32 noundef %i.bn, i32 noundef 1) #9
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.bs = tail call ptr @tcg_temp_new_i64() #9    ; 2 uses
  %i.bt = zext nneg i32 %i.e to i64               ; 2 uses
  %i.bu = or i32 %.2117, 2562
  %i.bv = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx) ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = ptrtoint ptr %i.o to i64                ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bx
end_hunk_1
