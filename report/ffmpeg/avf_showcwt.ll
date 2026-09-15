Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/avf_showcwt?download=true
inline.NumInlined: 18
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@output_frame:bb.a
  %i.jp = tail call i64 @av_rescale(i64 noundef %i.ji, i64 noundef %i.jl, i64 noundef %i.jo) #14
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge331, %bb.ac
  %i.jq = phi ptr [ %i.jf, %bb.ac ], [ %i.je, %._crit_edge331 ]
  %i.jr = phi i32 [ %i.jk, %bb.ac ], [ %.pre332, %._crit_edge331 ]
  %i.js = phi i64 [ %i.jp, %bb.ac ], [ 0, %._crit_edge331 ]
  %i.jt = getelementptr inbounds nuw i8, ptr %i.i, i64 296
  %i.ju = load i32, ptr %i.jt, align 8, !tbaa !72
  %i.jv = sub nsw i32 %i.ju, %i.jr
  %i.jw = ashr i32 %i.jv, 1
  %i.jx = sext i32 %i.jw to i64
  %i.jy = sub nsw i64 %i.js, %i.jx
  %i.jz = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.ka = load i32, ptr %i.jz, align 8, !tbaa !65
  %.sroa.2.0.insert.ext.i = zext i32 %i.ka to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, 1
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
  %4 = insertelement <2 x float> poison, float %.val334, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fd = fsub nsz <2 x float> %5, %i.fc          ; 2 uses
  %i.fe = fcmp nsz ogt <2 x float> %i.fd, zeroinitializer
  %i.ff = select <2 x i1> %i.fe, <2 x float> %i.fd, <2 x float> zeroinitializer ; 2 uses
  %i.fg = fcmp nsz ogt <2 x float> %i.ff, splat (float 1.000000e+00)
  %i.fh = select <2 x i1> %i.fg, <2 x float> splat (float 1.000000e+00), <2 x float> %i.ff
  %i.fi = fadd nsz float %i.ew, %.val333
  %i.fj = fdiv nsz float %i.fi, %i.t
  %i.fk = tail call nsz float @llvm.exp.f32(float %i.fj)
  %i.fl = fsub nsz float %.val334, %i.fk
  br label %remap_log.exit345

bb.q:                                             ; preds = %bb.o
  %i.fm = fadd nsz float %i.et, %.val333
  %i.fn = tail call nsz float @llvm.log.f32(float %i.ex)
  %i.fo = tail call nsz float @llvm.log.f32(float %i.fm)
  %i.fp = insertelement <2 x float> poison, float %i.fo, i64 0
  %i.fq = insertelement <2 x float> %i.fp, float %i.fn, i64 1
  %i.fr = fmul nsz <2 x float> %i.cb, %i.fq       ; 2 uses
  %i.fs = fcmp nsz ogt <2 x float> %i.fr, zeroinitializer
  %i.ft = select <2 x i1> %i.fs, <2 x float> %i.fr, <2 x float> zeroinitializer ; 2 uses
  %i.fu = fcmp nsz ogt <2 x float> %i.ft, splat (float 1.000000e+00)
  %i.fv = select <2 x i1> %i.fu, <2 x float> splat (float 1.000000e+00), <2 x float> %i.ft
  %6 = insertelement <2 x float> poison, float %.val334, i64 0
  %7 = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fw = fsub nsz <2 x float> %7, %i.fv          ; 2 uses
  %i.fx = fcmp nsz ogt <2 x float> %i.fw, zeroinitializer
  %i.fy = select <2 x i1> %i.fx, <2 x float> %i.fw, <2 x float> zeroinitializer ; 2 uses
  %i.fz = fcmp nsz ogt <2 x float> %i.fy, splat (float 1.000000e+00)
  %i.ga = select <2 x i1> %i.fz, <2 x float> splat (float 1.000000e+00), <2 x float> %i.fy
  %i.gb = fadd nsz float %i.ew, %.val333
  %i.gc = tail call nsz float @llvm.log.f32(float %i.gb)
  %i.gd = fmul nsz float %i.t, %i.gc              ; 2 uses
  %i.ge = fcmp nsz ogt float %i.gd, 0.000000e+00
  %i.gf = select nsz i1 %i.ge, float %i.gd, float 0.000000e+00 ; 2 uses
  %i.gg = fcmp nsz ogt float %i.gf, 1.000000e+00
  %..i24.i343 = select nsz i1 %i.gg, float 1.000000e+00, float %i.gf
  %i.gh = fsub nsz float %.val334, %..i24.i343
  br label %remap_log.exit345

bb.r:                                             ; preds = %bb.o
  %i.gi = fadd nsz float %i.et, %.val333
  %i.gj = insertelement <2 x float> poison, float %i.gi, i64 0
  %i.gk = insertelement <2 x float> %i.gj, float %i.ex, i64 1
  %i.gl = fdiv nsz <2 x float> %i.gk, %i.cb
  %i.gm = tail call nsz <2 x float> @llvm.exp.v2f32(<2 x float> %i.gl)
  %8 = insertelement <2 x float> poison, float %.val334, i64 0
  %9 = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gn = fsub nsz <2 x float> %9, %i.gm          ; 2 uses
  %i.go = tail call nsz <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.gn)
  %i.gp = fcmp nsz ogt <2 x float> %i.gn, zeroinitializer
  %i.gq = select <2 x i1> %i.gp, <2 x float> %i.go, <2 x float> zeroinitializer ; 2 uses
  %i.gr = fcmp nsz ogt <2 x float> %i.gq, splat (float 1.000000e+00)
  %i.gs = select <2 x i1> %i.gr, <2 x float> splat (float 1.000000e+00), <2 x float> %i.gq
  %i.gt = fadd nsz float %i.ew, %.val333
  %i.gu = fdiv nsz float %i.gt, %i.t
  %i.gv = tail call nsz float @llvm.exp.f32(float %i.gu)
  %i.gw = fsub nsz float %.val334, %i.gv
  %i.gx = tail call nsz float @llvm.sqrt.f32(float %i.gw)
  br label %remap_log.exit345

bb.s:                                             ; preds = %bb.o
  %i.gy = fdiv nsz float %i.ex, %i.t
  %i.gz = tail call nsz float @llvm.exp.f32(float %i.gy)
  %i.ha = fsub nsz float %.val334, %i.gz
  %i.hb = tail call nsz float @cbrtf(float noundef %i.ha) #14
  %i.hc = insertelement <2 x float> poison, float %i.ew, i64 0
  %10 = insertelement <2 x float> %i.hc, float %i.et, i64 1
  %i.hd = insertelement <2 x float> poison, float %.val333, i64 0
  %i.he = shufflevector <2 x float> %i.hd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hf = fadd nsz <2 x float> %10, %i.he
  %i.hg = fdiv nsz <2 x float> %i.hf, %i.cb
  %i.hh = tail call nsz <2 x float> @llvm.exp.v2f32(<2 x float> %i.hg)
  %11 = insertelement <2 x float> poison, float %.val334, i64 0
  %12 = shufflevector <2 x float> %11, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hi = fsub nsz <2 x float> %12, %i.hh         ; 2 uses
  %i.hj = extractelement <2 x float> %i.hi, i64 1
  %i.hk = tail call nsz float @cbrtf(float noundef %i.hj) #14
  %i.hl = insertelement <2 x float> poison, float %i.hk, i64 0
  %i.hm = insertelement <2 x float> %i.hl, float %i.hb, i64 1 ; 2 uses
  %i.hn = fcmp nsz ogt <2 x float> %i.hm, zeroinitializer
  %i.ho = select <2 x i1> %i.hn, <2 x float> %i.hm, <2 x float> zeroinitializer ; 2 uses
  %i.hp = fcmp nsz ogt <2 x float> %i.ho, splat (float 1.000000e+00)
  %i.hq = select <2 x i1> %i.hp, <2 x float> splat (float 1.000000e+00), <2 x float> %i.ho
  %i.hr = extractelement <2 x float> %i.hi, i64 0
  %i.hs = tail call nsz float @cbrtf(float noundef %i.hr) #14
  br label %remap_log.exit345

bb.t:                                             ; preds = %bb.o
  %i.ht = fadd nsz float %i.et, %.val333
  %i.hu = insertelement <2 x float> poison, float %i.ht, i64 0
  %i.hv = insertelement <2 x float> %i.hu, float %i.ex, i64 1
  %i.hw = fdiv nsz <2 x float> %i.hv, %i.cb
  %i.hx = tail call nsz <2 x float> @llvm.exp.v2f32(<2 x float> %i.hw)
  %13 = insertelement <2 x float> poison, float %.val334, i64 0
  %14 = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hy = fsub nsz <2 x float> %14, %i.hx
  %i.hz = tail call nsz <2 x float> @llvm.pow.v2f32(<2 x float> %i.hy, <2 x float> splat (float 2.500000e-01)) ; 2 uses
  %i.ia = fcmp nsz ogt <2 x float> %i.hz, zeroinitializer
  %i.ib = select <2 x i1> %i.ia, <2 x float> %i.hz, <2 x float> zeroinitializer ; 2 uses
  %i.ic = fcmp nsz ogt <2 x float> %i.ib, splat (float 1.000000e+00)
  %i.id = select <2 x i1> %i.ic, <2 x float> splat (float 1.000000e+00), <2 x float> %i.ib
  %i.ie = fadd nsz float %i.ew, %.val333
  %i.if = fdiv nsz float %i.ie, %i.t
  %i.ig = tail call nsz float @llvm.exp.f32(float %i.if)
  %i.ih = fsub nsz float %.val334, %i.ig
  %i.ii = tail call nsz float @llvm.pow.f32(float %i.ih, float 2.500000e-01)
  br label %remap_log.exit345

remap_log.exit345:                                ; preds = %bb.p, %bb.q, %bb.r, %bb.s, %bb.t
  %.0.i341 = phi nsz float [ %i.ii, %bb.t ], [ %i.fl, %bb.p ], [ %i.gh, %bb.q ], [ %i.gx, %bb.r ], [ %i.hs, %bb.s ] ; 2 uses
  %i.ij = phi <2 x float> [ %i.id, %bb.t ], [ %i.fh, %bb.p ], [ %i.ga, %bb.q ], [ %i.gs, %bb.r ], [ %i.hq, %bb.s ] ; 2 uses
  %i.ik = fcmp nsz ogt float %.0.i341, 0.000000e+00
  %i.il = select nsz i1 %i.ik, float %.0.i341, float 0.000000e+00 ; 2 uses
  %i.im = fcmp nsz ogt float %i.il, 1.000000e+00
  %..i.i342 = select nsz i1 %i.im, float 1.000000e+00, float %i.il ; 2 uses
  %i.in = extractelement <2 x float> %i.ij, i64 0 ; 2 uses
  %i.io = fsub nsz float %..i.i342, %i.in
  %i.ip = fpext nsz float %i.io to double
  %i.iq = fmul nsz double %i.ip, f0x3FF921FB54442D18
  %i.ir = fptrunc nsz double %i.iq to float
  %i.is = tail call nsz float @llvm.sin.f32(float %i.ir) ; 2 uses
  %i.it = fsub nsz float %i.in, %..i.i342
  %i.iu = fpext nsz float %i.it to double
  %i.iv = fmul nsz double %i.iu, f0x3FF921FB54442D18
  %i.iw = fptrunc nsz double %i.iv to float
  %i.ix = tail call nsz float @llvm.sin.f32(float %i.iw) ; 2 uses
  %i.iy = fmul nsz float %i.ix, %i.bx
  %i.iz = tail call nsz float @llvm.fmuladd.f32(float %i.is, float %cos292, float %i.iy)
  %i.ja = fmul nsz float %cos292, %i.ix
  %i.jb = tail call nsz float @llvm.fmuladd.f32(float %i.is, float %sin291, float %i.ja)
  %i.jc = extractelement <2 x float> %i.ij, i64 1 ; 3 uses
  %i.jd = fmul nsz float %i.jc, 5.000000e-01      ; 2 uses
  %i.je = tail call nsz float @llvm.fmuladd.f32(float %i.jd, float %i.iz, float 5.000000e-01) ; 2 uses
  %i.jf = tail call nsz float @llvm.fmuladd.f32(float %i.jd, float %i.jb, float 5.000000e-01) ; 2 uses
  br i1 %i.br, label %bb.u, label %bb.w

bb.u:                                             ; preds = %remap_log.exit345
  %i.jg = fmul nsz float %i.jc, 2.550000e+02
  %i.jh = tail call i64 @llvm.lrint.i64.f32(float %i.jg) ; 2 uses
  %i.ji = trunc i64 %i.jh to i32                  ; 2 uses
  %.not.i321 = icmp ult i32 %i.ji, 256
  %isnotneg.i322 = icmp sgt i32 %i.ji, -1
  %i.jj = sext i1 %isnotneg.i322 to i8
  %i.jk = trunc i64 %i.jh to i8
  %.0.i323 = select i1 %.not.i321, i8 %i.jk, i8 %i.jj
  store i8 %.0.i323, ptr %.2279, align 1, !tbaa !106
  %i.jl = fmul nsz float %i.je, 2.550000e+02
  %i.jm = tail call i64 @llvm.lrint.i64.f32(float %i.jl) ; 2 uses
  %i.jn = trunc i64 %i.jm to i32                  ; 2 uses
  %.not.i318 = icmp ult i32 %i.jn, 256
  %isnotneg.i319 = icmp sgt i32 %i.jn, -1
  %i.jo = sext i1 %isnotneg.i319 to i8
  %i.jp = trunc i64 %i.jm to i8
  %.0.i320 = select i1 %.not.i318, i8 %i.jp, i8 %i.jo
  store i8 %.0.i320, ptr %.2276, align 1, !tbaa !106
  %i.jq = fmul nsz float %i.jf, 2.550000e+02
  %i.jr = tail call i64 @llvm.lrint.i64.f32(float %i.jq) ; 2 uses
  %i.js = trunc i64 %i.jr to i32                  ; 2 uses
  %.not.i315 = icmp ult i32 %i.js, 256
  %isnotneg.i316 = icmp sgt i32 %i.js, -1
  %i.jt = sext i1 %isnotneg.i316 to i8
  %i.ju = trunc i64 %i.jr to i8
  %.0.i317 = select i1 %.not.i315, i8 %i.ju, i8 %i.jt
  store i8 %.0.i317, ptr %.2273, align 1, !tbaa !106
  %.not293 = icmp eq ptr %.2, null
  br i1 %.not293, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.jv = load i8, ptr %.2279, align 1, !tbaa !106
  store i8 %i.jv, ptr %.2, align 1, !tbaa !106
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %remap_log.exit345
  br i1 %i.bs, label %bb.x, label %bb.bi

bb.x:                                             ; preds = %bb.w
  %i.jw = trunc nsw i64 %indvars.iv422 to i32
  tail call fastcc void @draw_bar(ptr noundef nonnull %i.b, i32 noundef %i.jw, float noundef %i.jc, float noundef %i.je, float noundef %i.jf)
  br label %bb.bi

bb.y:                                             ; preds = %bb.n
  %i.jx = load i32, ptr %i.ah, align 4, !tbaa !45 ; 3 uses
  %i.jy = sitofp nsz i32 %i.jx to float
  %i.jz = fdiv nsz float 1.000000e+00, %i.jy      ; 2 uses
  %i.ka = icmp sgt i32 %i.jx, 0
  br i1 %i.ka, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.y
  %.val327 = load float, ptr %i.bp, align 8, !tbaa !196
  %.val328 = load float, ptr %i.bq, align 4, !tbaa !197 ; 5 uses
  %wide.trip.count = zext nneg i32 %i.jx to i64
  %i.kb = insertelement <2 x float> poison, float %i.jz, i64 0
  %i.kc = shufflevector <2 x float> %i.kb, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.z

._crit_edge:                                      ; preds = %remap_log.exit350, %bb.y
  %.0269.lcssa = phi float [ 0.000000e+00, %bb.y ], [ %i.ma, %remap_log.exit350 ] ; 2 uses
  %i.kd = phi <2 x float> [ splat (float 5.000000e-01), %bb.y ], [ %i.lz, %remap_log.exit350 ] ; 4 uses
  br i1 %i.br, label %bb.af, label %bb.ah

bb.z:                                             ; preds = %.lr.ph, %remap_log.exit350
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %remap_log.exit350 ] ; 3 uses
  %.0269405 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.ma, %remap_log.exit350 ]
  %i.ke = phi <2 x float> [ splat (float 5.000000e-01), %.lr.ph ], [ %i.lz, %remap_log.exit350 ]
  %i.kf = mul nsw i64 %indvars.iv, %i.by
  %i.kg = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %i.kf ; 2 uses
  %i.kh = load float, ptr %i.kg, align 4, !tbaa !97
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 4
  %i.kj = load float, ptr %i.ki, align 4, !tbaa !98
  %i.kk = tail call nsz float @hypotf(float noundef %i.kh, float noundef %i.kj) #14
  %i.kl = fadd nsz float %i.kk, %.val327          ; 5 uses
  switch i32 %i.aj, label %unreachable.i349 [
    i32 1, label %bb.aa
    i32 0, label %bb.ab
    i32 2, label %bb.ac
    i32 3, label %bb.ad
    i32 4, label %bb.ae
  ]

bb.aa:                                            ; preds = %bb.z
  %i.km = fdiv nsz float %i.kl, %i.t
  %i.kn = tail call nsz float @llvm.exp.f32(float %i.km)
  %i.ko = fsub nsz float %.val328, %i.kn
  br label %remap_log.exit350

bb.ab:                                            ; preds = %bb.z
  %i.kp = tail call nsz float @llvm.log.f32(float %i.kl)
  %i.kq = fmul nsz float %i.t, %i.kp              ; 2 uses
  %i.kr = fcmp nsz ogt float %i.kq, 0.000000e+00
  %i.ks = select nsz i1 %i.kr, float %i.kq, float 0.000000e+00 ; 2 uses
  %i.kt = fcmp nsz ogt float %i.ks, 1.000000e+00
  %..i24.i348 = select nsz i1 %i.kt, float 1.000000e+00, float %i.ks
  %i.ku = fsub nsz float %.val328, %..i24.i348
  br label %remap_log.exit350

bb.ac:                                            ; preds = %bb.z
  %i.kv = fdiv nsz float %i.kl, %i.t
  %i.kw = tail call nsz float @llvm.exp.f32(float %i.kv)
  %i.kx = fsub nsz float %.val328, %i.kw
  %i.ky = tail call nsz float @llvm.sqrt.f32(float %i.kx)
  br label %remap_log.exit350

bb.ad:                                            ; preds = %bb.z
  %i.kz = fdiv nsz float %i.kl, %i.t
  %i.la = tail call nsz float @llvm.exp.f32(float %i.kz)
  %i.lb = fsub nsz float %.val328, %i.la
  %i.lc = tail call nsz float @cbrtf(float noundef %i.lb) #14
  br label %remap_log.exit350

bb.ae:                                            ; preds = %bb.z
  %i.ld = fdiv nsz float %i.kl, %i.t
  %i.le = tail call nsz float @llvm.exp.f32(float %i.ld)
  %i.lf = fsub nsz float %.val328, %i.le
  %i.lg = tail call nsz float @llvm.pow.f32(float %i.lf, float 2.500000e-01)
  br label %remap_log.exit350

unreachable.i349:                                 ; preds = %bb.z
  unreachable

remap_log.exit350:                                ; preds = %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae
  %.0.i346 = phi nsz float [ %i.lg, %bb.ae ], [ %i.ko, %bb.aa ], [ %i.ku, %bb.ab ], [ %i.ky, %bb.ac ], [ %i.lc, %bb.ad ] ; 2 uses
  %i.lh = fcmp nsz ogt float %.0.i346, 0.000000e+00
  %i.li = select nsz i1 %i.lh, float %.0.i346, float 0.000000e+00 ; 2 uses
  %i.lj = fcmp nsz ogt float %i.li, 1.000000e+00
  %..i.i347 = select nsz i1 %i.lj, float 1.000000e+00, float %i.li ; 2 uses
  %i.lk = fmul nsz float %i.jz, %..i.i347
  %i.ll = trunc nuw nsw i64 %indvars.iv to i32
  %i.lm = uitofp nsz nneg i32 %i.ll to float
  %i.ln = insertelement <2 x float> poison, float %..i.i347, i64 0
  %i.lo = insertelement <2 x float> %i.ln, float %i.lm, i64 1
  %i.lp = insertelement <2 x float> %i.cc, float %.0269405, i64 0
  %i.lq = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lo, <2 x float> %i.kc, <2 x float> %i.lp) ; 2 uses
  %i.lr = extractelement <2 x float> %i.lq, i64 1
  %i.ls = fpext nsz float %i.lr to double
  %i.lt = fmul nsz double %i.ls, f0x401921FB54442D18
  %i.lu = fptrunc nsz double %i.lt to float
  %sincos = tail call nsz { float, float } @llvm.sincos.f32(float %i.lu) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0
  %cos = extractvalue { float, float } %sincos, 1
  %i.lv = insertelement <2 x float> poison, float %i.lk, i64 0
  %i.lw = shufflevector <2 x float> %i.lv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lx = insertelement <2 x float> poison, float %sin, i64 0
  %i.ly = insertelement <2 x float> %i.lx, float %cos, i64 1
  %i.lz = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lw, <2 x float> %i.ly, <2 x float> %i.ke) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %i.ma = extractelement <2 x float> %i.lq, i64 0 ; 2 uses
  br i1 %exitcond.not, label %._crit_edge, label %bb.z, !llvm.loop !190

bb.af:                                            ; preds = %._crit_edge
  %i.mb = fmul nsz float %.0269.lcssa, 2.550000e+02
  %i.mc = tail call i64 @llvm.lrint.i64.f32(float %i.mb) ; 2 uses
  %i.md = trunc i64 %i.mc to i32                  ; 2 uses
  %.not.i312 = icmp ult i32 %i.md, 256
  %isnotneg.i313 = icmp sgt i32 %i.md, -1
  %i.me = sext i1 %isnotneg.i313 to i8
  %i.mf = trunc i64 %i.mc to i8
  %.0.i314 = select i1 %.not.i312, i8 %i.mf, i8 %i.me
  store i8 %.0.i314, ptr %.2279, align 1, !tbaa !106
  %i.mg = extractelement <2 x float> %i.kd, i64 0
  %i.mh = fmul nsz float %i.mg, 2.550000e+02
  %i.mi = tail call i64 @llvm.lrint.i64.f32(float %i.mh) ; 2 uses
  %i.mj = trunc i64 %i.mi to i32                  ; 2 uses
  %.not.i309 = icmp ult i32 %i.mj, 256
  %isnotneg.i310 = icmp sgt i32 %i.mj, -1
end_hunk_0
