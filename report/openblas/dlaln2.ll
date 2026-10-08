Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlaln2?download=true
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@dlaln2_:bb.a
  br i1 %i.ni, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.nj = fdiv double %i.mi, %i.mg                ; 3 uses
  %i.nk = tail call double @llvm.fmuladd.f64(double %i.nj, double %i.nj, double 1.000000e+00)
  %i.nl = fmul double %i.mg, %i.nk
  %i.nm = fdiv double 1.000000e+00, %i.nl         ; 2 uses
  %i.nn = fneg double %i.nj
  %i.no = fmul double %i.nm, %i.nn
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.np = fdiv double %i.mg, %i.mi                ; 3 uses
  %i.nq = tail call double @llvm.fmuladd.f64(double %i.np, double %i.np, double 1.000000e+00)
  %i.nr = fmul double %i.mi, %i.nq
  %i.ns = fdiv double -1.000000e+00, %i.nr        ; 2 uses
  %i.nt = fneg double %i.np
  %i.nu = fmul double %i.ns, %i.nt
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.0508 = phi double [ %i.no, %bb.ad ], [ %i.ns, %bb.ae ] ; 3 uses
  %.0505 = phi double [ %i.nm, %bb.ad ], [ %i.nu, %bb.ae ] ; 2 uses
  %i.nv = fmul double %i.mr, %.0505               ; 2 uses
  %i.nw = fmul double %i.mr, %.0508               ; 2 uses
  %i.nx = fmul double %i.mx, %.0508
  %i.ny = fneg double %i.mx                       ; 2 uses
  %i.nz = tail call double @llvm.fmuladd.f64(double %i.ny, double %i.nv, double %i.nd) ; 2 uses
  store double %i.nz, ptr %i.j, align 8, !tbaa !10
  %i.oa = tail call double @llvm.fmuladd.f64(double %i.ny, double %i.nw, double %i.nf)
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ab
  %i.ob = getelementptr inbounds [8 x i8], ptr @dlaln2_.equiv_0, i64 %i.mv
  %i.oc = load double, ptr %i.ob, align 8, !tbaa !10 ; 3 uses
  %i.od = getelementptr inbounds [8 x i8], ptr @dlaln2_.equiv_0, i64 %i.mp
  %i.oe = load double, ptr %i.od, align 8, !tbaa !10
  %i.of = fdiv double 1.000000e+00, %i.mg         ; 4 uses
  %i.og = fmul double %i.of, %i.mr                ; 3 uses
  %i.oh = fmul double %i.of, %i.oe                ; 3 uses
  %i.oi = fmul double %i.of, %i.oc
  %i.oj = fneg double %i.mx                       ; 2 uses
  %i.ok = tail call double @llvm.fmuladd.f64(double %i.oj, double %i.og, double %i.nd)
  %i.ol = tail call double @llvm.fmuladd.f64(double %i.oc, double %i.oh, double %i.ok) ; 2 uses
  store double %i.ol, ptr %i.j, align 8, !tbaa !10
  %i.om = fneg double %i.og
  %i.on = fmul double %i.oc, %i.om
  %i.oo = tail call double @llvm.fmuladd.f64(double %i.oj, double %i.oh, double %i.on)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.op = phi double [ %i.ol, %bb.ag ], [ %i.nz, %bb.af ] ; 3 uses
  %storemerge = phi double [ %i.oo, %bb.ag ], [ %i.oa, %bb.af ] ; 4 uses
  %.1509 = phi double [ 0.000000e+00, %bb.ag ], [ %.0508, %bb.af ] ; 5 uses
  %.0507 = phi double [ %i.oi, %bb.ag ], [ %i.nx, %bb.af ] ; 2 uses
  %.1506 = phi double [ %i.of, %bb.ag ], [ %.0505, %bb.af ] ; 5 uses
  %.0493 = phi double [ %i.oh, %bb.ag ], [ %i.nw, %bb.af ] ; 2 uses
  %.0 = phi double [ %i.og, %bb.ag ], [ %i.nv, %bb.af ]
  store double %storemerge, ptr %i.h, align 8, !tbaa !10
  %i.oq = fcmp oge double %i.op, 0.000000e+00
  %i.or = fneg double %i.op
  %i.os = select i1 %i.oq, double %i.op, double %i.or
  %i.ot = fcmp oge double %storemerge, 0.000000e+00
  %i.ou = fneg double %storemerge
  %i.ov = select i1 %i.ot, double %storemerge, double %i.ou
  %i.ow = fadd double %i.ov, %i.os                ; 4 uses
  %i.ox = fcmp olt double %i.ow, %.
  br i1 %i.ox, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store double %., ptr %i.j, align 8, !tbaa !10
  store double 0.000000e+00, ptr %i.h, align 8, !tbaa !10
  store i32 1, ptr %17, align 4, !tbaa !8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.oy = and i32 %i.md, -3
  %.not531 = icmp eq i32 %i.oy, 0                 ; 4 uses
  %i.oz = sext i32 %i.l to i64
  %i.pa = getelementptr [8 x i8], ptr %i.n, i64 %i.oz
  %i.pb = getelementptr i8, ptr %i.pa, i64 16     ; 2 uses
  %i.pc = shl i32 %i.l, 1
  %i.pd = sext i32 %i.pc to i64
  %i.pe = getelementptr [8 x i8], ptr %i.n, i64 %i.pd ; 2 uses
  %i.pf = getelementptr i8, ptr %i.pe, i64 8      ; 2 uses
  %i.pg = getelementptr i8, ptr %i.pe, i64 16     ; 2 uses
  %.591 = select i1 %.not531, ptr %i.pb, ptr %9
  %.592 = select i1 %.not531, ptr %i.pg, ptr %i.pf
  %.593 = select i1 %.not531, ptr %i.pf, ptr %i.pg
  %.594 = select i1 %.not531, ptr %9, ptr %i.pb
  %.1 = load double, ptr %.594, align 8, !tbaa !10 ; 7 uses
  %.0495 = load double, ptr %.593, align 8, !tbaa !10 ; 7 uses
  %.sink572 = load double, ptr %.592, align 8, !tbaa !10
  %.sink573 = load double, ptr %.591, align 8, !tbaa !10
  %i.ph = fneg double %.0                         ; 2 uses
  %i.pi = tail call double @llvm.fmuladd.f64(double %i.ph, double %.1, double %.sink573)
  %i.pj = tail call double @llvm.fmuladd.f64(double %.0493, double %.0495, double %i.pi) ; 5 uses
  store double %i.pj, ptr %i.d, align 8, !tbaa !10
  %i.pk = fneg double %.0493
  %i.pl = tail call double @llvm.fmuladd.f64(double %i.pk, double %.1, double %.sink572)
  %i.pm = tail call double @llvm.fmuladd.f64(double %i.ph, double %.0495, double %i.pl) ; 5 uses
  store double %i.pm, ptr %i.c, align 8, !tbaa !10
  %i.pn = fcmp oge double %.1, 0.000000e+00
  %i.po = fneg double %.1
  %i.pp = select i1 %i.pn, double %.1, double %i.po
  %i.pq = fcmp oge double %.0495, 0.000000e+00
  %i.pr = fneg double %.0495                      ; 2 uses
  %i.ps = select i1 %i.pq, double %.0495, double %i.pr
  %i.pt = fadd double %i.ps, %i.pp
  %i.pu = fcmp oge double %.1506, 0.000000e+00
  %i.pv = fneg double %.1506                      ; 2 uses
  %i.pw = select i1 %i.pu, double %.1506, double %i.pv
  %i.px = fcmp oge double %.1509, 0.000000e+00
  %i.py = fneg double %.1509
  %i.pz = select i1 %i.px, double %.1509, double %i.py
  %i.qa = fadd double %i.pz, %i.pw
  %i.qb = fmul double %i.qa, %i.ow
  %i.qc = fmul double %i.qb, %i.pt                ; 2 uses
  %i.qd = fcmp oge double %i.pj, 0.000000e+00
  %i.qe = fneg double %i.pj
  %i.qf = select i1 %i.qd, double %i.pj, double %i.qe
  %i.qg = fcmp oge double %i.pm, 0.000000e+00
  %i.qh = fneg double %i.pm
  %i.qi = select i1 %i.qg, double %i.pm, double %i.qh
  %i.qj = fadd double %i.qf, %i.qi                ; 2 uses
  %i.qk = fcmp oge double %i.qc, %i.qj
  %i.ql = select i1 %i.qk, double %i.qc, double %i.qj ; 3 uses
  %i.qm = fcmp ule double %i.ql, 1.000000e+00
  %i.qn = fcmp uge double %i.ow, 1.000000e+00
  %or.cond13.not556 = or i1 %i.qn, %i.qm
  %i.qo = fmul double %i.t, %i.ow
  %i.qp = fcmp ult double %i.ql, %i.qo
  %or.cond551 = select i1 %or.cond13.not556, i1 true, i1 %i.qp
  br i1 %or.cond551, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.qq = fdiv double 1.000000e+00, %i.ql         ; 5 uses
  store double %i.qq, ptr %15, align 8, !tbaa !10
  %i.qr = fmul double %.1, %i.qq
  %i.qs = fmul double %.0495, %i.qq               ; 2 uses
  %i.qt = fmul double %i.pj, %i.qq
  store double %i.qt, ptr %i.d, align 8, !tbaa !10
  %i.qu = fmul double %i.pm, %i.qq
  store double %i.qu, ptr %i.c, align 8, !tbaa !10
  %.pre578 = fneg double %i.qs
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.pre-phi = phi double [ %.pre578, %bb.ak ], [ %i.pr, %bb.aj ]
  %.1496 = phi double [ %i.qs, %bb.ak ], [ %.0495, %bb.aj ]
  %.2 = phi double [ %i.qr, %bb.ak ], [ %.1, %bb.aj ] ; 2 uses
  call void @dladiv_(ptr noundef nonnull %i.d, ptr noundef nonnull %i.c, ptr noundef nonnull %i.j, ptr noundef nonnull %i.h, ptr noundef nonnull %i.f, ptr noundef nonnull %i.e) #5
  %i.qv = fmul double %.1509, %.pre-phi
  %i.qw = call double @llvm.fmuladd.f64(double %.1506, double %.2, double %i.qv)
  %i.qx = load double, ptr %i.f, align 8, !tbaa !10 ; 7 uses
  %i.qy = fmul double %i.mx, %i.pv                ; 2 uses
  %i.qz = call double @llvm.fmuladd.f64(double %i.qy, double %i.qx, double %i.qw)
  %i.ra = load double, ptr %i.e, align 8, !tbaa !10 ; 7 uses
  %i.rb = call double @llvm.fmuladd.f64(double %.0507, double %i.ra, double %i.qz) ; 5 uses
  %i.rc = fmul double %.1506, %.1496
  %i.rd = call double @llvm.fmuladd.f64(double %.1509, double %.2, double %i.rc)
  %i.re = fneg double %.0507
  %i.rf = call double @llvm.fmuladd.f64(double %i.re, double %i.qx, double %i.rd)
  %i.rg = call double @llvm.fmuladd.f64(double %i.qy, double %i.ra, double %i.rf) ; 5 uses
  %.not532 = icmp ult i32 %i.md, 2                ; 4 uses
  %i.rh = sext i32 %i.o to i64
  %i.ri = getelementptr [8 x i8], ptr %i.q, i64 %i.rh
  %i.rj = getelementptr i8, ptr %i.ri, i64 16
  %i.rk = shl i32 %i.o, 1
  %i.rl = sext i32 %i.rk to i64
  %i.rm = getelementptr [8 x i8], ptr %i.q, i64 %i.rl ; 2 uses
  %i.rn = getelementptr i8, ptr %i.rm, i64 8
  %i.ro = getelementptr i8, ptr %i.rm, i64 16
  %.601 = select i1 %.not532, double %i.rb, double %i.qx
  %.602 = select i1 %.not532, double %i.qx, double %i.rb
  %.603 = select i1 %.not532, double %i.rg, double %i.ra
  %.604 = select i1 %.not532, double %i.ra, double %i.rg
  store double %.601, ptr %13, align 8, !tbaa !10
  store double %.602, ptr %i.rj, align 8, !tbaa !10
  store double %.603, ptr %i.rn, align 8, !tbaa !10
  store double %.604, ptr %i.ro, align 8, !tbaa !10
  %i.rp = fcmp oge double %i.rb, 0.000000e+00
  %i.rq = fneg double %i.rb
  %i.rr = select i1 %i.rp, double %i.rb, double %i.rq
  %i.rs = fcmp oge double %i.rg, 0.000000e+00
  %i.rt = fneg double %i.rg
  %i.ru = select i1 %i.rs, double %i.rg, double %i.rt
  %i.rv = fadd double %i.rr, %i.ru                ; 2 uses
  %i.rw = fcmp oge double %i.qx, 0.000000e+00
  %i.rx = fneg double %i.qx
  %i.ry = select i1 %i.rw, double %i.qx, double %i.rx
  %i.rz = fcmp oge double %i.ra, 0.000000e+00
  %i.sa = fneg double %i.ra
  %i.sb = select i1 %i.rz, double %i.ra, double %i.sa
  %i.sc = fadd double %i.ry, %i.sb                ; 2 uses
  %i.sd = fcmp oge double %i.rv, %i.sc
  %i.se = select i1 %i.sd, double %i.rv, double %i.sc ; 3 uses
  store double %i.se, ptr %16, align 8, !tbaa !10
  %i.sf = fcmp ogt double %i.se, 1.000000e+00
  %i.sg = fcmp ogt double %spec.select.3, 1.000000e+00
  %or.cond15 = and i1 %i.sf, %i.sg
  %i.sh = fdiv double %i.t, %spec.select.3
  %i.si = fcmp ogt double %i.se, %i.sh
  %or.cond553 = select i1 %or.cond15, i1 %i.si, i1 false
  br i1 %or.cond553, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.sj = fdiv double %spec.select.3, %i.t        ; 5 uses
  %i.sk = load double, ptr %13, align 8, !tbaa !10
  %i.sl = fmul double %i.sj, %i.sk
  store double %i.sl, ptr %13, align 8, !tbaa !10
  %i.sm = sext i32 %i.o to i64
  %i.sn = getelementptr [8 x i8], ptr %i.q, i64 %i.sm
  %i.so = getelementptr i8, ptr %i.sn, i64 16     ; 2 uses
  %i.sp = load double, ptr %i.so, align 8, !tbaa !10
  %i.sq = fmul double %i.sj, %i.sp
  store double %i.sq, ptr %i.so, align 8, !tbaa !10
  %i.sr = shl i32 %i.o, 1
  %i.ss = sext i32 %i.sr to i64
  %i.st = getelementptr [8 x i8], ptr %i.q, i64 %i.ss
  %i.su = getelementptr i8, ptr %i.st, i64 8      ; 2 uses
  %i.sv = load <2 x double>, ptr %i.su, align 8, !tbaa !10
  %i.sw = insertelement <2 x double> poison, double %i.sj, i64 0
  %i.sx = shufflevector <2 x double> %i.sw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sy = fmul <2 x double> %i.sx, %i.sv
  store <2 x double> %i.sy, ptr %i.su, align 8, !tbaa !10
  %i.sz = load double, ptr %16, align 8, !tbaa !10
  %i.ta = fmul double %i.sj, %i.sz
  store double %i.ta, ptr %16, align 8, !tbaa !10
  %i.tb = load double, ptr %15, align 8, !tbaa !10
  %i.tc = fmul double %i.sj, %i.tb
  store double %i.tc, ptr %15, align 8, !tbaa !10
  br label %bb.an

bb.an:                                            ; preds = %bb.l, %bb.g, %bb.al, %bb.am, %bb.v, %bb.w, %bb.aa, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare double @dlamch_(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare void @dladiv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!5, !5, i64 0}
!9 = !{!"double", !4, i64 0}
!10 = !{!9, !9, i64 0}
end_hunk_0
