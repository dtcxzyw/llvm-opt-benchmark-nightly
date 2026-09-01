Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/ffplay?download=true
inline.NumInlined: 170
inline.NumDeleted: 67
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@stream_cycle_channel:bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @seek_chapter(ptr nofree noundef captures(none) %0, i32 noundef range(i32 -1, 2) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call nsz fastcc double @get_master_clock(ptr noundef %0)
  %i.b = fmul nsz double %i.a, 1.000000e+06
  %i.c = fptosi double %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !155  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.g = load i32, ptr %i.f, align 8, !tbaa !156
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %stream_seek.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.h = phi ptr [ %i.s, %bb.b ], [ %i.e, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !425
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !426  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !428
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = load i64, ptr %i.o, align 8
  %i.q = tail call i32 @av_compare_ts(i64 noundef %i.c, i64 4294967296000001, i64 noundef %i.n, i64 %i.p) #18
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %.split.loop.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !155  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %i.u = load i32, ptr %i.t, align 8, !tbaa !156  ; 2 uses
  %i.v = zext i32 %i.u to i64
  %i.w = icmp samesign ult i64 %indvars.iv.next, %i.v
  br i1 %i.w, label %.lr.ph, label %.split.loop.exit28.loopexit, !llvm.loop !430

.split.loop.exit:                                 ; preds = %.lr.ph
  %i.x = trunc nuw nsw i64 %indvars.iv to i32
  %i.y = add nsw i32 %i.x, -1
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !155
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 72
  %.pre34 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !156
  br label %.split.loop.exit28

.split.loop.exit28.loopexit:                      ; preds = %bb.b
  %i.z = trunc nuw i64 %indvars.iv.next to i32
  br label %.split.loop.exit28

.split.loop.exit28:                               ; preds = %.split.loop.exit28.loopexit, %.split.loop.exit
  %i.aa = phi i32 [ %.pre34, %.split.loop.exit ], [ %i.u, %.split.loop.exit28.loopexit ]
  %.2 = phi i32 [ %i.y, %.split.loop.exit ], [ %i.z, %.split.loop.exit28.loopexit ]
  %i.ab = add nsw i32 %.2, %1
  %i.ac = tail call i32 @llvm.smax.i32(i32 %i.ab, i32 0) ; 3 uses
  %.not27 = icmp ult i32 %i.ac, %i.aa
  br i1 %.not27, label %bb.c, label %stream_seek.exit

bb.c:                                             ; preds = %.split.loop.exit28
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 40, ptr noundef nonnull @.str.323, i32 noundef %i.ac) #18
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !172
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %bb.d, label %stream_seek.exit

bb.d:                                             ; preds = %bb.c
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !155
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 80
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !425
  %i.ai = zext nneg i32 %i.ac to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !426 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load i64, ptr %i.al, align 8, !tbaa !428
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = tail call i64 @av_rescale_q(i64 noundef %i.am, i64 %i.ao, i64 4294967296000001) #23
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !174
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.ar, align 8, !tbaa !175
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !176
  %i.au = and i32 %i.at, -3
  store i32 %i.au, ptr %i.as, align 8, !tbaa !176
  store i32 1, ptr %i.ad, align 4, !tbaa !172
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1054912
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !79
  %i.ax = tail call i32 @SDL_CondSignal(ptr noundef %i.aw) #18 ; 0 uses
  br label %stream_seek.exit

stream_seek.exit:                                 ; preds = %bb.d, %bb.c, %.split.loop.exit28, %bb.a
  ret void
}

declare i32 @SDL_ShowCursor(i32 noundef) local_unnamed_addr #1

declare i64 @avio_size(ptr noundef) local_unnamed_addr #1

declare i32 @vk_renderer_resize(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @SDL_PumpEvents() local_unnamed_addr #1

declare i32 @SDL_PeepEvents(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @av_usleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @video_display(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.SDL_Rect, align 16          ; 4 uses
  %2 = alloca %struct.SDL_Rect, align 8           ; 6 uses
  %3 = alloca %struct.SDL_Rect, align 4           ; 7 uses
  %4 = alloca %struct.SDL_Rect, align 4           ; 7 uses
  %5 = alloca %struct.SDL_Rect, align 16          ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca [4 x ptr], align 16               ; 5 uses
  %i.c = alloca [4 x i32], align 16               ; 5 uses
  %6 = alloca %struct.SDL_Rect, align 4           ; 7 uses
  %7 = alloca %struct.SDL_Rect, align 4           ; 7 uses
  %i.d = alloca float, align 4                    ; 4 uses
  %i.e = alloca [2 x ptr], align 16               ; 5 uses
  %8 = alloca %struct.SDL_Rect, align 4           ; 7 uses
  %i.f = alloca ptr, align 8                      ; 6 uses
  %i.g = alloca i32, align 4                      ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1054832 ; 10 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !152
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr @screen_width, align 4, !tbaa !12 ; 2 uses
  %.not.i = icmp eq i32 %i.j, 0
  %i.k = load i32, ptr @default_width, align 4
  %i.l = select i1 %.not.i, i32 %i.k, i32 %i.j    ; 2 uses
  %i.m = load i32, ptr @screen_height, align 4, !tbaa !12 ; 2 uses
  %.not5.i = icmp eq i32 %i.m, 0
  %i.n = load i32, ptr @default_height, align 4
  %i.o = select i1 %.not5.i, i32 %i.n, i32 %i.m   ; 2 uses
  %i.p = load ptr, ptr @window_title, align 8, !tbaa !9 ; 2 uses
  %.not6.i = icmp eq ptr %i.p, null
  br i1 %.not6.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr @input_filename, align 8, !tbaa !9 ; 2 uses
  store ptr %i.q, ptr @window_title, align 8, !tbaa !9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = phi ptr [ %i.q, %bb.c ], [ %i.p, %bb.b ]
  %i.s = load ptr, ptr @window, align 8, !tbaa !15
  tail call void @SDL_SetWindowTitle(ptr noundef %i.s, ptr noundef %i.r) #18
  %i.t = load ptr, ptr @window, align 8, !tbaa !15
  tail call void @SDL_SetWindowSize(ptr noundef %i.t, i32 noundef %i.l, i32 noundef %i.o) #18
  %i.u = load ptr, ptr @window, align 8, !tbaa !15
  %i.v = load i32, ptr @screen_left, align 4, !tbaa !12
  %i.w = load i32, ptr @screen_top, align 4, !tbaa !12
  tail call void @SDL_SetWindowPosition(ptr noundef %i.u, i32 noundef %i.v, i32 noundef %i.w) #18
  %i.x = load i32, ptr @is_full_screen, align 4, !tbaa !12
  %.not7.i = icmp eq i32 %i.x, 0
  br i1 %.not7.i, label %video_open.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = load ptr, ptr @window, align 8, !tbaa !15
  %i.z = tail call i32 @SDL_SetWindowFullscreen(ptr noundef %i.y, i32 noundef 4097) #18 ; 0 uses
  br label %video_open.exit

video_open.exit:                                  ; preds = %bb.d, %bb.e
  %i.aa = load ptr, ptr @window, align 8, !tbaa !15
  tail call void @SDL_ShowWindow(ptr noundef %i.aa) #18
  store i32 %i.l, ptr %i.h, align 8, !tbaa !152
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1054836
  store i32 %i.o, ptr %i.ab, align 4, !tbaa !179
  br label %bb.f

bb.f:                                             ; preds = %video_open.exit, %bb.a
  %i.ac = load ptr, ptr @renderer, align 8, !tbaa !19
  %i.ad = tail call i32 @SDL_SetRenderDrawColor(ptr noundef %i.ac, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #18 ; 0 uses
  %i.ae = load ptr, ptr @renderer, align 8, !tbaa !19
  %i.af = tail call i32 @SDL_RenderClear(ptr noundef %i.ae) #18 ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 5688
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !99
  %.not7 = icmp eq ptr %i.ah, null
  br i1 %.not7, label %bb.aq, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 5952 ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !96 ; 4 uses
  %.not8 = icmp eq i32 %i.aj, 0
  br i1 %.not8, label %bb.aq, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1054836 ; 6 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !179
  %i.am = shl nsw i32 %i.al, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %.0188.i = phi i32 [ 1, %bb.h ], [ %i.ap, %bb.i ] ; 5 uses
  %i.an = shl nuw i32 1, %.0188.i                 ; 2 uses
  %i.ao = icmp slt i32 %i.an, %i.am
  %i.ap = add nuw nsw i32 %.0188.i, 1
  br i1 %i.ao, label %bb.i, label %bb.j, !llvm.loop !431

bb.j:                                             ; preds = %bb.i
  %i.aq = add nsw i32 %.0188.i, -1                ; 4 uses
  %i.ar = shl nuw i32 1, %i.aq                    ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %i.au = load i32, ptr %i.at, align 4, !tbaa !400 ; 16 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !97
  %.not.i10 = icmp eq i32 %i.aw, 0
  br i1 %.not.i10, label %bb.k, label %bb.t

bb.k:                                             ; preds = %bb.j
  %i.ax = icmp eq i32 %i.aj, 1
  br i1 %i.ax, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ay = load i32, ptr %i.h, align 8, !tbaa !152
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.az = shl i32 2, %i.aq
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ba = phi i32 [ %i.ay, %bb.l ], [ %i.az, %bb.m ] ; 2 uses
  %i.bb = shl nsw i32 %i.au, 1
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 5780
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !407
  %i.be = sdiv i32 %i.bd, %i.bb                   ; 2 uses
  %i.bf = load i64, ptr @audio_callback_time, align 8, !tbaa !95
  %.not219.i = icmp eq i64 %i.bf, 0
  br i1 %.not219.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = tail call i64 @av_gettime_relative() #18
  %i.bh = load i64, ptr @audio_callback_time, align 8, !tbaa !95
  %i.bi = sub nsw i64 %i.bg, %i.bh
  %i.bj = load i32, ptr %i.as, align 8, !tbaa !399
  %i.bk = sext i32 %i.bj to i64
  %i.bl = mul nsw i64 %i.bi, %i.bk
  %.neg.i = sdiv i64 %i.bl, -1000000
  %i.bm = trunc i64 %.neg.i to i32
  %i.bn = add i32 %i.be, %i.bm
  %.pre.i = load i32, ptr %i.ai, align 8, !tbaa !96
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bo = phi i32 [ %.pre.i, %bb.o ], [ %i.aj, %bb.n ] ; 2 uses
  %.0192.i = phi i32 [ %i.bn, %bb.o ], [ %i.be, %bb.n ]
  %i.bp = shl nsw i32 %i.ba, 1
  %i.bq = add nsw i32 %.0192.i, %i.bp
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.bq, i32 %i.ba)
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 1054532
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !404
  %i.bt = mul nsw i32 %spec.select.i, %i.au
  %i.bu = sub nsw i32 %i.bs, %i.bt                ; 3 uses
  %i.bv = icmp slt i32 %i.bu, 0
  %.nonneg.i.i = sub i32 0, %i.bu
  %i.bw = and i32 %.nonneg.i.i, 524287
  %i.bx = sub nuw nsw i32 524288, %i.bw
  %i.by = and i32 %i.bu, 524287
  %i.bz = select i1 %i.bv, i32 %i.bx, i32 %i.by   ; 3 uses
  %i.ca = icmp eq i32 %i.bo, 1
  br i1 %i.ca, label %.preheader.i, label %.loopexit.i

.preheader.i:                                     ; preds = %bb.p
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 5956 ; 4 uses
  %i.cc = mul nsw i32 %i.au, 9
  %i.cd = mul nsw i32 %i.au, 5
  %i.ce = shl nsw i32 %i.au, 2
  br label %bb.q

bb.q:                                             ; preds = %bb.s, %.preheader.i
  %.0189236.i = phi i32 [ -2147483648, %.preheader.i ], [ %.1.i, %bb.s ] ; 3 uses
  %.0199235.i = phi i32 [ %i.bz, %.preheader.i ], [ %.1200.i, %bb.s ] ; 2 uses
  %.0202234.i = phi i32 [ 0, %.preheader.i ], [ %i.df, %bb.s ] ; 2 uses
  %i.cf = sub i32 %i.bz, %.0202234.i
  %i.cg = and i32 %i.cf, 524287                   ; 5 uses
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.cb, i64 %i.ch
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !432
  %i.ck = sext i16 %i.cj to i32
  %i.cl = add nsw i32 %i.cg, %i.cc
  %i.cm = srem i32 %i.cl, 524288
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [2 x i8], ptr %i.cb, i64 %i.cn
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !432
  %i.cq = sext i16 %i.cp to i32
  %i.cr = sub nsw i32 %i.ck, %i.cq                ; 2 uses
  %i.cs = icmp slt i32 %.0189236.i, %i.cr
  br i1 %i.cs, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ct = add nsw i32 %i.cg, %i.cd
  %i.cu = srem i32 %i.ct, 524288
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [2 x i8], ptr %i.cb, i64 %i.cv
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !432
  %i.cy = add nsw i32 %i.cg, %i.ce
  %i.cz = srem i32 %i.cy, 524288
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [2 x i8], ptr %i.cb, i64 %i.da
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !432
  %i.dd = xor i16 %i.dc, %i.cx
  %i.de = icmp slt i16 %i.dd, 0                   ; 2 uses
  %spec.select225.i = select i1 %i.de, i32 %i.cg, i32 %.0199235.i
  %spec.select226.i = select i1 %i.de, i32 %i.cr, i32 %.0189236.i
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.1200.i = phi i32 [ %.0199235.i, %bb.q ], [ %spec.select225.i, %bb.r ] ; 2 uses
  %.1.i = phi i32 [ %.0189236.i, %bb.q ], [ %spec.select226.i, %bb.r ]
  %i.df = add nsw i32 %.0202234.i, %i.au          ; 2 uses
  %i.dg = icmp slt i32 %i.df, 1000
  br i1 %i.dg, label %bb.q, label %.loopexit.i, !llvm.loop !433

.loopexit.i:                                      ; preds = %bb.s, %bb.p
  %.2201.i = phi i32 [ %i.bz, %bb.p ], [ %.1200.i, %bb.s ] ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 1054536
  store i32 %.2201.i, ptr %i.dh, align 8, !tbaa !434
  br label %bb.u

bb.t:                                             ; preds = %bb.j
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 1054536
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !434
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.loopexit.i
  %i.dk = phi i32 [ %i.aj, %bb.t ], [ %i.bo, %.loopexit.i ]
  %.3.i = phi i32 [ %i.dj, %bb.t ], [ %.2201.i, %.loopexit.i ] ; 2 uses
  %i.dl = icmp eq i32 %i.dk, 1
  br i1 %i.dl, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.dm = load ptr, ptr @renderer, align 8, !tbaa !19
  %i.dn = tail call i32 @SDL_SetRenderDrawColor(ptr noundef %i.dm, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1) #18 ; 0 uses
  %i.do = load i32, ptr %i.ak, align 4, !tbaa !179
  %i.dp = sdiv i32 %i.do, %i.au                   ; 4 uses
  %i.dq = mul nsw i32 %i.dp, 9
  %i.dr = sdiv i32 %i.dq, 20
  %i.ds = icmp sgt i32 %i.au, 0
  br i1 %i.ds, label %.lr.ph254.i, label %._crit_edge255.thread.i

._crit_edge255.thread.i:                          ; preds = %bb.v
  %i.dt = load ptr, ptr @renderer, align 8, !tbaa !19
  %i.du = tail call i32 @SDL_SetRenderDrawColor(ptr noundef %i.dt, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1, i8 noundef zeroext -1) #18 ; 0 uses
  br label %video_audio_display.exit

.lr.ph254.i:                                      ; preds = %bb.v
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 1054844 ; 2 uses
  %i.dw = sdiv i32 %i.dp, 2
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 5956
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 1054840 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.ea = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.ec = load i32, ptr %i.h, align 8, !tbaa !152 ; 3 uses
  %i.ed = icmp sgt i32 %i.ec, 0
  br i1 %i.ed, label %.lr.ph254.split.i, label %._crit_edge255.i

.lr.ph254.split.i:                                ; preds = %.lr.ph254.i, %._crit_edge251.i
  %i.ee = phi i32 [ %i.fe, %._crit_edge251.i ], [ %i.ec, %.lr.ph254.i ] ; 2 uses
  %i.ef = phi i32 [ %i.ff, %._crit_edge251.i ], [ %i.ec, %.lr.ph254.i ] ; 2 uses
  %.0190252.i = phi i32 [ %i.fg, %._crit_edge251.i ], [ 0, %.lr.ph254.i ] ; 3 uses
  %i.eg = icmp sgt i32 %i.ef, 0
  br i1 %i.eg, label %.lr.ph250.i, label %._crit_edge251.i

.lr.ph250.i:                                      ; preds = %.lr.ph254.split.i
  %i.eh = mul nsw i32 %.0190252.i, %i.dp
  %i.ei = load i32, ptr %i.dv, align 4, !tbaa !63
  %i.ej = add nsw i32 %.0190252.i, %.3.i
  %i.ek = add i32 %i.eh, %i.dw
  %i.el = add i32 %i.ek, %i.ei
  br label %bb.w

bb.w:                                             ; preds = %fill_rectangle.exit.i, %.lr.ph250.i
  %i.em = phi i32 [ %i.ee, %.lr.ph250.i ], [ %i.ey, %fill_rectangle.exit.i ]
  %.0197248.i = phi i32 [ 0, %.lr.ph250.i ], [ %i.fc, %fill_rectangle.exit.i ] ; 2 uses
  %.1203247.i = phi i32 [ %i.ej, %.lr.ph250.i ], [ %.2204.i, %fill_rectangle.exit.i ] ; 2 uses
  %i.en = sext i32 %.1203247.i to i64
  %i.eo = getelementptr inbounds [2 x i8], ptr %i.dx, i64 %i.en
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !432
  %i.eq = sext i16 %i.ep to i32
  %i.er = mul nsw i32 %i.dr, %i.eq
  %i.es = ashr i32 %i.er, 15                      ; 3 uses
  %.0195.i = call i32 @llvm.abs.i32(i32 %i.es, i1 true)
  %i.et = call i32 @llvm.smin.i32(i32 %i.es, i32 0)
  %.0194.i = add nsw i32 %i.el, %i.et
  %i.eu = load i32, ptr %i.dy, align 8, !tbaa !64
  %i.ev = add nsw i32 %i.eu, %.0197248.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  store i32 %i.ev, ptr %7, align 4, !tbaa !435
  store i32 %.0194.i, ptr %i.dz, align 4, !tbaa !436
  store i32 1, ptr %i.ea, align 4, !tbaa !437
  store i32 %.0195.i, ptr %i.eb, align 4, !tbaa !438
  %.not232.i = icmp eq i32 %i.es, 0
  br i1 %.not232.i, label %fill_rectangle.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ew = load ptr, ptr @renderer, align 8, !tbaa !19
  %i.ex = call i32 @SDL_RenderFillRect(ptr noundef %i.ew, ptr noundef nonnull %7) #18 ; 0 uses
  %.pre275.i = load i32, ptr %i.h, align 8, !tbaa !152
  br label %fill_rectangle.exit.i

fill_rectangle.exit.i:                            ; preds = %bb.x, %bb.w
  %i.ey = phi i32 [ %i.em, %bb.w ], [ %.pre275.i, %bb.x ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.ez = add nsw i32 %.1203247.i, %i.au          ; 3 uses
  %i.fa = icmp sgt i32 %i.ez, 524287
  %i.fb = add nsw i32 %i.ez, -524288
  %.2204.i = select i1 %i.fa, i32 %i.fb, i32 %i.ez
  %i.fc = add nuw nsw i32 %.0197248.i, 1          ; 2 uses
  %i.fd = icmp slt i32 %i.fc, %i.ey
  br i1 %i.fd, label %bb.w, label %._crit_edge251.i, !llvm.loop !439

._crit_edge251.i:                                 ; preds = %fill_rectangle.exit.i, %.lr.ph254.split.i
  %i.fe = phi i32 [ %i.ee, %.lr.ph254.split.i ], [ %i.ey, %fill_rectangle.exit.i ]
  %i.ff = phi i32 [ %i.ef, %.lr.ph254.split.i ], [ %i.ey, %fill_rectangle.exit.i ]
  %i.fg = add nuw nsw i32 %.0190252.i, 1          ; 2 uses
  %exitcond271.not.i = icmp eq i32 %i.fg, %i.au
  br i1 %exitcond271.not.i, label %._crit_edge255.i, label %.lr.ph254.split.i, !llvm.loop !440

._crit_edge255.i:                                 ; preds = %._crit_edge251.i, %.lr.ph254.i
  %i.fh = load ptr, ptr @renderer, align 8, !tbaa !19
  %i.fi = call i32 @SDL_SetRenderDrawColor(ptr noundef %i.fh, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1, i8 noundef zeroext -1) #18 ; 0 uses
  %.not291.i = icmp eq i32 %i.au, 1
  br i1 %.not291.i, label %video_audio_display.exit, label %.lr.ph258.i

.lr.ph258.i:                                      ; preds = %._crit_edge255.i
  %i.fj = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.fk = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fl = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.fm = load i32, ptr %i.h, align 8, !tbaa !152 ; 2 uses
  %i.fn = icmp eq i32 %i.fm, 0
  br i1 %i.fn, label %video_audio_display.exit, label %.lr.ph258.split.i

.lr.ph258.splitthread-pre-split.i:                ; preds = %fill_rectangle.exit230.i
  %.pr.i = load i32, ptr %i.h, align 8, !tbaa !152
  br label %.lr.ph258.split.i

.lr.ph258.split.i:                                ; preds = %.lr.ph258.i, %.lr.ph258.splitthread-pre-split.i
  %i.fo = phi i32 [ %.pr.i, %.lr.ph258.splitthread-pre-split.i ], [ %i.fm, %.lr.ph258.i ] ; 2 uses
  %.1191256.i = phi i32 [ %i.fv, %.lr.ph258.splitthread-pre-split.i ], [ 1, %.lr.ph258.i ] ; 2 uses
  %i.fp = load i32, ptr %i.dv, align 4, !tbaa !63
  %i.fq = mul nsw i32 %.1191256.i, %i.dp
  %i.fr = add nsw i32 %i.fp, %i.fq
  %i.fs = load i32, ptr %i.dy, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  store i32 %i.fs, ptr %6, align 4, !tbaa !435
  store i32 %i.fr, ptr %i.fj, align 4, !tbaa !436
  store i32 %i.fo, ptr %i.fk, align 4, !tbaa !437
  store i32 1, ptr %i.fl, align 4, !tbaa !438
  %.not231.i = icmp eq i32 %i.fo, 0
  br i1 %.not231.i, label %fill_rectangle.exit230.i, label %bb.y

bb.y:                                             ; preds = %.lr.ph258.split.i
  %i.ft = load ptr, ptr @renderer, align 8, !tbaa !19
  %i.fu = call i32 @SDL_RenderFillRect(ptr noundef %i.ft, ptr noundef nonnull %6) #18 ; 0 uses
  br label %fill_rectangle.exit230.i

fill_rectangle.exit230.i:                         ; preds = %bb.y, %.lr.ph258.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.fv = add nuw nsw i32 %.1191256.i, 1          ; 2 uses
  %exitcond272.not.i = icmp eq i32 %i.fv, %i.au
  br i1 %exitcond272.not.i, label %video_audio_display.exit, label %.lr.ph258.splitthread-pre-split.i, !llvm.loop !442

bb.z:                                             ; preds = %bb.u
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 1054624 ; 4 uses
  %i.fx = load i32, ptr %i.h, align 8, !tbaa !152
  %i.fy = load i32, ptr %i.ak, align 4, !tbaa !179
  %i.fz = tail call fastcc i32 @realloc_texture(ptr noundef nonnull %i.fw, i32 noundef 372645892, i32 noundef %i.fx, i32 noundef %i.fy, i32 noundef 0, i32 noundef 1)
  %i.ga = icmp sgt i32 %i.fz, -1
  br i1 %i.ga, label %bb.aa, label %video_audio_display.exit

bb.aa:                                            ; preds = %bb.z
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 1054584 ; 5 uses
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !443
  %i.gd = load i32, ptr %i.h, align 8, !tbaa !152
  %.not220.i = icmp slt i32 %i.gc, %i.gd
  br i1 %.not220.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.gb, align 8, !tbaa !443
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ge = tail call i32 @llvm.umin.i32(i32 %i.au, i32 2)
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 1054560 ; 2 uses
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !199
  %.not221.i = icmp eq i32 %.0188.i, %i.gg
  br i1 %.not221.i, label %.critedge.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store float 1.000000e+00, ptr %i.d, align 4, !tbaa !167
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 1054544 ; 2 uses
  tail call void @av_tx_uninit(ptr noundef nonnull %i.gh) #18
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 1054568 ; 2 uses
  tail call void @av_freep(ptr noundef nonnull %i.gi) #18
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 1054576 ; 2 uses
  tail call void @av_freep(ptr noundef nonnull %i.gj) #18
  store i32 %.0188.i, ptr %i.gf, align 8, !tbaa !199
  %i.gk = sext i32 %i.ar to i64
  %i.gl = tail call ptr @av_malloc_array(i64 noundef %i.gk, i64 noundef 16) #18
  store ptr %i.gl, ptr %i.gi, align 8, !tbaa !444
  %i.gm = add nuw nsw i32 %i.ar, 1
  %i.gn = sext i32 %i.gm to i64
  %i.go = tail call ptr @av_malloc_array(i64 noundef %i.gn, i64 noundef 16) #18
  store ptr %i.go, ptr %i.gj, align 8, !tbaa !445
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 1054552
  %i.gq = call i32 @av_tx_init(ptr noundef nonnull %i.gh, ptr noundef nonnull %i.gp, i32 noundef 6, i32 noundef 0, i32 noundef %i.an, ptr noundef nonnull %i.d, i64 noundef 0) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  %i.gr = icmp slt i32 %i.gq, 0
  br i1 %i.gr, label %bb.ae, label %.critedge.i

.critedge.i:                                      ; preds = %bb.ad, %bb.ac
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 1054576 ; 2 uses
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !445
  %.not222.i = icmp eq ptr %i.gt, null
  br i1 %.not222.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.critedge.i, %bb.ad
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.317) #18
  store i32 1, ptr %i.ai, align 8, !tbaa !96
  br label %bb.ao

bb.af:                                            ; preds = %.critedge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.gu = load i32, ptr %i.gb, align 8, !tbaa !443
  store i32 %i.gu, ptr %8, align 4, !tbaa !435
  %i.gv = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 0, ptr %i.gv, align 4, !tbaa !436
  %i.gw = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 1, ptr %i.gw, align 4, !tbaa !437
  %i.gx = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.gy = load i32, ptr %i.ak, align 4, !tbaa !179
  store i32 %i.gy, ptr %i.gx, align 4, !tbaa !438
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18
  %i.gz = icmp sgt i32 %i.au, 0
  br i1 %i.gz, label %.lr.ph241.i, label %._crit_edge242.i

.lr.ph241.i:                                      ; preds = %bb.af
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 1054568
  %i.hb = shl i32 2, %i.aq                        ; 3 uses
  %i.hc = icmp sgt i32 %i.hb, 0
  %i.hd = sitofp nsz i32 %i.ar to double
  %i.he = fdiv nnan nsz double 1.000000e+00, %i.hd
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 5956
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 1054552
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 1054544
  %i.hi = sext i32 %i.ar to i64
  %i.hj = sext i32 %i.hb to i64
  %wide.trip.count266.i = zext nneg i32 %i.ge to i64
  %wide.trip.count.i = zext nneg i32 %i.hb to i64
  br label %bb.ag

bb.ag:                                            ; preds = %._crit_edge.i, %.lr.ph241.i
  %indvars.iv263.i.a = phi i64 [ 0, %.lr.ph241.i ], [ %indvars.iv.next264.i, %._crit_edge.i ] ; 4 uses
  %i.hk = load ptr, ptr %i.ha, align 8, !tbaa !444
  %i.hl = mul nuw nsw i64 %indvars.iv263.i.a, %i.hj
  %i.hm = getelementptr inbounds [4 x i8], ptr %i.hk, i64 %i.hl ; 2 uses
  %i.hn = load ptr, ptr %i.gs, align 8, !tbaa !445
  %i.ho = trunc i64 %indvars.iv263.i.a to i32     ; 2 uses
  %i.hp = shl i32 %i.ho, %i.aq
  %i.hq = sext i32 %i.hp to i64
  %i.hr = getelementptr inbounds [8 x i8], ptr %i.hn, i64 %i.hq ; 4 uses
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv263.i.a
  store ptr %i.hr, ptr %i.hs, align 8, !tbaa !446
  br i1 %i.hc, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.ag
  %i.ht = add i32 %.3.i, %i.ho
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 3 uses
  %.3205237.i = phi i32 [ %i.ht, %.lr.ph.preheader.i ], [ %spec.select227.i, %.lr.ph.i ] ; 2 uses
  %i.hu = trunc i64 %indvars.iv.i to i32
  %i.hv = sub i32 %i.hu, %i.ar
  %i.hw = sitofp nsz i32 %i.hv to double
  %i.hx = fmul nsz double %i.he, %i.hw            ; 2 uses
  %i.hy = sext i32 %.3205237.i to i64
  %i.hz = getelementptr inbounds [2 x i8], ptr %i.hf, i64 %i.hy
  %i.ia = load i16, ptr %i.hz, align 2, !tbaa !432
  %i.ib = sitofp i16 %i.ia to double
  %i.ic = fneg nsz double %i.hx
  %i.id = call nsz double @llvm.fmuladd.f64(double %i.ic, double %i.hx, double 1.000000e+00)
  %i.ie = fmul nsz double %i.id, %i.ib
  %i.if = fptrunc nsz double %i.ie to float
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %indvars.iv.i
  store float %i.if, ptr %i.ig, align 4, !tbaa !167
  %i.ih = add nsw i32 %.3205237.i, %i.au          ; 3 uses
  %i.ii = icmp sgt i32 %i.ih, 524287
  %i.ij = add nsw i32 %i.ih, -524288
  %spec.select227.i = select i1 %i.ii, i32 %i.ij, i32 %i.ih
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !447

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.ag
  %i.ik = load ptr, ptr %i.hg, align 8, !tbaa !448
  %i.il = load ptr, ptr %i.hh, align 8, !tbaa !198
  call void %i.ik(ptr noundef %i.il, ptr noundef %i.hr, ptr noundef %i.hm, i64 noundef 4) #18, !inline_history !449
  %i.im = getelementptr inbounds [8 x i8], ptr %i.hr, i64 %i.hi ; 2 uses
  %i.in = load float, ptr %i.im, align 4, !tbaa !450
  %i.io = getelementptr inbounds nuw i8, ptr %i.hr, i64 4
  store float %i.in, ptr %i.io, align 4, !tbaa !452
  store float 0.000000e+00, ptr %i.im, align 4, !tbaa !450
  %indvars.iv.next264.i = add nuw nsw i64 %indvars.iv263.i.a, 1 ; 2 uses
  %exitcond267.not.i = icmp eq i64 %indvars.iv.next264.i, %wide.trip.count266.i
  br i1 %exitcond267.not.i, label %._crit_edge242.i, label %bb.ag, !llvm.loop !453

._crit_edge242.i:                                 ; preds = %._crit_edge.i, %bb.af
  %i.ip = load ptr, ptr %i.fw, align 8, !tbaa !180
  %i.iq = call i32 @SDL_LockTexture(ptr noundef %i.ip, ptr noundef nonnull %8, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) #18
  %.not223.i = icmp eq i32 %i.iq, 0
  br i1 %.not223.i, label %bb.ah, label %bb.an

bb.ah:                                            ; preds = %._crit_edge242.i
  %i.ir = load i32, ptr %i.g, align 4, !tbaa !12
  %i.is = ashr i32 %i.ir, 2                       ; 2 uses
  store i32 %i.is, ptr %i.g, align 4, !tbaa !12
  %i.it = load i32, ptr %i.ak, align 4, !tbaa !179 ; 2 uses
  %i.iu = mul nsw i32 %i.it, %i.is
  %i.iv = load ptr, ptr %i.f, align 8, !tbaa !454
  %i.iw = sext i32 %i.iu to i64
  %i.ix = getelementptr inbounds [4 x i8], ptr %i.iv, i64 %i.iw ; 2 uses
  store ptr %i.ix, ptr %i.f, align 8, !tbaa !454
  %i.iy = icmp sgt i32 %i.it, 0
  br i1 %i.iy, label %.lr.ph245.i, label %bb.am

.lr.ph245.i:                                      ; preds = %bb.ah
  %i.iz = sitofp nsz i32 %i.ar to double
  %i.ja = call nsz double @llvm.sqrt.f64(double %i.iz)
  %i.jb = fdiv nsz double 1.000000e+00, %i.ja     ; 2 uses
  %i.jc = load ptr, ptr %i.e, align 16, !tbaa !446
  %i.jd = icmp sgt i32 %i.au, 1
  %i.je = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.jf = load ptr, ptr %i.je, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.al, %.lr.ph245.i
  %indvars.iv268.i = phi i64 [ 0, %.lr.ph245.i ], [ %indvars.iv.next269.i, %bb.al ] ; 3 uses
  %i.jg = phi ptr [ %i.ix, %.lr.ph245.i ], [ %i.ki, %bb.al ]
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %indvars.iv268.i ; 2 uses
  %i.ji = load float, ptr %i.jh, align 4, !tbaa !450 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jh, i64 4
  %i.jk = load float, ptr %i.jj, align 4, !tbaa !452 ; 2 uses
  %i.jl = fmul nsz float %i.jk, %i.jk
  %i.jm = call nsz float @llvm.fmuladd.f32(float %i.ji, float %i.ji, float %i.jl)
  %i.jn = fpext nsz float %i.jm to double
  %i.jo = call nsz double @llvm.sqrt.f64(double %i.jn)
  %i.jp = fmul nsz double %i.jb, %i.jo
  %i.jq = call nsz double @llvm.sqrt.f64(double %i.jp)
  %i.jr = fptosi double %i.jq to i32              ; 2 uses
  br i1 %i.jd, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %indvars.iv268.i
  %i.jt = load <2 x float>, ptr %i.js, align 4, !tbaa !167
  %i.ju = fpext <2 x float> %i.jt to <2 x double> ; 2 uses
  %i.jv = extractelement <2 x double> %i.ju, i64 0
  %i.jw = extractelement <2 x double> %i.ju, i64 1
  %i.jx = call nsz double @hypot(double noundef %i.jv, double noundef %i.jw) #23
  %i.jy = fmul nsz double %i.jb, %i.jx
  %i.jz = call nsz double @llvm.sqrt.f64(double %i.jy)
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.ka = sitofp nsz i32 %i.jr to double
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.kb = phi nsz double [ %i.jz, %bb.aj ], [ %i.ka, %bb.ak ]
  %i.kc = fptosi double %i.kb to i32
  %i.kd = call i32 @llvm.smin.i32(i32 %i.jr, i32 255) ; 2 uses
  %i.ke = call i32 @llvm.smin.i32(i32 %i.kc, i32 255) ; 2 uses
  %i.kf = load i32, ptr %i.g, align 4, !tbaa !12
  %i.kg = sext i32 %i.kf to i64
  %i.kh = sub nsw i64 0, %i.kg
  %i.ki = getelementptr inbounds [4 x i8], ptr %i.jg, i64 %i.kh ; 3 uses
  %i.kj = shl i32 %i.kd, 16
  %i.kk = shl i32 %i.ke, 8
  %i.kl = add nsw i32 %i.kk, %i.kj
  %i.km = add nsw i32 %i.ke, %i.kd
  %i.kn = ashr i32 %i.km, 1
  %i.ko = add nsw i32 %i.kl, %i.kn
  store i32 %i.ko, ptr %i.ki, align 4, !tbaa !12
  %indvars.iv.next269.i = add nuw nsw i64 %indvars.iv268.i, 1 ; 2 uses
  %i.kp = load i32, ptr %i.ak, align 4, !tbaa !179
  %i.kq = sext i32 %i.kp to i64
  %i.kr = icmp slt i64 %indvars.iv.next269.i, %i.kq
  br i1 %i.kr, label %bb.ai, label %._crit_edge246.i, !llvm.loop !455

._crit_edge246.i:                                 ; preds = %bb.al
  store ptr %i.ki, ptr %i.f, align 8, !tbaa !454
  br label %bb.am

bb.am:                                            ; preds = %._crit_edge246.i, %bb.ah
  %i.ks = load ptr, ptr %i.fw, align 8, !tbaa !180
  call void @SDL_UnlockTexture(ptr noundef %i.ks) #18
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %._crit_edge242.i
  %i.kt = load ptr, ptr @renderer, align 8, !tbaa !19
  %i.ku = load ptr, ptr %i.fw, align 8, !tbaa !180
  %i.kv = call i32 @SDL_RenderCopy(ptr noundef %i.kt, ptr noundef %i.ku, ptr noundef null, ptr noundef null) #18 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.ae
  %i.kw = load i32, ptr %i.av, align 8, !tbaa !97
  %.not224.i = icmp eq i32 %i.kw, 0
  br i1 %.not224.i, label %bb.ap, label %video_audio_display.exit

bb.ap:                                            ; preds = %bb.ao
  %i.kx = load i32, ptr %i.gb, align 8, !tbaa !443
  %i.ky = add nsw i32 %i.kx, 1
  store i32 %i.ky, ptr %i.gb, align 8, !tbaa !443
  br label %video_audio_display.exit

bb.aq:                                            ; preds = %bb.g, %bb.f
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 1054744
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !107
  %.not9 = icmp eq ptr %i.la, null
  br i1 %.not9, label %video_audio_display.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 1054600 ; 9 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 1896
  %i.le = load i32, ptr %i.ld, align 8, !tbaa !110
  %i.lf = sext i32 %i.le to i64
  %i.lg = getelementptr inbounds [104 x i8], ptr %i.lc, i64 %i.lf ; 10 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 1054840
  %i.li = load i32, ptr %i.lh, align 8, !tbaa !64
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 1054844
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !63
  %i.ll = load i32, ptr %i.h, align 8, !tbaa !152
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 1054836
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !179
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lg, i64 72
  %i.lp = load i64, ptr %i.lo, align 8            ; 4 uses
  %i.lq = trunc i64 %i.lp to i32
  %i.lr = lshr i64 %i.lp, 32
  %i.ls = trunc nuw i64 %i.lr to i32
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lg, i64 84
  %i.lu = load i64, ptr %i.lt, align 4            ; 3 uses
  %sext.i.i.i = shl i64 %i.lu, 32                 ; 2 uses
  %.not.i.i.i = icmp eq i64 %sext.i.i.i, 0
  %i.lv = xor i64 %sext.i.i.i, %i.lu
end_hunk_0
