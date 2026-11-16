Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dec_celt?download=true
inline.NumInlined: 9
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 16
begin_hunk_0_@ff_celt_init:bb.a
  store float f0xB8000000, ptr %i.b, align 4, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.m = call i32 @av_tx_init(ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, i32 noundef 1, i32 noundef 1, i32 noundef 240, ptr noundef nonnull %i.b, i64 noundef 0) #8 ; 2 uses
  %i.n = icmp slt i32 %i.m, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br i1 %i.n, label %.preheader.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store float f0xB8000000, ptr %i.b, align 4, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.q = call i32 @av_tx_init(ptr noundef nonnull %i.o, ptr noundef nonnull %i.p, i32 noundef 1, i32 noundef 1, i32 noundef 480, ptr noundef nonnull %i.b, i64 noundef 0) #8 ; 2 uses
  %i.r = icmp slt i32 %i.q, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br i1 %i.r, label %.preheader.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store float f0xB8000000, ptr %i.b, align 4, !tbaa !20
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.u = call i32 @av_tx_init(ptr noundef nonnull %i.s, ptr noundef nonnull %i.t, i32 noundef 1, i32 noundef 1, i32 noundef 960, ptr noundef nonnull %i.b, i64 noundef 0) #8 ; 2 uses
  %i.v = icmp slt i32 %i.u, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br i1 %i.v, label %.preheader.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 33872
  %i.x = call i32 @ff_celt_pvq_init(ptr noundef nonnull %i.w, i32 noundef 0) #8 ; 2 uses
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %.preheader.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !111
  %i.ab = and i32 %i.aa, 8388608
  %i.ac = call ptr @avpriv_float_dsp_alloc(i32 noundef %i.ab) #8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !26
  %.not24 = icmp eq ptr %i.ac, null
  br i1 %.not24, label %.preheader.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 33880
  call void @ff_opus_dsp_init(ptr noundef nonnull %i.ae) #8
  call void @ff_celt_flush(ptr noundef nonnull %i.d)
  store ptr %i.d, ptr %1, align 8, !tbaa !31
  br label %ff_celt_free.exit

.preheader.i:                                     ; preds = %bb.i, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.017 = phi i32 [ -12, %bb.i ], [ %i.x, %bb.h ], [ %i.i, %bb.d ], [ %i.m, %bb.e ], [ %i.q, %bb.f ], [ %i.u, %bb.g ]
  call void @av_tx_uninit(ptr noundef nonnull %i.g) #8
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @av_tx_uninit(ptr noundef nonnull %i.af) #8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @av_tx_uninit(ptr noundef nonnull %i.ag) #8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @av_tx_uninit(ptr noundef nonnull %i.ah) #8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 33872
  call void @ff_celt_pvq_uninit(ptr noundef nonnull %i.ai) #8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  call void @av_freep(ptr noundef nonnull %i.aj) #8
  call void @av_freep(ptr noundef nonnull %i.a) #8
  br label %ff_celt_free.exit

ff_celt_free.exit:                                ; preds = %.preheader.i, %bb.c, %bb.j, %bb.b
  %.019 = phi i32 [ -22, %bb.b ], [ -12, %bb.c ], [ 0, %bb.j ], [ %.017, %.preheader.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.019
}

declare noalias ptr @av_mallocz(i64 noundef) local_unnamed_addr #2

declare i32 @av_tx_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ff_celt_pvq_init(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @avpriv_float_dsp_alloc(i32 noundef) local_unnamed_addr #2

declare void @ff_opus_dsp_init(ptr noundef) local_unnamed_addr #2

declare i32 @ff_opus_rc_dec_uint(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ff_opus_rc_dec_cdf(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_opus_rc_dec_laplace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp2.f32(float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #4

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @celt_postfilter_apply_transition(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16852
  %i.b = load float, ptr %i.a, align 4, !tbaa !20 ; 3 uses
  %i.c = fcmp nsz oeq float %i.b, 0.000000e+00
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16868
  %i.e = load float, ptr %i.d, align 4, !tbaa !20 ; 2 uses
  %i.f = fcmp nsz oeq float %i.e, 0.000000e+00
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond, label %.loopexit, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16848
  %i.h = load i32, ptr %i.g, align 16, !tbaa !27  ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16864
  %i.j = load i32, ptr %i.i, align 16, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16872
  %i.l = load float, ptr %i.k, align 8, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16876
  %i.n = load float, ptr %i.m, align 4, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16856
  %i.p = load <2 x float>, ptr %i.o, align 8, !tbaa !20 ; 3 uses
  %i.q = sub nsw i32 0, %i.h
  %i.r = sub i32 1, %i.h
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %1, i64 %i.s
  %i.u = load float, ptr %i.t, align 4, !tbaa !20 ; 2 uses
  %i.v = sext i32 %i.q to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %1, i64 %i.v
  %i.x = load float, ptr %i.w, align 4, !tbaa !20 ; 2 uses
  %i.y = xor i32 %i.h, -1
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %1, i64 %i.z
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !20 ; 2 uses
  %i.ac = sub i32 -2, %i.h
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ad
  %i.af = load float, ptr %i.ae, align 4, !tbaa !20 ; 2 uses
  %i.ag = fpext nsz float %i.e to double          ; 2 uses
  %i.ah = fpext nsz float %i.l to double          ; 2 uses
  %i.ai = fpext nsz float %i.n to double          ; 2 uses
  %i.aj = sext i32 %i.h to i64                    ; 3 uses
  %i.ak = sext i32 %i.j to i64                    ; 4 uses
  %i.al = getelementptr i8, ptr %1, i64 480       ; 7 uses
  %i.am = shl nsw i64 %i.aj, 2                    ; 2 uses
  %i.an = sub nsw i64 8, %i.am
  %i.ao = getelementptr i8, ptr %1, i64 %i.an
  %i.ap = sub nsw i64 488, %i.am
  %i.aq = getelementptr i8, ptr %1, i64 %i.ap
  %i.ar = mul nsw i64 %i.ak, -4
  %i.as = getelementptr i8, ptr %1, i64 %i.ar
  %i.at = shl nsw i64 %i.ak, 2                    ; 9 uses
  %i.au = sub nsw i64 480, %i.at
  %i.av = getelementptr i8, ptr %1, i64 %i.au
  %i.aw = sub nuw nsw i64 -4, %i.at
  %i.ax = getelementptr i8, ptr %1, i64 %i.aw
  %i.ay = sub nsw i64 476, %i.at
  %i.az = getelementptr i8, ptr %1, i64 %i.ay
  %i.ba = sub nsw i64 4, %i.at
  %i.bb = getelementptr i8, ptr %1, i64 %i.ba
  %i.bc = sub nsw i64 484, %i.at
  %i.bd = getelementptr i8, ptr %1, i64 %i.bc
  %i.be = sub nsw i64 -8, %i.at
  %i.bf = getelementptr i8, ptr %1, i64 %i.be
  %i.bg = sub nsw i64 472, %i.at
  %i.bh = getelementptr i8, ptr %1, i64 %i.bg
  %i.bi = sub nsw i64 8, %i.at
  %i.bj = getelementptr i8, ptr %1, i64 %i.bi
  %i.bk = sub nsw i64 488, %i.at
  %i.bl = getelementptr i8, ptr %1, i64 %i.bk
  %bound0 = icmp ult ptr %1, getelementptr inbounds nuw (i8, ptr @ff_celt_window2, i64 480)
  %bound1 = icmp ugt ptr %i.al, @ff_celt_window2
  %found.conflict = and i1 %bound0, %bound1
  %bound0106 = icmp ult ptr %1, %i.aq
  %bound1107 = icmp ult ptr %i.ao, %i.al
  %found.conflict108 = and i1 %bound0106, %bound1107
  %conflict.rdx = or i1 %found.conflict, %found.conflict108
  %bound0109 = icmp ult ptr %1, %i.av
  %bound1110 = icmp ult ptr %i.as, %i.al
  %found.conflict111 = and i1 %bound0109, %bound1110
  %conflict.rdx112 = or i1 %conflict.rdx, %found.conflict111
  %bound0113 = icmp ult ptr %1, %i.az
  %bound1114 = icmp ult ptr %i.ax, %i.al
  %found.conflict115 = and i1 %bound0113, %bound1114
  %conflict.rdx116 = or i1 %conflict.rdx112, %found.conflict115
  %bound0117 = icmp ult ptr %1, %i.bd
  %bound1118 = icmp ult ptr %i.bb, %i.al
  %found.conflict119 = and i1 %bound0117, %bound1118
  %conflict.rdx120 = or i1 %conflict.rdx116, %found.conflict119
  %bound0121 = icmp ult ptr %1, %i.bh
  %bound1122 = icmp ult ptr %i.bf, %i.al
  %found.conflict123 = and i1 %bound0121, %bound1122
  %conflict.rdx124 = or i1 %conflict.rdx120, %found.conflict123
  %bound0125 = icmp ult ptr %1, %i.bl
  %bound1126 = icmp ult ptr %i.bj, %i.al
  %found.conflict127 = and i1 %bound0125, %bound1126
  %conflict.rdx128 = or i1 %conflict.rdx124, %found.conflict127
  br i1 %conflict.rdx128, label %scalar.ph.preheader, label %vector.ph

scalar.ph.preheader:                              ; preds = %._crit_edge
  %i.bm = shufflevector <2 x float> %i.p, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %2 = insertelement <4 x float> %i.bm, float 1.000000e+00, i64 3
  %i.bn = insertelement <4 x float> %2, float %i.b, i64 0
  br label %scalar.ph

vector.ph:                                        ; preds = %._crit_edge
  %broadcast.splat = shufflevector <2 x float> %i.p, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat130 = shufflevector <2 x float> %i.p, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert131 = insertelement <4 x double> poison, double %i.ag, i64 0
  %broadcast.splat132 = shufflevector <4 x double> %broadcast.splatinsert131, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert133 = insertelement <4 x double> poison, double %i.ah, i64 0
  %broadcast.splat134 = shufflevector <4 x double> %broadcast.splatinsert133, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert135 = insertelement <4 x double> poison, double %i.ai, i64 0
  %broadcast.splat136 = shufflevector <4 x double> %broadcast.splatinsert135, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert137 = insertelement <4 x float> poison, float %i.b, i64 0
  %broadcast.splat138 = shufflevector <4 x float> %broadcast.splatinsert137, <4 x float> poison, <4 x i32> zeroinitializer
  %vector.recur.init = insertelement <4 x float> poison, float %i.af, i64 3
  %vector.recur.init139 = insertelement <4 x float> poison, float %i.ab, i64 3
  %vector.recur.init141 = insertelement <4 x float> poison, float %i.x, i64 3
  %vector.recur.init143 = insertelement <4 x float> poison, float %i.u, i64 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vector.recur = phi <4 x float> [ %vector.recur.init, %vector.ph ], [ %i.bu, %vector.body ]
  %vector.recur140 = phi <4 x float> [ %vector.recur.init139, %vector.ph ], [ %i.bt, %vector.body ]
  %vector.recur142 = phi <4 x float> [ %vector.recur.init141, %vector.ph ], [ %i.bs, %vector.body ]
  %vector.recur144 = phi <4 x float> [ %vector.recur.init143, %vector.ph ], [ %wide.load145, %vector.body ]
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr @ff_celt_window2, i64 %index
  %wide.load = load <4 x float>, ptr %i.bo, align 16, !tbaa !20, !alias.scope !123 ; 4 uses
  %i.bp = sub nsw i64 %index, %i.aj
  %i.bq = getelementptr [4 x i8], ptr %1, i64 %i.bp
  %i.br = getelementptr i8, ptr %i.bq, i64 8
  %wide.load145 = load <4 x float>, ptr %i.br, align 4, !tbaa !20, !alias.scope !124 ; 3 uses
  %i.bs = shufflevector <4 x float> %vector.recur144, <4 x float> %wide.load145, <4 x i32> <i32 3, i32 4, i32 5, i32 6> ; 3 uses
  %i.bt = shufflevector <4 x float> %vector.recur142, <4 x float> %i.bs, <4 x i32> <i32 3, i32 4, i32 5, i32 6> ; 3 uses
  %i.bu = shufflevector <4 x float> %vector.recur140, <4 x float> %i.bt, <4 x i32> <i32 3, i32 4, i32 5, i32 6> ; 3 uses
  %i.bv = shufflevector <4 x float> %vector.recur, <4 x float> %i.bu, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.bw = fpext nsz <4 x float> %wide.load to <4 x double>
  %i.bx = fsub nsz <4 x double> splat (double 1.000000e+00), %i.bw ; 3 uses
  %i.by = fmul nsz <4 x double> %i.bx, %broadcast.splat132
  %i.bz = sub nsw i64 %index, %i.ak
  %i.ca = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bz ; 5 uses
  %wide.load146 = load <4 x float>, ptr %i.ca, align 4, !tbaa !20, !alias.scope !125
  %i.cb = fpext nsz <4 x float> %wide.load146 to <4 x double>
  %i.cc = fmul nsz <4 x double> %i.bx, %broadcast.splat134
  %i.cd = getelementptr i8, ptr %i.ca, i64 -4
  %wide.load147 = load <4 x float>, ptr %i.cd, align 4, !tbaa !20, !alias.scope !126
  %i.ce = getelementptr i8, ptr %i.ca, i64 4
  %wide.load148 = load <4 x float>, ptr %i.ce, align 4, !tbaa !20, !alias.scope !127
  %i.cf = fadd nsz <4 x float> %wide.load147, %wide.load148
  %i.cg = fpext nsz <4 x float> %i.cf to <4 x double>
  %i.ch = fmul nsz <4 x double> %i.cc, %i.cg
  %i.ci = tail call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.by, <4 x double> %i.cb, <4 x double> %i.ch)
  %i.cj = fmul nsz <4 x double> %i.bx, %broadcast.splat136
  %i.ck = getelementptr i8, ptr %i.ca, i64 -8
  %wide.load149 = load <4 x float>, ptr %i.ck, align 4, !tbaa !20, !alias.scope !128
  %i.cl = getelementptr i8, ptr %i.ca, i64 8
  %wide.load150 = load <4 x float>, ptr %i.cl, align 4, !tbaa !20, !alias.scope !129
  %i.cm = fadd nsz <4 x float> %wide.load149, %wide.load150
  %i.cn = fpext nsz <4 x float> %i.cm to <4 x double>
  %i.co = tail call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.cj, <4 x double> %i.cn, <4 x double> %i.ci)
  %i.cp = fmul nsz <4 x float> %broadcast.splat138, %wide.load
  %i.cq = fmul nsz <4 x float> %i.bt, %i.cp
  %i.cr = fpext nsz <4 x float> %i.cq to <4 x double>
  %i.cs = fadd nsz <4 x double> %i.co, %i.cr
  %i.ct = fmul nsz <4 x float> %broadcast.splat, %wide.load
  %i.cu = fadd nsz <4 x float> %i.bs, %i.bu
  %i.cv = fmul nsz <4 x float> %i.cu, %i.ct
  %i.cw = fpext nsz <4 x float> %i.cv to <4 x double>
  %i.cx = fadd nsz <4 x double> %i.cs, %i.cw
  %i.cy = fmul nsz <4 x float> %broadcast.splat130, %wide.load
  %i.cz = fadd nsz <4 x float> %i.bv, %wide.load145
  %i.da = fmul nsz <4 x float> %i.cy, %i.cz
  %i.db = fpext nsz <4 x float> %i.da to <4 x double>
  %i.dc = fadd nsz <4 x double> %i.cx, %i.db
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %wide.load151 = load <4 x float>, ptr %i.dd, align 4, !tbaa !20, !alias.scope !130, !noalias !131
  %i.de = fpext nsz <4 x float> %wide.load151 to <4 x double>
  %i.df = fadd nsz <4 x double> %i.dc, %i.de
  %i.dg = fptrunc nsz <4 x double> %i.df to <4 x float>
  store <4 x float> %i.dg, ptr %i.dd, align 4, !tbaa !20, !alias.scope !130, !noalias !131
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dh = icmp eq i64 %index.next, 120
  br i1 %i.dh, label %.loopexit, label %vector.body, !llvm.loop !121

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ 0, %scalar.ph.preheader ] ; 5 uses
  %.06168 = phi float [ %.06267, %scalar.ph ], [ %i.af, %scalar.ph.preheader ]
  %.06267 = phi float [ %.06366, %scalar.ph ], [ %i.ab, %scalar.ph.preheader ] ; 2 uses
  %.06366 = phi float [ %.06465, %scalar.ph ], [ %i.x, %scalar.ph.preheader ] ; 2 uses
  %.06465 = phi float [ %i.dn, %scalar.ph ], [ %i.u, %scalar.ph.preheader ] ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr @ff_celt_window2, i64 %indvars.iv
  %i.dj = load float, ptr %i.di, align 4, !tbaa !20 ; 2 uses
  %i.dk = sub nsw i64 %indvars.iv, %i.aj
  %i.dl = getelementptr [4 x i8], ptr %1, i64 %i.dk
  %i.dm = getelementptr i8, ptr %i.dl, i64 8
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !20 ; 2 uses
  %i.do = fpext nsz float %i.dj to double
  %i.dp = fsub nsz double 1.000000e+00, %i.do     ; 3 uses
  %i.dq = fmul nsz double %i.dp, %i.ag
  %i.dr = sub nsw i64 %indvars.iv, %i.ak
  %i.ds = getelementptr inbounds [4 x i8], ptr %1, i64 %i.dr ; 3 uses
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !20
  %i.du = fpext nsz float %i.dt to double
  %i.dv = fmul nsz double %i.dp, %i.ah
  %i.dw = getelementptr i8, ptr %i.ds, i64 4
  %i.dx = fmul nsz double %i.dp, %i.ai
  %i.dy = getelementptr i8, ptr %i.ds, i64 -8
  %i.dz = load <2 x float>, ptr %i.dy, align 4, !tbaa !20
  %i.ea = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.eb = load <2 x float>, ptr %i.dw, align 4, !tbaa !20
  %i.ec = fadd nsz <2 x float> %i.ea, %i.eb
  %i.ed = fpext nsz <2 x float> %i.ec to <2 x double> ; 2 uses
  %i.ee = extractelement <2 x double> %i.ed, i64 0
  %i.ef = fmul nsz double %i.dv, %i.ee
  %i.eg = tail call nsz double @llvm.fmuladd.f64(double %i.dq, double %i.du, double %i.ef)
  %i.eh = extractelement <2 x double> %i.ed, i64 1
  %i.ei = tail call nsz double @llvm.fmuladd.f64(double %i.dx, double %i.eh, double %i.eg)
  %i.ej = fadd nsz float %.06465, %.06267
  %i.ek = fadd nsz float %.06168, %i.dn
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.em = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.dj, i64 0
  %3 = shufflevector <4 x float> %i.em, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.en = fmul nsz <4 x float> %3, %i.bn
  %i.eo = load float, ptr %i.el, align 4, !tbaa !20
  %i.ep = insertelement <4 x float> poison, float %.06366, i64 0
  %i.eq = insertelement <4 x float> %i.ep, float %i.ej, i64 1
  %i.er = insertelement <4 x float> %i.eq, float %i.ek, i64 2
  %4 = insertelement <4 x float> %i.er, float %i.eo, i64 3
  %5 = fmul <4 x float> %4, %i.en
  %i.es = fpext nsz <4 x float> %5 to <4 x double> ; 4 uses
  %i.et = extractelement <4 x double> %i.es, i64 0
  %i.eu = fadd nsz double %i.ei, %i.et
  %i.ev = extractelement <4 x double> %i.es, i64 1
  %i.ew = fadd nsz double %i.eu, %i.ev
  %i.ex = extractelement <4 x double> %i.es, i64 2
  %i.ey = fadd nsz double %i.ew, %i.ex
  %i.ez = extractelement <4 x double> %i.es, i64 3
  %i.fa = fadd nsz double %i.ey, %i.ez
  %i.fb = fptrunc nsz double %i.fa to float
  store float %i.fb, ptr %i.el, align 4, !tbaa !20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 120
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !122

.loopexit:                                        ; preds = %vector.body, %scalar.ph, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS14AVCodecContext", !9, i64 0}
!11 = !{!"p1 _ZTS17AVFloatDSPContext", !9, i64 0}
!12 = !{!"p1 _ZTS7CeltPVQ", !9, i64 0}
!13 = !{!"OpusDSP", !9, i64 0, !9, i64 8}
!14 = !{!"float", !5, i64 0}
!15 = !{!"CeltFrame", !10, i64 0, !5, i64 8, !5, i64 40, !11, i64 72, !5, i64 80, !12, i64 33872, !13, i64 33880, !6, i64 33896, !6, i64 33900, !6, i64 33904, !6, i64 33908, !6, i64 33912, !6, i64 33916, !6, i64 33920, !6, i64 33924, !6, i64 33928, !6, i64 33932, !6, i64 33936, !6, i64 33940, !5, i64 33944, !6, i64 34028, !6, i64 34032, !6, i64 34036, !6, i64 34040, !6, i64 34044, !6, i64 34048, !6, i64 34052, !6, i64 34056, !6, i64 34060, !6, i64 34064, !6, i64 34068, !6, i64 34072, !6, i64 34076, !14, i64 34080, !6, i64 34084, !6, i64 34088, !6, i64 34092, !5, i64 34096, !5, i64 34180, !5, i64 34264, !5, i64 34348, !5, i64 34432}
!16 = !{!15, !10, i64 0}
!17 = !{!15, !6, i64 34056}
!18 = !{!"p1 omnipotent char", !9, i64 0}
!19 = !{!15, !6, i64 33900}
!20 = !{!14, !14, i64 0}
!21 = !{!"CeltBlock", !5, i64 0, !5, i64 84, !5, i64 168, !5, i64 252, !5, i64 420, !5, i64 448, !5, i64 8640, !5, i64 12480, !5, i64 12992, !6, i64 16832, !5, i64 16836, !6, i64 16848, !5, i64 16852, !6, i64 16864, !5, i64 16868, !14, i64 16880}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!15, !6, i64 34060}
!24 = !{!"llvm.loop.isvectorized", i32 1}
!25 = !{!"llvm.loop.unroll.runtime.disable"}
!26 = !{!15, !11, i64 72}
!27 = !{!21, !6, i64 16848}
!28 = !{!21, !6, i64 16864}
!29 = !{!21, !14, i64 16880}
!30 = !{!"p1 _ZTS9CeltFrame", !9, i64 0}
!31 = !{!30, !30, i64 0}
!32 = distinct !{!32, !22}
!33 = distinct !{!33, !22, !82}
!34 = distinct !{!34, !83}
!35 = distinct !{!35, !22, !82}
!36 = distinct !{!36, !22}
!37 = distinct !{!37, !22}
!38 = distinct !{!38, !22}
!39 = distinct !{!39, !22}
!40 = distinct !{!40, !22}
!41 = distinct !{!41, !22}
!42 = distinct !{!42, !22}
!43 = distinct !{!43, !22}
!44 = distinct !{!44, !22, !24, !25}
!45 = distinct !{!45, !22}
!46 = distinct !{!46, !83}
!47 = distinct !{!47, !22, !24, !25}
!48 = distinct !{!48, !22, !25, !24}
!49 = distinct !{!49, !22}
!50 = distinct !{!50, !22, !24, !25}
!51 = distinct !{!51, !22, !25, !24}
!52 = distinct !{!52, !22}
!53 = distinct !{!53, !22}
!54 = distinct !{!54, !22}
!55 = distinct !{null}
!56 = distinct !{!56, !22}
!57 = distinct !{!57, !22, !24, !25}
!58 = distinct !{!58, !22, !25, !24}
!59 = distinct !{!59, !22, !24, !25}
!60 = distinct !{!60, !22, !24}
!61 = !{!15, !6, i64 34036}
!62 = !{!15, !6, i64 33924}
!63 = !{!15, !6, i64 34044}
!64 = !{!15, !6, i64 33896}
!65 = !{!15, !6, i64 33912}
!66 = !{!15, !6, i64 33916}
!67 = !{!"GetBitContext", !18, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!68 = !{!"RawBitsContext", !18, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!69 = !{!"OpusRangeCoder", !67, i64 0, !68, i64 24, !6, i64 48, !6, i64 52, !6, i64 56, !5, i64 60, !18, i64 1352, !6, i64 1360, !6, i64 1364, !6, i64 1368}
!70 = !{!69, !6, i64 32}
!71 = !{!15, !6, i64 34084}
!72 = !{!5, !5, i64 0}
!73 = !{!15, !6, i64 33908}
!74 = !{!69, !6, i64 56}
!75 = !{!69, !6, i64 48}
!76 = !{!21, !6, i64 16832}
!77 = !{!15, !6, i64 34028}
!78 = !{!15, !6, i64 34032}
!79 = !{!"p1 _ZTS11AVTXContext", !9, i64 0}
!80 = !{!79, !79, i64 0}
!81 = !{!9, !9, i64 0}
!82 = !{!"llvm.loop.unswitch.partial.disable"}
!83 = !{!"llvm.loop.unroll.disable"}
!84 = !{!6, !6, i64 0}
!85 = !{!15, !6, i64 34040}
!86 = !{!"AVFloatDSPContext", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88}
!87 = !{!86, !9, i64 8}
!88 = !{!86, !9, i64 40}
!89 = !{!86, !9, i64 24}
!90 = !{!15, !9, i64 33880}
!91 = !{!15, !9, i64 33888}
!92 = !{!"p1 float", !9, i64 0}
!93 = !{!92, !92, i64 0}
!94 = !{!15, !6, i64 33904}
!95 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!96 = !{!"p1 _ZTS7AVCodec", !9, i64 0}
!97 = !{!"p1 _ZTS15AVCodecInternal", !9, i64 0}
!98 = !{!"long", !5, i64 0}
!99 = !{!"AVRational", !6, i64 0, !6, i64 4}
!100 = !{!"p1 short", !9, i64 0}
!101 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!102 = !{!"p1 _ZTS10RcOverride", !9, i64 0}
!103 = !{!"p1 _ZTS9AVHWAccel", !9, i64 0}
!104 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!105 = !{!"p1 _ZTS17AVCodecDescriptor", !9, i64 0}
!106 = !{!"p1 _ZTS16AVPacketSideData", !9, i64 0}
!107 = !{!"p1 int", !9, i64 0}
!108 = !{!"any p2 pointer", !9, i64 0}
!109 = !{!"p2 _ZTS15AVFrameSideData", !108, i64 0}
!110 = !{!"AVCodecContext", !95, i64 0, !6, i64 8, !6, i64 12, !96, i64 16, !6, i64 24, !6, i64 28, !9, i64 32, !97, i64 40, !9, i64 48, !98, i64 56, !6, i64 64, !6, i64 68, !18, i64 72, !6, i64 80, !99, i64 84, !99, i64 92, !99, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !99, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !9, i64 184, !9, i64 192, !6, i64 200, !14, i64 204, !14, i64 208, !14, i64 212, !14, i64 216, !14, i64 220, !14, i64 224, !14, i64 228, !14, i64 232, !14, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !100, i64 288, !100, i64 296, !100, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !101, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !9, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !14, i64 428, !14, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !102, i64 456, !98, i64 464, !98, i64 472, !14, i64 480, !14, i64 484, !6, i64 488, !6, i64 492, !18, i64 496, !18, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !103, i64 536, !9, i64 544, !104, i64 552, !104, i64 560, !6, i64 568, !6, i64 572, !5, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !9, i64 672, !9, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !105, i64 728, !18, i64 736, !6, i64 744, !6, i64 748, !18, i64 752, !18, i64 760, !18, i64 768, !106, i64 776, !6, i64 784, !6, i64 788, !98, i64 792, !6, i64 800, !6, i64 804, !98, i64 808, !9, i64 816, !98, i64 824, !107, i64 832, !6, i64 840, !109, i64 848, !6, i64 856, !6, i64 860}
!111 = !{!110, !6, i64 64}
!112 = distinct !{!112, i1 false, !"LVerDomain"}
!113 = distinct !{!113, !112}
!114 = distinct !{!114, !112}
!115 = distinct !{!115, !112}
!116 = distinct !{!116, !112}
!117 = distinct !{!117, !112}
!118 = distinct !{!118, !112}
!119 = distinct !{!119, !112}
!120 = distinct !{!120, !112}
!121 = distinct !{!121, !22, !24, !25}
!122 = distinct !{!122, !22, !24}
!123 = !{!113}
!124 = !{!114}
!125 = !{!115}
!126 = !{!116}
!127 = !{!117}
!128 = !{!118}
!129 = !{!119}
!130 = !{!120}
!131 = !{!113, !114, !115, !116, !117, !118, !119}
end_hunk_0
