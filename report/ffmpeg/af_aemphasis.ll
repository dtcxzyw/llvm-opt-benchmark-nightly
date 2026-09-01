Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_aemphasis?download=true
inline.NumInlined: 9
inline.NumDeleted: 5
begin_hunk_0_@uninit:bb.a
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @process_command(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #1 {
bb.a:
  %i.a = tail call i32 @ff_filter_process_command(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #9 ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.f = tail call i32 @config_input(ptr noundef %i.e)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ %i.a, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @filter_frame(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %struct.ThreadData, align 8         ; 5 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !34
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.g = tail call i32 @av_frame_is_writable(ptr noundef %1) #9
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.i = load i32, ptr %i.h, align 8, !tbaa !35
  %i.j = tail call ptr @ff_get_audio_buffer(ptr noundef %i.f, i32 noundef %i.i) #9 ; 3 uses
  %.not18 = icmp eq ptr %i.j, null
  br i1 %.not18, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @av_frame_free(ptr noundef nonnull %i.a) #9
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.k = tail call i32 @av_frame_copy_props(ptr noundef nonnull %i.j, ptr noundef nonnull %1) #9 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi ptr [ %i.j, %bb.d ], [ %1, %bb.a ]    ; 3 uses
  store ptr %1, ptr %2, align 8, !tbaa !41
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.0, ptr %i.l, align 8, !tbaa !43
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.n = load i32, ptr %i.m, align 4, !tbaa !44
  %i.o = tail call i32 @ff_filter_get_nb_threads(ptr noundef nonnull %i.c) #10
  %. = tail call i32 @llvm.smin.i32(i32 %i.n, i32 %i.o)
  %i.p = call i32 @ff_filter_execute(ptr noundef nonnull %i.c, ptr noundef nonnull @filter_channels, ptr noundef nonnull %2, ptr noundef null, i32 noundef %.) #9 ; 0 uses
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !23
  %.not19 = icmp eq ptr %i.q, %.0
  br i1 %.not19, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @av_frame_free(ptr noundef nonnull %i.a) #9
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.r = call i32 @ff_filter_frame(ptr noundef %i.f, ptr noundef %.0) #9
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c
  %.014 = phi i32 [ %i.r, %bb.g ], [ -12, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  ret i32 %.014
}

; Function Attrs: nounwind uwtable
define internal range(i32 -12, 1) i32 @config_input(ptr noundef %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i32, ptr %i.a, align 8, !tbaa !45
  %i.c = sitofp nsz i32 %i.b to double            ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !9    ; 19 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 120 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !46
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @ff_get_audio_buffer(ptr noundef nonnull %0, i32 noundef 4) #9 ; 2 uses
  store ptr %i.j, ptr %i.h, align 8, !tbaa !46
  %.not160 = icmp eq ptr %i.j, null
  br i1 %.not160, label %bb.i, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !51   ; 8 uses
  %i.m = icmp ult i32 %i.l, 7
  %switch.maskindex = trunc i32 %i.l to i8
  %switch.shifted = lshr i8 119, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.m, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.c

bb.c:                                             ; preds = %.thread
  %.off = add i32 %i.l, -7
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.d, label %.thread176

bb.d:                                             ; preds = %bb.c
  %i.n = insertelement <2 x i32> poison, i32 %i.l, i64 0
  %i.o = shufflevector <2 x i32> %i.n, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.p = icmp eq <2 x i32> %i.o, <i32 7, i32 8>
  %i.q = icmp eq i32 %i.l, 7
  %i.r = select i1 %i.q, double f0x40A8DE329E04D144, double f0x40A09421BEADE0D8 ; 2 uses
  %i.s = fmul nnan nsz double %i.c, 5.000000e-01  ; 2 uses
  %i.t = fmul nnan nsz double %i.s, %i.s
  %i.u = select <2 x i1> %i.p, <2 x double> <double f0x41635352CBA7CD99, double 3.269000e+03>, <2 x double> <double f0x41512D9EEDEA7DDD, double 4.750000e+03>
  %i.v = insertelement <2 x double> poison, double %i.t, i64 0
  %i.w = insertelement <2 x double> %i.v, double %i.c, i64 1
  %i.x = fdiv nsz <2 x double> %i.w, %i.u         ; 2 uses
  %i.y = extractelement <2 x double> %i.x, i64 0
  %i.z = fadd nsz double %i.y, 1.000000e+00
  %i.aa = tail call nsz double @llvm.sqrt.f64(double %i.z) ; 3 uses
  %i.ab = fadd nsz double %i.aa, -1.000000e+00
  %i.ac = fmul nsz double %i.r, %i.ab
  %i.ad = fmul nsz double %i.r, %i.ac
  %i.ae = tail call nsz double @llvm.sqrt.f64(double %i.ad)
  %i.af = extractelement <2 x double> %i.x, i64 1
  %i.ag = fadd nsz double %i.af, 1.950000e+01
  %i.ah = tail call nsz double @llvm.pow.f64(double %i.ag, double -2.500000e-01)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !52
  %i.ak = icmp eq i32 %i.aj, 0
  %i.al = fdiv nsz double 1.000000e+00, %i.aa
  %.sink241 = select i1 %i.ak, double %i.al, double %i.aa
  %i.am = tail call nsz double @llvm.sqrt.f64(double %.sink241) ; 5 uses
  %i.an = fmul nsz double %i.ae, 2.000000e+00
  %i.ao = fmul nsz double %i.an, f0x400921FB54442D18
  %i.ap = fdiv nsz double %i.ao, %i.c
  %sincos.i161 = tail call nsz { double, double } @llvm.sincos.f64(double %i.ap) ; 2 uses
  %sin.i162 = extractvalue { double, double } %sincos.i161, 0
  %cos.i163 = extractvalue { double, double } %sincos.i161, 1
  %i.aq = fmul nsz double %i.ah, 2.000000e+00
  %i.ar = fdiv nsz double %sin.i162, %i.aq
  %i.as = tail call nsz double @llvm.sqrt.f64(double %i.am)
  %i.at = fmul nsz double %i.as, 2.000000e+00
  %i.au = fmul nsz double %i.at, %i.ar            ; 4 uses
  %i.av = fmul nsz double %i.am, -2.000000e+00
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.ax = insertelement <2 x double> poison, double %i.am, i64 0
  %i.ay = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> zeroinitializer
  %i.az = fadd nsz <2 x double> %i.ay, <double 1.000000e+00, double -1.000000e+00> ; 3 uses
  %i.ba = shufflevector <2 x double> %i.az, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bb = insertelement <2 x double> poison, double %cos.i163, i64 0
  %i.bc = shufflevector <2 x double> %i.bb, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bd = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ba, <2 x double> %i.bc, <2 x double> %i.az) ; 2 uses
  %i.be = extractelement <2 x double> %i.bd, i64 0 ; 2 uses
  %i.bf = fadd nsz double %i.be, %i.au
  %i.bg = fmul nsz double %i.am, %i.bf
  %i.bh = extractelement <2 x double> %i.bd, i64 1
  %i.bi = fmul nsz double %i.av, %i.bh
  %i.bj = fsub nsz double %i.be, %i.au
  %i.bk = fmul nsz double %i.am, %i.bj
  %i.bl = fneg nsz <2 x double> %i.az
  %i.bm = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bl, <2 x double> %i.bc, <2 x double> %i.ba) ; 3 uses
  %i.bn = extractelement <2 x double> %i.bm, i64 1
  %i.bo = fadd nsz double %i.bn, %i.au
  %i.bp = insertelement <2 x double> <double 2.000000e+00, double poison>, double %i.au, i64 1 ; 2 uses
  %i.bq = fmul nsz <2 x double> %i.bm, %i.bp
  %i.br = fsub nsz <2 x double> %i.bm, %i.bp
  %i.bs = shufflevector <2 x double> %i.bq, <2 x double> %i.br, <2 x i32> <i32 0, i32 3>
  %i.bt = fdiv nsz double 1.000000e+00, %i.bo     ; 4 uses
  %i.bu = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.bv = shufflevector <2 x double> %i.bu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bw = fmul nsz <2 x double> %i.bs, %i.bv
  %i.bx = fmul nsz double %i.bg, %i.bt
  %i.by = fmul nsz double %i.bi, %i.bt
  %i.bz = fmul nsz double %i.bk, %i.bt
  store <2 x double> %i.bw, ptr %i.aw, align 8, !tbaa !53
  %i.ca = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store double %i.bx, ptr %i.ca, align 8, !tbaa !54
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store double %i.by, ptr %i.cb, align 8, !tbaa !55
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store double %i.bz, ptr %i.cc, align 8, !tbaa !56
  %i.cd = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  store i32 0, ptr %i.cd, align 8, !tbaa !57
  br label %bb.h

switch.lookup:                                    ; preds = %.thread
  %i.ce = zext nneg i32 %i.l to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.config_input, i64 %i.ce
  %switch.load = load double, ptr %switch.gep, align 8 ; 2 uses
  %i.cf = zext nneg i32 %i.l to i64
  %switch.gep242 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.config_input.1, i64 %i.cf
  %switch.load243 = load double, ptr %switch.gep242, align 8
  %i.cg = zext nneg i32 %i.l to i64
  %switch.gep244 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.config_input.2, i64 %i.cg
  %switch.load245 = load double, ptr %switch.gep244, align 8 ; 2 uses
  %1 = insertelement <2 x double> poison, double %switch.load, i64 0
  %2 = insertelement <2 x double> %1, double %switch.load245, i64 1
  br label %.thread176

.thread176:                                       ; preds = %switch.lookup, %bb.c
  %.0155184 = phi double [ f0x40CA0AAAAAAAAAAB, %bb.c ], [ %switch.load, %switch.lookup ] ; 4 uses
  %.0156183 = phi double [ f0x40A8914EE4A1019C, %bb.c ], [ %switch.load243, %switch.lookup ] ; 4 uses
  %.0157182 = phi double [ f0x4073A7725080CE16, %bb.c ], [ %switch.load245, %switch.lookup ] ; 2 uses
  %3 = phi <2 x double> [ <double f0x40CA0AAAAAAAAAAB, double f0x4073A7725080CE16>, %bb.c ], [ %2, %switch.lookup ] ; 2 uses
  %i.ch = fdiv nsz double 1.000000e+00, %i.c      ; 24 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.cj = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  store i32 1, ptr %i.cj, align 8, !tbaa !57
  %i.ck = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !52
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.thread176
  %i.cn = fmul nnan nsz double %.0157182, 2.000000e+00 ; 3 uses
  %i.co = tail call nsz double @llvm.fmuladd.f64(double %i.cn, double %i.ch, double 4.000000e+00)
  %i.cp = fmul nnan nsz double %.0155184, 2.000000e+00 ; 2 uses
  %i.cq = tail call nsz double @llvm.fmuladd.f64(double %i.cp, double %i.ch, double %i.co)
  %i.cr = fmul nnan nsz double %.0155184, %.0157182
  %i.cs = fmul nsz double %i.ch, %i.cr            ; 2 uses
  %i.ct = fmul nnan nsz double %i.ch, %.0156183
  %i.cu = fmul nsz double %i.ch, %i.ct            ; 2 uses
  %i.cv = fmul nnan nsz double %.0156183, 2.000000e+00
  %i.cw = fmul nsz double %i.ch, %i.cv
  %i.cx = fmul nsz double %i.ch, %i.cw
  %i.cy = insertelement <2 x double> <double poison, double 2.000000e+00>, double %i.cs, i64 0
  %i.cz = insertelement <2 x double> poison, double %i.ch, i64 0
  %i.da = shufflevector <2 x double> %i.cz, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.db = insertelement <2 x double> poison, double %i.cq, i64 0
  %i.dc = insertelement <2 x double> %i.db, double %i.cu, i64 1
  %i.dd = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cy, <2 x double> %i.da, <2 x double> %i.dc) ; 2 uses
  %i.de = extractelement <2 x double> %i.dd, i64 0
  %i.df = fdiv nsz double 1.000000e+00, %i.de     ; 2 uses
  %i.dg = insertelement <2 x double> poison, double %i.df, i64 0
  %i.dh = shufflevector <2 x double> %i.dg, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.di = shufflevector <2 x double> %i.dd, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.dj = insertelement <2 x double> %i.di, double %i.cx, i64 1
  %i.dk = fmul nsz <2 x double> %i.dj, %i.dh
  %i.dl = fmul nnan nsz double %.0155184, %i.cn
  %i.dm = fmul nsz double %i.ch, %i.dl
  %i.dn = insertelement <2 x double> <double -2.000000e+00, double poison>, double %i.dm, i64 1
  %i.do = insertelement <2 x double> <double poison, double -8.000000e+00>, double %i.cu, i64 0
  %i.dp = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dn, <2 x double> %i.da, <2 x double> %i.do)
  %i.dq = fmul nsz <2 x double> %i.dp, %i.dh
  %i.dr = fneg nsz double %i.cn
  %i.ds = tail call nsz double @llvm.fmuladd.f64(double %i.dr, double %i.ch, double 4.000000e+00)
  %i.dt = fneg nsz double %i.cp
  %i.du = tail call nsz double @llvm.fmuladd.f64(double %i.dt, double %i.ch, double %i.ds)
  %i.dv = tail call nsz double @llvm.fmuladd.f64(double %i.cs, double %i.ch, double %i.du)
  %i.dw = fmul nsz double %i.dv, %i.df
  br label %bb.g

bb.f:                                             ; preds = %.thread176
  %i.dx = fmul nnan nsz double %i.ch, %.0156183
  %i.dy = fmul nsz double %i.ch, %i.dx            ; 2 uses
  %i.dz = tail call nsz double @llvm.fmuladd.f64(double %i.ch, double 2.000000e+00, double %i.dy)
  %i.ea = fdiv nsz double 1.000000e+00, %i.dz     ; 2 uses
  %i.eb = fmul nnan nsz double %.0155184, 2.000000e+00 ; 2 uses
  %4 = shufflevector <2 x double> %3, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ec = fmul nsz <2 x double> %4, <double 1.000000e+00, double 2.000000e+00> ; 2 uses
  %i.ed = extractelement <2 x double> %i.ec, i64 1 ; 2 uses
  %i.ee = tail call nsz double @llvm.fmuladd.f64(double %i.ed, double %i.ch, double 4.000000e+00)
  %i.ef = tail call nsz double @llvm.fmuladd.f64(double %i.eb, double %i.ch, double %i.ee)
  %i.eg = shufflevector <2 x double> %3, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eh = fmul nnan nsz <2 x double> %i.eg, %i.ec
  %i.ei = insertelement <2 x double> poison, double %i.ch, i64 0
  %i.ej = shufflevector <2 x double> %i.ei, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ek = fmul nsz <2 x double> %i.ej, %i.eh      ; 2 uses
  %i.el = insertelement <2 x double> <double poison, double -8.000000e+00>, double %i.ef, i64 0
  %i.em = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ek, <2 x double> %i.ej, <2 x double> %i.el)
  %i.en = insertelement <2 x double> poison, double %i.ea, i64 0
  %i.eo = shufflevector <2 x double> %i.en, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ep = fmul nsz <2 x double> %i.eo, %i.em
  %i.eq = fneg nsz double %i.ed
  %i.er = fneg nsz double %i.eb
  %i.es = extractelement <2 x double> %i.ek, i64 0
  %i.et = fmul nnan nsz double %.0156183, 2.000000e+00
  %i.eu = fmul nsz double %i.ch, %i.et
  %i.ev = tail call nsz double @llvm.fmuladd.f64(double %i.eq, double %i.ch, double 4.000000e+00)
  %i.ew = tail call nsz double @llvm.fmuladd.f64(double %i.er, double %i.ch, double %i.ev)
  %i.ex = fmul nsz double %i.ch, %i.eu
  %i.ey = tail call nsz double @llvm.fmuladd.f64(double %i.es, double %i.ch, double %i.ew)
  %i.ez = insertelement <2 x double> poison, double %i.ey, i64 0
  %i.fa = insertelement <2 x double> %i.ez, double %i.ex, i64 1
  %i.fb = fmul nsz <2 x double> %i.eo, %i.fa
  %i.fc = tail call nsz double @llvm.fmuladd.f64(double %i.ch, double -2.000000e+00, double %i.dy)
  %i.fd = fmul nsz double %i.fc, %i.ea
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0150 = phi nsz double [ %i.dw, %bb.e ], [ %i.fd, %bb.f ] ; 2 uses
  %i.fe = phi <2 x double> [ %i.dk, %bb.e ], [ %i.ep, %bb.f ] ; 3 uses
  %i.ff = phi <2 x double> [ %i.dq, %bb.e ], [ %i.fb, %bb.f ] ; 4 uses
  %i.fg = fdiv nnan nsz double f0x401921FB54442D18, %i.c
  %i.fh = fmul nnan nsz double %i.fg, 1.000000e+03
  %sincos.i164 = tail call nsz { double, double } @llvm.sincos.f64(double %i.fh) ; 2 uses
  %sin.i165 = extractvalue { double, double } %sincos.i164, 0 ; 2 uses
  %cos.i166 = extractvalue { double, double } %sincos.i164, 1 ; 3 uses
  %i.fi = fneg nsz double %sin.i165               ; 2 uses
  %i.fj = fmul nsz double %sin.i165, %i.fi
  %i.fk = tail call nsz double @llvm.fmuladd.f64(double %cos.i166, double %cos.i166, double %i.fj)
  %i.fl = extractelement <2 x double> %i.ff, i64 0
  %i.fm = extractelement <2 x double> %i.ff, i64 1
  %i.fn = shufflevector <2 x double> %i.fe, <2 x double> %i.ff, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.fo = insertelement <2 x double> poison, double %cos.i166, i64 0
  %i.fp = shufflevector <2 x double> %i.fo, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fq = insertelement <2 x double> %i.fe, double 1.000000e+00, i64 1
  %i.fr = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fn, <2 x double> %i.fp, <2 x double> %i.fq)
  %i.fs = insertelement <2 x double> %i.ff, double %.0150, i64 1 ; 2 uses
  %i.ft = insertelement <2 x double> poison, double %i.fk, i64 0
  %i.fu = shufflevector <2 x double> %i.ft, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fv = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fs, <2 x double> %i.fu, <2 x double> %i.fr) ; 2 uses
  %i.fw = extractelement <2 x double> %i.fv, i64 0
  %i.fx = fmul nsz <2 x double> %i.fs, splat (double 2.000000e+00)
  %i.fy = fmul nsz <2 x double> %i.fp, %i.fx
  %i.fz = insertelement <2 x double> poison, double %i.fi, i64 0
  %i.ga = shufflevector <2 x double> %i.fz, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gb = fmul nsz <2 x double> %i.fy, %i.ga
  %i.gc = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fn, <2 x double> %i.ga, <2 x double> %i.gb) ; 2 uses
  %i.gd = extractelement <2 x double> %i.gc, i64 0
  %i.ge = tail call nsz double @hypot(double noundef %i.fw, double noundef %i.gd) #11
  %i.gf = extractelement <2 x double> %i.fv, i64 1
  %i.gg = extractelement <2 x double> %i.gc, i64 1
  %i.gh = tail call nsz double @hypot(double noundef %i.gf, double noundef %i.gg) #11
  %i.gi = fdiv nsz double %i.ge, %i.gh
  %i.gj = fdiv nsz double 1.000000e+00, %i.gi     ; 2 uses
  %i.gk = insertelement <2 x double> poison, double %i.gj, i64 0
  %i.gl = shufflevector <2 x double> %i.gk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gm = fmul nsz <2 x double> %i.fe, %i.gl
  store <2 x double> %i.gm, ptr %i.ci, align 8, !tbaa !53
  %i.gn = fmul nsz double %i.fl, %i.gj
  %i.go = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store double %i.gn, ptr %i.go, align 8, !tbaa !58
  %i.gp = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store double %i.fm, ptr %i.gp, align 8, !tbaa !59
  %i.gq = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store double %.0150, ptr %i.gq, align 8, !tbaa !60
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %i.gr = fmul nnan nsz double %i.c, 4.500000e-01 ; 2 uses
  %i.gs = fcmp nsz ogt double %i.gr, 2.100000e+04
  %i.gt = select nsz i1 %i.gs, double 2.100000e+04, double %i.gr
  %i.gu = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.gv = fmul nnan nsz double %i.gt, f0x401921FB54442D18
  %i.gw = fdiv nsz double %i.gv, %i.c
  %sincos.i167 = tail call nsz { double, double } @llvm.sincos.f64(double %i.gw) ; 2 uses
  %sin.i168 = extractvalue { double, double } %sincos.i167, 0
  %cos.i169 = extractvalue { double, double } %sincos.i167, 1 ; 2 uses
  %i.gx = fdiv nsz double %sin.i168, 1.414000e+00 ; 2 uses
  %i.gy = fadd nsz double %i.gx, 1.000000e+00
  %i.gz = fdiv nsz double 1.000000e+00, %i.gy     ; 3 uses
  %i.ha = fsub nsz double 1.000000e+00, %cos.i169
  %i.hb = fmul nsz double %i.ha, %i.gz
  %i.hc = fmul nsz double %i.hb, 5.000000e-01     ; 4 uses
  store double %i.hc, ptr %i.gu, align 8, !tbaa !54
  %i.hd = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  store double %i.hc, ptr %i.hd, align 8, !tbaa !56
  %i.he = fadd nsz double %i.hc, %i.hc
  %i.hf = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  store double %i.he, ptr %i.hf, align 8, !tbaa !55
  %i.hg = fmul nsz double %cos.i169, -2.000000e+00
  %i.hh = fmul nsz double %i.hg, %i.gz
  %i.hi = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  store double %i.hh, ptr %i.hi, align 8, !tbaa !61
  %i.hj = fsub nsz double 1.000000e+00, %i.gx
  %i.hk = fmul nsz double %i.hj, %i.gz
  %i.hl = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  store double %i.hk, ptr %i.hl, align 8, !tbaa !62
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.h
  %.0158 = phi i32 [ 0, %bb.h ], [ -12, %bb.b ]
  ret i32 %.0158
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @av_frame_is_writable(ptr noundef) local_unnamed_addr #3

declare ptr @ff_get_audio_buffer(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @av_frame_free(ptr noundef) local_unnamed_addr #3

declare i32 @av_frame_copy_props(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_filter_execute(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @filter_channels(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load double, ptr %i.c, align 8, !tbaa !63 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load double, ptr %i.e, align 8, !tbaa !64 ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !41     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 388
  %i.i = load i32, ptr %i.h, align 4, !tbaa !65
  %i.j = sext i32 %i.i to i64                     ; 2 uses
  %i.k = sext i32 %2 to i64
  %i.l = mul nsw i64 %i.j, %i.k
  %i.m = sext i32 %3 to i64                       ; 2 uses
  %i.n = sdiv i64 %i.l, %i.m                      ; 2 uses
  %i.o = trunc i64 %i.n to i32
  %i.p = add nsw i32 %2, 1
  %i.q = sext i32 %i.p to i64
  %i.r = mul nsw i64 %i.j, %i.q
  %i.s = sdiv i64 %i.r, %i.m                      ; 2 uses
  %i.t = trunc i64 %i.s to i32
  %i.u = icmp slt i32 %i.o, %i.t
  br i1 %i.u, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !43
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !66   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !46
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 96
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !66 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !66 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !57
  %.not = icmp eq i32 %i.ah, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !35 ; 2 uses
  %i.at = icmp sgt i32 %i.as, 0                   ; 2 uses
  %wide.trip.count.i55.us = zext nneg i32 %i.as to i64 ; 3 uses
  %sext94 = shl i64 %i.n, 32
  %i.au = ashr exact i64 %sext94, 32              ; 2 uses
  %sext95 = shl i64 %i.s, 32
  %wide.trip.count86 = ashr exact i64 %sext95, 32 ; 2 uses
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %i.at, label %.lr.ph.preheader.i54.us.us, label %._crit_edge

.lr.ph.preheader.i54.us.us:                       ; preds = %.lr.ph.split.us, %biquad_process.exit62.loopexit.us.us
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %biquad_process.exit62.loopexit.us.us ], [ %i.au, %.lr.ph.split.us ] ; 4 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %i.y, i64 %indvars.iv83
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !67
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %indvars.iv83
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !67 ; 3 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %indvars.iv83
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !67
  %i.bb = load double, ptr %i.af, align 8, !tbaa !54
  %i.bc = load double, ptr %i.an, align 8, !tbaa !55
  %i.bd = load double, ptr %i.ao, align 8, !tbaa !56
end_hunk_0
