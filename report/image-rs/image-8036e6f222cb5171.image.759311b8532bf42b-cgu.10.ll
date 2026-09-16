Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.10?download=true
inline.NumInlined: 917
inline.NumDeleted: 432
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_RNCNvMs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoderINtB7_10BmpDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE25read_full_byte_pixel_data0Bd_:bb.a
  %.sroa.0.03349 = phi ptr [ %1, %_RNvXs1f_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph ], [ %i.k, %bb.p ] ; 6 uses
  %.sroa.6.048 = phi i64 [ %2, %_RNvXs1f_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph ], [ %i.l, %bb.p ] ; 2 uses
  %..i.i = call noundef i64 @llvm.umin.i64(i64 %i.d, i64 %.sroa.6.048) ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.03349, i64 %..i.i
  %i.l = sub nuw nsw i64 %.sroa.6.048, %..i.i     ; 2 uses
  %i.m = load i8, ptr %i.h, align 1, !range !17, !noundef !5
  %i.n = icmp eq i8 %i.m, 3
  br i1 %i.n, label %bb.d, label %bb.c

_RNvXs1f_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread: ; preds = %bb.p, %.preheader._RNvXs1f_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread_crit_edge
  %i.o = phi ptr [ %.pre, %.preheader._RNvXs1f_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread_crit_edge ], [ %i.j, %bb.p ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !5, !noundef !5
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load i64, ptr %i.r, align 8, !noundef !5
  %i.t = call noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull %i.q, i64 noundef %i.s)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %bb.d, %bb.f, %bb.r, %_RNvXs1f_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread
  %.sroa.0.0 = phi ptr [ %i.t, %_RNvXs1f_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread ], [ %i.ad, %bb.i ], [ %i.w, %bb.f ], [ %i.v, %bb.d ], [ %i.ah, %bb.r ]
  ret ptr %.sroa.0.0

bb.c:                                             ; preds = %bb.d, %_RNvXs1f_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit
  %i.u = icmp ugt i64 %..i.i, 2
  br i1 %i.u, label %bb.f, label %bb.e, !prof !23

bb.d:                                             ; preds = %_RNvXs1f_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !342
  store i8 0, ptr %i.b, align 1, !noalias !342
  %i.v = call noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull %i.b, i64 noundef 1), !noalias !343 ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !342
  br i1 %.not.i, label %bb.c, label %.loopexit

bb.e:                                             ; preds = %bb.c
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 3, i64 noundef %..i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #32
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.w = call noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull %.sroa.0.03349, i64 noundef 3) ; 2 uses
  %.not19 = icmp eq ptr %i.w, null
  br i1 %.not19, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.03349, i64 3 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.03349, i64 2 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !344)
  call void @llvm.experimental.noalias.scope.decl(metadata !345)
  %.promoted.i = load i8, ptr %.sroa.0.03349, align 1, !alias.scope !344, !noalias !345
  %.promoted15.i = load i8, ptr %i.y, align 1, !alias.scope !345, !noalias !344
  store i8 %.promoted15.i, ptr %.sroa.0.03349, align 1, !alias.scope !344, !noalias !345
  store i8 %.promoted.i, ptr %i.y, align 1, !alias.scope !345, !noalias !344
  %i.z = load i8, ptr %i.h, align 1, !range !17, !noundef !5 ; 2 uses
  %i.aa = icmp eq i8 %i.z, 1
  br i1 %i.aa, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.j, %bb.g
  %i.ab = phi i8 [ %.pr, %bb.j ], [ %i.z, %bb.g ]
  %i.ac = icmp eq i8 %i.ab, 2
  br i1 %i.ac, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !346
  store i8 0, ptr %i.a, align 1, !noalias !346
  %i.ad = call noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull %i.a, i64 noundef 1), !noalias !347 ; 2 uses
  %.not.i23 = icmp eq ptr %i.ad, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !346
  br i1 %.not.i23, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %.pr = load i8, ptr %i.h, align 1
  br label %bb.h

bb.k:                                             ; preds = %bb.h
  %i.ae = load i64, ptr %i.c, align 8, !noundef !5
  %i.af = icmp eq i64 %i.ae, 4
  br i1 %i.af, label %bb.m, label %bb.p

bb.l:                                             ; preds = %bb.h
  %.not21 = icmp eq i64 %..i.i, 3
  br i1 %.not21, label %bb.q, label %bb.r, !prof !6

bb.m:                                             ; preds = %bb.k
  %.not20 = icmp eq i64 %..i.i, 3
  br i1 %.not20, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i8 -1, ptr %i.x, align 1
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #32
  unreachable

bb.p:                                             ; preds = %bb.r, %bb.n, %bb.k
  %i.ag = icmp eq i64 %i.l, 0
  br i1 %i.ag, label %_RNvXs1f_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs1f_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit

bb.q:                                             ; preds = %bb.l
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 3, i64 noundef 4, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #32
  unreachable

bb.r:                                             ; preds = %bb.l
  %i.ah = call noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull %i.x, i64 noundef 1) ; 2 uses
  %.not22 = icmp eq ptr %i.ah, null
  br i1 %.not22, label %bb.p, label %.loopexit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef ptr @_RNCNvMs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoderINtB7_10BmpDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE26read_palettized_pixel_datas_0Bd_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 9 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !7, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !align !7, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 6 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !5
  %i.i = tail call noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull %i.f, i64 noundef %i.h) ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.b, label %bb.am

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5
  %i.l = load i8, ptr %i.k, align 1, !range !24, !noundef !5
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !5, !align !7, !noundef !5
  %i.p = load i64, ptr %i.o, align 8, !noundef !5 ; 45 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !358)
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.d, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh16chunks_exact_mutCsa5QsYiPB8Gl_5image.exit, !prof !6

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 55 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #32, !noalias !359
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh16chunks_exact_mutCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.c
  %i.r = urem i64 %2, %i.p                        ; 2 uses
  %i.s = sub nuw nsw i64 %2, %i.r                 ; 10 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.u, align 8, !alias.scope !358, !noalias !360
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.s, ptr %i.v, align 8, !alias.scope !358, !noalias !360
  store ptr %i.t, ptr %i.a, align 8, !alias.scope !358, !noalias !360
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.r, ptr %i.w, align 8, !alias.scope !358, !noalias !360
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.p, ptr %i.x, align 8, !alias.scope !358, !noalias !360
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !5, !align !25, !noundef !5
  %i.aa = load i16, ptr %i.z, align 2, !noundef !5 ; 2 uses
  %i.ab = tail call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 %i.aa)
  %i.ac = icmp eq i16 %i.ab, 1
  br i1 %i.ac, label %.split, label %bb.f, !prof !361

.split:                                           ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh16chunks_exact_mutCsa5QsYiPB8Gl_5image.exit
  %i.ad = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aa, i1 true)
  switch i16 %i.ad, label %bb.f [
    i16 0, label %bb.g
    i16 1, label %bb.x
    i16 2, label %bb.ai
    i16 3, label %bb.aj
  ], !prof !362

bb.e:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !5, !align !7, !noundef !5
  %i.ag = load i64, ptr %i.af, align 8, !noundef !5 ; 3 uses
  %i.ah = load i64, ptr %i.g, align 8, !noundef !5 ; 2 uses
  %.not5 = icmp ugt i64 %i.ag, %i.ah
  br i1 %.not5, label %bb.ak, label %bb.al, !prof !26

bb.f:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh16chunks_exact_mutCsa5QsYiPB8Gl_5image.exit, %.split
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 14, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #32
  unreachable

bb.g:                                             ; preds = %.split
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !5, !align !7, !noundef !5 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !5, !noundef !5 ; 10 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.an = load i64, ptr %i.am, align 8, !noundef !5 ; 11 uses
  %i.ao = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.ap = load i64, ptr %i.g, align 8, !noundef !5 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ap
  tail call void @llvm.experimental.noalias.scope.decl(metadata !363)
  %i.ar = icmp samesign eq i64 %i.ap, 0
  br i1 %i.ar, label %_RINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoder18set_1bit_pixel_runINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhEEB8_.exit, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i: ; preds = %bb.g
  %cond = icmp eq i64 %i.p, 1
  br i1 %cond, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.split.split.us.i, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us146.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us146.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i
  %3 = icmp ugt i64 %i.p, 2
  br i1 %3, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.split.i, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.split.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us146.i
  %i.as = icmp ugt i64 %i.p, %i.s
  br i1 %i.as, label %_RINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoder18set_1bit_pixel_runINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhEEB8_.exit, label %.lr.ph59

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.split.split.us.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i
  %.not12.us56.i = icmp eq i64 %i.s, 0
  br i1 %.not12.us56.i, label %_RINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoder18set_1bit_pixel_runINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhEEB8_.exit, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us154.i.preheader

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us154.i.preheader: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.split.split.us.i
  %4 = load i8, ptr %i.ao, align 1, !noalias !364, !noundef !5
  %.lobit.i = lshr i8 %4, 7
  %5 = zext nneg i8 %.lobit.i to i64              ; 3 uses
  %.not12.us96.us.i57 = icmp samesign ugt i64 %i.an, %5
  br i1 %.not12.us96.us.i57, label %.split64.us.i, label %.split.us.i

.split64.us.i:                                    ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us154.i.preheader
  %6 = getelementptr inbounds nuw [3 x i8], ptr %i.al, i64 %5
  %.sroa.06.0.copyload.us.i = load i8, ptr %6, align 1, !alias.scope !363, !noalias !365
  store i8 %.sroa.06.0.copyload.us.i, ptr %1, align 1, !noalias !364
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #32, !noalias !364
  unreachable

.lr.ph59:                                         ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.split.i, %.loopexit18.split.us.us.i
  %.sroa.0.0134.us155.i58 = phi ptr [ %i.av, %.loopexit18.split.us.us.i ], [ %i.ao, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.split.i ] ; 9 uses
  %i.at = phi ptr [ %i.dl, %.loopexit18.split.us.us.i ], [ %1, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.split.i ] ; 5 uses
  %i.au = phi i64 [ %i.dk, %.loopexit18.split.us.us.i ], [ %i.s, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.split.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0134.us155.i58, i64 1 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.p ; 4 uses
  %i.ax = sub nuw nsw i64 %i.au, %i.p             ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.at) ]
  %i.ay = load i8, ptr %.sroa.0.0134.us155.i58, align 1, !noalias !364, !noundef !5
  %.lobit197.i = lshr i8 %i.ay, 7
  %i.az = zext nneg i8 %.lobit197.i to i64        ; 3 uses
  %i.ba = icmp samesign ugt i64 %i.an, %i.az
  br i1 %i.ba, label %bb.h, label %.split.us.i

bb.h:                                             ; preds = %.lr.ph59
  %i.bb = getelementptr inbounds nuw [3 x i8], ptr %i.al, i64 %i.az ; 3 uses
  %.sroa.4.0..sroa_idx.us97.us.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  %.sroa.4.0.copyload.us98.us.i = load i8, ptr %.sroa.4.0..sroa_idx.us97.us.i, align 1, !alias.scope !363, !noalias !365
  %.sroa.57.0..sroa_idx.us99.us.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  %.sroa.57.0.copyload.us100.us.i = load i8, ptr %.sroa.57.0..sroa_idx.us99.us.i, align 1, !alias.scope !363, !noalias !365
  %.sroa.06.0.copyload.us101.us.i = load i8, ptr %i.bb, align 1, !alias.scope !363, !noalias !365
  store i8 %.sroa.06.0.copyload.us101.us.i, ptr %i.at, align 1, !noalias !364
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  store i8 %.sroa.4.0.copyload.us98.us.i, ptr %i.bc, align 1, !noalias !364
  %i.bd = getelementptr inbounds nuw i8, ptr %i.at, i64 2
  store i8 %.sroa.57.0.copyload.us100.us.i, ptr %i.bd, align 1, !noalias !364
  %.not12.us96.us.1.i = icmp ugt i64 %i.p, %i.ax
  br i1 %.not12.us96.us.1.i, label %_RINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoder18set_1bit_pixel_runINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhEEB8_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.p ; 4 uses
  %i.bf = sub nuw nsw i64 %i.ax, %i.p             ; 2 uses
  %i.bg = load i8, ptr %.sroa.0.0134.us155.i58, align 1, !noalias !364, !noundef !5
  %i.bh = lshr i8 %i.bg, 6
  %.lobit198.i = and i8 %i.bh, 1
  %i.bi = zext nneg i8 %.lobit198.i to i64        ; 2 uses
  %i.bj = icmp samesign ugt i64 %i.an, %i.bi
  br i1 %i.bj, label %bb.j, label %.split.us.i

bb.j:                                             ; preds = %bb.i
  %i.bk = getelementptr inbounds nuw [3 x i8], ptr %i.al, i64 %i.bi ; 3 uses
  %.sroa.4.0..sroa_idx.us97.us.1.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  %.sroa.4.0.copyload.us98.us.1.i = load i8, ptr %.sroa.4.0..sroa_idx.us97.us.1.i, align 1, !alias.scope !363, !noalias !365
  %.sroa.57.0..sroa_idx.us99.us.1.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  %.sroa.57.0.copyload.us100.us.1.i = load i8, ptr %.sroa.57.0..sroa_idx.us99.us.1.i, align 1, !alias.scope !363, !noalias !365
  %.sroa.06.0.copyload.us101.us.1.i = load i8, ptr %i.bk, align 1, !alias.scope !363, !noalias !365
  store i8 %.sroa.06.0.copyload.us101.us.1.i, ptr %i.aw, align 1, !noalias !364
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  store i8 %.sroa.4.0.copyload.us98.us.1.i, ptr %i.bl, align 1, !noalias !364
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aw, i64 2
  store i8 %.sroa.57.0.copyload.us100.us.1.i, ptr %i.bm, align 1, !noalias !364
  %.not12.us96.us.2.i = icmp ugt i64 %i.p, %i.bf
  br i1 %.not12.us96.us.2.i, label %_RINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoder18set_1bit_pixel_runINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhEEB8_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.p ; 4 uses
  %i.bo = sub nuw nsw i64 %i.bf, %i.p             ; 2 uses
  %i.bp = load i8, ptr %.sroa.0.0134.us155.i58, align 1, !noalias !364, !noundef !5
  %i.bq = lshr i8 %i.bp, 5
  %.lobit199.i = and i8 %i.bq, 1
  %i.br = zext nneg i8 %.lobit199.i to i64        ; 2 uses
  %i.bs = icmp samesign ugt i64 %i.an, %i.br
  br i1 %i.bs, label %bb.l, label %.split.us.i

bb.l:                                             ; preds = %bb.k
  %i.bt = getelementptr inbounds nuw [3 x i8], ptr %i.al, i64 %i.br ; 3 uses
  %.sroa.4.0..sroa_idx.us97.us.2.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  %.sroa.4.0.copyload.us98.us.2.i = load i8, ptr %.sroa.4.0..sroa_idx.us97.us.2.i, align 1, !alias.scope !363, !noalias !365
  %.sroa.57.0..sroa_idx.us99.us.2.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 2
  %.sroa.57.0.copyload.us100.us.2.i = load i8, ptr %.sroa.57.0..sroa_idx.us99.us.2.i, align 1, !alias.scope !363, !noalias !365
  %.sroa.06.0.copyload.us101.us.2.i = load i8, ptr %i.bt, align 1, !alias.scope !363, !noalias !365
  store i8 %.sroa.06.0.copyload.us101.us.2.i, ptr %i.be, align 1, !noalias !364
  %i.bu = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  store i8 %.sroa.4.0.copyload.us98.us.2.i, ptr %i.bu, align 1, !noalias !364
  %i.bv = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  store i8 %.sroa.57.0.copyload.us100.us.2.i, ptr %i.bv, align 1, !noalias !364
  %.not12.us96.us.3.i = icmp ugt i64 %i.p, %i.bo
  br i1 %.not12.us96.us.3.i, label %_RINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoder18set_1bit_pixel_runINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhEEB8_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.p ; 4 uses
  %i.bx = sub nuw nsw i64 %i.bo, %i.p             ; 2 uses
  %i.by = load i8, ptr %.sroa.0.0134.us155.i58, align 1, !noalias !364, !noundef !5
  %i.bz = lshr i8 %i.by, 4
  %.lobit200.i = and i8 %i.bz, 1
  %i.ca = zext nneg i8 %.lobit200.i to i64        ; 2 uses
  %i.cb = icmp samesign ugt i64 %i.an, %i.ca
  br i1 %i.cb, label %bb.n, label %.split.us.i

bb.n:                                             ; preds = %bb.m
  %i.cc = getelementptr inbounds nuw [3 x i8], ptr %i.al, i64 %i.ca ; 3 uses
  %.sroa.4.0..sroa_idx.us97.us.3.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 1
  %.sroa.4.0.copyload.us98.us.3.i = load i8, ptr %.sroa.4.0..sroa_idx.us97.us.3.i, align 1, !alias.scope !363, !noalias !365
  %.sroa.57.0..sroa_idx.us99.us.3.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 2
  %.sroa.57.0.copyload.us100.us.3.i = load i8, ptr %.sroa.57.0..sroa_idx.us99.us.3.i, align 1, !alias.scope !363, !noalias !365
  %.sroa.06.0.copyload.us101.us.3.i = load i8, ptr %i.cc, align 1, !alias.scope !363, !noalias !365
  store i8 %.sroa.06.0.copyload.us101.us.3.i, ptr %i.bn, align 1, !noalias !364
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  store i8 %.sroa.4.0.copyload.us98.us.3.i, ptr %i.cd, align 1, !noalias !364
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bn, i64 2
  store i8 %.sroa.57.0.copyload.us100.us.3.i, ptr %i.ce, align 1, !noalias !364
  %.not12.us96.us.4.i = icmp ugt i64 %i.p, %i.bx
  br i1 %.not12.us96.us.4.i, label %_RINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoder18set_1bit_pixel_runINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhEEB8_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.p ; 4 uses
  %i.cg = sub nuw nsw i64 %i.bx, %i.p             ; 2 uses
  %i.ch = load i8, ptr %.sroa.0.0134.us155.i58, align 1, !noalias !364, !noundef !5
  %i.ci = lshr i8 %i.ch, 3
  %.lobit201.i = and i8 %i.ci, 1
  %i.cj = zext nneg i8 %.lobit201.i to i64        ; 2 uses
  %i.ck = icmp samesign ugt i64 %i.an, %i.cj
  br i1 %i.ck, label %bb.p, label %.split.us.i

bb.p:                                             ; preds = %bb.o
  %i.cl = getelementptr inbounds nuw [3 x i8], ptr %i.al, i64 %i.cj ; 3 uses
  %.sroa.4.0..sroa_idx.us97.us.4.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 1
  %.sroa.4.0.copyload.us98.us.4.i = load i8, ptr %.sroa.4.0..sroa_idx.us97.us.4.i, align 1, !alias.scope !363, !noalias !365
  %.sroa.57.0..sroa_idx.us99.us.4.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 2
  %.sroa.57.0.copyload.us100.us.4.i = load i8, ptr %.sroa.57.0..sroa_idx.us99.us.4.i, align 1, !alias.scope !363, !noalias !365
  %.sroa.06.0.copyload.us101.us.4.i = load i8, ptr %i.cl, align 1, !alias.scope !363, !noalias !365
  store i8 %.sroa.06.0.copyload.us101.us.4.i, ptr %i.bw, align 1, !noalias !364
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bw, i64 1
  store i8 %.sroa.4.0.copyload.us98.us.4.i, ptr %i.cm, align 1, !noalias !364
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bw, i64 2
  store i8 %.sroa.57.0.copyload.us100.us.4.i, ptr %i.cn, align 1, !noalias !364
  %.not12.us96.us.5.i = icmp ugt i64 %i.p, %i.cg
  br i1 %.not12.us96.us.5.i, label %_RINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoder18set_1bit_pixel_runINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhEEB8_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.co = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.p ; 4 uses
  %i.cp = sub nuw nsw i64 %i.cg, %i.p             ; 2 uses
  %i.cq = load i8, ptr %.sroa.0.0134.us155.i58, align 1, !noalias !364, !noundef !5
  %i.cr = lshr i8 %i.cq, 2
  %.lobit202.i = and i8 %i.cr, 1
  %i.cs = zext nneg i8 %.lobit202.i to i64        ; 2 uses
  %i.ct = icmp samesign ugt i64 %i.an, %i.cs
  br i1 %i.ct, label %bb.r, label %.split.us.i

bb.r:                                             ; preds = %bb.q
  %i.cu = getelementptr inbounds nuw [3 x i8], ptr %i.al, i64 %i.cs ; 3 uses
  %.sroa.4.0..sroa_idx.us97.us.5.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 1
  %.sroa.4.0.copyload.us98.us.5.i = load i8, ptr %.sroa.4.0..sroa_idx.us97.us.5.i, align 1, !alias.scope !363, !noalias !365
  %.sroa.57.0..sroa_idx.us99.us.5.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 2
  %.sroa.57.0.copyload.us100.us.5.i = load i8, ptr %.sroa.57.0..sroa_idx.us99.us.5.i, align 1, !alias.scope !363, !noalias !365
  %.sroa.06.0.copyload.us101.us.5.i = load i8, ptr %i.cu, align 1, !alias.scope !363, !noalias !365
  store i8 %.sroa.06.0.copyload.us101.us.5.i, ptr %i.cf, align 1, !noalias !364
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cf, i64 1
  store i8 %.sroa.4.0.copyload.us98.us.5.i, ptr %i.cv, align 1, !noalias !364
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cf, i64 2
  store i8 %.sroa.57.0.copyload.us100.us.5.i, ptr %i.cw, align 1, !noalias !364
  %.not12.us96.us.6.i = icmp ugt i64 %i.p, %i.cp
  br i1 %.not12.us96.us.6.i, label %_RINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoder18set_1bit_pixel_runINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhEEB8_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cx = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.p ; 4 uses
  %i.cy = sub nuw nsw i64 %i.cp, %i.p             ; 2 uses
  %i.cz = load i8, ptr %.sroa.0.0134.us155.i58, align 1, !noalias !364, !noundef !5
  %i.da = lshr i8 %i.cz, 1
  %.lobit203.i = and i8 %i.da, 1
  %i.db = zext nneg i8 %.lobit203.i to i64        ; 2 uses
  %i.dc = icmp samesign ugt i64 %i.an, %i.db
  br i1 %i.dc, label %bb.t, label %.split.us.i

bb.t:                                             ; preds = %bb.s
  %i.dd = getelementptr inbounds nuw [3 x i8], ptr %i.al, i64 %i.db ; 3 uses
  %.sroa.4.0..sroa_idx.us97.us.6.i = getelementptr inbounds nuw i8, ptr %i.dd, i64 1
  %.sroa.4.0.copyload.us98.us.6.i = load i8, ptr %.sroa.4.0..sroa_idx.us97.us.6.i, align 1, !alias.scope !363, !noalias !365
  %.sroa.57.0..sroa_idx.us99.us.6.i = getelementptr inbounds nuw i8, ptr %i.dd, i64 2
  %.sroa.57.0.copyload.us100.us.6.i = load i8, ptr %.sroa.57.0..sroa_idx.us99.us.6.i, align 1, !alias.scope !363, !noalias !365
  %.sroa.06.0.copyload.us101.us.6.i = load i8, ptr %i.dd, align 1, !alias.scope !363, !noalias !365
  store i8 %.sroa.06.0.copyload.us101.us.6.i, ptr %i.co, align 1, !noalias !364
  %i.de = getelementptr inbounds nuw i8, ptr %i.co, i64 1
  store i8 %.sroa.4.0.copyload.us98.us.6.i, ptr %i.de, align 1, !noalias !364
  %i.df = getelementptr inbounds nuw i8, ptr %i.co, i64 2
  store i8 %.sroa.57.0.copyload.us100.us.6.i, ptr %i.df, align 1, !noalias !364
  %.not12.us96.us.7.i = icmp ugt i64 %i.p, %i.cy
  br i1 %.not12.us96.us.7.i, label %_RINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoder18set_1bit_pixel_runINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhEEB8_.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dg = load i8, ptr %.sroa.0.0134.us155.i58, align 1, !noalias !364, !noundef !5
  %i.dh = and i8 %i.dg, 1
  %i.di = zext nneg i8 %i.dh to i64               ; 2 uses
  %i.dj = icmp samesign ugt i64 %i.an, %i.di
  br i1 %i.dj, label %.loopexit18.split.us.us.i, label %.split.us.i

.loopexit18.split.us.us.i:                        ; preds = %bb.u
  %i.dk = sub nuw nsw i64 %i.cy, %i.p             ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.p
  %i.dm = getelementptr inbounds nuw [3 x i8], ptr %i.al, i64 %i.di ; 3 uses
  %.sroa.4.0..sroa_idx.us97.us.7.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 1
  %.sroa.4.0.copyload.us98.us.7.i = load i8, ptr %.sroa.4.0..sroa_idx.us97.us.7.i, align 1, !alias.scope !363, !noalias !365
  %.sroa.57.0..sroa_idx.us99.us.7.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 2
  %.sroa.57.0.copyload.us100.us.7.i = load i8, ptr %.sroa.57.0..sroa_idx.us99.us.7.i, align 1, !alias.scope !363, !noalias !365
  %.sroa.06.0.copyload.us101.us.7.i = load i8, ptr %i.dm, align 1, !alias.scope !363, !noalias !365
  store i8 %.sroa.06.0.copyload.us101.us.7.i, ptr %i.cx, align 1, !noalias !364
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cx, i64 1
  store i8 %.sroa.4.0.copyload.us98.us.7.i, ptr %i.dn, align 1, !noalias !364
  %i.do = getelementptr inbounds nuw i8, ptr %i.cx, i64 2
  store i8 %.sroa.57.0.copyload.us100.us.7.i, ptr %i.do, align 1, !noalias !364
  %i.dp = icmp eq ptr %i.av, %i.aq
  %.not12.us96.us.i = icmp ugt i64 %i.p, %i.dk
  %or.cond185 = select i1 %i.dp, i1 true, i1 %.not12.us96.us.i
  br i1 %or.cond185, label %_RINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoder18set_1bit_pixel_runINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhEEB8_.exit, label %.lr.ph59

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us146.i
  %.not12.i = icmp samesign ult i64 %i.s, 2
  br i1 %.not12.i, label %_RINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoder18set_1bit_pixel_runINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhEEB8_.exit, label %bb.v

bb.v:                                             ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.i
  %i.dq = load i8, ptr %i.ao, align 1, !noalias !364, !noundef !5
  %.lobit158.i = lshr i8 %i.dq, 7
  %i.dr = zext nneg i8 %.lobit158.i to i64        ; 3 uses
  %i.ds = icmp samesign ugt i64 %i.an, %i.dr
  br i1 %i.ds, label %bb.w, label %.split.us.i

bb.w:                                             ; preds = %bb.v
  %i.dt = getelementptr inbounds nuw [3 x i8], ptr %i.al, i64 %i.dr ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dt, i64 1
  %.sroa.4.0.copyload.i = load i8, ptr %.sroa.4.0..sroa_idx.i, align 1, !alias.scope !363, !noalias !365
  %.sroa.06.0.copyload.i = load i8, ptr %i.dt, align 1, !alias.scope !363, !noalias !365
  store i8 %.sroa.06.0.copyload.i, ptr %1, align 1, !noalias !364
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %.sroa.4.0.copyload.i, ptr %i.du, align 1, !noalias !364
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #32, !noalias !364
  unreachable

.split.us.i:                                      ; preds = %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %.lr.ph59, %bb.v, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us154.i.preheader
  %.us-phi.i = phi i64 [ %i.dr, %bb.v ], [ %5, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us154.i.preheader ], [ 1, %bb.i ], [ 1, %bb.k ], [ 1, %bb.m ], [ 1, %bb.o ], [ 1, %bb.q ], [ 1, %bb.s ], [ 1, %bb.u ], [ %i.az, %.lr.ph59 ]
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.us-phi.i, i64 noundef range(i64 0, 3074457345618258603) %i.an, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #32, !noalias !364
  unreachable

bb.x:                                             ; preds = %.split
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dw = load ptr, ptr %i.dv, align 8, !nonnull !5, !align !7, !noundef !5 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !nonnull !5, !noundef !5 ; 6 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.ea = load i64, ptr %i.dz, align 8, !noundef !5 ; 10 uses
  %i.eb = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.ec = load i64, ptr %i.g, align 8, !noundef !5 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8, !nonnull !5, !align !7, !noundef !5
  %i.eg = load i64, ptr %i.ef, align 8, !noundef !5 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !366)
  %i.eh = icmp samesign eq i64 %i.ec, 0
  br i1 %i.eh, label %_RINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoder18set_1bit_pixel_runINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhEEB8_.exit, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i6

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i6: ; preds = %bb.x
  %cond14 = icmp eq i64 %i.p, 1
  br i1 %cond14, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us98.i, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.split.i10

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us98.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i6
  %i.ei = icmp eq i64 %i.eg, 0
  %.not47.us101.i = icmp eq i64 %i.s, 0
  %or.cond = select i1 %i.ei, i1 true, i1 %.not47.us101.i
  br i1 %or.cond, label %_RINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoder18set_1bit_pixel_runINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhEEB8_.exit, label %bb.y

bb.y:                                             ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us98.i
  %i.ej = load i8, ptr %i.eb, align 1, !noalias !367, !noundef !5
  %i.ek = lshr i8 %i.ej, 6
  %i.el = zext nneg i8 %i.ek to i64               ; 3 uses
  %i.em = icmp samesign ugt i64 %i.ea, %i.el
  br i1 %i.em, label %.split113.us.i, label %.split.us.i8

.split113.us.i:                                   ; preds = %bb.y
  %i.en = getelementptr inbounds nuw [3 x i8], ptr %i.dy, i64 %i.el
  %.sroa.012.0.copyload.us.i = load i8, ptr %i.en, align 1, !alias.scope !366, !noalias !368
  store i8 %.sroa.012.0.copyload.us.i, ptr %1, align 1, !noalias !367
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #32, !noalias !367
  unreachable

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.split.i10: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i6
  %i.eo = icmp ugt i64 %i.p, 2
  %i.ep = icmp eq i64 %i.eg, 0                    ; 2 uses
  br i1 %i.eo, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us114.i.preheader, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.i11

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us114.i.preheader: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.split.i10
  %.not47.us117.i39 = icmp ugt i64 %i.p, %i.s
  %or.cond1540 = select i1 %i.ep, i1 true, i1 %.not47.us117.i39
  br i1 %or.cond1540, label %_RINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoder18set_1bit_pixel_runINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhEEB8_.exit, label %.lr.ph

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us114.i: ; preds = %bb.af
  %i.eq = add i64 %.sroa.0.077.us115.i41, -4      ; 2 uses
  %i.er = icmp eq i64 %i.eq, 0
  %.not47.us117.i = icmp ugt i64 %i.p, %i.ga
  %or.cond15.a = select i1 %i.er, i1 true, i1 %.not47.us117.i
  br i1 %or.cond15.a, label %_RINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoder18set_1bit_pixel_runINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhEEB8_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us114.i.preheader, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us114.i
  %.sroa.0.05976.us116.i42 = phi ptr [ %i.eu, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us114.i ], [ %i.eb, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us114.i.preheader ] ; 2 uses
  %.sroa.0.077.us115.i41 = phi i64 [ %i.eq, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us114.i ], [ %i.eg, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us114.i.preheader ] ; 4 uses
  %i.es = phi ptr [ %i.fz, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us114.i ], [ %1, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us114.i.preheader ] ; 5 uses
  %i.et = phi i64 [ %i.ga, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us114.i ], [ %i.s, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us114.i.preheader ]
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.0.05976.us116.i42, i64 1 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.p ; 4 uses
  %i.ew = sub nuw nsw i64 %i.et, %i.p             ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.es) ]
  %i.ex = load i8, ptr %.sroa.0.05976.us116.i42, align 1, !noalias !367, !noundef !5 ; 4 uses
  %i.ey = lshr i8 %i.ex, 6
  %i.ez = zext nneg i8 %i.ey to i64               ; 3 uses
  %i.fa = icmp samesign ugt i64 %i.ea, %i.ez
  br i1 %i.fa, label %bb.z, label %.split.us.i8

bb.z:                                             ; preds = %.lr.ph
  %i.fb = getelementptr inbounds nuw [3 x i8], ptr %i.dy, i64 %i.ez ; 3 uses
  %.sroa.4.0..sroa_idx.us118.i = getelementptr inbounds nuw i8, ptr %i.fb, i64 1
  %.sroa.4.0.copyload.us119.i = load i8, ptr %.sroa.4.0..sroa_idx.us118.i, align 1, !alias.scope !366, !noalias !368
  %.sroa.513.0..sroa_idx.us120.i = getelementptr inbounds nuw i8, ptr %i.fb, i64 2
  %.sroa.513.0.copyload.us121.i = load i8, ptr %.sroa.513.0..sroa_idx.us120.i, align 1, !alias.scope !366, !noalias !368
  %.sroa.012.0.copyload.us122.i = load i8, ptr %i.fb, align 1, !alias.scope !366, !noalias !368
  store i8 %.sroa.012.0.copyload.us122.i, ptr %i.es, align 1, !noalias !367
  %i.fc = getelementptr inbounds nuw i8, ptr %i.es, i64 1
  store i8 %.sroa.4.0.copyload.us119.i, ptr %i.fc, align 1, !noalias !367
  %i.fd = getelementptr inbounds nuw i8, ptr %i.es, i64 2
  store i8 %.sroa.513.0.copyload.us121.i, ptr %i.fd, align 1, !noalias !367
  %i.fe = icmp eq i64 %.sroa.0.077.us115.i41, 1
  %.not50.us.i = icmp ugt i64 %i.p, %i.ew
  %or.cond16.a = select i1 %i.fe, i1 true, i1 %.not50.us.i
  br i1 %or.cond16.a, label %_RINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoder18set_1bit_pixel_runINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhEEB8_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.p ; 4 uses
  %i.fg = sub nuw nsw i64 %i.ew, %i.p             ; 2 uses
  %i.fh = lshr i8 %i.ex, 4
  %i.fi = and i8 %i.fh, 3
  %i.fj = zext nneg i8 %i.fi to i64               ; 3 uses
  %i.fk = icmp samesign ugt i64 %i.ea, %i.fj
  br i1 %i.fk, label %bb.ab, label %.split132.us.i

bb.ab:                                            ; preds = %bb.aa
  %i.fl = getelementptr inbounds nuw [3 x i8], ptr %i.dy, i64 %i.fj ; 3 uses
  %.sroa.417.0..sroa_idx.us.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 1
  %.sroa.417.0.copyload.us.i = load i8, ptr %.sroa.417.0..sroa_idx.us.i, align 1, !alias.scope !366, !noalias !368
  %.sroa.518.0..sroa_idx.us.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 2
  %.sroa.518.0.copyload.us.i = load i8, ptr %.sroa.518.0..sroa_idx.us.i, align 1, !alias.scope !366, !noalias !368
  %.sroa.016.0.copyload.us.i = load i8, ptr %i.fl, align 1, !alias.scope !366, !noalias !368
  store i8 %.sroa.016.0.copyload.us.i, ptr %i.ev, align 1, !noalias !367
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ev, i64 1
  store i8 %.sroa.417.0.copyload.us.i, ptr %i.fm, align 1, !noalias !367
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ev, i64 2
  store i8 %.sroa.518.0.copyload.us.i, ptr %i.fn, align 1, !noalias !367
  %i.fo = icmp eq i64 %.sroa.0.077.us115.i41, 2
  %.not53.us.i = icmp ugt i64 %i.p, %i.fg
  %or.cond17.a = select i1 %i.fo, i1 true, i1 %.not53.us.i
  br i1 %or.cond17.a, label %_RINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoder18set_1bit_pixel_runINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhEEB8_.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.p ; 4 uses
  %i.fq = sub nuw nsw i64 %i.fg, %i.p             ; 2 uses
  %i.fr = lshr i8 %i.ex, 2
  %i.fs = and i8 %i.fr, 3
  %i.ft = zext nneg i8 %i.fs to i64               ; 3 uses
  %i.fu = icmp samesign ugt i64 %i.ea, %i.ft
  br i1 %i.fu, label %bb.ad, label %.split137.us.i

bb.ad:                                            ; preds = %bb.ac
  %i.fv = getelementptr inbounds nuw [3 x i8], ptr %i.dy, i64 %i.ft ; 3 uses
  %.sroa.422.0..sroa_idx.us.i = getelementptr inbounds nuw i8, ptr %i.fv, i64 1
  %.sroa.422.0.copyload.us.i = load i8, ptr %.sroa.422.0..sroa_idx.us.i, align 1, !alias.scope !366, !noalias !368
  %.sroa.523.0..sroa_idx.us.i = getelementptr inbounds nuw i8, ptr %i.fv, i64 2
  %.sroa.523.0.copyload.us.i = load i8, ptr %.sroa.523.0..sroa_idx.us.i, align 1, !alias.scope !366, !noalias !368
  %.sroa.021.0.copyload.us.i = load i8, ptr %i.fv, align 1, !alias.scope !366, !noalias !368
  store i8 %.sroa.021.0.copyload.us.i, ptr %i.ff, align 1, !noalias !367
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ff, i64 1
  store i8 %.sroa.422.0.copyload.us.i, ptr %i.fw, align 1, !noalias !367
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ff, i64 2
  store i8 %.sroa.523.0.copyload.us.i, ptr %i.fx, align 1, !noalias !367
  %i.fy = icmp eq i64 %.sroa.0.077.us115.i41, 3
  %.not56.us.i = icmp ugt i64 %i.p, %i.fq
  %or.cond18.a = select i1 %i.fy, i1 true, i1 %.not56.us.i
  br i1 %or.cond18.a, label %_RINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoder18set_1bit_pixel_runINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhEEB8_.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.p
  %i.ga = sub nuw nsw i64 %i.fq, %i.p             ; 2 uses
  %i.gb = and i8 %i.ex, 3
  %i.gc = zext nneg i8 %i.gb to i64               ; 3 uses
  %i.gd = icmp samesign ugt i64 %i.ea, %i.gc
  br i1 %i.gd, label %bb.af, label %.split142.us.i

bb.af:                                            ; preds = %bb.ae
  %i.ge = getelementptr inbounds nuw [3 x i8], ptr %i.dy, i64 %i.gc ; 3 uses
  %.sroa.427.0..sroa_idx.us.i = getelementptr inbounds nuw i8, ptr %i.ge, i64 1
  %.sroa.427.0.copyload.us.i = load i8, ptr %.sroa.427.0..sroa_idx.us.i, align 1, !alias.scope !366, !noalias !368
  %.sroa.528.0..sroa_idx.us.i = getelementptr inbounds nuw i8, ptr %i.ge, i64 2
  %.sroa.528.0.copyload.us.i = load i8, ptr %.sroa.528.0..sroa_idx.us.i, align 1, !alias.scope !366, !noalias !368
  %.sroa.026.0.copyload.us.i = load i8, ptr %i.ge, align 1, !alias.scope !366, !noalias !368
  store i8 %.sroa.026.0.copyload.us.i, ptr %i.fp, align 1, !noalias !367
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fp, i64 1
  store i8 %.sroa.427.0.copyload.us.i, ptr %i.gf, align 1, !noalias !367
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fp, i64 2
  store i8 %.sroa.528.0.copyload.us.i, ptr %i.gg, align 1, !noalias !367
  %i.gh = icmp eq ptr %i.eu, %i.ed
  br i1 %i.gh, label %_RINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoder18set_1bit_pixel_runINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhEEB8_.exit, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us114.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.i11: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.split.i10
  %.not47.i = icmp samesign ult i64 %i.s, 2
  %or.cond19 = select i1 %i.ep, i1 true, i1 %.not47.i
  br i1 %or.cond19, label %_RINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoder18set_1bit_pixel_runINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhEEB8_.exit, label %bb.ag

bb.ag:                                            ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.i11
  %i.gi = load i8, ptr %i.eb, align 1, !noalias !367, !noundef !5
  %i.gj = lshr i8 %i.gi, 6
  %i.gk = zext nneg i8 %i.gj to i64               ; 3 uses
  %i.gl = icmp samesign ugt i64 %i.ea, %i.gk
  br i1 %i.gl, label %bb.ah, label %.split.us.i8

bb.ah:                                            ; preds = %bb.ag
  %i.gm = getelementptr inbounds nuw [3 x i8], ptr %i.dy, i64 %i.gk ; 2 uses
  %.sroa.4.0..sroa_idx.i12 = getelementptr inbounds nuw i8, ptr %i.gm, i64 1
  %.sroa.4.0.copyload.i13 = load i8, ptr %.sroa.4.0..sroa_idx.i12, align 1, !alias.scope !366, !noalias !368
  %.sroa.012.0.copyload.i = load i8, ptr %i.gm, align 1, !alias.scope !366, !noalias !368
  store i8 %.sroa.012.0.copyload.i, ptr %1, align 1, !noalias !367
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %.sroa.4.0.copyload.i13, ptr %i.gn, align 1, !noalias !367
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #32, !noalias !367
  unreachable

.split.us.i8:                                     ; preds = %.lr.ph, %bb.ag, %bb.y
  %.us-phi95.i = phi i64 [ %i.gk, %bb.ag ], [ %i.el, %bb.y ], [ %i.ez, %.lr.ph ]
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.us-phi95.i, i64 noundef range(i64 0, 3074457345618258603) %i.ea, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #32, !noalias !367
  unreachable

.split132.us.i:                                   ; preds = %bb.aa
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.fj, i64 noundef range(i64 0, 3074457345618258603) %i.ea, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #32, !noalias !367
  unreachable

.split137.us.i:                                   ; preds = %bb.ac
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ft, i64 noundef range(i64 0, 3074457345618258603) %i.ea, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #32, !noalias !367
  unreachable

.split142.us.i:                                   ; preds = %bb.ae
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.gc, i64 noundef range(i64 0, 3074457345618258603) %i.ea, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #32, !noalias !367
  unreachable

bb.ai:                                            ; preds = %.split
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gp = load ptr, ptr %i.go, align 8, !nonnull !5, !align !7, !noundef !5 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8, !nonnull !5, !noundef !5
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %i.gt = load i64, ptr %i.gs, align 8, !noundef !5
  %i.gu = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.gv = load i64, ptr %i.g, align 8, !noundef !5
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.gv
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gy = load ptr, ptr %i.gx, align 8, !nonnull !5, !align !7, !noundef !5
  %i.gz = load i64, ptr %i.gy, align 8, !noundef !5
  %i.ha = call fastcc noundef zeroext i1 @_RINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoder18set_4bit_pixel_runINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhEEB8_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gr, i64 noundef %i.gt, ptr noundef nonnull %i.gu, ptr noundef %i.gw, i64 noundef %i.gz) ; 0 uses
  br label %_RINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoder18set_1bit_pixel_runINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhEEB8_.exit

bb.aj:                                            ; preds = %.split
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.hc = load ptr, ptr %i.hb, align 8, !nonnull !5, !align !7, !noundef !5 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %i.he = load ptr, ptr %i.hd, align 8, !nonnull !5, !noundef !5
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %i.hg = load i64, ptr %i.hf, align 8, !noundef !5
  %i.hh = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.hi = load i64, ptr %i.g, align 8, !noundef !5
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.hi
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.hl = load ptr, ptr %i.hk, align 8, !nonnull !5, !align !7, !noundef !5
  %i.hm = load i64, ptr %i.hl, align 8, !noundef !5
  %i.hn = call fastcc noundef zeroext i1 @_RINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoder18set_8bit_pixel_runINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhEEB8_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.he, i64 noundef %i.hg, ptr noundef nonnull %i.hh, ptr noundef %i.hj, i64 noundef %i.hm) ; 0 uses
  br label %_RINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoder18set_1bit_pixel_runINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhEEB8_.exit

_RINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoder18set_1bit_pixel_runINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhEEB8_.exit: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us114.i, %bb.z, %bb.ab, %bb.ad, %bb.af, %bb.h, %bb.j, %bb.l, %bb.n, %bb.p, %bb.r, %bb.t, %.loopexit18.split.us.us.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us114.i.preheader, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split.split.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.i11, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us98.i, %bb.x, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.split.split.us.i, %bb.g, %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.am

bb.ak:                                            ; preds = %bb.e
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ag, i64 noundef %i.ah, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #32
  unreachable

bb.al:                                            ; preds = %bb.e
  %i.ho = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5
  tail call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ho, i64 noundef %i.ag, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51)
  br label %bb.am

bb.am:                                            ; preds = %_RINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoder18set_1bit_pixel_runINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhEEB8_.exit, %bb.al, %bb.a
  %.sroa.0.0 = phi ptr [ %i.i, %bb.a ], [ null, %bb.al ], [ null, %_RINvNtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoder18set_1bit_pixel_runINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhEEB8_.exit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvNtNtCsj6eKBz9Db1c_4core3str7pattern13simd_containss0_0Csa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i16 noundef range(i16 1, 0) %2, i1 noundef zeroext %3) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 11 uses
  br i1 %3, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr i8, ptr %i.b, i64 %1       ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !5 ; 4 uses
  %i.g = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.h = icmp samesign ult i64 %i.f, 4
  %i.i = getelementptr i8, ptr %i.g, i64 %i.f     ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -4
  %.sroa.518.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.619.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br i1 %i.h, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %_RNvNtNtCsj6eKBz9Db1c_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us
  %.sroa.0.08.us = phi i16 [ %i.w, %_RNvNtNtCsj6eKBz9Db1c_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us ], [ %2, %.preheader ] ; 2 uses
  %i.k = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.08.us, i1 true) ; 2 uses
  %i.l = zext nneg i16 %i.k to i64
  %i.m = getelementptr i8, ptr %i.c, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 1        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !372)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !373)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.o = getelementptr i8, ptr %i.n, i64 %i.f
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly %i.n, ptr noundef nonnull readonly %i.o, ptr noundef nonnull readonly %i.g, ptr noundef nonnull readonly %i.i)
  %.sroa.0.0.copyload.i.us = load ptr, ptr %i.a, align 8, !noalias !374 ; 2 uses
  %.sroa.518.0.copyload.i.us = load ptr, ptr %.sroa.518.0..sroa_idx.i, align 8, !noalias !374 ; 2 uses
  %.sroa.619.0.copyload.i.us = load i64, ptr %.sroa.619.0..sroa_idx.i, align 8, !noalias !374 ; 3 uses
  %.sroa.8.0.copyload.i.us = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !374 ; 2 uses
  %umax.i.us = tail call i64 @llvm.umax.i64(i64 %.sroa.619.0.copyload.i.us, i64 %.sroa.8.0.copyload.i.us)
  %exitcond.not.i.us17.not = icmp ult i64 %.sroa.619.0.copyload.i.us, %.sroa.8.0.copyload.i.us
  br i1 %exitcond.not.i.us17.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit.i.us.preheader, label %_RNvNtNtCsj6eKBz9Db1c_4core3str7pattern14small_slice_eq.exit.thread5

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit.i.us.preheader: ; preds = %.preheader.split.us
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.us) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.518.0.copyload.i.us) ]
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit.i.us

bb.b:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit.i.us
  %i.p = add i64 %.sroa.619.0.i.us18, 1           ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.p, %umax.i.us
  br i1 %exitcond.not.i.us, label %_RNvNtNtCsj6eKBz9Db1c_4core3str7pattern14small_slice_eq.exit.thread5, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit.i.us

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit.i.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit.i.us.preheader, %bb.b
  %.sroa.619.0.i.us18 = phi i64 [ %i.p, %bb.b ], [ %.sroa.619.0.copyload.i.us, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit.i.us.preheader ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.us, i64 %.sroa.619.0.i.us18
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.518.0.copyload.i.us, i64 %.sroa.619.0.i.us18
  %i.s = load i8, ptr %i.q, align 1, !noundef !5
  %i.t = load i8, ptr %i.r, align 1, !noundef !5
  %.not17.i.us = icmp eq i8 %i.s, %i.t
  br i1 %.not17.i.us, label %bb.b, label %_RNvNtNtCsj6eKBz9Db1c_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us

_RNvNtNtCsj6eKBz9Db1c_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCsa5QsYiPB8Gl_5image.exit.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.u = shl nuw i16 1, %i.k
  %i.v = xor i16 %i.u, -1
  %i.w = and i16 %.sroa.0.08.us, %i.v             ; 2 uses
  %i.x = icmp eq i16 %i.w, 0
  br i1 %i.x, label %.loopexit, label %.preheader.split.us

.preheader.split:                                 ; preds = %.preheader, %bb.d
  %.sroa.0.08 = phi i16 [ %i.al, %bb.d ], [ %2, %.preheader ] ; 2 uses
  %i.y = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.08, i1 true) ; 2 uses
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = getelementptr i8, ptr %i.c, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 1      ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !372)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !373)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ac = getelementptr i8, ptr %i.ab, i64 %i.f
  %i.ad = getelementptr i8, ptr %i.ac, i64 -4     ; 3 uses
  %i.ae = icmp ult ptr %i.ab, %i.ad
  br i1 %i.ae, label %.lr.ph.i, label %_RNvNtNtCsj6eKBz9Db1c_4core3str7pattern14small_slice_eq.exit

.lr.ph.i:                                         ; preds = %.preheader.split, %bb.c
  %.sroa.04.026.i = phi ptr [ %i.af, %bb.c ], [ %i.ab, %.preheader.split ] ; 2 uses
  %.sroa.08.025.i = phi ptr [ %i.ag, %bb.c ], [ %i.g, %.preheader.split ] ; 2 uses
  %.sroa.011.0.copyload.i = load i32, ptr %.sroa.04.026.i, align 1, !alias.scope !372, !noalias !373
  %.sroa.012.0.copyload.i = load i32, ptr %.sroa.08.025.i, align 1, !alias.scope !373, !noalias !372
  %.not.i = icmp eq i32 %.sroa.011.0.copyload.i, %.sroa.012.0.copyload.i
  br i1 %.not.i, label %bb.c, label %_RNvNtNtCsj6eKBz9Db1c_4core3str7pattern14small_slice_eq.exit.thread.loopexit7

bb.c:                                             ; preds = %.lr.ph.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.026.i, i64 4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.08.025.i, i64 4
  %i.ah = icmp ult ptr %i.af, %i.ad
  br i1 %i.ah, label %.lr.ph.i, label %_RNvNtNtCsj6eKBz9Db1c_4core3str7pattern14small_slice_eq.exit

_RNvNtNtCsj6eKBz9Db1c_4core3str7pattern14small_slice_eq.exit.thread5: ; preds = %.preheader.split.us, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

_RNvNtNtCsj6eKBz9Db1c_4core3str7pattern14small_slice_eq.exit.thread.loopexit7: ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

_RNvNtNtCsj6eKBz9Db1c_4core3str7pattern14small_slice_eq.exit: ; preds = %bb.c, %.preheader.split
  %.sroa.013.0.copyload.i = load i32, ptr %i.ad, align 1, !alias.scope !372, !noalias !373
  %.sroa.014.0.copyload.i = load i32, ptr %i.j, align 1, !alias.scope !373, !noalias !372
  %i.ai = icmp eq i32 %.sroa.013.0.copyload.i, %.sroa.014.0.copyload.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.ai, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %bb.d, %_RNvNtNtCsj6eKBz9Db1c_4core3str7pattern14small_slice_eq.exit, %_RNvNtNtCsj6eKBz9Db1c_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us, %_RNvNtNtCsj6eKBz9Db1c_4core3str7pattern14small_slice_eq.exit.thread5, %bb.a
  %.sroa.03.0 = phi i1 [ true, %_RNvNtNtCsj6eKBz9Db1c_4core3str7pattern14small_slice_eq.exit.thread5 ], [ false, %bb.a ], [ false, %_RNvNtNtCsj6eKBz9Db1c_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us ], [ true, %_RNvNtNtCsj6eKBz9Db1c_4core3str7pattern14small_slice_eq.exit ], [ false, %bb.d ]
  ret i1 %.sroa.03.0

bb.d:                                             ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str7pattern14small_slice_eq.exit.thread.loopexit7, %_RNvNtNtCsj6eKBz9Db1c_4core3str7pattern14small_slice_eq.exit
  %i.aj = shl nuw i16 1, %i.y
  %i.ak = xor i16 %i.aj, -1
  %i.al = and i16 %.sroa.0.08, %i.ak              ; 2 uses
  %i.am = icmp eq i16 %i.al, 0
  br i1 %i.am, label %.loopexit, label %.preheader.split
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 -1, 8) i8 @_RNvMNtCsa5QsYiPB8Gl_5image8metadataNtB2_11Orientation15from_exif_chunk(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMNtCsa5QsYiPB8Gl_5image8metadataNtB2_11Orientation21from_exif_chunk_inner(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.c = load i8, ptr %i.b, align 1, !range !27, !noundef !5
  %.not = icmp eq i8 %i.c, 2
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i8, ptr %i.d, align 8, !range !28
  %.sroa.0.0 = select i1 %.not, i8 -1, i8 %i.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCsa5QsYiPB8Gl_5image8metadataNtB2_11Orientation21from_exif_chunk_inner(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [2 x i8], align 2                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [2 x i8], align 2                 ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [2 x i8], align 2                 ; 6 uses
  %i.i = alloca [16 x i8], align 8                ; 4 uses
  %i.j = alloca [2 x i8], align 2                 ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 4 uses
  %i.l = alloca [2 x i8], align 2                 ; 6 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [4 x i8], align 4                 ; 6 uses
  %i.o = alloca [16 x i8], align 8                ; 4 uses
  %i.p = alloca [2 x i8], align 2                 ; 4 uses
  %i.q = alloca [16 x i8], align 8                ; 4 uses
  %i.r = alloca [2 x i8], align 2                 ; 6 uses
  %i.s = alloca [16 x i8], align 8                ; 4 uses
  %i.t = alloca [4 x i8], align 4                 ; 6 uses
  %i.u = alloca [16 x i8], align 8                ; 4 uses
  %i.v = alloca [2 x i8], align 2                 ; 6 uses
  %i.w = alloca [16 x i8], align 8                ; 4 uses
  %i.x = alloca [2 x i8], align 2                 ; 6 uses
  %i.y = alloca [16 x i8], align 8                ; 4 uses
  %i.z = alloca [2 x i8], align 2                 ; 6 uses
  %i.aa = alloca [16 x i8], align 8               ; 4 uses
  %i.ab = alloca [4 x i8], align 4                ; 6 uses
  %i.ac = alloca [16 x i8], align 8               ; 4 uses
  %i.ad = alloca [4 x i8], align 4                ; 10 uses
  %i.ae = alloca [24 x i8], align 8               ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store ptr %1, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i64 %2, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 5 uses
  store i64 0, ptr %i.ag, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store i32 0, ptr %i.ad, align 4
  %i.ah = call noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull %i.ad, i64 noundef 4) ; 4 uses
  %.not = icmp eq ptr %i.ah, null
  br i1 %.not, label %bb.e, label %bb.b
end_hunk_0
