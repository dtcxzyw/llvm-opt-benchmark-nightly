Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/extents_status?download=true
inline.NumInlined: 315
inline.NumDeleted: 99
begin_hunk_0_@__es_remove_extent:bb.a
  br label %.critedge.i215

bb.av:                                            ; preds = %bb.at
  %i.gc = tail call ptr @rb_prev(ptr noundef nonnull %.082.i) #9 ; 2 uses
  %.not97.i = icmp eq ptr %i.gc, null
  br i1 %.not97.i, label %.critedge.i215, label %bb.aq, !llvm.loop !51

.critedge.i215:                                   ; preds = %bb.av, %ext4_es_end.exit.i214, %bb.aq, %bb.au
  %i.gd = phi i32 [ %i.gb, %bb.au ], [ %i.ff, %bb.aq ], [ %i.ff, %ext4_es_end.exit.i214 ], [ %i.ff, %bb.av ] ; 5 uses
  %.081.i = phi i1 [ true, %bb.au ], [ false, %bb.aq ], [ false, %ext4_es_end.exit.i214 ], [ false, %bb.av ] ; 3 uses
  %.not98.i = icmp eq ptr %.3313, null
  %.not99.i = icmp eq i32 %i.fl, %i.fo            ; 2 uses
  %or.cond.i = select i1 %.081.i, i1 %.not99.i, i1 false
  %or.cond111.i = select i1 %.not98.i, i1 true, i1 %or.cond.i
  br i1 %or.cond111.i, label %.critedge2.i, label %bb.aw

bb.aw:                                            ; preds = %.critedge.i215
  %i.ge = getelementptr i8, ptr %.3313, i64 24
  %.val112.i = load i32, ptr %i.ge, align 8       ; 2 uses
  %i.gf = getelementptr i8, ptr %.3313, i64 28
  %.val113.i = load i32, ptr %i.gf, align 4
  %i.gg = add i32 %.val113.i, %.val112.i          ; 2 uses
  %i.gh = icmp ult i32 %i.gg, %.val112.i
  br i1 %i.gh, label %bb.ax, label %ext4_es_end.exit115.i, !prof !20

bb.ax:                                            ; preds = %bb.aw
  tail call void asm sideeffect "1462: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1462b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1462) #10, !srcloc !24
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.2, i32 236, i32 0, i64 16) #10, !srcloc !25
  unreachable

ext4_es_end.exit115.i:                            ; preds = %bb.aw
  %i.gi = add i32 %i.gg, -1
  %i.gj = icmp ult i32 %2, %i.gi
  br i1 %i.gj, label %.preheader, label %bb.ay

bb.ay:                                            ; preds = %ext4_es_end.exit115.i
  %i.gk = tail call ptr @rb_next(ptr noundef nonnull %.3313) #9
  br label %.preheader

.preheader:                                       ; preds = %bb.ay, %ext4_es_end.exit115.i
  %.2.i.ph = phi ptr [ %.3313, %ext4_es_end.exit115.i ], [ %i.gk, %bb.ay ]
  br label %bb.az

bb.az:                                            ; preds = %.preheader, %bb.bd
  %.2.i = phi ptr [ %i.gt, %bb.bd ], [ %.2.i.ph, %.preheader ] ; 4 uses
  %.not101.i = icmp eq ptr %.2.i, null
  br i1 %.not101.i, label %.critedge2.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gl = getelementptr i8, ptr %.2.i, i64 24
  %i.gm = load i32, ptr %i.gl, align 8
  %i.gn = load i32, ptr %i.ey, align 16
  %i.go = add i32 %i.gn, -1
  %i.gp = or i32 %i.go, %i.fn
  %.not102.i = icmp ugt i32 %i.gm, %i.gp
  br i1 %.not102.i, label %.critedge2.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gq = getelementptr i8, ptr %.2.i, i64 32
  %.val.i116.i = load i64, ptr %i.gq, align 8
  %i.gr = and i64 %.val.i116.i, 2305843009213693952
  %.not103.i = icmp eq i64 %i.gr, 0
  br i1 %.not103.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gs = add i32 %i.gd, -1                       ; 2 uses
  store i32 %i.gs, ptr %8, align 8
  br label %.critedge2.i

bb.bd:                                            ; preds = %bb.bb
  %i.gt = tail call ptr @rb_next(ptr noundef nonnull %.2.i) #9 ; 2 uses
  %.not104.i = icmp eq ptr %i.gt, null
  br i1 %.not104.i, label %.critedge2.i, label %bb.az, !llvm.loop !52

.critedge2.i:                                     ; preds = %bb.bd, %bb.ba, %bb.az, %bb.bc, %.critedge.i215
  %.promoted = phi i32 [ %i.gs, %bb.bc ], [ %i.gd, %.critedge.i215 ], [ %i.gd, %bb.az ], [ %i.gd, %bb.ba ], [ %i.gd, %bb.bd ] ; 3 uses
  %.085.i = phi i1 [ true, %bb.bc ], [ false, %.critedge.i215 ], [ false, %bb.az ], [ false, %bb.ba ], [ false, %bb.bd ] ; 2 uses
  br i1 %.not99.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %.critedge2.i
  %i.gu = zext i1 %.081.i to i32
  %spec.select109.i = add i32 %i.fl, %i.gu        ; 2 uses
  %i.gv = sext i1 %.085.i to i32
  %.079.i = add i32 %i.fo, %i.gv                  ; 2 uses
  %.not105.i = icmp ugt i32 %spec.select109.i, %.079.i
  br i1 %.not105.i, label %get_rsvd.exit, label %.thread.i

bb.bf:                                            ; preds = %.critedge2.i
  %i.gw = or i1 %.081.i, %.085.i
  br i1 %i.gw, label %get_rsvd.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.bf, %bb.be
  %.1123.i = phi i32 [ %i.fl, %bb.bf ], [ %spec.select109.i, %bb.be ] ; 2 uses
  %.180122.i = phi i32 [ %i.fl, %bb.bf ], [ %.079.i, %bb.be ]
  %.02433.i.i = load ptr, ptr %i.ex, align 8      ; 2 uses
  %.not34.i.i = icmp eq ptr %.02433.i.i, null
  br i1 %.not34.i.i, label %__pr_tree_search.exit.i.preheader, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.thread.i, %.lr.ph.i.i.backedge
  %.02435.i.i = phi ptr [ %.02435.i.i.be, %.lr.ph.i.i.backedge ], [ %.02433.i.i, %.thread.i ] ; 6 uses
  %i.gx = getelementptr i8, ptr %.02435.i.i, i64 24
  %i.gy = load i32, ptr %i.gx, align 8            ; 2 uses
  %i.gz = icmp ult i32 %.1123.i, %i.gy
  br i1 %i.gz, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph.i.i
  %i.ha = icmp ugt i32 %.1123.i, %i.gy
  br i1 %i.ha, label %.thread124.i, label %__pr_tree_search.exit.i.preheader

bb.bh:                                            ; preds = %.lr.ph.i.i
  %i.hb = getelementptr i8, ptr %.02435.i.i, i64 16
  %.024.i.i = load ptr, ptr %i.hb, align 8        ; 2 uses
  %.not.i.i = icmp eq ptr %.024.i.i, null
  br i1 %.not.i.i, label %__pr_tree_search.exit.i.preheader, label %.lr.ph.i.i.backedge

.thread124.i:                                     ; preds = %bb.bg
  %i.hc = getelementptr i8, ptr %.02435.i.i, i64 8
  %.024.i126.i = load ptr, ptr %i.hc, align 8     ; 2 uses
  %.not.i127.i = icmp eq ptr %.024.i126.i, null
  br i1 %.not.i127.i, label %bb.bi, label %.lr.ph.i.i.backedge

.lr.ph.i.i.backedge:                              ; preds = %.thread124.i, %bb.bh
  %.02435.i.i.be = phi ptr [ %.024.i126.i, %.thread124.i ], [ %.024.i.i, %bb.bh ]
  br label %.lr.ph.i.i, !llvm.loop !53

bb.bi:                                            ; preds = %.thread124.i
  %i.hd = tail call ptr @rb_next(ptr noundef nonnull %.02435.i.i) #9
  br label %__pr_tree_search.exit.i.preheader

__pr_tree_search.exit.i.preheader:                ; preds = %bb.bh, %bb.bg, %bb.bi, %.thread.i
  %.077.i.ph = phi ptr [ null, %.thread.i ], [ %i.hd, %bb.bi ], [ %.02435.i.i, %bb.bg ], [ %.02435.i.i, %bb.bh ]
  br label %__pr_tree_search.exit.i

__pr_tree_search.exit.i:                          ; preds = %__pr_tree_search.exit.i.preheader, %bb.bk
  %i.he = phi i32 [ %i.hh, %bb.bk ], [ %.promoted, %__pr_tree_search.exit.i.preheader ] ; 3 uses
  %.077.i = phi ptr [ %i.hi, %bb.bk ], [ %.077.i.ph, %__pr_tree_search.exit.i.preheader ] ; 5 uses
  %.not106.i = icmp eq ptr %.077.i, null
  br i1 %.not106.i, label %get_rsvd.exit, label %bb.bj

bb.bj:                                            ; preds = %__pr_tree_search.exit.i
  %i.hf = getelementptr i8, ptr %.077.i, i64 24
  %i.hg = load i32, ptr %i.hf, align 8
  %.not107.i = icmp ugt i32 %i.hg, %.180122.i
  br i1 %.not107.i, label %get_rsvd.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.hh = add i32 %i.he, -1                       ; 3 uses
  store i32 %i.hh, ptr %8, align 8
  %i.hi = tail call ptr @rb_next(ptr noundef nonnull %.077.i) #9 ; 2 uses
  tail call void @rb_erase(ptr noundef nonnull %.077.i, ptr noundef %i.ex) #9
  %i.hj = load ptr, ptr @ext4_pending_cachep, align 8
  tail call void @kmem_cache_free(ptr noundef %i.hj, ptr noundef nonnull %.077.i) #9
  %.not108.i = icmp eq ptr %i.hi, null
  br i1 %.not108.i, label %get_rsvd.exit, label %__pr_tree_search.exit.i, !llvm.loop !54

get_rsvd.exit:                                    ; preds = %__pr_tree_search.exit.i, %bb.bj, %bb.bk, %bb.am, %bb.be, %bb.bf, %thread-pre-split.i
  %.0.i212 = phi i32 [ 0, %thread-pre-split.i ], [ %.pre287, %bb.am ], [ %.promoted, %bb.bf ], [ %.promoted, %bb.be ], [ %i.hh, %bb.bk ], [ %i.he, %bb.bj ], [ %i.he, %__pr_tree_search.exit.i ]
  store i32 %.0.i212, ptr %4, align 4
  br label %.critedge169

.critedge169:                                     ; preds = %bb.ah, %bb.ai, %bb.ac, %bb.ad, %bb.i, %bb.j, %bb.d, %.thread231, %bb.s, %.critedge.thread, %get_rsvd.exit, %bb.v, %__es_tree_search.exit.thread222, %__es_tree_search.exit
  %.2 = phi i32 [ 0, %__es_tree_search.exit ], [ 0, %__es_tree_search.exit.thread222 ], [ 0, %.critedge.thread ], [ 0, %bb.s ], [ 0, %bb.d ], [ %.0.ph, %.thread231 ], [ -22, %bb.i ], [ 0, %bb.v ], [ 0, %get_rsvd.exit ], [ -22, %bb.ac ], [ -22, %bb.ah ], [ -22, %bb.j ], [ -22, %bb.ad ], [ -22, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  ret i32 %.2
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -12, 1) i32 @__es_insert_extent(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) unnamed_addr #3 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 624        ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not143 = icmp eq ptr %i.b, null
  br i1 %.not143, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 24
  %i.d = getelementptr i8, ptr %1, i64 32         ; 3 uses
  %i.e = getelementptr i8, ptr %1, i64 28         ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.an
  %i.f = phi ptr [ %i.b, %.lr.ph ], [ %i.dl, %bb.an ] ; 33 uses
  %.050144 = phi ptr [ %i.a, %.lr.ph ], [ %.151, %bb.an ] ; 2 uses
  %i.g = load i32, ptr %i.c, align 8              ; 5 uses
  %i.h = getelementptr i8, ptr %i.f, i64 24
  %i.i = load i32, ptr %i.h, align 8              ; 5 uses
  %i.j = icmp ult i32 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %bb.u

bb.c:                                             ; preds = %bb.b
  %.val24.i = load i64, ptr %i.d, align 8         ; 6 uses
  %i.k = getelementptr i8, ptr %i.f, i64 32
  %.val.i = load i64, ptr %i.k, align 8           ; 4 uses
  %i.l = xor i64 %.val.i, %.val24.i
  %i.m = and i64 %i.l, 8646911284551352320
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %bb.d, label %ext4_es_can_be_merged.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr %i.e, align 4              ; 2 uses
  %3 = zext i32 %i.n to i64                       ; 3 uses
  %i.o = getelementptr i8, ptr %i.f, i64 28
  %i.p = load i32, ptr %i.o, align 4              ; 3 uses
  %4 = zext i32 %i.p to i64
  %5 = add nuw nsw i64 %4, %3
  %i.q = icmp samesign ugt i64 %5, 4294967295
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %i.n, i32 noundef %i.p, i32 noundef -1) #12 ; 0 uses
  tail call void asm sideeffect "1473: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1473b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1473) #10, !srcloc !58
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.2, i32 602, i32 2305, i64 16) #10, !srcloc !59
  tail call void asm sideeffect "1474: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1474b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1474) #10, !srcloc !60
  %.pre150 = load ptr, ptr %.050144, align 8
  br label %ext4_es_can_be_merged.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.s = zext i32 %i.g to i64
  %i.t = add nuw nsw i64 %3, %i.s
  %i.u = zext i32 %i.i to i64
  %.not19.i = icmp eq i64 %i.t, %i.u
  br i1 %.not19.i, label %bb.g, label %ext4_es_can_be_merged.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.v = and i64 %.val24.i, 1729382256910270464
  %or.cond.i = icmp eq i64 %i.v, 0
  br i1 %or.cond.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = and i64 %.val24.i, 576460752303423487
  %i.x = add nuw nsw i64 %i.w, %3
  %i.y = and i64 %.val.i, 576460752303423487
  %i.z = icmp ne i64 %i.x, %i.y
  %i.aa = and i64 %.val24.i, 4611686018427387904
  %.not22.i = icmp eq i64 %i.aa, 0
  %or.cond34.i = and i1 %.not22.i, %i.z
  br i1 %or.cond34.i, label %ext4_es_can_be_merged.exit, label %ext4_es_can_be_merged.exit.thread98

bb.i:                                             ; preds = %bb.g
  %.old.i = and i64 %.val24.i, 4611686018427387904
  %.not22.old.i = icmp eq i64 %.old.i, 0
  br i1 %.not22.old.i, label %ext4_es_can_be_merged.exit, label %ext4_es_can_be_merged.exit.thread98

ext4_es_can_be_merged.exit:                       ; preds = %bb.h, %bb.i
  %i.ab = and i64 %.val24.i, 2305843009213693952
  %.not58 = icmp eq i64 %i.ab, 0
  br i1 %.not58, label %ext4_es_can_be_merged.exit.thread, label %ext4_es_can_be_merged.exit.thread98

ext4_es_can_be_merged.exit.thread98:              ; preds = %bb.h, %bb.i, %ext4_es_can_be_merged.exit
  %i.ac = getelementptr i8, ptr %i.f, i64 24      ; 2 uses
  %i.ad = getelementptr i8, ptr %i.f, i64 32      ; 3 uses
  %i.ae = getelementptr i8, ptr %i.f, i64 28      ; 2 uses
  store i32 %i.g, ptr %i.ac, align 8
  %i.af = load i32, ptr %i.e, align 4
  %i.ag = add i32 %i.p, %i.af
  store i32 %i.ag, ptr %i.ae, align 4
  %i.ah = and i64 %.val.i, 1729382256910270464
  %or.cond = icmp eq i64 %i.ah, 0
  br i1 %or.cond, label %bb.k, label %bb.j

bb.j:                                             ; preds = %ext4_es_can_be_merged.exit.thread98
  %i.ai = load i64, ptr %i.d, align 8
  %i.aj = and i64 %i.ai, 576460752303423487
  %i.ak = and i64 %.val.i, -576460752303423488
  %i.al = or disjoint i64 %i.aj, %i.ak
  store i64 %i.al, ptr %i.ad, align 8
  br label %bb.k

bb.k:                                             ; preds = %ext4_es_can_be_merged.exit.thread98, %bb.j
  %i.am = tail call ptr @rb_prev(ptr noundef nonnull %i.f) #9 ; 5 uses
  %.not.i64 = icmp eq ptr %i.am, null
  br i1 %.not.i64, label %ext4_es_try_to_merge_left.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr i8, ptr %i.am, i64 32     ; 2 uses
  %.val24.i.i = load i64, ptr %i.an, align 8      ; 7 uses
  %.val.i.i = load i64, ptr %i.ad, align 8        ; 2 uses
  %i.ao = xor i64 %.val.i.i, %.val24.i.i
  %i.ap = and i64 %i.ao, 8646911284551352320
  %.not.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i, label %bb.m, label %ext4_es_try_to_merge_left.exit

bb.m:                                             ; preds = %bb.l
  %i.aq = getelementptr i8, ptr %i.am, i64 28     ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4            ; 3 uses
  %6 = zext i32 %i.ar to i64                      ; 3 uses
  %i.as = load i32, ptr %i.ae, align 4            ; 3 uses
  %7 = zext i32 %i.as to i64
  %8 = add nuw nsw i64 %7, %6
  %i.at = icmp samesign ugt i64 %8, 4294967295
  br i1 %i.at, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.au = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %i.ar, i32 noundef %i.as, i32 noundef -1) #12 ; 0 uses
  tail call void asm sideeffect "1473: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1473b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1473) #10, !srcloc !58
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.2, i32 602, i32 2305, i64 16) #10, !srcloc !59
  tail call void asm sideeffect "1474: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1474b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1474) #10, !srcloc !60
  br label %ext4_es_try_to_merge_left.exit

bb.o:                                             ; preds = %bb.m
  %i.av = getelementptr i8, ptr %i.am, i64 24
  %i.aw = load i32, ptr %i.av, align 8
  %i.ax = zext i32 %i.aw to i64
  %i.ay = add nuw nsw i64 %i.ax, %6
  %i.az = load i32, ptr %i.ac, align 8
  %i.ba = zext i32 %i.az to i64
  %.not19.i.i = icmp eq i64 %i.ay, %i.ba
  br i1 %.not19.i.i, label %bb.p, label %ext4_es_try_to_merge_left.exit

bb.p:                                             ; preds = %bb.o
  %i.bb = and i64 %.val24.i.i, 1729382256910270464
  %or.cond.i.i = icmp eq i64 %i.bb, 0
  br i1 %or.cond.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bc = and i64 %.val24.i.i, 576460752303423487
  %i.bd = add nuw nsw i64 %i.bc, %6
  %i.be = and i64 %.val.i.i, 576460752303423487
  %i.bf = icmp ne i64 %i.bd, %i.be
  %i.bg = and i64 %.val24.i.i, 4611686018427387904
  %.not22.i.i = icmp eq i64 %i.bg, 0
  %or.cond34.i.i = and i1 %.not22.i.i, %i.bf
  br i1 %or.cond34.i.i, label %ext4_es_can_be_merged.exit.i, label %ext4_es_can_be_merged.exit.thread29.i

bb.r:                                             ; preds = %bb.p
  %.old.i.i = and i64 %.val24.i.i, 4611686018427387904
  %.not22.old.i.i = icmp eq i64 %.old.i.i, 0
  br i1 %.not22.old.i.i, label %ext4_es_can_be_merged.exit.i, label %ext4_es_can_be_merged.exit.thread29.i

ext4_es_can_be_merged.exit.i:                     ; preds = %bb.r, %bb.q
  %i.bh = and i64 %.val24.i.i, 2305843009213693952
  %.not24.i = icmp eq i64 %i.bh, 0
  br i1 %.not24.i, label %ext4_es_try_to_merge_left.exit, label %ext4_es_can_be_merged.exit.thread29.i

ext4_es_can_be_merged.exit.thread29.i:            ; preds = %ext4_es_can_be_merged.exit.i, %bb.r, %bb.q
  %i.bi = add i32 %i.as, %i.ar
  store i32 %i.bi, ptr %i.aq, align 4
  %.val.i66 = load i64, ptr %i.ad, align 8
  %.not25.i = icmp sgt i64 %.val.i66, -1
  br i1 %.not25.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %ext4_es_can_be_merged.exit.thread29.i
  %i.bj = or i64 %.val24.i.i, -9223372036854775808
  store i64 %i.bj, ptr %i.an, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %ext4_es_can_be_merged.exit.thread29.i
  tail call void @rb_erase(ptr noundef nonnull %i.f, ptr noundef %i.a) #9
  tail call fastcc void @ext4_es_free_extent(ptr noundef %0, ptr noundef nonnull %i.f) #11, !srcloc !61
  br label %ext4_es_try_to_merge_left.exit

ext4_es_can_be_merged.exit.thread:                ; preds = %bb.f, %bb.c, %bb.e, %ext4_es_can_be_merged.exit
  %i.bk = phi ptr [ %i.f, %bb.f ], [ %i.f, %bb.c ], [ %.pre150, %bb.e ], [ %i.f, %ext4_es_can_be_merged.exit ]
  %i.bl = getelementptr i8, ptr %i.bk, i64 16
  br label %bb.an

bb.u:                                             ; preds = %bb.b
  %i.bm = getelementptr i8, ptr %i.f, i64 28
  %.val61 = load i32, ptr %i.bm, align 4          ; 4 uses
  %i.bn = add i32 %.val61, %i.i                   ; 2 uses
  %i.bo = icmp ult i32 %i.bn, %i.i
  br i1 %i.bo, label %bb.v, label %ext4_es_end.exit, !prof !20

bb.v:                                             ; preds = %bb.u
  tail call void asm sideeffect "1462: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1462b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1462) #10, !srcloc !24
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.2, i32 236, i32 0, i64 16) #10, !srcloc !25
  unreachable

ext4_es_end.exit:                                 ; preds = %bb.u
  %i.bp = add i32 %i.bn, -1
  %i.bq = icmp ugt i32 %i.g, %i.bp
  br i1 %i.bq, label %bb.w, label %bb.am

bb.w:                                             ; preds = %ext4_es_end.exit
  %i.br = getelementptr i8, ptr %i.f, i64 32
  %.val24.i67 = load i64, ptr %i.br, align 8      ; 6 uses
  %.val.i68 = load i64, ptr %i.d, align 8         ; 2 uses
  %i.bs = xor i64 %.val.i68, %.val24.i67
  %i.bt = and i64 %i.bs, 8646911284551352320
  %.not.i69 = icmp eq i64 %i.bt, 0
  br i1 %.not.i69, label %bb.x, label %ext4_es_can_be_merged.exit78.thread

bb.x:                                             ; preds = %bb.w
  %9 = zext i32 %.val61 to i64                    ; 3 uses
  %i.bu = load i32, ptr %i.e, align 4             ; 3 uses
  %10 = zext i32 %i.bu to i64
  %11 = add nuw nsw i64 %10, %9
  %i.bv = icmp samesign ugt i64 %11, 4294967295
  br i1 %i.bv, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bw = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %.val61, i32 noundef %i.bu, i32 noundef -1) #12 ; 0 uses
  tail call void asm sideeffect "1473: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1473b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1473) #10, !srcloc !58
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.2, i32 602, i32 2305, i64 16) #10, !srcloc !59
  tail call void asm sideeffect "1474: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1474b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1474) #10, !srcloc !60
  %.pre = load ptr, ptr %.050144, align 8
  br label %ext4_es_can_be_merged.exit78.thread

bb.z:                                             ; preds = %bb.x
  %i.bx = zext i32 %i.i to i64
  %i.by = add nuw nsw i64 %9, %i.bx
  %i.bz = zext i32 %i.g to i64
  %.not19.i71 = icmp eq i64 %i.by, %i.bz
  br i1 %.not19.i71, label %bb.aa, label %ext4_es_can_be_merged.exit78.thread

bb.aa:                                            ; preds = %bb.z
  %i.ca = and i64 %.val24.i67, 1729382256910270464
  %or.cond.i72 = icmp eq i64 %i.ca, 0
  br i1 %or.cond.i72, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cb = and i64 %.val24.i67, 576460752303423487
  %i.cc = add nuw nsw i64 %i.cb, %9
  %i.cd = and i64 %.val.i68, 576460752303423487
  %i.ce = icmp ne i64 %i.cc, %i.cd
  %i.cf = and i64 %.val24.i67, 4611686018427387904
  %.not22.i73 = icmp eq i64 %i.cf, 0
  %or.cond34.i74 = and i1 %.not22.i73, %i.ce
  br i1 %or.cond34.i74, label %ext4_es_can_be_merged.exit78, label %ext4_es_can_be_merged.exit78.thread104

bb.ac:                                            ; preds = %bb.aa
  %.old.i76 = and i64 %.val24.i67, 4611686018427387904
  %.not22.old.i77 = icmp eq i64 %.old.i76, 0
  br i1 %.not22.old.i77, label %ext4_es_can_be_merged.exit78, label %ext4_es_can_be_merged.exit78.thread104

ext4_es_can_be_merged.exit78:                     ; preds = %bb.ab, %bb.ac
  %i.cg = and i64 %.val24.i67, 2305843009213693952
  %.not57 = icmp eq i64 %i.cg, 0
  br i1 %.not57, label %ext4_es_can_be_merged.exit78.thread, label %ext4_es_can_be_merged.exit78.thread104

ext4_es_can_be_merged.exit78.thread104:           ; preds = %bb.ab, %bb.ac, %ext4_es_can_be_merged.exit78
  %i.ch = getelementptr i8, ptr %i.f, i64 24
  %i.ci = getelementptr i8, ptr %i.f, i64 28      ; 3 uses
  %i.cj = getelementptr i8, ptr %i.f, i64 32      ; 2 uses
  %i.ck = add i32 %.val61, %i.bu
  store i32 %i.ck, ptr %i.ci, align 4
  %i.cl = tail call ptr @rb_next(ptr noundef nonnull %i.f) #9 ; 6 uses
  %.not.i79 = icmp eq ptr %i.cl, null
  br i1 %.not.i79, label %ext4_es_try_to_merge_left.exit, label %bb.ad

bb.ad:                                            ; preds = %ext4_es_can_be_merged.exit78.thread104
  %.val24.i.i80 = load i64, ptr %i.cj, align 8    ; 7 uses
  %i.cm = getelementptr i8, ptr %i.cl, i64 32     ; 2 uses
  %.val.i.i81 = load i64, ptr %i.cm, align 8      ; 2 uses
  %i.cn = xor i64 %.val.i.i81, %.val24.i.i80
  %i.co = and i64 %i.cn, 8646911284551352320
  %.not.i.i82 = icmp eq i64 %i.co, 0
  br i1 %.not.i.i82, label %bb.ae, label %ext4_es_try_to_merge_left.exit

bb.ae:                                            ; preds = %bb.ad
  %i.cp = load i32, ptr %i.ci, align 4            ; 3 uses
  %12 = zext i32 %i.cp to i64                     ; 3 uses
  %i.cq = getelementptr i8, ptr %i.cl, i64 28
  %i.cr = load i32, ptr %i.cq, align 4            ; 3 uses
  %13 = zext i32 %i.cr to i64
  %14 = add nuw nsw i64 %13, %12
  %i.cs = icmp samesign ugt i64 %14, 4294967295
  br i1 %i.cs, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ct = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %i.cp, i32 noundef %i.cr, i32 noundef -1) #12 ; 0 uses
  tail call void asm sideeffect "1473: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1473b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1473) #10, !srcloc !58
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.2, i32 602, i32 2305, i64 16) #10, !srcloc !59
  tail call void asm sideeffect "1474: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1474b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1474) #10, !srcloc !60
  br label %ext4_es_try_to_merge_left.exit

bb.ag:                                            ; preds = %bb.ae
  %i.cu = load i32, ptr %i.ch, align 8
  %i.cv = zext i32 %i.cu to i64
  %i.cw = add nuw nsw i64 %i.cv, %12
  %i.cx = getelementptr i8, ptr %i.cl, i64 24
  %i.cy = load i32, ptr %i.cx, align 8
  %i.cz = zext i32 %i.cy to i64
  %.not19.i.i83 = icmp eq i64 %i.cw, %i.cz
  br i1 %.not19.i.i83, label %bb.ah, label %ext4_es_try_to_merge_left.exit

bb.ah:                                            ; preds = %bb.ag
  %i.da = and i64 %.val24.i.i80, 1729382256910270464
  %or.cond.i.i84 = icmp eq i64 %i.da, 0
  br i1 %or.cond.i.i84, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.db = and i64 %.val24.i.i80, 576460752303423487
  %i.dc = add nuw nsw i64 %i.db, %12
  %i.dd = and i64 %.val.i.i81, 576460752303423487
  %i.de = icmp ne i64 %i.dc, %i.dd
  %i.df = and i64 %.val24.i.i80, 4611686018427387904
  %.not22.i.i85 = icmp eq i64 %i.df, 0
  %or.cond34.i.i86 = and i1 %.not22.i.i85, %i.de
  br i1 %or.cond34.i.i86, label %ext4_es_can_be_merged.exit.i89, label %ext4_es_can_be_merged.exit.thread26.i

bb.aj:                                            ; preds = %bb.ah
  %.old.i.i90 = and i64 %.val24.i.i80, 4611686018427387904
  %.not22.old.i.i91 = icmp eq i64 %.old.i.i90, 0
  br i1 %.not22.old.i.i91, label %ext4_es_can_be_merged.exit.i89, label %ext4_es_can_be_merged.exit.thread26.i

ext4_es_can_be_merged.exit.i89:                   ; preds = %bb.aj, %bb.ai
  %i.dg = and i64 %.val24.i.i80, 2305843009213693952
  %.not21.i = icmp eq i64 %i.dg, 0
  br i1 %.not21.i, label %ext4_es_try_to_merge_left.exit, label %ext4_es_can_be_merged.exit.thread26.i

ext4_es_can_be_merged.exit.thread26.i:            ; preds = %ext4_es_can_be_merged.exit.i89, %bb.aj, %bb.ai
  %i.dh = add i32 %i.cr, %i.cp
  store i32 %i.dh, ptr %i.ci, align 4
  %.val.i87 = load i64, ptr %i.cm, align 8
  %.not22.i88 = icmp sgt i64 %.val.i87, -1
  br i1 %.not22.i88, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %ext4_es_can_be_merged.exit.thread26.i
  %i.di = or i64 %.val24.i.i80, -9223372036854775808
  store i64 %i.di, ptr %i.cj, align 8
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %ext4_es_can_be_merged.exit.thread26.i
  tail call void @rb_erase(ptr noundef nonnull %i.cl, ptr noundef %i.a) #9
  tail call fastcc void @ext4_es_free_extent(ptr noundef %0, ptr noundef %i.cl) #11, !srcloc !62
  br label %ext4_es_try_to_merge_left.exit

ext4_es_can_be_merged.exit78.thread:              ; preds = %bb.z, %bb.w, %bb.y, %ext4_es_can_be_merged.exit78
  %i.dj = phi ptr [ %i.f, %bb.z ], [ %i.f, %bb.w ], [ %.pre, %bb.y ], [ %i.f, %ext4_es_can_be_merged.exit78 ]
  %i.dk = getelementptr i8, ptr %i.dj, i64 8
  br label %bb.an

bb.am:                                            ; preds = %ext4_es_end.exit
  tail call void asm sideeffect "1475: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1475b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1475) #10, !srcloc !63
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.2, i32 878, i32 0, i64 16) #10, !srcloc !64
  unreachable

bb.an:                                            ; preds = %ext4_es_can_be_merged.exit78.thread, %ext4_es_can_be_merged.exit.thread
  %.151 = phi ptr [ %i.bl, %ext4_es_can_be_merged.exit.thread ], [ %i.dk, %ext4_es_can_be_merged.exit78.thread ] ; 3 uses
  %i.dl = load ptr, ptr %.151, align 8            ; 2 uses
  %.not = icmp eq ptr %i.dl, null
  br i1 %.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !57

._crit_edge.loopexit:                             ; preds = %bb.an
  %i.dm = ptrtoint ptr %i.f to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.050.lcssa = phi ptr [ %i.a, %bb.a ], [ %.151, %._crit_edge.loopexit ]
  %.049.lcssa = phi i64 [ 0, %bb.a ], [ %i.dm, %._crit_edge.loopexit ]
  %.not55 = icmp eq ptr %2, null
  br i1 %.not55, label %bb.ao, label %.thread

bb.ao:                                            ; preds = %._crit_edge
  %i.dn = load ptr, ptr @ext4_es_cachep, align 8
  %i.do = tail call noalias align 8 ptr @kmem_cache_alloc_noprof(ptr noundef %i.dn, i32 noundef 2080) #9 ; 2 uses
  %.not56 = icmp eq ptr %i.do, null
  br i1 %.not56, label %bb.au, label %.thread

.thread:                                          ; preds = %._crit_edge, %bb.ao
  %.048109 = phi ptr [ %i.do, %bb.ao ], [ %2, %._crit_edge ] ; 8 uses
  %i.dp = getelementptr i8, ptr %1, i64 24
  %i.dq = load i32, ptr %i.dp, align 8
  %i.dr = getelementptr i8, ptr %1, i64 28
  %i.ds = load i32, ptr %i.dr, align 4
  %i.dt = getelementptr i8, ptr %1, i64 32
  %i.du = load i64, ptr %i.dt, align 8            ; 2 uses
  %i.dv = getelementptr i8, ptr %.048109, i64 24
  store i32 %i.dq, ptr %i.dv, align 8
  %i.dw = getelementptr i8, ptr %.048109, i64 28
  store i32 %i.ds, ptr %i.dw, align 4
  %i.dx = getelementptr i8, ptr %.048109, i64 32
  store i64 %i.du, ptr %i.dx, align 8
  %i.dy = and i64 %i.du, 2305843009213693952
  %.not.i.not.i = icmp eq i64 %i.dy, 0
  br i1 %.not.i.not.i, label %bb.ap, label %ext4_es_init_extent.exit

bb.ap:                                            ; preds = %.thread
  %i.dz = getelementptr i8, ptr %0, i64 668       ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4            ; 2 uses
  %i.eb = add i32 %i.ea, 1
  store i32 %i.eb, ptr %i.dz, align 4
  %.not.i93 = icmp eq i32 %i.ea, 0
  br i1 %.not.i93, label %bb.aq, label %ext4_es_list_add.exit.i

bb.aq:                                            ; preds = %bb.ap
  %i.ec = getelementptr i8, ptr %0, i64 40
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = getelementptr i8, ptr %i.ed, i64 864
  %.val.i.i94 = load ptr, ptr %i.ee, align 32     ; 4 uses
  %i.ef = getelementptr i8, ptr %0, i64 648       ; 7 uses
  %i.eg = load volatile ptr, ptr %i.ef, align 8
  %.not.i17.i = icmp eq ptr %i.eg, %i.ef
  br i1 %.not.i17.i, label %bb.ar, label %ext4_es_list_add.exit.i

bb.ar:                                            ; preds = %bb.aq
  %i.eh = getelementptr i8, ptr %.val.i.i94, i64 1536 ; 2 uses
  tail call void @_raw_spin_lock(ptr noundef %i.eh) #9
  %i.ei = load volatile ptr, ptr %i.ef, align 8
  %.not12.i.i = icmp eq ptr %i.ei, %i.ef
  br i1 %.not12.i.i, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ej = getelementptr i8, ptr %.val.i.i94, i64 1304
  %i.ek = getelementptr i8, ptr %.val.i.i94, i64 1312 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8            ; 2 uses
  store ptr %i.ef, ptr %i.ek, align 8
  store ptr %i.ej, ptr %i.ef, align 8
  %i.em = getelementptr i8, ptr %0, i64 656
  store ptr %i.el, ptr %i.em, align 8
  store volatile ptr %i.ef, ptr %i.el, align 8
  %i.en = getelementptr i8, ptr %.val.i.i94, i64 1320 ; 2 uses
  %i.eo = load i64, ptr %i.en, align 8
  %i.ep = add i64 %i.eo, 1
  store i64 %i.ep, ptr %i.en, align 8
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  tail call void @_raw_spin_unlock(ptr noundef %i.eh) #9
  br label %ext4_es_list_add.exit.i

ext4_es_list_add.exit.i:                          ; preds = %bb.at, %bb.aq, %bb.ap
  %i.eq = getelementptr i8, ptr %0, i64 40
  %i.er = load ptr, ptr %i.eq, align 8
  %i.es = getelementptr i8, ptr %i.er, i64 864
  %.val15.i = load ptr, ptr %i.es, align 32
  %i.et = getelementptr i8, ptr %.val15.i, i64 1472
  %i.eu = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %i.et, i64 noundef 1, i32 noundef %i.eu) #9
  br label %ext4_es_init_extent.exit

ext4_es_init_extent.exit:                         ; preds = %.thread, %ext4_es_list_add.exit.i
  %i.ev = getelementptr i8, ptr %0, i64 664       ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 8
  %i.ex = add i32 %i.ew, 1
  store i32 %i.ex, ptr %i.ev, align 8
  %i.ey = getelementptr i8, ptr %0, i64 40
  %i.ez = load ptr, ptr %i.ey, align 8
  %i.fa = getelementptr i8, ptr %i.ez, i64 864
  %.val.i92 = load ptr, ptr %i.fa, align 32
  %i.fb = getelementptr i8, ptr %.val.i92, i64 1432
  %i.fc = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %i.fb, i64 noundef 1, i32 noundef %i.fc) #9
  store i64 %.049.lcssa, ptr %.048109, align 8
  %i.fd = getelementptr i8, ptr %.048109, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.fd, i8 0, i64 16, i1 false)
  store ptr %.048109, ptr %.050.lcssa, align 8
  tail call void @rb_insert_color(ptr noundef nonnull %.048109, ptr noundef %i.a) #9
  br label %ext4_es_try_to_merge_left.exit

ext4_es_try_to_merge_left.exit:                   ; preds = %bb.al, %ext4_es_can_be_merged.exit.i89, %bb.ag, %bb.af, %bb.ad, %ext4_es_can_be_merged.exit78.thread104, %bb.t, %ext4_es_can_be_merged.exit.i, %bb.o, %bb.n, %bb.l, %bb.k, %ext4_es_init_extent.exit
  %.1 = phi ptr [ %.048109, %ext4_es_init_extent.exit ], [ %i.f, %bb.o ], [ %i.f, %bb.k ], [ %i.am, %bb.t ], [ %i.f, %ext4_es_can_be_merged.exit.i ], [ %i.f, %bb.n ], [ %i.f, %bb.l ], [ %i.f, %ext4_es_can_be_merged.exit78.thread104 ], [ %i.f, %bb.ad ], [ %i.f, %bb.af ], [ %i.f, %bb.ag ], [ %i.f, %ext4_es_can_be_merged.exit.i89 ], [ %i.f, %bb.al ]
  %i.fe = getelementptr i8, ptr %0, i64 632
  store ptr %.1, ptr %i.fe, align 8
  br label %bb.au

bb.au:                                            ; preds = %bb.ao, %ext4_es_try_to_merge_left.exit
  %.0 = phi i32 [ 0, %ext4_es_try_to_merge_left.exit ], [ -12, %bb.ao ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_write_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ext4_da_update_reserve_space(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @ext4_es_cache_extent(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #3 align 16 prefalign(16) {
bb.a:
  %5 = alloca %struct.extent_status, align 8      ; 10 uses
  %6 = alloca %struct.extent_status, align 8      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, i8 0, i64 24, i1 false), !annotation !27
  %i.a = add i32 %1, -1
  %i.b = add i32 %i.a, %2                         ; 4 uses
  %i.c = getelementptr i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 864
  %.val = load ptr, ptr %i.e, align 32
  %i.f = getelementptr i8, ptr %.val, i64 168
  %i.g = load i16, ptr %i.f, align 8
  %i.h = and i16 %i.g, 32
  %.not = icmp eq i16 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 %1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i32 %2, ptr %i.j, align 4
  %i.k = zext i32 %4 to i64                       ; 2 uses
end_hunk_0
