Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/translate-a64?download=true
inline.NumInlined: 6569
inline.NumDeleted: 927
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@gen_helper_gvec_luti4_b:bb.a
}

declare void @tcg_gen_gvec_3_ool(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_gvec_luti4_h(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #11 {
bb.a:
  %i.a = load ptr, ptr @helper_info_gvec_luti4_h, align 8
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
  tail call void @tcg_gen_call4(ptr noundef %i.a, ptr noundef nonnull @helper_info_gvec_luti4_h, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k) #14
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_gvec_luti2_b(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #11 {
bb.a:
  %i.a = load ptr, ptr @helper_info_gvec_luti2_b, align 8
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
  tail call void @tcg_gen_call4(ptr noundef %i.a, ptr noundef nonnull @helper_info_gvec_luti2_b, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k) #14
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_gvec_luti2_h(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #11 {
bb.a:
  %i.a = load ptr, ptr @helper_info_gvec_luti2_h, align 8
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
  tail call void @tcg_gen_call4(ptr noundef %i.a, ptr noundef nonnull @helper_info_gvec_luti2_h, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k) #14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @do_simd_permute(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 4              ; 5 uses
  %i.d = load i32, ptr %1, align 4
  %.not = icmp ne i32 %i.d, 0                     ; 2 uses
  %i.e = select i1 %.not, i32 16, i32 8
  %i.f = lshr i32 %i.e, %i.c                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.g = icmp ne i32 %i.c, 3
  %brmerge = select i1 %i.g, i1 true, i1 %.not    ; 2 uses
  br i1 %brmerge, label %bb.b, label %fp_access_check.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.i = load i32, ptr %i.h, align 4              ; 2 uses
  %.not.i.i = icmp eq i32 %i.i, 0
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 283 ; 3 uses
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i8, ptr %i.j, align 1
  %.not7.i.i = icmp eq i8 %i.k, 0
  br i1 %.not7.i.i, label %fp_access_check_only.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.3, i32 noundef 1438, ptr noundef nonnull @__PRETTY_FUNCTION__.fp_access_check_only) #15
  unreachable

fp_access_check_only.exit.i:                      ; preds = %bb.c
  store i8 -1, ptr %i.j, align 1
  tail call void @gen_exception_insn_el(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1, i32 noundef 534773760, i32 noundef %i.i) #14
  br label %fp_access_check.exit

bb.e:                                             ; preds = %bb.b
  store i8 1, ptr %i.j, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 302
  %i.m = load i8, ptr %i.l, align 2, !range !9, !noundef !10
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 303
  %i.p = load i8, ptr %i.o, align 1, !range !9, !noundef !10
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @gen_exception_insn(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1, i32 noundef 1979711489) #14
  br label %fp_access_check.exit

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.r = tail call ptr @tcg_temp_new_i64() #14
  store ptr %i.r, ptr %i.a, align 16
  %i.s = load i32, ptr %1, align 4
  %.not51 = icmp eq i32 %i.s, 0
  br i1 %.not51, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = tail call ptr @tcg_temp_new_i64() #14
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.u = phi ptr [ %i.t, %bb.i ], [ null, %bb.h ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.u, ptr %i.v, align 8
  %i.w = tail call ptr @tcg_temp_new_i64() #14    ; 3 uses
  %.not60 = icmp eq i32 %i.f, 0
  br i1 %.not60, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.x = add nsw i32 %i.f, -1
  %i.y = add i32 %i.c, 3
  %i.z = shl i32 8, %i.c
  br label %bb.k

._crit_edge:                                      ; preds = %bb.n, %bb.j
  %i.aa = load i32, ptr %1, align 4               ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, -1
  br i1 %i.ab, label %.lr.ph58, label %._crit_edge59

.lr.ph58:                                         ; preds = %._crit_edge
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ad = zext nneg i32 %i.aa to i64
  br label %bb.o

bb.k:                                             ; preds = %.lr.ph, %bb.n
  %.04655 = phi i32 [ 0, %.lr.ph ], [ %i.ap, %bb.n ] ; 3 uses
  %i.ae = tail call i32 %2(i32 noundef %.04655, i32 noundef %3, i32 noundef %i.f) #14, !callees !50 ; 2 uses
  %i.af = and i32 %i.ae, %i.f
  %.not52 = icmp eq i32 %i.af, 0
  %.in.v = select i1 %.not52, i64 8, i64 12
  %.in = getelementptr inbounds nuw i8, ptr %1, i64 %.in.v
  %i.ag = load i32, ptr %.in, align 4
  %i.ah = and i32 %i.ae, %i.x
  tail call fastcc void @read_vec_element(ptr noundef %i.w, i32 noundef %i.ag, i32 noundef %i.ah, i32 noundef %i.c)
  %i.ai = shl i32 %.04655, %i.y                   ; 2 uses
  %i.aj = sdiv i32 %i.ai, 64
  %i.ak = srem i32 %i.ai, 64                      ; 2 uses
  %i.al = icmp eq i32 %i.ak, 0
  %i.am = sext i32 %i.aj to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8            ; 3 uses
  br i1 %i.al, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @tcg_gen_mov_i64(ptr noundef %i.ao, ptr noundef %i.w) #14
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  tail call void @tcg_gen_deposit_i64(ptr noundef %i.ao, ptr noundef %i.ao, ptr noundef %i.w, i32 noundef %i.ak, i32 noundef %i.z) #14
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ap = add nuw nsw i32 %.04655, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ap, %i.f
  br i1 %exitcond.not, label %._crit_edge, label %bb.k, !llvm.loop !51

._crit_edge59.loopexit:                           ; preds = %bb.o
  %.pre = load i32, ptr %1, align 4
  %i.aq = icmp eq i32 %.pre, 0
  %i.ar = select i1 %i.aq, i32 8, i32 16
  br label %._crit_edge59

._crit_edge59:                                    ; preds = %._crit_edge59.loopexit, %._crit_edge
  %.not54 = phi i32 [ %i.ar, %._crit_edge59.loopexit ], [ 16, %._crit_edge ]
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.at = load i32, ptr %i.as, align 4
  %i.au = getelementptr i8, ptr %0, i64 220
  %.val = load i32, ptr %i.au, align 4
  %i.av = shl i32 %i.at, 8
  %i.aw = add i32 %i.av, 3888                     ; 2 uses
  tail call void @tcg_gen_gvec_mov(i32 noundef 3, i32 noundef %i.aw, i32 noundef %i.aw, i32 noundef %.not54, i32 noundef %.val) #14
  br label %fp_access_check.exit

bb.o:                                             ; preds = %.lr.ph58, %bb.o
  %indvars.iv = phi i64 [ %i.ad, %.lr.ph58 ], [ %indvars.iv.next, %bb.o ] ; 4 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = load i32, ptr %i.ac, align 4
  %4 = trunc nuw nsw i64 %indvars.iv to i32
  %5 = shl i32 %4, 3
  %i.ba = shl i32 %i.az, 8
  %i.bb = add i32 %5, 3888
  %i.bc = add i32 %i.bb, %i.ba
  %i.bd = load ptr, ptr @tcg_env, align 8
  %i.be = sext i32 %i.bc to i64
  tail call void @tcg_gen_st_i64(ptr noundef %i.ay, ptr noundef %i.bd, i64 noundef %i.be) #14
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not66 = icmp eq i64 %indvars.iv, 0
  br i1 %.not66, label %._crit_edge59.loopexit, label %bb.o, !llvm.loop !52

fp_access_check.exit:                             ; preds = %bb.a, %bb.g, %fp_access_check_only.exit.i, %._crit_edge59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i1 %brmerge
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal noundef i32 @permute_load_uzp(i32 noundef %0, i32 noundef %1, i32 %2) #7 {
bb.a:
  %i.a = shl i32 %0, 1
  %i.b = add i32 %i.a, %1
  ret i32 %i.b
}

declare void @tcg_gen_deposit_i64(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal noundef i32 @permute_load_trn(i32 noundef %0, i32 noundef %1, i32 noundef %2) #7 {
bb.a:
  %i.a = trunc i32 %0 to i1
  %i.b = select i1 %i.a, i32 %2, i32 0
  %i.c = and i32 %0, -2
  %i.d = add i32 %1, %i.c
  %i.e = add i32 %i.d, %i.b
  ret i32 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal noundef i32 @permute_load_zip(i32 noundef %0, i32 noundef %1, i32 noundef %2) #7 {
bb.a:
  %i.a = trunc i32 %0 to i1
  %i.b = select i1 %i.a, i32 %2, i32 0
  %i.c = mul i32 %2, %1
  %i.d = add i32 %i.c, %0
  %i.e = ashr i32 %i.d, 1
  %i.f = add i32 %i.e, %i.b
  ret i32 %i.f
}

declare void @tcg_gen_gvec_dup_mem(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #9

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @do_smov_umov(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef range(i32 0, 9) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.b, i1 false) ; 5 uses
  %i.d = icmp samesign ult i32 %i.c, 4
  br i1 %i.d, label %bb.b, label %decode_esz_idx.exit

bb.b:                                             ; preds = %bb.a
  %i.e = add nuw nsw i32 %i.c, 1
  %i.f = ashr i32 %i.b, %i.e
  %.not = icmp eq i32 %2, 0                       ; 2 uses
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i32 %i.c, label %bb.h [
    i32 3, label %decode_esz_idx.exit
    i32 2, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr %1, align 4
  %.not19 = icmp eq i32 %i.g, 0
  br i1 %.not19, label %decode_esz_idx.exit, label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.h = icmp eq i32 %i.c, 3
  %i.i = load i32, ptr %1, align 4
  %.not18 = icmp eq i32 %i.i, 0                   ; 2 uses
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  br i1 %.not18, label %decode_esz_idx.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %.not18, label %bb.h, label %decode_esz_idx.exit

bb.h:                                             ; preds = %bb.c, %bb.f, %bb.g, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.k = load i32, ptr %i.j, align 4              ; 2 uses
  %.not.i.i = icmp eq i32 %i.k, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 283 ; 3 uses
  br i1 %.not.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = load i8, ptr %i.l, align 1
  %.not7.i.i = icmp eq i8 %i.m, 0
  br i1 %.not7.i.i, label %fp_access_check_only.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.3, i32 noundef 1438, ptr noundef nonnull @__PRETTY_FUNCTION__.fp_access_check_only) #15
  unreachable

fp_access_check_only.exit.i:                      ; preds = %bb.i
  store i8 -1, ptr %i.l, align 1
  tail call void @gen_exception_insn_el(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1, i32 noundef 534773760, i32 noundef %i.k) #14
  br label %decode_esz_idx.exit

bb.k:                                             ; preds = %bb.h
  store i8 1, ptr %i.l, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 302
  %i.o = load i8, ptr %i.n, align 2, !range !9, !noundef !10
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 303
  %i.r = load i8, ptr %i.q, align 1, !range !9, !noundef !10
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @gen_exception_insn(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1, i32 noundef 1979711489) #14
  br label %decode_esz_idx.exit

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.u = load i32, ptr %i.t, align 4              ; 2 uses
  %i.v = icmp eq i32 %i.u, 31
  br i1 %i.v, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.w = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  tail call void @tcg_gen_movi_i64(ptr noundef %i.w, i64 noundef 0) #14
  br label %cpu_reg.exit

bb.p:                                             ; preds = %bb.n
  %i.x = sext i32 %i.u to i64
  %i.y = getelementptr inbounds [8 x i8], ptr @cpu_X, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8
  br label %cpu_reg.exit

cpu_reg.exit:                                     ; preds = %bb.o, %bb.p
  %.0.i = phi ptr [ %i.w, %bb.o ], [ %i.z, %bb.p ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = or i32 %i.c, %2
  tail call fastcc void @read_vec_element(ptr noundef %.0.i, i32 noundef %i.ab, i32 noundef %i.f, i32 noundef %i.ac)
  br i1 %.not, label %decode_esz_idx.exit, label %bb.q

bb.q:                                             ; preds = %cpu_reg.exit
  %i.ad = load i32, ptr %1, align 4
  %.not20 = icmp eq i32 %i.ad, 0
  br i1 %.not20, label %bb.r, label %decode_esz_idx.exit

bb.r:                                             ; preds = %bb.q
  tail call void @tcg_gen_ext32u_i64(ptr noundef %.0.i, ptr noundef %.0.i) #14
  br label %decode_esz_idx.exit

decode_esz_idx.exit:                              ; preds = %bb.m, %fp_access_check_only.exit.i, %bb.a, %bb.r, %bb.q, %cpu_reg.exit, %bb.f, %bb.g, %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.g ], [ true, %cpu_reg.exit ], [ true, %bb.q ], [ true, %bb.r ], [ true, %fp_access_check_only.exit.i ], [ true, %bb.m ]
  ret i1 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @do_fp3_vector_with_fpsttype(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef range(i32 0, 4) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef range(i32 1, 6) %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  switch i32 %i.b, label %bb.j [
    i32 3, label %bb.b
    i32 2, label %bb.d
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %1, align 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.j, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 32
  %.val.i = load i64, ptr %i.f, align 8
  %i.g = and i64 %.val.i, 983040
  %i.h = icmp eq i64 %i.g, 65536
  br i1 %i.h, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.j, 0
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 283 ; 3 uses
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load i8, ptr %i.k, align 1
  %.not7.i.i.i = icmp eq i8 %i.l, 0
end_hunk_0
