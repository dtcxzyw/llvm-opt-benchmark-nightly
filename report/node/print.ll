inline.NumInlined: 5
inline.NumDeleted: 2
begin_hunk_0
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%c%d\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%c%dx%d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"0x%02X\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%.3E\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%.3f\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%.4E\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%.4f\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"0x%04X\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"%.9E\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"%.9f\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"%.18E\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"%.18f\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"0x%08x%08x\00", align 1
@.str.15 = private unnamed_addr constant [51 x i8] c"../../deps/v8/third_party/highway/src/hwy/print.cc\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"Assert %s: %s\00", align 1
@.str.17 = private unnamed_addr constant [51 x i8] c"!info.is_float && !info.is_signed && !info.is_bf16\00", align 1
@.str.18 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"0x%08x%08x_%08x%08x\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.20 = private unnamed_addr constant [19 x i8] c"%s %s [%d+ ->]:\0A  \00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"%s,\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"(out of bounds)\00", align 1

; Function Attrs: mustprogress nofree nounwind uwtable
define hidden void @_ZN3hwy6detail8TypeNameERKNS0_8TypeInfoEmPc(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, ptr noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !range !5, !noundef !6
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.e = load i8, ptr %i.d, align 1, !range !5
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = select i1 %i.f, i32 105, i32 117
  %i.h = select i1 %i.c, i32 102, i32 %i.g        ; 2 uses
  %i.i = icmp eq i64 %1, 1
  %i.j = load i64, ptr %0, align 8
  %.tr9 = trunc i64 %i.j to i32
  %i.k = shl i32 %.tr9, 3                         ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %2, i64 noundef 64, ptr noundef nonnull @.str, i32 noundef %i.h, i32 noundef %i.k) #10 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.m = trunc i64 %1 to i32
  %i.n = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %2, i64 noundef 64, ptr noundef nonnull @.str.1, i32 noundef %i.h, i32 noundef %i.k, i32 noundef %i.m) #10 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN3hwy6detail8ToStringERKNS0_8TypeInfoEPKvPc(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef readonly captures(none) %1, ptr noundef writeonly captures(none) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.a)
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %.split, label %bb.u

.split:                                           ; preds = %bb.a
  %i.d = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.a, i1 true)
  switch i64 %i.d, label %bb.u [
    i64 0, label %bb.b
    i64 1, label %bb.e
    i64 2, label %bb.j
    i64 3, label %bb.o
    i64 4, label %bb.r
  ]

bb.b:                                             ; preds = %.split
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.f = load i8, ptr %i.e, align 1, !range !5, !noundef !6
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = load i8, ptr %1, align 1, !noalias !6    ; 2 uses
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = sext i8 %i.h to i32
  %i.j = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %2, i64 noundef 100, ptr noundef nonnull @.str.2, i32 noundef %i.i) #10 ; 0 uses
  br label %bb.u

bb.d:                                             ; preds = %bb.b
  %i.k = zext i8 %i.h to i32
  %i.l = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %2, i64 noundef 100, ptr noundef nonnull @.str.3, i32 noundef %i.k) #10 ; 0 uses
  br label %bb.u

bb.e:                                             ; preds = %.split
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.n = load i8, ptr %i.m, align 2, !range !5, !noundef !6
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "align"(ptr %1, i64 2) ]
  %i.p = load i16, ptr %1, align 2, !alias.scope !7, !noalias !10
  %i.q = zext i16 %i.p to i32
  %i.r = shl nuw i32 %i.q, 16
  %i.s = bitcast i32 %i.r to float
  %i.t = fpext float %i.s to double               ; 2 uses
  %i.u = tail call double @llvm.fabs.f64(double %i.t)
  %i.v = fcmp olt double %i.u, 1.000000e-03
  %.str.4..str.5 = select i1 %i.v, ptr @.str.4, ptr @.str.5
  %i.w = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %2, i64 noundef 100, ptr noundef nonnull %.str.4..str.5, double noundef %i.t) #10 ; 0 uses
  br label %bb.u

bb.g:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i8, ptr %i.x, align 8, !range !5, !noundef !6
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "align"(ptr %1, i64 2) ]
  %i.aa = load half, ptr %1, align 2, !alias.scope !12, !noalias !15
  %i.ab = fpext half %i.aa to double              ; 2 uses
  %i.ac = tail call double @llvm.fabs.f64(double %i.ab)
  %i.ad = fcmp olt double %i.ac, 1.000000e-04
  %.str.6..str.7 = select i1 %i.ad, ptr @.str.6, ptr @.str.7
  %i.ae = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %2, i64 noundef 100, ptr noundef nonnull %.str.6..str.7, double noundef %i.ab) #10 ; 0 uses
  br label %bb.u

bb.i:                                             ; preds = %bb.g
  %i.af = load i16, ptr %1, align 1, !alias.scope !17, !noalias !20
  %i.ag = zext i16 %i.af to i32
  %i.ah = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %2, i64 noundef 100, ptr noundef nonnull @.str.8, i32 noundef %i.ag) #10 ; 0 uses
  br label %bb.u

bb.j:                                             ; preds = %.split
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load i8, ptr %i.ai, align 8, !range !5, !noundef !6
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.al = load i32, ptr %1, align 1, !alias.scope !22, !noalias !25 ; 2 uses
  %i.am = bitcast i32 %i.al to float
  %i.an = and i32 %i.al, 2147483647
  %i.ao = bitcast i32 %i.an to float
  %i.ap = fpext float %i.ao to double
  %i.aq = fcmp olt double %i.ap, f0x3EB0C6F7A0B5ED8D
  %.str.9..str.10 = select i1 %i.aq, ptr @.str.9, ptr @.str.10
  %i.ar = fpext float %i.am to double
  %i.as = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %2, i64 noundef 100, ptr noundef nonnull %.str.9..str.10, double noundef %i.ar) #10 ; 0 uses
  br label %bb.u

bb.l:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.au = load i8, ptr %i.at, align 1, !range !5, !noundef !6
  %i.av = trunc nuw i8 %i.au to i1
  %i.aw = load i32, ptr %1, align 1, !noalias !6  ; 2 uses
  br i1 %i.av, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ax = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %2, i64 noundef 100, ptr noundef nonnull @.str.2, i32 noundef %i.aw) #10 ; 0 uses
  br label %bb.u

bb.n:                                             ; preds = %bb.l
  %i.ay = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %2, i64 noundef 100, ptr noundef nonnull @.str.11, i32 noundef %i.aw) #10 ; 0 uses
  br label %bb.u

bb.o:                                             ; preds = %.split
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ba = load i8, ptr %i.az, align 8, !range !5, !noundef !6
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bc = load i64, ptr %1, align 1, !alias.scope !27, !noalias !30 ; 2 uses
  %i.bd = bitcast i64 %i.bc to double
  %i.be = and i64 %i.bc, 9223372036854775807
  %i.bf = bitcast i64 %i.be to double
  %i.bg = fcmp olt double %i.bf, 1.000000e-09
  %.str.12..str.13 = select i1 %i.bg, ptr @.str.12, ptr @.str.13
  %i.bh = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %2, i64 noundef 100, ptr noundef nonnull %.str.12..str.13, double noundef %i.bd) #10 ; 0 uses
  br label %bb.u

bb.q:                                             ; preds = %bb.o
  %i.bi = load i32, ptr %1, align 1, !alias.scope !32, !noalias !35
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bk = load i32, ptr %i.bj, align 1, !alias.scope !37, !noalias !40
  %i.bl = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %2, i64 noundef 100, ptr noundef nonnull @.str.14, i32 noundef %i.bk, i32 noundef %i.bi) #10 ; 0 uses
  br label %bb.u

bb.r:                                             ; preds = %.split
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %3 = load i8, ptr %i.bm, align 8, !range !5, !noundef !6
  %4 = trunc nuw i8 %3 to i1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 9
  %6 = load i8, ptr %5, align 1, !range !5
  %7 = trunc nuw i8 %6 to i1
  %or.cond = select i1 %4, i1 true, i1 %7
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 10
  %9 = load i8, ptr %8, align 2, !range !5
  %10 = trunc nuw i8 %9 to i1
  %or.cond54 = select i1 %or.cond, i1 true, i1 %10
  br i1 %or.cond54, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, i32, ptr, ...) @_ZN3hwy5AbortEPKciS1_z(ptr noundef nonnull @.str.15, i32 noundef 95, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) #11
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.bn = load i32, ptr %1, align 1, !alias.scope !42, !noalias !45
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bp = load i32, ptr %i.bo, align 1, !alias.scope !47, !noalias !50
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.br = load i32, ptr %i.bq, align 1, !alias.scope !52, !noalias !55
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bt = load i32, ptr %i.bs, align 1, !alias.scope !57, !noalias !60
  %i.bu = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %2, i64 noundef 100, ptr noundef nonnull @.str.19, i32 noundef %i.bt, i32 noundef %i.br, i32 noundef %i.bp, i32 noundef %i.bn) #10 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.a, %.split, %bb.h, %bb.i, %bb.f, %bb.q, %bb.p, %bb.t, %bb.k, %bb.n, %bb.m, %bb.c, %bb.d
  ret void
}

; Function Attrs: noreturn
declare void @_ZN3hwy5AbortEPKciS1_z(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold mustprogress nounwind uwtable
define hidden void @_ZN3hwy6detail10PrintArrayERKNS0_8TypeInfoEPKcPKvmmm(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1, ptr noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [100 x i8], align 16              ; 5 uses
  %i.b = alloca [100 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i8, ptr %i.c, align 8, !range !5, !noundef !6
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.g = load i8, ptr %i.f, align 1, !range !5
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = select i1 %i.h, i32 105, i32 117
  %i.j = select i1 %i.e, i32 102, i32 %i.i        ; 2 uses
  %i.k = icmp eq i64 %3, 1
  %i.l = load i64, ptr %0, align 8
  %.tr9.i = trunc i64 %i.l to i32
  %i.m = shl i32 %.tr9.i, 3                       ; 2 uses
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 64, ptr noundef nonnull @.str, i32 noundef %i.j, i32 noundef %i.m) #10 ; 0 uses
  br label %_ZN3hwy6detail8TypeNameERKNS0_8TypeInfoEmPc.exit

bb.c:                                             ; preds = %bb.a
  %i.o = trunc i64 %3 to i32
  %i.p = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 64, ptr noundef nonnull @.str.1, i32 noundef %i.j, i32 noundef %i.m, i32 noundef %i.o) #10 ; 0 uses
  br label %_ZN3hwy6detail8TypeNameERKNS0_8TypeInfoEmPc.exit

_ZN3hwy6detail8TypeNameERKNS0_8TypeInfoEmPc.exit: ; preds = %bb.b, %bb.c
  %i.q = tail call i64 @llvm.smax.i64(i64 %4, i64 2)
  %i.r = add nsw i64 %i.q, -2                     ; 4 uses
  %i.s = add i64 %i.r, %5
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.s, i64 %3) ; 2 uses
  %i.u = load ptr, ptr @stderr, align 8
  %i.v = trunc i64 %i.r to i32
  %i.w = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.u, ptr noundef nonnull @.str.20, ptr noundef nonnull %i.a, ptr noundef %1, i32 noundef %i.v) #12 ; 0 uses
  %i.x = icmp ult i64 %i.r, %i.t
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN3hwy6detail8TypeNameERKNS0_8TypeInfoEmPc.exit, %.lr.ph
  %.025 = phi i64 [ %i.ad, %.lr.ph ], [ %i.r, %_ZN3hwy6detail8TypeNameERKNS0_8TypeInfoEmPc.exit ] ; 2 uses
  %i.y = load i64, ptr %0, align 8
  %i.z = mul i64 %i.y, %.025
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 %i.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @_ZN3hwy6detail8ToStringERKNS0_8TypeInfoEPKvPc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.aa, ptr noundef nonnull %i.b)
  %i.ab = load ptr, ptr @stderr, align 8
  %i.ac = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ab, ptr noundef nonnull @.str.21, ptr noundef nonnull %i.b) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  %i.ad = add i64 %.025, 1                        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %i.t
  br i1 %exitcond.not, label %._crit_edge.thread, label %.lr.ph, !llvm.loop !62

._crit_edge:                                      ; preds = %_ZN3hwy6detail8TypeNameERKNS0_8TypeInfoEmPc.exit
  %i.ae = load ptr, ptr @stderr, align 8
  %i.af = call i64 @fwrite(ptr nonnull @.str.22, i64 15, i64 1, ptr %i.ae) #13 ; 0 uses
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.lr.ph, %._crit_edge
  %i.ag = load ptr, ptr @stderr, align 8
  %fputc = call i32 @fputc(i32 10, ptr %i.ag)     ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #7

attributes #0 = { mustprogress nofree nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nofree nounwind }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{i8 0, i8 2}
!6 = !{}
!7 = !{!8}
!8 = distinct !{!8, !9, !"_ZN3hwyL9CopyBytesILm2EvNS_10bfloat16_tEEEvPKT0_PT1_: argument 0"}
!9 = distinct !{!9, !"_ZN3hwyL9CopyBytesILm2EvNS_10bfloat16_tEEEvPKT0_PT1_"}
!10 = !{!11}
!11 = distinct !{!11, !9, !"_ZN3hwyL9CopyBytesILm2EvNS_10bfloat16_tEEEvPKT0_PT1_: argument 1"}
!12 = !{!13}
!13 = distinct !{!13, !14, !"_ZN3hwyL9CopyBytesILm2EvNS_9float16_tEEEvPKT0_PT1_: argument 0"}
!14 = distinct !{!14, !"_ZN3hwyL9CopyBytesILm2EvNS_9float16_tEEEvPKT0_PT1_"}
!15 = !{!16}
!16 = distinct !{!16, !14, !"_ZN3hwyL9CopyBytesILm2EvNS_9float16_tEEEvPKT0_PT1_: argument 1"}
!17 = !{!18}
!18 = distinct !{!18, !19, !"_ZN3hwyL9CopyBytesILm2EvtEEvPKT0_PT1_: argument 0"}
!19 = distinct !{!19, !"_ZN3hwyL9CopyBytesILm2EvtEEvPKT0_PT1_"}
!20 = !{!21}
!21 = distinct !{!21, !19, !"_ZN3hwyL9CopyBytesILm2EvtEEvPKT0_PT1_: argument 1"}
!22 = !{!23}
!23 = distinct !{!23, !24, !"_ZN3hwyL9CopyBytesILm4EvfEEvPKT0_PT1_: argument 0"}
!24 = distinct !{!24, !"_ZN3hwyL9CopyBytesILm4EvfEEvPKT0_PT1_"}
!25 = !{!26}
!26 = distinct !{!26, !24, !"_ZN3hwyL9CopyBytesILm4EvfEEvPKT0_PT1_: argument 1"}
!27 = !{!28}
!28 = distinct !{!28, !29, !"_ZN3hwyL9CopyBytesILm8EvdEEvPKT0_PT1_: argument 0"}
!29 = distinct !{!29, !"_ZN3hwyL9CopyBytesILm8EvdEEvPKT0_PT1_"}
!30 = !{!31}
!31 = distinct !{!31, !29, !"_ZN3hwyL9CopyBytesILm8EvdEEvPKT0_PT1_: argument 1"}
!32 = !{!33}
!33 = distinct !{!33, !34, !"_ZN3hwyL9CopyBytesILm4EhjEEvPKT0_PT1_: argument 0"}
!34 = distinct !{!34, !"_ZN3hwyL9CopyBytesILm4EhjEEvPKT0_PT1_"}
!35 = !{!36}
!36 = distinct !{!36, !34, !"_ZN3hwyL9CopyBytesILm4EhjEEvPKT0_PT1_: argument 1"}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_ZN3hwyL9CopyBytesILm4EhjEEvPKT0_PT1_: argument 0"}
!39 = distinct !{!39, !"_ZN3hwyL9CopyBytesILm4EhjEEvPKT0_PT1_"}
!40 = !{!41}
!41 = distinct !{!41, !39, !"_ZN3hwyL9CopyBytesILm4EhjEEvPKT0_PT1_: argument 1"}
!42 = !{!43}
!43 = distinct !{!43, !44, !"_ZN3hwyL9CopyBytesILm4EhjEEvPKT0_PT1_: argument 0"}
!44 = distinct !{!44, !"_ZN3hwyL9CopyBytesILm4EhjEEvPKT0_PT1_"}
!45 = !{!46}
!46 = distinct !{!46, !44, !"_ZN3hwyL9CopyBytesILm4EhjEEvPKT0_PT1_: argument 1"}
!47 = !{!48}
!48 = distinct !{!48, !49, !"_ZN3hwyL9CopyBytesILm4EhjEEvPKT0_PT1_: argument 0"}
!49 = distinct !{!49, !"_ZN3hwyL9CopyBytesILm4EhjEEvPKT0_PT1_"}
!50 = !{!51}
!51 = distinct !{!51, !49, !"_ZN3hwyL9CopyBytesILm4EhjEEvPKT0_PT1_: argument 1"}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_ZN3hwyL9CopyBytesILm4EhjEEvPKT0_PT1_: argument 0"}
!54 = distinct !{!54, !"_ZN3hwyL9CopyBytesILm4EhjEEvPKT0_PT1_"}
!55 = !{!56}
!56 = distinct !{!56, !54, !"_ZN3hwyL9CopyBytesILm4EhjEEvPKT0_PT1_: argument 1"}
!57 = !{!58}
!58 = distinct !{!58, !59, !"_ZN3hwyL9CopyBytesILm4EhjEEvPKT0_PT1_: argument 0"}
!59 = distinct !{!59, !"_ZN3hwyL9CopyBytesILm4EhjEEvPKT0_PT1_"}
!60 = !{!61}
!61 = distinct !{!61, !59, !"_ZN3hwyL9CopyBytesILm4EhjEEvPKT0_PT1_: argument 1"}
!62 = distinct !{!62, !63}
!63 = !{!"llvm.loop.mustprogress"}
end_hunk_0
