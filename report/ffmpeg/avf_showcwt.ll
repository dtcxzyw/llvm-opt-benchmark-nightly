Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/avf_showcwt?download=true
inline.NumInlined: 18
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@output_frame:bb.a
  %i.kb = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.kc = load i64, ptr %i.kb, align 8            ; 2 uses
  %i.kd = tail call i64 @av_rescale_q(i64 noundef %i.jy, i64 %.sroa.0.0.insert.insert.i, i64 %i.kc) #14
  %i.ke = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !53
  %i.kg = add nsw i64 %i.kf, %i.kd
  %i.kh = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.ki = load i64, ptr %i.kh, align 8
  %i.kj = tail call i64 @av_rescale_q(i64 noundef %i.kg, i64 %i.kc, i64 %i.ki) #14
  %i.kk = load ptr, ptr %i.j, align 8, !tbaa !40  ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 136
  store i64 %i.kj, ptr %i.kl, align 8, !tbaa !52
  %i.km = getelementptr inbounds nuw i8, ptr %i.kk, i64 408
  store i64 1, ptr %i.km, align 8, !tbaa !189
  br label %bb.ae

bb.ae:                                            ; preds = %bb.aa, %bb.ad
  %or.cond = phi i1 [ true, %bb.aa ], [ false, %bb.ad ]
  %i.kn = phi ptr [ %i.ix, %bb.aa ], [ %i.jq, %bb.ad ]
  %i.ko = getelementptr inbounds nuw i8, ptr %i.i, i64 292 ; 3 uses
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !56
  %i.kq = add nsw i32 %i.kp, 1                    ; 2 uses
  store i32 %i.kq, ptr %i.ko, align 4, !tbaa !56
  %i.kr = getelementptr inbounds nuw i8, ptr %i.i, i64 284
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !75
  %.not234 = icmp slt i32 %i.kq, %i.ks
  br i1 %.not234, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.kt = getelementptr inbounds nuw i8, ptr %i.i, i64 288
  store i32 0, ptr %i.kt, align 8, !tbaa !42
  store i32 0, ptr %i.ko, align 4, !tbaa !56
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  br i1 %or.cond, label %bb.ao, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ku = getelementptr inbounds nuw i8, ptr %i.i, i64 104 ; 2 uses
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !54
  %i.kw = load ptr, ptr %i.j, align 8, !tbaa !40
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 136
  %i.ky = load i64, ptr %i.kx, align 8, !tbaa !52
  %i.kz = icmp slt i64 %i.kv, %i.ky
  br i1 %i.kz, label %bb.ai, label %bb.ao

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.la = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.lb = load i32, ptr %i.la, align 8, !tbaa !77
  %i.lc = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !78
  %i.le = tail call ptr @ff_get_video_buffer(ptr noundef %i.d, i32 noundef %i.lb, i32 noundef %i.ld) #13 ; 5 uses
  store ptr %i.le, ptr %i.a, align 8, !tbaa !41
  %.not235 = icmp eq ptr %i.le, null
  br i1 %.not235, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.lf = load ptr, ptr %i.j, align 8, !tbaa !40
  %i.lg = tail call i32 @av_frame_copy_props(ptr noundef nonnull %i.le, ptr noundef %i.lf) #13 ; 2 uses
  %i.lh = icmp slt i32 %i.lg, 0
  br i1 %i.lh, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.li = load ptr, ptr %i.j, align 8, !tbaa !40
  %i.lj = tail call i32 @av_frame_copy(ptr noundef nonnull %i.le, ptr noundef %i.li) #13 ; 2 uses
  %i.lk = icmp slt i32 %i.lj, 0
  br i1 %i.lk, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ll = load ptr, ptr %i.j, align 8, !tbaa !40
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 136
  %i.ln = load i64, ptr %i.lm, align 8, !tbaa !52
  store i64 %i.ln, ptr %i.ku, align 8, !tbaa !54
  store i32 0, ptr %i.kn, align 8, !tbaa !188
  %i.lo = tail call i32 @ff_filter_frame(ptr noundef nonnull %i.d, ptr noundef nonnull %i.le) #13 ; 3 uses
  %i.lp = icmp slt i32 %i.lo, 1
  br i1 %i.lp, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj
  %.0207 = phi i32 [ %i.lg, %bb.aj ], [ %i.lj, %bb.ak ], [ %i.lo, %bb.al ]
  call void @av_frame_free(ptr noundef nonnull %i.a) #13
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.ai, %bb.am
  %.0 = phi i32 [ %.0207, %bb.am ], [ -12, %bb.ai ], [ %i.lo, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ag, %bb.ah, %bb.an
  %.1 = phi i32 [ 1, %bb.ag ], [ %.0, %bb.an ], [ 1, %bb.ah ]
  ret i32 %.1
}

declare i32 @ff_inlink_acknowledge_status(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @ff_filter_set_ready(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @ff_inlink_queued_samples(ptr noundef) local_unnamed_addr #4

declare i32 @ff_outlink_frame_wanted(ptr noundef) local_unnamed_addr #4

declare void @ff_inlink_request_frame(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @draw(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, i32 noundef %2, i32 noundef %3) #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 23 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.f = load i32, ptr %i.e, align 8, !tbaa !57
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  %i.i = load i32, ptr %i.h, align 4, !tbaa !57
  %i.j = sext i32 %i.i to i64                     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.l = load i32, ptr %i.k, align 8, !tbaa !57
  %i.m = sext i32 %i.l to i64                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  %i.o = load i32, ptr %i.n, align 4, !tbaa !57
  %i.p = sext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 316
  %i.r = load float, ptr %i.q, align 4, !tbaa !192
  %i.s = tail call nsz float @llvm.log.f32(float %i.r)
  %i.t = fdiv nsz float 1.000000e+00, %i.s        ; 21 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  %i.v = load i32, ptr %i.u, align 8, !tbaa !35
  %i.w = sext i32 %i.v to i64                     ; 2 uses
  %i.x = sext i32 %2 to i64
  %i.y = mul nsw i64 %i.w, %i.x
  %i.z = sext i32 %3 to i64                       ; 2 uses
  %i.aa = sdiv i64 %i.y, %i.z                     ; 2 uses
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = add nsw i32 %2, 1
  %i.ad = sext i32 %i.ac to i64
  %i.ae = mul nsw i64 %i.w, %i.ad
  %i.af = sdiv i64 %i.ae, %i.z
  %i.ag = trunc i64 %i.af to i32                  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 252 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !193 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  %i.al = load float, ptr %i.ak, align 8, !tbaa !194 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 276 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !68 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !195
  %i.aq = icmp slt i32 %i.ab, %i.ag
  br i1 %i.aq, label %.lr.ph417, label %._crit_edge418

.lr.ph417:                                        ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 284
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !75 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.au = load i32, ptr %i.at, align 8, !tbaa !95
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !105
  %i.ax = add nsw i32 %i.aw, -1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !69
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 356
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !70 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 292
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !56
  %i.be = load i32, ptr %i.ah, align 4, !tbaa !45
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.bg = sext i32 %i.bd to i64
  %i.bh = icmp slt i32 %i.bb, 1
  %i.bi = sext i32 %i.au to i64                   ; 8 uses
  %i.bj = mul nsw i64 %i.bi, %i.g
  %i.bk = sext i32 %i.ax to i64                   ; 12 uses
  %i.bl = mul nsw i64 %i.bi, %i.j
  %i.bm = mul nsw i64 %i.bi, %i.m
  %i.bn = mul nsw i64 %i.bi, %i.p
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 268
  %or.cond = icmp ult i32 %i.an, 2
  %i.bp = getelementptr i8, ptr %i.b, i64 336     ; 4 uses
  %i.bq = getelementptr i8, ptr %i.b, i64 340     ; 4 uses
  %i.br = icmp sgt i32 %i.bb, 0                   ; 5 uses
  %i.bs = icmp sgt i32 %i.az, 0                   ; 5 uses
  %i.bt = icmp sgt i32 %i.be, 1
  %narrow = select i1 %i.bt, i32 %i.as, i32 0
  %.idx = sext i32 %narrow to i64
  %i.bu = fpext nsz float %i.al to double
  %i.bv = fmul nsz double %i.bu, f0x400921FB54442D18
  %i.bw = fptrunc nsz double %i.bv to float
  %sincos290 = tail call nsz { float, float } @llvm.sincos.f32(float %i.bw) ; 2 uses
  %sin291 = extractvalue { float, float } %sincos290, 0 ; 2 uses
  %cos292 = extractvalue { float, float } %sincos290, 1 ; 2 uses
  %i.bx = fneg nsz float %sin291
  %i.by = sext i32 %i.as to i64
  %sext = shl i64 %i.aa, 32
  %i.bz = ashr exact i64 %sext, 32
  %i.ca = insertelement <2 x float> poison, float %i.t, i64 0
  %i.cb = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.cc = insertelement <2 x float> poison, float %i.al, i64 1
  br label %bb.b

._crit_edge418:                                   ; preds = %bb.bi, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph417, %bb.bi
  %indvars.iv422 = phi i64 [ %i.bz, %.lr.ph417 ], [ %indvars.iv.next423, %bb.bi ] ; 12 uses
  %.0270414 = phi ptr [ undef, %.lr.ph417 ], [ %.2, %bb.bi ] ; 2 uses
  %.0271413 = phi ptr [ undef, %.lr.ph417 ], [ %.2273, %bb.bi ] ; 2 uses
  %.0274412 = phi ptr [ undef, %.lr.ph417 ], [ %.2276, %bb.bi ] ; 2 uses
  %.0277411 = phi ptr [ undef, %.lr.ph417 ], [ %.2279, %bb.bi ] ; 2 uses
  %i.cd = load ptr, ptr %i.bf, align 8, !tbaa !88
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 96
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !102
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %indvars.iv422
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !94
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %i.bg ; 9 uses
  br i1 %i.bh, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i32 %i.an, label %bb.f [
    i32 0, label %bb.d
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.cj = load ptr, ptr %i.c, align 8, !tbaa !40  ; 4 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !94
  %i.cl = mul nsw i64 %indvars.iv422, %i.g
  %i.cm = getelementptr inbounds i8, ptr %i.ck, i64 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !94
  %i.cp = mul nsw i64 %indvars.iv422, %i.j
  %i.cq = getelementptr inbounds i8, ptr %i.co, i64 %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !94
  %i.ct = mul nsw i64 %indvars.iv422, %i.m
  %i.cu = getelementptr inbounds i8, ptr %i.cs, i64 %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !94 ; 2 uses
  %.not282 = icmp eq ptr %i.cw, null
  %i.cx = mul nsw i64 %indvars.iv422, %i.p
  %i.cy = getelementptr inbounds i8, ptr %i.cw, i64 %i.cx
  %i.cz = select i1 %.not282, ptr null, ptr %i.cy
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.c
  %i.da = load ptr, ptr %i.c, align 8, !tbaa !40  ; 4 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !94
  %i.dc = getelementptr inbounds i8, ptr %i.db, i64 %i.bj
  %i.dd = getelementptr inbounds i8, ptr %i.dc, i64 %i.bk
  %i.de = sub nsw i64 0, %indvars.iv422           ; 4 uses
  %i.df = getelementptr inbounds i8, ptr %i.dd, i64 %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !94
  %i.di = getelementptr inbounds i8, ptr %i.dh, i64 %i.bl
  %i.dj = getelementptr inbounds i8, ptr %i.di, i64 %i.bk
  %i.dk = getelementptr inbounds i8, ptr %i.dj, i64 %i.de
  %i.dl = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !94
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 %i.bm
  %i.do = getelementptr inbounds i8, ptr %i.dn, i64 %i.bk
  %i.dp = getelementptr inbounds i8, ptr %i.do, i64 %i.de
  %i.dq = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !94 ; 2 uses
  %.not = icmp eq ptr %i.dr, null
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 %i.bn
  %i.dt = getelementptr inbounds i8, ptr %i.ds, i64 %i.bk
  %i.du = getelementptr inbounds i8, ptr %i.dt, i64 %i.de
  %i.dv = select i1 %.not, ptr null, ptr %i.du
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.1278 = phi ptr [ %.0277411, %bb.c ], [ %i.cm, %bb.d ], [ %i.df, %bb.e ] ; 6 uses
  %.1275 = phi ptr [ %.0274412, %bb.c ], [ %i.cq, %bb.d ], [ %i.dk, %bb.e ] ; 6 uses
  %.1272 = phi ptr [ %.0271413, %bb.c ], [ %i.cu, %bb.d ], [ %i.dp, %bb.e ] ; 6 uses
  %.1 = phi ptr [ %.0270414, %bb.c ], [ %i.cz, %bb.d ], [ %i.dv, %bb.e ] ; 9 uses
  %i.dw = load i32, ptr %i.bo, align 4, !tbaa !58
  %cond = icmp eq i32 %i.dw, 1
  br i1 %cond, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.dx = load i32, ptr %i.am, align 4, !tbaa !68
  switch i32 %i.dx, label %bb.l [
    i32 1, label %bb.h
    i32 0, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  %i.dy = getelementptr inbounds nuw i8, ptr %.1278, i64 1
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.1278, ptr nonnull align 1 %i.dy, i64 %i.bk, i1 false)
  %i.dz = getelementptr inbounds nuw i8, ptr %.1275, i64 1
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.1275, ptr nonnull align 1 %i.dz, i64 %i.bk, i1 false)
  %i.ea = getelementptr inbounds nuw i8, ptr %.1272, i64 1
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.1272, ptr nonnull align 1 %i.ea, i64 %i.bk, i1 false)
  %.not284 = icmp eq ptr %.1, null
  br i1 %.not284, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.eb = getelementptr inbounds nuw i8, ptr %.1, i64 1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.1, ptr nonnull align 1 %i.eb, i64 %i.bk, i1 false)
  br label %bb.l

bb.j:                                             ; preds = %bb.g
  %i.ec = getelementptr inbounds nuw i8, ptr %.1278, i64 1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ec, ptr align 1 %.1278, i64 %i.bk, i1 false)
  %i.ed = getelementptr inbounds nuw i8, ptr %.1275, i64 1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ed, ptr align 1 %.1275, i64 %i.bk, i1 false)
  %i.ee = getelementptr inbounds nuw i8, ptr %.1272, i64 1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ee, ptr align 1 %.1272, i64 %i.bk, i1 false)
  %.not283 = icmp eq ptr %.1, null
  br i1 %.not283, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ef = getelementptr inbounds nuw i8, ptr %.1, i64 1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ef, ptr nonnull align 1 %.1, i64 %i.bk, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %bb.g, %bb.i, %bb.h, %bb.k, %bb.j
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.eg = getelementptr inbounds i8, ptr %.1278, i64 %i.bi
  %i.eh = getelementptr inbounds i8, ptr %.1275, i64 %i.bi
  %i.ei = getelementptr inbounds i8, ptr %.1272, i64 %i.bi
  %.not285 = icmp eq ptr %.1, null
  %i.ej = getelementptr inbounds i8, ptr %.1, i64 %i.bi
  %spec.select = select i1 %.not285, ptr null, ptr %i.ej
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.b
  %.2279 = phi ptr [ %.0277411, %bb.b ], [ %.1278, %bb.l ], [ %i.eg, %bb.m ] ; 9 uses
  %.2276 = phi ptr [ %.0274412, %bb.b ], [ %.1275, %bb.l ], [ %i.eh, %bb.m ] ; 4 uses
  %.2273 = phi ptr [ %.0271413, %bb.b ], [ %.1272, %bb.l ], [ %i.ei, %bb.m ] ; 4 uses
  %.2 = phi ptr [ %.0270414, %bb.b ], [ %.1, %bb.l ], [ %spec.select, %bb.m ] ; 11 uses
  switch i32 %i.ap, label %bb.bi [
    i32 4, label %bb.o
    i32 3, label %bb.y
    i32 2, label %bb.aj
    i32 1, label %bb.at
    i32 0, label %bb.ay
  ]

bb.o:                                             ; preds = %bb.n
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %.idx
  %i.el = load <2 x float>, ptr %i.ci, align 4, !tbaa !66 ; 3 uses
  %i.em = load <2 x float>, ptr %i.ek, align 4, !tbaa !66 ; 3 uses
  %i.en = fadd nsz <2 x float> %i.el, %i.em       ; 2 uses
  %i.eo = extractelement <2 x float> %i.en, i64 0
  %i.ep = extractelement <2 x float> %i.en, i64 1
  %i.eq = tail call nsz float @hypotf(float noundef %i.eo, float noundef %i.ep) #14
  %i.er = extractelement <2 x float> %i.el, i64 0
  %i.es = extractelement <2 x float> %i.el, i64 1
  %i.et = tail call nsz float @hypotf(float noundef %i.er, float noundef %i.es) #14 ; 5 uses
  %i.eu = extractelement <2 x float> %i.em, i64 0
  %i.ev = extractelement <2 x float> %i.em, i64 1
  %i.ew = tail call nsz float @hypotf(float noundef %i.eu, float noundef %i.ev) #14 ; 5 uses
  %.val333 = load float, ptr %i.bp, align 8, !tbaa !196 ; 10 uses
  %.val334 = load float, ptr %i.bq, align 4, !tbaa !197 ; 10 uses
  %i.ex = fadd nsz float %i.eq, %.val333          ; 5 uses
  switch i32 %i.aj, label %unreachable.i [
    i32 1, label %bb.p
    i32 0, label %bb.q
    i32 2, label %bb.r
    i32 3, label %bb.s
    i32 4, label %bb.t
  ]

unreachable.i:                                    ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.ey = fadd nsz float %i.et, %.val333
  %i.ez = insertelement <2 x float> poison, float %i.ey, i64 0
  %i.fa = insertelement <2 x float> %i.ez, float %i.ex, i64 1
  %i.fb = fdiv nsz <2 x float> %i.fa, %i.cb
  %i.fc = tail call nsz <2 x float> @llvm.exp.v2f32(<2 x float> %i.fb)
  %i.fd = insertelement <2 x float> poison, float %.val334, i64 0
  %i.fe = shufflevector <2 x float> %i.fd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ff = fsub nsz <2 x float> %i.fe, %i.fc       ; 2 uses
  %i.fg = fcmp nsz ogt <2 x float> %i.ff, zeroinitializer
  %i.fh = select <2 x i1> %i.fg, <2 x float> %i.ff, <2 x float> zeroinitializer ; 2 uses
  %i.fi = fcmp nsz ogt <2 x float> %i.fh, splat (float 1.000000e+00)
  %i.fj = select <2 x i1> %i.fi, <2 x float> splat (float 1.000000e+00), <2 x float> %i.fh
  %i.fk = fadd nsz float %i.ew, %.val333
  %i.fl = fdiv nsz float %i.fk, %i.t
  %i.fm = tail call nsz float @llvm.exp.f32(float %i.fl)
  %i.fn = fsub nsz float %.val334, %i.fm
  br label %remap_log.exit345

bb.q:                                             ; preds = %bb.o
  %i.fo = fadd nsz float %i.et, %.val333
  %i.fp = tail call nsz float @llvm.log.f32(float %i.ex)
  %i.fq = tail call nsz float @llvm.log.f32(float %i.fo)
  %i.fr = insertelement <2 x float> poison, float %i.fq, i64 0
  %i.fs = insertelement <2 x float> %i.fr, float %i.fp, i64 1
  %i.ft = fmul nsz <2 x float> %i.cb, %i.fs       ; 2 uses
  %i.fu = fcmp nsz ogt <2 x float> %i.ft, zeroinitializer
  %i.fv = select <2 x i1> %i.fu, <2 x float> %i.ft, <2 x float> zeroinitializer ; 2 uses
  %i.fw = fcmp nsz ogt <2 x float> %i.fv, splat (float 1.000000e+00)
  %i.fx = select <2 x i1> %i.fw, <2 x float> splat (float 1.000000e+00), <2 x float> %i.fv
  %i.fy = insertelement <2 x float> poison, float %.val334, i64 0
  %i.fz = shufflevector <2 x float> %i.fy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ga = fsub nsz <2 x float> %i.fz, %i.fx       ; 2 uses
  %i.gb = fcmp nsz ogt <2 x float> %i.ga, zeroinitializer
  %i.gc = select <2 x i1> %i.gb, <2 x float> %i.ga, <2 x float> zeroinitializer ; 2 uses
  %i.gd = fcmp nsz ogt <2 x float> %i.gc, splat (float 1.000000e+00)
  %i.ge = select <2 x i1> %i.gd, <2 x float> splat (float 1.000000e+00), <2 x float> %i.gc
  %i.gf = fadd nsz float %i.ew, %.val333
  %i.gg = tail call nsz float @llvm.log.f32(float %i.gf)
  %i.gh = fmul nsz float %i.t, %i.gg              ; 2 uses
  %i.gi = fcmp nsz ogt float %i.gh, 0.000000e+00
  %i.gj = select nsz i1 %i.gi, float %i.gh, float 0.000000e+00 ; 2 uses
  %i.gk = fcmp nsz ogt float %i.gj, 1.000000e+00
  %..i24.i343 = select nsz i1 %i.gk, float 1.000000e+00, float %i.gj
  %i.gl = fsub nsz float %.val334, %..i24.i343
  br label %remap_log.exit345

bb.r:                                             ; preds = %bb.o
  %i.gm = fadd nsz float %i.et, %.val333
  %i.gn = insertelement <2 x float> poison, float %i.gm, i64 0
  %i.go = insertelement <2 x float> %i.gn, float %i.ex, i64 1
  %i.gp = fdiv nsz <2 x float> %i.go, %i.cb
  %i.gq = tail call nsz <2 x float> @llvm.exp.v2f32(<2 x float> %i.gp)
  %i.gr = insertelement <2 x float> poison, float %.val334, i64 0
  %i.gs = shufflevector <2 x float> %i.gr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gt = fsub nsz <2 x float> %i.gs, %i.gq       ; 2 uses
  %i.gu = tail call nsz <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.gt)
  %i.gv = fcmp nsz ogt <2 x float> %i.gt, zeroinitializer
  %i.gw = select <2 x i1> %i.gv, <2 x float> %i.gu, <2 x float> zeroinitializer ; 2 uses
  %i.gx = fcmp nsz ogt <2 x float> %i.gw, splat (float 1.000000e+00)
  %i.gy = select <2 x i1> %i.gx, <2 x float> splat (float 1.000000e+00), <2 x float> %i.gw
  %i.gz = fadd nsz float %i.ew, %.val333
  %i.ha = fdiv nsz float %i.gz, %i.t
  %i.hb = tail call nsz float @llvm.exp.f32(float %i.ha)
  %i.hc = fsub nsz float %.val334, %i.hb
  %i.hd = tail call nsz float @llvm.sqrt.f32(float %i.hc)
  br label %remap_log.exit345

bb.s:                                             ; preds = %bb.o
  %i.he = fdiv nsz float %i.ex, %i.t
  %i.hf = tail call nsz float @llvm.exp.f32(float %i.he)
  %i.hg = fsub nsz float %.val334, %i.hf
  %i.hh = tail call nsz float @cbrtf(float noundef %i.hg) #14
  %i.hi = insertelement <2 x float> poison, float %i.ew, i64 0
  %i.hj = insertelement <2 x float> %i.hi, float %i.et, i64 1
  %i.hk = insertelement <2 x float> poison, float %.val333, i64 0
  %i.hl = shufflevector <2 x float> %i.hk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hm = fadd nsz <2 x float> %i.hj, %i.hl
  %i.hn = fdiv nsz <2 x float> %i.hm, %i.cb
  %i.ho = tail call nsz <2 x float> @llvm.exp.v2f32(<2 x float> %i.hn)
  %i.hp = insertelement <2 x float> poison, float %.val334, i64 0
  %i.hq = shufflevector <2 x float> %i.hp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hr = fsub nsz <2 x float> %i.hq, %i.ho       ; 2 uses
  %i.hs = extractelement <2 x float> %i.hr, i64 1
  %i.ht = tail call nsz float @cbrtf(float noundef %i.hs) #14
  %i.hu = insertelement <2 x float> poison, float %i.ht, i64 0
  %i.hv = insertelement <2 x float> %i.hu, float %i.hh, i64 1 ; 2 uses
  %i.hw = fcmp nsz ogt <2 x float> %i.hv, zeroinitializer
  %i.hx = select <2 x i1> %i.hw, <2 x float> %i.hv, <2 x float> zeroinitializer ; 2 uses
  %i.hy = fcmp nsz ogt <2 x float> %i.hx, splat (float 1.000000e+00)
  %i.hz = select <2 x i1> %i.hy, <2 x float> splat (float 1.000000e+00), <2 x float> %i.hx
  %i.ia = extractelement <2 x float> %i.hr, i64 0
  %i.ib = tail call nsz float @cbrtf(float noundef %i.ia) #14
  br label %remap_log.exit345

bb.t:                                             ; preds = %bb.o
  %i.ic = fadd nsz float %i.et, %.val333
  %i.id = insertelement <2 x float> poison, float %i.ic, i64 0
  %i.ie = insertelement <2 x float> %i.id, float %i.ex, i64 1
  %i.if = fdiv nsz <2 x float> %i.ie, %i.cb
  %i.ig = tail call nsz <2 x float> @llvm.exp.v2f32(<2 x float> %i.if)
  %i.ih = insertelement <2 x float> poison, float %.val334, i64 0
  %i.ii = shufflevector <2 x float> %i.ih, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ij = fsub nsz <2 x float> %i.ii, %i.ig
  %i.ik = tail call nsz <2 x float> @llvm.pow.v2f32(<2 x float> %i.ij, <2 x float> splat (float 2.500000e-01)) ; 2 uses
  %i.il = fcmp nsz ogt <2 x float> %i.ik, zeroinitializer
  %i.im = select <2 x i1> %i.il, <2 x float> %i.ik, <2 x float> zeroinitializer ; 2 uses
  %i.in = fcmp nsz ogt <2 x float> %i.im, splat (float 1.000000e+00)
  %i.io = select <2 x i1> %i.in, <2 x float> splat (float 1.000000e+00), <2 x float> %i.im
  %i.ip = fadd nsz float %i.ew, %.val333
  %i.iq = fdiv nsz float %i.ip, %i.t
  %i.ir = tail call nsz float @llvm.exp.f32(float %i.iq)
  %i.is = fsub nsz float %.val334, %i.ir
  %i.it = tail call nsz float @llvm.pow.f32(float %i.is, float 2.500000e-01)
  br label %remap_log.exit345

remap_log.exit345:                                ; preds = %bb.p, %bb.q, %bb.r, %bb.s, %bb.t
  %.0.i341 = phi nsz float [ %i.it, %bb.t ], [ %i.fn, %bb.p ], [ %i.gl, %bb.q ], [ %i.hd, %bb.r ], [ %i.ib, %bb.s ] ; 2 uses
  %i.iu = phi <2 x float> [ %i.io, %bb.t ], [ %i.fj, %bb.p ], [ %i.ge, %bb.q ], [ %i.gy, %bb.r ], [ %i.hz, %bb.s ] ; 2 uses
  %i.iv = fcmp nsz ogt float %.0.i341, 0.000000e+00
  %i.iw = select nsz i1 %i.iv, float %.0.i341, float 0.000000e+00 ; 2 uses
  %i.ix = fcmp nsz ogt float %i.iw, 1.000000e+00
  %..i.i342 = select nsz i1 %i.ix, float 1.000000e+00, float %i.iw ; 2 uses
  %i.iy = extractelement <2 x float> %i.iu, i64 0 ; 2 uses
  %i.iz = fsub nsz float %..i.i342, %i.iy
  %i.ja = fpext nsz float %i.iz to double
  %i.jb = fmul nsz double %i.ja, f0x3FF921FB54442D18
  %4 = fptrunc nsz double %i.jb to float
  %5 = tail call nsz float @llvm.sin.f32(float %4) ; 2 uses
  %6 = fsub nsz float %i.iy, %..i.i342
  %7 = fpext nsz float %6 to double
  %8 = fmul nsz double %7, f0x3FF921FB54442D18
  %9 = fptrunc nsz double %8 to float
  %10 = tail call nsz float @llvm.sin.f32(float %9) ; 2 uses
  %11 = fmul nsz float %10, %i.bx
  %12 = tail call nsz float @llvm.fmuladd.f32(float %5, float %cos292, float %11)
  %13 = fmul nsz float %cos292, %10
  %14 = tail call nsz float @llvm.fmuladd.f32(float %5, float %sin291, float %13)
  %i.jc = extractelement <2 x float> %i.iu, i64 1 ; 3 uses
  %i.jd = fmul nsz float %i.jc, 5.000000e-01      ; 2 uses
  %15 = tail call nsz float @llvm.fmuladd.f32(float %i.jd, float %12, float 5.000000e-01) ; 2 uses
  %16 = tail call nsz float @llvm.fmuladd.f32(float %i.jd, float %14, float 5.000000e-01) ; 2 uses
  br i1 %i.br, label %bb.u, label %bb.w

bb.u:                                             ; preds = %remap_log.exit345
  %i.je = fmul nsz float %i.jc, 2.550000e+02
  %i.jf = tail call i64 @llvm.lrint.i64.f32(float %i.je) ; 2 uses
  %i.jg = trunc i64 %i.jf to i32                  ; 2 uses
  %.not.i321 = icmp ult i32 %i.jg, 256
  %isnotneg.i322 = icmp sgt i32 %i.jg, -1
  %i.jh = sext i1 %isnotneg.i322 to i8
  %i.ji = trunc i64 %i.jf to i8
  %.0.i323 = select i1 %.not.i321, i8 %i.ji, i8 %i.jh
  store i8 %.0.i323, ptr %.2279, align 1, !tbaa !106
  %i.jj = fmul nsz float %15, 2.550000e+02
  %i.jk = tail call i64 @llvm.lrint.i64.f32(float %i.jj) ; 2 uses
  %i.jl = trunc i64 %i.jk to i32                  ; 2 uses
  %.not.i318 = icmp ult i32 %i.jl, 256
  %isnotneg.i319 = icmp sgt i32 %i.jl, -1
  %i.jm = sext i1 %isnotneg.i319 to i8
  %i.jn = trunc i64 %i.jk to i8
  %.0.i320 = select i1 %.not.i318, i8 %i.jn, i8 %i.jm
  store i8 %.0.i320, ptr %.2276, align 1, !tbaa !106
  %i.jo = fmul nsz float %16, 2.550000e+02
  %i.jp = tail call i64 @llvm.lrint.i64.f32(float %i.jo) ; 2 uses
  %i.jq = trunc i64 %i.jp to i32                  ; 2 uses
  %.not.i315 = icmp ult i32 %i.jq, 256
  %isnotneg.i316 = icmp sgt i32 %i.jq, -1
  %i.jr = sext i1 %isnotneg.i316 to i8
  %i.js = trunc i64 %i.jp to i8
  %.0.i317 = select i1 %.not.i315, i8 %i.js, i8 %i.jr
  store i8 %.0.i317, ptr %.2273, align 1, !tbaa !106
  %.not293 = icmp eq ptr %.2, null
  br i1 %.not293, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.jt = load i8, ptr %.2279, align 1, !tbaa !106
  store i8 %i.jt, ptr %.2, align 1, !tbaa !106
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %remap_log.exit345
  br i1 %i.bs, label %bb.x, label %bb.bi

bb.x:                                             ; preds = %bb.w
  %i.ju = trunc nsw i64 %indvars.iv422 to i32
  tail call fastcc void @draw_bar(ptr noundef nonnull %i.b, i32 noundef %i.ju, float noundef %i.jc, float noundef %15, float noundef %16)
  br label %bb.bi

bb.y:                                             ; preds = %bb.n
  %i.jv = load i32, ptr %i.ah, align 4, !tbaa !45 ; 3 uses
  %i.jw = sitofp nsz i32 %i.jv to float
  %i.jx = fdiv nsz float 1.000000e+00, %i.jw      ; 2 uses
  %i.jy = icmp sgt i32 %i.jv, 0
  br i1 %i.jy, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.y
  %.val327 = load float, ptr %i.bp, align 8, !tbaa !196
  %.val328 = load float, ptr %i.bq, align 4, !tbaa !197 ; 5 uses
  %wide.trip.count = zext nneg i32 %i.jv to i64
  %i.jz = insertelement <2 x float> poison, float %i.jx, i64 0
  %i.ka = shufflevector <2 x float> %i.jz, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.z

._crit_edge:                                      ; preds = %remap_log.exit350, %bb.y
  %.0269.lcssa = phi float [ 0.000000e+00, %bb.y ], [ %i.ly, %remap_log.exit350 ] ; 2 uses
  %i.kb = phi <2 x float> [ splat (float 5.000000e-01), %bb.y ], [ %i.lx, %remap_log.exit350 ] ; 4 uses
  br i1 %i.br, label %bb.af, label %bb.ah

bb.z:                                             ; preds = %.lr.ph, %remap_log.exit350
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %remap_log.exit350 ] ; 3 uses
  %.0269405 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.ly, %remap_log.exit350 ]
  %i.kc = phi <2 x float> [ splat (float 5.000000e-01), %.lr.ph ], [ %i.lx, %remap_log.exit350 ]
  %i.kd = mul nsw i64 %indvars.iv, %i.by
  %i.ke = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %i.kd ; 2 uses
  %i.kf = load float, ptr %i.ke, align 4, !tbaa !97
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ke, i64 4
  %i.kh = load float, ptr %i.kg, align 4, !tbaa !98
  %i.ki = tail call nsz float @hypotf(float noundef %i.kf, float noundef %i.kh) #14
  %i.kj = fadd nsz float %i.ki, %.val327          ; 5 uses
  switch i32 %i.aj, label %unreachable.i349 [
    i32 1, label %bb.aa
    i32 0, label %bb.ab
    i32 2, label %bb.ac
    i32 3, label %bb.ad
    i32 4, label %bb.ae
  ]

bb.aa:                                            ; preds = %bb.z
  %i.kk = fdiv nsz float %i.kj, %i.t
  %i.kl = tail call nsz float @llvm.exp.f32(float %i.kk)
  %i.km = fsub nsz float %.val328, %i.kl
  br label %remap_log.exit350

bb.ab:                                            ; preds = %bb.z
  %i.kn = tail call nsz float @llvm.log.f32(float %i.kj)
  %i.ko = fmul nsz float %i.t, %i.kn              ; 2 uses
  %i.kp = fcmp nsz ogt float %i.ko, 0.000000e+00
  %i.kq = select nsz i1 %i.kp, float %i.ko, float 0.000000e+00 ; 2 uses
  %i.kr = fcmp nsz ogt float %i.kq, 1.000000e+00
  %..i24.i348 = select nsz i1 %i.kr, float 1.000000e+00, float %i.kq
  %i.ks = fsub nsz float %.val328, %..i24.i348
  br label %remap_log.exit350

bb.ac:                                            ; preds = %bb.z
  %i.kt = fdiv nsz float %i.kj, %i.t
  %i.ku = tail call nsz float @llvm.exp.f32(float %i.kt)
  %i.kv = fsub nsz float %.val328, %i.ku
  %i.kw = tail call nsz float @llvm.sqrt.f32(float %i.kv)
  br label %remap_log.exit350

bb.ad:                                            ; preds = %bb.z
  %i.kx = fdiv nsz float %i.kj, %i.t
  %i.ky = tail call nsz float @llvm.exp.f32(float %i.kx)
  %i.kz = fsub nsz float %.val328, %i.ky
  %i.la = tail call nsz float @cbrtf(float noundef %i.kz) #14
  br label %remap_log.exit350

bb.ae:                                            ; preds = %bb.z
  %i.lb = fdiv nsz float %i.kj, %i.t
  %i.lc = tail call nsz float @llvm.exp.f32(float %i.lb)
  %i.ld = fsub nsz float %.val328, %i.lc
  %i.le = tail call nsz float @llvm.pow.f32(float %i.ld, float 2.500000e-01)
  br label %remap_log.exit350

unreachable.i349:                                 ; preds = %bb.z
  unreachable

remap_log.exit350:                                ; preds = %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae
  %.0.i346 = phi nsz float [ %i.le, %bb.ae ], [ %i.km, %bb.aa ], [ %i.ks, %bb.ab ], [ %i.kw, %bb.ac ], [ %i.la, %bb.ad ] ; 2 uses
  %i.lf = fcmp nsz ogt float %.0.i346, 0.000000e+00
  %i.lg = select nsz i1 %i.lf, float %.0.i346, float 0.000000e+00 ; 2 uses
  %i.lh = fcmp nsz ogt float %i.lg, 1.000000e+00
  %..i.i347 = select nsz i1 %i.lh, float 1.000000e+00, float %i.lg ; 2 uses
  %i.li = fmul nsz float %i.jx, %..i.i347
  %i.lj = trunc nuw nsw i64 %indvars.iv to i32
  %i.lk = uitofp nsz nneg i32 %i.lj to float
  %i.ll = insertelement <2 x float> poison, float %..i.i347, i64 0
  %i.lm = insertelement <2 x float> %i.ll, float %i.lk, i64 1
  %i.ln = insertelement <2 x float> %i.cc, float %.0269405, i64 0
  %i.lo = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lm, <2 x float> %i.ka, <2 x float> %i.ln) ; 2 uses
  %i.lp = extractelement <2 x float> %i.lo, i64 1
  %i.lq = fpext nsz float %i.lp to double
  %i.lr = fmul nsz double %i.lq, f0x401921FB54442D18
  %i.ls = fptrunc nsz double %i.lr to float
  %sincos = tail call nsz { float, float } @llvm.sincos.f32(float %i.ls) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0
  %cos = extractvalue { float, float } %sincos, 1
  %i.lt = insertelement <2 x float> poison, float %i.li, i64 0
  %i.lu = shufflevector <2 x float> %i.lt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lv = insertelement <2 x float> poison, float %sin, i64 0
  %i.lw = insertelement <2 x float> %i.lv, float %cos, i64 1
  %i.lx = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lu, <2 x float> %i.lw, <2 x float> %i.kc) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %i.ly = extractelement <2 x float> %i.lo, i64 0 ; 2 uses
  br i1 %exitcond.not, label %._crit_edge, label %bb.z, !llvm.loop !190

bb.af:                                            ; preds = %._crit_edge
  %i.lz = fmul nsz float %.0269.lcssa, 2.550000e+02
  %i.ma = tail call i64 @llvm.lrint.i64.f32(float %i.lz) ; 2 uses
  %i.mb = trunc i64 %i.ma to i32                  ; 2 uses
  %.not.i312 = icmp ult i32 %i.mb, 256
  %isnotneg.i313 = icmp sgt i32 %i.mb, -1
  %i.mc = sext i1 %isnotneg.i313 to i8
  %i.md = trunc i64 %i.ma to i8
  %.0.i314 = select i1 %.not.i312, i8 %i.md, i8 %i.mc
  store i8 %.0.i314, ptr %.2279, align 1, !tbaa !106
  %i.me = extractelement <2 x float> %i.kb, i64 0
  %i.mf = fmul nsz float %i.me, 2.550000e+02
  %i.mg = tail call i64 @llvm.lrint.i64.f32(float %i.mf) ; 2 uses
  %i.mh = trunc i64 %i.mg to i32                  ; 2 uses
  %.not.i309 = icmp ult i32 %i.mh, 256
  %isnotneg.i310 = icmp sgt i32 %i.mh, -1
  %i.mi = sext i1 %isnotneg.i310 to i8
  %i.mj = trunc i64 %i.mg to i8
  %.0.i311 = select i1 %.not.i309, i8 %i.mj, i8 %i.mi
  store i8 %.0.i311, ptr %.2276, align 1, !tbaa !106
  %i.mk = extractelement <2 x float> %i.kb, i64 1
  %i.ml = fmul nsz float %i.mk, 2.550000e+02
  %i.mm = tail call i64 @llvm.lrint.i64.f32(float %i.ml) ; 2 uses
  %i.mn = trunc i64 %i.mm to i32                  ; 2 uses
  %.not.i306 = icmp ult i32 %i.mn, 256
  %isnotneg.i307 = icmp sgt i32 %i.mn, -1
  %i.mo = sext i1 %isnotneg.i307 to i8
  %i.mp = trunc i64 %i.mm to i8
  %.0.i308 = select i1 %.not.i306, i8 %i.mp, i8 %i.mo
  store i8 %.0.i308, ptr %.2273, align 1, !tbaa !106
  %.not289 = icmp eq ptr %.2, null
  br i1 %.not289, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.mq = load i8, ptr %.2279, align 1, !tbaa !106
  store i8 %i.mq, ptr %.2, align 1, !tbaa !106
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag, %._crit_edge
  br i1 %i.bs, label %bb.ai, label %bb.bi

bb.ai:                                            ; preds = %bb.ah
  %i.mr = trunc nsw i64 %indvars.iv422 to i32
  %i.ms = extractelement <2 x float> %i.kb, i64 0
  %i.mt = extractelement <2 x float> %i.kb, i64 1
  tail call fastcc void @draw_bar(ptr noundef nonnull %i.b, i32 noundef %i.mr, float noundef %.0269.lcssa, float noundef %i.ms, float noundef %i.mt)
  br label %bb.bi

bb.aj:                                            ; preds = %bb.n
  %i.mu = load float, ptr %i.ci, align 4, !tbaa !97 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %i.mw = load float, ptr %i.mv, align 4, !tbaa !98 ; 2 uses
  %i.mx = tail call nsz float @hypotf(float noundef %i.mu, float noundef %i.mw) #14
  %.val325 = load float, ptr %i.bp, align 8, !tbaa !196
  %.val326 = load float, ptr %i.bq, align 4, !tbaa !197 ; 5 uses
  %i.my = fadd nsz float %i.mx, %.val325          ; 5 uses
  switch i32 %i.aj, label %unreachable.i354 [
    i32 1, label %bb.ak
    i32 0, label %bb.al
    i32 2, label %bb.am
    i32 3, label %bb.an
    i32 4, label %bb.ao
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.mz = fdiv nsz float %i.my, %i.t
  %i.na = tail call nsz float @llvm.exp.f32(float %i.mz)
  %i.nb = fsub nsz float %.val326, %i.na
  br label %remap_log.exit355

bb.al:                                            ; preds = %bb.aj
  %i.nc = tail call nsz float @llvm.log.f32(float %i.my)
  %i.nd = fmul nsz float %i.t, %i.nc              ; 2 uses
  %i.ne = fcmp nsz ogt float %i.nd, 0.000000e+00
  %i.nf = select nsz i1 %i.ne, float %i.nd, float 0.000000e+00 ; 2 uses
  %i.ng = fcmp nsz ogt float %i.nf, 1.000000e+00
  %..i24.i353 = select nsz i1 %i.ng, float 1.000000e+00, float %i.nf
  %i.nh = fsub nsz float %.val326, %..i24.i353
  br label %remap_log.exit355

bb.am:                                            ; preds = %bb.aj
  %i.ni = fdiv nsz float %i.my, %i.t
  %i.nj = tail call nsz float @llvm.exp.f32(float %i.ni)
  %i.nk = fsub nsz float %.val326, %i.nj
  %i.nl = tail call nsz float @llvm.sqrt.f32(float %i.nk)
  br label %remap_log.exit355

bb.an:                                            ; preds = %bb.aj
  %i.nm = fdiv nsz float %i.my, %i.t
end_hunk_0
