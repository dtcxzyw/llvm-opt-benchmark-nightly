Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/particles?download=true
inline.NumInlined: 2466
inline.NumDeleted: 1098
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN14ParticleBuffer8allocateEv:bb.a
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
  %5 = alloca %"class.core::vector3d", align 8    ; 7 uses
  %6 = alloca %"class.core::vector3d", align 8    ; 7 uses
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
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 7 uses
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
  %10 = load <1 x float>, ptr %i.ay, align 4
  %i.az = shufflevector <1 x float> %10, <1 x float> poison, <2 x i32> zeroinitializer
  %i.ba = fmul nsz <2 x float> %i.az, <float -5.000000e-01, float 5.000000e-01> ; 2 uses
  %i.bb = shufflevector <2 x float> %i.ba, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x float> %i.bb, ptr %4, align 16, !tbaa !53
  %.sroa.4.0..sroa_idx215 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bc = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  store <2 x float> %i.bc, ptr %.sroa.4.0..sroa_idx215, align 16, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.be = load <2 x float>, ptr %i.bd, align 8, !tbaa !53
  %i.bf = fmul nsz <2 x float> %i.be, splat (float 1.000000e+01)
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bh = load float, ptr %i.bg, align 8, !tbaa !141
  %i.bi = fmul nsz float %i.bh, 1.000000e+01
  store <2 x float> %i.bf, ptr %5, align 8
  %.sroa.264.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store float %i.bi, ptr %.sroa.264.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.bj = fmul nsz <2 x float> %i.au, splat (float 1.000000e+01)
  %i.bk = fmul nsz float %i.av, 1.000000e+01
  store <2 x float> %i.bj, ptr %6, align 8
  %.sroa.260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store float %i.bk, ptr %.sroa.260.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !191 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %spec.select = select i1 %i.bn, ptr null, ptr %i.bo
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bq = load <2 x float>, ptr %i.bp, align 8, !tbaa !53
  %i.br = fmul nsz <2 x float> %i.bq, splat (float 1.000000e+01)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bt = load float, ptr %i.bs, align 8, !tbaa !141
  %i.bu = fmul nsz float %i.bt, 1.000000e+01
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 98
  %i.bw = load i8, ptr %i.bv, align 2, !tbaa !458, !range !142, !noundef !143
  %i.bx = trunc nuw i8 %i.bw to i1
  call void @_Z19collisionMoveSimpleP11EnvironmentP8IGameDefRKN4core8aabbox3dIfEEffPNS3_8vector3dIfEESA_S9_P12ActiveObjectb10StepUpMode(ptr dead_on_unwind nonnull writable sret(%struct.collisionMoveResult) align 8 %7, ptr noundef nonnull %2, ptr noundef %spec.select, ptr noundef nonnull align 4 dereferenceable(24) %4, float noundef 0.000000e+00, float noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %6, <2 x float> %i.br, float %i.bu, ptr noundef null, i1 noundef zeroext %i.bx, i8 noundef zeroext 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 328
  invoke void @_ZNK18ParticleParamTypes15RangedParameterINS_9ParameterIfLm1EEEE10pickWithinEv(ptr dead_on_unwind nonnull writable sret(%"struct.ParticleParamTypes::Parameter") align 8 %8, ptr noundef nonnull align 8 dereferenceable(36) %i.by)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.bz = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ca = load float, ptr %i.bz, align 8, !tbaa !49 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %i.cb = load i8, ptr %7, align 8, !tbaa !465, !range !142, !noundef !143
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.d, label %bb.p

bb.d:                                             ; preds = %bb.c
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 97
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !466, !range !142, !noundef !143
  %i.cf = trunc nuw i8 %i.ce to i1                ; 2 uses
  %i.cg = fcmp nsz ogt float %i.ca, 0.000000e+00  ; 2 uses
  %or.cond = or i1 %i.cg, %i.cf
  br i1 %or.cond, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d
  br i1 %i.cf, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float -1.000000e+00, ptr %i.ch, align 8, !tbaa !92
  br label %bb.q

bb.g:                                             ; preds = %bb.b
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !467 ; 3 uses
  %.not.i.i.i.i180 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i.i180, label %_ZN19collisionMoveResultD2Ev.exit181, label %bb.s

bb.h:                                             ; preds = %bb.e
  br i1 %i.cg, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.cl = extractelement <2 x float> %i.ah, i64 0 ; 4 uses
  %i.cm = extractelement <2 x float> %i.ah, i64 1 ; 4 uses
  %i.cn = fcmp nsz ogt float %i.cm, %i.cl
  %i.co = fcmp nsz ogt float %i.cm, %i.r
  %or.cond121 = select i1 %i.cn, i1 %i.co, i1 false
  br i1 %or.cond121, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cp = load float, ptr %i.f, align 8, !tbaa !468
  %i.cq = fneg nsz float %i.ca
  %i.cr = fmul nsz float %i.cp, %i.cq
  store float %i.cr, ptr %i.f, align 8, !tbaa !468
  br label %bb.q

bb.k:                                             ; preds = %bb.i
  %i.cs = fcmp nsz ogt float %i.cl, %i.cm
  %i.ct = fcmp nsz ogt float %i.cl, %i.r
  %or.cond123 = select i1 %i.cs, i1 %i.ct, i1 false
  br i1 %or.cond123, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cu = load float, ptr %i.e, align 4, !tbaa !469
  %i.cv = fneg nsz float %i.ca
  %i.cw = fmul nsz float %i.cu, %i.cv
  store float %i.cw, ptr %i.e, align 4, !tbaa !469
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  %i.cx = fcmp nsz ogt float %i.r, %i.cm
  %i.cy = fcmp nsz ogt float %i.r, %i.cl
  %or.cond125 = and i1 %i.cx, %i.cy
  br i1 %or.cond125, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cz = load float, ptr %i.g, align 4, !tbaa !470
  %i.da = fneg nsz float %i.ca
  %i.db = fmul nsz float %i.cz, %i.da
  store float %i.db, ptr %i.g, align 4, !tbaa !470
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.dc = load float, ptr %i.g, align 4, !tbaa !141
  %i.dd = load <2 x float>, ptr %i.e, align 4, !tbaa !53
  %i.de = fneg nsz <2 x float> %i.dd
  %i.df = insertelement <2 x float> poison, float %i.ca, i64 0
  %i.dg = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dh = fmul nsz <2 x float> %i.dg, %i.de
  %i.di = fneg nsz float %i.dc
  %i.dj = fmul nsz float %i.ca, %i.di
  store <2 x float> %i.dh, ptr %i.e, align 4, !tbaa !53
  store float %i.dj, ptr %i.g, align 4, !tbaa !53
  br label %bb.q

bb.p:                                             ; preds = %bb.c, %bb.d
  %i.dk = load <2 x float>, ptr %6, align 8, !tbaa !53
  %i.dl = fdiv nsz <2 x float> %i.dk, splat (float 1.000000e+01)
  %i.dm = load float, ptr %.sroa.260.0..sroa_idx, align 8, !tbaa !141
  %i.dn = fdiv nsz float %i.dm, 1.000000e+01
  store <2 x float> %i.dl, ptr %i.e, align 4, !tbaa !53
  store float %i.dn, ptr %i.g, align 4, !tbaa !53
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.h, %bb.l, %bb.o, %bb.n, %bb.j, %bb.f
  %i.do = load <2 x float>, ptr %5, align 8, !tbaa !53
  %i.dp = fdiv nsz <2 x float> %i.do, splat (float 1.000000e+01)
  %i.dq = load float, ptr %.sroa.264.0..sroa_idx, align 8, !tbaa !141
  %i.dr = fdiv nsz float %i.dq, 1.000000e+01
  store <2 x float> %i.dp, ptr %i.bd, align 8, !tbaa !53
  store float %i.dr, ptr %i.bg, align 8, !tbaa !53
  %i.ds = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !467 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i.i, label %_ZN19collisionMoveResultD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.du = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !471
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = ptrtoint ptr %i.dt to i64
  %i.dy = sub i64 %i.dw, %i.dx
  call void @_ZdlPvm(ptr noundef nonnull %i.dt, i64 noundef %i.dy) #28
  br label %_ZN19collisionMoveResultD2Ev.exit

_ZN19collisionMoveResultD2Ev.exit:                ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.u

bb.s:                                             ; preds = %bb.g
  %i.dz = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !471
  %i.eb = ptrtoint ptr %i.ea to i64
  %i.ec = ptrtoint ptr %i.ck to i64
  %i.ed = sub i64 %i.eb, %i.ec
  call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef %i.ed) #28
  br label %_ZN19collisionMoveResultD2Ev.exit181

_ZN19collisionMoveResultD2Ev.exit181:             ; preds = %bb.g, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  resume { ptr, i32 } %i.ci

bb.t:                                             ; preds = %bb.a
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 64
  %11 = load <1 x float>, ptr %i.eh, align 8
  %i.ei = load <4 x float>, ptr %i.ee, align 8    ; 2 uses
  %i.ej = insertelement <4 x float> %i.ei, float 1.000000e+00, i64 3
  %i.ek = shufflevector <2 x float> %i.au, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 0> ; 2 uses
  %i.el = insertelement <4 x float> %i.ek, float -0.000000e+00, i64 3
  %i.em = insertelement <4 x float> %i.el, float %i.av, i64 2
  %i.en = load <4 x float>, ptr %i.eg, align 8
  %i.eo = shufflevector <1 x float> %11, <1 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 poison>
  %i.ep = shufflevector <4 x float> %i.ek, <4 x float> %i.eo, <4 x i32> <i32 poison, i32 poison, i32 6, i32 3>
  %i.eq = shufflevector <4 x float> %i.en, <4 x float> %i.ep, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.er = load <2 x float>, ptr %i.ef, align 4, !tbaa !53 ; 2 uses
  %i.es = shufflevector <2 x float> %i.er, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.et = shufflevector <4 x float> %i.ej, <4 x float> %i.es, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.eu = fmul nsz <4 x float> %i.et, <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 1.000000e+00>
  %i.ev = shufflevector <4 x float> %i.ei, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ew = insertelement <2 x float> %i.ev, float %1, i64 0 ; 2 uses
  %i.ex = shufflevector <2 x float> %i.ew, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ey = fmul <4 x float> %i.ex, %i.eu
  %i.ez = fadd <4 x float> %i.ey, %i.em
  %i.fa = shufflevector <2 x float> %i.ew, <2 x float> poison, <4 x i32> zeroinitializer
  %i.fb = fmul nsz <4 x float> %i.fa, %i.ez
  %i.fc = fmul nsz <2 x float> %i.ae, %i.er
  %i.fd = fadd nsz <4 x float> %i.fb, %i.eq
  store <4 x float> %i.fd, ptr %i.eg, align 8, !tbaa !53
  %i.fe = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ff = insertelement <2 x float> %i.fe, float %i.av, i64 1
  %i.fg = fadd nsz <2 x float> %i.fc, %i.ff
  store <2 x float> %i.fg, ptr %i.f, align 8, !tbaa !53
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZN19collisionMoveResultD2Ev.exit
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.fi = load i8, ptr %i.fh, align 8, !tbaa !192
  %.not = icmp eq i8 %i.fi, 0
  br i1 %.not, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 4 uses
  %i.fk = load float, ptr %i.fj, align 8, !tbaa !99
  %i.fl = fadd nsz float %1, %i.fk
  store float %i.fl, ptr %i.fj, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i32 0, ptr %i.a, align 4, !tbaa !93
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !193
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 80
  %i.fp = load i64, ptr %i.fo, align 4
  call void @_ZNK19TileAnimationParams15determineParamsEN4core8vector2dIjEEPiS3_PS2_(ptr noundef nonnull align 4 dereferenceable(16) %i.fh, i64 %i.fp, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef null)
  %i.fq = load i32, ptr %i.a, align 4, !tbaa !93
  %i.fr = sitofp nsz i32 %i.fq to double
  %i.fs = fdiv nsz double %i.fr, 1.000000e+03
  %i.ft = fptrunc nsz double %i.fs to float       ; 3 uses
  %.promoted = load float, ptr %i.fj, align 8, !tbaa !99 ; 2 uses
  %i.fu = fcmp nsz ogt float %.promoted, %i.ft
  br i1 %i.fu, label %.lr.ph, label %bb.x

.lr.ph:                                           ; preds = %bb.v
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 428 ; 2 uses
  %.promoted260 = load i32, ptr %i.fv, align 4, !tbaa !100
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph, %bb.w
  %i.fw = phi i32 [ %.promoted260, %.lr.ph ], [ %i.fy, %bb.w ]
  %i.fx = phi float [ %.promoted, %.lr.ph ], [ %i.fz, %bb.w ]
  %i.fy = add nsw i32 %i.fw, 1                    ; 2 uses
  %i.fz = fsub nsz float %i.fx, %i.ft             ; 3 uses
  %i.ga = fcmp nsz ogt float %i.fz, %i.ft
  br i1 %i.ga, label %bb.w, label %._crit_edge, !llvm.loop !456

._crit_edge:                                      ; preds = %bb.w
  store i32 %i.fy, ptr %i.fv, align 4, !tbaa !100
  store float %i.fz, ptr %i.fj, align 8, !tbaa !99
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.u
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !195 ; 2 uses
  %.not119 = icmp eq ptr %i.gc, null
  br i1 %.not119, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 24
  %i.ge = load float, ptr %i.b, align 4, !tbaa !90
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gg = load float, ptr %i.gf, align 8, !tbaa !92
  %i.gh = fadd nsz float %i.gg, 1.000000e-01
  %i.gi = fdiv nsz float %i.ge, %i.gh
  call void @_ZNK18ParticleParamTypes16TweenedParameterINS_9ParameterIfLm1EEEE5blendEf(ptr dead_on_unwind nonnull writable sret(%"struct.ParticleParamTypes::Parameter") align 8 %9, ptr noundef nonnull align 8 dereferenceable(40) %i.gd, float noundef %i.gi)
  %i.gj = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.gk = load float, ptr %i.gj, align 8, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %i.gl = fmul nsz float %i.gk, 2.550000e+02
  %i.gm = fptoui float %i.gl to i32
  %i.gn = shl i32 %i.gm, 24
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.0 = phi i32 [ %i.gn, %bb.z ], [ -16777216, %bb.y ]
  %i.go = call i32 @_ZN8Particle11updateLightEP17ClientEnvironment(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef %2)
  %i.gp = and i32 %i.go, 16777215
  %i.gq = or disjoint i32 %i.gp, %.0
  call void @_ZN8Particle14updateVerticesEP17ClientEnvironmentN5video6SColorE(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef nonnull %2, i32 %i.gq)
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
  %i.c = load float, ptr %i.b, align 8, !tbaa !196
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
  %.sroa.011.0.insert.insert = or disjoint i48 %.sroa.412.0.insert.insert, %.sroa.011.0.insert.ext
  %i.s = call i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.r, i48 %.sroa.011.0.insert.insert, ptr noundef nonnull %i.a) ; 2 uses
  %.sroa.4.0.extract.shift = lshr i32 %i.s, 16
  %.sroa.4.0.extract.trunc = trunc i32 %.sroa.4.0.extract.shift to i8 ; 2 uses
  %i.t = load i8, ptr %i.a, align 1, !tbaa !197, !range !142, !noundef !143
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = call noundef i32 @_ZN11Environment16getDayNightRatioEv(ptr noundef nonnull align 8 dereferenceable(88) %1) ; 3 uses
  br i1 %i.u, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !191
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !48
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = call noundef ptr %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.y), !inline_history !2
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 336
  %i.ae = and i32 %i.s, 65535
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.af
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.ag, align 1, !tbaa !64 ; 3 uses
  %i.ah = and i8 %.sroa.0.0.copyload.i.i, 16
  %.not.i.i.i = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i.i, label %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit.thread.i, label %bb.c

_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit.thread.i: ; preds = %bb.b
  %i.ai = and i8 %.sroa.0.0.copyload.i.i, 15      ; 2 uses
  br label %_ZNK7MapNode13getLightBlendEj20ContentLightingFlags.exit

bb.c:                                             ; preds = %bb.b
  %i.aj = and i8 %.sroa.4.0.extract.trunc, 15
  %i.ak = and i8 %.sroa.0.0.copyload.i.i, 15      ; 2 uses
  %i.al = call noundef i8 @llvm.umax.i8(i8 %i.ak, i8 %i.aj)
  %i.am = lshr i8 %.sroa.4.0.extract.trunc, 4
  %i.an = call i8 @llvm.umax.i8(i8 %i.ak, i8 %i.am)
  br label %_ZNK7MapNode13getLightBlendEj20ContentLightingFlags.exit

_ZNK7MapNode13getLightBlendEj20ContentLightingFlags.exit: ; preds = %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit.thread.i, %bb.c
  %i.ao = phi i8 [ %i.al, %bb.c ], [ %i.ai, %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit.thread.i ]
  %i.ap = phi i8 [ %i.an, %bb.c ], [ %i.ai, %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit.thread.i ]
  %i.aq = zext nneg i8 %i.ao to i32
  %i.ar = mul i32 %i.v, %i.aq
  %i.as = sub i32 1000, %i.v
  %i.at = zext nneg i8 %i.ap to i32
  %i.au = mul i32 %i.as, %i.at
  %i.av = add i32 %i.au, %i.ar
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.aw = mul i32 %i.v, 15
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK7MapNode13getLightBlendEj20ContentLightingFlags.exit
  %.sink19 = phi i32 [ %i.aw, %bb.d ], [ %i.av, %_ZNK7MapNode13getLightBlendEj20ContentLightingFlags.exit ]
  %i.ax = udiv i32 %.sink19, 1000
  %spec.store.select.i = call i32 @llvm.umin.i32(i32 %i.ax, i32 15)
  %.0 = trunc nuw nsw i32 %spec.store.select.i to i8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !198
end_hunk_0
begin_hunk_1_@_ZN8Particle14updateVerticesEP17ClientEnvironmentN5video6SColorE:bb.a
  store float %i.du, ptr %.sroa.5144.0..0.i.sroa_idx, align 4, !tbaa !141
  %.sroa.22.0.copyload.i.us.1 = load float, ptr %.sroa.22.0..sroa_idx.i, align 4, !tbaa !53
  %.sroa.0115.0.vec.extract.us.1 = load float, ptr %i.cl, align 4, !tbaa !53
  %i.dv = fdiv nsz float %.sroa.0115.0.vec.extract.us.1, 1.000000e+01
  %i.dw = fdiv nsz float %.sroa.22.0.copyload.i.us.1, 1.000000e+01
  %i.dx = load float, ptr %i.ce, align 8, !tbaa !479
  %i.dy = fsub nsz float %i.dw, %i.dx
  %i.dz = load float, ptr %i.cd, align 8, !tbaa !196
  %i.ea = fsub nsz float %i.dv, %i.dz
  %i.eb = call nsz noundef float @llvm.atan2.f32(float %i.dy, float %i.ea)
  %i.ec = fdiv nsz float %i.eb, f0x3C8EFA35
  %i.ed = fadd nsz float %i.ec, 9.000000e+01
  %i.ee = fpext nsz float %i.ed to double
  %i.ef = fmul nsz double %i.ee, f0x3F91DF46A2529D39
  %sincos.i.us.1 = call nsz { double, double } @llvm.sincos.f64(double %i.ef) ; 2 uses
  %sin.i.us.1 = extractvalue { double, double } %sincos.i.us.1, 0
  %cos.i.us.1 = extractvalue { double, double } %sincos.i.us.1, 1
  %i.eg = getelementptr inbounds nuw i8, ptr %.0.i, i64 48 ; 2 uses
  %i.eh = fpext nsz float %i.bm to double
  %i.ei = insertelement <2 x double> poison, double %cos.i.us.1, i64 0
  %i.ej = insertelement <2 x double> %i.ei, double %sin.i.us.1, i64 1 ; 2 uses
  %i.ek = fmul nsz <2 x double> %i.ej, <double 0.000000e+00, double -0.000000e+00>
  %i.el = insertelement <2 x double> poison, double %i.eh, i64 0
  %i.em = shufflevector <2 x double> %i.el, <2 x double> poison, <2 x i32> zeroinitializer
  %i.en = shufflevector <2 x double> %i.ej, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.eo = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.em, <2 x double> %i.en, <2 x double> %i.ek) ; 2 uses
  %i.ep = extractelement <2 x double> %i.eo, i64 1
  %i.eq = fptrunc nsz double %i.ep to float       ; 2 uses
  %i.er = extractelement <2 x double> %i.eo, i64 0
  %i.es = fptrunc nsz double %i.er to float       ; 2 uses
  store float %i.eq, ptr %i.bs, align 4, !tbaa !201
  store float %i.es, ptr %i.eg, align 4, !tbaa !141
  %i.et = load float, ptr %i.ce, align 8, !tbaa !141
  %i.eu = fmul nsz float %i.et, 1.000000e+01
  %i.ev = fsub nsz float %i.eu, %i.ck
  %i.ew = load <2 x float>, ptr %i.cd, align 8, !tbaa !53
  %i.ex = fmul nsz <2 x float> %i.ew, splat (float 1.000000e+01)
  %i.ey = fsub nsz <2 x float> %i.ex, %i.cj       ; 2 uses
  %i.ez = insertelement <2 x float> poison, float %i.eq, i64 0
  %i.fa = insertelement <2 x float> %i.ez, float %i.bn, i64 1 ; 2 uses
  %i.fb = fadd nsz <2 x float> %i.ey, %i.fa
  %i.fc = fsub nsz <2 x float> %i.ey, %i.fa
  %i.fd = shufflevector <2 x float> %i.fb, <2 x float> %i.fc, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.fd, ptr %i.bs, align 4, !tbaa !53
  %i.fe = fadd nsz float %i.ev, %i.es
  store float %i.fe, ptr %i.eg, align 4, !tbaa !141
  %.sroa.22.0.copyload.i.us.2 = load float, ptr %.sroa.22.0..sroa_idx.i, align 4, !tbaa !53
  %.sroa.0115.0.vec.extract.us.2 = load float, ptr %i.cl, align 4, !tbaa !53
  %i.ff = fdiv nsz float %.sroa.0115.0.vec.extract.us.2, 1.000000e+01
  %i.fg = fdiv nsz float %.sroa.22.0.copyload.i.us.2, 1.000000e+01
  %i.fh = load float, ptr %i.ce, align 8, !tbaa !479
  %i.fi = fsub nsz float %i.fg, %i.fh
  %i.fj = load float, ptr %i.cd, align 8, !tbaa !196
  %i.fk = fsub nsz float %i.ff, %i.fj
  %i.fl = call nsz noundef float @llvm.atan2.f32(float %i.fi, float %i.fk)
  %i.fm = fdiv nsz float %i.fl, f0x3C8EFA35
  %i.fn = fadd nsz float %i.fm, 9.000000e+01
  %i.fo = fpext nsz float %i.fn to double
  %i.fp = fmul nsz double %i.fo, f0x3F91DF46A2529D39
  %sincos.i.us.2 = call nsz { double, double } @llvm.sincos.f64(double %i.fp) ; 2 uses
  %sin.i.us.2 = extractvalue { double, double } %sincos.i.us.2, 0
  %cos.i.us.2 = extractvalue { double, double } %sincos.i.us.2, 1
  %i.fq = load float, ptr %i.bt, align 4, !tbaa !201
  %i.fr = getelementptr inbounds nuw i8, ptr %.0.i, i64 88 ; 3 uses
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !141
  %i.ft = fpext nsz float %i.fq to double
  %i.fu = insertelement <2 x double> poison, double %cos.i.us.2, i64 0
  %i.fv = insertelement <2 x double> %i.fu, double %sin.i.us.2, i64 1 ; 2 uses
  %i.fw = insertelement <2 x double> poison, double %i.ft, i64 0
  %i.fx = shufflevector <2 x double> %i.fw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fy = shufflevector <2 x double> %i.fv, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.fz = getelementptr inbounds nuw i8, ptr %.0.i, i64 84
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !202
  %i.gb = load float, ptr %i.bw, align 4, !tbaa !201
  %i.gc = getelementptr inbounds nuw i8, ptr %.0.i, i64 128 ; 3 uses
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !141
  %i.ge = fpext nsz float %i.gb to double
  %i.gf = insertelement <2 x float> poison, float %i.fs, i64 0
  %i.gg = insertelement <2 x float> %i.gf, float %i.gd, i64 1
  %i.gh = fpext <2 x float> %i.gg to <2 x double> ; 3 uses
  %i.gi = fneg nsz <2 x double> %i.gh             ; 2 uses
  %i.gj = shufflevector <2 x double> %i.gi, <2 x double> %i.gh, <2 x i32> <i32 2, i32 0>
  %i.gk = fmul nsz <2 x double> %i.fv, %i.gj
  %i.gl = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fx, <2 x double> %i.fy, <2 x double> %i.gk) ; 2 uses
  %i.gm = extractelement <2 x double> %i.gl, i64 1
  %i.gn = fptrunc nsz double %i.gm to float       ; 2 uses
  %i.go = extractelement <2 x double> %i.gl, i64 0
  %i.gp = fptrunc nsz double %i.go to float       ; 2 uses
  store float %i.gn, ptr %i.bt, align 4, !tbaa !201
  store float %i.gp, ptr %i.fr, align 4, !tbaa !141
  %i.gq = load float, ptr %i.ce, align 8, !tbaa !141
  %i.gr = fmul nsz float %i.gq, 1.000000e+01
  %i.gs = fsub nsz float %i.gr, %i.ck
  %i.gt = load <2 x float>, ptr %i.cd, align 8, !tbaa !53
  %i.gu = fmul nsz <2 x float> %i.gt, splat (float 1.000000e+01)
  %i.gv = fsub nsz <2 x float> %i.gu, %i.cj
  %i.gw = insertelement <2 x float> poison, float %i.gn, i64 0
  %i.gx = insertelement <2 x float> %i.gw, float %i.ga, i64 1
  %i.gy = fadd nsz <2 x float> %i.gv, %i.gx
  store <2 x float> %i.gy, ptr %i.bt, align 4, !tbaa !53
  %i.gz = fadd nsz float %i.gs, %i.gp
  store float %i.gz, ptr %i.fr, align 4, !tbaa !141
  %.sroa.22.0.copyload.i.us.3 = load float, ptr %.sroa.22.0..sroa_idx.i, align 4, !tbaa !53
  %.sroa.0115.0.vec.extract.us.3 = load float, ptr %i.cl, align 4, !tbaa !53
  %i.ha = fdiv nsz float %.sroa.0115.0.vec.extract.us.3, 1.000000e+01
  %i.hb = fdiv nsz float %.sroa.22.0.copyload.i.us.3, 1.000000e+01
  %i.hc = load float, ptr %i.ce, align 8, !tbaa !479
  %i.hd = fsub nsz float %i.hb, %i.hc
  %i.he = load float, ptr %i.cd, align 8, !tbaa !196
  %i.hf = fsub nsz float %i.ha, %i.he
  %i.hg = call nsz noundef float @llvm.atan2.f32(float %i.hd, float %i.hf)
  %i.hh = fdiv nsz float %i.hg, f0x3C8EFA35
  %i.hi = fadd nsz float %i.hh, 9.000000e+01
  %i.hj = fpext nsz float %i.hi to double
  %i.hk = fmul nsz double %i.hj, f0x3F91DF46A2529D39
  %sincos.i.us.3 = call nsz { double, double } @llvm.sincos.f64(double %i.hk) ; 2 uses
  %sin.i.us.3 = extractvalue { double, double } %sincos.i.us.3, 0
  %cos.i.us.3 = extractvalue { double, double } %sincos.i.us.3, 1
  %i.hl = insertelement <2 x double> poison, double %cos.i.us.3, i64 0
  %i.hm = insertelement <2 x double> %i.hl, double %sin.i.us.3, i64 1 ; 2 uses
  %i.hn = shufflevector <2 x double> %i.gi, <2 x double> %i.gh, <2 x i32> <i32 3, i32 1>
  %i.ho = fmul nsz <2 x double> %i.hm, %i.hn
  %i.hp = insertelement <2 x double> poison, double %i.ge, i64 0
  %i.hq = shufflevector <2 x double> %i.hp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hr = shufflevector <2 x double> %i.hm, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.hs = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hq, <2 x double> %i.hr, <2 x double> %i.ho) ; 2 uses
  %i.ht = extractelement <2 x double> %i.hs, i64 1
  %i.hu = fptrunc nsz double %i.ht to float       ; 2 uses
  %i.hv = extractelement <2 x double> %i.hs, i64 0
  %i.hw = fptrunc nsz double %i.hv to float       ; 2 uses
  store float %i.hu, ptr %i.bw, align 4, !tbaa !201
  store float %i.hw, ptr %i.gc, align 4, !tbaa !141
  %i.hx = load float, ptr %i.ce, align 8, !tbaa !141
  %i.hy = fmul nsz float %i.hx, 1.000000e+01
  %i.hz = fsub nsz float %i.hy, %i.ck
  %i.ia = getelementptr inbounds nuw i8, ptr %.0.i, i64 124
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !202
  %i.ic = load <2 x float>, ptr %i.cd, align 8, !tbaa !53
  %i.id = fmul nsz <2 x float> %i.ic, splat (float 1.000000e+01)
  %i.ie = fsub nsz <2 x float> %i.id, %i.cj
  %i.if = insertelement <2 x float> poison, float %i.hu, i64 0
  %i.ig = insertelement <2 x float> %i.if, float %i.ib, i64 1
  %i.ih = fadd nsz <2 x float> %i.ie, %i.ig
  store <2 x float> %i.ih, ptr %i.bw, align 4, !tbaa !53
  %i.ii = fadd nsz float %i.hz, %i.hw
  store float %i.ii, ptr %i.gc, align 4, !tbaa !141
  br label %.loopexit

.split:                                           ; preds = %bb.h
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ik = getelementptr inbounds nuw i8, ptr %i.by, i64 712
  %i.il = load <2 x float>, ptr %.0.i, align 4, !tbaa !53
  %i.im = fpext <2 x float> %i.il to <2 x double> ; 3 uses
  %i.in = shufflevector <2 x double> %i.im, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.io = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ip = insertelement <2 x float> %i.io, float %i.ck, i64 1
  %i.iq = getelementptr inbounds nuw i8, ptr %.0.i, i64 48 ; 2 uses
  %i.ir = insertelement <2 x float> poison, float %i.bm, i64 0
  %i.is = insertelement <2 x float> %i.ir, float %i.bp, i64 1
  %i.it = fpext <2 x float> %i.is to <2 x double> ; 3 uses
  %i.iu = load <2 x float>, ptr %i.ik, align 8, !tbaa !53
  %i.iv = fpext <2 x float> %i.iu to <2 x double>
  %i.iw = fmul nsz <2 x double> %i.iv, splat (double f0x3F91DF46A2529D39)
  %i.ix = call nsz { <2 x double>, <2 x double> } @llvm.sincos.v2f64(<2 x double> %i.iw) ; 2 uses
  %i.iy = extractvalue { <2 x double>, <2 x double> } %i.ix, 0 ; 9 uses
  %i.iz = extractelement <2 x double> %i.iy, i64 1 ; 2 uses
  %i.ja = extractvalue { <2 x double>, <2 x double> } %i.ix, 1 ; 9 uses
  %i.jb = extractelement <2 x double> %i.iy, i64 0 ; 3 uses
  %i.jc = extractelement <2 x double> %i.ja, i64 1 ; 2 uses
  %i.jd = fmul nsz double %i.jc, 0.000000e+00     ; 2 uses
  %i.je = shufflevector <2 x double> %i.iy, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.jf = shufflevector <2 x double> %i.iy, <2 x double> %i.ja, <2 x i32> <i32 1, i32 2>
  %i.jg = shufflevector <2 x double> %i.ja, <2 x double> %i.iy, <2 x i32> <i32 1, i32 2>
  %i.jh = extractelement <2 x double> %i.ja, i64 0 ; 2 uses
  %i.ji = shufflevector <2 x double> %i.im, <2 x double> %i.it, <2 x i32> <i32 1, i32 3>
  %i.jj = insertelement <2 x double> poison, double %i.jd, i64 0
  %i.jk = shufflevector <2 x double> %i.jj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jl = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ji, <2 x double> %i.je, <2 x double> %i.jk)
  %i.jm = fptrunc <2 x double> %i.jl to <2 x float>
  %i.jn = fpext <2 x float> %i.jm to <2 x double> ; 3 uses
  %i.jo = shufflevector <2 x double> <double -0.000000e+00, double poison>, <2 x double> %i.jn, <2 x i32> <i32 0, i32 2>
  %i.jp = fmul nsz <2 x double> %i.jf, %i.jo      ; 2 uses
  %i.jq = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.in, <2 x double> %i.jg, <2 x double> %i.jp)
  %i.jr = fptrunc <2 x double> %i.jq to <2 x float> ; 2 uses
  store <2 x float> %i.jr, ptr %.sroa.4143.0..0.i.sroa_idx, align 4, !tbaa !53
  %i.js = fneg nsz <2 x double> %i.jn             ; 2 uses
  %i.jt = shufflevector <2 x double> %i.jp, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ju = shufflevector <2 x double> %i.js, <2 x double> <double -0.000000e+00, double poison>, <2 x i32> <i32 1, i32 2>
  %i.jv = fmul nsz <2 x double> %i.iy, %i.ju
  %i.jw = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.it, <2 x double> %i.ja, <2 x double> %i.jv)
  %i.jx = fptrunc <2 x double> %i.jw to <2 x float> ; 2 uses
  %i.jy = shufflevector <2 x double> %i.iy, <2 x double> %i.ja, <2 x i32> <i32 0, i32 2>
  %i.jz = shufflevector <2 x double> %i.js, <2 x double> %i.jn, <2 x i32> <i32 0, i32 3>
  %i.ka = fmul nsz <2 x double> %i.jy, %i.jz
  %i.kb = shufflevector <2 x double> %i.im, <2 x double> %i.it, <2 x i32> <i32 0, i32 2>
  %i.kc = shufflevector <2 x double> %i.ja, <2 x double> %i.iy, <2 x i32> <i32 0, i32 2>
  %i.kd = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kb, <2 x double> %i.kc, <2 x double> %i.ka)
  %i.ke = fptrunc <2 x double> %i.kd to <2 x float> ; 3 uses
  %i.kf = extractelement <2 x float> %i.ke, i64 0
  store float %i.kf, ptr %.0.i, align 4, !tbaa !201
  %5 = load <2 x float>, ptr %i.cd, align 8
  %i.kg = load <2 x float>, ptr %i.ij, align 4, !tbaa !53
  %i.kh = fmul nsz <2 x float> %i.kg, splat (float 1.000000e+01)
  %i.ki = fsub nsz <2 x float> %i.kh, %i.ip
  %i.kj = fadd nsz <2 x float> %i.ki, %i.jr
  store <2 x float> %i.kj, ptr %.sroa.4143.0..0.i.sroa_idx, align 4, !tbaa !53
  store <2 x float> %i.jx, ptr %i.bs, align 4, !tbaa !53
  %i.kk = extractelement <2 x float> %i.ke, i64 1
  store float %i.kk, ptr %i.iq, align 4, !tbaa !141
  %i.kl = load float, ptr %i.ce, align 8, !tbaa !141
  %i.km = insertelement <2 x float> %5, float %i.kl, i64 1
  %i.kn = fmul nsz <2 x float> %i.km, splat (float 1.000000e+01)
  %i.ko = insertelement <2 x float> %i.cj, float %i.ck, i64 1
  %i.kp = fsub nsz <2 x float> %i.kn, %i.ko
  %i.kq = fadd nsz <2 x float> %i.kp, %i.ke       ; 2 uses
  %i.kr = extractelement <2 x float> %i.kq, i64 0
  store float %i.kr, ptr %.0.i, align 4, !tbaa !201
  %i.ks = load <2 x float>, ptr %i.cd, align 8, !tbaa !53
  %i.kt = fmul nsz <2 x float> %i.ks, splat (float 1.000000e+01)
  %i.ku = fsub nsz <2 x float> %i.kt, %i.cj
  %i.kv = fadd nsz <2 x float> %i.ku, %i.jx
  store <2 x float> %i.kv, ptr %i.bs, align 4, !tbaa !53
  %i.kw = extractelement <2 x float> %i.kq, i64 1
  store float %i.kw, ptr %i.iq, align 4, !tbaa !141
  %i.kx = getelementptr inbounds nuw i8, ptr %.0.i, i64 88 ; 2 uses
  %i.ky = load float, ptr %i.bt, align 4, !tbaa !201
  %i.kz = insertelement <2 x float> poison, float %i.ky, i64 0
  %i.la = insertelement <2 x float> %i.kz, float %i.bn, i64 1
  %i.lb = fpext <2 x float> %i.la to <2 x double> ; 3 uses
  %i.lc = extractelement <2 x double> %i.lb, i64 1
  %i.ld = call nsz double @llvm.fmuladd.f64(double %i.lc, double %i.iz, double %i.jd)
  %i.le = fptrunc nsz double %i.ld to float
  %i.lf = fpext nsz float %i.le to double         ; 2 uses
  %i.lg = fneg nsz double %i.lf
  %i.lh = fmul nsz double %i.jb, %i.lg
  %i.li = insertelement <2 x double> %i.jt, double %i.lh, i64 0
  %i.lj = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lb, <2 x double> %i.ja, <2 x double> %i.li)
  %i.lk = fptrunc <2 x double> %i.lj to <2 x float> ; 2 uses
  %i.ll = fmul nsz double %i.jh, %i.lf
  %i.lm = extractelement <2 x double> %i.lb, i64 0
  %i.ln = call nsz double @llvm.fmuladd.f64(double %i.lm, double %i.jb, double %i.ll)
  %i.lo = fptrunc nsz double %i.ln to float       ; 2 uses
  store <2 x float> %i.lk, ptr %i.bt, align 4, !tbaa !53
  store float %i.lo, ptr %i.kx, align 4, !tbaa !141
  %i.lp = load <2 x float>, ptr %i.cd, align 8, !tbaa !53
  %i.lq = fmul nsz <2 x float> %i.lp, splat (float 1.000000e+01)
  %i.lr = load float, ptr %i.ce, align 8, !tbaa !141
  %i.ls = fmul nsz float %i.lr, 1.000000e+01
  %i.lt = fsub nsz <2 x float> %i.lq, %i.cj
  %i.lu = fsub nsz float %i.ls, %i.ck
  %i.lv = fadd nsz <2 x float> %i.lt, %i.lk
  store <2 x float> %i.lv, ptr %i.bt, align 4, !tbaa !53
  %i.lw = fadd nsz float %i.lu, %i.lo
  store float %i.lw, ptr %i.kx, align 4, !tbaa !141
  %i.lx = getelementptr inbounds nuw i8, ptr %.0.i, i64 128 ; 3 uses
  %i.ly = load float, ptr %i.lx, align 4, !tbaa !141
  %i.lz = fpext nsz float %i.ly to double         ; 2 uses
  %i.ma = fmul nsz double %i.jc, %i.lz
  %i.mb = load <2 x float>, ptr %i.bw, align 4, !tbaa !53
  %i.mc = fpext <2 x float> %i.mb to <2 x double> ; 3 uses
  %i.md = extractelement <2 x double> %i.mc, i64 1
  %i.me = call nsz double @llvm.fmuladd.f64(double %i.md, double %i.iz, double %i.ma)
  %i.mf = fptrunc nsz double %i.me to float
  %i.mg = fpext nsz float %i.mf to double         ; 2 uses
  %i.mh = insertelement <2 x double> poison, double %i.mg, i64 0
  %i.mi = insertelement <2 x double> %i.mh, double %i.lz, i64 1
  %i.mj = fneg nsz <2 x double> %i.mi
  %i.mk = fmul nsz <2 x double> %i.iy, %i.mj
  %i.ml = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mc, <2 x double> %i.ja, <2 x double> %i.mk)
  %i.mm = fptrunc <2 x double> %i.ml to <2 x float> ; 2 uses
  %i.mn = fmul nsz double %i.jh, %i.mg
  %i.mo = extractelement <2 x double> %i.mc, i64 0
  %i.mp = call nsz double @llvm.fmuladd.f64(double %i.mo, double %i.jb, double %i.mn)
  %i.mq = fptrunc nsz double %i.mp to float       ; 2 uses
  store <2 x float> %i.mm, ptr %i.bw, align 4, !tbaa !53
  store float %i.mq, ptr %i.lx, align 4, !tbaa !141
  %i.mr = load <2 x float>, ptr %i.cd, align 8, !tbaa !53
  %i.ms = fmul nsz <2 x float> %i.mr, splat (float 1.000000e+01)
  %i.mt = load float, ptr %i.ce, align 8, !tbaa !141
  %i.mu = fmul nsz float %i.mt, 1.000000e+01
  %i.mv = fsub nsz <2 x float> %i.ms, %i.cj
  %i.mw = fsub nsz float %i.mu, %i.ck
  %i.mx = fadd nsz <2 x float> %i.mv, %i.mm
  store <2 x float> %i.mx, ptr %i.bw, align 4, !tbaa !53
  %i.my = fadd nsz float %i.mw, %i.mq
  store float %i.my, ptr %i.lx, align 4, !tbaa !141
  br label %.loopexit

.loopexit:                                        ; preds = %.split, %.split.us.preheader, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #7

declare noundef nonnull align 8 dereferenceable(656) ptr @_ZN17ClientEnvironment12getClientMapEv(ptr noundef nonnull align 8 dereferenceable(440)) local_unnamed_addr #6

declare i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144), i48, ptr noundef) local_unnamed_addr #6

declare noundef i32 @_ZN11Environment16getDayNightRatioEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN14ParticleBuffer11getVerticesEt(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(263) %0, i16 noundef zeroext %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.b = load i16, ptr %i.a, align 4, !tbaa !138
  %.not = icmp ult i16 %1, %i.b
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = zext i16 %1 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 262
  store i8 1, ptr %i.d, align 2, !tbaa !200
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !106  ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !48
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef ptr %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f), !inline_history !1 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef ptr %i.m(ptr noundef nonnull align 8 dereferenceable(28) %i.j), !inline_history !1
  %.idx = mul nuw nsw i64 %i.c, 160
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

declare void @_ZNK18ParticleParamTypes16TweenedParameterINS_15VectorParameterIN4core8vector2dIfEELm2EEEE5blendEf(ptr dead_on_unwind writable sret(%"struct.ParticleParamTypes::VectorParameter") align 8, ptr noundef nonnull align 8 dereferenceable(40), float noundef) local_unnamed_addr #6

declare <2 x float> @_ZNK19TileAnimationParams16getTextureCoordsEN4core8vector2dIjEEi(ptr noundef nonnull align 4 dereferenceable(16), i64, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN15ParticleSpawnerC2EP11LocalPlayerRK25ParticleSpawnerParameterstOSt6vectorI21ClientParticleTextureSaIS6_EEP15ParticleManager(ptr noundef nonnull align 8 dereferenceable(1482) initializes((0, 20), (24, 32)) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(1400) %2, i16 noundef zeroext %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %4, ptr noundef %5) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i:
  store i64 0, ptr %0, align 8, !tbaa !224
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %5, ptr %i.a, align 8, !tbaa !225
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float 0.000000e+00, ptr %i.b, align 8, !tbaa !226
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.c, align 8, !tbaa !227
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @_ZN25ParticleSpawnerParametersC2ERKS_(ptr noundef nonnull align 8 dereferenceable(1400) %i.d, ptr noundef nonnull align 8 dereferenceable(1400) %2)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1432 ; 2 uses
  %i.f = load <2 x ptr>, ptr %4, align 8, !tbaa !102
  store <2 x ptr> %i.f, ptr %i.e, align 8, !tbaa !102
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1448 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !228
  store ptr %i.i, ptr %i.g, align 8, !tbaa !228
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1456 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1480
  store i16 %3, ptr %i.k, align 8, !tbaa !229
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 202 ; 2 uses
  %i.m = load i16, ptr %i.l, align 2, !tbaa !230
  %i.n = zext i16 %i.m to i64
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1472 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1464 ; 2 uses
  %i.r = shl nuw nsw i64 %i.o, 2
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #31
          to label %.noexc20 unwind label %bb.d   ; 4 uses

.noexc20:                                         ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !231  ; 4 uses
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !232
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.t to i64                 ; 2 uses
  %i.x = sub i64 %i.v, %i.w                       ; 2 uses
  %i.y = icmp sgt i64 %i.x, 0
  br i1 %i.y, label %bb.a, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i

bb.a:                                             ; preds = %.noexc20
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.s, ptr align 4 %i.t, i64 %i.x, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i: ; preds = %bb.a, %.noexc20
  %.not.i8.i = icmp eq ptr %i.t, null
  br i1 %.not.i8.i, label %_ZNSt6vectorIfSaIfEE7reserveEm.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i
  %i.z = load ptr, ptr %i.p, align 8, !tbaa !233
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.ab) #28
  br label %_ZNSt6vectorIfSaIfEE7reserveEm.exit

_ZNSt6vectorIfSaIfEE7reserveEm.exit:              ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i, %bb.b
  store ptr %i.s, ptr %i.j, align 8, !tbaa !231
  store ptr %i.s, ptr %i.q, align 8, !tbaa !232
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.o
  store ptr %i.ac, ptr %i.p, align 8, !tbaa !233
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1464 ; 3 uses
  br label %bb.e

bb.c:                                             ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit
  %i.af = load float, ptr %i.ad, align 4, !tbaa !234 ; 2 uses
  %i.ag = fcmp nsz une float %i.af, 0.000000e+00
  br i1 %i.ag, label %bb.l, label %bb.m

end_hunk_1
