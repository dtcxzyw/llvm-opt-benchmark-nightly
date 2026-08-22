Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/alsa?download=true
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@ff_alsa_open:bb.a
  %i.bf = load i32, ptr %i.s, align 4, !tbaa !29
  %i.bg = call ptr @snd_strerror(i32 noundef %i.bd) #10
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.8, i32 noundef %i.bf, ptr noundef %i.bg) #10
  br label %bb.ai

bb.s:                                             ; preds = %bb.q
  %i.bh = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.bi = call i32 @snd_pcm_hw_params_get_buffer_size_max(ptr noundef %i.bh, ptr noundef nonnull %i.c) #10 ; 0 uses
  %i.bj = load i64, ptr %i.c, align 8, !tbaa !40
  %i.bk = call i64 @llvm.umin.i64(i64 %i.bj, i64 131072)
  store i64 %i.bk, ptr %i.c, align 8, !tbaa !40
  %i.bl = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.bm = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.bn = call i32 @snd_pcm_hw_params_set_buffer_size_near(ptr noundef %i.bl, ptr noundef %i.bm, ptr noundef nonnull %i.c) #10 ; 2 uses
  %i.bo = icmp slt i32 %i.bn, 0
  br i1 %i.bo, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bp = call ptr @snd_strerror(i32 noundef %i.bn) #10
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.9, ptr noundef %i.bp) #10
  br label %bb.ai

bb.u:                                             ; preds = %bb.s
  %i.bq = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.br = call i32 @snd_pcm_hw_params_get_period_size_min(ptr noundef %i.bq, ptr noundef nonnull %i.d, ptr noundef null) #10 ; 0 uses
  %i.bs = load i64, ptr %i.d, align 8, !tbaa !40
  %.not85 = icmp eq i64 %i.bs, 0
  br i1 %.not85, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bt = load i64, ptr %i.c, align 8, !tbaa !40
  %i.bu = lshr i64 %i.bt, 2
  store i64 %i.bu, ptr %i.d, align 8, !tbaa !40
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bv = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.bw = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.bx = call i32 @snd_pcm_hw_params_set_period_size_near(ptr noundef %i.bv, ptr noundef %i.bw, ptr noundef nonnull %i.d, ptr noundef null) #10 ; 2 uses
  %i.by = icmp slt i32 %i.bx, 0
  br i1 %i.by, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bz = call ptr @snd_strerror(i32 noundef %i.bx) #10
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.10, ptr noundef %i.bz) #10
  br label %bb.ai

bb.y:                                             ; preds = %bb.w
  %i.ca = load i64, ptr %i.d, align 8, !tbaa !40
  %i.cb = trunc i64 %i.ca to i32
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  store i32 %i.cb, ptr %i.cc, align 4, !tbaa !41
  %i.cd = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.ce = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.cf = call i32 @snd_pcm_hw_params(ptr noundef %i.cd, ptr noundef %i.ce) #10 ; 2 uses
  %i.cg = icmp slt i32 %i.cf, 0
  br i1 %i.cg, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ch = call ptr @snd_strerror(i32 noundef %i.cf) #10
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.11, ptr noundef %i.ch) #10
  br label %bb.ai

bb.aa:                                            ; preds = %bb.y
  %i.ci = load ptr, ptr %i.b, align 8, !tbaa !38
  call void @snd_pcm_hw_params_free(ptr noundef %i.ci) #10
  %i.cj = load i32, ptr %i.s, align 4, !tbaa !29
  %i.ck = icmp sgt i32 %i.cj, 2
  br i1 %i.ck, label %bb.ab, label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  %i.cl = load i32, ptr %3, align 8, !tbaa !42
  %.not86 = icmp eq i32 %i.cl, 0
  br i1 %.not86, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cm = load i32, ptr %4, align 4, !tbaa !28
  %i.cn = icmp eq i32 %1, 0                       ; 2 uses
  %i.co = zext i1 %i.cn to i32
  %i.cp = call fastcc i32 @find_reorder_func(ptr noundef nonnull %i.g, i32 noundef %i.cm, ptr noundef nonnull %3, i32 noundef %i.co) #11
  %i.cq = icmp slt i32 %i.cp, 0
  br i1 %i.cq, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  %i.cr = call i32 @av_channel_layout_describe(ptr noundef nonnull %3, ptr noundef nonnull %i.e, i64 noundef 128) #10 ; 0 uses
  %i.cs = select i1 %i.cn, ptr @.str.13, ptr @.str.14
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.e, ptr noundef nonnull %i.cs) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.ct = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !43
  %.not87 = icmp eq ptr %i.cu, null
  br i1 %.not87, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cv = load i64, ptr %i.c, align 8, !tbaa !40  ; 2 uses
  %i.cw = trunc i64 %i.cv to i32
  %i.cx = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  store i32 %i.cw, ptr %i.cx, align 8, !tbaa !44
  %sext = shl i64 %i.cv, 32
  %i.cy = ashr exact i64 %sext, 32
  %i.cz = load i32, ptr %i.v, align 8, !tbaa !31
  %i.da = sext i32 %i.cz to i64
  %i.db = call ptr @av_malloc_array(i64 noundef %i.cy, i64 noundef %i.da) #10 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !45
  %.not88 = icmp eq ptr %i.db, null
  br i1 %.not88, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af, %bb.ab, %bb.aa
  %i.dd = call ptr @av_packet_alloc() #10         ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  store ptr %i.dd, ptr %i.de, align 8, !tbaa !46
  %.not89 = icmp eq ptr %i.dd, null
  br i1 %.not89, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.df = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.dg = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.df, ptr %i.dg, align 8, !tbaa !47
  br label %bb.ak

bb.ai:                                            ; preds = %bb.z, %bb.x, %bb.t, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j
  %i.dh = load ptr, ptr %i.b, align 8, !tbaa !38
  call void @snd_pcm_hw_params_free(ptr noundef %i.dh) #10
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ag, %bb.af, %bb.ai, %bb.h
  %i.di = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.dj = call i32 @snd_pcm_close(ptr noundef %i.di) #10 ; 0 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ah, %bb.f, %bb.d
  %.073 = phi i32 [ -38, %bb.d ], [ -5, %bb.f ], [ -5, %bb.aj ], [ 0, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.073
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc range(i32 -1, 36) i32 @codec_id_to_pcm_format(i32 noundef %0) unnamed_addr #2 {
bb.a:
  %switch.tableidx = add i32 %0, -65536           ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 24
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.codec_id_to_pcm_format, i64 %i.b
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi i32 [ %switch.load, %switch.lookup ], [ -1, %bb.a ]
  ret i32 %.0
}

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @av_get_bits_per_sample(i32 noundef) local_unnamed_addr #3

declare i32 @snd_pcm_open(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @snd_strerror(i32 noundef) local_unnamed_addr #3

declare i32 @snd_pcm_hw_params_malloc(ptr noundef) local_unnamed_addr #3

declare i32 @snd_pcm_hw_params_any(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @snd_pcm_hw_params_set_access(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @snd_pcm_hw_params_set_format(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @snd_pcm_hw_params_set_rate_near(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @snd_pcm_hw_params_set_channels(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @snd_pcm_hw_params_get_buffer_size_max(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @snd_pcm_hw_params_set_buffer_size_near(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @snd_pcm_hw_params_get_period_size_min(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @snd_pcm_hw_params_set_period_size_near(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @snd_pcm_hw_params(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @snd_pcm_hw_params_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind optsize uwtable
define internal fastcc range(i32 -38, 1) i32 @find_reorder_func(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.AVChannelLayout, align 8    ; 4 uses
  %5 = alloca %struct.AVChannelLayout, align 8    ; 4 uses
  %6 = alloca %struct.AVChannelLayout, align 8    ; 4 uses
  %7 = alloca %struct.AVChannelLayout, align 8    ; 4 uses
  %8 = alloca %struct.AVChannelLayout, align 8    ; 4 uses
  %9 = alloca %struct.AVChannelLayout, align 8    ; 4 uses
  %10 = alloca %struct.AVChannelLayout, align 8   ; 4 uses
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  store <2 x i32> <i32 1, i32 4>, ptr %4, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 51, ptr %i.a, align 8, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr null, ptr %i.b, align 8, !tbaa !48
  %i.c = call i32 @av_channel_layout_compare(ptr noundef %2, ptr noundef nonnull %4) #10
  %.not26 = icmp eq i32 %i.c, 0
  br i1 %.not26, label %bb.x, label %bb.c

bb.c:                                             ; preds = %bb.b
  store <2 x i32> <i32 1, i32 4>, ptr %5, align 8, !tbaa !28
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 1539, ptr %i.d, align 8, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr null, ptr %i.e, align 8, !tbaa !48
  %i.f = call i32 @av_channel_layout_compare(ptr noundef %2, ptr noundef nonnull %5) #10
  %.not27 = icmp eq i32 %i.f, 0
  br i1 %.not27, label %bb.x, label %bb.d

bb.d:                                             ; preds = %bb.c
  %switch.tableidx = add i32 %1, -65536           ; 3 uses
  %i.g = icmp ult i32 %switch.tableidx, 22
  %switch.shifted = lshr i32 3149823, %switch.tableidx
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond = select i1 %i.g, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.x

switch.lookup:                                    ; preds = %bb.d
  %i.h = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.find_reorder_func, i64 %i.h
  %switch.load = load i8, ptr %switch.gep, align 1 ; 3 uses
  store <2 x i32> <i32 1, i32 5>, ptr %6, align 8, !tbaa !28
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 55, ptr %i.i, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr null, ptr %i.j, align 8, !tbaa !48
  %i.k = call i32 @av_channel_layout_compare(ptr noundef %2, ptr noundef nonnull %6) #10
  %.not28 = icmp eq i32 %i.k, 0
  br i1 %.not28, label %bb.f, label %bb.e

bb.e:                                             ; preds = %switch.lookup
  store <2 x i32> <i32 1, i32 5>, ptr %7, align 8, !tbaa !28
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 1543, ptr %i.l, align 8, !tbaa !27
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr null, ptr %i.m, align 8, !tbaa !48
  %i.n = call i32 @av_channel_layout_compare(ptr noundef %2, ptr noundef nonnull %7) #10
  %.not29 = icmp eq i32 %i.n, 0
  br i1 %.not29, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e, %switch.lookup
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  switch i8 %switch.load, label %default.unreachable34 [
    i8 0, label %bb.g
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.j
  ]

bb.g:                                             ; preds = %bb.f
  store ptr @alsa_reorder_int8_out_50, ptr %i.o, align 8, !tbaa !43
  br label %bb.x

bb.h:                                             ; preds = %bb.f
  store ptr @alsa_reorder_int16_out_50, ptr %i.o, align 8, !tbaa !43
  br label %bb.x

bb.i:                                             ; preds = %bb.f
  store ptr @alsa_reorder_int32_out_50, ptr %i.o, align 8, !tbaa !43
  br label %bb.x

bb.j:                                             ; preds = %bb.f
  store ptr @alsa_reorder_f32_out_50, ptr %i.o, align 8, !tbaa !43
  br label %bb.x

bb.k:                                             ; preds = %bb.e
  store <2 x i32> <i32 1, i32 6>, ptr %8, align 8, !tbaa !28
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 63, ptr %i.p, align 8, !tbaa !27
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr null, ptr %i.q, align 8, !tbaa !48
  %i.r = call i32 @av_channel_layout_compare(ptr noundef %2, ptr noundef nonnull %8) #10
  %.not30 = icmp eq i32 %i.r, 0
  br i1 %.not30, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store <2 x i32> <i32 1, i32 6>, ptr %9, align 8, !tbaa !28
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 1551, ptr %i.s, align 8, !tbaa !27
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr null, ptr %i.t, align 8, !tbaa !48
  %i.u = call i32 @av_channel_layout_compare(ptr noundef %2, ptr noundef nonnull %9) #10
  %.not31 = icmp eq i32 %i.u, 0
  br i1 %.not31, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  switch i8 %switch.load, label %default.unreachable34 [
    i8 0, label %bb.n
    i8 1, label %bb.o
    i8 2, label %bb.p
    i8 3, label %bb.q
  ]

bb.n:                                             ; preds = %bb.m
  store ptr @alsa_reorder_int8_out_51, ptr %i.v, align 8, !tbaa !43
  br label %bb.x

bb.o:                                             ; preds = %bb.m
  store ptr @alsa_reorder_int16_out_51, ptr %i.v, align 8, !tbaa !43
  br label %bb.x

bb.p:                                             ; preds = %bb.m
  store ptr @alsa_reorder_int32_out_51, ptr %i.v, align 8, !tbaa !43
  br label %bb.x

bb.q:                                             ; preds = %bb.m
  store ptr @alsa_reorder_f32_out_51, ptr %i.v, align 8, !tbaa !43
  br label %bb.x

bb.r:                                             ; preds = %bb.l
  store <2 x i32> <i32 1, i32 8>, ptr %10, align 8, !tbaa !28
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 1599, ptr %i.w, align 8, !tbaa !27
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr null, ptr %i.x, align 8, !tbaa !48
  %i.y = call i32 @av_channel_layout_compare(ptr noundef %2, ptr noundef nonnull %10) #10
  %.not32 = icmp eq i32 %i.y, 0
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  br i1 %.not32, label %bb.s, label %._crit_edge

._crit_edge:                                      ; preds = %bb.r
  %.pre = load ptr, ptr %i.z, align 8, !tbaa !43
  %i.aa = icmp eq ptr %.pre, null
  %i.ab = select i1 %i.aa, i32 -38, i32 0
  br label %bb.x

bb.s:                                             ; preds = %bb.r
  switch i8 %switch.load, label %default.unreachable34 [
    i8 0, label %bb.t
    i8 1, label %bb.u
    i8 2, label %bb.v
    i8 3, label %bb.w
  ]

bb.t:                                             ; preds = %bb.s
  store ptr @alsa_reorder_int8_out_71, ptr %i.z, align 8, !tbaa !43
  br label %bb.x

bb.u:                                             ; preds = %bb.s
  store ptr @alsa_reorder_int16_out_71, ptr %i.z, align 8, !tbaa !43
  br label %bb.x

bb.v:                                             ; preds = %bb.s
  store ptr @alsa_reorder_int32_out_71, ptr %i.z, align 8, !tbaa !43
  br label %bb.x

bb.w:                                             ; preds = %bb.s
  store ptr @alsa_reorder_f32_out_71, ptr %i.z, align 8, !tbaa !43
  br label %bb.x

default.unreachable34:                            ; preds = %bb.s, %bb.m, %bb.f
  unreachable

bb.x:                                             ; preds = %bb.d, %bb.j, %bb.i, %bb.h, %bb.g, %bb.w, %bb.v, %bb.u, %bb.t, %bb.n, %bb.o, %bb.p, %bb.q, %._crit_edge, %bb.b, %bb.c, %bb.a
  %.025 = phi i32 [ 0, %bb.b ], [ -38, %bb.d ], [ -38, %bb.a ], [ 0, %bb.c ], [ %i.ab, %._crit_edge ], [ 0, %bb.q ], [ 0, %bb.p ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.t ], [ 0, %bb.u ], [ 0, %bb.v ], [ 0, %bb.w ], [ 0, %bb.g ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %bb.j ]
  ret i32 %.025
}

declare i32 @av_channel_layout_describe(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @av_malloc_array(i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @av_packet_alloc() local_unnamed_addr #3

declare i32 @snd_pcm_close(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind optsize uwtable
define noundef i32 @ff_alsa_close(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47
  %i.e = tail call i32 @snd_pcm_stream(ptr noundef %i.d) #10
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !47
  %i.h = tail call i32 @snd_pcm_nonblock(ptr noundef %i.g, i32 noundef 0) #10 ; 0 uses
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !47
  %i.j = tail call i32 @snd_pcm_drain(ptr noundef %i.i) #10 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  tail call void @av_freep(ptr noundef nonnull %i.k) #10
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !49
  tail call void @ff_timefilter_destroy(ptr noundef %i.m) #10
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !47
  %i.o = tail call i32 @snd_pcm_close(ptr noundef %i.n) #10 ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  tail call void @av_packet_free(ptr noundef nonnull %i.p) #10
  ret i32 0
}

declare i32 @snd_pcm_stream(ptr noundef) local_unnamed_addr #3

declare i32 @snd_pcm_nonblock(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @snd_pcm_drain(ptr noundef) local_unnamed_addr #3

declare void @av_freep(ptr noundef) local_unnamed_addr #3

declare void @ff_timefilter_destroy(ptr noundef) local_unnamed_addr #3

declare void @av_packet_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 -31, -32) i32 @ff_alsa_xrun_recover(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 24, ptr noundef nonnull @.str.15) #10
  switch i32 %1, label %bb.e [
    i32 -32, label %bb.b
    i32 -86, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @snd_pcm_prepare(ptr noundef %i.d) #10 ; 3 uses
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @snd_strerror(i32 noundef %i.e) #10
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.16, ptr noundef %i.g) #10
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.17) #10
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.a, %bb.d, %bb.c
  %.011 = phi i32 [ -5, %bb.c ], [ -1, %bb.d ], [ %i.e, %bb.b ], [ %1, %bb.a ]
  ret i32 %.011
}

declare i32 @snd_pcm_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 -12, 1) i32 @ff_alsa_extend_reorder_buf(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef 353) #10
  tail call void @abort() #12
  unreachable

.preheader:                                       ; preds = %bb.a, %.preheader
  %.0 = phi i32 [ %i.d, %.preheader ], [ %i.b, %bb.a ] ; 4 uses
  %i.c = icmp slt i32 %.0, %1
  %i.d = shl nsw i32 %.0, 1
  br i1 %i.c, label %.preheader, label %bb.c, !llvm.loop !50

bb.c:                                             ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !45
  %i.g = sext i32 %.0 to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !31
  %i.j = sext i32 %i.i to i64
  %i.k = tail call ptr @av_realloc_array(ptr noundef %i.f, i64 noundef %i.g, i64 noundef %i.j) #10 ; 2 uses
  %.not16 = icmp eq ptr %i.k, null
  br i1 %.not16, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.k, ptr %i.e, align 8, !tbaa !45
  store i32 %.0, ptr %i.a, align 8, !tbaa !44
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.013 = phi i32 [ 0, %bb.d ], [ -12, %bb.c ]
  ret i32 %.013
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #5

declare ptr @av_realloc_array(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i32 @ff_alsa_get_device_list(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = icmp eq i32 %1, 0
  %i.c = select i1 %i.b, ptr @.str.21, ptr @.str.22
  %i.d = call i32 @snd_device_name_hint(i32 noundef -1, ptr noundef nonnull @.str.23, ptr noundef nonnull %i.a) #10
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !52   ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !53   ; 2 uses
  %.not62.not = icmp eq ptr %i.g, null
  br i1 %.not62.not, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
end_hunk_0
