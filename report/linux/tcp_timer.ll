Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/tcp_timer?download=true
inline.NumInlined: 171
inline.NumDeleted: 78
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"net/ipv4/tcp_timer.c\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"\013Hmm... keepalive on a LISTEN ???\0A\00", align 1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @tcp_clamp_probe0_to_user_timeout(ptr nofree noundef captures(address) %0, i32 noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1300
  %i.b = load volatile i32, ptr %i.a, align 4     ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 1296
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %.not28 = icmp eq i32 %i.d, 0
  br i1 %.not28, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load volatile i64, ptr @jiffies, align 64
  %i.f = trunc i64 %i.e to i32
  %i.g = sub i32 %i.f, %i.d                       ; 2 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %msecs_to_jiffies.exit, !prof !10

bb.d:                                             ; preds = %bb.c
  br label %msecs_to_jiffies.exit

msecs_to_jiffies.exit:                            ; preds = %bb.c, %bb.d
  %.025 = phi i32 [ 0, %bb.d ], [ %i.g, %bb.c ]
  %i.i = tail call i64 @__msecs_to_jiffies(i32 noundef %i.b) #6
  %i.j = trunc i64 %i.i to i32
  %i.k = sub i32 %i.j, %.025
  %i.l = tail call i32 @llvm.smax.i32(i32 %i.k, i32 2)
  %i.m = tail call i32 @llvm.umin.i32(i32 %i.l, i32 %1)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %msecs_to_jiffies.exit
  %.0 = phi i32 [ %i.m, %msecs_to_jiffies.exit ], [ %1, %bb.b ], [ %1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @tcp_delack_timer_handler(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 18
  %i.b = load volatile i8, ptr %i.a, align 2
  %i.c = zext nneg i8 %i.b to i32
  %i.d = shl nuw i32 1, %i.c
  %i.e = and i32 %i.d, 1152
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 1920
  %i.g = load i8, ptr %i.f, align 64
  %.not30 = icmp eq i8 %i.g, 0
  br i1 %.not30, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @tcp_mstamp_refresh(ptr noundef %0) #6
  tail call void @tcp_sack_compress_send_ack(ptr noundef %0) #6
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %0, i64 1264       ; 2 uses
  %i.i = load i8, ptr %i.h, align 16              ; 3 uses
  %i.j = and i8 %i.i, 2
  %.not31 = icmp eq i8 %i.j, 0
  br i1 %.not31, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load volatile i64, ptr @jiffies, align 64
  %i.l = getelementptr i8, ptr %0, i64 1128       ; 2 uses
  %i.m = load volatile i64, ptr %i.l, align 8
  %i.n = sub i64 %i.k, %i.m
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr i8, ptr %0, i64 1112
  %i.q = load volatile i64, ptr %i.l, align 8
  tail call void @sk_reset_timer(ptr noundef %0, ptr noundef %i.p, i64 noundef %i.q) #6
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.r = and i8 %i.i, -3
  store i8 %i.r, ptr %i.h, align 16
  %i.s = and i8 %i.i, 1
  %.not32 = icmp eq i8 %i.s, 0
  br i1 %.not32, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr i8, ptr %0, i64 1266       ; 2 uses
  %i.u = load i8, ptr %i.t, align 2
  %i.v = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %.val.i = load ptr, ptr %i.v, align 16
  %i.w = getelementptr i8, ptr %.val.i, i64 1499
  %i.x = load volatile i8, ptr %i.w, align 1
  %.not34 = icmp ult i8 %i.u, %i.x
  br i1 %.not34, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr i8, ptr %0, i64 1268       ; 2 uses
  %i.z = load i32, ptr %i.y, align 4              ; 2 uses
  %i.aa = shl i32 %i.z, 1
  %i.ab = and i32 %i.aa, 510
  %i.ac = getelementptr i8, ptr %0, i64 1192
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = tail call i32 @llvm.umin.i32(i32 %i.ab, i32 %i.ad)
  %1 = and i32 %i.ae, 255
  %2 = and i32 %i.z, -256
  %3 = or disjoint i32 %1, %2
  store i32 %3, ptr %i.y, align 4
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  store i8 0, ptr %i.t, align 2
  %i.af = getelementptr i8, ptr %0, i64 1268      ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = and i32 %i.ag, -256
  %i.ai = or disjoint i32 %i.ah, 40
  store i32 %i.ai, ptr %i.af, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  tail call void @tcp_mstamp_refresh(ptr noundef %0) #6
  tail call void @tcp_send_ack(ptr noundef %0) #6
  %.val33 = load ptr, ptr %i.v, align 16
  %i.aj = getelementptr i8, ptr %.val33, i64 744
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = getelementptr i8, ptr %i.ak, i64 160    ; 2 uses
  tail call void asm "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.al, ptr elementtype(i64) %i.al) #7, !srcloc !17
  br label %bb.l

bb.l:                                             ; preds = %bb.g, %bb.k, %bb.d, %bb.a, %bb.f, %bb.c
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @tcp_mstamp_refresh(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @tcp_sack_compress_send_ack(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @sk_reset_timer(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @tcp_send_ack(ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @tcp_retransmit_timer(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48         ; 8 uses
  %.val138 = load ptr, ptr %i.a, align 8          ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 2320
  %i.c = load ptr, ptr %i.b, align 16             ; 8 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 18         ; 2 uses
  %i.e = load volatile i8, ptr %i.d, align 2
  %.not129 = icmp eq i8 %i.e, 3
  br i1 %.not129, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load volatile i8, ptr %i.d, align 2
  %.not187 = icmp eq i8 %i.f, 4
  br i1 %.not187, label %.critedge, label %bb.d, !prof !11

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "1237: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1237b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1237) #7, !srcloc !20
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, ptr @.str.2, i32 547, i32 2307, i64 16) #7, !srcloc !21
  tail call void asm sideeffect "1238: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1238b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1238) #7, !srcloc !22
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.d, %bb.c
  %i.g = getelementptr i8, ptr %i.c, i64 48
  %.val.i.i = load ptr, ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %.val.i.i, i64 744
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %i.i, i64 352      ; 2 uses
  tail call void asm "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.j, ptr elementtype(i64) %i.j) #7, !srcloc !12
  %i.k = getelementptr i8, ptr %0, i64 1260
  %i.l = load volatile i8, ptr %i.k, align 4      ; 2 uses
  %i.m = zext i8 %i.l to i32
  %.not.i = icmp eq i8 %i.l, 0
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.critedge
  %.val.i = load ptr, ptr %i.a, align 16
  %i.n = getelementptr i8, ptr %.val.i, i64 1494
  %i.o = load volatile i8, ptr %i.n, align 2
  %i.p = zext i8 %i.o to i32
  %i.q = add nuw nsw i32 %i.p, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.critedge
  %i.r = phi i32 [ %i.q, %bb.e ], [ %i.m, %.critedge ]
  %i.s = getelementptr i8, ptr %i.c, i64 147      ; 4 uses
  %i.t = load i8, ptr %i.s, align 1
  %i.u = lshr i8 %i.t, 1
  %i.v = zext nneg i8 %i.u to i32
  %.not32.i = icmp samesign ugt i32 %i.r, %i.v
  br i1 %.not32.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr i8, ptr %0, i64 364
  %i.x = load volatile i32, ptr %i.w, align 4     ; 2 uses
  %.not.i.i = icmp eq i32 %i.x, 0
  %i.y = select i1 %.not.i.i, i32 110, i32 %i.x
  tail call void @tcp_done_with_error(ptr noundef %0, i32 noundef %i.y) #6
  %.val.i34.i = load ptr, ptr %i.a, align 16
  %i.z = getelementptr i8, ptr %.val.i34.i, i64 744
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr i8, ptr %i.aa, i64 456    ; 2 uses
  tail call void asm "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ab, ptr elementtype(i64) %i.ab) #7, !srcloc !13
  br label %tcp_fastopen_synack_timer.exit

bb.h:                                             ; preds = %bb.f
  %i.ac = getelementptr i8, ptr %0, i64 1257      ; 3 uses
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = icmp eq i8 %i.ad, 1
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @tcp_enter_loss(ptr noundef %0) #6
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.af = tail call i32 @tcp_rtx_synack(ptr noundef %0, ptr noundef nonnull %i.c) #6 ; 0 uses
  %i.ag = getelementptr i8, ptr %i.c, i64 146
  %i.ah = load i8, ptr %i.ag, align 2
  %i.ai = icmp ugt i8 %i.ah, 1
  br i1 %i.ai, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr i8, ptr %i.c, i64 309
  %i.ak = load i8, ptr %i.aj, align 1, !range !23, !noundef !24
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr i8, ptr %i.c, i64 310     ; 2 uses
  %i.an = load i16, ptr %i.am, align 2
  %i.ao = or i16 %i.an, 16
  store i16 %i.ao, ptr %i.am, align 2
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.ap = load i8, ptr %i.s, align 1              ; 2 uses
  %i.aq = and i8 %i.ap, -2
  %i.ar = add i8 %i.aq, 2
  %i.as = and i8 %i.ap, 1
  %i.at = or disjoint i8 %i.ar, %i.as
  store i8 %i.at, ptr %i.s, align 1
  %i.au = load i8, ptr %i.ac, align 1             ; 2 uses
  %.not.i35.i = icmp eq i8 %i.au, 0
  br i1 %.not.i35.i, label %bb.n, label %tcp_update_rto_stats.exit.i

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr i8, ptr %0, i64 2250      ; 2 uses
  %i.aw = load i16, ptr %i.av, align 2
  %i.ax = add i16 %i.aw, 1
  store i16 %i.ax, ptr %i.av, align 2
  %i.ay = getelementptr i8, ptr %0, i64 1696
  %.val.i36.i = load i64, ptr %i.ay, align 32
  %i.az = udiv i64 %.val.i36.i, 1000
  %i.ba = trunc i64 %i.az to i32
  %i.bb = getelementptr i8, ptr %0, i64 2244
  store i32 %i.ba, ptr %i.bb, align 4
  br label %tcp_update_rto_stats.exit.i

tcp_update_rto_stats.exit.i:                      ; preds = %bb.n, %bb.m
  %i.bc = add i8 %i.au, 1
  store volatile i8 %i.bc, ptr %i.ac, align 1
  %i.bd = getelementptr i8, ptr %0, i64 2248      ; 2 uses
  %i.be = load i16, ptr %i.bd, align 8
  %i.bf = add i16 %i.be, 1
  store i16 %i.bf, ptr %i.bd, align 8
  %i.bg = getelementptr i8, ptr %0, i64 2216      ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8
  %.not33.i = icmp eq i32 %i.bh, 0
  br i1 %.not33.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %tcp_update_rto_stats.exit.i
  %i.bi = getelementptr i8, ptr %0, i64 1471
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = and i8 %i.bj, 2
  %.not.i37.i = icmp eq i8 %i.bk, 0
  %i.bl = getelementptr i8, ptr %0, i64 1696
  %.val.i38.i = load i64, ptr %i.bl, align 32     ; 2 uses
  %i.bm = udiv i64 %.val.i38.i, 1000
  %.0.in.i.i = select i1 %.not.i37.i, i64 %i.bm, i64 %.val.i38.i
  %.0.i.i = trunc i64 %.0.in.i.i to i32
  store i32 %.0.i.i, ptr %i.bg, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %tcp_update_rto_stats.exit.i
  %i.bn = getelementptr i8, ptr %i.c, i64 224
  %i.bo = load i32, ptr %i.bn, align 8
  %i.bp = load i8, ptr %i.s, align 1
  %i.bq = lshr i8 %i.bp, 1
  %i.br = zext nneg i8 %i.bq to i32
  %i.bs = shl i32 %i.bo, %i.br
  %i.bt = getelementptr i8, ptr %0, i64 1200
  %i.bu = load volatile i32, ptr %i.bt, align 16
  %i.bv = tail call i32 @llvm.umin.i32(i32 %i.bs, i32 %i.bu)
  %spec.select.i.i.i = zext i32 %i.bv to i64
  %i.bw = load volatile i64, ptr @jiffies, align 64
  %i.bx = add i64 %i.bw, %spec.select.i.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !25
end_hunk_0
