Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/test-synthesize?download=true
inline.NumInlined: 6
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@cmd__synthesize__pack:bb.a
    i32 1932670262, label %.fold.split.i.i
  ]

.fold.split.i.i:                                  ; preds = %.preheader.i.i
  br label %bb.f

bb.f:                                             ; preds = %.fold.split.i.i, %.preheader.i.i
  %.lcssa.i.i = phi ptr [ @fast_packs, %.preheader.i.i ], [ getelementptr inbounds nuw (i8, ptr @fast_packs, i64 32), %.fold.split.i.i ] ; 3 uses
  %i.ak = call ptr @xfopen(ptr noundef %i.ah, ptr noundef nonnull @.str.7) #11 ; 7 uses
  call void @fwrite_or_die(ptr noundef %i.ak, ptr noundef nonnull @fast_pack_prefix, i64 noundef 25) #11
  call void @fwrite_or_die(ptr noundef %i.ak, ptr noundef nonnull @zeros, i64 noundef 65535) #11
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.128.i.i = phi i64 [ 1, %bb.f ], [ %i.al, %bb.g ]
  call void @fwrite_or_die(ptr noundef %i.ak, ptr noundef nonnull @fast_pack_block_header, i64 noundef 5) #11
  call void @fwrite_or_die(ptr noundef %i.ak, ptr noundef nonnull @zeros, i64 noundef 65535) #11
  %i.al = add nuw nsw i64 %.128.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.al, 65537
  br i1 %exitcond.not.i.i, label %bb.h, label %bb.g, !llvm.loop !29

bb.h:                                             ; preds = %bb.g
  call void @fwrite_or_die(ptr noundef %i.ak, ptr noundef nonnull @fast_pack_final_block, i64 noundef 11) #11
  %i.am = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !67
  %i.ao = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !68
  call void @fwrite_or_die(ptr noundef %i.ak, ptr noundef %i.an, i64 noundef %i.ap) #11
  %i.aq = call i32 @fclose(ptr noundef %i.ak)
  %.not24.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not24.i.i, label %generate_fast_pack.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = call fastcc ptr @_(ptr noundef nonnull @.str.11)
  call void (ptr, ...) @die_errno(ptr noundef %i.ar, ptr noundef %i.ah) #12
  unreachable

generate_fast_pack.exit.i:                        ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !69
  br label %generate_pack_with_large_object.exit

bb.j:                                             ; preds = %.preheader.i.i, %bb.e
  %i.au = call ptr @xfopen(ptr noundef %i.ah, ptr noundef nonnull @.str.7) #11 ; 8 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !24
  call void %i.aw(ptr noundef nonnull %4) #11, !inline_history !30
  call void @fwrite_or_die(ptr noundef %i.au, ptr noundef nonnull %11, i64 noundef 12) #11
  %i.ax = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !25
  call void %i.ay(ptr noundef nonnull %4, ptr noundef nonnull %11, i64 noundef 12) #11, !inline_history !30
  call fastcc void @write_pack_object(ptr noundef %i.au, ptr noundef %4, i32 noundef 3, ptr noundef null, i64 noundef %i.af, ptr noundef %5, ptr noundef readonly %i.v)
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %10, ptr noundef nonnull @.str.8, i32 noundef 0) #11
  %i.az = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !70
  call void @strbuf_add(ptr noundef nonnull %10, ptr noundef nonnull %5, i64 noundef %i.ba) #11
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !72
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 5 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !73
  call fastcc void @write_pack_object(ptr noundef %i.au, ptr noundef %4, i32 noundef 2, ptr noundef %i.bc, i64 noundef %i.be, ptr noundef %6, ptr noundef readonly %i.v)
  store i64 0, ptr %i.bd, align 8, !tbaa !73
  %i.bf = load ptr, ptr %i.bb, align 8, !tbaa !72 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.bf, @strbuf_slopbuf
  br i1 %.not9.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 0, ptr %i.bf, align 1, !tbaa !26
  br label %strbuf_setlen.exit.i

bb.l:                                             ; preds = %bb.j
  %i.bg = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !26
  %.not10.i.i = icmp eq i8 %i.bg, 0
  br i1 %.not10.i.i, label %strbuf_setlen.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @__assert_fail(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #12
  unreachable

strbuf_setlen.exit.i:                             ; preds = %bb.l, %bb.k
  %i.bh = call ptr @oid_to_hex(ptr noundef nonnull %6) #11
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %10, ptr noundef nonnull @.str.9, ptr noundef %i.bh) #11
  %i.bi = load ptr, ptr %i.bb, align 8, !tbaa !72
  %i.bj = load i64, ptr %i.bd, align 8, !tbaa !73
  call fastcc void @write_pack_object(ptr noundef %i.au, ptr noundef %4, i32 noundef 1, ptr noundef %i.bi, i64 noundef %i.bj, ptr noundef %7, ptr noundef nonnull readonly %i.v)
  call fastcc void @write_pack_object(ptr noundef %i.au, ptr noundef %4, i32 noundef 2, ptr noundef nonnull @.str.6, i64 noundef 0, ptr noundef %8, ptr noundef nonnull readonly %i.v)
  store i64 0, ptr %i.bd, align 8, !tbaa !73
  %i.bk = load ptr, ptr %i.bb, align 8, !tbaa !72 ; 2 uses
  %.not9.i25.i = icmp eq ptr %i.bk, @strbuf_slopbuf
  br i1 %.not9.i25.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %strbuf_setlen.exit.i
  store i8 0, ptr %i.bk, align 1, !tbaa !26
  br label %strbuf_setlen.exit27.i

bb.o:                                             ; preds = %strbuf_setlen.exit.i
  %i.bl = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !26
  %.not10.i26.i = icmp eq i8 %i.bl, 0
  br i1 %.not10.i26.i, label %strbuf_setlen.exit27.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @__assert_fail(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #12
  unreachable

strbuf_setlen.exit27.i:                           ; preds = %bb.o, %bb.n
  %i.bm = call ptr @oid_to_hex(ptr noundef nonnull %8) #11
  %i.bn = call ptr @oid_to_hex(ptr noundef nonnull %7) #11
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %10, ptr noundef nonnull @.str.10, ptr noundef %i.bm, ptr noundef %i.bn) #11
  %i.bo = load ptr, ptr %i.bb, align 8, !tbaa !72
  %i.bp = load i64, ptr %i.bd, align 8, !tbaa !73
  call fastcc void @write_pack_object(ptr noundef %i.au, ptr noundef %4, i32 noundef 1, ptr noundef %i.bo, i64 noundef %i.bp, ptr noundef %9, ptr noundef nonnull readonly %i.v)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !74
  call void %i.br(ptr noundef nonnull %i.a, ptr noundef nonnull %4) #11, !inline_history !30
  %i.bs = load i64, ptr %i.az, align 8, !tbaa !70
  call void @fwrite_or_die(ptr noundef %i.au, ptr noundef nonnull %i.a, i64 noundef %i.bs) #11
  %i.bt = call i32 @fclose(ptr noundef %i.au)
  %.not24.i = icmp eq i32 %i.bt, 0
  br i1 %.not24.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %strbuf_setlen.exit27.i
  %i.bu = call fastcc ptr @_(ptr noundef nonnull @.str.11)
  call void (ptr, ...) @die_errno(ptr noundef %i.bu, ptr noundef %i.ah) #12
  unreachable

bb.r:                                             ; preds = %strbuf_setlen.exit27.i
  call void @strbuf_release(ptr noundef nonnull %10) #11
  %i.bv = call ptr @oid_to_hex(ptr noundef nonnull %9) #11
  br label %generate_pack_with_large_object.exit

generate_pack_with_large_object.exit:             ; preds = %generate_fast_pack.exit.i, %bb.r
  %.sink = phi ptr [ %i.at, %generate_fast_pack.exit.i ], [ %i.bv, %bb.r ]
  %puts.i.i = call i32 @puts(ptr nonnull dereferenceable(1) %.sink) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  ret i32 0
}

declare i32 @parse_options(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @setup_git_directory_gently(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @unsafe_hash_algo(ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @usage_with_options(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @git_parse_unsigned(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @die(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @_(ptr noundef %0) unnamed_addr #5 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !26
  %.not = icmp eq i8 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @git_gettext_enabled, align 4, !tbaa !19
  %.not4 = icmp eq i32 %i.b, 0
  br i1 %.not4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %0, i32 noundef 5) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi ptr [ %i.c, %bb.c ], [ @.str.6, %bb.a ], [ %0, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare ptr @xfopen(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @fwrite_or_die(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @write_pack_object(ptr noundef %0, ptr noundef nonnull %1, i32 noundef range(i32 1, 4) %2, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %5, ptr nofree noundef readonly captures(none) %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 5 uses
  %i.b = alloca [5 x i8], align 1                 ; 11 uses
  %i.c = alloca [4 x i8], align 4                 ; 5 uses
  %i.d = alloca [10 x i8], align 1                ; 5 uses
  %i.e = alloca [32 x i8], align 16               ; 4 uses
  %7 = alloca %struct.git_hash_ctx, align 8       ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  %i.f = call i32 @encode_in_pack_object_header(ptr noundef nonnull %i.d, i32 noundef 10, i32 noundef %2, i64 noundef %4) #11
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  call void @fwrite_or_die(ptr noundef %0, ptr noundef nonnull %i.d, i64 noundef %i.g) #11
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 11 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !25
  call void %i.i(ptr noundef nonnull %1, ptr noundef nonnull %i.d, i64 noundef %i.g) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i16 376, ptr %i.a, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @fwrite_or_die(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 2) #11
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !25
  call void %i.j(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i64 noundef 2) #11, !inline_history !75
  %.not.i = icmp eq ptr %3, null                  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 3 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.a, %bb.c
  %.037.us.i = phi i64 [ %i.ac, %bb.c ], [ %4, %bb.a ] ; 4 uses
  %.0.us.i = phi i32 [ %.1.us.i, %bb.c ], [ 1, %bb.a ] ; 2 uses
  %i.n = call i64 @llvm.umin.i64(i64 %.037.us.i, i64 65535) ; 7 uses
  %i.o = icmp ult i64 %.037.us.i, 65536
  %i.p = zext i1 %i.o to i8
  store i8 %i.p, ptr %i.b, align 1, !tbaa !26
  %i.q = trunc i64 %i.n to i8
  %i.r = trunc nuw i64 %i.n to i16
  store i16 %i.r, ptr %i.k, align 1
  %i.s = lshr i64 %i.n, 8
  %i.t = trunc nuw i64 %i.s to i8
  %i.u = xor i8 %i.q, -1
  store i8 %i.u, ptr %i.l, align 1, !tbaa !26
  %i.v = xor i8 %i.t, -1
  store i8 %i.v, ptr %i.m, align 1, !tbaa !26
  call void @fwrite_or_die(ptr noundef %0, ptr noundef nonnull %i.b, i64 noundef 5) #11
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !25
  call void %i.w(ptr noundef nonnull %1, ptr noundef nonnull %i.b, i64 noundef 5) #11, !inline_history !75
  %.not42.us.i = icmp eq i64 %.037.us.i, 0
  br i1 %.not42.us.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.split.us.i
  call void @fwrite_or_die(ptr noundef %0, ptr noundef nonnull @zeros, i64 noundef %i.n) #11
  %i.x = load ptr, ptr %i.h, align 8, !tbaa !25
  call void %i.x(ptr noundef nonnull %1, ptr noundef nonnull @zeros, i64 noundef %i.n) #11, !inline_history !75
  %i.y = zext i32 %.0.us.i to i64
  %i.z = trunc nuw nsw i64 %i.n to i32
  %i.aa = call i64 @adler32(i64 noundef %i.y, ptr noundef nonnull @zeros, i32 noundef %i.z) #11
  %i.ab = trunc i64 %i.aa to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.split.us.i
  %.1.us.i = phi i32 [ %i.ab, %bb.b ], [ %.0.us.i, %.split.us.i ] ; 2 uses
  %i.ac = sub nuw i64 %.037.us.i, %i.n            ; 2 uses
  %.not43.us.i = icmp eq i64 %i.ac, 0
  br i1 %.not43.us.i, label %write_uncompressed_zlib.exit, label %.split.us.i, !llvm.loop !76

.split.i:                                         ; preds = %bb.a, %bb.e
  %.038.i = phi ptr [ %spec.select.i, %bb.e ], [ %3, %bb.a ] ; 4 uses
  %.037.i = phi i64 [ %i.as, %bb.e ], [ %4, %bb.a ] ; 4 uses
  %.0.i = phi i32 [ %.1.i, %bb.e ], [ 1, %bb.a ]  ; 2 uses
  %i.ad = call i64 @llvm.umin.i64(i64 %.037.i, i64 65535) ; 8 uses
  %i.ae = icmp ult i64 %.037.i, 65536
  %i.af = zext i1 %i.ae to i8
  store i8 %i.af, ptr %i.b, align 1, !tbaa !26
  %i.ag = trunc i64 %i.ad to i8
  %i.ah = trunc nuw i64 %i.ad to i16
  store i16 %i.ah, ptr %i.k, align 1
  %i.ai = lshr i64 %i.ad, 8
  %i.aj = trunc nuw i64 %i.ai to i8
  %i.ak = xor i8 %i.ag, -1
  store i8 %i.ak, ptr %i.l, align 1, !tbaa !26
  %i.al = xor i8 %i.aj, -1
  store i8 %i.al, ptr %i.m, align 1, !tbaa !26
  call void @fwrite_or_die(ptr noundef %0, ptr noundef nonnull %i.b, i64 noundef 5) #11
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !25
  call void %i.am(ptr noundef nonnull %1, ptr noundef nonnull %i.b, i64 noundef 5) #11, !inline_history !75
  %.not42.i = icmp eq i64 %.037.i, 0
  br i1 %.not42.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.split.i
  call void @fwrite_or_die(ptr noundef %0, ptr noundef %.038.i, i64 noundef %i.ad) #11
  %i.an = load ptr, ptr %i.h, align 8, !tbaa !25
  call void %i.an(ptr noundef nonnull %1, ptr noundef %.038.i, i64 noundef %i.ad) #11, !inline_history !75
  %i.ao = zext i32 %.0.i to i64
  %i.ap = trunc nuw nsw i64 %i.ad to i32
  %i.aq = call i64 @adler32(i64 noundef %i.ao, ptr noundef %.038.i, i32 noundef %i.ap) #11
  %i.ar = trunc i64 %i.aq to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.split.i
  %.1.i = phi i32 [ %i.ar, %bb.d ], [ %.0.i, %.split.i ] ; 2 uses
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.038.i, i64 %i.ad
  %i.as = sub nuw i64 %.037.i, %i.ad              ; 2 uses
  %.not43.i = icmp eq i64 %i.as, 0
  br i1 %.not43.i, label %write_uncompressed_zlib.exit, label %.split.i, !llvm.loop !76

write_uncompressed_zlib.exit:                     ; preds = %bb.e, %bb.c
  %.us-phi.i = phi i32 [ %.1.us.i, %bb.c ], [ %.1.i, %bb.e ]
  %8 = call i32 @llvm.bswap.i32(i32 %.us-phi.i)
  store i32 %8, ptr %i.c, align 4, !tbaa !26
  call void @fwrite_or_die(ptr noundef %0, ptr noundef nonnull %i.c, i64 noundef 4) #11
  %i.at = load ptr, ptr %i.h, align 8, !tbaa !25
  call void %i.at(ptr noundef nonnull %1, ptr noundef nonnull %i.c, i64 noundef 4) #11, !inline_history !75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !24
  call void %i.av(ptr noundef nonnull %7) #11
  %i.aw = call i32 @format_object_header(ptr noundef nonnull %i.e, i64 noundef 32, i32 noundef %2, i64 noundef %4) #11
  %i.ax = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.ay = sext i32 %i.aw to i64
  call void %i.ax(ptr noundef nonnull %7, ptr noundef nonnull %i.e, i64 noundef %i.ay) #11
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %write_uncompressed_zlib.exit
  %i.az = load ptr, ptr %i.h, align 8, !tbaa !25
  call void %i.az(ptr noundef nonnull %7, ptr noundef nonnull %3, i64 noundef %4) #11
  br label %bb.h

bb.g:                                             ; preds = %write_uncompressed_zlib.exit
  %.not2931 = icmp ult i64 %4, 65535
  br i1 %.not2931, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.ba = udiv i64 %4, 65535
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.g
  %i.bb = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.bc = urem i64 %4, 65535
  call void %i.bb(ptr noundef nonnull %7, ptr noundef nonnull @zeros, i64 noundef %i.bc) #11
  br label %bb.h

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.032 = phi i64 [ %i.be, %.lr.ph ], [ %i.ba, %.lr.ph.preheader ]
  %i.bd = load ptr, ptr %i.h, align 8, !tbaa !25
  call void %i.bd(ptr noundef nonnull %7, ptr noundef nonnull @zeros, i64 noundef 65535) #11
  %i.be = add nsw i64 %.032, -1                   ; 2 uses
  %.not29 = icmp eq i64 %i.be, 0
  br i1 %.not29, label %._crit_edge, label %.lr.ph, !llvm.loop !77

bb.h:                                             ; preds = %._crit_edge, %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !78
  call void %i.bg(ptr noundef nonnull %5, ptr noundef nonnull %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  ret void
}

declare void @strbuf_addf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @strbuf_add(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @oid_to_hex(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @die_errno(ptr noundef, ...) local_unnamed_addr #4

declare void @strbuf_release(ptr noundef) local_unnamed_addr #3

declare i32 @encode_in_pack_object_header(ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @format_object_header(ptr noundef, i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @adler32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!"long", !8, i64 0}
!15 = !{!"option", !9, i64 0, !9, i64 4, !13, i64 8, !12, i64 16, !14, i64 24, !13, i64 32, !13, i64 40, !9, i64 48, !12, i64 56, !14, i64 64, !12, i64 72, !14, i64 80, !12, i64 88}
!16 = !{!15, !9, i64 0}
!17 = !{!15, !13, i64 8}
!18 = !{!15, !12, i64 16}
!19 = !{!9, !9, i64 0}
!20 = !{!"p1 _ZTS13git_hash_algo", !12, i64 0}
!21 = !{!"p1 _ZTS9object_id", !12, i64 0}
!22 = !{!"git_hash_algo", !13, i64 0, !9, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !21, i64 80, !21, i64 88, !21, i64 96, !20, i64 104}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!22, !12, i64 40}
!25 = !{!22, !12, i64 56}
!26 = !{!8, !8, i64 0}
!27 = !{!12, !12, i64 0}
!28 = !{!15, !12, i64 88}
!29 = distinct !{!29, !23}
!30 = distinct !{null}
!31 = !{!15, !9, i64 4}
!32 = !{!15, !14, i64 24}
!33 = !{!15, !13, i64 32}
!34 = !{!15, !13, i64 40}
!35 = !{!15, !9, i64 48}
!36 = !{!15, !12, i64 56}
!37 = !{!15, !14, i64 64}
!38 = !{!"p1 _ZTS10repository", !12, i64 0}
!39 = !{!38, !38, i64 0}
!40 = !{!"p1 _ZTS15object_database", !12, i64 0}
!41 = !{!"p1 _ZTS18parsed_object_pool", !12, i64 0}
!42 = !{!"p1 _ZTS9ref_store", !12, i64 0}
!43 = !{!"_Bool", !8, i64 0}
!44 = !{!"any p2 pointer", !12, i64 0}
!45 = !{!"p2 _ZTS13hashmap_entry", !44, i64 0}
!46 = !{!"hashmap", !45, i64 0, !12, i64 8, !12, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40}
!47 = !{!"p1 _ZTS8mem_pool", !12, i64 0}
!48 = !{!"strmap", !46, i64 0, !47, i64 48, !9, i64 56}
!49 = !{!"repo_path_cache", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48}
!50 = !{!"p1 _ZTS18fsmonitor_settings", !12, i64 0}
!51 = !{!"repo_settings", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !50, i64 56, !9, i64 64, !9, i64 68, !9, i64 72, !9, i64 76, !9, i64 80, !9, i64 84, !9, i64 88, !9, i64 92, !14, i64 96, !14, i64 104, !14, i64 112, !14, i64 120, !9, i64 128, !13, i64 136}
!52 = !{!"p1 _ZTS10config_set", !12, i64 0}
!53 = !{!"p1 _ZTS15submodule_cache", !12, i64 0}
!54 = !{!"p1 _ZTS11index_state", !12, i64 0}
!55 = !{!"p1 _ZTS12remote_state", !12, i64 0}
!56 = !{!"repo_config_values", !13, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44}
!57 = !{!"p1 _ZTS6strmap", !12, i64 0}
!58 = !{!"p1 _ZTS16string_list_item", !12, i64 0}
!59 = !{!"string_list", !58, i64 0, !14, i64 8, !14, i64 16, !9, i64 24, !12, i64 32}
!60 = !{!"p1 _ZTS22promisor_remote_config", !12, i64 0}
!61 = !{!"repository", !13, i64 0, !13, i64 8, !40, i64 16, !41, i64 24, !42, i64 32, !43, i64 40, !48, i64 48, !48, i64 112, !49, i64 176, !13, i64 232, !13, i64 240, !13, i64 248, !43, i64 256, !43, i64 257, !13, i64 264, !51, i64 272, !52, i64 416, !53, i64 424, !54, i64 432, !55, i64 440, !20, i64 448, !20, i64 456, !56, i64 464, !9, i64 512, !13, i64 520, !9, i64 528, !9, i64 532, !57, i64 536, !9, i64 544, !48, i64 552, !59, i64 616, !13, i64 656, !60, i64 664, !9, i64 672, !9, i64 676, !9, i64 680, !9, i64 684, !9, i64 688, !43, i64 689, !43, i64 690}
!62 = !{!61, !20, i64 448}
!63 = !{!13, !13, i64 0}
!64 = !{!14, !14, i64 0}
!65 = !{!22, !9, i64 8}
!66 = !{!"fast_pack", !9, i64 0, !13, i64 8, !14, i64 16, !13, i64 24}
!67 = !{!66, !13, i64 8}
!68 = !{!66, !14, i64 16}
!69 = !{!66, !13, i64 24}
!70 = !{!22, !14, i64 16}
!71 = !{!"strbuf", !14, i64 0, !14, i64 8, !13, i64 16}
!72 = !{!71, !13, i64 16}
!73 = !{!71, !14, i64 8}
!74 = !{!22, !12, i64 64}
!75 = distinct !{null}
!76 = distinct !{!76, !23}
!77 = distinct !{!77, !23}
!78 = !{!22, !12, i64 72}
end_hunk_0
