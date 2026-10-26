Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/prism?download=true
inline.NumInlined: 2622
inline.NumDeleted: 264
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@pm_serialize_parse_stream:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.a = call ptr @pm_parse_stream(ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6) ; 2 uses
  call void @pm_buffer_append_string(ptr noundef %0, ptr noundef nonnull @.str.257, i64 noundef 5) #27
  call void @pm_buffer_append_byte(ptr noundef %0, i8 noundef zeroext 1) #27
  call void @pm_buffer_append_byte(ptr noundef %0, i8 noundef zeroext 8) #27
  call void @pm_buffer_append_byte(ptr noundef %0, i8 noundef zeroext 1) #27
  call void @pm_buffer_append_byte(ptr noundef %0, i8 noundef zeroext 0) #27
  call void @pm_serialize_content(ptr noundef nonnull %5, ptr noundef nonnull %i.a, ptr noundef %0) #27
  call void @pm_buffer_append_byte(ptr noundef %0, i8 noundef zeroext 0) #27
  call void @pm_node_destroy(ptr noundef nonnull %5, ptr noundef nonnull %i.a) #27
  call void @pm_buffer_free(ptr noundef nonnull %7) #27
  call void @pm_parser_free(ptr noundef nonnull %5)
  call void @pm_options_free(ptr noundef nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  ret void
}

declare void @pm_buffer_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define hidden void @pm_serialize_parse_comments(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #1 {
bb.a:
  %4 = alloca %struct.pm_options, align 8         ; 6 uses
  %5 = alloca %struct.pm_parser, align 8          ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %4, i8 0, i64 104, i1 false)
  call void @pm_options_read(ptr noundef nonnull %4, ptr noundef %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @pm_parser_init(ptr noundef nonnull %5, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4)
  %i.a = call ptr @pm_parse(ptr noundef nonnull %5)
  call void @pm_buffer_append_string(ptr noundef %0, ptr noundef nonnull @.str.257, i64 noundef 5) #27
  call void @pm_buffer_append_byte(ptr noundef %0, i8 noundef zeroext 1) #27
  call void @pm_buffer_append_byte(ptr noundef %0, i8 noundef zeroext 8) #27
  call void @pm_buffer_append_byte(ptr noundef %0, i8 noundef zeroext 1) #27
  call void @pm_buffer_append_byte(ptr noundef %0, i8 noundef zeroext 0) #27
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 520
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !60
  call void @pm_serialize_encoding(ptr noundef %i.c, ptr noundef %0) #27
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 664
  %i.e = load i32, ptr %i.d, align 8, !tbaa !59
  call void @pm_buffer_append_varsint(ptr noundef %0, i32 noundef %i.e) #27
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 384
  call void @pm_serialize_comment_list(ptr noundef nonnull %5, ptr noundef nonnull %i.f, ptr noundef %0) #27
  call void @pm_node_destroy(ptr noundef nonnull %5, ptr noundef nonnull %i.a) #27
  call void @pm_parser_free(ptr noundef nonnull %5)
  call void @pm_options_free(ptr noundef nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret void
}

declare void @pm_serialize_encoding(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @pm_buffer_append_varsint(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @pm_serialize_comment_list(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i32 -1, 4) i32 @pm_slice_type(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #29
  %i.b = getelementptr i8, ptr %2, i64 %i.a
  %i.c = tail call ptr @pm_encoding_find(ptr noundef nonnull %2, ptr noundef %i.b) #27 ; 6 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %1, 0
  br i1 %i.e, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.c, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !142
  %i.h = tail call i64 %i.g(ptr noundef %0, i64 noundef %1) #27 ; 2 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.i = load i8, ptr %0, align 1, !tbaa !83      ; 2 uses
  %i.j = icmp eq i8 %i.i, 95
  br i1 %i.j, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = icmp slt i8 %i.i, 0
  br i1 %i.k, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !143
  %i.m = tail call i64 %i.l(ptr noundef nonnull %0, i64 noundef %1) #27 ; 2 uses
  %.not58 = icmp eq i64 %i.m, 0
  br i1 %.not58, label %bb.o, label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.c
  %.045 = phi i64 [ %i.h, %bb.c ], [ %i.m, %bb.f ], [ 1, %bb.d ]
  %i.n = getelementptr i8, ptr %0, i64 %1         ; 4 uses
  %i.o = getelementptr i8, ptr %i.c, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !144
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = tail call zeroext i1 %i.p(ptr noundef %0, i64 noundef %1) #27
  %i.s = select i1 %i.r, i32 2, i32 1
  %i.t = getelementptr i8, ptr %0, i64 %.045      ; 3 uses
  %i.u = icmp ult ptr %i.t, %i.n
  br i1 %i.u, label %.lr.ph, label %thread-pre-split

.lr.ph:                                           ; preds = %bb.g
  %i.v = getelementptr i8, ptr %i.c, i64 16
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.l
  %.04763 = phi ptr [ %i.t, %.lr.ph ], [ %i.af, %bb.l ] ; 7 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !145
  %i.x = ptrtoint ptr %.04763 to i64
  %i.y = sub i64 %i.q, %i.x                       ; 2 uses
  %i.z = tail call i64 %i.w(ptr noundef %.04763, i64 noundef %i.y) #27 ; 2 uses
  %.not59 = icmp eq i64 %i.z, 0
  br i1 %.not59, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.aa = load i8, ptr %.04763, align 1, !tbaa !83 ; 3 uses
  %i.ab = icmp eq i8 %i.aa, 95
  br i1 %i.ab, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = icmp slt i8 %i.aa, 0
  br i1 %i.ac, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.ad = load ptr, ptr %i.c, align 8, !tbaa !143
  %i.ae = tail call i64 %i.ad(ptr noundef nonnull %.04763, i64 noundef %i.y) #27 ; 2 uses
  %.not60 = icmp eq i64 %i.ae, 0
  br i1 %.not60, label %thread-pre-split, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i, %bb.h
  %.sink = phi i64 [ %i.z, %bb.h ], [ 1, %bb.i ], [ %i.ae, %bb.k ]
  %i.af = getelementptr i8, ptr %.04763, i64 %.sink ; 3 uses
  %i.ag = icmp ult ptr %i.af, %i.n
  br i1 %i.ag, label %bb.h, label %thread-pre-split, !llvm.loop !351

thread-pre-split:                                 ; preds = %bb.k, %bb.l, %bb.g
  %.047.lcssa = phi ptr [ %i.t, %bb.g ], [ %i.af, %bb.l ], [ %.04763, %bb.k ] ; 2 uses
  %.pr = load i8, ptr %.047.lcssa, align 1, !tbaa !83
  br label %.loopexit

.loopexit:                                        ; preds = %bb.j, %thread-pre-split
  %.04762 = phi ptr [ %.047.lcssa, %thread-pre-split ], [ %.04763, %bb.j ] ; 2 uses
  %i.ah = phi i8 [ %.pr, %thread-pre-split ], [ %i.aa, %bb.j ]
  switch i8 %i.ah, label %bb.n [
    i8 33, label %bb.m
    i8 63, label %bb.m
    i8 61, label %bb.m
  ]

bb.m:                                             ; preds = %.loopexit, %.loopexit, %.loopexit
  %i.ai = getelementptr i8, ptr %.04762, i64 1
  br label %bb.n

bb.n:                                             ; preds = %.loopexit, %bb.m
  %.2 = phi ptr [ %i.ai, %bb.m ], [ %.04762, %.loopexit ]
  %.0 = phi i32 [ 3, %bb.m ], [ %i.s, %.loopexit ]
  %i.aj = icmp eq ptr %.2, %i.n
  %i.ak = select i1 %i.aj, i32 %.0, i32 0
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.f, %bb.e, %bb.b, %bb.a
  %.1 = phi i32 [ 0, %bb.b ], [ -1, %bb.a ], [ %i.ak, %bb.n ], [ 0, %bb.f ], [ 0, %bb.e ]
  ret i32 %.1
}

declare ptr @pm_encoding_find(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i32 -1, 2) i32 @pm_string_query_local(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #1 {
switch.lookup:
  %i.a = tail call i32 @pm_slice_type(ptr noundef %0, i64 noundef %1, ptr noundef %2)
  %i.b = sext i32 %i.a to i64
  %i.c = getelementptr [4 x i8], ptr @switch.table.pm_string_query_local, i64 %i.b
  %switch.gep = getelementptr i8, ptr %i.c, i64 4
  %switch.load = load i32, ptr %switch.gep, align 4
  ret i32 %switch.load
}

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i32 -1, 2) i32 @pm_string_query_constant(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #1 {
switch.lookup:
  %i.a = tail call i32 @pm_slice_type(ptr noundef %0, i64 noundef %1, ptr noundef %2)
  %i.b = sext i32 %i.a to i64
  %i.c = getelementptr [4 x i8], ptr @switch.table.pm_string_query_constant, i64 %i.b
  %switch.gep = getelementptr i8, ptr %i.c, i64 4
  %switch.load = load i32, ptr %switch.gep, align 4
  ret i32 %switch.load
}

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i32 -1, 2) i32 @pm_string_query_method_name(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @pm_slice_type(ptr noundef %0, i64 noundef %1, ptr noundef %2) ; 2 uses
  switch i32 %i.a, label %bb.g [
    i32 -1, label %bb.w
    i32 3, label %bb.f
    i32 1, label %bb.b
    i32 2, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %1, 2
  br i1 %.not, label %bb.c, label %bb.w

bb.c:                                             ; preds = %bb.b
  %i.b = load i8, ptr %0, align 1, !tbaa !83
  %.not35 = icmp eq i8 %i.b, 95
  br i1 %.not35, label %bb.d, label %bb.w

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr i8, ptr %0, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !83    ; 2 uses
  %i.e = icmp eq i8 %i.d, 48
  br i1 %i.e, label %bb.w, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = tail call zeroext i1 @pm_char_is_decimal_digit(i8 noundef zeroext %i.d) #27
  %i.g = xor i1 %i.f, true
  %i.h = zext i1 %i.g to i32
  br label %bb.w

bb.f:                                             ; preds = %bb.a, %bb.a
  br label %bb.w

bb.g:                                             ; preds = %bb.a
  switch i64 %1, label %bb.w [
    i64 1, label %bb.h
    i64 2, label %bb.j
    i64 3, label %bb.t
  ]

bb.h:                                             ; preds = %bb.g
  %i.i = load i8, ptr %0, align 1, !tbaa !83      ; 2 uses
  switch i8 %i.i, label %bb.i [
    i8 38, label %bb.w
    i8 96, label %bb.w
    i8 33, label %bb.w
    i8 94, label %bb.w
    i8 62, label %bb.w
    i8 60, label %bb.w
    i8 45, label %bb.w
    i8 37, label %bb.w
    i8 124, label %bb.w
    i8 43, label %bb.w
    i8 47, label %bb.w
    i8 42, label %bb.w
  ]

bb.i:                                             ; preds = %bb.h
  %i.j = icmp eq i8 %i.i, 126
  %i.k = zext i1 %i.j to i32
  br label %bb.w

bb.j:                                             ; preds = %bb.g
  %i.l = load i16, ptr %0, align 1
  %i.m = icmp ne i16 %i.l, 15649
  %i.n = zext i1 %i.m to i32
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.w, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = load i16, ptr %0, align 1
  %i.q = icmp ne i16 %i.p, 32289
  %i.r = zext i1 %i.q to i32
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.w, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = load i16, ptr %0, align 1
  %i.u = icmp ne i16 %i.t, 23899
  %i.v = zext i1 %i.u to i32
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.w, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = load i16, ptr %0, align 1
  %i.y = icmp ne i16 %i.x, 15677
  %i.z = zext i1 %i.y to i32
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.w, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ab = load i16, ptr %0, align 1
  %i.ac = icmp ne i16 %i.ab, 32317
  %i.ad = zext i1 %i.ac to i32
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.w, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.af = load i16, ptr %0, align 1
  %i.ag = icmp ne i16 %i.af, 15678
  %i.ah = zext i1 %i.ag to i32
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.w, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aj = load i16, ptr %0, align 1
  %i.ak = icmp ne i16 %i.aj, 15934
  %i.al = zext i1 %i.ak to i32
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.w, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.an = load i16, ptr %0, align 1
  %i.ao = icmp ne i16 %i.an, 15676
  %i.ap = zext i1 %i.ao to i32
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ar = load i16, ptr %0, align 1
  %i.as = icmp ne i16 %i.ar, 15420
  %i.at = zext i1 %i.as to i32
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.av = load i16, ptr %0, align 1
  %i.aw = icmp ne i16 %i.av, 10794
  %i.ax = zext i1 %i.aw to i32
  %i.ay = icmp eq i32 %i.ax, 0
  %i.az = zext i1 %i.ay to i32
  br label %bb.w

bb.t:                                             ; preds = %bb.g
  %i.ba = load i16, ptr %0, align 1
  %i.bb = xor i16 %i.ba, 15677
  %i.bc = getelementptr i8, ptr %0, i64 2
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = zext i8 %i.bd to i16
  %i.bf = xor i16 %i.be, 61
  %i.bg = or i16 %i.bb, %i.bf
  %i.bh = icmp ne i16 %i.bg, 0
  %i.bi = zext i1 %i.bh to i32
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bk = load i16, ptr %0, align 1
  %i.bl = xor i16 %i.bk, 15676
  %i.bm = getelementptr i8, ptr %0, i64 2
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = zext i8 %i.bn to i16
  %i.bp = xor i16 %i.bo, 62
  %i.bq = or i16 %i.bl, %i.bp
  %i.br = icmp ne i16 %i.bq, 0
  %i.bs = zext i1 %i.br to i32
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bu = load i16, ptr %0, align 1
  %i.bv = xor i16 %i.bu, 23899
  %i.bw = getelementptr i8, ptr %0, i64 2
  %i.bx = load i8, ptr %i.bw, align 1
  %i.by = zext i8 %i.bx to i16
  %i.bz = xor i16 %i.by, 61
  %i.ca = or i16 %i.bv, %i.bz
  %i.cb = icmp ne i16 %i.ca, 0
  %i.cc = zext i1 %i.cb to i32
  %i.cd = icmp eq i32 %i.cc, 0
  %i.ce = zext i1 %i.cd to i32
  br label %bb.w

bb.w:                                             ; preds = %bb.g, %bb.t, %bb.u, %bb.v, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.i, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.b, %bb.c, %bb.d, %bb.e, %bb.a, %bb.f
  %.0 = phi i32 [ %i.ce, %bb.v ], [ %i.h, %bb.e ], [ %i.k, %bb.i ], [ %i.az, %bb.s ], [ 1, %bb.f ], [ %i.a, %bb.a ], [ 1, %bb.d ], [ 1, %bb.c ], [ 1, %bb.b ], [ 1, %bb.h ], [ 1, %bb.h ], [ 1, %bb.h ], [ 1, %bb.h ], [ 1, %bb.h ], [ 1, %bb.h ], [ 1, %bb.h ], [ 1, %bb.h ], [ 1, %bb.h ], [ 1, %bb.h ], [ 1, %bb.h ], [ 1, %bb.h ], [ 1, %bb.r ], [ 1, %bb.q ], [ 1, %bb.p ], [ 1, %bb.o ], [ 1, %bb.n ], [ 1, %bb.m ], [ 1, %bb.l ], [ 1, %bb.k ], [ 1, %bb.j ], [ 1, %bb.u ], [ 1, %bb.t ], [ 0, %bb.g ]
  ret i32 %.0
}

declare zeroext i1 @pm_char_is_decimal_digit(i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @pm_parser_local_add(ptr nofree captures(none) %.496.val, i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr i8, ptr %.496.val, i64 8   ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !146
  %i.c = getelementptr i8, ptr %.496.val, i64 12  ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !95   ; 5 uses
  %i.e = lshr i32 %i.d, 2
  %i.f = mul nuw i32 %i.e, 3
  %.not.i = icmp ult i32 %i.b, %i.f
  br i1 %.not.i, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i32 %i.d, 0
  %i.h = shl i32 %i.d, 1
  %spec.select.i.i = select i1 %i.g, i32 4, i32 %i.h ; 6 uses
  %i.i = icmp ugt i32 %spec.select.i.i, %i.d
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.2, i32 noundef 782, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_locals_resize) #26
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = zext i32 %spec.select.i.i to i64
  %i.k = tail call noalias ptr @calloc(i64 noundef %i.j, i64 noundef 40) #30 ; 5 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @abort() #26
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.m = icmp ult i32 %spec.select.i.i, 9
  br i1 %i.m, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.n = load i32, ptr %i.a, align 8, !tbaa !146  ; 2 uses
  %.not42.i.i = icmp eq i32 %i.n, 0
  br i1 %.not42.i.i, label %.loopexit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr i8, ptr %.496.val, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !96
  %i.q = zext i32 %i.n to i64
  %i.r = mul nuw nsw i64 %i.q, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.k, ptr noundef nonnull align 1 %i.p, i64 noundef %i.r, i1 noundef false) #27
  br label %.loopexit.i.i

bb.i:                                             ; preds = %bb.f
  %i.s = load i32, ptr %i.c, align 4, !tbaa !95
  %.fr45.i.i = freeze i32 %i.s                    ; 3 uses
  %i.t = add i32 %spec.select.i.i, -1             ; 2 uses
  %.not44.i.i = icmp eq i32 %.fr45.i.i, 0
  br i1 %.not44.i.i, label %pm_locals_resize.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.i
  %i.u = icmp ult i32 %.fr45.i.i, 10
  %i.v = getelementptr i8, ptr %.496.val, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !96   ; 2 uses
  %wide.trip.count52.i.i = zext i32 %.fr45.i.i to i64 ; 2 uses
  br i1 %i.u, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %bb.m
  %indvars.iv49.i.i = phi i64 [ %indvars.iv.next50.i.i, %bb.m ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.x = getelementptr [40 x i8], ptr %i.w, i64 %indvars.iv49.i.i ; 3 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !148  ; 3 uses
  %.not.us.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.us.i.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %.lr.ph.split.us.i.i
  %i.z = lshr i32 %i.y, 16
  %i.aa = xor i32 %i.z, %i.y
  %i.ab = mul i32 %i.aa, 73244475                 ; 2 uses
  %i.ac = lshr i32 %i.ab, 16
  %i.ad = xor i32 %i.ac, %i.ab
  %i.ae = mul i32 %i.ad, 73244475                 ; 2 uses
  %i.af = lshr i32 %i.ae, 16
  %i.ag = xor i32 %i.af, %i.ae                    ; 2 uses
  %i.ah = getelementptr i8, ptr %i.x, i64 32
  store i32 %i.ag, ptr %i.ah, align 8, !tbaa !355
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %.0.us.i.i = phi i32 [ %i.ag, %bb.j ], [ %i.am, %bb.k ] ; 2 uses
  %i.ai = and i32 %.0.us.i.i, %i.t
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr [40 x i8], ptr %i.k, i64 %i.aj ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !148
  %.not41.us.i.i = icmp eq i32 %i.al, 0
  %i.am = add i32 %.0.us.i.i, 1
  br i1 %.not41.us.i.i, label %bb.l, label %bb.k, !llvm.loop !352

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ak, ptr noundef nonnull align 8 dereferenceable(40) %i.x, i64 40, i1 false), !tbaa.struct !356
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.split.us.i.i
  %indvars.iv.next50.i.i = add nuw nsw i64 %indvars.iv49.i.i, 1 ; 2 uses
  %exitcond53.not.i.i = icmp eq i64 %indvars.iv.next50.i.i, %wide.trip.count52.i.i
  br i1 %exitcond53.not.i.i, label %.loopexit.i.i, label %.lr.ph.split.us.i.i, !llvm.loop !353

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %bb.q
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.q ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.an = getelementptr [40 x i8], ptr %i.w, i64 %indvars.iv.i.i ; 3 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !148
  %.not.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split.i.i
  %i.ap = getelementptr i8, ptr %i.an, i64 32
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !355
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %.0.i.i = phi i32 [ %i.aq, %bb.n ], [ %i.av, %bb.o ] ; 2 uses
  %i.ar = and i32 %.0.i.i, %i.t
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr [40 x i8], ptr %i.k, i64 %i.as ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !148
  %.not41.i.i = icmp eq i32 %i.au, 0
  %i.av = add i32 %.0.i.i, 1
  br i1 %.not41.i.i, label %bb.p, label %bb.o, !llvm.loop !352

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.at, ptr noundef nonnull align 8 dereferenceable(40) %i.an, i64 40, i1 false), !tbaa.struct !356
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph.split.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count52.i.i
  br i1 %exitcond.not.i.i, label %.loopexit.i.i, label %.lr.ph.split.i.i, !llvm.loop !353

.loopexit.i.i:                                    ; preds = %bb.q, %bb.m, %bb.h, %bb.g
  %.pr.i.i = load i32, ptr %i.c, align 4, !tbaa !95
  %i.aw = icmp eq i32 %.pr.i.i, 0
  br i1 %i.aw, label %pm_locals_resize.exit.i, label %bb.r

bb.r:                                             ; preds = %.loopexit.i.i
  %i.ax = getelementptr i8, ptr %.496.val, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !96
  tail call void @free(ptr noundef %i.ay) #27
  br label %pm_locals_resize.exit.i

pm_locals_resize.exit.i:                          ; preds = %bb.r, %.loopexit.i.i, %bb.i
  %i.az = getelementptr i8, ptr %.496.val, i64 16
  store ptr %i.k, ptr %i.az, align 8, !tbaa !96
  store i32 %spec.select.i.i, ptr %i.c, align 4, !tbaa !95
  br label %bb.s

bb.s:                                             ; preds = %pm_locals_resize.exit.i, %bb.a
  %i.ba = phi i32 [ %spec.select.i.i, %pm_locals_resize.exit.i ], [ %i.d, %bb.a ] ; 10 uses
  %i.bb = icmp ult i32 %i.ba, 9
  br i1 %i.bb, label %.preheader.i, label %bb.ap

.preheader.i:                                     ; preds = %bb.s
  %.not92.i = icmp eq i32 %i.ba, 0
  br i1 %.not92.i, label %.thread78.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.bc = getelementptr i8, ptr %.496.val, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !96 ; 9 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !148 ; 2 uses
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %.thread65.sink.split.i, label %bb.ao

bb.t:                                             ; preds = %bb.ao
  %exitcond.not.i = icmp eq i32 %i.ba, 1
  br i1 %exitcond.not.i, label %.thread78.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bg = getelementptr i8, ptr %i.bd, i64 40     ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !148 ; 2 uses
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %.thread65.sink.split.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not109.i.1 = icmp eq i32 %i.bh, %0
  br i1 %.not109.i.1, label %pm_locals_write.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %exitcond.not.i.1 = icmp eq i32 %i.ba, 2
  br i1 %exitcond.not.i.1, label %.thread78.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bj = getelementptr i8, ptr %i.bd, i64 80     ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !148 ; 2 uses
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %.thread65.sink.split.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.not109.i.2 = icmp eq i32 %i.bk, %0
  br i1 %.not109.i.2, label %pm_locals_write.exit, label %bb.z

end_hunk_0
begin_hunk_1_@parser_lex:bb.a
  %i.csl = icmp eq i64 %i.csk, 2
  br i1 %i.csl, label %bb.aep, label %pm_token_is_numbered_parameter.exit.thread

bb.aep:                                           ; preds = %pm_parser_local_depth.exit.thread
  %i.csm = load i8, ptr %i.csg, align 1, !tbaa !83
  %i.csn = icmp eq i8 %i.csm, 95
  br i1 %i.csn, label %bb.aeq, label %pm_token_is_numbered_parameter.exit.thread

bb.aeq:                                           ; preds = %bb.aep
  %i.cso = getelementptr i8, ptr %i.csg, i64 1
  %i.csp = load i8, ptr %i.cso, align 1, !tbaa !83 ; 2 uses
  %.not.i2955 = icmp eq i8 %i.csp, 48
  br i1 %.not.i2955, label %pm_token_is_numbered_parameter.exit.thread, label %pm_token_is_numbered_parameter.exit

pm_token_is_numbered_parameter.exit:              ; preds = %bb.aeq
  %i.csq = call zeroext i1 @pm_char_is_decimal_digit(i8 noundef zeroext %i.csp) #27
  br i1 %i.csq, label %pm_token_is_numbered_parameter.exit.thread.sink.split, label %pm_token_is_numbered_parameter.exit.thread

pm_token_is_numbered_parameter.exit.thread.sink.split: ; preds = %pm_parser_local_depth.exit, %pm_token_is_numbered_parameter.exit, %bb.aee
  %.sink5558 = phi i32 [ 8, %bb.aee ], [ 1026, %pm_token_is_numbered_parameter.exit ], [ 1026, %pm_parser_local_depth.exit ]
  store i32 %.sink5558, ptr %i.w, align 4, !tbaa !160
  br label %pm_token_is_numbered_parameter.exit.thread

pm_token_is_numbered_parameter.exit.thread:       ; preds = %pm_token_is_numbered_parameter.exit.thread.sink.split, %pm_parser_local_depth.exit.thread, %bb.aep, %bb.aeq, %pm_token_is_numbered_parameter.exit, %bb.aef
  store i32 %.1232.i, ptr %i.c, align 8, !tbaa !154
  %i.csr = load ptr, ptr %i.ab, align 8, !tbaa !155 ; 3 uses
  %.not.i2956 = icmp eq ptr %i.csr, null
  br i1 %.not.i2956, label %parser_lex_callback.exit2967, label %bb.aer

bb.aer:                                           ; preds = %pm_token_is_numbered_parameter.exit.thread
  %i.css = getelementptr i8, ptr %i.csr, i64 8
  %i.cst = load ptr, ptr %i.css, align 8, !tbaa !157
  %i.csu = load ptr, ptr %i.csr, align 8, !tbaa !158
  call void %i.cst(ptr noundef %i.csu, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !2
  br label %parser_lex_callback.exit2967

bb.aes:                                           ; preds = %bb.c
  %i.csv = getelementptr i8, ptr %0, i64 368      ; 3 uses
  %i.csw = load ptr, ptr %i.csv, align 8, !tbaa !152 ; 3 uses
  %.not1998 = icmp eq ptr %i.csw, null
  br i1 %.not1998, label %bb.aeu, label %bb.aet

bb.aet:                                           ; preds = %bb.aes
  store ptr %i.csw, ptr %i.d, align 8, !tbaa !87
  store ptr null, ptr %i.csv, align 8, !tbaa !152
  br label %bb.aeu

bb.aeu:                                           ; preds = %bb.aet, %bb.aes
  %i.csx = phi ptr [ %i.csw, %bb.aet ], [ %i.e, %bb.aes ] ; 4 uses
  %i.csy = getelementptr i8, ptr %0, i64 352      ; 4 uses
  store ptr %i.csx, ptr %i.csy, align 8, !tbaa !151
  %i.csz = getelementptr i8, ptr %0, i64 376      ; 4 uses
  %i.cta = load ptr, ptr %i.csz, align 8, !tbaa !153
  %.not1999 = icmp eq ptr %i.cta, null
  %i.ctb = ptrtoint ptr %i.g to i64
  %i.ctc = ptrtoint ptr %i.csx to i64
  %i.ctd = sub i64 %i.ctb, %i.ctc                 ; 2 uses
  br i1 %.not1999, label %bb.aew, label %bb.aev

bb.aev:                                           ; preds = %bb.aeu
  %i.cte = tail call i64 @pm_strspn_inline_whitespace(ptr noundef %i.csx, i64 noundef %i.ctd) #27 ; 3 uses
  %.val2246 = load ptr, ptr %i.f, align 8, !tbaa !89
  %.val2247 = load ptr, ptr %i.d, align 8, !tbaa !87
  %i.ctf = getelementptr i8, ptr %.val2247, i64 %i.cte ; 2 uses
  %i.ctg = icmp ult ptr %i.ctf, %.val2246
  br i1 %i.ctg, label %peek_offset.exit2960, label %peek_offset.exit2960.thread

peek_offset.exit2960:                             ; preds = %bb.aev
  %i.cth = load i8, ptr %i.ctf, align 1, !tbaa !83
  %.fr = freeze i8 %i.cth
  %i.cti = icmp eq i8 %.fr, 10
  %i.ctj = zext i1 %i.cti to i64
  %spec.select3533 = add i64 %i.cte, %i.ctj
  br label %peek_offset.exit2960.thread

bb.aew:                                           ; preds = %bb.aeu
  %i.ctk = getelementptr i8, ptr %0, i64 600
  %i.ctl = tail call i64 @pm_strspn_whitespace_newlines(ptr noundef %i.csx, i64 noundef %i.ctd, ptr noundef %i.ctk) #27
  br label %peek_offset.exit2960.thread

peek_offset.exit2960.thread:                      ; preds = %peek_offset.exit2960, %bb.aev, %bb.aew
  %.01861 = phi i64 [ %i.ctl, %bb.aew ], [ %i.cte, %bb.aev ], [ %spec.select3533, %peek_offset.exit2960 ] ; 2 uses
  %.not2000 = icmp eq i64 %.01861, 0
  %i.ctm = load ptr, ptr %i.d, align 8, !tbaa !87 ; 4 uses
  br i1 %.not2000, label %bb.afb, label %bb.aex

bb.aex:                                           ; preds = %peek_offset.exit2960.thread
  %i.ctn = getelementptr i8, ptr %i.ctm, i64 %.01861 ; 2 uses
  store ptr %i.ctn, ptr %i.d, align 8, !tbaa !87
  %.val2244 = load ptr, ptr %i.f, align 8, !tbaa !89 ; 2 uses
  %i.cto = getelementptr i8, ptr %i.ctn, i64 -1   ; 2 uses
  %i.ctp = icmp ult ptr %i.cto, %.val2244
  br i1 %i.ctp, label %peek_offset.exit2963, label %peek_offset.exit2963.thread

peek_offset.exit2963:                             ; preds = %bb.aex
  %i.ctq = load i8, ptr %i.cto, align 1, !tbaa !83
  %i.ctr = icmp eq i8 %i.ctq, 10
  br i1 %i.ctr, label %bb.aey, label %peek_offset.exit2963.thread

bb.aey:                                           ; preds = %peek_offset.exit2963
  %i.cts = load ptr, ptr %i.csz, align 8, !tbaa !153 ; 2 uses
  %.not.i2964 = icmp ugt ptr %i.cts, %.val2244
  br i1 %.not.i2964, label %bb.aez, label %parser_flush_heredoc_end.exit2965

bb.aez:                                           ; preds = %bb.aey
  tail call void @__assert_fail(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.2, i32 noundef 9428, ptr noundef nonnull @__PRETTY_FUNCTION__.parser_flush_heredoc_end) #26
  unreachable

parser_flush_heredoc_end.exit2965:                ; preds = %bb.aey
  store ptr %i.cts, ptr %i.csv, align 8, !tbaa !152
  store ptr null, ptr %i.csz, align 8, !tbaa !153
  br label %peek_offset.exit2963.thread

peek_offset.exit2963.thread:                      ; preds = %bb.aex, %parser_flush_heredoc_end.exit2965, %peek_offset.exit2963
  store i32 161, ptr %i.c, align 8, !tbaa !154
  %i.ctt = getelementptr i8, ptr %0, i64 544
  %i.ctu = load ptr, ptr %i.ctt, align 8, !tbaa !155 ; 3 uses
  %.not.i2966 = icmp eq ptr %i.ctu, null
  br i1 %.not.i2966, label %parser_lex_callback.exit2967, label %bb.afa

bb.afa:                                           ; preds = %peek_offset.exit2963.thread
  %i.ctv = getelementptr i8, ptr %i.ctu, i64 8
  %i.ctw = load ptr, ptr %i.ctv, align 8, !tbaa !157
  %i.ctx = load ptr, ptr %i.ctu, align 8, !tbaa !158
  tail call void %i.ctw(ptr noundef %i.ctx, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !2
  br label %parser_lex_callback.exit2967

bb.afb:                                           ; preds = %peek_offset.exit2960.thread
  %i.cty = load ptr, ptr %i.f, align 8, !tbaa !89 ; 2 uses
  %.not2001 = icmp ult ptr %i.ctm, %i.cty
  br i1 %.not2001, label %bb.afe, label %bb.afc

bb.afc:                                           ; preds = %bb.afb
  store i32 1, ptr %i.c, align 8, !tbaa !154
  %i.ctz = getelementptr i8, ptr %0, i64 544
  %i.cua = load ptr, ptr %i.ctz, align 8, !tbaa !155 ; 3 uses
  %.not.i2968 = icmp eq ptr %i.cua, null
  br i1 %.not.i2968, label %parser_lex_callback.exit2967, label %bb.afd

bb.afd:                                           ; preds = %bb.afc
  %i.cub = getelementptr i8, ptr %i.cua, i64 8
  %i.cuc = load ptr, ptr %i.cub, align 8, !tbaa !157
  %i.cud = load ptr, ptr %i.cua, align 8, !tbaa !158
  tail call void %i.cuc(ptr noundef %i.cud, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !2
  br label %parser_lex_callback.exit2967

bb.afe:                                           ; preds = %bb.afb
  %i.cue = load ptr, ptr %i.o, align 8, !tbaa !93 ; 5 uses
  %i.cuf = getelementptr i8, ptr %i.cue, i64 8    ; 5 uses
  %i.cug = getelementptr i8, ptr %i.cue, i64 19   ; 6 uses
  %i.cuh = ptrtoint ptr %i.cty to i64
  %i.cui = ptrtoint ptr %i.ctm to i64
  %i.cuj = sub i64 %i.cuh, %i.cui
  %i.cuk = tail call ptr @pm_strpbrk(ptr noundef nonnull %0, ptr noundef %i.ctm, ptr noundef %i.cug, i64 noundef %i.cuj, i1 noundef zeroext true) #27 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %.not20024108 = icmp eq ptr %i.cuk, null
  br i1 %.not20024108, label %._crit_edge4112, label %.lr.ph4111

.lr.ph4111:                                       ; preds = %bb.afe
  %i.cul = getelementptr i8, ptr %i.cue, i64 18   ; 2 uses
  %i.cum = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.cun = getelementptr i8, ptr %0, i64 600
  %i.cuo = getelementptr i8, ptr %i.cue, i64 17   ; 2 uses
  %i.cup = getelementptr i8, ptr %i.cue, i64 16
  br label %bb.aff

bb.aff:                                           ; preds = %.lr.ph4111, %.backedge3618
  %.018584109 = phi ptr [ %i.cuk, %.lr.ph4111 ], [ %.01858.be, %.backedge3618 ] ; 11 uses
  %i.cuq = load i8, ptr %.018584109, align 1, !tbaa !83
  %i.cur = call zeroext i1 @pm_char_is_whitespace(i8 noundef zeroext %i.cuq) #27
  br i1 %i.cur, label %bb.afg, label %bb.afh

bb.afg:                                           ; preds = %bb.aff
  store ptr %.018584109, ptr %i.d, align 8, !tbaa !87
  call fastcc void @pm_token_buffer_flush(ptr noundef nonnull %0, ptr noundef %4)
  store i32 148, ptr %i.c, align 8, !tbaa !154
  %i.cus = getelementptr i8, ptr %0, i64 544
  %i.cut = load ptr, ptr %i.cus, align 8, !tbaa !155 ; 2 uses
  %.not.i2970 = icmp eq ptr %i.cut, null
  br i1 %.not.i2970, label %parser_lex_callback.exit2971, label %parser_lex_callback.exit2971.sink.split

bb.afh:                                           ; preds = %bb.aff
  %i.cuu = load i8, ptr %.018584109, align 1, !tbaa !83 ; 3 uses
  %i.cuv = load i8, ptr %i.cul, align 2, !tbaa !83
  %i.cuw = icmp eq i8 %i.cuu, %i.cuv
  br i1 %i.cuw, label %bb.afi, label %bb.afn

bb.afi:                                           ; preds = %bb.afh
  %i.cux = load i64, ptr %i.cuf, align 8, !tbaa !83
  %.not2005 = icmp eq i64 %i.cux, 0
  br i1 %.not2005, label %bb.afk, label %bb.afj

bb.afj:                                           ; preds = %bb.afi
  %i.cuy = getelementptr i8, ptr %.018584109, i64 1 ; 3 uses
  store ptr %i.cuy, ptr %i.d, align 8, !tbaa !87
  %i.cuz = load ptr, ptr %i.f, align 8, !tbaa !89
  %i.cva = ptrtoint ptr %i.cuz to i64
  %i.cvb = ptrtoint ptr %i.cuy to i64
  %i.cvc = sub i64 %i.cva, %i.cvb
  %i.cvd = call ptr @pm_strpbrk(ptr noundef %0, ptr noundef %i.cuy, ptr noundef %i.cug, i64 noundef %i.cvc, i1 noundef zeroext true) #27
  %i.cve = load i64, ptr %i.cuf, align 8, !tbaa !83
  %i.cvf = add i64 %i.cve, -1
  store i64 %i.cvf, ptr %i.cuf, align 8, !tbaa !83
  br label %.backedge3618

.backedge3618:                                    ; preds = %bb.afj, %bb.afo, %bb.agi, %parser_lex_callback.exit2985, %parser_lex_callback.exit2987
  %.01858.be = phi ptr [ %i.cvd, %bb.afj ], [ %i.cvt, %bb.afo ], [ %i.cxy, %bb.agi ], [ %i.cxh, %parser_lex_callback.exit2985 ], [ %i.cxq, %parser_lex_callback.exit2987 ] ; 2 uses
  %.not2002 = icmp eq ptr %.01858.be, null
  br i1 %.not2002, label %._crit_edge4112, label %bb.aff, !llvm.loop !390

bb.afk:                                           ; preds = %bb.afi
  %i.cvg = load ptr, ptr %i.csy, align 8, !tbaa !151
  %i.cvh = icmp ugt ptr %.018584109, %i.cvg
  br i1 %i.cvh, label %bb.afl, label %bb.afm

bb.afl:                                           ; preds = %bb.afk
  store ptr %.018584109, ptr %i.d, align 8, !tbaa !87
  call fastcc void @pm_token_buffer_flush(ptr noundef nonnull %0, ptr noundef %4)
  store i32 148, ptr %i.c, align 8, !tbaa !154
  %i.cvi = getelementptr i8, ptr %0, i64 544
  %i.cvj = load ptr, ptr %i.cvi, align 8, !tbaa !155 ; 2 uses
  %.not.i2972 = icmp eq ptr %i.cvj, null
  br i1 %.not.i2972, label %parser_lex_callback.exit2971, label %parser_lex_callback.exit2971.sink.split

bb.afm:                                           ; preds = %bb.afk
  %i.cvk = getelementptr i8, ptr %.018584109, i64 1
  store ptr %i.cvk, ptr %i.d, align 8, !tbaa !87
  call fastcc void @lex_mode_pop(ptr noundef nonnull %0)
  %i.cvl = getelementptr i8, ptr %0, i64 4
  store i32 2, ptr %i.cvl, align 4, !tbaa !160
  store i32 149, ptr %i.c, align 8, !tbaa !154
  %i.cvm = getelementptr i8, ptr %0, i64 544
  %i.cvn = load ptr, ptr %i.cvm, align 8, !tbaa !155 ; 2 uses
  %.not.i2974 = icmp eq ptr %i.cvn, null
  br i1 %.not.i2974, label %parser_lex_callback.exit2971, label %parser_lex_callback.exit2971.sink.split

bb.afn:                                           ; preds = %bb.afh
  switch i8 %i.cuu, label %bb.agg [
    i8 0, label %bb.afo
    i8 92, label %bb.afp
    i8 35, label %bb.age
  ]

bb.afo:                                           ; preds = %bb.afn
  %i.cvo = getelementptr i8, ptr %.018584109, i64 1 ; 2 uses
  %i.cvp = load ptr, ptr %i.f, align 8, !tbaa !89
  %i.cvq = ptrtoint ptr %i.cvp to i64
  %i.cvr = ptrtoint ptr %i.cvo to i64
  %i.cvs = sub i64 %i.cvq, %i.cvr
  %i.cvt = call ptr @pm_strpbrk(ptr noundef %0, ptr noundef %i.cvo, ptr noundef %i.cug, i64 noundef %i.cvs, i1 noundef zeroext true) #27
  br label %.backedge3618

bb.afp:                                           ; preds = %bb.afn
  %i.cvu = getelementptr i8, ptr %.018584109, i64 1 ; 3 uses
  store ptr %i.cvu, ptr %i.d, align 8, !tbaa !87
  %i.cvv = load ptr, ptr %i.f, align 8, !tbaa !89
  %i.cvw = icmp eq ptr %i.cvu, %i.cvv
  br i1 %i.cvw, label %._crit_edge4112, label %bb.afq

bb.afq:                                           ; preds = %bb.afp
  %i.cvx = load ptr, ptr %i.cum, align 8, !tbaa !175 ; 2 uses
  %i.cvy = icmp eq ptr %i.cvx, null
  br i1 %i.cvy, label %bb.afr, label %bb.afs

bb.afr:                                           ; preds = %bb.afq
  %i.cvz = call zeroext i1 @pm_buffer_init_capacity(ptr noundef nonnull %4, i64 noundef 16) #27 ; 0 uses
  %i.cwa = load ptr, ptr %i.csy, align 8, !tbaa !151
  %.pre4542 = load ptr, ptr %i.d, align 8, !tbaa !87
  br label %bb.afs

bb.afs:                                           ; preds = %bb.afr, %bb.afq
  %i.cwb = phi ptr [ %.pre4542, %bb.afr ], [ %i.cvu, %bb.afq ]
  %.0.i2976 = phi ptr [ %i.cwa, %bb.afr ], [ %i.cvx, %bb.afq ] ; 3 uses
  %i.cwc = getelementptr i8, ptr %i.cwb, i64 -1   ; 3 uses
  %.not.i2977 = icmp ult ptr %i.cwc, %.0.i2976
  br i1 %.not.i2977, label %bb.aft, label %pm_token_buffer_escape.exit

bb.aft:                                           ; preds = %bb.afs
  call void @__assert_fail(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.2, i32 noundef 9626, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_token_buffer_escape) #26
  unreachable

pm_token_buffer_escape.exit:                      ; preds = %bb.afs
  %i.cwd = ptrtoint ptr %i.cwc to i64
  %i.cwe = ptrtoint ptr %.0.i2976 to i64
  %i.cwf = sub i64 %i.cwd, %i.cwe
  call void @pm_buffer_append_bytes(ptr noundef nonnull %4, ptr noundef %.0.i2976, i64 noundef %i.cwf) #27
  store ptr %i.cwc, ptr %i.cum, align 8, !tbaa !175
  %.val2202 = load ptr, ptr %i.f, align 8, !tbaa !89 ; 2 uses
  %.val2203 = load ptr, ptr %i.d, align 8, !tbaa !87 ; 3 uses
  %i.cwg = icmp ult ptr %.val2203, %.val2202
  br i1 %i.cwg, label %peek.exit2980, label %peek.exit2980.thread

peek.exit2980:                                    ; preds = %pm_token_buffer_escape.exit
  %i.cwh = load i8, ptr %.val2203, align 1, !tbaa !83 ; 3 uses
  switch i8 %i.cwh, label %peek.exit2980.thread [
    i8 32, label %bb.afu
    i8 12, label %bb.afu
    i8 9, label %bb.afu
    i8 11, label %bb.afu
    i8 92, label %bb.afu
    i8 13, label %bb.afv
    i8 10, label %bb.afw
  ]

bb.afu:                                           ; preds = %peek.exit2980, %peek.exit2980, %peek.exit2980, %peek.exit2980, %peek.exit2980
  call void @pm_buffer_append_byte(ptr noundef nonnull %4, i8 noundef zeroext %i.cwh) #27
  %i.cwi = load ptr, ptr %i.d, align 8, !tbaa !87
  %i.cwj = getelementptr i8, ptr %i.cwi, i64 1
  store ptr %i.cwj, ptr %i.d, align 8, !tbaa !87
  br label %parser_lex_callback.exit2985

bb.afv:                                           ; preds = %peek.exit2980
  %i.cwk = getelementptr i8, ptr %.val2203, i64 1 ; 3 uses
  store ptr %i.cwk, ptr %i.d, align 8, !tbaa !87
  %i.cwl = icmp ult ptr %i.cwk, %.val2202
  br i1 %i.cwl, label %peek.exit2983, label %peek.exit2983.thread

peek.exit2983:                                    ; preds = %bb.afv
  %i.cwm = load i8, ptr %i.cwk, align 1, !tbaa !83
  %.not2003 = icmp eq i8 %i.cwm, 10
  br i1 %.not2003, label %bb.afw, label %peek.exit2983.thread

peek.exit2983.thread:                             ; preds = %bb.afv, %peek.exit2983
  call void @pm_buffer_append_byte(ptr noundef nonnull %4, i8 noundef zeroext 13) #27
  br label %parser_lex_callback.exit2985

bb.afw:                                           ; preds = %peek.exit2983, %peek.exit2980
  call void @pm_buffer_append_byte(ptr noundef nonnull %4, i8 noundef zeroext 10) #27
  %i.cwn = load ptr, ptr %i.csz, align 8, !tbaa !153
  %.not2004 = icmp eq ptr %i.cwn, null
  br i1 %.not2004, label %bb.afy, label %bb.afx

bb.afx:                                           ; preds = %bb.afw
  call fastcc void @parser_flush_heredoc_end(ptr noundef nonnull %0)
  call fastcc void @pm_token_buffer_copy(ptr noundef nonnull %0, ptr noundef %4)
  store i32 148, ptr %i.c, align 8, !tbaa !154
  %i.cwo = getelementptr i8, ptr %0, i64 544
  %i.cwp = load ptr, ptr %i.cwo, align 8, !tbaa !155 ; 2 uses
  %.not.i2984 = icmp eq ptr %i.cwp, null
  br i1 %.not.i2984, label %parser_lex_callback.exit2971, label %parser_lex_callback.exit2971.sink.split

bb.afy:                                           ; preds = %bb.afw
  %i.cwq = load ptr, ptr %i.d, align 8, !tbaa !87
  %i.cwr = call zeroext i1 @pm_newline_list_append(ptr noundef %i.cun, ptr noundef %i.cwq) #27 ; 0 uses
  %i.cws = load ptr, ptr %i.d, align 8, !tbaa !87
  %i.cwt = getelementptr i8, ptr %i.cws, i64 1
  store ptr %i.cwt, ptr %i.d, align 8, !tbaa !87
  br label %parser_lex_callback.exit2985

peek.exit2980.thread:                             ; preds = %pm_token_buffer_escape.exit, %peek.exit2980
  %.0.i.i29793434 = phi i8 [ %i.cwh, %peek.exit2980 ], [ 0, %pm_token_buffer_escape.exit ] ; 3 uses
  %i.cwu = load i8, ptr %i.cuo, align 1, !tbaa !83
  %i.cwv = icmp eq i8 %.0.i.i29793434, %i.cwu
  br i1 %i.cwv, label %bb.aga, label %bb.afz

bb.afz:                                           ; preds = %peek.exit2980.thread
  %i.cww = load i8, ptr %i.cul, align 2, !tbaa !83
  %i.cwx = icmp eq i8 %.0.i.i29793434, %i.cww
  br i1 %i.cwx, label %bb.aga, label %bb.agb

bb.aga:                                           ; preds = %bb.afz, %peek.exit2980.thread
  call void @pm_buffer_append_byte(ptr noundef nonnull %4, i8 noundef zeroext %.0.i.i29793434) #27
  %i.cwy = load ptr, ptr %i.d, align 8, !tbaa !87
  %i.cwz = getelementptr i8, ptr %i.cwy, i64 1
  store ptr %i.cwz, ptr %i.d, align 8, !tbaa !87
  br label %parser_lex_callback.exit2985

bb.agb:                                           ; preds = %bb.afz
  %i.cxa = load i8, ptr %i.cup, align 8, !tbaa !83, !range !64, !noundef !65
  %i.cxb = trunc nuw i8 %i.cxa to i1
  br i1 %i.cxb, label %bb.agc, label %bb.agd

bb.agc:                                           ; preds = %bb.agb
  call fastcc void @escape_read(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 0)
  br label %parser_lex_callback.exit2985

bb.agd:                                           ; preds = %bb.agb
  call void @pm_buffer_append_byte(ptr noundef nonnull %4, i8 noundef zeroext 92) #27
  call fastcc void @pm_token_buffer_push_escaped(ptr noundef %4, ptr noundef nonnull %0)
  br label %parser_lex_callback.exit2985

parser_lex_callback.exit2985:                     ; preds = %bb.afu, %peek.exit2983.thread, %bb.afy, %bb.agc, %bb.agd, %bb.aga
  %i.cxc = load ptr, ptr %i.d, align 8, !tbaa !87 ; 3 uses
  store ptr %i.cxc, ptr %i.cum, align 8, !tbaa !175
  %i.cxd = load ptr, ptr %i.f, align 8, !tbaa !89
  %i.cxe = ptrtoint ptr %i.cxd to i64
  %i.cxf = ptrtoint ptr %i.cxc to i64
  %i.cxg = sub i64 %i.cxe, %i.cxf
  %i.cxh = call ptr @pm_strpbrk(ptr noundef nonnull %0, ptr noundef %i.cxc, ptr noundef %i.cug, i64 noundef %i.cxg, i1 noundef zeroext true) #27
  br label %.backedge3618

bb.age:                                           ; preds = %bb.afn
  %i.cxi = call fastcc i32 @lex_interpolation(ptr noundef %0, ptr noundef %.018584109) ; 2 uses
  %trunc3540 = trunc nuw i32 %i.cxi to i8
  switch i8 %trunc3540, label %.loopexit3617 [
    i8 -92, label %parser_lex_callback.exit2987
    i8 -108, label %bb.agf
  ]

bb.agf:                                           ; preds = %bb.age
end_hunk_1
begin_hunk_2_@parser_lex:bb.a
.thread3452:                                      ; preds = %pm_regexp_token_buffer_escape.exit3014
  %i.dei = load i8, ptr %i.czc, align 1, !tbaa !83
  %i.dej = icmp eq i8 %i.dei, 0
  br i1 %i.dej, label %.thread3522, label %.thread3456

bb.aic:                                           ; preds = %bb.aib
  switch i8 %i.ddu, label %.thread3522 [
    i8 36, label %bb.aid
    i8 41, label %bb.aid
    i8 42, label %bb.aid
    i8 43, label %bb.aid
    i8 46, label %bb.aid
    i8 62, label %bb.aid
    i8 63, label %bb.aid
    i8 93, label %bb.aid
    i8 94, label %bb.aid
    i8 124, label %bb.aid
    i8 125, label %bb.aid
  ]

bb.aid:                                           ; preds = %bb.aic, %bb.aic, %bb.aic, %bb.aic, %bb.aic, %bb.aic, %bb.aic, %bb.aic, %bb.aic, %bb.aic, %bb.aic
  call void @pm_buffer_append_byte(ptr noundef nonnull %5, i8 noundef zeroext 92) #27
  br label %.thread3522

.thread3522:                                      ; preds = %.thread3452, %bb.aic, %bb.aid
  %.0.i.i3016344934553524 = phi i8 [ %i.ddu, %bb.aid ], [ %i.ddu, %bb.aic ], [ 0, %.thread3452 ] ; 2 uses
  call void @pm_buffer_append_byte(ptr noundef nonnull %i.czf, i8 noundef zeroext %.0.i.i3016344934553524) #27
  call void @pm_buffer_append_byte(ptr noundef nonnull %5, i8 noundef zeroext %.0.i.i3016344934553524) #27
  %i.dek = load ptr, ptr %i.d, align 8, !tbaa !87
  %i.del = getelementptr i8, ptr %i.dek, i64 1
  store ptr %i.del, ptr %i.d, align 8, !tbaa !87
  br label %parser_lex_callback.exit3022

bb.aie:                                           ; preds = %bb.aib
  %i.dem = icmp sgt i8 %i.ddu, -1
  br i1 %i.dem, label %.thread3456, label %bb.aif

.thread3456:                                      ; preds = %.thread3452, %bb.aie
  call void @pm_buffer_append_byte(ptr noundef nonnull %5, i8 noundef zeroext 92) #27
  br label %bb.aif

bb.aif:                                           ; preds = %.thread3456, %bb.aie
  call fastcc void @pm_regexp_token_buffer_push_escaped(ptr noundef %5, ptr noundef nonnull %0)
  br label %parser_lex_callback.exit3022

parser_lex_callback.exit3022:                     ; preds = %bb.ahw, %bb.ahz, %bb.aia, %.thread3522, %bb.aif
  %i.den = load ptr, ptr %i.d, align 8, !tbaa !87 ; 3 uses
  store ptr %i.den, ptr %i.cze, align 8, !tbaa !177
  %i.deo = load ptr, ptr %i.f, align 8, !tbaa !89
  %i.dep = ptrtoint ptr %i.deo to i64
  %i.deq = ptrtoint ptr %i.den to i64
  %i.der = sub i64 %i.dep, %i.deq
  %i.des = call ptr @pm_strpbrk(ptr noundef nonnull %0, ptr noundef %i.den, ptr noundef %i.cyx, i64 noundef %i.der, i1 noundef zeroext false) #27
  br label %parser_lex_callback.exit2997

bb.aig:                                           ; preds = %bb.ahj
  %i.det = call fastcc i32 @lex_interpolation(ptr noundef %0, ptr noundef %.018524104) ; 2 uses
  %trunc3539 = trunc nuw i32 %i.det to i8
  switch i8 %trunc3539, label %.loopexit3619 [
    i8 -92, label %parser_lex_callback.exit3024
    i8 -108, label %bb.aih
  ]

bb.aih:                                           ; preds = %bb.aig
  call fastcc void @pm_regexp_token_buffer_flush(ptr noundef %0, ptr noundef %5)
  br label %.loopexit3619

.loopexit3619:                                    ; preds = %bb.aig, %bb.aih
  store i32 %i.det, ptr %i.c, align 8, !tbaa !154
  %i.deu = getelementptr i8, ptr %0, i64 544
  %i.dev = load ptr, ptr %i.deu, align 8, !tbaa !155 ; 2 uses
  %.not.i3023 = icmp eq ptr %i.dev, null
  br i1 %.not.i3023, label %parser_lex_callback.exit3026, label %parser_lex_callback.exit3026.sink.split

parser_lex_callback.exit3024:                     ; preds = %bb.aig
  %i.dew = load ptr, ptr %i.d, align 8, !tbaa !87 ; 2 uses
  %i.dex = load ptr, ptr %i.f, align 8, !tbaa !89
  %i.dey = ptrtoint ptr %i.dex to i64
  %i.dez = ptrtoint ptr %i.dew to i64
  %i.dfa = sub i64 %i.dey, %i.dez
  %i.dfb = call ptr @pm_strpbrk(ptr noundef %0, ptr noundef %i.dew, ptr noundef %i.cyx, i64 noundef %i.dfa, i1 noundef zeroext false) #27
  br label %parser_lex_callback.exit2997

bb.aii:                                           ; preds = %bb.ahj
  call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 11535, ptr noundef nonnull @__PRETTY_FUNCTION__.parser_lex) #26
  unreachable

parser_lex_callback.exit2997:                     ; preds = %.thread3445, %peek_at.exit3007.thread, %bb.aho, %parser_lex_callback.exit3022, %parser_lex_callback.exit3024, %bb.ahi, %bb.agw
  %.51857 = phi ptr [ %i.czy, %bb.agw ], [ %i.des, %parser_lex_callback.exit3022 ], [ %i.dfb, %parser_lex_callback.exit3024 ], [ %i.dbt, %bb.ahi ], [ %i.dcb, %.thread3445 ], [ %i.dci, %peek_at.exit3007.thread ], [ %i.ddb, %bb.aho ] ; 2 uses
  %.not1990 = icmp eq ptr %.51857, null
  br i1 %.not1990, label %._crit_edge4107, label %bb.agr

._crit_edge4107:                                  ; preds = %bb.ahr, %parser_lex_callback.exit2997, %bb.agq
  %i.dfc = load ptr, ptr %i.d, align 8, !tbaa !87
  %i.dfd = load ptr, ptr %i.cyq, align 8, !tbaa !151
  %i.dfe = icmp ugt ptr %i.dfc, %i.dfd
  br i1 %i.dfe, label %bb.aij, label %bb.aik

bb.aij:                                           ; preds = %._crit_edge4107
  call fastcc void @pm_regexp_token_buffer_flush(ptr noundef nonnull %0, ptr noundef %5)
  store i32 148, ptr %i.c, align 8, !tbaa !154
  %i.dff = getelementptr i8, ptr %0, i64 544
  %i.dfg = load ptr, ptr %i.dff, align 8, !tbaa !155 ; 2 uses
  %.not.i3025 = icmp eq ptr %i.dfg, null
  br i1 %.not.i3025, label %parser_lex_callback.exit3026, label %parser_lex_callback.exit3026.sink.split

bb.aik:                                           ; preds = %._crit_edge4107
  %i.dfh = load ptr, ptr %i.f, align 8, !tbaa !89
  store ptr %i.dfh, ptr %i.d, align 8, !tbaa !87
  call fastcc void @pm_regexp_token_buffer_flush(ptr noundef nonnull %0, ptr noundef %5)
  store i32 148, ptr %i.c, align 8, !tbaa !154
  %i.dfi = getelementptr i8, ptr %0, i64 544
  %i.dfj = load ptr, ptr %i.dfi, align 8, !tbaa !155 ; 2 uses
  %.not.i3027 = icmp eq ptr %i.dfj, null
  br i1 %.not.i3027, label %parser_lex_callback.exit3026, label %parser_lex_callback.exit3026.sink.split

parser_lex_callback.exit3026.sink.split:          ; preds = %bb.aik, %bb.aij, %.loopexit3619, %bb.ahy, %parser_flush_heredoc_end.exit3010, %lex_mode_pop.exit3003, %bb.agy
  %.sink5568 = phi ptr [ %i.dec, %bb.ahy ], [ %i.ddf, %parser_flush_heredoc_end.exit3010 ], [ %i.dae, %bb.agy ], [ %i.dbl, %lex_mode_pop.exit3003 ], [ %i.dev, %.loopexit3619 ], [ %i.dfg, %bb.aij ], [ %i.dfj, %bb.aik ] ; 2 uses
  %i.dfk = getelementptr i8, ptr %.sink5568, i64 8
  %i.dfl = load ptr, ptr %i.dfk, align 8, !tbaa !157
  %i.dfm = load ptr, ptr %.sink5568, align 8, !tbaa !158
  call void %i.dfl(ptr noundef %i.dfm, ptr noundef nonnull %0, ptr noundef %i.c) #27
  br label %parser_lex_callback.exit3026

parser_lex_callback.exit3026:                     ; preds = %parser_lex_callback.exit3026.sink.split, %.loopexit3619, %bb.ahy, %parser_flush_heredoc_end.exit3010, %lex_mode_pop.exit3003, %bb.agy, %bb.aik, %bb.aij
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %parser_lex_callback.exit2967

bb.ail:                                           ; preds = %bb.c
  %i.dfn = getelementptr i8, ptr %0, i64 368      ; 4 uses
  %i.dfo = load ptr, ptr %i.dfn, align 8, !tbaa !152 ; 3 uses
  %i.dfp = icmp eq ptr %i.dfo, null
  br i1 %i.dfp, label %bb.ain, label %bb.aim

bb.aim:                                           ; preds = %bb.ail
  store ptr %i.dfo, ptr %i.d, align 8, !tbaa !87
  store ptr null, ptr %i.dfn, align 8, !tbaa !152
  br label %bb.ain

bb.ain:                                           ; preds = %bb.ail, %bb.aim
  %i.dfq = phi ptr [ %i.dfo, %bb.aim ], [ %i.e, %bb.ail ] ; 4 uses
  %i.dfr = getelementptr i8, ptr %0, i64 352      ; 7 uses
  store ptr %i.dfq, ptr %i.dfr, align 8, !tbaa !151
  %.not1977 = icmp ult ptr %i.dfq, %i.g
  br i1 %.not1977, label %bb.aiq, label %bb.aio

bb.aio:                                           ; preds = %bb.ain
  store i32 1, ptr %i.c, align 8, !tbaa !154
  %i.dfs = getelementptr i8, ptr %0, i64 544
  %i.dft = load ptr, ptr %i.dfs, align 8, !tbaa !155 ; 3 uses
  %.not.i3029 = icmp eq ptr %i.dft, null
  br i1 %.not.i3029, label %parser_lex_callback.exit2967, label %bb.aip

bb.aip:                                           ; preds = %bb.aio
  %i.dfu = getelementptr i8, ptr %i.dft, i64 8
  %i.dfv = load ptr, ptr %i.dfu, align 8, !tbaa !157
  %i.dfw = load ptr, ptr %i.dft, align 8, !tbaa !158
  tail call void %i.dfv(ptr noundef %i.dfw, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !2
  br label %parser_lex_callback.exit2967

bb.aiq:                                           ; preds = %bb.ain
  %i.dfx = getelementptr i8, ptr %i.p, i64 8      ; 5 uses
  %i.dfy = getelementptr i8, ptr %i.p, i64 20     ; 8 uses
  %i.dfz = ptrtoint ptr %i.g to i64
  %i.dga = ptrtoint ptr %i.dfq to i64
  %i.dgb = sub i64 %i.dfz, %i.dga
  %i.dgc = tail call ptr @pm_strpbrk(ptr noundef nonnull %0, ptr noundef %i.dfq, ptr noundef %i.dfy, i64 noundef %i.dgb, i1 noundef zeroext true) #27 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  %.not19784100 = icmp eq ptr %i.dgc, null
  br i1 %.not19784100, label %._crit_edge, label %.lr.ph4102

.lr.ph4102:                                       ; preds = %bb.aiq
  %i.dgd = getelementptr i8, ptr %i.p, i64 18     ; 2 uses
  %i.dge = getelementptr i8, ptr %i.p, i64 19     ; 2 uses
  %i.dgf = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 8 uses
  %i.dgg = getelementptr i8, ptr %i.p, i64 16     ; 3 uses
  %i.dgh = getelementptr i8, ptr %0, i64 376      ; 6 uses
  %i.dgi = getelementptr i8, ptr %0, i64 600      ; 3 uses
  br label %bb.air

bb.air:                                           ; preds = %.lr.ph4102, %.backedge3620
  %.018444101 = phi ptr [ %i.dgc, %.lr.ph4102 ], [ %.01844.be, %.backedge3620 ] ; 17 uses
  %i.dgj = load i8, ptr %i.dgd, align 2, !tbaa !83 ; 2 uses
  %.not1979 = icmp ne i8 %i.dgj, 0
  %.pr3465 = load i8, ptr %.018444101, align 1, !tbaa !83 ; 5 uses
  %i.dgk = icmp eq i8 %.pr3465, %i.dgj
  %or.cond5581 = select i1 %.not1979, i1 %i.dgk, i1 false
  br i1 %or.cond5581, label %bb.ais, label %thread-pre-split

bb.ais:                                           ; preds = %bb.air
  %i.dgl = load i64, ptr %i.dfx, align 8, !tbaa !83
  %i.dgm = add i64 %i.dgl, 1
  store i64 %i.dgm, ptr %i.dfx, align 8, !tbaa !83
  %i.dgn = getelementptr i8, ptr %.018444101, i64 1 ; 3 uses
  store ptr %i.dgn, ptr %i.d, align 8, !tbaa !87
  %i.dgo = load ptr, ptr %i.f, align 8, !tbaa !89
  %i.dgp = ptrtoint ptr %i.dgo to i64
  %i.dgq = ptrtoint ptr %i.dgn to i64
  %i.dgr = sub i64 %i.dgp, %i.dgq
  %i.dgs = call ptr @pm_strpbrk(ptr noundef %0, ptr noundef %i.dgn, ptr noundef %i.dfy, i64 noundef %i.dgr, i1 noundef zeroext true) #27
  br label %.backedge3620

.backedge3620:                                    ; preds = %bb.aix, %parser_lex_callback.exit3076, %parser_lex_callback.exit3073, %bb.ajx, %peek_at.exit3054.thread, %bb.ajr, %bb.ais
  %.01844.be = phi ptr [ %i.dgs, %bb.ais ], [ %i.dhi, %bb.aix ], [ %i.dnu, %parser_lex_callback.exit3076 ], [ %i.djr, %bb.ajr ], [ %i.djz, %peek_at.exit3054.thread ], [ %i.dkr, %bb.ajx ], [ %i.dmz, %parser_lex_callback.exit3073 ] ; 2 uses
  %.not1978 = icmp eq ptr %.01844.be, null
  br i1 %.not1978, label %._crit_edge, label %bb.air, !llvm.loop !392

thread-pre-split:                                 ; preds = %bb.air
  %i.dgt = load i8, ptr %i.dge, align 1, !tbaa !83 ; 4 uses
  %i.dgu = icmp eq i8 %.pr3465, %i.dgt            ; 4 uses
  %i.dgv = icmp eq i8 %.pr3465, 13
  br i1 %i.dgv, label %bb.ait, label %bb.aiv

bb.ait:                                           ; preds = %thread-pre-split
  %i.dgw = getelementptr i8, ptr %.018444101, i64 1 ; 2 uses
  %.val2080 = load ptr, ptr %i.f, align 8, !tbaa !89 ; 3 uses
  %i.dgx = icmp ult ptr %i.dgw, %.val2080
  br i1 %i.dgx, label %peek_at.exit3032, label %peek_at.exit3032.thread

peek_at.exit3032.thread:                          ; preds = %bb.ait
  br i1 %i.dgu, label %bb.aiw, label %.critedge2063.thread

peek_at.exit3032:                                 ; preds = %bb.ait
  %i.dgy = load i8, ptr %i.dgw, align 1, !tbaa !83
  %i.dgz = icmp eq i8 %i.dgy, 10
  br i1 %i.dgz, label %bb.aiu, label %bb.aiv

bb.aiu:                                           ; preds = %peek_at.exit3032
  %i.dha = icmp eq i8 %i.dgt, 10
  %spec.select2061 = or i1 %i.dha, %i.dgu
  %i.dhb = icmp eq i8 %i.dgt, 13
  br i1 %i.dhb, label %.critedge2063.thread, label %bb.aiv

bb.aiv:                                           ; preds = %bb.aiu, %peek_at.exit3032, %thread-pre-split
  %.11843 = phi i1 [ %i.dgu, %thread-pre-split ], [ %spec.select2061, %bb.aiu ], [ %i.dgu, %peek_at.exit3032 ]
  br i1 %.11843, label %bb.aiw, label %.critedge2063

bb.aiw:                                           ; preds = %peek_at.exit3032.thread, %bb.aiv
  %i.dhc = load i64, ptr %i.dfx, align 8, !tbaa !83
  %.not1985 = icmp eq i64 %i.dhc, 0
  br i1 %.not1985, label %bb.aiy, label %bb.aix

bb.aix:                                           ; preds = %bb.aiw
  %i.dhd = getelementptr i8, ptr %.018444101, i64 1 ; 3 uses
  store ptr %i.dhd, ptr %i.d, align 8, !tbaa !87
  %i.dhe = load ptr, ptr %i.f, align 8, !tbaa !89
  %i.dhf = ptrtoint ptr %i.dhe to i64
  %i.dhg = ptrtoint ptr %i.dhd to i64
  %i.dhh = sub i64 %i.dhf, %i.dhg
  %i.dhi = call ptr @pm_strpbrk(ptr noundef %0, ptr noundef %i.dhd, ptr noundef %i.dfy, i64 noundef %i.dhh, i1 noundef zeroext true) #27
  %i.dhj = load i64, ptr %i.dfx, align 8, !tbaa !83
  %i.dhk = add i64 %i.dhj, -1
  store i64 %i.dhk, ptr %i.dfx, align 8, !tbaa !83
  br label %.backedge3620, !llvm.loop !392

bb.aiy:                                           ; preds = %bb.aiw
  %i.dhl = load ptr, ptr %i.dfr, align 8, !tbaa !151 ; 2 uses
  %i.dhm = icmp ugt ptr %.018444101, %i.dhl
  br i1 %i.dhm, label %bb.aiz, label %bb.ajc

bb.aiz:                                           ; preds = %bb.aiy
  store ptr %.018444101, ptr %i.d, align 8, !tbaa !87
  %i.dhn = load ptr, ptr %i.dgf, align 8, !tbaa !175 ; 3 uses
  %i.dho = icmp eq ptr %i.dhn, null
  br i1 %i.dho, label %bb.aja, label %bb.ajb

bb.aja:                                           ; preds = %bb.aiz
  %i.dhp = getelementptr i8, ptr %0, i64 640
  call void @pm_string_shared_init(ptr noundef %i.dhp, ptr noundef %i.dhl, ptr noundef nonnull %.018444101) #27
  br label %pm_token_buffer_flush.exit

bb.ajb:                                           ; preds = %bb.aiz
  %i.dhq = ptrtoint ptr %.018444101 to i64
  %i.dhr = ptrtoint ptr %i.dhn to i64
  %i.dhs = sub i64 %i.dhq, %i.dhr
  call void @pm_buffer_append_bytes(ptr noundef nonnull %6, ptr noundef nonnull %i.dhn, i64 noundef %i.dhs) #27
  %i.dht = getelementptr i8, ptr %0, i64 640
  %i.dhu = call ptr @pm_buffer_value(ptr noundef nonnull %6) #27
  %i.dhv = call i64 @pm_buffer_length(ptr noundef nonnull %6) #27
  call void @pm_string_owned_init(ptr noundef %i.dht, ptr noundef %i.dhu, i64 noundef %i.dhv) #27
  br label %pm_token_buffer_flush.exit

pm_token_buffer_flush.exit:                       ; preds = %bb.aja, %bb.ajb
  store i32 148, ptr %i.c, align 8, !tbaa !154
  %i.dhw = getelementptr i8, ptr %0, i64 544
  %i.dhx = load ptr, ptr %i.dhw, align 8, !tbaa !155 ; 2 uses
  %.not.i3033 = icmp eq ptr %i.dhx, null
  br i1 %.not.i3033, label %parser_lex_callback.exit3079, label %parser_lex_callback.exit3079.sink.split

bb.ajc:                                           ; preds = %bb.aiy
  %.val2118 = load ptr, ptr %i.f, align 8, !tbaa !89 ; 2 uses
  %i.dhy = icmp ult ptr %.018444101, %.val2118
  br i1 %i.dhy, label %peek_at.exit.i3037, label %match_eol_at.exit3039

peek_at.exit.i3037:                               ; preds = %bb.ajc
  switch i8 %.pr3465, label %match_eol_at.exit3039 [
    i8 10, label %bb.aje
    i8 13, label %bb.ajd
  ]

bb.ajd:                                           ; preds = %peek_at.exit.i3037
  %i.dhz = getelementptr i8, ptr %.018444101, i64 1 ; 2 uses
  %i.dia = icmp ult ptr %i.dhz, %.val2118
  br i1 %i.dia, label %peek_at.exit11.i3038, label %match_eol_at.exit3039

peek_at.exit11.i3038:                             ; preds = %bb.ajd
  %i.dib = load i8, ptr %i.dhz, align 1, !tbaa !83
  %i.dic = icmp eq i8 %i.dib, 10
  br i1 %i.dic, label %bb.aje, label %match_eol_at.exit3039

bb.aje:                                           ; preds = %peek_at.exit.i3037, %peek_at.exit11.i3038
  %.0.i3036.ph = phi i64 [ 2, %peek_at.exit11.i3038 ], [ 1, %peek_at.exit.i3037 ]
  %i.did = getelementptr i8, ptr %.018444101, i64 %.0.i3036.ph ; 2 uses
  store ptr %i.did, ptr %i.d, align 8, !tbaa !87
  %i.die = load ptr, ptr %i.dgh, align 8, !tbaa !153
  %i.dif = icmp eq ptr %i.die, null
  br i1 %i.dif, label %bb.ajf, label %bb.ajg

bb.ajf:                                           ; preds = %bb.aje
  %i.dig = getelementptr i8, ptr %i.did, i64 -1
  %i.dih = call zeroext i1 @pm_newline_list_append(ptr noundef %i.dgi, ptr noundef %i.dig) #27 ; 0 uses
  br label %bb.ajg

match_eol_at.exit3039:                            ; preds = %peek_at.exit11.i3038, %bb.ajd, %peek_at.exit.i3037, %bb.ajc
  %i.dii = getelementptr i8, ptr %.018444101, i64 1
  store ptr %i.dii, ptr %i.d, align 8, !tbaa !87
  br label %bb.ajg

bb.ajg:                                           ; preds = %bb.aje, %bb.ajf, %match_eol_at.exit3039
  %i.dij = getelementptr i8, ptr %i.p, i64 17
  %i.dik = load i8, ptr %i.dij, align 1, !tbaa !83, !range !64, !noundef !65
  %i.dil = trunc nuw i8 %i.dik to i1
  br i1 %i.dil, label %bb.ajh, label %peek.exit3042.thread

bb.ajh:                                           ; preds = %bb.ajg
  %.val2194 = load ptr, ptr %i.f, align 8, !tbaa !89 ; 2 uses
  %.val2195 = load ptr, ptr %i.d, align 8, !tbaa !87 ; 3 uses
  %i.dim = icmp ult ptr %.val2195, %.val2194
  br i1 %i.dim, label %peek.exit3042, label %peek.exit3042.thread

peek.exit3042:                                    ; preds = %bb.ajh
  %i.din = load i8, ptr %.val2195, align 1, !tbaa !83
  %i.dio = icmp eq i8 %i.din, 58
  br i1 %i.dio, label %bb.aji, label %peek.exit3042.thread

bb.aji:                                           ; preds = %peek.exit3042
  %i.dip = getelementptr i8, ptr %.val2195, i64 1 ; 3 uses
  %i.diq = icmp ult ptr %i.dip, %.val2194
  br i1 %i.diq, label %peek_offset.exit3045, label %peek_offset.exit3045.thread

peek_offset.exit3045:                             ; preds = %bb.aji
  %i.dir = load i8, ptr %i.dip, align 1, !tbaa !83
  %.not1987 = icmp eq i8 %i.dir, 58
  br i1 %.not1987, label %peek.exit3042.thread, label %peek_offset.exit3045.thread

peek_offset.exit3045.thread:                      ; preds = %bb.aji, %peek_offset.exit3045
  store ptr %i.dip, ptr %i.d, align 8, !tbaa !87
  %i.dis = getelementptr i8, ptr %0, i64 4
  store i32 2064, ptr %i.dis, align 4, !tbaa !160
  call fastcc void @lex_mode_pop(ptr noundef nonnull %0)
  store i32 112, ptr %i.c, align 8, !tbaa !154
  %i.dit = getelementptr i8, ptr %0, i64 544
  %i.diu = load ptr, ptr %i.dit, align 8, !tbaa !155 ; 2 uses
  %.not.i3046 = icmp eq ptr %i.diu, null
  br i1 %.not.i3046, label %parser_lex_callback.exit3079, label %parser_lex_callback.exit3079.sink.split

peek.exit3042.thread:                             ; preds = %bb.ajh, %peek_offset.exit3045, %peek.exit3042, %bb.ajg
  %i.div = icmp eq i8 %i.dgt, 10
  br i1 %i.div, label %bb.ajj, label %bb.ajm

bb.ajj:                                           ; preds = %peek.exit3042.thread
  %i.diw = load ptr, ptr %i.dgh, align 8, !tbaa !153 ; 3 uses
  %.not1988 = icmp eq ptr %i.diw, null
  br i1 %.not1988, label %bb.ajm, label %bb.ajk

bb.ajk:                                           ; preds = %bb.ajj
  %i.dix = load ptr, ptr %i.f, align 8, !tbaa !89
  %.not.i3048 = icmp ugt ptr %i.diw, %i.dix
  br i1 %.not.i3048, label %bb.ajl, label %parser_flush_heredoc_end.exit3049

bb.ajl:                                           ; preds = %bb.ajk
  call void @__assert_fail(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.2, i32 noundef 9428, ptr noundef nonnull @__PRETTY_FUNCTION__.parser_flush_heredoc_end) #26
  unreachable

parser_flush_heredoc_end.exit3049:                ; preds = %bb.ajk
  store ptr %i.diw, ptr %i.dfn, align 8, !tbaa !152
  store ptr null, ptr %i.dgh, align 8, !tbaa !153
  br label %bb.ajm

bb.ajm:                                           ; preds = %parser_flush_heredoc_end.exit3049, %bb.ajj, %peek.exit3042.thread
  %i.diy = getelementptr i8, ptr %0, i64 4
  store i32 2, ptr %i.diy, align 4, !tbaa !160
  %i.diz = getelementptr i8, ptr %0, i64 296      ; 2 uses
  %i.dja = load i64, ptr %i.diz, align 8, !tbaa !92 ; 3 uses
  %i.djb = icmp eq i64 %i.dja, 0
  br i1 %i.djb, label %bb.ajn, label %bb.ajo

bb.ajn:                                           ; preds = %bb.ajm
  %i.djc = load ptr, ptr %i.o, align 8, !tbaa !93
  store i32 0, ptr %i.djc, align 8, !tbaa !99
end_hunk_2
begin_hunk_3_@parser_lex:bb.a
  call void @__assert_fail(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.2, i32 noundef 9626, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_token_buffer_escape) #26
  unreachable

pm_token_buffer_escape.exit3119:                  ; preds = %bb.ani
  %i.dxr = ptrtoint ptr %i.dxq to i64
  %i.dxs = ptrtoint ptr %.0.i3117 to i64
  %i.dxt = sub i64 %i.dxr, %i.dxs
  call void @pm_buffer_append_bytes(ptr noundef nonnull %7, ptr noundef %.0.i3117, i64 noundef %i.dxt) #27
  store ptr %i.dxq, ptr %i.dtn, align 8, !tbaa !175
  %.val2188 = load ptr, ptr %i.f, align 8, !tbaa !89 ; 3 uses
  %.val2189 = load ptr, ptr %i.d, align 8, !tbaa !87 ; 5 uses
  %i.dxu = icmp ult ptr %.val2189, %.val2188
  br i1 %i.dxu, label %bb.ank, label %peek.exit3122

bb.ank:                                           ; preds = %pm_token_buffer_escape.exit3119
  %i.dxv = load i8, ptr %.val2189, align 1, !tbaa !83
  br label %peek.exit3122

peek.exit3122:                                    ; preds = %pm_token_buffer_escape.exit3119, %bb.ank
  %.0.i.i3121 = phi i8 [ %i.dxv, %bb.ank ], [ 0, %pm_token_buffer_escape.exit3119 ] ; 2 uses
  br i1 %i.dtf, label %bb.anl, label %bb.anr

bb.anl:                                           ; preds = %peek.exit3122
  switch i8 %.0.i.i3121, label %bb.ano [
    i8 13, label %bb.anm
    i8 10, label %bb.ann
  ]

bb.anm:                                           ; preds = %bb.anl
  %i.dxw = getelementptr i8, ptr %.val2189, i64 1 ; 3 uses
  store ptr %i.dxw, ptr %i.d, align 8, !tbaa !87
  %i.dxx = icmp ult ptr %i.dxw, %.val2188
  br i1 %i.dxx, label %peek.exit3125, label %peek.exit3125.thread

peek.exit3125:                                    ; preds = %bb.anm
  %i.dxy = load i8, ptr %i.dxw, align 1, !tbaa !83
  %.not1970 = icmp eq i8 %i.dxy, 10
  br i1 %.not1970, label %bb.ann, label %peek.exit3125.thread

peek.exit3125.thread:                             ; preds = %bb.anm, %peek.exit3125
  call void @pm_buffer_append_byte(ptr noundef nonnull %7, i8 noundef zeroext 92) #27
  call void @pm_buffer_append_byte(ptr noundef nonnull %7, i8 noundef zeroext 13) #27
  br label %parser_lex_callback.exit3131.thread3517

bb.ann:                                           ; preds = %peek.exit3125, %bb.anl
  call void @pm_buffer_append_byte(ptr noundef nonnull %7, i8 noundef zeroext 92) #27
  call void @pm_buffer_append_byte(ptr noundef nonnull %7, i8 noundef zeroext 10) #27
  %.4.pre = load ptr, ptr %i.d, align 8, !tbaa !87
  br label %parser_lex_callback.exit3131, !llvm.loop !396

bb.ano:                                           ; preds = %bb.anl
  call void @pm_buffer_append_byte(ptr noundef nonnull %7, i8 noundef zeroext 92) #27
  %i.dxz = load i8, ptr %i.dtp, align 1, !tbaa !63, !range !64, !noundef !65
  %i.dya = trunc nuw i8 %i.dxz to i1
  br i1 %i.dya, label %bb.anp, label %bb.anq

bb.anp:                                           ; preds = %bb.ano
  %i.dyb = load ptr, ptr %i.dtq, align 8, !tbaa !60
  %i.dyc = load ptr, ptr %i.dyb, align 8, !tbaa !143
  %i.dyd = load ptr, ptr %i.d, align 8, !tbaa !87 ; 2 uses
  %i.dye = load ptr, ptr %i.f, align 8, !tbaa !89
  %i.dyf = ptrtoint ptr %i.dye to i64
  %i.dyg = ptrtoint ptr %i.dyd to i64
  %i.dyh = sub i64 %i.dyf, %i.dyg
  %i.dyi = call i64 %i.dyc(ptr noundef %i.dyd, i64 noundef %i.dyh) #27, !inline_history !397
  br label %pm_token_buffer_push_escaped.exit

bb.anq:                                           ; preds = %bb.ano
  %i.dyj = load ptr, ptr %i.d, align 8, !tbaa !87 ; 2 uses
  %i.dyk = load ptr, ptr %i.f, align 8, !tbaa !89
  %i.dyl = ptrtoint ptr %i.dyk to i64
  %i.dym = ptrtoint ptr %i.dyj to i64
  %i.dyn = sub i64 %i.dyl, %i.dym
  %i.dyo = call i64 @pm_encoding_utf_8_char_width(ptr noundef %i.dyj, i64 noundef %i.dyn) #27
  br label %pm_token_buffer_push_escaped.exit

pm_token_buffer_push_escaped.exit:                ; preds = %bb.anp, %bb.anq
  %.0.i.i3126 = phi i64 [ %i.dyi, %bb.anp ], [ %i.dyo, %bb.anq ]
  %i.dyp = call range(i64 1, 0) i64 @llvm.umax.i64(i64 %.0.i.i3126, i64 1) ; 2 uses
  %i.dyq = load ptr, ptr %i.d, align 8, !tbaa !87
  call void @pm_buffer_append_bytes(ptr noundef nonnull %7, ptr noundef %i.dyq, i64 noundef %i.dyp) #27
  %i.dyr = load ptr, ptr %i.d, align 8, !tbaa !87
  %i.dys = getelementptr i8, ptr %i.dyr, i64 %i.dyp
  store ptr %i.dys, ptr %i.d, align 8, !tbaa !87
  br label %parser_lex_callback.exit3131.thread3517

bb.anr:                                           ; preds = %peek.exit3122
  switch i8 %.0.i.i3121, label %bb.anx [
    i8 13, label %bb.ans
    i8 10, label %bb.ant
  ]

bb.ans:                                           ; preds = %bb.anr
  %i.dyt = getelementptr i8, ptr %.val2189, i64 1 ; 4 uses
  store ptr %i.dyt, ptr %i.d, align 8, !tbaa !87
  %i.dyu = icmp ult ptr %i.dyt, %.val2188
  br i1 %i.dyu, label %peek.exit3129, label %peek.exit3129.thread

peek.exit3129:                                    ; preds = %bb.ans
  %i.dyv = load i8, ptr %i.dyt, align 1, !tbaa !83
  %.not1969 = icmp eq i8 %i.dyv, 10
  br i1 %.not1969, label %bb.ant, label %peek.exit3129.thread

peek.exit3129.thread:                             ; preds = %bb.ans, %peek.exit3129
  call void @pm_buffer_append_byte(ptr noundef nonnull %7, i8 noundef zeroext 13) #27
  br label %parser_lex_callback.exit3131.thread3517

bb.ant:                                           ; preds = %peek.exit3129, %bb.anr
  %i.dyw = phi ptr [ %i.dyt, %peek.exit3129 ], [ %.val2189, %bb.anr ] ; 3 uses
  %i.dyx = load i32, ptr %i.dto, align 4, !tbaa !411
  %i.dyy = icmp eq i32 %i.dyx, 2
  br i1 %i.dyy, label %bb.anu, label %parser_lex_callback.exit3131, !llvm.loop !396

bb.anu:                                           ; preds = %bb.ant
  %i.dyz = load ptr, ptr %i.dtr, align 8, !tbaa !153
  %i.dza = icmp eq ptr %i.dyz, null
  br i1 %i.dza, label %bb.anv, label %bb.anw

bb.anv:                                           ; preds = %bb.anu
  %i.dzb = call zeroext i1 @pm_newline_list_append(ptr noundef %i.dts, ptr noundef %i.dyw) #27 ; 0 uses
  br label %bb.anw

bb.anw:                                           ; preds = %bb.anv, %bb.anu
  store ptr %.01836.ph6000, ptr %i.d, align 8, !tbaa !87
  call fastcc void @pm_token_buffer_flush(ptr noundef nonnull %0, ptr noundef %7)
  %i.dzc = getelementptr i8, ptr %i.dyw, i64 1
  store ptr %i.dzc, ptr %i.d, align 8, !tbaa !87
  store i8 1, ptr %i.dpf, align 8, !tbaa !83
  store i32 148, ptr %i.c, align 8, !tbaa !154
  %i.dzd = getelementptr i8, ptr %0, i64 544
  %i.dze = load ptr, ptr %i.dzd, align 8, !tbaa !155 ; 2 uses
  %.not.i3130 = icmp eq ptr %i.dze, null
  br i1 %.not.i3130, label %parser_lex_callback.exit3101, label %parser_lex_callback.exit3101.sink.split

bb.anx:                                           ; preds = %bb.anr
  call fastcc void @escape_read(ptr noundef nonnull %0, ptr noundef nonnull %7, ptr noundef null, i8 noundef zeroext 0)
  br label %parser_lex_callback.exit3131.thread3517

parser_lex_callback.exit3131.thread3517:          ; preds = %pm_token_buffer_push_escaped.exit, %peek.exit3125.thread, %bb.anx, %peek.exit3129.thread
  %i.dzf = load ptr, ptr %i.d, align 8, !tbaa !87 ; 3 uses
  store ptr %i.dzf, ptr %i.dtn, align 8, !tbaa !175
  %i.dzg = load ptr, ptr %i.f, align 8, !tbaa !89
  %i.dzh = ptrtoint ptr %i.dzg to i64
  %i.dzi = ptrtoint ptr %i.dzf to i64
  %i.dzj = sub i64 %i.dzh, %i.dzi
  %i.dzk = call ptr @pm_strpbrk(ptr noundef nonnull %0, ptr noundef %i.dzf, ptr noundef nonnull %i.b, i64 noundef %i.dzj, i1 noundef zeroext true) #27
  br label %.outer.backedge

parser_lex_callback.exit3131:                     ; preds = %bb.ant, %bb.ann
  %.4 = phi ptr [ %.4.pre, %bb.ann ], [ %i.dyw, %bb.ant ] ; 2 uses
  %.11835 = phi i1 [ %.01834.ph6001, %bb.ann ], [ true, %bb.ant ]
  %storemerge3536 = getelementptr i8, ptr %.4, i64 1
  store ptr %storemerge3536, ptr %i.dtn, align 8, !tbaa !175
  br label %.outer.backedge

bb.any:                                           ; preds = %.lr.ph6003
  %i.dzl = call fastcc i32 @lex_interpolation(ptr noundef nonnull %0, ptr noundef %.01836.ph6000) ; 2 uses
  %trunc = trunc nuw i32 %i.dzl to i8
  switch i8 %trunc, label %pm_token_buffer_flush.exit3132 [
    i8 -92, label %parser_lex_callback.exit3134
    i8 -108, label %bb.anz
  ]

bb.anz:                                           ; preds = %bb.any
  %i.dzm = load ptr, ptr %i.dtn, align 8, !tbaa !175 ; 3 uses
  %i.dzn = icmp eq ptr %i.dzm, null
  br i1 %i.dzn, label %bb.aoa, label %bb.aob

bb.aoa:                                           ; preds = %bb.anz
  %i.dzo = getelementptr i8, ptr %0, i64 640
  %i.dzp = load ptr, ptr %i.dpd, align 8, !tbaa !151
  %i.dzq = load ptr, ptr %i.d, align 8, !tbaa !87
  call void @pm_string_shared_init(ptr noundef %i.dzo, ptr noundef %i.dzp, ptr noundef %i.dzq) #27
  br label %pm_token_buffer_flush.exit3132

bb.aob:                                           ; preds = %bb.anz
  %i.dzr = load ptr, ptr %i.d, align 8, !tbaa !87
  %i.dzs = ptrtoint ptr %i.dzr to i64
  %i.dzt = ptrtoint ptr %i.dzm to i64
  %i.dzu = sub i64 %i.dzs, %i.dzt
  call void @pm_buffer_append_bytes(ptr noundef nonnull %7, ptr noundef nonnull %i.dzm, i64 noundef %i.dzu) #27
  %i.dzv = getelementptr i8, ptr %0, i64 640
  %i.dzw = call ptr @pm_buffer_value(ptr noundef nonnull %7) #27
  %i.dzx = call i64 @pm_buffer_length(ptr noundef nonnull %7) #27
  call void @pm_string_owned_init(ptr noundef %i.dzv, ptr noundef %i.dzw, i64 noundef %i.dzx) #27
  br label %pm_token_buffer_flush.exit3132

pm_token_buffer_flush.exit3132:                   ; preds = %bb.any, %bb.aob, %bb.aoa
  store i32 %i.dzl, ptr %i.c, align 8, !tbaa !154
  %i.dzy = getelementptr i8, ptr %0, i64 544
  %i.dzz = load ptr, ptr %i.dzy, align 8, !tbaa !155 ; 2 uses
  %.not.i3133 = icmp eq ptr %i.dzz, null
  br i1 %.not.i3133, label %parser_lex_callback.exit3101, label %parser_lex_callback.exit3101.sink.split

parser_lex_callback.exit3134:                     ; preds = %bb.any
  %i.eaa = load ptr, ptr %i.d, align 8, !tbaa !87 ; 2 uses
  %i.eab = load ptr, ptr %i.f, align 8, !tbaa !89
  %i.eac = ptrtoint ptr %i.eab to i64
  %i.ead = ptrtoint ptr %i.eaa to i64
  %i.eae = sub i64 %i.eac, %i.ead
  %i.eaf = call ptr @pm_strpbrk(ptr noundef %0, ptr noundef %i.eaa, ptr noundef nonnull %i.b, i64 noundef %i.eae, i1 noundef zeroext true) #27
  br label %.outer.backedge

.loopexit4509:                                    ; preds = %.lr.ph6003
  call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 12113, ptr noundef nonnull @__PRETTY_FUNCTION__.parser_lex) #26
  unreachable

.outer.backedge:                                  ; preds = %._crit_edge4532, %peek_at.exit3096.thread, %parser_lex_callback.exit3104, %parser_lex_callback.exit3131.thread3517, %parser_lex_callback.exit3134, %parser_lex_callback.exit3131
  %.01836.ph.be = phi ptr [ %.4, %parser_lex_callback.exit3131 ], [ %i.duc, %._crit_edge4532 ], [ %i.duj, %peek_at.exit3096.thread ], [ %i.dxk, %parser_lex_callback.exit3104 ], [ %i.dzk, %parser_lex_callback.exit3131.thread3517 ], [ %i.eaf, %parser_lex_callback.exit3134 ] ; 2 uses
  %.01834.ph.be = phi i1 [ %.11835, %parser_lex_callback.exit3131 ], [ false, %._crit_edge4532 ], [ false, %peek_at.exit3096.thread ], [ false, %parser_lex_callback.exit3104 ], [ false, %parser_lex_callback.exit3131.thread3517 ], [ false, %parser_lex_callback.exit3134 ]
  %.not1968.peel = icmp eq ptr %.01836.ph.be, null
  br i1 %.not1968.peel, label %.loopexit4502, label %.lr.ph6003, !llvm.loop !396

.loopexit4502:                                    ; preds = %bb.amj, %.outer.backedge, %bb.ami
  %i.eag = load ptr, ptr %i.f, align 8, !tbaa !89
  store ptr %i.eag, ptr %i.d, align 8, !tbaa !87
  call fastcc void @pm_token_buffer_flush(ptr noundef nonnull %0, ptr noundef %7)
  store i32 148, ptr %i.c, align 8, !tbaa !154
  %i.eah = getelementptr i8, ptr %0, i64 544
  %i.eai = load ptr, ptr %i.eah, align 8, !tbaa !155 ; 2 uses
  %.not.i3135 = icmp eq ptr %i.eai, null
  br i1 %.not.i3135, label %parser_lex_callback.exit3101, label %parser_lex_callback.exit3101.sink.split

parser_lex_callback.exit3101.sink.split:          ; preds = %.loopexit4502, %pm_token_buffer_flush.exit3132, %bb.anw, %pm_token_buffer_flush.exit3114, %.critedge2074, %bb.amp
  %.sink5578 = phi ptr [ %i.dze, %bb.anw ], [ %i.dxf, %pm_token_buffer_flush.exit3114 ], [ %i.dvu, %.critedge2074 ], [ %i.dux, %bb.amp ], [ %i.eai, %.loopexit4502 ], [ %i.dzz, %pm_token_buffer_flush.exit3132 ] ; 2 uses
  %i.eaj = getelementptr i8, ptr %.sink5578, i64 8
  %i.eak = load ptr, ptr %i.eaj, align 8, !tbaa !157
  %i.eal = load ptr, ptr %.sink5578, align 8, !tbaa !158
  call void %i.eak(ptr noundef %i.eal, ptr noundef nonnull %0, ptr noundef %i.c) #27
  br label %parser_lex_callback.exit3101

parser_lex_callback.exit3101:                     ; preds = %.loopexit4502, %parser_lex_callback.exit3101.sink.split, %pm_token_buffer_flush.exit3132, %bb.anw, %pm_token_buffer_flush.exit3114, %.critedge2074, %bb.amp
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %parser_lex_callback.exit2967

bb.aoc:                                           ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 12133, ptr noundef nonnull @__PRETTY_FUNCTION__.parser_lex) #26
  unreachable

parser_lex_callback.exit2967:                     ; preds = %parser_lex_callback.exit2948.thread, %parser_lex_ignored_newline.exit2354.thread, %parser_lex_ignored_newline.exit2346.thread, %parser_lex_ignored_newline.exit2338.thread, %parser_lex_ignored_newline.exit2330.thread, %parser_lex_callback.exit2850, %bb.aer, %pm_token_is_numbered_parameter.exit.thread, %parser_lex_callback.exit2948, %lex_at_variable.exit, %lex_mode_pop.exit2900, %bb.vy, %lex_mode_push_string.exit2840, %bb.sl, %bb.sj, %match.exit2807, %match.exit2800.thread, %bb.rx, %bb.ru, %bb.rr, %lex_mode_push_regexp.exit, %peek.exit2769.thread, %bb.rh, %bb.rc, %bb.ra, %bb.qv, %bb.qt, %bb.qr, %bb.qp, %context_p.exit2736, %bb.qf, %peek.exit2710, %bb.pv, %bb.pt, %bb.pq, %bb.po, %bb.pk, %bb.pg, %bb.pe, %bb.ox, %bb.ou, %bb.os, %bb.oo, %bb.om, %bb.ok, %bb.oi, %bb.of, %bb.ob, %bb.nr, %bb.np, %bb.nn, %bb.nl, %lex_question_mark.exit, %lex_mode_push_string.exit2587, %lex_mode_push_string.exit2579, %bb.mc, %bb.lz, %lex_mode_push_string.exit, %match.exit2562.thread, %match.exit2556.thread, %bb.lk, %bb.li, %bb.lg, %bb.kz, %bb.ks, %bb.kp, %bb.jl, %match.exit2486.thread, %bb.jg, %bb.je, %bb.jb, %bb.iu, %bb.is, %bb.iq, %bb.in, %bb.ij, %bb.id, %bb.ib, %bb.hv, %._crit_edge4567, %lex_mode_pop.exit, %bb.hj, %bb.hf, %bb.hd, %bb.gx, %match.exit2396.thread, %bb.gq, %bb.go, %bb.gm, %bb.gi, %bb.gd, %parser_lex_ignored_newline.exit2380, %parser_lex_ignored_newline.exit2368, %parser_lex_ignored_newline.exit2354, %parser_lex_ignored_newline.exit2346, %parser_lex_ignored_newline.exit2338, %parser_lex_ignored_newline.exit2330, %bb.u, %bb.r, %bb.aeb, %bb.qm, %bb.qq, %bb.qs, %bb.qc, %bb.iv, %bb.gc, %bb.fp, %bb.fw, %bb.fk, %bb.ff, %bb.ez, %parser_lex_ignored_newline.exit2328, %bb.v, %parser_lex_ignored_newline.exit, %bb.vz, %bb.sk, %bb.tk, %bb.sm, %bb.sf, %bb.sb, %bb.ry, %bb.rv, %bb.rs, %bb.rp, %bb.rj, %bb.ri, %bb.rd, %bb.rb, %bb.qw, %bb.qu, %bb.pw, %bb.pu, %bb.pr, %bb.pp, %bb.pl, %bb.ph, %bb.pf, %bb.oy, %bb.ov, %bb.ot, %bb.op, %bb.on, %bb.ol, %bb.oj, %bb.og, %bb.oc, %bb.ns, %bb.nq, %bb.no, %bb.nm, %bb.ni, %bb.mn, %bb.mi, %bb.md, %bb.ma, %bb.lx, %bb.ls, %bb.lp, %bb.ll, %bb.lj, %bb.lh, %bb.la, %bb.jm, %bb.kt, %bb.kq, %bb.jk, %bb.jh, %bb.jf, %bb.jc, %peek_at.exit2372.thread, %bb.it, %bb.ir, %bb.io, %bb.ik, %bb.ie, %bb.ic, %bb.hw, %bb.hs, %bb.hr, %bb.hk, %bb.hg, %bb.he, %bb.gy, %bb.gw, %bb.gr, %bb.gp, %bb.gn, %bb.gj, %bb.ge, %bb.xs, %bb.s, %bb.qg, %bb.yt, %bb.amb, %.critedge2068, %bb.alp, %lex_mode_pop.exit3083, %bb.aip, %bb.aio, %bb.agp, %bb.ago, %bb.afd, %bb.afc, %bb.afa, %peek_offset.exit2963.thread, %parser_lex_callback.exit3101, %parser_lex_callback.exit2971, %parser_lex_callback.exit3079, %parser_lex_callback.exit3026
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @parse_statements(ptr noundef %0, i32 noundef range(i32 1, 55) %1, i16 noundef zeroext %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 344        ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %accept2.exit, %bb.a
  %.val.i = load i32, ptr %i.a, align 8, !tbaa !154 ; 3 uses
  switch i32 %.val.i, label %bb.c [
    i32 17, label %accept2.exit
    i32 14, label %accept2.exit
  ]

accept2.exit:                                     ; preds = %bb.b, %bb.b
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %bb.b

bb.c:                                             ; preds = %bb.b
  %i.b = icmp ult i32 %.val.i, 32
  br i1 %i.b, label %context_terminator.exit, label %context_terminator.exit.thread

context_terminator.exit:                          ; preds = %bb.c
  %i.c = zext nneg i32 %1 to i64
  %i.d = getelementptr [4 x i8], ptr @context_terminators, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !31
  %i.f = shl nuw i32 1, %.val.i
  %i.g = and i32 %i.e, %i.f
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %context_terminator.exit.thread, label %pm_void_statements_check.exit

context_terminator.exit.thread:                   ; preds = %bb.c, %context_terminator.exit
  %i.h = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #30 ; 9 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %pm_statements_node_create.exit

bb.d:                                             ; preds = %context_terminator.exit.thread
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !108
  %i.k = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.j, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 48) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_statements_node_create.exit:                   ; preds = %context_terminator.exit.thread
  %i.l = load i32, ptr %0, align 8, !tbaa !109
  %i.m = add i32 %i.l, 1                          ; 2 uses
  store i32 %i.m, ptr %0, align 8, !tbaa !109
  %i.n = getelementptr i8, ptr %0, i64 304
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !86   ; 2 uses
  store i16 140, ptr %i.h, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 %i.m, ptr %.sroa.3.0..sroa_idx.i, align 4, !tbaa !31
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  store ptr %i.o, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !36
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  store ptr %i.o, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !36
  %i.p = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 5 uses
  %.not70 = icmp eq ptr %i.p, null
  br i1 %.not70, label %context_push.exit, label %bb.e

bb.e:                                             ; preds = %pm_statements_node_create.exit
  store i32 %1, ptr %i.p, align 8, !tbaa !31
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store i32 0, ptr %.sroa.2.0..sroa_idx.i, align 4
  %.sroa.3.0..sroa_idx.i50 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.q = getelementptr i8, ptr %0, i64 504        ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !178
  store ptr %i.r, ptr %.sroa.3.0..sroa_idx.i50, align 8, !tbaa !170
  store ptr %i.p, ptr %i.q, align 8, !tbaa !178
  br label %context_push.exit

context_push.exit:                                ; preds = %pm_statements_node_create.exit, %bb.e
  %i.s = add i16 %2, 1
  %i.t = getelementptr i8, ptr %i.h, i64 24       ; 3 uses
  %i.u = getelementptr i8, ptr %i.h, i64 40       ; 2 uses
  %i.v = getelementptr i8, ptr %0, i64 448
  %i.w = getelementptr i8, ptr %0, i64 697        ; 2 uses
  %i.x = zext nneg i32 %1 to i64
  %i.y = getelementptr [4 x i8], ptr @context_terminators, i64 %i.x ; 4 uses
  %i.z = getelementptr i8, ptr %0, i64 472
  %i.aa = getelementptr i8, ptr %0, i64 352
  %i.ab = getelementptr i8, ptr %0, i64 360
  %i.ac = getelementptr i8, ptr %0, i64 320
  %i.ad = getelementptr i8, ptr %0, i64 336
  %i.ae = getelementptr i8, ptr %0, i64 328
  br label %context_terminator.exit59.thread

context_terminator.exit59.thread:                 ; preds = %context_terminator.exit59.thread.backedge, %context_push.exit
  %i.af = tail call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef 2, i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef 40, i16 noundef zeroext %i.s) ; 5 uses
  %i.ag = load i64, ptr %i.t, align 8, !tbaa !103 ; 2 uses
  %.not.i.i = icmp eq i64 %i.ag, 0                ; 2 uses
  %.phi.trans.insert.i.i = getelementptr i8, ptr %i.af, i64 8 ; 2 uses
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !133 ; 2 uses
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.f

bb.f:                                             ; preds = %context_terminator.exit59.thread
  %i.ah = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !121
  %i.ai = icmp ult ptr %.pre.i.i, %i.ah
  br i1 %i.ai, label %._crit_edge.i.i, label %bb.g

._crit_edge.i.i:                                  ; preds = %bb.f, %context_terminator.exit59.thread
  store ptr %.pre.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !121
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i, %bb.f
  %i.aj = getelementptr i8, ptr %i.af, i64 16     ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !134 ; 2 uses
  %i.al = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !122
  %i.am = icmp ugt ptr %i.ak, %i.al
  br i1 %i.am, label %bb.h, label %pm_statements_node_body_update.exit.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.ak, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !122
  br label %pm_statements_node_body_update.exit.i

pm_statements_node_body_update.exit.i:            ; preds = %bb.h, %bb.g
  br i1 %.not.i.i, label %pm_statements_node_body_append.exit, label %bb.i

bb.i:                                             ; preds = %pm_statements_node_body_update.exit.i
  %i.an = load ptr, ptr %i.u, align 8, !tbaa !104
  %i.ao = getelementptr [8 x i8], ptr %i.an, i64 %i.ag
  %i.ap = getelementptr i8, ptr %i.ao, i64 -8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !106
  %i.ar = load i16, ptr %i.aq, align 8, !tbaa !115
  switch i16 %i.ar, label %pm_statements_node_body_append.exit [
    i16 17, label %bb.j
    i16 107, label %bb.j
    i16 124, label %bb.j
    i16 131, label %bb.j
    i16 132, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i, %bb.i, %bb.i, %bb.i
  %.val.i51 = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !133
  %.val11.i = load ptr, ptr %i.aj, align 8, !tbaa !134
  %i.as = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.v, ptr noundef %.val.i51, ptr noundef %.val11.i, i32 noundef range(i32 297, 324) 323) #27 ; 0 uses
  br label %pm_statements_node_body_append.exit

pm_statements_node_body_append.exit:              ; preds = %pm_statements_node_body_update.exit.i, %bb.i, %bb.j
  tail call void @pm_node_list_append(ptr noundef nonnull %i.t, ptr noundef nonnull %i.af) #27
  %i.at = getelementptr i8, ptr %i.af, i64 2      ; 2 uses
  %i.au = load i16, ptr %i.at, align 2, !tbaa !116
  %i.av = or i16 %i.au, 1
  store i16 %i.av, ptr %i.at, align 2, !tbaa !116
  %i.aw = load i8, ptr %i.w, align 1, !tbaa !179, !range !64, !noundef !65
  %i.ax = trunc nuw i8 %i.aw to i1
  %.val48 = load i32, ptr %i.a, align 8, !tbaa !126 ; 7 uses
  br i1 %i.ax, label %bb.k, label %bb.l

bb.k:                                             ; preds = %pm_statements_node_body_append.exit
  %i.ay = icmp ult i32 %.val48, 32
  br i1 %i.ay, label %context_terminator.exit52, label %context_terminator.exit52.thread

context_terminator.exit52:                        ; preds = %bb.k
  %i.az = load i32, ptr %i.y, align 4, !tbaa !31
  %i.ba = shl nuw i32 1, %.val48
  %i.bb = and i32 %i.az, %i.ba
  %.not74 = icmp eq i32 %i.bb, 0
  br i1 %.not74, label %context_terminator.exit52.thread, label %context_terminator.exit52.thread.sink.split
end_hunk_3
begin_hunk_4_@lex_mode_push_list_eof:bb.a
  %i.j = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.k = getelementptr [64 x i8], ptr %i.j, i64 %i.f ; 5 uses
  store i32 4, ptr %i.k, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %.sroa.6.0..sroa_idx, i8 0, i64 15, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(11) @.str.58, i64 11, i1 false)
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %.sroa.10.0..sroa_idx, i8 0, i64 26, i1 false)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store ptr %i.c, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !34
  %i.l = load i64, ptr %i.d, align 8, !tbaa !92
  %i.m = getelementptr [64 x i8], ptr %i.j, i64 %i.l
  store ptr %i.m, ptr %i.b, align 8, !tbaa !93
  br label %lex_mode_push_list.exit

lex_mode_push_list.exit:                          ; preds = %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nofree nounwind sspstrong willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc void @lex_mode_push_string_eof(ptr noundef initializes((672, 680)) %0) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 672
  store ptr null, ptr %i.a, align 8, !tbaa !168
  %i.b = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !93   ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 296        ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !92
  %i.f = add i64 %i.e, 1                          ; 3 uses
  store i64 %i.f, ptr %i.d, align 8, !tbaa !92
  %i.g = icmp ugt i64 %i.f, 3
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28 ; 7 uses
  store ptr %i.h, ptr %i.b, align 8, !tbaa !93
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %lex_mode_push_string.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 6, ptr %i.h, align 8
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %.sroa.10.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx2, i8 0, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(7) %.sroa.10.0..sroa_idx12, ptr noundef nonnull align 1 dereferenceable(7) @.str.56, i64 7, i1 false)
  %.sroa.11.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.h, i64 27
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %.sroa.11.0..sroa_idx13, i8 0, i64 29, i1 false)
  %.sroa.5.0..sroa_idx18.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store ptr %i.c, ptr %.sroa.5.0..sroa_idx18.i, align 8, !tbaa !34
  br label %lex_mode_push_string.exit

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.k = getelementptr [64 x i8], ptr %i.j, i64 %i.f ; 5 uses
  store i32 6, ptr %i.k, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx, i8 0, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(7) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) @.str.56, i64 7, i1 false)
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 27
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %.sroa.11.0..sroa_idx, i8 0, i64 29, i1 false)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store ptr %i.c, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !34
  %i.l = load i64, ptr %i.d, align 8, !tbaa !92
  %i.m = getelementptr [64 x i8], ptr %i.j, i64 %i.l
  store ptr %i.m, ptr %i.b, align 8, !tbaa !93
  br label %lex_mode_push_string.exit

lex_mode_push_string.exit:                        ; preds = %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc i64 @char_is_identifier_start(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #8 {
bb.a:
  %i.a = icmp slt i64 %2, 1
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 699
  %i.c = load i8, ptr %i.b, align 1, !tbaa !63, !range !64, !noundef !65
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 520        ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !60
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !142
  %i.i = tail call i64 %i.h(ptr noundef %1, i64 noundef %2) #27 ; 2 uses
  %.not20 = icmp eq i64 %i.i, 0
  br i1 %.not20, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.j = load i8, ptr %1, align 1, !tbaa !83      ; 2 uses
  %i.k = icmp eq i8 %i.j, 95
  br i1 %i.k, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = icmp slt i8 %i.j, 0
  br i1 %i.l, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !60
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !143
  %i.o = tail call i64 %i.n(ptr noundef nonnull %1, i64 noundef %2) #27
  br label %bb.j

bb.g:                                             ; preds = %bb.b
  %i.p = load i8, ptr %1, align 1, !tbaa !83      ; 3 uses
  %i.q = icmp sgt i8 %i.p, -1
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = zext nneg i8 %i.p to i64
  %i.s = getelementptr i8, ptr @pm_encoding_unicode_table, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !83
  %.not = trunc i8 %i.t to i1
  %i.u = icmp eq i8 %i.p, 95
  %narrow = or i1 %i.u, %.not
  %i.v = zext i1 %narrow to i64
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.w = tail call i64 @pm_encoding_utf_8_char_width(ptr noundef nonnull %1, i64 noundef %2) #27
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.c, %bb.d, %bb.e, %bb.a, %bb.i, %bb.h
  %.1 = phi i64 [ %i.w, %bb.i ], [ 0, %bb.a ], [ %i.v, %bb.h ], [ 1, %bb.d ], [ %i.i, %bb.c ], [ %i.o, %bb.f ], [ 0, %bb.e ]
  ret i64 %.1
}

declare i64 @pm_strspn_whitespace_newlines(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

declare ptr @pm_strpbrk(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @pm_token_buffer_flush(ptr noundef %0, ptr noundef nonnull %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !175  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 640
  %i.e = getelementptr i8, ptr %0, i64 352
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !151
  %i.g = getelementptr i8, ptr %0, i64 360
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !87
  tail call void @pm_string_shared_init(ptr noundef %i.d, ptr noundef %i.f, ptr noundef %i.h) #27
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 360
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !87
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.b to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @pm_buffer_append_bytes(ptr noundef nonnull %1, ptr noundef nonnull %i.b, i64 noundef %i.m) #27
  %i.n = getelementptr i8, ptr %0, i64 640
  %i.o = tail call ptr @pm_buffer_value(ptr noundef nonnull %1) #27
  %i.p = tail call i64 @pm_buffer_length(ptr noundef nonnull %1) #27
  tail call void @pm_string_owned_init(ptr noundef %i.n, ptr noundef %i.o, i64 noundef %i.p) #27
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @pm_token_buffer_copy(ptr noundef %0, ptr noundef nonnull %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 640
  %i.b = tail call ptr @pm_buffer_value(ptr noundef nonnull %1) #27
  %i.c = tail call i64 @pm_buffer_length(ptr noundef nonnull %1) #27
  tail call void @pm_string_owned_init(ptr noundef %i.a, ptr noundef %i.b, i64 noundef %i.c) #27
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @escape_read(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext range(i8 0, 12) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 312        ; 11 uses
  %i.b = getelementptr i8, ptr %0, i64 360        ; 90 uses
  %.val5061049 = load ptr, ptr %i.a, align 8, !tbaa !89 ; 3 uses
  %.val5071050 = load ptr, ptr %i.b, align 8, !tbaa !87 ; 3 uses
  %i.c = icmp ult ptr %.val5071050, %.val5061049
  br i1 %i.c, label %peek.exit.lr.ph, label %.thread710

peek.exit.lr.ph:                                  ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 352        ; 28 uses
  %i.e = getelementptr i8, ptr %0, i64 472        ; 39 uses
  br label %peek.exit

peek.exit:                                        ; preds = %peek.exit.lr.ph, %tailrecurse.backedge
  %.val5061313 = phi ptr [ %.val5061049, %peek.exit.lr.ph ], [ %.val506, %tailrecurse.backedge ] ; 12 uses
  %.val5071053 = phi ptr [ %.val5071050, %peek.exit.lr.ph ], [ %.val507, %tailrecurse.backedge ] ; 25 uses
  %.tr7271051 = phi i8 [ %3, %peek.exit.lr.ph ], [ %i.qq, %tailrecurse.backedge ] ; 74 uses
  %i.f = load i8, ptr %.val5071053, align 1, !tbaa !83 ; 4 uses
  switch i8 %i.f, label %peek_offset.exit665.thread [
    i8 92, label %bb.b
    i8 39, label %bb.i
    i8 97, label %bb.p
    i8 98, label %bb.w
    i8 101, label %bb.ad
    i8 102, label %bb.ak
    i8 110, label %bb.ar
    i8 114, label %bb.ay
    i8 115, label %bb.bf
    i8 116, label %bb.bm
    i8 118, label %bb.bt
    i8 48, label %bb.ca
    i8 49, label %bb.ca
    i8 50, label %bb.ca
    i8 51, label %bb.ca
    i8 52, label %bb.ca
    i8 53, label %bb.ca
    i8 54, label %bb.ca
    i8 55, label %bb.ca
    i8 120, label %bb.cm
    i8 117, label %bb.cx
    i8 99, label %bb.eh
    i8 67, label %bb.es
    i8 77, label %bb.fe
    i8 13, label %bb.fp
  ]

bb.b:                                             ; preds = %peek.exit
  %i.g = getelementptr i8, ptr %.val5071053, i64 1
  store ptr %i.g, ptr %i.b, align 8, !tbaa !87
  %i.h = and i8 %.tr7271051, 1
  %.not.i = icmp eq i8 %i.h, 0
  %spec.select.i = select i1 %.not.i, i8 92, i8 28
  %i.i = shl i8 %.tr7271051, 6                    ; 2 uses
  %i.j = and i8 %i.i, -128
  %.1.i = or disjoint i8 %spec.select.i, %i.j     ; 2 uses
  %.not.i512 = icmp samesign ult i8 %.tr7271051, 8
  br i1 %.not.i512, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = zext i8 %.1.i to i32
  tail call void (ptr, ptr, ...) @pm_buffer_append_format(ptr noundef %2, ptr noundef nonnull @.str.98, i32 noundef %i.k) #27
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = icmp slt i8 %i.i, 0
  br i1 %i.l, label %bb.e, label %escape_write_byte.exit

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %0, i64 672        ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !168
  %i.o = icmp eq ptr %i.n, @pm_encodings
  br i1 %i.o, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr i8, ptr %0, i64 520
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !60   ; 2 uses
  %.not12.i.i = icmp eq ptr %i.q, @pm_encodings
  br i1 %.not12.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !151
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.t = getelementptr i8, ptr %i.q, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !190
  %i.v = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.e, ptr noundef %i.r, ptr noundef %i.s, i32 noundef 187, ptr noundef %i.u) #27 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.w = getelementptr i8, ptr %0, i64 520
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !60
  store ptr %i.x, ptr %i.m, align 8, !tbaa !168
  br label %escape_write_byte.exit

escape_write_byte.exit:                           ; preds = %bb.d, %bb.h
  tail call void @pm_buffer_append_byte(ptr noundef %1, i8 noundef zeroext %.1.i) #27
  br label %.critedge480

bb.i:                                             ; preds = %peek.exit
  %i.y = getelementptr i8, ptr %.val5071053, i64 1
  store ptr %i.y, ptr %i.b, align 8, !tbaa !87
  %i.z = and i8 %.tr7271051, 1
  %.not.i513 = icmp eq i8 %i.z, 0
  %spec.select.i514 = select i1 %.not.i513, i8 39, i8 7
  %i.aa = shl i8 %.tr7271051, 6                   ; 2 uses
  %i.ab = and i8 %i.aa, -128
  %.1.i515 = or disjoint i8 %spec.select.i514, %i.ab ; 2 uses
  %.not.i516 = icmp samesign ult i8 %.tr7271051, 8
  br i1 %.not.i516, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = zext i8 %.1.i515 to i32
  tail call void (ptr, ptr, ...) @pm_buffer_append_format(ptr noundef %2, ptr noundef nonnull @.str.98, i32 noundef %i.ac) #27
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ad = icmp slt i8 %i.aa, 0
  br i1 %i.ad, label %bb.l, label %escape_write_byte.exit518

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr i8, ptr %0, i64 672       ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !168
  %i.ag = icmp eq ptr %i.af, @pm_encodings
  br i1 %i.ag, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ah = getelementptr i8, ptr %0, i64 520
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !60 ; 2 uses
  %.not12.i.i517 = icmp eq ptr %i.ai, @pm_encodings
  br i1 %.not12.i.i517, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = load ptr, ptr %i.d, align 8, !tbaa !151
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.al = getelementptr i8, ptr %i.ai, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !190
  %i.an = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.e, ptr noundef %i.aj, ptr noundef %i.ak, i32 noundef 187, ptr noundef %i.am) #27 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %i.ao = getelementptr i8, ptr %0, i64 520
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !60
  store ptr %i.ap, ptr %i.ae, align 8, !tbaa !168
  br label %escape_write_byte.exit518

escape_write_byte.exit518:                        ; preds = %bb.k, %bb.o
  tail call void @pm_buffer_append_byte(ptr noundef %1, i8 noundef zeroext %.1.i515) #27
  br label %.critedge480

bb.p:                                             ; preds = %peek.exit
  %i.aq = getelementptr i8, ptr %.val5071053, i64 1
  store ptr %i.aq, ptr %i.b, align 8, !tbaa !87
  %i.ar = shl i8 %.tr7271051, 6                   ; 2 uses
  %i.as = and i8 %i.ar, -128
  %.1.i521 = or disjoint i8 %i.as, 7              ; 2 uses
  %.not.i522 = icmp samesign ult i8 %.tr7271051, 8
  br i1 %.not.i522, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.at = zext i8 %.1.i521 to i32
  tail call void (ptr, ptr, ...) @pm_buffer_append_format(ptr noundef %2, ptr noundef nonnull @.str.98, i32 noundef %i.at) #27
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.au = icmp slt i8 %i.ar, 0
  br i1 %i.au, label %bb.s, label %escape_write_byte.exit524

bb.s:                                             ; preds = %bb.r
  %i.av = getelementptr i8, ptr %0, i64 672       ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !168
  %i.ax = icmp eq ptr %i.aw, @pm_encodings
  br i1 %i.ax, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.ay = getelementptr i8, ptr %0, i64 520
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !60 ; 2 uses
  %.not12.i.i523 = icmp eq ptr %i.az, @pm_encodings
  br i1 %.not12.i.i523, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ba = load ptr, ptr %i.d, align 8, !tbaa !151
  %i.bb = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.bc = getelementptr i8, ptr %i.az, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !190
  %i.be = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.e, ptr noundef %i.ba, ptr noundef %i.bb, i32 noundef 187, ptr noundef %i.bd) #27 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %i.bf = getelementptr i8, ptr %0, i64 520
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !60
  store ptr %i.bg, ptr %i.av, align 8, !tbaa !168
  br label %escape_write_byte.exit524

escape_write_byte.exit524:                        ; preds = %bb.r, %bb.v
  tail call void @pm_buffer_append_byte(ptr noundef %1, i8 noundef zeroext %.1.i521) #27
  br label %.critedge480

bb.w:                                             ; preds = %peek.exit
  %i.bh = getelementptr i8, ptr %.val5071053, i64 1
  store ptr %i.bh, ptr %i.b, align 8, !tbaa !87
  %i.bi = shl i8 %.tr7271051, 6                   ; 2 uses
  %i.bj = and i8 %i.bi, -128
  %.1.i527 = or disjoint i8 %i.bj, 8              ; 2 uses
  %.not.i528 = icmp samesign ult i8 %.tr7271051, 8
  br i1 %.not.i528, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bk = zext i8 %.1.i527 to i32
  tail call void (ptr, ptr, ...) @pm_buffer_append_format(ptr noundef %2, ptr noundef nonnull @.str.98, i32 noundef %i.bk) #27
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bl = icmp slt i8 %i.bi, 0
  br i1 %i.bl, label %bb.z, label %escape_write_byte.exit530

bb.z:                                             ; preds = %bb.y
  %i.bm = getelementptr i8, ptr %0, i64 672       ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !168
  %i.bo = icmp eq ptr %i.bn, @pm_encodings
end_hunk_4
begin_hunk_5_@escape_read:bb.a
  %.1.i637 = or disjoint i8 %i.sw, 9
  tail call fastcc void @escape_write_byte(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %.tr7271051, i8 noundef zeroext %.1.i637)
  br label %.critedge480

bb.fc:                                            ; preds = %peek.exit620
  %i.sx = icmp sgt i8 %i.sf, -1
  br i1 %i.sx, label %char_is_ascii_printable.exit638, label %char_is_ascii_printable.exit638.thread

char_is_ascii_printable.exit638:                  ; preds = %bb.ex, %bb.fc
  %.0.i.i619694697 = phi i8 [ %i.sf, %bb.fc ], [ 0, %bb.ex ] ; 2 uses
  %i.sy = zext nneg i8 %.0.i.i619694697 to i64
  %i.sz = getelementptr i8, ptr @ascii_printable_chars, i64 %i.sy
  %i.ta = load i8, ptr %i.sz, align 1, !tbaa !39, !range !64, !noundef !65
  %i.tb = trunc nuw i8 %i.ta to i1
  br i1 %i.tb, label %bb.fd, label %char_is_ascii_printable.exit638.thread

char_is_ascii_printable.exit638.thread:           ; preds = %bb.fc, %char_is_ascii_printable.exit638
  %i.tc = getelementptr i8, ptr %0, i64 520
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !60
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !143
  %i.tf = ptrtoint ptr %.val5061311 to i64
  %i.tg = ptrtoint ptr %i.sa to i64
  %i.th = sub i64 %i.tf, %i.tg
  %i.ti = tail call i64 %i.te(ptr noundef %i.sa, i64 noundef %i.th) #27
  %i.tj = load ptr, ptr %i.d, align 8, !tbaa !151
  %i.tk = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.tl = getelementptr i8, ptr %i.tk, i64 %i.ti
  %i.tm = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.e, ptr noundef %i.tj, ptr noundef %i.tl, i32 noundef 77) #27 ; 0 uses
  br label %.critedge480

bb.fd:                                            ; preds = %char_is_ascii_printable.exit638
  %i.tn = getelementptr i8, ptr %.val489, i64 2
  store ptr %i.tn, ptr %i.b, align 8, !tbaa !87
  %i.to = and i8 %.0.i.i619694697, 31
  %i.tp = shl i8 %.tr7271051, 6
  %i.tq = and i8 %i.tp, -128
  %.1.i641 = or disjoint i8 %i.to, %i.tq
  tail call fastcc void @escape_write_byte(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %.tr7271051, i8 noundef zeroext %.1.i641)
  br label %.critedge480

bb.fe:                                            ; preds = %peek.exit
  %i.tr = getelementptr i8, ptr %.val5071053, i64 1 ; 3 uses
  store ptr %i.tr, ptr %i.b, align 8, !tbaa !87
  %i.ts = and i8 %.tr7271051, 2
  %.not = icmp eq i8 %i.ts, 0
  br i1 %.not, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.tt = load ptr, ptr %i.d, align 8, !tbaa !151
  %i.tu = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.e, ptr noundef %i.tt, ptr noundef %i.tr, i32 noundef 81) #27 ; 0 uses
  %.val484.pre = load ptr, ptr %i.a, align 8, !tbaa !89
  %.val485.pre = load ptr, ptr %i.b, align 8, !tbaa !87
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  %.val5061315 = phi ptr [ %.val484.pre, %bb.ff ], [ %.val5061313, %bb.fe ] ; 8 uses
  %.val485 = phi ptr [ %.val485.pre, %bb.ff ], [ %i.tr, %bb.fe ] ; 10 uses
  %i.tv = icmp ult ptr %.val485, %.val5061315
  br i1 %i.tv, label %peek.exit643, label %peek.exit643.thread

peek.exit643:                                     ; preds = %bb.fg
  %i.tw = load i8, ptr %.val485, align 1, !tbaa !83
  %.not463 = icmp eq i8 %i.tw, 45
  br i1 %.not463, label %bb.fh, label %peek.exit643.thread

peek.exit643.thread:                              ; preds = %bb.fg, %peek.exit643
  %i.tx = getelementptr i8, ptr %0, i64 520
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !60
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !143
  %i.ua = ptrtoint ptr %.val5061315 to i64
  %i.ub = ptrtoint ptr %.val485 to i64
  %i.uc = sub i64 %i.ua, %i.ub
  %i.ud = tail call i64 %i.tz(ptr noundef %.val485, i64 noundef %i.uc) #27
  %i.ue = load ptr, ptr %i.d, align 8, !tbaa !151
  %i.uf = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.ug = getelementptr i8, ptr %i.uf, i64 %i.ud
  %i.uh = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.e, ptr noundef %i.ue, ptr noundef %i.ug, i32 noundef 80) #27 ; 0 uses
  br label %.critedge480

bb.fh:                                            ; preds = %peek.exit643
  %i.ui = getelementptr i8, ptr %.val485, i64 1   ; 7 uses
  store ptr %i.ui, ptr %i.b, align 8, !tbaa !87
  %i.uj = icmp eq ptr %i.ui, %.val5061315
  br i1 %i.uj, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  %i.uk = load ptr, ptr %i.d, align 8, !tbaa !151
  %i.ul = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.e, ptr noundef %i.uk, ptr noundef %i.ui, i32 noundef 80) #27 ; 0 uses
  br label %.critedge480

bb.fj:                                            ; preds = %bb.fh
  %i.um = icmp ult ptr %i.ui, %.val5061315
  br i1 %i.um, label %peek.exit645, label %char_is_ascii_printable.exit660

peek.exit645:                                     ; preds = %bb.fj
  %i.un = load i8, ptr %i.ui, align 1, !tbaa !83  ; 3 uses
  switch i8 %i.un, label %bb.fn [
    i8 92, label %bb.fk
    i8 32, label %bb.fl
    i8 9, label %bb.fm
  ]

bb.fk:                                            ; preds = %peek.exit645
  %i.uo = getelementptr i8, ptr %.val485, i64 2   ; 6 uses
  store ptr %i.uo, ptr %i.b, align 8, !tbaa !87
  %i.up = icmp ult ptr %i.uo, %.val5061315
  br i1 %i.up, label %peek.exit.i648, label %tailrecurse.backedge

peek.exit.i648:                                   ; preds = %bb.fk
  %i.uq = load i8, ptr %i.uo, align 1, !tbaa !83
  %i.ur = icmp eq i8 %i.uq, 117
  br i1 %i.ur, label %match.exit649, label %peek.exit.i652

peek.exit.i652:                                   ; preds = %peek.exit.i648
  %i.us = load i8, ptr %i.uo, align 1, !tbaa !83
  %i.ut = icmp eq i8 %i.us, 85
  br i1 %i.ut, label %match.exit649, label %tailrecurse.backedge

match.exit649:                                    ; preds = %peek.exit.i652, %peek.exit.i648
  %storemerge722 = getelementptr i8, ptr %.val485, i64 3 ; 2 uses
  store ptr %storemerge722, ptr %i.b, align 8, !tbaa !87
  %i.uu = load ptr, ptr %i.d, align 8, !tbaa !151
  %i.uv = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.e, ptr noundef %i.uu, ptr noundef %storemerge722, i32 noundef 149) #27 ; 0 uses
  br label %.critedge480

bb.fl:                                            ; preds = %peek.exit645
  %i.uw = getelementptr i8, ptr %.val485, i64 2
  store ptr %i.uw, ptr %i.b, align 8, !tbaa !87
  tail call fastcc void @escape_read_warn(ptr noundef nonnull %0, i8 noundef zeroext %.tr7271051, i8 noundef zeroext 2, ptr noundef nonnull @.str.99)
  %i.ux = shl i8 %.tr7271051, 5
  %i.uy = and i8 %i.ux, 32
  %.1.i656 = xor i8 %i.uy, -96
  tail call fastcc void @escape_write_byte(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %.tr7271051, i8 noundef zeroext %.1.i656)
  br label %.critedge480

bb.fm:                                            ; preds = %peek.exit645
  %i.uz = getelementptr i8, ptr %.val485, i64 2
  store ptr %i.uz, ptr %i.b, align 8, !tbaa !87
  %i.va = and i8 %.tr7271051, 14
  tail call fastcc void @escape_read_warn(ptr noundef nonnull %0, i8 noundef zeroext %i.va, i8 noundef zeroext 2, ptr noundef nonnull @.str.100)
  tail call fastcc void @escape_write_byte(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %.tr7271051, i8 noundef zeroext -119)
  br label %.critedge480

bb.fn:                                            ; preds = %peek.exit645
  %i.vb = icmp sgt i8 %i.un, -1
  br i1 %i.vb, label %char_is_ascii_printable.exit660, label %char_is_ascii_printable.exit660.thread

char_is_ascii_printable.exit660:                  ; preds = %bb.fj, %bb.fn
  %.0.i.i644703706 = phi i8 [ %i.un, %bb.fn ], [ 0, %bb.fj ] ; 3 uses
  %i.vc = zext nneg i8 %.0.i.i644703706 to i64
  %i.vd = getelementptr i8, ptr @ascii_printable_chars, i64 %i.vc
  %i.ve = load i8, ptr %i.vd, align 1, !tbaa !39, !range !64, !noundef !65
  %i.vf = trunc nuw i8 %i.ve to i1
  br i1 %i.vf, label %bb.fo, label %char_is_ascii_printable.exit660.thread

char_is_ascii_printable.exit660.thread:           ; preds = %bb.fn, %char_is_ascii_printable.exit660
  %i.vg = getelementptr i8, ptr %0, i64 520
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !60
  %i.vi = load ptr, ptr %i.vh, align 8, !tbaa !143
  %i.vj = ptrtoint ptr %.val5061315 to i64
  %i.vk = ptrtoint ptr %i.ui to i64
  %i.vl = sub i64 %i.vj, %i.vk
  %i.vm = tail call i64 %i.vi(ptr noundef %i.ui, i64 noundef %i.vl) #27
  %i.vn = load ptr, ptr %i.d, align 8, !tbaa !151
  %i.vo = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.vp = getelementptr i8, ptr %i.vo, i64 %i.vm
  %i.vq = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.e, ptr noundef %i.vn, ptr noundef %i.vp, i32 noundef 80) #27 ; 0 uses
  br label %.critedge480

bb.fo:                                            ; preds = %char_is_ascii_printable.exit660
  %i.vr = getelementptr i8, ptr %.val485, i64 2
  store ptr %i.vr, ptr %i.b, align 8, !tbaa !87
  %i.vs = and i8 %.tr7271051, 1
  %.not.i661 = icmp eq i8 %i.vs, 0
  %i.vt = and i8 %.0.i.i644703706, 31
  %spec.select.i662 = select i1 %.not.i661, i8 %.0.i.i644703706, i8 %i.vt
  %.1.i663 = or disjoint i8 %spec.select.i662, -128
  tail call fastcc void @escape_write_byte(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %.tr7271051, i8 noundef zeroext %.1.i663)
  br label %.critedge480

bb.fp:                                            ; preds = %peek.exit
  %i.vu = getelementptr i8, ptr %.val5071053, i64 1 ; 2 uses
  %i.vv = icmp ult ptr %i.vu, %.val5061313
  br i1 %i.vv, label %peek_offset.exit665, label %peek_offset.exit665.thread

peek_offset.exit665:                              ; preds = %bb.fp
  %i.vw = load i8, ptr %i.vu, align 1, !tbaa !83
  %i.vx = icmp eq i8 %i.vw, 10
  br i1 %i.vx, label %bb.fq, label %peek_offset.exit665.thread

bb.fq:                                            ; preds = %peek_offset.exit665
  %i.vy = getelementptr i8, ptr %.val5071053, i64 2
  store ptr %i.vy, ptr %i.b, align 8, !tbaa !87
  %i.vz = shl i8 %.tr7271051, 6
  %i.wa = and i8 %i.vz, -128
  %.1.i668 = or disjoint i8 %i.wa, 10
  tail call fastcc void @escape_write_byte_encoded(ptr noundef nonnull %0, ptr noundef %1, i8 noundef zeroext %.1.i668)
  br label %.critedge480

peek_offset.exit665.thread:                       ; preds = %peek.exit, %bb.fp, %peek_offset.exit665
  %i.wb = and i8 %.tr7271051, 3
  %.not478 = icmp eq i8 %i.wb, 0
  br i1 %.not478, label %.thread717, label %bb.fr

.thread710:                                       ; preds = %tailrecurse.backedge, %bb.a
  %.tr727.lcssa = phi i8 [ %3, %bb.a ], [ %i.qq, %tailrecurse.backedge ]
  %.val506.lcssa = phi ptr [ %.val5061049, %bb.a ], [ %.val506, %tailrecurse.backedge ]
  %.val507.lcssa = phi ptr [ %.val5071050, %bb.a ], [ %.val507, %tailrecurse.backedge ] ; 2 uses
  %i.wc = and i8 %.tr727.lcssa, 3
  %.not478712 = icmp eq i8 %i.wc, 0
  br i1 %.not478712, label %.thread718, label %char_is_ascii_printable.exit669.thread

bb.fr:                                            ; preds = %peek_offset.exit665.thread
  %i.wd = icmp sgt i8 %i.f, -1
  br i1 %i.wd, label %char_is_ascii_printable.exit669, label %char_is_ascii_printable.exit669.thread

char_is_ascii_printable.exit669:                  ; preds = %bb.fr
  %i.we = zext nneg i8 %i.f to i64
  %i.wf = getelementptr i8, ptr @ascii_printable_chars, i64 %i.we
  %i.wg = load i8, ptr %i.wf, align 1, !tbaa !39, !range !64, !noundef !65
  %i.wh = trunc nuw i8 %i.wg to i1
  br i1 %i.wh, label %.thread717, label %char_is_ascii_printable.exit669.thread

char_is_ascii_printable.exit669.thread:           ; preds = %.thread710, %bb.fr, %char_is_ascii_printable.exit669
  %.val506910 = phi ptr [ %.val506.lcssa, %.thread710 ], [ %.val5061313, %bb.fr ], [ %.val5061313, %char_is_ascii_printable.exit669 ]
  %.val507831 = phi ptr [ %.val507.lcssa, %.thread710 ], [ %.val5071053, %bb.fr ], [ %.val5071053, %char_is_ascii_printable.exit669 ] ; 2 uses
  %i.wi = getelementptr i8, ptr %0, i64 520
  %i.wj = load ptr, ptr %i.wi, align 8, !tbaa !60
  %i.wk = load ptr, ptr %i.wj, align 8, !tbaa !143
  %i.wl = ptrtoint ptr %.val506910 to i64
  %i.wm = ptrtoint ptr %.val507831 to i64
  %i.wn = sub i64 %i.wl, %i.wm
  %i.wo = tail call i64 %i.wk(ptr noundef %.val507831, i64 noundef %i.wn) #27
  %i.wp = getelementptr i8, ptr %0, i64 352
  %i.wq = load ptr, ptr %i.wp, align 8, !tbaa !151
  %i.wr = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.ws = getelementptr i8, ptr %i.wr, i64 %i.wo
  %i.wt = getelementptr i8, ptr %0, i64 472
  %i.wu = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.wt, ptr noundef %i.wq, ptr noundef %i.ws, i32 noundef 80) #27 ; 0 uses
  br label %.critedge480

.thread717:                                       ; preds = %char_is_ascii_printable.exit669, %peek_offset.exit665.thread
  tail call fastcc void @escape_write_escape_encoded(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %.tr7271051)
  br label %.critedge480

.thread718:                                       ; preds = %.thread710
  %i.wv = getelementptr i8, ptr %0, i64 352
  %i.ww = load ptr, ptr %i.wv, align 8, !tbaa !151
  %i.wx = getelementptr i8, ptr %0, i64 472
  %i.wy = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.wx, ptr noundef %i.ww, ptr noundef %.val507.lcssa, i32 noundef 149) #27 ; 0 uses
  br label %.critedge480

.critedge480:                                     ; preds = %.thread, %.thread717, %.thread718, %match.exit649, %bb.fl, %bb.fm, %char_is_ascii_printable.exit660.thread, %bb.fo, %bb.ey, %match.exit627, %bb.fa, %bb.fb, %char_is_ascii_printable.exit638.thread, %bb.fd, %bb.em, %match.exit, %bb.eo, %bb.ep, %char_is_ascii_printable.exit.thread, %bb.er, %bb.dm, %bb.dl, %bb.dw, %bb.dx, %bb.ea, %bb.dz, %bb.ef, %bb.eg, %bb.ed, %bb.cy, %bb.cv, %bb.cw, %char_is_ascii_printable.exit669.thread, %bb.fq, %bb.fi, %peek.exit643.thread, %bb.ew, %peek.exit618.thread, %bb.ek, %escape_write_byte.exit582, %escape_write_byte.exit572, %escape_write_byte.exit566, %escape_write_byte.exit560, %escape_write_byte.exit554, %escape_write_byte.exit548, %escape_write_byte.exit542, %escape_write_byte.exit536, %escape_write_byte.exit530, %escape_write_byte.exit524, %escape_write_byte.exit518, %escape_write_byte.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @pm_token_buffer_push_escaped(ptr noundef nonnull %0, ptr nofree noundef captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 699
  %i.b = load i8, ptr %i.a, align 1, !tbaa !63, !range !64, !noundef !65
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 520
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !60
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !143
  %i.g = getelementptr i8, ptr %1, i64 360
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !87   ; 2 uses
  %i.i = getelementptr i8, ptr %1, i64 312
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !89
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = tail call i64 %i.f(ptr noundef %i.h, i64 noundef %i.m) #27, !inline_history !10
  br label %parser_char_width.exit

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr i8, ptr %1, i64 360
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !87   ; 2 uses
  %i.q = getelementptr i8, ptr %1, i64 312
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !89
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = tail call i64 @pm_encoding_utf_8_char_width(ptr noundef %i.p, i64 noundef %i.u) #27
  br label %parser_char_width.exit

parser_char_width.exit:                           ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.n, %bb.b ], [ %i.v, %bb.c ]
  %i.w = tail call range(i64 1, 0) i64 @llvm.umax.i64(i64 %.0.i, i64 1) ; 2 uses
  %i.x = getelementptr i8, ptr %1, i64 360        ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !87
  tail call void @pm_buffer_append_bytes(ptr noundef nonnull %0, ptr noundef %i.y, i64 noundef %i.w) #27
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !87
  %i.aa = getelementptr i8, ptr %i.z, i64 %i.w
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !87
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 48, 165) i32 @lex_interpolation(ptr noundef %0, ptr noundef nonnull %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 1          ; 10 uses
  %i.b = getelementptr i8, ptr %0, i64 312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !89   ; 7 uses
  %.not = icmp ult ptr %i.a, %i.c
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 360
  store ptr %i.a, ptr %i.d, align 8, !tbaa !87
  br label %bb.av

bb.c:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.a, align 1, !tbaa !83
  switch i8 %i.e, label %bb.au [
    i8 64, label %bb.d
    i8 36, label %bb.t
    i8 123, label %bb.ao
  ]

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %1, i64 2          ; 3 uses
  %.not79 = icmp ult ptr %i.f, %i.c
  br i1 %.not79, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr i8, ptr %0, i64 360
  store ptr %i.a, ptr %i.g, align 8, !tbaa !87
  br label %bb.av

bb.f:                                             ; preds = %bb.d
  %i.h = load i8, ptr %i.f, align 1, !tbaa !83
  %i.i = icmp eq i8 %i.h, 64
  %i.j = getelementptr i8, ptr %1, i64 3          ; 2 uses
  %i.k = icmp ult ptr %i.j, %i.c
  %or.cond = and i1 %i.k, %i.i
  %.066 = select i1 %or.cond, ptr %i.j, ptr %i.f  ; 6 uses
  %i.l = ptrtoint ptr %i.c to i64
  %i.m = ptrtoint ptr %.066 to i64
  %i.n = sub i64 %i.l, %i.m                       ; 4 uses
  %i.o = icmp slt i64 %i.n, 1
  br i1 %i.o, label %char_is_identifier_start.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr i8, ptr %0, i64 699
  %i.q = load i8, ptr %i.p, align 1, !tbaa !63, !range !64, !noundef !65
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr i8, ptr %0, i64 520        ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !60
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !142
  %i.w = tail call i64 %i.v(ptr noundef %.066, i64 noundef %i.n) #27, !inline_history !173
  %.not20.i = icmp eq i64 %i.w, 0
  br i1 %.not20.i, label %bb.i, label %char_is_identifier_start.exit.thread118

bb.i:                                             ; preds = %bb.h
  %i.x = load i8, ptr %.066, align 1, !tbaa !83   ; 2 uses
  %i.y = icmp eq i8 %i.x, 95
  br i1 %i.y, label %char_is_identifier_start.exit.thread118, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = icmp slt i8 %i.x, 0
  br i1 %i.z, label %bb.k, label %char_is_identifier_start.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.aa = load ptr, ptr %i.s, align 8, !tbaa !60
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !143
  %i.ac = tail call i64 %i.ab(ptr noundef nonnull %.066, i64 noundef %i.n) #27, !inline_history !173
  br label %char_is_identifier_start.exit

bb.l:                                             ; preds = %bb.g
  %i.ad = load i8, ptr %.066, align 1, !tbaa !83  ; 3 uses
  %i.ae = icmp sgt i8 %i.ad, -1
  br i1 %i.ae, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.af = zext nneg i8 %i.ad to i64
  %i.ag = getelementptr i8, ptr @pm_encoding_unicode_table, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !83
  %.not.i = trunc i8 %i.ah to i1
  %i.ai = icmp eq i8 %i.ad, 95
  %narrow.i = or i1 %i.ai, %.not.i
  %i.aj = zext i1 %narrow.i to i64
  br label %char_is_identifier_start.exit

bb.n:                                             ; preds = %bb.l
  %i.ak = tail call i64 @pm_encoding_utf_8_char_width(ptr noundef nonnull %.066, i64 noundef %i.n) #27
  br label %char_is_identifier_start.exit

char_is_identifier_start.exit:                    ; preds = %bb.k, %bb.m, %bb.n
  %.1.i = phi i64 [ %i.ak, %bb.n ], [ %i.ac, %bb.k ], [ %i.aj, %bb.m ]
  %.not80 = icmp eq i64 %.1.i, 0
  br i1 %.not80, label %char_is_identifier_start.exit.thread, label %char_is_identifier_start.exit.thread118

char_is_identifier_start.exit.thread118:          ; preds = %bb.h, %bb.i, %char_is_identifier_start.exit
  %i.al = getelementptr i8, ptr %0, i64 352
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !151
  %i.an = icmp ugt ptr %1, %i.am
  br i1 %i.an, label %bb.o, label %bb.p

bb.o:                                             ; preds = %char_is_identifier_start.exit.thread118
  %i.ao = getelementptr i8, ptr %0, i64 360
  store ptr %1, ptr %i.ao, align 8, !tbaa !87
  br label %bb.av

bb.p:                                             ; preds = %char_is_identifier_start.exit.thread118
  %i.ap = getelementptr i8, ptr %0, i64 32        ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !93 ; 2 uses
  %i.ar = getelementptr i8, ptr %0, i64 296       ; 3 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !92
  %i.at = add i64 %i.as, 1                        ; 3 uses
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !92
end_hunk_5
begin_hunk_6_@parse_expression_prefix:bb.a
  store ptr %i.bij, ptr %.sroa.4.0..sroa_idx.i2746, align 8, !tbaa !234
  br label %pm_interpolated_symbol_node_append.exit2766

pm_interpolated_symbol_node_append.exit2766:      ; preds = %pm_symbol_node_to_string_node.exit, %bb.th, %bb.ti
  tail call fastcc void @pm_interpolated_node_append(ptr noundef nonnull %i.bhl, ptr noundef nonnull %i.bie, ptr noundef nonnull %i.bhr)
  %i.bik = load ptr, ptr %.sroa.5.0..sroa_idx.i2747, align 8, !tbaa !235 ; 2 uses
  %i.bil = load ptr, ptr %.sroa.5.0..sroa_idx.i2764, align 8, !tbaa !134 ; 2 uses
  %i.bim = icmp ugt ptr %i.bik, %i.bil
  %..i2765 = select i1 %i.bim, ptr %i.bik, ptr %i.bil
  store ptr %..i2765, ptr %.sroa.5.0..sroa_idx.i2747, align 8, !tbaa !235
  %i.bin = load ptr, ptr %.sroa.4.0..sroa_idx.i2763, align 8, !tbaa !133
  store ptr %i.bin, ptr %.sroa.4.0..sroa_idx.i2746, align 8, !tbaa !234
  br label %bb.tj

bb.tj:                                            ; preds = %pm_interpolated_symbol_node_append.exit2766, %bb.td, %pm_interpolated_symbol_node_create.exit2738
  %.31935 = phi ptr [ %i.bhd, %pm_interpolated_symbol_node_create.exit2738 ], [ %i.bhl, %pm_interpolated_symbol_node_append.exit2766 ], [ %.01932.ph, %bb.td ] ; 8 uses
  %.01926 = phi i1 [ false, %pm_interpolated_symbol_node_create.exit2738 ], [ true, %pm_interpolated_symbol_node_append.exit2766 ], [ false, %bb.td ]
  %i.bio = tail call fastcc ptr @parse_string_part(ptr noundef nonnull %0, i16 noundef zeroext %i.bdx) ; 4 uses
  %i.bip = getelementptr i8, ptr %.31935, i64 40  ; 2 uses
  %i.biq = load i64, ptr %i.bip, align 8, !tbaa !232
  %i.bir = icmp eq i64 %i.biq, 0
  br i1 %i.bir, label %bb.tk, label %pm_interpolated_symbol_node_append.exit2768

bb.tk:                                            ; preds = %bb.tj
  %i.bis = getelementptr i8, ptr %.31935, i64 24
  %i.bit = load ptr, ptr %i.bis, align 8, !tbaa !233
  %i.biu = icmp eq ptr %i.bit, null
  br i1 %i.biu, label %bb.tl, label %pm_interpolated_symbol_node_append.exit2768

bb.tl:                                            ; preds = %bb.tk
  %i.biv = getelementptr i8, ptr %i.bio, i64 8
  %i.biw = load ptr, ptr %i.biv, align 8, !tbaa !133
  %i.bix = getelementptr i8, ptr %.31935, i64 8
  store ptr %i.biw, ptr %i.bix, align 8, !tbaa !234
  br label %pm_interpolated_symbol_node_append.exit2768

pm_interpolated_symbol_node_append.exit2768:      ; preds = %bb.tj, %bb.tk, %bb.tl
  tail call fastcc void @pm_interpolated_node_append(ptr noundef nonnull %.31935, ptr noundef nonnull %i.bip, ptr noundef %i.bio)
  %i.biy = getelementptr i8, ptr %.31935, i64 16  ; 2 uses
  %i.biz = load ptr, ptr %i.biy, align 8, !tbaa !235 ; 2 uses
  %i.bja = getelementptr i8, ptr %i.bio, i64 16
  %i.bjb = load ptr, ptr %i.bja, align 8, !tbaa !134 ; 2 uses
  %i.bjc = icmp ugt ptr %i.biz, %i.bjb
  %..i2767 = select i1 %i.bjc, ptr %i.biz, ptr %i.bjb
  store ptr %..i2767, ptr %i.biy, align 8, !tbaa !235
  br i1 %.01926, label %.outer3747.backedge, label %bb.tm

bb.tm:                                            ; preds = %pm_interpolated_symbol_node_append.exit2768
  %i.bjd = getelementptr i8, ptr %i.bio, i64 8
  %i.bje = load ptr, ptr %i.bjd, align 8, !tbaa !133
  %i.bjf = getelementptr i8, ptr %.31935, i64 8
  store ptr %i.bje, ptr %i.bjf, align 8, !tbaa !133
  br label %.outer3747.backedge

bb.tn:                                            ; preds = %bb.sd
  %i.bjg = icmp eq ptr %.01932.ph, null
  br i1 %i.bjg, label %bb.to, label %bb.tq

bb.to:                                            ; preds = %bb.tn
  %.val2203 = load ptr, ptr %i.bdv, align 8, !tbaa !86 ; 2 uses
  %i.bjh = tail call noalias dereferenceable_or_null(80) ptr @calloc(i64 noundef 1, i64 noundef 80) #30 ; 9 uses
  %i.bji = icmp eq ptr %i.bjh, null
  br i1 %i.bji, label %bb.tp, label %pm_interpolated_symbol_node_create.exit2783

bb.tp:                                            ; preds = %bb.to
  %i.bjj = load ptr, ptr @stderr, align 8, !tbaa !108
  %i.bjk = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.bjj, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 80) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_interpolated_symbol_node_create.exit2783:      ; preds = %bb.to
  %i.bjl = load i32, ptr %0, align 8, !tbaa !109
  %i.bjm = add i32 %i.bjl, 1                      ; 2 uses
  store i32 %i.bjm, ptr %0, align 8, !tbaa !109
  store i16 86, ptr %i.bjh, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx.i2774 = getelementptr inbounds nuw i8, ptr %i.bjh, i64 2
  store i16 2, ptr %.sroa.2.0..sroa_idx.i2774, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx.i2775 = getelementptr inbounds nuw i8, ptr %i.bjh, i64 4
  store i32 %i.bjm, ptr %.sroa.3.0..sroa_idx.i2775, align 4, !tbaa !31
  %.sroa.4.0..sroa_idx.i2776 = getelementptr inbounds nuw i8, ptr %i.bjh, i64 8
  store ptr %.val2203, ptr %.sroa.4.0..sroa_idx.i2776, align 8, !tbaa !36
  %.sroa.5.0..sroa_idx.i2777 = getelementptr inbounds nuw i8, ptr %i.bjh, i64 16
  store ptr %.val2203, ptr %.sroa.5.0..sroa_idx.i2777, align 8, !tbaa !36
  %.sroa.6.0..sroa_idx.i2778 = getelementptr inbounds nuw i8, ptr %i.bjh, i64 24
  %.sroa.11.0..sroa_idx.i2781 = getelementptr inbounds nuw i8, ptr %i.bjh, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i2778, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.0..sroa_idx.i2781, i8 0, i64 16, i1 false)
  br label %bb.tx

bb.tq:                                            ; preds = %bb.tn
  %i.bjn = load i16, ptr %.01932.ph, align 8, !tbaa !115
  switch i16 %i.bjn, label %bb.tw [
    i16 143, label %bb.tr
    i16 86, label %bb.tx
  ]

bb.tr:                                            ; preds = %bb.tq
  %.val2201 = load ptr, ptr %i.bdv, align 8, !tbaa !86 ; 2 uses
  %i.bjo = tail call noalias dereferenceable_or_null(80) ptr @calloc(i64 noundef 1, i64 noundef 80) #30 ; 11 uses
  %i.bjp = icmp eq ptr %i.bjo, null
  br i1 %i.bjp, label %bb.ts, label %pm_interpolated_symbol_node_create.exit2798

bb.ts:                                            ; preds = %bb.tr
  %i.bjq = load ptr, ptr @stderr, align 8, !tbaa !108
  %i.bjr = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.bjq, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 80) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_interpolated_symbol_node_create.exit2798:      ; preds = %bb.tr
  %i.bjs = load i32, ptr %0, align 8, !tbaa !109
  %i.bjt = add i32 %i.bjs, 1                      ; 2 uses
  store i32 %i.bjt, ptr %0, align 8, !tbaa !109
  store i16 86, ptr %i.bjo, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx.i2789 = getelementptr inbounds nuw i8, ptr %i.bjo, i64 2
  store i16 2, ptr %.sroa.2.0..sroa_idx.i2789, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx.i2790 = getelementptr inbounds nuw i8, ptr %i.bjo, i64 4
  store i32 %i.bjt, ptr %.sroa.3.0..sroa_idx.i2790, align 4, !tbaa !31
  %.sroa.4.0..sroa_idx.i2791 = getelementptr inbounds nuw i8, ptr %i.bjo, i64 8 ; 3 uses
  store ptr %.val2201, ptr %.sroa.4.0..sroa_idx.i2791, align 8, !tbaa !36
  %.sroa.5.0..sroa_idx.i2792 = getelementptr inbounds nuw i8, ptr %i.bjo, i64 16 ; 3 uses
  store ptr %.val2201, ptr %.sroa.5.0..sroa_idx.i2792, align 8, !tbaa !36
  %.sroa.6.0..sroa_idx.i2793 = getelementptr inbounds nuw i8, ptr %i.bjo, i64 24 ; 2 uses
  %.sroa.11.0..sroa_idx.i2796 = getelementptr inbounds nuw i8, ptr %i.bjo, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i2793, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.0..sroa_idx.i2796, i8 0, i64 16, i1 false)
  %i.bju = tail call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 1, i64 noundef 96) #30 ; 11 uses
  %i.bjv = icmp eq ptr %i.bju, null
  br i1 %i.bjv, label %bb.tt, label %pm_symbol_node_to_string_node.exit2812

bb.tt:                                            ; preds = %pm_interpolated_symbol_node_create.exit2798
  %i.bjw = load ptr, ptr @stderr, align 8, !tbaa !108
  %i.bjx = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.bjw, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 96) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_symbol_node_to_string_node.exit2812:           ; preds = %pm_interpolated_symbol_node_create.exit2798
  %i.bjy = load i8, ptr %i.bdw, align 1, !tbaa !68 ; 2 uses
  %switch.selectcmp.i2800 = icmp eq i8 %i.bjy, 1
  %switch.select.i2801 = select i1 %switch.selectcmp.i2800, i16 18, i16 0
  %switch.selectcmp12.i2802 = icmp eq i8 %i.bjy, -1
  %switch.select13.i2803 = select i1 %switch.selectcmp12.i2802, i16 32, i16 %switch.select.i2801
  %i.bjz = load i32, ptr %0, align 8, !tbaa !109
  %i.bka = add i32 %i.bjz, 1                      ; 2 uses
  store i32 %i.bka, ptr %0, align 8, !tbaa !109
  %i.bkb = getelementptr i8, ptr %.01932.ph, i64 8
  %i.bkc = getelementptr i8, ptr %.01932.ph, i64 24
  %.sroa.6.0..sroa_idx.i2804 = getelementptr inbounds nuw i8, ptr %i.bju, i64 24
  %i.bkd = getelementptr i8, ptr %.01932.ph, i64 40
  %.sroa.7.0..sroa_idx.i2805 = getelementptr inbounds nuw i8, ptr %i.bju, i64 40
  %i.bke = getelementptr i8, ptr %.01932.ph, i64 56
  %.sroa.8.0..sroa_idx.i2806 = getelementptr inbounds nuw i8, ptr %i.bju, i64 56
  %i.bkf = getelementptr i8, ptr %.01932.ph, i64 72
  %.sroa.9.0..sroa_idx.i2807 = getelementptr inbounds nuw i8, ptr %i.bju, i64 72
  %.sroa.2.0..sroa_idx.i2808 = getelementptr inbounds nuw i8, ptr %i.bju, i64 2
  %.sroa.3.0..sroa_idx.i2809 = getelementptr inbounds nuw i8, ptr %i.bju, i64 4
  %.sroa.4.0..sroa_idx.i2810 = getelementptr inbounds nuw i8, ptr %i.bju, i64 8 ; 3 uses
  %.sroa.5.0..sroa_idx.i2811 = getelementptr inbounds nuw i8, ptr %i.bju, i64 16
  %i.bkg = load <2 x ptr>, ptr %i.bkb, align 8, !tbaa !36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i2804, ptr noundef nonnull align 8 dereferenceable(16) %i.bkc, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i2805, ptr noundef nonnull align 8 dereferenceable(16) %i.bkd, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx.i2806, ptr noundef nonnull align 8 dereferenceable(16) %i.bke, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx.i2807, ptr noundef nonnull align 8 dereferenceable(24) %i.bkf, i64 24, i1 false)
  store i16 141, ptr %i.bju, align 8, !tbaa !110
  store i16 %switch.select13.i2803, ptr %.sroa.2.0..sroa_idx.i2808, align 2, !tbaa !110
  store i32 %i.bka, ptr %.sroa.3.0..sroa_idx.i2809, align 4, !tbaa !31
  store <2 x ptr> %i.bkg, ptr %.sroa.4.0..sroa_idx.i2810, align 8, !tbaa !36
  tail call void @free(ptr noundef nonnull %.01932.ph) #27
  %i.bkh = getelementptr i8, ptr %i.bjo, i64 40   ; 2 uses
  %i.bki = load i64, ptr %i.bkh, align 8, !tbaa !232
  %i.bkj = icmp eq i64 %i.bki, 0
  br i1 %i.bkj, label %bb.tu, label %pm_interpolated_symbol_node_append.exit2814

bb.tu:                                            ; preds = %pm_symbol_node_to_string_node.exit2812
  %i.bkk = load ptr, ptr %.sroa.6.0..sroa_idx.i2793, align 8, !tbaa !233
  %i.bkl = icmp eq ptr %i.bkk, null
  br i1 %i.bkl, label %bb.tv, label %pm_interpolated_symbol_node_append.exit2814

bb.tv:                                            ; preds = %bb.tu
  %i.bkm = load ptr, ptr %.sroa.4.0..sroa_idx.i2810, align 8, !tbaa !133
  store ptr %i.bkm, ptr %.sroa.4.0..sroa_idx.i2791, align 8, !tbaa !234
  br label %pm_interpolated_symbol_node_append.exit2814

pm_interpolated_symbol_node_append.exit2814:      ; preds = %pm_symbol_node_to_string_node.exit2812, %bb.tu, %bb.tv
  tail call fastcc void @pm_interpolated_node_append(ptr noundef nonnull %i.bjo, ptr noundef nonnull %i.bkh, ptr noundef nonnull %i.bju)
  %i.bkn = load ptr, ptr %.sroa.5.0..sroa_idx.i2792, align 8, !tbaa !235 ; 2 uses
  %i.bko = load ptr, ptr %.sroa.5.0..sroa_idx.i2811, align 8, !tbaa !134 ; 2 uses
  %i.bkp = icmp ugt ptr %i.bkn, %i.bko
  %..i2813 = select i1 %i.bkp, ptr %i.bkn, ptr %i.bko
  store ptr %..i2813, ptr %.sroa.5.0..sroa_idx.i2792, align 8, !tbaa !235
  %i.bkq = load ptr, ptr %.sroa.4.0..sroa_idx.i2810, align 8, !tbaa !133
  store ptr %i.bkq, ptr %.sroa.4.0..sroa_idx.i2791, align 8, !tbaa !234
  br label %bb.tx

bb.tw:                                            ; preds = %bb.tq
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 19603, ptr noundef nonnull @__PRETTY_FUNCTION__.parse_expression_prefix) #26
  unreachable

bb.tx:                                            ; preds = %bb.tq, %pm_interpolated_symbol_node_append.exit2814, %pm_interpolated_symbol_node_create.exit2783
  %.41936 = phi ptr [ %i.bjh, %pm_interpolated_symbol_node_create.exit2783 ], [ %i.bjo, %pm_interpolated_symbol_node_append.exit2814 ], [ %.01932.ph, %bb.tq ] ; 8 uses
  %.01925 = phi i1 [ false, %pm_interpolated_symbol_node_create.exit2783 ], [ true, %pm_interpolated_symbol_node_append.exit2814 ], [ false, %bb.tq ]
  %i.bkr = tail call fastcc ptr @parse_string_part(ptr noundef %0, i16 noundef zeroext %i.bdx) ; 4 uses
  %i.bks = getelementptr i8, ptr %.41936, i64 40  ; 2 uses
  %i.bkt = load i64, ptr %i.bks, align 8, !tbaa !232
  %i.bku = icmp eq i64 %i.bkt, 0
  br i1 %i.bku, label %bb.ty, label %pm_interpolated_symbol_node_append.exit2816

bb.ty:                                            ; preds = %bb.tx
  %i.bkv = getelementptr i8, ptr %.41936, i64 24
  %i.bkw = load ptr, ptr %i.bkv, align 8, !tbaa !233
  %i.bkx = icmp eq ptr %i.bkw, null
  br i1 %i.bkx, label %bb.tz, label %pm_interpolated_symbol_node_append.exit2816

bb.tz:                                            ; preds = %bb.ty
  %i.bky = getelementptr i8, ptr %i.bkr, i64 8
  %i.bkz = load ptr, ptr %i.bky, align 8, !tbaa !133
  %i.bla = getelementptr i8, ptr %.41936, i64 8
  store ptr %i.bkz, ptr %i.bla, align 8, !tbaa !234
  br label %pm_interpolated_symbol_node_append.exit2816

pm_interpolated_symbol_node_append.exit2816:      ; preds = %bb.tx, %bb.ty, %bb.tz
  tail call fastcc void @pm_interpolated_node_append(ptr noundef nonnull %.41936, ptr noundef nonnull %i.bks, ptr noundef %i.bkr)
  %i.blb = getelementptr i8, ptr %.41936, i64 16  ; 2 uses
  %i.blc = load ptr, ptr %i.blb, align 8, !tbaa !235 ; 2 uses
  %i.bld = getelementptr i8, ptr %i.bkr, i64 16
  %i.ble = load ptr, ptr %i.bld, align 8, !tbaa !134 ; 2 uses
  %i.blf = icmp ugt ptr %i.blc, %i.ble
  %..i2815 = select i1 %i.blf, ptr %i.blc, ptr %i.ble
  store ptr %..i2815, ptr %i.blb, align 8, !tbaa !235
  br i1 %.01925, label %.outer3747.backedge, label %bb.ua

bb.ua:                                            ; preds = %pm_interpolated_symbol_node_append.exit2816
  %i.blg = getelementptr i8, ptr %i.bkr, i64 8
  %i.blh = load ptr, ptr %i.blg, align 8, !tbaa !133
  %i.bli = getelementptr i8, ptr %.41936, i64 8
  store ptr %i.blh, ptr %i.bli, align 8, !tbaa !133
  br label %.outer3747.backedge

accept1.exit.i2818:                               ; preds = %bb.sd
  %i.blj = load ptr, ptr %i.bej, align 8, !tbaa !180 ; 3 uses
  %i.blk = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.bek, ptr noundef %i.blj, ptr noundef %i.blj, i32 noundef 180) #27 ; 0 uses
  store ptr %i.blj, ptr %i.bel, align 8, !tbaa !181
  store i32 163, ptr %i.bdt, align 8, !tbaa !163
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %bb.sd, !llvm.loop !445

bb.ub:                                            ; preds = %bb.sd, %bb.sd
  %.not2020 = icmp eq ptr %.01932.ph, null
  br i1 %.not2020, label %bb.ud, label %bb.uc

bb.uc:                                            ; preds = %bb.ub
  tail call fastcc void @pm_array_node_elements_append(ptr noundef %i.bdu, ptr noundef nonnull %.01932.ph)
  %.val2089.pre = load i32, ptr %i.b, align 8, !tbaa !154
  br label %bb.ud

bb.ud:                                            ; preds = %bb.uc, %bb.ub
  %.val2089 = phi i32 [ %.val2089.pre, %bb.uc ], [ %.val2138, %bb.ub ]
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %85, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !tbaa.struct !149
  %i.bll = icmp eq i32 %.val2089, 1
  br i1 %i.bll, label %bb.ue, label %bb.uf

bb.ue:                                            ; preds = %bb.ud
  %i.blm = getelementptr inbounds nuw i8, ptr %82, i64 8
  %.val2048 = load ptr, ptr %i.blm, align 8, !tbaa !127
  %i.bln = getelementptr inbounds nuw i8, ptr %82, i64 16
  %.val2049 = load ptr, ptr %i.bln, align 8, !tbaa !128
  %i.blo = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.bek, ptr noundef %.val2048, ptr noundef %.val2049, i32 noundef 181) #27 ; 0 uses
  %i.blp = load ptr, ptr %i.bej, align 8, !tbaa !180 ; 2 uses
  store i32 163, ptr %85, align 8, !tbaa !31
  %.sroa.2138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %85, i64 4
  store i32 0, ptr %.sroa.2138.0..sroa_idx, align 4
  %.sroa.3139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %85, i64 8
  store ptr %i.blp, ptr %.sroa.3139.0..sroa_idx, align 8, !tbaa !36
  %.sroa.4140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %85, i64 16
  store ptr %i.blp, ptr %.sroa.4140.0..sroa_idx, align 8, !tbaa !36
  br label %bb.ug

bb.uf:                                            ; preds = %bb.ud
  tail call fastcc void @expect1(ptr noundef nonnull %0, i32 noundef 149, i32 noundef 181)
  br label %bb.ug

bb.ug:                                            ; preds = %bb.uf, %bb.ue
  call fastcc void @pm_array_node_close_set(ptr noundef %i.bdu, ptr noundef nonnull %85)
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #27
  br label %.loopexit3339

bb.uh:                                            ; preds = %bb.a
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #27
  %i.blq = getelementptr i8, ptr %0, i64 320      ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %86, ptr noundef nonnull align 8 dereferenceable(24) %i.blq, i64 24, i1 false), !tbaa.struct !149
  %i.blr = call fastcc ptr @pm_array_node_create(ptr noundef nonnull %0, ptr noundef nonnull %86) ; 7 uses
  %i.bls = getelementptr i8, ptr %0, i64 304
  %i.blt = getelementptr inbounds nuw i8, ptr %87, i64 4
  %i.blu = getelementptr inbounds nuw i8, ptr %87, i64 8
  %i.blv = getelementptr inbounds nuw i8, ptr %87, i64 16
  %i.blw = getelementptr inbounds nuw i8, ptr %88, i64 4
  %i.blx = getelementptr inbounds nuw i8, ptr %88, i64 8
  %i.bly = getelementptr inbounds nuw i8, ptr %88, i64 16
  %i.blz = getelementptr i8, ptr %0, i64 693
  %i.bma = getelementptr i8, ptr %i.blr, i64 24   ; 2 uses
  %i.bmb = getelementptr i8, ptr %i.blr, i64 48
  %i.bmc = getelementptr i8, ptr %i.blr, i64 8
  %i.bmd = getelementptr i8, ptr %i.blr, i64 16
  %i.bme = getelementptr i8, ptr %i.blr, i64 2    ; 4 uses
  %i.bmf = getelementptr i8, ptr %0, i64 336      ; 2 uses
  %i.bmg = getelementptr i8, ptr %0, i64 472      ; 2 uses
  %i.bmh = getelementptr i8, ptr %0, i64 328
  br label %pm_array_node_elements_append.exit2842

pm_array_node_elements_append.exit2842:           ; preds = %pm_array_node_elements_append.exit2842.backedge, %bb.uh
  %.val2137 = load i32, ptr %i.b, align 8, !tbaa !154 ; 3 uses
  switch i32 %.val2137, label %accept1.exit2823 [
    i32 149, label %bb.uv
    i32 1, label %bb.uv
    i32 161, label %bb.ui
  ]

bb.ui:                                            ; preds = %pm_array_node_elements_append.exit2842
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.val2088.pre = load i32, ptr %i.b, align 8, !tbaa !154
  br label %accept1.exit2823

accept1.exit2823:                                 ; preds = %pm_array_node_elements_append.exit2842, %bb.ui
  %.val2088 = phi i32 [ %.val2137, %pm_array_node_elements_append.exit2842 ], [ %.val2088.pre, %bb.ui ]
  switch i32 %.val2088, label %expect1.exit2846 [
    i32 149, label %.thread3307
    i32 148, label %.lr.ph
  ]

.thread3307:                                      ; preds = %accept1.exit2823
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %89, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !tbaa.struct !149
  br label %bb.ux

.lr.ph:                                           ; preds = %accept1.exit2823, %bb.un
  %.119213384 = phi ptr [ %.21922, %bb.un ], [ null, %accept1.exit2823 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #27
  %.val2199 = load ptr, ptr %i.bls, align 8, !tbaa !86 ; 6 uses
  store i32 164, ptr %87, align 8, !tbaa !126, !alias.scope !500
  store i32 0, ptr %i.blt, align 4, !alias.scope !500
  store ptr %.val2199, ptr %i.blu, align 8, !tbaa !127, !alias.scope !500
  store ptr %.val2199, ptr %i.blv, align 8, !tbaa !128, !alias.scope !500
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #27
  store i32 164, ptr %88, align 8, !tbaa !126, !alias.scope !501
  store i32 0, ptr %i.blw, align 4, !alias.scope !501
  store ptr %.val2199, ptr %i.blx, align 8, !tbaa !127, !alias.scope !501
  store ptr %.val2199, ptr %i.bly, align 8, !tbaa !128, !alias.scope !501
  %i.bmi = call fastcc ptr @pm_string_node_create_current_string(ptr noundef nonnull %0, ptr noundef %87, ptr noundef nonnull %i.b, ptr noundef %88) ; 2 uses
  %i.bmj = icmp eq ptr %.119213384, null
  br i1 %i.bmj, label %bb.un, label %bb.uj

bb.uj:                                            ; preds = %.lr.ph
  %i.bmk = load i16, ptr %.119213384, align 8, !tbaa !115
  switch i16 %i.bmk, label %bb.um [
    i16 85, label %.sink.split3638
    i16 141, label %bb.uk
  ]

bb.uk:                                            ; preds = %bb.uj
  %i.bml = tail call noalias dereferenceable_or_null(80) ptr @calloc(i64 noundef 1, i64 noundef 80) #30 ; 10 uses
  %i.bmm = icmp eq ptr %i.bml, null
  br i1 %i.bmm, label %bb.ul, label %pm_interpolated_string_node_create.exit

bb.ul:                                            ; preds = %bb.uk
  %i.bmn = load ptr, ptr @stderr, align 8, !tbaa !108
  %i.bmo = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.bmn, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 80) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_interpolated_string_node_create.exit:          ; preds = %bb.uk
  %i.bmp = load i8, ptr %i.blz, align 1, !tbaa !68 ; 2 uses
  %switch.selectcmp.i2825 = icmp eq i8 %i.bmp, 1
  %switch.select.i2826 = select i1 %switch.selectcmp.i2825, i16 6, i16 2
  %switch.selectcmp27.i = icmp eq i8 %i.bmp, -1
  %switch.select28.i = select i1 %switch.selectcmp27.i, i16 10, i16 %switch.select.i2826
  %i.bmq = load i32, ptr %0, align 8, !tbaa !109
  %i.bmr = add i32 %i.bmq, 1                      ; 2 uses
  store i32 %i.bmr, ptr %0, align 8, !tbaa !109
  store i16 85, ptr %i.bml, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx.i2831 = getelementptr inbounds nuw i8, ptr %i.bml, i64 2
  store i16 %switch.select28.i, ptr %.sroa.2.0..sroa_idx.i2831, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx.i2832 = getelementptr inbounds nuw i8, ptr %i.bml, i64 4
  store i32 %i.bmr, ptr %.sroa.3.0..sroa_idx.i2832, align 4, !tbaa !31
  %.sroa.4.0..sroa_idx.i2833 = getelementptr inbounds nuw i8, ptr %i.bml, i64 8
  store ptr %.val2199, ptr %.sroa.4.0..sroa_idx.i2833, align 8, !tbaa !36
  %.sroa.5.0..sroa_idx.i2834 = getelementptr inbounds nuw i8, ptr %i.bml, i64 16
  store ptr %.val2199, ptr %.sroa.5.0..sroa_idx.i2834, align 8, !tbaa !36
  %.sroa.6.0..sroa_idx.i2835 = getelementptr inbounds nuw i8, ptr %i.bml, i64 24
  %.sroa.11.0..sroa_idx.i2837 = getelementptr inbounds nuw i8, ptr %i.bml, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i2835, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.0..sroa_idx.i2837, i8 0, i64 16, i1 false)
  tail call fastcc void @pm_interpolated_string_node_append(ptr noundef %i.bml, ptr noundef nonnull %.119213384)
  br label %.sink.split3638

bb.um:                                            ; preds = %bb.uj
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 19665, ptr noundef nonnull @__PRETTY_FUNCTION__.parse_expression_prefix) #26
  unreachable

.sink.split3638:                                  ; preds = %bb.uj, %pm_interpolated_string_node_create.exit
end_hunk_6
begin_hunk_7_@parse_expression_prefix:bb.a
  %.sroa.6.0..sroa_idx.i2868 = getelementptr inbounds nuw i8, ptr %i.bpk, i64 24
  %.sroa.11.0..sroa_idx.i2870 = getelementptr inbounds nuw i8, ptr %i.bpk, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i2868, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.0..sroa_idx.i2870, i8 0, i64 16, i1 false)
  tail call fastcc void @pm_interpolated_string_node_append(ptr noundef %i.bpk, ptr noundef nonnull %.01910.ph)
  br label %.sink.split3639

bb.vr:                                            ; preds = %bb.vo
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 19748, ptr noundef nonnull @__PRETTY_FUNCTION__.parse_expression_prefix) #26
  unreachable

.sink.split3639:                                  ; preds = %bb.vo, %pm_interpolated_string_node_create.exit2872
  %.01910.sink = phi ptr [ %i.bpk, %pm_interpolated_string_node_create.exit2872 ], [ %.01910.ph, %bb.vo ] ; 2 uses
  tail call fastcc void @pm_interpolated_string_node_append(ptr noundef %.01910.sink, ptr noundef nonnull %i.bpa)
  br label %bb.vs

bb.vs:                                            ; preds = %.sink.split3639, %parse_unescaped_encoding.exit2854
  %.21912 = phi ptr [ %i.bpa, %parse_unescaped_encoding.exit2854 ], [ %.01910.sink, %.sink.split3639 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #27
  br label %.outer3765.backedge

bb.vt:                                            ; preds = %bb.va
  %i.bpr = icmp eq ptr %.01910.ph, null
  br i1 %i.bpr, label %bb.vu, label %bb.vw

bb.vu:                                            ; preds = %bb.vt
  %.val2195 = load ptr, ptr %i.bnr, align 8, !tbaa !86 ; 2 uses
  %i.bps = tail call noalias dereferenceable_or_null(80) ptr @calloc(i64 noundef 1, i64 noundef 80) #30 ; 9 uses
  %i.bpt = icmp eq ptr %i.bps, null
  br i1 %i.bpt, label %bb.vv, label %pm_interpolated_string_node_create.exit2890

bb.vv:                                            ; preds = %bb.vu
  %i.bpu = load ptr, ptr @stderr, align 8, !tbaa !108
  %i.bpv = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.bpu, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 80) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_interpolated_string_node_create.exit2890:      ; preds = %bb.vu
  %i.bpw = load i8, ptr %i.bns, align 1, !tbaa !68 ; 2 uses
  %switch.selectcmp.i2874 = icmp eq i8 %i.bpw, 1
  %switch.select.i2875 = select i1 %switch.selectcmp.i2874, i16 6, i16 2
  %switch.selectcmp27.i2876 = icmp eq i8 %i.bpw, -1
  %switch.select28.i2877 = select i1 %switch.selectcmp27.i2876, i16 10, i16 %switch.select.i2875
  %i.bpx = load i32, ptr %0, align 8, !tbaa !109
  %i.bpy = add i32 %i.bpx, 1                      ; 2 uses
  store i32 %i.bpy, ptr %0, align 8, !tbaa !109
  store i16 85, ptr %i.bps, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx.i2882 = getelementptr inbounds nuw i8, ptr %i.bps, i64 2
  store i16 %switch.select28.i2877, ptr %.sroa.2.0..sroa_idx.i2882, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx.i2883 = getelementptr inbounds nuw i8, ptr %i.bps, i64 4
  store i32 %i.bpy, ptr %.sroa.3.0..sroa_idx.i2883, align 4, !tbaa !31
  %.sroa.4.0..sroa_idx.i2884 = getelementptr inbounds nuw i8, ptr %i.bps, i64 8
  store ptr %.val2195, ptr %.sroa.4.0..sroa_idx.i2884, align 8, !tbaa !36
  %.sroa.5.0..sroa_idx.i2885 = getelementptr inbounds nuw i8, ptr %i.bps, i64 16
  store ptr %.val2195, ptr %.sroa.5.0..sroa_idx.i2885, align 8, !tbaa !36
  %.sroa.6.0..sroa_idx.i2886 = getelementptr inbounds nuw i8, ptr %i.bps, i64 24
  %.sroa.11.0..sroa_idx.i2888 = getelementptr inbounds nuw i8, ptr %i.bps, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i2886, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.0..sroa_idx.i2888, i8 0, i64 16, i1 false)
  br label %bb.vz

bb.vw:                                            ; preds = %bb.vt
  %i.bpz = load i16, ptr %.01910.ph, align 8, !tbaa !115
  %i.bqa = icmp eq i16 %i.bpz, 141
  br i1 %i.bqa, label %bb.vx, label %bb.vz

bb.vx:                                            ; preds = %bb.vw
  %.val2193 = load ptr, ptr %i.bnr, align 8, !tbaa !86 ; 2 uses
  %i.bqb = tail call noalias dereferenceable_or_null(80) ptr @calloc(i64 noundef 1, i64 noundef 80) #30 ; 10 uses
  %i.bqc = icmp eq ptr %i.bqb, null
  br i1 %i.bqc, label %bb.vy, label %pm_interpolated_string_node_create.exit2908

bb.vy:                                            ; preds = %bb.vx
  %i.bqd = load ptr, ptr @stderr, align 8, !tbaa !108
  %i.bqe = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.bqd, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 80) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_interpolated_string_node_create.exit2908:      ; preds = %bb.vx
  %i.bqf = load i8, ptr %i.bns, align 1, !tbaa !68 ; 2 uses
  %switch.selectcmp.i2892 = icmp eq i8 %i.bqf, 1
  %switch.select.i2893 = select i1 %switch.selectcmp.i2892, i16 6, i16 2
  %switch.selectcmp27.i2894 = icmp eq i8 %i.bqf, -1
  %switch.select28.i2895 = select i1 %switch.selectcmp27.i2894, i16 10, i16 %switch.select.i2893
  %i.bqg = load i32, ptr %0, align 8, !tbaa !109
  %i.bqh = add i32 %i.bqg, 1                      ; 2 uses
  store i32 %i.bqh, ptr %0, align 8, !tbaa !109
  store i16 85, ptr %i.bqb, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx.i2900 = getelementptr inbounds nuw i8, ptr %i.bqb, i64 2
  store i16 %switch.select28.i2895, ptr %.sroa.2.0..sroa_idx.i2900, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx.i2901 = getelementptr inbounds nuw i8, ptr %i.bqb, i64 4
  store i32 %i.bqh, ptr %.sroa.3.0..sroa_idx.i2901, align 4, !tbaa !31
  %.sroa.4.0..sroa_idx.i2902 = getelementptr inbounds nuw i8, ptr %i.bqb, i64 8
  store ptr %.val2193, ptr %.sroa.4.0..sroa_idx.i2902, align 8, !tbaa !36
  %.sroa.5.0..sroa_idx.i2903 = getelementptr inbounds nuw i8, ptr %i.bqb, i64 16
  store ptr %.val2193, ptr %.sroa.5.0..sroa_idx.i2903, align 8, !tbaa !36
  %.sroa.6.0..sroa_idx.i2904 = getelementptr inbounds nuw i8, ptr %i.bqb, i64 24
  %.sroa.11.0..sroa_idx.i2906 = getelementptr inbounds nuw i8, ptr %i.bqb, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i2904, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.0..sroa_idx.i2906, i8 0, i64 16, i1 false)
  tail call fastcc void @pm_interpolated_string_node_append(ptr noundef %i.bqb, ptr noundef nonnull %.01910.ph)
  br label %bb.vz

bb.vz:                                            ; preds = %pm_interpolated_string_node_create.exit2908, %bb.vw, %pm_interpolated_string_node_create.exit2890
  %.31913 = phi ptr [ %i.bps, %pm_interpolated_string_node_create.exit2890 ], [ %i.bqb, %pm_interpolated_string_node_create.exit2908 ], [ %.01910.ph, %bb.vw ] ; 2 uses
  %i.bqi = tail call fastcc ptr @parse_string_part(ptr noundef nonnull %0, i16 noundef zeroext %i.bnt)
  tail call fastcc void @pm_interpolated_string_node_append(ptr noundef %.31913, ptr noundef %i.bqi)
  br label %.outer3765.backedge

bb.wa:                                            ; preds = %bb.va
  %i.bqj = icmp eq ptr %.01910.ph, null
  br i1 %i.bqj, label %bb.wb, label %bb.wd

bb.wb:                                            ; preds = %bb.wa
  %.val2191 = load ptr, ptr %i.bnr, align 8, !tbaa !86 ; 2 uses
  %i.bqk = tail call noalias dereferenceable_or_null(80) ptr @calloc(i64 noundef 1, i64 noundef 80) #30 ; 9 uses
  %i.bql = icmp eq ptr %i.bqk, null
  br i1 %i.bql, label %bb.wc, label %pm_interpolated_string_node_create.exit2926

bb.wc:                                            ; preds = %bb.wb
  %i.bqm = load ptr, ptr @stderr, align 8, !tbaa !108
  %i.bqn = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.bqm, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 80) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_interpolated_string_node_create.exit2926:      ; preds = %bb.wb
  %i.bqo = load i8, ptr %i.bns, align 1, !tbaa !68 ; 2 uses
  %switch.selectcmp.i2910 = icmp eq i8 %i.bqo, 1
  %switch.select.i2911 = select i1 %switch.selectcmp.i2910, i16 6, i16 2
  %switch.selectcmp27.i2912 = icmp eq i8 %i.bqo, -1
  %switch.select28.i2913 = select i1 %switch.selectcmp27.i2912, i16 10, i16 %switch.select.i2911
  %i.bqp = load i32, ptr %0, align 8, !tbaa !109
  %i.bqq = add i32 %i.bqp, 1                      ; 2 uses
  store i32 %i.bqq, ptr %0, align 8, !tbaa !109
  store i16 85, ptr %i.bqk, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx.i2918 = getelementptr inbounds nuw i8, ptr %i.bqk, i64 2
  store i16 %switch.select28.i2913, ptr %.sroa.2.0..sroa_idx.i2918, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx.i2919 = getelementptr inbounds nuw i8, ptr %i.bqk, i64 4
  store i32 %i.bqq, ptr %.sroa.3.0..sroa_idx.i2919, align 4, !tbaa !31
  %.sroa.4.0..sroa_idx.i2920 = getelementptr inbounds nuw i8, ptr %i.bqk, i64 8
  store ptr %.val2191, ptr %.sroa.4.0..sroa_idx.i2920, align 8, !tbaa !36
  %.sroa.5.0..sroa_idx.i2921 = getelementptr inbounds nuw i8, ptr %i.bqk, i64 16
  store ptr %.val2191, ptr %.sroa.5.0..sroa_idx.i2921, align 8, !tbaa !36
  %.sroa.6.0..sroa_idx.i2922 = getelementptr inbounds nuw i8, ptr %i.bqk, i64 24
  %.sroa.11.0..sroa_idx.i2924 = getelementptr inbounds nuw i8, ptr %i.bqk, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i2922, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.0..sroa_idx.i2924, i8 0, i64 16, i1 false)
  br label %bb.wh

bb.wd:                                            ; preds = %bb.wa
  %i.bqr = load i16, ptr %.01910.ph, align 8, !tbaa !115
  switch i16 %i.bqr, label %bb.wg [
    i16 141, label %bb.we
    i16 85, label %bb.wh
  ]

bb.we:                                            ; preds = %bb.wd
  %.val2189 = load ptr, ptr %i.bnr, align 8, !tbaa !86 ; 2 uses
  %i.bqs = tail call noalias dereferenceable_or_null(80) ptr @calloc(i64 noundef 1, i64 noundef 80) #30 ; 10 uses
  %i.bqt = icmp eq ptr %i.bqs, null
  br i1 %i.bqt, label %bb.wf, label %pm_interpolated_string_node_create.exit2944

bb.wf:                                            ; preds = %bb.we
  %i.bqu = load ptr, ptr @stderr, align 8, !tbaa !108
  %i.bqv = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.bqu, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 80) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_interpolated_string_node_create.exit2944:      ; preds = %bb.we
  %i.bqw = load i8, ptr %i.bns, align 1, !tbaa !68 ; 2 uses
  %switch.selectcmp.i2928 = icmp eq i8 %i.bqw, 1
  %switch.select.i2929 = select i1 %switch.selectcmp.i2928, i16 6, i16 2
  %switch.selectcmp27.i2930 = icmp eq i8 %i.bqw, -1
  %switch.select28.i2931 = select i1 %switch.selectcmp27.i2930, i16 10, i16 %switch.select.i2929
  %i.bqx = load i32, ptr %0, align 8, !tbaa !109
  %i.bqy = add i32 %i.bqx, 1                      ; 2 uses
  store i32 %i.bqy, ptr %0, align 8, !tbaa !109
  store i16 85, ptr %i.bqs, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx.i2936 = getelementptr inbounds nuw i8, ptr %i.bqs, i64 2
  store i16 %switch.select28.i2931, ptr %.sroa.2.0..sroa_idx.i2936, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx.i2937 = getelementptr inbounds nuw i8, ptr %i.bqs, i64 4
  store i32 %i.bqy, ptr %.sroa.3.0..sroa_idx.i2937, align 4, !tbaa !31
  %.sroa.4.0..sroa_idx.i2938 = getelementptr inbounds nuw i8, ptr %i.bqs, i64 8
  store ptr %.val2189, ptr %.sroa.4.0..sroa_idx.i2938, align 8, !tbaa !36
  %.sroa.5.0..sroa_idx.i2939 = getelementptr inbounds nuw i8, ptr %i.bqs, i64 16
  store ptr %.val2189, ptr %.sroa.5.0..sroa_idx.i2939, align 8, !tbaa !36
  %.sroa.6.0..sroa_idx.i2940 = getelementptr inbounds nuw i8, ptr %i.bqs, i64 24
  %.sroa.11.0..sroa_idx.i2942 = getelementptr inbounds nuw i8, ptr %i.bqs, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i2940, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.0..sroa_idx.i2942, i8 0, i64 16, i1 false)
  tail call fastcc void @pm_interpolated_string_node_append(ptr noundef %i.bqs, ptr noundef nonnull %.01910.ph)
  br label %bb.wh

bb.wg:                                            ; preds = %bb.wd
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 19806, ptr noundef nonnull @__PRETTY_FUNCTION__.parse_expression_prefix) #26
  unreachable

bb.wh:                                            ; preds = %bb.wd, %pm_interpolated_string_node_create.exit2944, %pm_interpolated_string_node_create.exit2926
  %.41914 = phi ptr [ %i.bqk, %pm_interpolated_string_node_create.exit2926 ], [ %i.bqs, %pm_interpolated_string_node_create.exit2944 ], [ %.01910.ph, %bb.wd ] ; 2 uses
  %i.bqz = tail call fastcc ptr @parse_string_part(ptr noundef %0, i16 noundef zeroext %i.bnt)
  tail call fastcc void @pm_interpolated_string_node_append(ptr noundef %.41914, ptr noundef %i.bqz)
  br label %.outer3765.backedge

accept1.exit.i2946:                               ; preds = %bb.va
  %i.bra = load ptr, ptr %i.boh, align 8, !tbaa !180 ; 3 uses
  %i.brb = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.boi, ptr noundef %i.bra, ptr noundef %i.bra, i32 noundef 184) #27 ; 0 uses
  store ptr %i.bra, ptr %i.boj, align 8, !tbaa !181
  store i32 163, ptr %i.bnp, align 8, !tbaa !163
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %bb.va, !llvm.loop !456

bb.wi:                                            ; preds = %bb.va, %bb.va
  %.not2018 = icmp eq ptr %.01910.ph, null
  br i1 %.not2018, label %bb.wk, label %bb.wj

bb.wj:                                            ; preds = %bb.wi
  tail call fastcc void @pm_array_node_elements_append(ptr noundef %i.bnq, ptr noundef nonnull %.01910.ph)
  %.val2085.pre = load i32, ptr %i.b, align 8, !tbaa !154
  br label %bb.wk

bb.wk:                                            ; preds = %bb.wj, %bb.wi
  %.val2085 = phi i32 [ %.val2085.pre, %bb.wj ], [ %.val2136, %bb.wi ]
  call void @llvm.lifetime.start.p0(ptr nonnull %93) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %93, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !tbaa.struct !149
  %i.brc = icmp eq i32 %.val2085, 1
  br i1 %i.brc, label %bb.wl, label %bb.wm

bb.wl:                                            ; preds = %bb.wk
  %i.brd = getelementptr inbounds nuw i8, ptr %90, i64 8
  %.val2044 = load ptr, ptr %i.brd, align 8, !tbaa !127
  %i.bre = getelementptr inbounds nuw i8, ptr %90, i64 16
  %.val2045 = load ptr, ptr %i.bre, align 8, !tbaa !128
  %i.brf = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.boi, ptr noundef %.val2044, ptr noundef %.val2045, i32 noundef 185) #27 ; 0 uses
  %i.brg = load ptr, ptr %i.boh, align 8, !tbaa !180 ; 2 uses
  store i32 163, ptr %93, align 8, !tbaa !31
  %.sroa.279.0..sroa_idx = getelementptr inbounds nuw i8, ptr %93, i64 4
  store i32 0, ptr %.sroa.279.0..sroa_idx, align 4
  %.sroa.380.0..sroa_idx = getelementptr inbounds nuw i8, ptr %93, i64 8
  store ptr %i.brg, ptr %.sroa.380.0..sroa_idx, align 8, !tbaa !36
  %.sroa.481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %93, i64 16
  store ptr %i.brg, ptr %.sroa.481.0..sroa_idx, align 8, !tbaa !36
  br label %bb.wn

bb.wm:                                            ; preds = %bb.wk
  tail call fastcc void @expect1(ptr noundef nonnull %0, i32 noundef 149, i32 noundef 185)
  br label %bb.wn

bb.wn:                                            ; preds = %bb.wm, %bb.wl
  call fastcc void @pm_array_node_close_set(ptr noundef %i.bnq, ptr noundef nonnull %93)
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #27
  br label %.loopexit3339

bb.wo:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %94) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %94, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !tbaa.struct !149
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.val2084 = load i32, ptr %i.b, align 8, !tbaa !154
  switch i32 %.val2084, label %bb.wv [
    i32 140, label %bb.wp
    i32 148, label %bb.wq
  ]

bb.wp:                                            ; preds = %bb.wo
  %i.brh = getelementptr i8, ptr %0, i64 320
  %i.bri = getelementptr i8, ptr %0, i64 336
  %i.brj = load ptr, ptr %i.bri, align 8, !tbaa !180 ; 2 uses
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.brk = call fastcc ptr @pm_regular_expression_node_create(ptr noundef nonnull %0, ptr noundef %94, ptr %i.brj, ptr %i.brj, ptr noundef %i.brh) ; 2 uses
  %i.brl = getelementptr i8, ptr %i.brk, i64 2    ; 2 uses
  %i.brm = load i16, ptr %i.brl, align 2, !tbaa !116
  %i.brn = or i16 %i.brm, 4096
  store i16 %i.brn, ptr %i.brl, align 2, !tbaa !116
  br label %bb.xh

bb.wq:                                            ; preds = %bb.wo
  call void @llvm.lifetime.start.p0(ptr nonnull %95) #27
  %i.bro = getelementptr i8, ptr %0, i64 640
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %95, ptr noundef nonnull align 8 dereferenceable(24) %i.bro, i64 24, i1 false), !tbaa.struct !42
  call void @llvm.lifetime.start.p0(ptr nonnull %96) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %96, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !tbaa.struct !149
  %i.brp = getelementptr i8, ptr %0, i64 703
  %i.brq = load i8, ptr %i.brp, align 1, !tbaa !192, !range !64, !noundef !65
  %i.brr = trunc nuw i8 %i.brq to i1
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.val.i2949 = load i32, ptr %i.b, align 8, !tbaa !154
  %i.brs = icmp eq i32 %.val.i2949, 140
  br i1 %i.brs, label %bb.wr, label %accept1.exit2950

bb.wr:                                            ; preds = %bb.wq
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.brt = getelementptr i8, ptr %0, i64 320
  %i.bru = call fastcc ptr @pm_regular_expression_node_create_unescaped(ptr noundef nonnull %0, ptr noundef %94, ptr noundef %96, ptr noundef %i.brt, ptr noundef %95) ; 3 uses
  %.val2082 = load i32, ptr %i.b, align 8, !tbaa !154
  %i.brv = icmp eq i32 %.val2082, 54
  br i1 %i.brv, label %.thread3309, label %bb.ws

bb.ws:                                            ; preds = %bb.wr
  tail call fastcc void @parse_regular_expression_errors(ptr noundef nonnull %0, ptr noundef %i.bru)
  br label %.thread3309

.thread3309:                                      ; preds = %bb.wr, %bb.ws
  %i.brw = getelementptr i8, ptr %i.bru, i64 2    ; 3 uses
  %i.brx = load i16, ptr %i.brw, align 2, !tbaa !116
  %i.bry = call fastcc zeroext i16 @parse_and_validate_regular_expression_encoding(ptr noundef nonnull %0, ptr noundef %95, i1 noundef zeroext %i.brr, i16 noundef zeroext %i.brx)
  %i.brz = load i16, ptr %i.brw, align 2, !tbaa !116
  %i.bsa = or i16 %i.brz, %i.bry
  store i16 %i.bsa, ptr %i.brw, align 2, !tbaa !116
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #27
  br label %bb.xh

accept1.exit2950:                                 ; preds = %bb.wq
  %i.bsb = getelementptr inbounds nuw i8, ptr %94, i64 8
  %.val2323 = load ptr, ptr %i.bsb, align 8       ; 2 uses
  %i.bsc = getelementptr inbounds nuw i8, ptr %94, i64 16
  %.val2324 = load ptr, ptr %i.bsc, align 8       ; 2 uses
  %i.bsd = tail call fastcc ptr @pm_interpolated_regular_expression_node_create(ptr noundef nonnull %0, ptr %.val2323, ptr %.val2324) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %97) #27
  %i.bse = getelementptr i8, ptr %0, i64 304
  %.val2187 = load ptr, ptr %i.bse, align 8, !tbaa !86 ; 4 uses
  store i32 164, ptr %97, align 8, !tbaa !126, !alias.scope !504
  %i.bsf = getelementptr inbounds nuw i8, ptr %97, i64 4
  store i32 0, ptr %i.bsf, align 4, !alias.scope !504
  %i.bsg = getelementptr inbounds nuw i8, ptr %97, i64 8
  store ptr %.val2187, ptr %i.bsg, align 8, !tbaa !127, !alias.scope !504
  %i.bsh = getelementptr inbounds nuw i8, ptr %97, i64 16
  store ptr %.val2187, ptr %i.bsh, align 8, !tbaa !128, !alias.scope !504
  call void @llvm.lifetime.start.p0(ptr nonnull %98) #27
  store i32 164, ptr %98, align 8, !tbaa !126, !alias.scope !505
  %i.bsi = getelementptr inbounds nuw i8, ptr %98, i64 4
  store i32 0, ptr %i.bsi, align 4, !alias.scope !505
  %i.bsj = getelementptr inbounds nuw i8, ptr %98, i64 8
  store ptr %.val2187, ptr %i.bsj, align 8, !tbaa !127, !alias.scope !505
  %i.bsk = getelementptr inbounds nuw i8, ptr %98, i64 16
  store ptr %.val2187, ptr %i.bsk, align 8, !tbaa !128, !alias.scope !505
  %i.bsl = getelementptr i8, ptr %0, i64 320
  %i.bsm = call fastcc ptr @pm_string_node_create_unescaped(ptr noundef nonnull %0, ptr noundef %97, ptr noundef %i.bsl, ptr noundef nonnull %98, ptr noundef nonnull %95) ; 2 uses
  %i.bsn = getelementptr i8, ptr %0, i64 520
  %i.bso = load ptr, ptr %i.bsn, align 8, !tbaa !60
  %i.bsp = icmp eq ptr %i.bso, getelementptr inbounds nuw (i8, ptr @pm_encodings, i64 48)
  br i1 %i.bsp, label %bb.wt, label %bb.wu

bb.wt:                                            ; preds = %accept1.exit2950
  %i.bsq = getelementptr i8, ptr %i.bsm, i64 2    ; 2 uses
  %i.bsr = load i16, ptr %i.bsq, align 2, !tbaa !116
  %i.bss = or i16 %i.bsr, 8
  store i16 %i.bss, ptr %i.bsq, align 2, !tbaa !116
  br label %bb.wu

bb.wu:                                            ; preds = %accept1.exit2950, %bb.wt
  tail call fastcc void @pm_interpolated_regular_expression_node_append(ptr noundef nonnull %i.bsd, ptr noundef %i.bsm)
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #27
  br label %bb.ww

bb.wv:                                            ; preds = %bb.wo
  %i.bst = getelementptr inbounds nuw i8, ptr %94, i64 8
  %.val2321 = load ptr, ptr %i.bst, align 8       ; 2 uses
  %i.bsu = getelementptr inbounds nuw i8, ptr %94, i64 16
  %.val2322 = load ptr, ptr %i.bsu, align 8       ; 2 uses
  %i.bsv = tail call fastcc ptr @pm_interpolated_regular_expression_node_create(ptr noundef nonnull %0, ptr %.val2321, ptr %.val2322)
  br label %bb.ww

bb.ww:                                            ; preds = %bb.wu, %bb.wv
  %.val2043 = phi ptr [ %.val2324, %bb.wu ], [ %.val2322, %bb.wv ]
  %.val2042 = phi ptr [ %.val2323, %bb.wu ], [ %.val2321, %bb.wv ]
  %.11905 = phi ptr [ %i.bsd, %bb.wu ], [ %i.bsv, %bb.wv ] ; 8 uses
  %i.bsw = add i16 %5, 1
  %i.bsx = getelementptr i8, ptr %.11905, i64 8   ; 2 uses
  %i.bsy = getelementptr i8, ptr %.11905, i64 16  ; 3 uses
  %i.bsz = getelementptr i8, ptr %.11905, i64 40
  br label %bb.wx

bb.wx:                                            ; preds = %.backedge3777, %bb.ww
  %.val2135 = load i32, ptr %i.b, align 8, !tbaa !154 ; 2 uses
  switch i32 %.val2135, label %bb.wy [
    i32 140, label %bb.xd
    i32 1, label %bb.xd
  ]

bb.wy:                                            ; preds = %bb.wx
  %i.bta = tail call fastcc ptr @parse_string_part(ptr noundef nonnull %0, i16 noundef zeroext %i.bsw) ; 4 uses
  %.not2017 = icmp eq ptr %i.bta, null
  br i1 %.not2017, label %.backedge3777, label %bb.wz

bb.wz:                                            ; preds = %bb.wy
  %i.btb = load ptr, ptr %i.bsx, align 8, !tbaa !238
  %i.btc = getelementptr i8, ptr %i.bta, i64 8
  %i.btd = load ptr, ptr %i.btc, align 8, !tbaa !133 ; 2 uses
  %i.bte = icmp ugt ptr %i.btb, %i.btd
  br i1 %i.bte, label %bb.xa, label %bb.xb

bb.xa:                                            ; preds = %bb.wz
  store ptr %i.btd, ptr %i.bsx, align 8, !tbaa !238
  br label %bb.xb

bb.xb:                                            ; preds = %bb.xa, %bb.wz
end_hunk_7
begin_hunk_8_@pm_constant_path_node_create:bb.a
  %i.aa = getelementptr i8, ptr %3, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !127
  store i16 37, ptr %i.f, align 8, !tbaa !110
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.u, ptr %.sroa.33.0..sroa_idx, align 4, !tbaa !31
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ac = getelementptr i8, ptr %1, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !133
  %i.ae = getelementptr i8, ptr %2, i64 8
  %i.af = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !36
  %i.ag = getelementptr i8, ptr %3, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !127
  store i16 37, ptr %i.f, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.u, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !31
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.ad, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !36
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink50 = phi i64 [ 16, %bb.g ], [ 8, %bb.f ]
  %.sink49 = phi ptr [ %i.w, %bb.g ], [ %i.z, %bb.f ]
  %.sink48 = phi i64 [ 24, %bb.g ], [ 16, %bb.f ]
  %.sink47 = phi ptr [ %1, %bb.g ], [ %i.w, %bb.f ]
  %.sink41 = phi ptr [ %i.ah, %bb.g ], [ %i.ab, %bb.f ]
  %i.ai = phi <2 x ptr> [ %i.af, %bb.g ], [ %i.y, %bb.f ]
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sink50
  store ptr %.sink49, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !36
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sink48
  store ptr %.sink47, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !37
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i32 %.0, ptr %i.aj, align 8, !tbaa !31
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  store i32 0, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store <2 x ptr> %i.ai, ptr %i.al, align 8, !tbaa !36
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store ptr %.sink41, ptr %i.am, align 8, !tbaa !36
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store ptr %i.w, ptr %i.an, align 8, !tbaa !36
  ret ptr %i.f
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noalias nonnull ptr @pm_range_node_create(ptr noundef %0, ptr noundef %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc ptr @pm_check_value_expression(ptr noundef %0, ptr noundef readonly %1) ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %pm_assert_value_expression.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !tbaa !133
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val5.i = load ptr, ptr %i.c, align 8, !tbaa !134
  %i.d = getelementptr i8, ptr %0, i64 472
  %i.e = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.d, ptr noundef %.val.i, ptr noundef %.val5.i, i32 noundef 290) #27 ; 0 uses
  br label %pm_assert_value_expression.exit

pm_assert_value_expression.exit:                  ; preds = %bb.a, %bb.b
  %i.f = tail call fastcc ptr @pm_check_value_expression(ptr noundef %0, ptr noundef readonly %3) ; 3 uses
  %.not.i37 = icmp eq ptr %i.f, null
  br i1 %.not.i37, label %pm_assert_value_expression.exit40, label %bb.c

bb.c:                                             ; preds = %pm_assert_value_expression.exit
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %.val.i38 = load ptr, ptr %i.g, align 8, !tbaa !133
  %i.h = getelementptr i8, ptr %i.f, i64 16
  %.val5.i39 = load ptr, ptr %i.h, align 8, !tbaa !134
  %i.i = getelementptr i8, ptr %0, i64 472
  %i.j = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.i, ptr noundef %.val.i38, ptr noundef %.val5.i39, i32 noundef 290) #27 ; 0 uses
  br label %pm_assert_value_expression.exit40

pm_assert_value_expression.exit40:                ; preds = %pm_assert_value_expression.exit, %bb.c
  %i.k = tail call noalias dereferenceable_or_null(56) ptr @calloc(i64 noundef 1, i64 noundef 56) #30 ; 10 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %pm_node_alloc.exit

bb.d:                                             ; preds = %pm_assert_value_expression.exit40
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !108
  %i.n = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.m, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 56) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %pm_assert_value_expression.exit40
  %i.o = load i32, ptr %2, align 8, !tbaa !126    ; 2 uses
  %switch.selectcmp.case1 = icmp eq i32 %i.o, 44
  %switch.selectcmp.case2 = icmp eq i32 %i.o, 155
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %i.p = select i1 %switch.selectcmp, i16 4, i16 0 ; 3 uses
  %i.q = icmp eq ptr %1, null                     ; 2 uses
  br i1 %i.q, label %bb.f, label %bb.e

bb.e:                                             ; preds = %pm_node_alloc.exit
  %i.r = load i16, ptr %1, align 8, !tbaa !115
  switch i16 %i.r, label %bb.i [
    i16 108, label %bb.f
    i16 82, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %pm_node_alloc.exit
  %i.s = icmp eq ptr %3, null
  br i1 %i.s, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load i16, ptr %3, align 8, !tbaa !115
  switch i16 %i.t, label %bb.i [
    i16 108, label %bb.h
    i16 82, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g, %bb.f
  %i.u = or disjoint i16 %i.p, 2
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.e, %bb.h
  %.1 = phi i16 [ %i.u, %bb.h ], [ %i.p, %bb.g ], [ %i.p, %bb.e ]
  %i.v = load i32, ptr %0, align 8, !tbaa !109
  %i.w = add i32 %i.v, 1                          ; 2 uses
  store i32 %i.w, ptr %0, align 8, !tbaa !109
  %. = select i1 %i.q, ptr %2, ptr %1
  %.in = getelementptr i8, ptr %., i64 8
  %i.x = load ptr, ptr %.in, align 8, !tbaa !36
  %i.y = icmp eq ptr %3, null
  %.pn36 = select i1 %i.y, ptr %2, ptr %3
  %.in35 = getelementptr i8, ptr %.pn36, i64 16
  %i.z = load ptr, ptr %.in35, align 8, !tbaa !36
  %i.aa = getelementptr i8, ptr %2, i64 8
  store i16 122, ptr %i.k, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store i16 %.1, ptr %.sroa.2.0..sroa_idx, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 %i.w, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !31
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.x, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !36
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.z, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !36
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr %1, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !106
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr %3, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !106
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.ab = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !36
  store <2 x ptr> %i.ab, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !36
  ret ptr %i.k
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noalias nonnull ptr @pm_float_node_create(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load i32, ptr %1, align 8, !tbaa !126
  %i.c = icmp eq i32 %i.b, 55
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.2, i32 noundef 3895, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_float_node_create) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #30 ; 8 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %pm_node_alloc.exit

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !108
  %i.g = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.f, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 32) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.c
  %i.h = load i32, ptr %0, align 8, !tbaa !109
  %i.i = add i32 %i.h, 1                          ; 2 uses
  store i32 %i.i, ptr %0, align 8, !tbaa !109
  %i.j = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !127  ; 3 uses
  %i.l = getelementptr i8, ptr %1, i64 16         ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !128  ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o                       ; 12 uses
  %i.q = icmp slt i64 %i.p, 1
  br i1 %i.q, label %pm_double_parse.exit, label %bb.e

bb.e:                                             ; preds = %pm_node_alloc.exit
  %i.r = add nuw i64 %i.p, 1
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.r) #28 ; 46 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.s, ptr noundef nonnull align 1 %i.k, i64 noundef %i.p, i1 noundef false) #27
  %i.t = tail call ptr @localeconv() #27
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !533
  %i.v = load i8, ptr %i.u, align 1, !tbaa !83    ; 42 uses
  %.not.i = icmp eq i8 %i.v, 46
  br i1 %.not.i, label %.loopexit.i.preheader, label %iter.check

.loopexit.i.preheader:                            ; preds = %bb.g, %middle.block, %vec.epilog.middle.block, %bb.e
  br label %.loopexit.i

iter.check:                                       ; preds = %bb.e
  %min.iters.check = icmp ult i64 %i.p, 8
  br i1 %min.iters.check, label %.preheader.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check13 = icmp ult i64 %i.p, 32
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.w = and i64 %i.p, 24
  %n.vec = and i64 %i.p, 9223372036854775776      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %pred.store.continue76
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue76 ] ; 33 uses
  %i.x = getelementptr i8, ptr %i.s, i64 %index   ; 3 uses
  %i.y = getelementptr i8, ptr %i.x, i64 16
  %wide.load = load <16 x i8>, ptr %i.x, align 1, !tbaa !83
  %wide.load14 = load <16 x i8>, ptr %i.y, align 1, !tbaa !83
  %i.z = icmp eq <16 x i8> %wide.load, splat (i8 46) ; 16 uses
  %i.aa = icmp eq <16 x i8> %wide.load14, splat (i8 46) ; 16 uses
  %i.ab = extractelement <16 x i1> %i.z, i64 0
  br i1 %i.ab, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i8 %i.v, ptr %i.x, align 1, !tbaa !83
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.ac = extractelement <16 x i1> %i.z, i64 1
  br i1 %i.ac, label %pred.store.if15, label %pred.store.continue16

pred.store.if15:                                  ; preds = %pred.store.continue
  %i.ad = getelementptr i8, ptr %i.s, i64 %index
  %i.ae = getelementptr i8, ptr %i.ad, i64 1
  store i8 %i.v, ptr %i.ae, align 1, !tbaa !83
  br label %pred.store.continue16

pred.store.continue16:                            ; preds = %pred.store.if15, %pred.store.continue
  %i.af = extractelement <16 x i1> %i.z, i64 2
  br i1 %i.af, label %pred.store.if17, label %pred.store.continue18

pred.store.if17:                                  ; preds = %pred.store.continue16
  %i.ag = getelementptr i8, ptr %i.s, i64 %index
  %i.ah = getelementptr i8, ptr %i.ag, i64 2
  store i8 %i.v, ptr %i.ah, align 1, !tbaa !83
  br label %pred.store.continue18

pred.store.continue18:                            ; preds = %pred.store.if17, %pred.store.continue16
  %i.ai = extractelement <16 x i1> %i.z, i64 3
  br i1 %i.ai, label %pred.store.if19, label %pred.store.continue20

pred.store.if19:                                  ; preds = %pred.store.continue18
  %i.aj = getelementptr i8, ptr %i.s, i64 %index
  %i.ak = getelementptr i8, ptr %i.aj, i64 3
  store i8 %i.v, ptr %i.ak, align 1, !tbaa !83
  br label %pred.store.continue20

pred.store.continue20:                            ; preds = %pred.store.if19, %pred.store.continue18
  %i.al = extractelement <16 x i1> %i.z, i64 4
  br i1 %i.al, label %pred.store.if21, label %pred.store.continue22

pred.store.if21:                                  ; preds = %pred.store.continue20
  %i.am = getelementptr i8, ptr %i.s, i64 %index
  %i.an = getelementptr i8, ptr %i.am, i64 4
  store i8 %i.v, ptr %i.an, align 1, !tbaa !83
  br label %pred.store.continue22

pred.store.continue22:                            ; preds = %pred.store.if21, %pred.store.continue20
  %i.ao = extractelement <16 x i1> %i.z, i64 5
  br i1 %i.ao, label %pred.store.if23, label %pred.store.continue24

pred.store.if23:                                  ; preds = %pred.store.continue22
  %i.ap = getelementptr i8, ptr %i.s, i64 %index
  %i.aq = getelementptr i8, ptr %i.ap, i64 5
  store i8 %i.v, ptr %i.aq, align 1, !tbaa !83
  br label %pred.store.continue24

pred.store.continue24:                            ; preds = %pred.store.if23, %pred.store.continue22
  %i.ar = extractelement <16 x i1> %i.z, i64 6
  br i1 %i.ar, label %pred.store.if25, label %pred.store.continue26

pred.store.if25:                                  ; preds = %pred.store.continue24
  %i.as = getelementptr i8, ptr %i.s, i64 %index
  %i.at = getelementptr i8, ptr %i.as, i64 6
  store i8 %i.v, ptr %i.at, align 1, !tbaa !83
  br label %pred.store.continue26

pred.store.continue26:                            ; preds = %pred.store.if25, %pred.store.continue24
  %i.au = extractelement <16 x i1> %i.z, i64 7
  br i1 %i.au, label %pred.store.if27, label %pred.store.continue28

pred.store.if27:                                  ; preds = %pred.store.continue26
  %i.av = getelementptr i8, ptr %i.s, i64 %index
  %i.aw = getelementptr i8, ptr %i.av, i64 7
  store i8 %i.v, ptr %i.aw, align 1, !tbaa !83
  br label %pred.store.continue28

pred.store.continue28:                            ; preds = %pred.store.if27, %pred.store.continue26
  %i.ax = extractelement <16 x i1> %i.z, i64 8
  br i1 %i.ax, label %pred.store.if29, label %pred.store.continue30

pred.store.if29:                                  ; preds = %pred.store.continue28
  %i.ay = getelementptr i8, ptr %i.s, i64 %index
  %i.az = getelementptr i8, ptr %i.ay, i64 8
  store i8 %i.v, ptr %i.az, align 1, !tbaa !83
  br label %pred.store.continue30

pred.store.continue30:                            ; preds = %pred.store.if29, %pred.store.continue28
  %i.ba = extractelement <16 x i1> %i.z, i64 9
  br i1 %i.ba, label %pred.store.if31, label %pred.store.continue32

pred.store.if31:                                  ; preds = %pred.store.continue30
  %i.bb = getelementptr i8, ptr %i.s, i64 %index
  %i.bc = getelementptr i8, ptr %i.bb, i64 9
  store i8 %i.v, ptr %i.bc, align 1, !tbaa !83
  br label %pred.store.continue32

pred.store.continue32:                            ; preds = %pred.store.if31, %pred.store.continue30
  %i.bd = extractelement <16 x i1> %i.z, i64 10
  br i1 %i.bd, label %pred.store.if33, label %pred.store.continue34

pred.store.if33:                                  ; preds = %pred.store.continue32
  %i.be = getelementptr i8, ptr %i.s, i64 %index
  %i.bf = getelementptr i8, ptr %i.be, i64 10
  store i8 %i.v, ptr %i.bf, align 1, !tbaa !83
  br label %pred.store.continue34

pred.store.continue34:                            ; preds = %pred.store.if33, %pred.store.continue32
  %i.bg = extractelement <16 x i1> %i.z, i64 11
  br i1 %i.bg, label %pred.store.if35, label %pred.store.continue36

pred.store.if35:                                  ; preds = %pred.store.continue34
  %i.bh = getelementptr i8, ptr %i.s, i64 %index
  %i.bi = getelementptr i8, ptr %i.bh, i64 11
  store i8 %i.v, ptr %i.bi, align 1, !tbaa !83
  br label %pred.store.continue36

pred.store.continue36:                            ; preds = %pred.store.if35, %pred.store.continue34
  %i.bj = extractelement <16 x i1> %i.z, i64 12
  br i1 %i.bj, label %pred.store.if37, label %pred.store.continue38

pred.store.if37:                                  ; preds = %pred.store.continue36
  %i.bk = getelementptr i8, ptr %i.s, i64 %index
  %i.bl = getelementptr i8, ptr %i.bk, i64 12
  store i8 %i.v, ptr %i.bl, align 1, !tbaa !83
  br label %pred.store.continue38

pred.store.continue38:                            ; preds = %pred.store.if37, %pred.store.continue36
  %i.bm = extractelement <16 x i1> %i.z, i64 13
  br i1 %i.bm, label %pred.store.if39, label %pred.store.continue40

pred.store.if39:                                  ; preds = %pred.store.continue38
  %i.bn = getelementptr i8, ptr %i.s, i64 %index
  %i.bo = getelementptr i8, ptr %i.bn, i64 13
  store i8 %i.v, ptr %i.bo, align 1, !tbaa !83
  br label %pred.store.continue40

pred.store.continue40:                            ; preds = %pred.store.if39, %pred.store.continue38
  %i.bp = extractelement <16 x i1> %i.z, i64 14
  br i1 %i.bp, label %pred.store.if41, label %pred.store.continue42

pred.store.if41:                                  ; preds = %pred.store.continue40
  %i.bq = getelementptr i8, ptr %i.s, i64 %index
  %i.br = getelementptr i8, ptr %i.bq, i64 14
  store i8 %i.v, ptr %i.br, align 1, !tbaa !83
  br label %pred.store.continue42

pred.store.continue42:                            ; preds = %pred.store.if41, %pred.store.continue40
  %i.bs = extractelement <16 x i1> %i.z, i64 15
  br i1 %i.bs, label %pred.store.if43, label %pred.store.continue44

pred.store.if43:                                  ; preds = %pred.store.continue42
  %i.bt = getelementptr i8, ptr %i.s, i64 %index
  %i.bu = getelementptr i8, ptr %i.bt, i64 15
  store i8 %i.v, ptr %i.bu, align 1, !tbaa !83
  br label %pred.store.continue44

pred.store.continue44:                            ; preds = %pred.store.if43, %pred.store.continue42
  %i.bv = extractelement <16 x i1> %i.aa, i64 0
  br i1 %i.bv, label %pred.store.if45, label %pred.store.continue46

pred.store.if45:                                  ; preds = %pred.store.continue44
  %i.bw = getelementptr i8, ptr %i.s, i64 %index
  %i.bx = getelementptr i8, ptr %i.bw, i64 16
  store i8 %i.v, ptr %i.bx, align 1, !tbaa !83
  br label %pred.store.continue46

pred.store.continue46:                            ; preds = %pred.store.if45, %pred.store.continue44
  %i.by = extractelement <16 x i1> %i.aa, i64 1
  br i1 %i.by, label %pred.store.if47, label %pred.store.continue48

pred.store.if47:                                  ; preds = %pred.store.continue46
  %i.bz = getelementptr i8, ptr %i.s, i64 %index
  %i.ca = getelementptr i8, ptr %i.bz, i64 17
  store i8 %i.v, ptr %i.ca, align 1, !tbaa !83
  br label %pred.store.continue48

pred.store.continue48:                            ; preds = %pred.store.if47, %pred.store.continue46
  %i.cb = extractelement <16 x i1> %i.aa, i64 2
  br i1 %i.cb, label %pred.store.if49, label %pred.store.continue50

pred.store.if49:                                  ; preds = %pred.store.continue48
  %i.cc = getelementptr i8, ptr %i.s, i64 %index
  %i.cd = getelementptr i8, ptr %i.cc, i64 18
  store i8 %i.v, ptr %i.cd, align 1, !tbaa !83
end_hunk_8
begin_hunk_9_@parse_symbol:bb.a
expect1.exit203.pm_interpolated_symbol_node_closing_loc_set.exit206_crit_edge: ; preds = %expect1.exit203
  %.phi.trans.insert72 = getelementptr i8, ptr %0, i64 336
  %.pre73 = load ptr, ptr %.phi.trans.insert72, align 8, !tbaa !128
  br label %pm_interpolated_symbol_node_closing_loc_set.exit206

expect1.exit203._crit_edge:                       ; preds = %expect1.exit203
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 328
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !127
  br label %bb.bb

bb.bb:                                            ; preds = %expect1.exit203._crit_edge, %expect1.exit203.thread
  %i.fz = phi ptr [ %.pre, %expect1.exit203._crit_edge ], [ %i.fu, %expect1.exit203.thread ]
  %i.ga = getelementptr i8, ptr %0, i64 336
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !128 ; 2 uses
  br label %pm_interpolated_symbol_node_closing_loc_set.exit206

pm_interpolated_symbol_node_closing_loc_set.exit206: ; preds = %expect1.exit203.pm_interpolated_symbol_node_closing_loc_set.exit206_crit_edge, %bb.bb
  %i.gc = phi ptr [ %i.gb, %bb.bb ], [ %.pre73, %expect1.exit203.pm_interpolated_symbol_node_closing_loc_set.exit206_crit_edge ]
  %.sink8.i204 = phi ptr [ %i.fz, %bb.bb ], [ null, %expect1.exit203.pm_interpolated_symbol_node_closing_loc_set.exit206_crit_edge ]
  %.sink.i205 = phi ptr [ %i.gb, %bb.bb ], [ null, %expect1.exit203.pm_interpolated_symbol_node_closing_loc_set.exit206_crit_edge ]
  store ptr %.sink8.i204, ptr %.sroa.11.0..sroa_idx.i157, align 8, !tbaa !36
  store ptr %.sink.i205, ptr %.sroa.13.0..sroa_idx.i158, align 8, !tbaa !36
  store ptr %i.gc, ptr %.sroa.5.0..sroa_idx.i153, align 8, !tbaa !235
  br label %bb.bn

bb.bc:                                            ; preds = %bb.aq
  %i.gd = getelementptr i8, ptr %0, i64 336
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !180 ; 4 uses
  call void @pm_string_shared_init(ptr noundef nonnull %5, ptr noundef %i.ge, ptr noundef %i.ge) #27
  br label %bb.bd

bb.bd:                                            ; preds = %bb.ar, %bb.bc
  %.sroa.5.0 = phi ptr [ %.sroa.5.0.copyload, %bb.ar ], [ %i.ge, %bb.bc ] ; 2 uses
  %.sroa.10.0 = phi ptr [ %.sroa.10.0.copyload, %bb.ar ], [ %i.ge, %bb.bc ] ; 2 uses
  %.not101 = icmp eq i32 %1, 0
  br i1 %.not101, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gf = getelementptr i8, ptr %0, i64 4
  store i32 %1, ptr %i.gf, align 4, !tbaa !160
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.val112 = load i32, ptr %i.ea, align 8, !tbaa !154
  switch i32 %.val112, label %accept1.exit.i208 [
    i32 1, label %bb.bg
    i32 149, label %accept1.exit.thread.i209
  ]

bb.bg:                                            ; preds = %bb.bf
  %i.gg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val = load ptr, ptr %i.gg, align 8, !tbaa !127
  %i.gh = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val109 = load ptr, ptr %i.gh, align 8, !tbaa !128
  %i.gi = getelementptr i8, ptr %0, i64 472
  %i.gj = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.gi, ptr noundef %.val, ptr noundef %.val109, i32 noundef 271) #27 ; 0 uses
  br label %expect1.exit210

accept1.exit.thread.i209:                         ; preds = %bb.bf
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %expect1.exit210

accept1.exit.i208:                                ; preds = %bb.bf
  %i.gk = getelementptr i8, ptr %0, i64 336
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !180 ; 3 uses
  %i.gm = getelementptr i8, ptr %0, i64 472
  %i.gn = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.gm, ptr noundef %i.gl, ptr noundef %i.gl, i32 noundef 271) #27 ; 0 uses
  %i.go = getelementptr i8, ptr %0, i64 328
  store ptr %i.gl, ptr %i.go, align 8, !tbaa !181
  store i32 163, ptr %i.a, align 8, !tbaa !163
  br label %expect1.exit210

expect1.exit210:                                  ; preds = %accept1.exit.i208, %accept1.exit.thread.i209, %bb.bg
  %i.gp = getelementptr i8, ptr %0, i64 672
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !168 ; 2 uses
  %.not.i211 = icmp eq ptr %i.gq, null
  br i1 %.not.i211, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %expect1.exit210
  %i.gr = icmp eq ptr %i.gq, @pm_encodings
  br i1 %i.gr, label %parse_symbol_encoding.exit219, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gs = getelementptr i8, ptr %0, i64 520
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !60
  %.not71 = icmp eq ptr %i.gt, getelementptr inbounds nuw (i8, ptr @pm_encodings, i64 48)
  %i.gu = select i1 %.not71, i16 10, i16 2
  br label %parse_symbol_encoding.exit219

bb.bj:                                            ; preds = %expect1.exit210
  %i.gv = call i64 @pm_string_length(ptr noundef nonnull %5) #27 ; 2 uses
  %i.gw = call ptr @pm_string_source(ptr noundef nonnull %5) #27
  %.not1011.i.i214 = icmp eq i64 %i.gv, 0
  br i1 %.not1011.i.i214, label %parse_symbol_encoding.exit219, label %.lr.ph.i24.i215

bb.bk:                                            ; preds = %.lr.ph.i24.i215
  %i.gx = add nuw i64 %.0812.i.i216, 1            ; 2 uses
  %exitcond.not.i.i218 = icmp eq i64 %i.gx, %i.gv
  br i1 %exitcond.not.i.i218, label %parse_symbol_encoding.exit219, label %.lr.ph.i24.i215, !llvm.loop !17

.lr.ph.i24.i215:                                  ; preds = %bb.bj, %bb.bk
  %.0812.i.i216 = phi i64 [ %i.gx, %bb.bk ], [ 0, %bb.bj ] ; 2 uses
  %i.gy = getelementptr i8, ptr %i.gw, i64 %.0812.i.i216
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !83
  %.not.i25.i217 = icmp sgt i8 %i.gz, -1
  br i1 %.not.i25.i217, label %bb.bk, label %parse_symbol_encoding.exit219

parse_symbol_encoding.exit219:                    ; preds = %.lr.ph.i24.i215, %bb.bk, %bb.bh, %bb.bj, %bb.bi
  %.0.i213 = phi i16 [ %i.gu, %bb.bi ], [ 18, %bb.bj ], [ 6, %bb.bh ], [ 18, %bb.bk ], [ 2, %.lr.ph.i24.i215 ]
  %i.ha = call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 1, i64 noundef 96) #30 ; 13 uses
  %i.hb = icmp eq ptr %i.ha, null
  br i1 %i.hb, label %bb.bl, label %pm_node_alloc.exit.i220

bb.bl:                                            ; preds = %parse_symbol_encoding.exit219
  %i.hc = load ptr, ptr @stderr, align 8, !tbaa !108
  %i.hd = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.hc, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 96) #27 ; 0 uses
  call void @abort() #26
  unreachable

pm_node_alloc.exit.i220:                          ; preds = %parse_symbol_encoding.exit219
  %i.he = load i32, ptr %4, align 8, !tbaa !126
  %i.hf = icmp eq i32 %i.he, 164                  ; 5 uses
  %.sroa.gep25 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.speculate.load.false = load ptr, ptr %.sroa.gep25, align 8, !tbaa !127 ; 3 uses
  %.sroa.speculated34 = select i1 %i.hf, ptr %.sroa.5.0, ptr %.sroa.speculate.load.false
  %i.hg = load i32, ptr %i.a, align 8, !tbaa !126
  %i.hh = icmp eq i32 %i.hg, 164
  br i1 %i.hh, label %pm_node_alloc.exit.i220.cont.thread, label %bb.bm

pm_node_alloc.exit.i220.cont.thread:              ; preds = %pm_node_alloc.exit.i220
  %i.hi = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.hj = load ptr, ptr %i.hi, align 8
  %.sroa.8.0.i22396 = select i1 %i.hf, ptr null, ptr %i.hj
  %.sroa.6.0.i22497 = select i1 %i.hf, ptr null, ptr %.sroa.speculate.load.false
  br label %pm_symbol_node_create_unescaped.exit

bb.bm:                                            ; preds = %pm_node_alloc.exit.i220
  %.sroa.gep27 = getelementptr i8, ptr %0, i64 336
  %i.hk = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.hl = load ptr, ptr %i.hk, align 8
  %.sroa.8.0.i223 = select i1 %i.hf, ptr null, ptr %i.hl
  %.sroa.6.0.i224 = select i1 %i.hf, ptr null, ptr %.sroa.speculate.load.false
  %i.hm = getelementptr i8, ptr %0, i64 328
  %.else.val = load ptr, ptr %.sroa.gep27, align 8, !tbaa !128
  %i.hn = load <2 x ptr>, ptr %i.hm, align 8, !tbaa !36
  br label %pm_symbol_node_create_unescaped.exit

pm_symbol_node_create_unescaped.exit:             ; preds = %pm_node_alloc.exit.i220.cont.thread, %bb.bm
  %.sroa.6.0.i22499 = phi ptr [ %.sroa.6.0.i22497, %pm_node_alloc.exit.i220.cont.thread ], [ %.sroa.6.0.i224, %bb.bm ]
  %.sroa.8.0.i22398 = phi ptr [ %.sroa.8.0.i22396, %pm_node_alloc.exit.i220.cont.thread ], [ %.sroa.8.0.i223, %bb.bm ]
  %i.ho = phi ptr [ %.sroa.10.0, %pm_node_alloc.exit.i220.cont.thread ], [ %.else.val, %bb.bm ]
  %i.hp = phi <2 x ptr> [ splat (ptr null), %pm_node_alloc.exit.i220.cont.thread ], [ %i.hn, %bb.bm ]
  %.sink.in = load i32, ptr %0, align 8, !tbaa !109
  %.sink = add i32 %.sink.in, 1                   ; 2 uses
  store i32 %.sink, ptr %0, align 8, !tbaa !109
  %.sroa.16.0..sroa_idx.i227 = getelementptr inbounds nuw i8, ptr %i.ha, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.16.0..sroa_idx.i227, ptr noundef nonnull readonly align 8 dereferenceable(24) %5, i64 24, i1 false)
  store i16 143, ptr %i.ha, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx.i228 = getelementptr inbounds nuw i8, ptr %i.ha, i64 2
  store i16 %.0.i213, ptr %.sroa.2.0..sroa_idx.i228, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx.i229 = getelementptr inbounds nuw i8, ptr %i.ha, i64 4
  store i32 %.sink, ptr %.sroa.3.0..sroa_idx.i229, align 4, !tbaa !31
  %.sroa.4.0..sroa_idx.i230 = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  store ptr %.sroa.speculated34, ptr %.sroa.4.0..sroa_idx.i230, align 8, !tbaa !36
  %.sroa.5.0..sroa_idx.i231 = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  store ptr %i.ho, ptr %.sroa.5.0..sroa_idx.i231, align 8, !tbaa !36
  %.sroa.6.0..sroa_idx.i232 = getelementptr inbounds nuw i8, ptr %i.ha, i64 24
  store ptr %.sroa.6.0.i22499, ptr %.sroa.6.0..sroa_idx.i232, align 8, !tbaa !36
  %.sroa.8.0..sroa_idx.i233 = getelementptr inbounds nuw i8, ptr %i.ha, i64 32
  store ptr %.sroa.8.0.i22398, ptr %.sroa.8.0..sroa_idx.i233, align 8, !tbaa !36
  %.sroa.10.0..sroa_idx.i234 = getelementptr inbounds nuw i8, ptr %i.ha, i64 40
  store ptr %.sroa.5.0, ptr %.sroa.10.0..sroa_idx.i234, align 8, !tbaa !36
  %.sroa.11.0..sroa_idx.i235 = getelementptr inbounds nuw i8, ptr %i.ha, i64 48
  store ptr %.sroa.10.0, ptr %.sroa.11.0..sroa_idx.i235, align 8, !tbaa !36
  %.sroa.12.0..sroa_idx.i236 = getelementptr inbounds nuw i8, ptr %i.ha, i64 56
  store <2 x ptr> %i.hp, ptr %.sroa.12.0..sroa_idx.i236, align 8, !tbaa !36
  br label %bb.bn

bb.bn:                                            ; preds = %pm_symbol_node_create_unescaped.exit, %pm_interpolated_symbol_node_closing_loc_set.exit206
  %.1 = phi ptr [ %i.ee, %pm_interpolated_symbol_node_closing_loc_set.exit206 ], [ %i.ha, %pm_symbol_node_create_unescaped.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.bo

bb.bo:                                            ; preds = %pm_string_node_to_symbol_node.exit, %pm_interpolated_symbol_node_closing_loc_set.exit, %bb.bn, %pm_node_alloc.exit.i.i122, %parse_symbol_encoding.exit, %bb.e
  %.2 = phi ptr [ %i.g, %parse_symbol_encoding.exit ], [ %i.f, %bb.e ], [ %i.am, %pm_node_alloc.exit.i.i122 ], [ %.1, %bb.bn ], [ %i.bi, %pm_string_node_to_symbol_node.exit ], [ %i.ch, %pm_interpolated_symbol_node_closing_loc_set.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret ptr %.2
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef nonnull ptr @context_human(i32 noundef range(i32 1, 0) %0) unnamed_addr #1 {
bb.a:
  %i.a = icmp ult i32 %0, 55
  br i1 %i.a, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 7914, ptr noundef nonnull @__PRETTY_FUNCTION__.context_human) #26
  unreachable

switch.lookup:                                    ; preds = %bb.a
  %switch.tableidx = add i32 %0, -1
  %1 = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.context_human, i64 %1
  %switch.load = load ptr, ptr %switch.gep, align 8
  ret ptr %switch.load
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @pm_assert_value_expression(ptr noundef %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #8 {
bb.a:
  %i.a = tail call fastcc ptr @pm_check_value_expression(ptr noundef %0, ptr noundef %1) ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !tbaa !133
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val5 = load ptr, ptr %i.c, align 8, !tbaa !134
  %i.d = getelementptr i8, ptr %0, i64 472
  %i.e = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.d, ptr noundef %.val, ptr noundef %.val5, i32 noundef 290) #27 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @pm_check_value_expression(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null, ret: address, provenance) %1) unnamed_addr #1 {
bb.a:
  %.not184 = icmp eq ptr %1, null
  br i1 %.not184, label %.thread, label %.lr.ph189

.lr.ph189:                                        ; preds = %bb.a, %.thread156
  %.091186 = phi ptr [ %.899, %.thread156 ], [ %1, %bb.a ] ; 20 uses
  %.0100185 = phi ptr [ %.15, %.thread156 ], [ null, %bb.a ] ; 16 uses
  %i.a = load i16, ptr %.091186, align 8, !tbaa !115
  switch i16 %i.a, label %.thread [
    i16 132, label %bb.b
    i16 17, label %bb.b
    i16 107, label %bb.b
    i16 124, label %bb.b
    i16 131, label %bb.b
    i16 101, label %bb.b
    i16 98, label %bb.ab
    i16 11, label %bb.c
    i16 50, label %bb.n
    i16 116, label %bb.o
    i16 140, label %bb.p
    i16 67, label %bb.q
    i16 146, label %bb.u
    i16 47, label %bb.y
    i16 4, label %bb.z
    i16 114, label %bb.aa
  ]

bb.b:                                             ; preds = %.lr.ph189, %.lr.ph189, %.lr.ph189, %.lr.ph189, %.lr.ph189, %.lr.ph189
  %.not145 = icmp eq ptr %.0100185, null
  %i.b = select i1 %.not145, ptr %.091186, ptr %.0100185
  br label %.thread

bb.c:                                             ; preds = %.lr.ph189
  %i.c = getelementptr i8, ptr %.091186, i64 64   ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !266
  %.not136 = icmp eq ptr %i.d, null
  %i.e = getelementptr i8, ptr %.091186, i64 48   ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !263  ; 2 uses
  %.not137 = icmp eq ptr %i.f, null               ; 2 uses
  br i1 %.not136, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.not137, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = tail call fastcc ptr @pm_check_value_expression(ptr noundef %0, ptr noundef nonnull %i.f) ; 2 uses
  %.not142 = icmp eq ptr %i.g, null
  br i1 %.not142, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.h = getelementptr i8, ptr %.091186, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !273  ; 2 uses
  %.not143 = icmp eq ptr %i.i, null
  br i1 %.not143, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = tail call fastcc ptr @pm_check_value_expression(ptr noundef %0, ptr noundef nonnull %i.i) ; 2 uses
  %.not144 = icmp eq ptr %i.j, null
  br i1 %.not144, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !266
  br label %.thread156

bb.i:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %.091186, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !273  ; 3 uses
  br i1 %.not137, label %.thread156, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.o = tail call fastcc ptr @pm_check_value_expression(ptr noundef %0, ptr noundef nonnull %i.m) ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.q = icmp eq ptr %.0100185, null
  %spec.select = select i1 %i.q, ptr %i.o, ptr %.0100185 ; 2 uses
  %.0123179 = load ptr, ptr %i.e, align 8, !tbaa !264 ; 2 uses
  %.not138180 = icmp eq ptr %.0123179, null
  br i1 %.not138180, label %._crit_edge, label %.lr.ph

bb.m:                                             ; preds = %.lr.ph
  %i.r = getelementptr i8, ptr %.0123181, i64 112
  %.0123 = load ptr, ptr %i.r, align 8, !tbaa !264 ; 2 uses
  %.not138 = icmp eq ptr %.0123, null
  br i1 %.not138, label %._crit_edge, label %.lr.ph, !llvm.loop !635

.lr.ph:                                           ; preds = %bb.l, %bb.m
  %.0123181 = phi ptr [ %.0123, %bb.m ], [ %.0123179, %bb.l ] ; 2 uses
  %i.s = getelementptr i8, ptr %.0123181, i64 104
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !261
  %i.u = tail call fastcc ptr @pm_check_value_expression(ptr noundef %0, ptr noundef %i.t)
  %.not139 = icmp eq ptr %i.u, null
  br i1 %.not139, label %._crit_edge, label %bb.m

._crit_edge:                                      ; preds = %bb.m, %.lr.ph, %bb.l
  %.5105 = phi ptr [ %spec.select, %bb.l ], [ null, %.lr.ph ], [ %spec.select, %bb.m ] ; 2 uses
  %i.v = getelementptr i8, ptr %.091186, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !265  ; 2 uses
  %.not140.not = icmp eq ptr %i.w, null
  br i1 %.not140.not, label %.thread, label %.thread156

bb.n:                                             ; preds = %.lr.ph189
  %i.x = getelementptr i8, ptr %.091186, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !640
  br label %.thread156

bb.o:                                             ; preds = %.lr.ph189
  %i.z = getelementptr i8, ptr %.091186, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !275
  br label %.thread156

bb.p:                                             ; preds = %.lr.ph189
  %i.ab = getelementptr i8, ptr %.091186, i64 24
  %i.ac = getelementptr i8, ptr %.091186, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !104
  %i.ae = load i64, ptr %i.ab, align 8, !tbaa !103
  %i.af = getelementptr [8 x i8], ptr %i.ad, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.af, i64 -8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !106
  br label %.thread156

bb.q:                                             ; preds = %.lr.ph189
  %i.ai = getelementptr i8, ptr %.091186, i64 64
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !641 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.al = getelementptr i8, ptr %.091186, i64 72  ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !283
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ao = tail call fastcc ptr @pm_check_value_expression(ptr noundef %0, ptr noundef nonnull %i.aj) ; 2 uses
  %.not174 = icmp eq ptr %i.ao, null
  br i1 %.not174, label %.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ap = icmp eq ptr %.0100185, null
  %spec.select147 = select i1 %i.ap, ptr %i.ao, ptr %.0100185
  %i.aq = load ptr, ptr %i.al, align 8, !tbaa !283
  br label %.thread156

bb.u:                                             ; preds = %.lr.ph189
  %i.ar = getelementptr i8, ptr %.091186, i64 64
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !642 ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.au = getelementptr i8, ptr %.091186, i64 72  ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !643
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ax = tail call fastcc ptr @pm_check_value_expression(ptr noundef %0, ptr noundef nonnull %i.as) ; 2 uses
  %.not173 = icmp eq ptr %i.ax, null
  br i1 %.not173, label %.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ay = icmp eq ptr %.0100185, null
  %spec.select148 = select i1 %i.ay, ptr %i.ax, ptr %.0100185
  %i.az = load ptr, ptr %i.au, align 8, !tbaa !643
  br label %.thread156

bb.y:                                             ; preds = %.lr.ph189
  %i.ba = getelementptr i8, ptr %.091186, i64 40
end_hunk_9
begin_hunk_10_@pm_local_variable_read_node_create_constant_id:bb.a
  store i32 %i.i, ptr %0, align 8, !tbaa !109
  %i.j = getelementptr i8, ptr %1, i64 8
  store i16 96, ptr %i.d, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %i.i, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !31
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = load <2 x ptr>, ptr %i.j, align 8, !tbaa !36
  store <2 x ptr> %i.k, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !36
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i32 %2, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !31
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i32 %3, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !31
  ret ptr %i.d
}

declare ptr @pm_static_literals_add(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

declare void @pm_static_literal_inspect(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i64 @pm_newline_list_line_column(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @pm_node_list_concat(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @parse_block(ptr noundef %0, i16 noundef zeroext %1) unnamed_addr #1 {
bb.a:
  %.sroa.7.i = alloca %struct.pm_node_list, align 8 ; 4 uses
  %2 = alloca %struct.pm_token_t, align 8         ; 12 uses
  %3 = alloca %struct.pm_token_t, align 8         ; 7 uses
  %4 = alloca %struct.pm_constant_id_list_t, align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.a = getelementptr i8, ptr %0, i64 320        ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !tbaa.struct !149
  %i.b = getelementptr i8, ptr %0, i64 344        ; 10 uses
  %.val.i = load i32, ptr %i.b, align 8, !tbaa !154
  %i.c = icmp eq i32 %.val.i, 14
  br i1 %i.c, label %bb.b, label %accept1.exit

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %accept1.exit

accept1.exit:                                     ; preds = %bb.a, %bb.b
  %i.d = getelementptr i8, ptr %0, i64 24         ; 8 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !31
  %i.f = shl i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 8, !tbaa !31
  %i.g = tail call noalias dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #28 ; 6 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %pm_parser_scope_push.exit, label %bb.c

bb.c:                                             ; preds = %accept1.exit
  %i.h = getelementptr i8, ptr %0, i64 496        ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !75   ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %i.i, i64 49
  %i.l = load i8, ptr %i.k, align 1, !tbaa !81
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = phi i8 [ %i.l, %bb.d ], [ 0, %bb.c ]
  store ptr %i.i, ptr %i.g, align 8, !tbaa !82
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %.sroa.3.0..sroa_idx.i, i8 0, i64 41, i1 false)
  store i8 %i.m, ptr %.sroa.4.0..sroa_idx.i, align 1, !tbaa !83
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 50
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.5.0..sroa_idx.i, i8 0, i64 6, i1 false)
  store ptr %i.g, ptr %i.h, align 8, !tbaa !75
  br label %pm_parser_scope_push.exit

pm_parser_scope_push.exit:                        ; preds = %accept1.exit, %bb.e
  %.val.i56 = load i32, ptr %i.b, align 8, !tbaa !154 ; 2 uses
  %i.n = icmp eq i32 %.val.i56, 16
  br i1 %i.n, label %bb.f, label %accept1.exit57

bb.f:                                             ; preds = %pm_parser_scope_push.exit
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !tbaa.struct !149
  %.val50 = load i32, ptr %i.b, align 8, !tbaa !154
  %i.o = icmp eq i32 %.val50, 16
  br i1 %i.o, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  %i.p = tail call noalias dereferenceable_or_null(88) ptr @calloc(i64 noundef 1, i64 noundef 88) #30 ; 9 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.h, label %pm_node_alloc.exit.i

bb.h:                                             ; preds = %bb.g
  %i.r = load ptr, ptr @stderr, align 8, !tbaa !108
  %i.s = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.r, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 88) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit.i:                             ; preds = %bb.g
  %i.t = load i32, ptr %3, align 8, !tbaa !126
  %.not.i = icmp eq i32 %i.t, 164                 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %.01837.i = select i1 %.not.i, ptr null, ptr %i.x ; 2 uses
  %.02536.i = select i1 %.not.i, ptr null, ptr %i.v ; 2 uses
  %.sink.i.sink.in = load i32, ptr %0, align 8, !tbaa !109
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i, i8 0, i64 24, i1 false)
  %.sink.i.sink = add i32 %.sink.i.sink.in, 1     ; 2 uses
  store i32 %.sink.i.sink, ptr %0, align 8, !tbaa !109
  store i16 16, ptr %i.p, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i58 = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store i32 %.sink.i.sink, ptr %.sroa.3.0..sroa_idx.i58, align 4, !tbaa !31
  %.sroa.4.0..sroa_idx.i59 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %.02536.i, ptr %.sroa.4.0..sroa_idx.i59, align 8, !tbaa !36
  %.sroa.5.0..sroa_idx.i60 = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %.01837.i, ptr %.sroa.5.0..sroa_idx.i60, align 8, !tbaa !36
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i, i64 24, i1 false), !tbaa.struct !293
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  store ptr %.02536.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !36
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  store ptr %.01837.i, ptr %.sroa.10.0..sroa_idx.i, align 8, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  %i.y = getelementptr i8, ptr %0, i64 696
  store i8 1, ptr %i.y, align 8, !tbaa !150
  br label %expect1.exit

bb.i:                                             ; preds = %bb.f
  %i.z = add i16 %1, 1
  %i.aa = call fastcc ptr @parse_block_parameters(ptr noundef nonnull %0, i1 noundef zeroext true, ptr noundef %3, i1 noundef zeroext false, i1 noundef zeroext true, i16 noundef zeroext %i.z) ; 2 uses
  %.val.i62 = load i32, ptr %i.b, align 8, !tbaa !154 ; 2 uses
  %i.ab = icmp eq i32 %.val.i62, 14
  br i1 %i.ab, label %bb.j, label %accept1.exit63

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.val.i.i.pr = load i32, ptr %i.b, align 8, !tbaa !154
  br label %accept1.exit63

accept1.exit63:                                   ; preds = %bb.i, %bb.j
  %.val.i.i = phi i32 [ %.val.i62, %bb.i ], [ %.val.i.i.pr, %bb.j ]
  %i.ac = getelementptr i8, ptr %0, i64 696
  store i8 1, ptr %i.ac, align 8, !tbaa !150
  %i.ad = icmp eq i32 %.val.i.i, 16
  br i1 %i.ad, label %expect1.exit, label %expect1.exit.thread

expect1.exit.thread:                              ; preds = %accept1.exit63
  %i.ae = getelementptr i8, ptr %0, i64 336
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !180 ; 3 uses
  %i.ag = getelementptr i8, ptr %0, i64 472
  %i.ah = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.ag, ptr noundef %i.af, ptr noundef %i.af, i32 noundef 37) #27 ; 0 uses
  %i.ai = getelementptr i8, ptr %0, i64 328
  store ptr %i.af, ptr %i.ai, align 8, !tbaa !181
  store i32 163, ptr %i.a, align 8, !tbaa !163
  br label %pm_block_parameters_node_closing_set.exit

expect1.exit:                                     ; preds = %accept1.exit63, %pm_node_alloc.exit.i
  %.0.ph = phi ptr [ %i.p, %pm_node_alloc.exit.i ], [ %i.aa, %accept1.exit63 ] ; 3 uses
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.pr = load i32, ptr %i.a, align 8, !tbaa !126
  switch i32 %.pr, label %bb.k [
    i32 16, label %pm_block_parameters_node_closing_set.exit
    i32 15, label %pm_block_parameters_node_closing_set.exit
    i32 163, label %pm_block_parameters_node_closing_set.exit
  ]

bb.k:                                             ; preds = %expect1.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.2, i32 noundef 2492, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_block_parameters_node_closing_set) #26
  unreachable

pm_block_parameters_node_closing_set.exit:        ; preds = %expect1.exit.thread, %expect1.exit, %expect1.exit, %expect1.exit
  %.0113 = phi ptr [ %i.aa, %expect1.exit.thread ], [ %.0.ph, %expect1.exit ], [ %.0.ph, %expect1.exit ], [ %.0.ph, %expect1.exit ] ; 3 uses
  %i.aj = getelementptr i8, ptr %0, i64 336
  %i.ak = getelementptr i8, ptr %.0113, i64 16
  %i.al = getelementptr i8, ptr %.0113, i64 72
  %i.am = getelementptr i8, ptr %0, i64 328
  %i.an = load ptr, ptr %i.aj, align 8, !tbaa !128
  %i.ao = load <2 x ptr>, ptr %i.am, align 8, !tbaa !36
  store ptr %i.an, ptr %i.ak, align 8, !tbaa !295
  store <2 x ptr> %i.ao, ptr %i.al, align 8, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %.val.i64.pr = load i32, ptr %i.b, align 8, !tbaa !154
  br label %accept1.exit57

accept1.exit57:                                   ; preds = %pm_parser_scope_push.exit, %pm_block_parameters_node_closing_set.exit
  %.val.i64 = phi i32 [ %.val.i56, %pm_parser_scope_push.exit ], [ %.val.i64.pr, %pm_block_parameters_node_closing_set.exit ]
  %.1 = phi ptr [ null, %pm_parser_scope_push.exit ], [ %.0113, %pm_block_parameters_node_closing_set.exit ]
  %i.ap = icmp eq i32 %.val.i64, 14
  br i1 %i.ap, label %bb.l, label %accept1.exit65

bb.l:                                             ; preds = %accept1.exit57
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %accept1.exit65

accept1.exit65:                                   ; preds = %accept1.exit57, %bb.l
  %i.aq = load i32, ptr %2, align 8, !tbaa !126
  %i.ar = icmp eq i32 %i.aq, 28
  %.val49 = load i32, ptr %i.b, align 8, !tbaa !154 ; 3 uses
  br i1 %i.ar, label %bb.m, label %bb.o

bb.m:                                             ; preds = %accept1.exit65
  %i.as = icmp eq i32 %.val49, 2
  br i1 %i.as, label %accept1.exit.thread.i68, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = add i16 %1, 1
  %i.au = tail call fastcc ptr @parse_statements(ptr noundef nonnull %0, i32 noundef 5, i16 noundef zeroext %i.at) ; 2 uses
  %.val.i.i66.pr = load i32, ptr %i.b, align 8, !tbaa !154
  %i.av = icmp eq i32 %.val.i.i66.pr, 2
  br i1 %i.av, label %accept1.exit.thread.i68, label %accept1.exit.i67

accept1.exit.thread.i68:                          ; preds = %bb.m, %bb.n
  %.046117 = phi ptr [ %i.au, %bb.n ], [ null, %bb.m ]
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %expect1_opening.exit

accept1.exit.i67:                                 ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !127
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !128 ; 2 uses
  %i.ba = getelementptr i8, ptr %0, i64 472
  %i.bb = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.ba, ptr noundef %i.ax, ptr noundef %i.az, i32 noundef 38) #27 ; 0 uses
  %i.bc = getelementptr i8, ptr %0, i64 328
  store ptr %i.az, ptr %i.bc, align 8, !tbaa !181
  store i32 163, ptr %i.a, align 8, !tbaa !163
  br label %expect1_opening.exit

bb.o:                                             ; preds = %accept1.exit65
  switch i32 %.val49, label %bb.p [
    i32 8, label %accept1.exit.thread.i74
    i32 11, label %.split48
    i32 9, label %.split48
    i32 6, label %bb.v
  ]

bb.p:                                             ; preds = %bb.o
  %i.bd = load i32, ptr %i.d, align 8, !tbaa !31
  %i.be = shl i32 %i.bd, 1
  store i32 %i.be, ptr %i.d, align 8, !tbaa !31
  %i.bf = add i16 %1, 1
  %i.bg = tail call fastcc ptr @parse_statements(ptr noundef nonnull %0, i32 noundef 6, i16 noundef zeroext %i.bf) ; 5 uses
  %i.bh = load i32, ptr %i.d, align 8, !tbaa !31
  %i.bi = lshr i32 %i.bh, 1
  store i32 %i.bi, ptr %i.d, align 8, !tbaa !31
  %.val51 = load i32, ptr %i.b, align 8, !tbaa !154 ; 2 uses
  switch i32 %.val51, label %bb.v [
    i32 11, label %bb.q
    i32 9, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p, %bb.p
  %i.bj = icmp eq ptr %i.bg, null
  br i1 %i.bj, label %.split48, label %bb.s

.split48:                                         ; preds = %bb.o, %bb.o, %bb.q
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !127
  %i.bm = getelementptr i8, ptr %0, i64 304
  %.val.i70 = load ptr, ptr %i.bm, align 8, !tbaa !86 ; 2 uses
  %i.bn = tail call noalias dereferenceable_or_null(88) ptr @calloc(i64 noundef 1, i64 noundef 88) #30 ; 8 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.r, label %pm_begin_node_create.exit

bb.r:                                             ; preds = %.split48
  %i.bp = load ptr, ptr @stderr, align 8, !tbaa !108
  %i.bq = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.bp, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 88) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_begin_node_create.exit:                        ; preds = %.split48
  %storemerge.in.i = load i32, ptr %0, align 8, !tbaa !109
  %storemerge.i = add i32 %storemerge.in.i, 1     ; 2 uses
  store i32 %storemerge.i, ptr %0, align 8, !tbaa !109
  store i16 11, ptr %i.bn, align 8, !tbaa !110
  %.sroa.5.0..sroa_idx.i85 = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  store i32 %storemerge.i, ptr %.sroa.5.0..sroa_idx.i85, align 4, !tbaa !31
  %.sroa.7.0..sroa_idx.i86 = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  store ptr %.val.i70, ptr %.sroa.7.0..sroa_idx.i86, align 8, !tbaa !36
  %.sroa.9.0..sroa_idx.i87 = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store ptr %.val.i70, ptr %.sroa.9.0..sroa_idx.i87, align 8, !tbaa !36
  %.sroa.11.0..sroa_idx.i88 = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.br = add i16 %1, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.0..sroa_idx.i88, i8 0, i64 24, i1 false)
  tail call fastcc void @parse_rescues(ptr noundef nonnull %0, i64 noundef 0, ptr noundef null, ptr noundef %i.bn, i32 noundef 2, i16 noundef zeroext %i.br), !inline_history !651
  store ptr %i.bl, ptr %.sroa.7.0..sroa_idx.i86, align 8, !tbaa !262
  br label %thread-pre-split

bb.s:                                             ; preds = %bb.q
  %i.bs = load i16, ptr %i.bg, align 8, !tbaa !115
  %i.bt = icmp eq i16 %i.bs, 140
  br i1 %i.bt, label %.split, label %bb.u

.split:                                           ; preds = %bb.s
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !127
  %i.bw = getelementptr i8, ptr %0, i64 304
  %.val.i71 = load ptr, ptr %i.bw, align 8, !tbaa !86
  %i.bx = tail call noalias dereferenceable_or_null(88) ptr @calloc(i64 noundef 1, i64 noundef 88) #30 ; 9 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.t, label %pm_begin_node_create.exit104

bb.t:                                             ; preds = %.split
  %i.bz = load ptr, ptr @stderr, align 8, !tbaa !108
  %i.ca = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.bz, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 88) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_begin_node_create.exit104:                     ; preds = %.split
  %storemerge.in.i90 = load i32, ptr %0, align 8, !tbaa !109
  %storemerge.i91 = add i32 %storemerge.in.i90, 1 ; 2 uses
  store i32 %storemerge.i91, ptr %0, align 8, !tbaa !109
  %.147.sroa.gep = getelementptr i8, ptr %i.bg, i64 16
  %.sroa.9.0.i95.else.val = load ptr, ptr %.147.sroa.gep, align 8, !tbaa !36
  store i16 11, ptr %i.bx, align 8, !tbaa !110
  %.sroa.5.0..sroa_idx.i98 = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  store i32 %storemerge.i91, ptr %.sroa.5.0..sroa_idx.i98, align 4, !tbaa !31
  %.sroa.7.0..sroa_idx.i99 = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  store ptr %.val.i71, ptr %.sroa.7.0..sroa_idx.i99, align 8, !tbaa !36
  %.sroa.9.0..sroa_idx.i100 = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store ptr %.sroa.9.0.i95.else.val, ptr %.sroa.9.0..sroa_idx.i100, align 8, !tbaa !36
  %.sroa.11.0..sroa_idx.i101 = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %.sroa.15.0..sroa_idx.i103 = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.0..sroa_idx.i101, i8 0, i64 16, i1 false)
  store ptr %i.bg, ptr %.sroa.15.0..sroa_idx.i103, align 8, !tbaa !137
  %i.cb = add i16 %1, 2
  tail call fastcc void @parse_rescues(ptr noundef nonnull %0, i64 noundef 0, ptr noundef null, ptr noundef %i.bx, i32 noundef 2, i16 noundef zeroext %i.cb), !inline_history !651
  store ptr %i.bv, ptr %.sroa.7.0..sroa_idx.i99, align 8, !tbaa !262
  br label %thread-pre-split

bb.u:                                             ; preds = %bb.s
  tail call void @__assert_fail(ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.2, i32 noundef 14816, ptr noundef nonnull @__PRETTY_FUNCTION__.parse_block) #26
  unreachable

thread-pre-split:                                 ; preds = %pm_begin_node_create.exit, %pm_begin_node_create.exit104
  %.2.ph = phi ptr [ %i.bn, %pm_begin_node_create.exit ], [ %i.bx, %pm_begin_node_create.exit104 ]
  %.val.i.i72.pr = load i32, ptr %i.b, align 8, !tbaa !154
  br label %bb.v

bb.v:                                             ; preds = %bb.o, %bb.p, %thread-pre-split
  %.val.i.i72 = phi i32 [ %.val.i.i72.pr, %thread-pre-split ], [ %.val49, %bb.o ], [ %.val51, %bb.p ]
  %.2 = phi ptr [ %.2.ph, %thread-pre-split ], [ null, %bb.o ], [ %i.bg, %bb.p ] ; 2 uses
  %i.cc = icmp eq i32 %.val.i.i72, 8
  br i1 %i.cc, label %accept1.exit.thread.i74, label %accept1.exit.i73

accept1.exit.thread.i74:                          ; preds = %bb.o, %bb.v
  %.2129 = phi ptr [ %.2, %bb.v ], [ null, %bb.o ]
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %expect1_opening.exit

accept1.exit.i73:                                 ; preds = %bb.v
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !127
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !128 ; 2 uses
  %i.ch = getelementptr i8, ptr %0, i64 472
  %i.ci = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.ch, ptr noundef %i.ce, ptr noundef %i.cg, i32 noundef 39) #27 ; 0 uses
  %i.cj = getelementptr i8, ptr %0, i64 328
  store ptr %i.cg, ptr %i.cj, align 8, !tbaa !181
  store i32 163, ptr %i.a, align 8, !tbaa !163
  br label %expect1_opening.exit

expect1_opening.exit:                             ; preds = %accept1.exit.i73, %accept1.exit.thread.i74, %accept1.exit.i67, %accept1.exit.thread.i68
  %.3 = phi ptr [ %i.au, %accept1.exit.i67 ], [ %.046117, %accept1.exit.thread.i68 ], [ %.2129, %accept1.exit.thread.i74 ], [ %.2, %accept1.exit.i73 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.ck = getelementptr i8, ptr %0, i64 496       ; 3 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !75 ; 2 uses
  %i.cm = getelementptr i8, ptr %i.cl, i64 8
  br label %bb.w

bb.w:                                             ; preds = %bb.x, %expect1_opening.exit
  %.0.i = phi ptr [ %i.cl, %expect1_opening.exit ], [ %i.cn, %bb.x ] ; 2 uses
  %i.cn = load ptr, ptr %.0.i, align 8, !tbaa !94 ; 2 uses
  %i.co = icmp eq ptr %i.cn, null                 ; 2 uses
  br i1 %i.co, label %pm_parser_scope_toplevel_p.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cp = getelementptr i8, ptr %.0.i, i64 50
  %i.cq = load i8, ptr %i.cp, align 2, !tbaa !159, !range !64, !noundef !65
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %pm_parser_scope_toplevel_p.exit, label %bb.w

pm_parser_scope_toplevel_p.exit:                  ; preds = %bb.w, %bb.x
  call fastcc void @pm_locals_order(ptr noundef %0, ptr noundef %i.cm, ptr noundef %4, i1 noundef zeroext %i.co)
  %i.cs = call fastcc ptr @parse_blocklike_parameters(ptr noundef %0, ptr noundef %.1, ptr noundef %2, ptr noundef nonnull %i.a)
  %i.ct = load ptr, ptr %i.ck, align 8, !tbaa !75 ; 5 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !94
  store ptr %i.cu, ptr %i.ck, align 8, !tbaa !75
  %i.cv = getelementptr i8, ptr %i.ct, i64 12
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !95
  %.not.i.i = icmp eq i32 %i.cw, 0
  br i1 %.not.i.i, label %pm_parser_scope_pop.exit, label %bb.y

bb.y:                                             ; preds = %pm_parser_scope_toplevel_p.exit
  %i.cx = getelementptr i8, ptr %i.ct, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !96
  call void @free(ptr noundef %i.cy) #27
  br label %pm_parser_scope_pop.exit

pm_parser_scope_pop.exit:                         ; preds = %pm_parser_scope_toplevel_p.exit, %bb.y
  %i.cz = getelementptr i8, ptr %i.ct, i64 24
  call void @pm_node_list_free(ptr noundef %i.cz) #27
  call void @free(ptr noundef nonnull %i.ct) #27
  %i.da = load i32, ptr %i.d, align 8, !tbaa !31
  %i.db = lshr i32 %i.da, 1
  store i32 %i.db, ptr %i.d, align 8, !tbaa !31
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.dd = load <2 x ptr>, ptr %i.dc, align 8
  %.val54 = load ptr, ptr %i.dc, align 8
  %i.de = call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 1, i64 noundef 96) #30 ; 11 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %bb.z, label %pm_block_node_create.exit

bb.z:                                             ; preds = %pm_parser_scope_pop.exit
  %i.dg = load ptr, ptr @stderr, align 8, !tbaa !108
  %i.dh = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.dg, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 96) #27 ; 0 uses
  call void @abort() #26
  unreachable

pm_block_node_create.exit:                        ; preds = %pm_parser_scope_pop.exit
  %i.di = load i32, ptr %0, align 8, !tbaa !109
  %i.dj = add i32 %i.di, 1                        ; 2 uses
  store i32 %i.dj, ptr %0, align 8, !tbaa !109
  %i.dk = getelementptr i8, ptr %0, i64 336
  %.sroa.6.0..sroa_idx.i77 = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i77, ptr noundef nonnull readonly align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.dl = getelementptr i8, ptr %0, i64 328
  store i16 14, ptr %i.de, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i78 = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  store i32 %i.dj, ptr %.sroa.3.0..sroa_idx.i78, align 4, !tbaa !31
  %.sroa.4.0..sroa_idx.i79 = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store ptr %.val54, ptr %.sroa.4.0..sroa_idx.i79, align 8, !tbaa !36
  %.sroa.5.0..sroa_idx.i80 = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %.sroa.7.0..sroa_idx.i81 = getelementptr inbounds nuw i8, ptr %i.de, i64 48
  store ptr %i.cs, ptr %.sroa.7.0..sroa_idx.i81, align 8, !tbaa !106
  %.sroa.8.0..sroa_idx.i82 = getelementptr inbounds nuw i8, ptr %i.de, i64 56
  store ptr %.3, ptr %.sroa.8.0..sroa_idx.i82, align 8, !tbaa !106
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.de, i64 64
  store <2 x ptr> %i.dd, ptr %.sroa.9.0..sroa_idx.i, align 8, !tbaa !36
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.de, i64 80
  %i.dm = load ptr, ptr %i.dk, align 8, !tbaa !128
  %i.dn = load <2 x ptr>, ptr %i.dl, align 8, !tbaa !36
  store ptr %i.dm, ptr %.sroa.5.0..sroa_idx.i80, align 8, !tbaa !36
  store <2 x ptr> %i.dn, ptr %.sroa.11.0..sroa_idx.i, align 8, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret ptr %i.de
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @pm_arguments_validate_block(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !214  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !216
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.b, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !112
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %i.b, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !247
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !106
  %i.l = load i16, ptr %i.k, align 8, !tbaa !115
  %i.m = icmp eq i16 %i.l, 116
  br i1 %i.m, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = getelementptr i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.n, align 8, !tbaa !133
  %i.o = getelementptr i8, ptr %2, i64 16
  %.val6 = load ptr, ptr %i.o, align 8, !tbaa !134
  %i.p = getelementptr i8, ptr %0, i64 472
  %i.q = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.p, ptr noundef %.val, ptr noundef %.val6, i32 noundef 25) #27 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.a, %bb.b, %bb.e
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noalias nonnull ptr @pm_arguments_node_create(ptr nofree noundef captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #30 ; 6 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %pm_node_alloc.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !108
  %i.d = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.c, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 48) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.a
  %i.e = load i32, ptr %0, align 8, !tbaa !109
  %i.f = add i32 %i.e, 1                          ; 2 uses
  store i32 %i.f, ptr %0, align 8, !tbaa !109
  %i.g = getelementptr i8, ptr %0, i64 304
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !86   ; 2 uses
  store i16 5, ptr %i.a, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.f, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !31
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !36
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.h, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !36
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @pm_arguments_node_arguments_append(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %.val = load i64, ptr %i.a, align 8, !tbaa !112
  %i.b = icmp eq i64 %.val, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !133
  %i.e = getelementptr i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.e, align 8, !tbaa !113
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !114
  %i.h = getelementptr i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !134  ; 2 uses
  %i.j = icmp ult ptr %i.g, %i.i
  br i1 %i.j, label %bb.d, label %bb.e
end_hunk_10
