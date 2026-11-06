Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flac/original/decode?download=true
inline.NumInlined: 55
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 20
begin_hunk_0_@print_stats:bb.a
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !34
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.r = load i32, ptr %i.q, align 8, !tbaa !38
  tail call void @stats_print_name_and_stream_number(i32 noundef 2, ptr noundef %i.p, i32 noundef %i.r) #13
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.t = load i32, ptr %i.s, align 8, !tbaa !29
  %.not16 = icmp eq i32 %i.t, 0
  br i1 %.not16, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1188
  %i.v = load i32, ptr %i.u, align 4, !tbaa !30
  %.not17 = icmp eq i32 %i.v, 0
  %i.w = select i1 %.not17, ptr @.str.26, ptr @.str.25
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.x = phi ptr [ %i.w, %bb.e ], [ @.str.24, %bb.d ]
  tail call void (i32, ptr, ...) @stats_print_info(i32 noundef 2, ptr noundef nonnull @.str.23, ptr noundef nonnull %i.x, i32 noundef %i.m) #13
  br label %bb.j

bb.g:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !34
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !38
  tail call void @stats_print_name_and_stream_number(i32 noundef 2, ptr noundef %i.z, i32 noundef %i.ab) #13
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !29
  %.not14 = icmp eq i32 %i.ad, 0
  br i1 %.not14, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1188
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !30
  %.not15 = icmp eq i32 %i.af, 0
  %i.ag = select i1 %.not15, ptr @.str.30, ptr @.str.29
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ah = phi ptr [ %i.ag, %bb.h ], [ @.str.28, %bb.g ]
  %i.ai = load i64, ptr %i.c, align 8, !tbaa !35
  tail call void (i32, ptr, ...) @stats_print_info(i32 noundef 2, ptr noundef nonnull @.str.27, ptr noundef nonnull %i.ah, i64 noundef %i.ai) #13
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.i, %bb.f, %bb.a
  ret void
}

declare void @flac__analyze_frame(ptr noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64, ptr noundef) local_unnamed_addr #2

declare i64 @FLAC__replaygain_synthesis__apply_gain(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, double noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind memory(argmem: readwrite)
declare ptr @__memcpy_chk(ptr noalias noundef writeonly, ptr noalias noundef readonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #8

declare void @stats_print_info(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @flac__utils_canonicalize_skip_until_specification(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @canonicalize_until_specification(ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @flac__utils_canonicalize_skip_until_specification(ptr noundef %0, i32 noundef %2) #13
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !46
  tail call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.b, i32 noundef 1, ptr noundef nonnull @.str.58, ptr noundef %1) #13
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 8, !tbaa !64
  %.not28 = icmp eq i32 %i.c, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !13 ; 4 uses
  br i1 %.not28, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = icmp eq i64 %.pre, 0
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %0, align 8, !tbaa !64
  br label %bb.o

bb.f:                                             ; preds = %bb.d
  %i.e = icmp slt i64 %.pre, 1
  br i1 %i.e, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.f = icmp eq i64 %4, 0
  br i1 %i.f, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !46
  tail call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.g, i32 noundef 1, ptr noundef nonnull @.str.59, ptr noundef %1) #13
  br label %bb.o

bb.i:                                             ; preds = %bb.f, %bb.g
  %.pn = phi i64 [ %4, %bb.g ], [ %3, %bb.f ]
  %storemerge = add i64 %.pn, %.pre               ; 2 uses
  store i64 %storemerge, ptr %.phi.trans.insert, align 8, !tbaa !13
  store i32 0, ptr %0, align 8, !tbaa !64
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.i
  %i.h = phi i64 [ %storemerge, %bb.i ], [ %.pre, %bb.c ] ; 3 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.thread
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !46
  tail call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.j, i32 noundef 1, ptr noundef nonnull @.str.60, ptr noundef %1) #13
  br label %bb.o

bb.k:                                             ; preds = %.thread
  %.not30 = icmp ugt i64 %i.h, %3
  br i1 %.not30, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !46
  tail call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.k, i32 noundef 1, ptr noundef nonnull @.str.61, ptr noundef %1) #13
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.l = icmp ugt i64 %i.h, %4
  %i.m = icmp ne i64 %4, 0
  %or.cond = and i1 %i.m, %i.l
  br i1 %or.cond, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !46
  tail call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.n, i32 noundef 1, ptr noundef nonnull @.str.62, ptr noundef %1) #13
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.l, %bb.j, %bb.h, %bb.e, %bb.b
  %.0 = phi i32 [ 1, %bb.e ], [ 0, %bb.h ], [ 0, %bb.j ], [ 0, %bb.l ], [ 0, %bb.n ], [ 0, %bb.b ], [ 1, %bb.m ]
  ret i32 %.0
}

declare void @flac__utils_canonicalize_cue_specification(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @grabbag__replaygain_load_from_vorbiscomment(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare double @grabbag__replaygain_compute_scale_factor(double noundef, double noundef, double noundef, i32 noundef) local_unnamed_addr #2

declare void @FLAC__replaygain_synthesis__init_dither_context(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @flac__utils_get_channel_mask_tag(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @FLAC__stream_decoder_get_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

declare i32 @FLAC__stream_decoder_process_until_end_of_metadata(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @print_error_with_state(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1224 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #15
  %i.d = trunc i64 %i.c to i32
  %i.e = add i32 %i.d, 1
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !46
  tail call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.f, i32 noundef 1, ptr noundef nonnull @.str.65, ptr noundef nonnull %i.b, ptr noundef %1) #13
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !46
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1392
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !48
  %i.j = tail call ptr @FLAC__stream_decoder_get_resolved_state_string(ptr noundef %i.i) #13
  tail call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.g, i32 noundef 1, ptr noundef nonnull @.str.81, i32 noundef %i.e, ptr noundef nonnull @.str.26, ptr noundef %i.j) #13
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.l = load i32, ptr %i.k, align 8, !tbaa !51
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !46
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.o = load ptr, ptr @FLAC__VERSION_STRING, align 8, !tbaa !50
  tail call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.m, i32 noundef 1, ptr noundef nonnull @.str.82, ptr noundef %i.n, ptr noundef %i.o) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @write_iff_headers(ptr nofree noundef captures(address) %0, ptr nofree noundef nonnull captures(none) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i16, align 2                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i16, align 2                      ; 5 uses
  %i.g = alloca i16, align 2                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 7 uses
  %i.i = alloca i16, align 2                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %i.k = alloca i32, align 4                      ; 7 uses
  %i.l = alloca i64, align 8                      ; 4 uses
  %i.m = alloca i32, align 4                      ; 4 uses
  %i.n = alloca i64, align 8                      ; 4 uses
  %i.o = alloca i32, align 4                      ; 4 uses
  %i.p = alloca i32, align 4                      ; 4 uses
  %i.q = alloca i64, align 8                      ; 4 uses
  %i.r = alloca i64, align 8                      ; 4 uses
  %i.s = alloca i64, align 8                      ; 4 uses
  %i.t = alloca i32, align 4                      ; 4 uses
  %i.u = alloca i32, align 4                      ; 4 uses
  %i.v = alloca i64, align 8                      ; 4 uses
  %i.w = alloca i32, align 4                      ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.y = load i32, ptr %i.x, align 4, !tbaa !25   ; 15 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !26  ; 3 uses
  switch i32 %i.y, label %bb.b [
    i32 1, label %bb.c
    i32 2, label %.fold.split
  ]

bb.b:                                             ; preds = %bb.a
  %i.ab = icmp eq i32 %i.y, 3
  %i.ac = icmp eq i32 %i.y, 4
  %i.ad = select i1 %i.ac, ptr @.str.86, ptr @.str.87
  %i.ae = select i1 %i.ab, ptr @.str.85, ptr %i.ad
  br label %bb.c

.fold.split:                                      ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %.fold.split, %bb.b
  %i.af = phi ptr [ @.str.83, %bb.a ], [ %i.ae, %bb.b ], [ @.str.84, %.fold.split ] ; 3 uses
  %i.ag = icmp eq i32 %i.aa, 2
  br i1 %i.ag, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = add i32 %i.y, -1
  %or.cond3 = icmp ult i32 %i.ah, 3
  %i.ai = icmp ne i32 %i.aa, 1
  %or.cond5 = select i1 %or.cond3, i1 %i.ai, i1 false
  br i1 %or.cond5, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 1364
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !41
  switch i32 %i.ak, label %bb.h [
    i32 0, label %bb.f
    i32 4, label %bb.f
    i32 3, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 1352
  %i.am = load i32, ptr %i.al, align 8, !tbaa !58
  switch i32 %i.am, label %bb.h [
    i32 8, label %bb.g
    i32 16, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 1356
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !54
  %i.ap = icmp ugt i32 %i.ao, 2
  %i.aq = zext i1 %i.ap to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.g, %bb.c
  %i.ar = phi i32 [ 1, %bb.c ], [ 0, %bb.d ], [ 1, %bb.f ], [ 1, %bb.e ], [ %i.aq, %bb.g ] ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 1356 ; 3 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !54
  %i.au = zext i32 %i.at to i64
  %i.av = mul i64 %2, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 1352 ; 3 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !58
  %i.ay = add i32 %i.ax, 7
  %i.az = lshr i32 %i.ay, 3
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = mul i64 %i.av, %i.ba                    ; 6 uses
  %i.bc = icmp eq i32 %i.y, 2                     ; 7 uses
  %i.bd = add i64 %i.bb, 7
  %i.be = and i64 %i.bd, -8                       ; 2 uses
  %i.bf = add i64 %i.bb, 1
  %i.bg = and i64 %i.bf, -2                       ; 3 uses
  %i.bh = select i1 %i.bc, i64 %i.be, i64 %i.bg   ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 1408
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !44 ; 18 uses
  %i.bk = icmp eq i64 %2, 0                       ; 2 uses
  br i1 %i.bk, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.bl = load ptr, ptr @stdout, align 8, !tbaa !46
  %i.bm = icmp eq ptr %0, %i.bl
  br i1 %i.bm, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bn = load ptr, ptr @stderr, align 8, !tbaa !46
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 1224
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !34
  tail call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.bn, i32 noundef 1, ptr noundef nonnull @.str.88, ptr noundef %i.bp, ptr noundef %i.af) #13
  %i.bq = load ptr, ptr @stderr, align 8, !tbaa !46
  tail call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.bq, i32 noundef 1, ptr noundef nonnull @.str.89, ptr noundef %i.af) #13
  %i.br = load ptr, ptr @stderr, align 8, !tbaa !46
  tail call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.br, i32 noundef 1, ptr noundef nonnull @.str.90) #13
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !47
  %.not236 = icmp eq i32 %i.bt, 0
  br i1 %.not236, label %bb.l, label %write_aiff_form_comm_chunk.exit.thread

bb.k:                                             ; preds = %bb.i
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 1324
  store i32 1, ptr %i.bu, align 4, !tbaa !39
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h
  %.not237 = icmp eq ptr %i.bj, null              ; 6 uses
  br i1 %.not237, label %bb.w, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bv = icmp eq i32 %i.y, 3
  %i.bw = select i1 %i.bv, i64 2, i64 1           ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !161 ; 3 uses
  %i.bz = icmp ult i64 %i.bw, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !162 ; 4 uses
  br i1 %i.bz, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.m
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bj, i64 32 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 3 uses
  %i.ce = sub nuw i64 %i.by, %i.bw                ; 3 uses
  %.neg = add nuw nsw i64 %i.bw, 1
  %xtraiter = and i64 %i.ce, 1
  %i.cf = icmp eq i64 %i.by, %.neg
  br i1 %i.cf, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.ce, -2
  br label %bb.n

bb.n:                                             ; preds = %bb.t, %.lr.ph.new
  %.0213323 = phi i64 [ %i.bw, %.lr.ph.new ], [ %i.ct, %bb.t ] ; 5 uses
  %.0215322 = phi i32 [ 0, %.lr.ph.new ], [ %.1216.1, %bb.t ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.t ]
  %.not274 = icmp eq i64 %.0213323, %i.cb
  br i1 %.not274, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cg = load i64, ptr %i.cc, align 8, !tbaa !163
  %.not275 = icmp eq i64 %.0213323, %i.cg
  br i1 %.not275, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ch = load ptr, ptr %i.cd, align 8, !tbaa !164
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.ch, i64 %.0213323
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !166
  %i.cl = add i32 %i.ck, %.0215322
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.o, %bb.p
  %.1216 = phi i32 [ %i.cl, %bb.p ], [ %.0215322, %bb.o ], [ %.0215322, %bb.n ] ; 3 uses
  %i.cm = add nuw i64 %.0213323, 1                ; 3 uses
  %.not274.1 = icmp eq i64 %i.cm, %i.cb
  br i1 %.not274.1, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cn = load i64, ptr %i.cc, align 8, !tbaa !163
  %.not275.1 = icmp eq i64 %i.cm, %i.cn
  br i1 %.not275.1, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.co = load ptr, ptr %i.cd, align 8, !tbaa !164
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.co, i64 %i.cm
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !166
  %i.cs = add i32 %i.cr, %.1216
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %.1216.1 = phi i32 [ %i.cs, %bb.s ], [ %.1216, %bb.r ], [ %.1216, %bb.q ] ; 3 uses
  %i.ct = add nuw i64 %.0213323, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.n, !llvm.loop !153

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.t
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.0213323.epil.init = phi i64 [ %i.bw, %.lr.ph ], [ %i.ct, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %.0215322.epil.init = phi i32 [ 0, %.lr.ph ], [ %.1216.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod345 = trunc i64 %i.ce to i1
  tail call void @llvm.assume(i1 %lcmp.mod345)
  %.not274.epil = icmp eq i64 %.0213323.epil.init, %i.cb
  br i1 %.not274.epil, label %._crit_edge, label %bb.u

end_hunk_0
begin_hunk_1_@write_iff_headers:bb.a
  %.not267 = icmp eq i32 %i.gn, 0
  br i1 %.not267, label %write_aiff_form_comm_chunk.exit.thread, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  br i1 %i.bc, label %bb.bh, label %.critedge

bb.bh:                                            ; preds = %bb.bg
  %i.go = tail call i64 @ftello64(ptr noundef %0)
  %i.gp = trunc i64 %i.go to i32
  %i.gq = sub i32 0, %i.gp
  %i.gr = and i32 %i.gq, 7                        ; 2 uses
  %.not268 = icmp eq i32 %i.gr, 0
  br i1 %.not268, label %.critedge, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gs = zext nneg i32 %i.gr to i64              ; 2 uses
  %i.gt = tail call i64 @fwrite(ptr noundef nonnull @.str.99, i64 noundef 1, i64 noundef %i.gs, ptr noundef %0)
  %.not269 = icmp eq i64 %i.gt, %i.gs
  br i1 %.not269, label %.critedge, label %write_aiff_form_comm_chunk.exit.thread

.critedge:                                        ; preds = %bb.bh, %bb.bi, %bb.bg
  %i.gu = tail call i64 @ftello64(ptr noundef %0)
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 1424
  store i64 %i.gu, ptr %i.gv, align 8, !tbaa !61
  br i1 %.not237, label %.loopexit, label %bb.bj

bb.bj:                                            ; preds = %.critedge
  %i.gw = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !162
  %i.gy = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.gz = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bl, %bb.bj
  %.2.in = phi i64 [ %i.gx, %bb.bj ], [ %.2, %bb.bl ]
  %.2 = add i64 %.2.in, 1                         ; 3 uses
  %i.ha = load i64, ptr %i.gy, align 8, !tbaa !163
  %i.hb = icmp ult i64 %.2, %i.ha
  br i1 %i.hb, label %bb.bl, label %.loopexit

bb.bl:                                            ; preds = %bb.bk
  %i.hc = load ptr, ptr %i.gz, align 8, !tbaa !164
  %i.hd = getelementptr inbounds nuw [16 x i8], ptr %i.hc, i64 %.2
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hf = load i32, ptr %i.he, align 8, !tbaa !166
  %i.hg = zext i32 %i.hf to i64
  %i.hh = tail call i32 @fseeko64(ptr noundef %0, i64 noundef %i.hg, i32 noundef 1)
  %i.hi = icmp slt i32 %i.hh, 0
  br i1 %i.hi, label %bb.bm, label %bb.bk, !llvm.loop !155

bb.bm:                                            ; preds = %bb.bl
  %i.hj = load ptr, ptr @stderr, align 8, !tbaa !46
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 1224
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !34
  tail call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.hj, i32 noundef 1, ptr noundef nonnull @.str.100, ptr noundef %i.hl) #13
  br label %write_aiff_form_comm_chunk.exit.thread

.loopexit:                                        ; preds = %bb.bk, %.critedge
  br i1 %i.bc, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %.loopexit
  %i.hm = tail call i64 @fwrite(ptr noundef nonnull @.str.101, i64 noundef 1, i64 noundef 4, ptr noundef %0)
  %.not272 = icmp eq i64 %i.hm, 4
  br i1 %.not272, label %bb.bo, label %write_aiff_form_comm_chunk.exit.thread

bb.bo:                                            ; preds = %bb.bn
  %i.hn = trunc i64 %i.bb to i32
  %i.ho = select i1 %i.fg, i32 -1, i32 %i.hn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i32 %i.ho, ptr %i.m, align 4, !tbaa !14
  %i.hp = call i64 @fwrite(ptr noundef nonnull %i.m, i64 noundef 1, i64 noundef 4, ptr noundef %0)
  %.not318 = icmp eq i64 %i.hp, 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br i1 %.not318, label %bb.br, label %write_aiff_form_comm_chunk.exit.thread

bb.bp:                                            ; preds = %.loopexit
  %i.hq = tail call i64 @fwrite(ptr noundef nonnull @.str.102, i64 noundef 1, i64 noundef 16, ptr noundef %0)
  %.not270 = icmp eq i64 %i.hq, 16
  br i1 %.not270, label %bb.bq, label %write_aiff_form_comm_chunk.exit.thread

bb.bq:                                            ; preds = %bb.bp
  %i.hr = add i64 %i.bb, 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 %i.hr, ptr %i.l, align 8, !tbaa !65
  %i.hs = call i64 @fwrite(ptr noundef nonnull %i.l, i64 noundef 1, i64 noundef 8, ptr noundef %0)
  %.not319 = icmp eq i64 %i.hs, 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br i1 %.not319, label %bb.br, label %write_aiff_form_comm_chunk.exit.thread

bb.br:                                            ; preds = %bb.bq, %bb.bo
  %i.ht = tail call i64 @ftello64(ptr noundef %0)
  %i.hu = add i64 %i.ht, %i.bh
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 1432
  store i64 %i.hu, ptr %i.hv, align 8, !tbaa !62
  br label %write_aiff_form_comm_chunk.exit.thread

bb.bs:                                            ; preds = %.thread
  %i.hw = tail call i64 @fwrite(ptr noundef nonnull @.str.103, i64 noundef 1, i64 noundef 4, ptr noundef %0)
  %.not239 = icmp eq i64 %i.hw, 4
  br i1 %.not239, label %bb.bt, label %write_aiff_form_comm_chunk.exit.thread

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.hx = getelementptr inbounds nuw i8, ptr %i.k, i64 3
  %i.hy = lshr i64 %.0218291, 24
  %i.hz = trunc i64 %i.hy to i8
  %i.ia = trunc i64 %.0218291 to i8
  store i8 %i.ia, ptr %i.hx, align 1, !tbaa !13
  store i8 %i.hz, ptr %i.k, align 4, !tbaa !13
  %i.ib = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.ic = lshr i64 %.0218291, 16
  %i.id = trunc i64 %i.ic to i8
  %i.ie = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.if = lshr i64 %.0218291, 8
  %i.ig = trunc i64 %i.if to i8
  store i8 %i.ig, ptr %i.ib, align 2, !tbaa !13
  store i8 %i.id, ptr %i.ie, align 1, !tbaa !13
  %i.ih = call i64 @fwrite(ptr noundef nonnull %i.k, i64 noundef 1, i64 noundef 4, ptr noundef %0)
  %.not = icmp eq i64 %i.ih, 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br i1 %.not, label %bb.bu, label %write_aiff_form_comm_chunk.exit.thread

bb.bu:                                            ; preds = %bb.bt
  %i.ii = icmp eq i32 %i.y, 4                     ; 3 uses
  br i1 %i.ii, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.ij = tail call i64 @fwrite(ptr noundef nonnull @.str.86, i64 noundef 1, i64 noundef 4, ptr noundef %0)
  %.not242 = icmp eq i64 %i.ij, 4
  br i1 %.not242, label %bb.bx, label %write_aiff_form_comm_chunk.exit.thread

bb.bw:                                            ; preds = %bb.bu
  %i.ik = tail call i64 @fwrite(ptr noundef nonnull @.str.87, i64 noundef 1, i64 noundef 4, ptr noundef %0)
  %.not241 = icmp eq i64 %i.ik, 4
  br i1 %.not241, label %bb.bx, label %write_aiff_form_comm_chunk.exit.thread

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.il = tail call i64 @ftello64(ptr noundef %0)
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 1416
  store i64 %i.il, ptr %i.im, align 8, !tbaa !60
  br i1 %.not237, label %.thread295, label %.preheader

.preheader:                                       ; preds = %bb.bx
  %i.in = getelementptr inbounds nuw i8, ptr %i.bj, i64 24 ; 2 uses
  %i.io = load i64, ptr %i.in, align 8, !tbaa !162
  %i.ip = icmp ugt i64 %i.io, 1
  br i1 %i.ip, label %.lr.ph325, label %._crit_edge326

.lr.ph325:                                        ; preds = %.preheader
  %i.iq = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  br label %bb.bz

.thread295:                                       ; preds = %bb.bx
  %..i285296 = select i1 %i.ii, i32 30, i32 36
  br label %bb.cb

bb.by:                                            ; preds = %bb.bz
  %i.ir = add nuw i64 %.3324, 1                   ; 2 uses
  %i.is = load i64, ptr %i.in, align 8, !tbaa !162
  %i.it = icmp ult i64 %i.ir, %i.is
  br i1 %i.it, label %bb.bz, label %._crit_edge326, !llvm.loop !156

bb.bz:                                            ; preds = %.lr.ph325, %bb.by
  %.3324 = phi i64 [ 1, %.lr.ph325 ], [ %i.ir, %bb.by ] ; 2 uses
  %i.iu = load ptr, ptr %i.iq, align 8, !tbaa !164
  %i.iv = getelementptr inbounds nuw [16 x i8], ptr %i.iu, i64 %.3324
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %i.ix = load i32, ptr %i.iw, align 8, !tbaa !166
  %i.iy = zext i32 %i.ix to i64
  %i.iz = tail call i32 @fseeko64(ptr noundef %0, i64 noundef %i.iy, i32 noundef 1)
  %i.ja = icmp slt i32 %i.iz, 0
  br i1 %i.ja, label %bb.ca, label %bb.by

bb.ca:                                            ; preds = %bb.bz
  %i.jb = load ptr, ptr @stderr, align 8, !tbaa !46
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 1224
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !34
  tail call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.jb, i32 noundef 1, ptr noundef nonnull @.str.104, ptr noundef %i.jd) #13
  br label %write_aiff_form_comm_chunk.exit.thread

._crit_edge326:                                   ; preds = %bb.by, %.preheader
  %i.je = getelementptr inbounds nuw i8, ptr %i.bj, i64 56
  %i.jf = load i32, ptr %i.je, align 8, !tbaa !167
  %.fr = freeze i32 %i.jf                         ; 2 uses
  %i.jg = icmp eq i32 %.fr, 0
  %..i285 = select i1 %i.ii, i32 30, i32 36
  %spec.select307 = select i1 %i.jg, i32 %..i285, i32 %.fr
  br label %bb.cb

bb.cb:                                            ; preds = %._crit_edge326, %.thread295
  %i.jh = phi i32 [ %spec.select307, %._crit_edge326 ], [ %..i285296, %.thread295 ] ; 3 uses
  %.in = getelementptr inbounds nuw i8, ptr %1, i64 1360
  %i.ji = load i32, ptr %.in, align 8, !tbaa !40  ; 3 uses
  %i.jj = load i32, ptr %i.as, align 4, !tbaa !54 ; 2 uses
  %i.jk = load i32, ptr %i.aw, align 8, !tbaa !58 ; 2 uses
  %i.jl = tail call i64 @fwrite(ptr noundef nonnull @.str.108, i64 noundef 1, i64 noundef 4, ptr noundef %0)
  %.not.i286 = icmp eq i64 %i.jl, 4
  br i1 %.not.i286, label %bb.cc, label %write_aiff_form_comm_chunk.exit.thread

bb.cc:                                            ; preds = %bb.cb
  %i.jm = add i32 %i.jh, -12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %3 = tail call i32 @llvm.bswap.i32(i32 %i.jm)
  store i32 %3, ptr %i.j, align 4, !tbaa !13
  %i.jn = call i64 @fwrite(ptr noundef nonnull %i.j, i64 noundef 1, i64 noundef 4, ptr noundef %0)
  %.not37.i = icmp eq i64 %i.jn, 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br i1 %.not37.i, label %bb.cd, label %write_aiff_form_comm_chunk.exit.thread

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.jo = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.jp = lshr i32 %i.jj, 8
  %i.jq = trunc i32 %i.jp to i8
  %i.jr = trunc i32 %i.jj to i8
  store i8 %i.jr, ptr %i.jo, align 1, !tbaa !13
  store i8 %i.jq, ptr %i.i, align 2, !tbaa !13
  %i.js = call i64 @fwrite(ptr noundef nonnull %i.i, i64 noundef 1, i64 noundef 2, ptr noundef %0)
  %.not38.i = icmp eq i64 %i.js, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br i1 %.not38.i, label %bb.ce, label %write_aiff_form_comm_chunk.exit.thread

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.jt = getelementptr inbounds nuw i8, ptr %i.h, i64 3
  %i.ju = lshr i64 %2, 24
  %i.jv = trunc i64 %i.ju to i8
  %i.jw = trunc i64 %2 to i8
  store i8 %i.jw, ptr %i.jt, align 1, !tbaa !13
  store i8 %i.jv, ptr %i.h, align 4, !tbaa !13
  %i.jx = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.jy = lshr i64 %2, 16
  %i.jz = trunc i64 %i.jy to i8
  %i.ka = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.kb = lshr i64 %2, 8
  %i.kc = trunc i64 %i.kb to i8
  store i8 %i.kc, ptr %i.jx, align 2, !tbaa !13
  store i8 %i.jz, ptr %i.ka, align 1, !tbaa !13
  %i.kd = call i64 @fwrite(ptr noundef nonnull %i.h, i64 noundef 1, i64 noundef 4, ptr noundef %0)
  %.not39.i = icmp eq i64 %i.kd, 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br i1 %.not39.i, label %bb.cf, label %write_aiff_form_comm_chunk.exit.thread

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ke = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.kf = lshr i32 %i.jk, 8
  %i.kg = trunc i32 %i.kf to i8
  %i.kh = trunc i32 %i.jk to i8
  store i8 %i.kh, ptr %i.ke, align 1, !tbaa !13
  store i8 %i.kg, ptr %i.g, align 2, !tbaa !13
  %i.ki = call i64 @fwrite(ptr noundef nonnull %i.g, i64 noundef 1, i64 noundef 2, ptr noundef %0)
  %.not40.i = icmp eq i64 %i.ki, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br i1 %.not40.i, label %bb.cg, label %write_aiff_form_comm_chunk.exit.thread

bb.cg:                                            ; preds = %bb.cf
  %i.kj = icmp eq i32 %i.ji, 0
  br i1 %i.kj, label %bb.ch, label %.preheader.i.i

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.kk = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store i8 0, ptr %i.kk, align 1, !tbaa !13
  store i8 0, ptr %i.f, align 2, !tbaa !13
  %i.kl = call i64 @fwrite(ptr noundef nonnull %i.f, i64 noundef 1, i64 noundef 2, ptr noundef %0)
  %.not25.i.i = icmp eq i64 %i.kl, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br i1 %.not25.i.i, label %bb.ci, label %write_aiff_form_comm_chunk.exit.thread

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i32 0, ptr %i.e, align 4
  %i.km = call i64 @fwrite(ptr noundef nonnull %i.e, i64 noundef 1, i64 noundef 4, ptr noundef %0)
  %.not26.i.i = icmp eq i64 %i.km, 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br i1 %.not26.i.i, label %bb.cj, label %write_aiff_form_comm_chunk.exit.thread

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 0, ptr %i.d, align 4
  %i.kn = call i64 @fwrite(ptr noundef nonnull %i.d, i64 noundef 1, i64 noundef 4, ptr noundef %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %write_sane_extended.exit.i

.preheader.i.i:                                   ; preds = %bb.cg, %.preheader.i.i
  %.0.i.i = phi i32 [ %i.kr, %.preheader.i.i ], [ 0, %bb.cg ] ; 4 uses
  %i.ko = sub i32 31, %.0.i.i
  %i.kp = lshr i32 %i.ji, %i.ko
  %i.kq = icmp eq i32 %i.kp, 0
  %i.kr = add i32 %.0.i.i, 1
  br i1 %i.kq, label %.preheader.i.i, label %bb.ck, !llvm.loop !157

bb.ck:                                            ; preds = %.preheader.i.i
  %i.ks = trunc i32 %.0.i.i to i16
  %i.kt = sub i16 16414, %i.ks                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ku = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.kv = lshr i16 %i.kt, 8
  %i.kw = trunc nuw i16 %i.kv to i8
  %i.kx = trunc i16 %i.kt to i8
  store i8 %i.kx, ptr %i.ku, align 1, !tbaa !13
  store i8 %i.kw, ptr %i.c, align 2, !tbaa !13
  %i.ky = call i64 @fwrite(ptr noundef nonnull %i.c, i64 noundef 1, i64 noundef 2, ptr noundef %0)
  %.not.i.i287 = icmp eq i64 %i.ky, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %.not.i.i287, label %bb.cl, label %write_aiff_form_comm_chunk.exit.thread

bb.cl:                                            ; preds = %bb.ck
  %i.kz = shl i32 %i.ji, %.0.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %4 = tail call i32 @llvm.bswap.i32(i32 %i.kz)
  store i32 %4, ptr %i.b, align 4, !tbaa !13
  %i.la = call i64 @fwrite(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef 4, ptr noundef %0)
  %.not23.i.i = icmp eq i64 %i.la, 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %.not23.i.i, label %bb.cm, label %write_aiff_form_comm_chunk.exit.thread

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 0, ptr %i.a, align 4
  %i.lb = call i64 @fwrite(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 4, ptr noundef %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %write_sane_extended.exit.i

write_sane_extended.exit.i:                       ; preds = %bb.cm, %bb.cj
  %.015.shrunk.i.in.i = phi i64 [ %i.lb, %bb.cm ], [ %i.kn, %bb.cj ]
  %.015.shrunk.i.not.i = icmp eq i64 %.015.shrunk.i.in.i, 4
  br i1 %.015.shrunk.i.not.i, label %bb.cn, label %write_aiff_form_comm_chunk.exit.thread

bb.cn:                                            ; preds = %write_sane_extended.exit.i
  %i.lc = icmp eq i32 %i.y, 5
  br i1 %i.lc, label %bb.co, label %write_aiff_form_comm_chunk.exit

bb.co:                                            ; preds = %bb.cn
  switch i32 %i.aa, label %bb.cr [
    i32 3, label %bb.cp
    i32 4, label %bb.cq
  ]

bb.cp:                                            ; preds = %bb.co
  %i.ld = tail call i64 @fwrite(ptr noundef nonnull @.str.109, i64 noundef 1, i64 noundef 4, ptr noundef %0)
  %.not32.i = icmp eq i64 %i.ld, 4
  br i1 %.not32.i, label %bb.cr, label %write_aiff_form_comm_chunk.exit.thread

bb.cq:                                            ; preds = %bb.co
  %i.le = tail call i64 @fwrite(ptr noundef nonnull @.str.110, i64 noundef 1, i64 noundef 4, ptr noundef %0)
  %.not31.i = icmp eq i64 %i.le, 4
  br i1 %.not31.i, label %bb.cr, label %write_aiff_form_comm_chunk.exit.thread

bb.cr:                                            ; preds = %bb.cq, %bb.cp, %bb.co
  %i.lf = icmp ugt i32 %i.jh, 34
  br i1 %i.lf, label %.lr.ph.i, label %write_aiff_form_comm_chunk.exit

bb.cs:                                            ; preds = %.lr.ph.i
  %i.lg = add nuw i32 %.041.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.lg, %i.jh
  br i1 %exitcond.not.i, label %write_aiff_form_comm_chunk.exit, label %.lr.ph.i, !llvm.loop !158

.lr.ph.i:                                         ; preds = %bb.cr, %bb.cs
  %.041.i = phi i32 [ %i.lg, %bb.cs ], [ 34, %bb.cr ]
  %i.lh = tail call i64 @fwrite(ptr noundef nonnull @.str.76, i64 noundef 1, i64 noundef 1, ptr noundef %0)
  %.not33.i = icmp eq i64 %i.lh, 1
  br i1 %.not33.i, label %bb.cs, label %write_aiff_form_comm_chunk.exit.thread

write_aiff_form_comm_chunk.exit:                  ; preds = %bb.cs, %bb.cr, %bb.cn
  %i.li = tail call i64 @ftello64(ptr noundef %0)
  %i.lj = getelementptr inbounds nuw i8, ptr %1, i64 1424
  store i64 %i.li, ptr %i.lj, align 8, !tbaa !61
  br i1 %.not237, label %.loopexit321, label %bb.ct

bb.ct:                                            ; preds = %write_aiff_form_comm_chunk.exit
  %i.lk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.ll = load i64, ptr %i.lk, align 8, !tbaa !162
  %i.lm = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.ln = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cv, %bb.ct
  %.4.in = phi i64 [ %i.ll, %bb.ct ], [ %.4, %bb.cv ]
  %.4 = add i64 %.4.in, 1                         ; 3 uses
  %i.lo = load i64, ptr %i.lm, align 8, !tbaa !163
  %i.lp = icmp ult i64 %.4, %i.lo
  br i1 %i.lp, label %bb.cv, label %.loopexit321

bb.cv:                                            ; preds = %bb.cu
  %i.lq = load ptr, ptr %i.ln, align 8, !tbaa !164
  %i.lr = getelementptr inbounds nuw [16 x i8], ptr %i.lq, i64 %.4
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  %i.lt = load i32, ptr %i.ls, align 8, !tbaa !166
  %i.lu = zext i32 %i.lt to i64
  %i.lv = tail call i32 @fseeko64(ptr noundef %0, i64 noundef %i.lu, i32 noundef 1)
  %i.lw = icmp slt i32 %i.lv, 0
  br i1 %i.lw, label %bb.cw, label %bb.cu, !llvm.loop !159

bb.cw:                                            ; preds = %bb.cv
  %i.lx = load ptr, ptr @stderr, align 8, !tbaa !46
  %i.ly = getelementptr inbounds nuw i8, ptr %1, i64 1224
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !34
  tail call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.lx, i32 noundef 1, ptr noundef nonnull @.str.105, ptr noundef %i.lz) #13
  br label %write_aiff_form_comm_chunk.exit.thread

.loopexit321:                                     ; preds = %bb.cu, %write_aiff_form_comm_chunk.exit
  %i.ma = tail call i64 @fwrite(ptr noundef nonnull @.str.106, i64 noundef 1, i64 noundef 4, ptr noundef %0)
  %.not244 = icmp eq i64 %i.ma, 4
  br i1 %.not244, label %bb.cx, label %write_aiff_form_comm_chunk.exit.thread

bb.cx:                                            ; preds = %.loopexit321
  %i.mb = trunc i64 %i.bb to i32
  %i.mc = add i32 %i.mb, 8
  %i.md = tail call fastcc i32 @write_big_endian_uint32(ptr noundef %0, i32 noundef %i.mc)
  %.not245 = icmp eq i32 %i.md, 0
  br i1 %.not245, label %write_aiff_form_comm_chunk.exit.thread, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.me = tail call fastcc i32 @write_big_endian_uint32(ptr noundef %0, i32 noundef 0)
  %.not246 = icmp eq i32 %i.me, 0
  br i1 %.not246, label %write_aiff_form_comm_chunk.exit.thread, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.mf = tail call fastcc i32 @write_big_endian_uint32(ptr noundef %0, i32 noundef 0)
  %.not247 = icmp eq i32 %i.mf, 0
  br i1 %.not247, label %write_aiff_form_comm_chunk.exit.thread, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.mg = tail call i64 @ftello64(ptr noundef %0)
  %i.mh = add i64 %i.mg, %i.bh
  %i.mi = getelementptr inbounds nuw i8, ptr %1, i64 1432
  store i64 %i.mh, ptr %i.mi, align 8, !tbaa !62
  br label %write_aiff_form_comm_chunk.exit.thread

default.unreachable:                              ; preds = %bb.ah
  unreachable

write_aiff_form_comm_chunk.exit.thread:           ; preds = %.lr.ph.i, %bb.ch, %bb.ci, %bb.cl, %bb.cc, %bb.cd, %bb.ce, %bb.cf, %bb.cp, %bb.ck, %bb.cq, %write_sane_extended.exit.i, %bb.cb, %bb.br, %bb.da, %bb.cz, %bb.cy, %bb.cx, %.loopexit321, %bb.bw, %bb.bv, %bb.bt, %bb.bs, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bi, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.j, %bb.cw, %bb.ca, %bb.bm, %bb.ba, %bb.ag
  %.1220 = phi i32 [ 0, %bb.bs ], [ 0, %bb.ag ], [ 0, %bb.aq ], [ 0, %bb.j ], [ 0, %bb.aj ], [ 0, %bb.ch ], [ 0, %bb.ba ], [ 0, %bb.aw ], [ 0, %bb.bm ], [ 0, %bb.bi ], [ 0, %bb.cz ], [ 0, %bb.bn ], [ 0, %bb.bo ], [ 0, %bb.bp ], [ 0, %bb.bf ], [ 0, %bb.be ], [ 0, %bb.bb ], [ 0, %bb.bc ], [ 0, %bb.bd ], [ 0, %bb.av ], [ 0, %bb.au ], [ 0, %bb.at ], [ 0, %bb.as ], [ 0, %bb.ar ], [ 0, %bb.ai ], [ 0, %bb.ak ], [ 0, %bb.am ], [ 0, %bb.al ], [ 0, %bb.an ], [ 0, %bb.ap ], [ 0, %bb.ao ], [ 0, %bb.bq ], [ 0, %bb.bt ], [ 0, %bb.ca ], [ 0, %bb.cw ], [ 1, %bb.br ], [ 0, %bb.cy ], [ 0, %bb.cx ], [ 0, %.loopexit321 ], [ 0, %bb.bw ], [ 0, %bb.bv ], [ 1, %bb.da ], [ 0, %bb.cb ], [ 0, %write_sane_extended.exit.i ], [ 0, %bb.cq ], [ 0, %bb.ck ], [ 0, %bb.cp ], [ 0, %bb.cf ], [ 0, %bb.ce ], [ 0, %bb.cd ], [ 0, %bb.cc ], [ 0, %bb.cl ], [ 0, %bb.ci ], [ 0, %.lr.ph.i ]
  ret i32 %.1220
}

declare i32 @FLAC__stream_decoder_seek_absolute(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @FLAC__stream_decoder_process_until_end_of_stream(ptr noundef) local_unnamed_addr #2

declare i32 @FLAC__stream_decoder_process_until_end_of_link(ptr noundef) local_unnamed_addr #2

declare i32 @FLAC__stream_decoder_finish_link(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @verify_streaminfo(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.d = load i32, ptr %i.c, align 8, !tbaa !38
  tail call void @stats_print_name_and_stream_number(i32 noundef 1, ptr noundef %i.b, i32 noundef %i.d) #13
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !46
  tail call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.e, i32 noundef 1, ptr noundef nonnull @.str.111) #13
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !52
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1336
  %i.i = load i32, ptr %i.h, align 8, !tbaa !57
  %.not28 = icmp eq i32 %i.i, 0
  br i1 %.not28, label %.thread40.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.k = load i64, ptr %i.j, align 8, !tbaa !55   ; 2 uses
  %.not29 = icmp eq i64 %i.k, 0
  br i1 %.not29, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.m = load i64, ptr %i.l, align 8, !tbaa !35
  %i.n = icmp ugt i64 %i.k, %i.m
  br i1 %i.n, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !34
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.r = load i32, ptr %i.q, align 8, !tbaa !38
  tail call void @stats_print_name_and_stream_number(i32 noundef 1, ptr noundef %i.p, i32 noundef %i.r) #13
  %i.s = load ptr, ptr @stderr, align 8, !tbaa !46
  tail call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.s, i32 noundef 1, ptr noundef nonnull @.str.112) #13
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load i32, ptr %i.t, align 8, !tbaa !52
  br label %bb.j

bb.g:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1340
  %i.w = load i32, ptr %i.v, align 4, !tbaa !69
  %.not32 = icmp eq i32 %i.w, 0
  %spec.select = select i1 %.not32, ptr @.str.114, ptr @.str.115
  br label %.thread40.sink.split

.thread:                                          ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1340
  %i.y = load i32, ptr %i.x, align 4, !tbaa !69
  %.not3239 = icmp eq i32 %i.y, 0
  br i1 %.not3239, label %.thread40.sink.split, label %.thread40

.thread40.sink.split:                             ; preds = %bb.g, %.thread, %bb.c
  %.str.114.sink = phi ptr [ @.str.113, %bb.c ], [ %spec.select, %bb.g ], [ @.str.114, %.thread ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !34
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !38
  tail call void @stats_print_name_and_stream_number(i32 noundef 1, ptr noundef %i.aa, i32 noundef %i.ac) #13
  %i.ad = load ptr, ptr @stderr, align 8, !tbaa !46
  tail call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.ad, i32 noundef 1, ptr noundef nonnull %.str.114.sink) #13
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !47
  %.not33 = icmp eq i32 %i.af, 0
  %i.ag = zext i1 %.not33 to i32
  br label %.thread40

.thread40:                                        ; preds = %.thread40.sink.split, %.thread
  %.0.shrunk = phi i32 [ 1, %.thread ], [ %i.ag, %.thread40.sink.split ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !34
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !38
  tail call void @stats_print_name_and_stream_number(i32 noundef 2, ptr noundef %i.ai, i32 noundef %i.ak) #13
  %i.al = load ptr, ptr @stderr, align 8, !tbaa !46
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.an = load i32, ptr %i.am, align 8, !tbaa !29
  %.not36 = icmp eq i32 %i.an, 0
  br i1 %.not36, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.thread40
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1188
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !30
  %.not37 = icmp eq i32 %i.ap, 0
  %i.aq = select i1 %.not37, ptr @.str.119, ptr @.str.118
  br label %bb.i

bb.i:                                             ; preds = %.thread40, %bb.h
  %i.ar = phi ptr [ %i.aq, %bb.h ], [ @.str.117, %.thread40 ]
  tail call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.al, i32 noundef 2, ptr noundef nonnull @.str.116, ptr noundef nonnull %i.ar) #13
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.i, %bb.b
  %.1 = phi i32 [ %i.g, %bb.b ], [ %i.u, %bb.f ], [ %.0.shrunk, %bb.i ]
  ret i32 %.1
}

declare ptr @FLAC__stream_decoder_get_resolved_state_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @ftello64(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fseeko64(ptr noundef captures(none), i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @write_riff_wave_fmt_chunk_body(ptr nofree noundef captures(none) %0, i32 noundef range(i32 0, 2) %1, i32 noundef range(i32 0, 2) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #10 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i16, align 2                      ; 4 uses
  %i.d = alloca i16, align 2                      ; 4 uses
  %i.e = alloca i16, align 2                      ; 4 uses
  %i.f = alloca i16, align 2                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca i16, align 2                      ; 4 uses
  %i.j = alloca i16, align 2                      ; 4 uses
  %.not = icmp eq i32 %1, 0                       ; 2 uses
  %i.k = select i1 %.not, i16 1, i16 -2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i16 %i.k, ptr %i.j, align 2, !tbaa !68
  %i.l = call i64 @fwrite(ptr noundef nonnull %i.j, i64 noundef 1, i64 noundef 2, ptr noundef %0)
  %.not36 = icmp eq i64 %i.l, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br i1 %.not36, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.m = trunc i32 %4 to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i16 %i.m, ptr %i.i, align 2, !tbaa !68
  %i.n = call i64 @fwrite(ptr noundef nonnull %i.i, i64 noundef 1, i64 noundef 2, ptr noundef %0)
  %.not37 = icmp eq i64 %i.n, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br i1 %.not37, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i32 %5, ptr %i.h, align 4, !tbaa !14
  %i.o = call i64 @fwrite(ptr noundef nonnull %i.h, i64 noundef 1, i64 noundef 4, ptr noundef %0)
  %.not38 = icmp eq i64 %i.o, 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br i1 %.not38, label %bb.d, label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.p = mul i32 %5, %4
  %i.q = add i32 %3, 7                            ; 2 uses
  %i.r = lshr i32 %i.q, 3                         ; 2 uses
  %i.s = mul i32 %i.p, %i.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i32 %i.s, ptr %i.g, align 4, !tbaa !14
  %i.t = call i64 @fwrite(ptr noundef nonnull %i.g, i64 noundef 1, i64 noundef 4, ptr noundef %0)
  %.not39 = icmp eq i64 %i.t, 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br i1 %.not39, label %bb.e, label %bb.o

bb.e:                                             ; preds = %bb.d
  %i.u = mul i32 %i.r, %4
  %i.v = trunc i32 %i.u to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i16 %i.v, ptr %i.f, align 2, !tbaa !68
  %i.w = call i64 @fwrite(ptr noundef nonnull %i.f, i64 noundef 1, i64 noundef 2, ptr noundef %0)
  %.not40 = icmp eq i64 %i.w, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br i1 %.not40, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.x = trunc i32 %i.q to i16
  %i.y = and i16 %i.x, -8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i16 %i.y, ptr %i.e, align 2, !tbaa !68
  %i.z = call i64 @fwrite(ptr noundef nonnull %i.e, i64 noundef 1, i64 noundef 2, ptr noundef %0)
  %.not41 = icmp eq i64 %i.z, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br i1 %.not41, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  br i1 %.not, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i16 22, ptr %i.d, align 2, !tbaa !68
  %i.aa = call i64 @fwrite(ptr noundef nonnull %i.d, i64 noundef 1, i64 noundef 2, ptr noundef %0)
  %.not42 = icmp eq i64 %i.aa, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %.not42, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.ab = trunc i32 %3 to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i16 %i.ab, ptr %i.c, align 2, !tbaa !68
  %i.ac = call i64 @fwrite(ptr noundef nonnull %i.c, i64 noundef 1, i64 noundef 2, ptr noundef %0)
  %.not43 = icmp eq i64 %i.ac, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %.not43, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %6, ptr %i.b, align 4, !tbaa !14
  %i.ad = call i64 @fwrite(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef 4, ptr noundef %0)
  %.not44 = icmp eq i64 %i.ad, 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %.not44, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.ae = tail call i64 @fwrite(ptr noundef nonnull @.str.107, i64 noundef 1, i64 noundef 16, ptr noundef %0)
  %.not35 = icmp eq i64 %i.ae, 16
  br i1 %.not35, label %bb.n, label %bb.o

bb.l:                                             ; preds = %bb.g
  %.not30 = icmp eq i32 %2, 0
  br i1 %.not30, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 0, ptr %i.a, align 2, !tbaa !68
  %i.af = call i64 @fwrite(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 2, ptr noundef %0)
  %.not45 = icmp eq i64 %i.af, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %.not45, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.k
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.k, %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %bb.n
  %.0 = phi i32 [ 0, %bb.j ], [ 1, %bb.n ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.f ], [ 0, %bb.k ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.m ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind sspstrong uwtable
define internal fastcc noundef range(i32 0, 2) i32 @write_big_endian_uint32(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #10 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  store i32 %2, ptr %i.a, align 4, !tbaa !13
  %i.b = call i64 @fwrite(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 4, ptr noundef %0)
  %i.c = icmp eq i64 %i.b, 4
  %i.d = zext i1 %i.c to i32
  ret i32 %i.d
}

declare i32 @FLAC__stream_decoder_finish(ptr noundef) local_unnamed_addr #2

declare void @FLAC__stream_decoder_delete(ptr noundef) local_unnamed_addr #2

declare void @flac__analyze_finish(i64) local_unnamed_addr #2

declare i32 @flac__foreign_metadata_write_to_iff(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @flac__foreign_metadata_compare_with_iff(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #8

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { alwaysinline nobuiltin nounwind sspstrong uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(none) }
attributes #15 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"double", !5, i64 0}
!10 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !9, i64 16}
!11 = !{!"long", !5, i64 0}
!12 = !{!"", !6, i64 0, !6, i64 4, !5, i64 8}
!13 = !{!5, !5, i64 0}
!14 = !{!6, !6, i64 0}
!15 = !{!"any pointer", !5, i64 0}
!16 = !{!"p1 float", !15, i64 0}
!17 = !{!"float", !5, i64 0}
!18 = !{!"", !16, i64 0, !11, i64 8, !9, i64 16, !17, i64 24, !5, i64 28, !5, i64 540, !5, i64 1052, !6, i64 1084, !6, i64 1088}
!19 = !{!"", !10, i64 0, !6, i64 24, !9, i64 32, !18, i64 40}
!20 = !{!"", !6, i64 0, !6, i64 4}
!21 = !{!"p1 omnipotent char", !15, i64 0}
!22 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !5, i64 24, !5, i64 32}
!23 = !{!"p1 _ZTS8_IO_FILE", !15, i64 0}
!24 = !{!"", !6, i64 0, !6, i64 4, !11, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !19, i64 48, !6, i64 1184, !6, i64 1188, !20, i64 1192, !15, i64 1200, !15, i64 1208, !15, i64 1216, !21, i64 1224, !21, i64 1232, !21, i64 1240, !11, i64 1248, !6, i64 1256, !22, i64 1264, !6, i64 1304, !6, i64 1308, !6, i64 1312, !6, i64 1316, !6, i64 1320, !6, i64 1324, !6, i64 1328, !6, i64 1332, !6, i64 1336, !6, i64 1340, !11, i64 1344, !6, i64 1352, !6, i64 1356, !6, i64 1360, !6, i64 1364, !6, i64 1368, !11, i64 1376, !6, i64 1384, !15, i64 1392, !23, i64 1400, !15, i64 1408, !11, i64 1416, !11, i64 1424, !11, i64 1432, !11, i64 1440, !11, i64 1448}
!25 = !{!24, !6, i64 20}
!26 = !{!24, !6, i64 24}
!27 = !{!24, !6, i64 72}
!28 = !{!24, !9, i64 80}
!29 = !{!24, !6, i64 1184}
!30 = !{!24, !6, i64 1188}
!31 = !{!24, !15, i64 1200}
!32 = !{!24, !15, i64 1208}
!33 = !{!24, !15, i64 1216}
!34 = !{!24, !21, i64 1224}
!35 = !{!24, !11, i64 1248}
!36 = !{!24, !6, i64 1256}
!37 = !{!24, !6, i64 1320}
!38 = !{!24, !6, i64 1368}
!39 = !{!24, !6, i64 1324}
!40 = !{!24, !6, i64 1360}
!41 = !{!24, !6, i64 1364}
!42 = !{!24, !11, i64 1376}
!43 = !{!24, !6, i64 1384}
!44 = !{!24, !15, i64 1408}
!45 = !{!24, !23, i64 1400}
!46 = !{!23, !23, i64 0}
!47 = !{!24, !6, i64 28}
!48 = !{!24, !15, i64 1392}
!49 = !{!24, !6, i64 48}
!50 = !{!21, !21, i64 0}
!51 = !{!24, !6, i64 1312}
!52 = !{!24, !6, i64 32}
!53 = !{!24, !6, i64 1304}
!54 = !{!24, !6, i64 1356}
!55 = !{!24, !11, i64 1344}
!56 = !{!24, !6, i64 1308}
!57 = !{!24, !6, i64 1336}
!58 = !{!24, !6, i64 1352}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!24, !11, i64 1416}
!61 = !{!24, !11, i64 1424}
!62 = !{!24, !11, i64 1432}
!63 = !{!"short", !5, i64 0}
!64 = !{!12, !6, i64 0}
!65 = !{!11, !11, i64 0}
!66 = !{!24, !6, i64 56}
!67 = !{!24, !6, i64 60}
!68 = !{!63, !63, i64 0}
!69 = !{!24, !6, i64 1340}
!70 = distinct !{!70, !59}
!71 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20}
!72 = !{!"", !6, i64 0, !6, i64 4, !10, i64 8, !6, i64 32, !6, i64 36, !11, i64 40, !6, i64 48, !12, i64 56, !12, i64 72, !6, i64 88, !71, i64 92, !6, i64 116, !6, i64 120, !6, i64 124, !6, i64 128, !5, i64 136}
!73 = !{!72, !6, i64 128}
!74 = !{!72, !6, i64 48}
!75 = !{!72, !11, i64 40}
!76 = !{!72, !6, i64 124}
!77 = !{!72, !6, i64 88}
!78 = !{!24, !11, i64 8}
!79 = !{!24, !6, i64 16}
!80 = !{!72, !6, i64 120}
!81 = !{!24, !21, i64 1232}
!82 = !{!24, !21, i64 1240}
!83 = !{!24, !6, i64 0}
!84 = !{!24, !6, i64 4}
!85 = !{!24, !6, i64 36}
!86 = distinct !{!86, !59}
!87 = distinct !{!87, !143}
!88 = distinct !{!88, !59}
!89 = distinct !{!89, i1 true, !"memcpy.inline"}
!90 = distinct !{!90, !89, !"memcpy.inline: argument 1"}
!91 = distinct !{!91, !89, !"memcpy.inline: argument 0"}
!92 = distinct !{!92, !59}
!93 = distinct !{!93, !143}
!94 = distinct !{!94, !59, !145, !146}
!95 = distinct !{!95, !59, !146, !145}
!96 = distinct !{!96, !59}
!97 = distinct !{!97, !59}
!98 = distinct !{!98, !59}
!99 = distinct !{!99, !59}
!100 = distinct !{!100, !59}
!101 = distinct !{!101, !59}
!102 = distinct !{!102, !59}
!103 = distinct !{!103, !143}
!104 = distinct !{!104, !59}
!105 = distinct !{!105, !143}
!106 = distinct !{!106, !143}
!107 = distinct !{!107, !59}
!108 = distinct !{!108, !143}
!109 = distinct !{!109, !59}
!110 = distinct !{!110, !143}
!111 = distinct !{!111, !59}
!112 = distinct !{!112, !59}
!113 = distinct !{!113, !59}
!114 = distinct !{!114, !59}
!115 = distinct !{!115, !59}
!116 = distinct !{!116, !59}
!117 = distinct !{!117, !59}
!118 = distinct !{!118, !143}
!119 = distinct !{!119, !59}
!120 = distinct !{!120, !59}
!121 = distinct !{!121, !59}
!122 = distinct !{!122, !59}
!123 = distinct !{!123, !143}
!124 = distinct !{!124, !59}
!125 = distinct !{!125, !59}
!126 = distinct !{!126, !143}
!127 = distinct !{!127, !59}
!128 = distinct !{!128, !59}
!129 = !{!"", !63, i64 0}
!130 = !{!"", !22, i64 0, !5, i64 40, !129, i64 3624}
!131 = !{!130, !6, i64 16}
!132 = !{!130, !6, i64 8}
!133 = !{!24, !6, i64 1328}
!134 = !{!24, !6, i64 1332}
!135 = !{!130, !6, i64 0}
!136 = !{!130, !6, i64 4}
!137 = !{!24, !6, i64 1272}
!138 = !{!24, !6, i64 1264}
!139 = !{!24, !11, i64 1448}
!140 = !{!24, !11, i64 1440}
!141 = !{!"p1 int", !15, i64 0}
!142 = !{!141, !141, i64 0}
!143 = !{!"llvm.loop.unroll.disable"}
!144 = !{!91, !90}
!145 = !{!"llvm.loop.isvectorized", i32 1}
!146 = !{!"llvm.loop.unroll.runtime.disable"}
!147 = !{!"FLAC__StreamMetadata", !6, i64 0, !6, i64 4, !6, i64 8, !5, i64 16}
!148 = !{!147, !6, i64 0}
!149 = !{!24, !6, i64 52}
!150 = !{!9, !9, i64 0}
!151 = !{!24, !9, i64 64}
!152 = !{!24, !6, i64 1316}
!153 = distinct !{!153, !59}
!154 = distinct !{!154, !59}
!155 = distinct !{!155, !59}
!156 = distinct !{!156, !59}
!157 = distinct !{!157, !59}
!158 = distinct !{!158, !59}
!159 = distinct !{!159, !59}
!160 = !{!"", !6, i64 0, !15, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60}
!161 = !{!160, !11, i64 16}
!162 = !{!160, !11, i64 24}
!163 = !{!160, !11, i64 32}
!164 = !{!160, !15, i64 8}
!165 = !{!"", !11, i64 0, !6, i64 8}
!166 = !{!165, !6, i64 8}
!167 = !{!160, !6, i64 56}
end_hunk_1
