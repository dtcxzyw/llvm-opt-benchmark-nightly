inline.NumInlined: 674
inline.NumDeleted: 77
begin_hunk_0_@_ZN6Assimp14StandardShapes14MakeHexahedronERSt6vectorI10aiVector3tIfESaIS3_EEb:bb.a
  tail call void @llvm.assume(i1 %.not.i.i.i939)
  %i.avx = mul nuw nsw i64 %i.avw, 12
  %i.avy = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.avx) #11 ; 5 uses
  %i.avz = getelementptr inbounds nuw i8, ptr %i.avy, i64 %i.avq ; 2 uses
  store <2 x float> <float f0x3F13CD3A, float f0xBF13CD3A>, ptr %i.avz, align 4
  %.sroa.171062.0..sroa_idx1087 = getelementptr inbounds nuw i8, ptr %i.avz, i64 8
  store float f0x3F13CD3A, ptr %.sroa.171062.0..sroa_idx1087, align 4
  %.not10.i.i.i.i.i940 = icmp eq ptr %i.avn, %i.avj
  br i1 %.not10.i.i.i.i.i940, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i945, label %.lr.ph.i.i.i.i.i941

.lr.ph.i.i.i.i.i941:                              ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i937, %.lr.ph.i.i.i.i.i941
  %.012.i.i.i.i.i942 = phi ptr [ %i.awb, %.lr.ph.i.i.i.i.i941 ], [ %i.avy, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i937 ] ; 2 uses
  %.0911.i.i.i.i.i943 = phi ptr [ %i.awa, %.lr.ph.i.i.i.i.i941 ], [ %i.avn, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i937 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i942, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i943, i64 12, i1 false), !alias.scope !1359
  %i.awa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i943, i64 12 ; 2 uses
  %i.awb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i942, i64 12 ; 2 uses
  %.not.i.i.i.i.i944 = icmp eq ptr %i.awa, %i.avj
  br i1 %.not.i.i.i.i.i944, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i945, label %.lr.ph.i.i.i.i.i941, !llvm.loop !7

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i945: ; preds = %.lr.ph.i.i.i.i.i941, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i937
  %.0.lcssa.i.i.i.i.i946 = phi ptr [ %i.avy, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i937 ], [ %i.awb, %.lr.ph.i.i.i.i.i941 ]
  %i.awc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i946, i64 12
  %.not.i23.i.i947 = icmp eq ptr %i.avn, null
  br i1 %.not.i23.i.i947, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i948, label %bb.iq

bb.iq:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i945
  tail call void @_ZdlPvm(ptr noundef nonnull %i.avn, i64 noundef %i.avq) #12
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i948

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i948: ; preds = %bb.iq, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i945
  store ptr %i.avy, ptr %0, align 8
  store ptr %i.awc, ptr %i.a, align 8
  %i.awd = getelementptr inbounds nuw [12 x i8], ptr %i.avy, i64 %i.avw
  store ptr %i.awd, ptr %i.j, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit865

_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit865: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i948, %bb.in, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i864, %bb.hp
  %i.awe = phi i32 [ 4, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i864 ], [ 4, %bb.hp ], [ 3, %bb.in ], [ 3, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i948 ]
  ret i32 %i.awe
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp14StandardShapes10MakeSphereEjRSt6vectorI10aiVector3tIfESaIS3_EE(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %1, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 12
  %.not.i = icmp eq i32 %0, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN6Assimp11integer_powEjj.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i32 %0, 7                       ; 3 uses
  %i.h = icmp ult i32 %0, 8
  br i1 %i.h, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i32 %0, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.067.i = phi i32 [ 1, %.lr.ph.i.preheader.new ], [ %i.i, %.lr.ph.i ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.i = shl i32 %.067.i, 16                      ; 2 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN6Assimp11integer_powEjj.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !1363

_ZN6Assimp11integer_powEjj.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %i.j = shl nsw i32 %.067.i, 14
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6Assimp11integer_powEjj.exit.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN6Assimp11integer_powEjj.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.067.i.epil.init = phi i32 [ 1, %.lr.ph.i.preheader ], [ %i.i, %_ZN6Assimp11integer_powEjj.exit.loopexit.unr-lcssa ]
  %lcmp.mod13 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod13)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.067.i.epil = phi i32 [ %i.k, %.lr.ph.i.epil ], [ %.067.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.k = shl i32 %.067.i.epil, 2
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN6Assimp11integer_powEjj.exit.loopexit, label %.lr.ph.i.epil, !llvm.loop !1364

_ZN6Assimp11integer_powEjj.exit.loopexit:         ; preds = %.lr.ph.i.epil, %_ZN6Assimp11integer_powEjj.exit.loopexit.unr-lcssa
  %.067.i.lcssa = phi i32 [ %i.j, %_ZN6Assimp11integer_powEjj.exit.loopexit.unr-lcssa ], [ %.067.i.epil, %.lr.ph.i.epil ]
  %i.l = mul i32 %.067.i.lcssa, 240
  %i.m = zext i32 %i.l to i64
  br label %_ZN6Assimp11integer_powEjj.exit

_ZN6Assimp11integer_powEjj.exit:                  ; preds = %_ZN6Assimp11integer_powEjj.exit.loopexit, %bb.a
  %.06.lcssa.i = phi i64 [ 60, %bb.a ], [ %i.m, %_ZN6Assimp11integer_powEjj.exit.loopexit ]
  %i.n = add nsw i64 %i.g, %.06.lcssa.i           ; 4 uses
  %i.o = icmp ugt i64 %i.n, 768614336404564650
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN6Assimp11integer_powEjj.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #10
  unreachable

bb.c:                                             ; preds = %_ZN6Assimp11integer_powEjj.exit
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = sub i64 %i.r, %i.e                       ; 2 uses
  %i.t = sdiv exact i64 %i.s, 12
  %i.u = icmp ult i64 %i.t, %i.n
  br i1 %i.u, label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.v = mul nuw nsw i64 %i.n, 12
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #11 ; 4 uses
  %.not10.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i ], [ %i.w, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i ], [ %i.c, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i, i64 12, i1 false), !alias.scope !1365
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 12 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 12
  %.not.i.i.i.i = icmp eq ptr %i.x, %i.b
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !7

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.c, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.s) #12
  br label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.w, ptr %1, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f
  store ptr %i.z, ptr %i.a, align 8
  %i.aa = getelementptr inbounds nuw [12 x i8], ptr %i.w, i64 %i.n
  store ptr %i.aa, ptr %i.p, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit: ; preds = %bb.c, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i
  %i.ab = tail call noundef i32 @_ZN6Assimp14StandardShapes15MakeIcosahedronERSt6vectorI10aiVector3tIfESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(24) %1) ; 0 uses
  br i1 %.not.i, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit
  ret void

.lr.ph:                                           ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit, %.lr.ph
  %.07 = phi i32 [ %i.ac, %.lr.ph ], [ 0, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit ]
  tail call void @_ZN6Assimp9SubdivideERSt6vectorI10aiVector3tIfESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.ac = add nuw i32 %.07, 1                     ; 2 uses
  %exitcond.not = icmp eq i32 %i.ac, %0
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1369
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp14StandardShapes8MakeConeEfffjRSt6vectorI10aiVector3tIfESaIS3_EEb(float noundef %0, float noundef %1, float noundef %2, i32 noundef %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %4, i1 noundef zeroext %5) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %class.aiVector3t, align 4          ; 4 uses
  %i.a = icmp ugt i32 %3, 2
  %i.b = fcmp une float %0, 0.000000e+00
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 39 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.e = load ptr, ptr %4, align 8                ; 5 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = sdiv exact i64 %i.h, 12                  ; 2 uses
  %i.j = tail call noundef float @llvm.fabs.f32(float %1) ; 3 uses
  %i.k = tail call noundef float @llvm.fabs.f32(float %2) ; 3 uses
  %i.l = fmul float %0, 5.000000e-01              ; 2 uses
  %i.m = fcmp ogt float %i.k, %i.j
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = fneg float %i.l
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0318 = phi float [ %i.n, %bb.c ], [ %i.l, %bb.b ] ; 13 uses
  %.0317 = phi float [ %i.j, %bb.c ], [ %i.k, %bb.b ] ; 5 uses
  %.0316 = phi float [ %i.k, %bb.c ], [ %i.j, %bb.b ] ; 3 uses
  %.057 = phi i64 [ %i.i, %bb.c ], [ -1, %bb.b ]  ; 3 uses
  %i.o = fpext float %.0316 to double
  %i.p = fsub float %.0317, %.0316
  %i.q = fpext float %i.p to double
  %i.r = fmul double %i.q, 1.000000e-02
  %i.s = fcmp ogt double %i.r, %i.o
  %.1 = select i1 %i.s, float 0.000000e+00, float %.0316 ; 5 uses
  %i.t = mul i32 %3, 6
  %7 = mul i32 %3, 3
  %i.u = fcmp une float %.1, 0.000000e+00         ; 2 uses
  %8 = zext i1 %i.u to i32
  %9 = shl i32 %7, %8
  %i.v = select i1 %5, i32 0, i32 %9
  %i.w = add i32 %i.v, %i.t
  %i.x = zext i32 %i.w to i64
  %i.y = add nsw i64 %i.i, %i.x                   ; 4 uses
  %i.z = icmp ugt i64 %i.y, 768614336404564650
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #10
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 26 uses
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.ac, %i.g                     ; 2 uses
  %i.ae = sdiv exact i64 %i.ad, 12
  %i.af = icmp ult i64 %i.ae, %i.y
  br i1 %i.af, label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.f
  %i.ag = mul nuw nsw i64 %i.y, 12
  %i.ah = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #11 ; 4 uses
  %.not10.i.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i ], [ %i.ah, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i ], [ %i.e, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i, i64 12, i1 false), !alias.scope !1370
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 12 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 12
  %.not.i.i.i.i = icmp eq ptr %i.ai, %i.d
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !7

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.e, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.ad) #12
  br label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.g, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.ah, ptr %4, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.h ; 2 uses
  store ptr %i.ak, ptr %i.c, align 8
  %i.al = getelementptr inbounds nuw [12 x i8], ptr %i.ah, i64 %i.y
  store ptr %i.al, ptr %i.aa, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit: ; preds = %bb.f, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i
  %i.am = phi ptr [ %i.d, %bb.f ], [ %i.ak, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i ]
  %i.an = uitofp i32 %3 to float
  %i.ao = fdiv float f0x40C90FDB, %i.an
  %i.ap = fneg float %.0318                       ; 12 uses
  br label %bb.i

bb.h:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRKffS6_EEERS1_DpOT_.exit
  %.not = icmp eq i64 %.057, -1
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.h
  %i.aq = load ptr, ptr %4, align 8               ; 2 uses
  %i.ar = ptrtoint ptr %i.lx to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = sdiv exact i64 %i.at, 12
  %i.av = icmp ult i64 %.057, %i.au
  br i1 %i.av, label %.lr.ph, label %.loopexit

bb.i:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRKffS6_EEERS1_DpOT_.exit
  %i.aw = phi ptr [ %i.am, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit ], [ %i.lx, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRKffS6_EEERS1_DpOT_.exit ] ; 7 uses
  %.058332 = phi float [ 1.000000e+00, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit ], [ %i.bc, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRKffS6_EEERS1_DpOT_.exit ] ; 2 uses
  %.059331 = phi float [ 0.000000e+00, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit ], [ %i.bd, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRKffS6_EEERS1_DpOT_.exit ] ; 2 uses
  %.060330 = phi float [ 0.000000e+00, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit ], [ %i.bb, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRKffS6_EEERS1_DpOT_.exit ]
  %i.ax = fmul float %.1, %.058332                ; 6 uses
  %i.ay = fmul float %.1, %.059331                ; 6 uses
  %i.az = fmul float %.0317, %.058332             ; 4 uses
  %i.ba = fmul float %.0317, %.059331             ; 4 uses
  %i.bb = fadd float %i.ao, %.060330              ; 4 uses
  %i.bc = tail call noundef float @cosf(float noundef %i.bb) #13 ; 3 uses
  %i.bd = tail call noundef float @sinf(float noundef %i.bb) #13 ; 3 uses
  %i.be = fmul float %.0317, %i.bc                ; 6 uses
  %i.bf = fmul float %.0317, %i.bd                ; 6 uses
  %i.bg = fmul float %.1, %i.bc                   ; 4 uses
  %i.bh = fmul float %.1, %i.bd                   ; 4 uses
  %i.bi = load ptr, ptr %i.aa, align 8
  %.not.i = icmp eq ptr %i.aw, %i.bi
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store float %i.ax, ptr %i.aw, align 4
  %.sroa.7269.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  store float %i.ap, ptr %.sroa.7269.0..sroa_idx, align 4
  %.sroa.8276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store float %i.ay, ptr %.sroa.8276.0..sroa_idx, align 4
  %i.bj = load ptr, ptr %i.c, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 12 ; 2 uses
  store ptr %i.bk, ptr %i.c, align 8
  %.pre = load ptr, ptr %i.aa, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit

bb.k:                                             ; preds = %bb.i
  %i.bl = load ptr, ptr %4, align 8               ; 5 uses
  %i.bm = ptrtoint ptr %i.aw to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn                    ; 4 uses
  %i.bp = icmp eq i64 %i.bo, 9223372036854775800
  br i1 %i.bp, label %bb.l, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #10
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.bq = sdiv exact i64 %i.bo, 12                ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bq, i64 1)
  %i.br = add nsw i64 %.sroa.speculated.i.i.i, %i.bq ; 2 uses
  %i.bs = icmp ult i64 %i.br, %i.bq
  %i.bt = tail call i64 @llvm.umin.i64(i64 %i.br, i64 768614336404564650)
  %i.bu = select i1 %i.bs, i64 768614336404564650, i64 %i.bt ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bu, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bv = mul nuw nsw i64 %i.bu, 12
  %i.bw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #11 ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bo ; 3 uses
  store float %i.ax, ptr %i.bx, align 4
  %.sroa.7269.0..sroa_idx270 = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  store float %i.ap, ptr %.sroa.7269.0..sroa_idx270, align 4
  %.sroa.8276.0..sroa_idx277 = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store float %i.ay, ptr %.sroa.8276.0..sroa_idx277, align 4
  %.not10.i.i.i.i.i = icmp eq ptr %i.bl, %i.aw
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i ], [ %i.bw, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i ], [ %i.bl, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i, i64 12, i1 false), !alias.scope !1374
  %i.by = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 12 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.by, %i.aw
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !7

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bw, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.bz, %.lr.ph.i.i.i.i.i ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.bo) #12
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.bw, ptr %4, align 8
  store ptr %i.ca, ptr %i.c, align 8
  %i.cb = getelementptr inbounds nuw [12 x i8], ptr %i.bw, i64 %i.bu ; 2 uses
  store ptr %i.cb, ptr %i.aa, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.j, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.cc = phi ptr [ %.pre, %bb.j ], [ %i.cb, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 4 uses
  %i.cd = phi ptr [ %i.bk, %bb.j ], [ %i.ca, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 4 uses
  %.not.i63 = icmp eq ptr %i.cd, %i.cc
  br i1 %.not.i63, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit
  store float %i.az, ptr %i.cd, align 4
  %.sroa.5259.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  store float %.0318, ptr %.sroa.5259.0..sroa_idx, align 4
  %.sroa.6262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store float %i.ba, ptr %.sroa.6262.0..sroa_idx, align 4
  %i.ce = load ptr, ptr %i.c, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 12 ; 2 uses
  store ptr %i.cf, ptr %i.c, align 8
  %.pre345 = load ptr, ptr %i.aa, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit76

bb.o:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit
  %i.cg = load ptr, ptr %4, align 8               ; 5 uses
  %i.ch = ptrtoint ptr %i.cc to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci                    ; 4 uses
  %i.ck = icmp eq i64 %i.cj, 9223372036854775800
  br i1 %i.ck, label %bb.p, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i64

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #10
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i64: ; preds = %bb.o
  %i.cl = sdiv exact i64 %i.cj, 12                ; 3 uses
  %.sroa.speculated.i.i.i65 = tail call i64 @llvm.umax.i64(i64 %i.cl, i64 1)
  %i.cm = add nsw i64 %.sroa.speculated.i.i.i65, %i.cl ; 2 uses
  %i.cn = icmp ult i64 %i.cm, %i.cl
  %i.co = tail call i64 @llvm.umin.i64(i64 %i.cm, i64 768614336404564650)
  %i.cp = select i1 %i.cn, i64 768614336404564650, i64 %i.co ; 3 uses
  %.not.i.i.i66 = icmp ne i64 %i.cp, 0
  tail call void @llvm.assume(i1 %.not.i.i.i66)
  %i.cq = mul nuw nsw i64 %i.cp, 12
end_hunk_0
