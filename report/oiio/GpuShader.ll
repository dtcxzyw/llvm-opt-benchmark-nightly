inline.NumInlined: 768
inline.NumDeleted: 312
begin_hunk_0_@_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev
; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(240) ptr @_ZN16OpenColorIO_v2_513GpuShaderDesc11UniformDataaSERKS1_(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(240) %1) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i12 = alloca { i64, i64 }, align 8 ; 4 uses
  %2 = alloca %"class.std::function.7", align 8   ; 11 uses
  %.sroa.0.i.i.i7 = alloca { i64, i64 }, align 8  ; 4 uses
  %3 = alloca %"class.std::function.5", align 8   ; 11 uses
  %.sroa.0.i.i.i = alloca { i64, i64 }, align 8   ; 4 uses
  %4 = alloca %"class.std::function", align 8     ; 11 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !88   ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFdvEEC2ERKS1_.exit.i, label %bb.b
end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_513GpuShaderDesc11UniformDataaSERKS1_:bb.a
bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !88   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.e

end_hunk_1
begin_hunk_2_@_ZN16OpenColorIO_v2_513GpuShaderDesc11UniformDataaSERKS1_:bb.a

_ZNSt8functionIFdvEEC2ERKS1_.exit.i:              ; preds = %bb.c, %bb.a
  %i.m = phi <2 x ptr> [ splat (ptr null), %bb.a ], [ %i.g, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 16, i1 false), !tbaa.struct !91
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 16, i1 false), !tbaa.struct !91
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, i64 16, i1 false), !tbaa.struct !91
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.o = load <2 x ptr>, ptr %i.n, align 8, !tbaa !90
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !90   ; 2 uses
  store <2 x ptr> %i.o, ptr %i.b, align 8, !tbaa !90
  store <2 x ptr> %i.m, ptr %i.n, align 8, !tbaa !90
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt8functionIFdvEEaSERKS1_.exit, label %bb.g
end_hunk_2
begin_hunk_3_@_ZN16OpenColorIO_v2_513GpuShaderDesc11UniformDataaSERKS1_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !88   ; 2 uses
  %.not.i.i.not.i.i8 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.not.i.i8, label %_ZNSt8functionIFbvEEC2ERKS1_.exit.i, label %bb.i
end_hunk_3
begin_hunk_4_@_ZN16OpenColorIO_v2_513GpuShaderDesc11UniformDataaSERKS1_:bb.a
bb.k:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %i.u, align 8, !tbaa !88  ; 2 uses
  %.not.i.i.i9 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i9, label %common.resume, label %bb.l

end_hunk_4
begin_hunk_5_@_ZN16OpenColorIO_v2_513GpuShaderDesc11UniformDataaSERKS1_:bb.a

_ZNSt8functionIFbvEEC2ERKS1_.exit.i:              ; preds = %bb.j, %_ZNSt8functionIFdvEEaSERKS1_.exit
  %i.af = phi <2 x ptr> [ splat (ptr null), %_ZNSt8functionIFdvEEaSERKS1_.exit ], [ %i.z, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i7, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 16, i1 false), !tbaa.struct !91
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 16, i1 false), !tbaa.struct !91
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i7, i64 16, i1 false), !tbaa.struct !91
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i7)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.ah = load <2 x ptr>, ptr %i.ag, align 8, !tbaa !90
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !90 ; 2 uses
  store <2 x ptr> %i.ah, ptr %i.u, align 8, !tbaa !90
  store <2 x ptr> %i.af, ptr %i.ag, align 8, !tbaa !90
  %.not.i.i11 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i11, label %_ZNSt8functionIFbvEEaSERKS1_.exit, label %bb.n
end_hunk_5
begin_hunk_6_@_ZN16OpenColorIO_v2_513GpuShaderDesc11UniformDataaSERKS1_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !88 ; 2 uses
  %.not.i.i.not.i.i13 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.not.i.i13, label %_ZNSt8functionIFRKSt5arrayIfLm3EEvEEC2ERKS5_.exit.i, label %bb.p
end_hunk_6
begin_hunk_7_@_ZN16OpenColorIO_v2_513GpuShaderDesc11UniformDataaSERKS1_:bb.a
bb.r:                                             ; preds = %bb.p
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = load ptr, ptr %i.an, align 8, !tbaa !88 ; 2 uses
  %.not.i.i.i14 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i14, label %common.resume, label %bb.s

end_hunk_7
begin_hunk_8_@_ZN16OpenColorIO_v2_513GpuShaderDesc11UniformDataaSERKS1_:bb.a

_ZNSt8functionIFRKSt5arrayIfLm3EEvEEC2ERKS5_.exit.i: ; preds = %bb.q, %_ZNSt8functionIFbvEEaSERKS1_.exit
  %i.ay = phi <2 x ptr> [ splat (ptr null), %_ZNSt8functionIFbvEEaSERKS1_.exit ], [ %i.as, %bb.q ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i12)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i12, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !tbaa.struct !91
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.am, i64 16, i1 false), !tbaa.struct !91
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i12, i64 16, i1 false), !tbaa.struct !91
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i12)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.ba = load <2 x ptr>, ptr %i.az, align 8, !tbaa !90
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !90 ; 2 uses
  store <2 x ptr> %i.ba, ptr %i.an, align 8, !tbaa !90
  store <2 x ptr> %i.ay, ptr %i.az, align 8, !tbaa !90
  %.not.i.i16 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i16, label %_ZNSt8functionIFRKSt5arrayIfLm3EEvEEaSERKS5_.exit, label %bb.u
end_hunk_8
begin_hunk_9_@llvm.memcpy.p0.p0.i64
; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(64) ptr @_ZN16OpenColorIO_v2_513GpuShaderDesc11UniformData11VectorFloataSERKS2_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i3 = alloca { i64, i64 }, align 8  ; 4 uses
  %2 = alloca %"class.std::function.11", align 8  ; 11 uses
  %.sroa.0.i.i.i = alloca { i64, i64 }, align 8   ; 4 uses
  %3 = alloca %"class.std::function.9", align 8   ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !88   ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFivEEC2ERKS1_.exit.i, label %bb.b
end_hunk_9
begin_hunk_10_@_ZN16OpenColorIO_v2_513GpuShaderDesc11UniformData11VectorFloataSERKS2_:bb.a
bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !88   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.e

end_hunk_10
begin_hunk_11_@_ZN16OpenColorIO_v2_513GpuShaderDesc11UniformData11VectorFloataSERKS2_:bb.a

_ZNSt8functionIFivEEC2ERKS1_.exit.i:              ; preds = %bb.c, %bb.a
  %i.k = phi <2 x ptr> [ splat (ptr null), %bb.a ], [ %i.e, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 16, i1 false), !tbaa.struct !91
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 16, i1 false), !tbaa.struct !91
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, i64 16, i1 false), !tbaa.struct !91
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.m = load <2 x ptr>, ptr %i.l, align 8, !tbaa !90
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !90   ; 2 uses
  store <2 x ptr> %i.m, ptr %i.a, align 8, !tbaa !90
  store <2 x ptr> %i.k, ptr %i.l, align 8, !tbaa !90
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZNSt8functionIFivEEaSERKS1_.exit, label %bb.g
end_hunk_11
begin_hunk_12_@_ZN16OpenColorIO_v2_513GpuShaderDesc11UniformData11VectorFloataSERKS2_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !88   ; 2 uses
  %.not.i.i.not.i.i4 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.not.i.i4, label %_ZNSt8functionIFPKfvEEC2ERKS3_.exit.i, label %bb.i
end_hunk_12
begin_hunk_13_@_ZN16OpenColorIO_v2_513GpuShaderDesc11UniformData11VectorFloataSERKS2_:bb.a
bb.k:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !88   ; 2 uses
  %.not.i.i.i5 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i5, label %common.resume, label %bb.l

end_hunk_13
begin_hunk_14_@_ZN16OpenColorIO_v2_513GpuShaderDesc11UniformData11VectorFloataSERKS2_:bb.a

_ZNSt8functionIFPKfvEEC2ERKS3_.exit.i:            ; preds = %bb.j, %_ZNSt8functionIFivEEaSERKS1_.exit
  %i.ad = phi <2 x ptr> [ splat (ptr null), %_ZNSt8functionIFivEEaSERKS1_.exit ], [ %i.x, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i3, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !tbaa.struct !91
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 16, i1 false), !tbaa.struct !91
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i3, i64 16, i1 false), !tbaa.struct !91
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i3)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.af = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !90
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !90 ; 2 uses
  store <2 x ptr> %i.af, ptr %i.s, align 8, !tbaa !90
  store <2 x ptr> %i.ad, ptr %i.ae, align 8, !tbaa !90
  %.not.i.i7 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i7, label %_ZNSt8functionIFPKfvEEaSERKS3_.exit, label %bb.n
end_hunk_14
begin_hunk_15_@_ZN16OpenColorIO_v2_513GpuShaderDesc11UniformData11VectorFloataSERKS2_:bb.a
; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(64) ptr @_ZN16OpenColorIO_v2_513GpuShaderDesc11UniformData9VectorIntaSERKS2_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i3 = alloca { i64, i64 }, align 8  ; 4 uses
  %2 = alloca %"class.std::function.13", align 8  ; 11 uses
  %.sroa.0.i.i.i = alloca { i64, i64 }, align 8   ; 4 uses
  %3 = alloca %"class.std::function.9", align 8   ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !88   ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFivEEC2ERKS1_.exit.i, label %bb.b
end_hunk_15
begin_hunk_16_@_ZN16OpenColorIO_v2_513GpuShaderDesc11UniformData9VectorIntaSERKS2_:bb.a
bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !88   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.e

end_hunk_16
begin_hunk_17_@_ZN16OpenColorIO_v2_513GpuShaderDesc11UniformData9VectorIntaSERKS2_:bb.a

_ZNSt8functionIFivEEC2ERKS1_.exit.i:              ; preds = %bb.c, %bb.a
  %i.k = phi <2 x ptr> [ splat (ptr null), %bb.a ], [ %i.e, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 16, i1 false), !tbaa.struct !91
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 16, i1 false), !tbaa.struct !91
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, i64 16, i1 false), !tbaa.struct !91
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.m = load <2 x ptr>, ptr %i.l, align 8, !tbaa !90
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !90   ; 2 uses
  store <2 x ptr> %i.m, ptr %i.a, align 8, !tbaa !90
  store <2 x ptr> %i.k, ptr %i.l, align 8, !tbaa !90
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZNSt8functionIFivEEaSERKS1_.exit, label %bb.g
end_hunk_17
begin_hunk_18_@_ZN16OpenColorIO_v2_513GpuShaderDesc11UniformData9VectorIntaSERKS2_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !88   ; 2 uses
  %.not.i.i.not.i.i4 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.not.i.i4, label %_ZNSt8functionIFPKivEEC2ERKS3_.exit.i, label %bb.i
end_hunk_18
begin_hunk_19_@_ZN16OpenColorIO_v2_513GpuShaderDesc11UniformData9VectorIntaSERKS2_:bb.a
bb.k:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !88   ; 2 uses
  %.not.i.i.i5 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i5, label %common.resume, label %bb.l

end_hunk_19
begin_hunk_20_@_ZN16OpenColorIO_v2_513GpuShaderDesc11UniformData9VectorIntaSERKS2_:bb.a

_ZNSt8functionIFPKivEEC2ERKS3_.exit.i:            ; preds = %bb.j, %_ZNSt8functionIFivEEaSERKS1_.exit
  %i.ad = phi <2 x ptr> [ splat (ptr null), %_ZNSt8functionIFivEEaSERKS1_.exit ], [ %i.x, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i3, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !tbaa.struct !91
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 16, i1 false), !tbaa.struct !91
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i3, i64 16, i1 false), !tbaa.struct !91
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i3)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.af = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !90
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !90 ; 2 uses
  store <2 x ptr> %i.af, ptr %i.s, align 8, !tbaa !90
  store <2 x ptr> %i.ad, ptr %i.ae, align 8, !tbaa !90
  %.not.i.i7 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i7, label %_ZNSt8functionIFPKivEEaSERKS3_.exit, label %bb.n
end_hunk_20
begin_hunk_21_@_ZNSt6vectorIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE17_M_realloc_insertIJRPKcRKSt8functionIFdvEERmEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformC2EPKcRKSt8functionIFdvEEm(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i = alloca { i64, i64 }, align 8   ; 4 uses
  %4 = alloca %"class.std::function", align 8     ; 11 uses
  tail call void @_ZN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformC2EPKc(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.a, align 8, !tbaa !95
end_hunk_21
begin_hunk_22_@_ZN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformC2EPKcRKSt8functionIFdvEEm:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !88   ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFdvEEC2ERKS1_.exit.i, label %bb.b
end_hunk_22
begin_hunk_23_@_ZN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformC2EPKcRKSt8functionIFdvEEm:bb.a
bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !88   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %.body, label %bb.e

end_hunk_23
begin_hunk_24_@_ZN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformC2EPKcRKSt8functionIFdvEEm:bb.a

_ZNSt8functionIFdvEEC2ERKS1_.exit.i:              ; preds = %bb.c, %bb.a
  %i.m = phi <2 x ptr> [ splat (ptr null), %bb.a ], [ %i.g, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 16, i1 false), !tbaa.struct !91
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 16, i1 false), !tbaa.struct !91
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, i64 16, i1 false), !tbaa.struct !91
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.o = load <2 x ptr>, ptr %i.n, align 8, !tbaa !90
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !90   ; 2 uses
  store <2 x ptr> %i.o, ptr %i.c, align 8, !tbaa !90
  store <2 x ptr> %i.m, ptr %i.n, align 8, !tbaa !90
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %bb.i, label %bb.g
end_hunk_24
begin_hunk_25_@_ZNSt6vectorIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE17_M_realloc_insertIJRPKcRKSt8functionIFbvEERmEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformC2EPKcRKSt8functionIFbvEEm(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i = alloca { i64, i64 }, align 8   ; 4 uses
  %4 = alloca %"class.std::function.5", align 8   ; 11 uses
  tail call void @_ZN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformC2EPKc(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 1, ptr %i.a, align 8, !tbaa !95
end_hunk_25
begin_hunk_26_@_ZN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformC2EPKcRKSt8functionIFbvEEm:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !88   ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFbvEEC2ERKS1_.exit.i, label %bb.b
end_hunk_26
begin_hunk_27_@_ZN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformC2EPKcRKSt8functionIFbvEEm:bb.a
bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !88   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %.body, label %bb.e

end_hunk_27
begin_hunk_28_@_ZN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformC2EPKcRKSt8functionIFbvEEm:bb.a

_ZNSt8functionIFbvEEC2ERKS1_.exit.i:              ; preds = %bb.c, %bb.a
  %i.m = phi <2 x ptr> [ splat (ptr null), %bb.a ], [ %i.g, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 16, i1 false), !tbaa.struct !91
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 16, i1 false), !tbaa.struct !91
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, i64 16, i1 false), !tbaa.struct !91
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.o = load <2 x ptr>, ptr %i.n, align 8, !tbaa !90
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !90   ; 2 uses
  store <2 x ptr> %i.o, ptr %i.c, align 8, !tbaa !90
  store <2 x ptr> %i.m, ptr %i.n, align 8, !tbaa !90
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %bb.i, label %bb.g
end_hunk_28
begin_hunk_29_@_ZNSt6vectorIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE17_M_realloc_insertIJRPKcRKSt8functionIFRKSt5arrayIfLm3EEvEERmEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformC2EPKcRKSt8functionIFRKSt5arrayIfLm3EEvEEm(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i = alloca { i64, i64 }, align 8   ; 4 uses
  %4 = alloca %"class.std::function.7", align 8   ; 11 uses
  tail call void @_ZN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformC2EPKc(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 2, ptr %i.a, align 8, !tbaa !95
end_hunk_29
begin_hunk_30_@_ZN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformC2EPKcRKSt8functionIFRKSt5arrayIfLm3EEvEEm:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !88   ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFRKSt5arrayIfLm3EEvEEC2ERKS5_.exit.i, label %bb.b
end_hunk_30
begin_hunk_31_@_ZN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformC2EPKcRKSt8functionIFRKSt5arrayIfLm3EEvEEm:bb.a
bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !88   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %.body, label %bb.e

end_hunk_31
begin_hunk_32_@_ZN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformC2EPKcRKSt8functionIFRKSt5arrayIfLm3EEvEEm:bb.a

_ZNSt8functionIFRKSt5arrayIfLm3EEvEEC2ERKS5_.exit.i: ; preds = %bb.c, %bb.a
  %i.m = phi <2 x ptr> [ splat (ptr null), %bb.a ], [ %i.g, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 16, i1 false), !tbaa.struct !91
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 16, i1 false), !tbaa.struct !91
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, i64 16, i1 false), !tbaa.struct !91
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.o = load <2 x ptr>, ptr %i.n, align 8, !tbaa !90
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !90   ; 2 uses
  store <2 x ptr> %i.o, ptr %i.c, align 8, !tbaa !90
  store <2 x ptr> %i.m, ptr %i.n, align 8, !tbaa !90
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %bb.i, label %bb.g
end_hunk_32
begin_hunk_33_@_ZNSt6vectorIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE17_M_realloc_insertIJRPKcRKSt8functionIFivEERKSA_IFPKfvEERmEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformC2EPKcRKSt8functionIFivEERKS5_IFPKfvEEm(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i6 = alloca { i64, i64 }, align 8  ; 4 uses
  %5 = alloca %"class.std::function.11", align 8  ; 11 uses
  %.sroa.0.i.i.i = alloca { i64, i64 }, align 8   ; 4 uses
  %6 = alloca %"class.std::function.9", align 8   ; 11 uses
  tail call void @_ZN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformC2EPKc(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 3, ptr %i.a, align 8, !tbaa !95
end_hunk_33
begin_hunk_34_@_ZN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformC2EPKcRKSt8functionIFivEERKS5_IFPKfvEEm:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !88   ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFivEEC2ERKS1_.exit.i, label %bb.b
end_hunk_34
begin_hunk_35_@_ZN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformC2EPKcRKSt8functionIFivEERKS5_IFPKfvEEm:bb.a
bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !88   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %.body, label %bb.e

end_hunk_35
begin_hunk_36_@_ZN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformC2EPKcRKSt8functionIFivEERKS5_IFPKfvEEm:bb.a

_ZNSt8functionIFivEEC2ERKS1_.exit.i:              ; preds = %bb.c, %bb.a
  %i.m = phi <2 x ptr> [ splat (ptr null), %bb.a ], [ %i.g, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 16, i1 false), !tbaa.struct !91
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 16, i1 false), !tbaa.struct !91
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, i64 16, i1 false), !tbaa.struct !91
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.o = load <2 x ptr>, ptr %i.n, align 8, !tbaa !90
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !90   ; 2 uses
  store <2 x ptr> %i.o, ptr %i.c, align 8, !tbaa !90
  store <2 x ptr> %i.m, ptr %i.n, align 8, !tbaa !90
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %bb.i, label %bb.g
end_hunk_36
begin_hunk_37_@_ZN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformC2EPKcRKSt8functionIFivEERKS5_IFPKfvEEm:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !88   ; 2 uses
  %.not.i.i.not.i.i7 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.not.i.i7, label %_ZNSt8functionIFPKfvEEC2ERKS3_.exit.i, label %bb.j
end_hunk_37
begin_hunk_38_@_ZN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformC2EPKcRKSt8functionIFivEERKS5_IFPKfvEEm:bb.a
bb.l:                                             ; preds = %bb.j
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !88  ; 2 uses
  %.not.i.i.i8 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i8, label %.body, label %bb.m

end_hunk_38
begin_hunk_39_@_ZN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformC2EPKcRKSt8functionIFivEERKS5_IFPKfvEEm:bb.a

_ZNSt8functionIFPKfvEEC2ERKS3_.exit.i:            ; preds = %bb.k, %bb.i
  %i.ae = phi <2 x ptr> [ splat (ptr null), %bb.i ], [ %i.y, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 16, i1 false), !tbaa.struct !91
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 16, i1 false), !tbaa.struct !91
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i6, i64 16, i1 false), !tbaa.struct !91
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i6)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.ag = load <2 x ptr>, ptr %i.af, align 8, !tbaa !90
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !90 ; 2 uses
  store <2 x ptr> %i.ag, ptr %i.u, align 8, !tbaa !90
  store <2 x ptr> %i.ae, ptr %i.af, align 8, !tbaa !90
  %.not.i.i10 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i10, label %bb.q, label %bb.o
end_hunk_39
begin_hunk_40_@_ZNSt6vectorIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE17_M_realloc_insertIJRPKcRKSt8functionIFivEERKSA_IFPKivEERmEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformC2EPKcRKSt8functionIFivEERKS5_IFPKivEEm(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i6 = alloca { i64, i64 }, align 8  ; 4 uses
  %5 = alloca %"class.std::function.13", align 8  ; 11 uses
  %.sroa.0.i.i.i = alloca { i64, i64 }, align 8   ; 4 uses
  %6 = alloca %"class.std::function.9", align 8   ; 11 uses
  tail call void @_ZN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformC2EPKc(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 4, ptr %i.a, align 8, !tbaa !95
end_hunk_40
begin_hunk_41_@_ZN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformC2EPKcRKSt8functionIFivEERKS5_IFPKivEEm:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !88   ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFivEEC2ERKS1_.exit.i, label %bb.b
end_hunk_41
begin_hunk_42_@_ZN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformC2EPKcRKSt8functionIFivEERKS5_IFPKivEEm:bb.a
bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !88   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %.body, label %bb.e

end_hunk_42
begin_hunk_43_@_ZN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformC2EPKcRKSt8functionIFivEERKS5_IFPKivEEm:bb.a

_ZNSt8functionIFivEEC2ERKS1_.exit.i:              ; preds = %bb.c, %bb.a
  %i.m = phi <2 x ptr> [ splat (ptr null), %bb.a ], [ %i.g, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 16, i1 false), !tbaa.struct !91
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 16, i1 false), !tbaa.struct !91
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, i64 16, i1 false), !tbaa.struct !91
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.o = load <2 x ptr>, ptr %i.n, align 8, !tbaa !90
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !90   ; 2 uses
  store <2 x ptr> %i.o, ptr %i.c, align 8, !tbaa !90
  store <2 x ptr> %i.m, ptr %i.n, align 8, !tbaa !90
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %bb.i, label %bb.g
end_hunk_43
begin_hunk_44_@_ZN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformC2EPKcRKSt8functionIFivEERKS5_IFPKivEEm:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !88   ; 2 uses
  %.not.i.i.not.i.i7 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.not.i.i7, label %_ZNSt8functionIFPKivEEC2ERKS3_.exit.i, label %bb.j
end_hunk_44
begin_hunk_45_@_ZN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformC2EPKcRKSt8functionIFivEERKS5_IFPKivEEm:bb.a
bb.l:                                             ; preds = %bb.j
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !88  ; 2 uses
  %.not.i.i.i8 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i8, label %.body, label %bb.m

end_hunk_45
begin_hunk_46_@_ZN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformC2EPKcRKSt8functionIFivEERKS5_IFPKivEEm:bb.a

_ZNSt8functionIFPKivEEC2ERKS3_.exit.i:            ; preds = %bb.k, %bb.i
  %i.ae = phi <2 x ptr> [ splat (ptr null), %bb.i ], [ %i.y, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 16, i1 false), !tbaa.struct !91
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 16, i1 false), !tbaa.struct !91
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i6, i64 16, i1 false), !tbaa.struct !91
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i6)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.ag = load <2 x ptr>, ptr %i.af, align 8, !tbaa !90
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !90 ; 2 uses
  store <2 x ptr> %i.ag, ptr %i.u, align 8, !tbaa !90
  store <2 x ptr> %i.ae, ptr %i.af, align 8, !tbaa !90
  %.not.i.i10 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i10, label %bb.q, label %bb.o
end_hunk_46
