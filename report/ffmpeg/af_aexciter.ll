Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_aexciter?download=true
inline.NumInlined: 18
inline.NumDeleted: 5
begin_hunk_0_@filter_frame:bb.a
  %i.fy = insertelement <2 x double> poison, double %i.fq, i64 0
  %i.fz = insertelement <2 x double> %i.fy, double %i.fu, i64 1
  %i.ga = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fw, <2 x double> %i.fx, <2 x double> %i.fz)
  store <2 x double> %i.ga, ptr %i.ex, align 8, !tbaa !37
  %i.gb = fmul nsz double %i.fd, %i.fs
  %i.gc = tail call nsz double @llvm.fmuladd.f64(double %i.fb, double %i.fn, double %i.gb)
  store double %i.gc, ptr %i.ff, align 8, !tbaa !37
  br label %distortion_process.exit

distortion_process.exit:                          ; preds = %bb.i, %bb.j
  %.048.i = phi nsz double [ %i.fs, %bb.j ], [ %i.ek, %bb.i ]
  %i.gd = load double, ptr %i.ao, align 8, !tbaa !37 ; 2 uses
  %i.ge = fmul nsz double %i.s, %i.gd
  %i.gf = tail call nsz double @llvm.fmuladd.f64(double %.048.i, double %i.o, double %i.ge)
  %i.gg = fmul nsz double %i.m, %i.gf
  %.sink = select i1 %.not54, double %i.gg, double %i.gd
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %.04658, i64 %indvars.iv
  store double %.sink, ptr %i.gh, align 8, !tbaa !37
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !47

bb.k:                                             ; preds = %._crit_edge60.split
  call void @av_frame_free(ptr noundef nonnull %i.a) #5
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge60.split
  %i.gi = call i32 @ff_filter_frame(ptr noundef %i.h, ptr noundef nonnull %.048) #5
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.c
  %.049 = phi i32 [ %i.gi, %bb.l ], [ -12, %bb.c ]
  ret i32 %.049
}

; Function Attrs: nounwind uwtable
define internal range(i32 -12, 1) i32 @config_input(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !35   ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.h = load i32, ptr %i.g, align 4, !tbaa !34
  %i.i = sext i32 %i.h to i64
  %i.j = tail call noalias ptr @av_calloc(i64 noundef %i.i, i64 noundef 312) #5 ; 3 uses
  store ptr %i.j, ptr %i.e, align 8, !tbaa !35
  %.not17 = icmp eq ptr %i.j, null
  br i1 %.not17, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.b
  %i.k = phi ptr [ %i.j, %bb.b ], [ %i.f, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.m = load i32, ptr %i.l, align 4, !tbaa !34   ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load i32, ptr %i.q, align 8, !tbaa !69
  %i.s = sitofp nsz i32 %i.r to double            ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.u = fmul nnan nsz double %i.s, 1.000000e-01
  %i.v = tail call nsz double @llvm.fmuladd.f64(double %i.s, double 1.000000e-01, double 1.000000e+00)
  %i.w = fdiv nsz double %i.u, %i.v
  %wide.trip.count = zext nneg i32 %i.m to i64
  %i.x = insertelement <2 x double> poison, double %i.s, i64 0
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.z = getelementptr inbounds nuw [312 x i8], ptr %i.k, i64 %indvars.iv ; 18 uses
  %i.aa = load double, ptr %i.o, align 8, !tbaa !70
  %i.ab = load double, ptr %i.p, align 8, !tbaa !71
  %i.ac = fdiv nsz double 1.200000e+01, %i.ab     ; 8 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store double %i.ac, ptr %i.ad, align 8, !tbaa !72
  %i.ae = fsub nsz double 1.050000e+01, %i.aa
  %i.af = fdiv nsz double %i.ac, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ah = fmul nsz double %i.ac, %i.ac
  %i.ai = tail call nsz double @llvm.fmuladd.f64(double %i.ah, double 2.000000e+00, double -1.000000e+00)
  %i.aj = tail call nsz double @llvm.fabs.f64(double %i.ai) ; 2 uses
  %i.ak = fcmp nsz ogt double %i.aj, 1.000000e-08
  %i.al = tail call nsz double @llvm.sqrt.f64(double %i.aj)
  %i.am = select nsz i1 %i.ak, double %i.al, double 0.000000e+00 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.aq = fmul nsz double %i.ac, 2.000000e+00
  %i.ar = fneg nsz double %i.ac
  %i.as = fmul nsz double %i.aq, %i.ar
  %i.at = tail call nsz double @llvm.fmuladd.f64(double %i.am, double 2.000000e+00, double %i.as)
  %i.au = tail call nsz double @llvm.fabs.f64(double %i.at) ; 2 uses
  %i.av = fcmp nsz ogt double %i.au, 1.000000e-08
  %i.aw = tail call nsz double @llvm.sqrt.f64(double %i.au)
  %i.ax = select nsz i1 %i.av, double %i.aw, double 0.000000e+00
  %i.ay = fadd nsz double %i.am, 1.000000e+00     ; 4 uses
  %i.az = fmul nsz double %i.af, 7.800000e+02
  %i.ba = insertelement <2 x double> poison, double %i.az, i64 0
  %i.bb = insertelement <2 x double> %i.ba, double %i.ay, i64 1
  %i.bc = insertelement <2 x double> <double 3.300000e+01, double poison>, double %i.ax, i64 1
  %i.bd = fdiv nsz <2 x double> %i.bb, %i.bc      ; 5 uses
  %i.be = extractelement <2 x double> %i.bd, i64 0 ; 2 uses
  store double %i.be, ptr %i.ag, align 8, !tbaa !73
  store double %i.ay, ptr %i.an, align 8, !tbaa !40
  %i.bf = fsub nsz double 2.000000e+00, %i.ay
  %i.bg = fmul nsz double %i.bf, 5.000000e-01
  store double %i.bg, ptr %i.ao, align 8, !tbaa !41
  %i.bh = fneg nsz double %i.ay
  %i.bi = tail call nsz double @llvm.fmuladd.f64(double %i.ac, double %i.ac, double %i.bh)
  %i.bj = fadd nsz double %i.bi, 1.000000e+00
  %i.bk = fmul nsz double %i.bj, 5.000000e-01
  store double %i.bk, ptr %i.ap, align 8, !tbaa !39
  %i.bl = getelementptr inbounds nuw i8, ptr %i.z, i64 88
  %i.bm = extractelement <2 x double> %i.bd, i64 1 ; 4 uses
  store double %i.bm, ptr %i.bl, align 8, !tbaa !74
  %i.bn = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  store double %i.w, ptr %i.bn, align 8, !tbaa !44
  %i.bo = tail call nsz double @llvm.fmuladd.f64(double %i.bm, double %i.bm, double 1.000000e+00) ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.z, i64 104
  store double %i.bo, ptr %i.bp, align 8, !tbaa !75
  %i.bq = tail call nsz double @llvm.fabs.f64(double %i.bo) ; 2 uses
  %i.br = fcmp nsz ogt double %i.bq, 1.000000e-08
  %i.bs = tail call nsz double @llvm.sqrt.f64(double %i.bq)
  %i.bt = select nsz i1 %i.br, double %i.bs, double 0.000000e+00
  %i.bu = fmul nsz double %i.bm, 2.000000e+00
  %i.bv = fmul nsz double %i.be, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.bx = insertelement <2 x double> poison, double %i.bv, i64 0
  %i.by = fneg nsz <2 x double> %i.bd
  %i.bz = shufflevector <2 x double> %i.bx, <2 x double> %i.by, <2 x i32> <i32 0, i32 2>
  %i.ca = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.cb = shufflevector <2 x double> %i.ca, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cc = fdiv nsz <2 x double> %i.bz, %i.cb      ; 3 uses
  %foldExtExtBinop = fmul nsz <2 x double> %i.bd, %i.bd
  %i.cd = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ce = fdiv nsz double %i.cd, %i.bo            ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  store double %i.ce, ptr %i.cf, align 8, !tbaa !43
  %i.cg = fmul nsz double %i.ce, 4.000000e+00
  %i.ch = extractelement <2 x double> %i.cc, i64 0
  %i.ci = tail call nsz double @llvm.fmuladd.f64(double %i.ch, double 2.000000e+00, double %i.cg)
  %i.cj = fadd nsz double %i.ci, -1.000000e+00
  %i.ck = tail call nsz double @llvm.fabs.f64(double %i.cj) ; 2 uses
  %i.cl = fcmp nsz ogt double %i.ck, 1.000000e-08
  %i.cm = tail call nsz double @llvm.sqrt.f64(double %i.ck)
  %i.cn = select nsz i1 %i.cl, double %i.cm, double 0.000000e+00
  %i.co = extractelement <2 x double> %i.cc, i64 1
  %i.cp = tail call nsz double @llvm.fmuladd.f64(double %i.co, double 2.000000e+00, double %i.cn) ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.z, i64 80
  store double %i.cp, ptr %i.cq, align 8, !tbaa !76
  %i.cr = fadd nsz double %i.cp, 1.000000e+00
  %i.cs = fdiv nsz double 2.000000e+00, %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.z, i64 112
  store double %i.cs, ptr %i.ct, align 8, !tbaa !42
  %i.cu = getelementptr inbounds nuw i8, ptr %i.z, i64 136
  %i.cv = getelementptr inbounds nuw i8, ptr %i.z, i64 152
  %i.cw = getelementptr inbounds nuw i8, ptr %i.z, i64 168
  %i.cx = load <2 x double>, ptr %i.t, align 8, !tbaa !37
  store <2 x double> %i.cc, ptr %i.bw, align 8, !tbaa !37
  %i.cy = fmul nsz <2 x double> %i.cx, splat (double f0x401921FB54442D18)
  %i.cz = fdiv nsz <2 x double> %i.cy, %i.y
  %i.da = tail call nsz { <2 x double>, <2 x double> } @llvm.sincos.v2f64(<2 x double> %i.cz) ; 2 uses
  %i.db = extractvalue { <2 x double>, <2 x double> } %i.da, 0
  %i.dc = extractvalue { <2 x double>, <2 x double> } %i.da, 1 ; 2 uses
  %i.dd = extractelement <2 x double> %i.dc, i64 0 ; 2 uses
  %i.de = fadd nsz double %i.dd, 1.000000e+00     ; 2 uses
  %i.df = fmul nsz double %i.de, 5.000000e-01
  %i.dg = fneg nsz double %i.de
  %i.dh = fmul nsz double %i.dd, 2.000000e+00
  %i.di = insertelement <2 x double> poison, double %i.dh, i64 0
  %i.dj = insertelement <2 x double> poison, double %i.df, i64 0
  %i.dk = insertelement <2 x double> %i.dj, double %i.dg, i64 1
  %i.dl = extractelement <2 x double> %i.dc, i64 1 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.z, i64 176
  %i.dn = fmul nsz double %i.dl, 2.000000e+00
  %i.do = getelementptr inbounds nuw i8, ptr %i.z, i64 192
  %i.dp = fdiv nsz <2 x double> %i.db, splat (double 1.414000e+00) ; 4 uses
  %i.dq = extractelement <2 x double> %i.dp, i64 0
  %i.dr = fadd nsz double %i.dq, 1.000000e+00
  %i.ds = shufflevector <2 x double> %i.di, <2 x double> %i.dp, <2 x i32> <i32 0, i32 2>
  %i.dt = fadd nsz <2 x double> %i.ds, <double -0.000000e+00, double -1.000000e+00>
  %i.du = insertelement <2 x double> poison, double %i.dr, i64 0
  %i.dv = shufflevector <2 x double> %i.du, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dw = fdiv nsz <2 x double> %i.dt, %i.dv
  store <2 x double> %i.dw, ptr %i.cu, align 8, !tbaa !37
  %i.dx = fdiv nsz <2 x double> %i.dk, %i.dv      ; 2 uses
  store <2 x double> %i.dx, ptr %i.cv, align 8, !tbaa !37
  %i.dy = extractelement <2 x double> %i.dx, i64 0
  store double %i.dy, ptr %i.cw, align 8, !tbaa !37
  %i.dz = fsub nsz double 1.000000e+00, %i.dl     ; 2 uses
  %1 = fmul nsz double %i.dz, 5.000000e-01
  %i.ea = extractelement <2 x double> %i.dp, i64 1
  %i.eb = fadd nsz double %i.ea, 1.000000e+00
  %i.ec = insertelement <2 x double> %i.dp, double %i.dn, i64 0
  %i.ed = fadd nsz <2 x double> %i.ec, <double -0.000000e+00, double -1.000000e+00>
  %i.ee = insertelement <2 x double> poison, double %i.eb, i64 0
  %i.ef = shufflevector <2 x double> %i.ee, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.eg = fdiv nsz <2 x double> %i.ed, %i.ef
  store <2 x double> %i.eg, ptr %i.dm, align 8, !tbaa !37
  %2 = insertelement <2 x double> poison, double %1, i64 0
  %3 = insertelement <2 x double> %2, double %i.dz, i64 1
  %i.eh = fdiv nsz <2 x double> %3, %i.ef         ; 2 uses
  store <2 x double> %i.eh, ptr %i.do, align 8, !tbaa !37
  %i.ei = getelementptr inbounds nuw i8, ptr %i.z, i64 208
  %i.ej = extractelement <2 x double> %i.eh, i64 0
  store double %i.ej, ptr %i.ei, align 8, !tbaa !37
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !68

.loopexit:                                        ; preds = %bb.c, %.preheader, %bb.b
  %.016 = phi i32 [ -12, %bb.b ], [ 0, %.preheader ], [ 0, %bb.c ]
  ret i32 %.016
}

declare i32 @av_frame_is_writable(ptr noundef) local_unnamed_addr #2

declare ptr @ff_get_audio_buffer(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @av_frame_free(ptr noundef) local_unnamed_addr #2

declare i32 @av_frame_copy_props(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #3

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @av_default_item_name(ptr noundef) #2

declare void @av_freep(ptr noundef) local_unnamed_addr #2

declare i32 @ff_filter_process_command(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { <2 x double>, <2 x double> } @llvm.sincos.v2f64(<2 x double>) #4

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!20 = !{!"p1 _ZTS12AVFilterLink", !9, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"p1 _ZTS15AVFilterContext", !9, i64 0}
!23 = !{!"AVRational", !6, i64 0, !6, i64 4}
!24 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!25 = !{!"p2 _ZTS15AVFrameSideData", !14, i64 0}
!26 = !{!"p1 _ZTS15AVFilterFormats", !9, i64 0}
!27 = !{!"p1 _ZTS22AVFilterChannelLayouts", !9, i64 0}
!28 = !{!"AVFilterFormatsConfig", !26, i64 0, !26, i64 8, !27, i64 16, !26, i64 24, !26, i64 32, !26, i64 40}
!29 = !{!"AVFilterLink", !22, i64 0, !13, i64 8, !22, i64 16, !13, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !23, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !24, i64 72, !23, i64 96, !25, i64 104, !6, i64 112, !6, i64 116, !28, i64 120, !28, i64 168}
!30 = !{!29, !22, i64 16}
!31 = !{!"double", !5, i64 0}
!32 = !{!"p1 _ZTS13ChannelParams", !9, i64 0}
!33 = !{!"AExciterContext", !10, i64 0, !31, i64 8, !31, i64 16, !31, i64 24, !31, i64 32, !31, i64 40, !31, i64 48, !31, i64 56, !6, i64 64, !32, i64 72}
!34 = !{!29, !6, i64 76}
!35 = !{!33, !32, i64 72}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!31, !31, i64 0}
!38 = !{!"ChannelParams", !31, i64 0, !31, i64 8, !31, i64 16, !31, i64 24, !31, i64 32, !31, i64 40, !31, i64 48, !31, i64 56, !31, i64 64, !31, i64 72, !31, i64 80, !31, i64 88, !31, i64 96, !31, i64 104, !31, i64 112, !31, i64 120, !31, i64 128, !5, i64 136, !5, i64 176, !5, i64 216, !5, i64 280}
!39 = !{!38, !31, i64 64}
!40 = !{!38, !31, i64 32}
!41 = !{!38, !31, i64 40}
!42 = !{!38, !31, i64 112}
!43 = !{!38, !31, i64 72}
!44 = !{!38, !31, i64 96}
!45 = !{!18, !15, i64 32}
!46 = distinct !{!46, !36}
!47 = distinct !{!47, !36}
!48 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!49 = !{!48, !48, i64 0}
!50 = !{!18, !15, i64 56}
!51 = !{!12, !12, i64 0}
!52 = !{!33, !31, i64 8}
!53 = !{!33, !31, i64 16}
!54 = !{!33, !31, i64 24}
!55 = !{!33, !6, i64 64}
!56 = !{!"p2 omnipotent char", !14, i64 0}
!57 = !{!"long", !5, i64 0}
!58 = !{!"p2 _ZTS11AVBufferRef", !14, i64 0}
!59 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!60 = !{!"AVFrame", !5, i64 0, !5, i64 64, !56, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !23, i64 124, !57, i64 136, !57, i64 144, !23, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !58, i64 248, !6, i64 256, !25, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !57, i64 304, !59, i64 312, !6, i64 320, !17, i64 328, !17, i64 336, !57, i64 344, !57, i64 352, !57, i64 360, !57, i64 368, !9, i64 376, !24, i64 384, !57, i64 408, !6, i64 416}
!61 = !{!60, !6, i64 112}
!62 = !{!18, !6, i64 104}
!63 = !{!38, !31, i64 48}
!64 = !{!38, !31, i64 56}
!65 = !{!38, !31, i64 120}
!66 = !{!38, !31, i64 128}
!67 = !{!33, !31, i64 56}
!68 = distinct !{!68, !36}
!69 = !{!29, !6, i64 64}
!70 = !{!33, !31, i64 40}
!71 = !{!33, !31, i64 32}
!72 = !{!38, !31, i64 16}
!73 = !{!38, !31, i64 24}
!74 = !{!38, !31, i64 88}
!75 = !{!38, !31, i64 104}
!76 = !{!38, !31, i64 80}
end_hunk_0
