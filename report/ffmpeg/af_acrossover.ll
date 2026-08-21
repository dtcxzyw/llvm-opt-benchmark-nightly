Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_acrossover?download=true
inline.NumInlined: 22
inline.NumDeleted: 11
begin_hunk_0_@config_input:bb.a
  %i.iq = getelementptr inbounds nuw [1280 x i8], ptr %i.ao, i64 %indvars.iv119 ; 3 uses
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv119
  %.pre124 = load float, ptr %i.ir, align 4, !tbaa !27
  %i.is = fpext nsz float %.pre124 to double
  %i.it = fmul nsz double %i.is, f0x401921FB54442D18
  %i.iu = fdiv nsz double %i.it, %i.am
  %sincos.i99 = tail call nsz { double, double } @llvm.sincos.f64(double %i.iu) ; 2 uses
  %sin.i100 = extractvalue { double, double } %sincos.i99, 0 ; 2 uses
  %cos.i101 = extractvalue { double, double } %sincos.i99, 1
  %i.iv = fmul nsz double %cos.i101, -2.000000e+00 ; 3 uses
  %i.iw = fneg nsz double %i.iv                   ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph109
  %broadcast.splatinsert = insertelement <2 x double> poison, double %sin.i100, i64 0
  %broadcast.splatinsert127 = insertelement <2 x double> poison, double %i.iv, i64 0
  %broadcast.splat128 = shufflevector <2 x double> %broadcast.splatinsert127, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert129 = insertelement <2 x double> poison, double %i.iw, i64 0
  %broadcast.splat130 = shufflevector <2 x double> %broadcast.splatinsert129, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ix = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.iy = or disjoint i64 %index, %i.as           ; 3 uses
  %i.iz = sub nsw i64 %i.at, %i.iy
  %i.ja = getelementptr inbounds nuw [64 x i8], ptr %i.iq, i64 %i.iy ; 10 uses
  %i.jb = getelementptr [64 x i8], ptr %i.iq, i64 %i.iy ; 6 uses
  %i.jc = getelementptr i8, ptr %i.jb, i64 64
  %i.jd = getelementptr [8 x i8], ptr %i.a, i64 %i.iz
  %i.je = getelementptr i8, ptr %i.jd, i64 -16
  %wide.load = load <2 x double>, ptr %i.je, align 8, !tbaa !81
  %i.jf = fmul nsz <2 x double> %wide.load, splat (double 2.000000e+00)
  %i.jg = shufflevector <2 x double> %i.jf, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %reverse = fdiv nsz <2 x double> %i.ix, %i.jg   ; 2 uses
  %i.jh = fadd nsz <2 x double> %reverse, splat (double 1.000000e+00) ; 6 uses
  %i.ji = fsub nsz <2 x double> splat (double 1.000000e+00), %reverse ; 2 uses
  %i.jj = fdiv nsz <2 x double> %i.ji, %i.jh      ; 4 uses
  %i.jk = extractelement <2 x double> %i.jj, i64 0
  store double %i.jk, ptr %i.ja, align 8, !tbaa !81
  %i.jl = fdiv nsz <2 x double> %broadcast.splat128, %i.jh ; 4 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %i.jn = extractelement <2 x double> %i.jl, i64 0
  store double %i.jn, ptr %i.jm, align 8, !tbaa !81
  %i.jo = shufflevector <2 x double> %i.jj, <2 x double> %i.jl, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.jo, ptr %i.jc, align 8, !tbaa !81
  %i.jp = fdiv nsz <2 x double> %i.jh, %i.jh      ; 4 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  %i.jr = getelementptr i8, ptr %i.jb, i64 80
  %i.js = extractelement <2 x double> %i.jp, i64 0
  store double %i.js, ptr %i.jq, align 8, !tbaa !81
  %i.jt = fdiv nsz <2 x double> %broadcast.splat130, %i.jh ; 4 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ja, i64 24
  %i.jv = extractelement <2 x double> %i.jt, i64 0
  store double %i.jv, ptr %i.ju, align 8, !tbaa !81
  %i.jw = shufflevector <2 x double> %i.jp, <2 x double> %i.jt, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.jw, ptr %i.jr, align 8, !tbaa !81
  %i.jx = fneg nsz <2 x double> %i.ji
  %i.jy = fdiv nsz <2 x double> %i.jx, %i.jh      ; 3 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ja, i64 32
  %i.ka = getelementptr i8, ptr %i.jb, i64 96
  %i.kb = extractelement <2 x double> %i.jy, i64 0
  store double %i.kb, ptr %i.jz, align 8, !tbaa !81
  %i.kc = extractelement <2 x double> %i.jy, i64 1
  store double %i.kc, ptr %i.ka, align 8, !tbaa !81
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ja, i64 40
  %i.ke = getelementptr i8, ptr %i.jb, i64 104
  %i.kf = extractelement <2 x double> %i.jj, i64 0
  %i.kg = fptrunc double %i.kf to float
  store float %i.kg, ptr %i.kd, align 8, !tbaa !27
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ja, i64 44
  %i.ki = extractelement <2 x double> %i.jl, i64 0
  %i.kj = fptrunc double %i.ki to float
  store float %i.kj, ptr %i.kh, align 4, !tbaa !27
  %i.kk = shufflevector <2 x double> %i.jj, <2 x double> %i.jl, <2 x i32> <i32 1, i32 3>
  %i.kl = fptrunc nsz <2 x double> %i.kk to <2 x float>
  store <2 x float> %i.kl, ptr %i.ke, align 8, !tbaa !27
  %i.km = getelementptr inbounds nuw i8, ptr %i.ja, i64 48
  %i.kn = getelementptr i8, ptr %i.jb, i64 112
  %i.ko = extractelement <2 x double> %i.jp, i64 0
  %i.kp = fptrunc double %i.ko to float
  store float %i.kp, ptr %i.km, align 8, !tbaa !27
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ja, i64 52
  %i.kr = extractelement <2 x double> %i.jt, i64 0
  %i.ks = fptrunc double %i.kr to float
  store float %i.ks, ptr %i.kq, align 4, !tbaa !27
  %i.kt = shufflevector <2 x double> %i.jp, <2 x double> %i.jt, <2 x i32> <i32 1, i32 3>
  %i.ku = fptrunc nsz <2 x double> %i.kt to <2 x float>
  store <2 x float> %i.ku, ptr %i.kn, align 8, !tbaa !27
  %i.kv = fptrunc nsz <2 x double> %i.jy to <2 x float> ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ja, i64 56
  %i.kx = getelementptr i8, ptr %i.jb, i64 120
  %i.ky = extractelement <2 x float> %i.kv, i64 0
  store float %i.ky, ptr %i.kw, align 8, !tbaa !27
  %i.kz = extractelement <2 x float> %i.kv, i64 1
  store float %i.kz, ptr %i.kx, align 8, !tbaa !27
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.la = icmp eq i64 %index.next, %n.vec
  br i1 %i.la, label %middle.block, label %vector.body, !llvm.loop !89

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge110, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph109, %middle.block
  %indvars.iv116.ph = phi i64 [ %i.as, %.lr.ph109 ], [ %i.ba, %middle.block ]
  %i.lb = insertelement <4 x double> poison, double %i.iv, i64 1
  br label %scalar.ph

._crit_edge110:                                   ; preds = %scalar.ph, %middle.block, %bb.g
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %exitcond123.not = icmp eq i64 %indvars.iv.next120, %wide.trip.count122
  br i1 %exitcond123.not, label %._crit_edge114, label %bb.c, !llvm.loop !90

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv116 = phi i64 [ %indvars.iv.next117, %scalar.ph ], [ %indvars.iv116.ph, %scalar.ph.preheader ] ; 3 uses
  %i.lc = sub nsw i64 %i.at, %indvars.iv116
  %i.ld = getelementptr inbounds nuw [64 x i8], ptr %i.iq, i64 %indvars.iv116 ; 5 uses
  %i.le = getelementptr [8 x i8], ptr %i.a, i64 %i.lc
  %i.lf = getelementptr i8, ptr %i.le, i64 -8
  %i.lg = load double, ptr %i.lf, align 8, !tbaa !81
  %i.lh = fmul nsz double %i.lg, 2.000000e+00
  %i.li = fdiv nsz double %sin.i100, %i.lh        ; 2 uses
  %i.lj = fadd nsz double %i.li, 1.000000e+00     ; 2 uses
  %i.lk = fsub nsz double 1.000000e+00, %i.li     ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.ld, i64 16
  %i.lm = fneg nsz double %i.lk
  %i.ln = fdiv nsz double %i.lm, %i.lj            ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ld, i64 32
  store double %i.ln, ptr %i.lo, align 8, !tbaa !81
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ld, i64 40
  %i.lq = insertelement <4 x double> %i.lb, double %i.lk, i64 0
  %i.lr = insertelement <4 x double> %i.lq, double %i.lj, i64 2 ; 2 uses
  %i.ls = insertelement <4 x double> %i.lr, double %i.iw, i64 3
  %i.lt = shufflevector <4 x double> %i.lr, <4 x double> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.lu = fdiv nsz <4 x double> %i.ls, %i.lt      ; 3 uses
  %i.lv = shufflevector <4 x double> %i.lu, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  store <2 x double> %i.lv, ptr %i.ld, align 8, !tbaa !81
  %i.lw = shufflevector <4 x double> %i.lu, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  store <2 x double> %i.lw, ptr %i.ll, align 8, !tbaa !81
  %i.lx = fptrunc <4 x double> %i.lu to <4 x float>
  store <4 x float> %i.lx, ptr %i.lp, align 8, !tbaa !27
  %i.ly = fptrunc nsz double %i.ln to float
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ld, i64 56
  store float %i.ly, ptr %i.lz, align 8, !tbaa !27
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1 ; 2 uses
  %i.ma = icmp slt i64 %indvars.iv.next117, %i.at
  br i1 %i.ma, label %scalar.ph, label %._crit_edge110, !llvm.loop !91

bb.h:                                             ; preds = %._crit_edge114
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge114, %bb.h
  %filter_channels_dblp.sink = phi ptr [ @filter_channels_dblp, %bb.h ], [ @filter_channels_fltp, %._crit_edge114 ]
  %i.mb = getelementptr inbounds nuw i8, ptr %i.e, i64 65616
  store ptr %filter_channels_dblp.sink, ptr %i.mb, align 8, !tbaa !68
  %i.mc = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.md = load i32, ptr %i.mc, align 8, !tbaa !39 ; 2 uses
  %i.me = mul i32 %i.md, 10
  %reass.add = add i32 %i.me, 20
  %reass.mul = shl i32 %i.md, 1
  %i.mf = mul i32 %reass.mul, %reass.add
  %i.mg = tail call ptr @ff_get_audio_buffer(ptr noundef nonnull %0, i32 noundef %i.mf) #8 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.e, i64 65472
  store ptr %i.mg, ptr %i.mh, align 8, !tbaa !92
  %.not84 = icmp eq ptr %i.mg, null
  %. = select i1 %.not84, i32 -12, i32 0
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge114
  %.0 = phi i32 [ %., %bb.i ], [ -558323010, %._crit_edge114 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @filter_channels_fltp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 65480 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 388
  %i.e = load i32, ptr %i.d, align 4, !tbaa !93
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = sext i32 %2 to i64
  %i.h = mul nsw i64 %i.f, %i.g
  %i.i = sext i32 %3 to i64                       ; 2 uses
  %i.j = sdiv i64 %i.h, %i.i                      ; 2 uses
  %i.k = trunc i64 %i.j to i32
  %i.l = add nsw i32 %2, 1
  %i.m = sext i32 %i.l to i64
  %i.n = mul nsw i64 %i.f, %i.m
  %i.o = sdiv i64 %i.n, %i.i
  %i.p = trunc i64 %i.o to i32                    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load i32, ptr %i.q, align 8, !tbaa !39   ; 11 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.t = load i32, ptr %i.s, align 4, !tbaa !79
  %.fr216 = freeze i32 %i.t                       ; 3 uses
  %i.u = icmp slt i32 %i.k, %i.p
  br i1 %i.u, label %.lr.ph214, label %._crit_edge215

.lr.ph214:                                        ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.w = load i32, ptr %i.v, align 8, !tbaa !60   ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 65472
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 65624 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.ab = add i32 %i.w, 3
  %i.ac = and i32 %i.ab, -4                       ; 3 uses
  %i.ad = icmp sgt i32 %i.r, 0
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.af = mul nsw i32 %i.r, 20
  %i.ag = sext i32 %i.af to i64
  %i.ah = icmp sgt i32 %i.w, 1                    ; 4 uses
  %i.ai = zext nneg i32 %i.w to i64               ; 4 uses
  %i.aj = and i32 %i.w, 1
  %.not.i = icmp eq i32 %i.aj, 0                  ; 4 uses
  %i.ak = add nsw i32 %i.w, -1
  %i.al = sext i32 %i.ak to i64                   ; 2 uses
  %i.am = sext i32 %i.w to i64                    ; 3 uses
  %.not = icmp eq i32 %.fr216, 0                  ; 2 uses
  %i.an = mul nsw i32 %i.r, 40
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 2 uses
  %i.ar = sext i32 %.fr216 to i64
  %i.as = sext i32 %i.r to i64
  %sext = shl i64 %i.j, 32
  %i.at = ashr exact i64 %sext, 32
  %wide.trip.count248 = zext nneg i32 %i.r to i64
  %wide.trip.count253 = zext nneg i32 %i.r to i64
  %wide.trip.count258 = zext nneg i32 %i.r to i64
  br label %bb.b

._crit_edge215:                                   ; preds = %._crit_edge, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph214, %._crit_edge
  %indvars.iv260 = phi i64 [ %i.at, %.lr.ph214 ], [ %indvars.iv.next261, %._crit_edge ] ; 11 uses
  %i.au = load ptr, ptr %i.x, align 8, !tbaa !94
  %i.av = getelementptr inbounds [8 x i8], ptr %i.au, i64 %indvars.iv260
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !20
  %i.ax = load ptr, ptr %i.y, align 8, !tbaa !92
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 96
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !94
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.az, i64 %indvars.iv260
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !20 ; 3 uses
  %i.bc = load ptr, ptr %i.z, align 8, !tbaa !21
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !95
  %i.bf = load ptr, ptr %i.c, align 8, !tbaa !50
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 96
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !94
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %indvars.iv260
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !20
  %i.bk = load float, ptr %i.aa, align 4, !tbaa !97
  tail call void %i.be(ptr noundef %i.bj, ptr noundef %i.aw, float noundef %i.bk, i32 noundef %i.ac) #8
  br i1 %i.ad, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.ag
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.ao ; 2 uses
  br label %.preheader

.loopexit186:                                     ; preds = %.loopexit, %.critedge2
  %indvars.iv.next240 = add nuw i32 %indvars.iv239, 1
  %exitcond249.not = icmp eq i64 %indvars.iv.next246, %wide.trip.count248
  br i1 %exitcond249.not, label %.lr.ph211, label %.preheader, !llvm.loop !98

.lr.ph211:                                        ; preds = %.loopexit186
  br i1 %.not, label %.lr.ph211.split.us, label %.lr.ph211.split

.lr.ph211.split.us:                               ; preds = %.lr.ph211, %.lr.ph211.split.us
  %indvars.iv255 = phi i64 [ %indvars.iv.next256, %.lr.ph211.split.us ], [ 0, %.lr.ph211 ] ; 3 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv255
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !27
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv255
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !50
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 96
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !94
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %indvars.iv260
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !20 ; 2 uses
  %i.bv = load ptr, ptr %i.z, align 8, !tbaa !21
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !95
  tail call void %i.bx(ptr noundef %i.bu, ptr noundef %i.bu, float noundef %i.bo, i32 noundef %i.ac) #8
  %indvars.iv.next256 = add nuw nsw i64 %indvars.iv255, 1 ; 2 uses
  %exitcond259.not = icmp eq i64 %indvars.iv.next256, %wide.trip.count258
  br i1 %exitcond259.not, label %._crit_edge, label %.lr.ph211.split.us, !llvm.loop !99

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit186
  %indvars.iv245 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next246, %.loopexit186 ] ; 8 uses
  %indvars.iv239 = phi i32 [ 2, %.preheader.lr.ph ], [ %indvars.iv.next240, %.loopexit186 ] ; 2 uses
  %4 = zext i32 %indvars.iv239 to i64
  %indvars.iv.next246 = add nuw nsw i64 %indvars.iv245, 1 ; 5 uses
  %i.by = icmp slt i64 %indvars.iv.next246, %i.as
  br i1 %i.by, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %.preheader
  %i.bz = load i32, ptr %i.ae, align 8, !tbaa !78 ; 3 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv245 ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next246
  %i.cc = mul nuw nsw i64 %indvars.iv245, 20      ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.cc
  %i.ce = getelementptr inbounds nuw [1280 x i8], ptr %i.b, i64 %indvars.iv245 ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.bz, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64   ; 2 uses
  %exitcond.not286 = icmp slt i32 %i.bz, 1
  br i1 %exitcond.not286, label %.lr.ph203, label %.lr.ph288.preheader

.lr.ph288.preheader:                              ; preds = %.lr.ph
  %i.cf = load ptr, ptr %i.ca, align 8, !tbaa !50
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 96
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !94
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %indvars.iv260
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !20
  %i.ck = load ptr, ptr %i.cb, align 8, !tbaa !50
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 96
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !94
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %indvars.iv260
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !20 ; 4 uses
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.co, i64 %i.al
  br label %.lr.ph288

.lr.ph203:                                        ; preds = %biquad_process_fltp.exit, %.lr.ph
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.cc
  %exitcond233.not289 = icmp slt i32 %i.bz, 1
  br i1 %exitcond233.not289, label %.critedge2, label %.lr.ph291.preheader

.lr.ph291.preheader:                              ; preds = %.lr.ph203
  %i.cr = load ptr, ptr %i.ca, align 8, !tbaa !50
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 96
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !94
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %indvars.iv260
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !20 ; 2 uses
  %i.cw = getelementptr [4 x i8], ptr %i.cv, i64 %i.am
  %i.cx = getelementptr i8, ptr %i.cw, i64 -4     ; 2 uses
  br label %.lr.ph291

.lr.ph288:                                        ; preds = %.lr.ph288.preheader, %biquad_process_fltp.exit
  %indvars.iv287 = phi i64 [ %indvars.iv.next, %biquad_process_fltp.exit ], [ 0, %.lr.ph288.preheader ] ; 4 uses
  %i.cy = icmp eq i64 %indvars.iv287, 0
  %i.cz = select i1 %i.cy, ptr %i.cj, ptr %i.co   ; 3 uses
  %.idx269 = shl nuw nsw i64 %indvars.iv287, 3
  %i.da = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx269 ; 3 uses
  %i.db = getelementptr inbounds nuw [64 x i8], ptr %i.ce, i64 %indvars.iv287 ; 5 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 21992
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !27 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 21996
  %i.df = load float, ptr %i.de, align 4, !tbaa !27 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 22000
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !27 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.db, i64 22004
  %i.dj = load float, ptr %i.di, align 4, !tbaa !27 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.db, i64 22008
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !27 ; 3 uses
  %i.dm = load float, ptr %i.da, align 4, !tbaa !27 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.da, i64 4 ; 2 uses
  %i.do = load float, ptr %i.dn, align 4, !tbaa !27 ; 2 uses
  br i1 %i.ah, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.lr.ph288
  %.068.lcssa.i = phi float [ %i.dm, %.lr.ph288 ], [ %i.ec, %.lr.ph.i ] ; 2 uses
  %.067.lcssa.i = phi float [ %i.do, %.lr.ph288 ], [ %i.ee, %.lr.ph.i ] ; 2 uses
  br i1 %.not.i, label %biquad_process_fltp.exit, label %bb.c

.lr.ph.i:                                         ; preds = %.lr.ph288, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %.lr.ph288 ] ; 4 uses
  %.06773.i = phi float [ %i.ee, %.lr.ph.i ], [ %i.do, %.lr.ph288 ]
  %.06872.i = phi float [ %i.ec, %.lr.ph.i ], [ %i.dm, %.lr.ph288 ]
  %i.dp = or disjoint i64 %indvars.iv.i, 1        ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv.i
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !27 ; 3 uses
  %i.ds = tail call nsz float @llvm.fmuladd.f32(float %i.dr, float %i.dd, float %.06872.i) ; 3 uses
  %i.dt = tail call nsz float @llvm.fmuladd.f32(float %i.df, float %i.dr, float %.06773.i)
  %i.du = tail call nsz float @llvm.fmuladd.f32(float %i.dj, float %i.ds, float %i.dt)
  %i.dv = fmul nsz float %i.dl, %i.ds
  %i.dw = tail call nsz float @llvm.fmuladd.f32(float %i.dh, float %i.dr, float %i.dv)
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv.i
  store float %i.ds, ptr %i.dx, align 4, !tbaa !27
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.dp
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !27 ; 3 uses
  %i.ea = tail call nsz float @llvm.fmuladd.f32(float %i.dz, float %i.dd, float %i.du) ; 3 uses
  %i.eb = tail call nsz float @llvm.fmuladd.f32(float %i.df, float %i.dz, float %i.dw)
  %i.ec = tail call nsz float @llvm.fmuladd.f32(float %i.dj, float %i.ea, float %i.eb) ; 2 uses
  %i.ed = fmul nsz float %i.dl, %i.ea
  %i.ee = tail call nsz float @llvm.fmuladd.f32(float %i.dh, float %i.dz, float %i.ed) ; 2 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.dp
  store float %i.ea, ptr %i.ef, align 4, !tbaa !27
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.eg = or disjoint i64 %indvars.iv.next.i, 1
  %i.eh = icmp samesign ult i64 %i.eg, %i.ai
  br i1 %i.eh, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !100

bb.c:                                             ; preds = %._crit_edge.i
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.al
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !27 ; 3 uses
  %i.ek = tail call nsz float @llvm.fmuladd.f32(float %i.ej, float %i.dd, float %.068.lcssa.i) ; 3 uses
  %i.el = tail call nsz float @llvm.fmuladd.f32(float %i.df, float %i.ej, float %.067.lcssa.i)
  %i.em = tail call nsz float @llvm.fmuladd.f32(float %i.dj, float %i.ek, float %i.el)
  %i.en = fmul nsz float %i.dl, %i.ek
  %i.eo = tail call nsz float @llvm.fmuladd.f32(float %i.dh, float %i.ej, float %i.en)
  store float %i.ek, ptr %i.cp, align 4, !tbaa !27
  br label %biquad_process_fltp.exit

biquad_process_fltp.exit:                         ; preds = %._crit_edge.i, %bb.c
  %.169.i = phi nsz float [ %i.em, %bb.c ], [ %.068.lcssa.i, %._crit_edge.i ]
  %.1.i = phi nsz float [ %i.eo, %bb.c ], [ %.067.lcssa.i, %._crit_edge.i ]
  store float %.169.i, ptr %i.da, align 4, !tbaa !27
  store float %.1.i, ptr %i.dn, align 4, !tbaa !27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv287, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph203, label %.lr.ph288

.critedge2:                                       ; preds = %biquad_process_fltp.exit159, %.lr.ph203, %.preheader
  %5 = trunc i64 %indvars.iv245 to i32
  %6 = add i32 %5, 2
  %i.ep = icmp slt i32 %6, %i.r
  br i1 %i.ep, label %.lr.ph208, label %.loopexit186

.lr.ph208:                                        ; preds = %.critedge2
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv245 ; 2 uses
  %i.er = load i32, ptr %i.ap, align 8, !tbaa !80 ; 2 uses
  %i.es = icmp slt i32 %.fr216, %i.er
  %i.et = trunc nuw nsw i64 %indvars.iv245 to i32
  %i.eu = trunc nuw nsw i64 %indvars.iv245 to i32
  %wide.trip.count237 = sext i32 %i.er to i64
  br label %bb.e

.lr.ph291:                                        ; preds = %.lr.ph291.preheader, %biquad_process_fltp.exit159
  %indvars.iv228290 = phi i64 [ %indvars.iv.next229, %biquad_process_fltp.exit159 ], [ 0, %.lr.ph291.preheader ] ; 3 uses
  %.idx268 = shl nuw nsw i64 %indvars.iv228290, 3
  %i.ev = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.idx268 ; 3 uses
  %i.ew = getelementptr inbounds nuw [64 x i8], ptr %i.ce, i64 %indvars.iv228290 ; 5 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 232
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !27 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 236
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !27 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ew, i64 240
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !27 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ew, i64 244
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !27 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ew, i64 248
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !27 ; 3 uses
  %i.fh = load float, ptr %i.ev, align 4, !tbaa !27 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ev, i64 4 ; 2 uses
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !27 ; 2 uses
  br i1 %i.ah, label %.lr.ph.i154, label %._crit_edge.i147

._crit_edge.i147:                                 ; preds = %.lr.ph.i154, %.lr.ph291
  %.068.lcssa.i148 = phi float [ %i.fh, %.lr.ph291 ], [ %i.fv, %.lr.ph.i154 ] ; 2 uses
  %.067.lcssa.i149 = phi float [ %i.fj, %.lr.ph291 ], [ %i.fx, %.lr.ph.i154 ] ; 2 uses
  br i1 %.not.i, label %biquad_process_fltp.exit159, label %bb.d

.lr.ph.i154:                                      ; preds = %.lr.ph291, %.lr.ph.i154
  %indvars.iv.i155 = phi i64 [ %indvars.iv.next.i158, %.lr.ph.i154 ], [ 0, %.lr.ph291 ] ; 2 uses
  %.06773.i156 = phi float [ %i.fx, %.lr.ph.i154 ], [ %i.fj, %.lr.ph291 ]
  %.06872.i157 = phi float [ %i.fv, %.lr.ph.i154 ], [ %i.fh, %.lr.ph291 ]
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv.i155 ; 3 uses
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !27 ; 3 uses
  %i.fm = tail call nsz float @llvm.fmuladd.f32(float %i.fl, float %i.ey, float %.06872.i157) ; 3 uses
  %i.fn = tail call nsz float @llvm.fmuladd.f32(float %i.fa, float %i.fl, float %.06773.i156)
  %i.fo = tail call nsz float @llvm.fmuladd.f32(float %i.fe, float %i.fm, float %i.fn)
  %i.fp = fmul nsz float %i.fg, %i.fm
  %i.fq = tail call nsz float @llvm.fmuladd.f32(float %i.fc, float %i.fl, float %i.fp)
  store float %i.fm, ptr %i.fk, align 4, !tbaa !27
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fk, i64 4 ; 2 uses
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !27 ; 3 uses
  %i.ft = tail call nsz float @llvm.fmuladd.f32(float %i.fs, float %i.ey, float %i.fo) ; 3 uses
  %i.fu = tail call nsz float @llvm.fmuladd.f32(float %i.fa, float %i.fs, float %i.fq)
  %i.fv = tail call nsz float @llvm.fmuladd.f32(float %i.fe, float %i.ft, float %i.fu) ; 2 uses
  %i.fw = fmul nsz float %i.fg, %i.ft
  %i.fx = tail call nsz float @llvm.fmuladd.f32(float %i.fc, float %i.fs, float %i.fw) ; 2 uses
  store float %i.ft, ptr %i.fr, align 4, !tbaa !27
  %indvars.iv.next.i158 = add nuw nsw i64 %indvars.iv.i155, 2 ; 2 uses
  %i.fy = or disjoint i64 %indvars.iv.next.i158, 1
  %i.fz = icmp samesign ult i64 %i.fy, %i.ai
  br i1 %i.fz, label %.lr.ph.i154, label %._crit_edge.i147, !llvm.loop !100

bb.d:                                             ; preds = %._crit_edge.i147
  %i.ga = load float, ptr %i.cx, align 4, !tbaa !27 ; 3 uses
  %i.gb = tail call nsz float @llvm.fmuladd.f32(float %i.ga, float %i.ey, float %.068.lcssa.i148) ; 3 uses
  %i.gc = tail call nsz float @llvm.fmuladd.f32(float %i.fa, float %i.ga, float %.067.lcssa.i149)
  %i.gd = tail call nsz float @llvm.fmuladd.f32(float %i.fe, float %i.gb, float %i.gc)
  %i.ge = fmul nsz float %i.fg, %i.gb
  %i.gf = tail call nsz float @llvm.fmuladd.f32(float %i.fc, float %i.ga, float %i.ge)
  store float %i.gb, ptr %i.cx, align 4, !tbaa !27
  br label %biquad_process_fltp.exit159

biquad_process_fltp.exit159:                      ; preds = %._crit_edge.i147, %bb.d
  %.169.i151 = phi nsz float [ %i.gd, %bb.d ], [ %.068.lcssa.i148, %._crit_edge.i147 ]
  %.1.i152 = phi nsz float [ %i.gf, %bb.d ], [ %.067.lcssa.i149, %._crit_edge.i147 ]
  store float %.169.i151, ptr %i.ev, align 4, !tbaa !27
  store float %.1.i152, ptr %i.fi, align 4, !tbaa !27
  %indvars.iv.next229 = add nuw nsw i64 %indvars.iv228290, 1 ; 2 uses
  %exitcond233.not = icmp eq i64 %indvars.iv.next229, %wide.trip.count
  br i1 %exitcond233.not, label %.critedge2, label %.lr.ph291

.loopexit:                                        ; preds = %biquad_process_fltp.exit185, %bb.h
  %indvars.iv.next242 = add i64 %indvars.iv241, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next242 to i32
  %exitcond244.not = icmp eq i32 %i.r, %lftr.wideiv
  br i1 %exitcond244.not, label %.loopexit186, label %bb.e, !llvm.loop !101

bb.e:                                             ; preds = %.lr.ph208, %.loopexit
  %indvars.iv241 = phi i64 [ %4, %.lr.ph208 ], [ %indvars.iv.next242, %.loopexit ] ; 2 uses
  %.0140207.in = phi i64 [ %indvars.iv.next246, %.lr.ph208 ], [ %indvars.iv241, %.loopexit ] ; 3 uses
  %.0140207 = trunc i64 %.0140207.in to i32       ; 2 uses
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.gg = load ptr, ptr %i.eq, align 8, !tbaa !50
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 96
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !94
  %i.gj = getelementptr inbounds [8 x i8], ptr %i.gi, i64 %indvars.iv260
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !20 ; 2 uses
  %i.gl = mul nsw i32 %i.r, %.0140207
  %i.gm = add nsw i32 %i.gl, %i.et
  %i.gn = mul nsw i32 %i.gm, 20
  %i.go = sext i32 %i.gn to i64
  %i.gp = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.go ; 3 uses
  %i.gq = and i64 %.0140207.in, 4294967295
  %i.gr = getelementptr inbounds nuw [1280 x i8], ptr %i.b, i64 %i.gq ; 5 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 43752
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !27 ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 43756
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !27 ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gr, i64 43760
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !27 ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gr, i64 43764
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !27 ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gr, i64 43768
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !27 ; 3 uses
  %i.hc = load float, ptr %i.gp, align 4, !tbaa !27 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gp, i64 4 ; 2 uses
  %i.he = load float, ptr %i.hd, align 4, !tbaa !27 ; 2 uses
  br i1 %i.ah, label %.lr.ph.i167, label %._crit_edge.i160

._crit_edge.i160:                                 ; preds = %.lr.ph.i167, %bb.f
  %.068.lcssa.i161 = phi float [ %i.hc, %bb.f ], [ %i.hq, %.lr.ph.i167 ] ; 2 uses
  %.067.lcssa.i162 = phi float [ %i.he, %bb.f ], [ %i.hs, %.lr.ph.i167 ] ; 2 uses
  br i1 %.not.i, label %biquad_process_fltp.exit172, label %bb.g

.lr.ph.i167:                                      ; preds = %bb.f, %.lr.ph.i167
  %indvars.iv.i168 = phi i64 [ %indvars.iv.next.i171, %.lr.ph.i167 ], [ 0, %bb.f ] ; 2 uses
  %.06773.i169 = phi float [ %i.hs, %.lr.ph.i167 ], [ %i.he, %bb.f ]
  %.06872.i170 = phi float [ %i.hq, %.lr.ph.i167 ], [ %i.hc, %bb.f ]
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv.i168 ; 3 uses
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !27 ; 3 uses
  %i.hh = tail call nsz float @llvm.fmuladd.f32(float %i.hg, float %i.gt, float %.06872.i170) ; 3 uses
  %i.hi = tail call nsz float @llvm.fmuladd.f32(float %i.gv, float %i.hg, float %.06773.i169)
  %i.hj = tail call nsz float @llvm.fmuladd.f32(float %i.gz, float %i.hh, float %i.hi)
  %i.hk = fmul nsz float %i.hb, %i.hh
  %i.hl = tail call nsz float @llvm.fmuladd.f32(float %i.gx, float %i.hg, float %i.hk)
  store float %i.hh, ptr %i.hf, align 4, !tbaa !27
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hf, i64 4 ; 2 uses
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !27 ; 3 uses
  %i.ho = tail call nsz float @llvm.fmuladd.f32(float %i.hn, float %i.gt, float %i.hj) ; 3 uses
  %i.hp = tail call nsz float @llvm.fmuladd.f32(float %i.gv, float %i.hn, float %i.hl)
  %i.hq = tail call nsz float @llvm.fmuladd.f32(float %i.gz, float %i.ho, float %i.hp) ; 2 uses
  %i.hr = fmul nsz float %i.hb, %i.ho
  %i.hs = tail call nsz float @llvm.fmuladd.f32(float %i.gx, float %i.hn, float %i.hr) ; 2 uses
  store float %i.ho, ptr %i.hm, align 4, !tbaa !27
  %indvars.iv.next.i171 = add nuw nsw i64 %indvars.iv.i168, 2 ; 2 uses
  %i.ht = or disjoint i64 %indvars.iv.next.i171, 1
  %i.hu = icmp samesign ult i64 %i.ht, %i.ai
  br i1 %i.hu, label %.lr.ph.i167, label %._crit_edge.i160, !llvm.loop !100

bb.g:                                             ; preds = %._crit_edge.i160
  %i.hv = getelementptr [4 x i8], ptr %i.gk, i64 %i.am
  %i.hw = getelementptr i8, ptr %i.hv, i64 -4     ; 2 uses
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !27 ; 3 uses
  %i.hy = tail call nsz float @llvm.fmuladd.f32(float %i.hx, float %i.gt, float %.068.lcssa.i161) ; 3 uses
  %i.hz = tail call nsz float @llvm.fmuladd.f32(float %i.gv, float %i.hx, float %.067.lcssa.i162)
  %i.ia = tail call nsz float @llvm.fmuladd.f32(float %i.gz, float %i.hy, float %i.hz)
  %i.ib = fmul nsz float %i.hb, %i.hy
  %i.ic = tail call nsz float @llvm.fmuladd.f32(float %i.gx, float %i.hx, float %i.ib)
  store float %i.hy, ptr %i.hw, align 4, !tbaa !27
  br label %biquad_process_fltp.exit172

biquad_process_fltp.exit172:                      ; preds = %._crit_edge.i160, %bb.g
  %.169.i164 = phi nsz float [ %i.ia, %bb.g ], [ %.068.lcssa.i161, %._crit_edge.i160 ]
  %.1.i165 = phi nsz float [ %i.ic, %bb.g ], [ %.067.lcssa.i162, %._crit_edge.i160 ]
  store float %.169.i164, ptr %i.gp, align 4, !tbaa !27
  store float %.1.i165, ptr %i.hd, align 4, !tbaa !27
  br label %bb.h

bb.h:                                             ; preds = %biquad_process_fltp.exit172, %bb.e
  br i1 %i.es, label %.lr.ph206, label %.loopexit

.lr.ph206:                                        ; preds = %bb.h
  %i.id = load ptr, ptr %i.eq, align 8, !tbaa !50
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 96
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !94
  %i.ig = getelementptr inbounds [8 x i8], ptr %i.if, i64 %indvars.iv260
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !20 ; 2 uses
  %i.ii = mul nsw i32 %i.r, %.0140207
  %i.ij = add nsw i32 %i.ii, %i.eu
  %i.ik = mul nsw i32 %i.ij, 20
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.il
  %i.in = and i64 %.0140207.in, 4294967295
  %i.io = getelementptr [1280 x i8], ptr %i.b, i64 %i.in
  %i.ip = getelementptr [4 x i8], ptr %i.ih, i64 %i.am
  %i.iq = getelementptr i8, ptr %i.ip, i64 -4     ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph206, %biquad_process_fltp.exit185
  %indvars.iv234 = phi i64 [ %i.ar, %.lr.ph206 ], [ %indvars.iv.next235, %biquad_process_fltp.exit185 ] ; 3 uses
  %.idx = shl nsw i64 %indvars.iv234, 3
  %i.ir = getelementptr inbounds i8, ptr %i.im, i64 %.idx ; 3 uses
  %i.is = getelementptr [64 x i8], ptr %i.io, i64 %indvars.iv234 ; 5 uses
  %i.it = getelementptr i8, ptr %i.is, i64 43752
  %i.iu = load float, ptr %i.it, align 4, !tbaa !27 ; 3 uses
  %i.iv = getelementptr i8, ptr %i.is, i64 43756
  %i.iw = load float, ptr %i.iv, align 4, !tbaa !27 ; 3 uses
  %i.ix = getelementptr i8, ptr %i.is, i64 43760
  %i.iy = load float, ptr %i.ix, align 4, !tbaa !27 ; 3 uses
  %i.iz = getelementptr i8, ptr %i.is, i64 43764
  %i.ja = load float, ptr %i.iz, align 4, !tbaa !27 ; 3 uses
  %i.jb = getelementptr i8, ptr %i.is, i64 43768
  %i.jc = load float, ptr %i.jb, align 4, !tbaa !27 ; 3 uses
  %i.jd = load float, ptr %i.ir, align 4, !tbaa !27 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.ir, i64 4 ; 2 uses
  %i.jf = load float, ptr %i.je, align 4, !tbaa !27 ; 2 uses
  br i1 %i.ah, label %.lr.ph.i180, label %._crit_edge.i173

._crit_edge.i173:                                 ; preds = %.lr.ph.i180, %bb.i
  %.068.lcssa.i174 = phi float [ %i.jd, %bb.i ], [ %i.jr, %.lr.ph.i180 ] ; 2 uses
  %.067.lcssa.i175 = phi float [ %i.jf, %bb.i ], [ %i.jt, %.lr.ph.i180 ] ; 2 uses
  br i1 %.not.i, label %biquad_process_fltp.exit185, label %bb.j

.lr.ph.i180:                                      ; preds = %bb.i, %.lr.ph.i180
  %indvars.iv.i181 = phi i64 [ %indvars.iv.next.i184, %.lr.ph.i180 ], [ 0, %bb.i ] ; 2 uses
  %.06773.i182 = phi float [ %i.jt, %.lr.ph.i180 ], [ %i.jf, %bb.i ]
  %.06872.i183 = phi float [ %i.jr, %.lr.ph.i180 ], [ %i.jd, %bb.i ]
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %indvars.iv.i181 ; 3 uses
  %i.jh = load float, ptr %i.jg, align 4, !tbaa !27 ; 3 uses
  %i.ji = tail call nsz float @llvm.fmuladd.f32(float %i.jh, float %i.iu, float %.06872.i183) ; 3 uses
  %i.jj = tail call nsz float @llvm.fmuladd.f32(float %i.iw, float %i.jh, float %.06773.i182)
  %i.jk = tail call nsz float @llvm.fmuladd.f32(float %i.ja, float %i.ji, float %i.jj)
  %i.jl = fmul nsz float %i.jc, %i.ji
  %i.jm = tail call nsz float @llvm.fmuladd.f32(float %i.iy, float %i.jh, float %i.jl)
  store float %i.ji, ptr %i.jg, align 4, !tbaa !27
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jg, i64 4 ; 2 uses
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !27 ; 3 uses
  %i.jp = tail call nsz float @llvm.fmuladd.f32(float %i.jo, float %i.iu, float %i.jk) ; 3 uses
  %i.jq = tail call nsz float @llvm.fmuladd.f32(float %i.iw, float %i.jo, float %i.jm)
  %i.jr = tail call nsz float @llvm.fmuladd.f32(float %i.ja, float %i.jp, float %i.jq) ; 2 uses
  %i.js = fmul nsz float %i.jc, %i.jp
  %i.jt = tail call nsz float @llvm.fmuladd.f32(float %i.iy, float %i.jo, float %i.js) ; 2 uses
  store float %i.jp, ptr %i.jn, align 4, !tbaa !27
  %indvars.iv.next.i184 = add nuw nsw i64 %indvars.iv.i181, 2 ; 2 uses
  %i.ju = or disjoint i64 %indvars.iv.next.i184, 1
  %i.jv = icmp samesign ult i64 %i.ju, %i.ai
  br i1 %i.jv, label %.lr.ph.i180, label %._crit_edge.i173, !llvm.loop !100

bb.j:                                             ; preds = %._crit_edge.i173
  %i.jw = load float, ptr %i.iq, align 4, !tbaa !27 ; 3 uses
  %i.jx = tail call nsz float @llvm.fmuladd.f32(float %i.jw, float %i.iu, float %.068.lcssa.i174) ; 3 uses
  %i.jy = tail call nsz float @llvm.fmuladd.f32(float %i.iw, float %i.jw, float %.067.lcssa.i175)
  %i.jz = tail call nsz float @llvm.fmuladd.f32(float %i.ja, float %i.jx, float %i.jy)
  %i.ka = fmul nsz float %i.jc, %i.jx
  %i.kb = tail call nsz float @llvm.fmuladd.f32(float %i.iy, float %i.jw, float %i.ka)
  store float %i.jx, ptr %i.iq, align 4, !tbaa !27
  br label %biquad_process_fltp.exit185

biquad_process_fltp.exit185:                      ; preds = %._crit_edge.i173, %bb.j
  %.169.i177 = phi nsz float [ %i.jz, %bb.j ], [ %.068.lcssa.i174, %._crit_edge.i173 ]
  %.1.i178 = phi nsz float [ %i.kb, %bb.j ], [ %.067.lcssa.i175, %._crit_edge.i173 ]
  store float %.169.i177, ptr %i.ir, align 4, !tbaa !27
  store float %.1.i178, ptr %i.je, align 4, !tbaa !27
  %indvars.iv.next235 = add nsw i64 %indvars.iv234, 1 ; 2 uses
  %exitcond238.not = icmp eq i64 %indvars.iv.next235, %wide.trip.count237
  br i1 %exitcond238.not, label %.loopexit, label %bb.i, !llvm.loop !102

._crit_edge:                                      ; preds = %.lr.ph211.split, %.lr.ph211.split.us, %bb.b
  %indvars.iv.next261 = add nsw i64 %indvars.iv260, 1 ; 2 uses
  %lftr.wideiv263 = trunc i64 %indvars.iv.next261 to i32
  %exitcond264.not = icmp eq i32 %lftr.wideiv263, %i.p
  br i1 %exitcond264.not, label %._crit_edge215, label %bb.b, !llvm.loop !103

.lr.ph211.split:                                  ; preds = %.lr.ph211, %.lr.ph211.split
  %indvars.iv250 = phi i64 [ %indvars.iv.next251, %.lr.ph211.split ], [ 0, %.lr.ph211 ] ; 4 uses
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv250
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !27 ; 2 uses
  %i.ke = trunc i64 %indvars.iv250 to i1
  %i.kf = fneg nsz float %i.kd
  %unswitched.select = select i1 %i.ke, float %i.kf, float %i.kd
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv250
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !50
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 96
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !94
  %i.kk = getelementptr inbounds [8 x i8], ptr %i.kj, i64 %indvars.iv260
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !20 ; 2 uses
  %i.km = load ptr, ptr %i.z, align 8, !tbaa !21
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 24
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !95
  tail call void %i.ko(ptr noundef %i.kl, ptr noundef %i.kl, float noundef %unswitched.select, i32 noundef %i.ac) #8
  %indvars.iv.next251 = add nuw nsw i64 %indvars.iv250, 1 ; 2 uses
  %exitcond254.not = icmp eq i64 %indvars.iv.next251, %wide.trip.count253
  br i1 %exitcond254.not, label %._crit_edge, label %.lr.ph211.split, !llvm.loop !99
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @filter_channels_dblp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 65480 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 388
  %i.e = load i32, ptr %i.d, align 4, !tbaa !93
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = sext i32 %2 to i64
  %i.h = mul nsw i64 %i.f, %i.g
  %i.i = sext i32 %3 to i64                       ; 2 uses
  %i.j = sdiv i64 %i.h, %i.i                      ; 2 uses
  %i.k = trunc i64 %i.j to i32
  %i.l = add nsw i32 %2, 1
  %i.m = sext i32 %i.l to i64
  %i.n = mul nsw i64 %i.f, %i.m
  %i.o = sdiv i64 %i.n, %i.i
  %i.p = trunc i64 %i.o to i32                    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load i32, ptr %i.q, align 8, !tbaa !39   ; 11 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.t = load i32, ptr %i.s, align 4, !tbaa !79
  %.fr216 = freeze i32 %i.t                       ; 3 uses
  %i.u = icmp slt i32 %i.k, %i.p
  br i1 %i.u, label %.lr.ph214, label %._crit_edge215

.lr.ph214:                                        ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.w = load i32, ptr %i.v, align 8, !tbaa !60   ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 65472
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 65624 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.ab = add i32 %i.w, 7
  %i.ac = and i32 %i.ab, -8                       ; 3 uses
  %i.ad = icmp sgt i32 %i.r, 0
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.af = mul nsw i32 %i.r, 20
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 21952
  %i.ai = icmp sgt i32 %i.w, 1                    ; 4 uses
  %i.aj = zext nneg i32 %i.w to i64               ; 4 uses
  %i.ak = and i32 %i.w, 1
  %.not.i = icmp eq i32 %i.ak, 0                  ; 4 uses
  %i.al = add nsw i32 %i.w, -1
  %i.am = sext i32 %i.al to i64                   ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.ao = sext i32 %i.w to i64                    ; 3 uses
  %.not = icmp eq i32 %.fr216, 0                  ; 2 uses
  %i.ap = mul nsw i32 %i.r, 40
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 43712 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 2 uses
  %i.au = sext i32 %.fr216 to i64
  %i.av = sext i32 %i.r to i64
  %sext = shl i64 %i.j, 32
  %i.aw = ashr exact i64 %sext, 32
  %wide.trip.count248 = zext nneg i32 %i.r to i64
  %wide.trip.count253 = zext nneg i32 %i.r to i64
  %wide.trip.count258 = zext nneg i32 %i.r to i64
  br label %bb.b

._crit_edge215:                                   ; preds = %._crit_edge, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph214, %._crit_edge
  %indvars.iv260 = phi i64 [ %i.aw, %.lr.ph214 ], [ %indvars.iv.next261, %._crit_edge ] ; 11 uses
  %i.ax = load ptr, ptr %i.x, align 8, !tbaa !94
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %indvars.iv260
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !20
  %i.ba = load ptr, ptr %i.y, align 8, !tbaa !92
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 96
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !94
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %indvars.iv260
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !20 ; 3 uses
  %i.bf = load ptr, ptr %i.z, align 8, !tbaa !21
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !104
  %i.bi = load ptr, ptr %i.c, align 8, !tbaa !50
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 96
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !94
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %indvars.iv260
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !20
  %i.bn = load float, ptr %i.aa, align 4, !tbaa !97
  %i.bo = fpext nsz float %i.bn to double
  tail call void %i.bh(ptr noundef %i.bm, ptr noundef %i.az, double noundef %i.bo, i32 noundef %i.ac) #8
  br i1 %i.ad, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.ag
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.aq ; 2 uses
  br label %.preheader

.loopexit186:                                     ; preds = %.loopexit, %.critedge2
  %indvars.iv.next240 = add nuw i32 %indvars.iv239, 1
  %exitcond249.not = icmp eq i64 %indvars.iv.next246, %wide.trip.count248
  br i1 %exitcond249.not, label %.lr.ph211, label %.preheader, !llvm.loop !105

.lr.ph211:                                        ; preds = %.loopexit186
  br i1 %.not, label %.lr.ph211.split.us, label %.lr.ph211.split

.lr.ph211.split.us:                               ; preds = %.lr.ph211, %.lr.ph211.split.us
  %indvars.iv255 = phi i64 [ %indvars.iv.next256, %.lr.ph211.split.us ], [ 0, %.lr.ph211 ] ; 3 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv255
  %i.bs = load float, ptr %i.br, align 4, !tbaa !27
  %i.bt = fpext nsz float %i.bs to double
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv255
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !50
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 96
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !94
  %i.by = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %indvars.iv260
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !20 ; 2 uses
  %i.ca = load ptr, ptr %i.z, align 8, !tbaa !21
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !104
  tail call void %i.cc(ptr noundef %i.bz, ptr noundef %i.bz, double noundef %i.bt, i32 noundef %i.ac) #8
  %indvars.iv.next256 = add nuw nsw i64 %indvars.iv255, 1 ; 2 uses
  %exitcond259.not = icmp eq i64 %indvars.iv.next256, %wide.trip.count258
  br i1 %exitcond259.not, label %._crit_edge, label %.lr.ph211.split.us, !llvm.loop !106

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit186
  %indvars.iv245 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next246, %.loopexit186 ] ; 9 uses
  %indvars.iv239 = phi i32 [ 2, %.preheader.lr.ph ], [ %indvars.iv.next240, %.loopexit186 ] ; 2 uses
  %4 = zext i32 %indvars.iv239 to i64
  %indvars.iv.next246 = add nuw nsw i64 %indvars.iv245, 1 ; 5 uses
  %i.cd = icmp slt i64 %indvars.iv.next246, %i.av
  br i1 %i.cd, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %.preheader
  %i.ce = load i32, ptr %i.ae, align 8, !tbaa !78 ; 3 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv245 ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next246
  %i.ch = mul nuw nsw i64 %indvars.iv245, 20      ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.ch
  %i.cj = getelementptr inbounds nuw [1280 x i8], ptr %i.ah, i64 %indvars.iv245
  %smax = tail call i32 @llvm.smax.i32(i32 %i.ce, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64   ; 2 uses
  %exitcond.not286 = icmp slt i32 %i.ce, 1
  br i1 %exitcond.not286, label %.lr.ph203, label %.lr.ph288.preheader

.lr.ph288.preheader:                              ; preds = %.lr.ph
  %i.ck = load ptr, ptr %i.cf, align 8, !tbaa !50
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 96
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !94
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %indvars.iv260
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !20
  %i.cp = load ptr, ptr %i.cg, align 8, !tbaa !50
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 96
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !94
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %indvars.iv260
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !20 ; 4 uses
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.am
  br label %.lr.ph288

.lr.ph203:                                        ; preds = %biquad_process_dblp.exit, %.lr.ph
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.ch
  %i.cw = getelementptr inbounds nuw [1280 x i8], ptr %i.an, i64 %indvars.iv245
  %exitcond233.not289 = icmp slt i32 %i.ce, 1
  br i1 %exitcond233.not289, label %.critedge2, label %.lr.ph291.preheader

.lr.ph291.preheader:                              ; preds = %.lr.ph203
  %i.cx = load ptr, ptr %i.cf, align 8, !tbaa !50
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 96
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !94
  %i.da = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %indvars.iv260
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !20 ; 2 uses
  %i.dc = getelementptr [8 x i8], ptr %i.db, i64 %i.ao
  %i.dd = getelementptr i8, ptr %i.dc, i64 -8     ; 2 uses
  br label %.lr.ph291

.lr.ph288:                                        ; preds = %.lr.ph288.preheader, %biquad_process_dblp.exit
  %indvars.iv287 = phi i64 [ %indvars.iv.next, %biquad_process_dblp.exit ], [ 0, %.lr.ph288.preheader ] ; 4 uses
  %i.de = icmp eq i64 %indvars.iv287, 0
  %i.df = select i1 %i.de, ptr %i.co, ptr %i.ct   ; 3 uses
  %.idx269 = shl nuw nsw i64 %indvars.iv287, 4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.idx269 ; 2 uses
  %i.dh = getelementptr inbounds nuw [64 x i8], ptr %i.cj, i64 %indvars.iv287 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !81 ; 3 uses
  %i.dl = load <2 x double>, ptr %i.dh, align 8, !tbaa !81 ; 3 uses
  %i.dm = load <2 x double>, ptr %i.di, align 8, !tbaa !81 ; 3 uses
  %i.dn = load <2 x double>, ptr %i.dg, align 8, !tbaa !81 ; 2 uses
  br i1 %i.ai, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %.lr.ph288
  %i.do = shufflevector <2 x double> %i.dm, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.lr.ph288
  %i.dp = phi <2 x double> [ %i.dn, %.lr.ph288 ], [ %i.ep, %.lr.ph.i ] ; 2 uses
  br i1 %.not.i, label %biquad_process_dblp.exit, label %bb.c

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ] ; 4 uses
  %i.dq = phi <2 x double> [ %i.ep, %.lr.ph.i ], [ %i.dn, %.lr.ph.i.preheader ]
  %i.dr = or disjoint i64 %indvars.iv.i, 1        ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv.i
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !81 ; 2 uses
  %i.du = insertelement <2 x double> poison, double %i.dt, i64 0
  %i.dv = shufflevector <2 x double> %i.du, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dw = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dv, <2 x double> %i.dl, <2 x double> %i.dq) ; 3 uses
  %i.dx = extractelement <2 x double> %i.dw, i64 0 ; 2 uses
  %i.dy = fmul nsz double %i.dk, %i.dx
  %i.dz = shufflevector <2 x double> %i.dw, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ea = insertelement <2 x double> %i.dz, double %i.dt, i64 0
  %i.eb = insertelement <2 x double> %i.dw, double %i.dy, i64 0
  %i.ec = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dm, <2 x double> %i.ea, <2 x double> %i.eb)
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv.i
  store double %i.dx, ptr %i.ed, align 8, !tbaa !81
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.dr
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !81 ; 2 uses
  %i.eg = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.eh = insertelement <2 x double> poison, double %i.ef, i64 0
  %i.ei = shufflevector <2 x double> %i.eh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ej = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ei, <2 x double> %i.dl, <2 x double> %i.eg) ; 3 uses
  %i.ek = extractelement <2 x double> %i.ej, i64 0 ; 2 uses
  %i.el = fmul nsz double %i.dk, %i.ek
  %i.em = insertelement <2 x double> %i.ej, double %i.ef, i64 1
  %i.en = shufflevector <2 x double> %i.ej, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.eo = insertelement <2 x double> %i.en, double %i.el, i64 1
  %i.ep = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.do, <2 x double> %i.em, <2 x double> %i.eo) ; 2 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.dr
  store double %i.ek, ptr %i.eq, align 8, !tbaa !81
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.er = or disjoint i64 %indvars.iv.next.i, 1
  %i.es = icmp samesign ult i64 %i.er, %i.aj
  br i1 %i.es, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !107

bb.c:                                             ; preds = %._crit_edge.i
  %i.et = getelementptr inbounds [8 x i8], ptr %i.df, i64 %i.am
  %i.eu = load double, ptr %i.et, align 8, !tbaa !81 ; 2 uses
  %i.ev = insertelement <2 x double> poison, double %i.eu, i64 0
  %i.ew = shufflevector <2 x double> %i.ev, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ex = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dl, <2 x double> %i.ew, <2 x double> %i.dp) ; 3 uses
  %i.ey = extractelement <2 x double> %i.ex, i64 0 ; 2 uses
  %i.ez = fmul nsz double %i.dk, %i.ey
  %i.fa = shufflevector <2 x double> %i.dm, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.fb = insertelement <2 x double> %i.ex, double %i.eu, i64 1
  %i.fc = shufflevector <2 x double> %i.ex, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.fd = insertelement <2 x double> %i.fc, double %i.ez, i64 1
  %i.fe = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fa, <2 x double> %i.fb, <2 x double> %i.fd)
  store double %i.ey, ptr %i.cu, align 8, !tbaa !81
  br label %biquad_process_dblp.exit

biquad_process_dblp.exit:                         ; preds = %._crit_edge.i, %bb.c
  %i.ff = phi <2 x double> [ %i.fe, %bb.c ], [ %i.dp, %._crit_edge.i ]
  store <2 x double> %i.ff, ptr %i.dg, align 8, !tbaa !81
  %indvars.iv.next = add nuw nsw i64 %indvars.iv287, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph203, label %.lr.ph288

.critedge2:                                       ; preds = %biquad_process_dblp.exit159, %.lr.ph203, %.preheader
  %5 = trunc i64 %indvars.iv245 to i32
  %6 = add i32 %5, 2
  %i.fg = icmp slt i32 %6, %i.r
  br i1 %i.fg, label %.lr.ph208, label %.loopexit186

.lr.ph208:                                        ; preds = %.critedge2
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv245 ; 2 uses
  %i.fi = load i32, ptr %i.as, align 8, !tbaa !80 ; 2 uses
  %i.fj = icmp slt i32 %.fr216, %i.fi
  %i.fk = trunc nuw nsw i64 %indvars.iv245 to i32
  %i.fl = trunc nuw nsw i64 %indvars.iv245 to i32
  %wide.trip.count237 = sext i32 %i.fi to i64
  br label %bb.e

.lr.ph291:                                        ; preds = %.lr.ph291.preheader, %biquad_process_dblp.exit159
  %indvars.iv228290 = phi i64 [ %indvars.iv.next229, %biquad_process_dblp.exit159 ], [ 0, %.lr.ph291.preheader ] ; 3 uses
  %.idx268 = shl nuw nsw i64 %indvars.iv228290, 4
  %i.fm = getelementptr inbounds nuw i8, ptr %i.cv, i64 %.idx268 ; 2 uses
  %i.fn = getelementptr inbounds nuw [64 x i8], ptr %i.cw, i64 %indvars.iv228290 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 32
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !81 ; 3 uses
  %i.fr = load <2 x double>, ptr %i.fn, align 8, !tbaa !81 ; 3 uses
  %i.fs = load <2 x double>, ptr %i.fo, align 8, !tbaa !81 ; 3 uses
  %i.ft = load <2 x double>, ptr %i.fm, align 8, !tbaa !81 ; 2 uses
  br i1 %i.ai, label %.lr.ph.i154.preheader, label %._crit_edge.i147

.lr.ph.i154.preheader:                            ; preds = %.lr.ph291
  %i.fu = shufflevector <2 x double> %i.fs, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  br label %.lr.ph.i154

._crit_edge.i147:                                 ; preds = %.lr.ph.i154, %.lr.ph291
  %i.fv = phi <2 x double> [ %i.ft, %.lr.ph291 ], [ %i.gt, %.lr.ph.i154 ] ; 2 uses
  br i1 %.not.i, label %biquad_process_dblp.exit159, label %bb.d

.lr.ph.i154:                                      ; preds = %.lr.ph.i154.preheader, %.lr.ph.i154
  %indvars.iv.i155 = phi i64 [ %indvars.iv.next.i158, %.lr.ph.i154 ], [ 0, %.lr.ph.i154.preheader ] ; 2 uses
  %i.fw = phi <2 x double> [ %i.gt, %.lr.ph.i154 ], [ %i.ft, %.lr.ph.i154.preheader ]
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv.i155 ; 3 uses
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !81 ; 2 uses
  %i.fz = insertelement <2 x double> poison, double %i.fy, i64 0
  %i.ga = shufflevector <2 x double> %i.fz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gb = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ga, <2 x double> %i.fr, <2 x double> %i.fw) ; 3 uses
  %i.gc = extractelement <2 x double> %i.gb, i64 0 ; 2 uses
  %i.gd = fmul nsz double %i.fq, %i.gc
  %i.ge = shufflevector <2 x double> %i.gb, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.gf = insertelement <2 x double> %i.ge, double %i.fy, i64 0
  %i.gg = insertelement <2 x double> %i.gb, double %i.gd, i64 0
  %i.gh = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fs, <2 x double> %i.gf, <2 x double> %i.gg)
  store double %i.gc, ptr %i.fx, align 8, !tbaa !81
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fx, i64 8 ; 2 uses
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !81 ; 2 uses
  %i.gk = shufflevector <2 x double> %i.gh, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.gl = insertelement <2 x double> poison, double %i.gj, i64 0
  %i.gm = shufflevector <2 x double> %i.gl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gn = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gm, <2 x double> %i.fr, <2 x double> %i.gk) ; 3 uses
  %i.go = extractelement <2 x double> %i.gn, i64 0 ; 2 uses
  %i.gp = fmul nsz double %i.fq, %i.go
  %i.gq = insertelement <2 x double> %i.gn, double %i.gj, i64 1
  %i.gr = shufflevector <2 x double> %i.gn, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.gs = insertelement <2 x double> %i.gr, double %i.gp, i64 1
  %i.gt = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fu, <2 x double> %i.gq, <2 x double> %i.gs) ; 2 uses
  store double %i.go, ptr %i.gi, align 8, !tbaa !81
  %indvars.iv.next.i158 = add nuw nsw i64 %indvars.iv.i155, 2 ; 2 uses
  %i.gu = or disjoint i64 %indvars.iv.next.i158, 1
  %i.gv = icmp samesign ult i64 %i.gu, %i.aj
  br i1 %i.gv, label %.lr.ph.i154, label %._crit_edge.i147, !llvm.loop !107

bb.d:                                             ; preds = %._crit_edge.i147
  %i.gw = load double, ptr %i.dd, align 8, !tbaa !81 ; 2 uses
  %i.gx = insertelement <2 x double> poison, double %i.gw, i64 0
  %i.gy = shufflevector <2 x double> %i.gx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gz = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fr, <2 x double> %i.gy, <2 x double> %i.fv) ; 3 uses
  %i.ha = extractelement <2 x double> %i.gz, i64 0 ; 2 uses
  %i.hb = fmul nsz double %i.fq, %i.ha
  %i.hc = shufflevector <2 x double> %i.fs, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.hd = insertelement <2 x double> %i.gz, double %i.gw, i64 1
  %i.he = shufflevector <2 x double> %i.gz, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.hf = insertelement <2 x double> %i.he, double %i.hb, i64 1
  %i.hg = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hc, <2 x double> %i.hd, <2 x double> %i.hf)
  store double %i.ha, ptr %i.dd, align 8, !tbaa !81
  br label %biquad_process_dblp.exit159

biquad_process_dblp.exit159:                      ; preds = %._crit_edge.i147, %bb.d
  %i.hh = phi <2 x double> [ %i.hg, %bb.d ], [ %i.fv, %._crit_edge.i147 ]
  store <2 x double> %i.hh, ptr %i.fm, align 8, !tbaa !81
  %indvars.iv.next229 = add nuw nsw i64 %indvars.iv228290, 1 ; 2 uses
  %exitcond233.not = icmp eq i64 %indvars.iv.next229, %wide.trip.count
  br i1 %exitcond233.not, label %.critedge2, label %.lr.ph291

.loopexit:                                        ; preds = %biquad_process_dblp.exit185, %bb.h
  %indvars.iv.next242 = add i64 %indvars.iv241, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next242 to i32
  %exitcond244.not = icmp eq i32 %i.r, %lftr.wideiv
  br i1 %exitcond244.not, label %.loopexit186, label %bb.e, !llvm.loop !108

bb.e:                                             ; preds = %.lr.ph208, %.loopexit
  %indvars.iv241 = phi i64 [ %4, %.lr.ph208 ], [ %indvars.iv.next242, %.loopexit ] ; 2 uses
  %.0140207.in = phi i64 [ %indvars.iv.next246, %.lr.ph208 ], [ %indvars.iv241, %.loopexit ] ; 3 uses
  %.0140207 = trunc i64 %.0140207.in to i32       ; 2 uses
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.hi = load ptr, ptr %i.fh, align 8, !tbaa !50
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 96
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !94
  %i.hl = getelementptr inbounds [8 x i8], ptr %i.hk, i64 %indvars.iv260
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !20 ; 2 uses
  %i.hn = mul nsw i32 %i.r, %.0140207
  %i.ho = add nsw i32 %i.hn, %i.fk
  %i.hp = mul nsw i32 %i.ho, 20
  %i.hq = sext i32 %i.hp to i64
  %i.hr = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.hq ; 2 uses
  %i.hs = and i64 %.0140207.in, 4294967295
  %i.ht = getelementptr inbounds nuw [1280 x i8], ptr %i.ar, i64 %i.hs ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 32
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !81 ; 3 uses
  %i.hx = load <2 x double>, ptr %i.ht, align 8, !tbaa !81 ; 3 uses
  %i.hy = load <2 x double>, ptr %i.hu, align 8, !tbaa !81 ; 3 uses
  %i.hz = load <2 x double>, ptr %i.hr, align 8, !tbaa !81 ; 2 uses
  br i1 %i.ai, label %.lr.ph.i167.preheader, label %._crit_edge.i160

.lr.ph.i167.preheader:                            ; preds = %bb.f
  %i.ia = shufflevector <2 x double> %i.hy, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  br label %.lr.ph.i167

._crit_edge.i160:                                 ; preds = %.lr.ph.i167, %bb.f
  %i.ib = phi <2 x double> [ %i.hz, %bb.f ], [ %i.iz, %.lr.ph.i167 ] ; 2 uses
  br i1 %.not.i, label %biquad_process_dblp.exit172, label %bb.g

.lr.ph.i167:                                      ; preds = %.lr.ph.i167.preheader, %.lr.ph.i167
  %indvars.iv.i168 = phi i64 [ %indvars.iv.next.i171, %.lr.ph.i167 ], [ 0, %.lr.ph.i167.preheader ] ; 2 uses
  %i.ic = phi <2 x double> [ %i.iz, %.lr.ph.i167 ], [ %i.hz, %.lr.ph.i167.preheader ]
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %indvars.iv.i168 ; 3 uses
  %i.ie = load double, ptr %i.id, align 8, !tbaa !81 ; 2 uses
  %i.if = insertelement <2 x double> poison, double %i.ie, i64 0
  %i.ig = shufflevector <2 x double> %i.if, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ih = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ig, <2 x double> %i.hx, <2 x double> %i.ic) ; 3 uses
  %i.ii = extractelement <2 x double> %i.ih, i64 0 ; 2 uses
  %i.ij = fmul nsz double %i.hw, %i.ii
  %i.ik = shufflevector <2 x double> %i.ih, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.il = insertelement <2 x double> %i.ik, double %i.ie, i64 0
  %i.im = insertelement <2 x double> %i.ih, double %i.ij, i64 0
  %i.in = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hy, <2 x double> %i.il, <2 x double> %i.im)
  store double %i.ii, ptr %i.id, align 8, !tbaa !81
  %i.io = getelementptr inbounds nuw i8, ptr %i.id, i64 8 ; 2 uses
  %i.ip = load double, ptr %i.io, align 8, !tbaa !81 ; 2 uses
  %i.iq = shufflevector <2 x double> %i.in, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ir = insertelement <2 x double> poison, double %i.ip, i64 0
  %i.is = shufflevector <2 x double> %i.ir, <2 x double> poison, <2 x i32> zeroinitializer
  %i.it = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.is, <2 x double> %i.hx, <2 x double> %i.iq) ; 3 uses
  %i.iu = extractelement <2 x double> %i.it, i64 0 ; 2 uses
  %i.iv = fmul nsz double %i.hw, %i.iu
  %i.iw = insertelement <2 x double> %i.it, double %i.ip, i64 1
  %i.ix = shufflevector <2 x double> %i.it, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.iy = insertelement <2 x double> %i.ix, double %i.iv, i64 1
  %i.iz = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ia, <2 x double> %i.iw, <2 x double> %i.iy) ; 2 uses
  store double %i.iu, ptr %i.io, align 8, !tbaa !81
  %indvars.iv.next.i171 = add nuw nsw i64 %indvars.iv.i168, 2 ; 2 uses
  %i.ja = or disjoint i64 %indvars.iv.next.i171, 1
  %i.jb = icmp samesign ult i64 %i.ja, %i.aj
  br i1 %i.jb, label %.lr.ph.i167, label %._crit_edge.i160, !llvm.loop !107

bb.g:                                             ; preds = %._crit_edge.i160
  %i.jc = getelementptr [8 x i8], ptr %i.hm, i64 %i.ao
  %i.jd = getelementptr i8, ptr %i.jc, i64 -8     ; 2 uses
  %i.je = load double, ptr %i.jd, align 8, !tbaa !81 ; 2 uses
  %i.jf = insertelement <2 x double> poison, double %i.je, i64 0
  %i.jg = shufflevector <2 x double> %i.jf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jh = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hx, <2 x double> %i.jg, <2 x double> %i.ib) ; 3 uses
  %i.ji = extractelement <2 x double> %i.jh, i64 0 ; 2 uses
  %i.jj = fmul nsz double %i.hw, %i.ji
  %i.jk = shufflevector <2 x double> %i.hy, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.jl = insertelement <2 x double> %i.jh, double %i.je, i64 1
  %i.jm = shufflevector <2 x double> %i.jh, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.jn = insertelement <2 x double> %i.jm, double %i.jj, i64 1
  %i.jo = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jk, <2 x double> %i.jl, <2 x double> %i.jn)
  store double %i.ji, ptr %i.jd, align 8, !tbaa !81
  br label %biquad_process_dblp.exit172

biquad_process_dblp.exit172:                      ; preds = %._crit_edge.i160, %bb.g
  %i.jp = phi <2 x double> [ %i.jo, %bb.g ], [ %i.ib, %._crit_edge.i160 ]
  store <2 x double> %i.jp, ptr %i.hr, align 8, !tbaa !81
  br label %bb.h

bb.h:                                             ; preds = %biquad_process_dblp.exit172, %bb.e
  br i1 %i.fj, label %.lr.ph206, label %.loopexit

.lr.ph206:                                        ; preds = %bb.h
  %i.jq = load ptr, ptr %i.fh, align 8, !tbaa !50
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 96
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !94
  %i.jt = getelementptr inbounds [8 x i8], ptr %i.js, i64 %indvars.iv260
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !20 ; 2 uses
  %i.jv = mul nsw i32 %i.r, %.0140207
  %i.jw = add nsw i32 %i.jv, %i.fl
  %i.jx = mul nsw i32 %i.jw, 20
  %i.jy = sext i32 %i.jx to i64
  %i.jz = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.jy
  %i.ka = and i64 %.0140207.in, 4294967295
  %i.kb = getelementptr inbounds nuw [1280 x i8], ptr %i.ar, i64 %i.ka
  %i.kc = getelementptr [8 x i8], ptr %i.ju, i64 %i.ao
  %i.kd = getelementptr i8, ptr %i.kc, i64 -8     ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph206, %biquad_process_dblp.exit185
  %indvars.iv234 = phi i64 [ %i.au, %.lr.ph206 ], [ %indvars.iv.next235, %biquad_process_dblp.exit185 ] ; 3 uses
  %.idx = shl nsw i64 %indvars.iv234, 4
  %i.ke = getelementptr inbounds i8, ptr %i.jz, i64 %.idx ; 2 uses
  %i.kf = getelementptr inbounds [64 x i8], ptr %i.kb, i64 %indvars.iv234 ; 3 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kf, i64 32
  %i.ki = load double, ptr %i.kh, align 8, !tbaa !81 ; 3 uses
  %i.kj = load <2 x double>, ptr %i.kf, align 8, !tbaa !81 ; 3 uses
  %i.kk = load <2 x double>, ptr %i.kg, align 8, !tbaa !81 ; 3 uses
  %i.kl = load <2 x double>, ptr %i.ke, align 8, !tbaa !81 ; 2 uses
  br i1 %i.ai, label %.lr.ph.i180.preheader, label %._crit_edge.i173

.lr.ph.i180.preheader:                            ; preds = %bb.i
  %i.km = shufflevector <2 x double> %i.kk, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  br label %.lr.ph.i180

._crit_edge.i173:                                 ; preds = %.lr.ph.i180, %bb.i
  %i.kn = phi <2 x double> [ %i.kl, %bb.i ], [ %i.ll, %.lr.ph.i180 ] ; 2 uses
  br i1 %.not.i, label %biquad_process_dblp.exit185, label %bb.j

.lr.ph.i180:                                      ; preds = %.lr.ph.i180.preheader, %.lr.ph.i180
  %indvars.iv.i181 = phi i64 [ %indvars.iv.next.i184, %.lr.ph.i180 ], [ 0, %.lr.ph.i180.preheader ] ; 2 uses
  %i.ko = phi <2 x double> [ %i.ll, %.lr.ph.i180 ], [ %i.kl, %.lr.ph.i180.preheader ]
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %indvars.iv.i181 ; 3 uses
  %i.kq = load double, ptr %i.kp, align 8, !tbaa !81 ; 2 uses
  %i.kr = insertelement <2 x double> poison, double %i.kq, i64 0
  %i.ks = shufflevector <2 x double> %i.kr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kt = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ks, <2 x double> %i.kj, <2 x double> %i.ko) ; 3 uses
  %i.ku = extractelement <2 x double> %i.kt, i64 0 ; 2 uses
  %i.kv = fmul nsz double %i.ki, %i.ku
  %i.kw = shufflevector <2 x double> %i.kt, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.kx = insertelement <2 x double> %i.kw, double %i.kq, i64 0
  %i.ky = insertelement <2 x double> %i.kt, double %i.kv, i64 0
  %i.kz = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kk, <2 x double> %i.kx, <2 x double> %i.ky)
  store double %i.ku, ptr %i.kp, align 8, !tbaa !81
  %i.la = getelementptr inbounds nuw i8, ptr %i.kp, i64 8 ; 2 uses
  %i.lb = load double, ptr %i.la, align 8, !tbaa !81 ; 2 uses
  %i.lc = shufflevector <2 x double> %i.kz, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ld = insertelement <2 x double> poison, double %i.lb, i64 0
  %i.le = shufflevector <2 x double> %i.ld, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lf = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.le, <2 x double> %i.kj, <2 x double> %i.lc) ; 3 uses
  %i.lg = extractelement <2 x double> %i.lf, i64 0 ; 2 uses
  %i.lh = fmul nsz double %i.ki, %i.lg
  %i.li = insertelement <2 x double> %i.lf, double %i.lb, i64 1
  %i.lj = shufflevector <2 x double> %i.lf, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.lk = insertelement <2 x double> %i.lj, double %i.lh, i64 1
  %i.ll = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.km, <2 x double> %i.li, <2 x double> %i.lk) ; 2 uses
  store double %i.lg, ptr %i.la, align 8, !tbaa !81
  %indvars.iv.next.i184 = add nuw nsw i64 %indvars.iv.i181, 2 ; 2 uses
  %i.lm = or disjoint i64 %indvars.iv.next.i184, 1
  %i.ln = icmp samesign ult i64 %i.lm, %i.aj
  br i1 %i.ln, label %.lr.ph.i180, label %._crit_edge.i173, !llvm.loop !107

bb.j:                                             ; preds = %._crit_edge.i173
  %i.lo = load double, ptr %i.kd, align 8, !tbaa !81 ; 2 uses
  %i.lp = insertelement <2 x double> poison, double %i.lo, i64 0
  %i.lq = shufflevector <2 x double> %i.lp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lr = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kj, <2 x double> %i.lq, <2 x double> %i.kn) ; 3 uses
  %i.ls = extractelement <2 x double> %i.lr, i64 0 ; 2 uses
  %i.lt = fmul nsz double %i.ki, %i.ls
  %i.lu = shufflevector <2 x double> %i.kk, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.lv = insertelement <2 x double> %i.lr, double %i.lo, i64 1
  %i.lw = shufflevector <2 x double> %i.lr, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.lx = insertelement <2 x double> %i.lw, double %i.lt, i64 1
  %i.ly = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lu, <2 x double> %i.lv, <2 x double> %i.lx)
  store double %i.ls, ptr %i.kd, align 8, !tbaa !81
  br label %biquad_process_dblp.exit185

biquad_process_dblp.exit185:                      ; preds = %._crit_edge.i173, %bb.j
  %i.lz = phi <2 x double> [ %i.ly, %bb.j ], [ %i.kn, %._crit_edge.i173 ]
  store <2 x double> %i.lz, ptr %i.ke, align 8, !tbaa !81
  %indvars.iv.next235 = add nsw i64 %indvars.iv234, 1 ; 2 uses
  %exitcond238.not = icmp eq i64 %indvars.iv.next235, %wide.trip.count237
  br i1 %exitcond238.not, label %.loopexit, label %bb.i, !llvm.loop !109

._crit_edge:                                      ; preds = %.lr.ph211.split, %.lr.ph211.split.us, %bb.b
  %indvars.iv.next261 = add nsw i64 %indvars.iv260, 1 ; 2 uses
  %lftr.wideiv263 = trunc i64 %indvars.iv.next261 to i32
  %exitcond264.not = icmp eq i32 %lftr.wideiv263, %i.p
  br i1 %exitcond264.not, label %._crit_edge215, label %bb.b, !llvm.loop !110

.lr.ph211.split:                                  ; preds = %.lr.ph211, %.lr.ph211.split
  %indvars.iv250 = phi i64 [ %indvars.iv.next251, %.lr.ph211.split ], [ 0, %.lr.ph211 ] ; 4 uses
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv250
  %i.mb = load float, ptr %i.ma, align 4, !tbaa !27
  %i.mc = fpext nsz float %i.mb to double         ; 2 uses
  %i.md = trunc i64 %indvars.iv250 to i1
  %i.me = fneg nsz double %i.mc
  %unswitched.select = select i1 %i.md, double %i.me, double %i.mc
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv250
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !50
end_hunk_0
