Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_afftdn?download=true
inline.NumInlined: 43
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 54
begin_hunk_0_@activate:bb.a
  br i1 %.not202.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.critedge206.i
  call void @av_frame_free(ptr noundef nonnull %i.a) #14
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.critedge206.i
  %i.anm = call i32 @ff_filter_frame(ptr noundef %i.y, ptr noundef %i.afg) #14
  br label %output_frame.exit

output_frame.exit:                                ; preds = %bb.ah, %.critedge204.i, %bb.aq
  %.3.i = phi i32 [ %i.anm, %bb.aq ], [ -558323010, %.critedge204.i ], [ -12, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.aw

bb.ar:                                            ; preds = %bb.c
  %i.ann = call i32 @ff_inlink_queued_samples(ptr noundef %i.i) #14
  %i.ano = load i32, ptr %i.p, align 4, !tbaa !42
  %.not30 = icmp slt i32 %i.ann, %i.ano
  br i1 %.not30, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @ff_filter_set_ready(ptr noundef nonnull %0, i32 noundef 10) #14
  br label %bb.aw

bb.at:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  %i.anp = call i32 @ff_inlink_acknowledge_status(ptr noundef %i.i, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #14
  %.not31 = icmp eq i32 %i.anp, 0
  br i1 %.not31, label %.critedge34, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.anq = load i32, ptr %i.e, align 4, !tbaa !76
  %i.anr = load i64, ptr %i.f, align 8, !tbaa !82
  call void @ff_avfilter_link_set_in_status(ptr noundef %i.l, i32 noundef %i.anq, i64 noundef %i.anr) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  br label %bb.aw

.critedge34:                                      ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  %i.ans = call i32 @ff_outlink_frame_wanted(ptr noundef %i.l) #14
  %.not32 = icmp eq i32 %i.ans, 0
  br i1 %.not32, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %.critedge34
  call void @ff_inlink_request_frame(ptr noundef %i.i) #14
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.b, %.critedge34, %.critedge, %bb.av, %bb.as, %output_frame.exit
  %.2 = phi i32 [ 0, %bb.b ], [ %.3.i, %output_frame.exit ], [ 0, %bb.as ], [ 0, %bb.av ], [ %i.r, %.critedge ], [ 0, %bb.au ], [ -1497649742, %.critedge34 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @config_input(ptr noundef %0) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca [15 x double], align 16           ; 6 uses
  %i.c = alloca float, align 4                    ; 9 uses
  %i.d = alloca double, align 8                   ; 4 uses
  %i.e = alloca float, align 4                    ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !51   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 72 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19   ; 206 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  store double 1.000000e+00, ptr %i.d, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  store float 1.000000e+00, ptr %i.e, align 4, !tbaa !71
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.k = load i32, ptr %i.j, align 4, !tbaa !175  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 %i.k, ptr %i.l, align 8, !tbaa !66
  switch i32 %i.k, label %bb.c [
    i32 8, label %.sink.split
    i32 9, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %.sink.split

.sink.split:                                      ; preds = %bb.a, %bb.b
  %.0407.ph = phi i32 [ 7, %bb.b ], [ 6, %bb.a ]
  %.0406.ph = phi ptr [ %i.d, %bb.b ], [ %i.e, %bb.a ]
  %i.m = phi <2 x i64> [ <i64 8, i64 16>, %bb.b ], [ <i64 4, i64 8>, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store <2 x i64> %i.m, ptr %i.n, align 8, !tbaa !82
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.a
  %.0407 = phi i32 [ undef, %bb.a ], [ %.0407.ph, %.sink.split ] ; 2 uses
  %.0406 = phi ptr [ undef, %bb.a ], [ %.0406.ph, %.sink.split ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 6 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !54
  %i.q = sext i32 %i.p to i64
  %i.r = tail call noalias ptr @av_calloc(i64 noundef %i.q, i64 noundef 1072) #14 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 232 ; 4 uses
  store ptr %i.r, ptr %i.s, align 8, !tbaa !28
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %.thread.thread, label %ff_clz_c.exit

ff_clz_c.exit:                                    ; preds = %bb.c
  %i.t = load i32, ptr %i.o, align 4, !tbaa !54
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 92
  store i32 %i.t, ptr %i.u, align 4, !tbaa !29
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.w = load i32, ptr %i.v, align 8, !tbaa !176
  %i.x = sitofp nsz i32 %i.w to float             ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 108 ; 4 uses
  store float %i.x, ptr %i.y, align 4, !tbaa !83
  %i.z = fdiv nsz float %i.x, 8.000000e+01
  %i.aa = fptosi float %i.z to i32                ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 132 ; 2 uses
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !42
  %i.ac = mul i32 %i.aa, 3                        ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 128 ; 4 uses
  store i32 %i.ac, ptr %i.ad, align 8, !tbaa !52
  %i.ae = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ac, i1 false)
  %i.af = sub nuw nsw i32 32, %i.ae               ; 2 uses
  %i.ag = shl nuw i32 1, %i.af                    ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 120 ; 8 uses
  store i32 %i.ag, ptr %i.ah, align 8, !tbaa !72
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 116 ; 4 uses
  store i32 %i.ag, ptr %i.ai, align 4, !tbaa !84
  %i.aj = shl i32 2, %i.af
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 112 ; 3 uses
  store i32 %i.aj, ptr %i.ak, align 8, !tbaa !177
  %i.al = sdiv i32 %i.ag, 2
  %i.am = add nsw i32 %i.al, 1
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 124 ; 14 uses
  store i32 %i.am, ptr %i.an, align 4, !tbaa !85
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 140 ; 7 uses
  store i32 80, ptr %i.ao, align 4, !tbaa !76
  br label %bb.d

.preheader508:                                    ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 344 ; 6 uses
  br label %.preheader507

bb.d:                                             ; preds = %ff_clz_c.exit, %bb.k
  %store_forwarded = phi i32 [ 80, %ff_clz_c.exit ], [ %.sink843, %bb.k ]
  %indvars.iv = phi i64 [ 1, %ff_clz_c.exit ], [ %indvars.iv.next, %bb.k ] ; 2 uses
  %i.aq = getelementptr [4 x i8], ptr %i.ao, i64 %indvars.iv
  %i.ar = sitofp nsz i32 %store_forwarded to double
  %i.as = tail call nsz double @llvm.fmuladd.f64(double %i.ar, double 1.500000e+00, double 5.000000e+00)
  %i.at = tail call i64 @llvm.lrint.i64.f64(double %i.as)
  %i.au = trunc i64 %i.at to i32                  ; 8 uses
  %i.av = icmp slt i32 %i.au, 1000
  br i1 %i.av, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aw = srem i32 %i.au, 10
  %i.ax = sub i32 %i.au, %i.aw
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.ay = icmp samesign ult i32 %i.au, 5000
  br i1 %i.ay, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.az = add nuw nsw i32 %i.au, 20               ; 2 uses
  %.lhs.trunc = trunc nuw i32 %i.az to i16
  %i.ba = urem i16 %.lhs.trunc, 50
  %.zext = zext nneg i16 %i.ba to i32
  %i.bb = sub nsw i32 %i.az, %.zext
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.bc = icmp samesign ult i32 %i.au, 15000
  br i1 %i.bc, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bd = add nuw nsw i32 %i.au, 45               ; 2 uses
  %.lhs.trunc487 = trunc nuw i32 %i.bd to i16
  %i.be = urem i16 %.lhs.trunc487, 100
  %.zext488 = zext nneg i16 %i.be to i32
  %i.bf = sub nsw i32 %i.bd, %.zext488
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bg = add nuw i32 %i.au, 495                  ; 2 uses
  %i.bh = urem i32 %i.bg, 1000
  %i.bi = sub i32 %i.bg, %i.bh
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.i, %bb.j, %bb.g
  %.sink843 = phi i32 [ %i.ax, %bb.e ], [ %i.bf, %bb.i ], [ %i.bi, %bb.j ], [ %i.bb, %bb.g ] ; 2 uses
  store i32 %.sink843, ptr %i.aq, align 4, !tbaa !76
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 15
  br i1 %exitcond.not, label %.preheader508, label %bb.d, !llvm.loop !148

.preheader507:                                    ; preds = %.preheader508, %.preheader507
  %indvars.iv665 = phi i64 [ 0, %.preheader508 ], [ %i.cn, %.preheader507 ] ; 10 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv665
  %i.bk = trunc nuw nsw i64 %indvars.iv665 to i32 ; 2 uses
  %i.bl = uitofp nsz nneg i32 %i.bk to double     ; 13 uses
  %i.bm = tail call nsz double @llvm.pow.f64(double 0.000000e+00, double %i.bl)
  %i.bn = fadd nsz double %i.bm, 1.000000e+00
  %exp2 = tail call nsz double @llvm.exp2.f64(double %i.bl)
  %i.bo = fadd nsz double %exp2, %i.bn
  %i.bp = tail call nsz double @llvm.pow.f64(double 3.000000e+00, double %i.bl)
  %i.bq = fadd nsz double %i.bp, %i.bo
  %1 = shl nuw i32 %i.bk, 1
  %mul = uitofp i32 %1 to double
  %exp2798 = tail call nsz double @llvm.exp2.f64(double %mul)
  %i.br = fadd nsz double %exp2798, %i.bq
  %i.bs = tail call nsz double @llvm.pow.f64(double 5.000000e+00, double %i.bl)
  %i.bt = fadd nsz double %i.bs, %i.br
  %i.bu = tail call nsz double @llvm.pow.f64(double 6.000000e+00, double %i.bl)
  %i.bv = fadd nsz double %i.bu, %i.bt
  %i.bw = tail call nsz double @llvm.pow.f64(double 7.000000e+00, double %i.bl)
  %i.bx = fadd nsz double %i.bw, %i.bv
  %mul799 = fmul nnan nsz double %i.bl, 3.000000e+00
  %exp2800 = tail call nsz double @llvm.exp2.f64(double %mul799)
  %i.by = fadd nsz double %exp2800, %i.bx
  %i.bz = tail call nsz double @llvm.pow.f64(double 9.000000e+00, double %i.bl)
  %i.ca = fadd nsz double %i.bz, %i.by
  %i.cb = tail call nsz double @llvm.pow.f64(double 1.000000e+01, double %i.bl)
  %i.cc = fadd nsz double %i.cb, %i.ca
  %i.cd = tail call nsz double @llvm.pow.f64(double 1.100000e+01, double %i.bl)
  %i.ce = fadd nsz double %i.cd, %i.cc
  %i.cf = tail call nsz double @llvm.pow.f64(double 1.200000e+01, double %i.bl)
  %i.cg = fadd nsz double %i.cf, %i.ce
  %i.ch = tail call nsz double @llvm.pow.f64(double 1.300000e+01, double %i.bl)
  %i.ci = fadd nsz double %i.ch, %i.cg
  %i.cj = tail call nsz double @llvm.pow.f64(double 1.400000e+01, double %i.bl)
  %i.ck = fadd nsz double %i.cj, %i.ci
  store double %i.ck, ptr %i.bj, align 8, !tbaa !68
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv665
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  %i.cn = add nuw nsw i64 %indvars.iv665, 1       ; 3 uses
  %i.co = trunc nuw nsw i64 %i.cn to i32          ; 2 uses
  %i.cp = uitofp nsz nneg i32 %i.co to double     ; 13 uses
  %i.cq = tail call nsz double @llvm.pow.f64(double 0.000000e+00, double %i.cp)
  %i.cr = fadd nsz double %i.cq, 1.000000e+00
  %exp2802 = tail call nsz double @llvm.exp2.f64(double %i.cp)
  %i.cs = fadd nsz double %exp2802, %i.cr
  %i.ct = tail call nsz double @llvm.pow.f64(double 3.000000e+00, double %i.cp)
  %i.cu = fadd nsz double %i.ct, %i.cs
  %2 = shl nuw i32 %i.co, 1
  %mul803 = uitofp i32 %2 to double
  %exp2804 = tail call nsz double @llvm.exp2.f64(double %mul803)
  %i.cv = fadd nsz double %exp2804, %i.cu
  %i.cw = tail call nsz double @llvm.pow.f64(double 5.000000e+00, double %i.cp)
  %i.cx = fadd nsz double %i.cw, %i.cv
  %i.cy = tail call nsz double @llvm.pow.f64(double 6.000000e+00, double %i.cp)
  %i.cz = fadd nsz double %i.cy, %i.cx
  %i.da = tail call nsz double @llvm.pow.f64(double 7.000000e+00, double %i.cp)
  %i.db = fadd nsz double %i.da, %i.cz
  %mul805 = fmul nnan nsz double %i.cp, 3.000000e+00
  %exp2806 = tail call nsz double @llvm.exp2.f64(double %mul805)
  %i.dc = fadd nsz double %exp2806, %i.db
  %i.dd = tail call nsz double @llvm.pow.f64(double 9.000000e+00, double %i.cp)
  %i.de = fadd nsz double %i.dd, %i.dc
  %i.df = tail call nsz double @llvm.pow.f64(double 1.000000e+01, double %i.cp)
  %i.dg = fadd nsz double %i.df, %i.de
  %i.dh = tail call nsz double @llvm.pow.f64(double 1.100000e+01, double %i.cp)
  %i.di = fadd nsz double %i.dh, %i.dg
  %i.dj = tail call nsz double @llvm.pow.f64(double 1.200000e+01, double %i.cp)
  %i.dk = fadd nsz double %i.dj, %i.di
  %i.dl = tail call nsz double @llvm.pow.f64(double 1.300000e+01, double %i.cp)
  %i.dm = fadd nsz double %i.dl, %i.dk
  %i.dn = tail call nsz double @llvm.pow.f64(double 1.400000e+01, double %i.cp)
  %i.do = fadd nsz double %i.dn, %i.dm
  store double %i.do, ptr %i.cm, align 8, !tbaa !68
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv665
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 80
  %i.dr = trunc i64 %indvars.iv665 to i32
  %i.ds = add i32 %i.dr, 2
  %i.dt = uitofp nsz nneg i32 %i.ds to double     ; 14 uses
  %i.du = tail call nsz double @llvm.pow.f64(double 0.000000e+00, double %i.dt)
  %i.dv = fadd nsz double %i.du, 1.000000e+00
  %exp2808 = tail call nsz double @llvm.exp2.f64(double %i.dt)
  %i.dw = fadd nsz double %exp2808, %i.dv
  %i.dx = tail call nsz double @llvm.pow.f64(double 3.000000e+00, double %i.dt)
  %i.dy = fadd nsz double %i.dx, %i.dw
  %mul809 = fmul nnan nsz double %i.dt, 2.000000e+00
  %exp2810 = tail call nsz double @llvm.exp2.f64(double %mul809)
  %i.dz = fadd nsz double %exp2810, %i.dy
  %i.ea = tail call nsz double @llvm.pow.f64(double 5.000000e+00, double %i.dt)
  %i.eb = fadd nsz double %i.ea, %i.dz
  %i.ec = tail call nsz double @llvm.pow.f64(double 6.000000e+00, double %i.dt)
  %i.ed = fadd nsz double %i.ec, %i.eb
  %i.ee = tail call nsz double @llvm.pow.f64(double 7.000000e+00, double %i.dt)
  %i.ef = fadd nsz double %i.ee, %i.ed
  %mul811 = fmul nnan nsz double %i.dt, 3.000000e+00
  %exp2812 = tail call nsz double @llvm.exp2.f64(double %mul811)
  %i.eg = fadd nsz double %exp2812, %i.ef
  %i.eh = tail call nsz double @llvm.pow.f64(double 9.000000e+00, double %i.dt)
  %i.ei = fadd nsz double %i.eh, %i.eg
  %i.ej = tail call nsz double @llvm.pow.f64(double 1.000000e+01, double %i.dt)
  %i.ek = fadd nsz double %i.ej, %i.ei
  %i.el = tail call nsz double @llvm.pow.f64(double 1.100000e+01, double %i.dt)
  %i.em = fadd nsz double %i.el, %i.ek
  %i.en = tail call nsz double @llvm.pow.f64(double 1.200000e+01, double %i.dt)
  %i.eo = fadd nsz double %i.en, %i.em
  %i.ep = tail call nsz double @llvm.pow.f64(double 1.300000e+01, double %i.dt)
  %i.eq = fadd nsz double %i.ep, %i.eo
  %i.er = tail call nsz double @llvm.pow.f64(double 1.400000e+01, double %i.dt)
  %i.es = fadd nsz double %i.er, %i.eq
  store double %i.es, ptr %i.dq, align 8, !tbaa !68
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv665
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 120
  %i.ev = trunc i64 %indvars.iv665 to i32
  %i.ew = add i32 %i.ev, 3
  %i.ex = uitofp nsz nneg i32 %i.ew to double     ; 14 uses
  %i.ey = tail call nsz double @llvm.pow.f64(double 0.000000e+00, double %i.ex)
  %i.ez = fadd nsz double %i.ey, 1.000000e+00
  %exp2814 = tail call nsz double @llvm.exp2.f64(double %i.ex)
  %i.fa = fadd nsz double %exp2814, %i.ez
  %i.fb = tail call nsz double @llvm.pow.f64(double 3.000000e+00, double %i.ex)
  %i.fc = fadd nsz double %i.fb, %i.fa
  %mul815 = fmul nnan nsz double %i.ex, 2.000000e+00
  %exp2816 = tail call nsz double @llvm.exp2.f64(double %mul815)
  %i.fd = fadd nsz double %exp2816, %i.fc
  %i.fe = tail call nsz double @llvm.pow.f64(double 5.000000e+00, double %i.ex)
  %i.ff = fadd nsz double %i.fe, %i.fd
  %i.fg = tail call nsz double @llvm.pow.f64(double 6.000000e+00, double %i.ex)
  %i.fh = fadd nsz double %i.fg, %i.ff
  %i.fi = tail call nsz double @llvm.pow.f64(double 7.000000e+00, double %i.ex)
  %i.fj = fadd nsz double %i.fi, %i.fh
  %mul817 = fmul nnan nsz double %i.ex, 3.000000e+00
  %exp2818 = tail call nsz double @llvm.exp2.f64(double %mul817)
  %i.fk = fadd nsz double %exp2818, %i.fj
  %i.fl = tail call nsz double @llvm.pow.f64(double 9.000000e+00, double %i.ex)
  %i.fm = fadd nsz double %i.fl, %i.fk
  %i.fn = tail call nsz double @llvm.pow.f64(double 1.000000e+01, double %i.ex)
  %i.fo = fadd nsz double %i.fn, %i.fm
  %i.fp = tail call nsz double @llvm.pow.f64(double 1.100000e+01, double %i.ex)
  %i.fq = fadd nsz double %i.fp, %i.fo
  %i.fr = tail call nsz double @llvm.pow.f64(double 1.200000e+01, double %i.ex)
  %i.fs = fadd nsz double %i.fr, %i.fq
  %i.ft = tail call nsz double @llvm.pow.f64(double 1.300000e+01, double %i.ex)
  %i.fu = fadd nsz double %i.ft, %i.fs
  %i.fv = tail call nsz double @llvm.pow.f64(double 1.400000e+01, double %i.ex)
  %i.fw = fadd nsz double %i.fv, %i.fu
  store double %i.fw, ptr %i.eu, align 8, !tbaa !68
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv665
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 160
  %i.fz = trunc i64 %indvars.iv665 to i32
  %i.ga = add i32 %i.fz, 4
  %i.gb = uitofp nsz nneg i32 %i.ga to double     ; 14 uses
  %i.gc = tail call nsz double @llvm.pow.f64(double 0.000000e+00, double %i.gb)
  %i.gd = fadd nsz double %i.gc, 1.000000e+00
  %exp2820 = tail call nsz double @llvm.exp2.f64(double %i.gb)
  %i.ge = fadd nsz double %exp2820, %i.gd
  %i.gf = tail call nsz double @llvm.pow.f64(double 3.000000e+00, double %i.gb)
  %i.gg = fadd nsz double %i.gf, %i.ge
  %mul821 = fmul nnan nsz double %i.gb, 2.000000e+00
  %exp2822 = tail call nsz double @llvm.exp2.f64(double %mul821)
  %i.gh = fadd nsz double %exp2822, %i.gg
  %i.gi = tail call nsz double @llvm.pow.f64(double 5.000000e+00, double %i.gb)
  %i.gj = fadd nsz double %i.gi, %i.gh
  %i.gk = tail call nsz double @llvm.pow.f64(double 6.000000e+00, double %i.gb)
  %i.gl = fadd nsz double %i.gk, %i.gj
  %i.gm = tail call nsz double @llvm.pow.f64(double 7.000000e+00, double %i.gb)
  %i.gn = fadd nsz double %i.gm, %i.gl
  %mul823 = fmul nnan nsz double %i.gb, 3.000000e+00
  %exp2824 = tail call nsz double @llvm.exp2.f64(double %mul823)
  %i.go = fadd nsz double %exp2824, %i.gn
  %i.gp = tail call nsz double @llvm.pow.f64(double 9.000000e+00, double %i.gb)
  %i.gq = fadd nsz double %i.gp, %i.go
  %i.gr = tail call nsz double @llvm.pow.f64(double 1.000000e+01, double %i.gb)
  %i.gs = fadd nsz double %i.gr, %i.gq
  %i.gt = tail call nsz double @llvm.pow.f64(double 1.100000e+01, double %i.gb)
  %i.gu = fadd nsz double %i.gt, %i.gs
  %i.gv = tail call nsz double @llvm.pow.f64(double 1.200000e+01, double %i.gb)
  %i.gw = fadd nsz double %i.gv, %i.gu
  %i.gx = tail call nsz double @llvm.pow.f64(double 1.300000e+01, double %i.gb)
  %i.gy = fadd nsz double %i.gx, %i.gw
  %i.gz = tail call nsz double @llvm.pow.f64(double 1.400000e+01, double %i.gb)
  %i.ha = fadd nsz double %i.gz, %i.gy
  store double %i.ha, ptr %i.fy, align 8, !tbaa !68
  %exitcond668.not = icmp eq i64 %i.cn, 5
  br i1 %exitcond668.not, label %.preheader506, label %.preheader507, !llvm.loop !149

.preheader506:                                    ; preds = %.preheader507
  %i.hb = getelementptr inbounds nuw i8, ptr %i.i, i64 384
  %i.hc = getelementptr inbounds nuw i8, ptr %i.i, i64 352 ; 2 uses
  %i.hd = load double, ptr %i.ap, align 8, !tbaa !68
  %i.he = load double, ptr %i.hb, align 8, !tbaa !68
  %i.hf = getelementptr inbounds nuw i8, ptr %i.i, i64 392 ; 2 uses
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !68
  %i.hh = getelementptr inbounds nuw i8, ptr %i.i, i64 424
  %i.hi = getelementptr inbounds nuw i8, ptr %i.i, i64 432
  %i.hj = getelementptr inbounds nuw i8, ptr %i.i, i64 464
  %i.hk = getelementptr inbounds nuw i8, ptr %i.i, i64 472
  %i.hl = getelementptr inbounds nuw i8, ptr %i.i, i64 504
  %i.hm = getelementptr inbounds nuw i8, ptr %i.i, i64 512
  %i.hn = load <2 x double>, ptr %i.hc, align 8, !tbaa !68
  %i.ho = insertelement <2 x double> poison, double %i.hd, i64 0
  %i.hp = shufflevector <2 x double> %i.ho, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hq = fdiv nsz <2 x double> %i.hn, %i.hp      ; 3 uses
  store <2 x double> %i.hq, ptr %i.hc, align 8, !tbaa !68
  %i.hr = getelementptr inbounds nuw i8, ptr %i.i, i64 400 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.i, i64 440 ; 2 uses
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !68
  %i.hu = getelementptr inbounds nuw i8, ptr %i.i, i64 480 ; 2 uses
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !68
  %i.hw = getelementptr inbounds nuw i8, ptr %i.i, i64 520 ; 2 uses
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !68
  %i.hy = getelementptr inbounds nuw i8, ptr %i.i, i64 368 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.i, i64 448 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.i, i64 488 ; 2 uses
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !68
  %i.ic = getelementptr inbounds nuw i8, ptr %i.i, i64 528 ; 2 uses
  %i.id = load double, ptr %i.ic, align 8, !tbaa !68
  %i.ie = load <2 x double>, ptr %i.hy, align 8, !tbaa !68
  %i.if = fdiv nsz <2 x double> %i.ie, %i.hp      ; 3 uses
  store <2 x double> %i.if, ptr %i.hy, align 8, !tbaa !68
  %i.ig = getelementptr inbounds nuw i8, ptr %i.i, i64 416 ; 2 uses
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !68
  %i.ii = getelementptr inbounds nuw i8, ptr %i.i, i64 496 ; 2 uses
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !68
  %i.ik = getelementptr inbounds nuw i8, ptr %i.i, i64 536 ; 2 uses
  %i.il = load double, ptr %i.ik, align 8, !tbaa !68
  %i.im = shufflevector <2 x double> %i.hq, <2 x double> %i.if, <2 x i32> <i32 1, i32 2>
  %i.in = fneg nsz <2 x double> %i.im             ; 5 uses
  %i.io = load <2 x double>, ptr %i.hr, align 8, !tbaa !68
  %i.ip = insertelement <2 x double> poison, double %i.he, i64 0
  %i.iq = shufflevector <2 x double> %i.ip, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ir = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.in, <2 x double> %i.iq, <2 x double> %i.io)
  %i.is = insertelement <2 x double> poison, double %i.hx, i64 0
  %i.it = insertelement <2 x double> %i.is, double %i.ib, i64 1
  %i.iu = shufflevector <2 x double> %i.if, <2 x double> %i.hq, <2 x i32> <i32 1, i32 2>
  %i.iv = fneg nsz <2 x double> %i.iu             ; 6 uses
  %i.iw = insertelement <2 x double> poison, double %i.ih, i64 0
  %i.ix = insertelement <2 x double> %i.iw, double %i.hg, i64 1
  %i.iy = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iv, <2 x double> %i.iq, <2 x double> %i.ix) ; 3 uses
  %i.iz = extractelement <2 x double> %i.iy, i64 1 ; 2 uses
  store double %i.iz, ptr %i.hf, align 8, !tbaa !68
  %i.ja = load <2 x double>, ptr %i.hh, align 8, !tbaa !68 ; 4 uses
  %i.jb = shufflevector <2 x double> %i.in, <2 x double> %i.iv, <2 x i32> <i32 1, i32 3>
  %i.jc = shufflevector <2 x double> %i.ja, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jd = insertelement <2 x double> %i.ja, double %i.id, i64 0
  %i.je = load <2 x double>, ptr %i.hj, align 8, !tbaa !68 ; 5 uses
  %i.jf = load <2 x double>, ptr %i.hl, align 8, !tbaa !68 ; 5 uses
  %i.jg = extractelement <2 x double> %i.je, i64 0
  %i.jh = shufflevector <2 x double> %i.je, <2 x double> %i.jf, <2 x i32> <i32 2, i32 0>
  %i.ji = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.in, <2 x double> %i.jh, <2 x double> %i.it) ; 2 uses
  %i.jj = shufflevector <2 x double> %i.jf, <2 x double> %i.ja, <2 x i32> <i32 0, i32 2>
end_hunk_0
