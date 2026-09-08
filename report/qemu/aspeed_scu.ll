Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/aspeed_scu?download=true
inline.NumInlined: 87
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@aspeed_ast2600_scu_write:bb.a
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 18, ptr noundef nonnull @__func__.ASPEED_SCU) #5 ; 4 uses
  %i.b = lshr i64 %1, 2                           ; 5 uses
  %i.c = trunc i64 %i.b to i32                    ; 3 uses
  %i.d = trunc i64 %2 to i32                      ; 5 uses
  %i.e = icmp eq i32 %i.d, 378054824              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1088 ; 6 uses
  %i.g = load i32, ptr %i.f, align 16
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 1104
  %i.i = load i32, ptr %i.h, align 16
  %i.j = icmp ne i32 %i.i, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = phi i1 [ false, %bb.a ], [ %i.j, %bb.b ]
  %i.l = icmp sgt i32 %i.c, 903
  br i1 %i.l, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = load i32, ptr @qemu_loglevel, align 4
  %i.n = and i32 %i.m, 2048
  %.not42 = icmp eq i32 %i.n, 0
  br i1 %.not42, label %bb.u, label %bb.e, !prof !9

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.aspeed_ast2600_scu_write, i64 noundef %1) #5
  br label %bb.u

bb.f:                                             ; preds = %bb.c
  %i.o = and i32 %i.c, -5
  %or.cond.not35 = icmp eq i32 %i.o, 0
  %or.cond3 = select i1 %or.cond.not35, i1 true, i1 %i.k
  br i1 %or.cond3, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = load i32, ptr @qemu_loglevel, align 4
  %i.q = and i32 %i.p, 2048
  %.not40 = icmp eq i32 %i.q, 0
  br i1 %.not40, label %bb.u, label %bb.h, !prof !9

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.aspeed_ast2600_scu_write) #5
  br label %bb.u

bb.i:                                             ; preds = %bb.f
  %i.r = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %trace_aspeed_scu_write.exit, label %bb.j, !prof !9

bb.j:                                             ; preds = %bb.i
  %i.s = load i16, ptr @_TRACE_ASPEED_SCU_WRITE_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.s, 0
  br i1 %.not3.i, label %trace_aspeed_scu_write.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = load i32, ptr @qemu_loglevel, align 4
  %i.u = and i32 %i.t, 32768
  %.not4.i = icmp eq i32 %i.u, 0
  br i1 %.not4.i, label %trace_aspeed_scu_write.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.33, i64 noundef %1, i32 noundef %3, i32 noundef %i.d) #5
  br label %trace_aspeed_scu_write.exit

trace_aspeed_scu_write.exit:                      ; preds = %bb.i, %bb.j, %bb.k, %bb.l
  switch i32 %i.c, label %bb.t [
    i32 0, label %bb.m
    i32 4, label %bb.n
    i32 320, label %bb.o
    i32 324, label %bb.o
    i32 16, label %bb.p
    i32 20, label %bb.p
    i32 32, label %bb.p
    i32 36, label %bb.p
    i32 17, label %bb.q
    i32 21, label %bb.q
    i32 33, label %bb.q
    i32 37, label %bb.q
    i32 321, label %bb.q
    i32 325, label %bb.q
    i32 329, label %bb.r
    i32 1, label %bb.r
    i32 5, label %bb.r
    i32 364, label %bb.r
    i32 365, label %bb.r
  ]

bb.m:                                             ; preds = %trace_aspeed_scu_write.exit
  %i.v = zext i1 %i.e to i32                      ; 2 uses
  store i32 %i.v, ptr %i.f, align 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 1104
  store i32 %i.v, ptr %i.w, align 16
  br label %bb.u

bb.n:                                             ; preds = %trace_aspeed_scu_write.exit
  %i.x = zext i1 %i.e to i32
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 1104
  store i32 %i.x, ptr %i.y, align 16
  br label %bb.u

bb.o:                                             ; preds = %trace_aspeed_scu_write.exit, %trace_aspeed_scu_write.exit
  %i.z = shl i64 %i.b, 32
  %sext36 = add i64 %i.z, 8589934592
  %i.aa = ashr exact i64 %sext36, 30
  %i.ab = getelementptr inbounds i8, ptr %i.f, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4
  %.not37 = icmp eq i32 %i.ac, 0
  br i1 %.not37, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o, %trace_aspeed_scu_write.exit, %trace_aspeed_scu_write.exit, %trace_aspeed_scu_write.exit, %trace_aspeed_scu_write.exit
  %sext38 = shl i64 %i.b, 32
  %i.ad = ashr exact i64 %sext38, 30
  %i.ae = getelementptr inbounds i8, ptr %i.f, i64 %i.ad ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = or i32 %i.af, %i.d
  store i32 %i.ag, ptr %i.ae, align 4
  br label %bb.u

bb.q:                                             ; preds = %trace_aspeed_scu_write.exit, %trace_aspeed_scu_write.exit, %trace_aspeed_scu_write.exit, %trace_aspeed_scu_write.exit, %trace_aspeed_scu_write.exit, %trace_aspeed_scu_write.exit
  %i.ah = xor i32 %i.d, -1
  %i.ai = shl i64 %i.b, 32
  %sext = add i64 %i.ai, -4294967296
  %i.aj = ashr exact i64 %sext, 30
  %i.ak = getelementptr inbounds i8, ptr %i.f, i64 %i.aj ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = and i32 %i.al, %i.ah
  store i32 %i.am, ptr %i.ak, align 4
  br label %bb.u

bb.r:                                             ; preds = %trace_aspeed_scu_write.exit, %trace_aspeed_scu_write.exit, %trace_aspeed_scu_write.exit, %trace_aspeed_scu_write.exit, %trace_aspeed_scu_write.exit
  %i.an = load i32, ptr @qemu_loglevel, align 4
  %i.ao = and i32 %i.an, 2048
  %.not41 = icmp eq i32 %i.ao, 0
  br i1 %.not41, label %bb.u, label %bb.s, !prof !9

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.32, ptr noundef nonnull @__func__.aspeed_ast2600_scu_write, i64 noundef %1) #5
  br label %bb.u

bb.t:                                             ; preds = %trace_aspeed_scu_write.exit
  %sext39 = shl i64 %i.b, 32
  %i.ap = ashr exact i64 %sext39, 30
  %i.aq = getelementptr inbounds i8, ptr %i.f, i64 %i.ap
  store i32 %i.d, ptr %i.aq, align 4
  br label %bb.u

bb.u:                                             ; preds = %bb.r, %bb.s, %bb.o, %bb.g, %bb.h, %bb.d, %bb.e, %bb.t, %bb.q, %bb.p, %bb.n, %bb.m
  ret void
}

declare void @qemu_log(ptr noundef, ...) local_unnamed_addr #3

declare void @qemu_guest_getrandom_nofail(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @aspeed_2400_scu_calc_hpll(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4708 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 8388608
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.b, label %aspeed_scu_get_clkin.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @object_get_class(ptr noundef nonnull %0) #5
  %i.e = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.d, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 18, ptr noundef nonnull @__func__.ASPEED_SCU_GET_CLASS) #5
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 224
  %i.g = load i8, ptr %i.f, align 8, !range !7, !noundef !8
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %aspeed_scu_get_clkin.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.a, align 4
  %i.j = and i32 %i.i, 262144
  %.not3.i = icmp eq i32 %i.j, 0
  %..i = select i1 %.not3.i, i32 24000000, i32 48000000
  br label %aspeed_scu_get_clkin.exit

aspeed_scu_get_clkin.exit:                        ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i32 [ 25000000, %bb.a ], [ %..i, %bb.c ], [ 25000000, %bb.b ] ; 2 uses
  %i.k = and i32 %1, 65536
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.d, label %bb.h

bb.d:                                             ; preds = %aspeed_scu_get_clkin.exit
  %i.l = and i32 %1, 262144
  %.not17 = icmp eq i32 %i.l, 0
  br i1 %.not17, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = and i32 %1, 131072
  %.not18 = icmp eq i32 %i.m, 0
  br i1 %.not18, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.n = lshr i32 %1, 5
  %2 = shl i32 %1, 27
  %3 = ashr i32 %2, 31
  %4 = add nsw i32 %3, 2
  %i.o = trunc i32 %i.n to i8
  %i.p = and i8 %i.o, 63
  %.lhs.trunc = add nuw nsw i8 %i.p, 2
  %i.q = trunc i32 %1 to i8
  %i.r = and i8 %i.q, 15
  %.rhs.trunc = add nuw nsw i8 %i.r, 1
  %i.s = udiv i8 %.lhs.trunc, %.rhs.trunc
  %.zext = zext nneg i8 %i.s to i32
  %i.t = mul nuw nsw i32 %.0.i, %4
  %i.u = mul i32 %i.t, %.zext
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.v = load i32, ptr %i.a, align 4              ; 2 uses
  %i.w = lshr i32 %i.v, 8
  %i.x = and i32 %i.w, 3
  %i.y = zext nneg i32 %i.x to i64
  %i.z = lshr i32 %i.v, 23
  %.lobit = and i32 %i.z, 1
  %i.aa = zext nneg i32 %.lobit to i64
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr @hpll_ast2400_freqs, i64 %i.aa
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.y
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = mul i32 %i.ad, 1000000
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %aspeed_scu_get_clkin.exit, %bb.g
  %.0 = phi i32 [ %i.ae, %bb.g ], [ 0, %aspeed_scu_get_clkin.exit ], [ %.0.i, %bb.e ], [ %i.u, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @aspeed_2400_scu_get_apb_freq(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @object_get_class(ptr noundef %0) #5
  %i.b = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.a, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 18, ptr noundef nonnull @__func__.ASPEED_SCU_GET_CLASS) #5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1124
  %i.f = load i32, ptr %i.e, align 4
  %i.g = tail call i32 %i.d(ptr noundef %0, i32 noundef %i.f) #5
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.i = load i32, ptr %i.h, align 8
  %i.j = lshr i32 %i.i, 23
  %i.k = and i32 %i.j, 7
  %i.l = add nuw nsw i32 %i.k, 1
  %i.m = udiv i32 %i.g, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.o = load i32, ptr %i.n, align 8
  %i.p = udiv i32 %i.m, %i.o
  ret i32 %i.p
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 4294967296) i64 @aspeed_scu_read(ptr noundef %0, i64 noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 18, ptr noundef nonnull @__func__.ASPEED_SCU) #5 ; 2 uses
  %i.c = lshr i64 %1, 2                           ; 2 uses
  %i.d = trunc i64 %i.c to i32                    ; 2 uses
  %i.e = icmp sgt i32 %i.d, 105
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr @qemu_loglevel, align 4
  %i.g = and i32 %i.f, 2048
  %.not14 = icmp eq i32 %i.g, 0
  br i1 %.not14, label %bb.l, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.aspeed_scu_read, i64 noundef %1) #5
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  switch i32 %i.d, label %bb.h [
    i32 30, label %bb.e
    i32 48, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !annotation !10
  call void @qemu_guest_getrandom_nofail(ptr noundef nonnull %i.a, i64 noundef 4) #5
  %i.h = load i32, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1208
  store i32 %i.h, ptr %i.i, align 8
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.j = load i32, ptr @qemu_loglevel, align 4
  %i.k = and i32 %i.j, 2048
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.h, label %bb.g, !prof !9

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.aspeed_scu_read, i64 noundef %1) #5
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 1088
  %sext = shl i64 %i.c, 32
  %i.m = ashr exact i64 %sext, 30
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 %i.m ; 2 uses
  %i.o = load i32, ptr %i.n, align 4              ; 4 uses
  %i.p = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %trace_aspeed_scu_read.exit, label %bb.i, !prof !9

bb.i:                                             ; preds = %bb.h
  %i.q = load i16, ptr @_TRACE_ASPEED_SCU_READ_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.q, 0
  br i1 %.not3.i, label %trace_aspeed_scu_read.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = load i32, ptr @qemu_loglevel, align 4
  %i.s = and i32 %i.r, 32768
  %.not4.i = icmp eq i32 %i.s, 0
  br i1 %.not4.i, label %trace_aspeed_scu_read.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.29, i64 noundef %1, i32 noundef %2, i32 noundef %i.o) #5
  %.pre = load i32, ptr %i.n, align 4
  br label %trace_aspeed_scu_read.exit

trace_aspeed_scu_read.exit:                       ; preds = %bb.h, %bb.i, %bb.j, %bb.k
  %i.t = phi i32 [ %i.o, %bb.h ], [ %i.o, %bb.i ], [ %i.o, %bb.j ], [ %.pre, %bb.k ]
  %i.u = zext i32 %i.t to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %bb.c, %trace_aspeed_scu_read.exit
  %.0 = phi i64 [ %i.u, %trace_aspeed_scu_read.exit ], [ 0, %bb.c ], [ 0, %bb.b ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @aspeed_ast2400_scu_write(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 18, ptr noundef nonnull @__func__.ASPEED_SCU) #5 ; 3 uses
  %i.b = lshr i64 %1, 2                           ; 3 uses
  %i.c = trunc i64 %i.b to i32                    ; 3 uses
  %i.d = icmp sgt i32 %i.c, 105
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr @qemu_loglevel, align 4
  %i.f = and i32 %i.e, 2048
  %.not21 = icmp eq i32 %i.f, 0
  br i1 %.not21, label %bb.p, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.aspeed_ast2400_scu_write, i64 noundef %1) #5
  br label %bb.p

bb.d:                                             ; preds = %bb.a
  %i.g = add i32 %i.c, -1
  %or.cond = icmp ult i32 %i.g, 64
  br i1 %or.cond, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 1088
  %i.i = load i32, ptr %i.h, align 16
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.j = load i32, ptr @qemu_loglevel, align 4
  %i.k = and i32 %i.j, 2048
  %.not19 = icmp eq i32 %i.k, 0
  br i1 %.not19, label %bb.h, label %bb.g, !prof !9

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.aspeed_ast2400_scu_write) #5
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e, %bb.d
  %i.l = trunc i64 %2 to i32                      ; 2 uses
  %i.m = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %trace_aspeed_scu_write.exit, label %bb.i, !prof !9

bb.i:                                             ; preds = %bb.h
  %i.n = load i16, ptr @_TRACE_ASPEED_SCU_WRITE_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.n, 0
  br i1 %.not3.i, label %trace_aspeed_scu_write.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = load i32, ptr @qemu_loglevel, align 4
  %i.p = and i32 %i.o, 32768
  %.not4.i = icmp eq i32 %i.p, 0
  br i1 %.not4.i, label %trace_aspeed_scu_write.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.33, i64 noundef %1, i32 noundef %3, i32 noundef %i.l) #5
  br label %trace_aspeed_scu_write.exit

trace_aspeed_scu_write.exit:                      ; preds = %bb.h, %bb.i, %bb.j, %bb.k
  switch i32 %i.c, label %bb.o [
    i32 0, label %bb.l
    i32 31, label %bb.m
end_hunk_0
