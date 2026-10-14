Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/vmstat?download=true
inline.NumInlined: 217
inline.NumDeleted: 75
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumUnrolled: 40
begin_hunk_0_@invalid_numa_statistics:bb.a
bb.h:                                             ; preds = %find_next_bit.exit.2.i.i
  %i.ax = load ptr, ptr %i.d, align 16
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = and i64 %i.au, 63
  %i.ba = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.az
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = add i64 %i.bb, %i.ay
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = getelementptr i8, ptr %i.bd, i64 32
  store i64 0, ptr %i.be, align 8
  %i.bf = add nuw nsw i64 %i.au, 1
  %i.bg = and i64 %i.bf, 127                      ; 2 uses
  %i.bh = icmp samesign ugt i64 %i.bg, 63
  br i1 %i.bh, label %find_next_bit.exit.thread.2.i.i, label %bb.g, !prof !18, !llvm.loop !121

find_next_bit.exit.thread.2.i.i:                  ; preds = %bb.h, %find_next_bit.exit.2.i.i, %bb.g
  %i.bi = getelementptr i8, ptr %.06.i, i64 1192
  store volatile i64 0, ptr %i.bi, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %find_next_bit.exit.thread.2.i.i
  %i.bj = phi i64 [ 0, %find_next_bit.exit.thread.2.i.i ], [ %i.bz, %bb.j ]
  %i.bk = load i64, ptr @__cpu_online_mask, align 8
  %i.bl = shl nsw i64 -1, %i.bj
  %i.bm = and i64 %i.bk, %i.bl                    ; 2 uses
  %.not.i.3.i.i = icmp eq i64 %i.bm, 0
  br i1 %.not.i.3.i.i, label %find_next_bit.exit.thread.3.i.i, label %find_next_bit.exit.3.i.i

find_next_bit.exit.3.i.i:                         ; preds = %bb.i
  %i.bn = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.bm) #19, !srcloc !17 ; 3 uses
  %i.bo = and i64 %i.bn, 4294967232
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %bb.j, label %find_next_bit.exit.thread.3.i.i

bb.j:                                             ; preds = %find_next_bit.exit.3.i.i
  %i.bq = load ptr, ptr %i.d, align 16
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = and i64 %i.bn, 63
  %i.bt = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8
  %i.bv = add i64 %i.bu, %i.br
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = getelementptr i8, ptr %i.bw, i64 40
  store i64 0, ptr %i.bx, align 8
  %i.by = add nuw nsw i64 %i.bn, 1
  %i.bz = and i64 %i.by, 127                      ; 2 uses
  %i.ca = icmp samesign ugt i64 %i.bz, 63
  br i1 %i.ca, label %find_next_bit.exit.thread.3.i.i, label %bb.i, !prof !18, !llvm.loop !121

find_next_bit.exit.thread.3.i.i:                  ; preds = %bb.j, %find_next_bit.exit.3.i.i, %bb.i
  %i.cb = getelementptr i8, ptr %.06.i, i64 1200
  store volatile i64 0, ptr %i.cb, align 16
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %find_next_bit.exit.thread.3.i.i
  %i.cc = phi i64 [ 0, %find_next_bit.exit.thread.3.i.i ], [ %i.cs, %bb.l ]
  %i.cd = load i64, ptr @__cpu_online_mask, align 8
  %i.ce = shl nsw i64 -1, %i.cc
  %i.cf = and i64 %i.cd, %i.ce                    ; 2 uses
  %.not.i.4.i.i = icmp eq i64 %i.cf, 0
  br i1 %.not.i.4.i.i, label %find_next_bit.exit.thread.4.i.i, label %find_next_bit.exit.4.i.i

find_next_bit.exit.4.i.i:                         ; preds = %bb.k
  %i.cg = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.cf) #19, !srcloc !17 ; 3 uses
  %i.ch = and i64 %i.cg, 4294967232
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %bb.l, label %find_next_bit.exit.thread.4.i.i

bb.l:                                             ; preds = %find_next_bit.exit.4.i.i
  %i.cj = load ptr, ptr %i.d, align 16
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = and i64 %i.cg, 63
  %i.cm = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.cl
  %i.cn = load i64, ptr %i.cm, align 8
  %i.co = add i64 %i.cn, %i.ck
  %i.cp = inttoptr i64 %i.co to ptr
  %i.cq = getelementptr i8, ptr %i.cp, i64 48
  store i64 0, ptr %i.cq, align 8
  %i.cr = add nuw nsw i64 %i.cg, 1
  %i.cs = and i64 %i.cr, 127                      ; 2 uses
  %i.ct = icmp samesign ugt i64 %i.cs, 63
  br i1 %i.ct, label %find_next_bit.exit.thread.4.i.i, label %bb.k, !prof !18, !llvm.loop !121

find_next_bit.exit.thread.4.i.i:                  ; preds = %bb.l, %find_next_bit.exit.4.i.i, %bb.k
  %i.cu = getelementptr i8, ptr %.06.i, i64 1208
  store volatile i64 0, ptr %i.cu, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %find_next_bit.exit.thread.4.i.i
  %i.cv = phi i64 [ 0, %find_next_bit.exit.thread.4.i.i ], [ %i.dl, %bb.n ]
  %i.cw = load i64, ptr @__cpu_online_mask, align 8
  %i.cx = shl nsw i64 -1, %i.cv
  %i.cy = and i64 %i.cw, %i.cx                    ; 2 uses
  %.not.i.5.i.i = icmp eq i64 %i.cy, 0
  br i1 %.not.i.5.i.i, label %zero_zone_numa_counters.exit.i, label %find_next_bit.exit.5.i.i

find_next_bit.exit.5.i.i:                         ; preds = %bb.m
  %i.cz = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.cy) #19, !srcloc !17 ; 3 uses
  %i.da = and i64 %i.cz, 4294967232
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %bb.n, label %zero_zone_numa_counters.exit.i

bb.n:                                             ; preds = %find_next_bit.exit.5.i.i
  %i.dc = load ptr, ptr %i.d, align 16
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = and i64 %i.cz, 63
  %i.df = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.de
  %i.dg = load i64, ptr %i.df, align 8
  %i.dh = add i64 %i.dg, %i.dd
  %i.di = inttoptr i64 %i.dh to ptr
  %i.dj = getelementptr i8, ptr %i.di, i64 56
  store i64 0, ptr %i.dj, align 8
  %i.dk = add nuw nsw i64 %i.cz, 1
  %i.dl = and i64 %i.dk, 127                      ; 2 uses
  %i.dm = icmp samesign ugt i64 %i.dl, 63
  br i1 %i.dm, label %zero_zone_numa_counters.exit.i, label %bb.m, !prof !18, !llvm.loop !121

zero_zone_numa_counters.exit.i:                   ; preds = %bb.n, %find_next_bit.exit.5.i.i, %bb.m, %.lr.ph.i
  %i.dn = tail call ptr @next_zone(ptr noundef nonnull %.06.i) #18 ; 2 uses
  %.not.i = icmp eq ptr %i.dn, null
  br i1 %.not.i, label %zero_zones_numa_counters.exit, label %.lr.ph.i, !llvm.loop !122

zero_zones_numa_counters.exit:                    ; preds = %zero_zone_numa_counters.exit.i, %bb.a
  store volatile i64 0, ptr @vm_numa_event, align 64
  store volatile i64 0, ptr getelementptr inbounds nuw (i8, ptr @vm_numa_event, i64 8), align 8
  store volatile i64 0, ptr getelementptr inbounds nuw (i8, ptr @vm_numa_event, i64 16), align 16
  store volatile i64 0, ptr getelementptr inbounds nuw (i8, ptr @vm_numa_event, i64 24), align 8
  store volatile i64 0, ptr getelementptr inbounds nuw (i8, ptr @vm_numa_event, i64 32), align 32
  store volatile i64 0, ptr getelementptr inbounds nuw (i8, ptr @vm_numa_event, i64 40), align 8
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @debugfs_create_file_full(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @seq_read(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @unusable_open(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @seq_open(ptr noundef %1, ptr noundef nonnull @unusable_sops) #18 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 536
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not6 = icmp eq ptr %i.c, null
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 104
  store ptr %i.c, ptr %i.f, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret i32 %i.a
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i32 @unusable_show(ptr noundef %0, ptr noundef %1) #0 align 16 prefalign(16) {
.split4:
  %i.a = getelementptr i8, ptr %1, i64 13632
  %i.b = load i32, ptr %i.a, align 64
  %i.c = sext i32 %i.b to i64
  %i.d = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) getelementptr inbounds nuw (i8, ptr @node_states, i64 24), i64 range(i64 -2147483648, 2147483648) %i.c) #20, !srcloc !43 ; 2 uses
  %i.e = icmp ult i8 %i.d, 2
  tail call void @llvm.assume(i1 %i.e)
  %i.f = trunc nuw i8 %i.d to i1
  br i1 %i.f, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.split4
  tail call fastcc void @walk_zones_in_node(ptr noundef %0, ptr noundef %1, i1 noundef zeroext true, ptr noundef nonnull @unusable_show_print) #21
  br label %bb.b

bb.b:                                             ; preds = %.split4, %bb.a
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @unusable_show_print(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #0 align 16 prefalign(16) {
bb.a:
  %3 = alloca %struct.contig_page_info, align 8   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.a = getelementptr i8, ptr %1, i64 13632
  %i.b = load i32, ptr %i.a, align 64
  %i.c = getelementptr i8, ptr %2, i64 168
  %i.d = load ptr, ptr %i.c, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.174, i32 noundef %i.b, ptr noundef %i.d) #18
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %unusable_free_index.exit.a
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %unusable_free_index.exit.a ] ; 3 uses
  %4 = trunc nuw nsw i64 %indvars.iv to i32
  call fastcc void @fill_contig_page_info(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %3) #21, !srcloc !124
  %.val.a = load i64, ptr %3, align 8             ; 3 uses
  %i.f = icmp eq i64 %.val.a, 0
  br i1 %i.f, label %unusable_free_index.exit.a, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val11.a = load i64, ptr %i.e, align 8
  %i.g = shl i64 %.val11.a, %indvars.iv
  %i.h = sub i64 %.val.a, %i.g
  %i.i = mul i64 %i.h, 1000
  %i.j = and i64 %.val.a, 4294967295
  %i.k = udiv i64 %i.i, %i.j
  %i.l = trunc i64 %i.k to i32
  br label %unusable_free_index.exit.a

unusable_free_index.exit.a:                       ; preds = %bb.b, %bb.c
  %.0.i.a = phi i32 [ %i.l, %bb.c ], [ 1000, %bb.b ] ; 2 uses
  %i.m = sdiv i32 %.0.i.a, 1000
  %i.n = srem i32 %.0.i.a, 1000
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.212, i32 noundef %i.m, i32 noundef %i.n) #18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 11
  br i1 %exitcond.not, label %bb.d, label %bb.b, !llvm.loop !123

bb.d:                                             ; preds = %unusable_free_index.exit.a
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @extfrag_open(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @seq_open(ptr noundef %1, ptr noundef nonnull @extfrag_sops) #18 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 536
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not6 = icmp eq ptr %i.c, null
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 104
  store ptr %i.c, ptr %i.f, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret i32 %i.a
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i32 @extfrag_show(ptr noundef %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  tail call fastcc void @walk_zones_in_node(ptr noundef %0, ptr noundef %1, i1 noundef zeroext true, ptr noundef nonnull @extfrag_show_print) #21
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @extfrag_show_print(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #0 align 16 prefalign(16) {
bb.a:
  %3 = alloca %struct.contig_page_info, align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.a = getelementptr i8, ptr %1, i64 13632
  %i.b = load i32, ptr %i.a, align 64
  %i.c = getelementptr i8, ptr %2, i64 168
  %i.d = load ptr, ptr %i.c, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.174, i32 noundef %i.b, ptr noundef %i.d) #18
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.a, %__fragmentation_index.exit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %__fragmentation_index.exit ] ; 3 uses
  %i.g = trunc nuw nsw i64 %indvars.iv to i32
  call fastcc void @fill_contig_page_info(ptr noundef %2, i32 noundef %i.g, ptr noundef nonnull %3) #21, !srcloc !126
  %i.h = load i64, ptr %i.e, align 8              ; 2 uses
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %__fragmentation_index.exit, label %bb.b

bb.b:                                             ; preds = %.critedge.i
  %i.i = load i64, ptr %i.f, align 8
  %.not11.i = icmp eq i64 %i.i, 0
  br i1 %.not11.i, label %bb.c, label %__fragmentation_index.exit

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %3, align 8
  %i.k = mul i64 %i.j, 1000
  %i.l = lshr i64 %i.k, %indvars.iv
  %i.m = add i64 %i.l, 1000
  %i.n = and i64 %i.h, 4294967295
  %i.o = udiv i64 %i.m, %i.n
  %i.p = trunc i64 %i.o to i32
  %i.q = sub i32 1000, %i.p
  br label %__fragmentation_index.exit

__fragmentation_index.exit:                       ; preds = %.critedge.i, %bb.b, %bb.c
  %.0.i = phi i32 [ -1000, %bb.b ], [ 0, %.critedge.i ], [ %i.q, %bb.c ] ; 2 uses
  %i.r = sdiv i32 %.0.i, 1000
  %i.s = srem i32 %.0.i, 1000
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.214, i32 noundef %i.r, i32 noundef %i.s) #18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 11
  br i1 %exitcond.not, label %bb.d, label %.critedge.i, !llvm.loop !125

bb.d:                                             ; preds = %__fragmentation_index.exit
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, argmem: read, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #4 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong memory(readwrite, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #7 = { fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite, inaccessiblemem: readwrite) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #8 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #9 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #10 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #14 = { nocallback nounwind }
attributes #15 = { noredzone null_pointer_is_valid allocsize(2) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { noredzone nounwind "no-builtin-wcslen" }
attributes #19 = { nounwind memory(none) }
attributes #20 = { nounwind }
attributes #21 = { noredzone "no-builtin-wcslen" }
attributes #22 = { nounwind memory(read) }
attributes #23 = { cold noredzone nounwind "no-builtin-wcslen" }
attributes #24 = { cold noredzone "no-builtin-wcslen" }
attributes #25 = { noredzone nounwind allocsize(2) "no-builtin-wcslen" }

!llvm.named.register.rsp = !{!6}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = distinct !{!0, !19}
!1 = distinct !{!1, !19}
!2 = distinct !{!2, !19}
!3 = distinct !{!3, !19}
!4 = distinct !{!4, !19}
!5 = distinct !{null, null}
!6 = !{!"rsp"}
!7 = !{i32 1, !"wchar_size", i32 2}
!8 = !{i32 8, !"cf-protection-branch", i32 1}
!9 = !{i32 4, !"function_return_thunk_extern", i32 1}
!10 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!11 = !{i32 1, !"Code Model", i32 2}
!12 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!13 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!14 = !{i32 1, !"override-stack-alignment", i32 8}
!15 = !{i32 4, !"SkipRaxSetup", i32 1}
!16 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!17 = !{i64 1112472}
!18 = !{!"branch_weights", i32 1, i32 1999}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{i64 4731}
!21 = !{i64 2149026834, i64 2149026873, i64 2149026894, i64 2149026931, i64 2149026954, i64 2149026825}
!22 = !{i64 1115751}
!23 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!24 = !{i64 2157847930}
!25 = !{i64 2157852149}
!26 = !{i64 2157856466}
!27 = !{i64 2157862380}
!28 = !{i64 2157866599}
!29 = !{i64 2157874977}
!30 = !{i64 2157884767}
!31 = !{i64 2157888998}
!32 = !{i64 2157893307}
!33 = !{i64 2157899220}
!34 = !{i64 2157903451}
!35 = !{i64 2157907760}
!36 = !{i64 2157920330}
!37 = !{i64 2157924155}
!38 = !{i64 2157933085}
!39 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!40 = !{i64 2157944551}
!41 = !{i64 2157948376}
!42 = !{i64 2157957306}
!43 = !{i64 2148615883}
!44 = !{i64 2148602936, i64 2148602975, i64 2148602996, i64 2148603033, i64 2148603056, i64 2148602927}
!45 = distinct !{!45, !19}
!46 = !{i64 2155248968}
!47 = distinct !{!47, !19}
!48 = !{i64 2157771417}
!49 = distinct !{!49, !19}
!50 = distinct !{!50, !19}
!51 = distinct !{!51, !19}
!52 = distinct !{!52, !19}
!53 = distinct !{!53, !19}
!54 = distinct !{!54, !19}
!55 = !{i64 2157801193}
!56 = !{i64 2157805046}
!57 = !{i64 2157818927}
!58 = !{i64 2157826565}
!59 = !{i64 2157830418}
!60 = !{i64 2157840238}
!61 = distinct !{!61, !19}
!62 = distinct !{!62, !19}
!63 = distinct !{!63, !19}
!64 = !{i64 23862}
!65 = distinct !{!65, !19}
!66 = !{i64 28904}
!67 = !{i64 29265}
!68 = !{i64 2158104826, i64 2158104701}
!69 = !{i64 2158105349, i64 2158106409, i64 2158106442, i64 2158106477, i64 2158106493, i64 2158107420, i64 2158107478, i64 2158107527, i64 2158107337, i64 2158106552, i64 2158106584, i64 2158106667}
!70 = !{i64 2158107819, i64 2158107695}
!71 = !{i64 2158161674}
!72 = !{i64 2158165036}
!73 = !{i64 57786}
!74 = distinct !{!74, !19}
!75 = distinct !{!75, !19}
!76 = distinct !{!76, !19}
!77 = distinct !{!77, !19}
!78 = !{i64 2157974362}
!79 = !{i64 2157979324}
!80 = !{!"branch_weights", i32 1999, i32 1}
!81 = !{!"branch_weights", i32 1, i32 0}
!82 = !{i64 2158023585}
!83 = !{i64 2158027892}
!84 = !{i64 2158029629}
!85 = !{i64 2158035077}
!86 = !{i64 2152627834}
!87 = !{i64 2158042619}
!88 = !{i64 2158048445}
!89 = !{i64 2158050453}
!90 = !{i64 2158037677}
!91 = !{i64 2158053847}
!92 = !{i64 2158058774}
!93 = !{i64 22433}
!94 = !{i64 62133}
!95 = !{i64 62179}
!96 = !{i64 2148604248, i64 2148604287, i64 2148604308, i64 2148604345, i64 2148604368, i64 2148604239}
!97 = distinct !{!97, !19}
!98 = distinct !{!98, !19}
!99 = !{i64 56085}
!100 = !{i64 2158149391}
!101 = !{i64 2158151453}
!102 = distinct !{!102, !19}
!103 = distinct !{!103, !19}
!104 = distinct !{!104, !19}
!105 = distinct !{!105, !19}
!106 = distinct !{!106, !19}
!107 = !{i64 2150038335, i64 2150038364, i64 2150038370, i64 2150038566, i64 2150038572, i64 2150038588, i64 2150038604, i64 2150038631, i64 2150038743, i64 2150038752, i64 2150038826, i64 2150038874, i64 2150038922, i64 2150038977, i64 2150039031, i64 2150039086, i64 2150039102, i64 2150039149, i64 2150039260, i64 2150039291, i64 2150039297, i64 2150039319, i64 2150039335, i64 2150038384, i64 2150038386, i64 2150038402, i64 2150038429, i64 2150038529, i64 2150039399, i64 2150039513, i64 2150039561, i64 2150039609, i64 2150039673, i64 2150039730, i64 2150039782, i64 2150039911, i64 2150040126, i64 2150039997, i64 2150040028, i64 2150040034, i64 2150040050, i64 2150040066, i64 2548071, i64 2548111, i64 2150040585, i64 2548149, i64 2548186, i64 2548207, i64 2548227}
!108 = !{i64 2150097643}
!109 = !{i64 2151423758}
!110 = !{i64 2151425022}
!111 = !{i64 2150103824}
!112 = !{i64 2151425204}
!113 = distinct !{!113, !19}
!114 = distinct !{null}
!115 = distinct !{!115, !19}
!116 = distinct !{!116, !19}
!117 = !{i64 50033}
!118 = distinct !{!118, !19}
!119 = !{i64 2361}
!120 = !{i64 54427}
!121 = distinct !{!121, !19}
!122 = distinct !{!122, !19}
!123 = distinct !{!123, !19}
!124 = !{i64 63460}
!125 = distinct !{!125, !19}
!126 = !{i64 64830}
end_hunk_0
