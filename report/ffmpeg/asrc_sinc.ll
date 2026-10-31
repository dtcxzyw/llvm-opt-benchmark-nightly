Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/asrc_sinc?download=true
inline.NumInlined: 8
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@config_output:bb.a
  %.0224265.i = phi float [ 0.000000e+00, %.lr.ph268.preheader.i ], [ %i.fj, %safe_log.exit.i ]
  %.0225264.i = phi float [ 0.000000e+00, %.lr.ph268.preheader.i ], [ %i.fi, %safe_log.exit.i ]
  %.0226263.i = phi float [ 0.000000e+00, %.lr.ph268.preheader.i ], [ %i.fa, %safe_log.exit.i ]
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv.i90 ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 4 ; 3 uses
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !33
  %i.ez = load float, ptr %i.ew, align 4, !tbaa !33
  %i.fa = call nsz float @llvm.atan2.f32(float %i.ey, float %i.ez) ; 3 uses
  %i.fb = fsub nsz float %i.fa, %.0226263.i       ; 2 uses
  %i.fc = fcmp nsz olt float %i.fb, f0xC08CBE4C
  %i.fd = zext i1 %i.fc to i32
  %i.fe = fcmp nsz ogt float %i.fb, f0x408CBE4C
  %.neg252.i = sext i1 %i.fe to i32
  %i.ff = add nsw i32 %.neg252.i, %i.fd
  %i.fg = sitofp nsz i32 %i.ff to float
  %i.fh = fmul nnan nsz float %i.fg, f0x40C90FDB
  %i.fi = fadd nsz float %.0225264.i, %i.fh       ; 2 uses
  %i.fj = fadd nsz float %i.fa, %i.fi             ; 2 uses
  %i.fk = fsub nsz float %i.fj, %.0224265.i       ; 2 uses
  %i.fl = fcmp nsz olt float %i.fk, f0xC00CBE4C
  %i.fm = zext i1 %i.fl to i32
  %i.fn = fcmp nsz ogt float %i.fk, f0x400CBE4C
  %.neg253.i = sext i1 %i.fn to i32
  %i.fo = add nsw i32 %.neg253.i, %i.fm
  %i.fp = sitofp nsz i32 %i.fo to float
  %i.fq = fmul nnan nsz float %i.fp, f0x40490FDB
  %i.fr = call nsz float @llvm.fabs.f32(float %i.fq)
  %i.fs = fadd nsz float %.0223266.i, %i.fr       ; 2 uses
  %i.ft = lshr exact i64 %indvars.iv.i90, 1
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.ft
  store float %i.fs, ptr %i.fu, align 4, !tbaa !33
  %i.fv = load float, ptr %i.ew, align 4, !tbaa !33 ; 2 uses
  %i.fw = load float, ptr %i.ex, align 4, !tbaa !33 ; 2 uses
  %i.fx = fmul nsz float %i.fw, %i.fw
  %i.fy = call nsz float @llvm.fmuladd.f32(float %i.fv, float %i.fv, float %i.fx) ; 3 uses
  %i.fz = fcmp nsz ult float %i.fy, 0.000000e+00
  br i1 %i.fz, label %bb.m, label %safe_log.exit.i

bb.m:                                             ; preds = %.lr.ph268.i
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6, i32 noundef 198) #8
  call void @abort() #9
  unreachable

safe_log.exit.i:                                  ; preds = %.lr.ph268.i
  %i.ga = call nsz float @llvm.sqrt.f32(float %i.fy)
  %i.gb = fcmp nsz une float %i.fy, 0.000000e+00
  %i.gc = call nsz float @llvm.log.f32(float %i.ga)
  %.0.i.i = select nsz i1 %i.gb, float %i.gc, float -2.600000e+01
  store float %.0.i.i, ptr %i.ew, align 4, !tbaa !33
  store float 0.000000e+00, ptr %i.ex, align 4, !tbaa !33
  %indvars.iv.next.i91 = add nuw nsw i64 %indvars.iv.i90, 2
  %.not247.not.i = icmp samesign ult i64 %indvars.iv.i90, %i.ev
  br i1 %.not247.not.i, label %.lr.ph268.i, label %._crit_edge269.i, !llvm.loop !57

._crit_edge269.i:                                 ; preds = %safe_log.exit.i, %bb.l
  %i.gd = load ptr, ptr %i.eq, align 8, !tbaa !94
  %i.ge = load ptr, ptr %i.em, align 8, !tbaa !95
  call void %i.gd(ptr noundef %i.ge, ptr noundef nonnull %i.eg, ptr noundef nonnull %i.eg, i64 noundef 8) #8, !inline_history !56
  %i.gf = icmp sgt i32 %.0235.lcssa.i, 0          ; 2 uses
  br i1 %i.gf, label %.lr.ph272.i, label %.preheader257.i

.lr.ph272.i:                                      ; preds = %._crit_edge269.i
  %i.gg = uitofp nneg i32 %.0235.lcssa.i to float
  %i.gh = fdiv nnan nsz float 2.000000e+00, %i.gg ; 2 uses
  %wide.trip.count.i93 = zext nneg i32 %.0235.lcssa.i to i64 ; 3 uses
  %min.iters.check224 = icmp ult i32 %.0235.lcssa.i, 8
  br i1 %min.iters.check224, label %scalar.ph223.preheader, label %vector.ph225

vector.ph225:                                     ; preds = %.lr.ph272.i
  %n.vec226 = and i64 %wide.trip.count.i93, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.gh, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body227

vector.body227:                                   ; preds = %vector.body227, %vector.ph225
  %index228 = phi i64 [ 0, %vector.ph225 ], [ %index.next231, %vector.body227 ] ; 2 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %index228 ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16 ; 2 uses
  %wide.load229 = load <4 x float>, ptr %i.gi, align 4, !tbaa !33
  %wide.load230 = load <4 x float>, ptr %i.gj, align 4, !tbaa !33
  %i.gk = fmul nsz <4 x float> %broadcast.splat, %wide.load229
  %i.gl = fmul nsz <4 x float> %broadcast.splat, %wide.load230
  store <4 x float> %i.gk, ptr %i.gi, align 4, !tbaa !33
  store <4 x float> %i.gl, ptr %i.gj, align 4, !tbaa !33
  %index.next231 = add nuw i64 %index228, 8       ; 2 uses
  %i.gm = icmp eq i64 %index.next231, %n.vec226
  br i1 %i.gm, label %middle.block232, label %vector.body227, !llvm.loop !58

middle.block232:                                  ; preds = %vector.body227
  %cmp.n233 = icmp eq i64 %n.vec226, %wide.trip.count.i93
  br i1 %cmp.n233, label %.preheader257.i, label %scalar.ph223.preheader

scalar.ph223.preheader:                           ; preds = %.lr.ph272.i, %middle.block232
  %indvars.iv311.i.ph = phi i64 [ 0, %.lr.ph272.i ], [ %n.vec226, %middle.block232 ]
  br label %scalar.ph223

.preheader257.i:                                  ; preds = %scalar.ph223, %middle.block232, %._crit_edge269.i
  %i.gn = icmp sgt i32 %i.ec, 1
  br i1 %i.gn, label %.lr.ph274.preheader.i, label %._crit_edge275.i

.lr.ph274.preheader.i:                            ; preds = %.preheader257.i
  %i.go = zext nneg i32 %i.ec to i64              ; 3 uses
  %invariant.gep.i = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %i.go ; 2 uses
  %i.gp = add nsw i64 %i.go, -1                   ; 2 uses
  %min.iters.check236 = icmp ult i32 %i.ec, 9
  br i1 %min.iters.check236, label %.lr.ph274.i.preheader, label %vector.ph237

vector.ph237:                                     ; preds = %.lr.ph274.preheader.i
  %n.vec238 = and i64 %i.gp, -8                   ; 3 uses
  %i.gq = or disjoint i64 %n.vec238, 1
  br label %vector.body239

vector.body239:                                   ; preds = %vector.body239, %vector.ph237
  %index240 = phi i64 [ 0, %vector.ph237 ], [ %index.next243, %vector.body239 ] ; 2 uses
  %i.gr = or disjoint i64 %index240, 1            ; 2 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %i.gr ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 16 ; 2 uses
  %wide.load241 = load <4 x float>, ptr %i.gs, align 4, !tbaa !33
  %wide.load242 = load <4 x float>, ptr %i.gt, align 4, !tbaa !33
  %i.gu = fmul nsz <4 x float> %wide.load241, splat (float 2.000000e+00)
  %i.gv = fmul nsz <4 x float> %wide.load242, splat (float 2.000000e+00)
  store <4 x float> %i.gu, ptr %i.gs, align 4, !tbaa !33
  store <4 x float> %i.gv, ptr %i.gt, align 4, !tbaa !33
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %i.gr ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  store <4 x float> zeroinitializer, ptr %i.gw, align 4, !tbaa !33
  store <4 x float> zeroinitializer, ptr %i.gx, align 4, !tbaa !33
  %index.next243 = add nuw i64 %index240, 8       ; 2 uses
  %i.gy = icmp eq i64 %index.next243, %n.vec238
  br i1 %i.gy, label %middle.block244, label %vector.body239, !llvm.loop !59

middle.block244:                                  ; preds = %vector.body239
  %cmp.n245 = icmp eq i64 %i.gp, %n.vec238
  br i1 %cmp.n245, label %._crit_edge275.i, label %.lr.ph274.i.preheader

.lr.ph274.i.preheader:                            ; preds = %.lr.ph274.preheader.i, %middle.block244
  %indvars.iv314.i.ph = phi i64 [ 1, %.lr.ph274.preheader.i ], [ %i.gq, %middle.block244 ]
  br label %.lr.ph274.i

scalar.ph223:                                     ; preds = %scalar.ph223.preheader, %scalar.ph223
  %indvars.iv311.i = phi i64 [ %indvars.iv.next312.i, %scalar.ph223 ], [ %indvars.iv311.i.ph, %scalar.ph223.preheader ] ; 2 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv311.i ; 2 uses
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !33
  %i.hb = fmul nsz float %i.gh, %i.ha
  store float %i.hb, ptr %i.gz, align 4, !tbaa !33
  %indvars.iv.next312.i = add nuw nsw i64 %indvars.iv311.i, 1 ; 2 uses
  %exitcond.not.i94 = icmp eq i64 %indvars.iv.next312.i, %wide.trip.count.i93
  br i1 %exitcond.not.i94, label %.preheader257.i, label %scalar.ph223, !llvm.loop !60

.lr.ph274.i:                                      ; preds = %.lr.ph274.i.preheader, %.lr.ph274.i
  %indvars.iv314.i = phi i64 [ %indvars.iv.next315.i, %.lr.ph274.i ], [ %indvars.iv314.i.ph, %.lr.ph274.i.preheader ] ; 3 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv314.i ; 2 uses
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !33
  %i.he = fmul nsz float %i.hd, 2.000000e+00
  store float %i.he, ptr %i.hc, align 4, !tbaa !33
  %gep.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv314.i
  store float 0.000000e+00, ptr %gep.i, align 4, !tbaa !33
  %indvars.iv.next315.i = add nuw nsw i64 %indvars.iv314.i, 1 ; 2 uses
  %exitcond318.not.i = icmp eq i64 %indvars.iv.next315.i, %i.go
  br i1 %exitcond318.not.i, label %._crit_edge275.i, label %.lr.ph274.i, !llvm.loop !61

._crit_edge275.i:                                 ; preds = %.lr.ph274.i, %middle.block244, %.preheader257.i
  %i.hf = load ptr, ptr %i.en, align 8, !tbaa !92
  %i.hg = load ptr, ptr %i.el, align 8, !tbaa !93
  call void %i.hf(ptr noundef %i.hg, ptr noundef nonnull %i.eg, ptr noundef nonnull %i.eg, i64 noundef 4) #8, !inline_history !56
  %i.hh = icmp sgt i32 %.0235.lcssa.i, 2          ; 2 uses
  br i1 %i.hh, label %.lr.ph278.i, label %._crit_edge283.i.critedge

.lr.ph278.i:                                      ; preds = %._crit_edge275.i
  %i.hi = uitofp nneg i32 %.0235.lcssa.i to float
  %i.hj = zext nneg i32 %i.ec to i64
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.hj
  %i.hl = fsub nsz float 1.000000e+00, %i.dw
  %i.hm = zext nneg i32 %.0235.lcssa.i to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph278.i
  %indvars.iv319.i = phi i64 [ 2, %.lr.ph278.i ], [ %indvars.iv.next320.i, %bb.n ] ; 4 uses
  %i.hn = trunc nuw nsw i64 %indvars.iv319.i to i32
  %i.ho = uitofp nsz nneg i32 %i.hn to float
  %i.hp = fmul nsz float %i.dw, %i.ho
  %i.hq = fdiv nsz float %i.hp, %i.hi
  %i.hr = load float, ptr %i.hk, align 4, !tbaa !33
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv319.i
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 4 ; 2 uses
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !33
  %i.hv = lshr exact i64 %indvars.iv319.i, 1
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.hv
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !33 ; 2 uses
  %i.hy = fadd nsz float %i.hu, %i.hx
  %i.hz = fmul nsz float %i.hl, %i.hy
  %i.ia = call nsz float @llvm.fmuladd.f32(float %i.hq, float %i.hr, float %i.hz)
  %i.ib = fsub nsz float %i.ia, %i.hx
  store float %i.ib, ptr %i.ht, align 4, !tbaa !33
  %indvars.iv.next320.i = add nuw nsw i64 %indvars.iv319.i, 2 ; 2 uses
  %i.ic = icmp samesign ult i64 %indvars.iv.next320.i, %i.hm
  br i1 %i.ic, label %bb.n, label %._crit_edge279.i, !llvm.loop !62

._crit_edge279.i:                                 ; preds = %bb.n
  %i.id = load <2 x float>, ptr %i.eg, align 4, !tbaa !33
  %i.ie = fpext <2 x float> %i.id to <2 x double>
  %i.if = call nsz <2 x double> @llvm.exp.v2f64(<2 x double> %i.ie)
  %i.ig = fptrunc <2 x double> %i.if to <2 x float>
  store <2 x float> %i.ig, ptr %i.eg, align 4, !tbaa !33
  br i1 %i.hh, label %.lr.ph282.preheader.i, label %._crit_edge283.i

.lr.ph282.preheader.i:                            ; preds = %._crit_edge279.i
  %i.ih = zext nneg i32 %.0235.lcssa.i to i64     ; 3 uses
  %i.ii = call i64 @llvm.usub.sat.i64(i64 %i.ih, i64 4)
  %i.ij = lshr exact i64 %i.ii, 1
  %i.ik = add nuw nsw i64 %i.ij, 1                ; 2 uses
  %min.iters.check248 = icmp ult i32 %.0235.lcssa.i, 5
  br i1 %min.iters.check248, label %.lr.ph282.i.preheader, label %vector.ph249

vector.ph249:                                     ; preds = %.lr.ph282.preheader.i
  %n.vec250 = and i64 %i.ik, 2147483646           ; 3 uses
  %i.il = shl nuw nsw i64 %n.vec250, 1
  %i.im = or disjoint i64 %i.il, 2
  br label %vector.body251

vector.body251:                                   ; preds = %vector.body251, %vector.ph249
  %index252 = phi i64 [ 0, %vector.ph249 ], [ %index.next254, %vector.body251 ] ; 2 uses
  %.idx = shl nuw i64 %index252, 3
  %i.in = getelementptr inbounds nuw i8, ptr %i.eg, i64 %.idx
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 8 ; 2 uses
  %wide.vec = load <4 x float>, ptr %i.io, align 4, !tbaa !33 ; 2 uses
  %strided.vec253 = shufflevector <4 x float> %wide.vec, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.ip = call nsz <4 x float> @llvm.exp.v4f32(<4 x float> %wide.vec)
  %i.iq = shufflevector <4 x float> %i.ip, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.ir = call nsz { <2 x float>, <2 x float> } @llvm.sincos.v2f32(<2 x float> %strided.vec253) ; 2 uses
  %i.is = extractvalue { <2 x float>, <2 x float> } %i.ir, 0
  %i.it = extractvalue { <2 x float>, <2 x float> } %i.ir, 1
  %i.iu = shufflevector <2 x float> %i.iq, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.iv = shufflevector <2 x float> %i.it, <2 x float> %i.is, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec = fmul nsz <4 x float> %i.iu, %i.iv
  store <4 x float> %interleaved.vec, ptr %i.io, align 4, !tbaa !33
  %index.next254 = add nuw i64 %index252, 2       ; 2 uses
  %i.iw = icmp eq i64 %index.next254, %n.vec250
  br i1 %i.iw, label %middle.block255, label %vector.body251, !llvm.loop !63

middle.block255:                                  ; preds = %vector.body251
  %cmp.n256 = icmp eq i64 %i.ik, %n.vec250
  br i1 %cmp.n256, label %._crit_edge283.thread.i, label %.lr.ph282.i.preheader

.lr.ph282.i.preheader:                            ; preds = %.lr.ph282.preheader.i, %middle.block255
  %indvars.iv322.i.ph = phi i64 [ 2, %.lr.ph282.preheader.i ], [ %i.im, %middle.block255 ]
  br label %.lr.ph282.i

.lr.ph282.i:                                      ; preds = %.lr.ph282.i.preheader, %.lr.ph282.i
  %indvars.iv322.i = phi i64 [ %indvars.iv.next323.i, %.lr.ph282.i ], [ %indvars.iv322.i.ph, %.lr.ph282.i.preheader ] ; 2 uses
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv322.i ; 3 uses
  %i.iy = load float, ptr %i.ix, align 4, !tbaa !33
  %i.iz = call nsz float @llvm.exp.f32(float %i.iy) ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ix, i64 4 ; 2 uses
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !33
  %sincos.i = call nsz { float, float } @llvm.sincos.f32(float %i.jb) ; 2 uses
  %sin.i = extractvalue { float, float } %sincos.i, 0
  %cos.i = extractvalue { float, float } %sincos.i, 1
  %i.jc = fmul nsz float %i.iz, %cos.i
  store float %i.jc, ptr %i.ix, align 4, !tbaa !33
  %i.jd = fmul nsz float %i.iz, %sin.i
  store float %i.jd, ptr %i.ja, align 4, !tbaa !33
  %indvars.iv.next323.i = add nuw nsw i64 %indvars.iv322.i, 2 ; 2 uses
  %i.je = icmp samesign ult i64 %indvars.iv.next323.i, %i.ih
  br i1 %i.je, label %.lr.ph282.i, label %._crit_edge283.thread.i, !llvm.loop !64

._crit_edge283.thread.i:                          ; preds = %.lr.ph282.i, %middle.block255
  %i.jf = load ptr, ptr %i.eq, align 8, !tbaa !94
  %i.jg = load ptr, ptr %i.em, align 8, !tbaa !95
  call void %i.jf(ptr noundef %i.jg, ptr noundef nonnull %i.eg, ptr noundef nonnull %i.eg, i64 noundef 8) #8, !inline_history !56
  br label %.lr.ph286.i

._crit_edge283.i.critedge:                        ; preds = %._crit_edge275.i
  %i.jh = load <2 x float>, ptr %i.eg, align 4, !tbaa !33
  %i.ji = fpext <2 x float> %i.jh to <2 x double>
  %i.jj = call nsz <2 x double> @llvm.exp.v2f64(<2 x double> %i.ji)
  %i.jk = fptrunc <2 x double> %i.jj to <2 x float>
  store <2 x float> %i.jk, ptr %i.eg, align 4, !tbaa !33
  br label %._crit_edge283.i

._crit_edge283.i:                                 ; preds = %._crit_edge283.i.critedge, %._crit_edge279.i
  %i.jl = load ptr, ptr %i.eq, align 8, !tbaa !94
  %i.jm = load ptr, ptr %i.em, align 8, !tbaa !95
  call void %i.jl(ptr noundef %i.jm, ptr noundef nonnull %i.eg, ptr noundef nonnull %i.eg, i64 noundef 8) #8, !inline_history !56
  br i1 %i.gf, label %._crit_edge283.i..lr.ph286.i_crit_edge, label %.preheader256.i

._crit_edge283.i..lr.ph286.i_crit_edge:           ; preds = %._crit_edge283.i
  %.pre175 = zext nneg i32 %.0235.lcssa.i to i64
  br label %.lr.ph286.i

.lr.ph286.i:                                      ; preds = %._crit_edge283.i..lr.ph286.i_crit_edge, %._crit_edge283.thread.i
  %wide.trip.count328.i.pre-phi = phi i64 [ %.pre175, %._crit_edge283.i..lr.ph286.i_crit_edge ], [ %i.ih, %._crit_edge283.thread.i ] ; 4 uses
  %i.jn = uitofp nneg i32 %.0235.lcssa.i to float
  %i.jo = fdiv nnan nsz float 2.000000e+00, %i.jn ; 2 uses
  %min.iters.check259 = icmp samesign ult i64 %wide.trip.count328.i.pre-phi, 8
  br i1 %min.iters.check259, label %scalar.ph258.preheader, label %vector.ph260

vector.ph260:                                     ; preds = %.lr.ph286.i
  %n.vec261 = and i64 %wide.trip.count328.i.pre-phi, 2147483640 ; 3 uses
  %broadcast.splatinsert262 = insertelement <4 x float> poison, float %i.jo, i64 0
  %broadcast.splat263 = shufflevector <4 x float> %broadcast.splatinsert262, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body264

vector.body264:                                   ; preds = %vector.body264, %vector.ph260
  %index265 = phi i64 [ 0, %vector.ph260 ], [ %index.next268, %vector.body264 ] ; 2 uses
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %index265 ; 3 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 16 ; 2 uses
  %wide.load266 = load <4 x float>, ptr %i.jp, align 4, !tbaa !33
  %wide.load267 = load <4 x float>, ptr %i.jq, align 4, !tbaa !33
  %i.jr = fmul nsz <4 x float> %broadcast.splat263, %wide.load266
  %i.js = fmul nsz <4 x float> %broadcast.splat263, %wide.load267
  store <4 x float> %i.jr, ptr %i.jp, align 4, !tbaa !33
  store <4 x float> %i.js, ptr %i.jq, align 4, !tbaa !33
  %index.next268 = add nuw i64 %index265, 8       ; 2 uses
  %i.jt = icmp eq i64 %index.next268, %n.vec261
  br i1 %i.jt, label %middle.block269, label %vector.body264, !llvm.loop !65

middle.block269:                                  ; preds = %vector.body264
  %cmp.n270 = icmp eq i64 %wide.trip.count328.i.pre-phi, %n.vec261
  br i1 %cmp.n270, label %.preheader256.i, label %scalar.ph258.preheader

scalar.ph258.preheader:                           ; preds = %.lr.ph286.i, %middle.block269
  %indvars.iv325.i.ph = phi i64 [ 0, %.lr.ph286.i ], [ %n.vec261, %middle.block269 ]
  br label %scalar.ph258

.preheader256.i:                                  ; preds = %scalar.ph258, %middle.block269, %._crit_edge283.i
  %i.ju = sext i32 %i.ec to i64
  %i.jv = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %i.ju ; 2 uses
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !33
  %i.jx = fpext nsz float %i.jw to double
  %i.jy = fdiv nsz double %i.jx, f0x400921FB54442D18
  %i.jz = fadd nsz double %i.jy, 5.000000e-01
  %i.ka = fptosi double %i.jz to i32              ; 2 uses
  %.not248288.i = icmp slt i32 %i.ka, 0
  br i1 %.not248288.i, label %.critedge.i, label %.lr.ph294.preheader.i

.lr.ph294.preheader.i:                            ; preds = %.preheader256.i
  %i.kb = add nuw i32 %i.ka, 1
  %wide.trip.count333.i = zext i32 %i.kb to i64
  %.pre.i = load float, ptr %i.eg, align 4, !tbaa !33
  br label %.lr.ph294.i

scalar.ph258:                                     ; preds = %scalar.ph258.preheader, %scalar.ph258
  %indvars.iv325.i = phi i64 [ %indvars.iv.next326.i, %scalar.ph258 ], [ %indvars.iv325.i.ph, %scalar.ph258.preheader ] ; 2 uses
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv325.i ; 2 uses
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !33
  %i.ke = fmul nsz float %i.jo, %i.kd
  store float %i.ke, ptr %i.kc, align 4, !tbaa !33
  %indvars.iv.next326.i = add nuw nsw i64 %indvars.iv325.i, 1 ; 2 uses
  %exitcond329.not.i = icmp eq i64 %indvars.iv.next326.i, %wide.trip.count328.i.pre-phi
  br i1 %exitcond329.not.i, label %.preheader256.i, label %scalar.ph258, !llvm.loop !66

.preheader.i:                                     ; preds = %.lr.ph294.i
  %i.kf = fpext nsz float %.1.i92 to double       ; 3 uses
  %.not249299.i = icmp eq i32 %.1231.i, 0
  br i1 %.not249299.i, label %.critedge.i, label %.lr.ph301.preheader.i

.lr.ph301.preheader.i:                            ; preds = %.preheader.i
  %i.kg = zext nneg i32 %.1231.i to i64
  br label %.lr.ph301.i

.lr.ph294.i:                                      ; preds = %.lr.ph294.i, %.lr.ph294.preheader.i
  %i.kh = phi float [ %.pre.i, %.lr.ph294.preheader.i ], [ %i.kq, %.lr.ph294.i ] ; 2 uses
  %indvars.iv330.i = phi i64 [ 0, %.lr.ph294.preheader.i ], [ %indvars.iv.next331.i, %.lr.ph294.i ] ; 3 uses
  %.0227293.i = phi float [ 0.000000e+00, %.lr.ph294.preheader.i ], [ %.1.i92, %.lr.ph294.i ] ; 2 uses
  %.0228292.i = phi float [ 0.000000e+00, %.lr.ph294.preheader.i ], [ %i.kk, %.lr.ph294.i ]
  %.0230291.i = phi i32 [ 0, %.lr.ph294.preheader.i ], [ %.1231.i, %.lr.ph294.i ]
  %.0232290.i = phi i32 [ 0, %.lr.ph294.preheader.i ], [ %.1233.i, %.lr.ph294.i ]
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv330.i
  %i.kj = load float, ptr %i.ki, align 4, !tbaa !33 ; 3 uses
  %i.kk = fadd nsz float %.0228292.i, %i.kj       ; 3 uses
  %i.kl = call nsz float @llvm.fabs.f32(float %i.kk)
  %i.km = call nsz float @llvm.fabs.f32(float %.0227293.i)
  %i.kn = fcmp nsz ogt float %i.kl, %i.km         ; 2 uses
  %i.ko = trunc nuw nsw i64 %indvars.iv330.i to i32 ; 2 uses
  %.1231.i = select i1 %i.kn, i32 %i.ko, i32 %.0230291.i ; 3 uses
  %.1.i92 = select nsz i1 %i.kn, float %i.kk, float %.0227293.i ; 2 uses
  %i.kp = fcmp nsz ogt float %i.kj, %i.kh         ; 2 uses
  %.1233.i = select i1 %i.kp, i32 %i.ko, i32 %.0232290.i ; 4 uses
  %indvars.iv.next331.i = add nuw nsw i64 %indvars.iv330.i, 1 ; 2 uses
  %exitcond334.not.i = icmp eq i64 %indvars.iv.next331.i, %wide.trip.count333.i
  %i.kq = select i1 %i.kp, float %i.kj, float %i.kh
  br i1 %exitcond334.not.i, label %.preheader.i, label %.lr.ph294.i, !llvm.loop !67

.lr.ph301.i:                                      ; preds = %bb.o, %.lr.ph301.preheader.i
  %indvars.iv335.i = phi i64 [ %i.kg, %.lr.ph301.preheader.i ], [ %indvars.iv.next336.i, %bb.o ] ; 3 uses
  %i.kr = getelementptr [4 x i8], ptr %i.eg, i64 %indvars.iv335.i
  %i.ks = getelementptr i8, ptr %i.kr, i64 -4
  %i.kt = load <2 x float>, ptr %i.ks, align 4, !tbaa !33 ; 3 uses
  %i.ku = call nsz <2 x float> @llvm.fabs.v2f32(<2 x float> %i.kt) ; 2 uses
  %i.kv = extractelement <2 x float> %i.ku, i64 0
  %i.kw = extractelement <2 x float> %i.ku, i64 1
  %i.kx = fcmp nsz ogt float %i.kv, %i.kw
  %shift = shufflevector <2 x float> %i.kt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul nsz <2 x float> %i.kt, %shift
  %i.ky = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.kz = fcmp nsz ogt float %i.ky, 0.000000e+00
  %or.cond.i = select i1 %i.kx, i1 %i.kz, i1 false
  br i1 %or.cond.i, label %bb.o, label %.critedge.loopexit.split.loop.exit.i

bb.o:                                             ; preds = %.lr.ph301.i
  %indvars.iv.next336.i = add nsw i64 %indvars.iv335.i, -1 ; 2 uses
  %.not249.i = icmp eq i64 %indvars.iv.next336.i, 0
  br i1 %.not249.i, label %.critedge.i, label %.lr.ph301.i, !llvm.loop !68

.critedge.loopexit.split.loop.exit.i:             ; preds = %.lr.ph301.i
  %i.la = trunc nuw nsw i64 %indvars.iv335.i to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.o, %.critedge.loopexit.split.loop.exit.i, %.preheader.i, %.preheader256.i
  %.0227.lcssa358.i = phi double [ %i.kf, %.preheader.i ], [ 0.000000e+00, %.preheader256.i ], [ %i.kf, %.critedge.loopexit.split.loop.exit.i ], [ %i.kf, %bb.o ]
  %.0232.lcssa357.i = phi i32 [ %.1233.i, %.preheader.i ], [ 0, %.preheader256.i ], [ %.1233.i, %.critedge.loopexit.split.loop.exit.i ], [ %.1233.i, %bb.o ] ; 2 uses
  %.2.lcssa.i = phi i32 [ 0, %.preheader.i ], [ 0, %.preheader256.i ], [ %i.la, %.critedge.loopexit.split.loop.exit.i ], [ 0, %bb.o ] ; 5 uses
  %i.lb = fcmp nsz une float %i.dw, 0.000000e+00
  br i1 %i.lb, label %bb.p, label %thread-pre-split.i

bb.p:                                             ; preds = %.critedge.i
  %i.lc = fcmp nsz oeq float %i.dw, 1.000000e+00
  br i1 %i.lc, label %bb.q, label %.cont

bb.q:                                             ; preds = %bb.p
  %.neg.i = sdiv i32 %i.dn, -2
  %i.ld = add i32 %.2.lcssa.i, %.neg.i
  br label %thread-pre-split.i

.cont:                                            ; preds = %bb.p
  %i.le = fadd nsz float %i.dw, -2.000000e+00
  %i.lf = sitofp nsz i32 %i.dn to float
  %i.lg = fneg nsz float %i.dw
  %i.lh = insertelement <2 x float> poison, float %i.lg, i64 0
  %i.li = insertelement <2 x float> %i.lh, float %i.le, i64 1
  %i.lj = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.li, <2 x float> splat (float 2.200000e-01), <2 x float> splat (float f0x3F7F3B64))
  %i.lk = insertelement <2 x float> poison, float %i.lf, i64 0
  %i.ll = shufflevector <2 x float> %i.lk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lm = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lj, <2 x float> %i.ll, <2 x float> splat (float 5.000000e-01))
  %i.ln = fptosi <2 x float> %i.lm to <2 x i32>
  %i.lo = add nsw <2 x i32> %i.ln, <i32 3, i32 0>
  %i.lp = and <2 x i32> %i.lo, splat (i32 -4)
  %i.lq = or disjoint <2 x i32> %i.lp, <i32 1, i32 0> ; 2 uses
  %i.lr = insertelement <2 x i32> poison, i32 %.2.lcssa.i, i64 0
  %i.ls = shufflevector <2 x i32> %i.lr, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lt = add <2 x i32> %i.ls, %i.lq
  %i.lu = sub nsw <2 x i32> %i.ls, %i.lq
  %i.lv = extractelement <2 x i32> %i.lt, i64 0
  %i.lw = extractelement <2 x i32> %i.lu, i64 1   ; 2 uses
  %i.lx = sub i32 %i.lv, %i.lw                    ; 2 uses
  %i.ly = sext i32 %i.lx to i64
  %i.lz = call ptr @av_realloc_f(ptr noundef %.sroa.speculated137, i64 noundef %i.ly, i64 noundef 4) #8 ; 3 uses
  %spec.select = select i1 %i.do, ptr %i.y, ptr %i.lz ; 2 uses
  %spec.select161 = select i1 %i.do, ptr %i.lz, ptr %i.af ; 2 uses
  %.not250.i = icmp eq ptr %i.lz, null
  br i1 %.not250.i, label %fir_to_phase.exit.thread156, label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %.critedge.i, %.cont, %bb.q
  %.sroa.0.3 = phi ptr [ %i.y, %bb.q ], [ %spec.select, %.cont ], [ %i.y, %.critedge.i ] ; 2 uses
  %.sroa.12.3 = phi ptr [ %i.af, %bb.q ], [ %spec.select161, %.cont ], [ %i.af, %.critedge.i ] ; 2 uses
  %.2 = phi i32 [ %i.dn, %bb.q ], [ %i.lx, %.cont ], [ %i.dn, %.critedge.i ] ; 11 uses
  %.0234.i = phi i32 [ %i.ld, %bb.q ], [ %i.lw, %.cont ], [ 0, %.critedge.i ] ; 3 uses
  %i.ma = icmp sgt i32 %.2, 0
  br i1 %i.ma, label %.lr.ph307.i, label %fir_to_phase.exit

.lr.ph307.i:                                      ; preds = %thread-pre-split.i
  %i.mb = add i32 %.0234.i, %.0235.lcssa.i        ; 3 uses
  %i.mc = add nsw i32 %.0235.lcssa.i, -1          ; 3 uses
  %.sroa.speculated140 = select i1 %i.do, ptr %.sroa.12.3, ptr %.sroa.0.3 ; 3 uses
  %wide.trip.count341.i = zext nneg i32 %.2 to i64 ; 2 uses
  %xtraiter290 = and i64 %wide.trip.count341.i, 1
  %i.md = icmp eq i32 %.2, 1
  br i1 %i.md, label %.epil.preheader, label %.lr.ph307.i.new

.lr.ph307.i.new:                                  ; preds = %.lr.ph307.i
  %unroll_iter = and i64 %wide.trip.count341.i, 2147483646
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph307.i.new
  %indvars.iv338.i = phi i64 [ 0, %.lr.ph307.i.new ], [ %indvars.iv.next339.i.1, %bb.r ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph307.i.new ], [ %niter.next.1, %bb.r ]
end_hunk_0
