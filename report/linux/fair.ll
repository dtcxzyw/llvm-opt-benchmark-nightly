Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/fair?download=true
inline.NumInlined: 1077
inline.NumDeleted: 400
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@reweight_entity:bb.a

bb.v:                                             ; preds = %rescale_entity.exit
  br i1 %.1, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.eg = getelementptr i8, ptr %1, i64 136       ; 2 uses
  %i.eh = load i64, ptr %i.eg, align 8
  %i.ei = add i64 %i.eh, %.0
  store i64 %i.ei, ptr %i.eg, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ej = getelementptr i8, ptr %1, i64 40        ; 2 uses
  %i.ek = load i64, ptr %i.ej, align 8
  %i.el = add i64 %i.ek, %.0
  store i64 %i.el, ptr %i.ej, align 8
  store i8 0, ptr %i.cw, align 2
  %i.em = load i64, ptr %i.cs, align 64
  %i.en = sub i64 %.0, %i.em
  %i.eo = getelementptr i8, ptr %1, i64 120
  store i64 %i.en, ptr %i.eo, align 8
  %i.ep = load i64, ptr %1, align 64
  %i.eq = load i64, ptr %0, align 16
  %i.er = add i64 %i.eq, %i.ep
  store i64 %i.er, ptr %0, align 16
  %i.es = getelementptr i8, ptr %0, i64 8
  store i32 0, ptr %i.es, align 8
  br i1 %i.c, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call fastcc void @__enqueue_entity(ptr noundef %0, ptr noundef %1) #29, !srcloc !311
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.et = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.eu = load i32, ptr %i.et, align 16
  %i.ev = add i32 %i.eu, 1
  store i32 %i.ev, ptr %i.et, align 16
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %rescale_entity.exit
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @__enqueue_entity(ptr noundef %0, ptr noundef %1) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @sched_feat_keys, i64 160), i1 false) #28
          to label %static_branch_PARANOID_AVG.exit.i [label %bb.b], !srcloc !30

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 56         ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %i.c = getelementptr i8, ptr %1, i64 120
  %i.d = getelementptr i8, ptr %0, i64 32         ; 5 uses
  %i.e = getelementptr i8, ptr %0, i64 40         ; 4 uses
  %i.f = getelementptr i8, ptr %0, i64 72
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.loopexit.i.i.backedge, %bb.b
  %i.g = load i64, ptr %1, align 64               ; 2 uses
  %.val.i.i = load i32, ptr %i.a, align 8         ; 4 uses
  %.not.i.i.i = icmp eq i32 %.val.i.i, 0
  %i.h = zext nneg i32 %.val.i.i to i64
  %i.i = lshr i64 %i.g, %i.h
  %i.j = tail call i64 @llvm.umax.i64(i64 %i.i, i64 2)
  %.0.i.i.i = select i1 %.not.i.i.i, i64 %i.g, i64 %i.j ; 2 uses
  %.val23.i.i = load i64, ptr %i.b, align 16
  %.val24.i.i = load i64, ptr %i.c, align 8
  %i.k = sub i64 %.val24.i.i, %.val23.i.i         ; 3 uses
  %i.l = tail call i64 @llvm.abs.i64(i64 %i.k, i1 false)
  %i.m = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.l, i64 %.0.i.i.i) ; 2 uses
  %i.n = extractvalue { i64, i1 } %i.m, 1
  %i.o = extractvalue { i64, i1 } %i.m, 0         ; 3 uses
  %.lobit.i.i = lshr i64 %i.k, 63
  %i.p = add nuw i64 %.lobit.i.i, 9223372036854775807
  %i.q = icmp ugt i64 %i.o, %i.p
  %i.r = or i1 %i.n, %i.q
  br i1 %i.r, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.loopexit.i.i
  %i.s = icmp slt i64 %i.k, 0
  %i.t = sub i64 0, %i.o
  %i.u = select i1 %i.s, i64 %i.t, i64 %i.o
  %i.v = load i64, ptr %i.d, align 32
  %i.w = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.v, i64 %i.u) ; 2 uses
  %i.x = extractvalue { i64, i1 } %i.w, 1
  br i1 %i.x, label %bb.d, label %sum_w_vruntime_add_paranoid.exit.i

bb.d:                                             ; preds = %bb.c, %.loopexit.i.i
  %i.y = icmp ugt i32 %.val.i.i, 9
  br i1 %i.y, label %bb.e, label %bb.f, !prof !22

bb.e:                                             ; preds = %bb.d
  tail call void asm sideeffect "1249: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1249b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1249) #28, !srcloc !314
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 723, i32 0, i64 16) #28, !srcloc !315
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.z = add nuw nsw i32 %.val.i.i, 1
  store i32 %i.z, ptr %i.a, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef align 32 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.aa = load ptr, ptr %i.f, align 8             ; 2 uses
  %.not30.i.i = icmp eq ptr %i.aa, null
  br i1 %.not30.i.i, label %.loopexit.i.i.backedge, label %.lr.ph.i.i

.loopexit.i.i.backedge:                           ; preds = %__sum_w_vruntime_add.exit.i.i, %bb.f
  br label %.loopexit.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %__sum_w_vruntime_add.exit.i.i
  %.031.i.i = phi ptr [ %i.ao, %__sum_w_vruntime_add.exit.i.i ], [ %i.aa, %bb.f ] ; 3 uses
  %i.ab = getelementptr i8, ptr %.031.i.i, i64 -16
  %.val25.i.i = load i64, ptr %i.ab, align 64     ; 2 uses
  %i.ac = getelementptr i8, ptr %.031.i.i, i64 104
  %.val26.i.i = load i64, ptr %i.ac, align 8
  %.val.i.i.i = load i32, ptr %i.a, align 8       ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %.val.i.i.i, 0
  %i.ad = zext nneg i32 %.val.i.i.i to i64
  %i.ae = lshr i64 %.val25.i.i, %i.ad
  %i.af = tail call i64 @llvm.umax.i64(i64 %i.ae, i64 2)
  %.0.i.i.i5.i = select i1 %.not.i.i.i.i, i64 %.val25.i.i, i64 %i.af ; 2 uses
  %.val14.i.i.i = load i64, ptr %i.b, align 16
  %i.ag = sub i64 %.val26.i.i, %.val14.i.i.i
  %i.ah = mul i64 %.0.i.i.i5.i, %i.ag             ; 3 uses
  %i.ai = ashr i64 %i.ah, 63
  %i.aj = ashr i64 %i.ah, 62
  %.not.i27.i.i = icmp eq i64 %i.ai, %i.aj
  br i1 %.not.i27.i.i, label %__sum_w_vruntime_add.exit.i.i, label %bb.g, !prof !29

bb.g:                                             ; preds = %.lr.ph.i.i
  tail call void asm sideeffect "1247: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1247b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1247) #28, !srcloc !316
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 692, i32 2307, i64 16) #28, !srcloc !317
  tail call void asm sideeffect "1248: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1248b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1248) #28, !srcloc !318
  br label %__sum_w_vruntime_add.exit.i.i

__sum_w_vruntime_add.exit.i.i:                    ; preds = %bb.g, %.lr.ph.i.i
  %i.ak = load i64, ptr %i.d, align 32
  %i.al = add i64 %i.ak, %i.ah
  store i64 %i.al, ptr %i.d, align 32
  %i.am = load i64, ptr %i.e, align 8
  %i.an = add i64 %i.am, %.0.i.i.i5.i
  store i64 %i.an, ptr %i.e, align 8
  %i.ao = tail call ptr @rb_next(ptr noundef nonnull %.031.i.i) #26 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i, label %.loopexit.i.i.backedge, label %.lr.ph.i.i, !llvm.loop !312

sum_w_vruntime_add_paranoid.exit.i:               ; preds = %bb.c
  %i.ap = extractvalue { i64, i1 } %i.w, 0
  store i64 %i.ap, ptr %i.d, align 32
  %i.aq = load i64, ptr %i.e, align 8
  %i.ar = add i64 %i.aq, %.0.i.i.i
  store i64 %i.ar, ptr %i.e, align 8
  br label %sum_w_vruntime_add.exit

static_branch_PARANOID_AVG.exit.i:                ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 64            ; 2 uses
  %i.as = getelementptr i8, ptr %1, i64 120
  %.val4.i = load i64, ptr %i.as, align 8
  %i.at = getelementptr i8, ptr %0, i64 56
  %.val.i6.i = load i32, ptr %i.at, align 8       ; 2 uses
  %.not.i.i7.i = icmp eq i32 %.val.i6.i, 0
  %i.au = zext nneg i32 %.val.i6.i to i64
  %i.av = lshr i64 %.val.i, %i.au
  %i.aw = tail call i64 @llvm.umax.i64(i64 %i.av, i64 2)
  %.0.i.i8.i = select i1 %.not.i.i7.i, i64 %.val.i, i64 %i.aw ; 2 uses
  %i.ax = getelementptr i8, ptr %0, i64 48
  %.val14.i.i = load i64, ptr %i.ax, align 16
  %i.ay = sub i64 %.val4.i, %.val14.i.i
  %i.az = mul i64 %.0.i.i8.i, %i.ay               ; 3 uses
  %i.ba = ashr i64 %i.az, 63
  %i.bb = ashr i64 %i.az, 62
  %.not.i9.i = icmp eq i64 %i.ba, %i.bb
  br i1 %.not.i9.i, label %__sum_w_vruntime_add.exit.i, label %bb.h, !prof !29

bb.h:                                             ; preds = %static_branch_PARANOID_AVG.exit.i
  tail call void asm sideeffect "1247: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1247b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1247) #28, !srcloc !316
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 692, i32 2307, i64 16) #28, !srcloc !317
  tail call void asm sideeffect "1248: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1248b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1248) #28, !srcloc !318
  br label %__sum_w_vruntime_add.exit.i

__sum_w_vruntime_add.exit.i:                      ; preds = %bb.h, %static_branch_PARANOID_AVG.exit.i
  %i.bc = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 32
  %i.be = add i64 %i.bd, %i.az
  store i64 %i.be, ptr %i.bc, align 32
  %i.bf = getelementptr i8, ptr %0, i64 40        ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = add i64 %i.bg, %.0.i.i8.i
  store i64 %i.bh, ptr %i.bf, align 8
  br label %sum_w_vruntime_add.exit

sum_w_vruntime_add.exit:                          ; preds = %sum_w_vruntime_add_paranoid.exit.i, %__sum_w_vruntime_add.exit.i
  %i.bi = getelementptr i8, ptr %1, i64 120
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = getelementptr i8, ptr %1, i64 48
  store i64 %i.bj, ptr %i.bk, align 16
  %i.bl = getelementptr i8, ptr %1, i64 144
  %i.bm = load i64, ptr %i.bl, align 16
  %i.bn = getelementptr i8, ptr %1, i64 56
  store i64 %i.bm, ptr %i.bn, align 8
  %i.bo = getelementptr i8, ptr %0, i64 64        ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8            ; 2 uses
  %.not.i13 = icmp eq ptr %i.bp, null
  br i1 %.not.i13, label %min_vruntime_cb_propagate.exit.thread, label %.lr.ph

min_vruntime_cb_propagate.exit.thread:            ; preds = %sum_w_vruntime_add.exit
  %2 = getelementptr i8, ptr %1, i64 16           ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef align 16 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  store ptr %2, ptr %i.bo, align 8
  br label %bb.v

.lr.ph:                                           ; preds = %sum_w_vruntime_add.exit
  %i.bq = getelementptr i8, ptr %1, i64 40
  %.val = load i64, ptr %i.bq, align 8
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.i
  %i.br = phi ptr [ %i.bp, %.lr.ph ], [ %i.bv, %bb.i ] ; 5 uses
  %.0.i14 = phi i1 [ true, %.lr.ph ], [ %.1.i, %bb.i ]
  %i.bs = getelementptr i8, ptr %i.br, i64 24
  %.val8 = load i64, ptr %i.bs, align 8
  %i.bt = sub i64 %.val, %.val8
  %i.bu = icmp slt i64 %i.bt, 0                   ; 2 uses
  %.120.i.v = select i1 %i.bu, i64 16, i64 8      ; 2 uses
  %.120.i = getelementptr i8, ptr %i.br, i64 %.120.i.v
  %.1.i = select i1 %i.bu, i1 %.0.i14, i1 false   ; 2 uses
  %i.bv = load ptr, ptr %.120.i, align 8          ; 2 uses
  %.not.i = icmp eq ptr %i.bv, null
  br i1 %.not.i, label %.lr.ph.i.preheader, label %bb.i, !llvm.loop !313

.lr.ph.i.preheader:                               ; preds = %bb.i
  %.120.i.le = getelementptr i8, ptr %i.br, i64 %.120.i.v
  %3 = getelementptr i8, ptr %1, i64 16           ; 4 uses
  %i.bw = ptrtoint ptr %i.br to i64
  store i64 %i.bw, ptr %3, align 16
  %i.bx = getelementptr i8, ptr %1, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.bx, i8 0, i64 16, i1 false)
  store ptr %3, ptr %.120.i.le, align 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %min_vruntime_update.exit.thread.i
  %.0711.i = phi ptr [ %i.dr, %min_vruntime_update.exit.thread.i ], [ %i.br, %.lr.ph.i.preheader ] ; 8 uses
  %i.by = getelementptr i8, ptr %.0711.i, i64 32  ; 4 uses
  %i.bz = load i64, ptr %i.by, align 16
  %i.ca = getelementptr i8, ptr %.0711.i, i64 40  ; 4 uses
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = getelementptr i8, ptr %.0711.i, i64 48  ; 4 uses
  %i.cd = load i64, ptr %i.cc, align 64
  %i.ce = getelementptr i8, ptr %.0711.i, i64 104
  %i.cf = load i64, ptr %i.ce, align 8            ; 4 uses
  store i64 %i.cf, ptr %i.by, align 16
  %i.cg = getelementptr i8, ptr %.0711.i, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8            ; 4 uses
  %.not.i.i.i9 = icmp eq ptr %i.ch, null          ; 3 uses
  br i1 %.not.i.i.i9, label %__min_vruntime_update.exit.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  %i.ci = getelementptr i8, ptr %i.ch, i64 32
  %i.cj = load i64, ptr %i.ci, align 16           ; 3 uses
  %i.ck = sub i64 %i.cf, %i.cj
  %i.cl = icmp sgt i64 %i.ck, 0
  br i1 %i.cl, label %bb.k, label %__min_vruntime_update.exit.i.i

bb.k:                                             ; preds = %bb.j
  store i64 %i.cj, ptr %i.by, align 16
  br label %__min_vruntime_update.exit.i.i

__min_vruntime_update.exit.i.i:                   ; preds = %bb.k, %bb.j, %.lr.ph.i
  %i.cm = phi i64 [ %i.cf, %.lr.ph.i ], [ %i.cf, %bb.j ], [ %i.cj, %bb.k ] ; 3 uses
  %i.cn = getelementptr i8, ptr %.0711.i, i64 16
  %i.co = load ptr, ptr %i.cn, align 16           ; 4 uses
  %.not.i27.i.i10 = icmp eq ptr %i.co, null       ; 3 uses
  br i1 %.not.i27.i.i10, label %__min_vruntime_update.exit28.i.i, label %bb.l

bb.l:                                             ; preds = %__min_vruntime_update.exit.i.i
  %i.cp = getelementptr i8, ptr %i.co, i64 32
  %i.cq = load i64, ptr %i.cp, align 16           ; 3 uses
  %i.cr = sub i64 %i.cm, %i.cq
  %i.cs = icmp sgt i64 %i.cr, 0
  br i1 %i.cs, label %bb.m, label %__min_vruntime_update.exit28.i.i

bb.m:                                             ; preds = %bb.l
  store i64 %i.cq, ptr %i.by, align 16
  br label %__min_vruntime_update.exit28.i.i

__min_vruntime_update.exit28.i.i:                 ; preds = %bb.m, %bb.l, %__min_vruntime_update.exit.i.i
  %i.ct = phi i64 [ %i.cm, %__min_vruntime_update.exit.i.i ], [ %i.cm, %bb.l ], [ %i.cq, %bb.m ]
  %i.cu = getelementptr i8, ptr %.0711.i, i64 128
  %i.cv = load i64, ptr %i.cu, align 16           ; 8 uses
  store i64 %i.cv, ptr %i.ca, align 8
  br i1 %.not.i.i.i9, label %__min_slice_update.exit.i.i, label %bb.n

bb.n:                                             ; preds = %__min_vruntime_update.exit28.i.i
  %i.cw = getelementptr i8, ptr %i.ch, i64 40
  %i.cx = load i64, ptr %i.cw, align 8            ; 3 uses
  %i.cy = icmp ult i64 %i.cx, %i.cv
  br i1 %i.cy, label %bb.o, label %__min_slice_update.exit.i.i

bb.o:                                             ; preds = %bb.n
  store i64 %i.cx, ptr %i.ca, align 8
  br label %__min_slice_update.exit.i.i

__min_slice_update.exit.i.i:                      ; preds = %bb.o, %bb.n, %__min_vruntime_update.exit28.i.i
  %i.cz = phi i64 [ %i.cv, %__min_vruntime_update.exit28.i.i ], [ %i.cv, %bb.n ], [ %i.cx, %bb.o ] ; 3 uses
  br i1 %.not.i27.i.i10, label %__min_slice_update.exit31.i.i, label %bb.p

bb.p:                                             ; preds = %__min_slice_update.exit.i.i
  %i.da = getelementptr i8, ptr %i.co, i64 40
  %i.db = load i64, ptr %i.da, align 8            ; 3 uses
  %i.dc = icmp ult i64 %i.db, %i.cz
  br i1 %i.dc, label %bb.q, label %__min_slice_update.exit31.i.i

bb.q:                                             ; preds = %bb.p
  store i64 %i.db, ptr %i.ca, align 8
  br label %__min_slice_update.exit31.i.i

__min_slice_update.exit31.i.i:                    ; preds = %bb.q, %bb.p, %__min_slice_update.exit.i.i
  %i.dd = phi i64 [ %i.cz, %__min_slice_update.exit.i.i ], [ %i.cz, %bb.p ], [ %i.db, %bb.q ]
  store i64 %i.cv, ptr %i.cc, align 64
  br i1 %.not.i.i.i9, label %__max_slice_update.exit.i.i, label %bb.r

bb.r:                                             ; preds = %__min_slice_update.exit31.i.i
  %i.de = getelementptr i8, ptr %i.ch, i64 48
  %i.df = load i64, ptr %i.de, align 64           ; 3 uses
  %i.dg = icmp ugt i64 %i.df, %i.cv
  br i1 %i.dg, label %bb.s, label %__max_slice_update.exit.i.i

bb.s:                                             ; preds = %bb.r
  store i64 %i.df, ptr %i.cc, align 64
  br label %__max_slice_update.exit.i.i

__max_slice_update.exit.i.i:                      ; preds = %bb.s, %bb.r, %__min_slice_update.exit31.i.i
  %i.dh = phi i64 [ %i.cv, %__min_slice_update.exit31.i.i ], [ %i.cv, %bb.r ], [ %i.df, %bb.s ] ; 3 uses
  br i1 %.not.i27.i.i10, label %__max_slice_update.exit34.i.i, label %bb.t

bb.t:                                             ; preds = %__max_slice_update.exit.i.i
  %i.di = getelementptr i8, ptr %i.co, i64 48
  %i.dj = load i64, ptr %i.di, align 64           ; 3 uses
  %i.dk = icmp ugt i64 %i.dj, %i.dh
  br i1 %i.dk, label %bb.u, label %__max_slice_update.exit34.i.i

bb.u:                                             ; preds = %bb.t
  store i64 %i.dj, ptr %i.cc, align 64
  br label %__max_slice_update.exit34.i.i

__max_slice_update.exit34.i.i:                    ; preds = %bb.u, %bb.t, %__max_slice_update.exit.i.i
  %i.dl = phi i64 [ %i.dh, %__max_slice_update.exit.i.i ], [ %i.dh, %bb.t ], [ %i.dj, %bb.u ]
  %i.dm = icmp eq i64 %i.ct, %i.bz
  %i.dn = icmp eq i64 %i.dd, %i.cb
  %or.cond.i.i = select i1 %i.dm, i1 %i.dn, i1 false
  %i.do = icmp eq i64 %i.dl, %i.cd
  %or.cond.i = select i1 %or.cond.i.i, i1 %i.do, i1 false
  br i1 %or.cond.i, label %min_vruntime_cb_propagate.exit, label %min_vruntime_update.exit.thread.i

min_vruntime_update.exit.thread.i:                ; preds = %__max_slice_update.exit34.i.i
  %i.dp = load i64, ptr %.0711.i, align 16
  %i.dq = and i64 %i.dp, -4                       ; 2 uses
  %i.dr = inttoptr i64 %i.dq to ptr
  %.not.i11 = icmp eq i64 %i.dq, 0
  br i1 %.not.i11, label %min_vruntime_cb_propagate.exit, label %.lr.ph.i

min_vruntime_cb_propagate.exit:                   ; preds = %__max_slice_update.exit34.i.i, %min_vruntime_update.exit.thread.i
  br i1 %.1.i, label %bb.v, label %rb_insert_augmented_cached.exit

bb.v:                                             ; preds = %min_vruntime_cb_propagate.exit.thread, %min_vruntime_cb_propagate.exit
  %4 = phi ptr [ %2, %min_vruntime_cb_propagate.exit.thread ], [ %3, %min_vruntime_cb_propagate.exit ] ; 2 uses
  %i.ds = getelementptr i8, ptr %0, i64 72
  store ptr %4, ptr %i.ds, align 8
  br label %rb_insert_augmented_cached.exit

rb_insert_augmented_cached.exit:                  ; preds = %min_vruntime_cb_propagate.exit, %bb.v
  %5 = phi ptr [ %3, %min_vruntime_cb_propagate.exit ], [ %4, %bb.v ]
  tail call void @__rb_insert_augmented(ptr noundef %5, ptr noundef %i.bo, ptr noundef nonnull @min_vruntime_cb_rotate) #26
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #22

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__rb_insert_augmented(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @call_trace_sched_update_nr_running(ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__delayacct_blkio_start() local_unnamed_addr #11

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @requeue_delayed_entity(ptr noundef %0) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 176
  %.val = load ptr, ptr %i.a, align 16            ; 15 uses
  %i.b = getelementptr i8, ptr %0, i64 89         ; 3 uses
  %i.c = load i8, ptr %i.b, align 1
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !22

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "1463: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1463b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1463) #28, !srcloc !319
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 7779, i32 2307, i64 16) #28, !srcloc !320
  tail call void asm sideeffect "1464: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1464b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1464) #28, !srcloc !321
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr i8, ptr %0, i64 88         ; 2 uses
  %i.e = load i8, ptr %i.d, align 8
  %.not25 = icmp eq i8 %i.e, 0
  br i1 %.not25, label %bb.d, label %bb.e, !prof !22

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "1465: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1465b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1465) #28, !srcloc !322
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 7780, i32 2307, i64 16) #28, !srcloc !323
  tail call void asm sideeffect "1466: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1466b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1466) #28, !srcloc !324
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = getelementptr i8, ptr %.val, i64 80      ; 3 uses
  %i.g = load ptr, ptr %i.f, align 16             ; 7 uses
  %i.h = getelementptr i8, ptr %.val, i64 40
  %i.i = load i64, ptr %i.h, align 8              ; 6 uses
  %.not.i30 = icmp eq ptr %i.g, null              ; 2 uses
  br i1 %.not.i30, label %.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr i8, ptr %i.g, i64 88
  %i.k = load i8, ptr %i.j, align 8
  %.not31.i = icmp eq i8 %i.k, 0                  ; 2 uses
  %.not32.i = icmp eq i64 %i.i, 0
  br i1 %.not32.i, label %bb.j, label %bb.g

.thread.i:                                        ; preds = %bb.e
  %.not3237.i = icmp eq i64 %i.i, 0
  br i1 %.not3237.i, label %avg_vruntime.exit, label %.thread40.i

.thread40.i:                                      ; preds = %.thread.i
  %i.l = getelementptr i8, ptr %.val, i64 32
  %i.m = load i64, ptr %i.l, align 32
  br label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr i8, ptr %.val, i64 32
  %i.o = load i64, ptr %i.n, align 32             ; 2 uses
  br i1 %.not31.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = load i64, ptr %i.g, align 64             ; 2 uses
  %i.q = getelementptr i8, ptr %.val, i64 56
  %.val.i = load i32, ptr %i.q, align 8           ; 2 uses
  %.not.i.i = icmp eq i32 %.val.i, 0
  %i.r = zext nneg i32 %.val.i to i64
  %i.s = lshr i64 %i.p, %i.r
  %i.t = tail call i64 @llvm.umax.i64(i64 %i.s, i64 2)
  %.0.i.i = select i1 %.not.i.i, i64 %i.p, i64 %i.t ; 2 uses
  %i.u = getelementptr i8, ptr %.val, i64 48
  %.val35.i = load i64, ptr %i.u, align 16
  %i.v = getelementptr i8, ptr %i.g, i64 120
  %.0.val.i = load i64, ptr %i.v, align 8
  %i.w = sub i64 %.0.val.i, %.val35.i
  %i.x = mul i64 %.0.i.i, %i.w
  %i.y = add i64 %i.x, %i.o
  %i.z = add i64 %.0.i.i, %i.i
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %.thread40.i
  %.027.i = phi i64 [ %i.z, %bb.h ], [ %i.i, %bb.g ], [ %i.i, %.thread40.i ] ; 2 uses
  %.025.i = phi i64 [ %i.y, %bb.h ], [ %i.o, %bb.g ], [ %i.m, %.thread40.i ] ; 2 uses
  %i.aa = icmp slt i64 %.025.i, 0
  %i.ab = add i64 %.027.i, -1
  %i.ac = select i1 %i.aa, i64 %i.ab, i64 0
  %.1.i = sub i64 %.025.i, %i.ac
  %i.ad = sdiv i64 %.1.i, %.027.i
  br label %avg_vruntime.exit

bb.j:                                             ; preds = %bb.f
  br i1 %.not31.i, label %avg_vruntime.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr i8, ptr %i.g, i64 120
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr i8, ptr %.val, i64 48
  %i.ah = load i64, ptr %i.ag, align 16
  %i.ai = sub i64 %i.af, %i.ah
  br label %avg_vruntime.exit

avg_vruntime.exit:                                ; preds = %.thread.i, %bb.i, %bb.j, %bb.k
  %.026.i = phi i64 [ %i.ad, %bb.i ], [ %i.ai, %bb.k ], [ 0, %bb.j ], [ 0, %.thread.i ] ; 2 uses
  %i.aj = mul i64 %.026.i, %i.i
  %i.ak = getelementptr i8, ptr %.val, i64 32     ; 2 uses
  %i.al = load i64, ptr %i.ak, align 32
  %i.am = sub i64 %i.al, %i.aj
  store i64 %i.am, ptr %i.ak, align 32
  %i.an = getelementptr i8, ptr %.val, i64 48     ; 2 uses
  %i.ao = load i64, ptr %i.an, align 16
  %i.ap = add i64 %i.ao, %.026.i                  ; 3 uses
  store i64 %i.ap, ptr %i.an, align 16
  %i.aq = getelementptr i8, ptr %.val, i64 64
  %.val28 = load ptr, ptr %i.aq, align 64         ; 2 uses
  %.not.i.i.i = icmp eq ptr %.val28, null
  %i.ar = getelementptr i8, ptr %.val28, i64 -16
  %.0.i.i.i31 = select i1 %.not.i.i.i, ptr null, ptr %i.ar ; 2 uses
  br i1 %.not.i30, label %bb.n, label %bb.l

bb.l:                                             ; preds = %avg_vruntime.exit
  %i.as = getelementptr i8, ptr %i.g, i64 88
  %i.at = load i8, ptr %i.as, align 8
  %.not15.i.i = icmp eq i8 %i.at, 0
  br i1 %.not15.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = getelementptr i8, ptr %i.g, i64 144
  %i.av = load i64, ptr %i.au, align 16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %avg_vruntime.exit
  %.0.i.i33 = phi i64 [ %i.av, %bb.m ], [ 0, %bb.l ], [ 0, %avg_vruntime.exit ] ; 2 uses
  %.not16.i.i = icmp eq ptr %.0.i.i.i31, null
  br i1 %.not16.i.i, label %cfs_rq_max_slice.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = getelementptr i8, ptr %.0.i.i.i31, i64 64
  %i.ax = load i64, ptr %i.aw, align 64
  %i.ay = tail call i64 @llvm.umax.i64(i64 %.0.i.i33, i64 %i.ax)
  br label %cfs_rq_max_slice.exit.i

cfs_rq_max_slice.exit.i:                          ; preds = %bb.o, %bb.n
  %.1.i.i = phi i64 [ %i.ay, %bb.o ], [ %.0.i.i33, %bb.n ]
  %i.az = add i64 %.1.i.i, 1000000                ; 2 uses
  %i.ba = getelementptr i8, ptr %0, i64 120       ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8
  %.val30.i = load i64, ptr %0, align 64          ; 2 uses
  %.not.i31.i = icmp eq i64 %.val30.i, 1048576
  br i1 %.not.i31.i, label %entity_lag.exit, label %bb.p, !prof !29

bb.p:                                             ; preds = %cfs_rq_max_slice.exit.i
  %i.bc = shl i64 %i.az, 20
  %i.bd = udiv i64 %i.bc, %.val30.i
  br label %entity_lag.exit

entity_lag.exit:                                  ; preds = %cfs_rq_max_slice.exit.i, %bb.p
  %.0.i32.i = phi i64 [ %i.bd, %bb.p ], [ %i.az, %cfs_rq_max_slice.exit.i ] ; 3 uses
  %i.be = sub i64 0, %.0.i32.i
  %i.bf = sub i64 %i.ap, %i.bb                    ; 2 uses
  %.not.i34 = icmp slt i64 %i.bf, %.0.i32.i
  %i.bg = tail call i64 @llvm.smax.i64(i64 %i.bf, i64 %i.be)
  %i.bh = select i1 %.not.i34, i64 %i.bg, i64 %.0.i32.i ; 2 uses
  %i.bi = load i8, ptr %i.d, align 8
  %.not.i = icmp eq i8 %i.bi, 0
  br i1 %.not.i, label %bb.q, label %bb.r, !prof !22

bb.q:                                             ; preds = %entity_lag.exit
  tail call void asm sideeffect "1255: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1255b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1255) #28, !srcloc !56
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 864, i32 2307, i64 16) #28, !srcloc !57
  tail call void asm sideeffect "1256: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1256b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1256) #28, !srcloc !58
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %entity_lag.exit
  %i.bj = load i8, ptr %i.b, align 1
  %.not34.i = icmp eq i8 %i.bj, 0
  br i1 %.not34.i, label %update_entity_lag.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bk = getelementptr i8, ptr %0, i64 128
  %i.bl = load i64, ptr %i.bk, align 64
  %i.bm = tail call i64 @llvm.smax.i64(i64 %i.bh, i64 %i.bl) ; 2 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @sched_feat_keys, i64 144), i1 true) #28
          to label %bb.t [label %update_entity_lag.exit], !srcloc !30

bb.t:                                             ; preds = %bb.s
  %i.bn = tail call i64 @llvm.smin.i64(i64 %i.bm, i64 0)
end_hunk_0
