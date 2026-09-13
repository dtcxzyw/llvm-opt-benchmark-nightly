Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/trans_bounds?download=true
inline.NumInlined: 330
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZL24target_crs_lon_lat_orderP6pj_ctxP8PJconsts12PJ_DIRECTION:bb.a
  call void @llvm.assume(i1 %i.dh)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit91
  %i.di = load i64, ptr %i.cs, align 8, !tbaa !41
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %.pre102, i64 noundef %i.dj) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i93, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br i1 %.0.i90, label %.critedge, label %bb.y

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71
  call void (ptr, ptr, ...) @_Z22proj_context_log_debugP6pj_ctxPKcz(ptr noundef %0, ptr noundef nonnull @.str.10)
  br label %.critedge

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  %.pn43.pn = phi { ptr, i32 } [ %.pn43, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ]
  resume { ptr, i32 } %.pn43.pn

bb.aa:                                            ; preds = %_ZL14get_output_crsP6pj_ctxP8PJconsts12PJ_DIRECTION.exit.thread, %_ZL14get_output_crsP6pj_ctxP8PJconsts12PJ_DIRECTION.exit
  %.0.i101 = phi ptr [ %i.k, %_ZL14get_output_crsP6pj_ctxP8PJconsts12PJ_DIRECTION.exit.thread ], [ %i.i, %_ZL14get_output_crsP6pj_ctxP8PJconsts12PJ_DIRECTION.exit ] ; 4 uses
  %i.dk = tail call i32 @proj_get_type(ptr noundef nonnull %.0.i101)
  %i.dl = icmp eq i32 %i.dk, 16
  br i1 %i.dl, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.dm = tail call ptr @proj_crs_get_sub_crs(ptr noundef %0, ptr noundef nonnull %.0.i101, i32 noundef 0) ; 3 uses
  %.not.not = icmp eq ptr %i.dm, null
  br i1 %.not.not, label %.critedge, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dn = tail call ptr @proj_crs_get_coordinate_system(ptr noundef %0, ptr noundef nonnull %i.dm)
  %i.do = tail call ptr @proj_destroy(ptr noundef nonnull %i.dm) ; 0 uses
  br label %bb.ae

bb.ad:                                            ; preds = %bb.aa
  %i.dp = tail call ptr @proj_crs_get_coordinate_system(ptr noundef %0, ptr noundef nonnull %.0.i101)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %.1 = phi ptr [ %i.dn, %bb.ac ], [ %i.dp, %bb.ad ] ; 3 uses
  %i.dq = tail call ptr @proj_destroy(ptr noundef nonnull %.0.i101) ; 0 uses
  %i.dr = icmp eq ptr %.1, null
  br i1 %i.dr, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  tail call void (ptr, ptr, ...) @_Z22proj_context_log_debugP6pj_ctxPKcz(ptr noundef %0, ptr noundef nonnull @.str.11)
  br label %.critedge

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #16
  store ptr null, ptr %i.g, align 8, !tbaa !43
  %i.ds = call i32 @proj_cs_get_axis_info(ptr noundef %0, ptr noundef nonnull %.1, i32 noundef 0, ptr noundef null, ptr noundef nonnull %i.g, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
  %i.dt = call ptr @proj_destroy(ptr noundef nonnull %.1) ; 0 uses
  %.not = icmp eq i32 %i.ds, 1
  br i1 %.not, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.du = load ptr, ptr %i.g, align 8, !tbaa !43  ; 2 uses
  %i.dv = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.du, ptr noundef nonnull dereferenceable(4) @.str.12) #17
  %i.dw = icmp eq i32 %i.dv, 0
  br i1 %i.dw, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dx = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.du, ptr noundef nonnull dereferenceable(4) @.str.13) #17
  %i.dy = icmp eq i32 %i.dx, 0
  %i.dz = zext i1 %i.dy to i32
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai, %bb.ag
  %.239 = phi i32 [ -1, %bb.ag ], [ 1, %bb.ah ], [ %i.dz, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #16
  br label %.critedge

.critedge:                                        ; preds = %bb.af, %bb.aj, %bb.ab, %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94
  %.4 = phi i32 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94 ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83 ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53 ], [ -1, %bb.y ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ], [ -1, %bb.af ], [ %.239, %bb.aj ], [ -1, %bb.ab ]
  ret i32 %.4
}

declare noundef i32 @_Z21pj_opposite_direction12PJ_DIRECTION(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZL19contains_north_poleP8PJconsts12PJ_DIRECTIONddddb(ptr noundef nonnull %0, i32 noundef range(i32 1, 0) %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, i1 noundef zeroext %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 6 uses
  %i.b = alloca double, align 8                   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store double 9.000000e+01, ptr %i.a, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !14
  br i1 %6, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !14
  store double 9.000000e+01, ptr %i.b, align 8, !tbaa !14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = tail call noundef i32 @_Z21pj_opposite_direction12PJ_DIRECTION(i32 noundef %1)
  %i.d = call i64 @proj_trans_generic(ptr noundef nonnull %0, i32 noundef %i.c, ptr noundef nonnull %i.b, i64 noundef 8, i64 noundef 1, ptr noundef nonnull %i.a, i64 noundef 8, i64 noundef 1, ptr noundef null, i64 noundef 8, i64 noundef 0, ptr noundef null, i64 noundef 8, i64 noundef 0) ; 0 uses
  %i.e = load double, ptr %i.b, align 8, !tbaa !14 ; 2 uses
  %i.f = fcmp olt double %2, %i.e
  %i.g = fcmp olt double %i.e, %4
  %or.cond = and i1 %i.f, %i.g
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = load double, ptr %i.a, align 8, !tbaa !14 ; 2 uses
  %i.i = fcmp ogt double %5, %i.h
  %i.j = fcmp ogt double %i.h, %3
  %or.cond9 = and i1 %i.i, %i.j
  br i1 %or.cond9, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0 = phi i1 [ false, %bb.e ], [ true, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZL19contains_south_poleP8PJconsts12PJ_DIRECTIONddddb(ptr noundef nonnull %0, i32 noundef range(i32 1, 0) %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, i1 noundef zeroext %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 6 uses
  %i.b = alloca double, align 8                   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store double -9.000000e+01, ptr %i.a, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !14
  br i1 %6, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !14
  store double -9.000000e+01, ptr %i.b, align 8, !tbaa !14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = tail call noundef i32 @_Z21pj_opposite_direction12PJ_DIRECTION(i32 noundef %1)
  %i.d = call i64 @proj_trans_generic(ptr noundef nonnull %0, i32 noundef %i.c, ptr noundef nonnull %i.b, i64 noundef 8, i64 noundef 1, ptr noundef nonnull %i.a, i64 noundef 8, i64 noundef 1, ptr noundef null, i64 noundef 8, i64 noundef 0, ptr noundef null, i64 noundef 8, i64 noundef 0) ; 0 uses
  %i.e = load double, ptr %i.b, align 8, !tbaa !14 ; 2 uses
  %i.f = fcmp olt double %2, %i.e
  %i.g = fcmp olt double %i.e, %4
  %or.cond = and i1 %i.f, %i.g
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = load double, ptr %i.a, align 8, !tbaa !14 ; 2 uses
  %i.i = fcmp ogt double %5, %i.h
  %i.j = fcmp ogt double %i.h, %3
  %or.cond9 = and i1 %i.i, %i.j
  br i1 %or.cond9, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0 = phi i1 [ false, %bb.e ], [ true, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i1 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

declare i64 @proj_trans_generic(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef double @_ZL16antimeridian_minPKdi(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 4, 120013) %1) unnamed_addr #8 {
bb.a:
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.j
  switch i32 %.244, label %bb.l [
    i32 2, label %bb.m
    i32 4, label %bb.k
  ]

bb.c:                                             ; preds = %bb.a, %bb.j
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.j ] ; 6 uses
  %.04170 = phi i1 [ false, %bb.a ], [ %.2, %bb.j ] ; 2 uses
  %.04269 = phi i32 [ 0, %bb.a ], [ %.244, %bb.j ] ; 7 uses
  %.04568 = phi double [ +inf, %bb.a ], [ %.247, %bb.j ] ; 4 uses
  %.04867 = phi double [ +inf, %bb.a ], [ %.5, %bb.j ] ; 5 uses
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.b = load double, ptr %i.a, align 8, !tbaa !14 ; 7 uses
  %i.c = fcmp oeq double %i.b, +inf
  br i1 %i.c, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = icmp eq i64 %indvars.iv, 0
  %i.e = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select.i = select i1 %i.d, i32 %1, i32 %i.e
  %.113.i = add nsw i32 %spec.select.i, -1        ; 3 uses
  %2 = sext i32 %.113.i to i64
  %i.f = getelementptr inbounds [8 x i8], ptr %0, i64 %2
  %i.g = load double, ptr %i.f, align 8, !tbaa !14 ; 2 uses
  %i.h = fcmp oeq double %i.g, +inf
  %3 = zext i32 %.113.i to i64
  %i.i = icmp ne i64 %indvars.iv, %3
  %i.j = and i1 %i.i, %i.h
  br i1 %i.j, label %.lr.ph.i, label %_ZL19find_previous_indexiPKdi.exit

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.114.i = phi i32 [ %.1.i, %.lr.ph.i ], [ %.113.i, %bb.d ] ; 2 uses
  %i.k = icmp eq i32 %.114.i, 0
  %spec.select12.i = select i1 %i.k, i32 %1, i32 %.114.i
  %.1.i = add nsw i32 %spec.select12.i, -1        ; 3 uses
  %i.l = sext i32 %.1.i to i64
  %i.m = getelementptr inbounds [8 x i8], ptr %0, i64 %i.l
  %i.n = load double, ptr %i.m, align 8, !tbaa !14 ; 2 uses
  %i.o = fcmp oeq double %i.n, +inf
  %i.p = zext i32 %.1.i to i64
  %i.q = icmp ne i64 %indvars.iv, %i.p
  %i.r = and i1 %i.o, %i.q
  br i1 %i.r, label %.lr.ph.i, label %_ZL19find_previous_indexiPKdi.exit, !llvm.loop !2

_ZL19find_previous_indexiPKdi.exit:               ; preds = %.lr.ph.i, %bb.d
  %i.s = phi double [ %i.g, %bb.d ], [ %i.n, %.lr.ph.i ]
  %i.t = fsub double %i.s, %i.b                   ; 3 uses
  %i.u = fcmp oge double %i.t, 2.000000e+02
  %i.v = fcmp une double %i.t, +inf               ; 2 uses
  %or.cond = and i1 %i.u, %i.v
  br i1 %or.cond, label %.thread63, label %bb.e

.thread63:                                        ; preds = %_ZL19find_previous_indexiPKdi.exit
  %i.w = icmp eq i32 %.04269, 0
  %.149 = select i1 %i.w, double %.04568, double %.04867
  %i.x = add nsw i32 %.04269, 1
  br label %bb.i

bb.e:                                             ; preds = %_ZL19find_previous_indexiPKdi.exit
  %i.y = fcmp ole double %i.t, -2.000000e+02
  %or.cond3 = and i1 %i.y, %i.v
  br i1 %or.cond3, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.e
  %i.z = icmp eq i32 %.04269, 0
  %.250 = select i1 %i.z, double %i.b, double %.04867
  %i.aa = add nsw i32 %.04269, 1
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  br i1 %.04170, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.thread, %bb.f
  %.14360 = phi i32 [ %i.aa, %.thread ], [ %.04269, %bb.f ] ; 2 uses
  %.358 = phi double [ %.250, %.thread ], [ %.04867, %bb.f ] ; 2 uses
  %i.ab = fcmp olt double %i.b, %.358
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  br label %bb.i

bb.i:                                             ; preds = %.thread63, %bb.h, %bb.g, %bb.f
  %.161 = phi i1 [ true, %bb.h ], [ true, %bb.g ], [ false, %bb.f ], [ false, %.thread63 ]
  %.14359 = phi i32 [ %.14360, %bb.h ], [ %.14360, %bb.g ], [ %.04269, %bb.f ], [ %i.x, %.thread63 ]
  %.4 = phi double [ %i.b, %bb.h ], [ %.358, %bb.g ], [ %.04867, %bb.f ], [ %.149, %.thread63 ]
  %i.ac = fcmp olt double %i.b, %.04568
  %.146 = select i1 %i.ac, double %i.b, double %.04568
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.i
  %.5 = phi double [ %.04867, %bb.c ], [ %.4, %bb.i ] ; 2 uses
  %.247 = phi double [ %.04568, %bb.c ], [ %.146, %bb.i ] ; 2 uses
  %.244 = phi i32 [ %.04269, %bb.c ], [ %.14359, %bb.i ] ; 2 uses
  %.2 = phi i1 [ %.04170, %bb.c ], [ %.161, %bb.i ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !3

bb.k:                                             ; preds = %bb.b
  br label %bb.m

bb.l:                                             ; preds = %bb.b
  br label %bb.m

bb.m:                                             ; preds = %bb.b, %bb.l, %bb.k
  %.051 = phi double [ %.247, %bb.l ], [ -1.800000e+02, %bb.k ], [ %.5, %bb.b ]
  ret double %.051
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef double @_ZL16antimeridian_maxPKdi(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 4, 120013) %1) unnamed_addr #8 {
bb.a:
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.j
  switch i32 %.2, label %bb.l [
    i32 2, label %bb.m
    i32 4, label %bb.k
  ]

bb.c:                                             ; preds = %bb.a, %bb.j
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.j ] ; 6 uses
  %.05182 = phi i32 [ 0, %bb.a ], [ %.2, %bb.j ]  ; 7 uses
  %.05281 = phi i1 [ false, %bb.a ], [ %.254, %bb.j ] ; 2 uses
  %.05580 = phi double [ -inf, %bb.a ], [ %.257, %bb.j ] ; 5 uses
  %.05879 = phi double [ -inf, %bb.a ], [ %.5, %bb.j ] ; 5 uses
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.b = load double, ptr %i.a, align 8, !tbaa !14 ; 7 uses
  %i.c = fcmp oeq double %i.b, +inf
  br i1 %i.c, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = icmp eq i64 %indvars.iv, 0
  %i.e = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select.i = select i1 %i.d, i32 %1, i32 %i.e
  %.113.i = add nsw i32 %spec.select.i, -1        ; 3 uses
  %2 = sext i32 %.113.i to i64
  %i.f = getelementptr inbounds [8 x i8], ptr %0, i64 %2
  %i.g = load double, ptr %i.f, align 8, !tbaa !14 ; 2 uses
  %i.h = fcmp oeq double %i.g, +inf
  %3 = zext i32 %.113.i to i64
  %i.i = icmp ne i64 %indvars.iv, %3
  %i.j = and i1 %i.i, %i.h
  br i1 %i.j, label %.lr.ph.i, label %_ZL19find_previous_indexiPKdi.exit

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.114.i = phi i32 [ %.1.i, %.lr.ph.i ], [ %.113.i, %bb.d ] ; 2 uses
  %i.k = icmp eq i32 %.114.i, 0
  %spec.select12.i = select i1 %i.k, i32 %1, i32 %.114.i
  %.1.i = add nsw i32 %spec.select12.i, -1        ; 3 uses
  %i.l = sext i32 %.1.i to i64
  %i.m = getelementptr inbounds [8 x i8], ptr %0, i64 %i.l
  %i.n = load double, ptr %i.m, align 8, !tbaa !14 ; 2 uses
  %i.o = fcmp oeq double %i.n, +inf
  %i.p = zext i32 %.1.i to i64
  %i.q = icmp ne i64 %indvars.iv, %i.p
  %i.r = and i1 %i.o, %i.q
  br i1 %i.r, label %.lr.ph.i, label %_ZL19find_previous_indexiPKdi.exit, !llvm.loop !2

_ZL19find_previous_indexiPKdi.exit:               ; preds = %.lr.ph.i, %bb.d
  %i.s = phi double [ %i.g, %bb.d ], [ %i.n, %.lr.ph.i ]
  %i.t = fsub double %i.s, %i.b                   ; 3 uses
  %i.u = fcmp oge double %i.t, 2.000000e+02
  %i.v = fcmp une double %i.t, +inf               ; 2 uses
  %or.cond = and i1 %i.u, %i.v
  br i1 %or.cond, label %.thread, label %bb.e

.thread:                                          ; preds = %_ZL19find_previous_indexiPKdi.exit
  %i.w = icmp eq i32 %.05182, 0
  %.159 = select i1 %i.w, double %i.b, double %.05879
  %i.x = add nsw i32 %.05182, 1
  br label %bb.g

bb.e:                                             ; preds = %_ZL19find_previous_indexiPKdi.exit
  %i.y = fcmp ole double %i.t, -2.000000e+02
  %or.cond3 = and i1 %i.y, %i.v
  br i1 %or.cond3, label %.thread75, label %bb.f

.thread75:                                        ; preds = %bb.e
  %i.z = icmp eq i32 %.05182, 0
  %.260 = select i1 %i.z, double %.05580, double %.05879
  %i.aa = add nsw i32 %.05182, 1
  br label %bb.i

bb.f:                                             ; preds = %bb.e
  br i1 %.05281, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.thread, %bb.f
  %.174 = phi i32 [ %i.x, %.thread ], [ %.05182, %bb.f ] ; 2 uses
  %.370 = phi double [ %.159, %.thread ], [ %.05879, %bb.f ] ; 3 uses
  %i.ab = fcmp ogt double %i.b, %.370
  %i.ac = fcmp oeq double %.370, +inf
  %or.cond5 = or i1 %i.ab, %i.ac
  br i1 %or.cond5, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  br label %bb.i

bb.i:                                             ; preds = %.thread75, %bb.g, %bb.h, %bb.f
  %.173 = phi i32 [ %.174, %bb.h ], [ %.05182, %bb.f ], [ %.174, %bb.g ], [ %i.aa, %.thread75 ]
  %.15371 = phi i1 [ true, %bb.h ], [ false, %bb.f ], [ true, %bb.g ], [ false, %.thread75 ]
  %.4 = phi double [ %i.b, %bb.h ], [ %.05879, %bb.f ], [ %.370, %bb.g ], [ %.260, %.thread75 ]
  %i.ad = fcmp ogt double %i.b, %.05580
  %i.ae = fcmp oeq double %.05580, +inf
  %or.cond7 = or i1 %i.ae, %i.ad
  %.156 = select i1 %or.cond7, double %i.b, double %.05580
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.i
  %.5 = phi double [ %.05879, %bb.c ], [ %.4, %bb.i ] ; 2 uses
  %.257 = phi double [ %.05580, %bb.c ], [ %.156, %bb.i ] ; 2 uses
  %.254 = phi i1 [ %.05281, %bb.c ], [ %.15371, %bb.i ]
  %.2 = phi i32 [ %.05182, %bb.c ], [ %.173, %bb.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !4

bb.k:                                             ; preds = %bb.b
  br label %bb.m

bb.l:                                             ; preds = %bb.b
  br label %bb.m

bb.m:                                             ; preds = %bb.b, %bb.l, %bb.k
  %.061 = phi double [ %.257, %bb.l ], [ 1.800000e+02, %bb.k ], [ %.5, %bb.b ]
  ret double %.061
}

; Function Attrs: mustprogress uwtable
define range(i32 0, 2) i32 @proj_trans_bounds_3D(ptr noundef %0, ptr noundef %1, i32 noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, double noundef %7, double noundef %8, ptr nofree noundef captures(none) initializes((0, 8)) %9, ptr nofree noundef captures(none) initializes((0, 8)) %10, ptr nofree noundef captures(none) initializes((0, 8)) %11, ptr nofree noundef captures(none) initializes((0, 8)) %12, ptr nofree noundef captures(none) initializes((0, 8)) %13, ptr nofree noundef captures(none) initializes((0, 8)) %14, i32 noundef %15) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %16 = alloca %struct.PJ_PROJ_INFO, align 8      ; 5 uses
  store double +inf, ptr %9, align 8, !tbaa !14
  store double +inf, ptr %10, align 8, !tbaa !14
  store double +inf, ptr %11, align 8, !tbaa !14
  store double +inf, ptr %12, align 8, !tbaa !14
  store double +inf, ptr %13, align 8, !tbaa !14
  store double +inf, ptr %14, align 8, !tbaa !14
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef null, ptr noundef nonnull @.str)
  %i.b = tail call i32 @proj_errno_set(ptr noundef null, i32 noundef 1027) ; 0 uses
  br label %bb.cq

bb.c:                                             ; preds = %bb.a
  %or.cond = icmp ugt i32 %15, 10000
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef nonnull %1, ptr noundef nonnull @.str.1)
  %i.c = tail call i32 @proj_errno_set(ptr noundef nonnull %1, i32 noundef 1027) ; 0 uses
  br label %bb.cq

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #16
  call void @proj_pj_info(ptr dead_on_unwind nonnull writable sret(%struct.PJ_PROJ_INFO) align 8 %16, ptr noundef nonnull %1)
  %i.d = load ptr, ptr %16, align 8, !tbaa !18    ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef nonnull %1, ptr noundef nonnull @.str.2)
  %i.f = call i32 @proj_errno_set(ptr noundef nonnull %1, i32 noundef 1027) ; 0 uses
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit667

bb.g:                                             ; preds = %bb.e
  %i.g = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(5) @.str.3) #17
  %i.h = icmp eq i32 %i.g, 0
  %i.i = icmp eq i32 %2, 0
  %or.cond4 = or i1 %i.i, %i.h
  br i1 %or.cond4, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store double %3, ptr %9, align 8, !tbaa !14
  store double %6, ptr %12, align 8, !tbaa !14
  store double %4, ptr %10, align 8, !tbaa !14
  store double %7, ptr %13, align 8, !tbaa !14
  store double %5, ptr %11, align 8, !tbaa !14
  store double %8, ptr %14, align 8, !tbaa !14
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit667

bb.i:                                             ; preds = %bb.g
  %i.j = call i32 @proj_degree_output(ptr noundef nonnull %1, i32 noundef %2)
  %i.k = icmp ne i32 %i.j, 0                      ; 4 uses
  %i.l = call i32 @proj_degree_input(ptr noundef nonnull %1, i32 noundef %2)
  %.not470 = icmp ne i32 %i.l, 0                  ; 4 uses
  %i.m = icmp samesign ult i32 %15, 2
  %or.cond6 = and i1 %i.m, %i.k
  br i1 %or.cond6, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef nonnull %1, ptr noundef nonnull @.str.4)
  %i.n = call i32 @proj_errno_set(ptr noundef nonnull %1, i32 noundef 1027) ; 0 uses
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit667

bb.k:                                             ; preds = %bb.i
  %i.o = add nuw nsw i32 %15, 1                   ; 10 uses
  %i.p = icmp eq i32 %2, 1
  br i1 %i.p, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.q = call ptr @proj_get_source_crs(ptr noundef %0, ptr noundef nonnull %1)
  br label %_ZL13get_input_crsP6pj_ctxP8PJconsts12PJ_DIRECTION.exit

bb.m:                                             ; preds = %bb.k
  %i.r = call ptr @proj_get_target_crs(ptr noundef %0, ptr noundef nonnull %1)
  br label %_ZL13get_input_crsP6pj_ctxP8PJconsts12PJ_DIRECTION.exit

_ZL13get_input_crsP6pj_ctxP8PJconsts12PJ_DIRECTION.exit: ; preds = %bb.l, %bb.m
  %.0.i = phi ptr [ %i.q, %bb.l ], [ %i.r, %bb.m ] ; 3 uses
  %.not471 = icmp eq ptr %.0.i, null
  br i1 %.not471, label %.thread, label %bb.n

.thread:                                          ; preds = %_ZL13get_input_crsP6pj_ctxP8PJconsts12PJ_DIRECTION.exit
  %i.s = call ptr @proj_destroy(ptr noundef null) ; 0 uses
  %i.t = shl nuw nsw i32 %i.o, 2
  br label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i

bb.n:                                             ; preds = %_ZL13get_input_crsP6pj_ctxP8PJconsts12PJ_DIRECTION.exit
  %i.u = call i32 @proj_get_type(ptr noundef nonnull %.0.i)
  %.fr = freeze i32 %i.u
  %i.v = icmp eq i32 %.fr, 10                     ; 2 uses
  %i.w = call ptr @proj_destroy(ptr noundef nonnull %.0.i) ; 0 uses
  %i.x = mul nuw nsw i32 %i.o, 12
  %i.y = shl nuw nsw i32 %i.o, 2
  %spec.select = select i1 %i.v, i32 %i.x, i32 %i.y
  br label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.n, %.thread
  %i.z = phi i1 [ false, %.thread ], [ %i.v, %bb.n ]
  %i.aa = phi i32 [ %i.t, %.thread ], [ %spec.select, %bb.n ] ; 5 uses
  %i.ab = zext nneg i32 %i.aa to i64              ; 15 uses
  %i.ac = shl nuw nsw i64 %i.ab, 3                ; 6 uses
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #18
          to label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i682 unwind label %bb.o ; 48 uses

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i682: ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i
  store double 0.000000e+00, ptr %i.ad, align 8, !tbaa !14
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  %.idx.i.i.i.i.i31.i = add nsw i64 %i.ac, -8     ; 3 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.ae, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !14
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ab ; 11 uses
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #18
          to label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i699 unwind label %bb.o ; 47 uses

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i699: ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i682
  store double 0.000000e+00, ptr %i.ag, align 8, !tbaa !14
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  call void @llvm.memset.p0.i64(ptr align 8 %i.ah, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !14
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ab ; 10 uses
  %i.aj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #18
          to label %bb.u unwind label %bb.o       ; 63 uses

bb.o:                                             ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i699, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i682, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i
  %.sroa.0845.0 = phi ptr [ %i.ad, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i682 ], [ %i.ad, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i699 ], [ null, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i ] ; 3 uses
  %.sroa.43.0 = phi ptr [ %i.af, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i682 ], [ %i.af, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i699 ], [ null, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i ] ; 3 uses
  %.sroa.0807.0 = phi ptr [ null, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i682 ], [ %i.ag, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i699 ], [ null, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i ] ; 3 uses
  %.sroa.45.0 = phi ptr [ null, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i682 ], [ %i.ai, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i699 ], [ null, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  %i.ak = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@proj_trans_bounds_3D:bb.a
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZL10simple_minPKdi.exit550.unr-lcssa, label %.new, !llvm.loop !0

_ZL10simple_minPKdi.exit550.unr-lcssa:            ; preds = %.new
  br i1 %lcmp.mod.not, label %_ZL10simple_minPKdi.exit550, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZL10simple_minPKdi.exit550.unr-lcssa, %bb.bb
  %indvars.iv.i545.epil.init = phi i64 [ 1, %bb.bb ], [ %indvars.iv.next.i548.3, %_ZL10simple_minPKdi.exit550.unr-lcssa ]
  %.0911.i546.epil.init = phi double [ %i.xj, %bb.bb ], [ %.1.i547.3, %_ZL10simple_minPKdi.exit550.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1639)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bc, %.epil.preheader
  %indvars.iv.i545.epil = phi i64 [ %indvars.iv.i545.epil.init, %.epil.preheader ], [ %indvars.iv.next.i548.epil, %bb.bc ] ; 2 uses
  %.0911.i546.epil = phi double [ %.0911.i546.epil.init, %.epil.preheader ], [ %.1.i547.epil, %bb.bc ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.bc ]
  %i.xz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11001, i64 %indvars.iv.i545.epil
  %i.ya = load double, ptr %i.xz, align 8, !tbaa !14 ; 2 uses
  %i.yb = fcmp olt double %i.ya, %.0911.i546.epil
  %.1.i547.epil = select i1 %i.yb, double %i.ya, double %.0911.i546.epil ; 2 uses
  %indvars.iv.next.i548.epil = add nuw nsw i64 %indvars.iv.i545.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZL10simple_minPKdi.exit550, label %bb.bc, !llvm.loop !73

_ZL10simple_minPKdi.exit550:                      ; preds = %bb.bc, %_ZL10simple_minPKdi.exit550.unr-lcssa
  %.1.i547.lcssa = phi double [ %.1.i547.3, %_ZL10simple_minPKdi.exit550.unr-lcssa ], [ %.1.i547.epil, %bb.bc ] ; 2 uses
  %i.yc = load double, ptr %9, align 8, !tbaa !14 ; 2 uses
  %i.yd = fcmp olt double %.1.i547.lcssa, %i.yc
  %.sroa.speculated751 = select i1 %i.yd, double %.1.i547.lcssa, double %i.yc
  store double %.sroa.speculated751, ptr %9, align 8, !tbaa !14
  %i.ye = load double, ptr %.sroa.0845.11001, align 8, !tbaa !14 ; 2 uses
  br i1 %i.ec, label %.epil.preheader1640, label %_ZL10simple_minPKdi.exit550.new

_ZL10simple_minPKdi.exit550.new:                  ; preds = %_ZL10simple_minPKdi.exit550, %_ZL10simple_minPKdi.exit550.new
  %indvars.iv.i553 = phi i64 [ %indvars.iv.next.i558.1, %_ZL10simple_minPKdi.exit550.new ], [ 1, %_ZL10simple_minPKdi.exit550 ] ; 3 uses
  %.01316.i554 = phi double [ %.1.i557.1, %_ZL10simple_minPKdi.exit550.new ], [ %i.ye, %_ZL10simple_minPKdi.exit550 ] ; 3 uses
  %niter1647 = phi i64 [ %niter1647.next.1, %_ZL10simple_minPKdi.exit550.new ], [ 0, %_ZL10simple_minPKdi.exit550 ]
  %i.yf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11001, i64 %indvars.iv.i553
  %i.yg = load double, ptr %i.yf, align 8, !tbaa !14 ; 3 uses
  %i.yh = fcmp ogt double %i.yg, %.01316.i554
  %i.yi = fcmp oeq double %.01316.i554, +inf
  %or.cond.i555 = or i1 %i.yi, %i.yh
  %i.yj = fcmp une double %i.yg, +inf
  %or.cond15.i556 = and i1 %i.yj, %or.cond.i555
  %.1.i557 = select i1 %or.cond15.i556, double %i.yg, double %.01316.i554 ; 3 uses
  %i.yk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11001, i64 %indvars.iv.i553
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yk, i64 8
  %i.ym = load double, ptr %i.yl, align 8, !tbaa !14 ; 3 uses
  %i.yn = fcmp ogt double %i.ym, %.1.i557
  %i.yo = fcmp oeq double %.1.i557, +inf
  %or.cond.i555.1 = or i1 %i.yo, %i.yn
  %i.yp = fcmp une double %i.ym, +inf
  %or.cond15.i556.1 = and i1 %i.yp, %or.cond.i555.1
  %.1.i557.1 = select i1 %or.cond15.i556.1, double %i.ym, double %.1.i557 ; 3 uses
  %indvars.iv.next.i558.1 = add nuw nsw i64 %indvars.iv.i553, 2 ; 2 uses
  %niter1647.next.1 = add nuw i64 %niter1647, 2   ; 2 uses
  %niter1647.ncmp.1 = icmp eq i64 %niter1647.next.1, %unroll_iter1646
  br i1 %niter1647.ncmp.1, label %_ZL10simple_maxPKdi.exit560.unr-lcssa, label %_ZL10simple_minPKdi.exit550.new, !llvm.loop !1

_ZL10simple_maxPKdi.exit560.unr-lcssa:            ; preds = %_ZL10simple_minPKdi.exit550.new
  br i1 %lcmp.mod1643.not, label %_ZL10simple_maxPKdi.exit560, label %.epil.preheader1640

.epil.preheader1640:                              ; preds = %_ZL10simple_maxPKdi.exit560.unr-lcssa, %_ZL10simple_minPKdi.exit550
  %indvars.iv.i553.epil.init = phi i64 [ 1, %_ZL10simple_minPKdi.exit550 ], [ %indvars.iv.next.i558.1, %_ZL10simple_maxPKdi.exit560.unr-lcssa ]
  %.01316.i554.epil.init = phi double [ %i.ye, %_ZL10simple_minPKdi.exit550 ], [ %.1.i557.1, %_ZL10simple_maxPKdi.exit560.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod1645)
  %i.yq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.11001, i64 %indvars.iv.i553.epil.init
  %i.yr = load double, ptr %i.yq, align 8, !tbaa !14 ; 3 uses
  %i.ys = fcmp ogt double %i.yr, %.01316.i554.epil.init
  %i.yt = fcmp oeq double %.01316.i554.epil.init, +inf
  %or.cond.i555.epil = or i1 %i.yt, %i.ys
  %i.yu = fcmp une double %i.yr, +inf
  %or.cond15.i556.epil = and i1 %i.yu, %or.cond.i555.epil
  %.1.i557.epil = select i1 %or.cond15.i556.epil, double %i.yr, double %.01316.i554.epil.init
  br label %_ZL10simple_maxPKdi.exit560

_ZL10simple_maxPKdi.exit560:                      ; preds = %_ZL10simple_maxPKdi.exit560.unr-lcssa, %.epil.preheader1640
  %.1.i557.lcssa = phi double [ %.1.i557.1, %_ZL10simple_maxPKdi.exit560.unr-lcssa ], [ %.1.i557.epil, %.epil.preheader1640 ] ; 2 uses
  %i.yv = load double, ptr %12, align 8, !tbaa !14 ; 2 uses
  %i.yw = fcmp olt double %i.yv, %.1.i557.lcssa
  %.sroa.speculated747 = select i1 %i.yw, double %.1.i557.lcssa, double %i.yv
  store double %.sroa.speculated747, ptr %12, align 8, !tbaa !14
  %i.yx = load double, ptr %.sroa.0807.11003, align 8, !tbaa !14 ; 2 uses
  br i1 %i.ed, label %.epil.preheader1648, label %_ZL10simple_maxPKdi.exit560.new

_ZL10simple_maxPKdi.exit560.new:                  ; preds = %_ZL10simple_maxPKdi.exit560, %_ZL10simple_maxPKdi.exit560.new
  %indvars.iv.i563 = phi i64 [ %indvars.iv.next.i566.3, %_ZL10simple_maxPKdi.exit560.new ], [ 1, %_ZL10simple_maxPKdi.exit560 ] ; 5 uses
  %.0911.i564 = phi double [ %.1.i565.3, %_ZL10simple_maxPKdi.exit560.new ], [ %i.yx, %_ZL10simple_maxPKdi.exit560 ] ; 2 uses
  %niter1655 = phi i64 [ %niter1655.next.3, %_ZL10simple_maxPKdi.exit560.new ], [ 0, %_ZL10simple_maxPKdi.exit560 ]
  %i.yy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.11003, i64 %indvars.iv.i563
  %i.yz = load double, ptr %i.yy, align 8, !tbaa !14 ; 2 uses
  %i.za = fcmp olt double %i.yz, %.0911.i564
  %.1.i565 = select i1 %i.za, double %i.yz, double %.0911.i564 ; 2 uses
  %i.zb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.11003, i64 %indvars.iv.i563
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 8
  %i.zd = load double, ptr %i.zc, align 8, !tbaa !14 ; 2 uses
  %i.ze = fcmp olt double %i.zd, %.1.i565
  %.1.i565.1 = select i1 %i.ze, double %i.zd, double %.1.i565 ; 2 uses
  %i.zf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.11003, i64 %indvars.iv.i563
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 16
  %i.zh = load double, ptr %i.zg, align 8, !tbaa !14 ; 2 uses
  %i.zi = fcmp olt double %i.zh, %.1.i565.1
  %.1.i565.2 = select i1 %i.zi, double %i.zh, double %.1.i565.1 ; 2 uses
  %i.zj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.11003, i64 %indvars.iv.i563
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zj, i64 24
  %i.zl = load double, ptr %i.zk, align 8, !tbaa !14 ; 2 uses
  %i.zm = fcmp olt double %i.zl, %.1.i565.2
  %.1.i565.3 = select i1 %i.zm, double %i.zl, double %.1.i565.2 ; 3 uses
  %indvars.iv.next.i566.3 = add nuw nsw i64 %indvars.iv.i563, 4 ; 2 uses
  %niter1655.next.3 = add nuw i64 %niter1655, 4   ; 2 uses
  %niter1655.ncmp.3 = icmp eq i64 %niter1655.next.3, %unroll_iter1654
  br i1 %niter1655.ncmp.3, label %_ZL10simple_minPKdi.exit568.unr-lcssa, label %_ZL10simple_maxPKdi.exit560.new, !llvm.loop !0

_ZL10simple_minPKdi.exit568.unr-lcssa:            ; preds = %_ZL10simple_maxPKdi.exit560.new
  br i1 %lcmp.mod1651.not, label %_ZL10simple_minPKdi.exit568, label %.epil.preheader1648

.epil.preheader1648:                              ; preds = %_ZL10simple_minPKdi.exit568.unr-lcssa, %_ZL10simple_maxPKdi.exit560
  %indvars.iv.i563.epil.init = phi i64 [ 1, %_ZL10simple_maxPKdi.exit560 ], [ %indvars.iv.next.i566.3, %_ZL10simple_minPKdi.exit568.unr-lcssa ]
  %.0911.i564.epil.init = phi double [ %i.yx, %_ZL10simple_maxPKdi.exit560 ], [ %.1.i565.3, %_ZL10simple_minPKdi.exit568.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1653)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bd, %.epil.preheader1648
  %indvars.iv.i563.epil = phi i64 [ %indvars.iv.i563.epil.init, %.epil.preheader1648 ], [ %indvars.iv.next.i566.epil, %bb.bd ] ; 2 uses
  %.0911.i564.epil = phi double [ %.0911.i564.epil.init, %.epil.preheader1648 ], [ %.1.i565.epil, %bb.bd ] ; 2 uses
  %epil.iter1650 = phi i64 [ 0, %.epil.preheader1648 ], [ %epil.iter1650.next, %bb.bd ]
  %i.zn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.11003, i64 %indvars.iv.i563.epil
  %i.zo = load double, ptr %i.zn, align 8, !tbaa !14 ; 2 uses
  %i.zp = fcmp olt double %i.zo, %.0911.i564.epil
  %.1.i565.epil = select i1 %i.zp, double %i.zo, double %.0911.i564.epil ; 2 uses
  %indvars.iv.next.i566.epil = add nuw nsw i64 %indvars.iv.i563.epil, 1
  %epil.iter1650.next = add i64 %epil.iter1650, 1 ; 2 uses
  %epil.iter1650.cmp.not = icmp eq i64 %epil.iter1650.next, %xtraiter1649
  br i1 %epil.iter1650.cmp.not, label %_ZL10simple_minPKdi.exit568, label %bb.bd, !llvm.loop !74

_ZL10simple_minPKdi.exit568:                      ; preds = %bb.bd, %_ZL10simple_minPKdi.exit568.unr-lcssa
  %.1.i565.lcssa = phi double [ %.1.i565.3, %_ZL10simple_minPKdi.exit568.unr-lcssa ], [ %.1.i565.epil, %bb.bd ] ; 2 uses
  %i.zq = load double, ptr %10, align 8, !tbaa !14 ; 2 uses
  %i.zr = fcmp olt double %.1.i565.lcssa, %i.zq
  %.sroa.speculated743 = select i1 %i.zr, double %.1.i565.lcssa, double %i.zq
  store double %.sroa.speculated743, ptr %10, align 8, !tbaa !14
  %i.zs = load double, ptr %.sroa.0807.11003, align 8, !tbaa !14 ; 2 uses
  br i1 %i.ee, label %.epil.preheader1656, label %_ZL10simple_minPKdi.exit568.new

_ZL10simple_minPKdi.exit568.new:                  ; preds = %_ZL10simple_minPKdi.exit568, %_ZL10simple_minPKdi.exit568.new
  %indvars.iv.i571 = phi i64 [ %indvars.iv.next.i576.1, %_ZL10simple_minPKdi.exit568.new ], [ 1, %_ZL10simple_minPKdi.exit568 ] ; 3 uses
  %.01316.i572 = phi double [ %.1.i575.1, %_ZL10simple_minPKdi.exit568.new ], [ %i.zs, %_ZL10simple_minPKdi.exit568 ] ; 3 uses
  %niter1663 = phi i64 [ %niter1663.next.1, %_ZL10simple_minPKdi.exit568.new ], [ 0, %_ZL10simple_minPKdi.exit568 ]
  %i.zt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.11003, i64 %indvars.iv.i571
  %i.zu = load double, ptr %i.zt, align 8, !tbaa !14 ; 3 uses
  %i.zv = fcmp ogt double %i.zu, %.01316.i572
  %i.zw = fcmp oeq double %.01316.i572, +inf
  %or.cond.i573 = or i1 %i.zw, %i.zv
  %i.zx = fcmp une double %i.zu, +inf
  %or.cond15.i574 = and i1 %i.zx, %or.cond.i573
  %.1.i575 = select i1 %or.cond15.i574, double %i.zu, double %.01316.i572 ; 3 uses
  %i.zy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.11003, i64 %indvars.iv.i571
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 8
  %i.aaa = load double, ptr %i.zz, align 8, !tbaa !14 ; 3 uses
  %i.aab = fcmp ogt double %i.aaa, %.1.i575
  %i.aac = fcmp oeq double %.1.i575, +inf
  %or.cond.i573.1 = or i1 %i.aac, %i.aab
  %i.aad = fcmp une double %i.aaa, +inf
  %or.cond15.i574.1 = and i1 %i.aad, %or.cond.i573.1
  %.1.i575.1 = select i1 %or.cond15.i574.1, double %i.aaa, double %.1.i575 ; 3 uses
  %indvars.iv.next.i576.1 = add nuw nsw i64 %indvars.iv.i571, 2 ; 2 uses
  %niter1663.next.1 = add nuw i64 %niter1663, 2   ; 2 uses
  %niter1663.ncmp.1 = icmp eq i64 %niter1663.next.1, %unroll_iter1662
  br i1 %niter1663.ncmp.1, label %_ZL10simple_maxPKdi.exit578.unr-lcssa, label %_ZL10simple_minPKdi.exit568.new, !llvm.loop !1

_ZL10simple_maxPKdi.exit578.unr-lcssa:            ; preds = %_ZL10simple_minPKdi.exit568.new
  br i1 %lcmp.mod1659.not, label %_ZL10simple_maxPKdi.exit578, label %.epil.preheader1656

.epil.preheader1656:                              ; preds = %_ZL10simple_maxPKdi.exit578.unr-lcssa, %_ZL10simple_minPKdi.exit568
  %indvars.iv.i571.epil.init = phi i64 [ 1, %_ZL10simple_minPKdi.exit568 ], [ %indvars.iv.next.i576.1, %_ZL10simple_maxPKdi.exit578.unr-lcssa ]
  %.01316.i572.epil.init = phi double [ %i.zs, %_ZL10simple_minPKdi.exit568 ], [ %.1.i575.1, %_ZL10simple_maxPKdi.exit578.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod1661)
  %i.aae = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.11003, i64 %indvars.iv.i571.epil.init
  %i.aaf = load double, ptr %i.aae, align 8, !tbaa !14 ; 3 uses
  %i.aag = fcmp ogt double %i.aaf, %.01316.i572.epil.init
  %i.aah = fcmp oeq double %.01316.i572.epil.init, +inf
  %or.cond.i573.epil = or i1 %i.aah, %i.aag
  %i.aai = fcmp une double %i.aaf, +inf
  %or.cond15.i574.epil = and i1 %i.aai, %or.cond.i573.epil
  %.1.i575.epil = select i1 %or.cond15.i574.epil, double %i.aaf, double %.01316.i572.epil.init
  br label %_ZL10simple_maxPKdi.exit578

_ZL10simple_maxPKdi.exit578:                      ; preds = %_ZL10simple_maxPKdi.exit578.unr-lcssa, %.epil.preheader1656
  %.1.i575.lcssa = phi double [ %.1.i575.1, %_ZL10simple_maxPKdi.exit578.unr-lcssa ], [ %.1.i575.epil, %.epil.preheader1656 ] ; 2 uses
  %i.aaj = load double, ptr %13, align 8, !tbaa !14 ; 2 uses
  %i.aak = fcmp olt double %i.aaj, %.1.i575.lcssa
  %.sroa.speculated739 = select i1 %i.aak, double %.1.i575.lcssa, double %i.aaj
  store double %.sroa.speculated739, ptr %13, align 8, !tbaa !14
  br label %bb.ce

.thread883:                                       ; preds = %bb.ay, %bb.ba
  %.sroa.45.2901 = phi ptr [ %.sroa.45.11004, %bb.ba ], [ %.sroa.43.11002, %bb.ay ] ; 3 uses
  %.sroa.0807.2896 = phi ptr [ %.sroa.0807.11003, %bb.ba ], [ %.sroa.0845.11001, %bb.ay ] ; 23 uses
  %.sroa.43.2895 = phi ptr [ %.sroa.43.11002, %bb.ba ], [ %.sroa.45.11004, %bb.ay ] ; 3 uses
  %.sroa.0845.2891 = phi ptr [ %.sroa.0845.11001, %bb.ba ], [ %.sroa.0807.11003, %bb.ay ] ; 9 uses
  br i1 %.1430, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %.thread883
  store double -1.800000e+02, ptr %9, align 8, !tbaa !14
  store double 1.800000e+02, ptr %12, align 8, !tbaa !14
  %i.aal = load double, ptr %.sroa.0807.2896, align 8, !tbaa !14 ; 2 uses
  br i1 %i.ei, label %.epil.preheader1690, label %.new1689

.new1689:                                         ; preds = %bb.be, %.new1689
  %indvars.iv.i581 = phi i64 [ %indvars.iv.next.i584.3, %.new1689 ], [ 1, %bb.be ] ; 5 uses
  %.0911.i582 = phi double [ %.1.i583.3, %.new1689 ], [ %i.aal, %bb.be ] ; 2 uses
  %niter1697 = phi i64 [ %niter1697.next.3, %.new1689 ], [ 0, %bb.be ]
  %i.aam = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.2896, i64 %indvars.iv.i581
  %i.aan = load double, ptr %i.aam, align 8, !tbaa !14 ; 2 uses
  %i.aao = fcmp olt double %i.aan, %.0911.i582
  %.1.i583 = select i1 %i.aao, double %i.aan, double %.0911.i582 ; 2 uses
  %i.aap = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.2896, i64 %indvars.iv.i581
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aap, i64 8
  %i.aar = load double, ptr %i.aaq, align 8, !tbaa !14 ; 2 uses
  %i.aas = fcmp olt double %i.aar, %.1.i583
  %.1.i583.1 = select i1 %i.aas, double %i.aar, double %.1.i583 ; 2 uses
  %i.aat = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.2896, i64 %indvars.iv.i581
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aat, i64 16
  %i.aav = load double, ptr %i.aau, align 8, !tbaa !14 ; 2 uses
  %i.aaw = fcmp olt double %i.aav, %.1.i583.1
  %.1.i583.2 = select i1 %i.aaw, double %i.aav, double %.1.i583.1 ; 2 uses
  %i.aax = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.2896, i64 %indvars.iv.i581
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aax, i64 24
  %i.aaz = load double, ptr %i.aay, align 8, !tbaa !14 ; 2 uses
  %i.aba = fcmp olt double %i.aaz, %.1.i583.2
  %.1.i583.3 = select i1 %i.aba, double %i.aaz, double %.1.i583.2 ; 3 uses
  %indvars.iv.next.i584.3 = add nuw nsw i64 %indvars.iv.i581, 4 ; 2 uses
  %niter1697.next.3 = add nuw i64 %niter1697, 4   ; 2 uses
  %niter1697.ncmp.3 = icmp eq i64 %niter1697.next.3, %unroll_iter1696
  br i1 %niter1697.ncmp.3, label %_ZL10simple_minPKdi.exit586.unr-lcssa, label %.new1689, !llvm.loop !0

_ZL10simple_minPKdi.exit586.unr-lcssa:            ; preds = %.new1689
  br i1 %lcmp.mod1693.not, label %_ZL10simple_minPKdi.exit586, label %.epil.preheader1690

.epil.preheader1690:                              ; preds = %_ZL10simple_minPKdi.exit586.unr-lcssa, %bb.be
  %indvars.iv.i581.epil.init = phi i64 [ 1, %bb.be ], [ %indvars.iv.next.i584.3, %_ZL10simple_minPKdi.exit586.unr-lcssa ]
  %.0911.i582.epil.init = phi double [ %i.aal, %bb.be ], [ %.1.i583.3, %_ZL10simple_minPKdi.exit586.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1695)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bf, %.epil.preheader1690
  %indvars.iv.i581.epil = phi i64 [ %indvars.iv.i581.epil.init, %.epil.preheader1690 ], [ %indvars.iv.next.i584.epil, %bb.bf ] ; 2 uses
  %.0911.i582.epil = phi double [ %.0911.i582.epil.init, %.epil.preheader1690 ], [ %.1.i583.epil, %bb.bf ] ; 2 uses
  %epil.iter1692 = phi i64 [ 0, %.epil.preheader1690 ], [ %epil.iter1692.next, %bb.bf ]
  %i.abb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.2896, i64 %indvars.iv.i581.epil
  %i.abc = load double, ptr %i.abb, align 8, !tbaa !14 ; 2 uses
  %i.abd = fcmp olt double %i.abc, %.0911.i582.epil
  %.1.i583.epil = select i1 %i.abd, double %i.abc, double %.0911.i582.epil ; 2 uses
  %indvars.iv.next.i584.epil = add nuw nsw i64 %indvars.iv.i581.epil, 1
  %epil.iter1692.next = add i64 %epil.iter1692, 1 ; 2 uses
  %epil.iter1692.cmp.not = icmp eq i64 %epil.iter1692.next, %xtraiter1691
  br i1 %epil.iter1692.cmp.not, label %_ZL10simple_minPKdi.exit586, label %bb.bf, !llvm.loop !75

_ZL10simple_minPKdi.exit586:                      ; preds = %bb.bf, %_ZL10simple_minPKdi.exit586.unr-lcssa
  %.1.i583.lcssa = phi double [ %.1.i583.3, %_ZL10simple_minPKdi.exit586.unr-lcssa ], [ %.1.i583.epil, %bb.bf ] ; 2 uses
  %i.abe = load double, ptr %10, align 8, !tbaa !14 ; 2 uses
  %i.abf = fcmp olt double %.1.i583.lcssa, %i.abe
  %.sroa.speculated735 = select i1 %i.abf, double %.1.i583.lcssa, double %i.abe
  store double %.sroa.speculated735, ptr %10, align 8, !tbaa !14
  store double 9.000000e+01, ptr %13, align 8, !tbaa !14
  br label %bb.ce

bb.bg:                                            ; preds = %.thread883
  br i1 %.1428, label %bb.bh, label %.preheader978

bb.bh:                                            ; preds = %bb.bg
  store double -1.800000e+02, ptr %9, align 8, !tbaa !14
  store double 1.800000e+02, ptr %12, align 8, !tbaa !14
  store double -9.000000e+01, ptr %10, align 8, !tbaa !14
  %i.abg = load double, ptr %.sroa.0807.2896, align 8, !tbaa !14 ; 2 uses
  br i1 %i.eh, label %.epil.preheader1681, label %.new1680

.new1680:                                         ; preds = %bb.bh, %.new1680
  %indvars.iv.i589 = phi i64 [ %indvars.iv.next.i594.1, %.new1680 ], [ 1, %bb.bh ] ; 3 uses
  %.01316.i590 = phi double [ %.1.i593.1, %.new1680 ], [ %i.abg, %bb.bh ] ; 3 uses
  %niter1688 = phi i64 [ %niter1688.next.1, %.new1680 ], [ 0, %bb.bh ]
  %i.abh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.2896, i64 %indvars.iv.i589
  %i.abi = load double, ptr %i.abh, align 8, !tbaa !14 ; 3 uses
  %i.abj = fcmp ogt double %i.abi, %.01316.i590
  %i.abk = fcmp oeq double %.01316.i590, +inf
  %or.cond.i591 = or i1 %i.abk, %i.abj
  %i.abl = fcmp une double %i.abi, +inf
  %or.cond15.i592 = and i1 %i.abl, %or.cond.i591
  %.1.i593 = select i1 %or.cond15.i592, double %i.abi, double %.01316.i590 ; 3 uses
  %i.abm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.2896, i64 %indvars.iv.i589
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 8
  %i.abo = load double, ptr %i.abn, align 8, !tbaa !14 ; 3 uses
  %i.abp = fcmp ogt double %i.abo, %.1.i593
  %i.abq = fcmp oeq double %.1.i593, +inf
  %or.cond.i591.1 = or i1 %i.abq, %i.abp
  %i.abr = fcmp une double %i.abo, +inf
  %or.cond15.i592.1 = and i1 %i.abr, %or.cond.i591.1
  %.1.i593.1 = select i1 %or.cond15.i592.1, double %i.abo, double %.1.i593 ; 3 uses
  %indvars.iv.next.i594.1 = add nuw nsw i64 %indvars.iv.i589, 2 ; 2 uses
  %niter1688.next.1 = add nuw i64 %niter1688, 2   ; 2 uses
  %niter1688.ncmp.1 = icmp eq i64 %niter1688.next.1, %unroll_iter1687
  br i1 %niter1688.ncmp.1, label %_ZL10simple_maxPKdi.exit596.unr-lcssa, label %.new1680, !llvm.loop !1

_ZL10simple_maxPKdi.exit596.unr-lcssa:            ; preds = %.new1680
  br i1 %lcmp.mod1684.not, label %_ZL10simple_maxPKdi.exit596, label %.epil.preheader1681

.epil.preheader1681:                              ; preds = %_ZL10simple_maxPKdi.exit596.unr-lcssa, %bb.bh
  %indvars.iv.i589.epil.init = phi i64 [ 1, %bb.bh ], [ %indvars.iv.next.i594.1, %_ZL10simple_maxPKdi.exit596.unr-lcssa ]
  %.01316.i590.epil.init = phi double [ %i.abg, %bb.bh ], [ %.1.i593.1, %_ZL10simple_maxPKdi.exit596.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod1686)
  %i.abs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.2896, i64 %indvars.iv.i589.epil.init
  %i.abt = load double, ptr %i.abs, align 8, !tbaa !14 ; 3 uses
  %i.abu = fcmp ogt double %i.abt, %.01316.i590.epil.init
  %i.abv = fcmp oeq double %.01316.i590.epil.init, +inf
  %or.cond.i591.epil = or i1 %i.abv, %i.abu
  %i.abw = fcmp une double %i.abt, +inf
  %or.cond15.i592.epil = and i1 %i.abw, %or.cond.i591.epil
  %.1.i593.epil = select i1 %or.cond15.i592.epil, double %i.abt, double %.01316.i590.epil.init
  br label %_ZL10simple_maxPKdi.exit596

_ZL10simple_maxPKdi.exit596:                      ; preds = %_ZL10simple_maxPKdi.exit596.unr-lcssa, %.epil.preheader1681
  %.1.i593.lcssa = phi double [ %.1.i593.1, %_ZL10simple_maxPKdi.exit596.unr-lcssa ], [ %.1.i593.epil, %.epil.preheader1681 ] ; 2 uses
  %i.abx = load double, ptr %13, align 8, !tbaa !14 ; 2 uses
  %i.aby = fcmp olt double %i.abx, %.1.i593.lcssa
  %.sroa.speculated731 = select i1 %i.aby, double %.1.i593.lcssa, double %i.abx
  store double %.sroa.speculated731, ptr %13, align 8, !tbaa !14
  br label %bb.ce

bb.bi:                                            ; preds = %bb.bp
  switch i32 %.244.i, label %bb.br [
    i32 2, label %_ZL16antimeridian_minPKdi.exit
    i32 4, label %bb.bq
  ]

.preheader978:                                    ; preds = %bb.bg, %bb.bp
  %indvars.iv.i599 = phi i64 [ %indvars.iv.next.i601, %bb.bp ], [ 0, %bb.bg ] ; 6 uses
  %.04170.i = phi i1 [ %.2.i, %bb.bp ], [ false, %bb.bg ] ; 2 uses
  %.04269.i = phi i32 [ %.244.i, %bb.bp ], [ 0, %bb.bg ] ; 7 uses
  %.04568.i = phi double [ %.247.i, %bb.bp ], [ +inf, %bb.bg ] ; 4 uses
  %.04867.i = phi double [ %.5.i, %bb.bp ], [ +inf, %bb.bg ] ; 5 uses
  %i.abz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.2891, i64 %indvars.iv.i599
  %i.aca = load double, ptr %i.abz, align 8, !tbaa !14 ; 7 uses
  %i.acb = fcmp oeq double %i.aca, +inf
  br i1 %i.acb, label %bb.bp, label %bb.bj

bb.bj:                                            ; preds = %.preheader978
  %i.acc = icmp eq i64 %indvars.iv.i599, 0
  %i.acd = trunc nuw nsw i64 %indvars.iv.i599 to i32
  %spec.select.i.i = select i1 %i.acc, i32 %i.aa, i32 %i.acd
  %.113.i.i = add nsw i32 %spec.select.i.i, -1    ; 3 uses
  %17 = sext i32 %.113.i.i to i64
  %i.ace = getelementptr inbounds [8 x i8], ptr %.sroa.0845.2891, i64 %17
  %i.acf = load double, ptr %i.ace, align 8, !tbaa !14 ; 2 uses
  %i.acg = fcmp oeq double %i.acf, +inf
  %18 = zext i32 %.113.i.i to i64
  %i.ach = icmp ne i64 %indvars.iv.i599, %18
  %i.aci = and i1 %i.ach, %i.acg
  br i1 %i.aci, label %.lr.ph.i.i, label %_ZL19find_previous_indexiPKdi.exit.i

.lr.ph.i.i:                                       ; preds = %bb.bj, %.lr.ph.i.i
  %.114.i.i = phi i32 [ %.1.i.i, %.lr.ph.i.i ], [ %.113.i.i, %bb.bj ] ; 2 uses
  %i.acj = icmp eq i32 %.114.i.i, 0
  %spec.select12.i.i = select i1 %i.acj, i32 %i.aa, i32 %.114.i.i
  %.1.i.i = add nsw i32 %spec.select12.i.i, -1    ; 3 uses
  %i.ack = sext i32 %.1.i.i to i64
  %i.acl = getelementptr inbounds [8 x i8], ptr %.sroa.0845.2891, i64 %i.ack
  %i.acm = load double, ptr %i.acl, align 8, !tbaa !14 ; 2 uses
  %i.acn = fcmp oeq double %i.acm, +inf
  %i.aco = zext i32 %.1.i.i to i64
  %i.acp = icmp ne i64 %indvars.iv.i599, %i.aco
  %i.acq = and i1 %i.acn, %i.acp
  br i1 %i.acq, label %.lr.ph.i.i, label %_ZL19find_previous_indexiPKdi.exit.i, !llvm.loop !2

_ZL19find_previous_indexiPKdi.exit.i:             ; preds = %.lr.ph.i.i, %bb.bj
  %i.acr = phi double [ %i.acf, %bb.bj ], [ %i.acm, %.lr.ph.i.i ]
  %i.acs = fsub double %i.acr, %i.aca             ; 3 uses
  %i.act = fcmp oge double %i.acs, 2.000000e+02
  %i.acu = fcmp une double %i.acs, +inf           ; 2 uses
  %or.cond.i600 = and i1 %i.act, %i.acu
  br i1 %or.cond.i600, label %.thread63.i, label %bb.bk

.thread63.i:                                      ; preds = %_ZL19find_previous_indexiPKdi.exit.i
  %i.acv = icmp eq i32 %.04269.i, 0
  %.149.i = select i1 %i.acv, double %.04568.i, double %.04867.i
  %i.acw = add nsw i32 %.04269.i, 1
  br label %bb.bo

bb.bk:                                            ; preds = %_ZL19find_previous_indexiPKdi.exit.i
  %i.acx = fcmp ole double %i.acs, -2.000000e+02
  %or.cond3.i = and i1 %i.acx, %i.acu
  br i1 %or.cond3.i, label %.thread.i, label %bb.bl

.thread.i:                                        ; preds = %bb.bk
  %i.acy = icmp eq i32 %.04269.i, 0
  %.250.i = select i1 %i.acy, double %i.aca, double %.04867.i
  %i.acz = add nsw i32 %.04269.i, 1
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  br i1 %.04170.i, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %bb.bl, %.thread.i
  %.14360.i = phi i32 [ %i.acz, %.thread.i ], [ %.04269.i, %bb.bl ] ; 2 uses
  %.358.i = phi double [ %.250.i, %.thread.i ], [ %.04867.i, %bb.bl ] ; 2 uses
  %i.ada = fcmp olt double %i.aca, %.358.i
  br i1 %i.ada, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %bb.bl, %.thread63.i
  %.161.i = phi i1 [ true, %bb.bn ], [ true, %bb.bm ], [ false, %bb.bl ], [ false, %.thread63.i ]
  %.14359.i = phi i32 [ %.14360.i, %bb.bn ], [ %.14360.i, %bb.bm ], [ %.04269.i, %bb.bl ], [ %i.acw, %.thread63.i ]
  %.4.i = phi double [ %i.aca, %bb.bn ], [ %.358.i, %bb.bm ], [ %.04867.i, %bb.bl ], [ %.149.i, %.thread63.i ]
  %i.adb = fcmp olt double %i.aca, %.04568.i
  %.146.i = select i1 %i.adb, double %i.aca, double %.04568.i
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %.preheader978
  %.5.i = phi double [ %.04867.i, %.preheader978 ], [ %.4.i, %bb.bo ] ; 2 uses
  %.247.i = phi double [ %.04568.i, %.preheader978 ], [ %.146.i, %bb.bo ] ; 2 uses
  %.244.i = phi i32 [ %.04269.i, %.preheader978 ], [ %.14359.i, %bb.bo ] ; 2 uses
  %.2.i = phi i1 [ %.04170.i, %.preheader978 ], [ %.161.i, %bb.bo ]
  %indvars.iv.next.i601 = add nuw nsw i64 %indvars.iv.i599, 1 ; 2 uses
  %exitcond.not.i602 = icmp eq i64 %indvars.iv.next.i601, %i.ab
  br i1 %exitcond.not.i602, label %bb.bi, label %.preheader978, !llvm.loop !3

bb.bq:                                            ; preds = %bb.bi
  br label %_ZL16antimeridian_minPKdi.exit

bb.br:                                            ; preds = %bb.bi
  br label %_ZL16antimeridian_minPKdi.exit

_ZL16antimeridian_minPKdi.exit:                   ; preds = %bb.br, %bb.bq, %bb.bi
  %.051.i = phi double [ %.247.i, %bb.br ], [ -1.800000e+02, %bb.bq ], [ %.5.i, %bb.bi ] ; 2 uses
  %i.adc = load double, ptr %9, align 8, !tbaa !14 ; 2 uses
  %i.add = fcmp olt double %.051.i, %i.adc
  %.sroa.speculated727 = select i1 %i.add, double %.051.i, double %i.adc
  store double %.sroa.speculated727, ptr %9, align 8, !tbaa !14
  br label %bb.bt

bb.bs:                                            ; preds = %bb.ca
  switch i32 %.2.i613, label %bb.cc [
    i32 2, label %_ZL16antimeridian_maxPKdi.exit
    i32 4, label %bb.cb
  ]

bb.bt:                                            ; preds = %bb.ca, %_ZL16antimeridian_minPKdi.exit
  %indvars.iv.i605 = phi i64 [ 0, %_ZL16antimeridian_minPKdi.exit ], [ %indvars.iv.next.i614, %bb.ca ] ; 6 uses
  %.05182.i = phi i32 [ 0, %_ZL16antimeridian_minPKdi.exit ], [ %.2.i613, %bb.ca ] ; 7 uses
  %.05281.i = phi i1 [ false, %_ZL16antimeridian_minPKdi.exit ], [ %.254.i, %bb.ca ] ; 2 uses
  %.05580.i = phi double [ -inf, %_ZL16antimeridian_minPKdi.exit ], [ %.257.i, %bb.ca ] ; 5 uses
  %.05879.i = phi double [ -inf, %_ZL16antimeridian_minPKdi.exit ], [ %.5.i612, %bb.ca ] ; 5 uses
  %i.ade = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0845.2891, i64 %indvars.iv.i605
  %i.adf = load double, ptr %i.ade, align 8, !tbaa !14 ; 7 uses
  %i.adg = fcmp oeq double %i.adf, +inf
  br i1 %i.adg, label %bb.ca, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.adh = icmp eq i64 %indvars.iv.i605, 0
  %i.adi = trunc nuw nsw i64 %indvars.iv.i605 to i32
  %spec.select.i.i606 = select i1 %i.adh, i32 %i.aa, i32 %i.adi
  %.113.i.i607 = add nsw i32 %spec.select.i.i606, -1 ; 3 uses
  %19 = sext i32 %.113.i.i607 to i64
  %i.adj = getelementptr inbounds [8 x i8], ptr %.sroa.0845.2891, i64 %19
  %i.adk = load double, ptr %i.adj, align 8, !tbaa !14 ; 2 uses
  %i.adl = fcmp oeq double %i.adk, +inf
  %20 = zext i32 %.113.i.i607 to i64
  %i.adm = icmp ne i64 %indvars.iv.i605, %20
  %i.adn = and i1 %i.adm, %i.adl
  br i1 %i.adn, label %.lr.ph.i.i617, label %_ZL19find_previous_indexiPKdi.exit.i608

.lr.ph.i.i617:                                    ; preds = %bb.bu, %.lr.ph.i.i617
  %.114.i.i618 = phi i32 [ %.1.i.i620, %.lr.ph.i.i617 ], [ %.113.i.i607, %bb.bu ] ; 2 uses
  %i.ado = icmp eq i32 %.114.i.i618, 0
  %spec.select12.i.i619 = select i1 %i.ado, i32 %i.aa, i32 %.114.i.i618
  %.1.i.i620 = add nsw i32 %spec.select12.i.i619, -1 ; 3 uses
  %i.adp = sext i32 %.1.i.i620 to i64
  %i.adq = getelementptr inbounds [8 x i8], ptr %.sroa.0845.2891, i64 %i.adp
  %i.adr = load double, ptr %i.adq, align 8, !tbaa !14 ; 2 uses
  %i.ads = fcmp oeq double %i.adr, +inf
  %i.adt = zext i32 %.1.i.i620 to i64
  %i.adu = icmp ne i64 %indvars.iv.i605, %i.adt
  %i.adv = and i1 %i.ads, %i.adu
  br i1 %i.adv, label %.lr.ph.i.i617, label %_ZL19find_previous_indexiPKdi.exit.i608, !llvm.loop !2

_ZL19find_previous_indexiPKdi.exit.i608:          ; preds = %.lr.ph.i.i617, %bb.bu
  %i.adw = phi double [ %i.adk, %bb.bu ], [ %i.adr, %.lr.ph.i.i617 ]
  %i.adx = fsub double %i.adw, %i.adf             ; 3 uses
  %i.ady = fcmp oge double %i.adx, 2.000000e+02
  %i.adz = fcmp une double %i.adx, +inf           ; 2 uses
  %or.cond.i609 = and i1 %i.ady, %i.adz
  br i1 %or.cond.i609, label %.thread.i616, label %bb.bv

.thread.i616:                                     ; preds = %_ZL19find_previous_indexiPKdi.exit.i608
  %i.aea = icmp eq i32 %.05182.i, 0
  %.159.i = select i1 %i.aea, double %i.adf, double %.05879.i
  %i.aeb = add nsw i32 %.05182.i, 1
  br label %bb.bx

bb.bv:                                            ; preds = %_ZL19find_previous_indexiPKdi.exit.i608
  %i.aec = fcmp ole double %i.adx, -2.000000e+02
  %or.cond3.i610 = and i1 %i.aec, %i.adz
  br i1 %or.cond3.i610, label %.thread75.i, label %bb.bw

.thread75.i:                                      ; preds = %bb.bv
  %i.aed = icmp eq i32 %.05182.i, 0
  %.260.i = select i1 %i.aed, double %.05580.i, double %.05879.i
  %i.aee = add nsw i32 %.05182.i, 1
  br label %bb.bz

bb.bw:                                            ; preds = %bb.bv
  br i1 %.05281.i, label %bb.bx, label %bb.bz

bb.bx:                                            ; preds = %bb.bw, %.thread.i616
  %.174.i = phi i32 [ %i.aeb, %.thread.i616 ], [ %.05182.i, %bb.bw ] ; 2 uses
  %.370.i = phi double [ %.159.i, %.thread.i616 ], [ %.05879.i, %bb.bw ] ; 3 uses
  %i.aef = fcmp ogt double %i.adf, %.370.i
  %i.aeg = fcmp oeq double %.370.i, +inf
  %or.cond5.i = or i1 %i.aef, %i.aeg
  br i1 %or.cond5.i, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx, %bb.bw, %.thread75.i
  %.173.i = phi i32 [ %.174.i, %bb.by ], [ %.05182.i, %bb.bw ], [ %.174.i, %bb.bx ], [ %i.aee, %.thread75.i ]
  %.15371.i = phi i1 [ true, %bb.by ], [ false, %bb.bw ], [ true, %bb.bx ], [ false, %.thread75.i ]
  %.4.i611 = phi double [ %i.adf, %bb.by ], [ %.05879.i, %bb.bw ], [ %.370.i, %bb.bx ], [ %.260.i, %.thread75.i ]
  %i.aeh = fcmp ogt double %i.adf, %.05580.i
  %i.aei = fcmp oeq double %.05580.i, +inf
  %or.cond7.i = or i1 %i.aei, %i.aeh
  %.156.i = select i1 %or.cond7.i, double %i.adf, double %.05580.i
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.bt
  %.5.i612 = phi double [ %.05879.i, %bb.bt ], [ %.4.i611, %bb.bz ] ; 2 uses
  %.257.i = phi double [ %.05580.i, %bb.bt ], [ %.156.i, %bb.bz ] ; 2 uses
  %.254.i = phi i1 [ %.05281.i, %bb.bt ], [ %.15371.i, %bb.bz ]
  %.2.i613 = phi i32 [ %.05182.i, %bb.bt ], [ %.173.i, %bb.bz ] ; 2 uses
  %indvars.iv.next.i614 = add nuw nsw i64 %indvars.iv.i605, 1 ; 2 uses
  %exitcond.not.i615 = icmp eq i64 %indvars.iv.next.i614, %i.ab
  br i1 %exitcond.not.i615, label %bb.bs, label %bb.bt, !llvm.loop !4

bb.cb:                                            ; preds = %bb.bs
  br label %_ZL16antimeridian_maxPKdi.exit

bb.cc:                                            ; preds = %bb.bs
  br label %_ZL16antimeridian_maxPKdi.exit

_ZL16antimeridian_maxPKdi.exit:                   ; preds = %bb.bs, %bb.cb, %bb.cc
  %.061.i = phi double [ %.257.i, %bb.cc ], [ 1.800000e+02, %bb.cb ], [ %.5.i612, %bb.bs ] ; 2 uses
  %i.aej = load double, ptr %12, align 8, !tbaa !14 ; 2 uses
  %i.aek = fcmp olt double %i.aej, %.061.i
  %.sroa.speculated723 = select i1 %i.aek, double %.061.i, double %i.aej ; 2 uses
  store double %.sroa.speculated723, ptr %12, align 8, !tbaa !14
  %i.ael = load double, ptr %9, align 8, !tbaa !14
  %i.aem = load double, ptr %.sroa.0807.2896, align 8, !tbaa !14 ; 2 uses
  br i1 %i.ef, label %.epil.preheader1664, label %_ZL16antimeridian_maxPKdi.exit.new

_ZL16antimeridian_maxPKdi.exit.new:               ; preds = %_ZL16antimeridian_maxPKdi.exit, %_ZL16antimeridian_maxPKdi.exit.new
  %indvars.iv.i623 = phi i64 [ %indvars.iv.next.i626.3, %_ZL16antimeridian_maxPKdi.exit.new ], [ 1, %_ZL16antimeridian_maxPKdi.exit ] ; 5 uses
  %.0911.i624 = phi double [ %.1.i625.3, %_ZL16antimeridian_maxPKdi.exit.new ], [ %i.aem, %_ZL16antimeridian_maxPKdi.exit ] ; 2 uses
  %niter1671 = phi i64 [ %niter1671.next.3, %_ZL16antimeridian_maxPKdi.exit.new ], [ 0, %_ZL16antimeridian_maxPKdi.exit ]
  %i.aen = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.2896, i64 %indvars.iv.i623
  %i.aeo = load double, ptr %i.aen, align 8, !tbaa !14 ; 2 uses
  %i.aep = fcmp olt double %i.aeo, %.0911.i624
  %.1.i625 = select i1 %i.aep, double %i.aeo, double %.0911.i624 ; 2 uses
  %i.aeq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.2896, i64 %indvars.iv.i623
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aeq, i64 8
  %i.aes = load double, ptr %i.aer, align 8, !tbaa !14 ; 2 uses
  %i.aet = fcmp olt double %i.aes, %.1.i625
  %.1.i625.1 = select i1 %i.aet, double %i.aes, double %.1.i625 ; 2 uses
  %i.aeu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.2896, i64 %indvars.iv.i623
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aeu, i64 16
  %i.aew = load double, ptr %i.aev, align 8, !tbaa !14 ; 2 uses
  %i.aex = fcmp olt double %i.aew, %.1.i625.1
  %.1.i625.2 = select i1 %i.aex, double %i.aew, double %.1.i625.1 ; 2 uses
  %i.aey = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.2896, i64 %indvars.iv.i623
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aey, i64 24
  %i.afa = load double, ptr %i.aez, align 8, !tbaa !14 ; 2 uses
  %i.afb = fcmp olt double %i.afa, %.1.i625.2
  %.1.i625.3 = select i1 %i.afb, double %i.afa, double %.1.i625.2 ; 3 uses
  %indvars.iv.next.i626.3 = add nuw nsw i64 %indvars.iv.i623, 4 ; 2 uses
  %niter1671.next.3 = add nuw i64 %niter1671, 4   ; 2 uses
  %niter1671.ncmp.3 = icmp eq i64 %niter1671.next.3, %unroll_iter1670
  br i1 %niter1671.ncmp.3, label %_ZL10simple_minPKdi.exit628.unr-lcssa, label %_ZL16antimeridian_maxPKdi.exit.new, !llvm.loop !0

_ZL10simple_minPKdi.exit628.unr-lcssa:            ; preds = %_ZL16antimeridian_maxPKdi.exit.new
  br i1 %lcmp.mod1667.not, label %_ZL10simple_minPKdi.exit628, label %.epil.preheader1664

.epil.preheader1664:                              ; preds = %_ZL10simple_minPKdi.exit628.unr-lcssa, %_ZL16antimeridian_maxPKdi.exit
  %indvars.iv.i623.epil.init = phi i64 [ 1, %_ZL16antimeridian_maxPKdi.exit ], [ %indvars.iv.next.i626.3, %_ZL10simple_minPKdi.exit628.unr-lcssa ]
  %.0911.i624.epil.init = phi double [ %i.aem, %_ZL16antimeridian_maxPKdi.exit ], [ %.1.i625.3, %_ZL10simple_minPKdi.exit628.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1669)
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cd, %.epil.preheader1664
  %indvars.iv.i623.epil = phi i64 [ %indvars.iv.i623.epil.init, %.epil.preheader1664 ], [ %indvars.iv.next.i626.epil, %bb.cd ] ; 2 uses
  %.0911.i624.epil = phi double [ %.0911.i624.epil.init, %.epil.preheader1664 ], [ %.1.i625.epil, %bb.cd ] ; 2 uses
  %epil.iter1666 = phi i64 [ 0, %.epil.preheader1664 ], [ %epil.iter1666.next, %bb.cd ]
  %i.afc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.2896, i64 %indvars.iv.i623.epil
  %i.afd = load double, ptr %i.afc, align 8, !tbaa !14 ; 2 uses
  %i.afe = fcmp olt double %i.afd, %.0911.i624.epil
  %.1.i625.epil = select i1 %i.afe, double %i.afd, double %.0911.i624.epil ; 2 uses
  %indvars.iv.next.i626.epil = add nuw nsw i64 %indvars.iv.i623.epil, 1
  %epil.iter1666.next = add i64 %epil.iter1666, 1 ; 2 uses
  %epil.iter1666.cmp.not = icmp eq i64 %epil.iter1666.next, %xtraiter1665
  br i1 %epil.iter1666.cmp.not, label %_ZL10simple_minPKdi.exit628, label %bb.cd, !llvm.loop !76

_ZL10simple_minPKdi.exit628:                      ; preds = %bb.cd, %_ZL10simple_minPKdi.exit628.unr-lcssa
  %.1.i625.lcssa = phi double [ %.1.i625.3, %_ZL10simple_minPKdi.exit628.unr-lcssa ], [ %.1.i625.epil, %bb.cd ] ; 2 uses
  %i.aff = load double, ptr %10, align 8, !tbaa !14 ; 2 uses
  %i.afg = fcmp olt double %.1.i625.lcssa, %i.aff
  %.sroa.speculated719 = select i1 %i.afg, double %.1.i625.lcssa, double %i.aff
  store double %.sroa.speculated719, ptr %10, align 8, !tbaa !14
  %i.afh = load double, ptr %.sroa.0807.2896, align 8, !tbaa !14 ; 2 uses
  br i1 %i.eg, label %.epil.preheader1672, label %_ZL10simple_minPKdi.exit628.new

_ZL10simple_minPKdi.exit628.new:                  ; preds = %_ZL10simple_minPKdi.exit628, %_ZL10simple_minPKdi.exit628.new
  %indvars.iv.i631 = phi i64 [ %indvars.iv.next.i636.1, %_ZL10simple_minPKdi.exit628.new ], [ 1, %_ZL10simple_minPKdi.exit628 ] ; 3 uses
  %.01316.i632 = phi double [ %.1.i635.1, %_ZL10simple_minPKdi.exit628.new ], [ %i.afh, %_ZL10simple_minPKdi.exit628 ] ; 3 uses
  %niter1679 = phi i64 [ %niter1679.next.1, %_ZL10simple_minPKdi.exit628.new ], [ 0, %_ZL10simple_minPKdi.exit628 ]
  %i.afi = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.2896, i64 %indvars.iv.i631
  %i.afj = load double, ptr %i.afi, align 8, !tbaa !14 ; 3 uses
  %i.afk = fcmp ogt double %i.afj, %.01316.i632
  %i.afl = fcmp oeq double %.01316.i632, +inf
  %or.cond.i633 = or i1 %i.afl, %i.afk
  %i.afm = fcmp une double %i.afj, +inf
  %or.cond15.i634 = and i1 %i.afm, %or.cond.i633
  %.1.i635 = select i1 %or.cond15.i634, double %i.afj, double %.01316.i632 ; 3 uses
  %i.afn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.2896, i64 %indvars.iv.i631
  %i.afo = getelementptr inbounds nuw i8, ptr %i.afn, i64 8
  %i.afp = load double, ptr %i.afo, align 8, !tbaa !14 ; 3 uses
  %i.afq = fcmp ogt double %i.afp, %.1.i635
  %i.afr = fcmp oeq double %.1.i635, +inf
  %or.cond.i633.1 = or i1 %i.afr, %i.afq
  %i.afs = fcmp une double %i.afp, +inf
  %or.cond15.i634.1 = and i1 %i.afs, %or.cond.i633.1
  %.1.i635.1 = select i1 %or.cond15.i634.1, double %i.afp, double %.1.i635 ; 3 uses
  %indvars.iv.next.i636.1 = add nuw nsw i64 %indvars.iv.i631, 2 ; 2 uses
  %niter1679.next.1 = add nuw i64 %niter1679, 2   ; 2 uses
  %niter1679.ncmp.1 = icmp eq i64 %niter1679.next.1, %unroll_iter1678
  br i1 %niter1679.ncmp.1, label %_ZL10simple_maxPKdi.exit638.unr-lcssa, label %_ZL10simple_minPKdi.exit628.new, !llvm.loop !1

_ZL10simple_maxPKdi.exit638.unr-lcssa:            ; preds = %_ZL10simple_minPKdi.exit628.new
  br i1 %lcmp.mod1675.not, label %_ZL10simple_maxPKdi.exit638, label %.epil.preheader1672

.epil.preheader1672:                              ; preds = %_ZL10simple_maxPKdi.exit638.unr-lcssa, %_ZL10simple_minPKdi.exit628
  %indvars.iv.i631.epil.init = phi i64 [ 1, %_ZL10simple_minPKdi.exit628 ], [ %indvars.iv.next.i636.1, %_ZL10simple_maxPKdi.exit638.unr-lcssa ]
  %.01316.i632.epil.init = phi double [ %i.afh, %_ZL10simple_minPKdi.exit628 ], [ %.1.i635.1, %_ZL10simple_maxPKdi.exit638.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod1677)
  %i.aft = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0807.2896, i64 %indvars.iv.i631.epil.init
  %i.afu = load double, ptr %i.aft, align 8, !tbaa !14 ; 3 uses
  %i.afv = fcmp ogt double %i.afu, %.01316.i632.epil.init
  %i.afw = fcmp oeq double %.01316.i632.epil.init, +inf
  %or.cond.i633.epil = or i1 %i.afw, %i.afv
  %i.afx = fcmp une double %i.afu, +inf
  %or.cond15.i634.epil = and i1 %i.afx, %or.cond.i633.epil
  %.1.i635.epil = select i1 %or.cond15.i634.epil, double %i.afu, double %.01316.i632.epil.init
  br label %_ZL10simple_maxPKdi.exit638

_ZL10simple_maxPKdi.exit638:                      ; preds = %_ZL10simple_maxPKdi.exit638.unr-lcssa, %.epil.preheader1672
  %.1.i635.lcssa = phi double [ %.1.i635.1, %_ZL10simple_maxPKdi.exit638.unr-lcssa ], [ %.1.i635.epil, %.epil.preheader1672 ] ; 2 uses
  %i.afy = fcmp ogt double %i.ael, %.sroa.speculated723
  %i.afz = load double, ptr %13, align 8, !tbaa !14 ; 2 uses
  %i.aga = fcmp olt double %i.afz, %.1.i635.lcssa
  %.sroa.speculated715 = select i1 %i.aga, double %.1.i635.lcssa, double %i.afz
  store double %.sroa.speculated715, ptr %13, align 8, !tbaa !14
  %i.agb = or i1 %i.afy, %i.cb
  br label %bb.ce

bb.ce:                                            ; preds = %_ZL10simple_minPKdi.exit586, %_ZL10simple_maxPKdi.exit638, %_ZL10simple_maxPKdi.exit596, %_ZL10simple_maxPKdi.exit578
  %.sroa.45.2900 = phi ptr [ %.sroa.45.2901, %_ZL10simple_minPKdi.exit586 ], [ %.sroa.45.2901, %_ZL10simple_maxPKdi.exit596 ], [ %.sroa.45.2901, %_ZL10simple_maxPKdi.exit638 ], [ %.sroa.45.11004, %_ZL10simple_maxPKdi.exit578 ] ; 3 uses
  %.sroa.0807.2897 = phi ptr [ %.sroa.0807.2896, %_ZL10simple_minPKdi.exit586 ], [ %.sroa.0807.2896, %_ZL10simple_maxPKdi.exit596 ], [ %.sroa.0807.2896, %_ZL10simple_maxPKdi.exit638 ], [ %.sroa.0807.11003, %_ZL10simple_maxPKdi.exit578 ] ; 10 uses
  %.sroa.43.2894 = phi ptr [ %.sroa.43.2895, %_ZL10simple_minPKdi.exit586 ], [ %.sroa.43.2895, %_ZL10simple_maxPKdi.exit596 ], [ %.sroa.43.2895, %_ZL10simple_maxPKdi.exit638 ], [ %.sroa.43.11002, %_ZL10simple_maxPKdi.exit578 ] ; 3 uses
  %.sroa.0845.2890 = phi ptr [ %.sroa.0845.2891, %_ZL10simple_minPKdi.exit586 ], [ %.sroa.0845.2891, %_ZL10simple_maxPKdi.exit596 ], [ %.sroa.0845.2891, %_ZL10simple_maxPKdi.exit638 ], [ %.sroa.0845.11001, %_ZL10simple_maxPKdi.exit578 ] ; 10 uses
  %.0410 = phi i1 [ %i.cb, %_ZL10simple_minPKdi.exit586 ], [ %i.cb, %_ZL10simple_maxPKdi.exit596 ], [ %i.agb, %_ZL10simple_maxPKdi.exit638 ], [ %i.cb, %_ZL10simple_maxPKdi.exit578 ]
  %.sroa.0807.28971185 = ptrtoaddr ptr %.sroa.0807.2897 to i64 ; 2 uses
  %.sroa.0845.28901186 = ptrtoaddr ptr %.sroa.0845.2890 to i64 ; 2 uses
  %i.agc = load double, ptr %i.aj, align 8, !tbaa !14 ; 4 uses
  br i1 %i.ej, label %.epil.preheader1699, label %.new1698

.new1698:                                         ; preds = %bb.ce, %.new1698
  %indvars.iv.i641 = phi i64 [ %indvars.iv.next.i644.3, %.new1698 ], [ 1, %bb.ce ] ; 5 uses
  %.0911.i642 = phi double [ %.1.i643.3, %.new1698 ], [ %i.agc, %bb.ce ] ; 2 uses
  %niter1706 = phi i64 [ %niter1706.next.3, %.new1698 ], [ 0, %bb.ce ]
  %i.agd = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.i641
end_hunk_1
