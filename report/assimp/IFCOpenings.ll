Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/IFCOpenings?download=true
inline.NumInlined: 3954
inline.NumDeleted: 1464
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6Assimp3IFC8QuadrifyERKSt6vectorINS0_22ProjectedWindowContourESaIS2_EERNS0_8TempMeshE:bb.a
  br i1 %.not33, label %_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EE7reserveEm.exit, label %_ZNSt12_Vector_baseISt4pairI10aiVector2tIdES2_ESaIS3_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseISt4pairI10aiVector2tIdES2_ESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.j = shl nuw nsw i64 %i.g, 5
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #26
          to label %_ZNSt12_Vector_baseISt4pairI10aiVector2tIdES2_ESaIS3_EE13_M_deallocateEPS3_m.exit.i unwind label %bb.d ; 4 uses

_ZNSt12_Vector_baseISt4pairI10aiVector2tIdES2_ESaIS3_EE13_M_deallocateEPS3_m.exit.i: ; preds = %_ZNSt12_Vector_baseISt4pairI10aiVector2tIdES2_ESaIS3_EE11_M_allocateEm.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre20.pre = load ptr, ptr %i.a, align 8
  %.pre.pre = load ptr, ptr %0, align 8
  store ptr %i.k, ptr %2, align 8
  store ptr %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %i.g ; 2 uses
  store ptr %i.m, ptr %i.i, align 8
  br label %_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EE7reserveEm.exit

_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseISt4pairI10aiVector2tIdES2_ESaIS3_EE13_M_deallocateEPS3_m.exit.i, %bb.c
  %i.n = phi ptr [ %i.m, %_ZNSt12_Vector_baseISt4pairI10aiVector2tIdES2_ESaIS3_EE13_M_deallocateEPS3_m.exit.i ], [ null, %bb.c ]
  %i.o = phi ptr [ %i.k, %_ZNSt12_Vector_baseISt4pairI10aiVector2tIdES2_ESaIS3_EE13_M_deallocateEPS3_m.exit.i ], [ null, %bb.c ] ; 2 uses
  %i.p = phi ptr [ %.pre20.pre, %_ZNSt12_Vector_baseISt4pairI10aiVector2tIdES2_ESaIS3_EE13_M_deallocateEPS3_m.exit.i ], [ %i.b, %bb.c ] ; 2 uses
  %i.q = phi ptr [ %.pre.pre, %_ZNSt12_Vector_baseISt4pairI10aiVector2tIdES2_ESaIS3_EE13_M_deallocateEPS3_m.exit.i ], [ %i.c, %bb.c ] ; 2 uses
  %.not18 = icmp eq ptr %i.q, %i.p
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EE7reserveEm.exit
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.e

._crit_edge:                                      ; preds = %_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EE9push_backERKS3_.exit, %_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EE7reserveEm.exit
  invoke void @_ZN6Assimp3IFC8QuadrifyERKSt6vectorISt4pairI10aiVector2tIdES4_ESaIS5_EERNS0_8TempMeshE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.j unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt12_Vector_baseISt4pairI10aiVector2tIdES2_ESaIS3_EE11_M_allocateEm.exit.i, %bb.b, %._crit_edge
  %i.s = landingpad { ptr, i32 }
          cleanup
  %.pre21 = load ptr, ptr %2, align 8
  br label %bb.l

bb.e:                                             ; preds = %.lr.ph, %_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EE9push_backERKS3_.exit
  %i.t = phi ptr [ %i.o, %.lr.ph ], [ %i.ao, %_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EE9push_backERKS3_.exit ] ; 8 uses
  %i.u = phi ptr [ %i.n, %.lr.ph ], [ %i.ap, %_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EE9push_backERKS3_.exit ] ; 5 uses
  %i.v = phi ptr [ %i.o, %.lr.ph ], [ %i.aq, %_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EE9push_backERKS3_.exit ] ; 3 uses
  %.sroa.015.019 = phi ptr [ %i.q, %.lr.ph ], [ %i.ar, %_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EE9push_backERKS3_.exit ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.015.019, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %i.v, %i.u
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i64 32, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 32 ; 2 uses
  store ptr %i.x, ptr %i.r, align 8
  br label %_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EE9push_backERKS3_.exit

bb.g:                                             ; preds = %bb.e
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = ptrtoint ptr %i.t to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 4 uses
  %i.ab = icmp eq i64 %i.aa, 9223372036854775776
  br i1 %i.ab, label %bb.h, label %_ZNKSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #25
          to label %.noexc10 unwind label %.loopexit.split-lp

.noexc10:                                         ; preds = %bb.h
  unreachable

_ZNKSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.ac = ashr exact i64 %i.aa, 5                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 1)
  %i.ad = add nsw i64 %.sroa.speculated.i.i.i, %i.ac ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.ac
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 288230376151711743)
  %i.ag = select i1 %i.ae, i64 288230376151711743, i64 %i.af ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ag, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ah = shl nuw nsw i64 %i.ag, 5
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #26
          to label %.noexc11 unwind label %.loopexit ; 6 uses

.noexc11:                                         ; preds = %_ZNKSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i64 32, i1 false)
  %.not10.i.i.i.i.i = icmp eq ptr %i.t, %i.u
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc11, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i ], [ %i.ai, %.noexc11 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %i.t, %.noexc11 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i.i, i64 32, i1 false), !alias.scope !223
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 32 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ak, %i.u
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !222

_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc11
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ai, %.noexc11 ], [ %i.al, %.lr.ph.i.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.aa) #27
  br label %_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.ai, ptr %2, align 8
  store ptr %i.am, ptr %i.r, align 8
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %i.ai, i64 %i.ag ; 2 uses
  store ptr %i.an, ptr %i.i, align 8
  br label %_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.f
  %i.ao = phi ptr [ %i.ai, %_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.t, %bb.f ]
  %i.ap = phi ptr [ %i.an, %_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.u, %bb.f ]
  %i.aq = phi ptr [ %i.am, %_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.x, %bb.f ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.015.019, i64 104 ; 2 uses
  %.not = icmp eq ptr %i.ar, %i.p
  br i1 %.not, label %._crit_edge, label %bb.e

.loopexit:                                        ; preds = %_ZNKSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.loopexit.split-lp:                               ; preds = %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.j:                                             ; preds = %._crit_edge
  %i.as = load ptr, ptr %2, align 8               ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = load ptr, ptr %i.i, align 8
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.as to i64
  %i.aw = sub i64 %i.au, %i.av
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.aw) #27
  br label %_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EED2Ev.exit

_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EED2Ev.exit: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void

bb.l:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.d
  %i.ax = phi ptr [ %.pre21, %bb.d ], [ %i.t, %.loopexit ], [ %i.t, %.loopexit.split-lp ] ; 3 uses
  %.pn = phi { ptr, i32 } [ %i.s, %bb.d ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i13 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i13, label %_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EED2Ev.exit14, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ax to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bc) #27
  br label %_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EED2Ev.exit14

_ZNSt6vectorISt4pairI10aiVector2tIdES2_ESaIS3_EED2Ev.exit14: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3IFC16ProjectOntoPlaneERSt6vectorI10aiVector2tIdESaIS3_EERKNS0_8TempMeshERbR10aiVector3tIdE(ptr dead_on_unwind noalias nofree writable writeonly sret(%class.aiMatrix4x4t) align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 1 dereferenceable(1) initializes((0, 1)) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.aiMatrix3x3t, align 16       ; 9 uses
  %i.a = load ptr, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %3, align 1
  store double 1.000000e+00, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.j, align 8
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  store i8 1, ptr %3, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @_ZN6Assimp3IFC26DerivePlaneCoordinateSpaceERKNS0_8TempMeshERbR10aiVector3tIdE(ptr dead_on_unwind nonnull writable sret(%class.aiMatrix3x3t) align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.l = load double, ptr %i.k, align 16          ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 24
  %6 = load <2 x double>, ptr %5, align 16        ; 7 uses
  %7 = load <2 x double>, ptr %i.m, align 8       ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.o = load double, ptr %i.n, align 8           ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 48
  %8 = load double, ptr %i.p, align 16            ; 5 uses
  %9 = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.q = load <2 x double>, ptr %9, align 8       ; 8 uses
  %10 = extractelement <2 x double> %i.q, i64 1   ; 2 uses
  %11 = extractelement <2 x double> %i.q, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.r = load i8, ptr %3, align 1, !range !22, !noundef !23
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store double 1.000000e+00, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.x, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.y, align 8
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.aa = load ptr, ptr %2, align 8               ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = sdiv exact i64 %i.ad, 24                ; 4 uses
  %i.af = icmp ugt i64 %i.ae, 576460752303423487
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #25
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = load ptr, ptr %1, align 8               ; 2 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 4
  %i.an = icmp ult i64 %i.am, %i.ae
  br i1 %i.an, label %_ZNSt12_Vector_baseI10aiVector2tIdESaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseI10aiVector2tIdESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.ak
  %i.as = shl nuw nsw i64 %i.ae, 4
  %i.at = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #26 ; 5 uses
  %i.au = load ptr, ptr %1, align 8               ; 5 uses
  %i.av = load ptr, ptr %i.ao, align 8            ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.au, %i.av
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseI10aiVector2tIdESaIS1_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i ], [ %i.at, %_ZNSt12_Vector_baseI10aiVector2tIdESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i ], [ %i.au, %_ZNSt12_Vector_baseI10aiVector2tIdESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i, i64 16, i1 false), !alias.scope !234
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.aw, %i.av
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt12_Vector_baseI10aiVector2tIdESaIS1_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.au, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseI10aiVector2tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.ay = load ptr, ptr %i.ag, align 8
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.au to i64
  %i.bb = sub i64 %i.az, %i.ba
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.bb) #27
  br label %_ZNSt12_Vector_baseI10aiVector2tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseI10aiVector2tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.h, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.at, ptr %1, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ar
  store ptr %i.bc, ptr %i.ao, align 8
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %i.ae ; 2 uses
  store ptr %i.bd, ptr %i.ag, align 8
  %.pre = load ptr, ptr %2, align 8
  %.pre170 = load ptr, ptr %i.b, align 8
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE7reserveEm.exit

_ZNSt6vectorI10aiVector2tIdESaIS1_EE7reserveEm.exit: ; preds = %bb.g, %_ZNSt12_Vector_baseI10aiVector2tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i
  %.pre173 = phi ptr [ %i.ah, %bb.g ], [ %i.bd, %_ZNSt12_Vector_baseI10aiVector2tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i ]
  %i.be = phi ptr [ %i.ai, %bb.g ], [ %i.at, %_ZNSt12_Vector_baseI10aiVector2tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i ]
  %i.bf = phi ptr [ %i.z, %bb.g ], [ %.pre170, %_ZNSt12_Vector_baseI10aiVector2tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i ] ; 4 uses
  %i.bg = phi ptr [ %i.aa, %bb.g ], [ %.pre, %_ZNSt12_Vector_baseI10aiVector2tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i ] ; 2 uses
  %.not142 = icmp eq ptr %i.bg, %i.bf
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %.pre177 = load ptr, ptr %.phi.trans.insert, align 8 ; 2 uses
  br i1 %.not142, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE7reserveEm.exit
  %i.bh = shufflevector <2 x double> %6, <2 x double> %7, <2 x i32> <i32 1, i32 3>
  %i.bi = shufflevector <2 x double> %6, <2 x double> %7, <2 x i32> <i32 0, i32 2>
  %i.bj = insertelement <2 x double> poison, double %i.l, i64 0
  %i.bk = insertelement <2 x double> %i.bj, double %i.o, i64 1
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit
  %.pre174 = load ptr, ptr %i.b, align 8
  %.pre175 = load ptr, ptr %2, align 8
  %.pre176 = load ptr, ptr %1, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE7reserveEm.exit, %._crit_edge.loopexit
  %i.bl = phi ptr [ %i.ej, %._crit_edge.loopexit ], [ %.pre177, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE7reserveEm.exit ] ; 3 uses
  %i.bm = phi ptr [ %.pre176, %._crit_edge.loopexit ], [ %i.be, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE7reserveEm.exit ] ; 4 uses
  %i.bn = phi ptr [ %.pre175, %._crit_edge.loopexit ], [ %i.bf, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE7reserveEm.exit ]
  %i.bo = phi ptr [ %.pre174, %._crit_edge.loopexit ], [ %i.bf, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE7reserveEm.exit ]
  %.0.lcssa = phi double [ %i.dh, %._crit_edge.loopexit ], [ 0.000000e+00, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE7reserveEm.exit ]
  %i.bp = phi <2 x double> [ %i.dl, %._crit_edge.loopexit ], [ splat (double -1.000000e+10), %_ZNSt6vectorI10aiVector2tIdESaIS1_EE7reserveEm.exit ]
  %i.bq = phi <2 x double> [ %i.dj, %._crit_edge.loopexit ], [ splat (double 1.000000e+10), %_ZNSt6vectorI10aiVector2tIdESaIS1_EE7reserveEm.exit ] ; 4 uses
  %i.br = ptrtoint ptr %i.bo to i64
  %i.bs = ptrtoint ptr %i.bn to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = sdiv exact i64 %i.bt, 24
  %i.bv = uitofp i64 %i.bu to double
  %i.bw = fsub <2 x double> %i.bp, %i.bq          ; 3 uses
  %.not136155 = icmp eq ptr %i.bm, %i.bl
  br i1 %.not136155, label %._crit_edge159, label %.lr.ph158.preheader

.lr.ph158.preheader:                              ; preds = %._crit_edge
  %i.bx = ptrtoaddr ptr %i.bl to i64
  %i.by = ptrtoaddr ptr %i.bm to i64
  %i.bz = add i64 %i.bx, -16
  %i.ca = sub i64 %i.bz, %i.by
  %i.cb = lshr i64 %i.ca, 4                       ; 2 uses
  %min.iters.check = icmp eq i64 %i.cb, 0
  br i1 %min.iters.check, label %.lr.ph158, label %vector.body

vector.body:                                      ; preds = %.lr.ph158.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph158.preheader ] ; 3 uses
  %i.cc = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %i.bm, i64 %i.cc ; 2 uses
  %wide.load = load <2 x double>, ptr %next.gep, align 8
  %i.cd = fsub <2 x double> %wide.load, %i.bq
  %i.ce = fdiv <2 x double> %i.cd, %i.bw          ; 2 uses
  %i.cf = fcmp olt <2 x double> %i.ce, zeroinitializer
  %i.cg = select <2 x i1> %i.cf, <2 x double> zeroinitializer, <2 x double> %i.ce ; 2 uses
  %i.ch = fcmp ogt <2 x double> %i.cg, splat (double 1.000000e+00)
  %i.ci = select <2 x i1> %i.ch, <2 x double> splat (double 1.000000e+00), <2 x double> %i.cg
  store <2 x double> %i.ci, ptr %next.gep, align 8
  %index.next = add nuw i64 %index, 1
  %i.cj = icmp eq i64 %index, %i.cb
  br i1 %i.cj, label %._crit_edge159, label %vector.body, !llvm.loop !227

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit
  %i.ck = phi ptr [ %i.ei, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit ], [ %.pre173, %.lr.ph.preheader ] ; 4 uses
  %i.cl = phi ptr [ %i.ej, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit ], [ %.pre177, %.lr.ph.preheader ] ; 2 uses
  %.0150 = phi double [ %i.dh, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit ], [ 0.000000e+00, %.lr.ph.preheader ]
  %.sroa.097.0143 = phi ptr [ %i.ek, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit ], [ %i.bg, %.lr.ph.preheader ] ; 4 uses
  %i.cm = phi <2 x double> [ %i.dl, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit ], [ splat (double -1.000000e+10), %.lr.ph.preheader ] ; 2 uses
  %i.cn = phi <2 x double> [ %i.dj, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit ], [ splat (double 1.000000e+10), %.lr.ph.preheader ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.097.0143, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.097.0143, i64 16
  %i.cq = load double, ptr %.sroa.097.0143, align 8, !noalias !235 ; 2 uses
  %i.cr = load double, ptr %i.co, align 8, !noalias !235 ; 2 uses
  %i.cs = load double, ptr %i.cp, align 8, !noalias !235 ; 2 uses
  %i.ct = insertelement <2 x double> poison, double %i.cr, i64 0
  %i.cu = shufflevector <2 x double> %i.ct, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cv = fmul <2 x double> %i.bh, %i.cu
  %i.cw = insertelement <2 x double> poison, double %i.cq, i64 0
  %i.cx = shufflevector <2 x double> %i.cw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bi, <2 x double> %i.cx, <2 x double> %i.cv)
  %i.cz = insertelement <2 x double> poison, double %i.cs, i64 0
  %i.da = shufflevector <2 x double> %i.cz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.db = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bk, <2 x double> %i.da, <2 x double> %i.cy) ; 3 uses
  %i.dc = fadd <2 x double> %i.db, zeroinitializer ; 4 uses
  %i.dd = fmul double %11, %i.cr
  %i.de = call double @llvm.fmuladd.f64(double %8, double %i.cq, double %i.dd)
  %i.df = call double @llvm.fmuladd.f64(double %10, double %i.cs, double %i.de)
  %i.dg = fadd double %i.df, 0.000000e+00
  %i.dh = fadd double %.0150, %i.dg               ; 2 uses
  %i.di = fcmp olt <2 x double> %i.cn, %i.db
  %i.dj = select <2 x i1> %i.di, <2 x double> %i.cn, <2 x double> %i.dc ; 2 uses
  %i.dk = fcmp olt <2 x double> %i.db, %i.cm
  %i.dl = select <2 x i1> %i.dk, <2 x double> %i.cm, <2 x double> %i.dc ; 2 uses
  %.not.i = icmp eq ptr %i.cl, %i.ck
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  store <2 x double> %i.dc, ptr %i.cl, align 8
  %i.dm = load ptr, ptr %.phi.trans.insert, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16 ; 2 uses
  store ptr %i.dn, ptr %.phi.trans.insert, align 8
  %.pre172 = load ptr, ptr %i.ag, align 8
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit

bb.j:                                             ; preds = %.lr.ph
  %i.do = load ptr, ptr %1, align 8               ; 5 uses
  %i.dp = ptrtoint ptr %i.ck to i64
  %i.dq = ptrtoint ptr %i.do to i64               ; 2 uses
  %i.dr = sub i64 %i.dp, %i.dq                    ; 3 uses
  %i.ds = icmp eq i64 %i.dr, 9223372036854775792
  br i1 %i.ds, label %bb.k, label %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #25
  unreachable

_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.dt = ashr exact i64 %i.dr, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.dt, i64 1)
  %i.du = add nsw i64 %.sroa.speculated.i.i.i, %i.dt ; 2 uses
  %i.dv = icmp ult i64 %i.du, %i.dt
  %i.dw = call i64 @llvm.umin.i64(i64 %i.du, i64 576460752303423487)
  %i.dx = select i1 %i.dv, i64 576460752303423487, i64 %i.dw ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.dx, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.dy = shl nuw nsw i64 %i.dx, 4
  %i.dz = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dy) #26 ; 5 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.dr
  store <2 x double> %i.dc, ptr %i.ea, align 8
  %.not10.i.i.i.i.i = icmp eq ptr %i.do, %i.ck
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ec, %.lr.ph.i.i.i.i.i ], [ %i.dz, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.eb, %.lr.ph.i.i.i.i.i ], [ %i.do, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !236
  %i.eb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.eb, %i.ck
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.dz, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ec, %.lr.ph.i.i.i.i.i ]
  %i.ed = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i34.i.i = icmp eq ptr %i.do, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  %i.ee = load ptr, ptr %i.ag, align 8
  %i.ef = ptrtoint ptr %i.ee to i64
  %i.eg = sub i64 %i.ef, %i.dq
  call void @_ZdlPvm(ptr noundef nonnull %i.do, i64 noundef %i.eg) #27
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  store ptr %i.dz, ptr %1, align 8
  store ptr %i.ed, ptr %.phi.trans.insert, align 8
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr %i.dz, i64 %i.dx ; 2 uses
  store ptr %i.eh, ptr %i.ag, align 8
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit

_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit: ; preds = %bb.i, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.ei = phi ptr [ %.pre172, %bb.i ], [ %i.eh, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  %i.ej = phi ptr [ %i.dn, %bb.i ], [ %i.ed, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.097.0143, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.ek, %i.bf
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge159:                                   ; preds = %vector.body, %.lr.ph158, %._crit_edge
  %i.el = fdiv <2 x double> splat (double 1.000000e+00), %i.bw ; 7 uses
  %12 = extractelement <2 x double> %i.el, i64 0
  %i.em = fneg <2 x double> %i.bq                 ; 2 uses
  %foldExtExtBinop = fmul <2 x double> %i.el, %i.em ; 3 uses
  %13 = extractelement <2 x double> %i.el, i64 1  ; 3 uses
  %foldExtExtBinop215 = fmul <2 x double> %i.el, %i.em ; 4 uses
  %14 = extractelement <2 x double> %foldExtExtBinop215, i64 1
  %i.en = fneg double %.0.lcssa
  %15 = fdiv double %i.en, %i.bv                  ; 4 uses
  %i.eo = fmul <2 x double> %7, zeroinitializer   ; 3 uses
  %16 = shufflevector <2 x double> %foldExtExtBinop, <2 x double> %i.el, <2 x i32> <i32 0, i32 2>
  %17 = extractelement <2 x double> %7, i64 0
  %18 = fmul double %17, %13
  %i.ep = extractelement <2 x double> %6, i64 0
  %19 = call double @llvm.fmuladd.f64(double %i.ep, double 0.000000e+00, double %18)
  %20 = call double @llvm.fmuladd.f64(double %8, double 0.000000e+00, double %19)
  %foldExtExtBinop217 = fmul <2 x double> %7, %i.el
  %21 = shufflevector <2 x double> %6, <2 x double> %foldExtExtBinop215, <2 x i32> <i32 3, i32 1>
  %22 = insertelement <2 x double> %foldExtExtBinop217, double %20, i64 0
  %23 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %21, <2 x double> zeroinitializer, <2 x double> %22) ; 2 uses
  %i.eq = fmul double %i.o, %13
  %24 = insertelement <2 x double> %i.q, double %i.l, i64 1
  %25 = shufflevector <2 x double> %23, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %26 = insertelement <2 x double> %25, double %i.eq, i64 1
  %i.er = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %24, <2 x double> zeroinitializer, <2 x double> %26)
  %27 = shufflevector <2 x double> %foldExtExtBinop215, <2 x double> %i.q, <2 x i32> <i32 1, i32 3>
  %i.es = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %27, <2 x double> zeroinitializer, <2 x double> %i.er) ; 2 uses
  %28 = fmul double %13, 0.000000e+00
  %29 = fadd double %28, 0.000000e+00
  %30 = fadd double %14, %29
  %31 = shufflevector <2 x double> %foldExtExtBinop215, <2 x double> %6, <2 x i32> <i32 1, i32 2>
  %32 = shufflevector <2 x double> %i.es, <2 x double> %i.eo, <2 x i32> <i32 1, i32 2>
  %33 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %31, <2 x double> zeroinitializer, <2 x double> %32) ; 3 uses
  %34 = extractelement <2 x double> %33, i64 1
  %35 = fadd double %34, %8
  %36 = insertelement <2 x double> %6, double %15, i64 0
  %37 = insertelement <2 x double> %i.eo, double %35, i64 0
  %38 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %36, <2 x double> zeroinitializer, <2 x double> %37) ; 3 uses
  %39 = fmul double %i.o, 0.000000e+00            ; 2 uses
  %40 = call double @llvm.fmuladd.f64(double %i.l, double %12, double %39)
  %41 = call double @llvm.fmuladd.f64(double %10, double 0.000000e+00, double %40)
  %42 = insertelement <2 x double> <double poison, double 0.000000e+00>, double %41, i64 0
  %43 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %16, <2 x double> zeroinitializer, <2 x double> %42) ; 2 uses
  %44 = insertelement <2 x double> poison, double %15, i64 0
  %i.et = insertelement <2 x double> %44, double %i.l, i64 1
  %45 = shufflevector <2 x double> %38, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %46 = fadd <2 x double> %45, %i.q
  %i.eu = insertelement <2 x double> %46, double %39, i64 1
  %i.ev = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.et, <2 x double> zeroinitializer, <2 x double> %i.eu) ; 3 uses
  %47 = shufflevector <2 x double> %43, <2 x double> %i.ev, <2 x i32> <i32 1, i32 3>
  %48 = insertelement <2 x double> %i.q, double 0.000000e+00, i64 0
  %49 = fadd <2 x double> %47, %48                ; 2 uses
  %foldExtExtBinop221 = fadd <2 x double> %foldExtExtBinop, %49
  %i.ew = extractelement <2 x double> %foldExtExtBinop221, i64 0
  %50 = insertelement <2 x double> poison, double %15, i64 0
  %51 = insertelement <2 x double> %50, double %8, i64 1
  %52 = shufflevector <2 x double> %33, <2 x double> %49, <2 x i32> <i32 3, i32 1>
  %53 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %51, <2 x double> zeroinitializer, <2 x double> %52) ; 2 uses
  %54 = shufflevector <2 x double> %38, <2 x double> %i.ev, <2 x i32> <i32 1, i32 3>
  %55 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.q, <2 x double> zeroinitializer, <2 x double> %54)
  %56 = shufflevector <2 x double> %i.el, <2 x double> poison, <2 x i32> zeroinitializer
  %57 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %6, <2 x double> %56, <2 x double> %i.eo)
  %58 = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %59 = insertelement <2 x double> %58, double %8, i64 0
  %60 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %59, <2 x double> zeroinitializer, <2 x double> %57)
  %i.ex = shufflevector <2 x double> %foldExtExtBinop, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ey = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ex, <2 x double> zeroinitializer, <2 x double> %60)
  store <2 x double> %i.ey, ptr %0, align 8
  %.sroa.11123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %61 = extractelement <2 x double> %43, i64 0
  store double %61, ptr %.sroa.11123.0..sroa_idx, align 8
  %.sroa.27129.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.ew, ptr %.sroa.27129.0..sroa_idx.a, align 8
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %62 = extractelement <2 x double> %23, i64 0
  store double %62, ptr %.sroa.19.0..sroa_idx, align 8
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %63 = extractelement <2 x double> %i.es, i64 0
  store double %63, ptr %.sroa.23.0..sroa_idx, align 8
  %.sroa.27129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %64 = extractelement <2 x double> %33, i64 0
  store double %64, ptr %.sroa.27129.0..sroa_idx, align 8
  %.sroa.43.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %30, ptr %.sroa.43.0..sroa_idx.a, align 8
  %.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %65 = extractelement <2 x double> %38, i64 0
  store double %65, ptr %.sroa.35.0..sroa_idx, align 8
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %66 = extractelement <2 x double> %i.ev, i64 0
  store double %66, ptr %.sroa.39.0..sroa_idx, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %67 = extractelement <2 x double> %53, i64 0
  store double %67, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %68 = insertelement <2 x double> %53, double %15, i64 0
  %69 = fadd <2 x double> %68, zeroinitializer
  store <2 x double> %69, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  %70 = fadd <2 x double> %55, zeroinitializer
  store <2 x double> %70, ptr %.sroa.55.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store double 1.000000e+00, ptr %.sroa.57.0..sroa_idx, align 8
  br label %bb.m

.lr.ph158:                                        ; preds = %.lr.ph158.preheader, %.lr.ph158
  %.sroa.078.0156 = phi ptr [ %i.fg, %.lr.ph158 ], [ %i.bm, %.lr.ph158.preheader ] ; 3 uses
  %i.ez = load <2 x double>, ptr %.sroa.078.0156, align 8
  %i.fa = fsub <2 x double> %i.ez, %i.bq
  %i.fb = fdiv <2 x double> %i.fa, %i.bw          ; 2 uses
  %i.fc = fcmp olt <2 x double> %i.fb, zeroinitializer
  %i.fd = select <2 x i1> %i.fc, <2 x double> zeroinitializer, <2 x double> %i.fb ; 2 uses
  %i.fe = fcmp ogt <2 x double> %i.fd, splat (double 1.000000e+00)
  %i.ff = select <2 x i1> %i.fe, <2 x double> splat (double 1.000000e+00), <2 x double> %i.fd
  store <2 x double> %i.ff, ptr %.sroa.078.0156, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.078.0156, i64 16 ; 2 uses
  %.not136 = icmp eq ptr %i.fg, %i.bl
  br i1 %.not136, label %._crit_edge159, label %.lr.ph158, !llvm.loop !233

bb.m:                                             ; preds = %bb.d, %._crit_edge159, %bb.b
  ret void
}

declare void @_ZN6Assimp3IFC26DerivePlaneCoordinateSpaceERKNS0_8TempMeshERbR10aiVector3tIdE(ptr dead_on_unwind writable sret(%class.aiMatrix3x3t) align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6Assimp3IFC16GenerateOpeningsERSt6vectorINS0_11TempOpeningESaIS2_EERNS0_8TempMeshEbbRK10aiVector3tIdE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i1 noundef zeroext %2, i1 noundef zeroext %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.std::vector.91", align 8    ; 14 uses
  %i.c = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.std::vector.5", align 8     ; 10 uses
  %7 = alloca %class.aiVector3t, align 8          ; 9 uses
  %8 = alloca %class.aiMatrix4x4t, align 8        ; 10 uses
  %9 = alloca %class.aiMatrix4x4t, align 8        ; 10 uses
  %10 = alloca %class.aiMatrix4x4t, align 8       ; 5 uses
  %11 = alloca %"class.std::vector.15", align 8   ; 22 uses
  %12 = alloca %"class.std::vector.5", align 8    ; 22 uses
  %.sroa.0417 = alloca ptr, align 8               ; 8 uses
  %.sroa.11422 = alloca ptr, align 8              ; 8 uses
  %.sroa.18 = alloca ptr, align 8                 ; 9 uses
  %13 = alloca %"struct.std::pair.3", align 16    ; 13 uses
  %14 = alloca %"class.std::vector.96", align 8   ; 12 uses
  %i.d = alloca i8, align 1                       ; 7 uses
  %15 = alloca %"class.std::vector.43", align 8   ; 19 uses
  %16 = alloca %"class.__gnu_cxx::__normal_iterator.101", align 8 ; 5 uses
  %17 = alloca %"class.__gnu_cxx::__normal_iterator.101", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store i8 1, ptr %i.c, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %..sroa.gep410 = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 11 uses
  %..sroa.gep416 = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  invoke void @_ZN6Assimp3IFC16ProjectOntoPlaneERSt6vectorI10aiVector2tIdESaIS3_EERKNS0_8TempMeshERbR10aiVector3tIdE(ptr dead_on_unwind nonnull writable sret(%class.aiMatrix4x4t) align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.c, align 1, !range !22, !noundef !23
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.dd

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %10, ptr noundef nonnull align 8 dereferenceable(128) %8, i64 128, i1 false)
  %i.h = invoke noundef nonnull align 8 dereferenceable(128) ptr @_ZN12aiMatrix4x4tIdE7InverseEv(ptr noundef nonnull align 8 dereferenceable(128) %10)
          to label %_ZN10aiVector3tIdE9NormalizeEv.exit unwind label %bb.e

_ZN10aiVector3tIdE9NormalizeEv.exit:              ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %9, ptr noundef nonnull align 8 dereferenceable(128) %i.h, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0417)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11422)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.18)
  store ptr null, ptr %.sroa.0417, align 8
  store ptr null, ptr %.sroa.11422, align 8
  store ptr null, ptr %.sroa.18, align 8
  %.sroa.0407.0.copyload = load double, ptr %4, align 8 ; 2 uses
  %.sroa.6408.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.6408.0.copyload = load double, ptr %.sroa.6408.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8409.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.8409.0.copyload = load double, ptr %.sroa.8409.0..sroa_idx, align 8 ; 2 uses
  %i.i = fmul double %.sroa.6408.0.copyload, %.sroa.6408.0.copyload
  %i.j = call double @llvm.fmuladd.f64(double %.sroa.0407.0.copyload, double %.sroa.0407.0.copyload, double %i.i)
  %i.k = call noundef double @llvm.fmuladd.f64(double %.sroa.8409.0.copyload, double %.sroa.8409.0.copyload, double %i.j)
  %i.l = call noundef double @sqrt(double noundef %i.k) #28 ; 0 uses
  %i.m = load ptr, ptr %0, align 8                ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not455650 = icmp eq ptr %i.m, %i.o
  br i1 %.not455650, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit, label %.lr.ph654

.lr.ph654:                                        ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 88
  %.sroa.11358.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  %.sroa.11352.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 9 uses
  %i.z = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 16
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.dc

bb.f:                                             ; preds = %bb.cu, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit252

bb.g:                                             ; preds = %.lr.ph654, %bb.ci
  %.sroa.0417.0..sroa.0417.0..sroa.0417.0.418759 = phi ptr [ null, %.lr.ph654 ], [ %.sroa.0417.0..sroa.0417.0..sroa.0417.0.418760, %bb.ci ] ; 2 uses
  %.sroa.11422.0..sroa.11422.0..sroa.11422.8. = phi ptr [ null, %.lr.ph654 ], [ %.sroa.11422.0..sroa.11422.0..sroa.11422.8.756, %bb.ci ] ; 3 uses
  %.sroa.0417.0..sroa.0417.0..sroa.0417.0. = phi ptr [ null, %.lr.ph654 ], [ %.sroa.0417.0..sroa.0417.0..sroa.0417.0.753, %bb.ci ] ; 3 uses
  %.0653 = phi i1 [ undef, %.lr.ph654 ], [ %.8, %bb.ci ] ; 6 uses
  %.sroa.0404.0651 = phi ptr [ %i.m, %.lr.ph654 ], [ %i.ub, %bb.ci ] ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0404.0651, i64 8
  %.sroa.0383.0.copyload = load double, ptr %i.af, align 8 ; 4 uses
  %.sroa.10388.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0404.0651, i64 16
  %.sroa.10388.0.copyload = load double, ptr %.sroa.10388.0..sroa_idx, align 8 ; 4 uses
  %.sroa.15394.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0404.0651, i64 24
  %.sroa.15394.0.copyload = load double, ptr %.sroa.15394.0..sroa_idx, align 8 ; 4 uses
  %i.ag = fmul double %.sroa.10388.0.copyload, %.sroa.10388.0.copyload
  %i.ah = call double @llvm.fmuladd.f64(double %.sroa.0383.0.copyload, double %.sroa.0383.0.copyload, double %i.ag)
  %i.ai = call noundef double @llvm.fmuladd.f64(double %.sroa.15394.0.copyload, double %.sroa.15394.0.copyload, double %i.ah) ; 2 uses
  %i.aj = fcmp ogt double %i.ai, 1.000000e-10
  br i1 %i.aj, label %bb.h, label %_ZN10aiVector3tIdE9NormalizeEv.exit181

bb.h:                                             ; preds = %bb.g
  %i.ak = call noundef double @sqrt(double noundef %i.ai) #28 ; 2 uses
  %i.al = fcmp oeq double %i.ak, 0.000000e+00
  br i1 %i.al, label %_ZN10aiVector3tIdE9NormalizeEv.exit181, label %_ZN10aiVector3tIdEdVEd.exit.i180

_ZN10aiVector3tIdEdVEd.exit.i180:                 ; preds = %bb.h
  %i.am = fdiv double 1.000000e+00, %i.ak         ; 3 uses
  %i.an = fmul double %.sroa.0383.0.copyload, %i.am
  %i.ao = fmul double %.sroa.10388.0.copyload, %i.am
  %i.ap = fmul double %.sroa.15394.0.copyload, %i.am
  br label %_ZN10aiVector3tIdE9NormalizeEv.exit181

_ZN10aiVector3tIdE9NormalizeEv.exit181:           ; preds = %bb.g, %_ZN10aiVector3tIdEdVEd.exit.i180, %bb.h
  %.sroa.0383.0 = phi double [ %i.an, %_ZN10aiVector3tIdEdVEd.exit.i180 ], [ %.sroa.0383.0.copyload, %bb.h ], [ 0.000000e+00, %bb.g ] ; 3 uses
  %.sroa.10388.0 = phi double [ %i.ao, %_ZN10aiVector3tIdEdVEd.exit.i180 ], [ %.sroa.10388.0.copyload, %bb.h ], [ 0.000000e+00, %bb.g ] ; 3 uses
  %.sroa.15394.0 = phi double [ %i.ap, %_ZN10aiVector3tIdEdVEd.exit.i180 ], [ %.sroa.15394.0.copyload, %bb.h ], [ 0.000000e+00, %bb.g ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0404.0651, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8            ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0404.0651, i64 48
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %.not456 = icmp eq ptr %i.at, null
  br i1 %.not456, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit181
  %i.au = fmul double %.sroa.10388.0, %.sroa.10388.0
  %i.av = call double @llvm.fmuladd.f64(double %.sroa.0383.0, double %.sroa.0383.0, double %i.au)
  %i.aw = call noundef double @llvm.fmuladd.f64(double %.sroa.15394.0, double %.sroa.15394.0, double %i.av)
  %i.ax = fcmp ogt double %i.aw, 0.000000e+00
  br i1 %i.ax, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ay = load double, ptr %7, align 8
  %i.az = load double, ptr %i.p, align 8
  %i.ba = fmul double %.sroa.10388.0, %i.az
  %i.bb = call double @llvm.fmuladd.f64(double %.sroa.0383.0, double %i.ay, double %i.ba)
  %i.bc = load double, ptr %i.q, align 8
  %i.bd = call noundef double @llvm.fmuladd.f64(double %.sroa.15394.0, double %i.bc, double %i.bb)
  %i.be = call double @llvm.fabs.f64(double %i.bd)
  %i.bf = fcmp ogt double %i.be, 9.000000e-01     ; 2 uses
  %spec.select454 = select i1 %i.bf, ptr %i.at, ptr %i.ar
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %_ZN10aiVector3tIdE9NormalizeEv.exit181
  %.0144 = phi i1 [ false, %_ZN10aiVector3tIdE9NormalizeEv.exit181 ], [ %i.bf, %bb.j ], [ false, %bb.i ] ; 2 uses
  %.0143 = phi ptr [ %i.ar, %_ZN10aiVector3tIdE9NormalizeEv.exit181 ], [ %spec.select454, %bb.j ], [ %i.ar, %bb.i ] ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0143, i64 8 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp6Logger5errorIJPKcRA55_S2_EEEvDpOT_:bb.a
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IPKcEERKT_.exit unwind label %bb.d ; 0 uses

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.d ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4) #28
  br label %common.resume

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IPKcEERKT_.exit: ; preds = %bb.b, %bb.c
  invoke void @_ZN6Assimp6Logger13formatMessageIJERA55_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(55) %2)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IPKcEERKT_.exit
  %i.l = load ptr, ptr %3, align 8
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %i.l)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %3, align 8                ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.r = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.r, ptr %4, align 8
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.t = getelementptr i8, ptr %i.r, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %4, i64 %i.u
  store ptr %i.s, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ab = load i64, ptr %i.z, align 8
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #27
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.w, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ad) #28
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ae) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void

bb.g:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IPKcEERKT_.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

bb.h:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = load ptr, ptr %3, align 8               ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.h
  %i.ak = load i64, ptr %i.ai, align 8
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6, %bb.g
  %.pn = phi { ptr, i32 } [ %i.af, %bb.g ], [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6 ], [ %i.ag, %bb.h ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJERA55_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(55) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 13 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(55) %3) #28
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef nonnull align 1 dereferenceable(55) %3, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !699)
  call void @llvm.experimental.noalias.scope.decl(metadata !700)
  call void @llvm.experimental.noalias.scope.decl(metadata !701)
  call void @llvm.experimental.noalias.scope.decl(metadata !702)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !alias.scope !703
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !alias.scope !703
  store i8 0, ptr %i.c, align 8, !alias.scope !703
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !noalias !703 ; 3 uses
  %.not.i.not.i.i.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !703 ; 2 uses
  %i.i = icmp ugt ptr %i.f, %i.h
  %.08.i.i.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.h ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i, null
  %.not.i.i.i.i = select i1 %.not.i.not.i.i.i.i, i1 true, i1 %.not5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !noalias !703 ; 2 uses
  %i.l = ptrtoint ptr %.08.i.i.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.k, i64 noundef %i.n)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !alias.scope !703 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.c, align 8, !alias.scope !703
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #27
  br label %.body

bb.d:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c

_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.d, %bb.b
  %i.v = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.v, ptr %4, align 8
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.x = getelementptr i8, ptr %i.v, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %4, i64 %i.y
  store ptr %i.w, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit
  %i.af = load i64, ptr %i.ad, align 8
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #27
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aa, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ah) #28
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ai) #28
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #28
  resume { ptr, i32 } %i.p
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind memory(none) }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nofree noreturn }
attributes #17 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nounwind willreturn memory(read) }
attributes #25 = { noreturn }
attributes #26 = { builtin allocsize(0) }
attributes #27 = { builtin nounwind }
attributes #28 = { nounwind }
attributes #29 = { noreturn nounwind }

!llvm.module.flags = !{!16, !17}
!llvm.ident = !{!18}

!0 = distinct !{!0, !19}
!1 = distinct !{!1, !19}
!2 = distinct !{!2, !19}
!3 = distinct !{!3, !19}
!4 = distinct !{!4, !19}
!5 = distinct !{!5, !19}
!6 = distinct !{!6, !19}
!7 = distinct !{!7, !19}
!8 = distinct !{!8, !19}
!9 = distinct !{!9, !19}
!10 = distinct !{!10, !19}
!11 = distinct !{!11, !19}
!12 = distinct !{!12, !19}
!13 = distinct !{!13, !19}
!14 = distinct !{!14, !19}
!15 = distinct !{!15, !19}
!16 = !{i32 8, !"PIC Level", i32 2}
!17 = !{i32 7, !"uwtable", i32 2}
!18 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!21 = !{!"llvm.loop.peeled.count", i32 1}
!22 = !{i8 0, i8 2}
!23 = !{}
!24 = !{!"llvm.loop.isvectorized", i32 1}
!25 = !{!"llvm.loop.unroll.runtime.disable"}
!26 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!27 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!28 = distinct !{!28, !19}
!29 = distinct !{!29, i1 false, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!30 = distinct !{!30, !29, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!31 = distinct !{!31, !29, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!32 = distinct !{!32, i1 false, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!33 = distinct !{!33, !32, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!34 = distinct !{!34, !32, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!35 = distinct !{!35, i1 false, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!36 = distinct !{!36, !35, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!37 = distinct !{!37, !35, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!38 = distinct !{!38, !19}
!39 = distinct !{!39, i1 false, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!40 = distinct !{!40, !39, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!41 = distinct !{!41, !39, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!42 = distinct !{!42, i1 false, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!43 = distinct !{!43, !42, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!44 = distinct !{!44, !42, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!45 = distinct !{!45, i1 false, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!46 = distinct !{!46, !45, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!47 = distinct !{!47, !45, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!48 = distinct !{!48, i1 false, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!49 = distinct !{!49, !48, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!50 = distinct !{!50, !48, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!51 = !{!31, !30}
!52 = !{!34, !33}
!53 = !{!37, !36}
!54 = !{!41, !40}
!55 = !{!44, !43}
!56 = !{!47, !46}
!57 = !{!50, !49}
!58 = distinct !{!58, i1 false, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!59 = distinct !{!59, !58, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!60 = distinct !{!60, !58, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!61 = !{!60, !59}
!62 = distinct !{!62, i1 false, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!63 = distinct !{!63, !62, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!64 = distinct !{!64, !62, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!65 = !{!64, !63}
!66 = distinct !{!66, !19}
!67 = distinct !{!67, !19}
!68 = distinct !{!68, i1 false, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!69 = distinct !{!69, !68, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!70 = distinct !{!70, !68, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!71 = distinct !{!71, !19}
!72 = distinct !{!72, i1 false, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!73 = distinct !{!73, !72, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!74 = distinct !{!74, !72, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!75 = distinct !{!75, i1 false, !"_ZNSt6vectorI10aiVector3tIdESaIS1_EE6rbeginEv"}
!76 = distinct !{!76, !75, !"_ZNSt6vectorI10aiVector3tIdESaIS1_EE6rbeginEv: argument 0"}
!77 = distinct !{!77, !19}
!78 = distinct !{!78, !19}
!79 = distinct !{!79, !19}
!80 = !{!70, !69}
!81 = !{!74, !73}
!82 = !{!76}
!83 = distinct !{!83, i1 false, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_"}
!84 = distinct !{!84, !83, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!85 = distinct !{!85, !83, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!86 = distinct !{!86, i1 false, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_"}
!87 = distinct !{!87, !86, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!88 = distinct !{!88, !86, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!89 = !{!85, !84}
!90 = !{!88, !87}
!91 = distinct !{!91, i1 false, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_"}
!92 = distinct !{!92, !91, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!93 = distinct !{!93, !91, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!94 = distinct !{!94, i1 false, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_"}
!95 = distinct !{!95, !94, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!96 = distinct !{!96, !94, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!97 = !{!93, !92}
!98 = !{!96, !95}
!99 = distinct !{!99, i1 false, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_"}
!100 = distinct !{!100, !99, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!101 = distinct !{!101, !99, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!102 = !{!101, !100}
!103 = distinct !{!103, i1 false, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_"}
!104 = distinct !{!104, !103, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!105 = distinct !{!105, !103, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!106 = distinct !{!106, i1 false, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_"}
!107 = distinct !{!107, !106, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!108 = distinct !{!108, !106, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!109 = distinct !{!109, i1 false, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_"}
!110 = distinct !{!110, !109, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!111 = distinct !{!111, !109, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!112 = distinct !{!112, i1 false, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_"}
!113 = distinct !{!113, !112, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!114 = distinct !{!114, !112, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!115 = distinct !{!115, i1 false, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!116 = distinct !{!116, !115, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!117 = distinct !{!117, !115, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!118 = !{!105, !104}
!119 = !{!108, !107}
!120 = !{!111, !110}
!121 = !{!114, !113}
!122 = !{!117, !116}
!123 = distinct !{!123, !19}
!124 = distinct !{!124, i1 false, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!125 = distinct !{!125, !124, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!126 = distinct !{!126, !124, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!127 = distinct !{!127, !141}
!128 = distinct !{!128, i1 false, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!129 = distinct !{!129, !128, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!130 = distinct !{!130, !128, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!131 = distinct !{!131, i1 false, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!132 = distinct !{!132, !131, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!133 = distinct !{!133, !131, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!134 = distinct !{!134, !141}
!135 = distinct !{!135, i1 false, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!136 = distinct !{!136, !135, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!137 = distinct !{!137, !135, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!138 = distinct !{!138, !19}
!139 = distinct !{!139, !19}
!140 = !{!126, !125}
!141 = !{!"llvm.loop.unroll.disable"}
!142 = !{!130, !129}
!143 = !{!133, !132}
!144 = !{!137, !136}
!145 = distinct !{!145, !19, !21}
!146 = distinct !{!146, !19, !21}
!147 = distinct !{!147, i1 false, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!148 = distinct !{!148, !147, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!149 = distinct !{!149, !147, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!150 = distinct !{!150, i1 false, !"_ZmlIdE10aiVector3tIT_ERK12aiMatrix4x4tIS1_ERKS2_"}
!151 = distinct !{!151, !150, !"_ZmlIdE10aiVector3tIT_ERK12aiMatrix4x4tIS1_ERKS2_: argument 0"}
!152 = distinct !{!152, i1 false, !"LVerDomain"}
!153 = distinct !{!153, !152}
!154 = distinct !{!154, !152}
!155 = distinct !{!155, !19, !24, !25}
!156 = distinct !{!156, !19, !24}
!157 = distinct !{!157, i1 false, !"_ZmlIdE10aiVector3tIT_ERK12aiMatrix4x4tIS1_ERKS2_"}
!158 = distinct !{!158, !157, !"_ZmlIdE10aiVector3tIT_ERK12aiMatrix4x4tIS1_ERKS2_: argument 0"}
!159 = distinct !{!159, i1 false, !"_ZmiIdE10aiVector3tIT_ERKS2_S4_"}
!160 = distinct !{!160, !159, !"_ZmiIdE10aiVector3tIT_ERKS2_S4_: argument 0"}
!161 = distinct !{!161, i1 false, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!162 = distinct !{!162, !161, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!163 = distinct !{!163, !161, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!164 = distinct !{!164, i1 false, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!165 = distinct !{!165, !164, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
end_hunk_1
