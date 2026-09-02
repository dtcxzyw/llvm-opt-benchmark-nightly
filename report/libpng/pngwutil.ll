Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libpng/original/pngwutil?download=true
inline.NumInlined: 101
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 19
begin_hunk_0_@png_write_IHDR:bb.a

bb.l:                                             ; preds = %bb.a
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.5) #13
  unreachable

bb.m:                                             ; preds = %bb.j, %bb.j, %bb.h, %bb.h, %bb.f, %bb.d, %bb.d, %bb.b
  %.sink = phi i8 [ 2, %bb.h ], [ 1, %bb.f ], [ 3, %bb.d ], [ 1, %bb.b ], [ 3, %bb.d ], [ 2, %bb.h ], [ 4, %bb.j ], [ 4, %bb.j ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 627
  store i8 %.sink, ptr %i.h, align 1, !tbaa !84
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.6) #12
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.j = load i32, ptr %i.i, align 8, !tbaa !35
  %i.k = and i32 %i.j, 4
  %.not94 = icmp eq i32 %i.k, 0
  br i1 %.not94, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.m = load i32, ptr %i.l, align 4, !tbaa !28
  %i.n = and i32 %i.m, 4096
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.p = and i32 %4, -5
  %or.cond = icmp ne i32 %i.p, 2
  %i.q = icmp ne i32 %6, 64
  %or.cond4.not96 = or i1 %or.cond, %i.q
  %i.r = icmp ne i32 %6, 0
  %or.cond6 = and i1 %i.r, %or.cond4.not96
  br i1 %or.cond6, label %bb.s, label %bb.t

bb.r:                                             ; preds = %bb.p, %bb.o
  %.old5.not = icmp eq i32 %6, 0
  br i1 %.old5.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.7) #12
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %bb.s, %bb.r
  %.090 = phi i32 [ 0, %bb.s ], [ %6, %bb.q ], [ 0, %bb.r ]
  %or.cond9 = icmp ugt i32 %7, 1
  br i1 %or.cond9, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.8) #12
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.0 = phi i32 [ 1, %bb.u ], [ %7, %bb.t ]
  %i.s = trunc i32 %3 to i8                       ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 2 uses
  store i8 %i.s, ptr %i.t, align 8, !tbaa !36
  %i.u = trunc nuw nsw i32 %4 to i8               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 623 ; 2 uses
  store i8 %i.u, ptr %i.v, align 1, !tbaa !37
  %i.w = trunc nuw nsw i32 %.0 to i8              ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 620
  store i8 %i.w, ptr %i.x, align 4, !tbaa !38
  %i.y = trunc nuw nsw i32 %.090 to i8            ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1052
  store i8 %i.y, ptr %i.z, align 4, !tbaa !85
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1104
  store i8 0, ptr %i.aa, align 8, !tbaa !39
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 508
  store i32 %1, ptr %i.ab, align 4, !tbaa !40
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 512
  store i32 %2, ptr %i.ac, align 8, !tbaa !41
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 627
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !84  ; 2 uses
  %i.af = mul i8 %i.ae, %i.s                      ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 626
  store i8 %i.af, ptr %i.ag, align 2, !tbaa !42
  %i.ah = icmp ugt i8 %i.af, 7
  %i.ai = zext i32 %1 to i64                      ; 2 uses
  br i1 %i.ah, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.aj = lshr i8 %i.af, 3
  %i.ak = zext nneg i8 %i.aj to i64
  %i.al = mul nuw nsw i64 %i.ak, %i.ai
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.am = zext nneg i8 %i.af to i64
  %i.an = mul nuw nsw i64 %i.am, %i.ai
  %i.ao = add nuw nsw i64 %i.an, 7
  %i.ap = lshr i64 %i.ao, 3
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.aq = phi i64 [ %i.al, %bb.w ], [ %i.ap, %bb.x ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 528
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !43
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 520
  store i32 %1, ptr %i.as, align 8, !tbaa !44
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 625
  store i8 %i.s, ptr %i.at, align 1, !tbaa !45
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 628
  store i8 %i.ae, ptr %i.au, align 4, !tbaa !46
  %i.av = lshr i32 %1, 24
  %i.aw = trunc nuw i32 %i.av to i8
  store i8 %i.aw, ptr %i.a, align 1, !tbaa !10
  %i.ax = lshr i32 %1, 16
  %i.ay = trunc i32 %i.ax to i8
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !10
  %i.ba = lshr i32 %1, 8
  %i.bb = trunc i32 %i.ba to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !10
  %i.bd = trunc i32 %1 to i8
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !10
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bg = lshr i32 %2, 24
  %i.bh = trunc nuw i32 %i.bg to i8
  store i8 %i.bh, ptr %i.bf, align 1, !tbaa !10
  %i.bi = lshr i32 %2, 16
  %i.bj = trunc i32 %i.bi to i8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !10
  %i.bl = lshr i32 %2, 8
  %i.bm = trunc i32 %i.bl to i8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !10
  %i.bo = trunc i32 %2 to i8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !10
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.s, ptr %i.bq, align 1, !tbaa !10
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  store i8 %i.u, ptr %i.br, align 1, !tbaa !10
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i8 0, ptr %i.bs, align 1, !tbaa !10
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  store i8 %i.y, ptr %i.bt, align 1, !tbaa !10
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i8 %i.w, ptr %i.bu, align 1, !tbaa !10
  call fastcc void @png_write_complete_chunk(ptr noundef nonnull %0, i32 noundef 1229472850, ptr noundef nonnull %i.a, i64 noundef 13)
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 622 ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 2, !tbaa !47
  %i.bx = icmp eq i8 %i.bw, 0
  br i1 %i.bx, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.by = load i8, ptr %i.v, align 1, !tbaa !37
  %i.bz = icmp eq i8 %i.by, 3
  br i1 %i.bz, label %.sink.split, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ca = load i8, ptr %i.t, align 8, !tbaa !36
  %i.cb = icmp ult i8 %i.ca, 8
  %spec.select = select i1 %i.cb, i8 8, i8 -8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.aa, %bb.z
  %.sink103 = phi i8 [ 8, %bb.z ], [ %spec.select, %bb.aa ]
  store i8 %.sink103, ptr %i.bv, align 2, !tbaa !47
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split, %bb.y
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 300
  store i32 1, ptr %i.cc, align 4, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: noreturn
declare void @png_error(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @png_warning(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @png_write_PLTE(ptr noalias noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 7 uses
  %i.b = alloca [8 x i8], align 1                 ; 8 uses
  %i.c = alloca [3 x i8], align 1                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 623
  %i.e = load i8, ptr %i.d, align 1, !tbaa !37    ; 2 uses
  %i.f = icmp eq i8 %i.e, 3
  br i1 %i.f, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.h = load i8, ptr %i.g, align 8, !tbaa !36
  %i.i = zext nneg i8 %i.h to i32
  %i.j = shl nuw i32 1, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.l = load i32, ptr %i.k, align 8, !tbaa !35
  %3 = trunc i32 %i.l to i1
  %4 = icmp ne i32 %2, 0
  %or.cond.not = or i1 %4, %3
  %5 = icmp ule i32 %2, %i.j
  %or.cond28 = select i1 %or.cond.not, i1 %5, i1 false
  br i1 %or.cond28, label %png_write_chunk_header.exit, label %bb.c

.thread:                                          ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.n = load i32, ptr %i.m, align 8, !tbaa !35
  %6 = trunc i32 %i.n to i1
  %7 = icmp ne i32 %2, 0
  %or.cond.not28 = or i1 %7, %6
  %8 = icmp ult i32 %2, 257
  %or.cond30.not = and i1 %8, %or.cond.not28
  br i1 %or.cond30.not, label %bb.d, label %.thread31

bb.c:                                             ; preds = %bb.b
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.9) #13
  unreachable

.thread31:                                        ; preds = %.thread
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.9) #12
  br label %bb.f

bb.d:                                             ; preds = %.thread
  %i.o = and i8 %i.e, 2
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %bb.e, label %png_write_chunk_header.exit

bb.e:                                             ; preds = %bb.d
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.10) #12
  br label %bb.f

png_write_chunk_header.exit:                      ; preds = %bb.b, %bb.d
  %i.q = trunc i32 %2 to i16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 608
  store i16 %i.q, ptr %i.r, align 8, !tbaa !48
  %i.s = mul i32 %2, 3                            ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12, !noalias !91
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1188 ; 3 uses
  store i32 34, ptr %i.t, align 4, !tbaa !27, !alias.scope !91
  %i.u = lshr i32 %i.s, 24
  %i.v = trunc nuw i32 %i.u to i8
  store i8 %i.v, ptr %i.b, align 1, !tbaa !10, !noalias !91
  %i.w = lshr i32 %i.s, 16
  %i.x = trunc i32 %i.w to i8
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.x, ptr %i.y, align 1, !tbaa !10, !noalias !91
  %i.z = lshr i32 %i.s, 8
  %i.aa = trunc i32 %i.z to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !10, !noalias !91
  %i.ac = trunc i32 %i.s to i8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !10, !noalias !91
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  store <4 x i8> <i8 80, i8 76, i8 84, i8 69>, ptr %i.ae, align 1, !tbaa !10, !noalias !91
  call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef 8) #12
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 1347179589, ptr %i.af, align 8, !tbaa !29, !alias.scope !91
  call void @png_reset_crc(ptr noundef nonnull %0) #12
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %i.ae, i64 noundef 4) #12
  store i32 66, ptr %i.t, align 4, !tbaa !27, !alias.scope !91
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12, !noalias !91
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %png_write_chunk_end.exit, label %png_write_chunk_data.exit.lr.ph

png_write_chunk_data.exit.lr.ph:                  ; preds = %png_write_chunk_header.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  br label %png_write_chunk_data.exit

png_write_chunk_data.exit:                        ; preds = %png_write_chunk_data.exit.lr.ph, %png_write_chunk_data.exit
  %.033 = phi ptr [ %1, %png_write_chunk_data.exit.lr.ph ], [ %i.ao, %png_write_chunk_data.exit ] ; 4 uses
  %.02632 = phi i32 [ 0, %png_write_chunk_data.exit.lr.ph ], [ %i.an, %png_write_chunk_data.exit ]
  %i.ai = load i8, ptr %.033, align 1, !tbaa !93
  store i8 %i.ai, ptr %i.c, align 1, !tbaa !10
  %i.aj = getelementptr inbounds nuw i8, ptr %.033, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !94
  store i8 %i.ak, ptr %i.ag, align 1, !tbaa !10
  %i.al = getelementptr inbounds nuw i8, ptr %.033, i64 2
  %i.am = load i8, ptr %i.al, align 1, !tbaa !95
  store i8 %i.am, ptr %i.ah, align 1, !tbaa !10
  call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i64 noundef 3) #12
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i64 noundef 3) #12
  %i.an = add nuw i32 %.02632, 1                  ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.033, i64 3
  %exitcond.not = icmp eq i32 %i.an, %2
  br i1 %exitcond.not, label %png_write_chunk_end.exit, label %png_write_chunk_data.exit, !llvm.loop !88

png_write_chunk_end.exit:                         ; preds = %png_write_chunk_data.exit, %png_write_chunk_header.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !96)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12, !noalias !96
  store i32 130, ptr %i.t, align 4, !tbaa !27, !alias.scope !96
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 596
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !30, !alias.scope !96 ; 4 uses
  %i.ar = lshr i32 %i.aq, 24
  %i.as = trunc nuw i32 %i.ar to i8
  store i8 %i.as, ptr %i.a, align 1, !tbaa !10, !noalias !96
  %i.at = lshr i32 %i.aq, 16
  %i.au = trunc i32 %i.at to i8
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.au, ptr %i.av, align 1, !tbaa !10, !noalias !96
  %i.aw = lshr i32 %i.aq, 8
  %i.ax = trunc i32 %i.aw to i8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !10, !noalias !96
  %i.az = trunc i32 %i.aq to i8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !10, !noalias !96
  call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12, !noalias !96
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !28
  %i.bd = or i32 %i.bc, 2
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !28
  br label %bb.f

bb.f:                                             ; preds = %png_write_chunk_end.exit, %bb.e, %.thread31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  ret void
}

; Function Attrs: nounwind uwtable
define void @png_compress_IDAT(ptr noalias noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !49
  %.not = icmp eq i32 %i.b, 1229209940
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !99   ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.g = load i32, ptr %i.f, align 8, !tbaa !50
  %i.h = zext i32 %i.g to i64
  %i.i = add nuw nsw i64 %i.h, 8
  %i.j = tail call noalias ptr @png_malloc(ptr noundef nonnull %0, i64 noundef %i.i) #12 ; 2 uses
  store ptr %i.j, ptr %i.c, align 8, !tbaa !99
  store ptr null, ptr %i.j, align 8, !tbaa !33
  br label %png_free_buffer_list.exit

bb.d:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !31, !noalias !100 ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %png_free_buffer_list.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %i.d, align 8, !tbaa !31, !noalias !100
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.0.i = phi ptr [ %i.k, %bb.e ], [ %i.l, %bb.f ] ; 2 uses
  %i.l = load ptr, ptr %.0.i, align 8, !tbaa !33  ; 2 uses
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef nonnull %.0.i) #12
  %.not9.i = icmp eq ptr %i.l, null
  br i1 %.not9.i, label %png_free_buffer_list.exit, label %bb.f, !llvm.loop !0

png_free_buffer_list.exit:                        ; preds = %bb.f, %bb.d, %bb.c
  %i.m = tail call fastcc i64 @png_image_size(ptr noundef nonnull %0)
  %i.n = tail call fastcc i32 @png_deflate_claim(ptr noundef nonnull %0, i32 noundef 1229209940, i64 noundef %i.m)
  %.not85 = icmp eq i32 %i.n, 0
  br i1 %.not85, label %bb.h, label %bb.g

bb.g:                                             ; preds = %png_free_buffer_list.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !51
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef %i.p) #13
  unreachable

bb.h:                                             ; preds = %png_free_buffer_list.exit
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !99
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr %i.r, ptr %i.s, align 8, !tbaa !52
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.u = load i32, ptr %i.t, align 8, !tbaa !50
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i32 %i.u, ptr %i.v, align 8, !tbaa !53
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  store ptr %1, ptr %i.w, align 8, !tbaa !54
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.ae = icmp eq i32 %3, 0
  br label %bb.j

bb.j:                                             ; preds = %.backedge, %bb.i
  %.080 = phi i64 [ %2, %bb.i ], [ %i.ak, %.backedge ] ; 3 uses
  %spec.select100 = tail call i64 @llvm.umin.i64(i64 %.080, i64 4294967295) ; 2 uses
  %spec.select = trunc nuw i64 %spec.select100 to i32
  store i32 %spec.select, ptr %i.x, align 8, !tbaa !55
  %i.af = sub nuw i64 %.080, %spec.select100
  %.not86 = icmp ult i64 %.080, 4294967296
  %i.ag = select i1 %.not86, i32 %3, i32 0
  %i.ah = tail call i32 @deflate(ptr noundef nonnull %i.w, i32 noundef %i.ag) #12 ; 4 uses
  %i.ai = load i32, ptr %i.x, align 8, !tbaa !55
  %i.aj = zext i32 %i.ai to i64
  %i.ak = add i64 %i.af, %i.aj                    ; 2 uses
  store i32 0, ptr %i.x, align 8, !tbaa !55
  %i.al = load i32, ptr %i.y, align 8, !tbaa !53  ; 2 uses
  %i.am = icmp eq i32 %i.al, 0
end_hunk_0
begin_hunk_1_@png_compress_IDAT:bb.a

bb.s:                                             ; preds = %bb.r, %bb.j
  %i.cd = phi i32 [ %i.ap, %bb.r ], [ %i.al, %bb.j ] ; 2 uses
  %i.ce = icmp eq i32 %i.ah, 0
  br i1 %i.ce, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.cf = icmp eq i64 %i.ak, 0
  br i1 %i.cf, label %bb.u, label %.backedge

.backedge:                                        ; preds = %bb.t, %bb.r
  br label %bb.j

bb.u:                                             ; preds = %bb.t
  %i.cg = icmp eq i32 %3, 4
  br i1 %i.cg, label %bb.v, label %bb.ag

bb.v:                                             ; preds = %bb.u
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.11) #13
  unreachable

bb.w:                                             ; preds = %bb.s
  %i.ch = icmp eq i32 %i.ah, 1
  %i.ci = icmp eq i32 %3, 4
  %or.cond3 = and i1 %i.ci, %i.ch
  br i1 %or.cond3, label %bb.x, label %bb.af

bb.x:                                             ; preds = %bb.w
  %i.cj = load ptr, ptr %i.z, align 8, !tbaa !99  ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 3 uses
  %i.cl = load i32, ptr %i.aa, align 8, !tbaa !50 ; 2 uses
  %i.cm = sub i32 %i.cl, %i.cd
  %i.cn = load i32, ptr %i.ab, align 4, !tbaa !28
  %i.co = and i32 %i.cn, 4
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %bb.y, label %optimize_cmf.exit98

bb.y:                                             ; preds = %bb.x
  %i.cq = load i8, ptr %i.ac, align 8, !tbaa !39
  %i.cr = icmp eq i8 %i.cq, 0
  br i1 %i.cr, label %bb.z, label %optimize_cmf.exit98

bb.z:                                             ; preds = %bb.y
  %i.cs = tail call fastcc i64 @png_image_size(ptr noundef nonnull %0) ; 3 uses
  %i.ct = icmp samesign ult i64 %i.cs, 16385
  br i1 %i.ct, label %bb.aa, label %optimize_cmf.exit98

bb.aa:                                            ; preds = %bb.z
  %i.cu = load i8, ptr %i.ck, align 1, !tbaa !10
  %i.cv = zext i8 %i.cu to i32                    ; 3 uses
  %i.cw = and i32 %i.cv, 15
  %i.cx = icmp eq i32 %i.cw, 8
  %i.cy = and i32 %i.cv, 240
  %i.cz = icmp samesign ult i32 %i.cy, 113
  %or.cond.i93 = select i1 %i.cx, i1 %i.cz, i1 false
  br i1 %or.cond.i93, label %bb.ab, label %optimize_cmf.exit98

bb.ab:                                            ; preds = %bb.aa
  %i.da = lshr i32 %i.cv, 4                       ; 2 uses
  %i.db = shl nuw nsw i32 128, %i.da              ; 2 uses
  %i.dc = zext nneg i32 %i.db to i64
  %.not.i94 = icmp samesign ugt i64 %i.cs, %i.dc
  br i1 %.not.i94, label %optimize_cmf.exit98, label %.preheader.i95

.preheader.i95:                                   ; preds = %bb.ab, %.preheader.i95
  %.022.i96 = phi i32 [ %i.de, %.preheader.i95 ], [ %i.da, %bb.ab ]
  %.0.i97 = phi i32 [ %i.dd, %.preheader.i95 ], [ %i.db, %bb.ab ]
  %i.dd = lshr i32 %.0.i97, 1                     ; 2 uses
  %i.de = add i32 %.022.i96, -1                   ; 3 uses
  %i.df = icmp ne i32 %i.de, 0
  %i.dg = zext nneg i32 %i.dd to i64
  %i.dh = icmp samesign ule i64 %i.cs, %i.dg
  %i.di = select i1 %i.df, i1 %i.dh, i1 false
  br i1 %i.di, label %.preheader.i95, label %bb.ac, !llvm.loop !1

bb.ac:                                            ; preds = %.preheader.i95
  %i.dj = shl i32 %i.de, 4
  %i.dk = or disjoint i32 %i.dj, 8                ; 2 uses
  %i.dl = trunc i32 %i.dk to i8
  store i8 %i.dl, ptr %i.ck, align 1, !tbaa !10
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cj, i64 9 ; 2 uses
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !10
  %i.do = and i8 %i.dn, -32                       ; 2 uses
  %i.dp = zext i8 %i.do to i32
  %i.dq = shl i32 %i.dk, 8
  %i.dr = or disjoint i32 %i.dq, %i.dp
  %i.ds = urem i32 %i.dr, 31
  %i.dt = trunc nuw nsw i32 %i.ds to i8
  %i.du = or disjoint i8 %i.do, %i.dt
  %i.dv = xor i8 %i.du, 31
  store i8 %i.dv, ptr %i.dm, align 1, !tbaa !10
  br label %optimize_cmf.exit98

optimize_cmf.exit98:                              ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x
  %.not90 = icmp eq i32 %i.cl, %i.cd
  br i1 %.not90, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %optimize_cmf.exit98
  %i.dw = zext i32 %i.cm to i64
  tail call fastcc void @png_write_complete_chunk(ptr noundef nonnull %0, i32 noundef 1229209940, ptr noundef nonnull %i.ck, i64 noundef %i.dw)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %optimize_cmf.exit98
  store i32 0, ptr %i.y, align 8, !tbaa !53
  store ptr null, ptr %i.ad, align 8, !tbaa !52
  %i.dx = load i32, ptr %i.ab, align 4, !tbaa !28
  %i.dy = or i32 %i.dx, 12
  store i32 %i.dy, ptr %i.ab, align 4, !tbaa !28
  store i32 0, ptr %i.a, align 8, !tbaa !49
  br label %bb.ag

bb.af:                                            ; preds = %bb.w
  tail call void @png_zstream_error(ptr noundef nonnull %0, i32 noundef %i.ah) #12
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !51
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef %i.ea) #13
  unreachable

bb.ag:                                            ; preds = %bb.u, %bb.ae
  ret void
}

declare noalias ptr @png_malloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @png_deflate_claim(ptr noalias noundef %0, i32 noundef range(i32 1229209940, 2052348021) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !49   ; 5 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.d = lshr i32 %1, 24
  %i.e = trunc nuw nsw i32 %i.d to i8
  store i8 %i.e, ptr %i.a, align 16, !tbaa !10
  %i.f = lshr i32 %1, 16
  %i.g = trunc i32 %i.f to i8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.g, ptr %i.h, align 1, !tbaa !10
  %i.i = lshr i32 %1, 8
  %i.j = trunc i32 %i.i to i8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.j, ptr %i.k, align 2, !tbaa !10
  %i.l = trunc i32 %1 to i8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.l, ptr %i.m, align 1, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 58, ptr %i.n, align 4, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 32, ptr %i.o, align 1, !tbaa !10
  %i.p = lshr i32 %i.c, 24
  %i.q = trunc nuw i32 %i.p to i8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i8 %i.q, ptr %i.r, align 2, !tbaa !10
  %i.s = lshr i32 %i.c, 16
  %i.t = trunc i32 %i.s to i8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i8 %i.t, ptr %i.u, align 1, !tbaa !10
  %i.v = lshr i32 %i.c, 8
  %i.w = trunc i32 %i.v to i8
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.w, ptr %i.x, align 8, !tbaa !10
  %i.y = trunc i32 %i.c to i8
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  store i8 %i.y, ptr %i.z, align 1, !tbaa !10
  %i.aa = call i64 @png_safecat(ptr noundef nonnull %i.a, i64 noundef 64, i64 noundef 10, ptr noundef nonnull @.str.44) #12 ; 0 uses
  call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #12
  %i.ab = load i32, ptr %i.b, align 8, !tbaa !49
  %i.ac = icmp eq i32 %i.ab, 1229209940
  br i1 %i.ac, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  store i32 0, ptr %i.b, align 8, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr @.str.45, ptr %i.ad, align 8, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.w

bb.d:                                             ; preds = %.thread, %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 444
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !102 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !103 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 452
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !104 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !105 ; 2 uses
  %i.am = icmp eq i32 %1, 1229209940
  br i1 %i.am, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !106
  %3 = trunc i32 %i.ao to i1
  br i1 %3, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 460
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !107
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 622
  %i.as = load i8, ptr %i.ar, align 2, !tbaa !47
  %.not80 = icmp ne i8 %i.as, 8
  %. = zext i1 %.not80 to i32
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.au = load i32, ptr %i.at, align 8, !tbaa !108
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 468
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !109
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !110
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 476
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !111
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !112
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.h
  %.072 = phi i32 [ %i.af, %bb.f ], [ %i.af, %bb.g ], [ %i.au, %bb.h ] ; 2 uses
  %.071 = phi i32 [ %i.ah, %bb.f ], [ %i.ah, %bb.g ], [ %i.aw, %bb.h ] ; 2 uses
  %.070 = phi i32 [ %i.aj, %bb.f ], [ %i.aj, %bb.g ], [ %i.ay, %bb.h ] ; 4 uses
  %.069 = phi i32 [ %i.al, %bb.f ], [ %i.al, %bb.g ], [ %i.ba, %bb.h ] ; 2 uses
  %.068 = phi i32 [ %i.aq, %bb.f ], [ %., %bb.g ], [ %i.bc, %bb.h ] ; 2 uses
  %i.bd = icmp ult i64 %2, 16385
  br i1 %i.bd, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.be = add nsw i32 %.070, -1
  %i.bf = shl nuw i32 1, %i.be                    ; 2 uses
  %i.bg = add nuw nsw i64 %2, 262                 ; 2 uses
  %i.bh = zext i32 %i.bf to i64
  %.not8196 = icmp samesign ugt i64 %i.bg, %i.bh
  br i1 %.not8196, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.j
  %i.bi = trunc nuw nsw i64 %i.bg to i32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.098 = phi i32 [ %i.bj, %.lr.ph ], [ %i.bf, %.lr.ph.preheader ]
  %.197 = phi i32 [ %i.bk, %.lr.ph ], [ %.070, %.lr.ph.preheader ]
  %i.bj = lshr i32 %.098, 1                       ; 2 uses
  %i.bk = add nsw i32 %.197, -1                   ; 2 uses
  %.not81 = icmp samesign ult i32 %i.bj, %i.bi
  br i1 %.not81, label %.loopexit, label %.lr.ph, !llvm.loop !101

.loopexit:                                        ; preds = %.lr.ph, %bb.j, %bb.i
  %.2 = phi i32 [ %.070, %bb.i ], [ %.070, %bb.j ], [ %i.bk, %.lr.ph ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 5 uses
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !106 ; 3 uses
  %i.bn = and i32 %i.bm, 2
  %.not82 = icmp eq i32 %i.bn, 0
  br i1 %.not82, label %bb.s, label %bb.k

bb.k:                                             ; preds = %.loopexit
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 484
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !113
  %.not83 = icmp eq i32 %i.bp, %.072
  br i1 %.not83, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !114
  %.not84 = icmp eq i32 %i.br, %.071
  br i1 %.not84, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 492
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !115
  %.not85 = icmp eq i32 %i.bt, %.2
  br i1 %.not85, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !116
  %.not86 = icmp eq i32 %i.bv, %.069
  br i1 %.not86, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 500
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !117
  %.not87 = icmp eq i32 %i.bx, %.068
  br i1 %.not87, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.bz = call i32 @deflateEnd(ptr noundef nonnull %i.by) #12
  %.not88 = icmp eq i32 %i.bz, 0
  br i1 %.not88, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #12
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ca = load i32, ptr %i.bl, align 8, !tbaa !106
  %i.cb = and i32 %i.ca, -3                       ; 2 uses
  store i32 %i.cb, ptr %i.bl, align 8, !tbaa !106
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o, %.loopexit
  %i.cc = phi i32 [ %i.cb, %bb.r ], [ %i.bm, %bb.o ], [ %i.bm, %.loopexit ]
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  store ptr null, ptr %i.cd, align 8, !tbaa !54
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i32 0, ptr %i.ce, align 8, !tbaa !55
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr null, ptr %i.cf, align 8, !tbaa !52
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i32 0, ptr %i.cg, align 8, !tbaa !53
  %i.ch = and i32 %i.cc, 2
  %.not89 = icmp eq i32 %i.ch, 0
  br i1 %.not89, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ci = call i32 @deflateInit2_(ptr noundef nonnull %i.cd, i32 noundef %.072, i32 noundef %.071, i32 noundef %.2, i32 noundef %.069, i32 noundef %.068, ptr noundef nonnull @.str.47, i32 noundef 112) #12 ; 2 uses
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %.thread90, label %.thread93

.thread90:                                        ; preds = %bb.t
  %i.ck = load i32, ptr %i.bl, align 8, !tbaa !106
  %i.cl = or i32 %i.ck, 2
  store i32 %i.cl, ptr %i.bl, align 8, !tbaa !106
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.cm = call i32 @deflateReset(ptr noundef nonnull %i.cd) #12 ; 2 uses
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.v, label %.thread93

bb.v:                                             ; preds = %.thread90, %bb.u
  store i32 %1, ptr %i.b, align 8, !tbaa !49
  br label %bb.w

.thread93:                                        ; preds = %bb.t, %bb.u
  %.06795 = phi i32 [ %i.cm, %bb.u ], [ %i.ci, %bb.t ] ; 2 uses
  call void @png_zstream_error(ptr noundef nonnull %0, i32 noundef %.06795) #12
  br label %bb.w

bb.w:                                             ; preds = %bb.c, %bb.v, %.thread93
  %.175 = phi i32 [ -2, %bb.c ], [ %.06795, %.thread93 ], [ 0, %bb.v ]
  ret i32 %.175
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc range(i64 0, 4362728993185823) i64 @png_image_size(ptr noalias nofree noundef readonly captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.b = load i32, ptr %i.a, align 8, !tbaa !41   ; 16 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.d = load i64, ptr %i.c, align 8, !tbaa !43   ; 2 uses
  %i.e = icmp ult i64 %i.d, 32768
  %i.f = icmp ult i32 %i.b, 32768
  %or.cond = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.h = load i8, ptr %i.g, align 4, !tbaa !38
  %.not = icmp eq i8 %i.h, 0
  br i1 %.not, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 508
  %i.j = load i32, ptr %i.i, align 4, !tbaa !40   ; 15 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 626
  %i.l = load i8, ptr %i.k, align 2, !tbaa !42
  %.fr45 = freeze i8 %i.l                         ; 3 uses
  %i.m = icmp ugt i8 %.fr45, 7
  %i.n = zext nneg i8 %.fr45 to i64               ; 7 uses
  %i.o = lshr i8 %.fr45, 3
  %i.p = zext nneg i8 %i.o to i64                 ; 7 uses
  %i.q = add i32 %i.j, 7
  %i.r = lshr i32 %i.q, 3                         ; 3 uses
  %.not40.us = icmp eq i32 %i.r, 0                ; 2 uses
  br i1 %i.m, label %.split.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %bb.c
  br i1 %.not40.us, label %.split.1, label %bb.k

.split.us.preheader:                              ; preds = %bb.c
  br i1 %.not40.us, label %.split.us.1, label %bb.d

bb.d:                                             ; preds = %.split.us.preheader
  %i.s = zext nneg i32 %i.r to i64
  %i.t = mul nuw nsw i64 %i.s, %i.p
  %i.u = add nuw nsw i64 %i.t, 1
  %i.v = add nuw nsw i32 %i.b, 7
  %i.w = lshr i32 %i.v, 3
  %i.x = zext nneg i32 %i.w to i64
  %i.y = mul nuw nsw i64 %i.u, %i.x
end_hunk_1
begin_hunk_2_@png_write_sBIT:bb.a
  %i.af = icmp eq i8 %i.ae, 0
  br i1 %i.af, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 625
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !45
  %i.ai = icmp ugt i8 %i.ae, %i.ah
  br i1 %i.ai, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.m
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.20) #12
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.aj = add nuw nsw i64 %.1, 1
  store i8 %i.ae, ptr %.1.sroa.phi, align 1, !tbaa !10
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.l
  %.2 = phi i64 [ %i.aj, %bb.p ], [ %.1, %bb.l ]
  call fastcc void @png_write_complete_chunk(ptr noundef %0, i32 noundef 1933723988, ptr noundef nonnull %i.a, i64 noundef %.2)
  br label %bb.r

bb.r:                                             ; preds = %.critedge, %bb.q, %bb.o, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: nounwind uwtable
define void @png_write_cHRM_fixed(ptr noalias noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i32, ptr %i.b, align 4, !tbaa !169
  call void @png_save_int_32(ptr noundef nonnull %i.a, i32 noundef %i.c) #12
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !170
  call void @png_save_int_32(ptr noundef nonnull %i.d, i32 noundef %i.f) #12
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load i32, ptr %1, align 4, !tbaa !171
  call void @png_save_int_32(ptr noundef nonnull %i.g, i32 noundef %i.h) #12
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !172
  call void @png_save_int_32(ptr noundef nonnull %i.i, i32 noundef %i.k) #12
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !173
  call void @png_save_int_32(ptr noundef nonnull %i.l, i32 noundef %i.n) #12
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !174
  call void @png_save_int_32(ptr noundef nonnull %i.o, i32 noundef %i.q) #12
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i32, ptr %i.s, align 4, !tbaa !175
  call void @png_save_int_32(ptr noundef nonnull %i.r, i32 noundef %i.t) #12
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.w = load i32, ptr %i.v, align 4, !tbaa !176
  call void @png_save_int_32(ptr noundef nonnull %i.u, i32 noundef %i.w) #12
  call fastcc void @png_write_complete_chunk(ptr noundef %0, i32 noundef 1665684045, ptr noundef nonnull %i.a, i64 noundef 32)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

declare void @png_save_int_32(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @png_write_tRNS(ptr noalias noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [6 x i8], align 1                 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  switch i32 %4, label %bb.m [
    i32 3, label %bb.b
    i32 0, label %bb.f
    i32 2, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i32 %3, 1
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.d = load i16, ptr %i.c, align 8, !tbaa !48
  %i.e = zext i16 %i.d to i32
  %i.f = icmp samesign ugt i32 %3, %i.e
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @png_app_warning(ptr noundef %0, ptr noundef nonnull @.str.21) #12
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.g = zext nneg i32 %3 to i64
  tail call fastcc void @png_write_complete_chunk(ptr noundef nonnull %0, i32 noundef 1951551059, ptr noundef %1, i64 noundef %i.g)
  br label %bb.n

bb.f:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i16, ptr %i.h, align 2, !tbaa !60   ; 3 uses
  %i.j = zext i16 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.l = load i8, ptr %i.k, align 8, !tbaa !36
  %i.m = zext nneg i8 %i.l to i32
  %i.n = shl nuw i32 1, %i.m
  %.not23 = icmp sgt i32 %i.n, %i.j
  br i1 %.not23, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @png_app_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.22) #12
  br label %bb.n

bb.h:                                             ; preds = %bb.f
  %i.o = lshr i16 %i.i, 8
  %i.p = trunc nuw i16 %i.o to i8
  store i8 %i.p, ptr %i.a, align 1, !tbaa !10
  %i.q = trunc i16 %i.i to i8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.q, ptr %i.r, align 1, !tbaa !10
  call fastcc void @png_write_complete_chunk(ptr noundef nonnull %0, i32 noundef 1951551059, ptr noundef nonnull %i.a, i64 noundef 2)
  br label %bb.n

bb.i:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.t = load i16, ptr %i.s, align 2, !tbaa !61   ; 2 uses
  %i.u = lshr i16 %i.t, 8
  %i.v = trunc nuw i16 %i.u to i8                 ; 2 uses
  store i8 %i.v, ptr %i.a, align 1, !tbaa !10
  %i.w = trunc i16 %i.t to i8
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.w, ptr %i.x, align 1, !tbaa !10
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !62  ; 2 uses
  %i.ab = lshr i16 %i.aa, 8
  %i.ac = trunc nuw i16 %i.ab to i8               ; 2 uses
  store i8 %i.ac, ptr %i.y, align 1, !tbaa !10
  %i.ad = trunc i16 %i.aa to i8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !10
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !63 ; 2 uses
  %i.ai = lshr i16 %i.ah, 8
  %i.aj = trunc nuw i16 %i.ai to i8               ; 2 uses
  store i8 %i.aj, ptr %i.af, align 1, !tbaa !10
  %i.ak = trunc i16 %i.ah to i8
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !10
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.an = load i8, ptr %i.am, align 8, !tbaa !36
  %i.ao = icmp eq i8 %i.an, 8
  br i1 %i.ao, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ap = or i8 %i.ac, %i.v
  %i.aq = or i8 %i.ap, %i.aj
  %.not = icmp eq i8 %i.aq, 0
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @png_app_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.23) #12
  br label %bb.n

bb.l:                                             ; preds = %bb.j, %bb.i
  call fastcc void @png_write_complete_chunk(ptr noundef nonnull %0, i32 noundef 1951551059, ptr noundef nonnull %i.a, i64 noundef 6)
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  tail call void @png_app_warning(ptr noundef %0, ptr noundef nonnull @.str.24) #12
  br label %bb.n

bb.n:                                             ; preds = %bb.e, %bb.l, %bb.m, %bb.h, %bb.k, %bb.g, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

declare void @png_app_warning(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @png_write_bKGD(ptr noalias noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [6 x i8], align 1                 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = icmp eq i32 %2, 3
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.d = load i16, ptr %i.c, align 8, !tbaa !48   ; 2 uses
  %.not22 = icmp eq i16 %i.d, 0
  br i1 %.not22, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.f = load i32, ptr %i.e, align 8, !tbaa !35
  %3 = trunc i32 %i.f to i1
  br i1 %3, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.c
  %.pre = load i8, ptr %1, align 2, !tbaa !177
  br label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = load i8, ptr %1, align 2, !tbaa !177     ; 2 uses
  %i.h = zext i8 %i.g to i16
  %.not23 = icmp ugt i16 %i.d, %i.h
  br i1 %.not23, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.25) #12
  br label %bb.o

bb.f:                                             ; preds = %._crit_edge, %bb.d
  %i.i = phi i8 [ %.pre, %._crit_edge ], [ %i.g, %bb.d ]
  store i8 %i.i, ptr %i.a, align 1, !tbaa !10
  call fastcc void @png_write_complete_chunk(ptr noundef nonnull %0, i32 noundef 1649100612, ptr noundef nonnull %i.a, i64 noundef 1)
  br label %bb.o

bb.g:                                             ; preds = %bb.a
  %i.j = and i32 %2, 2
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.l = load i16, ptr %i.k, align 2, !tbaa !61   ; 2 uses
  %i.m = lshr i16 %i.l, 8
  %i.n = trunc nuw i16 %i.m to i8                 ; 2 uses
  store i8 %i.n, ptr %i.a, align 1, !tbaa !10
  %i.o = trunc i16 %i.l to i8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.o, ptr %i.p, align 1, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.s = load i16, ptr %i.r, align 2, !tbaa !62   ; 2 uses
  %i.t = lshr i16 %i.s, 8
  %i.u = trunc nuw i16 %i.t to i8                 ; 2 uses
  store i8 %i.u, ptr %i.q, align 1, !tbaa !10
  %i.v = trunc i16 %i.s to i8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.v, ptr %i.w, align 1, !tbaa !10
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.z = load i16, ptr %i.y, align 2, !tbaa !63   ; 2 uses
  %i.aa = lshr i16 %i.z, 8
  %i.ab = trunc nuw i16 %i.aa to i8               ; 2 uses
  store i8 %i.ab, ptr %i.x, align 1, !tbaa !10
  %i.ac = trunc i16 %i.z to i8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !10
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !36
  %i.ag = icmp eq i8 %i.af, 8
  br i1 %i.ag, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ah = or i8 %i.u, %i.n
  %i.ai = or i8 %i.ah, %i.ab
  %.not21 = icmp eq i8 %i.ai, 0
  br i1 %.not21, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.26) #12
  br label %bb.o

bb.k:                                             ; preds = %bb.i, %bb.h
  call fastcc void @png_write_complete_chunk(ptr noundef nonnull %0, i32 noundef 1649100612, ptr noundef nonnull %i.a, i64 noundef 6)
  br label %bb.o

bb.l:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !60 ; 3 uses
  %i.al = zext i16 %i.ak to i32
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.an = load i8, ptr %i.am, align 8, !tbaa !36
  %i.ao = zext nneg i8 %i.an to i32
  %i.ap = shl nuw i32 1, %i.ao
  %.not20 = icmp sgt i32 %i.ap, %i.al
  br i1 %.not20, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.27) #12
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.aq = lshr i16 %i.ak, 8
  %i.ar = trunc nuw i16 %i.aq to i8
  store i8 %i.ar, ptr %i.a, align 1, !tbaa !10
  %i.as = trunc i16 %i.ak to i8
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.as, ptr %i.at, align 1, !tbaa !10
  call fastcc void @png_write_complete_chunk(ptr noundef nonnull %0, i32 noundef 1649100612, ptr noundef nonnull %i.a, i64 noundef 2)
  br label %bb.o

bb.o:                                             ; preds = %bb.f, %bb.n, %bb.k, %bb.m, %bb.j, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: nounwind uwtable
define void @png_write_cICP(ptr noalias noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 8 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [4 x i8], align 1                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !183)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12, !noalias !183
  %i.d = icmp eq ptr %0, null
  br i1 %i.d, label %png_write_chunk_data.exit.thread, label %bb.b

png_write_chunk_data.exit.thread:                 ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12, !noalias !183
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12, !noalias !184
  br label %png_write_chunk_end.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1188 ; 3 uses
  store i32 34, ptr %i.e, align 4, !tbaa !27, !alias.scope !183
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store <8 x i8> <i8 0, i8 0, i8 0, i8 4, i8 99, i8 73, i8 67, i8 80>, ptr %i.b, align 8, !tbaa !10, !noalias !183
  call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef 8) #12
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 1665745744, ptr %i.g, align 8, !tbaa !29, !alias.scope !183
  call void @png_reset_crc(ptr noundef nonnull %0) #12
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %i.f, i64 noundef 4) #12
  store i32 66, ptr %i.e, align 4, !tbaa !27, !alias.scope !183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12, !noalias !183
  store i8 %1, ptr %i.c, align 1, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %2, ptr %i.h, align 1, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i8 %3, ptr %i.i, align 1, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  store i8 %4, ptr %i.j, align 1, !tbaa !10
  call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i64 noundef 4) #12
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i64 noundef 4) #12
  call void @llvm.experimental.noalias.scope.decl(metadata !185)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12, !noalias !185
  store i32 130, ptr %i.e, align 4, !tbaa !27, !alias.scope !185
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 596
  %i.l = load i32, ptr %i.k, align 4, !tbaa !30, !alias.scope !185 ; 4 uses
  %i.m = lshr i32 %i.l, 24
  %i.n = trunc nuw i32 %i.m to i8
  store i8 %i.n, ptr %i.a, align 1, !tbaa !10, !noalias !185
  %i.o = lshr i32 %i.l, 16
  %i.p = trunc i32 %i.o to i8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.p, ptr %i.q, align 1, !tbaa !10, !noalias !185
  %i.r = lshr i32 %i.l, 8
  %i.s = trunc i32 %i.r to i8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.s, ptr %i.t, align 1, !tbaa !10, !noalias !185
  %i.u = trunc i32 %i.l to i8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.u, ptr %i.v, align 1, !tbaa !10, !noalias !185
  call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 4) #12
  br label %png_write_chunk_end.exit

png_write_chunk_end.exit:                         ; preds = %png_write_chunk_data.exit.thread, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12, !noalias !185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  ret void
}

; Function Attrs: nounwind uwtable
define void @png_write_cLLI_fixed(ptr noalias noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 1                 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = lshr i32 %1, 24
  %i.c = trunc nuw i32 %i.b to i8
  store i8 %i.c, ptr %i.a, align 1, !tbaa !10
  %i.d = lshr i32 %1, 16
  %i.e = trunc i32 %i.d to i8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.e, ptr %i.f, align 1, !tbaa !10
  %i.g = lshr i32 %1, 8
  %i.h = trunc i32 %i.g to i8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.h, ptr %i.i, align 1, !tbaa !10
  %i.j = trunc i32 %1 to i8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.j, ptr %i.k, align 1, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.m = lshr i32 %2, 24
  %i.n = trunc nuw i32 %i.m to i8
  store i8 %i.n, ptr %i.l, align 1, !tbaa !10
  %i.o = lshr i32 %2, 16
  %i.p = trunc i32 %i.o to i8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %i.p, ptr %i.q, align 1, !tbaa !10
  %i.r = lshr i32 %2, 8
  %i.s = trunc i32 %i.r to i8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i8 %i.s, ptr %i.t, align 1, !tbaa !10
  %i.u = trunc i32 %2 to i8
end_hunk_2
begin_hunk_3_@png_do_write_interlace:bb.a

bb.k:                                             ; preds = %.outer209
  %i.eh = lshr i32 %i.ef, 2
  %i.ei = zext nneg i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 %i.ei
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !10
  %i.el = zext i8 %i.ek to i32
  %i.em = shl i32 %i.ef, 1
  %i.en = and i32 %i.em, 6
  %i.eo = xor i32 %i.en, 6
  %i.ep = lshr i32 %i.el, %i.eo
  %i.eq = shl nuw nsw i32 %i.ep, 4
  %i.er = and i32 %i.eq, 48
  %i.es = or disjoint i32 %i.er, %i.ee            ; 2 uses
  %i.et = add i32 %i.ef, %i.dt                    ; 4 uses
  %i.eu = icmp ult i32 %i.et, %i.d
  br i1 %i.eu, label %bb.l, label %.loopexit.sink.split, !llvm.loop !258

bb.l:                                             ; preds = %bb.k
  %i.ev = lshr i32 %i.et, 2
  %i.ew = zext nneg i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 %i.ew
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !10
  %i.ez = zext i8 %i.ey to i32
  %i.fa = shl i32 %i.et, 1
  %i.fb = and i32 %i.fa, 6
  %i.fc = xor i32 %i.fb, 6
  %i.fd = lshr i32 %i.ez, %i.fc
  %i.fe = shl nuw nsw i32 %i.fd, 2
  %i.ff = and i32 %i.fe, 12
  %i.fg = or disjoint i32 %i.ff, %i.es            ; 2 uses
  %i.fh = add i32 %i.et, %i.dt                    ; 4 uses
  %i.fi = icmp ult i32 %i.fh, %i.d
  br i1 %i.fi, label %.thread182, label %.loopexit.sink.split, !llvm.loop !258

.thread182:                                       ; preds = %bb.l
  %i.fj = lshr i32 %i.fh, 2
  %i.fk = zext nneg i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !10
  %i.fn = zext i8 %i.fm to i32
  %i.fo = shl i32 %i.fh, 1
  %i.fp = and i32 %i.fo, 6
  %i.fq = xor i32 %i.fp, 6
  %i.fr = lshr i32 %i.fn, %i.fq
  %i.fs = and i32 %i.fr, 3
  %i.ft = or disjoint i32 %i.fs, %i.fg
  %i.fu = trunc nuw i32 %i.ft to i8
  %i.fv = getelementptr inbounds nuw i8, ptr %.0105125.ph, i64 1
  store i8 %i.fu, ptr %.0105125.ph, align 1, !tbaa !10
  %i.fw = add i32 %i.fh, %i.dt                    ; 2 uses
  %i.fx = icmp ult i32 %i.fw, %i.d
  br i1 %i.fx, label %.outer209, label %.loopexit, !llvm.loop !258

bb.m:                                             ; preds = %bb.b
  %i.fy = sext i32 %2 to i64                      ; 5 uses
  %i.fz = getelementptr inbounds i8, ptr @png_pass_start, i64 %i.fy
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !10
  %i.gb = zext i8 %i.ga to i32                    ; 5 uses
  %i.gc = icmp ugt i32 %i.d, %i.gb
  br i1 %i.gc, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.m
  %i.gd = getelementptr inbounds i8, ptr @png_pass_inc, i64 %i.fy
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !10
  %i.gf = zext i8 %i.ge to i32                    ; 2 uses
  br label %.outer211

.outer211:                                        ; preds = %.lr.ph, %.thread196
  %.094122.ph = phi i32 [ %i.hf, %.thread196 ], [ %i.gb, %.lr.ph ] ; 3 uses
  %.098119.ph = phi ptr [ %i.he, %.thread196 ], [ %1, %.lr.ph ] ; 3 uses
  %i.gg = lshr i32 %.094122.ph, 1
  %i.gh = zext nneg i32 %i.gg to i64
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 %i.gh
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !10
  %i.gk = zext i8 %i.gj to i32
  %i.gl = shl i32 %.094122.ph, 2
  %i.gm = and i32 %i.gl, 4
  %i.gn = xor i32 %i.gm, 4
  %i.go = lshr i32 %i.gk, %i.gn
  %i.gp = shl nuw nsw i32 %i.go, 4                ; 2 uses
  %i.gq = add i32 %.094122.ph, %i.gf              ; 4 uses
  %i.gr = icmp ult i32 %i.gq, %i.d
  br i1 %i.gr, label %.thread196, label %.loopexit.sink.split, !llvm.loop !259

.thread196:                                       ; preds = %.outer211
  %i.gs = lshr i32 %i.gq, 1
  %i.gt = zext nneg i32 %i.gs to i64
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 %i.gt
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !10
  %i.gw = zext i8 %i.gv to i32
  %i.gx = shl i32 %i.gq, 2
  %i.gy = and i32 %i.gx, 4
  %i.gz = xor i32 %i.gy, 4
  %i.ha = lshr i32 %i.gw, %i.gz
  %i.hb = and i32 %i.ha, 15
  %i.hc = or disjoint i32 %i.hb, %i.gp
  %i.hd = trunc i32 %i.hc to i8
  %i.he = getelementptr inbounds nuw i8, ptr %.098119.ph, i64 1
  store i8 %i.hd, ptr %.098119.ph, align 1, !tbaa !10
  %i.hf = add i32 %i.gq, %i.gf                    ; 2 uses
  %i.hg = icmp ult i32 %i.hf, %i.d
  br i1 %i.hg, label %.outer211, label %.loopexit, !llvm.loop !259

bb.n:                                             ; preds = %bb.b
  %i.hh = lshr i8 %i.c, 3
  %i.hi = zext nneg i8 %i.hh to i64               ; 3 uses
  %i.hj = sext i32 %2 to i64                      ; 4 uses
  %i.hk = getelementptr inbounds i8, ptr @png_pass_start, i64 %i.hj
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !10
  %i.hm = zext i8 %i.hl to i32                    ; 4 uses
  %i.hn = icmp ugt i32 %i.d, %i.hm
  br i1 %i.hn, label %.lr.ph148, label %.loopexit

.lr.ph148:                                        ; preds = %bb.n
  %i.ho = getelementptr inbounds i8, ptr @png_pass_inc, i64 %i.hj
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !10
  %i.hq = zext i8 %i.hp to i32
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph148, %bb.q
  %.0146 = phi i32 [ %i.hm, %.lr.ph148 ], [ %i.hv, %bb.q ] ; 2 uses
  %.093145 = phi ptr [ %1, %.lr.ph148 ], [ %i.hu, %bb.q ] ; 3 uses
  %i.hr = zext i32 %.0146 to i64
  %i.hs = mul nuw nsw i64 %i.hr, %i.hi
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 %i.hs ; 2 uses
  %.not118 = icmp eq ptr %.093145, %i.ht
  br i1 %.not118, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.093145, ptr align 1 %i.ht, i64 %i.hi, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.hu = getelementptr inbounds nuw i8, ptr %.093145, i64 %i.hi
  %i.hv = add i32 %.0146, %i.hq                   ; 2 uses
  %i.hw = icmp ult i32 %i.hv, %i.d
  br i1 %i.hw, label %bb.o, label %.loopexit, !llvm.loop !260

.loopexit.sink.split:                             ; preds = %.outer211, %.outer209, %bb.k, %bb.l, %.outer, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %.sink249 = phi i32 [ %i.cv, %bb.i ], [ %i.fg, %bb.l ], [ %i.v, %.outer ], [ %i.ai, %bb.d ], [ %i.av, %bb.e ], [ %i.bi, %bb.f ], [ %i.bv, %bb.g ], [ %i.ci, %bb.h ], [ %i.ee, %.outer209 ], [ %i.es, %bb.k ], [ %i.gp, %.outer211 ]
  %.098119.ph.sink = phi ptr [ %.0112135.ph, %.outer ], [ %.0105125.ph, %.outer209 ], [ %.0112135.ph, %bb.i ], [ %.0112135.ph, %bb.h ], [ %.0112135.ph, %bb.g ], [ %.0112135.ph, %bb.f ], [ %.0112135.ph, %bb.e ], [ %.0112135.ph, %bb.d ], [ %.0105125.ph, %bb.l ], [ %.0105125.ph, %bb.k ], [ %.098119.ph, %.outer211 ]
  %.pre-phi149.ph = phi i32 [ %i.h, %.outer ], [ %i.dp, %.outer209 ], [ %i.h, %bb.i ], [ %i.h, %bb.h ], [ %i.h, %bb.g ], [ %i.h, %bb.f ], [ %i.h, %bb.e ], [ %i.h, %bb.d ], [ %i.dp, %bb.l ], [ %i.dp, %bb.k ], [ %i.gb, %.outer211 ]
  %.pre-phi.ph = phi i64 [ %i.e, %.outer ], [ %i.dm, %.outer209 ], [ %i.e, %bb.i ], [ %i.e, %bb.h ], [ %i.e, %bb.g ], [ %i.e, %bb.f ], [ %i.e, %bb.e ], [ %i.e, %bb.d ], [ %i.dm, %bb.l ], [ %i.dm, %bb.k ], [ %i.fy, %.outer211 ]
  %i.hx = trunc i32 %.sink249 to i8
  store i8 %i.hx, ptr %.098119.ph.sink, align 1, !tbaa !10
  br label %.loopexit

.loopexit:                                        ; preds = %.thread196, %.thread182, %.thread, %bb.q, %.loopexit.sink.split, %bb.m, %bb.j, %bb.c, %bb.n
  %.pre-phi149 = phi i32 [ %i.gb, %bb.m ], [ %i.hm, %bb.n ], [ %i.hm, %bb.q ], [ %.pre-phi149.ph, %.loopexit.sink.split ], [ %i.dp, %.thread182 ], [ %i.dp, %bb.j ], [ %i.h, %bb.c ], [ %i.h, %.thread ], [ %i.gb, %.thread196 ]
  %.pre-phi = phi i64 [ %i.fy, %bb.m ], [ %i.hj, %bb.n ], [ %i.hj, %bb.q ], [ %.pre-phi.ph, %.loopexit.sink.split ], [ %i.dm, %.thread182 ], [ %i.dm, %bb.j ], [ %i.e, %bb.c ], [ %i.e, %.thread ], [ %i.fy, %.thread196 ]
  %i.hy = load i32, ptr %0, align 8, !tbaa !261
  %i.hz = getelementptr inbounds i8, ptr @png_pass_inc, i64 %.pre-phi
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !10
  %i.ib = zext i8 %i.ia to i32                    ; 2 uses
  %i.ic = add i32 %i.hy, %i.ib
  %i.id = xor i32 %.pre-phi149, -1
  %i.ie = add i32 %i.ic, %i.id
  %i.if = udiv i32 %i.ie, %i.ib                   ; 2 uses
  store i32 %i.if, ptr %0, align 8, !tbaa !261
  %i.ig = load i8, ptr %i.b, align 1, !tbaa !72   ; 3 uses
  %i.ih = icmp ugt i8 %i.ig, 7
  %i.ii = zext i32 %i.if to i64                   ; 2 uses
  br i1 %i.ih, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.loopexit
  %i.ij = lshr i8 %i.ig, 3
  %i.ik = zext nneg i8 %i.ij to i64
  %i.il = mul nuw nsw i64 %i.ik, %i.ii
  br label %bb.t

bb.s:                                             ; preds = %.loopexit
  %i.im = zext nneg i8 %i.ig to i64
  %i.in = mul nuw nsw i64 %i.im, %i.ii
  %i.io = add nuw nsw i64 %i.in, 7
  %i.ip = lshr i64 %i.io, 3
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.iq = phi i64 [ %i.il, %bb.r ], [ %i.ip, %bb.s ]
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.iq, ptr %i.ir, align 8, !tbaa !73
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @png_write_find_filter(ptr noalias noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 622
  %i.b = load i8, ptr %i.a, align 2, !tbaa !47    ; 2 uses
  %i.c = zext i8 %i.b to i32                      ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !73   ; 37 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.g = load i8, ptr %i.f, align 1, !tbaa !72    ; 10 uses
  %i.h = zext i8 %i.g to i32
  %i.i = add nuw nsw i32 %i.h, 7
  %i.j = lshr i32 %i.i, 3                         ; 29 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !65   ; 89 uses
  %i.m = ptrtoaddr ptr %i.l to i64                ; 10 uses
  %i.n = icmp ugt i64 %i.e, 144115188075855870
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = sub nsw i32 0, %i.c
  %i.p = and i32 %i.c, %i.o
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.q = and i32 %i.c, 8
  %i.r = icmp ne i32 %i.q, 0
  %i.s = icmp ne i8 %i.b, 8
  %or.cond = select i1 %i.r, i1 %i.s, i1 false
  br i1 %or.cond, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.c
  %.not229 = icmp eq i64 %i.e, 0
  br i1 %.not229, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %min.iters.check = icmp ult i64 %i.e, 4
  br i1 %min.iters.check, label %.lr.ph.preheader706, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.e, 144115188075855868       ; 4 uses
  %i.t = getelementptr i8, ptr %i.l, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ag, %vector.body ]
  %vec.phi272 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ah, %vector.body ]
  %next.gep = getelementptr i8, ptr %i.l, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %next.gep, i64 1
  %i.v = getelementptr inbounds nuw i8, ptr %next.gep, i64 3
  %wide.load = load <2 x i8>, ptr %i.u, align 1, !tbaa !10 ; 2 uses
  %wide.load273 = load <2 x i8>, ptr %i.v, align 1, !tbaa !10 ; 2 uses
  %i.w = zext <2 x i8> %wide.load to <2 x i32>    ; 2 uses
  %i.x = zext <2 x i8> %wide.load273 to <2 x i32> ; 2 uses
  %i.y = sub nuw nsw <2 x i32> splat (i32 256), %i.w
  %i.z = sub nuw nsw <2 x i32> splat (i32 256), %i.x
  %i.aa = icmp slt <2 x i8> %wide.load, zeroinitializer
  %i.ab = icmp slt <2 x i8> %wide.load273, zeroinitializer
  %i.ac = select <2 x i1> %i.aa, <2 x i32> %i.y, <2 x i32> %i.w
  %i.ad = select <2 x i1> %i.ab, <2 x i32> %i.z, <2 x i32> %i.x
  %i.ae = zext nneg <2 x i32> %i.ac to <2 x i64>
  %i.af = zext nneg <2 x i32> %i.ad to <2 x i64>
  %i.ag = add <2 x i64> %vec.phi, %i.ae           ; 2 uses
  %i.ah = add <2 x i64> %vec.phi272, %i.af        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !262

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ah, %i.ag
  %i.aj = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader706

.lr.ph.preheader706:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0228.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.0101227.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.aj, %middle.block ]
  %.pn226.ph = phi ptr [ %i.l, %.lr.ph.preheader ], [ %i.t, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader706, %.lr.ph
  %.0228 = phi i64 [ %i.ar, %.lr.ph ], [ %.0228.ph, %.lr.ph.preheader706 ]
  %.0101227 = phi i64 [ %i.aq, %.lr.ph ], [ %.0101227.ph, %.lr.ph.preheader706 ]
  %.pn226 = phi ptr [ %.0102, %.lr.ph ], [ %.pn226.ph, %.lr.ph.preheader706 ]
  %.0102 = getelementptr inbounds nuw i8, ptr %.pn226, i64 1 ; 2 uses
  %i.ak = load i8, ptr %.0102, align 1, !tbaa !10 ; 2 uses
  %i.al = zext i8 %i.ak to i32                    ; 2 uses
  %i.am = sub nuw nsw i32 256, %i.al
  %i.an = icmp slt i8 %i.ak, 0
  %i.ao = select i1 %i.an, i32 %i.am, i32 %i.al
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = add i64 %.0101227, %i.ap                ; 2 uses
  %i.ar = add nuw nsw i64 %.0228, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.ar, %i.e
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !263

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %.preheader, %bb.c, %bb.b
  %.0111 = phi i32 [ %i.p, %bb.b ], [ %i.c, %bb.c ], [ %i.c, %.preheader ], [ %i.c, %middle.block ], [ %i.c, %.lr.ph ] ; 8 uses
  %.0103 = phi i64 [ -257, %bb.b ], [ -257, %bb.c ], [ 0, %.preheader ], [ %i.aj, %middle.block ], [ %i.aq, %.lr.ph ] ; 4 uses
  %i.as = icmp eq i32 %.0111, 16
  br i1 %i.as, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.loopexit
  %i.at = getelementptr i8, ptr %0, i64 568
  %.val128 = load ptr, ptr %i.at, align 8, !tbaa !66 ; 9 uses
  store i8 1, ptr %.val128, align 1, !tbaa !10
  %i.au = zext nneg i32 %i.j to i64               ; 13 uses
  %.0201.i = getelementptr inbounds nuw i8, ptr %.val128, i64 1 ; 6 uses
  %.0222.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 6 uses
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %.preheader.i, label %iter.check620

iter.check620:                                    ; preds = %bb.d
  %.val128601 = ptrtoaddr ptr %.val128 to i64
  %min.iters.check604 = icmp ult i8 %i.g, 25
  %i.av = sub i64 %i.m, %.val128601
  %diff.check602 = icmp ugt i64 %i.av, -16
  %or.cond686 = select i1 %min.iters.check604, i1 true, i1 %diff.check602
  br i1 %or.cond686, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check605

vector.main.loop.iter.check605:                   ; preds = %iter.check620
  %min.iters.check606 = icmp ult i8 %i.g, 121
  br i1 %min.iters.check606, label %vec.epilog.ph624, label %vector.ph607

vector.ph607:                                     ; preds = %vector.main.loop.iter.check605
  %i.aw = and i64 %i.au, 12
  %n.vec608 = and i64 %i.au, 48                   ; 6 uses
  %i.ax = getelementptr i8, ptr %.0222.i, i64 %n.vec608 ; 2 uses
  %i.ay = getelementptr i8, ptr %.0201.i, i64 %n.vec608 ; 2 uses
  %wide.load613 = load <16 x i8>, ptr %.0222.i, align 1, !tbaa !10
  store <16 x i8> %wide.load613, ptr %.0201.i, align 1, !tbaa !10
  %i.az = icmp eq i64 %n.vec608, 16
  br i1 %i.az, label %middle.block615, label %vector.body609.1

vector.body609.1:                                 ; preds = %vector.ph607
  %next.gep611.1 = getelementptr i8, ptr %i.l, i64 17
  %next.gep612.1 = getelementptr i8, ptr %.val128, i64 17
  %wide.load613.1 = load <16 x i8>, ptr %next.gep611.1, align 1, !tbaa !10
  store <16 x i8> %wide.load613.1, ptr %next.gep612.1, align 1, !tbaa !10
  br label %middle.block615

middle.block615:                                  ; preds = %vector.body609.1, %vector.ph607
  %cmp.n616 = icmp eq i64 %n.vec608, %i.au
  br i1 %cmp.n616, label %.preheader.i, label %vec.epilog.iter.check622

vec.epilog.iter.check622:                         ; preds = %middle.block615
  %min.epilog.iters.check623 = icmp eq i64 %i.aw, 0
  br i1 %min.epilog.iters.check623, label %.lr.ph.i.preheader, label %vec.epilog.ph624, !prof !310

vec.epilog.ph624:                                 ; preds = %vector.main.loop.iter.check605, %vec.epilog.iter.check622
  %vec.epilog.resume.val617 = phi i64 [ %n.vec608, %vec.epilog.iter.check622 ], [ 0, %vector.main.loop.iter.check605 ]
  %n.vec625 = and i64 %i.au, 60                   ; 5 uses
  %i.ba = getelementptr i8, ptr %.0222.i, i64 %n.vec625 ; 2 uses
  %i.bb = getelementptr i8, ptr %.0201.i, i64 %n.vec625 ; 2 uses
  br label %vec.epilog.vector.body626

vec.epilog.vector.body626:                        ; preds = %vec.epilog.vector.body626, %vec.epilog.ph624
  %index627 = phi i64 [ %vec.epilog.resume.val617, %vec.epilog.ph624 ], [ %index.next631, %vec.epilog.vector.body626 ] ; 3 uses
  %next.gep628 = getelementptr i8, ptr %.0222.i, i64 %index627
  %next.gep629 = getelementptr i8, ptr %.0201.i, i64 %index627
  %wide.load630 = load <4 x i8>, ptr %next.gep628, align 1, !tbaa !10
  store <4 x i8> %wide.load630, ptr %next.gep629, align 1, !tbaa !10
  %index.next631 = add nuw i64 %index627, 4       ; 2 uses
  %i.bc = icmp eq i64 %index.next631, %n.vec625
  br i1 %i.bc, label %vec.epilog.middle.block632, label %vec.epilog.vector.body626, !llvm.loop !264

vec.epilog.middle.block632:                       ; preds = %vec.epilog.vector.body626
  %cmp.n633 = icmp eq i64 %n.vec625, %i.au
  br i1 %cmp.n633, label %.preheader.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check620, %vec.epilog.iter.check622, %vec.epilog.middle.block632
  %.0225.i.ph = phi ptr [ %.0222.i, %iter.check620 ], [ %i.ax, %vec.epilog.iter.check622 ], [ %i.ba, %vec.epilog.middle.block632 ] ; 2 uses
  %.0204.i.ph = phi ptr [ %.0201.i, %iter.check620 ], [ %i.ay, %vec.epilog.iter.check622 ], [ %i.bb, %vec.epilog.middle.block632 ] ; 2 uses
  %.03.i.ph = phi i64 [ 0, %iter.check620 ], [ %n.vec608, %vec.epilog.iter.check622 ], [ %n.vec625, %vec.epilog.middle.block632 ] ; 4 uses
  %i.bd = sub nsw i64 %i.au, %.03.i.ph
  %xtraiter722 = and i64 %i.bd, 7                 ; 2 uses
  %lcmp.mod723.not = icmp eq i64 %xtraiter722, 0
  br i1 %lcmp.mod723.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.0225.i.prol = phi ptr [ %.022.i.prol, %.lr.ph.i.prol ], [ %.0225.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.0204.i.prol = phi ptr [ %.020.i.prol, %.lr.ph.i.prol ], [ %.0204.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.03.i.prol = phi i64 [ %i.bf, %.lr.ph.i.prol ], [ %.03.i.ph, %.lr.ph.i.preheader ]
  %prol.iter724 = phi i64 [ %prol.iter724.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.be = load i8, ptr %.0225.i.prol, align 1, !tbaa !10
  store i8 %i.be, ptr %.0204.i.prol, align 1, !tbaa !10
  %i.bf = add nuw nsw i64 %.03.i.prol, 1          ; 2 uses
  %.020.i.prol = getelementptr inbounds nuw i8, ptr %.0204.i.prol, i64 1 ; 3 uses
  %.022.i.prol = getelementptr inbounds nuw i8, ptr %.0225.i.prol, i64 1 ; 3 uses
  %prol.iter724.next = add i64 %prol.iter724, 1   ; 2 uses
  %prol.iter724.cmp.not = icmp eq i64 %prol.iter724.next, %xtraiter722
  br i1 %prol.iter724.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !265

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.020.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.020.i.prol, %.lr.ph.i.prol ]
  %.022.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.022.i.prol, %.lr.ph.i.prol ]
  %.0225.i.unr = phi ptr [ %.0225.i.ph, %.lr.ph.i.preheader ], [ %.022.i.prol, %.lr.ph.i.prol ]
  %.0204.i.unr = phi ptr [ %.0204.i.ph, %.lr.ph.i.preheader ], [ %.020.i.prol, %.lr.ph.i.prol ]
  %.03.i.unr = phi i64 [ %.03.i.ph, %.lr.ph.i.preheader ], [ %i.bf, %.lr.ph.i.prol ]
  %i.bg = sub nsw i64 %.03.i.ph, %i.au
  %i.bh = icmp ugt i64 %i.bg, -8
  br i1 %i.bh, label %.preheader.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block615, %vec.epilog.middle.block632, %bb.d
  %.0.lcssa.i = phi i64 [ 0, %bb.d ], [ %i.au, %middle.block615 ], [ %i.au, %vec.epilog.middle.block632 ], [ %i.au, %.lr.ph.i ], [ %i.au, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.020.lcssa.i = phi ptr [ %.0201.i, %bb.d ], [ %i.ay, %middle.block615 ], [ %i.bb, %vec.epilog.middle.block632 ], [ %.020.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.020.i.7, %.lr.ph.i ] ; 7 uses
  %.022.lcssa.i = phi ptr [ %.0222.i, %bb.d ], [ %i.ax, %middle.block615 ], [ %i.ba, %vec.epilog.middle.block632 ], [ %.022.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.022.i.7, %.lr.ph.i ] ; 7 uses
  %.020.lcssa.i638 = ptrtoaddr ptr %.020.lcssa.i to i64 ; 2 uses
  %.022.lcssa.i640 = ptrtoaddr ptr %.022.lcssa.i to i64
  %i.bi = icmp ult i64 %.0.lcssa.i, %i.e
  br i1 %i.bi, label %iter.check666, label %.thread214.thread

end_hunk_3
begin_hunk_4_@png_write_find_filter:bb.a
  %i.bk = sub i64 %.020.lcssa.i638, %i.m
  %i.bl = add i64 %i.bk, -2
  %diff.check639 = icmp ult i64 %i.bl, 31
  %i.bm = sub i64 %.022.lcssa.i640, %.020.lcssa.i638
  %diff.check641 = icmp ugt i64 %i.bm, -32
  %conflict.rdx642 = or i1 %diff.check639, %diff.check641
  br i1 %conflict.rdx642, label %.lr.ph12.i.preheader, label %vector.main.loop.iter.check645

vector.main.loop.iter.check645:                   ; preds = %vector.memcheck637
  %min.iters.check646 = icmp ult i64 %i.bj, 32
  br i1 %min.iters.check646, label %vec.epilog.ph670, label %vector.ph647

vector.ph647:                                     ; preds = %vector.main.loop.iter.check645
  %i.bn = and i64 %i.bj, 28
  %n.vec648 = and i64 %i.bj, -32                  ; 7 uses
  %i.bo = add i64 %.0.lcssa.i, %n.vec648
  %i.bp = getelementptr i8, ptr %i.l, i64 %n.vec648
  %i.bq = getelementptr i8, ptr %.020.lcssa.i, i64 %n.vec648
  %i.br = getelementptr i8, ptr %.022.lcssa.i, i64 %n.vec648
  br label %vector.body649

vector.body649:                                   ; preds = %vector.body649, %vector.ph647
  %index650 = phi i64 [ 0, %vector.ph647 ], [ %index.next658, %vector.body649 ] ; 4 uses
  %next.gep651 = getelementptr i8, ptr %i.l, i64 %index650 ; 2 uses
  %next.gep652 = getelementptr i8, ptr %.020.lcssa.i, i64 %index650 ; 2 uses
  %next.gep653 = getelementptr i8, ptr %.022.lcssa.i, i64 %index650 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %next.gep651, i64 1
  %i.bt = getelementptr i8, ptr %next.gep653, i64 16
  %wide.load654 = load <16 x i8>, ptr %next.gep653, align 1, !tbaa !10
  %wide.load655 = load <16 x i8>, ptr %i.bt, align 1, !tbaa !10
  %i.bu = getelementptr inbounds nuw i8, ptr %next.gep651, i64 17
  %wide.load656 = load <16 x i8>, ptr %i.bs, align 1, !tbaa !10
  %wide.load657 = load <16 x i8>, ptr %i.bu, align 1, !tbaa !10
  %i.bv = sub <16 x i8> %wide.load654, %wide.load656
  %i.bw = sub <16 x i8> %wide.load655, %wide.load657
  %i.bx = getelementptr i8, ptr %next.gep652, i64 16
  store <16 x i8> %i.bv, ptr %next.gep652, align 1, !tbaa !10
  store <16 x i8> %i.bw, ptr %i.bx, align 1, !tbaa !10
  %index.next658 = add nuw i64 %index650, 32      ; 2 uses
  %i.by = icmp eq i64 %index.next658, %n.vec648
  br i1 %i.by, label %middle.block659, label %vector.body649, !llvm.loop !266

middle.block659:                                  ; preds = %vector.body649
  %cmp.n660 = icmp eq i64 %i.bj, %n.vec648
  br i1 %cmp.n660, label %.thread214.thread, label %vec.epilog.iter.check668

vec.epilog.iter.check668:                         ; preds = %middle.block659
  %min.epilog.iters.check669 = icmp eq i64 %i.bn, 0
  br i1 %min.epilog.iters.check669, label %.lr.ph12.i.preheader, label %vec.epilog.ph670, !prof !312

vec.epilog.ph670:                                 ; preds = %vector.main.loop.iter.check645, %vec.epilog.iter.check668
  %vec.epilog.resume.val661 = phi i64 [ %n.vec648, %vec.epilog.iter.check668 ], [ 0, %vector.main.loop.iter.check645 ]
  %n.vec671 = and i64 %i.bj, -4                   ; 6 uses
  %i.bz = add i64 %.0.lcssa.i, %n.vec671
  %i.ca = getelementptr i8, ptr %i.l, i64 %n.vec671
  %i.cb = getelementptr i8, ptr %.020.lcssa.i, i64 %n.vec671
  %i.cc = getelementptr i8, ptr %.022.lcssa.i, i64 %n.vec671
  br label %vec.epilog.vector.body672

vec.epilog.vector.body672:                        ; preds = %vec.epilog.vector.body672, %vec.epilog.ph670
  %index673 = phi i64 [ %vec.epilog.resume.val661, %vec.epilog.ph670 ], [ %index.next679, %vec.epilog.vector.body672 ] ; 4 uses
  %next.gep674 = getelementptr i8, ptr %i.l, i64 %index673
  %next.gep675 = getelementptr i8, ptr %.020.lcssa.i, i64 %index673
  %next.gep676 = getelementptr i8, ptr %.022.lcssa.i, i64 %index673
  %i.cd = getelementptr inbounds nuw i8, ptr %next.gep674, i64 1
  %wide.load677 = load <4 x i8>, ptr %next.gep676, align 1, !tbaa !10
  %wide.load678 = load <4 x i8>, ptr %i.cd, align 1, !tbaa !10
  %i.ce = sub <4 x i8> %wide.load677, %wide.load678
  store <4 x i8> %i.ce, ptr %next.gep675, align 1, !tbaa !10
  %index.next679 = add nuw i64 %index673, 4       ; 2 uses
  %i.cf = icmp eq i64 %index.next679, %n.vec671
  br i1 %i.cf, label %vec.epilog.middle.block680, label %vec.epilog.vector.body672, !llvm.loop !267

vec.epilog.middle.block680:                       ; preds = %vec.epilog.vector.body672
  %cmp.n681 = icmp eq i64 %i.bj, %n.vec671
  br i1 %cmp.n681, label %.thread214.thread, label %.lr.ph12.i.preheader

.lr.ph12.i.preheader:                             ; preds = %vector.memcheck637, %iter.check666, %vec.epilog.iter.check668, %vec.epilog.middle.block680
  %.111.i.ph = phi i64 [ %.0.lcssa.i, %iter.check666 ], [ %.0.lcssa.i, %vector.memcheck637 ], [ %i.bo, %vec.epilog.iter.check668 ], [ %i.bz, %vec.epilog.middle.block680 ] ; 4 uses
  %.pn10.i.ph = phi ptr [ %i.l, %iter.check666 ], [ %i.l, %vector.memcheck637 ], [ %i.bp, %vec.epilog.iter.check668 ], [ %i.ca, %vec.epilog.middle.block680 ] ; 2 uses
  %.1219.i.ph = phi ptr [ %.020.lcssa.i, %iter.check666 ], [ %.020.lcssa.i, %vector.memcheck637 ], [ %i.bq, %vec.epilog.iter.check668 ], [ %i.cb, %vec.epilog.middle.block680 ] ; 2 uses
  %.1238.i.ph = phi ptr [ %.022.lcssa.i, %iter.check666 ], [ %.022.lcssa.i, %vector.memcheck637 ], [ %i.br, %vec.epilog.iter.check668 ], [ %i.cc, %vec.epilog.middle.block680 ] ; 2 uses
  %i.cg = sub i64 %i.e, %.111.i.ph
  %xtraiter725 = and i64 %i.cg, 3                 ; 2 uses
  %lcmp.mod726.not = icmp eq i64 %xtraiter725, 0
  br i1 %lcmp.mod726.not, label %.lr.ph12.i.prol.loopexit, label %.lr.ph12.i.prol

.lr.ph12.i.prol:                                  ; preds = %.lr.ph12.i.preheader, %.lr.ph12.i.prol
  %.111.i.prol = phi i64 [ %i.cj, %.lr.ph12.i.prol ], [ %.111.i.ph, %.lr.ph12.i.preheader ]
  %.pn10.i.prol = phi ptr [ %.019.i.prol, %.lr.ph12.i.prol ], [ %.pn10.i.ph, %.lr.ph12.i.preheader ]
  %.1219.i.prol = phi ptr [ %i.cl, %.lr.ph12.i.prol ], [ %.1219.i.ph, %.lr.ph12.i.preheader ] ; 2 uses
  %.1238.i.prol = phi ptr [ %i.ck, %.lr.ph12.i.prol ], [ %.1238.i.ph, %.lr.ph12.i.preheader ] ; 2 uses
  %prol.iter727 = phi i64 [ %prol.iter727.next, %.lr.ph12.i.prol ], [ 0, %.lr.ph12.i.preheader ]
  %.019.i.prol = getelementptr inbounds nuw i8, ptr %.pn10.i.prol, i64 1 ; 3 uses
  %i.ch = load i8, ptr %.1238.i.prol, align 1, !tbaa !10
  %i.ci = load i8, ptr %.019.i.prol, align 1, !tbaa !10
  %.narrow.i.prol = sub i8 %i.ch, %i.ci
  store i8 %.narrow.i.prol, ptr %.1219.i.prol, align 1, !tbaa !10
  %i.cj = add nuw i64 %.111.i.prol, 1             ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.1238.i.prol, i64 1 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.1219.i.prol, i64 1 ; 2 uses
  %prol.iter727.next = add i64 %prol.iter727, 1   ; 2 uses
  %prol.iter727.cmp.not = icmp eq i64 %prol.iter727.next, %xtraiter725
  br i1 %prol.iter727.cmp.not, label %.lr.ph12.i.prol.loopexit, label %.lr.ph12.i.prol, !llvm.loop !268

.lr.ph12.i.prol.loopexit:                         ; preds = %.lr.ph12.i.prol, %.lr.ph12.i.preheader
  %.111.i.unr = phi i64 [ %.111.i.ph, %.lr.ph12.i.preheader ], [ %i.cj, %.lr.ph12.i.prol ]
  %.pn10.i.unr = phi ptr [ %.pn10.i.ph, %.lr.ph12.i.preheader ], [ %.019.i.prol, %.lr.ph12.i.prol ]
  %.1219.i.unr = phi ptr [ %.1219.i.ph, %.lr.ph12.i.preheader ], [ %i.cl, %.lr.ph12.i.prol ]
  %.1238.i.unr = phi ptr [ %.1238.i.ph, %.lr.ph12.i.preheader ], [ %i.ck, %.lr.ph12.i.prol ]
  %i.cm = sub i64 %.111.i.ph, %i.e
  %i.cn = icmp ugt i64 %i.cm, -4
  br i1 %i.cn, label %.thread214.thread, label %.lr.ph12.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.0225.i = phi ptr [ %.022.i.7, %.lr.ph.i ], [ %.0225.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.0204.i = phi ptr [ %.020.i.7, %.lr.ph.i ], [ %.0204.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.03.i = phi i64 [ %i.cw, %.lr.ph.i ], [ %.03.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.co = load i8, ptr %.0225.i, align 1, !tbaa !10
  store i8 %i.co, ptr %.0204.i, align 1, !tbaa !10
  %.020.i = getelementptr inbounds nuw i8, ptr %.0204.i, i64 1
  %.022.i = getelementptr inbounds nuw i8, ptr %.0225.i, i64 1
  %i.cp = load i8, ptr %.022.i, align 1, !tbaa !10
  store i8 %i.cp, ptr %.020.i, align 1, !tbaa !10
  %.020.i.1 = getelementptr inbounds nuw i8, ptr %.0204.i, i64 2
  %.022.i.1 = getelementptr inbounds nuw i8, ptr %.0225.i, i64 2
  %i.cq = load i8, ptr %.022.i.1, align 1, !tbaa !10
  store i8 %i.cq, ptr %.020.i.1, align 1, !tbaa !10
  %.020.i.2 = getelementptr inbounds nuw i8, ptr %.0204.i, i64 3
  %.022.i.2 = getelementptr inbounds nuw i8, ptr %.0225.i, i64 3
  %i.cr = load i8, ptr %.022.i.2, align 1, !tbaa !10
  store i8 %i.cr, ptr %.020.i.2, align 1, !tbaa !10
  %.020.i.3 = getelementptr inbounds nuw i8, ptr %.0204.i, i64 4
  %.022.i.3 = getelementptr inbounds nuw i8, ptr %.0225.i, i64 4
  %i.cs = load i8, ptr %.022.i.3, align 1, !tbaa !10
  store i8 %i.cs, ptr %.020.i.3, align 1, !tbaa !10
  %.020.i.4 = getelementptr inbounds nuw i8, ptr %.0204.i, i64 5
  %.022.i.4 = getelementptr inbounds nuw i8, ptr %.0225.i, i64 5
  %i.ct = load i8, ptr %.022.i.4, align 1, !tbaa !10
  store i8 %i.ct, ptr %.020.i.4, align 1, !tbaa !10
  %.020.i.5 = getelementptr inbounds nuw i8, ptr %.0204.i, i64 6
  %.022.i.5 = getelementptr inbounds nuw i8, ptr %.0225.i, i64 6
  %i.cu = load i8, ptr %.022.i.5, align 1, !tbaa !10
  store i8 %i.cu, ptr %.020.i.5, align 1, !tbaa !10
  %.020.i.6 = getelementptr inbounds nuw i8, ptr %.0204.i, i64 7
  %.022.i.6 = getelementptr inbounds nuw i8, ptr %.0225.i, i64 7
  %i.cv = load i8, ptr %.022.i.6, align 1, !tbaa !10
  store i8 %i.cv, ptr %.020.i.6, align 1, !tbaa !10
  %i.cw = add nuw nsw i64 %.03.i, 8               ; 2 uses
  %.020.i.7 = getelementptr inbounds nuw i8, ptr %.0204.i, i64 8 ; 2 uses
  %.022.i.7 = getelementptr inbounds nuw i8, ptr %.0225.i, i64 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %i.cw, %i.au
  br i1 %exitcond.not.i.7, label %.preheader.i, label %.lr.ph.i, !llvm.loop !269

.lr.ph12.i:                                       ; preds = %.lr.ph12.i.prol.loopexit, %.lr.ph12.i
  %.111.i = phi i64 [ %i.dl, %.lr.ph12.i ], [ %.111.i.unr, %.lr.ph12.i.prol.loopexit ]
  %.pn10.i = phi ptr [ %.019.i.3, %.lr.ph12.i ], [ %.pn10.i.unr, %.lr.ph12.i.prol.loopexit ] ; 4 uses
  %.1219.i = phi ptr [ %i.dn, %.lr.ph12.i ], [ %.1219.i.unr, %.lr.ph12.i.prol.loopexit ] ; 5 uses
  %.1238.i = phi ptr [ %i.dm, %.lr.ph12.i ], [ %.1238.i.unr, %.lr.ph12.i.prol.loopexit ] ; 5 uses
  %.019.i = getelementptr inbounds nuw i8, ptr %.pn10.i, i64 1
  %i.cx = load i8, ptr %.1238.i, align 1, !tbaa !10
  %i.cy = load i8, ptr %.019.i, align 1, !tbaa !10
  %.narrow.i = sub i8 %i.cx, %i.cy
  store i8 %.narrow.i, ptr %.1219.i, align 1, !tbaa !10
  %i.cz = getelementptr inbounds nuw i8, ptr %.1238.i, i64 1
  %i.da = getelementptr inbounds nuw i8, ptr %.1219.i, i64 1
  %.019.i.1 = getelementptr inbounds nuw i8, ptr %.pn10.i, i64 2
  %i.db = load i8, ptr %i.cz, align 1, !tbaa !10
  %i.dc = load i8, ptr %.019.i.1, align 1, !tbaa !10
  %.narrow.i.1 = sub i8 %i.db, %i.dc
  store i8 %.narrow.i.1, ptr %i.da, align 1, !tbaa !10
  %i.dd = getelementptr inbounds nuw i8, ptr %.1238.i, i64 2
  %i.de = getelementptr inbounds nuw i8, ptr %.1219.i, i64 2
  %.019.i.2 = getelementptr inbounds nuw i8, ptr %.pn10.i, i64 3
  %i.df = load i8, ptr %i.dd, align 1, !tbaa !10
  %i.dg = load i8, ptr %.019.i.2, align 1, !tbaa !10
  %.narrow.i.2 = sub i8 %i.df, %i.dg
  store i8 %.narrow.i.2, ptr %i.de, align 1, !tbaa !10
  %i.dh = getelementptr inbounds nuw i8, ptr %.1238.i, i64 3
  %i.di = getelementptr inbounds nuw i8, ptr %.1219.i, i64 3
  %.019.i.3 = getelementptr inbounds nuw i8, ptr %.pn10.i, i64 4 ; 2 uses
  %i.dj = load i8, ptr %i.dh, align 1, !tbaa !10
  %i.dk = load i8, ptr %.019.i.3, align 1, !tbaa !10
  %.narrow.i.3 = sub i8 %i.dj, %i.dk
  store i8 %.narrow.i.3, ptr %i.di, align 1, !tbaa !10
  %i.dl = add nuw i64 %.111.i, 4                  ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.1238.i, i64 4
  %i.dn = getelementptr inbounds nuw i8, ptr %.1219.i, i64 4
  %exitcond15.not.i.3 = icmp eq i64 %i.dl, %i.e
  br i1 %exitcond15.not.i.3, label %.thread214.thread, label %.lr.ph12.i, !llvm.loop !270

bb.e:                                             ; preds = %.loopexit
  %i.do = and i32 %.0111, 16
  %.not = icmp eq i32 %i.do, 0
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dp = getelementptr i8, ptr %0, i64 568       ; 2 uses
  %.val130 = load ptr, ptr %i.dp, align 8, !tbaa !66 ; 21 uses
  store i8 1, ptr %.val130, align 1, !tbaa !10
  %i.dq = zext nneg i32 %i.j to i64               ; 7 uses
  %.0331.i = getelementptr inbounds nuw i8, ptr %.val130, i64 1 ; 4 uses
  %.0352.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 4 uses
  %.not.i131 = icmp eq i32 %i.j, 0
  br i1 %.not.i131, label %.preheader.i134, label %.lr.ph.i132.preheader

.lr.ph.i132.preheader:                            ; preds = %bb.f
  %.val130275 = ptrtoaddr ptr %.val130 to i64
  %min.iters.check277 = icmp ult i8 %i.g, 25
  %i.dr = sub i64 %i.m, %.val130275
  %diff.check = icmp ugt i64 %i.dr, -4
  %or.cond687 = select i1 %min.iters.check277, i1 true, i1 %diff.check
  br i1 %or.cond687, label %.lr.ph.i132.preheader702, label %vector.ph278

vector.ph278:                                     ; preds = %.lr.ph.i132.preheader
  %n.vec279 = and i64 %i.dq, 60                   ; 11 uses
  %i.ds = getelementptr i8, ptr %.0352.i, i64 %n.vec279 ; 2 uses
  %i.dt = getelementptr i8, ptr %.0331.i, i64 %n.vec279 ; 2 uses
  %i.du = getelementptr i8, ptr %i.l, i64 3
  %wide.load286 = load <2 x i8>, ptr %.0352.i, align 1, !tbaa !10 ; 3 uses
  %wide.load287 = load <2 x i8>, ptr %i.du, align 1, !tbaa !10 ; 3 uses
  %i.dv = getelementptr i8, ptr %.val130, i64 3
  store <2 x i8> %wide.load286, ptr %.0331.i, align 1, !tbaa !10
  store <2 x i8> %wide.load287, ptr %i.dv, align 1, !tbaa !10
  %i.dw = zext <2 x i8> %wide.load286 to <2 x i32> ; 2 uses
  %i.dx = zext <2 x i8> %wide.load287 to <2 x i32> ; 2 uses
  %i.dy = sub nuw nsw <2 x i32> splat (i32 256), %i.dw
  %i.dz = sub nuw nsw <2 x i32> splat (i32 256), %i.dx
  %i.ea = icmp slt <2 x i8> %wide.load286, zeroinitializer
  %i.eb = icmp slt <2 x i8> %wide.load287, zeroinitializer
  %i.ec = select <2 x i1> %i.ea, <2 x i32> %i.dy, <2 x i32> %i.dw ; 2 uses
  %i.ed = select <2 x i1> %i.eb, <2 x i32> %i.dz, <2 x i32> %i.dx ; 2 uses
  %i.ee = zext nneg <2 x i32> %i.ec to <2 x i64>
  %i.ef = zext nneg <2 x i32> %i.ed to <2 x i64>
  %i.eg = icmp eq i64 %n.vec279, 4
  br i1 %i.eg, label %middle.block289, label %vector.body280.1

vector.body280.1:                                 ; preds = %vector.ph278
  %next.gep284.1 = getelementptr i8, ptr %i.l, i64 5
  %next.gep285.1 = getelementptr i8, ptr %.val130, i64 5
  %i.eh = getelementptr i8, ptr %i.l, i64 7
  %wide.load286.1 = load <2 x i8>, ptr %next.gep284.1, align 1, !tbaa !10 ; 3 uses
  %wide.load287.1 = load <2 x i8>, ptr %i.eh, align 1, !tbaa !10 ; 3 uses
  %i.ei = getelementptr i8, ptr %.val130, i64 7
  store <2 x i8> %wide.load286.1, ptr %next.gep285.1, align 1, !tbaa !10
  store <2 x i8> %wide.load287.1, ptr %i.ei, align 1, !tbaa !10
  %i.ej = zext <2 x i8> %wide.load286.1 to <2 x i32> ; 2 uses
  %i.ek = zext <2 x i8> %wide.load287.1 to <2 x i32> ; 2 uses
  %i.el = sub nuw nsw <2 x i32> splat (i32 256), %i.ej
  %i.em = sub nuw nsw <2 x i32> splat (i32 256), %i.ek
  %i.en = icmp slt <2 x i8> %wide.load286.1, zeroinitializer
  %i.eo = icmp slt <2 x i8> %wide.load287.1, zeroinitializer
  %i.ep = select <2 x i1> %i.en, <2 x i32> %i.el, <2 x i32> %i.ej
  %i.eq = select <2 x i1> %i.eo, <2 x i32> %i.em, <2 x i32> %i.ek
  %narrow = add nuw nsw <2 x i32> %i.ec, %i.ep    ; 2 uses
  %i.er = zext nneg <2 x i32> %narrow to <2 x i64>
  %narrow728 = add nuw nsw <2 x i32> %i.ed, %i.eq ; 2 uses
  %i.es = zext nneg <2 x i32> %narrow728 to <2 x i64>
  %i.et = icmp eq i64 %n.vec279, 8
  br i1 %i.et, label %middle.block289, label %vector.body280.2

vector.body280.2:                                 ; preds = %vector.body280.1
  %next.gep284.2 = getelementptr i8, ptr %i.l, i64 9
  %next.gep285.2 = getelementptr i8, ptr %.val130, i64 9
  %i.eu = getelementptr i8, ptr %i.l, i64 11
  %wide.load286.2 = load <2 x i8>, ptr %next.gep284.2, align 1, !tbaa !10 ; 3 uses
  %wide.load287.2 = load <2 x i8>, ptr %i.eu, align 1, !tbaa !10 ; 3 uses
  %i.ev = getelementptr i8, ptr %.val130, i64 11
  store <2 x i8> %wide.load286.2, ptr %next.gep285.2, align 1, !tbaa !10
  store <2 x i8> %wide.load287.2, ptr %i.ev, align 1, !tbaa !10
  %i.ew = zext <2 x i8> %wide.load286.2 to <2 x i32> ; 2 uses
  %i.ex = zext <2 x i8> %wide.load287.2 to <2 x i32> ; 2 uses
  %i.ey = sub nuw nsw <2 x i32> splat (i32 256), %i.ew
  %i.ez = sub nuw nsw <2 x i32> splat (i32 256), %i.ex
  %i.fa = icmp slt <2 x i8> %wide.load286.2, zeroinitializer
  %i.fb = icmp slt <2 x i8> %wide.load287.2, zeroinitializer
  %i.fc = select <2 x i1> %i.fa, <2 x i32> %i.ey, <2 x i32> %i.ew
  %i.fd = select <2 x i1> %i.fb, <2 x i32> %i.ez, <2 x i32> %i.ex
  %narrow729 = add nuw nsw <2 x i32> %narrow, %i.fc ; 2 uses
  %i.fe = zext nneg <2 x i32> %narrow729 to <2 x i64>
  %narrow730 = add nuw nsw <2 x i32> %narrow728, %i.fd ; 2 uses
  %i.ff = zext nneg <2 x i32> %narrow730 to <2 x i64>
  %i.fg = icmp eq i64 %n.vec279, 12
  br i1 %i.fg, label %middle.block289, label %vector.body280.3

vector.body280.3:                                 ; preds = %vector.body280.2
  %next.gep284.3 = getelementptr i8, ptr %i.l, i64 13
  %next.gep285.3 = getelementptr i8, ptr %.val130, i64 13
  %i.fh = getelementptr i8, ptr %i.l, i64 15
  %wide.load286.3 = load <2 x i8>, ptr %next.gep284.3, align 1, !tbaa !10 ; 3 uses
  %wide.load287.3 = load <2 x i8>, ptr %i.fh, align 1, !tbaa !10 ; 3 uses
  %i.fi = getelementptr i8, ptr %.val130, i64 15
  store <2 x i8> %wide.load286.3, ptr %next.gep285.3, align 1, !tbaa !10
  store <2 x i8> %wide.load287.3, ptr %i.fi, align 1, !tbaa !10
  %i.fj = zext <2 x i8> %wide.load286.3 to <2 x i32> ; 2 uses
  %i.fk = zext <2 x i8> %wide.load287.3 to <2 x i32> ; 2 uses
  %i.fl = sub nuw nsw <2 x i32> splat (i32 256), %i.fj
  %i.fm = sub nuw nsw <2 x i32> splat (i32 256), %i.fk
  %i.fn = icmp slt <2 x i8> %wide.load286.3, zeroinitializer
  %i.fo = icmp slt <2 x i8> %wide.load287.3, zeroinitializer
  %i.fp = select <2 x i1> %i.fn, <2 x i32> %i.fl, <2 x i32> %i.fj
  %i.fq = select <2 x i1> %i.fo, <2 x i32> %i.fm, <2 x i32> %i.fk
  %narrow731 = add nuw nsw <2 x i32> %narrow729, %i.fp ; 2 uses
  %i.fr = zext nneg <2 x i32> %narrow731 to <2 x i64>
  %narrow732 = add nuw nsw <2 x i32> %narrow730, %i.fq ; 2 uses
  %i.fs = zext nneg <2 x i32> %narrow732 to <2 x i64>
  %i.ft = icmp eq i64 %n.vec279, 16
  br i1 %i.ft, label %middle.block289, label %vector.body280.4

vector.body280.4:                                 ; preds = %vector.body280.3
  %next.gep284.4 = getelementptr i8, ptr %i.l, i64 17
  %next.gep285.4 = getelementptr i8, ptr %.val130, i64 17
  %i.fu = getelementptr i8, ptr %i.l, i64 19
  %wide.load286.4 = load <2 x i8>, ptr %next.gep284.4, align 1, !tbaa !10 ; 3 uses
  %wide.load287.4 = load <2 x i8>, ptr %i.fu, align 1, !tbaa !10 ; 3 uses
  %i.fv = getelementptr i8, ptr %.val130, i64 19
  store <2 x i8> %wide.load286.4, ptr %next.gep285.4, align 1, !tbaa !10
  store <2 x i8> %wide.load287.4, ptr %i.fv, align 1, !tbaa !10
  %i.fw = zext <2 x i8> %wide.load286.4 to <2 x i32> ; 2 uses
  %i.fx = zext <2 x i8> %wide.load287.4 to <2 x i32> ; 2 uses
  %i.fy = sub nuw nsw <2 x i32> splat (i32 256), %i.fw
  %i.fz = sub nuw nsw <2 x i32> splat (i32 256), %i.fx
  %i.ga = icmp slt <2 x i8> %wide.load286.4, zeroinitializer
  %i.gb = icmp slt <2 x i8> %wide.load287.4, zeroinitializer
  %i.gc = select <2 x i1> %i.ga, <2 x i32> %i.fy, <2 x i32> %i.fw
  %i.gd = select <2 x i1> %i.gb, <2 x i32> %i.fz, <2 x i32> %i.fx
  %narrow733 = add nuw nsw <2 x i32> %narrow731, %i.gc ; 2 uses
  %i.ge = zext nneg <2 x i32> %narrow733 to <2 x i64>
  %narrow734 = add nuw nsw <2 x i32> %narrow732, %i.gd ; 2 uses
  %i.gf = zext nneg <2 x i32> %narrow734 to <2 x i64>
  %i.gg = icmp eq i64 %n.vec279, 20
  br i1 %i.gg, label %middle.block289, label %vector.body280.5

vector.body280.5:                                 ; preds = %vector.body280.4
  %next.gep284.5 = getelementptr i8, ptr %i.l, i64 21
  %next.gep285.5 = getelementptr i8, ptr %.val130, i64 21
  %i.gh = getelementptr i8, ptr %i.l, i64 23
  %wide.load286.5 = load <2 x i8>, ptr %next.gep284.5, align 1, !tbaa !10 ; 3 uses
  %wide.load287.5 = load <2 x i8>, ptr %i.gh, align 1, !tbaa !10 ; 3 uses
  %i.gi = getelementptr i8, ptr %.val130, i64 23
  store <2 x i8> %wide.load286.5, ptr %next.gep285.5, align 1, !tbaa !10
  store <2 x i8> %wide.load287.5, ptr %i.gi, align 1, !tbaa !10
  %i.gj = zext <2 x i8> %wide.load286.5 to <2 x i32> ; 2 uses
  %i.gk = zext <2 x i8> %wide.load287.5 to <2 x i32> ; 2 uses
  %i.gl = sub nuw nsw <2 x i32> splat (i32 256), %i.gj
  %i.gm = sub nuw nsw <2 x i32> splat (i32 256), %i.gk
  %i.gn = icmp slt <2 x i8> %wide.load286.5, zeroinitializer
  %i.go = icmp slt <2 x i8> %wide.load287.5, zeroinitializer
  %i.gp = select <2 x i1> %i.gn, <2 x i32> %i.gl, <2 x i32> %i.gj
  %i.gq = select <2 x i1> %i.go, <2 x i32> %i.gm, <2 x i32> %i.gk
  %narrow735 = add nuw nsw <2 x i32> %narrow733, %i.gp
  %i.gr = zext <2 x i32> %narrow735 to <2 x i64>  ; 2 uses
  %narrow736 = add nuw nsw <2 x i32> %narrow734, %i.gq
  %i.gs = zext <2 x i32> %narrow736 to <2 x i64>  ; 2 uses
  %i.gt = icmp eq i64 %n.vec279, 24
  br i1 %i.gt, label %middle.block289, label %vector.body280.6

vector.body280.6:                                 ; preds = %vector.body280.5
  %next.gep284.6 = getelementptr i8, ptr %i.l, i64 25
  %next.gep285.6 = getelementptr i8, ptr %.val130, i64 25
  %i.gu = getelementptr i8, ptr %i.l, i64 27
  %wide.load286.6 = load <2 x i8>, ptr %next.gep284.6, align 1, !tbaa !10 ; 3 uses
  %wide.load287.6 = load <2 x i8>, ptr %i.gu, align 1, !tbaa !10 ; 3 uses
  %i.gv = getelementptr i8, ptr %.val130, i64 27
  store <2 x i8> %wide.load286.6, ptr %next.gep285.6, align 1, !tbaa !10
  store <2 x i8> %wide.load287.6, ptr %i.gv, align 1, !tbaa !10
  %i.gw = zext <2 x i8> %wide.load286.6 to <2 x i32> ; 2 uses
  %i.gx = zext <2 x i8> %wide.load287.6 to <2 x i32> ; 2 uses
  %i.gy = sub nuw nsw <2 x i32> splat (i32 256), %i.gw
  %i.gz = sub nuw nsw <2 x i32> splat (i32 256), %i.gx
  %i.ha = icmp slt <2 x i8> %wide.load286.6, zeroinitializer
  %i.hb = icmp slt <2 x i8> %wide.load287.6, zeroinitializer
  %i.hc = select <2 x i1> %i.ha, <2 x i32> %i.gy, <2 x i32> %i.gw
  %i.hd = select <2 x i1> %i.hb, <2 x i32> %i.gz, <2 x i32> %i.gx
  %i.he = zext nneg <2 x i32> %i.hc to <2 x i64>
  %i.hf = zext nneg <2 x i32> %i.hd to <2 x i64>
  %i.hg = add nuw nsw <2 x i64> %i.gr, %i.he      ; 2 uses
  %i.hh = add nuw nsw <2 x i64> %i.gs, %i.hf      ; 2 uses
  %i.hi = icmp eq i64 %n.vec279, 28
  br i1 %i.hi, label %middle.block289, label %vector.body280.7

vector.body280.7:                                 ; preds = %vector.body280.6
  %next.gep284.7 = getelementptr i8, ptr %i.l, i64 29
  %next.gep285.7 = getelementptr i8, ptr %.val130, i64 29
  %i.hj = getelementptr i8, ptr %i.l, i64 31
  %wide.load286.7 = load <2 x i8>, ptr %next.gep284.7, align 1, !tbaa !10 ; 3 uses
  %wide.load287.7 = load <2 x i8>, ptr %i.hj, align 1, !tbaa !10 ; 3 uses
  %i.hk = getelementptr i8, ptr %.val130, i64 31
  store <2 x i8> %wide.load286.7, ptr %next.gep285.7, align 1, !tbaa !10
  store <2 x i8> %wide.load287.7, ptr %i.hk, align 1, !tbaa !10
  %i.hl = zext <2 x i8> %wide.load286.7 to <2 x i32> ; 2 uses
  %i.hm = zext <2 x i8> %wide.load287.7 to <2 x i32> ; 2 uses
  %i.hn = sub nuw nsw <2 x i32> splat (i32 256), %i.hl
  %i.ho = sub nuw nsw <2 x i32> splat (i32 256), %i.hm
  %i.hp = icmp slt <2 x i8> %wide.load286.7, zeroinitializer
  %i.hq = icmp slt <2 x i8> %wide.load287.7, zeroinitializer
  %i.hr = select <2 x i1> %i.hp, <2 x i32> %i.hn, <2 x i32> %i.hl
  %i.hs = select <2 x i1> %i.hq, <2 x i32> %i.ho, <2 x i32> %i.hm
  %i.ht = zext nneg <2 x i32> %i.hr to <2 x i64>
  %i.hu = zext nneg <2 x i32> %i.hs to <2 x i64>
  %i.hv = add nuw nsw <2 x i64> %i.hg, %i.ht
  %i.hw = add nuw nsw <2 x i64> %i.hh, %i.hu
  br label %middle.block289

middle.block289:                                  ; preds = %vector.body280.7, %vector.body280.6, %vector.body280.5, %vector.body280.4, %vector.body280.3, %vector.body280.2, %vector.body280.1, %vector.ph278
  %.lcssa705 = phi <2 x i64> [ %i.ee, %vector.ph278 ], [ %i.er, %vector.body280.1 ], [ %i.fe, %vector.body280.2 ], [ %i.fr, %vector.body280.3 ], [ %i.ge, %vector.body280.4 ], [ %i.gr, %vector.body280.5 ], [ %i.hg, %vector.body280.6 ], [ %i.hv, %vector.body280.7 ]
  %.lcssa704 = phi <2 x i64> [ %i.ef, %vector.ph278 ], [ %i.es, %vector.body280.1 ], [ %i.ff, %vector.body280.2 ], [ %i.fs, %vector.body280.3 ], [ %i.gf, %vector.body280.4 ], [ %i.gs, %vector.body280.5 ], [ %i.hh, %vector.body280.6 ], [ %i.hw, %vector.body280.7 ]
  %bin.rdx290 = add <2 x i64> %.lcssa704, %.lcssa705
  %i.hx = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx290) ; 2 uses
  %cmp.n291 = icmp eq i64 %n.vec279, %i.dq
  br i1 %cmp.n291, label %.preheader.i134, label %.lr.ph.i132.preheader702

.lr.ph.i132.preheader702:                         ; preds = %.lr.ph.i132.preheader, %middle.block289
  %.0356.i.ph = phi ptr [ %.0352.i, %.lr.ph.i132.preheader ], [ %i.ds, %middle.block289 ] ; 3 uses
  %.0335.i.ph = phi ptr [ %.0331.i, %.lr.ph.i132.preheader ], [ %i.dt, %middle.block289 ] ; 3 uses
  %.04.i.ph = phi i64 [ 0, %.lr.ph.i132.preheader ], [ %i.hx, %middle.block289 ] ; 2 uses
  %.0303.i.ph = phi i64 [ 0, %.lr.ph.i132.preheader ], [ %n.vec279, %middle.block289 ] ; 3 uses
  %2 = trunc i32 %i.j to i1
  br i1 %2, label %.lr.ph.i132.prol, label %.lr.ph.i132.prol.loopexit

.lr.ph.i132.prol:                                 ; preds = %.lr.ph.i132.preheader702
  %i.hy = load i8, ptr %.0356.i.ph, align 1, !tbaa !10 ; 3 uses
  store i8 %i.hy, ptr %.0335.i.ph, align 1, !tbaa !10
  %i.hz = zext i8 %i.hy to i32                    ; 2 uses
  %i.ia = sub nuw nsw i32 256, %i.hz
  %i.ib = icmp slt i8 %i.hy, 0
  %i.ic = select i1 %i.ib, i32 %i.ia, i32 %i.hz
  %i.id = zext nneg i32 %i.ic to i64
  %i.ie = add i64 %.04.i.ph, %i.id                ; 2 uses
  %i.if = or disjoint i64 %.0303.i.ph, 1
  %.033.i.prol = getelementptr inbounds nuw i8, ptr %.0335.i.ph, i64 1 ; 2 uses
  %.035.i.prol = getelementptr inbounds nuw i8, ptr %.0356.i.ph, i64 1 ; 2 uses
  br label %.lr.ph.i132.prol.loopexit

.lr.ph.i132.prol.loopexit:                        ; preds = %.lr.ph.i132.prol, %.lr.ph.i132.preheader702
  %.lcssa703.unr = phi i64 [ poison, %.lr.ph.i132.preheader702 ], [ %i.ie, %.lr.ph.i132.prol ]
  %.033.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i132.preheader702 ], [ %.033.i.prol, %.lr.ph.i132.prol ]
  %.035.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i132.preheader702 ], [ %.035.i.prol, %.lr.ph.i132.prol ]
  %.0356.i.unr = phi ptr [ %.0356.i.ph, %.lr.ph.i132.preheader702 ], [ %.035.i.prol, %.lr.ph.i132.prol ]
  %.0335.i.unr = phi ptr [ %.0335.i.ph, %.lr.ph.i132.preheader702 ], [ %.033.i.prol, %.lr.ph.i132.prol ]
  %.04.i.unr = phi i64 [ %.04.i.ph, %.lr.ph.i132.preheader702 ], [ %i.ie, %.lr.ph.i132.prol ]
  %.0303.i.unr = phi i64 [ %.0303.i.ph, %.lr.ph.i132.preheader702 ], [ %i.if, %.lr.ph.i132.prol ]
  %i.ig = add nsw i64 %i.dq, -1
  %i.ih = icmp eq i64 %.0303.i.ph, %i.ig
  br i1 %i.ih, label %.preheader.i134, label %.lr.ph.i132

.preheader.i134:                                  ; preds = %.lr.ph.i132.prol.loopexit, %.lr.ph.i132, %middle.block289, %bb.f
  %.030.lcssa.i = phi i64 [ 0, %bb.f ], [ %i.dq, %middle.block289 ], [ %i.dq, %.lr.ph.i132 ], [ %i.dq, %.lr.ph.i132.prol.loopexit ] ; 2 uses
  %.0.lcssa.i135 = phi i64 [ 0, %bb.f ], [ %i.hx, %middle.block289 ], [ %.lcssa703.unr, %.lr.ph.i132.prol.loopexit ], [ %i.iw, %.lr.ph.i132 ] ; 2 uses
  %.033.lcssa.i = phi ptr [ %.0331.i, %bb.f ], [ %i.dt, %middle.block289 ], [ %.033.i.lcssa.unr, %.lr.ph.i132.prol.loopexit ], [ %.033.i.1, %.lr.ph.i132 ]
  %.035.lcssa.i = phi ptr [ %.0352.i, %bb.f ], [ %i.ds, %middle.block289 ], [ %.035.i.lcssa.unr, %.lr.ph.i132.prol.loopexit ], [ %.035.i.1, %.lr.ph.i132 ]
  %i.ii = icmp ult i64 %.030.lcssa.i, %i.e
  br i1 %i.ii, label %.lr.ph16.i, label %png_setup_sub_row.exit

.lr.ph.i132:                                      ; preds = %.lr.ph.i132.prol.loopexit, %.lr.ph.i132
  %.0356.i = phi ptr [ %.035.i.1, %.lr.ph.i132 ], [ %.0356.i.unr, %.lr.ph.i132.prol.loopexit ] ; 3 uses
  %.0335.i = phi ptr [ %.033.i.1, %.lr.ph.i132 ], [ %.0335.i.unr, %.lr.ph.i132.prol.loopexit ] ; 3 uses
  %.04.i = phi i64 [ %i.iw, %.lr.ph.i132 ], [ %.04.i.unr, %.lr.ph.i132.prol.loopexit ]
  %.0303.i = phi i64 [ %i.ix, %.lr.ph.i132 ], [ %.0303.i.unr, %.lr.ph.i132.prol.loopexit ]
  %i.ij = load i8, ptr %.0356.i, align 1, !tbaa !10 ; 3 uses
  store i8 %i.ij, ptr %.0335.i, align 1, !tbaa !10
  %i.ik = zext i8 %i.ij to i32                    ; 2 uses
  %i.il = sub nuw nsw i32 256, %i.ik
  %i.im = icmp slt i8 %i.ij, 0
  %i.in = select i1 %i.im, i32 %i.il, i32 %i.ik
  %i.io = zext nneg i32 %i.in to i64
  %i.ip = add i64 %.04.i, %i.io
  %.033.i = getelementptr inbounds nuw i8, ptr %.0335.i, i64 1
  %.035.i = getelementptr inbounds nuw i8, ptr %.0356.i, i64 1
  %i.iq = load i8, ptr %.035.i, align 1, !tbaa !10 ; 3 uses
  store i8 %i.iq, ptr %.033.i, align 1, !tbaa !10
  %i.ir = zext i8 %i.iq to i32                    ; 2 uses
  %i.is = sub nuw nsw i32 256, %i.ir
  %i.it = icmp slt i8 %i.iq, 0
  %i.iu = select i1 %i.it, i32 %i.is, i32 %i.ir
  %i.iv = zext nneg i32 %i.iu to i64
  %i.iw = add i64 %i.ip, %i.iv                    ; 2 uses
  %i.ix = add nuw nsw i64 %.0303.i, 2             ; 2 uses
  %.033.i.1 = getelementptr inbounds nuw i8, ptr %.0335.i, i64 2 ; 2 uses
  %.035.i.1 = getelementptr inbounds nuw i8, ptr %.0356.i, i64 2 ; 2 uses
  %exitcond.not.i133.1 = icmp eq i64 %i.ix, %i.dq
  br i1 %exitcond.not.i133.1, label %.preheader.i134, label %.lr.ph.i132, !llvm.loop !271

.lr.ph16.i:                                       ; preds = %.preheader.i134, %.lr.ph16.i
  %.03215.pn.i = phi ptr [ %.03215.i, %.lr.ph16.i ], [ %i.l, %.preheader.i134 ]
  %.114.i = phi i64 [ %i.jf, %.lr.ph16.i ], [ %.0.lcssa.i135, %.preheader.i134 ]
  %.13113.i = phi i64 [ %i.jh, %.lr.ph16.i ], [ %.030.lcssa.i, %.preheader.i134 ]
  %.13412.i = phi ptr [ %i.jj, %.lr.ph16.i ], [ %.033.lcssa.i, %.preheader.i134 ] ; 2 uses
  %.13611.i = phi ptr [ %i.ji, %.lr.ph16.i ], [ %.035.lcssa.i, %.preheader.i134 ] ; 2 uses
  %.03215.i = getelementptr inbounds nuw i8, ptr %.03215.pn.i, i64 1 ; 2 uses
  %i.iy = load i8, ptr %.13611.i, align 1, !tbaa !10
  %i.iz = load i8, ptr %.03215.i, align 1, !tbaa !10
  %.narrow.i136 = sub i8 %i.iy, %i.iz             ; 3 uses
  store i8 %.narrow.i136, ptr %.13412.i, align 1, !tbaa !10
  %i.ja = zext i8 %.narrow.i136 to i32            ; 2 uses
  %i.jb = sub nuw nsw i32 256, %i.ja
  %i.jc = icmp slt i8 %.narrow.i136, 0
  %i.jd = select i1 %i.jc, i32 %i.jb, i32 %i.ja
  %i.je = zext nneg i32 %i.jd to i64
  %i.jf = add i64 %.114.i, %i.je                  ; 3 uses
  %i.jg = icmp ule i64 %i.jf, %.0103
  %i.jh = add nuw i64 %.13113.i, 1                ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.13611.i, i64 1
  %i.jj = getelementptr inbounds nuw i8, ptr %.13412.i, i64 1
  %i.jk = icmp ult i64 %i.jh, %i.e
  %or.cond.i = select i1 %i.jg, i1 %i.jk, i1 false
  br i1 %or.cond.i, label %.lr.ph16.i, label %png_setup_sub_row.exit, !llvm.loop !272

png_setup_sub_row.exit:                           ; preds = %.lr.ph16.i, %.preheader.i134
  %.2.i = phi i64 [ %.0.lcssa.i135, %.preheader.i134 ], [ %i.jf, %.lr.ph16.i ] ; 3 uses
  %i.jl = icmp ult i64 %.2.i, %.0103
  br i1 %i.jl, label %bb.g, label %bb.i

bb.g:                                             ; preds = %png_setup_sub_row.exit
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !67 ; 2 uses
  %.not121 = icmp eq ptr %i.jn, null
  br i1 %.not121, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.jn, ptr %i.dp, align 8, !tbaa !66
  store ptr %.val130, ptr %i.jm, align 8, !tbaa !67
  br label %bb.i

bb.i:                                             ; preds = %png_setup_sub_row.exit, %bb.h, %bb.g, %bb.e
  %.1105 = phi ptr [ %i.l, %png_setup_sub_row.exit ], [ %i.l, %bb.e ], [ %.val130, %bb.h ], [ %.val130, %bb.g ] ; 2 uses
  %.2 = phi i64 [ %.0103, %png_setup_sub_row.exit ], [ %.0103, %bb.e ], [ %.2.i, %bb.h ], [ %.2.i, %bb.g ] ; 4 uses
  %i.jo = icmp eq i32 %.0111, 32
  br i1 %i.jo, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !313)
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !66, !alias.scope !313 ; 13 uses
  %i.jr = ptrtoaddr ptr %i.jq to i64              ; 2 uses
  store i8 2, ptr %i.jq, align 1, !tbaa !10, !noalias !313
  %.not.i137 = icmp eq i64 %i.e, 0
  br i1 %.not.i137, label %.thread214.thread, label %iter.check580

iter.check580:                                    ; preds = %bb.j
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !68, !alias.scope !313 ; 7 uses
  %min.iters.check559 = icmp ult i64 %i.e, 4
  br i1 %min.iters.check559, label %.lr.ph.i138.preheader, label %vector.memcheck554

vector.memcheck554:                               ; preds = %iter.check580
  %i.ju = ptrtoaddr ptr %i.jt to i64
  %i.jv = sub i64 %i.m, %i.jr
  %diff.check555 = icmp ugt i64 %i.jv, -32
  %i.jw = sub i64 %i.ju, %i.jr
  %diff.check556 = icmp ugt i64 %i.jw, -32
  %conflict.rdx557 = or i1 %diff.check555, %diff.check556
  br i1 %conflict.rdx557, label %.lr.ph.i138.preheader, label %vector.main.loop.iter.check560

vector.main.loop.iter.check560:                   ; preds = %vector.memcheck554
  %min.iters.check561 = icmp ult i64 %i.e, 32
  br i1 %min.iters.check561, label %vec.epilog.ph584, label %vector.ph562

vector.ph562:                                     ; preds = %vector.main.loop.iter.check560
  %i.jx = and i64 %i.e, 28
  %n.vec563 = and i64 %i.e, -32                   ; 7 uses
  %i.jy = getelementptr i8, ptr %i.jt, i64 %n.vec563
  %i.jz = getelementptr i8, ptr %i.jq, i64 %n.vec563
  %i.ka = getelementptr i8, ptr %i.l, i64 %n.vec563
  br label %vector.body564

vector.body564:                                   ; preds = %vector.body564, %vector.ph562
  %index565 = phi i64 [ 0, %vector.ph562 ], [ %index.next573, %vector.body564 ] ; 4 uses
  %next.gep566 = getelementptr i8, ptr %i.jt, i64 %index565 ; 2 uses
  %next.gep567 = getelementptr i8, ptr %i.jq, i64 %index565 ; 2 uses
  %next.gep568 = getelementptr i8, ptr %i.l, i64 %index565 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %next.gep567, i64 1
  %i.kc = getelementptr inbounds nuw i8, ptr %next.gep566, i64 1
  %i.kd = getelementptr inbounds nuw i8, ptr %next.gep568, i64 1
  %i.ke = getelementptr inbounds nuw i8, ptr %next.gep568, i64 17
  %wide.load569 = load <16 x i8>, ptr %i.kd, align 1, !tbaa !10, !noalias !313
  %wide.load570 = load <16 x i8>, ptr %i.ke, align 1, !tbaa !10, !noalias !313
  %i.kf = getelementptr inbounds nuw i8, ptr %next.gep566, i64 17
  %wide.load571 = load <16 x i8>, ptr %i.kc, align 1, !tbaa !10, !noalias !313
  %wide.load572 = load <16 x i8>, ptr %i.kf, align 1, !tbaa !10, !noalias !313
  %i.kg = sub <16 x i8> %wide.load569, %wide.load571
  %i.kh = sub <16 x i8> %wide.load570, %wide.load572
  %i.ki = getelementptr inbounds nuw i8, ptr %next.gep567, i64 17
  store <16 x i8> %i.kg, ptr %i.kb, align 1, !tbaa !10, !noalias !313
  store <16 x i8> %i.kh, ptr %i.ki, align 1, !tbaa !10, !noalias !313
  %index.next573 = add nuw i64 %index565, 32      ; 2 uses
  %i.kj = icmp eq i64 %index.next573, %n.vec563
  br i1 %i.kj, label %middle.block574, label %vector.body564, !llvm.loop !275

middle.block574:                                  ; preds = %vector.body564
  %cmp.n575 = icmp eq i64 %i.e, %n.vec563
  br i1 %cmp.n575, label %.thread214.thread, label %vec.epilog.iter.check582

vec.epilog.iter.check582:                         ; preds = %middle.block574
  %min.epilog.iters.check583 = icmp eq i64 %i.jx, 0
  br i1 %min.epilog.iters.check583, label %.lr.ph.i138.preheader, label %vec.epilog.ph584, !prof !312

vec.epilog.ph584:                                 ; preds = %vector.main.loop.iter.check560, %vec.epilog.iter.check582
  %vec.epilog.resume.val576 = phi i64 [ %n.vec563, %vec.epilog.iter.check582 ], [ 0, %vector.main.loop.iter.check560 ]
  %n.vec585 = and i64 %i.e, -4                    ; 6 uses
  %i.kk = getelementptr i8, ptr %i.jt, i64 %n.vec585
  %i.kl = getelementptr i8, ptr %i.jq, i64 %n.vec585
  %i.km = getelementptr i8, ptr %i.l, i64 %n.vec585
  br label %vec.epilog.vector.body586

vec.epilog.vector.body586:                        ; preds = %vec.epilog.vector.body586, %vec.epilog.ph584
  %index587 = phi i64 [ %vec.epilog.resume.val576, %vec.epilog.ph584 ], [ %index.next593, %vec.epilog.vector.body586 ] ; 4 uses
  %next.gep588 = getelementptr i8, ptr %i.jt, i64 %index587
  %next.gep589 = getelementptr i8, ptr %i.jq, i64 %index587
  %next.gep590 = getelementptr i8, ptr %i.l, i64 %index587
  %i.kn = getelementptr inbounds nuw i8, ptr %next.gep589, i64 1
  %i.ko = getelementptr inbounds nuw i8, ptr %next.gep588, i64 1
  %i.kp = getelementptr inbounds nuw i8, ptr %next.gep590, i64 1
  %wide.load591 = load <4 x i8>, ptr %i.kp, align 1, !tbaa !10, !noalias !313
  %wide.load592 = load <4 x i8>, ptr %i.ko, align 1, !tbaa !10, !noalias !313
  %i.kq = sub <4 x i8> %wide.load591, %wide.load592
  store <4 x i8> %i.kq, ptr %i.kn, align 1, !tbaa !10, !noalias !313
  %index.next593 = add nuw i64 %index587, 4       ; 2 uses
  %i.kr = icmp eq i64 %index.next593, %n.vec585
end_hunk_4
begin_hunk_5_@png_write_find_filter:bb.a
  %i.sg = getelementptr i8, ptr %i.qm, i64 11
  %wide.load312.2 = load <2 x i8>, ptr %next.gep308.2, align 1, !tbaa !10, !noalias !317
  %wide.load313.2 = load <2 x i8>, ptr %i.sg, align 1, !tbaa !10, !noalias !317
  %i.sh = lshr <2 x i8> %wide.load312.2, splat (i8 1)
  %i.si = lshr <2 x i8> %wide.load313.2, splat (i8 1)
  %i.sj = sub <2 x i8> %wide.load310.2, %i.sh     ; 3 uses
  %i.sk = sub <2 x i8> %wide.load311.2, %i.si     ; 3 uses
  %i.sl = getelementptr i8, ptr %i.qj, i64 11
  store <2 x i8> %i.sj, ptr %next.gep309.2, align 1, !tbaa !10, !noalias !317
  store <2 x i8> %i.sk, ptr %i.sl, align 1, !tbaa !10, !noalias !317
  %i.sm = zext <2 x i8> %i.sj to <2 x i32>        ; 2 uses
  %i.sn = zext <2 x i8> %i.sk to <2 x i32>        ; 2 uses
  %i.so = sub nuw nsw <2 x i32> splat (i32 256), %i.sm
  %i.sp = sub nuw nsw <2 x i32> splat (i32 256), %i.sn
  %i.sq = icmp slt <2 x i8> %i.sj, zeroinitializer
  %i.sr = icmp slt <2 x i8> %i.sk, zeroinitializer
  %i.ss = select <2 x i1> %i.sq, <2 x i32> %i.so, <2 x i32> %i.sm
  %i.st = select <2 x i1> %i.sr, <2 x i32> %i.sp, <2 x i32> %i.sn
  %narrow739 = add nuw nsw <2 x i32> %narrow737, %i.ss ; 2 uses
  %i.su = zext nneg <2 x i32> %narrow739 to <2 x i64>
  %narrow740 = add nuw nsw <2 x i32> %narrow738, %i.st ; 2 uses
  %i.sv = zext nneg <2 x i32> %narrow740 to <2 x i64>
  %i.sw = icmp eq i64 %n.vec302, 12
  br i1 %i.sw, label %middle.block315, label %vector.body303.3

vector.body303.3:                                 ; preds = %vector.body303.2
  %next.gep307.3 = getelementptr i8, ptr %i.l, i64 13
  %next.gep308.3 = getelementptr i8, ptr %i.qm, i64 13
  %next.gep309.3 = getelementptr i8, ptr %i.qj, i64 13
  %i.sx = getelementptr i8, ptr %i.l, i64 15
  %wide.load310.3 = load <2 x i8>, ptr %next.gep307.3, align 1, !tbaa !10, !noalias !317
  %wide.load311.3 = load <2 x i8>, ptr %i.sx, align 1, !tbaa !10, !noalias !317
  %i.sy = getelementptr i8, ptr %i.qm, i64 15
  %wide.load312.3 = load <2 x i8>, ptr %next.gep308.3, align 1, !tbaa !10, !noalias !317
  %wide.load313.3 = load <2 x i8>, ptr %i.sy, align 1, !tbaa !10, !noalias !317
  %i.sz = lshr <2 x i8> %wide.load312.3, splat (i8 1)
  %i.ta = lshr <2 x i8> %wide.load313.3, splat (i8 1)
  %i.tb = sub <2 x i8> %wide.load310.3, %i.sz     ; 3 uses
  %i.tc = sub <2 x i8> %wide.load311.3, %i.ta     ; 3 uses
  %i.td = getelementptr i8, ptr %i.qj, i64 15
  store <2 x i8> %i.tb, ptr %next.gep309.3, align 1, !tbaa !10, !noalias !317
  store <2 x i8> %i.tc, ptr %i.td, align 1, !tbaa !10, !noalias !317
  %i.te = zext <2 x i8> %i.tb to <2 x i32>        ; 2 uses
  %i.tf = zext <2 x i8> %i.tc to <2 x i32>        ; 2 uses
  %i.tg = sub nuw nsw <2 x i32> splat (i32 256), %i.te
  %i.th = sub nuw nsw <2 x i32> splat (i32 256), %i.tf
  %i.ti = icmp slt <2 x i8> %i.tb, zeroinitializer
  %i.tj = icmp slt <2 x i8> %i.tc, zeroinitializer
  %i.tk = select <2 x i1> %i.ti, <2 x i32> %i.tg, <2 x i32> %i.te
  %i.tl = select <2 x i1> %i.tj, <2 x i32> %i.th, <2 x i32> %i.tf
  %narrow741 = add nuw nsw <2 x i32> %narrow739, %i.tk ; 2 uses
  %i.tm = zext nneg <2 x i32> %narrow741 to <2 x i64>
  %narrow742 = add nuw nsw <2 x i32> %narrow740, %i.tl ; 2 uses
  %i.tn = zext nneg <2 x i32> %narrow742 to <2 x i64>
  %i.to = icmp eq i64 %n.vec302, 16
  br i1 %i.to, label %middle.block315, label %vector.body303.4

vector.body303.4:                                 ; preds = %vector.body303.3
  %next.gep307.4 = getelementptr i8, ptr %i.l, i64 17
  %next.gep308.4 = getelementptr i8, ptr %i.qm, i64 17
  %next.gep309.4 = getelementptr i8, ptr %i.qj, i64 17
  %i.tp = getelementptr i8, ptr %i.l, i64 19
  %wide.load310.4 = load <2 x i8>, ptr %next.gep307.4, align 1, !tbaa !10, !noalias !317
  %wide.load311.4 = load <2 x i8>, ptr %i.tp, align 1, !tbaa !10, !noalias !317
  %i.tq = getelementptr i8, ptr %i.qm, i64 19
  %wide.load312.4 = load <2 x i8>, ptr %next.gep308.4, align 1, !tbaa !10, !noalias !317
  %wide.load313.4 = load <2 x i8>, ptr %i.tq, align 1, !tbaa !10, !noalias !317
  %i.tr = lshr <2 x i8> %wide.load312.4, splat (i8 1)
  %i.ts = lshr <2 x i8> %wide.load313.4, splat (i8 1)
  %i.tt = sub <2 x i8> %wide.load310.4, %i.tr     ; 3 uses
  %i.tu = sub <2 x i8> %wide.load311.4, %i.ts     ; 3 uses
  %i.tv = getelementptr i8, ptr %i.qj, i64 19
  store <2 x i8> %i.tt, ptr %next.gep309.4, align 1, !tbaa !10, !noalias !317
  store <2 x i8> %i.tu, ptr %i.tv, align 1, !tbaa !10, !noalias !317
  %i.tw = zext <2 x i8> %i.tt to <2 x i32>        ; 2 uses
  %i.tx = zext <2 x i8> %i.tu to <2 x i32>        ; 2 uses
  %i.ty = sub nuw nsw <2 x i32> splat (i32 256), %i.tw
  %i.tz = sub nuw nsw <2 x i32> splat (i32 256), %i.tx
  %i.ua = icmp slt <2 x i8> %i.tt, zeroinitializer
  %i.ub = icmp slt <2 x i8> %i.tu, zeroinitializer
  %i.uc = select <2 x i1> %i.ua, <2 x i32> %i.ty, <2 x i32> %i.tw
  %i.ud = select <2 x i1> %i.ub, <2 x i32> %i.tz, <2 x i32> %i.tx
  %narrow743 = add nuw nsw <2 x i32> %narrow741, %i.uc ; 2 uses
  %i.ue = zext nneg <2 x i32> %narrow743 to <2 x i64>
  %narrow744 = add nuw nsw <2 x i32> %narrow742, %i.ud ; 2 uses
  %i.uf = zext nneg <2 x i32> %narrow744 to <2 x i64>
  %i.ug = icmp eq i64 %n.vec302, 20
  br i1 %i.ug, label %middle.block315, label %vector.body303.5

vector.body303.5:                                 ; preds = %vector.body303.4
  %next.gep307.5 = getelementptr i8, ptr %i.l, i64 21
  %next.gep308.5 = getelementptr i8, ptr %i.qm, i64 21
  %next.gep309.5 = getelementptr i8, ptr %i.qj, i64 21
  %i.uh = getelementptr i8, ptr %i.l, i64 23
  %wide.load310.5 = load <2 x i8>, ptr %next.gep307.5, align 1, !tbaa !10, !noalias !317
  %wide.load311.5 = load <2 x i8>, ptr %i.uh, align 1, !tbaa !10, !noalias !317
  %i.ui = getelementptr i8, ptr %i.qm, i64 23
  %wide.load312.5 = load <2 x i8>, ptr %next.gep308.5, align 1, !tbaa !10, !noalias !317
  %wide.load313.5 = load <2 x i8>, ptr %i.ui, align 1, !tbaa !10, !noalias !317
  %i.uj = lshr <2 x i8> %wide.load312.5, splat (i8 1)
  %i.uk = lshr <2 x i8> %wide.load313.5, splat (i8 1)
  %i.ul = sub <2 x i8> %wide.load310.5, %i.uj     ; 3 uses
  %i.um = sub <2 x i8> %wide.load311.5, %i.uk     ; 3 uses
  %i.un = getelementptr i8, ptr %i.qj, i64 23
  store <2 x i8> %i.ul, ptr %next.gep309.5, align 1, !tbaa !10, !noalias !317
  store <2 x i8> %i.um, ptr %i.un, align 1, !tbaa !10, !noalias !317
  %i.uo = zext <2 x i8> %i.ul to <2 x i32>        ; 2 uses
  %i.up = zext <2 x i8> %i.um to <2 x i32>        ; 2 uses
  %i.uq = sub nuw nsw <2 x i32> splat (i32 256), %i.uo
  %i.ur = sub nuw nsw <2 x i32> splat (i32 256), %i.up
  %i.us = icmp slt <2 x i8> %i.ul, zeroinitializer
  %i.ut = icmp slt <2 x i8> %i.um, zeroinitializer
  %i.uu = select <2 x i1> %i.us, <2 x i32> %i.uq, <2 x i32> %i.uo
  %i.uv = select <2 x i1> %i.ut, <2 x i32> %i.ur, <2 x i32> %i.up
  %narrow745 = add nuw nsw <2 x i32> %narrow743, %i.uu
  %i.uw = zext <2 x i32> %narrow745 to <2 x i64>  ; 2 uses
  %narrow746 = add nuw nsw <2 x i32> %narrow744, %i.uv
  %i.ux = zext <2 x i32> %narrow746 to <2 x i64>  ; 2 uses
  %i.uy = icmp eq i64 %n.vec302, 24
  br i1 %i.uy, label %middle.block315, label %vector.body303.6

vector.body303.6:                                 ; preds = %vector.body303.5
  %next.gep307.6 = getelementptr i8, ptr %i.l, i64 25
  %next.gep308.6 = getelementptr i8, ptr %i.qm, i64 25
  %next.gep309.6 = getelementptr i8, ptr %i.qj, i64 25
  %i.uz = getelementptr i8, ptr %i.l, i64 27
  %wide.load310.6 = load <2 x i8>, ptr %next.gep307.6, align 1, !tbaa !10, !noalias !317
  %wide.load311.6 = load <2 x i8>, ptr %i.uz, align 1, !tbaa !10, !noalias !317
  %i.va = getelementptr i8, ptr %i.qm, i64 27
  %wide.load312.6 = load <2 x i8>, ptr %next.gep308.6, align 1, !tbaa !10, !noalias !317
  %wide.load313.6 = load <2 x i8>, ptr %i.va, align 1, !tbaa !10, !noalias !317
  %i.vb = lshr <2 x i8> %wide.load312.6, splat (i8 1)
  %i.vc = lshr <2 x i8> %wide.load313.6, splat (i8 1)
  %i.vd = sub <2 x i8> %wide.load310.6, %i.vb     ; 3 uses
  %i.ve = sub <2 x i8> %wide.load311.6, %i.vc     ; 3 uses
  %i.vf = getelementptr i8, ptr %i.qj, i64 27
  store <2 x i8> %i.vd, ptr %next.gep309.6, align 1, !tbaa !10, !noalias !317
  store <2 x i8> %i.ve, ptr %i.vf, align 1, !tbaa !10, !noalias !317
  %i.vg = zext <2 x i8> %i.vd to <2 x i32>        ; 2 uses
  %i.vh = zext <2 x i8> %i.ve to <2 x i32>        ; 2 uses
  %i.vi = sub nuw nsw <2 x i32> splat (i32 256), %i.vg
  %i.vj = sub nuw nsw <2 x i32> splat (i32 256), %i.vh
  %i.vk = icmp slt <2 x i8> %i.vd, zeroinitializer
  %i.vl = icmp slt <2 x i8> %i.ve, zeroinitializer
  %i.vm = select <2 x i1> %i.vk, <2 x i32> %i.vi, <2 x i32> %i.vg
  %i.vn = select <2 x i1> %i.vl, <2 x i32> %i.vj, <2 x i32> %i.vh
  %i.vo = zext nneg <2 x i32> %i.vm to <2 x i64>
  %i.vp = zext nneg <2 x i32> %i.vn to <2 x i64>
  %i.vq = add nuw nsw <2 x i64> %i.uw, %i.vo      ; 2 uses
  %i.vr = add nuw nsw <2 x i64> %i.ux, %i.vp      ; 2 uses
  %i.vs = icmp eq i64 %n.vec302, 28
  br i1 %i.vs, label %middle.block315, label %vector.body303.7

vector.body303.7:                                 ; preds = %vector.body303.6
  %next.gep307.7 = getelementptr i8, ptr %i.l, i64 29
  %next.gep308.7 = getelementptr i8, ptr %i.qm, i64 29
  %next.gep309.7 = getelementptr i8, ptr %i.qj, i64 29
  %i.vt = getelementptr i8, ptr %i.l, i64 31
  %wide.load310.7 = load <2 x i8>, ptr %next.gep307.7, align 1, !tbaa !10, !noalias !317
  %wide.load311.7 = load <2 x i8>, ptr %i.vt, align 1, !tbaa !10, !noalias !317
  %i.vu = getelementptr i8, ptr %i.qm, i64 31
  %wide.load312.7 = load <2 x i8>, ptr %next.gep308.7, align 1, !tbaa !10, !noalias !317
  %wide.load313.7 = load <2 x i8>, ptr %i.vu, align 1, !tbaa !10, !noalias !317
  %i.vv = lshr <2 x i8> %wide.load312.7, splat (i8 1)
  %i.vw = lshr <2 x i8> %wide.load313.7, splat (i8 1)
  %i.vx = sub <2 x i8> %wide.load310.7, %i.vv     ; 3 uses
  %i.vy = sub <2 x i8> %wide.load311.7, %i.vw     ; 3 uses
  %i.vz = getelementptr i8, ptr %i.qj, i64 31
  store <2 x i8> %i.vx, ptr %next.gep309.7, align 1, !tbaa !10, !noalias !317
  store <2 x i8> %i.vy, ptr %i.vz, align 1, !tbaa !10, !noalias !317
  %i.wa = zext <2 x i8> %i.vx to <2 x i32>        ; 2 uses
  %i.wb = zext <2 x i8> %i.vy to <2 x i32>        ; 2 uses
  %i.wc = sub nuw nsw <2 x i32> splat (i32 256), %i.wa
  %i.wd = sub nuw nsw <2 x i32> splat (i32 256), %i.wb
  %i.we = icmp slt <2 x i8> %i.vx, zeroinitializer
  %i.wf = icmp slt <2 x i8> %i.vy, zeroinitializer
  %i.wg = select <2 x i1> %i.we, <2 x i32> %i.wc, <2 x i32> %i.wa
  %i.wh = select <2 x i1> %i.wf, <2 x i32> %i.wd, <2 x i32> %i.wb
  %i.wi = zext nneg <2 x i32> %i.wg to <2 x i64>
  %i.wj = zext nneg <2 x i32> %i.wh to <2 x i64>
  %i.wk = add nuw nsw <2 x i64> %i.vq, %i.wi
  %i.wl = add nuw nsw <2 x i64> %i.vr, %i.wj
  br label %middle.block315

middle.block315:                                  ; preds = %vector.body303.7, %vector.body303.6, %vector.body303.5, %vector.body303.4, %vector.body303.3, %vector.body303.2, %vector.body303.1, %vector.ph301
  %.lcssa699 = phi <2 x i64> [ %i.rk, %vector.ph301 ], [ %i.sc, %vector.body303.1 ], [ %i.su, %vector.body303.2 ], [ %i.tm, %vector.body303.3 ], [ %i.ue, %vector.body303.4 ], [ %i.uw, %vector.body303.5 ], [ %i.vq, %vector.body303.6 ], [ %i.wk, %vector.body303.7 ]
  %.lcssa698 = phi <2 x i64> [ %i.rl, %vector.ph301 ], [ %i.sd, %vector.body303.1 ], [ %i.sv, %vector.body303.2 ], [ %i.tn, %vector.body303.3 ], [ %i.uf, %vector.body303.4 ], [ %i.ux, %vector.body303.5 ], [ %i.vr, %vector.body303.6 ], [ %i.wl, %vector.body303.7 ]
  %bin.rdx316 = add <2 x i64> %.lcssa698, %.lcssa699
  %i.wm = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx316) ; 2 uses
  %cmp.n317 = icmp eq i64 %n.vec302, %i.qo
  br i1 %cmp.n317, label %.preheader.i164, label %.lr.ph.i159.preheader696

.lr.ph.i159.preheader696:                         ; preds = %vector.memcheck296, %.lr.ph.i159.preheader, %middle.block315
  %.03551.i.ph = phi ptr [ %.03546.i, %vector.memcheck296 ], [ %.03546.i, %.lr.ph.i159.preheader ], [ %i.qr, %middle.block315 ] ; 3 uses
  %.03150.i.ph = phi ptr [ %.03145.i, %vector.memcheck296 ], [ %.03145.i, %.lr.ph.i159.preheader ], [ %i.qs, %middle.block315 ] ; 3 uses
  %.03349.i.ph = phi ptr [ %.03344.i, %vector.memcheck296 ], [ %.03344.i, %.lr.ph.i159.preheader ], [ %i.qt, %middle.block315 ] ; 3 uses
  %.048.i.ph = phi i64 [ 0, %vector.memcheck296 ], [ 0, %.lr.ph.i159.preheader ], [ %i.wm, %middle.block315 ] ; 2 uses
  %.02847.i.ph = phi i32 [ 0, %vector.memcheck296 ], [ 0, %.lr.ph.i159.preheader ], [ %i.qu, %middle.block315 ] ; 4 uses
  %i.wn = sub nsw i32 %i.j, %.02847.i.ph
  %.neg = add nsw i32 %.02847.i.ph, 1
  %3 = trunc i32 %i.wn to i1
  br i1 %3, label %.lr.ph.i159.prol, label %.lr.ph.i159.prol.loopexit

.lr.ph.i159.prol:                                 ; preds = %.lr.ph.i159.preheader696
  %i.wo = load i8, ptr %.03551.i.ph, align 1, !tbaa !10, !noalias !317
  %i.wp = load i8, ptr %.03150.i.ph, align 1, !tbaa !10, !noalias !317
  %i.wq = lshr i8 %i.wp, 1
  %.narrow42.i.prol = sub i8 %i.wo, %i.wq         ; 3 uses
  store i8 %.narrow42.i.prol, ptr %.03349.i.ph, align 1, !tbaa !10, !noalias !317
  %i.wr = zext i8 %.narrow42.i.prol to i32        ; 2 uses
  %i.ws = sub nuw nsw i32 256, %i.wr
  %i.wt = icmp slt i8 %.narrow42.i.prol, 0
  %i.wu = select i1 %i.wt, i32 %i.ws, i32 %i.wr
  %i.wv = zext nneg i32 %i.wu to i64
  %i.ww = add i64 %.048.i.ph, %i.wv               ; 2 uses
  %i.wx = add nuw nsw i32 %.02847.i.ph, 1
  %.033.i160.prol = getelementptr inbounds nuw i8, ptr %.03349.i.ph, i64 1 ; 2 uses
  %.031.i161.prol = getelementptr inbounds nuw i8, ptr %.03150.i.ph, i64 1 ; 2 uses
  %.035.i162.prol = getelementptr inbounds nuw i8, ptr %.03551.i.ph, i64 1 ; 2 uses
  br label %.lr.ph.i159.prol.loopexit

.lr.ph.i159.prol.loopexit:                        ; preds = %.lr.ph.i159.prol, %.lr.ph.i159.preheader696
  %.lcssa697.unr = phi i64 [ poison, %.lr.ph.i159.preheader696 ], [ %i.ww, %.lr.ph.i159.prol ]
  %.033.i160.lcssa.unr = phi ptr [ poison, %.lr.ph.i159.preheader696 ], [ %.033.i160.prol, %.lr.ph.i159.prol ]
  %.031.i161.lcssa.unr = phi ptr [ poison, %.lr.ph.i159.preheader696 ], [ %.031.i161.prol, %.lr.ph.i159.prol ]
  %.035.i162.lcssa.unr = phi ptr [ poison, %.lr.ph.i159.preheader696 ], [ %.035.i162.prol, %.lr.ph.i159.prol ]
  %.03551.i.unr = phi ptr [ %.03551.i.ph, %.lr.ph.i159.preheader696 ], [ %.035.i162.prol, %.lr.ph.i159.prol ]
  %.03150.i.unr = phi ptr [ %.03150.i.ph, %.lr.ph.i159.preheader696 ], [ %.031.i161.prol, %.lr.ph.i159.prol ]
  %.03349.i.unr = phi ptr [ %.03349.i.ph, %.lr.ph.i159.preheader696 ], [ %.033.i160.prol, %.lr.ph.i159.prol ]
  %.048.i.unr = phi i64 [ %.048.i.ph, %.lr.ph.i159.preheader696 ], [ %i.ww, %.lr.ph.i159.prol ]
  %.02847.i.unr = phi i32 [ %.02847.i.ph, %.lr.ph.i159.preheader696 ], [ %i.wx, %.lr.ph.i159.prol ]
  %i.wy = icmp eq i32 %i.j, %.neg
  br i1 %i.wy, label %.preheader.i164, label %.lr.ph.i159

.preheader.i164:                                  ; preds = %.lr.ph.i159.prol.loopexit, %.lr.ph.i159, %middle.block315, %bb.q
  %.0.lcssa.i165 = phi i64 [ 0, %bb.q ], [ %i.wm, %middle.block315 ], [ %.lcssa697.unr, %.lr.ph.i159.prol.loopexit ], [ %i.xs, %.lr.ph.i159 ] ; 2 uses
  %.033.lcssa.i166 = phi ptr [ %.03344.i, %bb.q ], [ %i.qt, %middle.block315 ], [ %.033.i160.lcssa.unr, %.lr.ph.i159.prol.loopexit ], [ %.033.i160.1, %.lr.ph.i159 ]
  %.031.lcssa.i = phi ptr [ %.03145.i, %bb.q ], [ %i.qs, %middle.block315 ], [ %.031.i161.lcssa.unr, %.lr.ph.i159.prol.loopexit ], [ %.031.i161.1, %.lr.ph.i159 ]
  %.035.lcssa.i167 = phi ptr [ %.03546.i, %bb.q ], [ %i.qr, %middle.block315 ], [ %.035.i162.lcssa.unr, %.lr.ph.i159.prol.loopexit ], [ %.035.i162.1, %.lr.ph.i159 ]
  %i.wz = zext nneg i32 %i.j to i64
  %i.xa = icmp ugt i64 %i.e, %i.wz
  br i1 %i.xa, label %.lr.ph63.i, label %png_setup_avg_row.exit

.lr.ph.i159:                                      ; preds = %.lr.ph.i159.prol.loopexit, %.lr.ph.i159
  %.03551.i = phi ptr [ %.035.i162.1, %.lr.ph.i159 ], [ %.03551.i.unr, %.lr.ph.i159.prol.loopexit ] ; 3 uses
  %.03150.i = phi ptr [ %.031.i161.1, %.lr.ph.i159 ], [ %.03150.i.unr, %.lr.ph.i159.prol.loopexit ] ; 3 uses
  %.03349.i = phi ptr [ %.033.i160.1, %.lr.ph.i159 ], [ %.03349.i.unr, %.lr.ph.i159.prol.loopexit ] ; 3 uses
  %.048.i = phi i64 [ %i.xs, %.lr.ph.i159 ], [ %.048.i.unr, %.lr.ph.i159.prol.loopexit ]
  %.02847.i = phi i32 [ %i.xt, %.lr.ph.i159 ], [ %.02847.i.unr, %.lr.ph.i159.prol.loopexit ]
  %i.xb = load i8, ptr %.03551.i, align 1, !tbaa !10, !noalias !317
  %i.xc = load i8, ptr %.03150.i, align 1, !tbaa !10, !noalias !317
  %i.xd = lshr i8 %i.xc, 1
  %.narrow42.i = sub i8 %i.xb, %i.xd              ; 3 uses
  store i8 %.narrow42.i, ptr %.03349.i, align 1, !tbaa !10, !noalias !317
  %i.xe = zext i8 %.narrow42.i to i32             ; 2 uses
  %i.xf = sub nuw nsw i32 256, %i.xe
  %i.xg = icmp slt i8 %.narrow42.i, 0
  %i.xh = select i1 %i.xg, i32 %i.xf, i32 %i.xe
  %i.xi = zext nneg i32 %i.xh to i64
  %i.xj = add i64 %.048.i, %i.xi
  %.033.i160 = getelementptr inbounds nuw i8, ptr %.03349.i, i64 1
  %.031.i161 = getelementptr inbounds nuw i8, ptr %.03150.i, i64 1
  %.035.i162 = getelementptr inbounds nuw i8, ptr %.03551.i, i64 1
  %i.xk = load i8, ptr %.035.i162, align 1, !tbaa !10, !noalias !317
  %i.xl = load i8, ptr %.031.i161, align 1, !tbaa !10, !noalias !317
  %i.xm = lshr i8 %i.xl, 1
  %.narrow42.i.1 = sub i8 %i.xk, %i.xm            ; 3 uses
  store i8 %.narrow42.i.1, ptr %.033.i160, align 1, !tbaa !10, !noalias !317
  %i.xn = zext i8 %.narrow42.i.1 to i32           ; 2 uses
  %i.xo = sub nuw nsw i32 256, %i.xn
  %i.xp = icmp slt i8 %.narrow42.i.1, 0
  %i.xq = select i1 %i.xp, i32 %i.xo, i32 %i.xn
  %i.xr = zext nneg i32 %i.xq to i64
  %i.xs = add i64 %i.xj, %i.xr                    ; 2 uses
  %i.xt = add nuw nsw i32 %.02847.i, 2            ; 2 uses
  %.033.i160.1 = getelementptr inbounds nuw i8, ptr %.03349.i, i64 2 ; 2 uses
  %.031.i161.1 = getelementptr inbounds nuw i8, ptr %.03150.i, i64 2 ; 2 uses
  %.035.i162.1 = getelementptr inbounds nuw i8, ptr %.03551.i, i64 2 ; 2 uses
  %exitcond.not.i163.1 = icmp eq i32 %i.xt, %i.j
  br i1 %exitcond.not.i163.1, label %.preheader.i164, label %.lr.ph.i159, !llvm.loop !292

.lr.ph63.i:                                       ; preds = %.preheader.i164, %.lr.ph63.i
  %.03062.pn.i = phi ptr [ %.03062.i, %.lr.ph63.i ], [ %i.l, %.preheader.i164 ]
  %.161.i = phi i64 [ %i.yg, %.lr.ph63.i ], [ %.0.lcssa.i165, %.preheader.i164 ]
  %.12960.i = phi i32 [ %i.yl, %.lr.ph63.i ], [ %i.j, %.preheader.i164 ]
  %.13259.i = phi ptr [ %i.yj, %.lr.ph63.i ], [ %.031.lcssa.i, %.preheader.i164 ] ; 2 uses
  %.13458.i = phi ptr [ %i.yi, %.lr.ph63.i ], [ %.033.lcssa.i166, %.preheader.i164 ] ; 2 uses
  %.13657.i = phi ptr [ %i.yk, %.lr.ph63.i ], [ %.035.lcssa.i167, %.preheader.i164 ] ; 2 uses
  %.03062.i = getelementptr inbounds nuw i8, ptr %.03062.pn.i, i64 1 ; 2 uses
  %i.xu = load i8, ptr %.13657.i, align 1, !tbaa !10, !noalias !317
  %i.xv = load i8, ptr %.13259.i, align 1, !tbaa !10, !noalias !317
  %i.xw = zext i8 %i.xv to i16
  %i.xx = load i8, ptr %.03062.i, align 1, !tbaa !10, !noalias !317
  %i.xy = zext i8 %i.xx to i16
  %i.xz = add nuw nsw i16 %i.xy, %i.xw
  %i.ya = lshr i16 %i.xz, 1
  %.tr.i169 = trunc nuw i16 %i.ya to i8
  %.narrow.i170 = sub i8 %i.xu, %.tr.i169         ; 3 uses
  store i8 %.narrow.i170, ptr %.13458.i, align 1, !tbaa !10, !noalias !317
  %i.yb = zext i8 %.narrow.i170 to i32            ; 2 uses
  %i.yc = sub nuw nsw i32 256, %i.yb
  %i.yd = icmp slt i8 %.narrow.i170, 0
  %i.ye = select i1 %i.yd, i32 %i.yc, i32 %i.yb
  %i.yf = zext nneg i32 %i.ye to i64
  %i.yg = add i64 %.161.i, %i.yf                  ; 3 uses
  %i.yh = icmp ule i64 %i.yg, %.4
  %i.yi = getelementptr inbounds nuw i8, ptr %.13458.i, i64 1
  %i.yj = getelementptr inbounds nuw i8, ptr %.13259.i, i64 1
  %i.yk = getelementptr inbounds nuw i8, ptr %.13657.i, i64 1
  %i.yl = add i32 %.12960.i, 1                    ; 2 uses
  %i.ym = zext i32 %i.yl to i64
  %i.yn = icmp ugt i64 %i.e, %i.ym
  %or.cond.i171 = select i1 %i.yh, i1 %i.yn, i1 false
  br i1 %or.cond.i171, label %.lr.ph63.i, label %png_setup_avg_row.exit, !llvm.loop !293

png_setup_avg_row.exit:                           ; preds = %.lr.ph63.i, %.preheader.i164
  %.2.i168 = phi i64 [ %.0.lcssa.i165, %.preheader.i164 ], [ %i.yg, %.lr.ph63.i ] ; 3 uses
  %i.yo = icmp ult i64 %.2.i168, %.4
  br i1 %i.yo, label %bb.r, label %bb.t

bb.r:                                             ; preds = %png_setup_avg_row.exit
  %i.yp = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.yq = load ptr, ptr %i.yp, align 8, !tbaa !67 ; 2 uses
  %.not125 = icmp eq ptr %i.yq, null
  br i1 %.not125, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr %i.yq, ptr %i.qi, align 8, !tbaa !66
  store ptr %i.qj, ptr %i.yp, align 8, !tbaa !67
  br label %bb.t

bb.t:                                             ; preds = %png_setup_avg_row.exit, %bb.s, %bb.r, %.thread197
  %.5109 = phi ptr [ %.3107, %png_setup_avg_row.exit ], [ %.3107, %.thread197 ], [ %i.qj, %bb.s ], [ %i.qj, %bb.r ] ; 2 uses
  %.6 = phi i64 [ %.4, %png_setup_avg_row.exit ], [ %.4, %.thread197 ], [ %.2.i168, %bb.s ], [ %.2.i168, %bb.r ] ; 2 uses
  %i.yr = icmp eq i32 %.0111, 128
  br i1 %i.yr, label %bb.u, label %.thread214

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !318)
  %i.ys = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.yt = load ptr, ptr %i.ys, align 8, !tbaa !66, !alias.scope !318 ; 8 uses
  %i.yu = ptrtoaddr ptr %i.yt to i64              ; 2 uses
  store i8 4, ptr %i.yt, align 1, !tbaa !10, !noalias !318
  %i.yv = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.yw = load ptr, ptr %i.yv, align 8, !tbaa !68, !alias.scope !318 ; 9 uses
  %i.yx = ptrtoaddr ptr %i.yw to i64              ; 2 uses
  %i.yy = zext nneg i32 %i.j to i64               ; 13 uses
  %.04964.i = getelementptr inbounds nuw i8, ptr %i.yt, i64 1 ; 7 uses
  %.04765.i = getelementptr inbounds nuw i8, ptr %i.yw, i64 1 ; 7 uses
  %.05166.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 7 uses
  %.not81.i = icmp eq i32 %i.j, 0
  br i1 %.not81.i, label %.preheader.i174, label %iter.check

iter.check:                                       ; preds = %bb.u
  %min.iters.check356 = icmp ult i8 %i.g, 25
  br i1 %min.iters.check356, label %.lr.ph.i172.preheader, label %vector.memcheck351

vector.memcheck351:                               ; preds = %iter.check
  %i.yz = sub i64 %i.m, %i.yu
  %diff.check352 = icmp ugt i64 %i.yz, -16
  %i.za = sub i64 %i.yx, %i.yu
  %diff.check353 = icmp ugt i64 %i.za, -16
  %conflict.rdx354 = or i1 %diff.check352, %diff.check353
  br i1 %conflict.rdx354, label %.lr.ph.i172.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck351
  %min.iters.check357 = icmp ult i8 %i.g, 121
  br i1 %min.iters.check357, label %vec.epilog.ph, label %vector.ph358

vector.ph358:                                     ; preds = %vector.main.loop.iter.check
  %i.zb = and i64 %i.yy, 12
  %n.vec359 = and i64 %i.yy, 48                   ; 7 uses
  %i.zc = getelementptr i8, ptr %.05166.i, i64 %n.vec359 ; 2 uses
  %i.zd = getelementptr i8, ptr %.04765.i, i64 %n.vec359 ; 2 uses
  %i.ze = getelementptr i8, ptr %.04964.i, i64 %n.vec359 ; 2 uses
  %wide.load365 = load <16 x i8>, ptr %.05166.i, align 1, !tbaa !10, !noalias !318
  %wide.load366 = load <16 x i8>, ptr %.04765.i, align 1, !tbaa !10, !noalias !318
  %i.zf = sub <16 x i8> %wide.load365, %wide.load366
  store <16 x i8> %i.zf, ptr %.04964.i, align 1, !tbaa !10, !noalias !318
  %i.zg = icmp eq i64 %n.vec359, 16
  br i1 %i.zg, label %middle.block368, label %vector.body360.1

vector.body360.1:                                 ; preds = %vector.ph358
  %next.gep362.1 = getelementptr i8, ptr %i.l, i64 17
  %next.gep363.1 = getelementptr i8, ptr %i.yw, i64 17
  %next.gep364.1 = getelementptr i8, ptr %i.yt, i64 17
  %wide.load365.1 = load <16 x i8>, ptr %next.gep362.1, align 1, !tbaa !10, !noalias !318
  %wide.load366.1 = load <16 x i8>, ptr %next.gep363.1, align 1, !tbaa !10, !noalias !318
  %i.zh = sub <16 x i8> %wide.load365.1, %wide.load366.1
  store <16 x i8> %i.zh, ptr %next.gep364.1, align 1, !tbaa !10, !noalias !318
  br label %middle.block368

middle.block368:                                  ; preds = %vector.body360.1, %vector.ph358
  %cmp.n369 = icmp eq i64 %n.vec359, %i.yy
  br i1 %cmp.n369, label %.preheader.i174, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block368
  %min.epilog.iters.check = icmp eq i64 %i.zb, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i172.preheader, label %vec.epilog.ph, !prof !310

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec359, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
end_hunk_5
begin_hunk_6_@png_write_find_filter:bb.a

vector.ph401:                                     ; preds = %vector.main.loop.iter.check399
  %i.aaa = and i64 %i.zt, 12
  %n.vec402 = and i64 %i.zt, -16                  ; 9 uses
  %i.aab = add i64 %.0.lcssa.i175, %n.vec402
  %i.aac = getelementptr i8, ptr %i.l, i64 %n.vec402
  %i.aad = getelementptr i8, ptr %i.yw, i64 %n.vec402
  %i.aae = getelementptr i8, ptr %.047.lcssa.i, i64 %n.vec402
  %i.aaf = getelementptr i8, ptr %.049.lcssa.i, i64 %n.vec402
  %i.aag = getelementptr i8, ptr %.051.lcssa.i, i64 %n.vec402
  br label %vector.body403

vector.body403:                                   ; preds = %vector.body403, %vector.ph401
  %index404 = phi i64 [ 0, %vector.ph401 ], [ %index.next414, %vector.body403 ] ; 6 uses
  %next.gep405 = getelementptr i8, ptr %i.l, i64 %index404
  %next.gep406 = getelementptr i8, ptr %i.yw, i64 %index404
  %next.gep407 = getelementptr i8, ptr %.047.lcssa.i, i64 %index404
  %next.gep408 = getelementptr i8, ptr %.049.lcssa.i, i64 %index404
  %next.gep409 = getelementptr i8, ptr %.051.lcssa.i, i64 %index404
  %i.aah = getelementptr inbounds nuw i8, ptr %next.gep406, i64 1
  %i.aai = getelementptr inbounds nuw i8, ptr %next.gep405, i64 1
  %wide.load410 = load <16 x i8>, ptr %next.gep407, align 1, !tbaa !10, !noalias !318 ; 2 uses
  %i.aaj = zext <16 x i8> %wide.load410 to <16 x i32>
  %wide.load411 = load <16 x i8>, ptr %i.aah, align 1, !tbaa !10, !noalias !318 ; 2 uses
  %i.aak = zext <16 x i8> %wide.load411 to <16 x i32> ; 2 uses
  %wide.load412 = load <16 x i8>, ptr %i.aai, align 1, !tbaa !10, !noalias !318 ; 2 uses
  %i.aal = zext <16 x i8> %wide.load412 to <16 x i32>
  %i.aam = sub nsw <16 x i32> %i.aaj, %i.aak      ; 2 uses
  %i.aan = sub nsw <16 x i32> %i.aal, %i.aak      ; 2 uses
  %i.aao = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.aam, i1 true) ; 2 uses
  %i.aap = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.aan, i1 true) ; 2 uses
  %i.aaq = add nsw <16 x i32> %i.aan, %i.aam
  %i.aar = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.aaq, i1 true) ; 2 uses
  %i.aas = icmp samesign ugt <16 x i32> %i.aao, %i.aap
  %i.aat = icmp samesign ugt <16 x i32> %i.aao, %i.aar
  %i.aau = select <16 x i1> %i.aas, <16 x i1> splat (i1 true), <16 x i1> %i.aat
  %i.aav = icmp samesign ugt <16 x i32> %i.aap, %i.aar
  %i.aaw = select <16 x i1> %i.aav, <16 x i8> %wide.load411, <16 x i8> %wide.load410
  %i.aax = select <16 x i1> %i.aau, <16 x i8> %i.aaw, <16 x i8> %wide.load412
  %wide.load413 = load <16 x i8>, ptr %next.gep409, align 1, !tbaa !10, !noalias !318
  %i.aay = sub <16 x i8> %wide.load413, %i.aax
  store <16 x i8> %i.aay, ptr %next.gep408, align 1, !tbaa !10, !noalias !318
  %index.next414 = add nuw i64 %index404, 16      ; 2 uses
  %i.aaz = icmp eq i64 %index.next414, %n.vec402
  br i1 %i.aaz, label %middle.block415, label %vector.body403, !llvm.loop !298

middle.block415:                                  ; preds = %vector.body403
  %cmp.n416 = icmp eq i64 %i.zt, %n.vec402
  br i1 %cmp.n416, label %.thread214.thread, label %vec.epilog.iter.check426

vec.epilog.iter.check426:                         ; preds = %middle.block415
  %min.epilog.iters.check427 = icmp eq i64 %i.aaa, 0
  br i1 %min.epilog.iters.check427, label %.lr.ph80.i.preheader, label %vec.epilog.ph428, !prof !310

vec.epilog.ph428:                                 ; preds = %vector.main.loop.iter.check399, %vec.epilog.iter.check426
  %vec.epilog.resume.val417 = phi i64 [ %n.vec402, %vec.epilog.iter.check426 ], [ 0, %vector.main.loop.iter.check399 ]
  %n.vec429 = and i64 %i.zt, -4                   ; 8 uses
  %i.aba = add i64 %.0.lcssa.i175, %n.vec429
  %i.abb = getelementptr i8, ptr %i.l, i64 %n.vec429
  %i.abc = getelementptr i8, ptr %i.yw, i64 %n.vec429
  %i.abd = getelementptr i8, ptr %.047.lcssa.i, i64 %n.vec429
  %i.abe = getelementptr i8, ptr %.049.lcssa.i, i64 %n.vec429
  %i.abf = getelementptr i8, ptr %.051.lcssa.i, i64 %n.vec429
  br label %vec.epilog.vector.body430

vec.epilog.vector.body430:                        ; preds = %vec.epilog.vector.body430, %vec.epilog.ph428
  %index431 = phi i64 [ %vec.epilog.resume.val417, %vec.epilog.ph428 ], [ %index.next441, %vec.epilog.vector.body430 ] ; 6 uses
  %next.gep432 = getelementptr i8, ptr %i.l, i64 %index431
  %next.gep433 = getelementptr i8, ptr %i.yw, i64 %index431
  %next.gep434 = getelementptr i8, ptr %.047.lcssa.i, i64 %index431
  %next.gep435 = getelementptr i8, ptr %.049.lcssa.i, i64 %index431
  %next.gep436 = getelementptr i8, ptr %.051.lcssa.i, i64 %index431
  %i.abg = getelementptr inbounds nuw i8, ptr %next.gep433, i64 1
  %i.abh = getelementptr inbounds nuw i8, ptr %next.gep432, i64 1
  %wide.load437 = load <4 x i8>, ptr %next.gep434, align 1, !tbaa !10, !noalias !318 ; 2 uses
  %i.abi = zext <4 x i8> %wide.load437 to <4 x i32>
  %wide.load438 = load <4 x i8>, ptr %i.abg, align 1, !tbaa !10, !noalias !318 ; 2 uses
  %i.abj = zext <4 x i8> %wide.load438 to <4 x i32> ; 2 uses
  %wide.load439 = load <4 x i8>, ptr %i.abh, align 1, !tbaa !10, !noalias !318 ; 2 uses
  %i.abk = zext <4 x i8> %wide.load439 to <4 x i32>
  %i.abl = sub nsw <4 x i32> %i.abi, %i.abj       ; 2 uses
  %i.abm = sub nsw <4 x i32> %i.abk, %i.abj       ; 2 uses
  %i.abn = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.abl, i1 true) ; 2 uses
  %i.abo = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.abm, i1 true) ; 2 uses
  %i.abp = add nsw <4 x i32> %i.abm, %i.abl
  %i.abq = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.abp, i1 true) ; 2 uses
  %i.abr = icmp samesign ugt <4 x i32> %i.abn, %i.abo
  %i.abs = icmp samesign ugt <4 x i32> %i.abn, %i.abq
  %i.abt = select <4 x i1> %i.abr, <4 x i1> splat (i1 true), <4 x i1> %i.abs
  %i.abu = icmp samesign ugt <4 x i32> %i.abo, %i.abq
  %i.abv = select <4 x i1> %i.abu, <4 x i8> %wide.load438, <4 x i8> %wide.load437
  %i.abw = select <4 x i1> %i.abt, <4 x i8> %i.abv, <4 x i8> %wide.load439
  %wide.load440 = load <4 x i8>, ptr %next.gep436, align 1, !tbaa !10, !noalias !318
  %i.abx = sub <4 x i8> %wide.load440, %i.abw
  store <4 x i8> %i.abx, ptr %next.gep435, align 1, !tbaa !10, !noalias !318
  %index.next441 = add nuw i64 %index431, 4       ; 2 uses
  %i.aby = icmp eq i64 %index.next441, %n.vec429
  br i1 %i.aby, label %vec.epilog.middle.block442, label %vec.epilog.vector.body430, !llvm.loop !299

vec.epilog.middle.block442:                       ; preds = %vec.epilog.vector.body430
  %cmp.n443 = icmp eq i64 %i.zt, %n.vec429
  br i1 %cmp.n443, label %.thread214.thread, label %.lr.ph80.i.preheader

.lr.ph80.i.preheader:                             ; preds = %vector.memcheck386, %iter.check424, %vec.epilog.iter.check426, %vec.epilog.middle.block442
  %.179.i.ph = phi i64 [ %.0.lcssa.i175, %iter.check424 ], [ %.0.lcssa.i175, %vector.memcheck386 ], [ %i.aab, %vec.epilog.iter.check426 ], [ %i.aba, %vec.epilog.middle.block442 ]
  %.pn5678.i.ph = phi ptr [ %i.l, %iter.check424 ], [ %i.l, %vector.memcheck386 ], [ %i.aac, %vec.epilog.iter.check426 ], [ %i.abb, %vec.epilog.middle.block442 ]
  %.pn77.i.ph = phi ptr [ %i.yw, %iter.check424 ], [ %i.yw, %vector.memcheck386 ], [ %i.aad, %vec.epilog.iter.check426 ], [ %i.abc, %vec.epilog.middle.block442 ]
  %.14876.i.ph = phi ptr [ %.047.lcssa.i, %iter.check424 ], [ %.047.lcssa.i, %vector.memcheck386 ], [ %i.aae, %vec.epilog.iter.check426 ], [ %i.abd, %vec.epilog.middle.block442 ]
  %.15075.i.ph = phi ptr [ %.049.lcssa.i, %iter.check424 ], [ %.049.lcssa.i, %vector.memcheck386 ], [ %i.aaf, %vec.epilog.iter.check426 ], [ %i.abe, %vec.epilog.middle.block442 ]
  %.15274.i.ph = phi ptr [ %.051.lcssa.i, %iter.check424 ], [ %.051.lcssa.i, %vector.memcheck386 ], [ %i.aag, %vec.epilog.iter.check426 ], [ %i.abf, %vec.epilog.middle.block442 ]
  br label %.lr.ph80.i

.lr.ph.i172:                                      ; preds = %.lr.ph.i172.prol.loopexit, %.lr.ph.i172
  %.05170.i = phi ptr [ %.051.i.3, %.lr.ph.i172 ], [ %.05170.i.unr, %.lr.ph.i172.prol.loopexit ] ; 5 uses
  %.04769.i = phi ptr [ %.047.i.3, %.lr.ph.i172 ], [ %.04769.i.unr, %.lr.ph.i172.prol.loopexit ] ; 5 uses
  %.04968.i = phi ptr [ %.049.i.3, %.lr.ph.i172 ], [ %.04968.i.unr, %.lr.ph.i172.prol.loopexit ] ; 5 uses
  %.067.i = phi i64 [ %i.ach, %.lr.ph.i172 ], [ %.067.i.unr, %.lr.ph.i172.prol.loopexit ]
  %i.abz = load i8, ptr %.05170.i, align 1, !tbaa !10, !noalias !318
  %i.aca = load i8, ptr %.04769.i, align 1, !tbaa !10, !noalias !318
  %.narrow62.i = sub i8 %i.abz, %i.aca
  store i8 %.narrow62.i, ptr %.04968.i, align 1, !tbaa !10, !noalias !318
  %.049.i = getelementptr inbounds nuw i8, ptr %.04968.i, i64 1
  %.047.i = getelementptr inbounds nuw i8, ptr %.04769.i, i64 1
  %.051.i = getelementptr inbounds nuw i8, ptr %.05170.i, i64 1
  %i.acb = load i8, ptr %.051.i, align 1, !tbaa !10, !noalias !318
  %i.acc = load i8, ptr %.047.i, align 1, !tbaa !10, !noalias !318
  %.narrow62.i.1 = sub i8 %i.acb, %i.acc
  store i8 %.narrow62.i.1, ptr %.049.i, align 1, !tbaa !10, !noalias !318
  %.049.i.1 = getelementptr inbounds nuw i8, ptr %.04968.i, i64 2
  %.047.i.1 = getelementptr inbounds nuw i8, ptr %.04769.i, i64 2
  %.051.i.1 = getelementptr inbounds nuw i8, ptr %.05170.i, i64 2
  %i.acd = load i8, ptr %.051.i.1, align 1, !tbaa !10, !noalias !318
  %i.ace = load i8, ptr %.047.i.1, align 1, !tbaa !10, !noalias !318
  %.narrow62.i.2 = sub i8 %i.acd, %i.ace
  store i8 %.narrow62.i.2, ptr %.049.i.1, align 1, !tbaa !10, !noalias !318
  %.049.i.2 = getelementptr inbounds nuw i8, ptr %.04968.i, i64 3
  %.047.i.2 = getelementptr inbounds nuw i8, ptr %.04769.i, i64 3
  %.051.i.2 = getelementptr inbounds nuw i8, ptr %.05170.i, i64 3
  %i.acf = load i8, ptr %.051.i.2, align 1, !tbaa !10, !noalias !318
  %i.acg = load i8, ptr %.047.i.2, align 1, !tbaa !10, !noalias !318
  %.narrow62.i.3 = sub i8 %i.acf, %i.acg
  store i8 %.narrow62.i.3, ptr %.049.i.2, align 1, !tbaa !10, !noalias !318
  %i.ach = add nuw nsw i64 %.067.i, 4             ; 2 uses
  %.049.i.3 = getelementptr inbounds nuw i8, ptr %.04968.i, i64 4 ; 2 uses
  %.047.i.3 = getelementptr inbounds nuw i8, ptr %.04769.i, i64 4 ; 2 uses
  %.051.i.3 = getelementptr inbounds nuw i8, ptr %.05170.i, i64 4 ; 2 uses
  %exitcond.not.i173.3 = icmp eq i64 %i.ach, %i.yy
  br i1 %exitcond.not.i173.3, label %.preheader.i174, label %.lr.ph.i172, !llvm.loop !300

.lr.ph80.i:                                       ; preds = %.lr.ph80.i.preheader, %.lr.ph80.i
  %.179.i = phi i64 [ %i.acz, %.lr.ph80.i ], [ %.179.i.ph, %.lr.ph80.i.preheader ]
  %.pn5678.i = phi ptr [ %.045.i, %.lr.ph80.i ], [ %.pn5678.i.ph, %.lr.ph80.i.preheader ]
  %.pn77.i = phi ptr [ %.046.i, %.lr.ph80.i ], [ %.pn77.i.ph, %.lr.ph80.i.preheader ]
  %.14876.i = phi ptr [ %i.aci, %.lr.ph80.i ], [ %.14876.i.ph, %.lr.ph80.i.preheader ] ; 2 uses
  %.15075.i = phi ptr [ %i.acy, %.lr.ph80.i ], [ %.15075.i.ph, %.lr.ph80.i.preheader ] ; 2 uses
  %.15274.i = phi ptr [ %i.acw, %.lr.ph80.i ], [ %.15274.i.ph, %.lr.ph80.i.preheader ] ; 2 uses
  %.046.i = getelementptr inbounds nuw i8, ptr %.pn77.i, i64 1 ; 2 uses
  %.045.i = getelementptr inbounds nuw i8, ptr %.pn5678.i, i64 1 ; 2 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %.14876.i, i64 1
  %i.acj = load i8, ptr %.14876.i, align 1, !tbaa !10, !noalias !318 ; 2 uses
  %i.ack = zext i8 %i.acj to i32
  %i.acl = load i8, ptr %.046.i, align 1, !tbaa !10, !noalias !318 ; 2 uses
  %i.acm = zext i8 %i.acl to i32                  ; 2 uses
  %i.acn = load i8, ptr %.045.i, align 1, !tbaa !10, !noalias !318 ; 2 uses
  %i.aco = zext i8 %i.acn to i32
  %i.acp = sub nsw i32 %i.ack, %i.acm             ; 2 uses
  %i.acq = sub nsw i32 %i.aco, %i.acm             ; 2 uses
  %i.acr = tail call i32 @llvm.abs.i32(i32 %i.acp, i1 true) ; 2 uses
  %i.acs = tail call i32 @llvm.abs.i32(i32 %i.acq, i1 true) ; 2 uses
  %i.act = add nsw i32 %i.acq, %i.acp
  %i.acu = tail call i32 @llvm.abs.i32(i32 %i.act, i1 true) ; 2 uses
  %.not.i176 = icmp samesign ugt i32 %i.acr, %i.acs
  %.not57.i = icmp samesign ugt i32 %i.acr, %i.acu
  %or.cond.i177 = select i1 %.not.i176, i1 true, i1 %.not57.i
  %.not58.i = icmp samesign ugt i32 %i.acs, %i.acu
  %i.acv = select i1 %.not58.i, i8 %i.acl, i8 %i.acj
  %.tr.i178 = select i1 %or.cond.i177, i8 %i.acv, i8 %i.acn
  %i.acw = getelementptr inbounds nuw i8, ptr %.15274.i, i64 1
  %i.acx = load i8, ptr %.15274.i, align 1, !tbaa !10, !noalias !318
  %.narrow.i179 = sub i8 %i.acx, %.tr.i178
  %i.acy = getelementptr inbounds nuw i8, ptr %.15075.i, i64 1
  store i8 %.narrow.i179, ptr %.15075.i, align 1, !tbaa !10, !noalias !318
  %i.acz = add nuw i64 %.179.i, 1                 ; 2 uses
  %exitcond85.not.i = icmp eq i64 %i.acz, %i.e
  br i1 %exitcond85.not.i, label %.thread214.thread, label %.lr.ph80.i, !llvm.loop !301

.thread214:                                       ; preds = %bb.t
  %i.ada = and i32 %.0111, 128
  %.not126 = icmp eq i32 %i.ada, 0
  br i1 %.not126, label %.thread214.thread, label %bb.v

bb.v:                                             ; preds = %.thread214
  tail call void @llvm.experimental.noalias.scope.decl(metadata !319)
  %i.adb = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.adc = load ptr, ptr %i.adb, align 8, !tbaa !66, !alias.scope !319 ; 21 uses
  %i.add = ptrtoaddr ptr %i.adc to i64            ; 2 uses
  store i8 4, ptr %i.adc, align 1, !tbaa !10, !noalias !319
  %i.ade = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.adf = load ptr, ptr %i.ade, align 8, !tbaa !68, !alias.scope !319 ; 18 uses
  %i.adg = ptrtoaddr ptr %i.adf to i64
  %i.adh = zext nneg i32 %i.j to i64              ; 7 uses
  %.06479.i = getelementptr inbounds nuw i8, ptr %i.adc, i64 1 ; 5 uses
  %.06280.i = getelementptr inbounds nuw i8, ptr %i.adf, i64 1 ; 5 uses
  %.06681.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 5 uses
  %.not109.i = icmp eq i32 %i.j, 0
  br i1 %.not109.i, label %.preheader.i182, label %.lr.ph.i180.preheader

.lr.ph.i180.preheader:                            ; preds = %bb.v
  %min.iters.check328 = icmp ult i8 %i.g, 57
  br i1 %min.iters.check328, label %.lr.ph.i180.preheader691, label %vector.memcheck323

vector.memcheck323:                               ; preds = %.lr.ph.i180.preheader
  %i.adi = sub i64 %i.m, %i.add
  %diff.check324 = icmp ugt i64 %i.adi, -4
  %i.adj = sub i64 %i.adg, %i.add
  %diff.check325 = icmp ugt i64 %i.adj, -4
  %conflict.rdx326 = or i1 %diff.check324, %diff.check325
  br i1 %conflict.rdx326, label %.lr.ph.i180.preheader691, label %vector.ph329

vector.ph329:                                     ; preds = %vector.memcheck323
  %n.vec330 = and i64 %i.adh, 60                  ; 12 uses
  %i.adk = getelementptr i8, ptr %.06681.i, i64 %n.vec330 ; 2 uses
  %i.adl = getelementptr i8, ptr %.06280.i, i64 %n.vec330 ; 2 uses
  %i.adm = getelementptr i8, ptr %.06479.i, i64 %n.vec330 ; 2 uses
  %i.adn = getelementptr i8, ptr %i.l, i64 3
  %wide.load338 = load <2 x i8>, ptr %.06681.i, align 1, !tbaa !10, !noalias !319
  %wide.load339 = load <2 x i8>, ptr %i.adn, align 1, !tbaa !10, !noalias !319
  %i.ado = getelementptr i8, ptr %i.adf, i64 3
  %wide.load340 = load <2 x i8>, ptr %.06280.i, align 1, !tbaa !10, !noalias !319
  %wide.load341 = load <2 x i8>, ptr %i.ado, align 1, !tbaa !10, !noalias !319
  %i.adp = sub <2 x i8> %wide.load338, %wide.load340 ; 3 uses
  %i.adq = sub <2 x i8> %wide.load339, %wide.load341 ; 3 uses
  %i.adr = getelementptr i8, ptr %i.adc, i64 3
  store <2 x i8> %i.adp, ptr %.06479.i, align 1, !tbaa !10, !noalias !319
  store <2 x i8> %i.adq, ptr %i.adr, align 1, !tbaa !10, !noalias !319
  %i.ads = zext <2 x i8> %i.adp to <2 x i32>      ; 2 uses
  %i.adt = zext <2 x i8> %i.adq to <2 x i32>      ; 2 uses
  %i.adu = sub nuw nsw <2 x i32> splat (i32 256), %i.ads
  %i.adv = sub nuw nsw <2 x i32> splat (i32 256), %i.adt
  %i.adw = icmp slt <2 x i8> %i.adp, zeroinitializer
  %i.adx = icmp slt <2 x i8> %i.adq, zeroinitializer
  %i.ady = select <2 x i1> %i.adw, <2 x i32> %i.adu, <2 x i32> %i.ads ; 2 uses
  %i.adz = select <2 x i1> %i.adx, <2 x i32> %i.adv, <2 x i32> %i.adt ; 2 uses
  %i.aea = zext nneg <2 x i32> %i.ady to <2 x i64>
  %i.aeb = zext nneg <2 x i32> %i.adz to <2 x i64>
  %i.aec = icmp eq i64 %n.vec330, 4
  br i1 %i.aec, label %middle.block343, label %vector.body331.1

vector.body331.1:                                 ; preds = %vector.ph329
  %next.gep335.1 = getelementptr i8, ptr %i.l, i64 5
  %next.gep336.1 = getelementptr i8, ptr %i.adf, i64 5
  %next.gep337.1 = getelementptr i8, ptr %i.adc, i64 5
  %i.aed = getelementptr i8, ptr %i.l, i64 7
  %wide.load338.1 = load <2 x i8>, ptr %next.gep335.1, align 1, !tbaa !10, !noalias !319
  %wide.load339.1 = load <2 x i8>, ptr %i.aed, align 1, !tbaa !10, !noalias !319
  %i.aee = getelementptr i8, ptr %i.adf, i64 7
  %wide.load340.1 = load <2 x i8>, ptr %next.gep336.1, align 1, !tbaa !10, !noalias !319
  %wide.load341.1 = load <2 x i8>, ptr %i.aee, align 1, !tbaa !10, !noalias !319
  %i.aef = sub <2 x i8> %wide.load338.1, %wide.load340.1 ; 3 uses
  %i.aeg = sub <2 x i8> %wide.load339.1, %wide.load341.1 ; 3 uses
  %i.aeh = getelementptr i8, ptr %i.adc, i64 7
  store <2 x i8> %i.aef, ptr %next.gep337.1, align 1, !tbaa !10, !noalias !319
  store <2 x i8> %i.aeg, ptr %i.aeh, align 1, !tbaa !10, !noalias !319
  %i.aei = zext <2 x i8> %i.aef to <2 x i32>      ; 2 uses
  %i.aej = zext <2 x i8> %i.aeg to <2 x i32>      ; 2 uses
  %i.aek = sub nuw nsw <2 x i32> splat (i32 256), %i.aei
  %i.ael = sub nuw nsw <2 x i32> splat (i32 256), %i.aej
  %i.aem = icmp slt <2 x i8> %i.aef, zeroinitializer
  %i.aen = icmp slt <2 x i8> %i.aeg, zeroinitializer
  %i.aeo = select <2 x i1> %i.aem, <2 x i32> %i.aek, <2 x i32> %i.aei
  %i.aep = select <2 x i1> %i.aen, <2 x i32> %i.ael, <2 x i32> %i.aej
  %narrow747 = add nuw nsw <2 x i32> %i.ady, %i.aeo ; 2 uses
  %i.aeq = zext nneg <2 x i32> %narrow747 to <2 x i64>
  %narrow748 = add nuw nsw <2 x i32> %i.adz, %i.aep ; 2 uses
  %i.aer = zext nneg <2 x i32> %narrow748 to <2 x i64>
  %i.aes = icmp eq i64 %n.vec330, 8
  br i1 %i.aes, label %middle.block343, label %vector.body331.2

vector.body331.2:                                 ; preds = %vector.body331.1
  %next.gep335.2 = getelementptr i8, ptr %i.l, i64 9
  %next.gep336.2 = getelementptr i8, ptr %i.adf, i64 9
  %next.gep337.2 = getelementptr i8, ptr %i.adc, i64 9
  %i.aet = getelementptr i8, ptr %i.l, i64 11
  %wide.load338.2 = load <2 x i8>, ptr %next.gep335.2, align 1, !tbaa !10, !noalias !319
  %wide.load339.2 = load <2 x i8>, ptr %i.aet, align 1, !tbaa !10, !noalias !319
  %i.aeu = getelementptr i8, ptr %i.adf, i64 11
  %wide.load340.2 = load <2 x i8>, ptr %next.gep336.2, align 1, !tbaa !10, !noalias !319
  %wide.load341.2 = load <2 x i8>, ptr %i.aeu, align 1, !tbaa !10, !noalias !319
  %i.aev = sub <2 x i8> %wide.load338.2, %wide.load340.2 ; 3 uses
  %i.aew = sub <2 x i8> %wide.load339.2, %wide.load341.2 ; 3 uses
  %i.aex = getelementptr i8, ptr %i.adc, i64 11
  store <2 x i8> %i.aev, ptr %next.gep337.2, align 1, !tbaa !10, !noalias !319
  store <2 x i8> %i.aew, ptr %i.aex, align 1, !tbaa !10, !noalias !319
  %i.aey = zext <2 x i8> %i.aev to <2 x i32>      ; 2 uses
  %i.aez = zext <2 x i8> %i.aew to <2 x i32>      ; 2 uses
  %i.afa = sub nuw nsw <2 x i32> splat (i32 256), %i.aey
  %i.afb = sub nuw nsw <2 x i32> splat (i32 256), %i.aez
  %i.afc = icmp slt <2 x i8> %i.aev, zeroinitializer
  %i.afd = icmp slt <2 x i8> %i.aew, zeroinitializer
  %i.afe = select <2 x i1> %i.afc, <2 x i32> %i.afa, <2 x i32> %i.aey
  %i.aff = select <2 x i1> %i.afd, <2 x i32> %i.afb, <2 x i32> %i.aez
  %narrow749 = add nuw nsw <2 x i32> %narrow747, %i.afe ; 2 uses
  %i.afg = zext nneg <2 x i32> %narrow749 to <2 x i64>
  %narrow750 = add nuw nsw <2 x i32> %narrow748, %i.aff ; 2 uses
  %i.afh = zext nneg <2 x i32> %narrow750 to <2 x i64>
  %i.afi = icmp eq i64 %n.vec330, 12
  br i1 %i.afi, label %middle.block343, label %vector.body331.3

vector.body331.3:                                 ; preds = %vector.body331.2
  %next.gep335.3 = getelementptr i8, ptr %i.l, i64 13
  %next.gep336.3 = getelementptr i8, ptr %i.adf, i64 13
  %next.gep337.3 = getelementptr i8, ptr %i.adc, i64 13
  %i.afj = getelementptr i8, ptr %i.l, i64 15
  %wide.load338.3 = load <2 x i8>, ptr %next.gep335.3, align 1, !tbaa !10, !noalias !319
  %wide.load339.3 = load <2 x i8>, ptr %i.afj, align 1, !tbaa !10, !noalias !319
  %i.afk = getelementptr i8, ptr %i.adf, i64 15
  %wide.load340.3 = load <2 x i8>, ptr %next.gep336.3, align 1, !tbaa !10, !noalias !319
  %wide.load341.3 = load <2 x i8>, ptr %i.afk, align 1, !tbaa !10, !noalias !319
  %i.afl = sub <2 x i8> %wide.load338.3, %wide.load340.3 ; 3 uses
  %i.afm = sub <2 x i8> %wide.load339.3, %wide.load341.3 ; 3 uses
  %i.afn = getelementptr i8, ptr %i.adc, i64 15
  store <2 x i8> %i.afl, ptr %next.gep337.3, align 1, !tbaa !10, !noalias !319
  store <2 x i8> %i.afm, ptr %i.afn, align 1, !tbaa !10, !noalias !319
  %i.afo = zext <2 x i8> %i.afl to <2 x i32>      ; 2 uses
  %i.afp = zext <2 x i8> %i.afm to <2 x i32>      ; 2 uses
  %i.afq = sub nuw nsw <2 x i32> splat (i32 256), %i.afo
  %i.afr = sub nuw nsw <2 x i32> splat (i32 256), %i.afp
  %i.afs = icmp slt <2 x i8> %i.afl, zeroinitializer
  %i.aft = icmp slt <2 x i8> %i.afm, zeroinitializer
  %i.afu = select <2 x i1> %i.afs, <2 x i32> %i.afq, <2 x i32> %i.afo
  %i.afv = select <2 x i1> %i.aft, <2 x i32> %i.afr, <2 x i32> %i.afp
  %narrow751 = add nuw nsw <2 x i32> %narrow749, %i.afu ; 2 uses
  %i.afw = zext nneg <2 x i32> %narrow751 to <2 x i64>
  %narrow752 = add nuw nsw <2 x i32> %narrow750, %i.afv ; 2 uses
  %i.afx = zext nneg <2 x i32> %narrow752 to <2 x i64>
  %i.afy = icmp eq i64 %n.vec330, 16
  br i1 %i.afy, label %middle.block343, label %vector.body331.4

vector.body331.4:                                 ; preds = %vector.body331.3
  %next.gep335.4 = getelementptr i8, ptr %i.l, i64 17
  %next.gep336.4 = getelementptr i8, ptr %i.adf, i64 17
  %next.gep337.4 = getelementptr i8, ptr %i.adc, i64 17
  %i.afz = getelementptr i8, ptr %i.l, i64 19
  %wide.load338.4 = load <2 x i8>, ptr %next.gep335.4, align 1, !tbaa !10, !noalias !319
  %wide.load339.4 = load <2 x i8>, ptr %i.afz, align 1, !tbaa !10, !noalias !319
  %i.aga = getelementptr i8, ptr %i.adf, i64 19
  %wide.load340.4 = load <2 x i8>, ptr %next.gep336.4, align 1, !tbaa !10, !noalias !319
  %wide.load341.4 = load <2 x i8>, ptr %i.aga, align 1, !tbaa !10, !noalias !319
  %i.agb = sub <2 x i8> %wide.load338.4, %wide.load340.4 ; 3 uses
  %i.agc = sub <2 x i8> %wide.load339.4, %wide.load341.4 ; 3 uses
  %i.agd = getelementptr i8, ptr %i.adc, i64 19
  store <2 x i8> %i.agb, ptr %next.gep337.4, align 1, !tbaa !10, !noalias !319
  store <2 x i8> %i.agc, ptr %i.agd, align 1, !tbaa !10, !noalias !319
  %i.age = zext <2 x i8> %i.agb to <2 x i32>      ; 2 uses
  %i.agf = zext <2 x i8> %i.agc to <2 x i32>      ; 2 uses
  %i.agg = sub nuw nsw <2 x i32> splat (i32 256), %i.age
  %i.agh = sub nuw nsw <2 x i32> splat (i32 256), %i.agf
  %i.agi = icmp slt <2 x i8> %i.agb, zeroinitializer
  %i.agj = icmp slt <2 x i8> %i.agc, zeroinitializer
  %i.agk = select <2 x i1> %i.agi, <2 x i32> %i.agg, <2 x i32> %i.age
  %i.agl = select <2 x i1> %i.agj, <2 x i32> %i.agh, <2 x i32> %i.agf
  %narrow753 = add nuw nsw <2 x i32> %narrow751, %i.agk ; 2 uses
  %i.agm = zext nneg <2 x i32> %narrow753 to <2 x i64>
  %narrow754 = add nuw nsw <2 x i32> %narrow752, %i.agl ; 2 uses
  %i.agn = zext nneg <2 x i32> %narrow754 to <2 x i64>
  %i.ago = icmp eq i64 %n.vec330, 20
  br i1 %i.ago, label %middle.block343, label %vector.body331.5

vector.body331.5:                                 ; preds = %vector.body331.4
  %next.gep335.5 = getelementptr i8, ptr %i.l, i64 21
  %next.gep336.5 = getelementptr i8, ptr %i.adf, i64 21
  %next.gep337.5 = getelementptr i8, ptr %i.adc, i64 21
  %i.agp = getelementptr i8, ptr %i.l, i64 23
  %wide.load338.5 = load <2 x i8>, ptr %next.gep335.5, align 1, !tbaa !10, !noalias !319
  %wide.load339.5 = load <2 x i8>, ptr %i.agp, align 1, !tbaa !10, !noalias !319
  %i.agq = getelementptr i8, ptr %i.adf, i64 23
  %wide.load340.5 = load <2 x i8>, ptr %next.gep336.5, align 1, !tbaa !10, !noalias !319
  %wide.load341.5 = load <2 x i8>, ptr %i.agq, align 1, !tbaa !10, !noalias !319
  %i.agr = sub <2 x i8> %wide.load338.5, %wide.load340.5 ; 3 uses
  %i.ags = sub <2 x i8> %wide.load339.5, %wide.load341.5 ; 3 uses
  %i.agt = getelementptr i8, ptr %i.adc, i64 23
  store <2 x i8> %i.agr, ptr %next.gep337.5, align 1, !tbaa !10, !noalias !319
  store <2 x i8> %i.ags, ptr %i.agt, align 1, !tbaa !10, !noalias !319
  %i.agu = zext <2 x i8> %i.agr to <2 x i32>      ; 2 uses
  %i.agv = zext <2 x i8> %i.ags to <2 x i32>      ; 2 uses
  %i.agw = sub nuw nsw <2 x i32> splat (i32 256), %i.agu
  %i.agx = sub nuw nsw <2 x i32> splat (i32 256), %i.agv
  %i.agy = icmp slt <2 x i8> %i.agr, zeroinitializer
  %i.agz = icmp slt <2 x i8> %i.ags, zeroinitializer
  %i.aha = select <2 x i1> %i.agy, <2 x i32> %i.agw, <2 x i32> %i.agu
  %i.ahb = select <2 x i1> %i.agz, <2 x i32> %i.agx, <2 x i32> %i.agv
  %narrow755 = add nuw nsw <2 x i32> %narrow753, %i.aha
  %i.ahc = zext <2 x i32> %narrow755 to <2 x i64> ; 2 uses
  %narrow756 = add nuw nsw <2 x i32> %narrow754, %i.ahb
  %i.ahd = zext <2 x i32> %narrow756 to <2 x i64> ; 2 uses
  %i.ahe = icmp eq i64 %n.vec330, 24
  br i1 %i.ahe, label %middle.block343, label %vector.body331.6

vector.body331.6:                                 ; preds = %vector.body331.5
  %next.gep335.6 = getelementptr i8, ptr %i.l, i64 25
  %next.gep336.6 = getelementptr i8, ptr %i.adf, i64 25
  %next.gep337.6 = getelementptr i8, ptr %i.adc, i64 25
  %i.ahf = getelementptr i8, ptr %i.l, i64 27
  %wide.load338.6 = load <2 x i8>, ptr %next.gep335.6, align 1, !tbaa !10, !noalias !319
  %wide.load339.6 = load <2 x i8>, ptr %i.ahf, align 1, !tbaa !10, !noalias !319
  %i.ahg = getelementptr i8, ptr %i.adf, i64 27
  %wide.load340.6 = load <2 x i8>, ptr %next.gep336.6, align 1, !tbaa !10, !noalias !319
  %wide.load341.6 = load <2 x i8>, ptr %i.ahg, align 1, !tbaa !10, !noalias !319
  %i.ahh = sub <2 x i8> %wide.load338.6, %wide.load340.6 ; 3 uses
  %i.ahi = sub <2 x i8> %wide.load339.6, %wide.load341.6 ; 3 uses
  %i.ahj = getelementptr i8, ptr %i.adc, i64 27
  store <2 x i8> %i.ahh, ptr %next.gep337.6, align 1, !tbaa !10, !noalias !319
  store <2 x i8> %i.ahi, ptr %i.ahj, align 1, !tbaa !10, !noalias !319
  %i.ahk = zext <2 x i8> %i.ahh to <2 x i32>      ; 2 uses
  %i.ahl = zext <2 x i8> %i.ahi to <2 x i32>      ; 2 uses
  %i.ahm = sub nuw nsw <2 x i32> splat (i32 256), %i.ahk
  %i.ahn = sub nuw nsw <2 x i32> splat (i32 256), %i.ahl
  %i.aho = icmp slt <2 x i8> %i.ahh, zeroinitializer
  %i.ahp = icmp slt <2 x i8> %i.ahi, zeroinitializer
  %i.ahq = select <2 x i1> %i.aho, <2 x i32> %i.ahm, <2 x i32> %i.ahk
  %i.ahr = select <2 x i1> %i.ahp, <2 x i32> %i.ahn, <2 x i32> %i.ahl
  %i.ahs = zext nneg <2 x i32> %i.ahq to <2 x i64>
  %i.aht = zext nneg <2 x i32> %i.ahr to <2 x i64>
  %i.ahu = add nuw nsw <2 x i64> %i.ahc, %i.ahs   ; 2 uses
  %i.ahv = add nuw nsw <2 x i64> %i.ahd, %i.aht   ; 2 uses
  %i.ahw = icmp eq i64 %n.vec330, 28
  br i1 %i.ahw, label %middle.block343, label %vector.body331.7

vector.body331.7:                                 ; preds = %vector.body331.6
  %next.gep335.7 = getelementptr i8, ptr %i.l, i64 29
  %next.gep336.7 = getelementptr i8, ptr %i.adf, i64 29
  %next.gep337.7 = getelementptr i8, ptr %i.adc, i64 29
  %i.ahx = getelementptr i8, ptr %i.l, i64 31
  %wide.load338.7 = load <2 x i8>, ptr %next.gep335.7, align 1, !tbaa !10, !noalias !319
  %wide.load339.7 = load <2 x i8>, ptr %i.ahx, align 1, !tbaa !10, !noalias !319
  %i.ahy = getelementptr i8, ptr %i.adf, i64 31
  %wide.load340.7 = load <2 x i8>, ptr %next.gep336.7, align 1, !tbaa !10, !noalias !319
  %wide.load341.7 = load <2 x i8>, ptr %i.ahy, align 1, !tbaa !10, !noalias !319
  %i.ahz = sub <2 x i8> %wide.load338.7, %wide.load340.7 ; 3 uses
  %i.aia = sub <2 x i8> %wide.load339.7, %wide.load341.7 ; 3 uses
  %i.aib = getelementptr i8, ptr %i.adc, i64 31
  store <2 x i8> %i.ahz, ptr %next.gep337.7, align 1, !tbaa !10, !noalias !319
  store <2 x i8> %i.aia, ptr %i.aib, align 1, !tbaa !10, !noalias !319
  %i.aic = zext <2 x i8> %i.ahz to <2 x i32>      ; 2 uses
  %i.aid = zext <2 x i8> %i.aia to <2 x i32>      ; 2 uses
  %i.aie = sub nuw nsw <2 x i32> splat (i32 256), %i.aic
  %i.aif = sub nuw nsw <2 x i32> splat (i32 256), %i.aid
  %i.aig = icmp slt <2 x i8> %i.ahz, zeroinitializer
  %i.aih = icmp slt <2 x i8> %i.aia, zeroinitializer
  %i.aii = select <2 x i1> %i.aig, <2 x i32> %i.aie, <2 x i32> %i.aic
  %i.aij = select <2 x i1> %i.aih, <2 x i32> %i.aif, <2 x i32> %i.aid
  %i.aik = zext nneg <2 x i32> %i.aii to <2 x i64>
  %i.ail = zext nneg <2 x i32> %i.aij to <2 x i64>
  %i.aim = add nuw nsw <2 x i64> %i.ahu, %i.aik
  %i.ain = add nuw nsw <2 x i64> %i.ahv, %i.ail
  br label %middle.block343

middle.block343:                                  ; preds = %vector.body331.7, %vector.body331.6, %vector.body331.5, %vector.body331.4, %vector.body331.3, %vector.body331.2, %vector.body331.1, %vector.ph329
  %.lcssa694 = phi <2 x i64> [ %i.aea, %vector.ph329 ], [ %i.aeq, %vector.body331.1 ], [ %i.afg, %vector.body331.2 ], [ %i.afw, %vector.body331.3 ], [ %i.agm, %vector.body331.4 ], [ %i.ahc, %vector.body331.5 ], [ %i.ahu, %vector.body331.6 ], [ %i.aim, %vector.body331.7 ]
  %.lcssa693 = phi <2 x i64> [ %i.aeb, %vector.ph329 ], [ %i.aer, %vector.body331.1 ], [ %i.afh, %vector.body331.2 ], [ %i.afx, %vector.body331.3 ], [ %i.agn, %vector.body331.4 ], [ %i.ahd, %vector.body331.5 ], [ %i.ahv, %vector.body331.6 ], [ %i.ain, %vector.body331.7 ]
  %bin.rdx344 = add <2 x i64> %.lcssa693, %.lcssa694
  %i.aio = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx344) ; 2 uses
  %cmp.n345 = icmp eq i64 %n.vec330, %i.adh
  br i1 %cmp.n345, label %.preheader.i182, label %.lr.ph.i180.preheader691

.lr.ph.i180.preheader691:                         ; preds = %vector.memcheck323, %.lr.ph.i180.preheader, %middle.block343
  %.06686.i.ph = phi ptr [ %.06681.i, %vector.memcheck323 ], [ %.06681.i, %.lr.ph.i180.preheader ], [ %i.adk, %middle.block343 ] ; 3 uses
  %.06285.i.ph = phi ptr [ %.06280.i, %vector.memcheck323 ], [ %.06280.i, %.lr.ph.i180.preheader ], [ %i.adl, %middle.block343 ] ; 3 uses
  %.06484.i.ph = phi ptr [ %.06479.i, %vector.memcheck323 ], [ %.06479.i, %.lr.ph.i180.preheader ], [ %i.adm, %middle.block343 ] ; 3 uses
  %.05783.i.ph = phi i64 [ 0, %vector.memcheck323 ], [ 0, %.lr.ph.i180.preheader ], [ %i.aio, %middle.block343 ] ; 2 uses
  %.05882.i.ph = phi i64 [ 0, %vector.memcheck323 ], [ 0, %.lr.ph.i180.preheader ], [ %n.vec330, %middle.block343 ] ; 3 uses
  %4 = trunc i32 %i.j to i1
  br i1 %4, label %.lr.ph.i180.prol, label %.lr.ph.i180.prol.loopexit

.lr.ph.i180.prol:                                 ; preds = %.lr.ph.i180.preheader691
  %i.aip = load i8, ptr %.06686.i.ph, align 1, !tbaa !10, !noalias !319
  %i.aiq = load i8, ptr %.06285.i.ph, align 1, !tbaa !10, !noalias !319
  %.narrow77.i.prol = sub i8 %i.aip, %i.aiq       ; 3 uses
  store i8 %.narrow77.i.prol, ptr %.06484.i.ph, align 1, !tbaa !10, !noalias !319
  %i.air = zext i8 %.narrow77.i.prol to i32       ; 2 uses
  %i.ais = sub nuw nsw i32 256, %i.air
  %i.ait = icmp slt i8 %.narrow77.i.prol, 0
  %i.aiu = select i1 %i.ait, i32 %i.ais, i32 %i.air
  %i.aiv = zext nneg i32 %i.aiu to i64
  %i.aiw = add i64 %.05783.i.ph, %i.aiv           ; 2 uses
  %i.aix = or disjoint i64 %.05882.i.ph, 1
  %.064.i.prol = getelementptr inbounds nuw i8, ptr %.06484.i.ph, i64 1 ; 2 uses
  %.062.i.prol = getelementptr inbounds nuw i8, ptr %.06285.i.ph, i64 1 ; 2 uses
  %.066.i.prol = getelementptr inbounds nuw i8, ptr %.06686.i.ph, i64 1 ; 2 uses
  br label %.lr.ph.i180.prol.loopexit

.lr.ph.i180.prol.loopexit:                        ; preds = %.lr.ph.i180.prol, %.lr.ph.i180.preheader691
  %.lcssa692.unr = phi i64 [ poison, %.lr.ph.i180.preheader691 ], [ %i.aiw, %.lr.ph.i180.prol ]
  %.064.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i180.preheader691 ], [ %.064.i.prol, %.lr.ph.i180.prol ]
  %.062.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i180.preheader691 ], [ %.062.i.prol, %.lr.ph.i180.prol ]
  %.066.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i180.preheader691 ], [ %.066.i.prol, %.lr.ph.i180.prol ]
  %.06686.i.unr = phi ptr [ %.06686.i.ph, %.lr.ph.i180.preheader691 ], [ %.066.i.prol, %.lr.ph.i180.prol ]
  %.06285.i.unr = phi ptr [ %.06285.i.ph, %.lr.ph.i180.preheader691 ], [ %.062.i.prol, %.lr.ph.i180.prol ]
  %.06484.i.unr = phi ptr [ %.06484.i.ph, %.lr.ph.i180.preheader691 ], [ %.064.i.prol, %.lr.ph.i180.prol ]
  %.05783.i.unr = phi i64 [ %.05783.i.ph, %.lr.ph.i180.preheader691 ], [ %i.aiw, %.lr.ph.i180.prol ]
  %.05882.i.unr = phi i64 [ %.05882.i.ph, %.lr.ph.i180.preheader691 ], [ %i.aix, %.lr.ph.i180.prol ]
  %i.aiy = add nsw i64 %i.adh, -1
  %i.aiz = icmp eq i64 %.05882.i.ph, %i.aiy
  br i1 %i.aiz, label %.preheader.i182, label %.lr.ph.i180

.preheader.i182:                                  ; preds = %.lr.ph.i180.prol.loopexit, %.lr.ph.i180, %middle.block343, %bb.v
  %.058.lcssa.i = phi i64 [ 0, %bb.v ], [ %i.adh, %middle.block343 ], [ %i.adh, %.lr.ph.i180 ], [ %i.adh, %.lr.ph.i180.prol.loopexit ] ; 2 uses
  %.057.lcssa.i = phi i64 [ 0, %bb.v ], [ %i.aio, %middle.block343 ], [ %.lcssa692.unr, %.lr.ph.i180.prol.loopexit ], [ %i.ajq, %.lr.ph.i180 ] ; 2 uses
  %.064.lcssa.i = phi ptr [ %.06479.i, %bb.v ], [ %i.adm, %middle.block343 ], [ %.064.i.lcssa.unr, %.lr.ph.i180.prol.loopexit ], [ %.064.i.1, %.lr.ph.i180 ]
  %.062.lcssa.i = phi ptr [ %.06280.i, %bb.v ], [ %i.adl, %middle.block343 ], [ %.062.i.lcssa.unr, %.lr.ph.i180.prol.loopexit ], [ %.062.i.1, %.lr.ph.i180 ]
  %.066.lcssa.i = phi ptr [ %.06681.i, %bb.v ], [ %i.adk, %middle.block343 ], [ %.066.i.lcssa.unr, %.lr.ph.i180.prol.loopexit ], [ %.066.i.1, %.lr.ph.i180 ]
  %i.aja = icmp ult i64 %.058.lcssa.i, %i.e
  br i1 %i.aja, label %.lr.ph100.i, label %png_setup_paeth_row.exit

.lr.ph.i180:                                      ; preds = %.lr.ph.i180.prol.loopexit, %.lr.ph.i180
  %.06686.i = phi ptr [ %.066.i.1, %.lr.ph.i180 ], [ %.06686.i.unr, %.lr.ph.i180.prol.loopexit ] ; 3 uses
  %.06285.i = phi ptr [ %.062.i.1, %.lr.ph.i180 ], [ %.06285.i.unr, %.lr.ph.i180.prol.loopexit ] ; 3 uses
  %.06484.i = phi ptr [ %.064.i.1, %.lr.ph.i180 ], [ %.06484.i.unr, %.lr.ph.i180.prol.loopexit ] ; 3 uses
  %.05783.i = phi i64 [ %i.ajq, %.lr.ph.i180 ], [ %.05783.i.unr, %.lr.ph.i180.prol.loopexit ]
  %.05882.i = phi i64 [ %i.ajr, %.lr.ph.i180 ], [ %.05882.i.unr, %.lr.ph.i180.prol.loopexit ]
  %i.ajb = load i8, ptr %.06686.i, align 1, !tbaa !10, !noalias !319
  %i.ajc = load i8, ptr %.06285.i, align 1, !tbaa !10, !noalias !319
  %.narrow77.i = sub i8 %i.ajb, %i.ajc            ; 3 uses
  store i8 %.narrow77.i, ptr %.06484.i, align 1, !tbaa !10, !noalias !319
  %i.ajd = zext i8 %.narrow77.i to i32            ; 2 uses
  %i.aje = sub nuw nsw i32 256, %i.ajd
  %i.ajf = icmp slt i8 %.narrow77.i, 0
  %i.ajg = select i1 %i.ajf, i32 %i.aje, i32 %i.ajd
  %i.ajh = zext nneg i32 %i.ajg to i64
  %i.aji = add i64 %.05783.i, %i.ajh
  %.064.i = getelementptr inbounds nuw i8, ptr %.06484.i, i64 1
  %.062.i = getelementptr inbounds nuw i8, ptr %.06285.i, i64 1
  %.066.i = getelementptr inbounds nuw i8, ptr %.06686.i, i64 1
  %i.ajj = load i8, ptr %.066.i, align 1, !tbaa !10, !noalias !319
  %i.ajk = load i8, ptr %.062.i, align 1, !tbaa !10, !noalias !319
  %.narrow77.i.1 = sub i8 %i.ajj, %i.ajk          ; 3 uses
  store i8 %.narrow77.i.1, ptr %.064.i, align 1, !tbaa !10, !noalias !319
  %i.ajl = zext i8 %.narrow77.i.1 to i32          ; 2 uses
  %i.ajm = sub nuw nsw i32 256, %i.ajl
  %i.ajn = icmp slt i8 %.narrow77.i.1, 0
  %i.ajo = select i1 %i.ajn, i32 %i.ajm, i32 %i.ajl
  %i.ajp = zext nneg i32 %i.ajo to i64
  %i.ajq = add i64 %i.aji, %i.ajp                 ; 2 uses
  %i.ajr = add nuw nsw i64 %.05882.i, 2           ; 2 uses
  %.064.i.1 = getelementptr inbounds nuw i8, ptr %.06484.i, i64 2 ; 2 uses
  %.062.i.1 = getelementptr inbounds nuw i8, ptr %.06285.i, i64 2 ; 2 uses
  %.066.i.1 = getelementptr inbounds nuw i8, ptr %.06686.i, i64 2 ; 2 uses
  %exitcond.not.i181.1 = icmp eq i64 %i.ajr, %i.adh
  br i1 %exitcond.not.i181.1, label %.preheader.i182, label %.lr.ph.i180, !llvm.loop !304

.lr.ph100.i:                                      ; preds = %.preheader.i182, %.lr.ph100.i
  %.06199.pn.i = phi ptr [ %.06199.i, %.lr.ph100.i ], [ %i.adf, %.preheader.i182 ]
  %.06098.pn.i = phi ptr [ %.06098.i, %.lr.ph100.i ], [ %i.l, %.preheader.i182 ]
  %.197.i = phi i64 [ %i.akl, %.lr.ph100.i ], [ %.057.lcssa.i, %.preheader.i182 ]
  %.15996.i = phi i64 [ %i.akq, %.lr.ph100.i ], [ %.058.lcssa.i, %.preheader.i182 ]
  %.16395.i = phi ptr [ %i.akp, %.lr.ph100.i ], [ %.062.lcssa.i, %.preheader.i182 ] ; 2 uses
  %.16594.i = phi ptr [ %i.akn, %.lr.ph100.i ], [ %.064.lcssa.i, %.preheader.i182 ] ; 2 uses
  %.16793.i = phi ptr [ %i.ako, %.lr.ph100.i ], [ %.066.lcssa.i, %.preheader.i182 ] ; 2 uses
  %.06098.i = getelementptr inbounds nuw i8, ptr %.06098.pn.i, i64 1 ; 2 uses
  %.06199.i = getelementptr inbounds nuw i8, ptr %.06199.pn.i, i64 1 ; 2 uses
  %i.ajs = load i8, ptr %.16395.i, align 1, !tbaa !10, !noalias !319 ; 2 uses
  %i.ajt = zext i8 %i.ajs to i32
  %i.aju = load i8, ptr %.06199.i, align 1, !tbaa !10, !noalias !319 ; 2 uses
  %i.ajv = zext i8 %i.aju to i32                  ; 2 uses
  %i.ajw = load i8, ptr %.06098.i, align 1, !tbaa !10, !noalias !319 ; 2 uses
  %i.ajx = zext i8 %i.ajw to i32
  %i.ajy = sub nsw i32 %i.ajt, %i.ajv             ; 2 uses
  %i.ajz = sub nsw i32 %i.ajx, %i.ajv             ; 2 uses
  %i.aka = tail call i32 @llvm.abs.i32(i32 %i.ajy, i1 true) ; 2 uses
  %i.akb = tail call i32 @llvm.abs.i32(i32 %i.ajz, i1 true) ; 2 uses
  %i.akc = add nsw i32 %i.ajz, %i.ajy
  %i.akd = tail call i32 @llvm.abs.i32(i32 %i.akc, i1 true) ; 2 uses
  %.not.i184 = icmp samesign ugt i32 %i.aka, %i.akb
  %.not72.i = icmp samesign ugt i32 %i.aka, %i.akd
  %or.cond.i185 = select i1 %.not.i184, i1 true, i1 %.not72.i
  %.not73.i = icmp samesign ugt i32 %i.akb, %i.akd
  %i.ake = select i1 %.not73.i, i8 %i.aju, i8 %i.ajs
  %.tr.i186 = select i1 %or.cond.i185, i8 %i.ake, i8 %i.ajw
  %i.akf = load i8, ptr %.16793.i, align 1, !tbaa !10, !noalias !319
  %.narrow.i187 = sub i8 %i.akf, %.tr.i186        ; 3 uses
  store i8 %.narrow.i187, ptr %.16594.i, align 1, !tbaa !10, !noalias !319
  %i.akg = zext i8 %.narrow.i187 to i32           ; 2 uses
  %i.akh = sub nuw nsw i32 256, %i.akg
  %i.aki = icmp slt i8 %.narrow.i187, 0
  %i.akj = select i1 %i.aki, i32 %i.akh, i32 %i.akg
  %i.akk = zext nneg i32 %i.akj to i64
  %i.akl = add i64 %.197.i, %i.akk                ; 3 uses
  %i.akm = icmp ule i64 %i.akl, %.6
  %i.akn = getelementptr inbounds nuw i8, ptr %.16594.i, i64 1
  %i.ako = getelementptr inbounds nuw i8, ptr %.16793.i, i64 1
  %i.akp = getelementptr inbounds nuw i8, ptr %.16395.i, i64 1
  %i.akq = add nuw i64 %.15996.i, 1               ; 2 uses
  %i.akr = icmp ult i64 %i.akq, %i.e
  %or.cond108.i = select i1 %i.akm, i1 %i.akr, i1 false
  br i1 %or.cond108.i, label %.lr.ph100.i, label %png_setup_paeth_row.exit, !llvm.loop !305

png_setup_paeth_row.exit:                         ; preds = %.lr.ph100.i, %.preheader.i182
  %.2.i183 = phi i64 [ %.057.lcssa.i, %.preheader.i182 ], [ %i.akl, %.lr.ph100.i ]
  %i.aks = icmp ult i64 %.2.i183, %.6
  br i1 %i.aks, label %bb.w, label %.thread214.thread

bb.w:                                             ; preds = %png_setup_paeth_row.exit
  %i.akt = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.aku = load ptr, ptr %i.akt, align 8, !tbaa !67 ; 2 uses
  %.not127 = icmp eq ptr %i.aku, null
  br i1 %.not127, label %.thread214.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  store ptr %i.aku, ptr %i.adb, align 8, !tbaa !66
  store ptr %i.adc, ptr %i.akt, align 8, !tbaa !67
  br label %.thread214.thread

.thread214.thread:                                ; preds = %.lr.ph80.i, %.lr.ph44.i, %.lr.ph.i138.prol.loopexit, %.lr.ph.i138, %.lr.ph12.i.prol.loopexit, %.lr.ph12.i, %middle.block415, %vec.epilog.middle.block442, %middle.block523, %vec.epilog.middle.block547, %middle.block574, %vec.epilog.middle.block594, %middle.block659, %vec.epilog.middle.block680, %.preheader.i174, %.preheader.i154, %bb.j, %.preheader.i, %png_setup_paeth_row.exit, %bb.x, %bb.w, %.thread214
  %.7 = phi ptr [ %i.ma, %.preheader.i154 ], [ %.5109, %.thread214 ], [ %i.adc, %bb.x ], [ %i.adc, %bb.w ], [ %.5109, %png_setup_paeth_row.exit ], [ %i.jq, %bb.j ], [ %.val128, %.preheader.i ], [ %i.yt, %.preheader.i174 ], [ %.val128, %middle.block659 ], [ %i.jq, %middle.block574 ], [ %i.ma, %middle.block523 ], [ %i.yt, %middle.block415 ], [ %.val128, %vec.epilog.middle.block680 ], [ %i.ma, %.lr.ph44.i ], [ %i.jq, %vec.epilog.middle.block594 ], [ %.val128, %.lr.ph12.i.prol.loopexit ], [ %i.ma, %vec.epilog.middle.block547 ], [ %i.jq, %.lr.ph.i138.prol.loopexit ], [ %i.yt, %vec.epilog.middle.block442 ], [ %.val128, %.lr.ph12.i ], [ %i.jq, %.lr.ph.i138 ], [ %i.yt, %.lr.ph80.i ]
  %i.akv = load i64, ptr %i.d, align 8, !tbaa !73
  %i.akw = add i64 %i.akv, 1
  tail call void @png_compress_IDAT(ptr noundef nonnull %0, ptr noundef %.7, i64 noundef %i.akw, i32 noundef 0)
  %i.akx = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 2 uses
  %i.aky = load ptr, ptr %i.akx, align 8, !tbaa !68, !alias.scope !320 ; 2 uses
  %.not.i188 = icmp eq ptr %i.aky, null
  br i1 %.not.i188, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.thread214.thread
  %i.akz = load ptr, ptr %i.k, align 8, !tbaa !65, !alias.scope !320
  store ptr %i.akz, ptr %i.akx, align 8, !tbaa !68, !alias.scope !320
  store ptr %i.aky, ptr %i.k, align 8, !tbaa !65, !alias.scope !320
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.thread214.thread
  tail call void @png_write_finish_row(ptr noundef nonnull %0)
  %i.ala = getelementptr inbounds nuw i8, ptr %0, i64 676 ; 2 uses
  %i.alb = load i32, ptr %i.ala, align 4, !tbaa !321, !alias.scope !320
  %.fr.i = freeze i32 %i.alb
  %i.alc = add i32 %.fr.i, 1                      ; 2 uses
  store i32 %i.alc, ptr %i.ala, align 4, !tbaa !321, !alias.scope !320
  %i.ald = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.ale = load i32, ptr %i.ald, align 8, !tbaa !322, !alias.scope !320
  %i.alf = add i32 %i.ale, -1
  %or.cond.not.i = icmp ult i32 %i.alf, %i.alc
  br i1 %or.cond.not.i, label %bb.aa, label %png_write_filtered_row.exit

bb.aa:                                            ; preds = %bb.z
  tail call void @png_write_flush(ptr noundef nonnull %0) #12
  br label %png_write_filtered_row.exit

png_write_filtered_row.exit:                      ; preds = %bb.z, %bb.aa
  ret void
}

declare void @png_reset_crc(ptr noundef) local_unnamed_addr #3

declare i64 @png_safecat(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @deflateEnd(ptr noundef) local_unnamed_addr #3

declare i32 @deflateReset(ptr noundef) local_unnamed_addr #3

declare i32 @deflateInit2_(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare noalias ptr @png_malloc_base(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @png_write_flush(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_6
