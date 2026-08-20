inline.NumInlined: 167
inline.NumDeleted: 68
begin_hunk_0_@dma_async_device_register:bb.a
  tail call void @mutex_unlock(ptr noundef nonnull @dma_list_mutex) #16
  %i.bu = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bu, i64 80
  %i.bw = load ptr, ptr %i.bv, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i, label %bb.ai, label %dmaengine_debug_register.exit

bb.ai:                                            ; preds = %bb.ah
  %.val.i.i = load ptr, ptr %i.bu, align 8
  br label %dmaengine_debug_register.exit

dmaengine_debug_register.exit:                    ; preds = %bb.ah, %bb.ai
  %.0.i.i = phi ptr [ %.val.i.i, %bb.ai ], [ %i.bw, %bb.ah ]
  %i.bx = load ptr, ptr @rootdir, align 8
  %i.by = tail call ptr @debugfs_create_dir(ptr noundef %.0.i.i, ptr noundef %i.bx) #16 ; 2 uses
  %i.bz = getelementptr i8, ptr %0, i64 376
  %i.ca = icmp ugt ptr %i.by, inttoptr (i64 -4096 to ptr)
  %spec.store.select.i = select i1 %i.ca, ptr null, ptr %i.by
  store ptr %spec.store.select.i, ptr %i.bz, align 8
  br label %get_dma_id.exit

.loopexit157:                                     ; preds = %bb.ac, %bb.af
  %.084 = phi i32 [ -19, %bb.af ], [ %i.bf, %bb.ac ] ; 3 uses
  %i.cb = getelementptr i8, ptr %0, i64 4
  %i.cc = load i32, ptr %i.cb, align 4
  %.not118 = icmp eq i32 %i.cc, 0
  br i1 %.not118, label %bb.aj, label %.preheader

.preheader:                                       ; preds = %.loopexit157
  %.pn119158 = load ptr, ptr %i.be, align 8       ; 2 uses
  %.not155159 = icmp eq ptr %.pn119158, %i.be
  br i1 %.not155159, label %get_dma_id.exit, label %.lr.ph

bb.aj:                                            ; preds = %.loopexit157
  %i.cd = load i32, ptr %i.ba, align 8
  tail call void @ida_free(ptr noundef nonnull @dma_ida, i32 noundef %i.cd) #16
  br label %get_dma_id.exit

.lr.ph:                                           ; preds = %.preheader, %bb.al
  %.pn119160 = phi ptr [ %.pn119, %bb.al ], [ %.pn119158, %.preheader ] ; 3 uses
  %i.ce = getelementptr i8, ptr %.pn119160, i64 16 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph
  tail call void @mutex_lock(ptr noundef nonnull @dma_list_mutex) #16
  %i.ch = getelementptr i8, ptr %.pn119160, i64 -24 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8
  store ptr null, ptr %i.ci, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @dma_list_mutex) #16
  %i.cj = load ptr, ptr %i.ch, align 8
  %i.ck = getelementptr i8, ptr %i.cj, i64 8
  tail call void @device_unregister(ptr noundef %i.ck) #16
  %i.cl = load ptr, ptr %i.ce, align 8
  tail call void @free_percpu(ptr noundef %i.cl) #16
  br label %bb.al

bb.al:                                            ; preds = %.lr.ph, %bb.ak
  %.pn119 = load ptr, ptr %.pn119160, align 8     ; 2 uses
  %.not155 = icmp eq ptr %.pn119, %i.be
  br i1 %.not155, label %get_dma_id.exit, label %.lr.ph, !llvm.loop !82

get_dma_id.exit:                                  ; preds = %bb.al, %.preheader, %bb.z, %bb.a, %bb.aj, %dmaengine_debug_register.exit, %bb.y, %bb.w, %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %bb.c
  %.0 = phi i32 [ -19, %bb.a ], [ %i.ay, %bb.z ], [ %.084, %bb.aj ], [ 0, %dmaengine_debug_register.exit ], [ -5, %bb.y ], [ -5, %bb.w ], [ -5, %bb.u ], [ -5, %bb.s ], [ -5, %bb.q ], [ -5, %bb.o ], [ -5, %bb.m ], [ -5, %bb.k ], [ -5, %bb.i ], [ -5, %bb.g ], [ -5, %bb.e ], [ -5, %bb.c ], [ %.084, %.preheader ], [ %.084, %bb.al ]
  ret i32 %.0
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @dma_async_device_unregister(ptr noundef %0) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 376        ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @debugfs_remove(ptr noundef %i.b) #16
  store ptr null, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not20 = icmp eq ptr %i.d, %i.c
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.pn.in21 = phi ptr [ %.pn, %.lr.ph ], [ %i.d, %bb.a ] ; 2 uses
  %.pn = load ptr, ptr %.pn.in21, align 8         ; 2 uses
  %.0 = getelementptr i8, ptr %.pn.in21, i64 -56
  tail call fastcc void @__dma_async_device_channel_unregister(ptr noundef %0, ptr noundef %.0) #17, !srcloc !83
  %.not = icmp eq ptr %.pn, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !84

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  tail call void @mutex_lock(ptr noundef nonnull @dma_list_mutex) #16
  %i.e = getelementptr i8, ptr %0, i64 73         ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.e, i32 1, ptr elementtype(i8) %i.e) #12, !srcloc !25
  tail call fastcc void @dma_channel_rebalance() #17, !srcloc !85
  %i.f = getelementptr i8, ptr %0, i64 104
  %i.g = load i32, ptr %i.f, align 8
  tail call void @ida_free(ptr noundef nonnull @dma_ida, i32 noundef %i.g) #16
  %i.h = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %0, i32 -1, ptr elementtype(i32) %0) #12, !srcloc !31 ; 2 uses
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.j = icmp slt i32 %i.h, 1
  br i1 %i.j, label %bb.c, label %dma_device_put.exit, !prof !32

bb.c:                                             ; preds = %bb.b
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef 3) #16
  br label %dma_device_put.exit

bb.d:                                             ; preds = %._crit_edge
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !33
  %i.k = getelementptr i8, ptr %0, i64 32
  %i.l = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 8
  store ptr %i.m, ptr %i.o, align 8
  store volatile ptr %i.n, ptr %i.m, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.l, align 8
  tail call fastcc void @dma_channel_rebalance() #17, !srcloc !34
  %i.p = getelementptr i8, ptr %0, i64 360
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %dma_device_put.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void %i.q(ptr noundef %0) #16, !inline_history !35
  br label %dma_device_put.exit

dma_device_put.exit:                              ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  tail call void @mutex_unlock(ptr noundef nonnull @dma_list_mutex) #16
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @dmaenginem_async_device_register(ptr noundef %0) #1 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @dma_async_device_register(ptr noundef %0) #17 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %__devm_add_action_or_reset.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i32 @__devm_add_action(ptr noundef %i.c, ptr noundef nonnull @dmaenginem_async_device_unregister, ptr noundef %0, ptr noundef nonnull @.str.22) #16 ; 2 uses
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %__devm_add_action_or_reset.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @dma_async_device_unregister(ptr noundef %0) #17
  br label %__devm_add_action_or_reset.exit

__devm_add_action_or_reset.exit:                  ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ %i.a, %bb.a ], [ 0, %bb.b ], [ %i.d, %bb.c ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dmaenginem_async_device_unregister(ptr noundef %0) #1 align 16 prefalign(16) {
bb.a:
  tail call void @dma_async_device_unregister(ptr noundef %0) #17
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @dmaengine_unmap_put(ptr noundef %0) #1 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %kref_put.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.b = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.a, i32 -1, ptr elementtype(i32) %i.a) #12, !srcloc !31 ; 2 uses
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp slt i32 %i.b, 1
  br i1 %i.d, label %bb.d, label %kref_put.exit, !prof !32

bb.d:                                             ; preds = %bb.c
  tail call void @refcount_warn_saturate(ptr noundef %i.a, i32 noundef 3) #16
  br label %kref_put.exit

bb.e:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !33
  %i.e = getelementptr i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = getelementptr i8, ptr %0, i64 1
  %i.h = load i8, ptr %i.g, align 1               ; 5 uses
  %i.i = zext i8 %i.h to i32                      ; 2 uses
  %.not.i = icmp eq i8 %i.h, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.j = getelementptr i8, ptr %0, i64 32
  %i.k = getelementptr i8, ptr %0, i64 24
  %wide.trip.count.i = zext i8 %i.h to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 2 uses
  %i.l = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv.i
  %i.m = load i64, ptr %i.l, align 8
  %i.n = load i64, ptr %i.k, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %i.f, i64 noundef %i.m, i64 noundef %i.n, i32 noundef 1, i64 noundef 0) #16
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.f, !llvm.loop !86

._crit_edge.i:                                    ; preds = %bb.f, %bb.e
  %i.o = getelementptr i8, ptr %0, i64 2
  %i.p = load i8, ptr %i.o, align 2               ; 3 uses
  %i.q = zext i8 %i.p to i32
  %i.r = add nuw nsw i32 %i.q, %i.i               ; 3 uses
  %.not60.i = icmp eq i8 %i.p, 0
  br i1 %.not60.i, label %._crit_edge41.i, label %.lr.ph40.i

.lr.ph40.i:                                       ; preds = %._crit_edge.i
  %i.s = getelementptr i8, ptr %0, i64 32
  %i.t = getelementptr i8, ptr %0, i64 24
  %i.u = zext i8 %i.h to i64
  %wide.trip.count52.i = zext nneg i32 %i.r to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph40.i
  %indvars.iv49.i = phi i64 [ %i.u, %.lr.ph40.i ], [ %indvars.iv.next50.i, %bb.g ] ; 2 uses
  %i.v = getelementptr [8 x i8], ptr %i.s, i64 %indvars.iv49.i
  %i.w = load i64, ptr %i.v, align 8
  %i.x = load i64, ptr %i.t, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %i.f, i64 noundef %i.w, i64 noundef %i.x, i32 noundef 2, i64 noundef 0) #16
  %indvars.iv.next50.i = add nuw nsw i64 %indvars.iv49.i, 1 ; 2 uses
  %exitcond53.not.i = icmp eq i64 %indvars.iv.next50.i, %wide.trip.count52.i
  br i1 %exitcond53.not.i, label %._crit_edge41.i, label %bb.g, !llvm.loop !87

._crit_edge41.i:                                  ; preds = %bb.g, %._crit_edge.i
  %.1.lcssa.i = phi i32 [ %i.i, %._crit_edge.i ], [ %i.r, %bb.g ] ; 2 uses
  %i.y = getelementptr i8, ptr %0, i64 3
  %i.z = load i8, ptr %i.y, align 1               ; 2 uses
  %i.aa = zext i8 %i.z to i32
  %i.ab = add nuw nsw i32 %i.r, %i.aa
  %i.ac = icmp samesign ult i32 %.1.lcssa.i, %i.ab
  br i1 %i.ac, label %.lr.ph45.i, label %._crit_edge46.i

.lr.ph45.i:                                       ; preds = %._crit_edge41.i
  %i.ad = getelementptr i8, ptr %0, i64 32
  %i.ae = getelementptr i8, ptr %0, i64 24
  %i.af = zext nneg i32 %.1.lcssa.i to i64
  %1 = zext i8 %i.h to i64
  %2 = zext i8 %i.p to i64
  %3 = add nuw nsw i64 %1, %2
  %i.ag = zext i8 %i.z to i64
  %4 = add nuw nsw i64 %3, %i.ag
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %.lr.ph45.i
  %indvars.iv54.i = phi i64 [ %i.af, %.lr.ph45.i ], [ %indvars.iv.next55.i, %bb.j ] ; 2 uses
  %i.ah = getelementptr [8 x i8], ptr %i.ad, i64 %indvars.iv54.i
  %i.ai = load i64, ptr %i.ah, align 8            ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = load i64, ptr %i.ae, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %i.f, i64 noundef %i.ai, i64 noundef %i.ak, i32 noundef 0, i64 noundef 0) #16
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %indvars.iv.next55.i = add nuw nsw i64 %indvars.iv54.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next55.i, %4
  br i1 %exitcond.not, label %._crit_edge46.i, label %bb.h, !llvm.loop !88

._crit_edge46.i:                                  ; preds = %bb.j, %._crit_edge41.i
  %i.al = load i8, ptr %0, align 8                ; 2 uses
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %get_count_order.exit.thread.i.i, label %get_count_order.exit.i.i

get_count_order.exit.i.i:                         ; preds = %._crit_edge46.i
  %i.an = zext i8 %i.al to i32
  %i.ao = add nsw i32 %i.an, -1
  %i.ap = tail call i32 asm "bsrl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 0, -1) %i.ao, i32 -1) #13, !srcloc !89
  %i.aq = add i32 %i.ap, 1
  %switch.i.i = icmp ult i32 %i.aq, 2
  br i1 %switch.i.i, label %dmaengine_unmap.exit, label %get_count_order.exit.thread.i.i

get_count_order.exit.thread.i.i:                  ; preds = %get_count_order.exit.i.i, %._crit_edge46.i
  tail call void asm sideeffect "533: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 533b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 533) #12, !srcloc !90
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.8, ptr nonnull @.str.6, i32 1380, i32 0, i64 16) #12, !srcloc !91
  unreachable

dmaengine_unmap.exit:                             ; preds = %get_count_order.exit.i.i
  %i.ar = load ptr, ptr @unmap_pool.2, align 16
  tail call void @mempool_free(ptr noundef nonnull %0, ptr noundef %i.ar) #16
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %dmaengine_unmap.exit, %bb.d, %bb.c, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @dmaengine_get_unmap_data(ptr noundef %0, i32 noundef %1, i32 noundef %2) #1 align 16 prefalign(16) {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %get_count_order.exit.thread.i, label %get_count_order.exit.i

get_count_order.exit.i:                           ; preds = %bb.a
  %i.b = add i32 %1, -1
  %i.c = tail call i32 asm "bsrl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 0, -1) %i.b, i32 -1) #13, !srcloc !89
  %i.d = add i32 %i.c, 1
  %switch.i = icmp ult i32 %i.d, 2
  br i1 %switch.i, label %__get_unmap_pool.exit, label %get_count_order.exit.thread.i

get_count_order.exit.thread.i:                    ; preds = %get_count_order.exit.i, %bb.a
  tail call void asm sideeffect "533: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 533b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 533) #12, !srcloc !90
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.8, ptr nonnull @.str.6, i32 1380, i32 0, i64 16) #12, !srcloc !91
  unreachable

__get_unmap_pool.exit:                            ; preds = %get_count_order.exit.i
  %i.e = load ptr, ptr @unmap_pool.2, align 16
  %i.f = tail call noalias ptr @mempool_alloc_noprof(ptr noundef %i.e, i32 noundef %2) #16 ; 6 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %__get_unmap_pool.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false)
  %i.g = getelementptr i8, ptr %i.f, i64 16
  store volatile i32 1, ptr %i.g, align 4
  %i.h = getelementptr i8, ptr %i.f, i64 8
  store ptr %0, ptr %i.h, align 8
  %i.i = trunc i32 %1 to i8
  store i8 %i.i, ptr %i.f, align 8
  br label %bb.c

bb.c:                                             ; preds = %__get_unmap_pool.exit, %bb.b
  ret ptr %i.f
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc_noprof(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write)
define dso_local void @dma_async_tx_descriptor_init(ptr nofree noundef writeonly captures(none) initializes((16, 24)) %0, ptr noundef %1) #6 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  store ptr %1, ptr %i.a, align 8
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @dmaengine_desc_attach_metadata(ptr noundef %0, ptr noundef %1, i64 noundef %2) #1 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %desc_check_and_set_metadata_mode.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 72         ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  switch i32 %i.b, label %desc_check_and_set_metadata_mode.exit.thread [
    i32 0, label %bb.c
    i32 1, label %desc_check_and_set_metadata_mode.exit
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %desc_check_and_set_metadata_mode.exit.thread, label %dmaengine_is_metadata_mode_supported.exit.i

dmaengine_is_metadata_mode_supported.exit.i:      ; preds = %bb.c
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 80
  %i.g = load i32, ptr %i.f, align 8
  %i.h = and i32 %i.g, 1
  %.not10.i = icmp eq i32 %i.h, 0
  br i1 %.not10.i, label %desc_check_and_set_metadata_mode.exit.thread, label %bb.d

bb.d:                                             ; preds = %dmaengine_is_metadata_mode_supported.exit.i
  store i32 1, ptr %i.a, align 8
  br label %desc_check_and_set_metadata_mode.exit

desc_check_and_set_metadata_mode.exit:            ; preds = %bb.b, %bb.d
  %i.i = getelementptr i8, ptr %0, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not15 = icmp eq ptr %i.j, null
  br i1 %.not15, label %desc_check_and_set_metadata_mode.exit.thread, label %bb.e

bb.e:                                             ; preds = %desc_check_and_set_metadata_mode.exit
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not16 = icmp eq ptr %i.k, null
  br i1 %.not16, label %desc_check_and_set_metadata_mode.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = tail call i32 %i.k(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) #16
  br label %desc_check_and_set_metadata_mode.exit.thread

desc_check_and_set_metadata_mode.exit.thread:     ; preds = %bb.b, %bb.c, %dmaengine_is_metadata_mode_supported.exit.i, %desc_check_and_set_metadata_mode.exit, %bb.e, %bb.a, %bb.f
  %.0 = phi i32 [ -22, %bb.a ], [ %i.l, %bb.f ], [ -524, %desc_check_and_set_metadata_mode.exit ], [ -524, %bb.e ], [ -524, %bb.c ], [ -22, %bb.b ], [ -524, %dmaengine_is_metadata_mode_supported.exit.i ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @dmaengine_desc_get_metadata_ptr(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 72         ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  switch i32 %i.b, label %bb.e [
    i32 0, label %bb.c
    i32 2, label %desc_check_and_set_metadata_mode.exit
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.e, label %dmaengine_is_metadata_mode_supported.exit.i

dmaengine_is_metadata_mode_supported.exit.i:      ; preds = %bb.c
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 80
  %i.g = load i32, ptr %i.f, align 8
  %i.h = and i32 %i.g, 2
  %.not10.i = icmp eq i32 %i.h, 0
  br i1 %.not10.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %dmaengine_is_metadata_mode_supported.exit.i
  store i32 2, ptr %i.a, align 8
  br label %desc_check_and_set_metadata_mode.exit

bb.e:                                             ; preds = %bb.b, %dmaengine_is_metadata_mode_supported.exit.i, %bb.c
  %.0.i.ph = phi i64 [ -524, %bb.c ], [ -22, %bb.b ], [ -524, %dmaengine_is_metadata_mode_supported.exit.i ]
  %i.i = inttoptr i64 %.0.i.ph to ptr
  br label %bb.h

desc_check_and_set_metadata_mode.exit:            ; preds = %bb.b, %bb.d
  %i.j = getelementptr i8, ptr %0, i64 80
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not15 = icmp eq ptr %i.k, null
  br i1 %.not15, label %bb.h, label %bb.f

bb.f:                                             ; preds = %desc_check_and_set_metadata_mode.exit
  %i.l = getelementptr i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not16 = icmp eq ptr %i.m, null
  br i1 %.not16, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = tail call ptr %i.m(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #16
  br label %bb.h

bb.h:                                             ; preds = %desc_check_and_set_metadata_mode.exit, %bb.f, %bb.a, %bb.g, %bb.e
  %.0 = phi ptr [ %i.i, %bb.e ], [ %i.n, %bb.g ], [ inttoptr (i64 -22 to ptr), %bb.a ], [ inttoptr (i64 -524 to ptr), %bb.f ], [ inttoptr (i64 -524 to ptr), %desc_check_and_set_metadata_mode.exit ]
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @dmaengine_desc_set_metadata_len(ptr noundef %0, i64 noundef %1) #1 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %desc_check_and_set_metadata_mode.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 72         ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  switch i32 %i.b, label %desc_check_and_set_metadata_mode.exit.thread [
    i32 0, label %bb.c
    i32 2, label %desc_check_and_set_metadata_mode.exit
end_hunk_0
