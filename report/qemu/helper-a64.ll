Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/helper-a64?download=true
inline.NumInlined: 391
inline.NumDeleted: 85
begin_hunk_0_@float64_mul

declare zeroext i16 @float16_squash_input_denormal(i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare zeroext i16 @float16_muladd(i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @float32_muladd(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @float64_muladd(i64 noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i16 @float16_muladd_scalbn(i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @float32_muladd_scalbn(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @float64_muladd_scalbn(i64 noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

declare zeroext i1 @float16_is_signaling_nan(i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare zeroext i16 @float16_silence_nan(i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare zeroext i16 @float16_default_nan(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

declare zeroext i1 @float32_is_signaling_nan(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @float32_silence_nan(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @float32_default_nan(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @float64_is_signaling_nan(i64 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @float64_silence_nan(i64 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @float64_default_nan(ptr noundef) local_unnamed_addr #2

declare i32 @float64_to_float32(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i16 @helper_sme2_ah_fmax_b16(i16 noundef zeroext %0, i16 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call zeroext i16 @bfloat16_squash_input_denormal(i16 noundef zeroext %0, ptr noundef %2) #13 ; 2 uses
  %i.b = tail call zeroext i16 @bfloat16_squash_input_denormal(i16 noundef zeroext %1, ptr noundef %2) #13 ; 5 uses
  %i.c = and i16 %i.a, 32767                      ; 2 uses
  %i.d = icmp eq i16 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i16 %i.b, 32767                      ; 2 uses
  %i.f = icmp eq i16 %i.e, 0
  br i1 %i.f, label %bb.f, label %.thread

bb.c:                                             ; preds = %bb.a
  %i.g = icmp samesign ugt i16 %i.c, 32640
  %i.h = and i16 %i.b, 32767
  %i.i = icmp samesign ugt i16 %i.h, 32640
  %or.cond = select i1 %i.g, i1 true, i1 %i.i
  br i1 %or.cond, label %bb.d, label %bb.e

.thread:                                          ; preds = %bb.b
  %.old19 = icmp samesign ugt i16 %i.e, 32640
  br i1 %.old19, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.thread, %bb.c
  %i.j = load i64, ptr %2, align 4
  %i.k = or i64 %i.j, 1
  br label %.sink.split

bb.e:                                             ; preds = %bb.c, %.thread
  %.val = load i64, ptr %2, align 4               ; 2 uses
  %i.l = and i64 %.val, 2097152
  %i.m = and i64 %.val, -2097153
  store i64 %i.m, ptr %2, align 4
  %i.n = tail call zeroext i16 @bfloat16_minmax(i16 noundef zeroext %i.a, i16 noundef zeroext %i.b, ptr noundef nonnull %2, i32 noundef 0) #13
  %i.o = load i64, ptr %2, align 4
  %i.p = and i64 %i.o, -2097153
  %i.q = or disjoint i64 %i.p, %i.l
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.e
  %.sink = phi i64 [ %i.q, %bb.e ], [ %i.k, %bb.d ]
  %.0.ph = phi i16 [ %i.n, %bb.e ], [ %i.b, %bb.d ]
  store i64 %.sink, ptr %2, align 4
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.b
  %.0 = phi i16 [ %i.b, %bb.b ], [ %.0.ph, %.sink.split ]
  ret i16 %.0
}

declare zeroext i16 @bfloat16_squash_input_denormal(i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i16 @helper_sme2_ah_fmin_b16(i16 noundef zeroext %0, i16 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call zeroext i16 @bfloat16_squash_input_denormal(i16 noundef zeroext %0, ptr noundef %2) #13 ; 2 uses
  %i.b = tail call zeroext i16 @bfloat16_squash_input_denormal(i16 noundef zeroext %1, ptr noundef %2) #13 ; 5 uses
  %i.c = and i16 %i.a, 32767                      ; 2 uses
  %i.d = icmp eq i16 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i16 %i.b, 32767                      ; 2 uses
  %i.f = icmp eq i16 %i.e, 0
  br i1 %i.f, label %bb.f, label %.thread

bb.c:                                             ; preds = %bb.a
  %i.g = icmp samesign ugt i16 %i.c, 32640
  %i.h = and i16 %i.b, 32767
  %i.i = icmp samesign ugt i16 %i.h, 32640
  %or.cond = select i1 %i.g, i1 true, i1 %i.i
  br i1 %or.cond, label %bb.d, label %bb.e

.thread:                                          ; preds = %bb.b
  %.old19 = icmp samesign ugt i16 %i.e, 32640
  br i1 %.old19, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.thread, %bb.c
  %i.j = load i64, ptr %2, align 4
  %i.k = or i64 %i.j, 1
  br label %.sink.split

bb.e:                                             ; preds = %bb.c, %.thread
  %.val = load i64, ptr %2, align 4               ; 2 uses
  %i.l = and i64 %.val, 2097152
  %i.m = and i64 %.val, -2097153
  store i64 %i.m, ptr %2, align 4
  %i.n = tail call zeroext i16 @bfloat16_minmax(i16 noundef zeroext %i.a, i16 noundef zeroext %i.b, ptr noundef nonnull %2, i32 noundef 1) #13
  %i.o = load i64, ptr %2, align 4
  %i.p = and i64 %i.o, -2097153
  %i.q = or disjoint i64 %i.p, %i.l
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.e
  %.sink = phi i64 [ %i.q, %bb.e ], [ %i.k, %bb.d ]
  %.0.ph = phi i16 [ %i.n, %bb.e ], [ %i.b, %bb.d ]
  store i64 %.sink, ptr %2, align 4
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.b
  %.0 = phi i16 [ %i.b, %bb.b ], [ %.0.ph, %.sink.split ]
  ret i16 %.0
}

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @crc32c(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i16 @float16_add(i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare zeroext i16 @float16_sub(i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare zeroext i16 @float16_mul(i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare zeroext i16 @float16_div(i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare zeroext i16 @float16_round_to_int(i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare ptr @tlb_vaddr_to_host(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @arm_cpu_do_unaligned_access(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @do_setp(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i1 noundef zeroext %4, i64 noundef %5) unnamed_addr #7 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  store i32 %2, ptr %i.a, align 4
  %i.b = lshr i32 %1, 10
  %i.c = and i32 %i.b, 31
  %i.d = lshr i32 %1, 5
  %i.e = and i32 %i.d, 31                         ; 2 uses
  %i.f = and i32 %1, 31
  %i.g = icmp eq i32 %i.e, 31
  br i1 %i.g, label %arm_reg_or_xzr.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = zext nneg i32 %i.e to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8
  %i.l = trunc i64 %i.k to i32
  %i.m = and i32 %i.l, 255
  br label %arm_reg_or_xzr.exit

arm_reg_or_xzr.exit:                              ; preds = %bb.a, %bb.b
  %i.n = phi i32 [ %i.m, %bb.b ], [ 0, %bb.a ]
  %i.o = and i32 %2, 15                           ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.q = zext nneg i32 %i.c to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.q ; 3 uses
  %i.s = load i64, ptr %i.r, align 8              ; 8 uses
  %i.t = zext nneg i32 %i.f to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.t ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  tail call fastcc void @check_mops_enabled(ptr noundef %0, i64 noundef %5)
  %i.w = icmp slt i64 %i.v, 0
  %spec.select = select i1 %4, i64 9223372036854775792, i64 9223372036854775807
  %.058 = select i1 %i.w, i64 %spec.select, i64 %i.v ; 5 uses
  br i1 %4, label %bb.c, label %bb.e, !prof !9

bb.c:                                             ; preds = %arm_reg_or_xzr.exit
  %.not.i = icmp eq i64 %.058, 0
  %i.x = and i64 %i.s, 15
  %i.y = icmp eq i64 %i.x, 0
  %or.cond.i = or i1 %i.y, %.not.i
  %i.z = and i64 %.058, 15
  %i.aa = icmp eq i64 %i.z, 0
  %or.cond8.i = and i1 %or.cond.i, %i.aa
  br i1 %or.cond8.i, label %check_setg_alignment.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds i8, ptr %0, i64 -16496
  tail call void @arm_cpu_do_unaligned_access(ptr noundef nonnull %i.ab, i64 noundef %i.s, i32 noundef 1, i32 noundef range(i32 0, 65536) %i.o, i64 noundef %5) #12
  unreachable

bb.e:                                             ; preds = %arm_reg_or_xzr.exit
  %i.ac = lshr i64 %i.s, 55
  %i.ad = trunc nuw nsw i64 %i.ac to i32
  %i.ae = and i32 %i.ad, 1                        ; 3 uses
  %i.af = shl nuw nsw i32 4112, %i.ae
  %i.ag = and i32 %2, %i.af
  %.not.i61 = icmp eq i32 %i.ag, 0
  br i1 %.not.i61, label %mte_checks_needed.exit.thread, label %mte_checks_needed.exit

mte_checks_needed.exit:                           ; preds = %bb.e
  %i.ah = lshr i64 %i.s, 56
  %i.ai = trunc nuw nsw i64 %i.ah to i32
  %i.aj = add nuw nsw i32 %i.ae, %i.ai
  %i.ak = and i32 %i.aj, 15
  %i.al = icmp eq i32 %i.ak, 0
  %i.am = or disjoint i32 %i.ae, 6
  %i.an = lshr i32 %2, %i.am
  %i.ao = trunc i32 %i.an to i1
  %i.ap = and i1 %i.al, %i.ao
  br i1 %i.ap, label %mte_checks_needed.exit.thread, label %check_setg_alignment.exit

mte_checks_needed.exit.thread:                    ; preds = %bb.e, %mte_checks_needed.exit
  store i32 0, ptr %i.a, align 4
  br label %check_setg_alignment.exit

check_setg_alignment.exit:                        ; preds = %bb.c, %mte_checks_needed.exit, %mte_checks_needed.exit.thread
  %i.aq = load i64, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 8), align 8
  %.neg.i = mul i64 %i.aq, -4294967296
  %i.ar = ashr exact i64 %.neg.i, 32              ; 2 uses
  %i.as = add i64 %i.ar, %i.s
  %i.at = sub nsw i64 0, %i.ar
  %i.au = and i64 %i.as, %i.at
  %i.av = sub i64 %i.au, %i.s
  %i.aw = tail call i64 @llvm.umin.i64(i64 %.058, i64 %i.av) ; 2 uses
  %.not63 = icmp eq i64 %i.aw, 0
  br i1 %.not63, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %check_setg_alignment.exit, %.lr.ph
  %.066 = phi i64 [ %i.ba, %.lr.ph ], [ %i.aw, %check_setg_alignment.exit ] ; 2 uses
  %.165 = phi i64 [ %i.az, %.lr.ph ], [ %.058, %check_setg_alignment.exit ] ; 2 uses
  %.05964 = phi i64 [ %i.ay, %.lr.ph ], [ %i.s, %check_setg_alignment.exit ] ; 3 uses
  store i64 %.05964, ptr %i.r, align 8
  store i64 %.165, ptr %i.u, align 8
  %i.ax = call i64 %3(ptr noundef nonnull %0, i64 noundef %.05964, i64 noundef %.066, i32 noundef %i.n, i32 noundef %i.o, ptr noundef nonnull %i.a, i64 noundef %5) #13, !callees !10 ; 3 uses
  %i.ay = add i64 %i.ax, %.05964                  ; 2 uses
  %i.az = sub i64 %.165, %i.ax                    ; 2 uses
  %i.ba = sub i64 %.066, %i.ax                    ; 2 uses
  %.not = icmp eq i64 %i.ba, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !11

._crit_edge:                                      ; preds = %.lr.ph, %check_setg_alignment.exit
  %.059.lcssa = phi i64 [ %i.s, %check_setg_alignment.exit ], [ %i.ay, %.lr.ph ]
  %.1.lcssa = phi i64 [ %.058, %check_setg_alignment.exit ], [ %i.az, %.lr.ph ] ; 2 uses
  %i.bb = add i64 %.1.lcssa, %.059.lcssa
  store i64 %i.bb, ptr %i.r, align 8
  %i.bc = sub i64 0, %.1.lcssa
  store i64 %i.bc, ptr %i.u, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 536
  store <4 x i32> <i32 0, i32 0, i32 0, i32 1>, ptr %i.bd, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @set_step(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef captures(none) %5, i64 noundef %6) #7 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 8), align 8
  %.neg.i = mul i64 %i.a, -4294967296
  %i.b = ashr exact i64 %.neg.i, 32               ; 2 uses
  %i.c = add i64 %i.b, %1
  %i.d = sub nsw i64 0, %i.b
  %i.e = and i64 %i.c, %i.d
  %i.f = sub i64 %i.e, %1
  %i.g = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.f) ; 4 uses
  %i.h = load i32, ptr %5, align 4                ; 2 uses
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i64 @mte_mops_probe(ptr noundef %0, i64 noundef %1, i64 noundef %i.g, i32 noundef %i.h) #13 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr %5, align 4
  tail call void @mte_check_fail(ptr noundef %0, i32 noundef %i.k, i64 noundef %1, i64 noundef %6) #13
  store i32 0, ptr %5, align 4
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.i)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %.1 = phi i64 [ %i.g, %bb.a ], [ %i.g, %bb.c ], [ %i.l, %bb.d ] ; 2 uses
  %i.m = shl i64 %1, 8
  %i.n = ashr exact i64 %i.m, 8
  %i.o = and i64 %i.n, %1
  %i.p = tail call ptr @tlb_vaddr_to_host(ptr noundef %0, i64 noundef %i.o, i32 noundef 1, i32 noundef %4) #13
  %i.q = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @helper_retaddr) ; 2 uses
  store i64 %6, ptr %i.q, align 8
  fence syncscope("singlethread") seq_cst
  %i.r = trunc i32 %3 to i8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.p, i8 noundef %i.r, i64 noundef %.1, i1 noundef false) #13
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.q, align 8
  ret i64 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @set_step_tags(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, i64 noundef %6) #7 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 8), align 8
  %.neg.i = mul i64 %i.a, -4294967296
  %i.b = ashr exact i64 %.neg.i, 32               ; 2 uses
  %i.c = add i64 %i.b, %1
  %i.d = sub nsw i64 0, %i.b
  %i.e = and i64 %i.c, %i.d
  %i.f = sub i64 %i.e, %1
  %i.g = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.f) ; 3 uses
  %i.h = shl i64 %1, 8
  %i.i = ashr exact i64 %i.h, 8
  %i.j = and i64 %i.i, %1
  %i.k = tail call ptr @tlb_vaddr_to_host(ptr noundef %0, i64 noundef %i.j, i32 noundef 1, i32 noundef %4) #13
  %i.l = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @helper_retaddr) ; 2 uses
  store i64 %6, ptr %i.l, align 8
  fence syncscope("singlethread") seq_cst
  %i.m = trunc i32 %3 to i8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.k, i8 noundef %i.m, i64 noundef %i.g, i1 noundef false) #13
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.l, align 8
  %i.n = load i32, ptr %5, align 4
  tail call void @mte_mops_set_tags(ptr noundef %0, i64 noundef %1, i64 noundef %i.g, i32 noundef %i.n) #13
  ret i64 %i.g
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @do_setm(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i1 noundef zeroext %4, i64 noundef %5) unnamed_addr #7 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  store i32 %2, ptr %i.a, align 4
  %i.b = getelementptr inbounds i8, ptr %0, i64 -16496 ; 2 uses
  %i.c = lshr i32 %1, 10
  %i.d = and i32 %i.c, 31
  %i.e = lshr i32 %1, 5
  %i.f = and i32 %i.e, 31                         ; 2 uses
  %i.g = and i32 %1, 31
  %i.h = icmp eq i32 %i.f, 31
  br i1 %i.h, label %arm_reg_or_xzr.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = zext nneg i32 %i.f to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.m, 255
  br label %arm_reg_or_xzr.exit

arm_reg_or_xzr.exit:                              ; preds = %bb.a, %bb.b
  %i.o = phi i32 [ %i.n, %bb.b ], [ 0, %bb.a ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.q = zext nneg i32 %i.d to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8
  %i.t = zext nneg i32 %i.g to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.t ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 3 uses
  %i.w = add i64 %i.v, %i.s                       ; 5 uses
  %i.x = sub i64 0, %i.v                          ; 3 uses
  %i.y = and i32 %2, 15                           ; 2 uses
  tail call fastcc void @check_mops_enabled(ptr noundef %0, i64 noundef %5)
  %i.z = load i64, ptr %i.u, align 8
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %arm_reg_or_xzr.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.ac = load i32, ptr %i.ab, align 8
  %.not.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i, label %check_mops_wrong_option.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = or i32 %1, 131072
end_hunk_0
