Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/snap_to_fixed_up?download=true
inline.NumInlined: 18317
inline.NumDeleted: 9926
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 118
loop-unroll.NumUnrolled: 158
begin_hunk_0_@_ZNK5Eigen19HouseholderSequenceINS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEENS1_IfLi2ELi1ELi0ELi2ELi1EEELi1EE18applyThisOnTheLeftINS1_IfLi3ELi3ELi0ELi3ELi3EEENS1_IfLi1ELi3ELi1ELi1ELi3EEEEEvRT_RT0_b:bb.a
.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %i.u = phi i64 [ %i.an, %.lr.ph.split.us ], [ %i.e, %.lr.ph ]
  %.063.us = phi i64 [ %i.am, %.lr.ph.split.us ], [ 0, %.lr.ph ] ; 3 uses
  %i.v = load i8, ptr %i.a, align 8, !tbaa !139, !range !114, !noundef !115
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = xor i64 %.063.us, -1
  %i.y = add i64 %i.u, %i.x
  %i.z = select i1 %i.w, i64 %.063.us, i64 %i.y   ; 4 uses
  %i.aa = load i64, ptr %i.h, align 8, !tbaa !142
  %i.ab = add i64 %i.z, %i.aa                     ; 7 uses
  %i.ac = sub i64 3, %i.ab                        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.ad = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ab
  %.idx.i.i.i.i.us = mul nsw i64 %i.ab, 12
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %.idx.i.i.i.i.us
  store ptr %i.ae, ptr %7, align 8, !tbaa !149, !alias.scope !208
  store i64 %i.ac, ptr %i.i, align 8, !tbaa !156, !alias.scope !208
  store i64 %i.ac, ptr %i.j, align 8, !tbaa !156, !alias.scope !208
  store ptr %1, ptr %i.k, align 8, !tbaa !157, !alias.scope !208
  store i64 %i.ab, ptr %i.l, align 8, !tbaa !156, !alias.scope !208
  store i64 %i.ab, ptr %i.m, align 8, !tbaa !156, !alias.scope !208
  store i64 3, ptr %i.n, align 8, !tbaa !159, !alias.scope !208
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !211)
  call void @llvm.experimental.noalias.scope.decl(metadata !214)
  %i.af = add i64 %i.ab, 1                        ; 2 uses
  %i.ag = load ptr, ptr %0, align 8, !tbaa !147, !noalias !217, !nonnull !115, !align !148 ; 2 uses
  %i.ah = sub i64 2, %i.ab
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.af
  %.idx.i.i.i.i.i.us = mul nsw i64 %i.z, 12
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 %.idx.i.i.i.i.i.us
  store ptr %i.aj, ptr %8, align 8, !tbaa !169, !alias.scope !217
  store i64 %i.ah, ptr %i.o, align 8, !tbaa !156, !alias.scope !217
  store ptr %i.ag, ptr %i.p, align 8, !tbaa !131, !alias.scope !217
  store i64 %i.af, ptr %i.q, align 8, !tbaa !156, !alias.scope !217
  store i64 %i.z, ptr %i.r, align 8, !tbaa !156, !alias.scope !217
  store i64 3, ptr %i.s, align 8, !tbaa !172, !alias.scope !217
  %i.ak = load ptr, ptr %i.t, align 8, !tbaa !174, !nonnull !115, !align !148
  %i.al = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.z
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKNS2_IfLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEEvRKT_RKfPf(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 4 dereferenceable(4) %i.al, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.am = add nuw nsw i64 %.063.us, 1             ; 2 uses
  %i.an = load i64, ptr %i.d, align 8, !tbaa !141 ; 2 uses
  %i.ao = icmp slt i64 %i.am, %i.an
  br i1 %i.ao, label %.lr.ph.split.us, label %.loopexit, !llvm.loop !218

.lr.ph65:                                         ; preds = %bb.a
  %i.ap = icmp samesign ult i64 %i.e, 96
  %.lhs.trunc = add nuw i64 %i.e, 1
  %i.aq = lshr i64 %.lhs.trunc, 1
  %.zext = and i64 %i.aq, 127
  %i.ar = select i1 %i.ap, i64 %.zext, i64 48     ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph65, %bb.d
  %i.bk = phi i64 [ %i.e, %.lr.ph65 ], [ %i.cf, %bb.d ] ; 2 uses
  %.04764 = phi i64 [ 0, %.lr.ph65 ], [ %.pre-phi, %bb.d ] ; 4 uses
  %i.bl = load i8, ptr %i.a, align 8, !tbaa !139, !range !114, !noundef !115
  %i.bm = trunc nuw i8 %i.bl to i1                ; 2 uses
  br i1 %i.bm, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.bn = add nuw nsw i64 %.04764, %i.ar          ; 2 uses
  %.sroa.speculated58 = call i64 @llvm.smin.i64(i64 %i.bn, i64 %i.bk)
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bo = sub nsw i64 %i.bk, %.04764              ; 2 uses
  %i.bp = sub nsw i64 %i.bo, %i.ar
  %.sroa.speculated = call i64 @llvm.smax.i64(i64 %i.bp, i64 0)
  %.pre = add nuw nsw i64 %.04764, %i.ar
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %.pre-phi = phi i64 [ %i.bn, %.thread ], [ %.pre, %bb.c ] ; 2 uses
  %i.bq = phi i64 [ %.sroa.speculated58, %.thread ], [ %i.bo, %bb.c ]
  %i.br = phi i64 [ %.04764, %.thread ], [ %.sroa.speculated, %bb.c ] ; 6 uses
  %i.bs = sub nsw i64 %i.bq, %i.br                ; 2 uses
  %i.bt = load i64, ptr %i.as, align 8, !tbaa !142
  %i.bu = add i64 %i.bt, %i.br                    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.bv = load ptr, ptr %0, align 8, !tbaa !147, !nonnull !115, !align !148 ; 2 uses
  %i.bw = sub i64 3, %i.bu                        ; 3 uses
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.bu
  %.idx.i.i.i = mul nsw i64 %i.br, 12
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 %.idx.i.i.i
  store ptr %i.by, ptr %4, align 8, !tbaa !219
  store i64 %i.bw, ptr %i.at, align 8, !tbaa !156
  store i64 %i.bs, ptr %i.au, align 8, !tbaa !156
  store ptr %i.bv, ptr %i.av, align 8, !tbaa !131
  store i64 %i.bu, ptr %i.aw, align 8, !tbaa !156
  store i64 %i.br, ptr %i.ax, align 8, !tbaa !156
  store i64 3, ptr %i.ay, align 8, !tbaa !221
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.bz = select i1 %.048.shrunk, i64 %i.bu, i64 0 ; 2 uses
  %spec.select = select i1 %.048.shrunk, i64 %i.bw, i64 3
  %i.ca = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bu
  %.idx.i.i.i54 = mul nsw i64 %i.bz, 12
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 %.idx.i.i.i54
  store ptr %i.cb, ptr %5, align 8, !tbaa !149
  store i64 %i.bw, ptr %i.az, align 8, !tbaa !156
  store i64 %spec.select, ptr %i.ba, align 8, !tbaa !156
  store ptr %1, ptr %i.bb, align 8, !tbaa !157
  store i64 %i.bu, ptr %i.bc, align 8, !tbaa !156
  store i64 %i.bz, ptr %i.bd, align 8, !tbaa !156
  store i64 3, ptr %i.be, align 8, !tbaa !159
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.cc = load ptr, ptr %i.bf, align 8, !tbaa !174, !nonnull !115, !align !148 ; 2 uses
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.br
  store ptr %i.cd, ptr %6, align 8, !tbaa !224, !alias.scope !226
  store i64 %i.bs, ptr %i.bg, align 8, !tbaa !156, !alias.scope !226
  store ptr %i.cc, ptr %i.bh, align 8, !tbaa !137, !alias.scope !226
  store i64 %i.br, ptr %i.bi, align 8, !tbaa !156, !alias.scope !226
  store i64 2, ptr %i.bj, align 8, !tbaa !229, !alias.scope !226
  %i.ce = xor i1 %i.bm, true
  call void @_ZN5Eigen8internal35apply_block_householder_on_the_leftINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEENS2_INS3_IfLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEENS_11VectorBlockIKNS3_IfLi2ELi1ELi0ELi2ELi1EEELin1EEEEEvRT_RKT0_RKT1_b(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) %6, i1 noundef zeroext %i.ce)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.cf = load i64, ptr %i.d, align 8, !tbaa !141 ; 2 uses
  %i.cg = icmp slt i64 %.pre-phi, %i.cf
  br i1 %i.cg, label %bb.b, label %.loopexit, !llvm.loop !232

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %i.ch = phi i64 [ %i.cz, %.lr.ph.split ], [ %i.e, %.lr.ph ]
  %.063 = phi i64 [ %i.cy, %.lr.ph.split ], [ 0, %.lr.ph ] ; 3 uses
  %i.ci = load i8, ptr %i.a, align 8, !tbaa !139, !range !114, !noundef !115
  %i.cj = trunc nuw i8 %i.ci to i1
  %i.ck = xor i64 %.063, -1
  %i.cl = add i64 %i.ch, %i.ck
  %i.cm = select i1 %i.cj, i64 %.063, i64 %i.cl   ; 4 uses
  %i.cn = load i64, ptr %i.h, align 8, !tbaa !142
  %i.co = add i64 %i.cm, %i.cn                    ; 5 uses
  %i.cp = sub i64 3, %i.co
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.cq = getelementptr inbounds [4 x i8], ptr %1, i64 %i.co
  store ptr %i.cq, ptr %7, align 8, !tbaa !149, !alias.scope !208
  store i64 %i.cp, ptr %i.i, align 8, !tbaa !156, !alias.scope !208
  store i64 3, ptr %i.j, align 8, !tbaa !156, !alias.scope !208
  store ptr %1, ptr %i.k, align 8, !tbaa !157, !alias.scope !208
  store i64 %i.co, ptr %i.l, align 8, !tbaa !156, !alias.scope !208
  store i64 0, ptr %i.m, align 8, !tbaa !156, !alias.scope !208
  store i64 3, ptr %i.n, align 8, !tbaa !159, !alias.scope !208
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !211)
  call void @llvm.experimental.noalias.scope.decl(metadata !214)
  %i.cr = add i64 %i.co, 1                        ; 2 uses
  %i.cs = load ptr, ptr %0, align 8, !tbaa !147, !noalias !217, !nonnull !115, !align !148 ; 2 uses
  %i.ct = sub i64 2, %i.co
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %i.cr
  %.idx.i.i.i.i.i = mul nsw i64 %i.cm, 12
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 %.idx.i.i.i.i.i
  store ptr %i.cv, ptr %8, align 8, !tbaa !169, !alias.scope !217
  store i64 %i.ct, ptr %i.o, align 8, !tbaa !156, !alias.scope !217
  store ptr %i.cs, ptr %i.p, align 8, !tbaa !131, !alias.scope !217
  store i64 %i.cr, ptr %i.q, align 8, !tbaa !156, !alias.scope !217
  store i64 %i.cm, ptr %i.r, align 8, !tbaa !156, !alias.scope !217
  store i64 3, ptr %i.s, align 8, !tbaa !172, !alias.scope !217
  %i.cw = load ptr, ptr %i.t, align 8, !tbaa !174, !nonnull !115, !align !148
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.cm
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKNS2_IfLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEEvRKT_RKfPf(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 4 dereferenceable(4) %i.cx, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.cy = add nuw nsw i64 %.063, 1                ; 2 uses
  %i.cz = load i64, ptr %i.d, align 8, !tbaa !141 ; 2 uses
  %i.da = icmp slt i64 %i.cy, %i.cz
  br i1 %i.da, label %.lr.ph.split, label %.loopexit, !llvm.loop !218

.loopexit:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us, %bb.d, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen19ColPivHouseholderQRINS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEEE14computeInPlaceEv(ptr noundef nonnull align 16 dereferenceable(120) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.Eigen::VectorBlock.610", align 8 ; 8 uses
  %i.a = alloca float, align 4                    ; 5 uses
  %2 = alloca %"class.Eigen::VectorBlock.547", align 8 ; 13 uses
  %3 = alloca %"class.Eigen::Block.561", align 8  ; 10 uses
  %4 = alloca %"class.Eigen::VectorBlock.547", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %6 = load <4 x float>, ptr %0, align 16, !tbaa !9 ; 3 uses
  %7 = shufflevector <4 x float> %6, <4 x float> poison, <2 x i32> <i32 0, i32 3> ; 2 uses
  %8 = fmul <2 x float> %7, %7
  %i.d = load <2 x float>, ptr %5, align 16, !tbaa !9 ; 2 uses
  %9 = shufflevector <4 x float> %6, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %10 = shufflevector <2 x float> %i.d, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %11 = shufflevector <4 x float> %6, <4 x float> %10, <2 x i32> <i32 1, i32 4> ; 2 uses
  %i.e = fmul <2 x float> %11, %11
  %12 = shufflevector <2 x float> %9, <2 x float> %i.d, <2 x i32> <i32 0, i32 3> ; 2 uses
  %13 = fmul <2 x float> %12, %12
  %14 = fadd <2 x float> %i.e, %13
  %i.f = fadd <2 x float> %8, %14
  %i.g = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.f) ; 3 uses
  %15 = shufflevector <2 x float> %i.g, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  store <4 x float> %15, ptr %i.b, align 8, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %16 = extractelement <2 x float> %i.g, i64 0    ; 2 uses
  %17 = extractelement <2 x float> %i.g, i64 1    ; 2 uses
  %i.k = fcmp olt float %16, %17
  %i.l = select i1 %i.k, float %17, float %16
  %i.m = fmul float %i.l, f0x34000000             ; 2 uses
  %i.n = fmul float %i.m, %i.m
  %i.o = fdiv float %i.n, 3.000000e+00
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  store i64 2, ptr %i.p, align 8, !tbaa !233
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  store float 0.000000e+00, ptr %i.q, align 16, !tbaa !234
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.5106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.6107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.7108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.8109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.5100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.sroa.6101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48
  %.sroa.7102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56
  %.sroa.8103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 88
  br label %bb.c

bb.b:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  store i32 0, ptr %i.aj, align 16, !tbaa !146
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 1, ptr %i.ak, align 4, !tbaa !146
  %i.al = load i64, ptr %i.j, align 16, !tbaa !235
  %sext80 = shl i64 %i.al, 32
  %i.am = ashr exact i64 %sext80, 30
  %i.an = getelementptr inbounds i8, ptr %i.aj, i64 %i.am ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !146
  store i32 %i.ao, ptr %i.aj, align 16, !tbaa !146
  store i32 0, ptr %i.an, align 4, !tbaa !146
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !235
  %sext80.1 = shl i64 %i.aq, 32
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.as = ashr exact i64 %sext80.1, 30
  %i.at = getelementptr inbounds i8, ptr %i.aj, i64 %i.as ; 2 uses
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !146
  %i.av = load i32, ptr %i.at, align 4, !tbaa !146
  store i32 %i.av, ptr %i.ar, align 4, !tbaa !146
  store i32 %i.au, ptr %i.at, align 4, !tbaa !146
  %i.aw = and i64 %.1, 1
  %.not = icmp eq i64 %i.aw, 0
  %i.ax = select i1 %.not, i64 1, i64 -1
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.ax, ptr %i.ay, align 16, !tbaa !236
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 1, ptr %i.az, align 8, !tbaa !102
  ret void

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %i.ba = phi i1 [ true, %bb.a ], [ false, %._crit_edge ] ; 4 uses
  %.not161 = phi i1 [ false, %bb.a ], [ true, %._crit_edge ]
  %.073148 = phi i64 [ 0, %bb.a ], [ 1, %._crit_edge ] ; 21 uses
  %.075147 = phi i64 [ 0, %bb.a ], [ %.1, %._crit_edge ] ; 2 uses
  %i.bb = sub nuw nsw i64 2, %.073148             ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.073148 ; 4 uses
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !9 ; 3 uses
  br i1 %i.ba, label %.preheader.i.i.i.i.epil.preheader, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi1ELi2ELi1ELi1ELi2EEELi1ELin1ELb0EEEE8maxCoeffIlEEfPT_.exit

.preheader.i.i.i.i.epil.preheader:                ; preds = %bb.c
  call void @llvm.assume(i1 %i.ba)
  %i.be = getelementptr i8, ptr %i.bc, i64 4
  %i.bf = load float, ptr %i.be, align 4, !tbaa !9 ; 2 uses
  %i.bg = fcmp ogt float %i.bf, %i.bd             ; 2 uses
  %.sroa.7.1.i.i.epil = select i1 %i.bg, float %i.bf, float %i.bd
  %.sroa.5.1.i.i.epil = zext i1 %i.bg to i64
  br label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi1ELi2ELi1ELi1ELi2EEELi1ELin1ELb0EEEE8maxCoeffIlEEfPT_.exit

_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi1ELi2ELi1ELi1ELi2EEELi1ELin1ELb0EEEE8maxCoeffIlEEfPT_.exit: ; preds = %.preheader.i.i.i.i.epil.preheader, %bb.c
  %.sroa.7.2.i.i = phi float [ %i.bd, %bb.c ], [ %.sroa.7.1.i.i.epil, %.preheader.i.i.i.i.epil.preheader ] ; 2 uses
  %.sroa.5.2.i.i = phi i64 [ 0, %bb.c ], [ %.sroa.5.1.i.i.epil, %.preheader.i.i.i.i.epil.preheader ] ; 2 uses
  %i.bh = add nsw i64 %.sroa.5.2.i.i, %.073148    ; 4 uses
  %i.bi = load i64, ptr %i.p, align 8, !tbaa !233
  %i.bj = icmp eq i64 %i.bi, 2
  br i1 %i.bj, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi1ELi2ELi1ELi1ELi2EEELi1ELin1ELb0EEEE8maxCoeffIlEEfPT_.exit
  %i.bk = fmul float %.sroa.7.2.i.i, %.sroa.7.2.i.i
  %i.bl = xor i64 %.073148, 3
  %i.bm = uitofp nneg i64 %i.bl to float
  %i.bn = fmul float %i.o, %i.bm
  %i.bo = fcmp olt float %i.bk, %i.bn
  br i1 %i.bo, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i64 %.073148, ptr %i.p, align 8, !tbaa !233
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi1ELi2ELi1ELi1ELi2EEELi1ELin1ELb0EEEE8maxCoeffIlEEfPT_.exit
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.073148
  store i64 %i.bh, ptr %i.bp, align 8, !tbaa !235
  %.not81 = icmp eq i64 %.sroa.5.2.i.i, 0
  %.pre = mul nuw nsw i64 %.073148, 12            ; 3 uses
  br i1 %.not81, label %._crit_edge151, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 %.pre ; 3 uses
  %.idx.i.i.i.i83 = mul nsw i64 %i.bh, 12
  %i.br = getelementptr inbounds i8, ptr %0, i64 %.idx.i.i.i.i83 ; 3 uses
  %i.bs = load <2 x float>, ptr %i.bq, align 4, !tbaa !9
  %i.bt = load <2 x float>, ptr %i.br, align 4, !tbaa !9
  store <2 x float> %i.bt, ptr %i.bq, align 4, !tbaa !9
  store <2 x float> %i.bs, ptr %i.br, align 4, !tbaa !9
  %i.bu = getelementptr i8, ptr %i.bq, i64 8      ; 2 uses
  %i.bv = getelementptr i8, ptr %i.br, i64 8      ; 2 uses
  %i.bw = load float, ptr %i.bu, align 4, !tbaa !9
  %i.bx = load float, ptr %i.bv, align 4, !tbaa !9
  store float %i.bx, ptr %i.bu, align 4, !tbaa !9
  store float %i.bw, ptr %i.bv, align 4, !tbaa !9
  %i.by = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bh ; 2 uses
  %i.bz = load float, ptr %i.bc, align 4, !tbaa !9
  %i.ca = load float, ptr %i.by, align 4, !tbaa !9
  store float %i.ca, ptr %i.bc, align 4, !tbaa !9
  store float %i.bz, ptr %i.by, align 4, !tbaa !9
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.073148 ; 2 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.bh ; 2 uses
  %i.cd = load float, ptr %i.cb, align 4, !tbaa !9
  %i.ce = load float, ptr %i.cc, align 4, !tbaa !9
  store float %i.ce, ptr %i.cb, align 4, !tbaa !9
  store float %i.cd, ptr %i.cc, align 4, !tbaa !9
  %i.cf = add nsw i64 %.075147, 1
  br label %._crit_edge151

._crit_edge151:                                   ; preds = %bb.f, %bb.g
  %.1 = phi i64 [ %i.cf, %bb.g ], [ %.075147, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 %.pre ; 4 uses
  %i.ch = xor i64 %.073148, 3                     ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %.073148 ; 2 uses
  store ptr %i.ci, ptr %2, align 8, !tbaa !237, !alias.scope !239
  store i64 %i.ch, ptr %i.r, align 8, !tbaa !156, !alias.scope !239
  store ptr %i.cg, ptr %i.s, align 8
  store ptr %0, ptr %.sroa.5106.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.6107.0..sroa_idx, align 8
  store i64 %.073148, ptr %.sroa.7108.0..sroa_idx, align 8
  store i64 3, ptr %.sroa.8109.0..sroa_idx, align 8
  store i64 %.073148, ptr %i.t, align 8, !tbaa !156, !alias.scope !239
  store i64 3, ptr %i.u, align 8, !tbaa !242, !alias.scope !239
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.073148 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  store ptr %i.ck, ptr %1, align 8, !tbaa !251
  store i64 %i.bb, ptr %i.v, align 8, !tbaa !156
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.w, ptr noundef nonnull align 8 dereferenceable(96) %2, i64 96, i1 false)
  store i64 1, ptr %i.x, align 8, !tbaa !156
  store i64 3, ptr %i.y, align 8, !tbaa !253
  call void @_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE15makeHouseholderINS_11VectorBlockIS5_Lin1EEEEEvRT_RfSC_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.cj, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.cl = load float, ptr %i.a, align 4, !tbaa !9 ; 2 uses
  %i.cm = getelementptr [4 x i8], ptr %0, i64 %.073148 ; 3 uses
  %i.cn = getelementptr i8, ptr %i.cm, i64 %.pre
  store float %i.cl, ptr %i.cn, align 4, !tbaa !9
  %i.co = call noundef float @llvm.fabs.f32(float %i.cl) ; 2 uses
  %i.cp = load float, ptr %i.q, align 16, !tbaa !234
  %i.cq = fcmp ogt float %i.co, %i.cp
  br i1 %i.cq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge151
  store float %i.co, ptr %i.q, align 16, !tbaa !234
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge151
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.cr = xor i64 %.073148, 1
  %i.cs = add nuw nsw i64 %.073148, 1             ; 7 uses
  %.idx.i.i.i.i85 = shl nuw nsw i64 12, %.073148
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.idx.i.i.i.i85
  store ptr %i.ct, ptr %3, align 8, !tbaa !219, !alias.scope !258
  store i64 %i.ch, ptr %i.z, align 8, !tbaa !156, !alias.scope !258
  store i64 %i.cr, ptr %i.aa, align 8, !tbaa !156, !alias.scope !258
  store ptr %0, ptr %i.ab, align 8, !tbaa !131, !alias.scope !258
  store i64 %.073148, ptr %i.ac, align 8, !tbaa !156, !alias.scope !258
  store i64 %i.cs, ptr %i.ad, align 8, !tbaa !156, !alias.scope !258
  store i64 3, ptr %i.ae, align 8, !tbaa !221, !alias.scope !258
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.cs
  store ptr %i.cu, ptr %4, align 8, !tbaa !237, !alias.scope !261
  store i64 %i.bb, ptr %i.af, align 8, !tbaa !156, !alias.scope !261
  store ptr %i.cg, ptr %i.ag, align 8
  store ptr %0, ptr %.sroa.5100.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.6101.0..sroa_idx, align 8
  store i64 %.073148, ptr %.sroa.7102.0..sroa_idx, align 8
  store i64 3, ptr %.sroa.8103.0..sroa_idx, align 8
  store i64 %i.cs, ptr %i.ah, align 8, !tbaa !156, !alias.scope !261
  store i64 3, ptr %i.ai, align 8, !tbaa !242, !alias.scope !261
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.cs
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS_11VectorBlockINS1_IS3_Li3ELi1ELb1EEELin1EEEEEvRKT_RKfPf(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(96) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.cj, ptr noundef nonnull %i.cv)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cs
  br i1 %i.ba, label %.lr.ph.preheader, label %bb.b

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.cs ; 2 uses
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !9 ; 4 uses
  %i.cy = fcmp une float %i.cx, 0.000000e+00
  br i1 %i.cy, label %bb.j, label %._crit_edge

._crit_edge.sink.split:                           ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE4normEv.exit.loopexit.epilog-lcssa, %bb.k
  %.sink = phi float [ %i.es, %bb.k ], [ %i.eq, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE4normEv.exit.loopexit.epilog-lcssa ]
  store float %.sink, ptr %i.cw, align 4, !tbaa !9
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.sink.split, %.lr.ph.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.c, !llvm.loop !264

bb.j:                                             ; preds = %.lr.ph.preheader
  %.idx.i87 = shl nuw nsw i64 12, %.073148        ; 2 uses
  %i.cz = getelementptr i8, ptr %i.cm, i64 %.idx.i87
  %i.da = load float, ptr %i.cz, align 4, !tbaa !9
  %i.db = call noundef float @llvm.fabs.f32(float %i.da)
  %i.dc = fdiv float %i.db, %i.cx                 ; 2 uses
  %i.dd = fadd float %i.dc, 1.000000e+00
  %i.de = fsub float 1.000000e+00, %i.dc
  %i.df = fmul float %i.dd, %i.de                 ; 2 uses
  %i.dg = fcmp olt float %i.df, 0.000000e+00
  %i.dh = select i1 %i.dg, float 0.000000e+00, float %i.df ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cs ; 2 uses
  %i.dj = load float, ptr %i.di, align 4, !tbaa !9
  %i.dk = fdiv float %i.cx, %i.dj                 ; 2 uses
  %i.dl = fmul float %i.dk, %i.dk
  %i.dm = fmul float %i.dl, %i.dh
  %i.dn = fcmp ugt float %i.dm, f0x39B504F3
  br i1 %i.dn, label %bb.k, label %.lr.ph90.i.i.i.i.i.preheader

.lr.ph90.i.i.i.i.i.preheader:                     ; preds = %bb.j
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %.idx.i87 ; 6 uses
  %i.do = load float, ptr %gep, align 4, !tbaa !9 ; 2 uses
  %i.dp = fmul float %i.do, %i.do                 ; 2 uses
  br i1 %.not161, label %.lr.ph90.i.i.i.i.i, label %.lr.ph90.i.i.i.i.i.epil.preheader

.lr.ph90.i.i.i.i.i:                               ; preds = %.lr.ph90.i.i.i.i.i.preheader, %.lr.ph90.i.i.i.i.i
  %.088.i.i.i.i.i = phi i64 [ %i.ej, %.lr.ph90.i.i.i.i.i ], [ 1, %.lr.ph90.i.i.i.i.i.preheader ] ; 5 uses
  %.287.i.i.i.i.i = phi float [ %i.ei, %.lr.ph90.i.i.i.i.i ], [ %i.dp, %.lr.ph90.i.i.i.i.i.preheader ]
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %gep, i64 %.088.i.i.i.i.i
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !9 ; 2 uses
  %i.ds = fmul float %i.dr, %i.dr
  %i.dt = fadd float %.287.i.i.i.i.i, %i.ds
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %gep, i64 %.088.i.i.i.i.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 4
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !9 ; 2 uses
  %i.dx = fmul float %i.dw, %i.dw
  %i.dy = fadd float %i.dt, %i.dx
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %gep, i64 %.088.i.i.i.i.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !9 ; 2 uses
  %i.ec = fmul float %i.eb, %i.eb
  %i.ed = fadd float %i.dy, %i.ec
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %gep, i64 %.088.i.i.i.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 12
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !9 ; 2 uses
  %i.eh = fmul float %i.eg, %i.eg
  %i.ei = fadd float %i.ed, %i.eh
  %i.ej = add nuw nsw i64 %.088.i.i.i.i.i, 4
  br label %.lr.ph90.i.i.i.i.i, !llvm.loop !265

.lr.ph90.i.i.i.i.i.epil.preheader:                ; preds = %.lr.ph90.i.i.i.i.i.preheader
  call void @llvm.assume(i1 %i.ba)
  br label %.lr.ph90.i.i.i.i.i.epil

.lr.ph90.i.i.i.i.i.epil:                          ; preds = %.lr.ph90.i.i.i.i.i.epil, %.lr.ph90.i.i.i.i.i.epil.preheader
  %.088.i.i.i.i.i.epil = phi i64 [ %i.eo, %.lr.ph90.i.i.i.i.i.epil ], [ 1, %.lr.ph90.i.i.i.i.i.epil.preheader ] ; 2 uses
  %.287.i.i.i.i.i.epil = phi float [ %i.en, %.lr.ph90.i.i.i.i.i.epil ], [ %i.dp, %.lr.ph90.i.i.i.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph90.i.i.i.i.i.epil ], [ 0, %.lr.ph90.i.i.i.i.i.epil.preheader ]
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %gep, i64 %.088.i.i.i.i.i.epil
  %i.el = load float, ptr %i.ek, align 4, !tbaa !9 ; 2 uses
  %i.em = fmul float %i.el, %i.el
  %i.en = fadd float %.287.i.i.i.i.i.epil, %i.em  ; 2 uses
  %i.eo = add nuw nsw i64 %.088.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %i.ep = xor i64 %.073148, %epil.iter.next
  %epil.iter.cmp.not = icmp eq i64 %i.ep, 1
  br i1 %epil.iter.cmp.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE4normEv.exit.loopexit.epilog-lcssa, label %.lr.ph90.i.i.i.i.i.epil, !llvm.loop !266

_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE4normEv.exit.loopexit.epilog-lcssa: ; preds = %.lr.ph90.i.i.i.i.i.epil
  %i.eq = call float @llvm.sqrt.f32(float %i.en)  ; 2 uses
  store float %i.eq, ptr %i.di, align 4, !tbaa !9
  br label %._crit_edge.sink.split

bb.k:                                             ; preds = %bb.j
  %i.er = call float @llvm.sqrt.f32(float %i.dh)
  %i.es = fmul float %i.cx, %i.er
  br label %._crit_edge.sink.split
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS_11VectorBlockINS1_IS3_Li3ELi1ELb1EEELin1EEEEEvRKT_RKfPf(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Eigen::internal::evaluator.918", align 8 ; 19 uses
  %5 = alloca %"struct.Eigen::internal::evaluator.804", align 8 ; 16 uses
  %6 = alloca %"struct.Eigen::internal::evaluator.822", align 8 ; 5 uses
  %7 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.826", align 8 ; 7 uses
  %8 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %9 = alloca %"class.Eigen::Map", align 8        ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !156  ; 7 uses
  %i.c = icmp eq i64 %i.b, 1
  %i.d = load float, ptr %2, align 4, !tbaa !9    ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = fsub float 1.000000e+00, %i.d            ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %0, align 8, !tbaa !219    ; 5 uses
  %i.h = load i64, ptr %i.f, align 8, !tbaa !156  ; 4 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %.preheader.i.i.i.i.i.i.preheader, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEEEmLERKf.exit

.preheader.i.i.i.i.i.i.preheader:                 ; preds = %bb.b
  %xtraiter123 = and i64 %i.h, 3                  ; 3 uses
  %i.j = icmp ult i64 %i.h, 4
  br i1 %i.j, label %.preheader.i.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.i.preheader.new:             ; preds = %.preheader.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.h, 9223372036854775804
  br label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %.preheader.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.preheader.new
  %.0810.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader.new ], [ %i.ac, %.preheader.i.i.i.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader.new ], [ %niter.next.3, %.preheader.i.i.i.i.i.i ]
  %.idx.i.i.i.i.i.i.i.i.i = mul i64 %.0810.i.i.i.i.i.i, 12
  %i.k = getelementptr i8, ptr %i.g, i64 %.idx.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !9
  %i.m = fmul float %i.e, %i.l
  store float %i.m, ptr %i.k, align 4, !tbaa !9
  %i.n = mul i64 %.0810.i.i.i.i.i.i, 12
  %i.o = getelementptr i8, ptr %i.g, i64 %i.n
  %i.p = getelementptr i8, ptr %i.o, i64 12       ; 2 uses
  %i.q = load float, ptr %i.p, align 4, !tbaa !9
  %i.r = fmul float %i.e, %i.q
  store float %i.r, ptr %i.p, align 4, !tbaa !9
  %i.s = mul i64 %.0810.i.i.i.i.i.i, 12
  %i.t = getelementptr i8, ptr %i.g, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 24       ; 2 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !9
  %i.w = fmul float %i.e, %i.v
  store float %i.w, ptr %i.u, align 4, !tbaa !9
  %i.x = mul i64 %.0810.i.i.i.i.i.i, 12
  %i.y = getelementptr i8, ptr %i.g, i64 %i.x
  %i.z = getelementptr i8, ptr %i.y, i64 36       ; 2 uses
  %i.aa = load float, ptr %i.z, align 4, !tbaa !9
  %i.ab = fmul float %i.e, %i.aa
  store float %i.ab, ptr %i.z, align 4, !tbaa !9
  %i.ac = add nuw nsw i64 %.0810.i.i.i.i.i.i, 4   ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEEEmLERKf.exit.loopexit.unr-lcssa, label %.preheader.i.i.i.i.i.i, !llvm.loop !268

bb.c:                                             ; preds = %bb.a
  %i.ad = fcmp une float %i.d, 0.000000e+00
  br i1 %i.ad, label %bb.d, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEEEmLERKf.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !156 ; 7 uses
  store ptr %3, ptr %9, align 8, !tbaa !269
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !156
  %i.ah = add i64 %i.b, -1                        ; 4 uses
  %i.ai = load ptr, ptr %0, align 8, !tbaa !219   ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 4      ; 5 uses
  %.sroa.644.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 120
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.644.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  %.sroa.040.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.040.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.040.sroa.4.0.copyload = load i64, ptr %.sroa.040.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.040.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0..sroa_idx6.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5.0..sroa_idx6.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.040.sroa.5.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  store ptr %.sroa.040.sroa.0.0.copyload, ptr %5, align 8
  %.sroa.4.0..sroa_idx4.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %.sroa.040.sroa.4.0.copyload, ptr %.sroa.4.0..sroa_idx4.i.i.i.i, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 96
  store ptr %i.aj, ptr %i.ak, align 8
  %.sroa.644.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 104
  store i64 %i.ah, ptr %.sroa.644.sroa.4.0..sroa_idx, align 8
  %.sroa.644.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 112
  store i64 %i.af, ptr %.sroa.644.sroa.5.0..sroa_idx, align 8
  %.sroa.644.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 176
  store i64 1, ptr %.sroa.644.sroa.7.0..sroa_idx, align 8
  %.sroa.644.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 184
  store i64 0, ptr %.sroa.644.sroa.8.0..sroa_idx, align 8
end_hunk_0
