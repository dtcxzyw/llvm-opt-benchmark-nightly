Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_superequalizer?download=true
inline.NumInlined: 12
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 21
begin_hunk_0_@config_output:bb.a
  store float f0x4682D012, ptr %i.cc, align 4, !tbaa !103
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 216
  store float %i.g, ptr %i.cd, align 8, !tbaa !104
  %i.ce = getelementptr inbounds nuw i8, ptr %i.c, i64 292
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !21
  %i.cg = getelementptr inbounds nuw i8, ptr %i.c, i64 220
  store float %i.cf, ptr %i.cg, align 4, !tbaa !102
  %i.ch = icmp sgt i32 %i.i, 0
  br i1 %i.ch, label %.lr.ph.i, label %process_param.exit.i..preheader.i_crit_edge

process_param.exit.i..preheader.i_crit_edge:      ; preds = %process_param.exit.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 376
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !30
  br label %.preheader.i

.lr.ph.i:                                         ; preds = %process_param.exit.i
  %.neg5.i = lshr i32 %i.i, 1                     ; 2 uses
  %i.ci = fdiv nsz float 1.000000e+00, %i.g       ; 4 uses
  %i.cj = fmul nnan nsz float %i.g, 5.000000e-01
  %i.ck = getelementptr inbounds nuw i8, ptr %i.c, i64 360
  %i.cl = add nsw i32 %i.i, -1                    ; 2 uses
  %i.cm = mul nuw nsw i32 %i.cl, %i.cl
  %i.cn = uitofp nsz nneg i32 %i.cm to float
  %i.co = getelementptr inbounds nuw i8, ptr %i.c, i64 364
  %i.cp = getelementptr inbounds nuw i8, ptr %i.c, i64 376
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !30 ; 2 uses
  %i.cr = zext nneg i32 %.neg5.i to i64
  %wide.trip.count.i = zext nneg i32 %i.i to i64
  br label %bb.b

.preheader.i:                                     ; preds = %win.exit.i, %process_param.exit.i..preheader.i_crit_edge
  %i.cs = phi ptr [ %.pre, %process_param.exit.i..preheader.i_crit_edge ], [ %i.cq, %win.exit.i ] ; 2 uses
  %.0.lcssa.i = phi i32 [ 0, %process_param.exit.i..preheader.i_crit_edge ], [ %i.i, %win.exit.i ] ; 3 uses
  %i.ct = icmp slt i32 %.0.lcssa.i, %i.k
  br i1 %i.ct, label %.lr.ph4.i, label %._crit_edge.i

.lr.ph4.i:                                        ; preds = %.preheader.i
  %i.cu = zext nneg i32 %.0.lcssa.i to i64
  %i.cv = shl nuw nsw i64 %i.cu, 2
  %scevgep.i = getelementptr nuw i8, ptr %i.cs, i64 %i.cv
  %i.cw = xor i32 %.0.lcssa.i, -1
  %i.cx = add nsw i32 %i.k, %i.cw
  %i.cy = zext i32 %i.cx to i64
  %i.cz = shl nuw nsw i64 %i.cy, 2
  %i.da = add nuw nsw i64 %i.cz, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, i8 0, i64 %i.da, i1 false), !tbaa !21
  br label %._crit_edge.i

bb.b:                                             ; preds = %win.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %win.exit.i ] ; 4 uses
  %i.db = load float, ptr %i.n, align 4, !tbaa !104 ; 2 uses
  %i.dc = fpext nsz float %i.db to double
  %i.dd = fmul nsz double %i.dc, f0x401921FB54442D18
  %i.de = fptrunc nsz double %i.dd to float
  %i.df = trunc i64 %indvars.iv.i to i32
  %i.dg = sub i32 %i.df, %.neg5.i
  %i.dh = sitofp nsz i32 %i.dg to float           ; 4 uses
  %i.di = fmul nsz float %i.dh, %i.de
  %i.dj = fmul nsz float %i.ci, %i.di             ; 3 uses
  %i.dk = fcmp nsz oeq float %i.dj, 0.000000e+00
  %i.dl = fmul nsz float %i.db, 2.000000e+00
  %i.dm = fmul nsz float %i.ci, %i.dl             ; 2 uses
  br i1 %i.dk, label %hn_lpf.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.dn = tail call nsz float @llvm.sin.f32(float %i.dj)
  %i.do = fmul nsz float %i.dm, %i.dn
  %i.dp = fdiv nsz float %i.do, %i.dj
  br label %hn_lpf.exit.i.i

hn_lpf.exit.i.i:                                  ; preds = %bb.c, %bb.b
  %.0.i.i.i = phi nsz float [ %i.dp, %bb.c ], [ %i.dm, %bb.b ] ; 2 uses
  %i.dq = load float, ptr %i.p, align 8, !tbaa !102
  %i.dr = fmul nsz float %.0.i.i.i, %i.dq
  br label %bb.d

bb.d:                                             ; preds = %hn_lpf.exit29.i.i, %hn_lpf.exit.i.i
  %indvars.iv.i29.i = phi i64 [ 1, %hn_lpf.exit.i.i ], [ %indvars.iv.next.i30.i, %hn_lpf.exit29.i.i ] ; 3 uses
  %.032.i.i = phi float [ %i.dr, %hn_lpf.exit.i.i ], [ %i.ek, %hn_lpf.exit29.i.i ] ; 2 uses
  %.02630.i.i = phi float [ %.0.i.i.i, %hn_lpf.exit.i.i ], [ %.0.i28.i.i, %hn_lpf.exit29.i.i ] ; 2 uses
  %i.ds = getelementptr inbounds nuw [12 x i8], ptr %i.d, i64 %indvars.iv.i29.i ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  %i.du = load float, ptr %i.dt, align 4, !tbaa !104 ; 3 uses
  %i.dv = fcmp nsz olt float %i.du, %i.cj
  br i1 %i.dv, label %bb.e, label %hn.exit.i

bb.e:                                             ; preds = %bb.d
  %i.dw = fpext nsz float %i.du to double
  %i.dx = fmul nsz double %i.dw, f0x401921FB54442D18
  %i.dy = fptrunc nsz double %i.dx to float
  %i.dz = fmul nsz float %i.dh, %i.dy
  %i.ea = fmul nsz float %i.ci, %i.dz             ; 3 uses
  %i.eb = fcmp nsz oeq float %i.ea, 0.000000e+00
  %i.ec = fmul nsz float %i.du, 2.000000e+00
  %i.ed = fmul nsz float %i.ci, %i.ec             ; 2 uses
  br i1 %i.eb, label %hn_lpf.exit29.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ee = tail call nsz float @llvm.sin.f32(float %i.ea)
  %i.ef = fmul nsz float %i.ed, %i.ee
  %i.eg = fdiv nsz float %i.ef, %i.ea
  br label %hn_lpf.exit29.i.i

hn_lpf.exit29.i.i:                                ; preds = %bb.f, %bb.e
  %.0.i28.i.i = phi nsz float [ %i.eg, %bb.f ], [ %i.ed, %bb.e ] ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !102
  %i.ej = fsub nsz float %.0.i28.i.i, %.02630.i.i
  %i.ek = tail call nsz float @llvm.fmuladd.f32(float %i.ei, float %i.ej, float %.032.i.i) ; 2 uses
  %indvars.iv.next.i30.i = add nuw nsw i64 %indvars.iv.i29.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i30.i, 18
  br i1 %exitcond.not.i.i, label %hn.exit.i, label %bb.d, !llvm.loop !96

hn.exit.i:                                        ; preds = %hn_lpf.exit29.i.i, %bb.d
  %.026.lcssa.i.i = phi float [ %.0.i28.i.i, %hn_lpf.exit29.i.i ], [ %.02630.i.i, %bb.d ]
  %.025.lcssa.i.i = phi i64 [ 18, %hn_lpf.exit29.i.i ], [ %indvars.iv.i29.i, %bb.d ]
  %.0.lcssa.i.i = phi float [ %i.ek, %hn_lpf.exit29.i.i ], [ %.032.i.i, %bb.d ]
  %i.el = getelementptr inbounds nuw [12 x i8], ptr %i.d, i64 %.025.lcssa.i.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load float, ptr %i.em, align 4, !tbaa !102
  %i.eo = icmp eq i64 %indvars.iv.i, %i.cr
  %i.ep = select nsz i1 %i.eo, float 1.000000e+00, float 0.000000e+00
  %i.eq = fsub nsz float %i.ep, %.026.lcssa.i.i
  %i.er = tail call nsz float @llvm.fmuladd.f32(float %i.en, float %i.eq, float %.0.lcssa.i.i)
  %i.es = load float, ptr %i.ck, align 8, !tbaa !26 ; 4 uses
  %i.et = fcmp nsz ugt float %i.es, 2.100000e+01
  br i1 %i.et, label %bb.g, label %win.exit.i

bb.g:                                             ; preds = %hn.exit.i
  %i.eu = fcmp nsz ugt float %i.es, 5.000000e+01
  br i1 %i.eu, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ev = fadd nsz float %i.es, -2.100000e+01     ; 2 uses
  %i.ew = fpext nsz float %i.ev to double
  %i.ex = tail call nsz double @llvm.pow.f64(double %i.ew, double f0x3FD99999A0000000)
  %i.ey = fmul nnan nsz float %i.ev, 7.886000e-02
  %i.ez = fpext nnan nsz float %i.ey to double
  %i.fa = tail call nsz double @llvm.fmuladd.f64(double %i.ex, double f0x3FE2B1C440000000, double %i.ez)
  %i.fb = fptrunc nsz double %i.fa to float
  br label %win.exit.i

bb.i:                                             ; preds = %bb.g
  %i.fc = fadd nsz float %i.es, f0xC10B3333
  %i.fd = fmul nsz float %i.fc, 1.102000e-01
  br label %win.exit.i

win.exit.i:                                       ; preds = %bb.i, %bb.h, %hn.exit.i
  %.0.i.i31.i = phi nsz float [ %i.fd, %bb.i ], [ %i.fb, %bb.h ], [ 0.000000e+00, %hn.exit.i ]
  %i.fe = fmul nnan nsz float %i.dh, 4.000000e+00
  %i.ff = fmul nsz float %i.fe, %i.dh
  %i.fg = fdiv nsz float %i.ff, %i.cn
  %i.fh = fsub nsz float 1.000000e+00, %i.fg
  %i.fi = tail call nsz float @llvm.sqrt.f32(float %i.fh)
  %i.fj = fmul nsz float %i.fi, %.0.i.i31.i
  %i.fk = tail call nsz fastcc float @izero(ptr noundef nonnull readonly %i.c, float noundef %i.fj)
  %i.fl = load float, ptr %i.co, align 4, !tbaa !33
  %i.fm = fdiv nsz float %i.fk, %i.fl
  %i.fn = fmul nsz float %i.er, %i.fm
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv.i
  store float %i.fn, ptr %i.fo, align 4, !tbaa !21
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader.i, label %bb.b, !llvm.loop !97

._crit_edge.i:                                    ; preds = %.lr.ph4.i, %.preheader.i
  %i.fp = getelementptr inbounds nuw i8, ptr %i.c, i64 440
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !46
  %i.fr = getelementptr inbounds nuw i8, ptr %i.c, i64 424
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !47
  %i.ft = getelementptr inbounds nuw i8, ptr %i.c, i64 368
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !28
  tail call void %i.fq(ptr noundef %i.fs, ptr noundef %i.fu, ptr noundef %i.cs, i64 noundef 4) #7, !inline_history !98
  br label %make_fir.exit

make_fir.exit:                                    ; preds = %bb.a, %._crit_edge.i
  ret i32 0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sin.f32(float) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc float @izero(ptr nofree noundef readonly captures(none) %0, float noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = fmul nsz float %1, 5.000000e-01          ; 2 uses
  %i.b = fpext nsz float %i.a to double           ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.d = load float, ptr %i.c, align 4, !tbaa !21
  %i.e = fdiv nsz float %i.a, %i.d                ; 2 uses
  %i.f = tail call nsz float @llvm.fmuladd.f32(float %i.e, float %i.e, float 1.000000e+00)
  %square = fmul nsz double %i.b, %i.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.h = tail call nsz double @llvm.pow.f64(double %i.b, double 3.000000e+00)
  %i.i = tail call nsz double @llvm.pow.f64(double %i.b, double 4.000000e+00)
  %i.j = tail call nsz double @llvm.pow.f64(double %i.b, double 5.000000e+00)
  %i.k = load <4 x float>, ptr %i.g, align 4, !tbaa !21
  %i.l = fpext nsz <4 x float> %i.k to <4 x double>
  %i.m = insertelement <4 x double> poison, double %i.i, i64 0
  %i.n = insertelement <4 x double> %i.m, double %i.j, i64 1
  %i.o = insertelement <4 x double> poison, double %square, i64 0
  %i.p = insertelement <4 x double> %i.o, double %i.h, i64 1
  %i.q = shufflevector <4 x double> %i.p, <4 x double> %i.n, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.r = fdiv nsz <4 x double> %i.q, %i.l         ; 4 uses
  %i.s = extractelement <4 x double> %i.r, i64 0
  %i.t = fptrunc nsz double %i.s to float         ; 2 uses
  %i.u = tail call nsz float @llvm.fmuladd.f32(float %i.t, float %i.t, float %i.f)
  %i.v = extractelement <4 x double> %i.r, i64 1
  %i.w = fptrunc nsz double %i.v to float         ; 2 uses
  %i.x = tail call nsz float @llvm.fmuladd.f32(float %i.w, float %i.w, float %i.u)
  %i.y = extractelement <4 x double> %i.r, i64 2
  %i.z = fptrunc nsz double %i.y to float         ; 2 uses
  %i.aa = tail call nsz float @llvm.fmuladd.f32(float %i.z, float %i.z, float %i.x)
  %i.ab = extractelement <4 x double> %i.r, i64 3
  %i.ac = fptrunc nsz double %i.ab to float       ; 2 uses
  %i.ad = tail call nsz float @llvm.fmuladd.f32(float %i.ac, float %i.ac, float %i.aa)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.af = tail call nsz double @llvm.pow.f64(double %i.b, double 6.000000e+00)
  %i.ag = tail call nsz double @llvm.pow.f64(double %i.b, double 7.000000e+00)
  %i.ah = tail call nsz double @llvm.pow.f64(double %i.b, double 8.000000e+00)
  %i.ai = tail call nsz double @llvm.pow.f64(double %i.b, double 9.000000e+00)
  %i.aj = load <4 x float>, ptr %i.ae, align 4, !tbaa !21
  %i.ak = fpext nsz <4 x float> %i.aj to <4 x double>
  %i.al = insertelement <4 x double> poison, double %i.af, i64 0
  %i.am = insertelement <4 x double> %i.al, double %i.ag, i64 1
  %i.an = insertelement <4 x double> %i.am, double %i.ah, i64 2
  %i.ao = insertelement <4 x double> %i.an, double %i.ai, i64 3
  %i.ap = fdiv nsz <4 x double> %i.ao, %i.ak      ; 4 uses
  %i.aq = extractelement <4 x double> %i.ap, i64 0
  %i.ar = fptrunc nsz double %i.aq to float       ; 2 uses
  %i.as = tail call nsz float @llvm.fmuladd.f32(float %i.ar, float %i.ar, float %i.ad)
  %i.at = extractelement <4 x double> %i.ap, i64 1
  %i.au = fptrunc nsz double %i.at to float       ; 2 uses
  %i.av = tail call nsz float @llvm.fmuladd.f32(float %i.au, float %i.au, float %i.as)
  %i.aw = extractelement <4 x double> %i.ap, i64 2
  %i.ax = fptrunc nsz double %i.aw to float       ; 2 uses
  %i.ay = tail call nsz float @llvm.fmuladd.f32(float %i.ax, float %i.ax, float %i.av)
  %i.az = extractelement <4 x double> %i.ap, i64 3
  %i.ba = fptrunc nsz double %i.az to float       ; 2 uses
  %i.bb = tail call nsz float @llvm.fmuladd.f32(float %i.ba, float %i.ba, float %i.ay)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.bd = tail call nsz double @llvm.pow.f64(double %i.b, double 1.000000e+01)
  %i.be = tail call nsz double @llvm.pow.f64(double %i.b, double 1.100000e+01)
  %i.bf = tail call nsz double @llvm.pow.f64(double %i.b, double 1.200000e+01)
  %i.bg = tail call nsz double @llvm.pow.f64(double %i.b, double 1.300000e+01)
  %i.bh = load <4 x float>, ptr %i.bc, align 4, !tbaa !21
  %i.bi = fpext nsz <4 x float> %i.bh to <4 x double>
  %i.bj = insertelement <4 x double> poison, double %i.bd, i64 0
  %i.bk = insertelement <4 x double> %i.bj, double %i.be, i64 1
  %i.bl = insertelement <4 x double> %i.bk, double %i.bf, i64 2
  %i.bm = insertelement <4 x double> %i.bl, double %i.bg, i64 3
  %i.bn = fdiv nsz <4 x double> %i.bm, %i.bi      ; 4 uses
  %i.bo = extractelement <4 x double> %i.bn, i64 0
  %i.bp = fptrunc nsz double %i.bo to float       ; 2 uses
  %i.bq = tail call nsz float @llvm.fmuladd.f32(float %i.bp, float %i.bp, float %i.bb)
  %i.br = extractelement <4 x double> %i.bn, i64 1
  %i.bs = fptrunc nsz double %i.br to float       ; 2 uses
  %i.bt = tail call nsz float @llvm.fmuladd.f32(float %i.bs, float %i.bs, float %i.bq)
  %i.bu = extractelement <4 x double> %i.bn, i64 2
  %i.bv = fptrunc nsz double %i.bu to float       ; 2 uses
  %i.bw = tail call nsz float @llvm.fmuladd.f32(float %i.bv, float %i.bv, float %i.bt)
  %i.bx = extractelement <4 x double> %i.bn, i64 3
  %i.by = fptrunc nsz double %i.bx to float       ; 2 uses
  %i.bz = tail call nsz float @llvm.fmuladd.f32(float %i.by, float %i.by, float %i.bw)
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.cb = tail call nsz double @llvm.pow.f64(double %i.b, double 1.400000e+01)
  %i.cc = tail call nsz double @llvm.pow.f64(double %i.b, double 1.500000e+01)
  %i.cd = load <2 x float>, ptr %i.ca, align 4, !tbaa !21
  %i.ce = fpext nsz <2 x float> %i.cd to <2 x double>
  %i.cf = insertelement <2 x double> poison, double %i.cb, i64 0
  %i.cg = insertelement <2 x double> %i.cf, double %i.cc, i64 1
  %i.ch = fdiv nsz <2 x double> %i.cg, %i.ce      ; 2 uses
  %i.ci = extractelement <2 x double> %i.ch, i64 0
  %i.cj = fptrunc nsz double %i.ci to float       ; 2 uses
  %i.ck = tail call nsz float @llvm.fmuladd.f32(float %i.cj, float %i.cj, float %i.bz)
  %i.cl = extractelement <2 x double> %i.ch, i64 1
  %i.cm = fptrunc nsz double %i.cl to float       ; 2 uses
  %i.cn = tail call nsz float @llvm.fmuladd.f32(float %i.cm, float %i.cm, float %i.ck)
  ret float %i.cn
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.pow.f64(double, double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

declare ptr @av_default_item_name(ptr noundef) #3

declare i32 @av_tx_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @av_frame_free(ptr noundef) local_unnamed_addr #3

declare void @av_freep(ptr noundef) local_unnamed_addr #3

declare void @av_tx_uninit(ptr noundef) local_unnamed_addr #3

declare i32 @ff_outlink_get_status(ptr noundef) local_unnamed_addr #3

declare void @ff_inlink_set_status(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ff_inlink_consume_samples(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_inlink_acknowledge_status(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_outlink_frame_wanted(ptr noundef) local_unnamed_addr #3

declare void @ff_inlink_request_frame(ptr noundef) local_unnamed_addr #3

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ff_avfilter_link_set_in_status(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #4

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

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
!20 = !{!"float", !5, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"p1 float", !9, i64 0}
!23 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!24 = !{!"p1 _ZTS11AVTXContext", !9, i64 0}
!25 = !{!"SuperEqualizerContext", !10, i64 0, !5, i64 8, !5, i64 224, !5, i64 296, !20, i64 360, !20, i64 364, !22, i64 368, !22, i64 376, !22, i64 384, !22, i64 392, !6, i64 400, !6, i64 404, !23, i64 408, !23, i64 416, !24, i64 424, !24, i64 432, !9, i64 440, !9, i64 448}
!26 = !{!25, !20, i64 360}
!27 = !{!6, !6, i64 0}
!28 = !{!25, !22, i64 368}
!29 = !{!25, !6, i64 404}
!30 = !{!25, !22, i64 376}
!31 = !{!25, !22, i64 384}
!32 = !{!25, !22, i64 392}
!33 = !{!25, !20, i64 364}
!34 = !{!25, !6, i64 400}
!35 = !{!"p1 _ZTS15AVFilterContext", !9, i64 0}
!36 = !{!"AVRational", !6, i64 0, !6, i64 4}
!37 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!38 = !{!"p2 _ZTS15AVFrameSideData", !14, i64 0}
!39 = !{!"p1 _ZTS15AVFilterFormats", !9, i64 0}
!40 = !{!"p1 _ZTS22AVFilterChannelLayouts", !9, i64 0}
!41 = !{!"AVFilterFormatsConfig", !39, i64 0, !39, i64 8, !40, i64 16, !39, i64 24, !39, i64 32, !39, i64 40}
!42 = !{!"AVFilterLink", !35, i64 0, !13, i64 8, !35, i64 16, !13, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !36, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !37, i64 72, !36, i64 96, !38, i64 104, !6, i64 112, !6, i64 116, !41, i64 120, !41, i64 168}
!43 = !{!42, !35, i64 16}
!44 = !{!25, !23, i64 416}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!25, !9, i64 440}
!47 = !{!25, !24, i64 424}
!48 = distinct !{!48, !45, !85, !86}
!49 = distinct !{!49, !87}
!50 = distinct !{!50, !45, !85}
!51 = distinct !{null}
!52 = distinct !{!52, i1 false, !"LVerDomain"}
!53 = distinct !{!53, !52}
!54 = distinct !{!54, !52}
!55 = distinct !{!55, !45, !85, !86}
!56 = distinct !{!56, !45, !85}
!57 = distinct !{!57, i1 false, !"LVerDomain"}
!58 = distinct !{!58, !57}
!59 = distinct !{!59, !57}
!60 = distinct !{!60, !45, !85, !86}
!61 = distinct !{!61, !45, !85, !86}
!62 = distinct !{!62, !87}
!63 = distinct !{!63, !45, !85}
!64 = distinct !{!64, !45, !85, !86}
!65 = distinct !{!65, !87}
!66 = distinct !{!66, !45, !85}
!67 = distinct !{!67, !45, !85, !86}
!68 = distinct !{!68, !45, !85}
!69 = distinct !{!69, !45, !86, !85}
!70 = distinct !{!70, !45}
!71 = !{!18, !15, i64 32}
!72 = !{!"p1 _ZTS12AVFilterLink", !9, i64 0}
!73 = !{!72, !72, i64 0}
!74 = !{!18, !15, i64 56}
!75 = !{!23, !23, i64 0}
!76 = !{!"p2 omnipotent char", !14, i64 0}
!77 = !{!"long", !5, i64 0}
!78 = !{!"p2 _ZTS11AVBufferRef", !14, i64 0}
!79 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!80 = !{!"AVFrame", !5, i64 0, !5, i64 64, !76, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !36, i64 124, !77, i64 136, !77, i64 144, !36, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !78, i64 248, !6, i64 256, !38, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !77, i64 304, !79, i64 312, !6, i64 320, !17, i64 328, !17, i64 336, !77, i64 344, !77, i64 352, !77, i64 360, !77, i64 368, !9, i64 376, !37, i64 384, !77, i64 408, !6, i64 416}
!81 = !{!80, !6, i64 112}
!82 = !{!80, !6, i64 388}
!83 = !{!80, !76, i64 96}
!84 = !{!12, !12, i64 0}
!85 = !{!"llvm.loop.isvectorized", i32 1}
!86 = !{!"llvm.loop.unroll.runtime.disable"}
!87 = !{!"llvm.loop.unroll.disable"}
!88 = !{!53}
!89 = !{!54}
!90 = !{!25, !9, i64 448}
!91 = !{!25, !24, i64 432}
!92 = !{!58}
!93 = !{!59}
!94 = !{!80, !77, i64 136}
!95 = !{!77, !77, i64 0}
!96 = distinct !{!96, !45}
!97 = distinct !{!97, !45}
!98 = distinct !{null}
!99 = !{!42, !35, i64 0}
!100 = !{!42, !6, i64 64}
!101 = !{!"EqParameter", !20, i64 0, !20, i64 4, !20, i64 8}
!102 = !{!101, !20, i64 8}
!103 = !{!101, !20, i64 0}
!104 = !{!101, !20, i64 4}
end_hunk_0
