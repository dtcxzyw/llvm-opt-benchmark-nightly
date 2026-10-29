Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/octree?download=true
inline.NumInlined: 1810
inline.NumDeleted: 715
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNSt5arrayIN2cv3PtrINS0_10OctreeNodeEEELm8EED2Ev:bb.a
  %i.dh = icmp eq i32 %.0.i.i.i.i.6, 1
  br i1 %i.dh, label %bb.ap, label %_ZNSt12__shared_ptrIN2cv10OctreeNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.6, !prof !44

bb.ap:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.6
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cz) #29
  br label %_ZNSt12__shared_ptrIN2cv10OctreeNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.6

bb.aq:                                            ; preds = %bb.al
  store i32 0, ptr %i.da, align 8, !tbaa !38
  %i.di = getelementptr inbounds nuw i8, ptr %i.cz, i64 12
  store i32 0, ptr %i.di, align 4, !tbaa !39
  %i.dj = load ptr, ptr %i.cz, align 8, !tbaa !41
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8
  tail call void %i.dl(ptr noundef nonnull align 8 dereferenceable(16) %i.cz) #29, !inline_history !0
  %i.dm = load ptr, ptr %i.cz, align 8, !tbaa !41
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load ptr, ptr %i.dn, align 8
  tail call void %i.do(ptr noundef nonnull align 8 dereferenceable(16) %i.cz) #29, !inline_history !0
  br label %_ZNSt12__shared_ptrIN2cv10OctreeNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.6

_ZNSt12__shared_ptrIN2cv10OctreeNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.6: ; preds = %bb.aq, %bb.ap, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.6, %_ZNSt12__shared_ptrIN2cv10OctreeNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.5
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !36 ; 8 uses
  %.not.i.i.7 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.7, label %_ZNSt12__shared_ptrIN2cv10OctreeNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.7, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt12__shared_ptrIN2cv10OctreeNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.6
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 4 uses
  %i.ds = load atomic i64, ptr %i.dr acquire, align 8 ; 2 uses
  %i.dt = icmp eq i64 %i.ds, 4294967297
  %i.du = trunc i64 %i.ds to i32                  ; 2 uses
  br i1 %i.dt, label %bb.aw, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i.i.i.7 = icmp eq i8 %i.dv, 0
  br i1 %.not.i.i.i.7, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dw = add nsw i32 %i.du, -1
  store i32 %i.dw, ptr %i.dr, align 8, !tbaa !43
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.7

bb.au:                                            ; preds = %bb.as
  %i.dx = atomicrmw volatile add ptr %i.dr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.7

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.7: ; preds = %bb.au, %bb.at
  %.0.i.i.i.i.7 = phi i32 [ %i.du, %bb.at ], [ %i.dx, %bb.au ]
  %i.dy = icmp eq i32 %.0.i.i.i.i.7, 1
  br i1 %i.dy, label %bb.av, label %_ZNSt12__shared_ptrIN2cv10OctreeNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.7, !prof !44

bb.av:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.7
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #29
  br label %_ZNSt12__shared_ptrIN2cv10OctreeNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.7

bb.aw:                                            ; preds = %bb.ar
  store i32 0, ptr %i.dr, align 8, !tbaa !38
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  store i32 0, ptr %i.dz, align 4, !tbaa !39
  %i.ea = load ptr, ptr %i.dq, align 8, !tbaa !41
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8
  tail call void %i.ec(ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #29, !inline_history !0
  %i.ed = load ptr, ptr %i.dq, align 8, !tbaa !41
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8
  tail call void %i.ef(ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #29, !inline_history !0
  br label %_ZNSt12__shared_ptrIN2cv10OctreeNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.7

_ZNSt12__shared_ptrIN2cv10OctreeNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.7: ; preds = %bb.aw, %bb.av, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.7, %_ZNSt12__shared_ptrIN2cv10OctreeNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN2cv10OctreeNodeC2EidRKNS_7Point3_IfEEi(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(360) initializes((0, 128), (136, 140), (144, 309), (312, 360)) %0, i32 noundef %1, double noundef %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %3, i32 noundef %4) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, i8 0, i64 128, i1 false)
  store i32 %1, ptr %i.a, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144
  store double %2, ptr %i.b, align 8, !tbaa !45
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.c, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false), !tbaa.struct !47
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 304
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(140) %i.d, i8 0, i64 140, i1 false)
  store i32 %4, ptr %i.e, align 8, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 308
  store i8 0, ptr %i.f, align 4, !tbaa !33
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, i8 0, i64 48, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK2cv10OctreeNode5emptyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(360) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.b = load i8, ptr %i.a, align 4, !tbaa !33, !range !48, !noundef !49
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !51
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = insertelement <8 x ptr> poison, ptr %i.d, i64 0
  %i.t = insertelement <8 x ptr> %i.s, ptr %i.f, i64 1
  %i.u = insertelement <8 x ptr> %i.t, ptr %i.h, i64 2
  %i.v = insertelement <8 x ptr> %i.u, ptr %i.j, i64 3
  %i.w = insertelement <8 x ptr> %i.v, ptr %i.l, i64 4
  %i.x = insertelement <8 x ptr> %i.w, ptr %i.n, i64 5
  %i.y = insertelement <8 x ptr> %i.x, ptr %i.p, i64 6
  %i.z = insertelement <8 x ptr> %i.y, ptr %i.r, i64 7
  %.fr = freeze <8 x ptr> %i.z
  %i.aa = icmp ne <8 x ptr> %.fr, splat (ptr null)
  %i.ab = bitcast <8 x i1> %i.aa to i8
  %i.ac = icmp eq i8 %i.ab, 0
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !52
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !52
  %i.ah = icmp eq ptr %i.ae, %i.ag
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %bb.b
  %.1 = phi i1 [ %i.ah, %bb.b ], [ %i.ac, %.preheader.preheader ]
  ret i1 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK2cv10OctreeNode14isPointInBoundERKNS_7Point3_IfEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(360) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.g = load double, ptr %i.f, align 8, !tbaa !45
  %i.h = load <2 x float>, ptr %1, align 4, !tbaa !46 ; 3 uses
  %i.i = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.h) ; 2 uses
  %i.j = load <2 x float>, ptr %i.a, align 8, !tbaa !46 ; 3 uses
  %i.k = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.j) ; 2 uses
  %i.l = fcmp olt <2 x float> %i.i, %i.k
  %i.m = select <2 x i1> %i.l, <2 x float> %i.k, <2 x float> %i.i ; 2 uses
  %i.n = shufflevector <2 x float> %i.m, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.o = fptrunc double %i.g to float
  %i.p = shufflevector <2 x float> %i.j, <2 x float> %i.h, <4 x i32> <i32 0, i32 1, i32 poison, i32 2>
  %i.q = shufflevector <2 x float> %i.h, <2 x float> %i.j, <4 x i32> <i32 0, i32 1, i32 poison, i32 2>
  %i.r = load <2 x float>, ptr %i.b, align 4, !tbaa !46 ; 2 uses
  %i.s = load float, ptr %i.d, align 4, !tbaa !53
  %i.t = tail call noundef float @llvm.fabs.f32(float %i.s) ; 2 uses
  %i.u = load <2 x float>, ptr %i.c, align 4, !tbaa !46 ; 2 uses
  %i.v = load float, ptr %i.e, align 8, !tbaa !54
  %i.w = tail call noundef float @llvm.fabs.f32(float %i.v) ; 2 uses
  %i.x = fcmp olt float %i.t, %i.w
  %.sroa.speculated = select i1 %i.x, float %i.w, float %i.t
  %i.y = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %.sroa.speculated, i64 2
  %i.z = shufflevector <4 x float> %i.n, <4 x float> %i.y, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.aa = fmul <4 x float> %i.z, <float f0x34000000, float f0x34000000, float f0x34000000, float -0.000000e+00> ; 2 uses
  %i.ab = shufflevector <4 x float> %i.aa, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.ac = fadd <2 x float> %i.r, %i.ab
  %i.ad = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ae = insertelement <2 x float> %i.ad, float %i.o, i64 0
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ag = fmul <4 x float> %i.af, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float f0x34000000>
  %i.ah = shufflevector <2 x float> %i.u, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ai = shufflevector <4 x float> %i.p, <4 x float> %i.ah, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.aj = fadd <4 x float> %i.ai, %i.aa
  %i.ak = fadd <4 x float> %i.aj, %i.ag
  %i.al = shufflevector <2 x float> %i.r, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.am = shufflevector <4 x float> %i.q, <4 x float> %i.al, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.an = fcmp ole <4 x float> %i.am, %i.ak
  %i.ao = fcmp oge <2 x float> %i.ac, %i.u
  %.fr58 = freeze <2 x i1> %i.ao                  ; 2 uses
  %i.ap = freeze <4 x i1> %i.an
  %i.aq = bitcast <4 x i1> %i.ap to i4
  %i.ar = icmp eq i4 %i.aq, -1
  %i.as = extractelement <2 x i1> %.fr58, i64 0
  %op.rdx = and i1 %i.ar, %i.as
  %i.at = extractelement <2 x i1> %.fr58, i64 1
  %op.rdx57 = and i1 %op.rdx, %i.at
  ret i1 %op.rdx57
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv6OctreeC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #30, !noalias !149 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !38, !noalias !149
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !39, !noalias !149
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN2cv6Octree4ImplESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !41, !noalias !149
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store double 0.000000e+00, ptr %i.f, align 8, !tbaa !58, !noalias !149
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i8 0, ptr %i.g, align 8, !tbaa !59, !noalias !149
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(57) %i.d, i8 0, i64 20, i1 false), !noalias !149
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.e, i8 0, i64 20, i1 false), !noalias !149
  store ptr %i.d, ptr %0, align 8, !tbaa !62, !alias.scope !148
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.h, align 8, !tbaa !36, !alias.scope !148
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv6Octree15createWithDepthEidRKNS_7Point3_IfEEb(ptr dead_on_unwind noalias writable sret(%"struct.cv::Ptr.4") align 8 %0, i32 noundef %1, double noundef %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %3, i1 noundef zeroext %4) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.8", align 1  ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator.8", align 1  ; 3 uses
  %i.a = zext i1 %4 to i8
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv6Octree15createWithDepthEidRKNS_7Point3_IfEEb, ptr noundef nonnull @.str.1, i32 noundef 109) #31
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = load ptr, ptr %5, align 8, !tbaa !67     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.h = load i64, ptr %i.f, align 8, !tbaa !42
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.c, %bb.e ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.d, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %common.resume

bb.g:                                             ; preds = %bb.a
  %i.j = fcmp ogt double %2, 0.000000e+00
  br i1 %i.j, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv6Octree15createWithDepthEidRKNS_7Point3_IfEEb, ptr noundef nonnull @.str.1, i32 noundef 110) #31
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

bb.l:                                             ; preds = %bb.i
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = load ptr, ptr %7, align 8, !tbaa !67     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %bb.l
  %i.p = load i64, ptr %i.n, align 8, !tbaa !42
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14, %bb.k
  %.pn7 = phi { ptr, i32 } [ %i.k, %bb.k ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14 ], [ %i.l, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %common.resume

bb.m:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %i.r = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #30, !noalias !159 ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 1, ptr %i.s, align 8, !tbaa !38, !noalias !159
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 1, ptr %i.t, align 4, !tbaa !39, !noalias !159
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN2cv6OctreeESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.r, align 8, !tbaa !41, !noalias !159
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  invoke void @_ZN2cv6OctreeC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.u)
          to label %_ZN2cvL7makePtrINS_6OctreeEJEEENS_3PtrIT_EEDpRKT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv6OctreeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i.i, !noalias !159

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, %bb.ac, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv6OctreeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.v, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv6OctreeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i.i ], [ %i.bn, %bb.ac ], [ %.pn7, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv6OctreeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i.i: ; preds = %bb.m
  %i.v = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 32) #32, !noalias !159
  br label %common.resume

_ZN2cvL7makePtrINS_6OctreeEJEEENS_3PtrIT_EEDpRKT0_.exit: ; preds = %bb.m
  store ptr %i.u, ptr %0, align 8, !tbaa !70, !alias.scope !158
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.w, align 8, !tbaa !36, !alias.scope !158
  %i.x = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #30
          to label %bb.n unwind label %bb.ac      ; 16 uses

bb.n:                                             ; preds = %_ZN2cvL7makePtrINS_6OctreeEJEEENS_3PtrIT_EEDpRKT0_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 7 uses
  store i32 1, ptr %i.y, align 8, !tbaa !38, !noalias !160
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 12 ; 2 uses
  store i32 1, ptr %i.z, align 4, !tbaa !39, !noalias !160
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN2cv6Octree4ImplESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.x, align 8, !tbaa !41, !noalias !160
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(57) %i.aa, i8 0, i64 16, i1 false), !noalias !160
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store i32 %1, ptr %i.ab, align 8, !tbaa !71, !noalias !160
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  store double %2, ptr %i.ac, align 8, !tbaa !72, !noalias !160
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ad, ptr noundef nonnull readonly align 4 dereferenceable(12) %3, i64 12, i1 false), !tbaa.struct !47, !noalias !160
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  store double 0.000000e+00, ptr %i.ae, align 8, !tbaa !58, !noalias !160
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  store i8 %i.a, ptr %i.af, align 8, !tbaa !59, !noalias !160
  store ptr %i.aa, ptr %i.u, align 8, !tbaa !62
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.x, %i.ah
  br i1 %.not.i.i.i.i, label %_ZN2cv3PtrINS_6Octree4ImplEEaSERKS3_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i.i.i.i.i = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 2, ptr %i.y, align 8, !tbaa !43
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.aj = atomicrmw volatile add ptr %i.y, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i = load ptr, ptr %i.ag, align 8, !tbaa !36
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i: ; preds = %bb.q, %bb.p
  %i.ak = phi ptr [ %.pr.pre.i.i.i.i, %bb.q ], [ %i.ah, %bb.p ] ; 8 uses
  %.not8.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not8.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 4 uses
  %i.am = load atomic i64, ptr %i.al acquire, align 8 ; 2 uses
  %i.an = icmp eq i64 %i.am, 4294967297
  %i.ao = trunc i64 %i.am to i32                  ; 2 uses
  br i1 %i.an, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.al, align 8, !tbaa !38
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
end_hunk_0
begin_hunk_1_@_ZN2cv6Octree4Impl11insertPointERKNS_7Point3_IfEES5_:bb.a
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  %i.v = tail call ptr @__cxa_begin_catch(ptr %i.u) #29 ; 0 uses
  tail call void @_ZN2cv10OctreeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(360) dereferenceable(360) %i.h) #29
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 360) #32
  invoke void @__cxa_rethrow() #31
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.e

common.resume:                                    ; preds = %bb.d, %.body
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.pn, %.body ], [ %i.w, %bb.d ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #33
  unreachable

bb.f:                                             ; preds = %bb.c
  unreachable

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IPN2cv10OctreeNodeEEET_.exit: ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 7 uses
  store i32 1, ptr %i.z, align 8, !tbaa !38
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 12 ; 2 uses
  store i32 1, ptr %i.aa, align 4, !tbaa !39
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN2cv10OctreeNodeELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.s, align 8, !tbaa !41
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.h, ptr %i.ab, align 8, !tbaa !86
  store ptr %i.h, ptr %0, align 8, !tbaa !51
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, %i.ad
  br i1 %.not.i.i.i.i, label %_ZN2cv3PtrINS_10OctreeNodeEEaSERKS2_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IPN2cv10OctreeNodeEEET_.exit
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 2, ptr %i.z, align 8, !tbaa !43
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.af = atomicrmw volatile add ptr %i.z, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i = load ptr, ptr %i.ac, align 8, !tbaa !36
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i: ; preds = %bb.i, %bb.h
  %i.ag = phi ptr [ %.pr.pre.i.i.i.i, %bb.i ], [ %i.ad, %bb.h ] ; 8 uses
  %.not8.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not8.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 4 uses
  %i.ai = load atomic i64, ptr %i.ah acquire, align 8 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 4294967297
  %i.ak = trunc i64 %i.ai to i32                  ; 2 uses
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ah, align 8, !tbaa !38
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store i32 0, ptr %i.al, align 4, !tbaa !39
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !41
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #29, !inline_history !3
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !41
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #29, !inline_history !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.as = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i9.i.i.i.i = icmp eq i8 %i.as, 0
  br i1 %.not.i9.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = add nsw i32 %i.ak, -1
  store i32 %i.at, ptr %i.ah, align 8, !tbaa !43
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.au = atomicrmw volatile add ptr %i.ah, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i = phi i32 [ %i.ak, %bb.m ], [ %i.au, %bb.n ]
  %i.av = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.av, label %bb.o, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, !prof !44

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #29
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  store ptr %i.s, ptr %i.ac, align 8, !tbaa !36
  br label %_ZN2cv3PtrINS_10OctreeNodeEEaSERKS2_.exit

_ZN2cv3PtrINS_10OctreeNodeEEaSERKS2_.exit:        ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IPN2cv10OctreeNodeEEET_.exit
  %i.aw = load atomic i64, ptr %i.z acquire, align 8 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 4294967297
  %i.ay = trunc i64 %i.aw to i32                  ; 2 uses
  br i1 %i.ax, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN2cv3PtrINS_10OctreeNodeEEaSERKS2_.exit
  store i32 0, ptr %i.z, align 8, !tbaa !38
  store i32 0, ptr %i.aa, align 4, !tbaa !39
  %i.az = load ptr, ptr %i.s, align 8, !tbaa !41
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8
  tail call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #29, !inline_history !0
  %i.bc = load ptr, ptr %i.s, align 8, !tbaa !41
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8
  tail call void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #29, !inline_history !0
  br label %_ZNSt12__shared_ptrIN2cv10OctreeNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.q:                                             ; preds = %_ZN2cv3PtrINS_10OctreeNodeEEaSERKS2_.exit
  %i.bf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i.i.i = icmp eq i8 %i.bf, 0
  br i1 %.not.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bg = add nsw i32 %i.ay, -1
  store i32 %i.bg, ptr %i.z, align 8, !tbaa !43
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.bh = atomicrmw volatile add ptr %i.z, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i = phi i32 [ %i.ay, %bb.r ], [ %i.bh, %bb.s ]
  %i.bi = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bi, label %bb.t, label %_ZNSt12__shared_ptrIN2cv10OctreeNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !44

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #29
  br label %_ZNSt12__shared_ptrIN2cv10OctreeNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2cv10OctreeNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.p, %bb.a
  %i.bj = load ptr, ptr %0, align 8, !tbaa !51    ; 8 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 152
  %i.bl = load <2 x float>, ptr %1, align 4, !tbaa !46 ; 5 uses
  %i.bm = extractelement <2 x float> %i.bl, i64 1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 156
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !53 ; 4 uses
  %i.bq = tail call noundef float @llvm.fabs.f32(float %i.bp) ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bj, i64 160
  %i.bs = load float, ptr %i.br, align 8, !tbaa !54 ; 3 uses
  %i.bt = tail call noundef float @llvm.fabs.f32(float %i.bs) ; 2 uses
  %i.bu = fcmp olt float %i.bq, %i.bt
  %.sroa.speculated.i = select i1 %i.bu, float %i.bt, float %i.bq
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bj, i64 144
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !45
  %i.bx = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bl) ; 2 uses
  %i.by = load float, ptr %i.bn, align 4, !tbaa !214
  %i.bz = load <2 x float>, ptr %i.bk, align 8, !tbaa !46 ; 3 uses
  %i.ca = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bz) ; 2 uses
  %i.cb = fcmp olt <2 x float> %i.bx, %i.ca
  %i.cc = select <2 x i1> %i.cb, <2 x float> %i.ca, <2 x float> %i.bx ; 2 uses
  %i.cd = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %.sroa.speculated.i, i64 2
  %i.ce = shufflevector <2 x float> %i.cc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cf = shufflevector <4 x float> %i.ce, <4 x float> %i.cd, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cg = fmul <4 x float> %i.cf, <float f0x34000000, float f0x34000000, float f0x34000000, float -0.000000e+00> ; 3 uses
  %i.ch = extractelement <4 x float> %i.cg, i64 1
  %i.ci = fadd float %i.bm, %i.ch
  %i.cj = extractelement <4 x float> %i.cg, i64 2
  %i.ck = fadd float %i.bp, %i.cj
  %i.cl = fptrunc double %i.bw to float
  %i.cm = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cn = insertelement <2 x float> %i.cm, float %i.cl, i64 0
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cp = fmul <4 x float> %i.co, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float f0x34000000>
  %i.cq = shufflevector <2 x float> %i.bl, <2 x float> %i.bz, <4 x i32> <i32 2, i32 3, i32 poison, i32 0>
  %i.cr = insertelement <4 x float> %i.cq, float %i.bs, i64 2
  %i.cs = fadd <4 x float> %i.cr, %i.cg
  %i.ct = fadd <4 x float> %i.cs, %i.cp
  %i.cu = fcmp oge float %i.ci, %i.by
  %i.cv = shufflevector <2 x float> %i.bl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cw = insertelement <4 x float> %i.cv, float %i.bp, i64 2
  %i.cx = shufflevector <2 x float> %i.bz, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.cy = shufflevector <4 x float> %i.cw, <4 x float> %i.cx, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.cz = fcmp ole <4 x float> %i.cy, %i.ct
  %i.da = fcmp oge float %i.ck, %i.bs
  %i.db = freeze <4 x i1> %i.cz
  %i.dc = bitcast <4 x i1> %i.db to i4
  %i.dd = icmp eq i4 %i.dc, -1
  %.fr = freeze i1 %i.cu
  %op.rdx = and i1 %i.dd, %.fr
  %op.rdx153 = select i1 %op.rdx, i1 %i.da, i1 false
  %i.de = getelementptr inbounds nuw i8, ptr %i.bj, i64 136
  %i.df = load i32, ptr %i.de, align 8, !tbaa !31
  %i.dg = icmp ne i32 %i.df, 0
  %or.cond = or i1 %i.dg, %op.rdx153              ; 2 uses
  br i1 %or.cond, label %bb.u, label %bb.bq

bb.u:                                             ; preds = %_ZNSt12__shared_ptrIN2cv10OctreeNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dj = load double, ptr %i.di, align 8, !tbaa !58 ; 2 uses
  %i.dk = load <2 x float>, ptr %i.dh, align 8, !tbaa !46
  %i.dl = fsub <2 x float> %i.bl, %i.dk
  %i.dm = fpext <2 x float> %i.dl to <2 x double>
  %i.dn = insertelement <2 x double> poison, double %i.dj, i64 0
  %i.do = shufflevector <2 x double> %i.dn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dp = fdiv <2 x double> %i.dm, %i.do          ; 2 uses
  %i.dq = extractelement <2 x double> %i.dp, i64 0
  %i.dr = tail call double @llvm.floor.f64(double %i.dq)
  %i.ds = fptoui double %i.dr to i64
  %i.dt = extractelement <2 x double> %i.dp, i64 1
  %i.du = tail call double @llvm.floor.f64(double %i.dt)
  %i.dv = fptoui double %i.du to i64
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dx = load float, ptr %i.dw, align 8, !tbaa !87
  %i.dy = fsub float %i.bp, %i.dx
  %i.dz = fpext float %i.dy to double
  %i.ea = fdiv double %i.dz, %i.dj
  %i.eb = tail call double @llvm.floor.f64(double %i.ea)
  %i.ec = fptoui double %i.eb to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store ptr %i.bj, ptr %3, align 8, !tbaa !51
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !36 ; 3 uses
  store ptr %i.ef, ptr %i.ed, align 8, !tbaa !36
  %.not.i.i.i.i44 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i.i44, label %_ZN2cv3PtrINS_10OctreeNodeEEC2ERKS2_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 3 uses
  %i.eh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i.i.i.i.i45 = icmp eq i8 %i.eh, 0
  br i1 %.not.i.i.i.i.i45, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ei = load i32, ptr %i.eg, align 4, !tbaa !43
  %i.ej = add nsw i32 %i.ei, 1
  store i32 %i.ej, ptr %i.eg, align 4, !tbaa !43
  br label %_ZN2cv3PtrINS_10OctreeNodeEEC2ERKS2_.exit

bb.x:                                             ; preds = %bb.v
  %i.ek = atomicrmw volatile add ptr %i.eg, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %3, align 8, !tbaa !51
  br label %_ZN2cv3PtrINS_10OctreeNodeEEC2ERKS2_.exit

_ZN2cv3PtrINS_10OctreeNodeEEC2ERKS2_.exit:        ; preds = %bb.u, %bb.w, %bb.x
  %i.el = phi ptr [ %i.bj, %bb.u ], [ %i.bj, %bb.w ], [ %.pre, %bb.x ] ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 136
  %i.en = load i32, ptr %i.em, align 8, !tbaa !31
  %i.eo = load i32, ptr %i.a, align 8, !tbaa !71
  %.not121 = icmp eq i32 %i.en, %i.eo
  br i1 %.not121, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2cv3PtrINS_10OctreeNodeEEC2ERKS2_.exit, %_ZN2cv3PtrINS_10OctreeNodeEEaSERKS2_.exit76
  %i.ep = phi ptr [ %i.jc, %_ZN2cv3PtrINS_10OctreeNodeEEaSERKS2_.exit76 ], [ %i.el, %_ZN2cv3PtrINS_10OctreeNodeEEC2ERKS2_.exit ] ; 5 uses
  %.031122 = phi i64 [ %i.jd, %_ZN2cv3PtrINS_10OctreeNodeEEaSERKS2_.exit76 ], [ %i.e, %_ZN2cv3PtrINS_10OctreeNodeEEC2ERKS2_.exit ] ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 144
  %i.er = load double, ptr %i.eq, align 8, !tbaa !45
  %i.es = fmul double %i.er, 5.000000e-01         ; 2 uses
  %i.et = and i64 %.031122, %i.ec
  %.not.i = icmp eq i64 %i.et, 0
  %i.eu = select i1 %.not.i, i8 0, i8 4           ; 2 uses
  %i.ev = and i64 %.031122, %i.dv
  %.not3.i = icmp eq i64 %i.ev, 0
  %i.ew = select i1 %.not3.i, i8 0, i8 2          ; 2 uses
  %i.ex = and i64 %.031122, %i.ds
  %i.ey = icmp ne i64 %i.ex, 0                    ; 2 uses
  %i.ez = zext i1 %i.ey to i8
  %i.fa = or disjoint i8 %i.eu, %i.ez
  %i.fb = or disjoint i8 %i.fa, %i.ew             ; 2 uses
  %i.fc = zext nneg i8 %i.fb to i64
  %i.fd = lshr exact i8 %i.ew, 1
  %i.fe = lshr exact i8 %i.eu, 2
  %i.ff = uitofp i1 %i.ey to float
  %i.fg = uitofp nneg i8 %i.fd to float
  %i.fh = uitofp nneg i8 %i.fe to float
  %i.fi = fptrunc double %i.es to float           ; 2 uses
  %i.fj = fmul float %i.fh, %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ep, i64 152
  %i.fl = insertelement <2 x float> poison, float %i.ff, i64 0
  %i.fm = insertelement <2 x float> %i.fl, float %i.fg, i64 1
  %i.fn = insertelement <2 x float> poison, float %i.fi, i64 0
  %i.fo = shufflevector <2 x float> %i.fn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fp = fmul <2 x float> %i.fm, %i.fo
  %i.fq = load <2 x float>, ptr %i.fk, align 8, !tbaa !46
  %i.fr = fadd <2 x float> %i.fq, %i.fp
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ep, i64 160
  %i.ft = load float, ptr %i.fs, align 8, !tbaa !53
  %i.fu = fadd float %i.ft, %i.fj
  %i.fv = getelementptr inbounds nuw [16 x i8], ptr %i.ep, i64 %i.fc ; 5 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !51 ; 2 uses
  %.not115 = icmp eq ptr %i.fw, null
  br i1 %.not115, label %bb.y, label %bb.at

bb.y:                                             ; preds = %.lr.ph
  %i.fx = invoke noalias noundef nonnull dereferenceable(360) ptr @_Znwm(i64 noundef 360) #30
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 13 uses

bb.z:                                             ; preds = %bb.y
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ep, i64 136
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !31
  %i.ga = add nsw i32 %i.fz, 1
  %i.gb = zext nneg i8 %i.fb to i32
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fx, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %i.fx, i8 0, i64 128, i1 false)
  store i32 %i.ga, ptr %i.gc, align 8, !tbaa !31
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fx, i64 144
  store double %i.es, ptr %i.gd, align 8, !tbaa !45
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fx, i64 152
  store <2 x float> %i.fr, ptr %i.ge, align 8, !tbaa !46
  %.sroa.5108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fx, i64 160
  store float %i.fu, ptr %.sroa.5108.0..sroa_idx, align 8, !tbaa !46
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fx, i64 164
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fx, i64 304
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(140) %i.gf, i8 0, i64 140, i1 false)
  store i32 %i.gb, ptr %i.gg, align 8, !tbaa !32
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fx, i64 308
  store i8 0, ptr %i.gh, align 4, !tbaa !33
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fx, i64 312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.gi, i8 0, i64 48, i1 false)
  %i.gj = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #30
          to label %bb.ae unwind label %bb.aa     ; 11 uses

bb.aa:                                            ; preds = %bb.z
  %i.gk = landingpad { ptr, i32 }
          catch ptr null
  %i.gl = extractvalue { ptr, i32 } %i.gk, 0
  %i.gm = tail call ptr @__cxa_begin_catch(ptr %i.gl) #29 ; 0 uses
  tail call void @_ZN2cv10OctreeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(360) dereferenceable(360) %i.fx) #29
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fx, i64 noundef 360) #32
  invoke void @__cxa_rethrow() #31
          to label %bb.ad unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gn = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.go = landingpad { ptr, i32 }
          catch ptr null
  %i.gp = extractvalue { ptr, i32 } %i.go, 0
  tail call void @__clang_call_terminate(ptr %i.gp) #33
  unreachable

bb.ad:                                            ; preds = %bb.aa
  unreachable

bb.ae:                                            ; preds = %bb.z
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gj, i64 8 ; 7 uses
  store i32 1, ptr %i.gq, align 8, !tbaa !38
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gj, i64 12 ; 2 uses
  store i32 1, ptr %i.gr, align 4, !tbaa !39
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN2cv10OctreeNodeELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.gj, align 8, !tbaa !41
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  store ptr %i.fx, ptr %i.gs, align 8, !tbaa !86
  store ptr %i.fx, ptr %i.fv, align 8, !tbaa !51
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fv, i64 8 ; 3 uses
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i.i50 = icmp eq ptr %i.gj, %i.gu
  br i1 %.not.i.i.i.i50, label %_ZN2cv3PtrINS_10OctreeNodeEEaSERKS2_.exit60, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i.i.i.i.i52 = icmp eq i8 %i.gv, 0
  br i1 %.not.i.i.i.i.i52, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i32 2, ptr %i.gq, align 8, !tbaa !43
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i53

bb.ah:                                            ; preds = %bb.af
  %i.gw = atomicrmw volatile add ptr %i.gq, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i59 = load ptr, ptr %i.gt, align 8, !tbaa !36
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i53

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i53: ; preds = %bb.ah, %bb.ag
  %i.gx = phi ptr [ %.pr.pre.i.i.i.i59, %bb.ah ], [ %i.gu, %bb.ag ] ; 8 uses
  %.not8.i.i.i.i54 = icmp eq ptr %i.gx, null
  br i1 %.not8.i.i.i.i54, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i58, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i53
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8 ; 4 uses
  %i.gz = load atomic i64, ptr %i.gy acquire, align 8 ; 2 uses
  %i.ha = icmp eq i64 %i.gz, 4294967297
  %i.hb = trunc i64 %i.gz to i32                  ; 2 uses
  br i1 %i.ha, label %bb.aj, label %bb.ak

end_hunk_1
begin_hunk_2_@_ZNK2cv3Mat7reshapeEii

declare noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log2(double noundef) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #13

; Function Attrs: mustprogress uwtable
define void @_ZN2cv6Octree5clearEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) initializes((0, 8)) %0) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #30, !noalias !221 ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 7 uses
  store i32 1, ptr %i.b, align 8, !tbaa !38, !noalias !221
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  store i32 1, ptr %i.c, align 4, !tbaa !39, !noalias !221
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN2cv6Octree4ImplESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !41, !noalias !221
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store double 0.000000e+00, ptr %i.f, align 8, !tbaa !58, !noalias !221
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i8 0, ptr %i.g, align 8, !tbaa !59, !noalias !221
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(57) %i.d, i8 0, i64 20, i1 false), !noalias !221
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.e, i8 0, i64 20, i1 false), !noalias !221
  store ptr %i.d, ptr %0, align 8, !tbaa !62
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !36   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.a, %i.i
  br i1 %.not.i.i.i.i, label %_ZN2cv3PtrINS_6Octree4ImplEEaSERKS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i.i.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 2, ptr %i.b, align 8, !tbaa !43
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.k = atomicrmw volatile add ptr %i.b, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !36
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.l = phi ptr [ %.pr.pre.i.i.i.i, %bb.d ], [ %i.i, %bb.c ] ; 8 uses
  %.not8.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not8.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = load atomic i64, ptr %i.m acquire, align 8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 4294967297
  %i.p = trunc i64 %i.n to i32                    ; 2 uses
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.m, align 8, !tbaa !38
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.q, align 4, !tbaa !39
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !41
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #29, !inline_history !1
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !41
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #29, !inline_history !1
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i9.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i9.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = add nsw i32 %i.p, -1
  store i32 %i.y, ptr %i.m, align 8, !tbaa !43
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.z = atomicrmw volatile add ptr %i.m, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i = phi i32 [ %i.p, %bb.h ], [ %i.z, %bb.i ]
  %i.aa = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.aa, label %bb.j, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, !prof !44

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #29
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i: ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.f, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  store ptr %i.a, ptr %i.h, align 8, !tbaa !36
  br label %_ZN2cv3PtrINS_6Octree4ImplEEaSERKS3_.exit

_ZN2cv3PtrINS_6Octree4ImplEEaSERKS3_.exit:        ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, %bb.a
  %i.ab = load atomic i64, ptr %i.b acquire, align 8 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 4294967297
  %i.ad = trunc i64 %i.ab to i32                  ; 2 uses
  br i1 %i.ac, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN2cv3PtrINS_6Octree4ImplEEaSERKS3_.exit
  store i32 0, ptr %i.b, align 8, !tbaa !38
  store i32 0, ptr %i.c, align 4, !tbaa !39
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #29, !inline_history !2
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #29, !inline_history !2
  br label %_ZNSt12__shared_ptrIN2cv6Octree4ImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %_ZN2cv3PtrINS_6Octree4ImplEEaSERKS3_.exit
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i.i.i = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = add nsw i32 %i.ad, -1
  store i32 %i.al, ptr %i.b, align 8, !tbaa !43
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.am = atomicrmw volatile add ptr %i.b, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i = phi i32 [ %i.ad, %bb.m ], [ %i.am, %bb.n ]
  %i.an = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.an, label %bb.o, label %_ZNSt12__shared_ptrIN2cv6Octree4ImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !44

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #29
  br label %_ZNSt12__shared_ptrIN2cv6Octree4ImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2cv6Octree4ImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.o
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK2cv6Octree5emptyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #17 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !62
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51
  %i.c = icmp eq ptr %i.b, null
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK2cv6Octree14isPointInBoundERKNS_7Point3_IfEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1) local_unnamed_addr #18 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !62
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 156
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.i = load double, ptr %i.h, align 8, !tbaa !45
  %i.j = load <2 x float>, ptr %1, align 4, !tbaa !46 ; 3 uses
  %i.k = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.j) ; 2 uses
  %i.l = load <2 x float>, ptr %i.c, align 8, !tbaa !46 ; 3 uses
  %i.m = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.l) ; 2 uses
  %i.n = fcmp olt <2 x float> %i.k, %i.m
  %i.o = select <2 x i1> %i.n, <2 x float> %i.m, <2 x float> %i.k ; 2 uses
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.q = fptrunc double %i.i to float
  %i.r = shufflevector <2 x float> %i.l, <2 x float> %i.j, <4 x i32> <i32 0, i32 1, i32 poison, i32 2>
  %i.s = shufflevector <2 x float> %i.j, <2 x float> %i.l, <4 x i32> <i32 0, i32 1, i32 poison, i32 2>
  %i.t = load <2 x float>, ptr %i.d, align 4, !tbaa !46 ; 2 uses
  %i.u = load float, ptr %i.f, align 4, !tbaa !53
  %i.v = tail call noundef float @llvm.fabs.f32(float %i.u) ; 2 uses
  %i.w = load <2 x float>, ptr %i.e, align 4, !tbaa !46 ; 2 uses
  %i.x = load float, ptr %i.g, align 8, !tbaa !54
  %i.y = tail call noundef float @llvm.fabs.f32(float %i.x) ; 2 uses
  %i.z = fcmp olt float %i.v, %i.y
  %.sroa.speculated.i = select i1 %i.z, float %i.y, float %i.v
  %i.aa = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %.sroa.speculated.i, i64 2
  %i.ab = shufflevector <4 x float> %i.p, <4 x float> %i.aa, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ac = fmul <4 x float> %i.ab, <float f0x34000000, float f0x34000000, float f0x34000000, float -0.000000e+00> ; 2 uses
  %i.ad = shufflevector <4 x float> %i.ac, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.ae = fadd <2 x float> %i.t, %i.ad
  %i.af = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ag = insertelement <2 x float> %i.af, float %i.q, i64 0
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ai = fmul <4 x float> %i.ah, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float f0x34000000>
  %i.aj = shufflevector <2 x float> %i.w, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ak = shufflevector <4 x float> %i.r, <4 x float> %i.aj, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.al = fadd <4 x float> %i.ak, %i.ac
  %i.am = fadd <4 x float> %i.al, %i.ai
  %i.an = shufflevector <2 x float> %i.t, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ao = shufflevector <4 x float> %i.s, <4 x float> %i.an, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.ap = fcmp ole <4 x float> %i.ao, %i.am
  %i.aq = fcmp oge <2 x float> %i.ae, %i.w
  %.fr3 = freeze <2 x i1> %i.aq                   ; 2 uses
  %i.ar = freeze <4 x i1> %i.ap
  %i.as = bitcast <4 x i1> %i.ar to i4
  %i.at = icmp eq i4 %i.as, -1
  %i.au = extractelement <2 x i1> %.fr3, i64 0
  %op.rdx = and i1 %i.at, %i.au
  %i.av = extractelement <2 x i1> %.fr3, i64 1
  %op.rdx2 = and i1 %op.rdx, %i.av
  ret i1 %op.rdx2
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN2cv6Octree11deletePointERKNS_7Point3_IfEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1) local_unnamed_addr #19 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !62     ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.d = load double, ptr %i.c, align 8, !tbaa !58 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load <2 x float>, ptr %1, align 4, !tbaa !46
  %i.g = load <2 x float>, ptr %i.b, align 8, !tbaa !46
  %i.h = fsub <2 x float> %i.f, %i.g
  %i.i = fpext <2 x float> %i.h to <2 x double>
  %i.j = insertelement <2 x double> poison, double %i.d, i64 0
  %i.k = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> zeroinitializer
  %i.l = fdiv <2 x double> %i.i, %i.k             ; 2 uses
  %i.m = extractelement <2 x double> %i.l, i64 0
  %i.n = tail call double @llvm.floor.f64(double %i.m)
  %i.o = fptoui double %i.n to i64
  %i.p = extractelement <2 x double> %i.l, i64 1
  %i.q = tail call double @llvm.floor.f64(double %i.p)
  %i.r = fptoui double %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.t = load float, ptr %i.s, align 4, !tbaa !53
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.v = load float, ptr %i.u, align 8, !tbaa !87
  %i.w = fsub float %i.t, %i.v
  %i.x = fpext float %i.w to double
  %i.y = fdiv double %i.x, %i.d
  %i.z = tail call double @llvm.floor.f64(double %i.y)
  %i.aa = fptoui double %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !71
  %i.ad = add nsw i32 %i.ac, -1
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = shl nuw i64 1, %i.ae
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !51  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !36 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i, label %_ZN2cv3PtrINS_10OctreeNodeEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i.i.i.i.i = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !43
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.aj, align 4, !tbaa !43
  br label %_ZN2cv3PtrINS_10OctreeNodeEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.an = atomicrmw volatile add ptr %i.aj, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN2cv3PtrINS_10OctreeNodeEEC2ERKS2_.exit

_ZN2cv3PtrINS_10OctreeNodeEEC2ERKS2_.exit:        ; preds = %bb.a, %bb.c, %bb.d
  %.not95109 = icmp eq ptr %i.ag, null
  br i1 %.not95109, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2cv3PtrINS_10OctreeNodeEEC2ERKS2_.exit, %_ZNSt12__shared_ptrIN2cv10OctreeNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.039110 = phi i64 [ %i.ix, %_ZNSt12__shared_ptrIN2cv10OctreeNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.af, %_ZN2cv3PtrINS_10OctreeNodeEEC2ERKS2_.exit ] ; 4 uses
  %i.ao = phi ptr [ %i.hz, %_ZNSt12__shared_ptrIN2cv10OctreeNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.ag, %_ZN2cv3PtrINS_10OctreeNodeEEC2ERKS2_.exit ] ; 16 uses
  %i.ap = phi ptr [ %i.iw, %_ZNSt12__shared_ptrIN2cv10OctreeNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.ai, %_ZN2cv3PtrINS_10OctreeNodeEEC2ERKS2_.exit ] ; 37 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 308
  %i.ar = load i8, ptr %i.aq, align 4, !tbaa !33, !range !48, !noundef !49
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %.split, label %_ZNK2cv10OctreeNode5emptyEv.exit

.split:                                           ; preds = %.lr.ph
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 312
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !52 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 320
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !52 ; 3 uses
  %i.ax = icmp eq ptr %i.au, %i.aw
  br i1 %i.ax, label %.loopexit168, label %bb.k

_ZNK2cv10OctreeNode5emptyEv.exit:                 ; preds = %.lr.ph
  %i.ay = load ptr, ptr %i.ao, align 8, !tbaa !51
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ao, i64 80
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ao, i64 96
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ao, i64 112
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = insertelement <8 x ptr> poison, ptr %i.ay, i64 0
  %i.bo = insertelement <8 x ptr> %i.bn, ptr %i.ba, i64 1
  %i.bp = insertelement <8 x ptr> %i.bo, ptr %i.bc, i64 2
  %i.bq = insertelement <8 x ptr> %i.bp, ptr %i.be, i64 3
  %i.br = insertelement <8 x ptr> %i.bq, ptr %i.bg, i64 4
  %i.bs = insertelement <8 x ptr> %i.br, ptr %i.bi, i64 5
  %i.bt = insertelement <8 x ptr> %i.bs, ptr %i.bk, i64 6
  %i.bu = insertelement <8 x ptr> %i.bt, ptr %i.bm, i64 7
  %.fr = freeze <8 x ptr> %i.bu
  %i.bv = icmp ne <8 x ptr> %.fr, splat (ptr null)
  %i.bw = bitcast <8 x i1> %i.bv to i8
  %i.bx = icmp eq i8 %i.bw, 0
  br i1 %i.bx, label %.loopexit168, label %bb.ac

.loopexit168:                                     ; preds = %_ZNK2cv10OctreeNode5emptyEv.exit, %.split
  %.not.i.i.i.i46 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i46, label %_ZNSt12__shared_ptrIN2cv10OctreeNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit84, label %bb.e

bb.e:                                             ; preds = %.loopexit168
  %i.by = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 4 uses
  %i.bz = load atomic i64, ptr %i.by acquire, align 8 ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 4294967297
  %i.cb = trunc i64 %i.bz to i32                  ; 2 uses
  br i1 %i.ca, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.by, align 8, !tbaa !38
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  store i32 0, ptr %i.cc, align 4, !tbaa !39
  %i.cd = load ptr, ptr %i.ap, align 8, !tbaa !41
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8
  tail call void %i.cf(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #29, !inline_history !3
  %i.cg = load ptr, ptr %i.ap, align 8, !tbaa !41
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8
  tail call void %i.ci(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #29, !inline_history !3
  br label %_ZNSt12__shared_ptrIN2cv10OctreeNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit84

bb.g:                                             ; preds = %bb.e
  %i.cj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i9.i.i.i.i = icmp eq i8 %i.cj, 0
  br i1 %.not.i9.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ck = add nsw i32 %i.cb, -1
  store i32 %i.ck, ptr %i.by, align 8, !tbaa !43
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.cl = atomicrmw volatile add ptr %i.by, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i = phi i32 [ %i.cb, %bb.h ], [ %i.cl, %bb.i ]
  %i.cm = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.cm, label %bb.j, label %_ZNSt12__shared_ptrIN2cv10OctreeNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit84, !prof !44

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #29
  br label %_ZNSt12__shared_ptrIN2cv10OctreeNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit84

bb.k:                                             ; preds = %.split
  %.sroa.015.0.copyload = load <2 x float>, ptr %1, align 4, !tbaa !46 ; 8 uses
  %.sroa.2.0.copyload = load float, ptr %i.s, align 4, !tbaa !46 ; 7 uses
  %i.cn = ptrtoint ptr %i.aw to i64               ; 2 uses
  %i.co = ptrtoint ptr %i.au to i64
  %i.cp = sub i64 %i.cn, %i.co                    ; 2 uses
  %i.cq = sdiv exact i64 %i.cp, 12
  %i.cr = ashr i64 %i.cq, 2                       ; 3 uses
  %i.cs = icmp sgt i64 %i.cr, 0
  br i1 %i.cs, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.k
  %.sroa.0.0.vec.extract.i.i.i.i.i = extractelement <2 x float> %.sroa.015.0.copyload, i64 0 ; 4 uses
  %.sroa.0.4.vec.extract.i.i.i.i.i = extractelement <2 x float> %.sroa.015.0.copyload, i64 1 ; 4 uses
  %i.ct = mul nuw nsw i64 %i.cr, 48
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.au, i64 %i.ct ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN2cv6Octree11deletePointERKNS2_7Point3_IfEEE3$_0EclINS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbT_.exit18.thread.i.i.i.i.i", %.lr.ph.i.i.i.i.i
  %.081.i.i.i.i.i = phi i64 [ %i.cr, %.lr.ph.i.i.i.i.i ], [ %i.fc, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN2cv6Octree11deletePointERKNS2_7Point3_IfEEE3$_0EclINS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbT_.exit18.thread.i.i.i.i.i" ] ; 2 uses
  %.sroa.061.080.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i ], [ %i.fb, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN2cv6Octree11deletePointERKNS2_7Point3_IfEEE3$_0EclINS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbT_.exit18.thread.i.i.i.i.i" ] ; 17 uses
  %i.cu = load float, ptr %.sroa.061.080.i.i.i.i.i, align 4, !tbaa !92
  %i.cv = fsub float %.sroa.0.0.vec.extract.i.i.i.i.i, %i.cu
  %i.cw = tail call noundef float @llvm.fabs.f32(float %i.cv)
  %i.cx = fcmp olt float %i.cw, f0x3089705F
  br i1 %i.cx, label %bb.m, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN2cv6Octree11deletePointERKNS2_7Point3_IfEEE3$_0EclINS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbT_.exit.thread.i.i.i.i.i"

bb.m:                                             ; preds = %bb.l
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.061.080.i.i.i.i.i, i64 4
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !93
  %i.da = fsub float %.sroa.0.4.vec.extract.i.i.i.i.i, %i.cz
  %i.db = tail call noundef float @llvm.fabs.f32(float %i.da)
  %i.dc = fcmp olt float %i.db, f0x3089705F
  br i1 %i.dc, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN2cv6Octree11deletePointERKNS2_7Point3_IfEEE3$_0EclINS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbT_.exit.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN2cv6Octree11deletePointERKNS2_7Point3_IfEEE3$_0EclINS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbT_.exit.thread.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN2cv6Octree11deletePointERKNS2_7Point3_IfEEE3$_0EclINS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbT_.exit.i.i.i.i.i": ; preds = %bb.m
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.061.080.i.i.i.i.i, i64 8
  %i.de = load float, ptr %i.dd, align 4, !tbaa !53
  %i.df = fsub float %.sroa.2.0.copyload, %i.de
  %i.dg = tail call noundef float @llvm.fabs.f32(float %i.df)
  %i.dh = fcmp olt float %i.dg, f0x3089705F
end_hunk_2
