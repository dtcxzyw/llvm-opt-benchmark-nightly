inline.NumInlined: 132
inline.NumDeleted: 14
begin_hunk_0_@main:bb.a
  %i.bi = fdiv double %i.bh, 7.680000e+02
  %i.bj = fadd double %i.bi, -5.000000e-01        ; 2 uses
  %i.bk = fmul double %i.bj, f0x3F9662D746DC5A9D
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.bl = insertelement <2 x double> poison, double %i.be, i64 0
  %i.bm = shufflevector <2 x double> %i.bl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bn = fmul <2 x double> %i.bm, <double f0x3FE5E8CA11BFD44F, double 0.000000e+00> ; 2 uses
  %i.bo = insertelement <2 x double> poison, double %i.bj, i64 0
  %i.bp = shufflevector <2 x double> %i.bo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bq = fmul <2 x double> %i.bp, <double 0.000000e+00, double f0x3FE06AC72F44BE81>
  %i.br = fadd <2 x double> %i.bn, %i.bq
  %i.bs = extractelement <2 x double> %i.bn, i64 1
  %i.bt = fsub double %i.bs, %i.bk
  %i.bu = fadd <2 x double> %i.br, <double 0.000000e+00, double f0xBFA5CC2D1960285F> ; 5 uses
  %i.bv = fadd double %i.bt, f0xBFEFF8929A5E7D34  ; 4 uses
  %i.bw = fmul <2 x double> %i.bu, splat (double 1.400000e+02)
  %i.bx = fmul double %i.bv, 1.400000e+02
  %i.by = fadd <2 x double> %i.bw, <double 5.000000e+01, double 5.200000e+01>
  %i.bz = fadd double %i.bx, 2.956000e+02
  %foldExtExtBinop = fmul <2 x double> %i.bu, %i.bu
  %i.ca = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.cb = extractelement <2 x double> %i.bu, i64 0 ; 2 uses
  %i.cc = call double @llvm.fmuladd.f64(double %i.cb, double %i.cb, double %i.ca)
  %i.cd = call double @llvm.fmuladd.f64(double %i.bv, double %i.bv, double %i.cc)
  %sqrt.i57.us.us.us.us = call double @llvm.sqrt.f64(double %i.cd)
  %i.ce = fdiv double 1.000000e+00, %sqrt.i57.us.us.us.us ; 2 uses
  %i.cf = fmul double %i.bv, %i.ce
  store <2 x double> %i.by, ptr %3, align 16, !tbaa !22
  store double %i.bz, ptr %.sroa.5135.0..sroa_idx, align 16, !tbaa !22
  %i.cg = insertelement <2 x double> poison, double %i.ce, i64 0
  %i.ch = shufflevector <2 x double> %i.cg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ci = fmul <2 x double> %i.bu, %i.ch
  store <2 x double> %i.ci, ptr %i.p, align 8, !tbaa !22
  store double %i.cf, ptr %.sroa.5138.0..sroa_idx, align 8, !tbaa !22
  call void @_Z8radianceRK3RayiPt(ptr dead_on_unwind nonnull writable sret(%struct.Vec) align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %3, i32 noundef 0, ptr noundef nonnull %i.a)
  %i.cj = load <2 x double>, ptr %2, align 16, !tbaa !22, !noalias !66
  %i.ck = fmul <2 x double> %i.u, %i.cj
  %i.cl = load double, ptr %i.s, align 16, !tbaa !15, !noalias !66
  %i.cm = fmul double %i.r, %i.cl
  %i.cn = fadd <2 x double> %i.ah, %i.ck          ; 4 uses
  %i.co = fadd double %.sroa.12.4142.us.us.us.us, %i.cm ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  %i.cp = add nuw nsw i32 %.048143.us.us.us.us, 1 ; 2 uses
  %exitcond177.not = icmp eq i32 %i.cp, %i.h
  br i1 %exitcond177.not, label %._crit_edge.us.us.us.us, label %bb.d

._crit_edge.us.us.us.us:                          ; preds = %bb.j
  %i.cq = fcmp olt <2 x double> %i.cn, zeroinitializer
  %i.cr = fcmp ogt <2 x double> %i.cn, splat (double 1.000000e+00)
  %i.cs = fcmp olt double %i.co, 0.000000e+00
  %i.ct = fcmp ogt double %i.co, 1.000000e+00
  %i.cu = select i1 %i.ct, double 1.000000e+00, double %i.co
  %i.cv = fmul double %i.cu, 2.500000e-01
  %i.cw = select i1 %i.cs, double 0.000000e+00, double %i.cv
  %i.cx = select <2 x i1> %i.cr, <2 x double> splat (double 1.000000e+00), <2 x double> %i.cn
  %i.cy = fmul <2 x double> %i.cx, splat (double 2.500000e-01)
  %i.cz = select <2 x i1> %i.cq, <2 x double> zeroinitializer, <2 x double> %i.cy
  %i.da = load <2 x double>, ptr %i.ae, align 8, !tbaa !22, !noalias !69
  %i.db = fadd <2 x double> %i.cz, %i.da          ; 2 uses
  %i.dc = load double, ptr %i.af, align 8, !tbaa !15, !noalias !69
  %i.dd = fadd double %i.cw, %i.dc                ; 2 uses
  store <2 x double> %i.db, ptr %i.ae, align 8, !tbaa !22
  store double %i.dd, ptr %i.af, align 8, !tbaa !22
  br label %bb.k

bb.k:                                             ; preds = %bb.q, %._crit_edge.us.us.us.us
  %.048143.us.us.us.us.1 = phi i32 [ 0, %._crit_edge.us.us.us.us ], [ %i.fm, %bb.q ]
  %.sroa.12.4142.us.us.us.us.1 = phi double [ 0.000000e+00, %._crit_edge.us.us.us.us ], [ %i.fl, %bb.q ]
  %i.de = phi <2 x double> [ zeroinitializer, %._crit_edge.us.us.us.us ], [ %i.fk, %bb.q ]
  %i.df = call double @erand48(ptr noundef nonnull %i.a) #10
  %i.dg = fmul double %i.df, 2.000000e+00         ; 3 uses
  %i.dh = fcmp olt double %i.dg, 1.000000e+00
  br i1 %i.dh, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.di = fsub double 2.000000e+00, %i.dg
  %i.dj = call double @sqrt(double noundef %i.di) #10, !tbaa !4
  %i.dk = fsub double 1.000000e+00, %i.dj
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.dl = call double @sqrt(double noundef %i.dg) #10, !tbaa !4
  %i.dm = fadd double %i.dl, -1.000000e+00
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.dn = phi double [ %i.dm, %bb.m ], [ %i.dk, %bb.l ]
  %i.do = call double @erand48(ptr noundef nonnull %i.a) #10
  %i.dp = fmul double %i.do, 2.000000e+00         ; 3 uses
  %i.dq = fcmp olt double %i.dp, 1.000000e+00
  br i1 %i.dq, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dr = fsub double 2.000000e+00, %i.dp
  %i.ds = call double @sqrt(double noundef %i.dr) #10, !tbaa !4
  %i.dt = fsub double 1.000000e+00, %i.ds
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.du = call double @sqrt(double noundef %i.dp) #10, !tbaa !4
  %i.dv = fadd double %i.du, -1.000000e+00
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.dw = phi double [ %i.dv, %bb.p ], [ %i.dt, %bb.o ]
  %i.dx = fadd double %i.dn, 1.500000e+00
  %i.dy = fmul double %i.dx, 5.000000e-01
  %i.dz = fadd double %i.dy, %i.ac
  %i.ea = fmul double %i.dz, f0x3F50000000000000
  %i.eb = fadd double %i.ea, -5.000000e-01
  %i.ec = fadd double %.047151.us.us.us, %i.dw
  %i.ed = fmul double %i.ec, 5.000000e-01
  %i.ee = fadd double %i.ed, %i.z
  %i.ef = fdiv double %i.ee, 7.680000e+02
  %i.eg = fadd double %i.ef, -5.000000e-01        ; 2 uses
  %i.eh = fmul double %i.eg, f0x3F9662D746DC5A9D
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.ei = insertelement <2 x double> poison, double %i.eb, i64 0
  %i.ej = shufflevector <2 x double> %i.ei, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ek = fmul <2 x double> %i.ej, <double f0x3FE5E8CA11BFD44F, double 0.000000e+00> ; 2 uses
  %i.el = insertelement <2 x double> poison, double %i.eg, i64 0
  %i.em = shufflevector <2 x double> %i.el, <2 x double> poison, <2 x i32> zeroinitializer
  %i.en = fmul <2 x double> %i.em, <double 0.000000e+00, double f0x3FE06AC72F44BE81>
  %i.eo = fadd <2 x double> %i.ek, %i.en
  %i.ep = extractelement <2 x double> %i.ek, i64 1
  %i.eq = fsub double %i.ep, %i.eh
  %i.er = fadd <2 x double> %i.eo, <double 0.000000e+00, double f0xBFA5CC2D1960285F> ; 5 uses
  %i.es = fadd double %i.eq, f0xBFEFF8929A5E7D34  ; 4 uses
  %i.et = fmul <2 x double> %i.er, splat (double 1.400000e+02)
  %i.eu = fmul double %i.es, 1.400000e+02
  %i.ev = fadd <2 x double> %i.et, <double 5.000000e+01, double 5.200000e+01>
  %i.ew = fadd double %i.eu, 2.956000e+02
  %foldExtExtBinop211 = fmul <2 x double> %i.er, %i.er
  %i.ex = extractelement <2 x double> %foldExtExtBinop211, i64 1
  %i.ey = extractelement <2 x double> %i.er, i64 0 ; 2 uses
  %i.ez = call double @llvm.fmuladd.f64(double %i.ey, double %i.ey, double %i.ex)
  %i.fa = call double @llvm.fmuladd.f64(double %i.es, double %i.es, double %i.ez)
  %sqrt.i57.us.us.us.us.1 = call double @llvm.sqrt.f64(double %i.fa)
  %i.fb = fdiv double 1.000000e+00, %sqrt.i57.us.us.us.us.1 ; 2 uses
  %i.fc = fmul double %i.es, %i.fb
  store <2 x double> %i.ev, ptr %3, align 16, !tbaa !22
  store double %i.ew, ptr %.sroa.5135.0..sroa_idx, align 16, !tbaa !22
  %i.fd = insertelement <2 x double> poison, double %i.fb, i64 0
  %i.fe = shufflevector <2 x double> %i.fd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ff = fmul <2 x double> %i.er, %i.fe
  store <2 x double> %i.ff, ptr %i.p, align 8, !tbaa !22
  store double %i.fc, ptr %.sroa.5138.0..sroa_idx, align 8, !tbaa !22
  call void @_Z8radianceRK3RayiPt(ptr dead_on_unwind nonnull writable sret(%struct.Vec) align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %3, i32 noundef 0, ptr noundef nonnull %i.a)
  %i.fg = load <2 x double>, ptr %2, align 16, !tbaa !22, !noalias !66
  %i.fh = fmul <2 x double> %i.u, %i.fg
  %i.fi = load double, ptr %i.s, align 16, !tbaa !15, !noalias !66
  %i.fj = fmul double %i.r, %i.fi
  %i.fk = fadd <2 x double> %i.de, %i.fh          ; 4 uses
  %i.fl = fadd double %.sroa.12.4142.us.us.us.us.1, %i.fj ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  %i.fm = add nuw nsw i32 %.048143.us.us.us.us.1, 1 ; 2 uses
  %exitcond177.1.not = icmp eq i32 %i.fm, %i.h
  br i1 %exitcond177.1.not, label %._crit_edge.us.us.us.us.1, label %bb.k

._crit_edge.us.us.us.us.1:                        ; preds = %bb.q
  %i.fn = fcmp olt <2 x double> %i.fk, zeroinitializer
  %i.fo = fcmp ogt <2 x double> %i.fk, splat (double 1.000000e+00)
  %i.fp = fcmp olt double %i.fl, 0.000000e+00
  %i.fq = fcmp ogt double %i.fl, 1.000000e+00
  %i.fr = select i1 %i.fq, double 1.000000e+00, double %i.fl
  %i.fs = fmul double %i.fr, 2.500000e-01
  %i.ft = select i1 %i.fp, double 0.000000e+00, double %i.fs
  %i.fu = fadd double %i.ft, %i.dd
  %i.fv = select <2 x i1> %i.fo, <2 x double> splat (double 1.000000e+00), <2 x double> %i.fk
  %i.fw = fmul <2 x double> %i.fv, splat (double 2.500000e-01)
  %i.fx = select <2 x i1> %i.fn, <2 x double> zeroinitializer, <2 x double> %i.fw
  %i.fy = fadd <2 x double> %i.fx, %i.db
  store <2 x double> %i.fy, ptr %i.ae, align 8, !tbaa !22
  store double %i.fu, ptr %i.af, align 8, !tbaa !22
  br i1 %i.ag, label %.preheader139.us.us.us, label %.split154.us.us.us

.split154.us.us.us:                               ; preds = %._crit_edge.us.us.us.us.1
  %indvars.iv.next181 = add nuw nsw i64 %indvars.iv180, 1 ; 2 uses
  %exitcond184.not = icmp eq i64 %indvars.iv.next181, 1024
  br i1 %exitcond184.not, label %.split163.us.us, label %.split152.us.us.us

.split163.us.us:                                  ; preds = %.split154.us.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %indvars.iv.next186 = add nuw nsw i64 %indvars.iv185, 1 ; 2 uses
  %exitcond188.not = icmp eq i64 %indvars.iv.next186, 768
  br i1 %exitcond188.not, label %.split167.us, label %.split161.us.us

.split167.us:                                     ; preds = %.split163, %.split163.us.us
  ret i32 0

.split161:                                        ; preds = %bb.c, %.split163
  %indvars.iv = phi i64 [ %indvars.iv.next, %.split163 ], [ 0, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.fz = shl nuw nsw i64 %indvars.iv, 10         ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.split161
  %index = phi i64 [ 0, %.split161 ], [ %index.next, %vector.body ] ; 3 uses
  %4 = or disjoint i64 %index, 1
  %5 = sub nsw i64 %index, %i.fz
  %i.ga = sub nsw i64 %4, %i.fz
  %6 = getelementptr [24 x i8], ptr %i.i, i64 %5  ; 3 uses
  %i.gb = getelementptr [24 x i8], ptr %i.i, i64 %i.ga ; 3 uses
  %7 = getelementptr i8, ptr %6, i64 18849792     ; 2 uses
  %8 = getelementptr i8, ptr %i.gb, i64 18849792
  %i.gc = getelementptr i8, ptr %6, i64 18849800
  %i.gd = getelementptr i8, ptr %i.gb, i64 18849800
  %9 = getelementptr i8, ptr %6, i64 18849808
  %10 = getelementptr i8, ptr %i.gb, i64 18849808
  %11 = load double, ptr %7, align 8, !tbaa !22
  %12 = load double, ptr %8, align 8, !tbaa !22
  %13 = insertelement <2 x double> poison, double %11, i64 0
  %14 = insertelement <2 x double> %13, double %12, i64 1
  %15 = load double, ptr %i.gc, align 8, !tbaa !22
  %16 = load double, ptr %i.gd, align 8, !tbaa !22
  %17 = insertelement <2 x double> poison, double %15, i64 0
  %18 = insertelement <2 x double> %17, double %16, i64 1
  %19 = load double, ptr %9, align 8, !tbaa !22
  %i.ge = load double, ptr %10, align 8, !tbaa !22
  %20 = insertelement <2 x double> poison, double %19, i64 0
  %21 = insertelement <2 x double> %20, double %i.ge, i64 1
  %i.gf = fadd <2 x double> %21, zeroinitializer
  %22 = shufflevector <2 x double> %14, <2 x double> %18, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %23 = fadd <4 x double> %22, zeroinitializer
  %24 = shufflevector <2 x double> %i.gf, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <4 x double> %23, <4 x double> %24, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x double> %interleaved.vec, ptr %7, align 8, !tbaa !22
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.gg = icmp eq i64 %index.next, 1024
  br i1 %i.gg, label %.split163, label %vector.body, !llvm.loop !72

.split163:                                        ; preds = %vector.body
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond176.not = icmp eq i64 %indvars.iv.next, 768
  br i1 %exitcond176.not, label %.split167.us, label %.split161
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #6

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { cold norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { builtin allocsize(0) }
attributes #12 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTS3Vec", !10, i64 0, !10, i64 8, !10, i64 16}
!10 = !{!"double", !6, i64 0}
!11 = !{!12}
!12 = distinct !{!12, !13, !"_ZNK3VecmiERKS_: argument 0"}
!13 = distinct !{!13, !"_ZNK3VecmiERKS_"}
!14 = !{!9, !10, i64 8}
!15 = !{!9, !10, i64 16}
!16 = !{!17, !10, i64 0}
!17 = !{!"_ZTS6Sphere", !10, i64 0, !9, i64 8, !9, i64 32, !9, i64 56, !18, i64 80}
!18 = !{!"_ZTS6Refl_t", !6, i64 0}
!19 = !{!20}
!20 = distinct !{!20, !21, !"_ZNK3VecmiERKS_: argument 0"}
!21 = distinct !{!21, !"_ZNK3VecmiERKS_"}
!22 = !{!10, !10, i64 0}
!23 = !{i64 0, i64 8, !22, i64 8, i64 8, !22, i64 16, i64 8, !22}
!24 = !{!17, !18, i64 80}
!25 = !{!26}
!26 = distinct !{!26, !27, !"_ZNK3Vec4multERKS_: argument 0"}
!27 = distinct !{!27, !"_ZNK3Vec4multERKS_"}
!28 = !{!29}
!29 = distinct !{!29, !30, !"_ZNK3VecplERKS_: argument 0"}
!30 = distinct !{!30, !"_ZNK3VecplERKS_"}
!31 = !{!32}
!32 = distinct !{!32, !33, !"_ZNK3Vec4multERKS_: argument 0"}
!33 = distinct !{!33, !"_ZNK3Vec4multERKS_"}
!34 = !{!35}
!35 = distinct !{!35, !36, !"_ZNK3VecplERKS_: argument 0"}
!36 = distinct !{!36, !"_ZNK3VecplERKS_"}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_ZNK3Vec4multERKS_: argument 0"}
!39 = distinct !{!39, !"_ZNK3Vec4multERKS_"}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_ZNK3VecplERKS_: argument 0"}
!42 = distinct !{!42, !"_ZNK3VecplERKS_"}
!43 = !{!44}
!44 = distinct !{!44, !45, !"_ZNK3VecmlEd: argument 0"}
!45 = distinct !{!45, !"_ZNK3VecmlEd"}
!46 = !{!47}
!47 = distinct !{!47, !48, !"_ZNK3VecmlEd: argument 0"}
!48 = distinct !{!48, !"_ZNK3VecmlEd"}
!49 = !{!50}
!50 = distinct !{!50, !51, !"_ZNK3VecmlEd: argument 0"}
!51 = distinct !{!51, !"_ZNK3VecmlEd"}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_ZNK3VecmlEd: argument 0"}
!54 = distinct !{!54, !"_ZNK3VecmlEd"}
!55 = !{!56}
!56 = distinct !{!56, !57, !"_ZNK3VecplERKS_: argument 0"}
!57 = distinct !{!57, !"_ZNK3VecplERKS_"}
!58 = !{!59, !59, i64 0}
!59 = !{!"p1 omnipotent char", !60, i64 0}
!60 = !{!"any pointer", !6, i64 0}
!61 = distinct !{null}
!62 = !{!63, !63, i64 0}
!63 = !{!"p1 _ZTS8_IO_FILE", !60, i64 0}
!64 = !{!65, !65, i64 0}
!65 = !{!"short", !6, i64 0}
!66 = !{!67}
!67 = distinct !{!67, !68, !"_ZNK3VecmlEd: argument 0"}
!68 = distinct !{!68, !"_ZNK3VecmlEd"}
!69 = !{!70}
!70 = distinct !{!70, !71, !"_ZNK3VecplERKS_: argument 0"}
!71 = distinct !{!71, !"_ZNK3VecplERKS_"}
!72 = distinct !{!72, !73, !74}
!73 = !{!"llvm.loop.isvectorized", i32 1}
!74 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_0
