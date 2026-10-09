Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/column-utils?download=true
inline.NumInlined: 64
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@set_fd_time:bb.a
  call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_fatal_full(ptr noundef nonnull @.str.1, i32 noundef 7, ptr noundef nonnull @.str.7, i64 noundef 1629, ptr noundef nonnull @__func__.set_fd_time, ptr noundef nonnull @.str.9) #21
  unreachable

bb.ay:                                            ; preds = %bb.aq
  store i8 0, ptr %2, align 1
  br label %set_abs_ymd_time.exit

bb.az:                                            ; preds = %bb.a
  %i.bx = getelementptr i8, ptr %1, i64 53        ; 2 uses
  %i.by = load i16, ptr %i.bx, align 1
  %i.bz = and i16 %i.by, 128
  %.not.i68.not = icmp eq i16 %i.bz, 0
  br i1 %.not.i68.not, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  store i8 0, ptr %2, align 1
  br label %set_abs_ymd_time.exit

bb.bb:                                            ; preds = %bb.az
  %i.ca = getelementptr i8, ptr %1, i64 56
  %i.cb = tail call i32 @timestamp_get_precision() ; 3 uses
  %i.cc = icmp eq i32 %i.cb, -1
  br i1 %i.cc, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.cd = load i16, ptr %i.bx, align 1
  %i.ce = lshr i16 %i.cd, 10
  %i.cf = and i16 %i.ce, 15
  %i.cg = zext nneg i16 %i.cf to i32
  br label %get_frame_timestamp_precision.exit.i69

bb.bd:                                            ; preds = %bb.bb
  %i.ch = icmp slt i32 %i.cb, 0
  br i1 %i.ch, label %bb.be, label %get_frame_timestamp_precision.exit.i69

bb.be:                                            ; preds = %bb.bd
  tail call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_fatal_full(ptr noundef nonnull @.str.1, i32 noundef 7, ptr noundef nonnull @.str.7, i64 noundef 1001, ptr noundef nonnull @__func__.get_frame_timestamp_precision, ptr noundef nonnull @.str.9) #21
  unreachable

get_frame_timestamp_precision.exit.i69:           ; preds = %bb.bd, %bb.bc
  %.0.i.i70 = phi i32 [ %i.cg, %bb.bc ], [ %i.cb, %bb.bd ]
  %spec.store.select.i.i71 = tail call range(i32 0, 10) i32 @llvm.umin.i32(i32 %.0.i.i70, i32 9)
  tail call void @display_epoch_time(ptr noundef %2, i64 noundef 2048, ptr noundef %i.ca, i32 noundef %spec.store.select.i.i71)
  br label %set_abs_ymd_time.exit

bb.bf:                                            ; preds = %bb.a
  %i.ci = load ptr, ptr @col_decimal_point, align 8
  tail call fastcc void @set_abs_time(ptr noundef %1, ptr noundef %2, ptr noundef %i.ci, i1 noundef zeroext false)
  br label %set_abs_ymd_time.exit

bb.bg:                                            ; preds = %bb.a
  %i.cj = load ptr, ptr @col_decimal_point, align 8
  %i.ck = getelementptr i8, ptr %1, i64 53        ; 2 uses
  %i.cl = load i16, ptr %i.ck, align 1
  %i.cm = and i16 %i.cl, 128
  %.not.i72 = icmp eq i16 %i.cm, 0
  br i1 %.not.i72, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  store i8 0, ptr %2, align 1
  br label %set_abs_ymd_time.exit

bb.bi:                                            ; preds = %bb.bg
  %i.cn = getelementptr i8, ptr %1, i64 56
  %i.co = tail call i32 @timestamp_get_precision() ; 3 uses
  %i.cp = icmp eq i32 %i.co, -1
  br i1 %i.cp, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.cq = load i16, ptr %i.ck, align 1
  %i.cr = lshr i16 %i.cq, 10
  %i.cs = and i16 %i.cr, 15
  %i.ct = zext nneg i16 %i.cs to i32
  br label %get_frame_timestamp_precision.exit.i73

bb.bk:                                            ; preds = %bb.bi
  %i.cu = icmp slt i32 %i.co, 0
  br i1 %i.cu, label %bb.bl, label %get_frame_timestamp_precision.exit.i73

bb.bl:                                            ; preds = %bb.bk
  tail call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_fatal_full(ptr noundef nonnull @.str.1, i32 noundef 7, ptr noundef nonnull @.str.7, i64 noundef 1001, ptr noundef nonnull @__func__.get_frame_timestamp_precision, ptr noundef nonnull @.str.9) #21
  unreachable

get_frame_timestamp_precision.exit.i73:           ; preds = %bb.bk, %bb.bj
  %.0.i.i74 = phi i32 [ %i.ct, %bb.bj ], [ %i.co, %bb.bk ]
  %spec.store.select.i.i75 = tail call range(i32 0, 10) i32 @llvm.umin.i32(i32 %.0.i.i74, i32 9)
  tail call void @format_nstime_as_iso8601(ptr noundef %2, i64 noundef 2048, ptr noundef %i.cn, ptr noundef %i.cj, i1 noundef zeroext false, i32 noundef %spec.store.select.i.i75)
  br label %set_abs_ymd_time.exit

bb.bm:                                            ; preds = %bb.a
  %i.cv = load ptr, ptr @col_decimal_point, align 8
  tail call fastcc void @set_abs_ydoy_time(ptr noundef %1, ptr noundef %2, ptr noundef %i.cv, i1 noundef zeroext false)
  br label %set_abs_ymd_time.exit

bb.bn:                                            ; preds = %bb.a
  tail call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_fatal_full(ptr noundef nonnull @.str.1, i32 noundef 7, ptr noundef nonnull @.str.7, i64 noundef 1654, ptr noundef nonnull @__func__.set_fd_time, ptr noundef nonnull @.str.9) #21
  unreachable

set_abs_ymd_time.exit:                            ; preds = %get_frame_timestamp_precision.exit.i73, %bb.bh, %get_frame_timestamp_precision.exit.i69, %bb.ba, %get_frame_timestamp_precision.exit.i, %bb.d, %bb.ay, %bb.aw, %set_time_seconds.exit67, %bb.ap, %bb.an, %set_time_seconds.exit63, %bb.ag, %set_time_seconds.exit59, %set_time_seconds.exit55, %bb.u, %set_time_seconds.exit51, %set_time_seconds.exit, %bb.bm, %bb.bf, %bb.i, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @timestamp_get_type() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @set_abs_time(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.tm, align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.a = getelementptr i8, ptr %0, i64 53         ; 2 uses
  %i.b = load i16, ptr %i.a, align 1
  %i.c = and i16 %i.b, 128
  %.not = icmp eq i16 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %1, align 1
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 56         ; 2 uses
  br i1 %3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = call ptr @ws_localtime_r(ptr noundef %i.d, ptr noundef nonnull %4)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.f = call ptr @ws_gmtime_r(ptr noundef %i.d, ptr noundef nonnull %4)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.045 = phi ptr [ %i.e, %bb.d ], [ %i.f, %bb.e ] ; 4 uses
  %i.g = icmp eq ptr %.045, null
  br i1 %i.g, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.h = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %1, i64 noundef 2048, i32 noundef 2, i64 noundef -1, ptr noundef nonnull @.str.20) ; 0 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.i = getelementptr i8, ptr %.045, i64 8
  %i.j = load i32, ptr %i.i, align 8
  %i.k = getelementptr i8, ptr %.045, i64 4
  %i.l = load i32, ptr %i.k, align 4
  %i.m = load i32, ptr %.045, align 8
  %i.n = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %1, i64 noundef 2048, i32 noundef 2, i64 noundef -1, ptr noundef nonnull @.str.21, i32 noundef %i.j, i32 noundef %i.l, i32 noundef %i.m) ; 3 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.p = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %1, i64 noundef 2048, i32 noundef 2, i64 noundef -1, ptr noundef nonnull @.str.22) ; 0 uses
  br label %bb.r

bb.j:                                             ; preds = %bb.h
  %i.q = icmp samesign ugt i32 %i.n, 2047
  br i1 %i.q, label %bb.r, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = zext nneg i32 %i.n to i64                ; 4 uses
  %i.s = getelementptr i8, ptr %1, i64 %i.r       ; 2 uses
  %i.t = sub nuw nsw i64 2048, %i.r               ; 2 uses
  %i.u = call i32 @timestamp_get_precision()      ; 3 uses
  %i.v = icmp eq i32 %i.u, -1
  br i1 %i.v, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.w = load i16, ptr %i.a, align 1
  %i.x = lshr i16 %i.w, 10
  %i.y = and i16 %i.x, 15
  %i.z = zext nneg i16 %i.y to i32
  br label %get_frame_timestamp_precision.exit

bb.m:                                             ; preds = %bb.k
  %i.aa = icmp slt i32 %i.u, 0
  br i1 %i.aa, label %bb.n, label %get_frame_timestamp_precision.exit

bb.n:                                             ; preds = %bb.m
  call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_fatal_full(ptr noundef nonnull @.str.1, i32 noundef 7, ptr noundef nonnull @.str.7, i64 noundef 1001, ptr noundef nonnull @__func__.get_frame_timestamp_precision, ptr noundef nonnull @.str.9) #21
  unreachable

get_frame_timestamp_precision.exit:               ; preds = %bb.l, %bb.m
  %.0.i = phi i32 [ %i.z, %bb.l ], [ %i.u, %bb.m ] ; 2 uses
  %.not49 = icmp eq i32 %.0.i, 0
  br i1 %.not49, label %bb.p, label %bb.o

bb.o:                                             ; preds = %get_frame_timestamp_precision.exit
  %spec.store.select.i = call range(i32 0, 10) i32 @llvm.umin.i32(i32 %.0.i, i32 9)
  %i.ab = getelementptr i8, ptr %0, i64 64
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = call i32 @format_fractional_part_nsecs(ptr noundef %i.s, i64 noundef %i.t, i32 noundef %i.ac, ptr noundef %2, i32 noundef %spec.store.select.i) ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %get_frame_timestamp_precision.exit
  br i1 %3, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ae = getelementptr i8, ptr %i.s, i64 %i.r
  %i.af = sub nsw i64 %i.t, %i.r                  ; 2 uses
  %5 = icmp eq i64 %i.af, 1                       ; 2 uses
  %spec.select.idx = sext i1 %5 to i64
  %spec.select = getelementptr i8, ptr %i.ae, i64 %spec.select.idx
  %spec.select50 = select i1 %5, i64 2, i64 %i.af
  %i.ag = call i64 @g_strlcpy(ptr noundef %spec.select, ptr noundef nonnull @.str.23, i64 noundef %spec.select50) ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.j, %bb.i, %bb.g, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @set_abs_ydoy_time(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.tm, align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.a = getelementptr i8, ptr %0, i64 53         ; 2 uses
  %i.b = load i16, ptr %i.a, align 1
  %i.c = and i16 %i.b, 128
  %.not = icmp eq i16 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %1, align 1
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 56         ; 2 uses
  br i1 %3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = call ptr @ws_localtime_r(ptr noundef %i.d, ptr noundef nonnull %4)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.f = call ptr @ws_gmtime_r(ptr noundef %i.d, ptr noundef nonnull %4)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.047 = phi ptr [ %i.e, %bb.d ], [ %i.f, %bb.e ] ; 6 uses
  %i.g = icmp eq ptr %.047, null
  br i1 %i.g, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.h = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %1, i64 noundef 2048, i32 noundef 2, i64 noundef -1, ptr noundef nonnull @.str.20) ; 0 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.i = getelementptr i8, ptr %.047, i64 20
  %i.j = load i32, ptr %i.i, align 4
  %i.k = add i32 %i.j, 1900
  %i.l = getelementptr i8, ptr %.047, i64 28
  %i.m = load i32, ptr %i.l, align 4
  %i.n = add i32 %i.m, 1
  %i.o = getelementptr i8, ptr %.047, i64 8
  %i.p = load i32, ptr %i.o, align 8
  %i.q = getelementptr i8, ptr %.047, i64 4
  %i.r = load i32, ptr %i.q, align 4
  %i.s = load i32, ptr %.047, align 8
  %i.t = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %1, i64 noundef 2048, i32 noundef 2, i64 noundef -1, ptr noundef nonnull @.str.24, i32 noundef %i.k, i32 noundef %i.n, i32 noundef %i.p, i32 noundef %i.r, i32 noundef %i.s) ; 4 uses
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.v = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %1, i64 noundef 2048, i32 noundef 2, i64 noundef -1, ptr noundef nonnull @.str.22) ; 0 uses
  br label %bb.r

bb.j:                                             ; preds = %bb.h
  %i.w = icmp samesign ugt i32 %i.t, 2047
  br i1 %i.w, label %bb.r, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = zext nneg i32 %i.t to i64                ; 2 uses
  %i.y = getelementptr i8, ptr %1, i64 %i.x       ; 2 uses
  %i.z = sub nuw nsw i64 2048, %i.x               ; 2 uses
  %i.aa = call i32 @timestamp_get_precision()     ; 3 uses
  %i.ab = icmp eq i32 %i.aa, -1
  br i1 %i.ab, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ac = load i16, ptr %i.a, align 1
  %i.ad = lshr i16 %i.ac, 10
  %i.ae = and i16 %i.ad, 15
  %i.af = zext nneg i16 %i.ae to i32
  br label %get_frame_timestamp_precision.exit

bb.m:                                             ; preds = %bb.k
  %i.ag = icmp slt i32 %i.aa, 0
  br i1 %i.ag, label %bb.n, label %get_frame_timestamp_precision.exit

bb.n:                                             ; preds = %bb.m
  call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_fatal_full(ptr noundef nonnull @.str.1, i32 noundef 7, ptr noundef nonnull @.str.7, i64 noundef 1001, ptr noundef nonnull @__func__.get_frame_timestamp_precision, ptr noundef nonnull @.str.9) #21
  unreachable

get_frame_timestamp_precision.exit:               ; preds = %bb.l, %bb.m
  %.0.i = phi i32 [ %i.af, %bb.l ], [ %i.aa, %bb.m ] ; 2 uses
  %.not51 = icmp eq i32 %.0.i, 0
  br i1 %.not51, label %bb.p, label %bb.o

bb.o:                                             ; preds = %get_frame_timestamp_precision.exit
  %spec.store.select.i = call range(i32 0, 10) i32 @llvm.umin.i32(i32 %.0.i, i32 9)
  %i.ah = getelementptr i8, ptr %0, i64 64
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = call i32 @format_fractional_part_nsecs(ptr noundef %i.y, i64 noundef %i.z, i32 noundef %i.ai, ptr noundef %2, i32 noundef %spec.store.select.i)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %get_frame_timestamp_precision.exit
  %.0 = phi i32 [ %i.aj, %bb.o ], [ %i.t, %get_frame_timestamp_precision.exit ] ; 2 uses
  br i1 %3, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ak = sext i32 %.0 to i64                     ; 2 uses
  %i.al = getelementptr i8, ptr %i.y, i64 %i.ak
  %i.am = sub nsw i64 %i.z, %i.ak                 ; 2 uses
  %i.an = icmp eq i64 %i.am, 1
  %i.ao = icmp sgt i32 %.0, 0
  %or.cond = select i1 %i.an, i1 %i.ao, i1 false  ; 2 uses
  %spec.select.idx = sext i1 %or.cond to i64
  %spec.select = getelementptr i8, ptr %i.al, i64 %spec.select.idx
  %spec.select52 = select i1 %or.cond, i64 2, i64 %i.am
  %i.ap = call i64 @g_strlcpy(ptr noundef %spec.select, ptr noundef nonnull @.str.23, i64 noundef %spec.select52) ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.j, %bb.i, %bb.g, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @frame_rel_time(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare i32 @timestamp_get_seconds_type() local_unnamed_addr #5

; Function Attrs: noreturn null_pointer_is_valid
declare void @ws_log_fatal_full(ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @frame_rel_start_time(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @frame_delta_time_prev_captured(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @set_time_hour_min_sec(ptr nofree noundef readonly captures(none) %0, i64 %.0.val, i32 %.8.val, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i64 %.0.val, -1
  %.067.in.in = tail call i64 @llvm.abs.i64(i64 %.0.val, i1 false) ; 4 uses
  %.0 = udiv i64 %.067.in.in, 60
  %.067.in = urem i64 %.067.in.in, 60
  %.067 = trunc nuw nsw i64 %.067.in to i32       ; 3 uses
  %i.b = urem i64 %.0, 60                         ; 2 uses
  %i.c = trunc nuw nsw i64 %i.b to i32            ; 2 uses
  %i.d = icmp sgt i32 %.8.val, -1
  %.066 = tail call i32 @llvm.abs.i32(i32 %.8.val, i1 false)
  %i.e = and i1 %i.d, %i.a
  %.1 = select i1 %i.e, ptr @.str.1, ptr @.str.26 ; 3 uses
  %.not77 = icmp ult i64 %.067.in.in, 3600
  br i1 %.not77, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = udiv i64 %.067.in.in, 3600
  %i.g = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %1, i64 noundef 2048, i32 noundef 2, i64 noundef -1, ptr noundef nonnull @.str.25, ptr noundef nonnull %.1, i64 noundef %i.f, i32 noundef %i.c, i32 noundef %.067)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %.not78 = icmp eq i64 %i.b, 0
  br i1 %.not78, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %1, i64 noundef 2048, i32 noundef 2, i64 noundef -1, ptr noundef nonnull @.str.27, ptr noundef nonnull %.1, i32 noundef %i.c, i32 noundef %.067)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %1, i64 noundef 2048, i32 noundef 2, i64 noundef -1, ptr noundef nonnull @.str.28, ptr noundef nonnull %.1, i32 noundef %.067)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.062 = phi i32 [ %i.g, %bb.b ], [ %i.h, %bb.d ], [ %i.i, %bb.e ] ; 3 uses
  %i.j = icmp slt i32 %.062, 0
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.k = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %1, i64 noundef 2048, i32 noundef 2, i64 noundef -1, ptr noundef nonnull @.str.22) ; 0 uses
  br label %bb.p

bb.h:                                             ; preds = %bb.f
  %i.l = icmp samesign ugt i32 %.062, 2047
  br i1 %i.l, label %bb.p, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = zext nneg i32 %.062 to i64               ; 2 uses
  %i.n = getelementptr i8, ptr %1, i64 %i.m       ; 3 uses
  %i.o = sub nuw nsw i64 2048, %i.m               ; 4 uses
  %i.p = tail call i32 @timestamp_get_precision() ; 3 uses
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr i8, ptr %0, i64 53
  %i.s = load i16, ptr %i.r, align 1
  %i.t = lshr i16 %i.s, 10
  %i.u = and i16 %i.t, 15
  %i.v = zext nneg i16 %i.u to i32
end_hunk_0
