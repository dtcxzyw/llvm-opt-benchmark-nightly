Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/nf_conntrack_sip?download=true
inline.NumInlined: 114
inline.NumDeleted: 41
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@ct_sip_parse_request:bb.a
  br label %bb.r

bb.q:                                             ; preds = %bb.i
  tail call void asm sideeffect "1223: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1223b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1223) #13, !srcloc !20
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, ptr @.str.2, i32 176, i32 0, i64 16) #13, !srcloc !21
  unreachable

sip_parse_addr.exit.thread:                       ; preds = %bb.h, %bb.k, %bb.m, %bb.j, %bb.l, %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %string_len.exit.thread

bb.r:                                             ; preds = %._crit_edge, %bb.p
  %i.ba = phi ptr [ %.pre, %._crit_edge ], [ %i.az, %bb.p ] ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %.not.i47 = icmp ult ptr %i.ba, %i.c
  br i1 %.not.i47, label %bb.s, label %string_len.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.bb = load i8, ptr %i.ba, align 1
  %.not38.i = icmp eq i8 %i.bb, 58
  br i1 %.not38.i, label %.preheader.preheader.i, label %bb.t

.preheader.preheader.i:                           ; preds = %bb.s
  %.031.i = getelementptr i8, ptr %i.ba, i64 1    ; 2 uses
  %i.bc = icmp ult ptr %.031.i, %i.c
  br i1 %i.bc, label %bb.u, label %string_len.exit.thread

bb.t:                                             ; preds = %bb.s
  %.not43.i = icmp eq ptr %6, null
  br i1 %.not43.i, label %sip_parse_port.exit, label %sip_parse_port.exit.sink.split

bb.u:                                             ; preds = %.preheader.preheader.i
  %i.bd = load i8, ptr %.031.i, align 1
  %i.be = zext i8 %i.bd to i32
  %i.bf = add nsw i32 %i.be, -48                  ; 3 uses
  %i.bg = icmp ugt i32 %i.bf, 9
  br i1 %i.bg, label %string_len.exit.thread, label %.preheader.1.i

.preheader.1.i:                                   ; preds = %bb.u
  %.031.1.i = getelementptr i8, ptr %i.ba, i64 2  ; 3 uses
  %i.bh = icmp ult ptr %.031.1.i, %i.c
  br i1 %i.bh, label %bb.v, label %string_len.exit.thread

bb.v:                                             ; preds = %.preheader.1.i
  %i.bi = load i8, ptr %.031.1.i, align 1
  %i.bj = zext i8 %i.bi to i32
  %i.bk = add nsw i32 %i.bj, -48                  ; 2 uses
  %i.bl = icmp ugt i32 %i.bk, 9
  br i1 %i.bl, label %.critedge.i, label %.preheader.2.i

.preheader.2.i:                                   ; preds = %bb.v
  %i.bm = mul nuw nsw i32 %i.bf, 10
  %i.bn = add nuw nsw i32 %i.bk, %i.bm            ; 2 uses
  %.031.2.i = getelementptr i8, ptr %i.ba, i64 3  ; 3 uses
  %i.bo = icmp ult ptr %.031.2.i, %i.c
  br i1 %i.bo, label %bb.w, label %string_len.exit.thread

bb.w:                                             ; preds = %.preheader.2.i
  %i.bp = load i8, ptr %.031.2.i, align 1
  %i.bq = zext i8 %i.bp to i32
  %i.br = add nsw i32 %i.bq, -48                  ; 2 uses
  %i.bs = icmp ugt i32 %i.br, 9
  br i1 %i.bs, label %.critedge.i, label %.preheader.3.i

.preheader.3.i:                                   ; preds = %bb.w
  %i.bt = mul nuw nsw i32 %i.bn, 10
  %i.bu = add nuw nsw i32 %i.br, %i.bt            ; 2 uses
  %.031.3.i = getelementptr i8, ptr %i.ba, i64 4  ; 3 uses
  %i.bv = icmp ult ptr %.031.3.i, %i.c
  br i1 %i.bv, label %bb.x, label %string_len.exit.thread

bb.x:                                             ; preds = %.preheader.3.i
  %i.bw = load i8, ptr %.031.3.i, align 1
  %i.bx = zext i8 %i.bw to i32
  %i.by = add nsw i32 %i.bx, -48                  ; 2 uses
  %i.bz = icmp ugt i32 %i.by, 9
  br i1 %i.bz, label %.critedge.i, label %.preheader.4.i

.preheader.4.i:                                   ; preds = %bb.x
  %i.ca = mul nuw nsw i32 %i.bu, 10
  %i.cb = add nuw nsw i32 %i.by, %i.ca            ; 2 uses
  %.031.4.i = getelementptr i8, ptr %i.ba, i64 5  ; 3 uses
  %i.cc = icmp ult ptr %.031.4.i, %i.c
  br i1 %i.cc, label %bb.y, label %string_len.exit.thread

bb.y:                                             ; preds = %.preheader.4.i
  %i.cd = load i8, ptr %.031.4.i, align 1
  %i.ce = zext i8 %i.cd to i32
  %i.cf = add nsw i32 %i.ce, -48                  ; 2 uses
  %i.cg = icmp ugt i32 %i.cf, 9
  br i1 %i.cg, label %.critedge.i, label %.preheader.5.i

.preheader.5.i:                                   ; preds = %bb.y
  %.031.5.i = getelementptr i8, ptr %i.ba, i64 6  ; 3 uses
  %i.ch = icmp ult ptr %.031.5.i, %i.c
  br i1 %i.ch, label %bb.z, label %string_len.exit.thread

bb.z:                                             ; preds = %.preheader.5.i
  %i.ci = mul nuw nsw i32 %i.cb, 10
  %i.cj = add nuw nsw i32 %i.cf, %i.ci
  %i.ck = load i8, ptr %.031.5.i, align 1
  %i.cl = add i8 %i.ck, -58
  %i.cm = icmp ult i8 %i.cl, -10
  br i1 %i.cm, label %.critedge.i, label %string_len.exit.thread

.critedge.i:                                      ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %bb.v
  %.029.lcssa57.i = phi i32 [ %i.cj, %bb.z ], [ %i.bf, %bb.v ], [ %i.bn, %bb.w ], [ %i.bu, %bb.x ], [ %i.cb, %bb.y ] ; 2 uses
  %.031.lcssa55.i = phi ptr [ %.031.5.i, %bb.z ], [ %.031.1.i, %bb.v ], [ %.031.2.i, %bb.w ], [ %.031.3.i, %bb.x ], [ %.031.4.i, %bb.y ] ; 2 uses
  %i.cn = add nsw i32 %.029.lcssa57.i, -65536
  %or.cond.i = icmp ult i32 %i.cn, -64512
  br i1 %or.cond.i, label %string_len.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %.critedge.i
  %.not41.i = icmp eq ptr %6, null
  br i1 %.not41.i, label %sip_parse_port.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.co = trunc nuw i32 %.029.lcssa57.i to i16
  %i.cp = call i16 @llvm.bswap.i16(i16 %i.co)
  br label %sip_parse_port.exit.sink.split

sip_parse_port.exit.sink.split:                   ; preds = %bb.t, %bb.ab
  %.sink = phi i16 [ %i.cp, %bb.ab ], [ -15341, %bb.t ]
  %.151.ph = phi ptr [ %.031.lcssa55.i, %bb.ab ], [ %i.ba, %bb.t ]
  store i16 %.sink, ptr %6, align 2
  br label %sip_parse_port.exit

sip_parse_port.exit:                              ; preds = %sip_parse_port.exit.sink.split, %bb.aa, %bb.t
  %.151 = phi ptr [ %i.ba, %bb.t ], [ %.031.lcssa55.i, %bb.aa ], [ %.151.ph, %sip_parse_port.exit.sink.split ] ; 2 uses
  %i.cq = icmp eq ptr %.151, %i.ad
  br i1 %i.cq, label %string_len.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %sip_parse_port.exit
  %i.cr = ptrtoint ptr %i.ad to i64               ; 2 uses
  %i.cs = ptrtoint ptr %1 to i64
  %i.ct = sub i64 %i.cr, %i.cs
  %i.cu = trunc i64 %i.ct to i32
  store i32 %i.cu, ptr %3, align 4
  %i.cv = ptrtoint ptr %.151 to i64
  %i.cw = sub i64 %i.cv, %i.cr
  %i.cx = trunc i64 %i.cw to i32
  store i32 %i.cx, ptr %4, align 4
  br label %string_len.exit.thread

string_len.exit.thread:                           ; preds = %.lr.ph, %.lr.ph, %.preheader.4.i, %.preheader.5.i, %bb.z, %.preheader.preheader.i, %.preheader.2.i, %.critedge.i, %bb.u, %.preheader.3.i, %bb.r, %.preheader.1.i, %bb.a, %sip_parse_addr.exit.thread, %sip_parse_port.exit, %skp_epaddr_len.exit, %string_len.exit, %bb.ac
  %.0 = phi i32 [ 0, %string_len.exit ], [ 0, %sip_parse_port.exit ], [ 0, %bb.a ], [ 1, %bb.ac ], [ -1, %sip_parse_addr.exit.thread ], [ 0, %skp_epaddr_len.exit ], [ -1, %.preheader.5.i ], [ -1, %.preheader.4.i ], [ -1, %.preheader.1.i ], [ -1, %bb.r ], [ -1, %.preheader.3.i ], [ -1, %bb.u ], [ -1, %.critedge.i ], [ -1, %.preheader.2.i ], [ -1, %.preheader.preheader.i ], [ -1, %bb.z ], [ -1, %.lr.ph ], [ -1, %.lr.ph ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree noredzone nounwind null_pointer_is_valid willreturn memory(read)
declare dso_local i32 @strncasecmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @skp_epaddr_len(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr %3, align 4                ; 5 uses
  %i.b = icmp ult ptr %1, %2
  br i1 %i.b, label %.lr.ph, label %.critedge23

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.c = phi i32 [ %i.e, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %.025 = phi ptr [ %i.f, %bb.b ], [ %1, %bb.a ]  ; 3 uses
  %i.d = load i8, ptr %.025, align 1
  switch i8 %i.d, label %bb.b [
    i8 64, label %bb.c
    i8 10, label %.critedge23
    i8 13, label %.critedge23
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.e = add i32 %i.c, 1                          ; 2 uses
  store i32 %i.e, ptr %3, align 4
  %i.f = getelementptr i8, ptr %.025, i64 1       ; 2 uses
  %exitcond.not = icmp eq ptr %i.f, %2
  br i1 %exitcond.not, label %.critedge23, label %.lr.ph, !llvm.loop !1

bb.c:                                             ; preds = %.lr.ph
  %i.g = getelementptr i8, ptr %.025, i64 1
  %i.h = add i32 %i.c, 1
  br label %.critedge23

.critedge23:                                      ; preds = %bb.b, %.lr.ph, %.lr.ph, %bb.a, %bb.c
  %storemerge = phi i32 [ %i.h, %bb.c ], [ %i.a, %bb.a ], [ %i.a, %.lr.ph ], [ %i.a, %.lr.ph ], [ %i.a, %bb.b ]
  %.1 = phi ptr [ %i.g, %bb.c ], [ %1, %bb.a ], [ %1, %.lr.ph ], [ %1, %.lr.ph ], [ %1, %bb.b ]
  store i32 %storemerge, ptr %3, align 4
  %i.i = tail call i32 @epaddr_len(ptr noundef %0, ptr noundef %.1, ptr noundef %2, ptr poison) #12, !srcloc !18
  ret i32 %i.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -1, 2) i32 @ct_sip_get_header(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef writeonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = zext i32 %4 to i64
  %i.c = getelementptr [48 x i8], ptr @ct_sip_hdrs, i64 %i.b ; 8 uses
  %i.d = zext i32 %3 to i64
  %i.e = getelementptr i8, ptr %1, i64 %i.d       ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %i.a, align 4
  %i.f = zext i32 %2 to i64
  %i.g = getelementptr i8, ptr %1, i64 %i.f       ; 3 uses
  %i.h = icmp ult ptr %i.g, %i.e
  br i1 %i.h, label %.lr.ph, label %sip_skip_whitespace.exit.thread

.lr.ph:                                           ; preds = %bb.a
  %i.i = ptrtoint ptr %i.e to i64                 ; 4 uses
  %i.j = getelementptr i8, ptr %i.c, i64 24       ; 2 uses
  %i.k = getelementptr i8, ptr %i.c, i64 8
  %i.l = getelementptr i8, ptr %i.c, i64 28
  switch i32 %4, label %.lr.ph.split [
    i32 6, label %.lr.ph.split.us.preheader
    i32 0, label %.lr.ph.split.us.preheader
  ]

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph, %.lr.ph
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %7
  %.067102.us = phi ptr [ %8, %7 ], [ %i.g, %.lr.ph.split.us.preheader ] ; 4 uses
  %i.m = load i8, ptr %.067102.us, align 1        ; 2 uses
  switch i8 %i.m, label %7 [
    i8 13, label %bb.b
    i8 10, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph.split.us, %.lr.ph.split.us
  %i.n = getelementptr i8, ptr %.067102.us, i64 1 ; 4 uses
  %.not81.us = icmp ult ptr %i.n, %i.e
  br i1 %.not81.us, label %bb.c, label %sip_skip_whitespace.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.o = icmp eq i8 %i.m, 13
  br i1 %i.o, label %bb.d, label %thread-pre-split.us

bb.d:                                             ; preds = %bb.c
  %i.p = load i8, ptr %i.n, align 1               ; 2 uses
  %i.q = icmp eq i8 %i.p, 10
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr i8, ptr %.067102.us, i64 2 ; 2 uses
  %.not82.us = icmp ult ptr %i.r, %i.e
  br i1 %.not82.us, label %thread-pre-split.us, label %sip_skip_whitespace.exit.thread

thread-pre-split.us:                              ; preds = %bb.e, %bb.c
  %.1.ph.us = phi ptr [ %i.n, %bb.c ], [ %i.r, %bb.e ] ; 2 uses
  %.pr.us = load i8, ptr %.1.ph.us, align 1
  br label %bb.f

bb.f:                                             ; preds = %thread-pre-split.us, %bb.d
  %i.s = phi i8 [ %.pr.us, %thread-pre-split.us ], [ %i.p, %bb.d ]
  %.1.us = phi ptr [ %.1.ph.us, %thread-pre-split.us ], [ %i.n, %bb.d ] ; 7 uses
  switch i8 %i.s, label %bb.g [
    i8 32, label %7
    i8 9, label %7
  ]

bb.g:                                             ; preds = %bb.f
  %i.t = ptrtoint ptr %.1.us to i64
  %i.u = sub i64 %i.i, %i.t
  %i.v = load i32, ptr %i.j, align 8
  %i.w = zext i32 %i.v to i64                     ; 3 uses
  %.not83.us = icmp slt i64 %i.u, %i.w
  br i1 %.not83.us, label %7, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = load ptr, ptr %i.c, align 16
  %i.y = tail call i32 @strncasecmp(ptr noundef %.1.us, ptr noundef %i.x, i64 noundef %i.w) #12
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %.split.us, label %7

7:                                                ; preds = %bb.g, %bb.h, %bb.f, %bb.f, %.lr.ph.split.us
  %.4.us = phi ptr [ %.067102.us, %.lr.ph.split.us ], [ %.1.us, %bb.f ], [ %.1.us, %bb.f ], [ %.1.us, %bb.h ], [ %.1.us, %bb.g ]
  %8 = getelementptr i8, ptr %.4.us, i64 1        ; 2 uses
  %9 = icmp ult ptr %8, %i.e
  br i1 %9, label %.lr.ph.split.us, label %sip_skip_whitespace.exit.thread, !llvm.loop !25

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.ac
  %.067102 = phi ptr [ %i.bz, %bb.ac ], [ %i.g, %.lr.ph ] ; 4 uses
  %10 = load i8, ptr %.067102, align 1            ; 2 uses
  switch i8 %10, label %bb.ac [
    i8 13, label %11
    i8 10, label %11
  ]

11:                                               ; preds = %.lr.ph.split, %.lr.ph.split
  %12 = getelementptr i8, ptr %.067102, i64 1     ; 4 uses
  %.not81 = icmp ult ptr %12, %i.e
  br i1 %.not81, label %13, label %sip_skip_whitespace.exit.thread

13:                                               ; preds = %11
  %14 = icmp eq i8 %10, 13
  br i1 %14, label %15, label %thread-pre-split

15:                                               ; preds = %13
  %16 = load i8, ptr %12, align 1                 ; 2 uses
  %17 = icmp eq i8 %16, 10
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = getelementptr i8, ptr %.067102, i64 2     ; 2 uses
  %.not82 = icmp ult ptr %19, %i.e
  br i1 %.not82, label %thread-pre-split, label %sip_skip_whitespace.exit.thread

thread-pre-split:                                 ; preds = %13, %18
  %.1.ph = phi ptr [ %12, %13 ], [ %19, %18 ]     ; 2 uses
  %.pr = load i8, ptr %.1.ph, align 1
  br label %20

20:                                               ; preds = %thread-pre-split, %15
  %21 = phi i8 [ %.pr, %thread-pre-split ], [ %16, %15 ]
  %.1 = phi ptr [ %.1.ph, %thread-pre-split ], [ %12, %15 ] ; 11 uses
  switch i8 %21, label %22 [
    i8 32, label %bb.ac
    i8 9, label %bb.ac
  ]

22:                                               ; preds = %20
  %23 = ptrtoint ptr %.1 to i64
  %24 = sub i64 %i.i, %23                         ; 2 uses
  %25 = load i32, ptr %i.j, align 8
  %26 = zext i32 %25 to i64                       ; 3 uses
  %.not83 = icmp slt i64 %24, %26
  br i1 %.not83, label %bb.j, label %bb.i

bb.i:                                             ; preds = %22
  %i.aa = load ptr, ptr %i.c, align 16
  %27 = tail call i32 @strncasecmp(ptr noundef %.1, ptr noundef %i.aa, i64 noundef %26) #12
  %i.ab = icmp eq i32 %27, 0
  br i1 %i.ab, label %.split.us, label %bb.j

.split.us:                                        ; preds = %bb.h, %bb.i
  %.us-phi = phi i64 [ %26, %bb.i ], [ %i.w, %bb.h ]
  %.us-phi105 = phi ptr [ %.1, %bb.i ], [ %.1.us, %bb.h ]
  %28 = getelementptr i8, ptr %.us-phi105, i64 %.us-phi
  br label %.loopexit

bb.j:                                             ; preds = %bb.i, %22
  %i.ac = load i32, ptr %i.l, align 4             ; 2 uses
  %i.ad = add i32 %i.ac, 1
  %i.ae = zext i32 %i.ad to i64
  %.not85 = icmp slt i64 %24, %i.ae
  br i1 %.not85, label %bb.ac, label %bb.k

bb.k:                                             ; preds = %bb.j
  %29 = load ptr, ptr %i.k, align 8
  %i.af = zext i32 %i.ac to i64                   ; 3 uses
  %i.ag = tail call i32 @strncasecmp(ptr noundef %.1, ptr noundef %29, i64 noundef %i.af) #12
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.l, label %bb.ac

bb.l:                                             ; preds = %bb.k
  %i.ai = getelementptr i8, ptr %.1, i64 %i.af
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = zext i8 %i.aj to i64
  %i.al = getelementptr i8, ptr @_ctype, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1
  %i.an = and i8 %i.am, 3
  %.not86 = icmp eq i8 %i.an, 0
  br i1 %.not86, label %.loopexit.loopexit, label %bb.ac

.loopexit.loopexit:                               ; preds = %bb.l
  %30 = getelementptr i8, ptr %.1, i64 %i.af
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.split.us
  %.2 = phi ptr [ %28, %.split.us ], [ %30, %.loopexit.loopexit ] ; 5 uses
  %i.ao = icmp ult ptr %.2, %i.e
  br i1 %i.ao, label %.lr.ph.preheader.i, label %sip_skip_whitespace.exit

.lr.ph.preheader.i:                               ; preds = %.loopexit
  %i.ap = ptrtoaddr ptr %.2 to i64
  %i.aq = sub i64 %i.i, %i.ap
  %scevgep.i = getelementptr i8, ptr %.2, i64 %i.aq
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.t, %.lr.ph.preheader.i
  %.015.i = phi ptr [ %i.bc, %bb.t ], [ %.2, %.lr.ph.preheader.i ] ; 5 uses
  %i.ar = load i8, ptr %.015.i, align 1           ; 2 uses
  switch i8 %i.ar, label %sip_skip_whitespace.exit [
    i8 32, label %bb.t
    i8 9, label %bb.t
    i8 13, label %bb.m
    i8 10, label %bb.m
  ]

bb.m:                                             ; preds = %.lr.ph.i, %.lr.ph.i
  %i.as = getelementptr i8, ptr %.015.i, i64 1    ; 4 uses
  %.not.i.i = icmp ult ptr %i.as, %i.e
  br i1 %.not.i.i, label %bb.n, label %sip_skip_whitespace.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.at = icmp eq i8 %i.ar, 13
  br i1 %i.at, label %bb.o, label %thread-pre-split.i.i

bb.o:                                             ; preds = %bb.n
  %i.au = load i8, ptr %i.as, align 1             ; 2 uses
  %i.av = icmp eq i8 %i.au, 10
  br i1 %i.av, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.aw = getelementptr i8, ptr %.015.i, i64 2    ; 2 uses
  %.not21.i.i = icmp ult ptr %i.aw, %i.e
  br i1 %.not21.i.i, label %thread-pre-split.i.i, label %sip_skip_whitespace.exit.thread

thread-pre-split.i.i:                             ; preds = %bb.p, %bb.n
  %.015.ph.i.i = phi ptr [ %i.as, %bb.n ], [ %i.aw, %bb.p ] ; 2 uses
  %.pr.i.i = load i8, ptr %.015.ph.i.i, align 1
  br label %bb.q

bb.q:                                             ; preds = %thread-pre-split.i.i, %bb.o
  %i.ax = phi i8 [ %.pr.i.i, %thread-pre-split.i.i ], [ %i.au, %bb.o ]
  %.015.i.i = phi ptr [ %.015.ph.i.i, %thread-pre-split.i.i ], [ %i.as, %bb.o ] ; 5 uses
  %.01529.i.i = ptrtoaddr ptr %.015.i.i to i64
  switch i8 %i.ax, label %sip_skip_whitespace.exit.thread [
    i8 32, label %bb.r
    i8 9, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q, %bb.q
  %i.ay = icmp ult ptr %.015.i.i, %i.e
  br i1 %i.ay, label %.lr.ph.preheader.i.i, label %sip_skip_whitespace.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.r
  %i.az = sub i64 %i.i, %.01529.i.i
  %scevgep.i.i = getelementptr i8, ptr %.015.i.i, i64 %i.az
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.s, %.lr.ph.preheader.i.i
  %.126.i.i = phi ptr [ %i.bb, %bb.s ], [ %.015.i.i, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ba = load i8, ptr %.126.i.i, align 1
  switch i8 %i.ba, label %sip_skip_whitespace.exit [
    i8 32, label %bb.s
    i8 9, label %bb.s
  ]

bb.s:                                             ; preds = %.lr.ph.i.i, %.lr.ph.i.i
  %i.bb = getelementptr i8, ptr %.126.i.i, i64 1  ; 2 uses
  %exitcond.not.i.i = icmp eq ptr %i.bb, %i.e
  br i1 %exitcond.not.i.i, label %sip_skip_whitespace.exit, label %.lr.ph.i.i, !llvm.loop !2

bb.t:                                             ; preds = %.lr.ph.i, %.lr.ph.i
  %i.bc = getelementptr i8, ptr %.015.i, i64 1    ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.bc, %i.e
  br i1 %exitcond.not.i, label %sip_skip_whitespace.exit, label %.lr.ph.i, !llvm.loop !3

sip_skip_whitespace.exit:                         ; preds = %.lr.ph.i, %bb.t, %.lr.ph.i.i, %bb.s, %.loopexit, %bb.r
  %.1.i = phi ptr [ %.015.i.i, %bb.r ], [ %.2, %.loopexit ], [ %scevgep.i.i, %bb.s ], [ %.126.i.i, %.lr.ph.i.i ], [ %scevgep.i, %bb.t ], [ %.015.i, %.lr.ph.i ] ; 3 uses
  %i.bd = icmp eq ptr %.1.i, null
  br i1 %i.bd, label %sip_skip_whitespace.exit.thread, label %bb.u

bb.u:                                             ; preds = %sip_skip_whitespace.exit
  %i.be = load i8, ptr %.1.i, align 1
  %.not87 = icmp eq i8 %i.be, 58
  br i1 %.not87, label %bb.v, label %sip_skip_whitespace.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.bf = getelementptr i8, ptr %.1.i, i64 1      ; 2 uses
  %.not88 = icmp ult ptr %i.bf, %i.e
  br i1 %.not88, label %bb.w, label %sip_skip_whitespace.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.bg = tail call fastcc ptr @sip_skip_whitespace(ptr noundef %i.bf, ptr noundef nonnull %i.e) #12, !srcloc !26 ; 4 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %sip_skip_whitespace.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = trunc i64 %i.bk to i32
  store i32 %i.bl, ptr %5, align 4
  %31 = add i32 %4, -6
  %.not89 = icmp ult i32 %31, -5
  br i1 %.not89, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %32 = getelementptr i8, ptr %i.c, i64 16
  %33 = load ptr, ptr %32, align 16
  %i.bm = getelementptr i8, ptr %i.c, i64 32
  %i.bn = load i32, ptr %i.bm, align 16           ; 2 uses
  %i.bo = tail call fastcc ptr @ct_sip_header_search(ptr noundef nonnull %i.bg, ptr noundef nonnull %i.e, ptr noundef %33, i32 noundef %i.bn) #12, !srcloc !27 ; 2 uses
  %.not90 = icmp eq ptr %i.bo, null
  br i1 %.not90, label %sip_skip_whitespace.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bp = zext i32 %i.bn to i64
  %i.bq = getelementptr i8, ptr %i.bo, i64 %i.bp
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.x
  %.3 = phi ptr [ %i.bq, %bb.z ], [ %i.bg, %bb.x ] ; 2 uses
  %i.br = getelementptr i8, ptr %i.c, i64 40
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = call i32 %i.bs(ptr noundef %0, ptr noundef %.3, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a) #14 ; 2 uses
  store i32 %i.bt, ptr %6, align 4
  %.not91 = icmp eq i32 %i.bt, 0
  br i1 %.not91, label %sip_skip_whitespace.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bu = ptrtoint ptr %.3 to i64
  %i.bv = sub i64 %i.bu, %i.bj
  %i.bw = load i32, ptr %i.a, align 4
  %i.bx = trunc i64 %i.bv to i32
  %i.by = add i32 %i.bw, %i.bx
  store i32 %i.by, ptr %5, align 4
  br label %sip_skip_whitespace.exit.thread

bb.ac:                                            ; preds = %20, %20, %.lr.ph.split, %bb.j, %bb.k, %bb.l
  %.4 = phi ptr [ %.067102, %.lr.ph.split ], [ %.1, %20 ], [ %.1, %20 ], [ %.1, %bb.l ], [ %.1, %bb.k ], [ %.1, %bb.j ]
  %i.bz = getelementptr i8, ptr %.4, i64 1        ; 2 uses
  %i.ca = icmp ult ptr %i.bz, %i.e
  br i1 %i.ca, label %.lr.ph.split, label %sip_skip_whitespace.exit.thread, !llvm.loop !25

sip_skip_whitespace.exit.thread:                  ; preds = %bb.e, %bb.b, %7, %18, %11, %bb.ac, %bb.a, %bb.p, %bb.m, %bb.q, %sip_skip_whitespace.exit, %bb.v, %bb.u, %bb.w, %bb.aa, %bb.y, %bb.ab
  %.0 = phi i32 [ -1, %bb.aa ], [ 1, %bb.ab ], [ -1, %bb.y ], [ 0, %bb.w ], [ 0, %bb.u ], [ 0, %bb.v ], [ 0, %sip_skip_whitespace.exit ], [ 0, %bb.q ], [ 0, %bb.m ], [ 0, %bb.p ], [ 0, %18 ], [ 0, %bb.a ], [ 0, %bb.ac ], [ 0, %11 ], [ 0, %7 ], [ 0, %bb.b ], [ 0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: read)
define internal fastcc ptr @sip_skip_whitespace(ptr nofree noundef readonly captures(address, ret: address, provenance) %0, ptr nofree noundef readnone captures(address) %1) unnamed_addr #3 align 16 prefalign(16) {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = icmp ult ptr %0, %1
  br i1 %i.b, label %.lr.ph.preheader, label %sip_follow_continuation.exit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = ptrtoaddr ptr %0 to i64
  %i.d = sub i64 %i.a, %i.c
  %scevgep = getelementptr i8, ptr %0, i64 %i.d
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %.015 = phi ptr [ %i.p, %bb.i ], [ %0, %.lr.ph.preheader ] ; 5 uses
  %i.e = load i8, ptr %.015, align 1              ; 2 uses
  switch i8 %i.e, label %sip_follow_continuation.exit [
    i8 32, label %bb.i
    i8 9, label %bb.i
    i8 13, label %bb.b
    i8 10, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph, %.lr.ph
  %i.f = getelementptr i8, ptr %.015, i64 1       ; 4 uses
  %.not.i = icmp ult ptr %i.f, %1
  br i1 %.not.i, label %bb.c, label %sip_follow_continuation.exit

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i8 %i.e, 13
  br i1 %i.g, label %bb.d, label %thread-pre-split.i

bb.d:                                             ; preds = %bb.c
  %i.h = load i8, ptr %i.f, align 1               ; 2 uses
  %i.i = icmp eq i8 %i.h, 10
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %.015, i64 2       ; 2 uses
  %.not21.i = icmp ult ptr %i.j, %1
  br i1 %.not21.i, label %thread-pre-split.i, label %sip_follow_continuation.exit

thread-pre-split.i:                               ; preds = %bb.e, %bb.c
  %.015.ph.i = phi ptr [ %i.f, %bb.c ], [ %i.j, %bb.e ] ; 2 uses
  %.pr.i = load i8, ptr %.015.ph.i, align 1
  br label %bb.f

bb.f:                                             ; preds = %thread-pre-split.i, %bb.d
  %i.k = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.h, %bb.d ]
  %.015.i = phi ptr [ %.015.ph.i, %thread-pre-split.i ], [ %i.f, %bb.d ] ; 5 uses
  %.01529.i = ptrtoaddr ptr %.015.i to i64
  switch i8 %i.k, label %sip_follow_continuation.exit [
    i8 32, label %bb.g
    i8 9, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  %i.l = icmp ult ptr %.015.i, %1
  br i1 %i.l, label %.lr.ph.preheader.i, label %sip_follow_continuation.exit

.lr.ph.preheader.i:                               ; preds = %bb.g
  %i.m = sub i64 %i.a, %.01529.i
  %scevgep.i = getelementptr i8, ptr %.015.i, i64 %i.m
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.preheader.i
  %.126.i = phi ptr [ %i.o, %bb.h ], [ %.015.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.n = load i8, ptr %.126.i, align 1
  switch i8 %i.n, label %sip_follow_continuation.exit [
    i8 32, label %bb.h
    i8 9, label %bb.h
  ]

bb.h:                                             ; preds = %.lr.ph.i, %.lr.ph.i
  %i.o = getelementptr i8, ptr %.126.i, i64 1     ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.o, %1
  br i1 %exitcond.not.i, label %sip_follow_continuation.exit, label %.lr.ph.i, !llvm.loop !2

bb.i:                                             ; preds = %.lr.ph, %.lr.ph
  %i.p = getelementptr i8, ptr %.015, i64 1       ; 2 uses
  %exitcond.not = icmp eq ptr %i.p, %1
  br i1 %exitcond.not, label %sip_follow_continuation.exit, label %.lr.ph, !llvm.loop !3

sip_follow_continuation.exit:                     ; preds = %bb.i, %.lr.ph, %bb.h, %.lr.ph.i, %bb.a, %bb.g, %bb.f, %bb.e, %bb.b
  %.1 = phi ptr [ %.015.i, %bb.g ], [ %0, %bb.a ], [ null, %bb.f ], [ null, %bb.b ], [ null, %bb.e ], [ %.126.i, %.lr.ph.i ], [ %scevgep.i, %bb.h ], [ %scevgep, %bb.i ], [ %.015, %.lr.ph ]
  ret ptr %.1
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nounwind null_pointer_is_valid sspstrong memory(read)
define internal fastcc noundef ptr @ct_sip_header_search(ptr nofree noundef readonly captures(address, ret: address, provenance) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) unnamed_addr #4 align 16 prefalign(16) {
bb.a:
  %i.a = zext i32 %3 to i64                       ; 2 uses
  %i.b = sub nsw i64 0, %i.a
  %i.c = getelementptr i8, ptr %1, i64 %i.b       ; 7 uses
  %i.d = icmp ult ptr %0, %i.c
  br i1 %i.d, label %.lr.ph, label %sip_follow_continuation.exit.thread

.lr.ph:                                           ; preds = %bb.a
  %i.e = ptrtoaddr ptr %i.c to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %.01419 = phi ptr [ %0, %.lr.ph ], [ %i.t, %bb.k ] ; 6 uses
  %i.f = load i8, ptr %.01419, align 1            ; 2 uses
  switch i8 %i.f, label %bb.j [
    i8 13, label %bb.c
    i8 10, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.g = getelementptr i8, ptr %.01419, i64 1     ; 4 uses
  %.not.i = icmp ult ptr %i.g, %i.c
  br i1 %.not.i, label %bb.d, label %sip_follow_continuation.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.h = icmp eq i8 %i.f, 13
  br i1 %i.h, label %bb.e, label %thread-pre-split.i

bb.e:                                             ; preds = %bb.d
  %i.i = load i8, ptr %i.g, align 1               ; 2 uses
  %i.j = icmp eq i8 %i.i, 10
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr i8, ptr %.01419, i64 2     ; 2 uses
  %.not21.i = icmp ult ptr %i.k, %i.c
  br i1 %.not21.i, label %thread-pre-split.i, label %sip_follow_continuation.exit.thread

thread-pre-split.i:                               ; preds = %bb.f, %bb.d
  %.015.ph.i = phi ptr [ %i.g, %bb.d ], [ %i.k, %bb.f ] ; 2 uses
  %.pr.i = load i8, ptr %.015.ph.i, align 1
  br label %bb.g

bb.g:                                             ; preds = %thread-pre-split.i, %bb.e
  %i.l = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.i, %bb.e ]
  %.015.i = phi ptr [ %.015.ph.i, %thread-pre-split.i ], [ %i.g, %bb.e ] ; 5 uses
  %.01529.i = ptrtoaddr ptr %.015.i to i64
  switch i8 %i.l, label %sip_follow_continuation.exit.thread [
    i8 32, label %bb.h
    i8 9, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  %i.m = icmp ult ptr %.015.i, %i.c
  br i1 %i.m, label %.lr.ph.preheader.i, label %sip_follow_continuation.exit

.lr.ph.preheader.i:                               ; preds = %bb.h
  %i.n = sub i64 %i.e, %.01529.i
  %scevgep.i = getelementptr i8, ptr %.015.i, i64 %i.n
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.preheader.i
  %.126.i = phi ptr [ %i.p, %bb.i ], [ %.015.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.o = load i8, ptr %.126.i, align 1
  switch i8 %i.o, label %sip_follow_continuation.exit [
    i8 32, label %bb.i
    i8 9, label %bb.i
  ]

bb.i:                                             ; preds = %.lr.ph.i, %.lr.ph.i
  %i.p = getelementptr i8, ptr %.126.i, i64 1     ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.p, %i.c
  br i1 %exitcond.not.i, label %sip_follow_continuation.exit, label %.lr.ph.i, !llvm.loop !2

sip_follow_continuation.exit:                     ; preds = %.lr.ph.i, %bb.i, %bb.h
  %.0.i = phi ptr [ %.015.i, %bb.h ], [ %scevgep.i, %bb.i ], [ %.126.i, %.lr.ph.i ] ; 2 uses
  %i.q = icmp eq ptr %.0.i, null
  br i1 %i.q, label %sip_follow_continuation.exit.thread, label %bb.k

bb.j:                                             ; preds = %bb.b
  %i.r = tail call i32 @strncasecmp(ptr noundef %.01419, ptr noundef %2, i64 noundef %i.a) #12
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %sip_follow_continuation.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j, %sip_follow_continuation.exit
  %.1 = phi ptr [ %.0.i, %sip_follow_continuation.exit ], [ %.01419, %bb.j ]
  %i.t = getelementptr i8, ptr %.1, i64 1         ; 2 uses
  %i.u = icmp ult ptr %i.t, %i.c
  br i1 %i.u, label %bb.b, label %sip_follow_continuation.exit.thread, !llvm.loop !4

sip_follow_continuation.exit.thread:              ; preds = %bb.j, %sip_follow_continuation.exit, %bb.k, %bb.g, %bb.c, %bb.f, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ null, %sip_follow_continuation.exit ], [ null, %bb.k ], [ null, %bb.g ], [ null, %bb.c ], [ null, %bb.f ], [ %.01419, %bb.j ]
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -1, 2) i32 @ct_sip_parse_header_uri(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(address_is_null) %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef captures(address_is_null) %5, ptr nofree noundef captures(none) %6, ptr nofree noundef writeonly captures(none) %7, ptr noundef %8, ptr nofree noundef writeonly captures(address_is_null) %9) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 9 uses
  %i.c = zext i32 %3 to i64
  %i.d = getelementptr i8, ptr %1, i64 %i.c       ; 12 uses
  %.not = icmp eq ptr %2, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_0
