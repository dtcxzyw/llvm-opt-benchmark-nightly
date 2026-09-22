Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_arnndn?download=true
inline.NumInlined: 49
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 60
begin_hunk_0_@av_log

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #5

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @rnnoise_model_free(ptr noundef %0) unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69   ; 2 uses
  %.not35 = icmp eq ptr %i.b, null
  br i1 %.not35, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !80
  tail call void @av_free(ptr noundef %i.d) #11
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !69
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !81
  tail call void @av_free(ptr noundef %i.f) #11
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !69
  tail call void @av_free(ptr noundef %i.g) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !70   ; 2 uses
  %.not36 = icmp eq ptr %i.i, null
  br i1 %.not36, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !86
  tail call void @av_free(ptr noundef %i.k) #11
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !70
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !87
  tail call void @av_free(ptr noundef %i.n) #11
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !70
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !88
  tail call void @av_free(ptr noundef %i.p) #11
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !70
  tail call void @av_free(ptr noundef %i.q) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !71   ; 2 uses
  %.not37 = icmp eq ptr %i.s, null
  br i1 %.not37, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !86
  tail call void @av_free(ptr noundef %i.u) #11
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !71
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !87
  tail call void @av_free(ptr noundef %i.x) #11
  %i.y = load ptr, ptr %i.r, align 8, !tbaa !71
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !88
  tail call void @av_free(ptr noundef %i.z) #11
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !71
  tail call void @av_free(ptr noundef %i.aa) #11
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !72 ; 2 uses
  %.not38 = icmp eq ptr %i.ac, null
  br i1 %.not38, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !86
  tail call void @av_free(ptr noundef %i.ae) #11
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !72
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !87
  tail call void @av_free(ptr noundef %i.ah) #11
  %i.ai = load ptr, ptr %i.ab, align 8, !tbaa !72
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !88
  tail call void @av_free(ptr noundef %i.aj) #11
  %i.ak = load ptr, ptr %i.ab, align 8, !tbaa !72
  tail call void @av_free(ptr noundef %i.ak) #11
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !73 ; 2 uses
  %.not39 = icmp eq ptr %i.am, null
  br i1 %.not39, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !80
  tail call void @av_free(ptr noundef %i.ao) #11
  %i.ap = load ptr, ptr %i.al, align 8, !tbaa !73
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !81
  tail call void @av_free(ptr noundef %i.aq) #11
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !73
  tail call void @av_free(ptr noundef %i.ar) #11
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !74 ; 2 uses
  %.not40 = icmp eq ptr %i.at, null
  br i1 %.not40, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !80
  tail call void @av_free(ptr noundef %i.av) #11
  %i.aw = load ptr, ptr %i.as, align 8, !tbaa !74
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !81
  tail call void @av_free(ptr noundef %i.ax) #11
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !74
  tail call void @av_free(ptr noundef %i.ay) #11
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  tail call void @av_free(ptr noundef nonnull %0) #11
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %bb.n
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fgetc(ptr noundef captures(none)) local_unnamed_addr #5

declare void @av_free(ptr noundef) local_unnamed_addr #3

declare void @av_freep(ptr noundef) local_unnamed_addr #3

declare void @av_tx_uninit(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @ff_set_sample_formats_from_list2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_set_common_samplerates_from_list2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_filter_process_command(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ff_outlink_get_status(ptr noundef) local_unnamed_addr #3

declare void @ff_inlink_set_status(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ff_inlink_consume_samples(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_inlink_acknowledge_status(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_outlink_frame_wanted(ptr noundef) local_unnamed_addr #3

declare void @ff_inlink_request_frame(ptr noundef) local_unnamed_addr #3

declare ptr @ff_get_audio_buffer(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @av_frame_free(ptr noundef) local_unnamed_addr #3

declare i32 @av_frame_copy_props(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_filter_execute(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @rnnoise_channels(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #1 {
bb.a:
  %4 = alloca [960 x %struct.AVComplexFloat], align 16 ; 12 uses
  %5 = alloca [960 x %struct.AVComplexFloat], align 16 ; 11 uses
  %i.a = alloca [960 x float], align 16           ; 15 uses
  %i.b = alloca [22 x float], align 16            ; 10 uses
  %i.c = alloca [22 x float], align 16            ; 11 uses
  %i.d = alloca [22 x float], align 16            ; 10 uses
  %i.e = alloca [481 x float], align 16           ; 6 uses
  %i.f = alloca [481 x float], align 16           ; 7 uses
  %i.g = alloca [128 x float], align 16           ; 5 uses
  %i.h = alloca [384 x float], align 16           ; 5 uses
  %i.i = alloca [384 x float], align 16           ; 5 uses
  %i.j = alloca [22 x float], align 16            ; 8 uses
  %i.k = alloca [22 x float], align 16            ; 13 uses
  %6 = alloca [960 x %struct.AVComplexFloat], align 16 ; 7 uses
  %7 = alloca [960 x %struct.AVComplexFloat], align 16 ; 4 uses
  %i.l = alloca [769 x float], align 16           ; 7 uses
  %i.m = alloca [960 x float], align 16           ; 84 uses
  %i.n = alloca [960 x float], align 16           ; 19 uses
  %i.o = alloca [960 x float], align 16           ; 10 uses
  %i.p = alloca [22 x float], align 16            ; 8 uses
  %8 = alloca [960 x %struct.AVComplexFloat], align 16 ; 7 uses
  %9 = alloca [960 x %struct.AVComplexFloat], align 16 ; 4 uses
  %i.q = alloca [960 x float], align 16           ; 8 uses
  %i.r = alloca [24 x float], align 16            ; 6 uses
  %i.s = alloca [960 x float], align 16           ; 8 uses
  %i.t = alloca [864 x float], align 16           ; 104 uses
  %i.u = alloca [22 x float], align 16            ; 5 uses
  %10 = alloca [481 x %struct.AVComplexFloat], align 16 ; 13 uses
  %11 = alloca [960 x %struct.AVComplexFloat], align 16 ; 7 uses
  %i.v = alloca [480 x float], align 16           ; 7 uses
  %i.w = alloca [22 x float], align 16            ; 18 uses
  %i.x = alloca [24 x float], align 16            ; 19 uses
  %i.y = alloca [42 x float], align 16            ; 19 uses
  %i.z = alloca [22 x float], align 16            ; 19 uses
  %i.aa = alloca [481 x float], align 16          ; 6 uses
  %i.ab = alloca float, align 4                   ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !20 ; 9 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !50 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 388
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !177
  %i.ai = sext i32 %i.ah to i64                   ; 2 uses
  %i.aj = sext i32 %2 to i64
  %i.ak = mul nsw i64 %i.ai, %i.aj
  %i.al = sext i32 %3 to i64                      ; 2 uses
  %i.am = sdiv i64 %i.ak, %i.al                   ; 2 uses
  %i.an = trunc i64 %i.am to i32
  %i.ao = add nsw i32 %2, 1
  %i.ap = sext i32 %i.ao to i64
  %i.aq = mul nsw i64 %i.ai, %i.ap
  %i.ar = sdiv i64 %i.aq, %i.al                   ; 2 uses
  %i.as = trunc i64 %i.ar to i32
  %i.at = icmp slt i32 %i.an, %i.as
  %indvars.iv.i.i.i.ph.sroa.gep = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %indvars.iv.i.i.i.ph.sroa.gep400 = getelementptr inbounds nuw i8, ptr %i.t, i64 3444
  br i1 %i.at, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.au = load ptr, ptr %1, align 8, !tbaa !49
  %i.av = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %i.af, i64 96
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 96
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.az = getelementptr inbounds nuw i8, ptr %i.q, i64 1920
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ad, i64 6192 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ad, i64 32 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.p, i64 84 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %i.be = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.t, i64 3444
  %i.bh = getelementptr inbounds nuw i8, ptr %i.t, i64 3440
  %i.bi = getelementptr inbounds nuw i8, ptr %i.t, i64 1536 ; 33 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.n, i64 576 ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.o, i64 576
  %i.bl = getelementptr inbounds nuw i8, ptr %i.n, i64 580 ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.o, i64 580
  %i.bn = getelementptr inbounds nuw i8, ptr %i.n, i64 584 ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.o, i64 584
  %invariant.gep.i.i209.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 960
  %invariant.gep.i67.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 1920
  %i.bp = getelementptr inbounds nuw i8, ptr %i.k, i64 84 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.j, i64 84 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.w, i64 32 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.x, i64 48 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.w, i64 48 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.x, i64 64 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.w, i64 64 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.x, i64 80 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.w, i64 80 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.x, i64 88
  %scevgep326.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 136 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.y, i64 160
  %i.cd = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  %i.ce = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.cg = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.ch = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  %i.cj = getelementptr inbounds nuw i8, ptr %i.y, i64 88
  %i.ck = getelementptr inbounds nuw i8, ptr %i.y, i64 120
  %i.cl = getelementptr inbounds nuw i8, ptr %i.y, i64 104
  %i.cm = getelementptr inbounds nuw i8, ptr %i.y, i64 164
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.15.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.19.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sroa.23.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.cn = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.co = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.cp = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.cq = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.cs = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.z, i64 32 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.z, i64 48 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.z, i64 64 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.z, i64 80 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 1920
  %sext = shl i64 %i.am, 32
  %i.cz = ashr exact i64 %sext, 32                ; 2 uses
  %sext108 = shl i64 %i.ar, 32
  %wide.trip.count = ashr exact i64 %sext108, 32
  %i.da = mul nsw i64 %i.cz, 20512                ; 3 uses
  %scevgep341 = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %scevgep342 = getelementptr inbounds nuw i8, ptr %i.t, i64 3456
  %i.db = getelementptr inbounds nuw i8, ptr %i.t, i64 1568
  %i.dc = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.dd = getelementptr inbounds nuw i8, ptr %i.t, i64 1600
  %i.de = getelementptr inbounds nuw i8, ptr %i.t, i64 1632
  %i.df = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.dg = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.dh = getelementptr inbounds nuw i8, ptr %i.t, i64 1664
  %i.di = getelementptr inbounds nuw i8, ptr %i.t, i64 1696
  %i.dj = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.dl = getelementptr inbounds nuw i8, ptr %i.t, i64 1728
  %i.dm = getelementptr inbounds nuw i8, ptr %i.t, i64 1760
  %i.dn = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.do = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  %i.dp = getelementptr inbounds nuw i8, ptr %i.t, i64 1792
  %i.dq = getelementptr inbounds nuw i8, ptr %i.t, i64 1824
  %i.dr = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %i.ds = getelementptr inbounds nuw i8, ptr %i.m, i64 144
  %i.dt = getelementptr inbounds nuw i8, ptr %i.t, i64 1856
  %i.du = getelementptr inbounds nuw i8, ptr %i.t, i64 1888
  %i.dv = getelementptr inbounds nuw i8, ptr %i.m, i64 160
  %i.dw = getelementptr inbounds nuw i8, ptr %i.m, i64 176
  %i.dx = getelementptr inbounds nuw i8, ptr %i.t, i64 1920
  %i.dy = getelementptr inbounds nuw i8, ptr %i.t, i64 1952
  %i.dz = getelementptr inbounds nuw i8, ptr %i.m, i64 192
  %i.ea = getelementptr inbounds nuw i8, ptr %i.m, i64 208
  %i.eb = getelementptr inbounds nuw i8, ptr %i.t, i64 1984
  %i.ec = getelementptr inbounds nuw i8, ptr %i.t, i64 2016
  %i.ed = getelementptr inbounds nuw i8, ptr %i.m, i64 224
  %i.ee = getelementptr inbounds nuw i8, ptr %i.m, i64 240
  %i.ef = getelementptr inbounds nuw i8, ptr %i.t, i64 2048
  %i.eg = getelementptr inbounds nuw i8, ptr %i.t, i64 2080
  %i.eh = getelementptr inbounds nuw i8, ptr %i.m, i64 256
  %i.ei = getelementptr inbounds nuw i8, ptr %i.m, i64 272
  %i.ej = getelementptr inbounds nuw i8, ptr %i.t, i64 2112
  %i.ek = getelementptr inbounds nuw i8, ptr %i.t, i64 2144
  %i.el = getelementptr inbounds nuw i8, ptr %i.m, i64 288
  %i.em = getelementptr inbounds nuw i8, ptr %i.m, i64 304
  %i.en = getelementptr inbounds nuw i8, ptr %i.t, i64 2176
  %i.eo = getelementptr inbounds nuw i8, ptr %i.t, i64 2208
  %i.ep = getelementptr inbounds nuw i8, ptr %i.m, i64 320
  %i.eq = getelementptr inbounds nuw i8, ptr %i.m, i64 336
  %i.er = getelementptr inbounds nuw i8, ptr %i.t, i64 2240
  %i.es = getelementptr inbounds nuw i8, ptr %i.t, i64 2272
  %i.et = getelementptr inbounds nuw i8, ptr %i.m, i64 352
  %i.eu = getelementptr inbounds nuw i8, ptr %i.m, i64 368
  %i.ev = getelementptr inbounds nuw i8, ptr %i.t, i64 2304
  %i.ew = getelementptr inbounds nuw i8, ptr %i.t, i64 2336
  %i.ex = getelementptr inbounds nuw i8, ptr %i.m, i64 384
  %i.ey = getelementptr inbounds nuw i8, ptr %i.m, i64 400
  %i.ez = getelementptr inbounds nuw i8, ptr %i.t, i64 2368
  %i.fa = getelementptr inbounds nuw i8, ptr %i.t, i64 2400
  %i.fb = getelementptr inbounds nuw i8, ptr %i.m, i64 416
  %i.fc = getelementptr inbounds nuw i8, ptr %i.m, i64 432
  %i.fd = getelementptr inbounds nuw i8, ptr %i.t, i64 2432
  %i.fe = getelementptr inbounds nuw i8, ptr %i.t, i64 2464
  %i.ff = getelementptr inbounds nuw i8, ptr %i.m, i64 448
  %i.fg = getelementptr inbounds nuw i8, ptr %i.m, i64 464
  %i.fh = getelementptr inbounds nuw i8, ptr %i.t, i64 2496
  %i.fi = getelementptr inbounds nuw i8, ptr %i.t, i64 2528
  %i.fj = getelementptr inbounds nuw i8, ptr %i.m, i64 480
  %i.fk = getelementptr inbounds nuw i8, ptr %i.m, i64 496
  %i.fl = getelementptr inbounds nuw i8, ptr %i.t, i64 2560
  %i.fm = getelementptr inbounds nuw i8, ptr %i.t, i64 2592
  %i.fn = getelementptr inbounds nuw i8, ptr %i.m, i64 512
  %i.fo = getelementptr inbounds nuw i8, ptr %i.m, i64 528
  %i.fp = getelementptr inbounds nuw i8, ptr %i.t, i64 2624
  %i.fq = getelementptr inbounds nuw i8, ptr %i.t, i64 2656
  %i.fr = getelementptr inbounds nuw i8, ptr %i.m, i64 544
  %i.fs = getelementptr inbounds nuw i8, ptr %i.m, i64 560
  %i.ft = getelementptr inbounds nuw i8, ptr %i.t, i64 2688
  %i.fu = getelementptr inbounds nuw i8, ptr %i.t, i64 2720
  %i.fv = getelementptr inbounds nuw i8, ptr %i.m, i64 576
  %i.fw = getelementptr inbounds nuw i8, ptr %i.m, i64 592
  %i.fx = getelementptr inbounds nuw i8, ptr %i.t, i64 2752
  %i.fy = getelementptr inbounds nuw i8, ptr %i.t, i64 2784
  %i.fz = getelementptr inbounds nuw i8, ptr %i.m, i64 608
  %i.ga = getelementptr inbounds nuw i8, ptr %i.m, i64 624
  %i.gb = getelementptr inbounds nuw i8, ptr %i.t, i64 2816
  %i.gc = getelementptr inbounds nuw i8, ptr %i.t, i64 2848
  %i.gd = getelementptr inbounds nuw i8, ptr %i.m, i64 640
  %i.ge = getelementptr inbounds nuw i8, ptr %i.m, i64 656
  %i.gf = getelementptr inbounds nuw i8, ptr %i.t, i64 2880
  %i.gg = getelementptr inbounds nuw i8, ptr %i.t, i64 2912
  %i.gh = getelementptr inbounds nuw i8, ptr %i.m, i64 672
  %i.gi = getelementptr inbounds nuw i8, ptr %i.m, i64 688
  %i.gj = getelementptr inbounds nuw i8, ptr %i.t, i64 2944
  %i.gk = getelementptr inbounds nuw i8, ptr %i.t, i64 2976
  %i.gl = getelementptr inbounds nuw i8, ptr %i.m, i64 704
  %i.gm = getelementptr inbounds nuw i8, ptr %i.m, i64 720
  %i.gn = getelementptr inbounds nuw i8, ptr %i.t, i64 3008
  %i.go = getelementptr inbounds nuw i8, ptr %i.t, i64 3040
  %i.gp = getelementptr inbounds nuw i8, ptr %i.m, i64 736
  %i.gq = getelementptr inbounds nuw i8, ptr %i.m, i64 752
  %i.gr = getelementptr inbounds nuw i8, ptr %i.t, i64 3072
  %i.gs = getelementptr inbounds nuw i8, ptr %i.t, i64 3104
  %i.gt = getelementptr inbounds nuw i8, ptr %i.m, i64 768
  %i.gu = getelementptr inbounds nuw i8, ptr %i.m, i64 784
  %i.gv = getelementptr inbounds nuw i8, ptr %i.t, i64 3136
  %i.gw = getelementptr inbounds nuw i8, ptr %i.t, i64 3168
  %i.gx = getelementptr inbounds nuw i8, ptr %i.m, i64 800
  %i.gy = getelementptr inbounds nuw i8, ptr %i.m, i64 816
  %i.gz = getelementptr inbounds nuw i8, ptr %i.t, i64 3200
  %i.ha = getelementptr inbounds nuw i8, ptr %i.t, i64 3232
  %i.hb = getelementptr inbounds nuw i8, ptr %i.m, i64 832
  %i.hc = getelementptr inbounds nuw i8, ptr %i.m, i64 848
  %i.hd = getelementptr inbounds nuw i8, ptr %i.t, i64 3264
  %i.he = getelementptr inbounds nuw i8, ptr %i.t, i64 3296
  %i.hf = getelementptr inbounds nuw i8, ptr %i.m, i64 864
  %i.hg = getelementptr inbounds nuw i8, ptr %i.m, i64 880
  %i.hh = getelementptr inbounds nuw i8, ptr %i.t, i64 3328
  %i.hi = getelementptr inbounds nuw i8, ptr %i.t, i64 3360
  %i.hj = getelementptr inbounds nuw i8, ptr %i.m, i64 896
  %i.hk = getelementptr inbounds nuw i8, ptr %i.m, i64 912
  %i.hl = getelementptr inbounds nuw i8, ptr %i.t, i64 3392
  %i.hm = getelementptr inbounds nuw i8, ptr %i.m, i64 928
  %i.hn = getelementptr inbounds nuw i8, ptr %i.t, i64 3400
  %i.ho = getelementptr inbounds nuw i8, ptr %i.m, i64 932
  %i.hp = getelementptr inbounds nuw i8, ptr %i.t, i64 3408
  %i.hq = getelementptr inbounds nuw i8, ptr %i.m, i64 936
  %i.hr = getelementptr inbounds nuw i8, ptr %i.t, i64 3416
  %i.hs = getelementptr inbounds nuw i8, ptr %i.m, i64 940
  %i.ht = getelementptr inbounds nuw i8, ptr %i.t, i64 3424
  %i.hu = getelementptr inbounds nuw i8, ptr %i.m, i64 944
  %i.hv = getelementptr inbounds nuw i8, ptr %i.t, i64 3432
  %i.hw = getelementptr inbounds nuw i8, ptr %i.m, i64 948
  %i.hx = getelementptr inbounds nuw i8, ptr %i.t, i64 3440
  %i.hy = getelementptr inbounds nuw i8, ptr %i.m, i64 952
  %i.hz = getelementptr inbounds nuw i8, ptr %i.t, i64 3448
  %i.ia = getelementptr inbounds nuw i8, ptr %i.m, i64 956
  %i.ib = getelementptr inbounds nuw i8, ptr %i.t, i64 3072
  %i.ic = getelementptr inbounds nuw i8, ptr %i.n, i64 1536
  %i.id = getelementptr inbounds nuw i8, ptr %i.t, i64 3080
  %i.ie = getelementptr inbounds nuw i8, ptr %i.n, i64 1540
  %i.if = getelementptr inbounds nuw i8, ptr %i.t, i64 3088
  %i.ig = getelementptr inbounds nuw i8, ptr %i.n, i64 1544
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 48
end_hunk_0
begin_hunk_1_@rnnoise_channels:bb.a
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.i.i
  store float %i.kp, ptr %i.kv, align 8, !tbaa !26
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %indvars.iv.next.i.i
  %i.kx = load float, ptr %i.kw, align 4, !tbaa !26 ; 3 uses
  %i.ky = fadd nsz float %i.ks, %i.kx             ; 3 uses
  %i.kz = fmul nsz float %i.ky, 1.995990e+00
  %i.la = call nsz float @llvm.fmuladd.f32(float %i.kx, float -2.000000e+00, float %i.kz)
  %i.lb = fadd nsz float %i.ku, %i.la             ; 2 uses
  store float %i.lb, ptr %i.kj, align 4, !tbaa !26
  %i.lc = fmul nsz float %i.ky, f0x3F7EF9DB
  %i.ld = fsub nsz float %i.kx, %i.lc             ; 2 uses
  store float %i.ld, ptr %i.kk, align 4, !tbaa !26
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.next.i.i
  store float %i.ky, ptr %i.le, align 4, !tbaa !26
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, 480
  br i1 %exitcond.not.i.i.1, label %biquad.exit.i, label %bb.c, !llvm.loop !128

biquad.exit.i:                                    ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1920) %i.q, ptr noundef nonnull align 16 dereferenceable(1920) %i.kb, i64 1920, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1920) %i.az, ptr noundef nonnull readonly align 16 dereferenceable(1920) %i.v, i64 1920, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1920) %i.kb, ptr noundef nonnull readonly align 16 dereferenceable(1920) %i.v, i64 1920, i1 false)
  %i.lf = load ptr, ptr %i.ba, align 16, !tbaa !25
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !181
  call void %i.lg(ptr noundef nonnull %i.q, ptr noundef nonnull %i.q, ptr noundef nonnull %i.bb, i32 noundef 960) #11, !inline_history !129
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  br label %vector.body362

vector.body362:                                   ; preds = %vector.body362, %biquad.exit.i
  %index363 = phi i64 [ 0, %biquad.exit.i ], [ %index.next368.1, %vector.body362 ] ; 5 uses
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index363 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  %wide.load364 = load <2 x float>, ptr %i.lh, align 16, !tbaa !26
  %wide.load365 = load <2 x float>, ptr %i.li, align 8, !tbaa !26
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %index363
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %index363
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 16
  %interleaved.vec366 = shufflevector <2 x float> %wide.load364, <2 x float> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec366, ptr %i.lj, align 16, !tbaa !26
  %interleaved.vec367 = shufflevector <2 x float> %wide.load365, <2 x float> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec367, ptr %i.ll, align 16, !tbaa !26
  %index.next368 = or disjoint i64 %index363, 4   ; 3 uses
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index.next368 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  %wide.load364.1 = load <2 x float>, ptr %i.lm, align 16, !tbaa !26
  %wide.load365.1 = load <2 x float>, ptr %i.ln, align 8, !tbaa !26
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %index.next368
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %index.next368
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 16
  %interleaved.vec366.1 = shufflevector <2 x float> %wide.load364.1, <2 x float> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec366.1, ptr %i.lo, align 16, !tbaa !26
  %interleaved.vec367.1 = shufflevector <2 x float> %wide.load365.1, <2 x float> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec367.1, ptr %i.lq, align 16, !tbaa !26
  %index.next368.1 = add nuw nsw i64 %index363, 8 ; 2 uses
  %i.lr = icmp eq i64 %index.next368.1, 960
  br i1 %i.lr, label %forward_transform.exit.i.i.i, label %vector.body362, !llvm.loop !130

forward_transform.exit.i.i.i:                     ; preds = %vector.body362
  %i.ls = getelementptr inbounds nuw i8, ptr %i.kb, i64 20488 ; 2 uses
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !182
  %i.lu = getelementptr inbounds nuw i8, ptr %i.kb, i64 20472 ; 2 uses
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !67
  call void %i.lt(ptr noundef %i.lv, ptr noundef nonnull %9, ptr noundef nonnull %8, i64 noundef 8) #11, !inline_history !131
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(3848) %10, ptr noundef nonnull align 16 dereferenceable(3848) %9, i64 3848, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(88) %i.p, i8 0, i64 88, i1 false)
  br label %bb.d

..loopexit_crit_edge.i.i.i.i:                     ; preds = %bb.e
  store <2 x float> %i.mx, ptr %i.mg, align 4, !tbaa !26
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %bb.d, %..loopexit_crit_edge.i.i.i.i
  %exitcond45.not.i.i.i.i = icmp eq i64 %indvars.iv.next43.i.i.i.i, 21
  br i1 %exitcond45.not.i.i.i.i, label %frame_analysis.exit.i.i, label %bb.d, !llvm.loop !132

bb.d:                                             ; preds = %.loopexit.i.i.i.i, %forward_transform.exit.i.i.i
  %i.lw = phi i8 [ 0, %forward_transform.exit.i.i.i ], [ %i.ly, %.loopexit.i.i.i.i ]
  %indvars.iv42.i.i.i.i = phi i64 [ 0, %forward_transform.exit.i.i.i ], [ %indvars.iv.next43.i.i.i.i, %.loopexit.i.i.i.i ] ; 2 uses
  %indvars.iv.next43.i.i.i.i = add nuw nsw i64 %indvars.iv42.i.i.i.i, 1 ; 3 uses
  %i.lx = getelementptr inbounds nuw i8, ptr @eband5ms, i64 %indvars.iv.next43.i.i.i.i
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !183 ; 2 uses
  %i.lz = zext i8 %i.ly to i32
  %i.ma = zext i8 %i.lw to i32                    ; 2 uses
  %i.mb = sub nsw i32 %i.lz, %i.ma                ; 2 uses
  %i.mc = icmp sgt i32 %i.mb, 0
  br i1 %i.mc, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d
  %i.md = shl nuw nsw i32 %i.mb, 2                ; 2 uses
  %i.me = uitofp nneg i32 %i.md to float
  %i.mf = shl nuw nsw i32 %i.ma, 2
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv42.i.i.i.i ; 2 uses
  %i.mh = load <2 x float>, ptr %i.mg, align 4, !tbaa !26
  %i.mi = zext nneg i32 %i.mf to i64
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.md to i64
  %invariant.gep.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.mi
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.i.i.i
  %indvars.iv.i21.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i22.i.i.i, %bb.e ] ; 3 uses
  %i.mj = phi <2 x float> [ %i.mh, %.lr.ph.i.i.i.i ], [ %i.mx, %bb.e ]
  %i.mk = trunc nuw nsw i64 %indvars.iv.i21.i.i.i to i32
  %i.ml = uitofp nsz nneg i32 %i.mk to float
  %i.mm = fdiv nsz float %i.ml, %i.me             ; 2 uses
  %gep.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i.i.i, i64 %indvars.iv.i21.i.i.i ; 2 uses
  %i.mn = load float, ptr %gep.i.i.i.i, align 8, !tbaa !185 ; 2 uses
  %i.mo = fmul nsz float %i.mn, %i.mn
  %i.mp = getelementptr inbounds nuw i8, ptr %gep.i.i.i.i, i64 4
  %i.mq = load float, ptr %i.mp, align 4, !tbaa !186 ; 2 uses
  %i.mr = call nsz float @llvm.fmuladd.f32(float %i.mq, float %i.mq, float %i.mo)
  %i.ms = fsub nsz float 1.000000e+00, %i.mm
  %i.mt = insertelement <2 x float> poison, float %i.ms, i64 0
  %i.mu = insertelement <2 x float> %i.mt, float %i.mm, i64 1
  %i.mv = insertelement <2 x float> poison, float %i.mr, i64 0
  %i.mw = shufflevector <2 x float> %i.mv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mx = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mu, <2 x float> %i.mw, <2 x float> %i.mj) ; 2 uses
  %indvars.iv.next.i22.i.i.i = add nuw nsw i64 %indvars.iv.i21.i.i.i, 1 ; 2 uses
  %exitcond.not.i23.i.i.i = icmp eq i64 %indvars.iv.next.i22.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i23.i.i.i, label %..loopexit_crit_edge.i.i.i.i, label %bb.e, !llvm.loop !133

frame_analysis.exit.i.i:                          ; preds = %.loopexit.i.i.i.i
  %i.my = load float, ptr %i.p, align 16, !tbaa !26
  %i.mz = fmul nsz float %i.my, 2.000000e+00
  store float %i.mz, ptr %i.p, align 16, !tbaa !26
  %i.na = load float, ptr %i.bc, align 4, !tbaa !26
  %i.nb = fmul nsz float %i.na, 2.000000e+00
  store float %i.nb, ptr %i.bc, align 4, !tbaa !26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(88) %i.w, ptr noundef nonnull align 16 dereferenceable(88) %i.p, i64 88, i1 false), !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #11
  %i.nc = getelementptr inbounds nuw i8, ptr %i.kb, i64 4560 ; 6 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.kb, i64 6480
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(4992) %i.nc, ptr noundef nonnull align 16 dereferenceable(4992) %i.nd, i64 4992, i1 false)
  %i.ne = getelementptr inbounds nuw i8, ptr %i.kb, i64 9552
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1920) %i.ne, ptr noundef nonnull readonly align 16 dereferenceable(1920) %i.v, i64 1920, i1 false)
  %i.nf = getelementptr i8, ptr %i.ka, i64 %i.da
  %i.ng = getelementptr i8, ptr %i.nf, i64 4564
  %scevgep343 = getelementptr i8, ptr %i.ng, i64 %i.jy
  %i.nh = getelementptr i8, ptr %i.ka, i64 %i.da
  %i.ni = getelementptr i8, ptr %i.nh, i64 11472
  %scevgep344 = getelementptr i8, ptr %i.ni, i64 %i.jy
  %bound0345 = icmp ult ptr %scevgep341, %scevgep344
  %bound1346 = icmp ult ptr %scevgep343, %scevgep342
  %found.conflict347 = and i1 %bound0345, %bound1346
  br i1 %found.conflict347, label %scalar.ph348.prol, label %vector.body350

scalar.ph348.prol:                                ; preds = %vector.body350, %frame_analysis.exit.i.i
  %indvars.iv.i.i.i.ph.sroa.phi = phi ptr [ %indvars.iv.i.i.i.ph.sroa.gep, %frame_analysis.exit.i.i ], [ %indvars.iv.i.i.i.ph.sroa.gep400, %vector.body350 ]
  %indvars.iv.i.i.i.ph = phi i64 [ 1, %frame_analysis.exit.i.i ], [ 861, %vector.body350 ] ; 2 uses
  %.idx.i.i.i.prol = shl nuw nsw i64 %indvars.iv.i.i.i.ph, 3
  %i.nj = getelementptr i8, ptr %i.nc, i64 %.idx.i.i.i.prol ; 3 uses
  %i.nk = getelementptr i8, ptr %i.nj, i64 -4
  %i.nl = load float, ptr %i.nk, align 4, !tbaa !26
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nj, i64 4
  %i.nn = load float, ptr %i.nm, align 4, !tbaa !26
  %i.no = fadd nsz float %i.nl, %i.nn
  %i.np = load float, ptr %i.nj, align 4, !tbaa !26
  %i.nq = call nsz float @llvm.fmuladd.f32(float %i.no, float 5.000000e-01, float %i.np)
  %i.nr = fmul nsz float %i.nq, 5.000000e-01
  store float %i.nr, ptr %indvars.iv.i.i.i.ph.sroa.phi, align 4, !tbaa !26
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.ph, 1
  br label %scalar.ph348

vector.body350:                                   ; preds = %frame_analysis.exit.i.i, %vector.body350
  %index351 = phi i64 [ %index.next357, %vector.body350 ], [ 0, %frame_analysis.exit.i.i ] ; 2 uses
  %i.ns = or disjoint i64 %index351, 1            ; 2 uses
  %i.nt = shl nuw nsw i64 %i.ns, 3
  %i.nu = getelementptr i8, ptr %i.nc, i64 %i.nt  ; 2 uses
  %i.nv = getelementptr i8, ptr %i.nu, i64 -4
  %wide.vec352 = load <8 x float>, ptr %i.nv, align 4, !tbaa !26, !alias.scope !187
  %strided.vec353 = shufflevector <8 x float> %wide.vec352, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec354 = load <8 x float>, ptr %i.nu, align 4, !tbaa !26, !alias.scope !187 ; 2 uses
  %strided.vec355 = shufflevector <8 x float> %wide.vec354, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec356 = shufflevector <8 x float> %wide.vec354, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.nw = fadd nsz <4 x float> %strided.vec353, %strided.vec356
  %i.nx = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.nw, <4 x float> splat (float 5.000000e-01), <4 x float> %strided.vec355)
  %i.ny = fmul nsz <4 x float> %i.nx, splat (float 5.000000e-01)
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.ns
  store <4 x float> %i.ny, ptr %i.nz, align 4, !tbaa !26, !alias.scope !188, !noalias !187
  %index.next357 = add nuw i64 %index351, 4       ; 2 uses
  %i.oa = icmp eq i64 %index.next357, 860
  br i1 %i.oa, label %scalar.ph348.prol, label %vector.body350, !llvm.loop !137

.unr-lcssa:                                       ; preds = %scalar.ph348
  %i.ob = getelementptr inbounds nuw i8, ptr %i.kb, i64 4564
  %i.oc = load float, ptr %i.ob, align 4, !tbaa !26
  %i.od = load float, ptr %i.nc, align 16, !tbaa !26
  %i.oe = call nsz float @llvm.fmuladd.f32(float %i.oc, float 5.000000e-01, float %i.od)
  %i.of = fmul nsz float %i.oe, 5.000000e-01      ; 2 uses
  store float %i.of, ptr %i.t, align 16, !tbaa !26
  %12 = load <2 x float>, ptr %i.be, align 4, !tbaa !26
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.unr-lcssa
  %.0124.i.i.i.i.i.i = phi ptr [ %i.t, %.unr-lcssa ], [ %i.oj, %bb.f ] ; 2 uses
  %.0109123.i.i.i.i.i.i = phi ptr [ %i.bd, %.unr-lcssa ], [ %i.ok, %bb.f ] ; 3 uses
  %.0112122.i.i.i.i.i.i = phi float [ %i.of, %.unr-lcssa ], [ %i.on, %bb.f ]
  %.0115120.i.i.i.i.i.i = phi i32 [ 0, %.unr-lcssa ], [ %i.ow, %bb.f ] ; 2 uses
  %i.og = phi <4 x float> [ zeroinitializer, %.unr-lcssa ], [ %i.ov, %bb.f ]
  %i.oh = phi <2 x float> [ %12, %.unr-lcssa ], [ %19, %bb.f ]
  %i.oi = getelementptr inbounds nuw i8, ptr %.0109123.i.i.i.i.i.i, i64 4
  %i.oj = getelementptr inbounds nuw i8, ptr %.0124.i.i.i.i.i.i, i64 16
  %i.ok = getelementptr inbounds nuw i8, ptr %.0109123.i.i.i.i.i.i, i64 16
  %i.ol = load <4 x float>, ptr %.0124.i.i.i.i.i.i, align 4, !tbaa !26 ; 4 uses
  %i.om = load <4 x float>, ptr %.0109123.i.i.i.i.i.i, align 4, !tbaa !26 ; 5 uses
  %i.on = load float, ptr %i.oi, align 4, !tbaa !26
  %i.oo = shufflevector <4 x float> %i.ol, <4 x float> poison, <4 x i32> zeroinitializer
  %13 = shufflevector <2 x float> %i.oh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %14 = shufflevector <4 x float> %13, <4 x float> %i.om, <4 x i32> <i32 poison, i32 0, i32 1, i32 4>
  %15 = insertelement <4 x float> %14, float %.0112122.i.i.i.i.i.i, i64 0
  %i.op = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.oo, <4 x float> %15, <4 x float> %i.og)
  %i.oq = shufflevector <4 x float> %i.ol, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %16 = shufflevector <4 x float> %i.om, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %17 = shufflevector <4 x float> %13, <4 x float> %16, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.or = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.oq, <4 x float> %17, <4 x float> %i.op)
  %i.os = shufflevector <4 x float> %i.ol, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %18 = shufflevector <4 x float> %17, <4 x float> %i.om, <4 x i32> <i32 1, i32 2, i32 3, i32 6>
  %i.ot = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.os, <4 x float> %18, <4 x float> %i.or)
  %i.ou = shufflevector <4 x float> %i.ol, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ov = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ou, <4 x float> %i.om, <4 x float> %i.ot) ; 3 uses
  %i.ow = add nuw nsw i32 %.0115120.i.i.i.i.i.i, 4
  %i.ox = icmp samesign ult i32 %.0115120.i.i.i.i.i.i, 853
  %19 = shufflevector <4 x float> %i.om, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  br i1 %i.ox, label %bb.f, label %.lr.ph48.i.i.i.i.i, !llvm.loop !138

.lr.ph48.i.i.i.i.i:                               ; preds = %bb.f, %.lr.ph48.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.4, %.lr.ph48.i.i.i.i.i ], [ 0, %bb.f ] ; 7 uses
  %.089.i.i.i.i.i.i = phi float [ %i.pv, %.lr.ph48.i.i.i.i.i ], [ 0.000000e+00, %bb.f ]
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i.i.i.i.i.i
  %i.oz = load float, ptr %i.oy, align 4, !tbaa !26
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i.i.i.i.i.i
  %i.pb = load float, ptr %i.pa, align 4, !tbaa !26 ; 2 uses
  %i.pc = call nsz float @llvm.fmuladd.f32(float %i.oz, float %i.pb, float %.089.i.i.i.i.i.i)
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.i.i.i.i
  %i.pe = load float, ptr %i.pd, align 4, !tbaa !26
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.next.i.i.i.i.i.i
  %i.pg = load float, ptr %i.pf, align 4, !tbaa !26
  %i.ph = call nsz float @llvm.fmuladd.f32(float %i.pe, float %i.pg, float %i.pc)
  %indvars.iv.next.i.i.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 2 ; 2 uses
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.i.i.i.i.1
  %i.pj = load float, ptr %i.pi, align 4, !tbaa !26
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.next.i.i.i.i.i.i.1
  %i.pl = load float, ptr %i.pk, align 4, !tbaa !26
  %i.pm = call nsz float @llvm.fmuladd.f32(float %i.pj, float %i.pl, float %i.ph)
  %indvars.iv.next.i.i.i.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 3 ; 2 uses
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.i.i.i.i.2
  %i.po = load float, ptr %i.pn, align 4, !tbaa !26
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.next.i.i.i.i.i.i.2
  %i.pq = load float, ptr %i.pp, align 4, !tbaa !26
  %i.pr = call nsz float @llvm.fmuladd.f32(float %i.po, float %i.pq, float %i.pm)
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i.i.i.i.i.i
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 16
  %i.pu = load float, ptr %i.pt, align 4, !tbaa !26
  %i.pv = call nsz float @llvm.fmuladd.f32(float %i.pb, float %i.pu, float %i.pr) ; 2 uses
  %indvars.iv.next.i.i.i.i.i.i.4 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 5 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.4 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i.4, 860
  br i1 %exitcond.not.i.i.i.i.i.i.4, label %celt_autocorr.exit.i.i.i, label %.lr.ph48.i.i.i.i.i, !llvm.loop !139

celt_autocorr.exit.i.i.i:                         ; preds = %.lr.ph48.i.i.i.i.i
  %i.pw = load <4 x float>, ptr %i.bh, align 16, !tbaa !26 ; 6 uses
  %i.px = load float, ptr %i.bg, align 4, !tbaa !26 ; 4 uses
  %i.py = shufflevector <4 x float> %i.pw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pz = fmul nsz <4 x float> %i.pw, %i.py       ; 4 uses
  %i.qa = extractelement <4 x float> %i.pz, i64 0
  %i.qb = call nsz float @llvm.fmuladd.f32(float %i.px, float %i.px, float %i.qa)
  %i.qc = extractelement <4 x float> %i.pw, i64 2 ; 3 uses
  %i.qd = call nsz float @llvm.fmuladd.f32(float %i.qc, float %i.qc, float %i.qb)
  %i.qe = extractelement <4 x float> %i.pw, i64 3 ; 2 uses
  %i.qf = call nsz float @llvm.fmuladd.f32(float %i.qe, float %i.qe, float %i.qd)
  %i.qg = extractelement <4 x float> %i.pz, i64 1
  %i.qh = call nsz float @llvm.fmuladd.f32(float %i.qc, float %i.px, float %i.qg)
  %20 = shufflevector <4 x float> %i.ov, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %21 = shufflevector <4 x float> %i.pz, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.qi = insertelement <2 x float> %21, float %i.qf, i64 0
  %i.qj = fadd nsz <2 x float> %20, %i.qi         ; 2 uses
  %i.qk = extractelement <2 x float> %i.qj, i64 0
  %i.ql = fmul nsz float %i.qk, 1.000100e+00      ; 5 uses
  %i.qm = shufflevector <4 x float> %i.pw, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %22 = shufflevector <4 x float> %i.pw, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.qn = insertelement <2 x float> %22, float %i.px, i64 1
  %23 = shufflevector <4 x float> %i.pz, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.qo = insertelement <2 x float> %23, float %i.qh, i64 0
  %i.qp = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qm, <2 x float> %i.qn, <2 x float> %i.qo)
  %i.qq = shufflevector <4 x float> %i.ov, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.qr = fadd nsz <2 x float> %i.qq, %i.qp       ; 3 uses
  %i.qs = fmul nsz <2 x float> %i.qr, <float -8.000000e-03, float -1.600000e-02> ; 2 uses
  %i.qt = extractelement <2 x float> %i.qs, i64 0
  %i.qu = extractelement <2 x float> %i.qr, i64 0
  %i.qv = call nsz float @llvm.fmuladd.f32(float %i.qt, float 8.000000e-03, float %i.qu) ; 4 uses
  %i.qw = extractelement <2 x float> %i.qs, i64 1
  %i.qx = extractelement <2 x float> %i.qr, i64 1
  %i.qy = call nsz float @llvm.fmuladd.f32(float %i.qw, float 1.600000e-02, float %i.qx) ; 3 uses
  %i.qz = shufflevector <2 x float> %i.qj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ra = insertelement <2 x float> %i.qz, float %i.pv, i64 1 ; 2 uses
  %i.rb = fmul nsz <2 x float> %i.ra, <float -2.400000e-02, float -3.200000e-02>
  %i.rc = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rb, <2 x float> <float 2.400000e-02, float 3.200000e-02>, <2 x float> %i.ra) ; 3 uses
  %i.rd = fcmp nsz une float %i.ql, 0.000000e+00
  br i1 %i.rd, label %._crit_edge60.i.i.i.i, label %vector.ph320

scalar.ph348:                                     ; preds = %scalar.ph348, %scalar.ph348.prol
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph348.prol ], [ %indvars.iv.next.i.i.i.1, %scalar.ph348 ] ; 4 uses
  %.idx.i.i.i = shl nuw nsw i64 %indvars.iv.i.i.i, 3
  %i.re = getelementptr i8, ptr %i.nc, i64 %.idx.i.i.i ; 3 uses
  %i.rf = getelementptr i8, ptr %i.re, i64 -4
  %i.rg = load float, ptr %i.rf, align 4, !tbaa !26
  %i.rh = getelementptr inbounds nuw i8, ptr %i.re, i64 4
  %i.ri = load float, ptr %i.rh, align 4, !tbaa !26 ; 2 uses
  %i.rj = fadd nsz float %i.rg, %i.ri
  %i.rk = load float, ptr %i.re, align 4, !tbaa !26
  %i.rl = call nsz float @llvm.fmuladd.f32(float %i.rj, float 5.000000e-01, float %i.rk)
  %i.rm = fmul nsz float %i.rl, 5.000000e-01
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i.i.i
  store float %i.rm, ptr %i.rn, align 4, !tbaa !26
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.idx.i.i.i.1 = shl nuw nsw i64 %indvars.iv.next.i.i.i, 3
  %i.ro = getelementptr i8, ptr %i.nc, i64 %.idx.i.i.i.1 ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 4
  %i.rq = load float, ptr %i.rp, align 4, !tbaa !26
  %i.rr = fadd nsz float %i.ri, %i.rq
  %i.rs = load float, ptr %i.ro, align 4, !tbaa !26
  %i.rt = call nsz float @llvm.fmuladd.f32(float %i.rr, float 5.000000e-01, float %i.rs)
  %i.ru = fmul nsz float %i.rt, 5.000000e-01
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.i
  store float %i.ru, ptr %i.rv, align 4, !tbaa !26
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %exitcond.not.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.1, 864
  br i1 %exitcond.not.i.i.i.1, label %.unr-lcssa, label %scalar.ph348, !llvm.loop !140

._crit_edge60.i.i.i.i:                            ; preds = %celt_autocorr.exit.i.i.i
  %i.rw = fneg nsz float %i.qv
  %i.rx = fdiv nsz float %i.rw, %i.ql             ; 5 uses
  %i.ry = fneg nsz float %i.rx
  %i.rz = fmul nsz float %i.rx, %i.ry
  %i.sa = call nsz float @llvm.fmuladd.f32(float %i.rz, float %i.ql, float %i.ql) ; 3 uses
  %i.sb = fmul nsz float %i.ql, 1.000000e-03      ; 3 uses
  %i.sc = fcmp nsz uge float %i.sa, %i.sb
  %i.sd = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.rx, i64 0
  br i1 %i.sc, label %._crit_edge60.1.i.i.i.i, label %vector.ph320

._crit_edge60.1.i.i.i.i:                          ; preds = %._crit_edge60.i.i.i.i
  %i.se = fmul nsz float %i.qv, %i.rx
  %i.sf = fadd nsz float %i.qy, %i.se
  %i.sg = fneg nsz float %i.sf
  %i.sh = fdiv nsz float %i.sg, %i.sa             ; 6 uses
  %i.si = fneg nsz float %i.sh
  %i.sj = fmul nsz float %i.sh, %i.si
  %i.sk = insertelement <2 x float> poison, float %i.sh, i64 0
  %i.sl = insertelement <2 x float> %i.sk, float %i.sj, i64 1
  %i.sm = insertelement <2 x float> poison, float %i.rx, i64 0
  %i.sn = insertelement <2 x float> %i.sm, float %i.sa, i64 1 ; 2 uses
  %i.so = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sl, <2 x float> %i.sn, <2 x float> %i.sn) ; 3 uses
  %i.sp = extractelement <2 x float> %i.so, i64 1 ; 4 uses
  %i.sq = fcmp nsz uge float %i.sp, %i.sb
  %i.sr = insertelement <2 x float> %i.so, float %i.sh, i64 1 ; 3 uses
  %i.ss = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.sh, i64 0
  br i1 %i.sq, label %._crit_edge60.2.i.i.i.i, label %vector.ph320

._crit_edge60.2.i.i.i.i:                          ; preds = %._crit_edge60.1.i.i.i.i
  %i.st = extractelement <2 x float> %i.so, i64 0
  %i.su = fmul nsz float %i.qy, %i.st
  %i.sv = call nsz float @llvm.fmuladd.f32(float %i.sh, float %i.qv, float %i.su)
  %i.sw = extractelement <2 x float> %i.rc, i64 0
  %i.sx = fadd nsz float %i.sw, %i.sv
  %i.sy = fneg nsz float %i.sx
  %i.sz = fdiv nsz float %i.sy, %i.sp             ; 5 uses
  %i.ta = insertelement <2 x float> poison, float %i.sz, i64 0
  %i.tb = shufflevector <2 x float> %i.ta, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tc = shufflevector <2 x float> %i.sr, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.td = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tb, <2 x float> %i.tc, <2 x float> %i.sr) ; 5 uses
  %i.te = fneg nsz float %i.sz
  %i.tf = fmul nsz float %i.sz, %i.te
  %i.tg = call nsz float @llvm.fmuladd.f32(float %i.tf, float %i.sp, float %i.sp) ; 2 uses
  %i.th = fcmp nsz uge float %i.tg, %i.sb
  %i.ti = shufflevector <2 x float> %i.td, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.tj = insertelement <2 x float> %i.ti, float %i.sz, i64 1 ; 3 uses
  br i1 %i.th, label %._crit_edge60.3.i.i.i.i, label %vector.ph320

._crit_edge60.3.i.i.i.i:                          ; preds = %._crit_edge60.2.i.i.i.i
  %foldExtExtBinop = fmul nsz <2 x float> %i.rc, %i.td
  %i.tk = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.tl = extractelement <2 x float> %i.td, i64 1
  %i.tm = call nsz float @llvm.fmuladd.f32(float %i.tl, float %i.qy, float %i.tk)
  %i.tn = call nsz float @llvm.fmuladd.f32(float %i.sz, float %i.qv, float %i.tm)
  %i.to = extractelement <2 x float> %i.rc, i64 1
  %i.tp = fadd nsz float %i.to, %i.tn
  %i.tq = fneg nsz float %i.tp
  %i.tr = fdiv nsz float %i.tq, %i.tg             ; 2 uses
  %i.ts = insertelement <2 x float> poison, float %i.tr, i64 0
  %i.tt = shufflevector <2 x float> %i.ts, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.tu = shufflevector <2 x float> %i.tj, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.tv = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tt, <2 x float> %i.tu, <2 x float> %i.td)
  %i.tw = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tt, <2 x float> %i.ti, <2 x float> %i.tj)
  %i.tx = fmul nsz float %i.tr, f0x3F27F62A
  br label %vector.ph320

vector.ph320:                                     ; preds = %celt_autocorr.exit.i.i.i, %._crit_edge60.i.i.i.i, %._crit_edge60.1.i.i.i.i, %._crit_edge60.2.i.i.i.i, %._crit_edge60.3.i.i.i.i
  %.sroa.21.0.i.i.i = phi float [ %i.tx, %._crit_edge60.3.i.i.i.i ], [ 0.000000e+00, %._crit_edge60.2.i.i.i.i ], [ 0.000000e+00, %._crit_edge60.1.i.i.i.i ], [ 0.000000e+00, %._crit_edge60.i.i.i.i ], [ 0.000000e+00, %celt_autocorr.exit.i.i.i ] ; 2 uses
  %i.ty = phi <2 x float> [ %i.tv, %._crit_edge60.3.i.i.i.i ], [ %i.td, %._crit_edge60.2.i.i.i.i ], [ %i.sr, %._crit_edge60.1.i.i.i.i ], [ %i.sd, %._crit_edge60.i.i.i.i ], [ zeroinitializer, %celt_autocorr.exit.i.i.i ]
  %i.tz = phi <2 x float> [ %i.tw, %._crit_edge60.3.i.i.i.i ], [ %i.tj, %._crit_edge60.2.i.i.i.i ], [ %i.ss, %._crit_edge60.1.i.i.i.i ], [ zeroinitializer, %._crit_edge60.i.i.i.i ], [ zeroinitializer, %celt_autocorr.exit.i.i.i ]
  %i.ua = fmul nsz float %.sroa.21.0.i.i.i, 8.000000e-01
  %i.ub = fmul nsz <2 x float> %i.tz, <float f0x3F4F5C28, float f0x3F3A9FBD> ; 2 uses
  %i.uc = extractelement <2 x float> %i.ub, i64 1
  %i.ud = call nsz float @llvm.fmuladd.f32(float %i.uc, float 8.000000e-01, float %.sroa.21.0.i.i.i)
  %i.ue = fmul nsz <2 x float> %i.ty, <float f0x3F666666, float f0x3F4F5C28> ; 2 uses
  %i.uf = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ue, <2 x float> splat (float 8.000000e-01), <2 x float> %i.ub) ; 2 uses
  %i.ug = extractelement <2 x float> %i.ue, i64 0
  %i.uh = fadd nsz float %i.ug, 8.000000e-01
  %broadcast.splatinsert321 = insertelement <4 x float> poison, float %i.uh, i64 0
  %broadcast.splat322 = shufflevector <4 x float> %broadcast.splatinsert321, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat324 = shufflevector <2 x float> %i.uf, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat326 = shufflevector <2 x float> %i.uf, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert327 = insertelement <4 x float> poison, float %i.ud, i64 0
  %broadcast.splat328 = shufflevector <4 x float> %broadcast.splatinsert327, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert329 = insertelement <4 x float> poison, float %i.ua, i64 0
  %broadcast.splat330 = shufflevector <4 x float> %broadcast.splatinsert329, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body331

vector.body331:                                   ; preds = %vector.body331, %vector.ph320
  %index332 = phi i64 [ 0, %vector.ph320 ], [ %index.next338, %vector.body331 ] ; 2 uses
  %vector.recur = phi <4 x float> [ <float poison, float poison, float poison, float 0.000000e+00>, %vector.ph320 ], [ %i.um, %vector.body331 ]
  %vector.recur333 = phi <4 x float> [ <float poison, float poison, float poison, float 0.000000e+00>, %vector.ph320 ], [ %i.ul, %vector.body331 ]
  %vector.recur334 = phi <4 x float> [ <float poison, float poison, float poison, float 0.000000e+00>, %vector.ph320 ], [ %i.uk, %vector.body331 ]
  %vector.recur335 = phi <4 x float> [ <float poison, float poison, float poison, float 0.000000e+00>, %vector.ph320 ], [ %i.uj, %vector.body331 ]
  %vector.recur336 = phi <4 x float> [ <float poison, float poison, float poison, float 0.000000e+00>, %vector.ph320 ], [ %wide.load337, %vector.body331 ]
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %index332 ; 2 uses
  %wide.load337 = load <4 x float>, ptr %i.ui, align 16, !tbaa !26 ; 3 uses
  %i.uj = shufflevector <4 x float> %vector.recur336, <4 x float> %wide.load337, <4 x i32> <i32 3, i32 4, i32 5, i32 6> ; 3 uses
  %i.uk = shufflevector <4 x float> %vector.recur335, <4 x float> %i.uj, <4 x i32> <i32 3, i32 4, i32 5, i32 6> ; 3 uses
  %i.ul = shufflevector <4 x float> %vector.recur334, <4 x float> %i.uk, <4 x i32> <i32 3, i32 4, i32 5, i32 6> ; 3 uses
  %i.um = shufflevector <4 x float> %vector.recur333, <4 x float> %i.ul, <4 x i32> <i32 3, i32 4, i32 5, i32 6> ; 3 uses
  %i.un = shufflevector <4 x float> %vector.recur, <4 x float> %i.um, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.uo = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat322, <4 x float> %i.uj, <4 x float> %wide.load337)
  %i.up = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat324, <4 x float> %i.uk, <4 x float> %i.uo)
  %i.uq = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat326, <4 x float> %i.ul, <4 x float> %i.up)
  %i.ur = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat328, <4 x float> %i.um, <4 x float> %i.uq)
  %i.us = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat330, <4 x float> %i.un, <4 x float> %i.ur)
  store <4 x float> %i.us, ptr %i.ui, align 16, !tbaa !26
  %index.next338 = add nuw i64 %index332, 4       ; 2 uses
  %i.ut = icmp eq i64 %index.next338, 864
  br i1 %i.ut, label %pitch_downsample.exit.i.i, label %vector.body331, !llvm.loop !141

pitch_downsample.exit.i.i:                        ; preds = %vector.body331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #11
  %wide.vec313 = load <8 x float>, ptr %i.bi, align 16, !tbaa !26
  %strided.vec314 = shufflevector <8 x float> %wide.vec313, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec315 = load <8 x float>, ptr %i.db, align 16, !tbaa !26
  %strided.vec316 = shufflevector <8 x float> %wide.vec315, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  store <4 x float> %strided.vec314, ptr %i.m, align 16, !tbaa !26
  store <4 x float> %strided.vec316, ptr %i.dc, align 16, !tbaa !26
  %wide.vec313.1 = load <8 x float>, ptr %i.dd, align 16, !tbaa !26
  %strided.vec314.1 = shufflevector <8 x float> %wide.vec313.1, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec315.1 = load <8 x float>, ptr %i.de, align 16, !tbaa !26
  %strided.vec316.1 = shufflevector <8 x float> %wide.vec315.1, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  store <4 x float> %strided.vec314.1, ptr %i.df, align 16, !tbaa !26
  store <4 x float> %strided.vec316.1, ptr %i.dg, align 16, !tbaa !26
  %wide.vec313.2 = load <8 x float>, ptr %i.dh, align 16, !tbaa !26
  %strided.vec314.2 = shufflevector <8 x float> %wide.vec313.2, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec315.2 = load <8 x float>, ptr %i.di, align 16, !tbaa !26
  %strided.vec316.2 = shufflevector <8 x float> %wide.vec315.2, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  store <4 x float> %strided.vec314.2, ptr %i.dj, align 16, !tbaa !26
  store <4 x float> %strided.vec316.2, ptr %i.dk, align 16, !tbaa !26
  %wide.vec313.3 = load <8 x float>, ptr %i.dl, align 16, !tbaa !26
  %strided.vec314.3 = shufflevector <8 x float> %wide.vec313.3, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec315.3 = load <8 x float>, ptr %i.dm, align 16, !tbaa !26
  %strided.vec316.3 = shufflevector <8 x float> %wide.vec315.3, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  store <4 x float> %strided.vec314.3, ptr %i.dn, align 16, !tbaa !26
  store <4 x float> %strided.vec316.3, ptr %i.do, align 16, !tbaa !26
  %wide.vec313.4 = load <8 x float>, ptr %i.dp, align 16, !tbaa !26
  %strided.vec314.4 = shufflevector <8 x float> %wide.vec313.4, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec315.4 = load <8 x float>, ptr %i.dq, align 16, !tbaa !26
  %strided.vec316.4 = shufflevector <8 x float> %wide.vec315.4, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  store <4 x float> %strided.vec314.4, ptr %i.dr, align 16, !tbaa !26
  store <4 x float> %strided.vec316.4, ptr %i.ds, align 16, !tbaa !26
  %wide.vec313.5 = load <8 x float>, ptr %i.dt, align 16, !tbaa !26
  %strided.vec314.5 = shufflevector <8 x float> %wide.vec313.5, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec315.5 = load <8 x float>, ptr %i.du, align 16, !tbaa !26
  %strided.vec316.5 = shufflevector <8 x float> %wide.vec315.5, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  store <4 x float> %strided.vec314.5, ptr %i.dv, align 16, !tbaa !26
  store <4 x float> %strided.vec316.5, ptr %i.dw, align 16, !tbaa !26
  %wide.vec313.6 = load <8 x float>, ptr %i.dx, align 16, !tbaa !26
  %strided.vec314.6 = shufflevector <8 x float> %wide.vec313.6, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec315.6 = load <8 x float>, ptr %i.dy, align 16, !tbaa !26
  %strided.vec316.6 = shufflevector <8 x float> %wide.vec315.6, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  store <4 x float> %strided.vec314.6, ptr %i.dz, align 16, !tbaa !26
  store <4 x float> %strided.vec316.6, ptr %i.ea, align 16, !tbaa !26
  %wide.vec313.7 = load <8 x float>, ptr %i.eb, align 16, !tbaa !26
  %strided.vec314.7 = shufflevector <8 x float> %wide.vec313.7, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec315.7 = load <8 x float>, ptr %i.ec, align 16, !tbaa !26
  %strided.vec316.7 = shufflevector <8 x float> %wide.vec315.7, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  store <4 x float> %strided.vec314.7, ptr %i.ed, align 16, !tbaa !26
  store <4 x float> %strided.vec316.7, ptr %i.ee, align 16, !tbaa !26
  %wide.vec313.8 = load <8 x float>, ptr %i.ef, align 16, !tbaa !26
  %strided.vec314.8 = shufflevector <8 x float> %wide.vec313.8, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec315.8 = load <8 x float>, ptr %i.eg, align 16, !tbaa !26
  %strided.vec316.8 = shufflevector <8 x float> %wide.vec315.8, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  store <4 x float> %strided.vec314.8, ptr %i.eh, align 16, !tbaa !26
  store <4 x float> %strided.vec316.8, ptr %i.ei, align 16, !tbaa !26
  %wide.vec313.9 = load <8 x float>, ptr %i.ej, align 16, !tbaa !26
  %strided.vec314.9 = shufflevector <8 x float> %wide.vec313.9, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec315.9 = load <8 x float>, ptr %i.ek, align 16, !tbaa !26
  %strided.vec316.9 = shufflevector <8 x float> %wide.vec315.9, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  store <4 x float> %strided.vec314.9, ptr %i.el, align 16, !tbaa !26
  store <4 x float> %strided.vec316.9, ptr %i.em, align 16, !tbaa !26
  %wide.vec313.10 = load <8 x float>, ptr %i.en, align 16, !tbaa !26
  %strided.vec314.10 = shufflevector <8 x float> %wide.vec313.10, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec315.10 = load <8 x float>, ptr %i.eo, align 16, !tbaa !26
  %strided.vec316.10 = shufflevector <8 x float> %wide.vec315.10, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  store <4 x float> %strided.vec314.10, ptr %i.ep, align 16, !tbaa !26
  store <4 x float> %strided.vec316.10, ptr %i.eq, align 16, !tbaa !26
  %wide.vec313.11 = load <8 x float>, ptr %i.er, align 16, !tbaa !26
  %strided.vec314.11 = shufflevector <8 x float> %wide.vec313.11, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec315.11 = load <8 x float>, ptr %i.es, align 16, !tbaa !26
  %strided.vec316.11 = shufflevector <8 x float> %wide.vec315.11, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  store <4 x float> %strided.vec314.11, ptr %i.et, align 16, !tbaa !26
  store <4 x float> %strided.vec316.11, ptr %i.eu, align 16, !tbaa !26
  %wide.vec313.12 = load <8 x float>, ptr %i.ev, align 16, !tbaa !26
  %strided.vec314.12 = shufflevector <8 x float> %wide.vec313.12, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec315.12 = load <8 x float>, ptr %i.ew, align 16, !tbaa !26
end_hunk_1
