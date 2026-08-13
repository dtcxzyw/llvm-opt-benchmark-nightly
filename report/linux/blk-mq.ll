inline.NumInlined: 959
inline.NumDeleted: 311
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@blk_mq_free_rqs:bb.a
  %i.at = and i64 %i.as, 4294967295
  %i.au = shl i64 4096, %i.at
  %i.av = add i64 %i.au, %i.ap
  %.not54.i = icmp eq i32 %i.aj, 0
  br i1 %.not54.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph52.split.i, %bb.m
  %i.aw = phi i32 [ %i.bi, %bb.m ], [ %i.ai, %.lr.ph52.split.i ]
  %.03748.i = phi i32 [ %i.bj, %bb.m ], [ 0, %.lr.ph52.split.i ] ; 2 uses
  %i.ax = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.ay = sext i32 %.03748.i to i64               ; 2 uses
  %i.az = getelementptr [8 x i8], ptr %i.ax, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8            ; 4 uses
  %.not42.i = icmp uge ptr %i.ba, %i.aq
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = icmp ugt i64 %i.av, %i.bb
  %or.cond45.i = select i1 %.not42.i, i1 %i.bc, i1 false
  br i1 %or.cond45.i, label %bb.j, label %bb.m

bb.j:                                             ; preds = %.lr.ph.i
  %i.bd = getelementptr i8, ptr %i.ba, i64 132
  %i.be = load volatile i32, ptr %i.bd, align 4
  %.not43.i = icmp eq i32 %i.be, 0
  br i1 %.not43.i, label %bb.l, label %bb.k, !prof !12

bb.k:                                             ; preds = %bb.j
  tail call void asm sideeffect "966: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 966b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 966) #22, !srcloc !243
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 3459, i32 2307, i64 16) #22, !srcloc !244
  tail call void asm sideeffect "967: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 967b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 967) #22, !srcloc !245
  %.pre.i = load ptr, ptr %i.ae, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bf = phi ptr [ %.pre.i, %bb.k ], [ %i.ax, %bb.j ]
  %i.bg = getelementptr [8 x i8], ptr %i.bf, i64 %i.ay ; 2 uses
  %i.bh = tail call ptr asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgq $2, $1", "={ax},=*m,r,0,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.bg, ptr null, ptr %i.ba, ptr elementtype(i64) %i.bg) #22, !srcloc !246 ; 0 uses
  %.pre56.i = load i32, ptr %.0, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.i
  %i.bi = phi i32 [ %.pre56.i, %bb.l ], [ %i.aw, %.lr.ph.i ] ; 4 uses
  %i.bj = add nuw i32 %.03748.i, 1                ; 2 uses
  %i.bk = icmp ult i32 %i.bj, %i.bi
  br i1 %i.bk, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !247

blk_mq_clear_rq_mapping.exit:                     ; preds = %.loopexit.i, %.lr.ph52.i, %bb.i, %.loopexit, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @blk_mq_free_rq_map(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 144        ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @kfree(ptr noundef %i.b) #23
  store ptr null, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %1, i64 152        ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  tail call void @kfree(ptr noundef %i.d) #23
  store ptr null, ptr %i.c, align 8
  tail call void @blk_mq_free_tags(ptr noundef %0, ptr noundef %1) #23
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @blk_mq_free_tags(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @blk_mq_alloc_map_and_rqs(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 68
  %i.b = load i32, ptr %i.a, align 4
  %i.c = getelementptr i8, ptr %0, i64 8          ; 4 uses
  %i.d = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %.not22.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not22.i.i.i, label %blk_mq_get_hctx_node.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.c
  %.01519.i.i.i = phi i32 [ %i.n, %bb.c ], [ 0, %bb.a ] ; 3 uses
  %i.f = sext i32 %.01519.i.i.i to i64
  %i.g = getelementptr [16 x i8], ptr %i.c, i64 %i.f ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 12
  %i.i = load i32, ptr %i.h, align 4              ; 2 uses
  %.not.i.i.i = icmp ult i32 %1, %i.i
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.j = getelementptr i8, ptr %i.g, i64 8
  %i.k = load i32, ptr %i.j, align 8
  %i.l = add i32 %i.k, %i.i
  %i.m = icmp ult i32 %1, %i.l
  br i1 %i.m, label %hctx_idx_to_type.exit.loopexit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %i.n = add nuw i32 %.01519.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i = icmp eq i32 %i.n, %i.e
  br i1 %exitcond.not.i.i.i, label %hctx_idx_to_type.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !248

hctx_idx_to_type.exit.loopexit.i.i:               ; preds = %bb.c, %bb.b
  %spec.store.select.i.ph.i.i = phi i32 [ %.01519.i.i.i, %bb.b ], [ 0, %bb.c ]
  %i.o = zext i32 %spec.store.select.i.ph.i.i to i64
  br label %blk_mq_get_hctx_node.exit.i

blk_mq_get_hctx_node.exit.i:                      ; preds = %hctx_idx_to_type.exit.loopexit.i.i, %bb.a
  %spec.store.select.i.i.i = phi i64 [ 0, %bb.a ], [ %i.o, %hctx_idx_to_type.exit.loopexit.i.i ]
  %i.p = getelementptr [16 x i8], ptr %i.c, i64 %spec.store.select.i.i.i
  %i.q = tail call i32 @blk_mq_hw_queue_to_node(ptr noundef %i.p, i32 noundef %1) #23 ; 2 uses
  %i.r = icmp eq i32 %i.q, -1
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %blk_mq_get_hctx_node.exit.i
  %i.s = getelementptr i8, ptr %0, i64 76
  %i.t = load i32, ptr %i.s, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %blk_mq_get_hctx_node.exit.i
  %.031.i = phi i32 [ %i.t, %bb.d ], [ %i.q, %blk_mq_get_hctx_node.exit.i ] ; 3 uses
  %i.u = getelementptr i8, ptr %0, i64 84
  %i.v = load i32, ptr %i.u, align 4
  %i.w = tail call ptr @blk_mq_init_tags(i32 noundef %2, i32 noundef %i.b, i32 noundef %i.v, i32 noundef %.031.i) #23 ; 9 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %blk_mq_alloc_rq_map.exit.thread, label %_kmalloc_array_node_noprof.exit.i

_kmalloc_array_node_noprof.exit.i:                ; preds = %bb.e
  %i.x = zext i32 %2 to i64                       ; 2 uses
  %i.y = shl nuw nsw i64 %i.x, 3                  ; 2 uses
  %i.z = tail call noalias align 8 ptr @__kmalloc_node_noprof(i64 noundef %i.y, i32 noundef 77056, i32 noundef %.031.i) #28 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.w, i64 144     ; 4 uses
  store ptr %i.z, ptr %i.aa, align 8
  %.not36.i = icmp eq ptr %i.z, null
  br i1 %.not36.i, label %blk_mq_alloc_rq_map.exit.thread.sink.split, label %_kmalloc_array_node_noprof.exit44.i

_kmalloc_array_node_noprof.exit44.i:              ; preds = %_kmalloc_array_node_noprof.exit.i
  %i.ab = tail call noalias align 8 ptr @__kmalloc_node_noprof(i64 noundef %i.y, i32 noundef 77056, i32 noundef %.031.i) #28 ; 2 uses
  %i.ac = getelementptr i8, ptr %i.w, i64 152     ; 5 uses
  store ptr %i.ab, ptr %i.ac, align 8
  %.not37.i = icmp eq ptr %i.ab, null
  br i1 %.not37.i, label %bb.f, label %blk_mq_alloc_rq_map.exit

bb.f:                                             ; preds = %_kmalloc_array_node_noprof.exit44.i
  %i.ad = load ptr, ptr %i.aa, align 8
  tail call void @kfree(ptr noundef %i.ad) #23
  br label %blk_mq_alloc_rq_map.exit.thread.sink.split

blk_mq_alloc_rq_map.exit:                         ; preds = %_kmalloc_array_node_noprof.exit44.i
  %i.ae = load i32, ptr %i.d, align 8             ; 2 uses
  %.not22.i.i.i15 = icmp eq i32 %i.ae, 0
  br i1 %.not22.i.i.i15, label %blk_mq_get_hctx_node.exit.i22, label %.lr.ph.i.i.i16

.lr.ph.i.i.i16:                                   ; preds = %blk_mq_alloc_rq_map.exit, %bb.h
  %.01519.i.i.i17 = phi i32 [ %i.an, %bb.h ], [ 0, %blk_mq_alloc_rq_map.exit ] ; 3 uses
  %i.af = sext i32 %.01519.i.i.i17 to i64
  %i.ag = getelementptr [16 x i8], ptr %i.c, i64 %i.af ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 12
  %i.ai = load i32, ptr %i.ah, align 4            ; 2 uses
  %.not.i.i.i18 = icmp ult i32 %1, %i.ai
  br i1 %.not.i.i.i18, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i16
  %i.aj = getelementptr i8, ptr %i.ag, i64 8
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = add i32 %i.ak, %i.ai
  %i.am = icmp ult i32 %1, %i.al
  br i1 %i.am, label %hctx_idx_to_type.exit.loopexit.i.i20, label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i.i.i16
  %i.an = add nuw i32 %.01519.i.i.i17, 1          ; 2 uses
  %exitcond.not.i.i.i19 = icmp eq i32 %i.an, %i.ae
  br i1 %exitcond.not.i.i.i19, label %hctx_idx_to_type.exit.loopexit.i.i20, label %.lr.ph.i.i.i16, !llvm.loop !248

hctx_idx_to_type.exit.loopexit.i.i20:             ; preds = %bb.h, %bb.g
  %spec.store.select.i.ph.i.i21 = phi i32 [ %.01519.i.i.i17, %bb.g ], [ 0, %bb.h ]
  %i.ao = zext i32 %spec.store.select.i.ph.i.i21 to i64
  br label %blk_mq_get_hctx_node.exit.i22

blk_mq_get_hctx_node.exit.i22:                    ; preds = %hctx_idx_to_type.exit.loopexit.i.i20, %blk_mq_alloc_rq_map.exit
  %spec.store.select.i.i.i23 = phi i64 [ 0, %blk_mq_alloc_rq_map.exit ], [ %i.ao, %hctx_idx_to_type.exit.loopexit.i.i20 ]
  %i.ap = getelementptr [16 x i8], ptr %i.c, i64 %spec.store.select.i.i.i23
  %i.aq = tail call i32 @blk_mq_hw_queue_to_node(ptr noundef %i.ap, i32 noundef %1) #23 ; 2 uses
  %i.ar = icmp eq i32 %i.aq, -1
  br i1 %i.ar, label %bb.i, label %bb.j

bb.i:                                             ; preds = %blk_mq_get_hctx_node.exit.i22
  %i.as = getelementptr i8, ptr %0, i64 76
  %i.at = load i32, ptr %i.as, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %blk_mq_get_hctx_node.exit.i22
  %.071.i = phi i32 [ %i.at, %bb.i ], [ %i.aq, %blk_mq_get_hctx_node.exit.i22 ] ; 3 uses
  %i.au = getelementptr i8, ptr %0, i64 72
  %i.av = load i32, ptr %i.au, align 8
  %i.aw = zext i32 %i.av to i64
  %i.ax = add nuw nsw i64 %i.aw, 247
  %i.ay = load i32, ptr getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 320), align 8
  %i.az = add i32 %i.ay, -1
  %i.ba = sext i32 %i.az to i64
  %i.bb = or i64 %i.ax, %i.ba                     ; 2 uses
  %i.bc = add nsw i64 %i.bb, 1                    ; 5 uses
  %.not117.i = icmp eq i32 %2, 0
  br i1 %.not117.i, label %blk_mq_alloc_rq_map.exit.thread, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.j
  %i.bd = mul i64 %i.bc, %i.x
  %i.be = icmp eq i32 %.071.i, -1
  %i.bf = getelementptr i8, ptr %i.w, i64 160
  %i.bg = getelementptr i8, ptr %i.w, i64 168     ; 2 uses
  br label %.preheader.i

.loopexit.i:                                      ; preds = %bb.r, %.split.us.i
  %.169.lcssa.i = phi i32 [ %.068116.i, %.split.us.i ], [ %i.dd, %bb.r ] ; 2 uses
  %i.bh = icmp ult i32 %.169.lcssa.i, %2
  br i1 %i.bh, label %.preheader.i, label %blk_mq_alloc_rq_map.exit.thread

.preheader.i:                                     ; preds = %.loopexit.i, %.preheader.lr.ph.i
  %.068116.i = phi i32 [ 0, %.preheader.lr.ph.i ], [ %.169.lcssa.i, %.loopexit.i ] ; 3 uses
  %.073115.i = phi i64 [ %i.bd, %.preheader.lr.ph.i ], [ %i.ck, %.loopexit.i ] ; 5 uses
  %i.bi = icmp ult i64 %.073115.i, 32768
  br i1 %i.bi, label %bb.k, label %.critedge.i

bb.k:                                             ; preds = %.preheader.i
  %i.bj = icmp samesign ult i64 %.073115.i, 16384
  br i1 %i.bj, label %bb.l, label %.critedge.i

bb.l:                                             ; preds = %bb.k
  %i.bk = icmp samesign ult i64 %.073115.i, 8192
  br i1 %i.bk, label %bb.m, label %.critedge.i

bb.m:                                             ; preds = %bb.l
  %i.bl = icmp samesign ugt i64 %.073115.i, 4095
  %spec.select.i = zext i1 %i.bl to i64
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.m, %bb.l, %bb.k, %.preheader.i
  %.077.lcssa.i = phi i64 [ 2, %bb.l ], [ 4, %.preheader.i ], [ %spec.select.i, %bb.m ], [ 3, %bb.k ] ; 2 uses
  br i1 %i.be, label %alloc_pages_node_noprof.exit.us.i, label %alloc_pages_node_noprof.exit.i

alloc_pages_node_noprof.exit.us.i:                ; preds = %.critedge.i, %bb.n
  %indvars.iv131.i = phi i64 [ %indvars.iv.next132.i, %bb.n ], [ %.077.lcssa.i, %.critedge.i ] ; 3 uses
  %i.bm = tail call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @numa_node) #26, !srcloc !249
  %i.bn = trunc nuw i64 %indvars.iv131.i to i32   ; 2 uses
  %i.bo = tail call ptr @__alloc_pages_noprof(i32 noundef 77056, i32 noundef %i.bn, i32 noundef %i.bm, ptr noundef null) #23 ; 2 uses
  %.not82.us.i = icmp eq ptr %i.bo, null
  br i1 %.not82.us.i, label %bb.n, label %.split.us.i

bb.n:                                             ; preds = %alloc_pages_node_noprof.exit.us.i
  %indvars.iv.next132.i = add nsw i64 %indvars.iv131.i, -1 ; 2 uses
  %.not83.us.i = icmp eq i64 %indvars.iv131.i, 0
  %i.bp = and i64 %indvars.iv.next132.i, 4294967295
  %i.bq = shl i64 4096, %i.bp
  %i.br = icmp ult i64 %i.bq, %i.bc
  %or.cond.us.i = select i1 %.not83.us.i, i1 true, i1 %i.br
  br i1 %or.cond.us.i, label %.loopexit, label %alloc_pages_node_noprof.exit.us.i

alloc_pages_node_noprof.exit.i:                   ; preds = %.critedge.i, %bb.o
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.o ], [ %.077.lcssa.i, %.critedge.i ] ; 3 uses
  %i.bs = trunc nuw i64 %indvars.iv.i to i32      ; 2 uses
  %i.bt = tail call ptr @__alloc_pages_noprof(i32 noundef 77056, i32 noundef %i.bs, i32 noundef %.071.i, ptr noundef null) #23 ; 2 uses
  %.not82.i = icmp eq ptr %i.bt, null
  br i1 %.not82.i, label %bb.o, label %.split.us.i

bb.o:                                             ; preds = %alloc_pages_node_noprof.exit.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %.not83.i = icmp eq i64 %indvars.iv.i, 0
  %i.bu = and i64 %indvars.iv.next.i, 4294967295
  %i.bv = shl i64 4096, %i.bu
  %i.bw = icmp ult i64 %i.bv, %i.bc
  %or.cond.i = select i1 %.not83.i, i1 true, i1 %i.bw
  br i1 %or.cond.i, label %.loopexit, label %alloc_pages_node_noprof.exit.i

.split.us.i:                                      ; preds = %alloc_pages_node_noprof.exit.i, %alloc_pages_node_noprof.exit.us.i
  %.us-phi.i = phi ptr [ %i.bo, %alloc_pages_node_noprof.exit.us.i ], [ %i.bt, %alloc_pages_node_noprof.exit.i ] ; 4 uses
  %.us-phi111.i = phi i32 [ %i.bn, %alloc_pages_node_noprof.exit.us.i ], [ %i.bs, %alloc_pages_node_noprof.exit.i ] ; 2 uses
  %i.bx = sext i32 %.us-phi111.i to i64
  %i.by = getelementptr i8, ptr %.us-phi.i, i64 8 ; 3 uses
  %i.bz = getelementptr i8, ptr %.us-phi.i, i64 40
  store i64 %i.bx, ptr %i.bz, align 8
  %i.ca = load ptr, ptr %i.bg, align 8            ; 2 uses
  store ptr %i.by, ptr %i.bg, align 8
  store ptr %i.bf, ptr %i.by, align 8
  %i.cb = getelementptr i8, ptr %.us-phi.i, i64 16
  store ptr %i.ca, ptr %i.cb, align 8
  store volatile ptr %i.by, ptr %i.ca, align 8
  %i.cc = zext nneg i32 %.us-phi111.i to i64
  %i.cd = shl i64 4096, %i.cc
  %i.ce = udiv i64 %i.cd, %i.bc
  %i.cf = trunc i64 %i.ce to i32
  %i.cg = sub i32 %2, %.068116.i
  %i.ch = tail call i32 @llvm.umin.i32(i32 %i.cg, i32 %i.cf) ; 3 uses
  %i.ci = sext i32 %i.ch to i64
  %i.cj = mul i64 %i.bc, %i.ci
  %i.ck = sub i64 %.073115.i, %i.cj
  %.not118.i = icmp eq i32 %i.ch, 0
  br i1 %.not118.i, label %.loopexit.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.split.us.i
  %i.cl = ptrtoint ptr %.us-phi.i to i64
  %i.cm = load i64, ptr @vmemmap_base, align 8
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = shl i64 %i.cn, 6
  %i.cp = load i64, ptr @page_offset_base, align 8
  %i.cq = add i64 %i.co, %i.cp
  %i.cr = inttoptr i64 %i.cq to ptr
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.r, %.lr.ph.preheader.i
  %.169114.i = phi i32 [ %i.dd, %bb.r ], [ %.068116.i, %.lr.ph.preheader.i ] ; 2 uses
  %.070113.i = phi i32 [ %i.de, %bb.r ], [ 0, %.lr.ph.preheader.i ]
  %.075112.i = phi ptr [ %i.dc, %bb.r ], [ %i.cr, %.lr.ph.preheader.i ] ; 4 uses
  %i.cs = load ptr, ptr %i.ac, align 8
  %i.ct = zext i32 %.169114.i to i64              ; 2 uses
  %i.cu = getelementptr [8 x i8], ptr %i.cs, i64 %i.ct
  store ptr %.075112.i, ptr %i.cu, align 8
  %i.cv = load ptr, ptr %0, align 8
  %i.cw = getelementptr i8, ptr %i.cv, i64 96
  %i.cx = load ptr, ptr %i.cw, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.cx, null
  br i1 %.not.i.i, label %bb.r, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i
  %i.cy = tail call i32 %i.cx(ptr noundef %0, ptr noundef %.075112.i, i32 noundef %1, i32 noundef %.071.i) #23, !inline_history !250
  %.not11.i.i = icmp eq i32 %i.cy, 0
  br i1 %.not11.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cz = load ptr, ptr %i.ac, align 8
  %i.da = getelementptr [8 x i8], ptr %i.cz, i64 %i.ct
  store ptr null, ptr %i.da, align 8
  br label %.loopexit

bb.r:                                             ; preds = %bb.p, %.lr.ph.i
  %i.db = getelementptr i8, ptr %.075112.i, i64 128
  store volatile i32 0, ptr %i.db, align 8
  %3 = getelementptr i8, ptr %.075112.i, i64 %i.bb
  %i.dc = getelementptr i8, ptr %3, i64 1
  %i.dd = add i32 %.169114.i, 1                   ; 2 uses
  %i.de = add nuw i32 %.070113.i, 1               ; 2 uses
  %i.df = icmp ult i32 %i.de, %i.ch
  br i1 %i.df, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !251

.loopexit:                                        ; preds = %bb.o, %bb.n, %bb.q
  tail call void @blk_mq_free_rqs(ptr noundef %0, ptr noundef nonnull %i.w, i32 noundef %1) #24
  %i.dg = load ptr, ptr %i.aa, align 8
  tail call void @kfree(ptr noundef %i.dg) #23
  store ptr null, ptr %i.aa, align 8
  %i.dh = load ptr, ptr %i.ac, align 8
  tail call void @kfree(ptr noundef %i.dh) #23
  store ptr null, ptr %i.ac, align 8
  br label %blk_mq_alloc_rq_map.exit.thread.sink.split

blk_mq_alloc_rq_map.exit.thread.sink.split:       ; preds = %_kmalloc_array_node_noprof.exit.i, %bb.f, %.loopexit
  tail call void @blk_mq_free_tags(ptr noundef %0, ptr noundef nonnull %i.w) #23
  br label %blk_mq_alloc_rq_map.exit.thread

blk_mq_alloc_rq_map.exit.thread:                  ; preds = %.loopexit.i, %blk_mq_alloc_rq_map.exit.thread.sink.split, %bb.j, %bb.e
  %.0 = phi ptr [ %i.w, %bb.j ], [ null, %blk_mq_alloc_rq_map.exit.thread.sink.split ], [ null, %bb.e ], [ %i.w, %.loopexit.i ]
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @blk_mq_free_map_and_rqs(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @blk_mq_free_rqs(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2) #24
  %i.a = getelementptr i8, ptr %1, i64 144        ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @kfree(ptr noundef %i.b) #23
  store ptr null, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %1, i64 152        ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  tail call void @kfree(ptr noundef %i.d) #23
  store ptr null, ptr %i.c, align 8
  tail call void @blk_mq_free_tags(ptr noundef %0, ptr noundef nonnull %1) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @blk_mq_release(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 52         ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %.not37 = icmp eq i32 %i.b, 0
  br i1 %.not37, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 56
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge32
  %.02733 = phi i64 [ 0, %.lr.ph ], [ %i.k, %.critedge32 ] ; 2 uses
  tail call void @__rcu_read_lock() #23
  %i.d = load volatile ptr, ptr %i.c, align 8
  %sext = shl nuw i64 %.02733, 32
  %i.e = ashr exact i64 %sext, 29
  %i.f = getelementptr i8, ptr %i.d, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  tail call void @__rcu_read_unlock() #23
  %.not30 = icmp eq ptr %i.g, null
  br i1 %.not30, label %.critedge32, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.g, i64 464      ; 2 uses
  %i.i = load volatile ptr, ptr %i.h, align 8
  %i.j = icmp eq ptr %i.i, %i.h
  br i1 %i.j, label %bb.d, label %.critedge32, !prof !19

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "977: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 977b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 977) #22, !srcloc !252
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 4390, i32 2307, i64 16) #22, !srcloc !253
  tail call void asm sideeffect "978: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 978b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 978) #22, !srcloc !254
  br label %.critedge32

.critedge32:                                      ; preds = %bb.b, %bb.d, %bb.c
  %i.k = add nuw nsw i64 %.02733, 1               ; 2 uses
  %i.l = load i32, ptr %i.a, align 4
  %i.m = zext i32 %i.l to i64
  %i.n = icmp samesign ult i64 %i.k, %i.m
  br i1 %i.n, label %bb.b, label %.critedge, !llvm.loop !255

.critedge:                                        ; preds = %.critedge32, %bb.a
  %i.o = getelementptr i8, ptr %0, i64 752        ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not34 = icmp eq ptr %i.p, %i.o
  br i1 %.not34, label %._crit_edge, label %.lr.ph36

.lr.ph36:                                         ; preds = %.critedge, %.lr.ph36
  %.pn.in35 = phi ptr [ %.pn, %.lr.ph36 ], [ %i.p, %.critedge ] ; 6 uses
  %.pn = load ptr, ptr %.pn.in35, align 16        ; 4 uses
  %i.q = getelementptr i8, ptr %.pn.in35, i64 8   ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr i8, ptr %.pn, i64 8
  store ptr %i.r, ptr %i.s, align 8
  store volatile ptr %.pn, ptr %i.r, align 8
  store volatile ptr %.pn.in35, ptr %.pn.in35, align 16
  store volatile ptr %.pn.in35, ptr %i.q, align 8
  %i.t = getelementptr i8, ptr %.pn.in35, i64 -80
  tail call void @kobject_put(ptr noundef %i.t) #23
  %.not = icmp eq ptr %.pn, %i.o
  br i1 %.not, label %._crit_edge, label %.lr.ph36, !llvm.loop !256

._crit_edge:                                      ; preds = %.lr.ph36, %.critedge
  %i.u = getelementptr i8, ptr %0, i64 56
  %i.v = load ptr, ptr %i.u, align 8
  tail call void @kfree(ptr noundef %i.v) #23
  tail call void @blk_mq_sysfs_deinit(ptr noundef %0) #23
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @blk_mq_sysfs_deinit(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @blk_mq_alloc_queue(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %3 = alloca %struct.queue_limits, align 8       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %3, i8 0, i64 192, i1 false)
  %.not = icmp eq ptr %1, null
  %spec.store.select = select i1 %.not, ptr %3, ptr %1 ; 4 uses
  %i.a = load i32, ptr %spec.store.select, align 8 ; 2 uses
  %i.b = or i32 %i.a, 144
  store i32 %i.b, ptr %spec.store.select, align 8
  %i.c = getelementptr i8, ptr %0, i64 56
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp ugt i32 %i.d, 2
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = or i32 %i.a, 656
  store i32 %i.f, ptr %spec.store.select, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr i8, ptr %0, i64 76
  %i.h = load i32, ptr %i.g, align 4
  %i.i = call ptr @blk_alloc_queue(ptr noundef nonnull %spec.store.select, i32 noundef %i.h) #23 ; 6 uses
  %i.j = icmp ugt ptr %i.i, inttoptr (i64 -4096 to ptr)
  br i1 %i.j, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %2, ptr %i.i, align 8
  %i.k = call i32 @blk_mq_init_allocated_queue(ptr noundef %0, ptr noundef %i.i) #24 ; 2 uses
  %.not17 = icmp eq i32 %i.k, 0
  br i1 %.not17, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @blk_put_queue(ptr noundef %i.i) #23
  %i.l = sext i32 %i.k to i64
  %i.m = inttoptr i64 %i.l to ptr
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.e
  %.0 = phi ptr [ %i.i, %bb.c ], [ %i.m, %bb.e ], [ %i.i, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret ptr %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @blk_alloc_queue(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -12, 1) i32 @blk_mq_init_allocated_queue(ptr noundef %0, ptr noundef initializes((16, 24), (840, 848)) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr i8, ptr %1, i64 16         ; 2 uses
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %1, i64 840        ; 3 uses
  store ptr %0, ptr %i.c, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 8), align 8
  %i.e = tail call noalias align 8 dereferenceable_or_null(72) ptr @__kmalloc_cache_noprof(ptr noundef %i.d, i32 noundef 3520, i64 noundef range(i64 32, 73) 72) #29 ; 5 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %blk_mq_alloc_ctxs.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noalias dereferenceable_or_null(192) ptr @pcpu_alloc_noprof(i64 noundef 192, i64 noundef 64, i1 noundef zeroext false, i32 noundef 3264) #28 ; 2 uses
  %i.g = getelementptr i8, ptr %i.e, i64 64       ; 3 uses
  store ptr %i.f, ptr %i.g, align 8
  %.not29.i = icmp eq ptr %i.f, null
  br i1 %.not29.i, label %bb.d, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b, %bb.c
  %i.h = phi i64 [ %i.x, %bb.c ], [ 0, %bb.b ]
  %i.i = load i64, ptr @__cpu_possible_mask, align 8
  %i.j = shl nsw i64 -1, %i.h
  %i.k = and i64 %i.i, %i.j                       ; 2 uses
  %.not23.i.i = icmp eq i64 %i.k, 0
end_hunk_0
