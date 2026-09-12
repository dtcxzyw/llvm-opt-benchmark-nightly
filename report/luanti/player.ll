Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/player?download=true
inline.NumInlined: 761
inline.NumDeleted: 461
begin_hunk_0_@_ZN6Player9removeHudEj
define dso_local noundef ptr @_ZN6Player9removeHudEj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(416) %0, i32 noundef %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !54   ; 3 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !50   ; 4 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3
  %i.j = icmp ugt i64 %i.i, %i.a
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.a ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !53
  store ptr null, ptr %i.k, align 8, !tbaa !53
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.l, %bb.b ], [ null, %bb.a ]
  %i.m = icmp eq ptr %i.e, %i.d
  br i1 %i.m, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %i.n = phi ptr [ %i.o, %bb.d ], [ %i.d, %bb.c ]
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -8 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !53
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.lr.ph
  store ptr %i.o, ptr %i.c, align 8, !tbaa !54
  %i.r = icmp eq ptr %i.e, %i.o
  br i1 %i.r, label %.critedge, label %.lr.ph, !llvm.loop !150

.critedge:                                        ; preds = %.lr.ph, %bb.d, %bb.c
  ret ptr %.0
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN13PlayerControl19setMovementFromKeysEv(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(24) %0) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 4, !tbaa !65      ; 2 uses
  %i.b = zext i8 %i.a to i32                      ; 4 uses
  %i.c = trunc i8 %i.a to i1                      ; 3 uses
  %i.d = and i32 %i.b, 2
  %i.e = icmp ne i32 %i.d, 0                      ; 3 uses
  %i.f = and i32 %i.b, 4
  %.not = icmp eq i32 %i.f, 0
  %i.g = and i32 %i.b, 8
  %.not55 = icmp eq i32 %i.g, 0
  %or.cond = or i1 %i.e, %i.c                     ; 2 uses
  %i.h = and i32 %i.b, 12                         ; 4 uses
  %i.i = icmp ne i32 %i.h, 0
  %or.cond5 = or i1 %i.i, %or.cond
  br i1 %or.cond5, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %or.cond7 = and i1 %i.e, %i.c                   ; 2 uses
  %i.j = icmp eq i32 %i.h, 12
  %or.cond11 = and i1 %i.j, %or.cond7
  br i1 %or.cond11, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float 0.000000e+00, ptr %i.k, align 4, !tbaa !66
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.l = icmp eq i32 %i.h, 0
  %or.cond17.not = and i1 %i.l, %or.cond7
  br i1 %or.cond17.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float 0.000000e+00, ptr %i.m, align 4, !tbaa !66
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.n = icmp ne i32 %i.h, 12
  %or.cond23.not = or i1 %i.n, %or.cond
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %or.cond23.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store float 0.000000e+00, ptr %i.o, align 4, !tbaa !66
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  store float 1.000000e+00, ptr %i.o, align 4, !tbaa !66
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.g, %bb.h, %bb.e, %bb.a
  %.0 = select nsz i1 %i.c, float 1.000000e+00, float 0.000000e+00 ; 2 uses
  %i.p = fadd nsz float %.0, -1.000000e+00
  %.1 = select nsz i1 %i.e, float %i.p, float %.0 ; 2 uses
  %.053 = select nsz i1 %.not, float 0.000000e+00, float -1.000000e+00 ; 2 uses
  %i.q = fadd nsz float %.053, 1.000000e+00
  %.154 = select nsz i1 %.not55, float %.053, float %i.q ; 2 uses
  %i.r = fcmp nsz une float %.154, 0.000000e+00
  %i.s = fcmp nsz une float %.1, 0.000000e+00
  %or.cond25 = or i1 %i.s, %i.r
  br i1 %or.cond25, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.t = tail call nsz noundef float @llvm.atan2.f32(float %.154, float %.1)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.t, ptr %i.u, align 4, !tbaa !67
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 0, 1024) i32 @_ZNK13PlayerControl14getKeysPressedEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(24) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !68, !range !63, !noundef !64
  %i.c = shl nuw nsw i8 %i.b, 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.e = load i8, ptr %i.d, align 2, !tbaa !69, !range !63, !noundef !64
  %i.f = shl nuw nsw i8 %i.e, 5
  %i.g = or disjoint i8 %i.f, %i.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.i = load i8, ptr %i.h, align 1, !tbaa !70, !range !63, !noundef !64
  %i.j = shl nuw nsw i8 %i.i, 6
  %i.k = or disjoint i8 %i.g, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.m = load i8, ptr %i.l, align 1, !tbaa !71, !range !63, !noundef !64
  %i.n = shl nuw i8 %i.m, 7
  %i.o = or disjoint i8 %i.k, %i.n
  %i.p = zext i8 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.r = load i8, ptr %i.q, align 2, !tbaa !72, !range !63, !noundef !64
  %i.s = zext nneg i8 %i.r to i32
  %i.t = shl nuw nsw i32 %i.s, 8
  %i.u = or disjoint i32 %i.t, %i.p
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.w = load i8, ptr %i.v, align 4, !tbaa !73, !range !63, !noundef !64
  %i.x = zext nneg i8 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 9
  %i.z = or disjoint i32 %i.u, %i.y               ; 3 uses
  %i.aa = load i8, ptr %0, align 4, !tbaa !65     ; 2 uses
  %.not = icmp eq i8 %i.aa, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ab = zext i8 %i.aa to i32
  %i.ac = or i32 %i.z, %i.ab
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !66
  %i.af = fcmp nsz ogt float %i.ae, 1.000000e-03
  br i1 %i.af, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !67 ; 2 uses
  %i.ai = tail call nsz noundef float @llvm.fabs.f32(float %i.ah)
  %i.aj = fpext nsz float %i.ai to double         ; 2 uses
  %i.ak = fcmp nsz olt double %i.aj, f0x3FF2D97C7F3321D2
  %i.al = zext i1 %i.ak to i32
  %spec.select = or i32 %i.z, %i.al               ; 2 uses
  %i.am = fcmp nsz ogt double %i.aj, f0x3FFF6A7A2955385E
  %i.an = or i32 %spec.select, 2
  %.1 = select i1 %i.am, i32 %i.an, i32 %spec.select ; 2 uses
  %i.ao = fpext nsz float %i.ah to double
  %i.ap = fadd nsz double %i.ao, f0x3FF921FB54442D18
  %i.aq = fptrunc nsz double %i.ap to float       ; 2 uses
  %i.ar = fpext nsz float %i.aq to double         ; 2 uses
  %i.as = fcmp nsz ult double %i.ar, f0x400921FB54442D18
  %i.at = fadd nsz double %i.ar, f0xC01921FB54442D18
  %i.au = fptrunc nsz double %i.at to float
  %.0 = select nsz i1 %i.as, float %i.aq, float %i.au
  %i.av = tail call nsz noundef float @llvm.fabs.f32(float %.0)
  %i.aw = fpext nsz float %i.av to double         ; 2 uses
  %i.ax = fcmp nsz olt double %i.aw, f0x3FF2D97C7F3321D2
  %i.ay = or i32 %.1, 4
  %.2 = select i1 %i.ax, i32 %i.ay, i32 %.1       ; 2 uses
  %i.az = fcmp nsz ogt double %i.aw, f0x3FFF6A7A2955385E
  %i.ba = or i32 %.2, 8
  %.3 = select i1 %i.az, i32 %i.ba, i32 %.2
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.4 = phi i32 [ %i.ac, %bb.b ], [ %.3, %bb.d ], [ %i.z, %bb.c ]
  ret i32 %.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN13PlayerControl17unpackKeysPressedEj(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(24) initializes((0, 7)) %0, i32 noundef %1) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = trunc i32 %1 to i8
  %i.b = and i8 %i.a, 15
  store i8 %i.b, ptr %0, align 4, !tbaa !65
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %2 = lshr i32 %1, 4
  %3 = trunc i32 %2 to i8
  %i.d = and i8 %3, 1
  store i8 %i.d, ptr %i.c, align 1, !tbaa !68
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2
  %4 = lshr i32 %1, 5
  %5 = trunc i32 %4 to i8
  %i.f = and i8 %5, 1
  store i8 %i.f, ptr %i.e, align 2, !tbaa !69
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3
  %6 = lshr i32 %1, 6
  %7 = trunc i32 %6 to i8
  %i.h = and i8 %7, 1
  store i8 %i.h, ptr %i.g, align 1, !tbaa !70
  %i.i = and i32 %1, 128
  %i.j = icmp ne i32 %i.i, 0
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.l = zext i1 %i.j to i8
  store i8 %i.l, ptr %i.k, align 1, !tbaa !71
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.n = lshr i32 %1, 8
  %i.o = trunc i32 %i.n to i8
  %i.p = and i8 %i.o, 1
  store i8 %i.p, ptr %i.m, align 2, !tbaa !72
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.r = lshr i32 %1, 9
  %i.s = trunc i32 %i.r to i8
  %i.t = and i8 %i.s, 1
  store i8 %i.t, ptr %i.q, align 4, !tbaa !73
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local <2 x float> @_ZNK13PlayerControl11getMovementEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(24) %0) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load float, ptr %i.a, align 4, !tbaa !67
  %sincos = tail call nsz { float, float } @llvm.sincos.f32(float %i.b) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0
  %cos = extractvalue { float, float } %sincos, 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load float, ptr %i.c, align 4, !tbaa !66 ; 2 uses
  %i.e = fmul nsz float %i.d, %sin
  %i.f = fmul nsz float %i.d, %cos
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.e, i64 0
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.f, i64 1
  ret <2 x float> %.sroa.0.4.vec.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK21PlayerPhysicsOverrideeqERKS_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(56) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(56) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ac = load float, ptr %0, align 4, !tbaa !17
  %i.ad = load float, ptr %1, align 4, !tbaa !17
  %i.ae = fcmp nsz oeq float %i.ac, %i.ad
  br i1 %i.ae, label %bb.b, label %_ZSteqIJRKfS1_S1_RKbS3_S3_S1_S1_S1_S1_S1_S1_S1_S1_S1_S1_EJS1_S1_S1_S3_S3_S3_S1_S1_S1_S1_S1_S1_S1_S1_S1_S1_EEbRKSt5tupleIJDpT_EERKS4_IJDpT0_EE.exit

bb.b:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !17
  %i.ai = load float, ptr %i.af, align 4, !tbaa !17
  %i.aj = fcmp nsz oeq float %i.ah, %i.ai
  br i1 %i.aj, label %bb.c, label %_ZSteqIJRKfS1_S1_RKbS3_S3_S1_S1_S1_S1_S1_S1_S1_S1_S1_S1_EJS1_S1_S1_S3_S3_S3_S1_S1_S1_S1_S1_S1_S1_S1_S1_S1_EEbRKSt5tupleIJDpT_EERKS4_IJDpT0_EE.exit

bb.c:                                             ; preds = %bb.b
  %i.ak = load float, ptr %i.a, align 4, !tbaa !17
  %i.al = load float, ptr %i.o, align 4, !tbaa !17
  %i.am = fcmp nsz oeq float %i.ak, %i.al
  br i1 %i.am, label %bb.d, label %_ZSteqIJRKfS1_S1_RKbS3_S3_S1_S1_S1_S1_S1_S1_S1_S1_S1_S1_EJS1_S1_S1_S3_S3_S3_S1_S1_S1_S1_S1_S1_S1_S1_S1_S1_EEbRKSt5tupleIJDpT_EERKS4_IJDpT0_EE.exit

bb.d:                                             ; preds = %bb.c
  %i.an = load i8, ptr %i.b, align 4, !tbaa !151, !range !63, !noundef !64
  %i.ao = load i8, ptr %i.p, align 4, !tbaa !151, !range !63, !noundef !64
  %i.ap = icmp eq i8 %i.an, %i.ao
  br i1 %i.ap, label %bb.e, label %_ZSteqIJRKfS1_S1_RKbS3_S3_S1_S1_S1_S1_S1_S1_S1_S1_S1_S1_EJS1_S1_S1_S3_S3_S3_S1_S1_S1_S1_S1_S1_S1_S1_S1_S1_EEbRKSt5tupleIJDpT_EERKS4_IJDpT0_EE.exit

bb.e:                                             ; preds = %bb.d
  %i.aq = load i8, ptr %i.c, align 1, !tbaa !151, !range !63, !noundef !64
  %i.ar = load i8, ptr %i.q, align 1, !tbaa !151, !range !63, !noundef !64
  %i.as = icmp eq i8 %i.aq, %i.ar
  br i1 %i.as, label %bb.f, label %_ZSteqIJRKfS1_S1_RKbS3_S3_S1_S1_S1_S1_S1_S1_S1_S1_S1_S1_EJS1_S1_S1_S3_S3_S3_S1_S1_S1_S1_S1_S1_S1_S1_S1_S1_EEbRKSt5tupleIJDpT_EERKS4_IJDpT0_EE.exit

bb.f:                                             ; preds = %bb.e
  %i.at = load i8, ptr %i.d, align 2, !tbaa !151, !range !63, !noundef !64
  %i.au = load i8, ptr %i.r, align 2, !tbaa !151, !range !63, !noundef !64
  %i.av = icmp eq i8 %i.at, %i.au
  br i1 %i.av, label %bb.g, label %_ZSteqIJRKfS1_S1_RKbS3_S3_S1_S1_S1_S1_S1_S1_S1_S1_S1_S1_EJS1_S1_S1_S3_S3_S3_S1_S1_S1_S1_S1_S1_S1_S1_S1_S1_EEbRKSt5tupleIJDpT_EERKS4_IJDpT0_EE.exit

bb.g:                                             ; preds = %bb.f
  %i.aw = load float, ptr %i.e, align 4, !tbaa !17
  %i.ax = load float, ptr %i.s, align 4, !tbaa !17
  %i.ay = fcmp nsz oeq float %i.aw, %i.ax
  br i1 %i.ay, label %bb.h, label %_ZSteqIJRKfS1_S1_RKbS3_S3_S1_S1_S1_S1_S1_S1_S1_S1_S1_S1_EJS1_S1_S1_S3_S3_S3_S1_S1_S1_S1_S1_S1_S1_S1_S1_S1_EEbRKSt5tupleIJDpT_EERKS4_IJDpT0_EE.exit

bb.h:                                             ; preds = %bb.g
  %i.az = load float, ptr %i.f, align 4, !tbaa !17
  %i.ba = load float, ptr %i.t, align 4, !tbaa !17
  %i.bb = fcmp nsz oeq float %i.az, %i.ba
  br i1 %i.bb, label %bb.i, label %_ZSteqIJRKfS1_S1_RKbS3_S3_S1_S1_S1_S1_S1_S1_S1_S1_S1_S1_EJS1_S1_S1_S3_S3_S3_S1_S1_S1_S1_S1_S1_S1_S1_S1_S1_EEbRKSt5tupleIJDpT_EERKS4_IJDpT0_EE.exit

bb.i:                                             ; preds = %bb.h
  %i.bc = load float, ptr %i.g, align 4, !tbaa !17
  %i.bd = load float, ptr %i.u, align 4, !tbaa !17
  %i.be = fcmp nsz oeq float %i.bc, %i.bd
  br i1 %i.be, label %bb.j, label %_ZSteqIJRKfS1_S1_RKbS3_S3_S1_S1_S1_S1_S1_S1_S1_S1_S1_S1_EJS1_S1_S1_S3_S3_S3_S1_S1_S1_S1_S1_S1_S1_S1_S1_S1_EEbRKSt5tupleIJDpT_EERKS4_IJDpT0_EE.exit

bb.j:                                             ; preds = %bb.i
  %i.bf = load float, ptr %i.h, align 4, !tbaa !17
  %i.bg = load float, ptr %i.v, align 4, !tbaa !17
  %i.bh = fcmp nsz oeq float %i.bf, %i.bg
  br i1 %i.bh, label %bb.k, label %_ZSteqIJRKfS1_S1_RKbS3_S3_S1_S1_S1_S1_S1_S1_S1_S1_S1_S1_EJS1_S1_S1_S3_S3_S3_S1_S1_S1_S1_S1_S1_S1_S1_S1_S1_EEbRKSt5tupleIJDpT_EERKS4_IJDpT0_EE.exit

bb.k:                                             ; preds = %bb.j
  %i.bi = load float, ptr %i.i, align 4, !tbaa !17
  %i.bj = load float, ptr %i.w, align 4, !tbaa !17
  %i.bk = fcmp nsz oeq float %i.bi, %i.bj
  br i1 %i.bk, label %bb.l, label %_ZSteqIJRKfS1_S1_RKbS3_S3_S1_S1_S1_S1_S1_S1_S1_S1_S1_S1_EJS1_S1_S1_S3_S3_S3_S1_S1_S1_S1_S1_S1_S1_S1_S1_S1_EEbRKSt5tupleIJDpT_EERKS4_IJDpT0_EE.exit

bb.l:                                             ; preds = %bb.k
  %i.bl = load float, ptr %i.j, align 4, !tbaa !17
  %i.bm = load float, ptr %i.x, align 4, !tbaa !17
  %i.bn = fcmp nsz oeq float %i.bl, %i.bm
  br i1 %i.bn, label %bb.m, label %_ZSteqIJRKfS1_S1_RKbS3_S3_S1_S1_S1_S1_S1_S1_S1_S1_S1_S1_EJS1_S1_S1_S3_S3_S3_S1_S1_S1_S1_S1_S1_S1_S1_S1_S1_EEbRKSt5tupleIJDpT_EERKS4_IJDpT0_EE.exit

bb.m:                                             ; preds = %bb.l
  %i.bo = load float, ptr %i.k, align 4, !tbaa !17
  %i.bp = load float, ptr %i.y, align 4, !tbaa !17
  %i.bq = fcmp nsz oeq float %i.bo, %i.bp
  br i1 %i.bq, label %bb.n, label %_ZSteqIJRKfS1_S1_RKbS3_S3_S1_S1_S1_S1_S1_S1_S1_S1_S1_S1_EJS1_S1_S1_S3_S3_S3_S1_S1_S1_S1_S1_S1_S1_S1_S1_S1_EEbRKSt5tupleIJDpT_EERKS4_IJDpT0_EE.exit

bb.n:                                             ; preds = %bb.m
  %i.br = load float, ptr %i.l, align 4, !tbaa !17
  %i.bs = load float, ptr %i.z, align 4, !tbaa !17
  %i.bt = fcmp nsz oeq float %i.br, %i.bs
  br i1 %i.bt, label %bb.o, label %_ZSteqIJRKfS1_S1_RKbS3_S3_S1_S1_S1_S1_S1_S1_S1_S1_S1_S1_EJS1_S1_S1_S3_S3_S3_S1_S1_S1_S1_S1_S1_S1_S1_S1_S1_EEbRKSt5tupleIJDpT_EERKS4_IJDpT0_EE.exit

bb.o:                                             ; preds = %bb.n
  %i.bu = load float, ptr %i.m, align 4, !tbaa !17
  %i.bv = load float, ptr %i.aa, align 4, !tbaa !17
  %i.bw = fcmp nsz oeq float %i.bu, %i.bv
  br i1 %i.bw, label %bb.p, label %_ZSteqIJRKfS1_S1_RKbS3_S3_S1_S1_S1_S1_S1_S1_S1_S1_S1_S1_EJS1_S1_S1_S3_S3_S3_S1_S1_S1_S1_S1_S1_S1_S1_S1_S1_EEbRKSt5tupleIJDpT_EERKS4_IJDpT0_EE.exit

bb.p:                                             ; preds = %bb.o
  %i.bx = load float, ptr %i.n, align 4, !tbaa !17
  %i.by = load float, ptr %i.ab, align 4, !tbaa !17
  %i.bz = fcmp nsz oeq float %i.bx, %i.by
  br label %_ZSteqIJRKfS1_S1_RKbS3_S3_S1_S1_S1_S1_S1_S1_S1_S1_S1_S1_EJS1_S1_S1_S3_S3_S3_S1_S1_S1_S1_S1_S1_S1_S1_S1_S1_EEbRKSt5tupleIJDpT_EERKS4_IJDpT0_EE.exit

_ZSteqIJRKfS1_S1_RKbS3_S3_S1_S1_S1_S1_S1_S1_S1_S1_S1_S1_EJS1_S1_S1_S3_S3_S3_S1_S1_S1_S1_S1_S1_S1_S1_S1_S1_EEbRKSt5tupleIJDpT_EERKS4_IJDpT0_EE.exit: ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %i.ca = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.e ], [ false, %bb.f ], [ false, %bb.g ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.k ], [ false, %bb.l ], [ false, %bb.m ], [ false, %bb.n ], [ false, %bb.o ], [ %i.bz, %bb.p ]
  ret i1 %i.ca
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE18_M_assign_elementsIRKSL_EEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::__detail::_ReuseOrAllocNode", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !74   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !152
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !74   ; 5 uses
  %.not = icmp eq i64 %i.b, %i.g
  %i.h = load ptr, ptr %0, align 8, !tbaa !75     ; 2 uses
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %i.g, 1
  br i1 %i.i, label %bb.c, label %bb.d, !prof !76

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.j, align 8, !tbaa !77
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.d:                                             ; preds = %bb.b
  %i.k = icmp ugt i64 %i.g, 1152921504606846975
end_hunk_0
