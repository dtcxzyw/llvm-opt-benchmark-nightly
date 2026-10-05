Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/orphan?download=true
inline.NumInlined: 134
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@ext4_init_orphan_info:bb.a
  %i.af = getelementptr i8, ptr %i.o, i64 808
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = getelementptr i8, ptr %.val84, i64 636
  store i32 %i.ag, ptr %i.ah, align 4
  %sext = shl i64 %i.ad, 32
  %i.ai = tail call i64 @llvm.smax.i64(i64 %sext, i64 -1)
  %.0.i = ashr i64 %i.ai, 28
  %i.aj = tail call noalias ptr @__kvmalloc_node_noprof(i64 noundef %.0.i, i64 noundef 1, i32 noundef 3264, i32 noundef -1) #14 ; 2 uses
  %i.ak = getelementptr i8, ptr %.val84, i64 640  ; 6 uses
  store ptr %i.aj, ptr %i.ak, align 8
  %.not = icmp eq ptr %i.aj, null
  br i1 %.not, label %bb.p, label %.preheader

.preheader:                                       ; preds = %bb.f
  %i.al = load i32, ptr %i.c, align 8
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.lr.ph108, label %._crit_edge109

.lr.ph108:                                        ; preds = %.preheader
  %i.an = icmp sgt i32 %i.g, 0
  %wide.trip.count = and i64 %i.f, 2147483647
  %i.ao = add nsw i64 %wide.trip.count, -1
  %xtraiter = and i64 %i.f, 3                     ; 3 uses
  %i.ap = icmp ult i64 %i.ao, 3
  %unroll_iter = and i64 %i.f, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod177 = icmp ne i64 %xtraiter, 0
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph108, %._crit_edge
  %indvars.iv125 = phi i64 [ 0, %.lr.ph108 ], [ %indvars.iv.next126, %._crit_edge ] ; 7 uses
  %i.aq = trunc nuw nsw i64 %indvars.iv125 to i32 ; 3 uses
  %i.ar = call ptr @ext4_bread(ptr noundef null, ptr noundef %i.o, i32 noundef %i.aq, i32 noundef 0) #11
  %i.as = load ptr, ptr %i.ak, align 8
  %i.at = getelementptr [16 x i8], ptr %i.as, i64 %indvars.iv125
  %i.au = getelementptr i8, ptr %i.at, i64 8
  store ptr %i.ar, ptr %i.au, align 8
  %i.av = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.aw = getelementptr [16 x i8], ptr %i.av, i64 %indvars.iv125
  %i.ax = getelementptr i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8            ; 5 uses
  %i.az = icmp ugt ptr %i.ay, inttoptr (i64 -4096 to ptr)
  br i1 %i.az, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = trunc i64 %i.ba to i32
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %.not81 = icmp eq ptr %i.ay, null
  br i1 %.not81, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val86 = load i64, ptr %i.d, align 8           ; 3 uses
  %i.bc = getelementptr i8, ptr %i.ay, i64 40     ; 3 uses
  %.val87 = load ptr, ptr %i.bc, align 8
  %i.bd = getelementptr i8, ptr %.val87, i64 %.val86
  %i.be = getelementptr i8, ptr %i.bd, i64 -8
  %i.bf = load i32, ptr %i.be, align 4
  %.not82 = icmp eq i32 %i.bf, 185649668
  br i1 %.not82, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %0, ptr noundef nonnull @__func__.ext4_init_orphan_info, i32 noundef 618, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.17, i32 noundef %i.aq) #11
  br label %.loopexit

bb.l:                                             ; preds = %bb.j
  %.val90 = load ptr, ptr %i.b, align 32          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.bg = getelementptr i8, ptr %i.ay, i64 24
  %i.bh = load i64, ptr %i.bg, align 8
  store i64 %i.bh, ptr %i.a, align 8
  %i.bi = getelementptr i8, ptr %.val90, i64 104
  %.val15.val.i = load ptr, ptr %i.bi, align 8
  %i.bj = getelementptr i8, ptr %.val15.val.i, i64 100
  %.val15.val.val.i = load i32, ptr %i.bj, align 4
  %i.bk = and i32 %.val15.val.val.i, 1024
  %.not.i = icmp eq i32 %i.bk, 0
  br i1 %.not.i, label %ext4_orphan_file_block_csum_verify.exit.thread, label %ext4_orphan_file_block_csum_verify.exit

ext4_orphan_file_block_csum_verify.exit.thread:   ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.n

ext4_orphan_file_block_csum_verify.exit:          ; preds = %bb.l
  %i.bl = add i64 %.val86, 4294967288
  %.val14.i = load ptr, ptr %i.bc, align 8
  %i.bm = getelementptr i8, ptr %.val14.i, i64 %.val86
  %i.bn = getelementptr i8, ptr %.val90, i64 636
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = call i32 @crc32c(i32 noundef %i.bo, ptr noundef nonnull %i.a, i64 noundef 8) #11
  %i.bq = load ptr, ptr %i.bc, align 8
  %i.br = and i64 %i.bl, 4294967292
  %i.bs = call i32 @crc32c(i32 noundef %i.bp, ptr noundef %i.bq, i64 noundef %i.br) #11
  %i.bt = getelementptr i8, ptr %i.bm, i64 -4
  %i.bu = load i32, ptr %i.bt, align 4
  %.not96 = icmp eq i32 %i.bu, %i.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br i1 %.not96, label %ext4_orphan_file_block_csum_verify.exit._crit_edge, label %bb.m

ext4_orphan_file_block_csum_verify.exit._crit_edge: ; preds = %ext4_orphan_file_block_csum_verify.exit
  %.pre = load ptr, ptr %i.ak, align 8
  br label %bb.n

bb.m:                                             ; preds = %ext4_orphan_file_block_csum_verify.exit
  call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %0, ptr noundef nonnull @__func__.ext4_init_orphan_info, i32 noundef 624, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.18, i32 noundef %i.aq) #11
  br label %.loopexit

bb.n:                                             ; preds = %ext4_orphan_file_block_csum_verify.exit._crit_edge, %ext4_orphan_file_block_csum_verify.exit.thread
  %i.bv = phi ptr [ %.pre, %ext4_orphan_file_block_csum_verify.exit._crit_edge ], [ %i.av, %ext4_orphan_file_block_csum_verify.exit.thread ]
  %i.bw = getelementptr [16 x i8], ptr %i.bv, i64 %indvars.iv125 ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = getelementptr i8, ptr %i.by, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8            ; 5 uses
  br i1 %i.an, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.n
  br i1 %i.ap, label %.lr.ph.epil.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %.073106 = phi i32 [ %spec.select.3, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.cb = getelementptr [4 x i8], ptr %i.ca, i64 %indvars.iv
  %i.cc = load i32, ptr %i.cb, align 4
  %i.cd = icmp eq i32 %i.cc, 0
  %i.ce = zext i1 %i.cd to i32
  %spec.select = add i32 %.073106, %i.ce
  %i.cf = getelementptr [4 x i8], ptr %i.ca, i64 %indvars.iv
  %i.cg = getelementptr i8, ptr %i.cf, i64 4
  %i.ch = load i32, ptr %i.cg, align 4
  %i.ci = icmp eq i32 %i.ch, 0
  %i.cj = zext i1 %i.ci to i32
  %spec.select.1 = add i32 %spec.select, %i.cj
  %i.ck = getelementptr [4 x i8], ptr %i.ca, i64 %indvars.iv
  %i.cl = getelementptr i8, ptr %i.ck, i64 8
  %i.cm = load i32, ptr %i.cl, align 4
  %i.cn = icmp eq i32 %i.cm, 0
  %i.co = zext i1 %i.cn to i32
  %spec.select.2 = add i32 %spec.select.1, %i.co
  %i.cp = getelementptr [4 x i8], ptr %i.ca, i64 %indvars.iv
  %i.cq = getelementptr i8, ptr %i.cp, i64 12
  %i.cr = load i32, ptr %i.cq, align 4
  %i.cs = icmp eq i32 %i.cr, 0
  %i.ct = zext i1 %i.cs to i32
  %spec.select.3 = add i32 %spec.select.2, %i.ct  ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !45

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.073106.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %spec.select.3, %._crit_edge.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod177)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.lr.ph.epil ], [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.073106.epil = phi i32 [ %spec.select.epil, %.lr.ph.epil ], [ %.073106.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.cu = getelementptr [4 x i8], ptr %i.ca, i64 %indvars.iv.epil
  %i.cv = load i32, ptr %i.cu, align 4
  %i.cw = icmp eq i32 %i.cv, 0
  %i.cx = zext i1 %i.cw to i32
  %spec.select.epil = add i32 %.073106.epil, %i.cx ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !46

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.n
  %.073.lcssa = phi i32 [ 0, %bb.n ], [ %spec.select.3, %._crit_edge.loopexit.unr-lcssa ], [ %spec.select.epil, %.lr.ph.epil ]
  store volatile i32 %.073.lcssa, ptr %i.bw, align 8
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1 ; 2 uses
  %i.cy = load i32, ptr %i.c, align 8
  %i.cz = sext i32 %i.cy to i64
  %i.da = icmp slt i64 %indvars.iv.next126, %i.cz
  br i1 %i.da, label %bb.g, label %._crit_edge109, !llvm.loop !47

._crit_edge109:                                   ; preds = %._crit_edge, %.preheader
  call void @iput(ptr noundef %i.o) #11
  br label %bb.q

.loopexit:                                        ; preds = %bb.i, %bb.m, %bb.k, %bb.h
  %.075 = phi i32 [ %i.bb, %bb.h ], [ -5, %bb.k ], [ -5, %bb.m ], [ -5, %bb.i ]
  %.not147 = icmp eq i64 %indvars.iv125, 0
  br i1 %.not147, label %._crit_edge114, label %.lr.ph113.preheader

.lr.ph113.preheader:                              ; preds = %.loopexit
  %.1110 = add nuw i64 %indvars.iv125, 4294967295
  %i.db = and i64 %.1110, 4294967295
  br label %.lr.ph113

.lr.ph113:                                        ; preds = %.lr.ph113.preheader, %brelse.exit
  %indvars.iv128 = phi i64 [ %i.db, %.lr.ph113.preheader ], [ %indvars.iv.next129, %brelse.exit ] ; 2 uses
  %i.dc = load ptr, ptr %i.ak, align 8
  %i.dd = getelementptr [16 x i8], ptr %i.dc, i64 %indvars.iv128
  %i.de = getelementptr i8, ptr %i.dd, i64 8
  %i.df = load ptr, ptr %i.de, align 8            ; 2 uses
  %.not.i92 = icmp eq ptr %i.df, null
  br i1 %.not.i92, label %brelse.exit, label %bb.o

bb.o:                                             ; preds = %.lr.ph113
  call void @__brelse(ptr noundef nonnull %i.df) #11
  br label %brelse.exit

brelse.exit:                                      ; preds = %.lr.ph113, %bb.o
  %indvars.iv.next129 = add nsw i64 %indvars.iv128, -1 ; 2 uses
  %1 = and i64 %indvars.iv.next129, 2147483648
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %.lr.ph113, label %._crit_edge114, !llvm.loop !48

._crit_edge114:                                   ; preds = %brelse.exit, %.loopexit
  %i.dg = load ptr, ptr %i.ak, align 8
  call void @kvfree(ptr noundef %i.dg) #11
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %._crit_edge114, %bb.e
  %.176 = phi i32 [ -117, %bb.e ], [ %.075, %._crit_edge114 ], [ -12, %bb.f ]
  call void @iput(ptr noundef %i.o) #11
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %bb.p, %._crit_edge109, %bb.c
  %.0 = phi i32 [ %i.r, %bb.c ], [ %.176, %bb.p ], [ 0, %._crit_edge109 ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @__ext4_iget(ptr noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kvmalloc_node_noprof(i64 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @ext4_bread(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__ext4_error(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, target_mem: none)
define dso_local range(i32 0, 2) i32 @ext4_orphan_file_empty(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 864
  %.val = load ptr, ptr %i.a, align 32            ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 24
  %.val10 = load i64, ptr %i.b, align 8
  %i.c = add i64 %.val10, 17179869176
  %i.d = lshr i64 %i.c, 2
  %i.e = trunc i64 %i.d to i32
  %i.f = getelementptr i8, ptr %.val, i64 104
  %.val11.val = load ptr, ptr %i.f, align 8
  %i.g = getelementptr i8, ptr %.val11.val, i64 92
  %.val11.val.val = load i32, ptr %i.g, align 4
  %i.h = and i32 %.val11.val.val, 4096
  %.not12 = icmp eq i32 %i.h, 0
  br i1 %.not12, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.i = getelementptr i8, ptr %.val, i64 632
  %i.j = load i32, ptr %i.i, align 8              ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.l = getelementptr i8, ptr %.val, i64 640
  %i.m = load ptr, ptr %i.l, align 8
  %wide.trip.count = zext nneg i32 %i.j to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !50

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.n = getelementptr [16 x i8], ptr %i.m, i64 %indvars.iv
  %i.o = load volatile i32, ptr %i.n, align 4
  %.not = icmp eq i32 %i.o, %i.e
  br i1 %.not, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.b, %.preheader, %bb.a
  %.09 = phi i32 [ 1, %bb.a ], [ 1, %.preheader ], [ 0, %bb.c ], [ 1, %bb.b ]
  ret i32 %.09
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__cond_resched() local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @dquot_quota_on_mount(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @dquot_initialize(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @truncate_inode_pages(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ext4_truncate(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @crc32c(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #9

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #6 = { noredzone null_pointer_is_valid allocsize(0) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { noredzone nounwind "no-builtin-wcslen" }
attributes #12 = { cold noredzone nounwind "no-builtin-wcslen" }
attributes #13 = { noredzone "no-builtin-wcslen" }
attributes #14 = { noredzone nounwind allocsize(0) "no-builtin-wcslen" }

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
!10 = !{!"auto-init"}
!11 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!12 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{i64 2148955340, i64 2148955379, i64 2148955400, i64 2148955437, i64 2148955460, i64 2148955331}
!15 = !{i64 2148555962, i64 2148556001, i64 2148556022, i64 2148556059, i64 2148556082, i64 2148555953}
!16 = distinct !{!16, !13}
!17 = distinct !{!17, !13}
!18 = distinct !{!18, !13}
!19 = !{i64 2157542499, i64 2157542374}
!20 = !{i64 2157543022, i64 2157544140, i64 2157544173, i64 2157544208, i64 2157544224, i64 2157545151, i64 2157545209, i64 2157545258, i64 2157545068, i64 2157544283, i64 2157544315, i64 2157544398}
!21 = !{i64 2157545554, i64 2157545430}
!22 = !{i64 2157547938, i64 2157547813}
!23 = !{i64 2157548461, i64 2157548937, i64 2157548970, i64 2157549005, i64 2157549021, i64 2157549862, i64 2157549920, i64 2157549969, i64 2157549779, i64 2157549080, i64 2157549112}
!24 = !{i64 2157537163}
!25 = !{!"branch_weights", i32 1, i32 127}
!26 = !{i64 2148971295, i64 2148971334, i64 2148971355, i64 2148971392, i64 2148971415, i64 2148971424}
!27 = !{!"branch_weights", i32 127, i32 255873}
!28 = !{i64 2157541011, i64 2157541050, i64 2157541071, i64 2157541108, i64 2157541131, i64 2157541140}
!29 = !{i64 4369}
!30 = !{i64 2148562427, i64 2148562466, i64 2148562487, i64 2148562524, i64 2148562547, i64 2148562556}
!31 = !{i64 2157556870, i64 2157556745}
!32 = !{i64 2157557393, i64 2157558511, i64 2157558544, i64 2157558579, i64 2157558595, i64 2157559522, i64 2157559580, i64 2157559629, i64 2157559439, i64 2157558654, i64 2157558686, i64 2157558769}
!33 = !{i64 2157559925, i64 2157559801}
!34 = !{i64 2157552037, i64 2157551912}
!35 = !{i64 2157552560, i64 2157553618, i64 2157553651, i64 2157553686, i64 2157553702, i64 2157554629, i64 2157554687, i64 2157554736, i64 2157554546, i64 2157553761, i64 2157553793, i64 2157553876}
!36 = !{i64 2157555032, i64 2157554908}
!37 = !{i64 2148557274, i64 2148557313, i64 2148557334, i64 2148557371, i64 2148557394, i64 2148557265}
!38 = !{i64 7913}
!39 = distinct !{!39, !13}
!40 = distinct !{!40, !13}
!41 = distinct !{!41, !13}
!42 = !{i64 13708}
!43 = !{i64 14138}
!44 = distinct !{!44, !13}
!45 = distinct !{!45, !13}
!46 = distinct !{!46, !49}
!47 = distinct !{!47, !13}
!48 = distinct !{!48, !13}
!49 = !{!"llvm.loop.unroll.disable"}
!50 = distinct !{!50, !13}
end_hunk_0
