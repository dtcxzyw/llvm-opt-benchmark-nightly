Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_dctdnoiz?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0_@filter_frame:bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !73
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !75   ; 4 uses
  %i.i = tail call i32 @av_frame_is_writable(ptr noundef %1) #12
  %.not = icmp eq i32 %i.i, 0                     ; 2 uses
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.k = load i32, ptr %i.j, align 8, !tbaa !76
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  %i.m = load i32, ptr %i.l, align 4, !tbaa !46
  %i.n = tail call ptr @ff_get_video_buffer(ptr noundef %i.h, i32 noundef %i.k, i32 noundef %i.m) #12 ; 3 uses
  %.not80 = icmp eq ptr %i.n, null
  br i1 %.not80, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @av_frame_free(ptr noundef nonnull %i.a) #12
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.o = tail call i32 @av_frame_copy_props(ptr noundef nonnull %i.n, ptr noundef %1) #12 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.073 = phi ptr [ %i.n, %bb.d ], [ %1, %bb.a ]  ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 320
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !47
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 168 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 288 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !48
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.v = load i32, ptr %i.u, align 8, !tbaa !49
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 148 ; 3 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !50
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 152 ; 4 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !51
  tail call void %i.q(ptr noundef nonnull %i.r, i32 noundef %i.t, ptr noundef %1, i32 noundef %i.v, i32 noundef %i.x, i32 noundef %i.z) #12
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 192 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 144 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.ad = load ptr, ptr %i.r, align 8, !tbaa !52
  store ptr %i.ad, ptr %2, align 8, !tbaa !54
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !52
  store ptr %i.ae, ptr %i.aa, align 8, !tbaa !55
  %i.af = load i32, ptr %i.ac, align 8, !tbaa !33
  %i.ag = call i32 @ff_filter_execute(ptr noundef nonnull %i.c, ptr noundef nonnull @filter_slice, ptr noundef nonnull %2, ptr noundef null, i32 noundef %i.af) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !52
  store ptr %i.ai, ptr %2, align 8, !tbaa !54
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !52
  store ptr %i.ak, ptr %i.aa, align 8, !tbaa !55
  %i.al = load i32, ptr %i.ac, align 8, !tbaa !33
  %i.am = call i32 @ff_filter_execute(ptr noundef nonnull %i.c, ptr noundef nonnull @filter_slice, ptr noundef nonnull %2, ptr noundef null, i32 noundef %i.al) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 184
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !52
  store ptr %i.ao, ptr %2, align 8, !tbaa !54
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 208
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !52
  store ptr %i.aq, ptr %i.aa, align 8, !tbaa !55
  %i.ar = load i32, ptr %i.ac, align 8, !tbaa !33
  %i.as = call i32 @ff_filter_execute(ptr noundef nonnull %i.c, ptr noundef nonnull @filter_slice, ptr noundef nonnull %2, ptr noundef null, i32 noundef %i.ar) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 328
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !56
  %i.av = getelementptr inbounds nuw i8, ptr %.073, i64 64 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !49
  %i.ax = load i32, ptr %i.s, align 8, !tbaa !48
  %i.ay = load i32, ptr %i.w, align 4, !tbaa !50
  %i.az = load i32, ptr %i.y, align 8, !tbaa !51
  call void %i.au(ptr noundef %.073, i32 noundef %i.aw, ptr noundef nonnull %i.ab, i32 noundef %i.ax, i32 noundef %i.ay, i32 noundef %i.az) #12
  br i1 %.not, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ba = load ptr, ptr %.073, align 8, !tbaa !57 ; 2 uses
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !72  ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !57 ; 2 uses
  %i.bd = load i32, ptr %i.av, align 8, !tbaa !49 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 64
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !49 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !76 ; 2 uses
  %i.bi = load i32, ptr %i.w, align 4, !tbaa !50  ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !46 ; 2 uses
  %i.bl = load i32, ptr %i.y, align 8, !tbaa !51  ; 4 uses
  %i.bm = sub i32 %i.bk, %i.bl                    ; 4 uses
  %.not82 = icmp ne i32 %i.bh, %i.bi
  %i.bn = icmp sgt i32 %i.bl, 0
  %or.cond = select i1 %.not82, i1 %i.bn, i1 false
  br i1 %or.cond, label %.lr.ph, label %.loopexit84

.lr.ph:                                           ; preds = %bb.f
  %i.bo = sub nsw i32 %i.bh, %i.bi
  %i.bp = mul nsw i32 %i.bo, 3
  %i.bq = mul nsw i32 %i.bi, 3
  %i.br = sext i32 %i.bq to i64                   ; 2 uses
  %i.bs = getelementptr inbounds i8, ptr %i.bc, i64 %i.br
  %i.bt = getelementptr inbounds i8, ptr %i.ba, i64 %i.br
  %i.bu = sext i32 %i.bp to i64
  %i.bv = sext i32 %i.bd to i64
  %i.bw = sext i32 %i.bf to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %.07088 = phi ptr [ %i.bs, %.lr.ph ], [ %i.by, %bb.g ] ; 2 uses
  %.07187 = phi ptr [ %i.bt, %.lr.ph ], [ %i.bx, %bb.g ] ; 2 uses
  %.07286 = phi i32 [ 0, %.lr.ph ], [ %i.bz, %bb.g ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.07187, ptr align 1 %.07088, i64 %i.bu, i1 false)
  %i.bx = getelementptr inbounds i8, ptr %.07187, i64 %i.bv
  %i.by = getelementptr inbounds i8, ptr %.07088, i64 %i.bw
  %i.bz = add nuw nsw i32 %.07286, 1              ; 2 uses
  %i.ca = load i32, ptr %i.y, align 8, !tbaa !51  ; 2 uses
  %i.cb = icmp slt i32 %i.bz, %i.ca
  br i1 %i.cb, label %bb.g, label %.loopexit84, !llvm.loop !69

.loopexit84:                                      ; preds = %bb.g, %bb.f
  %i.cc = phi i32 [ %i.bl, %bb.f ], [ %i.ca, %bb.g ] ; 2 uses
  %i.cd = icmp sgt i32 %i.bm, 0
  br i1 %i.cd, label %.lr.ph92, label %.loopexit

.lr.ph92:                                         ; preds = %.loopexit84
  %i.ce = mul nsw i32 %i.cc, %i.bf
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds i8, ptr %i.bc, i64 %i.cf ; 2 uses
  %i.ch = mul nsw i32 %i.cc, %i.bd
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds i8, ptr %i.ba, i64 %i.ci ; 2 uses
  %i.ck = sext i32 %i.bd to i64                   ; 2 uses
  %i.cl = sext i32 %i.bf to i64                   ; 2 uses
  %.neg = add i32 %i.bl, 1
  %xtraiter = and i32 %i.bm, 1
  %i.cm = icmp eq i32 %i.bk, %.neg
  br i1 %i.cm, label %.epil.preheader, label %.lr.ph92.new

.lr.ph92.new:                                     ; preds = %.lr.ph92
  %unroll_iter = and i32 %i.bm, 2147483646
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph92.new
  %.091 = phi ptr [ %i.cg, %.lr.ph92.new ], [ %i.cw, %bb.h ] ; 2 uses
  %.06990 = phi ptr [ %i.cj, %.lr.ph92.new ], [ %i.cv, %bb.h ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph92.new ], [ %niter.next.1, %bb.h ]
  %i.cn = load i32, ptr %i.bg, align 8, !tbaa !76
  %i.co = mul nsw i32 %i.cn, 3
  %i.cp = sext i32 %i.co to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.06990, ptr align 1 %.091, i64 %i.cp, i1 false)
  %i.cq = getelementptr inbounds i8, ptr %.06990, i64 %i.ck ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %.091, i64 %i.cl ; 2 uses
  %i.cs = load i32, ptr %i.bg, align 8, !tbaa !76
  %i.ct = mul nsw i32 %i.cs, 3
  %i.cu = sext i32 %i.ct to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cq, ptr align 1 %i.cr, i64 %i.cu, i1 false)
  %i.cv = getelementptr inbounds i8, ptr %i.cq, i64 %i.ck ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %i.cr, i64 %i.cl ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.h, !llvm.loop !70

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.h
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph92
  %.091.epil.init = phi ptr [ %i.cg, %.lr.ph92 ], [ %i.cw, %.loopexit.loopexit.unr-lcssa ]
  %.06990.epil.init = phi ptr [ %i.cj, %.lr.ph92 ], [ %i.cv, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod99 = trunc i32 %i.bm to i1
  call void @llvm.assume(i1 %lcmp.mod99)
  %i.cx = load i32, ptr %i.bg, align 8, !tbaa !76
  %i.cy = mul nsw i32 %i.cx, 3
  %i.cz = sext i32 %i.cy to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.06990.epil.init, ptr align 1 %.091.epil.init, i64 %i.cz, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.loopexit84
  call void @av_frame_free(ptr noundef nonnull %i.a) #12
  br label %bb.i

bb.i:                                             ; preds = %.loopexit, %bb.e
  %i.da = call i32 @ff_filter_frame(ptr noundef %i.h, ptr noundef nonnull %.073) #12
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.c
  %.076 = phi i32 [ %i.da, %bb.i ], [ -12, %bb.c ]
  ret i32 %.076
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @config_input(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23   ; 19 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 300
  %i.f = load i32, ptr %i.e, align 4, !tbaa !27
  %.fr = freeze i32 %i.f                          ; 4 uses
  %i.g = shl nuw i32 1, %.fr                      ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.i = load i32, ptr %i.h, align 4, !tbaa !86
  switch i32 %i.i, label %bb.d [
    i32 3, label %bb.e
    i32 2, label %bb.b
    i32 71, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 557) #12
  tail call void @abort() #13
  unreachable

bb.e:                                             ; preds = %bb.a, %bb.c, %bb.b
  %color_decorrelation_gbrp.sink = phi ptr [ @color_decorrelation_gbrp, %bb.c ], [ @color_decorrelation_rgb, %bb.b ], [ @color_decorrelation_bgr, %bb.a ]
  %color_correlation_gbrp.sink = phi ptr [ @color_correlation_gbrp, %bb.c ], [ @color_correlation_rgb, %bb.b ], [ @color_correlation_bgr, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 320
  store ptr %color_decorrelation_gbrp.sink, ptr %i.j, align 8, !tbaa !47
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 328
  store ptr %color_correlation_gbrp.sink, ptr %i.k, align 8, !tbaa !56
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 296 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !32
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 148 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 152 ; 12 uses
  %i.r = load i32, ptr %i.p, align 4, !tbaa !46
  %i.s = load <2 x i32>, ptr %i.l, align 8, !tbaa !49 ; 2 uses
  %i.t = insertelement <2 x i32> poison, i32 %i.g, i64 0
  %i.u = shufflevector <2 x i32> %i.t, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.v = sub nsw <2 x i32> %i.s, %i.u
  %i.w = insertelement <2 x i32> poison, i32 %i.n, i64 0
  %i.x = shufflevector <2 x i32> %i.w, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.y = srem <2 x i32> %i.v, %i.x                ; 2 uses
  %i.z = sub nsw <2 x i32> %i.s, %i.y             ; 2 uses
  store <2 x i32> %i.z, ptr %i.o, align 4, !tbaa !49
  %i.aa = extractelement <2 x i32> %i.y, i64 0    ; 2 uses
  %.not = icmp eq i32 %i.aa, 0
  %i.ab = extractelement <2 x i32> %i.z, i64 1
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.b, i32 noundef 24, ptr noundef nonnull @.str.6, i32 noundef %i.aa) #12
  %.pre = load i32, ptr %i.q, align 8, !tbaa !51
  %.pre226 = load i32, ptr %i.p, align 4, !tbaa !46
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ac = phi i32 [ %.pre226, %bb.f ], [ %i.r, %bb.e ] ; 3 uses
  %i.ad = phi i32 [ %.pre, %bb.f ], [ %i.ab, %bb.e ] ; 2 uses
  %.not153 = icmp eq i32 %i.ad, %i.ac
  br i1 %.not153, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = sub nsw i32 %i.ac, %i.ad
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.b, i32 noundef 24, ptr noundef nonnull @.str.7, i32 noundef %i.ae) #12
  %.pre227 = load i32, ptr %i.q, align 8, !tbaa !51
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.af = phi i32 [ %.pre227, %bb.h ], [ %i.ac, %bb.g ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 304 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !28
  %i.ai = shl i32 %i.ah, 1
  %i.aj = add i32 %i.ai, -2
  %i.ak = sdiv i32 %i.af, %i.aj                   ; 3 uses
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = tail call i32 @ff_filter_get_nb_threads(ptr noundef nonnull %i.b) #14
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.am, i32 %i.ak)
  %spec.select164 = tail call i32 @llvm.smin.i32(i32 %spec.select, i32 8) ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 144 ; 4 uses
  store i32 %spec.select164, ptr %i.an, align 8, !tbaa !33
  %i.ao = tail call i32 @ff_filter_get_nb_threads(ptr noundef nonnull %i.b) #14
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.b, i32 noundef 48, ptr noundef nonnull @.str.8, i32 noundef 8, i32 noundef %i.ak, i32 noundef %i.ao, i32 noundef %spec.select164) #12
  %i.ap = load i32, ptr %i.o, align 4, !tbaa !50
  %i.aq = add nsw i32 %i.ap, 31
  %i.ar = and i32 %i.aq, -32                      ; 10 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  store i32 %i.ar, ptr %i.as, align 8, !tbaa !48
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 168 ; 2 uses
  %i.au = load i32, ptr %i.q, align 8, !tbaa !51
  %i.av = mul nsw i32 %i.au, %i.ar
  %i.aw = sext i32 %i.av to i64
  %i.ax = tail call ptr @av_malloc_array(i64 noundef %i.aw, i64 noundef 4) #12
  store ptr %i.ax, ptr %i.at, align 8, !tbaa !52
  %i.ay = load i32, ptr %i.q, align 8, !tbaa !51
  %i.az = mul nsw i32 %i.ay, %i.ar
  %i.ba = sext i32 %i.az to i64
  %i.bb = tail call ptr @av_malloc_array(i64 noundef %i.ba, i64 noundef 4) #12
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 176 ; 2 uses
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !52
  %i.bd = load i32, ptr %i.q, align 8, !tbaa !51
  %i.be = mul nsw i32 %i.bd, %i.ar
  %i.bf = sext i32 %i.be to i64
  %i.bg = tail call ptr @av_malloc_array(i64 noundef %i.bf, i64 noundef 4) #12 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !52
  %i.bi = load ptr, ptr %i.at, align 8, !tbaa !52
  %.not160 = icmp eq ptr %i.bi, null
  br i1 %.not160, label %.loopexit, label %bb.n

bb.k:                                             ; preds = %bb.n
  %i.bj = load i32, ptr %i.q, align 8, !tbaa !51
  %i.bk = mul nsw i32 %i.bj, %i.ar
  %i.bl = sext i32 %i.bk to i64
  %i.bm = tail call ptr @av_malloc_array(i64 noundef %i.bl, i64 noundef 4) #12
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 192 ; 2 uses
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !52
  %i.bo = load i32, ptr %i.q, align 8, !tbaa !51
  %i.bp = mul nsw i32 %i.bo, %i.ar
  %i.bq = sext i32 %i.bp to i64
  %i.br = tail call ptr @av_malloc_array(i64 noundef %i.bq, i64 noundef 4) #12
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 200 ; 2 uses
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !52
  %i.bt = load i32, ptr %i.q, align 8, !tbaa !51
  %i.bu = mul nsw i32 %i.bt, %i.ar
  %i.bv = sext i32 %i.bu to i64
  %i.bw = tail call ptr @av_malloc_array(i64 noundef %i.bv, i64 noundef 4) #12 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !52
  %i.by = load ptr, ptr %i.bn, align 8, !tbaa !52
  %.not160.1 = icmp eq ptr %i.by, null
  br i1 %.not160.1, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bz = load ptr, ptr %i.bs, align 8, !tbaa !52
  %.not161.1 = icmp eq ptr %i.bz, null
  %.not162.1 = icmp eq ptr %i.bw, null
  %or.cond.1 = select i1 %.not161.1, i1 true, i1 %.not162.1
  br i1 %or.cond.1, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ca = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !29
  %.not154 = icmp eq ptr %i.cb, null
  %.pre228 = load i32, ptr %i.an, align 8, !tbaa !33 ; 2 uses
  br i1 %.not154, label %.loopexit171, label %.preheader170

bb.n:                                             ; preds = %bb.j
  %i.cc = load ptr, ptr %i.bc, align 8, !tbaa !52
  %.not161 = icmp eq ptr %i.cc, null
  %.not162 = icmp eq ptr %i.bg, null
  %or.cond = select i1 %.not161, i1 true, i1 %.not162
  br i1 %or.cond, label %.loopexit, label %bb.k

.preheader170:                                    ; preds = %bb.m
  %i.cd = icmp sgt i32 %.pre228, 0
  br i1 %i.cd, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader170
  %i.ce = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %bb.p

bb.o:                                             ; preds = %bb.p
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cf = load i32, ptr %i.an, align 8, !tbaa !33 ; 2 uses
  %i.cg = sext i32 %i.cf to i64
  %i.ch = icmp slt i64 %indvars.iv.next, %i.cg
  br i1 %i.ch, label %bb.p, label %.loopexit171, !llvm.loop !77

bb.p:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.o ] ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv
  %i.cj = load ptr, ptr %i.ca, align 8, !tbaa !29
  %i.ck = tail call i32 @av_expr_parse(ptr noundef nonnull %i.ci, ptr noundef %i.cj, ptr noundef nonnull @var_names, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.b) #12 ; 2 uses
  %i.cl = icmp sgt i32 %i.ck, -1
  br i1 %i.cl, label %bb.o, label %.loopexit

.loopexit171:                                     ; preds = %bb.o, %bb.m
  %i.cm = phi i32 [ %.pre228, %bb.m ], [ %i.cf, %bb.o ] ; 2 uses
  %i.cn = icmp sgt i32 %i.cm, 0
  br i1 %i.cn, label %.lr.ph178, label %._crit_edge

.lr.ph178:                                        ; preds = %.loopexit171
  %i.co = load i32, ptr %i.ag, align 8, !tbaa !28
  %i.cp = shl i32 %i.co, 1
  %i.cq = add i32 %i.cp, -2
  %i.cr = load i32, ptr %i.q, align 8, !tbaa !51
  %i.cs = sitofp nsz i32 %i.cr to float
  %i.ct = uitofp nneg i32 %i.cm to float
  %i.cu = fdiv nsz float %i.cs, %i.ct
  %i.cv = tail call nsz float @llvm.ceil.f32(float %i.cu)
  %i.cw = fptosi float %i.cv to i32
  %i.cx = add nsw i32 %i.cq, %i.cw
  %i.cy = sext i32 %i.ar to i64
  %i.cz = sext i32 %i.cx to i64
  %i.da = shl nsw i64 %i.cz, 2
  %i.db = getelementptr inbounds nuw i8, ptr %i.d, i64 216
  br label %bb.r

bb.q:                                             ; preds = %bb.r
  %indvars.iv.next206 = add nuw nsw i64 %indvars.iv205, 1 ; 2 uses
  %i.dc = load i32, ptr %i.an, align 8, !tbaa !33
  %i.dd = sext i32 %i.dc to i64
  %i.de = icmp slt i64 %indvars.iv.next206, %i.dd
  br i1 %i.de, label %bb.r, label %._crit_edge, !llvm.loop !78

bb.r:                                             ; preds = %.lr.ph178, %bb.q
  %indvars.iv205 = phi i64 [ 0, %.lr.ph178 ], [ %indvars.iv.next206, %bb.q ] ; 2 uses
  %i.df = tail call ptr @av_malloc_array(i64 noundef %i.cy, i64 noundef %i.da) #12 ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv205
  store ptr %i.df, ptr %i.dg, align 8, !tbaa !52
  %.not159 = icmp eq ptr %i.df, null
  br i1 %.not159, label %.loopexit, label %bb.q

._crit_edge:                                      ; preds = %bb.q, %.preheader170, %.loopexit171
  %i.dh = load i32, ptr %i.q, align 8, !tbaa !51
  %i.di = mul nsw i32 %i.dh, %i.ar
  %i.dj = sext i32 %i.di to i64
  %i.dk = shl nsw i64 %i.dj, 2
  %i.dl = tail call noalias ptr @av_malloc(i64 noundef %i.dk) #12 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.d, i64 280 ; 2 uses
  store ptr %i.dl, ptr %i.dm, align 8, !tbaa !58
  %.not155 = icmp eq ptr %i.dl, null
  br i1 %.not155, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %._crit_edge
  %i.dn = load i32, ptr %i.q, align 8, !tbaa !51
  %i.do = sext i32 %i.dn to i64
  %i.dp = sext i32 %i.ar to i64                   ; 3 uses
  %i.dq = shl nsw i64 %i.dp, 2
  %i.dr = tail call noalias ptr @av_calloc(i64 noundef %i.do, i64 noundef %i.dq) #12 ; 5 uses
  %.not156 = icmp eq ptr %i.dr, null
  br i1 %.not156, label %.loopexit, label %.preheader169

.preheader169:                                    ; preds = %bb.s
  %i.ds = load i32, ptr %i.q, align 8, !tbaa !51  ; 4 uses
  %.not157187 = icmp slt i32 %i.ds, %i.g
  br i1 %.not157187, label %.preheader165, label %.preheader168.lr.ph

.preheader168.lr.ph:                              ; preds = %.preheader169
  %i.dt = load i32, ptr %i.o, align 4, !tbaa !50  ; 2 uses
  %i.du = icmp slt i32 %i.dt, %i.g
  %.not195 = icmp eq i32 %.fr, 31
  %or.cond270 = or i1 %i.du, %.not195
  br i1 %or.cond270, label %.preheader165, label %.preheader168.preheader

.preheader168.preheader:                          ; preds = %.preheader168.lr.ph
  %smax = tail call i32 @llvm.smax.i32(i32 %i.g, i32 1)
  %wide.trip.count214 = zext nneg i32 %smax to i64 ; 2 uses
  %i.dv = sub nsw i32 %i.dt, %i.g
  %i.dw = sub nsw i32 %i.ds, %i.g
  %min.iters.check = icmp slt i32 %i.g, 8
  %n.vec = and i64 %wide.trip.count214, 2147483640
  %exitcond.not = icmp slt i32 %i.g, 2
  %exitcond.not.1 = icmp eq i32 %.fr, 1
  %exitcond.not.3 = icmp eq i32 %.fr, 2
  br label %.preheader167.us.preheader

.preheader167.us.preheader:                       ; preds = %.preheader168.preheader, %._crit_edge186
  %.0135188 = phi i32 [ %i.fg, %._crit_edge186 ], [ 0, %.preheader168.preheader ] ; 2 uses
  %i.dx = sext i32 %.0135188 to i64
  br label %.preheader167.us

.preheader167.us:                                 ; preds = %.preheader167.us.preheader, %._crit_edge183.us
  %.0136185.us = phi i32 [ %i.fb, %._crit_edge183.us ], [ 0, %.preheader167.us.preheader ] ; 2 uses
  %i.dy = sext i32 %.0136185.us to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.dr, i64 %i.dy
  br label %.preheader166.us

scalar.ph.1:                                      ; preds = %scalar.ph.preheader
  %i.dz = getelementptr i8, ptr %gep, i64 4       ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !49
  %i.eb = add nsw i32 %i.ea, 1
  store i32 %i.eb, ptr %i.dz, align 4, !tbaa !49
  br i1 %exitcond.not.1, label %._crit_edge181.us, label %scalar.ph.2

scalar.ph.2:                                      ; preds = %scalar.ph.1
  %i.ec = getelementptr i8, ptr %gep, i64 8       ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !49
  %i.ee = add nsw i32 %i.ed, 1
  store i32 %i.ee, ptr %i.ec, align 4, !tbaa !49
  %i.ef = getelementptr i8, ptr %gep, i64 12      ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !49
  %i.eh = add nsw i32 %i.eg, 1
  store i32 %i.eh, ptr %i.ef, align 4, !tbaa !49
  br i1 %exitcond.not.3, label %._crit_edge181.us, label %scalar.ph.4

scalar.ph.4:                                      ; preds = %scalar.ph.2
  %i.ei = getelementptr i8, ptr %gep, i64 16      ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !49
  %i.ek = add nsw i32 %i.ej, 1
  store i32 %i.ek, ptr %i.ei, align 4, !tbaa !49
  %i.el = getelementptr i8, ptr %gep, i64 20      ; 2 uses
  %i.em = load i32, ptr %i.el, align 4, !tbaa !49
  %i.en = add nsw i32 %i.em, 1
  store i32 %i.en, ptr %i.el, align 4, !tbaa !49
  %i.eo = getelementptr i8, ptr %gep, i64 24      ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !49
  %i.eq = add nsw i32 %i.ep, 1
  store i32 %i.eq, ptr %i.eo, align 4, !tbaa !49
  br label %._crit_edge181.us

.preheader166.us:                                 ; preds = %.preheader167.us, %._crit_edge181.us
  %indvars.iv211 = phi i64 [ 0, %.preheader167.us ], [ %indvars.iv.next212, %._crit_edge181.us ] ; 2 uses
  %i.er = add nsw i64 %indvars.iv211, %i.dx
  %i.es = mul nsw i64 %i.er, %i.dp
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.es ; 9 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

scalar.ph.preheader:                              ; preds = %.preheader166.us
  %i.et = load i32, ptr %gep, align 4, !tbaa !49
  %i.eu = add nsw i32 %i.et, 1
  store i32 %i.eu, ptr %gep, align 4, !tbaa !49
  br i1 %exitcond.not, label %._crit_edge181.us, label %scalar.ph.1

vector.body:                                      ; preds = %.preheader166.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader166.us ] ; 2 uses
  %i.ev = getelementptr [4 x i8], ptr %gep, i64 %index ; 3 uses
  %i.ew = getelementptr i8, ptr %i.ev, i64 16     ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ev, align 4, !tbaa !49
  %wide.load250 = load <4 x i32>, ptr %i.ew, align 4, !tbaa !49
  %i.ex = add nsw <4 x i32> %wide.load, splat (i32 1)
  %i.ey = add nsw <4 x i32> %wide.load250, splat (i32 1)
  store <4 x i32> %i.ex, ptr %i.ev, align 4, !tbaa !49
  store <4 x i32> %i.ey, ptr %i.ew, align 4, !tbaa !49
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ez = icmp eq i64 %index.next, %n.vec
  br i1 %i.ez, label %._crit_edge181.us, label %vector.body, !llvm.loop !79

._crit_edge181.us:                                ; preds = %vector.body, %scalar.ph.preheader, %scalar.ph.1, %scalar.ph.2, %scalar.ph.4
  %indvars.iv.next212 = add nuw nsw i64 %indvars.iv211, 1 ; 2 uses
  %exitcond215.not = icmp eq i64 %indvars.iv.next212, %wide.trip.count214
  br i1 %exitcond215.not, label %._crit_edge183.us, label %.preheader166.us, !llvm.loop !80

._crit_edge183.us:                                ; preds = %._crit_edge181.us
  %i.fa = load i32, ptr %i.m, align 8, !tbaa !32  ; 2 uses
  %i.fb = add nsw i32 %i.fa, %.0136185.us         ; 2 uses
  %.not158.us = icmp sgt i32 %i.fb, %i.dv
  br i1 %.not158.us, label %._crit_edge186, label %.preheader167.us, !llvm.loop !81

.preheader165:                                    ; preds = %._crit_edge186, %.preheader168.lr.ph, %.preheader169
  %i.fc = icmp sgt i32 %i.ds, 0
  br i1 %i.fc, label %.preheader.lr.ph, label %._crit_edge194.split

.preheader.lr.ph:                                 ; preds = %.preheader165
  %i.fd = load i32, ptr %i.o, align 4, !tbaa !50  ; 3 uses
  %i.fe = icmp sgt i32 %i.fd, 0
  br i1 %i.fe, label %.preheader.lr.ph.split, label %._crit_edge194.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.ff = load ptr, ptr %i.dm, align 8, !tbaa !58 ; 2 uses
  %wide.trip.count224 = zext nneg i32 %i.ds to i64
  %wide.trip.count219 = zext nneg i32 %i.fd to i64 ; 3 uses
  %min.iters.check252 = icmp ult i32 %i.fd, 4
  %n.vec254 = and i64 %wide.trip.count219, 2147483644 ; 3 uses
  %cmp.n260 = icmp eq i64 %n.vec254, %wide.trip.count219
  br label %.preheader

._crit_edge186:                                   ; preds = %._crit_edge183.us
  %i.fg = add nsw i32 %i.fa, %.0135188            ; 2 uses
  %.not157 = icmp sgt i32 %i.fg, %i.dw
  br i1 %.not157, label %.preheader165, label %.preheader167.us.preheader, !llvm.loop !82

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge192
  %indvars.iv221 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next222, %._crit_edge192 ] ; 2 uses
  %i.fh = mul nsw i64 %indvars.iv221, %i.dp       ; 2 uses
  br i1 %min.iters.check252, label %scalar.ph251.preheader, label %vector.body255

vector.body255:                                   ; preds = %.preheader, %vector.body255
  %index256 = phi i64 [ %index.next258, %vector.body255 ], [ 0, %.preheader ] ; 2 uses
  %i.fi = add nsw i64 %index256, %i.fh            ; 2 uses
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.dr, i64 %i.fi
  %wide.load257 = load <4 x i32>, ptr %i.fj, align 4, !tbaa !49
  %i.fk = sitofp nsz <4 x i32> %wide.load257 to <4 x double>
  %i.fl = fdiv nsz <4 x double> splat (double 1.000000e+00), %i.fk
  %i.fm = fptrunc nsz <4 x double> %i.fl to <4 x float>
  %i.fn = getelementptr inbounds [4 x i8], ptr %i.ff, i64 %i.fi
  store <4 x float> %i.fm, ptr %i.fn, align 4, !tbaa !62
  %index.next258 = add nuw i64 %index256, 4       ; 2 uses
  %i.fo = icmp eq i64 %index.next258, %n.vec254
  br i1 %i.fo, label %middle.block259, label %vector.body255, !llvm.loop !83

middle.block259:                                  ; preds = %vector.body255
  br i1 %cmp.n260, label %._crit_edge192, label %scalar.ph251.preheader

scalar.ph251.preheader:                           ; preds = %.preheader, %middle.block259
  %indvars.iv216.ph = phi i64 [ 0, %.preheader ], [ %n.vec254, %middle.block259 ]
  br label %scalar.ph251

scalar.ph251:                                     ; preds = %scalar.ph251.preheader, %scalar.ph251
  %indvars.iv216 = phi i64 [ %indvars.iv.next217, %scalar.ph251 ], [ %indvars.iv216.ph, %scalar.ph251.preheader ] ; 2 uses
  %i.fp = add nsw i64 %indvars.iv216, %i.fh       ; 2 uses
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.dr, i64 %i.fp
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !49
  %i.fs = sitofp nsz i32 %i.fr to double
  %i.ft = fdiv nsz double 1.000000e+00, %i.fs
  %i.fu = fptrunc nsz double %i.ft to float
  %i.fv = getelementptr inbounds [4 x i8], ptr %i.ff, i64 %i.fp
  store float %i.fu, ptr %i.fv, align 4, !tbaa !62
  %indvars.iv.next217 = add nuw nsw i64 %indvars.iv216, 1 ; 2 uses
  %exitcond220.not = icmp eq i64 %indvars.iv.next217, %wide.trip.count219
  br i1 %exitcond220.not, label %._crit_edge192, label %scalar.ph251, !llvm.loop !84

._crit_edge192:                                   ; preds = %scalar.ph251, %middle.block259
  %indvars.iv.next222 = add nuw nsw i64 %indvars.iv221, 1 ; 2 uses
  %exitcond225.not = icmp eq i64 %indvars.iv.next222, %wide.trip.count224
  br i1 %exitcond225.not, label %._crit_edge194.split, label %.preheader, !llvm.loop !85

._crit_edge194.split:                             ; preds = %._crit_edge192, %.preheader.lr.ph, %.preheader165
  tail call void @av_free(ptr noundef nonnull %i.dr) #12
  br label %.loopexit

.loopexit:                                        ; preds = %bb.p, %bb.r, %bb.j, %bb.n, %bb.k, %bb.l, %bb.s, %._crit_edge, %bb.i, %._crit_edge194.split
  %.2142 = phi i32 [ -12, %bb.s ], [ -22, %bb.i ], [ -12, %bb.r ], [ -12, %bb.j ], [ 0, %._crit_edge194.split ], [ -12, %._crit_edge ], [ -12, %bb.l ], [ -12, %bb.k ], [ -12, %bb.n ], [ %i.ck, %bb.p ]
  ret i32 %.2142
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @av_frame_is_writable(ptr noundef) local_unnamed_addr #3

declare ptr @ff_get_video_buffer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @av_frame_free(ptr noundef) local_unnamed_addr #3

declare i32 @av_frame_copy_props(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_filter_execute(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @filter_slice(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %i.d = load i32, ptr %i.c, align 4, !tbaa !50   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.f = load i32, ptr %i.e, align 8, !tbaa !51   ; 2 uses
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  %i.h = sext i32 %2 to i64                       ; 2 uses
  %i.i = mul nsw i64 %i.g, %i.h
  %i.j = sext i32 %3 to i64                       ; 2 uses
  %i.k = sdiv i64 %i.i, %i.j
  %i.l = trunc i64 %i.k to i32                    ; 5 uses
  %i.m = add nsw i32 %2, 1
  %i.n = sext i32 %i.m to i64
  %i.o = mul nsw i64 %i.g, %i.n
  %i.p = sdiv i64 %i.o, %i.j
  %i.q = trunc i64 %i.p to i32                    ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 304 ; 3 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !28   ; 3 uses
  %i.t = sub nsw i32 %i.l, %i.s
  %i.u = tail call i32 @llvm.smax.i32(i32 %i.t, i32 -1)
  %spec.select = add nsw i32 %i.u, 1              ; 3 uses
  %i.v = add i32 %i.f, 1
  %i.w = sub i32 %i.v, %i.s
  %i.x = tail call i32 @llvm.smin.i32(i32 %i.w, i32 %i.q)
  %i.y = sub nsw i32 %i.x, %spec.select           ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !48  ; 8 uses
  %i.ab = load ptr, ptr %1, align 8, !tbaa !54
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !58 ; 2 uses
  %i.ae = ptrtoaddr ptr %i.ad to i64
  %i.af = mul i32 %i.aa, %i.l
  %i.ag = sext i32 %i.af to i64                   ; 3 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.h ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !52 ; 2 uses
  %i.al = add i32 %i.s, -1
  %i.am = add i32 %i.al, %i.y
  %i.an = mul nsw i32 %i.am, %i.aa
  %i.ao = sext i32 %i.an to i64
  %i.ap = shl nsw i64 %i.ao, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ak, i8 0, i64 %i.ap, i1 false)
  %i.aq = icmp sgt i32 %i.y, 0
  br i1 %i.aq, label %.preheader97.lr.ph, label %._crit_edge103

.preheader97.lr.ph:                               ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 296 ; 2 uses
  %i.at = load i32, ptr %i.r, align 8, !tbaa !28  ; 2 uses
  %i.au = icmp sgt i32 %i.at, %i.d
  br i1 %i.au, label %._crit_edge103, label %.preheader97.preheader

.preheader97.preheader:                           ; preds = %.preheader97.lr.ph
  %i.av = mul nsw i32 %spec.select, %i.aa
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.aw
  br label %.preheader97

.preheader97:                                     ; preds = %.preheader97.preheader, %._crit_edge
  %i.ay = phi i32 [ %i.bi, %._crit_edge ], [ %i.at, %.preheader97.preheader ] ; 2 uses
  %.0102 = phi ptr [ %i.bm, %._crit_edge ], [ %i.ak, %.preheader97.preheader ] ; 2 uses
  %.088101 = phi ptr [ %i.bl, %._crit_edge ], [ %i.ax, %.preheader97.preheader ] ; 2 uses
  %.090100 = phi i32 [ %i.bn, %._crit_edge ], [ 0, %.preheader97.preheader ]
  %.not98 = icmp sgt i32 %i.ay, %i.d
  br i1 %.not98, label %.preheader97.._crit_edge_crit_edge, label %.lr.ph

.preheader97.._crit_edge_crit_edge:               ; preds = %.preheader97
  %.pre = load i32, ptr %i.as, align 8, !tbaa !32
  br label %._crit_edge

.lr.ph:                                           ; preds = %.preheader97, %.lr.ph
  %.09299 = phi i32 [ %i.be, %.lr.ph ], [ 0, %.preheader97 ] ; 2 uses
  %i.az = load ptr, ptr %i.ar, align 8, !tbaa !30
  %i.ba = sext i32 %.09299 to i64                 ; 2 uses
  %i.bb = getelementptr inbounds [4 x i8], ptr %.088101, i64 %i.ba
  %i.bc = getelementptr inbounds [4 x i8], ptr %.0102, i64 %i.ba
  tail call void %i.az(ptr noundef nonnull %i.b, ptr noundef %i.bb, i32 noundef %i.aa, ptr noundef %i.bc, i32 noundef %i.aa, i32 noundef %2) #12
  %i.bd = load i32, ptr %i.as, align 8, !tbaa !32 ; 2 uses
  %i.be = add nsw i32 %i.bd, %.09299              ; 2 uses
  %i.bf = load i32, ptr %i.r, align 8, !tbaa !28  ; 2 uses
  %i.bg = sub nsw i32 %i.d, %i.bf
  %.not = icmp sgt i32 %i.be, %i.bg
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !87

._crit_edge:                                      ; preds = %.lr.ph, %.preheader97.._crit_edge_crit_edge
  %i.bh = phi i32 [ %.pre, %.preheader97.._crit_edge_crit_edge ], [ %i.bd, %.lr.ph ] ; 2 uses
  %i.bi = phi i32 [ %i.ay, %.preheader97.._crit_edge_crit_edge ], [ %i.bf, %.lr.ph ]
  %i.bj = mul nsw i32 %i.bh, %i.aa
  %i.bk = sext i32 %i.bj to i64                   ; 2 uses
  %i.bl = getelementptr inbounds [4 x i8], ptr %.088101, i64 %i.bk
  %i.bm = getelementptr inbounds [4 x i8], ptr %.0102, i64 %i.bk
  %i.bn = add nsw i32 %i.bh, %.090100             ; 2 uses
  %i.bo = icmp slt i32 %i.bn, %i.y
  br i1 %i.bo, label %.preheader97, label %._crit_edge103, !llvm.loop !88

._crit_edge103:                                   ; preds = %._crit_edge, %.preheader97.lr.ph, %bb.a
  %i.bp = icmp slt i32 %i.l, %i.q
  br i1 %i.bp, label %.preheader.lr.ph, label %._crit_edge111.split

.preheader.lr.ph:                                 ; preds = %._crit_edge103
  %i.bq = icmp sgt i32 %i.d, 0
  %i.br = sext i32 %i.aa to i64                   ; 3 uses
  br i1 %i.bq, label %.preheader.preheader, label %._crit_edge111.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.bs = load ptr, ptr %i.aj, align 8, !tbaa !52 ; 2 uses
  %i.bt = ptrtoaddr ptr %i.bs to i64
  %i.bu = sub i32 %i.l, %spec.select
  %i.bv = mul i32 %i.bu, %i.aa
  %i.bw = sext i32 %i.bv to i64                   ; 2 uses
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !55 ; 2 uses
  %i.ca = ptrtoaddr ptr %i.bz to i64              ; 2 uses
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.ag
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 5 uses
  %i.cc = shl nsw i64 %i.ag, 2
  %i.cd = add i64 %i.cc, %i.ca
  %i.ce = shl nsw i64 %i.bw, 2
  %i.cf = add i64 %i.ce, %i.bt
  %min.iters.check = icmp ult i32 %i.d, 8
  %i.cg = sub i64 %i.cf, %i.cd
  %diff.check = icmp ugt i64 %i.cg, -32
  %i.ch = sub i64 %i.ae, %i.ca
  %diff.check125 = icmp ugt i64 %i.ch, -32
  %conflict.rdx = or i1 %diff.check, %diff.check125
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
end_hunk_0
