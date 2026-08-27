Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/virtio_console?download=true
inline.NumInlined: 245
inline.NumDeleted: 99
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@control_work_handler:bb.a
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @init_vqs(ptr nofree noundef captures(none) initializes((144, 160)) %0) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 108
  %i.b = load i32, ptr %i.a, align 4              ; 7 uses
  %i.c = getelementptr i8, ptr %0, i64 112        ; 3 uses
  %.val139 = load ptr, ptr %i.c, align 8          ; 2 uses
  %.not.i = icmp eq ptr %.val139, null
  br i1 %.not.i, label %use_multiport.exit.thread, label %use_multiport.exit

use_multiport.exit:                               ; preds = %bb.a
  %i.d = getelementptr i8, ptr %.val139, i64 824
  %.val.i = load i64, ptr %i.d, align 8
  %.val.i.fr = freeze i64 %.val.i
  %i.e = and i64 %.val.i.fr, 2
  %.not153 = icmp eq i64 %i.e, 0
  %i.f = shl i32 %i.b, 1
  %i.g = add i32 %i.f, 2
  %spec.select = select i1 %.not153, i32 2, i32 %i.g
  br label %use_multiport.exit.thread

use_multiport.exit.thread:                        ; preds = %use_multiport.exit, %bb.a
  %i.h = phi i32 [ 2, %bb.a ], [ %spec.select, %use_multiport.exit ] ; 2 uses
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %i.j = shl nuw nsw i64 %i.i, 3
  %i.k = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef %i.j, i32 noundef 3264) #19 ; 13 uses
  %i.l = mul nuw nsw i64 %i.i, 24
  %i.m = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef %i.l, i32 noundef 3520) #19 ; 16 uses
  %i.n = zext i32 %i.b to i64                     ; 2 uses
  %i.o = shl nuw nsw i64 %i.n, 3                  ; 2 uses
  %i.p = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef %i.o, i32 noundef 3264) #19
  %i.q = getelementptr i8, ptr %0, i64 144        ; 7 uses
  store ptr %i.p, ptr %i.q, align 8
  %i.r = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef %i.o, i32 noundef 3264) #19 ; 4 uses
  %i.s = getelementptr i8, ptr %0, i64 152        ; 6 uses
  store ptr %i.r, ptr %i.s, align 8
  %i.t = icmp ne ptr %i.k, null
  %i.u = icmp ne ptr %i.m, null
  %or.cond = select i1 %i.t, i1 %i.u, i1 false
  br i1 %or.cond, label %bb.b, label %bb.g

bb.b:                                             ; preds = %use_multiport.exit.thread
  %i.v = load ptr, ptr %i.q, align 8
  %.not = icmp eq ptr %i.v, null
  %.not111 = icmp eq ptr %i.r, null
  %or.cond113 = select i1 %.not, i1 true, i1 %.not111
  br i1 %or.cond113, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr i8, ptr %i.m, i64 8
  store ptr @in_intr, ptr %i.w, align 8
  %i.x = getelementptr i8, ptr %i.m, i64 24
  %i.y = getelementptr i8, ptr %i.m, i64 32
  store ptr @out_intr, ptr %i.y, align 8
  store ptr @.str.26, ptr %i.m, align 8
  store ptr @.str.27, ptr %i.x, align 8
  %.val138 = load ptr, ptr %i.c, align 8          ; 4 uses
  %.not.i141 = icmp eq ptr %.val138, null
  br i1 %.not.i141, label %use_multiport.exit144.thread, label %use_multiport.exit144

use_multiport.exit144:                            ; preds = %bb.c
  %i.z = getelementptr i8, ptr %.val138, i64 824
  %.val.i142 = load i64, ptr %i.z, align 8
  %i.aa = and i64 %.val.i142, 2
  %.not154 = icmp eq i64 %i.aa, 0
  br i1 %.not154, label %use_multiport.exit144.thread, label %bb.d

bb.d:                                             ; preds = %use_multiport.exit144
  %i.ab = getelementptr i8, ptr %i.m, i64 48
  %i.ac = getelementptr i8, ptr %i.m, i64 56
  store ptr @control_intr, ptr %i.ac, align 8
  store ptr @.str.28, ptr %i.ab, align 8
  %i.ad = getelementptr i8, ptr %i.m, i64 72
  store ptr @.str.29, ptr %i.ad, align 8
  %i.ae = icmp ugt i32 %i.b, 1
  br i1 %i.ae, label %.lr.ph.preheader, label %use_multiport.exit144.thread

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.af = add i32 %i.b, -1                        ; 3 uses
  %xtraiter = and i32 %i.af, 1
  %i.ag = icmp eq i32 %i.b, 2
  br i1 %i.ag, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.af, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.0104156 = phi i32 [ 2, %.lr.ph.preheader.new ], [ %i.ap, %.lr.ph ] ; 4 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ah = add i32 %.0104156, 2
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr [24 x i8], ptr %i.m, i64 %i.ai ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 8
  store ptr @in_intr, ptr %i.ak, align 8
  %i.al = add i32 %.0104156, 3
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr [24 x i8], ptr %i.m, i64 %i.am ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 8
  store ptr @out_intr, ptr %i.ao, align 8
  store ptr @.str.26, ptr %i.aj, align 8
  store ptr @.str.27, ptr %i.an, align 8
  %i.ap = add i32 %.0104156, 4                    ; 3 uses
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr [24 x i8], ptr %i.m, i64 %i.aq ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 8
  store ptr @in_intr, ptr %i.as, align 8
  %i.at = add i32 %.0104156, 5
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr [24 x i8], ptr %i.m, i64 %i.au ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 8
  store ptr @out_intr, ptr %i.aw, align 8
  store ptr @.str.26, ptr %i.ar, align 8
  store ptr @.str.27, ptr %i.av, align 8
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %use_multiport.exit144.thread.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !44

use_multiport.exit144.thread.loopexit.unr-lcssa:  ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %use_multiport.exit144.thread, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %use_multiport.exit144.thread.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0104156.epil.init = phi i32 [ 2, %.lr.ph.preheader ], [ %i.ap, %use_multiport.exit144.thread.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod167 = trunc i32 %i.af to i1
  tail call void @llvm.assume(i1 %lcmp.mod167)
  %i.ax = add i32 %.0104156.epil.init, 2
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr [24 x i8], ptr %i.m, i64 %i.ay ; 2 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 8
  store ptr @in_intr, ptr %i.ba, align 8
  %i.bb = add i32 %.0104156.epil.init, 3
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr [24 x i8], ptr %i.m, i64 %i.bc ; 2 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 8
  store ptr @out_intr, ptr %i.be, align 8
  store ptr @.str.26, ptr %i.az, align 8
  store ptr @.str.27, ptr %i.bd, align 8
  br label %use_multiport.exit144.thread

use_multiport.exit144.thread:                     ; preds = %.lr.ph.epil.preheader, %use_multiport.exit144.thread.loopexit.unr-lcssa, %bb.d, %bb.c, %use_multiport.exit144
  %i.bf = getelementptr i8, ptr %.val138, i64 784
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr i8, ptr %i.bg, i64 48
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = tail call i32 %i.bi(ptr noundef %.val138, i32 noundef %i.h, ptr noundef nonnull %i.k, ptr noundef nonnull %i.m, ptr noundef null) #15, !inline_history !45 ; 2 uses
  %.not112 = icmp eq i32 %i.bj, 0
  br i1 %.not112, label %bb.e, label %use_multiport.exit144.thread._crit_edge

use_multiport.exit144.thread._crit_edge:          ; preds = %use_multiport.exit144.thread
  %.pre = load ptr, ptr %i.s, align 8
  br label %bb.g

bb.e:                                             ; preds = %use_multiport.exit144.thread
  %i.bk = load ptr, ptr %i.k, align 8
  %i.bl = load ptr, ptr %i.q, align 8
  store ptr %i.bk, ptr %i.bl, align 8
  %i.bm = getelementptr i8, ptr %i.k, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = load ptr, ptr %i.s, align 8
  store ptr %i.bn, ptr %i.bo, align 8
  %.val = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i145 = icmp eq ptr %.val, null
  br i1 %.not.i145, label %use_multiport.exit148.thread, label %use_multiport.exit148

use_multiport.exit148:                            ; preds = %bb.e
  %i.bp = getelementptr i8, ptr %.val, i64 824
  %.val.i146 = load i64, ptr %i.bp, align 8
  %i.bq = and i64 %.val.i146, 2
  %.not155 = icmp eq i64 %i.bq, 0
  br i1 %.not155, label %use_multiport.exit148.thread, label %bb.f

bb.f:                                             ; preds = %use_multiport.exit148
  %i.br = getelementptr i8, ptr %i.k, i64 16
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = getelementptr i8, ptr %0, i64 120
  store ptr %i.bs, ptr %i.bt, align 8
  %i.bu = getelementptr i8, ptr %i.k, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = getelementptr i8, ptr %0, i64 128
  store ptr %i.bv, ptr %i.bw, align 8
  %i.bx = icmp ugt i32 %i.b, 1
  br i1 %i.bx, label %.lr.ph160.preheader, label %use_multiport.exit148.thread

.lr.ph160.preheader:                              ; preds = %bb.f
  %i.by = add nsw i64 %i.n, -1                    ; 3 uses
  %xtraiter168 = and i64 %i.by, 1
  %i.bz = icmp eq i32 %i.b, 2
  br i1 %i.bz, label %.lr.ph160.epil.preheader, label %.lr.ph160.preheader.new

.lr.ph160.preheader.new:                          ; preds = %.lr.ph160.preheader
  %unroll_iter171 = and i64 %i.by, -2
  br label %.lr.ph160

.lr.ph160:                                        ; preds = %.lr.ph160, %.lr.ph160.preheader.new
  %indvars.iv = phi i64 [ 1, %.lr.ph160.preheader.new ], [ %indvars.iv.next.1, %.lr.ph160 ] ; 4 uses
  %.1105158 = phi i32 [ 2, %.lr.ph160.preheader.new ], [ %i.cg, %.lr.ph160 ] ; 4 uses
  %niter172 = phi i64 [ 0, %.lr.ph160.preheader.new ], [ %niter172.next.1, %.lr.ph160 ]
  %1 = add i32 %.1105158, 2
  %2 = zext i32 %1 to i64
  %3 = getelementptr [8 x i8], ptr %i.k, i64 %2
  %i.ca = load ptr, ptr %3, align 8
  %i.cb = load ptr, ptr %i.q, align 8
  %i.cc = getelementptr [8 x i8], ptr %i.cb, i64 %indvars.iv
  store ptr %i.ca, ptr %i.cc, align 8
  %4 = add i32 %.1105158, 3
  %5 = zext i32 %4 to i64
  %6 = getelementptr [8 x i8], ptr %i.k, i64 %5
  %i.cd = load ptr, ptr %6, align 8
  %i.ce = load ptr, ptr %i.s, align 8
  %i.cf = getelementptr [8 x i8], ptr %i.ce, i64 %indvars.iv
  store ptr %i.cd, ptr %i.cf, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cg = add i32 %.1105158, 4                    ; 3 uses
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr [8 x i8], ptr %i.k, i64 %i.ch
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = load ptr, ptr %i.q, align 8
  %i.cl = getelementptr [8 x i8], ptr %i.ck, i64 %indvars.iv.next
  store ptr %i.cj, ptr %i.cl, align 8
  %7 = add i32 %.1105158, 5
  %8 = zext i32 %7 to i64
  %9 = getelementptr [8 x i8], ptr %i.k, i64 %8
  %i.cm = load ptr, ptr %9, align 8
  %i.cn = load ptr, ptr %i.s, align 8
  %i.co = getelementptr [8 x i8], ptr %i.cn, i64 %indvars.iv.next
  store ptr %i.cm, ptr %i.co, align 8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter172.next.1 = add nuw i64 %niter172, 2     ; 2 uses
  %niter172.ncmp.1 = icmp eq i64 %niter172.next.1, %unroll_iter171
  br i1 %niter172.ncmp.1, label %use_multiport.exit148.thread.loopexit.unr-lcssa, label %.lr.ph160, !llvm.loop !46

bb.g:                                             ; preds = %use_multiport.exit144.thread._crit_edge, %use_multiport.exit.thread, %bb.b
  %i.cp = phi ptr [ %.pre, %use_multiport.exit144.thread._crit_edge ], [ %i.r, %bb.b ], [ %i.r, %use_multiport.exit.thread ]
  %.0107 = phi i32 [ %i.bj, %use_multiport.exit144.thread._crit_edge ], [ -12, %bb.b ], [ -12, %use_multiport.exit.thread ]
  tail call void @kfree(ptr noundef %i.cp) #15
  %i.cq = load ptr, ptr %i.q, align 8
  tail call void @kfree(ptr noundef %i.cq) #15
  br label %use_multiport.exit148.thread

use_multiport.exit148.thread.loopexit.unr-lcssa:  ; preds = %.lr.ph160
  %lcmp.mod169.not = icmp eq i64 %xtraiter168, 0
  br i1 %lcmp.mod169.not, label %use_multiport.exit148.thread, label %.lr.ph160.epil.preheader

.lr.ph160.epil.preheader:                         ; preds = %use_multiport.exit148.thread.loopexit.unr-lcssa, %.lr.ph160.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph160.preheader ], [ %indvars.iv.next.1, %use_multiport.exit148.thread.loopexit.unr-lcssa ] ; 2 uses
  %.1105158.epil.init = phi i32 [ 2, %.lr.ph160.preheader ], [ %i.cg, %use_multiport.exit148.thread.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod170 = trunc i64 %i.by to i1
  tail call void @llvm.assume(i1 %lcmp.mod170)
  %i.cr = add i32 %.1105158.epil.init, 2
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr [8 x i8], ptr %i.k, i64 %i.cs
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = load ptr, ptr %i.q, align 8
  %i.cw = getelementptr [8 x i8], ptr %i.cv, i64 %indvars.iv.epil.init
  store ptr %i.cu, ptr %i.cw, align 8
  %i.cx = add i32 %.1105158.epil.init, 3
  %i.cy = zext i32 %i.cx to i64
  %i.cz = getelementptr [8 x i8], ptr %i.k, i64 %i.cy
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = load ptr, ptr %i.s, align 8
  %i.dc = getelementptr [8 x i8], ptr %i.db, i64 %indvars.iv.epil.init
  store ptr %i.da, ptr %i.dc, align 8
  br label %use_multiport.exit148.thread

use_multiport.exit148.thread:                     ; preds = %.lr.ph160.epil.preheader, %use_multiport.exit148.thread.loopexit.unr-lcssa, %use_multiport.exit148, %bb.e, %bb.f, %bb.g
  %.0 = phi i32 [ %.0107, %bb.g ], [ 0, %use_multiport.exit148 ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %use_multiport.exit148.thread.loopexit.unr-lcssa ], [ 0, %.lr.ph160.epil.preheader ]
  tail call void @kfree(ptr noundef %i.m) #15
  tail call void @kfree(ptr noundef %i.k) #15
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @fill_queue(ptr noundef %0, ptr noundef %1) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %2 = alloca [1 x %struct.scatterlist], align 16 ; 5 uses
  %i.a = getelementptr i8, ptr %0, i64 44
  br label %bb.b

bb.b:                                             ; preds = %bb.l, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.ao, %bb.l ]
  call fastcc void @reclaim_dma_bufs() #14, !srcloc !47
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 8), align 8
  %i.c = call noalias align 8 dereferenceable_or_null(72) ptr @__kmalloc_cache_noprof(ptr noundef %i.b, i32 noundef 3264, i64 noundef 72) #18 ; 13 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %alloc_buf.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %i.c, i64 64
  store i32 0, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %i.c, i64 40
  store ptr null, ptr %i.e, align 8
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 96), align 16
  %i.g = call noalias align 8 dereferenceable_or_null(4096) ptr @__kmalloc_cache_noprof(ptr noundef %i.f, i32 noundef 3264, i64 noundef 4096) #18 ; 2 uses
  store ptr %i.g, ptr %i.c, align 8
  %.not45.i = icmp eq ptr %i.g, null
  br i1 %.not45.i, label %alloc_buf.exit.thread.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %i.c, i64 16
  %i.i = getelementptr i8, ptr %i.c, i64 8        ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store i64 4096, ptr %i.i, align 8
  call void @_raw_spin_lock_irq(ptr noundef %1) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 32, i1 false), !annotation !15
  %i.j = load ptr, ptr %i.c, align 8
  %i.k = load i64, ptr %i.i, align 8
  %i.l = trunc i64 %i.k to i32
  call void @sg_init_one(ptr noundef nonnull %2, ptr noundef %i.j, i32 noundef %i.l) #15
  %i.m = call i32 @virtqueue_add_inbuf(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 1, ptr noundef nonnull %i.c, i32 noundef 2080) #15 ; 2 uses
  %i.n = call zeroext i1 @virtqueue_kick(ptr noundef %0) #15 ; 0 uses
  %.not.i17 = icmp eq i32 %i.m, 0
  br i1 %.not.i17, label %bb.e, label %add_inbuf.exit

bb.e:                                             ; preds = %bb.d
  %i.o = load i32, ptr %i.a, align 4
  br label %add_inbuf.exit

add_inbuf.exit:                                   ; preds = %bb.d, %bb.e
  %.0.i18 = phi i32 [ %i.m, %bb.d ], [ %i.o, %bb.e ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %i.p = icmp slt i32 %.0.i18, 0
  br i1 %i.p, label %bb.f, label %bb.l

bb.f:                                             ; preds = %add_inbuf.exit
  %i.q = getelementptr i8, ptr %i.c, i64 64       ; 2 uses
  %i.r = getelementptr i8, ptr %i.c, i64 40
  call void @_raw_spin_unlock_irq(ptr noundef %1) #15
  %i.s = getelementptr i8, ptr %i.c, i64 72
  %i.t = load i32, ptr %i.q, align 8
  %.not16.i = icmp eq i32 %i.t, 0
  br i1 %.not16.i, label %put_page.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %bb.j
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.j ], [ 0, %bb.f ] ; 2 uses
  %i.u = getelementptr [32 x i8], ptr %i.s, i64 %indvars.iv.i
  %.val.i = load i64, ptr %i.u, align 8
  %i.v = and i64 %.val.i, -4                      ; 3 uses
  %.not.i19 = icmp eq i64 %i.v, 0
  br i1 %.not.i19, label %put_page.exit.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %i.y = load volatile i64, ptr %i.x, align 8     ; 2 uses
  %i.z = and i64 %i.y, 1
  %i.aa = add nsw i64 %i.z, -1
  %i.ab = or i64 %i.aa, %i.y
  %i.ac = and i64 %i.ab, %i.v
  %i.ad = inttoptr i64 %i.ac to ptr               ; 3 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 48
  %i.af = load i32, ptr %i.ae, align 16
  %.mask.i.i.i = and i32 %i.af, -16777216
  switch i32 %.mask.i.i.i, label %bb.h [
    i32 -184549376, label %bb.j
    i32 -134217728, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr i8, ptr %i.ad, i64 52     ; 2 uses
  %i.ah = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ag, ptr elementtype(i32) %i.ag) #16, !srcloc !11 ; 2 uses
  %i.ai = icmp ult i8 %i.ah, 2
  call void @llvm.assume(i1 %i.ai)
  %.not.i.i.i = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @__folio_put(ptr noundef %i.ad) #15
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.g
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.aj = load i32, ptr %i.q, align 8
  %i.ak = zext i32 %i.aj to i64
  %i.al = icmp samesign ult i64 %indvars.iv.next.i, %i.ak
  br i1 %i.al, label %.lr.ph.i, label %put_page.exit.i, !llvm.loop !12

put_page.exit.i:                                  ; preds = %bb.j, %.lr.ph.i, %bb.f
  %i.am = load ptr, ptr %i.r, align 8
  %.not12.i = icmp eq ptr %i.am, null
  br i1 %.not12.i, label %bb.k, label %alloc_buf.exit.thread.sink.split

bb.k:                                             ; preds = %put_page.exit.i
  %i.an = load ptr, ptr %i.c, align 8
  call void @kfree(ptr noundef %i.an) #15
  br label %alloc_buf.exit.thread.sink.split

bb.l:                                             ; preds = %add_inbuf.exit
  %i.ao = add i32 %.0, 1                          ; 2 uses
  call void @_raw_spin_unlock_irq(ptr noundef %1) #15
  %.not16 = icmp eq i32 %.0.i18, 0
  br i1 %.not16, label %alloc_buf.exit.thread, label %bb.b, !llvm.loop !48

alloc_buf.exit.thread.sink.split:                 ; preds = %bb.c, %bb.k, %put_page.exit.i
  %.013.ph = phi i32 [ %.0.i18, %bb.k ], [ %.0.i18, %put_page.exit.i ], [ -12, %bb.c ]
  call void @kfree(ptr noundef nonnull %i.c) #15
  br label %alloc_buf.exit.thread

alloc_buf.exit.thread:                            ; preds = %bb.b, %bb.l, %alloc_buf.exit.thread.sink.split
  %.013 = phi i32 [ %.013.ph, %alloc_buf.exit.thread.sink.split ], [ -12, %bb.b ], [ %i.ao, %bb.l ]
  ret i32 %.013
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @__send_control_msg(ptr noundef %0, i32 noundef %1, i32 noundef range(i32 0, 7) %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #1 align 16 {
bb.a:
  %4 = alloca [1 x %struct.scatterlist], align 16 ; 5 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = getelementptr i8, ptr %0, i64 112
  %.val = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %use_multiport.exit.thread, label %use_multiport.exit

use_multiport.exit:                               ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, i8 0, i64 32, i1 false), !annotation !15
  %i.c = getelementptr i8, ptr %.val, i64 824
  %.val.i = load i64, ptr %i.c, align 8
  %i.d = and i64 %.val.i, 2
  %.not23 = icmp eq i64 %i.d, 0
  br i1 %.not23, label %use_multiport.exit.thread, label %bb.b
end_hunk_0
