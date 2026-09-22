Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/filter?download=true
inline.NumInlined: 1165
inline.NumDeleted: 441
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@sk_skb_adjust_room:bb.a
  br i1 %i.aq, label %____sk_skb_adjust_room.exit, label %bb.i, !prof !20

bb.i:                                             ; preds = %bb.h
  %i.ar = sub nuw nsw i32 %i.d, %i.ap
  %i.as = tail call ptr @__pskb_pull_tail(ptr noundef %i.a, i32 noundef %i.ar) #40
  %.not9.i = icmp eq ptr %i.as, null
  br i1 %.not9.i, label %____sk_skb_adjust_room.exit, label %._crit_edge, !prof !20

._crit_edge:                                      ; preds = %bb.i
  %.pre15 = load i32, ptr %i.an, align 8
  %.pre16 = load i32, ptr %i.ao, align 4
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.g
  %i.at = phi i32 [ %.pre16, %._crit_edge ], [ %.val7, %bb.g ]
  %i.au = phi i32 [ %.pre15, %._crit_edge ], [ %.val6, %bb.g ]
  %i.av = sub i32 %i.au, %i.d                     ; 2 uses
  store i32 %i.av, ptr %i.an, align 8
  %i.aw = icmp ult i32 %i.av, %i.at
  br i1 %i.aw, label %bb.k, label %__skb_pull.exit, !prof !20

bb.k:                                             ; preds = %bb.j
  tail call void asm sideeffect "650: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 650b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 650) #39, !srcloc !40
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.4, ptr nonnull @.str.5, i32 2847, i32 0, i64 16) #39, !srcloc !41
  unreachable

__skb_pull.exit:                                  ; preds = %bb.j
  %i.ax = getelementptr i8, ptr %i.a, i64 208     ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = zext nneg i32 %i.d to i64
  %i.ba = getelementptr i8, ptr %i.ay, i64 %i.az
  store ptr %i.ba, ptr %i.ax, align 8
  br label %bb.l

bb.l:                                             ; preds = %__skb_pull.exit, %skb_cow.exit.thread
  %.027.i = phi i64 [ 0, %__skb_pull.exit ], [ %.0.i.i11, %skb_cow.exit.thread ] ; 5 uses
  %i.bb = getelementptr i8, ptr %i.a, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8            ; 3 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 16
  %i.be = load volatile i16, ptr %i.bd, align 8
  %i.bf = and i16 %i.be, -9
  %i.bg = icmp eq i16 %i.bf, 2
  br i1 %i.bg, label %bb.m, label %____sk_skb_adjust_room.exit

bb.m:                                             ; preds = %bb.l
  %i.bh = getelementptr i8, ptr %i.bc, i64 792
  %i.bi = load volatile i64, ptr %i.bh, align 8
  %i.bj = and i64 %i.bi, 65536
  %.not25.i = icmp eq i64 %i.bj, 0
  br i1 %.not25.i, label %____sk_skb_adjust_room.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = getelementptr i8, ptr %i.bc, i64 1240
  %.val.i = load ptr, ptr %i.bk, align 8          ; 2 uses
  %.not.i9 = icmp eq ptr %.val.i, null
  br i1 %.not.i9, label %____sk_skb_adjust_room.exit, label %tls_sw_has_ctx_rx.exit

tls_sw_has_ctx_rx.exit:                           ; preds = %bb.n
  %i.bl = getelementptr i8, ptr %.val.i, i64 48
  %.val23.i = load ptr, ptr %i.bl, align 8
  %.not14 = icmp eq ptr %.val23.i, null
  br i1 %.not14, label %____sk_skb_adjust_room.exit, label %bb.o

bb.o:                                             ; preds = %tls_sw_has_ctx_rx.exit
  %i.bm = getelementptr i8, ptr %i.a, i64 64      ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 8
  %i.bo = add i32 %i.bn, %i.b
  store i32 %i.bo, ptr %i.bm, align 8
  br label %____sk_skb_adjust_room.exit

____sk_skb_adjust_room.exit:                      ; preds = %bb.n, %bb.m, %bb.l, %bb.i, %bb.h, %bb.a, %bb.b, %bb.f, %tls_sw_has_ctx_rx.exit, %bb.o
  %.0.i = phi i64 [ %i.af, %bb.f ], [ -22, %bb.a ], [ -14, %bb.b ], [ %.027.i, %tls_sw_has_ctx_rx.exit ], [ %.027.i, %bb.o ], [ -12, %bb.h ], [ -12, %bb.i ], [ %.027.i, %bb.l ], [ %.027.i, %bb.m ], [ %.027.i, %bb.n ]
  ret i64 %.0.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -2147483648, 1) i64 @bpf_skb_adjust_room(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 %4) #0 align 16 prefalign(16) {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 36 uses
  %i.b = trunc i64 %1 to i32                      ; 2 uses
  %i.c = trunc i64 %2 to i32
  %i.d = icmp slt i32 %i.b, 0                     ; 2 uses
  %i.e = tail call i32 @llvm.abs.i32(i32 %i.b, i1 false) ; 11 uses
  %i.f = getelementptr i8, ptr %i.a, i64 180      ; 5 uses
  %.val8 = load i16, ptr %i.f, align 4            ; 3 uses
  %switch.selectcmp.i = icmp eq i16 %.val8, -8826
  %switch.select.i = select i1 %switch.selectcmp.i, i32 40, i32 -1
  %switch.selectcmp1.i = icmp eq i16 %.val8, 8
  %switch.select2.i = select i1 %switch.selectcmp1.i, i32 20, i32 %switch.select.i ; 2 uses
  %i.g = and i64 %3, 72057594037927424
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.b, label %____bpf_skb_adjust_room.exit, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i32 %i.e, 4095
  br i1 %i.h, label %____bpf_skb_adjust_room.exit, label %bb.c, !prof !20

bb.c:                                             ; preds = %bb.b
  switch i16 %.val8, label %____bpf_skb_adjust_room.exit [
    i16 -8826, label %bb.d
    i16 8, label %bb.d
  ], !prof !128

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.i = getelementptr i8, ptr %i.a, i64 184      ; 3 uses
  %.val5 = load i16, ptr %i.i, align 8            ; 3 uses
  %i.j = getelementptr i8, ptr %i.a, i64 186      ; 2 uses
  %.val6 = load i16, ptr %i.j, align 2
  %i.k = zext i16 %.val5 to i32
  %i.l = zext i16 %.val6 to i32
  %i.m = sub nsw i32 %i.k, %i.l                   ; 2 uses
  switch i32 %i.c, label %____bpf_skb_adjust_room.exit [
    i32 0, label %bb.e
    i32 1, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.n = add nsw i32 %i.m, %switch.select2.i
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i = phi i32 [ %i.n, %bb.e ], [ %i.m, %bb.d ] ; 3 uses
  %i.o = and i64 %3, 384                          ; 2 uses
  %.not51.i = icmp eq i64 %i.o, 0                 ; 2 uses
  br i1 %.not51.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.d, label %bb.h, label %____bpf_skb_adjust_room.exit

bb.h:                                             ; preds = %bb.g
  switch i64 %i.o, label %____bpf_skb_adjust_room.exit [
    i64 128, label %.thread
    i64 256, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  br label %.thread

.thread:                                          ; preds = %bb.i, %bb.h
  %.046.i.ph = phi i32 [ 20, %bb.h ], [ 40, %bb.i ]
  %i.p = getelementptr i8, ptr %i.a, i64 112      ; 2 uses
  %i.q = load i32, ptr %i.p, align 8
  %i.r = getelementptr i8, ptr %i.a, i64 200      ; 2 uses
  %.val2.i30 = load ptr, ptr %i.r, align 8        ; 2 uses
  %i.s = zext i16 %.val5 to i64
  %i.t = getelementptr i8, ptr %.val2.i30, i64 %i.s
  %i.u = getelementptr i8, ptr %i.a, i64 208      ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = ptrtoint ptr %i.v to i64
  %.neg = sub i64 %i.x, %i.w
  %.neg41 = trunc i64 %.neg to i32
  %i.y = add i32 %i.q, %.neg41
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  %i.z = getelementptr i8, ptr %i.a, i64 112      ; 15 uses
  %i.aa = load i32, ptr %i.z, align 8             ; 2 uses
  %i.ab = getelementptr i8, ptr %i.a, i64 200     ; 17 uses
  %.val2.i = load ptr, ptr %i.ab, align 8         ; 7 uses
  %i.ac = zext i16 %.val5 to i64
  %i.ad = getelementptr i8, ptr %.val2.i, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.a, i64 208     ; 16 uses
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = ptrtoint ptr %i.ad to i64
  %i.ah = ptrtoint ptr %i.af to i64               ; 2 uses
  %.neg42 = sub i64 %i.ah, %i.ag
  %.neg43 = trunc i64 %.neg42 to i32
  %i.ai = add i32 %i.aa, %.neg43
  br i1 %i.d, label %bb.k, label %.critedge.i

bb.k:                                             ; preds = %.thread, %bb.j
  %i.aj = phi i32 [ %i.y, %.thread ], [ %i.ai, %bb.j ] ; 2 uses
  %i.ak = phi ptr [ %i.u, %.thread ], [ %i.ae, %bb.j ] ; 6 uses
  %.val2.i34 = phi ptr [ %.val2.i30, %.thread ], [ %.val2.i, %bb.j ]
  %i.al = phi ptr [ %i.r, %.thread ], [ %i.ab, %bb.j ] ; 7 uses
  %i.am = phi ptr [ %i.p, %.thread ], [ %i.z, %bb.j ] ; 6 uses
  %.046.i31 = phi i32 [ %.046.i.ph, %.thread ], [ %switch.select2.i, %bb.j ]
  %.not52.i = icmp uge i32 %i.e, %i.aj
  %i.an = sub nuw i32 %i.aj, %i.e
  %i.ao = icmp ult i32 %i.an, %.046.i31
  %or.cond.i = select i1 %.not52.i, i1 true, i1 %i.ao
  br i1 %or.cond.i, label %____bpf_skb_adjust_room.exit, label %.critedge57.i

.critedge.i:                                      ; preds = %bb.j
  %i.ap = add i32 %i.aa, %i.e
  %i.aq = icmp ugt i32 %i.ap, 16064
  %i.ar = getelementptr i8, ptr %i.a, i64 192
  %.val = load i32, ptr %i.ar, align 8
  %i.as = zext i32 %.val to i64                   ; 4 uses
  %i.at = getelementptr i8, ptr %.val2.i, i64 %i.as
  %i.au = getelementptr i8, ptr %i.at, i64 4
  %i.av = load i16, ptr %i.au, align 4
  %.not = icmp eq i16 %i.av, 0                    ; 2 uses
  br i1 %i.aq, label %bb.l, label %bb.x

bb.l:                                             ; preds = %.critedge.i
  br i1 %.not, label %____bpf_skb_adjust_room.exit, label %.thread59

.thread59:                                        ; preds = %bb.l
  %i.aw = lshr i64 %3, 56                         ; 2 uses
  %5 = trunc nuw nsw i64 %i.aw to i16
  %i.ax = and i64 %3, 6                           ; 2 uses
  %.not.i1762 = icmp eq i64 %i.ax, 0
  %i.ay = getelementptr i8, ptr %i.a, i64 192
  %i.az = getelementptr i8, ptr %.val2.i, i64 %i.as ; 2 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 1
  %i.bb = load i8, ptr %i.ba, align 1
  br label %bb.y

.critedge57.i:                                    ; preds = %bb.k
  %i.bc = and i64 %3, -72057594037927842
  %.not30.i = icmp eq i64 %i.bc, 0
  br i1 %.not30.i, label %bb.m, label %__skb_reset_checksum_unnecessary.exit, !prof !21

bb.m:                                             ; preds = %.critedge57.i
  %i.bd = getelementptr i8, ptr %i.a, i64 192     ; 2 uses
  %.val41.i = load i32, ptr %i.bd, align 8
  %i.be = zext i32 %.val41.i to i64
  %i.bf = getelementptr i8, ptr %.val2.i34, i64 %i.be ; 3 uses
  %i.bg = getelementptr i8, ptr %i.bf, i64 4
  %i.bh = load i16, ptr %i.bg, align 4
  %.not49.i = icmp eq i16 %i.bh, 0
  br i1 %.not49.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bi = getelementptr i8, ptr %i.bf, i64 24
  %i.bj = load i32, ptr %i.bi, align 8            ; 2 uses
  %i.bk = and i32 %i.bj, 17
  %.not50.i = icmp eq i32 %i.bk, 0
  br i1 %.not50.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bl = and i32 %i.bj, 131072
  %.not31.i = icmp eq i32 %i.bl, 0
  %i.bm = and i64 %3, 1
  %.not32.i = icmp eq i64 %i.bm, 0
  %or.cond.i16 = or i1 %.not32.i, %.not31.i
  br i1 %or.cond.i16, label %__skb_reset_checksum_unnecessary.exit, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.bn = getelementptr i8, ptr %i.a, i64 126
  %i.bo = load i8, ptr %i.bn, align 2
  %i.bp = and i8 %i.bo, 1
  %.not.i.i.i = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i, label %skb_unclone.exit.thread.i, label %skb_cloned.exit.i.i

skb_cloned.exit.i.i:                              ; preds = %bb.p
  %i.bq = getelementptr i8, ptr %i.bf, i64 32
  %i.br = load volatile i32, ptr %i.bq, align 4
  %i.bs = and i32 %i.br, 65535
  %.not5.i.i = icmp eq i32 %i.bs, 1
  br i1 %.not5.i.i, label %skb_unclone.exit.thread.i, label %skb_unclone.exit.i

skb_unclone.exit.i:                               ; preds = %skb_cloned.exit.i.i
  %i.bt = tail call i32 @pskb_expand_head(ptr noundef %i.a, i32 noundef 0, i32 noundef 0, i32 noundef 2080) #40 ; 2 uses
  %i.bu = icmp slt i32 %i.bt, 0
  br i1 %i.bu, label %__skb_reset_checksum_unnecessary.exit, label %skb_unclone.exit.thread.i, !prof !129

skb_unclone.exit.thread.i:                        ; preds = %skb_unclone.exit.i, %skb_cloned.exit.i.i, %bb.p
  %i.bv = tail call fastcc i32 @bpf_skb_net_hdr_pop(ptr noundef %i.a, i32 noundef range(i32 -65536, 65576) %.0.i, i32 noundef range(i32 0, 4096) %i.e) #42, !srcloc !130 ; 2 uses
  %i.bw = icmp slt i32 %i.bv, 0
  br i1 %i.bw, label %__skb_reset_checksum_unnecessary.exit, label %bb.q, !prof !20

bb.q:                                             ; preds = %skb_unclone.exit.thread.i
  br i1 %.not51.i, label %skb_valid_dst.exit.thread.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not33.i = icmp samesign ult i64 %3, 256
  %spec.select.i = select i1 %.not33.i, i16 8, i16 -8826
  store i16 %spec.select.i, ptr %i.f, align 4
  %i.bx = getelementptr i8, ptr %i.a, i64 88      ; 2 uses
  %.val43.i = load i64, ptr %i.bx, align 8        ; 3 uses
  %i.by = and i64 %.val43.i, -2                   ; 2 uses
  %.not.i.i = icmp eq i64 %i.by, 0
  br i1 %.not.i.i, label %skb_valid_dst.exit.thread.i, label %skb_valid_dst.exit.i

skb_valid_dst.exit.i:                             ; preds = %bb.r
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = getelementptr i8, ptr %i.bz, i64 56
  %i.cb = load i16, ptr %i.ca, align 8
  %i.cc = and i16 %i.cb, 128
  %.not3.i.i = icmp eq i16 %i.cc, 0
  br i1 %.not3.i.i, label %bb.s, label %skb_valid_dst.exit.thread.i

bb.s:                                             ; preds = %skb_valid_dst.exit.i
  %i.cd = and i64 %.val43.i, 1
  %.not.i.i47.i = icmp eq i64 %i.cd, 0
  br i1 %.not.i.i47.i, label %bb.t, label %skb_dst_drop.exit.i

bb.t:                                             ; preds = %bb.s
  %i.ce = inttoptr i64 %.val43.i to ptr
  tail call void @dst_release(ptr noundef nonnull %i.ce) #40
  br label %skb_dst_drop.exit.i

skb_dst_drop.exit.i:                              ; preds = %bb.t, %bb.s
  store i64 0, ptr %i.bx, align 8
  br label %skb_valid_dst.exit.thread.i

skb_valid_dst.exit.thread.i:                      ; preds = %skb_dst_drop.exit.i, %skb_valid_dst.exit.i, %bb.r, %bb.q
  %.val39.i = load i32, ptr %i.bd, align 8
  %.val40.i = load ptr, ptr %i.al, align 8
  %i.cf = zext i32 %.val39.i to i64
  %i.cg = getelementptr i8, ptr %.val40.i, i64 %i.cf ; 3 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 4      ; 2 uses
  %i.ci = load i16, ptr %i.ch, align 4            ; 3 uses
  %.not51.i15 = icmp eq i16 %i.ci, 0
  br i1 %.not51.i15, label %bpf_skb_net_shrink.exit, label %bb.u

bb.u:                                             ; preds = %skb_valid_dst.exit.thread.i
  %i.cj = and i64 %3, 1
  %.not35.i = icmp eq i64 %i.cj, 0
  br i1 %.not35.i, label %bb.v, label %skb_increase_gso_size.exit.i

bb.v:                                             ; preds = %bb.u
  %i.ck = icmp eq i16 %i.ci, -1
  br i1 %i.ck, label %bb.w, label %.critedge.i.i, !prof !20

bb.w:                                             ; preds = %bb.v
  tail call void asm sideeffect "667: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 667b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 667) #39, !srcloc !131
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.4, ptr nonnull @.str.5, i32 5299, i32 2307, i64 16) #39, !srcloc !132
  tail call void asm sideeffect "668: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 668b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 668) #39, !srcloc !133
  br label %skb_increase_gso_size.exit.i

.critedge.i.i:                                    ; preds = %bb.v
  %i.cl = trunc nuw nsw i32 %i.e to i16
  %i.cm = add i16 %i.ci, %i.cl
  store i16 %i.cm, ptr %i.ch, align 4
  br label %skb_increase_gso_size.exit.i

skb_increase_gso_size.exit.i:                     ; preds = %.critedge.i.i, %bb.w, %bb.u
  %i.cn = getelementptr i8, ptr %i.cg, i64 24     ; 2 uses
  %i.co = load i32, ptr %i.cn, align 8
  %i.cp = or i32 %i.co, 2
  store i32 %i.cp, ptr %i.cn, align 8
  %i.cq = getelementptr i8, ptr %i.cg, i64 6
  store i16 0, ptr %i.cq, align 2
  br label %bpf_skb_net_shrink.exit

bb.x:                                             ; preds = %.critedge.i
  %i.cr = lshr i64 %3, 56                         ; 3 uses
  %6 = trunc nuw nsw i64 %i.cr to i16             ; 2 uses
  %i.cs = and i64 %3, 6                           ; 3 uses
  %.not.i17 = icmp eq i64 %i.cs, 0                ; 2 uses
  %i.ct = getelementptr i8, ptr %i.a, i64 192     ; 2 uses
  %i.cu = getelementptr i8, ptr %.val2.i, i64 %i.as ; 3 uses
  %i.cv = getelementptr i8, ptr %i.cu, i64 1
  %i.cw = load i8, ptr %i.cv, align 1             ; 2 uses
  br i1 %.not, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %.thread59, %bb.x
  %i.cx = phi i8 [ %i.bb, %.thread59 ], [ %i.cw, %bb.x ] ; 2 uses
  %i.cy = phi ptr [ %i.az, %.thread59 ], [ %i.cu, %bb.x ] ; 2 uses
  %i.cz = phi ptr [ %i.ay, %.thread59 ], [ %i.ct, %bb.x ] ; 2 uses
  %.not.i1763 = phi i1 [ %.not.i1762, %.thread59 ], [ %.not.i17, %bb.x ] ; 2 uses
  %i.da = phi i64 [ %i.ax, %.thread59 ], [ %i.cs, %bb.x ] ; 2 uses
  %7 = phi i16 [ %5, %.thread59 ], [ %6, %bb.x ]  ; 2 uses
  %i.db = phi i64 [ %i.aw, %.thread59 ], [ %i.cr, %bb.x ] ; 2 uses
  %i.dc = getelementptr i8, ptr %.val2.i, i64 %i.as
  %i.dd = getelementptr i8, ptr %i.dc, i64 24
  %i.de = load i32, ptr %i.dd, align 8            ; 2 uses
  %i.df = and i32 %i.de, 17
  %.not141.i = icmp eq i32 %i.df, 0
  br i1 %.not141.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dg = and i32 %i.de, 131072
  %.not90.i = icmp eq i32 %i.dg, 0
  %i.dh = and i64 %3, 1
  %.not91.i = icmp eq i64 %i.dh, 0
  %or.cond110.i = or i1 %.not91.i, %.not90.i
  br i1 %or.cond110.i, label %__skb_reset_checksum_unnecessary.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.di = phi i8 [ %i.cx, %bb.z ], [ %i.cx, %bb.y ], [ %i.cw, %bb.x ]
  %i.dj = phi ptr [ %i.cy, %bb.z ], [ %i.cy, %bb.y ], [ %i.cu, %bb.x ]
  %i.dk = phi ptr [ %i.cz, %bb.z ], [ %i.cz, %bb.y ], [ %i.ct, %bb.x ]
  %.not.i1764 = phi i1 [ %.not.i1763, %bb.z ], [ %.not.i1763, %bb.y ], [ %.not.i17, %bb.x ]
  %i.dl = phi i64 [ %i.da, %bb.z ], [ %i.da, %bb.y ], [ %i.cs, %bb.x ]
  %8 = phi i16 [ %7, %bb.z ], [ %7, %bb.y ], [ %6, %bb.x ]
  %i.dm = phi i64 [ %i.db, %bb.z ], [ %i.db, %bb.y ], [ %i.cr, %bb.x ]
  %i.dn = zext i8 %i.di to i32
  %i.do = add nuw nsw i32 %i.e, %i.dn
  %i.dp = getelementptr i8, ptr %i.a, i64 126
  %i.dq = load i8, ptr %i.dp, align 2
  %i.dr = and i8 %i.dq, 1
  %.not.i.i.i18 = icmp eq i8 %i.dr, 0
  br i1 %.not.i.i.i18, label %skb_header_cloned.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ds = getelementptr i8, ptr %i.dj, i64 32
  %i.dt = load volatile i32, ptr %i.ds, align 4   ; 2 uses
  %i.du = and i32 %i.dt, 65535
  %i.dv = ashr i32 %i.dt, 16
  %i.dw = sub nsw i32 %i.du, %i.dv
  %i.dx = icmp ne i32 %i.dw, 1
  %i.dy = zext i1 %i.dx to i32
  br label %skb_header_cloned.exit.i.i

skb_header_cloned.exit.i.i:                       ; preds = %bb.ab, %bb.aa
  %.0.i.i.i = phi i32 [ %i.dy, %bb.ab ], [ 0, %bb.aa ]
  %i.dz = ptrtoint ptr %.val2.i to i64
  %i.ea = sub i64 %i.ah, %i.dz
  %i.eb = trunc i64 %i.ea to i32
  %spec.select.i.i.i = tail call i32 @llvm.usub.sat.i32(i32 range(i32 0, 4351) %i.do, i32 %i.eb) ; 2 uses
  %i.ec = or i32 %.0.i.i.i, %spec.select.i.i.i
  %or.cond.not.i.i.i = icmp eq i32 %i.ec, 0
  br i1 %or.cond.not.i.i.i, label %skb_cow_head.exit.thread.i, label %skb_cow_head.exit.i

skb_cow_head.exit.i:                              ; preds = %skb_header_cloned.exit.i.i
  %i.ed = add nuw nsw i32 %spec.select.i.i.i, 63
  %i.ee = and i32 %i.ed, 16320
  %i.ef = tail call i32 @pskb_expand_head(ptr noundef %i.a, i32 noundef %i.ee, i32 noundef 0, i32 noundef 2080) #40 ; 2 uses
  %i.eg = icmp slt i32 %i.ef, 0
  br i1 %i.eg, label %__skb_reset_checksum_unnecessary.exit, label %skb_cow_head.exit.thread.i, !prof !58

skb_cow_head.exit.thread.i:                       ; preds = %skb_cow_head.exit.i, %skb_header_cloned.exit.i.i
  br i1 %.not.i1764, label %.critedge.i27, label %bb.ac

bb.ac:                                            ; preds = %skb_cow_head.exit.thread.i
  %i.eh = load i16, ptr %i.f, align 4
  switch i16 %i.eh, label %__skb_reset_checksum_unnecessary.exit [
    i16 8, label %bb.ad
    i16 -8826, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac, %bb.ac
  %i.ei = and i64 %3, 2
  %.not94.not.i = icmp eq i64 %i.ei, 0
  %i.ej = and i64 %3, 4
  %.not95.not.i = icmp eq i64 %i.ej, 0            ; 3 uses
  %or.cond111.not.i = icmp eq i64 %i.dl, 6
  br i1 %or.cond111.not.i, label %__skb_reset_checksum_unnecessary.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ek = and i64 %3, 16
  %.not97.not.i = icmp eq i64 %i.ek, 0
  %i.el = and i64 %3, 24                          ; 2 uses
  %or.cond112.not.i = icmp eq i64 %i.el, 24
  br i1 %or.cond112.not.i, label %__skb_reset_checksum_unnecessary.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.em = and i64 %3, 64                          ; 2 uses
  %i.en = icmp ne i64 %i.em, 0
  %i.eo = trunc nuw nsw i64 %i.dm to i32
  %i.ep = icmp ult i64 %3, 1008806316530991104
  %or.cond.i19 = and i1 %i.ep, %i.en
  br i1 %or.cond.i19, label %__skb_reset_checksum_unnecessary.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eq = getelementptr i8, ptr %i.a, i64 129     ; 3 uses
  %i.er = load i32, ptr %i.eq, align 1
  %i.es = and i32 %i.er, 16384
  %.not98.i = icmp eq i32 %i.es, 0
  br i1 %.not98.i, label %bb.ah, label %__skb_reset_checksum_unnecessary.exit

bb.ah:                                            ; preds = %bb.ag
  %i.et = icmp samesign ult i32 %i.e, %i.eo
  br i1 %i.et, label %__skb_reset_checksum_unnecessary.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eu = load i16, ptr %i.j, align 2
  %i.ev = load i16, ptr %i.i, align 8             ; 3 uses
  %i.ew = sub i16 %i.ev, %i.eu                    ; 2 uses
  %i.ex = getelementptr i8, ptr %i.a, i64 182     ; 2 uses
  %i.ey = load i16, ptr %i.ex, align 2
  tail call fastcc void @bpf_skb_net_hdr_push(ptr noundef %i.a, i32 noundef range(i32 -65536, 65576) %.0.i, i32 noundef range(i32 0, 4096) %i.e) #42
  %i.ez = sub i16 %i.ev, %8
  %i.fa = getelementptr i8, ptr %i.a, i64 178
  store i16 %i.ez, ptr %i.fa, align 2
  %i.fb = getelementptr i8, ptr %i.a, i64 176
  store i16 %i.ev, ptr %i.fb, align 8
  %i.fc = getelementptr i8, ptr %i.a, i64 174
  store i16 %i.ey, ptr %i.fc, align 2
  %.not99.i = icmp eq i64 %i.em, 0
  br i1 %.not99.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.fd = load i16, ptr %i.f, align 4
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.sink.i = phi i16 [ %i.fd, %bb.aj ], [ 22629, %bb.ai ]
  %i.fe = getelementptr i8, ptr %i.a, i64 172
  store i16 %.sink.i, ptr %i.fe, align 4
  %storemerge.in.i = load i32, ptr %i.eq, align 1
  %storemerge.i = and i32 %storemerge.in.i, -16641
  %i.ff = or disjoint i32 %storemerge.i, 16384
  store i32 %i.ff, ptr %i.eq, align 1
  %i.fg = load ptr, ptr %i.ae, align 8
  %i.fh = load ptr, ptr %i.ab, align 8
  %i.fi = ptrtoint ptr %i.fg to i64
  %i.fj = ptrtoint ptr %i.fh to i64
  %i.fk = sub i64 %i.fi, %i.fj
  %i.fl = trunc i64 %i.fk to i16                  ; 2 uses
  %i.fm = add i16 %i.ew, %i.fl
  store i16 %i.fm, ptr %i.i, align 8
  %brmerge138.not.i = icmp eq i64 %i.el, 0
  br i1 %brmerge138.not.i, label %bb.al, label %.thread.i

bb.al:                                            ; preds = %bb.ak
  %spec.select.i26 = select i1 %.not94.not.i, i32 2, i32 258
  %spec.select139.i = select i1 %.not95.not.i, i32 %spec.select.i26, i32 514
  br label %bb.am

.thread.i:                                        ; preds = %bb.ak
  %.mux.i = select i1 %.not97.not.i, i32 66, i32 1026
  %i.fn = select i1 %.not95.not.i, i16 20, i16 40
  %i.fo = add i16 %i.ew, %i.fn
  %i.fp = add i16 %i.fo, %i.fl
  store i16 %i.fp, ptr %i.ex, align 2
  br label %bb.am

bb.am:                                            ; preds = %.thread.i, %bb.al
  %.082134.i = phi i32 [ %spec.select139.i, %bb.al ], [ %.mux.i, %.thread.i ] ; 3 uses
  %.mux149.i = select i1 %.not95.not.i, i16 8, i16 -8826
  store i16 %.mux149.i, ptr %i.f, align 4
  %i.fq = getelementptr i8, ptr %i.a, i64 88      ; 2 uses
  %.val122.i = load i64, ptr %i.fq, align 8       ; 3 uses
  %i.fr = and i64 %.val122.i, -2                  ; 2 uses
  %.not.i.i20 = icmp eq i64 %i.fr, 0
  br i1 %.not.i.i20, label %skb_valid_dst.exit.thread.i23, label %skb_valid_dst.exit.i21

skb_valid_dst.exit.i21:                           ; preds = %bb.am
  %i.fs = inttoptr i64 %i.fr to ptr
  %i.ft = getelementptr i8, ptr %i.fs, i64 56
  %i.fu = load i16, ptr %i.ft, align 8
  %i.fv = and i16 %i.fu, 128
  %.not3.i.i22 = icmp eq i16 %i.fv, 0
  br i1 %.not3.i.i22, label %bb.an, label %skb_valid_dst.exit.thread.i23

bb.an:                                            ; preds = %skb_valid_dst.exit.i21
  %i.fw = and i64 %.val122.i, 1
  %.not.i.i126.i = icmp eq i64 %i.fw, 0
  br i1 %.not.i.i126.i, label %bb.ao, label %skb_dst_drop.exit.i25

bb.ao:                                            ; preds = %bb.an
  %i.fx = inttoptr i64 %.val122.i to ptr
  tail call void @dst_release(ptr noundef nonnull %i.fx) #40
  br label %skb_dst_drop.exit.i25

skb_dst_drop.exit.i25:                            ; preds = %bb.ao, %bb.an
  store i64 0, ptr %i.fq, align 8
  br label %skb_valid_dst.exit.thread.i23

.critedge.i27:                                    ; preds = %skb_cow_head.exit.thread.i
  tail call fastcc void @bpf_skb_net_hdr_push(ptr noundef %i.a, i32 noundef range(i32 -65536, 65576) %.0.i, i32 noundef range(i32 0, 4096) %i.e) #42
  br label %skb_valid_dst.exit.thread.i23

skb_valid_dst.exit.thread.i23:                    ; preds = %.critedge.i27, %skb_dst_drop.exit.i25, %skb_valid_dst.exit.i21, %bb.am
  %.183.i = phi i32 [ %.082134.i, %skb_dst_drop.exit.i25 ], [ %.082134.i, %skb_valid_dst.exit.i21 ], [ 2, %.critedge.i27 ], [ %.082134.i, %bb.am ]
  %.val118.i = load i32, ptr %i.dk, align 8
  %.val119.i = load ptr, ptr %i.ab, align 8
  %i.fy = zext i32 %.val118.i to i64
  %i.fz = getelementptr i8, ptr %.val119.i, i64 %i.fy ; 4 uses
  %i.ga = getelementptr i8, ptr %i.fz, i64 4      ; 2 uses
  %i.gb = load i16, ptr %i.ga, align 4            ; 3 uses
  %.not142.i = icmp eq i16 %i.gb, 0
  br i1 %.not142.i, label %bpf_skb_net_shrink.exit, label %bb.ap

bb.ap:                                            ; preds = %skb_valid_dst.exit.thread.i23
  %i.gc = getelementptr i8, ptr %i.fz, i64 24     ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 8
  %i.ge = or i32 %i.gd, %.183.i
  store i32 %i.ge, ptr %i.gc, align 8
  %i.gf = getelementptr i8, ptr %i.fz, i64 6
  store i16 0, ptr %i.gf, align 2
  %i.gg = and i64 %3, 1
  %.not108.i = icmp eq i64 %i.gg, 0
  br i1 %.not108.i, label %bb.aq, label %bpf_skb_net_shrink.exit

bb.aq:                                            ; preds = %bb.ap
  %i.gh = icmp eq i16 %i.gb, -1
  br i1 %i.gh, label %bb.ar, label %.critedge.i.i24, !prof !20

bb.ar:                                            ; preds = %bb.aq
  tail call void asm sideeffect "669: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 669b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 669) #39, !srcloc !134
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.4, ptr nonnull @.str.5, i32 5307, i32 2307, i64 16) #39, !srcloc !135
  tail call void asm sideeffect "670: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 670b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 670) #39, !srcloc !136
  br label %skb_decrease_gso_size.exit.i

.critedge.i.i24:                                  ; preds = %bb.aq
  %i.gi = trunc nuw nsw i32 %i.e to i16
  %i.gj = sub i16 %i.gb, %i.gi
  store i16 %i.gj, ptr %i.ga, align 4
  br label %skb_decrease_gso_size.exit.i

skb_decrease_gso_size.exit.i:                     ; preds = %.critedge.i.i24, %bb.ar
  %i.gk = getelementptr i8, ptr %i.fz, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8
  %.not109.i = icmp eq ptr %i.gl, null
  br i1 %.not109.i, label %bpf_skb_net_shrink.exit, label %bb.as

bb.as:                                            ; preds = %skb_decrease_gso_size.exit.i
  %i.gm = getelementptr i8, ptr %i.a, i64 116
  %.val.i.i = load i32, ptr %i.gm, align 4        ; 2 uses
  %.not.i127.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i127.i, label %bpf_skb_net_shrink.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gn = tail call ptr @__pskb_pull_tail(ptr noundef %i.a, i32 noundef %.val.i.i) #40
  %.not.i.i128.i = icmp eq ptr %i.gn, null
  %i.go = select i1 %.not.i.i128.i, i32 -12, i32 0
  br label %bpf_skb_net_shrink.exit

bpf_skb_net_shrink.exit:                          ; preds = %bb.at, %bb.as, %skb_decrease_gso_size.exit.i, %bb.ap, %skb_valid_dst.exit.thread.i23, %skb_increase_gso_size.exit.i, %skb_valid_dst.exit.thread.i
  %i.gp = phi ptr [ %i.ak, %skb_increase_gso_size.exit.i ], [ %i.ae, %bb.as ], [ %i.ae, %bb.at ], [ %i.ae, %skb_valid_dst.exit.thread.i23 ], [ %i.ae, %bb.ap ], [ %i.ak, %skb_valid_dst.exit.thread.i ], [ %i.ae, %skb_decrease_gso_size.exit.i ] ; 3 uses
  %i.gq = phi ptr [ %i.al, %skb_increase_gso_size.exit.i ], [ %i.ab, %bb.as ], [ %i.ab, %bb.at ], [ %i.ab, %skb_valid_dst.exit.thread.i23 ], [ %i.ab, %bb.ap ], [ %i.al, %skb_valid_dst.exit.thread.i ], [ %i.ab, %skb_decrease_gso_size.exit.i ] ; 3 uses
  %i.gr = phi ptr [ %i.am, %skb_increase_gso_size.exit.i ], [ %i.z, %bb.as ], [ %i.z, %bb.at ], [ %i.z, %skb_valid_dst.exit.thread.i23 ], [ %i.z, %bb.ap ], [ %i.am, %skb_valid_dst.exit.thread.i ], [ %i.z, %skb_decrease_gso_size.exit.i ] ; 3 uses
  %i.gs = phi i32 [ 0, %skb_increase_gso_size.exit.i ], [ 0, %bb.as ], [ %i.go, %bb.at ], [ 0, %skb_valid_dst.exit.thread.i23 ], [ 0, %bb.ap ], [ 0, %skb_valid_dst.exit.thread.i ], [ 0, %skb_decrease_gso_size.exit.i ] ; 2 uses
  %.not53.i = icmp eq i32 %i.gs, 0
  %i.gt = and i64 %3, 32
  %.not54.i = icmp eq i64 %i.gt, 0
  %or.cond58.i = and i1 %.not54.i, %.not53.i
  br i1 %or.cond58.i, label %bb.au, label %__skb_reset_checksum_unnecessary.exit

bb.au:                                            ; preds = %bpf_skb_net_shrink.exit
  %i.gu = getelementptr i8, ptr %i.a, i64 128     ; 2 uses
  %i.gv = load i8, ptr %i.gu, align 8             ; 2 uses
  %i.gw = and i8 %i.gv, 96
  %i.gx = icmp eq i8 %i.gw, 32
  br i1 %i.gx, label %bb.av, label %__skb_reset_checksum_unnecessary.exit

bb.av:                                            ; preds = %bb.au
  %i.gy = and i8 %i.gv, -97
  store i8 %i.gy, ptr %i.gu, align 8
  %i.gz = getelementptr i8, ptr %i.a, i64 129     ; 2 uses
  %i.ha = load i32, ptr %i.gz, align 1
  %i.hb = and i32 %i.ha, -193
  store i32 %i.hb, ptr %i.gz, align 1
  br label %__skb_reset_checksum_unnecessary.exit

__skb_reset_checksum_unnecessary.exit:            ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %skb_cow_head.exit.i, %bb.z, %skb_unclone.exit.thread.i, %skb_unclone.exit.i, %bb.o, %.critedge57.i, %bb.av, %bb.au, %bpf_skb_net_shrink.exit
  %i.hc = phi i32 [ 0, %bb.av ], [ %i.gs, %bpf_skb_net_shrink.exit ], [ 0, %bb.au ], [ -22, %bb.ah ], [ -114, %bb.ag ], [ -22, %bb.af ], [ -22, %bb.ae ], [ -22, %bb.ad ], [ -524, %bb.ac ], [ %i.ef, %skb_cow_head.exit.i ], [ -524, %bb.z ], [ %i.bv, %skb_unclone.exit.thread.i ], [ %i.bt, %skb_unclone.exit.i ], [ -524, %bb.o ], [ -22, %.critedge57.i ]
  %i.hd = phi ptr [ %i.gr, %bb.av ], [ %i.gr, %bpf_skb_net_shrink.exit ], [ %i.gr, %bb.au ], [ %i.z, %bb.ah ], [ %i.z, %bb.ag ], [ %i.z, %bb.af ], [ %i.z, %bb.ae ], [ %i.z, %bb.ad ], [ %i.z, %bb.ac ], [ %i.z, %skb_cow_head.exit.i ], [ %i.z, %bb.z ], [ %i.am, %skb_unclone.exit.thread.i ], [ %i.am, %skb_unclone.exit.i ], [ %i.am, %bb.o ], [ %i.am, %.critedge57.i ]
  %i.he = phi ptr [ %i.gq, %bb.av ], [ %i.gq, %bpf_skb_net_shrink.exit ], [ %i.gq, %bb.au ], [ %i.ab, %bb.ah ], [ %i.ab, %bb.ag ], [ %i.ab, %bb.af ], [ %i.ab, %bb.ae ], [ %i.ab, %bb.ad ], [ %i.ab, %bb.ac ], [ %i.ab, %skb_cow_head.exit.i ], [ %i.ab, %bb.z ], [ %i.al, %skb_unclone.exit.thread.i ], [ %i.al, %skb_unclone.exit.i ], [ %i.al, %bb.o ], [ %i.al, %.critedge57.i ]
  %i.hf = phi ptr [ %i.gp, %bb.av ], [ %i.gp, %bpf_skb_net_shrink.exit ], [ %i.gp, %bb.au ], [ %i.ae, %bb.ah ], [ %i.ae, %bb.ag ], [ %i.ae, %bb.af ], [ %i.ae, %bb.ae ], [ %i.ae, %bb.ad ], [ %i.ae, %bb.ac ], [ %i.ae, %skb_cow_head.exit.i ], [ %i.ae, %bb.z ], [ %i.ak, %skb_unclone.exit.thread.i ], [ %i.ak, %skb_unclone.exit.i ], [ %i.ak, %bb.o ], [ %i.ak, %.critedge57.i ]
  %i.hg = load ptr, ptr %i.hf, align 8            ; 2 uses
  %i.hh = getelementptr i8, ptr %i.a, i64 192
  %.val.i28 = load i32, ptr %i.hh, align 8
  %.val7.i = load ptr, ptr %i.he, align 8
  %i.hi = zext i32 %.val.i28 to i64
  %i.hj = getelementptr i8, ptr %.val7.i, i64 %i.hi
  %i.hk = getelementptr i8, ptr %i.hj, i64 1
  %i.hl = load i8, ptr %i.hk, align 1
  %i.hm = zext i8 %i.hl to i64
  %i.hn = sub nsw i64 0, %i.hm
  %i.ho = getelementptr i8, ptr %i.hg, i64 %i.hn
  %i.hp = getelementptr i8, ptr %i.a, i64 72
  store ptr %i.ho, ptr %i.hp, align 8
  %.val8.i = load i32, ptr %i.hd, align 8
  %i.hq = getelementptr i8, ptr %i.a, i64 116
  %.val9.i = load i32, ptr %i.hq, align 4
  %i.hr = sub i32 %.val8.i, %.val9.i
  %i.hs = zext i32 %i.hr to i64
  %i.ht = getelementptr i8, ptr %i.hg, i64 %i.hs
  %i.hu = getelementptr i8, ptr %i.a, i64 80
  store ptr %i.ht, ptr %i.hu, align 8
  %i.hv = sext i32 %i.hc to i64
  br label %____bpf_skb_adjust_room.exit

____bpf_skb_adjust_room.exit:                     ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.g, %bb.h, %bb.k, %bb.l, %__skb_reset_checksum_unnecessary.exit
  %.047.i = phi i64 [ -524, %bb.d ], [ -22, %bb.a ], [ -14, %bb.b ], [ -524, %bb.c ], [ -22, %bb.g ], [ -22, %bb.h ], [ %i.hv, %__skb_reset_checksum_unnecessary.exit ], [ -524, %bb.l ], [ -524, %bb.k ]
  ret i64 %.047.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -2147483648, 2147483648) i64 @bpf_skb_change_tail(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 %3, i64 %4) #0 align 16 prefalign(16) {
end_hunk_0
