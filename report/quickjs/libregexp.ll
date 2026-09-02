Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/libregexp?download=true
inline.NumInlined: 313
inline.NumDeleted: 50
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 11
begin_hunk_0_@re_parse_term:bb.a

.thread:                                          ; preds = %re_parse_expect.exit546, %bb.ex, %re_parse_expect.exit486, %bb.ag, %re_parse_expect.exit474, %bb.ac, %bb.ae, %bb.aa, %re_parse_char_class.exit.thread, %dbuf_putc.exit507, %.thread591, %re_parse_expect.exit498, %re_parse_expect.exit489, %re_parse_expect.exit, %bb.dm, %re_parse_char_class.exit, %bb.bh, %bb.am, %bb.y, %bb.dx, %re_emit_goto.exit, %re_emit_op.exit.thread, %bb.dl, %bb.ck, %bb.bg, %bb.ba, %bb.aw, %bb.au, %bb.ar, %bb.v, %bb.s, %bb.b
  %.10 = phi i32 [ -1, %bb.b ], [ -1, %re_parse_char_class.exit ], [ 0, %re_emit_op.exit.thread ], [ -1, %bb.dl ], [ -1, %bb.dm ], [ -1, %re_emit_goto.exit ], [ -1, %re_parse_expect.exit486 ], [ -1, %bb.dx ], [ -1, %bb.s ], [ -1, %dbuf_putc.exit507 ], [ -1, %bb.v ], [ -1, %re_parse_expect.exit498 ], [ -1, %bb.y ], [ -1, %re_parse_char_class.exit.thread ], [ -1, %re_parse_expect.exit ], [ -1, %bb.am ], [ -1, %bb.ar ], [ -1, %bb.au ], [ -1, %bb.aw ], [ -1, %bb.bg ], [ -1, %re_parse_expect.exit489 ], [ -1, %bb.bh ], [ -1, %bb.ba ], [ -1, %.thread591 ], [ -1, %bb.ck ], [ -1, %bb.aa ], [ -1, %bb.ae ], [ -1, %bb.ac ], [ -1, %re_parse_expect.exit474 ], [ -1, %bb.ag ], [ -1, %bb.ex ], [ -1, %re_parse_expect.exit546 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.10
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @dbuf_claim(ptr nofree noundef nonnull captures(none) %0, i64 noundef %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !40
  %i.c = add i64 %i.b, %1                         ; 4 uses
  %i.d = icmp ult i64 %i.c, %1
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !41   ; 4 uses
  %i.g = icmp ugt i64 %i.c, %i.f
  br i1 %i.g, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !46, !range !47, !noundef !48
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = lshr i64 %i.f, 1
  %i.l = add i64 %i.k, %i.f                       ; 2 uses
  %i.m = icmp ult i64 %i.l, %i.f
  %i.n = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %i.c)
  %.0 = select i1 %i.m, i64 %i.c, i64 %i.n        ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !39
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !38
  %i.s = load ptr, ptr %0, align 8, !tbaa !43
  %i.t = tail call ptr %i.p(ptr noundef %i.r, ptr noundef %i.s, i64 noundef %.0) #20 ; 2 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.h, align 8, !tbaa !46
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  store ptr %i.t, ptr %0, align 8, !tbaa !43
  store i64 %.0, ptr %i.e, align 8, !tbaa !41
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.f, %bb.c, %bb.a, %bb.e
  %.025 = phi i32 [ -1, %bb.e ], [ -1, %bb.a ], [ -1, %bb.c ], [ 0, %bb.f ], [ 0, %bb.b ]
  ret i32 %.025
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree nounwind uwtable
define internal fastcc range(i32 -1, 16) i32 @re_parse_modifiers(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !20
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %.015 = phi ptr [ %i.a, %bb.a ], [ %i.f, %bb.g ] ; 3 uses
  %.014 = phi i32 [ 0, %bb.a ], [ %i.e, %bb.g ]   ; 3 uses
  %i.b = load i8, ptr %.015, align 1, !tbaa !21   ; 2 uses
  switch i8 %i.b, label %bb.h [
    i8 105, label %bb.e
    i8 109, label %bb.c
    i8 115, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.0 = phi i32 [ 8, %bb.d ], [ 4, %bb.c ], [ 2, %bb.b ] ; 2 uses
  %i.c = and i32 %.0, %.014
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.d = zext nneg i8 %i.b to i32
  tail call void (ptr, ptr, ...) @re_parse_error(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef %i.d)
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.e = or i32 %.0, %.014
  %i.f = getelementptr inbounds nuw i8, ptr %.015, i64 1
  br label %bb.b

bb.h:                                             ; preds = %bb.b
  store ptr %.015, ptr %1, align 8, !tbaa !20
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %.016 = phi i32 [ -1, %bb.f ], [ %.014, %bb.h ]
  ret i32 %.016
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @re_parse_group_name(ptr noundef nonnull %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 10 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.c = load ptr, ptr %1, align 8, !tbaa !20     ; 2 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !20
  %i.d = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.u, %bb.a
  %i.e = phi ptr [ %i.c, %bb.a ], [ %.pre, %bb.u ] ; 4 uses
  %.0 = phi ptr [ %0, %bb.a ], [ %.1, %bb.u ]     ; 13 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !21    ; 3 uses
  %i.g = zext i8 %i.f to i32
  switch i8 %i.f, label %bb.e [
    i8 92, label %bb.c
    i8 62, label %bb.v
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  store ptr %i.h, ptr %i.a, align 8, !tbaa !20
  %i.i = load i8, ptr %i.h, align 1, !tbaa !21
  %.not = icmp eq i8 %i.i, 117
  br i1 %.not, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.j = call i32 @lre_parse_escape(ptr noundef nonnull %i.a, i32 noundef 2)
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.k = icmp slt i8 %i.f, 0
  br i1 %i.k, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.l = call fastcc i32 @utf8_decode_len(ptr noundef nonnull %i.e, ptr noundef %i.a) ; 4 uses
  %.mask.i = and i32 %i.l, -1024
  %i.m = icmp eq i32 %.mask.i, 55296
  br i1 %i.m, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.o = call fastcc i32 @utf8_decode_len(ptr noundef %i.n, ptr noundef %i.b) ; 2 uses
  %.mask.i32 = and i32 %i.o, -1024
  %i.p = icmp eq i32 %.mask.i32, 56320
  br i1 %i.p, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.q = shl nuw nsw i32 %i.l, 10
  %i.r = and i32 %i.q, 1047552
  %i.s = add nuw nsw i32 %i.r, 65536
  %i.t = and i32 %i.o, 1023
  %i.u = or disjoint i32 %i.t, %i.s
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !20
  br label %.thread.sink.split

bb.i:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  br label %.thread.sink.split

bb.j:                                             ; preds = %bb.f, %bb.d
  %.027 = phi i32 [ %i.j, %bb.d ], [ %i.l, %bb.f ] ; 2 uses
  %i.x = icmp ugt i32 %.027, 1114111
  br i1 %i.x, label %.loopexit, label %.thread

.thread.sink.split:                               ; preds = %bb.h, %bb.i
  %.sink = phi ptr [ %i.w, %bb.i ], [ %i.v, %bb.h ]
  %.02736.ph = phi i32 [ %i.g, %bb.i ], [ %i.u, %bb.h ]
  store ptr %.sink, ptr %i.a, align 8, !tbaa !20
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.g, %bb.j
  %.02736 = phi i32 [ %.027, %bb.j ], [ %i.l, %bb.g ], [ %.02736.ph, %.thread.sink.split ] ; 19 uses
  %i.y = icmp eq ptr %.0, %0
  %i.z = icmp samesign ult i32 %.02736, 128       ; 2 uses
  br i1 %i.y, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.thread
  br i1 %i.z, label %.split, label %lre_js_is_ident_first.exit

.split:                                           ; preds = %bb.k
  %i.aa = lshr i32 %.02736, 5
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr @lre_id_start_table_ascii, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !45
  %i.ae = and i32 %.02736, 31
  %2 = shl nuw i32 1, %i.ae
  %3 = and i32 %i.ad, %2
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %.loopexit, label %bb.m

lre_js_is_ident_first.exit:                       ; preds = %bb.k
  %i.af = tail call zeroext i1 @lre_is_id_start(i32 noundef range(i32 0, 1114112) %.02736) #20
  br i1 %i.af, label %bb.m, label %.loopexit

bb.l:                                             ; preds = %.thread
  br i1 %i.z, label %.split39, label %lre_js_is_ident_next.exit

.split39:                                         ; preds = %bb.l
  %i.ag = lshr i32 %.02736, 5
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr @lre_id_continue_table_ascii, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !45
  %i.ak = and i32 %.02736, 31
  %5 = shl nuw i32 1, %i.ak
  %6 = and i32 %i.aj, %5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %.loopexit, label %bb.m

lre_js_is_ident_next.exit:                        ; preds = %bb.l
  %i.al = tail call zeroext i1 @lre_is_id_continue(i32 noundef range(i32 0, 1114112) %.02736) #20
  %i.am = and i32 %.02736, 2097150
  %i.an = icmp eq i32 %i.am, 8204
  %narrow.i = or i1 %i.an, %i.al
  br i1 %narrow.i, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %.split39, %.split, %lre_js_is_ident_next.exit, %lre_js_is_ident_first.exit
  %i.ao = ptrtoint ptr %.0 to i64
  %i.ap = sub i64 %i.ao, %i.d
  %i.aq = icmp sgt i64 %i.ap, 123
  br i1 %i.aq, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = icmp samesign ult i32 %.02736, 128
  br i1 %i.ar, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.as = trunc nuw nsw i32 %.02736 to i8
  %i.at = getelementptr inbounds nuw i8, ptr %.0, i64 1
  store i8 %i.as, ptr %.0, align 1, !tbaa !21
  br label %bb.u

bb.p:                                             ; preds = %bb.n
  %i.au = icmp samesign ult i32 %.02736, 2048
  br i1 %i.au, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.av = lshr i32 %.02736, 6
  %i.aw = trunc nuw nsw i32 %i.av to i8
  %i.ax = or disjoint i8 %i.aw, -64
  store i8 %i.ax, ptr %.0, align 1, !tbaa !21
  br label %utf8_encode.exit

bb.r:                                             ; preds = %bb.p
  %i.ay = icmp samesign ult i32 %.02736, 65536
  %i.az = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 2 uses
  br i1 %i.ay, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ba = lshr i32 %.02736, 12
  %i.bb = trunc nuw nsw i32 %i.ba to i8
  %i.bc = or disjoint i8 %i.bb, -32
  store i8 %i.bc, ptr %.0, align 1, !tbaa !21
  %i.bd = lshr i32 %.02736, 6
  %i.be = trunc i32 %i.bd to i8
  %i.bf = and i8 %i.be, 63
  %i.bg = or disjoint i8 %i.bf, -128
  store i8 %i.bg, ptr %i.az, align 1, !tbaa !21
  br label %utf8_encode.exit

bb.t:                                             ; preds = %bb.r
  %i.bh = lshr i32 %.02736, 18
  %i.bi = trunc nuw nsw i32 %i.bh to i8
  %i.bj = or disjoint i8 %i.bi, -16
  store i8 %i.bj, ptr %.0, align 1, !tbaa !21
  %i.bk = lshr i32 %.02736, 12
  %i.bl = trunc i32 %i.bk to i8
  %i.bm = and i8 %i.bl, 63
  %i.bn = or disjoint i8 %i.bm, -128
  store i8 %i.bn, ptr %i.az, align 1, !tbaa !21
  %i.bo = lshr i32 %.02736, 6
  %i.bp = trunc i32 %i.bo to i8
  %i.bq = and i8 %i.bp, 63
  %i.br = or disjoint i8 %i.bq, -128
  %i.bs = getelementptr inbounds nuw i8, ptr %.0, i64 2
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !21
  br label %utf8_encode.exit

utf8_encode.exit:                                 ; preds = %bb.q, %bb.s, %bb.t
  %.sink30.i = phi i64 [ 3, %bb.t ], [ 2, %bb.s ], [ 1, %bb.q ]
  %.0.i34 = phi i64 [ 4, %bb.t ], [ 3, %bb.s ], [ 2, %bb.q ]
  %i.bt = trunc i32 %.02736 to i8
  %i.bu = and i8 %i.bt, 63
  %i.bv = or disjoint i8 %i.bu, -128
  %i.bw = getelementptr inbounds nuw i8, ptr %.0, i64 %.sink30.i
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !21
  %i.bx = getelementptr inbounds nuw i8, ptr %.0, i64 %.0.i34
  br label %bb.u

bb.u:                                             ; preds = %utf8_encode.exit, %bb.o
  %.1 = phi ptr [ %i.at, %bb.o ], [ %i.bx, %utf8_encode.exit ]
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !20
  br label %bb.b

bb.v:                                             ; preds = %bb.b
  %i.by = icmp eq ptr %.0, %0
  br i1 %i.by, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i8 0, ptr %.0, align 1, !tbaa !21
  %i.bz = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 1
  store ptr %i.ca, ptr %1, align 8, !tbaa !20
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %lre_js_is_ident_next.exit, %lre_js_is_ident_first.exit, %bb.j, %bb.c, %.split, %.split39, %bb.v, %bb.w
  %.028 = phi i32 [ 0, %bb.w ], [ -1, %bb.v ], [ -1, %.split39 ], [ -1, %.split ], [ -1, %bb.c ], [ -1, %bb.j ], [ -1, %lre_js_is_ident_first.exit ], [ -1, %lre_js_is_ident_next.exit ], [ -1, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.028
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @is_duplicate_group_name(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef range(i32 0, 256) %2) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load i64, ptr %i.c, align 8, !tbaa !53   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #22 ; 3 uses
  %.not26 = icmp eq i64 %i.d, 0
  br i1 %.not26, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.e
  %.023 = phi ptr [ %i.p, %bb.e ], [ %i.b, %bb.b ] ; 4 uses
  %i.g = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.023) #22 ; 2 uses
  %i.h = icmp eq i64 %i.g, %i.f
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph
  %bcmp = tail call i32 @bcmp(ptr nonnull %1, ptr nonnull %.023, i64 %i.f)
  %i.i = icmp eq i32 %bcmp, 0
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %.023, i64 %i.f
  %i.k = getelementptr i8, ptr %i.j, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !21
  %i.m = zext i8 %i.l to i32
  %i.n = icmp eq i32 %2, %i.m
  br i1 %i.n, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.lr.ph
  %i.o = getelementptr i8, ptr %.023, i64 %i.g
  %i.p = getelementptr i8, ptr %i.o, i64 2        ; 2 uses
  %i.q = icmp ult ptr %i.p, %i.e
  br i1 %i.q, label %.lr.ph, label %.loopexit, !llvm.loop !107

.loopexit:                                        ; preds = %bb.d, %bb.e, %bb.b, %bb.a
  %.019 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %bb.d ], [ false, %bb.e ]
  ret i1 %.019
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc i32 @find_group_name(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, i1 noundef zeroext %2) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load i64, ptr %i.c, align 8, !tbaa !53   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d ; 2 uses
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #22 ; 4 uses
  %.not30 = icmp eq i64 %i.d, 0
  br i1 %.not30, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %2, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.g
  %.029.us = phi i32 [ %.1.us, %bb.g ], [ 0, %.lr.ph ] ; 3 uses
  %.02127.us = phi i8 [ %i.u, %bb.g ], [ 1, %.lr.ph ] ; 3 uses
  %.02226.us = phi ptr [ %i.t, %bb.g ], [ %i.b, %.lr.ph ] ; 3 uses
  %i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.02226.us) #22 ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.f
  br i1 %i.j, label %bb.c, label %bb.g

bb.c:                                             ; preds = %.lr.ph.split.us
  %bcmp.us = tail call i32 @bcmp(ptr nonnull %1, ptr nonnull %.02226.us, i64 %i.f)
  %i.k = icmp eq i32 %bcmp.us, 0
  br i1 %i.k, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.l = load i64, ptr %i.g, align 8, !tbaa !41
  %i.m = load i64, ptr %i.h, align 8, !tbaa !40   ; 3 uses
  %i.n = icmp eq i64 %i.l, %i.m
  br i1 %i.n, label %bb.f, label %bb.e, !prof !42

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %0, align 8, !tbaa !43
  %i.p = add i64 %i.m, 1
  store i64 %i.p, ptr %i.h, align 8, !tbaa !40
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 %.02127.us, ptr %i.q, align 1, !tbaa !21
  br label %dbuf_putc.exit.us
end_hunk_0
begin_hunk_1_@re_parse_class_set_operand:bb.a
bb.j:                                             ; preds = %bb.d, %bb.g, %bb.b
  br label %bb.k

bb.k:                                             ; preds = %bb.c, %bb.b, %bb.j, %re_string_list_free.exit
  %.019 = phi i32 [ -1, %re_string_list_free.exit ], [ 0, %bb.j ], [ -1, %bb.b ], [ -1, %bb.c ]
  ret i32 %.019
}

declare i32 @cr_invert(ptr noundef) local_unnamed_addr #4

declare i32 @cr_realloc(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 2) i32 @re_string_find2(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !75   ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !77
  %i.e = sub nsw i32 32, %i.d
  %i.f = lshr i32 %3, %i.e                        ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !71
  %i.i = zext i32 %i.f to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.i
  %.07185 = load ptr, ptr %i.j, align 8, !tbaa !73 ; 3 uses
  %.not7986 = icmp eq ptr %.07185, null
  br i1 %.not7986, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.k = icmp eq i32 %1, 0
  %i.l = sext i32 %1 to i64
  %i.m = shl nsw i64 %i.l, 2
  br i1 %i.k, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.d
  %.07187.us = phi ptr [ %.071.us, %bb.d ], [ %.07185, %.lr.ph ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.07187.us, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !45
  %i.p = icmp eq i32 %i.o, %3
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.split.us
  %i.q = getelementptr inbounds nuw i8, ptr %.07187.us, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !45
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.split.us
  %.071.us = load ptr, ptr %.07187.us, align 8, !tbaa !73 ; 2 uses
  %.not79.us = icmp eq ptr %.071.us, null
  br i1 %.not79.us, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !7

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.g
  %.07187 = phi ptr [ %.071, %bb.g ], [ %.07185, %.lr.ph ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.07187, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !45
  %i.v = icmp eq i32 %i.u, %3
  br i1 %i.v, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph.split
  %i.w = getelementptr inbounds nuw i8, ptr %.07187, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !45
  %i.y = icmp eq i32 %i.x, %1
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %.07187, i64 16
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.z, ptr %2, i64 %i.m)
  %.not84 = icmp eq i32 %bcmp, 0
  br i1 %.not84, label %.critedge, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split, %bb.e, %bb.f
  %.071 = load ptr, ptr %.07187, align 8, !tbaa !73 ; 2 uses
  %.not79 = icmp eq ptr %.071, null
  br i1 %.not79, label %.loopexit, label %.lr.ph.split, !llvm.loop !7

.loopexit:                                        ; preds = %bb.g, %bb.d, %bb.b, %bb.a
  %.072 = phi i32 [ 0, %bb.a ], [ %i.f, %bb.b ], [ %i.f, %bb.d ], [ %i.f, %bb.g ]
  br i1 %4, label %bb.h, label %.critedge

bb.h:                                             ; preds = %.loopexit
  %i.aa = add i32 %i.b, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !70
  %i.ad = icmp ugt i32 %i.aa, %i.ac
  br i1 %i.ad, label %bb.i, label %bb.l, !prof !42

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !77
  %i.ag = tail call i32 @llvm.smax.i32(i32 %i.af, i32 3) ; 3 uses
  %..i = add nuw nsw i32 %i.ag, 1
  %i.ah = shl nuw i32 2, %i.ag                    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !74
  %i.ak = zext i32 %i.ah to i64
  %i.al = shl nuw nsw i64 %i.ak, 3                ; 2 uses
  %i.am = tail call ptr @lre_realloc(ptr noundef %i.aj, ptr noundef null, i64 noundef %i.al) #20 ; 4 uses
  %.not80.not = icmp eq ptr %i.am, null
  br i1 %.not80.not, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.am, i8 0, i64 %i.al, i1 false)
  %i.an = load i32, ptr %i.ab, align 4, !tbaa !70 ; 2 uses
  %.not95 = icmp eq i32 %i.an, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !71 ; 2 uses
  %.pre99 = sub nsw i32 31, %i.ag                 ; 2 uses
  br i1 %.not95, label %._crit_edge94, label %.lr.ph93

.lr.ph93:                                         ; preds = %bb.j
  %wide.trip.count = zext i32 %i.an to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph93, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph93 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !73 ; 2 uses
  %.not8388 = icmp eq ptr %i.ap, null
  br i1 %.not8388, label %._crit_edge, label %.lr.ph90

.lr.ph90:                                         ; preds = %bb.k, %.lr.ph90
  %.189 = phi ptr [ %i.aq, %.lr.ph90 ], [ %i.ap, %bb.k ] ; 4 uses
  %i.aq = load ptr, ptr %.189, align 8, !tbaa !73 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.189, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !45
  %i.at = lshr i32 %i.as, %.pre99
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.au ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !73
  store ptr %i.aw, ptr %.189, align 8, !tbaa !73
  store ptr %.189, ptr %i.av, align 8, !tbaa !73
  %.not83 = icmp eq ptr %i.aq, null
  br i1 %.not83, label %._crit_edge, label %.lr.ph90, !llvm.loop !132

._crit_edge:                                      ; preds = %.lr.ph90, %bb.k
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge94, label %bb.k, !llvm.loop !133

._crit_edge94:                                    ; preds = %._crit_edge, %bb.j
  %i.ax = load ptr, ptr %i.ai, align 8, !tbaa !74
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.az = tail call ptr @lre_realloc(ptr noundef %i.ax, ptr noundef %.pre, i64 noundef 0) #20 ; 0 uses
  store i32 %..i, ptr %i.ae, align 8, !tbaa !77
  store i32 %i.ah, ptr %i.ab, align 4, !tbaa !70
  store ptr %i.am, ptr %i.ay, align 8, !tbaa !71
  %i.ba = lshr i32 %3, %.pre99
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge94, %bb.h
  %.2 = phi i32 [ %i.ba, %._crit_edge94 ], [ %.072, %bb.h ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !74
  %i.bd = sext i32 %1 to i64
  %i.be = shl nsw i64 %i.bd, 2                    ; 2 uses
  %i.bf = add nsw i64 %i.be, 16
  %i.bg = tail call ptr @lre_realloc(ptr noundef %i.bc, ptr noundef null, i64 noundef %i.bf) #20 ; 6 uses
  %.not81 = icmp eq ptr %i.bg, null
  br i1 %.not81, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !71
  %i.bj = zext i32 %.2 to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bj ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !73
  store ptr %i.bl, ptr %i.bg, align 8, !tbaa !73
  store ptr %i.bg, ptr %i.bk, align 8, !tbaa !73
  %i.bm = load i32, ptr %i.a, align 8, !tbaa !75
  %i.bn = add i32 %i.bm, 1
  store i32 %i.bn, ptr %i.a, align 8, !tbaa !75
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i32 %3, ptr %i.bo, align 8, !tbaa !45
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  store i32 %1, ptr %i.bp, align 4, !tbaa !45
  %.not82 = icmp eq i32 %1, 0
  br i1 %.not82, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bq, ptr align 4 %2, i64 %i.be, i1 false)
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.c, %bb.i, %bb.m, %bb.n, %bb.l, %.loopexit
  %.175 = phi i32 [ 0, %.loopexit ], [ -1, %bb.l ], [ 1, %bb.m ], [ -1, %bb.i ], [ 1, %bb.n ], [ 1, %bb.c ], [ 1, %bb.f ]
  ret i32 %.175
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @cr_init_char_range(ptr %.96.val, ptr noundef nonnull %0, i32 noundef range(i32 0, 6) %1) unnamed_addr #2 {
bb.a:
  %2 = and i32 %1, 1
  %.not = icmp eq i32 %2, 0
  %i.a = lshr i32 %1, 1
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr @char_range_table, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !136  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.f = load i16, ptr %i.d, align 2, !tbaa !62   ; 2 uses
  tail call void @cr_init(ptr noundef nonnull %0, ptr noundef %.96.val, ptr noundef nonnull @lre_realloc) #20
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.g, align 8, !tbaa !75
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  store i32 0, ptr %i.h, align 4, !tbaa !70
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.i, align 8, !tbaa !77
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr null, ptr %i.j, align 8, !tbaa !71
  %.not4 = icmp eq i16 %i.f, 0
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = zext i16 %i.f to i64
  %wide.trip.count = shl nuw nsw i64 %i.k, 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv
  %i.o = load i16, ptr %i.n, align 2, !tbaa !62
  %i.p = zext i16 %i.o to i32
  %i.q = load i32, ptr %0, align 8, !tbaa !79     ; 3 uses
  %i.r = load i32, ptr %i.l, align 4, !tbaa !81
  %.not.i = icmp slt i32 %i.q, %i.r
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = add nsw i32 %i.q, 1
  %i.t = tail call i32 @cr_realloc(ptr noundef nonnull %0, i32 noundef %i.s) #20
  %.not8.i = icmp eq i32 %i.t, 0
  br i1 %.not8.i, label %._crit_edge.i, label %cr_add_point.exit

._crit_edge.i:                                    ; preds = %bb.c
  %.pre.i = load i32, ptr %0, align 8, !tbaa !79
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %._crit_edge.i
  %i.u = phi i32 [ %.pre.i, %._crit_edge.i ], [ %i.q, %bb.b ] ; 2 uses
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !78
  %i.w = add nsw i32 %i.u, 1
  store i32 %i.w, ptr %0, align 8, !tbaa !79
  %i.x = sext i32 %i.u to i64
  %i.y = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.x
  store i32 %i.p, ptr %i.y, align 4, !tbaa !45
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !134

._crit_edge:                                      ; preds = %bb.d, %bb.a
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.z = tail call i32 @cr_invert(ptr noundef nonnull %0) #20
  %.not15 = icmp eq i32 %i.z, 0
  br i1 %.not15, label %bb.g, label %cr_add_point.exit

cr_add_point.exit:                                ; preds = %bb.c, %bb.e
  %i.aa = load i32, ptr %i.h, align 4, !tbaa !70  ; 2 uses
  %.not19.i = icmp eq i32 %i.aa, 0
  br i1 %.not19.i, label %re_string_list_free.exit, label %.lr.ph17.i

.lr.ph17.i:                                       ; preds = %cr_add_point.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i19, %.lr.ph17.i
  %i.ac = phi i32 [ %i.aa, %.lr.ph17.i ], [ %i.aj, %._crit_edge.i19 ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph17.i ], [ %indvars.iv.next.i, %._crit_edge.i19 ] ; 2 uses
  %i.ad = load ptr, ptr %i.j, align 8, !tbaa !71
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.i
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !73 ; 2 uses
  %.not13.i = icmp eq ptr %i.af, null
  br i1 %.not13.i, label %._crit_edge.i19, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %.01214.i = phi ptr [ %i.ag, %.lr.ph.i ], [ %i.af, %bb.f ] ; 2 uses
  %i.ag = load ptr, ptr %.01214.i, align 8, !tbaa !73 ; 2 uses
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !74
  %i.ai = tail call ptr @lre_realloc(ptr noundef %i.ah, ptr noundef nonnull %.01214.i, i64 noundef 0) #20 ; 0 uses
  %.not.i17 = icmp eq ptr %i.ag, null
  br i1 %.not.i17, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !3

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i18 = load i32, ptr %i.h, align 4, !tbaa !70
  br label %._crit_edge.i19

._crit_edge.i19:                                  ; preds = %._crit_edge.loopexit.i, %bb.f
  %i.aj = phi i32 [ %.pre.i18, %._crit_edge.loopexit.i ], [ %i.ac, %bb.f ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ak = zext i32 %i.aj to i64
  %i.al = icmp samesign ult i64 %indvars.iv.next.i, %i.ak
  br i1 %i.al, label %bb.f, label %re_string_list_free.exit, !llvm.loop !4

re_string_list_free.exit:                         ; preds = %._crit_edge.i19, %cr_add_point.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !74
  %i.ao = load ptr, ptr %i.j, align 8, !tbaa !71
  %i.ap = tail call ptr @lre_realloc(ptr noundef %i.an, ptr noundef %i.ao, i64 noundef 0) #20 ; 0 uses
  tail call void @cr_free(ptr noundef nonnull %0) #20
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.e, %re_string_list_free.exit
  %.014 = phi i32 [ -1, %re_string_list_free.exit ], [ 0, %bb.e ], [ 0, %._crit_edge ]
  ret i32 %.014
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @parse_unicode_property(ptr nofree noundef nonnull captures(none) %0, ptr noundef nonnull %1, ptr nofree noundef nonnull captures(none) %2, i1 noundef zeroext %3, i1 noundef zeroext %4) unnamed_addr #2 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 19 uses
  %i.b = alloca [64 x i8], align 16               ; 9 uses
  %5 = alloca %struct.CharRange, align 8          ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.c = load ptr, ptr %2, align 8, !tbaa !20     ; 3 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !21
  %.not = icmp eq i8 %i.d, 123
  br i1 %.not, label %.preheader120, label %bb.b

.preheader120:                                    ; preds = %bb.a
  %.079126 = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.e = load i8, ptr %.079126, align 1, !tbaa !21 ; 5 uses
  %i.f = add i8 %i.e, -48
  %or.cond.i127 = icmp ult i8 %i.f, 10
  %i.g = and i8 %i.e, -33
  %i.h = add i8 %i.g, -65
  %i.i = icmp ult i8 %i.h, 26
  %or.cond13.i128 = or i1 %or.cond.i127, %i.i
  %i.j = icmp eq i8 %i.e, 95
  %i.k = or i1 %i.j, %or.cond13.i128
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader120
  %i.l = ptrtoint ptr %i.a to i64
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @re_parse_error(ptr noundef %0, ptr noundef nonnull @.str.26)
  br label %bb.as

bb.c:                                             ; preds = %bb.e
  %i.m = ptrtoint ptr %i.z to i64
  %i.n = sub i64 %i.m, %i.l
  %i.o = icmp ugt i64 %i.n, 62
  br i1 %i.o, label %.loopexit121, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.077129162, i64 2 ; 2 uses
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !21
  %.079.1 = getelementptr inbounds nuw i8, ptr %i.x, i64 3
  %i.q = load i8, ptr %.079.1, align 1, !tbaa !21 ; 5 uses
  %i.r = add i8 %i.q, -48
  %or.cond.i.1 = icmp ult i8 %i.r, 10
  %i.s = and i8 %i.q, -33
  %i.t = add i8 %i.s, -65
  %i.u = icmp ult i8 %i.t, 26
  %or.cond13.i.1 = or i1 %or.cond.i.1, %i.u
  %i.v = icmp eq i8 %i.q, 95
  %i.w = or i1 %i.v, %or.cond13.i.1
  br i1 %i.w, label %bb.e, label %._crit_edge.loopexit.split.loop.exit, !llvm.loop !137

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %.077129162 = phi ptr [ %i.a, %.lr.ph ], [ %i.p, %bb.d ] ; 3 uses
  %i.x = phi ptr [ %i.c, %.lr.ph ], [ %.079, %bb.d ] ; 3 uses
  %i.y = phi i8 [ %i.e, %.lr.ph ], [ %i.q, %bb.d ]
  %i.z = getelementptr inbounds nuw i8, ptr %.077129162, i64 1 ; 3 uses
  store i8 %i.y, ptr %.077129162, align 1, !tbaa !21
  %.079 = getelementptr inbounds nuw i8, ptr %i.x, i64 2 ; 3 uses
  %i.aa = load i8, ptr %.079, align 1, !tbaa !21  ; 5 uses
  %i.ab = add i8 %i.aa, -48
  %or.cond.i = icmp ult i8 %i.ab, 10
  %i.ac = and i8 %i.aa, -33
  %i.ad = add i8 %i.ac, -65
  %i.ae = icmp ult i8 %i.ad, 26
  %or.cond13.i = or i1 %or.cond.i, %i.ae
  %i.af = icmp eq i8 %i.aa, 95
  %i.ag = or i1 %i.af, %or.cond13.i
  br i1 %i.ag, label %bb.c, label %._crit_edge, !llvm.loop !137

._crit_edge.loopexit.split.loop.exit:             ; preds = %bb.d
  %.079.1.le = getelementptr inbounds nuw i8, ptr %i.x, i64 3
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.split.loop.exit, %bb.e, %.preheader120
  %i.ah = phi i8 [ %i.e, %.preheader120 ], [ %i.q, %._crit_edge.loopexit.split.loop.exit ], [ %i.aa, %bb.e ] ; 2 uses
  %.077.lcssa = phi ptr [ %i.a, %.preheader120 ], [ %i.p, %._crit_edge.loopexit.split.loop.exit ], [ %i.z, %bb.e ]
  %.079.lcssa = phi ptr [ %.079126, %.preheader120 ], [ %.079.1.le, %._crit_edge.loopexit.split.loop.exit ], [ %.079, %bb.e ] ; 3 uses
  store i8 0, ptr %.077.lcssa, align 1, !tbaa !21
  %i.ai = icmp eq i8 %i.ah, 61
  br i1 %i.ai, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %._crit_edge
  %.180132 = getelementptr inbounds nuw i8, ptr %.079.lcssa, i64 1 ; 2 uses
  %i.aj = load i8, ptr %.180132, align 1, !tbaa !21 ; 5 uses
  %i.ak = add i8 %i.aj, -48
  %or.cond.i107133 = icmp ult i8 %i.ak, 10
  %i.al = and i8 %i.aj, -33
  %i.am = add i8 %i.al, -65
  %i.an = icmp ult i8 %i.am, 26
  %or.cond13.i111134 = or i1 %or.cond.i107133, %i.an
  %i.ao = icmp eq i8 %i.aj, 95
  %i.ap = or i1 %i.ao, %or.cond13.i111134
  br i1 %i.ap, label %.lr.ph137, label %.loopexit

.lr.ph137:                                        ; preds = %.preheader
  %i.aq = ptrtoint ptr %i.b to i64
  br label %bb.i

bb.f:                                             ; preds = %bb.i
  %i.ar = ptrtoint ptr %i.be to i64
  %i.as = sub i64 %i.ar, %i.aq
  %i.at = icmp ugt i64 %i.as, 62
  br i1 %i.at, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %.178135164, i64 2 ; 2 uses
  store i8 %i.bf, ptr %i.be, align 1, !tbaa !21
  %.180.1 = getelementptr inbounds nuw i8, ptr %i.bc, i64 3
  %i.av = load i8, ptr %.180.1, align 1, !tbaa !21 ; 5 uses
  %i.aw = add i8 %i.av, -48
  %or.cond.i107.1 = icmp ult i8 %i.aw, 10
  %i.ax = and i8 %i.av, -33
  %i.ay = add i8 %i.ax, -65
  %i.az = icmp ult i8 %i.ay, 26
  %or.cond13.i111.1 = or i1 %or.cond.i107.1, %i.az
  %i.ba = icmp eq i8 %i.av, 95
  %i.bb = or i1 %i.ba, %or.cond13.i111.1
  br i1 %i.bb, label %bb.i, label %.loopexit.loopexit.split.loop.exit, !llvm.loop !138

bb.h:                                             ; preds = %bb.f
  call void (ptr, ptr, ...) @re_parse_error(ptr noundef %0, ptr noundef nonnull @.str.27)
  br label %bb.as

bb.i:                                             ; preds = %bb.g, %.lr.ph137
  %.178135164 = phi ptr [ %i.b, %.lr.ph137 ], [ %i.au, %bb.g ] ; 3 uses
  %i.bc = phi ptr [ %.079.lcssa, %.lr.ph137 ], [ %.180, %bb.g ] ; 3 uses
  %i.bd = phi i8 [ %i.aj, %.lr.ph137 ], [ %i.av, %bb.g ]
  %i.be = getelementptr inbounds nuw i8, ptr %.178135164, i64 1 ; 3 uses
  store i8 %i.bd, ptr %.178135164, align 1, !tbaa !21
  %.180 = getelementptr inbounds nuw i8, ptr %i.bc, i64 2 ; 3 uses
  %i.bf = load i8, ptr %.180, align 1, !tbaa !21  ; 5 uses
  %i.bg = add i8 %i.bf, -48
  %or.cond.i107 = icmp ult i8 %i.bg, 10
  %i.bh = and i8 %i.bf, -33
  %i.bi = add i8 %i.bh, -65
  %i.bj = icmp ult i8 %i.bi, 26
  %or.cond13.i111 = or i1 %or.cond.i107, %i.bj
  %i.bk = icmp eq i8 %i.bf, 95
  %i.bl = or i1 %i.bk, %or.cond13.i111
  br i1 %i.bl, label %bb.f, label %.loopexit, !llvm.loop !138
end_hunk_1
