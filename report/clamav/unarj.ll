Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/unarj?download=true
inline.NumInlined: 43
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 11
begin_hunk_0
@.str.30 = private unnamed_addr constant [13 x i8] c"Flags: 0x%x\0A\00", align 1
@.str.31 = private unnamed_addr constant [22 x i8] c"Security version: %d\0A\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"File type: %d\0A\00", align 1
@.str.33 = private unnamed_addr constant [38 x i8] c"Format error. First Header Size < 30\0A\00", align 1
@.str.34 = private unnamed_addr constant [48 x i8] c"UNARJ: Format error. First Header Size invalid\0A\00", align 1
@.str.35 = private unnamed_addr constant [47 x i8] c"UNARJ: Unable to allocate memory for filename\0A\00", align 1
@.str.36 = private unnamed_addr constant [46 x i8] c"UNARJ: Unable to allocate memory for comment\0A\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"Comment: %s\0A\00", align 1
@.str.38 = private unnamed_addr constant [26 x i8] c"Extended header size: %d\0A\00", align 1
@.str.39 = private unnamed_addr constant [48 x i8] c"arj_read_file_header: invalid header_size: %u\0A \00", align 1
@.str.40 = private unnamed_addr constant [72 x i8] c"arj_read_file_header: invalid header_size: %u, exceeds length of file.\0A\00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c"ARJ File Header\0A\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"Method: %d\0A\00", align 1
@.str.43 = private unnamed_addr constant [21 x i8] c"Compressed size: %u\0A\00", align 1
@.str.44 = private unnamed_addr constant [19 x i8] c"Original size: %u\0A\00", align 1
@.str.45 = private unnamed_addr constant [32 x i8] c"UNARJ: Filename is out of file\0A\00", align 1
@.str.46 = private unnamed_addr constant [31 x i8] c"UNARJ: comment is out of file\0A\00", align 1
@.str.47 = private unnamed_addr constant [16 x i8] c"in arj_unstore\0A\00", align 1
@.str.48 = private unnamed_addr constant [53 x i8] c"UNARJ: bounds exceeded - probably a corrupted file.\0A\00", align 1
@.str.49 = private unnamed_addr constant [24 x i8] c"ERROR: bounds exceeded\0A\00", align 1
@.str.50 = private unnamed_addr constant [24 x i8] c"UNARJ: bounds exceeded\0A\00", align 1

; Function Attrs: nounwind uwtable
define range(i32 0, 27) i32 @cli_unarj_open(ptr noundef %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef captures(none) initializes((32, 48)) %2) local_unnamed_addr #0 {
bb.a:
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str) #11
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %0, ptr %i.a, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  store i64 0, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.e = tail call ptr %i.d(ptr noundef %0, i64 noundef 0, i64 noundef 2, i32 noundef 0) #11, !inline_history !0 ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  %i.f = load i64, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.20, i64 noundef %i.f) #11
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.g = add i64 %i.f, 2
  store i64 %i.g, ptr %i.b, align 8, !tbaa !16
  %i.h = load i16, ptr %i.e, align 1
  %i.i = icmp ne i16 %i.h, -5536
  %i.j = zext i1 %i.i to i32
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %is_arj_archive.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.21) #11
  br label %.sink.split

is_arj_archive.exit:                              ; preds = %bb.c
  %i.l = tail call fastcc zeroext i1 @arj_read_main_header(ptr noundef nonnull %2)
  br i1 %i.l, label %bb.e, label %.sink.split

.sink.split:                                      ; preds = %is_arj_archive.exit, %bb.d, %bb.b
  %.str.2.sink = phi ptr [ @.str.1, %bb.d ], [ @.str.1, %bb.b ], [ @.str.2, %is_arj_archive.exit ]
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull %.str.2.sink) #11
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %is_arj_archive.exit
  %.0 = phi i32 [ 0, %is_arj_archive.exit ], [ 26, %.sink.split ]
  ret i32 %.0
}

declare void @cli_dbgmsg(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @arj_read_main_header(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %1 = alloca %struct.arj_main_hdr_tag, align 1   ; 10 uses
  %2 = alloca %struct.text_norm_state, align 8    ; 4 uses
  %3 = alloca %struct.text_norm_state, align 8    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 20 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !16   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !15   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.g = load i64, ptr %i.f, align 8, !tbaa !21   ; 2 uses
  %or.cond124.not = icmp ult i64 %i.c, %i.g
  br i1 %or.cond124.not, label %bb.b, label %fmap_readn.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.h = sub nuw i64 %i.g, %i.c                   ; 2 uses
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 2) ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20
  %i.k = tail call ptr %i.j(ptr noundef nonnull %i.e, i64 noundef %i.c, i64 noundef %spec.select.i, i32 noundef 0) #11, !inline_history !44 ; 2 uses
  %.not26.i = icmp eq ptr %i.k, null
  br i1 %.not26.i, label %fmap_readn.exit.thread, label %fmap_readn.exit

fmap_readn.exit:                                  ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.a, ptr nonnull align 1 %i.k, i64 %spec.select.i, i1 false)
  %.not = icmp ugt i64 %i.h, 1
  br i1 %.not, label %bb.c, label %fmap_readn.exit.thread

bb.c:                                             ; preds = %fmap_readn.exit
  %i.l = load i64, ptr %i.b, align 8, !tbaa !16
  %i.m = add i64 %i.l, 2
  store i64 %i.m, ptr %i.b, align 8, !tbaa !16
  %.0..0..0.101 = load i16, ptr %i.a, align 2, !tbaa !23 ; 5 uses
  %i.n = zext i16 %.0..0..0.101 to i32            ; 3 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.22, i32 noundef %i.n) #11
  %i.o = icmp eq i16 %.0..0..0.101, 0
  br i1 %i.o, label %fmap_readn.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = icmp ugt i16 %.0..0..0.101, 2600
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.23, i32 noundef %i.n) #11
  br label %fmap_readn.exit.thread

bb.f:                                             ; preds = %bb.d
  %narrow = add nuw nsw i16 %.0..0..0.101, 2
  %i.q = zext nneg i16 %narrow to i64
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !15   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  %i.t = load i64, ptr %i.s, align 8, !tbaa !21   ; 2 uses
  %i.u = load i64, ptr %i.b, align 8, !tbaa !16   ; 3 uses
  %i.v = sub i64 %i.t, %i.u                       ; 3 uses
  %i.w = icmp ult i64 %i.v, %i.q
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.24, i32 noundef %i.n) #11
  br label %fmap_readn.exit.thread

bb.h:                                             ; preds = %bb.f
  %or.cond125.not = icmp ult i64 %i.u, %i.t
  br i1 %or.cond125.not, label %bb.i, label %fmap_readn.exit.thread

bb.i:                                             ; preds = %bb.h
  %spec.select.i96 = tail call i64 @llvm.umin.i64(i64 %i.v, i64 30) ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 104
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !20
  %i.z = tail call ptr %i.y(ptr noundef nonnull %i.r, i64 noundef %i.u, i64 noundef %spec.select.i96, i32 noundef 0) #11, !inline_history !44 ; 2 uses
  %.not26.i97 = icmp eq ptr %i.z, null
  br i1 %.not26.i97, label %fmap_readn.exit.thread, label %fmap_readn.exit99

fmap_readn.exit99:                                ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull align 1 %i.z, i64 %spec.select.i96, i1 false)
  %.not87 = icmp ugt i64 %i.v, 29
  br i1 %.not87, label %bb.j, label %fmap_readn.exit.thread

bb.j:                                             ; preds = %fmap_readn.exit99
  %i.aa = load i64, ptr %i.b, align 8, !tbaa !16
  %i.ab = add i64 %i.aa, 30
  store i64 %i.ab, ptr %i.b, align 8, !tbaa !16
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.25) #11
  %.0..0..0. = load i8, ptr %1, align 1, !tbaa !48 ; 4 uses
  %i.ac = zext i8 %.0..0..0. to i32
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.26, i32 noundef %i.ac) #11
  %.1..1..1..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1
  %.1..1..1. = load i8, ptr %.1..1..1..sroa_idx, align 1, !tbaa !49
  %i.ad = zext i8 %.1..1..1. to i32
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.27, i32 noundef %i.ad) #11
  %.2..2..2..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.2..2..2. = load i8, ptr %.2..2..2..sroa_idx, align 1, !tbaa !50
  %i.ae = zext i8 %.2..2..2. to i32
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.28, i32 noundef %i.ae) #11
  %.3..3..3..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 3
  %.3..3..3. = load i8, ptr %.3..3..3..sroa_idx, align 1, !tbaa !51
  %i.af = zext i8 %.3..3..3. to i32
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.29, i32 noundef %i.af) #11
  %.4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.4..4..4. = load i8, ptr %.4..4..4..sroa_idx, align 1, !tbaa !52
  %i.ag = zext i8 %.4..4..4. to i32
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.30, i32 noundef %i.ag) #11
  %.5..5..5..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 5
  %.5..5..5. = load i8, ptr %.5..5..5..sroa_idx, align 1, !tbaa !53
  %i.ah = zext i8 %.5..5..5. to i32
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.31, i32 noundef %i.ah) #11
  %.6..6..6..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 6
  %.6..6..6. = load i8, ptr %.6..6..6..sroa_idx, align 1, !tbaa !54
  %i.ai = zext i8 %.6..6..6. to i32
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.32, i32 noundef %i.ai) #11
  %i.aj = zext i8 %.0..0..0. to i64
  %i.ak = icmp ult i8 %.0..0..0., 30
  br i1 %i.ak, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.33) #11
  br label %fmap_readn.exit.thread

bb.l:                                             ; preds = %bb.j
  %.not88 = icmp eq i8 %.0..0..0., 30
  %.pre = load i64, ptr %i.b, align 8, !tbaa !16  ; 2 uses
  br i1 %.not88, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = add nsw i64 %i.aj, -30
  %i.am = add i64 %i.al, %.pre                    ; 2 uses
  store i64 %i.am, ptr %i.b, align 8, !tbaa !16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.an = phi i64 [ %i.am, %bb.m ], [ %.pre, %bb.l ] ; 2 uses
  %i.ao = zext nneg i16 %.0..0..0.101 to i64      ; 3 uses
  %i.ap = add nuw nsw i64 %i.ao, 2                ; 2 uses
  %.neg = sub i64 %i.c, %i.an
  %i.aq = add i64 %.neg, %i.ap                    ; 5 uses
  %i.ar = icmp ugt i64 %i.aq, %i.ao
  br i1 %i.ar, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.34) #11
  br label %fmap_readn.exit.thread

bb.p:                                             ; preds = %bb.n
  %.not89 = icmp eq i64 %i.aq, 0
  br i1 %.not89, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.as = add nuw nsw i64 %i.aq, 1                ; 2 uses
  %i.at = tail call ptr @cli_max_calloc(i64 noundef 1, i64 noundef %i.as) #11 ; 3 uses
  %i.au = load ptr, ptr %i.d, align 8, !tbaa !15  ; 2 uses
  %i.av = load i64, ptr %i.b, align 8, !tbaa !16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 112
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !24
  %i.ay = tail call ptr %i.ax(ptr noundef %i.au, i64 noundef %i.av, i64 noundef range(i64 2, 65537) %i.as) #11, !inline_history !45 ; 3 uses
  %i.az = icmp ne ptr %i.ay, null
  %i.ba = icmp ne ptr %i.at, null
  %or.cond = select i1 %i.az, i1 %i.ba, i1 false
  br i1 %or.cond, label %bb.r, label %.thread.sink.split

bb.r:                                             ; preds = %bb.q
  %i.bb = tail call i64 @strnlen(ptr noundef nonnull %i.ay, i64 noundef %i.aq) #12
  %.pre129 = load i64, ptr %i.b, align 8, !tbaa !16
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %i.bc = phi i64 [ %.pre129, %bb.r ], [ %i.an, %bb.p ]
  %.075 = phi ptr [ %i.ay, %bb.r ], [ null, %bb.p ]
  %.072 = phi ptr [ %i.at, %bb.r ], [ null, %bb.p ] ; 7 uses
  %.068 = phi i64 [ %i.bb, %bb.r ], [ 0, %bb.p ]  ; 2 uses
  %i.bd = add i64 %.068, 1
  %i.be = add i64 %i.bd, %i.bc                    ; 3 uses
  store i64 %i.be, ptr %i.b, align 8, !tbaa !16
  %.neg90 = sub i64 %i.c, %i.be
  %i.bf = add i64 %.neg90, %i.ap                  ; 5 uses
  %i.bg = icmp ugt i64 %i.bf, %i.ao
  br i1 %i.bg, label %.thread.sink.split, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not91 = icmp eq i64 %i.bf, 0
  br i1 %.not91, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bh = add nuw nsw i64 %i.bf, 1                ; 2 uses
  %i.bi = tail call ptr @cli_max_calloc(i64 noundef 1, i64 noundef %i.bh) #11 ; 3 uses
  %i.bj = load ptr, ptr %i.d, align 8, !tbaa !15  ; 2 uses
  %i.bk = load i64, ptr %i.b, align 8, !tbaa !16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 112
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !24
  %i.bn = tail call ptr %i.bm(ptr noundef %i.bj, i64 noundef %i.bk, i64 noundef range(i64 2, 65537) %i.bh) #11, !inline_history !45 ; 3 uses
  %i.bo = icmp ne ptr %i.bn, null
  %i.bp = icmp ne ptr %i.bi, null
  %or.cond3 = select i1 %i.bo, i1 %i.bp, i1 false
  br i1 %or.cond3, label %bb.v, label %.thread.sink.split

bb.v:                                             ; preds = %bb.u
  %i.bq = tail call i64 @strnlen(ptr noundef nonnull %i.bn, i64 noundef %i.bf) #12
  %.pre130 = load i64, ptr %i.b, align 8, !tbaa !16
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.t
  %i.br = phi i64 [ %.pre130, %bb.v ], [ %i.be, %bb.t ]
  %.074 = phi ptr [ %i.bn, %bb.v ], [ null, %bb.t ]
  %.070 = phi ptr [ %i.bi, %bb.v ], [ null, %bb.t ] ; 5 uses
  %.067 = phi i64 [ %i.bq, %bb.v ], [ 0, %bb.t ]  ; 2 uses
  %i.bs = add i64 %.067, 1
  %i.bt = add i64 %i.bs, %i.br
  store i64 %i.bt, ptr %i.b, align 8, !tbaa !16
  %i.bu = call i32 @text_normalize_init(ptr noundef nonnull %2, ptr noundef %.072, i64 noundef %i.aq) #11 ; 0 uses
  %i.bv = call i32 @text_normalize_init(ptr noundef nonnull %3, ptr noundef %.070, i64 noundef %i.bf) #11 ; 0 uses
  %i.bw = call i64 @text_normalize_buffer(ptr noundef nonnull %2, ptr noundef %.075, i64 noundef %.068) #11 ; 0 uses
  %i.bx = call i64 @text_normalize_buffer(ptr noundef nonnull %3, ptr noundef %.074, i64 noundef %.067) #11 ; 0 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.19, ptr noundef %.072) #11
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.37, ptr noundef %.070) #11
  %i.by = load i64, ptr %i.b, align 8, !tbaa !16
  %i.bz = add i64 %i.by, 4                        ; 2 uses
  store i64 %i.bz, ptr %i.b, align 8, !tbaa !16
  %i.ca = load ptr, ptr %i.d, align 8, !tbaa !15  ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 104
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !20
  %i.cd = call ptr %i.cc(ptr noundef %i.ca, i64 noundef %i.bz, i64 noundef 2, i32 noundef 0) #11, !inline_history !46 ; 2 uses
  %.not92126 = icmp eq ptr %i.cd, null
  br i1 %.not92126, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.w, %bb.x
  %i.ce = phi ptr [ %i.cr, %bb.x ], [ %i.cd, %bb.w ]
  %i.cf = load i16, ptr %i.ce, align 1, !tbaa !25 ; 2 uses
  %i.cg = load i64, ptr %i.b, align 8, !tbaa !16
  %i.ch = add i64 %i.cg, 2
  store i64 %i.ch, ptr %i.b, align 8, !tbaa !16
  %i.ci = zext i16 %i.cf to i32                   ; 2 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.38, i32 noundef %i.ci) #11
  %i.cj = icmp eq i16 %i.cf, 0                    ; 3 uses
  br i1 %i.cj, label %.thread, label %bb.x

bb.x:                                             ; preds = %.lr.ph
  %i.ck = add nuw nsw i32 %i.ci, 4
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = load i64, ptr %i.b, align 8, !tbaa !16
  %i.cn = add i64 %i.cm, %i.cl                    ; 2 uses
  store i64 %i.cn, ptr %i.b, align 8, !tbaa !16
  %i.co = load ptr, ptr %i.d, align 8, !tbaa !15  ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 104
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !20
  %i.cr = call ptr %i.cq(ptr noundef %i.co, i64 noundef %i.cn, i64 noundef 2, i32 noundef 0) #11, !inline_history !46 ; 2 uses
  %.not92 = icmp eq ptr %i.cr, null
  br i1 %.not92, label %.thread, label %.lr.ph

.thread.sink.split:                               ; preds = %bb.u, %bb.s, %bb.q
  %.str.36.sink = phi ptr [ @.str.34, %bb.s ], [ @.str.35, %bb.q ], [ @.str.36, %bb.u ]
  %.173.ph = phi ptr [ %.072, %bb.s ], [ %i.at, %bb.q ], [ %.072, %bb.u ]
  %.171.ph = phi ptr [ null, %bb.s ], [ null, %bb.q ], [ %i.bi, %bb.u ]
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull %.str.36.sink) #11
  br label %.thread

.thread:                                          ; preds = %bb.x, %.lr.ph, %.thread.sink.split, %bb.w
  %.173 = phi ptr [ %.072, %bb.w ], [ %.173.ph, %.thread.sink.split ], [ %.072, %.lr.ph ], [ %.072, %bb.x ] ; 2 uses
  %.171 = phi ptr [ %.070, %bb.w ], [ %.171.ph, %.thread.sink.split ], [ %.070, %.lr.ph ], [ %.070, %bb.x ] ; 2 uses
  %.2 = phi i1 [ false, %bb.w ], [ false, %.thread.sink.split ], [ %i.cj, %.lr.ph ], [ %i.cj, %bb.x ] ; 2 uses
  %.not93 = icmp eq ptr %.173, null
  br i1 %.not93, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.thread
  call void @free(ptr noundef nonnull %.173) #11
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.thread
  %.not94 = icmp eq ptr %.171, null
  br i1 %.not94, label %fmap_readn.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @free(ptr noundef nonnull %.171) #11
  br label %fmap_readn.exit.thread

fmap_readn.exit.thread:                           ; preds = %bb.z, %bb.aa, %bb.i, %bb.h, %fmap_readn.exit99, %bb.o, %bb.k, %bb.c, %bb.g, %bb.e, %bb.b, %bb.a, %fmap_readn.exit
  %.076 = phi i1 [ false, %fmap_readn.exit ], [ false, %bb.b ], [ false, %bb.a ], [ %.2, %bb.z ], [ %.2, %bb.aa ], [ false, %bb.i ], [ false, %bb.e ], [ false, %bb.h ], [ false, %fmap_readn.exit99 ], [ false, %bb.o ], [ false, %bb.k ], [ false, %bb.c ], [ false, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %.076
}

; Function Attrs: nounwind uwtable
define range(i32 0, 27) i32 @cli_unarj_header_check(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.arj_metadata_tag, align 8   ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 0, i64 32, i1 false)
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.3) #11
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %thread-pre-split.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 4 uses
  %i.c = icmp ne ptr %i.b, null
  %i.d = icmp ne ptr %2, null
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %bb.c, label %thread-pre-split.thread

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.b, ptr %i.e, align 8, !tbaa !15
  %i.f = zext i32 %1 to i64                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 4 uses
  store i64 0, ptr %2, align 8, !tbaa !66
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !20
  %i.j = tail call ptr %i.i(ptr noundef nonnull %i.b, i64 noundef %i.f, i64 noundef 2, i32 noundef 0) #11, !inline_history !0 ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.20, i64 noundef %i.f) #11
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.k = add nuw nsw i64 %i.f, 2
  store i64 %i.k, ptr %i.g, align 8, !tbaa !16
  %i.l = load i16, ptr %i.j, align 1
  %i.m = icmp ne i16 %i.l, -5536
  %i.n = zext i1 %i.m to i32
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %is_arj_archive.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
end_hunk_0
begin_hunk_1_@cli_unarj_header_check:bb.a
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.6) #11
  %.pr.pre = load ptr, ptr %3, align 8, !tbaa !27 ; 2 uses
  %.not27 = icmp eq ptr %.pr.pre, null
  br i1 %.not27, label %thread-pre-split.thread, label %bb.t

bb.t:                                             ; preds = %thread-pre-split
  tail call void @free(ptr noundef nonnull %.pr.pre) #11
  br label %thread-pre-split.thread

thread-pre-split.thread:                          ; preds = %bb.g, %bb.r, %bb.s, %bb.b, %bb.a, %bb.t, %thread-pre-split
  %.01940 = phi i32 [ 26, %thread-pre-split ], [ 26, %bb.t ], [ 26, %bb.g ], [ 0, %bb.r ], [ 26, %bb.s ], [ 2, %bb.b ], [ 2, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret i32 %.01940
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define range(i32 0, 27) i32 @cli_unarj_prepare_file(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %1 = alloca %struct.arj_file_hdr_tag, align 1   ; 13 uses
  %2 = alloca %struct.text_norm_state, align 8    ; 4 uses
  %3 = alloca %struct.text_norm_state, align 8    ; 4 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.13) #11
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.14) #11
  br label %bb.aq

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 22 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20
  %i.i = tail call ptr %i.h(ptr noundef %i.d, i64 noundef %i.f, i64 noundef 2, i32 noundef 0) #11, !inline_history !0 ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  %i.j = load i64, ptr %i.e, align 8, !tbaa !16   ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.20, i64 noundef %i.j) #11
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.k = add i64 %i.j, 2                          ; 6 uses
  store i64 %i.k, ptr %i.e, align 8, !tbaa !16
  %i.l = load i16, ptr %i.i, align 1
  %i.m = icmp ne i16 %i.l, -5536
  %i.n = zext i1 %i.m to i32
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %is_arj_archive.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.21) #11
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.4) #11
  br label %bb.aq

is_arj_archive.exit:                              ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !15   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %i.r = load i64, ptr %i.q, align 8, !tbaa !21   ; 2 uses
  %or.cond.not.i = icmp ult i64 %i.k, %i.r
  br i1 %or.cond.not.i, label %bb.h, label %arj_read_file_header.exit

bb.h:                                             ; preds = %is_arj_archive.exit
  %i.s = sub nuw i64 %i.r, %i.k                   ; 2 uses
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.s, i64 2) ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !20
  %i.v = tail call ptr %i.u(ptr noundef nonnull %i.p, i64 noundef %i.k, i64 noundef %spec.select.i.i, i32 noundef 0) #11, !inline_history !67 ; 2 uses
  %.not26.i.i = icmp eq ptr %i.v, null
  br i1 %.not26.i.i, label %arj_read_file_header.exit, label %fmap_readn.exit.i

fmap_readn.exit.i:                                ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.a, ptr nonnull align 1 %i.v, i64 %spec.select.i.i, i1 false)
  %.not.i4 = icmp ugt i64 %i.s, 1
  br i1 %.not.i4, label %bb.i, label %arj_read_file_header.exit

bb.i:                                             ; preds = %fmap_readn.exit.i
  %i.w = load i64, ptr %i.e, align 8, !tbaa !16
  %i.x = add i64 %i.w, 2
  store i64 %i.x, ptr %i.e, align 8, !tbaa !16
  %.0..0..0..0..0.129.i = load i16, ptr %i.a, align 2, !tbaa !23 ; 5 uses
  %i.y = zext i16 %.0..0..0..0..0.129.i to i32    ; 3 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.22, i32 noundef %i.y) #11
  %i.z = icmp eq i16 %.0..0..0..0..0.129.i, 0
  br i1 %i.z, label %arj_read_file_header.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = icmp ugt i16 %.0..0..0..0..0.129.i, 2600
  br i1 %i.aa, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.39, i32 noundef %i.y) #11
  br label %arj_read_file_header.exit

bb.l:                                             ; preds = %bb.j
  %narrow.i = add nuw nsw i16 %.0..0..0..0..0.129.i, 2
  %i.ab = zext nneg i16 %narrow.i to i64
  %i.ac = load ptr, ptr %i.c, align 8, !tbaa !15  ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 88
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !21 ; 2 uses
  %i.af = load i64, ptr %i.e, align 8, !tbaa !16  ; 3 uses
  %i.ag = sub i64 %i.ae, %i.af                    ; 3 uses
  %i.ah = icmp ult i64 %i.ag, %i.ab
  br i1 %i.ah, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.40, i32 noundef %i.y) #11
  br label %arj_read_file_header.exit

bb.n:                                             ; preds = %bb.l
  %or.cond162.not.i = icmp ult i64 %i.af, %i.ae
  br i1 %or.cond162.not.i, label %bb.o, label %arj_read_file_header.exit

bb.o:                                             ; preds = %bb.n
  %spec.select.i116.i = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 30) ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 104
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !20
  %i.ak = tail call ptr %i.aj(ptr noundef nonnull %i.ac, i64 noundef %i.af, i64 noundef %spec.select.i116.i, i32 noundef 0) #11, !inline_history !67 ; 2 uses
  %.not26.i117.i = icmp eq ptr %i.ak, null
  br i1 %.not26.i117.i, label %arj_read_file_header.exit, label %fmap_readn.exit119.i

fmap_readn.exit119.i:                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull align 1 %i.ak, i64 %spec.select.i116.i, i1 false)
  %.not100.i = icmp ugt i64 %i.ag, 29
  br i1 %.not100.i, label %bb.p, label %arj_read_file_header.exit

bb.p:                                             ; preds = %fmap_readn.exit119.i
  %i.al = load i64, ptr %i.e, align 8, !tbaa !16
  %i.am = add i64 %i.al, 30
  store i64 %i.am, ptr %i.e, align 8, !tbaa !16
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.41) #11
  %.0..0..0..0..0..i = load i8, ptr %1, align 1, !tbaa !71 ; 4 uses
  %i.an = zext i8 %.0..0..0..0..0..i to i32
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.26, i32 noundef %i.an) #11
  %.1..1..1..1..1..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1
  %.1..1..1..1..1..i = load i8, ptr %.1..1..1..1..1..sroa_idx, align 1, !tbaa !72
  %i.ao = zext i8 %.1..1..1..1..1..i to i32
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.27, i32 noundef %i.ao) #11
  %.2..2..2..2..2..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.2..2..2..2..2..i = load i8, ptr %.2..2..2..2..2..sroa_idx, align 1, !tbaa !73
  %i.ap = zext i8 %.2..2..2..2..2..i to i32
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.28, i32 noundef %i.ap) #11
  %.3..3..3..3..3..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 3
  %.3..3..3..3..3..i = load i8, ptr %.3..3..3..3..3..sroa_idx, align 1, !tbaa !74
  %i.aq = zext i8 %.3..3..3..3..3..i to i32
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.29, i32 noundef %i.aq) #11
  %.4..4..4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.4..4..4..4..4.122.i = load i8, ptr %.4..4..4..4..4..sroa_idx, align 1, !tbaa !75 ; 2 uses
  %i.ar = zext i8 %.4..4..4..4..4.122.i to i32
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.30, i32 noundef %i.ar) #11
  %.5..5..5..5..5..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 5
  %.5..5..5..5..5.124.i = load i8, ptr %.5..5..5..5..5..sroa_idx, align 1, !tbaa !76 ; 2 uses
  %i.as = zext i8 %.5..5..5..5..5.124.i to i32
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.42, i32 noundef %i.as) #11
  %.6..6..6..6..6..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 6
  %.6..6..6..6..6..i = load i8, ptr %.6..6..6..6..6..sroa_idx, align 1, !tbaa !77
  %i.at = zext i8 %.6..6..6..6..6..i to i32
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.32, i32 noundef %i.at) #11
  %.7..7..7..7..7..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 7
  %.7..7..7..7..7..i = load i8, ptr %.7..7..7..7..7..sroa_idx, align 1, !tbaa !78
  %i.au = zext i8 %.7..7..7..7..7..i to i32
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.32, i32 noundef %i.au) #11
  %.12..12..12..12..12..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.12..12..12..12..12.126.i = load i32, ptr %.12..12..12..12..12..sroa_idx, align 1, !tbaa !79 ; 2 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.43, i32 noundef %.12..12..12..12..12.126.i) #11
  %.16..16..16..16..16..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.16..16..16..16..16.128.i = load i32, ptr %.16..16..16..16..16..sroa_idx, align 1, !tbaa !80 ; 2 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.44, i32 noundef %.16..16..16..16..16.128.i) #11
  %i.av = zext i8 %.0..0..0..0..0..i to i64
  %i.aw = icmp ult i8 %.0..0..0..0..0..i, 30
  br i1 %i.aw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.33) #11
  br label %arj_read_file_header.exit

bb.r:                                             ; preds = %bb.p
  %.not101.i = icmp eq i8 %.0..0..0..0..0..i, 30
  %.pre.i = load i64, ptr %i.e, align 8, !tbaa !16 ; 2 uses
  br i1 %.not101.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ax = add nsw i64 %i.av, -30
  %i.ay = add i64 %i.ax, %.pre.i                  ; 2 uses
  store i64 %i.ay, ptr %i.e, align 8, !tbaa !16
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.az = phi i64 [ %i.ay, %bb.s ], [ %.pre.i, %bb.r ] ; 2 uses
  %i.ba = zext nneg i16 %.0..0..0..0..0.129.i to i64 ; 3 uses
  %i.bb = add nuw nsw i64 %i.ba, 2                ; 2 uses
  %.neg.i = sub i64 %i.k, %i.az
  %i.bc = add i64 %.neg.i, %i.bb                  ; 5 uses
  %i.bd = icmp ugt i64 %i.bc, %i.ba
  br i1 %i.bd, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.34) #11
  br label %arj_read_file_header.exit

bb.v:                                             ; preds = %bb.t
  %.not102.i = icmp eq i64 %i.bc, 0
  br i1 %.not102.i, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.be = add nuw nsw i64 %i.bc, 1                ; 2 uses
  %i.bf = tail call ptr @cli_max_calloc(i64 noundef 1, i64 noundef %i.be) #11 ; 3 uses
  %.not103.i = icmp eq ptr %i.bf, null
  br i1 %.not103.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.35) #11
  br label %arj_read_file_header.exit

bb.y:                                             ; preds = %bb.w
  %i.bg = load ptr, ptr %i.c, align 8, !tbaa !15  ; 2 uses
  %i.bh = load i64, ptr %i.e, align 8, !tbaa !16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 112
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !24
  %i.bk = tail call ptr %i.bj(ptr noundef %i.bg, i64 noundef %i.bh, i64 noundef range(i64 2, 65537) %i.be) #11, !inline_history !68 ; 3 uses
  %.not104.i = icmp eq ptr %i.bk, null
  br i1 %.not104.i, label %.thread150.i, label %bb.z

.thread150.i:                                     ; preds = %bb.y
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.45) #11
  br label %bb.an

bb.z:                                             ; preds = %bb.y
  %i.bl = tail call i64 @strnlen(ptr noundef nonnull %i.bk, i64 noundef %i.bc) #12
  %.pre164.i = load i64, ptr %i.e, align 8, !tbaa !16
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.v
  %i.bm = phi i64 [ %.pre164.i, %bb.z ], [ %i.az, %bb.v ]
  %.085.i = phi ptr [ %i.bk, %bb.z ], [ null, %bb.v ] ; 2 uses
  %.082.i = phi ptr [ %i.bf, %bb.z ], [ null, %bb.v ] ; 4 uses
  %.078.i = phi i64 [ %i.bl, %bb.z ], [ 0, %bb.v ] ; 3 uses
  %i.bn = add i64 %i.bm, 1
  %i.bo = add i64 %i.bn, %.078.i                  ; 3 uses
  store i64 %i.bo, ptr %i.e, align 8, !tbaa !16
  %.neg105.i = sub i64 %i.k, %i.bo
  %i.bp = add i64 %.neg105.i, %i.bb               ; 5 uses
  %i.bq = icmp ugt i64 %i.bp, %i.ba
  br i1 %i.bq, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.34) #11
  br label %bb.am

bb.ac:                                            ; preds = %bb.aa
  %.not106.i = icmp eq i64 %i.bp, 0
  br i1 %.not106.i, label %bb.ai, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.br = add nuw nsw i64 %i.bp, 1                ; 2 uses
  %i.bs = tail call ptr @cli_max_calloc(i64 noundef 1, i64 noundef %i.br) #11 ; 3 uses
  %.not107.i = icmp eq ptr %i.bs, null
  br i1 %.not107.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.36) #11
  br label %bb.am

bb.af:                                            ; preds = %bb.ad
  %i.bt = load ptr, ptr %i.c, align 8, !tbaa !15  ; 2 uses
  %i.bu = load i64, ptr %i.e, align 8, !tbaa !16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 112
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !24
  %i.bx = tail call ptr %i.bw(ptr noundef %i.bt, i64 noundef %i.bu, i64 noundef range(i64 2, 65537) %i.br) #11, !inline_history !68 ; 3 uses
  %.not108.i = icmp eq ptr %i.bx, null
  br i1 %.not108.i, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.46) #11
  br label %bb.am

bb.ah:                                            ; preds = %bb.af
  %i.by = tail call i64 @strnlen(ptr noundef nonnull %i.bx, i64 noundef %i.bp) #12
  %.pre165.i = load i64, ptr %i.e, align 8, !tbaa !16
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ac
  %i.bz = phi i64 [ %.pre165.i, %bb.ah ], [ %i.bo, %bb.ac ]
  %.084.i = phi ptr [ %i.bx, %bb.ah ], [ null, %bb.ac ]
  %.080.i = phi ptr [ %i.bs, %bb.ah ], [ null, %bb.ac ] ; 4 uses
  %.077.i = phi i64 [ %i.by, %bb.ah ], [ 0, %bb.ac ] ; 2 uses
  %i.ca = add i64 %i.bz, 1
  %i.cb = add i64 %i.ca, %.077.i
  store i64 %i.cb, ptr %i.e, align 8, !tbaa !16
  %i.cc = call i32 @text_normalize_init(ptr noundef nonnull %2, ptr noundef %.082.i, i64 noundef %i.bc) #11 ; 0 uses
  %i.cd = call i32 @text_normalize_init(ptr noundef nonnull %3, ptr noundef %.080.i, i64 noundef %i.bp) #11 ; 0 uses
  %i.ce = call i64 @text_normalize_buffer(ptr noundef nonnull %2, ptr noundef %.085.i, i64 noundef %.078.i) #11 ; 0 uses
  %i.cf = call i64 @text_normalize_buffer(ptr noundef nonnull %3, ptr noundef %.084.i, i64 noundef %.077.i) #11 ; 0 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.19, ptr noundef %.082.i) #11
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.37, ptr noundef %.080.i) #11
  %i.cg = call noalias ptr @strndup(ptr noundef %.085.i, i64 noundef %.078.i) #11
  store ptr %i.cg, ptr %0, align 8, !tbaa !27
  %i.ch = load i64, ptr %i.e, align 8, !tbaa !16
  %i.ci = add i64 %i.ch, 4                        ; 2 uses
  store i64 %i.ci, ptr %i.e, align 8, !tbaa !16
  %i.cj = load ptr, ptr %i.c, align 8, !tbaa !15  ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 104
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !20
  %i.cm = call ptr %i.cl(ptr noundef %i.cj, i64 noundef %i.ci, i64 noundef 2, i32 noundef 0) #11, !inline_history !69 ; 2 uses
  %.not109163.i = icmp eq ptr %i.cm, null
  br i1 %.not109163.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.ak, %bb.ai
  %i.cn = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %.not110.i = icmp eq ptr %i.cn, null
  br i1 %.not110.i, label %.thread140.i, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge.i
  call void @free(ptr noundef nonnull %i.cn) #11
  br label %.thread140.i

.thread140.i:                                     ; preds = %bb.aj, %._crit_edge.i
  store ptr null, ptr %0, align 8, !tbaa !27
  br label %bb.am

.lr.ph.i:                                         ; preds = %bb.ai, %bb.ak
  %i.co = phi ptr [ %i.db, %bb.ak ], [ %i.cm, %bb.ai ]
  %i.cp = load i16, ptr %i.co, align 1, !tbaa !25 ; 2 uses
  %i.cq = load i64, ptr %i.e, align 8, !tbaa !16
  %i.cr = add i64 %i.cq, 2
  store i64 %i.cr, ptr %i.e, align 8, !tbaa !16
  %i.cs = zext i16 %i.cp to i32                   ; 2 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.38, i32 noundef %i.cs) #11
  %i.ct = icmp eq i16 %i.cp, 0
  br i1 %i.ct, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i
  %i.cu = add nuw nsw i32 %i.cs, 4
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = load i64, ptr %i.e, align 8, !tbaa !16
  %i.cx = add i64 %i.cw, %i.cv                    ; 2 uses
  store i64 %i.cx, ptr %i.e, align 8, !tbaa !16
  %i.cy = load ptr, ptr %i.c, align 8, !tbaa !15  ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 104
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !20
  %i.db = call ptr %i.da(ptr noundef %i.cy, i64 noundef %i.cx, i64 noundef 2, i32 noundef 0) #11, !inline_history !69 ; 2 uses
  %.not109.i = icmp eq ptr %i.db, null
  br i1 %.not109.i, label %._crit_edge.i, label %.lr.ph.i

bb.al:                                            ; preds = %.lr.ph.i
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.12..12..12..12..12.126.i, ptr %i.dc, align 8, !tbaa !26
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.16..16..16..16..16.128.i, ptr %i.dd, align 4, !tbaa !28
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.5..5..5..5..5.124.i, ptr %i.de, align 8, !tbaa !29
  %i.df = and i8 %.4..4..4..4..4.122.i, 1
  %i.dg = zext nneg i8 %i.df to i32
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.dg, ptr %i.dh, align 8, !tbaa !30
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 -1, ptr %i.di, align 4, !tbaa !31
  %i.dj = load ptr, ptr %0, align 8, !tbaa !27
  %.not112.i = icmp eq ptr %i.dj, null
  %spec.select.i = select i1 %.not112.i, i32 20, i32 0
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.thread140.i, %bb.ag, %bb.ae, %bb.ab
  %.181.i = phi ptr [ null, %bb.ab ], [ %.080.i, %bb.al ], [ null, %bb.ae ], [ %.080.i, %.thread140.i ], [ %i.bs, %bb.ag ] ; 2 uses
  %.2.i = phi i32 [ 26, %bb.ab ], [ %spec.select.i, %bb.al ], [ 20, %bb.ae ], [ 26, %.thread140.i ], [ 26, %bb.ag ] ; 2 uses
  %.not113.i = icmp eq ptr %.082.i, null
  br i1 %.not113.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am, %.thread150.i
  %.2157.i = phi i32 [ 26, %.thread150.i ], [ %.2.i, %bb.am ]
  %.181156.i = phi ptr [ null, %.thread150.i ], [ %.181.i, %bb.am ]
  %.183155.i = phi ptr [ %i.bf, %.thread150.i ], [ %.082.i, %bb.am ]
  call void @free(ptr noundef nonnull %.183155.i) #11
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.2149.i = phi i32 [ %.2.i, %bb.am ], [ %.2157.i, %bb.an ] ; 2 uses
  %.181148.i = phi ptr [ %.181.i, %bb.am ], [ %.181156.i, %bb.an ] ; 2 uses
  %.not114.i = icmp eq ptr %.181148.i, null
  br i1 %.not114.i, label %arj_read_file_header.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @free(ptr noundef nonnull %.181148.i) #11
  br label %arj_read_file_header.exit
end_hunk_1
