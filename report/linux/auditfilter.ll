Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/auditfilter?download=true
inline.NumInlined: 144
inline.NumDeleted: 73
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@audit_rule_change:bb.a
  br label %bb.af

bb.ac:                                            ; preds = %bb.a
  %i.bd = tail call fastcc ptr @audit_data_to_entry(ptr noundef %2, i64 noundef %3) #17, !srcloc !30 ; 5 uses
  %i.be = icmp ugt ptr %i.bd, inttoptr (i64 -4096 to ptr)
  br i1 %i.be, label %bb.ad, label %.thread

bb.ad:                                            ; preds = %bb.ac
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = trunc i64 %i.bf to i32
  br label %bb.am

.thread:                                          ; preds = %bb.ac
  %i.bh = tail call i32 @audit_del_rule(ptr noundef %i.bd) #17 ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bd, i64 32
  %.not = icmp eq i32 %i.bh, 0
  %i.bj = zext i1 %.not to i32
  tail call fastcc void @audit_log_rule_change(ptr noundef @.str.1, ptr noundef %i.bi, i32 noundef %i.bj) #17, !srcloc !31
  br label %bb.ag

bb.ae:                                            ; preds = %bb.a
  tail call void asm sideeffect "896: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 896b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 896) #18, !srcloc !32
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, ptr @.str.3, i32 1156, i32 2305, i64 16) #18, !srcloc !33
  tail call void asm sideeffect "897: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 897b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 897) #18, !srcloc !34
  br label %bb.am

.thread60:                                        ; preds = %bb.n, %bb.u, %bb.o, %bb.r, %bb.q
  %.036.i.ph = phi i32 [ %i.ab, %bb.q ], [ %i.ab, %bb.r ], [ -17, %bb.o ], [ %i.ac, %bb.u ], [ -17, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call fastcc void @audit_log_rule_change(ptr noundef @.str, ptr noundef %i.f, i32 noundef 0) #17, !srcloc !35
  br label %bb.ag

bb.af:                                            ; preds = %bb.aa, %bb.ab
  call void @mutex_unlock(ptr noundef @audit_filter_mutex) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call fastcc void @audit_log_rule_change(ptr noundef @.str, ptr noundef %i.f, i32 noundef 1) #17, !srcloc !35
  br label %bb.am

bb.ag:                                            ; preds = %.thread60, %.thread
  %.02536 = phi i32 [ %i.bh, %.thread ], [ %.036.i.ph, %.thread60 ]
  %.02635 = phi ptr [ %i.bd, %.thread ], [ %i.b, %.thread60 ] ; 6 uses
  %i.bk = getelementptr i8, ptr %.02635, i64 360
  %i.bl = load ptr, ptr %i.bk, align 8            ; 2 uses
  %.not29 = icmp eq ptr %i.bl, null
  br i1 %.not29, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @audit_remove_mark(ptr noundef nonnull %i.bl) #13
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.bm = getelementptr i8, ptr %.02635, i64 344
  %i.bn = load ptr, ptr %i.bm, align 8            ; 2 uses
  %.not.i30 = icmp eq ptr %i.bn, null
  br i1 %.not.i30, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @audit_put_watch(ptr noundef nonnull %i.bn) #13
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.bo = getelementptr i8, ptr %.02635, i64 320  ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8            ; 2 uses
  %.not12.i = icmp eq ptr %i.bp, null
  br i1 %.not12.i, label %audit_free_rule.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ak
  %i.bq = getelementptr i8, ptr %.02635, i64 308  ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4            ; 2 uses
  %.not14.i = icmp eq i32 %i.br, 0
  br i1 %.not14.i, label %audit_free_rule.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %audit_free_lsm_field.exit.i
  %i.bs = phi i32 [ %i.cb, %audit_free_lsm_field.exit.i ], [ %i.br, %.preheader.i ]
  %.013.i = phi i32 [ %i.cc, %audit_free_lsm_field.exit.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.bt = load ptr, ptr %i.bo, align 8
  %i.bu = sext i32 %.013.i to i64
  %i.bv = getelementptr [32 x i8], ptr %i.bt, i64 %i.bu ; 3 uses
  %i.bw = load i32, ptr %i.bv, align 8
  switch i32 %i.bw, label %audit_free_lsm_field.exit.i [
    i32 13, label %bb.al
    i32 14, label %bb.al
    i32 15, label %bb.al
    i32 16, label %bb.al
    i32 17, label %bb.al
    i32 19, label %bb.al
    i32 20, label %bb.al
    i32 21, label %bb.al
    i32 22, label %bb.al
    i32 23, label %bb.al
  ]

bb.al:                                            ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.bx = getelementptr i8, ptr %i.bv, i64 8
  %i.by = load ptr, ptr %i.bx, align 8
  call void @kfree(ptr noundef %i.by) #13
  %i.bz = getelementptr i8, ptr %i.bv, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8
  call void @security_audit_rule_free(ptr noundef %i.ca) #13
  %.pre.i31 = load i32, ptr %i.bq, align 4
  br label %audit_free_lsm_field.exit.i

audit_free_lsm_field.exit.i:                      ; preds = %bb.al, %.lr.ph.i
  %i.cb = phi i32 [ %i.bs, %.lr.ph.i ], [ %.pre.i31, %bb.al ] ; 2 uses
  %i.cc = add nuw i32 %.013.i, 1                  ; 2 uses
  %i.cd = icmp ult i32 %i.cc, %i.cb
  br i1 %i.cd, label %.lr.ph.i, label %.loopexit.loopexit.i, !llvm.loop !0

.loopexit.loopexit.i:                             ; preds = %audit_free_lsm_field.exit.i
  %.pre15.i = load ptr, ptr %i.bo, align 8
  br label %audit_free_rule.exit

audit_free_rule.exit:                             ; preds = %bb.ak, %.preheader.i, %.loopexit.loopexit.i
  %i.ce = phi ptr [ %.pre15.i, %.loopexit.loopexit.i ], [ %i.bp, %.preheader.i ], [ null, %bb.ak ]
  call void @kfree(ptr noundef %i.ce) #13
  %i.cf = getelementptr i8, ptr %.02635, i64 312
  %i.cg = load ptr, ptr %i.cf, align 8
  call void @kfree(ptr noundef %i.cg) #13
  call void @kfree(ptr noundef %.02635) #13
  br label %bb.am

bb.am:                                            ; preds = %bb.af, %audit_free_rule.exit, %bb.ae, %bb.ad, %bb.c
  %.0 = phi i32 [ -22, %bb.ae ], [ %i.e, %bb.c ], [ %i.bg, %bb.ad ], [ 0, %bb.af ], [ %.02536, %audit_free_rule.exit ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc ptr @audit_data_to_entry(ptr nofree noundef readonly captures(address) %0, i64 noundef %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = add i64 %1, -1040
  %i.b = load i32, ptr %0, align 4
  %i.c = and i32 %i.b, -17                        ; 2 uses
  switch i32 %i.c, label %audit_init_entry.exit.thread.i [
    i32 2, label %bb.b
    i32 4, label %bb.c
    i32 7, label %bb.c
    i32 1, label %bb.c
    i32 0, label %bb.c
    i32 5, label %bb.c
    i32 6, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.7) #16 ; 0 uses
  br label %audit_init_entry.exit.thread.i

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.e = getelementptr i8, ptr %0, i64 4          ; 2 uses
  %i.f = load i32, ptr %i.e, align 4
  switch i32 %i.f, label %audit_init_entry.exit.thread.i [
    i32 1, label %bb.d
    i32 0, label %bb.e
    i32 2, label %bb.e
  ], !prof !39

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.8) #16 ; 0 uses
  br label %audit_init_entry.exit.thread.i

bb.e:                                             ; preds = %bb.c, %bb.c
  %i.h = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.i = load i32, ptr %i.h, align 4              ; 2 uses
  %i.j = icmp ugt i32 %i.i, 64
  br i1 %i.j, label %audit_init_entry.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 72), align 8
  %i.l = tail call noalias align 8 dereferenceable_or_null(408) ptr @__kmalloc_cache_noprof(ptr noundef %i.k, i32 noundef 3520, i64 noundef range(i64 0, -8589933550) 408) #15 ; 10 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %audit_init_entry.exit.thread.i, label %_kzalloc_noprof.exit.i.i, !prof !17

_kzalloc_noprof.exit.i.i:                         ; preds = %bb.f
  %i.m = shl nuw nsw i32 %i.i, 5
  %i.n = zext nneg i32 %i.m to i64
  %i.o = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 0, -8589933550) %i.n, i32 noundef 3520) #14 ; 2 uses
  %.not21.i.i = icmp eq ptr %i.o, null
  br i1 %.not21.i.i, label %bb.g, label %.preheader56.i, !prof !17

bb.g:                                             ; preds = %_kzalloc_noprof.exit.i.i
  tail call void @kfree(ptr noundef nonnull %i.l) #13
  br label %audit_init_entry.exit.thread.i

.preheader56.i:                                   ; preds = %_kzalloc_noprof.exit.i.i
  %i.p = getelementptr i8, ptr %i.l, i64 320
  store ptr %i.o, ptr %i.p, align 8
  %i.q = load i32, ptr %0, align 4
  %i.r = and i32 %i.q, 16
  %i.s = getelementptr i8, ptr %i.l, i64 36
  store i32 %i.r, ptr %i.s, align 4
  %i.t = getelementptr i8, ptr %i.l, i64 40
  store i32 %i.c, ptr %i.t, align 8
  %i.u = load i32, ptr %i.e, align 4
  %i.v = getelementptr i8, ptr %i.l, i64 44
  store i32 %i.u, ptr %i.v, align 4
  %i.w = load i32, ptr %i.h, align 4
  %i.x = getelementptr i8, ptr %i.l, i64 308
  store i32 %i.w, ptr %i.x, align 4
  %i.y = getelementptr i8, ptr %0, i64 12
  %i.z = getelementptr i8, ptr %i.l, i64 48       ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(256) %i.z, ptr noundef readonly align 4 dereferenceable(256) %i.y, i64 256, i1 false)
  %i.aa = getelementptr i8, ptr %i.l, i64 300     ; 3 uses
  %.pre67.i = load i32, ptr %i.aa, align 4
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.i, %.preheader56.i
  %2 = phi i32 [ %.pre67.i, %.preheader56.i ], [ %3, %.loopexit.i ] ; 3 uses
  %indvars.iv63.i = phi i64 [ 0, %.preheader56.i ], [ %indvars.iv.next64.i, %.loopexit.i ] ; 3 uses
  %i.ab = trunc nuw nsw i64 %indvars.iv63.i to i32
  %i.ac = lshr exact i32 -2147483648, %i.ab       ; 2 uses
  %i.ad = and i32 %i.ac, %2
  %.not52.i = icmp eq i32 %i.ad, 0
  br i1 %.not52.i, label %.loopexit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = xor i32 %i.ac, -1
  %i.af = and i32 %2, %i.ae                       ; 2 uses
  store i32 %i.af, ptr %i.aa, align 4
  %i.ag = getelementptr [8 x i8], ptr @classes, i64 %indvars.iv63.i
  %i.ah = load ptr, ptr %i.ag, align 8            ; 5 uses
  %.not53.i = icmp eq ptr %i.ah, null
  br i1 %.not53.i, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.i, %.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.preheader.i ], [ 0, %bb.i ] ; 6 uses
  %i.ai = getelementptr [4 x i8], ptr %i.ah, i64 %indvars.iv.i
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = getelementptr [4 x i8], ptr %i.z, i64 %indvars.iv.i ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8
  %i.am = or i32 %i.al, %i.aj
  store i32 %i.am, ptr %i.ak, align 8
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.an = getelementptr [4 x i8], ptr %i.ah, i64 %indvars.iv.next.i
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = getelementptr [4 x i8], ptr %i.z, i64 %indvars.iv.next.i ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = or i32 %i.aq, %i.ao
  store i32 %i.ar, ptr %i.ap, align 4
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.as = getelementptr [4 x i8], ptr %i.ah, i64 %indvars.iv.next.i.1
  %i.at = load i32, ptr %i.as, align 4
  %i.au = getelementptr [4 x i8], ptr %i.z, i64 %indvars.iv.next.i.1 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8
  %i.aw = or i32 %i.av, %i.at
  store i32 %i.aw, ptr %i.au, align 8
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.ax = getelementptr [4 x i8], ptr %i.ah, i64 %indvars.iv.next.i.2
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = getelementptr [4 x i8], ptr %i.z, i64 %indvars.iv.next.i.2 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = or i32 %i.ba, %i.ay
  store i32 %i.bb, ptr %i.az, align 4
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, 64
  br i1 %exitcond.not.i.3, label %.loopexit.loopexit.i, label %.preheader.i, !llvm.loop !36

.loopexit.loopexit.i:                             ; preds = %.preheader.i
  %.pre.i = load i32, ptr %i.aa, align 4
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %bb.i, %bb.h
  %3 = phi i32 [ %.pre.i, %.loopexit.loopexit.i ], [ %i.af, %bb.i ], [ %2, %bb.h ]
  %indvars.iv.next64.i = add nuw nsw i64 %indvars.iv63.i, 1 ; 2 uses
  %exitcond66.not.i = icmp eq i64 %indvars.iv.next64.i, 16
  br i1 %exitcond66.not.i, label %audit_to_entry_common.exit, label %bb.h, !llvm.loop !37

audit_init_entry.exit.thread.i:                   ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.044.i = phi i64 [ -22, %bb.a ], [ -22, %bb.b ], [ -22, %bb.d ], [ -22, %bb.c ], [ -22, %bb.e ], [ -12, %bb.g ], [ -12, %bb.f ]
  %i.bc = inttoptr i64 %.044.i to ptr
  br label %audit_to_entry_common.exit

audit_to_entry_common.exit:                       ; preds = %.loopexit.i, %audit_init_entry.exit.thread.i
  %.043.i = phi ptr [ %i.bc, %audit_init_entry.exit.thread.i ], [ %i.l, %.loopexit.i ] ; 18 uses
  %i.bd = icmp ugt ptr %.043.i, inttoptr (i64 -4096 to ptr)
  br i1 %i.bd, label %bb.bk, label %bb.j

bb.j:                                             ; preds = %audit_to_entry_common.exit
  %i.be = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4
  %.not294 = icmp eq i32 %i.bf, 0
  br i1 %.not294, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.bg = getelementptr i8, ptr %0, i64 1040
  %i.bh = getelementptr i8, ptr %.043.i, i64 32   ; 5 uses
  %i.bi = getelementptr i8, ptr %.043.i, i64 320  ; 4 uses
  %i.bj = getelementptr i8, ptr %0, i64 780
  %i.bk = getelementptr i8, ptr %0, i64 268
  %i.bl = getelementptr i8, ptr %0, i64 524
  %.phi.trans.insert.i = getelementptr i8, ptr %.043.i, i64 40 ; 2 uses
  %i.bm = getelementptr i8, ptr %.043.i, i64 360  ; 3 uses
  %i.bn = getelementptr i8, ptr %.043.i, i64 304  ; 10 uses
  %i.bo = getelementptr i8, ptr %.043.i, i64 312  ; 3 uses
  %i.bp = getelementptr i8, ptr %.043.i, i64 336  ; 2 uses
  %i.bq = getelementptr i8, ptr %.043.i, i64 344  ; 2 uses
  %i.br = getelementptr i8, ptr %.043.i, i64 352  ; 2 uses
  %i.bs = getelementptr i8, ptr %.043.i, i64 328
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.bc
  %.0122293 = phi i32 [ 0, %.lr.ph ], [ %i.ha, %bb.bc ] ; 2 uses
  %.0213292 = phi i64 [ %i.a, %.lr.ph ], [ %.1214, %bb.bc ] ; 15 uses
  %.0215291 = phi ptr [ %i.bg, %.lr.ph ], [ %.1216.a, %bb.bc ] ; 20 uses
  %i.bt = load ptr, ptr %i.bi, align 8
  %i.bu = sext i32 %.0122293 to i64               ; 4 uses
  %i.bv = getelementptr [32 x i8], ptr %i.bt, i64 %i.bu ; 20 uses
  %i.bw = getelementptr [4 x i8], ptr %i.bj, i64 %i.bu
  %i.bx = load i32, ptr %i.bw, align 4            ; 2 uses
  %i.by = tail call i32 @llvm.fshl.i32(i32 %i.bx, i32 %i.bx, i32 5)
  switch i32 %i.by, label %audit_to_op.exit [
    i32 8, label %bb.l
    i32 6, label %.critedge.fold.split.i
    i32 1, label %.critedge.fold.split7.i
    i32 9, label %.critedge.fold.split8.i
    i32 2, label %.critedge.fold.split9.i
    i32 4, label %.critedge.fold.split10.i
    i32 10, label %.critedge.fold.split11.i
    i32 12, label %.critedge.fold.split12.i
  ]

.critedge.fold.split.i:                           ; preds = %bb.k
  br label %bb.l

.critedge.fold.split7.i:                          ; preds = %bb.k
  br label %bb.l

.critedge.fold.split8.i:                          ; preds = %bb.k
  br label %bb.l

.critedge.fold.split9.i:                          ; preds = %bb.k
  br label %bb.l

.critedge.fold.split10.i:                         ; preds = %bb.k
  br label %bb.l

.critedge.fold.split11.i:                         ; preds = %bb.k
  br label %bb.l

.critedge.fold.split12.i:                         ; preds = %bb.k
  br label %bb.l

audit_to_op.exit:                                 ; preds = %bb.k
  %i.bz = getelementptr i8, ptr %i.bv, i64 24
  store i32 8, ptr %i.bz, align 8
  br label %audit_field_valid.exit.thread

bb.l:                                             ; preds = %bb.k, %.critedge.fold.split8.i, %.critedge.fold.split11.i, %.critedge.fold.split.i, %.critedge.fold.split9.i, %.critedge.fold.split7.i, %.critedge.fold.split10.i, %.critedge.fold.split12.i
  %.0.lcssa.i.ph = phi i32 [ 7, %.critedge.fold.split12.i ], [ 5, %.critedge.fold.split10.i ], [ 2, %.critedge.fold.split7.i ], [ 4, %.critedge.fold.split9.i ], [ 1, %.critedge.fold.split.i ], [ 6, %.critedge.fold.split11.i ], [ 3, %.critedge.fold.split8.i ], [ 0, %bb.k ]
  %i.ca = getelementptr i8, ptr %i.bv, i64 24     ; 7 uses
  store i32 %.0.lcssa.i.ph, ptr %i.ca, align 8
  %i.cb = getelementptr [4 x i8], ptr %i.bk, i64 %i.bu
  %i.cc = load i32, ptr %i.cb, align 4            ; 3 uses
  store i32 %i.cc, ptr %i.bv, align 8
  %i.cd = getelementptr [4 x i8], ptr %i.bl, i64 %i.bu
  %i.ce = load i32, ptr %i.cd, align 4            ; 2 uses
  %i.cf = icmp eq i32 %i.cc, 9
  %i.cg = icmp eq i32 %i.ce, -1
  %or.cond = select i1 %i.cf, i1 %i.cg, i1 false
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 24, ptr %i.bv, align 8
  %i.ch = load i32, ptr %i.bh, align 8
  %i.ci = or i32 %i.ch, 1
  store i32 %i.ci, ptr %i.bh, align 8
  %.pre = load i32, ptr %i.bv, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cj = phi i32 [ %.pre, %bb.m ], [ %i.cc, %bb.l ] ; 4 uses
  %.0121 = phi i32 [ 0, %bb.m ], [ %i.ce, %bb.l ] ; 29 uses
  %.pre.i.a = load i32, ptr %.phi.trans.insert.i, align 8 ; 4 uses
  switch i32 %i.cj, label %._crit_edge.i [
    i32 12, label %bb.o
    i32 26, label %bb.p
    i32 106, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  switch i32 %.pre.i.a, label %audit_field_valid.exit.thread [
    i32 5, label %.thread38.i
    i32 0, label %.thread38.i
  ]

bb.p:                                             ; preds = %bb.n
  %.not.i = icmp eq i32 %.pre.i.a, 6
  br i1 %.not.i, label %.thread39.i, label %audit_field_valid.exit.thread

bb.q:                                             ; preds = %bb.n
  %i.ck = and i32 %.pre.i.a, -2
  %switch = icmp eq i32 %i.ck, 6
  br i1 %switch, label %audit_field_valid.exit.thread, label %.thread39.i

._crit_edge.i:                                    ; preds = %bb.n
  %cond.i = icmp eq i32 %.pre.i.a, 6
  br i1 %cond.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %._crit_edge.i
  switch i32 %i.cj, label %audit_field_valid.exit.thread [
    i32 26, label %bb.s
    i32 210, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r, %bb.r, %._crit_edge.i
  switch i32 %i.cj, label %audit_field_valid.exit.thread [
    i32 200, label %bb.t
    i32 201, label %bb.t
    i32 202, label %bb.t
    i32 203, label %bb.t
    i32 10, label %bb.t
    i32 101, label %bb.t
    i32 1, label %.thread38.i
    i32 2, label %.thread38.i
    i32 3, label %.thread38.i
    i32 4, label %.thread38.i
    i32 9, label %.thread38.i
    i32 109, label %.thread38.i
    i32 5, label %.thread38.i
    i32 6, label %.thread38.i
    i32 7, label %.thread38.i
    i32 8, label %.thread38.i
    i32 110, label %.thread38.i
    i32 0, label %.thread38.i
    i32 12, label %.thread38.i
    i32 18, label %.thread38.i
    i32 100, label %.thread38.i
    i32 103, label %.thread38.i
    i32 104, label %.thread38.i
    i32 102, label %.thread38.i
    i32 25, label %.thread38.i
    i32 16, label %.thread38.i
    i32 17, label %.thread38.i
    i32 22, label %.thread38.i
    i32 23, label %.thread38.i
    i32 113, label %.thread38.i
    i32 13, label %.thread39.i
    i32 14, label %.thread39.i
    i32 15, label %.thread39.i
    i32 19, label %.thread39.i
    i32 20, label %.thread39.i
    i32 21, label %.thread39.i
    i32 105, label %.thread39.i
    i32 107, label %.thread39.i
    i32 210, label %.thread39.i
    i32 24, label %.thread39.i
    i32 11, label %.thread39.i
    i32 26, label %.thread39.i
    i32 106, label %.thread39.i
    i32 108, label %.thread39.i
    i32 111, label %.thread39.i
    i32 112, label %.thread39.i
  ]

.thread38.i:                                      ; preds = %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.o, %bb.o
  %i.cl = load i32, ptr %i.ca, align 8
  %i.cm = and i32 %i.cl, -2
  %switch.i = icmp eq i32 %i.cm, 2
  br i1 %switch.i, label %audit_field_valid.exit.thread, label %bb.t

.thread39.i:                                      ; preds = %bb.q, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.p
  %i.cn = load i32, ptr %i.ca, align 8
  %switch31.i = icmp ult i32 %i.cn, 2
end_hunk_0
