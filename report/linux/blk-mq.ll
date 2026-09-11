Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/blk-mq?download=true
inline.NumInlined: 959
inline.NumDeleted: 311
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@blk_mq_update_nr_requests:bb.a
bb.j:                                             ; preds = %.lr.ph89, %bb.l
  %.06588 = phi i64 [ 0, %.lr.ph89 ], [ %i.ag, %bb.l ] ; 2 uses
  tail call void @__rcu_read_lock() #23
  %i.w = load volatile ptr, ptr %i.v, align 8
  %sext81 = shl nuw i64 %.06588, 32
  %i.x = ashr exact i64 %sext81, 29
  %i.y = getelementptr i8, ptr %i.w, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8
  tail call void @__rcu_read_unlock() #23
  %i.aa = getelementptr i8, ptr %i.z, i64 320
  %i.ab = load ptr, ptr %i.aa, align 64           ; 3 uses
  %.not72 = icmp eq ptr %i.ab, null
  br i1 %.not72, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  %i.ad = getelementptr i8, ptr %i.ab, i64 4
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = sub i32 %2, %i.ae
  tail call void @sbitmap_queue_resize(ptr noundef %i.ac, i32 noundef %i.af) #23
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.ag = add nuw nsw i64 %.06588, 1              ; 2 uses
  %i.ah = load i32, ptr %i.t, align 4
  %i.ai = zext i32 %i.ah to i64
  %i.aj = icmp samesign ult i64 %i.ag, %i.ai
  br i1 %i.aj, label %bb.j, label %.critedge, !llvm.loop !315

bb.m:                                             ; preds = %bb.i
  %i.ak = getelementptr i8, ptr %i.s, i64 8
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 4
  %i.an = load i32, ptr %i.am, align 4
  %.not73 = icmp ugt i32 %2, %i.an
  %i.ao = getelementptr i8, ptr %0, i64 52        ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 4
  %.not91 = icmp eq i32 %i.ap, 0                  ; 2 uses
  br i1 %.not73, label %.preheader82, label %.preheader83

.preheader83:                                     ; preds = %bb.m
  br i1 %.not91, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader83
  %i.aq = getelementptr i8, ptr %0, i64 56
  br label %bb.n

.preheader82:                                     ; preds = %bb.m
  br i1 %.not91, label %.critedge4, label %.lr.ph87

.lr.ph87:                                         ; preds = %.preheader82
  %i.ar = getelementptr i8, ptr %0, i64 56
  %i.as = getelementptr i8, ptr %1, i64 8
  br label %bb.q

bb.n:                                             ; preds = %.lr.ph, %bb.p
  %.185 = phi i64 [ 0, %.lr.ph ], [ %i.bd, %bb.p ] ; 2 uses
  tail call void @__rcu_read_lock() #23
  %i.at = load volatile ptr, ptr %i.aq, align 8
  %sext = shl nuw i64 %.185, 32
  %i.au = ashr exact i64 %sext, 29
  %i.av = getelementptr i8, ptr %i.at, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8
  tail call void @__rcu_read_unlock() #23
  %i.ax = getelementptr i8, ptr %i.aw, i64 328
  %i.ay = load ptr, ptr %i.ax, align 8            ; 3 uses
  %.not74 = icmp eq ptr %i.ay, null
  br i1 %.not74, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = getelementptr i8, ptr %i.ay, i64 16
  %i.ba = getelementptr i8, ptr %i.ay, i64 4
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = sub i32 %2, %i.bb
  tail call void @sbitmap_queue_resize(ptr noundef %i.az, i32 noundef %i.bc) #23
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.bd = add nuw nsw i64 %.185, 1                ; 2 uses
  %i.be = load i32, ptr %i.ao, align 4
  %i.bf = zext i32 %i.be to i64
  %i.bg = icmp samesign ult i64 %i.bd, %i.bf
  br i1 %i.bg, label %bb.n, label %.critedge, !llvm.loop !316

bb.q:                                             ; preds = %.lr.ph87, %bb.q
  %.286 = phi i64 [ 0, %.lr.ph87 ], [ %i.bo, %bb.q ] ; 3 uses
  tail call void @__rcu_read_lock() #23
  %i.bh = load volatile ptr, ptr %i.ar, align 8
  %sext80 = shl nuw i64 %.286, 32
  %i.bi = ashr exact i64 %sext80, 29
  %i.bj = getelementptr i8, ptr %i.bh, i64 %i.bi
  %i.bk = load ptr, ptr %i.bj, align 8
  tail call void @__rcu_read_unlock() #23
  %i.bl = getelementptr [8 x i8], ptr %i.as, i64 %.286
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr i8, ptr %i.bk, i64 328
  store ptr %i.bm, ptr %i.bn, align 8
  %i.bo = add nuw nsw i64 %.286, 1                ; 2 uses
  %i.bp = load i32, ptr %i.ao, align 4
  %i.bq = zext i32 %i.bp to i64
  %i.br = icmp samesign ult i64 %i.bo, %i.bq
  br i1 %i.br, label %bb.q, label %.critedge4.loopexit, !llvm.loop !317

.critedge4.loopexit:                              ; preds = %bb.q
  %.pre = load ptr, ptr %i.r, align 8             ; 2 uses
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 8
  %.pre94 = load ptr, ptr %.phi.trans.insert, align 8
  br label %.critedge4

.critedge4:                                       ; preds = %.critedge4.loopexit, %.preheader82
  %i.bs = phi ptr [ %.pre94, %.critedge4.loopexit ], [ %i.al, %.preheader82 ]
  %i.bt = phi ptr [ %.pre, %.critedge4.loopexit ], [ %i.s, %.preheader82 ]
  %i.bu = getelementptr i8, ptr %i.bt, i64 8
  store ptr %1, ptr %i.bu, align 8
  br label %.critedge

.critedge:                                        ; preds = %bb.p, %bb.l, %.preheader83, %.preheader, %bb.h, %bb.g, %.critedge4
  %.0 = phi ptr [ null, %bb.g ], [ null, %bb.h ], [ %i.bs, %.critedge4 ], [ null, %.preheader ], [ null, %.preheader83 ], [ null, %bb.l ], [ null, %bb.p ]
  %i.bv = getelementptr i8, ptr %0, i64 368       ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 8
  %i.bx = mul i32 %i.bw, %2
  %i.by = getelementptr i8, ptr %0, i64 364       ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4
  %i.ca = udiv i32 %i.bx, %i.bz
  %i.cb = tail call i32 @llvm.umax.i32(i32 %i.ca, i32 1)
  store i32 %i.cb, ptr %i.bv, align 8
  store i32 %2, ptr %i.by, align 4
  %i.cc = getelementptr i8, ptr %0, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8            ; 2 uses
  %.not76 = icmp eq ptr %i.cd, null
  br i1 %.not76, label %bb.t, label %bb.r

bb.r:                                             ; preds = %.critedge
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = getelementptr i8, ptr %i.ce, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8            ; 2 uses
  %.not77 = icmp eq ptr %i.cg, null
  br i1 %.not77, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void %i.cg(ptr noundef %0) #23
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %.critedge
  %i.ch = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.c) #23 ; 2 uses
  %i.ci = load i32, ptr %i.e, align 4             ; 2 uses
  %i.cj = icmp slt i32 %i.ci, 1
  br i1 %i.cj, label %bb.u, label %.critedge.i, !prof !36

bb.u:                                             ; preds = %bb.t
  tail call void asm sideeffect "881: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 881b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 881) #22, !srcloc !40
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 321, i32 2307, i64 16) #22, !srcloc !41
  tail call void asm sideeffect "882: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 882b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 882) #22, !srcloc !42
  br label %.critedge14.i

.critedge.i:                                      ; preds = %bb.t
  %i.ck = add nsw i32 %i.ci, -1                   ; 2 uses
  store i32 %i.ck, ptr %i.e, align 4
  %.not.i78 = icmp eq i32 %i.ck, 0
  br i1 %.not.i78, label %bb.v, label %.critedge14.i

bb.v:                                             ; preds = %.critedge.i
  tail call void @blk_queue_flag_clear(i32 noundef 9, ptr noundef %0) #23
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.c, i64 noundef %i.ch) #23
  tail call void @blk_mq_run_hw_queues(ptr noundef %0, i1 noundef zeroext true) #24
  br label %blk_mq_unquiesce_queue.exit

.critedge14.i:                                    ; preds = %.critedge.i, %bb.u
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.c, i64 noundef %i.ch) #23
  br label %blk_mq_unquiesce_queue.exit

blk_mq_unquiesce_queue.exit:                      ; preds = %bb.v, %.critedge14.i
  ret ptr %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @blk_mq_tag_update_sched_shared_tags(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @blk_mq_tag_resize_shared_tags(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @sbitmap_queue_resize(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @blk_mq_update_nr_hw_queues(ptr noundef %0, i32 noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.xarray, align 8             ; 9 uses
  %i.a = getelementptr i8, ptr %0, i64 192        ; 2 uses
  tail call void @down_write(ptr noundef %i.a) #23
  %i.b = getelementptr i8, ptr %0, i64 112        ; 2 uses
  tail call void @mutex_lock(ptr noundef %i.b) #23
  %i.c = getelementptr i8, ptr %0, i64 60         ; 11 uses
  %i.d = load i32, ptr %i.c, align 4              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.e = getelementptr i8, ptr %0, i64 56
  %i.f = load i32, ptr %i.e, align 8
  %i.g = icmp eq i32 %i.f, 1                      ; 2 uses
  %i.h = load i32, ptr @nr_cpu_ids, align 4
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %1, i32 %i.h) ; 2 uses
  %.0.i = select i1 %i.g, i32 %spec.select.i, i32 %1 ; 8 uses
  %i.i = icmp slt i32 %.0.i, 1
  %i.j = icmp eq i32 %spec.select.i, %i.d
  %or.cond.i = select i1 %i.g, i1 %i.j, i1 false
  %or.cond143.i = select i1 %i.i, i1 true, i1 %or.cond.i
  br i1 %or.cond143.i, label %__blk_mq_update_nr_hw_queues.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #25, !srcloc !34
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr i8, ptr %i.l, i64 44       ; 4 uses
  %i.n = load i32, ptr %i.m, align 4              ; 2 uses
  %i.o = or i32 %i.n, 524288
  store i32 %i.o, ptr %i.m, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.p = call i32 @blk_mq_alloc_sched_ctx_batch(ptr noundef nonnull %2, ptr noundef %0) #23
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %.loopexit149.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = call i32 @blk_mq_alloc_sched_res_batch(ptr noundef nonnull %2, ptr noundef %0, i32 noundef %.0.i) #23
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %.loopexit149.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr i8, ptr %0, i64 136        ; 20 uses
  %.pn153.i = load ptr, ptr %i.t, align 8         ; 3 uses
  %.not154.i = icmp eq ptr %.pn153.i, %i.t
  br i1 %.not154.i, label %.preheader152.i, label %.lr.ph.i

.preheader152.loopexit.i:                         ; preds = %.lr.ph.i
  %.pn108156.pre.i = load ptr, ptr %i.t, align 8
  br label %.preheader152.i

.preheader152.i:                                  ; preds = %.preheader152.loopexit.i, %bb.d
  %.pn108156.i = phi ptr [ %.pn108156.pre.i, %.preheader152.loopexit.i ], [ %.pn153.i, %bb.d ] ; 2 uses
  %.not144157.i = icmp eq ptr %.pn108156.i, %i.t
  br i1 %.not144157.i, label %._crit_edge.i, label %.lr.ph159.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.pn155.i = phi ptr [ %.pn.i, %.lr.ph.i ], [ %.pn153.i, %bb.d ] ; 2 uses
  %.0101.i = getelementptr i8, ptr %.pn155.i, i64 -848 ; 2 uses
  call void @blk_mq_debugfs_unregister_hctxs(ptr noundef %.0101.i) #23
  call void @blk_mq_sysfs_unregister_hctxs(ptr noundef %.0101.i) #23
  %.pn.i = load ptr, ptr %.pn155.i, align 8       ; 2 uses
  %.not.i = icmp eq ptr %.pn.i, %i.t
  br i1 %.not.i, label %.preheader152.loopexit.i, label %.lr.ph.i, !llvm.loop !318

.lr.ph159.i:                                      ; preds = %.preheader152.i, %blk_mq_elv_switch_none.exit.i
  %.pn108158.i = phi ptr [ %.pn108.i, %blk_mq_elv_switch_none.exit.i ], [ %.pn108156.i, %.preheader152.i ] ; 4 uses
  %.1.i = getelementptr i8, ptr %.pn108158.i, i64 -848
  %i.u = getelementptr i8, ptr %.pn108158.i, i64 -840 ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %blk_mq_elv_switch_none.exit.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph159.i
  %i.w = getelementptr i8, ptr %.pn108158.i, i64 -488
  %i.x = load i32, ptr %i.w, align 8
  %i.y = sext i32 %i.x to i64
  %i.z = call ptr @xa_load(ptr noundef nonnull %2, i64 noundef %i.y) #23 ; 3 uses
  %.not15.i.i = icmp eq ptr %i.z, null
  br i1 %.not15.i.i, label %blk_mq_elv_switch_none.exit.thread.i, label %.critedge.i.i, !prof !36

blk_mq_elv_switch_none.exit.thread.i:             ; preds = %bb.e
  call void asm sideeffect "1006: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1006b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1006) #22, !srcloc !328
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 5082, i32 2307, i64 16) #22, !srcloc !329
  call void asm sideeffect "1007: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1007b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1007) #22, !srcloc !330
  br label %blk_mq_prealloc_tag_set_tags.exit.thread.i

.critedge.i.i:                                    ; preds = %bb.e
  %i.aa = load ptr, ptr %i.u, align 8
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr i8, ptr %i.ab, i64 224
  %i.ad = load ptr, ptr %i.ac, align 8
  store ptr %i.ad, ptr %i.z, align 8
  %i.ae = load ptr, ptr %i.u, align 8
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr i8, ptr %i.af, i64 240
  %.val.i.i = load ptr, ptr %i.ag, align 8
  call void @__module_get(ptr noundef %.val.i.i) #23
  %i.ah = load ptr, ptr %i.u, align 8
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr i8, ptr %i.z, i64 32
  store ptr %i.ai, ptr %i.aj, align 8
  call void @elevator_set_none(ptr noundef %.1.i) #23
  br label %blk_mq_elv_switch_none.exit.i

blk_mq_elv_switch_none.exit.i:                    ; preds = %.critedge.i.i, %.lr.ph159.i
  %.pn108.i = load ptr, ptr %.pn108158.i, align 8 ; 2 uses
  %.not144.i = icmp eq ptr %.pn108.i, %i.t
  br i1 %.not144.i, label %._crit_edge.i, label %.lr.ph159.i, !llvm.loop !319

._crit_edge.i:                                    ; preds = %blk_mq_elv_switch_none.exit.i, %.preheader152.i
  %i.ak = load i32, ptr %i.c, align 4
  %.not.i121.i = icmp ult i32 %i.ak, %.0.i
  br i1 %.not.i121.i, label %_kmalloc_array_node_noprof.exit.i.i, label %.preheader151.i

_kmalloc_array_node_noprof.exit.i.i:              ; preds = %._crit_edge.i
  %i.al = zext nneg i32 %.0.i to i64
  %i.am = shl nuw nsw i64 %i.al, 3
  %i.an = getelementptr i8, ptr %0, i64 76
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = call noalias align 8 ptr @__kmalloc_node_noprof(i64 noundef %i.am, i32 noundef 3520, i32 noundef %i.ao) #28 ; 8 uses
  %.not43.i.i = icmp eq ptr %i.ap, null
  br i1 %.not43.i.i, label %blk_mq_prealloc_tag_set_tags.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %_kmalloc_array_node_noprof.exit.i.i
  %i.aq = getelementptr i8, ptr %0, i64 96
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  %.not44.i.i = icmp eq ptr %i.ar, null
  %.pre.i.i = load i32, ptr %i.c, align 4         ; 3 uses
  br i1 %.not44.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = zext i32 %.pre.i.i to i64
  %i.at = shl nuw nsw i64 %i.as, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ap, ptr nonnull align 8 %i.ar, i64 %i.at, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.au = icmp slt i32 %.pre.i.i, %.0.i
  br i1 %i.au, label %.lr.ph.i.i, label %blk_mq_prealloc_tag_set_tags.exit.i

.lr.ph.i.i:                                       ; preds = %bb.h
  %i.av = getelementptr i8, ptr %0, i64 84        ; 2 uses
  %i.aw = getelementptr i8, ptr %0, i64 104
  %i.ax = getelementptr i8, ptr %0, i64 64
  %i.ay = sext i32 %.pre.i.i to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.l, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %i.ay, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.l ] ; 4 uses
  %i.az = load i32, ptr %i.av, align 4
  %i.ba = and i32 %i.az, 8
  %.not47.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not47.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = load ptr, ptr %i.aw, align 8
  %i.bc = getelementptr [8 x i8], ptr %i.ap, i64 %indvars.iv.i.i
  store ptr %i.bb, ptr %i.bc, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bd = load i32, ptr %i.ax, align 8
  %i.be = trunc nsw i64 %indvars.iv.i.i to i32    ; 2 uses
  %i.bf = call ptr @blk_mq_alloc_map_and_rqs(ptr noundef %0, i32 noundef %i.be, i32 noundef %i.bd) #24 ; 2 uses
  %i.bg = getelementptr [8 x i8], ptr %i.ap, i64 %indvars.iv.i.i
  store ptr %i.bf, ptr %i.bg, align 8
  %.not45.i.i = icmp eq ptr %i.bf, null
  br i1 %.not45.i.i, label %.preheader.i.i, label %bb.l

.preheader.i.i:                                   ; preds = %bb.k
  %i.bh = add i32 %i.be, -1                       ; 2 uses
  %i.bi = load i32, ptr %i.c, align 4             ; 2 uses
  %.not4651.i.i = icmp ult i32 %i.bh, %i.bi
  br i1 %.not4651.i.i, label %._crit_edge.i.i, label %.lr.ph52.i.i

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bj = call i32 @__SCT__cond_resched() #23     ; 0 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %lftr.wideiv.i.i = trunc i64 %indvars.iv.next.i.i to i32
  %exitcond.not.i.i = icmp eq i32 %.0.i, %lftr.wideiv.i.i
  br i1 %exitcond.not.i.i, label %blk_mq_prealloc_tag_set_tags.exit.i, label %bb.i, !llvm.loop !320

.lr.ph52.i.i:                                     ; preds = %.preheader.i.i, %blk_mq_free_map_and_rqs.exit.i.i
  %i.bk = phi i32 [ %i.bv, %blk_mq_free_map_and_rqs.exit.i.i ], [ %i.bi, %.preheader.i.i ] ; 2 uses
  %i.bl = phi i32 [ %i.bw, %blk_mq_free_map_and_rqs.exit.i.i ], [ %i.bh, %.preheader.i.i ] ; 3 uses
  %i.bm = load i32, ptr %i.av, align 4
  %i.bn = and i32 %i.bm, 8
  %.not48.i.i = icmp eq i32 %i.bn, 0
  br i1 %.not48.i.i, label %bb.m, label %blk_mq_free_map_and_rqs.exit.i.i

bb.m:                                             ; preds = %.lr.ph52.i.i
  %i.bo = sext i32 %i.bl to i64
  %i.bp = getelementptr [8 x i8], ptr %i.ap, i64 %i.bo
  %i.bq = load ptr, ptr %i.bp, align 8            ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i, label %blk_mq_free_map_and_rqs.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @blk_mq_free_rqs(ptr noundef %0, ptr noundef nonnull %i.bq, i32 noundef %i.bl) #24
  %i.br = getelementptr i8, ptr %i.bq, i64 144    ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8
  call void @kfree(ptr noundef %i.bs) #23
  store ptr null, ptr %i.br, align 8
  %i.bt = getelementptr i8, ptr %i.bq, i64 152    ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8
  call void @kfree(ptr noundef %i.bu) #23
  store ptr null, ptr %i.bt, align 8
  call void @blk_mq_free_tags(ptr noundef %0, ptr noundef nonnull %i.bq) #23
  %.pre55.i.i = load i32, ptr %i.c, align 4
  br label %blk_mq_free_map_and_rqs.exit.i.i

blk_mq_free_map_and_rqs.exit.i.i:                 ; preds = %bb.n, %bb.m, %.lr.ph52.i.i
  %i.bv = phi i32 [ %.pre55.i.i, %bb.n ], [ %i.bk, %bb.m ], [ %i.bk, %.lr.ph52.i.i ] ; 2 uses
  %i.bw = add i32 %i.bl, -1                       ; 2 uses
  %.not46.i.i = icmp ult i32 %i.bw, %i.bv
  br i1 %.not46.i.i, label %._crit_edge.i.i, label %.lr.ph52.i.i, !llvm.loop !321

._crit_edge.i.i:                                  ; preds = %blk_mq_free_map_and_rqs.exit.i.i, %.preheader.i.i
  call void @kfree(ptr noundef nonnull %i.ap) #23
  br label %blk_mq_prealloc_tag_set_tags.exit.thread.i

blk_mq_prealloc_tag_set_tags.exit.i:              ; preds = %bb.l, %bb.h
  %i.bx = icmp ugt ptr %i.ap, inttoptr (i64 -4096 to ptr)
  br i1 %i.bx, label %blk_mq_prealloc_tag_set_tags.exit.thread.i, label %.preheader151.i

.preheader151.i:                                  ; preds = %blk_mq_prealloc_tag_set_tags.exit.i, %._crit_edge.i
  %.0.i122217.i = phi ptr [ %i.ap, %blk_mq_prealloc_tag_set_tags.exit.i ], [ null, %._crit_edge.i ] ; 2 uses
  %.pn110160.i = load ptr, ptr %i.t, align 8      ; 2 uses
  %.not145161.i = icmp eq ptr %.pn110160.i, %i.t
  br i1 %.not145161.i, label %._crit_edge164.i, label %.lr.ph163.i

.lr.ph163.i:                                      ; preds = %.preheader151.i, %blk_mq_freeze_queue_nomemsave.exit.i
  %.pn110162.i = phi ptr [ %.pn110.i, %blk_mq_freeze_queue_nomemsave.exit.i ], [ %.pn110160.i, %.preheader151.i ] ; 6 uses
  %.2.i = getelementptr i8, ptr %.pn110162.i, i64 -848 ; 2 uses
  %i.by = getelementptr i8, ptr %.pn110162.i, i64 -32 ; 3 uses
  call void @mutex_lock(ptr noundef %i.by) #23
  %i.bz = getelementptr i8, ptr %.pn110162.i, i64 -76 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4            ; 2 uses
  %i.cb = add i32 %i.ca, 1
  store i32 %i.cb, ptr %i.bz, align 4
  %i.cc = icmp eq i32 %i.ca, 0
  br i1 %i.cc, label %bb.o, label %bb.q

bb.o:                                             ; preds = %.lr.ph163.i
  %i.cd = getelementptr i8, ptr %.pn110162.i, i64 -784
  call void @percpu_ref_kill_and_confirm(ptr noundef %i.cd, ptr noundef null) #23
  call void @mutex_unlock(ptr noundef %i.by) #23
  %i.ce = getelementptr i8, ptr %.pn110162.i, i64 -832
  %.val.i.i.i.i = load ptr, ptr %i.ce, align 8
  %.not.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %blk_mq_freeze_queue_nomemsave.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @blk_mq_run_hw_queues(ptr noundef %.2.i, i1 noundef zeroext false) #24
  br label %blk_mq_freeze_queue_nomemsave.exit.i

bb.q:                                             ; preds = %.lr.ph163.i
  call void @mutex_unlock(ptr noundef %i.by) #23
  br label %blk_mq_freeze_queue_nomemsave.exit.i

blk_mq_freeze_queue_nomemsave.exit.i:             ; preds = %bb.q, %bb.p, %bb.o
  call void @blk_mq_freeze_queue_wait(ptr noundef %.2.i) #24
  %.pn110.i = load ptr, ptr %.pn110162.i, align 8 ; 2 uses
  %.not145.i = icmp eq ptr %.pn110.i, %i.t
  br i1 %.not145.i, label %._crit_edge164.i, label %.lr.ph163.i, !llvm.loop !322

._crit_edge164.i:                                 ; preds = %blk_mq_freeze_queue_nomemsave.exit.i, %.preheader151.i
  %.not112.i = icmp eq ptr %.0.i122217.i, null
  br i1 %.not112.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge164.i
  %i.cf = getelementptr i8, ptr %0, i64 96        ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8
  call void @kfree(ptr noundef %i.cg) #23
  store ptr %.0.i122217.i, ptr %i.cf, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge164.i
  store i32 %.0.i, ptr %i.c, align 4
  call fastcc void @blk_mq_update_queue_map(ptr noundef %0) #24, !srcloc !331
  %.pn113165176.i = load ptr, ptr %i.t, align 8   ; 2 uses
  %.not146167178.i = icmp eq ptr %.pn113165176.i, %i.t
  br i1 %.not146167178.i, label %blk_mq_prealloc_tag_set_tags.exit.thread.i, label %.lr.ph171.lr.ph.i

.lr.ph171.lr.ph.i:                                ; preds = %bb.s
  %i.ch = getelementptr i8, ptr %0, i64 84
  %i.ci = getelementptr i8, ptr %0, i64 96        ; 2 uses
  %i.cj = zext i32 %i.d to i64
  br label %.lr.ph171.i

.loopexit150.i:                                   ; preds = %__blk_mq_free_map_and_rqs.exit.i, %bb.t
  store i32 %i.d, ptr %i.c, align 4
  call fastcc void @blk_mq_update_queue_map(ptr noundef %0) #24, !srcloc !331
  %.pn113165.i = load ptr, ptr %i.t, align 8      ; 2 uses
  %.not146167.i = icmp eq ptr %.pn113165.i, %i.t
  br i1 %.not146167.i, label %blk_mq_prealloc_tag_set_tags.exit.thread.i, label %.lr.ph171.i.backedge

.lr.ph171.i:                                      ; preds = %.lr.ph171.i.backedge, %.lr.ph171.lr.ph.i
  %.pn113168.i = phi ptr [ %.pn113165176.i, %.lr.ph171.lr.ph.i ], [ %.pn113168.i.be, %.lr.ph171.i.backedge ] ; 3 uses
  %.3169.i = getelementptr i8, ptr %.pn113168.i, i64 -848 ; 2 uses
  call fastcc void @__blk_mq_realloc_hw_ctxs(ptr noundef %0, ptr noundef %.3169.i) #24, !srcloc !332
  %i.ck = getelementptr i8, ptr %.pn113168.i, i64 -796
  %i.cl = load i32, ptr %i.ck, align 4
  %i.cm = load i32, ptr %i.c, align 4
  %.not115.i = icmp eq i32 %i.cl, %i.cm
  br i1 %.not115.i, label %bb.w, label %bb.t

bb.t:                                             ; preds = %.lr.ph171.i
  %i.cn = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %.0.i, i32 noundef %i.d) #27 ; 0 uses
  %i.co = load i32, ptr %i.c, align 4
  %i.cp = icmp ult i32 %i.d, %i.co
  br i1 %i.cp, label %.lr.ph175.i, label %.loopexit150.i

.lr.ph175.i:                                      ; preds = %bb.t, %__blk_mq_free_map_and_rqs.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %__blk_mq_free_map_and_rqs.exit.i ], [ %i.cj, %bb.t ] ; 4 uses
  %i.cq = load i32, ptr %i.ch, align 4
  %i.cr = and i32 %i.cq, 8
  %.not.i123.i = icmp eq i32 %i.cr, 0
  %.pre7 = load ptr, ptr %i.ci, align 8           ; 3 uses
  br i1 %.not.i123.i, label %bb.u, label %__blk_mq_free_map_and_rqs.exit.i

bb.u:                                             ; preds = %.lr.ph175.i
  %i.cs = getelementptr [8 x i8], ptr %.pre7, i64 %indvars.iv.i
  %i.ct = load ptr, ptr %i.cs, align 8            ; 5 uses
  %.not.i.i126.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i126.i, label %__blk_mq_free_map_and_rqs.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cu = trunc nuw i64 %indvars.iv.i to i32
  call void @blk_mq_free_rqs(ptr noundef %0, ptr noundef nonnull %i.ct, i32 noundef %i.cu) #24
  %i.cv = getelementptr i8, ptr %i.ct, i64 144    ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8
  call void @kfree(ptr noundef %i.cw) #23
  store ptr null, ptr %i.cv, align 8
  %i.cx = getelementptr i8, ptr %i.ct, i64 152    ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8
  call void @kfree(ptr noundef %i.cy) #23
  store ptr null, ptr %i.cx, align 8
  call void @blk_mq_free_tags(ptr noundef %0, ptr noundef nonnull %i.ct) #23
  %.pre = load ptr, ptr %i.ci, align 8
  br label %__blk_mq_free_map_and_rqs.exit.i

__blk_mq_free_map_and_rqs.exit.i:                 ; preds = %bb.v, %bb.u, %.lr.ph175.i
  %i.cz = phi ptr [ %.pre, %bb.v ], [ %.pre7, %bb.u ], [ %.pre7, %.lr.ph175.i ]
  %i.da = getelementptr [8 x i8], ptr %i.cz, i64 %indvars.iv.i
  store ptr null, ptr %i.da, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.db = load i32, ptr %i.c, align 4
  %i.dc = zext i32 %i.db to i64
  %i.dd = icmp samesign ult i64 %indvars.iv.next.i, %i.dc
  br i1 %i.dd, label %.lr.ph175.i, label %.loopexit150.i, !llvm.loop !323

bb.w:                                             ; preds = %.lr.ph171.i
  call fastcc void @blk_mq_map_swqueue(ptr noundef %.3169.i) #24, !srcloc !333
  %.pn113.i = load ptr, ptr %.pn113168.i, align 8 ; 2 uses
  %.not146.i = icmp eq ptr %.pn113.i, %i.t
  br i1 %.not146.i, label %blk_mq_prealloc_tag_set_tags.exit.thread.i, label %.lr.ph171.i.backedge

.lr.ph171.i.backedge:                             ; preds = %bb.w, %.loopexit150.i
  %.pn113168.i.be = phi ptr [ %.pn113.i, %bb.w ], [ %.pn113165.i, %.loopexit150.i ]
  br label %.lr.ph171.i, !llvm.loop !324

blk_mq_prealloc_tag_set_tags.exit.thread.i:       ; preds = %.loopexit150.i, %bb.w, %bb.s, %blk_mq_prealloc_tag_set_tags.exit.i, %._crit_edge.i.i, %_kmalloc_array_node_noprof.exit.i.i, %blk_mq_elv_switch_none.exit.thread.i
  %.0103.i = phi i1 [ false, %blk_mq_elv_switch_none.exit.thread.i ], [ false, %blk_mq_prealloc_tag_set_tags.exit.i ], [ false, %._crit_edge.i.i ], [ false, %_kmalloc_array_node_noprof.exit.i.i ], [ true, %bb.s ], [ true, %bb.w ], [ true, %.loopexit150.i ]
  %.pn117181.i = load ptr, ptr %i.t, align 8      ; 3 uses
  %.not147183.i = icmp eq ptr %.pn117181.i, %i.t
  br i1 %.not147183.i, label %.preheader.i, label %.lr.ph186.i

.preheader.loopexit.i:                            ; preds = %blk_mq_elv_switch_back.exit.i
  %.pn119187.pre.i = load ptr, ptr %i.t, align 8
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %blk_mq_prealloc_tag_set_tags.exit.thread.i
  %.pn119187.i = phi ptr [ %.pn119187.pre.i, %.preheader.loopexit.i ], [ %.pn117181.i, %blk_mq_prealloc_tag_set_tags.exit.thread.i ] ; 2 uses
  %.not148188.i = icmp eq ptr %.pn119187.i, %i.t
  br i1 %.not148188.i, label %.loopexit149.i, label %.lr.ph190.i

.lr.ph186.i:                                      ; preds = %blk_mq_prealloc_tag_set_tags.exit.thread.i, %blk_mq_elv_switch_back.exit.i
  %.pn117184.i = phi ptr [ %.pn117.i, %blk_mq_elv_switch_back.exit.i ], [ %.pn117181.i, %blk_mq_prealloc_tag_set_tags.exit.thread.i ] ; 7 uses
  %.4185.i = getelementptr i8, ptr %.pn117184.i, i64 -848 ; 3 uses
end_hunk_0
