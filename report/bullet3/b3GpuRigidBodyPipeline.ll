Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3GpuRigidBodyPipeline?download=true
inline.NumInlined: 600
inline.NumDeleted: 254
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZN22b3GpuRigidBodyPipeline9integrateEf:bb.a
.split7.i.i82:                                    ; preds = %.noexc83, %bb.aa
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.26, i32 noundef 301)
          to label %.noexc84 unwind label %bb.ag

.noexc84:                                         ; preds = %.split7.i.i82
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.27)
          to label %.noexc85 unwind label %bb.ag

.noexc85:                                         ; preds = %.noexc84
  store i32 0, ptr %i.gm, align 4, !tbaa !165
  br label %_ZNK20b3AlignedObjectArrayI15b3KernelArgDataE4copyEiiPS0_.exit.i.i71

_ZNK20b3AlignedObjectArrayI15b3KernelArgDataE4copyEiiPS0_.exit.i.i71.loopexit.unr-lcssa: ; preds = %bb.ab
  %lcmp.mod156.not = icmp eq i64 %xtraiter155, 0
  br i1 %lcmp.mod156.not, label %_ZNK20b3AlignedObjectArrayI15b3KernelArgDataE4copyEiiPS0_.exit.i.i71, label %.epil.preheader154

.epil.preheader154:                               ; preds = %_ZNK20b3AlignedObjectArrayI15b3KernelArgDataE4copyEiiPS0_.exit.i.i71.loopexit.unr-lcssa, %.lr.ph.i.i.i77
  %indvars.iv.i.i.i79.epil.init = phi i64 [ 0, %.lr.ph.i.i.i77 ], [ %indvars.iv.next.i.i.i80.1, %_ZNK20b3AlignedObjectArrayI15b3KernelArgDataE4copyEiiPS0_.exit.i.i71.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod157 = trunc i32 %i.gy to i1
  call void @llvm.assume(i1 %lcmp.mod157)
  %i.hi = getelementptr inbounds nuw [32 x i8], ptr %i.gw, i64 %indvars.iv.i.i.i79.epil.init
  %i.hj = load ptr, ptr %i.ha, align 8, !tbaa !167
  %i.hk = getelementptr inbounds nuw [32 x i8], ptr %i.hj, i64 %indvars.iv.i.i.i79.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.hi, ptr noundef nonnull align 16 dereferenceable(32) %i.hk, i64 32, i1 false), !tbaa.struct !168
  br label %_ZNK20b3AlignedObjectArrayI15b3KernelArgDataE4copyEiiPS0_.exit.i.i71

_ZNK20b3AlignedObjectArrayI15b3KernelArgDataE4copyEiiPS0_.exit.i.i71: ; preds = %.epil.preheader154, %_ZNK20b3AlignedObjectArrayI15b3KernelArgDataE4copyEiiPS0_.exit.i.i71.loopexit.unr-lcssa, %.noexc85, %.split.i.i70
  %.0.i12.i.i72 = phi ptr [ null, %.noexc85 ], [ %i.gw, %.split.i.i70 ], [ %i.gw, %_ZNK20b3AlignedObjectArrayI15b3KernelArgDataE4copyEiiPS0_.exit.i.i71.loopexit.unr-lcssa ], [ %i.gw, %.epil.preheader154 ]
  %.0.i.i73 = phi i32 [ 0, %.noexc85 ], [ %i.gs, %.split.i.i70 ], [ %i.gs, %_ZNK20b3AlignedObjectArrayI15b3KernelArgDataE4copyEiiPS0_.exit.i.i71.loopexit.unr-lcssa ], [ %i.gs, %.epil.preheader154 ]
  %i.hl = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !167 ; 2 uses
  %.not.i10.i.i74 = icmp ne ptr %i.hm, null
  %i.hn = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.ho = load i8, ptr %i.hn, align 8, !range !102
  %i.hp = trunc nuw i8 %i.ho to i1
  %or.cond115 = select i1 %.not.i10.i.i74, i1 %i.hp, i1 false
  br i1 %or.cond115, label %bb.ac, label %_ZN20b3AlignedObjectArrayI15b3KernelArgDataE10deallocateEv.exit.i.i75

bb.ac:                                            ; preds = %_ZNK20b3AlignedObjectArrayI15b3KernelArgDataE4copyEiiPS0_.exit.i.i71
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.hm)
          to label %_ZN20b3AlignedObjectArrayI15b3KernelArgDataE10deallocateEv.exit.i.i75 unwind label %bb.ag

_ZN20b3AlignedObjectArrayI15b3KernelArgDataE10deallocateEv.exit.i.i75: ; preds = %bb.ac, %_ZNK20b3AlignedObjectArrayI15b3KernelArgDataE4copyEiiPS0_.exit.i.i71
  store i8 1, ptr %i.hn, align 8, !tbaa !170
  store ptr %.0.i12.i.i72, ptr %i.hl, align 8, !tbaa !167
  store i32 %.0.i.i73, ptr %i.go, align 8, !tbaa !166
  %.pre.i76 = load i32, ptr %i.gm, align 4, !tbaa !165
  br label %.noexc17

.noexc17:                                         ; preds = %_ZN20b3AlignedObjectArrayI15b3KernelArgDataE10deallocateEv.exit.i.i75, %bb.z, %bb.y
  %i.hq = phi i32 [ %.pre.i76, %_ZN20b3AlignedObjectArrayI15b3KernelArgDataE10deallocateEv.exit.i.i75 ], [ %i.gn, %bb.z ], [ %i.gn, %bb.y ]
  %i.hr = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !167
  %i.ht = sext i32 %i.hq to i64
  %i.hu = getelementptr inbounds [32 x i8], ptr %i.hs, i64 %i.ht ; 4 uses
  store i32 0, ptr %i.hu, align 16, !tbaa !65
  %.sroa.4102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hu, i64 4
  store i32 %i.gl, ptr %.sroa.4102.0..sroa_idx, align 4, !tbaa !65
  %.sroa.5103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  store i32 16, ptr %.sroa.5103.0..sroa_idx, align 8, !tbaa !65
  %.sroa.6104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hu, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.6104.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.6104, i64 20, i1 false), !tbaa.struct !307
  %i.hv = load i32, ptr %i.gm, align 4, !tbaa !165
  %i.hw = add nsw i32 %i.hv, 1
  store i32 %i.hw, ptr %i.gm, align 4, !tbaa !165
  %i.hx = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.hy = load i32, ptr %i.hx, align 8, !tbaa !171
  %i.hz = add i32 %i.hy, 32
  store i32 %i.hz, ptr %i.hx, align 8, !tbaa !171
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6104)
  br label %bb.ad

bb.ad:                                            ; preds = %.noexc17, %_ZN12b3LauncherCL8setConstIfEEvRKT_.exit16
  %i.ia = load ptr, ptr @__clewSetKernelArg, align 8, !tbaa !90
  %i.ib = load ptr, ptr %i.ci, align 8, !tbaa !172
  %i.ic = load i32, ptr %i.ck, align 8, !tbaa !164 ; 2 uses
  %i.id = add nsw i32 %i.ic, 1
  store i32 %i.id, ptr %i.ck, align 8, !tbaa !164
  %i.ie = invoke i32 %i.ia(ptr noundef %i.ib, i32 noundef %i.ic, i64 noundef 16, ptr noundef nonnull align 16 dereferenceable(16) %i.gi)
          to label %_ZN12b3LauncherCL8setConstI9b3Vector3EEvRKT_.exit unwind label %bb.ag, !inline_history !308 ; 0 uses

_ZN12b3LauncherCL8setConstI9b3Vector3EEvRKT_.exit: ; preds = %bb.ad
  %i.if = load i32, ptr %i.d, align 4, !tbaa !65  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull align 16 dereferenceable(24) @__const._ZN12b3LauncherCL8launch2DEiiii.lRange, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.b, ptr noundef nonnull align 16 dereferenceable(24) @__const._ZN12b3LauncherCL8launch2DEiiii.lRange, i64 24, i1 false)
  store i64 64, ptr %i.b, align 16, !tbaa !174
  %i.ig = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.ig, align 8, !tbaa !174
  %i.ih = sext i32 %i.if to i64
  %i.ii = lshr i64 %i.ih, 6
  %i.ij = and i32 %i.if, 63
  %.not.i.i = icmp ne i32 %i.ij, 0
  %i.ik = zext i1 %.not.i.i to i64
  %i.il = add nuw nsw i64 %i.ii, %i.ik
  %.sroa.speculated13.i.i = call i64 @llvm.umax.i64(i64 %i.il, i64 1)
  %i.im = shl i64 %.sroa.speculated13.i.i, 6
  store i64 %i.im, ptr %i.a, align 16, !tbaa !174
  %i.in = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.in, align 8, !tbaa !174
  %i.io = load ptr, ptr @__clewEnqueueNDRangeKernel, align 8, !tbaa !90
  %i.ip = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !175
  %i.ir = load ptr, ptr %i.ci, align 8, !tbaa !172
  %i.is = invoke i32 %i.io(ptr noundef %i.iq, ptr noundef %i.ir, i32 noundef 2, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 0, ptr noundef null, ptr noundef null)
          to label %.noexc19 unwind label %bb.ag, !inline_history !176 ; 2 uses

.noexc19:                                         ; preds = %_ZN12b3LauncherCL8setConstI9b3Vector3EEvRKT_.exit
  %.not9.i.i = icmp eq i32 %i.is, 0
  br i1 %.not9.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.noexc19
  %i.it = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, i32 noundef %i.is) ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.noexc19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @_ZN12b3LauncherCLD1Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ac, %.noexc84, %.split7.i.i82, %_ZN20b3AlignedObjectArrayI15b3KernelArgDataE8allocateEi.exit.i.i69, %bb.w, %.noexc63, %.split7.i.i61, %_ZN20b3AlignedObjectArrayI15b3KernelArgDataE8allocateEi.exit.i.i48, %bb.q, %.noexc42, %.split7.i.i40, %_ZN20b3AlignedObjectArrayI15b3KernelArgDataE8allocateEi.exit.i.i27, %bb.k, %.noexc22, %.split7.i.i, %_ZN20b3AlignedObjectArrayI15b3KernelArgDataE8allocateEi.exit.i.i, %_ZN12b3LauncherCL8setConstI9b3Vector3EEvRKT_.exit, %bb.ad, %bb.x, %bb.r, %bb.l, %bb.e, %bb.d
  %i.iu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12b3LauncherCLD1Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  resume { ptr, i32 } %i.iu

bb.ah:                                            ; preds = %bb.b, %._crit_edge, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13b3OpenCLArrayI13b3InertiaDataED2Ev(ptr noundef nonnull align 8 dead_on_return(50) dereferenceable(50) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV13b3OpenCLArrayI13b3InertiaDataE, i64 16), ptr %0, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !201  ; 2 uses
  %.not.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i8, ptr %i.c, align 8, !range !102
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i = select i1 %.not.i, i1 %i.e, i1 false
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @__clewReleaseMemObject, align 8, !tbaa !90
  %i.g = invoke i32 %i.f(ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.d, !inline_history !309 ; 0 uses

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #22
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13b3OpenCLArrayI15b3RigidBodyDataED2Ev(ptr noundef nonnull align 8 dead_on_return(50) dereferenceable(50) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV13b3OpenCLArrayI15b3RigidBodyDataE, i64 16), ptr %0, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !192  ; 2 uses
  %.not.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i8, ptr %i.c, align 8, !range !102
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i = select i1 %.not.i, i1 %i.e, i1 false
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @__clewReleaseMemObject, align 8, !tbaa !90
  %i.g = invoke i32 %i.f(ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.d, !inline_history !310 ; 0 uses

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #22
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_Z24integrateSingleTransformP15b3RigidBodyDataiffRK9b3Vector3(ptr noundef %0, i32 noundef %1, float noundef %2, float noundef %3, ptr noundef nonnull align 16 dereferenceable(16) %4) local_unnamed_addr #15 comdat {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr inbounds [80 x i8], ptr %0, i64 %i.a ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.d = load float, ptr %i.c, align 4, !tbaa !16
  %i.e = fcmp une float %i.d, 0.000000e+00
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.g = load float, ptr %i.f, align 16, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 52 ; 2 uses
  %i.i = load <2 x float>, ptr %i.h, align 4, !tbaa !15 ; 2 uses
  %i.j = insertelement <2 x float> poison, float %3, i64 0
  %i.k = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.l = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.m = insertelement <2 x float> %i.l, float %i.g, i64 1
  %i.n = fmul <2 x float> %i.k, %i.m              ; 2 uses
  %i.o = extractelement <2 x float> %i.n, i64 1   ; 3 uses
  store float %i.o, ptr %i.f, align 16, !tbaa !15
  %i.p = fmul <2 x float> %i.k, %i.i              ; 5 uses
  %i.q = extractelement <2 x float> %i.p, i64 1   ; 2 uses
  store <2 x float> %i.p, ptr %i.h, align 4, !tbaa !15
  %foldExtExtBinop = fmul <2 x float> %i.p, %i.p
  %i.r = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.s = tail call float @llvm.fmuladd.f32(float %i.o, float %i.o, float %i.r)
  %i.t = tail call noundef float @llvm.fmuladd.f32(float %i.q, float %i.q, float %i.s)
  %sqrt = tail call float @llvm.sqrt.f32(float %i.t) ; 2 uses
  %i.u = fmul float %2, %sqrt
  %i.v = fcmp ogt float %i.u, f0x3F490FDA
  %i.w = fdiv float f0x3F490FDA, %2
  %.0 = select i1 %i.v, float %i.w, float %sqrt   ; 6 uses
  %i.x = fcmp olt float %.0, 1.000000e-03
  br i1 %i.x, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.y = fmul float %2, %2
  %i.z = fmul float %2, %i.y
  %i.aa = fmul float %i.z, f0x3CAAAAAB
  %i.ab = fmul float %i.aa, %.0
  %i.ac = fneg float %.0
  %i.ad = fmul float %i.ab, %i.ac
  %i.ae = tail call float @llvm.fmuladd.f32(float %2, float 5.000000e-01, float %i.ad)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.af = fmul float %.0, 5.000000e-01
  %i.ag = fmul float %2, %i.af
  %i.ah = tail call noundef float @sinf(float noundef %i.ag) #21
  %i.ai = fdiv float %i.ah, %.0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink88 = phi float [ %i.ai, %bb.d ], [ %i.ae, %bb.c ]
  %i.aj = insertelement <2 x float> poison, float %.sink88, i64 0
  %i.ak = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.al = fmul <2 x float> %i.n, %i.ak            ; 4 uses
  %i.am = fmul <2 x float> %i.p, %i.ak            ; 4 uses
  %i.an = fmul float %2, %.0
  %i.ao = fmul float %i.an, 5.000000e-01
  %i.ap = tail call noundef float @cosf(float noundef %i.ao) #21
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.ar = load <2 x float>, ptr %.sroa.562.0..sroa_idx, align 8 ; 6 uses
  %i.as = fneg <2 x float> %i.am                  ; 2 uses
  %i.at = insertelement <2 x float> poison, float %i.ap, i64 0
  %i.au = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.av = shufflevector <2 x float> %i.al, <2 x float> %i.as, <2 x i32> <i32 1, i32 2>
  %i.aw = load <2 x float>, ptr %i.aq, align 16   ; 6 uses
  %i.ax = shufflevector <2 x float> %i.am, <2 x float> %i.al, <2 x i32> <i32 1, i32 3>
  %i.ay = fneg <2 x float> %i.ax
  %i.az = shufflevector <2 x float> %i.al, <2 x float> %i.am, <2 x i32> <i32 1, i32 2>
  %i.ba = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bb = fmul <2 x float> %i.az, %i.ba
  %i.bc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.au, <2 x float> %i.aw, <2 x float> %i.bb)
  %i.bd = shufflevector <2 x float> %i.ar, <2 x float> %i.aw, <2 x i32> <i32 0, i32 2>
  %i.be = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.am, <2 x float> %i.bd, <2 x float> %i.bc)
  %i.bf = shufflevector <2 x float> %i.aw, <2 x float> %i.ar, <2 x i32> <i32 1, i32 2>
  %i.bg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ay, <2 x float> %i.bf, <2 x float> %i.be) ; 4 uses
  %i.bh = fneg <2 x float> %i.aw
  %i.bi = shufflevector <2 x float> %i.ar, <2 x float> %i.bh, <2 x i32> <i32 1, i32 2>
  %i.bj = fmul <2 x float> %i.al, %i.bi
  %i.bk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.au, <2 x float> %i.ar, <2 x float> %i.bj)
  %i.bl = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.av, <2 x float> %i.bl, <2 x float> %i.bk)
  %i.bn = shufflevector <2 x float> %i.aw, <2 x float> %i.ar, <2 x i32> <i32 0, i32 2>
  %i.bo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.as, <2 x float> %i.bn, <2 x float> %i.bm) ; 3 uses
  %foldExtExtBinop90 = fmul <2 x float> %i.bg, %i.bg
  %i.bp = extractelement <2 x float> %foldExtExtBinop90, i64 1
  %i.bq = extractelement <2 x float> %i.bg, i64 0 ; 2 uses
  %i.br = tail call float @llvm.fmuladd.f32(float %i.bq, float %i.bq, float %i.bp)
  %i.bs = extractelement <2 x float> %i.bo, i64 0 ; 2 uses
  %i.bt = tail call float @llvm.fmuladd.f32(float %i.bs, float %i.bs, float %i.br)
  %i.bu = extractelement <2 x float> %i.bo, i64 1 ; 2 uses
  %i.bv = tail call noundef float @llvm.fmuladd.f32(float %i.bu, float %i.bu, float %i.bt)
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.bv)
  %i.bw = fdiv float 1.000000e+00, %sqrt.i.i.i
  %i.bx = insertelement <2 x float> poison, float %i.bw, i64 0
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bz = fmul <2 x float> %i.bg, %i.by
  %i.ca = fmul <2 x float> %i.bo, %i.by
  store <2 x float> %i.bz, ptr %i.aq, align 16
  store <2 x float> %i.ca, ptr %.sroa.562.0..sroa_idx, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.cd = load float, ptr %i.cc, align 8, !tbaa !15 ; 2 uses
  %i.ce = fmul float %2, %i.cd
  %i.cf = load <2 x float>, ptr %i.cb, align 16, !tbaa !15 ; 2 uses
  %i.cg = insertelement <2 x float> poison, float %2, i64 0
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ci = fmul <2 x float> %i.ch, %i.cf
  %i.cj = load <2 x float>, ptr %i.b, align 16, !tbaa !15
  %i.ck = fadd <2 x float> %i.ci, %i.cj
  store <2 x float> %i.ck, ptr %i.b, align 16, !tbaa !15
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.cm = load float, ptr %i.cl, align 8, !tbaa !15
  %i.cn = fadd float %i.ce, %i.cm
  store float %i.cn, ptr %i.cl, align 8, !tbaa !15
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cp = load float, ptr %i.co, align 8, !tbaa !15
  %i.cq = fmul float %2, %i.cp
  %i.cr = load <2 x float>, ptr %4, align 16, !tbaa !15
  %i.cs = fmul <2 x float> %i.ch, %i.cr
  %i.ct = fadd <2 x float> %i.cf, %i.cs
  store <2 x float> %i.ct, ptr %i.cb, align 16, !tbaa !15
  %i.cu = fadd float %i.cd, %i.cq
  store float %i.cu, ptr %i.cc, align 8, !tbaa !15
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  ret void
}

declare void @_ZN16b3GpuNarrowPhase22readbackAllBodiesToCpuEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #5

declare noundef ptr @_ZNK16b3GpuNarrowPhase12getBodiesCpuEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #5

declare noundef ptr @_ZNK16b3GpuNarrowPhase17getCollidablesCpuEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #5

declare noundef ptr @_ZNK16b3GpuNarrowPhase21getLocalSpaceAabbsCpuEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN13b3OpenCLArrayI9b3SapAabbE12copyFromHostERK20b3AlignedObjectArrayIS0_Eb(ptr noundef nonnull align 8 dereferenceable(50) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, i1 noundef zeroext %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !26   ; 2 uses
  %i.d = sext i32 %i.c to i64                     ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !99
  %i.g = icmp ult i64 %i.f, %i.d
  br i1 %i.g, label %bb.b, label %_ZN13b3OpenCLArrayI9b3SapAabbE6resizeEmb.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !104
  %i.j = icmp ult i64 %i.i, %i.d
  br i1 %i.j, label %bb.c, label %_ZN13b3OpenCLArrayI9b3SapAabbE6resizeEmb.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.l = load i8, ptr %i.k, align 1, !tbaa !97, !range !102, !noundef !116
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.n = shl nsw i64 %i.d, 5
  %i.o = load ptr, ptr @__clewCreateBuffer, align 8, !tbaa !90
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !93
  %i.r = call ptr %i.o(ptr noundef %i.q, i64 noundef 1, i64 noundef %i.n, ptr noundef null, ptr noundef nonnull %i.a), !inline_history !311
  %i.s = load i32, ptr %i.a, align 4, !tbaa !65
  %.not.i.i = icmp eq i32 %i.s, 0                 ; 2 uses
  br i1 %.not.i.i, label %_ZNK13b3OpenCLArrayI9b3SapAabbE8copyToCLEP7_cl_memmmm.exit.i.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.d
  call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.24, i32 noundef 166)
  call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.25)
  br label %_ZNK13b3OpenCLArrayI9b3SapAabbE8copyToCLEP7_cl_memmmm.exit.i.i

_ZNK13b3OpenCLArrayI9b3SapAabbE8copyToCLEP7_cl_memmmm.exit.i.i: ; preds = %bb.d, %.thread.i.i
  %.01017.i.i = phi i64 [ 0, %.thread.i.i ], [ %i.d, %bb.d ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !100  ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.u, null
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load i8, ptr %i.v, align 8, !range !102
  %i.x = trunc nuw i8 %i.w to i1
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 %i.x, i1 false
  br i1 %or.cond.i.i.i, label %bb.e, label %_ZN13b3OpenCLArrayI9b3SapAabbE7reserveEmb.exit.i

bb.e:                                             ; preds = %_ZNK13b3OpenCLArrayI9b3SapAabbE8copyToCLEP7_cl_memmmm.exit.i.i
  %i.y = load ptr, ptr @__clewReleaseMemObject, align 8, !tbaa !90
  %i.z = call i32 %i.y(ptr noundef nonnull %i.u), !inline_history !312 ; 0 uses
  br label %_ZN13b3OpenCLArrayI9b3SapAabbE7reserveEmb.exit.i

bb.f:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !100 ; 2 uses
  %.not.i12.i.i = icmp ne ptr %i.ab, null
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = load i8, ptr %i.ac, align 8, !range !102
  %i.ae = trunc nuw i8 %i.ad to i1
  %or.cond.i13.i.i = select i1 %.not.i12.i.i, i1 %i.ae, i1 false
  br i1 %or.cond.i13.i.i, label %bb.g, label %_ZN13b3OpenCLArrayI9b3SapAabbE7reserveEmb.exit.thread12.i

bb.g:                                             ; preds = %bb.f
  %i.af = load ptr, ptr @__clewReleaseMemObject, align 8, !tbaa !90
  %i.ag = tail call i32 %i.af(ptr noundef nonnull %i.ab), !inline_history !312 ; 0 uses
  br label %_ZN13b3OpenCLArrayI9b3SapAabbE7reserveEmb.exit.thread12.i

_ZN13b3OpenCLArrayI9b3SapAabbE7reserveEmb.exit.thread12.i: ; preds = %bb.g, %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  br label %bb.h

_ZN13b3OpenCLArrayI9b3SapAabbE7reserveEmb.exit.i: ; preds = %bb.e, %_ZNK13b3OpenCLArrayI9b3SapAabbE8copyToCLEP7_cl_memmmm.exit.i.i
  store ptr %i.r, ptr %i.t, align 8, !tbaa !100
  store i64 %.01017.i.i, ptr %i.h, align 8, !tbaa !104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br i1 %.not.i.i, label %_ZN13b3OpenCLArrayI9b3SapAabbE6resizeEmb.exit, label %bb.h

bb.h:                                             ; preds = %_ZN13b3OpenCLArrayI9b3SapAabbE7reserveEmb.exit.i, %_ZN13b3OpenCLArrayI9b3SapAabbE7reserveEmb.exit.thread12.i
end_hunk_0
