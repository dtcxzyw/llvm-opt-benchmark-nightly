Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/translate?download=true
inline.NumInlined: 3928
inline.NumDeleted: 504
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@gen_op_deposit_reg_v:bb.a
  %i.q = sext i32 %2 to i64
  %i.r = getelementptr inbounds [8 x i8], ptr @cpu_regs, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.t = phi ptr [ %i.s, %bb.f ], [ %3, %bb.e ]
  tail call void @tcg_gen_ext32u_i64(ptr noundef %i.t, ptr noundef %4) #14
  br label %bb.l

bb.h:                                             ; preds = %bb.a
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = sext i32 %2 to i64
  %i.v = getelementptr inbounds [8 x i8], ptr @cpu_regs, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.x = phi ptr [ %i.w, %bb.i ], [ %3, %bb.h ]
  tail call void @tcg_gen_mov_i64(ptr noundef %i.x, ptr noundef %4) #14
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.776, i32 noundef 443, ptr noundef nonnull @__func__.gen_op_deposit_reg_v, ptr noundef null) #16
  unreachable

bb.l:                                             ; preds = %bb.j, %bb.g, %bb.d, %byte_reg_is_xH.exit.thread
  %i.y = sext i32 %2 to i64
  %i.z = getelementptr inbounds [8 x i8], ptr @cpu_regs, i64 %i.y
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.c
  %.0.in = phi ptr [ %i.j, %bb.c ], [ %i.z, %bb.l ]
  %.0 = load ptr, ptr %.0.in, align 8
  ret ptr %.0
}

declare void @tcg_gen_deposit_i64(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

declare void @tcg_gen_ext32u_i64(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @gen_pop_T0(ptr nofree noundef readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 160
  %.val8 = load i32, ptr %i.c, align 8            ; 3 uses
  %i.d = and i32 %.val8, 32768
  %.not.i = icmp eq i32 %i.d, 0                   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 5 uses
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cpu_regs, i64 32), align 16 ; 3 uses
  %i.h = and i32 %.val8, 32
  %.not2.i.i = icmp eq i32 %i.h, 0
  %i.i = select i1 %.not2.i.i, i32 1, i32 2
  %i.j = select i1 %.not.i, i32 %i.i, i32 3       ; 3 uses
  %i.k = and i32 %.val8, 64
  %.not27.i.i = icmp eq i32 %i.k, 0
  %i.l = select i1 %.not.i, i32 2, i32 3          ; 2 uses
  br i1 %.not27.i.i, label %gen_lea_ss_ofs.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = icmp samesign ult i32 %i.j, %i.l
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @tcg_gen_ext_i64(ptr noundef %i.f, ptr noundef %i.g, i32 noundef %i.j) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.021.i.i = phi ptr [ %i.f, %bb.c ], [ %i.g, %bb.b ]
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cpu_seg_base, i64 16), align 16
  tail call void @tcg_gen_add_i64(ptr noundef %i.f, ptr noundef %.021.i.i, ptr noundef %i.n) #14
  br label %gen_lea_ss_ofs.exit

gen_lea_ss_ofs.exit:                              ; preds = %bb.a, %bb.d
  %.1.i.i = phi ptr [ %i.f, %bb.d ], [ %i.g, %bb.a ]
  %.0.i.i = phi i32 [ %i.l, %bb.d ], [ %i.j, %bb.a ]
  %i.o = icmp eq i32 %i.b, 1
  %i.p = select i1 %i.o, i32 1, i32 3
  %.0.i = select i1 %.not.i, i32 %i.b, i32 %i.p   ; 2 uses
  tail call void @tcg_gen_ext_i64(ptr noundef %i.f, ptr noundef %.1.i.i, i32 noundef %.0.i.i) #14
  %i.q = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.r = getelementptr i8, ptr %0, i64 156
  %.val = load i32, ptr %i.r, align 4
  %i.s = sext i32 %.val to i64
  %i.t = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = ptrtoint ptr %i.q to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.v
  tail call void @tcg_gen_qemu_ld_i64_chk(ptr noundef %i.q, ptr noundef %i.w, i64 noundef range(i64 -2147483648, 2147483648) %i.s, i32 noundef %.0.i, i32 noundef 1) #14
  ret i32 %.0.i
}

declare void @tcg_gen_qemu_ld_i64_chk(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

declare ptr @tcg_constant_i64(i64 noundef) local_unnamed_addr #0

declare void @tcg_gen_or_i64(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare void @tcg_gen_atomic_or_fetch_i64_chk(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @gen_setcc(ptr nofree noundef captures(none) %0, i32 noundef range(i32 0, 16) %1, ptr noundef %2) unnamed_addr #2 {
bb.a:
  %3 = alloca %struct.CCPrepare, align 8          ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call fastcc void @gen_prepare_cc(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef %0, i32 noundef %1, ptr noundef %2)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 33
  %i.b = load i8, ptr %i.a, align 1, !range !9, !noundef !10
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %3, align 8
  %i.e = icmp eq i32 %i.d, 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @tcg_gen_xori_i64(ptr noundef %2, ptr noundef %i.g, i64 noundef 1) #14
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  tail call void @tcg_gen_mov_i64(ptr noundef %2, ptr noundef %i.g) #14
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.i = load i8, ptr %i.h, align 8, !range !9, !noundef !10
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = load i32, ptr %3, align 8                ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  tail call void @tcg_gen_setcond_i64(i32 noundef %i.k, ptr noundef %2, ptr noundef %i.m, ptr noundef %i.o) #14
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.q = load i64, ptr %i.p, align 8
  tail call void @tcg_gen_setcondi_i64(i32 noundef %i.k, ptr noundef %2, ptr noundef %i.m, i64 noundef %i.q) #14
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @gen_prepare_cc(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) initializes((0, 40)) %0, ptr nofree noundef captures(none) %1, i32 noundef range(i32 0, 256) %2, ptr noundef %3) unnamed_addr #2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false), !annotation !7
  %i.a = and i32 %2, 1                            ; 15 uses
  %i.b = lshr i32 %2, 1
  %i.c = and i32 %i.b, 7                          ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.e = load i32, ptr %i.d, align 8              ; 17 uses
  switch i32 %i.e, label %bb.h [
    i32 16, label %cc_op_size.exit
    i32 17, label %cc_op_size.exit
    i32 18, label %cc_op_size.exit
    i32 19, label %cc_op_size.exit
    i32 59, label %bb.e
    i32 24, label %bb.f
    i32 25, label %bb.f
    i32 26, label %bb.f
    i32 27, label %bb.f
  ]

cc_op_size.exit:                                  ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.f = and i32 %i.e, 3                          ; 3 uses
  switch i32 %i.c, label %default.unreachable [
    i32 3, label %bb.b
    i32 6, label %bb.d
    i32 7, label %bb.c
    i32 0, label %bb.i
    i32 1, label %bb.m
    i32 2, label %.thread182
    i32 4, label %.thread186
    i32 5, label %bb.ak
  ]

bb.b:                                             ; preds = %cc_op_size.exit
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  tail call void @tcg_gen_ext_i64(ptr noundef %i.h, ptr noundef %i.h, i32 noundef %i.f) #14
  %i.i = load ptr, ptr @cpu_cc_src, align 8       ; 2 uses
  tail call void @tcg_gen_ext_i64(ptr noundef %i.i, ptr noundef %i.i, i32 noundef %i.f) #14
  %i.j = load ptr, ptr %i.g, align 8
  %i.k = load ptr, ptr @cpu_cc_src, align 8
  %.sroa.843.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.843.0..sroa_idx, i8 0, i64 6, i1 false)
  store i32 15, ptr %0, align 8
  %.sroa.237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %.sroa.237.0..sroa_idx, align 4
  %.sroa.338.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %.sroa.338.0..sroa_idx, align 8
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.k, ptr %.sroa.439.0..sroa_idx, align 8
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.540.0..sroa_idx, align 8
  %.sroa.641.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %.sroa.641.0..sroa_idx, align 8
  %.sroa.742.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 0, ptr %.sroa.742.0..sroa_idx, align 1
  br label %bb.ar

bb.c:                                             ; preds = %cc_op_size.exit
  br label %bb.d

bb.d:                                             ; preds = %cc_op_size.exit, %bb.c
  %.091 = phi i32 [ 7, %bb.c ], [ 2, %cc_op_size.exit ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = or disjoint i32 %i.f, 8                  ; 2 uses
  tail call void @tcg_gen_ext_i64(ptr noundef %i.m, ptr noundef %i.m, i32 noundef %i.n) #14
  %i.o = load ptr, ptr @cpu_cc_src, align 8       ; 2 uses
  tail call void @tcg_gen_ext_i64(ptr noundef %i.o, ptr noundef %i.o, i32 noundef %i.n) #14
  %i.p = load ptr, ptr %i.l, align 8
  %i.q = load ptr, ptr @cpu_cc_src, align 8
  %.sroa.835.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.835.0..sroa_idx, i8 0, i64 6, i1 false)
  store i32 %.091, ptr %0, align 8
  %.sroa.229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %.sroa.229.0..sroa_idx, align 4
  %.sroa.330.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %.sroa.330.0..sroa_idx, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.q, ptr %.sroa.431.0..sroa_idx, align 8
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.532.0..sroa_idx, align 8
  %.sroa.633.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %.sroa.633.0..sroa_idx, align 8
  %.sroa.734.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 0, ptr %.sroa.734.0..sroa_idx, align 1
  br label %bb.ar

bb.e:                                             ; preds = %bb.a
  %i.r = icmp eq i32 %i.c, 1
  %i.s = and i32 %2, 10
  %i.t = icmp eq i32 %i.s, 8
  %or.cond3 = or i1 %i.t, %i.r
  br i1 %or.cond3, label %.thread193, label %bb.h

.thread193:                                       ; preds = %bb.e
  %i.u = xor i32 %i.a, 1
  br label %cc_op_size.exit.i103

bb.f:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  switch i32 %i.c, label %default.unreachable [
    i32 3, label %.thread182
    i32 6, label %.thread186
    i32 7, label %bb.g
    i32 0, label %bb.i
    i32 1, label %bb.m
    i32 2, label %.thread182
    i32 4, label %.thread186
    i32 5, label %bb.ak
  ]

bb.g:                                             ; preds = %bb.f
  %i.v = add nsw i32 %i.e, -24
  %i.w = load ptr, ptr @cpu_cc_dst, align 8       ; 2 uses
  %i.x = or i32 %i.v, 8
  tail call void @tcg_gen_ext_i64(ptr noundef %i.w, ptr noundef %i.w, i32 noundef %i.x) #14
  %i.y = load ptr, ptr @cpu_cc_dst, align 8
  %.sroa.827.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.827.0..sroa_idx, i8 0, i64 6, i1 false)
  store i32 7, ptr %0, align 8
  %.sroa.221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %.sroa.221.0..sroa_idx, align 4
  %.sroa.322.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %.sroa.322.0..sroa_idx, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %.sroa.423.0..sroa_idx, i8 0, i64 18, i1 false)
  br label %bb.ar

bb.h:                                             ; preds = %bb.e, %bb.a
  switch i32 %i.c, label %default.unreachable [
    i32 0, label %bb.i
    i32 1, label %bb.m
    i32 2, label %.thread182
    i32 3, label %bb.af
    i32 4, label %.thread186
    i32 5, label %bb.ak
    i32 6, label %bb.al
    i32 7, label %bb.ao
  ]

bb.i:                                             ; preds = %bb.f, %cc_op_size.exit, %bb.h
  switch i32 %i.e, label %bb.l [
    i32 2, label %bb.j
    i32 3, label %bb.j
    i32 59, label %gen_prepare_eflags_o.exit
    i32 55, label %gen_prepare_eflags_o.exit
    i32 24, label %gen_prepare_eflags_o.exit
    i32 25, label %gen_prepare_eflags_o.exit
    i32 26, label %gen_prepare_eflags_o.exit
    i32 27, label %gen_prepare_eflags_o.exit
    i32 4, label %bb.k
    i32 5, label %bb.k
    i32 6, label %bb.k
    i32 7, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.z = load ptr, ptr @cpu_cc_src2, align 8, !noalias !22
  br label %gen_prepare_eflags_o.exit

bb.k:                                             ; preds = %bb.i, %bb.i, %bb.i, %bb.i
  %i.aa = load ptr, ptr @cpu_cc_src, align 8, !noalias !22
  br label %gen_prepare_eflags_o.exit

bb.l:                                             ; preds = %bb.i
  %i.ab = load ptr, ptr @cpu_cc_src, align 8, !noalias !22
  tail call fastcc void @gen_mov_eflags(ptr noundef nonnull %1, ptr noundef %i.ab), !noalias !22
  tail call fastcc void @set_cc_op_1(ptr noundef nonnull %1, i32 noundef 0, i1 noundef zeroext true), !noalias !22
  %i.ac = load ptr, ptr @cpu_cc_src, align 8, !noalias !22
  br label %gen_prepare_eflags_o.exit

gen_prepare_eflags_o.exit:                        ; preds = %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.j, %bb.k, %bb.l
  %.sroa.10179.0 = phi ptr [ %i.ac, %bb.l ], [ %i.z, %bb.j ], [ %i.aa, %bb.k ], [ null, %bb.i ], [ null, %bb.i ], [ null, %bb.i ], [ null, %bb.i ], [ null, %bb.i ], [ null, %bb.i ]
  %.sroa.0177.0 = phi i32 [ 13, %bb.l ], [ 9, %bb.j ], [ 9, %bb.k ], [ 0, %bb.i ], [ 0, %bb.i ], [ 0, %bb.i ], [ 0, %bb.i ], [ 0, %bb.i ], [ 0, %bb.i ] ; 2 uses
  %i.ad = phi <2 x i64> [ <i64 2048, i64 0>, %bb.l ], [ <i64 0, i64 256>, %bb.j ], [ zeroinitializer, %bb.k ], [ zeroinitializer, %bb.i ], [ zeroinitializer, %bb.i ], [ zeroinitializer, %bb.i ], [ zeroinitializer, %bb.i ], [ zeroinitializer, %bb.i ], [ zeroinitializer, %bb.i ]
  store i32 %.sroa.0177.0, ptr %0, align 8
  %.sroa.7178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %.sroa.7178.0..sroa_idx, align 4
  %.sroa.10179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10179.0, ptr %.sroa.10179.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x i64> %i.ad, ptr %.sroa.16.0..sroa_idx, align 8
  br label %bb.ar

bb.m:                                             ; preds = %bb.f, %cc_op_size.exit, %bb.h
  switch i32 %i.e, label %bb.t [
    i32 16, label %bb.n
    i32 17, label %bb.n
    i32 18, label %bb.n
    i32 19, label %bb.n
    i32 8, label %cc_op_size.exit.i
    i32 9, label %cc_op_size.exit.i
    i32 10, label %cc_op_size.exit.i
    i32 11, label %cc_op_size.exit.i
    i32 55, label %gen_prepare_eflags_c.exit
    i32 24, label %gen_prepare_eflags_c.exit
    i32 25, label %gen_prepare_eflags_c.exit
    i32 26, label %gen_prepare_eflags_c.exit
    i32 27, label %gen_prepare_eflags_c.exit
    i32 32, label %bb.o
    i32 33, label %bb.o
    i32 34, label %bb.o
    i32 35, label %bb.o
    i32 28, label %bb.o
    i32 29, label %bb.o
    i32 30, label %bb.o
    i32 31, label %bb.o
    i32 36, label %cc_op_size.exit21.i
    i32 37, label %cc_op_size.exit21.i
    i32 38, label %cc_op_size.exit21.i
    i32 39, label %cc_op_size.exit21.i
    i32 4, label %bb.p
    i32 5, label %bb.p
    i32 6, label %bb.p
    i32 7, label %bb.p
    i32 44, label %cc_op_size.exit23.i
    i32 45, label %cc_op_size.exit23.i
    i32 46, label %cc_op_size.exit23.i
    i32 47, label %cc_op_size.exit23.i
    i32 48, label %cc_op_size.exit26.i
    i32 49, label %cc_op_size.exit26.i
    i32 50, label %cc_op_size.exit26.i
    i32 51, label %cc_op_size.exit26.i
    i32 59, label %bb.q
    i32 1, label %bb.r
    i32 3, label %bb.r
    i32 0, label %bb.s
    i32 40, label %bb.s
    i32 41, label %bb.s
    i32 42, label %bb.s
    i32 43, label %bb.s
  ]

bb.n:                                             ; preds = %bb.m, %bb.m, %bb.m, %bb.m
  %i.ae = add nsw i32 %i.e, -16                   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !25 ; 2 uses
  tail call void @tcg_gen_ext_i64(ptr noundef %i.ag, ptr noundef %i.ag, i32 noundef %i.ae) #14
  %i.ah = load ptr, ptr @cpu_cc_src, align 8, !noalias !25 ; 2 uses
  tail call void @tcg_gen_ext_i64(ptr noundef %i.ah, ptr noundef %i.ah, i32 noundef %i.ae) #14
  %i.ai = load ptr, ptr %i.af, align 8, !noalias !25
  %i.aj = load ptr, ptr @cpu_cc_src, align 8, !noalias !25
  br label %gen_prepare_eflags_c.exit

cc_op_size.exit.i:                                ; preds = %bb.m, %bb.m, %bb.m, %bb.m
  %i.ak = and i32 %i.e, 3                         ; 2 uses
  %i.al = load ptr, ptr @cpu_cc_dst, align 8, !noalias !25 ; 2 uses
  tail call void @tcg_gen_ext_i64(ptr noundef %i.al, ptr noundef %i.al, i32 noundef %i.ak) #14
  %i.am = load ptr, ptr @cpu_cc_src, align 8, !noalias !25 ; 2 uses
  tail call void @tcg_gen_ext_i64(ptr noundef %i.am, ptr noundef %i.am, i32 noundef %i.ak) #14
  %i.an = load ptr, ptr @cpu_cc_dst, align 8, !noalias !25
  %i.ao = load ptr, ptr @cpu_cc_src, align 8, !noalias !25
  br label %gen_prepare_eflags_c.exit

bb.o:                                             ; preds = %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m
  %i.ap = load ptr, ptr @cpu_cc_src, align 8, !noalias !25
  br label %gen_prepare_eflags_c.exit

cc_op_size.exit21.i:                              ; preds = %bb.m, %bb.m, %bb.m, %bb.m
  %i.aq = and i32 %i.e, 3                         ; 2 uses
  %i.ar = load ptr, ptr @cpu_cc_src, align 8, !noalias !25
  %i.as = icmp eq i32 %i.aq, 3                    ; 2 uses
  %i.at = shl nuw nsw i32 8, %i.aq
  %i.au = add nsw i32 %i.at, -1
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = shl nuw nsw i64 1, %i.av
  %.sink3.i.i = select i1 %i.as, i32 2, i32 13
  %.sink.i.i = select i1 %i.as, i64 0, i64 %i.aw
  br label %gen_prepare_eflags_c.exit

bb.p:                                             ; preds = %bb.m, %bb.m, %bb.m, %bb.m
  %i.ax = load ptr, ptr @cpu_cc_src, align 8, !noalias !25
  br label %gen_prepare_eflags_c.exit

cc_op_size.exit23.i:                              ; preds = %bb.m, %bb.m, %bb.m, %bb.m
  %i.ay = and i32 %i.e, 3                         ; 2 uses
  %i.az = load ptr, ptr @cpu_cc_src, align 8, !noalias !25
  %i.ba = icmp eq i32 %i.ay, 3                    ; 2 uses
  %.neg.i.i = shl nsw i32 -8, %i.ay
  %i.bb = add nsw i32 %.neg.i.i, 64
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = lshr i64 -1, %i.bc
  %.sink5.i.i = select i1 %i.ba, i32 8, i32 12
  %.sink.i24.i = select i1 %i.ba, i64 0, i64 %i.bd
  br label %gen_prepare_eflags_c.exit

cc_op_size.exit26.i:                              ; preds = %bb.m, %bb.m, %bb.m, %bb.m
  %i.be = and i32 %i.e, 3                         ; 2 uses
  %i.bf = load ptr, ptr @cpu_cc_src, align 8, !noalias !25
  %i.bg = icmp eq i32 %i.be, 3                    ; 2 uses
  %.neg.i27.i = shl nsw i32 -8, %i.be
  %i.bh = add nsw i32 %.neg.i27.i, 64
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = lshr i64 -1, %i.bi
  %.sink5.i28.i = select i1 %i.bg, i32 9, i32 13
  %.sink.i29.i = select i1 %i.bg, i64 0, i64 %i.bj
  br label %gen_prepare_eflags_c.exit

bb.q:                                             ; preds = %bb.m
  %i.bk = load ptr, ptr @cpu_cc_dst, align 8, !noalias !25
  br label %gen_prepare_eflags_c.exit

bb.r:                                             ; preds = %bb.m, %bb.m
  %i.bl = load ptr, ptr @cpu_cc_dst, align 8, !noalias !25
  br label %gen_prepare_eflags_c.exit

bb.s:                                             ; preds = %bb.m, %bb.m, %bb.m, %bb.m, %bb.m
  %i.bm = load ptr, ptr @cpu_cc_src, align 8, !noalias !25
  br label %gen_prepare_eflags_c.exit

bb.t:                                             ; preds = %bb.m
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 151 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !range !9, !noalias !25, !noundef !10
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.u, label %gen_update_cc_op.exit.i

bb.u:                                             ; preds = %bb.t
  %i.bq = load ptr, ptr @cpu_cc_op, align 8, !noalias !25
  tail call void @tcg_gen_movi_i32(ptr noundef %i.bq, i32 noundef %i.e) #14
  store i8 0, ptr %i.bn, align 1, !noalias !25
  br label %gen_update_cc_op.exit.i

gen_update_cc_op.exit.i:                          ; preds = %bb.u, %bb.t
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %gen_update_cc_op.exit.i
  %i.br = tail call ptr @tcg_temp_new_i64() #14
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %gen_update_cc_op.exit.i
  %.0.i = phi ptr [ %3, %gen_update_cc_op.exit.i ], [ %i.br, %bb.v ] ; 2 uses
  %i.bs = load ptr, ptr @cpu_cc_dst, align 8, !noalias !25
  %i.bt = load ptr, ptr @cpu_cc_src, align 8, !noalias !25
  %i.bu = load ptr, ptr @cpu_cc_src2, align 8, !noalias !25
  %i.bv = load ptr, ptr @cpu_cc_op, align 8, !noalias !25
  %i.bw = load ptr, ptr @helper_info_cc_compute_c, align 8, !noalias !25
  %i.bx = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !25 ; 5 uses
  %i.bz = ptrtoint ptr %.0.i to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bz
  %i.cb = ptrtoint ptr %i.bs to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cb
  %i.cd = ptrtoint ptr %i.bt to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cd
  %i.cf = ptrtoint ptr %i.bu to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cf
  %i.ch = ptrtoint ptr %i.bv to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.ch
  tail call void @tcg_gen_call4(ptr noundef %i.bw, ptr noundef nonnull @helper_info_cc_compute_c, ptr noundef %i.ca, ptr noundef %i.cc, ptr noundef %i.ce, ptr noundef %i.cg, ptr noundef %i.ci) #14
  br label %gen_prepare_eflags_c.exit

gen_prepare_eflags_c.exit:                        ; preds = %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.n, %cc_op_size.exit.i, %bb.o, %cc_op_size.exit21.i, %bb.p, %cc_op_size.exit23.i, %cc_op_size.exit26.i, %bb.q, %bb.r, %bb.s, %bb.w
  %.sroa.0121.0 = phi i32 [ 9, %bb.w ], [ 10, %bb.n ], [ 10, %cc_op_size.exit.i ], [ 13, %bb.s ], [ 9, %bb.o ], [ %.sink3.i.i, %cc_op_size.exit21.i ], [ 9, %bb.p ], [ %.sink5.i.i, %cc_op_size.exit23.i ], [ %.sink5.i28.i, %cc_op_size.exit26.i ], [ 9, %bb.q ], [ 9, %bb.r ], [ 0, %bb.m ], [ 0, %bb.m ], [ 0, %bb.m ], [ 0, %bb.m ], [ 0, %bb.m ] ; 2 uses
  %.sroa.26.0 = phi ptr [ %.0.i, %bb.w ], [ %i.ai, %bb.n ], [ %i.an, %cc_op_size.exit.i ], [ %i.bm, %bb.s ], [ %i.ap, %bb.o ], [ %i.ar, %cc_op_size.exit21.i ], [ %i.ax, %bb.p ], [ %i.az, %cc_op_size.exit23.i ], [ %i.bf, %cc_op_size.exit26.i ], [ %i.bk, %bb.q ], [ %i.bl, %bb.r ], [ null, %bb.m ], [ null, %bb.m ], [ null, %bb.m ], [ null, %bb.m ], [ null, %bb.m ]
  %.sroa.37.0 = phi ptr [ null, %bb.w ], [ %i.aj, %bb.n ], [ %i.ao, %cc_op_size.exit.i ], [ null, %bb.s ], [ null, %bb.o ], [ null, %cc_op_size.exit21.i ], [ null, %bb.p ], [ null, %cc_op_size.exit23.i ], [ null, %cc_op_size.exit26.i ], [ null, %bb.q ], [ null, %bb.r ], [ null, %bb.m ], [ null, %bb.m ], [ null, %bb.m ], [ null, %bb.m ], [ null, %bb.m ]
  %.sroa.48.0 = phi i64 [ 0, %bb.w ], [ 0, %bb.n ], [ 0, %cc_op_size.exit.i ], [ 1, %bb.s ], [ 0, %bb.o ], [ %.sink.i.i, %cc_op_size.exit21.i ], [ 0, %bb.p ], [ %.sink.i24.i, %cc_op_size.exit23.i ], [ %.sink.i29.i, %cc_op_size.exit26.i ], [ 0, %bb.q ], [ 0, %bb.r ], [ 0, %bb.m ], [ 0, %bb.m ], [ 0, %bb.m ], [ 0, %bb.m ], [ 0, %bb.m ]
  %.sroa.54.0 = phi i64 [ 256, %bb.w ], [ 1, %bb.n ], [ 1, %cc_op_size.exit.i ], [ 0, %bb.s ], [ 256, %bb.o ], [ 0, %cc_op_size.exit21.i ], [ 0, %bb.p ], [ 0, %cc_op_size.exit23.i ], [ 0, %cc_op_size.exit26.i ], [ 0, %bb.q ], [ 256, %bb.r ], [ 0, %bb.m ], [ 0, %bb.m ], [ 0, %bb.m ], [ 0, %bb.m ], [ 0, %bb.m ]
  store i32 %.sroa.0121.0, ptr %0, align 8
  %.sroa.15122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %.sroa.15122.0..sroa_idx, align 4
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.26.0, ptr %.sroa.26.0..sroa_idx, align 8
  %.sroa.37.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.37.0, ptr %.sroa.37.0..sroa_idx, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.48.0, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.54.0, ptr %.sroa.54.0..sroa_idx, align 8
  br label %bb.ar

.thread182:                                       ; preds = %bb.f, %bb.f, %cc_op_size.exit, %bb.h
  switch i32 %i.e, label %bb.ad [
    i32 0, label %bb.x
    i32 1, label %bb.x
    i32 2, label %bb.x
    i32 3, label %bb.x
    i32 60, label %bb.y
    i32 55, label %bb.ac
  ]

bb.x:                                             ; preds = %.thread182, %.thread182, %.thread182, %.thread182
  %i.cj = load ptr, ptr @cpu_cc_src, align 8, !noalias !28
  br label %gen_prepare_eflags_z.exit

bb.y:                                             ; preds = %.thread182
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 151 ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 1, !range !9, !noalias !28, !noundef !10
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %bb.z, label %gen_update_cc_op.exit.i100

bb.z:                                             ; preds = %bb.y
  %i.cn = load ptr, ptr @cpu_cc_op, align 8, !noalias !28
  tail call void @tcg_gen_movi_i32(ptr noundef %i.cn, i32 noundef 60) #14, !noalias !28
  store i8 0, ptr %i.ck, align 1, !noalias !28
  br label %gen_update_cc_op.exit.i100

gen_update_cc_op.exit.i100:                       ; preds = %bb.z, %bb.y
  %.not.i101 = icmp eq ptr %3, null
  br i1 %.not.i101, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %gen_update_cc_op.exit.i100
  %i.co = tail call ptr @tcg_temp_new_i64() #14, !noalias !28
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %gen_update_cc_op.exit.i100
  %.0.i102 = phi ptr [ %3, %gen_update_cc_op.exit.i100 ], [ %i.co, %bb.aa ] ; 2 uses
  %i.cp = load ptr, ptr @cpu_cc_dst, align 8, !noalias !28
  %i.cq = load ptr, ptr @cpu_cc_src, align 8, !noalias !28
  %i.cr = load ptr, ptr @cpu_cc_op, align 8, !noalias !28
  %i.cs = load ptr, ptr @helper_info_cc_compute_nz, align 8, !noalias !28
  %i.ct = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.cu = load ptr, ptr %i.ct, align 8, !noalias !28 ; 4 uses
  %i.cv = ptrtoint ptr %.0.i102 to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cv
  %i.cx = ptrtoint ptr %i.cp to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cx
  %i.cz = ptrtoint ptr %i.cq to i64
  %i.da = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cz
  %i.db = ptrtoint ptr %i.cr to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.db
  tail call void @tcg_gen_call3(ptr noundef %i.cs, ptr noundef nonnull @helper_info_cc_compute_nz, ptr noundef %i.cw, ptr noundef %i.cy, ptr noundef %i.da, ptr noundef %i.dc) #14, !noalias !28
  br label %gen_prepare_eflags_z.exit

bb.ac:                                            ; preds = %.thread182
  %i.dd = load ptr, ptr @cpu_cc_dst, align 8, !noalias !28
  br label %gen_prepare_eflags_z.exit

bb.ad:                                            ; preds = %.thread182
  %i.de = add i32 %i.e, -4
  %or.cond.i.i = icmp ult i32 %i.de, 56
  br i1 %or.cond.i.i, label %cc_op_size.exit.i103, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @__assert_fail(ptr noundef nonnull @.str.804, ptr noundef nonnull @.str.805, i32 noundef 1634, ptr noundef nonnull @__PRETTY_FUNCTION__.cc_op_size) #16, !noalias !28
  unreachable

cc_op_size.exit.i103:                             ; preds = %.thread193, %bb.ad
  %.088185192196 = phi i32 [ %i.u, %.thread193 ], [ %i.a, %bb.ad ]
  %i.df = and i32 %i.e, 3                         ; 2 uses
  %i.dg = load ptr, ptr @cpu_cc_dst, align 8, !noalias !28
  %i.dh = icmp eq i32 %i.df, 3                    ; 2 uses
  %.neg.i.i104 = shl nsw i32 -8, %i.df
  %i.di = add nsw i32 %.neg.i.i104, 64
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = lshr i64 -1, %i.dj
  %.sink5.i.i105 = select i1 %i.dh, i32 8, i32 12
  %.sink.i.i106 = select i1 %i.dh, i64 0, i64 %i.dk
  br label %gen_prepare_eflags_z.exit

gen_prepare_eflags_z.exit:                        ; preds = %bb.x, %bb.ab, %bb.ac, %cc_op_size.exit.i103
  %.088185191 = phi i32 [ %.088185192196, %cc_op_size.exit.i103 ], [ %i.a, %bb.x ], [ %i.a, %bb.ab ], [ %i.a, %bb.ac ]
  %.sroa.19.0 = phi i64 [ %.sink.i.i106, %cc_op_size.exit.i103 ], [ 64, %bb.x ], [ 0, %bb.ab ], [ 0, %bb.ac ]
  %.sroa.11.0 = phi ptr [ %i.dg, %cc_op_size.exit.i103 ], [ %i.cj, %bb.x ], [ %.0.i102, %bb.ab ], [ %i.dd, %bb.ac ]
  %.sroa.0119.0 = phi i32 [ %.sink5.i.i105, %cc_op_size.exit.i103 ], [ 13, %bb.x ], [ 8, %bb.ab ], [ 8, %bb.ac ] ; 2 uses
  store i32 %.sroa.0119.0, ptr %0, align 8
  %.sroa.7120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %.sroa.7120.0..sroa_idx, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.11.0, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.19.0, ptr %.sroa.19.0..sroa_idx, align 8
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %.sroa.21.0..sroa_idx, align 8
  br label %bb.ar

bb.af:                                            ; preds = %bb.h
  %i.dl = load ptr, ptr @cpu_cc_src, align 8
  tail call fastcc void @gen_mov_eflags(ptr noundef nonnull %1, ptr noundef %i.dl)
  tail call fastcc void @set_cc_op_1(ptr noundef nonnull %1, i32 noundef 0, i1 noundef zeroext true)
  %i.dm = load ptr, ptr @cpu_cc_src, align 8
  %.sroa.819.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.819.0..sroa_idx, i8 0, i64 6, i1 false)
  store i32 13, ptr %0, align 8
  %.sroa.213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %.sroa.213.0..sroa_idx, align 4
  %.sroa.314.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dm, ptr %.sroa.314.0..sroa_idx, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 65, ptr %.sroa.516.0..sroa_idx, align 8
  %.sroa.617.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %.sroa.617.0..sroa_idx, align 8
  %.sroa.718.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 0, ptr %.sroa.718.0..sroa_idx, align 1
  br label %bb.ar

.thread186:                                       ; preds = %bb.f, %bb.f, %cc_op_size.exit, %bb.h
  switch i32 %i.e, label %bb.ai [
    i32 60, label %bb.ag
    i32 0, label %bb.ah
    i32 1, label %bb.ah
    i32 2, label %bb.ah
    i32 3, label %bb.ah
    i32 55, label %gen_prepare_eflags_s.exit
  ]

bb.ag:                                            ; preds = %.thread186
  %i.dn = load ptr, ptr @cpu_cc_src, align 8, !noalias !31
  tail call fastcc void @gen_mov_eflags(ptr noundef nonnull %1, ptr noundef %i.dn), !noalias !31
  tail call fastcc void @set_cc_op_1(ptr noundef nonnull %1, i32 noundef 0, i1 noundef zeroext true), !noalias !31
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.thread186, %.thread186, %.thread186, %.thread186
  %i.do = load ptr, ptr @cpu_cc_src, align 8, !noalias !31
  br label %gen_prepare_eflags_s.exit

bb.ai:                                            ; preds = %.thread186
  %i.dp = add i32 %i.e, -4
  %or.cond.i.i107 = icmp ult i32 %i.dp, 56
  br i1 %or.cond.i.i107, label %cc_op_size.exit.i108, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @__assert_fail(ptr noundef nonnull @.str.804, ptr noundef nonnull @.str.805, i32 noundef 1634, ptr noundef nonnull @__PRETTY_FUNCTION__.cc_op_size) #16, !noalias !31
  unreachable

cc_op_size.exit.i108:                             ; preds = %bb.ai
  %i.dq = load ptr, ptr @cpu_cc_dst, align 8, !noalias !31
  %i.dr = and i32 %i.e, 3                         ; 2 uses
  %i.ds = icmp eq i32 %i.dr, 3                    ; 2 uses
  %i.dt = shl nuw nsw i32 8, %i.dr
  %i.du = add nsw i32 %i.dt, -1
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = shl nuw nsw i64 1, %i.dv
  %.sink3.i.i109 = select i1 %i.ds, i32 2, i32 13
  %.sink.i.i110 = select i1 %i.ds, i64 0, i64 %i.dw
  br label %gen_prepare_eflags_s.exit

gen_prepare_eflags_s.exit:                        ; preds = %.thread186, %bb.ah, %cc_op_size.exit.i108
  %.sroa.0116.0 = phi i32 [ %.sink3.i.i109, %cc_op_size.exit.i108 ], [ 13, %bb.ah ], [ 0, %.thread186 ] ; 2 uses
  %.sroa.8118.0 = phi ptr [ %i.dq, %cc_op_size.exit.i108 ], [ %i.do, %bb.ah ], [ null, %.thread186 ]
  %.sroa.12.0 = phi i64 [ %.sink.i.i110, %cc_op_size.exit.i108 ], [ 128, %bb.ah ], [ 0, %.thread186 ]
  store i32 %.sroa.0116.0, ptr %0, align 8
  %.sroa.6117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %.sroa.6117.0..sroa_idx, align 4
  %.sroa.8118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.8118.0, ptr %.sroa.8118.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.12.0, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %.sroa.14.0..sroa_idx, align 8
  br label %bb.ar

bb.ak:                                            ; preds = %bb.f, %cc_op_size.exit, %bb.h
  %i.dx = load ptr, ptr @cpu_cc_src, align 8, !noalias !34
  tail call fastcc void @gen_mov_eflags(ptr noundef nonnull %1, ptr noundef %i.dx), !noalias !34
  tail call fastcc void @set_cc_op_1(ptr noundef nonnull %1, i32 noundef 0, i1 noundef zeroext true), !noalias !34
  %i.dy = load ptr, ptr @cpu_cc_src, align 8, !noalias !34
  store i32 13, ptr %0, align 8
  %.sroa.4.0..sroa_idx111 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %.sroa.4.0..sroa_idx111, align 4
  %.sroa.5.0..sroa_idx112 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dy, ptr %.sroa.5.0..sroa_idx112, align 8
  %.sroa.6.0..sroa_idx113 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %.sroa.6.0..sroa_idx113, align 8
  %.sroa.7.0..sroa_idx114 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 4, ptr %.sroa.7.0..sroa_idx114, align 8
  %.sroa.8115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %.sroa.8115.0..sroa_idx, align 8
  br label %bb.ar

bb.al:                                            ; preds = %bb.h
  %i.dz = load ptr, ptr @cpu_cc_src, align 8
  tail call fastcc void @gen_mov_eflags(ptr noundef nonnull %1, ptr noundef %i.dz)
  tail call fastcc void @set_cc_op_1(ptr noundef nonnull %1, i32 noundef 0, i1 noundef zeroext true)
  %.not = icmp eq ptr %3, null
  %i.ea = load ptr, ptr @cpu_cc_src, align 8      ; 2 uses
  %i.eb = icmp eq ptr %3, %i.ea
  %or.cond = select i1 %.not, i1 true, i1 %i.eb
  br i1 %or.cond, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ec = tail call ptr @tcg_temp_new_i64() #14
  %.pre198 = load ptr, ptr @cpu_cc_src, align 8
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.am
  %i.ed = phi ptr [ %.pre198, %bb.am ], [ %i.ea, %bb.al ]
  %.0 = phi ptr [ %i.ec, %bb.am ], [ %3, %bb.al ] ; 2 uses
  tail call void @tcg_gen_addi_i64(ptr noundef %.0, ptr noundef %i.ed, i64 noundef 1920) #14
  %.sroa.811.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.811.0..sroa_idx, i8 0, i64 6, i1 false)
  store i32 13, ptr %0, align 8
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %.sroa.25.0..sroa_idx, align 4
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0, ptr %.sroa.36.0..sroa_idx, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 2048, ptr %.sroa.58.0..sroa_idx, align 8
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %.sroa.69.0..sroa_idx, align 8
  %.sroa.710.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 0, ptr %.sroa.710.0..sroa_idx, align 1
  br label %bb.ar

default.unreachable:                              ; preds = %bb.h, %bb.f, %cc_op_size.exit
  unreachable

bb.ao:                                            ; preds = %bb.h
  %i.ee = load ptr, ptr @cpu_cc_src, align 8
  tail call fastcc void @gen_mov_eflags(ptr noundef nonnull %1, ptr noundef %i.ee)
  tail call fastcc void @set_cc_op_1(ptr noundef nonnull %1, i32 noundef 0, i1 noundef zeroext true)
  %.not94 = icmp eq ptr %3, null
  %i.ef = load ptr, ptr @cpu_cc_src, align 8      ; 2 uses
  %i.eg = icmp eq ptr %3, %i.ef
  %or.cond99 = select i1 %.not94, i1 true, i1 %i.eg
  br i1 %or.cond99, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.eh = tail call ptr @tcg_temp_new_i64() #14
  %.pre = load ptr, ptr @cpu_cc_src, align 8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  %i.ei = phi ptr [ %.pre, %bb.ap ], [ %i.ef, %bb.ao ]
  %.1 = phi ptr [ %i.eh, %bb.ap ], [ %3, %bb.ao ] ; 2 uses
  tail call void @tcg_gen_addi_i64(ptr noundef %.1, ptr noundef %i.ei, i64 noundef 1920) #14
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.8.0..sroa_idx, i8 0, i64 6, i1 false)
  store i32 13, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %.sroa.2.0..sroa_idx, align 4
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 2112, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 0, ptr %.sroa.7.0..sroa_idx, align 1
  br label %bb.ar

bb.ar:                                            ; preds = %gen_prepare_eflags_o.exit, %gen_prepare_eflags_c.exit, %gen_prepare_eflags_z.exit, %bb.af, %gen_prepare_eflags_s.exit, %bb.ak, %bb.an, %bb.aq, %bb.b, %bb.d, %bb.g
  %i.ej = phi i32 [ 13, %bb.aq ], [ %.sroa.0177.0, %gen_prepare_eflags_o.exit ], [ %.sroa.0121.0, %gen_prepare_eflags_c.exit ], [ %.sroa.0119.0, %gen_prepare_eflags_z.exit ], [ 13, %bb.af ], [ %.sroa.0116.0, %gen_prepare_eflags_s.exit ], [ 13, %bb.ak ], [ 13, %bb.an ], [ 15, %bb.b ], [ %.091, %bb.d ], [ 7, %bb.g ]
  %.189 = phi i32 [ %i.a, %bb.aq ], [ %i.a, %gen_prepare_eflags_o.exit ], [ %i.a, %gen_prepare_eflags_c.exit ], [ %.088185191, %gen_prepare_eflags_z.exit ], [ %i.a, %bb.af ], [ %i.a, %gen_prepare_eflags_s.exit ], [ %i.a, %bb.ak ], [ %i.a, %bb.an ], [ %i.a, %bb.b ], [ %i.a, %bb.d ], [ %i.a, %bb.g ]
  %.not95 = icmp eq i32 %.189, 0
  br i1 %.not95, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ek = xor i32 %i.ej, 1
  store i32 %i.ek, ptr %0, align 8
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  ret void
}

declare void @tcg_gen_xori_i64(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

declare void @tcg_gen_setcond_i64(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare void @tcg_gen_setcondi_i64(i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

declare void @tcg_gen_movi_i32(ptr noundef, i32 noundef) local_unnamed_addr #0

declare void @tcg_gen_call4(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare void @tcg_gen_call3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @gen_mov_eflags(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8              ; 4 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @cpu_cc_src, align 8
  tail call void @tcg_gen_mov_i64(ptr noundef %1, ptr noundef %i.d) #14
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @cpu_cc_dst, align 8       ; 2 uses
  %i.f = load ptr, ptr @cpu_cc_src, align 8       ; 2 uses
  %i.g = load ptr, ptr @cpu_cc_src2, align 8      ; 2 uses
  %i.h = icmp ult i32 %i.b, 61
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.832, ptr noundef nonnull @.str.776, i32 noundef 313, ptr noundef nonnull @__PRETTY_FUNCTION__.cc_op_live) #16
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.i = zext nneg i32 %i.b to i64                ; 2 uses
  %i.j = shl nuw nsw i64 1, %i.i                  ; 2 uses
  %i.k = and i64 %i.j, 535928355657089024
  %.not.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.not.i, label %cc_op_live.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str.833, ptr noundef nonnull @.str.776, i32 noundef 321, ptr noundef nonnull @__PRETTY_FUNCTION__.cc_op_live) #16
  unreachable

cc_op_live.exit:                                  ; preds = %bb.e
  %i.l = and i64 %i.j, 1152921504622637064
  %.not.not = icmp eq i64 %i.l, 0
  br i1 %.not.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %cc_op_live.exit
  %i.m = getelementptr inbounds nuw i8, ptr @cc_op_live_, i64 %i.i
  %i.n = load i8, ptr %i.m, align 1
  %i.o = xor i8 %i.n, 7
  %i.p = zext i8 %i.o to i32                      ; 3 uses
  %i.q = tail call ptr @tcg_constant_i64(i64 noundef 0) #14 ; 3 uses
  %i.r = and i32 %i.p, 1
  %.not25 = icmp eq i32 %i.r, 0
  %spec.select = select i1 %.not25, ptr %i.e, ptr %i.q
  %i.s = and i32 %i.p, 2
  %.not26 = icmp eq i32 %i.s, 0
  %.020 = select i1 %.not26, ptr %i.f, ptr %i.q
  %i.t = and i32 %i.p, 4
  %.not27 = icmp eq i32 %i.t, 0
  %.018 = select i1 %.not27, ptr %i.g, ptr %i.q
  %.pre = load i32, ptr %i.a, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %cc_op_live.exit
  %i.u = phi i32 [ %.pre, %bb.g ], [ %i.b, %cc_op_live.exit ] ; 2 uses
  %.121 = phi ptr [ %.020, %bb.g ], [ %i.f, %cc_op_live.exit ]
  %.119 = phi ptr [ %.018, %bb.g ], [ %i.g, %cc_op_live.exit ]
  %.1 = phi ptr [ %spec.select, %bb.g ], [ %i.e, %cc_op_live.exit ]
  %.not28 = icmp eq i32 %i.u, 60
  br i1 %.not28, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = tail call ptr @tcg_constant_i32(i32 noundef %i.u) #14
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.w = load ptr, ptr @cpu_cc_op, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.017 = phi ptr [ %i.v, %bb.i ], [ %i.w, %bb.j ]
  %i.x = load ptr, ptr @helper_info_cc_compute_all, align 8
  %i.y = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.z = load ptr, ptr %i.y, align 8              ; 5 uses
  %i.aa = ptrtoint ptr %1 to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aa
  %i.ac = ptrtoint ptr %.1 to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ac
  %i.ae = ptrtoint ptr %.121 to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ae
  %i.ag = ptrtoint ptr %.119 to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ag
  %i.ai = ptrtoint ptr %.017 to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ai
  tail call void @tcg_gen_call4(ptr noundef %i.x, ptr noundef nonnull @helper_info_cc_compute_all, ptr noundef %i.ab, ptr noundef %i.ad, ptr noundef %i.af, ptr noundef %i.ah, ptr noundef %i.aj) #14
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @gen_neg_setcc(ptr nofree noundef captures(none) %0, i32 noundef range(i32 0, 3) %1, ptr noundef %2) unnamed_addr #2 {
bb.a:
  %3 = alloca %struct.CCPrepare, align 8          ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call fastcc void @gen_prepare_cc(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef %0, i32 noundef %1, ptr noundef %2)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 33
  %i.b = load i8, ptr %i.a, align 1, !range !9, !noundef !10
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %3, align 8
  %i.e = icmp eq i32 %i.d, 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @tcg_gen_addi_i64(ptr noundef %2, ptr noundef %i.g, i64 noundef -1) #14
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  tail call void @tcg_gen_neg_i64(ptr noundef %2, ptr noundef %i.g) #14
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.i = load i8, ptr %i.h, align 8, !range !9, !noundef !10
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = load i32, ptr %3, align 8                ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  tail call void @tcg_gen_negsetcond_i64(i32 noundef %i.k, ptr noundef %2, ptr noundef %i.m, ptr noundef %i.o) #14
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.q = load i64, ptr %i.p, align 8
  tail call void @tcg_gen_negsetcondi_i64(i32 noundef %i.k, ptr noundef %2, ptr noundef %i.m, i64 noundef %i.q) #14
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret void
}

declare void @tcg_gen_neg_i64(ptr noundef, ptr noundef) local_unnamed_addr #0

declare void @tcg_gen_sub_i64(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare void @tcg_gen_negsetcond_i64(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare void @tcg_gen_negsetcondi_i64(i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

declare void @tcg_gen_and_i64(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare void @tcg_gen_atomic_and_fetch_i64_chk(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

declare void @tcg_gen_call1(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @set_cc_op_1(ptr nofree noundef captures(none) %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #2 {
bb.a:
  %i.a = zext i1 %2 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8              ; 3 uses
  %i.d = icmp eq i32 %i.c, %1
  br i1 %i.d, label %bb.t, label %bb.b

end_hunk_0
