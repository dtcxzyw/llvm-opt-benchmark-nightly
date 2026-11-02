Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/astro?download=true
inline.NumInlined: 9
inline.NumDeleted: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 2) i32 @timelib_astro_rise_set_altitude(ptr noundef initializes((24, 48)) %0, double noundef %1, double noundef %2, double noundef %3, i32 noundef %4, ptr nofree noundef writeonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %7, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %8, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %9) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19
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
  %i.l = load i64, ptr %i.k, align 8, !tbaa !19
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
  %10 = tail call double @sin(double noundef %i.at) #6
  %11 = fmul double %10, %i.as
  %12 = tail call double @cos(double noundef %i.at) #6
  %i.au = fmul double %12, %i.ar
  %i.av = fadd double %i.au, 1.000000e+00
  %i.aw = fmul double %11, %i.av
  %i.ax = fadd double %i.aw, %i.an
  %i.ay = fmul double %i.ax, f0x3F91DF46A2529D39  ; 2 uses
  %13 = tail call double @cos(double noundef %i.ay) #6
  %i.az = fsub double %13, %i.ar                  ; 3 uses
  %i.ba = fmul double %i.ar, %i.ar
  %i.bb = fsub double 1.000000e+00, %i.ba
  %14 = tail call double @sqrt(double noundef %i.bb) #6
  %15 = tail call double @sin(double noundef %i.ay) #6
  %i.bc = fmul double %14, %15                    ; 3 uses
  %i.bd = fmul double %i.az, %i.az
  %i.be = fmul double %i.bc, %i.bc
  %i.bf = fadd double %i.be, %i.bd
  %sqrt.i.i = tail call double @llvm.sqrt.f64(double %i.bf) ; 3 uses
  %16 = tail call double @atan2(double noundef %i.bc, double noundef %i.az) #6
  %i.bg = fmul double %16, f0x404CA5DC1A63C1F8
  %i.bh = fadd double %i.bg, %i.ap                ; 3 uses
  %i.bi = fcmp ult double %i.bh, 3.600000e+02
  %i.bj = fadd double %i.bh, -3.600000e+02
  %storemerge.i.i = select i1 %i.bi, double %i.bh, double %i.bj
  %i.bk = fmul double %storemerge.i.i, f0x3F91DF46A2529D39 ; 2 uses
  %17 = tail call double @cos(double noundef %i.bk) #6
  %18 = fmul double %17, %sqrt.i.i                ; 3 uses
  %19 = tail call double @sin(double noundef %i.bk) #6
  %i.bl = fmul double %19, %sqrt.i.i              ; 2 uses
  %i.bm = fmul double %i.v, 3.563000e-07
  %i.bn = fsub double 2.343930e+01, %i.bm
  %i.bo = fmul double %i.bn, f0x3F91DF46A2529D39  ; 2 uses
  %20 = tail call double @sin(double noundef %i.bo) #6
  %21 = fmul double %20, %i.bl
  %22 = tail call double @cos(double noundef %i.bo) #6
  %i.bp = fmul double %22, %i.bl                  ; 3 uses
  %23 = tail call double @atan2(double noundef %i.bp, double noundef %18) #6
  %i.bq = fmul double %23, f0x404CA5DC1A63C1F8
  %i.br = fmul double %18, %18
  %i.bs = fmul double %i.bp, %i.bp
  %i.bt = fadd double %i.br, %i.bs
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.bt)
  %24 = tail call double @atan2(double noundef %21, double noundef %sqrt.i) #6
  %i.bu = fmul double %24, f0x404CA5DC1A63C1F8
  %i.bv = fsub double %i.ah, %i.bq                ; 2 uses
  %i.bw = fmul double %i.bv, f0x3F66C16C16C16C17
  %i.bx = fadd double %i.bw, 5.000000e-01
  %25 = tail call double @llvm.floor.f64(double %i.bx)
  %i.by = fmul double %25, 3.600000e+02
  %i.bz = fsub double %i.bv, %i.by
  %i.ca = fdiv double %i.bz, 1.500000e+01
  %i.cb = fsub double 1.200000e+01, %i.ca         ; 3 uses
  %.not = icmp eq i32 %4, 0
  %i.cc = fdiv double 2.666000e-01, %sqrt.i.i
  %i.cd = fsub double %3, %i.cc
  %.059 = select i1 %.not, double %3, double %i.cd
  %i.ce = fmul double %.059, f0x3F91DF46A2529D39
  %26 = tail call double @sin(double noundef %i.ce) #6
  %i.cf = fmul double %2, f0x3F91DF46A2529D39     ; 2 uses
  %27 = tail call double @sin(double noundef %i.cf) #6
  %i.cg = fmul double %i.bu, f0x3F91DF46A2529D39  ; 2 uses
  %28 = tail call double @sin(double noundef %i.cg) #6
  %i.ch = fmul double %27, %28
  %i.ci = fsub double %26, %i.ch
  %29 = tail call double @cos(double noundef %i.cf) #6
  %30 = tail call double @cos(double noundef %i.cg) #6
  %i.cj = fmul double %29, %30
  %i.ck = fdiv double %i.ci, %i.cj                ; 3 uses
  %i.cl = fmul double %i.cb, 3.600000e+03         ; 2 uses
  %i.cm = fadd double %i.cl, %i.m
  %i.cn = fptosi double %i.cm to i64
  store i64 %i.cn, ptr %9, align 8, !tbaa !21
  %i.co = fcmp ult double %i.ck, 1.000000e+00
  br i1 %i.co, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.cp = load i64, ptr %i.k, align 8, !tbaa !19
  %i.cq = sitofp i64 %i.cp to double
  %i.cr = fadd double %i.cl, %i.cq
  %i.cs = fptosi double %i.cr to i64              ; 2 uses
  store i64 %i.cs, ptr %8, align 8, !tbaa !21
  store i64 %i.cs, ptr %7, align 8, !tbaa !21
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.ct = fcmp ugt double %i.ck, -1.000000e+00
  br i1 %i.ct, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cu = load i64, ptr %i.a, align 8, !tbaa !19
  %i.cv = add i64 %i.cu, -43200
  store i64 %i.cv, ptr %7, align 8, !tbaa !21
  %i.cw = load i64, ptr %i.a, align 8, !tbaa !19
  %i.cx = add i64 %i.cw, 43200
  store i64 %i.cx, ptr %8, align 8, !tbaa !21
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %31 = tail call double @acos(double noundef %i.ck) #6
  %i.cy = fmul double %31, f0x404CA5DC1A63C1F8
  %i.cz = fdiv double %i.cy, 1.500000e+01         ; 2 uses
  %i.da = fsub double %i.cb, %i.cz                ; 2 uses
  %i.db = fmul double %i.da, 3.600000e+03
  %i.dc = load i64, ptr %i.k, align 8, !tbaa !19
  %i.dd = sitofp i64 %i.dc to double
  %i.de = fadd double %i.db, %i.dd
  %i.df = fptosi double %i.de to i64
  store i64 %i.df, ptr %7, align 8, !tbaa !21
  %i.dg = fadd double %i.cb, %i.cz                ; 2 uses
  %i.dh = fmul double %i.dg, 3.600000e+03
  %i.di = load i64, ptr %i.k, align 8, !tbaa !19
  %i.dj = sitofp i64 %i.di to double
  %i.dk = fadd double %i.dh, %i.dj
  %i.dl = fptosi double %i.dk to i64
  store i64 %i.dl, ptr %8, align 8, !tbaa !21
  store double %i.da, ptr %5, align 8, !tbaa !24
  store double %i.dg, ptr %6, align 8, !tbaa !24
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ 1, %bb.d ], [ 0, %bb.e ]
  tail call void @timelib_time_dtor(ptr noundef nonnull %i.e) #6
  store i64 %i.b, ptr %i.a, align 8, !tbaa !19
  ret i32 %.0
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
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"long long", !8, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!"p1 _ZTS15_timelib_tzinfo", !13, i64 0}
!16 = !{!"", !9, i64 0, !12, i64 8}
!17 = !{!"_timelib_rel_time", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !12, i64 72, !16, i64 80, !9, i64 96, !9, i64 100}
!18 = !{!"_timelib_time", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !9, i64 56, !14, i64 64, !15, i64 72, !9, i64 80, !17, i64 88, !12, i64 192, !9, i64 200, !9, i64 204, !9, i64 208, !9, i64 212, !9, i64 216, !9, i64 220, !9, i64 224, !9, i64 228, !9, i64 232}
!19 = !{!18, !12, i64 192}
!20 = !{!18, !12, i64 24}
!21 = !{!12, !12, i64 0}
!22 = !{!18, !12, i64 16}
!23 = !{!"double", !8, i64 0}
!24 = !{!23, !23, i64 0}
end_hunk_0
