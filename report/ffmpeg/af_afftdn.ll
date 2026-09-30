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
  %i.ank = call i32 @ff_filter_frame(ptr noundef %i.y, ptr noundef %i.afe) #14
  br label %output_frame.exit

output_frame.exit:                                ; preds = %bb.ah, %.critedge204.i, %bb.aq
  %.3.i = phi i32 [ %i.ank, %bb.aq ], [ -558323010, %.critedge204.i ], [ -12, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.aw

bb.ar:                                            ; preds = %bb.c
  %i.anl = call i32 @ff_inlink_queued_samples(ptr noundef %i.i) #14
  %i.anm = load i32, ptr %i.p, align 4, !tbaa !42
  %.not30 = icmp slt i32 %i.anl, %i.anm
  br i1 %.not30, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @ff_filter_set_ready(ptr noundef nonnull %0, i32 noundef 10) #14
  br label %bb.aw

bb.at:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  %i.ann = call i32 @ff_inlink_acknowledge_status(ptr noundef %i.i, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #14
  %.not31 = icmp eq i32 %i.ann, 0
  br i1 %.not31, label %.critedge34, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ano = load i32, ptr %i.e, align 4, !tbaa !76
  %i.anp = load i64, ptr %i.f, align 8, !tbaa !82
  call void @ff_avfilter_link_set_in_status(ptr noundef %i.l, i32 noundef %i.ano, i64 noundef %i.anp) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  br label %bb.aw

.critedge34:                                      ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  %i.anq = call i32 @ff_outlink_frame_wanted(ptr noundef %i.l) #14
  %.not32 = icmp eq i32 %i.anq, 0
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
  %1 = tail call i32 @llvm.umin.i32(i32 %i.bk, i32 1024)
  %exp2 = tail call nsz double @llvm.ldexp.f64.i32(double 1.000000e+00, i32 %1)
  %i.bo = fadd nsz double %exp2, %i.bn
  %i.bp = tail call nsz double @llvm.pow.f64(double 3.000000e+00, double %i.bl)
  %i.bq = fadd nsz double %i.bp, %i.bo
  %mul = fmul nnan nsz double %i.bl, 2.000000e+00
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
  %2 = tail call i32 @llvm.umin.i32(i32 %i.co, i32 1024)
  %exp2802 = tail call nsz double @llvm.ldexp.f64.i32(double 1.000000e+00, i32 %2)
  %i.cs = fadd nsz double %exp2802, %i.cr
  %i.ct = tail call nsz double @llvm.pow.f64(double 3.000000e+00, double %i.cp)
  %i.cu = fadd nsz double %i.ct, %i.cs
  %mul803 = fmul nnan nsz double %i.cp, 2.000000e+00
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
  %i.ds = add i32 %i.dr, 2                        ; 2 uses
  %i.dt = uitofp nsz nneg i32 %i.ds to double     ; 13 uses
  %i.du = tail call nsz double @llvm.pow.f64(double 0.000000e+00, double %i.dt)
  %i.dv = fadd nsz double %i.du, 1.000000e+00
  %3 = tail call i32 @llvm.umin.i32(i32 %i.ds, i32 1024)
  %exp2808 = tail call nsz double @llvm.ldexp.f64.i32(double 1.000000e+00, i32 %3)
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
  %i.ew = add i32 %i.ev, 3                        ; 2 uses
  %i.ex = uitofp nsz nneg i32 %i.ew to double     ; 13 uses
  %i.ey = tail call nsz double @llvm.pow.f64(double 0.000000e+00, double %i.ex)
  %i.ez = fadd nsz double %i.ey, 1.000000e+00
  %4 = tail call i32 @llvm.umin.i32(i32 %i.ew, i32 1024)
  %exp2814 = tail call nsz double @llvm.ldexp.f64.i32(double 1.000000e+00, i32 %4)
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
  %i.ga = add i32 %i.fz, 4                        ; 2 uses
  %i.gb = uitofp nsz nneg i32 %i.ga to double     ; 13 uses
  %i.gc = tail call nsz double @llvm.pow.f64(double 0.000000e+00, double %i.gb)
  %i.gd = fadd nsz double %i.gc, 1.000000e+00
  %5 = tail call i32 @llvm.umin.i32(i32 %i.ga, i32 1024)
  %exp2820 = tail call nsz double @llvm.ldexp.f64.i32(double 1.000000e+00, i32 %5)
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
  %i.jk = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jb, <2 x double> %i.jj, <2 x double> %i.jd) ; 4 uses
  %i.jl = extractelement <2 x double> %i.jk, i64 1
  store double %i.jl, ptr %i.hi, align 8, !tbaa !68
  %i.jm = shufflevector <2 x double> %i.iv, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.jn = shufflevector <2 x double> %i.je, <2 x double> %i.jf, <2 x i32> <i32 0, i32 2>
  %i.jo = shufflevector <2 x double> %i.je, <2 x double> %i.jf, <2 x i32> <i32 1, i32 3>
  %i.jp = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jm, <2 x double> %i.jn, <2 x double> %i.jo) ; 6 uses
  %i.jq = shufflevector <2 x double> %i.jp, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.jr = extractelement <2 x double> %i.jp, i64 0
  store double %i.jr, ptr %i.hk, align 8, !tbaa !68
  %i.js = extractelement <2 x double> %i.jp, i64 1 ; 2 uses
  store double %i.js, ptr %i.hm, align 8, !tbaa !68
  %i.jt = shufflevector <2 x double> %i.iy, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ju = fdiv nsz <2 x double> %i.ir, %i.jt      ; 3 uses
  %i.jv = extractelement <2 x double> %i.ju, i64 0
  %i.jw = fneg nsz double %i.jv                   ; 2 uses
  %i.jx = shufflevector <2 x double> %i.in, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jy = shufflevector <2 x double> %i.ja, <2 x double> %i.je, <2 x i32> <i32 0, i32 2>
  %i.jz = insertelement <2 x double> poison, double %i.ht, i64 0
  %i.ka = insertelement <2 x double> %i.jz, double %i.hv, i64 1
  %i.kb = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jx, <2 x double> %i.jy, <2 x double> %i.ka)
  %i.kc = insertelement <2 x double> poison, double %i.jw, i64 0
  %i.kd = shufflevector <2 x double> %i.kc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ke = shufflevector <2 x double> %i.jk, <2 x double> %i.jp, <2 x i32> <i32 1, i32 2>
  %i.kf = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kd, <2 x double> %i.ke, <2 x double> %i.kb) ; 5 uses
  %i.kg = extractelement <2 x double> %i.kf, i64 0
  store double %i.kg, ptr %i.hs, align 8, !tbaa !68
  %i.kh = extractelement <2 x double> %i.kf, i64 1
  store double %i.kh, ptr %i.hu, align 8, !tbaa !68
  %i.ki = extractelement <2 x double> %i.ji, i64 0
  %i.kj = tail call nsz double @llvm.fmuladd.f64(double %i.jw, double %i.js, double %i.ki) ; 3 uses
  store double %i.kj, ptr %i.hw, align 8, !tbaa !68
  store <2 x double> %i.ju, ptr %i.hr, align 8, !tbaa !68
  %i.kk = load <2 x double>, ptr %i.hz, align 8, !tbaa !68
  %i.kl = extractelement <2 x double> %i.iv, i64 0
  %i.km = shufflevector <2 x double> %i.in, <2 x double> %i.iv, <2 x i32> <i32 1, i32 2>
  %i.kn = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.km, <2 x double> %i.jc, <2 x double> %i.kk)
  %i.ko = extractelement <2 x double> %i.iy, i64 0
  %i.kp = fdiv nsz double %i.ko, %i.iz            ; 2 uses
  %i.kq = shufflevector <2 x double> %i.ju, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.kr = insertelement <2 x double> %i.kq, double %i.kp, i64 1
  %i.ks = fneg nsz <2 x double> %i.kr             ; 4 uses
  %i.kt = shufflevector <2 x double> %i.iv, <2 x double> %i.ks, <2 x i32> <i32 0, i32 2>
  %i.ku = shufflevector <2 x double> %i.jf, <2 x double> %i.jp, <2 x i32> <i32 0, i32 2>
  %i.kv = insertelement <2 x double> %i.ji, double %i.il, i64 0
  %i.kw = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kt, <2 x double> %i.ku, <2 x double> %i.kv)
  store double %i.kp, ptr %i.ig, align 8, !tbaa !68
  %i.kx = shufflevector <2 x double> %i.jk, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ky = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ks, <2 x double> %i.kx, <2 x double> %i.kn)
  %i.kz = tail call nsz double @llvm.fmuladd.f64(double %i.kl, double %i.jg, double %i.ij)
  %i.la = insertelement <2 x double> %i.jk, double %i.kz, i64 1
  %i.lb = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ks, <2 x double> %i.jq, <2 x double> %i.la)
  %i.lc = shufflevector <2 x double> %i.kf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ld = fdiv nsz <2 x double> %i.ky, %i.lc      ; 2 uses
  %i.le = shufflevector <2 x double> %i.jp, <2 x double> %i.kf, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.ld, ptr %i.hz, align 8, !tbaa !68
  %i.lf = fneg nsz <2 x double> %i.ld             ; 3 uses
  %i.lg = shufflevector <2 x double> %i.ks, <2 x double> %i.lf, <2 x i32> <i32 1, i32 2>
  %i.lh = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lg, <2 x double> %i.le, <2 x double> %i.kw) ; 2 uses
  %i.li = extractelement <2 x double> %i.lh, i64 1 ; 2 uses
  store double %i.li, ptr %i.ia, align 8, !tbaa !68
  %i.lj = insertelement <2 x double> %i.kf, double %i.kj, i64 0
  %i.lk = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lf, <2 x double> %i.lj, <2 x double> %i.lb) ; 2 uses
  %i.ll = extractelement <2 x double> %i.lk, i64 0 ; 2 uses
  store double %i.ll, ptr %i.ic, align 8, !tbaa !68
  %i.lm = extractelement <2 x double> %i.lh, i64 0
  %i.ln = extractelement <2 x double> %i.lf, i64 1
  %i.lo = tail call nsz double @llvm.fmuladd.f64(double %i.ln, double %i.kj, double %i.lm)
  %i.lp = extractelement <2 x double> %i.lk, i64 1
  %i.lq = fdiv nsz double %i.lp, %i.li            ; 2 uses
  store double %i.lq, ptr %i.ii, align 8, !tbaa !68
  %i.lr = fneg nsz double %i.lq
  %i.ls = tail call nsz double @llvm.fmuladd.f64(double %i.lr, double %i.ll, double %i.lo)
  store double %i.ls, ptr %i.ik, align 8, !tbaa !68
  %i.lt = getelementptr inbounds nuw i8, ptr %i.i, i64 584
  store double 1.000000e+00, ptr %i.lt, align 8, !tbaa !68
  %i.lu = getelementptr inbounds nuw i8, ptr %i.i, i64 592
  store double 1.000000e+00, ptr %i.lu, align 8, !tbaa !68
  %i.lv = getelementptr inbounds nuw i8, ptr %i.i, i64 600
  store double 1.000000e+00, ptr %i.lv, align 8, !tbaa !68
  %i.lw = getelementptr inbounds nuw i8, ptr %i.i, i64 608
  store double 1.000000e+00, ptr %i.lw, align 8, !tbaa !68
  %i.lx = getelementptr inbounds nuw i8, ptr %i.i, i64 616
  store double 1.000000e+00, ptr %i.lx, align 8, !tbaa !68
  %i.ly = getelementptr inbounds nuw i8, ptr %i.i, i64 624
  store double 1.000000e+00, ptr %i.ly, align 8, !tbaa !68
  %i.lz = getelementptr inbounds nuw i8, ptr %i.i, i64 632
  store double 1.000000e+00, ptr %i.lz, align 8, !tbaa !68
  %i.ma = getelementptr inbounds nuw i8, ptr %i.i, i64 640
  store double 1.000000e+00, ptr %i.ma, align 8, !tbaa !68
  %i.mb = getelementptr inbounds nuw i8, ptr %i.i, i64 648
  store double 1.000000e+00, ptr %i.mb, align 8, !tbaa !68
  %i.mc = getelementptr inbounds nuw i8, ptr %i.i, i64 656
  store double 1.000000e+00, ptr %i.mc, align 8, !tbaa !68
  %i.md = getelementptr inbounds nuw i8, ptr %i.i, i64 664
  store double 1.000000e+00, ptr %i.md, align 8, !tbaa !68
  %i.me = getelementptr inbounds nuw i8, ptr %i.i, i64 672
  store double 1.000000e+00, ptr %i.me, align 8, !tbaa !68
  %i.mf = getelementptr inbounds nuw i8, ptr %i.i, i64 680
  store double 1.000000e+00, ptr %i.mf, align 8, !tbaa !68
  %i.mg = getelementptr inbounds nuw i8, ptr %i.i, i64 688
  store double 1.000000e+00, ptr %i.mg, align 8, !tbaa !68
  %i.mh = getelementptr inbounds nuw i8, ptr %i.i, i64 696
  store double 1.000000e+00, ptr %i.mh, align 8, !tbaa !68
end_hunk_0
begin_hunk_1_@filter_channel:bb.a
  br i1 %i.ud, label %middle.block215, label %vector.body206, !llvm.loop !240

middle.block215:                                  ; preds = %vector.body206
  br i1 %cmp.n216, label %.loopexit, label %scalar.ph202.preheader

scalar.ph202.preheader:                           ; preds = %vector.memcheck192, %.lr.ph114, %middle.block215
  %indvars.iv137.ph = phi i64 [ 0, %vector.memcheck192 ], [ 0, %.lr.ph114 ], [ %n.vec205, %middle.block215 ] ; 6 uses
  br i1 %lcmp.mod379.not, label %scalar.ph202.prol.loopexit, label %scalar.ph202.prol

scalar.ph202.prol:                                ; preds = %scalar.ph202.preheader
  %i.ue = getelementptr inbounds nuw [8 x i8], ptr %i.tq, i64 %indvars.iv137.ph
  %i.uf = load double, ptr %i.ue, align 8, !tbaa !68
  %i.ug = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv137.ph
  %i.uh = load double, ptr %i.ug, align 8, !tbaa !68
  %i.ui = fmul nsz double %i.uf, %i.uh
  %i.uj = fmul nsz double %i.ui, f0x3E80000000000000
  %i.uk = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv137.ph ; 2 uses
  %i.ul = load double, ptr %i.uk, align 8, !tbaa !68
  %i.um = fadd nsz double %i.ul, %i.uj
  store double %i.um, ptr %i.uk, align 8, !tbaa !68
  %indvars.iv.next138.prol = or disjoint i64 %indvars.iv137.ph, 1
  br label %scalar.ph202.prol.loopexit

scalar.ph202.prol.loopexit:                       ; preds = %scalar.ph202.prol, %scalar.ph202.preheader
  %indvars.iv137.unr = phi i64 [ %indvars.iv137.ph, %scalar.ph202.preheader ], [ %indvars.iv.next138.prol, %scalar.ph202.prol ]
  %i.un = icmp eq i64 %indvars.iv137.ph, %i.av
  br i1 %i.un, label %.loopexit, label %scalar.ph202

.preheader:                                       ; preds = %process_frame.exit
  br i1 %i.y, label %.lr.ph116, label %.loopexit

.lr.ph116:                                        ; preds = %.preheader
  %i.uo = load ptr, ptr %i.r, align 8, !tbaa !67  ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph116
  %scevgep185 = getelementptr i8, ptr %i.bf, i64 %i.as
  %scevgep186 = getelementptr i8, ptr %i.uo, i64 %i.as
  %bound0 = icmp ult ptr %i.bf, %scevgep186
  %bound1 = icmp ult ptr %i.uo, %scevgep185
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 4 uses
  %i.up = getelementptr inbounds nuw [8 x i8], ptr %i.uo, i64 %index ; 2 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 16
  %wide.load = load <2 x double>, ptr %i.up, align 8, !tbaa !68, !alias.scope !270
  %wide.load187 = load <2 x double>, ptr %i.uq, align 8, !tbaa !68, !alias.scope !270
  %i.ur = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %index ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 8
  %wide.load188 = load <2 x float>, ptr %i.ur, align 4, !tbaa !71
  %wide.load189 = load <2 x float>, ptr %i.us, align 4, !tbaa !71
  %i.ut = fpext nsz <2 x float> %wide.load188 to <2 x double>
  %i.uu = fpext nsz <2 x float> %wide.load189 to <2 x double>
  %i.uv = fmul nsz <2 x double> %wide.load, %i.ut
  %i.uw = fmul nsz <2 x double> %wide.load187, %i.uu
  %i.ux = fmul nsz <2 x double> %i.uv, splat (double f0x3E80000000000000)
  %i.uy = fmul nsz <2 x double> %i.uw, splat (double f0x3E80000000000000)
  %i.uz = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %index ; 3 uses
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 16 ; 2 uses
  %wide.load190 = load <2 x double>, ptr %i.uz, align 8, !tbaa !68, !alias.scope !271, !noalias !270
  %wide.load191 = load <2 x double>, ptr %i.va, align 8, !tbaa !68, !alias.scope !271, !noalias !270
  %i.vb = fadd nsz <2 x double> %wide.load190, %i.ux
  %i.vc = fadd nsz <2 x double> %wide.load191, %i.uy
  store <2 x double> %i.vb, ptr %i.uz, align 8, !tbaa !68, !alias.scope !271, !noalias !270
  store <2 x double> %i.vc, ptr %i.va, align 8, !tbaa !68, !alias.scope !271, !noalias !270
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.vd = icmp eq i64 %index.next, %n.vec
  br i1 %i.vd, label %middle.block, label %vector.body, !llvm.loop !244

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph116, %middle.block
  %indvars.iv142.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph116 ], [ %n.vec, %middle.block ] ; 6 uses
  br i1 %lcmp.mod381.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ve = getelementptr inbounds nuw [8 x i8], ptr %i.uo, i64 %indvars.iv142.ph
  %i.vf = load double, ptr %i.ve, align 8, !tbaa !68
  %i.vg = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv142.ph
  %i.vh = load float, ptr %i.vg, align 4, !tbaa !71
  %i.vi = fpext nsz float %i.vh to double
  %i.vj = fmul nsz double %i.vf, %i.vi
  %i.vk = fmul nsz double %i.vj, f0x3E80000000000000
  %i.vl = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv142.ph ; 2 uses
  %i.vm = load double, ptr %i.vl, align 8, !tbaa !68
  %i.vn = fadd nsz double %i.vm, %i.vk
  store double %i.vn, ptr %i.vl, align 8, !tbaa !68
  %indvars.iv.next143.prol = or disjoint i64 %indvars.iv142.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv142.unr = phi i64 [ %indvars.iv142.ph, %scalar.ph.preheader ], [ %indvars.iv.next143.prol, %scalar.ph.prol ]
  %i.vo = icmp eq i64 %indvars.iv142.ph, %i.aw
  br i1 %i.vo, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv142 = phi i64 [ %indvars.iv.next143.1, %scalar.ph ], [ %indvars.iv142.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.vp = getelementptr inbounds nuw [8 x i8], ptr %i.uo, i64 %indvars.iv142
  %i.vq = load double, ptr %i.vp, align 8, !tbaa !68
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv142
  %i.vs = load float, ptr %i.vr, align 4, !tbaa !71
  %i.vt = fpext nsz float %i.vs to double
  %i.vu = fmul nsz double %i.vq, %i.vt
  %i.vv = fmul nsz double %i.vu, f0x3E80000000000000
  %i.vw = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv142 ; 2 uses
  %i.vx = load double, ptr %i.vw, align 8, !tbaa !68
  %i.vy = fadd nsz double %i.vx, %i.vv
  store double %i.vy, ptr %i.vw, align 8, !tbaa !68
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1 ; 3 uses
  %i.vz = getelementptr inbounds nuw [8 x i8], ptr %i.uo, i64 %indvars.iv.next143
  %i.wa = load double, ptr %i.vz, align 8, !tbaa !68
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv.next143
  %i.wc = load float, ptr %i.wb, align 4, !tbaa !71
  %i.wd = fpext nsz float %i.wc to double
  %i.we = fmul nsz double %i.wa, %i.wd
  %i.wf = fmul nsz double %i.we, f0x3E80000000000000
  %i.wg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.next143 ; 2 uses
  %i.wh = load double, ptr %i.wg, align 8, !tbaa !68
  %i.wi = fadd nsz double %i.wh, %i.wf
  store double %i.wi, ptr %i.wg, align 8, !tbaa !68
  %indvars.iv.next143.1 = add nuw nsw i64 %indvars.iv142, 2 ; 2 uses
  %exitcond146.not.1 = icmp eq i64 %indvars.iv.next143.1, %wide.trip.count145
  br i1 %exitcond146.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !245

scalar.ph202:                                     ; preds = %scalar.ph202.prol.loopexit, %scalar.ph202
  %indvars.iv137 = phi i64 [ %indvars.iv.next138.1, %scalar.ph202 ], [ %indvars.iv137.unr, %scalar.ph202.prol.loopexit ] ; 5 uses
  %i.wj = getelementptr inbounds nuw [8 x i8], ptr %i.tq, i64 %indvars.iv137
  %i.wk = load double, ptr %i.wj, align 8, !tbaa !68
  %i.wl = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv137
  %i.wm = load double, ptr %i.wl, align 8, !tbaa !68
  %i.wn = fmul nsz double %i.wk, %i.wm
  %i.wo = fmul nsz double %i.wn, f0x3E80000000000000
  %i.wp = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv137 ; 2 uses
  %i.wq = load double, ptr %i.wp, align 8, !tbaa !68
  %i.wr = fadd nsz double %i.wq, %i.wo
  store double %i.wr, ptr %i.wp, align 8, !tbaa !68
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1 ; 3 uses
  %i.ws = getelementptr inbounds nuw [8 x i8], ptr %i.tq, i64 %indvars.iv.next138
  %i.wt = load double, ptr %i.ws, align 8, !tbaa !68
  %i.wu = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.next138
  %i.wv = load double, ptr %i.wu, align 8, !tbaa !68
  %i.ww = fmul nsz double %i.wt, %i.wv
  %i.wx = fmul nsz double %i.ww, f0x3E80000000000000
  %i.wy = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.next138 ; 2 uses
  %i.wz = load double, ptr %i.wy, align 8, !tbaa !68
  %i.xa = fadd nsz double %i.wz, %i.wx
  store double %i.xa, ptr %i.wy, align 8, !tbaa !68
  %indvars.iv.next138.1 = add nuw nsw i64 %indvars.iv137, 2 ; 2 uses
  %exitcond141.not.1 = icmp eq i64 %indvars.iv.next138.1, %wide.trip.count140
  br i1 %exitcond141.not.1, label %.loopexit, label %scalar.ph202, !llvm.loop !246

.loopexit:                                        ; preds = %scalar.ph202.prol.loopexit, %scalar.ph202, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block215, %middle.block, %.preheader95, %.preheader, %process_frame.exit
  %indvars.iv.next148 = add nsw i64 %indvars.iv147, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next148 to i32
  %exitcond150.not = icmp eq i32 %lftr.wideiv, %i.o
  br i1 %exitcond150.not, label %._crit_edge, label %bb.b, !llvm.loop !247
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @ff_filter_get_nb_threads(ptr noundef) local_unnamed_addr #10

declare i32 @av_frame_is_writable(ptr noundef) local_unnamed_addr #3

declare i32 @av_frame_copy_props(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log10.f64(double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare double @hypot(double noundef, double noundef) local_unnamed_addr #11

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

declare void @ff_avfilter_link_set_in_status(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.exp2.f64(double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ldexp.f64.i32(double, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.atan.v4f64(<4 x double>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i64> @llvm.lrint.v4i64.v4f64(<4 x double>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.log.v2f64(<2 x double>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.maxnum.v2f64(<2 x double>, <2 x double>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.exp.v2f64(<2 x double>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fmax.v2f64(<2 x double>) #4

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(read) }
attributes #16 = { nounwind willreturn memory(none) }
attributes #17 = { noreturn nounwind }

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
!20 = !{!"long", !5, i64 0}
!21 = !{!"float", !5, i64 0}
!22 = !{!"p1 int", !9, i64 0}
!23 = !{!"p1 double", !9, i64 0}
!24 = !{!"p1 _ZTS14DeNoiseChannel", !9, i64 0}
!25 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!26 = !{!"double", !5, i64 0}
!27 = !{!"AudioFFTDeNoiseContext", !10, i64 0, !6, i64 8, !20, i64 16, !20, i64 24, !21, i64 32, !21, i64 36, !6, i64 40, !12, i64 48, !21, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !21, i64 76, !6, i64 80, !21, i64 84, !21, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !21, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !6, i64 128, !6, i64 132, !6, i64 136, !5, i64 140, !22, i64 200, !23, i64 208, !23, i64 216, !23, i64 224, !24, i64 232, !25, i64 240, !26, i64 248, !26, i64 256, !26, i64 264, !5, i64 272, !6, i64 340, !5, i64 344, !5, i64 544, !5, i64 584, !5, i64 1184}
!28 = !{!27, !24, i64 232}
!29 = !{!27, !6, i64 92}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!27, !21, i64 32}
!32 = !{!"p1 _ZTS11AVTXContext", !9, i64 0}
!33 = !{!"DeNoiseChannel", !5, i64 0, !5, i64 120, !5, i64 240, !23, i64 360, !23, i64 368, !23, i64 376, !23, i64 384, !23, i64 392, !23, i64 400, !23, i64 408, !23, i64 416, !23, i64 424, !23, i64 432, !23, i64 440, !23, i64 448, !23, i64 456, !23, i64 464, !9, i64 472, !9, i64 480, !32, i64 488, !32, i64 496, !9, i64 504, !9, i64 512, !5, i64 520, !5, i64 640, !5, i64 760, !5, i64 880, !26, i64 1000, !26, i64 1008, !26, i64 1016, !26, i64 1024, !26, i64 1032, !26, i64 1040, !26, i64 1048, !26, i64 1056, !26, i64 1064}
!34 = !{!33, !26, i64 1000}
!35 = !{!27, !21, i64 36}
!36 = !{!33, !26, i64 1016}
!37 = !{!27, !21, i64 56}
!38 = !{!33, !26, i64 1032}
!39 = !{!"p1 _ZTS12AVFilterLink", !9, i64 0}
!40 = !{!39, !39, i64 0}
!41 = !{!18, !15, i64 56}
!42 = !{!27, !6, i64 132}
!43 = !{!"p1 _ZTS15AVFilterContext", !9, i64 0}
!44 = !{!"AVRational", !6, i64 0, !6, i64 4}
!45 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!46 = !{!"p2 _ZTS15AVFrameSideData", !14, i64 0}
!47 = !{!"p1 _ZTS15AVFilterFormats", !9, i64 0}
!48 = !{!"p1 _ZTS22AVFilterChannelLayouts", !9, i64 0}
!49 = !{!"AVFilterFormatsConfig", !47, i64 0, !47, i64 8, !48, i64 16, !47, i64 24, !47, i64 32, !47, i64 40}
!50 = !{!"AVFilterLink", !43, i64 0, !13, i64 8, !43, i64 16, !13, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !44, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !45, i64 72, !44, i64 96, !46, i64 104, !6, i64 112, !6, i64 116, !49, i64 120, !49, i64 168}
!51 = !{!50, !43, i64 16}
!52 = !{!27, !6, i64 128}
!53 = !{!27, !6, i64 60}
!54 = !{!50, !6, i64 76}
!55 = !{!27, !25, i64 240}
!56 = !{!"p2 omnipotent char", !14, i64 0}
!57 = !{!"p2 _ZTS11AVBufferRef", !14, i64 0}
!58 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!59 = !{!"AVFrame", !5, i64 0, !5, i64 64, !56, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !44, i64 124, !20, i64 136, !20, i64 144, !44, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !57, i64 248, !6, i64 256, !46, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !20, i64 304, !58, i64 312, !6, i64 320, !17, i64 328, !17, i64 336, !20, i64 344, !20, i64 352, !20, i64 360, !20, i64 368, !9, i64 376, !45, i64 384, !20, i64 408, !6, i64 416}
!60 = !{!59, !56, i64 96}
!61 = !{!12, !12, i64 0}
!62 = !{!27, !20, i64 16}
!63 = !{!33, !26, i64 1024}
!64 = !{!33, !9, i64 480}
!65 = !{!33, !9, i64 472}
!66 = !{!27, !6, i64 8}
!67 = !{!27, !23, i64 208}
!68 = !{!26, !26, i64 0}
!69 = !{!"llvm.loop.isvectorized", i32 1}
!70 = !{!"llvm.loop.unroll.runtime.disable"}
!71 = !{!21, !21, i64 0}
!72 = !{!27, !6, i64 120}
!73 = !{!5, !5, i64 0}
!74 = !{!33, !9, i64 504}
!75 = !{!33, !32, i64 488}
!76 = !{!6, !6, i64 0}
!77 = !{!27, !26, i64 264}
!78 = !{!27, !6, i64 340}
!79 = !{!27, !26, i64 256}
!80 = !{!33, !23, i64 432}
!81 = !{!"llvm.loop.unroll.disable"}
!82 = !{!20, !20, i64 0}
!83 = !{!27, !21, i64 108}
!84 = !{!27, !6, i64 116}
!85 = !{!27, !6, i64 124}
!86 = !{!27, !22, i64 200}
!87 = !{!27, !6, i64 136}
!88 = !{!27, !23, i64 216}
!89 = !{!27, !23, i64 224}
!90 = !{!33, !23, i64 360}
!91 = !{!33, !23, i64 368}
!92 = !{!33, !23, i64 376}
!93 = !{!33, !23, i64 384}
!94 = !{!33, !23, i64 392}
!95 = !{!33, !23, i64 400}
!96 = !{!33, !23, i64 408}
!97 = !{!33, !23, i64 416}
!98 = !{!33, !23, i64 424}
!99 = !{!33, !23, i64 448}
!100 = !{!33, !23, i64 456}
!101 = !{!33, !23, i64 464}
!102 = !{!27, !20, i64 24}
!103 = !{!33, !23, i64 440}
!104 = !{!33, !32, i64 496}
!105 = !{!33, !26, i64 1048}
!106 = distinct !{!106, !30}
!107 = distinct !{!107, !30}
!108 = distinct !{!108, !30}
!109 = distinct !{!109, !30}
!110 = distinct !{!110, !30}
!111 = distinct !{!111, !30}
!112 = distinct !{!112, !30, !69, !70}
!113 = distinct !{!113, !30, !69, !70}
!114 = distinct !{!114, !30, !69}
!115 = distinct !{!115, !30, !69}
!116 = distinct !{null, null}
!117 = distinct !{!117, !30}
!118 = distinct !{!118, !30}
!119 = distinct !{!119, !30}
!120 = distinct !{!120, !30}
!121 = distinct !{!121, !30}
!122 = distinct !{!122, !30, !69, !70}
!123 = distinct !{!123, !81}
!124 = distinct !{!124, !30, !69, !70}
!125 = distinct !{!125, !81}
!126 = distinct !{!126, !30, !69}
!127 = distinct !{!127, !30, !69}
!128 = distinct !{!128, !30, !69, !70}
!129 = distinct !{!129, !81}
!130 = distinct !{!130, !30, !69, !70}
!131 = distinct !{!131, !30, !70, !69}
!132 = distinct !{!132, !30, !69}
!133 = distinct !{!133, !30, !69, !70}
!134 = distinct !{!134, !81}
!135 = distinct !{!135, !30, !69, !70}
!136 = distinct !{!136, !30, !69}
!137 = distinct !{!137, !30, !69}
!138 = distinct !{!138, !30}
!139 = !{!18, !15, i64 32}
!140 = !{!25, !25, i64 0}
!141 = !{!18, !6, i64 104}
!142 = !{!27, !6, i64 68}
!143 = !{!59, !6, i64 112}
!144 = !{!27, !6, i64 72}
!145 = !{!27, !6, i64 104}
!146 = !{!27, !6, i64 96}
!147 = !{!27, !6, i64 100}
end_hunk_1
