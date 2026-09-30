Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/x86_mmu?download=true
inline.NumInlined: 31
inline.NumDeleted: 22
begin_hunk_0_@mmu_gva_to_gpa:bb.a
  br i1 %.not22.i.i, label %walk_gpt.exit.thread, label %bb.i

bb.i:                                             ; preds = %get_pt_entry.exit.i
  br i1 %i.f, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ap = call zeroext i1 @x86_is_long_mode(ptr noundef %0) #6
  %i.aq = icmp ne i64 %indvars.iv.next.i, 2
  %or.cond.not.i.i = or i1 %i.aq, %i.ap
  br i1 %or.cond.not.i.i, label %bb.k, label %test_pt_entry.exit.thread50.i

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ar = and i64 %i.am, 128
  %.not24.i.i = icmp eq i64 %i.ar, 0
  %spec.select.i = select i1 %.not24.i.i, i32 0, i32 %i.ab ; 4 uses
  %i.as = call i64 @x86_read_cr(ptr noundef %0, i32 noundef 0) #6
  %i.at = and i64 %i.as, 65536
  %.not25.i.i = icmp ne i64 %i.at, 0
  %or.cond32.not41.i.i = and i1 %.not26.i.i, %.not25.i.i
  %i.au = and i64 %i.am, 2
  %.not27.i.i = icmp eq i64 %i.au, 0
  %or.cond33.i.i = and i1 %.not27.i.i, %or.cond32.not41.i.i
  br i1 %or.cond33.i.i, label %walk_gpt.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %.not28.i.i, label %bb.m, label %is_user.exit.thread.i.i

bb.m:                                             ; preds = %bb.l
  %i.av = load ptr, ptr @emul_ops, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 64
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i, label %is_user.exit.thread.i.i, label %is_user.exit.i.i

is_user.exit.i.i:                                 ; preds = %bb.m
  %i.ay = call zeroext i1 %i.ax(ptr noundef %0) #6, !inline_history !10
  %i.az = and i64 %i.am, 4
  %.not29.i.i = icmp eq i64 %i.az, 0
  %or.cond34.i.i = and i1 %.not29.i.i, %i.ay
  %or.cond34.i.not.i = xor i1 %or.cond34.i.i, true
  %.not31.i.i = icmp sgt i64 %i.am, -1
  %or.cond37.i.i = or i1 %or.cond36.i.i, %.not31.i.i
  %or.cond.i = and i1 %or.cond37.i.i, %or.cond34.i.not.i
  br i1 %or.cond.i, label %test_pt_entry.exit.i, label %walk_gpt.exit.thread

is_user.exit.thread.i.i:                          ; preds = %bb.m, %bb.l
  %.not31.i.old.i = icmp sgt i64 %i.am, -1
  %or.cond37.i.old.i = or i1 %or.cond36.i.i, %.not31.i.old.i
  br i1 %or.cond37.i.old.i, label %test_pt_entry.exit.i, label %walk_gpt.exit.thread

test_pt_entry.exit.i:                             ; preds = %is_user.exit.thread.i.i, %is_user.exit.i.i
  %.not39.i = icmp eq i32 %spec.select.i, 0
  br i1 %.not39.i, label %test_pt_entry.exit.thread50.i, label %bb.o

test_pt_entry.exit.thread50.i:                    ; preds = %test_pt_entry.exit.i, %bb.j
  %i.ba = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.ba, label %bb.g, label %bb.n, !llvm.loop !11

bb.n:                                             ; preds = %test_pt_entry.exit.thread50.i
  %i.bb = load i64, ptr %i.q, align 8
  %i.bc = and i64 %i.bb, %i.h
  %i.bd = and i64 %1, 4095
  %i.be = or disjoint i64 %i.bd, %i.bc
  br label %walk_gpt.exit.thread.sink.split

bb.o:                                             ; preds = %test_pt_entry.exit.i
  %i.bf = zext nneg i32 %spec.select.i to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = and i64 %i.bh, 128
  %.not.i43.i = icmp eq i64 %i.bi, 0
  br i1 %.not.i43.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bj = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #6 ; 0 uses
  call void @abort() #7
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.bk = icmp eq i32 %spec.select.i, 2
  %or.cond.i44.i = and i1 %i.f, %i.bk
  br i1 %or.cond.i44.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = and i64 %i.bm, 4503598553628672
  %i.bo = and i64 %1, 1073741823
  %i.bp = or disjoint i64 %i.bo, %i.bn
  br label %walk_gpt.exit.thread.sink.split

bb.s:                                             ; preds = %bb.q
  %.not13.i.i = icmp eq i32 %spec.select.i, 1
  br i1 %.not13.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bq = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4) #6 ; 0 uses
  call void @abort() #7
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bs = load i64, ptr %i.br, align 8            ; 3 uses
  br i1 %i.f, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bt = and i64 %i.bs, 4503599625273344
  %i.bu = and i64 %1, 2097151
  %i.bv = or disjoint i64 %i.bu, %i.bt
  br label %walk_gpt.exit.thread.sink.split

bb.w:                                             ; preds = %bb.u
  %i.bw = shl i64 %i.bs, 19
  %i.bx = and i64 %i.bw, 1095216660480
  %i.by = and i64 %i.bs, 4290772992
  %i.bz = or disjoint i64 %i.bx, %i.by
  %i.ca = and i64 %1, 4194303
  %i.cb = or disjoint i64 %i.bz, %i.ca
  br label %walk_gpt.exit.thread.sink.split

walk_gpt.exit.thread.sink.split:                  ; preds = %bb.n, %bb.r, %bb.v, %bb.w, %bb.c
  %.sink.i.sink = phi i64 [ %1, %bb.c ], [ %i.be, %bb.n ], [ %i.bp, %bb.r ], [ %i.bv, %bb.v ], [ %i.cb, %bb.w ]
  store i64 %.sink.i.sink, ptr %2, align 8
  br label %walk_gpt.exit.thread

walk_gpt.exit.thread:                             ; preds = %is_user.exit.i.i, %is_user.exit.thread.i.i, %get_pt_entry.exit.i, %bb.k, %walk_gpt.exit.thread.sink.split
  %.0 = phi i32 [ 0, %walk_gpt.exit.thread.sink.split ], [ 1, %bb.k ], [ 1, %get_pt_entry.exit.i ], [ 1, %is_user.exit.thread.i.i ], [ 1, %is_user.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  br label %bb.x

bb.x:                                             ; preds = %walk_gpt.exit.thread, %bb.b
  %.1 = phi i32 [ %i.d, %bb.b ], [ %.0, %walk_gpt.exit.thread ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare zeroext i1 @x86_is_paging_mode(ptr noundef) local_unnamed_addr #3

declare zeroext i1 @x86_is_pae_enabled(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @x86_write_mem(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @x86_write_mem_ex(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i1 noundef zeroext false)
  ret i32 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @x86_write_mem_ex(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 31, ptr noundef nonnull @__func__.X86_CPU) #6 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16496
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %spec.select = select i1 %4, i32 10, i32 2
  %i.d = icmp sgt i32 %3, 0
  br i1 %i.d, label %.lr.ph.preheader, label %.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !annotation !9
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.04468 = phi ptr [ %i.y, %bb.d ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %.04667 = phi i64 [ %i.x, %bb.d ], [ %2, %.lr.ph.preheader ] ; 4 uses
  %.04866 = phi i32 [ %i.w, %bb.d ], [ %3, %.lr.ph.preheader ] ; 2 uses
  %i.e = zext nneg i32 %.04866 to i64
  %i.f = and i64 %.04667, 4095
  %i.g = sub nuw nsw i64 4096, %i.f
  %i.h = call i64 @llvm.umin.i64(i64 %i.g, i64 %i.e) ; 4 uses
  %i.i = trunc nuw nsw i64 %i.h to i32
  %i.j = call i32 @mmu_gva_to_gpa(ptr noundef %0, i64 noundef %.04667, ptr noundef nonnull %i.a, i32 noundef %spec.select) ; 4 uses
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.k = load ptr, ptr @emul_ops, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %is_user.exit.thread, label %is_user.exit

is_user.exit:                                     ; preds = %bb.b
  %i.n = call zeroext i1 %i.m(ptr noundef %0) #6, !inline_history !0
  %cond.fr = freeze i1 %i.n
  %spec.select62 = select i1 %cond.fr, i32 4, i32 0
  br label %is_user.exit.thread

is_user.exit.thread:                              ; preds = %is_user.exit, %bb.b
  %i.o = phi i32 [ 0, %bb.b ], [ %spec.select62, %is_user.exit ]
  %i.p = and i32 %i.j, 1
  %i.q = or disjoint i32 %i.o, %i.p
  %i.r = and i32 %i.j, 3
  %.not9.i = icmp eq i32 %i.r, 0
  %.3.i.v = select i1 %.not9.i, i32 3, i32 11
  %.3.i = xor i32 %i.q, %.3.i.v
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 31312
  store i8 1, ptr %i.s, align 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 31320
  store i64 %.04667, ptr %i.t, align 8
  call void @x86_emul_raise_exception(ptr noundef nonnull %i.c, i32 noundef 14, i32 noundef %.3.i) #6
  br label %.thread

bb.c:                                             ; preds = %.lr.ph
  %i.u = load i64, ptr %i.a, align 8
  %i.v = call i32 @address_space_write(ptr noundef nonnull @address_space_memory, i64 noundef %i.u, i64 4294967296, ptr noundef %.04468, i64 noundef %i.h) #6
  switch i32 %i.v, label %bb.d [
    i32 2, label %.thread.loopexit
    i32 4, label %.thread
  ]

bb.d:                                             ; preds = %bb.c
  %i.w = sub nsw i32 %.04866, %i.i                ; 2 uses
  %i.x = add i64 %i.h, %.04667
  %i.y = getelementptr inbounds nuw i8, ptr %.04468, i64 %i.h
  %i.z = icmp sgt i32 %i.w, 0
  br i1 %i.z, label %.lr.ph, label %.thread, !llvm.loop !12

.thread.loopexit:                                 ; preds = %bb.c
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.c, %.thread.loopexit, %bb.a, %is_user.exit.thread
  %.2 = phi i32 [ 0, %bb.a ], [ %i.j, %is_user.exit.thread ], [ 6, %bb.c ], [ 0, %bb.d ], [ 4, %.thread.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.2
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @x86_write_mem_priv(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @x86_write_mem_ex(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i1 noundef zeroext true)
  ret i32 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @x86_read_mem(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @x86_read_mem_ex(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i1 noundef zeroext false)
  ret i32 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @x86_read_mem_ex(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 31, ptr noundef nonnull @__func__.X86_CPU) #6 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16496
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %spec.select = select i1 %4, i32 8, i32 0
  %i.d = icmp sgt i32 %3, 0
  br i1 %i.d, label %.lr.ph.preheader, label %.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !annotation !9
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.04375 = phi ptr [ %i.x, %bb.c ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %.04574 = phi i64 [ %i.w, %bb.c ], [ %2, %.lr.ph.preheader ] ; 4 uses
  %.04773 = phi i32 [ %i.v, %bb.c ], [ %3, %.lr.ph.preheader ] ; 2 uses
  %i.e = zext nneg i32 %.04773 to i64
  %i.f = and i64 %.04574, 4095
  %i.g = sub nuw nsw i64 4096, %i.f
  %i.h = call i64 @llvm.umin.i64(i64 %i.g, i64 %i.e) ; 4 uses
  %i.i = trunc nuw nsw i64 %i.h to i32
  %i.j = call i32 @mmu_gva_to_gpa(ptr noundef %0, i64 noundef %.04574, ptr noundef nonnull %i.a, i32 noundef %spec.select) ; 4 uses
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %address_space_read.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.k = load ptr, ptr @emul_ops, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %is_user.exit.thread, label %is_user.exit

is_user.exit:                                     ; preds = %bb.b
  %i.n = call zeroext i1 %i.m(ptr noundef %0) #6, !inline_history !0
  %cond.fr = freeze i1 %i.n
  %spec.select67 = select i1 %cond.fr, i32 4, i32 0
  br label %is_user.exit.thread

is_user.exit.thread:                              ; preds = %is_user.exit, %bb.b
  %i.o = phi i32 [ 0, %bb.b ], [ %spec.select67, %is_user.exit ]
  %i.p = and i32 %i.j, 1
  %i.q = or disjoint i32 %i.o, %i.p
  %i.r = and i32 %i.j, 3
  %.not9.i = icmp eq i32 %i.r, 0
  %.3.i.v = select i1 %.not9.i, i32 1, i32 9
  %.3.i = xor i32 %i.q, %.3.i.v
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 17064
  store i64 %.04574, ptr %i.s, align 8
  call void @x86_emul_raise_exception(ptr noundef nonnull %i.c, i32 noundef 14, i32 noundef %.3.i) #6
  br label %.thread

address_space_read.exit:                          ; preds = %.lr.ph
  %i.t = load i64, ptr %i.a, align 8
  %i.u = call i32 @address_space_read_full(ptr noundef nonnull @address_space_memory, i64 noundef %i.t, i64 4294967296, ptr noundef %.04375, i64 noundef range(i64 1, 2147483648) %i.h) #6
  switch i32 %i.u, label %bb.c [
    i32 2, label %.thread.loopexit
    i32 4, label %.thread
  ]

bb.c:                                             ; preds = %address_space_read.exit
  %i.v = sub nsw i32 %.04773, %i.i                ; 2 uses
  %i.w = add i64 %i.h, %.04574
  %i.x = getelementptr inbounds nuw i8, ptr %.04375, i64 %i.h
  %i.y = icmp sgt i32 %i.v, 0
  br i1 %i.y, label %.lr.ph, label %.thread, !llvm.loop !13

.thread.loopexit:                                 ; preds = %address_space_read.exit
  br label %.thread

.thread:                                          ; preds = %bb.c, %address_space_read.exit, %.thread.loopexit, %bb.a, %is_user.exit.thread
  %.2 = phi i32 [ 0, %bb.a ], [ %i.j, %is_user.exit.thread ], [ 5, %address_space_read.exit ], [ 0, %bb.c ], [ 4, %.thread.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.2
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @x86_read_mem_priv(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @x86_read_mem_ex(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i1 noundef zeroext true)
  ret i32 %i.a
}

declare i64 @x86_read_cr(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i1 @x86_is_long_mode(ptr noundef) local_unnamed_addr #3

declare zeroext i1 @x86_is_la57(ptr noundef) local_unnamed_addr #3

declare i32 @address_space_read_full(ptr noundef, i64 noundef, i64, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

declare void @x86_emul_raise_exception(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @address_space_write(ptr noundef, i64 noundef, i64, ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @object_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !{null}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!"auto-init"}
!10 = distinct !{null, null, null}
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !8}
!13 = distinct !{!13, !8}
end_hunk_0
