Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_adeclick?download=true
inline.NumInlined: 10
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@activate:bb.a
  br i1 %i.el, label %filter_frame.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.em = load i32, ptr %i.dm, align 8, !tbaa !71 ; 2 uses
  %i.en = icmp sgt i32 %i.em, 0
  br i1 %i.en, label %bb.o, label %filter_frame.exit

bb.o:                                             ; preds = %bb.n
  %i.eo = load i32, ptr %i.bo, align 8, !tbaa !78
  %i.ep = sub nsw i32 %i.em, %i.eo                ; 2 uses
  store i32 %i.ep, ptr %i.dm, align 8, !tbaa !71
  %i.eq = icmp slt i32 %i.ep, 1
  br i1 %i.eq, label %bb.p, label %filter_frame.exit

bb.p:                                             ; preds = %bb.o
  %i.er = load ptr, ptr %i.br, align 8, !tbaa !34 ; 2 uses
  %i.es = call i32 @av_audio_fifo_size(ptr noundef %i.er) #13
  %i.et = call i32 @av_audio_fifo_drain(ptr noundef %i.er, i32 noundef %i.es) #13 ; 0 uses
  br label %filter_frame.exit

bb.q:                                             ; preds = %bb.k, %bb.j
  %.055.i = phi i32 [ %i.bz, %bb.j ], [ %i.cd, %bb.k ]
  call void @av_frame_free(ptr noundef nonnull %i.a) #13
  br label %filter_frame.exit

filter_frame.exit:                                ; preds = %bb.i, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q
  %.0.i = phi i32 [ %i.ek, %bb.m ], [ -12, %bb.i ], [ %.055.i, %bb.q ], [ %i.ek, %bb.p ], [ %i.ek, %bb.o ], [ %i.ek, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.aa

bb.r:                                             ; preds = %bb.h
  %i.eu = load ptr, ptr %i.ba, align 8, !tbaa !34
  %i.ev = call i32 @av_audio_fifo_size(ptr noundef %i.eu) #13
  %i.ew = load i32, ptr %i.n, align 4, !tbaa !50
  %.not61 = icmp slt i32 %i.ev, %i.ew
  br i1 %.not61, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @ff_filter_set_ready(ptr noundef nonnull %0, i32 noundef 100) #13
  br label %bb.aa

bb.t:                                             ; preds = %bb.r
  %i.ex = getelementptr inbounds nuw i8, ptr %i.l, i64 164 ; 3 uses
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !89
  %.not62 = icmp eq i32 %i.ey, 0
  br i1 %.not62, label %bb.u, label %.thread

bb.u:                                             ; preds = %bb.t
  %i.ez = call i32 @ff_inlink_acknowledge_status(ptr noundef %i.g, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #13
  %i.fa = icmp ne i32 %i.ez, 0
  %i.fb = load i32, ptr %i.c, align 4
  %i.fc = icmp eq i32 %i.fb, -541478725
  %or.cond = select i1 %i.fa, i1 %i.fc, i1 false
  br i1 %or.cond, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 1, ptr %i.ex, align 4, !tbaa !89
  %i.fd = load ptr, ptr %i.ba, align 8, !tbaa !34
  %i.fe = call i32 @av_audio_fifo_size(ptr noundef %i.fd) #13
  %i.ff = getelementptr inbounds nuw i8, ptr %i.l, i64 76
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !90
  %i.fh = sub nsw i32 %i.fe, %i.fg
  store i32 %i.fh, ptr %i.be, align 8, !tbaa !71
  call void @ff_filter_set_ready(ptr noundef nonnull %0, i32 noundef 100) #13
  br label %bb.aa

bb.w:                                             ; preds = %bb.u
  %.pr = load i32, ptr %i.ex, align 4, !tbaa !89
  %.not63 = icmp eq i32 %.pr, 0
  br i1 %.not63, label %bb.y, label %.thread

.thread:                                          ; preds = %bb.t, %bb.w
  %i.fi = load i32, ptr %i.be, align 8, !tbaa !71
  %i.fj = icmp slt i32 %i.fi, 1
  br i1 %i.fj, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %.thread
  %i.fk = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !61
  call void @ff_avfilter_link_set_in_status(ptr noundef %i.j, i32 noundef -541478725, i64 noundef %i.fl) #13
  br label %bb.aa

bb.y:                                             ; preds = %bb.w
  %i.fm = call i32 @ff_outlink_frame_wanted(ptr noundef %i.j) #13
  %.not65 = icmp eq i32 %i.fm, 0
  br i1 %.not65, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @ff_inlink_request_frame(ptr noundef %i.g) #13
  br label %bb.aa

bb.aa:                                            ; preds = %.thread, %bb.b, %bb.y, %.critedge, %._crit_edge, %bb.z, %bb.x, %bb.v, %bb.s, %filter_frame.exit
  %.2 = phi i32 [ 0, %bb.b ], [ %.0.i, %filter_frame.exit ], [ 0, %bb.s ], [ 0, %bb.x ], [ %i.p, %.critedge ], [ 0, %bb.z ], [ 0, %bb.v ], [ %i.ah, %._crit_edge ], [ -1497649742, %bb.y ], [ -1497649742, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @config_input(ptr noundef %0) #2 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 7 uses
  %i.b = alloca [2 x ptr], align 16               ; 7 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca double, align 8                   ; 15 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !72
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !9    ; 21 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  store i64 -9223372036854775808, ptr %i.l, align 8, !tbaa !61
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load i32, ptr %i.m, align 8, !tbaa !88
  %i.o = sitofp nsz i32 %i.n to double
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.q = load double, ptr %i.p, align 8, !tbaa !91
  %i.r = fmul nsz double %i.q, %i.o
  %i.s = fdiv nsz double %i.r, 1.000000e+03       ; 2 uses
  %.inv = fcmp nsz ole double %i.s, 1.000000e+02
  %spec.select196 = select i1 %.inv, double 1.000000e+02, double %i.s
  %spec.select = fptosi double %spec.select196 to i32 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 68 ; 16 uses
  store i32 %spec.select, ptr %i.t, align 4, !tbaa !50
  %i.u = sitofp nsz i32 %spec.select to double    ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.w = load double, ptr %i.v, align 8, !tbaa !92
  %i.x = fmul nsz double %i.w, %i.u
  %i.y = fdiv nsz double %i.x, 1.000000e+02       ; 2 uses
  %i.z = fcmp nsz ogt double %i.y, 1.000000e+00
  %i.aa = select i1 %i.z, double %i.y, double 1.000000e+00
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 60 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !93
  %i.ae = fmul nsz double %i.ad, %i.u
  %i.af = insertelement <2 x double> poison, double %i.aa, i64 0
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !94
  %i.ai = insertelement <2 x double> poison, double %i.ae, i64 0
  %i.aj = insertelement <2 x double> %i.ai, double %i.ah, i64 1
  %i.ak = fdiv nsz <2 x double> %i.aj, <double 1.000000e+03, double 1.000000e+02> ; 2 uses
  %i.al = shufflevector <2 x double> %i.af, <2 x double> %i.ak, <2 x i32> <i32 0, i32 2>
  %i.am = fptosi <2 x double> %i.al to <2 x i32>
  store <2 x i32> %i.am, ptr %i.ab, align 4, !tbaa !95
  %i.an = extractelement <2 x double> %i.ak, i64 1
  %i.ao = fsub nsz double 1.000000e+00, %i.an
  %i.ap = fmul nsz double %i.ao, %i.u             ; 2 uses
  %.inv197 = fcmp nsz ole double %i.ap, 1.000000e+00
  %i.aq = select i1 %.inv197, double 1.000000e+00, double %i.ap
  %i.ar = fptosi double %i.aq to i32
  %i.as = getelementptr inbounds nuw i8, ptr %i.k, i64 72 ; 4 uses
  store i32 %i.ar, ptr %i.as, align 8, !tbaa !78
  %i.at = sext i32 %spec.select to i64
  %i.au = tail call noalias ptr @av_calloc(i64 noundef %i.at, i64 noundef 8) #13 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.k, i64 184 ; 2 uses
  store ptr %i.au, ptr %i.av, align 8, !tbaa !96
  %.not = icmp eq ptr %i.au, null
  br i1 %.not, label %.thread193, label %ff_clz_c.exit

ff_clz_c.exit:                                    ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store ptr null, ptr %i.c, align 8, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store ptr null, ptr %i.d, align 8, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #13
  %i.aw = load i32, ptr %i.t, align 4, !tbaa !50
  %i.ax = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aw, i1 false) ; 2 uses
  %i.ay = sub nuw nsw i32 32, %i.ax
  %i.az = shl nuw i32 1, %i.ay                    ; 6 uses
  store double 1.000000e+00, ptr %i.g, align 8, !tbaa !66
  %i.ba = call i32 @av_tx_init(ptr noundef nonnull %i.c, ptr noundef nonnull %i.e, i32 noundef 7, i32 noundef 0, i32 noundef %i.az, ptr noundef nonnull %i.g, i64 noundef 0) #13 ; 2 uses
  %i.bb = icmp slt i32 %i.ba, 0
  br i1 %i.bb, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %ff_clz_c.exit
  %i.bc = sitofp nsz i32 %i.az to double
  %i.bd = fdiv nsz double 1.000000e+00, %i.bc
  store double %i.bd, ptr %i.g, align 8, !tbaa !66
  %i.be = call i32 @av_tx_init(ptr noundef nonnull %i.d, ptr noundef nonnull %i.f, i32 noundef 7, i32 noundef 1, i32 noundef %i.az, ptr noundef nonnull %i.g, i64 noundef 0) #13 ; 6 uses
  %i.bf = icmp slt i32 %i.be, 0
  br i1 %i.bf, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bg = add nuw nsw i32 %i.az, 2
  %i.bh = sext i32 %i.bg to i64                   ; 4 uses
  %i.bi = call noalias ptr @av_calloc(i64 noundef %i.bh, i64 noundef 8) #13 ; 8 uses
  store ptr %i.bi, ptr %i.a, align 16, !tbaa !99
  %i.bj = call noalias ptr @av_calloc(i64 noundef %i.bh, i64 noundef 8) #13 ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !99
  %i.bl = call noalias ptr @av_calloc(i64 noundef %i.bh, i64 noundef 8) #13 ; 15 uses
  store ptr %i.bl, ptr %i.b, align 16, !tbaa !99
  %i.bm = call noalias ptr @av_calloc(i64 noundef %i.bh, i64 noundef 8) #13 ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !99
  %i.bo = insertelement <4 x ptr> poison, ptr %i.bi, i64 0
  %i.bp = insertelement <4 x ptr> %i.bo, ptr %i.bj, i64 1
  %i.bq = insertelement <4 x ptr> %i.bp, ptr %i.bl, i64 2
  %i.br = insertelement <4 x ptr> %i.bq, ptr %i.bm, i64 3
  %.fr = freeze <4 x ptr> %i.br
  %i.bs = icmp eq <4 x ptr> %.fr, splat (ptr null)
  %i.bt = bitcast <4 x i1> %i.bs to i4
  %i.bu = icmp eq i4 %i.bt, 0
  br i1 %i.bu, label %.preheader199, label %.loopexit

.preheader199:                                    ; preds = %bb.c
  %i.bv = load i32, ptr %i.t, align 4, !tbaa !50
  %i.bw = load i32, ptr %i.as, align 8, !tbaa !78 ; 4 uses
  %i.bx = sub nsw i32 %i.bv, %i.bw                ; 3 uses
  %i.by = icmp sgt i32 %i.bx, 0
  br i1 %i.by, label %.lr.ph204.preheader, label %.preheader198

.lr.ph204.preheader:                              ; preds = %.preheader199
  %wide.trip.count = zext nneg i32 %i.bx to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %i.bx, 4
  br i1 %min.iters.check, label %.lr.ph204.preheader305, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph204.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %index ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store <2 x double> splat (double 1.000000e+00), ptr %i.bz, align 8, !tbaa !66
  store <2 x double> splat (double 1.000000e+00), ptr %i.ca, align 8, !tbaa !66
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !100

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader198, label %.lr.ph204.preheader305

.lr.ph204.preheader305:                           ; preds = %.lr.ph204.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph204.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph204

.preheader198:                                    ; preds = %.lr.ph204, %middle.block, %.preheader199
  %i.cc = icmp sgt i32 %i.bw, 0
  br i1 %i.cc, label %.lr.ph207.preheader, label %._crit_edge

.lr.ph207.preheader:                              ; preds = %.preheader198
  %wide.trip.count238 = zext nneg i32 %i.bw to i64 ; 3 uses
  %min.iters.check265 = icmp ult i32 %i.bw, 4
  br i1 %min.iters.check265, label %.lr.ph207.preheader304, label %vector.ph266

vector.ph266:                                     ; preds = %.lr.ph207.preheader
  %n.vec267 = and i64 %wide.trip.count238, 2147483644 ; 3 uses
  br label %vector.body268

vector.body268:                                   ; preds = %vector.body268, %vector.ph266
  %index269 = phi i64 [ 0, %vector.ph266 ], [ %index.next270, %vector.body268 ] ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %index269 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store <2 x double> splat (double 1.000000e+00), ptr %i.cd, align 8, !tbaa !66
  store <2 x double> splat (double 1.000000e+00), ptr %i.ce, align 8, !tbaa !66
  %index.next270 = add nuw i64 %index269, 4       ; 2 uses
  %i.cf = icmp eq i64 %index.next270, %n.vec267
  br i1 %i.cf, label %middle.block271, label %vector.body268, !llvm.loop !101

middle.block271:                                  ; preds = %vector.body268
  %cmp.n272 = icmp eq i64 %n.vec267, %wide.trip.count238
  br i1 %cmp.n272, label %._crit_edge, label %.lr.ph207.preheader304

.lr.ph207.preheader304:                           ; preds = %.lr.ph207.preheader, %middle.block271
  %indvars.iv235.ph = phi i64 [ 0, %.lr.ph207.preheader ], [ %n.vec267, %middle.block271 ]
  br label %.lr.ph207

.lr.ph204:                                        ; preds = %.lr.ph204.preheader305, %.lr.ph204
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph204 ], [ %indvars.iv.ph, %.lr.ph204.preheader305 ] ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv
  store double 1.000000e+00, ptr %i.cg, align 8, !tbaa !66
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader198, label %.lr.ph204, !llvm.loop !102

._crit_edge:                                      ; preds = %.lr.ph207, %middle.block271, %.preheader198
  %i.ch = load ptr, ptr %i.e, align 8, !tbaa !103
  %i.ci = load ptr, ptr %i.c, align 8, !tbaa !97
  call void %i.ch(ptr noundef %i.ci, ptr noundef nonnull %i.bl, ptr noundef nonnull %i.bi, i64 noundef 8) #13
  %i.cj = load ptr, ptr %i.e, align 8, !tbaa !103
  %i.ck = load ptr, ptr %i.c, align 8, !tbaa !97
  call void %i.cj(ptr noundef %i.ck, ptr noundef nonnull %i.bm, ptr noundef nonnull %i.bj, i64 noundef 8) #13
  %.not171208 = icmp eq i32 %i.ax, 1
  br i1 %.not171208, label %._crit_edge212, label %.lr.ph211

.lr.ph211:                                        ; preds = %._crit_edge
  %i.cl = sdiv i32 %i.az, 2
  %smax = call i32 @llvm.smax.i32(i32 %i.cl, i32 0)
  %i.cm = add nuw nsw i32 %smax, 1
  %wide.trip.count243 = zext nneg i32 %i.cm to i64 ; 3 uses
  %min.iters.check275 = icmp slt i32 %i.az, 2
  br i1 %min.iters.check275, label %scalar.ph274.preheader, label %vector.ph276

vector.ph276:                                     ; preds = %.lr.ph211
  %n.vec277 = and i64 %wide.trip.count243, 2147483646 ; 3 uses
  br label %vector.body278

vector.body278:                                   ; preds = %vector.body278, %vector.ph276
  %index279 = phi i64 [ 0, %vector.ph276 ], [ %index.next284, %vector.body278 ] ; 2 uses
  %i.cn = shl nuw nsw i64 %index279, 1            ; 3 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.cn
  %wide.vec = load <4 x double>, ptr %i.co, align 8, !tbaa !66 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec280 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.cn
  %wide.vec281 = load <4 x double>, ptr %i.cp, align 8, !tbaa !66 ; 2 uses
  %strided.vec282 = shufflevector <4 x double> %wide.vec281, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec283 = shufflevector <4 x double> %wide.vec281, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.cq = fneg nsz <2 x double> %strided.vec283
  %i.cr = fmul nsz <2 x double> %strided.vec280, %i.cq
  %i.cs = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %strided.vec282, <2 x double> %i.cr)
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.cn
  %i.cu = fmul nsz <2 x double> %strided.vec280, %strided.vec282
  %i.cv = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %strided.vec283, <2 x double> %i.cu)
  %interleaved.vec = shufflevector <2 x double> %i.cs, <2 x double> %i.cv, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec, ptr %i.ct, align 8, !tbaa !66
  %index.next284 = add nuw i64 %index279, 2       ; 2 uses
  %i.cw = icmp eq i64 %index.next284, %n.vec277
  br i1 %i.cw, label %middle.block285, label %vector.body278, !llvm.loop !104

middle.block285:                                  ; preds = %vector.body278
  %cmp.n286 = icmp eq i64 %n.vec277, %wide.trip.count243
  br i1 %cmp.n286, label %._crit_edge212, label %scalar.ph274.preheader

scalar.ph274.preheader:                           ; preds = %.lr.ph211, %middle.block285
  %indvars.iv240.ph = phi i64 [ 0, %.lr.ph211 ], [ %n.vec277, %middle.block285 ]
  br label %scalar.ph274

.lr.ph207:                                        ; preds = %.lr.ph207.preheader304, %.lr.ph207
  %indvars.iv235 = phi i64 [ %indvars.iv.next236, %.lr.ph207 ], [ %indvars.iv235.ph, %.lr.ph207.preheader304 ] ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv235
  store double 1.000000e+00, ptr %i.cx, align 8, !tbaa !66
  %indvars.iv.next236 = add nuw nsw i64 %indvars.iv235, 1 ; 2 uses
  %exitcond239.not = icmp eq i64 %indvars.iv.next236, %wide.trip.count238
  br i1 %exitcond239.not, label %._crit_edge, label %.lr.ph207, !llvm.loop !105

._crit_edge212:                                   ; preds = %scalar.ph274, %middle.block285, %._crit_edge
  %i.cy = load ptr, ptr %i.f, align 8, !tbaa !103
  %i.cz = load ptr, ptr %i.d, align 8, !tbaa !97
  call void %i.cy(ptr noundef %i.cz, ptr noundef nonnull %i.bl, ptr noundef nonnull %i.bi, i64 noundef 16) #13
  %i.da = load i32, ptr %i.t, align 4, !tbaa !50  ; 4 uses
  %i.db = load i32, ptr %i.as, align 8, !tbaa !78
  %i.dc = sub nsw i32 %i.da, %i.db
  %i.dd = sitofp nsz i32 %i.dc to double
  %i.de = fdiv nsz double 1.000000e+00, %i.dd
  store double %i.de, ptr %i.g, align 8, !tbaa !66
  %i.df = icmp sgt i32 %i.da, 0
  br i1 %i.df, label %.lr.ph215, label %.loopexit

.lr.ph215:                                        ; preds = %._crit_edge212
  %i.dg = load ptr, ptr %i.av, align 8, !tbaa !96 ; 9 uses
  %wide.trip.count248 = zext nneg i32 %i.da to i64 ; 6 uses
  %min.iters.check294 = icmp ult i32 %i.da, 12
  br i1 %min.iters.check294, label %scalar.ph293.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph215
  %i.dh = shl nuw nsw i64 %wide.trip.count248, 3  ; 2 uses
  %scevgep = getelementptr i8, ptr %i.dg, i64 %i.dh ; 2 uses
  %scevgep288 = getelementptr i8, ptr %i.bl, i64 %i.dh
  %scevgep289 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %bound0 = icmp ult ptr %i.dg, %scevgep288
  %bound1 = icmp ult ptr %i.bl, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0290 = icmp ult ptr %i.dg, %scevgep289
  %bound1291 = icmp ult ptr %i.g, %scevgep
  %found.conflict292 = and i1 %bound0290, %bound1291
  %conflict.rdx = or i1 %found.conflict, %found.conflict292
  br i1 %conflict.rdx, label %scalar.ph293.preheader, label %vector.ph295

vector.ph295:                                     ; preds = %vector.memcheck
  %n.vec296 = and i64 %wide.trip.count248, 2147483644 ; 3 uses
  %i.di = load double, ptr %i.g, align 8, !tbaa !66, !alias.scope !106
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.di, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body297

vector.body297:                                   ; preds = %vector.body297, %vector.ph295
  %index298 = phi i64 [ 0, %vector.ph295 ], [ %index.next300, %vector.body297 ] ; 3 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %index298 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %wide.load = load <2 x double>, ptr %i.dj, align 8, !tbaa !66, !alias.scope !109
  %wide.load299 = load <2 x double>, ptr %i.dk, align 8, !tbaa !66, !alias.scope !109
  %i.dl = fmul nsz <2 x double> %wide.load, %broadcast.splat
  %i.dm = fmul nsz <2 x double> %wide.load299, %broadcast.splat
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %index298 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  store <2 x double> %i.dl, ptr %i.dn, align 8, !tbaa !66, !alias.scope !111, !noalias !113
  store <2 x double> %i.dm, ptr %i.do, align 8, !tbaa !66, !alias.scope !111, !noalias !113
  %index.next300 = add nuw i64 %index298, 4       ; 2 uses
  %i.dp = icmp eq i64 %index.next300, %n.vec296
  br i1 %i.dp, label %middle.block301, label %vector.body297, !llvm.loop !114

middle.block301:                                  ; preds = %vector.body297
  %cmp.n302 = icmp eq i64 %n.vec296, %wide.trip.count248
  br i1 %cmp.n302, label %.loopexit, label %scalar.ph293.preheader

scalar.ph293.preheader:                           ; preds = %vector.memcheck, %.lr.ph215, %middle.block301
  %indvars.iv245.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph215 ], [ %n.vec296, %middle.block301 ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count248, 3      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph293.prol.loopexit, label %scalar.ph293.prol

scalar.ph293.prol:                                ; preds = %scalar.ph293.preheader, %scalar.ph293.prol
  %indvars.iv245.prol = phi i64 [ %indvars.iv.next246.prol, %scalar.ph293.prol ], [ %indvars.iv245.ph, %scalar.ph293.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph293.prol ], [ 0, %scalar.ph293.preheader ]
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv245.prol
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !66
  %i.ds = load double, ptr %i.g, align 8, !tbaa !66
  %i.dt = fmul nsz double %i.dr, %i.ds
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %indvars.iv245.prol
  store double %i.dt, ptr %i.du, align 8, !tbaa !66
  %indvars.iv.next246.prol = add nuw nsw i64 %indvars.iv245.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph293.prol.loopexit, label %scalar.ph293.prol, !llvm.loop !115

scalar.ph293.prol.loopexit:                       ; preds = %scalar.ph293.prol, %scalar.ph293.preheader
  %indvars.iv245.unr = phi i64 [ %indvars.iv245.ph, %scalar.ph293.preheader ], [ %indvars.iv.next246.prol, %scalar.ph293.prol ]
  %i.dv = sub nsw i64 %indvars.iv245.ph, %wide.trip.count248
  %i.dw = icmp ugt i64 %i.dv, -4
  br i1 %i.dw, label %.loopexit, label %scalar.ph293

scalar.ph274:                                     ; preds = %scalar.ph274.preheader, %scalar.ph274
  %indvars.iv240 = phi i64 [ %indvars.iv.next241, %scalar.ph274 ], [ %indvars.iv240.ph, %scalar.ph274.preheader ] ; 2 uses
  %i.dx = shl nuw nsw i64 %indvars.iv240, 1       ; 4 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.dx
  %1 = load double, ptr %i.dy, align 8, !tbaa !66
  %2 = or disjoint i64 %i.dx, 1                   ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %2
  %3 = load double, ptr %i.dz, align 8, !tbaa !66
  %4 = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.dx
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %2
  %5 = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.dx
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !66
  %i.ec = load <2 x double>, ptr %4, align 8, !tbaa !66 ; 2 uses
  %i.ed = fneg nsz double %i.eb
  %6 = insertelement <2 x double> poison, double %3, i64 0
  %7 = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ee = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ef = insertelement <2 x double> %i.ee, double %i.ed, i64 0
  %i.eg = fmul nsz <2 x double> %7, %i.ef
  %8 = insertelement <2 x double> poison, double %1, i64 0
  %i.eh = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ei = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eh, <2 x double> %i.ec, <2 x double> %i.eg)
  store <2 x double> %i.ei, ptr %5, align 8, !tbaa !66
  %indvars.iv.next241 = add nuw nsw i64 %indvars.iv240, 1 ; 2 uses
  %exitcond244.not = icmp eq i64 %indvars.iv.next241, %wide.trip.count243
  br i1 %exitcond244.not, label %._crit_edge212, label %scalar.ph274, !llvm.loop !117

scalar.ph293:                                     ; preds = %scalar.ph293.prol.loopexit, %scalar.ph293
  %indvars.iv245 = phi i64 [ %indvars.iv.next246.3, %scalar.ph293 ], [ %indvars.iv245.unr, %scalar.ph293.prol.loopexit ] ; 6 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv245
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !66
  %i.el = load double, ptr %i.g, align 8, !tbaa !66
  %i.em = fmul nsz double %i.ek, %i.el
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %indvars.iv245
  store double %i.em, ptr %i.en, align 8, !tbaa !66
  %indvars.iv.next246 = add nuw nsw i64 %indvars.iv245, 1 ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.next246
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !66
  %i.eq = load double, ptr %i.g, align 8, !tbaa !66
  %i.er = fmul nsz double %i.ep, %i.eq
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %indvars.iv.next246
  store double %i.er, ptr %i.es, align 8, !tbaa !66
  %indvars.iv.next246.1 = add nuw nsw i64 %indvars.iv245, 2 ; 2 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.next246.1
  %i.eu = load double, ptr %i.et, align 8, !tbaa !66
  %i.ev = load double, ptr %i.g, align 8, !tbaa !66
  %i.ew = fmul nsz double %i.eu, %i.ev
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %indvars.iv.next246.1
  store double %i.ew, ptr %i.ex, align 8, !tbaa !66
  %indvars.iv.next246.2 = add nuw nsw i64 %indvars.iv245, 3 ; 2 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.next246.2
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !66
  %i.fa = load double, ptr %i.g, align 8, !tbaa !66
  %i.fb = fmul nsz double %i.ez, %i.fa
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %indvars.iv.next246.2
  store double %i.fb, ptr %i.fc, align 8, !tbaa !66
  %indvars.iv.next246.3 = add nuw nsw i64 %indvars.iv245, 4 ; 2 uses
  %exitcond249.not.3 = icmp eq i64 %indvars.iv.next246.3, %wide.trip.count248
  br i1 %exitcond249.not.3, label %.loopexit, label %scalar.ph293, !llvm.loop !118

.loopexit:                                        ; preds = %scalar.ph293.prol.loopexit, %scalar.ph293, %middle.block301, %._crit_edge212, %bb.c, %bb.b, %ff_clz_c.exit
  %.0161 = phi i32 [ %i.ba, %ff_clz_c.exit ], [ %i.be, %bb.b ], [ -12, %bb.c ], [ %i.be, %._crit_edge212 ], [ %i.be, %middle.block301 ], [ %i.be, %scalar.ph293 ], [ %i.be, %scalar.ph293.prol.loopexit ] ; 2 uses
  call void @av_tx_uninit(ptr noundef nonnull %i.c) #13
  call void @av_tx_uninit(ptr noundef nonnull %i.d) #13
  call void @av_freep(ptr noundef nonnull %i.a) #13
  %i.fd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @av_freep(ptr noundef nonnull %i.fd) #13
  call void @av_freep(ptr noundef nonnull %i.b) #13
  %i.fe = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @av_freep(ptr noundef nonnull %i.fe) #13
  %i.ff = icmp sgt i32 %.0161, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br i1 %i.ff, label %bb.d, label %.thread193

bb.d:                                             ; preds = %.loopexit
  %i.fg = getelementptr inbounds nuw i8, ptr %i.k, i64 88 ; 4 uses
  call void @av_frame_free(ptr noundef nonnull %i.fg) #13
  %i.fh = getelementptr inbounds nuw i8, ptr %i.k, i64 96 ; 3 uses
  call void @av_frame_free(ptr noundef nonnull %i.fh) #13
  %i.fi = getelementptr inbounds nuw i8, ptr %i.k, i64 104 ; 3 uses
  call void @av_frame_free(ptr noundef nonnull %i.fi) #13
  %i.fj = getelementptr inbounds nuw i8, ptr %i.k, i64 112 ; 2 uses
  call void @av_frame_free(ptr noundef nonnull %i.fj) #13
  %i.fk = load i32, ptr %i.t, align 4, !tbaa !50
  %i.fl = call ptr @ff_get_audio_buffer(ptr noundef nonnull %0, i32 noundef %i.fk) #13
  %i.fm = getelementptr inbounds nuw i8, ptr %i.k, i64 80 ; 2 uses
  store ptr %i.fl, ptr %i.fm, align 8, !tbaa !51
  %i.fn = load i32, ptr %i.t, align 4, !tbaa !50
  %i.fo = call ptr @ff_get_audio_buffer(ptr noundef nonnull %0, i32 noundef %i.fn) #13
  store ptr %i.fo, ptr %i.fg, align 8, !tbaa !79
  %i.fp = load i32, ptr %i.t, align 4, !tbaa !50
  %i.fq = call ptr @ff_get_audio_buffer(ptr noundef nonnull %0, i32 noundef %i.fp) #13
  store ptr %i.fq, ptr %i.fh, align 8, !tbaa !119
  %i.fr = load i32, ptr %i.t, align 4, !tbaa !50
  %i.fs = shl nsw i32 %i.fr, 1
  %i.ft = call ptr @ff_get_audio_buffer(ptr noundef nonnull %0, i32 noundef %i.fs) #13
  store ptr %i.ft, ptr %i.fi, align 8, !tbaa !120
  %i.fu = load i32, ptr %i.t, align 4, !tbaa !50
  %i.fv = call ptr @ff_get_audio_buffer(ptr noundef nonnull %0, i32 noundef %i.fu) #13 ; 2 uses
  store ptr %i.fv, ptr %i.fj, align 8, !tbaa !84
  %i.fw = load ptr, ptr %i.fg, align 8, !tbaa !79
  %.not172 = icmp eq ptr %i.fw, null
  br i1 %.not172, label %.thread193, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.fx = load ptr, ptr %i.fh, align 8, !tbaa !119
  %.not173 = icmp eq ptr %i.fx, null
  br i1 %.not173, label %.thread193, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.fy = load ptr, ptr %i.fi, align 8, !tbaa !120
  %.not174 = icmp eq ptr %i.fy, null
  %.not175 = icmp eq ptr %i.fv, null
  %or.cond189 = select i1 %.not174, i1 true, i1 %.not175
  br i1 %or.cond189, label %.thread193, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.fz = load ptr, ptr %i.fm, align 8, !tbaa !51
  %.not176 = icmp eq ptr %i.fz, null
  br i1 %.not176, label %.thread193, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !121
  %i.gc = load i32, ptr %i.t, align 4, !tbaa !50
  %i.gd = call ptr @av_audio_fifo_alloc(i32 noundef %i.gb, i32 noundef 1, i32 noundef %i.gc) #13 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.k, i64 168
  store ptr %i.gd, ptr %i.ge, align 8, !tbaa !35
  %.not177 = icmp eq ptr %i.gd, null
  br i1 %.not177, label %.thread193, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.gf = load i32, ptr %i.ga, align 4, !tbaa !121
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 4 uses
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !82
  %i.gi = load i32, ptr %i.t, align 4, !tbaa !50
  %i.gj = call ptr @av_audio_fifo_alloc(i32 noundef %i.gf, i32 noundef %i.gh, i32 noundef %i.gi) #13 ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.k, i64 176
  store ptr %i.gj, ptr %i.gk, align 8, !tbaa !34
  %.not178 = icmp eq ptr %i.gj, null
  br i1 %.not178, label %.thread193, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.gl = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !122
  %.not179 = icmp eq i32 %i.gm, 0
  br i1 %.not179, label %.thread, label %bb.k

.thread:                                          ; preds = %bb.j
  %i.gn = getelementptr inbounds nuw i8, ptr %i.k, i64 76
  store i32 0, ptr %i.gn, align 4, !tbaa !90
  br label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.go = load i32, ptr %i.t, align 4, !tbaa !50
  %i.gp = load i32, ptr %i.as, align 8, !tbaa !78
  %i.gq = sub nsw i32 %i.go, %i.gp                ; 2 uses
  %i.gr = sdiv i32 %i.gq, 2                       ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.k, i64 76
  store i32 %i.gr, ptr %i.gs, align 4, !tbaa !90
  %i.gt = icmp sgt i32 %i.gq, 1
  br i1 %i.gt, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.gu = load ptr, ptr %i.fg, align 8, !tbaa !79
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 96
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !52
  %i.gx = call i32 @av_audio_fifo_write(ptr noundef nonnull %i.gj, ptr noundef %i.gw, i32 noundef %i.gr) #13 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %.thread, %bb.l, %bb.k
  %i.gy = load i32, ptr %i.gg, align 4, !tbaa !82 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  store i32 %i.gy, ptr %i.gz, align 8, !tbaa !37
  %i.ha = sext i32 %i.gy to i64
  %i.hb = call noalias ptr @av_calloc(i64 noundef %i.ha, i64 noundef 128) #13 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.k, i64 120 ; 2 uses
  store ptr %i.hb, ptr %i.hc, align 8, !tbaa !36
  %.not180 = icmp eq ptr %i.hb, null
  br i1 %.not180, label %.thread193, label %.preheader

.preheader:                                       ; preds = %bb.m
  %i.hd = load i32, ptr %i.gg, align 4, !tbaa !82
  %i.he = icmp sgt i32 %i.hd, 0
  br i1 %i.he, label %.lr.ph218, label %.thread193

bb.n:                                             ; preds = %bb.t
  %indvars.iv.next251 = add nuw nsw i64 %indvars.iv250, 1 ; 2 uses
  %i.hf = load i32, ptr %i.gg, align 4, !tbaa !82
  %i.hg = sext i32 %i.hf to i64
  %i.hh = icmp slt i64 %indvars.iv.next251, %i.hg
  br i1 %i.hh, label %.lr.ph218, label %.thread193, !llvm.loop !123

.lr.ph218:                                        ; preds = %.preheader, %bb.n
  %indvars.iv250 = phi i64 [ %indvars.iv.next251, %bb.n ], [ 0, %.preheader ] ; 2 uses
  %i.hi = load ptr, ptr %i.hc, align 8, !tbaa !36
  %i.hj = getelementptr inbounds nuw [128 x i8], ptr %i.hi, i64 %indvars.iv250 ; 9 uses
  %i.hk = load i32, ptr %i.t, align 4, !tbaa !50
  %i.hl = sext i32 %i.hk to i64
  %i.hm = call noalias ptr @av_calloc(i64 noundef %i.hl, i64 noundef 8) #13
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hj, i64 8 ; 2 uses
  store ptr %i.hm, ptr %i.hn, align 8, !tbaa !124
  %i.ho = load i32, ptr %i.ab, align 4, !tbaa !125
  %i.hp = add nsw i32 %i.ho, 1
  %i.hq = sext i32 %i.hp to i64
  %i.hr = call noalias ptr @av_calloc(i64 noundef %i.hq, i64 noundef 8) #13
  store ptr %i.hr, ptr %i.hj, align 8, !tbaa !126
  %i.hs = load i32, ptr %i.ab, align 4, !tbaa !125
  %i.ht = add nsw i32 %i.hs, 1
  %i.hu = sext i32 %i.ht to i64
  %i.hv = call noalias ptr @av_calloc(i64 noundef %i.hu, i64 noundef 8) #13
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hj, i64 16 ; 2 uses
  store ptr %i.hv, ptr %i.hw, align 8, !tbaa !127
  %i.hx = load i32, ptr %i.ab, align 4, !tbaa !125
  %i.hy = add nsw i32 %i.hx, 1
  %i.hz = sext i32 %i.hy to i64
  %i.ia = call noalias ptr @av_calloc(i64 noundef %i.hz, i64 noundef 8) #13
end_hunk_0
