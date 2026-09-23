Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/newbh?download=true
inline.NumInlined: 19
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumUnrolled: 37
begin_hunk_0_@freetree:bb.a
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !36   ; 2 uses
  %.not.7 = icmp eq ptr %i.s, null
  br i1 %.not.7, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @freetree(ptr noundef nonnull %i.s)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.t = load i16, ptr %0, align 8, !tbaa !35
  %i.u = icmp eq i16 %i.t, 1                      ; 2 uses
  %bp_free_list.cp_free_list.i = select i1 %i.u, ptr @bp_free_list, ptr @cp_free_list ; 2 uses
  %..i = select i1 %i.u, i64 128, i64 112
  %i.v = load ptr, ptr %bp_free_list.cp_free_list.i, align 8, !tbaa !37
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %..i
  store ptr %i.v, ptr %i.w, align 8, !tbaa !37
  store ptr %0, ptr %bp_free_list.cp_free_list.i, align 8, !tbaa !37
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %bb.b, %bb.r
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @my_free(ptr noundef %0) local_unnamed_addr #12 {
bb.a:
  %i.a = load i16, ptr %0, align 8, !tbaa !35
  %i.b = icmp eq i16 %i.a, 1                      ; 2 uses
  %bp_free_list.cp_free_list = select i1 %i.b, ptr @bp_free_list, ptr @cp_free_list ; 2 uses
  %. = select i1 %i.b, i64 128, i64 112
  %i.c = load ptr, ptr %bp_free_list.cp_free_list, align 8, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.
  store ptr %i.c, ptr %i.d, align 8, !tbaa !37
  store ptr %0, ptr %bp_free_list.cp_free_list, align 8, !tbaa !37
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local noalias noundef ptr @ubody_alloc(i32 noundef %0) local_unnamed_addr #13 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(144) ptr @malloc(i64 noundef 144) #21 ; 5 uses
  store i16 1, ptr %i.a, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i32 %0, ptr %i.b, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store ptr null, ptr %i.c, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  store i32 %0, ptr %i.d, align 4, !tbaa !26
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local noundef ptr @cell_alloc(i32 noundef %0) local_unnamed_addr #14 {
bb.a:
  %i.a = load ptr, ptr @cp_free_list, align 8, !tbaa !36 ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40
  store ptr %i.c, ptr @cp_free_list, align 8, !tbaa !36
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noalias dereferenceable_or_null(120) ptr @malloc(i64 noundef 120) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.07 = phi ptr [ %i.a, %bb.b ], [ %i.d, %bb.c ] ; 4 uses
  store i16 2, ptr %.07, align 8, !tbaa !41
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 40
  store i32 %0, ptr %i.e, align 8, !tbaa !42
  %i.f = getelementptr inbounds nuw i8, ptr %.07, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.f, i8 0, i64 64, i1 false), !tbaa !36
  ret ptr %.07
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #15

declare double @my_rand(...) local_unnamed_addr #2

declare double @xrand(...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #16

; Function Attrs: nounwind uwtable
define dso_local void @grav(double noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, double noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.hgstruct, align 8           ; 8 uses
  %6 = alloca %struct.hgstruct, align 8           ; 4 uses
  %.not1112 = icmp eq ptr %2, null
  br i1 %.not1112, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.d = fmul double %0, %0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.013 = phi ptr [ %2, %.lr.ph ], [ %i.j, %bb.b ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store ptr %.013, ptr %5, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %.013, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !tbaa !15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @walksub(ptr dead_on_unwind nonnull writable sret(%struct.hgstruct) align 8 %6, ptr noundef %1, double noundef %i.d, double noundef 1.000000e+00, ptr noundef nonnull byval(%struct.hgstruct) align 8 %5, i32 noundef 0) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %6, i64 64, i1 false), !tbaa.struct !31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.f = load double, ptr %i.b, align 8, !tbaa !32
  %i.g = getelementptr inbounds nuw i8, ptr %.013, i64 120
  store double %i.f, ptr %i.g, align 8, !tbaa !33
  %i.h = getelementptr inbounds nuw i8, ptr %.013, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.i = getelementptr inbounds nuw i8, ptr %.013, i64 136
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !23   ; 2 uses
  %.not11 = icmp eq ptr %i.j, null
  br i1 %.not11, label %._crit_edge, label %bb.b, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @gravstep(double noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, double noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.hgstruct, align 8           ; 8 uses
  %6 = alloca %struct.hgstruct, align 8           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store ptr %2, ptr %5, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.e = fmul double %0, %0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @walksub(ptr dead_on_unwind nonnull writable sret(%struct.hgstruct) align 8 %6, ptr noundef %1, double noundef %i.e, double noundef 1.000000e+00, ptr noundef nonnull byval(%struct.hgstruct) align 8 %5, i32 noundef 0) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %6, i64 64, i1 false), !tbaa.struct !31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.f = load double, ptr %i.c, align 8, !tbaa !32
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 120
  store double %i.f, ptr %i.g, align 8, !tbaa !33
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #16

; Function Attrs: nounwind uwtable
define dso_local void @hackgrav(ptr noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.hgstruct, align 8           ; 8 uses
  %4 = alloca %struct.hgstruct, align 8           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr %0, ptr %3, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.e = fmul double %1, %1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @walksub(ptr dead_on_unwind nonnull writable sret(%struct.hgstruct) align 8 %4, ptr noundef %2, double noundef %i.e, double noundef 1.000000e+00, ptr noundef nonnull byval(%struct.hgstruct) align 8 %3, i32 noundef 0) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %4, i64 64, i1 false), !tbaa.struct !31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.f = load double, ptr %i.c, align 8, !tbaa !32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  store double %i.f, ptr %i.g, align 8, !tbaa !33
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void
}

declare void @walksub(ptr dead_on_unwind writable sret(%struct.hgstruct) align 8, ptr noundef, double noundef, double noundef, ptr noundef byval(%struct.hgstruct) align 8, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define dso_local void @gravsub(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.hgstruct) align 8 captures(none) initializes((0, 64)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef byval(%struct.hgstruct) align 8 captures(none) %2) local_unnamed_addr #17 {
.preheader32.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load double, ptr %i.c, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = load double, ptr %i.e, align 8, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %3 = fsub double %i.d, %i.f                     ; 3 uses
  %i.i = load <2 x double>, ptr %i.a, align 8, !tbaa !15
  %i.j = load <2 x double>, ptr %i.b, align 8, !tbaa !15
  %i.k = fsub <2 x double> %i.i, %i.j             ; 3 uses
  %i.l = extractelement <2 x double> %i.k, i64 0  ; 2 uses
  %i.m = tail call double @llvm.fmuladd.f64(double %i.l, double %i.l, double 0.000000e+00)
  %i.n = extractelement <2 x double> %i.k, i64 1  ; 2 uses
  %i.o = tail call double @llvm.fmuladd.f64(double %i.n, double %i.n, double %i.m)
  %i.p = tail call double @llvm.fmuladd.f64(double %3, double %3, double %i.o)
  %i.q = fadd double %i.p, f0x3F647AE147AE147C    ; 2 uses
  %i.r = tail call double @sqrt(double noundef %i.q) #20, !tbaa !9
  %i.s = load double, ptr %i.g, align 8, !tbaa !43
  %i.t = fdiv double %i.s, %i.r                   ; 2 uses
  %4 = fdiv double %i.t, %i.q                     ; 2 uses
  %5 = fmul double %4, %3
  %i.u = insertelement <2 x double> poison, double %4, i64 0
  %i.v = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> zeroinitializer
  %i.w = fmul <2 x double> %i.v, %i.k
  %6 = load <4 x double>, ptr %i.h, align 8, !tbaa !15 ; 2 uses
  %7 = insertelement <4 x double> poison, double %i.t, i64 0
  %8 = shufflevector <2 x double> %i.w, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %9 = shufflevector <4 x double> %7, <4 x double> %8, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %10 = insertelement <4 x double> %9, double %5, i64 3 ; 2 uses
  %11 = fsub <4 x double> %6, %10
  %12 = fadd <4 x double> %6, %10
  %13 = shufflevector <4 x double> %11, <4 x double> %12, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  store <4 x double> %13, ptr %i.h, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %2, i64 64, i1 false), !tbaa.struct !31
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local signext range(i16 0, 2) i16 @subdivp(ptr nofree noundef readonly captures(none) %0, double noundef %1, double noundef %2, ptr nofree noundef readonly byval(%struct.hgstruct) align 8 captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = load i16, ptr %0, align 8, !tbaa !35
  %i.b = icmp eq i16 %i.a, 1
  br i1 %i.b, label %bb.b, label %.preheader19

.preheader19:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load double, ptr %i.c, align 8, !tbaa !15
  %i.f = load double, ptr %i.d, align 8, !tbaa !15
  %i.g = fsub double %i.e, %i.f                   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load double, ptr %i.h, align 8, !tbaa !15
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = load double, ptr %i.j, align 8, !tbaa !15
  %i.l = fsub double %i.i, %i.k                   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load double, ptr %i.m, align 8, !tbaa !15
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.p = load double, ptr %i.o, align 8, !tbaa !15
  %i.q = fsub double %i.n, %i.p                   ; 2 uses
  %i.r = tail call double @llvm.fmuladd.f64(double %i.g, double %i.g, double 0.000000e+00)
  %i.s = tail call double @llvm.fmuladd.f64(double %i.l, double %i.l, double %i.r)
  %i.t = tail call double @llvm.fmuladd.f64(double %i.q, double %i.q, double %i.s)
  %i.u = fmul double %2, %i.t
  %i.v = fcmp olt double %i.u, %1
  %i.w = zext i1 %i.v to i16
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.preheader19
  %.018 = phi i16 [ %i.w, %.preheader19 ], [ 0, %bb.a ]
  ret i16 %.018
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @expandbox(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 %2, i32 %3) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load double, ptr %i.a, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = load double, ptr %i.d, align 8, !tbaa !28 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load double, ptr %1, align 8, !tbaa !15  ; 3 uses
  %i.h = fsub double %i.b, %i.g
  %i.i = fdiv double %i.h, %i.e                   ; 2 uses
  %i.j = fcmp oge double %i.i, 0.000000e+00
  %i.k = fcmp olt double %i.i, 1.000000e+00
  %or.cond.i = and i1 %i.j, %i.k
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load <2 x double>, ptr %i.c, align 8, !tbaa !15
  %i.n = load <2 x double>, ptr %i.f, align 8, !tbaa !15 ; 3 uses
  %i.o = fsub <2 x double> %i.m, %i.n
  %i.p = insertelement <2 x double> poison, double %i.e, i64 0
  %i.q = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> zeroinitializer
  %i.r = fdiv <2 x double> %i.o, %i.q             ; 3 uses
  %i.s = extractelement <2 x double> %i.r, i64 0
  %i.t = fcmp oge double %i.s, 0.000000e+00
  %i.u = fcmp olt <2 x double> %i.r, splat (double 1.000000e+00) ; 2 uses
  %i.v = extractelement <2 x i1> %i.u, i64 0
  %or.cond3.i = and i1 %i.t, %i.v
  %i.w = extractelement <2 x double> %i.r, i64 1
  %i.x = fcmp oge double %i.w, 0.000000e+00
  %i.y = extractelement <2 x i1> %i.u, i64 1
  %or.cond5.i = and i1 %i.x, %i.y
  %i.z = select i1 %or.cond5.i, i1 %or.cond3.i, i1 false
  %narrow21.i = select i1 %i.z, i1 %or.cond.i, i1 false
  br i1 %narrow21.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = fcmp olt double %i.e, 1.000000e+03
  br i1 %i.ad, label %.preheader53.preheader.preheader, label %._crit_edge88

.preheader53.preheader.preheader:                 ; preds = %.lr.ph
  %i.ae = extractelement <2 x double> %i.n, i64 1 ; 2 uses
  %i.af = extractelement <2 x double> %i.n, i64 0 ; 2 uses
  br label %.preheader53.preheader

.preheader53.preheader:                           ; preds = %.preheader53.preheader.preheader, %.backedge
  %i.ag = phi double [ %i.bl, %.backedge ], [ %i.e, %.preheader53.preheader.preheader ] ; 6 uses
  %i.ah = phi double [ %.be86, %.backedge ], [ %i.g, %.preheader53.preheader.preheader ] ; 3 uses
  %i.ai = phi double [ %.be85, %.backedge ], [ %i.af, %.preheader53.preheader.preheader ] ; 3 uses
  %i.aj = phi double [ %.be, %.backedge ], [ %i.ae, %.preheader53.preheader.preheader ] ; 3 uses
  %i.ak = phi double [ %i.ay, %.backedge ], [ %i.g, %.preheader53.preheader.preheader ]
  %i.al = phi double [ %i.be, %.backedge ], [ %i.af, %.preheader53.preheader.preheader ]
  %i.am = phi double [ %i.bj, %.backedge ], [ %i.ae, %.preheader53.preheader.preheader ]
  %i.an = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.ao = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ap = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.aq = insertelement <2 x double> %i.ap, double %i.ai, i64 1
  %i.ar = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ao, <2 x double> splat (double 5.000000e-01), <2 x double> %i.aq) ; 2 uses
  %i.as = tail call double @llvm.fmuladd.f64(double %i.ag, double 5.000000e-01, double %i.aj) ; 2 uses
  %i.at = load double, ptr %i.a, align 8, !tbaa !15
  %i.au = extractelement <2 x double> %i.ar, i64 0 ; 2 uses
  %i.av = fcmp olt double %i.at, %i.au
  br i1 %i.av, label %bb.b, label %.preheader.1

._crit_edge88:                                    ; preds = %.backedge, %.lr.ph
  %i.aw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 999) ; 0 uses
  tail call void @abort() #22
  unreachable

bb.b:                                             ; preds = %.preheader53.preheader
  %i.ax = fsub double %i.ah, %i.ag                ; 3 uses
  store double %i.ax, ptr %1, align 8, !tbaa !15
  br label %.preheader.1

.preheader.1:                                     ; preds = %.preheader53.preheader, %bb.b
  %i.ay = phi double [ %i.ak, %.preheader53.preheader ], [ %i.ax, %bb.b ] ; 4 uses
  %i.az = phi double [ %i.ah, %.preheader53.preheader ], [ %i.ax, %bb.b ]
  %i.ba = load double, ptr %i.ab, align 8, !tbaa !15
  %i.bb = extractelement <2 x double> %i.ar, i64 1 ; 2 uses
  %i.bc = fcmp olt double %i.ba, %i.bb
  br i1 %i.bc, label %bb.c, label %.preheader.2

bb.c:                                             ; preds = %.preheader.1
  %i.bd = fsub double %i.ai, %i.ag                ; 3 uses
  store double %i.bd, ptr %i.f, align 8, !tbaa !15
  br label %.preheader.2

.preheader.2:                                     ; preds = %bb.c, %.preheader.1
  %i.be = phi double [ %i.bd, %bb.c ], [ %i.al, %.preheader.1 ] ; 4 uses
  %i.bf = phi double [ %i.bd, %bb.c ], [ %i.ai, %.preheader.1 ]
  %i.bg = load double, ptr %i.ac, align 8, !tbaa !15
  %i.bh = fcmp olt double %i.bg, %i.as
  br i1 %i.bh, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.preheader.2
  %i.bi = fsub double %i.aj, %i.ag                ; 3 uses
  store double %i.bi, ptr %i.l, align 8, !tbaa !15
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.preheader.2
  %i.bj = phi double [ %i.bi, %bb.d ], [ %i.am, %.preheader.2 ] ; 4 uses
  %i.bk = phi double [ %i.bi, %bb.d ], [ %i.aj, %.preheader.2 ]
  %i.bl = fmul nnan double %i.ag, 2.000000e+00    ; 8 uses
  store double %i.bl, ptr %i.d, align 8, !tbaa !28
  %i.bm = load ptr, ptr %i.aa, align 8, !tbaa !14
  %.not38 = icmp eq ptr %i.bm, null
  br i1 %.not38, label %.backedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bn = load ptr, ptr @cp_free_list, align 8, !tbaa !36 ; 3 uses
  %.not.i = icmp eq ptr %i.bn, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 112
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !40
  store ptr %i.bp, ptr @cp_free_list, align 8, !tbaa !36
  br label %cell_alloc.exit

bb.h:                                             ; preds = %bb.f
  %i.bq = tail call noalias dereferenceable_or_null(120) ptr @malloc(i64 noundef 120) #21
  br label %cell_alloc.exit

cell_alloc.exit:                                  ; preds = %bb.g, %bb.h
  %.07.i = phi ptr [ %i.bn, %bb.g ], [ %i.bq, %bb.h ] ; 4 uses
  store i16 2, ptr %.07.i, align 8, !tbaa !41
  %i.br = getelementptr inbounds nuw i8, ptr %.07.i, i64 40
  store i32 0, ptr %i.br, align 8, !tbaa !42
  %i.bs = getelementptr inbounds nuw i8, ptr %.07.i, i64 48 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bs, i8 0, i64 64, i1 false), !tbaa !36
  %i.bt = fsub double %i.au, %i.ay
  %i.bu = fdiv double %i.bt, %i.bl                ; 3 uses
  %i.bv = fcmp ult double %i.bu, 0.000000e+00
  %i.bw = fcmp uge double %i.bu, 1.000000e+00
  %or.cond.i40.not = or i1 %i.bv, %i.bw           ; 2 uses
  br i1 %or.cond.i40.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %cell_alloc.exit
  %i.bx = fmul nnan double %i.bu, f0x41D0000000000000
  %i.by = tail call double @llvm.floor.f64(double %i.bx)
  %i.bz = fptosi double %i.by to i32
  %i.ca = lshr i32 %i.bz, 27
  %i.cb = and i32 %i.ca, 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %cell_alloc.exit
  %.sroa.0.0.i = phi i32 [ %i.cb, %bb.i ], [ 0, %cell_alloc.exit ]
  %i.cc = fsub double %i.bb, %i.be
  %i.cd = fdiv double %i.cc, %i.bl                ; 3 uses
  %i.ce = fcmp oge double %i.cd, 0.000000e+00
  %i.cf = fcmp olt double %i.cd, 1.000000e+00
  %or.cond3.i41 = and i1 %i.ce, %i.cf
  br i1 %or.cond3.i41, label %bb.k, label %intcoord1.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.cg = fsub double %i.as, %i.bj
  %i.ch = fdiv double %i.cg, %i.bl                ; 3 uses
  %i.ci = fcmp ult double %i.ch, 0.000000e+00
end_hunk_0
