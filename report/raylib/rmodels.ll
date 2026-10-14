Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rmodels?download=true
inline.NumInlined: 1421
inline.NumDeleted: 227
loop-unroll.NumCompletelyUnrolled: 83
loop-unroll.NumRuntimeUnrolled: 99
loop-unroll.NumUnrolled: 188
begin_hunk_0_@UnloadMesh:bb.a

.loopexit:                                        ; preds = %.preheader.preheader, %bb.a
  tail call void @free(ptr noundef %i.d) #54
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  tail call void @free(ptr noundef %i.s) #54
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  tail call void @free(ptr noundef %i.u) #54
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8
  tail call void @free(ptr noundef %i.w) #54
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = load ptr, ptr %i.x, align 8
  tail call void @free(ptr noundef %i.y) #54
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void @free(ptr noundef %i.aa) #54
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void @free(ptr noundef %i.ac) #54
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void @free(ptr noundef %i.ae) #54
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void @free(ptr noundef %i.ag) #54
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void @free(ptr noundef %i.ai) #54
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void @free(ptr noundef %i.ak) #54
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.am = load ptr, ptr %i.al, align 8
  tail call void @free(ptr noundef %i.am) #54
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @GetModelBoundingBox(ptr dead_on_unwind noalias nofree writable sret(%struct.BoundingBox) align 4 captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly byval(%struct.Model) align 8 captures(none) %1) local_unnamed_addr #35 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %.sroa.057.0.copyload = load i32, ptr %i.e, align 8 ; 2 uses
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.459.0.copyload = load ptr, ptr %.sroa.459.0..sroa_idx, align 8 ; 4 uses
  %.not.i = icmp eq ptr %.sroa.459.0.copyload, null
  br i1 %.not.i, label %GetMeshBoundingBox.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x float>, ptr %.sroa.459.0.copyload, align 4, !noalias !170 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.459.0.copyload, i64 8
  %i.h = load float, ptr %i.g, align 4, !noalias !170 ; 4 uses
  %i.i = icmp sgt i32 %.sroa.057.0.copyload, 1
  br i1 %i.i, label %.lr.ph.preheader.i, label %GetMeshBoundingBox.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %wide.trip.count.i = zext nneg i32 %.sroa.057.0.copyload to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %.sroa.838.050.i = phi float [ %i.h, %.lr.ph.preheader.i ], [ %i.m, %.lr.ph.i ]
  %.sroa.036.049.i = phi <2 x float> [ %i.f, %.lr.ph.preheader.i ], [ %i.o, %.lr.ph.i ]
  %.sroa.8.048.i = phi float [ %i.h, %.lr.ph.preheader.i ], [ %i.q, %.lr.ph.i ]
  %.sroa.034.047.i = phi <2 x float> [ %i.f, %.lr.ph.preheader.i ], [ %i.p, %.lr.ph.i ]
  %.idx.i = mul nuw nsw i64 %indvars.iv.i, 12
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.459.0.copyload, i64 %.idx.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load float, ptr %i.k, align 4, !noalias !170 ; 2 uses
  %i.m = tail call nsz float @llvm.minnum.f32(float %.sroa.838.050.i, float %i.l) ; 2 uses
  %i.n = load <2 x float>, ptr %i.j, align 4, !noalias !170 ; 2 uses
  %i.o = tail call nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %.sroa.036.049.i, <2 x float> %i.n) ; 2 uses
  %i.p = tail call nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %.sroa.034.047.i, <2 x float> %i.n) ; 2 uses
  %i.q = tail call nsz float @llvm.maxnum.f32(float %.sroa.8.048.i, float %i.l) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %GetMeshBoundingBox.exit, label %.lr.ph.i

GetMeshBoundingBox.exit:                          ; preds = %.lr.ph.i, %bb.b, %bb.c
  %.sroa.034.1.i = phi <2 x float> [ zeroinitializer, %bb.b ], [ %i.f, %bb.c ], [ %i.p, %.lr.ph.i ] ; 3 uses
  %.sroa.8.1.i = phi float [ 0.000000e+00, %bb.b ], [ %i.h, %bb.c ], [ %i.q, %.lr.ph.i ] ; 2 uses
  %.sroa.036.1.i = phi <2 x float> [ zeroinitializer, %bb.b ], [ %i.f, %bb.c ], [ %i.o, %.lr.ph.i ] ; 3 uses
  %.sroa.838.1.i = phi float [ 0.000000e+00, %bb.b ], [ %i.h, %bb.c ], [ %i.m, %.lr.ph.i ] ; 2 uses
  store <2 x float> %.sroa.036.1.i, ptr %0, align 4
  %.sroa.556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  store <2 x float> %.sroa.034.1.i, ptr %.sroa.556.0..sroa_idx, align 4
  %i.r = extractelement <2 x float> %.sroa.036.1.i, i64 0
  %i.s = extractelement <2 x float> %.sroa.034.1.i, i64 0
  %.not = icmp eq i32 %i.b, 1
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %GetMeshBoundingBox.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %GetMeshBoundingBox.exit48
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %GetMeshBoundingBox.exit48 ] ; 2 uses
  %i.v = phi float [ %.sroa.838.1.i, %.lr.ph ], [ %i.ap, %GetMeshBoundingBox.exit48 ] ; 2 uses
  %i.w = phi float [ %.sroa.8.1.i, %.lr.ph ], [ %i.at, %GetMeshBoundingBox.exit48 ] ; 2 uses
  %i.x = phi <2 x float> [ %.sroa.034.1.i, %.lr.ph ], [ %i.ar, %GetMeshBoundingBox.exit48 ] ; 2 uses
  %i.y = phi <2 x float> [ %.sroa.036.1.i, %.lr.ph ], [ %i.an, %GetMeshBoundingBox.exit48 ] ; 2 uses
  %i.z = getelementptr inbounds nuw [120 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  %.sroa.061.0.copyload = load i32, ptr %i.z, align 8 ; 2 uses
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.463.0.copyload = load ptr, ptr %.sroa.463.0..sroa_idx, align 8 ; 4 uses
  %.not.i20 = icmp eq ptr %.sroa.463.0.copyload, null
  br i1 %.not.i20, label %GetMeshBoundingBox.exit48, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = load <2 x float>, ptr %.sroa.463.0.copyload, align 4, !noalias !171 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.463.0.copyload, i64 8
  %i.ac = load float, ptr %i.ab, align 4, !noalias !171 ; 4 uses
  %i.ad = icmp sgt i32 %.sroa.061.0.copyload, 1
  br i1 %i.ad, label %.lr.ph.preheader.i29, label %GetMeshBoundingBox.exit48

.lr.ph.preheader.i29:                             ; preds = %bb.e
  %wide.trip.count.i30 = zext nneg i32 %.sroa.061.0.copyload to i64
  br label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %.lr.ph.i31, %.lr.ph.preheader.i29
  %indvars.iv.i32 = phi i64 [ 1, %.lr.ph.preheader.i29 ], [ %indvars.iv.next.i46, %.lr.ph.i31 ] ; 2 uses
  %.sroa.838.050.i33 = phi float [ %i.ac, %.lr.ph.preheader.i29 ], [ %i.ah, %.lr.ph.i31 ]
  %.sroa.036.049.i34 = phi <2 x float> [ %i.aa, %.lr.ph.preheader.i29 ], [ %i.aj, %.lr.ph.i31 ]
  %.sroa.8.048.i35 = phi float [ %i.ac, %.lr.ph.preheader.i29 ], [ %i.al, %.lr.ph.i31 ]
  %.sroa.034.047.i36 = phi <2 x float> [ %i.aa, %.lr.ph.preheader.i29 ], [ %i.ak, %.lr.ph.i31 ]
  %.idx.i37 = mul nuw nsw i64 %indvars.iv.i32, 12
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.463.0.copyload, i64 %.idx.i37 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load float, ptr %i.af, align 4, !noalias !171 ; 2 uses
  %i.ah = tail call nsz float @llvm.minnum.f32(float %.sroa.838.050.i33, float %i.ag) ; 2 uses
  %i.ai = load <2 x float>, ptr %i.ae, align 4, !noalias !171 ; 2 uses
  %i.aj = tail call nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %.sroa.036.049.i34, <2 x float> %i.ai) ; 2 uses
  %i.ak = tail call nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %.sroa.034.047.i36, <2 x float> %i.ai) ; 2 uses
  %i.al = tail call nsz float @llvm.maxnum.f32(float %.sroa.8.048.i35, float %i.ag) ; 2 uses
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
  %2 = load <4 x float>, ptr %.sroa.668.0..sroa_idx, align 4
  %3 = shufflevector <4 x float> %2, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.bc = shufflevector <2 x float> %.sroa.08.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bd = shufflevector <8 x float> %i.bb, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.be = fmul <2 x float> %i.bc, %i.bd
  %i.bf = shufflevector <8 x float> %i.bb, <8 x float> poison, <2 x i32> <i32 0, i32 4> ; 2 uses
  %i.bg = shufflevector <2 x float> %.sroa.08.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> %i.bg, <2 x float> %i.be)
  %i.bi = shufflevector <8 x float> %i.bb, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %i.bj = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bi, <2 x float> %i.bj, <2 x float> %i.bh)
  %i.bl = shufflevector <8 x float> %i.bb, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %i.bm = fadd <2 x float> %i.bl, %i.bk
  store <2 x float> %i.bm, ptr %0, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bo = load <2 x float>, ptr %.sroa.8.0..sroa_idx, align 4 ; 2 uses
  %i.bp = load <2 x float>, ptr %.sroa.466.0..sroa_idx, align 4 ; 2 uses
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> %i.bo, <2 x i32> <i32 0, i32 2>
  %i.br = shufflevector <2 x float> %.sroa.01.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bs = fmul <2 x float> %i.bq, %i.br
  %i.bt = shufflevector <2 x float> %.sroa.01.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> %i.bt, <2 x float> %i.bs)
  %i.bv = shufflevector <2 x float> %i.bp, <2 x float> %i.bo, <2 x i32> <i32 1, i32 3>
  %i.bw = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bv, <2 x float> %i.bw, <2 x float> %i.bu)
  %i.by = insertelement <2 x float> %3, float %.sroa.1070.0.copyload, i64 1
  %i.bz = fadd <2 x float> %i.by, %i.bx
  %i.ca = load <4 x float>, ptr %.sroa.11.0..sroa_idx, align 8 ; 4 uses
  %i.cb = shufflevector <2 x float> %.sroa.08.0.copyload, <2 x float> %.sroa.01.0.copyload, <2 x i32> <i32 1, i32 3>
  %i.cc = shufflevector <4 x float> %i.ca, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cd = fmul <2 x float> %i.cb, %i.cc
  %i.ce = shufflevector <4 x float> %i.ca, <4 x float> poison, <2 x i32> zeroinitializer
  %i.cf = shufflevector <2 x float> %.sroa.08.0.copyload, <2 x float> %.sroa.01.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.cg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ce, <2 x float> %i.cf, <2 x float> %i.cd)
  %i.ch = shufflevector <4 x float> %i.ca, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ci = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ch, <2 x float> %i.ba, <2 x float> %i.cg)
  %i.cj = shufflevector <4 x float> %i.ca, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.ck = fadd <2 x float> %i.cj, %i.ci           ; 2 uses
  %i.cl = extractelement <2 x float> %i.ck, i64 0
  store float %i.cl, ptr %.sroa.29.0..sroa_idx, align 4
  store <2 x float> %i.bz, ptr %i.bn, align 4
  %i.cm = extractelement <2 x float> %i.ck, i64 1
  store float %i.cm, ptr %.sroa.22.0..sroa_idx, align 4
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
  br i1 %i.h, label %bb.bm, label %bb.b

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
end_hunk_0
begin_hunk_1_@GetPoseAtTimeGLTF:bb.a
cgltf_accessor_read_float.exit191:                ; preds = %bb.h, %cgltf_buffer_view_data.exit.thread33.i187
  %.sink266 = phi ptr [ %i.bh, %cgltf_buffer_view_data.exit.thread33.i187 ], [ %i.ar, %bb.h ]
  %i.bi = load i32, ptr %i.q, align 8
  %i.bj = load i32, ptr %i.r, align 8
  %i.bk = load i32, ptr %i.s, align 4
  %i.bl = call fastcc i32 @cgltf_element_read_float(ptr noundef %.sink266, i32 noundef %i.bi, i32 noundef %i.bj, i32 noundef %i.bk, ptr noundef nonnull %i.b, i64 noundef 1)
  %.not176 = icmp eq i32 %i.bl, 0
  br i1 %.not176, label %.thread233, label %cgltf_accessor_read_float.exit191._crit_edge

cgltf_accessor_read_float.exit191._crit_edge:     ; preds = %cgltf_accessor_read_float.exit191
  %.pre = load float, ptr %i.b, align 4
  br label %bb.k

bb.k:                                             ; preds = %cgltf_accessor_read_float.exit191._crit_edge, %cgltf_accessor_read_float.exit191.thread221
  %i.bm = phi float [ %.pre, %cgltf_accessor_read_float.exit191._crit_edge ], [ 0.000000e+00, %cgltf_accessor_read_float.exit191.thread221 ] ; 3 uses
  %i.bn = load float, ptr %i.a, align 4           ; 3 uses
  %i.bo = fcmp ole float %i.bn, %3
  %i.bp = fcmp olt float %3, %i.bm
  %or.cond = select i1 %i.bo, i1 %i.bp, i1 false
  br i1 %or.cond, label %.thread227.loopexit.split.loop.exit259, label %bb.l

bb.l:                                             ; preds = %bb.k
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread227, label %bb.c

.thread227.loopexit.split.loop.exit259:           ; preds = %bb.k
  %i.bq = trunc nuw nsw i64 %indvars.iv to i32
  br label %.thread227

.thread227:                                       ; preds = %bb.l, %.thread227.loopexit.split.loop.exit259, %bb.b
  %i.br = phi float [ 0.000000e+00, %bb.b ], [ %i.bn, %.thread227.loopexit.split.loop.exit259 ], [ %i.bn, %bb.l ] ; 3 uses
  %i.bs = phi float [ 0.000000e+00, %bb.b ], [ %i.bm, %.thread227.loopexit.split.loop.exit259 ], [ %i.bm, %bb.l ] ; 2 uses
  %.3168231 = phi i32 [ 0, %bb.b ], [ %i.bq, %.thread227.loopexit.split.loop.exit259 ], [ 0, %bb.l ] ; 8 uses
  %i.bt = fsub float %i.bs, %i.br                 ; 2 uses
  %i.bu = tail call float @llvm.fabs.f32(float %i.bt)
  %i.bv = tail call nsz float @llvm.fabs.f32(float %i.bs)
  %i.bw = tail call nsz float @llvm.fabs.f32(float %i.br)
  %i.bx = tail call nsz float @llvm.maxnum.f32(float %i.bv, float %i.bw)
  %i.by = insertelement <2 x float> poison, float %i.bx, i64 0
  %i.bz = insertelement <2 x float> %i.by, float %i.bt, i64 1
  %i.ca = tail call nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bz, <2 x float> <float 1.000000e+00, float f0x358637BD>) ; 4 uses
  %i.cb = extractelement <2 x float> %i.ca, i64 1 ; 2 uses
  %i.cc = extractelement <2 x float> %i.ca, i64 0
  %i.cd = fmul nnan float %i.cc, f0x358637BD
  %i.ce = fcmp ugt float %i.bu, %i.cd
  %spec.select = select i1 %i.ce, i32 %0, i32 1   ; 2 uses
  %i.cf = fsub float %3, %i.br
  %i.cg = fdiv float %i.cf, %i.cb                 ; 2 uses
  %i.ch = fcmp olt float %i.cg, 0.000000e+00
  %i.ci = select i1 %i.ch, float 0.000000e+00, float %i.cg ; 2 uses
  %i.cj = fcmp ogt float %i.ci, 1.000000e+00
  %i.ck = select i1 %i.cj, float 1.000000e+00, float %i.ci ; 5 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cm = load i32, ptr %i.cl, align 8
  %.not178 = icmp eq i32 %i.cm, 6
  br i1 %.not178, label %bb.m, label %.thread233

bb.m:                                             ; preds = %.thread227
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.co = load i32, ptr %i.cn, align 8
  switch i32 %i.co, label %.thread233 [
    i32 3, label %bb.n
    i32 4, label %bb.r
  ]

bb.n:                                             ; preds = %bb.m
  switch i32 %spec.select, label %default.unreachable249 [
    i32 1, label %bb.o
    i32 0, label %bb.p
    i32 2, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #54
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.c, i8 0, i64 12, i1 false)
  %i.cp = zext nneg i32 %.3168231 to i64
  %i.cq = call i32 @cgltf_accessor_read_float(ptr noundef nonnull %2, i64 noundef %i.cp, ptr noundef nonnull %i.c, i64 noundef 3) ; 0 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.cs = load float, ptr %i.cr, align 8
  %i.ct = load <2 x float>, ptr %i.c, align 8
  store <2 x float> %i.ct, ptr %4, align 4
  %.sroa.597.0..0.94.sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %i.cs, ptr %.sroa.597.0..0.94.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #54
  br label %.thread233

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #54
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.d, i8 0, i64 12, i1 false)
  %i.cu = zext nneg i32 %.3168231 to i64
  %i.cv = call i32 @cgltf_accessor_read_float(ptr noundef nonnull %2, i64 noundef %i.cu, ptr noundef nonnull %i.d, i64 noundef 3) ; 0 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.cx = load float, ptr %i.cw, align 8          ; 2 uses
  %i.cy = add nuw nsw i32 %.3168231, 1
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = load <2 x float>, ptr %i.d, align 8     ; 2 uses
  %i.db = call i32 @cgltf_accessor_read_float(ptr noundef nonnull %2, i64 noundef %i.cz, ptr noundef nonnull %i.d, i64 noundef 3) ; 0 uses
  %i.dc = load <2 x float>, ptr %i.d, align 8
  %i.dd = load float, ptr %i.cw, align 8
  %i.de = fsub <2 x float> %i.dc, %i.da
  %i.df = insertelement <2 x float> poison, float %i.ck, i64 0
  %i.dg = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dg, <2 x float> %i.de, <2 x float> %i.da)
  %i.di = fsub float %i.dd, %i.cx
  %i.dj = tail call float @llvm.fmuladd.f32(float %i.ck, float %i.di, float %i.cx)
  store <2 x float> %i.dh, ptr %4, align 4
  %.sroa.486.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %i.dj, ptr %.sroa.486.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #54
  br label %.thread233

bb.q:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #54
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.e, i8 0, i64 12, i1 false)
  %i.dk = mul nuw nsw i32 %.3168231, 3            ; 4 uses
  %i.dl = add nuw nsw i32 %i.dk, 1
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = call i32 @cgltf_accessor_read_float(ptr noundef nonnull %2, i64 noundef %i.dm, ptr noundef nonnull %i.e, i64 noundef 3) ; 0 uses
  %i.do = load <2 x float>, ptr %i.e, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.dq = load float, ptr %i.dp, align 8
  %i.dr = add nuw nsw i32 %i.dk, 2
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = call i32 @cgltf_accessor_read_float(ptr noundef nonnull %2, i64 noundef %i.ds, ptr noundef nonnull %i.e, i64 noundef 3) ; 0 uses
  %i.du = load <2 x float>, ptr %i.e, align 8
  %i.dv = load float, ptr %i.dp, align 8
  %i.dw = add nuw i32 %i.dk, 3
  %i.dx = add nuw i32 %i.dk, 4
  %i.dy = sext i32 %i.dx to i64
  %i.dz = call i32 @cgltf_accessor_read_float(ptr noundef nonnull %2, i64 noundef %i.dy, ptr noundef nonnull %i.e, i64 noundef 3) ; 0 uses
  %i.ea = load <2 x float>, ptr %i.e, align 8
  %i.eb = load float, ptr %i.dp, align 8
  %i.ec = sext i32 %i.dw to i64
  %i.ed = call i32 @cgltf_accessor_read_float(ptr noundef nonnull %2, i64 noundef %i.ec, ptr noundef nonnull %i.e, i64 noundef 3) ; 0 uses
  %i.ee = load <2 x float>, ptr %i.e, align 8
  %i.ef = load float, ptr %i.dp, align 8
  %i.eg = tail call { <2 x float>, float } @Vector3CubicHermite(<2 x float> %i.do, float %i.dq, <2 x float> %i.du, float %i.dv, <2 x float> %i.ea, float %i.eb, <2 x float> %i.ee, float %i.ef, float noundef %i.ck) ; 2 uses
  %.fca.0.extract = extractvalue { <2 x float>, float } %i.eg, 0
  %.fca.1.extract = extractvalue { <2 x float>, float } %i.eg, 1
  store <2 x float> %.fca.0.extract, ptr %4, align 4
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %.fca.1.extract, ptr %.sroa.463.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #54
  br label %.thread233

bb.r:                                             ; preds = %bb.m
  switch i32 %spec.select, label %default.unreachable249 [
    i32 1, label %bb.s
    i32 0, label %bb.t
    i32 2, label %bb.u
  ]

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #54
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.eh = zext nneg i32 %.3168231 to i64
  %i.ei = call i32 @cgltf_accessor_read_float(ptr noundef nonnull %2, i64 noundef %i.eh, ptr noundef nonnull %i.f, i64 noundef 4) ; 0 uses
  %i.ej = load <4 x float>, ptr %i.f, align 16
  store <4 x float> %i.ej, ptr %4, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #54
  br label %.thread233

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #54
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.ek = zext nneg i32 %.3168231 to i64
  %i.el = call i32 @cgltf_accessor_read_float(ptr noundef nonnull %2, i64 noundef %i.ek, ptr noundef nonnull %i.g, i64 noundef 4) ; 0 uses
  %i.em = load <4 x float>, ptr %i.g, align 16    ; 2 uses
  %.sroa.045.4.vec.insert = shufflevector <4 x float> %i.em, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.547.12.vec.insert = shufflevector <4 x float> %i.em, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.en = add nuw nsw i32 %.3168231, 1
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = call i32 @cgltf_accessor_read_float(ptr noundef nonnull %2, i64 noundef %i.eo, ptr noundef nonnull %i.g, i64 noundef 4) ; 0 uses
  %i.eq = load <4 x float>, ptr %i.g, align 16    ; 2 uses
  %.sroa.042.4.vec.insert = shufflevector <4 x float> %i.eq, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.5.12.vec.insert = shufflevector <4 x float> %i.eq, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.er = tail call { <2 x float>, <2 x float> } @QuaternionSlerp(<2 x float> %.sroa.045.4.vec.insert, <2 x float> %.sroa.547.12.vec.insert, <2 x float> %.sroa.042.4.vec.insert, <2 x float> %.sroa.5.12.vec.insert, float noundef %i.ck) ; 2 uses
  %i.es = extractvalue { <2 x float>, <2 x float> } %i.er, 0
  %i.et = extractvalue { <2 x float>, <2 x float> } %i.er, 1
  store <2 x float> %i.es, ptr %4, align 4
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x float> %i.et, ptr %.sroa.440.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #54
  br label %.thread233

bb.u:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #54
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.eu = mul nuw nsw i32 %.3168231, 3            ; 4 uses
  %i.ev = add nuw nsw i32 %i.eu, 1
  %i.ew = zext nneg i32 %i.ev to i64
  %i.ex = call i32 @cgltf_accessor_read_float(ptr noundef nonnull %2, i64 noundef %i.ew, ptr noundef nonnull %i.h, i64 noundef 4) ; 0 uses
  %i.ey = load <4 x float>, ptr %i.h, align 16    ; 2 uses
  %.sroa.032.4.vec.insert = shufflevector <4 x float> %i.ey, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ez = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.8.12.vec.insert = shufflevector <4 x float> %i.ey, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.fa = add nuw nsw i32 %i.eu, 2
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = call i32 @cgltf_accessor_read_float(ptr noundef nonnull %2, i64 noundef %i.fb, ptr noundef nonnull %i.h, i64 noundef 4) ; 0 uses
  %i.fd = load <2 x float>, ptr %i.h, align 16
  %5 = load <4 x float>, ptr %i.h, align 16
  %i.fe = shufflevector <4 x float> %5, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.ff = add nuw i32 %i.eu, 3
  %i.fg = add nuw i32 %i.eu, 4
  %i.fh = sext i32 %i.fg to i64
  %i.fi = call i32 @cgltf_accessor_read_float(ptr noundef nonnull %2, i64 noundef %i.fh, ptr noundef nonnull %i.h, i64 noundef 4) ; 0 uses
  %i.fj = load <4 x float>, ptr %i.h, align 16    ; 2 uses
  %.sroa.017.4.vec.insert = shufflevector <4 x float> %i.fj, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.10.12.vec.insert = shufflevector <4 x float> %i.fj, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.fk = sext i32 %i.ff to i64
  %i.fl = call i32 @cgltf_accessor_read_float(ptr noundef nonnull %2, i64 noundef %i.fk, ptr noundef nonnull %i.h, i64 noundef 4) ; 0 uses
  %i.fm = load <2 x float>, ptr %i.h, align 16
  %i.fn = load float, ptr %i.ez, align 8
  %i.fo = tail call { <2 x float>, <2 x float> } @QuaternionNormalize(<2 x float> %.sroa.032.4.vec.insert, <2 x float> %.sroa.8.12.vec.insert) ; 2 uses
  %i.fp = extractvalue { <2 x float>, <2 x float> } %i.fo, 0 ; 3 uses
  %i.fq = extractvalue { <2 x float>, <2 x float> } %i.fo, 1 ; 3 uses
  %i.fr = tail call { <2 x float>, <2 x float> } @QuaternionNormalize(<2 x float> %.sroa.017.4.vec.insert, <2 x float> %.sroa.10.12.vec.insert) ; 2 uses
  %i.fs = extractvalue { <2 x float>, <2 x float> } %i.fr, 0 ; 4 uses
  %i.ft = extractvalue { <2 x float>, <2 x float> } %i.fr, 1 ; 4 uses
  %.sroa.01.0.vec.extract.i = extractelement <2 x float> %i.fp, i64 0
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %i.fs, i64 0
  %foldExtExtBinop = fmul <2 x float> %i.fp, %i.fs
  %i.fu = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.fv = tail call float @llvm.fmuladd.f32(float %.sroa.01.0.vec.extract.i, float %.sroa.0.0.vec.extract.i, float %i.fu)
  %.sroa.32.8.vec.extract.i = extractelement <2 x float> %i.fq, i64 0
  %.sroa.3.8.vec.extract.i = extractelement <2 x float> %i.ft, i64 0
  %i.fw = tail call float @llvm.fmuladd.f32(float %.sroa.32.8.vec.extract.i, float %.sroa.3.8.vec.extract.i, float %i.fv)
  %.sroa.32.12.vec.extract.i = extractelement <2 x float> %i.fq, i64 1
  %.sroa.3.12.vec.extract.i = extractelement <2 x float> %i.ft, i64 1
  %i.fx = tail call float @llvm.fmuladd.f32(float %.sroa.32.12.vec.extract.i, float %.sroa.3.12.vec.extract.i, float %i.fw)
  %i.fy = fcmp olt float %i.fx, 0.000000e+00      ; 2 uses
  %i.fz = fneg <2 x float> %i.fs
  %i.ga = fneg <2 x float> %i.ft
  %.sroa.10.0 = select i1 %i.fy, <2 x float> %i.ga, <2 x float> %i.ft
  %.sroa.017.0 = select i1 %i.fy, <2 x float> %i.fz, <2 x float> %i.fs
  %i.gb = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.gc = fmul <2 x float> %i.gb, %i.fd
  %i.gd = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ge = insertelement <2 x float> %i.fe, float %i.fn, i64 1
  %i.gf = fmul <2 x float> %i.gd, %i.ge           ; 2 uses
  %i.gg = fmul float %i.cb, 0.000000e+00          ; 2 uses
  %.sroa.36.12.vec.insert.i = insertelement <2 x float> %i.gf, float %i.gg, i64 1
  %i.gh = fmul <2 x float> %i.gb, %i.fm
  %i.gi = shufflevector <2 x float> %i.gf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %.sroa.36.12.vec.insert.i211 = insertelement <2 x float> %i.gi, float %i.gg, i64 1
  %i.gj = tail call { <2 x float>, <2 x float> } @QuaternionCubicHermiteSpline(<2 x float> %i.fp, <2 x float> %i.fq, <2 x float> %i.gc, <2 x float> %.sroa.36.12.vec.insert.i, <2 x float> %.sroa.017.0, <2 x float> %.sroa.10.0, <2 x float> %i.gh, <2 x float> %.sroa.36.12.vec.insert.i211, float noundef %i.ck) ; 2 uses
  %i.gk = extractvalue { <2 x float>, <2 x float> } %i.gj, 0
  %i.gl = extractvalue { <2 x float>, <2 x float> } %i.gj, 1
  store <2 x float> %i.gk, ptr %4, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x float> %i.gl, ptr %.sroa.4.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #54
  br label %.thread233

default.unreachable249:                           ; preds = %bb.r, %bb.n
  unreachable

.thread233:                                       ; preds = %bb.j, %bb.f, %cgltf_accessor_read_float.exit, %cgltf_accessor_read_float.exit191, %.thread227, %bb.m, %bb.u, %bb.t, %bb.s, %bb.o, %bb.p, %bb.q
  %.5 = phi i1 [ false, %.thread227 ], [ true, %bb.q ], [ true, %bb.p ], [ true, %bb.o ], [ true, %bb.s ], [ true, %bb.t ], [ true, %bb.u ], [ true, %bb.m ], [ false, %cgltf_accessor_read_float.exit191 ], [ false, %cgltf_accessor_read_float.exit ], [ false, %bb.f ], [ false, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #54
  br label %bb.v

bb.v:                                             ; preds = %bb.a, %.thread233
  %.6 = phi i1 [ %.5, %.thread233 ], [ false, %bb.a ]
  ret i1 %.6
}

; Function Attrs: inlinehint nounwind uwtable
declare { <2 x float>, float } @Vector3CubicHermite(<2 x float>, float, <2 x float>, float, <2 x float>, float, <2 x float>, float, float noundef) local_unnamed_addr #36

; Function Attrs: inlinehint nounwind uwtable
declare { <2 x float>, <2 x float> } @QuaternionCubicHermiteSpline(<2 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, float noundef) local_unnamed_addr #36

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bitreverse.i16(i16) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.ctpop.i8(i8) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #49

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #50

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minnum.v2f32(<2 x float>, <2 x float>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.fmuladd.v3f32(<3 x float>, <3 x float>, <3 x float>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.maxnum.v2f64(<2 x double>, <2 x double>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.minnum.v2f64(<2 x double>, <2 x double>) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.abs.v16i32(<16 x i32>, i1 immarg) #47

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #47

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { inlinehint nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_1
