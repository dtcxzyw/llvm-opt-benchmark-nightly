Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rmodels?download=true
inline.NumInlined: 1421
inline.NumDeleted: 227
loop-unroll.NumCompletelyUnrolled: 83
loop-unroll.NumRuntimeUnrolled: 99
loop-unroll.NumUnrolled: 188
begin_hunk_0_@GetModelBoundingBox:bb.a
  %indvars.iv.next.i46 = add nuw nsw i64 %indvars.iv.i32, 1 ; 2 uses
  %exitcond.not.i47 = icmp eq i64 %indvars.iv.next.i46, %wide.trip.count.i30
  br i1 %exitcond.not.i47, label %GetMeshBoundingBox.exit48, label %.lr.ph.i31

GetMeshBoundingBox.exit48:                        ; preds = %.lr.ph.i31, %bb.d, %bb.e
  %.sroa.034.1.i23 = phi <2 x float> [ zeroinitializer, %bb.d ], [ %i.aa, %bb.e ], [ %i.ak, %.lr.ph.i31 ] ; 2 uses
  %.sroa.8.1.i24 = phi float [ 0.000000e+00, %bb.d ], [ %i.ac, %bb.e ], [ %i.al, %.lr.ph.i31 ] ; 2 uses
  %.sroa.036.1.i25 = phi <2 x float> [ zeroinitializer, %bb.d ], [ %i.aa, %bb.e ], [ %i.aj, %.lr.ph.i31 ] ; 2 uses
  %.sroa.838.1.i26 = phi float [ 0.000000e+00, %bb.d ], [ %i.ac, %bb.e ], [ %i.ah, %.lr.ph.i31 ] ; 2 uses
  %i.am = fcmp olt <2 x float> %i.y, %.sroa.036.1.i25
  %i.an = select <2 x i1> %i.am, <2 x float> %i.y, <2 x float> %.sroa.036.1.i25 ; 3 uses
  %i.ao = fcmp olt float %i.v, %.sroa.838.1.i26
  %i.ap = select i1 %i.ao, float %i.v, float %.sroa.838.1.i26 ; 2 uses
  %i.aq = fcmp ogt <2 x float> %i.x, %.sroa.034.1.i23
  %i.ar = select <2 x i1> %i.aq, <2 x float> %i.x, <2 x float> %.sroa.034.1.i23 ; 3 uses
  %i.as = fcmp ogt float %i.w, %.sroa.8.1.i24
  %i.at = select i1 %i.as, float %i.w, float %.sroa.8.1.i24 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit_crit_edge, label %bb.d

..loopexit_crit_edge:                             ; preds = %GetMeshBoundingBox.exit48
  %i.au = extractelement <2 x float> %i.an, i64 1
  store float %i.au, ptr %i.t, align 4
  %i.av = extractelement <2 x float> %i.ar, i64 1
  store float %i.av, ptr %i.u, align 4
  %i.aw = extractelement <2 x float> %i.ar, i64 0
  %i.ax = extractelement <2 x float> %i.an, i64 0
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %GetMeshBoundingBox.exit
  %.lcssa90 = phi float [ %i.at, %..loopexit_crit_edge ], [ %.sroa.8.1.i, %GetMeshBoundingBox.exit ]
  %.lcssa89 = phi float [ %i.aw, %..loopexit_crit_edge ], [ %i.s, %GetMeshBoundingBox.exit ]
  %.lcssa88 = phi float [ %i.ap, %..loopexit_crit_edge ], [ %.sroa.838.1.i, %GetMeshBoundingBox.exit ]
  %.lcssa87 = phi float [ %i.ax, %..loopexit_crit_edge ], [ %i.r, %GetMeshBoundingBox.exit ]
  store float %.lcssa87, ptr %0, align 4
  store float %.lcssa89, ptr %.sroa.556.0..sroa_idx, align 4
  %.sroa.08.0.copyload.pre = load <2 x float>, ptr %0, align 4
  %.sroa.01.0.copyload.pre = load <2 x float>, ptr %.sroa.556.0..sroa_idx, align 4
  %i.ay = insertelement <2 x float> poison, float %.lcssa88, i64 0
  %i.az = insertelement <2 x float> %i.ay, float %.lcssa90, i64 1
  br label %bb.f

bb.f:                                             ; preds = %.loopexit, %bb.a
  %.sroa.01.0.copyload = phi <2 x float> [ %.sroa.01.0.copyload.pre, %.loopexit ], [ zeroinitializer, %bb.a ] ; 4 uses
  %.sroa.08.0.copyload = phi <2 x float> [ %.sroa.08.0.copyload.pre, %.loopexit ], [ zeroinitializer, %bb.a ] ; 4 uses
  %i.ba = phi <2 x float> [ %i.az, %.loopexit ], [ zeroinitializer, %bb.a ] ; 3 uses
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.668.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.1070.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bb = load <8 x float>, ptr %1, align 8       ; 4 uses
  %.sroa.1070.0.copyload = load float, ptr %.sroa.1070.0..sroa_idx, align 4
  %i.bc = load <4 x float>, ptr %.sroa.668.0..sroa_idx, align 4
  %i.bd = shufflevector <4 x float> %i.bc, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.be = shufflevector <2 x float> %.sroa.08.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bf = shufflevector <8 x float> %i.bb, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.bg = fmul <2 x float> %i.be, %i.bf
  %i.bh = shufflevector <8 x float> %i.bb, <8 x float> poison, <2 x i32> <i32 0, i32 4> ; 2 uses
  %i.bi = shufflevector <2 x float> %.sroa.08.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bh, <2 x float> %i.bi, <2 x float> %i.bg)
  %i.bk = shufflevector <8 x float> %i.bb, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %i.bl = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bk, <2 x float> %i.bl, <2 x float> %i.bj)
  %i.bn = shufflevector <8 x float> %i.bb, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %i.bo = fadd <2 x float> %i.bn, %i.bm
  store <2 x float> %i.bo, ptr %0, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bq = load <2 x float>, ptr %.sroa.8.0..sroa_idx, align 4 ; 2 uses
  %i.br = load <2 x float>, ptr %.sroa.466.0..sroa_idx, align 4 ; 2 uses
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> %i.bq, <2 x i32> <i32 0, i32 2>
  %i.bt = shufflevector <2 x float> %.sroa.01.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bu = fmul <2 x float> %i.bs, %i.bt
  %i.bv = shufflevector <2 x float> %.sroa.01.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bh, <2 x float> %i.bv, <2 x float> %i.bu)
  %i.bx = shufflevector <2 x float> %i.br, <2 x float> %i.bq, <2 x i32> <i32 1, i32 3>
  %i.by = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bx, <2 x float> %i.by, <2 x float> %i.bw)
  %i.ca = insertelement <2 x float> %i.bd, float %.sroa.1070.0.copyload, i64 1
  %i.cb = fadd <2 x float> %i.ca, %i.bz
  %i.cc = load <4 x float>, ptr %.sroa.11.0..sroa_idx, align 8 ; 4 uses
  %i.cd = shufflevector <2 x float> %.sroa.08.0.copyload, <2 x float> %.sroa.01.0.copyload, <2 x i32> <i32 1, i32 3>
  %i.ce = shufflevector <4 x float> %i.cc, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cf = fmul <2 x float> %i.cd, %i.ce
  %i.cg = shufflevector <4 x float> %i.cc, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ch = shufflevector <2 x float> %.sroa.08.0.copyload, <2 x float> %.sroa.01.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.ci = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cg, <2 x float> %i.ch, <2 x float> %i.cf)
  %i.cj = shufflevector <4 x float> %i.cc, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ck = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cj, <2 x float> %i.ba, <2 x float> %i.ci)
  %i.cl = shufflevector <4 x float> %i.cc, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.cm = fadd <2 x float> %i.cl, %i.ck           ; 2 uses
  %i.cn = extractelement <2 x float> %i.cm, i64 0
  store float %i.cn, ptr %.sroa.29.0..sroa_idx, align 4
  store <2 x float> %i.cb, ptr %i.bp, align 4
  %i.co = extractelement <2 x float> %i.cm, i64 1
  store float %i.co, ptr %.sroa.22.0..sroa_idx, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @GetMeshBoundingBox(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.BoundingBox) align 4 captures(none) %0, ptr nofree noundef readonly byval(%struct.Mesh) align 8 captures(none) %1) local_unnamed_addr #35 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load <2 x float>, ptr %i.b, align 4      ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load float, ptr %i.d, align 4            ; 4 uses
  %i.f = load i32, ptr %1, align 8                ; 2 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.b
  %wide.trip.count = zext nneg i32 %i.f to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.sroa.838.050 = phi float [ %i.e, %.lr.ph.preheader ], [ %i.k, %.lr.ph ]
  %.sroa.036.049 = phi <2 x float> [ %i.c, %.lr.ph.preheader ], [ %i.m, %.lr.ph ]
  %.sroa.8.048 = phi float [ %i.e, %.lr.ph.preheader ], [ %i.o, %.lr.ph ]
  %.sroa.034.047 = phi <2 x float> [ %i.c, %.lr.ph.preheader ], [ %i.n, %.lr.ph ]
  %.idx = mul nuw nsw i64 %indvars.iv, 12
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load float, ptr %i.i, align 4            ; 2 uses
  %i.k = tail call nsz float @llvm.minnum.f32(float %.sroa.838.050, float %i.j) ; 2 uses
  %i.l = load <2 x float>, ptr %i.h, align 4      ; 2 uses
  %i.m = tail call nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %.sroa.036.049, <2 x float> %i.l) ; 2 uses
  %i.n = tail call nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %.sroa.034.047, <2 x float> %i.l) ; 2 uses
  %i.o = tail call nsz float @llvm.maxnum.f32(float %.sroa.8.048, float %i.j) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.sroa.034.1 = phi <2 x float> [ zeroinitializer, %bb.a ], [ %i.c, %bb.b ], [ %i.n, %.lr.ph ]
  %.sroa.8.1 = phi float [ 0.000000e+00, %bb.a ], [ %i.e, %bb.b ], [ %i.o, %.lr.ph ]
  %.sroa.036.1 = phi <2 x float> [ zeroinitializer, %bb.a ], [ %i.c, %bb.b ], [ %i.m, %.lr.ph ]
  %.sroa.838.1 = phi float [ 0.000000e+00, %bb.a ], [ %i.e, %bb.b ], [ %i.k, %.lr.ph ]
  store <2 x float> %.sroa.036.1, ptr %0, align 4
  %.sroa.838.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %.sroa.838.1, ptr %.sroa.838.0..sroa_idx, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12
  store <2 x float> %.sroa.034.1, ptr %i.p, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %.sroa.8.1, ptr %.sroa.8.0..sroa_idx, align 4
  ret void
}

declare i32 @rlLoadVertexArray() local_unnamed_addr #34

declare zeroext i1 @rlEnableVertexArray(i32 noundef) local_unnamed_addr #34

declare i32 @rlLoadVertexBuffer(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #34

declare void @rlSetVertexAttribute(i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #34

declare void @rlEnableVertexAttribute(i32 noundef) local_unnamed_addr #34

declare void @rlSetVertexAttributeDefault(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #34

declare void @rlDisableVertexAttribute(i32 noundef) local_unnamed_addr #34

declare i32 @rlLoadVertexBufferElement(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #34

declare void @rlDisableVertexArray() local_unnamed_addr #34

; Function Attrs: nounwind uwtable
define void @UpdateMeshBuffer(ptr nofree noundef readonly byval(%struct.Mesh) align 8 captures(none) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4
  tail call void @rlUpdateVertexBuffer(i32 noundef %i.e, ptr noundef %2, i32 noundef %3, i32 noundef %4) #54
  ret void
}

declare void @rlUpdateVertexBuffer(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #34

; Function Attrs: nounwind uwtable
define void @DrawMesh(ptr nofree noundef readonly byval(%struct.Mesh) align 8 captures(none) %0, ptr nofree noundef readonly byval(%struct.Material) align 8 captures(none) %1, ptr nofree noundef readonly byval(%struct.Matrix) align 8 captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 4 uses
  %i.b = alloca [4 x float], align 16             ; 4 uses
  %3 = alloca %struct.Matrix, align 16            ; 8 uses
  %4 = alloca %struct.Matrix, align 8             ; 6 uses
  %5 = alloca %struct.Matrix, align 16            ; 9 uses
  %6 = alloca %struct.Matrix, align 8             ; 2 uses
  %7 = alloca %struct.Matrix, align 16            ; 5 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca [4 x float], align 16             ; 4 uses
  %8 = alloca %struct.Matrix, align 16            ; 11 uses
  %9 = alloca %struct.Matrix, align 8             ; 2 uses
  %10 = alloca %struct.Matrix, align 16           ; 5 uses
  %i.e = load i32, ptr %1, align 8
  tail call void @rlEnableShader(i32 noundef %i.e) #54
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 8 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.bl, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  %.not = icmp eq i32 %i.j, -1
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #54
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.n = load <4 x i8>, ptr %i.m, align 4
  %i.o = uitofp <4 x i8> %i.n to <4 x float>
  %i.p = fdiv <4 x float> %i.o, splat (float 2.550000e+02)
  store <4 x float> %i.p, ptr %i.a, align 16
  call void @rlSetUniform(i32 noundef %i.j, ptr noundef nonnull %i.a, i32 noundef 3, i32 noundef 1) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #54
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 52
  %i.r = load i32, ptr %i.q, align 4              ; 2 uses
  %.not31 = icmp eq i32 %i.r, -1
  br i1 %.not31, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #54
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = load <4 x i8>, ptr %i.u, align 4
  %i.w = uitofp <4 x i8> %i.v to <4 x float>
  %i.x = fdiv <4 x float> %i.w, splat (float 2.550000e+02)
  store <4 x float> %i.x, ptr %i.b, align 16
  call void @rlSetUniform(i32 noundef %i.r, ptr noundef nonnull %i.b, i32 noundef 3, i32 noundef 1) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #54
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #54
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.y, i8 0, i64 24, i1 false), !alias.scope !176
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #54
  call void @rlGetMatrixModelview(ptr dead_on_unwind nonnull writable sret(%struct.Matrix) align 4 %4) #54
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #54
  call void @rlGetMatrixProjection(ptr dead_on_unwind nonnull writable sret(%struct.Matrix) align 4 %5) #54
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.aa = load i32, ptr %i.z, align 4             ; 2 uses
  %.not32 = icmp eq i32 %i.aa, -1
  br i1 %.not32, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @rlSetUniformMatrix(i32 noundef %i.aa, ptr noundef nonnull byval(%struct.Matrix) align 8 %4) #54
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.ac = load i32, ptr %i.ab, align 4            ; 2 uses
  %.not33 = icmp eq i32 %i.ac, -1
  br i1 %.not33, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @rlSetUniformMatrix(i32 noundef %i.ac, ptr noundef nonnull byval(%struct.Matrix) align 8 %5) #54
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @rlGetMatrixTransform(ptr dead_on_unwind nonnull writable sret(%struct.Matrix) align 4 %6) #54
  %.sroa.7169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.11173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.15177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ad = load <16 x float>, ptr %6, align 8      ; 16 uses
  %i.ae = load <4 x float>, ptr %2, align 8       ; 4 uses
  %i.af = load <4 x float>, ptr %.sroa.7169.0..sroa_idx, align 8 ; 4 uses
  %i.ag = load <4 x float>, ptr %.sroa.11173.0..sroa_idx, align 8 ; 4 uses
  %i.ah = load <4 x float>, ptr %.sroa.15177.0..sroa_idx, align 8 ; 4 uses
  %i.ai = shufflevector <16 x float> %i.ad, <16 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.aj = fmul <4 x float> %i.ai, %i.af
  %i.ak = shufflevector <16 x float> %i.ad, <16 x float> poison, <4 x i32> zeroinitializer
  %i.al = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ae, <4 x float> %i.ak, <4 x float> %i.aj)
  %i.am = shufflevector <16 x float> %i.ad, <16 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.an = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ag, <4 x float> %i.am, <4 x float> %i.al)
  %i.ao = shufflevector <16 x float> %i.ad, <16 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ap = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ah, <4 x float> %i.ao, <4 x float> %i.an) ; 14 uses
  %i.aq = shufflevector <16 x float> %i.ad, <16 x float> poison, <4 x i32> <i32 5, i32 5, i32 5, i32 5>
  %i.ar = fmul <4 x float> %i.aq, %i.af
  %i.as = shufflevector <16 x float> %i.ad, <16 x float> poison, <4 x i32> <i32 4, i32 4, i32 4, i32 4>
  %i.at = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ae, <4 x float> %i.as, <4 x float> %i.ar)
  %i.au = shufflevector <16 x float> %i.ad, <16 x float> poison, <4 x i32> <i32 6, i32 6, i32 6, i32 6>
  %i.av = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ag, <4 x float> %i.au, <4 x float> %i.at)
  %i.aw = shufflevector <16 x float> %i.ad, <16 x float> poison, <4 x i32> <i32 7, i32 7, i32 7, i32 7>
  %i.ax = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ah, <4 x float> %i.aw, <4 x float> %i.av) ; 11 uses
  %i.ay = shufflevector <16 x float> %i.ad, <16 x float> poison, <4 x i32> <i32 9, i32 9, i32 9, i32 9>
  %i.az = fmul <4 x float> %i.ay, %i.af
  %i.ba = shufflevector <16 x float> %i.ad, <16 x float> poison, <4 x i32> <i32 8, i32 8, i32 8, i32 8>
  %i.bb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ae, <4 x float> %i.ba, <4 x float> %i.az)
  %i.bc = shufflevector <16 x float> %i.ad, <16 x float> poison, <4 x i32> <i32 10, i32 10, i32 10, i32 10>
  %i.bd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ag, <4 x float> %i.bc, <4 x float> %i.bb)
  %i.be = shufflevector <16 x float> %i.ad, <16 x float> poison, <4 x i32> <i32 11, i32 11, i32 11, i32 11>
  %i.bf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ah, <4 x float> %i.be, <4 x float> %i.bd) ; 10 uses
  %i.bg = shufflevector <16 x float> %i.ad, <16 x float> poison, <4 x i32> <i32 13, i32 13, i32 13, i32 13>
  %i.bh = fmul <4 x float> %i.bg, %i.af
  %i.bi = shufflevector <16 x float> %i.ad, <16 x float> poison, <4 x i32> <i32 12, i32 12, i32 12, i32 12>
  %i.bj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ae, <4 x float> %i.bi, <4 x float> %i.bh)
  %i.bk = shufflevector <16 x float> %i.ad, <16 x float> poison, <4 x i32> <i32 14, i32 14, i32 14, i32 14>
  %i.bl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ag, <4 x float> %i.bk, <4 x float> %i.bj)
  %i.bm = shufflevector <16 x float> %i.ad, <16 x float> poison, <4 x i32> <i32 15, i32 15, i32 15, i32 15>
  %i.bn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ah, <4 x float> %i.bm, <4 x float> %i.bl) ; 15 uses
  store <4 x float> %i.ap, ptr %3, align 16
  %.sroa.7111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <4 x float> %i.ax, ptr %.sroa.7111.0..sroa_idx, align 16
  %.sroa.11115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  store <4 x float> %i.bf, ptr %.sroa.11115.0..sroa_idx, align 16
  %.sroa.15119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 48
  store <4 x float> %i.bn, ptr %.sroa.15119.0..sroa_idx, align 16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  %i.bp = load i32, ptr %i.bo, align 4            ; 2 uses
  %.not34 = icmp eq i32 %i.bp, -1
  br i1 %.not34, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @rlSetUniformMatrix(i32 noundef %i.bp, ptr noundef nonnull byval(%struct.Matrix) align 8 %3) #54
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bq = load <16 x float>, ptr %4, align 8      ; 16 uses
  %i.br = shufflevector <16 x float> %i.bq, <16 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bs = fmul <4 x float> %i.ax, %i.br
  %i.bt = shufflevector <16 x float> %i.bq, <16 x float> poison, <4 x i32> zeroinitializer
  %i.bu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ap, <4 x float> %i.bt, <4 x float> %i.bs)
  %i.bv = shufflevector <16 x float> %i.bq, <16 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.bw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bf, <4 x float> %i.bv, <4 x float> %i.bu)
  %i.bx = shufflevector <16 x float> %i.bq, <16 x float> poison, <4 x i32> <i32 5, i32 5, i32 5, i32 5>
  %i.by = fmul <4 x float> %i.ax, %i.bx
  %i.bz = shufflevector <16 x float> %i.bq, <16 x float> poison, <4 x i32> <i32 4, i32 4, i32 4, i32 4>
  %i.ca = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ap, <4 x float> %i.bz, <4 x float> %i.by)
  %i.cb = shufflevector <16 x float> %i.bq, <16 x float> poison, <4 x i32> <i32 6, i32 6, i32 6, i32 6>
  %i.cc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bf, <4 x float> %i.cb, <4 x float> %i.ca)
  %i.cd = shufflevector <16 x float> %i.bq, <16 x float> poison, <4 x i32> <i32 9, i32 9, i32 9, i32 9>
  %i.ce = fmul <4 x float> %i.ax, %i.cd
  %i.cf = shufflevector <16 x float> %i.bq, <16 x float> poison, <4 x i32> <i32 8, i32 8, i32 8, i32 8>
  %i.cg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ap, <4 x float> %i.cf, <4 x float> %i.ce)
  %i.ch = shufflevector <16 x float> %i.bq, <16 x float> poison, <4 x i32> <i32 10, i32 10, i32 10, i32 10>
  %i.ci = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bf, <4 x float> %i.ch, <4 x float> %i.cg)
  %i.cj = shufflevector <16 x float> %i.bq, <16 x float> poison, <4 x i32> <i32 13, i32 13, i32 13, i32 13>
  %i.ck = fmul <4 x float> %i.ax, %i.cj
  %i.cl = shufflevector <16 x float> %i.bq, <16 x float> poison, <4 x i32> <i32 12, i32 12, i32 12, i32 12>
  %i.cm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ap, <4 x float> %i.cl, <4 x float> %i.ck)
  %i.cn = shufflevector <16 x float> %i.bq, <16 x float> poison, <4 x i32> <i32 14, i32 14, i32 14, i32 14>
  %i.co = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bf, <4 x float> %i.cn, <4 x float> %i.cm)
  %i.cp = shufflevector <16 x float> %i.bq, <16 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.cq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bn, <4 x float> %i.cp, <4 x float> %i.bw) ; 8 uses
  %i.cr = shufflevector <16 x float> %i.bq, <16 x float> poison, <4 x i32> <i32 7, i32 7, i32 7, i32 7>
  %i.cs = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bn, <4 x float> %i.cr, <4 x float> %i.cc) ; 8 uses
  %i.ct = shufflevector <16 x float> %i.bq, <16 x float> poison, <4 x i32> <i32 11, i32 11, i32 11, i32 11>
  %i.cu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bn, <4 x float> %i.ct, <4 x float> %i.ci) ; 8 uses
  %i.cv = shufflevector <16 x float> %i.bq, <16 x float> poison, <4 x i32> <i32 15, i32 15, i32 15, i32 15>
  %i.cw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bn, <4 x float> %i.cv, <4 x float> %i.co) ; 8 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.cy = load i32, ptr %i.cx, align 4            ; 2 uses
  %.not35 = icmp eq i32 %i.cy, -1
  br i1 %.not35, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cz = extractelement <4 x float> %i.ap, i64 0
  %i.da = extractelement <4 x float> %i.bn, i64 0
  %i.db = extractelement <4 x float> %i.bn, i64 1
  %i.dc = extractelement <4 x float> %i.ap, i64 2
  %i.dd = extractelement <4 x float> %i.bn, i64 2
  %i.de = extractelement <4 x float> %i.bn, i64 3
  %i.df = fneg <4 x float> %i.ap
  %i.dg = shufflevector <4 x float> %i.df, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.dh = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.dj = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.dk = shufflevector <4 x float> %i.ax, <4 x float> poison, <2 x i32> <i32 3, i32 1> ; 2 uses
  %i.dl = fneg <2 x float> %i.dk                  ; 2 uses
  %i.dm = shufflevector <4 x float> %i.bf, <4 x float> poison, <2 x i32> <i32 2, i32 0> ; 3 uses
  %i.dn = fmul <2 x float> %i.dm, %i.dl
  %i.do = shufflevector <4 x float> %i.ax, <4 x float> poison, <2 x i32> <i32 2, i32 0> ; 3 uses
  %i.dp = shufflevector <4 x float> %i.bf, <4 x float> poison, <2 x i32> <i32 3, i32 1> ; 3 uses
  %i.dq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.do, <2 x float> %i.dp, <2 x float> %i.dn) ; 4 uses
  %i.dr = shufflevector <2 x float> %i.dq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ds = fneg <2 x float> %i.dp                  ; 2 uses
  %i.dt = shufflevector <4 x float> %i.bn, <4 x float> poison, <2 x i32> <i32 2, i32 0> ; 2 uses
  %i.du = fmul <2 x float> %i.dt, %i.ds
  %i.dv = shufflevector <4 x float> %i.bn, <4 x float> poison, <2 x i32> <i32 3, i32 1> ; 2 uses
  %i.dw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dm, <2 x float> %i.dv, <2 x float> %i.du) ; 3 uses
  %i.dx = shufflevector <2 x float> %i.dw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.dy = extractelement <2 x float> %i.dw, i64 0
  %i.dz = extractelement <2 x float> %i.dq, i64 0
  %i.ea = extractelement <2 x float> %i.dq, i64 1
  %i.eb = extractelement <2 x float> %i.dw, i64 1
  %i.ec = fneg <4 x float> %i.ax
  %i.ed = shufflevector <4 x float> %i.ec, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.ee = shufflevector <4 x float> %i.ax, <4 x float> poison, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.ef = shufflevector <2 x float> %i.ed, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.eg = shufflevector <4 x float> %i.ee, <4 x float> %i.ef, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.eh = shufflevector <4 x float> %i.bn, <4 x float> poison, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.ei = fneg <4 x float> %i.ap                  ; 3 uses
  %i.ej = shufflevector <4 x float> %i.ei, <4 x float> poison, <2 x i32> <i32 3, i32 1> ; 3 uses
  %i.ek = extractelement <4 x float> %i.ei, i64 1
  %i.el = fmul float %i.da, %i.ek
  %i.em = call float @llvm.fmuladd.f32(float %i.cz, float %i.db, float %i.el) ; 4 uses
  %i.en = extractelement <4 x float> %i.ei, i64 3
  %i.eo = fmul <2 x float> %i.dm, %i.ej
  %i.ep = shufflevector <4 x float> %i.ap, <4 x float> poison, <2 x i32> <i32 2, i32 0> ; 2 uses
  %i.eq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ep, <2 x float> %i.dp, <2 x float> %i.eo) ; 5 uses
  %i.er = shufflevector <2 x float> %i.eq, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.es = fmul float %i.dd, %i.en
  %i.et = call float @llvm.fmuladd.f32(float %i.dc, float %i.de, float %i.es) ; 4 uses
  %i.eu = fneg float %i.et                        ; 2 uses
  %i.ev = fneg <4 x float> %i.bn
  %i.ew = shufflevector <4 x float> %i.ev, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.ex = fneg float %i.em                        ; 2 uses
  %i.ey = insertelement <4 x float> poison, float %i.eu, i64 0
  %i.ez = insertelement <4 x float> %i.ey, float %i.et, i64 1
  %i.fa = insertelement <4 x float> %i.ez, float %i.ex, i64 2
  %i.fb = insertelement <4 x float> %i.fa, float %i.em, i64 3
  %i.fc = fmul <4 x float> %i.bf, %i.fb
  %i.fd = extractelement <2 x float> %i.eq, i64 0
  %i.fe = extractelement <2 x float> %i.eq, i64 1
  %i.ff = fneg <2 x float> %i.eq
  %i.fg = shufflevector <4 x float> %i.dx, <4 x float> %i.ap, <4 x i32> <i32 0, i32 0, i32 6, i32 1>
  %i.fh = shufflevector <4 x float> %i.ap, <4 x float> %i.dx, <4 x i32> <i32 0, i32 poison, i32 5, i32 poison>
  %i.fi = shufflevector <2 x float> %i.ej, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 0> ; 2 uses
  %i.fj = shufflevector <4 x float> %i.fh, <4 x float> %i.fi, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.fk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fg, <4 x float> %i.fj, <4 x float> %i.fc)
  %i.fl = shufflevector <2 x float> %i.ew, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.fm = shufflevector <4 x float> %i.bn, <4 x float> %i.fl, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.fn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fm, <4 x float> %i.er, <4 x float> %i.fk)
  %i.fo = fmul <2 x float> %i.dt, %i.dl
  %i.fp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.do, <2 x float> %i.dv, <2 x float> %i.fo) ; 3 uses
  %i.fq = shufflevector <2 x float> %i.fp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.fr = fneg <2 x float> %i.fp                  ; 3 uses
  %i.fs = shufflevector <4 x float> %i.bf, <4 x float> poison, <4 x i32> <i32 1, i32 3, i32 0, i32 2>
  %i.ft = shufflevector <2 x float> %i.fp, <2 x float> %i.fr, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.fu = fmul <4 x float> %i.fs, %i.ft
  %i.fv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eg, <4 x float> %i.dx, <4 x float> %i.fu)
  %i.fw = fneg <4 x float> %i.bn
  %i.fx = shufflevector <4 x float> %i.fw, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.fy = shufflevector <2 x float> %i.fx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fz = shufflevector <4 x float> %i.eh, <4 x float> %i.fy, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.ga = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fz, <4 x float> %i.dr, <4 x float> %i.fv)
  %i.gb = fmul <2 x float> %i.do, %i.ej
  %i.gc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ep, <2 x float> %i.dk, <2 x float> %i.gb) ; 4 uses
  %i.gd = shufflevector <2 x float> %i.gc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ge = insertelement <4 x float> poison, float %i.et, i64 0
  %i.gf = insertelement <4 x float> %i.ge, float %i.eu, i64 1
  %i.gg = insertelement <4 x float> %i.gf, float %i.em, i64 2
  %i.gh = insertelement <4 x float> %i.gg, float %i.ex, i64 3
  %i.gi = fmul <4 x float> %i.ax, %i.gh
  %i.gj = shufflevector <4 x float> %i.gi, <4 x float> poison, <4 x i32> <i32 1, i32 3, i32 0, i32 2>
  %i.gk = extractelement <2 x float> %i.fr, i64 0
  %i.gl = fmul float %i.fe, %i.gk
  %i.gm = extractelement <2 x float> %i.gc, i64 1
  %i.gn = call float @llvm.fmuladd.f32(float %i.gm, float %i.dy, float %i.gl)
  %i.go = call float @llvm.fmuladd.f32(float %i.em, float %i.dz, float %i.gn)
  %i.gp = call float @llvm.fmuladd.f32(float %i.ea, float %i.et, float %i.go)
  %i.gq = extractelement <2 x float> %i.fr, i64 1
  %i.gr = call float @llvm.fmuladd.f32(float %i.gq, float %i.fd, float %i.gp)
  %i.gs = extractelement <2 x float> %i.gc, i64 0
  %i.gt = call float @llvm.fmuladd.f32(float %i.eb, float %i.gs, float %i.gr)
  %i.gu = fdiv float 1.000000e+00, %i.gt
  %i.gv = insertelement <4 x float> poison, float %i.gu, i64 0
  %i.gw = shufflevector <4 x float> %i.gv, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.gx = fmul <4 x float> %i.ga, %i.gw
  %i.gy = fmul <4 x float> %i.fn, %i.gw
  %i.gz = shufflevector <4 x float> %i.ap, <4 x float> poison, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.ha = shufflevector <2 x float> %i.dg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hb = shufflevector <4 x float> %i.gz, <4 x float> %i.ha, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.hc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hb, <4 x float> %i.fq, <4 x float> %i.gj)
  %i.hd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fz, <4 x float> %i.gd, <4 x float> %i.hc)
  %i.he = fmul <4 x float> %i.hd, %i.gw
  %i.hf = shufflevector <4 x float> %i.gx, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %i.hf, ptr %7, align 16, !alias.scope !177
  %i.hg = shufflevector <4 x float> %i.gy, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <4 x float> %i.hg, ptr %i.dh, align 16, !alias.scope !177
  %i.hh = shufflevector <4 x float> %i.he, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %i.hh, ptr %i.di, align 16, !alias.scope !177
  %i.hi = shufflevector <2 x float> %i.ff, <2 x float> %i.eq, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.hj = fmul <4 x float> %i.ax, %i.hi
  %i.hk = shufflevector <4 x float> %i.ap, <4 x float> %i.fi, <4 x i32> <i32 0, i32 5, i32 2, i32 4>
  %i.hl = shufflevector <2 x float> %i.dq, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.hm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hk, <4 x float> %i.hl, <4 x float> %i.hj)
  %i.hn = shufflevector <2 x float> %i.ds, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ho = shufflevector <4 x float> %i.bf, <4 x float> %i.hn, <4 x i32> <i32 0, i32 5, i32 2, i32 4>
  %i.hp = shufflevector <2 x float> %i.gc, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.hq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ho, <4 x float> %i.hp, <4 x float> %i.hm)
  %i.hr = fmul <4 x float> %i.hq, %i.gw
  %i.hs = shufflevector <4 x float> %i.hr, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <4 x float> %i.hs, ptr %i.dj, align 16, !alias.scope !177
  call void @rlSetUniformMatrix(i32 noundef %i.cy, ptr noundef nonnull byval(%struct.Matrix) align 8 %7) #54
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #54
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.hu = load ptr, ptr %i.ht, align 8            ; 3 uses
  store i32 0, ptr %i.c, align 4
  br label %bb.p

bb.o:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #54
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.hw = load i32, ptr %i.hv, align 8
  %i.hx = call zeroext i1 @rlEnableVertexArray(i32 noundef %i.hw) #54
  br i1 %i.hx, label %._crit_edge, label %bb.v

._crit_edge:                                      ; preds = %bb.o
  %.pre360 = load ptr, ptr %i.f, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre361 = load ptr, ptr %.phi.trans.insert, align 8
  %i.hy = icmp eq ptr %.pre361, null
  br label %bb.ah

bb.p:                                             ; preds = %bb.n, %bb.u
  %storemerge353 = phi i32 [ 0, %bb.n ], [ %i.iq, %bb.u ] ; 3 uses
  %i.hz = sext i32 %storemerge353 to i64
  %i.ia = getelementptr inbounds [28 x i8], ptr %i.hu, i64 %i.hz
  %i.ib = load i32, ptr %i.ia, align 4
  %.not44 = icmp eq i32 %i.ib, 0
  br i1 %.not44, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @rlActiveTextureSlot(i32 noundef %storemerge353) #54
  %i.ic = load i32, ptr %i.c, align 4             ; 3 uses
  %i.id = add i32 %i.ic, -7
  %or.cond3 = icmp ult i32 %i.id, 3
  br i1 %or.cond3, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ie = zext nneg i32 %i.ic to i64
  %i.if = getelementptr inbounds nuw [28 x i8], ptr %i.hu, i64 %i.ie
  %i.ig = load i32, ptr %i.if, align 4
  call void @rlEnableTextureCubemap(i32 noundef %i.ig) #54
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.ih = sext i32 %i.ic to i64
  %i.ii = getelementptr inbounds [28 x i8], ptr %i.hu, i64 %i.ih
  %i.ij = load i32, ptr %i.ii, align 4
  call void @rlEnableTexture(i32 noundef %i.ij) #54
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ik = load i32, ptr %i.c, align 4
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr [4 x i8], ptr %i.g, i64 %i.il
  %i.in = getelementptr i8, ptr %i.im, i64 60
  %i.io = load i32, ptr %i.in, align 4
  call void @rlSetUniform(i32 noundef %i.io, ptr noundef nonnull %i.c, i32 noundef 4, i32 noundef 1) #54
  %.pre = load i32, ptr %i.c, align 4
  br label %bb.u

bb.u:                                             ; preds = %bb.p, %bb.t
  %i.ip = phi i32 [ %storemerge353, %bb.p ], [ %.pre, %bb.t ] ; 2 uses
  %i.iq = add nsw i32 %i.ip, 1                    ; 2 uses
  store i32 %i.iq, ptr %i.c, align 4
  %i.ir = icmp slt i32 %i.ip, 11
  br i1 %i.ir, label %bb.p, label %bb.o

bb.v:                                             ; preds = %bb.o
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.it = load ptr, ptr %i.is, align 8            ; 7 uses
  %i.iu = load i32, ptr %i.it, align 4
  call void @rlEnableVertexBuffer(i32 noundef %i.iu) #54
  %i.iv = load ptr, ptr %i.f, align 8             ; 9 uses
  %i.iw = load i32, ptr %i.iv, align 4
  call void @rlSetVertexAttribute(i32 noundef %i.iw, i32 noundef 3, i32 noundef 5126, i1 noundef zeroext false, i32 noundef 0, i32 noundef 0) #54
  %i.ix = load i32, ptr %i.iv, align 4
  call void @rlEnableVertexAttribute(i32 noundef %i.ix) #54
  %i.iy = getelementptr inbounds nuw i8, ptr %i.it, i64 4
  %i.iz = load i32, ptr %i.iy, align 4
  call void @rlEnableVertexBuffer(i32 noundef %i.iz) #54
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iv, i64 4 ; 2 uses
  %i.jb = load i32, ptr %i.ja, align 4
  call void @rlSetVertexAttribute(i32 noundef %i.jb, i32 noundef 2, i32 noundef 5126, i1 noundef zeroext false, i32 noundef 0, i32 noundef 0) #54
  %i.jc = load i32, ptr %i.ja, align 4
  call void @rlEnableVertexAttribute(i32 noundef %i.jc) #54
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iv, i64 12 ; 3 uses
  %i.je = load i32, ptr %i.jd, align 4
  %.not36 = icmp eq i32 %i.je, -1
  br i1 %.not36, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.jf = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %i.jg = load i32, ptr %i.jf, align 4
  call void @rlEnableVertexBuffer(i32 noundef %i.jg) #54
  %i.jh = load i32, ptr %i.jd, align 4
  call void @rlSetVertexAttribute(i32 noundef %i.jh, i32 noundef 3, i32 noundef 5126, i1 noundef zeroext false, i32 noundef 0, i32 noundef 0) #54
  %i.ji = load i32, ptr %i.jd, align 4
  call void @rlEnableVertexAttribute(i32 noundef %i.ji) #54
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.jj = getelementptr inbounds nuw i8, ptr %i.iv, i64 20 ; 4 uses
  %i.jk = load i32, ptr %i.jj, align 4            ; 2 uses
  %.not37 = icmp eq i32 %i.jk, -1
  br i1 %.not37, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.jl = getelementptr inbounds nuw i8, ptr %i.it, i64 12
  %i.jm = load i32, ptr %i.jl, align 4            ; 2 uses
  %.not38 = icmp eq i32 %i.jm, 0
  br i1 %.not38, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @rlEnableVertexBuffer(i32 noundef %i.jm) #54
  %i.jn = load i32, ptr %i.jj, align 4
  call void @rlSetVertexAttribute(i32 noundef %i.jn, i32 noundef 4, i32 noundef 5121, i1 noundef zeroext true, i32 noundef 0, i32 noundef 0) #54
  %i.jo = load i32, ptr %i.jj, align 4
  call void @rlEnableVertexAttribute(i32 noundef %i.jo) #54
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.d, ptr noundef nonnull align 16 dereferenceable(16) @__const.DrawMeshInstanced.value, i64 16, i1 false)
  call void @rlSetVertexAttributeDefault(i32 noundef %i.jk, ptr noundef nonnull %i.d, i32 noundef 3, i32 noundef 4) #54
  %i.jp = load i32, ptr %i.jj, align 4
  call void @rlDisableVertexAttribute(i32 noundef %i.jp) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #54
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa, %bb.x
  %i.jq = getelementptr inbounds nuw i8, ptr %i.iv, i64 16 ; 3 uses
  %i.jr = load i32, ptr %i.jq, align 4
  %.not39 = icmp eq i32 %i.jr, -1
  br i1 %.not39, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.js = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  %i.jt = load i32, ptr %i.js, align 4
  call void @rlEnableVertexBuffer(i32 noundef %i.jt) #54
  %i.ju = load i32, ptr %i.jq, align 4
  call void @rlSetVertexAttribute(i32 noundef %i.ju, i32 noundef 4, i32 noundef 5126, i1 noundef zeroext false, i32 noundef 0, i32 noundef 0) #54
  %i.jv = load i32, ptr %i.jq, align 4
  call void @rlEnableVertexAttribute(i32 noundef %i.jv) #54
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.jw = getelementptr inbounds nuw i8, ptr %i.iv, i64 8 ; 3 uses
  %i.jx = load i32, ptr %i.jw, align 4
  %.not40 = icmp eq i32 %i.jx, -1
  br i1 %.not40, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.jy = getelementptr inbounds nuw i8, ptr %i.it, i64 20
  %i.jz = load i32, ptr %i.jy, align 4
  call void @rlEnableVertexBuffer(i32 noundef %i.jz) #54
  %i.ka = load i32, ptr %i.jw, align 4
  call void @rlSetVertexAttribute(i32 noundef %i.ka, i32 noundef 2, i32 noundef 5126, i1 noundef zeroext false, i32 noundef 0, i32 noundef 0) #54
  %i.kb = load i32, ptr %i.jw, align 4
  call void @rlEnableVertexAttribute(i32 noundef %i.kb) #54
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.kd = load ptr, ptr %i.kc, align 8
  %.not41 = icmp eq ptr %i.kd, null
  br i1 %.not41, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ke = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  %i.kf = load i32, ptr %i.ke, align 4
  call void @rlEnableVertexBufferElement(i32 noundef %i.kf) #54
  br label %bb.ah

bb.ah:                                            ; preds = %._crit_edge, %bb.af, %bb.ag
  %.not43 = phi i1 [ %i.hy, %._crit_edge ], [ true, %bb.af ], [ false, %bb.ag ] ; 2 uses
  %i.kg = phi ptr [ %.pre360, %._crit_edge ], [ %i.iv, %bb.af ], [ %i.iv, %bb.ag ]
  %i.kh = call zeroext i1 @rlIsStereoRenderEnabled() #54 ; 2 uses
  %spec.select = select i1 %i.kh, i32 2, i32 1    ; 2 uses
  %.sroa.7276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.11280.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.sroa.15284.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 48
  %.sroa.763.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %.sroa.1167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %.sroa.1571.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  %.sroa.7340.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.sroa.11344.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 32
  %.sroa.15348.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 24 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.kk = load i32, ptr %i.kj, align 4
  %i.kl = mul nsw i32 %i.kk, 3                    ; 2 uses
  %i.km = load i32, ptr %0, align 8               ; 2 uses
  br i1 %i.kh, label %.split.us.a, label %.split

.split.us.a:                                      ; preds = %bb.ah, %bb.ak
  %.021354.us = phi i32 [ %12, %bb.ak ], [ 0, %bb.ah ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #54
  %i.kn = call i32 @rlGetFramebufferWidth() #54
  %11 = mul nuw nsw i32 %i.kn, %.021354.us
  %i.ko = sdiv i32 %11, 2
  %i.kp = call i32 @rlGetFramebufferWidth() #54
  %i.kq = sdiv i32 %i.kp, 2
  %i.kr = call i32 @rlGetFramebufferHeight() #54
  call void @rlViewport(i32 noundef %i.ko, i32 noundef 0, i32 noundef %i.kq, i32 noundef %i.kr) #54
  call void @rlGetMatrixViewOffsetStereo(ptr dead_on_unwind nonnull writable sret(%struct.Matrix) align 4 %9, i32 noundef %.021354.us) #54
  %i.ks = load <16 x float>, ptr %9, align 8      ; 16 uses
  %i.kt = shufflevector <16 x float> %i.ks, <16 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ku = fmul <4 x float> %i.cs, %i.kt
  %i.kv = shufflevector <16 x float> %i.ks, <16 x float> poison, <4 x i32> zeroinitializer
  %i.kw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cq, <4 x float> %i.kv, <4 x float> %i.ku)
  %i.kx = shufflevector <16 x float> %i.ks, <16 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ky = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cu, <4 x float> %i.kx, <4 x float> %i.kw)
  %i.kz = shufflevector <16 x float> %i.ks, <16 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.la = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cw, <4 x float> %i.kz, <4 x float> %i.ky) ; 4 uses
  %i.lb = shufflevector <16 x float> %i.ks, <16 x float> poison, <4 x i32> <i32 5, i32 5, i32 5, i32 5>
  %i.lc = fmul <4 x float> %i.cs, %i.lb
  %i.ld = shufflevector <16 x float> %i.ks, <16 x float> poison, <4 x i32> <i32 4, i32 4, i32 4, i32 4>
  %i.le = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cq, <4 x float> %i.ld, <4 x float> %i.lc)
  %i.lf = shufflevector <16 x float> %i.ks, <16 x float> poison, <4 x i32> <i32 6, i32 6, i32 6, i32 6>
  %i.lg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cu, <4 x float> %i.lf, <4 x float> %i.le)
  %i.lh = shufflevector <16 x float> %i.ks, <16 x float> poison, <4 x i32> <i32 7, i32 7, i32 7, i32 7>
  %i.li = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cw, <4 x float> %i.lh, <4 x float> %i.lg) ; 4 uses
  %i.lj = shufflevector <16 x float> %i.ks, <16 x float> poison, <4 x i32> <i32 9, i32 9, i32 9, i32 9>
  %i.lk = fmul <4 x float> %i.cs, %i.lj
  %i.ll = shufflevector <16 x float> %i.ks, <16 x float> poison, <4 x i32> <i32 8, i32 8, i32 8, i32 8>
  %i.lm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cq, <4 x float> %i.ll, <4 x float> %i.lk)
  %i.ln = shufflevector <16 x float> %i.ks, <16 x float> poison, <4 x i32> <i32 10, i32 10, i32 10, i32 10>
  %i.lo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cu, <4 x float> %i.ln, <4 x float> %i.lm)
  %i.lp = shufflevector <16 x float> %i.ks, <16 x float> poison, <4 x i32> <i32 11, i32 11, i32 11, i32 11>
  %i.lq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cw, <4 x float> %i.lp, <4 x float> %i.lo) ; 4 uses
  %i.lr = shufflevector <16 x float> %i.ks, <16 x float> poison, <4 x i32> <i32 13, i32 13, i32 13, i32 13>
  %i.ls = fmul <4 x float> %i.cs, %i.lr
  %i.lt = shufflevector <16 x float> %i.ks, <16 x float> poison, <4 x i32> <i32 12, i32 12, i32 12, i32 12>
  %i.lu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cq, <4 x float> %i.lt, <4 x float> %i.ls)
  %i.lv = shufflevector <16 x float> %i.ks, <16 x float> poison, <4 x i32> <i32 14, i32 14, i32 14, i32 14>
  %i.lw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cu, <4 x float> %i.lv, <4 x float> %i.lu)
  %i.lx = shufflevector <16 x float> %i.ks, <16 x float> poison, <4 x i32> <i32 15, i32 15, i32 15, i32 15>
  %i.ly = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cw, <4 x float> %i.lx, <4 x float> %i.lw) ; 4 uses
  call void @rlGetMatrixProjectionStereo(ptr dead_on_unwind nonnull writable sret(%struct.Matrix) align 4 %10, i32 noundef %.021354.us) #54
  %i.lz = load <4 x float>, ptr %10, align 16     ; 4 uses
  %i.ma = shufflevector <4 x float> %i.lz, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.mb = fmul <4 x float> %i.li, %i.ma
  %i.mc = shufflevector <4 x float> %i.lz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.md = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.la, <4 x float> %i.mc, <4 x float> %i.mb)
  %i.me = shufflevector <4 x float> %i.lz, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.mf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lq, <4 x float> %i.me, <4 x float> %i.md)
  %i.mg = shufflevector <4 x float> %i.lz, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.mh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ly, <4 x float> %i.mg, <4 x float> %i.mf)
  store <4 x float> %i.mh, ptr %8, align 16
  %i.mi = load <4 x float>, ptr %.sroa.7340.0..sroa_idx, align 16 ; 4 uses
  %i.mj = shufflevector <4 x float> %i.mi, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.mk = fmul <4 x float> %i.li, %i.mj
  %i.ml = shufflevector <4 x float> %i.mi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.la, <4 x float> %i.ml, <4 x float> %i.mk)
  %i.mn = shufflevector <4 x float> %i.mi, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.mo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lq, <4 x float> %i.mn, <4 x float> %i.mm)
  %i.mp = shufflevector <4 x float> %i.mi, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.mq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ly, <4 x float> %i.mp, <4 x float> %i.mo)
  store <4 x float> %i.mq, ptr %.sroa.763.0..sroa_idx, align 16
  %i.mr = load <4 x float>, ptr %.sroa.11344.0..sroa_idx, align 16 ; 4 uses
  %i.ms = shufflevector <4 x float> %i.mr, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.mt = fmul <4 x float> %i.li, %i.ms
  %i.mu = shufflevector <4 x float> %i.mr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.la, <4 x float> %i.mu, <4 x float> %i.mt)
  %i.mw = shufflevector <4 x float> %i.mr, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.mx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lq, <4 x float> %i.mw, <4 x float> %i.mv)
  %i.my = shufflevector <4 x float> %i.mr, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.mz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ly, <4 x float> %i.my, <4 x float> %i.mx)
  store <4 x float> %i.mz, ptr %.sroa.1167.0..sroa_idx, align 16
  %i.na = load <4 x float>, ptr %.sroa.15348.0..sroa_idx, align 16 ; 4 uses
  %i.nb = shufflevector <4 x float> %i.na, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.nc = fmul <4 x float> %i.li, %i.nb
  %i.nd = shufflevector <4 x float> %i.na, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ne = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.la, <4 x float> %i.nd, <4 x float> %i.nc)
  %i.nf = shufflevector <4 x float> %i.na, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ng = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lq, <4 x float> %i.nf, <4 x float> %i.ne)
  %i.nh = shufflevector <4 x float> %i.na, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ni = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ly, <4 x float> %i.nh, <4 x float> %i.ng)
  store <4 x float> %i.ni, ptr %.sroa.1571.0..sroa_idx, align 16
  %i.nj = load i32, ptr %i.ki, align 4
  call void @rlSetUniformMatrix(i32 noundef %i.nj, ptr noundef nonnull byval(%struct.Matrix) align 8 %8) #54
  br i1 %.not43, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.split.us.a
  call void @rlDrawVertexArrayElements(i32 noundef 0, i32 noundef %i.kl, ptr noundef null) #54
  br label %bb.ak

bb.aj:                                            ; preds = %.split.us.a
  call void @rlDrawVertexArray(i32 noundef 0, i32 noundef %i.km) #54
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #54
  %12 = add nuw nsw i32 %.021354.us, 1            ; 2 uses
  %exitcond357.not = icmp eq i32 %12, %spec.select
  br i1 %exitcond357.not, label %.preheader, label %.split.us.a

.preheader:                                       ; preds = %13, %bb.ak
  %i.nk = load ptr, ptr %i.ht, align 8            ; 12 uses
  %i.nl = load i32, ptr %i.nk, align 4
  %.not42 = icmp eq i32 %i.nl, 0
  br i1 %.not42, label %bb.ao, label %bb.an

.split:                                           ; preds = %bb.ah, %13
  %.021354 = phi i32 [ %14, %13 ], [ 0, %bb.ah ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #54
  %i.nm = load <4 x float>, ptr %5, align 16      ; 4 uses
  %i.nn = shufflevector <4 x float> %i.nm, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.no = fmul <4 x float> %i.cs, %i.nn
  %i.np = shufflevector <4 x float> %i.nm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cq, <4 x float> %i.np, <4 x float> %i.no)
  %i.nr = shufflevector <4 x float> %i.nm, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ns = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cu, <4 x float> %i.nr, <4 x float> %i.nq)
  %i.nt = shufflevector <4 x float> %i.nm, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.nu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cw, <4 x float> %i.nt, <4 x float> %i.ns)
  store <4 x float> %i.nu, ptr %8, align 16
  %i.nv = load <4 x float>, ptr %.sroa.7276.0..sroa_idx, align 16 ; 4 uses
  %i.nw = shufflevector <4 x float> %i.nv, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.nx = fmul <4 x float> %i.cs, %i.nw
  %i.ny = shufflevector <4 x float> %i.nv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cq, <4 x float> %i.ny, <4 x float> %i.nx)
  %i.oa = shufflevector <4 x float> %i.nv, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ob = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cu, <4 x float> %i.oa, <4 x float> %i.nz)
  %i.oc = shufflevector <4 x float> %i.nv, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.od = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cw, <4 x float> %i.oc, <4 x float> %i.ob)
  store <4 x float> %i.od, ptr %.sroa.763.0..sroa_idx, align 16
  %i.oe = load <4 x float>, ptr %.sroa.11280.0..sroa_idx, align 16 ; 4 uses
  %i.of = shufflevector <4 x float> %i.oe, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.og = fmul <4 x float> %i.cs, %i.of
  %i.oh = shufflevector <4 x float> %i.oe, <4 x float> poison, <4 x i32> zeroinitializer
  %i.oi = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cq, <4 x float> %i.oh, <4 x float> %i.og)
  %i.oj = shufflevector <4 x float> %i.oe, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ok = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cu, <4 x float> %i.oj, <4 x float> %i.oi)
  %i.ol = shufflevector <4 x float> %i.oe, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.om = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cw, <4 x float> %i.ol, <4 x float> %i.ok)
  store <4 x float> %i.om, ptr %.sroa.1167.0..sroa_idx, align 16
  %i.on = load <4 x float>, ptr %.sroa.15284.0..sroa_idx, align 16 ; 4 uses
  %i.oo = shufflevector <4 x float> %i.on, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.op = fmul <4 x float> %i.cs, %i.oo
  %i.oq = shufflevector <4 x float> %i.on, <4 x float> poison, <4 x i32> zeroinitializer
  %i.or = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cq, <4 x float> %i.oq, <4 x float> %i.op)
  %i.os = shufflevector <4 x float> %i.on, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ot = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cu, <4 x float> %i.os, <4 x float> %i.or)
  %i.ou = shufflevector <4 x float> %i.on, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ov = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cw, <4 x float> %i.ou, <4 x float> %i.ot)
  store <4 x float> %i.ov, ptr %.sroa.1571.0..sroa_idx, align 16
  %i.ow = load i32, ptr %i.ki, align 4
  call void @rlSetUniformMatrix(i32 noundef %i.ow, ptr noundef nonnull byval(%struct.Matrix) align 8 %8) #54
  br i1 %.not43, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.split
  call void @rlDrawVertexArrayElements(i32 noundef 0, i32 noundef %i.kl, ptr noundef null) #54
  br label %13

bb.am:                                            ; preds = %.split
  call void @rlDrawVertexArray(i32 noundef 0, i32 noundef %i.km) #54
  br label %13

13:                                               ; preds = %bb.am, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #54
  %14 = add nuw nsw i32 %.021354, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %14, %spec.select
  br i1 %exitcond.not, label %.preheader, label %.split

bb.an:                                            ; preds = %.preheader
  call void @rlActiveTextureSlot(i32 noundef 0) #54
  call void @rlDisableTexture() #54
  br label %bb.ao

bb.ao:                                            ; preds = %.preheader, %bb.an
  %i.ox = getelementptr inbounds nuw i8, ptr %i.nk, i64 28
  %i.oy = load i32, ptr %i.ox, align 4
  %.not42.1 = icmp eq i32 %i.oy, 0
  br i1 %.not42.1, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @rlActiveTextureSlot(i32 noundef 1) #54
  call void @rlDisableTexture() #54
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.oz = getelementptr inbounds nuw i8, ptr %i.nk, i64 56
  %i.pa = load i32, ptr %i.oz, align 4
  %.not42.2 = icmp eq i32 %i.pa, 0
  br i1 %.not42.2, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @rlActiveTextureSlot(i32 noundef 2) #54
  call void @rlDisableTexture() #54
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.pb = getelementptr inbounds nuw i8, ptr %i.nk, i64 84
  %i.pc = load i32, ptr %i.pb, align 4
  %.not42.3 = icmp eq i32 %i.pc, 0
  br i1 %.not42.3, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @rlActiveTextureSlot(i32 noundef 3) #54
  call void @rlDisableTexture() #54
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.pd = getelementptr inbounds nuw i8, ptr %i.nk, i64 112
  %i.pe = load i32, ptr %i.pd, align 4
  %.not42.4 = icmp eq i32 %i.pe, 0
  br i1 %.not42.4, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @rlActiveTextureSlot(i32 noundef 4) #54
  call void @rlDisableTexture() #54
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.pf = getelementptr inbounds nuw i8, ptr %i.nk, i64 140
  %i.pg = load i32, ptr %i.pf, align 4
  %.not42.5 = icmp eq i32 %i.pg, 0
  br i1 %.not42.5, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @rlActiveTextureSlot(i32 noundef 5) #54
  call void @rlDisableTexture() #54
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.ph = getelementptr inbounds nuw i8, ptr %i.nk, i64 168
  %i.pi = load i32, ptr %i.ph, align 4
  %.not42.6 = icmp eq i32 %i.pi, 0
  br i1 %.not42.6, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @rlActiveTextureSlot(i32 noundef 6) #54
  call void @rlDisableTexture() #54
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.pj = getelementptr inbounds nuw i8, ptr %i.nk, i64 196
  %i.pk = load i32, ptr %i.pj, align 4
  %.not42.7 = icmp eq i32 %i.pk, 0
  br i1 %.not42.7, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @rlActiveTextureSlot(i32 noundef 7) #54
  call void @rlDisableTextureCubemap() #54
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.pl = getelementptr inbounds nuw i8, ptr %i.nk, i64 224
  %i.pm = load i32, ptr %i.pl, align 4
  %.not42.8 = icmp eq i32 %i.pm, 0
  br i1 %.not42.8, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @rlActiveTextureSlot(i32 noundef 8) #54
  call void @rlDisableTextureCubemap() #54
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.pn = getelementptr inbounds nuw i8, ptr %i.nk, i64 252
  %i.po = load i32, ptr %i.pn, align 4
  %.not42.9 = icmp eq i32 %i.po, 0
  br i1 %.not42.9, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @rlActiveTextureSlot(i32 noundef 9) #54
  call void @rlDisableTextureCubemap() #54
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.pp = getelementptr inbounds nuw i8, ptr %i.nk, i64 280
  %i.pq = load i32, ptr %i.pp, align 4
  %.not42.10 = icmp eq i32 %i.pq, 0
  br i1 %.not42.10, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @rlActiveTextureSlot(i32 noundef 10) #54
  call void @rlDisableTexture() #54
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.pr = getelementptr inbounds nuw i8, ptr %i.nk, i64 308
  %i.ps = load i32, ptr %i.pr, align 4
  %.not42.11 = icmp eq i32 %i.ps, 0
  br i1 %.not42.11, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @rlActiveTextureSlot(i32 noundef 11) #54
  call void @rlDisableTexture() #54
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  call void @rlDisableVertexArray() #54
  call void @rlDisableVertexBuffer() #54
  call void @rlDisableVertexBufferElement() #54
  call void @rlDisableShader() #54
  call void @rlSetMatrixModelview(ptr noundef nonnull byval(%struct.Matrix) align 8 %4) #54
  call void @rlSetMatrixProjection(ptr noundef nonnull byval(%struct.Matrix) align 8 %5) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #54
  br label %bb.bl

bb.bl:                                            ; preds = %bb.a, %bb.bk
  ret void
}

declare void @rlEnableShader(i32 noundef) local_unnamed_addr #34

declare void @rlSetUniform(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #34

declare void @rlGetMatrixModelview(ptr dead_on_unwind writable sret(%struct.Matrix) align 4) local_unnamed_addr #34

declare void @rlGetMatrixProjection(ptr dead_on_unwind writable sret(%struct.Matrix) align 4) local_unnamed_addr #34

declare void @rlSetUniformMatrix(i32 noundef, ptr noundef byval(%struct.Matrix) align 8) local_unnamed_addr #34

declare void @rlGetMatrixTransform(ptr dead_on_unwind writable sret(%struct.Matrix) align 4) local_unnamed_addr #34

declare void @rlActiveTextureSlot(i32 noundef) local_unnamed_addr #34

declare void @rlEnableTextureCubemap(i32 noundef) local_unnamed_addr #34

declare void @rlEnableTexture(i32 noundef) local_unnamed_addr #34

declare void @rlEnableVertexBuffer(i32 noundef) local_unnamed_addr #34

declare void @rlEnableVertexBufferElement(i32 noundef) local_unnamed_addr #34

declare zeroext i1 @rlIsStereoRenderEnabled() local_unnamed_addr #34

declare void @rlViewport(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #34

declare i32 @rlGetFramebufferWidth() local_unnamed_addr #34

declare i32 @rlGetFramebufferHeight() local_unnamed_addr #34

declare void @rlGetMatrixViewOffsetStereo(ptr dead_on_unwind writable sret(%struct.Matrix) align 4, i32 noundef) local_unnamed_addr #34

declare void @rlGetMatrixProjectionStereo(ptr dead_on_unwind writable sret(%struct.Matrix) align 4, i32 noundef) local_unnamed_addr #34

declare void @rlDrawVertexArrayElements(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #34

declare void @rlDrawVertexArray(i32 noundef, i32 noundef) local_unnamed_addr #34

declare void @rlDisableTextureCubemap() local_unnamed_addr #34

declare void @rlDisableTexture() local_unnamed_addr #34

declare void @rlDisableVertexBuffer() local_unnamed_addr #34

declare void @rlDisableVertexBufferElement() local_unnamed_addr #34

declare void @rlDisableShader() local_unnamed_addr #34

declare void @rlSetMatrixModelview(ptr noundef byval(%struct.Matrix) align 8) local_unnamed_addr #34

declare void @rlSetMatrixProjection(ptr noundef byval(%struct.Matrix) align 8) local_unnamed_addr #34

; Function Attrs: nounwind uwtable
define void @DrawMeshInstanced(ptr nofree noundef readonly byval(%struct.Mesh) align 8 captures(none) %0, ptr nofree noundef readonly byval(%struct.Material) align 8 captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 4 uses
  %i.b = alloca [4 x float], align 16             ; 4 uses
end_hunk_0
