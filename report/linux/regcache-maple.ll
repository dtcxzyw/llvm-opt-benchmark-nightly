Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/regcache-maple?download=true
inline.NumInlined: 24
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@kfree
; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__mt_destroy(ptr noundef) local_unnamed_addr #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @regcache_maple_insert_block(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %3 = alloca %struct.ma_state, align 8           ; 14 uses
  %i.a = getelementptr i8, ptr %0, i64 560
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.b, ptr %3, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = sext i32 %1 to i64
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.g = sext i32 %2 to i64
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 0, ptr %i.j, align 8
  store i64 -1, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 76
  %i.n = sub i32 %2, %1
  %i.o = add i32 %i.n, 1                          ; 5 uses
  %i.p = getelementptr i8, ptr %0, i64 56         ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.m, i8 0, i64 12, i1 false)
  %i.q = icmp slt i32 %i.o, 0
  br i1 %i.q, label %_kmalloc_array_noprof.exit.thread, label %_kmalloc_array_noprof.exit, !prof !16

_kmalloc_array_noprof.exit:                       ; preds = %bb.a
  %i.r = load i32, ptr %i.p, align 8
  %i.s = zext nneg i32 %i.o to i64
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef %i.t, i32 noundef %i.r) #13 ; 8 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %_kmalloc_array_noprof.exit.thread, label %.preheader

.preheader:                                       ; preds = %_kmalloc_array_noprof.exit
  store i64 0, ptr %i.c, align 8, !annotation !22
  %.not38 = icmp eq i32 %i.o, 0
  br i1 %.not38, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.v = getelementptr i8, ptr %0, i64 544
  %i.w = load ptr, ptr %i.v, align 8              ; 5 uses
  %wide.trip.count = zext nneg i32 %i.o to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.x = icmp ult i32 %i.o, 4
  br i1 %i.x, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.b ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.b ]
  %i.y = trunc nuw nsw i64 %indvars.iv to i32
  %i.z = add i32 %1, %i.y
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr [8 x i8], ptr %i.w, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 4
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr [8 x i8], ptr %i.u, i64 %indvars.iv
  store i64 %i.ae, ptr %i.af, align 8
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ag = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.ah = add i32 %1, %i.ag
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr [8 x i8], ptr %i.w, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.aj, i64 4
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr [8 x i8], ptr %i.u, i64 %indvars.iv.next
  store i64 %i.am, ptr %i.an, align 8
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.ao = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  %i.ap = add i32 %1, %i.ao
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr [8 x i8], ptr %i.w, i64 %i.aq
  %i.as = getelementptr i8, ptr %i.ar, i64 4
  %i.at = load i32, ptr %i.as, align 4
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr [8 x i8], ptr %i.u, i64 %indvars.iv.next.1
  store i64 %i.au, ptr %i.av, align 8
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.aw = trunc nuw nsw i64 %indvars.iv.next.2 to i32
  %i.ax = add i32 %1, %i.aw
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr [8 x i8], ptr %i.w, i64 %i.ay
  %i.ba = getelementptr i8, ptr %i.az, i64 4
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr [8 x i8], ptr %i.u, i64 %indvars.iv.next.2
  store i64 %i.bc, ptr %i.bd, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !23

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod42 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod42)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.be = trunc nuw nsw i64 %indvars.iv.epil to i32
  %i.bf = add i32 %1, %i.be
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr [8 x i8], ptr %i.w, i64 %i.bg
  %i.bi = getelementptr i8, ptr %i.bh, i64 4
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr [8 x i8], ptr %i.u, i64 %indvars.iv.epil
  store i64 %i.bk, ptr %i.bl, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.c, !llvm.loop !24

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.c, %.preheader
  tail call void @_raw_spin_lock(ptr noundef %i.b) #11
  %i.bm = getelementptr i8, ptr %0, i64 544
  %i.bn = load ptr, ptr %i.bm, align 8            ; 2 uses
  %i.bo = getelementptr [8 x i8], ptr %i.bn, i64 %i.e
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr [8 x i8], ptr %i.bn, i64 %i.g
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = zext i32 %i.bs to i64
  store i32 1, ptr %i.l, align 8
  store ptr null, ptr %i.h, align 8
  store i64 %i.bq, ptr %i.d, align 8
  store i64 %i.bt, ptr %i.f, align 8
  %i.bu = load i32, ptr %i.p, align 8
  %i.bv = call i32 @mas_store_gfp(ptr noundef nonnull %3, ptr noundef nonnull %i.u, i32 noundef %i.bu) #11 ; 2 uses
  %i.bw = load ptr, ptr %3, align 8
  call void @_raw_spin_unlock(ptr noundef %i.bw) #11
  %.not34 = icmp eq i32 %i.bv, 0
  br i1 %.not34, label %_kmalloc_array_noprof.exit.thread, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  call void @kfree(ptr noundef nonnull %i.u) #11
  br label %_kmalloc_array_noprof.exit.thread

_kmalloc_array_noprof.exit.thread:                ; preds = %bb.a, %._crit_edge, %bb.d, %_kmalloc_array_noprof.exit
  %.0 = phi i32 [ -12, %_kmalloc_array_noprof.exit ], [ %i.bv, %bb.d ], [ 0, %._crit_edge ], [ -12, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @mas_store_gfp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @mas_walk(ptr noundef) local_unnamed_addr #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__rcu_read_lock() local_unnamed_addr #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__rcu_read_unlock() local_unnamed_addr #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @regcache_reg_needs_sync(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @regcache_maple_sync_block(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 104
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  tail call void @mas_pause(ptr noundef %2) #11
  tail call void @__rcu_read_unlock() #11
  %i.c = sub i32 %4, %3                           ; 2 uses
  %i.d = icmp ugt i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = tail call zeroext i1 @regmap_can_raw_write(ptr noundef %0) #11
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = zext i32 %i.c to i64                     ; 2 uses
  %i.g = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.f, i64 %i.b) ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 1
  br i1 %i.h, label %_kmalloc_array_noprof.exit.thread, label %_kmalloc_array_noprof.exit, !prof !16

_kmalloc_array_noprof.exit:                       ; preds = %bb.c
  %i.i = getelementptr i8, ptr %0, i64 56
  %i.j = load i32, ptr %i.i, align 8
  %5 = extractvalue { i64, i1 } %i.g, 0
  %i.k = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef %5, i32 noundef %i.j) #13 ; 4 uses
  %.not51 = icmp eq ptr %i.k, null
  br i1 %.not51, label %_kmalloc_array_noprof.exit.thread, label %bb.d

bb.d:                                             ; preds = %_kmalloc_array_noprof.exit
  %i.l = zext i32 %4 to i64
  %i.m = icmp ult i32 %3, %4
  br i1 %i.m, label %.lr.ph58, label %._crit_edge

.lr.ph58:                                         ; preds = %bb.d
  %i.n = zext i32 %3 to i64
  %i.o = getelementptr i8, ptr %2, i64 8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph58, %bb.e
  %.057 = phi i64 [ %i.n, %.lr.ph58 ], [ %i.w, %bb.e ] ; 3 uses
  %i.p = trunc nuw i64 %.057 to i32
  %i.q = sub nuw i32 %i.p, %3
  %i.r = load i64, ptr %i.o, align 8
  %i.s = sub i64 %.057, %i.r
  %i.t = getelementptr [8 x i8], ptr %1, i64 %i.s
  %i.u = load i64, ptr %i.t, align 8
  %i.v = trunc i64 %i.u to i32
  tail call void @regcache_set_val(ptr noundef %0, ptr noundef nonnull %i.k, i32 noundef %i.q, i32 noundef %i.v) #11
  %i.w = add nuw nsw i64 %.057, 1                 ; 2 uses
  %exitcond59.not = icmp eq i64 %i.w, %i.l
  br i1 %exitcond59.not, label %._crit_edge, label %bb.e, !llvm.loop !26

._crit_edge:                                      ; preds = %bb.e, %bb.d
  %6 = mul i64 %i.b, %i.f
  %i.x = tail call i32 @_regmap_raw_write(ptr noundef %0, i32 noundef %3, ptr noundef nonnull %i.k, i64 noundef %6, i1 noundef zeroext false) #11
  tail call void @kfree(ptr noundef nonnull %i.k) #11
  br label %_kmalloc_array_noprof.exit.thread

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.y = zext i32 %4 to i64
  %i.z = icmp ult i32 %3, %4
  br i1 %i.z, label %.lr.ph, label %_kmalloc_array_noprof.exit.thread

.lr.ph:                                           ; preds = %bb.f
  %i.aa = zext i32 %3 to i64
  %i.ab = getelementptr i8, ptr %2, i64 8
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  %i.ac = add nuw nsw i64 %.154, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ac, %i.y
  br i1 %exitcond.not, label %_kmalloc_array_noprof.exit.thread, label %bb.h, !llvm.loop !27

bb.h:                                             ; preds = %.lr.ph, %bb.g
  %.154 = phi i64 [ %i.aa, %.lr.ph ], [ %i.ac, %bb.g ] ; 3 uses
  %i.ad = trunc nuw i64 %.154 to i32
  %i.ae = load i64, ptr %i.ab, align 8
  %i.af = sub i64 %.154, %i.ae
  %i.ag = getelementptr [8 x i8], ptr %1, i64 %i.af
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = tail call i32 @_regmap_write(ptr noundef %0, i32 noundef %i.ad, i32 noundef %i.ai) #11 ; 2 uses
  %.not = icmp eq i32 %i.aj, 0
  br i1 %.not, label %bb.g, label %_kmalloc_array_noprof.exit.thread

_kmalloc_array_noprof.exit.thread:                ; preds = %bb.h, %bb.g, %bb.f, %bb.c, %_kmalloc_array_noprof.exit, %._crit_edge
  %.147 = phi i32 [ %i.x, %._crit_edge ], [ -12, %_kmalloc_array_noprof.exit ], [ -12, %bb.c ], [ 0, %bb.f ], [ %i.aj, %bb.h ], [ 0, %bb.g ]
  tail call void @__rcu_read_lock() #11
  ret i32 %.147
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mas_pause(ptr noundef) local_unnamed_addr #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @regmap_can_raw_write(ptr noundef) local_unnamed_addr #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @regcache_set_val(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @_regmap_raw_write(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @_regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noredzone null_pointer_is_valid allocsize(1,2)
declare dso_local ptr @kmemdup_array(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @mas_erase(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noredzone null_pointer_is_valid allocsize(2) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid allocsize(0) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { noredzone null_pointer_is_valid allocsize(1,2) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { noredzone nounwind allocsize(2) "no-builtin-wcslen" }
attributes #10 = { nounwind }
attributes #11 = { noredzone nounwind "no-builtin-wcslen" }
attributes #12 = { noredzone "no-builtin-wcslen" }
attributes #13 = { noredzone nounwind allocsize(0) "no-builtin-wcslen" }
attributes #14 = { noredzone nounwind allocsize(1,2) "no-builtin-wcslen" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4 = !{i32 1, !"Code Model", i32 2}
!5 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!6 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!7 = !{i32 1, !"override-stack-alignment", i32 8}
!8 = !{i32 4, !"SkipRaxSetup", i32 1}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!10 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{i64 7494}
!14 = distinct !{!14, !12}
!15 = !{i64 7653}
!16 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!17 = !{i64 5544}
!18 = distinct !{!18, !12}
!19 = !{i64 5701}
!20 = distinct !{!20, !12}
!21 = distinct !{!21, !12}
!22 = !{!"auto-init"}
!23 = distinct !{!23, !12}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.unroll.disable"}
!26 = distinct !{!26, !12}
!27 = distinct !{!27, !12}
end_hunk_0
