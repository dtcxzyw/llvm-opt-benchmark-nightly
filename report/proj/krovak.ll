Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/krovak?download=true
inline.NumInlined: 8
inline.NumDeleted: 3
begin_hunk_0_@_ZL12krovak_setupP8PJconstsb:bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 41
  store i8 %i.a, ptr %i.ac, align 1, !tbaa !50
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store i8 1, ptr %i.ad, align 8, !tbaa !52
  %i.ae = load ptr, ptr %0, align 8, !tbaa !45
  %i.af = load ptr, ptr %i.j, align 8, !tbaa !46
  %i.ag = tail call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef %i.ae, ptr noundef %i.af, ptr noundef nonnull @.str.6)
  %i.ah = and i64 %i.ag, 4294967295
  %.not69 = icmp eq i64 %i.ah, 0
  br i1 %.not69, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.critedge
  store i8 0, ptr %i.ad, align 8, !tbaa !52
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.critedge
  %i.ai = load double, ptr %i.g, align 8, !tbaa !53 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !47 ; 5 uses
  %i.al = tail call double @cos(double noundef %i.ak) #7
  %i.am = tail call noundef double @pow(double noundef %i.al, double noundef 4.000000e+00) #7
  %i.an = fmul double %i.ai, %i.am
  %i.ao = fsub double 1.000000e+00, %i.ai         ; 2 uses
  %i.ap = fdiv double %i.an, %i.ao
  %i.aq = fadd double %i.ap, 1.000000e+00
  %i.ar = tail call double @sqrt(double noundef %i.aq) #7 ; 4 uses
  store double %i.ar, ptr %i.b, align 8, !tbaa !54
  %i.as = tail call double @sin(double noundef %i.ak) #7
  %i.at = fdiv double %i.as, %i.ar
  %i.au = tail call double @asin(double noundef %i.at) #7
  %i.av = load double, ptr %i.h, align 8, !tbaa !55 ; 3 uses
  %i.aw = tail call double @sin(double noundef %i.ak) #7
  %i.ax = fneg double %i.av
  %i.ay = insertelement <2 x double> poison, double %i.av, i64 0
  %i.az = insertelement <2 x double> %i.ay, double %i.ax, i64 1
  %i.ba = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.bb = shufflevector <2 x double> %i.ba, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.az, <2 x double> %i.bb, <2 x double> splat (double 1.000000e+00)) ; 2 uses
  %i.bd = extractelement <2 x double> %i.bc, i64 0
  %i.be = extractelement <2 x double> %i.bc, i64 1
  %i.bf = fdiv double %i.bd, %i.be
  %i.bg = fmul double %i.ar, %i.av
  %i.bh = fmul double %i.bg, 5.000000e-01
  %i.bi = tail call double @pow(double noundef %i.bf, double noundef %i.bh) #7
  %i.bj = fmul double %i.ak, 5.000000e-01
  %i.bk = fadd double %i.bj, f0x3FE921FB54442D18
  %i.bl = tail call double @tan(double noundef %i.bk) #7 ; 2 uses
  %i.bm = fcmp oeq double %i.bl, 0.000000e+00
  br i1 %i.bm, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef nonnull %0, ptr noundef nonnull @.str.7)
  %i.bn = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef nonnull %0, i32 noundef 1027)
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bo = fmul double %i.au, 5.000000e-01
  %i.bp = fadd double %i.bo, f0x3FE921FB54442D18
  %i.bq = tail call double @tan(double noundef %i.bp) #7
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bs = fneg double %i.ai
  %i.bt = tail call double @pow(double noundef %i.bl, double noundef %i.ar) #7
  %i.bu = tail call double @sqrt(double noundef %i.ao) #7
  %i.bv = tail call double @sin(double noundef %i.ak) #7
  %i.bw = tail call noundef double @pow(double noundef %i.bv, double noundef 2.000000e+00) #7
  %i.bx = tail call double @llvm.fmuladd.f64(double %i.bs, double %i.bw, double 1.000000e+00)
  %i.by = insertelement <2 x double> poison, double %i.bq, i64 0
  %i.bz = insertelement <2 x double> %i.by, double %i.bu, i64 1
  %i.ca = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.cb = insertelement <2 x double> %i.ca, double %i.bx, i64 1
  %i.cc = fdiv <2 x double> %i.bz, %i.cb          ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !49
  %i.cf = extractelement <2 x double> %i.cc, i64 1
  %i.cg = fmul double %i.ce, %i.cf
  %i.ch = fdiv double %i.cg, f0x4013A91EECBC9F28
  %i.ci = extractelement <2 x double> %i.cc, i64 0
  %i.cj = fmul double %i.bi, %i.ci
  %i.ck = insertelement <4 x double> <double poison, double f0x3FEF5B8B0DDC7212, double poison, double f0x3FE0EA84C5399C90>, double %i.cj, i64 0
  %i.cl = insertelement <4 x double> %i.ck, double %i.ch, i64 2
  store <4 x double> %i.cl, ptr %i.br, align 8, !tbaa !44
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @_ZL16krovak_e_inverse5PJ_XYP8PJconsts, ptr %i.cm, align 8, !tbaa !56
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @_ZL16krovak_e_forward5PJ_LPP8PJconsts, ptr %i.cn, align 8, !tbaa !57
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.b
  %.1 = phi ptr [ %i.d, %bb.b ], [ %i.bn, %bb.l ], [ %0, %bb.m ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @pj_mod_krovak(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call fastcc noundef ptr @_ZL12krovak_setupP8PJconstsb(ptr noundef nonnull %0, i1 noundef zeroext true)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_Z6pj_newv()      ; 7 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @.str.1, ptr %i.d, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr @_ZL14des_mod_krovak, ptr %i.e, align 8, !tbaa !38
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  store i32 1, ptr %i.f, align 8, !tbaa !39
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 380
  store i32 4, ptr %i.g, align 4, !tbaa !40
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  store i32 1, ptr %i.h, align 8, !tbaa !41
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi ptr [ %i.a, %bb.b ], [ %i.b, %bb.d ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_Z39pj_projection_specific_setup_mod_krovakP8PJconsts(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef ptr @_ZL12krovak_setupP8PJconstsb(ptr noundef %0, i1 noundef zeroext true)
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #3

declare i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @asin(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @tan(double noundef) local_unnamed_addr #3

declare void @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal { double, double } @_ZL16krovak_e_inverse5PJ_XYP8PJconsts(double %0, double %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load i8, ptr %i.c, align 8, !tbaa !52, !range !58, !noundef !59
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = insertelement <2 x double> poison, double %0, i64 0
  %i.g = insertelement <2 x double> %i.f, double %1, i64 1 ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = fneg <2 x double> %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 456
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.k = load double, ptr %i.j, align 8, !tbaa !43
  %i.l = load <2 x double>, ptr %i.i, align 8, !tbaa !44
  %i.m = insertelement <2 x double> poison, double %i.k, i64 0
  %i.n = fmul <2 x double> %i.l, splat (double 2.000000e+00)
  %i.o = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.p = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> zeroinitializer
  %i.q = fdiv <2 x double> %i.o, %i.p
  %i.r = fsub <2 x double> %i.h, %i.q
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.s = phi <2 x double> [ %i.r, %bb.b ], [ %i.g, %bb.a ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 41
  %i.u = load i8, ptr %i.t, align 1, !tbaa !50, !range !58, !noundef !59
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.x = load double, ptr %i.w, align 8, !tbaa !43
  %i.y = insertelement <2 x double> poison, double %i.x, i64 0
  %i.z = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aa = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.s, <2 x double> %i.z, <2 x double> <double -6.540000e+05, double -1.089000e+06>) ; 8 uses
  %3 = fmul <2 x double> %i.aa, %i.aa             ; 7 uses
  %4 = fmul <2 x double> %3, %3                   ; 2 uses
  %i.ab = extractelement <2 x double> %3, i64 0   ; 2 uses
  %i.ac = extractelement <2 x double> %3, i64 1   ; 2 uses
  %5 = fsub double %i.ac, %i.ab
  %6 = fneg <2 x double> %3
  %7 = shufflevector <2 x double> %3, <2 x double> %6, <2 x i32> <i32 1, i32 2>
  %8 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %3, <2 x double> <double -3.000000e+00, double 3.000000e+00>, <2 x double> %7) ; 2 uses
  %shift = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %shift, %4
  %9 = extractelement <2 x double> %foldExtExtBinop, i64 0
  %10 = fmul double %i.ac, -6.000000e+00
  %11 = tail call double @llvm.fmuladd.f64(double %10, double %i.ab, double %9)
  %i.ad = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aa, <2 x double> splat (double f0x3E800605F83896B3), <2 x double> <double f0x3F99C373FF498060, double f0x3F9E2C265341C1A4>)
  %i.ae = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.af = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aa, <2 x double> <double f0x3E9F5406EC5CC2FD, double f0xBE9F5406EC5CC2FD>, <2 x double> %i.ae)
  %i.ag = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ah = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.ai = fmul <2 x double> %i.ah, <double f0x3DB44E44D109F87B, double f0xBD8ACE4BAC544754>
  %i.aj = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ak = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ai, <2 x double> %i.aj, <2 x double> %i.ag)
  %i.al = insertelement <2 x double> poison, double %5, i64 0
  %i.am = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.an = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.am, <2 x double> <double f0x3D7ACE4BAC544754, double f0x3DA44E44D109F87B>, <2 x double> %i.ak)
  %i.ao = fmul <2 x double> %i.ah, <double f0x3C54546B39942197, double f0x3C3F4CD12E646DE9>
  %12 = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> zeroinitializer
  %13 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ao, <2 x double> %12, <2 x double> %i.an)
  %14 = fmul <2 x double> %i.aj, <double f0x3C3F4CD12E646DE9, double f0xBC54546B39942197>
  %15 = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %16 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %14, <2 x double> %15, <2 x double> %13)
  %17 = fmul <2 x double> %i.ah, <double f0xBB31D758226044D9, double f0xBB4424B0E0B567C6>
  %18 = fneg <2 x double> %i.aa
  %19 = shufflevector <2 x double> %18, <2 x double> %i.aa, <2 x i32> <i32 0, i32 2>
  %20 = fmul <2 x double> %19, %17
  %i.ap = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %20, <2 x double> %i.am, <2 x double> %16)
  %21 = insertelement <2 x double> poison, double %11, i64 0
  %i.aq = shufflevector <2 x double> %21, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ar = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aq, <2 x double> <double f0xBB2424B0E0B567C6, double f0xBB11D758226044D9>, <2 x double> %i.ap)
  %i.as = fdiv <2 x double> %i.ar, %i.z
  %i.at = fadd <2 x double> %i.s, %i.as
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.au = phi <2 x double> [ %i.at, %bb.d ], [ %i.s, %bb.c ] ; 4 uses
  %i.av = extractelement <2 x double> %i.au, i64 0
  %foldExtExtBinop67 = fmul <2 x double> %i.au, %i.au
  %i.aw = extractelement <2 x double> %foldExtExtBinop67, i64 0
  %i.ax = extractelement <2 x double> %i.au, i64 1 ; 3 uses
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.ax, double %i.ax, double %i.aw) ; 2 uses
  %i.az = tail call double @atan2(double noundef %i.av, double noundef %i.ax) #7
  %i.ba = fdiv double %i.az, f0x3FEF5B8B0DDC7212  ; 2 uses
  %i.bb = fcmp oeq double %i.ay, 0.000000e+00
  br i1 %i.bb, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %sqrt = tail call double @llvm.sqrt.f64(double %i.ay)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !60
  %i.be = fdiv double %i.bd, %sqrt
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !61
  %i.bh = fdiv double 1.000000e+00, %i.bg
  %i.bi = tail call double @pow(double noundef %i.be, double noundef %i.bh) #7
  %i.bj = fmul double %i.bi, f0x4023DCAD2E5FE87A
  %i.bk = tail call double @atan(double noundef %i.bj) #7
  %i.bl = fadd double %i.bk, f0xBFE921FB54442D18
  %i.bm = fmul double %i.bl, 2.000000e+00
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.046 = phi double [ %i.bm, %bb.f ], [ f0x3FF921FB54442D18, %bb.e ] ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !62 ; 2 uses
  %i.bp = tail call double @cos(double noundef %i.bo) #7
  %i.bq = tail call double @sin(double noundef %.046) #7
  %i.br = tail call double @sin(double noundef %i.bo) #7
  %i.bs = tail call double @cos(double noundef %.046) #7
  %i.bt = fmul double %i.br, %i.bs
  %i.bu = tail call double @cos(double noundef %i.ba) #7
  %i.bv = fneg double %i.bu
  %i.bw = fmul double %i.bt, %i.bv
  %i.bx = tail call double @llvm.fmuladd.f64(double %i.bp, double %i.bq, double %i.bw)
  %i.by = tail call double @asin(double noundef %i.bx) #7 ; 3 uses
  %i.bz = tail call double @cos(double noundef %.046) #7
  %i.ca = tail call double @sin(double noundef %i.ba) #7
  %i.cb = fmul double %i.bz, %i.ca
  %i.cc = tail call double @cos(double noundef %i.by) #7
  %i.cd = fdiv double %i.cb, %i.cc
  %i.ce = tail call double @asin(double noundef %i.cd) #7
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 440 ; 2 uses
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !48 ; 2 uses
  %i.ch = load double, ptr %i.b, align 8, !tbaa !54 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !63
  %i.ck = fdiv double -1.000000e+00, %i.ch
  %i.cl = fmul double %i.by, 5.000000e-01
  %i.cm = fadd double %i.cl, f0x3FE921FB54442D18
  %i.cn = fdiv double 1.000000e+00, %i.ch
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.cp = load double, ptr %i.co, align 8, !tbaa !55 ; 3 uses
  %i.cq = fneg double %i.cp
  %i.cr = fmul double %i.cp, 5.000000e-01
  %i.cs = insertelement <2 x double> poison, double %i.cp, i64 0
  %i.ct = insertelement <2 x double> %i.cs, double %i.cq, i64 1
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %i.cu = add nsw i32 %.061, -1                   ; 2 uses
  %.not = icmp eq i32 %i.cu, 0
  br i1 %.not, label %bb.j, label %bb.i, !llvm.loop !64

bb.i:                                             ; preds = %bb.g, %bb.h
  %.061 = phi i32 [ 100, %bb.g ], [ %i.cu, %bb.h ]
  %.04560 = phi double [ %i.by, %bb.g ], [ %i.dk, %bb.h ] ; 2 uses
  %i.cv = tail call double @pow(double noundef %i.cj, double noundef %i.ck) #7
  %i.cw = tail call double @tan(double noundef %i.cm) #7
  %i.cx = tail call double @pow(double noundef %i.cw, double noundef %i.cn) #7
  %i.cy = fmul double %i.cv, %i.cx
  %i.cz = tail call double @sin(double noundef %.04560) #7
  %i.da = insertelement <2 x double> poison, double %i.cz, i64 0
  %i.db = shufflevector <2 x double> %i.da, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ct, <2 x double> %i.db, <2 x double> splat (double 1.000000e+00)) ; 2 uses
  %i.dd = extractelement <2 x double> %i.dc, i64 0
  %i.de = extractelement <2 x double> %i.dc, i64 1
  %i.df = fdiv double %i.dd, %i.de
  %i.dg = tail call double @pow(double noundef %i.df, double noundef %i.cr) #7
  %i.dh = fmul double %i.cy, %i.dg
  %i.di = tail call double @atan(double noundef %i.dh) #7
  %i.dj = fadd double %i.di, f0xBFE921FB54442D18
  %i.dk = fmul double %i.dj, 2.000000e+00         ; 3 uses
  %i.dl = fsub double %.04560, %i.dk
  %i.dm = tail call double @llvm.fabs.f64(double %i.dl)
  %i.dn = fcmp olt double %i.dm, 1.000000e-15
  br i1 %i.dn, label %.loopexit, label %bb.h

bb.j:                                             ; preds = %bb.h
  %i.do = load ptr, ptr %2, align 8, !tbaa !45
  tail call void @_Z22proj_context_errno_setP6pj_ctxi(ptr noundef %i.do, i32 noundef 2050)
  %.pre = load double, ptr %i.cf, align 8, !tbaa !48
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %bb.j
  %i.dp = phi double [ %.pre, %bb.j ], [ %i.cg, %bb.i ]
  %i.dq = fdiv double %i.ce, %i.ch
  %i.dr = fsub double %i.cg, %i.dq
  %i.ds = fsub double %i.dr, %i.dp
  %.fca.0.insert = insertvalue { double, double } poison, double %i.ds, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.dk, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define internal { double, double } @_ZL16krovak_e_forward5PJ_LPP8PJconsts(double %0, double %1, ptr nofree noundef readonly captures(none) %2) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.d = load double, ptr %i.c, align 8, !tbaa !55 ; 3 uses
  %i.e = tail call double @sin(double noundef %1) #7
  %i.f = fneg double %i.d
  %i.g = insertelement <2 x double> poison, double %i.d, i64 0
  %i.h = insertelement <2 x double> %i.g, double %i.f, i64 1
  %i.i = insertelement <2 x double> poison, double %i.e, i64 0
  %i.j = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.k = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.h, <2 x double> %i.j, <2 x double> splat (double 1.000000e+00)) ; 2 uses
  %i.l = extractelement <2 x double> %i.k, i64 0
  %i.m = extractelement <2 x double> %i.k, i64 1
  %i.n = fdiv double %i.l, %i.m
  %i.o = load double, ptr %i.b, align 8, !tbaa !54 ; 3 uses
  %i.p = fmul double %i.d, %i.o
  %i.q = fmul double %i.p, 5.000000e-01
  %i.r = tail call double @pow(double noundef %i.n, double noundef %i.q) #7
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.t = load double, ptr %i.s, align 8, !tbaa !63
  %i.u = fmul double %1, 5.000000e-01
  %i.v = fadd double %i.u, f0x3FE921FB54442D18
  %i.w = tail call double @tan(double noundef %i.v) #7
  %i.x = tail call double @pow(double noundef %i.w, double noundef %i.o) #7
  %i.y = fmul double %i.t, %i.x
  %i.z = fdiv double %i.y, %i.r
  %i.aa = tail call double @atan(double noundef %i.z) #7
  %i.ab = fadd double %i.aa, f0xBFE921FB54442D18
  %i.ac = fmul double %i.ab, 2.000000e+00         ; 3 uses
  %i.ad = fneg double %0
  %i.ae = fmul double %i.o, %i.ad                 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ag = load double, ptr %i.af, align 8, !tbaa !62 ; 2 uses
  %i.ah = tail call double @cos(double noundef %i.ag) #7
  %i.ai = tail call double @sin(double noundef %i.ac) #7
  %i.aj = tail call double @sin(double noundef %i.ag) #7
  %i.ak = tail call double @cos(double noundef %i.ac) #7
  %i.al = fmul double %i.aj, %i.ak
  %i.am = tail call double @cos(double noundef %i.ae) #7
  %i.an = fmul double %i.al, %i.am
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.ai, double %i.an)
  %i.ap = tail call double @asin(double noundef %i.ao) #7 ; 2 uses
  %i.aq = tail call double @cos(double noundef %i.ap) #7 ; 2 uses
  %i.ar = fcmp olt double %i.aq, f0x3D719799812DEA11
  br i1 %i.ar, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.as = tail call double @cos(double noundef %i.ac) #7
  %i.at = tail call double @sin(double noundef %i.ae) #7
  %i.au = fmul double %i.as, %i.at
  %i.av = fdiv double %i.au, %i.aq
  %i.aw = tail call double @asin(double noundef %i.av) #7
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !61 ; 3 uses
  %i.az = fmul double %i.aw, %i.ay                ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !60
  %i.bc = tail call double @pow(double noundef f0x4023DCAD2E5FE87A, double noundef %i.ay) #7
  %i.bd = fmul double %i.bb, %i.bc
  %i.be = fmul double %i.ap, 5.000000e-01
  %i.bf = fadd double %i.be, f0x3FE921FB54442D18
  %i.bg = tail call double @tan(double noundef %i.bf) #7
  %i.bh = tail call double @pow(double noundef %i.bg, double noundef %i.ay) #7
  %i.bi = fdiv double %i.bd, %i.bh
  %i.bj = tail call double @cos(double noundef %i.az) #7
  %i.bk = tail call double @sin(double noundef %i.az) #7
  %i.bl = insertelement <2 x double> poison, double %i.bi, i64 0
  %i.bm = shufflevector <2 x double> %i.bl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bn = insertelement <2 x double> poison, double %i.bk, i64 0
  %i.bo = insertelement <2 x double> %i.bn, double %i.bj, i64 1
  %i.bp = fmul <2 x double> %i.bm, %i.bo          ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 41
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !50, !range !58, !noundef !59
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !43
  %i.bv = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.bw = shufflevector <2 x double> %i.bv, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bp, <2 x double> %i.bw, <2 x double> <double -6.540000e+05, double -1.089000e+06>) ; 9 uses
  %i.by = fmul <2 x double> %i.bx, %i.bx          ; 7 uses
  %i.bz = fmul <2 x double> %i.by, %i.by          ; 2 uses
  %i.ca = extractelement <2 x double> %i.by, i64 0 ; 2 uses
  %i.cb = extractelement <2 x double> %i.by, i64 1 ; 2 uses
  %i.cc = fsub double %i.cb, %i.ca
  %i.cd = fneg <2 x double> %i.by
  %i.ce = shufflevector <2 x double> %i.by, <2 x double> %i.cd, <2 x i32> <i32 1, i32 2>
  %i.cf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.by, <2 x double> <double -3.000000e+00, double 3.000000e+00>, <2 x double> %i.ce) ; 2 uses
  %shift = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %shift, %i.bz
  %i.cg = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ch = fmul double %i.cb, -6.000000e+00
  %i.ci = tail call double @llvm.fmuladd.f64(double %i.ch, double %i.ca, double %i.cg)
  %i.cj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bx, <2 x double> splat (double f0x3E800605F83896B3), <2 x double> <double f0x3F99C373FF498060, double f0x3F9E2C265341C1A4>)
  %i.ck = shufflevector <2 x double> %i.cj, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bx, <2 x double> <double f0x3E9F5406EC5CC2FD, double f0xBE9F5406EC5CC2FD>, <2 x double> %i.ck)
  %i.cm = shufflevector <2 x double> %i.bx, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cn = fmul <2 x double> %i.cm, <double f0x3DB44E44D109F87B, double f0xBD8ACE4BAC544754>
  %i.co = shufflevector <2 x double> %i.bx, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cp = shufflevector <2 x double> %i.cl, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cn, <2 x double> %i.co, <2 x double> %i.cp)
  %i.cr = insertelement <2 x double> poison, double %i.cc, i64 0
  %i.cs = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ct = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cs, <2 x double> <double f0x3D7ACE4BAC544754, double f0x3DA44E44D109F87B>, <2 x double> %i.cq)
  %i.cu = shufflevector <2 x double> %i.bx, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.cv = fmul <2 x double> %i.cu, <double f0x3C54546B39942197, double f0x3C3F4CD12E646DE9>
  %i.cw = shufflevector <2 x double> %i.cf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cv, <2 x double> %i.cw, <2 x double> %i.ct)
  %i.cy = fmul <2 x double> %i.co, <double f0x3C3F4CD12E646DE9, double f0xBC54546B39942197>
  %i.cz = shufflevector <2 x double> %i.cf, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.da = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cy, <2 x double> %i.cz, <2 x double> %i.cx)
  %i.db = fmul <2 x double> %i.cu, <double f0xBB31D758226044D9, double f0xBB4424B0E0B567C6>
  %i.dc = fneg <2 x double> %i.bx
  %i.dd = shufflevector <2 x double> %i.dc, <2 x double> %i.bx, <2 x i32> <i32 0, i32 2>
  %i.de = fmul <2 x double> %i.dd, %i.db
  %i.df = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.de, <2 x double> %i.cs, <2 x double> %i.da)
  %i.dg = insertelement <2 x double> poison, double %i.ci, i64 0
  %i.dh = shufflevector <2 x double> %i.dg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.di = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dh, <2 x double> <double f0xBB2424B0E0B567C6, double f0xBB11D758226044D9>, <2 x double> %i.df)
  %i.dj = fdiv <2 x double> %i.di, %i.bw
  %i.dk = fsub <2 x double> %i.bp, %i.dj
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.dl = phi <2 x double> [ %i.dk, %bb.c ], [ %i.bp, %bb.b ] ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.dn = load i8, ptr %i.dm, align 8, !tbaa !52, !range !58, !noundef !59
  %i.do = trunc nuw i8 %i.dn to i1
  br i1 %i.do, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.dp = fneg <2 x double> %i.dl
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 456
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !43
  %i.dt = load <2 x double>, ptr %i.dq, align 8, !tbaa !44
  %i.du = fmul <2 x double> %i.dt, splat (double 2.000000e+00)
  %i.dv = insertelement <2 x double> poison, double %i.ds, i64 0
  %i.dw = shufflevector <2 x double> %i.dv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dx = fdiv <2 x double> %i.du, %i.dw
  %i.dy = fsub <2 x double> %i.dp, %i.dx
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.d, %bb.e
  %i.dz = phi <2 x double> [ %i.dl, %bb.d ], [ %i.dy, %bb.e ], [ zeroinitializer, %bb.a ] ; 2 uses
  %i.ea = extractelement <2 x double> %i.dz, i64 0
  %.fca.0.insert = insertvalue { double, double } poison, double %i.ea, 0
  %i.eb = extractelement <2 x double> %i.dz, i64 1
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.eb, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan(double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

declare void @_Z22proj_context_errno_setP6pj_ctxi(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind allocsize(0,1) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !12, i64 8}
!9 = !{!"_ZTS8PJconsts", !10, i64 0, !12, i64 8, !12, i64 16, !13, i64 24, !12, i64 32, !14, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !15, i64 80, !11, i64 88, !5, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !16, i64 168, !16, i64 176, !16, i64 184, !16, i64 192, !16, i64 200, !16, i64 208, !16, i64 216, !16, i64 224, !16, i64 232, !16, i64 240, !16, i64 248, !16, i64 256, !16, i64 264, !16, i64 272, !16, i64 280, !16, i64 288, !16, i64 296, !16, i64 304, !16, i64 312, !16, i64 320, !16, i64 328, !16, i64 336, !5, i64 344, !5, i64 348, !5, i64 352, !5, i64 356, !5, i64 360, !5, i64 364, !5, i64 368, !5, i64 372, !5, i64 376, !17, i64 380, !17, i64 384, !14, i64 392, !14, i64 400, !14, i64 408, !14, i64 416, !14, i64 424, !14, i64 432, !16, i64 440, !16, i64 448, !16, i64 456, !16, i64 464, !16, i64 472, !16, i64 480, !16, i64 488, !16, i64 496, !16, i64 504, !16, i64 512, !16, i64 520, !5, i64 528, !6, i64 536, !5, i64 592, !11, i64 600, !11, i64 608, !16, i64 616, !16, i64 624, !5, i64 632, !6, i64 636, !18, i64 640, !23, i64 656, !16, i64 664, !23, i64 672, !24, i64 680, !24, i64 712, !24, i64 744, !23, i64 776, !27, i64 784, !32, i64 808, !33, i64 816, !5, i64 840, !23, i64 844, !23, i64 845, !23, i64 846, !14, i64 848}
!10 = !{!"p1 _ZTS6pj_ctx", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"p1 _ZTS8ARG_list", !11, i64 0}
!14 = !{!"p1 _ZTS8PJconsts", !11, i64 0}
!15 = !{!"p1 _ZTS13geod_geodesic", !11, i64 0}
!16 = !{!"double", !6, i64 0}
!17 = !{!"_ZTS11pj_io_units", !6, i64 0}
!18 = !{!"_ZTSSt10shared_ptrIN5osgeo4proj4util10BaseObjectEE", !19, i64 0}
!19 = !{!"_ZTSSt12__shared_ptrIN5osgeo4proj4util10BaseObjectELN9__gnu_cxx12_Lock_policyE2EE", !20, i64 0, !21, i64 8}
!20 = !{!"p1 _ZTSN5osgeo4proj4util10BaseObjectE", !11, i64 0}
!21 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !22, i64 0}
!22 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !11, i64 0}
!23 = !{!"bool", !6, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !25, i64 0, !26, i64 8, !6, i64 16}
!25 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !12, i64 0}
!26 = !{!"long", !6, i64 0}
!27 = !{!"_ZTSSt6vectorIN5osgeo4proj9operation15GridDescriptionESaIS3_EE", !28, i64 0}
!28 = !{!"_ZTSSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE", !29, i64 0}
!29 = !{!"_ZTSNSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE12_Vector_implE", !30, i64 0}
!30 = !{!"_ZTSNSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE17_Vector_impl_dataE", !31, i64 0, !31, i64 8, !31, i64 16}
!31 = !{!"p1 _ZTSN5osgeo4proj9operation15GridDescriptionE", !11, i64 0}
!32 = !{!"_ZTS7PJ_TYPE", !6, i64 0}
!33 = !{!"_ZTSSt6vectorI16PJCoordOperationSaIS0_EE", !34, i64 0}
!34 = !{!"_ZTSSt12_Vector_baseI16PJCoordOperationSaIS0_EE", !35, i64 0}
!35 = !{!"_ZTSNSt12_Vector_baseI16PJCoordOperationSaIS0_EE12_Vector_implE", !36, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseI16PJCoordOperationSaIS0_EE17_Vector_impl_dataE", !37, i64 0, !37, i64 8, !37, i64 16}
!37 = !{!"p1 _ZTS16PJCoordOperation", !11, i64 0}
!38 = !{!9, !12, i64 16}
!39 = !{!9, !5, i64 360}
!40 = !{!9, !17, i64 380}
!41 = !{!9, !17, i64 384}
!42 = !{!9, !11, i64 88}
!43 = !{!9, !16, i64 168}
!44 = !{!16, !16, i64 0}
!45 = !{!9, !10, i64 0}
!46 = !{!9, !13, i64 24}
!47 = !{!9, !16, i64 448}
!48 = !{!9, !16, i64 440}
!49 = !{!9, !16, i64 488}
!50 = !{!51, !23, i64 41}
!51 = !{!"_ZTSN12_GLOBAL__N_114pj_krovak_dataE", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !23, i64 40, !23, i64 41}
!52 = !{!51, !23, i64 40}
!53 = !{!9, !16, i64 216}
!54 = !{!51, !16, i64 0}
!55 = !{!9, !16, i64 208}
!56 = !{!9, !11, i64 112}
!57 = !{!9, !11, i64 104}
!58 = !{i8 0, i8 2}
!59 = !{}
!60 = !{!51, !16, i64 24}
!61 = !{!51, !16, i64 16}
!62 = !{!51, !16, i64 32}
!63 = !{!51, !16, i64 8}
!64 = distinct !{!64, !65}
!65 = !{!"llvm.loop.mustprogress"}
end_hunk_0
