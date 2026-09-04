Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/pcapng?download=true
inline.NumInlined: 157
inline.NumDeleted: 35
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@pcapng_process_if_descr_block_option:bb.a

bb.ac:                                            ; preds = %bb.a
  %i.ch = zext i16 %3 to i64
  %i.ci = tail call ptr @ws_utf8_make_valid(ptr noundef null, ptr noundef %4, i64 noundef %i.ch) ; 2 uses
  %i.cj = getelementptr i8, ptr %0, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = tail call i32 @wtap_block_add_string_option_owned(ptr noundef %i.ck, i32 noundef 15, ptr noundef %i.ci)
  %.not.i131 = icmp eq i32 %i.cl, 0
  br i1 %.not.i131, label %pcapng_process_unhandled_option.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @g_free(ptr noundef %i.ci)
  br label %pcapng_process_unhandled_option.exit

bb.ae:                                            ; preds = %bb.a
  %i.cm = icmp eq i16 %3, 8
  br i1 %i.cm, label %bb.af, label %pcapng_process_unhandled_option.exit

bb.af:                                            ; preds = %bb.ae
  %i.cn = load i64, ptr %4, align 1               ; 2 uses
  %i.co = load i8, ptr %1, align 8, !range !8, !noundef !9
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.cq = tail call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.cn) #17, !srcloc !13
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.032.i133 = phi i64 [ %i.cq, %bb.ag ], [ %i.cn, %bb.af ]
  %i.cr = getelementptr i8, ptr %0, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = tail call i32 @wtap_block_add_uint64_option(ptr noundef %i.cs, i32 noundef 16, i64 noundef %.032.i133) ; 0 uses
  br label %pcapng_process_unhandled_option.exit

bb.ai:                                            ; preds = %bb.a
  %i.cu = icmp eq i16 %3, 8
  br i1 %i.cu, label %bb.aj, label %pcapng_process_unhandled_option.exit

bb.aj:                                            ; preds = %bb.ai
  %i.cv = load i64, ptr %4, align 1               ; 2 uses
  %i.cw = load i8, ptr %1, align 8, !range !8, !noundef !9
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.cy = tail call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.cv) #17, !srcloc !13
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.032.i135 = phi i64 [ %i.cy, %bb.ak ], [ %i.cv, %bb.aj ]
  %i.cz = getelementptr i8, ptr %0, i64 8
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = tail call i32 @wtap_block_add_uint64_option(ptr noundef %i.da, i32 noundef 17, i64 noundef %.032.i135) ; 0 uses
  br label %pcapng_process_unhandled_option.exit

bb.am:                                            ; preds = %bb.a
  %i.dc = zext i16 %3 to i64
  %i.dd = tail call ptr @ws_utf8_make_valid(ptr noundef null, ptr noundef %4, i64 noundef %i.dc) ; 2 uses
  %i.de = getelementptr i8, ptr %0, i64 8
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = tail call i32 @wtap_block_add_string_option_owned(ptr noundef %i.df, i32 noundef 18, ptr noundef %i.dd)
  %.not.i137 = icmp eq i32 %i.dg, 0
  br i1 %.not.i137, label %pcapng_process_unhandled_option.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  tail call void @g_free(ptr noundef %i.dd)
  br label %pcapng_process_unhandled_option.exit

bb.ao:                                            ; preds = %bb.a
  %i.dh = load i32, ptr %0, align 8
  %i.di = load ptr, ptr @block_handlers, align 8
  %i.dj = zext i32 %i.dh to i64
  %i.dk = inttoptr i64 %i.dj to ptr
  %i.dl = tail call ptr @g_hash_table_lookup(ptr noundef %i.di, ptr noundef %i.dk) ; 2 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %pcapng_process_unhandled_option.exit.thread, label %get_option_handlers.exit.i

get_option_handlers.exit.i:                       ; preds = %bb.ao
  %i.dn = getelementptr i8, ptr %i.dl, i64 40
  %i.do = load ptr, ptr %i.dn, align 8            ; 2 uses
  %.not.i139 = icmp eq ptr %i.do, null
  br i1 %.not.i139, label %pcapng_process_unhandled_option.exit.thread, label %bb.ap

bb.ap:                                            ; preds = %get_option_handlers.exit.i
  %i.dp = zext i16 %2 to i64
  %i.dq = inttoptr i64 %i.dp to ptr
  %i.dr = tail call ptr @g_hash_table_lookup(ptr noundef nonnull %i.do, ptr noundef %i.dq) ; 2 uses
  %.not13.i = icmp eq ptr %i.dr, null
  br i1 %.not13.i, label %pcapng_process_unhandled_option.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = getelementptr i8, ptr %0, i64 8
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = load i8, ptr %1, align 8, !range !8, !noundef !9
  %i.dw = trunc nuw i8 %i.dv to i1
  %i.dx = zext i16 %3 to i32
  %i.dy = tail call zeroext i1 %i.ds(ptr noundef %i.du, i1 noundef zeroext %i.dw, i32 noundef %i.dx, ptr noundef %4, ptr noundef %5, ptr noundef %6), !inline_history !1
  br i1 %i.dy, label %pcapng_process_unhandled_option.exit.thread, label %pcapng_process_unhandled_option.exit

pcapng_process_unhandled_option.exit.thread:      ; preds = %bb.ao, %get_option_handlers.exit.i, %bb.ap, %bb.aq
  br label %pcapng_process_unhandled_option.exit

pcapng_process_unhandled_option.exit:             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %._crit_edge, %bb.o, %bb.n, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.i, %bb.j, %bb.k, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.ah, %bb.ai, %bb.al, %bb.am, %bb.an, %pcapng_process_unhandled_option.exit.thread, %bb.aq, %bb.m
  %.0 = phi i1 [ false, %bb.aq ], [ false, %bb.m ], [ true, %pcapng_process_unhandled_option.exit.thread ], [ true, %bb.an ], [ true, %bb.am ], [ true, %bb.al ], [ true, %bb.ai ], [ true, %bb.ah ], [ true, %bb.ae ], [ true, %bb.ad ], [ true, %bb.ac ], [ true, %bb.ab ], [ true, %bb.y ], [ true, %bb.x ], [ true, %bb.w ], [ true, %bb.v ], [ true, %bb.u ], [ true, %bb.k ], [ true, %bb.j ], [ true, %bb.i ], [ true, %bb.f ], [ true, %bb.e ], [ true, %bb.d ], [ true, %bb.c ], [ true, %bb.b ], [ true, %bb.n ], [ true, %bb.o ], [ true, %._crit_edge ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  ret i1 %.0
}

; Function Attrs: null_pointer_is_valid
declare i32 @wtap_block_get_uint8_option_value(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare noalias ptr @g_strndup(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @wtap_block_add_if_filter_option(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @wtap_add_idb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @wtap_block_get_int64_option_value(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare void @wtap_setup_packet_rec(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @pcap_process_pseudo_header(ptr noundef, i1 noundef zeroext, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #12

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @wtap_read_bytes_buffer(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @pcapng_process_packet_block_option(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i16 noundef zeroext %2, i16 noundef zeroext %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #0 {
bb.a:
  %7 = alloca %struct.packet_verdict_opt_s, align 8 ; 10 uses
  %8 = alloca %struct.packet_hash_opt_s, align 8  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  switch i16 %2, label %bb.an [
    i16 2, label %bb.b
    i16 3, label %bb.f
    i16 4, label %bb.i
    i16 5, label %bb.m
    i16 6, label %bb.q
    i16 7, label %bb.u
    i16 8, label %bb.aj
  ]

bb.b:                                             ; preds = %bb.a
  %.not126 = icmp eq i16 %3, 4
  br i1 %.not126, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = zext i16 %3 to i32
  store i32 -13, ptr %5, align 4
  %i.b = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.40, i32 noundef %i.a)
  store ptr %i.b, ptr %6, align 8
  br label %pcapng_process_unhandled_option.exit

bb.d:                                             ; preds = %bb.b
  %i.c = load i32, ptr %4, align 1                ; 2 uses
  %i.d = load i8, ptr %1, align 8, !range !8, !noundef !9
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.e, label %pcapng_process_uint32_option.exit

bb.e:                                             ; preds = %bb.d
  %i.f = tail call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.c) #17, !srcloc !10
  br label %pcapng_process_uint32_option.exit

pcapng_process_uint32_option.exit:                ; preds = %bb.d, %bb.e
  %.024.i = phi i32 [ %i.f, %bb.e ], [ %i.c, %bb.d ]
  %i.g = getelementptr i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call i32 @wtap_block_add_uint32_option(ptr noundef %i.h, i32 noundef 2, i32 noundef %.024.i) ; 0 uses
  br label %pcapng_process_unhandled_option.exit

bb.f:                                             ; preds = %bb.a
  %i.j = icmp eq i16 %3, 0
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 -13, ptr %5, align 4
  %i.k = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.41, i32 noundef 0)
  store ptr %i.k, ptr %6, align 8
  br label %pcapng_process_unhandled_option.exit

bb.h:                                             ; preds = %bb.f
  %i.l = zext i16 %3 to i64
  %i.m = load i8, ptr %4, align 1
  store i8 %i.m, ptr %8, align 8
  %i.n = getelementptr i8, ptr %4, i64 1
  %i.o = add nuw nsw i64 %i.l, 4294967295
  %9 = and i64 %i.o, 4294967295                   ; 2 uses
  %i.p = tail call ptr @g_memdup2(ptr noundef %i.n, i64 noundef %9) #22
  %i.q = tail call ptr @g_byte_array_new_take(ptr noundef %i.p, i64 noundef %9)
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.q, ptr %i.r, align 8
  %i.s = getelementptr i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = call i32 @wtap_block_add_packet_hash_option(ptr noundef %i.t, i32 noundef 3, ptr noundef nonnull %8) ; 0 uses
  call void @wtap_packet_hash_free(ptr noundef nonnull %8)
  br label %pcapng_process_unhandled_option.exit

bb.i:                                             ; preds = %bb.a
  %.not125 = icmp eq i16 %3, 8
  br i1 %.not125, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = zext i16 %3 to i32
  store i32 -13, ptr %5, align 4
  %i.w = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.42, i32 noundef %i.v)
  store ptr %i.w, ptr %6, align 8
  br label %pcapng_process_unhandled_option.exit

bb.k:                                             ; preds = %bb.i
  %i.x = load i64, ptr %4, align 1                ; 2 uses
  %i.y = load i8, ptr %1, align 8, !range !8, !noundef !9
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.l, label %pcapng_process_uint64_option.exit

bb.l:                                             ; preds = %bb.k
  %i.aa = tail call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.x) #17, !srcloc !13
  br label %pcapng_process_uint64_option.exit

pcapng_process_uint64_option.exit:                ; preds = %bb.k, %bb.l
  %.032.i = phi i64 [ %i.aa, %bb.l ], [ %i.x, %bb.k ]
  %i.ab = getelementptr i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call i32 @wtap_block_add_uint64_option(ptr noundef %i.ac, i32 noundef 4, i64 noundef %.032.i) ; 0 uses
  br label %pcapng_process_unhandled_option.exit

bb.m:                                             ; preds = %bb.a
  %.not124 = icmp eq i16 %3, 8
  br i1 %.not124, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = zext i16 %3 to i32
  store i32 -13, ptr %5, align 4
  %i.af = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.43, i32 noundef %i.ae)
  store ptr %i.af, ptr %6, align 8
  br label %pcapng_process_unhandled_option.exit

bb.o:                                             ; preds = %bb.m
  %i.ag = load i64, ptr %4, align 1               ; 2 uses
  %i.ah = load i8, ptr %1, align 8, !range !8, !noundef !9
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.p, label %pcapng_process_uint64_option.exit128

bb.p:                                             ; preds = %bb.o
  %i.aj = tail call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.ag) #17, !srcloc !13
  br label %pcapng_process_uint64_option.exit128

pcapng_process_uint64_option.exit128:             ; preds = %bb.o, %bb.p
  %.032.i127 = phi i64 [ %i.aj, %bb.p ], [ %i.ag, %bb.o ]
  %i.ak = getelementptr i8, ptr %0, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = tail call i32 @wtap_block_add_uint64_option(ptr noundef %i.al, i32 noundef 5, i64 noundef %.032.i127) ; 0 uses
  br label %pcapng_process_unhandled_option.exit

bb.q:                                             ; preds = %bb.a
  %.not123 = icmp eq i16 %3, 4
  br i1 %.not123, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.an = zext i16 %3 to i32
  store i32 -13, ptr %5, align 4
  %i.ao = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.44, i32 noundef %i.an)
  store ptr %i.ao, ptr %6, align 8
  br label %pcapng_process_unhandled_option.exit

bb.s:                                             ; preds = %bb.q
  %i.ap = load i32, ptr %4, align 1               ; 2 uses
  %i.aq = load i8, ptr %1, align 8, !range !8, !noundef !9
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.t, label %pcapng_process_uint32_option.exit130

bb.t:                                             ; preds = %bb.s
  %i.as = tail call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ap) #17, !srcloc !10
  br label %pcapng_process_uint32_option.exit130

pcapng_process_uint32_option.exit130:             ; preds = %bb.s, %bb.t
  %.024.i129 = phi i32 [ %i.as, %bb.t ], [ %i.ap, %bb.s ]
  %i.at = getelementptr i8, ptr %0, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = tail call i32 @wtap_block_add_uint32_option(ptr noundef %i.au, i32 noundef 6, i32 noundef %.024.i129) ; 0 uses
  br label %pcapng_process_unhandled_option.exit

bb.u:                                             ; preds = %bb.a
  %i.aw = zext i16 %3 to i32                      ; 3 uses
  %i.ax = icmp eq i16 %3, 0
  br i1 %i.ax, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 -13, ptr %5, align 4
  %i.ay = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.45, i32 noundef 0)
  store ptr %i.ay, ptr %6, align 8
  br label %pcapng_process_unhandled_option.exit

bb.w:                                             ; preds = %bb.u
  %i.az = load i8, ptr %4, align 1
  switch i8 %i.az, label %pcapng_process_unhandled_option.exit [
    i8 0, label %bb.x
    i8 1, label %bb.y
    i8 2, label %bb.ad
  ]

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %7, align 8
  %i.ba = getelementptr i8, ptr %4, i64 1
  %i.bb = add nsw i32 %i.aw, -1
  %i.bc = zext nneg i32 %i.bb to i64              ; 2 uses
  %i.bd = tail call ptr @g_memdup2(ptr noundef %i.ba, i64 noundef %i.bc) #22
  %i.be = tail call ptr @g_byte_array_new_take(ptr noundef %i.bd, i64 noundef %i.bc)
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.be, ptr %i.bf, align 8
  br label %bb.ai

bb.y:                                             ; preds = %bb.w
  %.not122 = icmp eq i16 %3, 9
  br i1 %.not122, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i32 -13, ptr %5, align 4
  %i.bg = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.46, i32 noundef %i.aw)
  store ptr %i.bg, ptr %6, align 8
  br label %pcapng_process_unhandled_option.exit

bb.aa:                                            ; preds = %bb.y
  %i.bh = getelementptr i8, ptr %4, i64 1
  %i.bi = load i64, ptr %i.bh, align 1            ; 2 uses
  %i.bj = load i8, ptr %1, align 8, !range !8, !noundef !9
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bl = tail call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.bi) #17, !srcloc !107
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.0137 = phi i64 [ %i.bi, %bb.aa ], [ %i.bl, %bb.ab ]
  store i32 1, ptr %7, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %.0137, ptr %i.bm, align 8
  br label %bb.ai

bb.ad:                                            ; preds = %bb.w
  %.not121 = icmp eq i16 %3, 9
  br i1 %.not121, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i32 -13, ptr %5, align 4
  %i.bn = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.47, i32 noundef %i.aw)
  store ptr %i.bn, ptr %6, align 8
  br label %pcapng_process_unhandled_option.exit

bb.af:                                            ; preds = %bb.ad
  %i.bo = getelementptr i8, ptr %4, i64 1
  %i.bp = load i64, ptr %i.bo, align 1            ; 2 uses
  %i.bq = load i8, ptr %1, align 8, !range !8, !noundef !9
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.bs = tail call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.bp) #17, !srcloc !108
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.1 = phi i64 [ %i.bp, %bb.af ], [ %i.bs, %bb.ag ]
  store i32 2, ptr %7, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %.1, ptr %i.bt, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ac, %bb.x
  %i.bu = getelementptr i8, ptr %0, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = call i32 @wtap_block_add_packet_verdict_option(ptr noundef %i.bv, i32 noundef 7, ptr noundef nonnull %7) ; 0 uses
  call void @wtap_packet_verdict_free(ptr noundef nonnull %7)
  br label %pcapng_process_unhandled_option.exit

bb.aj:                                            ; preds = %bb.a
  %.not = icmp eq i16 %3, 8
  br i1 %.not, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bx = zext i16 %3 to i32
  store i32 -13, ptr %5, align 4
  %i.by = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.48, i32 noundef %i.bx)
  store ptr %i.by, ptr %6, align 8
  br label %pcapng_process_unhandled_option.exit

bb.al:                                            ; preds = %bb.aj
  %i.bz = load i64, ptr %4, align 1               ; 2 uses
  %i.ca = load i8, ptr %1, align 8, !range !8, !noundef !9
  %i.cb = trunc nuw i8 %i.ca to i1
end_hunk_0
