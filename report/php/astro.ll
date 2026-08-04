inline.NumInlined: 9
inline.NumDeleted: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 2) i32 @timelib_astro_rise_set_altitude(ptr noundef initializes((24, 48)) %0, double noundef %1, double noundef %2, double noundef %3, i32 noundef %4, ptr nofree noundef writeonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %7, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %8, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %9) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 12, ptr %i.c, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  tail call void @timelib_update_ts(ptr noundef %0, ptr noundef null) #6
  %i.e = tail call ptr @timelib_time_ctor() #6    ; 6 uses
  %i.f = load <2 x i64>, ptr %0, align 8, !tbaa !21
  store <2 x i64> %i.f, ptr %i.e, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.h, ptr %i.i, align 8, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  tail call void @timelib_update_ts(ptr noundef nonnull %i.e, ptr noundef null) #6
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 192 ; 4 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !12
  %i.m = sitofp i64 %i.l to double                ; 2 uses
  %i.n = insertelement <2 x double> poison, double %i.m, i64 0
  %i.o = insertelement <2 x double> %i.n, double %1, i64 1
  %i.p = fdiv <2 x double> %i.o, <double 8.640000e+04, double 3.600000e+02> ; 2 uses
  %i.q = extractelement <2 x double> %i.p, i64 0
  %i.r = fadd double %i.q, f0x41429EC5C0000000
  %i.s = fadd double %i.r, f0xC142B42C80000000
  %i.t = fadd double %i.s, 2.000000e+00
  %i.u = extractelement <2 x double> %i.p, i64 1
  %i.v = fsub double %i.t, %i.u                   ; 5 uses
  %i.w = fmul double %i.v, f0x3FEF8A6C50C753F8
  %i.x = fadd double %i.w, f0x408997E631F8A090    ; 2 uses
  %i.y = fmul double %i.x, f0x3F66C16C16C16C17
  %i.z = tail call double @llvm.floor.f64(double %i.y)
  %i.aa = fmul double %i.z, 3.600000e+02
  %i.ab = fsub double %i.x, %i.aa
  %i.ac = fadd double %i.ab, 1.800000e+02
  %i.ad = fadd double %1, %i.ac                   ; 2 uses
  %i.ae = fmul double %i.ad, f0x3F66C16C16C16C17
  %i.af = tail call double @llvm.floor.f64(double %i.ae)
  %i.ag = fmul double %i.af, 3.600000e+02
  %i.ah = fsub double %i.ad, %i.ag
  %i.ai = fmul double %i.v, f0x3FEF8A098DA5F901
  %i.aj = fadd double %i.ai, 3.560470e+02         ; 2 uses
  %i.ak = fmul double %i.aj, f0x3F66C16C16C16C17
  %i.al = tail call double @llvm.floor.f64(double %i.ak)
  %i.am = fmul double %i.al, 3.600000e+02
  %i.an = fsub double %i.aj, %i.am                ; 2 uses
  %i.ao = fmul double %i.v, 4.709350e-05
  %i.ap = fadd double %i.ao, f0x4071AF0BE0DED289
  %i.aq = fmul double %i.v, 1.151000e-09
  %i.ar = fsub double 1.670900e-02, %i.aq         ; 5 uses
  %i.as = fmul double %i.ar, f0x404CA5DC1A63C1F8
  %i.at = fmul double %i.an, f0x3F91DF46A2529D39  ; 2 uses
  %i.au = tail call double @sin(double noundef %i.at) #6
  %i.av = fmul double %i.au, %i.as
  %i.aw = tail call double @cos(double noundef %i.at) #6
  %i.ax = fmul double %i.aw, %i.ar
  %i.ay = fadd double %i.ax, 1.000000e+00
  %i.az = fmul double %i.av, %i.ay
  %i.ba = fadd double %i.az, %i.an
  %i.bb = fmul double %i.ba, f0x3F91DF46A2529D39  ; 2 uses
  %i.bc = tail call double @cos(double noundef %i.bb) #6
  %i.bd = fsub double %i.bc, %i.ar                ; 3 uses
  %i.be = fmul double %i.ar, %i.ar
  %i.bf = fsub double 1.000000e+00, %i.be
  %i.bg = tail call double @sqrt(double noundef %i.bf) #6
  %i.bh = tail call double @sin(double noundef %i.bb) #6
  %i.bi = fmul double %i.bg, %i.bh                ; 3 uses
  %i.bj = fmul double %i.bd, %i.bd
  %i.bk = fmul double %i.bi, %i.bi
  %i.bl = fadd double %i.bk, %i.bj
  %sqrt.i.i = tail call double @llvm.sqrt.f64(double %i.bl) ; 3 uses
  %i.bm = tail call double @atan2(double noundef %i.bi, double noundef %i.bd) #6
  %i.bn = fmul double %i.bm, f0x404CA5DC1A63C1F8
  %i.bo = fadd double %i.bn, %i.ap                ; 3 uses
  %i.bp = fcmp ult double %i.bo, 3.600000e+02
  %i.bq = fadd double %i.bo, -3.600000e+02
  %storemerge.i.i = select i1 %i.bp, double %i.bo, double %i.bq
  %i.br = fmul double %storemerge.i.i, f0x3F91DF46A2529D39 ; 2 uses
  %i.bs = tail call double @cos(double noundef %i.br) #6
  %i.bt = fmul double %i.bs, %sqrt.i.i            ; 3 uses
  %i.bu = tail call double @sin(double noundef %i.br) #6
  %i.bv = fmul double %i.bu, %sqrt.i.i            ; 2 uses
  %i.bw = fmul double %i.v, 3.563000e-07
  %i.bx = fsub double 2.343930e+01, %i.bw
  %i.by = fmul double %i.bx, f0x3F91DF46A2529D39  ; 2 uses
  %i.bz = tail call double @sin(double noundef %i.by) #6
  %i.ca = fmul double %i.bz, %i.bv
  %i.cb = tail call double @cos(double noundef %i.by) #6
  %i.cc = fmul double %i.cb, %i.bv                ; 3 uses
  %i.cd = tail call double @atan2(double noundef %i.cc, double noundef %i.bt) #6
  %i.ce = fmul double %i.cd, f0x404CA5DC1A63C1F8
  %i.cf = fmul double %i.bt, %i.bt
  %i.cg = fmul double %i.cc, %i.cc
  %i.ch = fadd double %i.cf, %i.cg
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.ch)
  %i.ci = tail call double @atan2(double noundef %i.ca, double noundef %sqrt.i) #6
  %i.cj = fmul double %i.ci, f0x404CA5DC1A63C1F8
  %i.ck = fsub double %i.ah, %i.ce                ; 2 uses
  %i.cl = fmul double %i.ck, f0x3F66C16C16C16C17
  %i.cm = fadd double %i.cl, 5.000000e-01
  %i.cn = tail call double @llvm.floor.f64(double %i.cm)
  %10 = fmul double %i.cn, 3.600000e+02
  %11 = fsub double %i.ck, %10
  %12 = fdiv double %11, 1.500000e+01
  %13 = fsub double 1.200000e+01, %12             ; 3 uses
  %.not = icmp eq i32 %4, 0
  %i.co = fdiv double 2.666000e-01, %sqrt.i.i
  %i.cp = fsub double %3, %i.co
  %.0 = select i1 %.not, double %3, double %i.cp
  %i.cq = fmul double %.0, f0x3F91DF46A2529D39
  %i.cr = tail call double @sin(double noundef %i.cq) #6
  %i.cs = fmul double %2, f0x3F91DF46A2529D39     ; 2 uses
  %i.ct = tail call double @sin(double noundef %i.cs) #6
  %i.cu = fmul double %i.cj, f0x3F91DF46A2529D39  ; 2 uses
  %i.cv = tail call double @sin(double noundef %i.cu) #6
  %i.cw = fmul double %i.ct, %i.cv
  %14 = fsub double %i.cr, %i.cw
  %15 = tail call double @cos(double noundef %i.cs) #6
  %16 = tail call double @cos(double noundef %i.cu) #6
  %17 = fmul double %15, %16
  %18 = fdiv double %14, %17                      ; 3 uses
  %i.cx = fmul double %13, 3.600000e+03           ; 2 uses
  %i.cy = fadd double %i.cx, %i.m
  %i.cz = fptosi double %i.cy to i64
  store i64 %i.cz, ptr %9, align 8, !tbaa !21
  %i.da = fcmp ult double %18, 1.000000e+00
  br i1 %i.da, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.db = load i64, ptr %i.k, align 8, !tbaa !12
  %i.dc = sitofp i64 %i.db to double
  %i.dd = fadd double %i.cx, %i.dc
  %i.de = fptosi double %i.dd to i64              ; 2 uses
  store i64 %i.de, ptr %8, align 8, !tbaa !21
  store i64 %i.de, ptr %7, align 8, !tbaa !21
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.df = fcmp ugt double %18, -1.000000e+00
  br i1 %i.df, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.dg = load i64, ptr %i.a, align 8, !tbaa !12
  %i.dh = add i64 %i.dg, -43200
  store i64 %i.dh, ptr %7, align 8, !tbaa !21
  %i.di = load i64, ptr %i.a, align 8, !tbaa !12
  %i.dj = add i64 %i.di, 43200
  store i64 %i.dj, ptr %8, align 8, !tbaa !21
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.dk = tail call double @acos(double noundef %18) #6
  %i.dl = fmul double %i.dk, f0x404CA5DC1A63C1F8
  %i.dm = fdiv double %i.dl, 1.500000e+01         ; 2 uses
  %i.dn = fsub double %13, %i.dm                  ; 2 uses
  %i.do = fmul double %i.dn, 3.600000e+03
  %i.dp = load i64, ptr %i.k, align 8, !tbaa !12
  %i.dq = sitofp i64 %i.dp to double
  %i.dr = fadd double %i.do, %i.dq
  %i.ds = fptosi double %i.dr to i64
  store i64 %i.ds, ptr %7, align 8, !tbaa !21
  %i.dt = fadd double %13, %i.dm                  ; 2 uses
  %i.du = fmul double %i.dt, 3.600000e+03
  %i.dv = load i64, ptr %i.k, align 8, !tbaa !12
  %i.dw = sitofp i64 %i.dv to double
  %i.dx = fadd double %i.du, %i.dw
  %i.dy = fptosi double %i.dx to i64
  store i64 %i.dy, ptr %8, align 8, !tbaa !21
  store double %i.dn, ptr %5, align 8, !tbaa !23
  store double %i.dt, ptr %6, align 8, !tbaa !23
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.059 = phi i32 [ -1, %bb.b ], [ 1, %bb.d ], [ 0, %bb.e ]
  tail call void @timelib_time_dtor(ptr noundef nonnull %i.e) #6
  store i64 %i.b, ptr %i.a, align 8, !tbaa !12
  ret i32 %.059
}

declare void @timelib_update_ts(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @timelib_time_ctor() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef double @timelib_ts_to_j2000(i64 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = sitofp i64 %0 to double
  %i.b = fdiv double %i.a, 8.640000e+04
  %i.c = fadd double %i.b, f0x41429EC5C0000000
  %i.d = fadd double %i.c, f0xC142B42C80000000
  ret double %i.d
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @acos(double noundef) local_unnamed_addr #3

declare void @timelib_time_dtor(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef double @timelib_ts_to_julianday(i64 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = sitofp i64 %0 to double
  %i.b = fdiv double %i.a, 8.640000e+04
  %i.c = fadd double %i.b, f0x41429EC5C0000000
  ret double %i.c
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!8, !9, i64 0}
!8 = !{!"__libc_errno", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!13, !14, i64 192}
!13 = !{!"_timelib_time", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !9, i64 56, !15, i64 64, !17, i64 72, !9, i64 80, !18, i64 88, !14, i64 192, !9, i64 200, !9, i64 204, !9, i64 208, !9, i64 212, !9, i64 216, !9, i64 220, !9, i64 224, !9, i64 228, !9, i64 232}
!14 = !{!"long long", !10, i64 0}
!15 = !{!"p1 omnipotent char", !16, i64 0}
!16 = !{!"any pointer", !10, i64 0}
!17 = !{!"p1 _ZTS15_timelib_tzinfo", !16, i64 0}
!18 = !{!"_timelib_rel_time", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !14, i64 72, !19, i64 80, !9, i64 96, !9, i64 100}
!19 = !{!"", !9, i64 0, !14, i64 8}
!20 = !{!13, !14, i64 24}
!21 = !{!14, !14, i64 0}
!22 = !{!13, !14, i64 16}
!23 = !{!24, !24, i64 0}
!24 = !{!"double", !10, i64 0}
end_hunk_0
