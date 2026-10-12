Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/ac3enc?download=true
inline.NumInlined: 131
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 19
begin_hunk_0_@ac3_validate_metadata:bb.a
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !106
  %.not122 = icmp eq i32 %i.be, -1
  br i1 %.not122, label %.thread204, label %.thread204.sink.split

bb.ae:                                            ; preds = %bb.ac
  %i.bf = icmp eq i32 %i.i, 2
  br i1 %i.bf, label %bb.af, label %.thread204

bb.af:                                            ; preds = %bb.ae
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bh = load i32, ptr %i.bg, align 16, !tbaa !105
  %.not123 = icmp eq i32 %i.bh, -1
  br i1 %.not123, label %.thread204, label %.thread204.sink.split

.thread204.sink.split:                            ; preds = %bb.af, %bb.ad
  store i32 1, ptr %i.e, align 8, !tbaa !78
  br label %.thread204

.thread204:                                       ; preds = %.thread204.sink.split, %bb.ad, %bb.af, %bb.ae
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !109
  %.not124 = icmp eq i32 %i.bj, -1
  br i1 %.not124, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.thread204
  store i32 1, ptr %i.e, align 8, !tbaa !78
  br label %bb.ah

bb.ah:                                            ; preds = %.thread204, %bb.ag
  br i1 %.not117, label %bb.am, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 5040
  %i.bm = load float, ptr %i.bk, align 16, !tbaa !225 ; 2 uses
  %i.bn = fpext nsz float %i.bm to double         ; 6 uses
  %i.bo = fcmp nsz olt double %i.bn, f0x3FE6F289E51EB852
  %i.bp = fcmp nsz ogt double %i.bn, f0x3FE64EB2DAE147AE
  %or.cond.i.i = and i1 %i.bo, %i.bp
  br i1 %or.cond.i.i, label %validate_mix_level.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bq = fcmp nsz olt double %i.bn, f0x3FE358E9851EB852
  %i.br = fcmp nsz ogt double %i.bn, f0x3FE2B5127AE147AE
  %or.cond.i.i.1 = and i1 %i.bq, %i.br
  br i1 %or.cond.i.i.1, label %validate_mix_level.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bs = fcmp nsz olt double %i.bn, 5.100000e-01
  %i.bt = fcmp nsz ogt double %i.bn, 4.900000e-01
  %or.cond.i.i.2 = and i1 %i.bs, %i.bt
  br i1 %or.cond.i.i.2, label %validate_mix_level.exit, label %.thread209

.thread209:                                       ; preds = %bb.ak
  %i.bu = fcmp nsz ult float %i.bm, 0.000000e+00
  br i1 %i.bu, label %validate_mix_level.exit, label %bb.al

bb.al:                                            ; preds = %.thread209
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.b, i32 noundef 24, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.72, double noundef f0x3FE306FE00000000) #15
  %.pre.pre = load i32, ptr %i.u, align 4, !tbaa !72
  br label %validate_mix_level.exit

validate_mix_level.exit:                          ; preds = %bb.ai, %bb.aj, %bb.ak, %.thread209, %bb.al
  %.pre = phi i32 [ %.pre.pre, %bb.al ], [ %i.v, %.thread209 ], [ %i.v, %bb.ak ], [ %i.v, %bb.aj ], [ %i.v, %bb.ai ]
  %.0.i = phi i32 [ 1, %bb.al ], [ 1, %.thread209 ], [ 2, %bb.ak ], [ 1, %bb.aj ], [ 0, %bb.ai ] ; 2 uses
  %i.bv = zext nneg i32 %.0.i to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr @cmixlev_options, i64 %i.bv
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !225
  store float %i.bx, ptr %i.bk, align 16, !tbaa !225
  store i32 %.0.i, ptr %i.bl, align 16, !tbaa !40
  br label %bb.am

bb.am:                                            ; preds = %validate_mix_level.exit, %bb.ah
  %i.by = phi i32 [ %.pre, %validate_mix_level.exit ], [ %i.v, %bb.ah ]
  %.not136 = icmp eq i32 %i.by, 0
  br i1 %.not136, label %bb.ar, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 5044
  %i.cb = load float, ptr %i.bz, align 4, !tbaa !225 ; 2 uses
  %i.cc = fpext nsz float %i.cb to double         ; 5 uses
  %i.cd = fcmp nsz olt double %i.cc, f0x3FE6F289E51EB852
  %i.ce = fcmp nsz ogt double %i.cc, f0x3FE64EB2DAE147AE
  %or.cond.i.i154 = and i1 %i.cd, %i.ce
  br i1 %or.cond.i.i154, label %validate_mix_level.exit162, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cf = fcmp nsz olt double %i.cc, 5.100000e-01
  %i.cg = fcmp nsz ogt double %i.cc, 4.900000e-01
  %or.cond.i.i154.1 = and i1 %i.cf, %i.cg
  br i1 %or.cond.i.i154.1, label %validate_mix_level.exit162, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ch = tail call nsz double @llvm.fabs.f64(double %i.cc)
  %or.cond.i.i154.2 = fcmp nsz olt double %i.ch, 1.000000e-02
  br i1 %or.cond.i.i154.2, label %validate_mix_level.exit162, label %.thread213

.thread213:                                       ; preds = %bb.ap
  %i.ci = fcmp nsz ult float %i.cb, 0.000000e+00
  br i1 %i.ci, label %validate_mix_level.exit162, label %bb.aq

bb.aq:                                            ; preds = %.thread213
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.b, i32 noundef 24, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.73, double noundef 5.000000e-01) #15
  br label %validate_mix_level.exit162

validate_mix_level.exit162:                       ; preds = %bb.an, %bb.ao, %bb.ap, %.thread213, %bb.aq
  %.0.i160 = phi i32 [ 1, %bb.aq ], [ 1, %.thread213 ], [ 0, %bb.an ], [ 1, %bb.ao ], [ 2, %bb.ap ] ; 2 uses
  %i.cj = zext nneg i32 %.0.i160 to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr @surmixlev_options, i64 %i.cj
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !225
  store float %i.cl, ptr %i.bz, align 4, !tbaa !225
  store i32 %.0.i160, ptr %i.ca, align 4, !tbaa !40
  br label %bb.ar

bb.ar:                                            ; preds = %bb.y, %bb.x, %bb.am, %validate_mix_level.exit162
  %i.cm = load i32, ptr %i.d, align 16, !tbaa !77
  %.not137 = icmp eq i32 %i.cm, 0
  br i1 %.not137, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.cn = load i32, ptr %i.f, align 8, !tbaa !69
  %.not138 = icmp eq i32 %i.cn, 0
  br i1 %.not138, label %bb.cf, label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !101
  %i.cq = icmp eq i32 %i.cp, -1
  br i1 %i.cq, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i32 0, ptr %i.co, align 4, !tbaa !101
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.cr = load i32, ptr %i.ac, align 4, !tbaa !56
  %.not139 = icmp eq i32 %i.cr, 0
  br i1 %.not139, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.cs = load i32, ptr %i.m, align 8, !tbaa !71
  %.not140 = icmp eq i32 %i.cs, 0
  br i1 %.not140, label %.thread222, label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 5048
  %i.cv = load float, ptr %i.ct, align 8, !tbaa !225 ; 2 uses
  %i.cw = fpext nsz float %i.cv to double         ; 16 uses
  %i.cx = load float, ptr @ff_ac3_gain_levels, align 16, !tbaa !225 ; 3 uses
  %i.cy = fpext nsz float %i.cx to double         ; 2 uses
  %i.cz = fadd nsz double %i.cy, 1.000000e-02     ; 3 uses
  %i.da = fcmp nsz ogt double %i.cz, %i.cw
  %i.db = fadd nsz double %i.cy, -1.000000e-02    ; 3 uses
  %i.dc = fcmp nsz olt double %i.db, %i.cw
  %or.cond.i.i164 = and i1 %i.da, %i.dc
  br i1 %or.cond.i.i164, label %validate_mix_level.exit172, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.dd = load float, ptr getelementptr inbounds nuw (i8, ptr @ff_ac3_gain_levels, i64 4), align 4, !tbaa !225 ; 2 uses
  %i.de = fpext nsz float %i.dd to double         ; 2 uses
  %i.df = fadd nsz double %i.de, 1.000000e-02
  %i.dg = fcmp nsz ogt double %i.df, %i.cw
  %i.dh = fadd nsz double %i.de, -1.000000e-02
  %i.di = fcmp nsz olt double %i.dh, %i.cw
  %or.cond.i.i164.1 = and i1 %i.dg, %i.di
  br i1 %or.cond.i.i164.1, label %validate_mix_level.exit172, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.dj = load float, ptr getelementptr inbounds nuw (i8, ptr @ff_ac3_gain_levels, i64 8), align 8, !tbaa !225 ; 2 uses
  %i.dk = fpext nsz float %i.dj to double         ; 2 uses
  %i.dl = fadd nsz double %i.dk, 1.000000e-02
  %i.dm = fcmp nsz ogt double %i.dl, %i.cw
  %i.dn = fadd nsz double %i.dk, -1.000000e-02
  %i.do = fcmp nsz olt double %i.dn, %i.cw
  %or.cond.i.i164.2 = and i1 %i.dm, %i.do
  br i1 %or.cond.i.i164.2, label %validate_mix_level.exit172, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.dp = load float, ptr getelementptr inbounds nuw (i8, ptr @ff_ac3_gain_levels, i64 12), align 4, !tbaa !225 ; 2 uses
  %i.dq = fpext nsz float %i.dp to double         ; 2 uses
  %i.dr = fadd nsz double %i.dq, 1.000000e-02
  %i.ds = fcmp nsz ogt double %i.dr, %i.cw
  %i.dt = fadd nsz double %i.dq, -1.000000e-02
  %i.du = fcmp nsz olt double %i.dt, %i.cw
  %or.cond.i.i164.3 = and i1 %i.ds, %i.du
  br i1 %or.cond.i.i164.3, label %validate_mix_level.exit172, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.dv = load float, ptr getelementptr inbounds nuw (i8, ptr @ff_ac3_gain_levels, i64 16), align 16, !tbaa !225 ; 2 uses
  %i.dw = fpext nsz float %i.dv to double         ; 2 uses
  %i.dx = fadd nsz double %i.dw, 1.000000e-02
  %i.dy = fcmp nsz ogt double %i.dx, %i.cw
  %i.dz = fadd nsz double %i.dw, -1.000000e-02
  %i.ea = fcmp nsz olt double %i.dz, %i.cw
  %or.cond.i.i164.4 = and i1 %i.dy, %i.ea
  br i1 %or.cond.i.i164.4, label %validate_mix_level.exit172, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.eb = load float, ptr getelementptr inbounds nuw (i8, ptr @ff_ac3_gain_levels, i64 20), align 4, !tbaa !225 ; 4 uses
  %i.ec = fpext nsz float %i.eb to double         ; 3 uses
  %i.ed = fadd nsz double %i.ec, 1.000000e-02
  %i.ee = fcmp nsz ogt double %i.ed, %i.cw
  %i.ef = fadd nsz double %i.ec, -1.000000e-02
  %i.eg = fcmp nsz olt double %i.ef, %i.cw
  %or.cond.i.i164.5 = and i1 %i.ee, %i.eg
  br i1 %or.cond.i.i164.5, label %validate_mix_level.exit172, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.eh = load float, ptr getelementptr inbounds nuw (i8, ptr @ff_ac3_gain_levels, i64 24), align 8, !tbaa !225 ; 2 uses
  %i.ei = fpext nsz float %i.eh to double         ; 2 uses
  %i.ej = fadd nsz double %i.ei, 1.000000e-02
  %i.ek = fcmp nsz ogt double %i.ej, %i.cw
  %i.el = fadd nsz double %i.ei, -1.000000e-02
  %i.em = fcmp nsz olt double %i.el, %i.cw
  %or.cond.i.i164.6 = and i1 %i.ek, %i.em
  br i1 %or.cond.i.i164.6, label %validate_mix_level.exit172, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.en = load float, ptr getelementptr inbounds nuw (i8, ptr @ff_ac3_gain_levels, i64 28), align 4, !tbaa !225 ; 2 uses
  %i.eo = fpext nsz float %i.en to double         ; 2 uses
  %i.ep = fadd nsz double %i.eo, 1.000000e-02
  %i.eq = fcmp nsz ogt double %i.ep, %i.cw
  %i.er = fadd nsz double %i.eo, -1.000000e-02
  %i.es = fcmp nsz olt double %i.er, %i.cw
  %or.cond.i.i164.7 = and i1 %i.eq, %i.es
  br i1 %or.cond.i.i164.7, label %validate_mix_level.exit172, label %.thread217

.thread217:                                       ; preds = %bb.be
  %i.et = fcmp nsz ult float %i.cv, 0.000000e+00
  br i1 %i.et, label %validate_mix_level.exit172, label %bb.bf

bb.bf:                                            ; preds = %.thread217
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.b, i32 noundef 24, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.74, double noundef %i.ec) #15
  br label %validate_mix_level.exit172

validate_mix_level.exit172:                       ; preds = %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bc, %bb.bd, %bb.be, %.thread217, %bb.bf
  %i.eu = phi float [ %i.eb, %bb.bf ], [ %i.eb, %.thread217 ], [ %i.cx, %bb.ax ], [ %i.dd, %bb.ay ], [ %i.dj, %bb.az ], [ %i.dp, %bb.ba ], [ %i.dv, %bb.bb ], [ %i.eb, %bb.bc ], [ %i.eh, %bb.bd ], [ %i.en, %bb.be ]
  %.0.i170 = phi i32 [ 5, %bb.bf ], [ 5, %.thread217 ], [ 0, %bb.ax ], [ 1, %bb.ay ], [ 2, %bb.az ], [ 3, %bb.ba ], [ 4, %bb.bb ], [ 5, %bb.bc ], [ 6, %bb.bd ], [ 7, %bb.be ]
  store float %i.eu, ptr %i.ct, align 8, !tbaa !225
  store i32 %.0.i170, ptr %i.cu, align 8, !tbaa !40
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 5056
  %i.ex = load float, ptr %i.ev, align 16, !tbaa !225 ; 2 uses
  %i.ey = fpext nsz float %i.ex to double         ; 16 uses
  %i.ez = fcmp nsz ogt double %i.cz, %i.ey
  %i.fa = fcmp nsz olt double %i.db, %i.ey
  %or.cond.i.i174 = and i1 %i.ez, %i.fa
  br i1 %or.cond.i.i174, label %validate_float_option.exit.i177._crit_edge, label %bb.bg

bb.bg:                                            ; preds = %validate_mix_level.exit172
  %i.fb = load float, ptr getelementptr inbounds nuw (i8, ptr @ff_ac3_gain_levels, i64 4), align 4, !tbaa !225 ; 2 uses
  %i.fc = fpext nsz float %i.fb to double         ; 2 uses
  %i.fd = fadd nsz double %i.fc, 1.000000e-02
  %i.fe = fcmp nsz ogt double %i.fd, %i.ey
  %i.ff = fadd nsz double %i.fc, -1.000000e-02
  %i.fg = fcmp nsz olt double %i.ff, %i.ey
  %or.cond.i.i174.1 = and i1 %i.fe, %i.fg
  br i1 %or.cond.i.i174.1, label %validate_float_option.exit.i177._crit_edge, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fh = load float, ptr getelementptr inbounds nuw (i8, ptr @ff_ac3_gain_levels, i64 8), align 8, !tbaa !225 ; 2 uses
  %i.fi = fpext nsz float %i.fh to double         ; 2 uses
  %i.fj = fadd nsz double %i.fi, 1.000000e-02
  %i.fk = fcmp nsz ogt double %i.fj, %i.ey
  %i.fl = fadd nsz double %i.fi, -1.000000e-02
  %i.fm = fcmp nsz olt double %i.fl, %i.ey
  %or.cond.i.i174.2 = and i1 %i.fk, %i.fm
  br i1 %or.cond.i.i174.2, label %validate_float_option.exit.i177._crit_edge, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fn = load float, ptr getelementptr inbounds nuw (i8, ptr @ff_ac3_gain_levels, i64 12), align 4, !tbaa !225 ; 2 uses
  %i.fo = fpext nsz float %i.fn to double         ; 2 uses
  %i.fp = fadd nsz double %i.fo, 1.000000e-02
  %i.fq = fcmp nsz ogt double %i.fp, %i.ey
  %i.fr = fadd nsz double %i.fo, -1.000000e-02
  %i.fs = fcmp nsz olt double %i.fr, %i.ey
  %or.cond.i.i174.3 = and i1 %i.fq, %i.fs
  br i1 %or.cond.i.i174.3, label %validate_float_option.exit.i177._crit_edge, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ft = load float, ptr getelementptr inbounds nuw (i8, ptr @ff_ac3_gain_levels, i64 16), align 16, !tbaa !225 ; 2 uses
  %i.fu = fpext nsz float %i.ft to double         ; 2 uses
  %i.fv = fadd nsz double %i.fu, 1.000000e-02
  %i.fw = fcmp nsz ogt double %i.fv, %i.ey
  %i.fx = fadd nsz double %i.fu, -1.000000e-02
  %i.fy = fcmp nsz olt double %i.fx, %i.ey
  %or.cond.i.i174.4 = and i1 %i.fw, %i.fy
  br i1 %or.cond.i.i174.4, label %validate_float_option.exit.i177._crit_edge, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.fz = load float, ptr getelementptr inbounds nuw (i8, ptr @ff_ac3_gain_levels, i64 20), align 4, !tbaa !225 ; 4 uses
  %i.ga = fpext nsz float %i.fz to double         ; 3 uses
  %i.gb = fadd nsz double %i.ga, 1.000000e-02
  %i.gc = fcmp nsz ogt double %i.gb, %i.ey
  %i.gd = fadd nsz double %i.ga, -1.000000e-02
  %i.ge = fcmp nsz olt double %i.gd, %i.ey
  %or.cond.i.i174.5 = and i1 %i.gc, %i.ge
  br i1 %or.cond.i.i174.5, label %validate_float_option.exit.i177._crit_edge, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.gf = load float, ptr getelementptr inbounds nuw (i8, ptr @ff_ac3_gain_levels, i64 24), align 8, !tbaa !225 ; 2 uses
  %i.gg = fpext nsz float %i.gf to double         ; 2 uses
  %i.gh = fadd nsz double %i.gg, 1.000000e-02
  %i.gi = fcmp nsz ogt double %i.gh, %i.ey
  %i.gj = fadd nsz double %i.gg, -1.000000e-02
  %i.gk = fcmp nsz olt double %i.gj, %i.ey
  %or.cond.i.i174.6 = and i1 %i.gi, %i.gk
  br i1 %or.cond.i.i174.6, label %validate_float_option.exit.i177._crit_edge, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gl = load float, ptr getelementptr inbounds nuw (i8, ptr @ff_ac3_gain_levels, i64 28), align 4, !tbaa !225 ; 2 uses
  %i.gm = fpext nsz float %i.gl to double         ; 2 uses
  %i.gn = fadd nsz double %i.gm, 1.000000e-02
  %i.go = fcmp nsz ogt double %i.gn, %i.ey
  %i.gp = fadd nsz double %i.gm, -1.000000e-02
  %i.gq = fcmp nsz olt double %i.gp, %i.ey
  %or.cond.i.i174.7 = and i1 %i.go, %i.gq
  br i1 %or.cond.i.i174.7, label %validate_float_option.exit.i177._crit_edge, label %.thread221

.thread221:                                       ; preds = %bb.bm
  %i.gr = fcmp nsz ult float %i.ex, 0.000000e+00
  br i1 %i.gr, label %validate_float_option.exit.i177._crit_edge, label %bb.bn

bb.bn:                                            ; preds = %.thread221
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.b, i32 noundef 24, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.75, double noundef %i.ga) #15
  br label %validate_float_option.exit.i177._crit_edge

validate_float_option.exit.i177._crit_edge:       ; preds = %validate_mix_level.exit172, %bb.bg, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %bb.bl, %bb.bm, %bb.bn, %.thread221
  %i.gs = phi float [ %i.fz, %bb.bn ], [ %i.fz, %.thread221 ], [ %i.cx, %validate_mix_level.exit172 ], [ %i.fb, %bb.bg ], [ %i.fh, %bb.bh ], [ %i.fn, %bb.bi ], [ %i.ft, %bb.bj ], [ %i.fz, %bb.bk ], [ %i.gf, %bb.bl ], [ %i.gl, %bb.bm ]
  %.0.i180 = phi i32 [ 5, %bb.bn ], [ 5, %.thread221 ], [ 0, %validate_mix_level.exit172 ], [ 1, %bb.bg ], [ 2, %bb.bh ], [ 3, %bb.bi ], [ 4, %bb.bj ], [ 5, %bb.bk ], [ 6, %bb.bl ], [ 7, %bb.bm ]
  store float %i.gs, ptr %i.ev, align 16, !tbaa !225
  store i32 %.0.i180, ptr %i.ew, align 16, !tbaa !40
  %.pr = load i32, ptr %i.ac, align 4, !tbaa !56
  %.not141 = icmp eq i32 %.pr, 0
  br i1 %.not141, label %bb.bo, label %.thread222

.thread222:                                       ; preds = %bb.aw, %validate_float_option.exit.i177._crit_edge
  %i.gt = load i32, ptr %i.u, align 4, !tbaa !72
  %.not142 = icmp eq i32 %i.gt, 0
  br i1 %.not142, label %bb.cf, label %.thread222._crit_edge

.thread222._crit_edge:                            ; preds = %.thread222
  %.pre259 = load float, ptr @ff_ac3_gain_levels, align 16, !tbaa !225
  %.pre263 = fpext nsz float %.pre259 to double   ; 2 uses
  %.pre264 = fadd nsz double %.pre263, 1.000000e-02
  %.pre266 = fadd nsz double %.pre263, -1.000000e-02
  br label %bb.bo

bb.bo:                                            ; preds = %.thread222._crit_edge, %validate_float_option.exit.i177._crit_edge
  %.pre-phi267 = phi double [ %.pre266, %.thread222._crit_edge ], [ %i.db, %validate_float_option.exit.i177._crit_edge ] ; 2 uses
  %.pre-phi265 = phi double [ %.pre264, %.thread222._crit_edge ], [ %i.cz, %validate_float_option.exit.i177._crit_edge ] ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 5052
  %i.gw = load float, ptr %i.gu, align 4, !tbaa !225 ; 2 uses
  %i.gx = fpext nsz float %i.gw to double         ; 16 uses
  %i.gy = fcmp nsz ogt double %.pre-phi265, %i.gx
  %i.gz = fcmp nsz olt double %.pre-phi267, %i.gx
  %or.cond.i.i184 = and i1 %i.gy, %i.gz
  br i1 %or.cond.i.i184, label %.thread227, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ha = load float, ptr getelementptr inbounds nuw (i8, ptr @ff_ac3_gain_levels, i64 4), align 4, !tbaa !225
  %i.hb = fpext nsz float %i.ha to double         ; 2 uses
  %i.hc = fadd nsz double %i.hb, 1.000000e-02
  %i.hd = fcmp nsz ogt double %i.hc, %i.gx
  %i.he = fadd nsz double %i.hb, -1.000000e-02
  %i.hf = fcmp nsz olt double %i.he, %i.gx
  %or.cond.i.i184.1 = and i1 %i.hd, %i.hf
  br i1 %or.cond.i.i184.1, label %.thread227, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.hg = load float, ptr getelementptr inbounds nuw (i8, ptr @ff_ac3_gain_levels, i64 8), align 8, !tbaa !225
  %i.hh = fpext nsz float %i.hg to double         ; 2 uses
  %i.hi = fadd nsz double %i.hh, 1.000000e-02
  %i.hj = fcmp nsz ogt double %i.hi, %i.gx
  %i.hk = fadd nsz double %i.hh, -1.000000e-02
  %i.hl = fcmp nsz olt double %i.hk, %i.gx
  %or.cond.i.i184.2 = and i1 %i.hj, %i.hl
  br i1 %or.cond.i.i184.2, label %.thread227, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.hm = load float, ptr getelementptr inbounds nuw (i8, ptr @ff_ac3_gain_levels, i64 12), align 4, !tbaa !225
  %i.hn = fpext nsz float %i.hm to double         ; 2 uses
  %i.ho = fadd nsz double %i.hn, 1.000000e-02
  %i.hp = fcmp nsz ogt double %i.ho, %i.gx
  %i.hq = fadd nsz double %i.hn, -1.000000e-02
  %i.hr = fcmp nsz olt double %i.hq, %i.gx
  %or.cond.i.i184.3 = and i1 %i.hp, %i.hr
  br i1 %or.cond.i.i184.3, label %validate_mix_level.exit192, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.hs = load float, ptr getelementptr inbounds nuw (i8, ptr @ff_ac3_gain_levels, i64 16), align 16, !tbaa !225
  %i.ht = fpext nsz float %i.hs to double         ; 2 uses
  %i.hu = fadd nsz double %i.ht, 1.000000e-02
  %i.hv = fcmp nsz ogt double %i.hu, %i.gx
  %i.hw = fadd nsz double %i.ht, -1.000000e-02
  %i.hx = fcmp nsz olt double %i.hw, %i.gx
  %or.cond.i.i184.4 = and i1 %i.hv, %i.hx
  br i1 %or.cond.i.i184.4, label %validate_mix_level.exit192, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.hy = load float, ptr getelementptr inbounds nuw (i8, ptr @ff_ac3_gain_levels, i64 20), align 4, !tbaa !225
  %i.hz = fpext nsz float %i.hy to double         ; 2 uses
  %i.ia = fadd nsz double %i.hz, 1.000000e-02
  %i.ib = fcmp nsz ogt double %i.ia, %i.gx
  %i.ic = fadd nsz double %i.hz, -1.000000e-02
  %i.id = fcmp nsz olt double %i.ic, %i.gx
  %or.cond.i.i184.5 = and i1 %i.ib, %i.id
  br i1 %or.cond.i.i184.5, label %validate_mix_level.exit192, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ie = load float, ptr getelementptr inbounds nuw (i8, ptr @ff_ac3_gain_levels, i64 24), align 8, !tbaa !225
  %i.if = fpext nsz float %i.ie to double         ; 2 uses
  %i.ig = fadd nsz double %i.if, 1.000000e-02
  %i.ih = fcmp nsz ogt double %i.ig, %i.gx
  %i.ii = fadd nsz double %i.if, -1.000000e-02
  %i.ij = fcmp nsz olt double %i.ii, %i.gx
  %or.cond.i.i184.6 = and i1 %i.ih, %i.ij
  br i1 %or.cond.i.i184.6, label %validate_mix_level.exit192, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ik = load float, ptr getelementptr inbounds nuw (i8, ptr @ff_ac3_gain_levels, i64 28), align 4, !tbaa !225
  %i.il = fpext nsz float %i.ik to double         ; 2 uses
  %i.im = fadd nsz double %i.il, 1.000000e-02
  %i.in = fcmp nsz ogt double %i.im, %i.gx
  %i.io = fadd nsz double %i.il, -1.000000e-02
  %i.ip = fcmp nsz olt double %i.io, %i.gx
  %or.cond.i.i184.7 = and i1 %i.in, %i.ip
  br i1 %or.cond.i.i184.7, label %validate_mix_level.exit192, label %.thread227

.thread227:                                       ; preds = %bb.bo, %bb.bp, %bb.bq, %bb.bv
  %i.iq = fcmp nsz ult float %i.gw, 0.000000e+00
  br i1 %i.iq, label %validate_mix_level.exit192, label %bb.bw

bb.bw:                                            ; preds = %.thread227
  %i.ir = load float, ptr getelementptr inbounds nuw (i8, ptr @ff_ac3_gain_levels, i64 24), align 8, !tbaa !225
  %i.is = fpext nsz float %i.ir to double
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.b, i32 noundef 24, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.76, double noundef %i.is) #15
  br label %validate_mix_level.exit192

validate_mix_level.exit192:                       ; preds = %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %.thread227, %bb.bw
  %.0.i190 = phi i32 [ 6, %bb.bw ], [ 6, %.thread227 ], [ 7, %bb.bv ], [ 6, %bb.bu ], [ 5, %bb.bt ], [ 4, %bb.bs ], [ 3, %bb.br ] ; 2 uses
  %i.it = zext nneg i32 %.0.i190 to i64
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr @ff_ac3_gain_levels, i64 %i.it
  %i.iv = load float, ptr %i.iu, align 4, !tbaa !225
  store float %i.iv, ptr %i.gu, align 4, !tbaa !225
  store i32 %.0.i190, ptr %i.gv, align 4, !tbaa !40
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 5060
  %i.iy = load float, ptr %i.iw, align 4, !tbaa !225 ; 2 uses
  %i.iz = fpext nsz float %i.iy to double         ; 16 uses
  %i.ja = fcmp nsz ogt double %.pre-phi265, %i.iz
  %i.jb = fcmp nsz olt double %.pre-phi267, %i.iz
  %or.cond.i.i194 = and i1 %i.ja, %i.jb
  br i1 %or.cond.i.i194, label %.thread231, label %bb.bx

bb.bx:                                            ; preds = %validate_mix_level.exit192
  %i.jc = load float, ptr getelementptr inbounds nuw (i8, ptr @ff_ac3_gain_levels, i64 4), align 4, !tbaa !225
  %i.jd = fpext nsz float %i.jc to double         ; 2 uses
  %i.je = fadd nsz double %i.jd, 1.000000e-02
  %i.jf = fcmp nsz ogt double %i.je, %i.iz
  %i.jg = fadd nsz double %i.jd, -1.000000e-02
  %i.jh = fcmp nsz olt double %i.jg, %i.iz
  %or.cond.i.i194.1 = and i1 %i.jf, %i.jh
  br i1 %or.cond.i.i194.1, label %.thread231, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ji = load float, ptr getelementptr inbounds nuw (i8, ptr @ff_ac3_gain_levels, i64 8), align 8, !tbaa !225
  %i.jj = fpext nsz float %i.ji to double         ; 2 uses
  %i.jk = fadd nsz double %i.jj, 1.000000e-02
  %i.jl = fcmp nsz ogt double %i.jk, %i.iz
  %i.jm = fadd nsz double %i.jj, -1.000000e-02
  %i.jn = fcmp nsz olt double %i.jm, %i.iz
  %or.cond.i.i194.2 = and i1 %i.jl, %i.jn
  br i1 %or.cond.i.i194.2, label %.thread231, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.jo = load float, ptr getelementptr inbounds nuw (i8, ptr @ff_ac3_gain_levels, i64 12), align 4, !tbaa !225
  %i.jp = fpext nsz float %i.jo to double         ; 2 uses
  %i.jq = fadd nsz double %i.jp, 1.000000e-02
  %i.jr = fcmp nsz ogt double %i.jq, %i.iz
  %i.js = fadd nsz double %i.jp, -1.000000e-02
  %i.jt = fcmp nsz olt double %i.js, %i.iz
  %or.cond.i.i194.3 = and i1 %i.jr, %i.jt
  br i1 %or.cond.i.i194.3, label %validate_mix_level.exit202, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ju = load float, ptr getelementptr inbounds nuw (i8, ptr @ff_ac3_gain_levels, i64 16), align 16, !tbaa !225
  %i.jv = fpext nsz float %i.ju to double         ; 2 uses
  %i.jw = fadd nsz double %i.jv, 1.000000e-02
  %i.jx = fcmp nsz ogt double %i.jw, %i.iz
  %i.jy = fadd nsz double %i.jv, -1.000000e-02
  %i.jz = fcmp nsz olt double %i.jy, %i.iz
  %or.cond.i.i194.4 = and i1 %i.jx, %i.jz
  br i1 %or.cond.i.i194.4, label %validate_mix_level.exit202, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ka = load float, ptr getelementptr inbounds nuw (i8, ptr @ff_ac3_gain_levels, i64 20), align 4, !tbaa !225
  %i.kb = fpext nsz float %i.ka to double         ; 2 uses
  %i.kc = fadd nsz double %i.kb, 1.000000e-02
  %i.kd = fcmp nsz ogt double %i.kc, %i.iz
  %i.ke = fadd nsz double %i.kb, -1.000000e-02
  %i.kf = fcmp nsz olt double %i.ke, %i.iz
  %or.cond.i.i194.5 = and i1 %i.kd, %i.kf
  br i1 %or.cond.i.i194.5, label %validate_mix_level.exit202, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.kg = load float, ptr getelementptr inbounds nuw (i8, ptr @ff_ac3_gain_levels, i64 24), align 8, !tbaa !225
  %i.kh = fpext nsz float %i.kg to double         ; 2 uses
  %i.ki = fadd nsz double %i.kh, 1.000000e-02
  %i.kj = fcmp nsz ogt double %i.ki, %i.iz
  %i.kk = fadd nsz double %i.kh, -1.000000e-02
  %i.kl = fcmp nsz olt double %i.kk, %i.iz
  %or.cond.i.i194.6 = and i1 %i.kj, %i.kl
  br i1 %or.cond.i.i194.6, label %validate_mix_level.exit202, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.km = load float, ptr getelementptr inbounds nuw (i8, ptr @ff_ac3_gain_levels, i64 28), align 4, !tbaa !225
  %i.kn = fpext nsz float %i.km to double         ; 2 uses
  %i.ko = fadd nsz double %i.kn, 1.000000e-02
  %i.kp = fcmp nsz ogt double %i.ko, %i.iz
  %i.kq = fadd nsz double %i.kn, -1.000000e-02
  %i.kr = fcmp nsz olt double %i.kq, %i.iz
  %or.cond.i.i194.7 = and i1 %i.kp, %i.kr
  br i1 %or.cond.i.i194.7, label %validate_mix_level.exit202, label %.thread231

.thread231:                                       ; preds = %validate_mix_level.exit192, %bb.bx, %bb.by, %bb.cd
  %i.ks = fcmp nsz ult float %i.iy, 0.000000e+00
end_hunk_0
