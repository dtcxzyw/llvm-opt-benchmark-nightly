Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/i915_gem_execbuffer?download=true
inline.NumInlined: 473
inline.NumDeleted: 209
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@eb_requests_create:bb.a
  tail call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.bn, i64 16) #16, !srcloc !47
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.bo = load i32, ptr %i.a, align 4             ; 2 uses
  %i.bp = zext i32 %i.bo to i64
  %i.bq = icmp samesign ult i64 %indvars.iv.next.i.i, %i.bp
  br i1 %i.bq, label %.lr.ph.i46.i, label %._crit_edge.i.i, !llvm.loop !107

._crit_edge.i.i:                                  ; preds = %.lr.ph.i46.i, %.preheader57.i.i
  %.lcssa.i.i = phi i32 [ 0, %.preheader57.i.i ], [ %i.bo, %.lr.ph.i46.i ]
  %i.br = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 696
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = getelementptr i8, ptr %i.br, i64 704    ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 8            ; 2 uses
  %i.bw = add i32 %i.bv, 1
  store i32 %i.bw, ptr %i.bu, align 8
  %i.bx = tail call ptr @dma_fence_array_create(i32 noundef %.lcssa.i.i, ptr noundef nonnull %i.bi, i64 noundef %i.bt, i32 noundef %i.bv) #14 ; 5 uses
  %.not49.i.i = icmp eq ptr %i.bx, null
  br i1 %.not49.i.i, label %bb.t, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i.i
  %i.by = load i32, ptr %i.a, align 4
  %.not63.i.i = icmp eq i32 %i.by, 0
  br i1 %.not63.i.i, label %._crit_edge61.i.i, label %.lr.ph60.i.i

bb.t:                                             ; preds = %._crit_edge.i.i
  tail call void @kfree(ptr noundef nonnull %i.bi) #14
  br label %eb_fences_add.exit.thread

.lr.ph60.i.i:                                     ; preds = %.preheader.i.i, %dma_fence_get.exit.i.i
  %indvars.iv66.i.i = phi i64 [ %indvars.iv.next67.i.i, %dma_fence_get.exit.i.i ], [ 0, %.preheader.i.i ] ; 2 uses
  %i.bz = getelementptr [8 x i8], ptr %i.bi, i64 %indvars.iv66.i.i
  %i.ca = load ptr, ptr %i.bz, align 8            ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i, label %dma_fence_get.exit.i.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph60.i.i
  %i.cb = getelementptr i8, ptr %i.ca, i64 56     ; 3 uses
  %i.cc = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.cb, i32 1, ptr elementtype(i32) %i.cb) #16, !srcloc !28 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.cc, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i, label %bb.v, !prof !19

bb.v:                                             ; preds = %bb.u
  %i.cd = add i32 %i.cc, 1
  %i.ce = or i32 %i.cd, %i.cc
  %.not10.i.i.i.i.i.i.i = icmp sgt i32 %i.ce, -1
  br i1 %.not10.i.i.i.i.i.i.i, label %dma_fence_get.exit.i.i, label %.sink.split.i.i.i.i.i.i.i, !prof !22

.sink.split.i.i.i.i.i.i.i:                        ; preds = %bb.v, %bb.u
  %.sink.i.i.i.i.i.i.i = phi i32 [ 2, %bb.u ], [ 1, %bb.v ]
  tail call void @refcount_warn_saturate(ptr noundef %i.cb, i32 noundef %.sink.i.i.i.i.i.i.i) #14
  br label %dma_fence_get.exit.i.i

dma_fence_get.exit.i.i:                           ; preds = %.sink.split.i.i.i.i.i.i.i, %bb.v, %.lr.ph60.i.i
  %indvars.iv.next67.i.i = add nuw nsw i64 %indvars.iv66.i.i, 1 ; 2 uses
  %i.cf = load i32, ptr %i.a, align 4
  %i.cg = zext i32 %i.cf to i64
  %i.ch = icmp samesign ult i64 %indvars.iv.next67.i.i, %i.cg
  br i1 %i.ch, label %.lr.ph60.i.i, label %._crit_edge61.i.i, !llvm.loop !108

._crit_edge61.i.i:                                ; preds = %dma_fence_get.exit.i.i, %.preheader.i.i
  br i1 %.not50.i.i, label %eb_composite_fence_create.exit.thread51.i, label %bb.w

eb_composite_fence_create.exit.thread51.i:        ; preds = %._crit_edge61.i.i
  store ptr %i.bx, ptr %i.i, align 8
  br label %eb_fences_add.exit.thread43

bb.w:                                             ; preds = %._crit_edge61.i.i
  %i.ci = tail call ptr @sync_file_create(ptr noundef nonnull %i.bx) #14 ; 3 uses
  %i.cj = getelementptr i8, ptr %i.bx, i64 56     ; 4 uses
  %i.ck = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.cj, i32 -1, ptr elementtype(i32) %i.cj) #16, !srcloc !28 ; 2 uses
  %i.cl = icmp eq i32 %i.ck, 1
  br i1 %i.cl, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cm = icmp slt i32 %i.ck, 1
  br i1 %i.cm, label %bb.y, label %dma_fence_put.exit.i.i, !prof !19

bb.y:                                             ; preds = %bb.x
  tail call void @refcount_warn_saturate(ptr noundef %i.cj, i32 noundef 3) #14
  br label %dma_fence_put.exit.i.i

bb.z:                                             ; preds = %bb.w
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !29
  tail call void @dma_fence_release(ptr noundef %i.cj) #14, !inline_history !1
  br label %dma_fence_put.exit.i.i

dma_fence_put.exit.i.i:                           ; preds = %bb.z, %bb.y, %bb.x
  %.not51.i.i = icmp eq ptr %i.ci, null
  br i1 %.not51.i.i, label %eb_fences_add.exit.thread, label %eb_composite_fence_create.exit.i

eb_composite_fence_create.exit.i:                 ; preds = %dma_fence_put.exit.i.i
  store ptr %i.bx, ptr %i.i, align 8
  %i.cn = icmp ugt ptr %i.ci, inttoptr (i64 -4096 to ptr)
  br i1 %i.cn, label %eb_fences_add.exit.thread, label %eb_fences_add.exit

bb.aa:                                            ; preds = %intel_context_is_parallel.exit.i
  br i1 %.not50.i.i, label %eb_fences_add.exit.thread43, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.co = tail call ptr @sync_file_create(ptr noundef %i.q) #14 ; 2 uses
  %.not43.i = icmp eq ptr %i.co, null
  br i1 %.not43.i, label %eb_fences_add.exit.thread, label %eb_fences_add.exit

eb_fences_add.exit:                               ; preds = %bb.ab, %bb.j, %bb.o, %await_fence_array.exit.i, %eb_composite_fence_create.exit.i
  %.1.i = phi ptr [ %i.al, %bb.o ], [ %i.bb, %await_fence_array.exit.i ], [ %i.ci, %eb_composite_fence_create.exit.i ], [ %i.ac, %bb.j ], [ %i.co, %bb.ab ] ; 3 uses
  %i.cp = icmp ugt ptr %.1.i, inttoptr (i64 -4096 to ptr)
  br i1 %i.cp, label %eb_fences_add.exit.thread, label %eb_fences_add.exit.thread43

eb_fences_add.exit.thread43:                      ; preds = %eb_composite_fence_create.exit.thread51.i, %bb.aa, %eb_fences_add.exit, %bb.g
  %.1 = phi ptr [ %.1.i, %eb_fences_add.exit ], [ %.03451, %bb.g ], [ null, %bb.aa ], [ null, %eb_composite_fence_create.exit.thread51.i ] ; 2 uses
  %i.cq = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = load ptr, ptr %i.cr, align 8            ; 2 uses
  %.not = icmp eq ptr %i.cs, null
  br i1 %.not, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %eb_fences_add.exit.thread43
  %i.ct = getelementptr i8, ptr %i.cs, i64 576
  %i.cu = load ptr, ptr %i.ct, align 8            ; 3 uses
  %.not.i.i40 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i40, label %i915_vma_resource_get.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cv = getelementptr i8, ptr %i.cu, i64 56     ; 3 uses
  %i.cw = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.cv, i32 1, ptr elementtype(i32) %i.cv) #16, !srcloc !28 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.cw, 0
  br i1 %.not.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i, label %bb.ae, !prof !19

bb.ae:                                            ; preds = %bb.ad
  %i.cx = add i32 %i.cw, 1
  %i.cy = or i32 %i.cx, %i.cw
  %.not10.i.i.i.i.i.i = icmp sgt i32 %i.cy, -1
  br i1 %.not10.i.i.i.i.i.i, label %i915_vma_resource_get.exit, label %.sink.split.i.i.i.i.i.i, !prof !22

.sink.split.i.i.i.i.i.i:                          ; preds = %bb.ae, %bb.ad
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %bb.ad ], [ 1, %bb.ae ]
  tail call void @refcount_warn_saturate(ptr noundef %i.cv, i32 noundef %.sink.i.i.i.i.i.i) #14
  br label %i915_vma_resource_get.exit

i915_vma_resource_get.exit:                       ; preds = %bb.ac, %bb.ae, %.sink.split.i.i.i.i.i.i
  %i.cz = load ptr, ptr %i.r, align 8
  %i.da = getelementptr i8, ptr %i.cz, i64 480
  store ptr %i.cu, ptr %i.da, align 8
  br label %bb.af

bb.af:                                            ; preds = %i915_vma_resource_get.exit, %eb_fences_add.exit.thread43
  %i.db = load ptr, ptr %i.k, align 8             ; 2 uses
  %.not38 = icmp eq ptr %i.db, null
  br i1 %.not38, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dc = load ptr, ptr %i.r, align 8
  %i.dd = tail call i32 @i915_active_add_request(ptr noundef nonnull %i.db, ptr noundef %i.dc) #14 ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %i.de = load i32, ptr %i.a, align 4
  %i.df = zext i32 %i.de to i64
  %i.dg = icmp samesign ult i64 %indvars.iv.next, %i.df
  br i1 %i.dg, label %bb.b, label %eb_fences_add.exit.thread, !llvm.loop !109

eb_fences_add.exit.thread:                        ; preds = %eb_fences_add.exit, %bb.ah, %eb_composite_fence_create.exit.i, %dma_fence_put.exit.i.i, %intel_context_is_parallel.exit.thread.i, %bb.ab, %bb.a, %bb.t, %bb.f
  %.035 = phi ptr [ %i.q, %bb.f ], [ inttoptr (i64 -12 to ptr), %bb.t ], [ null, %bb.a ], [ inttoptr (i64 -12 to ptr), %intel_context_is_parallel.exit.thread.i ], [ inttoptr (i64 -12 to ptr), %dma_fence_put.exit.i.i ], [ inttoptr (i64 -12 to ptr), %eb_composite_fence_create.exit.i ], [ %.1, %bb.ah ], [ %.1.i, %eb_fences_add.exit ], [ inttoptr (i64 -12 to ptr), %bb.ab ]
  ret ptr %.035
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @eb_submit(ptr nofree noundef captures(none) %0) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 240
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %.not96.i = icmp eq i32 %i.b, 0
  br i1 %.not96.i, label %.thread.i, label %.lr.ph98.i

.lr.ph98.i:                                       ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 244        ; 4 uses
  %i.e = getelementptr i8, ptr %0, i64 80         ; 3 uses
  %i.f = getelementptr i8, ptr %0, i64 232
  %i.g = zext i32 %i.b to i64                     ; 2 uses
  br label %bb.b

.loopexit92.i:                                    ; preds = %bb.n, %bb.i, %bb.d
  %.2.lcssa.i = phi i32 [ %.160.i, %bb.i ], [ %.05997.i, %bb.d ], [ %.3.i, %bb.n ] ; 3 uses
  %.not.wide.i = icmp eq i64 %i.h, 0
  br i1 %.not.wide.i, label %._crit_edge.i, label %bb.b, !llvm.loop !112

bb.b:                                             ; preds = %.loopexit92.i, %.lr.ph98.i
  %indvars.iv112.i = phi i64 [ %i.g, %.lr.ph98.i ], [ %i.h, %.loopexit92.i ]
  %.05997.i = phi i32 [ 0, %.lr.ph98.i ], [ %.2.lcssa.i, %.loopexit92.i ] ; 2 uses
  %i.h = add nsw i64 %indvars.iv112.i, -1         ; 3 uses
  %i.i = load ptr, ptr %i.c, align 8
  %i.j = getelementptr [80 x i8], ptr %i.i, i64 %i.h ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr i8, ptr %i.j, i64 8
  %i.m = load i32, ptr %i.l, align 8              ; 3 uses
  %i.n = getelementptr i8, ptr %i.k, i64 184
  %i.o = load ptr, ptr %i.n, align 8              ; 3 uses
  %i.p = getelementptr i8, ptr %i.o, i64 660
  %i.q = load i16, ptr %i.p, align 4              ; 2 uses
  %1 = lshr i16 %i.q, 9
  %2 = and i16 %1, 1
  %3 = lshr i16 %i.q, 7
  %4 = xor i16 %3, -1
  %i.r = and i16 %2, %4
  %.not74.i = icmp eq i16 %i.r, 0
  br i1 %.not74.i, label %bb.d, label %bb.c, !prof !22

bb.c:                                             ; preds = %bb.b
  %i.s = tail call zeroext i1 @i915_gem_clflush_object(ptr noundef %i.o, i32 noundef 0) #14
  %i.t = and i32 %i.m, -65
  %spec.select.i = select i1 %i.s, i32 %i.t, i32 %i.m
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.057.i = phi i32 [ %i.m, %bb.b ], [ %spec.select.i, %bb.c ] ; 3 uses
  %i.u = icmp eq i32 %.05997.i, 0
  br i1 %i.u, label %bb.e, label %.loopexit92.i

bb.e:                                             ; preds = %bb.d
  %i.v = and i32 %.057.i, 64
  %.not75.i = icmp eq i32 %i.v, 0
  %.pre33 = load i32, ptr %i.d, align 4           ; 2 uses
  br i1 %.not75.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.w = zext i32 %.pre33 to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.h ], [ %i.w, %bb.f ]
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 3 uses
  %i.x = and i64 %indvars.iv.next.i.i, 2147483648
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.h, label %eb_find_first_request_added.exit.i

bb.h:                                             ; preds = %bb.g
  %i.z = and i64 %indvars.iv.next.i.i, 2147483647
  %i.aa = getelementptr [8 x i8], ptr %i.e, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %bb.g, label %eb_find_first_request_added.exit.i, !llvm.loop !113

eb_find_first_request_added.exit.i:               ; preds = %bb.h, %bb.g
  %.07.i.i = phi ptr [ %i.ab, %bb.h ], [ null, %bb.g ]
  %i.ac = and i32 %.057.i, 4
  %i.ad = icmp ne i32 %i.ac, 0
  %i.ae = tail call i32 @i915_request_await_object(ptr noundef %.07.i.i, ptr noundef %i.o, i1 noundef zeroext %i.ad) #14
  %.pre = load i32, ptr %i.d, align 4
  br label %bb.i

bb.i:                                             ; preds = %eb_find_first_request_added.exit.i, %bb.e
  %i.af = phi i32 [ %.pre33, %bb.e ], [ %.pre, %eb_find_first_request_added.exit.i ]
  %.160.i = phi i32 [ 0, %bb.e ], [ %i.ae, %eb_find_first_request_added.exit.i ] ; 2 uses
  %.05893.i = add i32 %i.af, -1                   ; 2 uses
  %i.ag = icmp slt i32 %.05893.i, 0
  %i.ah = icmp ne i32 %.160.i, 0
  %or.cond94.i = select i1 %i.ag, i1 true, i1 %i.ah
  br i1 %or.cond94.i, label %.loopexit92.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.ai = or i32 %.057.i, -1073741824
  %i.aj = zext nneg i32 %.05893.i to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.n, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.aj, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.n ] ; 4 uses
  %i.ak = getelementptr [8 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.al = load ptr, ptr %i.ak, align 8            ; 3 uses
  %.not76.i = icmp eq ptr %i.al, null
  br i1 %.not76.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not77.i = icmp eq i64 %indvars.iv.i, 0
  br i1 %.not77.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.am = load ptr, ptr %i.f, align 8             ; 2 uses
  %.not78.i = icmp eq ptr %i.am, null
  %..i = select i1 %.not78.i, ptr %i.al, ptr %i.am
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.an = phi ptr [ null, %bb.k ], [ %..i, %bb.l ]
  %i.ao = tail call i32 @_i915_vma_move_to_active(ptr noundef %i.k, ptr noundef nonnull %i.al, ptr noundef %i.an, i32 noundef %i.ai) #14
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %.3.i = phi i32 [ %i.ao, %bb.m ], [ 0, %bb.j ]  ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.ap = icmp slt i64 %indvars.iv.i, 1
  %i.aq = icmp ne i32 %.3.i, 0
  %or.cond.i = select i1 %i.ap, i1 true, i1 %i.aq
  br i1 %or.cond.i, label %.loopexit92.i, label %bb.j, !llvm.loop !114

._crit_edge.i:                                    ; preds = %.loopexit92.i
  %.not69.i = icmp eq i32 %.2.lcssa.i, 0
  br i1 %.not69.i, label %bb.o, label %.preheader.i

bb.o:                                             ; preds = %._crit_edge.i
  %i.ar = getelementptr i8, ptr %0, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = getelementptr i8, ptr %i.as, i64 40
  %i.au = load i64, ptr %i.at, align 8
  %i.av = and i64 %i.au, 536870912
  %.not70.i = icmp eq i64 %i.av, 0
  br i1 %.not70.i, label %.thread.i, label %.lr.ph101.i

.lr.ph101.i:                                      ; preds = %bb.o, %select.unfold.i
  %indvars.iv115.i = phi i64 [ %indvars.iv.next116.i, %select.unfold.i ], [ 0, %bb.o ] ; 2 uses
  %i.aw = load ptr, ptr %i.c, align 8
  %i.ax = getelementptr [80 x i8], ptr %i.aw, i64 %indvars.iv115.i
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr i8, ptr %i.ay, i64 184
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 1096
  %.val.i = load ptr, ptr %i.bb, align 8
  %.not89.i = icmp eq ptr %.val.i, null
  br i1 %.not89.i, label %select.unfold.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph101.i
  %i.bc = tail call i32 @i915_gem_object_userptr_submit_done(ptr noundef %i.ba) #14 ; 2 uses
  %.not71.i = icmp eq i32 %i.bc, 0
  br i1 %.not71.i, label %select.unfold.i, label %.preheader.i

select.unfold.i:                                  ; preds = %bb.p, %.lr.ph101.i
  %indvars.iv.next116.i = add nuw nsw i64 %indvars.iv115.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next116.i, %i.g
  br i1 %exitcond.not.i, label %.thread.i, label %.lr.ph101.i, !llvm.loop !115

.preheader.i:                                     ; preds = %bb.p, %._crit_edge.i
  %.6.i = phi i32 [ %.2.lcssa.i, %._crit_edge.i ], [ %i.bc, %bb.p ] ; 4 uses
  %i.bd = load i32, ptr %i.d, align 4
  %.not109.i = icmp eq i32 %i.bd, 0
  br i1 %.not109.i, label %._crit_edge, label %.lr.ph106.i

.thread.i:                                        ; preds = %select.unfold.i, %bb.o, %bb.a
  %i.be = getelementptr i8, ptr %0, i64 40
  %i.bf = load ptr, ptr %i.be, align 8
  tail call void @intel_gt_chipset_flush(ptr noundef %i.bf) #14
  %i.bg = getelementptr i8, ptr %0, i64 80        ; 2 uses
  %i.bh = getelementptr i8, ptr %0, i64 244       ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4
  %.not16.i.i = icmp eq i32 %i.bi, 0
  br i1 %.not16.i.i, label %._crit_edge, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.thread.i
  %i.bj = getelementptr i8, ptr %0, i64 656
  %i.bk = load ptr, ptr %i.bg, align 8            ; 2 uses
  %.not.i82.i68 = icmp eq ptr %i.bk, null
  br i1 %.not.i82.i68, label %eb_move_to_gpu.exit, label %.lr.ph70

bb.q:                                             ; preds = %.lr.ph70
  %i.bl = getelementptr [8 x i8], ptr %i.bg, i64 %indvars.iv.next.i83.i
  %i.bm = load ptr, ptr %i.bl, align 8            ; 2 uses
  %.not.i82.i = icmp eq ptr %i.bm, null
  br i1 %.not.i82.i, label %eb_move_to_gpu.exit, label %.lr.ph70, !llvm.loop !116

.lr.ph70:                                         ; preds = %.lr.ph.i.i, %bb.q
  %i.bn = phi ptr [ %i.bm, %bb.q ], [ %i.bk, %.lr.ph.i.i ]
  %indvars.iv.i81.i69 = phi i64 [ %indvars.iv.next.i83.i, %bb.q ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.bo = getelementptr [8 x i8], ptr %i.bj, i64 %indvars.iv.i81.i69 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = getelementptr i8, ptr %i.bn, i64 488
  store ptr %i.bp, ptr %i.bq, align 8
  store ptr null, ptr %i.bo, align 8
  %indvars.iv.next.i83.i = add nuw nsw i64 %indvars.iv.i81.i69, 1 ; 3 uses
  %i.br = load i32, ptr %i.bh, align 4            ; 3 uses
  %i.bs = zext i32 %i.br to i64
  %i.bt = icmp samesign ult i64 %indvars.iv.next.i83.i, %i.bs
  br i1 %i.bt, label %bb.q, label %.eb_move_to_gpu.exit.loopexit_crit_edge, !llvm.loop !116

.lr.ph106.i:                                      ; preds = %.preheader.i, %bb.r
  %.1105.i = phi i32 [ %i.by, %bb.r ], [ 0, %.preheader.i ] ; 2 uses
  %i.bu = sext i32 %.1105.i to i64
  %i.bv = getelementptr [8 x i8], ptr %i.e, i64 %i.bu
  %i.bw = load ptr, ptr %i.bv, align 8            ; 2 uses
  %.not73.i = icmp eq ptr %i.bw, null
  br i1 %.not73.i, label %.lr.ph, label %bb.r

bb.r:                                             ; preds = %.lr.ph106.i
  %i.bx = tail call zeroext i1 @i915_request_set_error_once(ptr noundef nonnull %i.bw, i32 noundef %.6.i) #14 ; 0 uses
  %i.by = add nuw i32 %.1105.i, 1                 ; 2 uses
  %i.bz = load i32, ptr %i.d, align 4             ; 2 uses
  %i.ca = icmp ult i32 %i.by, %i.bz
  br i1 %i.ca, label %.lr.ph106.i, label %eb_move_to_gpu.exit, !llvm.loop !117

.eb_move_to_gpu.exit.loopexit_crit_edge:          ; preds = %.lr.ph70
  br label %eb_move_to_gpu.exit, !llvm.loop !116

eb_move_to_gpu.exit:                              ; preds = %bb.r, %bb.q, %.lr.ph.i.i, %.eb_move_to_gpu.exit.loopexit_crit_edge
  %i.cb = phi i32 [ %i.br, %bb.q ], [ %i.br, %.eb_move_to_gpu.exit.loopexit_crit_edge ], [ 1, %.lr.ph.i.i ], [ %i.bz, %bb.r ]
  %.063.i = phi i32 [ 0, %bb.q ], [ 0, %.eb_move_to_gpu.exit.loopexit_crit_edge ], [ 0, %.lr.ph.i.i ], [ %.6.i, %bb.r ] ; 2 uses
  %.not30 = icmp eq i32 %i.cb, 0
  br i1 %.not30, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph106.i, %eb_move_to_gpu.exit
  %.063.i63 = phi i32 [ %.063.i, %eb_move_to_gpu.exit ], [ %.6.i, %.lr.ph106.i ]
  %i.cc = getelementptr i8, ptr %0, i64 80
  %i.cd = getelementptr i8, ptr %0, i64 244
  %i.ce = getelementptr i8, ptr %0, i64 612       ; 2 uses
  %i.cf = getelementptr i8, ptr %0, i64 152
  %i.cg = getelementptr i8, ptr %0, i64 536
  %i.ch = getelementptr i8, ptr %0, i64 16
  %i.ci = getelementptr i8, ptr %0, i64 608
  %i.cj = getelementptr i8, ptr %0, i64 224
  br label %bb.s
end_hunk_0
