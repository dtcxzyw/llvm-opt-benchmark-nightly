Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/particles?download=true
inline.NumInlined: 2466
inline.NumDeleted: 1098
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN8Particle11updateLightEP17ClientEnvironment:bb.a
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
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !199
  %i.ba = add i8 %i.az, %.0
  %spec.store.select.i10 = call i8 @llvm.umin.i8(i8 %i.ba, i8 15)
  %i.bb = load ptr, ptr @light_decode_table, align 8, !tbaa !200
  %i.bc = zext nneg i8 %spec.store.select.i10 to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !64
  %i.bf = zext i8 %i.be to i32                    ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !139 ; 3 uses
  %i.bi = lshr i32 %i.bh, 16
  %i.bj = and i32 %i.bi, 255
  %i.bk = mul nuw nsw i32 %i.bj, %i.bf
  %.lhs.trunc = trunc nuw i32 %i.bk to i16
  %i.bl = udiv i16 %.lhs.trunc, 255
  %.zext = zext nneg i16 %i.bl to i32
  %i.bm = lshr i32 %i.bh, 8
  %i.bn = and i32 %i.bm, 255
  %i.bo = mul nuw nsw i32 %i.bn, %i.bf
  %.lhs.trunc15 = trunc nuw i32 %i.bo to i16
  %i.bp = udiv i16 %.lhs.trunc15, 255
  %.zext16 = zext nneg i16 %i.bp to i32
  %i.bq = and i32 %i.bh, 255
  %i.br = mul nuw nsw i32 %i.bq, %i.bf
  %.lhs.trunc17 = trunc nuw i32 %i.br to i16
  %i.bs = udiv i16 %.lhs.trunc17, 255
  %.zext18 = zext nneg i16 %i.bs to i32
  %i.bt = shl nuw nsw i32 %.zext, 16
  %i.bu = shl nuw nsw i32 %.zext16, 8
  %i.bv = and i32 %i.bu, 65280
  %i.bw = or disjoint i32 %i.bv, %i.bt
  %i.bx = add nuw nsw i32 %i.bw, %.zext18
  %i.by = or i32 %i.bx, -16777216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret i32 %i.by
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8Particle14updateVerticesEP17ClientEnvironmentN5video6SColorE(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr nofree noundef readonly captures(none) %1, i32 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.ParticleParamTypes::VectorParameter", align 8 ; 4 uses
  %4 = alloca %"class.core::vector2d.246", align 8 ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !89     ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i16, ptr %i.b, align 8, !tbaa !103  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 260
  %i.e = load i16, ptr %i.d, align 4, !tbaa !138
  %.not.i = icmp ult i16 %i.c, %i.e
  br i1 %.not.i, label %bb.c, label %_ZN14ParticleBuffer11getVerticesEt.exit

bb.c:                                             ; preds = %bb.b
  %i.f = zext i16 %i.c to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 262
  store i8 1, ptr %i.g, align 2, !tbaa !201
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !106  ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !48
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef ptr %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i), !inline_history !472 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !48
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef ptr %i.p(ptr noundef nonnull align 8 dereferenceable(28) %i.m), !inline_history !472
  %.idx.i = mul nuw nsw i64 %i.f, 160
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx.i
  br label %_ZN14ParticleBuffer11getVerticesEt.exit

_ZN14ParticleBuffer11getVerticesEt.exit:          ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.r, %bb.c ], [ null, %bb.b ] ; 40 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !196  ; 2 uses
  %.not73 = icmp eq ptr %i.t, null
  br i1 %.not73, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN14ParticleBuffer11getVerticesEt.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.w = load float, ptr %i.v, align 4, !tbaa !90
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load float, ptr %i.x, align 8, !tbaa !92
  %i.z = fadd nsz float %i.y, 1.000000e-01
  %i.aa = fdiv nsz float %i.w, %i.z
  call void @_ZNK18ParticleParamTypes16TweenedParameterINS_15VectorParameterIN4core8vector2dIfEELm2EEEE5blendEf(ptr dead_on_unwind nonnull writable sret(%"struct.ParticleParamTypes::VectorParameter") align 8 %3, ptr noundef nonnull align 8 dereferenceable(40) %i.u, float noundef %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.ab, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.e

bb.e:                                             ; preds = %_ZN14ParticleBuffer11getVerticesEt.exit, %bb.d
  %.sroa.0173.0 = phi nsz <2 x float> [ %.sroa.0.0.copyload.i, %bb.d ], [ splat (float 1.000000e+00), %_ZN14ParticleBuffer11getVerticesEt.exit ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !193
  %.not74 = icmp eq i8 %i.ad, 0
  br i1 %.not74, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !194
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 80
  %i.ah = load i64, ptr %i.ag, align 4            ; 4 uses
  %i.ai = lshr i64 %i.ah, 32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store i32 0, ptr %4, align 8, !tbaa !474
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %i.aj, align 4, !tbaa !475
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 428
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !100
  %i.am = call nsz <2 x float> @_ZNK19TileAnimationParams16getTextureCoordsEN4core8vector2dIjEEi(ptr noundef nonnull align 4 dereferenceable(16) %i.ac, i64 %i.ah, i32 noundef %i.al)
  call void @_ZNK19TileAnimationParams15determineParamsEN4core8vector2dIjEEPiS3_PS2_(ptr noundef nonnull align 4 dereferenceable(16) %i.ac, i64 %i.ah, ptr noundef null, ptr noundef null, ptr noundef nonnull %4)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ap = trunc i64 %i.ah to i32
  %i.aq = trunc nuw i64 %i.ai to i32
  %i.ar = load <2 x i32>, ptr %4, align 8, !tbaa !93
  %i.as = uitofp nsz <2 x i32> %i.ar to <2 x float>
  %i.at = uitofp nsz i32 %i.ap to float
  %i.au = uitofp nsz i32 %i.aq to float
  %i.av = insertelement <2 x float> poison, float %i.at, i64 0
  %i.aw = insertelement <2 x float> %i.av, float %i.au, i64 1
  %i.ax = fdiv nsz <2 x float> %i.as, %i.aw
  %i.ay = load <2 x float>, ptr %i.an, align 8, !tbaa !53
  %i.az = fadd nsz <2 x float> %i.am, %i.ay       ; 2 uses
  %i.ba = load <2 x float>, ptr %i.ao, align 8, !tbaa !53
  %i.bb = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ax, <2 x float> %i.ba, <2 x float> %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.be = load <2 x float>, ptr %i.bc, align 8, !tbaa !53 ; 2 uses
  %i.bf = load <2 x float>, ptr %i.bd, align 8, !tbaa !53
  %i.bg = fadd nsz <2 x float> %i.be, %i.bf
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bh = phi <2 x float> [ %i.bb, %bb.f ], [ %i.bg, %bb.g ] ; 3 uses
  %i.bi = phi <2 x float> [ %i.az, %bb.f ], [ %i.be, %bb.g ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !476
  %i.bl = fmul nsz float %i.bk, 5.000000e-01      ; 2 uses
  %.sroa.0173.0.vec.extract = extractelement <2 x float> %.sroa.0173.0, i64 0
  %i.bm = fmul nsz float %.sroa.0173.0.vec.extract, %i.bl ; 5 uses
  %.sroa.0173.4.vec.extract = extractelement <2 x float> %.sroa.0173.0, i64 1
  %i.bn = fmul nsz float %.sroa.0173.4.vec.extract, %i.bl ; 5 uses
  %i.bo = fneg nsz float %i.bm                    ; 2 uses
  %i.bp = fneg nsz float %i.bn                    ; 3 uses
  store float %i.bo, ptr %.0.i, align 4, !tbaa !53
  %.sroa.4143.0..0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 2 uses
  store float %i.bp, ptr %.sroa.4143.0..0.i.sroa_idx, align 4, !tbaa !53
  %.sroa.5144.0..0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 5 uses
  %.sroa.9148.0..0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5144.0..0.i.sroa_idx, i8 0, i64 16, i1 false)
  store i32 %2, ptr %.sroa.9148.0..0.i.sroa_idx, align 4, !tbaa !93
  %.sroa.10149.0..0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.bq = extractelement <2 x float> %i.bi, i64 0
  store float %i.bq, ptr %.sroa.10149.0..0.i.sroa_idx, align 4, !tbaa !53
  %.sroa.11150.0..0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  %i.br = extractelement <2 x float> %i.bh, i64 1
  store float %i.br, ptr %.sroa.11150.0..0.i.sroa_idx, align 4, !tbaa !53
  %.sroa.12151.0..0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 36
  store i16 0, ptr %.sroa.12151.0..0.i.sroa_idx, align 4, !tbaa !107
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.i, i64 40 ; 5 uses
  store float %i.bm, ptr %i.bs, align 4, !tbaa !53
  %.sroa.4132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 44
  store float %i.bp, ptr %.sroa.4132.0..sroa_idx, align 4, !tbaa !53
  %.sroa.5133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 48
  %.sroa.9137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5133.0..sroa_idx, i8 0, i64 16, i1 false)
  store i32 %2, ptr %.sroa.9137.0..sroa_idx, align 4, !tbaa !93
  %.sroa.10138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 68
  store <2 x float> %i.bh, ptr %.sroa.10138.0..sroa_idx, align 4, !tbaa !53
  %.sroa.12140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 76
  store i16 0, ptr %.sroa.12140.0..sroa_idx, align 4, !tbaa !107
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i, i64 80 ; 7 uses
  store float %i.bm, ptr %i.bt, align 4, !tbaa !53
  %.sroa.4121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 84
  store float %i.bn, ptr %.sroa.4121.0..sroa_idx, align 4, !tbaa !53
  %.sroa.5122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 88
  %.sroa.9126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5122.0..sroa_idx, i8 0, i64 16, i1 false)
  store i32 %2, ptr %.sroa.9126.0..sroa_idx, align 4, !tbaa !93
  %.sroa.10127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 108
  %i.bu = extractelement <2 x float> %i.bh, i64 0
  store float %i.bu, ptr %.sroa.10127.0..sroa_idx, align 4, !tbaa !53
  %.sroa.11128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 112
  %i.bv = extractelement <2 x float> %i.bi, i64 1
  store float %i.bv, ptr %.sroa.11128.0..sroa_idx, align 4, !tbaa !53
  %.sroa.12129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 116
  store i16 0, ptr %.sroa.12129.0..sroa_idx, align 4, !tbaa !107
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i, i64 120 ; 7 uses
  store float %i.bo, ptr %i.bw, align 4, !tbaa !53
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 124
  store float %i.bn, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !53
  %.sroa.5118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 128
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5118.0..sroa_idx, i8 0, i64 16, i1 false)
  store i32 %2, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !93
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 148
  store <2 x float> %i.bi, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !53
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 156
  store i16 0, ptr %.sroa.12.0..sroa_idx, align 4, !tbaa !107
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !477 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 408
  %.sroa.0.0.copyload.i79 = load i48, ptr %i.bz, align 8, !tbaa !107 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 99
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !478, !range !142, !noundef !143
  %i.cc = trunc nuw i8 %i.cb to i1
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 12 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 12 uses
  %.sroa.3.0.extract.shift.i = lshr i48 %.sroa.0.0.copyload.i79, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i48 %.sroa.3.0.extract.shift.i to i16
  %i.cf = bitcast i48 %.sroa.0.0.copyload.i79 to <3 x i16>
  %i.cg = shufflevector <3 x i16> %i.cf, <3 x i16> poison, <2 x i32> <i32 0, i32 1>
  %i.ch = sitofp nsz <2 x i16> %i.cg to <2 x float>
  %i.ci = sitofp nsz i16 %.sroa.3.0.extract.trunc.i to float
  %i.cj = fmul nnan nsz <2 x float> %i.ch, splat (float 1.000000e+01) ; 8 uses
  %i.ck = fmul nnan nsz float %i.ci, 1.000000e+01 ; 8 uses
  br i1 %i.cc, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %bb.h
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.by, i64 612 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.by, i64 604 ; 4 uses
  %.sroa.22.0.copyload.i.us = load float, ptr %.sroa.22.0..sroa_idx.i, align 4, !tbaa !53
  %.sroa.0115.0.vec.extract.us = load float, ptr %i.cl, align 4, !tbaa !53
  %i.cm = fdiv nsz float %.sroa.0115.0.vec.extract.us, 1.000000e+01
  %i.cn = fdiv nsz float %.sroa.22.0.copyload.i.us, 1.000000e+01
  %i.co = load float, ptr %i.ce, align 8, !tbaa !479
  %i.cp = fsub nsz float %i.cn, %i.co
  %i.cq = load float, ptr %i.cd, align 8, !tbaa !197
  %i.cr = fsub nsz float %i.cm, %i.cq
  %i.cs = call nsz noundef float @llvm.atan2.f32(float %i.cp, float %i.cr)
  %i.ct = fdiv nsz float %i.cs, f0x3C8EFA35
  %i.cu = fadd nsz float %i.ct, 9.000000e+01
  %i.cv = fpext nsz float %i.cu to double
  %i.cw = fmul nsz double %i.cv, f0x3F91DF46A2529D39
  %sincos.i.us = call nsz { double, double } @llvm.sincos.f64(double %i.cw) ; 2 uses
  %sin.i.us = extractvalue { double, double } %sincos.i.us, 0
  %cos.i.us = extractvalue { double, double } %sincos.i.us, 1
  %i.cx = load float, ptr %.0.i, align 4, !tbaa !192
  %i.cy = fpext nsz float %i.cx to double
  %i.cz = insertelement <2 x double> poison, double %cos.i.us, i64 0
  %i.da = insertelement <2 x double> %i.cz, double %sin.i.us, i64 1 ; 2 uses
  %i.db = fmul nsz <2 x double> %i.da, <double 0.000000e+00, double -0.000000e+00>
  %i.dc = insertelement <2 x double> poison, double %i.cy, i64 0
  %i.dd = shufflevector <2 x double> %i.dc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.de = shufflevector <2 x double> %i.da, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.df = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dd, <2 x double> %i.de, <2 x double> %i.db) ; 2 uses
  %i.dg = extractelement <2 x double> %i.df, i64 1
  %i.dh = fptrunc nsz double %i.dg to float       ; 2 uses
  %i.di = extractelement <2 x double> %i.df, i64 0
  %i.dj = fptrunc nsz double %i.di to float       ; 2 uses
  store float %i.dh, ptr %.0.i, align 4, !tbaa !192
  store float %i.dj, ptr %.sroa.5144.0..0.i.sroa_idx, align 4, !tbaa !141
  %i.dk = load float, ptr %i.ce, align 8, !tbaa !141
  %i.dl = fmul nsz float %i.dk, 1.000000e+01
  %i.dm = fsub nsz float %i.dl, %i.ck
  %i.dn = load float, ptr %.sroa.4143.0..0.i.sroa_idx, align 4, !tbaa !202
  %i.do = load <2 x float>, ptr %i.cd, align 8, !tbaa !53
  %i.dp = fmul nsz <2 x float> %i.do, splat (float 1.000000e+01)
  %i.dq = fsub nsz <2 x float> %i.dp, %i.cj
  %i.dr = insertelement <2 x float> poison, float %i.dh, i64 0
  %i.ds = insertelement <2 x float> %i.dr, float %i.dn, i64 1
  %i.dt = fadd nsz <2 x float> %i.dq, %i.ds
  store <2 x float> %i.dt, ptr %.0.i, align 4, !tbaa !53
  %i.du = fadd nsz float %i.dm, %i.dj
  store float %i.du, ptr %.sroa.5144.0..0.i.sroa_idx, align 4, !tbaa !141
  %.sroa.22.0.copyload.i.us.1 = load float, ptr %.sroa.22.0..sroa_idx.i, align 4, !tbaa !53
  %.sroa.0115.0.vec.extract.us.1 = load float, ptr %i.cl, align 4, !tbaa !53
  %i.dv = fdiv nsz float %.sroa.0115.0.vec.extract.us.1, 1.000000e+01
  %i.dw = fdiv nsz float %.sroa.22.0.copyload.i.us.1, 1.000000e+01
  %i.dx = load float, ptr %i.ce, align 8, !tbaa !479
  %i.dy = fsub nsz float %i.dw, %i.dx
  %i.dz = load float, ptr %i.cd, align 8, !tbaa !197
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
  store float %i.eq, ptr %i.bs, align 4, !tbaa !192
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
  %i.fj = load float, ptr %i.cd, align 8, !tbaa !197
  %i.fk = fsub nsz float %i.ff, %i.fj
  %i.fl = call nsz noundef float @llvm.atan2.f32(float %i.fi, float %i.fk)
  %i.fm = fdiv nsz float %i.fl, f0x3C8EFA35
  %i.fn = fadd nsz float %i.fm, 9.000000e+01
  %i.fo = fpext nsz float %i.fn to double
  %i.fp = fmul nsz double %i.fo, f0x3F91DF46A2529D39
  %sincos.i.us.2 = call nsz { double, double } @llvm.sincos.f64(double %i.fp) ; 2 uses
  %sin.i.us.2 = extractvalue { double, double } %sincos.i.us.2, 0
  %cos.i.us.2 = extractvalue { double, double } %sincos.i.us.2, 1
  %i.fq = load float, ptr %i.bt, align 4, !tbaa !192
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
  %i.gb = load float, ptr %i.bw, align 4, !tbaa !192
  %i.gc = getelementptr inbounds nuw i8, ptr %.0.i, i64 128 ; 3 uses
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !141
  %i.ge = fpext nsz float %i.gb to double
  %i.gf = insertelement <2 x float> poison, float %i.fs, i64 0
  %i.gg = insertelement <2 x float> %i.gf, float %i.gd, i64 1
  %i.gh = fpext nsz <2 x float> %i.gg to <2 x double> ; 3 uses
  %i.gi = fneg nsz <2 x double> %i.gh             ; 2 uses
  %i.gj = shufflevector <2 x double> %i.gi, <2 x double> %i.gh, <2 x i32> <i32 2, i32 0>
  %i.gk = fmul nsz <2 x double> %i.fv, %i.gj
  %i.gl = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fx, <2 x double> %i.fy, <2 x double> %i.gk) ; 2 uses
  %i.gm = extractelement <2 x double> %i.gl, i64 1
  %i.gn = fptrunc nsz double %i.gm to float       ; 2 uses
  %i.go = extractelement <2 x double> %i.gl, i64 0
  %i.gp = fptrunc nsz double %i.go to float       ; 2 uses
  store float %i.gn, ptr %i.bt, align 4, !tbaa !192
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
  %i.he = load float, ptr %i.cd, align 8, !tbaa !197
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
  store float %i.hu, ptr %i.bw, align 4, !tbaa !192
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
  %i.ij = getelementptr inbounds nuw i8, ptr %i.by, i64 712
  %i.ik = load <2 x float>, ptr %i.ij, align 8, !tbaa !53
  %i.il = fpext nsz <2 x float> %i.ik to <2 x double>
  %5 = fmul nsz <2 x double> %i.il, splat (double f0x3F91DF46A2529D39)
  %6 = call nsz { <2 x double>, <2 x double> } @llvm.sincos.v2f64(<2 x double> %5) ; 2 uses
  %7 = extractvalue { <2 x double>, <2 x double> } %6, 0 ; 6 uses
  %8 = extractvalue { <2 x double>, <2 x double> } %6, 1 ; 8 uses
  %9 = extractelement <2 x double> %8, i64 1      ; 2 uses
  %10 = fmul nsz double %9, 0.000000e+00          ; 2 uses
  %i.im = load <2 x float>, ptr %.0.i, align 4, !tbaa !53
  %i.in = fpext nsz <2 x float> %i.im to <2 x double> ; 3 uses
  %i.io = extractelement <2 x double> %7, i64 1   ; 2 uses
  %11 = extractelement <2 x double> %8, i64 0     ; 2 uses
  %i.ip = extractelement <2 x double> %i.in, i64 0
  %i.iq = extractelement <2 x double> %7, i64 0   ; 5 uses
  %12 = getelementptr inbounds nuw i8, ptr %.0.i, i64 48 ; 2 uses
  %13 = insertelement <2 x float> poison, float %i.bm, i64 0
  %14 = insertelement <2 x float> %13, float %i.bp, i64 1
  %15 = fpext nsz <2 x float> %14 to <2 x double> ; 3 uses
  %16 = shufflevector <2 x double> %i.in, <2 x double> %15, <2 x i32> <i32 1, i32 3>
  %17 = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ir = insertelement <2 x double> poison, double %10, i64 0
  %i.is = shufflevector <2 x double> %i.ir, <2 x double> poison, <2 x i32> zeroinitializer
  %i.it = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %16, <2 x double> %17, <2 x double> %i.is)
  %i.iu = fptrunc nsz <2 x double> %i.it to <2 x float>
  %i.iv = fpext nsz <2 x float> %i.iu to <2 x double> ; 3 uses
  %18 = fneg nsz <2 x double> %i.iv               ; 2 uses
  %19 = insertelement <2 x double> %18, double -0.000000e+00, i64 1
  %i.iw = fmul nsz <2 x double> %7, %19           ; 3 uses
  %i.ix = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.in, <2 x double> %8, <2 x double> %i.iw)
  %i.iy = fptrunc nsz <2 x double> %i.ix to <2 x float> ; 2 uses
  store <2 x float> %i.iy, ptr %.0.i, align 4, !tbaa !53
  %20 = shufflevector <2 x double> %8, <2 x double> %7, <2 x i32> <i32 0, i32 2>
  %21 = shufflevector <2 x double> %i.iv, <2 x double> %18, <2 x i32> <i32 0, i32 3>
  %22 = fmul nsz <2 x double> %20, %21            ; 2 uses
  %23 = extractelement <2 x double> %22, i64 0
  %24 = call nsz double @llvm.fmuladd.f64(double %i.ip, double %i.iq, double %23)
  %25 = fptrunc nsz double %24 to float           ; 2 uses
  store float %25, ptr %.sroa.5144.0..0.i.sroa_idx, align 4, !tbaa !141
  %26 = load <2 x float>, ptr %i.cd, align 8, !tbaa !53
  %27 = fmul nsz <2 x float> %26, splat (float 1.000000e+01)
  %28 = load float, ptr %i.ce, align 8, !tbaa !141
  %29 = fmul nsz float %28, 1.000000e+01
  %30 = fsub nsz <2 x float> %27, %i.cj
  %31 = fsub nsz float %29, %i.ck
  %32 = fadd nsz <2 x float> %30, %i.iy
  store <2 x float> %32, ptr %.0.i, align 4, !tbaa !53
  %33 = fadd nsz float %31, %25
  store float %33, ptr %.sroa.5144.0..0.i.sroa_idx, align 4, !tbaa !141
  %shift = shufflevector <2 x double> %i.iv, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul nsz <2 x double> %8, %shift
  %34 = extractelement <2 x double> %foldExtExtBinop, i64 0
  %35 = extractelement <2 x double> %15, i64 0
  %36 = call nsz double @llvm.fmuladd.f64(double %35, double %i.iq, double %34)
  %37 = fptrunc nsz double %36 to float           ; 2 uses
  store float %37, ptr %12, align 4, !tbaa !141
  %i.iz = load float, ptr %i.ce, align 8, !tbaa !141
  %38 = fmul nsz float %i.iz, 1.000000e+01
  %39 = fsub nsz float %38, %i.ck
  %40 = shufflevector <2 x double> %i.iw, <2 x double> %22, <2 x i32> <i32 3, i32 1>
  %41 = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %15, <2 x double> %8, <2 x double> %40)
  %42 = fptrunc nsz <2 x double> %41 to <2 x float> ; 2 uses
  store <2 x float> %42, ptr %i.bs, align 4, !tbaa !53
  %i.ja = load <2 x float>, ptr %i.cd, align 8, !tbaa !53
  %i.jb = fmul nsz <2 x float> %i.ja, splat (float 1.000000e+01)
  %i.jc = fsub nsz <2 x float> %i.jb, %i.cj
  %i.jd = fadd nsz <2 x float> %i.jc, %42
  store <2 x float> %i.jd, ptr %i.bs, align 4, !tbaa !53
  %43 = fadd nsz float %39, %37
  store float %43, ptr %12, align 4, !tbaa !141
  %i.je = getelementptr inbounds nuw i8, ptr %.0.i, i64 88 ; 2 uses
  %i.jf = load float, ptr %i.bt, align 4, !tbaa !192
  %i.jg = insertelement <2 x float> poison, float %i.jf, i64 0
  %i.jh = insertelement <2 x float> %i.jg, float %i.bn, i64 1
  %i.ji = fpext nsz <2 x float> %i.jh to <2 x double> ; 3 uses
  %i.jj = extractelement <2 x double> %i.ji, i64 1
  %i.jk = call nsz double @llvm.fmuladd.f64(double %i.jj, double %i.io, double %10)
  %i.jl = fptrunc nsz double %i.jk to float
  %i.jm = fpext nsz float %i.jl to double         ; 2 uses
  %i.jn = fneg nsz double %i.jm
  %i.jo = fmul nsz double %i.iq, %i.jn
  %i.jp = insertelement <2 x double> %i.iw, double %i.jo, i64 0
  %i.jq = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ji, <2 x double> %8, <2 x double> %i.jp)
  %i.jr = fptrunc nsz <2 x double> %i.jq to <2 x float> ; 2 uses
  %i.js = fmul nsz double %11, %i.jm
  %i.jt = extractelement <2 x double> %i.ji, i64 0
  %i.ju = call nsz double @llvm.fmuladd.f64(double %i.jt, double %i.iq, double %i.js)
  %i.jv = fptrunc nsz double %i.ju to float       ; 2 uses
  store <2 x float> %i.jr, ptr %i.bt, align 4, !tbaa !53
  store float %i.jv, ptr %i.je, align 4, !tbaa !141
  %i.jw = load <2 x float>, ptr %i.cd, align 8, !tbaa !53
  %i.jx = fmul nsz <2 x float> %i.jw, splat (float 1.000000e+01)
  %i.jy = load float, ptr %i.ce, align 8, !tbaa !141
  %i.jz = fmul nsz float %i.jy, 1.000000e+01
  %i.ka = fsub nsz <2 x float> %i.jx, %i.cj
  %i.kb = fsub nsz float %i.jz, %i.ck
  %i.kc = fadd nsz <2 x float> %i.ka, %i.jr
  store <2 x float> %i.kc, ptr %i.bt, align 4, !tbaa !53
  %i.kd = fadd nsz float %i.kb, %i.jv
  store float %i.kd, ptr %i.je, align 4, !tbaa !141
  %i.ke = getelementptr inbounds nuw i8, ptr %.0.i, i64 128 ; 3 uses
  %i.kf = load float, ptr %i.ke, align 4, !tbaa !141
  %i.kg = fpext nsz float %i.kf to double         ; 2 uses
  %i.kh = fmul nsz double %9, %i.kg
  %i.ki = load <2 x float>, ptr %i.bw, align 4, !tbaa !53
  %i.kj = fpext nsz <2 x float> %i.ki to <2 x double> ; 3 uses
  %i.kk = extractelement <2 x double> %i.kj, i64 1
  %i.kl = call nsz double @llvm.fmuladd.f64(double %i.kk, double %i.io, double %i.kh)
  %i.km = fptrunc nsz double %i.kl to float
  %i.kn = fpext nsz float %i.km to double         ; 2 uses
  %i.ko = insertelement <2 x double> poison, double %i.kn, i64 0
  %i.kp = insertelement <2 x double> %i.ko, double %i.kg, i64 1
  %i.kq = fneg nsz <2 x double> %i.kp
  %i.kr = fmul nsz <2 x double> %7, %i.kq
  %i.ks = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kj, <2 x double> %8, <2 x double> %i.kr)
  %i.kt = fptrunc nsz <2 x double> %i.ks to <2 x float> ; 2 uses
  %i.ku = fmul nsz double %11, %i.kn
  %i.kv = extractelement <2 x double> %i.kj, i64 0
  %i.kw = call nsz double @llvm.fmuladd.f64(double %i.kv, double %i.iq, double %i.ku)
  %i.kx = fptrunc nsz double %i.kw to float       ; 2 uses
  store <2 x float> %i.kt, ptr %i.bw, align 4, !tbaa !53
  store float %i.kx, ptr %i.ke, align 4, !tbaa !141
  %i.ky = load <2 x float>, ptr %i.cd, align 8, !tbaa !53
  %i.kz = fmul nsz <2 x float> %i.ky, splat (float 1.000000e+01)
  %i.la = load float, ptr %i.ce, align 8, !tbaa !141
  %i.lb = fmul nsz float %i.la, 1.000000e+01
  %i.lc = fsub nsz <2 x float> %i.kz, %i.cj
  %i.ld = fsub nsz float %i.lb, %i.ck
  %i.le = fadd nsz <2 x float> %i.lc, %i.kt
  store <2 x float> %i.le, ptr %i.bw, align 4, !tbaa !53
  %i.lf = fadd nsz float %i.ld, %i.kx
  store float %i.lf, ptr %i.ke, align 4, !tbaa !141
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
  store i8 1, ptr %i.d, align 2, !tbaa !201
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
          to label %.noexc20 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

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
  br label %bb.d

bb.c:                                             ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit
  %i.af = load float, ptr %i.ad, align 4, !tbaa !234 ; 2 uses
  %i.ag = fcmp nsz une float %i.af, 0.000000e+00
  br i1 %i.ag, label %bb.k, label %bb.l

bb.d:                                             ; preds = %_ZNSt6vectorIfSaIfEE7reserveEm.exit, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit
  %.01230 = phi i16 [ 0, %_ZNSt6vectorIfSaIfEE7reserveEm.exit ], [ %i.bg, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit ]
  %i.ah = invoke noundef float @_Z12myrand_floatv()
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %bb.d
  %i.ai = load float, ptr %i.ad, align 4, !tbaa !234
  %i.aj = fmul nsz float %i.ah, %i.ai             ; 2 uses
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !232 ; 4 uses
  %i.al = load ptr, ptr %i.p, align 8, !tbaa !233
  %.not.i = icmp eq ptr %i.ak, %i.al
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store float %i.aj, ptr %i.ak, align 4, !tbaa !53
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  store ptr %i.am, ptr %i.ae, align 8, !tbaa !232
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

bb.g:                                             ; preds = %bb.e
  %i.an = load ptr, ptr %i.j, align 8, !tbaa !231 ; 4 uses
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.aq = sub i64 %i.ao, %i.ap                    ; 5 uses
  %i.ar = icmp eq i64 %i.aq, 9223372036854775804
  br i1 %i.ar, label %bb.h, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #29
          to label %.noexc21 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc21:                                         ; preds = %bb.h
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.as = ashr exact i64 %i.aq, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.as, i64 1)
  %i.at = add nsw i64 %.sroa.speculated.i.i.i, %i.as ; 2 uses
  %i.au = icmp ult i64 %i.at, %i.as
  %i.av = tail call i64 @llvm.umin.i64(i64 %i.at, i64 2305843009213693951)
  %i.aw = select i1 %i.au, i64 2305843009213693951, i64 %i.av ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.aw, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ax = shl nuw nsw i64 %i.aw, 2
  %i.ay = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #31
          to label %.noexc22 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc22:                                         ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 %i.aq ; 2 uses
  store float %i.aj, ptr %i.az, align 4, !tbaa !53
  %i.ba = icmp sgt i64 %i.aq, 0
  br i1 %i.ba, label %bb.i, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

bb.i:                                             ; preds = %.noexc22
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ay, ptr align 4 %i.an, i64 %i.aq, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i: ; preds = %bb.i, %.noexc22
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %.not.i17.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i, label %bb.j

end_hunk_0
