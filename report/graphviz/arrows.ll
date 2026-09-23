Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/arrows?download=true
inline.NumInlined: 29
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@arrow_type_crow0:bb.a
  %i.o = or <2 x i1> %i.l, %i.n
  %i.p = fmul <2 x double> %i.i, <double 4.500000e-01, double 1.000000e+00>
  %i.q = select <2 x i1> %i.o, <2 x double> <double 4.500000e-01, double 0.000000e+00>, <2 x double> %i.p ; 2 uses
  %i.r = insertelement <2 x double> poison, double %2, i64 0 ; 2 uses
  %i.s = insertelement <2 x double> %i.r, double %3, i64 1 ; 3 uses
  %i.t = fneg <2 x double> %i.s                   ; 3 uses
  %i.u = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer
  %i.v = shufflevector <2 x double> %i.t, <2 x double> %i.r, <2 x i32> <i32 1, i32 2>
  %i.w = fmul <2 x double> %i.u, %i.v             ; 5 uses
  %i.x = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.y = insertelement <2 x double> poison, double %2, i64 1
  %i.z = shufflevector <2 x double> %i.y, <2 x double> %i.t, <2 x i32> <i32 3, i32 1>
  %i.aa = fmul <2 x double> %i.x, %i.z            ; 5 uses
  %i.ab = insertelement <2 x double> poison, double %0, i64 0
  %i.ac = insertelement <2 x double> %i.ab, double %1, i64 1 ; 4 uses
  %i.ad = fadd <2 x double> %i.ac, %i.s           ; 3 uses
  %i.ae = insertelement <2 x double> poison, double %2, i64 0
  %i.af = insertelement <2 x double> %i.ae, double %3, i64 1
  %i.ag = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.af, <2 x double> splat (double 5.000000e-01), <2 x double> %i.ac) ; 3 uses
  %i.ah = extractelement <2 x double> %i.w, i64 0 ; 3 uses
  %i.ai = fneg double %i.ah
  %i.aj = extractelement <2 x double> %i.w, i64 1 ; 3 uses
  %i.ak = fneg double %i.aj
  %i.al = and i32 %6, 128
  %.not302 = icmp eq i32 %i.al, 0                 ; 3 uses
  %.sroa.0128.0 = select i1 %.not302, double %i.ah, double 0.000000e+00 ; 2 uses
  %.sroa.6130.0 = select i1 %.not302, double %i.aj, double 0.000000e+00 ; 2 uses
  %i.am = and i32 %6, 64
  %.not303 = icmp eq i32 %i.am, 0                 ; 3 uses
  %.sroa.0124.0 = select i1 %.not303, double %i.ai, double 0.000000e+00 ; 2 uses
  %.sroa.6.0 = select i1 %.not303, double %i.ak, double 0.000000e+00 ; 2 uses
  %.sroa.7119.0 = select i1 %.not, double %.sroa.6130.0, double %.sroa.6.0 ; 3 uses
  %.sroa.0115.0 = select i1 %.not, double %.sroa.0128.0, double %.sroa.0124.0 ; 3 uses
  %.sroa.7.0 = select i1 %.not, double %.sroa.6.0, double %.sroa.6130.0 ; 3 uses
  %.sroa.0107.0 = select i1 %.not, double %.sroa.0124.0, double %.sroa.0128.0 ; 3 uses
  %i.an = select <2 x i1> %i.n, <2 x double> %i.s, <2 x double> %i.t ; 6 uses
  %i.ao = fcmp une double %2, 0.000000e+00
  %i.ap = fcmp une double %3, 0.000000e+00
  %or.cond = select i1 %i.ao, i1 true, i1 %i.ap
  br i1 %or.cond, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.aq = extractelement <2 x double> %i.an, i64 0 ; 4 uses
  %i.ar = extractelement <2 x double> %i.an, i64 1 ; 5 uses
  %i.as = tail call double @hypot(double noundef %i.aq, double noundef %i.ar) #11
  %i.at = insertelement <2 x double> poison, double %i.as, i64 0
  %i.au = shufflevector <2 x double> %i.at, <2 x double> poison, <2 x i32> zeroinitializer
  %i.av = fdiv <2 x double> %i.an, %i.au          ; 4 uses
  %i.aw = fcmp ogt double %i.ar, 0.000000e+00
  %i.ax = extractelement <2 x double> %i.av, i64 0
  %i.ay = tail call double @acos(double noundef %i.ax) #11 ; 2 uses
  %i.az = fneg double %i.ay
  %i.ba = select i1 %i.aw, double %i.ay, double %i.az ; 3 uses
  %i.bb = and i32 %6, 96
  %brmerge = icmp ne i32 %i.bb, 96
  %.not304.not = xor i1 %.not, true               ; 2 uses
  %brmerge308 = or i1 %.not302, %.not304.not
  %or.cond312 = and i1 %brmerge, %brmerge308
  br i1 %or.cond312, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  call fastcc void @miter_shape(ptr dead_on_unwind noalias writable align 8 %8, double %.sroa.0115.0, double %.sroa.7119.0, double %i.aq, double %i.ar, double %.sroa.0107.0, double %.sroa.7.0, double noundef %5)
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.bd = load <2 x double>, ptr %i.bc, align 8, !tbaa !19
  %i.be = fsub <2 x double> %i.bd, %i.an          ; 2 uses
  %i.bf = extractelement <2 x double> %i.be, i64 0 ; 2 uses
  %i.bg = extractelement <2 x double> %i.be, i64 1 ; 2 uses
  %i.bh = tail call double @hypot(double noundef %i.bf, double noundef %i.bg) #11 ; 2 uses
  %i.bi = fdiv double %i.bf, %i.bh
  %i.bj = fcmp ogt double %i.bg, 0.000000e+00
  %i.bk = tail call double @acos(double noundef %i.bi) #11 ; 2 uses
  %i.bl = fneg double %i.bk
  %i.bm = select i1 %i.bj, double %i.bk, double %i.bl
  %i.bn = fsub double %i.bm, %i.ba
  %i.bo = tail call double @cos(double noundef %i.bn) #11
  %i.bp = fmul double %i.bh, %i.bo
  %i.bq = insertelement <2 x double> poison, double %i.bp, i64 0
  %i.br = shufflevector <2 x double> %i.bq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bs = fmul <2 x double> %i.av, %i.br
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %brmerge310 = or i1 %.not303, %.not304.not
  %i.bt = and i32 %6, 160
  %brmerge311 = icmp ne i32 %i.bt, 160
  %or.cond313 = and i1 %brmerge311, %brmerge310
  br i1 %or.cond313, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  call fastcc void @miter_shape(ptr dead_on_unwind noalias writable align 8 %9, double %.sroa.0115.0, double %.sroa.7119.0, double %i.aq, double %i.ar, double %.sroa.0107.0, double %.sroa.7.0, double noundef %5)
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bv = load <2 x double>, ptr %i.bu, align 8, !tbaa !19
  %i.bw = fsub <2 x double> %i.bv, %i.an          ; 2 uses
  %i.bx = extractelement <2 x double> %i.bw, i64 0 ; 2 uses
  %i.by = extractelement <2 x double> %i.bw, i64 1 ; 2 uses
  %i.bz = tail call double @hypot(double noundef %i.bx, double noundef %i.by) #11 ; 2 uses
  %i.ca = fdiv double %i.bx, %i.bz
  %i.cb = fcmp ogt double %i.by, 0.000000e+00
  %i.cc = tail call double @acos(double noundef %i.ca) #11 ; 2 uses
  %i.cd = fneg double %i.cc
  %i.ce = select i1 %i.cb, double %i.cc, double %i.cd
  %i.cf = fsub double %i.ce, %i.ba
  %i.cg = tail call double @cos(double noundef %i.cf) #11
  %i.ch = fmul double %i.bz, %i.cg
  %i.ci = insertelement <2 x double> poison, double %i.ch, i64 0
  %i.cj = shufflevector <2 x double> %i.ci, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ck = fmul <2 x double> %i.av, %i.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  call fastcc void @miter_shape(ptr dead_on_unwind noalias writable align 8 %10, double %.sroa.0115.0, double %.sroa.7119.0, double %i.aq, double %i.ar, double %.sroa.0107.0, double %.sroa.7.0, double noundef %5)
  %i.cl = load <2 x double>, ptr %10, align 16, !tbaa !19
  %i.cm = fsub <2 x double> %i.cl, %i.an
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c
  %i.cn = phi <2 x double> [ %i.bs, %bb.c ], [ %i.ck, %bb.e ], [ %i.cm, %bb.f ]
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.co = fmul double %5, 5.000000e-01
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.cp = fsub <2 x double> %i.ag, %i.ad
  %i.cq = fadd <2 x double> %i.cp, %i.aa          ; 2 uses
  %i.cr = fsub double %i.ah, %2                   ; 2 uses
  %i.cs = fsub double %i.aj, %3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  %i.ct = extractelement <2 x double> %i.cq, i64 0
  %i.cu = extractelement <2 x double> %i.cq, i64 1
  call fastcc void @miter_shape(ptr dead_on_unwind noalias writable align 8 %11, double %i.ct, double %i.cu, double %i.cr, double %i.cs, double 0.000000e+00, double 0.000000e+00, double noundef %5)
  %i.cv = getelementptr inbounds nuw i8, ptr %11, i64 16
  %.sroa.015.0.copyload = load double, ptr %i.cv, align 8, !tbaa !19
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 24
  %.sroa.416.0.copyload = load double, ptr %.sroa.416.0..sroa_idx, align 8, !tbaa !19
  %i.cw = fsub double %.sroa.015.0.copyload, %i.cr ; 2 uses
  %i.cx = fsub double %.sroa.416.0.copyload, %i.cs ; 2 uses
  %i.cy = tail call double @hypot(double noundef %i.cw, double noundef %i.cx) #11 ; 2 uses
  %i.cz = fdiv double %i.cw, %i.cy
  %i.da = fcmp ogt double %i.cx, 0.000000e+00
  %i.db = tail call double @acos(double noundef %i.cz) #11 ; 2 uses
  %i.dc = fneg double %i.db
  %i.dd = select i1 %i.da, double %i.db, double %i.dc
  %i.de = fsub double %i.dd, %i.ba
  %i.df = fneg double %i.cy
  %i.dg = tail call double @cos(double noundef %i.de) #11
  %i.dh = fmul double %i.dg, %i.df
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi double [ %i.co, %bb.h ], [ %i.dh, %bb.i ]
  %i.di = insertelement <2 x double> poison, double %.pn, i64 0
  %i.dj = shufflevector <2 x double> %i.di, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dk = fmul <2 x double> %i.av, %i.dj
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.j
  %i.dl = phi <2 x double> [ %i.dk, %bb.j ], [ zeroinitializer, %bb.a ] ; 4 uses
  %i.dm = phi <2 x double> [ %i.cn, %bb.j ], [ zeroinitializer, %bb.a ] ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %7, i64 128 ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.dq = fsub <2 x double> %i.ag, %i.aa          ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ds = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.dt = fsub <2 x double> %i.ad, %i.dm          ; 6 uses
  %i.du = fsub <2 x double> %i.ac, %i.dm
  store <2 x double> %i.du, ptr %i.dn, align 8, !tbaa !19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.dn, i64 16, i1 false), !tbaa.struct !22
  %i.dv = fsub <2 x double> %i.dt, %i.w
  store <2 x double> %i.dv, ptr %i.do, align 8, !tbaa !19
  store <2 x double> %i.dq, ptr %i.dp, align 8, !tbaa !19
  %i.dw = fsub <2 x double> %i.dt, %i.aa
  store <2 x double> %i.dw, ptr %i.dr, align 8, !tbaa !19
  store <2 x double> %i.dt, ptr %i.ds, align 8, !tbaa !19
  %i.dx = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.dy = fadd <2 x double> %i.aa, %i.dt
  store <2 x double> %i.dy, ptr %i.dx, align 8, !tbaa !19
  %i.dz = fsub <2 x double> %i.dt, %i.dl
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ea = fadd <2 x double> %i.ac, %i.dl          ; 3 uses
  %i.eb = fadd <2 x double> %i.ad, %i.dl          ; 2 uses
  store <2 x double> %i.eb, ptr %i.dn, align 8, !tbaa !19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.dn, i64 16, i1 false), !tbaa.struct !22
  %i.ec = fsub <2 x double> %i.ea, %i.w
  store <2 x double> %i.ec, ptr %i.do, align 8, !tbaa !19
  store <2 x double> %i.dq, ptr %i.dp, align 8, !tbaa !19
  %i.ed = fadd <2 x double> %i.dl, %i.ea
  %12 = shufflevector <2 x double> %i.ed, <2 x double> poison, <6 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  store <6 x double> %12, ptr %i.dr, align 8, !tbaa !19
  %i.ee = fadd <2 x double> %i.dm, %i.eb
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ef = phi <2 x double> [ %i.ea, %bb.m ], [ %i.dt, %bb.l ]
  %i.eg = phi <2 x double> [ %i.ee, %bb.m ], [ %i.dz, %bb.l ] ; 2 uses
  %i.eh = fadd <2 x double> %i.w, %i.ef
  %i.ei = fadd <2 x double> %i.ag, %i.aa
  %i.ej = getelementptr inbounds nuw i8, ptr %7, i64 96
  store <2 x double> %i.ei, ptr %i.ej, align 8, !tbaa !19
  %i.ek = getelementptr inbounds nuw i8, ptr %7, i64 112
  store <2 x double> %i.eh, ptr %i.ek, align 8, !tbaa !19
  %i.el = extractelement <2 x double> %i.eg, i64 0
  %.fca.0.insert = insertvalue { double, double } poison, double %i.el, 0
  %i.em = extractelement <2 x double> %i.eg, i64 1
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.em, 1
  ret { double, double } %.fca.1.insert
}

declare void @gvrender_polyline(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @gvrender_ellipse(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare { double, double } @Bezier(ptr noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @gvrender_beziercurve(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.minnum.v2f64(<2 x double>, <2 x double>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.maxnum.v2f64(<2 x double>, <2 x double>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!5, !5, i64 0}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!"p1 _ZTS7Agsym_s", !9, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!4, !4, i64 0}
!13 = !{!"p1 omnipotent char", !9, i64 0}
!14 = !{!"long", !4, i64 0}
!15 = !{!"double", !4, i64 0}
!16 = !{!"pointf_s", !15, i64 0, !15, i64 8}
!17 = !{!"_Bool", !4, i64 0}
!18 = !{!"p1 _ZTS8pointf_s", !9, i64 0}
!19 = !{!15, !15, i64 0}
!20 = !{!"bezier", !18, i64 0, !14, i64 8, !5, i64 16, !5, i64 20, !16, i64 24, !16, i64 40}
!21 = !{!20, !5, i64 20}
!22 = !{i64 0, i64 8, !19, i64 8, i64 8, !19}
!23 = !{!16, !15, i64 0}
!24 = !{!16, !15, i64 8}
!25 = !{!"", !5, i64 0, !15, i64 8, !9, i64 16, !9, i64 24}
!26 = !{!25, !15, i64 8}
!27 = !{!20, !5, i64 16}
!28 = !{!"", !13, i64 0, !5, i64 8, !5, i64 12}
!29 = !{!28, !5, i64 8}
!30 = !{!28, !5, i64 12}
!31 = !{!"Agtag_s", !5, i64 0, !5, i64 0, !5, i64 0, !5, i64 0, !14, i64 8}
!32 = !{!"p1 _ZTS7Agrec_s", !9, i64 0}
!33 = !{!"Agobj_s", !31, i64 0, !32, i64 16}
!34 = !{!33, !32, i64 16}
!35 = !{!"Agrec_s", !13, i64 0, !32, i64 8}
!36 = !{!"p1 _ZTS7splines", !9, i64 0}
!37 = !{!"port", !16, i64 0, !15, i64 16, !9, i64 24, !17, i64 32, !17, i64 33, !17, i64 34, !17, i64 35, !4, i64 36, !4, i64 37, !13, i64 40}
!38 = !{!"p1 _ZTS11textlabel_t", !9, i64 0}
!39 = !{!"p1 _ZTS8Agedge_s", !9, i64 0}
!40 = !{!"Ppoly_t", !18, i64 0, !14, i64 8}
!41 = !{!"short", !4, i64 0}
!42 = !{!"Agedgeinfo_t", !35, i64 0, !36, i64 16, !37, i64 24, !37, i64 72, !38, i64 120, !38, i64 128, !38, i64 136, !38, i64 144, !4, i64 152, !4, i64 153, !4, i64 154, !4, i64 155, !4, i64 156, !39, i64 160, !9, i64 168, !15, i64 176, !15, i64 184, !40, i64 192, !4, i64 208, !17, i64 209, !41, i64 210, !5, i64 212, !5, i64 216, !5, i64 220, !41, i64 224, !5, i64 228, !39, i64 232}
!43 = !{!42, !17, i64 209}
!44 = !{i8 0, i8 2}
!45 = !{}
!46 = !{!"p1 _ZTS9dtlink_s_", !9, i64 0}
!47 = !{!"dtlink_s_", !46, i64 0, !4, i64 8}
!48 = !{!"p1 _ZTS8Agnode_s", !9, i64 0}
!49 = !{!"Agedge_s", !33, i64 0, !47, i64 24, !47, i64 40, !48, i64 56}
!50 = !{!49, !48, i64 56}
!51 = distinct !{!51, !55}
!52 = distinct !{!52, !55}
!53 = !{!"", !13, i64 0, !5, i64 8}
!54 = !{!53, !5, i64 8}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!25, !9, i64 24}
!57 = distinct !{null}
!58 = !{!"p1 _ZTS5GVC_s", !9, i64 0}
!59 = !{!"p1 _ZTS5GVJ_s", !9, i64 0}
!60 = !{!"p1 _ZTS10GVCOMMON_s", !9, i64 0}
!61 = !{!"p1 _ZTS11obj_state_s", !9, i64 0}
!62 = !{!"p1 _ZTS8_IO_FILE", !9, i64 0}
!63 = !{!"p1 _ZTS17gvrender_engine_s", !9, i64 0}
!64 = !{!"gvplugin_active_render_s", !63, i64 0, !5, i64 8, !9, i64 16, !13, i64 24}
!65 = !{!"p1 _ZTS17gvdevice_engine_s", !9, i64 0}
!66 = !{!"gvplugin_active_device_s", !65, i64 0, !5, i64 8, !9, i64 16, !13, i64 24}
!67 = !{!"p1 _ZTS20gvloadimage_engine_s", !9, i64 0}
!68 = !{!"gvplugin_active_loadimage_t", !67, i64 0, !5, i64 8, !13, i64 16}
!69 = !{!"p1 _ZTS20gvdevice_callbacks_s", !9, i64 0}
!70 = !{!"", !5, i64 0, !5, i64 4}
!71 = !{!"", !16, i64 0, !16, i64 16}
!72 = !{!"", !70, i64 0, !70, i64 8}
!73 = !{!"p1 _ZTS21gvevent_key_binding_s", !9, i64 0}
!74 = !{!"GVJ_s", !58, i64 0, !59, i64 8, !59, i64 16, !60, i64 24, !61, i64 32, !13, i64 40, !5, i64 48, !13, i64 56, !13, i64 64, !62, i64 72, !13, i64 80, !14, i64 88, !14, i64 96, !13, i64 104, !5, i64 112, !64, i64 120, !66, i64 152, !68, i64 184, !69, i64 208, !16, i64 216, !17, i64 232, !9, i64 240, !5, i64 248, !9, i64 256, !17, i64 264, !13, i64 272, !5, i64 280, !5, i64 284, !5, i64 288, !70, i64 292, !70, i64 300, !70, i64 308, !70, i64 316, !70, i64 324, !5, i64 332, !71, i64 336, !16, i64 368, !71, i64 384, !71, i64 416, !16, i64 448, !16, i64 464, !15, i64 480, !5, i64 488, !16, i64 496, !71, i64 512, !16, i64 544, !16, i64 560, !5, i64 576, !5, i64 580, !72, i64 584, !72, i64 600, !16, i64 616, !16, i64 632, !16, i64 648, !17, i64 664, !17, i64 665, !17, i64 666, !17, i64 667, !17, i64 668, !4, i64 669, !16, i64 672, !16, i64 688, !9, i64 704, !9, i64 712, !13, i64 720, !13, i64 728, !9, i64 736, !73, i64 744, !14, i64 752, !9, i64 760}
!75 = !{!74, !61, i64 32}
!76 = !{!"color_s", !4, i64 0, !5, i64 32}
!77 = !{!"any p2 pointer", !9, i64 0}
!78 = !{!"p2 omnipotent char", !77, i64 0}
!79 = !{!"p1 long", !9, i64 0}
!80 = !{!"obj_state_s", !61, i64 0, !5, i64 8, !4, i64 16, !5, i64 24, !76, i64 32, !76, i64 72, !76, i64 112, !5, i64 152, !15, i64 160, !5, i64 168, !5, i64 172, !15, i64 176, !78, i64 184, !15, i64 192, !15, i64 200, !15, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !13, i64 240, !13, i64 248, !13, i64 256, !13, i64 264, !13, i64 272, !13, i64 280, !13, i64 288, !13, i64 296, !13, i64 304, !13, i64 312, !13, i64 320, !13, i64 328, !13, i64 336, !13, i64 344, !5, i64 352, !5, i64 352, !5, i64 352, !5, i64 352, !5, i64 352, !5, i64 352, !5, i64 352, !5, i64 352, !5, i64 353, !5, i64 353, !5, i64 356, !14, i64 360, !18, i64 368, !14, i64 376, !79, i64 384, !18, i64 392, !5, i64 400, !18, i64 408, !5, i64 416, !18, i64 424}
!81 = !{!80, !5, i64 24}
!82 = !{!74, !58, i64 0}
!83 = !{!"GVCOMMON_s", !78, i64 0, !13, i64 8, !5, i64 16, !17, i64 20, !17, i64 21, !9, i64 24, !78, i64 32, !78, i64 40, !5, i64 48, !9, i64 56, !5, i64 64}
!84 = !{!"p1 _ZTS5GVG_s", !9, i64 0}
!85 = !{!"p1 _ZTS18gvplugin_package_s", !9, i64 0}
!86 = !{!"dtdisc_s_", !5, i64 0, !5, i64 4, !5, i64 8, !9, i64 16, !9, i64 24, !9, i64 32}
!87 = !{!"p1 _ZTS5dt_s_", !9, i64 0}
!88 = !{!"p1 _ZTS21gvtextlayout_engine_s", !9, i64 0}
!89 = !{!"gvplugin_active_textlayout_s", !88, i64 0, !5, i64 8, !13, i64 16}
!90 = !{!"p1 _ZTS8Agraph_s", !9, i64 0}
!91 = !{!"p1 _ZTS17gvlayout_engine_s", !9, i64 0}
!92 = !{!"gvplugin_active_layout_s", !91, i64 0, !5, i64 8, !9, i64 16, !13, i64 24}
!93 = !{!"p1 int", !9, i64 0}
!94 = !{!"GVC_s", !83, i64 0, !13, i64 72, !17, i64 80, !78, i64 88, !5, i64 96, !84, i64 104, !84, i64 112, !4, i64 120, !4, i64 160, !85, i64 200, !9, i64 208, !86, i64 216, !87, i64 256, !89, i64 264, !59, i64 288, !59, i64 296, !90, i64 304, !92, i64 312, !13, i64 344, !59, i64 352, !13, i64 360, !16, i64 368, !16, i64 384, !16, i64 400, !70, i64 416, !71, i64 424, !5, i64 456, !17, i64 460, !17, i64 461, !17, i64 462, !13, i64 464, !13, i64 472, !13, i64 480, !78, i64 488, !5, i64 496, !93, i64 504, !13, i64 512, !15, i64 520, !78, i64 528, !76, i64 536, !5, i64 576}
!95 = !{!94, !78, i64 528}
!96 = !{!25, !9, i64 16}
end_hunk_0
