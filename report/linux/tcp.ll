Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/tcp?download=true
inline.NumInlined: 912
inline.NumDeleted: 363
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@do_tcp_getsockopt:bb.a

bb.cv:                                            ; preds = %bb.cn, %bb.cu
  %.not201 = icmp eq i32 %i.ke, 0
  br i1 %.not201, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.kq = load i32, ptr %i.b, align 4
  %i.kr = sext i32 %i.kq to i64
  %i.ks = call fastcc i32 @copy_to_sockptr(ptr %3, i8 %4, ptr noundef nonnull %10, i64 noundef %i.kr) #21, !srcloc !154
  %.not202 = icmp eq i32 %i.ks, 0
  %spec.select = select i1 %.not202, i32 0, i32 -14
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv, %bb.cl, %bb.ck, %bb.cj, %copy_to_sockptr.exit342, %bb.ce, %copy_from_sockptr.exit337, %bb.ch
  %.4 = phi i32 [ -22, %bb.cl ], [ -14, %copy_from_sockptr.exit337 ], [ %i.jt, %bb.ch ], [ -22, %bb.ce ], [ -14, %copy_to_sockptr.exit342 ], [ -14, %bb.cj ], [ -22, %bb.ck ], [ %i.ke, %bb.cv ], [ %spec.select, %bb.cw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %tcp_can_repair_sock.exit.thread

bb.cy:                                            ; preds = %bb.b
  %.val.i344 = load ptr, ptr %i.e, align 8
  %i.kt = getelementptr i8, ptr %.val.i344, i64 112
  %i.ku = load ptr, ptr %i.kt, align 16
  %i.kv = call zeroext i1 @sockopt_ns_capable(ptr noundef %i.ku, i32 noundef 12) #20
  br i1 %i.kv, label %tcp_can_repair_sock.exit, label %tcp_can_repair_sock.exit.thread

tcp_can_repair_sock.exit:                         ; preds = %bb.cy
  %i.kw = getelementptr i8, ptr %0, i64 18
  %i.kx = load volatile i8, ptr %i.kw, align 2
  %.not469 = icmp eq i8 %i.kx, 10
  %spec.select468 = select i1 %.not469, i32 -1, i32 -92
  br label %tcp_can_repair_sock.exit.thread

bb.cz:                                            ; preds = %bb.b, %bb.b
  call void @sockopt_lock_sock(ptr noundef %0) #20
  call void @sockopt_release_sock(ptr noundef %0) #20
  br label %tcp_can_repair_sock.exit.thread

bb.da:                                            ; preds = %bb.b
  %i.ky = getelementptr i8, ptr %0, i64 1200
  %i.kz = load volatile i32, ptr %i.ky, align 8
  br label %.sink.split

bb.db:                                            ; preds = %bb.b
  %i.la = getelementptr i8, ptr %0, i64 1196
  %i.lb = load volatile i32, ptr %i.la, align 4
  %i.lc = mul i32 %i.lb, 1000
  br label %.sink.split

bb.dc:                                            ; preds = %bb.b
  %i.ld = getelementptr i8, ptr %0, i64 1204
  %i.le = load volatile i32, ptr %i.ld, align 4
  %i.lf = mul i32 %i.le, 1000
  br label %.sink.split

.sink.split.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i8 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.sink.split, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.sink.split.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.019.i.epil.init = phi i32 [ 1, %.lr.ph.i.preheader ], [ %i.cb, %.sink.split.loopexit.unr-lcssa ]
  %.01118.i.epil.init = phi i32 [ 1, %.lr.ph.i.preheader ], [ %spec.select.i.3, %.sink.split.loopexit.unr-lcssa ]
  %lcmp.mod506 = icmp ne i8 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod506)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.019.i.epil = phi i32 [ %i.lh, %.lr.ph.i.epil ], [ %.019.i.epil.init, %.lr.ph.i.epil.preheader ]
  %.01118.i.epil = phi i32 [ %spec.select.i.epil, %.lr.ph.i.epil ], [ %.01118.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i8 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.lg = shl i32 %.01118.i.epil, 1
  %spec.select.i.epil = call i32 @llvm.smin.i32(i32 %i.lg, i32 120) ; 2 uses
  %i.lh = add i32 %spec.select.i.epil, %.019.i.epil ; 2 uses
  %epil.iter.next = add i8 %epil.iter, 1          ; 2 uses
  %epil.iter.cmp.not = icmp eq i8 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.sink.split, label %.lr.ph.i.epil, !llvm.loop !142

.sink.split:                                      ; preds = %.sink.split.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.b, %bb.b, %.preheader.i, %bb.w, %bb.h, %bb.i, %keepalive_time_when.exit, %keepalive_intvl_when.exit, %keepalive_probes.exit, %bb.r, %bb.x, %bb.aj, %bb.at, %bb.au, %bb.aw, %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.bj, %bb.bp, %bb.bq, %bb.br, %bb.da, %bb.db, %bb.dc, %bb.g, %bb.v, %bb.be, %bb.bd, %bb.bo, %bb.bn
  %.sink = phi i32 [ %i.hx, %bb.bn ], [ %i.hy, %bb.bo ], [ %i.gr, %bb.bd ], [ %i.gt, %bb.be ], [ %i.bo, %bb.v ], [ %i.ad, %bb.g ], [ %i.lf, %bb.dc ], [ %i.lc, %bb.db ], [ %i.kz, %bb.da ], [ 0, %bb.b ], [ %i.ij, %bb.br ], [ %i.if, %bb.bq ], [ %i.ia, %bb.bp ], [ %i.hj, %bb.bj ], [ %i.hh, %bb.bi ], [ %i.hc, %bb.bh ], [ %i.gx, %bb.bg ], [ %i.gv, %bb.bf ], [ %i.fr, %bb.aw ], [ %i.fl, %bb.au ], [ 0, %bb.b ], [ %i.fh, %bb.at ], [ %i.di, %bb.aj ], [ %i.cd, %bb.x ], [ %i.ah, %bb.h ], [ %i.bh, %bb.r ], [ %i.bc, %keepalive_probes.exit ], [ %i.ax, %keepalive_intvl_when.exit ], [ %i.ar, %keepalive_time_when.exit ], [ %i.al, %bb.i ], [ 0, %bb.w ], [ 1, %.preheader.i ], [ %i.cb, %.sink.split.loopexit.unr-lcssa ], [ %i.lh, %.lr.ph.i.epil ]
  store i32 %.sink, ptr %i.a, align 4
  br label %bb.dd

bb.dd:                                            ; preds = %.sink.split, %bb.s, %bb.f
  br i1 %i.i, label %copy_to_sockptr.exit349.thread, label %copy_to_sockptr.exit349

copy_to_sockptr.exit349.thread:                   ; preds = %bb.dd
  %i.li = load i32, ptr %i.b, align 4             ; 2 uses
  store i32 %i.li, ptr %i.f, align 1
  br label %bb.de

copy_to_sockptr.exit349:                          ; preds = %bb.dd
  %i.lj = call i64 @_copy_to_user(ptr noundef %i.f, ptr noundef nonnull %i.b, i64 noundef range(i64 -2147483648, 2147483648) 4) #20
  %i.lk = and i64 %i.lj, 4294967295
  %.not239 = icmp eq i64 %i.lk, 0
  br i1 %.not239, label %copy_to_sockptr.exit349._crit_edge, label %tcp_can_repair_sock.exit.thread

copy_to_sockptr.exit349._crit_edge:               ; preds = %copy_to_sockptr.exit349
  %.pre484 = load i32, ptr %i.b, align 4
  br label %bb.de

bb.de:                                            ; preds = %copy_to_sockptr.exit349._crit_edge, %copy_to_sockptr.exit349.thread
  %i.ll = phi i32 [ %.pre484, %copy_to_sockptr.exit349._crit_edge ], [ %i.li, %copy_to_sockptr.exit349.thread ] ; 2 uses
  %i.lm = sext i32 %i.ll to i64                   ; 3 uses
  %i.ln = trunc i8 %4 to i1
  br i1 %i.ln, label %copy_to_sockptr.exit354.thread, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.lo = icmp ugt i32 %i.ll, 4
  br i1 %i.lo, label %bb.dg, label %copy_to_sockptr.exit354, !prof !27

bb.dg:                                            ; preds = %bb.df
  call void @__copy_overflow(i32 noundef range(i32 0, -2147483648) 4, i64 noundef range(i64 -2147483648, 2147483648) %i.lm) #20
  br label %tcp_can_repair_sock.exit.thread

copy_to_sockptr.exit354.thread:                   ; preds = %bb.de
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr nonnull align 4 %i.a, i64 range(i64 -2147483648, 2147483648) %i.lm, i1 false)
  br label %bb.dh

copy_to_sockptr.exit354:                          ; preds = %bb.df
  %i.lp = call i64 @_copy_to_user(ptr noundef %3, ptr noundef nonnull %i.a, i64 noundef range(i64 -2147483648, 2147483648) %i.lm) #20
  %.fr474 = freeze i64 %i.lp
  %i.lq = and i64 %.fr474, 4294967295
  %i.lr = icmp eq i64 %i.lq, 0
  br i1 %i.lr, label %bb.dh, label %tcp_can_repair_sock.exit.thread

bb.dh:                                            ; preds = %bb.cb, %copy_to_sockptr.exit332, %copy_to_sockptr.exit332.thread, %copy_to_sockptr.exit292, %copy_to_sockptr.exit292.thread, %copy_to_sockptr.exit354.thread, %copy_to_sockptr.exit354
  br label %tcp_can_repair_sock.exit.thread

tcp_can_repair_sock.exit.thread:                  ; preds = %bb.dg, %tcp_can_repair_sock.exit, %bb.cy, %bb.dh, %copy_to_sockptr.exit354, %bb.bw, %copy_to_sockptr.exit322, %copy_to_sockptr.exit292, %copy_to_sockptr.exit349, %bb.b, %copy_to_sockptr.exit332, %copy_from_sockptr.exit317, %bb.bc, %bb.av, %bb.ao, %copy_to_sockptr.exit297, %copy_from_sockptr.exit287, %bb.al, %copy_to_sockptr.exit282, %copy_from_sockptr.exit277, %copy_from_sockptr.exit.thread, %copy_from_sockptr.exit, %bb.cz, %bb.cx, %bb.ca, %bb.by, %bb.bb, %bb.as, %bb.ai, %bb.ab
  %.5 = phi i32 [ -92, %bb.cz ], [ -14, %copy_from_sockptr.exit ], [ %spec.select468, %tcp_can_repair_sock.exit ], [ -92, %bb.b ], [ -14, %bb.dg ], [ -14, %copy_to_sockptr.exit349 ], [ %.0, %bb.ab ], [ %.1, %bb.ai ], [ -22, %copy_from_sockptr.exit.thread ], [ -14, %copy_from_sockptr.exit277 ], [ %.242, %bb.al ], [ -14, %copy_to_sockptr.exit282 ], [ -14, %copy_to_sockptr.exit332 ], [ -1, %bb.cy ], [ %.244, %bb.ao ], [ -14, %copy_to_sockptr.exit297 ], [ -14, %copy_to_sockptr.exit322 ], [ -14, %copy_from_sockptr.exit287 ], [ %.2, %bb.as ], [ %.4, %bb.cx ], [ %.3, %bb.bb ], [ -22, %bb.av ], [ -22, %bb.bc ], [ -22, %bb.bw ], [ -14, %copy_from_sockptr.exit317 ], [ -14, %bb.by ], [ -14, %bb.ca ], [ -14, %copy_to_sockptr.exit292 ], [ 0, %bb.dh ], [ -14, %copy_to_sockptr.exit354 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %.5
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @copy_to_sockptr(ptr %0, i8 %1, ptr noundef %2, i64 noundef range(i64 -2147483648, 2147483648) %3) unnamed_addr #6 align 16 prefalign(16) {
bb.a:
  %i.a = trunc i8 %1 to i1
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %3, 2147483647
  br i1 %i.b, label %bb.c, label %check_copy_size.exit.i.i, !prof !27

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "312: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 312b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 312) #19, !srcloc !39
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.3, ptr nonnull @.str.16, i32 57, i32 2307, i64 16) #19, !srcloc !40
  tail call void asm sideeffect "313: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 313b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 313) #19, !srcloc !41
  br label %copy_to_user.exit.i

check_copy_size.exit.i.i:                         ; preds = %bb.b
  %i.c = tail call i64 @_copy_to_user(ptr noundef %0, ptr noundef %2, i64 noundef range(i64 -2147483648, 2147483648) %3) #20
  br label %copy_to_user.exit.i

copy_to_user.exit.i:                              ; preds = %check_copy_size.exit.i.i, %bb.c
  %.0.i.i = phi i64 [ %i.c, %check_copy_size.exit.i.i ], [ %3, %bb.c ]
  %i.d = trunc i64 %.0.i.i to i32
  br label %copy_to_sockptr_offset.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %2, i64 range(i64 -2147483648, 2147483648) %3, i1 false)
  br label %copy_to_sockptr_offset.exit

copy_to_sockptr_offset.exit:                      ; preds = %copy_to_user.exit.i, %bb.d
  %.0.i = phi i32 [ 0, %bb.d ], [ %i.d, %copy_to_user.exit.i ]
  ret i32 %.0.i
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @tcp_fastopen_get_cipher(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @check_zeroed_sockptr(ptr %0, i8 %1, i64 noundef range(i64 -2147483712, 2147483584) %2) unnamed_addr #6 align 16 {
bb.a:
  %i.a = trunc i8 %1 to i1
  %i.b = getelementptr i8, ptr %0, i64 64         ; 2 uses
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @check_zeroed_user(ptr noundef %i.b, i64 noundef %2) #20
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @memchr_inv(ptr noundef %i.b, i32 noundef 0, i64 noundef %2) #20
  %i.e = icmp eq ptr %i.d, null
  %i.f = zext i1 %i.e to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.f, %bb.c ], [ %i.c, %bb.b ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @tcp_zerocopy_receive(ptr noundef %0, ptr nofree noundef captures(none) initializes((56, 60)) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %struct.msghdr, align 8             ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 9 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %i.e = alloca i64, align 8                      ; 8 uses
  %i.f = alloca [32 x ptr], align 16              ; 8 uses
  %i.g = alloca i32, align 4                      ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i32 0, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i32 0, ptr %i.d, align 4, !annotation !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  %i.h = load i64, ptr %1, align 8                ; 6 uses
  store i64 %i.h, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  %i.i = getelementptr i8, ptr %1, i64 32         ; 3 uses
  %i.j = load i32, ptr %i.i, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  %i.k = getelementptr i8, ptr %0, i64 1472       ; 3 uses
  %i.l = load i32, ptr %i.k, align 64             ; 4 uses
  store i32 %i.l, ptr %i.g, align 4
  %i.m = getelementptr i8, ptr %0, i64 18         ; 3 uses
  %i.n = load volatile i8, ptr %i.m, align 2
  %i.o = zext nneg i8 %i.n to i32
  %i.p = shl nuw i32 1, %i.o
  %i.q = and i32 %i.p, 12
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %sock_flag.exit.i, label %tcp_inq.exit

sock_flag.exit.i:                                 ; preds = %bb.a
  %i.r = getelementptr i8, ptr %0, i64 96         ; 2 uses
  %i.s = load volatile i64, ptr %i.r, align 32
  %i.t = and i64 %i.s, 4
  %.not23.i = icmp eq i64 %i.t, 0
  br i1 %.not23.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %sock_flag.exit.i
  %i.u = getelementptr i8, ptr %0, i64 1494
  %i.v = load i16, ptr %i.u, align 2
  %.not18.i = icmp eq i16 %i.v, 0
  br i1 %.not18.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr i8, ptr %0, i64 2256
  %i.x = load i32, ptr %i.w, align 16             ; 2 uses
  %i.y = sub i32 %i.x, %i.l                       ; 2 uses
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr i8, ptr %0, i64 1704
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = sub i32 %i.x, %i.ab
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %tcp_inq.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %sock_flag.exit.i
  %i.ae = getelementptr i8, ptr %0, i64 1704
  %i.af = load i32, ptr %i.ae, align 8            ; 2 uses
  %.not19.i = icmp eq i32 %i.af, %i.l
  br i1 %.not19.i, label %tcp_inq.exit, label %sock_flag.exit22.i

sock_flag.exit22.i:                               ; preds = %bb.e
  %i.ag = sub i32 %i.af, %i.l
  %i.ah = load volatile i64, ptr %i.r, align 32
  %.in.i21.in.i = shl i64 %i.ah, 62
  %sext.i = ashr i64 %.in.i21.in.i, 63
  %i.ai = trunc nsw i64 %sext.i to i32
  %spec.select.i = add i32 %i.ag, %i.ai
  br label %tcp_inq.exit

tcp_inq.exit:                                     ; preds = %bb.a, %bb.d, %bb.e, %sock_flag.exit22.i
  %.0.i = phi i32 [ 0, %bb.e ], [ 0, %bb.a ], [ %spec.select.i, %sock_flag.exit22.i ], [ %i.y, %bb.d ] ; 6 uses
  store i32 0, ptr %i.i, align 8
  %i.aj = getelementptr i8, ptr %1, i64 56        ; 4 uses
  store i32 0, ptr %i.aj, align 8
  %i.ak = and i64 %i.h, 4095
  %.not = icmp eq i64 %i.ak, 0
  br i1 %.not, label %bb.f, label %find_tcp_vma.exit.thread

bb.f:                                             ; preds = %tcp_inq.exit
  %i.al = load volatile i8, ptr %i.m, align 2
  %i.am = icmp eq i8 %i.al, 10
  br i1 %i.am, label %find_tcp_vma.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.f, i8 0, i64 256, i1 false), !annotation !18
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @rfs_needed, i1 false) #19
          to label %sock_rps_record_flow.exit [label %bb.h], !srcloc !19

bb.h:                                             ; preds = %bb.g
  %i.an = load volatile i8, ptr %i.m, align 2
  %i.ao = icmp eq i8 %i.an, 1
  br i1 %i.ao, label %bb.i, label %sock_rps_record_flow.exit

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr i8, ptr %0, i64 132
  %i.aq = load volatile i32, ptr %i.ap, align 4   ; 3 uses
  %.not.i.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i, label %sock_rps_record_flow.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @__rcu_read_lock() #20
  %i.ar = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @net_hotdata, i64 360), align 8 ; 3 uses
  %.not6.i.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not6.i.i.i, label %rps_record_sock_flow.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = trunc i64 %i.ar to i32
  %i.at = and i32 %i.as, 31
  %notmask.i.i.i.i.i = shl nsw i32 -1, %i.at
  %i.au = xor i32 %notmask.i.i.i.i.i, -1
  %i.av = and i32 %i.aq, %i.au
  %i.aw = load i32, ptr getelementptr inbounds nuw (i8, ptr @net_hotdata, i64 368), align 8
  %i.ax = xor i32 %i.aw, -1
  %i.ay = and i32 %i.aq, %i.ax
  %i.az = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #19, !srcloc !20
  %i.ba = or i32 %i.ay, %i.az                     ; 2 uses
  %i.bb = and i64 %i.ar, -32
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = zext nneg i32 %i.av to i64
  %i.be = getelementptr [4 x i8], ptr %i.bc, i64 %i.bd ; 2 uses
  %i.bf = load volatile i32, ptr %i.be, align 4
  %.not.i.i.i.i = icmp eq i32 %i.bf, %i.ba
  br i1 %.not.i.i.i.i, label %rps_record_sock_flow.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  store volatile i32 %i.ba, ptr %i.be, align 4
  br label %rps_record_sock_flow.exit.i.i.i

rps_record_sock_flow.exit.i.i.i:                  ; preds = %bb.l, %bb.k, %bb.j
  tail call void @__rcu_read_unlock() #20
  br label %sock_rps_record_flow.exit

sock_rps_record_flow.exit:                        ; preds = %bb.g, %bb.h, %bb.i, %rps_record_sock_flow.exit.i.i.i
  %.not144 = icmp eq i32 %.0.i, 0                 ; 2 uses
  %.not145 = icmp sgt i32 %.0.i, %i.j
  %or.cond160 = select i1 %.not144, i1 true, i1 %.not145
  br i1 %or.cond160, label %bb.ab, label %bb.m

bb.m:                                             ; preds = %sock_rps_record_flow.exit
  %i.bg = getelementptr i8, ptr %1, i64 24
  %i.bh = load i64, ptr %i.bg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %3, i8 0, i64 96, i1 false)
  %i.bi = getelementptr i8, ptr %1, i64 8
  store i32 0, ptr %i.bi, align 8
  %i.bj = getelementptr i8, ptr %1, i64 12        ; 4 uses
  store i32 0, ptr %i.bj, align 4
  %i.bk = inttoptr i64 %i.bh to ptr
  %i.bl = sext i32 %.0.i to i64                   ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bn = call i32 @import_ubuf(i32 noundef 0, ptr noundef %i.bk, i64 noundef %i.bl, ptr noundef nonnull %i.bm) #20 ; 2 uses
  %.not30.i = icmp eq i32 %i.bn, 0
  br i1 %.not30.i, label %bb.n, label %receive_fallback_to_copy.exit

bb.n:                                             ; preds = %bb.m
  %i.bo = call fastcc i32 @tcp_recvmsg_locked(ptr noundef %0, ptr noundef nonnull %3, i64 noundef %i.bl, i32 noundef 64, ptr noundef %2, ptr noundef %i.aj) #21, !srcloc !158 ; 4 uses
  %i.bp = icmp slt i32 %i.bo, 0
  br i1 %i.bp, label %receive_fallback_to_copy.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 %i.bo, ptr %i.i, align 8
  %.not31.i = icmp eq i32 %i.bo, 0
  br i1 %.not31.i, label %receive_fallback_to_copy.exit, label %bb.p, !prof !27

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 0, ptr %i.b, align 4, !annotation !18
  %i.bq = load i32, ptr %i.k, align 64
  %i.br = call ptr @tcp_recv_skb(ptr noundef %0, i32 noundef %i.bq, ptr noundef nonnull %i.b) #21 ; 5 uses
  %.not32.i = icmp eq ptr %i.br, null
  br i1 %.not32.i, label %tcp_zerocopy_set_hint_for_skb.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bs = load i32, ptr %i.b, align 4             ; 3 uses
  %i.bt = getelementptr i8, ptr %i.br, i64 112    ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 8
  %i.bv = sub i32 %i.bu, %i.bs                    ; 3 uses
  store i32 %i.bv, ptr %i.bj, align 4
  %i.bw = load i32, ptr %i.bt, align 8            ; 2 uses
  %.not.i.i.i163 = icmp ult i32 %i.bs, %i.bw
  br i1 %.not.i.i.i163, label %bb.r, label %tcp_zerocopy_set_hint_for_skb.exit.i, !prof !16

bb.r:                                             ; preds = %bb.q
  %i.bx = getelementptr i8, ptr %i.br, i64 116
  %.val26.i.i.i = load i32, ptr %i.bx, align 4
  %.neg.i.i.i = sub i32 %.val26.i.i.i, %i.bw
  %i.by = add i32 %.neg.i.i.i, %i.bs              ; 3 uses
  %i.bz = icmp slt i32 %i.by, 0
  br i1 %i.bz, label %tcp_zerocopy_set_hint_for_skb.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ca = getelementptr i8, ptr %i.br, i64 192
  %.val27.i.i.i = load i32, ptr %i.ca, align 8
  %i.cb = getelementptr i8, ptr %i.br, i64 200
  %.val28.i.i.i = load ptr, ptr %i.cb, align 8
  %i.cc = zext i32 %.val27.i.i.i to i64
  %i.cd = getelementptr i8, ptr %.val28.i.i.i, i64 %i.cc ; 4 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8
  %.not29.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not29.i.i.i, label %bb.t, label %tcp_zerocopy_set_hint_for_skb.exit.i
end_hunk_0
begin_hunk_1_@tcp_zerocopy_receive:bb.a
  %i.cm = load i8, ptr %i.cl, align 2
  %i.cn = zext i8 %i.cm to i64
  %i.co = getelementptr i8, ptr %i.cd, i64 32
  %i.cp = getelementptr [16 x i8], ptr %i.co, i64 %i.cn
  %.not24.i.i = icmp eq ptr %.018.i.i.i, %i.cp
  br i1 %.not24.i.i, label %tcp_zerocopy_set_hint_for_skb.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cq = getelementptr i8, ptr %.018.i.i.i, i64 8
  %.val26.i.i = load i32, ptr %i.cq, align 8
  %i.cr = sub i32 %.val26.i.i, %.0.i.i            ; 2 uses
  %i.cs = sub i32 %i.bv, %i.cr                    ; 2 uses
  store i32 %i.cs, ptr %i.bj, align 4
  %i.ct = getelementptr i8, ptr %.018.i.i.i, i64 16
  br label %thread-pre-split.i.i

thread-pre-split.i.i:                             ; preds = %bb.x, %bb.v
  %i.cu = phi i32 [ %i.cs, %bb.x ], [ %i.bv, %bb.v ] ; 2 uses
  %.121.i.i = phi i32 [ %i.cr, %bb.x ], [ 0, %bb.v ]
  %.1.i.i = phi ptr [ %i.ct, %bb.x ], [ %.018.i.i.i, %bb.v ] ; 4 uses
  %i.cv = getelementptr i8, ptr %.1.i.i, i64 8
  %.val9.i.i.i.i = load i32, ptr %i.cv, align 8
  %.not.i.i.i.i164 = icmp eq i32 %.val9.i.i.i.i, 4096
  br i1 %.not.i.i.i.i164, label %bb.y, label %.preheader.i.i.i, !prof !159

bb.y:                                             ; preds = %thread-pre-split.i.i
  %i.cw = getelementptr i8, ptr %.1.i.i, i64 12
  %.val.i.i.i.i = load i32, ptr %i.cw, align 4
  %.not6.i.i.i.i = icmp eq i32 %.val.i.i.i.i, 0
  br i1 %.not6.i.i.i.i, label %bb.z, label %.preheader.i.i.i, !prof !159

bb.z:                                             ; preds = %bb.y
  %.val10.i.i.i.i = load i64, ptr %.1.i.i, align 8 ; 2 uses
  %i.cx = trunc i64 %.val10.i.i.i.i to i1
  %i.cy = inttoptr i64 %.val10.i.i.i.i to ptr
  %spec.select.i.i.i.i.i = select i1 %i.cx, ptr null, ptr %i.cy ; 3 uses
  %i.cz = load volatile i64, ptr %spec.select.i.i.i.i.i, align 8
  %i.da = and i64 %i.cz, 64
  %.not12.i.i.i.i = icmp eq i64 %i.da, 0
  br i1 %.not12.i.i.i.i, label %PageCompound.exit.i.i.i.i, label %.preheader.i.i.i, !prof !159

PageCompound.exit.i.i.i.i:                        ; preds = %bb.z
  %i.db = getelementptr i8, ptr %spec.select.i.i.i.i.i, i64 8
  %i.dc = load volatile i64, ptr %i.db, align 8
  %i.dd = and i64 %i.dc, 1
  %.not7.i.i.i.i = icmp eq i64 %i.dd, 0
  br i1 %.not7.i.i.i.i, label %.split.i.i.i, label %.preheader.i.i.i, !prof !159

.split.i.i.i:                                     ; preds = %PageCompound.exit.i.i.i.i
  %i.de = getelementptr i8, ptr %spec.select.i.i.i.i.i, i64 24
  %i.df = load ptr, ptr %i.de, align 8
  %.not8.i.i.i.i = icmp eq ptr %i.df, null
  br i1 %.not8.i.i.i.i, label %find_next_mappable_frag.exit.i.i, label %.preheader.i.i.i, !prof !16

.preheader.i.i.i:                                 ; preds = %.split.i.i.i, %PageCompound.exit.i.i.i.i, %bb.z, %bb.y, %thread-pre-split.i.i
  %i.dg = icmp sgt i32 %i.cu, 0
  br i1 %i.dg, label %.lr.ph.i27.i.i, label %find_next_mappable_frag.exit.i.i

.lr.ph.i27.i.i:                                   ; preds = %.preheader.i.i.i, %bb.aa
  %.011.i.i.i = phi i32 [ %i.dj, %bb.aa ], [ 0, %.preheader.i.i.i ] ; 2 uses
  %.0910.i.i.i = phi ptr [ %i.dk, %bb.aa ], [ %.1.i.i, %.preheader.i.i.i ] ; 3 uses
  %i.dh = call fastcc zeroext i1 @can_map_frag(ptr noundef %.0910.i.i.i) #21, !srcloc !160
  br i1 %i.dh, label %find_next_mappable_frag.exit.i.i, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i27.i.i
  %i.di = getelementptr i8, ptr %.0910.i.i.i, i64 8
  %.09.val.i.i.i = load i32, ptr %i.di, align 8
  %i.dj = add i32 %.09.val.i.i.i, %.011.i.i.i     ; 3 uses
  %i.dk = getelementptr i8, ptr %.0910.i.i.i, i64 16
  %i.dl = icmp slt i32 %i.dj, %i.cu
  br i1 %i.dl, label %.lr.ph.i27.i.i, label %find_next_mappable_frag.exit.i.i, !llvm.loop !157

find_next_mappable_frag.exit.i.i:                 ; preds = %bb.aa, %.lr.ph.i27.i.i, %.preheader.i.i.i, %.split.i.i.i
  %.08.i.i.i = phi i32 [ 0, %.split.i.i.i ], [ 0, %.preheader.i.i.i ], [ %.011.i.i.i, %.lr.ph.i27.i.i ], [ %i.dj, %bb.aa ]
  %i.dm = add i32 %.08.i.i.i, %.121.i.i
  store i32 %i.dm, ptr %i.bj, align 4
  br label %tcp_zerocopy_set_hint_for_skb.exit.i

tcp_zerocopy_set_hint_for_skb.exit.i:             ; preds = %find_next_mappable_frag.exit.i.i, %bb.w, %skb_advance_to_frag.exit.i.i, %bb.s, %bb.r, %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %receive_fallback_to_copy.exit

receive_fallback_to_copy.exit:                    ; preds = %bb.m, %bb.n, %bb.o, %tcp_zerocopy_set_hint_for_skb.exit.i
  %.0.i162 = phi i32 [ %i.bo, %bb.n ], [ 0, %bb.o ], [ %i.bn, %bb.m ], [ 0, %tcp_zerocopy_set_hint_for_skb.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %find_tcp_vma.exit.thread

bb.ab:                                            ; preds = %sock_rps_record_flow.exit
  %i.dn = icmp ult i32 %.0.i, 4096
  br i1 %i.dn, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.do = getelementptr i8, ptr %1, i64 8
  store i32 0, ptr %i.do, align 8
  %i.dp = getelementptr i8, ptr %1, i64 12
  store i32 %.0.i, ptr %i.dp, align 4
  br i1 %.not144, label %sock_flag.exit, label %bb.ad

sock_flag.exit:                                   ; preds = %bb.ac
  %i.dq = getelementptr i8, ptr %0, i64 96
  %i.dr = load volatile i64, ptr %i.dq, align 32
  %i.ds = and i64 %i.dr, 2
  %.not216 = icmp eq i64 %i.ds, 0
  br i1 %.not216, label %bb.ad, label %find_tcp_vma.exit.thread

bb.ad:                                            ; preds = %sock_flag.exit, %bb.ac
  br label %find_tcp_vma.exit.thread

bb.ae:                                            ; preds = %bb.ab
  %i.dt = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #22, !srcloc !23
  %i.du = inttoptr i64 %i.dt to ptr
  %i.dv = getelementptr i8, ptr %i.du, i64 1400   ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8            ; 6 uses
  %i.dx = tail call ptr @lock_vma_under_rcu(ptr noundef %i.dw, i64 noundef %i.h) #20 ; 5 uses
  %.not.i165 = icmp eq ptr %i.dx, null            ; 2 uses
  br i1 %.not.i165, label %bb.ak, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dy = getelementptr i8, ptr %i.dx, i64 72
  %i.dz = load ptr, ptr %i.dy, align 8
  %.not19.i166 = icmp eq ptr %i.dz, @tcp_vm_ops
  br i1 %.not19.i166, label %find_tcp_vma.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ea = getelementptr i8, ptr %i.dx, i64 16
  %i.eb = load ptr, ptr %i.ea, align 16
  %i.ec = getelementptr i8, ptr %i.dx, i64 128    ; 3 uses
  %i.ed = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ec, i32 -1, ptr elementtype(i32) %i.ec) #19, !srcloc !47 ; 4 uses
  %i.ee = icmp eq i32 %i.ed, 1
  br i1 %i.ee, label %__vma_refcount_put_return.exit.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ef = icmp slt i32 %i.ed, 1
  br i1 %i.ef, label %.thread.i.i.i, label %bb.ai, !prof !27

.thread.i.i.i:                                    ; preds = %bb.ah
  tail call void @refcount_warn_saturate(ptr noundef %i.ec, i32 noundef 3) #20
  br label %find_tcp_vma.exit.thread

__vma_refcount_put_return.exit.i.i.i:             ; preds = %bb.ag
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !51
  br label %find_tcp_vma.exit.thread

bb.ai:                                            ; preds = %bb.ah
  %i.eg = add nuw i32 %i.ed, 2147483647
  %i.eh = and i32 %i.eg, 1073741824
  %i.ei = icmp ne i32 %i.eh, 0
  %i.ej = icmp samesign ult i32 %i.ed, 1073741827
  %i.ek = and i1 %i.ej, %i.ei
  br i1 %i.ek, label %bb.aj, label %find_tcp_vma.exit.thread

bb.aj:                                            ; preds = %bb.ai
  %i.el = getelementptr i8, ptr %i.eb, i64 512
  %i.em = tail call i32 @rcuwait_wake_up(ptr noundef %i.el) #20 ; 0 uses
  br label %find_tcp_vma.exit.thread

bb.ak:                                            ; preds = %bb.ae
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_mmap_lock_start_locking, i64 8), i1 false) #19
          to label %__mmap_lock_trace_start_locking.exit.i.i [label %bb.al], !srcloc !19

bb.al:                                            ; preds = %bb.ak
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %i.dw, i1 noundef zeroext false) #20
  br label %__mmap_lock_trace_start_locking.exit.i.i

__mmap_lock_trace_start_locking.exit.i.i:         ; preds = %bb.al, %bb.ak
  %i.en = getelementptr i8, ptr %i.dw, i64 464    ; 2 uses
  tail call void @down_read(ptr noundef %i.en) #20
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_mmap_lock_acquire_returned, i64 8), i1 false) #19
          to label %mmap_read_lock.exit.i [label %bb.am], !srcloc !19

bb.am:                                            ; preds = %__mmap_lock_trace_start_locking.exit.i.i
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %i.dw, i1 noundef zeroext false, i1 noundef zeroext true) #20
  br label %mmap_read_lock.exit.i

mmap_read_lock.exit.i:                            ; preds = %bb.am, %__mmap_lock_trace_start_locking.exit.i.i
  %i.eo = getelementptr i8, ptr %i.dw, i64 64
  %i.ep = tail call ptr @mtree_load(ptr noundef %i.eo, i64 noundef %i.h) #20 ; 3 uses
  %.not17.i = icmp eq ptr %i.ep, null
  br i1 %.not17.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %mmap_read_lock.exit.i
  %i.eq = getelementptr i8, ptr %i.ep, i64 72
  %i.er = load ptr, ptr %i.eq, align 8
  %.not18.i168 = icmp eq ptr %i.er, @tcp_vm_ops
  br i1 %.not18.i168, label %find_tcp_vma.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %mmap_read_lock.exit.i
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_mmap_lock_released, i64 8), i1 false) #19
          to label %mmap_read_unlock.exit.i [label %bb.ap], !srcloc !19

bb.ap:                                            ; preds = %bb.ao
  tail call void @__mmap_lock_do_trace_released(ptr noundef %i.dw, i1 noundef zeroext false) #20
  br label %mmap_read_unlock.exit.i

mmap_read_unlock.exit.i:                          ; preds = %bb.ap, %bb.ao
  tail call void @up_read(ptr noundef %i.en) #20
  br label %find_tcp_vma.exit.thread

find_tcp_vma.exit:                                ; preds = %bb.af, %bb.an
  %.0.i167 = phi ptr [ %i.ep, %bb.an ], [ %i.dx, %bb.af ] ; 7 uses
  %i.es = getelementptr i8, ptr %1, i64 8         ; 5 uses
  %i.et = load i32, ptr %i.es, align 8
  %i.eu = zext i32 %i.et to i64
  %i.ev = getelementptr i8, ptr %.0.i167, i64 8
  %i.ew = load i64, ptr %i.ev, align 8
  %i.ex = sub i64 %i.ew, %i.h
  %i.ey = tail call i64 @llvm.umin.i64(i64 %i.ex, i64 %i.eu)
  %i.ez = trunc nuw i64 %i.ey to i32
  %i.fa = tail call i32 @llvm.umin.i32(i32 %.0.i, i32 %i.ez) ; 3 uses
  %i.fb = and i32 %i.fa, -4096                    ; 7 uses
  %.not147 = icmp eq i32 %i.fb, 0
  br i1 %.not147, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %find_tcp_vma.exit
  %i.fc = getelementptr i8, ptr %1, i64 36
  %i.fd = load i32, ptr %i.fc, align 4
  %i.fe = and i32 %i.fd, 1
  %.not148 = icmp eq i32 %i.fe, 0
  br i1 %.not148, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ff = zext i32 %i.fb to i64
  tail call void @zap_vma_range(ptr noundef nonnull %.0.i167, i64 noundef %i.h, i64 noundef %i.ff) #20
  br label %bb.as

bb.as:                                            ; preds = %find_tcp_vma.exit, %bb.aq, %bb.ar
  %.sink277 = phi i32 [ %i.fb, %bb.aq ], [ %i.fb, %bb.ar ], [ %i.fa, %find_tcp_vma.exit ]
  %.sink = phi i32 [ 0, %bb.aq ], [ 0, %bb.ar ], [ %i.fa, %find_tcp_vma.exit ]
  store i32 %.sink277, ptr %i.es, align 8
  %i.fg = getelementptr i8, ptr %1, i64 12
  store i32 %.sink, ptr %i.fg, align 4
  %i.fh = getelementptr i8, ptr %1, i64 12        ; 7 uses
  %i.fi = getelementptr i8, ptr %2, i64 16
  br label %bb.at

bb.at:                                            ; preds = %bb.bo, %bb.as
  %.0130 = phi ptr [ null, %bb.as ], [ %.4134, %bb.bo ] ; 5 uses
  %.0120 = phi i32 [ 0, %bb.as ], [ %.2122, %bb.bo ] ; 12 uses
  %.0119 = phi ptr [ null, %bb.as ], [ %.3, %bb.bo ]
  %4 = load i32, ptr %i.c, align 4                ; 2 uses
  %5 = zext i32 %4 to i64
  %6 = add nuw nsw i64 %5, 4096
  %i.fj = load i32, ptr %i.es, align 8
  %7 = zext i32 %i.fj to i64
  %.not149 = icmp samesign ugt i64 %6, %7
  br i1 %.not149, label %.thread202, label %8

8:                                                ; preds = %bb.at
  %9 = load i32, ptr %i.fh, align 4               ; 3 uses
  %10 = icmp ult i32 %9, 4096
  br i1 %10, label %bb.au, label %thread-pre-split

bb.au:                                            ; preds = %8
  %.not150 = icmp eq ptr %.0130, null
  br i1 %.not150, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  %.not151 = icmp eq i32 %9, 0
  br i1 %.not151, label %bb.aw, label %.thread202

bb.aw:                                            ; preds = %bb.av
  %i.fk = load ptr, ptr %.0130, align 8           ; 2 uses
  %i.fl = load i32, ptr %i.g, align 4
  %i.fm = getelementptr i8, ptr %i.fk, i64 40
  %i.fn = load i32, ptr %i.fm, align 8
  %i.fo = sub i32 %i.fl, %i.fn
  store i32 %i.fo, ptr %i.d, align 4
  br label %bb.ay

bb.ax:                                            ; preds = %bb.au
  %i.fp = load i32, ptr %i.g, align 4
  %i.fq = call ptr @tcp_recv_skb(ptr noundef %0, i32 noundef %i.fp, ptr noundef nonnull %i.d) #21
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.1131 = phi ptr [ %i.fk, %bb.aw ], [ %i.fq, %bb.ax ] ; 16 uses
  %i.fr = getelementptr i8, ptr %.1131, i64 129
  %.1131.val = load i32, ptr %i.fr, align 1
  %i.fs = and i32 %.1131.val, 4194304
  %.not.i169 = icmp eq i32 %i.fs, 0
  br i1 %.not.i169, label %bb.az, label %.thread202

bb.az:                                            ; preds = %bb.ay
  %i.ft = getelementptr i8, ptr %.1131, i64 56
  %i.fu = load i8, ptr %i.ft, align 8
  %i.fv = and i8 %i.fu, 8
  %.not152 = icmp eq i8 %i.fv, 0
  br i1 %.not152, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fw = getelementptr i8, ptr %.1131, i64 32
  %i.fx = load i64, ptr %i.fw, align 8
  store i64 %i.fx, ptr %2, align 8
  %i.fy = getelementptr i8, ptr %.1131, i64 192
  %.val.i = load i32, ptr %i.fy, align 8
  %i.fz = getelementptr i8, ptr %.1131, i64 200
  %.val4.i = load ptr, ptr %i.fz, align 8
  %i.ga = zext i32 %.val.i to i64
  %i.gb = getelementptr i8, ptr %.val4.i, i64 %i.ga
  %i.gc = getelementptr i8, ptr %i.gb, i64 16
  %i.gd = load i64, ptr %i.gc, align 8
  store i64 %i.gd, ptr %i.fi, align 8
  %i.ge = load i32, ptr %i.aj, align 8
  %i.gf = or i32 %i.ge, 2
  store i32 %i.gf, ptr %i.aj, align 8
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.gg = getelementptr i8, ptr %.1131, i64 112   ; 2 uses
  %i.gh = load i32, ptr %i.gg, align 8
  %i.gi = load i32, ptr %i.d, align 4             ; 3 uses
  %i.gj = sub i32 %i.gh, %i.gi                    ; 2 uses
  store i32 %i.gj, ptr %i.fh, align 4
  %i.gk = load i32, ptr %i.gg, align 8            ; 2 uses
  %.not.i170 = icmp ult i32 %i.gi, %i.gk
  br i1 %.not.i170, label %bb.bc, label %.thread202, !prof !16

bb.bc:                                            ; preds = %bb.bb
  %i.gl = getelementptr i8, ptr %.1131, i64 116
  %.val26.i = load i32, ptr %i.gl, align 4
  %.neg.i = sub i32 %.val26.i, %i.gk
  %i.gm = add i32 %.neg.i, %i.gi                  ; 3 uses
  %i.gn = icmp slt i32 %i.gm, 0
  br i1 %i.gn, label %.thread202, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.go = getelementptr i8, ptr %.1131, i64 192
  %.val27.i = load i32, ptr %i.go, align 8
  %i.gp = getelementptr i8, ptr %.1131, i64 200
  %.val28.i = load ptr, ptr %i.gp, align 8
  %i.gq = zext i32 %.val27.i to i64
  %i.gr = getelementptr i8, ptr %.val28.i, i64 %i.gq ; 2 uses
  %i.gs = getelementptr i8, ptr %i.gr, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8
  %.not29.i = icmp eq ptr %i.gt, null
  br i1 %.not29.i, label %bb.be, label %.thread202

bb.be:                                            ; preds = %bb.bd
  %i.gu = getelementptr i8, ptr %i.gr, i64 48     ; 2 uses
  %.not2232.i = icmp eq i32 %i.gm, 0
  br i1 %.not2232.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.be, %bb.bf
  %.034.i = phi ptr [ %i.gy, %bb.bf ], [ %i.gu, %bb.be ] ; 2 uses
  %.01933.i = phi i32 [ %i.gx, %bb.bf ], [ %i.gm, %bb.be ] ; 2 uses
  %i.gv = getelementptr i8, ptr %.034.i, i64 8
  %.0.val24.i = load i32, ptr %i.gv, align 8      ; 2 uses
  %i.gw = icmp ugt i32 %.0.val24.i, %.01933.i
  br i1 %i.gw, label %.thread202, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph.i
  %i.gx = sub nuw nsw i32 %.01933.i, %.0.val24.i  ; 2 uses
  %i.gy = getelementptr i8, ptr %.034.i, i64 16   ; 2 uses
  %.not22.i = icmp eq i32 %i.gx, 0
  br i1 %.not22.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !156

.loopexit:                                        ; preds = %bb.bf, %bb.be
  %.018.i = phi ptr [ %i.gu, %bb.be ], [ %i.gy, %bb.bf ] ; 2 uses
  %.not214 = icmp eq ptr %.018.i, null
  br i1 %.not214, label %bb.bo, label %thread-pre-split

thread-pre-split:                                 ; preds = %.loopexit, %8
  %i.gz = phi i32 [ %9, %8 ], [ %i.gj, %.loopexit ] ; 2 uses
  %.3133 = phi ptr [ %.0130, %8 ], [ %.1131, %.loopexit ] ; 5 uses
  %.2 = phi ptr [ %.0119, %8 ], [ %.018.i, %.loopexit ] ; 6 uses
  %i.ha = getelementptr i8, ptr %.2, i64 8
  %.val9.i.i = load i32, ptr %i.ha, align 8
  %.not.i.i171 = icmp eq i32 %.val9.i.i, 4096
  br i1 %.not.i.i171, label %bb.bg, label %.preheader.i, !prof !159

bb.bg:                                            ; preds = %thread-pre-split
  %i.hb = getelementptr i8, ptr %.2, i64 12
  %.val.i.i = load i32, ptr %i.hb, align 4
  %.not6.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not6.i.i, label %bb.bh, label %.preheader.i, !prof !159

bb.bh:                                            ; preds = %bb.bg
  %.val10.i.i = load i64, ptr %.2, align 8        ; 2 uses
  %i.hc = trunc i64 %.val10.i.i to i1
  %i.hd = inttoptr i64 %.val10.i.i to ptr
  %spec.select.i.i.i = select i1 %i.hc, ptr null, ptr %i.hd ; 3 uses
  %i.he = load volatile i64, ptr %spec.select.i.i.i, align 8
  %i.hf = and i64 %i.he, 64
  %.not12.i.i = icmp eq i64 %i.hf, 0
  br i1 %.not12.i.i, label %PageCompound.exit.i.i, label %.preheader.i, !prof !159

PageCompound.exit.i.i:                            ; preds = %bb.bh
  %i.hg = getelementptr i8, ptr %spec.select.i.i.i, i64 8
  %i.hh = load volatile i64, ptr %i.hg, align 8
  %i.hi = and i64 %i.hh, 1
  %.not7.i.i = icmp eq i64 %i.hi, 0
  br i1 %.not7.i.i, label %.split.i173, label %.preheader.i, !prof !159

.split.i173:                                      ; preds = %PageCompound.exit.i.i
  %i.hj = getelementptr i8, ptr %spec.select.i.i.i, i64 24
  %i.hk = load ptr, ptr %i.hj, align 8
  %.not8.i.i = icmp eq ptr %i.hk, null
  br i1 %.not8.i.i, label %find_next_mappable_frag.exit.thread, label %.preheader.i, !prof !16

.preheader.i:                                     ; preds = %.split.i173, %PageCompound.exit.i.i, %bb.bh, %bb.bg, %thread-pre-split
  %i.hl = icmp sgt i32 %i.gz, 0
  br i1 %i.hl, label %.lr.ph.i172, label %find_next_mappable_frag.exit.thread

.lr.ph.i172:                                      ; preds = %.preheader.i, %bb.bi
  %.011.i = phi i32 [ %i.ho, %bb.bi ], [ 0, %.preheader.i ] ; 2 uses
  %.0910.i = phi ptr [ %i.hp, %bb.bi ], [ %.2, %.preheader.i ] ; 3 uses
  %i.hm = call fastcc zeroext i1 @can_map_frag(ptr noundef %.0910.i) #21, !srcloc !160
  br i1 %i.hm, label %find_next_mappable_frag.exit, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph.i172
  %i.hn = getelementptr i8, ptr %.0910.i, i64 8
  %.09.val.i = load i32, ptr %i.hn, align 8
  %i.ho = add i32 %.09.val.i, %.011.i             ; 3 uses
  %i.hp = getelementptr i8, ptr %.0910.i, i64 16
  %i.hq = icmp slt i32 %i.ho, %i.gz
  br i1 %i.hq, label %.lr.ph.i172, label %find_next_mappable_frag.exit, !llvm.loop !157

find_next_mappable_frag.exit:                     ; preds = %.lr.ph.i172, %bb.bi
  %.08.i = phi i32 [ %i.ho, %bb.bi ], [ %.011.i, %.lr.ph.i172 ] ; 2 uses
  %.not153 = icmp eq i32 %.08.i, 0
  br i1 %.not153, label %find_next_mappable_frag.exit.thread, label %bb.bj

bb.bj:                                            ; preds = %find_next_mappable_frag.exit
  store i32 %.08.i, ptr %i.fh, align 4
  br label %.thread202

find_next_mappable_frag.exit.thread:              ; preds = %.preheader.i, %.split.i173, %find_next_mappable_frag.exit
  %.2.val = load i64, ptr %.2, align 8            ; 3 uses
  %i.hr = trunc i64 %.2.val to i1
  %.not154215 = icmp eq i64 %.2.val, 0
  %.not154 = or i1 %.not154215, %i.hr
  br i1 %.not154, label %bb.bk, label %.critedge, !prof !27

bb.bk:                                            ; preds = %find_next_mappable_frag.exit.thread
  call void asm sideeffect "1439: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1439b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1439) #19, !srcloc !161
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.3, ptr nonnull @.str.1, i32 2289, i32 2307, i64 16) #19, !srcloc !162
  call void asm sideeffect "1440: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1440b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1440) #19, !srcloc !163
  br label %.thread202

.critedge:                                        ; preds = %find_next_mappable_frag.exit.thread
  %i.hs = inttoptr i64 %.2.val to ptr             ; 2 uses
  call void asm sideeffect "# ALT: oldinstr\0A771:\0A\09prefetcht0 $1\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 6*32+ 8)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09prefetchw $1\0A775:\0A.popsection\0A", "i,*m,~{dirflag},~{fpsr},~{flags}"(i32 0, ptr nonnull elementtype(i8) %i.hs) #19, !srcloc !164
  %i.ht = add i32 %.0120, 1                       ; 3 uses
  %i.hu = zext i32 %.0120 to i64
  %i.hv = getelementptr [8 x i8], ptr %i.f, i64 %i.hu
  store ptr %i.hs, ptr %i.hv, align 8
  %i.hw = add i32 %4, 4096
  store i32 %i.hw, ptr %i.c, align 4
  %i.hx = load i32, ptr %i.fh, align 4
  %i.hy = add i32 %i.hx, -4096                    ; 2 uses
  store i32 %i.hy, ptr %i.fh, align 4
  %i.hz = getelementptr i8, ptr %.2, i64 16       ; 2 uses
  %i.ia = icmp eq i32 %i.ht, 32
  br i1 %i.ia, label %.split, label %bb.bm

.split:                                           ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 32, ptr %i.a, align 8
  %i.ib = load i64, ptr %i.e, align 8             ; 2 uses
  %i.ic = call i32 @vm_insert_pages(ptr noundef nonnull %.0.i167, i64 noundef %i.ib, ptr noundef nonnull %i.f, ptr noundef nonnull %i.a) #20 ; 2 uses
  %i.id = load i64, ptr %i.a, align 8             ; 2 uses
  %i.ie = trunc i64 %i.id to i32
  %i.if = sub i32 32, %i.ie                       ; 2 uses
  %i.ig = shl i32 %i.if, 12                       ; 2 uses
  %i.ih = load i32, ptr %i.g, align 4
  %i.ii = add i32 %i.ig, %i.ih
  store i32 %i.ii, ptr %i.g, align 4
  %i.ij = zext i32 %i.ig to i64
  %i.ik = add i64 %i.ib, %i.ij
  store i64 %i.ik, ptr %i.e, align 8
  %.not.i175 = icmp eq i32 %i.ic, 0
  br i1 %.not.i175, label %tcp_zerocopy_vm_insert_batch.exit, label %bb.bl, !prof !16

bb.bl:                                            ; preds = %.split
  %i.il = zext i32 %i.if to i64
  %i.im = getelementptr [8 x i8], ptr %i.f, i64 %i.il
  %i.in = call fastcc i32 @tcp_zerocopy_vm_insert_batch_error(ptr noundef nonnull %.0.i167, ptr noundef %i.im, i64 noundef %i.id, ptr noundef nonnull %i.e, ptr noundef nonnull %i.c, ptr noundef nonnull %i.g, ptr noundef %1, i32 noundef range(i32 0, -4095) %i.fb, i32 noundef %i.ic) #21, !srcloc !52
  br label %tcp_zerocopy_vm_insert_batch.exit

tcp_zerocopy_vm_insert_batch.exit:                ; preds = %.split, %bb.bl
  %.0.i176 = phi i32 [ %i.in, %bb.bl ], [ 0, %.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.bn

bb.bm:                                            ; preds = %.critedge
  %i.io = icmp ult i32 %i.hy, 4096
  br i1 %i.io, label %.split136, label %bb.bo

.split136:                                        ; preds = %bb.bm
  %i.ip = call fastcc i32 @tcp_zerocopy_vm_insert_batch(ptr noundef %.0.i167, ptr noundef nonnull %i.f, i32 noundef %i.ht, ptr noundef nonnull %i.e, ptr noundef nonnull %i.c, ptr noundef nonnull %i.g, ptr noundef %1, i32 noundef %i.fb) #21, !srcloc !165
  br label %bb.bn

bb.bn:                                            ; preds = %.split136, %tcp_zerocopy_vm_insert_batch.exit
  %phi.call = phi i32 [ %.0.i176, %tcp_zerocopy_vm_insert_batch.exit ], [ %i.ip, %.split136 ] ; 2 uses
  %.not155 = icmp eq i32 %phi.call, 0
  br i1 %.not155, label %bb.bo, label %.thread208

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %.loopexit
  %.4134 = phi ptr [ %.3133, %bb.bm ], [ %.1131, %.loopexit ], [ %.3133, %bb.bn ] ; 2 uses
  %11 = phi i1 [ true, %bb.bm ], [ false, %.loopexit ], [ true, %bb.bn ]
  %.2122 = phi i32 [ %i.ht, %bb.bm ], [ %.0120, %.loopexit ], [ 0, %bb.bn ] ; 2 uses
  %.3 = phi ptr [ %i.hz, %bb.bm ], [ null, %.loopexit ], [ %i.hz, %bb.bn ]
  br i1 %11, label %bb.at, label %.thread202

.thread202:                                       ; preds = %bb.bd, %bb.bb, %bb.bc, %bb.bo, %bb.ay, %bb.av, %bb.at, %.lr.ph.i, %bb.bk, %bb.bj
  %.5135 = phi ptr [ %.3133, %bb.bj ], [ %.3133, %bb.bk ], [ %.1131, %.lr.ph.i ], [ %.1131, %bb.bb ], [ %.1131, %bb.bc ], [ %.1131, %bb.bd ], [ %.1131, %bb.ay ], [ %.0130, %bb.av ], [ %.0130, %bb.at ], [ %.4134, %bb.bo ] ; 2 uses
  %.3123 = phi i32 [ %.0120, %bb.bj ], [ %.0120, %bb.bk ], [ %.0120, %.lr.ph.i ], [ %.0120, %bb.bb ], [ %.0120, %bb.bc ], [ %.0120, %bb.bd ], [ %.0120, %bb.ay ], [ %.0120, %bb.av ], [ %.0120, %bb.at ], [ %.2122, %bb.bo ] ; 2 uses
  %.not156 = icmp eq i32 %.3123, 0
  br i1 %.not156, label %.thread208, label %bb.bp

bb.bp:                                            ; preds = %.thread202
  %i.iq = call fastcc i32 @tcp_zerocopy_vm_insert_batch(ptr noundef %.0.i167, ptr noundef nonnull %i.f, i32 noundef %.3123, ptr noundef nonnull %i.e, ptr noundef nonnull %i.c, ptr noundef nonnull %i.g, ptr noundef %1, i32 noundef %i.fb) #21, !srcloc !166
  br label %.thread208

.thread208:                                       ; preds = %bb.bn, %.thread202, %bb.bp
  %.6 = phi ptr [ %.5135, %bb.bp ], [ %.5135, %.thread202 ], [ %.3133, %bb.bn ]
  %.4 = phi i32 [ %i.iq, %bb.bp ], [ 0, %.thread202 ], [ %phi.call, %bb.bn ] ; 3 uses
  br i1 %.not.i165, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %.thread208
  %i.ir = load ptr, ptr %i.dv, align 8
  call fastcc void @mmap_read_unlock(ptr noundef %i.ir) #21, !srcloc !167
  br label %bb.bs

bb.br:                                            ; preds = %.thread208
  call fastcc void @vma_end_read(ptr noundef %.0.i167) #21, !srcloc !168
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.not157 = icmp eq i32 %.4, 0
  br i1 %.not157, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.is = call fastcc i32 @tcp_zc_handle_leftover(ptr noundef %1, ptr noundef %0, ptr noundef %.6, ptr noundef nonnull %i.g, i32 noundef %i.j, ptr noundef %2) #21, !srcloc !169
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.0118 = phi i32 [ 0, %bb.bs ], [ %i.is, %bb.bt ] ; 2 uses
  %i.it = load i32, ptr %i.c, align 4             ; 4 uses
  %i.iu = sub i32 0, %.0118
  %.not158 = icmp eq i32 %i.it, %i.iu
  br i1 %.not158, label %bb.bx, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.iv = load i32, ptr %i.g, align 4             ; 2 uses
  store volatile i32 %i.iv, ptr %i.k, align 64
  call void @tcp_rcv_space_adjust(ptr noundef %0) #20
  %i.iw = call ptr @tcp_recv_skb(ptr noundef %0, i32 noundef %i.iv, ptr noundef nonnull %i.d) #21 ; 0 uses
  %i.ix = add i32 %i.it, %.0118
  call void @tcp_cleanup_rbuf(ptr noundef %0, i32 noundef %i.ix) #21
  %i.iy = load i32, ptr %i.es, align 8
  %i.iz = icmp eq i32 %i.it, %i.iy
  br i1 %i.iz, label %bb.bw, label %bb.by

bb.bw:                                            ; preds = %bb.bv
  store i32 0, ptr %i.fh, align 4
  br label %bb.by

bb.bx:                                            ; preds = %bb.bu
  %i.ja = load i32, ptr %i.fh, align 4
  %.not159 = icmp eq i32 %i.ja, 0
  br i1 %.not159, label %sock_flag.exit179, label %bb.by

sock_flag.exit179:                                ; preds = %bb.bx
  %i.jb = getelementptr i8, ptr %0, i64 96
  %i.jc = load volatile i64, ptr %i.jb, align 32
  %.in.i178.in = and i64 %i.jc, 2
  %.in.i178.not = icmp eq i64 %.in.i178.in, 0
  %spec.select = select i1 %.in.i178.not, i32 %.4, i32 -5
  br label %bb.by

bb.by:                                            ; preds = %sock_flag.exit179, %bb.bx, %bb.bv, %bb.bw
  %.5 = phi i32 [ 0, %bb.bw ], [ 0, %bb.bv ], [ %.4, %bb.bx ], [ %spec.select, %sock_flag.exit179 ]
  store i32 %i.it, ptr %i.es, align 8
  br label %find_tcp_vma.exit.thread

find_tcp_vma.exit.thread:                         ; preds = %bb.ai, %__vma_refcount_put_return.exit.i.i.i, %.thread.i.i.i, %mmap_read_unlock.exit.i, %bb.aj, %sock_flag.exit, %bb.f, %tcp_inq.exit, %bb.by, %bb.ad, %receive_fallback_to_copy.exit
  %.0 = phi i32 [ -5, %sock_flag.exit ], [ -22, %tcp_inq.exit ], [ %.0.i162, %receive_fallback_to_copy.exit ], [ 0, %bb.ad ], [ -107, %bb.f ], [ -22, %bb.ai ], [ %.5, %bb.by ], [ -22, %bb.aj ], [ -22, %mmap_read_unlock.exit.i ], [ -22, %.thread.i.i.i ], [ -22, %__vma_refcount_put_return.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @tcp_zc_finalize_rx_tstamp(ptr nofree noundef captures(address) %0, ptr nofree noundef captures(none) initializes((56, 60)) %1, ptr noundef %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %3 = alloca %struct.msghdr, align 8             ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %3, i8 0, i64 96, i1 false), !annotation !18
  %i.a = getelementptr i8, ptr %1, i64 40         ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %1, i64 48         ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  store i64 %i.f, ptr %i.g, align 8
  %i.h = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #22, !srcloc !23
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr i8, ptr %i.i, i64 16
  %i.k = load i32, ptr %i.j, align 8
  %i.l = shl i32 %i.k, 30
  %i.m = and i32 %i.l, -2147483648
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 68 ; 2 uses
  store i32 %i.m, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i8 1, ptr %i.o, align 8
  %i.p = getelementptr i8, ptr %1, i64 56         ; 2 uses
  store i32 0, ptr %i.p, align 8
  call void @tcp_recv_timestamp(ptr noundef nonnull %3, ptr noundef %0, ptr noundef %2) #21
  %i.q = load ptr, ptr %i.d, align 8
  %i.r = ptrtoint ptr %i.q to i64
  store i64 %i.r, ptr %i.a, align 8
  %i.s = load i64, ptr %i.g, align 8
  store i64 %i.s, ptr %i.e, align 8
  %i.t = load i32, ptr %i.n, align 4
  store i32 %i.t, ptr %i.p, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define dso_local noundef zeroext i1 @tcp_bpf_bypass_getsockopt(i32 noundef %0, i32 noundef %1) local_unnamed_addr #11 align 16 prefalign(16) {
bb.a:
  %i.a = icmp eq i32 %0, 6
  %i.b = icmp eq i32 %1, 35
  %or.cond = and i1 %i.a, %i.b
  ret i1 %or.cond
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @tcp_getsockopt(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %5 = alloca %struct.sockptr_t, align 8          ; 3 uses
  %.not = icmp eq i32 %1, 6
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 1224
  %i.b = load volatile ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call i32 %i.d(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #20
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store ptr %4, ptr %5, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i8 0, ptr %i.f, align 8
  %i.g = tail call i32 @do_tcp_getsockopt(ptr noundef %0, i32 poison, i32 noundef %2, ptr %3, i8 0, ptr noundef nonnull byval(%struct.sockptr_t) align 8 %5) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ %i.g, %bb.c ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @tcp_md5_hash_skb_data(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 112
  %.val64 = load i32, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %1, i64 116
  %.val65 = load i32, ptr %i.b, align 4
  %i.c = sub i32 %.val64, %.val65
  %narrow = tail call i32 @llvm.usub.sat.i32(i32 %i.c, i32 %2)
  %i.d = zext i32 %narrow to i64
  %i.e = getelementptr i8, ptr %1, i64 192        ; 2 uses
  %.val55 = load i32, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %1, i64 200        ; 2 uses
  %.val56 = load ptr, ptr %i.f, align 8           ; 2 uses
  %i.g = zext i32 %.val55 to i64
  %i.h = getelementptr i8, ptr %.val56, i64 %i.g  ; 2 uses
  %i.i = getelementptr i8, ptr %1, i64 182
  %.val67 = load i16, ptr %i.i, align 2
  %i.j = zext i16 %.val67 to i64
  %i.k = getelementptr i8, ptr %.val56, i64 %i.j
  %i.l = zext i32 %2 to i64
  %i.m = getelementptr i8, ptr %i.k, i64 %i.l
  tail call void @md5_update(ptr noundef %0, ptr noundef %i.m, i64 noundef %i.d) #20
  %i.n = getelementptr i8, ptr %i.h, i64 2        ; 2 uses
  %i.o = load i8, ptr %i.n, align 2               ; 2 uses
  %.not84 = icmp eq i8 %i.o, 0
  br i1 %.not84, label %._crit_edge77, label %.lr.ph76

.lr.ph76:                                         ; preds = %bb.a
  %i.p = getelementptr i8, ptr %i.h, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph76, %._crit_edge
  %i.q = phi i8 [ %i.o, %.lr.ph76 ], [ %i.az, %._crit_edge ]
  %indvars.iv = phi i64 [ 0, %.lr.ph76 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.r = getelementptr [16 x i8], ptr %i.p, i64 %indvars.iv ; 3 uses
  %i.s = getelementptr i8, ptr %i.r, i64 8        ; 3 uses
  %.val61 = load i32, ptr %i.s, align 8           ; 5 uses
  %.not85 = icmp eq i32 %.val61, 0
  br i1 %.not85, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.t = getelementptr i8, ptr %i.r, i64 12
  %.val58 = load i32, ptr %i.t, align 4           ; 2 uses
  %i.u = and i32 %.val58, 4095
  %i.v = zext nneg i32 %i.u to i64
  %.val66 = load i64, ptr %i.r, align 8           ; 2 uses
  %i.w = trunc i64 %.val66 to i1
  %i.x = inttoptr i64 %.val66 to ptr
  %spec.select.i = select i1 %i.w, ptr null, ptr %i.x
  %i.y = lshr i32 %.val58, 12
end_hunk_1
