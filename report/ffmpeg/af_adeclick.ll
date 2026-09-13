Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_adeclick?download=true
inline.NumInlined: 10
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@activate:bb.a
  %.165.us.i = phi i32 [ %spec.select.us.i, %scalar.ph85 ], [ %.165.us.i.ph, %scalar.ph85.preheader ]
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %indvars.iv.i
  %i.dc = load double, ptr %i.db, align 8, !tbaa !50
  %i.dd = fcmp nsz une double %i.dc, 0.000000e+00
  %i.de = zext i1 %i.dd to i32
  %spec.select.us.i = add nsw i32 %.165.us.i, %i.de ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %scalar.ph85, !llvm.loop !95

._crit_edge.us.i:                                 ; preds = %scalar.ph85, %middle.block94
  %spec.select.us.i.lcssa = phi i32 [ %i.da, %middle.block94 ], [ %spec.select.us.i, %scalar.ph85 ] ; 2 uses
  %indvars.iv.next74.i = add nuw nsw i64 %indvars.iv73.i, 1 ; 2 uses
  %exitcond77.not.i = icmp eq i64 %indvars.iv.next74.i, %wide.trip.count76.i
  br i1 %exitcond77.not.i, label %._crit_edge69.loopexit.i, label %.lr.ph.us.i, !llvm.loop !96

._crit_edge69.loopexit.i:                         ; preds = %._crit_edge.us.i
  %i.df = sext i32 %spec.select.us.i.lcssa to i64
  br label %._crit_edge69.i

._crit_edge69.i:                                  ; preds = %._crit_edge69.loopexit.i, %.lr.ph68.i, %.preheader.i
  %.052.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %i.df, %._crit_edge69.loopexit.i ], [ 0, %.lr.ph68.i ]
  %i.dg = load ptr, ptr %i.br, align 8, !tbaa !31
  %i.dh = call i32 @av_audio_fifo_drain(ptr noundef %i.dg, i32 noundef %.pre.i) #13 ; 0 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.bn, i64 168
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !32
  %i.dk = load i32, ptr %i.bo, align 8, !tbaa !59
  %i.dl = call i32 @av_audio_fifo_drain(ptr noundef %i.dj, i32 noundef %i.dk) #13 ; 0 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bn, i64 160 ; 3 uses
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !105 ; 2 uses
  %i.do = icmp sgt i32 %i.dn, 0
  %.pre78.i = load i32, ptr %i.bo, align 8, !tbaa !59 ; 2 uses
  br i1 %i.do, label %bb.l, label %._crit_edge69._crit_edge.i

._crit_edge69._crit_edge.i:                       ; preds = %._crit_edge69.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 112
  %.pre79.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !103
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge69.i
  %..i = call i32 @llvm.smin.i32(i32 %.pre78.i, i32 %i.dn) ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bq, i64 112
  store i32 %..i, ptr %i.dp, align 8, !tbaa !103
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge69._crit_edge.i
  %i.dq = phi i32 [ %.pre79.i, %._crit_edge69._crit_edge.i ], [ %..i, %bb.l ]
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bn, i64 128 ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !49 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bq, i64 136
  store i64 %i.ds, ptr %i.dt, align 8, !tbaa !102
  %i.du = sext i32 %.pre78.i to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bl, i64 64
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !65
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bl, i64 96
  %.sroa.2.0.insert.ext.i = zext i32 %i.dw to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, 1
  %i.dy = load i64, ptr %i.dx, align 8
  %i.dz = call i64 @av_rescale_q(i64 noundef %i.du, i64 %.sroa.0.0.insert.insert.i, i64 %i.dy) #14
  %i.ea = add nsw i64 %i.dz, %i.ds
  store i64 %i.ea, ptr %i.dr, align 8, !tbaa !49
  %i.eb = getelementptr inbounds nuw i8, ptr %i.bn, i64 152 ; 2 uses
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !30
  %i.ed = add i64 %i.ec, %.052.lcssa.i
  store i64 %i.ed, ptr %i.eb, align 8, !tbaa !30
  %i.ee = load i32, ptr %i.cb, align 4, !tbaa !63
  %i.ef = mul nsw i32 %i.ee, %i.dq
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %i.bn, i64 144 ; 2 uses
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !29
  %i.ej = add i64 %i.ei, %i.eg
  store i64 %i.ej, ptr %i.eh, align 8, !tbaa !29
  %i.ek = call i32 @ff_filter_frame(ptr noundef %i.bl, ptr noundef nonnull %i.bq) #13 ; 5 uses
  %i.el = icmp slt i32 %i.ek, 0
  br i1 %i.el, label %filter_frame.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.em = load i32, ptr %i.dm, align 8, !tbaa !105 ; 2 uses
  %i.en = icmp sgt i32 %i.em, 0
  br i1 %i.en, label %bb.o, label %filter_frame.exit

bb.o:                                             ; preds = %bb.n
  %i.eo = load i32, ptr %i.bo, align 8, !tbaa !59
  %i.ep = sub nsw i32 %i.em, %i.eo                ; 2 uses
  store i32 %i.ep, ptr %i.dm, align 8, !tbaa !105
  %i.eq = icmp slt i32 %i.ep, 1
  br i1 %i.eq, label %bb.p, label %filter_frame.exit

bb.p:                                             ; preds = %bb.o
  %i.er = load ptr, ptr %i.br, align 8, !tbaa !31 ; 2 uses
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
  %i.eu = load ptr, ptr %i.ba, align 8, !tbaa !31
  %i.ev = call i32 @av_audio_fifo_size(ptr noundef %i.eu) #13
  %i.ew = load i32, ptr %i.n, align 4, !tbaa !38
  %.not61 = icmp slt i32 %i.ev, %i.ew
  br i1 %.not61, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @ff_filter_set_ready(ptr noundef nonnull %0, i32 noundef 100) #13
  br label %bb.aa

bb.t:                                             ; preds = %bb.r
  %i.ex = getelementptr inbounds nuw i8, ptr %i.l, i64 164 ; 3 uses
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !107
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
  store i32 1, ptr %i.ex, align 4, !tbaa !107
  %i.fd = load ptr, ptr %i.ba, align 8, !tbaa !31
  %i.fe = call i32 @av_audio_fifo_size(ptr noundef %i.fd) #13
  %i.ff = getelementptr inbounds nuw i8, ptr %i.l, i64 76
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !66
  %i.fh = sub nsw i32 %i.fe, %i.fg
  store i32 %i.fh, ptr %i.be, align 8, !tbaa !105
  call void @ff_filter_set_ready(ptr noundef nonnull %0, i32 noundef 100) #13
  br label %bb.aa

bb.w:                                             ; preds = %bb.u
  %.pr = load i32, ptr %i.ex, align 4, !tbaa !107
  %.not63 = icmp eq i32 %.pr, 0
  br i1 %.not63, label %bb.y, label %.thread

.thread:                                          ; preds = %bb.t, %bb.w
  %i.fi = load i32, ptr %i.be, align 8, !tbaa !105
  %i.fj = icmp slt i32 %i.fi, 1
  br i1 %i.fj, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %.thread
  %i.fk = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !49
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
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !58
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19   ; 21 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  store i64 -9223372036854775808, ptr %i.l, align 8, !tbaa !49
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load i32, ptr %i.m, align 8, !tbaa !65
  %i.o = sitofp nsz i32 %i.n to double
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.q = load double, ptr %i.p, align 8, !tbaa !122
  %i.r = fmul nsz double %i.q, %i.o
  %i.s = fdiv nsz double %i.r, 1.000000e+03       ; 2 uses
  %.inv = fcmp nsz ole double %i.s, 1.000000e+02
  %spec.select196 = select i1 %.inv, double 1.000000e+02, double %i.s
  %spec.select = fptosi double %spec.select196 to i32 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 68 ; 16 uses
  store i32 %spec.select, ptr %i.t, align 4, !tbaa !38
  %1 = uitofp nsz nneg i32 %spec.select to double
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.v = load double, ptr %i.u, align 8, !tbaa !123
  %i.w = fmul nsz double %i.v, %1
  %i.x = fdiv nsz double %i.w, 1.000000e+02       ; 2 uses
  %i.y = fcmp nsz ogt double %i.x, 1.000000e+00
  %i.z = select i1 %i.y, double %i.x, double 1.000000e+00
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 60 ; 5 uses
  %2 = sitofp nsz i32 %spec.select to double      ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !124
  %i.ad = fmul nsz double %i.ac, %2
  %i.ae = insertelement <2 x double> poison, double %i.z, i64 0
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.ag = load double, ptr %i.af, align 8, !tbaa !125
  %i.ah = insertelement <2 x double> poison, double %i.ad, i64 0
  %i.ai = insertelement <2 x double> %i.ah, double %i.ag, i64 1
  %i.aj = fdiv nsz <2 x double> %i.ai, <double 1.000000e+03, double 1.000000e+02> ; 2 uses
  %i.ak = shufflevector <2 x double> %i.ae, <2 x double> %i.aj, <2 x i32> <i32 0, i32 2>
  %i.al = fptosi <2 x double> %i.ak to <2 x i32>
  store <2 x i32> %i.al, ptr %i.aa, align 4, !tbaa !67
  %i.am = extractelement <2 x double> %i.aj, i64 1
  %i.an = fsub nsz double 1.000000e+00, %i.am
  %i.ao = fmul nsz double %i.an, %2               ; 2 uses
  %.inv197 = fcmp nsz ole double %i.ao, 1.000000e+00
  %i.ap = select i1 %.inv197, double 1.000000e+00, double %i.ao
  %i.aq = fptosi double %i.ap to i32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.k, i64 72 ; 4 uses
  store i32 %i.aq, ptr %i.ar, align 8, !tbaa !59
  %i.as = sext i32 %spec.select to i64
  %i.at = tail call noalias ptr @av_calloc(i64 noundef %i.as, i64 noundef 8) #13 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.k, i64 184 ; 2 uses
  store ptr %i.at, ptr %i.au, align 8, !tbaa !68
  %.not = icmp eq ptr %i.at, null
  br i1 %.not, label %.thread193, label %ff_clz_c.exit

ff_clz_c.exit:                                    ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store ptr null, ptr %i.c, align 8, !tbaa !127
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store ptr null, ptr %i.d, align 8, !tbaa !127
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #13
  %i.av = load i32, ptr %i.t, align 4, !tbaa !38
  %i.aw = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.av, i1 false) ; 2 uses
  %i.ax = sub nuw nsw i32 32, %i.aw
  %i.ay = shl nuw i32 1, %i.ax                    ; 6 uses
  store double 1.000000e+00, ptr %i.g, align 8, !tbaa !50
  %i.az = call i32 @av_tx_init(ptr noundef nonnull %i.c, ptr noundef nonnull %i.e, i32 noundef 7, i32 noundef 0, i32 noundef %i.ay, ptr noundef nonnull %i.g, i64 noundef 0) #13 ; 2 uses
  %i.ba = icmp slt i32 %i.az, 0
  br i1 %i.ba, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %ff_clz_c.exit
  %i.bb = sitofp nsz i32 %i.ay to double
  %i.bc = fdiv nsz double 1.000000e+00, %i.bb
  store double %i.bc, ptr %i.g, align 8, !tbaa !50
  %i.bd = call i32 @av_tx_init(ptr noundef nonnull %i.d, ptr noundef nonnull %i.f, i32 noundef 7, i32 noundef 1, i32 noundef %i.ay, ptr noundef nonnull %i.g, i64 noundef 0) #13 ; 6 uses
  %i.be = icmp slt i32 %i.bd, 0
  br i1 %i.be, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bf = add nuw nsw i32 %i.ay, 2
  %i.bg = sext i32 %i.bf to i64                   ; 4 uses
  %i.bh = call noalias ptr @av_calloc(i64 noundef %i.bg, i64 noundef 8) #13 ; 8 uses
  store ptr %i.bh, ptr %i.a, align 16, !tbaa !128
  %i.bi = call noalias ptr @av_calloc(i64 noundef %i.bg, i64 noundef 8) #13 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !128
  %i.bk = call noalias ptr @av_calloc(i64 noundef %i.bg, i64 noundef 8) #13 ; 14 uses
  store ptr %i.bk, ptr %i.b, align 16, !tbaa !128
  %i.bl = call noalias ptr @av_calloc(i64 noundef %i.bg, i64 noundef 8) #13 ; 6 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !128
  %i.bn = insertelement <4 x ptr> poison, ptr %i.bh, i64 0
  %i.bo = insertelement <4 x ptr> %i.bn, ptr %i.bi, i64 1
  %i.bp = insertelement <4 x ptr> %i.bo, ptr %i.bk, i64 2
  %i.bq = insertelement <4 x ptr> %i.bp, ptr %i.bl, i64 3
  %.fr = freeze <4 x ptr> %i.bq
  %i.br = icmp eq <4 x ptr> %.fr, splat (ptr null)
  %i.bs = bitcast <4 x i1> %i.br to i4
  %i.bt = icmp eq i4 %i.bs, 0
  br i1 %i.bt, label %.preheader199, label %.loopexit

.preheader199:                                    ; preds = %bb.c
  %i.bu = load i32, ptr %i.t, align 4, !tbaa !38
  %i.bv = load i32, ptr %i.ar, align 8, !tbaa !59 ; 4 uses
  %i.bw = sub nsw i32 %i.bu, %i.bv                ; 3 uses
  %i.bx = icmp sgt i32 %i.bw, 0
  br i1 %i.bx, label %.lr.ph204.preheader, label %.preheader198

.lr.ph204.preheader:                              ; preds = %.preheader199
  %wide.trip.count = zext nneg i32 %i.bw to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %i.bw, 4
  br i1 %min.iters.check, label %.lr.ph204.preheader305, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph204.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %index ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store <2 x double> splat (double 1.000000e+00), ptr %i.by, align 8, !tbaa !50
  store <2 x double> splat (double 1.000000e+00), ptr %i.bz, align 8, !tbaa !50
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !108

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader198, label %.lr.ph204.preheader305

.lr.ph204.preheader305:                           ; preds = %.lr.ph204.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph204.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph204

.preheader198:                                    ; preds = %.lr.ph204, %middle.block, %.preheader199
  %i.cb = icmp sgt i32 %i.bv, 0
  br i1 %i.cb, label %.lr.ph207.preheader, label %._crit_edge

.lr.ph207.preheader:                              ; preds = %.preheader198
  %wide.trip.count238 = zext nneg i32 %i.bv to i64 ; 3 uses
  %min.iters.check265 = icmp ult i32 %i.bv, 4
  br i1 %min.iters.check265, label %.lr.ph207.preheader304, label %vector.ph266

vector.ph266:                                     ; preds = %.lr.ph207.preheader
  %n.vec267 = and i64 %wide.trip.count238, 2147483644 ; 3 uses
  br label %vector.body268

vector.body268:                                   ; preds = %vector.body268, %vector.ph266
  %index269 = phi i64 [ 0, %vector.ph266 ], [ %index.next270, %vector.body268 ] ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %index269 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store <2 x double> splat (double 1.000000e+00), ptr %i.cc, align 8, !tbaa !50
  store <2 x double> splat (double 1.000000e+00), ptr %i.cd, align 8, !tbaa !50
  %index.next270 = add nuw i64 %index269, 4       ; 2 uses
  %i.ce = icmp eq i64 %index.next270, %n.vec267
  br i1 %i.ce, label %middle.block271, label %vector.body268, !llvm.loop !109

middle.block271:                                  ; preds = %vector.body268
  %cmp.n272 = icmp eq i64 %n.vec267, %wide.trip.count238
  br i1 %cmp.n272, label %._crit_edge, label %.lr.ph207.preheader304

.lr.ph207.preheader304:                           ; preds = %.lr.ph207.preheader, %middle.block271
  %indvars.iv235.ph = phi i64 [ 0, %.lr.ph207.preheader ], [ %n.vec267, %middle.block271 ]
  br label %.lr.ph207

.lr.ph204:                                        ; preds = %.lr.ph204.preheader305, %.lr.ph204
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph204 ], [ %indvars.iv.ph, %.lr.ph204.preheader305 ] ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv
  store double 1.000000e+00, ptr %i.cf, align 8, !tbaa !50
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader198, label %.lr.ph204, !llvm.loop !110

._crit_edge:                                      ; preds = %.lr.ph207, %middle.block271, %.preheader198
  %i.cg = load ptr, ptr %i.e, align 8, !tbaa !129
  %i.ch = load ptr, ptr %i.c, align 8, !tbaa !127
  call void %i.cg(ptr noundef %i.ch, ptr noundef nonnull %i.bk, ptr noundef nonnull %i.bh, i64 noundef 8) #13
  %i.ci = load ptr, ptr %i.e, align 8, !tbaa !129
  %i.cj = load ptr, ptr %i.c, align 8, !tbaa !127
  call void %i.ci(ptr noundef %i.cj, ptr noundef nonnull %i.bl, ptr noundef nonnull %i.bi, i64 noundef 8) #13
  %.not171208 = icmp eq i32 %i.aw, 1
  br i1 %.not171208, label %._crit_edge212, label %.lr.ph211

.lr.ph211:                                        ; preds = %._crit_edge
  %i.ck = sdiv i32 %i.ay, 2
  %smax = call i32 @llvm.smax.i32(i32 %i.ck, i32 0)
  %i.cl = add nuw nsw i32 %smax, 1
  %wide.trip.count243 = zext nneg i32 %i.cl to i64 ; 3 uses
  %min.iters.check275 = icmp slt i32 %i.ay, 2
  br i1 %min.iters.check275, label %scalar.ph274.preheader, label %vector.ph276

vector.ph276:                                     ; preds = %.lr.ph211
  %n.vec277 = and i64 %wide.trip.count243, 2147483646 ; 3 uses
  br label %vector.body278

vector.body278:                                   ; preds = %vector.body278, %vector.ph276
  %index279 = phi i64 [ 0, %vector.ph276 ], [ %index.next284, %vector.body278 ] ; 2 uses
  %i.cm = shl nuw nsw i64 %index279, 1            ; 3 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.cm
  %wide.vec = load <4 x double>, ptr %i.cn, align 8, !tbaa !50 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec280 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.cm
  %wide.vec281 = load <4 x double>, ptr %i.co, align 8, !tbaa !50 ; 2 uses
  %strided.vec282 = shufflevector <4 x double> %wide.vec281, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec283 = shufflevector <4 x double> %wide.vec281, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.cp = fneg nsz <2 x double> %strided.vec283
  %i.cq = fmul nsz <2 x double> %strided.vec280, %i.cp
  %i.cr = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %strided.vec282, <2 x double> %i.cq)
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.cm
  %i.ct = fmul nsz <2 x double> %strided.vec280, %strided.vec282
  %i.cu = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %strided.vec283, <2 x double> %i.ct)
  %interleaved.vec = shufflevector <2 x double> %i.cr, <2 x double> %i.cu, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec, ptr %i.cs, align 8, !tbaa !50
  %index.next284 = add nuw i64 %index279, 2       ; 2 uses
  %i.cv = icmp eq i64 %index.next284, %n.vec277
  br i1 %i.cv, label %middle.block285, label %vector.body278, !llvm.loop !111

middle.block285:                                  ; preds = %vector.body278
  %cmp.n286 = icmp eq i64 %n.vec277, %wide.trip.count243
  br i1 %cmp.n286, label %._crit_edge212, label %scalar.ph274.preheader

scalar.ph274.preheader:                           ; preds = %.lr.ph211, %middle.block285
  %indvars.iv240.ph = phi i64 [ 0, %.lr.ph211 ], [ %n.vec277, %middle.block285 ]
  br label %scalar.ph274

.lr.ph207:                                        ; preds = %.lr.ph207.preheader304, %.lr.ph207
  %indvars.iv235 = phi i64 [ %indvars.iv.next236, %.lr.ph207 ], [ %indvars.iv235.ph, %.lr.ph207.preheader304 ] ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv235
  store double 1.000000e+00, ptr %i.cw, align 8, !tbaa !50
  %indvars.iv.next236 = add nuw nsw i64 %indvars.iv235, 1 ; 2 uses
  %exitcond239.not = icmp eq i64 %indvars.iv.next236, %wide.trip.count238
  br i1 %exitcond239.not, label %._crit_edge, label %.lr.ph207, !llvm.loop !112

._crit_edge212:                                   ; preds = %scalar.ph274, %middle.block285, %._crit_edge
  %i.cx = load ptr, ptr %i.f, align 8, !tbaa !129
end_hunk_0
