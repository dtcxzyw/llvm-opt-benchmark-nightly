Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_arnndn?download=true
inline.NumInlined: 49
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 60
begin_hunk_0_@rnnoise_model_free:bb.a
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
  %12 = mul nsw i64 %i.cz, 20512                  ; 3 uses
  %scevgep341 = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %scevgep342 = getelementptr inbounds nuw i8, ptr %i.t, i64 3456
  %i.da = getelementptr inbounds nuw i8, ptr %i.t, i64 1568
  %i.db = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %i.t, i64 1600
  %i.dd = getelementptr inbounds nuw i8, ptr %i.t, i64 1632
  %i.de = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.df = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.dg = getelementptr inbounds nuw i8, ptr %i.t, i64 1664
  %i.dh = getelementptr inbounds nuw i8, ptr %i.t, i64 1696
  %i.di = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.dk = getelementptr inbounds nuw i8, ptr %i.t, i64 1728
  %i.dl = getelementptr inbounds nuw i8, ptr %i.t, i64 1760
  %i.dm = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.dn = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  %i.do = getelementptr inbounds nuw i8, ptr %i.t, i64 1792
  %i.dp = getelementptr inbounds nuw i8, ptr %i.t, i64 1824
  %i.dq = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %i.dr = getelementptr inbounds nuw i8, ptr %i.m, i64 144
  %i.ds = getelementptr inbounds nuw i8, ptr %i.t, i64 1856
  %i.dt = getelementptr inbounds nuw i8, ptr %i.t, i64 1888
  %i.du = getelementptr inbounds nuw i8, ptr %i.m, i64 160
  %i.dv = getelementptr inbounds nuw i8, ptr %i.m, i64 176
  %i.dw = getelementptr inbounds nuw i8, ptr %i.t, i64 1920
  %i.dx = getelementptr inbounds nuw i8, ptr %i.t, i64 1952
  %i.dy = getelementptr inbounds nuw i8, ptr %i.m, i64 192
  %i.dz = getelementptr inbounds nuw i8, ptr %i.m, i64 208
  %i.ea = getelementptr inbounds nuw i8, ptr %i.t, i64 1984
  %i.eb = getelementptr inbounds nuw i8, ptr %i.t, i64 2016
  %i.ec = getelementptr inbounds nuw i8, ptr %i.m, i64 224
  %i.ed = getelementptr inbounds nuw i8, ptr %i.m, i64 240
  %i.ee = getelementptr inbounds nuw i8, ptr %i.t, i64 2048
  %i.ef = getelementptr inbounds nuw i8, ptr %i.t, i64 2080
  %i.eg = getelementptr inbounds nuw i8, ptr %i.m, i64 256
  %i.eh = getelementptr inbounds nuw i8, ptr %i.m, i64 272
  %i.ei = getelementptr inbounds nuw i8, ptr %i.t, i64 2112
  %i.ej = getelementptr inbounds nuw i8, ptr %i.t, i64 2144
  %i.ek = getelementptr inbounds nuw i8, ptr %i.m, i64 288
  %i.el = getelementptr inbounds nuw i8, ptr %i.m, i64 304
  %i.em = getelementptr inbounds nuw i8, ptr %i.t, i64 2176
  %i.en = getelementptr inbounds nuw i8, ptr %i.t, i64 2208
  %i.eo = getelementptr inbounds nuw i8, ptr %i.m, i64 320
  %i.ep = getelementptr inbounds nuw i8, ptr %i.m, i64 336
  %i.eq = getelementptr inbounds nuw i8, ptr %i.t, i64 2240
  %i.er = getelementptr inbounds nuw i8, ptr %i.t, i64 2272
  %i.es = getelementptr inbounds nuw i8, ptr %i.m, i64 352
  %i.et = getelementptr inbounds nuw i8, ptr %i.m, i64 368
  %i.eu = getelementptr inbounds nuw i8, ptr %i.t, i64 2304
  %i.ev = getelementptr inbounds nuw i8, ptr %i.t, i64 2336
  %i.ew = getelementptr inbounds nuw i8, ptr %i.m, i64 384
  %i.ex = getelementptr inbounds nuw i8, ptr %i.m, i64 400
  %i.ey = getelementptr inbounds nuw i8, ptr %i.t, i64 2368
  %i.ez = getelementptr inbounds nuw i8, ptr %i.t, i64 2400
  %i.fa = getelementptr inbounds nuw i8, ptr %i.m, i64 416
  %i.fb = getelementptr inbounds nuw i8, ptr %i.m, i64 432
  %i.fc = getelementptr inbounds nuw i8, ptr %i.t, i64 2432
  %i.fd = getelementptr inbounds nuw i8, ptr %i.t, i64 2464
  %i.fe = getelementptr inbounds nuw i8, ptr %i.m, i64 448
  %i.ff = getelementptr inbounds nuw i8, ptr %i.m, i64 464
  %i.fg = getelementptr inbounds nuw i8, ptr %i.t, i64 2496
  %i.fh = getelementptr inbounds nuw i8, ptr %i.t, i64 2528
  %i.fi = getelementptr inbounds nuw i8, ptr %i.m, i64 480
  %i.fj = getelementptr inbounds nuw i8, ptr %i.m, i64 496
  %i.fk = getelementptr inbounds nuw i8, ptr %i.t, i64 2560
  %i.fl = getelementptr inbounds nuw i8, ptr %i.t, i64 2592
  %i.fm = getelementptr inbounds nuw i8, ptr %i.m, i64 512
  %i.fn = getelementptr inbounds nuw i8, ptr %i.m, i64 528
  %i.fo = getelementptr inbounds nuw i8, ptr %i.t, i64 2624
  %i.fp = getelementptr inbounds nuw i8, ptr %i.t, i64 2656
  %i.fq = getelementptr inbounds nuw i8, ptr %i.m, i64 544
  %i.fr = getelementptr inbounds nuw i8, ptr %i.m, i64 560
  %i.fs = getelementptr inbounds nuw i8, ptr %i.t, i64 2688
  %i.ft = getelementptr inbounds nuw i8, ptr %i.t, i64 2720
  %i.fu = getelementptr inbounds nuw i8, ptr %i.m, i64 576
  %i.fv = getelementptr inbounds nuw i8, ptr %i.m, i64 592
  %i.fw = getelementptr inbounds nuw i8, ptr %i.t, i64 2752
  %i.fx = getelementptr inbounds nuw i8, ptr %i.t, i64 2784
  %i.fy = getelementptr inbounds nuw i8, ptr %i.m, i64 608
  %i.fz = getelementptr inbounds nuw i8, ptr %i.m, i64 624
  %i.ga = getelementptr inbounds nuw i8, ptr %i.t, i64 2816
  %i.gb = getelementptr inbounds nuw i8, ptr %i.t, i64 2848
  %i.gc = getelementptr inbounds nuw i8, ptr %i.m, i64 640
  %i.gd = getelementptr inbounds nuw i8, ptr %i.m, i64 656
  %i.ge = getelementptr inbounds nuw i8, ptr %i.t, i64 2880
  %i.gf = getelementptr inbounds nuw i8, ptr %i.t, i64 2912
  %i.gg = getelementptr inbounds nuw i8, ptr %i.m, i64 672
  %i.gh = getelementptr inbounds nuw i8, ptr %i.m, i64 688
  %i.gi = getelementptr inbounds nuw i8, ptr %i.t, i64 2944
  %i.gj = getelementptr inbounds nuw i8, ptr %i.t, i64 2976
  %i.gk = getelementptr inbounds nuw i8, ptr %i.m, i64 704
  %i.gl = getelementptr inbounds nuw i8, ptr %i.m, i64 720
  %i.gm = getelementptr inbounds nuw i8, ptr %i.t, i64 3008
  %i.gn = getelementptr inbounds nuw i8, ptr %i.t, i64 3040
  %i.go = getelementptr inbounds nuw i8, ptr %i.m, i64 736
  %i.gp = getelementptr inbounds nuw i8, ptr %i.m, i64 752
  %i.gq = getelementptr inbounds nuw i8, ptr %i.t, i64 3072
  %i.gr = getelementptr inbounds nuw i8, ptr %i.t, i64 3104
  %i.gs = getelementptr inbounds nuw i8, ptr %i.m, i64 768
  %i.gt = getelementptr inbounds nuw i8, ptr %i.m, i64 784
  %i.gu = getelementptr inbounds nuw i8, ptr %i.t, i64 3136
  %i.gv = getelementptr inbounds nuw i8, ptr %i.t, i64 3168
  %i.gw = getelementptr inbounds nuw i8, ptr %i.m, i64 800
  %i.gx = getelementptr inbounds nuw i8, ptr %i.m, i64 816
  %i.gy = getelementptr inbounds nuw i8, ptr %i.t, i64 3200
  %i.gz = getelementptr inbounds nuw i8, ptr %i.t, i64 3232
  %i.ha = getelementptr inbounds nuw i8, ptr %i.m, i64 832
  %i.hb = getelementptr inbounds nuw i8, ptr %i.m, i64 848
  %i.hc = getelementptr inbounds nuw i8, ptr %i.t, i64 3264
  %i.hd = getelementptr inbounds nuw i8, ptr %i.t, i64 3296
  %i.he = getelementptr inbounds nuw i8, ptr %i.m, i64 864
  %i.hf = getelementptr inbounds nuw i8, ptr %i.m, i64 880
  %i.hg = getelementptr inbounds nuw i8, ptr %i.t, i64 3328
  %i.hh = getelementptr inbounds nuw i8, ptr %i.t, i64 3360
  %i.hi = getelementptr inbounds nuw i8, ptr %i.m, i64 896
  %i.hj = getelementptr inbounds nuw i8, ptr %i.m, i64 912
  %i.hk = getelementptr inbounds nuw i8, ptr %i.t, i64 3392
  %i.hl = getelementptr inbounds nuw i8, ptr %i.m, i64 928
  %i.hm = getelementptr inbounds nuw i8, ptr %i.t, i64 3400
  %i.hn = getelementptr inbounds nuw i8, ptr %i.m, i64 932
  %i.ho = getelementptr inbounds nuw i8, ptr %i.t, i64 3408
  %i.hp = getelementptr inbounds nuw i8, ptr %i.m, i64 936
  %i.hq = getelementptr inbounds nuw i8, ptr %i.t, i64 3416
  %i.hr = getelementptr inbounds nuw i8, ptr %i.m, i64 940
  %i.hs = getelementptr inbounds nuw i8, ptr %i.t, i64 3424
  %i.ht = getelementptr inbounds nuw i8, ptr %i.m, i64 944
  %i.hu = getelementptr inbounds nuw i8, ptr %i.t, i64 3432
  %i.hv = getelementptr inbounds nuw i8, ptr %i.m, i64 948
  %i.hw = getelementptr inbounds nuw i8, ptr %i.t, i64 3440
  %i.hx = getelementptr inbounds nuw i8, ptr %i.m, i64 952
  %i.hy = getelementptr inbounds nuw i8, ptr %i.t, i64 3448
  %i.hz = getelementptr inbounds nuw i8, ptr %i.m, i64 956
  %i.ia = getelementptr inbounds nuw i8, ptr %i.t, i64 3072
  %i.ib = getelementptr inbounds nuw i8, ptr %i.n, i64 1536
  %i.ic = getelementptr inbounds nuw i8, ptr %i.t, i64 3080
  %i.id = getelementptr inbounds nuw i8, ptr %i.n, i64 1540
  %i.ie = getelementptr inbounds nuw i8, ptr %i.t, i64 3088
  %i.if = getelementptr inbounds nuw i8, ptr %i.n, i64 1544
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.ig = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ih = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ii = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ij = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ik = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.il = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.im = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.in = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.io = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.ip = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.iq = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.ir = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.is = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.it = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.iu = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.iv = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %i.iw = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  %i.ix = getelementptr inbounds nuw i8, ptr %i.z, i64 80
  %i.iy = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.iz = getelementptr inbounds nuw i8, ptr %i.w, i64 80
  %i.ja = getelementptr inbounds nuw i8, ptr %i.x, i64 84
  %i.jb = getelementptr inbounds nuw i8, ptr %i.z, i64 84
  %i.jc = getelementptr inbounds nuw i8, ptr %i.c, i64 84
  %i.jd = getelementptr inbounds nuw i8, ptr %i.w, i64 84
  %i.je = getelementptr inbounds nuw i8, ptr %i.e, i64 1920
  %i.jf = getelementptr inbounds nuw i8, ptr %11, i64 3840
  %i.jg = getelementptr inbounds nuw i8, ptr %10, i64 3840 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.f, i64 1920
  %i.ji = getelementptr inbounds nuw i8, ptr %10, i64 3840 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.aa, i64 1920
  %i.jk = getelementptr inbounds nuw i8, ptr %10, i64 3840 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.jm = getelementptr inbounds nuw i8, ptr %4, i64 7672
  %i.jn = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.jo = getelementptr inbounds nuw i8, ptr %4, i64 7676
  %i.jp = getelementptr inbounds nuw i8, ptr %5, i64 7648
  %i.jq = getelementptr inbounds nuw i8, ptr %i.a, i64 3824
  %i.jr = getelementptr inbounds nuw i8, ptr %5, i64 7656
  %i.js = getelementptr inbounds nuw i8, ptr %i.a, i64 3828
  %i.jt = getelementptr inbounds nuw i8, ptr %5, i64 7664
  %i.ju = getelementptr inbounds nuw i8, ptr %i.a, i64 3832
  %i.jv = getelementptr inbounds nuw i8, ptr %5, i64 7672
  %i.jw = getelementptr inbounds nuw i8, ptr %i.a, i64 3836
  br label %bb.b

._crit_edge:                                      ; preds = %rnnoise_channel.exit, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph, %rnnoise_channel.exit
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %rnnoise_channel.exit ] ; 3 uses
  %indvars.iv = phi i64 [ %i.cz, %.lr.ph ], [ %indvars.iv.next, %rnnoise_channel.exit ] ; 4 uses
  %i.jx = mul i64 %indvar, 20512                  ; 2 uses
  %i.jy = mul i64 %indvar, 20512
  %i.jz = load ptr, ptr %i.av, align 8, !tbaa !33 ; 4 uses
  %i.ka = getelementptr inbounds [20512 x i8], ptr %i.jz, i64 %indvars.iv ; 29 uses
  %i.kb = load ptr, ptr %i.aw, align 8, !tbaa !178
  %i.kc = getelementptr inbounds [8 x i8], ptr %i.kb, i64 %indvars.iv
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !179 ; 7 uses
  %i.ke = load ptr, ptr %i.ax, align 8, !tbaa !178
  %i.kf = getelementptr inbounds [8 x i8], ptr %i.ke, i64 %indvars.iv
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !179 ; 3 uses
  %i.kh = load i32, ptr %i.ay, align 8, !tbaa !180
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #11
  store float 0.000000e+00, ptr %i.ab, align 4, !tbaa !26
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ka, i64 18392 ; 3 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ka, i64 18396 ; 3 uses
  %.promoted.i = load float, ptr %i.ki, align 4, !tbaa !26
  %.promoted102.i = load float, ptr %i.kj, align 4, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.kk = phi float [ %.promoted102.i, %bb.b ], [ %i.lc, %bb.c ]
  %i.kl = phi float [ %.promoted.i, %bb.b ], [ %i.la, %bb.c ]
  %indvars.iv.i.i = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.i.i.1, %bb.c ] ; 4 uses
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.kg, i64 %indvars.iv.i.i
  %i.kn = load float, ptr %i.km, align 4, !tbaa !26 ; 3 uses
  %i.ko = fadd nsz float %i.kl, %i.kn             ; 3 uses
  %i.kp = fmul nsz float %i.ko, 1.995990e+00
  %i.kq = call nsz float @llvm.fmuladd.f32(float %i.kn, float -2.000000e+00, float %i.kp)
  %i.kr = fadd nsz float %i.kk, %i.kq             ; 2 uses
  store float %i.kr, ptr %i.ki, align 4, !tbaa !26
  %i.ks = fmul nsz float %i.ko, f0x3F7EF9DB
  %i.kt = fsub nsz float %i.kn, %i.ks             ; 2 uses
  store float %i.kt, ptr %i.kj, align 4, !tbaa !26
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.i.i
  store float %i.ko, ptr %i.ku, align 8, !tbaa !26
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.kg, i64 %indvars.iv.next.i.i
  %i.kw = load float, ptr %i.kv, align 4, !tbaa !26 ; 3 uses
  %i.kx = fadd nsz float %i.kr, %i.kw             ; 3 uses
  %i.ky = fmul nsz float %i.kx, 1.995990e+00
  %i.kz = call nsz float @llvm.fmuladd.f32(float %i.kw, float -2.000000e+00, float %i.ky)
  %i.la = fadd nsz float %i.kt, %i.kz             ; 2 uses
  store float %i.la, ptr %i.ki, align 4, !tbaa !26
  %i.lb = fmul nsz float %i.kx, f0x3F7EF9DB
  %i.lc = fsub nsz float %i.kw, %i.lb             ; 2 uses
  store float %i.lc, ptr %i.kj, align 4, !tbaa !26
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.next.i.i
  store float %i.kx, ptr %i.ld, align 4, !tbaa !26
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, 480
  br i1 %exitcond.not.i.i.1, label %biquad.exit.i, label %bb.c, !llvm.loop !128

biquad.exit.i:                                    ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1920) %i.q, ptr noundef nonnull align 16 dereferenceable(1920) %i.ka, i64 1920, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1920) %i.az, ptr noundef nonnull readonly align 16 dereferenceable(1920) %i.v, i64 1920, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1920) %i.ka, ptr noundef nonnull readonly align 16 dereferenceable(1920) %i.v, i64 1920, i1 false)
  %i.le = load ptr, ptr %i.ba, align 16, !tbaa !25
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !181
  call void %i.lf(ptr noundef nonnull %i.q, ptr noundef nonnull %i.q, ptr noundef nonnull %i.bb, i32 noundef 960) #11, !inline_history !129
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  br label %vector.body362

vector.body362:                                   ; preds = %vector.body362, %biquad.exit.i
  %index363 = phi i64 [ 0, %biquad.exit.i ], [ %index.next368.1, %vector.body362 ] ; 5 uses
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index363 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  %wide.load364 = load <2 x float>, ptr %i.lg, align 16, !tbaa !26
  %wide.load365 = load <2 x float>, ptr %i.lh, align 8, !tbaa !26
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %index363
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %index363
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 16
  %interleaved.vec366 = shufflevector <2 x float> %wide.load364, <2 x float> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec366, ptr %i.li, align 16, !tbaa !26
  %interleaved.vec367 = shufflevector <2 x float> %wide.load365, <2 x float> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec367, ptr %i.lk, align 16, !tbaa !26
  %index.next368 = or disjoint i64 %index363, 4   ; 3 uses
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index.next368 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 8
  %wide.load364.1 = load <2 x float>, ptr %i.ll, align 16, !tbaa !26
  %wide.load365.1 = load <2 x float>, ptr %i.lm, align 8, !tbaa !26
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %index.next368
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %index.next368
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 16
  %interleaved.vec366.1 = shufflevector <2 x float> %wide.load364.1, <2 x float> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec366.1, ptr %i.ln, align 16, !tbaa !26
  %interleaved.vec367.1 = shufflevector <2 x float> %wide.load365.1, <2 x float> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec367.1, ptr %i.lp, align 16, !tbaa !26
  %index.next368.1 = add nuw nsw i64 %index363, 8 ; 2 uses
  %i.lq = icmp eq i64 %index.next368.1, 960
  br i1 %i.lq, label %forward_transform.exit.i.i.i, label %vector.body362, !llvm.loop !130

forward_transform.exit.i.i.i:                     ; preds = %vector.body362
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ka, i64 20488 ; 2 uses
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !182
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ka, i64 20472 ; 2 uses
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !67
  call void %i.ls(ptr noundef %i.lu, ptr noundef nonnull %9, ptr noundef nonnull %8, i64 noundef 8) #11, !inline_history !131
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(3848) %10, ptr noundef nonnull align 16 dereferenceable(3848) %9, i64 3848, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(88) %i.p, i8 0, i64 88, i1 false)
  br label %bb.d

..loopexit_crit_edge.i.i.i.i:                     ; preds = %bb.e
  store <2 x float> %i.mw, ptr %i.mf, align 4, !tbaa !26
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %bb.d, %..loopexit_crit_edge.i.i.i.i
  %exitcond45.not.i.i.i.i = icmp eq i64 %indvars.iv.next43.i.i.i.i, 21
  br i1 %exitcond45.not.i.i.i.i, label %frame_analysis.exit.i.i, label %bb.d, !llvm.loop !132

bb.d:                                             ; preds = %.loopexit.i.i.i.i, %forward_transform.exit.i.i.i
  %i.lv = phi i8 [ 0, %forward_transform.exit.i.i.i ], [ %i.lx, %.loopexit.i.i.i.i ]
  %indvars.iv42.i.i.i.i = phi i64 [ 0, %forward_transform.exit.i.i.i ], [ %indvars.iv.next43.i.i.i.i, %.loopexit.i.i.i.i ] ; 2 uses
  %indvars.iv.next43.i.i.i.i = add nuw nsw i64 %indvars.iv42.i.i.i.i, 1 ; 3 uses
  %i.lw = getelementptr inbounds nuw i8, ptr @eband5ms, i64 %indvars.iv.next43.i.i.i.i
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !183 ; 2 uses
  %i.ly = zext i8 %i.lx to i32
  %i.lz = zext i8 %i.lv to i32                    ; 2 uses
  %i.ma = sub nsw i32 %i.ly, %i.lz                ; 2 uses
  %i.mb = icmp sgt i32 %i.ma, 0
  br i1 %i.mb, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d
  %i.mc = shl nuw nsw i32 %i.ma, 2                ; 2 uses
  %i.md = uitofp nneg i32 %i.mc to float
  %i.me = shl nuw nsw i32 %i.lz, 2
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv42.i.i.i.i ; 2 uses
  %i.mg = load <2 x float>, ptr %i.mf, align 4, !tbaa !26
  %i.mh = zext nneg i32 %i.me to i64
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.mc to i64
  %invariant.gep.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.mh
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.i.i.i
  %indvars.iv.i21.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i22.i.i.i, %bb.e ] ; 3 uses
  %i.mi = phi <2 x float> [ %i.mg, %.lr.ph.i.i.i.i ], [ %i.mw, %bb.e ]
  %i.mj = trunc nuw nsw i64 %indvars.iv.i21.i.i.i to i32
  %i.mk = uitofp nneg i32 %i.mj to float
  %i.ml = fdiv nsz float %i.mk, %i.md             ; 2 uses
  %gep.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i.i.i, i64 %indvars.iv.i21.i.i.i ; 2 uses
  %i.mm = load float, ptr %gep.i.i.i.i, align 8, !tbaa !185 ; 2 uses
  %i.mn = fmul nsz float %i.mm, %i.mm
  %i.mo = getelementptr inbounds nuw i8, ptr %gep.i.i.i.i, i64 4
  %i.mp = load float, ptr %i.mo, align 4, !tbaa !186 ; 2 uses
  %i.mq = call nsz float @llvm.fmuladd.f32(float %i.mp, float %i.mp, float %i.mn)
  %i.mr = fsub nsz float 1.000000e+00, %i.ml
  %i.ms = insertelement <2 x float> poison, float %i.mr, i64 0
  %i.mt = insertelement <2 x float> %i.ms, float %i.ml, i64 1
  %i.mu = insertelement <2 x float> poison, float %i.mq, i64 0
  %i.mv = shufflevector <2 x float> %i.mu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mw = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mt, <2 x float> %i.mv, <2 x float> %i.mi) ; 2 uses
  %indvars.iv.next.i22.i.i.i = add nuw nsw i64 %indvars.iv.i21.i.i.i, 1 ; 2 uses
  %exitcond.not.i23.i.i.i = icmp eq i64 %indvars.iv.next.i22.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i23.i.i.i, label %..loopexit_crit_edge.i.i.i.i, label %bb.e, !llvm.loop !133

frame_analysis.exit.i.i:                          ; preds = %.loopexit.i.i.i.i
  %i.mx = load float, ptr %i.p, align 16, !tbaa !26
  %i.my = fmul nsz float %i.mx, 2.000000e+00
  store float %i.my, ptr %i.p, align 16, !tbaa !26
  %i.mz = load float, ptr %i.bc, align 4, !tbaa !26
  %i.na = fmul nsz float %i.mz, 2.000000e+00
  store float %i.na, ptr %i.bc, align 4, !tbaa !26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(88) %i.w, ptr noundef nonnull align 16 dereferenceable(88) %i.p, i64 88, i1 false), !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #11
  %i.nb = getelementptr inbounds nuw i8, ptr %i.ka, i64 4560 ; 6 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.ka, i64 6480
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(4992) %i.nb, ptr noundef nonnull align 16 dereferenceable(4992) %i.nc, i64 4992, i1 false)
  %i.nd = getelementptr inbounds nuw i8, ptr %i.ka, i64 9552
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1920) %i.nd, ptr noundef nonnull readonly align 16 dereferenceable(1920) %i.v, i64 1920, i1 false)
  %13 = getelementptr i8, ptr %i.jz, i64 %12
  %14 = getelementptr i8, ptr %13, i64 4564
  %scevgep343.a = getelementptr i8, ptr %14, i64 %i.jx
  %i.ne = getelementptr i8, ptr %i.jz, i64 %12
  %i.nf = getelementptr i8, ptr %i.ne, i64 11472
  %scevgep344 = getelementptr i8, ptr %i.nf, i64 %i.jx
  %bound0345 = icmp ult ptr %scevgep341, %scevgep344
  %bound1346 = icmp ult ptr %scevgep343.a, %scevgep342
  %found.conflict347 = and i1 %bound0345, %bound1346
  br i1 %found.conflict347, label %scalar.ph348.prol, label %vector.body350

scalar.ph348.prol:                                ; preds = %vector.body350, %frame_analysis.exit.i.i
  %indvars.iv.i.i.i.ph.sroa.phi = phi ptr [ %indvars.iv.i.i.i.ph.sroa.gep, %frame_analysis.exit.i.i ], [ %indvars.iv.i.i.i.ph.sroa.gep400, %vector.body350 ]
  %indvars.iv.i.i.i.ph = phi i64 [ 1, %frame_analysis.exit.i.i ], [ 861, %vector.body350 ] ; 2 uses
  %.idx.i.i.i.prol = shl nuw nsw i64 %indvars.iv.i.i.i.ph, 3
  %i.ng = getelementptr i8, ptr %i.nb, i64 %.idx.i.i.i.prol ; 3 uses
  %i.nh = getelementptr i8, ptr %i.ng, i64 -4
  %i.ni = load float, ptr %i.nh, align 4, !tbaa !26
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ng, i64 4
  %i.nk = load float, ptr %i.nj, align 4, !tbaa !26
  %i.nl = fadd nsz float %i.ni, %i.nk
  %i.nm = load float, ptr %i.ng, align 4, !tbaa !26
  %i.nn = call nsz float @llvm.fmuladd.f32(float %i.nl, float 5.000000e-01, float %i.nm)
  %i.no = fmul nsz float %i.nn, 5.000000e-01
  store float %i.no, ptr %indvars.iv.i.i.i.ph.sroa.phi, align 4, !tbaa !26
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.ph, 1
  br label %scalar.ph348

vector.body350:                                   ; preds = %frame_analysis.exit.i.i, %vector.body350
  %index351 = phi i64 [ %index.next357, %vector.body350 ], [ 0, %frame_analysis.exit.i.i ] ; 2 uses
  %i.np = or disjoint i64 %index351, 1            ; 2 uses
  %i.nq = shl nuw nsw i64 %i.np, 3
  %i.nr = getelementptr i8, ptr %i.nb, i64 %i.nq  ; 2 uses
  %i.ns = getelementptr i8, ptr %i.nr, i64 -4
  %wide.vec352 = load <8 x float>, ptr %i.ns, align 4, !tbaa !26, !alias.scope !187
  %strided.vec353 = shufflevector <8 x float> %wide.vec352, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec354 = load <8 x float>, ptr %i.nr, align 4, !tbaa !26, !alias.scope !187 ; 2 uses
  %strided.vec355 = shufflevector <8 x float> %wide.vec354, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec356 = shufflevector <8 x float> %wide.vec354, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.nt = fadd nsz <4 x float> %strided.vec353, %strided.vec356
  %i.nu = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.nt, <4 x float> splat (float 5.000000e-01), <4 x float> %strided.vec355)
  %i.nv = fmul nsz <4 x float> %i.nu, splat (float 5.000000e-01)
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.np
  store <4 x float> %i.nv, ptr %i.nw, align 4, !tbaa !26, !alias.scope !188, !noalias !187
  %index.next357 = add nuw i64 %index351, 4       ; 2 uses
  %i.nx = icmp eq i64 %index.next357, 860
  br i1 %i.nx, label %scalar.ph348.prol, label %vector.body350, !llvm.loop !137

.unr-lcssa:                                       ; preds = %scalar.ph348
  %i.ny = getelementptr inbounds nuw i8, ptr %i.ka, i64 4564
  %i.nz = load float, ptr %i.ny, align 4, !tbaa !26
  %i.oa = load float, ptr %i.nb, align 16, !tbaa !26
  %i.ob = call nsz float @llvm.fmuladd.f32(float %i.nz, float 5.000000e-01, float %i.oa)
  %i.oc = fmul nsz float %i.ob, 5.000000e-01      ; 2 uses
  store float %i.oc, ptr %i.t, align 16, !tbaa !26
  %i.od = load <2 x float>, ptr %i.be, align 4, !tbaa !26
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.unr-lcssa
  %.0124.i.i.i.i.i.i = phi ptr [ %i.t, %.unr-lcssa ], [ %i.oh, %bb.f ] ; 2 uses
  %.0109123.i.i.i.i.i.i = phi ptr [ %i.bd, %.unr-lcssa ], [ %i.oi, %bb.f ] ; 3 uses
  %.0112122.i.i.i.i.i.i = phi float [ %i.oc, %.unr-lcssa ], [ %i.ol, %bb.f ]
  %.0115120.i.i.i.i.i.i = phi i32 [ 0, %.unr-lcssa ], [ %i.pa, %bb.f ] ; 2 uses
  %i.oe = phi <4 x float> [ zeroinitializer, %.unr-lcssa ], [ %i.oz, %bb.f ]
  %i.of = phi <2 x float> [ %i.od, %.unr-lcssa ], [ %i.pc, %bb.f ]
  %i.og = getelementptr inbounds nuw i8, ptr %.0109123.i.i.i.i.i.i, i64 4
  %i.oh = getelementptr inbounds nuw i8, ptr %.0124.i.i.i.i.i.i, i64 16
  %i.oi = getelementptr inbounds nuw i8, ptr %.0109123.i.i.i.i.i.i, i64 16
  %i.oj = load <4 x float>, ptr %.0124.i.i.i.i.i.i, align 4, !tbaa !26 ; 4 uses
  %i.ok = load <4 x float>, ptr %.0109123.i.i.i.i.i.i, align 4, !tbaa !26 ; 5 uses
  %i.ol = load float, ptr %i.og, align 4, !tbaa !26
  %i.om = shufflevector <4 x float> %i.oj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.on = shufflevector <2 x float> %i.of, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.oo = shufflevector <4 x float> %i.on, <4 x float> %i.ok, <4 x i32> <i32 poison, i32 0, i32 1, i32 4>
  %i.op = insertelement <4 x float> %i.oo, float %.0112122.i.i.i.i.i.i, i64 0
  %i.oq = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.om, <4 x float> %i.op, <4 x float> %i.oe)
  %i.or = shufflevector <4 x float> %i.oj, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.os = shufflevector <4 x float> %i.ok, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.ot = shufflevector <4 x float> %i.on, <4 x float> %i.os, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.ou = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.or, <4 x float> %i.ot, <4 x float> %i.oq)
  %i.ov = shufflevector <4 x float> %i.oj, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ow = shufflevector <4 x float> %i.ot, <4 x float> %i.ok, <4 x i32> <i32 1, i32 2, i32 3, i32 6>
  %i.ox = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ov, <4 x float> %i.ow, <4 x float> %i.ou)
  %i.oy = shufflevector <4 x float> %i.oj, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.oz = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.oy, <4 x float> %i.ok, <4 x float> %i.ox) ; 3 uses
  %i.pa = add nuw nsw i32 %.0115120.i.i.i.i.i.i, 4
  %i.pb = icmp samesign ult i32 %.0115120.i.i.i.i.i.i, 853
  %i.pc = shufflevector <4 x float> %i.ok, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  br i1 %i.pb, label %bb.f, label %.lr.ph48.i.i.i.i.i, !llvm.loop !138

.lr.ph48.i.i.i.i.i:                               ; preds = %bb.f, %.lr.ph48.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.4, %.lr.ph48.i.i.i.i.i ], [ 0, %bb.f ] ; 7 uses
  %.089.i.i.i.i.i.i = phi float [ %i.qa, %.lr.ph48.i.i.i.i.i ], [ 0.000000e+00, %bb.f ]
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i.i.i.i.i.i
  %i.pe = load float, ptr %i.pd, align 4, !tbaa !26
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i.i.i.i.i.i
  %i.pg = load float, ptr %i.pf, align 4, !tbaa !26 ; 2 uses
  %i.ph = call nsz float @llvm.fmuladd.f32(float %i.pe, float %i.pg, float %.089.i.i.i.i.i.i)
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.i.i.i.i
  %i.pj = load float, ptr %i.pi, align 4, !tbaa !26
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.next.i.i.i.i.i.i
  %i.pl = load float, ptr %i.pk, align 4, !tbaa !26
  %i.pm = call nsz float @llvm.fmuladd.f32(float %i.pj, float %i.pl, float %i.ph)
  %indvars.iv.next.i.i.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 2 ; 2 uses
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.i.i.i.i.1
  %i.po = load float, ptr %i.pn, align 4, !tbaa !26
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.next.i.i.i.i.i.i.1
  %i.pq = load float, ptr %i.pp, align 4, !tbaa !26
  %i.pr = call nsz float @llvm.fmuladd.f32(float %i.po, float %i.pq, float %i.pm)
  %indvars.iv.next.i.i.i.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 3 ; 2 uses
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.i.i.i.i.2
  %i.pt = load float, ptr %i.ps, align 4, !tbaa !26
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.next.i.i.i.i.i.i.2
  %i.pv = load float, ptr %i.pu, align 4, !tbaa !26
  %i.pw = call nsz float @llvm.fmuladd.f32(float %i.pt, float %i.pv, float %i.pr)
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i.i.i.i.i.i
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 16
  %i.pz = load float, ptr %i.py, align 4, !tbaa !26
  %i.qa = call nsz float @llvm.fmuladd.f32(float %i.pg, float %i.pz, float %i.pw) ; 2 uses
  %indvars.iv.next.i.i.i.i.i.i.4 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 5 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.4 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i.4, 860
  br i1 %exitcond.not.i.i.i.i.i.i.4, label %celt_autocorr.exit.i.i.i, label %.lr.ph48.i.i.i.i.i, !llvm.loop !139

celt_autocorr.exit.i.i.i:                         ; preds = %.lr.ph48.i.i.i.i.i
  %i.qb = load <4 x float>, ptr %i.bh, align 16, !tbaa !26 ; 6 uses
  %i.qc = load float, ptr %i.bg, align 4, !tbaa !26 ; 4 uses
  %i.qd = shufflevector <4 x float> %i.qb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qe = fmul nsz <4 x float> %i.qb, %i.qd       ; 4 uses
  %i.qf = extractelement <4 x float> %i.qe, i64 0
  %i.qg = call nsz float @llvm.fmuladd.f32(float %i.qc, float %i.qc, float %i.qf)
  %i.qh = extractelement <4 x float> %i.qb, i64 2 ; 3 uses
  %i.qi = call nsz float @llvm.fmuladd.f32(float %i.qh, float %i.qh, float %i.qg)
  %i.qj = extractelement <4 x float> %i.qb, i64 3 ; 2 uses
  %i.qk = call nsz float @llvm.fmuladd.f32(float %i.qj, float %i.qj, float %i.qi)
  %i.ql = extractelement <4 x float> %i.qe, i64 1
  %i.qm = call nsz float @llvm.fmuladd.f32(float %i.qh, float %i.qc, float %i.ql)
  %i.qn = shufflevector <4 x float> %i.oz, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.qo = shufflevector <4 x float> %i.qe, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.qp = insertelement <2 x float> %i.qo, float %i.qk, i64 0
  %i.qq = fadd nsz <2 x float> %i.qn, %i.qp       ; 2 uses
  %i.qr = extractelement <2 x float> %i.qq, i64 0
  %i.qs = fmul nsz float %i.qr, 1.000100e+00      ; 5 uses
  %i.qt = shufflevector <4 x float> %i.qb, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.qu = shufflevector <4 x float> %i.qb, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.qv = insertelement <2 x float> %i.qu, float %i.qc, i64 1
  %i.qw = shufflevector <4 x float> %i.qe, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.qx = insertelement <2 x float> %i.qw, float %i.qm, i64 0
  %i.qy = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qt, <2 x float> %i.qv, <2 x float> %i.qx)
  %i.qz = shufflevector <4 x float> %i.oz, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.ra = fadd nsz <2 x float> %i.qz, %i.qy       ; 3 uses
  %i.rb = fmul nsz <2 x float> %i.ra, <float -8.000000e-03, float -1.600000e-02> ; 2 uses
  %i.rc = extractelement <2 x float> %i.rb, i64 0
  %i.rd = extractelement <2 x float> %i.ra, i64 0
  %i.re = call nsz float @llvm.fmuladd.f32(float %i.rc, float 8.000000e-03, float %i.rd) ; 4 uses
  %i.rf = extractelement <2 x float> %i.rb, i64 1
  %i.rg = extractelement <2 x float> %i.ra, i64 1
  %i.rh = call nsz float @llvm.fmuladd.f32(float %i.rf, float 1.600000e-02, float %i.rg) ; 3 uses
  %i.ri = shufflevector <2 x float> %i.qq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.rj = insertelement <2 x float> %i.ri, float %i.qa, i64 1 ; 2 uses
  %i.rk = fmul nsz <2 x float> %i.rj, <float -2.400000e-02, float -3.200000e-02>
  %i.rl = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rk, <2 x float> <float 2.400000e-02, float 3.200000e-02>, <2 x float> %i.rj) ; 3 uses
  %i.rm = fcmp nsz une float %i.qs, 0.000000e+00
  br i1 %i.rm, label %._crit_edge60.i.i.i.i, label %vector.ph320

scalar.ph348:                                     ; preds = %scalar.ph348, %scalar.ph348.prol
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph348.prol ], [ %indvars.iv.next.i.i.i.1, %scalar.ph348 ] ; 4 uses
  %.idx.i.i.i = shl nuw nsw i64 %indvars.iv.i.i.i, 3
  %i.rn = getelementptr i8, ptr %i.nb, i64 %.idx.i.i.i ; 3 uses
  %i.ro = getelementptr i8, ptr %i.rn, i64 -4
  %i.rp = load float, ptr %i.ro, align 4, !tbaa !26
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rn, i64 4
  %i.rr = load float, ptr %i.rq, align 4, !tbaa !26 ; 2 uses
  %i.rs = fadd nsz float %i.rp, %i.rr
  %i.rt = load float, ptr %i.rn, align 4, !tbaa !26
  %i.ru = call nsz float @llvm.fmuladd.f32(float %i.rs, float 5.000000e-01, float %i.rt)
  %i.rv = fmul nsz float %i.ru, 5.000000e-01
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i.i.i
  store float %i.rv, ptr %i.rw, align 4, !tbaa !26
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.idx.i.i.i.1 = shl nuw nsw i64 %indvars.iv.next.i.i.i, 3
  %i.rx = getelementptr i8, ptr %i.nb, i64 %.idx.i.i.i.1 ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 4
  %i.rz = load float, ptr %i.ry, align 4, !tbaa !26
  %i.sa = fadd nsz float %i.rr, %i.rz
  %i.sb = load float, ptr %i.rx, align 4, !tbaa !26
  %i.sc = call nsz float @llvm.fmuladd.f32(float %i.sa, float 5.000000e-01, float %i.sb)
  %i.sd = fmul nsz float %i.sc, 5.000000e-01
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.i
  store float %i.sd, ptr %i.se, align 4, !tbaa !26
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %exitcond.not.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.1, 864
  br i1 %exitcond.not.i.i.i.1, label %.unr-lcssa, label %scalar.ph348, !llvm.loop !140

._crit_edge60.i.i.i.i:                            ; preds = %celt_autocorr.exit.i.i.i
  %i.sf = fneg nsz float %i.re
  %i.sg = fdiv nsz float %i.sf, %i.qs             ; 5 uses
  %i.sh = fneg nsz float %i.sg
  %i.si = fmul nsz float %i.sg, %i.sh
  %i.sj = call nsz float @llvm.fmuladd.f32(float %i.si, float %i.qs, float %i.qs) ; 3 uses
  %i.sk = fmul nsz float %i.qs, 1.000000e-03      ; 3 uses
  %i.sl = fcmp nsz uge float %i.sj, %i.sk
  %i.sm = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.sg, i64 0
  br i1 %i.sl, label %._crit_edge60.1.i.i.i.i, label %vector.ph320

._crit_edge60.1.i.i.i.i:                          ; preds = %._crit_edge60.i.i.i.i
  %i.sn = fmul nsz float %i.re, %i.sg
  %i.so = fadd nsz float %i.rh, %i.sn
end_hunk_0
begin_hunk_1_@rnnoise_channels:bb.a
  %i.bqo = select <4 x i1> %i.bqn, <4 x float> %i.bqk, <4 x float> %i.bqm ; 2 uses
  store <4 x float> %i.bqo, ptr %i.cv, align 16, !tbaa !26
  store <4 x float> %i.bqo, ptr %i.bqj, align 16, !tbaa !26
  %i.bqp = getelementptr inbounds nuw i8, ptr %i.ka, i64 18480 ; 2 uses
  %i.bqq = load <2 x float>, ptr %i.cw, align 16, !tbaa !26 ; 2 uses
  %i.bqr = load <2 x float>, ptr %i.bqp, align 16, !tbaa !26
  %i.bqs = fmul nsz <2 x float> %i.bqr, splat (float 6.000000e-01) ; 2 uses
  %i.bqt = fcmp nsz ogt <2 x float> %i.bqq, %i.bqs
  %i.bqu = select <2 x i1> %i.bqt, <2 x float> %i.bqq, <2 x float> %i.bqs ; 2 uses
  store <2 x float> %i.bqu, ptr %i.cw, align 16, !tbaa !26
  store <2 x float> %i.bqu, ptr %i.bqp, align 16, !tbaa !26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1924) %i.aa, i8 0, i64 1924, i1 false)
  br label %bb.bi

.loopexit.i.i:                                    ; preds = %vector.body214, %bb.bi
  %exitcond26.not.i.i = icmp eq i64 %indvars.iv.next24.i.i, 21
  br i1 %exitcond26.not.i.i, label %vector.body197, label %bb.bi, !llvm.loop !158

vector.body197:                                   ; preds = %.loopexit.i.i, %vector.body197
  %index198 = phi i64 [ %index.next204, %vector.body197 ], [ 0, %.loopexit.i.i ] ; 3 uses
  %i.bqv = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %index198
  %wide.load199 = load <2 x float>, ptr %i.bqv, align 8, !tbaa !26
  %i.bqw = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %index198 ; 2 uses
  %wide.vec200 = load <4 x float>, ptr %i.bqw, align 16, !tbaa !26
  %i.bqx = shufflevector <2 x float> %wide.load199, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %interleaved.vec203 = fmul nsz <4 x float> %i.bqx, %wide.vec200
  store <4 x float> %interleaved.vec203, ptr %i.bqw, align 16, !tbaa !26
  %index.next204 = add nuw i64 %index198, 2       ; 2 uses
  %i.bqy = icmp eq i64 %index.next204, 480
  br i1 %i.bqy, label %interp_band_gain.exit.i, label %vector.body197, !llvm.loop !163

bb.bi:                                            ; preds = %.loopexit.i.i, %interp_band_gain.exit81.i.i
  %i.bqz = phi i8 [ 0, %interp_band_gain.exit81.i.i ], [ %i.brb, %.loopexit.i.i ]
  %indvars.iv23.i.i = phi i64 [ 0, %interp_band_gain.exit81.i.i ], [ %indvars.iv.next24.i.i, %.loopexit.i.i ] ; 2 uses
  %indvars.iv.next24.i.i = add nuw nsw i64 %indvars.iv23.i.i, 1 ; 4 uses
  %i.bra = getelementptr inbounds nuw i8, ptr @eband5ms, i64 %indvars.iv.next24.i.i
  %i.brb = load i8, ptr %i.bra, align 1, !tbaa !183 ; 2 uses
  %i.brc = zext i8 %i.brb to i32
  %i.brd = zext i8 %i.bqz to i32                  ; 2 uses
  %i.bre = sub nsw i32 %i.brc, %i.brd             ; 2 uses
  %i.brf = icmp sgt i32 %i.bre, 0
  br i1 %i.brf, label %.lr.ph.i.i, label %.loopexit.i.i

.lr.ph.i.i:                                       ; preds = %bb.bi
  %i.brg = shl nuw nsw i32 %i.bre, 2              ; 2 uses
  %i.brh = shl nuw nsw i32 %i.brd, 2
  %i.bri = zext nneg i32 %i.brh to i64
  %wide.trip.count.i.i = zext nneg i32 %i.brg to i64
  %invariant.gep.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bri
  %i.brj = uitofp nneg i32 %i.brg to float
  %i.brk = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.next24.i.i
  %i.brl = load float, ptr %i.brk, align 4, !tbaa !26
  %i.brm = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv23.i.i
  %i.brn = load float, ptr %i.brm, align 4, !tbaa !26
  %broadcast.splatinsert208 = insertelement <4 x float> poison, float %i.brj, i64 0
  %broadcast.splat209 = shufflevector <4 x float> %broadcast.splatinsert208, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert210 = insertelement <4 x float> poison, float %i.brn, i64 0
  %broadcast.splat211 = shufflevector <4 x float> %broadcast.splatinsert210, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert212 = insertelement <4 x float> poison, float %i.brl, i64 0
  %broadcast.splat213 = shufflevector <4 x float> %broadcast.splatinsert212, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body214

vector.body214:                                   ; preds = %vector.body214, %.lr.ph.i.i
  %index215 = phi i64 [ 0, %.lr.ph.i.i ], [ %index.next216, %vector.body214 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %.lr.ph.i.i ], [ %vec.ind.next, %vector.body214 ] ; 2 uses
  %i.bro = uitofp nneg <4 x i32> %vec.ind to <4 x float>
  %i.brp = fdiv nsz <4 x float> %i.bro, %broadcast.splat209 ; 2 uses
  %i.brq = fsub nsz <4 x float> splat (float 1.000000e+00), %i.brp
  %i.brr = fmul nsz <4 x float> %broadcast.splat213, %i.brp
  %i.brs = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.brq, <4 x float> %broadcast.splat211, <4 x float> %i.brr)
  %i.brt = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i.i, i64 %index215
  store <4 x float> %i.brs, ptr %i.brt, align 16, !tbaa !26
  %index.next216 = add nuw i64 %index215, 4       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.bru = icmp eq i64 %index.next216, %wide.trip.count.i.i
  br i1 %i.bru, label %.loopexit.i.i, label %vector.body214, !llvm.loop !164

interp_band_gain.exit.i:                          ; preds = %vector.body197
  %i.brv = load float, ptr %i.jj, align 16, !tbaa !26
  %i.brw = load <2 x float>, ptr %i.jk, align 16, !tbaa !26
  %i.brx = insertelement <2 x float> poison, float %i.brv, i64 0
  %i.bry = shufflevector <2 x float> %i.brx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.brz = fmul nsz <2 x float> %i.bry, %i.brw
  store <2 x float> %i.brz, ptr %i.jk, align 16, !tbaa !26
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %interp_band_gain.exit.i, %compute_frame_features.exit.i, %.critedge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.bsa = load float, ptr %i.cx, align 16, !tbaa !192 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(3848) %4, ptr noundef nonnull readonly align 16 dereferenceable(3848) %10, i64 3848, i1 false)
  br label %vector.body187

vector.body187:                                   ; preds = %vector.body187.1, %.loopexit.i
  %index188 = phi i64 [ 0, %.loopexit.i ], [ %index.next193.1, %vector.body187.1 ] ; 6 uses
  %i.bsb = sub nuw nsw i64 479, %index188
  %i.bsc = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.bsb
  %i.bsd = getelementptr inbounds i8, ptr %i.bsc, i64 -8
  %wide.vec189 = load <4 x float>, ptr %i.bsd, align 16, !tbaa !26 ; 2 uses
  %i.bse = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index188
  %i.bsf = getelementptr inbounds nuw i8, ptr %i.bse, i64 3848
  %i.bsg = fneg nsz <4 x float> %wide.vec189
  %interleaved.vec = shufflevector <4 x float> %wide.vec189, <4 x float> %i.bsg, <4 x i32> <i32 2, i32 7, i32 0, i32 5>
  store <4 x float> %interleaved.vec, ptr %i.bsf, align 8, !tbaa !26
  %i.bsh = icmp eq i64 %index188, 476
  br i1 %i.bsh, label %scalar.ph185, label %vector.body187.1

vector.body187.1:                                 ; preds = %vector.body187
  %i.bsi = sub nuw nsw i64 477, %index188
  %i.bsj = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.bsi
  %i.bsk = getelementptr inbounds i8, ptr %i.bsj, i64 -8
  %wide.vec189.1 = load <4 x float>, ptr %i.bsk, align 16, !tbaa !26 ; 2 uses
  %i.bsl = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index188
  %i.bsm = getelementptr inbounds nuw i8, ptr %i.bsl, i64 3864
  %i.bsn = fneg nsz <4 x float> %wide.vec189.1
  %interleaved.vec.1 = shufflevector <4 x float> %wide.vec189.1, <4 x float> %i.bsn, <4 x i32> <i32 2, i32 7, i32 0, i32 5>
  store <4 x float> %interleaved.vec.1, ptr %i.bsm, align 8, !tbaa !26
  %index.next193.1 = add nuw nsw i64 %index188, 4
  br label %vector.body187

vector.body181:                                   ; preds = %vector.body181.3, %scalar.ph185
  %index182 = phi i64 [ 0, %scalar.ph185 ], [ %index.next183.3, %vector.body181.3 ] ; 7 uses
  %i.bso = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index182
  %wide.vec = load <8 x float>, ptr %i.bso, align 16, !tbaa !185
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.bsp = fdiv nsz <4 x float> %strided.vec, splat (float 9.600000e+02)
  %i.bsq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index182
  store <4 x float> %i.bsp, ptr %i.bsq, align 16, !tbaa !26
  %index.next183 = or disjoint i64 %index182, 4   ; 2 uses
  %i.bsr = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index.next183
  %wide.vec.1 = load <8 x float>, ptr %i.bsr, align 16, !tbaa !185
  %strided.vec.1 = shufflevector <8 x float> %wide.vec.1, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.bss = fdiv nsz <4 x float> %strided.vec.1, splat (float 9.600000e+02)
  %i.bst = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index.next183
  store <4 x float> %i.bss, ptr %i.bst, align 16, !tbaa !26
  %index.next183.1 = or disjoint i64 %index182, 8 ; 2 uses
  %i.bsu = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index.next183.1
  %wide.vec.2 = load <8 x float>, ptr %i.bsu, align 16, !tbaa !185
  %strided.vec.2 = shufflevector <8 x float> %wide.vec.2, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.bsv = fdiv nsz <4 x float> %strided.vec.2, splat (float 9.600000e+02)
  %i.bsw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index.next183.1
  store <4 x float> %i.bsv, ptr %i.bsw, align 16, !tbaa !26
  %i.bsx = icmp eq i64 %index182, 944
  br i1 %i.bsx, label %scalar.ph179, label %vector.body181.3

vector.body181.3:                                 ; preds = %vector.body181
  %index.next183.2 = or disjoint i64 %index182, 12 ; 2 uses
  %i.bsy = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index.next183.2
  %wide.vec.3 = load <8 x float>, ptr %i.bsy, align 16, !tbaa !185
  %strided.vec.3 = shufflevector <8 x float> %wide.vec.3, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.bsz = fdiv nsz <4 x float> %strided.vec.3, splat (float 9.600000e+02)
  %i.bta = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index.next183.2
  store <4 x float> %i.bsz, ptr %i.bta, align 16, !tbaa !26
  %index.next183.3 = add nuw nsw i64 %index182, 16
  br label %vector.body181

scalar.ph185:                                     ; preds = %vector.body187
  %i.btb = load float, ptr %i.jl, align 8, !tbaa !185
  store float %i.btb, ptr %i.jm, align 8, !tbaa !185
  %i.btc = load float, ptr %i.jn, align 4, !tbaa !186
  %i.btd = fneg nsz float %i.btc
  store float %i.btd, ptr %i.jo, align 4, !tbaa !186
  %i.bte = getelementptr inbounds nuw i8, ptr %i.ka, i64 20496
  %i.btf = load ptr, ptr %i.bte, align 16, !tbaa !193
  %i.btg = getelementptr inbounds nuw i8, ptr %i.ka, i64 20480
  %i.bth = load ptr, ptr %i.btg, align 16, !tbaa !68
  call void %i.btf(ptr noundef %i.bth, ptr noundef nonnull %5, ptr noundef nonnull %4, i64 noundef 8) #11, !inline_history !165
  br label %vector.body181

scalar.ph179:                                     ; preds = %vector.body181
  %i.bti = load float, ptr %i.jp, align 16, !tbaa !185
  %i.btj = fdiv nsz float %i.bti, 9.600000e+02
  store float %i.btj, ptr %i.jq, align 16, !tbaa !26
  %i.btk = load float, ptr %i.jr, align 8, !tbaa !185
  %i.btl = fdiv nsz float %i.btk, 9.600000e+02
  store float %i.btl, ptr %i.js, align 4, !tbaa !26
  %i.btm = load float, ptr %i.jt, align 16, !tbaa !185
  %i.btn = fdiv nsz float %i.btm, 9.600000e+02
  store float %i.btn, ptr %i.ju, align 8, !tbaa !26
  %i.bto = load float, ptr %i.jv, align 8, !tbaa !185
  %i.btp = fdiv nsz float %i.bto, 9.600000e+02
  store float %i.btp, ptr %i.jw, align 4, !tbaa !26
  %i.btq = getelementptr i8, ptr %i.ka, i64 18488 ; 6 uses
  %i.btr = fcmp nsz ogt float %i.bsa, 0.000000e+00
  %i.bts = select nsz i1 %i.btr, float %i.bsa, float 0.000000e+00
  %i.btt = fsub nsz float 1.000000e+00, %i.bts    ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.btu = load ptr, ptr %i.ba, align 16, !tbaa !25
  %i.btv = load ptr, ptr %i.btu, align 8, !tbaa !181
  call void %i.btv(ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, ptr noundef nonnull %i.bb, i32 noundef 960) #11, !inline_history !166
  %i.btw = load ptr, ptr %i.ba, align 16, !tbaa !25
  %i.btx = getelementptr inbounds nuw i8, ptr %i.btw, i64 8
  %i.bty = load ptr, ptr %i.btx, align 8, !tbaa !194
  %i.btz = getelementptr inbounds nuw i8, ptr %i.ka, i64 2640 ; 2 uses
  call void %i.bty(ptr noundef nonnull %i.a, ptr noundef nonnull %i.btz, float noundef 1.000000e+00, i32 noundef 480) #11, !inline_history !166
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1920) %i.kd, ptr noundef nonnull align 16 dereferenceable(1920) %i.a, i64 1920, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1920) %i.btz, ptr noundef nonnull align 16 dereferenceable(1920) %i.cy, i64 1920, i1 false)
  %scevgep = getelementptr i8, ptr %i.kd, i64 1920
  %15 = getelementptr i8, ptr %i.jz, i64 %12
  %i.bua = getelementptr i8, ptr %15, i64 20408
  %scevgep173 = getelementptr i8, ptr %i.bua, i64 %i.jy
  %bound0 = icmp ult ptr %i.kd, %scevgep173
  %bound1 = icmp ult ptr %i.btq, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %scalar.ph179
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.btt, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert174 = insertelement <4 x float> poison, float %i.bsa, i64 0
  %broadcast.splat175 = shufflevector <4 x float> %broadcast.splatinsert174, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bub = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %index ; 3 uses
  %i.buc = getelementptr inbounds nuw i8, ptr %i.bub, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.bub, align 4, !tbaa !26, !alias.scope !195, !noalias !196
  %wide.load176 = load <4 x float>, ptr %i.buc, align 4, !tbaa !26, !alias.scope !195, !noalias !196
  %i.bud = getelementptr inbounds nuw [4 x i8], ptr %i.btq, i64 %index ; 2 uses
  %i.bue = getelementptr inbounds nuw i8, ptr %i.bud, i64 16
  %wide.load177 = load <4 x float>, ptr %i.bud, align 4, !tbaa !26, !alias.scope !196
  %wide.load178 = load <4 x float>, ptr %i.bue, align 4, !tbaa !26, !alias.scope !196
  %i.buf = fmul nsz <4 x float> %broadcast.splat, %wide.load177
  %i.bug = fmul nsz <4 x float> %broadcast.splat, %wide.load178
  %i.buh = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %broadcast.splat175, <4 x float> %i.buf)
  %i.bui = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load176, <4 x float> %broadcast.splat175, <4 x float> %i.bug)
  store <4 x float> %i.buh, ptr %i.bub, align 4, !tbaa !26, !alias.scope !195, !noalias !196
  store <4 x float> %i.bui, ptr %i.buc, align 4, !tbaa !26, !alias.scope !195, !noalias !196
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.buj = icmp eq i64 %index.next, 480
  br i1 %i.buj, label %rnnoise_channel.exit, label %vector.body, !llvm.loop !170

scalar.ph:                                        ; preds = %scalar.ph179, %scalar.ph
  %indvars.iv.i67.i = phi i64 [ %indvars.iv.next.i68.i.2, %scalar.ph ], [ 0, %scalar.ph179 ] ; 5 uses
  %i.buk = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %indvars.iv.i67.i ; 2 uses
  %i.bul = load float, ptr %i.buk, align 4, !tbaa !26
  %i.bum = getelementptr inbounds nuw [4 x i8], ptr %i.btq, i64 %indvars.iv.i67.i
  %i.bun = load float, ptr %i.bum, align 4, !tbaa !26
  %i.buo = fmul nsz float %i.btt, %i.bun
  %i.bup = call nsz float @llvm.fmuladd.f32(float %i.bul, float %i.bsa, float %i.buo)
  store float %i.bup, ptr %i.buk, align 4, !tbaa !26
  %indvars.iv.next.i68.i = add nuw nsw i64 %indvars.iv.i67.i, 1 ; 2 uses
  %i.buq = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %indvars.iv.next.i68.i ; 2 uses
  %i.bur = load float, ptr %i.buq, align 4, !tbaa !26
  %i.bus = getelementptr inbounds nuw [4 x i8], ptr %i.btq, i64 %indvars.iv.next.i68.i
  %i.but = load float, ptr %i.bus, align 4, !tbaa !26
  %i.buu = fmul nsz float %i.btt, %i.but
  %i.buv = call nsz float @llvm.fmuladd.f32(float %i.bur, float %i.bsa, float %i.buu)
  store float %i.buv, ptr %i.buq, align 4, !tbaa !26
  %indvars.iv.next.i68.i.1 = add nuw nsw i64 %indvars.iv.i67.i, 2 ; 2 uses
  %i.buw = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %indvars.iv.next.i68.i.1 ; 2 uses
  %i.bux = load float, ptr %i.buw, align 4, !tbaa !26
  %i.buy = getelementptr inbounds nuw [4 x i8], ptr %i.btq, i64 %indvars.iv.next.i68.i.1
  %i.buz = load float, ptr %i.buy, align 4, !tbaa !26
  %i.bva = fmul nsz float %i.btt, %i.buz
  %i.bvb = call nsz float @llvm.fmuladd.f32(float %i.bux, float %i.bsa, float %i.bva)
  store float %i.bvb, ptr %i.buw, align 4, !tbaa !26
  %indvars.iv.next.i68.i.2 = add nuw nsw i64 %indvars.iv.i67.i, 3 ; 2 uses
  %exitcond.not.i69.i.2 = icmp eq i64 %indvars.iv.next.i68.i.2, 480
  br i1 %exitcond.not.i69.i.2, label %rnnoise_channel.exit, label %scalar.ph, !llvm.loop !171

rnnoise_channel.exit:                             ; preds = %vector.body, %scalar.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1920) %i.btq, ptr noundef nonnull readonly align 4 dereferenceable(1920) %i.kg, i64 1920, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !172
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @ff_filter_get_nb_threads(ptr noundef) local_unnamed_addr #6

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nounwind uwtable
define internal fastcc void @dct(ptr noundef %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 88)) %1, ptr noundef nonnull %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6192 ; 22 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3872
  %i.c = load ptr, ptr %i.a, align 16, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !90
  %i.f = tail call nsz float %i.e(ptr noundef nonnull %2, ptr noundef nonnull %i.b, i32 noundef 24) #11
  %i.g = fmul nsz float %i.f, f0x3E9A5FB2
  store float %i.g, ptr %1, align 4, !tbaa !26
  %i.h = load ptr, ptr %i.a, align 16, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !90
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 3968
  %i.l = tail call nsz float %i.j(ptr noundef nonnull %2, ptr noundef nonnull %i.k, i32 noundef 24) #11
  %i.m = fmul nsz float %i.l, f0x3E9A5FB2
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.m, ptr %i.n, align 4, !tbaa !26
  %i.o = load ptr, ptr %i.a, align 16, !tbaa !25
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !90
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4064
  %i.s = tail call nsz float %i.q(ptr noundef nonnull %2, ptr noundef nonnull %i.r, i32 noundef 24) #11
  %i.t = fmul nsz float %i.s, f0x3E9A5FB2
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.t, ptr %i.u, align 4, !tbaa !26
  %i.v = load ptr, ptr %i.a, align 16, !tbaa !25
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !90
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4160
  %i.z = tail call nsz float %i.x(ptr noundef nonnull %2, ptr noundef nonnull %i.y, i32 noundef 24) #11
  %i.aa = fmul nsz float %i.z, f0x3E9A5FB2
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 12
  store float %i.aa, ptr %i.ab, align 4, !tbaa !26
  %i.ac = load ptr, ptr %i.a, align 16, !tbaa !25
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !90
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 4256
  %i.ag = tail call nsz float %i.ae(ptr noundef nonnull %2, ptr noundef nonnull %i.af, i32 noundef 24) #11
  %i.ah = fmul nsz float %i.ag, f0x3E9A5FB2
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  store float %i.ah, ptr %i.ai, align 4, !tbaa !26
  %i.aj = load ptr, ptr %i.a, align 16, !tbaa !25
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 72
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !90
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 4352
  %i.an = tail call nsz float %i.al(ptr noundef nonnull %2, ptr noundef nonnull %i.am, i32 noundef 24) #11
  %i.ao = fmul nsz float %i.an, f0x3E9A5FB2
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 20
  store float %i.ao, ptr %i.ap, align 4, !tbaa !26
  %i.aq = load ptr, ptr %i.a, align 16, !tbaa !25
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 72
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !90
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 4448
  %i.au = tail call nsz float %i.as(ptr noundef nonnull %2, ptr noundef nonnull %i.at, i32 noundef 24) #11
  %i.av = fmul nsz float %i.au, f0x3E9A5FB2
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 24
  store float %i.av, ptr %i.aw, align 4, !tbaa !26
  %i.ax = load ptr, ptr %i.a, align 16, !tbaa !25
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !90
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 4544
  %i.bb = tail call nsz float %i.az(ptr noundef nonnull %2, ptr noundef nonnull %i.ba, i32 noundef 24) #11
  %i.bc = fmul nsz float %i.bb, f0x3E9A5FB2
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 28
  store float %i.bc, ptr %i.bd, align 4, !tbaa !26
  %i.be = load ptr, ptr %i.a, align 16, !tbaa !25
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 72
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !90
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 4640
  %i.bi = tail call nsz float %i.bg(ptr noundef nonnull %2, ptr noundef nonnull %i.bh, i32 noundef 24) #11
  %i.bj = fmul nsz float %i.bi, f0x3E9A5FB2
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 32
  store float %i.bj, ptr %i.bk, align 4, !tbaa !26
  %i.bl = load ptr, ptr %i.a, align 16, !tbaa !25
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 72
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !90
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 4736
  %i.bp = tail call nsz float %i.bn(ptr noundef nonnull %2, ptr noundef nonnull %i.bo, i32 noundef 24) #11
  %i.bq = fmul nsz float %i.bp, f0x3E9A5FB2
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 36
  store float %i.bq, ptr %i.br, align 4, !tbaa !26
  %i.bs = load ptr, ptr %i.a, align 16, !tbaa !25
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 72
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !90
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 4832
  %i.bw = tail call nsz float %i.bu(ptr noundef nonnull %2, ptr noundef nonnull %i.bv, i32 noundef 24) #11
  %i.bx = fmul nsz float %i.bw, f0x3E9A5FB2
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 40
  store float %i.bx, ptr %i.by, align 4, !tbaa !26
  %i.bz = load ptr, ptr %i.a, align 16, !tbaa !25
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 72
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !90
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 4928
  %i.cd = tail call nsz float %i.cb(ptr noundef nonnull %2, ptr noundef nonnull %i.cc, i32 noundef 24) #11
  %i.ce = fmul nsz float %i.cd, f0x3E9A5FB2
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 44
  store float %i.ce, ptr %i.cf, align 4, !tbaa !26
  %i.cg = load ptr, ptr %i.a, align 16, !tbaa !25
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 72
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !90
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 5024
  %i.ck = tail call nsz float %i.ci(ptr noundef nonnull %2, ptr noundef nonnull %i.cj, i32 noundef 24) #11
  %i.cl = fmul nsz float %i.ck, f0x3E9A5FB2
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 48
  store float %i.cl, ptr %i.cm, align 4, !tbaa !26
  %i.cn = load ptr, ptr %i.a, align 16, !tbaa !25
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 72
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !90
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 5120
  %i.cr = tail call nsz float %i.cp(ptr noundef nonnull %2, ptr noundef nonnull %i.cq, i32 noundef 24) #11
  %i.cs = fmul nsz float %i.cr, f0x3E9A5FB2
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 52
  store float %i.cs, ptr %i.ct, align 4, !tbaa !26
  %i.cu = load ptr, ptr %i.a, align 16, !tbaa !25
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 72
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !90
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 5216
  %i.cy = tail call nsz float %i.cw(ptr noundef nonnull %2, ptr noundef nonnull %i.cx, i32 noundef 24) #11
  %i.cz = fmul nsz float %i.cy, f0x3E9A5FB2
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 56
  store float %i.cz, ptr %i.da, align 4, !tbaa !26
  %i.db = load ptr, ptr %i.a, align 16, !tbaa !25
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 72
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !90
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 5312
  %i.df = tail call nsz float %i.dd(ptr noundef nonnull %2, ptr noundef nonnull %i.de, i32 noundef 24) #11
  %i.dg = fmul nsz float %i.df, f0x3E9A5FB2
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 60
  store float %i.dg, ptr %i.dh, align 4, !tbaa !26
  %i.di = load ptr, ptr %i.a, align 16, !tbaa !25
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 72
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !90
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 5408
  %i.dm = tail call nsz float %i.dk(ptr noundef nonnull %2, ptr noundef nonnull %i.dl, i32 noundef 24) #11
  %i.dn = fmul nsz float %i.dm, f0x3E9A5FB2
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 64
  store float %i.dn, ptr %i.do, align 4, !tbaa !26
  %i.dp = load ptr, ptr %i.a, align 16, !tbaa !25
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 72
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !90
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 5504
  %i.dt = tail call nsz float %i.dr(ptr noundef nonnull %2, ptr noundef nonnull %i.ds, i32 noundef 24) #11
  %i.du = fmul nsz float %i.dt, f0x3E9A5FB2
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 68
  store float %i.du, ptr %i.dv, align 4, !tbaa !26
  %i.dw = load ptr, ptr %i.a, align 16, !tbaa !25
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 72
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !90
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 5600
  %i.ea = tail call nsz float %i.dy(ptr noundef nonnull %2, ptr noundef nonnull %i.dz, i32 noundef 24) #11
  %i.eb = fmul nsz float %i.ea, f0x3E9A5FB2
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 72
  store float %i.eb, ptr %i.ec, align 4, !tbaa !26
  %i.ed = load ptr, ptr %i.a, align 16, !tbaa !25
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 72
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !90
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 5696
  %i.eh = tail call nsz float %i.ef(ptr noundef nonnull %2, ptr noundef nonnull %i.eg, i32 noundef 24) #11
  %i.ei = fmul nsz float %i.eh, f0x3E9A5FB2
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 76
  store float %i.ei, ptr %i.ej, align 4, !tbaa !26
  %i.ek = load ptr, ptr %i.a, align 16, !tbaa !25
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 72
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !90
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 5792
  %i.eo = tail call nsz float %i.em(ptr noundef nonnull %2, ptr noundef nonnull %i.en, i32 noundef 24) #11
  %i.ep = fmul nsz float %i.eo, f0x3E9A5FB2
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 80
  store float %i.ep, ptr %i.eq, align 4, !tbaa !26
  %i.er = load ptr, ptr %i.a, align 16, !tbaa !25
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 72
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !90
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %i.ev = tail call nsz float %i.et(ptr noundef nonnull %2, ptr noundef nonnull %i.eu, i32 noundef 24) #11
  %i.ew = fmul nsz float %i.ev, f0x3E9A5FB2
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 84
  store float %i.ew, ptr %i.ex, align 4, !tbaa !26
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_1
