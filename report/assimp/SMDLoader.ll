inline.NumInlined: 1538
inline.NumDeleted: 693
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN6Assimp11SMDImporter20ParseSkeletonElementEPKcPS2_S2_i:bb.a
  %i.em = load ptr, ptr %i.e, align 8
  %i.en = call noundef zeroext i1 @_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_(ptr noundef nonnull align 8 dereferenceable(226) %0, ptr noundef %i.em, ptr noundef nonnull %i.e, ptr noundef %3) ; 0 uses
  %i.eo = load ptr, ptr %i.e, align 8
  br label %bb.bh

bb.be:                                            ; preds = %bb.bc
  %i.ep = load ptr, ptr %i.e, align 8
  %i.eq = call noundef zeroext i1 @_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf(ptr nonnull align 8 poison, ptr noundef %i.ep, ptr noundef nonnull %i.e, ptr noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %i.i)
  br i1 %i.eq, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @_ZN6Assimp11SMDImporter15LogErrorNoThrowEPKc(ptr noundef nonnull align 8 dereferenceable(226) %0, ptr noundef nonnull @.str.47)
  %i.er = load ptr, ptr %i.e, align 8
  %i.es = call noundef zeroext i1 @_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_(ptr noundef nonnull align 8 dereferenceable(226) %0, ptr noundef %i.er, ptr noundef nonnull %i.e, ptr noundef %3) ; 0 uses
  %i.et = load ptr, ptr %i.e, align 8
  br label %bb.bh

bb.bg:                                            ; preds = %bb.be
  %i.eu = load float, ptr %6, align 8
  %i.ev = load float, ptr %i.h, align 4
  %i.ew = load float, ptr %i.i, align 8
  %i.ex = call noundef nonnull align 4 dereferenceable(64) ptr @_ZN12aiMatrix4x4tIfE18FromEulerAnglesXYZEfff(ptr noundef nonnull align 4 dereferenceable(64) %i.ca, float noundef %i.eu, float noundef %i.ev, float noundef %i.ew) ; 0 uses
  %i.ey = load float, ptr %5, align 8
  %i.ez = load float, ptr %i.f, align 4
  %i.fa = load float, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  store float 1.000000e+00, ptr %7, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 12
  store float %i.ey, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store float 0.000000e+00, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 28
  store float %i.ez, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 0, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.9111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 40
  store float 1.000000e+00, ptr %.sroa.9111.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 44
  store float %i.fa, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.12.0..sroa_idx, i8 0, i64 12, i1 false)
  %.sroa.12112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 60
  store float 1.000000e+00, ptr %.sroa.12112.0..sroa_idx, align 4
  %i.fb = call noundef nonnull align 4 dereferenceable(64) ptr @_ZN12aiMatrix4x4tIfEmLERKS0_(ptr noundef nonnull align 4 dereferenceable(64) %7, ptr noundef nonnull align 4 dereferenceable(64) %i.ca) ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ca, ptr noundef nonnull align 4 dereferenceable(64) %7, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.fc = getelementptr inbounds i8, ptr %i.bz, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.fc, ptr noundef nonnull align 8 dereferenceable(12) %5, i64 12, i1 false)
  %i.fd = getelementptr inbounds i8, ptr %i.bz, i64 -20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.fd, ptr noundef nonnull align 8 dereferenceable(12) %6, i64 12, i1 false)
  %i.fe = load ptr, ptr %i.e, align 8
  %i.ff = call noundef zeroext i1 @_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_(ptr noundef nonnull align 8 dereferenceable(226) %0, ptr noundef %i.fe, ptr noundef nonnull %i.e, ptr noundef %3) ; 0 uses
  %i.fg = load ptr, ptr %i.e, align 8
  br label %bb.bh

bb.bh:                                            ; preds = %_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit63, %_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit82, %_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit101, %_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf.exit109, %bb.bd, %bb.bf, %bb.bg, %_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit45, %_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit
  %.1.lcssa.i.i61.sink = phi ptr [ %.1.lcssa.i.i61, %_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit63 ], [ %.1.lcssa.i.i80, %_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit82 ], [ %.1.lcssa.i.i99, %_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit101 ], [ %i.ej, %_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf.exit109 ], [ %i.eo, %bb.bd ], [ %i.et, %bb.bf ], [ %i.fg, %bb.bg ], [ %.1.lcssa.i.i43, %_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit45 ], [ %.1.lcssa.i.i, %_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit ]
  store ptr %.1.lcssa.i.i61.sink, ptr %2, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZN6Assimp11SMDImporter16ParseUnsignedIntEPKcPS2_S2_Rj(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr noundef %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %4) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %3 to i64
  %i.c = sub i64 %i.b, %i.a
  %scevgep.i.i = getelementptr i8, ptr %1, i64 %i.c ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.0.i.i = phi ptr [ %1, %bb.a ], [ %i.e, %bb.d ] ; 4 uses
  %i.d = load i8, ptr %.0.i.i, align 1            ; 2 uses
  switch i8 %i.d, label %.critedge.i.i [
    i8 32, label %bb.c
    i8 9, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %.not.i.i = icmp eq ptr %.0.i.i, %3
  br i1 %.not.i.i, label %.critedge.i.ithread-pre-split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  br label %bb.b, !llvm.loop !107

.critedge.i.ithread-pre-split:                    ; preds = %bb.c
  %.pr = load i8, ptr %scevgep.i.i, align 1
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.b, %.critedge.i.ithread-pre-split
  %i.f = phi i8 [ %.pr, %.critedge.i.ithread-pre-split ], [ %i.d, %bb.b ] ; 4 uses
  %.0.lcssa.i.i = phi ptr [ %scevgep.i.i, %.critedge.i.ithread-pre-split ], [ %.0.i.i, %bb.b ] ; 2 uses
  %i.g = icmp ult i8 %i.f, 14
  br i1 %i.g, label %switch.hole_check, label %bb.e

bb.e:                                             ; preds = %switch.hole_check, %.critedge.i.i
  %i.h = add i8 %i.f, -58
  %or.cond11.i = icmp ult i8 %i.h, -10
  br i1 %or.cond11.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %i.i = phi i8 [ %i.n, %.lr.ph.i ], [ %i.f, %bb.e ]
  %.013.i = phi i32 [ %i.l, %.lr.ph.i ], [ 0, %bb.e ]
  %.0812.i = phi ptr [ %i.m, %.lr.ph.i ], [ %.0.lcssa.i.i, %bb.e ]
  %i.j = mul i32 %.013.i, 10
  %narrow.i = add nsw i8 %i.i, -48
  %i.k = zext nneg i8 %narrow.i to i32
  %i.l = add i32 %i.j, %i.k                       ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0812.i, i64 1 ; 3 uses
  %i.n = load i8, ptr %i.m, align 1               ; 2 uses
  %i.o = add i8 %i.n, -58
  %or.cond.i = icmp ult i8 %i.o, -10
  br i1 %or.cond.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !108

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.e
  %.08.lcssa.i = phi ptr [ %.0.lcssa.i.i, %bb.e ], [ %i.m, %.lr.ph.i ]
  %.0.lcssa.i = phi i32 [ 0, %bb.e ], [ %i.l, %.lr.ph.i ]
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %_ZN6Assimp9strtoul10EPKcPS1_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i
  store ptr %.08.lcssa.i, ptr %2, align 8
  br label %_ZN6Assimp9strtoul10EPKcPS1_.exit

_ZN6Assimp9strtoul10EPKcPS1_.exit:                ; preds = %._crit_edge.i, %bb.f
  store i32 %.0.lcssa.i, ptr %4, align 4
  br label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit

switch.hole_check:                                ; preds = %.critedge.i.i
  %switch.maskindex = zext nneg i8 %i.f to i16
  %switch.shifted = lshr i16 13313, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  br i1 %switch.lobit, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit, label %bb.e

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit:         ; preds = %switch.hole_check, %_ZN6Assimp9strtoul10EPKcPS1_.exit
  %i.p = phi i1 [ true, %_ZN6Assimp9strtoul10EPKcPS1_.exit ], [ false, %switch.hole_check ]
  ret i1 %i.p
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %3 to i64
  %i.c = sub i64 %i.b, %i.a
  %scevgep.i.i = getelementptr i8, ptr %1, i64 %i.c ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.0.i.i = phi ptr [ %1, %bb.a ], [ %i.e, %bb.d ] ; 4 uses
  %i.d = load i8, ptr %.0.i.i, align 1            ; 2 uses
  switch i8 %i.d, label %.critedge.i.i [
    i8 32, label %bb.c
    i8 9, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %.not.i.i = icmp eq ptr %.0.i.i, %3
  br i1 %.not.i.i, label %.critedge.i.ithread-pre-split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  br label %bb.b, !llvm.loop !107

.critedge.i.ithread-pre-split:                    ; preds = %bb.c
  %.pr = load i8, ptr %scevgep.i.i, align 1
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.b, %.critedge.i.ithread-pre-split
  %i.f = phi i8 [ %.pr, %.critedge.i.ithread-pre-split ], [ %i.d, %bb.b ] ; 2 uses
  %.0.lcssa.i.i = phi ptr [ %scevgep.i.i, %.critedge.i.ithread-pre-split ], [ %.0.i.i, %bb.b ]
  %i.g = icmp ult i8 %i.f, 14
  br i1 %i.g, label %switch.hole_check, label %bb.e

bb.e:                                             ; preds = %switch.hole_check, %.critedge.i.i
  %i.h = tail call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i.i, ptr noundef nonnull align 4 dereferenceable(4) %4, i1 noundef zeroext true)
  store ptr %i.h, ptr %2, align 8
  br label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit

switch.hole_check:                                ; preds = %.critedge.i.i
  %switch.maskindex = zext nneg i8 %i.f to i16
  %switch.shifted = lshr i16 13313, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  br i1 %switch.lobit, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit, label %bb.e

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit:         ; preds = %switch.hole_check, %bb.e
  %i.i = phi i1 [ true, %bb.e ], [ false, %switch.hole_check ]
  ret i1 %i.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(64) ptr @_ZN12aiMatrix4x4tIfE18FromEulerAnglesXYZEfff(ptr noundef nonnull align 4 dereferenceable(64) %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %i.a = tail call noundef float @cosf(float noundef %1) #27 ; 5 uses
  %i.b = tail call noundef float @sinf(float noundef %1) #27 ; 5 uses
  %i.c = tail call noundef float @cosf(float noundef %2) #27 ; 4 uses
  %i.d = tail call noundef float @sinf(float noundef %2) #27 ; 3 uses
  %i.e = tail call noundef float @cosf(float noundef %3) #27 ; 4 uses
  %i.f = tail call noundef float @sinf(float noundef %3) #27 ; 4 uses
  %i.g = fmul float %i.c, %i.e
  store float %i.g, ptr %0, align 4
  %i.h = fmul float %i.d, %i.e                    ; 2 uses
  %i.i = fneg float %i.a
  %4 = fmul float %i.f, %i.i
  %5 = tail call float @llvm.fmuladd.f32(float %i.h, float %i.b, float %4)
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %5, ptr %6, align 4
  %7 = fmul float %i.a, %i.h
  %8 = tail call float @llvm.fmuladd.f32(float %i.f, float %i.b, float %7)
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %8, ptr %9, align 4
  %i.j = fmul float %i.c, %i.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.j, ptr %i.k, align 4
  %i.l = fmul float %i.d, %i.f                    ; 2 uses
  %10 = fmul float %i.b, %i.l
  %11 = tail call float @llvm.fmuladd.f32(float %i.e, float %i.a, float %10)
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %11, ptr %12, align 4
  %13 = fneg float %i.b
  %14 = fmul float %i.e, %13
  %15 = tail call float @llvm.fmuladd.f32(float %i.l, float %i.a, float %14)
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %15, ptr %16, align 4
  %i.m = fneg float %i.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.m, ptr %i.n, align 4
  %i.o = fmul float %i.b, %i.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.o, ptr %i.p, align 4
  %i.q = fmul float %i.a, %i.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.q, ptr %i.r, align 4
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i1 noundef zeroext %2) local_unnamed_addr #13 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  store ptr %0, ptr %i.a, align 8
  %i.c = load i8, ptr %0, align 1                 ; 3 uses
  %i.d = icmp eq i8 %i.c, 45                      ; 2 uses
  switch i8 %i.c, label %bb.c [
    i8 45, label %bb.b
    i8 43, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  store ptr %i.e, ptr %i.a, align 8
  %.pre = load i8, ptr %i.e, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi i8 [ %i.c, %bb.a ], [ %.pre, %bb.b ] ; 8 uses
  %i.g = phi ptr [ %0, %bb.a ], [ %i.e, %bb.b ]   ; 10 uses
  switch i8 %i.f, label %bb.j [
    i8 78, label %bb.d
    i8 110, label %bb.d
    i8 73, label %bb.g
    i8 105, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.h = tail call i32 @strncasecmp(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.69, i64 noundef 3) #31
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store float +qnan, ptr %1, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  br label %bb.ab

bb.f:                                             ; preds = %bb.d
  %cond = icmp eq i8 %i.f, 105
  br i1 %cond, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f, %bb.c, %bb.c
  %i.k = tail call i32 @strncasecmp(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.70, i64 noundef 3) #31
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %storemerge = select i1 %i.d, float -inf, float +inf
  store float %storemerge, ptr %1, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 3 ; 4 uses
  %i.n = load i8, ptr %i.m, align 1
  switch i8 %i.n, label %bb.ab [
    i8 73, label %bb.i
    i8 105, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h
  %i.o = tail call i32 @strncasecmp(ptr noundef nonnull %i.m, ptr noundef nonnull @.str.71, i64 noundef 5) #31
  %i.p = icmp eq i32 %i.o, 0
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %spec.select = select i1 %i.p, ptr %i.q, ptr %i.m
  br label %bb.ab

bb.j:                                             ; preds = %bb.c
  %i.r = add i8 %i.f, -48
  %or.cond44 = icmp ult i8 %i.r, 10
  br i1 %or.cond44, label %._crit_edge, label %.thread

.thread:                                          ; preds = %bb.f, %bb.g, %bb.j
  %i.s = icmp eq i8 %i.f, 46
  %i.t = icmp eq i8 %i.f, 44
  %or.cond45 = and i1 %2, %i.t
  %or.cond = or i1 %i.s, %or.cond45
  br i1 %or.cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.thread
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.v = load i8, ptr %i.u, align 1
  %i.w = add i8 %i.v, -48
  %or.cond46 = icmp ult i8 %i.w, 10
  br i1 %or.cond46, label %._crit_edge, label %bb.l

bb.l:                                             ; preds = %.thread, %bb.k
  %i.x = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.y = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #31
  %i.z = trunc i64 %i.y to i32
  invoke void @_Z18ai_str_toprintableB5cxx11PKcic(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull %i.g, i32 noundef %i.z, i8 noundef signext 63)
          to label %bb.m unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN17DeadlyImportErrorC2IJRA22_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA82_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 1 dereferenceable(22) @.str.72, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(82) @.str.73)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
          to label %bb.ac unwind label %bb.o

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.l
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.m
  %.026 = phi i1 [ false, %bb.n ], [ true, %bb.m ] ; 2 uses
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ac = load ptr, ptr %3, align 8               ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.af = load i64, ptr %i.ad, align 8
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br i1 %.026, label %bb.p, label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br i1 %.026, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn57 = phi { ptr, i32 } [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.x) #27
  br label %bb.q

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn56 = phi { ptr, i32 } [ %.pn57, %bb.p ], [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn56

._crit_edge:                                      ; preds = %bb.j, %bb.k
  %.not = icmp eq i8 %i.f, 46
  %.not43 = icmp eq i8 %i.f, 44
  %or.cond47 = and i1 %2, %.not43
  %or.cond51 = or i1 %.not, %or.cond47
  br i1 %or.cond51, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge
  %i.ah = call noundef i64 @_ZN6Assimp12strtoul10_64I17DeadlyImportErrorEEmPKcPS3_Pj(ptr noundef nonnull %i.g, ptr noundef nonnull %i.a, ptr noundef null)
  %i.ai = uitofp i64 %i.ah to float
  %.pre59 = load ptr, ptr %i.a, align 8           ; 2 uses
  %.pre60 = load i8, ptr %.pre59, align 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge
  %i.aj = phi i8 [ %.pre60, %bb.r ], [ %i.f, %._crit_edge ] ; 2 uses
  %i.ak = phi ptr [ %.pre59, %bb.r ], [ %i.g, %._crit_edge ] ; 3 uses
  %.025 = phi float [ %i.ai, %bb.r ], [ 0.000000e+00, %._crit_edge ] ; 4 uses
  %i.al = icmp eq i8 %i.aj, 46                    ; 2 uses
  %i.am = icmp eq i8 %i.aj, 44
  %or.cond48 = and i1 %2, %i.am
  %or.cond52 = or i1 %i.al, %or.cond48
  br i1 %or.cond52, label %bb.t, label %.thread58

bb.t:                                             ; preds = %bb.s
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 1 ; 5 uses
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = add i8 %i.ao, -48
  %or.cond49 = icmp ult i8 %i.ap, 10
  br i1 %or.cond49, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store ptr %i.an, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i32 15, ptr %i.b, align 4
  %i.aq = call noundef i64 @_ZN6Assimp12strtoul10_64I17DeadlyImportErrorEEmPKcPS3_Pj(ptr noundef nonnull %i.an, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %i.ar = uitofp i64 %i.aq to double
  %i.as = load i32, ptr %i.b, align 4
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr @_ZN6AssimpL15fast_atof_tableE, i64 %i.at
  %i.av = load double, ptr %i.au, align 8
  %i.aw = fmul double %i.av, %i.ar
  %i.ax = fptrunc double %i.aw to float
  %i.ay = fadd float %.025, %i.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %.pre61 = load ptr, ptr %i.a, align 8
  br label %.thread58

bb.v:                                             ; preds = %bb.t
  br i1 %i.al, label %bb.w, label %.thread58

bb.w:                                             ; preds = %bb.v
end_hunk_0
begin_hunk_1_@_ZNSt6vectorISt4pairIjfESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_:bb.a
  br label %vector.body220

vector.body220:                                   ; preds = %vector.body220, %vector.ph215
  %index221 = phi i64 [ 0, %vector.ph215 ], [ %index.next223, %vector.body220 ] ; 2 uses
  %i.ek = shl i64 %index221, 3
  %next.gep222 = getelementptr i8, ptr %i.ef, i64 %i.ek ; 2 uses
  %i.el = getelementptr i8, ptr %next.gep222, i64 16
  store <2 x i64> %broadcast.splat219, ptr %next.gep222, align 4
  store <2 x i64> %broadcast.splat219, ptr %i.el, align 4
  %index.next223 = add nuw i64 %index221, 4       ; 2 uses
  %i.em = icmp eq i64 %index.next223, %n.vec217
  br i1 %i.em, label %middle.block224, label %vector.body220, !llvm.loop !254

middle.block224:                                  ; preds = %vector.body220
  %cmp.n225 = icmp eq i64 %2, %n.vec217
  br i1 %cmp.n225, label %_ZSt24__uninitialized_fill_n_aIPSt4pairIjfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit88, label %.lr.ph.i.i.i.i83.preheader

.lr.ph.i.i.i.i83.preheader:                       ; preds = %_ZNSt12_Vector_baseISt4pairIjfESaIS1_EE11_M_allocateEm.exit, %middle.block224
  %.09.i.i.i.i84.ph = phi ptr [ %i.ef, %_ZNSt12_Vector_baseISt4pairIjfESaIS1_EE11_M_allocateEm.exit ], [ %i.ei, %middle.block224 ]
  %.068.i.i.i.i85.ph = phi i64 [ %2, %_ZNSt12_Vector_baseISt4pairIjfESaIS1_EE11_M_allocateEm.exit ], [ %i.ej, %middle.block224 ]
  br label %.lr.ph.i.i.i.i83

.lr.ph.i.i.i.i83:                                 ; preds = %.lr.ph.i.i.i.i83.preheader, %.lr.ph.i.i.i.i83
  %.09.i.i.i.i84 = phi ptr [ %i.eo, %.lr.ph.i.i.i.i83 ], [ %.09.i.i.i.i84.ph, %.lr.ph.i.i.i.i83.preheader ] ; 2 uses
  %.068.i.i.i.i85 = phi i64 [ %i.en, %.lr.ph.i.i.i.i83 ], [ %.068.i.i.i.i85.ph, %.lr.ph.i.i.i.i83.preheader ]
  store i64 %i.eg, ptr %.09.i.i.i.i84, align 4
  %i.en = add i64 %.068.i.i.i.i85, -1             ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i84, i64 8
  %.not.i.i.i.i86 = icmp eq i64 %i.en, 0
  br i1 %.not.i.i.i.i86, label %_ZSt24__uninitialized_fill_n_aIPSt4pairIjfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit88, label %.lr.ph.i.i.i.i83, !llvm.loop !255

_ZSt24__uninitialized_fill_n_aIPSt4pairIjfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit88: ; preds = %.lr.ph.i.i.i.i83, %middle.block224
  %.not11.i.i.i.i.i89 = icmp eq ptr %i.dp, %1
  br i1 %.not11.i.i.i.i.i89, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIjfES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i90.preheader

.lr.ph.i.i.i.i.i90.preheader:                     ; preds = %_ZSt24__uninitialized_fill_n_aIPSt4pairIjfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit88
  %i.ep = sub i64 %i.dz, %i.dq
  %i.eq = add i64 %i.ep, -8                       ; 2 uses
  %i.er = lshr i64 %i.eq, 3
  %i.es = add nuw nsw i64 %i.er, 1                ; 2 uses
  %min.iters.check231 = icmp ult i64 %i.eq, 72
  %i.et = sub i64 %i.dq, %i.ee
  %diff.check229 = icmp ugt i64 %i.et, -32
  %or.cond265 = or i1 %min.iters.check231, %diff.check229
  br i1 %or.cond265, label %.lr.ph.i.i.i.i.i90.preheader267, label %vector.ph232

vector.ph232:                                     ; preds = %.lr.ph.i.i.i.i.i90.preheader
  %n.vec234 = and i64 %i.es, 4611686018427387900  ; 3 uses
  %i.eu = shl i64 %n.vec234, 3                    ; 2 uses
  %i.ev = getelementptr i8, ptr %i.ed, i64 %i.eu  ; 2 uses
  %i.ew = getelementptr i8, ptr %i.dp, i64 %i.eu
  br label %vector.body235

vector.body235:                                   ; preds = %vector.body235, %vector.ph232
  %index236 = phi i64 [ 0, %vector.ph232 ], [ %index.next241, %vector.body235 ] ; 2 uses
  %i.ex = shl i64 %index236, 3                    ; 2 uses
  %next.gep237 = getelementptr i8, ptr %i.ed, i64 %i.ex ; 2 uses
  %next.gep238 = getelementptr i8, ptr %i.dp, i64 %i.ex ; 2 uses
  %i.ey = getelementptr i8, ptr %next.gep238, i64 16
  %wide.load239 = load <2 x i64>, ptr %next.gep238, align 4
  %wide.load240 = load <2 x i64>, ptr %i.ey, align 4
  %i.ez = getelementptr i8, ptr %next.gep237, i64 16
  store <2 x i64> %wide.load239, ptr %next.gep237, align 4
  store <2 x i64> %wide.load240, ptr %i.ez, align 4
  %index.next241 = add nuw i64 %index236, 4       ; 2 uses
  %i.fa = icmp eq i64 %index.next241, %n.vec234
  br i1 %i.fa, label %middle.block242, label %vector.body235, !llvm.loop !256

middle.block242:                                  ; preds = %vector.body235
  %cmp.n243 = icmp eq i64 %i.es, %n.vec234
  br i1 %cmp.n243, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIjfES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i90.preheader267

.lr.ph.i.i.i.i.i90.preheader267:                  ; preds = %.lr.ph.i.i.i.i.i90.preheader, %middle.block242
  %.013.i.i.i.i.i91.ph = phi ptr [ %i.ed, %.lr.ph.i.i.i.i.i90.preheader ], [ %i.ev, %middle.block242 ]
  %.sroa.08.012.i.i.i.i.i92.ph = phi ptr [ %i.dp, %.lr.ph.i.i.i.i.i90.preheader ], [ %i.ew, %middle.block242 ]
  br label %.lr.ph.i.i.i.i.i90

.lr.ph.i.i.i.i.i90:                               ; preds = %.lr.ph.i.i.i.i.i90.preheader267, %.lr.ph.i.i.i.i.i90
  %.013.i.i.i.i.i91 = phi ptr [ %i.fd, %.lr.ph.i.i.i.i.i90 ], [ %.013.i.i.i.i.i91.ph, %.lr.ph.i.i.i.i.i90.preheader267 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i92 = phi ptr [ %i.fc, %.lr.ph.i.i.i.i.i90 ], [ %.sroa.08.012.i.i.i.i.i92.ph, %.lr.ph.i.i.i.i.i90.preheader267 ] ; 2 uses
  %i.fb = load i64, ptr %.sroa.08.012.i.i.i.i.i92, align 4
  store i64 %i.fb, ptr %.013.i.i.i.i.i91, align 4
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i92, i64 8 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i91, i64 8 ; 2 uses
  %.not.i.i.i.i.i93 = icmp eq ptr %i.fc, %1
  br i1 %.not.i.i.i.i.i93, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIjfES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i90, !llvm.loop !257

_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIjfES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i90, %middle.block242, %_ZSt24__uninitialized_fill_n_aIPSt4pairIjfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit88
  %.0.lcssa.i.i.i.i.i94 = phi ptr [ %i.ed, %_ZSt24__uninitialized_fill_n_aIPSt4pairIjfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit88 ], [ %i.ev, %middle.block242 ], [ %i.fd, %.lr.ph.i.i.i.i.i90 ] ; 2 uses
  %.0.lcssa.i.i.i.i.i94247 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i94 to i64
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %.0.lcssa.i.i.i.i.i94, i64 %2 ; 5 uses
  %.not11.i.i.i.i.i95 = icmp eq ptr %1, %i.d
  br i1 %.not11.i.i.i.i.i95, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIjfES2_SaIS1_EET0_T_S5_S4_RT1_.exit101, label %.lr.ph.i.i.i.i.i96.preheader

.lr.ph.i.i.i.i.i96.preheader:                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIjfES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %i.ff = sub i64 %i.f, %i.dz
  %i.fg = add i64 %i.ff, -8                       ; 2 uses
  %i.fh = lshr i64 %i.fg, 3
  %i.fi = add nuw nsw i64 %i.fh, 1                ; 2 uses
  %min.iters.check250 = icmp ult i64 %i.fg, 136
  br i1 %min.iters.check250, label %.lr.ph.i.i.i.i.i96.preheader266, label %vector.memcheck246

vector.memcheck246:                               ; preds = %.lr.ph.i.i.i.i.i96.preheader
  %i.fj = shl i64 %2, 3
  %i.fk = add i64 %i.fj, %.0.lcssa.i.i.i.i.i94247
  %i.fl = sub i64 %i.dz, %i.fk
  %diff.check248 = icmp ugt i64 %i.fl, -32
  br i1 %diff.check248, label %.lr.ph.i.i.i.i.i96.preheader266, label %vector.ph251

vector.ph251:                                     ; preds = %vector.memcheck246
  %n.vec253 = and i64 %i.fi, 4611686018427387900  ; 3 uses
  %i.fm = shl i64 %n.vec253, 3                    ; 2 uses
  %i.fn = getelementptr i8, ptr %i.fe, i64 %i.fm  ; 2 uses
  %i.fo = getelementptr i8, ptr %1, i64 %i.fm
  br label %vector.body254

vector.body254:                                   ; preds = %vector.body254, %vector.ph251
  %index255 = phi i64 [ 0, %vector.ph251 ], [ %index.next260, %vector.body254 ] ; 2 uses
  %i.fp = shl i64 %index255, 3                    ; 2 uses
  %next.gep256 = getelementptr i8, ptr %i.fe, i64 %i.fp ; 2 uses
  %next.gep257 = getelementptr i8, ptr %1, i64 %i.fp ; 2 uses
  %i.fq = getelementptr i8, ptr %next.gep257, i64 16
  %wide.load258 = load <2 x i64>, ptr %next.gep257, align 4
  %wide.load259 = load <2 x i64>, ptr %i.fq, align 4
  %i.fr = getelementptr i8, ptr %next.gep256, i64 16
  store <2 x i64> %wide.load258, ptr %next.gep256, align 4
  store <2 x i64> %wide.load259, ptr %i.fr, align 4
  %index.next260 = add nuw i64 %index255, 4       ; 2 uses
  %i.fs = icmp eq i64 %index.next260, %n.vec253
  br i1 %i.fs, label %middle.block261, label %vector.body254, !llvm.loop !258

middle.block261:                                  ; preds = %vector.body254
  %cmp.n262 = icmp eq i64 %i.fi, %n.vec253
  br i1 %cmp.n262, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIjfES2_SaIS1_EET0_T_S5_S4_RT1_.exit101, label %.lr.ph.i.i.i.i.i96.preheader266

.lr.ph.i.i.i.i.i96.preheader266:                  ; preds = %vector.memcheck246, %.lr.ph.i.i.i.i.i96.preheader, %middle.block261
  %.013.i.i.i.i.i97.ph = phi ptr [ %i.fe, %vector.memcheck246 ], [ %i.fe, %.lr.ph.i.i.i.i.i96.preheader ], [ %i.fn, %middle.block261 ]
  %.sroa.08.012.i.i.i.i.i98.ph = phi ptr [ %1, %vector.memcheck246 ], [ %1, %.lr.ph.i.i.i.i.i96.preheader ], [ %i.fo, %middle.block261 ]
  br label %.lr.ph.i.i.i.i.i96

.lr.ph.i.i.i.i.i96:                               ; preds = %.lr.ph.i.i.i.i.i96.preheader266, %.lr.ph.i.i.i.i.i96
  %.013.i.i.i.i.i97 = phi ptr [ %i.fv, %.lr.ph.i.i.i.i.i96 ], [ %.013.i.i.i.i.i97.ph, %.lr.ph.i.i.i.i.i96.preheader266 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i98 = phi ptr [ %i.fu, %.lr.ph.i.i.i.i.i96 ], [ %.sroa.08.012.i.i.i.i.i98.ph, %.lr.ph.i.i.i.i.i96.preheader266 ] ; 2 uses
  %i.ft = load i64, ptr %.sroa.08.012.i.i.i.i.i98, align 4
  store i64 %i.ft, ptr %.013.i.i.i.i.i97, align 4
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i98, i64 8 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i97, i64 8 ; 2 uses
  %.not.i.i.i.i.i99 = icmp eq ptr %i.fu, %i.d
  br i1 %.not.i.i.i.i.i99, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIjfES2_SaIS1_EET0_T_S5_S4_RT1_.exit101, label %.lr.ph.i.i.i.i.i96, !llvm.loop !259

_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIjfES2_SaIS1_EET0_T_S5_S4_RT1_.exit101: ; preds = %.lr.ph.i.i.i.i.i96, %middle.block261, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIjfES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %.0.lcssa.i.i.i.i.i100 = phi ptr [ %i.fe, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIjfES2_SaIS1_EET0_T_S5_S4_RT1_.exit ], [ %i.fn, %middle.block261 ], [ %i.fv, %.lr.ph.i.i.i.i.i96 ]
  %.not.i102 = icmp eq ptr %i.dp, null
  br i1 %.not.i102, label %_ZNSt12_Vector_baseISt4pairIjfESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIjfES2_SaIS1_EET0_T_S5_S4_RT1_.exit101
  %i.fw = load ptr, ptr %i.a, align 8
  %i.fx = ptrtoint ptr %i.fw to i64
  %i.fy = sub i64 %i.fx, %i.dq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dp, i64 noundef %i.fy) #30
  br label %_ZNSt12_Vector_baseISt4pairIjfESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseISt4pairIjfESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIjfES2_SaIS1_EET0_T_S5_S4_RT1_.exit101, %bb.i
  store ptr %i.ed, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i.i.i100, ptr %i.c, align 8
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.dy
  store ptr %i.fz, ptr %i.a, align 8
  br label %_ZSt4fillIPSt4pairIjfES1_EvT_S3_RKT0_.exit

_ZSt4fillIPSt4pairIjfES1_EvT_S3_RKT0_.exit:       ; preds = %scalar.ph159, %.lr.ph.i.i.i, %middle.block175, %middle.block210, %_ZSt22__uninitialized_move_aIPSt4pairIjfES2_SaIS1_EET0_T_S5_S4_RT1_.exit76.thread, %_ZNSt12_Vector_baseISt4pairIjfESaIS1_EE13_M_deallocateEPS1_m.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #9

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noreturn }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { cold nofree noreturn }
attributes #21 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { nounwind }
attributes #28 = { noreturn }
attributes #29 = { builtin allocsize(0) }
attributes #30 = { builtin nounwind }
attributes #31 = { nounwind willreturn memory(read) }
attributes #32 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = !{i8 0, i8 2}
!6 = !{}
!7 = distinct !{null}
!8 = !{!9}
!9 = distinct !{!9, !10, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!10 = distinct !{!10, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!11 = !{!12}
!12 = distinct !{!12, !10, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!13 = !{!9, !12}
!14 = distinct !{!14, !4}
!15 = distinct !{!15, !4}
!16 = distinct !{!16, !4}
!17 = distinct !{!17, !4}
!18 = distinct !{null, null}
!19 = distinct !{!19, !4}
!20 = !{!21}
!21 = distinct !{!21, !22, !"_ZSt19__relocate_object_aISt4pairIjfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!22 = distinct !{!22, !"_ZSt19__relocate_object_aISt4pairIjfES1_SaIS1_EEvPT_PT0_RT1_"}
!23 = !{!24}
!24 = distinct !{!24, !22, !"_ZSt19__relocate_object_aISt4pairIjfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!25 = distinct !{!25, !4, !26, !27}
!26 = !{!"llvm.loop.isvectorized", i32 1}
!27 = !{!"llvm.loop.unroll.runtime.disable"}
!28 = distinct !{!28, !4, !26}
!29 = distinct !{!29, !4}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.unroll.disable"}
!32 = distinct !{!32, !4, !26, !27}
!33 = distinct !{!33, !4}
!34 = !{!35}
!35 = distinct !{!35, !36, !"_ZSt19__relocate_object_aISt4pairIjfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!36 = distinct !{!36, !"_ZSt19__relocate_object_aISt4pairIjfES1_SaIS1_EEvPT_PT0_RT1_"}
!37 = !{!38}
!38 = distinct !{!38, !36, !"_ZSt19__relocate_object_aISt4pairIjfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!39 = distinct !{!39, !4, !26, !27}
!40 = distinct !{!40, !4, !26}
!41 = distinct !{!41, !4}
!42 = !{!43}
!43 = distinct !{!43, !44, !"_ZSt19__relocate_object_aISt4pairIjfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!44 = distinct !{!44, !"_ZSt19__relocate_object_aISt4pairIjfES1_SaIS1_EEvPT_PT0_RT1_"}
!45 = !{!46}
!46 = distinct !{!46, !44, !"_ZSt19__relocate_object_aISt4pairIjfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!47 = distinct !{!47, !4, !26, !27}
!48 = distinct !{!48, !4, !26}
!49 = distinct !{!49, !4}
!50 = distinct !{!50, !4, !26}
!51 = distinct !{!51, !4}
!52 = distinct !{!52, !4}
!53 = distinct !{!53, !4}
!54 = distinct !{!54, !4}
!55 = distinct !{!55, !4}
!56 = !{!57}
!57 = distinct !{!57, !58, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE: argument 0"}
!58 = distinct !{!58, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE"}
!59 = !{!60}
!60 = distinct !{!60, !61, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!61 = distinct !{!61, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!64 = distinct !{!64, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!65 = !{!66}
!66 = distinct !{!66, !67, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!67 = distinct !{!67, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!68 = !{!66, !63, !60, !57}
!69 = !{!70}
!70 = distinct !{!70, !71, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE: argument 0"}
!71 = distinct !{!71, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE"}
!72 = !{!73}
!73 = distinct !{!73, !74, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!74 = distinct !{!74, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!75 = !{!76}
!76 = distinct !{!76, !77, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!77 = distinct !{!77, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!78 = !{!79}
!79 = distinct !{!79, !80, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!80 = distinct !{!80, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!81 = !{!79, !76, !73, !70}
!82 = distinct !{!82, !4}
!83 = !{!84}
!84 = distinct !{!84, !85, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!85 = distinct !{!85, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!86 = !{!87, !84}
!87 = distinct !{!87, !88, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!88 = distinct !{!88, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!89 = !{!90}
!90 = distinct !{!90, !91, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!91 = distinct !{!91, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!94 = distinct !{!94, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!95 = !{!96}
!96 = distinct !{!96, !97, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!97 = distinct !{!97, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!98 = !{!99, !96}
!99 = distinct !{!99, !100, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!100 = distinct !{!100, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!101 = !{!102}
!102 = distinct !{!102, !103, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!103 = distinct !{!103, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!104 = distinct !{!104, !4}
!105 = distinct !{!105, !31}
!106 = distinct !{!106, !4}
!107 = distinct !{!107, !4}
!108 = distinct !{!108, !4}
!109 = distinct !{!109, !4}
!110 = distinct !{!110, !4}
!111 = distinct !{!111, !4}
!112 = distinct !{!112, !4}
!113 = distinct !{!113, !4}
!114 = distinct !{!114, !4}
!115 = distinct !{!115, !4}
!116 = !{!117}
!117 = distinct !{!117, !118, !"_ZSt19__relocate_object_aIN6Assimp3SMD4FaceES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!118 = distinct !{!118, !"_ZSt19__relocate_object_aIN6Assimp3SMD4FaceES2_SaIS2_EEvPT_PT0_RT1_"}
!119 = !{!120}
!120 = distinct !{!120, !118, !"_ZSt19__relocate_object_aIN6Assimp3SMD4FaceES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!121 = !{!117, !120}
!122 = distinct !{!122, !4}
!123 = !{!124}
!124 = distinct !{!124, !125, !"_ZSt19__relocate_object_aIN6Assimp3SMD4BoneES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!125 = distinct !{!125, !"_ZSt19__relocate_object_aIN6Assimp3SMD4BoneES2_SaIS2_EEvPT_PT0_RT1_"}
!126 = !{!127}
!127 = distinct !{!127, !125, !"_ZSt19__relocate_object_aIN6Assimp3SMD4BoneES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!128 = !{!124, !127}
!129 = distinct !{!129, !4}
!130 = distinct !{!130, !4}
!131 = distinct !{!131, !4}
!132 = distinct !{!132, !4}
!133 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!134 = distinct !{!134, !4}
!135 = !{!136}
!136 = distinct !{!136, !137, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!137 = distinct !{!137, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!138 = !{!139}
!139 = distinct !{!139, !140, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!140 = distinct !{!140, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!141 = !{!142}
!142 = distinct !{!142, !143, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!143 = distinct !{!143, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!144 = !{!142, !139, !136}
!145 = !{!146}
!146 = distinct !{!146, !147, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE: argument 0"}
!147 = distinct !{!147, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE"}
!148 = !{!149}
!149 = distinct !{!149, !150, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!150 = distinct !{!150, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!151 = !{!152}
!152 = distinct !{!152, !153, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!153 = distinct !{!153, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!154 = !{!155}
!155 = distinct !{!155, !156, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!156 = distinct !{!156, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!157 = !{!155, !152, !149, !146}
!158 = !{!159}
!159 = distinct !{!159, !160, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!160 = distinct !{!160, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!161 = !{!162}
!162 = distinct !{!162, !160, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
end_hunk_1
