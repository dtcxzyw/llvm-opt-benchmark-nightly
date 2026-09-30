Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/avf_showspectrum?download=true
inline.NumInlined: 26
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 17
begin_hunk_0_@draw_legend:bb.a

get_hz.exit522.thread:                            ; preds = %bb.ao, %get_hz.exit522
  %i.rq = call ptr (ptr, ...) @av_asprintf(ptr noundef nonnull @.str.18) #15
  br label %bb.as

bb.ar:                                            ; preds = %get_hz.exit522
  %i.rr = fpext nsz float %.0.i521 to double
  %i.rs = call ptr (ptr, ...) @av_asprintf(ptr noundef nonnull @.str.19, double noundef %i.rr) #15
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %get_hz.exit522.thread
  %.0428 = phi ptr [ %i.rq, %get_hz.exit522.thread ], [ %i.rs, %bb.ar ] ; 6 uses
  %.not485.not = icmp eq ptr %.0428, null
  br i1 %.not485.not, label %.critedge501, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.rt = load ptr, ptr %i.ag, align 8, !tbaa !47
  %i.ru = load i32, ptr %i.bs, align 4, !tbaa !87
  %i.rv = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0428) #17
  %.tr486 = trunc i64 %i.rv to i32
  %i.rw = add nuw i32 %.12613, %i.qq              ; 2 uses
  %i.rx = add i32 %i.rw, %i.ru
  %i.ry = shl i32 %.tr486, 2
  %i.rz = sub i32 %i.rx, %i.ry
  %i.sa = load i32, ptr %i.bk, align 8, !tbaa !88
  %i.sb = add nsw i32 %i.sa, -12
  call fastcc void @drawtext(ptr noundef %i.rt, i32 noundef %i.rz, i32 noundef %i.sb, ptr noundef nonnull %.0428, i32 noundef 0)
  %i.sc = load ptr, ptr %i.ag, align 8, !tbaa !47
  %i.sd = load i32, ptr %i.bs, align 4, !tbaa !87
  %i.se = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0428) #17
  %.tr487 = trunc i64 %i.se to i32
  %i.sf = add i32 %i.rw, %i.sd
  %i.sg = shl i32 %.tr487, 2
  %i.sh = sub i32 %i.sf, %i.sg
  %i.si = load i32, ptr %i.p, align 4, !tbaa !84
  %i.sj = load i32, ptr %i.bk, align 8, !tbaa !88
  %i.sk = add i32 %i.si, 6
  %i.sl = add i32 %i.sk, %i.sj
  call fastcc void @drawtext(ptr noundef %i.sc, i32 noundef %i.sh, i32 noundef %i.sl, ptr noundef nonnull %.0428, i32 noundef 0)
  call void @av_free(ptr noundef nonnull %.0428) #15
  %i.sm = add nuw nsw i32 %.12613, 80             ; 3 uses
  %i.sn = icmp slt i32 %i.sm, %i.np
  br i1 %i.sn, label %.lr.ph614, label %._crit_edge615, !llvm.loop !210

._crit_edge615:                                   ; preds = %bb.at, %bb.al, %.preheader568
  %.12.lcssa = phi i32 [ 0, %.preheader568 ], [ 0, %bb.al ], [ %i.sm, %bb.at ]
  %indvars.iv.next691 = add nuw nsw i64 %indvars.iv690, 1
  br label %bb.ai, !llvm.loop !211

bb.au:                                            ; preds = %.lr.ph618.a, %bb.bc
  %.6443617 = phi i32 [ 0, %.lr.ph618.a ], [ %i.tp, %bb.bc ] ; 3 uses
  %i.so = load i32, ptr %i.oz, align 4, !tbaa !83
  %.not482 = icmp eq i32 %i.so, 0
  br i1 %.not482, label %.critedge7, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.sp = uitofp nsz nneg i32 %.6443617 to float
  %i.sq = fmul nsz float %i.aa, %i.sp
  %i.sr = load i32, ptr %i.ad, align 8, !tbaa !81
  %i.ss = sitofp nsz i32 %i.sr to float
  %i.st = fdiv nsz float %i.sq, %i.ss             ; 3 uses
  br i1 %i.pa, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.su = call ptr (ptr, ...) @av_asprintf(ptr noundef nonnull @.str.12) #15
  br label %get_time.exit524

bb.ax:                                            ; preds = %bb.av
  %i.sv = fpext nsz float %i.st to double         ; 2 uses
  %i.sw = call nsz double @llvm.log10.f64(double %i.sv) ; 2 uses
  %i.sx = fcmp nsz ogt double %i.sw, 6.000000e+00
  br i1 %i.sx, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.sy = fdiv nsz float %i.st, 3.600000e+03
  %i.sz = fpext nsz float %i.sy to double
  %i.ta = call ptr (ptr, ...) @av_asprintf(ptr noundef nonnull @.str.25, double noundef %i.sz) #15
  br label %get_time.exit524

bb.az:                                            ; preds = %bb.ax
  %i.tb = fcmp nsz ogt double %i.sw, 3.000000e+00
  br i1 %i.tb, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.tc = fdiv nsz float %i.st, 6.000000e+01
  %i.td = fpext nsz float %i.tc to double
  %i.te = call ptr (ptr, ...) @av_asprintf(ptr noundef nonnull @.str.26, double noundef %i.td) #15
  br label %get_time.exit524

bb.bb:                                            ; preds = %bb.az
  %i.tf = call ptr (ptr, ...) @av_asprintf(ptr noundef nonnull @.str.27, double noundef %i.sv) #15
  br label %get_time.exit524

get_time.exit524:                                 ; preds = %bb.aw, %bb.ay, %bb.ba, %bb.bb
  %.0.i523 = phi ptr [ %i.su, %bb.aw ], [ %i.ta, %bb.ay ], [ %i.te, %bb.ba ], [ %i.tf, %bb.bb ] ; 4 uses
  %.not483.not = icmp eq ptr %.0.i523, null
  br i1 %.not483.not, label %.critedge501, label %bb.bc

bb.bc:                                            ; preds = %get_time.exit524
  %i.tg = load ptr, ptr %i.ag, align 8, !tbaa !47
  %i.th = load i32, ptr %i.bs, align 4, !tbaa !87
  %i.ti = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i523) #17
  %.tr = trunc i64 %i.ti to i32
  %i.tj = add i32 %i.th, -4
  %i.tk = shl i32 %.tr, 3
  %i.tl = sub i32 %i.tj, %i.tk
  %i.tm = load i32, ptr %i.bk, align 8, !tbaa !88
  %i.tn = add nsw i32 %.6443617, -4
  %i.to = add i32 %i.tn, %i.tm
  call fastcc void @drawtext(ptr noundef %i.tg, i32 noundef %i.tl, i32 noundef %i.to, ptr noundef nonnull %.0.i523, i32 noundef 0)
  call void @av_free(ptr noundef nonnull %.0.i523) #15
  %i.tp = add nuw nsw i32 %.6443617, 40           ; 2 uses
  %i.tq = load i32, ptr %i.p, align 4, !tbaa !84
  %i.tr = icmp slt i32 %i.tp, %i.tq
  br i1 %i.tr, label %bb.au, label %.critedge7, !llvm.loop !212

.critedge7:                                       ; preds = %bb.au, %bb.bc, %.preheader566
  %i.ts = load ptr, ptr %i.ag, align 8, !tbaa !47
  %i.tt = load i32, ptr %i.bs, align 4, !tbaa !87
  %i.tu = sdiv i32 %i.tt, 7
  %i.tv = load i32, ptr %i.ai, align 4, !tbaa !68
  %i.tw = sdiv i32 %i.tv, 2
  %i.tx = add nsw i32 %i.tw, -16
  call fastcc void @drawtext(ptr noundef %i.ts, i32 noundef %i.tu, i32 noundef %i.tx, ptr noundef nonnull @.str.20, i32 noundef 1)
  %i.ty = load ptr, ptr %i.ag, align 8, !tbaa !47
  %i.tz = load i32, ptr %i.am, align 8, !tbaa !71
  %i.ua = sdiv i32 %i.tz, 2
  %i.ub = add nsw i32 %i.ua, -56
  %i.uc = load i32, ptr %i.ai, align 4, !tbaa !68
  %i.ud = load i32, ptr %i.bk, align 8, !tbaa !88
  %.neg = sdiv i32 %i.ud, -2
  %i.ue = add i32 %.neg, %i.uc
  call fastcc void @drawtext(ptr noundef %i.ty, i32 noundef %i.ub, i32 noundef %i.ue, ptr noundef nonnull @.str.21, i32 noundef 0)
  br label %bb.bd

bb.bd:                                            ; preds = %.critedge7, %.critedge
  %i.uf = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 5 uses
  %.phi.trans.insert.i = getelementptr i8, ptr %i.e, i64 80 ; 2 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %i.e, i64 96 ; 3 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %i.e, i64 92 ; 2 uses
  %i.ui = getelementptr i8, ptr %i.e, i64 348     ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.e, i64 84 ; 2 uses
  br label %bb.be

bb.be:                                            ; preds = %._crit_edge649, %bb.bd
  %.2448 = phi i32 [ 0, %bb.bd ], [ %i.aer, %._crit_edge649 ] ; 6 uses
  br i1 %i.x, label %bb.bf, label %.thread548

bb.bf:                                            ; preds = %bb.be
  %i.uk = load i32, ptr %i.uf, align 8, !tbaa !32 ; 2 uses
  %i.ul = icmp slt i32 %.2448, %i.uk
  br i1 %i.ul, label %bb.bg, label %bb.cr

.thread548:                                       ; preds = %bb.be
  %i.um = icmp eq i32 %.2448, 0
  br i1 %i.um, label %.thread549, label %bb.cr

bb.bg:                                            ; preds = %bb.bf
  %i.un = load i32, ptr %i.p, align 4, !tbaa !84
  %i.uo = sdiv i32 %i.un, %i.uk
  br label %bb.bh

.thread549:                                       ; preds = %.thread548
  %i.up = load i32, ptr %i.p, align 4, !tbaa !84
  br label %bb.bh

bb.bh:                                            ; preds = %.thread549, %bb.bg
  %i.uq = phi i32 [ %i.uo, %bb.bg ], [ %i.up, %.thread549 ] ; 7 uses
  %i.ur = icmp sgt i32 %i.uq, 0
  br i1 %i.ur, label %.preheader.lr.ph, label %.preheader560

.preheader.lr.ph:                                 ; preds = %bb.bh
  %i.us = xor i32 %.2448, -1
  %i.ut = uitofp nneg i32 %i.uq to float
  %i.uu = add nuw nsw i32 %.2448, 1
  %i.uv = mul nuw nsw i32 %i.uq, %i.uu
  br label %.preheader

.preheader560:                                    ; preds = %bb.ch, %bb.bh
  %i.uw = icmp eq i32 %.2448, 0
  %i.ux = icmp sgt i32 %i.uq, -5
  %i.uy = and i1 %i.uw, %i.ux
  br i1 %i.uy, label %.lr.ph648, label %._crit_edge649

.lr.ph648:                                        ; preds = %.preheader560
  %i.uz = add nsw i32 %i.uq, -1
  %i.va = sitofp nsz i32 %i.uz to float
  br label %bb.ci

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.ch
  %.7444646 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.acp, %bb.ch ] ; 3 uses
  %i.vb = load i32, ptr %i.r, align 4, !tbaa !89  ; 2 uses
  %i.vc = icmp eq i32 %i.vb, 1
  %i.vd = uitofp nsz nneg i32 %.7444646 to float
  %i.ve = fdiv nsz float %i.vd, %i.ut             ; 13 uses
  %i.vf = insertelement <2 x float> poison, float %i.ve, i64 0
  %i.vg = shufflevector <2 x float> %i.vf, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.bi

bb.bi:                                            ; preds = %.preheader, %pick_color.exit
  %.0 = phi i32 [ %i.zu, %pick_color.exit ], [ 0, %.preheader ] ; 3 uses
  %2 = phi <4 x float> [ %10, %pick_color.exit ], [ <float 1.275000e+02, float 1.275000e+02, float 0.000000e+00, float 0.000000e+00>, %.preheader ] ; 4 uses
  br i1 %i.vc, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.vh = load i32, ptr %i.uf, align 8, !tbaa !32
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bi, %bb.bj
  %i.vi = phi i32 [ %i.vh, %bb.bj ], [ 1, %bb.bi ]
  %i.vj = icmp slt i32 %.0, %i.vi
  br i1 %i.vj, label %bb.bl, label %bb.cf

bb.bl:                                            ; preds = %bb.bk
  br i1 %i.x, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.vk = load i32, ptr %i.uf, align 8, !tbaa !32
  %i.vl = add i32 %i.vk, %i.us
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bl, %bb.bm
  %i.vm = phi i32 [ %i.vl, %bb.bm ], [ %.0, %bb.bl ]
  switch i32 %i.vb, label %bb.bq [
    i32 0, label %bb.bo
    i32 1, label %bb.br
  ]

bb.bo:                                            ; preds = %bb.bn
  %i.vn = load i32, ptr %i.uf, align 8, !tbaa !32 ; 2 uses
  %i.vo = sitofp nsz i32 %i.vn to float
  %i.vp = fdiv nsz float 2.560000e+02, %i.vo      ; 16 uses
  %i.vq = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !101 ; 15 uses
  switch i32 %i.vq, label %bb.bp [
    i32 2, label %color_range.exit
    i32 3, label %color_range.exit
    i32 4, label %color_range.exit
    i32 5, label %color_range.exit
    i32 6, label %color_range.exit
    i32 7, label %color_range.exit
    i32 8, label %color_range.exit
    i32 10, label %color_range.exit
    i32 11, label %color_range.exit
    i32 12, label %color_range.exit
    i32 13, label %color_range.exit
    i32 14, label %color_range.exit
    i32 9, label %color_range.exit
    i32 1, label %color_range.exit
    i32 0, label %.thread.i
  ]

.thread.i:                                        ; preds = %bb.bo
  %i.vr = fpext nnan nsz float %i.vp to double
  %i.vs = fmul nnan nsz double %i.vr, f0x400921FB54442D18
  %i.vt = fptrunc nnan nsz double %i.vs to float
  br label %bb.bs

bb.bp:                                            ; preds = %bb.bo
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 578) #15
  call void @abort() #18
  unreachable

bb.bq:                                            ; preds = %bb.bn
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 588) #15
  call void @abort() #18
  unreachable

bb.br:                                            ; preds = %bb.bn
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !101 ; 2 uses
  %i.vu = icmp eq i32 %.pre.i, 0
  br i1 %i.vu, label %._crit_edge732, label %color_range.exit

._crit_edge732:                                   ; preds = %bb.br
  %.pre733 = load i32, ptr %i.uf, align 8, !tbaa !32
  br label %bb.bs

bb.bs:                                            ; preds = %._crit_edge732, %.thread.i
  %i.vv = phi i32 [ %i.vn, %.thread.i ], [ %.pre733, %._crit_edge732 ] ; 2 uses
  %.1544 = phi nsz float [ %i.vp, %.thread.i ], [ 2.560000e+02, %._crit_edge732 ]
  %.1542 = phi nsz float [ %i.vt, %.thread.i ], [ 2.560000e+02, %._crit_edge732 ]
  %i.vw = icmp sgt i32 %i.vv, 1
  br i1 %i.vw, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.vx = sitofp nsz i32 %i.vm to double
  %i.vy = fmul nnan nsz double %i.vx, f0x401921FB54442D18
  %i.vz = uitofp nneg i32 %i.vv to double
  %i.wa = fdiv nsz double %i.vy, %i.vz
  %i.wb = load float, ptr %i.ug, align 8, !tbaa !109
  %i.wc = fpext nsz float %i.wb to double
  %i.wd = call nsz double @llvm.fmuladd.f64(double %i.wc, double f0x400921FB54442D18, double %i.wa)
  %i.we = fptrunc nsz double %i.wd to float
  %sincos = call nsz { float, float } @llvm.sincos.f32(float %i.we) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0
  %cos = extractvalue { float, float } %sincos, 1
  br label %color_range.exit.thread

bb.bu:                                            ; preds = %bb.bs
  %i.wf = load float, ptr %i.ug, align 8, !tbaa !109
  %i.wg = fpext nsz float %i.wf to double         ; 2 uses
  %i.wh = fmul nsz double %i.wg, f0x400921FB54442D18
  %i.wi = fptrunc nsz double %i.wh to float
  %i.wj = call nsz float @llvm.sin.f32(float %i.wi)
  %i.wk = call nsz double @llvm.fmuladd.f64(double %i.wg, double f0x400921FB54442D18, double f0x3FF921FB54442D18)
  %i.wl = fptrunc nsz double %i.wk to float
  %i.wm = call nsz float @llvm.cos.f32(float %i.wl)
  br label %color_range.exit.thread

color_range.exit.thread:                          ; preds = %bb.bt, %bb.bu
  %cos.sink = phi float [ %cos, %bb.bt ], [ %i.wm, %bb.bu ]
  %.pn.in = phi float [ %sin, %bb.bt ], [ %i.wj, %bb.bu ]
  %i.wn = insertelement <2 x float> poison, float %cos.sink, i64 0
  %i.wo = insertelement <2 x float> %i.wn, float %.pn.in, i64 1
  %i.wp = fmul nsz <2 x float> %i.wo, splat (float 5.000000e-01)
  %i.wq = insertelement <2 x float> poison, float %.1542, i64 0
  %i.wr = shufflevector <2 x float> %i.wq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ws = fmul nsz <2 x float> %i.wr, %i.wp
  %i.wt = load float, ptr %i.uh, align 4, !tbaa !110
  %i.wu = insertelement <2 x float> poison, float %i.wt, i64 0
  %i.wv = shufflevector <2 x float> %i.wu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ww = fmul nsz <2 x float> %i.ws, %i.wv
  %.val516822 = load float, ptr %i.ui, align 4, !tbaa !102
  br label %pick_color.exit

color_range.exit:                                 ; preds = %bb.br, %bb.bo, %bb.bo, %bb.bo, %bb.bo, %bb.bo, %bb.bo, %bb.bo, %bb.bo, %bb.bo, %bb.bo, %bb.bo, %bb.bo, %bb.bo, %bb.bo
  %.val735 = phi i32 [ %.pre.i, %bb.br ], [ %i.vq, %bb.bo ], [ %i.vq, %bb.bo ], [ %i.vq, %bb.bo ], [ %i.vq, %bb.bo ], [ %i.vq, %bb.bo ], [ %i.vq, %bb.bo ], [ %i.vq, %bb.bo ], [ %i.vq, %bb.bo ], [ %i.vq, %bb.bo ], [ %i.vq, %bb.bo ], [ %i.vq, %bb.bo ], [ %i.vq, %bb.bo ], [ %i.vq, %bb.bo ], [ %i.vq, %bb.bo ] ; 2 uses
  %.0543 = phi nsz float [ 2.560000e+02, %bb.br ], [ %i.vp, %bb.bo ], [ %i.vp, %bb.bo ], [ %i.vp, %bb.bo ], [ %i.vp, %bb.bo ], [ %i.vp, %bb.bo ], [ %i.vp, %bb.bo ], [ %i.vp, %bb.bo ], [ %i.vp, %bb.bo ], [ %i.vp, %bb.bo ], [ %i.vp, %bb.bo ], [ %i.vp, %bb.bo ], [ %i.vp, %bb.bo ], [ %i.vp, %bb.bo ], [ %i.vp, %bb.bo ] ; 5 uses
  %i.wx = load float, ptr %i.ug, align 8, !tbaa !109
  %i.wy = fpext nsz float %i.wx to double         ; 2 uses
  %i.wz = fmul nsz double %i.wy, f0x400921FB54442D18
  %i.xa = fptrunc nsz double %i.wz to float
  %i.xb = call nsz float @llvm.sin.f32(float %i.xa)
  %i.xc = call nsz double @llvm.fmuladd.f64(double %i.wy, double f0x400921FB54442D18, double f0x3FF921FB54442D18)
  %i.xd = fptrunc nsz double %i.xc to float
  %i.xe = call nsz float @llvm.cos.f32(float %i.xd)
  %i.xf = insertelement <2 x float> poison, float %.0543, i64 0
  %i.xg = shufflevector <2 x float> %i.xf, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.xh = insertelement <2 x float> poison, float %i.xe, i64 0
  %i.xi = insertelement <2 x float> %i.xh, float %i.xb, i64 1
  %i.xj = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xg, <2 x float> %i.xi, <2 x float> %i.xg)
  %i.xk = load float, ptr %i.uh, align 4, !tbaa !110
  %i.xl = insertelement <2 x float> poison, float %i.xk, i64 0
  %i.xm = shufflevector <2 x float> %i.xl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xn = fmul nsz <2 x float> %i.xj, %i.xm       ; 4 uses
  %.val516 = load float, ptr %i.ui, align 4, !tbaa !102 ; 4 uses
  %i.xo = icmp sgt i32 %.val735, 0
  br i1 %i.xo, label %.preheader.i, label %pick_color.exit

.preheader.i:                                     ; preds = %color_range.exit
  %i.xp = zext nneg i32 %.val735 to i64
  %i.xq = getelementptr inbounds nuw [128 x i8], ptr @color_table, i64 %i.xp ; 7 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xq, i64 16
  %i.xs = load float, ptr %i.xr, align 16, !tbaa !104
  %i.xt = fcmp nsz ult float %i.xs, %i.ve
  br i1 %i.xt, label %bb.bv, label %bb.ca

bb.bv:                                            ; preds = %.preheader.i
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xq, i64 32
  %i.xv = load float, ptr %i.xu, align 16, !tbaa !104
  %i.xw = fcmp nsz ult float %i.xv, %i.ve
  br i1 %i.xw, label %bb.bw, label %bb.ca

bb.bw:                                            ; preds = %bb.bv
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xq, i64 48
  %i.xy = load float, ptr %i.xx, align 16, !tbaa !104
  %i.xz = fcmp nsz ult float %i.xy, %i.ve
  br i1 %i.xz, label %bb.bx, label %bb.ca

bb.bx:                                            ; preds = %bb.bw
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xq, i64 64
  %i.yb = load float, ptr %i.ya, align 16, !tbaa !104
  %i.yc = fcmp nsz ult float %i.yb, %i.ve
  br i1 %i.yc, label %bb.by, label %bb.ca

bb.by:                                            ; preds = %bb.bx
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xq, i64 80
  %i.ye = load float, ptr %i.yd, align 16, !tbaa !104
  %i.yf = fcmp nsz ult float %i.ye, %i.ve
  br i1 %i.yf, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.yg = getelementptr inbounds nuw i8, ptr %i.xq, i64 96
  %i.yh = load float, ptr %i.yg, align 16, !tbaa !104
  %i.yi = fcmp nsz ult float %i.yh, %i.ve
  %spec.select.i = select i1 %i.yi, i64 7, i64 6
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %.preheader.i
  %.lcssa.i = phi i64 [ 1, %.preheader.i ], [ 4, %bb.bx ], [ 2, %bb.bv ], [ %spec.select.i, %bb.bz ], [ 3, %bb.bw ], [ 5, %bb.by ]
  %i.yj = getelementptr [16 x i8], ptr %i.xq, i64 %.lcssa.i ; 10 uses
  %i.yk = getelementptr i8, ptr %i.yj, i64 -16
  %i.yl = load float, ptr %i.yk, align 16, !tbaa !104 ; 3 uses
  %i.ym = fcmp nsz ugt float %i.ve, %i.yl
  br i1 %i.ym, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.yn = getelementptr i8, ptr %i.yj, i64 -12
  %i.yo = load float, ptr %i.yn, align 4, !tbaa !105
  %i.yp = getelementptr i8, ptr %i.yj, i64 -8
  %i.yq = load <2 x float>, ptr %i.yp, align 8, !tbaa !77
  br label %pick_color.exit

bb.cc:                                            ; preds = %bb.ca
  %i.yr = load float, ptr %i.yj, align 16, !tbaa !104 ; 2 uses
  %i.ys = fcmp nsz ult float %i.ve, %i.yr
  br i1 %i.ys, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yj, i64 4
  %i.yu = load float, ptr %i.yt, align 4, !tbaa !105
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yj, i64 8
  %i.yw = load <2 x float>, ptr %i.yv, align 8, !tbaa !77
  br label %pick_color.exit

bb.ce:                                            ; preds = %bb.cc
  %i.yx = fsub nsz float %i.ve, %i.yl
  %i.yy = fsub nsz float %i.yr, %i.yl
  %i.yz = fdiv nsz float %i.yx, %i.yy             ; 3 uses
  %i.za = getelementptr i8, ptr %i.yj, i64 -12
  %i.zb = load float, ptr %i.za, align 4, !tbaa !105
  %i.zc = fsub nsz float 1.000000e+00, %i.yz      ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %i.yj, i64 4
  %i.ze = load float, ptr %i.zd, align 4, !tbaa !105
  %i.zf = fmul nsz float %i.yz, %i.ze
  %i.zg = call nsz float @llvm.fmuladd.f32(float %i.zb, float %i.zc, float %i.zf)
  %i.zh = getelementptr i8, ptr %i.yj, i64 -8
  %i.zi = getelementptr inbounds nuw i8, ptr %i.yj, i64 8
  %i.zj = load <2 x float>, ptr %i.zh, align 8, !tbaa !77
  %i.zk = load <2 x float>, ptr %i.zi, align 8, !tbaa !77
  %i.zl = insertelement <2 x float> poison, float %i.yz, i64 0
  %i.zm = shufflevector <2 x float> %i.zl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zn = fmul nsz <2 x float> %i.zm, %i.zk
  %i.zo = insertelement <2 x float> poison, float %i.zc, i64 0
  %i.zp = shufflevector <2 x float> %i.zo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zq = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zj, <2 x float> %i.zp, <2 x float> %i.zn)
  br label %pick_color.exit

pick_color.exit:                                  ; preds = %color_range.exit.thread, %color_range.exit, %bb.cb, %bb.cd, %bb.ce
  %.val516824 = phi float [ %.val516, %bb.ce ], [ %.val516, %bb.cb ], [ %.val516, %bb.cd ], [ %.val516, %color_range.exit ], [ %.val516822, %color_range.exit.thread ]
  %.2545823 = phi float [ %.0543, %bb.ce ], [ %.0543, %bb.cb ], [ %.0543, %bb.cd ], [ %.0543, %color_range.exit ], [ %.1544, %color_range.exit.thread ]
  %.sink11.i = phi float [ %i.zg, %bb.ce ], [ %i.yo, %bb.cb ], [ %i.yu, %bb.cd ], [ %i.ve, %color_range.exit ], [ %i.ve, %color_range.exit.thread ]
  %i.zr = phi <2 x float> [ %i.xn, %bb.ce ], [ %i.xn, %bb.cb ], [ %i.xn, %bb.cd ], [ %i.xn, %color_range.exit ], [ %i.ww, %color_range.exit.thread ]
  %i.zs = phi <2 x float> [ %i.zq, %bb.ce ], [ %i.yq, %bb.cb ], [ %i.yw, %bb.cd ], [ %i.vg, %color_range.exit ], [ %i.vg, %color_range.exit.thread ]
  %i.zt = fmul nsz float %.val516824, 2.550000e+02
  %3 = shufflevector <2 x float> %i.zr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %4 = insertelement <4 x float> %3, float %.2545823, i64 2
  %5 = insertelement <4 x float> %4, float %i.ve, i64 3
  %6 = shufflevector <2 x float> %i.zs, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %7 = insertelement <4 x float> %6, float %.sink11.i, i64 2
  %8 = insertelement <4 x float> %7, float %i.zt, i64 3
  %9 = fmul nsz <4 x float> %5, %8
  %10 = fadd nsz <4 x float> %2, %9
  %i.zu = add nuw nsw i32 %.0, 1
  br label %bb.bi, !llvm.loop !213

bb.cf:                                            ; preds = %bb.bk
  %i.zv = load ptr, ptr %i.ag, align 8, !tbaa !47 ; 2 uses
  %i.zw = load ptr, ptr %i.zv, align 8, !tbaa !69
  %i.zx = load i32, ptr %i.bk, align 8, !tbaa !88
  %i.zy = xor i32 %.7444646, -1
  %i.zz = add nsw i32 %i.uv, %i.zy                ; 4 uses
  %i.aaa = add i32 %i.zz, %i.zx
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zv, i64 64
  %i.aac = load i32, ptr %i.aab, align 8, !tbaa !70
  %i.aad = mul nsw i32 %i.aaa, %i.aac
  %i.aae = sext i32 %i.aad to i64
  %i.aaf = getelementptr inbounds i8, ptr %i.zw, i64 %i.aae
  %i.aag = load i32, ptr %i.o, align 8, !tbaa !85
  %i.aah = sext i32 %i.aag to i64
  %i.aai = getelementptr inbounds i8, ptr %i.aaf, i64 %i.aah
  %i.aaj = load i32, ptr %i.bs, align 4, !tbaa !87
  %i.aak = sext i32 %i.aaj to i64
  %i.aal = getelementptr inbounds i8, ptr %i.aai, i64 %i.aak
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aal, i64 20
  %11 = extractelement <4 x float> %2, i64 2
  %12 = fptosi float %11 to i32
  %13 = call i32 @llvm.smax.i32(i32 %12, i32 0)
  %.0.i515550 = call i32 @llvm.umin.i32(i32 %13, i32 255)
  %i.aan = trunc nuw i32 %.0.i515550 to i8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.aam, i8 %i.aan, i64 10, i1 false)
  %i.aao = load ptr, ptr %i.ag, align 8, !tbaa !47 ; 2 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aao, i64 8
  %i.aaq = load ptr, ptr %i.aap, align 8, !tbaa !69
  %i.aar = load i32, ptr %i.bk, align 8, !tbaa !88
  %i.aas = add i32 %i.zz, %i.aar
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aao, i64 68
  %i.aau = load i32, ptr %i.aat, align 4, !tbaa !70
  %i.aav = mul nsw i32 %i.aas, %i.aau
  %i.aaw = sext i32 %i.aav to i64
  %i.aax = getelementptr inbounds i8, ptr %i.aaq, i64 %i.aaw
  %i.aay = load i32, ptr %i.o, align 8, !tbaa !85
  %i.aaz = sext i32 %i.aay to i64
  %i.aba = getelementptr inbounds i8, ptr %i.aax, i64 %i.aaz
  %i.abb = load i32, ptr %i.bs, align 4, !tbaa !87
  %i.abc = sext i32 %i.abb to i64
  %i.abd = getelementptr inbounds i8, ptr %i.aba, i64 %i.abc
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abd, i64 20
  %14 = shufflevector <4 x float> %2, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %15 = fptosi <2 x float> %14 to <2 x i32>
  %16 = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %15, <2 x i32> zeroinitializer) ; 2 uses
  %17 = extractelement <2 x i32> %16, i64 1
  %.0.i512551 = call i32 @llvm.umin.i32(i32 %17, i32 255)
  %.0.i512 = trunc nuw i32 %.0.i512551 to i8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.abe, i8 %.0.i512, i64 10, i1 false)
  %i.abf = load ptr, ptr %i.ag, align 8, !tbaa !47 ; 2 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abf, i64 16
  %i.abh = load ptr, ptr %i.abg, align 8, !tbaa !69
  %i.abi = load i32, ptr %i.bk, align 8, !tbaa !88
  %i.abj = add i32 %i.zz, %i.abi
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abf, i64 72
  %i.abl = load i32, ptr %i.abk, align 8, !tbaa !70
  %i.abm = mul nsw i32 %i.abj, %i.abl
  %i.abn = sext i32 %i.abm to i64
  %i.abo = getelementptr inbounds i8, ptr %i.abh, i64 %i.abn
  %i.abp = load i32, ptr %i.o, align 8, !tbaa !85
  %i.abq = sext i32 %i.abp to i64
  %i.abr = getelementptr inbounds i8, ptr %i.abo, i64 %i.abq
  %i.abs = load i32, ptr %i.bs, align 4, !tbaa !87
  %i.abt = sext i32 %i.abs to i64
  %i.abu = getelementptr inbounds i8, ptr %i.abr, i64 %i.abt
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abu, i64 20
  %18 = extractelement <2 x i32> %16, i64 0
  %.0.i509552 = call i32 @llvm.umin.i32(i32 %18, i32 255)
  %i.abw = trunc nuw i32 %.0.i509552 to i8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.abv, i8 %i.abw, i64 10, i1 false)
  %i.abx = load ptr, ptr %i.ag, align 8, !tbaa !47 ; 2 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abx, i64 24
  %i.abz = load ptr, ptr %i.aby, align 8, !tbaa !69 ; 2 uses
  %.not496 = icmp eq ptr %i.abz, null
  br i1 %.not496, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.aca = load i32, ptr %i.bk, align 8, !tbaa !88
  %i.acb = add i32 %i.zz, %i.aca
  %i.acc = getelementptr inbounds nuw i8, ptr %i.abx, i64 76
  %i.acd = load i32, ptr %i.acc, align 4, !tbaa !70
  %i.ace = mul nsw i32 %i.acb, %i.acd
  %i.acf = sext i32 %i.ace to i64
  %i.acg = getelementptr inbounds i8, ptr %i.abz, i64 %i.acf
  %i.ach = load i32, ptr %i.o, align 8, !tbaa !85
  %i.aci = sext i32 %i.ach to i64
  %i.acj = getelementptr inbounds i8, ptr %i.acg, i64 %i.aci
  %i.ack = load i32, ptr %i.bs, align 4, !tbaa !87
  %i.acl = sext i32 %i.ack to i64
  %i.acm = getelementptr inbounds i8, ptr %i.acj, i64 %i.acl
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acm, i64 20
  %19 = extractelement <4 x float> %2, i64 3
  %20 = fptosi float %19 to i32
  %21 = call i32 @llvm.smax.i32(i32 %20, i32 0)
  %.0.i553 = call i32 @llvm.umin.i32(i32 %21, i32 255)
  %i.aco = trunc nuw i32 %.0.i553 to i8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.acn, i8 %i.aco, i64 10, i1 false)
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.acp = add nuw nsw i32 %.7444646, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.acp, %i.uq
  br i1 %exitcond.not, label %.preheader560, label %.preheader, !llvm.loop !214

bb.ci:                                            ; preds = %.lr.ph648, %bb.cq
  %.8445647 = phi i32 [ 0, %.lr.ph648 ], [ %i.aeo, %bb.cq ] ; 4 uses
  %i.acq = uitofp nsz nneg i32 %.8445647 to float
  %i.acr = fdiv nsz float %i.acq, %i.va
  %i.acs = fsub nsz float 1.000000e+00, %i.acr    ; 2 uses
  %i.act = fcmp nsz ogt float %i.acs, 0.000000e+00
  %i.acu = select nsz i1 %i.act, float %i.acs, float 0.000000e+00 ; 2 uses
  %i.acv = fcmp nsz ogt float %i.acu, 1.000000e+00
  %..i = select nsz i1 %i.acv, float 1.000000e+00, float %i.acu ; 16 uses
  %i.acw = load i32, ptr %i.uj, align 4, !tbaa !111 ; 2 uses
  %i.acx = icmp eq i32 %i.acw, 3
  %.val518 = load ptr, ptr %i.d, align 8, !tbaa !19 ; 4 uses
  br i1 %i.acx, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.acy = getelementptr inbounds nuw i8, ptr %.val518, i64 308
  %i.acz = load float, ptr %i.acy, align 4, !tbaa !76 ; 2 uses
  %i.ada = fneg nsz float %i.acz
  %i.adb = call nsz float @llvm.fmuladd.f32(float %..i, float %i.acz, float %i.ada)
  %i.adc = getelementptr inbounds nuw i8, ptr %.val518, i64 312
  %i.add = load float, ptr %i.adc, align 8, !tbaa !75
  %i.ade = fadd nsz float %i.adb, %i.add
  %i.adf = fpext nsz float %i.ade to double
  %i.adg = fmul nsz double %i.adf, f0x40026BB1BBB55516
  %i.adh = fdiv nsz double %i.adg, 2.000000e+01
  %i.adi = fptrunc nsz double %i.adh to float
  %i.adj = call nsz float @llvm.exp.f32(float %i.adi)
  %i.adk = call nsz float @llvm.log10.f32(float %i.adj)
  %i.adl = fmul nsz float %i.adk, 2.000000e+01
  br label %bb.cq

bb.ck:                                            ; preds = %bb.ci
  %i.adm = getelementptr inbounds nuw i8, ptr %.val518, i64 316
  %i.adn = load float, ptr %i.adm, align 4, !tbaa !112 ; 2 uses
  %i.ado = getelementptr inbounds nuw i8, ptr %.val518, i64 320
  %i.adp = load float, ptr %i.ado, align 8, !tbaa !113
  switch i32 %i.acw, label %bb.cp [
    i32 0, label %get_iscale.exit
    i32 1, label %bb.cl
    i32 2, label %bb.cm
    i32 4, label %bb.cn
    i32 5, label %bb.co
  ]

bb.cl:                                            ; preds = %bb.ck
  %i.adq = fmul nsz float %..i, %..i
  br label %get_iscale.exit

bb.cm:                                            ; preds = %bb.ck
  %i.adr = fmul nsz float %..i, %..i
  %i.ads = fmul nsz float %..i, %i.adr
  br label %get_iscale.exit

bb.cn:                                            ; preds = %bb.ck
  %i.adt = fmul nsz float %..i, %..i
  %i.adu = fmul nsz float %..i, %i.adt
  %i.adv = fmul nsz float %..i, %i.adu
  br label %get_iscale.exit

bb.co:                                            ; preds = %bb.ck
  %i.adw = fmul nsz float %..i, %..i
  %i.adx = fmul nsz float %..i, %i.adw
  %i.ady = fmul nsz float %..i, %i.adx
  %i.adz = fmul nsz float %..i, %i.ady
  br label %get_iscale.exit

bb.cp:                                            ; preds = %bb.ck
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 764) #15
  call void @abort() #18
  unreachable

get_iscale.exit:                                  ; preds = %bb.ck, %bb.cl, %bb.cm, %bb.cn, %bb.co
  %.0.i526 = phi nsz float [ %..i, %bb.ck ], [ %i.adq, %bb.cl ], [ %i.ads, %bb.cm ], [ %i.adv, %bb.cn ], [ %i.adz, %bb.co ]
  %i.aea = fsub nsz float %i.adp, %i.adn
  %i.aeb = call nsz float @llvm.fmuladd.f32(float %.0.i526, float %i.aea, float %i.adn)
  br label %bb.cq

bb.cq:                                            ; preds = %get_iscale.exit, %bb.cj
  %i.aec = phi ptr [ @.str.22, %bb.cj ], [ @.str.23, %get_iscale.exit ]
  %i.aed = phi nsz float [ %i.adl, %bb.cj ], [ %i.aeb, %get_iscale.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %i.aee = fpext nsz float %i.aed to double
  %i.aef = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 32, ptr noundef nonnull %i.aec, double noundef %i.aee) #15 ; 0 uses
  %i.aeg = load ptr, ptr %i.ag, align 8, !tbaa !47
  %i.aeh = load i32, ptr %i.o, align 8, !tbaa !85
  %i.aei = load i32, ptr %i.bs, align 4, !tbaa !87
  %i.aej = add i32 %i.aeh, 35
  %i.aek = add i32 %i.aej, %i.aei
  %i.ael = load i32, ptr %i.bk, align 8, !tbaa !88
  %i.aem = add nsw i32 %.8445647, -3
  %i.aen = add i32 %i.aem, %i.ael
  call fastcc void @drawtext(ptr noundef %i.aeg, i32 noundef %i.aek, i32 noundef %i.aen, ptr noundef nonnull %i.c, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  %i.aeo = add nuw nsw i32 %.8445647, 25
  %i.aep = add nuw nsw i32 %.8445647, 20
  %i.aeq = icmp slt i32 %i.aep, %i.uq
  br i1 %i.aeq, label %bb.ci, label %._crit_edge649, !llvm.loop !215

._crit_edge649:                                   ; preds = %bb.cq, %.preheader560
  %i.aer = add nuw nsw i32 %.2448, 1
  br label %bb.be, !llvm.loop !216

bb.cr:                                            ; preds = %.thread548, %bb.bf
  %i.aes = load i32, ptr %i.uj, align 4, !tbaa !111
  %i.aet = icmp eq i32 %i.aes, 3
  br i1 %i.aet, label %bb.cs, label %.critedge501

bb.cs:                                            ; preds = %bb.cr
  %i.aeu = load ptr, ptr %i.ag, align 8, !tbaa !47
  %i.aev = load i32, ptr %i.o, align 8, !tbaa !85
  %i.aew = load i32, ptr %i.bs, align 4, !tbaa !87
  %i.aex = add i32 %i.aev, 22
  %i.aey = add i32 %i.aex, %i.aew
  %i.aez = load i32, ptr %i.bk, align 8, !tbaa !88
  %i.afa = load i32, ptr %i.p, align 4, !tbaa !84
  %i.afb = add i32 %i.aez, 20
  %i.afc = add i32 %i.afb, %i.afa
  call fastcc void @drawtext(ptr noundef %i.aeu, i32 noundef %i.aey, i32 noundef %i.afc, ptr noundef nonnull @.str.24, i32 noundef 0)
  br label %.critedge501

.critedge501:                                     ; preds = %bb.as, %get_time.exit524, %bb.x, %get_time.exit, %get_time.exit.peel, %bb.cr, %bb.cs, %bb.e, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_mul_q(i64, i64) local_unnamed_addr #8

declare i32 @av_parse_video_rate(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @ff_get_audio_buffer(ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @av_fast_realloc(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @color_range(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) %3, ptr nofree noundef nonnull captures(none) %4) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.b = load i32, ptr %i.a, align 4, !tbaa !89
  switch i32 %i.b, label %bb.d [
    i32 0, label %bb.b
    i32 1, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load i32, ptr %i.c, align 8, !tbaa !32
  %i.e = sitofp nsz i32 %i.d to float
  %i.f = fdiv nsz float 2.560000e+02, %i.e        ; 3 uses
  store float %i.f, ptr %2, align 4, !tbaa !77
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load i32, ptr %i.g, align 8, !tbaa !101
  switch i32 %i.h, label %bb.c [
    i32 2, label %.thread38
    i32 3, label %.thread38
    i32 4, label %.thread38
    i32 5, label %.thread38
    i32 6, label %.thread38
    i32 7, label %.thread38
    i32 8, label %.thread38
    i32 10, label %.thread38
    i32 11, label %.thread38
    i32 12, label %.thread38
    i32 13, label %.thread38
    i32 14, label %.thread38
    i32 9, label %.thread38
    i32 1, label %.thread38
    i32 0, label %.thread
  ]

.thread38:                                        ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  store float %i.f, ptr %3, align 4, !tbaa !77
  %i.i = load float, ptr %2, align 4, !tbaa !77
  store float %i.i, ptr %4, align 4, !tbaa !77
  br label %bb.i

.thread:                                          ; preds = %bb.b
  %i.j = fpext nnan nsz float %i.f to double
  %i.k = fmul nnan nsz double %i.j, f0x400921FB54442D18
  %i.l = fptrunc nsz double %i.k to float
  store float %i.l, ptr %3, align 4, !tbaa !77
  %i.m = load float, ptr %2, align 4, !tbaa !77
  %i.n = fpext nsz float %i.m to double
  %i.o = fmul nsz double %i.n, f0x400921FB54442D18
  %i.p = fptrunc nsz double %i.o to float
  store float %i.p, ptr %4, align 4, !tbaa !77
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 578) #15
  tail call void @abort() #18
  unreachable
end_hunk_0
begin_hunk_1_@showspectrumpic_request_frame:bb.a
  %i.ch = load i32, ptr %.in.i, align 4, !tbaa !70 ; 5 uses
  %i.ci = load float, ptr %i.aw, align 4, !tbaa !119
  %i.cj = fpext nsz float %i.ci to double
  %i.ck = fmul nsz double %i.ce, %i.cj
  %i.cl = fptrunc nsz double %i.ck to float
  %i.cm = load i32, ptr %i.at, align 8, !tbaa !32 ; 3 uses
  %i.cn = icmp sgt i32 %i.cm, 0                   ; 2 uses
  br i1 %i.cn, label %.lr.ph28.i, label %acalc_magnitudes.exit

.lr.ph28.i:                                       ; preds = %bb.k
  %i.co = load ptr, ptr %i.ax, align 8, !tbaa !39
  %i.cp = icmp sgt i32 %i.ch, 0
  br i1 %i.cp, label %.lr.ph28.split.i, label %acalc_magnitudes.exit

.lr.ph28.split.i:                                 ; preds = %.lr.ph28.i
  %i.cq = load ptr, ptr %i.ay, align 8, !tbaa !35
  %wide.trip.count34.i = zext nneg i32 %i.cm to i64
  %wide.trip.count.i = zext nneg i32 %i.ch to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge.i, %.lr.ph28.split.i
  %indvars.iv31.i = phi i64 [ 0, %.lr.ph28.split.i ], [ %indvars.iv.next32.i, %._crit_edge.i ] ; 3 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv31.i
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !93
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %indvars.iv31.i
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !95
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.l ] ; 3 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv.i ; 2 uses
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !117
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !118
  %i.cz = tail call nsz float @hypotf(float noundef %i.cw, float noundef %i.cy) #16
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %indvars.iv.i ; 2 uses
  %i.db = load float, ptr %i.da, align 4, !tbaa !77
  %i.dc = tail call nsz float @llvm.fmuladd.f32(float %i.cz, float %i.cl, float %i.db)
  store float %i.dc, ptr %i.da, align 4, !tbaa !77
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.l, !llvm.loop !299

._crit_edge.i:                                    ; preds = %bb.l
  %indvars.iv.next32.i = add nuw nsw i64 %indvars.iv31.i, 1 ; 2 uses
  %exitcond35.not.i = icmp eq i64 %indvars.iv.next32.i, %wide.trip.count34.i
  br i1 %exitcond35.not.i, label %acalc_magnitudes.exit, label %.lr.ph.i, !llvm.loop !300

acalc_magnitudes.exit:                            ; preds = %._crit_edge.i, %bb.k, %.lr.ph28.i
  %i.dd = add nuw nsw i32 %.0106137, %i.ai        ; 3 uses
  %.not124 = icmp slt i32 %i.dd, %i.ao
  br i1 %.not124, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %acalc_magnitudes.exit
  %.in125 = select i1 %i.cg, ptr %i.r, ptr %i.q
  %i.de = load i32, ptr %.in125, align 4, !tbaa !70
  %i.df = udiv i32 %i.dd, %i.ai
  %i.dg = sitofp nsz i32 %i.df to float
  %i.dh = fdiv nnan nsz float 1.000000e+00, %i.dg ; 2 uses
  br i1 %i.cn, label %.lr.ph17.i, label %scale_magnitudes.exit

.lr.ph17.i:                                       ; preds = %bb.m
  %i.di = load ptr, ptr %i.ax, align 8, !tbaa !39
  %i.dj = icmp sgt i32 %i.ch, 0
  br i1 %i.dj, label %.lr.ph.preheader.i, label %scale_magnitudes.exit

.lr.ph.preheader.i:                               ; preds = %.lr.ph17.i
  %wide.trip.count23.i = zext nneg i32 %i.cm to i64
  %wide.trip.count.i129 = zext nneg i32 %i.ch to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.ch, 8
  %n.vec = and i64 %wide.trip.count.i129, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.dh, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i129
  br label %.lr.ph.i130

.lr.ph.i130:                                      ; preds = %._crit_edge.i134, %.lr.ph.preheader.i
  %indvars.iv20.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next21.i, %._crit_edge.i134 ] ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %indvars.iv20.i
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !93 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i130, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i130 ] ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %index ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.dm, align 4, !tbaa !77
  %wide.load154 = load <4 x float>, ptr %i.dn, align 4, !tbaa !77
  %i.do = fmul nsz <4 x float> %broadcast.splat, %wide.load
  %i.dp = fmul nsz <4 x float> %broadcast.splat, %wide.load154
  store <4 x float> %i.do, ptr %i.dm, align 4, !tbaa !77
  store <4 x float> %i.dp, ptr %i.dn, align 4, !tbaa !77
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !301

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i134, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i130, %middle.block
  %indvars.iv.i131.ph = phi i64 [ 0, %.lr.ph.i130 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i131 = phi i64 [ %indvars.iv.next.i132, %scalar.ph ], [ %indvars.iv.i131.ph, %scalar.ph.preheader ] ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv.i131 ; 2 uses
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !77
  %i.dt = fmul nsz float %i.dh, %i.ds
  store float %i.dt, ptr %i.dr, align 4, !tbaa !77
  %indvars.iv.next.i132 = add nuw nsw i64 %indvars.iv.i131, 1 ; 2 uses
  %exitcond.not.i133 = icmp eq i64 %indvars.iv.next.i132, %wide.trip.count.i129
  br i1 %exitcond.not.i133, label %._crit_edge.i134, label %scalar.ph, !llvm.loop !302

._crit_edge.i134:                                 ; preds = %scalar.ph, %middle.block
  %indvars.iv.next21.i = add nuw nsw i64 %indvars.iv20.i, 1 ; 2 uses
  %exitcond24.not.i = icmp eq i64 %indvars.iv.next21.i, %wide.trip.count23.i
  br i1 %exitcond24.not.i, label %scale_magnitudes.exit, label %.lr.ph.i130, !llvm.loop !303

scale_magnitudes.exit:                            ; preds = %._crit_edge.i134, %bb.m, %.lr.ph17.i
  %i.du = tail call fastcc i32 @plot_spectrum_column(ptr noundef %i.g, ptr noundef nonnull %i.ap) ; 0 uses
  %i.dv = add nsw i32 %.0104138, 1                ; 2 uses
  %i.dw = load i32, ptr %i.at, align 8, !tbaa !32
  %i.dx = icmp sgt i32 %i.dw, 0
  br i1 %i.dx, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %scale_magnitudes.exit
  %i.dy = sext i32 %i.de to i64
  %i.dz = shl nsw i64 %i.dy, 2
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.n
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.n ] ; 2 uses
  %i.ea = load ptr, ptr %i.ax, align 8, !tbaa !39
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !93
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ec, i8 0, i64 %i.dz, i1 false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ed = load i32, ptr %i.at, align 8, !tbaa !32
  %i.ee = sext i32 %i.ed to i64
  %i.ef = icmp slt i64 %indvars.iv.next, %i.ee
  br i1 %i.ef, label %bb.n, label %.loopexit, !llvm.loop !304

.loopexit:                                        ; preds = %bb.n, %scale_magnitudes.exit, %acalc_magnitudes.exit
  %.1107 = phi i32 [ %i.dd, %acalc_magnitudes.exit ], [ 0, %scale_magnitudes.exit ], [ 0, %bb.n ]
  %.1105 = phi i32 [ %.0104138, %acalc_magnitudes.exit ], [ %i.dv, %scale_magnitudes.exit ], [ %i.dv, %bb.n ] ; 2 uses
  %i.eg = icmp slt i32 %.1105, %i.s
  br i1 %i.eg, label %.preheader, label %._crit_edge, !llvm.loop !305

._crit_edge:                                      ; preds = %.loopexit, %.preheader135
  call void @av_frame_free(ptr noundef nonnull %i.a) #15
  %i.eh = load ptr, ptr %i.j, align 8, !tbaa !47  ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 136
  store i64 0, ptr %i.ei, align 8, !tbaa !59
  %i.ej = getelementptr inbounds nuw i8, ptr %i.d, i64 296
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !86
  %.not122 = icmp eq i32 %i.ek, 0
  br i1 %.not122, label %bb.p, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.el = load i64, ptr %i.l, align 8, !tbaa !121
  call fastcc void @draw_legend(ptr noundef %i.b, i64 noundef %i.el)
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !47
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge
  %i.em = phi ptr [ %.pre, %bb.o ], [ %i.eh, %._crit_edge ]
  %i.en = call i32 @ff_filter_frame(ptr noundef nonnull %0, ptr noundef %i.em) #15
  store ptr null, ptr %i.j, align 8, !tbaa !47
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.p
  %.1111.ph = phi i32 [ %i.en, %bb.p ], [ -12, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %bb.a, %bb.b, %bb.c
  %.1111 = phi i32 [ -541478725, %bb.b ], [ %i.h, %bb.a ], [ -541478725, %bb.c ], [ %.1111.ph, %.sink.split ]
  ret i32 %.1111
}

declare i32 @ff_request_frame(ptr noundef) local_unnamed_addr #4

declare i32 @av_samples_copy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { double, double } @llvm.sincos.f64(double) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { float, float } @llvm.sincos.f32(float) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.exp.v2f32(<2 x float>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fabs.v4f64(<4 x double>) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { <4 x double>, <4 x double> } @llvm.sincos.v4f64(<4 x double>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.exp.v4f64(<4 x double>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.cos.v4f64(<4 x double>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.sin.v4f64(<4 x double>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { <4 x float>, <4 x float> } @llvm.sincos.v4f32(<4 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.atan2.v2f32(<2 x float>, <2 x float>) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.atan2.v4f32(<4 x float>, <4 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #3

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }
attributes #16 = { nounwind willreturn memory(none) }
attributes #17 = { nounwind willreturn memory(read) }
attributes #18 = { noreturn nounwind }

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
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS8AVFilter", !9, i64 0}
!12 = !{!"p1 omnipotent char", !9, i64 0}
!13 = !{!"p1 _ZTS11AVFilterPad", !9, i64 0}
!14 = !{!"any p2 pointer", !9, i64 0}
!15 = !{!"p2 _ZTS12AVFilterLink", !14, i64 0}
!16 = !{!"p1 _ZTS13AVFilterGraph", !9, i64 0}
!17 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!18 = !{!"AVFilterContext", !10, i64 0, !11, i64 8, !12, i64 16, !13, i64 24, !15, i64 32, !6, i64 40, !13, i64 48, !15, i64 56, !6, i64 64, !9, i64 72, !16, i64 80, !6, i64 88, !6, i64 92, !12, i64 96, !6, i64 104, !17, i64 112, !6, i64 120}
!19 = !{!18, !9, i64 72}
!20 = !{!"AVRational", !6, i64 0, !6, i64 4}
!21 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!22 = !{!"float", !5, i64 0}
!23 = !{!"p2 _ZTS11AVTXContext", !14, i64 0}
!24 = !{!"p2 _ZTS14AVComplexFloat", !14, i64 0}
!25 = !{!"p1 float", !9, i64 0}
!26 = !{!"p2 float", !14, i64 0}
!27 = !{!"double", !5, i64 0}
!28 = !{!"long", !5, i64 0}
!29 = !{!"p2 _ZTS7AVFrame", !14, i64 0}
!30 = !{!"ShowSpectrumContext", !10, i64 0, !6, i64 8, !6, i64 12, !12, i64 16, !20, i64 24, !20, i64 32, !21, i64 40, !21, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !22, i64 92, !22, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !23, i64 120, !23, i64 128, !9, i64 136, !9, i64 144, !6, i64 152, !24, i64 160, !24, i64 168, !24, i64 176, !25, i64 184, !26, i64 192, !26, i64 200, !6, i64 208, !6, i64 212, !6, i64 216, !27, i64 224, !22, i64 232, !22, i64 236, !6, i64 240, !25, i64 248, !26, i64 256, !28, i64 264, !28, i64 272, !28, i64 280, !6, i64 288, !6, i64 292, !6, i64 296, !6, i64 300, !6, i64 304, !22, i64 308, !22, i64 312, !22, i64 316, !22, i64 320, !28, i64 328, !9, i64 336, !6, i64 344, !22, i64 348, !29, i64 352, !6, i64 360, !6, i64 364}
!31 = !{!30, !23, i64 120}
!32 = !{!30, !6, i64 56}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!30, !23, i64 128}
!35 = !{!30, !24, i64 168}
!36 = !{!30, !24, i64 160}
!37 = !{!30, !24, i64 176}
!38 = !{!30, !26, i64 256}
!39 = !{!30, !26, i64 192}
!40 = !{!30, !26, i64 200}
!41 = !{!30, !6, i64 360}
!42 = !{!30, !29, i64 352}
!43 = !{!18, !15, i64 32}
!44 = !{!"p1 _ZTS12AVFilterLink", !9, i64 0}
!45 = !{!44, !44, i64 0}
!46 = !{!18, !15, i64 56}
!47 = !{!30, !21, i64 40}
!48 = !{!30, !6, i64 240}
!49 = !{!21, !21, i64 0}
!50 = !{!30, !6, i64 108}
!51 = !{!30, !6, i64 72}
!52 = !{!30, !6, i64 112}
!53 = !{!"p2 omnipotent char", !14, i64 0}
!54 = !{!"p2 _ZTS11AVBufferRef", !14, i64 0}
!55 = !{!"p2 _ZTS15AVFrameSideData", !14, i64 0}
!56 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!57 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!58 = !{!"AVFrame", !5, i64 0, !5, i64 64, !53, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !20, i64 124, !28, i64 136, !28, i64 144, !20, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !54, i64 248, !6, i64 256, !55, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !28, i64 304, !56, i64 312, !6, i64 320, !17, i64 328, !17, i64 336, !28, i64 344, !28, i64 352, !28, i64 360, !28, i64 368, !9, i64 376, !57, i64 384, !28, i64 408, !6, i64 416}
!59 = !{!58, !28, i64 136}
!60 = !{!30, !28, i64 280}
!61 = !{!30, !6, i64 344}
!62 = !{!30, !6, i64 60}
!63 = !{!"p1 _ZTS15AVFilterContext", !9, i64 0}
!64 = !{!"p1 _ZTS15AVFilterFormats", !9, i64 0}
!65 = !{!"p1 _ZTS22AVFilterChannelLayouts", !9, i64 0}
!66 = !{!"AVFilterFormatsConfig", !64, i64 0, !64, i64 8, !65, i64 16, !64, i64 24, !64, i64 32, !64, i64 40}
!67 = !{!"AVFilterLink", !63, i64 0, !13, i64 8, !63, i64 16, !13, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !20, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !57, i64 72, !20, i64 96, !55, i64 104, !6, i64 112, !6, i64 116, !66, i64 120, !66, i64 168}
!68 = !{!67, !6, i64 44}
!69 = !{!12, !12, i64 0}
!70 = !{!6, !6, i64 0}
!71 = !{!67, !6, i64 40}
!72 = !{!30, !28, i64 264}
!73 = !{!67, !63, i64 0}
!74 = !{!30, !28, i64 272}
!75 = !{!30, !22, i64 312}
!76 = !{!30, !22, i64 308}
!77 = !{!22, !22, i64 0}
!78 = !{!30, !6, i64 88}
!79 = !{!30, !9, i64 336}
!80 = !{!30, !6, i64 104}
!81 = !{!67, !6, i64 64}
!82 = !{!30, !6, i64 100}
!83 = !{!30, !6, i64 292}
!84 = !{!30, !6, i64 12}
!85 = !{!30, !6, i64 8}
!86 = !{!30, !6, i64 296}
!87 = !{!30, !6, i64 300}
!88 = !{!30, !6, i64 304}
!89 = !{!30, !6, i64 76}
!90 = !{!30, !6, i64 212}
!91 = !{!30, !6, i64 216}
!92 = !{!30, !6, i64 152}
!93 = !{!25, !25, i64 0}
!94 = !{!"p1 _ZTS14AVComplexFloat", !9, i64 0}
!95 = !{!94, !94, i64 0}
!96 = !{!30, !25, i64 184}
!97 = !{!"llvm.loop.unroll.disable"}
!98 = !{!30, !27, i64 224}
!99 = !{!30, !25, i64 248}
!100 = !{!30, !21, i64 48}
!101 = !{!30, !6, i64 80}
!102 = !{!30, !22, i64 348}
!103 = !{!"ColorTable", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12}
!104 = !{!103, !22, i64 0}
!105 = !{!103, !22, i64 4}
!106 = !{!"llvm.loop.isvectorized", i32 1}
!107 = !{!"llvm.loop.unroll.runtime.disable"}
!108 = !{!5, !5, i64 0}
!109 = !{!30, !22, i64 96}
!110 = !{!30, !22, i64 92}
!111 = !{!30, !6, i64 84}
!112 = !{!30, !22, i64 316}
!113 = !{!30, !22, i64 320}
!114 = !{!58, !53, i64 96}
!115 = !{!58, !6, i64 112}
!116 = !{!"AVComplexFloat", !22, i64 0, !22, i64 4}
!117 = !{!116, !22, i64 0}
!118 = !{!116, !22, i64 4}
!119 = !{!30, !22, i64 236}
!120 = !{!67, !63, i64 16}
!121 = !{!30, !28, i64 328}
!122 = distinct !{!122, !33}
!123 = distinct !{!123, !33}
!124 = distinct !{!124, !33}
!125 = distinct !{!125, !33}
!126 = distinct !{!126, !33}
!127 = distinct !{!127, !33}
!128 = distinct !{!128, !33}
!129 = distinct !{!129, !33}
!130 = distinct !{!130, !33}
!131 = !{!"p1 _ZTS21AVFilterFormatsConfig", !9, i64 0}
!132 = !{!131, !131, i64 0}
!133 = distinct !{!133, !33}
!134 = distinct !{!134, !33}
!135 = distinct !{!135, !33}
!136 = distinct !{!136, !33}
!137 = distinct !{!137, !33}
!138 = distinct !{!138, !33}
!139 = distinct !{!139, !33}
!140 = distinct !{!140, !33}
!141 = distinct !{!141, !33}
!142 = distinct !{!142, !97}
!143 = distinct !{!143, !33}
!144 = !{!18, !11, i64 8}
!145 = !{!"AVFilter", !12, i64 0, !12, i64 8, !13, i64 16, !13, i64 24, !10, i64 32, !6, i64 40}
!146 = !{!145, !12, i64 0}
!147 = !{!67, !6, i64 76}
!148 = !{!30, !6, i64 68}
!149 = !{!30, !6, i64 64}
!150 = !{!30, !6, i64 208}
!151 = !{!30, !22, i64 232}
!152 = !{!58, !6, i64 280}
!153 = !{!30, !12, i64 16}
!154 = distinct !{!154, !33}
!155 = distinct !{!155, !33}
!156 = distinct !{!156, !33, !106, !107}
!157 = distinct !{!157, !33, !106, !107}
!158 = distinct !{!158, !33, !106, !107}
end_hunk_1
