Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flac/original/encode?download=true
inline.NumInlined: 81
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 17
begin_hunk_0_@flac__encode_file:bb.a
  %i.auz = load i32, ptr %i.agn, align 8, !tbaa !43
  %i.ava = load i32, ptr %i.agp, align 4, !tbaa !44
  %i.avb = call fastcc i32 @format_input(i32 noundef %i.auv, i32 noundef %i.auw, i32 noundef %i.aux, i32 noundef %i.auy, i32 noundef %i.auz, i32 noundef %i.ava, ptr noundef %i.r)
  %.not301 = icmp eq i32 %i.avb, 0
  br i1 %.not301, label %bb.mq, label %bb.mr

bb.mq:                                            ; preds = %bb.mp
  call fastcc void @EncoderSession_finish_error(ptr noundef %14)
  br label %EncoderSession_finish_error.exit373

bb.mr:                                            ; preds = %bb.mp
  %i.avc = call fastcc i32 @EncoderSession_process(ptr noundef nonnull %14, ptr noundef nonnull @input_, i32 noundef %i.auv)
  %.not302 = icmp eq i32 %i.avc, 0
  br i1 %.not302, label %bb.ms, label %.critedge336

bb.ms:                                            ; preds = %bb.mr
  call fastcc void @print_error_with_state(ptr noundef nonnull %14, ptr noundef nonnull @.str.15)
  call fastcc void @EncoderSession_finish_error(ptr noundef %14)
  br label %EncoderSession_finish_error.exit373

.critedge336:                                     ; preds = %bb.mr
  %i.avd = load i64, ptr %i.atq, align 8, !tbaa !29
  %i.ave = sub i64 %i.avd, %i.auc                 ; 2 uses
  store i64 %i.ave, ptr %i.atq, align 8, !tbaa !29
  br label %bb.mt

bb.mt:                                            ; preds = %._crit_edge2200, %.critedge336
  %i.avf = phi i64 [ %.pre2201, %._crit_edge2200 ], [ %i.ave, %.critedge336 ] ; 2 uses
  %.not299 = icmp eq i64 %i.avf, 0
  br i1 %.not299, label %.critedge328, label %fread.inline.exit, !llvm.loop !82

bb.mu:                                            ; preds = %.thread550, %.thread550
  %i.avg = getelementptr inbounds nuw i8, ptr %14, i64 160 ; 4 uses
  %i.avh = getelementptr inbounds nuw i8, ptr %14, i64 8400 ; 2 uses
  %i.avi = getelementptr inbounds nuw i8, ptr %14, i64 8392
  br label %bb.mv

bb.mv:                                            ; preds = %bb.na, %bb.mu
  %.0205 = phi i32 [ 0, %bb.mu ], [ %i.avt, %bb.na ]
  %i.avj = load i32, ptr %i.avh, align 8, !tbaa !29 ; 2 uses
  %.not296 = icmp eq i32 %i.avj, 0
  %i.avk = load i64, ptr %i.avi, align 8
  %i.avl = icmp ne i64 %i.avk, 0
  %i.avm = select i1 %.not296, i1 %i.avl, i1 false
  br i1 %i.avm, label %bb.mw, label %.thread573

bb.mw:                                            ; preds = %bb.mv
  %i.avn = load ptr, ptr %i.avg, align 8, !tbaa !29
  %i.avo = call i32 @FLAC__stream_decoder_get_state(ptr noundef %i.avn) #18 ; 2 uses
  %i.avp = load i32, ptr %i.w, align 4, !tbaa !55
  %i.avq = icmp ne i32 %i.avp, 0
  %i.avr = icmp eq i32 %i.avo, 4                  ; 2 uses
  %or.cond42 = select i1 %i.avq, i1 %i.avr, i1 false
  br i1 %or.cond42, label %.thread573thread-pre-split, label %bb.mx

bb.mx:                                            ; preds = %bb.mw
  %i.avs = add nuw nsw i32 %.0205, 1
  %i.avt = select i1 %i.avr, i32 %i.avs, i32 0    ; 2 uses
  %i.avu = icmp samesign ugt i32 %i.avt, 1
  br i1 %i.avu, label %bb.my, label %bb.mz

bb.my:                                            ; preds = %bb.mx
  %i.avv = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.avw = load ptr, ptr %i.ah, align 8, !tbaa !24
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.avv, i32 noundef 1, ptr noundef nonnull @.str.18, ptr noundef %i.avw, i32 noundef 2) #18
  br label %.thread573thread-pre-split

bb.mz:                                            ; preds = %bb.mx
  %i.avx = icmp eq i32 %i.avo, 7
  br i1 %i.avx, label %.thread576, label %bb.na

bb.na:                                            ; preds = %bb.mz
  %i.avy = load ptr, ptr %i.avg, align 8, !tbaa !29
  %i.avz = call i32 @FLAC__stream_decoder_process_single(ptr noundef %i.avy) #18
  %.not297 = icmp eq i32 %i.avz, 0
  br i1 %.not297, label %.thread576, label %bb.mv

.thread576:                                       ; preds = %bb.mz, %bb.na
  %i.awa = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.awb = load ptr, ptr %i.ah, align 8, !tbaa !24
  %i.awc = load ptr, ptr %i.avg, align 8, !tbaa !29
  %i.awd = call ptr @FLAC__stream_decoder_get_resolved_state_string(ptr noundef %i.awc) #18
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.awa, i32 noundef 1, ptr noundef nonnull @.str.19, ptr noundef %i.awb, ptr noundef %i.awd) #18
  call fastcc void @EncoderSession_finish_error(ptr noundef %14)
  br label %EncoderSession_finish_error.exit373

.thread573thread-pre-split:                       ; preds = %bb.mw, %bb.my
  %.pr = load i32, ptr %i.avh, align 8, !tbaa !29
  br label %.thread573

.thread573:                                       ; preds = %bb.mv, %.thread573thread-pre-split
  %i.awe = phi i32 [ %.pr, %.thread573thread-pre-split ], [ %i.avj, %bb.mv ]
  %.not298 = icmp eq i32 %i.awe, 0
  br i1 %.not298, label %.critedge328, label %bb.nb

bb.nb:                                            ; preds = %.thread573
  %i.awf = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.awg = load ptr, ptr %i.ah, align 8, !tbaa !24
  %i.awh = load ptr, ptr %i.avg, align 8, !tbaa !29
  %i.awi = call ptr @FLAC__stream_decoder_get_resolved_state_string(ptr noundef %i.awh) #18
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.awf, i32 noundef 1, ptr noundef nonnull @.str.19, ptr noundef %i.awg, ptr noundef %i.awi) #18
  call fastcc void @EncoderSession_finish_error(ptr noundef %14)
  br label %EncoderSession_finish_error.exit373

bb.nc:                                            ; preds = %.thread550
  call fastcc void @EncoderSession_finish_error(ptr noundef %14)
  br label %EncoderSession_finish_error.exit373

.critedge328:                                     ; preds = %bb.mt, %bb.me, %bb.lx, %bb.ma, %bb.lk, %.thread2263, %bb.ll, %bb.ls, %bb.mf, %.preheader581, %.preheader, %.thread573
  %.val = load i32, ptr %i.ap, align 8, !tbaa !28
  %i.awj = add i32 %.val, -6
  %narrow.i422 = icmp ult i32 %i.awj, -5
  %i.awk = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.awl = select i1 %narrow.i422, ptr null, ptr %i.awk
  %i.awm = getelementptr inbounds nuw i8, ptr %6, i64 1152
  %i.awn = load i32, ptr %i.awm, align 8, !tbaa !95
  %i.awo = call fastcc i32 @EncoderSession_finish_ok(ptr noundef %14, ptr noundef %i.awl, i32 noundef %i.awn)
  br label %EncoderSession_finish_error.exit373

.critedge:                                        ; preds = %bb.z, %bb.y, %bb.x, %bb.t, %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #18
  br label %EncoderSession_finish_error.exit373

EncoderSession_finish_error.exit373:              ; preds = %bb.g, %bb.e, %.tail.i, %.loopexit2182, %.loopexit2183, %.loopexit2185, %.loopexit2181, %fread.inline.exit343, %.loopexit2193, %.loopexit2190, %.loopexit2192, %.loopexit2191, %bb.mq, %bb.mm, %bb.mo, %bb.ms, %bb.io, %bb.iw, %bb.jg, %bb.jt, %bb.jq, %bb.jn, %bb.kp, %bb.kz, %bb.kx, %bb.kv, %bb.nb, %.thread576, %bb.ir, %fread.inline.exit361.peel._crit_edge, %bb.mh, %.loopexit2184, %bb.nc, %bb.la, %bb.jl, %bb.ji, %bb.jv, %bb.it, %bb.ig, %bb.if, %bb.ie, %bb.hz, %bb.hy, %bb.hx, %bb.hs, %bb.hr, %bb.hq, %bb.hl, %bb.hk, %bb.hj, %bb.hf, %bb.he, %bb.hd, %bb.ge, %bb.gd, %bb.gc, %bb.fx, %bb.fw, %bb.fv, %bb.dq, %bb.dp, %bb.do, %.critedge, %.critedge328
  %.26 = phi i32 [ 1, %bb.hf ], [ 1, %bb.hl ], [ 1, %bb.hz ], [ %i.awo, %.critedge328 ], [ 1, %bb.ig ], [ 1, %bb.hs ], [ 1, %.critedge ], [ 1, %.loopexit2183 ], [ 1, %bb.dq ], [ 1, %bb.fx ], [ 1, %bb.ge ], [ 1, %bb.do ], [ 1, %bb.dp ], [ 1, %bb.fv ], [ 1, %bb.fw ], [ 1, %bb.gc ], [ 1, %bb.gd ], [ 1, %bb.hd ], [ 1, %bb.he ], [ 1, %bb.hj ], [ 1, %bb.hk ], [ 1, %bb.hq ], [ 1, %bb.hr ], [ 1, %bb.hx ], [ 1, %bb.hy ], [ 1, %bb.ie ], [ 1, %bb.if ], [ 1, %bb.it ], [ 1, %bb.jv ], [ 1, %bb.ji ], [ 1, %bb.jl ], [ 1, %.loopexit2182 ], [ 1, %bb.la ], [ 1, %bb.nc ], [ 1, %.loopexit2184 ], [ 1, %bb.mh ], [ 1, %fread.inline.exit361.peel._crit_edge ], [ 1, %bb.ir ], [ 1, %.thread576 ], [ 1, %bb.nb ], [ 1, %bb.kv ], [ 1, %bb.kx ], [ 1, %bb.kz ], [ 1, %bb.kp ], [ 1, %bb.jn ], [ 1, %bb.jq ], [ 1, %bb.jt ], [ 1, %bb.jg ], [ 1, %bb.iw ], [ 1, %bb.io ], [ 1, %bb.ms ], [ 1, %bb.mo ], [ 1, %bb.mm ], [ 1, %bb.mq ], [ 1, %.loopexit2191 ], [ 1, %.loopexit2192 ], [ 1, %.loopexit2190 ], [ 1, %.loopexit2193 ], [ 1, %fread.inline.exit343 ], [ 1, %.loopexit2181 ], [ 1, %.loopexit2185 ], [ 1, %.tail.i ], [ 1, %bb.e ], [ 1, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  ret i32 %.26
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @flac__foreign_metadata_read_from_wave(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @flac__foreign_metadata_read_from_wave64(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @flac__foreign_metadata_read_from_aiff(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @flac__utils_printf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @EncoderSession_finish_error(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i64, ptr %i.a, align 8, !tbaa !40
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !32
  tail call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.c, i32 noundef 2, ptr noundef nonnull @.str.90) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8408
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.f = tail call i32 @FLAC__stream_encoder_get_state(ptr noundef %i.e) #18
  %i.g = icmp eq i32 %i.f, 4
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @print_verify_error(ptr noundef %0)
  tail call fastcc void @EncoderSession_destroy(ptr noundef %0)
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !23
  %.not8 = icmp eq i32 %i.i, 0
  tail call fastcc void @EncoderSession_destroy(ptr noundef %0)
  br i1 %.not8, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !26
  %i.l = tail call i32 @unlink(ptr noundef %i.k) #18 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  ret void
}

declare ptr @FLAC__stream_decoder_new() local_unnamed_addr #2

declare i32 @flac__utils_check_empty_skip_until_specification(ptr noundef) local_unnamed_addr #2

declare i32 @FLAC__format_sample_rate_is_valid(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @ftello64(ptr noundef captures(none)) local_unnamed_addr #3

declare i32 @flac__utils_canonicalize_skip_until_specification(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @stats_new_line() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @EncoderSession_init_encoder(ptr noundef nonnull %0, ptr nofree noundef byval(%struct.encode_options_t) align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 9 uses
  %2 = alloca %struct.FLAC__StreamMetadata, align 8 ; 6 uses
  %3 = alloca %struct.static_metadata_t, align 8  ; 79 uses
  %i.e = alloca [2000 x i8], align 16             ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.h = load i32, ptr %i.g, align 4, !tbaa !42   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.j = load i32, ptr %i.i, align 8, !tbaa !43
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.l = load i32, ptr %i.k, align 4, !tbaa !44
  %i.m = sub i32 %i.j, %i.l                       ; 2 uses
  %i.n = load i32, ptr %i.f, align 8, !tbaa !41   ; 10 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !28
  %i.q = and i32 %i.p, -2
  %switch.not = icmp eq i32 %i.q, 6               ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %spec.select517 = select i1 %switch.not, ptr %4, ptr null ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.r = add i32 %i.h, -1
  %or.cond = icmp ult i32 %i.r, 2
  %i.s = icmp eq i32 %i.m, 16
  %or.cond16 = select i1 %or.cond, i1 %i.s, i1 false
  %i.t = icmp eq i32 %i.n, 44100
  %narrow = select i1 %or.cond16, i1 %i.t, i1 false ; 2 uses
  %i.u = zext i1 %narrow to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  store i32 0, ptr %3, align 8, !tbaa !59
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 26 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 1144
  %i.x = load i32, ptr %i.w, align 8, !tbaa !107  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store i32 %i.x, ptr %i.y, align 8, !tbaa !60
  store i8 0, ptr %i.e, align 16, !tbaa !29
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.z = add i32 %i.h, -3
  %or.cond18 = icmp ult i32 %i.z, -2
  br i1 %or.cond18, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aa = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !24
  tail call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.aa, i32 noundef 1, ptr noundef nonnull @.str.116, ptr noundef %i.ac, i32 noundef %i.h) #18
  br label %.critedge503

bb.d:                                             ; preds = %bb.b
  %i.ad = tail call i32 @grabbag__replaygain_is_valid_sample_frequency(i32 noundef %i.n) #18
  %.not438 = icmp eq i32 %i.ad, 0
  br i1 %.not438, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ae = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !24
  tail call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.ae, i32 noundef 1, ptr noundef nonnull @.str.117, ptr noundef %i.ag, i32 noundef %i.n) #18
  br label %.critedge503

bb.f:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 1136
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !108
  %.not439 = icmp eq i32 %i.ai, 0
  br i1 %.not439, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = tail call i32 @grabbag__replaygain_init(i32 noundef %i.n) #18
  %.not440 = icmp eq i32 %i.aj, 0
  br i1 %.not440, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ak = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !24
  tail call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.ak, i32 noundef 1, ptr noundef nonnull @.str.118, ptr noundef %i.am) #18
  br label %.critedge503

bb.i:                                             ; preds = %bb.f, %bb.g, %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 16 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 1112
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !109 ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 33 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !24 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 7 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !40 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 12 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %i.aw = icmp eq ptr %i.ap, null
  br i1 %i.aw, label %bb.w, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = icmp eq i64 %i.at, 0
  br i1 %i.ax, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ay = load ptr, ptr @stderr, align 8, !tbaa !32
  tail call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.ay, i32 noundef 1, ptr noundef nonnull @.str.140, ptr noundef %i.ar) #18
  br label %parse_cuesheet.exit.thread

bb.l:                                             ; preds = %bb.j
  %i.az = tail call noalias ptr @fopen64(ptr noundef nonnull %i.ap, ptr noundef nonnull @.str.141) ; 3 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bb = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.bc = tail call ptr @__errno_location() #19
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !14
  %i.be = tail call ptr @strerror(i32 noundef %i.bd) #18
  tail call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.bb, i32 noundef 1, ptr noundef nonnull @.str.142, ptr noundef %i.ar, ptr noundef nonnull %i.ap, ptr noundef %i.be) #18
  br label %parse_cuesheet.exit.thread

bb.n:                                             ; preds = %bb.l
  %i.bf = call ptr @grabbag__cuesheet_parse(ptr noundef nonnull %i.az, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c, i32 noundef %i.n, i32 noundef range(i32 0, 2) %i.u, i64 noundef %i.at) #18 ; 3 uses
  store ptr %i.bf, ptr %i.an, align 8, !tbaa !61
  %i.bg = call i32 @fclose(ptr noundef nonnull %i.az) ; 0 uses
  %i.bh = icmp eq ptr %i.bf, null
  br i1 %i.bh, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bi = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.bj = load i32, ptr %i.c, align 4, !tbaa !14
  %i.bk = load ptr, ptr %i.d, align 8, !tbaa !38
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.bi, i32 noundef 1, ptr noundef nonnull @.str.143, ptr noundef %i.ar, ptr noundef nonnull %i.ap, i32 noundef %i.bj, ptr noundef %i.bk) #18
  br label %parse_cuesheet.exit.thread

bb.p:                                             ; preds = %bb.n
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bm = call i32 @FLAC__format_cuesheet_is_legal(ptr noundef nonnull %i.bl, i32 noundef 0, ptr noundef nonnull %i.d) #18
  %.not.i = icmp eq i32 %i.bm, 0
  br i1 %.not.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bn = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.bo = load ptr, ptr %i.d, align 8, !tbaa !38
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.bn, i32 noundef 1, ptr noundef nonnull @.str.144, ptr noundef %i.ar, ptr noundef nonnull %i.ap, ptr noundef %i.bo) #18
  %i.bp = load ptr, ptr %i.an, align 8, !tbaa !61
  call void @FLAC__metadata_object_delete(ptr noundef %i.bp) #18
  br label %parse_cuesheet.exit.thread

bb.r:                                             ; preds = %bb.p
  %.pre733 = load ptr, ptr %i.an, align 8         ; 2 uses
  br i1 %narrow, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.bq = getelementptr inbounds nuw i8, ptr %.pre733, i64 16
  %i.br = call i32 @FLAC__format_cuesheet_is_legal(ptr noundef nonnull %i.bq, i32 noundef 1, ptr noundef nonnull %i.d) #18
  %.not31.i = icmp eq i32 %i.br, 0
  br i1 %.not31.i, label %bb.t, label %._crit_edge732

._crit_edge732:                                   ; preds = %bb.s
  %.pre = load ptr, ptr %i.an, align 8
  br label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.bs = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.bt = load ptr, ptr %i.d, align 8, !tbaa !38
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.bs, i32 noundef 1, ptr noundef nonnull @.str.145, ptr noundef %i.ar, ptr noundef nonnull %i.ap, ptr noundef %i.bt) #18
  %.not32.i = icmp eq i32 %i.av, 0
  %i.bu = load ptr, ptr %i.an, align 8, !tbaa !61 ; 3 uses
  br i1 %.not32.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @FLAC__metadata_object_delete(ptr noundef %i.bu) #18
  br label %parse_cuesheet.exit.thread

bb.v:                                             ; preds = %bb.t
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 160
  store i32 0, ptr %i.bv, align 8, !tbaa !29
  br label %bb.w

parse_cuesheet.exit.thread:                       ; preds = %bb.q, %bb.k, %bb.m, %bb.o, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %.critedge503

bb.w:                                             ; preds = %._crit_edge732, %bb.v, %bb.r, %bb.i
  %i.bw = phi ptr [ %.pre, %._crit_edge732 ], [ %i.bu, %bb.v ], [ %.pre733, %bb.r ], [ null, %bb.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 1096
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !110
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 1104
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !111 ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 1128
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !112
  %.not442 = icmp eq i32 %i.cc, 0
  %i.cd = select i1 %.not442, ptr null, ptr %i.bw ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.cg = icmp eq i32 %i.ca, 0                    ; 4 uses
  %i.ch = icmp eq ptr %i.cd, null                 ; 2 uses
  %or.cond.i = and i1 %i.cg, %i.ch
  br i1 %or.cond.i, label %.thread.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ci = load i32, ptr %0, align 8, !tbaa !113
  %.not.i518 = icmp eq i32 %i.ci, 0
  br i1 %.not.i518, label %bb.y, label %.thread.i

bb.y:                                             ; preds = %bb.x
  br i1 %i.cg, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cj = icmp sgt i32 %i.ca, -1
  %spec.select51.i = select i1 %i.cj, ptr %i.by, ptr @.str.146
  %i.ck = load i64, ptr %i.as, align 8, !tbaa !40
  %i.cl = load i32, ptr %i.f, align 8, !tbaa !41
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8424
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !31
  %i.co = call i32 @grabbag__seektable_convert_specification_to_template(ptr noundef %spec.select51.i, i32 noundef %i.cf, i64 noundef %i.ck, i32 noundef %i.cl, ptr noundef %i.cn, ptr noundef nonnull %i.b) #18
  %.not42.i = icmp eq i32 %i.co, 0
  br i1 %.not42.i, label %.loopexit647, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  br i1 %i.ch, label %bb.af, label %.preheader.i

.preheader.i:                                     ; preds = %bb.aa
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cd, i64 164 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !115 ; 2 uses
  %.not60.i = icmp eq i32 %i.cq, 0
  br i1 %.not60.i, label %._crit_edge.i, label %.lr.ph59.i

.lr.ph59.i:                                       ; preds = %.preheader.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bw, i64 168
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8424
  br label %bb.ab

bb.ab:                                            ; preds = %.critedge.i, %.lr.ph59.i
  %i.ct = phi i32 [ %i.cq, %.lr.ph59.i ], [ %i.di, %.critedge.i ]
  %indvars.iv62.i = phi i64 [ 0, %.lr.ph59.i ], [ %indvars.iv.next63.i, %.critedge.i ] ; 2 uses
  %i.cu = load ptr, ptr %i.cr, align 8, !tbaa !116
  %i.cv = getelementptr inbounds nuw [32 x i8], ptr %i.cu, i64 %indvars.iv62.i ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 23 ; 2 uses
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !118
  %.not4756.not.i = icmp eq i8 %i.cx, 0
  br i1 %.not4756.not.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ab
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ad, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.ad ] ; 2 uses
  %i.cz = load ptr, ptr %i.cs, align 8, !tbaa !31
  %i.da = load i64, ptr %i.cv, align 8, !tbaa !119
  %i.db = load ptr, ptr %i.cy, align 8, !tbaa !120
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %i.db, i64 %indvars.iv.i
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !122
  %i.de = add i64 %i.dd, %i.da
  %i.df = call i32 @FLAC__metadata_object_seektable_template_append_point(ptr noundef %i.cz, i64 noundef %i.de) #18
  %.not46.i = icmp eq i32 %i.df, 0
  br i1 %.not46.i, label %.loopexit647, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i32 1, ptr %i.b, align 4, !tbaa !14
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.dg = load i8, ptr %i.cw, align 1, !tbaa !118
  %i.dh = zext i8 %i.dg to i64
  %.not47.i = icmp samesign ult i64 %indvars.iv.next.i, %i.dh
  br i1 %.not47.i, label %bb.ac, label %.critedge.loopexit.i, !llvm.loop !96

.critedge.loopexit.i:                             ; preds = %bb.ad
  %.pre.i = load i32, ptr %i.cp, align 4, !tbaa !115
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %bb.ab
  %i.di = phi i32 [ %.pre.i, %.critedge.loopexit.i ], [ %i.ct, %bb.ab ] ; 2 uses
  %indvars.iv.next63.i = add nuw nsw i64 %indvars.iv62.i, 1 ; 2 uses
  %i.dj = zext i32 %i.di to i64
  %i.dk = icmp samesign ult i64 %indvars.iv.next63.i, %i.dj
  br i1 %i.dk, label %bb.ab, label %._crit_edge.i, !llvm.loop !97

._crit_edge.i:                                    ; preds = %.critedge.i, %.preheader.i
  %i.dl = load i32, ptr %i.b, align 4, !tbaa !14
  %.not44.i = icmp eq i32 %i.dl, 0
  br i1 %.not44.i, label %.thread.i, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge.i
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8424
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !31
  %i.do = call i32 @FLAC__metadata_object_seektable_template_sort(ptr noundef %i.dn, i32 noundef 1) #18
  %.not45.i = icmp eq i32 %i.do, 0
  br i1 %.not45.i, label %.loopexit647, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.aa
  %.pr.i = load i32, ptr %i.b, align 4, !tbaa !14
  %.not48.i = icmp eq i32 %.pr.i, 0
  br i1 %.not48.i, label %.thread.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dp = load i32, ptr %i.ce, align 8, !tbaa !22
  %.not49.i = icmp eq i32 %i.dp, 0
  br i1 %.not49.i, label %.thread.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dq = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.dr = load ptr, ptr %i.aq, align 8, !tbaa !24
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.dq, i32 noundef 1, ptr noundef nonnull @.str.147, ptr noundef %i.dr) #18
  %i.ds = load i32, ptr %i.au, align 8, !tbaa !39
  %.not50.i = icmp eq i32 %i.ds, 0
  br i1 %.not50.i, label %.thread.i, label %.loopexit647

.loopexit647:                                     ; preds = %bb.ac, %bb.z, %bb.ah, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %i.dt = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.du = load ptr, ptr %i.aq, align 8, !tbaa !24
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.dt, i32 noundef 1, ptr noundef nonnull @.str.88, ptr noundef %i.du) #18
  %i.dv = load i32, ptr %3, align 8, !tbaa !59    ; 2 uses
  %.not20.i = icmp eq i32 %i.dv, 0
  br i1 %.not20.i, label %._crit_edge.i523, label %.lr.ph.i519

.lr.ph.i519:                                      ; preds = %.loopexit647
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dx = load ptr, ptr %i.v, align 8, !tbaa !62
  %i.dy = load ptr, ptr %i.dw, align 8
  %.pre.i521 = load i32, ptr %3, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ak, %.lr.ph.i519
  %i.dz = phi i32 [ %i.dv, %.lr.ph.i519 ], [ %i.ee, %bb.ak ]
  %indvars.iv.i520 = phi i64 [ 0, %.lr.ph.i519 ], [ %indvars.iv.next.i522, %bb.ak ] ; 3 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %indvars.iv.i520
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !14
  %.not18.i = icmp eq i32 %i.eb, 0
  br i1 %.not18.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %indvars.iv.i520
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !61
  call void @FLAC__metadata_object_delete(ptr noundef %i.ed) #18
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.ee = phi i32 [ %i.dz, %bb.ai ], [ %.pre.i521, %bb.aj ] ; 2 uses
  %indvars.iv.next.i522 = add nuw nsw i64 %indvars.iv.i520, 1 ; 2 uses
  %i.ef = zext i32 %i.ee to i64
  %i.eg = icmp samesign ult i64 %indvars.iv.next.i522, %i.ef
  br i1 %i.eg, label %bb.ai, label %._crit_edge.i523, !llvm.loop !1

._crit_edge.i523:                                 ; preds = %bb.ak, %.loopexit647
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !63 ; 2 uses
  %.not.i524 = icmp eq ptr %i.ei, null
  br i1 %.not.i524, label %bb.am, label %bb.al

bb.al:                                            ; preds = %._crit_edge.i523
  call void @free(ptr noundef nonnull %i.ei) #18
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %._crit_edge.i523
  %i.ej = load ptr, ptr %i.v, align 8, !tbaa !62  ; 2 uses
  %.not16.i = icmp eq ptr %i.ej, null
  br i1 %.not16.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @free(ptr noundef nonnull %i.ej) #18
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.ek = load ptr, ptr %i.an, align 8, !tbaa !64 ; 2 uses
  %.not17.i = icmp eq ptr %i.ek, null
  br i1 %.not17.i, label %.critedge503, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @FLAC__metadata_object_delete(ptr noundef nonnull %i.ek) #18
  br label %.critedge503

.thread.i:                                        ; preds = %._crit_edge.i, %bb.af, %bb.ag, %bb.ah, %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br i1 %switch.not, label %.preheader, label %bb.ej

.preheader:                                       ; preds = %.thread.i
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 1696
  %i.em = load i32, ptr %i.el, align 8, !tbaa !123 ; 2 uses
  %.not464663.not = icmp eq i32 %i.em, 0
  br i1 %.not464663.not, label %.preheader..critedge.preheader_crit_edge, label %.lr.ph665

.preheader..critedge.preheader_crit_edge:         ; preds = %.preheader
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.pre736 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !66
  br label %.critedge.preheader

.lr.ph665:                                        ; preds = %.preheader
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 1184
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %wide.trip.count722 = zext i32 %i.em to i64
  br label %bb.aq

.critedge.preheader:                              ; preds = %.thread, %.preheader..critedge.preheader_crit_edge
  %i.eq = phi i64 [ %.pre736, %.preheader..critedge.preheader_crit_edge ], [ %i.ft, %.thread ] ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %spec.select517, i64 24 ; 17 uses
  %.not710 = icmp eq i64 %i.eq, 0
  br i1 %.not710, label %.thread823, label %.lr.ph669

.thread823:                                       ; preds = %.critedge.preheader
  store i64 0, ptr %i.er, align 8, !tbaa !66
  br label %._crit_edge738

.lr.ph669:                                        ; preds = %.critedge.preheader
  %i.es = getelementptr inbounds nuw i8, ptr %spec.select517, i64 32 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 1168
  %i.eu = load ptr, ptr %i.et, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 32
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 148
  br label %bb.ba

bb.aq:                                            ; preds = %.lr.ph665, %.thread
  %indvars.iv719 = phi i64 [ 0, %.lr.ph665 ], [ %indvars.iv.next720, %.thread ] ; 2 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv719
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !61
  %i.ez = call ptr @FLAC__metadata_object_clone(ptr noundef %i.ey) #18 ; 2 uses
  %.not463 = icmp eq ptr %i.ez, null
  br i1 %.not463, label %bb.ar, label %.thread

bb.ar:                                            ; preds = %bb.aq
  %i.fa = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.fb = load ptr, ptr %i.aq, align 8, !tbaa !24
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.fa, i32 noundef 1, ptr noundef nonnull @.str.119, ptr noundef %i.fb) #18
  %i.fc = load i32, ptr %3, align 8, !tbaa !59    ; 2 uses
  %.not20.i525 = icmp eq i32 %i.fc, 0
  br i1 %.not20.i525, label %._crit_edge.i531, label %.lr.ph.i526

.lr.ph.i526:                                      ; preds = %bb.ar
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fe = load ptr, ptr %i.v, align 8, !tbaa !62
  %i.ff = load ptr, ptr %i.fd, align 8
  %.pre.i529 = load i32, ptr %3, align 8
  br label %bb.as

bb.as:                                            ; preds = %bb.au, %.lr.ph.i526
  %i.fg = phi i32 [ %i.fc, %.lr.ph.i526 ], [ %i.fl, %bb.au ]
  %indvars.iv.i527 = phi i64 [ 0, %.lr.ph.i526 ], [ %indvars.iv.next.i530, %bb.au ] ; 3 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %indvars.iv.i527
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !14
  %.not18.i528 = icmp eq i32 %i.fi, 0
  br i1 %.not18.i528, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %indvars.iv.i527
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !61
  call void @FLAC__metadata_object_delete(ptr noundef %i.fk) #18
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.fl = phi i32 [ %i.fg, %bb.as ], [ %.pre.i529, %bb.at ] ; 2 uses
  %indvars.iv.next.i530 = add nuw nsw i64 %indvars.iv.i527, 1 ; 2 uses
  %i.fm = zext i32 %i.fl to i64
  %i.fn = icmp samesign ult i64 %indvars.iv.next.i530, %i.fm
  br i1 %i.fn, label %bb.as, label %._crit_edge.i531, !llvm.loop !1

._crit_edge.i531:                                 ; preds = %bb.au, %bb.ar
  %i.fo = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !63 ; 2 uses
  %.not.i532 = icmp eq ptr %i.fp, null
  br i1 %.not.i532, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %._crit_edge.i531
  call void @free(ptr noundef nonnull %i.fp) #18
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %._crit_edge.i531
  %i.fq = load ptr, ptr %i.v, align 8, !tbaa !62  ; 2 uses
  %.not16.i533 = icmp eq ptr %i.fq, null
  br i1 %.not16.i533, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @free(ptr noundef nonnull %i.fq) #18
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.fr = load ptr, ptr %i.an, align 8, !tbaa !64 ; 2 uses
  %.not17.i534 = icmp eq ptr %i.fr, null
  br i1 %.not17.i534, label %.critedge503, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @FLAC__metadata_object_delete(ptr noundef nonnull %i.fr) #18
  br label %.critedge503

.thread:                                          ; preds = %bb.aq
  %i.fs = load i64, ptr %i.ep, align 8, !tbaa !66 ; 2 uses
  %i.ft = add i64 %i.fs, 1                        ; 2 uses
  store i64 %i.ft, ptr %i.ep, align 8, !tbaa !66
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.fs
  store ptr %i.ez, ptr %i.fu, align 8, !tbaa !61
  %indvars.iv.next720 = add nuw nsw i64 %indvars.iv719, 1 ; 2 uses
  %exitcond723.not = icmp eq i64 %indvars.iv.next720, %wide.trip.count722
  br i1 %exitcond723.not, label %.critedge.preheader, label %bb.aq, !llvm.loop !98

bb.ba:                                            ; preds = %.lr.ph669, %.critedge
  %i.fv = phi i64 [ %i.eq, %.lr.ph669 ], [ %i.gy, %.critedge ]
  %.0381668 = phi i32 [ 0, %.lr.ph669 ], [ %spec.select, %.critedge ]
  %.0383667 = phi i64 [ 0, %.lr.ph669 ], [ %.1384, %.critedge ] ; 3 uses
  %.0385666 = phi i64 [ 0, %.lr.ph669 ], [ %i.gz, %.critedge ] ; 2 uses
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %.0385666 ; 3 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !61 ; 3 uses
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !52
  %i.fz = icmp eq i32 %i.fy, 4                    ; 2 uses
  %spec.select = select i1 %i.fz, i32 1, i32 %.0381668 ; 2 uses
  br i1 %i.fz, label %bb.bb, label %bb.bn

bb.bb:                                            ; preds = %bb.ba
  %i.ga = load i32, ptr %i.ev, align 8, !tbaa !29
  %.not469 = icmp eq i32 %i.ga, 0
  br i1 %.not469, label %bb.bn, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gb = call i32 @flac__utils_get_channel_mask_tag(ptr noundef nonnull %i.fx, ptr noundef nonnull %i.ew) #18 ; 0 uses
  %i.gc = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.gd = load ptr, ptr %i.aq, align 8, !tbaa !24
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.gc, i32 noundef 1, ptr noundef nonnull @.str.120, ptr noundef %i.gd) #18
  %i.ge = load i32, ptr %i.au, align 8, !tbaa !39
  %.not470 = icmp eq i32 %i.ge, 0
  br i1 %.not470, label %bb.bm, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gf = load i32, ptr %3, align 8, !tbaa !59    ; 2 uses
  %.not20.i536 = icmp eq i32 %i.gf, 0
  br i1 %.not20.i536, label %._crit_edge.i542, label %.lr.ph.i537

.lr.ph.i537:                                      ; preds = %bb.bd
  %i.gg = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.gh = load ptr, ptr %i.v, align 8, !tbaa !62
  %i.gi = load ptr, ptr %i.gg, align 8
  %.pre.i540 = load i32, ptr %3, align 8
  br label %bb.be

bb.be:                                            ; preds = %bb.bg, %.lr.ph.i537
  %i.gj = phi i32 [ %i.gf, %.lr.ph.i537 ], [ %i.go, %bb.bg ]
  %indvars.iv.i538 = phi i64 [ 0, %.lr.ph.i537 ], [ %indvars.iv.next.i541, %bb.bg ] ; 3 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %indvars.iv.i538
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !14
  %.not18.i539 = icmp eq i32 %i.gl, 0
  br i1 %.not18.i539, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %indvars.iv.i538
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !61
  call void @FLAC__metadata_object_delete(ptr noundef %i.gn) #18
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.go = phi i32 [ %i.gj, %bb.be ], [ %.pre.i540, %bb.bf ] ; 2 uses
  %indvars.iv.next.i541 = add nuw nsw i64 %indvars.iv.i538, 1 ; 2 uses
  %i.gp = zext i32 %i.go to i64
  %i.gq = icmp samesign ult i64 %indvars.iv.next.i541, %i.gp
  br i1 %i.gq, label %bb.be, label %._crit_edge.i542, !llvm.loop !1

._crit_edge.i542:                                 ; preds = %bb.bg, %bb.bd
  %i.gr = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !63 ; 2 uses
  %.not.i543 = icmp eq ptr %i.gs, null
  br i1 %.not.i543, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %._crit_edge.i542
  call void @free(ptr noundef nonnull %i.gs) #18
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %._crit_edge.i542
  %i.gt = load ptr, ptr %i.v, align 8, !tbaa !62  ; 2 uses
  %.not16.i544 = icmp eq ptr %i.gt, null
  br i1 %.not16.i544, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @free(ptr noundef nonnull %i.gt) #18
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.gu = load ptr, ptr %i.an, align 8, !tbaa !64 ; 2 uses
  %.not17.i545 = icmp eq ptr %i.gu, null
  br i1 %.not17.i545, label %.critedge503, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @FLAC__metadata_object_delete(ptr noundef nonnull %i.gu) #18
  br label %.critedge503

bb.bm:                                            ; preds = %bb.bc
  %i.gv = load ptr, ptr %i.fw, align 8, !tbaa !61
  call void @FLAC__metadata_object_delete(ptr noundef %i.gv) #18
  store ptr null, ptr %i.fw, align 8, !tbaa !61
  %.pre737 = load i64, ptr %i.er, align 8, !tbaa !66
  br label %.critedge

bb.bn:                                            ; preds = %bb.bb, %bb.ba
  %i.gw = add i64 %.0383667, 1
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %.0383667
  store ptr %i.fx, ptr %i.gx, align 8, !tbaa !61
  br label %.critedge

.critedge:                                        ; preds = %bb.bm, %bb.bn
  %i.gy = phi i64 [ %.pre737, %bb.bm ], [ %i.fv, %bb.bn ] ; 2 uses
  %.1384 = phi i64 [ %.0383667, %bb.bm ], [ %i.gw, %bb.bn ] ; 5 uses
  %i.gz = add nuw i64 %.0385666, 1                ; 2 uses
  %i.ha = icmp ult i64 %i.gz, %i.gy
  br i1 %i.ha, label %bb.ba, label %.critedge._crit_edge, !llvm.loop !99

.critedge._crit_edge:                             ; preds = %.critedge
  %i.hb = icmp eq i32 %spec.select, 0
  store i64 %.1384, ptr %i.er, align 8, !tbaa !66
  br i1 %i.hb, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %.critedge._crit_edge
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 1168
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !124 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 32
  %i.hf = load i32, ptr %i.he, align 8, !tbaa !29
  %.not466 = icmp ne i32 %i.hf, 0
  %i.hg = icmp ult i64 %.1384, 1024
  %or.cond638 = select i1 %.not466, i1 %i.hg, i1 false
  br i1 %or.cond638, label %bb.bq, label %bb.bu

bb.bp:                                            ; preds = %.critedge._crit_edge
  %.old = icmp ult i64 %.1384, 1024
  br i1 %.old, label %._crit_edge738, label %.lr.ph678

._crit_edge738:                                   ; preds = %.thread823, %bb.bp
  %.phi.trans.insert739 = getelementptr inbounds nuw i8, ptr %1, i64 1168
  %.pre740 = load ptr, ptr %.phi.trans.insert739, align 8, !tbaa !124
  br label %bb.bq

bb.bq:                                            ; preds = %._crit_edge738, %bb.bo
  %i.hh = phi ptr [ %.pre740, %._crit_edge738 ], [ %i.hd, %bb.bo ]
  %i.hi = call ptr @FLAC__metadata_object_clone(ptr noundef %i.hh) #18 ; 3 uses
  %i.hj = icmp eq ptr %i.hi, null
  br i1 %i.hj, label %.critedge501, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !45 ; 2 uses
  %.not467 = icmp eq i32 %i.hl, 0
  br i1 %.not467, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.hm = call i32 @flac__utils_set_channel_mask_tag(ptr noundef nonnull %i.hi, i32 noundef %i.hl) #18
  %.not468 = icmp eq i32 %i.hm, 0
  br i1 %.not468, label %.critedge501, label %bb.bt

.critedge501:                                     ; preds = %bb.bs, %bb.bq
  %i.hn = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.ho = load ptr, ptr %i.aq, align 8, !tbaa !24
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.hn, i32 noundef 1, ptr noundef nonnull @.str.121, ptr noundef %i.ho) #18
  call fastcc void @static_metadata_clear(ptr noundef %3)
  br label %.critedge503

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.hp = load i64, ptr %i.er, align 8, !tbaa !66 ; 3 uses
  %i.hq = icmp ugt i64 %i.hp, 1
  br i1 %i.hq, label %.lr.ph673, label %._crit_edge674

.lr.ph673:                                        ; preds = %bb.bt
  %scevgep = getelementptr i8, ptr %spec.select517, i64 48
  %scevgep724 = getelementptr i8, ptr %spec.select517, i64 40
  %i.hr = shl i64 %i.hp, 3
  %i.hs = add i64 %i.hr, -8
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep, ptr align 8 %scevgep724, i64 %i.hs, i1 false), !tbaa !61
  br label %._crit_edge674

._crit_edge674:                                   ; preds = %.lr.ph673, %bb.bt
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %i.hi, ptr %i.ht, align 8, !tbaa !61
  %i.hu = add i64 %i.hp, 1                        ; 2 uses
  store i64 %i.hu, ptr %i.er, align 8, !tbaa !66
  br label %bb.bu

bb.bu:                                            ; preds = %._crit_edge674, %bb.bo
  %i.hv = phi i64 [ %i.hu, %._crit_edge674 ], [ %.1384, %bb.bo ]
  %.not711 = icmp eq i64 %i.hv, 0
  br i1 %.not711, label %._crit_edge679, label %.lr.ph678

.lr.ph678:                                        ; preds = %bb.bp, %bb.bu
  %i.hw = getelementptr inbounds nuw i8, ptr %spec.select517, i64 32 ; 2 uses
  %i.hx = load ptr, ptr %i.an, align 8
  %i.hy = icmp eq ptr %i.hx, null
  %i.hz = load ptr, ptr %i.an, align 8
  %i.ia = icmp ne ptr %i.hz, null                 ; 2 uses
  br label %bb.bv

bb.bv:                                            ; preds = %.lr.ph678, %bb.dg
  %.0376676 = phi i64 [ 0, %.lr.ph678 ], [ %.2378, %bb.dg ] ; 3 uses
  %.0379675 = phi i64 [ 0, %.lr.ph678 ], [ %i.lb, %bb.dg ] ; 2 uses
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %.0379675 ; 4 uses
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !61 ; 3 uses
  %i.id = load i32, ptr %i.ic, align 8, !tbaa !52
  %i.ie = icmp eq i32 %i.id, 5
  %or.cond21 = select i1 %i.ie, i1 %i.hy, i1 false
  br i1 %or.cond21, label %bb.bw, label %.thread609

bb.bw:                                            ; preds = %bb.bv
  %i.if = load i64, ptr %i.as, align 8, !tbaa !40 ; 2 uses
  %i.ig = icmp eq i64 %i.if, 0
  br i1 %i.ig, label %bb.bx, label %bb.ch

bb.bx:                                            ; preds = %bb.bw
  %i.ih = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.ii = load ptr, ptr %i.aq, align 8, !tbaa !24
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.ih, i32 noundef 1, ptr noundef nonnull @.str.122, ptr noundef %i.ii) #18
  %i.ij = load i32, ptr %i.au, align 8, !tbaa !39
  %.not476 = icmp eq i32 %i.ij, 0
  br i1 %.not476, label %.thread609, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ik = load i32, ptr %3, align 8, !tbaa !59    ; 2 uses
  %.not20.i547 = icmp eq i32 %i.ik, 0
  br i1 %.not20.i547, label %._crit_edge.i553, label %.lr.ph.i548

.lr.ph.i548:                                      ; preds = %bb.by
  %i.il = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.im = load ptr, ptr %i.v, align 8, !tbaa !62
  %i.in = load ptr, ptr %i.il, align 8
  %.pre.i551 = load i32, ptr %3, align 8
  br label %bb.bz

bb.bz:                                            ; preds = %bb.cb, %.lr.ph.i548
  %i.io = phi i32 [ %i.ik, %.lr.ph.i548 ], [ %i.it, %bb.cb ]
  %indvars.iv.i549 = phi i64 [ 0, %.lr.ph.i548 ], [ %indvars.iv.next.i552, %bb.cb ] ; 3 uses
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %indvars.iv.i549
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !14
  %.not18.i550 = icmp eq i32 %i.iq, 0
  br i1 %.not18.i550, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.in, i64 %indvars.iv.i549
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !61
  call void @FLAC__metadata_object_delete(ptr noundef %i.is) #18
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.it = phi i32 [ %i.io, %bb.bz ], [ %.pre.i551, %bb.ca ] ; 2 uses
  %indvars.iv.next.i552 = add nuw nsw i64 %indvars.iv.i549, 1 ; 2 uses
  %i.iu = zext i32 %i.it to i64
  %i.iv = icmp samesign ult i64 %indvars.iv.next.i552, %i.iu
  br i1 %i.iv, label %bb.bz, label %._crit_edge.i553, !llvm.loop !1

._crit_edge.i553:                                 ; preds = %bb.cb, %bb.by
  %i.iw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !63 ; 2 uses
  %.not.i554 = icmp eq ptr %i.ix, null
  br i1 %.not.i554, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %._crit_edge.i553
  call void @free(ptr noundef nonnull %i.ix) #18
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %._crit_edge.i553
  %i.iy = load ptr, ptr %i.v, align 8, !tbaa !62  ; 2 uses
  %.not16.i555 = icmp eq ptr %i.iy, null
  br i1 %.not16.i555, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @free(ptr noundef nonnull %i.iy) #18
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %i.iz = load ptr, ptr %i.an, align 8, !tbaa !64 ; 2 uses
  %.not17.i556 = icmp eq ptr %i.iz, null
  br i1 %.not17.i556, label %.critedge503, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @FLAC__metadata_object_delete(ptr noundef nonnull %i.iz) #18
  br label %.critedge503

bb.ch:                                            ; preds = %bb.bw
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ic, i64 164
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !115 ; 2 uses
  %.not473 = icmp eq i32 %i.jb, 0
  br i1 %.not473, label %.thread609, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ic, i64 168
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !116
  %i.je = add i32 %i.jb, -1
  %i.jf = zext i32 %i.je to i64
  %i.jg = getelementptr inbounds nuw [32 x i8], ptr %i.jd, i64 %i.jf
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !119
  %.not474 = icmp eq i64 %i.if, %i.jh
  br i1 %.not474, label %.thread609, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ji = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.jj = load ptr, ptr %i.aq, align 8, !tbaa !24
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.ji, i32 noundef 1, ptr noundef nonnull @.str.123, ptr noundef %i.jj) #18
  %i.jk = load i32, ptr %i.au, align 8, !tbaa !39
  %.not475 = icmp eq i32 %i.jk, 0
  br i1 %.not475, label %.thread609, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.jl = load i32, ptr %3, align 8, !tbaa !59    ; 2 uses
  %.not20.i558 = icmp eq i32 %i.jl, 0
  br i1 %.not20.i558, label %._crit_edge.i564, label %.lr.ph.i559

.lr.ph.i559:                                      ; preds = %bb.ck
  %i.jm = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.jn = load ptr, ptr %i.v, align 8, !tbaa !62
  %i.jo = load ptr, ptr %i.jm, align 8
  %.pre.i562 = load i32, ptr %3, align 8
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cn, %.lr.ph.i559
  %i.jp = phi i32 [ %i.jl, %.lr.ph.i559 ], [ %i.ju, %bb.cn ]
  %indvars.iv.i560 = phi i64 [ 0, %.lr.ph.i559 ], [ %indvars.iv.next.i563, %bb.cn ] ; 3 uses
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %indvars.iv.i560
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !14
  %.not18.i561 = icmp eq i32 %i.jr, 0
  br i1 %.not18.i561, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.jo, i64 %indvars.iv.i560
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !61
  call void @FLAC__metadata_object_delete(ptr noundef %i.jt) #18
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.ju = phi i32 [ %i.jp, %bb.cl ], [ %.pre.i562, %bb.cm ] ; 2 uses
  %indvars.iv.next.i563 = add nuw nsw i64 %indvars.iv.i560, 1 ; 2 uses
  %i.jv = zext i32 %i.ju to i64
  %i.jw = icmp samesign ult i64 %indvars.iv.next.i563, %i.jv
  br i1 %i.jw, label %bb.cl, label %._crit_edge.i564, !llvm.loop !1

._crit_edge.i564:                                 ; preds = %bb.cn, %bb.ck
  %i.jx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !63 ; 2 uses
  %.not.i565 = icmp eq ptr %i.jy, null
  br i1 %.not.i565, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %._crit_edge.i564
  call void @free(ptr noundef nonnull %i.jy) #18
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %._crit_edge.i564
  %i.jz = load ptr, ptr %i.v, align 8, !tbaa !62  ; 2 uses
  %.not16.i566 = icmp eq ptr %i.jz, null
  br i1 %.not16.i566, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  call void @free(ptr noundef nonnull %i.jz) #18
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %i.ka = load ptr, ptr %i.an, align 8, !tbaa !64 ; 2 uses
  %.not17.i567 = icmp eq ptr %i.ka, null
  br i1 %.not17.i567, label %.critedge503, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  call void @FLAC__metadata_object_delete(ptr noundef nonnull %i.ka) #18
  br label %.critedge503

.thread609:                                       ; preds = %bb.ci, %bb.ch, %bb.bx, %bb.cj, %bb.bv
  %i.kb = phi i1 [ false, %bb.bv ], [ true, %bb.cj ], [ false, %bb.ci ], [ true, %bb.bx ], [ false, %bb.ch ]
  %i.kc = load ptr, ptr %i.ib, align 8, !tbaa !61 ; 3 uses
  %i.kd = load i32, ptr %i.kc, align 8, !tbaa !52
  %i.ke = icmp eq i32 %i.kd, 5
  %or.cond24 = select i1 %i.kb, i1 true, i1 %i.ia
  %or.cond927 = select i1 %i.ke, i1 %or.cond24, i1 false
  br i1 %or.cond927, label %bb.ct, label %bb.df

bb.ct:                                            ; preds = %.thread609
  br i1 %i.ia, label %bb.cu, label %bb.de

bb.cu:                                            ; preds = %bb.ct
  %i.kf = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.kg = load ptr, ptr %i.aq, align 8, !tbaa !24
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.kf, i32 noundef 1, ptr noundef nonnull @.str.124, ptr noundef %i.kg) #18
  %i.kh = load i32, ptr %i.au, align 8, !tbaa !39
  %.not477 = icmp eq i32 %i.kh, 0
  br i1 %.not477, label %._crit_edge741, label %bb.cv

._crit_edge741:                                   ; preds = %bb.cu
  %.pre742 = load ptr, ptr %i.ib, align 8, !tbaa !61
  br label %bb.de

bb.cv:                                            ; preds = %bb.cu
  %i.ki = load i32, ptr %3, align 8, !tbaa !59    ; 2 uses
  %.not20.i569 = icmp eq i32 %i.ki, 0
  br i1 %.not20.i569, label %._crit_edge.i575, label %.lr.ph.i570

.lr.ph.i570:                                      ; preds = %bb.cv
  %i.kj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.kk = load ptr, ptr %i.v, align 8, !tbaa !62
  %i.kl = load ptr, ptr %i.kj, align 8
  %.pre.i573 = load i32, ptr %3, align 8
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cy, %.lr.ph.i570
  %i.km = phi i32 [ %i.ki, %.lr.ph.i570 ], [ %i.kr, %bb.cy ]
  %indvars.iv.i571 = phi i64 [ 0, %.lr.ph.i570 ], [ %indvars.iv.next.i574, %bb.cy ] ; 3 uses
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.kk, i64 %indvars.iv.i571
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !14
  %.not18.i572 = icmp eq i32 %i.ko, 0
  br i1 %.not18.i572, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.kl, i64 %indvars.iv.i571
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !61
  call void @FLAC__metadata_object_delete(ptr noundef %i.kq) #18
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %i.kr = phi i32 [ %i.km, %bb.cw ], [ %.pre.i573, %bb.cx ] ; 2 uses
  %indvars.iv.next.i574 = add nuw nsw i64 %indvars.iv.i571, 1 ; 2 uses
  %i.ks = zext i32 %i.kr to i64
  %i.kt = icmp samesign ult i64 %indvars.iv.next.i574, %i.ks
  br i1 %i.kt, label %bb.cw, label %._crit_edge.i575, !llvm.loop !1

._crit_edge.i575:                                 ; preds = %bb.cy, %bb.cv
  %i.ku = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !63 ; 2 uses
  %.not.i576 = icmp eq ptr %i.kv, null
  br i1 %.not.i576, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %._crit_edge.i575
  call void @free(ptr noundef nonnull %i.kv) #18
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %._crit_edge.i575
  %i.kw = load ptr, ptr %i.v, align 8, !tbaa !62  ; 2 uses
  %.not16.i577 = icmp eq ptr %i.kw, null
  br i1 %.not16.i577, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  call void @free(ptr noundef nonnull %i.kw) #18
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %i.kx = load ptr, ptr %i.an, align 8, !tbaa !64 ; 2 uses
  %.not17.i578 = icmp eq ptr %i.kx, null
  br i1 %.not17.i578, label %.critedge503, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  call void @FLAC__metadata_object_delete(ptr noundef nonnull %i.kx) #18
  br label %.critedge503

bb.de:                                            ; preds = %._crit_edge741, %bb.ct
  %i.ky = phi ptr [ %.pre742, %._crit_edge741 ], [ %i.kc, %bb.ct ]
  call void @FLAC__metadata_object_delete(ptr noundef %i.ky) #18
  store ptr null, ptr %i.ib, align 8, !tbaa !61
  br label %bb.dg

bb.df:                                            ; preds = %.thread609
  %i.kz = add i64 %.0376676, 1
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %.0376676
  store ptr %i.kc, ptr %i.la, align 8, !tbaa !61
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %.2378 = phi i64 [ %.0376676, %bb.de ], [ %i.kz, %bb.df ] ; 2 uses
  %i.lb = add nuw i64 %.0379675, 1                ; 2 uses
  %i.lc = load i64, ptr %i.er, align 8, !tbaa !66
  %i.ld = icmp ult i64 %i.lb, %i.lc
  br i1 %i.ld, label %bb.bv, label %._crit_edge679, !llvm.loop !100

._crit_edge679:                                   ; preds = %bb.dg, %bb.bu
  %.0376.lcssa = phi i64 [ 0, %bb.bu ], [ %.2378, %bb.dg ] ; 3 uses
  store i64 %.0376.lcssa, ptr %i.er, align 8, !tbaa !66
  %i.le = load ptr, ptr %i.an, align 8, !tbaa !64 ; 2 uses
  %.not471 = icmp ne ptr %i.le, null
  %i.lf = icmp ult i64 %.0376.lcssa, 1024
  %or.cond504 = select i1 %.not471, i1 %i.lf, i1 false
  br i1 %or.cond504, label %bb.dh, label %bb.dj

bb.dh:                                            ; preds = %._crit_edge679
  %i.lg = call ptr @FLAC__metadata_object_clone(ptr noundef nonnull %i.le) #18 ; 2 uses
  %.not472 = icmp eq ptr %i.lg, null
  br i1 %.not472, label %.thread616, label %bb.di

.thread616:                                       ; preds = %bb.dh
  %i.lh = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.li = load ptr, ptr %i.aq, align 8, !tbaa !24
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.lh, i32 noundef 1, ptr noundef nonnull @.str.125, ptr noundef %i.li) #18
  call fastcc void @static_metadata_clear(ptr noundef %3)
  br label %.critedge503

bb.di:                                            ; preds = %bb.dh
  %i.lj = load i64, ptr %i.er, align 8, !tbaa !66 ; 3 uses
  %i.lk = icmp ugt i64 %i.lj, 1
  br i1 %i.lk, label %.lr.ph683, label %._crit_edge684

.lr.ph683:                                        ; preds = %bb.di
  %scevgep725 = getelementptr i8, ptr %spec.select517, i64 48
  %scevgep726 = getelementptr i8, ptr %spec.select517, i64 40
  %i.ll = shl i64 %i.lj, 3
  %i.lm = add i64 %i.ll, -8
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep725, ptr align 8 %scevgep726, i64 %i.lm, i1 false), !tbaa !61
  br label %._crit_edge684

._crit_edge684:                                   ; preds = %.lr.ph683, %bb.di
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %i.lg, ptr %i.ln, align 8, !tbaa !61
  %i.lo = add i64 %i.lj, 1                        ; 2 uses
  store i64 %i.lo, ptr %i.er, align 8, !tbaa !66
  br label %bb.dj

bb.dj:                                            ; preds = %._crit_edge684, %._crit_edge679
  %i.lp = phi i64 [ %i.lo, %._crit_edge684 ], [ %.0376.lcssa, %._crit_edge679 ] ; 2 uses
  %.not712 = icmp eq i64 %i.lp, 0
  br i1 %.not712, label %._crit_edge690, label %.lr.ph689

.lr.ph689:                                        ; preds = %bb.dj
  %i.lq = getelementptr inbounds nuw i8, ptr %spec.select517, i64 32 ; 3 uses
  %i.lr = icmp sgt i32 %i.ca, -1
  %i.ls = icmp sgt i32 %i.ca, 0
  br label %bb.dk

bb.dk:                                            ; preds = %.lr.ph689, %bb.du
  %i.lt = phi i64 [ %i.lp, %.lr.ph689 ], [ %i.mm, %bb.du ]
  %.0366687 = phi i32 [ 0, %.lr.ph689 ], [ %.2368, %bb.du ]
  %.0369686 = phi i64 [ 0, %.lr.ph689 ], [ %.1370, %bb.du ] ; 3 uses
  %.0371685 = phi i64 [ 0, %.lr.ph689 ], [ %i.mn, %bb.du ] ; 2 uses
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.lq, i64 %.0371685 ; 3 uses
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !61 ; 2 uses
  %i.lw = load i32, ptr %i.lv, align 8, !tbaa !52
  %i.lx = icmp eq i32 %i.lw, 3                    ; 2 uses
  %spec.select507 = select i1 %i.lx, i32 1, i32 %.0366687
  br i1 %i.lx, label %bb.dl, label %bb.dt

bb.dl:                                            ; preds = %bb.dk
  %i.ly = load i64, ptr %i.as, align 8, !tbaa !40
  %i.lz = load ptr, ptr %i.lq, align 8, !tbaa !61
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 48
  %i.mb = load i64, ptr %i.ma, align 8, !tbaa !29
  %i.mc = icmp ne i64 %i.ly, %i.mb
  %or.cond27 = or i1 %i.lr, %i.mc
  br i1 %or.cond27, label %bb.dm, label %bb.dt

bb.dm:                                            ; preds = %bb.dl
  br i1 %i.ls, label %bb.dn, label %bb.dp

bb.dn:                                            ; preds = %bb.dm
  %i.md = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.me = load ptr, ptr %i.aq, align 8, !tbaa !24
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.md, i32 noundef 1, ptr noundef nonnull @.str.126, ptr noundef %i.me) #18
  %i.mf = load i32, ptr %i.au, align 8, !tbaa !39
  %.not480 = icmp eq i32 %i.mf, 0
  br i1 %.not480, label %bb.ds, label %bb.do

bb.do:                                            ; preds = %bb.dn
  call fastcc void @static_metadata_clear(ptr noundef %3)
  br label %.critedge503

bb.dp:                                            ; preds = %bb.dm
  br i1 %i.cg, label %bb.ds, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.mg = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.mh = load ptr, ptr %i.aq, align 8, !tbaa !24
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.mg, i32 noundef 1, ptr noundef nonnull @.str.127, ptr noundef %i.mh) #18
  %i.mi = load i32, ptr %i.au, align 8, !tbaa !39
  %.not479 = icmp eq i32 %i.mi, 0
  br i1 %.not479, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  call fastcc void @static_metadata_clear(ptr noundef %3)
  br label %.critedge503

bb.ds:                                            ; preds = %bb.dp, %bb.dq, %bb.dn
  %i.mj = load ptr, ptr %i.lu, align 8, !tbaa !61
  call void @FLAC__metadata_object_delete(ptr noundef %i.mj) #18
  store ptr null, ptr %i.lu, align 8, !tbaa !61
  %.pre743 = load i64, ptr %i.er, align 8, !tbaa !66
  br label %bb.du

bb.dt:                                            ; preds = %bb.dl, %bb.dk
  %i.mk = add i64 %.0369686, 1
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %i.lq, i64 %.0369686
  store ptr %i.lv, ptr %i.ml, align 8, !tbaa !61
  br label %bb.du

bb.du:                                            ; preds = %bb.ds, %bb.dt
  %i.mm = phi i64 [ %.pre743, %bb.ds ], [ %i.lt, %bb.dt ] ; 2 uses
  %.1370 = phi i64 [ %.0369686, %bb.ds ], [ %i.mk, %bb.dt ] ; 2 uses
  %.2368 = phi i32 [ 0, %bb.ds ], [ %spec.select507, %bb.dt ] ; 2 uses
  %i.mn = add nuw i64 %.0371685, 1                ; 2 uses
  %i.mo = icmp ult i64 %i.mn, %i.mm
  br i1 %i.mo, label %bb.dk, label %._crit_edge690.loopexit, !llvm.loop !101

._crit_edge690.loopexit:                          ; preds = %bb.du
  %i.mp = icmp ne i32 %.2368, 0
  br label %._crit_edge690

._crit_edge690:                                   ; preds = %._crit_edge690.loopexit, %bb.dj
  %.0369.lcssa = phi i64 [ 0, %bb.dj ], [ %.1370, %._crit_edge690.loopexit ] ; 3 uses
  %.0366.lcssa = phi i1 [ false, %bb.dj ], [ %i.mp, %._crit_edge690.loopexit ]
  store i64 %.0369.lcssa, ptr %i.er, align 8, !tbaa !66
  %i.mq = icmp slt i32 %i.ca, 1
  %or.cond29 = select i1 %i.cg, i1 true, i1 %.0366.lcssa
  %or.cond640 = select i1 %i.mq, i1 %or.cond29, i1 false
  %i.mr = icmp ugt i64 %.0369.lcssa, 1023
  %or.cond642.not = select i1 %or.cond640, i1 true, i1 %i.mr
  br i1 %or.cond642.not, label %bb.dx, label %bb.dv

bb.dv:                                            ; preds = %._crit_edge690
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 8424
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !31
  %i.mu = call ptr @FLAC__metadata_object_clone(ptr noundef %i.mt) #18 ; 2 uses
  %.not478 = icmp eq ptr %i.mu, null
  br i1 %.not478, label %.thread617, label %bb.dw

.thread617:                                       ; preds = %bb.dv
  %i.mv = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.mw = load ptr, ptr %i.aq, align 8, !tbaa !24
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.mv, i32 noundef 1, ptr noundef nonnull @.str.128, ptr noundef %i.mw) #18
  call fastcc void @static_metadata_clear(ptr noundef %3)
  br label %.critedge503

bb.dw:                                            ; preds = %bb.dv
  %i.mx = load i64, ptr %i.er, align 8, !tbaa !66 ; 3 uses
  %i.my = icmp ugt i64 %i.mx, 1
  br i1 %i.my, label %.lr.ph695, label %._crit_edge696

.lr.ph695:                                        ; preds = %bb.dw
  %scevgep727 = getelementptr i8, ptr %spec.select517, i64 48
  %scevgep728 = getelementptr i8, ptr %spec.select517, i64 40
  %i.mz = shl i64 %i.mx, 3
  %i.na = add i64 %i.mz, -8
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep727, ptr align 8 %scevgep728, i64 %i.na, i1 false), !tbaa !61
  br label %._crit_edge696

._crit_edge696:                                   ; preds = %.lr.ph695, %bb.dw
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %i.mu, ptr %i.nb, align 8, !tbaa !61
  %i.nc = add i64 %i.mx, 1                        ; 2 uses
  store i64 %i.nc, ptr %i.er, align 8, !tbaa !66
  br label %bb.dx

bb.dx:                                            ; preds = %._crit_edge696, %._crit_edge690
  %i.nd = phi i64 [ %i.nc, %._crit_edge696 ], [ %.0369.lcssa, %._crit_edge690 ] ; 2 uses
  %.not713 = icmp eq i64 %i.nd, 0
  br i1 %.not713, label %._crit_edge702, label %.lr.ph701

.lr.ph701:                                        ; preds = %bb.dx
  %i.ne = getelementptr inbounds nuw i8, ptr %spec.select517, i64 32 ; 2 uses
  br label %bb.dy

bb.dy:                                            ; preds = %.lr.ph701, %bb.eb
  %i.nf = phi i64 [ %i.nd, %.lr.ph701 ], [ %i.np, %bb.eb ]
  %.0361699 = phi i64 [ 0, %.lr.ph701 ], [ %.1362, %bb.eb ] ; 3 uses
  %.0363698 = phi i64 [ 0, %.lr.ph701 ], [ %i.nq, %bb.eb ] ; 2 uses
  %.0364697 = phi i32 [ -1, %.lr.ph701 ], [ %.1365, %bb.eb ] ; 2 uses
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %i.ne, i64 %.0363698 ; 2 uses
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !61 ; 4 uses
  %i.ni = load i32, ptr %i.nh, align 8, !tbaa !52
  %i.nj = icmp eq i32 %i.ni, 1
  br i1 %i.nj, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %spec.store.select = call i32 @llvm.smax.i32(i32 %.0364697, i32 0)
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nh, i64 8
  %i.nl = load i32, ptr %i.nk, align 8, !tbaa !125
  %i.nm = add i32 %i.nl, %spec.store.select
  call void @FLAC__metadata_object_delete(ptr noundef nonnull %i.nh) #18
  store ptr null, ptr %i.ng, align 8, !tbaa !61
  %.pre744 = load i64, ptr %i.er, align 8, !tbaa !66
  br label %bb.eb

bb.ea:                                            ; preds = %bb.dy
  %i.nn = add i64 %.0361699, 1
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.ne, i64 %.0361699
  store ptr %i.nh, ptr %i.no, align 8, !tbaa !61
  br label %bb.eb

bb.eb:                                            ; preds = %bb.dz, %bb.ea
  %i.np = phi i64 [ %.pre744, %bb.dz ], [ %i.nf, %bb.ea ] ; 2 uses
  %.1365 = phi i32 [ %i.nm, %bb.dz ], [ %.0364697, %bb.ea ] ; 2 uses
  %.1362 = phi i64 [ %.0361699, %bb.dz ], [ %i.nn, %bb.ea ] ; 2 uses
  %i.nq = add nuw i64 %.0363698, 1                ; 2 uses
  %i.nr = icmp ult i64 %i.nq, %i.np
  br i1 %i.nr, label %bb.dy, label %._crit_edge702, !llvm.loop !102

._crit_edge702:                                   ; preds = %bb.eb, %bb.dx
  %.0364.lcssa = phi i32 [ -1, %bb.dx ], [ %.1365, %bb.eb ]
  %.0361.lcssa = phi i64 [ 0, %bb.dx ], [ %.1362, %bb.eb ] ; 3 uses
  store i64 %.0361.lcssa, ptr %i.er, align 8, !tbaa !66
  %i.ns = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !126 ; 3 uses
  %i.nu = icmp sgt i32 %i.nt, 0
  %spec.select510 = select i1 %i.nu, i32 %i.nt, i32 %.0364.lcssa ; 3 uses
  %i.nv = icmp slt i32 %spec.select510, 0
  br i1 %i.nv, label %bb.ec, label %bb.ee

bb.ec:                                            ; preds = %._crit_edge702
  %i.nw = icmp eq i32 %i.n, 0
  br i1 %i.nw, label %.thread619, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.nx = load i64, ptr %i.as, align 8, !tbaa !40
  %i.ny = zext i32 %i.n to i64
  %i.nz = udiv i64 %i.nx, %i.ny
  %i.oa = icmp ult i64 %i.nz, 1200
  %i.ob = select i1 %i.oa, i32 8192, i32 65536
  br label %.thread619

bb.ee:                                            ; preds = %._crit_edge702
  %.not481 = icmp eq i32 %spec.select510, 0
  br i1 %.not481, label %bb.ef, label %.thread619

.thread619:                                       ; preds = %bb.ec, %bb.ed, %bb.ee
  %.3622 = phi i32 [ %spec.select510, %bb.ee ], [ 8192, %bb.ec ], [ %i.ob, %bb.ed ]
  %i.oc = load i32, ptr %i.y, align 8, !tbaa !60
  %.not482 = icmp eq i32 %i.oc, 0
  %i.od = load i32, ptr @GRABBAG__REPLAYGAIN_MAX_TAG_SPACE_REQUIRED, align 4
  %i.oe = select i1 %.not482, i32 0, i32 %i.od
  %i.of = add i32 %i.oe, %.3622
  br label %bb.ef

bb.ef:                                            ; preds = %.thread619, %bb.ee
  %.4 = phi i32 [ %i.of, %.thread619 ], [ 0, %bb.ee ]
  %i.og = load i32, ptr @FLAC__STREAM_METADATA_LENGTH_LEN, align 4, !tbaa !14
  %notmask483 = shl nsw i32 -1, %i.og
  %i.oh = xor i32 %notmask483, -1
  %i.oi = call i32 @llvm.smin.i32(i32 %.4, i32 %i.oh) ; 2 uses
  %i.oj = icmp ne i32 %i.nt, 0
  %i.ok = icmp sgt i32 %i.oi, 0
  %or.cond31 = select i1 %i.oj, i1 %i.ok, i1 false
  %i.ol = icmp ult i64 %.0361.lcssa, 1024
  %or.cond644 = select i1 %or.cond31, i1 %i.ol, i1 false
  br i1 %or.cond644, label %bb.eg, label %bb.ei

bb.eg:                                            ; preds = %bb.ef
  %i.om = call ptr @FLAC__metadata_object_new(i32 noundef 1) #18 ; 4 uses
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.oo = load i64, ptr %i.er, align 8, !tbaa !66 ; 2 uses
  %i.op = getelementptr inbounds nuw [8 x i8], ptr %i.on, i64 %i.oo
  store ptr %i.om, ptr %i.op, align 8, !tbaa !61
  %i.oq = icmp eq ptr %i.om, null
  br i1 %i.oq, label %.critedge512, label %bb.eh

.critedge512:                                     ; preds = %bb.eg
  %i.or = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.os = load ptr, ptr %i.aq, align 8, !tbaa !24
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.or, i32 noundef 1, ptr noundef nonnull @.str.129, ptr noundef %i.os) #18
  call fastcc void @static_metadata_clear(ptr noundef %3)
  br label %.critedge503

bb.eh:                                            ; preds = %bb.eg
  %i.ot = getelementptr inbounds nuw i8, ptr %i.om, i64 4
  store i32 0, ptr %i.ot, align 4, !tbaa !127
  %i.ou = getelementptr inbounds nuw i8, ptr %i.om, i64 8
  store i32 %i.oi, ptr %i.ou, align 8, !tbaa !125
  %i.ov = add i64 %i.oo, 1                        ; 2 uses
  store i64 %i.ov, ptr %i.er, align 8, !tbaa !66
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.ef
  %i.ow = phi i64 [ %i.ov, %bb.eh ], [ %.0361.lcssa, %bb.ef ]
  %i.ox = getelementptr inbounds nuw i8, ptr %spec.select517, i64 40
  %i.oy = trunc i64 %i.ow to i32
  %i.oz = add i32 %i.oy, -1
  br label %bb.fp

bb.ej:                                            ; preds = %.thread.i
  %.val = load i32, ptr %i.o, align 8, !tbaa !28
  %i.pa = add i32 %.val, -6
  %narrow.i = icmp ult i32 %i.pa, -5
  %i.pb = getelementptr inbounds nuw i8, ptr %1, i64 1704
  %i.pc = load ptr, ptr %i.pb, align 8            ; 3 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 8424
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !31 ; 3 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 16
  %i.pg = load i32, ptr %i.pf, align 8, !tbaa !29
  %.not446 = icmp eq i32 %i.pg, 0
  br i1 %.not446, label %bb.en, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pe, i64 4
  store i32 0, ptr %i.ph, align 4, !tbaa !127
  %i.pi = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !63
  %i.pk = load i32, ptr %3, align 8, !tbaa !59
  %i.pl = zext i32 %i.pk to i64
  %i.pm = shl nuw nsw i64 %i.pl, 3
  %i.pn = add nuw nsw i64 %i.pm, 8
  %i.po = call noalias noundef ptr @realloc(ptr noundef %i.pj, i64 noundef %i.pn) #20 ; 2 uses
  %i.pp = icmp eq ptr %i.po, null
  br i1 %i.pp, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek
  store ptr %i.po, ptr %i.pi, align 8, !tbaa !63
  %i.pq = load ptr, ptr %i.v, align 8, !tbaa !62
  %i.pr = load i32, ptr %3, align 8, !tbaa !59
  %i.ps = zext i32 %i.pr to i64
  %i.pt = shl nuw nsw i64 %i.ps, 2
  %i.pu = add nuw nsw i64 %i.pt, 4
  %i.pv = call noalias noundef ptr @realloc(ptr noundef %i.pq, i64 noundef %i.pu) #20 ; 3 uses
  %i.pw = icmp eq ptr %i.pv, null
  br i1 %i.pw, label %bb.em, label %static_metadata_append.exit

static_metadata_append.exit:                      ; preds = %bb.el
  store ptr %i.pv, ptr %i.v, align 8, !tbaa !62
  %i.px = load ptr, ptr %i.pi, align 8, !tbaa !63
  %i.py = load i32, ptr %3, align 8, !tbaa !59    ; 2 uses
  %i.pz = zext i32 %i.py to i64                   ; 2 uses
  %i.qa = getelementptr inbounds nuw [8 x i8], ptr %i.px, i64 %i.pz
  store ptr %i.pe, ptr %i.qa, align 8, !tbaa !61
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.pv, i64 %i.pz
  store i32 0, ptr %i.qb, align 4, !tbaa !14
  %i.qc = add i32 %i.py, 1
  store i32 %i.qc, ptr %3, align 8, !tbaa !59
  br label %bb.en

bb.em:                                            ; preds = %bb.ek, %bb.el
  %i.qd = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.qe = load ptr, ptr %i.aq, align 8, !tbaa !24
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.qd, i32 noundef 1, ptr noundef nonnull @.str.128, ptr noundef %i.qe) #18
  call fastcc void @static_metadata_clear(ptr noundef %3)
  br label %.critedge503

bb.en:                                            ; preds = %static_metadata_append.exit, %bb.ej
  %i.qf = load ptr, ptr %i.an, align 8, !tbaa !64 ; 2 uses
  %.not448 = icmp eq ptr %i.qf, null
  br i1 %.not448, label %bb.er, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.qg = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !63
  %i.qi = load i32, ptr %3, align 8, !tbaa !59
  %i.qj = zext i32 %i.qi to i64
  %i.qk = shl nuw nsw i64 %i.qj, 3
  %i.ql = add nuw nsw i64 %i.qk, 8
  %i.qm = call noalias noundef ptr @realloc(ptr noundef %i.qh, i64 noundef %i.ql) #20 ; 2 uses
  %i.qn = icmp eq ptr %i.qm, null
  br i1 %i.qn, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  store ptr %i.qm, ptr %i.qg, align 8, !tbaa !63
  %i.qo = load ptr, ptr %i.v, align 8, !tbaa !62
  %i.qp = load i32, ptr %3, align 8, !tbaa !59
  %i.qq = zext i32 %i.qp to i64
  %i.qr = shl nuw nsw i64 %i.qq, 2
  %i.qs = add nuw nsw i64 %i.qr, 4
  %i.qt = call noalias noundef ptr @realloc(ptr noundef %i.qo, i64 noundef %i.qs) #20 ; 3 uses
  %i.qu = icmp eq ptr %i.qt, null
  br i1 %i.qu, label %bb.eq, label %static_metadata_append.exit582

static_metadata_append.exit582:                   ; preds = %bb.ep
  store ptr %i.qt, ptr %i.v, align 8, !tbaa !62
  %i.qv = load ptr, ptr %i.qg, align 8, !tbaa !63
  %i.qw = load i32, ptr %3, align 8, !tbaa !59    ; 2 uses
  %i.qx = zext i32 %i.qw to i64                   ; 2 uses
  %i.qy = getelementptr inbounds nuw [8 x i8], ptr %i.qv, i64 %i.qx
  store ptr %i.qf, ptr %i.qy, align 8, !tbaa !61
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %i.qt, i64 %i.qx
  store i32 0, ptr %i.qz, align 4, !tbaa !14
  %i.ra = add i32 %i.qw, 1
  store i32 %i.ra, ptr %3, align 8, !tbaa !59
  br label %bb.er

bb.eq:                                            ; preds = %bb.eo, %bb.ep
  %i.rb = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.rc = load ptr, ptr %i.aq, align 8, !tbaa !24
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.rb, i32 noundef 1, ptr noundef nonnull @.str.125, ptr noundef %i.rc) #18
  call fastcc void @static_metadata_clear(ptr noundef %3)
  br label %.critedge503

bb.er:                                            ; preds = %static_metadata_append.exit582, %bb.en
  %i.rd = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !45
  %.not450 = icmp eq i32 %i.re, 0
  %i.rf = getelementptr inbounds nuw i8, ptr %1, i64 1168
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !124 ; 2 uses
  br i1 %.not450, label %bb.ew, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.rh = call ptr @FLAC__metadata_object_clone(ptr noundef %i.rg) #18 ; 3 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %1, i64 1176
  store ptr %i.rh, ptr %i.ri, align 8, !tbaa !128
  %i.rj = load i32, ptr %i.rd, align 4, !tbaa !45
  %i.rk = call i32 @flac__utils_set_channel_mask_tag(ptr noundef %i.rh, i32 noundef %i.rj) #18
  %.not452 = icmp eq i32 %i.rk, 0
  br i1 %.not452, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  %i.rl = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.rm = load ptr, ptr %i.aq, align 8, !tbaa !24
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.rl, i32 noundef 1, ptr noundef nonnull @.str.130, ptr noundef %i.rm) #18
  call fastcc void @static_metadata_clear(ptr noundef %3)
  br label %.critedge503

bb.eu:                                            ; preds = %bb.es
  %i.rn = call fastcc i32 @static_metadata_append(ptr noundef %3, ptr noundef %i.rh, i32 noundef 1)
  %.not453 = icmp eq i32 %i.rn, 0
  br i1 %.not453, label %bb.ev, label %bb.ey

bb.ev:                                            ; preds = %bb.eu
  %i.ro = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.rp = load ptr, ptr %i.aq, align 8, !tbaa !24
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.ro, i32 noundef 1, ptr noundef nonnull @.str.121, ptr noundef %i.rp) #18
  call fastcc void @static_metadata_clear(ptr noundef %3)
  br label %.critedge503

bb.ew:                                            ; preds = %bb.er
  %i.rq = call fastcc i32 @static_metadata_append(ptr noundef %3, ptr noundef %i.rg, i32 noundef 0)
  %.not451 = icmp eq i32 %i.rq, 0
  br i1 %.not451, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  %i.rr = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.rs = load ptr, ptr %i.aq, align 8, !tbaa !24
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.rr, i32 noundef 1, ptr noundef nonnull @.str.121, ptr noundef %i.rs) #18
  call fastcc void @static_metadata_clear(ptr noundef %3)
  br label %.critedge503

bb.ey:                                            ; preds = %bb.ew, %bb.eu
  %i.rt = getelementptr inbounds nuw i8, ptr %1, i64 1696
  %i.ru = load i32, ptr %i.rt, align 8, !tbaa !123 ; 2 uses
  %.not708 = icmp eq i32 %i.ru, 0
  br i1 %.not708, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ey
  %i.rv = getelementptr inbounds nuw i8, ptr %1, i64 1184
  %i.rw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %wide.trip.count = zext i32 %i.ru to i64
  %.pre734 = load ptr, ptr %i.rw, align 8, !tbaa !63
  %.pre735 = load i32, ptr %3, align 8, !tbaa !59
  %.promoted833 = load ptr, ptr %i.v, align 8
  br label %bb.ez

bb.ez:                                            ; preds = %.lr.ph, %bb.fc
  %i.rx = phi ptr [ %.promoted833, %.lr.ph ], [ %i.sk, %bb.fc ] ; 2 uses
  %i.ry = phi i32 [ %.pre735, %.lr.ph ], [ %i.ss, %bb.fc ] ; 5 uses
  %i.rz = phi ptr [ %.pre734, %.lr.ph ], [ %i.sf, %bb.fc ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.fc ] ; 2 uses
  %i.sa = getelementptr inbounds nuw [8 x i8], ptr %i.rv, i64 %indvars.iv
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !61
  %i.sc = zext i32 %i.ry to i64
  %i.sd = shl nuw nsw i64 %i.sc, 3
  %i.se = add nuw nsw i64 %i.sd, 8
  %i.sf = call noalias noundef ptr @realloc(ptr noundef %i.rz, i64 noundef %i.se) #20 ; 5 uses
  %i.sg = icmp eq ptr %i.sf, null
  br i1 %i.sg, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.sh = zext i32 %i.ry to i64
  %i.si = shl nuw nsw i64 %i.sh, 2
  %i.sj = add nuw nsw i64 %i.si, 4
  %i.sk = call noalias noundef ptr @realloc(ptr noundef %i.rx, i64 noundef %i.sj) #20 ; 4 uses
  %i.sl = icmp eq ptr %i.sk, null
  br i1 %i.sl, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.ez, %bb.fa
  %i.sm = phi ptr [ %i.rz, %bb.ez ], [ %i.sf, %bb.fa ]
  store ptr %i.sm, ptr %i.rw, align 8
  store ptr %i.rx, ptr %i.v, align 8
  store i32 %i.ry, ptr %3, align 8
  %i.sn = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.so = load ptr, ptr %i.aq, align 8, !tbaa !24
end_hunk_0
