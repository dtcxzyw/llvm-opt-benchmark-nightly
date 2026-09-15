Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/capsule?download=true
inline.NumInlined: 93
inline.NumDeleted: 24
begin_hunk_0_@b3OverlapCapsule:bb.a
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @4, i64 %i.b) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load float, ptr %i.f, align 4, !tbaa !15
  store ptr %0, ptr %3, align 8, !tbaa !18
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 2, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !19
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  store float %i.g, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !12
  %i.h = icmp ne ptr %2, null, !nosanitize !9
  %i.i = ptrtoint ptr %2 to i64, !nosanitize !9   ; 2 uses
  %i.j = and i64 %i.i, 7, !nosanitize !9
  %i.k = icmp eq i64 %i.j, 0, !nosanitize !9
  %i.l = and i1 %i.h, %i.k, !nosanitize !9
  br i1 %i.l, label %bb.e, label %bb.d, !prof !10, !nosanitize !9

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @6, i64 %i.i) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !20
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.011.0.copyload = load <2 x float>, ptr %1, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.412.0.copyload = load float, ptr %.sroa.412.0..sroa_idx, align 8
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.513.0.copyload = load <2 x float>, ptr %.sroa.513.0..sroa_idx, align 4 ; 8 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.7.0.copyload = load <2 x float>, ptr %.sroa.7.0..sroa_idx, align 4 ; 6 uses
  %.sroa.2.8.vec.extract65.i = extractelement <2 x float> %.sroa.7.0.copyload, i64 0
  %.sroa.2.12.vec.extract.i = extractelement <2 x float> %.sroa.7.0.copyload, i64 1 ; 2 uses
  %i.o = fsub <2 x float> zeroinitializer, %.sroa.011.0.copyload ; 4 uses
  %i.p = fsub float 0.000000e+00, %.sroa.412.0.copyload ; 3 uses
  %i.q = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.r = insertelement <2 x float> %i.q, float %i.p, i64 1 ; 2 uses
  %i.s = fmul <2 x float> %i.r, %.sroa.513.0.copyload
  %i.t = shufflevector <2 x float> %.sroa.7.0.copyload, <2 x float> %.sroa.513.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.u = fmul <2 x float> %i.o, %i.t
  %i.v = shufflevector <2 x float> %.sroa.513.0.copyload, <2 x float> %.sroa.7.0.copyload, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.w = fmul <2 x float> %i.o, %i.v
  %i.x = insertelement <2 x float> %i.q, float %i.p, i64 0 ; 2 uses
  %i.y = fmul <2 x float> %i.x, %.sroa.513.0.copyload
  %i.z = fsub <2 x float> %i.s, %i.w
  %i.aa = fsub <2 x float> %i.u, %i.y
  %i.ab = shufflevector <2 x float> %.sroa.7.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ac = fmul <2 x float> %i.x, %i.ab
  %i.ad = fmul <2 x float> %i.r, %i.ab
  %i.ae = fsub <2 x float> %i.z, %i.ac            ; 2 uses
  %i.af = fsub <2 x float> %i.aa, %i.ad           ; 2 uses
  %i.ag = fmul <2 x float> %i.v, %i.ae
  %i.ah = fmul <2 x float> %i.t, %i.af
  %i.ai = fsub <2 x float> %i.ag, %i.ah
  %foldExtExtBinop = fmul <2 x float> %.sroa.513.0.copyload, %i.af
  %foldExtExtBinop18 = fmul <2 x float> %.sroa.513.0.copyload, %i.ae
  %shift = shufflevector <2 x float> %foldExtExtBinop18, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop20 = fsub <2 x float> %foldExtExtBinop, %shift
  %i.aj = extractelement <2 x float> %foldExtExtBinop20, i64 0
  %i.ak = fmul <2 x float> %i.ai, splat (float 2.000000e+00)
  %i.al = fadd <2 x float> %i.o, %i.ak
  %i.am = fmul float %i.aj, 2.000000e+00
  %i.an = fadd float %i.p, %i.am
  %i.ao = shufflevector <2 x float> %.sroa.513.0.copyload, <2 x float> %.sroa.7.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.ap = fmul <4 x float> %i.ao, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison> ; 5 uses
  %i.aq = extractelement <4 x float> %i.ap, i64 1 ; 2 uses
  %i.ar = extractelement <4 x float> %i.ap, i64 2
  %i.as = extractelement <4 x float> %i.ap, i64 0 ; 2 uses
  %i.at = fsub float %i.aq, %i.as
  %i.au = fmul float %.sroa.2.12.vec.extract.i, 0.000000e+00 ; 2 uses
  %i.av = fadd float %i.at, %i.au
  %i.aw = shufflevector <4 x float> %i.ap, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.ax = shufflevector <4 x float> %i.ap, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.ay = fsub <2 x float> %i.aw, %i.ax
  %i.az = insertelement <2 x float> poison, float %i.au, i64 0
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bb = fadd <2 x float> %i.ba, %i.ay
  %i.bc = fsub <2 x float> %i.bb, %.sroa.513.0.copyload
  %i.bd = fsub float %i.av, %.sroa.2.8.vec.extract65.i
  %.sroa.231.8.vec.insert.i = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.be = fadd float %i.as, %i.aq
  %i.bf = fadd float %i.ar, %i.be
  %i.bg = fadd float %.sroa.2.12.vec.extract.i, %i.bf
  %.sroa.231.12.vec.insert.i = insertelement <2 x float> %.sroa.231.8.vec.insert.i, float %i.bg, i64 1
  store <2 x float> %i.al, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  store float %i.an, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !12
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 44
  store <2 x float> %i.bc, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 52
  store <2 x float> %.sroa.231.12.vec.insert.i, ptr %.sroa.6.0..sroa_idx, align 4
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 60
  store i8 1, ptr %i.bh, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @b3ShapeDistance(ptr dead_on_unwind nonnull writable sret(%struct.b3DistanceOutput) align 4 %5, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef null, i32 noundef 0) #9
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !35
  %i.bk = call float @b3GetLengthUnitsPerMeter() #9
  %i.bl = fmul float %i.bk, 5.000000e-03
  %i.bm = fmul float %i.bl, 1.000000e-01
  %i.bn = fcmp olt float %i.bj, %i.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  ret i1 %i.bn
}

declare void @b3ShapeDistance(ptr dead_on_unwind writable sret(%struct.b3DistanceOutput) align 4, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare float @b3GetLengthUnitsPerMeter() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @b3RayCastCapsule(ptr dead_on_unwind noalias writable sret(%struct.b3CastOutput) align 4 %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !func_sanitize !36 {
bb.a:
  %3 = alloca %struct.b3Sphere, align 8           ; 6 uses
  %4 = alloca %struct.b3Sphere, align 8           ; 6 uses
  %5 = alloca %struct.b3Sphere, align 8           ; 6 uses
  %6 = alloca %struct.b3Sphere, align 8           ; 5 uses
  %i.a = icmp ne ptr %1, null, !nosanitize !9
  %i.b = ptrtoint ptr %1 to i64, !nosanitize !9   ; 2 uses
  %i.c = and i64 %i.b, 3, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @8, i64 %i.b) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %.sroa.0308.0.copyload = load <2 x float>, ptr %1, align 4 ; 5 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.8.0.copyload = load float, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !12 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %.sroa.0303.0.copyload = load <2 x float>, ptr %i.f, align 4 ; 2 uses
  %.sroa.5305.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.g = load <2 x float>, ptr %.sroa.5305.0..sroa_idx, align 4, !tbaa !12 ; 3 uses
  %i.h = extractelement <2 x float> %i.g, i64 1   ; 6 uses
  %i.i = fsub <2 x float> %.sroa.0303.0.copyload, %.sroa.0308.0.copyload ; 3 uses
  %i.j = extractelement <2 x float> %i.g, i64 0
  %i.k = fsub float %i.j, %.sroa.8.0.copyload     ; 3 uses
  %i.l = tail call float @b3GetLengthUnitsPerMeter() #9
  %i.m = fmul float %i.l, 5.000000e-03
  %i.n = fmul float %i.m, f0x3C23D70A             ; 2 uses
  %i.o = fmul <2 x float> %i.i, %i.i              ; 2 uses
  %shift = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.o, %shift
  %i.p = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.q = fmul float %i.k, %i.k
  %i.r = fadd float %i.q, %i.p                    ; 2 uses
  %i.s = fmul float %i.n, %i.n
  %i.t = fcmp olt float %i.r, %i.s
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0263.0.copyload = load <2 x float>, ptr %1, align 4
  %.sroa.2264.0.copyload = load float, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.0261.0.copyload = load <2 x float>, ptr %i.f, align 4
  %.sroa.2262.0.copyload = load float, ptr %.sroa.5305.0..sroa_idx, align 4
  %i.v = fadd float %.sroa.2264.0.copyload, %.sroa.2262.0.copyload
  %i.w = fadd <2 x float> %.sroa.0263.0.copyload, %.sroa.0261.0.copyload
  %i.x = fmul <2 x float> %i.w, splat (float 5.000000e-01)
  %i.y = fmul float %i.v, 5.000000e-01
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  store <2 x float> %i.x, ptr %3, align 8
  %.sroa.4268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %i.y, ptr %.sroa.4268.0..sroa_idx, align 8, !tbaa !12
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.aa = load float, ptr %i.u, align 4, !tbaa !15
  store float %i.aa, ptr %i.z, align 4, !tbaa !38
  call void @b3RayCastSphere(ptr dead_on_unwind writable sret(%struct.b3CastOutput) align 4 %0, ptr noundef nonnull %3, ptr noundef %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %bb.ab

bb.e:                                             ; preds = %bb.c
  %i.ab = icmp ne ptr %2, null, !nosanitize !9
  %i.ac = ptrtoint ptr %2 to i64, !nosanitize !9  ; 2 uses
  %i.ad = and i64 %i.ac, 3, !nosanitize !9
  %i.ae = icmp eq i64 %i.ad, 0, !nosanitize !9
  %i.af = and i1 %i.ab, %i.ae, !nosanitize !9
  br i1 %i.af, label %bb.g, label %bb.f, !prof !10, !nosanitize !9

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @10, i64 %i.ac) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.g:                                             ; preds = %bb.e
  %.sroa.0241.0.copyload = load <2 x float>, ptr %2, align 4 ; 2 uses
  %.sroa.2242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2242.0.copyload = load float, ptr %.sroa.2242.0..sroa_idx, align 4 ; 2 uses
  %i.ag = fsub <2 x float> %.sroa.0241.0.copyload, %.sroa.0308.0.copyload ; 7 uses
  %i.ah = fsub float %.sroa.2242.0.copyload, %.sroa.8.0.copyload ; 6 uses
  %sqrt = tail call float @llvm.sqrt.f32(float %i.r) ; 5 uses
  %i.ai = fdiv float 1.000000e+00, %sqrt          ; 2 uses
  %i.aj = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.ak = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.al = fmul <2 x float> %i.i, %i.ak            ; 9 uses
  %i.am = fmul float %i.k, %i.ai                  ; 8 uses
  %i.an = extractelement <2 x float> %i.al, i64 0
  %i.ao = extractelement <2 x float> %i.ag, i64 0
  %foldExtExtBinop611 = fmul <2 x float> %i.al, %i.ag
  %i.ap = extractelement <2 x float> %foldExtExtBinop611, i64 0
  %i.aq = extractelement <2 x float> %i.al, i64 1 ; 2 uses
  %i.ar = extractelement <2 x float> %i.ag, i64 1 ; 2 uses
  %i.as = fmul float %i.aq, %i.ar
  %i.at = fadd float %i.ap, %i.as
  %i.au = fmul float %i.am, %i.ah
  %i.av = fadd float %i.au, %i.at                 ; 12 uses
  %i.aw = fmul float %i.an, %i.av
  %i.ax = fmul float %i.aq, %i.av
  %i.ay = fmul float %i.am, %i.av
  %i.az = fsub float %i.ao, %i.aw                 ; 3 uses
  %i.ba = fsub float %i.ar, %i.ax                 ; 3 uses
  %i.bb = fsub float %i.ah, %i.ay                 ; 3 uses
  %i.bc = fmul float %i.az, %i.az
  %i.bd = fmul float %i.ba, %i.ba
  %i.be = fadd float %i.bc, %i.bd
  %i.bf = fmul float %i.bb, %i.bb
  %i.bg = fadd float %i.bf, %i.be                 ; 2 uses
  %i.bh = fmul float %i.h, %i.h                   ; 5 uses
  %i.bi = fcmp olt float %i.bg, %i.bh
  br i1 %i.bi, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.bj = fcmp olt float %i.av, 0.000000e+00
  %i.bk = fcmp olt float %sqrt, %i.av
  %i.bl = select i1 %i.bk, float %sqrt, float %i.av
  %i.bm = select i1 %i.bj, float 0.000000e+00, float %i.bl ; 2 uses
  %i.bn = insertelement <2 x float> poison, float %i.bm, i64 0
  %i.bo = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bp = fmul <2 x float> %i.al, %i.bo           ; 2 uses
  %i.bq = fmul float %i.am, %i.bm                 ; 2 uses
  %i.br = fsub float %i.ah, %i.bq                 ; 2 uses
  %i.bs = fsub <2 x float> %i.ag, %i.bp           ; 2 uses
  %i.bt = fmul <2 x float> %i.bs, %i.bs           ; 2 uses
  %shift613 = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop614 = fadd <2 x float> %i.bt, %shift613
  %i.bu = extractelement <2 x float> %foldExtExtBinop614, i64 0
  %i.bv = fmul float %i.br, %i.br
  %i.bw = fadd float %i.bv, %i.bu
  %i.bx = fcmp olt float %i.bw, %i.bh
  br i1 %i.bx, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store <2 x float> zeroinitializer, ptr %0, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float 0.000000e+00, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !12
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store <2 x float> %.sroa.0241.0.copyload, ptr %.sroa.12.0..sroa_idx, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %.sroa.2242.0.copyload, ptr %.sroa.14.0..sroa_idx, align 4, !tbaa !12
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.16559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.15.0..sroa_idx, i8 0, i64 20, i1 false)
  store i8 1, ptr %.sroa.16559.0..sroa_idx, align 4, !tbaa !39
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.18.0..sroa_idx, i8 0, i64 3, i1 false)
  br label %bb.ab

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.by = fadd <2 x float> %.sroa.0308.0.copyload, %i.bp
  %i.bz = fadd float %.sroa.8.0.copyload, %i.bq
  store <2 x float> %i.by, ptr %4, align 8
  %.sroa.2156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %i.bz, ptr %.sroa.2156.0..sroa_idx, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 12
  store float %i.h, ptr %i.ca, align 4, !tbaa !38
  call void @b3RayCastSphere(ptr dead_on_unwind writable sret(%struct.b3CastOutput) align 4 %0, ptr noundef nonnull %4, ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %bb.ab

bb.k:                                             ; preds = %bb.g
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.0150.0.copyload = load <2 x float>, ptr %i.cb, align 4 ; 4 uses
  %.sroa.5152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.5152.0.copyload = load float, ptr %.sroa.5152.0..sroa_idx, align 4, !tbaa !12 ; 4 uses
  %i.cc = fmul <2 x float> %.sroa.0150.0.copyload, %.sroa.0150.0.copyload ; 2 uses
  %shift616 = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop617 = fadd <2 x float> %i.cc, %shift616
  %i.cd = extractelement <2 x float> %foldExtExtBinop617, i64 0
  %i.ce = fmul float %.sroa.5152.0.copyload, %.sroa.5152.0.copyload
  %i.cf = fadd float %i.ce, %i.cd                 ; 2 uses
  %i.cg = fcmp ogt float %i.cf, f0x057A0000
  br i1 %i.cg, label %bb.l, label %b3GetLengthAndNormalize.exit.thread

b3GetLengthAndNormalize.exit.thread:              ; preds = %bb.k
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  br label %bb.ab

bb.l:                                             ; preds = %bb.k
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.cf) ; 3 uses
  %i.ch = fdiv float 1.000000e+00, %sqrt.i        ; 2 uses
  %i.ci = insertelement <2 x float> poison, float %i.ch, i64 0
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ck = fmul <2 x float> %.sroa.0150.0.copyload, %i.cj ; 5 uses
  %i.cl = fmul float %.sroa.5152.0.copyload, %i.ch ; 5 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !41 ; 4 uses
  %i.co = fmul <2 x float> %i.al, %.sroa.0150.0.copyload ; 2 uses
  %shift619 = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop620 = fadd <2 x float> %i.co, %shift619
  %i.cp = extractelement <2 x float> %foldExtExtBinop620, i64 0
  %i.cq = fmul float %i.am, %.sroa.5152.0.copyload
  %i.cr = fadd float %i.cq, %i.cp
  %i.cs = fmul float %i.cr, %i.cn
  %i.ct = fadd float %i.av, %i.cs                 ; 2 uses
  %i.cu = fneg float %i.h                         ; 2 uses
  %i.cv = fcmp olt float %i.av, %i.cu
  %i.cw = fcmp olt float %i.ct, %i.cu
  %or.cond = select i1 %i.cv, i1 %i.cw, i1 false
  br i1 %or.cond, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cx = fadd float %sqrt, %i.h                  ; 2 uses
  %i.cy = fcmp olt float %i.cx, %i.av
  %i.cz = fcmp olt float %i.cx, %i.ct
  %or.cond348 = select i1 %i.cy, i1 %i.cz, i1 false
  br i1 %or.cond348, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  br label %bb.ab

bb.o:                                             ; preds = %bb.m
  %i.da = fmul <2 x float> %i.al, %i.ck           ; 2 uses
  %shift622 = shufflevector <2 x float> %i.da, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop623 = fadd <2 x float> %i.da, %shift622
  %i.db = extractelement <2 x float> %foldExtExtBinop623, i64 0
  %i.dc = fmul float %i.am, %i.cl
  %i.dd = fadd float %i.dc, %i.db                 ; 7 uses
  %i.de = fmul float %i.dd, %i.dd
  %i.df = fsub float 1.000000e+00, %i.de          ; 2 uses
  %i.dg = fcmp olt float %i.df, f0x34000000
  br i1 %i.dg, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.dh = fmul float %i.am, %i.dd
  %i.di = fsub float %i.cl, %i.dh                 ; 3 uses
  %i.dj = insertelement <2 x float> poison, float %i.dd, i64 0
  %i.dk = shufflevector <2 x float> %i.dj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dl = fmul <2 x float> %i.al, %i.dk
  %i.dm = fsub <2 x float> %i.ck, %i.dl           ; 4 uses
  %i.dn = fmul <2 x float> %i.dm, %i.dm           ; 2 uses
  %shift625 = shufflevector <2 x float> %i.dn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop626 = fadd <2 x float> %i.dn, %shift625
  %i.do = extractelement <2 x float> %foldExtExtBinop626, i64 0
  %i.dp = fmul float %i.di, %i.di
  %i.dq = fadd float %i.dp, %i.do
  %i.dr = extractelement <2 x float> %i.dm, i64 0
  %i.ds = fmul float %i.az, %i.dr
  %i.dt = extractelement <2 x float> %i.dm, i64 1
  %i.du = fmul float %i.ba, %i.dt
  %i.dv = fadd float %i.ds, %i.du
  %i.dw = fmul float %i.bb, %i.di
  %i.dx = fadd float %i.dw, %i.dv                 ; 4 uses
  %i.dy = fsub float %i.bg, %i.bh                 ; 2 uses
  %i.dz = fmul float %i.dx, %i.dx
  %i.ea = fmul float %i.dy, %i.dq
  %i.eb = fsub float %i.dz, %i.ea                 ; 2 uses
  %i.ec = fcmp ult float %i.dx, 0.000000e+00
  %i.ed = fcmp uge float %i.eb, 0.000000e+00
  %or.cond.not = and i1 %i.ec, %i.ed
  br i1 %or.cond.not, label %.thread, label %bb.q

.thread:                                          ; preds = %bb.p
  %i.ee = tail call float @sqrtf(float noundef %i.eb) #9
  %i.ef = fsub float %i.ee, %i.dx
  %i.eg = fdiv float %i.dy, %i.ef
  br label %bb.t

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  br label %bb.ab

bb.r:                                             ; preds = %bb.o
  %i.eh = fdiv float 1.000000e+00, %i.df          ; 3 uses
  %7 = fmul <2 x float> %i.ag, %i.ck              ; 2 uses
  %shift628 = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop629 = fadd <2 x float> %7, %shift628
  %i.ei = extractelement <2 x float> %foldExtExtBinop629, i64 0
  %i.ej = fmul float %i.ah, %i.cl
  %i.ek = fadd float %i.ej, %i.ei                 ; 2 uses
  %i.el = fmul float %i.dd, %i.ek
  %i.em = fmul float %i.av, %i.dd
  %i.en = fsub float %i.av, %i.el
  %8 = fsub float %i.em, %i.ek
  %i.eo = fmul float %i.en, %i.eh                 ; 2 uses
  %9 = fmul float %8, %i.eh                       ; 3 uses
  %10 = insertelement <2 x float> poison, float %i.eo, i64 0
  %11 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> zeroinitializer
  %12 = fmul <2 x float> %i.al, %11
  %i.ep = fmul float %i.am, %i.eo
  %13 = insertelement <2 x float> poison, float %9, i64 0
  %14 = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> zeroinitializer
  %15 = fmul <2 x float> %i.ck, %14
  %16 = fadd <2 x float> %i.ag, %15
  %i.eq = fmul float %i.cl, %9
  %i.er = fadd float %i.ah, %i.eq
  %17 = fsub <2 x float> %16, %12                 ; 2 uses
  %i.es = fsub float %i.er, %i.ep                 ; 2 uses
  %18 = fmul <2 x float> %17, %17                 ; 2 uses
  %shift631 = shufflevector <2 x float> %18, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop632 = fadd <2 x float> %18, %shift631
  %19 = extractelement <2 x float> %foldExtExtBinop632, i64 0
  %i.et = fmul float %i.es, %i.es
  %i.eu = fadd float %i.et, %19                   ; 2 uses
  %i.ev = fcmp ule float %i.eu, %i.bh
  br i1 %i.ev, label %.thread594, label %bb.s

.thread594:                                       ; preds = %bb.r
  %i.ew = fsub float %i.bh, %i.eu
  %i.ex = fmul float %i.eh, %i.ew
  %i.ey = tail call float @sqrtf(float noundef %i.ex) #9
  %i.ez = fsub float %9, %i.ey
  br label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  br label %bb.ab

bb.t:                                             ; preds = %.thread594, %.thread
  %.2 = phi float [ %i.eg, %.thread ], [ %i.ez, %.thread594 ] ; 6 uses
  %i.fa = fcmp olt float %.2, 0.000000e+00
  %i.fb = fmul float %sqrt.i, %i.cn
  %i.fc = fcmp olt float %i.fb, %.2
  %or.cond597 = select i1 %i.fa, i1 true, i1 %i.fc
  br i1 %or.cond597, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  br label %bb.ab

bb.v:                                             ; preds = %bb.t
  %i.fd = fmul float %i.dd, %.2
  %i.fe = fadd float %i.av, %i.fd                 ; 4 uses
  %i.ff = fcmp olt float %i.fe, 0.000000e+00
  br i1 %i.ff, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  store <2 x float> %.sroa.0308.0.copyload, ptr %5, align 8
  %.sroa.8.0..sroa_idx313 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %.sroa.8.0.copyload, ptr %.sroa.8.0..sroa_idx313, align 8, !tbaa !12
  %i.fg = getelementptr inbounds nuw i8, ptr %5, i64 12
  store float %i.h, ptr %i.fg, align 4, !tbaa !38
  call void @b3RayCastSphere(ptr dead_on_unwind writable sret(%struct.b3CastOutput) align 4 %0, ptr noundef nonnull %5, ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %bb.ab

bb.x:                                             ; preds = %bb.v
  %i.fh = fcmp olt float %sqrt, %i.fe
  br i1 %i.fh, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  store <2 x float> %.sroa.0303.0.copyload, ptr %6, align 8
  %.sroa.5305.0..sroa_idx306 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store <2 x float> %i.g, ptr %.sroa.5305.0..sroa_idx306, align 8, !tbaa !12
  call void @b3RayCastSphere(ptr dead_on_unwind writable sret(%struct.b3CastOutput) align 4 %0, ptr noundef nonnull %6, ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %bb.ab

bb.z:                                             ; preds = %bb.x
  %i.fi = insertelement <2 x float> poison, float %.2, i64 0
  %i.fj = shufflevector <2 x float> %i.fi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fk = fmul <2 x float> %i.ck, %i.fj
  %i.fl = fadd <2 x float> %i.ag, %i.fk           ; 2 uses
  %i.fm = fmul float %i.cl, %.2
  %i.fn = fadd float %i.ah, %i.fm                 ; 2 uses
  %i.fo = insertelement <2 x float> poison, float %i.fe, i64 0
  %i.fp = shufflevector <2 x float> %i.fo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fq = fmul <2 x float> %i.al, %i.fp
  %i.fr = fsub <2 x float> %i.fl, %i.fq           ; 3 uses
  %i.fs = fmul float %i.am, %i.fe
  %i.ft = fsub float %i.fn, %i.fs                 ; 3 uses
  %i.fu = fmul <2 x float> %i.fr, %i.fr           ; 2 uses
  %shift630 = shufflevector <2 x float> %i.fu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop631 = fadd <2 x float> %i.fu, %shift630
  %i.fv = extractelement <2 x float> %foldExtExtBinop631, i64 0
  %i.fw = fmul float %i.ft, %i.ft
  %i.fx = fadd float %i.fw, %i.fv                 ; 2 uses
  %i.fy = fcmp ogt float %i.fx, f0x057A0000
  br i1 %i.fy, label %bb.aa, label %b3Normalize.exit

bb.aa:                                            ; preds = %bb.z
  %sqrt598 = tail call float @llvm.sqrt.f32(float %i.fx)
  %i.fz = fdiv float 1.000000e+00, %sqrt598       ; 2 uses
  %i.ga = insertelement <2 x float> poison, float %i.fz, i64 0
  %i.gb = shufflevector <2 x float> %i.ga, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gc = fmul <2 x float> %i.fr, %i.gb
  %i.gd = fmul float %i.ft, %i.fz
  br label %b3Normalize.exit

b3Normalize.exit:                                 ; preds = %bb.z, %bb.aa
  %.sroa.07.0.i = phi <2 x float> [ %i.gc, %bb.aa ], [ zeroinitializer, %bb.z ]
  %.sroa.5.0.i = phi float [ %i.gd, %bb.aa ], [ 0.000000e+00, %bb.z ]
  %i.ge = fadd <2 x float> %.sroa.0308.0.copyload, %i.fl
  %i.gf = fadd float %.sroa.8.0.copyload, %i.fn
  %i.gg = fdiv float %.2, %sqrt.i                 ; 3 uses
  %i.gh = fcmp olt float %i.gg, 0.000000e+00
  %i.gi = fcmp olt float %i.cn, %i.gg
  %i.gj = select i1 %i.gi, float %i.cn, float %i.gg
  %i.gk = select i1 %i.gh, float 0.000000e+00, float %i.gj
  store <2 x float> %.sroa.07.0.i, ptr %0, align 4
  %.sroa.11.0..sroa_idx515 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %.sroa.5.0.i, ptr %.sroa.11.0..sroa_idx515, align 4, !tbaa !12
  %.sroa.12.0..sroa_idx527 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store <2 x float> %i.ge, ptr %.sroa.12.0..sroa_idx527, align 4
  %.sroa.14.0..sroa_idx539 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.gf, ptr %.sroa.14.0..sroa_idx539, align 4, !tbaa !12
  %.sroa.15.0..sroa_idx551 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.gk, ptr %.sroa.15.0..sroa_idx551, align 4, !tbaa !12
  %.sroa.16.0..sroa_idx558 = getelementptr inbounds nuw i8, ptr %0, i64 28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.16.0..sroa_idx558, i8 0, i64 16, i1 false)
  %.sroa.16559.0..sroa_idx570 = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 1, ptr %.sroa.16559.0..sroa_idx570, align 4, !tbaa !39
  %.sroa.18.0..sroa_idx577 = getelementptr inbounds nuw i8, ptr %0, i64 45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.18.0..sroa_idx577, i8 0, i64 3, i1 false)
  br label %bb.ab

bb.ab:                                            ; preds = %b3GetLengthAndNormalize.exit.thread, %bb.u, %b3Normalize.exit, %bb.y, %bb.w, %bb.n, %bb.q, %bb.s, %bb.j, %bb.i, %bb.d
  ret void
}

declare void @b3RayCastSphere(ptr dead_on_unwind writable sret(%struct.b3CastOutput) align 4, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @b3ShapeCastCapsule(ptr dead_on_unwind noalias writable sret(%struct.b3CastOutput) align 4 %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 !func_sanitize !42 {
bb.a:
  %3 = alloca %struct.b3ShapeCastPairInput, align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.a = icmp ne ptr %1, null, !nosanitize !9
  %i.b = ptrtoint ptr %1 to i64, !nosanitize !9   ; 2 uses
  %i.c = and i64 %i.b, 3, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @11, i64 %i.b) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load float, ptr %i.f, align 4, !tbaa !15
  store ptr %1, ptr %3, align 8, !tbaa !18
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 2, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !19
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  store float %i.g, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !12
  %i.h = icmp ne ptr %2, null, !nosanitize !9
  %i.i = ptrtoint ptr %2 to i64, !nosanitize !9   ; 2 uses
  %i.j = and i64 %i.i, 7, !nosanitize !9
  %i.k = icmp eq i64 %i.j, 0, !nosanitize !9
  %i.l = and i1 %i.h, %i.k, !nosanitize !9
  br i1 %i.l, label %bb.e, label %bb.d, !prof !10, !nosanitize !9

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @13, i64 %i.i) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !20
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.n, ptr noundef nonnull align 8 dereferenceable(28) @b3Transform_identity, i64 28, i1 false), !tbaa.struct !43
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.p, ptr noundef nonnull align 8 dereferenceable(12) %i.o, i64 12, i1 false), !tbaa.struct !44
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.s = load float, ptr %i.q, align 4, !tbaa !46
  store float %i.s, ptr %i.r, align 8, !tbaa !48
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.u = load i8, ptr %i.t, align 8, !tbaa !49    ; 3 uses
  %i.v = icmp ult i8 %i.u, 2
  br i1 %i.v, label %bb.g, label %bb.f, !prof !10, !nosanitize !9

bb.f:                                             ; preds = %bb.e
  %i.w = zext i8 %i.u to i64, !nosanitize !9
  tail call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @14, i64 %i.w) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.g:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 76
  store i8 %i.u, ptr %i.x, align 4, !tbaa !50
  call void @b3ShapeCast(ptr dead_on_unwind writable sret(%struct.b3CastOutput) align 4 %0, ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  ret void
}

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_load_invalid_value_abort(ptr, i64) local_unnamed_addr #2

declare void @b3ShapeCast(ptr dead_on_unwind writable sret(%struct.b3CastOutput) align 4, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @b3CollideMoverAndCapsule(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !func_sanitize !51 {
bb.a:
  %.sroa.014.i = alloca <2 x float>, align 8      ; 5 uses
  %.sroa.0.i = alloca <2 x float>, align 8        ; 5 uses
  %3 = alloca %struct.b3SegmentDistanceResult, align 8 ; 8 uses
  %i.a = icmp ne ptr %2, null, !nosanitize !9
  %i.b = ptrtoint ptr %2 to i64, !nosanitize !9   ; 2 uses
  %i.c = and i64 %i.b, 3, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @15, i64 %i.b) #8, !nosanitize !9
end_hunk_0
