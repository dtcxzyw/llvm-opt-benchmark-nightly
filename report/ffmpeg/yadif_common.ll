Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/yadif_common?download=true
inline.NumInlined: 8
inline.NumDeleted: 3
begin_hunk_0_@ff_yadif_filter_frame:bb.a

bb.ag:                                            ; preds = %bb.af
  %i.df = load ptr, ptr %i.l, align 8, !tbaa !34
  %i.dg = tail call i32 @av_frame_copy_props(ptr noundef nonnull %i.dd, ptr noundef %i.df) #5 ; 0 uses
  %i.dh = load ptr, ptr %i.de, align 8, !tbaa !44 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 276 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !43
  %i.dk = and i32 %i.dj, -9
  store i32 %i.dk, ptr %i.di, align 4, !tbaa !43
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 136 ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !45 ; 2 uses
  %.not114 = icmp eq i64 %i.dm, -9223372036854775808
  br i1 %.not114, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dn = getelementptr inbounds nuw i8, ptr %i.d, i64 172
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !46
  %i.dp = sext i32 %i.do to i64
  %i.dq = mul nsw i64 %i.dm, %i.dp
  store i64 %i.dq, ptr %i.dl, align 8, !tbaa !45
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.dr = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !53
  %i.dt = and i32 %i.ds, 1
  %.not115 = icmp eq i32 %i.dt, 0
  %i.du = getelementptr inbounds nuw i8, ptr %i.d, i64 172
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !46 ; 2 uses
  br i1 %.not115, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dh, i64 408 ; 2 uses
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !47
  %i.dz = mul nsw i64 %i.dy, %i.dw
  store i64 %i.dz, ptr %i.dx, align 8, !tbaa !47
  br label %bb.am

bb.ak:                                            ; preds = %bb.ai
  %i.ea = icmp eq i32 %i.dv, 1
  br i1 %i.ea, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dh, i64 408 ; 2 uses
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !47
  %i.ed = ashr i64 %i.ec, 1
  store i64 %i.ed, ptr %i.eb, align 8, !tbaa !47
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al, %bb.aj
  %i.ee = tail call fastcc i32 @return_frame(ptr noundef nonnull %i.b, i32 noundef 0)
  br label %.thread172

.thread172:                                       ; preds = %bb.t, %.thread, %bb.af, %bb.ac, %bb.h, %bb.am, %._crit_edge, %checkstride.exit144
  %.0 = phi i32 [ -1, %checkstride.exit144 ], [ %i.cv, %._crit_edge ], [ 0, %bb.t ], [ %i.ee, %bb.am ], [ -12, %bb.ac ], [ -12, %bb.h ], [ -12, %bb.af ], [ 0, %.thread ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

declare i32 @ff_ccfifo_extract(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @return_frame(ptr noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !66   ; 2 uses
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !34
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 276
  %i.l = load i32, ptr %i.k, align 4, !tbaa !43   ; 2 uses
  %i.m = and i32 %i.l, 8
  %.not = icmp eq i32 %i.m, 0
  %i.n = lshr i32 %i.l, 4
  %.lobit = and i32 %i.n, 1
  %i.o = select i1 %.not, i32 1, i32 %.lobit
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.p = xor i32 %i.g, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.o, %bb.b ], [ %i.p, %bb.c ]  ; 2 uses
  %.not49 = icmp eq i32 %1, 0                     ; 2 uses
  br i1 %.not49, label %._crit_edge, label %bb.e

._crit_edge:                                      ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !44
  br label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.r = load i32, ptr %i.q, align 8, !tbaa !51
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.t = load i32, ptr %i.s, align 4, !tbaa !52
  %i.u = tail call ptr @ff_get_video_buffer(ptr noundef %i.e, i32 noundef %i.r, i32 noundef %i.t) #5 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store ptr %i.u, ptr %i.v, align 8, !tbaa !44
  %.not50 = icmp eq ptr %i.u, null
  br i1 %.not50, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !34
  %i.y = tail call i32 @av_frame_copy_props(ptr noundef nonnull %i.u, ptr noundef %i.x) #5 ; 0 uses
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !44   ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 276 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !43
  %i.ac = and i32 %i.ab, -9
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !43
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !36
  %i.af = icmp eq i32 %i.ae, -1
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.ad, align 8, !tbaa !36
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.f, %bb.g
  %i.ag = phi ptr [ %.pre, %._crit_edge ], [ %i.z, %bb.f ], [ %i.z, %bb.g ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !67
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 4 uses
  %i.ak = xor i32 %1, %.0
  %i.al = xor i32 %i.ak, 1
  tail call void %i.ai(ptr noundef nonnull %0, ptr noundef %i.ag, i32 noundef %i.al, i32 noundef %.0) #5
  br i1 %.not49, label %._crit_edge52, label %bb.i

._crit_edge52:                                    ; preds = %bb.h
  %.pre53 = load ptr, ptr %i.aj, align 8, !tbaa !44
  br label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !34
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 136
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !45 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !35
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 136
  %i.at = load i64, ptr %i.as, align 8, !tbaa !45 ; 2 uses
  %i.au = icmp ne i64 %i.at, -9223372036854775808
  %i.av = icmp ne i64 %i.ap, -9223372036854775808
  %or.cond = select i1 %i.au, i1 %i.av, i1 false
  br i1 %or.cond, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.aw = add nsw i64 %i.at, %i.ap                ; 2 uses
  %i.ax = load ptr, ptr %i.aj, align 8, !tbaa !44 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 136 ; 2 uses
  store i64 %i.aw, ptr %i.ay, align 8, !tbaa !45
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 172
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !46
  %i.bb = icmp eq i32 %i.ba, 1
  br i1 %i.bb, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bc = ashr i64 %i.aw, 1
  store i64 %i.bc, ptr %i.ay, align 8, !tbaa !45
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 408 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !47
  %i.bf = ashr i64 %i.be, 1
  store i64 %i.bf, ptr %i.bd, align 8, !tbaa !47
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.bg = load ptr, ptr %i.aj, align 8, !tbaa !44 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 136
  store i64 -9223372036854775808, ptr %i.bh, align 8, !tbaa !45
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge52, %bb.l, %bb.k, %bb.j
  %i.bi = phi ptr [ %.pre53, %._crit_edge52 ], [ %i.bg, %bb.l ], [ %i.ax, %bb.k ], [ %i.ax, %bb.j ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.bk = tail call i32 @ff_ccfifo_inject(ptr noundef nonnull %i.bj, ptr noundef %i.bi) #5 ; 0 uses
  %i.bl = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !50
  %i.bn = load ptr, ptr %i.aj, align 8, !tbaa !44
  %i.bo = tail call i32 @ff_filter_frame(ptr noundef %i.bm, ptr noundef %i.bn) #5
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !53
  %i.br = xor i32 %1, 1
  %spec.select = and i32 %i.bq, %i.br
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i32 %spec.select, ptr %i.bs, align 4, !tbaa !33
  br label %bb.n

bb.n:                                             ; preds = %bb.e, %bb.m
  %.044 = phi i32 [ %i.bo, %bb.m ], [ -12, %bb.e ]
  ret i32 %.044
}

declare void @av_frame_free(ptr noundef) local_unnamed_addr #2

declare ptr @av_frame_clone(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @fixstride(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.c = load i32, ptr %i.b, align 8, !tbaa !68
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.e = load i32, ptr %i.d, align 4, !tbaa !69
  %i.f = tail call ptr @ff_default_get_video_buffer(ptr noundef %0, i32 noundef %i.c, i32 noundef %i.e) #5 ; 9 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !70
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @av_frame_copy_props(ptr noundef nonnull %i.f, ptr noundef nonnull %1) #5 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 116
  %i.k = load i32, ptr %i.j, align 4, !tbaa !71
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.m = load i32, ptr %i.l, align 8, !tbaa !68
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 108
  %i.o = load i32, ptr %i.n, align 4, !tbaa !69
  tail call void @av_image_copy(ptr noundef nonnull %i.f, ptr noundef nonnull %i.h, ptr noundef nonnull %1, ptr noundef nonnull %i.i, i32 noundef %i.k, i32 noundef %i.m, i32 noundef %i.o) #5
  tail call void @av_frame_unref(ptr noundef nonnull %1) #5
  tail call void @av_frame_move_ref(ptr noundef nonnull %1, ptr noundef nonnull %i.f) #5
  call void @av_frame_free(ptr noundef nonnull %i.a) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

declare i32 @ff_ccfifo_inject(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ff_get_video_buffer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @av_frame_copy_props(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define range(i32 -2147483648, 1) i32 @ff_yadif_request_frame(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !54     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !33
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call fastcc i32 @return_frame(ptr noundef nonnull %i.a, i32 noundef 1) ; 0 uses
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !72
  %.not23 = icmp eq i32 %i.h, 0
  br i1 %.not23, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !55
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !50
  %i.l = tail call i32 @ff_request_frame(ptr noundef %i.k) #5 ; 3 uses
  %i.m = icmp eq i32 %i.l, -541478725
  br i1 %i.m, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !34
  %.not24 = icmp eq ptr %i.o, null
  br i1 %.not24, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !35
  %i.r = tail call ptr @av_frame_clone(ptr noundef %i.q) #5 ; 3 uses
  %.not25.not = icmp eq ptr %i.r, null
  br i1 %.not25.not, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  store i32 -1, ptr %i.s, align 8, !tbaa !36
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !35
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 136
  %i.v = load i64, ptr %i.u, align 8, !tbaa !45
  %i.w = shl nsw i64 %i.v, 1
  %i.x = load ptr, ptr %i.n, align 8, !tbaa !34
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 136
  %i.z = load i64, ptr %i.y, align 8, !tbaa !45
  %i.aa = sub nsw i64 %i.w, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 136
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !45
  %i.ac = load ptr, ptr %i.i, align 8, !tbaa !55
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !50
  %i.ae = tail call i32 @ff_yadif_filter_frame(ptr noundef %i.ad, ptr noundef nonnull %i.r) ; 0 uses
  store i32 1, ptr %i.g, align 8, !tbaa !72
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.af = icmp slt i32 %i.l, 0
  br i1 %i.af, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.f, %bb.h, %bb.c, %bb.i, %bb.b
  %.1 = phi i32 [ 0, %bb.b ], [ %i.l, %bb.h ], [ 0, %bb.i ], [ -12, %bb.f ], [ -541478725, %bb.c ], [ -541478725, %bb.e ]
  ret i32 %.1
}

declare i32 @ff_request_frame(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -2147483648, 1) i32 @ff_yadif_config_output_common(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !54     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !27   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %.sroa.03.0.copyload = load i32, ptr %i.g, align 8, !tbaa !38 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 100
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !38 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.j = sext i32 %.sroa.03.0.copyload to i64
  %i.k = sext i32 %.sroa.5.0.copyload to i64
  %i.l = shl nsw i64 %i.k, 1
  %i.m = tail call i32 @av_reduce(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, i64 noundef %i.j, i64 noundef %i.l, i64 noundef 2147483647) #5
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.a, i32 noundef 24, ptr noundef nonnull @.str.5) #5
  store i32 %.sroa.03.0.copyload, ptr %i.h, align 8, !tbaa !38
  store i32 %.sroa.5.0.copyload, ptr %i.i, align 4, !tbaa !38
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i32 [ 1, %bb.b ], [ 2, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 172
  store i32 %.sink, ptr %i.n, align 4, !tbaa !46
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !50   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.r = load i32, ptr %i.q, align 8, !tbaa !51   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.r, ptr %i.s, align 8, !tbaa !51
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 44
  %i.u = load i32, ptr %i.t, align 4, !tbaa !52   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.u, ptr %i.v, align 4, !tbaa !52
  %i.w = icmp slt i32 %i.r, 3
  %i.x = icmp slt i32 %i.u, 3
  %or.cond = select i1 %i.w, i1 true, i1 %i.x
  br i1 %or.cond, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !53
  %i.aa = and i32 %i.z, 1
  %.not35 = icmp eq i32 %i.aa, 0
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 280
  %i.ac = load i64, ptr %i.ab, align 8            ; 2 uses
  br i1 %.not35, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = tail call i64 @av_mul_q(i64 %i.ac, i64 4294967298) #7
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sink36 = phi i64 [ %i.ad, %bb.e ], [ %i.ac, %bb.d ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 %.sink36, ptr %i.ae, align 8, !tbaa !38
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.ag = tail call i32 @ff_ccfifo_init(ptr noundef nonnull %i.af, i64 %.sink36, ptr noundef nonnull %i.a) #5 ; 2 uses
end_hunk_0
