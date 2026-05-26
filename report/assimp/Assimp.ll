inline.NumInlined: 1626
inline.NumDeleted: 658
begin_hunk_0_@aiMultiplyMatrix3:bb.a
  %i.o = shufflevector <3 x float> %i.n, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.p = load float, ptr %i.e, align 4, !noalias !12
  %i.q = shufflevector <2 x float> %i.g, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.r = shufflevector <4 x float> %i.f, <4 x float> %i.q, <4 x i32> <i32 1, i32 1, i32 1, i32 4>
  %i.s = fmul <4 x float> %i.r, %i.l
  %i.t = shufflevector <4 x float> %i.f, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.u = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.i, <4 x float> %i.t, <4 x float> %i.s)
  %i.v = shufflevector <4 x float> %i.f, <4 x float> %i.q, <4 x i32> <i32 2, i32 2, i32 2, i32 5>
  %i.w = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.o, <4 x float> %i.v, <4 x float> %i.u)
  %i.x = extractelement <3 x float> %i.k, i64 2
  %i.y = extractelement <3 x float> %i.h, i64 2
  %i.z = extractelement <3 x float> %i.n, i64 2
  store <4 x float> %i.w, ptr %0, align 4
  %i.aa = load <4 x float>, ptr %.sroa.14.0..sroa_idx12, align 4 ; 3 uses
  %.sroa.20.0.copyload19 = load float, ptr %.sroa.20.0..sroa_idx18, align 4
  %.sroa.18.0.copyload17 = load float, ptr %.sroa.18.0..sroa_idx16, align 4
  %.sroa.16.0.copyload15 = load float, ptr %.sroa.16.0..sroa_idx14, align 4
  %i.ab = shufflevector <2 x float> %i.g, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.ac = shufflevector <3 x float> %i.ab, <3 x float> %i.k, <4 x i32> <i32 0, i32 3, i32 0, i32 poison>
  %i.ad = insertelement <4 x float> %i.ac, float %i.m, i64 3 ; 2 uses
  %i.ae = shufflevector <4 x float> %i.ad, <4 x float> %i.aa, <4 x i32> <i32 3, i32 6, i32 poison, i32 6>
  %i.af = shufflevector <4 x float> %i.ae, <4 x float> %i.l, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.ag = fmul <4 x float> %i.ad, %i.af
  %i.ah = shufflevector <3 x float> %i.h, <3 x float> poison, <4 x i32> <i32 poison, i32 0, i32 2, i32 poison>
  %i.ai = insertelement <4 x float> poison, float %i.j, i64 0
  %i.aj = shufflevector <4 x float> %i.ai, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.ak = shufflevector <4 x float> %i.aj, <4 x float> %i.ah, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.al = shufflevector <4 x float> %i.aa, <4 x float> poison, <2 x i32> <i32 poison, i32 1>
  %i.am = insertelement <2 x float> %i.al, float %.sroa.10.0.copyload9, i64 0
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ao = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ak, <4 x float> %i.an, <4 x float> %i.ag)
  %i.ap = shufflevector <3 x float> %i.n, <3 x float> poison, <4 x i32> <i32 poison, i32 0, i32 2, i32 poison>
  %i.aq = insertelement <4 x float> poison, float %i.p, i64 0
  %i.ar = shufflevector <4 x float> %i.aq, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.as = shufflevector <4 x float> %i.ar, <4 x float> %i.ap, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.at = shufflevector <4 x float> %i.aa, <4 x float> poison, <4 x i32> <i32 0, i32 3, i32 0, i32 3>
  %i.au = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.as, <4 x float> %i.at, <4 x float> %i.ao)
  %i.av = fmul float %.sroa.18.0.copyload17, %i.x
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.y, float %.sroa.16.0.copyload15, float %i.av)
  %i.ax = tail call float @llvm.fmuladd.f32(float %i.z, float %.sroa.20.0.copyload19, float %i.aw)
  %i.ay = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %i.ay, ptr %.sroa.12.0..sroa_idx10, align 4
  store float %i.ax, ptr %.sroa.20.0..sroa_idx18, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @aiIdentityMatrix3(ptr noundef writeonly captures(none) initializes((0, 36)) %0) local_unnamed_addr #16 {
bb.a:
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %0, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float 1.000000e+00, ptr %.sroa.11.0..sroa_idx, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @aiIdentityMatrix4(ptr noundef writeonly captures(none) initializes((0, 64)) %0) local_unnamed_addr #16 {
bb.a:
  store float 1.000000e+00, ptr %0, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float 1.000000e+00, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float 1.000000e+00, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float 1.000000e+00, ptr %.sroa.9.0..sroa_idx, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @aiGetImporterDesc(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector", align 8       ; 14 uses
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  invoke void @_ZN6Assimp23GetImporterInstanceListERSt6vectorIPNS_12BaseImporterESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.preheader unwind label %bb.c

.preheader:                                       ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %1, align 8                ; 2 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %.loopexit, label %.lr.ph

bb.c:                                             ; preds = %.loopexit, %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.lr.ph:                                           ; preds = %.preheader, %bb.f
  %i.f = phi ptr [ %i.aa, %bb.f ], [ %i.d, %.preheader ]
  %.021 = phi i64 [ %i.y, %bb.f ], [ 0, %.preheader ] ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.021
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = invoke noundef ptr %i.k(ptr noundef nonnull align 8 dereferenceable(72) %i.h)
          to label %bb.d unwind label %.loopexit18

bb.d:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #49
  %i.p = call i32 @strncmp(ptr noundef %i.n, ptr noundef nonnull %0, i64 noundef %i.o) #49
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %1, align 8
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.021
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = invoke noundef ptr %i.w(ptr noundef nonnull align 8 dereferenceable(72) %i.t)
          to label %.loopexit unwind label %.loopexit.split-lp

.loopexit18:                                      ; preds = %.lr.ph
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.y = add nuw i64 %.021, 1                     ; 2 uses
  %i.z = load ptr, ptr %i.b, align 8
  %i.aa = load ptr, ptr %1, align 8               ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 3
  %i.af = icmp ult i64 %i.y, %i.ae
  br i1 %i.af, label %.lr.ph, label %.loopexit, !llvm.loop !15

.loopexit:                                        ; preds = %bb.f, %.preheader, %bb.e
  %.012 = phi ptr [ %i.x, %bb.e ], [ null, %.preheader ], [ null, %bb.f ]
  invoke void @_ZN6Assimp26DeleteImporterInstanceListERSt6vectorIPNS_12BaseImporterESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.g unwind label %bb.c

bb.g:                                             ; preds = %.loopexit
  %i.ag = load ptr, ptr %1, align 8               ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.al) #45
  br label %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EED2Ev.exit

_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EED2Ev.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #47
  br label %bb.k

bb.i:                                             ; preds = %.loopexit18, %.loopexit.split-lp, %bb.c
  %.pn = phi { ptr, i32 } [ %i.e, %bb.c ], [ %lpad.loopexit, %.loopexit18 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.am = load ptr, ptr %1, align 8               ; 3 uses
  %.not.i.i.i16 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i16, label %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EED2Ev.exit17, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = sub i64 %i.ap, %i.aq
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.ar) #45
  br label %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EED2Ev.exit17

_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EED2Ev.exit17: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #47
  resume { ptr, i32 } %.pn

bb.k:                                             ; preds = %bb.a, %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EED2Ev.exit
  %.013 = phi ptr [ %.012, %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EED2Ev.exit ], [ null, %bb.a ]
  ret ptr %.013
}

declare void @_ZN6Assimp23GetImporterInstanceListERSt6vectorIPNS_12BaseImporterESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #17

declare void @_ZN6Assimp26DeleteImporterInstanceListERSt6vectorIPNS_12BaseImporterESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @aiVector2AreEqual(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #18 {
bb.a:
  %i.a = load float, ptr %0, align 4
  %i.b = load float, ptr %1, align 4
  %i.c = fcmp oeq float %i.a, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load float, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load float, ptr %i.f, align 4
  %i.h = fcmp oeq float %i.e, %i.g
  %i.i = select i1 %i.c, i1 %i.h, i1 false
  %i.j = zext i1 %i.i to i32
  ret i32 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @aiVector2AreEqualEpsilon(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, float noundef %2) local_unnamed_addr #18 {
bb.a:
  %i.a = load float, ptr %0, align 4
  %i.b = load float, ptr %1, align 4
  %i.c = fsub float %i.a, %i.b
  %i.d = tail call noundef float @llvm.fabs.f32(float %i.c)
  %i.e = fcmp ugt float %i.d, %2
  br i1 %i.e, label %_ZNK10aiVector2tIfE5EqualERKS0_f.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load float, ptr %i.f, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load float, ptr %i.h, align 4
  %i.j = fsub float %i.g, %i.i
  %i.k = tail call noundef float @llvm.fabs.f32(float %i.j)
  %i.l = fcmp ole float %i.k, %2
  %i.m = zext i1 %i.l to i32
  br label %_ZNK10aiVector2tIfE5EqualERKS0_f.exit

_ZNK10aiVector2tIfE5EqualERKS0_f.exit:            ; preds = %bb.a, %bb.b
  %i.n = phi i32 [ 0, %bb.a ], [ %i.m, %bb.b ]
  ret i32 %i.n
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @aiVector2Add(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #15 {
bb.a:
  %i.a = load <2 x float>, ptr %0, align 4
  %i.b = load <2 x float>, ptr %1, align 4
  %i.c = fadd <2 x float> %i.a, %i.b
  store <2 x float> %i.c, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @aiVector2Subtract(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #15 {
bb.a:
  %i.a = load <2 x float>, ptr %0, align 4
  %i.b = load <2 x float>, ptr %1, align 4
  %i.c = fsub <2 x float> %i.a, %i.b
  store <2 x float> %i.c, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @aiVector2Scale(ptr noundef captures(none) %0, float noundef %1) local_unnamed_addr #14 {
bb.a:
  %i.a = load <2 x float>, ptr %0, align 4
  %i.b = insertelement <2 x float> poison, float %1, i64 0
  %i.c = shufflevector <2 x float> %i.b, <2 x float> poison, <2 x i32> zeroinitializer
  %i.d = fmul <2 x float> %i.c, %i.a
  store <2 x float> %i.d, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @aiVector2SymMul(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #15 {
bb.a:
  %i.a = load <2 x float>, ptr %0, align 4
  %i.b = load <2 x float>, ptr %1, align 4
  %i.c = fmul <2 x float> %i.a, %i.b
  store <2 x float> %i.c, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @aiVector2DivideByScalar(ptr noundef captures(none) %0, float noundef %1) local_unnamed_addr #14 {
bb.a:
  %i.a = load <2 x float>, ptr %0, align 4
  %i.b = insertelement <2 x float> poison, float %1, i64 0
  %i.c = shufflevector <2 x float> %i.b, <2 x float> poison, <2 x i32> zeroinitializer
  %i.d = fdiv <2 x float> %i.a, %i.c
  store <2 x float> %i.d, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @aiVector2DivideByVector(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #15 {
bb.a:
  %i.a = load <2 x float>, ptr %0, align 4
  %i.b = load <2 x float>, ptr %1, align 4
  %i.c = fdiv <2 x float> %i.a, %i.b
  store <2 x float> %i.c, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef float @aiVector2Length(ptr noundef readonly captures(none) %0) local_unnamed_addr #18 {
bb.a:
  %i.a = load float, ptr %0, align 4              ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load float, ptr %i.b, align 4            ; 2 uses
  %i.d = fmul float %i.c, %i.c
  %i.e = tail call noundef float @llvm.fmuladd.f32(float %i.a, float %i.a, float %i.d)
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %i.e)
  ret float %sqrt.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef float @aiVector2SquareLength(ptr noundef readonly captures(none) %0) local_unnamed_addr #18 {
bb.a:
  %i.a = load float, ptr %0, align 4              ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load float, ptr %i.b, align 4            ; 2 uses
  %i.d = fmul float %i.c, %i.c
  %i.e = tail call noundef float @llvm.fmuladd.f32(float %i.a, float %i.a, float %i.d)
  ret float %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @aiVector2Negate(ptr noundef captures(none) %0) local_unnamed_addr #15 {
bb.a:
  %i.a = load <2 x float>, ptr %0, align 4
  %i.b = fneg <2 x float> %i.a
  store <2 x float> %i.b, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef float @aiVector2DotProduct(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #18 {
bb.a:
  %i.a = load float, ptr %0, align 4
  %i.b = load float, ptr %1, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load float, ptr %i.c, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load float, ptr %i.e, align 4
  %i.g = fmul float %i.d, %i.f
  %i.h = tail call noundef float @llvm.fmuladd.f32(float %i.a, float %i.b, float %i.g)
  ret float %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @aiVector2Normalize(ptr noundef captures(none) %0) local_unnamed_addr #14 {
bb.a:
  %i.a = load <2 x float>, ptr %0, align 4        ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.a, %i.a
  %i.b = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.c = extractelement <2 x float> %i.a, i64 0   ; 2 uses
  %i.d = tail call noundef float @llvm.fmuladd.f32(float %i.c, float %i.c, float %i.b)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.d)
  %i.e = insertelement <2 x float> poison, float %sqrt.i.i, i64 0
  %i.f = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> zeroinitializer
  %i.g = fdiv <2 x float> %i.a, %i.f
  store <2 x float> %i.g, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @aiVector3AreEqual(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #18 {
bb.a:
  %i.a = load float, ptr %0, align 4
  %i.b = load float, ptr %1, align 4
  %i.c = fcmp oeq float %i.a, %i.b
  br i1 %i.c, label %bb.b, label %_ZNK10aiVector3tIfEeqERKS0_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load float, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load float, ptr %i.f, align 4
  %i.h = fcmp oeq float %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_ZNK10aiVector3tIfEeqERKS0_.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load float, ptr %i.i, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load float, ptr %i.k, align 4
  %i.m = fcmp oeq float %i.j, %i.l
  %i.n = zext i1 %i.m to i32
  br label %_ZNK10aiVector3tIfEeqERKS0_.exit

_ZNK10aiVector3tIfEeqERKS0_.exit:                 ; preds = %bb.a, %bb.b, %bb.c
  %i.o = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ %i.n, %bb.c ]
  ret i32 %i.o
}

end_hunk_0
begin_hunk_1_@aiMatrix3AreEqualEpsilon:bb.a

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.u = load float, ptr %i.t, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.w = load float, ptr %i.v, align 4
  %i.x = fsub float %i.u, %i.w
  %i.y = tail call noundef float @llvm.fabs.f32(float %i.x)
  %i.z = fcmp ugt float %i.y, %2
  br i1 %i.z, label %_ZNK12aiMatrix3x3tIfE5EqualERKS0_f.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load float, ptr %i.aa, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = load float, ptr %i.ac, align 4
  %i.ae = fsub float %i.ab, %i.ad
  %i.af = tail call noundef float @llvm.fabs.f32(float %i.ae)
  %i.ag = fcmp ugt float %i.af, %2
  br i1 %i.ag, label %_ZNK12aiMatrix3x3tIfE5EqualERKS0_f.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ai = load float, ptr %i.ah, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ak = load float, ptr %i.aj, align 4
  %i.al = fsub float %i.ai, %i.ak
  %i.am = tail call noundef float @llvm.fabs.f32(float %i.al)
  %i.an = fcmp ugt float %i.am, %2
  br i1 %i.an, label %_ZNK12aiMatrix3x3tIfE5EqualERKS0_f.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ap = load float, ptr %i.ao, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ar = load float, ptr %i.aq, align 4
  %i.as = fsub float %i.ap, %i.ar
  %i.at = tail call noundef float @llvm.fabs.f32(float %i.as)
  %i.au = fcmp ugt float %i.at, %2
  br i1 %i.au, label %_ZNK12aiMatrix3x3tIfE5EqualERKS0_f.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.aw = load float, ptr %i.av, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ay = load float, ptr %i.ax, align 4
  %i.az = fsub float %i.aw, %i.ay
  %i.ba = tail call noundef float @llvm.fabs.f32(float %i.az)
  %i.bb = fcmp ugt float %i.ba, %2
  br i1 %i.bb, label %_ZNK12aiMatrix3x3tIfE5EqualERKS0_f.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bd = load float, ptr %i.bc, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bf = load float, ptr %i.be, align 4
  %i.bg = fsub float %i.bd, %i.bf
  %i.bh = tail call noundef float @llvm.fabs.f32(float %i.bg)
  %i.bi = fcmp ole float %i.bh, %2
  %i.bj = zext i1 %i.bi to i32
  br label %_ZNK12aiMatrix3x3tIfE5EqualERKS0_f.exit

_ZNK12aiMatrix3x3tIfE5EqualERKS0_f.exit:          ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %i.bk = phi i32 [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ], [ %i.bj, %bb.i ]
  ret i32 %i.bk
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @aiMatrix3Inverse(ptr noundef captures(none) %0) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load float, ptr %i.f, align 4            ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load <2 x float>, ptr %i.h, align 4      ; 3 uses
  %i.k = load <2 x float>, ptr %i.d, align 4      ; 4 uses
  %i.l = load float, ptr %i.b, align 4            ; 2 uses
  %i.m = extractelement <2 x float> %i.k, i64 0   ; 2 uses
  %i.n = fneg float %i.m                          ; 2 uses
  %i.o = load <2 x float>, ptr %0, align 4        ; 6 uses
  %i.p = load float, ptr %i.e, align 4            ; 2 uses
  %i.q = load <2 x float>, ptr %i.a, align 4      ; 6 uses
  %i.r = load float, ptr %i.c, align 4            ; 2 uses
  %i.s = extractelement <2 x float> %i.o, i64 0   ; 2 uses
  %i.t = extractelement <2 x float> %i.q, i64 0   ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %i.o, %i.q
  %i.u = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.v = fmul float %i.s, %i.r
  %i.w = fmul float %i.v, %i.n
  %i.x = tail call float @llvm.fmuladd.f32(float %i.u, float %i.l, float %i.w)
  %i.y = fmul float %i.r, %i.p
  %i.z = tail call float @llvm.fmuladd.f32(float %i.y, float %i.g, float %i.x)
  %i.aa = extractelement <2 x float> %i.j, i64 0  ; 2 uses
  %i.ab = fneg float %i.aa                        ; 2 uses
  %i.ac = fmul float %i.p, %i.ab                  ; 2 uses
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.ac, float %i.l, float %i.z)
  %i.ae = load float, ptr %i.i, align 4           ; 4 uses
  %i.af = fmul float %i.aa, %i.ae
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.af, float %i.m, float %i.ad)
  %i.ah = fneg float %i.t
  %i.ai = fmul float %i.ae, %i.ah                 ; 2 uses
  %i.aj = tail call noundef float @llvm.fmuladd.f32(float %i.ai, float %i.g, float %i.ag) ; 2 uses
  %i.ak = fcmp oeq float %i.aj, 0.000000e+00
  br i1 %i.ak, label %_ZN12aiMatrix3x3tIfE7InverseEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.al = fdiv float 1.000000e+00, %i.aj          ; 3 uses
  %i.am = fneg float %i.al
  %i.an = fneg float %i.g                         ; 2 uses
  %i.ao = shufflevector <2 x float> %i.q, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ap = insertelement <4 x float> %i.ao, float %i.ae, i64 1
  %i.aq = insertelement <4 x float> %i.ap, float %i.ai, i64 2
  %i.ar = shufflevector <4 x float> %i.aq, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.as = insertelement <4 x float> <float poison, float poison, float 1.000000e+00, float poison>, float %i.n, i64 0
  %i.at = insertelement <4 x float> %i.as, float %i.an, i64 3
  %i.au = shufflevector <4 x float> %i.at, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.av = fmul <4 x float> %i.ar, %i.au
  %i.aw = shufflevector <2 x float> %i.j, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 poison>
  %i.ax = shufflevector <2 x float> %i.o, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ay = shufflevector <2 x float> %i.j, <2 x float> %i.o, <4 x i32> <i32 1, i32 poison, i32 3, i32 0>
  %i.az = shufflevector <2 x float> %i.k, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ba = shufflevector <4 x float> %i.ay, <4 x float> %i.az, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.bb = shufflevector <2 x float> %i.o, <2 x float> %i.q, <4 x i32> <i32 poison, i32 1, i32 3, i32 poison>
  %i.bc = shufflevector <4 x float> %i.az, <4 x float> %i.bb, <4 x i32> <i32 1, i32 5, i32 6, i32 1>
  %i.bd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ba, <4 x float> %i.bc, <4 x float> %i.av)
  %i.be = insertelement <4 x float> poison, float %i.al, i64 0
  %i.bf = insertelement <4 x float> %i.be, float %i.am, i64 1
  %i.bg = shufflevector <4 x float> %i.bf, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.bh = fmul <4 x float> %i.bd, %i.bg
  %i.bi = insertelement <4 x float> poison, float %i.ae, i64 0
  %i.bj = shufflevector <2 x float> %i.q, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bk = shufflevector <4 x float> %i.bi, <4 x float> %i.bj, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.bl = shufflevector <4 x float> %i.bk, <4 x float> %i.ax, <4 x i32> <i32 0, i32 0, i32 1, i32 5>
  %i.bm = insertelement <4 x float> poison, float %i.an, i64 0
  %i.bn = insertelement <4 x float> %i.bm, float %i.ab, i64 1
  %i.bo = shufflevector <4 x float> %i.bn, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.bp = fmul <4 x float> %i.bl, %i.bo
  %i.bq = shufflevector <2 x float> %i.o, <2 x float> %i.k, <4 x i32> <i32 0, i32 0, i32 poison, i32 2>
  %i.br = shufflevector <4 x float> %i.bq, <4 x float> %i.aw, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.bs = shufflevector <2 x float> %i.k, <2 x float> %i.q, <4 x i32> <i32 1, i32 3, i32 0, i32 poison>
  %i.bt = shufflevector <4 x float> %i.bs, <4 x float> %i.ax, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.bu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.br, <4 x float> %i.bt, <4 x float> %i.bp)
  %i.bv = fmul <4 x float> %i.bu, %i.bg
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.s, float %i.t, float %i.ac)
  %i.bx = fmul float %i.bw, %i.al
  br label %_ZN12aiMatrix3x3tIfE7InverseEv.exit

_ZN12aiMatrix3x3tIfE7InverseEv.exit:              ; preds = %bb.a, %bb.b
  %storemerge.i = phi float [ %i.bx, %bb.b ], [ +qnan, %bb.a ]
  %i.by = phi <4 x float> [ %i.bh, %bb.b ], [ splat (float +qnan), %bb.a ]
  %i.bz = phi <4 x float> [ %i.bv, %bb.b ], [ splat (float +qnan), %bb.a ]
  store <4 x float> %i.by, ptr %0, align 4
  store <4 x float> %i.bz, ptr %i.a, align 4
  store float %storemerge.i, ptr %i.b, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef float @aiMatrix3Determinant(ptr noundef readonly captures(none) %0) local_unnamed_addr #18 {
bb.a:
  %i.a = load float, ptr %0, align 4              ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load float, ptr %i.b, align 4            ; 2 uses
  %i.d = fmul float %i.a, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load float, ptr %i.e, align 4            ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = load float, ptr %i.g, align 4            ; 2 uses
  %i.i = fmul float %i.a, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.k = load float, ptr %i.j, align 4            ; 2 uses
  %i.l = fneg float %i.k
  %i.m = fmul float %i.i, %i.l
  %i.n = tail call float @llvm.fmuladd.f32(float %i.d, float %i.f, float %i.m)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.p = load float, ptr %i.o, align 4            ; 2 uses
  %i.q = fmul float %i.h, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load float, ptr %i.r, align 4            ; 2 uses
  %i.t = tail call float @llvm.fmuladd.f32(float %i.q, float %i.s, float %i.n)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.v = load float, ptr %i.u, align 4            ; 2 uses
  %i.w = fneg float %i.v
  %i.x = fmul float %i.p, %i.w
  %i.y = tail call float @llvm.fmuladd.f32(float %i.x, float %i.f, float %i.t)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load float, ptr %i.z, align 4           ; 2 uses
  %i.ab = fmul float %i.v, %i.aa
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.k, float %i.y)
  %i.ad = fneg float %i.c
  %i.ae = fmul float %i.aa, %i.ad
  %i.af = tail call noundef float @llvm.fmuladd.f32(float %i.ae, float %i.s, float %i.ac)
  ret float %i.af
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable
define void @aiMatrix3RotationZ(ptr noundef writeonly captures(none) initializes((0, 36)) %0, float noundef %1) local_unnamed_addr #19 {
bb.a:
  %i.a = tail call noundef float @cosf(float noundef %1) #47 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.a, ptr %i.b, align 4
  store float %i.a, ptr %0, align 4
  %i.c = tail call noundef float @sinf(float noundef %1) #47 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.c, ptr %i.d, align 4
  %i.e = fneg float %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.e, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float 0.000000e+00, ptr %i.h, align 4
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.g, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @aiMatrix3FromRotationAroundAxis(ptr noundef writeonly captures(none) initializes((0, 36)) %0, ptr noundef readonly captures(none) %1, float noundef %2) local_unnamed_addr #20 {
bb.a:
  %i.a = tail call noundef float @cosf(float noundef %2) #47 ; 3 uses
  %i.b = tail call noundef float @sinf(float noundef %2) #47 ; 2 uses
  %i.c = fsub float 1.000000e+00, %i.a            ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load <3 x float>, ptr %1, align 4        ; 5 uses
  %i.f = shufflevector <3 x float> %i.e, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.g = load float, ptr %i.d, align 4            ; 3 uses
  %i.h = extractelement <3 x float> %i.e, i64 2   ; 3 uses
  %i.i = fmul float %i.b, %i.h                    ; 2 uses
  %i.j = fneg float %i.i
  %i.k = insertelement <4 x float> poison, float %i.a, i64 0 ; 2 uses
  %i.l = insertelement <4 x float> %i.k, float %i.j, i64 1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = insertelement <2 x float> poison, float %i.b, i64 0
  %i.o = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> zeroinitializer
  %i.p = shufflevector <3 x float> %i.e, <3 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.q = insertelement <2 x float> %i.p, float %i.g, i64 1
  %i.r = fmul <2 x float> %i.o, %i.q              ; 2 uses
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.t = shufflevector <4 x float> %i.l, <4 x float> %i.s, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.u = insertelement <4 x float> %i.t, float %i.i, i64 3
  %i.v = fneg <2 x float> %i.r
  %i.w = insertelement <2 x float> poison, float %i.c, i64 0
  %i.x = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> zeroinitializer
  %i.y = shufflevector <3 x float> %i.e, <3 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.z = insertelement <2 x float> %i.y, float %i.g, i64 0
  %i.aa = fmul <2 x float> %i.x, %i.z             ; 2 uses
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.ac = shufflevector <2 x float> %i.aa, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ad = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ac, <4 x float> %i.f, <4 x float> %i.u)
  store <4 x float> %i.ad, ptr %0, align 4
  %i.ae = shufflevector <3 x float> %i.e, <3 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.af = insertelement <2 x float> %i.ae, float %i.g, i64 0
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.ah = shufflevector <2 x float> %i.v, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ai = shufflevector <4 x float> %i.k, <4 x float> %i.ah, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.aj = shufflevector <4 x float> %i.ai, <4 x float> %i.s, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ak = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ab, <4 x float> %i.ag, <4 x float> %i.aj)
  store <4 x float> %i.ak, ptr %i.m, align 4
  %i.al = fmul float %i.c, %i.h
  %i.am = tail call float @llvm.fmuladd.f32(float %i.al, float %i.h, float %i.a)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.am, ptr %i.an, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @aiMatrix3Translation(ptr noundef writeonly captures(none) initializes((0, 36)) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #14 {
bb.a:
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %0, align 4
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %.sroa.7.0..sroa_idx.i, align 4
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float 1.000000e+00, ptr %.sroa.11.0..sroa_idx.i, align 4
  %i.a = load float, ptr %1, align 4
  store float %i.a, ptr %.sroa.5.0..sroa_idx.i, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load float, ptr %i.b, align 4
  store float %i.c, ptr %.sroa.8.0..sroa_idx.i, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define void @aiMatrix3FromTo(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef nonnull align 4 dereferenceable(36) ptr @_ZN12aiMatrix3x3tIfE12FromToMatrixERK10aiVector3tIfES4_RS0_(ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(36) %0) ; 0 uses
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(36) ptr @_ZN12aiMatrix3x3tIfE12FromToMatrixERK10aiVector3tIfES4_RS0_(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(36) %2) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load <2 x float>, ptr %0, align 4        ; 6 uses
  %i.d = extractelement <2 x float> %i.c, i64 1   ; 3 uses
  %i.e = extractelement <2 x float> %i.c, i64 0   ; 3 uses
  %i.f = load float, ptr %i.b, align 4            ; 7 uses
  %i.g = load <2 x float>, ptr %i.a, align 4      ; 3 uses
  %i.h = load float, ptr %1, align 4              ; 4 uses
  %i.i = extractelement <2 x float> %i.g, i64 0   ; 3 uses
  %i.j = fmul float %i.d, %i.i
  %i.k = tail call float @llvm.fmuladd.f32(float %i.e, float %i.h, float %i.j)
  %i.l = extractelement <2 x float> %i.g, i64 1   ; 3 uses
  %i.m = tail call noundef float @llvm.fmuladd.f32(float %i.f, float %i.l, float %i.k) ; 5 uses
  %i.n = tail call float @llvm.fabs.f32(float %i.m)
  %i.o = fcmp ogt float %i.n, f0x3F7FFF58
  br i1 %i.o, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.p = fcmp ogt <2 x float> %i.c, zeroinitializer
  %i.q = fneg <2 x float> %i.c
  %i.r = select <2 x i1> %i.p, <2 x float> %i.c, <2 x float> %i.q ; 2 uses
  %i.s = fcmp ogt float %i.f, 0.000000e+00
  %i.t = fneg float %i.f
  %i.u = select i1 %i.s, float %i.f, float %i.t   ; 2 uses
  %i.v = extractelement <2 x float> %i.r, i64 0   ; 2 uses
  %i.w = extractelement <2 x float> %i.r, i64 1   ; 2 uses
  %i.x = fcmp olt float %i.v, %i.w
  br i1 %i.x, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.y = fcmp olt float %i.v, %i.u
  br i1 %i.y, label %_ZN12aiMatrix3x3tIfEixEj.exit.2, label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  br label %_ZN12aiMatrix3x3tIfEixEj.exit.2

bb.e:                                             ; preds = %bb.b
  %i.z = fcmp olt float %i.w, %i.u
  br i1 %i.z, label %_ZN12aiMatrix3x3tIfEixEj.exit.2, label %bb.d

_ZN12aiMatrix3x3tIfEixEj.exit.2:                  ; preds = %bb.d, %bb.c, %bb.e
  %.sroa.0.0 = phi float [ 0.000000e+00, %bb.e ], [ 0.000000e+00, %bb.d ], [ 1.000000e+00, %bb.c ]
  %i.aa = phi <2 x float> [ <float 1.000000e+00, float 0.000000e+00>, %bb.e ], [ <float 0.000000e+00, float 1.000000e+00>, %bb.d ], [ zeroinitializer, %bb.c ]
  %i.ab = phi <4 x float> [ <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, %bb.e ], [ <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, %bb.d ], [ <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, %bb.c ]
  %i.ac = insertelement <4 x float> poison, float %i.f, i64 0
  %i.ad = shufflevector <2 x float> %i.c, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ae = shufflevector <4 x float> %i.ac, <4 x float> %i.ad, <4 x i32> <i32 0, i32 4, i32 5, i32 0>
  %i.af = fsub <4 x float> %i.ab, %i.ae           ; 11 uses
  %i.ag = fsub float %.sroa.0.0, %i.h             ; 9 uses
  %i.ah = fsub <2 x float> %i.aa, %i.g            ; 5 uses
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1> ; 5 uses
  %i.aj = extractelement <4 x float> %i.af, i64 1 ; 4 uses
  %i.ak = extractelement <4 x float> %i.af, i64 0
  %i.al = extractelement <2 x float> %i.ah, i64 1
  %i.am = shufflevector <4 x float> %i.af, <4 x float> %i.ai, <2 x i32> <i32 2, i32 4> ; 2 uses
  %i.an = fmul <2 x float> %i.am, %i.am
  %i.ao = shufflevector <4 x float> %i.af, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ap = insertelement <2 x float> %i.ao, float %i.ag, i64 1 ; 2 uses
  %i.aq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ap, <2 x float> %i.ap, <2 x float> %i.an)
  %i.ar = shufflevector <4 x float> %i.af, <4 x float> %i.ai, <2 x i32> <i32 0, i32 5> ; 2 uses
  %i.as = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ar, <2 x float> %i.ar, <2 x float> %i.aq)
  %i.at = fdiv <2 x float> splat (float 2.000000e+00), %i.as ; 3 uses
  %i.au = extractelement <2 x float> %i.at, i64 0 ; 2 uses
  %i.av = extractelement <2 x float> %i.at, i64 1 ; 2 uses
  %i.aw = fmul float %i.au, %i.av
  %shift = shufflevector <4 x float> %i.af, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fmul <4 x float> %shift, %i.ai
  %i.ax = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.ay = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.ag, float %i.ax)
  %i.az = tail call noundef float @llvm.fmuladd.f32(float %i.ak, float %i.al, float %i.ay)
  %i.ba = fmul float %i.az, %i.aw                 ; 2 uses
  %i.bb = fneg float %i.au                        ; 2 uses
  %i.bc = fmul float %i.aj, %i.bb
  %i.bd = fmul float %i.av, %i.ag
  %i.be = fneg float %i.ag
  %i.bf = fmul float %i.bd, %i.be
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.bc, float %i.aj, float %i.bf)
  %i.bh = fmul float %i.ba, %i.ag
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.aj, float %i.bg)
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bk = fadd float %i.bi, 1.000000e+00
  store float %i.bk, ptr %2, align 4
  %i.bl = shufflevector <4 x float> %i.af, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 1, i32 2>
  %i.bm = insertelement <4 x float> poison, float %i.bb, i64 0
  %i.bn = shufflevector <4 x float> %i.bm, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bo = fmul <4 x float> %i.bl, %i.bn
  %i.bp = shufflevector <2 x float> %i.at, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.bq = shufflevector <2 x float> %i.ah, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0> ; 2 uses
  %i.br = insertelement <4 x float> poison, float %i.ag, i64 0
  %i.bs = shufflevector <4 x float> %i.br, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 poison>
  %i.bt = shufflevector <4 x float> %i.bs, <4 x float> %i.bq, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.bu = fmul <4 x float> %i.bp, %i.bt
  %i.bv = insertelement <4 x float> %i.bq, float %i.ag, i64 1
  %i.bw = fneg <4 x float> %i.bv
  %i.bx = fmul <4 x float> %i.bu, %i.bw
  %i.by = shufflevector <4 x float> %i.af, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 2> ; 2 uses
  %i.bz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bo, <4 x float> %i.by, <4 x float> %i.bx)
  %i.ca = insertelement <4 x float> poison, float %i.ba, i64 0
  %i.cb = shufflevector <4 x float> %i.ca, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cc = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cd = insertelement <2 x float> %i.cc, float %i.ag, i64 0
  %i.ce = shufflevector <2 x float> %i.cd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cf = fmul <4 x float> %i.cb, %i.ce
  %i.cg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cf, <4 x float> %i.by, <4 x float> %i.bz)
  %i.ch = shufflevector <4 x float> %i.cg, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %i.ch, ptr %i.bj, align 4
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ck = load float, ptr %i.cj, align 4
  %i.cl = fadd float %i.ck, 1.000000e+00
  store float %i.cl, ptr %i.cj, align 4
  %i.cm = shufflevector <4 x float> %i.af, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 0, i32 0>
  %i.cn = fmul <4 x float> %i.cm, %i.bn
  %i.co = fmul <4 x float> %i.bp, %i.ai
  %i.cp = shufflevector <2 x float> %i.ah, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 1>
  %i.cq = insertelement <4 x float> %i.cp, float %i.ag, i64 1
  %i.cr = fneg <4 x float> %i.cq
  %i.cs = fmul <4 x float> %i.co, %i.cr
  %i.ct = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cn, <4 x float> %i.af, <4 x float> %i.cs)
  %i.cu = fmul <4 x float> %i.cb, %i.ai
  %i.cv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cu, <4 x float> %i.af, <4 x float> %i.ct)
  %i.cw = fadd <4 x float> %i.cv, <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float 1.000000e+00>
  store <4 x float> %i.cw, ptr %i.ci, align 4
  br label %.loopexit
end_hunk_1
begin_hunk_2_@_ZNK12aiMatrix4x4tIfE9DecomposeER10aiVector3tIfES3_S3_:bb.a
  %i.fm = tail call noundef float @atan2f(float noundef %i.fl, float noundef %.sroa.22.0) #47
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink = phi float [ %i.ff, %bb.d ], [ %i.fm, %bb.e ]
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %.sink, ptr %i.fn, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define void @aiMatrix4DecomposeIntoScalingAxisAnglePosition(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef writeonly captures(none) initializes((0, 12)) %2, ptr noundef writeonly captures(none) initializes((0, 4)) %3, ptr noundef nonnull %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca %class.aiQuaterniont, align 16      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #47
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 12
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %5, align 16
  call void @_ZNK12aiMatrix4x4tIfE9DecomposeER10aiVector3tIfER13aiQuaterniontIfES3_(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.c = load <2 x float>, ptr %i.a, align 4      ; 5 uses
  %foldExtExtBinop = fmul <2 x float> %i.c, %i.c
  %i.d = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.e = extractelement <2 x float> %i.c, i64 0   ; 2 uses
  %i.f = call float @llvm.fmuladd.f32(float %i.e, float %i.e, float %i.d)
  %i.g = load float, ptr %i.b, align 4            ; 4 uses
  %i.h = call float @llvm.fmuladd.f32(float %i.g, float %i.g, float %i.f)
  %i.i = load float, ptr %5, align 16             ; 4 uses
  %i.j = call float @llvm.fmuladd.f32(float %i.i, float %i.i, float %i.h) ; 2 uses
  %i.k = fcmp une float %i.j, 0.000000e+00
  br i1 %i.k, label %bb.b, label %_ZNK12aiMatrix4x4tIfE9DecomposeER10aiVector3tIfES3_RfS3_.exit

bb.b:                                             ; preds = %bb.a
  %sqrt.i.i = call float @llvm.sqrt.f32(float %i.j)
  %i.l = fdiv float 1.000000e+00, %sqrt.i.i       ; 3 uses
  %i.m = insertelement <2 x float> poison, float %i.l, i64 0
  %i.n = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> zeroinitializer
  %i.o = fmul <2 x float> %i.c, %i.n
  %i.p = fmul float %i.g, %i.l
  %i.q = fmul float %i.i, %i.l
  br label %_ZNK12aiMatrix4x4tIfE9DecomposeER10aiVector3tIfES3_RfS3_.exit

_ZNK12aiMatrix4x4tIfE9DecomposeER10aiVector3tIfES3_RfS3_.exit: ; preds = %bb.a, %bb.b
  %i.r = phi float [ %i.g, %bb.a ], [ %i.p, %bb.b ]
  %i.s = phi float [ %i.i, %bb.a ], [ %i.q, %bb.b ] ; 3 uses
  %i.t = phi <2 x float> [ %i.c, %bb.a ], [ %i.o, %bb.b ]
  %i.u = fneg float %i.s
  %i.v = call float @llvm.fmuladd.f32(float %i.u, float %i.s, float 1.000000e+00)
  %i.w = call noundef float @sqrtf(float noundef %i.v) #47 ; 2 uses
  %i.x = call noundef float @acosf(float noundef %i.s) #47
  %i.y = fmul float %i.x, 2.000000e+00
  store float %i.y, ptr %3, align 4
  %i.z = call noundef float @llvm.fabs.f32(float %i.w)
  %i.aa = fcmp olt float %i.z, f0x3C23D70A
  %.0.i = select i1 %i.aa, float 1.000000e+00, float %i.w ; 2 uses
  %i.ab = insertelement <2 x float> poison, float %.0.i, i64 0
  %i.ac = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ad = fdiv <2 x float> %i.t, %i.ac
  store <2 x float> %i.ad, ptr %2, align 4
  %i.ae = fdiv float %i.r, %.0.i
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %i.ae, ptr %i.af, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47
  ret void
}

; Function Attrs: mustprogress uwtable
define void @aiMatrix4DecomposeNoScaling(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2) local_unnamed_addr #2 {
bb.a:
  tail call void @_ZNK12aiMatrix4x4tIfE18DecomposeNoScalingER13aiQuaterniontIfER10aiVector3tIfE(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(12) %2)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZNK12aiMatrix4x4tIfE18DecomposeNoScalingER13aiQuaterniontIfER10aiVector3tIfE(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(12) %2) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load float, ptr %i.a, align 4
  store float %i.b, ptr %2, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.e = load float, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %i.e, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.i = load float, ptr %i.h, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %i.i, ptr %i.j, align 4
  %i.k = load float, ptr %0, align 4              ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load float, ptr %i.c, align 4            ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.p = load float, ptr %i.o, align 4            ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load float, ptr %i.q, align 4            ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.t = load float, ptr %i.m, align 4            ; 4 uses
  %i.u = load float, ptr %i.l, align 4            ; 4 uses
  %i.v = load float, ptr %i.s, align 4            ; 4 uses
  %i.w = load float, ptr %i.g, align 4            ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.y = load float, ptr %i.x, align 4            ; 6 uses
  %i.z = fadd float %i.k, %i.p
  %i.aa = fadd float %i.z, %i.y                   ; 2 uses
  %i.ab = fcmp ogt float %i.aa, 0.000000e+00
  br i1 %i.ab, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ac = fadd float %i.aa, 1.000000e+00
  %i.ad = tail call noundef float @sqrtf(float noundef %i.ac) #47
  %i.ae = fsub float %i.n, %i.u
  %.scalar = fmul float %i.ad, 2.000000e+00
  %i.af = insertelement <2 x float> <float 2.500000e-01, float poison>, float %.scalar, i64 1 ; 2 uses
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1> ; 2 uses
  %i.ah = fsub float %i.t, %i.w
  %i.ai = fsub float %i.v, %i.r
  %i.aj = shufflevector <2 x float> %i.af, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ak = insertelement <4 x float> %i.aj, float %i.ai, i64 1
  %i.al = insertelement <4 x float> %i.ak, float %i.ah, i64 2
  %i.am = insertelement <4 x float> %i.al, float %i.ae, i64 3 ; 2 uses
  %i.an = fmul <4 x float> %i.am, %i.ag
  %i.ao = fdiv <4 x float> %i.am, %i.ag
  %i.ap = shufflevector <4 x float> %i.an, <4 x float> %i.ao, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.c:                                             ; preds = %bb.a
  %i.aq = fcmp ogt float %i.k, %i.p
  %i.ar = fcmp ogt float %i.k, %i.y
  %or.cond.i = and i1 %i.aq, %i.ar
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.as = fadd float %i.k, 1.000000e+00
  %i.at = fsub float %i.as, %i.p
  %i.au = fsub float %i.at, %i.y
  %i.av = tail call noundef float @sqrtf(float noundef %i.au) #47
  %.scalar34 = fmul float %i.av, 2.000000e+00
  %i.aw = insertelement <2 x float> <float poison, float 2.500000e-01>, float %.scalar34, i64 0
  %i.ax = shufflevector <2 x float> %i.aw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0> ; 3 uses
  %i.ay = fadd float %i.u, %i.n
  %i.az = fadd float %i.t, %i.w
  %i.ba = fsub float %i.v, %i.r
  %i.bb = insertelement <4 x float> poison, float %i.ba, i64 0
  %i.bc = shufflevector <4 x float> %i.bb, <4 x float> %i.ax, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.bd = insertelement <4 x float> %i.bc, float %i.ay, i64 2
  %i.be = insertelement <4 x float> %i.bd, float %i.az, i64 3 ; 2 uses
  %i.bf = fdiv <4 x float> %i.be, %i.ax
  %i.bg = fmul <4 x float> %i.be, %i.ax
  %i.bh = shufflevector <4 x float> %i.bf, <4 x float> %i.bg, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.e:                                             ; preds = %bb.c
  %i.bi = fcmp ogt float %i.p, %i.y
  br i1 %i.bi, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bj = fadd float %i.p, 1.000000e+00
  %i.bk = fsub float %i.bj, %i.k
  %i.bl = fsub float %i.bk, %i.y
  %i.bm = tail call noundef float @sqrtf(float noundef %i.bl) #47
  %i.bn = fmul float %i.bm, 2.000000e+00
  %i.bo = fadd float %i.u, %i.n
  %i.bp = fadd float %i.r, %i.v
  %i.bq = fsub float %i.t, %i.w
  %i.br = insertelement <4 x float> <float poison, float poison, float 2.500000e-01, float poison>, float %i.bq, i64 0
  %i.bs = insertelement <4 x float> %i.br, float %i.bo, i64 1
  %i.bt = insertelement <4 x float> %i.bs, float %i.bp, i64 3 ; 2 uses
  %i.bu = insertelement <4 x float> poison, float %i.bn, i64 0
  %i.bv = shufflevector <4 x float> %i.bu, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bw = fdiv <4 x float> %i.bt, %i.bv
  %i.bx = fmul <4 x float> %i.bt, %i.bv
  %i.by = shufflevector <4 x float> %i.bw, <4 x float> %i.bx, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.g:                                             ; preds = %bb.e
  %i.bz = fadd float %i.y, 1.000000e+00
  %i.ca = fsub float %i.bz, %i.k
  %i.cb = fsub float %i.ca, %i.p
  %i.cc = tail call noundef float @sqrtf(float noundef %i.cb) #47
  %i.cd = fmul float %i.cc, 2.000000e+00
  %i.ce = fadd float %i.t, %i.w
  %i.cf = fadd float %i.r, %i.v
  %i.cg = fsub float %i.n, %i.u
  %i.ch = insertelement <4 x float> <float poison, float poison, float poison, float 2.500000e-01>, float %i.cg, i64 0
  %i.ci = insertelement <4 x float> %i.ch, float %i.ce, i64 1
  %i.cj = insertelement <4 x float> %i.ci, float %i.cf, i64 2 ; 2 uses
  %i.ck = insertelement <4 x float> poison, float %i.cd, i64 0
  %i.cl = shufflevector <4 x float> %i.ck, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cm = fdiv <4 x float> %i.cj, %i.cl
  %i.cn = fmul <4 x float> %i.cj, %i.cl
  %i.co = shufflevector <4 x float> %i.cm, <4 x float> %i.cn, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit: ; preds = %bb.b, %bb.d, %bb.f, %bb.g
  %i.cp = phi <4 x float> [ %i.ap, %bb.b ], [ %i.bh, %bb.d ], [ %i.by, %bb.f ], [ %i.co, %bb.g ]
  store <4 x float> %i.cp, ptr %1, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable
define void @aiMatrix4FromEulerAngles(ptr noundef writeonly captures(none) initializes((0, 12), (16, 28), (32, 44)) %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #19 {
bb.a:
  %i.a = tail call noundef float @cosf(float noundef %1) #47 ; 5 uses
  %i.b = tail call noundef float @sinf(float noundef %1) #47 ; 5 uses
  %i.c = tail call noundef float @cosf(float noundef %2) #47 ; 4 uses
  %i.d = tail call noundef float @sinf(float noundef %2) #47 ; 3 uses
  %i.e = tail call noundef float @cosf(float noundef %3) #47 ; 4 uses
  %i.f = tail call noundef float @sinf(float noundef %3) #47 ; 4 uses
  %i.g = fmul float %i.c, %i.e
  store float %i.g, ptr %0, align 4
  %i.h = fmul float %i.d, %i.e                    ; 2 uses
  %i.i = fneg float %i.a
  %i.j = fmul float %i.f, %i.i
  %i.k = tail call float @llvm.fmuladd.f32(float %i.h, float %i.b, float %i.j)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.k, ptr %i.l, align 4
  %i.m = fmul float %i.a, %i.h
  %i.n = tail call float @llvm.fmuladd.f32(float %i.f, float %i.b, float %i.m)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.n, ptr %i.o, align 4
  %i.p = fmul float %i.c, %i.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.p, ptr %i.q, align 4
  %i.r = fmul float %i.d, %i.f                    ; 2 uses
  %i.s = fmul float %i.b, %i.r
  %i.t = tail call float @llvm.fmuladd.f32(float %i.e, float %i.a, float %i.s)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.t, ptr %i.u, align 4
  %i.v = fneg float %i.b
  %i.w = fmul float %i.e, %i.v
  %i.x = tail call float @llvm.fmuladd.f32(float %i.r, float %i.a, float %i.w)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.x, ptr %i.y, align 4
  %i.z = fneg float %i.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.z, ptr %i.aa, align 4
  %i.ab = fmul float %i.b, %i.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.ab, ptr %i.ac, align 4
  %i.ad = fmul float %i.a, %i.c
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.ad, ptr %i.ae, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable
define void @aiMatrix4RotationX(ptr noundef writeonly captures(none) initializes((0, 64)) %0, float noundef %1) local_unnamed_addr #19 {
bb.a:
  store float 1.000000e+00, ptr %0, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i64 0, ptr %i.a, align 4
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float 1.000000e+00, ptr %.sroa.9.0..sroa_idx.i, align 4
  %i.b = tail call noundef float @cosf(float noundef %1) #47 ; 2 uses
  store float %i.b, ptr %.sroa.7.0..sroa_idx.i, align 4
  store float %i.b, ptr %.sroa.5.0..sroa_idx.i, align 4
  %i.c = tail call noundef float @sinf(float noundef %1) #47 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.c, ptr %i.d, align 4
  %i.e = fneg float %i.c
  store float %i.e, ptr %.sroa.6.0..sroa_idx.i, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable
define void @aiMatrix4RotationY(ptr noundef writeonly captures(none) initializes((0, 64)) %0, float noundef %1) local_unnamed_addr #19 {
bb.a:
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float 1.000000e+00, ptr %.sroa.5.0..sroa_idx.i, align 4
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float 1.000000e+00, ptr %.sroa.9.0..sroa_idx.i, align 4
  %i.a = tail call noundef float @cosf(float noundef %1) #47 ; 2 uses
  store float %i.a, ptr %.sroa.7.0..sroa_idx.i, align 4
  store float %i.a, ptr %0, align 4
  %i.b = tail call noundef float @sinf(float noundef %1) #47 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.b, ptr %i.c, align 4
  %i.d = fneg float %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.d, ptr %i.e, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable
define void @aiMatrix4RotationZ(ptr noundef writeonly captures(none) initializes((0, 64)) %0, float noundef %1) local_unnamed_addr #19 {
bb.a:
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.a, align 4
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float 1.000000e+00, ptr %.sroa.7.0..sroa_idx.i, align 4
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float 1.000000e+00, ptr %.sroa.9.0..sroa_idx.i, align 4
  %i.b = tail call noundef float @cosf(float noundef %1) #47 ; 2 uses
  store float %i.b, ptr %.sroa.5.0..sroa_idx.i, align 4
  store float %i.b, ptr %0, align 4
  %i.c = tail call noundef float @sinf(float noundef %1) #47 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.c, ptr %i.d, align 4
  %i.e = fneg float %i.c
  store float %i.e, ptr %.sroa.4.0..sroa_idx.i, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @aiMatrix4FromRotationAroundAxis(ptr noundef writeonly captures(none) initializes((0, 64)) %0, ptr noundef readonly captures(none) %1, float noundef %2) local_unnamed_addr #20 {
bb.a:
  %i.a = tail call noundef float @cosf(float noundef %2) #47 ; 4 uses
  %i.b = tail call noundef float @sinf(float noundef %2) #47 ; 3 uses
  %i.c = fsub float 1.000000e+00, %i.a            ; 3 uses
  %i.d = load float, ptr %1, align 4              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load float, ptr %i.e, align 4            ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load float, ptr %i.g, align 4            ; 7 uses
  %i.i = fmul float %i.c, %i.d                    ; 5 uses
  %i.j = tail call float @llvm.fmuladd.f32(float %i.i, float %i.d, float %i.a)
  store float %i.j, ptr %0, align 4
  %i.k = fmul float %i.b, %i.h                    ; 2 uses
  %i.l = fneg float %i.k
  %i.m = tail call float @llvm.fmuladd.f32(float %i.i, float %i.f, float %i.l)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.m, ptr %i.n, align 4
  %i.o = fmul float %i.b, %i.f                    ; 2 uses
  %i.p = tail call float @llvm.fmuladd.f32(float %i.i, float %i.h, float %i.o)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.p, ptr %i.q, align 4
  %i.r = tail call float @llvm.fmuladd.f32(float %i.i, float %i.f, float %i.k)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.r, ptr %i.s, align 4
  %i.t = fmul float %i.c, %i.f                    ; 3 uses
  %i.u = tail call float @llvm.fmuladd.f32(float %i.t, float %i.f, float %i.a)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.u, ptr %i.v, align 4
  %i.w = fmul float %i.b, %i.d                    ; 2 uses
  %i.x = fneg float %i.w
  %i.y = tail call float @llvm.fmuladd.f32(float %i.t, float %i.h, float %i.x)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.y, ptr %i.z, align 4
  %i.aa = fneg float %i.o
  %i.ab = tail call float @llvm.fmuladd.f32(float %i.i, float %i.h, float %i.aa)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.ab, ptr %i.ac, align 4
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.t, float %i.h, float %i.w)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.ad, ptr %i.ae, align 4
  %i.af = fmul float %i.c, %i.h
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.af, float %i.h, float %i.a)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.ag, ptr %i.ah, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float 0.000000e+00, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float 0.000000e+00, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.al, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @aiMatrix4Translation(ptr noundef writeonly captures(none) initializes((0, 64)) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #14 {
bb.a:
  store float 1.000000e+00, ptr %0, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float 1.000000e+00, ptr %.sroa.5.0..sroa_idx.i, align 4
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float 1.000000e+00, ptr %.sroa.7.0..sroa_idx.i, align 4
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float 1.000000e+00, ptr %.sroa.9.0..sroa_idx.i, align 4
  %i.a = load float, ptr %1, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.a, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load float, ptr %i.c, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %i.d, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load float, ptr %i.f, align 4
  store float %i.g, ptr %.sroa.8.0..sroa_idx.i, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @aiMatrix4Scaling(ptr noundef writeonly captures(none) initializes((0, 64)) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #14 {
bb.a:
  store float 1.000000e+00, ptr %0, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  store float 1.000000e+00, ptr %.sroa.5.0..sroa_idx.i, align 4
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store float 1.000000e+00, ptr %.sroa.7.0..sroa_idx.i, align 4
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float 1.000000e+00, ptr %.sroa.9.0..sroa_idx.i, align 4
  %i.a = load float, ptr %1, align 4
  store float %i.a, ptr %0, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load float, ptr %i.b, align 4
  store float %i.c, ptr %.sroa.5.0..sroa_idx.i, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load float, ptr %i.d, align 4
  store float %i.e, ptr %.sroa.7.0..sroa_idx.i, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define void @aiMatrix4FromTo(ptr noundef writeonly captures(none) initializes((0, 64)) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) local_unnamed_addr #2 {
bb.a:
  %3 = alloca %class.aiMatrix3x3t, align 16       ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #47
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 12
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %3, align 16
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.c, align 16
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store float 1.000000e+00, ptr %i.f, align 16
  %i.g = call noundef nonnull align 4 dereferenceable(36) ptr @_ZN12aiMatrix3x3tIfE12FromToMatrixERK10aiVector3tIfES4_RS0_(ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(36) %3) ; 0 uses
  %i.h = load float, ptr %i.a, align 8
  %i.i = load float, ptr %i.d, align 4
  %i.j = load float, ptr %i.f, align 16
  %i.k = load <2 x float>, ptr %3, align 16
  store <2 x float> %i.k, ptr %0, align 4
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.h, ptr %.sroa.5.0..sroa_idx.i, align 4
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx.i, align 4
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load <2 x float>, ptr %i.b, align 4
  store <2 x float> %i.l, ptr %.sroa.7.0..sroa_idx.i, align 4
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.i, ptr %.sroa.9.0..sroa_idx.i, align 4
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float 0.000000e+00, ptr %.sroa.10.0..sroa_idx.i, align 4
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load <2 x float>, ptr %i.e, align 8
  store <2 x float> %i.m, ptr %.sroa.11.0..sroa_idx.i, align 4
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.j, ptr %.sroa.13.0..sroa_idx.i, align 4
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.14.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float 1.000000e+00, ptr %.sroa.15.0..sroa_idx.i, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable
define void @aiQuaternionFromEulerAngles(ptr noundef writeonly captures(none) initializes((0, 16)) %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #19 {
bb.a:
  %i.a = fmul float %1, 5.000000e-01              ; 2 uses
  %i.b = tail call noundef float @sinf(float noundef %i.a) #47 ; 3 uses
  %i.c = tail call noundef float @cosf(float noundef %i.a) #47 ; 2 uses
  %i.d = fmul float %2, 5.000000e-01              ; 2 uses
  %i.e = tail call noundef float @sinf(float noundef %i.d) #47 ; 3 uses
  %i.f = tail call noundef float @cosf(float noundef %i.d) #47 ; 2 uses
  %i.g = fmul float %3, 5.000000e-01              ; 2 uses
  %i.h = tail call noundef float @sinf(float noundef %i.g) #47 ; 3 uses
  %i.i = tail call noundef float @cosf(float noundef %i.g) #47 ; 2 uses
  %i.j = fmul float %i.b, %i.e                    ; 2 uses
  %i.k = fneg float %i.j
  %i.l = fmul float %i.c, %i.h
  %i.m = fmul float %i.b, %i.h
  %i.n = fneg float %i.f
  %i.o = insertelement <4 x float> poison, float %i.c, i64 0
  %i.p = insertelement <4 x float> %i.o, float %i.b, i64 1
  %i.q = shufflevector <4 x float> %i.p, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.r = insertelement <4 x float> poison, float %i.f, i64 0
  %i.s = insertelement <4 x float> %i.r, float %i.i, i64 1 ; 2 uses
  %i.t = shufflevector <4 x float> %i.s, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.u = fmul <4 x float> %i.q, %i.t
  %i.v = insertelement <4 x float> poison, float %i.j, i64 0
  %i.w = insertelement <4 x float> %i.v, float %i.i, i64 1
  %i.x = insertelement <4 x float> %i.w, float %i.e, i64 2
  %i.y = insertelement <4 x float> %i.x, float %i.m, i64 3
  %i.z = insertelement <4 x float> poison, float %i.h, i64 0 ; 2 uses
  %i.aa = insertelement <4 x float> %i.z, float %i.k, i64 1
  %i.ab = insertelement <4 x float> %i.aa, float %i.l, i64 2
  %i.ac = insertelement <4 x float> %i.ab, float %i.n, i64 3
  %i.ad = fmul <4 x float> %i.y, %i.ac
  %i.ae = shufflevector <4 x float> %i.s, <4 x float> %i.z, <4 x i32> <i32 1, i32 4, i32 0, i32 poison>
  %i.af = insertelement <4 x float> %i.ae, float %i.e, i64 3
  %i.ag = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.u, <4 x float> %i.ad)
  store <4 x float> %i.ag, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @aiQuaternionFromAxisAngle(ptr noundef writeonly captures(none) initializes((0, 16)) %0, ptr noundef readonly captures(none) %1, float noundef %2) local_unnamed_addr #22 {
bb.a:
  %.sroa.01.0.copyload = load <2 x float>, ptr %1, align 4 ; 5 uses
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.22.0.copyload = load float, ptr %.sroa.22.0..sroa_idx, align 4 ; 4 uses
  %.sroa.0.0.vec.extract8.i = extractelement <2 x float> %.sroa.01.0.copyload, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.01.0.copyload, %.sroa.01.0.copyload
  %i.a = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.b = tail call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract8.i, float %.sroa.0.0.vec.extract8.i, float %i.a)
  %i.c = tail call noundef float @llvm.fmuladd.f32(float %.sroa.22.0.copyload, float %.sroa.22.0.copyload, float %i.b) ; 2 uses
  %i.d = fcmp oeq float %i.c, 0.000000e+00
  br i1 %i.d, label %_ZN13aiQuaterniontIfEC2E10aiVector3tIfEf.exit, label %_ZN10aiVector3tIfEdVEf.exit.i.i

_ZN10aiVector3tIfEdVEf.exit.i.i:                  ; preds = %bb.a
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.c)
  %i.e = fdiv float 1.000000e+00, %sqrt.i.i.i     ; 2 uses
  %i.f = insertelement <2 x float> poison, float %i.e, i64 0
  %i.g = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> zeroinitializer
  %i.h = fmul <2 x float> %.sroa.01.0.copyload, %i.g
  %i.i = fmul float %.sroa.22.0.copyload, %i.e
  br label %_ZN13aiQuaterniontIfEC2E10aiVector3tIfEf.exit

_ZN13aiQuaterniontIfEC2E10aiVector3tIfEf.exit:    ; preds = %bb.a, %_ZN10aiVector3tIfEdVEf.exit.i.i
  %.sroa.7.0.i = phi float [ %.sroa.22.0.copyload, %bb.a ], [ %i.i, %_ZN10aiVector3tIfEdVEf.exit.i.i ]
  %i.j = phi <2 x float> [ %.sroa.01.0.copyload, %bb.a ], [ %i.h, %_ZN10aiVector3tIfEdVEf.exit.i.i ]
  %i.k = fmul float %2, 5.000000e-01              ; 2 uses
  %i.l = tail call noundef float @sinf(float noundef %i.k) #47
  %i.m = tail call noundef float @cosf(float noundef %i.k) #47
  %i.n = insertelement <4 x float> poison, float %i.m, i64 0
  %i.o = shufflevector <2 x float> %i.j, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.p = shufflevector <4 x float> %i.n, <4 x float> %i.o, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.q = insertelement <4 x float> %i.p, float %.sroa.7.0.i, i64 3
  %i.r = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.l, i64 1
  %i.s = shufflevector <4 x float> %i.r, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.t = fmul <4 x float> %i.q, %i.s
  store <4 x float> %i.t, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @aiQuaternionFromNormalizedQuaternion(ptr noundef writeonly captures(none) initializes((0, 16)) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #22 {
bb.a:
  %.sroa.01.0.copyload = load <2 x float>, ptr %1, align 4 ; 3 uses
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.22.0.copyload = load float, ptr %.sroa.22.0..sroa_idx, align 4 ; 3 uses
  %.sroa.03.0.vec.extract.i = extractelement <2 x float> %.sroa.01.0.copyload, i64 0 ; 2 uses
  %.sroa.03.4.vec.extract.i = extractelement <2 x float> %.sroa.01.0.copyload, i64 1 ; 2 uses
  %i.a = fneg float %.sroa.03.0.vec.extract.i
  %i.b = tail call float @llvm.fmuladd.f32(float %i.a, float %.sroa.03.0.vec.extract.i, float 1.000000e+00)
  %i.c = fneg float %.sroa.03.4.vec.extract.i
  %i.d = tail call float @llvm.fmuladd.f32(float %i.c, float %.sroa.03.4.vec.extract.i, float %i.b)
  %i.e = fneg float %.sroa.22.0.copyload
  %i.f = tail call float @llvm.fmuladd.f32(float %i.e, float %.sroa.22.0.copyload, float %i.d) ; 2 uses
  %i.g = fcmp olt float %i.f, 0.000000e+00
  br i1 %i.g, label %_ZN13aiQuaterniontIfEC2E10aiVector3tIfE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef float @sqrtf(float noundef %i.f) #47
  br label %_ZN13aiQuaterniontIfEC2E10aiVector3tIfE.exit

_ZN13aiQuaterniontIfEC2E10aiVector3tIfE.exit:     ; preds = %bb.a, %bb.b
  %storemerge.i = phi float [ %i.h, %bb.b ], [ 0.000000e+00, %bb.a ]
  store float %storemerge.i, ptr %0, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store <2 x float> %.sroa.01.0.copyload, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %.sroa.22.0.copyload, ptr %.sroa.6.0..sroa_idx, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @aiQuaternionAreEqual(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load float, ptr %i.a, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load float, ptr %i.c, align 4
  %i.e = fcmp oeq float %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZNK13aiQuaterniontIfEeqERKS0_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load float, ptr %i.f, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load float, ptr %i.h, align 4
  %i.j = fcmp oeq float %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_ZNK13aiQuaterniontIfEeqERKS0_.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.l = load float, ptr %i.k, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.n = load float, ptr %i.m, align 4
  %i.o = fcmp oeq float %i.l, %i.n
  br i1 %i.o, label %bb.d, label %_ZNK13aiQuaterniontIfEeqERKS0_.exit

bb.d:                                             ; preds = %bb.c
  %i.p = load float, ptr %0, align 4
  %i.q = load float, ptr %1, align 4
  %i.r = fcmp oeq float %i.p, %i.q
  %i.s = zext i1 %i.r to i32
  br label %_ZNK13aiQuaterniontIfEeqERKS0_.exit

_ZNK13aiQuaterniontIfEeqERKS0_.exit:              ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.t = phi i32 [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ], [ %i.s, %bb.d ]
  ret i32 %i.t
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @aiQuaternionAreEqualEpsilon(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, float noundef %2) local_unnamed_addr #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load float, ptr %i.a, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load float, ptr %i.c, align 4
  %i.e = fsub float %i.b, %i.d
  %i.f = tail call noundef float @llvm.fabs.f32(float %i.e)
  %i.g = fcmp ugt float %i.f, %2
  br i1 %i.g, label %_ZNK13aiQuaterniontIfE5EqualERKS0_f.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load float, ptr %i.h, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load float, ptr %i.j, align 4
  %i.l = fsub float %i.i, %i.k
  %i.m = tail call noundef float @llvm.fabs.f32(float %i.l)
  %i.n = fcmp ugt float %i.m, %2
  br i1 %i.n, label %_ZNK13aiQuaterniontIfE5EqualERKS0_f.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.p = load float, ptr %i.o, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.r = load float, ptr %i.q, align 4
  %i.s = fsub float %i.p, %i.r
  %i.t = tail call noundef float @llvm.fabs.f32(float %i.s)
  %i.u = fcmp ugt float %i.t, %2
  br i1 %i.u, label %_ZNK13aiQuaterniontIfE5EqualERKS0_f.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = load float, ptr %0, align 4
  %i.w = load float, ptr %1, align 4
  %i.x = fsub float %i.v, %i.w
  %i.y = tail call noundef float @llvm.fabs.f32(float %i.x)
  %i.z = fcmp ole float %i.y, %2
  %i.aa = zext i1 %i.z to i32
  br label %_ZNK13aiQuaterniontIfE5EqualERKS0_f.exit

_ZNK13aiQuaterniontIfE5EqualERKS0_f.exit:         ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.ab = phi i32 [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ], [ %i.aa, %bb.d ]
  ret i32 %i.ab
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @aiQuaternionNormalize(ptr noundef captures(none) %0) local_unnamed_addr #14 {
bb.a:
  %i.a = load <4 x float>, ptr %0, align 4        ; 6 uses
  %foldExtExtBinop = fmul <4 x float> %i.a, %i.a
  %i.b = extractelement <4 x float> %foldExtExtBinop, i64 2
  %i.c = extractelement <4 x float> %i.a, i64 1   ; 2 uses
  %i.d = tail call float @llvm.fmuladd.f32(float %i.c, float %i.c, float %i.b)
  %i.e = extractelement <4 x float> %i.a, i64 3   ; 2 uses
  %i.f = tail call float @llvm.fmuladd.f32(float %i.e, float %i.e, float %i.d)
  %i.g = extractelement <4 x float> %i.a, i64 0   ; 2 uses
  %i.h = tail call float @llvm.fmuladd.f32(float %i.g, float %i.g, float %i.f) ; 2 uses
  %i.i = fcmp une float %i.h, 0.000000e+00
  br i1 %i.i, label %bb.b, label %_ZN13aiQuaterniontIfE9NormalizeEv.exit

bb.b:                                             ; preds = %bb.a
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.h)
  %i.j = fdiv float 1.000000e+00, %sqrt.i
  %i.k = insertelement <4 x float> poison, float %i.j, i64 0
  %i.l = shufflevector <4 x float> %i.k, <4 x float> poison, <4 x i32> zeroinitializer
  %i.m = fmul <4 x float> %i.a, %i.l
  store <4 x float> %i.m, ptr %0, align 4
  br label %_ZN13aiQuaterniontIfE9NormalizeEv.exit

_ZN13aiQuaterniontIfE9NormalizeEv.exit:           ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @aiQuaternionConjugate(ptr noundef captures(none) %0) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load <2 x float>, ptr %i.a, align 4
  %i.c = fneg <2 x float> %i.b
  store <2 x float> %i.c, ptr %i.a, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.e = load float, ptr %i.d, align 4
  %i.f = fneg float %i.e
  store float %i.f, ptr %i.d, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @aiQuaternionMultiply(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #15 {
bb.a:
  %i.a = load float, ptr %0, align 4              ; 4 uses
  %i.b = load float, ptr %1, align 4              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load float, ptr %i.c, align 4            ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load float, ptr %i.e, align 4            ; 4 uses
  %i.g = fneg float %i.f
  %i.h = fmul float %i.d, %i.g
  %i.i = tail call float @llvm.fmuladd.f32(float %i.a, float %i.b, float %i.h)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load float, ptr %i.j, align 4            ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load float, ptr %i.l, align 4            ; 4 uses
  %i.n = fneg float %i.k                          ; 2 uses
  %i.o = tail call float @llvm.fmuladd.f32(float %i.n, float %i.m, float %i.i)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.q = load float, ptr %i.p, align 4            ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.s = load float, ptr %i.r, align 4            ; 4 uses
  %i.t = fneg float %i.q                          ; 2 uses
  %i.u = tail call float @llvm.fmuladd.f32(float %i.t, float %i.s, float %i.o)
  %i.v = fmul float %i.b, %i.d
  %i.w = tail call float @llvm.fmuladd.f32(float %i.a, float %i.f, float %i.v)
  %i.x = tail call float @llvm.fmuladd.f32(float %i.k, float %i.s, float %i.w)
  %i.y = tail call float @llvm.fmuladd.f32(float %i.t, float %i.m, float %i.x)
  %i.z = fmul float %i.b, %i.k
  %i.aa = tail call float @llvm.fmuladd.f32(float %i.a, float %i.m, float %i.z)
  %i.ab = tail call float @llvm.fmuladd.f32(float %i.q, float %i.f, float %i.aa)
  %i.ac = fneg float %i.d
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.ac, float %i.s, float %i.ab)
  %i.ae = fmul float %i.b, %i.q
  %i.af = tail call float @llvm.fmuladd.f32(float %i.a, float %i.s, float %i.ae)
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.d, float %i.m, float %i.af)
  %i.ah = tail call float @llvm.fmuladd.f32(float %i.n, float %i.f, float %i.ag)
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.u, i64 0
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.y, i64 1
  %.sroa.3.8.vec.insert.i = insertelement <2 x float> poison, float %i.ad, i64 0
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> %.sroa.3.8.vec.insert.i, float %i.ah, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %0, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %i.j, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @aiQuaternionInterpolate(ptr noundef writeonly captures(none) initializes((0, 16)) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, float noundef %3) local_unnamed_addr #20 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.b = load float, ptr %i.a, align 4            ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.d = load float, ptr %i.c, align 4            ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load float, ptr %i.e, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load float, ptr %i.g, align 4            ; 3 uses
  %i.i = fmul float %i.f, %i.h
  %i.j = tail call float @llvm.fmuladd.f32(float %i.b, float %i.d, float %i.i)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.l = load float, ptr %i.k, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.n = load float, ptr %i.m, align 4            ; 3 uses
  %i.o = tail call float @llvm.fmuladd.f32(float %i.l, float %i.n, float %i.j)
  %i.p = load float, ptr %1, align 4
  %i.q = load float, ptr %2, align 4              ; 3 uses
  %i.r = tail call float @llvm.fmuladd.f32(float %i.p, float %i.q, float %i.o) ; 3 uses
  %i.s = fcmp olt float %i.r, 0.000000e+00
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.t = fneg float %i.r
  %i.u = fneg float %i.d
  %i.v = fneg float %i.h
  %i.w = fneg float %i.n
  %i.x = fneg float %i.q
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.9.0.i = phi float [ %i.v, %bb.b ], [ %i.h, %bb.a ]
  %.sroa.6.0.i = phi float [ %i.u, %bb.b ], [ %i.d, %bb.a ]
  %.sroa.0.0.i = phi float [ %i.x, %bb.b ], [ %i.q, %bb.a ]
  %.sroa.12.0.i = phi float [ %i.w, %bb.b ], [ %i.n, %bb.a ]
  %.0.i = phi float [ %i.t, %bb.b ], [ %i.r, %bb.a ] ; 2 uses
  %i.y = fsub float 1.000000e+00, %.0.i
  %i.z = fcmp ogt float %i.y, f0x358637BD
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aa = tail call noundef float @acosf(float noundef %.0.i) #47 ; 3 uses
  %i.ab = tail call noundef float @sinf(float noundef %i.aa) #47 ; 2 uses
  %i.ac = fsub float 1.000000e+00, %3
  %i.ad = fmul float %i.ac, %i.aa
  %i.ae = tail call noundef float @sinf(float noundef %i.ad) #47
  %i.af = fdiv float %i.ae, %i.ab
  %i.ag = fmul float %3, %i.aa
  %i.ah = tail call noundef float @sinf(float noundef %i.ag) #47
  %i.ai = fdiv float %i.ah, %i.ab
  %.pre.i = load float, ptr %i.a, align 4
  br label %_ZN13aiQuaterniontIfE11InterpolateERS0_RKS0_S3_f.exit

bb.e:                                             ; preds = %bb.c
  %i.aj = fsub float 1.000000e+00, %3
  br label %_ZN13aiQuaterniontIfE11InterpolateERS0_RKS0_S3_f.exit

_ZN13aiQuaterniontIfE11InterpolateERS0_RKS0_S3_f.exit: ; preds = %bb.d, %bb.e
  %i.ak = phi float [ %.pre.i, %bb.d ], [ %i.b, %bb.e ]
  %.043.i = phi float [ %i.af, %bb.d ], [ %i.aj, %bb.e ] ; 4 uses
  %.042.i = phi float [ %i.ai, %bb.d ], [ %3, %bb.e ] ; 4 uses
  %i.al = fmul float %.sroa.6.0.i, %.042.i
  %i.am = tail call float @llvm.fmuladd.f32(float %.043.i, float %i.ak, float %i.al)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.am, ptr %i.an, align 4
  %i.ao = load float, ptr %i.e, align 4
  %i.ap = fmul float %.sroa.9.0.i, %.042.i
  %i.aq = tail call float @llvm.fmuladd.f32(float %.043.i, float %i.ao, float %i.ap)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.aq, ptr %i.ar, align 4
  %i.as = load float, ptr %i.k, align 4
  %i.at = fmul float %.sroa.12.0.i, %.042.i
  %i.au = tail call float @llvm.fmuladd.f32(float %.043.i, float %i.as, float %i.at)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.au, ptr %i.av, align 4
  %i.aw = load float, ptr %1, align 4
  %i.ax = fmul float %.sroa.0.0.i, %.042.i
  %i.ay = tail call float @llvm.fmuladd.f32(float %.043.i, float %i.aw, float %i.ax)
  store float %i.ay, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @assimp_stbi_failure_reason() local_unnamed_addr #10 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  %i.b = load ptr, ptr %i.a, align 8
  ret ptr %i.b
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #23

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @assimp_stbi_image_free(ptr noundef captures(none) %0) local_unnamed_addr #24 {
bb.a:
  tail call void @free(ptr noundef %0) #47
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #25

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @assimp_stbi_set_flip_vertically_on_load(i32 noundef %0) local_unnamed_addr #26 {
bb.a:
  store i32 %0, ptr @_ZL36stbi__vertically_flip_on_load_global, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @assimp_stbi_set_flip_vertically_on_load_thread(i32 noundef %0) local_unnamed_addr #26 {
bb.a:
  %i.a = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZL35stbi__vertically_flip_on_load_local)
  store i32 %0, ptr %i.a, align 4
  %i.b = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZL33stbi__vertically_flip_on_load_set)
  store i32 1, ptr %i.b, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @assimp_stbi_load(ptr noundef readonly captures(none) %0, ptr noundef captures(none) %1, ptr noundef captures(none) %2, ptr noundef captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.stbi__context, align 8      ; 14 uses
  %i.a = tail call noalias noundef ptr @fopen(ptr noundef readonly %0, ptr noundef nonnull @.str.3) ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.4, ptr %i.b, align 8
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #47
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) @_ZL21stbi__stdio_callbacks, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %i.a, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 52
  store i32 128, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store i32 1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 184 ; 3 uses
  store i32 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 208 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 192 ; 4 uses
  store ptr %i.h, ptr %i.j, align 8
  %i.k = load ptr, ptr %i.c, align 8
  %i.l = call noundef i32 %i.k(ptr noundef nonnull %i.a, ptr noundef nonnull %i.h, i32 noundef 128), !inline_history !25 ; 2 uses
  %i.m = load ptr, ptr %i.j, align 8
  %i.n = load ptr, ptr %i.i, align 8
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = trunc i64 %i.q to i32
  %i.s = load i32, ptr %i.g, align 8
  %i.t = add nsw i32 %i.s, %i.r
  store i32 %i.t, ptr %i.g, align 8
  %i.u = icmp eq i32 %i.l, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.f, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 57
  store i8 0, ptr %i.h, align 8
  br label %_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit.i

bb.e:                                             ; preds = %bb.c
  %i.w = sext i32 %i.l to i64
  %i.x = getelementptr inbounds i8, ptr %i.h, i64 %i.w
  br label %_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit.i

_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit.i: ; preds = %bb.e, %bb.d
  %.sink.i.i.i.i = phi ptr [ %i.v, %bb.d ], [ %i.x, %bb.e ] ; 2 uses
  store ptr %i.h, ptr %i.j, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 200 ; 2 uses
  store ptr %.sink.i.i.i.i, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 216
  store ptr %.sink.i.i.i.i, ptr %i.z, align 8
  %i.aa = call fastcc noundef ptr @_ZL31stbi__load_and_postprocess_8bitP13stbi__contextPiS1_S1_i(ptr noundef %5, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) ; 2 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %assimp_stbi_load_from_file.exit, label %bb.f

bb.f:                                             ; preds = %_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit.i
  %i.ab = load ptr, ptr %i.y, align 8
  %i.ac = load ptr, ptr %i.j, align 8
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %.neg.i = sub i64 %i.ae, %i.ad
  %sext.i = shl i64 %.neg.i, 32
  %i.af = ashr exact i64 %sext.i, 32
  %i.ag = call i32 @fseek(ptr noundef nonnull %i.a, i64 noundef %i.af, i32 noundef 1) ; 0 uses
  br label %assimp_stbi_load_from_file.exit

assimp_stbi_load_from_file.exit:                  ; preds = %_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47
end_hunk_2
begin_hunk_3_@assimp_stbi_load_16_from_callbacks:bb.a
bb.c:                                             ; preds = %bb.a
  %i.u = sext i32 %i.j to i64
  %i.v = getelementptr inbounds i8, ptr %i.f, i64 %i.u
  br label %_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit

_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit: ; preds = %bb.b, %bb.c
  %.sink.i.i = phi ptr [ %i.t, %bb.b ], [ %i.v, %bb.c ] ; 2 uses
  store ptr %i.f, ptr %i.h, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 200
  store ptr %.sink.i.i, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 216
  store ptr %.sink.i.i, ptr %i.x, align 8
  %i.y = call fastcc noundef ptr @_ZL32stbi__load_and_postprocess_16bitP13stbi__contextPiS1_S1_i(ptr noundef %6, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #47
  ret ptr %i.y
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @assimp_stbi_load_from_memory(ptr noundef %0, i32 noundef %1, ptr noundef captures(none) %2, ptr noundef captures(none) %3, ptr noundef captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %6 = alloca %struct.stbi__context, align 8      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #47
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i32 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 184
  store i32 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 208
  store ptr %0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 192
  store ptr %0, ptr %i.e, align 8
  %i.f = sext i32 %1 to i64
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 216
  store ptr %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 200
  store ptr %i.g, ptr %i.i, align 8
  %i.j = call fastcc noundef ptr @_ZL31stbi__load_and_postprocess_8bitP13stbi__contextPiS1_S1_i(ptr noundef %6, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #47
  ret ptr %i.j
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @assimp_stbi_load_from_callbacks(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr noundef captures(none) %2, ptr noundef captures(none) %3, ptr noundef captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %6 = alloca %struct.stbi__context, align 8      ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #47
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 52
  store i32 128, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store i32 1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 184 ; 3 uses
  store i32 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 208 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 192 ; 3 uses
  store ptr %i.f, ptr %i.h, align 8
  %i.i = load ptr, ptr %i.a, align 8
  %i.j = call noundef i32 %i.i(ptr noundef %1, ptr noundef nonnull %i.f, i32 noundef 128), !inline_history !39 ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8
  %i.l = load ptr, ptr %i.g, align 8
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = trunc i64 %i.o to i32
  %i.q = load i32, ptr %i.e, align 8
  %i.r = add nsw i32 %i.q, %i.p
  store i32 %i.r, ptr %i.e, align 8
  %i.s = icmp eq i32 %i.j, 0
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.d, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 57
  store i8 0, ptr %i.f, align 8
  br label %_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit

bb.c:                                             ; preds = %bb.a
  %i.u = sext i32 %i.j to i64
  %i.v = getelementptr inbounds i8, ptr %i.f, i64 %i.u
  br label %_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit

_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit: ; preds = %bb.b, %bb.c
  %.sink.i.i = phi ptr [ %i.t, %bb.b ], [ %i.v, %bb.c ] ; 2 uses
  store ptr %i.f, ptr %i.h, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 200
  store ptr %.sink.i.i, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 216
  store ptr %.sink.i.i, ptr %i.x, align 8
  %i.y = call fastcc noundef ptr @_ZL31stbi__load_and_postprocess_8bitP13stbi__contextPiS1_S1_i(ptr noundef %6, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #47
  ret ptr %i.y
}

; Function Attrs: mustprogress uwtable
define hidden noalias noundef ptr @assimp_stbi_loadf_from_memory(ptr noundef %0, i32 noundef %1, ptr noundef captures(none) %2, ptr noundef captures(none) %3, ptr noundef captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %6 = alloca %struct.stbi__context, align 8      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #47
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i32 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 184
  store i32 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 208
  store ptr %0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 192
  store ptr %0, ptr %i.e, align 8
  %i.f = sext i32 %1 to i64
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 216
  store ptr %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 200
  store ptr %i.g, ptr %i.i, align 8
  %i.j = call fastcc noundef ptr @_ZL16stbi__loadf_mainP13stbi__contextPiS1_S1_i(ptr noundef %6, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #47
  ret ptr %i.j
}

; Function Attrs: mustprogress uwtable
define internal fastcc noalias noundef ptr @_ZL16stbi__loadf_mainP13stbi__contextPiS1_S1_i(ptr noundef nonnull %0, ptr noundef captures(none) %1, ptr noundef captures(none) %2, ptr noundef captures(address_is_null) %3, i32 noundef %4) unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc noundef ptr @_ZL31stbi__load_and_postprocess_8bitP13stbi__contextPiS1_S1_i(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) ; 9 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %1, align 4                ; 3 uses
  %i.c = load i32, ptr %2, align 4                ; 4 uses
  %.not14 = icmp eq i32 %4, 0
  br i1 %.not14, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %3, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.e = phi i32 [ %i.d, %bb.c ], [ %4, %bb.b ]   ; 9 uses
  %i.f = or i32 %i.c, %i.b
  %or.cond.not.i.i.i.i = icmp sgt i32 %i.f, -1
  br i1 %or.cond.not.i.i.i.i, label %bb.e, label %_ZL17stbi__malloc_mad4iiiii.exit.thread.i

bb.e:                                             ; preds = %bb.d
  %i.g = icmp eq i32 %i.c, 0
  br i1 %i.g, label %_ZL21stbi__mul2sizes_validii.exit.thread24.i.i.i, label %_ZL21stbi__mul2sizes_validii.exit.i.i.i

_ZL21stbi__mul2sizes_validii.exit.i.i.i:          ; preds = %bb.e
  %i.h = udiv i32 2147483647, %i.c
  %.not34.i.i.i = icmp sgt i32 %i.b, %i.h
  br i1 %.not34.i.i.i, label %_ZL17stbi__malloc_mad4iiiii.exit.thread.i, label %_ZL21stbi__mul2sizes_validii.exit.thread24.i.i.i

_ZL21stbi__mul2sizes_validii.exit.thread24.i.i.i: ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i.i, %bb.e
  %i.i = mul nsw i32 %i.c, %i.b                   ; 9 uses
  %i.j = or i32 %i.e, %i.i
  %or.cond.not.i16.i.i.i = icmp sgt i32 %i.j, -1
  br i1 %or.cond.not.i16.i.i.i, label %bb.f, label %_ZL17stbi__malloc_mad4iiiii.exit.thread.i

bb.f:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread24.i.i.i
  %i.k = icmp eq i32 %i.e, 0
  br i1 %i.k, label %_ZL17stbi__malloc_mad4iiiii.exit.i, label %_ZL21stbi__mul2sizes_validii.exit18.i.i.i

_ZL21stbi__mul2sizes_validii.exit18.i.i.i:        ; preds = %bb.f
  %i.l = udiv i32 2147483647, %i.e
  %.not.i.i.i = icmp sgt i32 %i.i, %i.l
  %i.m = mul nsw i32 %i.e, %i.i
  %i.n = icmp ugt i32 %i.m, 536870911
  %or.cond.i.i = select i1 %.not.i.i.i, i1 true, i1 %i.n
  br i1 %or.cond.i.i, label %_ZL17stbi__malloc_mad4iiiii.exit.thread.i, label %_ZL17stbi__malloc_mad4iiiii.exit.i

_ZL17stbi__malloc_mad4iiiii.exit.i:               ; preds = %_ZL21stbi__mul2sizes_validii.exit18.i.i.i, %bb.f
  %i.o = shl i32 %i.i, 2
  %i.p = mul i32 %i.o, %i.e
  %i.q = sext i32 %i.p to i64
  %i.r = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %i.q) #50 ; 8 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZL17stbi__malloc_mad4iiiii.exit.thread.i, label %bb.g

_ZL17stbi__malloc_mad4iiiii.exit.thread.i:        ; preds = %_ZL17stbi__malloc_mad4iiiii.exit.i, %_ZL21stbi__mul2sizes_validii.exit18.i.i.i, %_ZL21stbi__mul2sizes_validii.exit.thread24.i.i.i, %_ZL21stbi__mul2sizes_validii.exit.i.i.i, %bb.d
  tail call void @free(ptr noundef nonnull %i.a) #47
  %i.t = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.26, ptr %i.t, align 8
  br label %_ZL16stbi__ldr_to_hdrPhiii.exit

bb.g:                                             ; preds = %_ZL17stbi__malloc_mad4iiiii.exit.i
  %i.u = and i32 %i.e, 1
  %.not.i = icmp eq i32 %i.u, 0                   ; 2 uses
  %i.v = sext i1 %.not.i to i32
  %.040.i = add i32 %i.e, %i.v                    ; 5 uses
  %i.w = icmp sgt i32 %i.i, 0
  br i1 %i.w, label %.preheader48.lr.ph.i, label %.loopexit.i

.preheader48.lr.ph.i:                             ; preds = %bb.g
  %i.x = icmp sgt i32 %.040.i, 0
  %5 = load float, ptr @_ZL15stbi__l2h_gamma, align 4 ; 3 uses
  %6 = load float, ptr @_ZL15stbi__l2h_scale, align 4 ; 3 uses
  br i1 %i.x, label %.preheader48.us.preheader.i, label %._crit_edge51.i

.preheader48.us.preheader.i:                      ; preds = %.preheader48.lr.ph.i
  %i.y = sext i32 %i.e to i64
  %wide.trip.count58.i = zext nneg i32 %i.i to i64
  %wide.trip.count.i = zext nneg i32 %.040.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.z = icmp eq i32 %.040.i, 1
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod21 = trunc i32 %.040.i to i1
  br label %.preheader48.us.i

.preheader48.us.i:                                ; preds = %._crit_edge.us.i, %.preheader48.us.preheader.i
  %indvars.iv55.i = phi i64 [ 0, %.preheader48.us.preheader.i ], [ %indvars.iv.next56.i, %._crit_edge.us.i ] ; 2 uses
  %i.aa = mul nsw i64 %indvars.iv55.i, %i.y       ; 3 uses
  br i1 %i.z, label %.epil.preheader, label %.preheader48.us.i.new

.preheader48.us.i.new:                            ; preds = %.preheader48.us.i, %.preheader48.us.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.preheader48.us.i.new ], [ 0, %.preheader48.us.i ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader48.us.i.new ], [ 0, %.preheader48.us.i ]
  %i.ab = add nsw i64 %indvars.iv.i, %i.aa        ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.a, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = uitofp i8 %i.ad to float
  %i.af = fdiv float %i.ae, 2.550000e+02
  %i.ag = tail call noundef float @powf(float noundef %i.af, float noundef %5) #47
  %i.ah = fmul float %6, %i.ag
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.ab
  store float %i.ah, ptr %i.ai, align 4
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1
  %i.aj = add nsw i64 %indvars.iv.next.i, %i.aa   ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.a, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = uitofp i8 %i.al to float
  %i.an = fdiv float %i.am, 2.550000e+02
  %i.ao = tail call noundef float @powf(float noundef %i.an, float noundef %5) #47
  %i.ap = fmul float %6, %i.ao
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.aj
  store float %i.ap, ptr %i.aq, align 4
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.unr-lcssa, label %.preheader48.us.i.new, !llvm.loop !40

._crit_edge.us.i.unr-lcssa:                       ; preds = %.preheader48.us.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.preheader48.us.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader48.us.i ], [ %indvars.iv.next.i.1, %._crit_edge.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod21)
  %i.ar = add nsw i64 %indvars.iv.i.epil.init, %i.aa ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %i.a, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1
  %i.au = uitofp i8 %i.at to float
  %i.av = fdiv float %i.au, 2.550000e+02
  %i.aw = tail call noundef float @powf(float noundef %i.av, float noundef %5) #47
  %i.ax = fmul float %6, %i.aw
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.ar
  store float %i.ax, ptr %i.ay, align 4
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %._crit_edge.us.i.unr-lcssa, %.epil.preheader
  %indvars.iv.next56.i = add nuw nsw i64 %indvars.iv55.i, 1 ; 2 uses
  %exitcond59.not.i = icmp eq i64 %indvars.iv.next56.i, %wide.trip.count58.i
  br i1 %exitcond59.not.i, label %._crit_edge51.i, label %.preheader48.us.i, !llvm.loop !41

._crit_edge51.i:                                  ; preds = %._crit_edge.us.i, %.preheader48.lr.ph.i
  br i1 %.not.i, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge51.i
  %i.az = sext i32 %i.e to i64                    ; 3 uses
  %i.ba = sext i32 %.040.i to i64                 ; 3 uses
  %wide.trip.count63.i = zext nneg i32 %i.i to i64 ; 2 uses
  %xtraiter22 = and i64 %wide.trip.count63.i, 1
  %i.bb = icmp eq i32 %i.i, 1
  br i1 %i.bb, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter25 = and i64 %wide.trip.count63.i, 2147483646
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv60.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next61.i.1, %.lr.ph.i ] ; 3 uses
  %niter26 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter26.next.1, %.lr.ph.i ]
  %i.bc = mul nsw i64 %indvars.iv60.i, %i.az
  %i.bd = add nsw i64 %i.bc, %i.ba                ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %i.a, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = uitofp i8 %i.bf to float
  %i.bh = fdiv float %i.bg, 2.550000e+02
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.bd
  store float %i.bh, ptr %i.bi, align 4
  %indvars.iv.next61.i = or disjoint i64 %indvars.iv60.i, 1
  %i.bj = mul nsw i64 %indvars.iv.next61.i, %i.az
  %i.bk = add nsw i64 %i.bj, %i.ba                ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %i.a, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = uitofp i8 %i.bm to float
  %i.bo = fdiv float %i.bn, 2.550000e+02
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.bk
  store float %i.bo, ptr %i.bp, align 4
  %indvars.iv.next61.i.1 = add nuw nsw i64 %indvars.iv60.i, 2 ; 2 uses
  %niter26.next.1 = add i64 %niter26, 2           ; 2 uses
  %niter26.ncmp.1 = icmp eq i64 %niter26.next.1, %unroll_iter25
  br i1 %niter26.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !42

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i
  %lcmp.mod23.not = icmp eq i64 %xtraiter22, 0
  br i1 %lcmp.mod23.not, label %.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv60.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next61.i.1, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod24 = trunc i32 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod24)
  %i.bq = mul nsw i64 %indvars.iv60.i.epil.init, %i.az
  %i.br = add nsw i64 %i.bq, %i.ba                ; 2 uses
  %i.bs = getelementptr inbounds i8, ptr %i.a, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1
  %i.bu = uitofp i8 %i.bt to float
  %i.bv = fdiv float %i.bu, 2.550000e+02
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.br
  store float %i.bv, ptr %i.bw, align 4
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i.epil.preheader, %.loopexit.i.loopexit.unr-lcssa, %._crit_edge51.i, %bb.g
  tail call void @free(ptr noundef nonnull %i.a) #47
  br label %_ZL16stbi__ldr_to_hdrPhiii.exit

bb.h:                                             ; preds = %bb.a
  %i.bx = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.5, ptr %i.bx, align 8
  br label %_ZL16stbi__ldr_to_hdrPhiii.exit

_ZL16stbi__ldr_to_hdrPhiii.exit:                  ; preds = %.loopexit.i, %_ZL17stbi__malloc_mad4iiiii.exit.thread.i, %bb.h
  %.0 = phi ptr [ null, %bb.h ], [ null, %_ZL17stbi__malloc_mad4iiiii.exit.thread.i ], [ %i.r, %.loopexit.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define hidden noalias noundef ptr @assimp_stbi_loadf_from_callbacks(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr noundef captures(none) %2, ptr noundef captures(none) %3, ptr noundef captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %6 = alloca %struct.stbi__context, align 8      ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #47
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 52
  store i32 128, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store i32 1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 184 ; 3 uses
  store i32 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 208 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 192 ; 3 uses
  store ptr %i.f, ptr %i.h, align 8
  %i.i = load ptr, ptr %i.a, align 8
  %i.j = call noundef i32 %i.i(ptr noundef %1, ptr noundef nonnull %i.f, i32 noundef 128), !inline_history !39 ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8
  %i.l = load ptr, ptr %i.g, align 8
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = trunc i64 %i.o to i32
  %i.q = load i32, ptr %i.e, align 8
  %i.r = add nsw i32 %i.q, %i.p
  store i32 %i.r, ptr %i.e, align 8
  %i.s = icmp eq i32 %i.j, 0
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.d, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 57
  store i8 0, ptr %i.f, align 8
  br label %_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit

bb.c:                                             ; preds = %bb.a
  %i.u = sext i32 %i.j to i64
  %i.v = getelementptr inbounds i8, ptr %i.f, i64 %i.u
  br label %_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit

_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit: ; preds = %bb.b, %bb.c
  %.sink.i.i = phi ptr [ %i.t, %bb.b ], [ %i.v, %bb.c ] ; 2 uses
  store ptr %i.f, ptr %i.h, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 200
  store ptr %.sink.i.i, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 216
  store ptr %.sink.i.i, ptr %i.x, align 8
  %i.y = call fastcc noundef ptr @_ZL16stbi__loadf_mainP13stbi__contextPiS1_S1_i(ptr noundef %6, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #47
  ret ptr %i.y
}

; Function Attrs: mustprogress uwtable
define hidden noalias noundef ptr @assimp_stbi_loadf(ptr noundef readonly captures(none) %0, ptr noundef captures(none) %1, ptr noundef captures(none) %2, ptr noundef captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.stbi__context, align 8      ; 14 uses
  %i.a = tail call noalias noundef ptr @fopen(ptr noundef readonly %0, ptr noundef nonnull @.str.3) ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.4, ptr %i.b, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #47
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) @_ZL21stbi__stdio_callbacks, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %i.a, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 52
  store i32 128, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store i32 1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 184 ; 3 uses
  store i32 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 208 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 192 ; 3 uses
  store ptr %i.h, ptr %i.j, align 8
  %i.k = load ptr, ptr %i.c, align 8
  %i.l = call noundef i32 %i.k(ptr noundef nonnull %i.a, ptr noundef nonnull %i.h, i32 noundef 128), !inline_history !43 ; 2 uses
  %i.m = load ptr, ptr %i.j, align 8
  %i.n = load ptr, ptr %i.i, align 8
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = trunc i64 %i.q to i32
  %i.s = load i32, ptr %i.g, align 8
  %i.t = add nsw i32 %i.s, %i.r
  store i32 %i.t, ptr %i.g, align 8
  %i.u = icmp eq i32 %i.l, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.f, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 57
  store i8 0, ptr %i.h, align 8
  br label %assimp_stbi_loadf_from_file.exit

bb.e:                                             ; preds = %bb.c
  %i.w = sext i32 %i.l to i64
  %i.x = getelementptr inbounds i8, ptr %i.h, i64 %i.w
  br label %assimp_stbi_loadf_from_file.exit

assimp_stbi_loadf_from_file.exit:                 ; preds = %bb.d, %bb.e
  %.sink.i.i.i.i = phi ptr [ %i.v, %bb.d ], [ %i.x, %bb.e ] ; 2 uses
  store ptr %i.h, ptr %i.j, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 200
  store ptr %.sink.i.i.i.i, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 216
  store ptr %.sink.i.i.i.i, ptr %i.z, align 8
end_hunk_3
begin_hunk_4_@_ZNSt8_Rb_treeIjSt4pairIKj12aiMatrix4x4tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E:bb.a

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN23LogToCallbackRedirectorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZN6AssimpL18gPredefinedStreamsB5cxx11E, align 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !63, !align !64
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.a, @_ZN6AssimpL18gPredefinedStreamsB5cxx11E
  br i1 %.not5.i.i.i, label %_ZSt4findISt14_List_iteratorIPN6Assimp9LogStreamEES3_ET_S5_S5_RKT0_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.b
  %.sroa.03.06.i.i.i = phi ptr [ %i.i, %bb.b ], [ %i.a, %bb.a ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i.i, i64 16
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %_ZSt4findISt14_List_iteratorIPN6Assimp9LogStreamEES3_ET_S5_S5_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.i = load ptr, ptr %.sroa.03.06.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, @_ZN6AssimpL18gPredefinedStreamsB5cxx11E
  br i1 %.not.i.i.i, label %_ZSt4findISt14_List_iteratorIPN6Assimp9LogStreamEES3_ET_S5_S5_RKT0_.exit.thread, label %.lr.ph.i.i.i, !llvm.loop !77

_ZSt4findISt14_List_iteratorIPN6Assimp9LogStreamEES3_ET_S5_S5_RKT0_.exit: ; preds = %.lr.ph.i.i.i
  %i.j = icmp eq ptr %i.e, null
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt4findISt14_List_iteratorIPN6Assimp9LogStreamEES3_ET_S5_S5_RKT0_.exit
  %i.k = load ptr, ptr %i.g, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.g) #47
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZSt4findISt14_List_iteratorIPN6Assimp9LogStreamEES3_ET_S5_S5_RKT0_.exit
  %i.n = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN6AssimpL18gPredefinedStreamsB5cxx11E, i64 16), align 8
  %i.o = add i64 %i.n, -1
  store i64 %i.o, ptr getelementptr inbounds nuw (i8, ptr @_ZN6AssimpL18gPredefinedStreamsB5cxx11E, i64 16), align 8
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.06.i.i.i) #47
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.03.06.i.i.i, i64 noundef 24) #45
  br label %_ZSt4findISt14_List_iteratorIPN6Assimp9LogStreamEES3_ET_S5_S5_RKT0_.exit.thread

_ZSt4findISt14_List_iteratorIPN6Assimp9LogStreamEES3_ET_S5_S5_RKT0_.exit.thread: ; preds = %bb.b, %bb.a, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN23LogToCallbackRedirectorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZN6AssimpL18gPredefinedStreamsB5cxx11E, align 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !63, !align !64
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.a, @_ZN6AssimpL18gPredefinedStreamsB5cxx11E
  br i1 %.not5.i.i.i.i, label %_ZN23LogToCallbackRedirectorD2Ev.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %bb.b
  %.sroa.03.06.i.i.i.i = phi ptr [ %i.i, %bb.b ], [ %i.a, %bb.a ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i.i.i, i64 16
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %_ZSt4findISt14_List_iteratorIPN6Assimp9LogStreamEES3_ET_S5_S5_RKT0_.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.i = load ptr, ptr %.sroa.03.06.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, @_ZN6AssimpL18gPredefinedStreamsB5cxx11E
  br i1 %.not.i.i.i.i, label %_ZN23LogToCallbackRedirectorD2Ev.exit, label %.lr.ph.i.i.i.i, !llvm.loop !77

_ZSt4findISt14_List_iteratorIPN6Assimp9LogStreamEES3_ET_S5_S5_RKT0_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.j = icmp eq ptr %i.e, null
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt4findISt14_List_iteratorIPN6Assimp9LogStreamEES3_ET_S5_S5_RKT0_.exit.i
  %i.k = load ptr, ptr %i.g, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.g) #47, !inline_history !78
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZSt4findISt14_List_iteratorIPN6Assimp9LogStreamEES3_ET_S5_S5_RKT0_.exit.i
  %i.n = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN6AssimpL18gPredefinedStreamsB5cxx11E, i64 16), align 8
  %i.o = add i64 %i.n, -1
  store i64 %i.o, ptr getelementptr inbounds nuw (i8, ptr @_ZN6AssimpL18gPredefinedStreamsB5cxx11E, i64 16), align 8
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.06.i.i.i.i) #47
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.03.06.i.i.i.i, i64 noundef 24) #45
  br label %_ZN23LogToCallbackRedirectorD2Ev.exit

_ZN23LogToCallbackRedirectorD2Ev.exit:            ; preds = %bb.b, %bb.a, %bb.d
  tail call void @_ZN6Assimp6Intern22AllocateFromAssimpHeapdlEPv(ptr noundef nonnull %0) #47
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN23LogToCallbackRedirector5writeEPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !63, !align !64 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.c(ptr noundef %1, ptr noundef %i.e)
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #7

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #31

declare noundef zeroext i1 @_ZNK6Assimp8Importer20IsExtensionSupportedEPKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i32 } @_ZNK7aiScene26GetEmbeddedTextureAndIndexEPKc(ptr noundef nonnull align 8 dereferenceable(1168) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %.critedge27, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1
  %i.c = icmp eq i8 %i.b, 42
  br i1 %i.c, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.e = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.d, ptr noundef null, i32 noundef 10) #47, !inline_history !79 ; 2 uses
  %i.f = trunc i64 %i.e to i32                    ; 3 uses
  %i.g = icmp sgt i32 %i.f, -1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load i32, ptr %i.h, align 8
  %.not24 = icmp ugt i32 %i.i, %i.f
  %or.cond = select i1 %i.g, i1 %.not24, i1 false
  br i1 %or.cond, label %bb.d, label %.critedge27

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = and i64 %i.e, 2147483647
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8
  br label %.critedge27

bb.e:                                             ; preds = %bb.b
  %i.o = tail call noundef ptr @strrchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 47) #49 ; 2 uses
  %i.p = tail call noundef ptr @strrchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 92) #49 ; 2 uses
  %i.q = icmp ult ptr %i.o, %i.p
  %spec.select.i = select i1 %i.q, ptr %i.p, ptr %i.o ; 2 uses
  %.not.i = icmp eq ptr %spec.select.i, null
  %i.r = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 1
  %i.s = select i1 %.not.i, ptr %1, ptr %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.u = load i32, ptr %i.t, align 8              ; 2 uses
  %.not2352.not = icmp eq i32 %i.u, 0
  br i1 %.not2352.not, label %.critedge27, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.w = load ptr, ptr %i.v, align 8
  %wide.trip.count = zext i32 %i.u to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %.critedge
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 36 ; 3 uses
  %i.aa = tail call noundef ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.z, i32 noundef 47) #49 ; 2 uses
  %i.ab = tail call noundef ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.z, i32 noundef 92) #49 ; 2 uses
  %i.ac = icmp ult ptr %i.aa, %i.ab
  %spec.select.i28 = select i1 %i.ac, ptr %i.ab, ptr %i.aa ; 2 uses
  %.not.i29 = icmp eq ptr %spec.select.i28, null
  %i.ad = getelementptr inbounds nuw i8, ptr %spec.select.i28, i64 1
  %i.ae = select i1 %.not.i29, ptr %i.z, ptr %i.ad
  %i.af = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ae, ptr noundef nonnull dereferenceable(1) %i.s) #49
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %.critedge27.loopexit.split.loop.exit61, label %.critedge

.critedge:                                        ; preds = %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge27, label %bb.f, !llvm.loop !80

.critedge27.loopexit.split.loop.exit61:           ; preds = %bb.f
  %i.ag = trunc nuw i64 %indvars.iv to i32
  br label %.critedge27

.critedge27:                                      ; preds = %.critedge, %.critedge27.loopexit.split.loop.exit61, %bb.e, %bb.c, %bb.a, %bb.d
  %.sroa.051.1 = phi ptr [ %i.n, %bb.d ], [ null, %bb.c ], [ null, %bb.a ], [ null, %bb.e ], [ %i.y, %.critedge27.loopexit.split.loop.exit61 ], [ null, %.critedge ]
  %.sroa.7.1 = phi i32 [ %i.f, %bb.d ], [ -1, %bb.c ], [ -1, %bb.a ], [ -1, %bb.e ], [ %i.ag, %.critedge27.loopexit.split.loop.exit61 ], [ -1, %.critedge ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.051.1, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.7.1, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #27

; Function Attrs: mustprogress nofree nounwind uwtable
define internal noundef i32 @_ZL16stbi__stdio_readPvPci(ptr noundef captures(none) %0, ptr noundef writeonly captures(none) %1, i32 noundef %2) #29 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = tail call i64 @fread(ptr noundef %1, i64 noundef 1, i64 noundef %i.a, ptr noundef %0)
  %i.c = trunc i64 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree nounwind uwtable
define internal void @_ZL16stbi__stdio_skipPvi(ptr noundef captures(none) %0, i32 noundef %1) #29 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = tail call i32 @fseek(ptr noundef %0, i64 noundef %i.a, i32 noundef 1) ; 0 uses
  %i.c = tail call i32 @fgetc(ptr noundef %0)     ; 2 uses
  %.not = icmp eq i32 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @ungetc(i32 noundef %i.c, ptr noundef %0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define internal noundef range(i32 0, 2) i32 @_ZL15stbi__stdio_eofPv(ptr noundef captures(none) %0) #29 {
bb.a:
  %i.a = tail call i32 @feof(ptr noundef %0) #47
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @ferror(ptr noundef %0) #47
  %i.c = icmp ne i32 %i.b, 0
  %i.d = zext i1 %i.c to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi i32 [ 1, %bb.a ], [ %i.d, %bb.b ]
  ret i32 %i.e
}

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #27

; Function Attrs: nofree nounwind
declare noundef i32 @fgetc(ptr noundef captures(none)) local_unnamed_addr #27

; Function Attrs: nofree nounwind
declare noundef i32 @ungetc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #27

; Function Attrs: nofree nounwind
declare noundef i32 @feof(ptr noundef captures(none)) local_unnamed_addr #27

; Function Attrs: nofree nounwind memory(read)
declare noundef i32 @ferror(ptr noundef captures(none)) local_unnamed_addr #32

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZL15stbi__load_mainP13stbi__contextPiS1_S1_iP17stbi__result_infoi(ptr noundef nonnull %0, ptr noundef writeonly captures(none) %1, ptr noundef writeonly captures(none) %2, ptr noundef writeonly captures(address_is_null) %3, i32 noundef %4, ptr noundef nonnull writeonly captures(none) initializes((0, 12)) %5) unnamed_addr #2 {
bb.a:
  %6 = alloca %struct.stbi__png, align 8          ; 10 uses
  store i32 8, ptr %5, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 26 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 16 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 31 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 10 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 16 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 21 uses
  %.pre.i.i = load ptr, ptr %i.c, align 8         ; 3 uses
  %.pre7.i.i = load ptr, ptr %i.d, align 8        ; 2 uses
  %i.m = icmp ult ptr %.pre.i.i, %.pre7.i.i
  br i1 %i.m, label %bb.ap, label %bb.aq

bb.b:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit.i.i
  %i.n = icmp ult ptr %i.fz, %i.fy
  br i1 %i.n, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load i32, ptr %i.e, align 8
  %.not.i.i.1.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.1.i, label %bb.bm, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.f, align 8
  %i.q = load ptr, ptr %i.g, align 8
  %i.r = load i32, ptr %i.i, align 4
  %i.s = tail call noundef i32 %i.p(ptr noundef %i.q, ptr noundef nonnull %i.h, i32 noundef %i.r), !inline_history !81 ; 2 uses
  %i.t = load ptr, ptr %i.c, align 8
  %i.u = load ptr, ptr %i.j, align 8
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = trunc i64 %i.x to i32
  %i.z = load i32, ptr %i.k, align 8
  %i.aa = add nsw i32 %i.z, %i.y
  store i32 %i.aa, ptr %i.k, align 8
  %i.ab = icmp eq i32 %i.s, 0
  br i1 %i.ab, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = sext i32 %i.s to i64
  %i.ad = getelementptr inbounds i8, ptr %i.h, i64 %i.ac
  %.pre.i.i.1.i = load i8, ptr %i.h, align 1
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.1.i

bb.f:                                             ; preds = %bb.d
  store i32 0, ptr %i.e, align 8
  store i8 0, ptr %i.h, align 8
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.1.i

_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.1.i: ; preds = %bb.f, %bb.e
  %i.ae = phi i8 [ 0, %bb.f ], [ %.pre.i.i.1.i, %bb.e ]
  %.sink.i.i.i.1.i = phi ptr [ %i.l, %bb.f ], [ %i.ad, %bb.e ] ; 2 uses
  store ptr %.sink.i.i.i.1.i, ptr %i.d, align 8
  store ptr %i.l, ptr %i.c, align 8
  br label %_ZL10stbi__get8P13stbi__context.exit.i.1.i

bb.g:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %i.fz, i64 1 ; 2 uses
  store ptr %i.af, ptr %i.c, align 8
  %i.ag = load i8, ptr %i.fz, align 1
  br label %_ZL10stbi__get8P13stbi__context.exit.i.1.i

_ZL10stbi__get8P13stbi__context.exit.i.1.i:       ; preds = %bb.g, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.1.i
  %i.ah = phi ptr [ %i.fy, %bb.g ], [ %.sink.i.i.i.1.i, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.1.i ] ; 2 uses
  %i.ai = phi ptr [ %i.af, %bb.g ], [ %i.l, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.1.i ] ; 3 uses
  %.0.i.i.1.i = phi i8 [ %i.ag, %bb.g ], [ %i.ae, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.1.i ]
  %.not.i.1.i = icmp eq i8 %.0.i.i.1.i, 80
  br i1 %.not.i.1.i, label %bb.h, label %bb.bm

bb.h:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit.i.1.i
  %i.aj = icmp ult ptr %i.ai, %i.ah
  br i1 %i.aj, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = load i32, ptr %i.e, align 8
  %.not.i.i.2.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i.2.i, label %bb.bm, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = load ptr, ptr %i.f, align 8
  %i.am = load ptr, ptr %i.g, align 8
  %i.an = load i32, ptr %i.i, align 4
  %i.ao = tail call noundef i32 %i.al(ptr noundef %i.am, ptr noundef nonnull %i.h, i32 noundef %i.an), !inline_history !81 ; 2 uses
  %i.ap = load ptr, ptr %i.c, align 8
  %i.aq = load ptr, ptr %i.j, align 8
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = trunc i64 %i.at to i32
  %i.av = load i32, ptr %i.k, align 8
  %i.aw = add nsw i32 %i.av, %i.au
  store i32 %i.aw, ptr %i.k, align 8
  %i.ax = icmp eq i32 %i.ao, 0
  br i1 %i.ax, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = sext i32 %i.ao to i64
  %i.az = getelementptr inbounds i8, ptr %i.h, i64 %i.ay
  %.pre.i.i.2.i = load i8, ptr %i.h, align 1
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.2.i

bb.l:                                             ; preds = %bb.j
  store i32 0, ptr %i.e, align 8
  store i8 0, ptr %i.h, align 8
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.2.i

_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.2.i: ; preds = %bb.l, %bb.k
  %i.ba = phi i8 [ 0, %bb.l ], [ %.pre.i.i.2.i, %bb.k ]
  %.sink.i.i.i.2.i = phi ptr [ %i.l, %bb.l ], [ %i.az, %bb.k ] ; 2 uses
  store ptr %.sink.i.i.i.2.i, ptr %i.d, align 8
  store ptr %i.l, ptr %i.c, align 8
  br label %_ZL10stbi__get8P13stbi__context.exit.i.2.i

bb.m:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ai, i64 1 ; 2 uses
  store ptr %i.bb, ptr %i.c, align 8
  %i.bc = load i8, ptr %i.ai, align 1
  br label %_ZL10stbi__get8P13stbi__context.exit.i.2.i

_ZL10stbi__get8P13stbi__context.exit.i.2.i:       ; preds = %bb.m, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.2.i
  %i.bd = phi ptr [ %i.ah, %bb.m ], [ %.sink.i.i.i.2.i, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.2.i ] ; 2 uses
  %i.be = phi ptr [ %i.bb, %bb.m ], [ %i.l, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.2.i ] ; 3 uses
  %.0.i.i.2.i = phi i8 [ %i.bc, %bb.m ], [ %i.ba, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.2.i ]
  %.not.i.2.i = icmp eq i8 %.0.i.i.2.i, 78
end_hunk_4
begin_hunk_5_@_ZL26stbi__create_png_image_rawP9stbi__pngPhjijjii:bb.a
  %exitcond453.not = icmp eq i32 %i.aab, %i.z
  br i1 %exitcond453.not, label %.loopexit, label %.lr.ph382, !llvm.loop !224

bb.aj:                                            ; preds = %bb.ai
  br i1 %i.be, label %.preheader344, label %.preheader346

.preheader346:                                    ; preds = %bb.aj
  br i1 %i.x, label %.loopexit, label %.lr.ph374

.preheader344:                                    ; preds = %bb.aj
  br i1 %i.x, label %.loopexit, label %.lr.ph378.preheader

.lr.ph378.preheader:                              ; preds = %.preheader344
  br i1 %min.iters.check530, label %.lr.ph378.preheader803, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph378.preheader
  %i.aae = getelementptr i8, ptr %i.ej, i64 %i.bn
  %scevgep = getelementptr i8, ptr %i.aae, i64 4
  %scevgep526 = getelementptr i8, ptr %scevgep, i64 %i.dz
  %scevgep528 = getelementptr i8, ptr %scevgep527, i64 %i.ec
  %bound0 = icmp ult ptr %i.em, %scevgep528
  %bound1 = icmp ult ptr %i.ed, %scevgep526
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph378.preheader803, label %vector.ph531

vector.ph531:                                     ; preds = %vector.memcheck
  %i.aaf = getelementptr i8, ptr %i.em, i64 %i.cg
  %i.aag = getelementptr i8, ptr %i.ed, i64 %i.ci
  br label %vector.body534

vector.body534:                                   ; preds = %vector.body534, %vector.ph531
  %index535 = phi i64 [ 0, %vector.ph531 ], [ %index.next542, %vector.body534 ] ; 3 uses
  %i.aah = shl i64 %index535, 2
  %next.gep536 = getelementptr i8, ptr %i.em, i64 %i.aah
  %i.aai = shl i64 %index535, 1                   ; 4 uses
  %next.gep537 = getelementptr i8, ptr %i.ed, i64 %i.aai ; 2 uses
  %i.aaj = getelementptr i8, ptr %i.ed, i64 %i.aai ; 2 uses
  %next.gep538 = getelementptr i8, ptr %i.aaj, i64 2
  %i.aak = getelementptr i8, ptr %i.ed, i64 %i.aai ; 2 uses
  %next.gep539 = getelementptr i8, ptr %i.aak, i64 4
  %i.aal = getelementptr i8, ptr %i.ed, i64 %i.aai ; 2 uses
  %next.gep540 = getelementptr i8, ptr %i.aal, i64 6
  %i.aam = load i8, ptr %next.gep537, align 1, !alias.scope !225
  %i.aan = load i8, ptr %next.gep538, align 1, !alias.scope !225
  %i.aao = load i8, ptr %next.gep539, align 1, !alias.scope !225
  %i.aap = load i8, ptr %next.gep540, align 1, !alias.scope !225
  %i.aaq = insertelement <4 x i8> poison, i8 %i.aam, i64 0
  %i.aar = insertelement <4 x i8> %i.aaq, i8 %i.aan, i64 1
  %i.aas = insertelement <4 x i8> %i.aar, i8 %i.aao, i64 2
  %i.aat = insertelement <4 x i8> %i.aas, i8 %i.aap, i64 3
  %i.aau = zext <4 x i8> %i.aat to <4 x i16>
  %i.aav = shl nuw <4 x i16> %i.aau, splat (i16 8)
  %i.aaw = getelementptr inbounds nuw i8, ptr %next.gep537, i64 1
  %i.aax = getelementptr i8, ptr %i.aaj, i64 3
  %i.aay = getelementptr i8, ptr %i.aak, i64 5
  %i.aaz = getelementptr i8, ptr %i.aal, i64 7
  %i.aba = load i8, ptr %i.aaw, align 1, !alias.scope !225
  %i.abb = load i8, ptr %i.aax, align 1, !alias.scope !225
  %i.abc = load i8, ptr %i.aay, align 1, !alias.scope !225
  %i.abd = load i8, ptr %i.aaz, align 1, !alias.scope !225
  %i.abe = insertelement <4 x i8> poison, i8 %i.aba, i64 0
  %i.abf = insertelement <4 x i8> %i.abe, i8 %i.abb, i64 1
  %i.abg = insertelement <4 x i8> %i.abf, i8 %i.abc, i64 2
  %i.abh = insertelement <4 x i8> %i.abg, i8 %i.abd, i64 3
  %i.abi = zext <4 x i8> %i.abh to <4 x i16>
  %i.abj = or disjoint <4 x i16> %i.aav, %i.abi
  %interleaved.vec541 = shufflevector <4 x i16> %i.abj, <4 x i16> splat (i16 -1), <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec541, ptr %next.gep536, align 2, !alias.scope !228, !noalias !225
  %index.next542 = add nuw i64 %index535, 4       ; 2 uses
  %i.abk = icmp eq i64 %index.next542, %n.vec533
  br i1 %i.abk, label %middle.block543, label %vector.body534, !llvm.loop !230

middle.block543:                                  ; preds = %vector.body534
  br i1 %cmp.n544, label %.loopexit, label %.lr.ph378.preheader803

.lr.ph378.preheader803:                           ; preds = %vector.memcheck, %.lr.ph378.preheader, %middle.block543
  %.1377.ph = phi ptr [ %i.em, %vector.memcheck ], [ %i.em, %.lr.ph378.preheader ], [ %i.aaf, %middle.block543 ] ; 4 uses
  %.4255376.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph378.preheader ], [ %i.ch, %middle.block543 ] ; 4 uses
  %.1269375.ph = phi ptr [ %i.ed, %vector.memcheck ], [ %i.ed, %.lr.ph378.preheader ], [ %i.aag, %middle.block543 ] ; 4 uses
  %i.abl = sub i32 %4, %.4255376.ph
  %.neg = add i32 %.4255376.ph, 1
  %xtraiter824 = and i32 %i.abl, 1
  %lcmp.mod825.not = icmp eq i32 %xtraiter824, 0
  br i1 %lcmp.mod825.not, label %.lr.ph378.prol.loopexit, label %.lr.ph378.prol

.lr.ph378.prol:                                   ; preds = %.lr.ph378.preheader803
  %i.abm = load i8, ptr %.1269375.ph, align 1
  %i.abn = zext i8 %i.abm to i16
  %i.abo = shl nuw i16 %i.abn, 8
  %i.abp = getelementptr inbounds nuw i8, ptr %.1269375.ph, i64 1
  %i.abq = load i8, ptr %i.abp, align 1
  %i.abr = zext i8 %i.abq to i16
  %i.abs = or disjoint i16 %i.abo, %i.abr
  store i16 %i.abs, ptr %.1377.ph, align 2
  %i.abt = getelementptr inbounds nuw i8, ptr %.1377.ph, i64 2
  store i16 -1, ptr %i.abt, align 2
  %i.abu = add nuw i32 %.4255376.ph, 1
  %i.abv = getelementptr inbounds nuw i8, ptr %.1377.ph, i64 4
  %i.abw = getelementptr inbounds nuw i8, ptr %.1269375.ph, i64 2
  br label %.lr.ph378.prol.loopexit

.lr.ph378.prol.loopexit:                          ; preds = %.lr.ph378.prol, %.lr.ph378.preheader803
  %.1377.unr = phi ptr [ %.1377.ph, %.lr.ph378.preheader803 ], [ %i.abv, %.lr.ph378.prol ]
  %.4255376.unr = phi i32 [ %.4255376.ph, %.lr.ph378.preheader803 ], [ %i.abu, %.lr.ph378.prol ]
  %.1269375.unr = phi ptr [ %.1269375.ph, %.lr.ph378.preheader803 ], [ %i.abw, %.lr.ph378.prol ]
  %i.abx = icmp eq i32 %4, %.neg
  br i1 %i.abx, label %.loopexit, label %.lr.ph378

.lr.ph378:                                        ; preds = %.lr.ph378.prol.loopexit, %.lr.ph378
  %.1377 = phi ptr [ %i.acr, %.lr.ph378 ], [ %.1377.unr, %.lr.ph378.prol.loopexit ] ; 5 uses
  %.4255376 = phi i32 [ %i.acq, %.lr.ph378 ], [ %.4255376.unr, %.lr.ph378.prol.loopexit ]
  %.1269375 = phi ptr [ %i.acs, %.lr.ph378 ], [ %.1269375.unr, %.lr.ph378.prol.loopexit ] ; 5 uses
  %i.aby = load i8, ptr %.1269375, align 1
  %i.abz = zext i8 %i.aby to i16
  %i.aca = shl nuw i16 %i.abz, 8
  %i.acb = getelementptr inbounds nuw i8, ptr %.1269375, i64 1
  %i.acc = load i8, ptr %i.acb, align 1
  %i.acd = zext i8 %i.acc to i16
  %i.ace = or disjoint i16 %i.aca, %i.acd
  store i16 %i.ace, ptr %.1377, align 2
  %i.acf = getelementptr inbounds nuw i8, ptr %.1377, i64 2
  store i16 -1, ptr %i.acf, align 2
  %i.acg = getelementptr inbounds nuw i8, ptr %.1377, i64 4
  %i.ach = getelementptr inbounds nuw i8, ptr %.1269375, i64 2
  %i.aci = load i8, ptr %i.ach, align 1
  %i.acj = zext i8 %i.aci to i16
  %i.ack = shl nuw i16 %i.acj, 8
  %i.acl = getelementptr inbounds nuw i8, ptr %.1269375, i64 3
  %i.acm = load i8, ptr %i.acl, align 1
  %i.acn = zext i8 %i.acm to i16
  %i.aco = or disjoint i16 %i.ack, %i.acn
  store i16 %i.aco, ptr %i.acg, align 2
  %i.acp = getelementptr inbounds nuw i8, ptr %.1377, i64 6
  store i16 -1, ptr %i.acp, align 2
  %i.acq = add nuw i32 %.4255376, 2               ; 2 uses
  %i.acr = getelementptr inbounds nuw i8, ptr %.1377, i64 8
  %i.acs = getelementptr inbounds nuw i8, ptr %.1269375, i64 4
  %exitcond452.not.1 = icmp eq i32 %i.acq, %4
  br i1 %exitcond452.not.1, label %.loopexit, label %.lr.ph378, !llvm.loop !231

.lr.ph374:                                        ; preds = %.preheader346, %.lr.ph374
  %.2373 = phi ptr [ %i.adu, %.lr.ph374 ], [ %i.em, %.preheader346 ] ; 5 uses
  %.5256372 = phi i32 [ %i.adt, %.lr.ph374 ], [ 0, %.preheader346 ]
  %.2270371 = phi ptr [ %i.adv, %.lr.ph374 ], [ %i.ed, %.preheader346 ] ; 7 uses
  %i.act = load i8, ptr %.2270371, align 1
  %i.acu = zext i8 %i.act to i16
  %i.acv = shl nuw i16 %i.acu, 8
  %i.acw = getelementptr inbounds nuw i8, ptr %.2270371, i64 1
  %i.acx = load i8, ptr %i.acw, align 1
  %i.acy = zext i8 %i.acx to i16
  %i.acz = or disjoint i16 %i.acv, %i.acy
  store i16 %i.acz, ptr %.2373, align 2
  %i.ada = getelementptr inbounds nuw i8, ptr %.2270371, i64 2
  %i.adb = load i8, ptr %i.ada, align 1
  %i.adc = zext i8 %i.adb to i16
  %i.add = shl nuw i16 %i.adc, 8
  %i.ade = getelementptr inbounds nuw i8, ptr %.2270371, i64 3
  %i.adf = load i8, ptr %i.ade, align 1
  %i.adg = zext i8 %i.adf to i16
  %i.adh = or disjoint i16 %i.add, %i.adg
  %i.adi = getelementptr inbounds nuw i8, ptr %.2373, i64 2
  store i16 %i.adh, ptr %i.adi, align 2
  %i.adj = getelementptr inbounds nuw i8, ptr %.2270371, i64 4
  %i.adk = load i8, ptr %i.adj, align 1
  %i.adl = zext i8 %i.adk to i16
  %i.adm = shl nuw i16 %i.adl, 8
  %i.adn = getelementptr inbounds nuw i8, ptr %.2270371, i64 5
  %i.ado = load i8, ptr %i.adn, align 1
  %i.adp = zext i8 %i.ado to i16
  %i.adq = or disjoint i16 %i.adm, %i.adp
  %i.adr = getelementptr inbounds nuw i8, ptr %.2373, i64 4
  store i16 %i.adq, ptr %i.adr, align 2
  %i.ads = getelementptr inbounds nuw i8, ptr %.2373, i64 6
  store i16 -1, ptr %i.ads, align 2
  %i.adt = add nuw i32 %.5256372, 1               ; 2 uses
  %i.adu = getelementptr inbounds nuw i8, ptr %.2373, i64 8
  %i.adv = getelementptr inbounds nuw i8, ptr %.2270371, i64 6
  %exitcond451.not = icmp eq i32 %i.adt, %4
  br i1 %exitcond451.not, label %.loopexit, label %.lr.ph374, !llvm.loop !232

.loopexit:                                        ; preds = %.lr.ph374, %.lr.ph378.prol.loopexit, %.lr.ph378, %.lr.ph382, %.lr.ph.i308.prol.loopexit, %.lr.ph.i308, %.lr.ph32.i314, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.lr.ph32.i.prol.loopexit, %.lr.ph32.i, %middle.block543, %middle.block521, %middle.block, %.preheader346, %.preheader344, %.preheader342, %.loopexit335, %bb.ah, %bb.af, %.preheader26.i, %.preheader.i, %.preheader26.i306, %.preheader.i312
  %indvars.iv.next458 = add nuw nsw i64 %indvars.iv457, 1 ; 2 uses
  %exitcond461.not = icmp eq i64 %indvars.iv.next458, %wide.trip.count460
  br i1 %exitcond461.not, label %._crit_edge, label %bb.n, !llvm.loop !233

._crit_edge:                                      ; preds = %.loopexit, %bb.m
  tail call void @free(ptr noundef %i.as) #47
  br label %bb.al

bb.ak:                                            ; preds = %bb.n
  %i.adw = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.30, ptr %i.adw, align 8
  tail call void @free(ptr noundef %i.as) #47
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %._crit_edge, %bb.l, %bb.j, %_ZL21stbi__mad2sizes_validiii.exit.thread, %_ZL21stbi__mad3sizes_validiiii.exit.thread, %bb.d
  %.0 = phi i32 [ 0, %bb.j ], [ 0, %bb.d ], [ 0, %_ZL21stbi__mad3sizes_validiiii.exit.thread ], [ 0, %bb.l ], [ 0, %_ZL21stbi__mad2sizes_validiii.exit.thread ], [ 0, %bb.ak ], [ 1, %._crit_edge ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #36

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #37

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL20stbi__zbuild_huffmanP14stbi__zhuffmanPKhi(ptr noundef nonnull captures(none) initializes((0, 1024)) %0, ptr noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #38 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 4 uses
  %i.b = alloca [17 x i32], align 16              ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(68) %i.b, i8 0, i64 68, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %0, i8 0, i64 1024, i1 false)
  %i.c = icmp sgt i32 %2, 0                       ; 2 uses
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.d = icmp ult i32 %2, 4
  br i1 %i.d, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.f = load i8, ptr %i.e, align 1
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 4
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.h, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.m = load i8, ptr %i.l, align 1
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.n ; 2 uses
  %i.p = load i32, ptr %i.o, align 4
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.o, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.t = load i8, ptr %i.s, align 1
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.u ; 2 uses
  %i.w = load i32, ptr %i.v, align 4
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 3
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ab ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ac, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !234

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  %lcmp.mod164 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod164)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.epil
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ah ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ai, align 4
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !235

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  %i.al = icmp sgt i32 %.pre, 2
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = icmp sgt i32 %i.an, 4
  %or.cond103 = select i1 %i.al, i1 true, i1 %i.ao
  br i1 %or.cond103, label %.loopexit70.sink.split, label %bb.b

._crit_edge.thread:                               ; preds = %bb.a
  %.old = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.old101 = load i32, ptr %.old, align 8
  %.old102 = icmp sgt i32 %.old101, 4
  br i1 %.old102, label %.loopexit70.sink.split, label %bb.b

bb.b:                                             ; preds = %._crit_edge, %._crit_edge.thread
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.aq = load <8 x i32>, ptr %i.ap, align 4
  %.fr = freeze <8 x i32> %i.aq
  %i.ar = icmp sgt <8 x i32> %.fr, <i32 8, i32 16, i32 32, i32 64, i32 128, i32 256, i32 512, i32 1024> ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.at = load <4 x i32>, ptr %i.as, align 4
  %.fr163 = freeze <4 x i32> %i.at
  %i.au = icmp sgt <4 x i32> %.fr163, <i32 2048, i32 4096, i32 8192, i32 16384>
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = icmp sgt i32 %i.aw, 32768
  %i.ay = shufflevector <8 x i1> %i.ar, <8 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op = or <4 x i1> %i.ay, %i.au
  %i.az = shufflevector <4 x i1> %rdx.op, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ba = shufflevector <8 x i1> %i.az, <8 x i1> %i.ar, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.bb = bitcast <8 x i1> %i.ba to i8
  %i.bc = icmp ne i8 %i.bb, 0
  %op.rdx = select i1 %i.bc, i1 true, i1 %i.ax
  br i1 %op.rdx, label %.loopexit70.sink.split, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1124 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1056
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.d
  %indvars.iv87 = phi i64 [ 1, %.preheader ], [ %indvars.iv.next88, %bb.d ] ; 8 uses
  %.06474 = phi i32 [ 0, %.preheader ], [ %i.bv, %bb.d ] ; 2 uses
  %.06573 = phi i32 [ 0, %.preheader ], [ %i.bu, %bb.d ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv87
  store i32 %.06573, ptr %i.bg, align 4
  %i.bh = trunc i32 %.06573 to i16
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %indvars.iv87
  store i16 %i.bh, ptr %i.bi, align 2
  %i.bj = trunc i32 %.06474 to i16
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %indvars.iv87
  store i16 %i.bj, ptr %i.bk, align 2
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv87
  %i.bm = load i32, ptr %i.bl, align 4            ; 3 uses
  %i.bn = add nsw i32 %i.bm, %.06573              ; 3 uses
  %.not68 = icmp ne i32 %i.bm, 0
  %i.bo = trunc nuw nsw i64 %indvars.iv87 to i32
  %i.bp = shl nuw nsw i32 1, %i.bo
  %.not69.not = icmp sgt i32 %i.bn, %i.bp
  %or.cond = select i1 %.not68, i1 %.not69.not, i1 false
  br i1 %or.cond, label %.loopexit70.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bq = trunc i64 %indvars.iv87 to i32
  %i.br = sub i32 16, %i.bq
  %i.bs = shl i32 %i.bn, %i.br
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv87
  store i32 %i.bs, ptr %i.bt, align 4
  %i.bu = shl i32 %i.bn, 1
  %i.bv = add nsw i32 %i.bm, %.06474
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %exitcond90.not = icmp eq i64 %indvars.iv.next88, 16
  br i1 %exitcond90.not, label %bb.e, label %bb.c, !llvm.loop !236

bb.e:                                             ; preds = %bb.d
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i32 65536, ptr %i.bw, align 4
  br i1 %i.c, label %.lr.ph81, label %.loopexit70

.lr.ph81:                                         ; preds = %bb.e
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1156
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 1444
  %wide.trip.count97 = zext nneg i32 %2 to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph81, %bb.i
  %indvars.iv94 = phi i64 [ 0, %.lr.ph81 ], [ %indvars.iv.next95, %bb.i ] ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv94
  %i.ca = load i8, ptr %i.bz, align 1             ; 5 uses
  %i.cb = zext i8 %i.ca to i32                    ; 3 uses
  %.not = icmp eq i8 %i.ca, 0
  br i1 %.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cc = zext i8 %i.ca to i64                    ; 3 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cc ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4            ; 3 uses
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %i.cc
  %i.cg = load i16, ptr %i.cf, align 2
  %i.ch = zext i16 %i.cg to i32
  %i.ci = sub i32 %i.ce, %i.ch
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %i.cc
  %i.ck = load i16, ptr %i.cj, align 2
  %i.cl = zext i16 %i.ck to i32
  %i.cm = add nsw i32 %i.ci, %i.cl
  %i.cn = shl nuw nsw i32 %i.cb, 9
  %i.co = trunc nuw nsw i64 %indvars.iv94 to i32
  %i.cp = or i32 %i.cn, %i.co
  %i.cq = trunc i32 %i.cp to i16
  %i.cr = sext i32 %i.cm to i64                   ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %i.bx, i64 %i.cr
  store i8 %i.ca, ptr %i.cs, align 1
  %i.ct = trunc i64 %indvars.iv94 to i16
  %i.cu = getelementptr inbounds [2 x i8], ptr %i.by, i64 %i.cr
  store i16 %i.ct, ptr %i.cu, align 2
  %i.cv = icmp ult i8 %i.ca, 10
  br i1 %i.cv, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %bb.g
  %trunc.i.i = trunc i32 %i.ce to i16
  %rev.i.i = tail call i16 @llvm.bitreverse.i16(i16 %trunc.i.i)
  %i.cw = zext i16 %rev.i.i to i32
  %i.cx = sub nuw nsw i32 16, %i.cb
  %i.cy = lshr i32 %i.cw, %i.cx
  %i.cz = shl nuw nsw i32 1, %i.cb
  %i.da = zext nneg i32 %i.cy to i64
  %i.db = zext nneg i32 %i.cz to i64
  br label %bb.h

bb.h:                                             ; preds = %iter.check, %bb.h
  %indvars.iv91 = phi i64 [ %i.da, %iter.check ], [ %indvars.iv.next92, %bb.h ] ; 2 uses
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv91
  store i16 %i.cq, ptr %i.dc, align 2
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, %i.db ; 2 uses
  %i.dd = icmp samesign ult i64 %indvars.iv.next92, 512
  br i1 %i.dd, label %bb.h, label %.loopexit, !llvm.loop !237

.loopexit:                                        ; preds = %bb.h, %bb.g
  %i.de = add nsw i32 %i.ce, 1
  store i32 %i.de, ptr %i.cd, align 4
  br label %bb.i

bb.i:                                             ; preds = %.loopexit, %bb.f
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1 ; 2 uses
  %exitcond98.not = icmp eq i64 %indvars.iv.next95, %wide.trip.count97
  br i1 %exitcond98.not, label %.loopexit70, label %bb.f, !llvm.loop !238

.loopexit70.sink.split:                           ; preds = %bb.c, %._crit_edge, %._crit_edge.thread, %bb.b
  %.str.39.sink = phi ptr [ @.str.38, %._crit_edge ], [ @.str.38, %bb.b ], [ @.str.38, %._crit_edge.thread ], [ @.str.39, %bb.c ]
  %i.df = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr %.str.39.sink, ptr %i.df, align 8
  br label %.loopexit70

.loopexit70:                                      ; preds = %bb.i, %.loopexit70.sink.split, %bb.e
  %.062 = phi i32 [ 1, %bb.e ], [ 0, %.loopexit70.sink.split ], [ 1, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47
  ret i32 %.062
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #39

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #40

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @acosf(float noundef) local_unnamed_addr #36

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #36

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNSt8_Rb_treeI11aiLogStreamSt4pairIKS0_PN6Assimp9LogStreamEESt10_Select1stIS6_ENS3_5mpredESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS2_EESG_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #46 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.c = load i64, ptr %3, align 8
  %i.d = inttoptr i64 %i.c to ptr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr null, ptr %i.e, align 8
  %i.f = invoke { ptr, ptr } @_ZNSt8_Rb_treeI11aiLogStreamSt4pairIKS0_PN6Assimp9LogStreamEESt10_Select1stIS6_ENS3_5mpredESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.b unwind label %_ZNSt8_Rb_treeI11aiLogStreamSt4pairIKS0_PN6Assimp9LogStreamEESt10_Select1stIS6_ENS3_5mpredESaIS6_EE10_Auto_nodeD2Ev.exit ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { ptr, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { ptr, ptr } %i.f, 1        ; 4 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp ne ptr %i.g, null
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.j
  br i1 %or.cond.i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.l = load <2 x ptr>, ptr %i.b, align 8
  %i.m = load <2 x ptr>, ptr %i.k, align 8
  %i.n = icmp ult <2 x ptr> %i.l, %i.m            ; 2 uses
  %i.o = extractelement <2 x i1> %i.n, i64 0
  %i.p = extractelement <2 x i1> %i.n, i64 1
  %i.q = select i1 %i.o, i1 %i.p, i1 false
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.r = phi i1 [ %i.q, %bb.d ], [ true, %bb.c ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.r, ptr noundef nonnull %i.a, ptr noundef nonnull %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.i) #47
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8
  %i.u = add i64 %i.t, 1
  store i64 %i.u, ptr %i.s, align 8
  br label %_ZNSt8_Rb_treeI11aiLogStreamSt4pairIKS0_PN6Assimp9LogStreamEESt10_Select1stIS6_ENS3_5mpredESaIS6_EE10_Auto_nodeD2Ev.exit9

_ZNSt8_Rb_treeI11aiLogStreamSt4pairIKS0_PN6Assimp9LogStreamEESt10_Select1stIS6_ENS3_5mpredESaIS6_EE10_Auto_nodeD2Ev.exit: ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #45
  resume { ptr, i32 } %i.v

bb.e:                                             ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #45
  br label %_ZNSt8_Rb_treeI11aiLogStreamSt4pairIKS0_PN6Assimp9LogStreamEESt10_Select1stIS6_ENS3_5mpredESaIS6_EE10_Auto_nodeD2Ev.exit9

_ZNSt8_Rb_treeI11aiLogStreamSt4pairIKS0_PN6Assimp9LogStreamEESt10_Select1stIS6_ENS3_5mpredESaIS6_EE10_Auto_nodeD2Ev.exit9: ; preds = %.thread, %bb.e
  %.sroa.013.017 = phi ptr [ %i.a, %.thread ], [ %i.g, %bb.e ]
  ret ptr %.sroa.013.017
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, ptr } @_ZNSt8_Rb_treeI11aiLogStreamSt4pairIKS0_PN6Assimp9LogStreamEESt10_Select1stIS6_ENS3_5mpredESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load <2 x ptr>, ptr %i.g, align 8
  %i.i = load <2 x ptr>, ptr %2, align 8
  %i.j = icmp ult <2 x ptr> %i.h, %i.i            ; 2 uses
  %i.k = extractelement <2 x i1> %i.j, i64 0
  %i.l = extractelement <2 x i1> %i.j, i64 1
  %i.m = select i1 %i.k, i1 %i.l, i1 false
  br i1 %i.m, label %_ZNSt8_Rb_treeI11aiLogStreamSt4pairIKS0_PN6Assimp9LogStreamEESt10_Select1stIS6_ENS3_5mpredESaIS6_EE24_M_get_insert_unique_posERS2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i = load ptr, ptr %i.n, align 8         ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.o = load ptr, ptr %2, align 8                ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.e ] ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = icmp ult ptr %i.o, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %.02024.i, i64 40
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = icmp ult ptr %i.q, %i.v
  %i.x = select i1 %i.t, i1 %i.w, i1 false        ; 2 uses
  %.in.v.i = select i1 %i.x, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8         ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !239

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.x, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = icmp eq ptr %.019.lcssa29.i, %i.z
  br i1 %i.aa, label %_ZNSt8_Rb_treeI11aiLogStreamSt4pairIKS0_PN6Assimp9LogStreamEESt10_Select1stIS6_ENS3_5mpredESaIS6_EE24_M_get_insert_unique_posERS2_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i
  %i.ab = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #49 ; 3 uses
  %.phi.trans.insert84 = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %.pre85 = load ptr, ptr %.phi.trans.insert84, align 8
  %.pre86 = load ptr, ptr %2, align 8
  %.phi.trans.insert87 = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %.pre88 = load ptr, ptr %.phi.trans.insert87, align 8
  %.phi.trans.insert89 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre90 = load ptr, ptr %.phi.trans.insert89, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.ac = phi ptr [ %.pre90, %bb.f ], [ %i.q, %._crit_edge.i ]
  %i.ad = phi ptr [ %.pre88, %bb.f ], [ %i.v, %._crit_edge.i ]
  %i.ae = phi ptr [ %.pre86, %bb.f ], [ %i.o, %._crit_edge.i ]
  %i.af = phi ptr [ %.pre85, %bb.f ], [ %i.s, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.ab, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %i.ag = icmp ult ptr %i.af, %i.ae
  %i.ah = icmp ult ptr %i.ad, %i.ac
  %i.ai = select i1 %i.ag, i1 %i.ah, i1 false     ; 2 uses
  %spec.select.i = select i1 %i.ai, ptr null, ptr %.sroa.05.0.i
  %spec.select21.i = select i1 %i.ai, ptr %.019.lcssa28.i, ptr null
  br label %_ZNSt8_Rb_treeI11aiLogStreamSt4pairIKS0_PN6Assimp9LogStreamEESt10_Select1stIS6_ENS3_5mpredESaIS6_EE24_M_get_insert_unique_posERS2_.exit

bb.h:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ak = load ptr, ptr %2, align 8               ; 8 uses
  %i.al = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.am = icmp ult ptr %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ao = load ptr, ptr %i.an, align 8            ; 8 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.ar = icmp ult ptr %i.ao, %i.aq
  %i.as = select i1 %i.am, i1 %i.ar, i1 false
  br i1 %i.as, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.au = load ptr, ptr %i.at, align 8            ; 4 uses
  %i.av = icmp eq ptr %i.au, %1
  br i1 %i.av, label %_ZNSt8_Rb_treeI11aiLogStreamSt4pairIKS0_PN6Assimp9LogStreamEESt10_Select1stIS6_ENS3_5mpredESaIS6_EE24_M_get_insert_unique_posERS2_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #49 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = icmp ult ptr %i.ay, %i.ak
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = icmp ult ptr %i.bb, %i.ao
  %i.bd = select i1 %i.az, i1 %i.bc, i1 false
  br i1 %i.bd, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = icmp eq ptr %i.bf, null                 ; 2 uses
  %spec.select = select i1 %i.bg, ptr null, ptr %1
  %spec.select71 = select i1 %i.bg, ptr %i.aw, ptr %1
  br label %_ZNSt8_Rb_treeI11aiLogStreamSt4pairIKS0_PN6Assimp9LogStreamEESt10_Select1stIS6_ENS3_5mpredESaIS6_EE24_M_get_insert_unique_posERS2_.exit

bb.l:                                             ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i10 = load ptr, ptr %i.bh, align 8      ; 2 uses
  %.not23.i11 = icmp eq ptr %.02022.i10, null
  br i1 %.not23.i11, label %._crit_edge.thread.i27, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.l, %.lr.ph.i12
  %.02024.i13 = phi ptr [ %.020.i16, %.lr.ph.i12 ], [ %.02022.i10, %bb.l ] ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8            ; 2 uses
end_hunk_5
begin_hunk_6_@_ZNSt8_Rb_treeIjSt4pairIKj12aiMatrix4x4tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS1_:bb.a
bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 4
  %i.i = load i32, ptr %2, align 4
  %i.j = icmp ult i32 %i.h, %i.i
  br i1 %i.j, label %_ZNSt8_Rb_treeIjSt4pairIKj12aiMatrix4x4tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE24_M_get_insert_unique_posERS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i = load ptr, ptr %i.k, align 8         ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.l = load i32, ptr %2, align 4                ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.e ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.n = load i32, ptr %i.m, align 4              ; 2 uses
  %i.o = icmp ult i32 %i.l, %i.n                  ; 2 uses
  %.in.v.i = select i1 %i.o, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8         ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !243

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.o, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = icmp eq ptr %.019.lcssa29.i, %i.q
  br i1 %i.r, label %_ZNSt8_Rb_treeIjSt4pairIKj12aiMatrix4x4tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE24_M_get_insert_unique_posERS1_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #49 ; 2 uses
  %.phi.trans.insert80 = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre81 = load i32, ptr %.phi.trans.insert80, align 4
  %.pre82 = load i32, ptr %2, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.t = phi i32 [ %.pre82, %bb.f ], [ %i.l, %._crit_edge.i ]
  %i.u = phi i32 [ %.pre81, %bb.f ], [ %i.n, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.s, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %i.v = icmp ult i32 %i.u, %i.t                  ; 2 uses
  %spec.select.i = select i1 %i.v, ptr null, ptr %.sroa.05.0.i
  %spec.select21.i = select i1 %i.v, ptr %.019.lcssa28.i, ptr null
  br label %_ZNSt8_Rb_treeIjSt4pairIKj12aiMatrix4x4tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE24_M_get_insert_unique_posERS1_.exit

bb.h:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load i32, ptr %2, align 4                ; 8 uses
  %i.y = load i32, ptr %i.w, align 4              ; 2 uses
  %i.z = icmp ult i32 %i.x, %i.y
  br i1 %i.z, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8            ; 4 uses
  %i.ac = icmp eq ptr %i.ab, %1
  br i1 %i.ac, label %_ZNSt8_Rb_treeIjSt4pairIKj12aiMatrix4x4tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE24_M_get_insert_unique_posERS1_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #49 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = icmp ult i32 %i.af, %i.x
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  %spec.select = select i1 %i.aj, ptr null, ptr %1
  %spec.select71 = select i1 %i.aj, ptr %i.ad, ptr %1
  br label %_ZNSt8_Rb_treeIjSt4pairIKj12aiMatrix4x4tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE24_M_get_insert_unique_posERS1_.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i10 = load ptr, ptr %i.ak, align 8      ; 2 uses
  %.not23.i11 = icmp eq ptr %.02022.i10, null
  br i1 %.not23.i11, label %._crit_edge.thread.i27, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.l, %.lr.ph.i12
  %.02024.i13 = phi ptr [ %.020.i16, %.lr.ph.i12 ], [ %.02022.i10, %bb.l ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 32
  %i.am = load i32, ptr %i.al, align 4            ; 2 uses
  %i.an = icmp ult i32 %i.x, %i.am                ; 2 uses
  %.in.v.i14 = select i1 %i.an, i64 16, i64 24
  %.in.i15 = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 %.in.v.i14
  %.020.i16 = load ptr, ptr %.in.i15, align 8     ; 2 uses
  %.not.i17 = icmp eq ptr %.020.i16, null
  br i1 %.not.i17, label %._crit_edge.i18, label %.lr.ph.i12, !llvm.loop !243

._crit_edge.i18:                                  ; preds = %.lr.ph.i12
  br i1 %i.an, label %._crit_edge.thread.i27, label %bb.n

._crit_edge.thread.i27:                           ; preds = %._crit_edge.i18, %bb.l
  %.019.lcssa29.i28 = phi ptr [ %.02024.i13, %._crit_edge.i18 ], [ %i.a, %bb.l ] ; 4 uses
  %i.ao = icmp eq ptr %.019.lcssa29.i28, %i.ab
  br i1 %i.ao, label %_ZNSt8_Rb_treeIjSt4pairIKj12aiMatrix4x4tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE24_M_get_insert_unique_posERS1_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i27
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i28) #49 ; 2 uses
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.pre79 = load i32, ptr %.phi.trans.insert78, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i18
  %i.aq = phi i32 [ %.pre79, %bb.m ], [ %i.am, %._crit_edge.i18 ]
  %.019.lcssa28.i19 = phi ptr [ %.019.lcssa29.i28, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %.sroa.05.0.i20 = phi ptr [ %i.ap, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %i.ar = icmp ult i32 %i.aq, %i.x                ; 2 uses
  %spec.select.i21 = select i1 %i.ar, ptr null, ptr %.sroa.05.0.i20
  %spec.select21.i22 = select i1 %i.ar, ptr %.019.lcssa28.i19, ptr null
  br label %_ZNSt8_Rb_treeIjSt4pairIKj12aiMatrix4x4tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE24_M_get_insert_unique_posERS1_.exit

bb.o:                                             ; preds = %bb.h
  %i.as = icmp ult i32 %i.y, %i.x
  br i1 %i.as, label %bb.p, label %_ZNSt8_Rb_treeIjSt4pairIKj12aiMatrix4x4tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE24_M_get_insert_unique_posERS1_.exit

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.av = icmp eq ptr %i.au, %1
  br i1 %i.av, label %_ZNSt8_Rb_treeIjSt4pairIKj12aiMatrix4x4tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE24_M_get_insert_unique_posERS1_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #49 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = icmp ult i32 %i.x, %i.ay
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = icmp eq ptr %i.bb, null                 ; 2 uses
  %spec.select72 = select i1 %i.bc, ptr null, ptr %i.aw
  %spec.select73 = select i1 %i.bc, ptr %1, ptr %i.aw
  br label %_ZNSt8_Rb_treeIjSt4pairIKj12aiMatrix4x4tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE24_M_get_insert_unique_posERS1_.exit

bb.s:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i30 = load ptr, ptr %i.bd, align 8      ; 2 uses
  %.not23.i31 = icmp eq ptr %.02022.i30, null
  br i1 %.not23.i31, label %._crit_edge.thread.i47, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.s, %.lr.ph.i32
  %.02024.i33 = phi ptr [ %.020.i36, %.lr.ph.i32 ], [ %.02022.i30, %bb.s ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 32
  %i.bf = load i32, ptr %i.be, align 4            ; 2 uses
  %i.bg = icmp ult i32 %i.x, %i.bf                ; 2 uses
  %.in.v.i34 = select i1 %i.bg, i64 16, i64 24
  %.in.i35 = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 %.in.v.i34
  %.020.i36 = load ptr, ptr %.in.i35, align 8     ; 2 uses
  %.not.i37 = icmp eq ptr %.020.i36, null
  br i1 %.not.i37, label %._crit_edge.i38, label %.lr.ph.i32, !llvm.loop !243

._crit_edge.i38:                                  ; preds = %.lr.ph.i32
  br i1 %i.bg, label %._crit_edge.thread.i47, label %bb.u

._crit_edge.thread.i47:                           ; preds = %._crit_edge.i38, %bb.s
  %.019.lcssa29.i48 = phi ptr [ %.02024.i33, %._crit_edge.i38 ], [ %i.a, %bb.s ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = icmp eq ptr %.019.lcssa29.i48, %i.bi
  br i1 %i.bj, label %_ZNSt8_Rb_treeIjSt4pairIKj12aiMatrix4x4tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE24_M_get_insert_unique_posERS1_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i47
  %i.bk = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i48) #49 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i38
  %i.bl = phi i32 [ %.pre, %bb.t ], [ %i.bf, %._crit_edge.i38 ]
  %.019.lcssa28.i39 = phi ptr [ %.019.lcssa29.i48, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %.sroa.05.0.i40 = phi ptr [ %i.bk, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %i.bm = icmp ult i32 %i.bl, %i.x                ; 2 uses
  %spec.select.i41 = select i1 %i.bm, ptr null, ptr %.sroa.05.0.i40
  %spec.select21.i42 = select i1 %i.bm, ptr %.019.lcssa28.i39, ptr null
  br label %_ZNSt8_Rb_treeIjSt4pairIKj12aiMatrix4x4tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE24_M_get_insert_unique_posERS1_.exit

_ZNSt8_Rb_treeIjSt4pairIKj12aiMatrix4x4tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE24_M_get_insert_unique_posERS1_.exit: ; preds = %bb.u, %._crit_edge.thread.i47, %bb.n, %._crit_edge.thread.i27, %bb.g, %._crit_edge.thread.i, %bb.r, %bb.k, %bb.o, %bb.p, %bb.i, %bb.c
  %.sroa.070.2 = phi ptr [ null, %bb.p ], [ %spec.select, %bb.k ], [ null, %bb.c ], [ %spec.select72, %bb.r ], [ null, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i27 ], [ %spec.select.i, %bb.g ], [ %spec.select.i21, %bb.n ], [ %spec.select.i41, %bb.u ], [ null, %._crit_edge.thread.i47 ]
  %.sroa.12.2 = phi ptr [ %i.au, %bb.p ], [ %spec.select71, %bb.k ], [ %i.f, %bb.c ], [ %spec.select73, %bb.r ], [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ null, %bb.o ], [ %.019.lcssa29.i28, %._crit_edge.thread.i27 ], [ %spec.select21.i, %bb.g ], [ %spec.select21.i22, %bb.n ], [ %spec.select21.i42, %bb.u ], [ %.019.lcssa29.i48, %._crit_edge.thread.i47 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.070.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #36

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #40

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #36

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @asinf(float noundef) local_unnamed_addr #36

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #36

; Function Attrs: nofree nounwind uwtable
define internal void @_GLOBAL__sub_I_Assimp.cpp() #42 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN6AssimpL17gActiveLogStreamsE, i64 8), align 8
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZN6AssimpL17gActiveLogStreamsE, i64 16), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN6AssimpL17gActiveLogStreamsE, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZN6AssimpL17gActiveLogStreamsE, i64 24), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN6AssimpL17gActiveLogStreamsE, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZN6AssimpL17gActiveLogStreamsE, i64 32), align 8
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN6AssimpL17gActiveLogStreamsE, i64 40), align 8
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3mapI11aiLogStreamPN6Assimp9LogStreamENS1_5mpredESaISt4pairIKS0_S3_EEED2Ev, ptr nonnull @_ZN6AssimpL17gActiveLogStreamsE, ptr nonnull @__dso_handle) #47 ; 0 uses
  store ptr @_ZN6AssimpL18gPredefinedStreamsB5cxx11E, ptr getelementptr inbounds nuw (i8, ptr @_ZN6AssimpL18gPredefinedStreamsB5cxx11E, i64 8), align 8
  store ptr @_ZN6AssimpL18gPredefinedStreamsB5cxx11E, ptr @_ZN6AssimpL18gPredefinedStreamsB5cxx11E, align 8
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN6AssimpL18gPredefinedStreamsB5cxx11E, i64 16), align 8
  %i.b = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1110_List_baseIPN6Assimp9LogStreamESaIS3_EED2Ev, ptr nonnull @_ZN6AssimpL18gPredefinedStreamsB5cxx11E, ptr nonnull @__dso_handle) #47 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN6AssimpL16gLastErrorStringB5cxx11E, i64 16), ptr @_ZN6AssimpL16gLastErrorStringB5cxx11E, align 8
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN6AssimpL16gLastErrorStringB5cxx11E, i64 8), align 8
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN6AssimpL16gLastErrorStringB5cxx11E, i64 16), align 8
  %i.c = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN6AssimpL16gLastErrorStringB5cxx11E, ptr nonnull @__dso_handle) #47 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #43

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #40

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #40

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.ctpop.i8(i8) #40

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #40

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bitreverse.i16(i16) #40

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.abs.i8(i8, i1 immarg) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #40

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #40

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #40

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #40

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #40

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.umin.v16i32(<16 x i32>, <16 x i32>) #40

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.umax.v16i32(<16 x i32>, <16 x i32>) #40

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #40

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #40

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nounwind memory(none) }
attributes #32 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #41 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #42 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #43 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #44 = { noreturn nounwind }
attributes #45 = { builtin nounwind }
attributes #46 = { builtin allocsize(0) }
attributes #47 = { nounwind }
attributes #48 = { noreturn }
attributes #49 = { nounwind willreturn memory(read) }
attributes #50 = { nounwind allocsize(0) }
attributes #51 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = distinct !{!5, !4}
!6 = distinct !{!6, !4}
!7 = distinct !{!7, !4}
!8 = distinct !{!8, !4}
!9 = distinct !{!9, !4}
!10 = distinct !{!10, !4}
!11 = distinct !{!11, !4}
!12 = !{!13}
!13 = distinct !{!13, !14, !"_ZNK12aiMatrix3x3tIfEmlERKS0_: argument 0"}
!14 = distinct !{!14, !"_ZNK12aiMatrix3x3tIfEmlERKS0_"}
!15 = distinct !{!15, !4}
!16 = !{!17}
!17 = distinct !{!17, !18, !"_ZNK13aiQuaterniontIfE9GetMatrixEv: argument 0"}
!18 = distinct !{!18, !"_ZNK13aiQuaterniontIfE9GetMatrixEv"}
!19 = !{!20}
!20 = distinct !{!20, !21, !"_ZNK13aiQuaterniontIfE9GetMatrixEv: argument 0"}
!21 = distinct !{!21, !"_ZNK13aiQuaterniontIfE9GetMatrixEv"}
!22 = !{!23}
!23 = distinct !{!23, !24, !"_ZNK12aiMatrix4x4tIfEplERKS0_: argument 0"}
!24 = distinct !{!24, !"_ZNK12aiMatrix4x4tIfEplERKS0_"}
!25 = distinct !{ptr @assimp_stbi_load_from_file, null, null, null}
!26 = distinct !{null, null, null}
!27 = distinct !{!27, !4, !28, !29}
!28 = !{!"llvm.loop.isvectorized", i32 1}
!29 = !{!"llvm.loop.unroll.runtime.disable"}
!30 = !{!"branch_weights", i32 4, i32 12}
!31 = distinct !{!31, !4, !28, !29}
!32 = distinct !{!32, !4, !29, !28}
!33 = distinct !{!33, !4}
!34 = distinct !{!34, !4}
!35 = distinct !{!35, !4, !28, !29}
!36 = distinct !{!36, !4, !28, !29}
!37 = distinct !{!37, !4, !29, !28}
!38 = distinct !{ptr @assimp_stbi_load_from_file_16, null, null, null}
!39 = distinct !{null, null}
!40 = distinct !{!40, !4}
!41 = distinct !{!41, !4}
!42 = distinct !{!42, !4, !28}
!43 = distinct !{ptr @assimp_stbi_loadf_from_file, null, null, null}
!44 = distinct !{!44, !4}
!45 = distinct !{!45, !4}
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.unroll.disable"}
!48 = distinct !{!48, !4}
!49 = distinct !{!49, !4}
!50 = distinct !{!50, !4}
!51 = distinct !{!51, !4}
!52 = distinct !{!52, !4}
!53 = distinct !{!53, !4, !28, !29}
!54 = !{!"branch_weights", i32 4, i32 28}
!55 = distinct !{!55, !4, !28, !29}
!56 = distinct !{!56, !47}
!57 = distinct !{!57, !4, !28}
!58 = distinct !{!58, !4}
!59 = distinct !{!59, !4}
!60 = distinct !{!60, !4}
!61 = distinct !{!61, !4}
!62 = distinct !{!62, !4}
!63 = !{}
!64 = !{i64 8}
!65 = distinct !{!65, !4}
!66 = distinct !{!66, !4}
!67 = distinct !{!67, !4}
!68 = distinct !{!68, !4}
!69 = distinct !{!69, !4}
!70 = distinct !{!70, !4}
!71 = distinct !{!71, !4}
!72 = distinct !{!72, !4}
!73 = distinct !{!73, !4}
!74 = distinct !{!74, !4}
!75 = distinct !{!75, !4}
!76 = distinct !{!76, !4}
!77 = distinct !{!77, !4}
!78 = !{ptr @_ZN23LogToCallbackRedirectorD2Ev}
!79 = distinct !{null}
!80 = distinct !{!80, !4}
!81 = distinct !{null, null, ptr @_ZL10stbi__get8P13stbi__context, null}
!82 = !{!83}
!83 = distinct !{!83, !84}
!84 = distinct !{!84, !"LVerDomain"}
!85 = !{!86}
!86 = distinct !{!86, !84}
!87 = distinct !{!87, !4, !28, !29}
!88 = !{!89}
!89 = distinct !{!89, !90}
!90 = distinct !{!90, !"LVerDomain"}
!91 = !{!92}
!92 = distinct !{!92, !90}
!93 = distinct !{!93, !4, !28, !29}
!94 = distinct !{!94, !4, !28, !29}
!95 = !{!96}
!96 = distinct !{!96, !97}
!97 = distinct !{!97, !"LVerDomain"}
!98 = !{!99}
!99 = distinct !{!99, !97}
!100 = distinct !{!100, !4, !28, !29}
!101 = !{!102}
!102 = distinct !{!102, !103}
!103 = distinct !{!103, !"LVerDomain"}
!104 = !{!105}
!105 = distinct !{!105, !103}
!106 = distinct !{!106, !4, !28, !29}
!107 = distinct !{!107, !4, !28, !29}
!108 = distinct !{!108, !47}
!109 = !{!110}
!110 = distinct !{!110, !111}
!111 = distinct !{!111, !"LVerDomain"}
!112 = !{!113}
!113 = distinct !{!113, !111}
!114 = distinct !{!114, !4, !28, !29}
!115 = distinct !{!115, !4, !28, !29}
!116 = distinct !{!116, !47}
!117 = distinct !{!117, !47}
!118 = distinct !{!118, !4, !28, !29}
!119 = distinct !{!119, !4, !28, !29}
!120 = distinct !{!120, !4, !29, !28}
!121 = distinct !{!121, !4}
!122 = distinct !{!122, !4}
!123 = distinct !{!123, !4, !28}
!124 = distinct !{!124, !4}
!125 = distinct !{!125, !4}
!126 = distinct !{!126, !4}
!127 = distinct !{!127, !4, !28}
!128 = distinct !{!128, !4, !28}
!129 = distinct !{!129, !4, !28}
!130 = distinct !{!130, !4, !28}
!131 = distinct !{!131, !4}
!132 = distinct !{!132, !4}
!133 = distinct !{!133, !47}
!134 = distinct !{!134, !47}
!135 = !{!136}
!136 = distinct !{!136, !137}
!137 = distinct !{!137, !"LVerDomain"}
!138 = !{!139}
!139 = distinct !{!139, !137}
!140 = distinct !{!140, !4, !28, !29}
!141 = distinct !{!141, !47}
!142 = distinct !{!142, !47}
!143 = distinct !{!143, !4, !28, !29}
!144 = distinct !{!144, !4, !29, !28}
!145 = distinct !{!145, !4}
!146 = distinct !{!146, !4}
!147 = distinct !{!147, !4, !28}
!148 = distinct !{!148, !4}
!149 = distinct !{!149, !4}
!150 = distinct !{!150, !4}
!151 = distinct !{!151, !4}
!152 = distinct !{!152, !4}
!153 = distinct !{!153, !4}
!154 = distinct !{!154, !4}
!155 = distinct !{!155, !4}
!156 = distinct !{!156, !4}
!157 = distinct !{null}
!158 = distinct !{null, ptr @_ZL10stbi__get8P13stbi__context, null}
!159 = distinct !{null}
!160 = distinct !{ptr @_ZL10stbi__get8P13stbi__context, null}
!161 = distinct !{!161, !4}
!162 = distinct !{!162, !4}
!163 = distinct !{!163, !4}
!164 = distinct !{!164, !4}
!165 = distinct !{!165, !4}
!166 = distinct !{null}
!167 = distinct !{!167, !4}
!168 = distinct !{!168, !4}
!169 = distinct !{!169, !4}
!170 = distinct !{!170, !4}
!171 = distinct !{!171, !4}
!172 = distinct !{!172, !47}
!173 = distinct !{!173, !4}
!174 = !{!175}
!175 = distinct !{!175, !176}
!176 = distinct !{!176, !"LVerDomain"}
!177 = !{!178}
!178 = distinct !{!178, !176}
!179 = distinct !{!179, !4, !28, !29}
!180 = distinct !{!180, !47}
end_hunk_6
