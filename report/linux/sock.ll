Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/sock?download=true
inline.NumInlined: 788
inline.NumDeleted: 290
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@sock_set_timeout:bb.a
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @copy_bpf_fprog_from_user(ptr noundef, ptr, i8, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @sk_attach_filter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @sk_attach_bpf(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @sk_reuseport_attach_filter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @sk_reuseport_attach_bpf(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @reuseport_detach_prog(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @sk_detach_filter(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @reuseport_update_incoming_cpu(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @dst_negative_advice(ptr noundef %0) unnamed_addr #5 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 564        ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %sk_rethink_txhash.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 652
  %i.d = load i8, ptr %i.c, align 4
  %i.e = icmp eq i8 %i.d, 1
  br i1 %i.e, label %bb.c, label %sk_rethink_txhash.exit

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @get_random_u32() #23
  %..i.i.i = tail call range(i32 1, 0) i32 @llvm.umax.i32(i32 %i.f, i32 1)
  store volatile i32 %..i.i.i, ptr %i.a, align 4
  br label %sk_rethink_txhash.exit

sk_rethink_txhash.exit:                           ; preds = %bb.a, %bb.b, %bb.c
  %i.g = getelementptr i8, ptr %0, i64 536
  %i.h = load volatile ptr, ptr %i.g, align 8     ; 3 uses
  %.not.i2 = icmp eq ptr %i.h, null
  br i1 %.not.i2, label %__dst_negative_advice.exit, label %bb.d

bb.d:                                             ; preds = %sk_rethink_txhash.exit
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr i8, ptr %i.j, i64 64
  %i.l = load ptr, ptr %i.k, align 64             ; 2 uses
  %.not7.i = icmp eq ptr %i.l, null
  br i1 %.not7.i, label %__dst_negative_advice.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void %i.l(ptr noundef %0, ptr noundef nonnull %i.h) #23, !inline_history !100
  br label %__dst_negative_advice.exit

__dst_negative_advice.exit:                       ; preds = %sk_rethink_txhash.exit, %bb.d, %bb.e
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @sock_release_reserved_memory(ptr noundef %0, i32 noundef range(i32 1, -2147483647) %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = and i32 %1, -4096                        ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 344        ; 3 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp ugt i32 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c, !prof !19

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "1336: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1336b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1336) #24, !srcloc !101
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.1, i32 1026, i32 2305, i64 16) #24, !srcloc !102
  tail call void asm sideeffect "1337: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1337b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1337) #24, !srcloc !103
  %.pre = load i32, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi i32 [ %.pre, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  %i.f = sub i32 %i.e, %i.a                       ; 2 uses
  store volatile i32 %i.f, ptr %i.b, align 8
  %i.g = getelementptr i8, ptr %0, i64 40
  %.val.i = load ptr, ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %.val.i, i64 248
  %.val.val.i = load ptr, ptr %i.h, align 8
  %.not.i = icmp eq ptr %.val.val.i, null
  br i1 %.not.i, label %sk_mem_reclaim.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %0, i64 348
  %i.j = load i32, ptr %i.i, align 4
  %.not.i.i = icmp eq i32 %i.e, %i.a
  br i1 %.not.i.i, label %sk_unused_reserved_mem.exit.i, label %bb.e, !prof !18

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr i8, ptr %0, i64 368
  %i.l = load i32, ptr %i.k, align 8
  %i.m = getelementptr i8, ptr %0, i64 192
  %i.n = load volatile i32, ptr %i.m, align 8
  %i.o = add i32 %i.l, %i.n
  %i.p = sub i32 %i.f, %i.o
  %i.q = tail call i32 @llvm.smax.i32(i32 %i.p, i32 0)
  br label %sk_unused_reserved_mem.exit.i

sk_unused_reserved_mem.exit.i:                    ; preds = %bb.e, %bb.d
  %.0.i.i = phi i32 [ %i.q, %bb.e ], [ 0, %bb.d ]
  %i.r = sub i32 %i.j, %.0.i.i                    ; 2 uses
  %i.s = icmp sgt i32 %i.r, 4095
  br i1 %i.s, label %bb.f, label %sk_mem_reclaim.exit

bb.f:                                             ; preds = %sk_unused_reserved_mem.exit.i
  tail call void @__sk_mem_reclaim(ptr noundef %0, i32 noundef %i.r) #25
  br label %sk_mem_reclaim.exit

sk_mem_reclaim.exit:                              ; preds = %bb.c, %sk_unused_reserved_mem.exit.i, %bb.f
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @sock_setsockopt(ptr nofree noundef readonly captures(none) %0, i32 %1, i32 noundef %2, ptr %3, i8 %4, i32 noundef %5) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call i32 @sk_setsockopt(ptr noundef %i.b, i32 poison, i32 noundef %2, ptr %3, i8 %4, i32 noundef %5) #25
  ret i32 %i.c
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @sk_getsockopt(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr %3, i8 %4, ptr nofree noundef readonly byval(%struct.sockptr_t) align 8 captures(none) %5) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %6 = alloca %union.anon.70, align 8             ; 73 uses
  %i.a = alloca i32, align 4                      ; 24 uses
  %7 = alloca %struct.ucred, align 4              ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %8 = alloca %struct.__kernel_sockaddr_storage, align 8 ; 6 uses
  %i.d = alloca [9 x i32], align 16               ; 4 uses
  %i.e = getelementptr i8, ptr %0, i64 288
  %i.f = load ptr, ptr %i.e, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 0, ptr %i.a, align 4, !annotation !29
  %i.g = load ptr, ptr %5, align 8                ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.i = load i8, ptr %i.h, align 8               ; 3 uses
  %i.j = trunc i8 %i.i to i1                      ; 4 uses
  br i1 %i.j, label %copy_from_sockptr.exit.thread, label %copy_from_sockptr.exit

copy_from_sockptr.exit.thread:                    ; preds = %bb.a
  %i.k = load i32, ptr %i.g, align 1              ; 2 uses
  store i32 %i.k, ptr %i.a, align 4
  br label %bb.b

copy_from_sockptr.exit:                           ; preds = %bb.a
  %i.l = call i64 @_copy_from_user(ptr noundef nonnull %i.a, ptr noundef %i.g, i64 noundef range(i64 0, 2147483648) 4) #23
  %i.m = and i64 %i.l, 4294967295
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %copy_from_sockptr.exit._crit_edge, label %.thread

copy_from_sockptr.exit._crit_edge:                ; preds = %copy_from_sockptr.exit
  %.pre = load i32, ptr %i.a, align 4
  br label %bb.b

bb.b:                                             ; preds = %copy_from_sockptr.exit._crit_edge, %copy_from_sockptr.exit.thread
  %i.n = phi i32 [ %.pre, %copy_from_sockptr.exit._crit_edge ], [ %i.k, %copy_from_sockptr.exit.thread ] ; 9 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  switch i32 %2, label %.thread [
    i32 1, label %sock_flag.exit
    i32 5, label %sock_flag.exit209
    i32 6, label %sock_flag.exit212
    i32 7, label %bb.d
    i32 8, label %bb.e
    i32 2, label %bb.f
    i32 15, label %bb.g
    i32 9, label %sock_flag.exit215
    i32 3, label %bb.h
    i32 38, label %bb.i
    i32 39, label %bb.j
    i32 4, label %bb.k
    i32 10, label %sock_flag.exit218
    i32 11, label %bb.l
    i32 12, label %bb.m
    i32 13, label %sock_flag.exit221
    i32 14, label %sock_get_timeout.exit
    i32 29, label %sock_flag.exit224
    i32 35, label %sock_flag.exit233
    i32 63, label %sock_flag.exit239
    i32 64, label %sock_flag.exit245
    i32 74, label %bb.ck
    i32 73, label %bb.cj
    i32 20, label %bb.s
    i32 66, label %bb.s
    i32 21, label %bb.y
    i32 67, label %bb.y
    i32 18, label %bb.ae
    i32 19, label %bb.af
    i32 16, label %bb.ag
    i32 76, label %bb.ai
    i32 83, label %bb.ak
    i32 17, label %bb.am
    i32 77, label %bb.aq
    i32 59, label %bb.az
    i32 28, label %bb.bh
    i32 30, label %bb.bk
    i32 34, label %bb.bl
    i32 31, label %bb.bn
    i32 36, label %bb.bo
    i32 75, label %sock_flag.exit278
    i32 82, label %sock_flag.exit281
    i32 40, label %sock_flag.exit284
    i32 41, label %sock_flag.exit287
    i32 42, label %bb.bp
    i32 43, label %sock_flag.exit290
    i32 25, label %bb.br
    i32 26, label %bb.bs
    i32 44, label %sock_flag.exit293
    i32 48, label %bb.bt
    i32 45, label %sock_flag.exit296
    i32 46, label %bb.bu
    i32 69, label %bb.bv
    i32 47, label %bb.bw
    i32 49, label %bb.bz
    i32 55, label %bb.ca
    i32 56, label %bb.cb
    i32 57, label %bb.cc
    i32 60, label %sock_flag.exit299
    i32 61, label %bb.ce
    i32 62, label %bb.cf
    i32 71, label %bb.cg
    i32 72, label %bb.ci
    i32 37, label %bb.r
    i32 65, label %sock_flag.exit251
  ]

sock_flag.exit:                                   ; preds = %bb.c
  %i.p = getelementptr i8, ptr %0, i64 96
  %i.q = load volatile i64, ptr %i.p, align 8
  %i.r = trunc i64 %i.q to i32
  %i.s = lshr i32 %i.r, 10
  %i.t = and i32 %i.s, 1
  store i32 %i.t, ptr %6, align 8
  br label %sock_get_timeout.exit

sock_flag.exit209:                                ; preds = %bb.c
  %i.u = getelementptr i8, ptr %0, i64 96
  %i.v = load volatile i64, ptr %i.u, align 8
  %i.w = trunc i64 %i.v to i32
  %i.x = lshr i32 %i.w, 13
  %i.y = and i32 %i.x, 1
  store i32 %i.y, ptr %6, align 8
  br label %sock_get_timeout.exit

sock_flag.exit212:                                ; preds = %bb.c
  %i.z = getelementptr i8, ptr %0, i64 96
  %i.aa = load volatile i64, ptr %i.z, align 8
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = lshr i32 %i.ab, 6
  %i.ad = and i32 %i.ac, 1
  store i32 %i.ad, ptr %6, align 8
  br label %sock_get_timeout.exit

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr i8, ptr %0, i64 568
  %i.af = load volatile i32, ptr %i.ae, align 8
  store i32 %i.af, ptr %6, align 8
  br label %sock_get_timeout.exit

bb.e:                                             ; preds = %bb.c
  %i.ag = getelementptr i8, ptr %0, i64 244
  %i.ah = load volatile i32, ptr %i.ag, align 4
  store i32 %i.ah, ptr %6, align 8
  br label %sock_get_timeout.exit

bb.f:                                             ; preds = %bb.c
  %i.ai = getelementptr i8, ptr %0, i64 19
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = and i8 %i.aj, 15
  %i.al = zext nneg i8 %i.ak to i32
  store i32 %i.al, ptr %6, align 8
  br label %sock_get_timeout.exit

bb.g:                                             ; preds = %bb.c
  %i.am = getelementptr i8, ptr %0, i64 19
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = lshr i8 %i.an, 4
  %i.ap = and i8 %i.ao, 1
  %i.aq = zext nneg i8 %i.ap to i32
  store i32 %i.aq, ptr %6, align 8
  br label %sock_get_timeout.exit

sock_flag.exit215:                                ; preds = %bb.c
  %i.ar = getelementptr i8, ptr %0, i64 96
  %i.as = load volatile i64, ptr %i.ar, align 8
  %i.at = trunc i64 %i.as to i32
  %i.au = lshr i32 %i.at, 3
  %i.av = and i32 %i.au, 1
  store i32 %i.av, ptr %6, align 8
  br label %sock_get_timeout.exit

bb.h:                                             ; preds = %bb.c
  %i.aw = getelementptr i8, ptr %0, i64 534
  %i.ax = load i16, ptr %i.aw, align 2
  %i.ay = zext i16 %i.ax to i32
  store i32 %i.ay, ptr %6, align 8
  br label %sock_get_timeout.exit

bb.i:                                             ; preds = %bb.c
  %i.az = getelementptr i8, ptr %0, i64 532
  %i.ba = load i16, ptr %i.az, align 4
  %i.bb = zext i16 %i.ba to i32
  store i32 %i.bb, ptr %6, align 8
  br label %sock_get_timeout.exit

bb.j:                                             ; preds = %bb.c
  %i.bc = getelementptr i8, ptr %0, i64 16
  %i.bd = load i16, ptr %i.bc, align 8
  %i.be = zext i16 %i.bd to i32
  store i32 %i.be, ptr %6, align 8
  br label %sock_get_timeout.exit

bb.k:                                             ; preds = %bb.c
  %i.bf = getelementptr i8, ptr %0, i64 284       ; 3 uses
  %i.bg = load i32, ptr %i.bf, align 4
  %.not.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i, label %sock_error.exit.thread, label %sock_error.exit, !prof !18

sock_error.exit:                                  ; preds = %bb.k
  %i.bh = call i32 asm sideeffect "xchgl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.bf, i32 0, ptr elementtype(i32) %i.bf) #24, !srcloc !40 ; 2 uses
  store i32 %i.bh, ptr %6, align 8
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %sock_error.exit.thread, label %sock_get_timeout.exit

sock_error.exit.thread:                           ; preds = %bb.k, %sock_error.exit
  %i.bj = getelementptr i8, ptr %0, i64 364       ; 2 uses
  %i.bk = call i32 asm sideeffect "xchgl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.bj, i32 0, ptr elementtype(i32) %i.bj) #24, !srcloc !104
  store i32 %i.bk, ptr %6, align 8
  br label %sock_get_timeout.exit

sock_flag.exit218:                                ; preds = %bb.c
  %i.bl = getelementptr i8, ptr %0, i64 96
  %i.bm = load volatile i64, ptr %i.bl, align 8
  %i.bn = trunc i64 %i.bm to i32
  %i.bo = lshr i32 %i.bn, 2
  %i.bp = and i32 %i.bo, 1
  store i32 %i.bp, ptr %6, align 8
  br label %sock_get_timeout.exit

bb.l:                                             ; preds = %bb.c
  %i.bq = getelementptr i8, ptr %0, i64 574
  %i.br = load i8, ptr %i.bq, align 2
  %i.bs = lshr i8 %i.br, 2
  %i.bt = and i8 %i.bs, 1
  %i.bu = zext nneg i8 %i.bt to i32
  store i32 %i.bu, ptr %6, align 8
  br label %sock_get_timeout.exit

bb.m:                                             ; preds = %bb.c
  %i.bv = getelementptr i8, ptr %0, i64 520
  %i.bw = load volatile i32, ptr %i.bv, align 8
  store i32 %i.bw, ptr %6, align 8
  br label %sock_get_timeout.exit

sock_flag.exit221:                                ; preds = %bb.c
  %i.bx = getelementptr i8, ptr %0, i64 96
  %i.by = load volatile i64, ptr %i.bx, align 8
  %i.bz = trunc i64 %i.by to i32
  %i.ca = lshr i32 %i.bz, 4
  %i.cb = and i32 %i.ca, 1
  store i32 %i.cb, ptr %6, align 8
  %i.cc = getelementptr i8, ptr %0, i64 576
  %i.cd = load volatile i64, ptr %i.cc, align 8
  %i.ce = udiv i64 %i.cd, 1000
  %i.cf = trunc i64 %i.ce to i32
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %i.cf, ptr %i.cg, align 4
  br label %sock_get_timeout.exit

sock_flag.exit224:                                ; preds = %bb.c
  %i.ch = getelementptr i8, ptr %0, i64 96        ; 3 uses
  %i.ci = load volatile i64, ptr %i.ch, align 8
  %i.cj = and i64 %i.ci, 2048
  %.not360 = icmp eq i64 %i.cj, 0
  br i1 %.not360, label %bb.n, label %sock_flag.exit227

sock_flag.exit227:                                ; preds = %sock_flag.exit224
  %i.ck = load volatile i64, ptr %i.ch, align 8
  %i.cl = and i64 %i.ck, 67108864
  %.not362 = icmp eq i64 %i.cl, 0
  br i1 %.not362, label %sock_flag.exit230, label %bb.n

sock_flag.exit230:                                ; preds = %sock_flag.exit227
  %i.cm = load volatile i64, ptr %i.ch, align 8
  %.in.i229.in = and i64 %i.cm, 4096
  %.in.i229.not = icmp eq i64 %.in.i229.in, 0
  %i.cn = zext i1 %.in.i229.not to i32
  br label %bb.n

bb.n:                                             ; preds = %sock_flag.exit230, %sock_flag.exit227, %sock_flag.exit224
  %i.co = phi i32 [ 0, %sock_flag.exit227 ], [ 0, %sock_flag.exit224 ], [ %i.cn, %sock_flag.exit230 ]
  store i32 %i.co, ptr %6, align 8
  br label %sock_get_timeout.exit

sock_flag.exit233:                                ; preds = %bb.c
  %i.cp = getelementptr i8, ptr %0, i64 96        ; 2 uses
  %i.cq = load volatile i64, ptr %i.cp, align 8
  %i.cr = and i64 %i.cq, 4096
  %.not358 = icmp eq i64 %i.cr, 0
  br i1 %.not358, label %bb.o, label %sock_flag.exit236

sock_flag.exit236:                                ; preds = %sock_flag.exit233
  %i.cs = load volatile i64, ptr %i.cp, align 8
  %.in.i235.in = and i64 %i.cs, 67108864
  %.in.i235.not = icmp eq i64 %.in.i235.in, 0
  %i.ct = zext i1 %.in.i235.not to i32
  br label %bb.o

bb.o:                                             ; preds = %sock_flag.exit236, %sock_flag.exit233
  %i.cu = phi i32 [ 0, %sock_flag.exit233 ], [ %i.ct, %sock_flag.exit236 ]
  store i32 %i.cu, ptr %6, align 8
  br label %sock_get_timeout.exit

sock_flag.exit239:                                ; preds = %bb.c
  %i.cv = getelementptr i8, ptr %0, i64 96        ; 2 uses
  %i.cw = load volatile i64, ptr %i.cv, align 8
  %i.cx = and i64 %i.cw, 2048
  %.not356 = icmp eq i64 %i.cx, 0
  br i1 %.not356, label %bb.p, label %sock_flag.exit242

sock_flag.exit242:                                ; preds = %sock_flag.exit239
  %i.cy = load volatile i64, ptr %i.cv, align 8
  %i.cz = trunc i64 %i.cy to i32
  %i.da = lshr i32 %i.cz, 26
  %i.db = and i32 %i.da, 1
  br label %bb.p

bb.p:                                             ; preds = %sock_flag.exit242, %sock_flag.exit239
  %i.dc = phi i32 [ 0, %sock_flag.exit239 ], [ %i.db, %sock_flag.exit242 ]
  store i32 %i.dc, ptr %6, align 8
  br label %sock_get_timeout.exit

sock_flag.exit245:                                ; preds = %bb.c
  %i.dd = getelementptr i8, ptr %0, i64 96        ; 2 uses
  %i.de = load volatile i64, ptr %i.dd, align 8
  %i.df = and i64 %i.de, 4096
  %.not354 = icmp eq i64 %i.df, 0
  br i1 %.not354, label %bb.q, label %sock_flag.exit248

sock_flag.exit248:                                ; preds = %sock_flag.exit245
  %i.dg = load volatile i64, ptr %i.dd, align 8
  %i.dh = trunc i64 %i.dg to i32
  %i.di = lshr i32 %i.dh, 26
  %i.dj = and i32 %i.di, 1
  br label %bb.q

bb.q:                                             ; preds = %sock_flag.exit248, %sock_flag.exit245
  %i.dk = phi i32 [ 0, %sock_flag.exit245 ], [ %i.dj, %sock_flag.exit248 ]
  store i32 %i.dk, ptr %6, align 8
  br label %sock_get_timeout.exit

sock_flag.exit251:                                ; preds = %bb.c
  %i.dl = getelementptr i8, ptr %0, i64 96
  %i.dm = load volatile i64, ptr %i.dl, align 8
  %i.dn = and i64 %i.dm, 67108864
  %.not352 = icmp eq i64 %i.dn, 0
  br i1 %.not352, label %sock_get_timeout.exit, label %bb.r

bb.r:                                             ; preds = %bb.c, %sock_flag.exit251
  %i.do = getelementptr i8, ptr %0, i64 352
  %i.dp = load volatile i32, ptr %i.do, align 8
  store i32 %i.dp, ptr %6, align 8
  %i.dq = getelementptr i8, ptr %0, i64 620
  %i.dr = load volatile i32, ptr %i.dq, align 4
  %i.ds = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %i.dr, ptr %i.ds, align 4
  br label %sock_get_timeout.exit

bb.s:                                             ; preds = %bb.c, %bb.c
  %i.dt = getelementptr i8, ptr %0, i64 272
  %i.du = load volatile i64, ptr %i.dt, align 8   ; 3 uses
  %i.dv = icmp eq i32 %2, 20
  %i.dw = icmp eq i64 %i.du, 9223372036854775807
  br i1 %i.dw, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dx = sdiv i64 %i.du, 1000
  %i.dy = srem i64 %i.du, 1000
  %i.dz = mul nsw i64 %i.dy, 1000
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sroa.8.0.i = phi i64 [ %i.dz, %bb.t ], [ 0, %bb.s ] ; 3 uses
  %.sroa.03.0.i = phi i64 [ %i.dx, %bb.t ], [ 0, %bb.s ] ; 3 uses
  br i1 %i.dv, label %bb.v, label %.critedge.i

bb.v:                                             ; preds = %bb.u
  %i.ea = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #26, !srcloc !22
  %i.eb = inttoptr i64 %i.ea to ptr
  %i.ec = getelementptr i8, ptr %i.eb, i64 16
  %i.ed = load i32, ptr %i.ec, align 8
  %i.ee = and i32 %i.ed, 2
  %.not.i.i.not.i = icmp eq i32 %i.ee, 0
  br i1 %.not.i.i.not.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ef = trunc i64 %.sroa.03.0.i to i32
  %i.eg = trunc nsw i64 %.sroa.8.0.i to i32
  store i32 %i.ef, ptr %6, align 8
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %i.eg, ptr %.sroa.52.0..sroa_idx.i, align 4
  br label %sock_get_timeout.exit

bb.x:                                             ; preds = %bb.v
  store i64 %.sroa.03.0.i, ptr %6, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %.sroa.8.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8
  br label %sock_get_timeout.exit

.critedge.i:                                      ; preds = %bb.u
  store i64 %.sroa.03.0.i, ptr %6, align 8
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %.sroa.8.0.i, ptr %.sroa.8.0..sroa_idx.i, align 8
  br label %sock_get_timeout.exit

bb.y:                                             ; preds = %bb.c, %bb.c
  %i.eh = getelementptr i8, ptr %0, i64 512
  %i.ei = load volatile i64, ptr %i.eh, align 8   ; 3 uses
  %i.ej = icmp eq i32 %2, 21
  %i.ek = icmp eq i64 %i.ei, 9223372036854775807
  br i1 %i.ek, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.el = sdiv i64 %i.ei, 1000
  %i.em = srem i64 %i.ei, 1000
  %i.en = mul nsw i64 %i.em, 1000
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.sroa.8.0.i253 = phi i64 [ %i.en, %bb.z ], [ 0, %bb.y ] ; 3 uses
  %.sroa.03.0.i254 = phi i64 [ %i.el, %bb.z ], [ 0, %bb.y ] ; 3 uses
  br i1 %i.ej, label %bb.ab, label %.critedge.i255

bb.ab:                                            ; preds = %bb.aa
  %i.eo = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #26, !srcloc !22
  %i.ep = inttoptr i64 %i.eo to ptr
  %i.eq = getelementptr i8, ptr %i.ep, i64 16
  %i.er = load i32, ptr %i.eq, align 8
  %i.es = and i32 %i.er, 2
  %.not.i.i.not.i258 = icmp eq i32 %i.es, 0
  br i1 %.not.i.i.not.i258, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.et = trunc i64 %.sroa.03.0.i254 to i32
  %i.eu = trunc nsw i64 %.sroa.8.0.i253 to i32
  store i32 %i.et, ptr %6, align 8
  %.sroa.52.0..sroa_idx.i259 = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %i.eu, ptr %.sroa.52.0..sroa_idx.i259, align 4
  br label %sock_get_timeout.exit

bb.ad:                                            ; preds = %bb.ab
  store i64 %.sroa.03.0.i254, ptr %6, align 8
  %.sroa.5.0..sroa_idx.i260 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %.sroa.8.0.i253, ptr %.sroa.5.0..sroa_idx.i260, align 8
  br label %sock_get_timeout.exit

.critedge.i255:                                   ; preds = %bb.aa
  store i64 %.sroa.03.0.i254, ptr %6, align 8
  %.sroa.8.0..sroa_idx.i256 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %.sroa.8.0.i253, ptr %.sroa.8.0..sroa_idx.i256, align 8
  br label %sock_get_timeout.exit

bb.ae:                                            ; preds = %bb.c
  %i.ev = getelementptr i8, ptr %0, i64 280
  %i.ew = load volatile i32, ptr %i.ev, align 8
  store i32 %i.ew, ptr %6, align 8
  br label %sock_get_timeout.exit

bb.af:                                            ; preds = %bb.c
  store i32 1, ptr %6, align 8
  br label %sock_get_timeout.exit

bb.ag:                                            ; preds = %bb.c
  %i.ex = getelementptr i8, ptr %0, i64 16
  %.val204 = load i16, ptr %i.ex, align 8
  switch i16 %.val204, label %.thread [
    i16 16, label %bb.ah
    i16 1, label %bb.ah
  ]

bb.ah:                                            ; preds = %bb.ag, %bb.ag
  %i.ey = getelementptr i8, ptr %0, i64 652
  %i.ez = load i8, ptr %i.ey, align 4
  %i.fa = and i8 %i.ez, 1
  %i.fb = zext nneg i8 %i.fa to i32
  store i32 %i.fb, ptr %6, align 8
  br label %sock_get_timeout.exit

bb.ai:                                            ; preds = %bb.c
  %i.fc = getelementptr i8, ptr %0, i64 16
  %.val206 = load i16, ptr %i.fc, align 8
  %i.fd = icmp eq i16 %.val206, 1
  br i1 %i.fd, label %bb.aj, label %.thread

bb.aj:                                            ; preds = %bb.ai
  %i.fe = getelementptr i8, ptr %0, i64 652
  %i.ff = load i8, ptr %i.fe, align 4
  %i.fg = lshr i8 %i.ff, 2
  %i.fh = and i8 %i.fg, 1
  %i.fi = zext nneg i8 %i.fh to i32
  store i32 %i.fi, ptr %6, align 8
  br label %sock_get_timeout.exit

bb.ak:                                            ; preds = %bb.c
  %i.fj = getelementptr i8, ptr %0, i64 16
  %.val205 = load i16, ptr %i.fj, align 8
  %i.fk = icmp eq i16 %.val205, 1
  br i1 %i.fk, label %bb.al, label %.thread

bb.al:                                            ; preds = %bb.ak
  %i.fl = getelementptr i8, ptr %0, i64 652
  %i.fm = load i8, ptr %i.fl, align 4
  %i.fn = lshr i8 %i.fm, 3
  %i.fo = and i8 %i.fn, 1
  %i.fp = zext nneg i8 %i.fo to i32
  store i32 %i.fp, ptr %6, align 8
  br label %sock_get_timeout.exit

bb.am:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.fq = icmp samesign ugt i32 %i.n, 12
  br i1 %i.fq, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i32 12, ptr %i.a, align 4
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.fr = getelementptr i8, ptr %0, i64 616       ; 2 uses
  call void @_raw_spin_lock(ptr noundef %i.fr) #23
  %i.fs = getelementptr i8, ptr %0, i64 624
  %i.ft = load ptr, ptr %i.fs, align 8
  %i.fu = getelementptr i8, ptr %0, i64 632
  %i.fv = load ptr, ptr %i.fu, align 8            ; 3 uses
  %i.fw = call i32 @pid_vnr(ptr noundef %i.ft) #23
  store i32 %i.fw, ptr %7, align 4
  %i.fx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i32 -1, ptr %i.fx, align 4
  %i.fy = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  store i32 -1, ptr %i.fy, align 4
  %.not.i262 = icmp eq ptr %i.fv, null
  br i1 %.not.i262, label %cred_to_ucred.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fz = getelementptr i8, ptr %i.fv, i64 24
  %i.ga = load i32, ptr %i.fz, align 8            ; 2 uses
  %i.gb = icmp eq i32 %i.ga, -1
  %i.gc = load i32, ptr @overflowuid, align 4
  %spec.select.i.i = select i1 %i.gb, i32 %i.gc, i32 %i.ga
  store i32 %spec.select.i.i, ptr %i.fy, align 4
  %i.gd = getelementptr i8, ptr %i.fv, i64 28
  %i.ge = load i32, ptr %i.gd, align 4            ; 2 uses
  %i.gf = icmp eq i32 %i.ge, -1
  %i.gg = load i32, ptr @overflowgid, align 4
  %spec.select.i11.i = select i1 %i.gf, i32 %i.gg, i32 %i.ge
  store i32 %spec.select.i11.i, ptr %i.fx, align 4
  br label %cred_to_ucred.exit

cred_to_ucred.exit:                               ; preds = %bb.ao, %bb.ap
end_hunk_0
begin_hunk_1_@sk_getsockopt:bb.a

bb.bp:                                            ; preds = %bb.c
  %i.jq = getelementptr i8, ptr %i.f, i64 32
  %i.jr = load volatile ptr, ptr %i.jq, align 32
  %i.js = getelementptr i8, ptr %i.jr, i64 184
  %i.jt = load ptr, ptr %i.js, align 8
  %.not188 = icmp eq ptr %i.jt, null
  br i1 %.not188, label %.thread, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ju = getelementptr i8, ptr %0, i64 140
  %i.jv = load volatile i32, ptr %i.ju, align 4
  store i32 %i.jv, ptr %6, align 8
  br label %sock_get_timeout.exit

sock_flag.exit290:                                ; preds = %bb.c
  %i.jw = getelementptr i8, ptr %0, i64 96
  %i.jx = load volatile i64, ptr %i.jw, align 8
  %i.jy = trunc i64 %i.jx to i32
  %i.jz = lshr i32 %i.jy, 20
  %i.ka = and i32 %i.jz, 1
  store i32 %i.ka, ptr %6, align 8
  br label %sock_get_timeout.exit

bb.br:                                            ; preds = %bb.c
  %i.kb = call fastcc i32 @sock_getbindtodevice(ptr noundef %0, ptr %3, i8 %4, ptr %i.g, i8 %i.i, i32 noundef %i.n) #25, !srcloc !111
  br label %.thread

bb.bs:                                            ; preds = %bb.c
  %i.kc = call i32 @sk_get_filter(ptr noundef %0, ptr %3, i8 %4, i32 noundef %i.n) #23 ; 3 uses
  store i32 %i.kc, ptr %i.a, align 4
  %i.kd = icmp slt i32 %i.kc, 0
  br i1 %i.kd, label %.thread, label %bb.cr

sock_flag.exit293:                                ; preds = %bb.c
  %i.ke = getelementptr i8, ptr %0, i64 96
  %i.kf = load volatile i64, ptr %i.ke, align 8
  %i.kg = trunc i64 %i.kf to i32
  %i.kh = lshr i32 %i.kg, 21
  %i.ki = and i32 %i.kh, 1
  store i32 %i.ki, ptr %6, align 8
  br label %sock_get_timeout.exit

bb.bt:                                            ; preds = %bb.c
  store i32 64, ptr %6, align 8
  br label %sock_get_timeout.exit

sock_flag.exit296:                                ; preds = %bb.c
  %i.kj = getelementptr i8, ptr %0, i64 96
  %i.kk = load volatile i64, ptr %i.kj, align 8
  %i.kl = trunc i64 %i.kk to i32
  %i.km = lshr i32 %i.kl, 22
  %i.kn = and i32 %i.km, 1
  store i32 %i.kn, ptr %6, align 8
  br label %sock_get_timeout.exit

bb.bu:                                            ; preds = %bb.c
  %i.ko = getelementptr i8, ptr %0, i64 232
  %i.kp = load volatile i32, ptr %i.ko, align 8
  store i32 %i.kp, ptr %6, align 8
  br label %sock_get_timeout.exit

bb.bv:                                            ; preds = %bb.c
  %i.kq = getelementptr i8, ptr %0, i64 242
  %i.kr = load volatile i8, ptr %i.kq, align 2
  %i.ks = zext i8 %i.kr to i32
  store i32 %i.ks, ptr %6, align 8
  br label %sock_get_timeout.exit

bb.bw:                                            ; preds = %bb.c
  %i.kt = icmp samesign ugt i32 %i.n, 7
  %i.ku = getelementptr i8, ptr %0, i64 504
  %i.kv = load volatile i64, ptr %i.ku, align 8   ; 2 uses
  br i1 %i.kt, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  store i64 %i.kv, ptr %6, align 8
  br label %sock_get_timeout.exit

bb.by:                                            ; preds = %bb.bw
  %i.kw = call i64 @llvm.umin.i64(i64 %i.kv, i64 4294967295)
  %i.kx = trunc nuw i64 %i.kw to i32
  store i32 %i.kx, ptr %6, align 8
  br label %sock_get_timeout.exit

bb.bz:                                            ; preds = %bb.c
  %i.ky = getelementptr i8, ptr %0, i64 124
  %i.kz = load volatile i32, ptr %i.ky, align 4
  store i32 %i.kz, ptr %6, align 8
  br label %sock_get_timeout.exit

bb.ca:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  call void @sk_get_meminfo(ptr noundef %0, ptr noundef nonnull %i.d) #25
  %i.la = load i32, ptr %i.a, align 4
  %i.lb = call i32 @llvm.umin.i32(i32 %i.la, i32 36) ; 2 uses
  store i32 %i.lb, ptr %i.a, align 4
  %i.lc = zext nneg i32 %i.lb to i64
  %i.ld = call fastcc i32 @copy_to_sockptr(ptr %3, i8 %4, ptr noundef nonnull %i.d, i64 noundef %i.lc) #25, !srcloc !112
  %.not187 = icmp eq i32 %i.ld, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  br i1 %.not187, label %bb.cr, label %.thread

bb.cb:                                            ; preds = %bb.c
  %i.le = getelementptr i8, ptr %0, i64 236
  %i.lf = load volatile i32, ptr %i.le, align 4   ; 2 uses
  %i.lg = icmp ugt i32 %i.lf, 64
  %spec.store.select = select i1 %i.lg, i32 %i.lf, i32 0
  store i32 %spec.store.select, ptr %6, align 8
  br label %sock_get_timeout.exit

bb.cc:                                            ; preds = %bb.c
  %i.lh = icmp samesign ult i32 %i.n, 8
  br i1 %i.lh, label %.thread, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.li = call fastcc i64 @sock_gen_cookie(ptr noundef %0) #25, !srcloc !113
  store i64 %i.li, ptr %6, align 8
  br label %sock_get_timeout.exit

sock_flag.exit299:                                ; preds = %bb.c
  %i.lj = getelementptr i8, ptr %0, i64 96
  %i.lk = load volatile i64, ptr %i.lj, align 8
  %i.ll = trunc i64 %i.lk to i32
  %i.lm = lshr i32 %i.ll, 18
  %i.ln = and i32 %i.lm, 1
  store i32 %i.ln, ptr %6, align 8
  br label %sock_get_timeout.exit

bb.ce:                                            ; preds = %bb.c
  %i.lo = getelementptr i8, ptr %0, i64 653
  %i.lp = load i8, ptr %i.lo, align 1
  %i.lq = zext i8 %i.lp to i32
  store i32 %i.lq, ptr %6, align 8
  %i.lr = getelementptr i8, ptr %0, i64 654
  %i.ls = load i8, ptr %i.lr, align 2
  %i.lt = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.lu = and i8 %i.ls, 3
  %i.lv = zext nneg i8 %i.lu to i32
  store i32 %i.lv, ptr %i.lt, align 4
  br label %sock_get_timeout.exit

bb.cf:                                            ; preds = %bb.c
  %i.lw = getelementptr i8, ptr %0, i64 20
  %i.lx = load volatile i32, ptr %i.lw, align 4
  store i32 %i.lx, ptr %6, align 8
  br label %sock_get_timeout.exit

bb.cg:                                            ; preds = %bb.c
  %.not184 = icmp eq i32 %i.n, 8
  br i1 %.not184, label %bb.ch, label %.thread

bb.ch:                                            ; preds = %bb.cg
  %i.ly = getelementptr i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.ly, align 8
  %i.lz = getelementptr i8, ptr %.val, i64 3968
  %i.ma = load i64, ptr %i.lz, align 64
  store i64 %i.ma, ptr %6, align 8
  br label %sock_get_timeout.exit

bb.ci:                                            ; preds = %bb.c
  %i.mb = getelementptr i8, ptr %0, i64 243
  %i.mc = load i8, ptr %i.mb, align 1
  %i.md = and i8 %i.mc, 3
  %i.me = zext nneg i8 %i.md to i32
  store i32 %i.me, ptr %6, align 8
  br label %sock_get_timeout.exit

bb.cj:                                            ; preds = %bb.c
  %i.mf = getelementptr i8, ptr %0, i64 344
  %i.mg = load volatile i32, ptr %i.mf, align 8
  store i32 %i.mg, ptr %6, align 8
  br label %sock_get_timeout.exit

bb.ck:                                            ; preds = %bb.c
  %i.mh = getelementptr i8, ptr %0, i64 16
  %i.mi = load volatile i16, ptr %i.mh, align 8
  %i.mj = and i16 %i.mi, -9
  %i.mk = icmp eq i16 %i.mj, 2
  br i1 %i.mk, label %bb.cl, label %.thread

bb.cl:                                            ; preds = %bb.ck
  %i.ml = getelementptr i8, ptr %0, i64 534
  %i.mm = load i16, ptr %i.ml, align 2
  %i.mn = icmp eq i16 %i.mm, 1
  br i1 %i.mn, label %sk_is_tcp.exit, label %.thread

sk_is_tcp.exit:                                   ; preds = %bb.cl
  %i.mo = getelementptr i8, ptr %0, i64 532
  %i.mp = load i16, ptr %i.mo, align 4
  %i.mq = icmp eq i16 %i.mp, 6
  br i1 %i.mq, label %bb.cm, label %.thread

bb.cm:                                            ; preds = %sk_is_tcp.exit
  %i.mr = getelementptr i8, ptr %0, i64 652
  %i.ms = load volatile i8, ptr %i.mr, align 4
  %i.mt = zext i8 %i.ms to i32
  store i32 %i.mt, ptr %6, align 8
  br label %sock_get_timeout.exit

sock_get_timeout.exit:                            ; preds = %bb.cb, %.critedge.i255, %bb.ad, %bb.ac, %.critedge.i, %bb.x, %bb.w, %bb.c, %bb.bx, %bb.by, %sock_flag.exit251, %bb.r, %sock_error.exit, %sock_error.exit.thread, %bb.cm, %bb.cj, %bb.ci, %bb.ch, %bb.cf, %bb.ce, %sock_flag.exit299, %bb.cd, %bb.bz, %bb.bv, %bb.bu, %sock_flag.exit296, %bb.bt, %sock_flag.exit293, %sock_flag.exit290, %bb.bq, %sock_flag.exit287, %sock_flag.exit284, %sock_flag.exit281, %sock_flag.exit278, %bb.bo, %bb.bm, %bb.bk, %bb.al, %bb.aj, %bb.ah, %bb.af, %bb.ae, %bb.q, %bb.p, %bb.o, %bb.n, %sock_flag.exit221, %bb.m, %bb.l, %sock_flag.exit218, %bb.j, %bb.i, %bb.h, %sock_flag.exit215, %bb.g, %bb.f, %bb.e, %bb.d, %sock_flag.exit212, %sock_flag.exit209, %sock_flag.exit
  %.0170 = phi i32 [ 4, %sock_flag.exit ], [ 4, %sock_flag.exit209 ], [ 4, %sock_flag.exit212 ], [ 4, %bb.d ], [ 4, %bb.e ], [ 4, %bb.f ], [ 4, %bb.g ], [ 4, %sock_flag.exit215 ], [ 4, %bb.h ], [ 4, %bb.i ], [ 4, %bb.j ], [ 4, %sock_error.exit.thread ], [ 4, %sock_error.exit ], [ 4, %sock_flag.exit218 ], [ 4, %bb.l ], [ 4, %bb.m ], [ 8, %sock_flag.exit221 ], [ 4, %bb.c ], [ 4, %bb.n ], [ 4, %bb.o ], [ 4, %bb.p ], [ 4, %bb.q ], [ 8, %bb.r ], [ 8, %sock_flag.exit251 ], [ 16, %bb.ad ], [ 16, %.critedge.i ], [ 4, %bb.ae ], [ 4, %bb.af ], [ 4, %bb.ah ], [ 4, %bb.aj ], [ 4, %bb.al ], [ 4, %bb.bk ], [ 4, %bb.bm ], [ 4, %bb.bo ], [ 4, %sock_flag.exit278 ], [ 4, %sock_flag.exit281 ], [ 4, %sock_flag.exit284 ], [ 4, %sock_flag.exit287 ], [ 4, %bb.bq ], [ 4, %sock_flag.exit290 ], [ 4, %sock_flag.exit293 ], [ 4, %bb.bt ], [ 4, %sock_flag.exit296 ], [ 4, %bb.bu ], [ 4, %bb.bv ], [ 8, %bb.bx ], [ 4, %bb.by ], [ 4, %bb.bz ], [ 4, %bb.cb ], [ 16, %.critedge.i255 ], [ 8, %bb.cd ], [ 4, %sock_flag.exit299 ], [ 8, %bb.ce ], [ 4, %bb.cf ], [ 8, %bb.ch ], [ 4, %bb.ci ], [ 4, %bb.cj ], [ 4, %bb.cm ], [ 8, %bb.w ], [ 16, %bb.x ], [ 8, %bb.ac ] ; 3 uses
  %i.mu = load i32, ptr %i.a, align 4             ; 2 uses
  %i.mv = icmp sgt i32 %i.mu, %.0170
  br i1 %i.mv, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %sock_get_timeout.exit
  store i32 %.0170, ptr %i.a, align 4
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %sock_get_timeout.exit
  %i.mw = phi i32 [ %.0170, %bb.cn ], [ %i.mu, %sock_get_timeout.exit ] ; 2 uses
  %i.mx = sext i32 %i.mw to i64                   ; 3 uses
  %i.my = trunc i8 %4 to i1
  br i1 %i.my, label %copy_to_sockptr.exit305.thread, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.mz = icmp ugt i32 %i.mw, 16
  br i1 %i.mz, label %bb.cq, label %check_copy_size.exit.i.i301, !prof !19

bb.cq:                                            ; preds = %bb.cp
  call void @__copy_overflow(i32 noundef range(i32 0, -2147483648) 16, i64 noundef range(i64 -2147483648, 2147483648) %i.mx) #23
  br label %.thread

check_copy_size.exit.i.i301:                      ; preds = %bb.cp
  %i.na = call i64 @_copy_to_user(ptr noundef %3, ptr noundef nonnull %6, i64 noundef range(i64 -2147483648, 2147483648) %i.mx) #23
  %i.nb = and i64 %i.na, 4294967295
  %i.nc = icmp eq i64 %i.nb, 0
  br i1 %i.nc, label %bb.cr, label %.thread

copy_to_sockptr.exit305.thread:                   ; preds = %bb.co
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr nonnull align 8 %6, i64 range(i64 -2147483648, 2147483648) %i.mx, i1 false)
  br label %bb.cr

bb.cr:                                            ; preds = %copy_to_sockptr.exit305.thread, %check_copy_size.exit.i.i301, %bb.bs, %cred_to_ucred.exit, %bb.bg, %bb.bj, %bb.ca
  br i1 %i.j, label %copy_to_sockptr.exit311.thread, label %copy_to_sockptr.exit311

copy_to_sockptr.exit311.thread:                   ; preds = %bb.cr
  %i.nd = load i32, ptr %i.a, align 4
  store i32 %i.nd, ptr %i.g, align 1
  br label %bb.cs

copy_to_sockptr.exit311:                          ; preds = %bb.cr
  %i.ne = call i64 @_copy_to_user(ptr noundef %i.g, ptr noundef nonnull %i.a, i64 noundef range(i64 -2147483648, 2147483648) 4) #23
  %.fr364 = freeze i64 %i.ne
  %i.nf = and i64 %.fr364, 4294967295
  %.not198 = icmp eq i64 %i.nf, 0
  br i1 %.not198, label %bb.cs, label %.thread

bb.cs:                                            ; preds = %copy_to_sockptr.exit311.thread, %copy_to_sockptr.exit311
  br label %.thread

.thread:                                          ; preds = %bb.cq, %bb.bl, %bb.ag, %bb.ck, %bb.cl, %bb.bd, %copy_to_sockptr.exit272, %bb.az, %bb.cs, %copy_to_sockptr.exit311, %.thread338, %check_copy_size.exit.i.i301, %bb.c, %sk_is_tcp.exit, %bb.cg, %bb.cc, %bb.bs, %bb.bp, %bb.ak, %bb.ai, %bb.b, %copy_from_sockptr.exit, %cred_to_ucred.exit, %bb.bg, %bb.bj, %bb.ca, %bb.br, %bb.bn, %bb.ay
  %.5 = phi i32 [ -22, %bb.cg ], [ -14, %copy_from_sockptr.exit ], [ -95, %sk_is_tcp.exit ], [ -92, %bb.c ], [ -61, %bb.az ], [ -14, %check_copy_size.exit.i.i301 ], [ -22, %bb.b ], [ -95, %bb.ag ], [ -95, %bb.ai ], [ -14, %cred_to_ucred.exit ], [ %.1, %bb.ay ], [ %i.hv, %bb.bg ], [ -14, %bb.bj ], [ -95, %bb.ak ], [ %i.it, %bb.bn ], [ -95, %bb.bl ], [ %i.kb, %bb.br ], [ -95, %bb.bp ], [ -14, %bb.ca ], [ %i.kc, %bb.bs ], [ -22, %bb.cc ], [ -95, %bb.ck ], [ -34, %bb.bd ], [ %.3.ph, %.thread338 ], [ 0, %bb.cs ], [ -14, %copy_to_sockptr.exit311 ], [ -95, %bb.cl ], [ -14, %copy_to_sockptr.exit272 ], [ -14, %bb.cq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  ret i32 %.5
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @copy_to_sockptr(ptr %0, i8 %1, ptr noundef %2, i64 noundef range(i64 -2147483648, 2147483648) %3) unnamed_addr #5 align 16 prefalign(16) {
bb.a:
  %i.a = trunc i8 %1 to i1
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %3, 2147483647
  br i1 %i.b, label %bb.c, label %check_copy_size.exit.i, !prof !19

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "275: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 275b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 275) #24, !srcloc !42
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.459, i32 57, i32 2307, i64 16) #24, !srcloc !43
  tail call void asm sideeffect "276: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 276b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 276) #24, !srcloc !44
  br label %copy_to_user.exit.i

check_copy_size.exit.i:                           ; preds = %bb.b
  %i.c = tail call i64 @_copy_to_user(ptr noundef %0, ptr noundef %2, i64 noundef range(i64 -2147483648, 2147483648) %3) #23
  br label %copy_to_user.exit.i

copy_to_user.exit.i:                              ; preds = %check_copy_size.exit.i, %bb.c
  %.0.i.i = phi i64 [ %i.c, %check_copy_size.exit.i ], [ %3, %bb.c ]
  %i.d = trunc i64 %.0.i.i to i32
  br label %copy_to_sockptr_offset.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %2, i64 range(i64 -2147483648, 2147483648) %3, i1 false)
  br label %copy_to_sockptr_offset.exit

copy_to_sockptr_offset.exit:                      ; preds = %copy_to_user.exit.i, %bb.d
  %.0.i = phi i32 [ 0, %bb.d ], [ %i.d, %copy_to_user.exit.i ]
  ret i32 %.0.i
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc noundef ptr @get_pid(ptr noundef returned %0) unnamed_addr #5 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %refcount_inc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %0, i32 1, ptr nonnull elementtype(i32) %0) #24, !srcloc !35 ; 3 uses
  %.not10.i.i.i = icmp eq i32 %i.a, 0
  br i1 %.not10.i.i.i, label %.sink.split.i.i.i, label %bb.c, !prof !19

bb.c:                                             ; preds = %bb.b
  %i.b = add i32 %i.a, 1
  %i.c = or i32 %i.b, %i.a
  %.not11.i.i.i = icmp sgt i32 %i.c, -1
  br i1 %.not11.i.i.i, label %refcount_inc.exit, label %.sink.split.i.i.i, !prof !18

.sink.split.i.i.i:                                ; preds = %bb.c, %bb.b
  %.sink.i.i.i = phi i32 [ 2, %bb.b ], [ 1, %bb.c ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %0, i32 noundef %.sink.i.i.i) #23
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %.sink.split.i.i.i, %bb.c, %bb.a
  ret ptr %0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pidfd_prepare(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @put_unused_fd(i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @fd_install(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc ptr @sk_get_peer_cred(ptr noundef %0) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 616        ; 2 uses
  tail call void @_raw_spin_lock(ptr noundef %i.a) #23
  %i.b = getelementptr i8, ptr %0, i64 632
  %i.c = load ptr, ptr %i.b, align 8              ; 5 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %get_cred.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.c, i64 168
  store i32 0, ptr %i.d, align 8
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock addq $1, $0", "=*m,er,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) %i.c, i64 1, ptr nonnull elementtype(i64) %i.c) #24, !srcloc !45
  br label %get_cred.exit

get_cred.exit:                                    ; preds = %bb.a, %bb.b
  tail call void @_raw_spin_unlock(ptr noundef %i.a) #23
  ret ptr %i.c
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -14, 1) i32 @groups_to_user(ptr %0, i8 %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = getelementptr i8, ptr %2, i64 4          ; 3 uses
  %i.c = load i32, ptr %i.b, align 4
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr i8, ptr %2, i64 8          ; 2 uses
  %i.f = trunc i8 %1 to i1
  br i1 %i.f, label %copy_to_sockptr_offset.exit.thread.us, label %copy_to_sockptr_offset.exit

copy_to_sockptr_offset.exit.thread.us:            ; preds = %.lr.ph, %copy_to_sockptr_offset.exit.thread.us
  %indvars.iv19 = phi i64 [ %indvars.iv.next20, %copy_to_sockptr_offset.exit.thread.us ], [ 0, %.lr.ph ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.g = getelementptr [4 x i8], ptr %i.e, i64 %indvars.iv19
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %i.i = icmp eq i32 %i.h, -1
  %i.j = load i32, ptr @overflowgid, align 4
  %spec.select.i.us = select i1 %i.i, i32 %i.j, i32 %i.h
  %i.k = shl nuw nsw i64 %indvars.iv19, 2
  %i.l = getelementptr i8, ptr %0, i64 %i.k
  store i32 %spec.select.i.us, ptr %i.l, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1 ; 2 uses
  %i.m = load i32, ptr %i.b, align 4
  %i.n = sext i32 %i.m to i64
  %i.o = icmp slt i64 %indvars.iv.next20, %i.n
  br i1 %i.o, label %copy_to_sockptr_offset.exit.thread.us, label %._crit_edge, !llvm.loop !114

copy_to_sockptr_offset.exit:                      ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.lr.ph ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.p = getelementptr [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.q = load i32, ptr %i.p, align 4              ; 2 uses
  %i.r = icmp eq i32 %i.q, -1
  %i.s = load i32, ptr @overflowgid, align 4
  %spec.select.i = select i1 %i.r, i32 %i.s, i32 %i.q
  store i32 %spec.select.i, ptr %i.a, align 4
  %i.t = shl nuw nsw i64 %indvars.iv, 2
  %i.u = getelementptr i8, ptr %0, i64 %i.t
  %i.v = call i64 @_copy_to_user(ptr noundef %i.u, ptr noundef nonnull %i.a, i64 noundef 4) #23
  %i.w = and i64 %i.v, 4294967295
  %.not = icmp eq i64 %i.w, 0
end_hunk_1
