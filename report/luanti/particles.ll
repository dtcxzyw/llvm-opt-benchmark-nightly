Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/particles?download=true
inline.NumInlined: 2466
inline.NumDeleted: 1098
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN14ParticleBuffer7releaseEt:bb.a
  %.not.i17.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i
  %i.ah = load ptr, ptr %i.p, align 8, !tbaa !111
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.ai, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.aj) #28
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i

_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i
  store ptr %i.ad, ptr %i.m, align 8, !tbaa !112
  store ptr %i.ag, ptr %i.n, align 8, !tbaa !110
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.ab
  store ptr %i.ak, ptr %i.p, align 8, !tbaa !111
  br label %_ZNSt6vectorItSaItEE9push_backERKt.exit

_ZNSt6vectorItSaItEE9push_backERKt.exit:          ; preds = %bb.b, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #27 ; 0 uses
  tail call void @_ZSt9terminatev() #30
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN8Particle14attachToBufferEP14ParticleBuffer(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(448) %0, ptr noundef nonnull initializes((256, 260)) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call i32 @_ZN14ParticleBuffer8allocateEv(ptr noundef nonnull align 8 dereferenceable(263) %1) ; 2 uses
  %i.b = icmp samesign ugt i32 %i.a, 65535        ; 2 uses
  br i1 %i.b, label %_ZNRSt8optionalItE5valueEv.exit, label %bb.b

_ZNRSt8optionalItE5valueEv.exit:                  ; preds = %bb.a
  %.sroa.0.0.extract.trunc = trunc i32 %i.a to i16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.sroa.0.0.extract.trunc, ptr %i.c, align 8, !tbaa !103
  store ptr %1, ptr %0, align 8, !tbaa !89
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZNRSt8optionalItE5valueEv.exit
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define dso_local range(i32 0, 131072) i32 @_ZN14ParticleBuffer8allocateEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(263) initializes((256, 260)) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::array", align 4       ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  store float 0.000000e+00, ptr %i.a, align 8, !tbaa !136
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !137
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !137  ; 2 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -2 ; 2 uses
  %i.h = load i16, ptr %i.g, align 2, !tbaa !107  ; 3 uses
  store ptr %i.g, ptr %i.d, align 8, !tbaa !110
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !106  ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef ptr %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j), !inline_history !1 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !48
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef ptr %i.q(ptr noundef nonnull align 8 dereferenceable(28) %i.n), !inline_history !1
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !106  ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !48
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef ptr %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.s), !inline_history !0 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !48
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef ptr %i.z(ptr noundef nonnull align 8 dereferenceable(28) %i.w), !inline_history !0
  %i.ab = zext i16 %i.h to i64                    ; 2 uses
  %.idx12 = mul nuw nsw i64 %i.ab, 160
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx12 ; 16 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.ac, i8 0, i64 24, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store i32 -1, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !93
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 28
  store <2 x float> zeroinitializer, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !53
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 36
  store i16 0, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !107
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false)
  %.sroa.4.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  store i32 -1, ptr %.sroa.4.0..sroa_idx.1, align 4, !tbaa !93
  %.sroa.5.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.ac, i64 68
  store <2 x float> zeroinitializer, ptr %.sroa.5.0..sroa_idx.1, align 4, !tbaa !53
  %.sroa.7.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.ac, i64 76
  store i16 0, ptr %.sroa.7.0..sroa_idx.1, align 4, !tbaa !107
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.ae, i8 0, i64 24, i1 false)
  %.sroa.4.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %i.ac, i64 104
  store i32 -1, ptr %.sroa.4.0..sroa_idx.2, align 4, !tbaa !93
  %.sroa.5.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %i.ac, i64 108
  store <2 x float> zeroinitializer, ptr %.sroa.5.0..sroa_idx.2, align 4, !tbaa !53
  %.sroa.7.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %i.ac, i64 116
  store i16 0, ptr %.sroa.7.0..sroa_idx.2, align 4, !tbaa !107
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  %.sroa.4.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  store i32 -1, ptr %.sroa.4.0..sroa_idx.3, align 4, !tbaa !93
  %.sroa.5.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %i.ac, i64 148
  store <2 x float> zeroinitializer, ptr %.sroa.5.0..sroa_idx.3, align 4, !tbaa !53
  %.sroa.7.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %i.ac, i64 156
  store i16 0, ptr %.sroa.7.0..sroa_idx.3, align 4, !tbaa !107
  %i.ag = shl i16 %i.h, 2                         ; 3 uses
  %.idx = mul nuw nsw i64 %i.ab, 12
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.idx ; 3 uses
  store i16 %i.ag, ptr %i.ah, align 2, !tbaa !107
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  %i.aj = insertelement <4 x i16> poison, i16 %i.ag, i64 0
  %i.ak = shufflevector <4 x i16> %i.aj, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.al = or disjoint <4 x i16> %i.ak, <i16 1, i16 2, i16 2, i16 3>
  store <4 x i16> %i.al, ptr %i.ai, align 2, !tbaa !107
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 10
  store i16 %i.ag, ptr %i.am, align 2, !tbaa !107
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 260 ; 3 uses
  %i.ao = load i16, ptr %i.an, align 4, !tbaa !138
  %i.ap = icmp ugt i16 %i.ao, 15999
  br i1 %i.ap, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(160) %1, i8 0, i64 160, i1 false)
  store i32 -1, ptr %i.aq, align 4, !tbaa !139
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 32
  store float 0.000000e+00, ptr %i.ar, align 4, !tbaa !140
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(38) %.ptr.1, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.as, align 4, !tbaa !139
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 72
  store float 0.000000e+00, ptr %i.at, align 4, !tbaa !140
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(38) %.ptr.2, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.au, align 4, !tbaa !139
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 112
  store float 0.000000e+00, ptr %i.av, align 4, !tbaa !140
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(38) %.ptr.3, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.aw, align 4, !tbaa !139
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 152
  store float 0.000000e+00, ptr %i.ax, align 4, !tbaa !140
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !106
  call void @_ZN5scene11CMeshBufferIN5video9S3DVertexEE6appendEPKvjPKtj(ptr noundef nonnull align 8 dereferenceable(200) %i.az, ptr noundef nonnull %1, i32 noundef 4, ptr noundef nonnull @_ZL12quad_indices, i32 noundef 6)
  %i.ba = load i16, ptr %i.an, align 4, !tbaa !138 ; 2 uses
  %i.bb = add i16 %i.ba, 1
  store i16 %i.bb, ptr %i.an, align 4, !tbaa !138
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.b, %bb.c
  %.sroa.018.0 = phi i16 [ undef, %bb.b ], [ %i.ba, %bb.c ], [ %i.h, %.preheader ]
  %.sroa.3.0 = phi i32 [ 0, %bb.b ], [ 65536, %bb.c ], [ 65536, %.preheader ]
  %.sroa.018.0.insert.ext = zext i16 %.sroa.018.0 to i32
  %.sroa.018.0.insert.insert = or disjoint i32 %.sroa.3.0, %.sroa.018.0.insert.ext
  ret i32 %.sroa.018.0.insert.insert
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8Particle4stepEfP17ClientEnvironment(ptr noundef nonnull align 8 dereferenceable(448) %0, float noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.ParticleParamTypes::VectorParameter.7", align 8 ; 5 uses
  %4 = alloca %"class.core::aabbox3d", align 16   ; 6 uses
  %5 = alloca %"class.core::vector3d", align 8    ; 8 uses
  %6 = alloca %"class.core::vector3d", align 8    ; 8 uses
  %7 = alloca %struct.collisionMoveResult, align 8 ; 9 uses
  %8 = alloca %"struct.ParticleParamTypes::Parameter", align 8 ; 5 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %9 = alloca %"struct.ParticleParamTypes::Parameter", align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.c = load float, ptr %i.b, align 4, !tbaa !90
  %i.d = fadd nsz float %1, %i.c
  store float %i.d, ptr %i.b, align 4, !tbaa !90
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 6 uses
  %i.h = load float, ptr %i.g, align 4, !tbaa !141 ; 4 uses
  %i.i = fcmp nsz olt float %i.h, 0.000000e+00    ; 2 uses
  %i.j = fneg nsz float %i.h
  %i.k = select nsz i1 %i.i, float %i.j, float %i.h ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.o = load float, ptr %i.n, align 8, !tbaa !141
  %i.p = fmul nsz float %1, %i.o
  %i.q = fmul nsz float %i.k, %i.p
  %i.r = fsub nsz float %i.k, %i.q                ; 5 uses
  %i.s = fcmp nsz une float %i.h, 0.000000e+00
  %i.t = uitofp i1 %i.s to float
  %i.u = select i1 %i.i, float -1.000000e+00, float %i.t
  %i.v = fmul nsz float %i.u, %i.r
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.y = load <2 x float>, ptr %i.e, align 4, !tbaa !53 ; 5 uses
  %i.z = fcmp nsz olt <2 x float> %i.y, zeroinitializer ; 2 uses
  %i.aa = fneg nsz <2 x float> %i.y
  %i.ab = select <2 x i1> %i.z, <2 x float> %i.aa, <2 x float> %i.y ; 2 uses
  %i.ac = load <2 x float>, ptr %i.m, align 8, !tbaa !53
  %i.ad = insertelement <2 x float> poison, float %1, i64 0
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.af = fmul nsz <2 x float> %i.ae, %i.ac
  %i.ag = fmul nsz <2 x float> %i.ab, %i.af
  %i.ah = fsub nsz <2 x float> %i.ab, %i.ag       ; 3 uses
  %i.ai = extractelement <2 x float> %i.y, i64 0
  %i.aj = fcmp nsz une float %i.ai, 0.000000e+00
  %i.ak = uitofp i1 %i.aj to float
  %i.al = extractelement <2 x float> %i.y, i64 1
  %i.am = fcmp nsz une float %i.al, 0.000000e+00
  %i.an = uitofp i1 %i.am to float
  %i.ao = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.ap = insertelement <2 x float> %i.ao, float %i.an, i64 1
  %i.aq = select <2 x i1> %i.z, <2 x float> splat (float -1.000000e+00), <2 x float> %i.ap
  %i.ar = fmul nsz <2 x float> %i.aq, %i.ah
  call void @_ZNK18ParticleParamTypes15RangedParameterINS_15VectorParameterIN4core8vector3dIfEELm3EEEE10pickWithinEv(ptr dead_on_unwind nonnull writable sret(%"struct.ParticleParamTypes::VectorParameter.7") align 8 %3, ptr noundef nonnull align 8 dereferenceable(52) %i.w)
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.x, align 8, !tbaa !53
  %.sroa.22.0.copyload.i = load float, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !53
  %i.as = fmul nsz <2 x float> %i.ae, %.sroa.01.0.copyload.i
  %i.at = fmul nsz float %1, %.sroa.22.0.copyload.i
  %i.au = fadd nsz <2 x float> %i.ar, %i.as       ; 4 uses
  %i.av = fadd nsz float %i.v, %i.at              ; 4 uses
  store <2 x float> %i.au, ptr %i.e, align 4, !tbaa !53
  store float %i.av, ptr %i.g, align 4, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.aw = load i8, ptr %i.l, align 8, !tbaa !457, !range !142, !noundef !143
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.az = load <1 x float>, ptr %i.ay, align 4
  %i.ba = shufflevector <1 x float> %i.az, <1 x float> poison, <2 x i32> zeroinitializer
  %i.bb = fmul nsz <2 x float> %i.ba, <float -5.000000e-01, float 5.000000e-01> ; 2 uses
  %i.bc = shufflevector <2 x float> %i.bb, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x float> %i.bc, ptr %4, align 16, !tbaa !53
  %.sroa.4.0..sroa_idx215 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bd = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  store <2 x float> %i.bd, ptr %.sroa.4.0..sroa_idx215, align 16, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bf = load <2 x float>, ptr %i.be, align 8, !tbaa !53
  %i.bg = fmul nsz <2 x float> %i.bf, splat (float 1.000000e+01)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bi = load float, ptr %i.bh, align 8, !tbaa !141
  %i.bj = fmul nsz float %i.bi, 1.000000e+01
  store <2 x float> %i.bg, ptr %5, align 8
  %.sroa.264.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %i.bj, ptr %.sroa.264.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.bk = fmul nsz <2 x float> %i.au, splat (float 1.000000e+01)
  %i.bl = fmul nsz float %i.av, 1.000000e+01
  store <2 x float> %i.bk, ptr %6, align 8
  %.sroa.260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %i.bl, ptr %.sroa.260.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !191 ; 2 uses
  %i.bo = icmp eq ptr %i.bn, null
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %spec.select = select i1 %i.bo, ptr null, ptr %i.bp
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.br = load <2 x float>, ptr %i.bq, align 8, !tbaa !53
  %i.bs = fmul nsz <2 x float> %i.br, splat (float 1.000000e+01)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bu = load float, ptr %i.bt, align 8, !tbaa !141
  %i.bv = fmul nsz float %i.bu, 1.000000e+01
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 98
  %i.bx = load i8, ptr %i.bw, align 2, !tbaa !458, !range !142, !noundef !143
  %i.by = trunc nuw i8 %i.bx to i1
  call void @_Z19collisionMoveSimpleP11EnvironmentP8IGameDefRKN4core8aabbox3dIfEEffPNS3_8vector3dIfEESA_S9_P12ActiveObjectb10StepUpMode(ptr dead_on_unwind nonnull writable sret(%struct.collisionMoveResult) align 8 %7, ptr noundef nonnull %2, ptr noundef %spec.select, ptr noundef nonnull align 4 dereferenceable(24) %4, float noundef 0.000000e+00, float noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %6, <2 x float> %i.bs, float %i.bv, ptr noundef null, i1 noundef zeroext %i.by, i8 noundef zeroext 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 328
  invoke void @_ZNK18ParticleParamTypes15RangedParameterINS_9ParameterIfLm1EEEE10pickWithinEv(ptr dead_on_unwind nonnull writable sret(%"struct.ParticleParamTypes::Parameter") align 8 %8, ptr noundef nonnull align 8 dereferenceable(36) %i.bz)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.ca = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cb = load float, ptr %i.ca, align 8, !tbaa !49 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %i.cc = load i8, ptr %7, align 8, !tbaa !465, !range !142, !noundef !143
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.d, label %bb.p

bb.d:                                             ; preds = %bb.c
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 97
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !466, !range !142, !noundef !143
  %i.cg = trunc nuw i8 %i.cf to i1                ; 2 uses
  %i.ch = fcmp nsz ogt float %i.cb, 0.000000e+00  ; 2 uses
  %or.cond = or i1 %i.ch, %i.cg
  br i1 %or.cond, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d
  br i1 %i.cg, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float -1.000000e+00, ptr %i.ci, align 8, !tbaa !92
  br label %bb.q

bb.g:                                             ; preds = %bb.b
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !467 ; 3 uses
  %.not.i.i.i.i180 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i.i180, label %_ZN19collisionMoveResultD2Ev.exit181, label %bb.s

bb.h:                                             ; preds = %bb.e
  br i1 %i.ch, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.cm = extractelement <2 x float> %i.ah, i64 0 ; 4 uses
  %i.cn = extractelement <2 x float> %i.ah, i64 1 ; 4 uses
  %i.co = fcmp nsz ogt float %i.cn, %i.cm
  %i.cp = fcmp nsz ogt float %i.cn, %i.r
  %or.cond121 = select i1 %i.co, i1 %i.cp, i1 false
  br i1 %or.cond121, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cq = load float, ptr %i.f, align 8, !tbaa !468
  %i.cr = fneg nsz float %i.cb
  %i.cs = fmul nsz float %i.cq, %i.cr
  store float %i.cs, ptr %i.f, align 8, !tbaa !468
  br label %bb.q

bb.k:                                             ; preds = %bb.i
  %i.ct = fcmp nsz ogt float %i.cm, %i.cn
  %i.cu = fcmp nsz ogt float %i.cm, %i.r
  %or.cond123 = select i1 %i.ct, i1 %i.cu, i1 false
  br i1 %or.cond123, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cv = load float, ptr %i.e, align 4, !tbaa !469
  %i.cw = fneg nsz float %i.cb
  %i.cx = fmul nsz float %i.cv, %i.cw
  store float %i.cx, ptr %i.e, align 4, !tbaa !469
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  %i.cy = fcmp nsz ogt float %i.r, %i.cn
  %i.cz = fcmp nsz ogt float %i.r, %i.cm
  %or.cond125 = and i1 %i.cy, %i.cz
  br i1 %or.cond125, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.da = load float, ptr %i.g, align 4, !tbaa !470
  %i.db = fneg nsz float %i.cb
  %i.dc = fmul nsz float %i.da, %i.db
  br label %.sink.split

bb.o:                                             ; preds = %bb.m
  %i.dd = load float, ptr %i.g, align 4, !tbaa !141
  %i.de = load <2 x float>, ptr %i.e, align 4, !tbaa !53
  %i.df = fneg nsz <2 x float> %i.de
  %i.dg = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.dh = shufflevector <2 x float> %i.dg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.di = fmul nsz <2 x float> %i.dh, %i.df
  %i.dj = fneg nsz float %i.dd
  %i.dk = fmul nsz float %i.cb, %i.dj
  store <2 x float> %i.di, ptr %i.e, align 4, !tbaa !53
  br label %.sink.split

bb.p:                                             ; preds = %bb.c, %bb.d
  %i.dl = load float, ptr %6, align 8, !tbaa !192
  %i.dm = fdiv nsz float %i.dl, 1.000000e+01
  %i.dn = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.do = load <2 x float>, ptr %i.dn, align 4, !tbaa !53
  %i.dp = fdiv nsz <2 x float> %i.do, splat (float 1.000000e+01) ; 2 uses
  %.sroa.0.0.vec.insert.i172 = insertelement <2 x float> poison, float %i.dm, i64 0
  %i.dq = shufflevector <2 x float> %.sroa.0.0.vec.insert.i172, <2 x float> %i.dp, <2 x i32> <i32 0, i32 2>
  store <2 x float> %i.dq, ptr %i.e, align 4, !tbaa !53
  %i.dr = extractelement <2 x float> %i.dp, i64 1
  store float %i.dr, ptr %i.g, align 4, !tbaa !53
  br label %bb.q

.sink.split:                                      ; preds = %bb.o, %bb.n
  %.sink = phi float [ %i.dc, %bb.n ], [ %i.dk, %bb.o ]
  store float %.sink, ptr %i.g, align 4, !tbaa !53
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %bb.p, %bb.h, %bb.l, %bb.j, %bb.f
  %i.ds = load float, ptr %5, align 8, !tbaa !192
  %i.dt = fdiv nsz float %i.ds, 1.000000e+01
  %i.du = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.dv = load <2 x float>, ptr %i.du, align 4, !tbaa !53
  %i.dw = fdiv nsz <2 x float> %i.dv, splat (float 1.000000e+01) ; 2 uses
  %.sroa.0.0.vec.insert.i176 = insertelement <2 x float> poison, float %i.dt, i64 0
  %i.dx = shufflevector <2 x float> %.sroa.0.0.vec.insert.i176, <2 x float> %i.dw, <2 x i32> <i32 0, i32 2>
  store <2 x float> %i.dx, ptr %i.be, align 8, !tbaa !53
  %i.dy = extractelement <2 x float> %i.dw, i64 1
  store float %i.dy, ptr %i.bh, align 8, !tbaa !53
  %i.dz = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !467 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i.i, label %_ZN19collisionMoveResultD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.eb = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !471
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = ptrtoint ptr %i.ea to i64
  %i.ef = sub i64 %i.ed, %i.ee
  call void @_ZdlPvm(ptr noundef nonnull %i.ea, i64 noundef %i.ef) #28
  br label %_ZN19collisionMoveResultD2Ev.exit

_ZN19collisionMoveResultD2Ev.exit:                ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.u

bb.s:                                             ; preds = %bb.g
  %i.eg = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !471
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = ptrtoint ptr %i.cl to i64
  %i.ek = sub i64 %i.ei, %i.ej
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.ek) #28
  br label %_ZN19collisionMoveResultD2Ev.exit181

_ZN19collisionMoveResultD2Ev.exit181:             ; preds = %bb.g, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  resume { ptr, i32 } %i.cj

bb.t:                                             ; preds = %bb.a
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ep = load <1 x float>, ptr %i.eo, align 8
  %i.eq = load <4 x float>, ptr %i.el, align 8    ; 2 uses
  %i.er = insertelement <4 x float> %i.eq, float 1.000000e+00, i64 3
  %i.es = shufflevector <2 x float> %i.au, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 0> ; 2 uses
  %i.et = insertelement <4 x float> %i.es, float -0.000000e+00, i64 3
  %i.eu = insertelement <4 x float> %i.et, float %i.av, i64 2
  %i.ev = load <4 x float>, ptr %i.en, align 8
  %i.ew = shufflevector <1 x float> %i.ep, <1 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 poison>
  %i.ex = shufflevector <4 x float> %i.es, <4 x float> %i.ew, <4 x i32> <i32 poison, i32 poison, i32 6, i32 3>
  %i.ey = shufflevector <4 x float> %i.ev, <4 x float> %i.ex, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ez = load <2 x float>, ptr %i.em, align 4, !tbaa !53 ; 2 uses
  %i.fa = shufflevector <2 x float> %i.ez, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.fb = shufflevector <4 x float> %i.er, <4 x float> %i.fa, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.fc = fmul nsz <4 x float> %i.fb, <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 1.000000e+00>
  %i.fd = shufflevector <4 x float> %i.eq, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fe = insertelement <2 x float> %i.fd, float %1, i64 0 ; 2 uses
  %i.ff = shufflevector <2 x float> %i.fe, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.fg = fmul <4 x float> %i.ff, %i.fc
  %i.fh = fadd <4 x float> %i.fg, %i.eu
  %i.fi = shufflevector <2 x float> %i.fe, <2 x float> poison, <4 x i32> zeroinitializer
  %i.fj = fmul nsz <4 x float> %i.fi, %i.fh
  %i.fk = fmul nsz <2 x float> %i.ae, %i.ez
  %i.fl = fadd nsz <4 x float> %i.fj, %i.ey
  store <4 x float> %i.fl, ptr %i.en, align 8, !tbaa !53
  %i.fm = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.fn = insertelement <2 x float> %i.fm, float %i.av, i64 1
  %i.fo = fadd nsz <2 x float> %i.fk, %i.fn
  store <2 x float> %i.fo, ptr %i.f, align 8, !tbaa !53
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZN19collisionMoveResultD2Ev.exit
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.fq = load i8, ptr %i.fp, align 8, !tbaa !193
  %.not = icmp eq i8 %i.fq, 0
  br i1 %.not, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 4 uses
  %i.fs = load float, ptr %i.fr, align 8, !tbaa !99
  %i.ft = fadd nsz float %1, %i.fs
  store float %i.ft, ptr %i.fr, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i32 0, ptr %i.a, align 4, !tbaa !93
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !194
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 80
  %i.fx = load i64, ptr %i.fw, align 4
  call void @_ZNK19TileAnimationParams15determineParamsEN4core8vector2dIjEEPiS3_PS2_(ptr noundef nonnull align 4 dereferenceable(16) %i.fp, i64 %i.fx, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef null)
  %i.fy = load i32, ptr %i.a, align 4, !tbaa !93
  %i.fz = sitofp nsz i32 %i.fy to double
  %i.ga = fdiv nsz double %i.fz, 1.000000e+03
  %i.gb = fptrunc nsz double %i.ga to float       ; 3 uses
  %.promoted = load float, ptr %i.fr, align 8, !tbaa !99 ; 2 uses
  %i.gc = fcmp nsz ogt float %.promoted, %i.gb
  br i1 %i.gc, label %.lr.ph, label %bb.x

.lr.ph:                                           ; preds = %bb.v
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 428 ; 2 uses
  %.promoted260 = load i32, ptr %i.gd, align 4, !tbaa !100
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph, %bb.w
  %i.ge = phi i32 [ %.promoted260, %.lr.ph ], [ %i.gg, %bb.w ]
  %i.gf = phi float [ %.promoted, %.lr.ph ], [ %i.gh, %bb.w ]
  %i.gg = add nsw i32 %i.ge, 1                    ; 2 uses
  %i.gh = fsub nsz float %i.gf, %i.gb             ; 3 uses
  %i.gi = fcmp nsz ogt float %i.gh, %i.gb
  br i1 %i.gi, label %bb.w, label %._crit_edge, !llvm.loop !456

._crit_edge:                                      ; preds = %bb.w
  store i32 %i.gg, ptr %i.gd, align 4, !tbaa !100
  store float %i.gh, ptr %i.fr, align 8, !tbaa !99
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.u
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !196 ; 2 uses
  %.not119 = icmp eq ptr %i.gk, null
  br i1 %.not119, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 24
  %i.gm = load float, ptr %i.b, align 4, !tbaa !90
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.go = load float, ptr %i.gn, align 8, !tbaa !92
  %i.gp = fadd nsz float %i.go, 1.000000e-01
  %i.gq = fdiv nsz float %i.gm, %i.gp
  call void @_ZNK18ParticleParamTypes16TweenedParameterINS_9ParameterIfLm1EEEE5blendEf(ptr dead_on_unwind nonnull writable sret(%"struct.ParticleParamTypes::Parameter") align 8 %9, ptr noundef nonnull align 8 dereferenceable(40) %i.gl, float noundef %i.gq)
  %i.gr = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.gs = load float, ptr %i.gr, align 8, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %i.gt = fmul nsz float %i.gs, 2.550000e+02
  %i.gu = fptoui float %i.gt to i32
  %i.gv = shl i32 %i.gu, 24
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.0 = phi i32 [ %i.gv, %bb.z ], [ -16777216, %bb.y ]
  %i.gw = call i32 @_ZN8Particle11updateLightEP17ClientEnvironment(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef %2)
  %i.gx = and i32 %i.gw, 16777215
  %i.gy = or disjoint i32 %i.gx, %.0
  call void @_ZN8Particle14updateVerticesEP17ClientEnvironmentN5video6SColorE(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef nonnull %2, i32 %i.gy)
  ret void
}

declare void @_ZNK18ParticleParamTypes15RangedParameterINS_15VectorParameterIN4core8vector3dIfEELm3EEEE10pickWithinEv(ptr dead_on_unwind writable sret(%"struct.ParticleParamTypes::VectorParameter.7") align 8, ptr noundef nonnull align 8 dereferenceable(52)) local_unnamed_addr #6

declare void @_Z19collisionMoveSimpleP11EnvironmentP8IGameDefRKN4core8aabbox3dIfEEffPNS3_8vector3dIfEESA_S9_P12ActiveObjectb10StepUpMode(ptr dead_on_unwind writable sret(%struct.collisionMoveResult) align 8, ptr noundef, ptr noundef, ptr noundef nonnull align 4 dereferenceable(24), float noundef, float noundef, ptr noundef, ptr noundef, <2 x float>, float, ptr noundef, i1 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #6

declare void @_ZNK18ParticleParamTypes15RangedParameterINS_9ParameterIfLm1EEEE10pickWithinEv(ptr dead_on_unwind writable sret(%"struct.ParticleParamTypes::Parameter") align 8, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #6

declare void @_ZNK19TileAnimationParams15determineParamsEN4core8vector2dIjEEPiS3_PS2_(ptr noundef nonnull align 4 dereferenceable(16), i64, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @_ZNK18ParticleParamTypes16TweenedParameterINS_9ParameterIfLm1EEEE5blendEf(ptr dead_on_unwind writable sret(%"struct.ParticleParamTypes::Parameter") align 8, ptr noundef nonnull align 8 dereferenceable(40), float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define dso_local range(i32 -16777216, 0) i32 @_ZN8Particle11updateLightEP17ClientEnvironment(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(448) %0, ptr noundef nonnull %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load float, ptr %i.b, align 8, !tbaa !197
  %i.d = fpext nsz float %i.c to double
  %i.e = fadd nsz double %i.d, 5.000000e-01
  %i.f = tail call nsz double @llvm.floor.f64(double %i.e)
  %i.g = fptosi double %i.f to i16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load <2 x float>, ptr %i.h, align 4, !tbaa !53
  %i.j = fpext <2 x float> %i.i to <2 x double>
  %i.k = fadd nsz <2 x double> %i.j, splat (double 5.000000e-01) ; 2 uses
  %i.l = extractelement <2 x double> %i.k, i64 0
  %i.m = tail call nsz double @llvm.floor.f64(double %i.l)
  %i.n = fptosi double %i.m to i16
  %i.o = extractelement <2 x double> %i.k, i64 1
  %i.p = tail call nsz double @llvm.floor.f64(double %i.o)
  %i.q = fptosi double %i.p to i16
  %i.r = tail call noundef nonnull align 8 dereferenceable(656) ptr @_ZN17ClientEnvironment12getClientMapEv(ptr noundef nonnull align 8 dereferenceable(440) %1)
  %.sroa.513.0.insert.ext = zext i16 %i.q to i48
  %.sroa.513.0.insert.shift = shl nuw i48 %.sroa.513.0.insert.ext, 32
  %.sroa.412.0.insert.ext = zext i16 %i.n to i48
  %.sroa.412.0.insert.shift = shl nuw nsw i48 %.sroa.412.0.insert.ext, 16
  %.sroa.412.0.insert.insert = or disjoint i48 %.sroa.513.0.insert.shift, %.sroa.412.0.insert.shift
  %.sroa.011.0.insert.ext = zext i16 %i.g to i48
end_hunk_0
