inline.NumInlined: 19
begin_hunk_0_@hackcofm:bb.a
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dh = load <2 x double>, ptr %i.dg, align 8, !tbaa !13
  %i.di = insertelement <2 x double> poison, double %i.df, i64 0
  %i.dj = shufflevector <2 x double> %i.di, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dk = fmul <2 x double> %i.dj, %i.dh
  %i.dl = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !13
  %i.dn = fmul double %i.df, %i.dm
  %i.do = fadd <2 x double> %i.dc, %i.dk
  %i.dp = fadd double %.sroa.37.6, %i.dn
  %i.dq = fadd double %.1.6, %i.df
  br label %.loopexit45.7

.loopexit45.7:                                    ; preds = %.preheader.preheader.7, %.loopexit45.6
  %.sroa.37.7 = phi double [ %.sroa.37.6, %.loopexit45.6 ], [ %i.dp, %.preheader.preheader.7 ]
  %.1.7 = phi double [ %.1.6, %.loopexit45.6 ], [ %i.dq, %.preheader.preheader.7 ] ; 4 uses
  %i.dr = phi <2 x double> [ %i.dc, %.loopexit45.6 ], [ %i.do, %.preheader.preheader.7 ]
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.1.7, ptr %i.ds, align 8, !tbaa !56
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.du = insertelement <2 x double> poison, double %.1.7, i64 0
  %i.dv = shufflevector <2 x double> %i.du, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dw = fdiv <2 x double> %i.dr, %i.dv
  store <2 x double> %i.dw, ptr %i.dt, align 8, !tbaa !13
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dy = fdiv double %.sroa.37.7, %.1.7
  store double %i.dy, ptr %i.dx, align 8, !tbaa !13
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !56
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit45.7, %bb.b
  %.041 = phi double [ %i.ea, %bb.b ], [ %.1.7, %.loopexit45.7 ]
  ret double %.041
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @ic_test(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load double, ptr %i.a, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load double, ptr %i.d, align 8, !tbaa !36 ; 2 uses
  %i.f = load double, ptr %1, align 8, !tbaa !13
  %i.g = fsub double %i.b, %i.f
  %i.h = fdiv double %i.g, %i.e                   ; 2 uses
  %i.i = fcmp oge double %i.h, 0.000000e+00
  %i.j = fcmp olt double %i.h, 1.000000e+00
  %or.cond = and i1 %i.i, %i.j
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load <2 x double>, ptr %i.c, align 8, !tbaa !13
  %i.m = load <2 x double>, ptr %i.k, align 8, !tbaa !13
  %i.n = fsub <2 x double> %i.l, %i.m
  %i.o = insertelement <2 x double> poison, double %i.e, i64 0
  %i.p = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> zeroinitializer
  %i.q = fdiv <2 x double> %i.n, %i.p             ; 3 uses
  %i.r = extractelement <2 x double> %i.q, i64 0
  %i.s = fcmp oge double %i.r, 0.000000e+00
  %i.t = fcmp olt <2 x double> %i.q, splat (double 1.000000e+00) ; 2 uses
  %i.u = extractelement <2 x i1> %i.t, i64 0
  %or.cond3 = and i1 %i.s, %i.u
  %i.v = extractelement <2 x double> %i.q, i64 1
  %i.w = fcmp oge double %i.v, 0.000000e+00
  %i.x = extractelement <2 x i1> %i.t, i64 1
  %or.cond5 = and i1 %i.w, %i.x
  %i.y = select i1 %or.cond5, i1 %or.cond3, i1 false
  %narrow21 = select i1 %i.y, i1 %or.cond, i1 false
  %.2 = zext i1 %narrow21 to i32
  ret i32 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { i64, i64 } @intcoord1(double noundef %0, double noundef %1, double noundef %2, ptr noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = load double, ptr %3, align 8, !tbaa !13
  %i.b = fsub double %0, %i.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.d = load double, ptr %i.c, align 8, !tbaa !36 ; 3 uses
  %i.e = fdiv double %i.b, %i.d                   ; 3 uses
  %i.f = fcmp oge double %i.e, 0.000000e+00
  %i.g = fcmp olt double %i.e, 1.000000e+00
  %or.cond = and i1 %i.f, %i.g
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = fmul nnan double %i.e, f0x41D0000000000000
  %i.i = tail call double @llvm.floor.f64(double %i.h)
  %i.j = fptosi double %i.i to i32
  %i.k = zext i32 %i.j to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i64 [ %i.k, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.sroa.5.0 = phi i64 [ 4294967296, %bb.b ], [ 0, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load double, ptr %i.l, align 8, !tbaa !13
  %i.n = fsub double %1, %i.m
  %i.o = fdiv double %i.n, %i.d                   ; 3 uses
  %i.p = fcmp oge double %i.o, 0.000000e+00
  %i.q = fcmp olt double %i.o, 1.000000e+00
  %or.cond3 = and i1 %i.p, %i.q
  br i1 %or.cond3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = fmul nnan double %i.o, f0x41D0000000000000
  %i.s = tail call double @llvm.floor.f64(double %i.r)
  %i.t = fptosi double %i.s to i32
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw i64 %i.u, 32
  %i.w = or disjoint i64 %i.v, %.sroa.0.0
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.2.0 = phi i64 [ %i.w, %bb.d ], [ %.sroa.0.0, %bb.c ]
  %.sroa.5.1 = phi i64 [ %.sroa.5.0, %bb.d ], [ 0, %bb.c ]
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.y = load double, ptr %i.x, align 8, !tbaa !13
  %i.z = fsub double %2, %i.y
  %i.aa = fdiv double %i.z, %i.d                  ; 3 uses
  %i.ab = fcmp oge double %i.aa, 0.000000e+00
  %i.ac = fcmp olt double %i.aa, 1.000000e+00
  %or.cond5 = and i1 %i.ab, %i.ac
  br i1 %or.cond5, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = fmul nnan double %i.aa, f0x41D0000000000000
  %i.ae = tail call double @llvm.floor.f64(double %i.ad)
  %i.af = fptosi double %i.ae to i32
  %i.ag = zext i32 %i.af to i64
  %i.ah = or i64 %.sroa.5.1, %i.ag
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.3.8.insert.insert = phi i64 [ %i.ah, %bb.f ], [ 0, %bb.e ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.2.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.3.8.insert.insert, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nofree nounwind uwtable
define dso_local range(i32 0, 8) i32 @subindex(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load double, ptr %i.a, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load double, ptr %i.c, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load double, ptr %i.e, align 8, !tbaa !36 ; 3 uses
  %i.g = load double, ptr %1, align 8, !tbaa !13
  %i.h = fsub double %i.b, %i.g
  %i.i = fdiv double %i.h, %i.f                   ; 3 uses
  %i.j = fcmp oge double %i.i, 0.000000e+00
  %i.k = fcmp olt double %i.i, 1.000000e+00
  %or.cond = and i1 %i.j, %i.k
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 5) ; 0 uses
  tail call void @abort() #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load double, ptr %i.m, align 8, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load double, ptr %i.o, align 8, !tbaa !13
  %i.q = fsub double %i.n, %i.p
  %i.r = fdiv double %i.q, %i.f                   ; 3 uses
  %i.s = fcmp oge double %i.r, 0.000000e+00
  %i.t = fcmp olt double %i.r, 1.000000e+00
  %or.cond3 = and i1 %i.s, %i.t
  br i1 %or.cond3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 6) ; 0 uses
  tail call void @abort() #22
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load double, ptr %i.v, align 8, !tbaa !13
  %i.x = fsub double %i.d, %i.w
  %i.y = fdiv double %i.x, %i.f                   ; 3 uses
  %i.z = fcmp oge double %i.y, 0.000000e+00
  %i.aa = fcmp olt double %i.y, 1.000000e+00
  %or.cond5 = and i1 %i.z, %i.aa
  br i1 %or.cond5, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 7) ; 0 uses
  tail call void @abort() #22
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ac = fmul nnan double %i.r, f0x41D0000000000000
  %i.ad = tail call double @llvm.floor.f64(double %i.ac)
  %i.ae = fmul nnan double %i.i, f0x41D0000000000000
  %i.af = tail call double @llvm.floor.f64(double %i.ae)
  %i.ag = fmul nnan double %i.y, f0x41D0000000000000
  %i.ah = tail call double @llvm.floor.f64(double %i.ag)
  %3 = insertelement <3 x double> poison, double %i.ah, i64 0
  %4 = insertelement <3 x double> %3, double %i.ad, i64 1
  %5 = insertelement <3 x double> %4, double %i.af, i64 2
  %6 = fptosi <3 x double> %5 to <3 x i32>
  %7 = insertelement <3 x i32> poison, i32 %2, i64 0
  %8 = shufflevector <3 x i32> %7, <3 x i32> poison, <3 x i32> zeroinitializer
  %9 = and <3 x i32> %8, %6
  %10 = icmp ne <3 x i32> %9, zeroinitializer
  %11 = bitcast <3 x i1> %10 to i3
  %i.ai = zext i3 %11 to i32
  ret i32 %i.ai
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #16

; Function Attrs: nofree nounwind uwtable
define dso_local void @printtree(ptr noundef %0) local_unnamed_addr #11 {
bb.a:
  tail call void @ptree(ptr noundef %0, i32 noundef 0)
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @ptree(ptr noundef %0, i32 noundef %1) local_unnamed_addr #11 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %.loopexit.loopexit, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %i.aa, %.loopexit.loopexit ] ; 15 uses
  %.tr21 = phi i32 [ %1, %bb.a ], [ %i.l, %.loopexit.loopexit ] ; 4 uses
  %.not = icmp eq ptr %.tr, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %tailrecurse
  %i.a = load i16, ptr %.tr, align 8, !tbaa !47
  %i.b = icmp eq i16 %i.a, 1
  %i.c = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.d = load double, ptr %i.c, align 8, !tbaa !13 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.f = load double, ptr %i.e, align 8, !tbaa !13 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.h = load double, ptr %i.g, align 8, !tbaa !13 ; 2 uses
  br i1 %i.b, label %bb.c, label %.loopexit.loopexit

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %.tr21, ptr noundef nonnull %.tr, double noundef %i.d, double noundef %i.f, double noundef %i.h) ; 0 uses
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.b
  %i.j = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %.tr21, ptr noundef nonnull %.tr, double noundef %i.d, double noundef %i.f, double noundef %i.h) ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.tr, i64 48
  %i.l = add nsw i32 %.tr21, 1                    ; 8 uses
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !49
  tail call void @ptree(ptr noundef %i.m, i32 noundef %i.l)
  %i.n = getelementptr inbounds nuw i8, ptr %.tr, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !49
  tail call void @ptree(ptr noundef %i.o, i32 noundef %i.l)
  %i.p = getelementptr inbounds nuw i8, ptr %.tr, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !49
  tail call void @ptree(ptr noundef %i.q, i32 noundef %i.l)
  %i.r = getelementptr inbounds nuw i8, ptr %.tr, i64 72
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !49
  tail call void @ptree(ptr noundef %i.s, i32 noundef %i.l)
  %i.t = getelementptr inbounds nuw i8, ptr %.tr, i64 80
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !49
  tail call void @ptree(ptr noundef %i.u, i32 noundef %i.l)
  %i.v = getelementptr inbounds nuw i8, ptr %.tr, i64 88
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !49
  tail call void @ptree(ptr noundef %i.w, i32 noundef %i.l)
  %i.x = getelementptr inbounds nuw i8, ptr %.tr, i64 96
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !49
  tail call void @ptree(ptr noundef %i.y, i32 noundef %i.l)
  %i.z = getelementptr inbounds nuw i8, ptr %.tr, i64 104
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !49
  br label %tailrecurse

bb.d:                                             ; preds = %tailrecurse
  %i.ab = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %.tr21) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @dis_number(ptr noundef captures(address_is_null) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = load i32, ptr @nbody, align 4, !tbaa !4
  %i.b = sitofp i32 %i.a to double
  %i.c = load i32, ptr @NumNodes, align 4, !tbaa !4
  %i.d = sitofp i32 %i.c to double
  %i.e = fdiv double %i.b, %i.d
  %i.f = tail call double @llvm.ceil.f64(double %i.e)
  %i.g = fptosi double %i.f to i32
  %i.h = tail call i32 @dis2_number(ptr noundef %0, i32 noundef -1, i32 noundef %i.g) ; 0 uses
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #16

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @dis2_number(ptr noundef captures(address_is_null) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #10 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %.preheader, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %i.z, %.preheader ] ; 11 uses
  %.tr22 = phi i32 [ %1, %bb.a ], [ %i.x, %.preheader ] ; 3 uses
  %i.a = icmp eq ptr %.tr, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %tailrecurse
  %i.b = load i16, ptr %.tr, align 8, !tbaa !47
  %i.c = icmp eq i16 %i.b, 1
  br i1 %i.c, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.tr, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !49
  %i.f = tail call i32 @dis2_number(ptr noundef %i.e, i32 noundef %.tr22, i32 noundef %2)
  %i.g = getelementptr inbounds nuw i8, ptr %.tr, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !49
  %i.i = tail call i32 @dis2_number(ptr noundef %i.h, i32 noundef %i.f, i32 noundef %2)
  %i.j = getelementptr inbounds nuw i8, ptr %.tr, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !49
  %i.l = tail call i32 @dis2_number(ptr noundef %i.k, i32 noundef %i.i, i32 noundef %2)
  %i.m = getelementptr inbounds nuw i8, ptr %.tr, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !49
  %i.o = tail call i32 @dis2_number(ptr noundef %i.n, i32 noundef %i.l, i32 noundef %2)
  %i.p = getelementptr inbounds nuw i8, ptr %.tr, i64 80
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !49
  %i.r = tail call i32 @dis2_number(ptr noundef %i.q, i32 noundef %i.o, i32 noundef %2)
  %i.s = getelementptr inbounds nuw i8, ptr %.tr, i64 88
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !49
  %i.u = tail call i32 @dis2_number(ptr noundef %i.t, i32 noundef %i.r, i32 noundef %2)
  %i.v = getelementptr inbounds nuw i8, ptr %.tr, i64 96
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !49
  %i.x = tail call i32 @dis2_number(ptr noundef %i.w, i32 noundef %i.u, i32 noundef %2)
  %i.y = getelementptr inbounds nuw i8, ptr %.tr, i64 104
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !49
  br label %tailrecurse

bb.c:                                             ; preds = %bb.b
  %i.aa = add nsw i32 %.tr22, 1                   ; 2 uses
  %i.ab = sdiv i32 %i.aa, %2
  %i.ac = getelementptr inbounds nuw i8, ptr %.tr, i64 44
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !58
  br label %.loopexit

.loopexit:                                        ; preds = %tailrecurse, %bb.c
  %.0 = phi i32 [ %.tr22, %tailrecurse ], [ %i.aa, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #19

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #20 = { nounwind }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { noreturn nounwind }

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
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !11, i64 32}
!9 = !{!"", !6, i64 0, !10, i64 24, !11, i64 32, !6, i64 40, !6, i64 552}
!10 = !{!"double", !6, i64 0}
!11 = !{!"p1 _ZTS4node", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!10, !10, i64 0}
!14 = !{!6, !6, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"p1 _ZTS5bnode", !12, i64 0}
!17 = !{!18, !16, i64 128}
!18 = !{!"bnode", !19, i64 0, !10, i64 8, !6, i64 16, !5, i64 40, !5, i64 44, !6, i64 48, !6, i64 72, !6, i64 96, !10, i64 120, !16, i64 128, !16, i64 136}
!19 = !{!"short", !6, i64 0}
!20 = distinct !{!20, !21}
end_hunk_0
