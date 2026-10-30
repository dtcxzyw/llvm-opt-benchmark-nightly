Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/geod_set?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.geodesic = type { double, double, double, double, double, double, double, double, double }
%struct.geod_geodesic = type { double, double, double, double, double, double, double, double, double, [6 x double], [15 x double], [21 x double] }
%struct.geod_geodesicline = type { double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, [7 x double], [7 x double], [7 x double], [6 x double], [6 x double], i32 }

@GEODESIC = hidden global %struct.geodesic zeroinitializer, align 8
@GlobalGeodesic = hidden local_unnamed_addr global %struct.geod_geodesic zeroinitializer, align 8
@GlobalGeodesicLine = hidden local_unnamed_addr global %struct.geod_geodesicline zeroinitializer, align 8
@n_alpha = hidden local_unnamed_addr global i32 0, align 4
@n_S = hidden local_unnamed_addr global i32 0, align 4
@to_meter = hidden local_unnamed_addr global double 0.000000e+00, align 8
@fr_meter = hidden local_unnamed_addr global double 0.000000e+00, align 8
@del_alpha = hidden local_unnamed_addr global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [36 x i8] c"no arguments in initialization list\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"memory allocation failed\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"ellipsoid setup failure\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"sunits\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"linear\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"%s unknown unit conversion id\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"tlat_1\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"rlat_1\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"rlon_1\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"tlat_2\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"rlat_2\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"rlon_2\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"dS\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"rA\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"incomplete geodesic/arc info\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"in_A\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"rdel_A\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"del azimuth == 0\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"ddel_S\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"in_S\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"no interval divisor selected\00", align 1

; Function Attrs: mustprogress uwtable
define hidden void @geod_set(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = icmp slt i32 %0, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @_Z5emessiPKcz(i32 noundef 1, ptr noundef nonnull @.str)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !13
  %i.d = tail call noundef ptr @_Z10pj_mkparamPKc(ptr noundef %i.c) ; 17 uses
  %.not.not = icmp eq ptr %i.d, null              ; 2 uses
  br i1 %.not.not, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  tail call void (i32, ptr, ...) @_Z5emessiPKcz(i32 noundef 1, ptr noundef nonnull @.str.1)
  br label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.e = icmp sgt i32 %0, 1
  br i1 %i.e, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.f = zext nneg i32 %0 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.f, %.thread, %bb.d
  %i.g = tail call noundef ptr @_Z18pj_get_default_ctxv()
  %i.h = call noundef i32 @_Z10pj_ell_setP6pj_ctxP8ARG_listPdS3_(ptr noundef %i.g, ptr noundef %i.d, ptr noundef nonnull @GEODESIC, ptr noundef nonnull %i.a)
  %.not68 = icmp eq i32 %i.h, 0
  br i1 %.not68, label %bb.h, label %bb.g

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %.05979 = phi ptr [ %i.d, %.lr.ph.preheader ], [ %i.l, %bb.f ] ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !13
  %i.k = tail call noundef ptr @_Z10pj_mkparamPKc(ptr noundef %i.j) ; 3 uses
  store ptr %i.k, ptr %.05979, align 8, !tbaa !15
  %.not77 = icmp eq ptr %i.k, null
  br i1 %.not77, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  tail call void (i32, ptr, ...) @_Z5emessiPKcz(i32 noundef 1, ptr noundef nonnull @.str.1)
  %.pre = load ptr, ptr %.05979, align 8, !tbaa !15
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %i.l = phi ptr [ %.pre, %bb.e ], [ %i.k, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.m = icmp ne ptr %i.l, null
  %i.n = icmp samesign ult i64 %indvars.iv.next, %i.f
  %i.o = select i1 %i.m, i1 %i.n, i1 false
  br i1 %i.o, label %.lr.ph, label %._crit_edge, !llvm.loop !9

bb.g:                                             ; preds = %._crit_edge
  call void (i32, ptr, ...) @_Z5emessiPKcz(i32 noundef 1, ptr noundef nonnull @.str.2)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %i.p = call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef null, ptr noundef %i.d, ptr noundef nonnull @.str.3) ; 2 uses
  %i.q = inttoptr i64 %i.p to ptr                 ; 2 uses
  %.not69 = icmp eq i64 %i.p, 0
  br i1 %.not69, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = call ptr @proj_get_units_from_database(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 0, ptr noundef null) ; 5 uses
  %.not70 = icmp eq ptr %i.r, null
  br i1 %.not70, label %.critedge96, label %.lr.ph83.split

.lr.ph83.split:                                   ; preds = %bb.i
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !17   ; 2 uses
  %.not7187 = icmp eq ptr %i.s, null
  br i1 %.not7187, label %.critedge96, label %.lr.ph90

.critedge:                                        ; preds = %bb.l
  call void @proj_unit_list_destroy(ptr noundef nonnull %i.r)
  br i1 %.1, label %bb.o, label %bb.m

.lr.ph90:                                         ; preds = %.lr.ph83.split, %bb.l
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %bb.l ], [ 0, %.lr.ph83.split ]
  %i.t = phi ptr [ %i.ac, %bb.l ], [ %i.s, %.lr.ph83.split ] ; 2 uses
  %.0618188 = phi i1 [ %.1, %bb.l ], [ false, %.lr.ph83.split ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !20   ; 2 uses
  %.not76 = icmp eq ptr %i.v, null
  br i1 %.not76, label %bb.l, label %bb.j

bb.j:                                             ; preds = %.lr.ph90
  %i.w = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.v, ptr noundef nonnull dereferenceable(1) %i.q) #8
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.z = load double, ptr %i.y, align 8, !tbaa !21 ; 2 uses
  store double %i.z, ptr @to_meter, align 8, !tbaa !22
  %i.aa = fdiv double 1.000000e+00, %i.z
  store double %i.aa, ptr @fr_meter, align 8, !tbaa !22
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph90, %bb.j, %bb.k
  %.1 = phi i1 [ true, %bb.k ], [ %.0618188, %bb.j ], [ %.0618188, %.lr.ph90 ] ; 2 uses
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next99
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !17 ; 2 uses
  %.not71 = icmp eq ptr %i.ac, null
  br i1 %.not71, label %.critedge, label %.lr.ph90

.critedge96:                                      ; preds = %.lr.ph83.split, %bb.i
  call void @proj_unit_list_destroy(ptr noundef %i.r)
  br label %bb.m

bb.m:                                             ; preds = %.critedge96, %.critedge
  call void (i32, ptr, ...) @_Z5emessiPKcz(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.q)
  br label %bb.o

bb.n:                                             ; preds = %bb.h
  store double 1.000000e+00, ptr @fr_meter, align 8, !tbaa !22
  store double 1.000000e+00, ptr @to_meter, align 8, !tbaa !22
  br label %bb.o

bb.o:                                             ; preds = %.critedge, %bb.m, %bb.n
  %i.ad = load double, ptr %i.a, align 8, !tbaa !22 ; 2 uses
  %i.ae = fsub double 1.000000e+00, %i.ad
  %i.af = call double @sqrt(double noundef %i.ae) #7
  %i.ag = fadd double %i.af, 1.000000e+00
  %i.ah = fdiv double %i.ad, %i.ag
  store double %i.ah, ptr getelementptr inbounds nuw (i8, ptr @GEODESIC, i64 8), align 8, !tbaa !24
  call void @geod_ini()
  %i.ai = call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef null, ptr noundef %i.d, ptr noundef nonnull @.str.6)
  %i.aj = and i64 %i.ai, 4294967295
  %.not72 = icmp eq i64 %i.aj, 0
  br i1 %.not72, label %bb.ab, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef null, ptr noundef %i.d, ptr noundef nonnull @.str.7)
  store i64 %i.ak, ptr getelementptr inbounds nuw (i8, ptr @GEODESIC, i64 24), align 8, !tbaa !25
  %i.al = call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef null, ptr noundef %i.d, ptr noundef nonnull @.str.8)
  store i64 %i.al, ptr getelementptr inbounds nuw (i8, ptr @GEODESIC, i64 16), align 8, !tbaa !26
  %i.am = call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef null, ptr noundef %i.d, ptr noundef nonnull @.str.9)
  %i.an = and i64 %i.am, 4294967295
  %.not73 = icmp eq i64 %i.an, 0
  br i1 %.not73, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ao = call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef null, ptr noundef %i.d, ptr noundef nonnull @.str.10)
  store i64 %i.ao, ptr getelementptr inbounds nuw (i8, ptr @GEODESIC, i64 48), align 8, !tbaa !27
  %i.ap = call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef null, ptr noundef %i.d, ptr noundef nonnull @.str.11)
  store i64 %i.ap, ptr getelementptr inbounds nuw (i8, ptr @GEODESIC, i64 40), align 8, !tbaa !28
  call void @geod_inv()
  call void @geod_pre()
  br label %bb.u

bb.r:                                             ; preds = %bb.p
  %i.aq = call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef null, ptr noundef %i.d, ptr noundef nonnull @.str.12) ; 2 uses
  store i64 %i.aq, ptr getelementptr inbounds nuw (i8, ptr @GEODESIC, i64 64), align 8, !tbaa !29
  %i.ar = and i64 %i.aq, 9223372036854775807
  %.not74 = icmp eq i64 %i.ar, 0
  br i1 %.not74, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.as = call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef null, ptr noundef %i.d, ptr noundef nonnull @.str.13)
  store i64 %i.as, ptr getelementptr inbounds nuw (i8, ptr @GEODESIC, i64 32), align 8, !tbaa !30
  call void @geod_pre()
  call void @geod_for()
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  call void (i32, ptr, ...) @_Z5emessiPKcz(i32 noundef 1, ptr noundef nonnull @.str.14)
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %bb.q
  %i.at = call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef null, ptr noundef %i.d, ptr noundef nonnull @.str.15)
  %.sroa.03.0.extract.trunc = trunc i64 %i.at to i32 ; 2 uses
  store i32 %.sroa.03.0.extract.trunc, ptr @n_alpha, align 4, !tbaa !31
  %i.au = icmp sgt i32 %.sroa.03.0.extract.trunc, 0
  br i1 %i.au, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.av = call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef null, ptr noundef %i.d, ptr noundef nonnull @.str.16) ; 2 uses
  store i64 %i.av, ptr @del_alpha, align 8, !tbaa !22
  %i.aw = and i64 %i.av, 9223372036854775807
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %bb.w, label %bb.ab

bb.w:                                             ; preds = %bb.v
  call void (i32, ptr, ...) @_Z5emessiPKcz(i32 noundef 1, ptr noundef nonnull @.str.17)
  br label %bb.ab

bb.x:                                             ; preds = %bb.u
  %i.ay = call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef null, ptr noundef %i.d, ptr noundef nonnull @.str.18)
  %i.az = bitcast i64 %i.ay to double             ; 2 uses
  %i.ba = fcmp une double %i.az, 0.000000e+00
  br i1 %i.ba, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bb = call double @llvm.fabs.f64(double %i.az)
  %i.bc = load double, ptr getelementptr inbounds nuw (i8, ptr @GEODESIC, i64 64), align 8, !tbaa !29
  %i.bd = fdiv double %i.bc, %i.bb
  %i.be = fadd double %i.bd, 5.000000e-01
  %i.bf = fptosi double %i.be to i32
  store i32 %i.bf, ptr @n_S, align 4, !tbaa !31
  br label %bb.ab

bb.z:                                             ; preds = %bb.x
  %i.bg = call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef null, ptr noundef %i.d, ptr noundef nonnull @.str.19)
  %.sroa.0.0.extract.trunc = trunc i64 %i.bg to i32 ; 2 uses
  store i32 %.sroa.0.0.extract.trunc, ptr @n_S, align 4, !tbaa !31
  %i.bh = icmp slt i32 %.sroa.0.0.extract.trunc, 1
  br i1 %i.bh, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void (i32, ptr, ...) @_Z5emessiPKcz(i32 noundef 1, ptr noundef nonnull @.str.20)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.w, %bb.v, %bb.z, %bb.aa, %bb.y, %bb.o
  br i1 %.not.not, label %._crit_edge95, label %.lr.ph94

.lr.ph94:                                         ; preds = %bb.ab, %.lr.ph94
  %.092 = phi ptr [ %i.bi, %.lr.ph94 ], [ %i.d, %bb.ab ] ; 2 uses
  %i.bi = load ptr, ptr %.092, align 8, !tbaa !15 ; 2 uses
  call void @free(ptr noundef nonnull %.092) #7
  %.not75 = icmp eq ptr %i.bi, null
  br i1 %.not75, label %._crit_edge95, label %.lr.ph94, !llvm.loop !10

._crit_edge95:                                    ; preds = %.lr.ph94, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_Z5emessiPKcz(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare noundef ptr @_Z10pj_mkparamPKc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef i32 @_Z10pj_ell_setP6pj_ctxP8ARG_listPdS3_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_Z18pj_get_default_ctxv() local_unnamed_addr #2

declare i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @proj_get_units_from_database(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

declare void @proj_unit_list_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #4

declare void @geod_ini() local_unnamed_addr #2

declare void @geod_inv() local_unnamed_addr #2

declare void @geod_pre() local_unnamed_addr #2

declare void @geod_for() local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = distinct !{!9, !16}
!10 = distinct !{!10, !16}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"p1 _ZTS8ARG_list", !11, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!11, !11, i64 0}
!18 = !{!"double", !5, i64 0}
!19 = !{!"_ZTS14PROJ_UNIT_INFO", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !18, i64 32, !12, i64 40, !6, i64 48}
!20 = !{!19, !12, i64 40}
!21 = !{!19, !18, i64 32}
!22 = !{!18, !18, i64 0}
!23 = !{!"_ZTS8geodesic", !18, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !18, i64 56, !18, i64 64}
!24 = !{!23, !18, i64 8}
!25 = !{!23, !18, i64 24}
!26 = !{!23, !18, i64 16}
!27 = !{!23, !18, i64 48}
!28 = !{!23, !18, i64 40}
!29 = !{!23, !18, i64 64}
!30 = !{!23, !18, i64 32}
!31 = !{!6, !6, i64 0}
end_hunk_0
