Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/ehci-hcd?download=true
inline.NumInlined: 740
inline.NumDeleted: 133
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 18
begin_hunk_0_@ehci_endpoint_disable:bb.a
  %i.bl = load i64, ptr %i.bk, align 8
  tail call void @dma_pool_free(ptr noundef %i.bi, ptr noundef %i.bj, i64 noundef %i.bl) #19
  tail call void @kfree(ptr noundef nonnull %i.k) #19
  br label %.loopexit

.loopexit53:                                      ; preds = %bb.e
  %i.bm = zext i8 %i.u to i32
  br label %bb.y

bb.y:                                             ; preds = %.loopexit53, %bb.q
  %i.bn = phi i32 [ %i.bm, %.loopexit53 ], [ 3, %bb.q ]
  %i.bo = load ptr, ptr %0, align 8
  %i.bp = getelementptr i8, ptr %1, i64 2
  %i.bq = load i8, ptr %i.bp, align 2
  %i.br = zext i8 %i.bq to i32
  %i.bs = getelementptr i8, ptr %i.k, i64 24      ; 2 uses
  %i.bt = load volatile ptr, ptr %i.bs, align 8
  %.not51 = icmp eq ptr %i.bt, %i.bs
  %i.bu = select i1 %.not51, ptr @.str.7, ptr @.str.40
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.bo, ptr noundef @.str.39, ptr noundef nonnull %i.k, i32 noundef %i.br, i32 noundef %i.bn, ptr noundef nonnull %i.bu) #21
  br label %.loopexit

.loopexit:                                        ; preds = %start_unlink_async.exit, %bb.a, %bb.d, %qh_destroy.exit, %bb.y
  %i.bv = phi i64 [ %i.l, %bb.y ], [ %i.l, %bb.d ], [ %i.l, %qh_destroy.exit ], [ %i.c, %bb.a ], [ %i.aq, %start_unlink_async.exit ]
  store ptr null, ptr %i.d, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.b, i64 noundef %i.bv) #19
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ehci_endpoint_reset(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 584        ; 2 uses
  %i.b = getelementptr i8, ptr %1, i64 3
  %.val = load i8, ptr %i.b, align 1              ; 2 uses
  %i.c = and i8 %.val, 3
  %i.d = zext i8 %.val to i32
  %i.e = getelementptr i8, ptr %1, i64 2
  %.val31 = load i8, ptr %i.e, align 1            ; 2 uses
  %i.f = and i8 %.val31, 15
  %i.g = zext nneg i8 %i.f to i32
  %i.h = icmp sgt i8 %.val31, -1
  %i.i = or i32 %i.d, -4
  %or.cond = icmp samesign ult i32 %i.i, -2
  br i1 %or.cond, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %0, i64 812        ; 2 uses
  %i.k = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.j) #19
  %i.l = getelementptr i8, ptr %1, i64 48
  %i.m = load ptr, ptr %i.l, align 8              ; 12 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %start_unlink_async.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr i8, ptr %i.m, i64 24       ; 2 uses
  %i.o = load volatile ptr, ptr %i.n, align 8
  %.not33 = icmp eq ptr %i.o, %i.n
  br i1 %.not33, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.41, ptr @.str.38, i32 1069, i32 2323, i64 16) #18, !srcloc !168
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.p) #19
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !169
  br label %start_unlink_async.exit

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr i8, ptr %i.m, i64 80
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr i8, ptr %i.r, i64 60
  %i.t = zext i1 %i.h to i64
  %i.u = getelementptr [4 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %i.v = load i32, ptr %i.u, align 4
  %i.w = shl nuw nsw i32 1, %i.g
  %i.x = xor i32 %i.w, -1
  %i.y = and i32 %i.v, %i.x
  store i32 %i.y, ptr %i.u, align 4
  %i.z = getelementptr i8, ptr %i.m, i64 134      ; 2 uses
  %i.aa = load i8, ptr %i.z, align 2
  %i.ab = or i8 %i.aa, 32
  store i8 %i.ab, ptr %i.z, align 2
  %i.ac = icmp eq i8 %i.c, 2
  br i1 %i.ac, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr i8, ptr %i.m, i64 132     ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 4
  %.not.i = icmp eq i8 %i.ae, 1
  br i1 %.not.i, label %bb.g, label %start_unlink_async.exit

bb.g:                                             ; preds = %bb.f
  store i8 4, ptr %i.ad, align 4
  %i.af = getelementptr i8, ptr %i.m, i64 64      ; 3 uses
  %i.ag = getelementptr i8, ptr %0, i64 848
  %i.ah = getelementptr i8, ptr %0, i64 856       ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  store ptr %i.af, ptr %i.ah, align 8
  store ptr %i.ag, ptr %i.af, align 8
  %i.aj = getelementptr i8, ptr %i.m, i64 72
  store ptr %i.ai, ptr %i.aj, align 8
  store volatile ptr %i.af, ptr %i.ai, align 8
  %i.ak = getelementptr i8, ptr %0, i64 832
  %i.al = load ptr, ptr %i.ak, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.0.i.i = phi ptr [ %i.al, %bb.g ], [ %i.an, %bb.h ] ; 3 uses
  %i.am = getelementptr i8, ptr %.0.i.i, i64 16
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.an, %i.m
  br i1 %.not.i.i, label %bb.i, label %bb.h, !llvm.loop !1

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr i8, ptr %.0.i.i, i64 16
  %i.ap = load ptr, ptr %i.m, align 8
  %i.aq = load i32, ptr %i.ap, align 32
  %i.ar = load ptr, ptr %.0.i.i, align 8
  store i32 %i.aq, ptr %i.ar, align 32
  %i.as = getelementptr i8, ptr %i.m, i64 16
  %i.at = load i64, ptr %i.as, align 8            ; 2 uses
  store i64 %i.at, ptr %i.ao, align 8
  %i.au = getelementptr i8, ptr %0, i64 824       ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = icmp eq ptr %i.av, %i.m
  br i1 %i.aw, label %bb.j, label %single_unlink_async.exit.i

bb.j:                                             ; preds = %bb.i
  %i.ax = inttoptr i64 %i.at to ptr
  store ptr %i.ax, ptr %i.au, align 8
  br label %single_unlink_async.exit.i

single_unlink_async.exit.i:                       ; preds = %bb.j, %bb.i
  tail call fastcc void @start_iaa_cycle(ptr noundef %i.a) #20, !srcloc !25
  br label %start_unlink_async.exit

bb.k:                                             ; preds = %bb.e
  tail call fastcc void @start_unlink_intr(ptr noundef %i.a, ptr noundef nonnull %i.m) #20, !srcloc !170
  br label %start_unlink_async.exit

start_unlink_async.exit:                          ; preds = %single_unlink_async.exit.i, %bb.f, %bb.d, %bb.k, %bb.b
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.j, i64 noundef %i.k) #19
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %start_unlink_async.exit
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 0, 3) i32 @ehci_hub_status_data(ptr noundef %0, ptr nofree noundef captures(none) initializes((0, 1)) %1) #0 align 16 prefalign(16) {
bb.a:
  store i8 0, ptr %1, align 1
  %i.a = getelementptr i8, ptr %0, i64 808
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 15                         ; 3 uses
  %i.d = icmp samesign ugt i32 %i.c, 7
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 1
  store i8 0, ptr %i.e, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.053 = phi i32 [ 2, %bb.b ], [ 1, %bb.a ]
  %i.f = getelementptr i8, ptr %0, i64 1224       ; 2 uses
  %i.g = load i64, ptr %i.f, align 8
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = load i8, ptr @ignore_oc, align 1, !range !19, !noundef !31
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %0, i64 1292
  %i.l = load i32, ptr %i.k, align 4
  %i.m = and i32 %i.l, 65536
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.055 = phi i32 [ 10, %bb.e ], [ 42, %bb.d ]
  %i.n = getelementptr i8, ptr %0, i64 812        ; 2 uses
  %i.o = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.n) #19
  %i.p = getelementptr i8, ptr %0, i64 1304
  %i.q = load i8, ptr %i.p, align 8
  %i.r = and i8 %i.q, 4
  %.not56 = icmp eq i8 %i.r, 0
  br i1 %.not56, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr i8, ptr %0, i64 792
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr i8, ptr %i.t, i64 4
  %i.v = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.u) #18, !srcloc !14
  %i.w = lshr i32 %i.v, 16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.052 = phi i32 [ %i.w, %bb.g ], [ -1, %bb.f ]
  %.not72 = icmp eq i32 %i.c, 0
  br i1 %.not72, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.x = getelementptr i8, ptr %0, i64 792
  %i.y = getelementptr i8, ptr %0, i64 1208
  %i.z = getelementptr i8, ptr %0, i64 1064
  %i.aa = getelementptr i8, ptr %0, i64 1292
  %i.ab = getelementptr i8, ptr %0, i64 1288
  %i.ac = getelementptr i8, ptr %1, i64 1         ; 2 uses
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.s
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.s ] ; 7 uses
  %.05171 = phi i32 [ %i.h, %.lr.ph ], [ %.1, %bb.s ] ; 2 uses
  %i.ad = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.ae = shl nuw nsw i32 1, %i.ad
  %i.af = and i32 %i.ae, %.052
  %.not59 = icmp eq i32 %i.af, 0
  br i1 %.not59, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = load ptr, ptr %i.x, align 8
  %i.ah = getelementptr i8, ptr %i.ag, i64 68
  %i.ai = getelementptr [4 x i8], ptr %i.ah, i64 %indvars.iv
  %i.aj = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ai) #18, !srcloc !14
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.0 = phi i32 [ %i.aj, %bb.j ], [ 0, %bb.i ]    ; 2 uses
  %i.ak = and i32 %.0, %.055
  %.not60 = icmp eq i32 %i.ak, 0
  br i1 %.not60, label %arch_test_bit.exit, label %bb.p

arch_test_bit.exit:                               ; preds = %bb.k
  %i.al = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.y, i64 range(i64 -2147483648, 4294967296) %indvars.iv) #18, !srcloc !20 ; 2 uses
  %i.am = icmp ult i8 %i.al, 2
  tail call void @llvm.assume(i1 %i.am)
  %i.an = trunc nuw i8 %i.al to i1
  br i1 %i.an, label %bb.p, label %bb.l

bb.l:                                             ; preds = %arch_test_bit.exit
  %i.ao = getelementptr [8 x i8], ptr %i.z, i64 %indvars.iv
  %i.ap = load i64, ptr %i.ao, align 8            ; 2 uses
  %.not61 = icmp eq i64 %i.ap, 0
  br i1 %.not61, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = load volatile i64, ptr @jiffies, align 64
  %i.ar = sub i64 %i.aq, %i.ap
  %i.as = icmp sgt i64 %i.ar, -1
  br i1 %i.as, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.at = load i32, ptr %i.aa, align 4
  %i.au = and i32 %i.at, 16
  %.not62 = icmp eq i32 %i.au, 0
  br i1 %.not62, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = load i32, ptr %i.ab, align 8
  %i.aw = and i32 %i.av, 16
  %.not63 = icmp ne i32 %i.aw, 0
  %i.ax = and i32 %.0, 12
  %i.ay = icmp eq i32 %i.ax, 0
  %or.cond67 = and i1 %i.ay, %.not63
  br i1 %or.cond67, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o, %bb.m, %arch_test_bit.exit, %bb.k
  %i.az = icmp samesign ult i64 %indvars.iv, 7
  br i1 %i.az, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ba = shl nuw nsw i32 2, %i.ad
  %i.bb = load i8, ptr %1, align 1
  %i.bc = trunc nuw i32 %i.ba to i8
  %i.bd = or i8 %i.bb, %i.bc
  store i8 %i.bd, ptr %1, align 1
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.be = trunc i64 %indvars.iv to i32
  %i.bf = add i32 %i.be, -7
  %i.bg = shl nuw nsw i32 1, %i.bf
  %i.bh = load i8, ptr %i.ac, align 1
  %i.bi = trunc i32 %i.bg to i8
  %i.bj = or i8 %i.bh, %i.bi
  store i8 %i.bj, ptr %i.ac, align 1
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.n, %bb.o
  %.1 = phi i32 [ %.05171, %bb.o ], [ %.05171, %bb.n ], [ 4, %bb.r ], [ 4, %bb.q ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.i, !llvm.loop !171

._crit_edge:                                      ; preds = %bb.s, %bb.h
  %.051.lcssa = phi i32 [ %i.h, %bb.h ], [ %.1, %bb.s ]
  %i.bk = load i64, ptr %i.f, align 8
  %.not57 = icmp eq i64 %i.bk, 0
  br i1 %.not57, label %bb.u, label %bb.t

bb.t:                                             ; preds = %._crit_edge
  %i.bl = getelementptr i8, ptr %0, i64 184
  %i.bm = load volatile i64, ptr @jiffies, align 64
  %i.bn = add i64 %i.bm, 25
  %i.bo = tail call i32 @mod_timer(ptr noundef %i.bl, i64 noundef %i.bn) #19 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.n, i64 noundef %i.o) #19
  %.not58 = icmp eq i32 %.051.lcssa, 0
  %i.bp = select i1 %.not58, i32 0, i32 %.053
  ret i32 %i.bp
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -16, 1) i32 @ehci_bus_suspend(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 584        ; 8 uses
  %i.b = load volatile i64, ptr @jiffies, align 64
  %i.c = getelementptr i8, ptr %0, i64 1272       ; 2 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = sub i64 %i.b, %i.d
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @msleep(i32 noundef 5) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call fastcc void @ehci_quiesce(ptr noundef %i.a) #20, !srcloc !175
  %i.g = getelementptr i8, ptr %0, i64 812        ; 8 uses
  tail call void @_raw_spin_lock_irq(ptr noundef %i.g) #19
  %i.h = getelementptr i8, ptr %0, i64 816        ; 3 uses
  %i.i = load i32, ptr %i.h, align 8
  %i.j = icmp ult i32 %i.i, 2
  br i1 %i.j, label %bb.al, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %0, i64 88         ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr i8, ptr %i.l, i64 1336
  %i.n = load i8, ptr %i.m, align 8
  %i.o = and i8 %i.n, 1
  %.not = icmp eq i8 %i.o, 0
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %0, i64 1224
  %i.q = load i64, ptr %i.p, align 8
  %.not92 = icmp eq i64 %i.q, 0
  br i1 %.not92, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_raw_spin_unlock_irq(ptr noundef %i.g) #19
  br label %bb.am

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.r = getelementptr i8, ptr %0, i64 1184       ; 3 uses
  store i64 0, ptr %i.r, align 8
  %i.s = getelementptr i8, ptr %0, i64 1200       ; 2 uses
  store i64 0, ptr %i.s, align 8
  %i.t = getelementptr i8, ptr %0, i64 808        ; 2 uses
  %i.u = load i32, ptr %i.t, align 8              ; 2 uses
  %i.v = and i32 %i.u, 15
  %.not93124 = icmp eq i32 %i.v, 0
  br i1 %.not93124, label %.critedge.thread, label %.lr.ph

.critedge.thread:                                 ; preds = %bb.g
  tail call void @_raw_spin_unlock_irq(ptr noundef %i.g) #19
  br label %.thread

.lr.ph:                                           ; preds = %bb.g
  %i.w = getelementptr i8, ptr %0, i64 792
  %i.x = getelementptr i8, ptr %0, i64 1292
  %i.y = and i32 %i.u, 15
  %i.z = zext nneg i32 %i.y to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %ehci_writel.exit
  %indvars.iv = phi i64 [ %i.z, %.lr.ph ], [ %indvars.iv.next, %ehci_writel.exit ]
  %.085126 = phi i8 [ 0, %.lr.ph ], [ %.2, %ehci_writel.exit ] ; 2 uses
  %.087125 = phi i32 [ 0, %.lr.ph ], [ %.188, %ehci_writel.exit ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 5 uses
  %i.aa = load ptr, ptr %i.w, align 8
  %i.ab = getelementptr i8, ptr %i.aa, i64 68
  %i.ac = getelementptr [4 x i8], ptr %i.ab, i64 %indvars.iv.next ; 2 uses
  %i.ad = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ac) #18, !srcloc !14 ; 5 uses
  %i.ae = and i32 %i.ad, -43
  %i.af = and i32 %i.ad, -7340075                 ; 3 uses
  %i.ag = and i32 %i.ad, 8192
  %.not102 = icmp eq i32 %i.ag, 0
  br i1 %.not102, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.s, i64 range(i64 -2147483648, 4294967296) %indvars.iv.next) #18, !srcloc !17
  br label %arch_set_bit.exit
end_hunk_0
begin_hunk_1_@qtd_list_free:bb.a
  tail call void @dma_pool_free(ptr noundef %.val, ptr noundef %i.c, i64 noundef %i.h) #19
  %.not = icmp eq ptr %.012, %1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !3

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @usb_hcd_link_urb_to_ep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc ptr @qh_append_tds(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i32 noundef range(i32 0, 256) %3, ptr nofree noundef captures(none) %4) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %4, align 8                ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %.thread, !prof !27

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc ptr @qh_make(ptr noundef %0, ptr noundef %1) #20 ; 3 uses
  store ptr %i.c, ptr %4, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.h, label %.thread, !prof !201

.thread:                                          ; preds = %bb.a, %bb.b
  %.053 = phi ptr [ %i.c, %bb.b ], [ %i.a, %bb.a ] ; 8 uses
  %i.d = load volatile ptr, ptr %2, align 8       ; 2 uses
  %.not55 = icmp eq ptr %i.d, %2
  %i.e = getelementptr i8, ptr %i.d, i64 -64      ; 3 uses
  %spec.select = select i1 %.not55, ptr null, ptr %i.e, !prof !27 ; 8 uses
  %i.f = icmp eq i32 %3, 0
  br i1 %i.f, label %bb.c, label %bb.e, !prof !27

bb.c:                                             ; preds = %.thread
  %i.g = getelementptr i8, ptr %1, i64 80
  %i.h = load i32, ptr %i.g, align 8
  %i.i = and i32 %i.h, 32512
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %.053, align 8
  %i.l = getelementptr i8, ptr %i.k, i64 4        ; 2 uses
  %i.m = load i32, ptr %i.l, align 4
  %i.n = and i32 %i.m, -128
  store i32 %i.n, ptr %i.l, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %.thread
  %.not50 = icmp eq ptr %spec.select, null
  br i1 %.not50, label %bb.h, label %bb.f, !prof !27

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr i8, ptr %spec.select, i64 8 ; 3 uses
  %i.p = load i32, ptr %i.o, align 8
  store i32 64, ptr %i.o, align 8
  %i.q = getelementptr i8, ptr %.053, i64 56      ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 5 uses
  %i.s = getelementptr i8, ptr %i.r, i64 56       ; 2 uses
  %i.t = load i64, ptr %i.s, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 32 dereferenceable(96) %i.r, ptr noundef nonnull align 32 dereferenceable(96) %i.e, i64 96, i1 false)
  store i64 %i.t, ptr %i.s, align 8
  %i.u = getelementptr i8, ptr %spec.select, i64 64 ; 5 uses
  %i.v = getelementptr i8, ptr %spec.select, i64 72 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 8
  store ptr %i.w, ptr %i.y, align 8
  store volatile ptr %i.x, ptr %i.w, align 8
  store ptr inttoptr (i64 -2401263026318606080 to ptr), ptr %i.u, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.v, align 8
  %i.z = getelementptr i8, ptr %i.r, i64 64       ; 3 uses
  %i.aa = load ptr, ptr %2, align 8               ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  store ptr %i.z, ptr %i.ab, align 8
  store ptr %i.aa, ptr %i.z, align 32
  %i.ac = getelementptr i8, ptr %i.r, i64 72
  store ptr %2, ptr %i.ac, align 8
  store volatile ptr %i.z, ptr %2, align 8
  %i.ad = load volatile ptr, ptr %2, align 8      ; 3 uses
  %.not.i = icmp eq ptr %i.ad, %2
  br i1 %.not.i, label %list_splice_tail.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr i8, ptr %.053, i64 24
  %i.af = getelementptr i8, ptr %.053, i64 32     ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ah = getelementptr i8, ptr %2, i64 8
  %.val4.i = load ptr, ptr %i.ah, align 8         ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ad, i64 8
  store ptr %i.ag, ptr %i.ai, align 8
  store ptr %i.ad, ptr %i.ag, align 8
  store ptr %i.ae, ptr %.val4.i, align 8
  store ptr %.val4.i, ptr %i.af, align 8
  br label %list_splice_tail.exit

list_splice_tail.exit:                            ; preds = %bb.f, %bb.g
  %i.aj = getelementptr i8, ptr %spec.select, i64 56 ; 3 uses
  %i.ak = load i64, ptr %i.aj, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(96) %i.e, i8 0, i64 96, i1 false)
  store i64 %i.ak, ptr %i.aj, align 8
  store i32 64, ptr %i.o, align 8
  store i32 1, ptr %spec.select, align 32
  %i.al = getelementptr i8, ptr %spec.select, i64 4
  store i32 1, ptr %i.al, align 4
  store volatile ptr %i.u, ptr %i.u, align 32
  store volatile ptr %i.u, ptr %i.v, align 8
  store ptr %spec.select, ptr %i.q, align 8
  %i.am = load i64, ptr %i.aj, align 8
  %i.an = getelementptr i8, ptr %.053, i64 32
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr i8, ptr %i.ao, i64 -64
  %i.aq = trunc i64 %i.am to i32
  store i32 %i.aq, ptr %i.ap, align 32
  tail call void asm sideeffect "sfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !202
  %i.ar = getelementptr i8, ptr %i.r, i64 8
  store i32 %i.p, ptr %i.ar, align 8
  %i.as = getelementptr i8, ptr %1, i64 8
  store ptr %.053, ptr %i.as, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %list_splice_tail.exit, %bb.b
  %.054 = phi ptr [ %.053, %bb.e ], [ %.053, %list_splice_tail.exit ], [ null, %bb.b ]
  ret ptr %.054
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc noundef ptr @qh_make(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) unnamed_addr #0 align 16 {
bb.a:
  %i.a = tail call fastcc ptr @ehci_qh_alloc(ptr noundef %0, i32 noundef 2080) #20, !srcloc !203 ; 26 uses
  %i.b = getelementptr i8, ptr %1, i64 64         ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8              ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %1, i64 80         ; 2 uses
  %i.g = load i32, ptr %i.f, align 8              ; 5 uses
  %i.h = lshr i32 %i.g, 7
  %i.i = and i32 %i.h, 3840
  %i.j = lshr i32 %i.g, 8
  %i.k = and i32 %i.j, 127
  %i.l = or disjoint i32 %i.i, %i.k               ; 5 uses
  %i.m = and i32 %i.g, 128                        ; 5 uses
  %i.n = lshr i32 %i.g, 30                        ; 3 uses
  %.not.i = icmp eq i32 %i.m, 0                   ; 3 uses
  %.v.i = select i1 %.not.i, i64 1112, i64 984
  %i.o = getelementptr i8, ptr %i.c, i64 %.v.i
  %i.p = lshr i32 %i.g, 15
  %i.q = and i32 %i.p, 15
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr [8 x i8], ptr %i.o, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr i8, ptr %i.t, i64 4
  %.val = load i16, ptr %i.u, align 1             ; 2 uses
  %i.v = and i16 %.val, 2047                      ; 2 uses
  %i.w = zext nneg i16 %i.v to i32                ; 6 uses
  %i.x = lshr i16 %.val, 11
  %i.y = and i16 %i.x, 3
  %narrow.i = add nuw nsw i16 %i.y, 1
  %i.z = zext nneg i16 %narrow.i to i32           ; 2 uses
  %i.aa = icmp samesign ugt i16 %i.v, 1024
  br i1 %i.aa, label %bb.u, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = icmp eq i32 %i.n, 1
  br i1 %i.ab, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.ac = mul nuw nsw i32 %i.z, %i.w
  %i.ad = tail call i64 @usb_calc_bus_time(i32 noundef 3, i32 noundef %i.m, i32 noundef 0, i32 noundef %i.ac) #19
  %i.ae = add i64 %i.ad, 999
  %i.af = sdiv i64 %i.ae, 1000
  %i.ag = trunc i64 %i.af to i8
  %i.ah = getelementptr i8, ptr %i.a, i64 122     ; 3 uses
  store i8 %i.ag, ptr %i.ah, align 2
  %i.ai = getelementptr i8, ptr %i.a, i64 118
  store i16 29999, ptr %i.ai, align 2
  %i.aj = load ptr, ptr %i.b, align 8
  %i.ak = getelementptr i8, ptr %i.aj, i64 28
  %i.al = load i32, ptr %i.ak, align 4            ; 2 uses
  %i.am = icmp eq i32 %i.al, 3
  br i1 %i.am, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr i8, ptr %i.a, i64 123
  store i8 0, ptr %i.an, align 1
  %i.ao = getelementptr i8, ptr %i.a, i64 135
  store i8 0, ptr %i.ao, align 1
  %i.ap = getelementptr i8, ptr %1, i64 168       ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 8            ; 3 uses
  %i.ar = add i32 %i.aq, -2
  %or.cond = icmp ult i32 %i.ar, 6
  br i1 %or.cond, label %.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = getelementptr i8, ptr %0, i64 312
  %i.at = load i32, ptr %i.as, align 8
  %i.au = shl i32 %i.at, 3                        ; 2 uses
  %i.av = icmp ugt i32 %i.aq, %i.au
  br i1 %i.av, label %.sink.split, label %bb.g

.sink.split:                                      ; preds = %bb.f, %bb.e
  %.sink179 = phi i32 [ 1, %bb.e ], [ %i.au, %bb.f ] ; 2 uses
  store i32 %.sink179, ptr %i.ap, align 8
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.f
  %i.aw = phi i32 [ %i.aq, %bb.f ], [ %.sink179, %.sink.split ]
  %i.ax = lshr i32 %i.aw, 3
  %i.ay = trunc i32 %i.ax to i16
  %i.az = getelementptr i8, ptr %i.a, i64 116
  store i16 %i.ay, ptr %i.az, align 4
  %i.ba = getelementptr i8, ptr %1, i64 72
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = getelementptr i8, ptr %i.bb, i64 6
  %i.bd = load i8, ptr %i.bc, align 2
  %i.be = zext i8 %i.bd to i32
  %i.bf = add nsw i32 %i.be, -1
  %i.bg = shl nuw i32 1, %i.bf
  %i.bh = load i32, ptr %i.ap, align 8
  %i.bi = tail call i32 @llvm.umin.i32(i32 %i.bg, i32 %i.bh)
  %i.bj = tail call i32 @llvm.umin.i32(i32 %i.bi, i32 64) ; 2 uses
  %i.bk = trunc nuw nsw i32 %i.bj to i8
  %i.bl = getelementptr i8, ptr %i.a, i64 124
  store i8 %i.bk, ptr %i.bl, align 4
  %i.bm = lshr i32 %i.bj, 3
  %i.bn = trunc nuw nsw i32 %i.bm to i8
  %i.bo = getelementptr i8, ptr %i.a, i64 125
  store i8 %i.bn, ptr %i.bo, align 1
  br label %bb.l

bb.h:                                             ; preds = %bb.d
  %i.bp = tail call i64 @usb_calc_bus_time(i32 noundef %i.al, i32 noundef %i.m, i32 noundef 0, i32 noundef %i.w) #19
  %i.bq = sdiv i64 %i.bp, 125000
  %i.br = trunc i64 %i.bq to i8
  %i.bs = add i8 %i.br, 1
  %i.bt = getelementptr i8, ptr %i.a, i64 135
  store i8 %i.bs, ptr %i.bt, align 1
  %i.bu = load i8, ptr %i.ah, align 2
  %i.bv = add i8 %i.bu, 1                         ; 2 uses
  %. = select i1 %.not.i, i8 %i.bv, i8 1
  %.180 = select i1 %.not.i, i8 1, i8 %i.bv
  store i8 %., ptr %i.ah, align 2
  %i.bw = getelementptr i8, ptr %i.a, i64 123
  store i8 %.180, ptr %i.bw, align 1
  %.not162 = icmp eq ptr %i.e, null
  br i1 %.not162, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bx = getelementptr i8, ptr %i.e, i64 12
  %i.by = load i32, ptr %i.bx, align 4
  %i.bz = sext i32 %i.by to i64
  %i.ca = add nsw i64 %i.bz, 999
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.cb = phi i64 [ %i.ca, %bb.i ], [ 999, %bb.h ]
  %i.cc = load ptr, ptr %i.b, align 8
  %i.cd = getelementptr i8, ptr %i.cc, i64 28
  %i.ce = load i32, ptr %i.cd, align 4
  %i.cf = tail call i64 @usb_calc_bus_time(i32 noundef %i.ce, i32 noundef %i.m, i32 noundef 0, i32 noundef %i.w) #19
  %i.cg = add i64 %i.cb, %i.cf
  %i.ch = sdiv i64 %i.cg, 1000
  %i.ci = trunc i64 %i.ch to i16
  %i.cj = getelementptr i8, ptr %i.a, i64 112
  store i16 %i.ci, ptr %i.cj, align 8
  %i.ck = getelementptr i8, ptr %1, i64 168       ; 3 uses
  %i.cl = load i32, ptr %i.ck, align 8            ; 2 uses
  %i.cm = getelementptr i8, ptr %0, i64 312
  %i.cn = load i32, ptr %i.cm, align 8            ; 3 uses
  %i.co = icmp ugt i32 %i.cl, %i.cn
  br i1 %i.co, label %bb.k, label %fls.exit

bb.k:                                             ; preds = %bb.j
  store i32 %i.cn, ptr %i.ck, align 8
  br label %fls.exit

fls.exit:                                         ; preds = %bb.k, %bb.j
  %i.cp = phi i32 [ %i.cn, %bb.k ], [ %i.cl, %bb.j ]
  %i.cq = trunc i32 %i.cp to i16
  %i.cr = getelementptr i8, ptr %i.a, i64 116
  store i16 %i.cq, ptr %i.cr, align 4
  %i.cs = getelementptr i8, ptr %1, i64 72
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = getelementptr i8, ptr %i.ct, i64 6
  %i.cv = load i8, ptr %i.cu, align 2
  %i.cw = tail call i8 @llvm.umin.i8(i8 %i.cv, i8 8)
  %i.cx = zext nneg i8 %i.cw to i64
  %i.cy = tail call i32 asm "bsrq $1,${0:q}", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 256) %i.cx, i32 -1) #23, !srcloc !204
  %.pn = zext nneg i32 %i.cy to i64
  %i.cz = shl nuw i64 1, %.pn
  %i.da = trunc i64 %i.cz to i32
  %i.db = load i32, ptr %i.ck, align 8
  %i.dc = tail call i32 @llvm.umin.i32(i32 %i.db, i32 %i.da)
  %i.dd = trunc i32 %i.dc to i8                   ; 2 uses
  %i.de = getelementptr i8, ptr %i.a, i64 125
  store i8 %i.dd, ptr %i.de, align 1
  %i.df = shl i8 %i.dd, 3
  %i.dg = getelementptr i8, ptr %i.a, i64 124
  store i8 %i.df, ptr %i.dg, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.g, %fls.exit, %bb.c
  %i.dh = load ptr, ptr %i.b, align 8
  %i.di = getelementptr i8, ptr %i.a, i64 80
  store ptr %i.dh, ptr %i.di, align 8
  %i.dj = getelementptr i8, ptr %1, i64 72
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = getelementptr i8, ptr %i.a, i64 88
  store ptr %i.dk, ptr %i.dl, align 8
  %i.dm = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.dn = getelementptr i8, ptr %i.dm, i64 28
  %i.do = load i32, ptr %i.dn, align 4
  switch i32 %i.do, label %bb.u [
    i32 1, label %bb.m
    i32 2, label %bb.n
    i32 3, label %bb.q
  ]

bb.m:                                             ; preds = %bb.l
  %i.dp = or disjoint i32 %i.l, 4096
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0150 = phi i32 [ %i.dp, %bb.m ], [ %i.l, %bb.l ] ; 2 uses
  %i.dq = icmp eq i32 %i.n, 2
  %i.dr = or i32 %.0150, 134234112
  %.2 = select i1 %i.dq, i32 %i.dr, i32 %.0150
  %i.ds = shl nuw nsw i32 %i.w, 16
  %i.dt = or i32 %.2, %i.ds                       ; 3 uses
  %i.du = getelementptr i8, ptr %i.dm, i64 56
  %i.dv = load i32, ptr %i.du, align 8
  %i.dw = shl i32 %i.dv, 23
  %i.dx = or i32 %i.dw, 1073741824                ; 3 uses
  %.not164 = icmp eq ptr %i.e, null
  br i1 %.not164, label %bb.z, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dy = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.dz = getelementptr i8, ptr %0, i64 -496
  %i.ea = load ptr, ptr %i.dz, align 8
  %.not165 = icmp eq ptr %i.dy, %i.ea
  br i1 %.not165, label %bb.z, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.eb = load i32, ptr %i.dy, align 8
  %i.ec = shl i32 %i.eb, 16
  %i.ed = or i32 %i.ec, %i.dx
  br label %bb.z

bb.q:                                             ; preds = %bb.l
  switch i32 %i.n, label %bb.t [
    i32 2, label %bb.r
    i32 3, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  %i.ee = or disjoint i32 %i.l, 1077960704
  br label %bb.z

bb.s:                                             ; preds = %bb.q
  %i.ef = shl nuw nsw i32 %i.w, 16
  %i.eg = or disjoint i32 %i.ef, %i.l
  %i.eh = or disjoint i32 %i.eg, 1073750016
  br label %bb.z

bb.t:                                             ; preds = %bb.q
  %i.ei = shl nuw nsw i32 %i.w, 16
  %i.ej = or disjoint i32 %i.ei, %i.l
  %i.ek = or disjoint i32 %i.ej, 8192
  %i.el = shl i32 %i.z, 30
  br label %bb.z

bb.u:                                             ; preds = %bb.l, %bb.b
  %i.em = getelementptr i8, ptr %i.a, i64 24      ; 2 uses
  %i.en = load volatile ptr, ptr %i.em, align 8
  %.not.i168 = icmp eq ptr %i.en, %i.em
  br i1 %.not.i168, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.eo = getelementptr i8, ptr %i.a, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8
  %.not9.i = icmp eq ptr %i.ep, null
  br i1 %.not9.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  tail call void asm sideeffect "638: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 638b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 638) #18, !srcloc !22
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.7, ptr @.str.16, i32 59, i32 0, i64 16) #18, !srcloc !23
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.eq = getelementptr i8, ptr %i.a, i64 56
  %i.er = load ptr, ptr %i.eq, align 8            ; 3 uses
  %.not10.i = icmp eq ptr %i.er, null
  br i1 %.not10.i, label %qh_destroy.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.es = getelementptr i8, ptr %0, i64 656
  %.val.i = load ptr, ptr %i.es, align 8
  %i.et = getelementptr i8, ptr %i.er, i64 56
  %i.eu = load i64, ptr %i.et, align 8
  tail call void @dma_pool_free(ptr noundef %.val.i, ptr noundef nonnull %i.er, i64 noundef %i.eu) #19
  br label %qh_destroy.exit

qh_destroy.exit:                                  ; preds = %bb.x, %bb.y
  %i.ev = getelementptr i8, ptr %0, i64 648
  %i.ew = load ptr, ptr %i.ev, align 8
  %i.ex = load ptr, ptr %i.a, align 8
end_hunk_1
