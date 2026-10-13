Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_biquads?download=true
inline.NumInlined: 7
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 21
begin_hunk_0_@activate:bb.a
bb.m:                                             ; preds = %bb.l
  %i.ab = call ptr @ff_get_audio_buffer(ptr noundef %i.i, i32 noundef %i.z) #14 ; 2 uses
  %.not47.not = icmp eq ptr %i.ab, null
  br i1 %.not47.not, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = call fastcc i32 @filter_frame(ptr noundef %i.f, ptr noundef nonnull %i.ab, i32 noundef 1)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  %.2 = phi i32 [ %i.ac, %bb.n ], [ 0, %bb.l ]
  %i.ad = load i32, ptr %i.c, align 4, !tbaa !28
  %i.ae = load i64, ptr %i.b, align 8, !tbaa !70
  call void @ff_avfilter_link_set_in_status(ptr noundef %i.i, i32 noundef %i.ad, i64 noundef %i.ae) #14
  br label %.thread

bb.p:                                             ; preds = %bb.k
  %i.af = call i32 @ff_outlink_frame_wanted(ptr noundef %i.i) #14
  %.not46 = icmp eq i32 %i.af, 0
  br i1 %.not46, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @ff_inlink_request_frame(ptr noundef %i.f) #14
  br label %.thread

.thread:                                          ; preds = %bb.m, %bb.b, %bb.p, %bb.e, %bb.q, %bb.o, %bb.j, %bb.g
  %.238 = phi i32 [ 0, %bb.b ], [ %i.t, %bb.g ], [ 0, %bb.j ], [ %.2, %bb.o ], [ -1497649742, %bb.p ], [ 0, %bb.q ], [ %.034, %bb.e ], [ -12, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.238
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @bass_init(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 2, ptr %i.c, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  store i64 -9223372036854775808, ptr %i.d, align 8, !tbaa !26
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @lowshelf_init(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 9, ptr %i.c, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  store i64 -9223372036854775808, ptr %i.d, align 8, !tbaa !26
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @treble_init(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 3, ptr %i.c, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  store i64 -9223372036854775808, ptr %i.d, align 8, !tbaa !26
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @highshelf_init(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 10, ptr %i.c, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  store i64 -9223372036854775808, ptr %i.d, align 8, !tbaa !26
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @tiltshelf_init(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 11, ptr %i.c, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  store i64 -9223372036854775808, ptr %i.d, align 8, !tbaa !26
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @bandpass_init(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 4, ptr %i.c, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  store i64 -9223372036854775808, ptr %i.d, align 8, !tbaa !26
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @bandreject_init(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 5, ptr %i.c, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  store i64 -9223372036854775808, ptr %i.d, align 8, !tbaa !26
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @lowpass_init(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 8, ptr %i.c, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  store i64 -9223372036854775808, ptr %i.d, align 8, !tbaa !26
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @highpass_init(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 7, ptr %i.c, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  store i64 -9223372036854775808, ptr %i.d, align 8, !tbaa !26
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @allpass_init(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 6, ptr %i.c, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  store i64 -9223372036854775808, ptr %i.d, align 8, !tbaa !26
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @biquad_init(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 0, ptr %i.c, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  store i64 -9223372036854775808, ptr %i.d, align 8, !tbaa !26
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -22, 1) i32 @config_output(ptr noundef %0) #2 {
bb.a:
  %i.a = tail call fastcc i32 @config_filter(ptr noundef %0, i32 noundef 1)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -22, 1) i32 @config_filter(ptr noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !71     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 124 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !31   ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !25   ; 4 uses
  %i.j = icmp eq i32 %i.i, 11
  %i.k = uitofp i1 %i.j to double
  %i.l = fadd nnan nsz double %i.k, 1.000000e+00
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !72
  %i.p = sitofp nsz i32 %i.o to double
  %i.q = load double, ptr %i.m, align 8, !tbaa !73 ; 2 uses
  %i.r = load <2 x double>, ptr %i.g, align 8, !tbaa !43
  %i.s = insertelement <2 x double> <double poison, double f0x401921FB54442D18>, double %i.l, i64 0
  %i.t = fmul nsz <2 x double> %i.r, %i.s         ; 3 uses
  %i.u = insertelement <2 x double> <double 4.000000e+01, double poison>, double %i.p, i64 1
  %i.v = fdiv nsz <2 x double> %i.t, %i.u         ; 2 uses
  %i.w = extractelement <2 x double> %i.v, i64 1  ; 10 uses
  %i.x = extractelement <2 x double> %i.v, i64 0
  %i.y = fmul nsz double %i.x, f0x400A934F0979A371
  %i.z = tail call nsz double @llvm.exp2.f64(double %i.y) ; 17 uses
  %sincos478 = tail call nsz { double, double } @llvm.sincos.f64(double %i.w) ; 2 uses
  %sin479 = extractvalue { double, double } %sincos478, 0 ; 8 uses
  %cos480 = extractvalue { double, double } %sincos478, 1 ; 7 uses
  %i.aa = fmul nsz double %i.w, 5.000000e-01      ; 5 uses
  %i.ab = tail call nsz double @llvm.tan.f64(double %i.aa) ; 2 uses
  %i.ac = fcmp nsz ogt double %i.w, f0x400921FB54442D18
  %i.ad = fcmp nsz ole double %i.w, 0.000000e+00
  %or.cond = or i1 %i.ac, %i.ad                   ; 2 uses
  %i.ae = icmp ne i32 %1, 0                       ; 2 uses
  %or.cond4 = and i1 %i.ae, %or.cond
  br i1 %or.cond4, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.ag = load double, ptr %i.af, align 8, !tbaa !74
  %i.ah = fcmp nsz ugt double %i.ag, 0.000000e+00
  br i1 %i.ah, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.ai = icmp ne i32 %i.i, 0                     ; 2 uses
  %i.aj = zext i1 %i.ai to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !44
  br i1 %i.ai, label %bb.d, label %.thread494

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.a, i32 noundef 24, ptr noundef nonnull @.str.25) #14
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  store i32 0, ptr %i.al, align 4, !tbaa !44
  %.not = icmp ne i32 %i.i, 0
  %or.cond500.not = select i1 %or.cond, i1 %.not, i1 false
  br i1 %or.cond500.not, label %.loopexit, label %.thread494

.thread494:                                       ; preds = %bb.c, %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !75
  switch i32 %i.an, label %bb.k [
    i32 0, label %bb.l
    i32 1, label %bb.f
    i32 5, label %bb.g
    i32 2, label %bb.h
    i32 3, label %bb.i
    i32 4, label %bb.j
  ]

bb.f:                                             ; preds = %.thread494
  %i.ao = fmul nsz double %i.q, 2.000000e+00
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !74
  %i.ar = fdiv nsz double %i.ao, %i.aq
  %i.as = fdiv nsz double %sin479, %i.ar
  br label %bb.l

bb.g:                                             ; preds = %.thread494
  %i.at = fmul nsz double %i.q, 2.000000e+00
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.av = load double, ptr %i.au, align 8, !tbaa !74
  %i.aw = fmul nsz double %i.av, 1.000000e+03
  %i.ax = fdiv nsz double %i.at, %i.aw
  %i.ay = fdiv nsz double %sin479, %i.ax
  br label %bb.l

bb.h:                                             ; preds = %.thread494
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.ba = load double, ptr %i.az, align 8, !tbaa !74
  %i.bb = fmul nsz double %i.ba, f0x3FD62E42FEFA39EF
  %i.bc = fmul nsz double %i.w, %i.bb
  %i.bd = fdiv nsz double %i.bc, %sin479
  %i.be = tail call nsz double @llvm.sinh.f64(double %i.bd)
  %i.bf = fmul nsz double %sin479, %i.be
  br label %bb.l

bb.i:                                             ; preds = %.thread494
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !74
  %i.bi = fmul nsz double %i.bh, 2.000000e+00
  %i.bj = fdiv nsz double %sin479, %i.bi
  br label %bb.l

bb.j:                                             ; preds = %.thread494
  %i.bk = fmul nsz double %sin479, 5.000000e-01
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !74
  %i.bn = insertelement <2 x double> poison, double %i.z, i64 0
  %i.bo = insertelement <2 x double> %i.bn, double %i.bm, i64 1
  %i.bp = fdiv nsz <2 x double> splat (double 1.000000e+00), %i.bo
  %i.bq = insertelement <2 x double> <double poison, double -1.000000e+00>, double %i.z, i64 0
  %i.br = fadd nsz <2 x double> %i.bq, %i.bp      ; 2 uses
  %i.bs = extractelement <2 x double> %i.br, i64 0
  %i.bt = extractelement <2 x double> %i.br, i64 1
  %i.bu = tail call nsz double @llvm.fmuladd.f64(double %i.bs, double %i.bt, double 2.000000e+00)
  %i.bv = tail call nsz double @llvm.sqrt.f64(double %i.bu)
  %i.bw = fmul nsz double %i.bk, %i.bv
  br label %bb.l

bb.k:                                             ; preds = %.thread494
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef 837) #14
  tail call void @abort() #15
  unreachable

bb.l:                                             ; preds = %.thread494, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.0460 = phi nsz double [ %i.bw, %bb.j ], [ %i.as, %bb.f ], [ %i.ay, %bb.g ], [ %i.bf, %bb.h ], [ %i.bj, %bb.i ], [ 0.000000e+00, %.thread494 ] ; 19 uses
  %i.bx = tail call nsz double @llvm.sqrt.f64(double %i.z)
  %i.by = fmul nsz double %i.bx, 2.000000e+00     ; 3 uses
  switch i32 %i.i, label %bb.an [
    i32 0, label %bb.m
    i32 1, label %bb.n
    i32 2, label %bb.o
    i32 11, label %bb.p
    i32 9, label %bb.p
    i32 3, label %bb.u
    i32 10, label %bb.v
    i32 4, label %bb.aa
    i32 5, label %bb.ad
    i32 8, label %bb.ae
    i32 7, label %bb.ah
    i32 6, label %bb.ak
  ]

bb.m:                                             ; preds = %bb.l
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.cb = load <2 x double>, ptr %i.bz, align 8, !tbaa !43 ; 3 uses
  store <2 x double> %i.cb, ptr %i.ca, align 8, !tbaa !43
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.ce = load <2 x double>, ptr %i.cc, align 8, !tbaa !43 ; 3 uses
  store <2 x double> %i.ce, ptr %i.cd, align 8, !tbaa !43
  %i.cf = getelementptr inbounds nuw i8, ptr %i.c, i64 216
  %i.cg = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.ch = load <2 x double>, ptr %i.cf, align 8, !tbaa !43 ; 3 uses
  store <2 x double> %i.ch, ptr %i.cg, align 8, !tbaa !43
  %i.ci = extractelement <2 x double> %i.cb, i64 0
  %i.cj = extractelement <2 x double> %i.cb, i64 1
  %i.ck = extractelement <2 x double> %i.ce, i64 0
  %i.cl = extractelement <2 x double> %i.ce, i64 1
  %i.cm = extractelement <2 x double> %i.ch, i64 0
  %i.cn = extractelement <2 x double> %i.ch, i64 1
  br label %bb.ao

bb.n:                                             ; preds = %bb.l
  %i.co = fdiv nsz double %.0460, %i.z            ; 2 uses
  %i.cp = fadd nsz double %i.co, 1.000000e+00     ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  store double %i.cp, ptr %i.cq, align 8, !tbaa !43
  %i.cr = tail call nsz double @llvm.cos.f64(double %i.w)
  %i.cs = fmul nsz double %i.cr, -2.000000e+00    ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  store double %i.cs, ptr %i.ct, align 8, !tbaa !43
  %i.cu = fsub nsz double 1.000000e+00, %i.co     ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  store double %i.cu, ptr %i.cv, align 8, !tbaa !43
  %i.cw = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.cx = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  store double %i.cs, ptr %i.cx, align 8, !tbaa !43
  %i.cy = fneg nsz double %.0460
  %i.cz = insertelement <2 x double> poison, double %.0460, i64 0
  %i.da = insertelement <2 x double> %i.cz, double %i.cy, i64 1
  %i.db = insertelement <2 x double> poison, double %i.z, i64 0
  %i.dc = shufflevector <2 x double> %i.db, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dd = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.da, <2 x double> %i.dc, <2 x double> splat (double 1.000000e+00)) ; 2 uses
  %i.de = extractelement <2 x double> %i.dd, i64 0 ; 2 uses
  store double %i.de, ptr %i.cw, align 8, !tbaa !43
  %i.df = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.dg = extractelement <2 x double> %i.dd, i64 1 ; 2 uses
  store double %i.dg, ptr %i.df, align 8, !tbaa !43
  br label %bb.ao

bb.o:                                             ; preds = %bb.l
  %i.dh = tail call nsz double @llvm.fmuladd.f64(double %i.z, double %i.z, double 1.000000e+00)
  %i.di = fadd nsz double %i.z, -1.000000e+00     ; 2 uses
  %i.dj = fneg nsz double %i.di
  %i.dk = tail call nsz double @llvm.fmuladd.f64(double %i.dj, double %i.di, double %i.dh)
  %i.dl = tail call nsz double @llvm.sqrt.f64(double %i.dk)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l, %bb.l
  %.0458 = phi nsz double [ %i.dl, %bb.o ], [ %i.by, %bb.l ], [ %i.by, %bb.l ] ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !76
  %i.do = icmp eq i32 %i.dn, 1
  br i1 %i.do, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.dp = extractelement <2 x double> %i.t, i64 0
  %i.dq = fdiv nsz double %i.dp, 2.000000e+01
  %i.dr = fmul nsz double %i.dq, f0x400A934F0979A371
  %i.ds = tail call nsz double @llvm.exp2.f64(double %i.dr) ; 4 uses
  %i.dt = fadd nsz double %i.aa, f0xBFE921FB54442D18
  %i.du = tail call nsz double @llvm.sin.f64(double %i.dt)
  %i.dv = fneg nsz double %i.du
  %i.dw = fadd nsz double %i.aa, f0x3FE921FB54442D18
  %i.dx = tail call nsz double @llvm.sin.f64(double %i.dw)
  %i.dy = fdiv nsz double %i.dv, %i.dx            ; 3 uses
  %i.dz = fadd nsz double %i.ds, 1.000000e+00     ; 2 uses
  %i.ea = fcmp nsz oeq double %i.ds, 1.000000e+00
  br i1 %i.ea, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.eb = fadd nsz double %i.ds, -1.000000e+00
  %i.ec = fdiv nsz double %i.dz, %i.eb            ; 4 uses
  %i.ed = fcmp nsz ogt double %i.ec, 0.000000e+00
  %i.ee = tail call nsz double @llvm.fmuladd.f64(double %i.ec, double %i.ec, double -1.000000e+00)
  %i.ef = tail call nsz double @llvm.sqrt.f64(double %i.ee)
  %i.eg = select nsz i1 %i.ed, double -1.000000e+00, double 1.000000e+00
  %i.eh = tail call nsz double @llvm.fmuladd.f64(double %i.eg, double %i.ef, double %i.ec)
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.ei = phi nsz double [ %i.eh, %bb.r ], [ 0.000000e+00, %bb.q ] ; 3 uses
  %i.ej = fsub nsz double 1.000000e+00, %i.ds
  %i.ek = tail call nsz double @llvm.fmuladd.f64(double %i.dy, double %i.ei, double 1.000000e+00) ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  store double %i.ek, ptr %i.el, align 8, !tbaa !43
  %i.em = fneg nsz double %i.dy                   ; 2 uses
  %i.en = fsub nsz double %i.em, %i.ei            ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  store double %i.en, ptr %i.eo, align 8, !tbaa !43
  %i.ep = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  store double 0.000000e+00, ptr %i.ep, align 8, !tbaa !43
  %i.eq = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.er = insertelement <2 x double> poison, double %i.ej, i64 0
  %i.es = insertelement <2 x double> %i.er, double %i.dz, i64 1 ; 2 uses
  %i.et = insertelement <2 x double> poison, double %i.ei, i64 0
  %i.eu = shufflevector <2 x double> %i.et, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ev = shufflevector <2 x double> %i.es, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ew = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.es, <2 x double> %i.eu, <2 x double> %i.ev)
  %i.ex = fmul nsz <2 x double> %i.ew, splat (double 5.000000e-01) ; 3 uses
  %i.ey = insertelement <2 x double> poison, double %i.em, i64 0
  %i.ez = insertelement <2 x double> %i.ey, double %i.dy, i64 1
  %i.fa = fneg nsz <2 x double> %i.ex
  %i.fb = shufflevector <2 x double> %i.fa, <2 x double> %i.ex, <2 x i32> <i32 1, i32 2>
  %i.fc = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ez, <2 x double> %i.ex, <2 x double> %i.fb) ; 3 uses
  %i.fd = shufflevector <2 x double> %i.fc, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.fd, ptr %i.eq, align 8, !tbaa !43
  %i.fe = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  store double 0.000000e+00, ptr %i.fe, align 8, !tbaa !43
  %i.ff = extractelement <2 x double> %i.fc, i64 0
  %i.fg = extractelement <2 x double> %i.fc, i64 1
  br label %bb.ao

bb.t:                                             ; preds = %bb.p
  %i.fh = insertelement <2 x double> poison, double %i.z, i64 0
  %i.fi = shufflevector <2 x double> %i.fh, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fj = fadd nsz <2 x double> %i.fi, <double 1.000000e+00, double -1.000000e+00> ; 5 uses
  %i.fk = tail call nsz double @llvm.cos.f64(double %i.w) ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.fm = insertelement <2 x double> poison, double %i.fk, i64 0
  %i.fn = shufflevector <2 x double> %i.fm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fo = shufflevector <2 x double> %i.fj, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.fp = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fj, <2 x double> %i.fn, <2 x double> %i.fo) ; 2 uses
  %i.fq = extractelement <2 x double> %i.fp, i64 0
  %i.fr = fmul nsz double %i.fq, -2.000000e+00    ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  store double %i.fr, ptr %i.fs, align 8, !tbaa !43
  %i.ft = fneg nsz double %.0458                  ; 2 uses
  %i.fu = insertelement <2 x double> poison, double %.0458, i64 0 ; 2 uses
  %i.fv = insertelement <2 x double> %i.fu, double %i.ft, i64 1
  %i.fw = insertelement <2 x double> poison, double %.0460, i64 0 ; 2 uses
  %i.fx = shufflevector <2 x double> %i.fw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fy = shufflevector <2 x double> %i.fp, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fz = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fv, <2 x double> %i.fx, <2 x double> %i.fy) ; 2 uses
  %i.ga = extractelement <2 x double> %i.fz, i64 0 ; 2 uses
  store double %i.ga, ptr %i.fl, align 8, !tbaa !43
  %i.gb = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.gc = extractelement <2 x double> %i.fz, i64 1 ; 2 uses
  store double %i.gc, ptr %i.gb, align 8, !tbaa !43
  %i.gd = extractelement <2 x double> %i.fj, i64 0
  %i.ge = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.gf = fneg nsz <2 x double> %i.fj             ; 2 uses
  %i.gg = extractelement <2 x double> %i.gf, i64 1
  %i.gh = tail call nsz double @llvm.fmuladd.f64(double %i.gg, double %i.fk, double %i.gd) ; 2 uses
  %i.gi = fmul nsz <2 x double> %i.fi, <double 1.000000e+00, double 2.000000e+00>
  %i.gj = shufflevector <2 x double> %i.fu, <2 x double> %i.gf, <2 x i32> <i32 0, i32 2>
  %i.gk = insertelement <2 x double> %i.fw, double %i.fk, i64 1
  %i.gl = insertelement <2 x double> %i.fj, double %i.gh, i64 0
  %i.gm = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gj, <2 x double> %i.gk, <2 x double> %i.gl)
  %i.gn = fmul nsz <2 x double> %i.gi, %i.gm      ; 3 uses
  store <2 x double> %i.gn, ptr %i.ge, align 8, !tbaa !43
  %i.go = tail call nsz double @llvm.fmuladd.f64(double %i.ft, double %.0460, double %i.gh)
  %i.gp = fmul nsz double %i.z, %i.go             ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  store double %i.gp, ptr %i.gq, align 8, !tbaa !43
  %i.gr = extractelement <2 x double> %i.gn, i64 0
  %i.gs = extractelement <2 x double> %i.gn, i64 1
  br label %bb.ao

bb.u:                                             ; preds = %bb.l
  %i.gt = tail call nsz double @llvm.fmuladd.f64(double %i.z, double %i.z, double 1.000000e+00)
  %i.gu = fadd nsz double %i.z, -1.000000e+00     ; 2 uses
  %i.gv = fneg nsz double %i.gu
  %i.gw = tail call nsz double @llvm.fmuladd.f64(double %i.gv, double %i.gu, double %i.gt)
  %i.gx = tail call nsz double @llvm.sqrt.f64(double %i.gw)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.l
  %.1459 = phi nsz double [ %i.gx, %bb.u ], [ %i.by, %bb.l ] ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !76
  %i.ha = icmp eq i32 %i.gz, 1
  br i1 %i.ha, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.hb = extractelement <2 x double> %i.t, i64 0
  %i.hc = fdiv nsz double %i.hb, 2.000000e+01
  %i.hd = fmul nsz double %i.hc, f0x400A934F0979A371
  %i.he = tail call nsz double @llvm.exp2.f64(double %i.hd) ; 4 uses
  %i.hf = fadd nsz double %i.aa, f0xBFE921FB54442D18
  %i.hg = tail call nsz double @llvm.sin.f64(double %i.hf)
  %i.hh = fadd nsz double %i.aa, f0x3FE921FB54442D18
  %i.hi = tail call nsz double @llvm.sin.f64(double %i.hh)
  %i.hj = fdiv nsz double %i.hg, %i.hi            ; 4 uses
  %i.hk = fadd nsz double %i.he, 1.000000e+00     ; 3 uses
  %i.hl = fcmp nsz oeq double %i.he, 1.000000e+00
  br i1 %i.hl, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.hm = fadd nsz double %i.he, -1.000000e+00
  %i.hn = fdiv nsz double %i.hk, %i.hm            ; 4 uses
  %i.ho = fcmp nsz ogt double %i.hn, 0.000000e+00
  %i.hp = tail call nsz double @llvm.fmuladd.f64(double %i.hn, double %i.hn, double -1.000000e+00)
  %i.hq = tail call nsz double @llvm.sqrt.f64(double %i.hp)
  %i.hr = select nsz i1 %i.ho, double -1.000000e+00, double 1.000000e+00
  %i.hs = tail call nsz double @llvm.fmuladd.f64(double %i.hr, double %i.hq, double %i.hn)
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.ht = phi nsz double [ %i.hs, %bb.x ], [ 0.000000e+00, %bb.w ] ; 4 uses
  %i.hu = fsub nsz double 1.000000e+00, %i.he     ; 2 uses
  %i.hv = tail call nsz double @llvm.fmuladd.f64(double %i.hu, double %i.ht, double %i.hk)
  %i.hw = fmul nsz double %i.hv, 5.000000e-01     ; 2 uses
  %i.hx = tail call nsz double @llvm.fmuladd.f64(double %i.hk, double %i.ht, double %i.hu)
  %i.hy = fmul nsz double %i.hx, 5.000000e-01     ; 2 uses
  %i.hz = tail call nsz double @llvm.fmuladd.f64(double %i.hj, double %i.ht, double 1.000000e+00) ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  store double %i.hz, ptr %i.ia, align 8, !tbaa !43
  %i.ib = fadd nsz double %i.hj, %i.ht            ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  store double %i.ib, ptr %i.ic, align 8, !tbaa !43
  %i.id = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.ie = tail call nsz double @llvm.fmuladd.f64(double %i.hj, double %i.hy, double %i.hw) ; 2 uses
  %i.if = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.ie, i64 1
  store <2 x double> %i.if, ptr %i.id, align 8, !tbaa !43
  %i.ig = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.ih = tail call nsz double @llvm.fmuladd.f64(double %i.hj, double %i.hw, double %i.hy) ; 2 uses
  %i.ii = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.ih, i64 0
  store <2 x double> %i.ii, ptr %i.ig, align 8, !tbaa !43
  br label %bb.ao

bb.z:                                             ; preds = %bb.v
  %2 = insertelement <2 x double> poison, double %i.z, i64 0
  %3 = shufflevector <2 x double> %2, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %4 = fadd nsz <2 x double> %3, <double -1.000000e+00, double 1.000000e+00> ; 6 uses
  %i.ij = tail call nsz double @llvm.cos.f64(double %i.w) ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %5 = fneg nsz <2 x double> %4                   ; 2 uses
  %i.il = insertelement <2 x double> %5, double %.1459, i64 0
  %i.im = insertelement <2 x double> poison, double %.0460, i64 0 ; 2 uses
  %i.in = insertelement <2 x double> %i.im, double %i.ij, i64 1 ; 2 uses
  %i.io = fneg nsz double %.1459
  %i.ip = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.iq = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %6 = shufflevector <2 x double> %5, <2 x double> %4, <2 x i32> <i32 0, i32 2>
  %i.ir = insertelement <2 x double> poison, double %i.ij, i64 0
  %i.is = shufflevector <2 x double> %i.ir, <2 x double> poison, <2 x i32> zeroinitializer
  %7 = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.it = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %6, <2 x double> %i.is, <2 x double> %7) ; 3 uses
  %8 = shufflevector <2 x double> %i.it, <2 x double> %4, <2 x i32> <i32 0, i32 2>
  %i.iu = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.il, <2 x double> %i.in, <2 x double> %8) ; 2 uses
  %i.iv = fmul nsz <2 x double> %i.iu, <double 1.000000e+00, double 2.000000e+00> ; 2 uses
  store <2 x double> %i.iv, ptr %i.ik, align 8, !tbaa !43
  %i.iw = fmul nsz <2 x double> %3, <double 1.000000e+00, double -2.000000e+00>
  %i.ix = insertelement <2 x double> %4, double %.1459, i64 0
  %9 = shufflevector <2 x double> %i.it, <2 x double> %4, <2 x i32> <i32 1, i32 2>
  %i.iy = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ix, <2 x double> %i.in, <2 x double> %9)
  %i.iz = fmul nsz <2 x double> %i.iw, %i.iy      ; 3 uses
  store <2 x double> %i.iz, ptr %i.iq, align 8, !tbaa !43
  %i.ja = insertelement <2 x double> poison, double %i.io, i64 0
  %i.jb = shufflevector <2 x double> %i.ja, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jc = shufflevector <2 x double> %i.im, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jd = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jb, <2 x double> %i.jc, <2 x double> %i.it) ; 2 uses
  %i.je = extractelement <2 x double> %i.jd, i64 0 ; 2 uses
  store double %i.je, ptr %i.ip, align 8, !tbaa !43
  %i.jf = extractelement <2 x double> %i.jd, i64 1
  %i.jg = fmul nsz double %i.z, %i.jf             ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  store double %i.jg, ptr %i.jh, align 8, !tbaa !43
  %i.ji = extractelement <2 x double> %i.iv, i64 1
  %i.jj = extractelement <2 x double> %i.iu, i64 0
  %i.jk = extractelement <2 x double> %i.iz, i64 0
  %i.jl = extractelement <2 x double> %i.iz, i64 1
  br label %bb.ao

bb.aa:                                            ; preds = %bb.l
  %i.jm = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !77
  %.not477 = icmp eq i32 %i.jn, 0
  %i.jo = fadd nsz double %.0460, 1.000000e+00    ; 3 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  store double %i.jo, ptr %i.jp, align 8, !tbaa !43
  %i.jq = fmul nsz double %cos480, -2.000000e+00  ; 3 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  store double %i.jq, ptr %i.jr, align 8, !tbaa !43
  %i.js = fsub nsz double 1.000000e+00, %.0460    ; 3 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  store double %i.js, ptr %i.jt, align 8, !tbaa !43
  br i1 %.not477, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ju = fmul nsz double %sin479, 5.000000e-01   ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  store double %i.ju, ptr %i.jv, align 8, !tbaa !43
  %i.jw = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  store double 0.000000e+00, ptr %i.jw, align 8, !tbaa !43
  %i.jx = fmul nsz double %sin479, -5.000000e-01  ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  store double %i.jx, ptr %i.jy, align 8, !tbaa !43
  br label %bb.ao

bb.ac:                                            ; preds = %bb.aa
  %i.jz = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.ka = insertelement <2 x double> <double poison, double 0.000000e+00>, double %.0460, i64 0
  store <2 x double> %i.ka, ptr %i.jz, align 8, !tbaa !43
  %i.kb = fneg nsz double %.0460                  ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  store double %i.kb, ptr %i.kc, align 8, !tbaa !43
  br label %bb.ao

bb.ad:                                            ; preds = %bb.l
  %i.kd = fadd nsz double %.0460, 1.000000e+00    ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  store double %i.kd, ptr %i.ke, align 8, !tbaa !43
  %i.kf = fmul nsz double %cos480, -2.000000e+00  ; 4 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  store double %i.kf, ptr %i.kg, align 8, !tbaa !43
  %i.kh = fsub nsz double 1.000000e+00, %.0460    ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  store double %i.kh, ptr %i.ki, align 8, !tbaa !43
  %i.kj = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  store double 1.000000e+00, ptr %i.kj, align 8, !tbaa !43
  %i.kk = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  store double %i.kf, ptr %i.kk, align 8, !tbaa !43
  %i.kl = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  store double 1.000000e+00, ptr %i.kl, align 8, !tbaa !43
  br label %bb.ao

bb.ae:                                            ; preds = %bb.l
  %i.km = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.kn = load i32, ptr %i.km, align 8, !tbaa !76
  %i.ko = icmp eq i32 %i.kn, 1
  %i.kp = getelementptr inbounds nuw i8, ptr %i.c, i64 128 ; 2 uses
  br i1 %i.ko, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.kq = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  store double 1.000000e+00, ptr %i.kq, align 8, !tbaa !43
  %i.kr = fneg nsz double %i.w
  %i.ks = tail call nsz double @llvm.exp.f64(double %i.kr) ; 2 uses
  %i.kt = fneg nsz double %i.ks                   ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  store double %i.kt, ptr %i.ku, align 8, !tbaa !43
  store double 0.000000e+00, ptr %i.kp, align 8, !tbaa !43
  %i.kv = fsub nsz double 1.000000e+00, %i.ks     ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  store double %i.kv, ptr %i.kw, align 8, !tbaa !43
  %i.kx = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kx, i8 0, i64 16, i1 false)
  br label %bb.ao

bb.ag:                                            ; preds = %bb.ae
  %i.ky = fadd nsz double %.0460, 1.000000e+00    ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  store double %i.ky, ptr %i.kz, align 8, !tbaa !43
  %i.la = fmul nsz double %cos480, -2.000000e+00  ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  store double %i.la, ptr %i.lb, align 8, !tbaa !43
  %i.lc = fsub nsz double 1.000000e+00, %.0460    ; 2 uses
  store double %i.lc, ptr %i.kp, align 8, !tbaa !43
  %i.ld = fsub nsz double 1.000000e+00, %cos480   ; 3 uses
  %i.le = fmul nsz double %i.ld, 5.000000e-01     ; 4 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  store double %i.le, ptr %i.lf, align 8, !tbaa !43
  %i.lg = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  store double %i.ld, ptr %i.lg, align 8, !tbaa !43
  %i.lh = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  store double %i.le, ptr %i.lh, align 8, !tbaa !43
  br label %bb.ao

bb.ah:                                            ; preds = %bb.l
  %i.li = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.lj = load i32, ptr %i.li, align 8, !tbaa !76
  %i.lk = icmp eq i32 %i.lj, 1
  %i.ll = getelementptr inbounds nuw i8, ptr %i.c, i64 128 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.c, i64 136 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.c, i64 144 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.c, i64 152 ; 2 uses
  br i1 %i.lk, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.lp = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  store double 1.000000e+00, ptr %i.lp, align 8, !tbaa !43
  %i.lq = fneg nsz double %i.w
  %i.lr = tail call nsz double @llvm.exp.f64(double %i.lq) ; 2 uses
  %i.ls = fneg nsz double %i.lr                   ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  store double %i.ls, ptr %i.lt, align 8, !tbaa !43
  store double 0.000000e+00, ptr %i.ll, align 8, !tbaa !43
  %i.lu = fadd nsz double %i.lr, 1.000000e+00
  %i.lv = fmul nsz double %i.lu, 5.000000e-01     ; 3 uses
  store double %i.lv, ptr %i.lm, align 8, !tbaa !43
  %i.lw = fneg nsz double %i.lv                   ; 2 uses
  store double %i.lw, ptr %i.ln, align 8, !tbaa !43
  store double 0.000000e+00, ptr %i.lo, align 8, !tbaa !43
  br label %bb.ao

bb.aj:                                            ; preds = %bb.ah
  %i.lx = fadd nsz double %.0460, 1.000000e+00    ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  store double %i.lx, ptr %i.ly, align 8, !tbaa !43
  %i.lz = fmul nsz double %cos480, -2.000000e+00  ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  store double %i.lz, ptr %i.ma, align 8, !tbaa !43
  %i.mb = fsub nsz double 1.000000e+00, %.0460    ; 2 uses
  store double %i.mb, ptr %i.ll, align 8, !tbaa !43
  %i.mc = fadd nsz double %cos480, 1.000000e+00   ; 2 uses
  %i.md = fmul nsz double %i.mc, 5.000000e-01     ; 4 uses
  store double %i.md, ptr %i.lm, align 8, !tbaa !43
  %i.me = fneg nsz double %i.mc                   ; 2 uses
  store double %i.me, ptr %i.ln, align 8, !tbaa !43
  store double %i.md, ptr %i.lo, align 8, !tbaa !43
  br label %bb.ao

bb.ak:                                            ; preds = %bb.l
  %i.mf = getelementptr inbounds nuw i8, ptr %i.c, i64 108
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !78
  switch i32 %i.mg, label %._crit_edge [
    i32 1, label %bb.al
    i32 2, label %bb.am
  ]

._crit_edge:                                      ; preds = %bb.ak
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %.pre = load double, ptr %.phi.trans.insert, align 8, !tbaa !43
  %.phi.trans.insert503 = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %.pre504 = load double, ptr %.phi.trans.insert503, align 8, !tbaa !43
  %.phi.trans.insert505 = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %.pre506 = load double, ptr %.phi.trans.insert505, align 8, !tbaa !43
  %.phi.trans.insert507 = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %.pre508 = load double, ptr %.phi.trans.insert507, align 8, !tbaa !43
  %.phi.trans.insert509 = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %.pre510 = load double, ptr %.phi.trans.insert509, align 8, !tbaa !43
  %.phi.trans.insert511 = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %.pre512 = load double, ptr %.phi.trans.insert511, align 8, !tbaa !43
  br label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.mh = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  store double 1.000000e+00, ptr %i.mh, align 8, !tbaa !43
  %i.mi = fadd nsz double %i.ab, -1.000000e+00
  %i.mj = fadd nsz double %i.ab, 1.000000e+00
  %i.mk = fdiv nsz double %i.mi, %i.mj            ; 4 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  store double %i.mk, ptr %i.ml, align 8, !tbaa !43
  %i.mm = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  store double 0.000000e+00, ptr %i.mm, align 8, !tbaa !43
  %i.mn = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  store double %i.mk, ptr %i.mn, align 8, !tbaa !43
  %i.mo = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %i.mo, align 8, !tbaa !43
  br label %bb.ao

bb.am:                                            ; preds = %bb.ak
  %i.mp = fadd nsz double %.0460, 1.000000e+00    ; 4 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  store double %i.mp, ptr %i.mq, align 8, !tbaa !43
end_hunk_0
begin_hunk_1_@config_filter:bb.a

bb.bk:                                            ; preds = %bb.bj
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef 1119) #14
  tail call void @abort() #15
  unreachable

bb.bl:                                            ; preds = %.critedge491
  %i.sh = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %i.si = load i32, ptr %i.sh, align 4, !tbaa !81
  %switch.tableidx552 = add i32 %i.si, -6         ; 2 uses
  %i.sj = icmp ult i32 %switch.tableidx552, 4
  br i1 %i.sj, label %switch.lookup, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef 1136) #14
  tail call void @abort() #15
  unreachable

bb.bn:                                            ; preds = %.critedge491
  %i.sk = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %i.sl = load i32, ptr %i.sk, align 4, !tbaa !81
  %switch.tableidx557 = add i32 %i.sl, -6         ; 2 uses
  %i.sm = icmp ult i32 %switch.tableidx557, 4
  br i1 %i.sm, label %switch.lookup, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef 1153) #14
  tail call void @abort() #15
  unreachable

bb.bp:                                            ; preds = %.critedge491
  %i.sn = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %i.so = load i32, ptr %i.sn, align 4, !tbaa !81
  %switch.tableidx562 = add i32 %i.so, -6         ; 2 uses
  %i.sp = icmp ult i32 %switch.tableidx562, 4
  br i1 %i.sp, label %switch.lookup, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef 1170) #14
  tail call void @abort() #15
  unreachable

bb.br:                                            ; preds = %.critedge491
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef 1174) #14
  tail call void @abort() #15
  unreachable

switch.lookup:                                    ; preds = %bb.bp, %bb.bn, %bb.bl, %bb.bj, %bb.bh, %bb.bf, %bb.bd
  %switch.tableidx562.sink567 = phi i32 [ %switch.tableidx557, %bb.bn ], [ %switch.tableidx552, %bb.bl ], [ %switch.tableidx547, %bb.bj ], [ %switch.tableidx542, %bb.bh ], [ %switch.tableidx537, %bb.bf ], [ %switch.tableidx, %bb.bd ], [ %switch.tableidx562, %bb.bp ] ; 2 uses
  %switch.table.config_filter.6.sink = phi ptr [ @switch.table.config_filter.5, %bb.bn ], [ @switch.table.config_filter.4, %bb.bl ], [ @switch.table.config_filter.3, %bb.bj ], [ @switch.table.config_filter.2, %bb.bh ], [ @switch.table.config_filter.1, %bb.bf ], [ @switch.table.config_filter, %bb.bd ], [ @switch.table.config_filter.6, %bb.bp ]
  %i.sq = zext nneg i32 %switch.tableidx562.sink567 to i64
  %switch.gep564 = getelementptr inbounds nuw [8 x i8], ptr %switch.table.config_filter.6.sink, i64 %i.sq
  %switch.load565 = load ptr, ptr %switch.gep564, align 8
  %switch.offset566 = add nuw nsw i32 %switch.tableidx562.sink567, 6
  %i.sr = getelementptr inbounds nuw i8, ptr %i.c, i64 304
  store ptr %switch.load565, ptr %i.sr, align 8, !tbaa !55
  %i.ss = tail call i32 @av_get_bytes_per_sample(i32 noundef %switch.offset566) #14
  %i.st = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  store i32 %i.ss, ptr %i.st, align 8, !tbaa !56
  %i.su = load i32, ptr %i.rt, align 8, !tbaa !80
  switch i32 %i.su, label %._crit_edge514 [
    i32 4, label %bb.bs
    i32 5, label %bb.bt
    i32 6, label %bb.bu
  ]

._crit_edge514:                                   ; preds = %switch.lookup
  %.pre515 = load double, ptr %i.nf, align 8, !tbaa !43
  %.pre516 = load double, ptr %i.ng, align 8, !tbaa !43
  %i.sv = load <2 x double>, ptr %i.nh, align 8, !tbaa !43
  %.pre519 = load double, ptr %i.nj, align 8, !tbaa !43
  br label %bb.cl

bb.bs:                                            ; preds = %switch.lookup
  %i.sw = load double, ptr %i.ng, align 8, !tbaa !43 ; 3 uses
  %i.sx = load double, ptr %i.nf, align 8, !tbaa !43 ; 2 uses
  %i.sy = fadd nsz double %i.sw, 1.000000e+00
  %i.sz = fdiv nsz double %i.sx, %i.sy            ; 3 uses
  %i.ta = load double, ptr %i.nj, align 8, !tbaa !43 ; 2 uses
  %i.tb = load double, ptr %i.ni, align 8, !tbaa !43
  %i.tc = fneg nsz double %i.ta                   ; 2 uses
  %i.td = load double, ptr %i.nh, align 8, !tbaa !43
  %i.te = tail call nsz double @llvm.fmuladd.f64(double %i.tc, double %i.sx, double %i.tb) ; 3 uses
  %i.tf = fneg nsz double %i.te
  %i.tg = tail call nsz double @llvm.fmuladd.f64(double %i.tf, double %i.sz, double %i.td)
  %i.th = tail call nsz double @llvm.fmuladd.f64(double %i.tc, double %i.sw, double %i.tg) ; 2 uses
  store double %i.sz, ptr %i.nf, align 8, !tbaa !43
  store double %i.th, ptr %i.nh, align 8, !tbaa !43
  store double %i.te, ptr %i.ni, align 8, !tbaa !43
  %i.ti = insertelement <2 x double> poison, double %i.th, i64 0
  %i.tj = insertelement <2 x double> %i.ti, double %i.te, i64 1
  br label %bb.cl

bb.bt:                                            ; preds = %switch.lookup
  %i.tk = load double, ptr %i.nh, align 8, !tbaa !43 ; 3 uses
  %i.tl = load <2 x double>, ptr %i.nf, align 8, !tbaa !43
  %i.tm = fneg nsz <2 x double> %i.tl             ; 4 uses
  %i.tn = load <2 x double>, ptr %i.ni, align 8, !tbaa !43
  %i.to = insertelement <2 x double> poison, double %i.tk, i64 0
  %i.tp = shufflevector <2 x double> %i.to, <2 x double> poison, <2 x i32> zeroinitializer
  %i.tq = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tm, <2 x double> %i.tp, <2 x double> %i.tn) ; 2 uses
  %i.tr = extractelement <2 x double> %i.tm, i64 0
  %i.ts = extractelement <2 x double> %i.tm, i64 1
  store <2 x double> %i.tm, ptr %i.nf, align 8, !tbaa !43
  store <2 x double> %i.tq, ptr %i.nh, align 8, !tbaa !43
  store double %i.tk, ptr %i.nj, align 8, !tbaa !43
  br label %bb.cl

bb.bu:                                            ; preds = %switch.lookup
  %i.tt = load i32, ptr %i.n, align 8, !tbaa !72
  %i.tu = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.tv = load double, ptr %i.tu, align 8, !tbaa !74 ; 6 uses
  %i.tw = load <2 x double>, ptr %i.g, align 8, !tbaa !43 ; 6 uses
  %i.tx = extractelement <2 x double> %i.tw, i64 1 ; 11 uses
  %i.ty = sitofp nsz i32 %i.tt to double          ; 10 uses
  %i.tz = load i32, ptr %i.am, align 4, !tbaa !75
  switch i32 %i.tz, label %bb.bz [
    i32 0, label %convert_width2qfactor.exit.i
    i32 3, label %convert_width2qfactor.exit.i
    i32 1, label %bb.bv
    i32 5, label %bb.bw
    i32 2, label %bb.bx
    i32 4, label %bb.by
  ]

bb.bv:                                            ; preds = %bb.bu
  %i.ua = fdiv nsz double %i.tx, %i.tv
  br label %convert_width2qfactor.exit.i

bb.bw:                                            ; preds = %bb.bu
  %i.ub = fmul nsz double %i.tv, 1.000000e+03
  %i.uc = fdiv nsz double %i.tx, %i.ub
  br label %convert_width2qfactor.exit.i

bb.bx:                                            ; preds = %bb.bu
  %i.ud = fmul nsz double %i.tx, f0x401921FB54442D18
  %i.ue = fdiv nsz double %i.ud, %i.ty            ; 2 uses
  %i.uf = fmul nsz double %i.tv, f0x3FD62E42FEFA39EF
  %i.ug = fmul nsz double %i.uf, %i.ue
  %i.uh = tail call nsz double @llvm.sin.f64(double %i.ue)
  %i.ui = fdiv nsz double %i.ug, %i.uh
  %i.uj = tail call nsz double @llvm.sinh.f64(double %i.ui)
  %i.uk = fmul nsz double %i.uj, 2.000000e+00
  %i.ul = fdiv nsz double 1.000000e+00, %i.uk
  br label %convert_width2qfactor.exit.i

bb.by:                                            ; preds = %bb.bu
  %i.um = extractelement <2 x double> %i.tw, i64 0
  %i.un = fdiv nsz double %i.um, 4.000000e+01
  %i.uo = fmul nsz double %i.un, f0x400A934F0979A371
  %i.up = tail call nsz double @llvm.exp2.f64(double %i.uo)
  %i.uq = insertelement <2 x double> poison, double %i.up, i64 0
  %i.ur = insertelement <2 x double> %i.uq, double %i.tv, i64 1 ; 2 uses
  %i.us = fdiv nsz <2 x double> splat (double 1.000000e+00), %i.ur
  %i.ut = insertelement <2 x double> %i.ur, double -1.000000e+00, i64 1
  %i.uu = fadd nsz <2 x double> %i.ut, %i.us      ; 2 uses
  %i.uv = extractelement <2 x double> %i.uu, i64 0
  %i.uw = extractelement <2 x double> %i.uu, i64 1
  %i.ux = tail call nsz double @llvm.fmuladd.f64(double %i.uv, double %i.uw, double 2.000000e+00)
  %i.uy = tail call nsz double @llvm.sqrt.f64(double %i.ux)
  %i.uz = fdiv nsz double 1.000000e+00, %i.uy
  br label %convert_width2qfactor.exit.i

bb.bz:                                            ; preds = %bb.bu
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef 666) #14
  tail call void @abort() #15
  unreachable

convert_width2qfactor.exit.i:                     ; preds = %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bu
  %.0.i.i = phi nsz double [ %i.uz, %bb.by ], [ %i.ua, %bb.bv ], [ %i.uc, %bb.bw ], [ %i.ul, %bb.bx ], [ %i.tv, %bb.bu ], [ %i.tv, %bb.bu ] ; 9 uses
  %i.va = load i32, ptr %i.h, align 8, !tbaa !25
  switch i32 %i.va, label %bb.ck [
    i32 0, label %bb.ca
    i32 1, label %bb.cb
    i32 2, label %bb.cc
    i32 9, label %bb.cc
    i32 11, label %bb.cd
    i32 3, label %bb.ce
    i32 10, label %bb.ce
    i32 4, label %bb.cf
    i32 5, label %bb.cg
    i32 8, label %bb.ch
    i32 7, label %bb.ci
    i32 6, label %bb.cj
  ]

bb.ca:                                            ; preds = %convert_width2qfactor.exit.i
  %i.vb = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  %i.vc = load double, ptr %i.vb, align 8, !tbaa !43
  %i.vd = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %i.ve = load double, ptr %i.vd, align 8, !tbaa !43
  %i.vf = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  %i.vg = load double, ptr %i.vf, align 8, !tbaa !43
  %i.vh = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %i.vi = load <2 x double>, ptr %i.vh, align 8, !tbaa !43
  %i.vj = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %i.vk = load double, ptr %i.vj, align 8, !tbaa !43
  br label %convert_dir2zdf.exit

bb.cb:                                            ; preds = %convert_width2qfactor.exit.i
  %i.vl = fmul nsz <2 x double> %i.tw, <double 1.000000e+00, double f0x400921FB54442D18>
  %i.vm = insertelement <2 x double> <double 4.000000e+01, double poison>, double %i.ty, i64 1
  %i.vn = fdiv nsz <2 x double> %i.vl, %i.vm      ; 2 uses
  %i.vo = extractelement <2 x double> %i.vn, i64 0
  %i.vp = fmul nsz double %i.vo, f0x400A934F0979A371
  %i.vq = tail call nsz double @llvm.exp2.f64(double %i.vp) ; 2 uses
  %i.vr = extractelement <2 x double> %i.vn, i64 1
  %i.vs = tail call nsz double @llvm.tan.f64(double %i.vr) ; 4 uses
  %i.vt = fmul nsz double %i.vq, %.0.i.i
  %i.vu = fdiv nsz double 1.000000e+00, %i.vt     ; 2 uses
  %i.vv = fadd nsz double %i.vs, %i.vu
  %i.vw = insertelement <2 x double> poison, double %i.vs, i64 0
  %i.vx = insertelement <2 x double> %i.vw, double %i.vq, i64 1 ; 2 uses
  %i.vy = insertelement <2 x double> %i.vx, double %i.vv, i64 0
  %i.vz = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vx, <2 x double> %i.vy, <2 x double> <double 1.000000e+00, double -1.000000e+00>) ; 2 uses
  %i.wa = extractelement <2 x double> %i.vz, i64 0
  %i.wb = fdiv nsz double 1.000000e+00, %i.wa     ; 2 uses
  %i.wc = fmul nsz double %i.vs, %i.wb            ; 2 uses
  %i.wd = fmul nsz double %i.vs, %i.wc
  %i.we = extractelement <2 x double> %i.vz, i64 1
  %i.wf = fmul nsz double %i.we, %i.vu
  %i.wg = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.wf, i64 1
  br label %convert_dir2zdf.exit

bb.cc:                                            ; preds = %convert_width2qfactor.exit.i, %convert_width2qfactor.exit.i
  %i.wh = extractelement <2 x double> %i.tw, i64 0
  %i.wi = fdiv nsz double %i.wh, 4.000000e+01
  %i.wj = fmul nsz double %i.wi, f0x400A934F0979A371
  %i.wk = tail call nsz double @llvm.exp2.f64(double %i.wj) ; 3 uses
  %i.wl = fmul nsz double %i.tx, f0x400921FB54442D18
  %i.wm = fdiv nsz double %i.wl, %i.ty
  %i.wn = tail call nsz double @llvm.tan.f64(double %i.wm)
  %i.wo = tail call nsz double @llvm.sqrt.f64(double %i.wk)
  %i.wp = fdiv nsz double %i.wn, %i.wo            ; 4 uses
  %i.wq = fdiv nsz double 1.000000e+00, %.0.i.i   ; 2 uses
  %i.wr = fadd nsz double %i.wp, %i.wq
  %i.ws = fadd nsz double %i.wk, -1.000000e+00
  %i.wt = fmul nsz double %i.ws, %i.wq
  %i.wu = insertelement <2 x double> poison, double %i.wp, i64 0
  %i.wv = insertelement <2 x double> %i.wu, double %i.wk, i64 1 ; 2 uses
  %i.ww = insertelement <2 x double> %i.wv, double %i.wr, i64 0
  %i.wx = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wv, <2 x double> %i.ww, <2 x double> <double 1.000000e+00, double -1.000000e+00>) ; 2 uses
  %i.wy = extractelement <2 x double> %i.wx, i64 0
  %i.wz = fdiv nsz double 1.000000e+00, %i.wy     ; 2 uses
  %i.xa = fmul nsz double %i.wp, %i.wz            ; 2 uses
  %i.xb = fmul nsz double %i.wp, %i.xa
  %i.xc = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.wt, i64 1
  %i.xd = extractelement <2 x double> %i.wx, i64 1
  br label %convert_dir2zdf.exit

bb.cd:                                            ; preds = %convert_width2qfactor.exit.i
  %i.xe = extractelement <2 x double> %i.tw, i64 0
  %i.xf = fdiv nsz double %i.xe, 2.000000e+01
  %i.xg = fmul nsz double %i.xf, f0x400A934F0979A371
  %10 = tail call nsz double @llvm.exp2.f64(double %i.xg) ; 5 uses
  %i.xh = fmul nsz double %i.tx, f0x400921FB54442D18
  %i.xi = fdiv nsz double %i.xh, %i.ty
  %i.xj = tail call nsz double @llvm.tan.f64(double %i.xi)
  %i.xk = tail call nsz double @llvm.sqrt.f64(double %10)
  %11 = fdiv nsz double %i.xj, %i.xk              ; 4 uses
  %12 = fdiv nsz double 1.000000e+00, %.0.i.i     ; 2 uses
  %13 = fadd nsz double %11, %12
  %14 = fadd nsz double %10, -1.000000e+00
  %15 = fmul nsz double %14, %12
  %i.xl = insertelement <2 x double> <double 1.000000e+00, double poison>, double %15, i64 1
  %i.xm = insertelement <2 x double> poison, double %10, i64 0
  %16 = shufflevector <2 x double> %i.xm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.xn = fdiv nsz <2 x double> %i.xl, %16
  %17 = insertelement <2 x double> poison, double %11, i64 0
  %18 = insertelement <2 x double> %17, double %10, i64 1 ; 2 uses
  %19 = insertelement <2 x double> %18, double %13, i64 0
  %20 = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %18, <2 x double> %19, <2 x double> <double 1.000000e+00, double -1.000000e+00>) ; 2 uses
  %i.xo = insertelement <2 x double> %20, double 1.000000e+00, i64 0
  %i.xp = insertelement <2 x double> %20, double %10, i64 1
  %21 = fdiv nsz <2 x double> %i.xo, %i.xp        ; 2 uses
  %22 = extractelement <2 x double> %21, i64 0    ; 2 uses
  %23 = fmul nsz double %11, %22                  ; 2 uses
  %24 = fmul nsz double %11, %23
  %i.xq = extractelement <2 x double> %21, i64 1
  br label %convert_dir2zdf.exit

bb.ce:                                            ; preds = %convert_width2qfactor.exit.i, %convert_width2qfactor.exit.i
  %i.xr = extractelement <2 x double> %i.tw, i64 0
  %i.xs = fdiv nsz double %i.xr, 4.000000e+01
  %i.xt = fmul nsz double %i.xs, f0x400A934F0979A371
  %i.xu = tail call nsz double @llvm.exp2.f64(double %i.xt) ; 5 uses
  %i.xv = fmul nsz double %i.tx, f0x400921FB54442D18
  %i.xw = fdiv nsz double %i.xv, %i.ty
  %i.xx = tail call nsz double @llvm.tan.f64(double %i.xw)
  %i.xy = tail call nsz double @llvm.sqrt.f64(double %i.xu)
  %i.xz = fmul nsz double %i.xx, %i.xy            ; 4 uses
  %i.ya = fdiv nsz double 1.000000e+00, %.0.i.i   ; 2 uses
  %i.yb = fadd nsz double %i.xz, %i.ya
  %i.yc = fsub nsz double 1.000000e+00, %i.xu
  %i.yd = fmul nsz double %i.yc, %i.ya
  %i.ye = insertelement <2 x double> poison, double %i.xu, i64 0
  %i.yf = shufflevector <2 x double> %i.ye, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.yg = insertelement <2 x double> %i.yf, double %i.yd, i64 1
  %i.yh = fmul nsz <2 x double> %i.yf, %i.yg
  %i.yi = fneg nsz double %i.xu
  %i.yj = insertelement <2 x double> poison, double %i.xz, i64 0
  %i.yk = insertelement <2 x double> %i.yj, double %i.yi, i64 1
  %i.yl = insertelement <2 x double> poison, double %i.yb, i64 0
  %i.ym = insertelement <2 x double> %i.yl, double %i.xu, i64 1
  %i.yn = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.yk, <2 x double> %i.ym, <2 x double> splat (double 1.000000e+00)) ; 2 uses
  %i.yo = extractelement <2 x double> %i.yn, i64 0
  %i.yp = fdiv nsz double 1.000000e+00, %i.yo     ; 2 uses
  %i.yq = fmul nsz double %i.xz, %i.yp            ; 2 uses
  %i.yr = fmul nsz double %i.xz, %i.yq
  %i.ys = extractelement <2 x double> %i.yn, i64 1
  br label %convert_dir2zdf.exit

bb.cf:                                            ; preds = %convert_width2qfactor.exit.i
  %i.yt = fmul nsz double %i.tx, f0x400921FB54442D18
  %i.yu = fdiv nsz double %i.yt, %i.ty
  %i.yv = tail call nsz double @llvm.tan.f64(double %i.yu) ; 4 uses
  %i.yw = fdiv nsz double 1.000000e+00, %.0.i.i   ; 2 uses
  %i.yx = fadd nsz double %i.yv, %i.yw
  %i.yy = tail call nsz double @llvm.fmuladd.f64(double %i.yv, double %i.yx, double 1.000000e+00)
  %i.yz = fdiv nsz double 1.000000e+00, %i.yy     ; 2 uses
  %i.za = fmul nsz double %i.yv, %i.yz            ; 2 uses
  %i.zb = fmul nsz double %i.yv, %i.za
  %i.zc = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.zd = load i32, ptr %i.zc, align 4, !tbaa !77
  %.not.i = icmp eq i32 %i.zd, 0
  %i.ze = select nsz i1 %.not.i, double %i.yw, double 1.000000e+00
  %i.zf = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.ze, i64 1
  br label %convert_dir2zdf.exit

bb.cg:                                            ; preds = %convert_width2qfactor.exit.i
  %i.zg = fmul nsz double %i.tx, f0x400921FB54442D18
  %i.zh = fdiv nsz double %i.zg, %i.ty
  %i.zi = tail call nsz double @llvm.tan.f64(double %i.zh) ; 4 uses
  %i.zj = fdiv nsz double 1.000000e+00, %.0.i.i   ; 2 uses
  %i.zk = fadd nsz double %i.zi, %i.zj
  %i.zl = tail call nsz double @llvm.fmuladd.f64(double %i.zi, double %i.zk, double 1.000000e+00)
  %i.zm = fdiv nsz double 1.000000e+00, %i.zl     ; 2 uses
  %i.zn = fmul nsz double %i.zi, %i.zm            ; 2 uses
  %i.zo = fmul nsz double %i.zi, %i.zn
  %i.zp = fneg nsz double %i.zj
  %i.zq = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.zp, i64 1
  br label %convert_dir2zdf.exit

bb.ch:                                            ; preds = %convert_width2qfactor.exit.i
  %i.zr = fmul nsz double %i.tx, f0x400921FB54442D18
  %i.zs = fdiv nsz double %i.zr, %i.ty
  %i.zt = tail call nsz double @llvm.tan.f64(double %i.zs) ; 4 uses
  %i.zu = fdiv nsz double 1.000000e+00, %.0.i.i
  %i.zv = fadd nsz double %i.zt, %i.zu
  %i.zw = tail call nsz double @llvm.fmuladd.f64(double %i.zt, double %i.zv, double 1.000000e+00)
  %i.zx = fdiv nsz double 1.000000e+00, %i.zw     ; 2 uses
  %i.zy = fmul nsz double %i.zt, %i.zx            ; 2 uses
  %i.zz = fmul nsz double %i.zt, %i.zy
  br label %convert_dir2zdf.exit

bb.ci:                                            ; preds = %convert_width2qfactor.exit.i
  %i.aaa = fmul nsz double %i.tx, f0x400921FB54442D18
  %i.aab = fdiv nsz double %i.aaa, %i.ty
  %i.aac = tail call nsz double @llvm.tan.f64(double %i.aab) ; 4 uses
  %i.aad = fdiv nsz double 1.000000e+00, %.0.i.i  ; 2 uses
  %i.aae = fadd nsz double %i.aac, %i.aad
  %i.aaf = tail call nsz double @llvm.fmuladd.f64(double %i.aac, double %i.aae, double 1.000000e+00)
  %i.aag = fdiv nsz double 1.000000e+00, %i.aaf   ; 2 uses
  %i.aah = fmul nsz double %i.aac, %i.aag         ; 2 uses
  %i.aai = fmul nsz double %i.aac, %i.aah
  %i.aaj = fneg nsz double %i.aad
  %i.aak = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.aaj, i64 1
  br label %convert_dir2zdf.exit

bb.cj:                                            ; preds = %convert_width2qfactor.exit.i
  %i.aal = fmul nsz double %i.tx, f0x400921FB54442D18
  %i.aam = fdiv nsz double %i.aal, %i.ty
  %i.aan = tail call nsz double @llvm.tan.f64(double %i.aam) ; 4 uses
  %i.aao = fdiv nsz double 1.000000e+00, %.0.i.i  ; 2 uses
  %i.aap = fadd nsz double %i.aan, %i.aao
  %i.aaq = tail call nsz double @llvm.fmuladd.f64(double %i.aan, double %i.aap, double 1.000000e+00)
  %i.aar = fdiv nsz double 1.000000e+00, %i.aaq   ; 2 uses
  %i.aas = fmul nsz double %i.aan, %i.aar         ; 2 uses
  %i.aat = fmul nsz double %i.aan, %i.aas
  %i.aau = fmul nsz double %i.aao, -2.000000e+00
  %i.aav = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.aau, i64 1
  br label %convert_dir2zdf.exit

bb.ck:                                            ; preds = %convert_width2qfactor.exit.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef 786) #14
  tail call void @abort() #15
  unreachable

convert_dir2zdf.exit:                             ; preds = %bb.ca, %bb.cb, %bb.cc, %bb.cd, %bb.ce, %bb.cf, %bb.cg, %bb.ch, %bb.ci, %bb.cj
  %.sroa.42.0.i = phi nsz double [ %i.vg, %bb.ca ], [ %i.wd, %bb.cb ], [ %i.xb, %bb.cc ], [ %24, %bb.cd ], [ %i.yr, %bb.ce ], [ %i.zb, %bb.cf ], [ %i.zo, %bb.cg ], [ %i.zz, %bb.ch ], [ %i.aai, %bb.ci ], [ %i.aat, %bb.cj ] ; 2 uses
  %.sroa.22.0.i = phi nsz double [ %i.ve, %bb.ca ], [ %i.wc, %bb.cb ], [ %i.xa, %bb.cc ], [ %23, %bb.cd ], [ %i.yq, %bb.ce ], [ %i.za, %bb.cf ], [ %i.zn, %bb.cg ], [ %i.zy, %bb.ch ], [ %i.aah, %bb.ci ], [ %i.aas, %bb.cj ] ; 2 uses
  %.sroa.01.0.i = phi nsz double [ %i.vc, %bb.ca ], [ %i.wb, %bb.cb ], [ %i.wz, %bb.cc ], [ %22, %bb.cd ], [ %i.yp, %bb.ce ], [ %i.yz, %bb.cf ], [ %i.zm, %bb.cg ], [ %i.zx, %bb.ch ], [ %i.aag, %bb.ci ], [ %i.aar, %bb.cj ]
  %.sroa.24.0.i = phi nsz double [ %i.vk, %bb.ca ], [ 0.000000e+00, %bb.cb ], [ %i.xd, %bb.cc ], [ %i.xq, %bb.cd ], [ %i.ys, %bb.ce ], [ 0.000000e+00, %bb.cf ], [ 0.000000e+00, %bb.cg ], [ 1.000000e+00, %bb.ch ], [ -1.000000e+00, %bb.ci ], [ 0.000000e+00, %bb.cj ] ; 2 uses
  %i.aaw = phi <2 x double> [ %i.vi, %bb.ca ], [ %i.wg, %bb.cb ], [ %i.xc, %bb.cc ], [ %i.xn, %bb.cd ], [ %i.yh, %bb.ce ], [ %i.zf, %bb.cf ], [ %i.zq, %bb.cg ], [ zeroinitializer, %bb.ch ], [ %i.aak, %bb.ci ], [ %i.aav, %bb.cj ] ; 2 uses
  store double %.sroa.01.0.i, ptr %i.ne, align 8, !tbaa !43
  store double %.sroa.22.0.i, ptr %i.nf, align 8, !tbaa !43
  store double %.sroa.42.0.i, ptr %i.ng, align 8, !tbaa !43
  store <2 x double> %i.aaw, ptr %i.nh, align 8, !tbaa !43
  store double %.sroa.24.0.i, ptr %i.nj, align 8, !tbaa !43
  br label %bb.cl

bb.cl:                                            ; preds = %._crit_edge514, %bb.bt, %convert_dir2zdf.exit, %bb.bs
  %i.aax = phi double [ %.pre519, %._crit_edge514 ], [ %i.tk, %bb.bt ], [ %.sroa.24.0.i, %convert_dir2zdf.exit ], [ %i.ta, %bb.bs ]
  %i.aay = phi double [ %.pre516, %._crit_edge514 ], [ %i.ts, %bb.bt ], [ %.sroa.42.0.i, %convert_dir2zdf.exit ], [ %i.sw, %bb.bs ]
  %i.aaz = phi double [ %.pre515, %._crit_edge514 ], [ %i.tr, %bb.bt ], [ %.sroa.22.0.i, %convert_dir2zdf.exit ], [ %i.sz, %bb.bs ]
  %i.aba = phi <2 x double> [ %i.sv, %._crit_edge514 ], [ %i.tq, %bb.bt ], [ %i.aaw, %convert_dir2zdf.exit ], [ %i.tj, %bb.bs ] ; 2 uses
  %i.abb = load double, ptr %i.ne, align 8, !tbaa !43
  %i.abc = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.abd = insertelement <4 x double> poison, double %i.abb, i64 0
  %i.abe = insertelement <4 x double> %i.abd, double %i.aaz, i64 1
  %i.abf = insertelement <4 x double> %i.abe, double %i.aay, i64 2
  %i.abg = shufflevector <2 x double> %i.aba, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.abh = shufflevector <4 x double> %i.abf, <4 x double> %i.abg, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.abi = fptrunc <4 x double> %i.abh to <4 x float>
  store <4 x float> %i.abi, ptr %i.abc, align 8, !tbaa !58
  %i.abj = extractelement <2 x double> %i.aba, i64 1
  %i.abk = fptrunc nsz double %i.abj to float
  %i.abl = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  store float %i.abk, ptr %i.abl, align 8, !tbaa !58
  %i.abm = fptrunc nsz double %i.aax to float
  %i.abn = getelementptr inbounds nuw i8, ptr %i.c, i64 180
  store float %i.abm, ptr %i.abn, align 4, !tbaa !58
  br label %.loopexit

.loopexit:                                        ; preds = %bb.aw, %bb.ba, %bb.bb, %bb.bc, %.thread, %bb.e, %bb.az, %bb.cl, %bb.d
  %.1 = phi i32 [ 0, %bb.d ], [ -22, %bb.e ], [ 0, %bb.cl ], [ -12, %bb.az ], [ -12, %bb.aw ], [ -12, %bb.ba ], [ -12, %.thread ], [ -12, %bb.bc ], [ -12, %bb.bb ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.tan.f64(double) #4

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sin.f64(double) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sinh.f64(double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #6

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.cos.f64(double) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.exp.f64(double) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #6

declare ptr @ff_get_audio_buffer(ptr noundef, i32 noundef) local_unnamed_addr #5

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #5

declare i32 @av_samples_set_silence(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @biquad_s16(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5, i32 noundef %6) #8 {
bb.a:
  %i.a = load float, ptr %4, align 4, !tbaa !58   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.c = load float, ptr %i.b, align 4, !tbaa !58 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.e = load float, ptr %i.d, align 4, !tbaa !58 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.g = load float, ptr %i.f, align 4, !tbaa !58 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.j = load float, ptr %i.i, align 4, !tbaa !58
  %i.k = fneg nsz float %i.j                      ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.m = load float, ptr %i.l, align 4, !tbaa !58
  %i.n = fneg nsz float %i.m                      ; 3 uses
  %i.o = load float, ptr %i.h, align 4, !tbaa !58 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.q = load float, ptr %i.p, align 4, !tbaa !58 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.s = load float, ptr %i.r, align 4, !tbaa !58 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.u = load double, ptr %i.t, align 8, !tbaa !59
  %i.v = fptrunc nsz double %i.u to float         ; 4 uses
  %i.w = fsub nsz float 1.000000e+00, %i.v        ; 3 uses
  %i.x = icmp sgt i32 %3, 1
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not140 = icmp eq i32 %6, 0                    ; 2 uses
  %i.y = zext nneg i32 %3 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.n
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.n ] ; 4 uses
  %.0128144 = phi float [ %i.g, %.lr.ph ], [ %i.ah, %bb.n ]
  %.0129143 = phi float [ %i.e, %.lr.ph ], [ %i.az, %bb.n ] ; 2 uses
  %.0131142 = phi float [ %i.c, %.lr.ph ], [ %i.ae, %bb.n ]
  %.0133141 = phi float [ %i.a, %.lr.ph ], [ %i.aw, %bb.n ] ; 2 uses
  %i.z = or disjoint i64 %indvars.iv, 1           ; 2 uses
  %i.aa = fmul nsz float %i.q, %.0133141
  %i.ab = tail call nsz float @llvm.fmuladd.f32(float %.0131142, float %i.s, float %i.aa)
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !61 ; 2 uses
  %i.ae = sitofp i16 %i.ad to float               ; 5 uses
  %i.af = tail call nsz float @llvm.fmuladd.f32(float %i.ae, float %i.o, float %i.ab)
  %i.ag = tail call nsz float @llvm.fmuladd.f32(float %.0128144, float %i.n, float %i.af)
  %i.ah = tail call nsz float @llvm.fmuladd.f32(float %.0129143, float %i.k, float %i.ag) ; 4 uses
  %i.ai = fmul nsz float %i.w, %i.ae
  %i.aj = tail call nsz float @llvm.fmuladd.f32(float %i.ah, float %i.v, float %i.ai) ; 3 uses
  br i1 %.not140, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.ak = fcmp nsz olt float %i.aj, -3.276800e+04
  br i1 %i.ak, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.al = load i32, ptr %5, align 4, !tbaa !28
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %5, align 4, !tbaa !28
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.an = fcmp nsz ogt float %i.aj, 3.276700e+04
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ao = load i32, ptr %5, align 4, !tbaa !28
  %i.ap = add nsw i32 %i.ao, 1
  store i32 %i.ap, ptr %5, align 4, !tbaa !28
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.aq = fptosi float %i.aj to i16
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.d, %bb.g, %bb.f
  %.sink = phi i16 [ -32768, %bb.d ], [ %i.aq, %bb.g ], [ 32767, %bb.f ], [ %i.ad, %bb.b ]
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv
  store i16 %.sink, ptr %i.ar, align 2, !tbaa !61
  %i.as = fmul nsz float %i.q, %i.ae
  %i.at = tail call nsz float @llvm.fmuladd.f32(float %.0133141, float %i.s, float %i.as)
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.z
  %i.av = load i16, ptr %i.au, align 2, !tbaa !61 ; 2 uses
  %i.aw = sitofp i16 %i.av to float               ; 4 uses
  %i.ax = tail call nsz float @llvm.fmuladd.f32(float %i.aw, float %i.o, float %i.at)
  %i.ay = tail call nsz float @llvm.fmuladd.f32(float %.0129143, float %i.n, float %i.ax)
  %i.az = tail call nsz float @llvm.fmuladd.f32(float %i.ah, float %i.k, float %i.ay) ; 3 uses
  %i.ba = fmul nsz float %i.w, %i.aw
  %i.bb = tail call nsz float @llvm.fmuladd.f32(float %i.az, float %i.v, float %i.ba) ; 3 uses
  br i1 %.not140, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.bc = fcmp nsz olt float %i.bb, -3.276800e+04
  br i1 %i.bc, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bd = load i32, ptr %5, align 4, !tbaa !28
  %i.be = add nsw i32 %i.bd, 1
  store i32 %i.be, ptr %5, align 4, !tbaa !28
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.bf = fcmp nsz ogt float %i.bb, 3.276700e+04
  br i1 %i.bf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bg = load i32, ptr %5, align 4, !tbaa !28
  %i.bh = add nsw i32 %i.bg, 1
  store i32 %i.bh, ptr %5, align 4, !tbaa !28
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bi = fptosi float %i.bb to i16
  br label %bb.n

bb.n:                                             ; preds = %bb.h, %bb.l, %bb.m, %bb.j
  %.sink162 = phi i16 [ -32768, %bb.j ], [ 32767, %bb.l ], [ %i.bi, %bb.m ], [ %i.av, %bb.h ]
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.z
  store i16 %.sink162, ptr %i.bj, align 2, !tbaa !61
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.bk = or disjoint i64 %indvars.iv.next, 1
  %i.bl = icmp samesign ult i64 %i.bk, %i.y
end_hunk_1
begin_hunk_2_@biquad_flt:bb.a
  %i.aa = fmul nsz float %i.q, %.0109114.us
  %i.ab = tail call nsz float @llvm.fmuladd.f32(float %.0107115.us, float %i.s, float %i.aa)
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv138
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !58 ; 5 uses
  %i.ae = tail call nsz float @llvm.fmuladd.f32(float %i.ad, float %i.o, float %i.ab)
  %i.af = tail call nsz float @llvm.fmuladd.f32(float %.0104117.us, float %i.n, float %i.ae)
  %i.ag = tail call nsz float @llvm.fmuladd.f32(float %.0105116.us, float %i.k, float %i.af) ; 4 uses
  %i.ah = fmul nsz float %i.w, %i.ad
  %i.ai = tail call nsz float @llvm.fmuladd.f32(float %i.ag, float %i.v, float %i.ah)
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv138
  store float %i.ai, ptr %i.aj, align 4, !tbaa !58
  %i.ak = fmul nsz float %i.q, %i.ad
  %i.al = tail call nsz float @llvm.fmuladd.f32(float %.0109114.us, float %i.s, float %i.ak)
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.z
  %i.an = load float, ptr %i.am, align 4, !tbaa !58 ; 4 uses
  %i.ao = tail call nsz float @llvm.fmuladd.f32(float %i.an, float %i.o, float %i.al)
  %i.ap = tail call nsz float @llvm.fmuladd.f32(float %.0105116.us, float %i.n, float %i.ao)
  %i.aq = tail call nsz float @llvm.fmuladd.f32(float %i.ag, float %i.k, float %i.ap) ; 3 uses
  %i.ar = fmul nsz float %i.w, %i.an
  %i.as = tail call nsz float @llvm.fmuladd.f32(float %i.aq, float %i.v, float %i.ar)
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.z
  store float %i.as, ptr %i.at, align 4, !tbaa !58
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 2 ; 3 uses
  %i.au = or disjoint i64 %indvars.iv.next139, 1
  %i.av = icmp samesign ult i64 %i.au, %i.y
  br i1 %i.av, label %.lr.ph.split.us, label %._crit_edge.loopexit, !llvm.loop !84

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ 0, %.lr.ph ] ; 4 uses
  %.0104117 = phi float [ %i.bd, %.lr.ph.split ], [ %i.g, %.lr.ph ]
  %.0105116 = phi float [ %i.bl, %.lr.ph.split ], [ %i.e, %.lr.ph ] ; 2 uses
  %.0107115 = phi float [ %i.ba, %.lr.ph.split ], [ %i.c, %.lr.ph ]
  %.0109114 = phi float [ %i.bi, %.lr.ph.split ], [ %i.a, %.lr.ph ] ; 2 uses
  %i.aw = or disjoint i64 %indvars.iv, 1          ; 2 uses
  %i.ax = fmul nsz float %i.q, %.0109114
  %i.ay = tail call nsz float @llvm.fmuladd.f32(float %.0107115, float %i.s, float %i.ax)
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ba = load float, ptr %i.az, align 4, !tbaa !58 ; 5 uses
  %i.bb = tail call nsz float @llvm.fmuladd.f32(float %i.ba, float %i.o, float %i.ay)
  %i.bc = tail call nsz float @llvm.fmuladd.f32(float %.0104117, float %i.n, float %i.bb)
  %i.bd = tail call nsz float @llvm.fmuladd.f32(float %.0105116, float %i.k, float %i.bc) ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store float %i.ba, ptr %i.be, align 4, !tbaa !58
  %i.bf = fmul nsz float %i.q, %i.ba
  %i.bg = tail call nsz float @llvm.fmuladd.f32(float %.0109114, float %i.s, float %i.bf)
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aw
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !58 ; 4 uses
  %i.bj = tail call nsz float @llvm.fmuladd.f32(float %i.bi, float %i.o, float %i.bg)
  %i.bk = tail call nsz float @llvm.fmuladd.f32(float %.0105116, float %i.n, float %i.bj)
  %i.bl = tail call nsz float @llvm.fmuladd.f32(float %i.bd, float %i.k, float %i.bk) ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aw
  store float %i.bi, ptr %i.bm, align 4, !tbaa !58
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.bn = or disjoint i64 %indvars.iv.next, 1
  %i.bo = icmp samesign ult i64 %i.bn, %i.y
  br i1 %i.bo, label %.lr.ph.split, label %._crit_edge.loopexit127, !llvm.loop !84

._crit_edge.loopexit:                             ; preds = %.lr.ph.split.us
  %i.bp = trunc nuw nsw i64 %indvars.iv.next139 to i32
  br label %._crit_edge

._crit_edge.loopexit127:                          ; preds = %.lr.ph.split
  %i.bq = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit127, %._crit_edge.loopexit, %bb.a
  %.0109.lcssa = phi float [ %i.a, %bb.a ], [ %i.an, %._crit_edge.loopexit ], [ %i.bi, %._crit_edge.loopexit127 ] ; 3 uses
  %.0107.lcssa = phi float [ %i.c, %bb.a ], [ %i.ad, %._crit_edge.loopexit ], [ %i.ba, %._crit_edge.loopexit127 ] ; 2 uses
  %.0105.lcssa = phi float [ %i.e, %bb.a ], [ %i.aq, %._crit_edge.loopexit ], [ %i.bl, %._crit_edge.loopexit127 ] ; 3 uses
  %.0104.lcssa = phi float [ %i.g, %bb.a ], [ %i.ag, %._crit_edge.loopexit ], [ %i.bd, %._crit_edge.loopexit127 ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.bp, %._crit_edge.loopexit ], [ %i.bq, %._crit_edge.loopexit127 ] ; 2 uses
  %i.br = icmp slt i32 %.0.lcssa, %3
  br i1 %i.br, label %.sink.split, label %bb.b

.sink.split:                                      ; preds = %._crit_edge
  %i.bs = zext nneg i32 %.0.lcssa to i64          ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bs
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !58 ; 4 uses
  %i.bv = fmul nsz float %i.q, %.0109.lcssa
  %i.bw = tail call nsz float @llvm.fmuladd.f32(float %i.bu, float %i.o, float %i.bv)
  %i.bx = tail call nsz float @llvm.fmuladd.f32(float %.0107.lcssa, float %i.s, float %i.bw)
  %i.by = tail call nsz float @llvm.fmuladd.f32(float %.0105.lcssa, float %i.k, float %i.bx)
  %i.bz = tail call nsz float @llvm.fmuladd.f32(float %.0104.lcssa, float %i.n, float %i.by) ; 2 uses
  %.not = icmp eq i32 %6, 0
  %i.ca = fmul nsz float %i.w, %i.bu
  %i.cb = tail call nsz float @llvm.fmuladd.f32(float %i.bz, float %i.v, float %i.ca)
  %.sink = select i1 %.not, float %i.cb, float %i.bu
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bs
  store float %.sink, ptr %i.cc, align 4, !tbaa !58
  br label %bb.b

bb.b:                                             ; preds = %.sink.split, %._crit_edge
  %.1110 = phi nsz float [ %.0109.lcssa, %._crit_edge ], [ %i.bu, %.sink.split ]
  %.1108 = phi nsz float [ %.0107.lcssa, %._crit_edge ], [ %.0109.lcssa, %.sink.split ]
  %.1106 = phi nsz float [ %.0105.lcssa, %._crit_edge ], [ %i.bz, %.sink.split ]
  %.1 = phi nsz float [ %.0104.lcssa, %._crit_edge ], [ %.0105.lcssa, %.sink.split ]
  store float %.1110, ptr %4, align 4, !tbaa !58
  store float %.1108, ptr %i.b, align 4, !tbaa !58
  store float %.1106, ptr %i.d, align 4, !tbaa !58
  store float %.1, ptr %i.f, align 4, !tbaa !58
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @biquad_dbl(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3, ptr nofree noundef captures(none) %4, ptr nofree readnone captures(none) %5, i32 noundef %6) #8 {
bb.a:
  %i.a = load double, ptr %4, align 8, !tbaa !43  ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.c = load double, ptr %i.b, align 8, !tbaa !43 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.e = load double, ptr %i.d, align 8, !tbaa !43 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.g = load double, ptr %i.f, align 8, !tbaa !43 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.j = load double, ptr %i.i, align 8, !tbaa !43
  %i.k = fneg nsz double %i.j                     ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.m = load double, ptr %i.l, align 8, !tbaa !43
  %i.n = fneg nsz double %i.m                     ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.p = load double, ptr %i.h, align 8, !tbaa !43 ; 5 uses
  %i.q = load double, ptr %i.o, align 8, !tbaa !43 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.s = load double, ptr %i.r, align 8, !tbaa !43 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.u = load double, ptr %i.t, align 8, !tbaa !59 ; 4 uses
  %i.v = fsub nsz double 1.000000e+00, %i.u       ; 3 uses
  %i.w = icmp sgt i32 %3, 1
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not113 = icmp eq i32 %6, 0
  %i.x = zext nneg i32 %3 to i64                  ; 2 uses
  br i1 %.not113, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.y = insertelement <2 x double> poison, double %i.n, i64 0
  %i.z = insertelement <2 x double> %i.y, double %i.s, i64 1
  %i.aa = insertelement <2 x double> poison, double %i.k, i64 0
  %i.ab = insertelement <2 x double> %i.aa, double %i.p, i64 1
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.ac = insertelement <2 x double> poison, double %i.v, i64 0
  %i.ad = insertelement <2 x double> %i.ac, double %i.q, i64 1
  %i.ae = insertelement <2 x double> poison, double %i.u, i64 0
  %i.af = insertelement <2 x double> %i.ae, double %i.s, i64 1
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us
  %indvars.iv138 = phi i64 [ %indvars.iv.next139, %.lr.ph.split.us ], [ 0, %.lr.ph.split.us.preheader ] ; 4 uses
  %.0104117.us = phi double [ %i.ao, %.lr.ph.split.us ], [ %i.g, %.lr.ph.split.us.preheader ]
  %.0105116.us = phi double [ %i.bb, %.lr.ph.split.us ], [ %i.e, %.lr.ph.split.us.preheader ] ; 2 uses
  %.0107115.us = phi double [ %i.aj, %.lr.ph.split.us ], [ %i.c, %.lr.ph.split.us.preheader ]
  %.0109114.us = phi double [ %i.ax, %.lr.ph.split.us ], [ %i.a, %.lr.ph.split.us.preheader ] ; 2 uses
  %i.ag = or disjoint i64 %indvars.iv138, 1       ; 2 uses
  %i.ah = fmul nsz double %i.q, %.0109114.us
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv138
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !43 ; 4 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv138
  %i.al = tail call nsz double @llvm.fmuladd.f64(double %.0107115.us, double %i.s, double %i.ah)
  %i.am = tail call nsz double @llvm.fmuladd.f64(double %i.aj, double %i.p, double %i.al)
  %i.an = tail call nsz double @llvm.fmuladd.f64(double %.0104117.us, double %i.n, double %i.am)
  %i.ao = tail call nsz double @llvm.fmuladd.f64(double %.0105116.us, double %i.k, double %i.an) ; 4 uses
  %i.ap = insertelement <2 x double> poison, double %i.aj, i64 0
  %i.aq = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ar = fmul nsz <2 x double> %i.ad, %i.aq
  %i.as = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.at = insertelement <2 x double> %i.as, double %.0109114.us, i64 1
  %i.au = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.at, <2 x double> %i.af, <2 x double> %i.ar) ; 2 uses
  %i.av = extractelement <2 x double> %i.au, i64 0
  store double %i.av, ptr %i.ak, align 8, !tbaa !43
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ag
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !43 ; 4 uses
  %i.ay = extractelement <2 x double> %i.au, i64 1
  %i.az = tail call nsz double @llvm.fmuladd.f64(double %i.ax, double %i.p, double %i.ay)
  %i.ba = tail call nsz double @llvm.fmuladd.f64(double %.0105116.us, double %i.n, double %i.az)
  %i.bb = tail call nsz double @llvm.fmuladd.f64(double %i.ao, double %i.k, double %i.ba) ; 3 uses
  %i.bc = fmul nsz double %i.v, %i.ax
  %i.bd = tail call nsz double @llvm.fmuladd.f64(double %i.bb, double %i.u, double %i.bc)
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ag
  store double %i.bd, ptr %i.be, align 8, !tbaa !43
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 2 ; 3 uses
  %i.bf = or disjoint i64 %indvars.iv.next139, 1
  %i.bg = icmp samesign ult i64 %i.bf, %i.x
  br i1 %i.bg, label %.lr.ph.split.us, label %._crit_edge.loopexit, !llvm.loop !85

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ 0, %.lr.ph.split.preheader ] ; 4 uses
  %.0104117 = phi double [ %i.by, %.lr.ph.split ], [ %i.g, %.lr.ph.split.preheader ]
  %.0105116 = phi double [ %i.bz, %.lr.ph.split ], [ %i.e, %.lr.ph.split.preheader ] ; 2 uses
  %.0107115 = phi double [ %i.bk, %.lr.ph.split ], [ %i.c, %.lr.ph.split.preheader ]
  %.0109114 = phi double [ %i.bs, %.lr.ph.split ], [ %i.a, %.lr.ph.split.preheader ] ; 2 uses
  %i.bh = or disjoint i64 %indvars.iv, 1          ; 2 uses
  %i.bi = fmul nsz double %i.q, %.0109114
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !43 ; 5 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  store double %i.bk, ptr %i.bl, align 8, !tbaa !43
  %7 = fmul nsz double %i.q, %i.bk
  %8 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bh
  %i.bm = tail call nsz double @llvm.fmuladd.f64(double %.0107115, double %i.s, double %i.bi)
  %9 = tail call nsz double @llvm.fmuladd.f64(double %i.bk, double %i.p, double %i.bm)
  %i.bn = insertelement <2 x double> poison, double %.0104117, i64 0
  %i.bo = insertelement <2 x double> %i.bn, double %.0109114, i64 1
  %i.bp = insertelement <2 x double> poison, double %9, i64 0
  %i.bq = insertelement <2 x double> %i.bp, double %7, i64 1
  %i.br = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bo, <2 x double> %i.z, <2 x double> %i.bq)
  %i.bs = load double, ptr %8, align 8, !tbaa !43 ; 4 uses
  %i.bt = insertelement <2 x double> poison, double %.0105116, i64 0
  %i.bu = insertelement <2 x double> %i.bt, double %i.bs, i64 1
  %i.bv = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bu, <2 x double> %i.ab, <2 x double> %i.br) ; 2 uses
  %i.bw = extractelement <2 x double> %i.bv, i64 1
  %i.bx = tail call nsz double @llvm.fmuladd.f64(double %.0105116, double %i.n, double %i.bw)
  %i.by = extractelement <2 x double> %i.bv, i64 0 ; 3 uses
  %i.bz = tail call nsz double @llvm.fmuladd.f64(double %i.by, double %i.k, double %i.bx) ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bh
  store double %i.bs, ptr %i.ca, align 8, !tbaa !43
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.cb = or disjoint i64 %indvars.iv.next, 1
  %i.cc = icmp samesign ult i64 %i.cb, %i.x
  br i1 %i.cc, label %.lr.ph.split, label %._crit_edge.loopexit127, !llvm.loop !85

._crit_edge.loopexit:                             ; preds = %.lr.ph.split.us
  %i.cd = trunc nuw nsw i64 %indvars.iv.next139 to i32
  br label %._crit_edge

._crit_edge.loopexit127:                          ; preds = %.lr.ph.split
  %i.ce = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit127, %._crit_edge.loopexit, %bb.a
  %.0109.lcssa = phi double [ %i.a, %bb.a ], [ %i.ax, %._crit_edge.loopexit ], [ %i.bs, %._crit_edge.loopexit127 ] ; 3 uses
  %.0107.lcssa = phi double [ %i.c, %bb.a ], [ %i.aj, %._crit_edge.loopexit ], [ %i.bk, %._crit_edge.loopexit127 ] ; 2 uses
  %.0105.lcssa = phi double [ %i.e, %bb.a ], [ %i.bb, %._crit_edge.loopexit ], [ %i.bz, %._crit_edge.loopexit127 ] ; 3 uses
  %.0104.lcssa = phi double [ %i.g, %bb.a ], [ %i.ao, %._crit_edge.loopexit ], [ %i.by, %._crit_edge.loopexit127 ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.cd, %._crit_edge.loopexit ], [ %i.ce, %._crit_edge.loopexit127 ] ; 2 uses
  %i.cf = icmp slt i32 %.0.lcssa, %3
  br i1 %i.cf, label %.sink.split, label %bb.b

.sink.split:                                      ; preds = %._crit_edge
  %i.cg = zext nneg i32 %.0.lcssa to i64          ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cg
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !43 ; 4 uses
  %i.cj = fmul nsz double %i.q, %.0109.lcssa
  %i.ck = tail call nsz double @llvm.fmuladd.f64(double %i.ci, double %i.p, double %i.cj)
  %i.cl = tail call nsz double @llvm.fmuladd.f64(double %.0107.lcssa, double %i.s, double %i.ck)
  %i.cm = tail call nsz double @llvm.fmuladd.f64(double %.0105.lcssa, double %i.k, double %i.cl)
  %i.cn = tail call nsz double @llvm.fmuladd.f64(double %.0104.lcssa, double %i.n, double %i.cm) ; 2 uses
  %.not = icmp eq i32 %6, 0
  %i.co = fmul nsz double %i.v, %i.ci
  %i.cp = tail call nsz double @llvm.fmuladd.f64(double %i.cn, double %i.u, double %i.co)
  %.sink = select i1 %.not, double %i.cp, double %i.ci
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cg
  store double %.sink, ptr %i.cq, align 8, !tbaa !43
  br label %bb.b

bb.b:                                             ; preds = %.sink.split, %._crit_edge
  %.1110 = phi nsz double [ %.0109.lcssa, %._crit_edge ], [ %i.ci, %.sink.split ]
  %.1108 = phi nsz double [ %.0107.lcssa, %._crit_edge ], [ %.0109.lcssa, %.sink.split ]
  %.1106 = phi nsz double [ %.0105.lcssa, %._crit_edge ], [ %i.cn, %.sink.split ]
  %.1 = phi nsz double [ %.0104.lcssa, %._crit_edge ], [ %.0105.lcssa, %.sink.split ]
  store double %.1110, ptr %4, align 8, !tbaa !43
  store double %.1108, ptr %i.b, align 8, !tbaa !43
  store double %.1106, ptr %i.d, align 8, !tbaa !43
  store double %.1, ptr %i.f, align 8, !tbaa !43
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @biquad_dii_s16(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5, i32 noundef %6) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.c = load float, ptr %i.b, align 4, !tbaa !58
  %i.d = fneg nsz float %i.c                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.f = load float, ptr %i.e, align 4, !tbaa !58
  %i.g = fneg nsz float %i.f                      ; 4 uses
  %i.h = load float, ptr %i.a, align 4, !tbaa !58
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.j = load float, ptr %i.i, align 4, !tbaa !58
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.l = load float, ptr %i.k, align 4, !tbaa !58
  %i.m = load float, ptr %4, align 4, !tbaa !58   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.o = load float, ptr %i.n, align 4, !tbaa !58 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load double, ptr %i.p, align 8, !tbaa !59
  %i.r = fptrunc nsz double %i.q to float         ; 2 uses
  %i.s = fsub nsz float 1.000000e+00, %i.r
  %i.t = icmp sgt i32 %3, 0
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not = icmp eq i32 %6, 0
  %wide.trip.count68 = zext nneg i32 %3 to i64    ; 3 uses
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %xtraiter = and i64 %wide.trip.count68, 1
  %i.u = icmp eq i32 %3, 1
  br i1 %i.u, label %.lr.ph.split.epil.preheader, label %.lr.ph.split.preheader.new

.lr.ph.split.preheader.new:                       ; preds = %.lr.ph.split.preheader
  %unroll_iter = and i64 %wide.trip.count68, 2147483646
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.f
  %indvars.iv65 = phi i64 [ %indvars.iv.next66, %bb.f ], [ 0, %.lr.ph ] ; 3 uses
  %.05458.us = phi float [ %.05557.us, %bb.f ], [ %i.o, %.lr.ph ] ; 2 uses
  %.05557.us = phi float [ %i.z, %bb.f ], [ %i.m, %.lr.ph ] ; 4 uses
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv65
  %i.w = load i16, ptr %i.v, align 2, !tbaa !61
  %i.x = sitofp nsz i16 %i.w to float             ; 2 uses
  %i.y = tail call nsz float @llvm.fmuladd.f32(float %i.d, float %.05557.us, float %i.x)
  %i.z = tail call nsz float @llvm.fmuladd.f32(float %i.g, float %.05458.us, float %i.y) ; 3 uses
  %i.aa = fmul nsz float %i.j, %.05557.us
  %i.ab = tail call nsz float @llvm.fmuladd.f32(float %i.h, float %i.z, float %i.aa)
  %i.ac = tail call nsz float @llvm.fmuladd.f32(float %i.l, float %.05458.us, float %i.ab)
  %i.ad = fmul nsz float %i.s, %i.x
  %i.ae = tail call nsz float @llvm.fmuladd.f32(float %i.ac, float %i.r, float %i.ad) ; 3 uses
  %i.af = fcmp nsz olt float %i.ae, -3.276800e+04
  br i1 %i.af, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.ag = fcmp nsz ogt float %i.ae, 3.276700e+04
  br i1 %i.ag, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ah = fptosi float %i.ae to i16
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.ai = load i32, ptr %5, align 4, !tbaa !28
  %i.aj = add nsw i32 %i.ai, 1
  store i32 %i.aj, ptr %5, align 4, !tbaa !28
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph.split.us
  %i.ak = load i32, ptr %5, align 4, !tbaa !28
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %5, align 4, !tbaa !28
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sink = phi i16 [ -32768, %bb.e ], [ 32767, %bb.d ], [ %i.ah, %bb.c ]
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv65
  store i16 %.sink, ptr %i.am, align 2, !tbaa !61
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1 ; 2 uses
  %exitcond69.not = icmp eq i64 %indvars.iv.next66, %wide.trip.count68
  br i1 %exitcond69.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !86

._crit_edge.loopexit76.unr-lcssa:                 ; preds = %.lr.ph.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.split.epil.preheader

.lr.ph.split.epil.preheader:                      ; preds = %._crit_edge.loopexit76.unr-lcssa, %.lr.ph.split.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit76.unr-lcssa ] ; 2 uses
  %.05458.epil.init = phi float [ %i.o, %.lr.ph.split.preheader ], [ %i.ax, %._crit_edge.loopexit76.unr-lcssa ]
  %.05557.epil.init = phi float [ %i.m, %.lr.ph.split.preheader ], [ %i.bd, %._crit_edge.loopexit76.unr-lcssa ] ; 2 uses
  %lcmp.mod80 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod80)
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.epil.init
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !61 ; 2 uses
  %i.ap = sitofp nsz i16 %i.ao to float
  %i.aq = tail call nsz float @llvm.fmuladd.f32(float %i.d, float %.05557.epil.init, float %i.ap)
  %i.ar = tail call nsz float @llvm.fmuladd.f32(float %i.g, float %.05458.epil.init, float %i.aq)
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.epil.init
  store i16 %i.ao, ptr %i.as, align 2, !tbaa !61
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.split.epil.preheader, %._crit_edge.loopexit76.unr-lcssa, %bb.f, %bb.a
  %.055.lcssa = phi float [ %i.m, %bb.a ], [ %i.z, %bb.f ], [ %i.bd, %._crit_edge.loopexit76.unr-lcssa ], [ %i.ar, %.lr.ph.split.epil.preheader ]
  %.054.lcssa = phi float [ %i.o, %bb.a ], [ %.05557.us, %bb.f ], [ %i.ax, %._crit_edge.loopexit76.unr-lcssa ], [ %.05557.epil.init, %.lr.ph.split.epil.preheader ]
  store float %.055.lcssa, ptr %4, align 4, !tbaa !58
  store float %.054.lcssa, ptr %i.n, align 4, !tbaa !58
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph.split, %.lr.ph.split.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %indvars.iv.next.1, %.lr.ph.split ] ; 4 uses
  %.05458 = phi float [ %i.o, %.lr.ph.split.preheader.new ], [ %i.ax, %.lr.ph.split ]
  %.05557 = phi float [ %i.m, %.lr.ph.split.preheader.new ], [ %i.bd, %.lr.ph.split ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %niter.next.1, %.lr.ph.split ]
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.au = load i16, ptr %i.at, align 2, !tbaa !61 ; 2 uses
  %i.av = sitofp nsz i16 %i.au to float
  %i.aw = tail call nsz float @llvm.fmuladd.f32(float %i.d, float %.05557, float %i.av)
  %i.ax = tail call nsz float @llvm.fmuladd.f32(float %i.g, float %.05458, float %i.aw) ; 4 uses
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv
  store i16 %i.au, ptr %i.ay, align 2, !tbaa !61
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !61 ; 2 uses
  %i.bb = sitofp nsz i16 %i.ba to float
  %i.bc = tail call nsz float @llvm.fmuladd.f32(float %i.d, float %i.ax, float %i.bb)
  %i.bd = tail call nsz float @llvm.fmuladd.f32(float %i.g, float %.05557, float %i.bc) ; 3 uses
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.next
  store i16 %i.ba, ptr %i.be, align 2, !tbaa !61
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit76.unr-lcssa, label %.lr.ph.split, !llvm.loop !86
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @biquad_dii_s32(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5, i32 noundef %6) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
end_hunk_2
