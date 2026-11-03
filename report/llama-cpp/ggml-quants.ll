Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/ggml-quants?download=true
inline.NumInlined: 269
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 272
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 328
begin_hunk_0_@quantize_q6_K:bb.a
  %i.jt = shl <16 x i8> %wide.load46.1, splat (i8 4)
  %i.ju = or disjoint <16 x i8> %i.jt, %i.jp
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ft, i64 112
  store <16 x i8> %i.ju, ptr %i.jv, align 2, !tbaa !34, !alias.scope !368
  %i.jw = ashr <16 x i8> %wide.load.1, splat (i8 4)
  %i.jx = ashr <16 x i8> %wide.load44.1, splat (i8 2)
  %i.jy = and <16 x i8> %i.jx, splat (i8 -4)
  %i.jz = or <16 x i8> %i.jy, %i.jw
  %i.ka = and <16 x i8> %wide.load45.1, splat (i8 -16)
  %i.kb = or <16 x i8> %i.jz, %i.ka
  %i.kc = shl <16 x i8> %wide.load46.1, splat (i8 2)
  %i.kd = and <16 x i8> %i.kc, splat (i8 -64)
  %i.ke = or <16 x i8> %i.kb, %i.kd
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ft, i64 176
  store <16 x i8> %i.ke, ptr %i.kf, align 2, !tbaa !34, !alias.scope !368
  br label %.loopexit119.i.us

bb.l:                                             ; preds = %bb.j
  %i.kg = getelementptr inbounds nuw [210 x i8], ptr %.01926.us, i64 %indvars.iv160.i.us
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(210) %i.kg, i8 0, i64 210, i1 false), !alias.scope !368
  br label %.loopexit119.i.us

.loopexit119.i.us:                                ; preds = %vector.body48, %bb.l
  %.1.i.us = getelementptr inbounds nuw i8, ptr %.0136.i.us, i64 1024
  %indvars.iv.next161.i.us = add nuw nsw i64 %indvars.iv160.i.us, 1 ; 2 uses
  %exitcond163.not.i.us = icmp eq i64 %indvars.iv.next161.i.us, %i.e
  br i1 %exitcond163.not.i.us, label %quantize_row_q6_K_impl.exit.loopexit.us, label %.preheader121.i.us, !llvm.loop !365

quantize_row_q6_K_impl.exit.loopexit.us:          ; preds = %.loopexit119.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14, !noalias !369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14, !noalias !369
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %.02025.us, i64 %3
  %i.ki = getelementptr inbounds nuw i8, ptr %.01926.us, i64 %i.c
  %i.kj = add nuw nsw i64 %.027.us, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.kj, %2
  br i1 %exitcond.not, label %.loopexit, label %.preheader121.preheader.i.us, !llvm.loop !366

bb.m:                                             ; preds = %bb.a
  %i.kk = mul nsw i64 %3, %2
  tail call void @quantize_row_q6_K_ref(ptr noundef %0, ptr noundef %1, i64 noundef %i.kk)
  br label %.loopexit

.loopexit:                                        ; preds = %quantize_row_q6_K_impl.exit.loopexit.us, %.lr.ph, %.preheader, %bb.m
  %i.kl = mul i64 %i.c, %2
  ret i64 %i.kl
}

; Function Attrs: nounwind uwtable
define i64 @quantize_q1_0(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef captures(none) %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef readnone captures(address_is_null) %4) local_unnamed_addr #6 {
bb.a:
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.a = mul nsw i64 %3, %2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !381)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382)
  %i.b = sdiv i64 %i.a, 128                       ; 2 uses
  %i.c = trunc i64 %i.b to i32
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.preheader34.preheader.i, label %quantize_row_q1_0_ref.exit

.preheader34.preheader.i:                         ; preds = %bb.b
  %wide.trip.count.i = and i64 %i.b, 2147483647
  br label %.preheader34.i

.preheader34.i:                                   ; preds = %bb.d, %.preheader34.preheader.i
  %indvars.iv48.i = phi i64 [ 0, %.preheader34.preheader.i ], [ %indvars.iv.next49.i, %bb.d ] ; 3 uses
  %invariant.gep.i.idx = shl nuw nsw i64 %indvars.iv48.i, 9
  %invariant.gep.i = getelementptr inbounds nuw i8, ptr %0, i64 %invariant.gep.i.idx ; 6 uses
  br label %bb.c

.preheader.i:                                     ; preds = %bb.c
  %i.e = fmul float %i.aq, 7.812500e-03           ; 2 uses
  %i.f = tail call float @llvm.fabs.f32(float %i.e)
  %i.g = fmul float %i.f, f0x77800000
  %i.h = fmul float %i.g, f0x08800000
  %i.i = bitcast float %i.e to i32                ; 2 uses
  %i.j = shl i32 %i.i, 1                          ; 2 uses
  %i.k = tail call i32 @llvm.umax.i32(i32 %i.j, i32 1895825408)
  %spec.store.select.i.i = lshr exact i32 %i.k, 1
  %i.l = and i32 %spec.store.select.i.i, 2139095040
  %i.m = add nuw i32 %i.l, 125829120
  %i.n = bitcast i32 %i.m to float
  %i.o = fadd float %i.h, %i.n
  %i.p = bitcast float %i.o to i32                ; 2 uses
  %i.q = lshr i32 %i.p, 13
  %i.r = and i32 %i.q, 31744
  %i.s = and i32 %i.p, 4095
  %i.t = add nuw nsw i32 %i.r, %i.s
  %i.u = lshr i32 %i.i, 16
  %i.v = and i32 %i.u, 32768
  %i.w = icmp ugt i32 %i.j, -16777216
  %i.x = select i1 %i.w, i32 32256, i32 %i.t
  %i.y = or i32 %i.x, %i.v
  %i.z = trunc nuw i32 %i.y to i16
  %i.aa = getelementptr inbounds nuw [18 x i8], ptr %1, i64 %indvars.iv48.i ; 2 uses
  store i16 %i.z, ptr %i.aa, align 2, !tbaa !33, !alias.scope !382
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 2 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false), !tbaa !34, !alias.scope !382
  br label %bb.e

bb.c:                                             ; preds = %bb.c, %.preheader34.i
  %indvars.iv.i = phi i64 [ 0, %.preheader34.i ], [ %indvars.iv.next.i.3, %bb.c ] ; 5 uses
  %.03235.i = phi float [ 0.000000e+00, %.preheader34.i ], [ %i.aq, %bb.c ]
  %gep.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.ac = load float, ptr %gep.i, align 4, !tbaa !36, !alias.scope !381
  %i.ad = tail call float @llvm.fabs.f32(float %i.ac)
  %i.ae = fadd float %.03235.i, %i.ad
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %gep.i.1 = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ag = load float, ptr %gep.i.1, align 4, !tbaa !36, !alias.scope !381
  %i.ah = tail call float @llvm.fabs.f32(float %i.ag)
  %i.ai = fadd float %i.ae, %i.ah
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %gep.i.2 = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ak = load float, ptr %gep.i.2, align 4, !tbaa !36, !alias.scope !381
  %i.al = tail call float @llvm.fabs.f32(float %i.ak)
  %i.am = fadd float %i.ai, %i.al
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %gep.i.3 = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %i.ao = load float, ptr %gep.i.3, align 4, !tbaa !36, !alias.scope !381
  %i.ap = tail call float @llvm.fabs.f32(float %i.ao)
  %i.aq = fadd float %i.am, %i.ap                 ; 2 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, 128
  br i1 %exitcond.not.i.3, label %.preheader.i, label %bb.c, !llvm.loop !0

bb.d:                                             ; preds = %bb.i
  %indvars.iv.next49.i = add nuw nsw i64 %indvars.iv48.i, 1 ; 2 uses
  %exitcond51.not.i = icmp eq i64 %indvars.iv.next49.i, %wide.trip.count.i
  br i1 %exitcond51.not.i, label %quantize_row_q1_0_ref.exit, label %.preheader34.i, !llvm.loop !1

bb.e:                                             ; preds = %bb.i, %.preheader.i
  %indvars.iv44.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next45.i.1, %bb.i ] ; 6 uses
  %gep53.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv44.i
  %i.ar = load float, ptr %gep53.i, align 4, !tbaa !36, !alias.scope !381
  %i.as = fcmp ult float %i.ar, 0.000000e+00
  br i1 %i.as, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.at = trunc i64 %indvars.iv44.i to i8
  %i.au = and i8 %i.at, 6
  %i.av = lshr i64 %indvars.iv44.i, 3
  %i.aw = shl nuw nsw i8 1, %i.au
  %i.ax = and i64 %i.av, 536870911
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ax ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !34, !alias.scope !382
  %i.ba = or i8 %i.az, %i.aw
  store i8 %i.ba, ptr %i.ay, align 1, !tbaa !34, !alias.scope !382
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %indvars.iv.next45.i = or disjoint i64 %indvars.iv44.i, 1 ; 2 uses
  %gep53.i.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next45.i
  %i.bb = load float, ptr %gep53.i.1, align 4, !tbaa !36, !alias.scope !381
  %i.bc = fcmp ult float %i.bb, 0.000000e+00
  br i1 %i.bc, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = trunc i64 %indvars.iv.next45.i to i8
  %i.be = and i8 %i.bd, 7
  %i.bf = lshr i64 %indvars.iv44.i, 3
  %i.bg = shl nuw i8 1, %i.be
  %i.bh = and i64 %i.bf, 536870911
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.bh ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !34, !alias.scope !382
  %i.bk = or i8 %i.bj, %i.bg
  store i8 %i.bk, ptr %i.bi, align 1, !tbaa !34, !alias.scope !382
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %indvars.iv.next45.i.1 = add nuw nsw i64 %indvars.iv44.i, 2 ; 2 uses
  %exitcond47.not.i.1 = icmp eq i64 %indvars.iv.next45.i.1, 128
  br i1 %exitcond47.not.i.1, label %bb.d, label %bb.e, !llvm.loop !2

quantize_row_q1_0_ref.exit:                       ; preds = %bb.d, %bb.b
  %i.bl = tail call i64 @ggml_row_size(i32 noundef 41, i64 noundef %3) #14
  br label %.loopexit

bb.j:                                             ; preds = %bb.a
  %i.bm = tail call i64 @ggml_row_size(i32 noundef 41, i64 noundef %3) #14 ; 4 uses
  %i.bn = icmp sgt i64 %2, 0
  br i1 %i.bn, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.j
  %i.bo = sdiv i64 %3, 128                        ; 2 uses
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = icmp sgt i32 %i.bp, 0
  %wide.trip.count.i26 = and i64 %i.bo, 2147483647
  br i1 %i.bq, label %.preheader34.preheader.i25.us, label %.loopexit

.preheader34.preheader.i25.us:                    ; preds = %.lr.ph, %quantize_row_q1_0_ref.exit44.loopexit.us
  %.048.us = phi i64 [ %i.cp, %quantize_row_q1_0_ref.exit44.loopexit.us ], [ 0, %.lr.ph ]
  %.02147.us = phi ptr [ %i.co, %quantize_row_q1_0_ref.exit44.loopexit.us ], [ %1, %.lr.ph ] ; 2 uses
  %.02346.us = phi ptr [ %i.cn, %quantize_row_q1_0_ref.exit44.loopexit.us ], [ %0, %.lr.ph ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !383)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !384)
  br label %.preheader34.i27.us

.preheader34.i27.us:                              ; preds = %42, %.preheader34.preheader.i25.us
  %indvars.iv48.i28.us = phi i64 [ 0, %.preheader34.preheader.i25.us ], [ %indvars.iv.next49.i42, %42 ] ; 3 uses
  %invariant.gep.i29.idx.us = shl nuw nsw i64 %indvars.iv48.i28.us, 9
  %invariant.gep.i29.us = getelementptr inbounds nuw i8, ptr %.02346.us, i64 %invariant.gep.i29.idx.us ; 6 uses
  br label %.preheader.i35.us

bb.k:                                             ; preds = %.preheader.i35.us
  %5 = fmul float %41, 7.812500e-03               ; 2 uses
  %6 = tail call float @llvm.fabs.f32(float %5)
  %7 = fmul float %6, f0x77800000
  %8 = fmul float %7, f0x08800000
  %9 = bitcast float %5 to i32                    ; 2 uses
  %10 = shl i32 %9, 1                             ; 2 uses
  %11 = tail call i32 @llvm.umax.i32(i32 %10, i32 1895825408)
  %spec.store.select.i.i36 = lshr exact i32 %11, 1
  %12 = and i32 %spec.store.select.i.i36, 2139095040
  %13 = add nuw i32 %12, 125829120
  %14 = bitcast i32 %13 to float
  %i.br = fadd float %8, %14
  %15 = bitcast float %i.br to i32                ; 2 uses
  %16 = lshr i32 %15, 13
  %17 = and i32 %16, 31744
  %18 = and i32 %15, 4095
  %19 = add nuw nsw i32 %17, %18
  %20 = lshr i32 %9, 16
  %21 = and i32 %20, 32768
  %22 = icmp ugt i32 %10, -16777216
  %23 = select i1 %22, i32 32256, i32 %19
  %24 = or i32 %23, %21
  %25 = trunc nuw i32 %24 to i16
  %26 = getelementptr inbounds nuw [18 x i8], ptr %.02147.us, i64 %indvars.iv48.i28.us ; 2 uses
  store i16 %25, ptr %26, align 2, !tbaa !33, !alias.scope !384
  %27 = getelementptr inbounds nuw i8, ptr %26, i64 2 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %27, i8 0, i64 16, i1 false), !tbaa !34, !alias.scope !384
  br label %bb.l

.preheader.i35.us:                                ; preds = %.preheader.i35.us, %.preheader34.i27.us
  %indvars.iv.i30 = phi i64 [ 0, %.preheader34.i27.us ], [ %indvars.iv.next.i33.3, %.preheader.i35.us ] ; 5 uses
  %.03235.i31 = phi float [ 0.000000e+00, %.preheader34.i27.us ], [ %41, %.preheader.i35.us ]
  %gep.i32 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i29.us, i64 %indvars.iv.i30
  %28 = load float, ptr %gep.i32, align 4, !tbaa !36, !alias.scope !383
  %29 = tail call float @llvm.fabs.f32(float %28)
  %30 = fadd float %.03235.i31, %29
  %31 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i29.us, i64 %indvars.iv.i30
  %gep.i32.1 = getelementptr inbounds nuw i8, ptr %31, i64 4
  %32 = load float, ptr %gep.i32.1, align 4, !tbaa !36, !alias.scope !383
  %33 = tail call float @llvm.fabs.f32(float %32)
  %i.bs = fadd float %30, %33
  %34 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i29.us, i64 %indvars.iv.i30
  %gep.i32.2 = getelementptr inbounds nuw i8, ptr %34, i64 8
  %35 = load float, ptr %gep.i32.2, align 4, !tbaa !36, !alias.scope !383
  %36 = tail call float @llvm.fabs.f32(float %35)
  %37 = fadd float %i.bs, %36
  %38 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i29.us, i64 %indvars.iv.i30
  %gep.i32.3 = getelementptr inbounds nuw i8, ptr %38, i64 12
  %39 = load float, ptr %gep.i32.3, align 4, !tbaa !36, !alias.scope !383
  %40 = tail call float @llvm.fabs.f32(float %39)
  %41 = fadd float %37, %40                       ; 2 uses
  %indvars.iv.next.i33.3 = add nuw nsw i64 %indvars.iv.i30, 4 ; 2 uses
  %exitcond.not.i34.3 = icmp eq i64 %indvars.iv.next.i33.3, 128
  br i1 %exitcond.not.i34.3, label %bb.k, label %.preheader.i35.us, !llvm.loop !0

42:                                               ; preds = %bb.p
  %indvars.iv.next49.i42 = add nuw nsw i64 %indvars.iv48.i28.us, 1 ; 2 uses
  %exitcond51.not.i43 = icmp eq i64 %indvars.iv.next49.i42, %wide.trip.count.i26
  br i1 %exitcond51.not.i43, label %quantize_row_q1_0_ref.exit44.loopexit.us, label %.preheader34.i27.us, !llvm.loop !1

bb.l:                                             ; preds = %bb.p, %bb.k
  %indvars.iv44.i38.us = phi i64 [ 0, %bb.k ], [ %indvars.iv.next49.i42.us, %bb.p ] ; 6 uses
  %gep53.i39.us = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i29.us, i64 %indvars.iv44.i38.us
  %i.bt = load float, ptr %gep53.i39.us, align 4, !tbaa !36, !alias.scope !383
  %i.bu = fcmp ult float %i.bt, 0.000000e+00
  br i1 %i.bu, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bv = trunc i64 %indvars.iv44.i38.us to i8
  %i.bw = and i8 %i.bv, 6
  %i.bx = lshr i64 %indvars.iv44.i38.us, 3
  %i.by = shl nuw nsw i8 1, %i.bw
  %i.bz = and i64 %i.bx, 536870911
  %i.ca = getelementptr inbounds nuw i8, ptr %27, i64 %i.bz ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !34, !alias.scope !384
  %i.cc = or i8 %i.cb, %i.by
  store i8 %i.cc, ptr %i.ca, align 1, !tbaa !34, !alias.scope !384
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %indvars.iv.next45.i40.us = or disjoint i64 %indvars.iv44.i38.us, 1 ; 2 uses
  %gep53.i39.us.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i29.us, i64 %indvars.iv.next45.i40.us
  %i.cd = load float, ptr %gep53.i39.us.1, align 4, !tbaa !36, !alias.scope !383
  %i.ce = fcmp ult float %i.cd, 0.000000e+00
  br i1 %i.ce, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cf = trunc i64 %indvars.iv.next45.i40.us to i8
  %i.cg = and i8 %i.cf, 7
  %i.ch = lshr i64 %indvars.iv44.i38.us, 3
  %i.ci = shl nuw i8 1, %i.cg
  %i.cj = and i64 %i.ch, 536870911
  %i.ck = getelementptr inbounds nuw i8, ptr %27, i64 %i.cj ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !34, !alias.scope !384
  %i.cm = or i8 %i.cl, %i.ci
  store i8 %i.cm, ptr %i.ck, align 1, !tbaa !34, !alias.scope !384
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %indvars.iv.next49.i42.us = add nuw nsw i64 %indvars.iv44.i38.us, 2 ; 2 uses
  %exitcond51.not.i43.us = icmp eq i64 %indvars.iv.next49.i42.us, 128
  br i1 %exitcond51.not.i43.us, label %42, label %bb.l, !llvm.loop !2

quantize_row_q1_0_ref.exit44.loopexit.us:         ; preds = %42
  %i.cn = getelementptr inbounds [4 x i8], ptr %.02346.us, i64 %3
  %i.co = getelementptr inbounds nuw i8, ptr %.02147.us, i64 %i.bm
  %i.cp = add nuw nsw i64 %.048.us, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.cp, %2
  br i1 %exitcond.not, label %.loopexit, label %.preheader34.preheader.i25.us, !llvm.loop !380

.loopexit:                                        ; preds = %quantize_row_q1_0_ref.exit44.loopexit.us, %bb.j, %.lr.ph, %quantize_row_q1_0_ref.exit
  %.pn = phi i64 [ %i.bl, %quantize_row_q1_0_ref.exit ], [ %i.bm, %.lr.ph ], [ %i.bm, %bb.j ], [ %i.bm, %quantize_row_q1_0_ref.exit44.loopexit.us ]
  %.022 = mul i64 %.pn, %2
  ret i64 %.022
}

; Function Attrs: nounwind uwtable
define i64 @quantize_q2_0(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef captures(none) %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef readnone captures(address_is_null) %4) local_unnamed_addr #6 {
bb.a:
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.a = mul nsw i64 %3, %2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !392)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !393)
  %i.b = sdiv i64 %i.a, 64                        ; 2 uses
  %i.c = trunc i64 %i.b to i32
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.preheader44.preheader.i, label %quantize_row_q2_0_ref.exit

.preheader44.preheader.i:                         ; preds = %bb.b
  %wide.trip.count.i = and i64 %i.b, 2147483647
  br label %.preheader44.i

.preheader44.i:                                   ; preds = %bb.d, %.preheader44.preheader.i
  %indvars.iv58.i = phi i64 [ 0, %.preheader44.preheader.i ], [ %indvars.iv.next59.i, %bb.d ] ; 3 uses
  %invariant.gep.i.idx = shl nuw nsw i64 %indvars.iv58.i, 8
  %invariant.gep.i = getelementptr inbounds nuw i8, ptr %0, i64 %invariant.gep.i.idx ; 3 uses
  br label %bb.c

.preheader.i:                                     ; preds = %bb.c
  %i.e = fmul float %.1.i.1, f0x77800000
  %i.f = fmul float %i.e, f0x08800000
  %i.g = bitcast float %.1.i.1 to i32             ; 2 uses
  %i.h = shl nuw i32 %i.g, 1
  %i.i = tail call i32 @llvm.umax.i32(i32 %i.h, i32 1895825408)
  %spec.store.select.i.i = lshr exact i32 %i.i, 1
  %i.j = and i32 %spec.store.select.i.i, 2139095040
  %i.k = add nuw i32 %i.j, 125829120
  %i.l = bitcast i32 %i.k to float
  %i.m = fadd float %i.f, %i.l
  %i.n = bitcast float %i.m to i32                ; 2 uses
  %i.o = lshr i32 %i.n, 13
  %i.p = and i32 %i.o, 31744
  %i.q = and i32 %i.n, 4095
  %i.r = add nuw nsw i32 %i.p, %i.q
  %i.s = icmp samesign ugt i32 %i.g, 2139095040
  %i.t = trunc nuw i32 %i.r to i16
  %i.u = select i1 %i.s, i16 32256, i16 %i.t
  %i.v = getelementptr inbounds nuw [18 x i8], ptr %1, i64 %indvars.iv58.i ; 2 uses
  store i16 %i.u, ptr %i.v, align 2, !tbaa !33, !alias.scope !393
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.w, i8 0, i64 16, i1 false), !tbaa !34, !alias.scope !393
  %i.x = fcmp ogt float %.1.i.1, 0.000000e+00
  %i.y = fdiv float 1.000000e+00, %.1.i.1
  %i.z = select i1 %i.x, float %i.y, float 0.000000e+00
  br label %bb.e

bb.c:                                             ; preds = %bb.c, %.preheader44.i
  %indvars.iv.i = phi i64 [ 0, %.preheader44.i ], [ %indvars.iv.next.i.1, %bb.c ] ; 3 uses
  %.03946.i = phi float [ 0.000000e+00, %.preheader44.i ], [ %.1.i.1, %bb.c ] ; 2 uses
  %gep.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.aa = load float, ptr %gep.i, align 4, !tbaa !36, !alias.scope !392
  %i.ab = tail call float @llvm.fabs.f32(float %i.aa) ; 2 uses
  %i.ac = fcmp ogt float %i.ab, %.03946.i
  %.1.i = select i1 %i.ac, float %i.ab, float %.03946.i ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %gep.i.1 = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.ae = load float, ptr %gep.i.1, align 4, !tbaa !36, !alias.scope !392
  %i.af = tail call float @llvm.fabs.f32(float %i.ae) ; 2 uses
  %i.ag = fcmp ogt float %i.af, %.1.i
  %.1.i.1 = select i1 %i.ag, float %i.af, float %.1.i ; 5 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 64
  br i1 %exitcond.not.i.1, label %.preheader.i, label %bb.c, !llvm.loop !3

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next59.i = add nuw nsw i64 %indvars.iv58.i, 1 ; 2 uses
  %exitcond61.not.i = icmp eq i64 %indvars.iv.next59.i, %wide.trip.count.i
  br i1 %exitcond61.not.i, label %quantize_row_q2_0_ref.exit, label %.preheader44.i, !llvm.loop !4

bb.e:                                             ; preds = %bb.e, %.preheader.i
  %indvars.iv54.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next55.i, %bb.e ] ; 4 uses
  %gep63.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv54.i
  %i.ah = load float, ptr %gep63.i, align 4, !tbaa !36, !alias.scope !392
  %i.ai = fmul float %i.z, %i.ah
  %i.aj = tail call float @llvm.round.f32(float %i.ai)
  %i.ak = fptosi float %i.aj to i32
  %i.al = tail call i32 @llvm.smax.i32(i32 %i.ak, i32 -1)
  %i.am = tail call i32 @llvm.smin.i32(i32 %i.al, i32 2)
  %i.an = lshr i64 %indvars.iv54.i, 2
  %indvars.iv54.tr.i = trunc nuw nsw i64 %indvars.iv54.i to i32
  %i.ao = shl nuw nsw i32 %indvars.iv54.tr.i, 1
  %i.ap = and i32 %i.ao, 6
  %i.aq = add nsw i32 %i.am, 1
  %i.ar = shl nuw nsw i32 %i.aq, %i.ap
  %i.as = and i64 %i.an, 1073741823
  %i.at = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.as ; 2 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !34, !alias.scope !393
  %i.av = trunc nuw i32 %i.ar to i8
  %i.aw = or i8 %i.au, %i.av
  store i8 %i.aw, ptr %i.at, align 1, !tbaa !34, !alias.scope !393
  %indvars.iv.next55.i = add nuw nsw i64 %indvars.iv54.i, 1 ; 2 uses
  %exitcond57.not.i = icmp eq i64 %indvars.iv.next55.i, 64
  br i1 %exitcond57.not.i, label %bb.d, label %bb.e, !llvm.loop !5

quantize_row_q2_0_ref.exit:                       ; preds = %bb.d, %bb.b
  %i.ax = tail call i64 @ggml_row_size(i32 noundef 42, i64 noundef %3) #14
  br label %.loopexit

bb.f:                                             ; preds = %bb.a
  %i.ay = tail call i64 @ggml_row_size(i32 noundef 42, i64 noundef %3) #14 ; 4 uses
  %i.az = icmp sgt i64 %2, 0
  br i1 %i.az, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.f
  %i.ba = sdiv i64 %3, 64                         ; 2 uses
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = icmp sgt i32 %i.bb, 0
  %wide.trip.count.i26 = and i64 %i.ba, 2147483647
  br i1 %i.bc, label %.preheader44.preheader.i25.us, label %.loopexit

.preheader44.preheader.i25.us:                    ; preds = %.lr.ph, %quantize_row_q2_0_ref.exit46.loopexit.us
  %.049.us = phi i64 [ %i.cr, %quantize_row_q2_0_ref.exit46.loopexit.us ], [ 0, %.lr.ph ]
  %.02148.us = phi ptr [ %i.cq, %quantize_row_q2_0_ref.exit46.loopexit.us ], [ %1, %.lr.ph ] ; 2 uses
  %.02347.us = phi ptr [ %i.cp, %quantize_row_q2_0_ref.exit46.loopexit.us ], [ %0, %.lr.ph ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !394)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !395)
  br label %.preheader44.i27.us

.preheader44.i27.us:                              ; preds = %13, %.preheader44.preheader.i25.us
  %indvars.iv58.i28.us = phi i64 [ 0, %.preheader44.preheader.i25.us ], [ %indvars.iv.next59.i44, %13 ] ; 3 uses
  %invariant.gep.i29.idx.us = shl nuw nsw i64 %indvars.iv58.i28.us, 8
  %invariant.gep.i29.us = getelementptr inbounds nuw i8, ptr %.02347.us, i64 %invariant.gep.i29.idx.us ; 3 uses
  br label %5

.preheader.i36.us:                                ; preds = %5
  %i.bd = fmul float %.1.i33.1, f0x77800000
  %i.be = fmul float %i.bd, f0x08800000
  %i.bf = bitcast float %.1.i33.1 to i32          ; 2 uses
  %i.bg = shl nuw i32 %i.bf, 1
  %i.bh = tail call i32 @llvm.umax.i32(i32 %i.bg, i32 1895825408)
  %spec.store.select.i.i37.us = lshr exact i32 %i.bh, 1
  %i.bi = and i32 %spec.store.select.i.i37.us, 2139095040
  %i.bj = add nuw i32 %i.bi, 125829120
  %i.bk = bitcast i32 %i.bj to float
  %i.bl = fadd float %i.be, %i.bk
  %i.bm = bitcast float %i.bl to i32              ; 2 uses
  %i.bn = lshr i32 %i.bm, 13
  %i.bo = and i32 %i.bn, 31744
  %i.bp = and i32 %i.bm, 4095
  %i.bq = add nuw nsw i32 %i.bo, %i.bp
  %i.br = icmp samesign ugt i32 %i.bf, 2139095040
  %i.bs = trunc nuw i32 %i.bq to i16
  %i.bt = select i1 %i.br, i16 32256, i16 %i.bs
  %i.bu = getelementptr inbounds nuw [18 x i8], ptr %.02148.us, i64 %indvars.iv58.i28.us ; 2 uses
  store i16 %i.bt, ptr %i.bu, align 2, !tbaa !33, !alias.scope !395
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.bv, i8 0, i64 16, i1 false), !tbaa !34, !alias.scope !395
  %i.bw = fcmp ogt float %.1.i33.1, 0.000000e+00
  %i.bx = fdiv float 1.000000e+00, %.1.i33.1
  %i.by = select i1 %i.bw, float %i.bx, float 0.000000e+00
  br label %bb.g

5:                                                ; preds = %5, %.preheader44.i27.us
  %indvars.iv.i30 = phi i64 [ 0, %.preheader44.i27.us ], [ %indvars.iv.next.i34.1, %5 ] ; 3 uses
  %.03946.i31 = phi float [ 0.000000e+00, %.preheader44.i27.us ], [ %.1.i33.1, %5 ] ; 2 uses
  %gep.i32 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i29.us, i64 %indvars.iv.i30
  %6 = load float, ptr %gep.i32, align 4, !tbaa !36, !alias.scope !394
  %7 = tail call float @llvm.fabs.f32(float %6)   ; 2 uses
  %8 = fcmp ogt float %7, %.03946.i31
  %.1.i33 = select i1 %8, float %7, float %.03946.i31 ; 2 uses
  %9 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i29.us, i64 %indvars.iv.i30
  %gep.i32.1 = getelementptr inbounds nuw i8, ptr %9, i64 4
  %10 = load float, ptr %gep.i32.1, align 4, !tbaa !36, !alias.scope !394
  %11 = tail call float @llvm.fabs.f32(float %10) ; 2 uses
  %12 = fcmp ogt float %11, %.1.i33
  %.1.i33.1 = select i1 %12, float %11, float %.1.i33 ; 5 uses
  %indvars.iv.next.i34.1 = add nuw nsw i64 %indvars.iv.i30, 2 ; 2 uses
  %exitcond.not.i35.1 = icmp eq i64 %indvars.iv.next.i34.1, 64
  br i1 %exitcond.not.i35.1, label %.preheader.i36.us, label %5, !llvm.loop !3

13:                                               ; preds = %bb.g
  %indvars.iv.next59.i44 = add nuw nsw i64 %indvars.iv58.i28.us, 1 ; 2 uses
  %exitcond61.not.i45 = icmp eq i64 %indvars.iv.next59.i44, %wide.trip.count.i26
  br i1 %exitcond61.not.i45, label %quantize_row_q2_0_ref.exit46.loopexit.us, label %.preheader44.i27.us, !llvm.loop !4

bb.g:                                             ; preds = %bb.g, %.preheader.i36.us
  %indvars.iv54.i39.us = phi i64 [ 0, %.preheader.i36.us ], [ %indvars.iv.next55.i42.us, %bb.g ] ; 4 uses
  %gep63.i40.us = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i29.us, i64 %indvars.iv54.i39.us
  %i.bz = load float, ptr %gep63.i40.us, align 4, !tbaa !36, !alias.scope !394
  %i.ca = fmul float %i.by, %i.bz
  %i.cb = tail call float @llvm.round.f32(float %i.ca)
  %i.cc = fptosi float %i.cb to i32
  %i.cd = tail call i32 @llvm.smax.i32(i32 %i.cc, i32 -1)
  %i.ce = tail call i32 @llvm.smin.i32(i32 %i.cd, i32 2)
  %i.cf = lshr i64 %indvars.iv54.i39.us, 2
  %indvars.iv54.tr.i41.us = trunc nuw nsw i64 %indvars.iv54.i39.us to i32
  %i.cg = shl nuw nsw i32 %indvars.iv54.tr.i41.us, 1
  %i.ch = and i32 %i.cg, 6
  %i.ci = add nsw i32 %i.ce, 1
  %i.cj = shl nuw nsw i32 %i.ci, %i.ch
  %i.ck = and i64 %i.cf, 1073741823
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.ck ; 2 uses
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !34, !alias.scope !395
  %i.cn = trunc nuw i32 %i.cj to i8
  %i.co = or i8 %i.cm, %i.cn
  store i8 %i.co, ptr %i.cl, align 1, !tbaa !34, !alias.scope !395
  %indvars.iv.next55.i42.us = add nuw nsw i64 %indvars.iv54.i39.us, 1 ; 2 uses
  %exitcond57.not.i43.us = icmp eq i64 %indvars.iv.next55.i42.us, 64
  br i1 %exitcond57.not.i43.us, label %13, label %bb.g, !llvm.loop !5

quantize_row_q2_0_ref.exit46.loopexit.us:         ; preds = %13
  %i.cp = getelementptr inbounds [4 x i8], ptr %.02347.us, i64 %3
  %i.cq = getelementptr inbounds nuw i8, ptr %.02148.us, i64 %i.ay
  %i.cr = add nuw nsw i64 %.049.us, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.cr, %2
  br i1 %exitcond.not, label %.loopexit, label %.preheader44.preheader.i25.us, !llvm.loop !391

.loopexit:                                        ; preds = %quantize_row_q2_0_ref.exit46.loopexit.us, %bb.f, %.lr.ph, %quantize_row_q2_0_ref.exit
  %.pn = phi i64 [ %i.ax, %quantize_row_q2_0_ref.exit ], [ %i.ay, %.lr.ph ], [ %i.ay, %bb.f ], [ %i.ay, %quantize_row_q2_0_ref.exit46.loopexit.us ]
  %.022 = mul i64 %.pn, %2
  ret i64 %.022
}

; Function Attrs: nounwind uwtable
define i64 @quantize_q4_0(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef writeonly captures(none) %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca [32 x float], align 16            ; 12 uses
  %i.b = alloca [32 x i8], align 16               ; 25 uses
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = mul nsw i64 %3, %2
  tail call void @quantize_row_q4_0_ref(ptr noundef %0, ptr noundef %1, i64 noundef %i.c)
  %i.d = tail call i64 @ggml_row_size(i32 noundef 2, i64 noundef %3) #14
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.e = tail call i64 @ggml_row_size(i32 noundef 2, i64 noundef %3) #14 ; 4 uses
  %i.f = icmp sgt i64 %2, 0
  br i1 %i.f, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %i.g = uitofp nneg i64 %3 to float
  %i.h = lshr i64 %3, 5
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 13
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 29
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 30
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 15
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 31
  %or.cond = icmp sgt i64 %3, 31
  br i1 %or.cond, label %.lr.ph.i.preheader.us.us.preheader, label %.loopexit

.lr.ph.i.preheader.us.us.preheader:               ; preds = %.lr.ph
  %xtraiter = and i64 %3, 3                       ; 3 uses
  %unroll_iter = and i64 %3, 9223372036854775804
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod88 = icmp ne i64 %xtraiter, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 2 uses
  br label %.lr.ph.i.preheader.us.us

.lr.ph.i.preheader.us.us:                         ; preds = %.lr.ph.i.preheader.us.us.preheader, %quantize_row_q4_0_impl.exit.loopexit.us.us
  %.036.us.us = phi i64 [ %i.qj, %quantize_row_q4_0_impl.exit.loopexit.us.us ], [ 0, %.lr.ph.i.preheader.us.us.preheader ]
  %.02235.us.us = phi ptr [ %i.qi, %quantize_row_q4_0_impl.exit.loopexit.us.us ], [ %1, %.lr.ph.i.preheader.us.us.preheader ] ; 2 uses
  %.02434.us.us = phi ptr [ %i.qh, %quantize_row_q4_0_impl.exit.loopexit.us.us ], [ %0, %.lr.ph.i.preheader.us.us.preheader ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !407)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !408)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14, !noalias !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14, !noalias !409
  br label %.lr.ph.i.us.us

.lr.ph.i.us.us:                                   ; preds = %.lr.ph.i.us.us, %.lr.ph.i.preheader.us.us
  %indvars.iv.i.us.us = phi i64 [ 0, %.lr.ph.i.preheader.us.us ], [ %indvars.iv.next.i.us.us.3, %.lr.ph.i.us.us ] ; 5 uses
  %.04550.i.us.us = phi float [ 0.000000e+00, %.lr.ph.i.preheader.us.us ], [ %i.av, %.lr.ph.i.us.us ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.us.us ], [ %niter.next.3, %.lr.ph.i.us.us ]
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.02434.us.us, i64 %indvars.iv.i.us.us
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !36, !alias.scope !407 ; 2 uses
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.ai, float %.04550.i.us.us)
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.02434.us.us, i64 %indvars.iv.i.us.us
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.am = load float, ptr %i.al, align 4, !tbaa !36, !alias.scope !407 ; 2 uses
  %i.an = tail call float @llvm.fmuladd.f32(float %i.am, float %i.am, float %i.aj)
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.02434.us.us, i64 %indvars.iv.i.us.us
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !36, !alias.scope !407 ; 2 uses
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.aq, float %i.an)
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.02434.us.us, i64 %indvars.iv.i.us.us
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  %i.au = load float, ptr %i.at, align 4, !tbaa !36, !alias.scope !407 ; 2 uses
  %i.av = tail call float @llvm.fmuladd.f32(float %i.au, float %i.au, float %i.ar) ; 3 uses
  %indvars.iv.next.i.us.us.3 = add nuw nsw i64 %indvars.iv.i.us.us, 4 ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.us.us.unr-lcssa, label %.lr.ph.i.us.us, !llvm.loop !399

._crit_edge.i.us.us.unr-lcssa:                    ; preds = %.lr.ph.i.us.us
  br i1 %lcmp.mod.not, label %._crit_edge.i.us.us, label %.lr.ph.i.us.us.epil.preheader

.lr.ph.i.us.us.epil.preheader:                    ; preds = %._crit_edge.i.us.us.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod88)
  br label %.lr.ph.i.us.us.epil

.lr.ph.i.us.us.epil:                              ; preds = %.lr.ph.i.us.us.epil, %.lr.ph.i.us.us.epil.preheader
  %indvars.iv.i.us.us.epil = phi i64 [ %indvars.iv.next.i.us.us.epil, %.lr.ph.i.us.us.epil ], [ %indvars.iv.next.i.us.us.3, %.lr.ph.i.us.us.epil.preheader ] ; 2 uses
  %.04550.i.us.us.epil = phi float [ %i.ay, %.lr.ph.i.us.us.epil ], [ %i.av, %.lr.ph.i.us.us.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.us.us.epil ], [ 0, %.lr.ph.i.us.us.epil.preheader ]
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.02434.us.us, i64 %indvars.iv.i.us.us.epil
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !36, !alias.scope !407 ; 2 uses
  %i.ay = tail call float @llvm.fmuladd.f32(float %i.ax, float %i.ax, float %.04550.i.us.us.epil) ; 2 uses
  %indvars.iv.next.i.us.us.epil = add nuw nsw i64 %indvars.iv.i.us.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.us.us, label %.lr.ph.i.us.us.epil, !llvm.loop !400

._crit_edge.i.us.us:                              ; preds = %.lr.ph.i.us.us.epil, %._crit_edge.i.us.us.unr-lcssa
  %.lcssa = phi float [ %i.av, %._crit_edge.i.us.us.unr-lcssa ], [ %i.ay, %.lr.ph.i.us.us.epil ]
  %i.az = fdiv float %.lcssa, %i.g                ; 32 uses
  br label %.lr.ph56.i.us.us

.lr.ph56.i.us.us:                                 ; preds = %make_qx_quants.exit.us.us, %._crit_edge.i.us.us
  %indvars.iv67.i.us.us = phi i64 [ 0, %._crit_edge.i.us.us ], [ %indvars.iv.next68.i.us.us, %make_qx_quants.exit.us.us ] ; 3 uses
  %i.ba = shl nuw nsw i64 %indvars.iv67.i.us.us, 5 ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.02434.us.us, i64 %i.ba ; 44 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ba ; 8 uses
  %i.bd = load float, ptr %i.bb, align 4, !tbaa !36, !alias.scope !407 ; 2 uses
  %i.be = tail call float @llvm.fmuladd.f32(float %i.bd, float %i.bd, float %i.az)
  %i.bf = tail call float @sqrtf(float noundef %i.be) #14, !noalias !409
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !36, !alias.scope !407 ; 2 uses
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.bh, float %i.az)
  %i.bj = tail call float @sqrtf(float noundef %i.bi) #14, !noalias !409
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !36, !alias.scope !407 ; 2 uses
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.bl, float %i.bl, float %i.az)
  %i.bn = tail call float @sqrtf(float noundef %i.bm) #14, !noalias !409
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !36, !alias.scope !407 ; 2 uses
  %i.bq = tail call float @llvm.fmuladd.f32(float %i.bp, float %i.bp, float %i.az)
  %i.br = tail call float @sqrtf(float noundef %i.bq) #14, !noalias !409
  %i.bs = load <4 x float>, ptr %i.bc, align 4, !tbaa !36, !noalias !409
  %i.bt = insertelement <4 x float> poison, float %i.bf, i64 0
  %i.bu = insertelement <4 x float> %i.bt, float %i.bj, i64 1
  %i.bv = insertelement <4 x float> %i.bu, float %i.bn, i64 2
  %i.bw = insertelement <4 x float> %i.bv, float %i.br, i64 3
  %i.bx = fmul <4 x float> %i.bs, %i.bw
  store <4 x float> %i.bx, ptr %i.a, align 16, !tbaa !36, !noalias !409
  %i.by = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !36, !alias.scope !407 ; 2 uses
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.ca, float %i.ca, float %i.az)
  %i.cc = tail call float @sqrtf(float noundef %i.cb) #14, !noalias !409
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bb, i64 20
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !36, !alias.scope !407 ; 2 uses
  %i.cf = tail call float @llvm.fmuladd.f32(float %i.ce, float %i.ce, float %i.az)
  %i.cg = tail call float @sqrtf(float noundef %i.cf) #14, !noalias !409
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !36, !alias.scope !407 ; 2 uses
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.ci, float %i.ci, float %i.az)
  %i.ck = tail call float @sqrtf(float noundef %i.cj) #14, !noalias !409
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bb, i64 28
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !36, !alias.scope !407 ; 2 uses
  %i.cn = tail call float @llvm.fmuladd.f32(float %i.cm, float %i.cm, float %i.az)
  %i.co = tail call float @sqrtf(float noundef %i.cn) #14, !noalias !409
  %i.cp = load <4 x float>, ptr %i.by, align 4, !tbaa !36, !noalias !409
  %i.cq = insertelement <4 x float> poison, float %i.cc, i64 0
  %i.cr = insertelement <4 x float> %i.cq, float %i.cg, i64 1
  %i.cs = insertelement <4 x float> %i.cr, float %i.ck, i64 2
  %i.ct = insertelement <4 x float> %i.cs, float %i.co, i64 3
  %i.cu = fmul <4 x float> %i.cp, %i.ct
  store <4 x float> %i.cu, ptr %i.i, align 16, !tbaa !36, !noalias !409
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !36, !alias.scope !407 ; 2 uses
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.cx, float %i.cx, float %i.az)
  %i.cz = tail call float @sqrtf(float noundef %i.cy) #14, !noalias !409
  %i.da = getelementptr inbounds nuw i8, ptr %i.bb, i64 36
  %i.db = load float, ptr %i.da, align 4, !tbaa !36, !alias.scope !407 ; 2 uses
  %i.dc = tail call float @llvm.fmuladd.f32(float %i.db, float %i.db, float %i.az)
  %i.dd = tail call float @sqrtf(float noundef %i.dc) #14, !noalias !409
  %i.de = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.df = load float, ptr %i.de, align 4, !tbaa !36, !alias.scope !407 ; 2 uses
  %i.dg = tail call float @llvm.fmuladd.f32(float %i.df, float %i.df, float %i.az)
  %i.dh = tail call float @sqrtf(float noundef %i.dg) #14, !noalias !409
  %i.di = getelementptr inbounds nuw i8, ptr %i.bb, i64 44
  %i.dj = load float, ptr %i.di, align 4, !tbaa !36, !alias.scope !407 ; 2 uses
  %i.dk = tail call float @llvm.fmuladd.f32(float %i.dj, float %i.dj, float %i.az)
  %i.dl = tail call float @sqrtf(float noundef %i.dk) #14, !noalias !409
  %i.dm = load <4 x float>, ptr %i.cv, align 4, !tbaa !36, !noalias !409
  %i.dn = insertelement <4 x float> poison, float %i.cz, i64 0
  %i.do = insertelement <4 x float> %i.dn, float %i.dd, i64 1
  %i.dp = insertelement <4 x float> %i.do, float %i.dh, i64 2
  %i.dq = insertelement <4 x float> %i.dp, float %i.dl, i64 3
  %i.dr = fmul <4 x float> %i.dm, %i.dq
  store <4 x float> %i.dr, ptr %i.j, align 16, !tbaa !36, !noalias !409
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  %i.du = load float, ptr %i.dt, align 4, !tbaa !36, !alias.scope !407 ; 2 uses
  %i.dv = tail call float @llvm.fmuladd.f32(float %i.du, float %i.du, float %i.az)
  %i.dw = tail call float @sqrtf(float noundef %i.dv) #14, !noalias !409
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bb, i64 52
end_hunk_0
begin_hunk_1_@iq2xs_init_impl.omp_outlined.6:bb.a
  %i.be = load i32, ptr %2, align 4, !tbaa !47, !llvm.access.group !522 ; 3 uses
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %.lr.ph87.preheader, label %._crit_edge88

.lr.ph87.preheader:                               ; preds = %._crit_edge
  %i.bg = load i32, ptr %i.i, align 4, !tbaa !47, !llvm.access.group !522
  %wide.trip.count108 = zext nneg i32 %i.be to i64
  br label %.lr.ph87

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv ; 8 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !34, !llvm.access.group !522
  %i.bj = sext i8 %i.bi to i32
  %i.bk = add nsw i32 %.neg, %i.bj                ; 2 uses
  %i.bl = mul nsw i32 %i.bk, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !34, !llvm.access.group !522
  %i.bo = sext i8 %i.bn to i32
  %i.bp = add nsw i32 %.neg125, %i.bo             ; 2 uses
  %i.bq = mul nsw i32 %i.bp, %i.bp
  %i.br = add nuw nsw i32 %i.bq, %i.bl
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !34, !llvm.access.group !522
  %i.bu = sext i8 %i.bt to i32
  %i.bv = add nsw i32 %.neg126, %i.bu             ; 2 uses
  %i.bw = mul nsw i32 %i.bv, %i.bv
  %i.bx = add nuw nsw i32 %i.bw, %i.br
  %i.by = getelementptr inbounds nuw i8, ptr %i.bh, i64 3
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !34, !llvm.access.group !522
  %i.ca = sext i8 %i.bz to i32
  %i.cb = add nsw i32 %.neg127, %i.ca             ; 2 uses
  %i.cc = mul nsw i32 %i.cb, %i.cb
  %i.cd = add nuw nsw i32 %i.cc, %i.bx
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !34, !llvm.access.group !522
  %i.cg = sext i8 %i.cf to i32
  %i.ch = add nsw i32 %.neg128, %i.cg             ; 2 uses
  %i.ci = mul nsw i32 %i.ch, %i.ch
  %i.cj = add nuw nsw i32 %i.ci, %i.cd
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bh, i64 5
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !34, !llvm.access.group !522
  %i.cm = sext i8 %i.cl to i32
  %i.cn = add nsw i32 %.neg129, %i.cm             ; 2 uses
  %i.co = mul nsw i32 %i.cn, %i.cn
  %i.cp = add nuw nsw i32 %i.co, %i.cj
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bh, i64 6
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !34, !llvm.access.group !522
  %i.cs = sext i8 %i.cr to i32
  %i.ct = add nsw i32 %.neg130, %i.cs             ; 2 uses
  %i.cu = mul nsw i32 %i.ct, %i.ct
  %i.cv = add nuw nsw i32 %i.cu, %i.cp
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bh, i64 7
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !34, !llvm.access.group !522
  %i.cy = sext i8 %i.cx to i32
  %i.cz = add nsw i32 %.neg131, %i.cy             ; 2 uses
  %i.da = mul nsw i32 %i.cz, %i.cz
  %i.db = add nuw nsw i32 %i.da, %i.cv
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.dc = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx ; 2 uses
  store i32 %i.db, ptr %i.dc, align 4, !tbaa !47, !llvm.access.group !522
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  %i.de = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.de, ptr %i.dd, align 4, !tbaa !47, !llvm.access.group !522
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !523

.lr.ph87:                                         ; preds = %.lr.ph87.preheader, %bb.g
  %indvars.iv105 = phi i64 [ 0, %.lr.ph87.preheader ], [ %indvars.iv.next106, %bb.g ] ; 2 uses
  %indvars.iv103 = phi i64 [ %i.bc, %.lr.ph87.preheader ], [ %indvars.iv.next104, %bb.g ]
  %.084 = phi i32 [ 0, %.lr.ph87.preheader ], [ %i.dp, %bb.g ] ; 2 uses
  %.06083 = phi i32 [ 1, %.lr.ph87.preheader ], [ %.1, %bb.g ] ; 3 uses
  %.06281 = phi i32 [ %i.bg, %.lr.ph87.preheader ], [ %.163, %bb.g ] ; 2 uses
  %indvars.iv.next104 = add nsw i64 %indvars.iv103, 1 ; 2 uses
  %.idx132 = shl nuw nsw i64 %indvars.iv105, 3
  %i.df = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx132 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !47, !llvm.access.group !522 ; 2 uses
  %i.dh = icmp sgt i32 %i.dg, %.06281
  br i1 %i.dh, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph87
  %i.di = load i32, ptr %8, align 4, !tbaa !47, !llvm.access.group !522
  %i.dj = icmp eq i32 %.06083, %i.di
  br i1 %i.dj, label %._crit_edge88.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dk = add nsw i32 %.06083, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph87
  %.163 = phi i32 [ %i.dg, %bb.f ], [ %.06281, %.lr.ph87 ]
  %.1 = phi i32 [ %i.dk, %bb.f ], [ %.06083, %.lr.ph87 ]
  %i.dl = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !47, !llvm.access.group !522
  %i.dn = trunc i32 %i.dm to i16
  %i.do = getelementptr inbounds [2 x i8], ptr %i.bb, i64 %indvars.iv.next104
  store i16 %i.dn, ptr %i.do, align 2, !tbaa !57, !llvm.access.group !522
  %i.dp = add nuw nsw i32 %.084, 1
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1 ; 2 uses
  %exitcond109.not = icmp eq i64 %indvars.iv.next106, %wide.trip.count108
  br i1 %exitcond109.not, label %._crit_edge88.loopexit, label %.lr.ph87, !llvm.loop !524

._crit_edge88.loopexit:                           ; preds = %bb.e, %bb.g
  %.061.lcssa.ph.in = phi i32 [ %i.be, %bb.g ], [ %.084, %bb.e ]
  %.061.lcssa.ph = trunc i32 %.061.lcssa.ph.in to i16
  br label %._crit_edge88

._crit_edge88:                                    ; preds = %._crit_edge88.loopexit, %._crit_edge
  %.061.lcssa = phi i16 [ 0, %._crit_edge ], [ %.061.lcssa.ph, %._crit_edge88.loopexit ]
  store i16 %.061.lcssa, ptr %i.bd, align 2, !tbaa !57, !llvm.access.group !522
  %.pre113 = load i32, ptr %i.b, align 4, !tbaa !47, !llvm.access.group !522
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge88, %.lr.ph95
  %i.dq = phi i32 [ %.pre113, %._crit_edge88 ], [ %i.p, %.lr.ph95 ] ; 2 uses
  %i.dr = phi ptr [ %i.az, %._crit_edge88 ], [ %i.q, %.lr.ph95 ]
  %indvars.iv.next111 = add nsw i64 %indvars.iv110, 1
  %i.ds = sext i32 %i.dq to i64
  %.not74.not = icmp slt i64 %indvars.iv110, %i.ds
  br i1 %.not74.not, label %.lr.ph95, label %.loopexit, !llvm.loop !525

._crit_edge99:                                    ; preds = %.loopexit, %bb.c
  call void @__kmpc_dispatch_deinit(ptr nonnull @1, i32 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @__kmpc_barrier(ptr nonnull @2, i32 %i.j)
  call void @free(ptr noundef %i.i) #14
  ret void
}

; Function Attrs: nounwind uwtable
define void @iq2xs_free_impl(i32 noundef %0) local_unnamed_addr #6 {
bb.a:
  %switch.tableidx = add i32 %0, -16              ; 3 uses
  %i.a = icmp ult i32 %switch.tableidx, 14
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 8267, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.a, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3261, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.7) #24
  unreachable

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.iq2xs_free_impl, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = getelementptr inbounds nuw [24 x i8], ptr @iq2_data, i64 %switch.ext ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !73   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %switch.lookup
  tail call void @free(ptr noundef nonnull %i.d) #14
  store ptr null, ptr %i.c, align 8, !tbaa !73
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !76
  tail call void @free(ptr noundef %i.f) #14
  store ptr null, ptr %i.e, align 8, !tbaa !76
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !78
  tail call void @free(ptr noundef %i.h) #14
  store ptr null, ptr %i.g, align 8, !tbaa !78
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %switch.lookup
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @quantize_iq2_xxs(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef writeonly captures(none) %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca [8 x float], align 16             ; 6 uses
  %i.b = alloca [32 x float], align 16            ; 17 uses
  %i.c = alloca [32 x float], align 16            ; 42 uses
  %i.d = alloca [32 x i8], align 16               ; 14 uses
  %i.e = alloca [32 x i8], align 16               ; 5 uses
  %i.f = alloca [32 x float], align 16            ; 36 uses
  %i.g = alloca [4 x i8], align 4                 ; 9 uses
  %i.h = alloca [16 x i32], align 16              ; 13 uses
  %i.i = and i64 %3, 255
  %i.j = icmp eq i64 %i.i, 0
  %.0273380.lcssa.wide.i.sroa.gep18 = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.0273380.lcssa.wide.i.sroa.gep19 = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %.0273380.lcssa.wide.i.sroa.gep20 = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3653, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.8) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.k = ashr exact i64 %3, 8                     ; 4 uses
  %i.l = icmp sgt i64 %2, 0
  br i1 %i.l, label %.lr.ph, label %.lr.ph.split.split.split.us.split.split.us

.lr.ph:                                           ; preds = %bb.c
  %.not.i = icmp eq ptr %4, null
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 60
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 68
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 76
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 84
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 92
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 100
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 108
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 116
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 124
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 84
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 92
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 100
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 108
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 116
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 124
  %i.cd = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.cf = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %i.cg = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.ci = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %i.cj = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %i.ck = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  %i.cl = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  %i.cm = getelementptr inbounds nuw i8, ptr %i.h, i64 52
  %i.cn = getelementptr inbounds nuw i8, ptr %i.h, i64 60
  %i.co = mul nsw i64 %i.k, 66
  br i1 %.not.i, label %._crit_edge, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.cp = icmp sgt i64 %i.k, 0
  br i1 %i.cp, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %quantize_row_iq2_xxs_impl.exit.loopexit.us
  %.062.us63 = phi i64 [ %i.acj, %quantize_row_iq2_xxs_impl.exit.loopexit.us ], [ 0, %.lr.ph.split ]
  %.01561.us64 = phi ptr [ %i.aci, %quantize_row_iq2_xxs_impl.exit.loopexit.us ], [ %1, %.lr.ph.split ] ; 2 uses
  %.01660.us65 = phi ptr [ %i.ach, %quantize_row_iq2_xxs_impl.exit.loopexit.us ], [ %0, %.lr.ph.split ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !541)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !542)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !543)
  %i.cq = load ptr, ptr @iq2_data, align 16, !tbaa !73, !noalias !544 ; 4 uses
  %i.cr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @iq2_data, i64 8), align 8, !tbaa !76, !noalias !544 ; 7 uses
  %i.cs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @iq2_data, i64 16), align 16, !tbaa !78, !noalias !544 ; 3 uses
  %.not331.i.us = icmp eq ptr %i.cq, null
  br i1 %.not331.i.us, label %.split.us66, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.split.us
  %.not332.i.us = icmp eq ptr %i.cr, null
  br i1 %.not332.i.us, label %.split68.us.a, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not333.i.us = icmp eq ptr %i.cs, null
  br i1 %.not333.i.us, label %.split70.us, label %.lr.ph.preheader.i.us

.lr.ph.preheader.i.us:                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14, !noalias !544
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14, !noalias !544
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14, !noalias !544
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14, !noalias !544
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14, !noalias !544
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14, !noalias !544
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14, !noalias !544
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14, !noalias !544
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %bb.af, %.lr.ph.preheader.i.us
  %indvars.iv469.i.us = phi i64 [ 0, %.lr.ph.preheader.i.us ], [ %indvars.iv.next470.i.us, %bb.af ] ; 3 uses
  %i.ct = getelementptr inbounds nuw [66 x i8], ptr %.01561.us64, i64 %indvars.iv469.i.us ; 4 uses
  store i16 0, ptr %i.ct, align 2, !tbaa !33, !alias.scope !542
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.h, i8 0, i64 64, i1 false), !noalias !544
  %i.cu = shl nuw nsw i64 %indvars.iv469.i.us, 8  ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.01660.us65, i64 %i.cu ; 5 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.us
  %indvars.iv.i.us = phi i64 [ 0, %.lr.ph.i.us ], [ %indvars.iv.next.i.us.3, %bb.f ] ; 5 uses
  %.0313347.i.us = phi float [ 0.000000e+00, %.lr.ph.i.us ], [ %i.dk, %bb.f ]
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv.i.us
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !36, !alias.scope !541 ; 2 uses
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.cx, float %i.cx, float %.0313347.i.us)
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv.i.us
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %i.db = load float, ptr %i.da, align 4, !tbaa !36, !alias.scope !541 ; 2 uses
  %i.dc = tail call float @llvm.fmuladd.f32(float %i.db, float %i.db, float %i.cy)
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv.i.us
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.df = load float, ptr %i.de, align 4, !tbaa !36, !alias.scope !541 ; 2 uses
  %i.dg = tail call float @llvm.fmuladd.f32(float %i.df, float %i.df, float %i.dc)
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv.i.us
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 12
  %i.dj = load float, ptr %i.di, align 4, !tbaa !36, !alias.scope !541 ; 2 uses
  %i.dk = tail call float @llvm.fmuladd.f32(float %i.dj, float %i.dj, float %i.dg) ; 2 uses
  %indvars.iv.next.i.us.3 = add nuw nsw i64 %indvars.iv.i.us, 4 ; 2 uses
  %exitcond.not.i.us.3 = icmp eq i64 %indvars.iv.next.i.us.3, 256
  br i1 %exitcond.not.i.us.3, label %bb.g, label %bb.f, !llvm.loop !531

bb.g:                                             ; preds = %bb.f
  %i.dl = fmul float %i.dk, 3.906250e-03          ; 32 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.cu
  br label %.preheader343.preheader.i.us

.preheader343.preheader.i.us:                     ; preds = %bb.ab, %bb.g
  %indvars.iv461.i.us = phi i64 [ 0, %bb.g ], [ %indvars.iv.next462.i.us, %bb.ab ] ; 6 uses
  %.0314381.i.us = phi float [ 0.000000e+00, %bb.g ], [ %.2316.i.us, %bb.ab ] ; 4 uses
  %i.dn = shl nuw nsw i64 %indvars.iv461.i.us, 5  ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.dn ; 36 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %i.dn ; 8 uses
  %i.dq = load float, ptr %i.do, align 4, !tbaa !36, !alias.scope !541 ; 2 uses
  %i.dr = tail call float @llvm.fmuladd.f32(float %i.dq, float %i.dq, float %i.dl)
  %i.ds = tail call float @sqrtf(float noundef %i.dr) #14, !noalias !544
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %i.du = load float, ptr %i.dt, align 4, !tbaa !36, !alias.scope !541 ; 2 uses
  %i.dv = tail call float @llvm.fmuladd.f32(float %i.du, float %i.du, float %i.dl)
  %i.dw = tail call float @sqrtf(float noundef %i.dv) #14, !noalias !544
  %i.dx = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !36, !alias.scope !541 ; 2 uses
  %i.dz = tail call float @llvm.fmuladd.f32(float %i.dy, float %i.dy, float %i.dl)
  %i.ea = tail call float @sqrtf(float noundef %i.dz) #14, !noalias !544
  %i.eb = getelementptr inbounds nuw i8, ptr %i.do, i64 12
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !36, !alias.scope !541 ; 2 uses
  %i.ed = tail call float @llvm.fmuladd.f32(float %i.ec, float %i.ec, float %i.dl)
  %i.ee = tail call float @sqrtf(float noundef %i.ed) #14, !noalias !544
  %i.ef = load <4 x float>, ptr %i.dp, align 4, !tbaa !36, !alias.scope !543
  %i.eg = insertelement <4 x float> poison, float %i.ds, i64 0
  %i.eh = insertelement <4 x float> %i.eg, float %i.dw, i64 1
  %i.ei = insertelement <4 x float> %i.eh, float %i.ea, i64 2
  %i.ej = insertelement <4 x float> %i.ei, float %i.ee, i64 3
  %i.ek = fmul <4 x float> %i.ef, %i.ej           ; 5 uses
  store <4 x float> %i.ek, ptr %i.b, align 16, !tbaa !36, !noalias !544
  %i.el = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.em = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.en = load float, ptr %i.em, align 4, !tbaa !36, !alias.scope !541 ; 2 uses
  %i.eo = tail call float @llvm.fmuladd.f32(float %i.en, float %i.en, float %i.dl)
  %i.ep = tail call float @sqrtf(float noundef %i.eo) #14, !noalias !544
  %i.eq = getelementptr inbounds nuw i8, ptr %i.do, i64 20
  %i.er = load float, ptr %i.eq, align 4, !tbaa !36, !alias.scope !541 ; 2 uses
  %i.es = tail call float @llvm.fmuladd.f32(float %i.er, float %i.er, float %i.dl)
  %i.et = tail call float @sqrtf(float noundef %i.es) #14, !noalias !544
  %i.eu = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !36, !alias.scope !541 ; 2 uses
  %i.ew = tail call float @llvm.fmuladd.f32(float %i.ev, float %i.ev, float %i.dl)
  %i.ex = tail call float @sqrtf(float noundef %i.ew) #14, !noalias !544
  %i.ey = getelementptr inbounds nuw i8, ptr %i.do, i64 28
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !36, !alias.scope !541 ; 2 uses
  %i.fa = tail call float @llvm.fmuladd.f32(float %i.ez, float %i.ez, float %i.dl)
  %i.fb = tail call float @sqrtf(float noundef %i.fa) #14, !noalias !544
  %i.fc = load <4 x float>, ptr %i.el, align 4, !tbaa !36, !alias.scope !543
  %i.fd = insertelement <4 x float> poison, float %i.ep, i64 0
  %i.fe = insertelement <4 x float> %i.fd, float %i.et, i64 1
  %i.ff = insertelement <4 x float> %i.fe, float %i.ex, i64 2
  %i.fg = insertelement <4 x float> %i.ff, float %i.fb, i64 3
  %i.fh = fmul <4 x float> %i.fc, %i.fg           ; 5 uses
  store <4 x float> %i.fh, ptr %i.m, align 16, !tbaa !36, !noalias !544
  %i.fi = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  %i.fj = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !36, !alias.scope !541 ; 2 uses
  %i.fl = tail call float @llvm.fmuladd.f32(float %i.fk, float %i.fk, float %i.dl)
  %i.fm = tail call float @sqrtf(float noundef %i.fl) #14, !noalias !544
  %i.fn = getelementptr inbounds nuw i8, ptr %i.do, i64 36
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !36, !alias.scope !541 ; 2 uses
  %i.fp = tail call float @llvm.fmuladd.f32(float %i.fo, float %i.fo, float %i.dl)
  %i.fq = tail call float @sqrtf(float noundef %i.fp) #14, !noalias !544
  %i.fr = getelementptr inbounds nuw i8, ptr %i.do, i64 40
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !36, !alias.scope !541 ; 2 uses
  %i.ft = tail call float @llvm.fmuladd.f32(float %i.fs, float %i.fs, float %i.dl)
  %i.fu = tail call float @sqrtf(float noundef %i.ft) #14, !noalias !544
  %i.fv = getelementptr inbounds nuw i8, ptr %i.do, i64 44
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !36, !alias.scope !541 ; 2 uses
  %i.fx = tail call float @llvm.fmuladd.f32(float %i.fw, float %i.fw, float %i.dl)
  %i.fy = tail call float @sqrtf(float noundef %i.fx) #14, !noalias !544
  %i.fz = load <4 x float>, ptr %i.fi, align 4, !tbaa !36, !alias.scope !543
  %i.ga = insertelement <4 x float> poison, float %i.fm, i64 0
  %i.gb = insertelement <4 x float> %i.ga, float %i.fq, i64 1
  %i.gc = insertelement <4 x float> %i.gb, float %i.fu, i64 2
  %i.gd = insertelement <4 x float> %i.gc, float %i.fy, i64 3
  %i.ge = fmul <4 x float> %i.fz, %i.gd           ; 5 uses
  store <4 x float> %i.ge, ptr %i.n, align 16, !tbaa !36, !noalias !544
  %i.gf = getelementptr inbounds nuw i8, ptr %i.dp, i64 48
  %i.gg = getelementptr inbounds nuw i8, ptr %i.do, i64 48
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !36, !alias.scope !541 ; 2 uses
  %i.gi = tail call float @llvm.fmuladd.f32(float %i.gh, float %i.gh, float %i.dl)
  %i.gj = tail call float @sqrtf(float noundef %i.gi) #14, !noalias !544
  %i.gk = getelementptr inbounds nuw i8, ptr %i.do, i64 52
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !36, !alias.scope !541 ; 2 uses
  %i.gm = tail call float @llvm.fmuladd.f32(float %i.gl, float %i.gl, float %i.dl)
  %i.gn = tail call float @sqrtf(float noundef %i.gm) #14, !noalias !544
  %i.go = getelementptr inbounds nuw i8, ptr %i.do, i64 56
  %i.gp = load float, ptr %i.go, align 4, !tbaa !36, !alias.scope !541 ; 2 uses
  %i.gq = tail call float @llvm.fmuladd.f32(float %i.gp, float %i.gp, float %i.dl)
  %i.gr = tail call float @sqrtf(float noundef %i.gq) #14, !noalias !544
  %i.gs = getelementptr inbounds nuw i8, ptr %i.do, i64 60
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !36, !alias.scope !541 ; 2 uses
  %i.gu = tail call float @llvm.fmuladd.f32(float %i.gt, float %i.gt, float %i.dl)
  %i.gv = tail call float @sqrtf(float noundef %i.gu) #14, !noalias !544
  %i.gw = load <4 x float>, ptr %i.gf, align 4, !tbaa !36, !alias.scope !543
  %i.gx = insertelement <4 x float> poison, float %i.gj, i64 0
  %i.gy = insertelement <4 x float> %i.gx, float %i.gn, i64 1
  %i.gz = insertelement <4 x float> %i.gy, float %i.gr, i64 2
  %i.ha = insertelement <4 x float> %i.gz, float %i.gv, i64 3
  %i.hb = fmul <4 x float> %i.gw, %i.ha           ; 5 uses
  store <4 x float> %i.hb, ptr %i.o, align 16, !tbaa !36, !noalias !544
  %i.hc = getelementptr inbounds nuw i8, ptr %i.dp, i64 64
  %i.hd = getelementptr inbounds nuw i8, ptr %i.do, i64 64
  %i.he = load float, ptr %i.hd, align 4, !tbaa !36, !alias.scope !541 ; 2 uses
  %i.hf = tail call float @llvm.fmuladd.f32(float %i.he, float %i.he, float %i.dl)
  %i.hg = tail call float @sqrtf(float noundef %i.hf) #14, !noalias !544
  %i.hh = getelementptr inbounds nuw i8, ptr %i.do, i64 68
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !36, !alias.scope !541 ; 2 uses
  %i.hj = tail call float @llvm.fmuladd.f32(float %i.hi, float %i.hi, float %i.dl)
  %i.hk = tail call float @sqrtf(float noundef %i.hj) #14, !noalias !544
  %i.hl = getelementptr inbounds nuw i8, ptr %i.do, i64 72
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !36, !alias.scope !541 ; 2 uses
  %i.hn = tail call float @llvm.fmuladd.f32(float %i.hm, float %i.hm, float %i.dl)
  %i.ho = tail call float @sqrtf(float noundef %i.hn) #14, !noalias !544
  %i.hp = getelementptr inbounds nuw i8, ptr %i.do, i64 76
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !36, !alias.scope !541 ; 2 uses
  %i.hr = tail call float @llvm.fmuladd.f32(float %i.hq, float %i.hq, float %i.dl)
  %i.hs = tail call float @sqrtf(float noundef %i.hr) #14, !noalias !544
  %i.ht = load <4 x float>, ptr %i.hc, align 4, !tbaa !36, !alias.scope !543
  %i.hu = insertelement <4 x float> poison, float %i.hg, i64 0
  %i.hv = insertelement <4 x float> %i.hu, float %i.hk, i64 1
  %i.hw = insertelement <4 x float> %i.hv, float %i.ho, i64 2
  %i.hx = insertelement <4 x float> %i.hw, float %i.hs, i64 3
  %i.hy = fmul <4 x float> %i.ht, %i.hx           ; 5 uses
  store <4 x float> %i.hy, ptr %i.p, align 16, !tbaa !36, !noalias !544
  %i.hz = getelementptr inbounds nuw i8, ptr %i.dp, i64 80
  %i.ia = getelementptr inbounds nuw i8, ptr %i.do, i64 80
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !36, !alias.scope !541 ; 2 uses
end_hunk_1
begin_hunk_2_@quantize_iq2_xxs:bb.a
.loopexit.loopexit.i.us:                          ; preds = %bb.x
  %i.xo = load <4 x i8>, ptr %i.g, align 4, !tbaa !34, !noalias !544
  %i.xp = and <4 x i8> %i.xo, splat (i8 127)
  %i.xq = xor <4 x i8> %i.xp, splat (i8 127)
  store <4 x i8> %i.xq, ptr %i.g, align 4, !tbaa !34, !noalias !544
  %i.xr = fneg float %.3.i.us
  br label %.loopexit.i.us

.loopexit.i.us:                                   ; preds = %.loopexit.loopexit.i.us, %bb.x
  %.4.i.us = phi float [ %.3.i.us, %bb.x ], [ %i.xr, %.loopexit.loopexit.i.us ] ; 4 uses
  %.idx.i.us = shl nuw nsw i64 %indvars.iv461.i.us, 3
  %i.xs = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx.i.us ; 3 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 4 ; 2 uses
  %i.xu = load <8 x i8>, ptr %i.d, align 16, !tbaa !34, !noalias !544 ; 2 uses
  %i.xv = sext <8 x i8> %i.xu to <8 x i16>
  %i.xw = zext <8 x i8> %i.xu to <8 x i16>
  %i.xx = shufflevector <8 x i16> %i.xv, <8 x i16> %i.xw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.xy = shl <8 x i16> %i.xx, <i16 0, i16 2, i16 4, i16 6, i16 8, i16 10, i16 12, i16 14>
  %i.xz = tail call i16 @llvm.vector.reduce.or.v8i16(<8 x i16> %i.xy) ; 2 uses
  %i.ya = zext i16 %i.xz to i64
  %i.yb = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.ya
  %i.yc = load i32, ptr %i.yb, align 4, !tbaa !47, !noalias !544 ; 2 uses
  %i.yd = icmp slt i32 %i.yc, 0
  br i1 %i.yd, label %.split72.us, label %.preheader336.1.i.us

.preheader336.1.i.us:                             ; preds = %.loopexit.i.us
  %i.ye = load <8 x i8>, ptr %.0273380.lcssa.wide.i.sroa.gep18, align 8, !tbaa !34, !noalias !544 ; 2 uses
  %i.yf = sext <8 x i8> %i.ye to <8 x i16>
  %i.yg = zext <8 x i8> %i.ye to <8 x i16>
  %i.yh = shufflevector <8 x i16> %i.yf, <8 x i16> %i.yg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.yi = shl <8 x i16> %i.yh, <i16 0, i16 2, i16 4, i16 6, i16 8, i16 10, i16 12, i16 14>
  %i.yj = tail call i16 @llvm.vector.reduce.or.v8i16(<8 x i16> %i.yi) ; 2 uses
  %i.yk = zext i16 %i.yj to i64
  %i.yl = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.yk
  %i.ym = load i32, ptr %i.yl, align 4, !tbaa !47, !noalias !544 ; 2 uses
  %i.yn = icmp slt i32 %i.ym, 0
  br i1 %i.yn, label %.split72.us, label %.preheader336.2.i.us

.preheader336.2.i.us:                             ; preds = %.preheader336.1.i.us
  %i.yo = load <8 x i8>, ptr %.0273380.lcssa.wide.i.sroa.gep19, align 16, !tbaa !34, !noalias !544 ; 2 uses
  %i.yp = sext <8 x i8> %i.yo to <8 x i16>
  %i.yq = zext <8 x i8> %i.yo to <8 x i16>
  %i.yr = shufflevector <8 x i16> %i.yp, <8 x i16> %i.yq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.ys = shl <8 x i16> %i.yr, <i16 0, i16 2, i16 4, i16 6, i16 8, i16 10, i16 12, i16 14>
  %i.yt = tail call i16 @llvm.vector.reduce.or.v8i16(<8 x i16> %i.ys) ; 2 uses
  %i.yu = zext i16 %i.yt to i64
  %i.yv = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.yu
  %i.yw = load i32, ptr %i.yv, align 4, !tbaa !47, !noalias !544 ; 2 uses
  %i.yx = icmp slt i32 %i.yw, 0
  br i1 %i.yx, label %.split72.us, label %.preheader336.3.i.us

.preheader336.3.i.us:                             ; preds = %.preheader336.2.i.us
  %i.yy = load <8 x i8>, ptr %.0273380.lcssa.wide.i.sroa.gep20, align 8, !tbaa !34, !noalias !544 ; 2 uses
  %i.yz = sext <8 x i8> %i.yy to <8 x i16>
  %i.za = zext <8 x i8> %i.yy to <8 x i16>
  %i.zb = shufflevector <8 x i16> %i.yz, <8 x i16> %i.za, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.zc = shl <8 x i16> %i.zb, <i16 0, i16 2, i16 4, i16 6, i16 8, i16 10, i16 12, i16 14>
  %i.zd = tail call i16 @llvm.vector.reduce.or.v8i16(<8 x i16> %i.zc) ; 2 uses
  %i.ze = zext i16 %i.zd to i64
  %i.zf = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.ze
  %i.zg = load i32, ptr %i.zf, align 4, !tbaa !47, !noalias !544 ; 2 uses
  %i.zh = icmp slt i32 %i.zg, 0
  br i1 %i.zh, label %.split72.us, label %bb.y

bb.y:                                             ; preds = %.preheader336.3.i.us
  %i.zi = load i8, ptr %i.ce, align 2, !tbaa !34, !noalias !544
  %i.zj = zext i8 %i.zi to i32
  %i.zk = shl nuw nsw i32 %i.zj, 14
  %i.zl = load i8, ptr %i.cd, align 1, !tbaa !34, !noalias !544
  %i.zm = zext i8 %i.zl to i32
  %i.zn = shl nuw nsw i32 %i.zm, 7
  %i.zo = load i32, ptr %i.xt, align 4, !tbaa !47, !noalias !544
  %i.zp = load i8, ptr %i.g, align 4, !tbaa !34, !noalias !544
  %i.zq = zext i8 %i.zp to i32
  %i.zr = shl i32 %i.yw, 16
  %i.zs = load i32, ptr %i.xs, align 8, !tbaa !47, !noalias !544
  %i.zt = shl i32 %i.ym, 8
  %i.zu = shl i32 %i.zg, 24
  %i.zv = or i32 %i.zt, %i.zr
  %i.zw = or i32 %i.zv, %i.zu
  %i.zx = or i32 %i.zw, %i.zs
  %i.zy = or i32 %i.zx, %i.yc
  store i32 %i.zy, ptr %i.xs, align 8, !tbaa !47, !noalias !544
  %i.zz = load i8, ptr %i.cf, align 1, !tbaa !34, !noalias !544
  %i.aaa = zext i8 %i.zz to i32
  %i.aab = shl nuw nsw i32 %i.aaa, 21
  %i.aac = or i32 %i.zk, %i.zo
  %i.aad = or i32 %i.aac, %i.zn
  %i.aae = or i32 %i.aad, %i.zq
  %i.aaf = or i32 %i.aae, %i.aab
  store i32 %i.aaf, ptr %i.xt, align 4, !tbaa !47, !noalias !544
  %i.aag = fcmp ult float %.4.i.us, 0.000000e+00
  br i1 %i.aag, label %.split75.us, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.aah = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv461.i.us
  store float %.4.i.us, ptr %i.aah, align 4, !tbaa !36, !noalias !544
  %i.aai = fcmp ogt float %.0314381.i.us, %.4.i.us
  %i.aaj = select i1 %i.aai, float %.0314381.i.us, float %.4.i.us
  br label %bb.ab

bb.aa:                                            ; preds = %bb.j
  %i.aak = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv461.i.us
  store float 0.000000e+00, ptr %i.aak, align 4, !tbaa !36, !noalias !544
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.d, i8 0, i64 32, i1 false), !noalias !544
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.l
  %.2316.i.us = phi float [ %.0314381.i.us, %bb.aa ], [ %.0314381.i.us, %bb.l ], [ %i.aaj, %bb.z ] ; 3 uses
  %indvars.iv.next462.i.us = add nuw nsw i64 %indvars.iv461.i.us, 1 ; 2 uses
  %exitcond464.not.i.us = icmp eq i64 %indvars.iv.next462.i.us, 8
  br i1 %exitcond464.not.i.us, label %bb.ac, label %.preheader343.preheader.i.us, !llvm.loop !538

bb.ac:                                            ; preds = %bb.ab
  %i.aal = fcmp une float %.2316.i.us, 0.000000e+00
  br i1 %i.aal, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.aam = getelementptr inbounds nuw i8, ptr %i.ct, i64 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(64) %i.aam, i8 0, i64 64, i1 false), !alias.scope !542
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.aan = fdiv float %.2316.i.us, 3.100000e+01   ; 3 uses
  %i.aao = tail call float @llvm.fabs.f32(float %i.aan)
  %i.aap = fmul float %i.aao, f0x77800000
  %i.aaq = fmul float %i.aap, f0x08800000
  %i.aar = bitcast float %i.aan to i32            ; 2 uses
  %i.aas = shl i32 %i.aar, 1                      ; 2 uses
  %i.aat = tail call i32 @llvm.umax.i32(i32 %i.aas, i32 1895825408)
  %spec.store.select.i.i.us = lshr exact i32 %i.aat, 1
  %i.aau = and i32 %spec.store.select.i.i.us, 2139095040
  %i.aav = add nuw i32 %i.aau, 125829120
  %i.aaw = bitcast i32 %i.aav to float
  %i.aax = fadd float %i.aaq, %i.aaw
  %i.aay = bitcast float %i.aax to i32            ; 2 uses
  %i.aaz = lshr i32 %i.aay, 13
  %i.aba = and i32 %i.aaz, 31744
  %i.abb = and i32 %i.aay, 4095
  %i.abc = add nuw nsw i32 %i.aba, %i.abb
  %i.abd = lshr i32 %i.aar, 16
  %i.abe = and i32 %i.abd, 32768
  %i.abf = icmp ugt i32 %i.aas, -16777216
  %i.abg = select i1 %i.abf, i32 32256, i32 %i.abc
  %i.abh = or i32 %i.abg, %i.abe
  %i.abi = trunc nuw i32 %i.abh to i16
  store i16 %i.abi, ptr %i.ct, align 2, !tbaa !33, !alias.scope !542
  %i.abj = fdiv float 1.000000e+00, %i.aan
  %i.abk = load <8 x float>, ptr %i.a, align 16, !tbaa !36, !noalias !544
  %i.abl = insertelement <8 x float> poison, float %i.abj, i64 0
  %i.abm = shufflevector <8 x float> %i.abl, <8 x float> poison, <8 x i32> zeroinitializer
  %i.abn = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.abm, <8 x float> %i.abk, <8 x float> splat (float -1.000000e+00))
  %i.abo = fmul <8 x float> %i.abn, splat (float 5.000000e-01)
  %i.abp = fadd <8 x float> %i.abo, splat (float f0x4B400000)
  %i.abq = bitcast <8 x float> %i.abp to <8 x i32>
  %i.abr = and <8 x i32> %i.abq, splat (i32 8388607)
  %i.abs = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %i.abr, <8 x i32> splat (i32 4194304))
  %i.abt = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.abs, <8 x i32> splat (i32 15))
  %i.abu = shl nuw <8 x i32> %i.abt, splat (i32 28)
  %i.abv = load <15 x i32>, ptr %i.cg, align 4, !tbaa !47, !noalias !544
  %i.abw = shufflevector <15 x i32> %i.abv, <15 x i32> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.abx = or <8 x i32> %i.abu, %i.abw            ; 8 uses
  %i.aby = extractelement <8 x i32> %i.abx, i64 0
  store i32 %i.aby, ptr %i.cg, align 4, !tbaa !47, !noalias !544
  %i.abz = extractelement <8 x i32> %i.abx, i64 1
  store i32 %i.abz, ptr %i.ch, align 4, !tbaa !47, !noalias !544
  %i.aca = extractelement <8 x i32> %i.abx, i64 2
  store i32 %i.aca, ptr %i.ci, align 4, !tbaa !47, !noalias !544
  %i.acb = extractelement <8 x i32> %i.abx, i64 3
  store i32 %i.acb, ptr %i.cj, align 4, !tbaa !47, !noalias !544
  %i.acc = extractelement <8 x i32> %i.abx, i64 4
  store i32 %i.acc, ptr %i.ck, align 4, !tbaa !47, !noalias !544
  %i.acd = extractelement <8 x i32> %i.abx, i64 5
  store i32 %i.acd, ptr %i.cl, align 4, !tbaa !47, !noalias !544
  %i.ace = extractelement <8 x i32> %i.abx, i64 6
  store i32 %i.ace, ptr %i.cm, align 4, !tbaa !47, !noalias !544
  %i.acf = extractelement <8 x i32> %i.abx, i64 7
  store i32 %i.acf, ptr %i.cn, align 4, !tbaa !47, !noalias !544
  %i.acg = getelementptr inbounds nuw i8, ptr %i.ct, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(64) %i.acg, ptr noundef nonnull align 16 dereferenceable(64) %i.h, i64 64, i1 false), !noalias !545
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %indvars.iv.next470.i.us = add nuw nsw i64 %indvars.iv469.i.us, 1 ; 2 uses
  %exitcond472.not.i.us = icmp eq i64 %indvars.iv.next470.i.us, %i.k
  br i1 %exitcond472.not.i.us, label %quantize_row_iq2_xxs_impl.exit.loopexit.us, label %.lr.ph.i.us, !llvm.loop !539

quantize_row_iq2_xxs_impl.exit.loopexit.us:       ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14, !noalias !544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14, !noalias !544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14, !noalias !544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14, !noalias !544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14, !noalias !544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14, !noalias !544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14, !noalias !544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14, !noalias !544
  %i.ach = getelementptr inbounds [4 x i8], ptr %.01660.us65, i64 %3
  %i.aci = getelementptr inbounds nuw i8, ptr %.01561.us64, i64 %i.co
  %i.acj = add nuw nsw i64 %.062.us63, 1          ; 2 uses
  %exitcond96.not = icmp eq i64 %i.acj, %2
  br i1 %exitcond96.not, label %.lr.ph.split.split.split.us.split.split.us, label %.lr.ph.split.split.us, !llvm.loop !540

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.ack = load ptr, ptr @iq2_data, align 16, !tbaa !73, !noalias !544
  %i.acl = icmp eq ptr %i.ack, null
  br i1 %i.acl, label %.split.us66.loopexit87, label %.lr.ph.split.split.split.us

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split
  %i.acm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @iq2_data, i64 8), align 8, !tbaa !76, !noalias !544
  %.not332.i.us80 = icmp eq ptr %i.acm, null
  br i1 %.not332.i.us80, label %.split68.us.a, label %.lr.ph.split.split.split.us.split

.lr.ph.split.split.split.us.split:                ; preds = %.lr.ph.split.split.split.us
  %i.acn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @iq2_data, i64 16), align 16, !tbaa !78, !noalias !544
  %.not333.i.us81 = icmp eq ptr %i.acn, null
  br i1 %.not333.i.us81, label %.split70.us, label %.lr.ph.split.split.split.us.split.split.us

.lr.ph.split.split.split.us.split.split.us:       ; preds = %quantize_row_iq2_xxs_impl.exit.loopexit.us, %.lr.ph.split.split.split.us.split, %bb.c
  %5 = mul i64 %2, 66
  %6 = mul i64 %5, %i.k
  ret i64 %6

._crit_edge:                                      ; preds = %.lr.ph
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3302, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.10) #24, !noalias !544
  unreachable

.split.us66.loopexit87:                           ; preds = %.lr.ph.split.split
  tail call void @llvm.experimental.noalias.scope.decl(metadata !541)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !542)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !543)
  br label %.split.us66

.split.us66:                                      ; preds = %.lr.ph.split.split.us, %.split.us66.loopexit87
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3303, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.12) #24, !noalias !544
  unreachable

.split68.us.a:                                    ; preds = %bb.d, %.lr.ph.split.split.split.us
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3304, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.13) #24, !noalias !544
  unreachable

.split70.us:                                      ; preds = %bb.e, %.lr.ph.split.split.split.us.split
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3305, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.14) #24, !noalias !544
  unreachable

.split72.us:                                      ; preds = %.loopexit.i.us, %.preheader336.1.i.us, %.preheader336.2.i.us, %.preheader336.3.i.us
  %.0273380.lcssa.wide.i.sroa.phi.us = phi ptr [ %i.d, %.loopexit.i.us ], [ %.0273380.lcssa.wide.i.sroa.gep18, %.preheader336.1.i.us ], [ %.0273380.lcssa.wide.i.sroa.gep19, %.preheader336.2.i.us ], [ %.0273380.lcssa.wide.i.sroa.gep20, %.preheader336.3.i.us ] ; 8 uses
  %.lcssa392.lcssa.i.us = phi i16 [ %i.xz, %.loopexit.i.us ], [ %i.yj, %.preheader336.1.i.us ], [ %i.yt, %.preheader336.2.i.us ], [ %i.zd, %.preheader336.3.i.us ]
  %i.aco = zext i16 %.lcssa392.lcssa.i.us to i32
  %i.acp = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.aco), !noalias !544 ; 0 uses
  %i.acq = load i8, ptr %.0273380.lcssa.wide.i.sroa.phi.us, align 1, !tbaa !34, !noalias !544
  %i.acr = sext i8 %i.acq to i32
  %i.acs = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.acr), !noalias !544 ; 0 uses
  %i.act = getelementptr inbounds nuw i8, ptr %.0273380.lcssa.wide.i.sroa.phi.us, i64 1
  %i.acu = load i8, ptr %i.act, align 1, !tbaa !34, !noalias !544
  %i.acv = sext i8 %i.acu to i32
  %i.acw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.acv), !noalias !544 ; 0 uses
  %i.acx = getelementptr inbounds nuw i8, ptr %.0273380.lcssa.wide.i.sroa.phi.us, i64 2
  %i.acy = load i8, ptr %i.acx, align 1, !tbaa !34, !noalias !544
  %i.acz = sext i8 %i.acy to i32
  %i.ada = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.acz), !noalias !544 ; 0 uses
  %i.adb = getelementptr inbounds nuw i8, ptr %.0273380.lcssa.wide.i.sroa.phi.us, i64 3
  %i.adc = load i8, ptr %i.adb, align 1, !tbaa !34, !noalias !544
  %i.add = sext i8 %i.adc to i32
  %i.ade = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.add), !noalias !544 ; 0 uses
  %i.adf = getelementptr inbounds nuw i8, ptr %.0273380.lcssa.wide.i.sroa.phi.us, i64 4
  %i.adg = load i8, ptr %i.adf, align 1, !tbaa !34, !noalias !544
  %i.adh = sext i8 %i.adg to i32
  %i.adi = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.adh), !noalias !544 ; 0 uses
  %i.adj = getelementptr inbounds nuw i8, ptr %.0273380.lcssa.wide.i.sroa.phi.us, i64 5
  %i.adk = load i8, ptr %i.adj, align 1, !tbaa !34, !noalias !544
  %i.adl = sext i8 %i.adk to i32
  %i.adm = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.adl), !noalias !544 ; 0 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %.0273380.lcssa.wide.i.sroa.phi.us, i64 6
  %i.ado = load i8, ptr %i.adn, align 1, !tbaa !34, !noalias !544
  %i.adp = sext i8 %i.ado to i32
  %i.adq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.adp), !noalias !544 ; 0 uses
  %i.adr = getelementptr inbounds nuw i8, ptr %.0273380.lcssa.wide.i.sroa.phi.us, i64 7
  %i.ads = load i8, ptr %i.adr, align 1, !tbaa !34, !noalias !544
  %i.adt = sext i8 %i.ads to i32
  %i.adu = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.adt), !noalias !544 ; 0 uses
  %putchar.i = tail call i32 @putchar(i32 10), !noalias !544 ; 0 uses
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3445, ptr noundef nonnull @.str.19) #24, !noalias !544
  unreachable

.split75.us:                                      ; preds = %bb.y
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3450, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.20) #24, !noalias !544
  unreachable
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 65536) i32 @iq2_find_best_neighbour(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, ptr noalias nofree noundef nonnull readonly captures(none) %3, float noundef %4, ptr noalias nofree noundef nonnull writeonly captures(none) %5) unnamed_addr #6 {
bb.a:
  %i.a = load i16, ptr %0, align 2, !tbaa !57     ; 2 uses
  %.not = icmp eq i16 %i.a, 0
  br i1 %.not, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.b = zext i16 %i.a to i64
  %i.c = load <4 x float>, ptr %3, align 4, !tbaa !36
  %.phi.trans.insert69 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = load <8 x float>, ptr %2, align 4, !tbaa !36
  %i.e = load <4 x float>, ptr %.phi.trans.insert69, align 4, !tbaa !36
  %i.f = fneg <8 x float> %i.d
  %i.g = insertelement <8 x float> poison, float %4, i64 0
  %i.h = shufflevector <8 x float> %i.g, <8 x float> poison, <8 x i32> zeroinitializer
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3273, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.21) #24
  unreachable

bb.c:                                             ; preds = %.preheader
  %i.i = icmp sgt i32 %.140, -1
  br i1 %i.i, label %bb.e, label %bb.d

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv = phi i64 [ 1, %.preheader.preheader ], [ %indvars.iv.next, %.preheader ] ; 3 uses
  %.03547 = phi float [ f0x7F7FFFFF, %.preheader.preheader ], [ %.1, %.preheader ] ; 2 uses
  %.03945 = phi i32 [ -1, %.preheader.preheader ], [ %.140, %.preheader ]
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.k = load i16, ptr %i.j, align 2, !tbaa !57   ; 2 uses
  %i.l = zext i16 %i.k to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.l
  %i.n = load <8 x i8>, ptr %i.m, align 1, !tbaa !34
  %i.o = sitofp <8 x i8> %i.n to <8 x float>
  %i.p = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.h, <8 x float> %i.o, <8 x float> %i.f) ; 10 uses
  %i.q = extractelement <8 x float> %i.p, i64 0
  %i.r = extractelement <8 x float> %i.p, i64 1
  %i.s = extractelement <8 x float> %i.p, i64 2
  %i.t = extractelement <8 x float> %i.p, i64 3
  %i.u = shufflevector <8 x float> %i.p, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.v = fmul <4 x float> %i.c, %i.u              ; 4 uses
  %i.w = extractelement <4 x float> %i.v, i64 0
  %i.x = tail call float @llvm.fmuladd.f32(float %i.w, float %i.q, float 0.000000e+00)
  %i.y = extractelement <4 x float> %i.v, i64 1
  %i.z = tail call float @llvm.fmuladd.f32(float %i.y, float %i.r, float %i.x)
  %i.aa = extractelement <4 x float> %i.v, i64 2
  %i.ab = tail call float @llvm.fmuladd.f32(float %i.aa, float %i.s, float %i.z)
  %i.ac = extractelement <4 x float> %i.v, i64 3
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.ac, float %i.t, float %i.ab)
  %i.ae = extractelement <8 x float> %i.p, i64 4
  %i.af = extractelement <8 x float> %i.p, i64 5
  %i.ag = extractelement <8 x float> %i.p, i64 6
  %i.ah = extractelement <8 x float> %i.p, i64 7
  %i.ai = shufflevector <8 x float> %i.p, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.aj = fmul <4 x float> %i.e, %i.ai            ; 4 uses
  %i.ak = extractelement <4 x float> %i.aj, i64 0
  %i.al = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.ae, float %i.ad)
  %i.am = extractelement <4 x float> %i.aj, i64 1
  %i.an = tail call float @llvm.fmuladd.f32(float %i.am, float %i.af, float %i.al)
  %i.ao = extractelement <4 x float> %i.aj, i64 2
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.ao, float %i.ag, float %i.an)
  %i.aq = extractelement <4 x float> %i.aj, i64 3
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.ah, float %i.ap) ; 2 uses
  %i.as = fcmp olt float %i.ar, %.03547           ; 2 uses
  %i.at = zext i16 %i.k to i32
  %.140 = select i1 %i.as, i32 %i.at, i32 %.03945 ; 4 uses
  %.1 = select i1 %i.as, float %i.ar, float %.03547
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv, %i.b
  br i1 %exitcond.not, label %bb.c, label %.preheader, !llvm.loop !546

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3288, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.22) #24
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.au = zext nneg i32 %.140 to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.au
  %i.aw = load <8 x i8>, ptr %i.av, align 1, !tbaa !34
  %i.ax = sext <8 x i8> %i.aw to <8 x i16>
  %i.ay = add nsw <8 x i16> %i.ax, splat (i16 -1)
  %i.az = sdiv <8 x i16> %i.ay, splat (i16 2)
  %i.ba = trunc nsw <8 x i16> %i.az to <8 x i8>
  store <8 x i8> %i.ba, ptr %5, align 1, !tbaa !34
  ret i32 %.140
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #20

; Function Attrs: nounwind uwtable
define i64 @quantize_iq2_xs(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef captures(none) %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca [16 x float], align 16            ; 5 uses
  %i.b = alloca [16 x float], align 16            ; 37 uses
  %i.c = alloca [16 x i8], align 16               ; 19 uses
  %i.d = alloca [16 x i8], align 16               ; 16 uses
  %i.e = alloca [16 x float], align 16            ; 20 uses
  %i.f = alloca [32 x i16], align 16              ; 5 uses
  %i.g = and i64 %3, 255
  %i.h = icmp eq i64 %i.g, 0
  %.0290401.lcssa.wide.i.sroa.gep30 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %indvars.iv446.i.us.sroa.gep89 = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 3 uses
  %indvars.iv446.i.us.sroa.gep93 = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %indvars.iv446.i.us.sroa.gep99 = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 6 uses
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3665, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.8) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = ashr exact i64 %3, 8                     ; 4 uses
  %i.j = icmp sgt i64 %2, 0
  br i1 %i.j, label %.lr.ph, label %.lr.ph.split.split.split.us.split.split.us

.lr.ph:                                           ; preds = %bb.c
  %.not.i = icmp eq ptr %4, null
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 60
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ao = mul nsw i64 %i.i, 74
  br i1 %.not.i, label %._crit_edge, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ap = icmp sgt i64 %i.i, 0
  br i1 %i.ap, label %.lr.ph.split.split.us.preheader, label %.lr.ph.split.split

.lr.ph.split.split.us.preheader:                  ; preds = %.lr.ph.split
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 5
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 6
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 7
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 13
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 14
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 15
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 7
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 13
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 14
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 15
  br label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split.split.us.preheader, %quantize_row_iq2_xs_impl.exit.loopexit.us
  %.055.us56 = phi i64 [ %i.agy, %quantize_row_iq2_xs_impl.exit.loopexit.us ], [ 0, %.lr.ph.split.split.us.preheader ]
  %.01554.us57 = phi ptr [ %i.agx, %quantize_row_iq2_xs_impl.exit.loopexit.us ], [ %1, %.lr.ph.split.split.us.preheader ] ; 2 uses
  %.01653.us58 = phi ptr [ %i.agw, %quantize_row_iq2_xs_impl.exit.loopexit.us ], [ %0, %.lr.ph.split.split.us.preheader ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !557)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !558)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !559)
  %i.bs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @iq2_data, i64 24), align 8, !tbaa !73, !noalias !560 ; 5 uses
  %i.bt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @iq2_data, i64 32), align 16, !tbaa !76, !noalias !560 ; 7 uses
  %i.bu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @iq2_data, i64 40), align 8, !tbaa !78, !noalias !560 ; 5 uses
  %.not347.i.us = icmp eq ptr %i.bt, null
  br i1 %.not347.i.us, label %.split.us59, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.split.us
  %.not348.i.us = icmp eq ptr %i.bs, null
  br i1 %.not348.i.us, label %.split61.us.a, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not349.i.us = icmp eq ptr %i.bu, null
  br i1 %.not349.i.us, label %.split63.us, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14, !noalias !560
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14, !noalias !560
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14, !noalias !560
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14, !noalias !560
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14, !noalias !560
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14, !noalias !560
  br label %bb.f

bb.f:                                             ; preds = %bb.ae, %.lr.ph.i.us
  %indvars.iv490.i.us = phi i64 [ 0, %.lr.ph.i.us ], [ %indvars.iv.next491.i.us, %bb.ae ] ; 3 uses
  %i.bv = getelementptr inbounds nuw [74 x i8], ptr %.01554.us57, i64 %indvars.iv490.i.us ; 5 uses
  store i16 0, ptr %i.bv, align 2, !tbaa !56, !alias.scope !558
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.f, i8 0, i64 64, i1 false), !noalias !560
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 66 ; 3 uses
  store i64 0, ptr %i.bw, align 2, !alias.scope !558
  %i.bx = shl nuw nsw i64 %indvars.iv490.i.us, 8  ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %.01653.us58, i64 %i.bx ; 5 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %indvars.iv.i.us = phi i64 [ 0, %bb.f ], [ %indvars.iv.next.i.us.3, %bb.g ] ; 5 uses
  %.0333365.i.us = phi float [ 0.000000e+00, %bb.f ], [ %i.cn, %bb.g ]
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.i.us
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !36, !alias.scope !557 ; 2 uses
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.ca, float %i.ca, float %.0333365.i.us)
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.i.us
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !36, !alias.scope !557 ; 2 uses
  %i.cf = tail call float @llvm.fmuladd.f32(float %i.ce, float %i.ce, float %i.cb)
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.i.us
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !36, !alias.scope !557 ; 2 uses
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.ci, float %i.ci, float %i.cf)
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.i.us
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !36, !alias.scope !557 ; 2 uses
  %i.cn = tail call float @llvm.fmuladd.f32(float %i.cm, float %i.cm, float %i.cj) ; 2 uses
  %indvars.iv.next.i.us.3 = add nuw nsw i64 %indvars.iv.i.us, 4 ; 2 uses
  %exitcond.not.i.us.3 = icmp eq i64 %indvars.iv.next.i.us.3, 256
  br i1 %exitcond.not.i.us.3, label %bb.h, label %bb.g, !llvm.loop !551

bb.h:                                             ; preds = %bb.g
  %i.co = fmul float %i.cn, 3.906250e-03          ; 16 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.bx
  br label %.preheader361.preheader.i.us

.preheader361.preheader.i.us:                     ; preds = %bb.v, %bb.h
  %indvars.iv482.i.us = phi i64 [ 0, %bb.h ], [ %indvars.iv.next483.i.us, %bb.v ] ; 5 uses
  %.0334402.i.us = phi float [ 0.000000e+00, %bb.h ], [ %.1335.i.us, %bb.v ] ; 3 uses
  %i.cq = shl nuw nsw i64 %indvars.iv482.i.us, 4  ; 2 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.cq ; 17 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.cq ; 8 uses
  %i.ct = load float, ptr %i.cr, align 4, !tbaa !36, !alias.scope !557 ; 2 uses
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.ct, float %i.ct, float %i.co)
  %i.cv = tail call float @sqrtf(float noundef %i.cu) #14, !noalias !560
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !36, !alias.scope !557 ; 2 uses
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.cx, float %i.cx, float %i.co)
  %i.cz = tail call float @sqrtf(float noundef %i.cy) #14, !noalias !560
  %i.da = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.db = load float, ptr %i.da, align 4, !tbaa !36, !alias.scope !559
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 2 uses
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !36, !alias.scope !557 ; 2 uses
  %i.de = tail call float @llvm.fmuladd.f32(float %i.dd, float %i.dd, float %i.co)
  %i.df = tail call float @sqrtf(float noundef %i.de) #14, !noalias !560
  %i.dg = fmul float %i.db, %i.df                 ; 5 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  %i.di = load float, ptr %i.dh, align 4, !tbaa !36, !alias.scope !559
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cr, i64 12 ; 2 uses
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !36, !alias.scope !557 ; 2 uses
  %i.dl = tail call float @llvm.fmuladd.f32(float %i.dk, float %i.dk, float %i.co)
  %i.dm = tail call float @sqrtf(float noundef %i.dl) #14, !noalias !560
  %i.dn = fmul float %i.di, %i.dm                 ; 5 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cr, i64 16 ; 2 uses
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !36, !alias.scope !557 ; 2 uses
  %i.dr = tail call float @llvm.fmuladd.f32(float %i.dq, float %i.dq, float %i.co)
  %i.ds = tail call float @sqrtf(float noundef %i.dr) #14, !noalias !560
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cr, i64 20
  %i.du = load float, ptr %i.dt, align 4, !tbaa !36, !alias.scope !557 ; 2 uses
  %i.dv = tail call float @llvm.fmuladd.f32(float %i.du, float %i.du, float %i.co)
  %i.dw = tail call float @sqrtf(float noundef %i.dv) #14, !noalias !560
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !36, !alias.scope !557 ; 2 uses
  %i.dz = tail call float @llvm.fmuladd.f32(float %i.dy, float %i.dy, float %i.co)
  %i.ea = tail call float @sqrtf(float noundef %i.dz) #14, !noalias !560
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cr, i64 28
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !36, !alias.scope !557 ; 2 uses
  %i.ed = tail call float @llvm.fmuladd.f32(float %i.ec, float %i.ec, float %i.co)
  %i.ee = tail call float @sqrtf(float noundef %i.ed) #14, !noalias !560
  %i.ef = load <4 x float>, ptr %i.do, align 4, !tbaa !36, !alias.scope !559
  %i.eg = insertelement <4 x float> poison, float %i.ds, i64 0
  %i.eh = insertelement <4 x float> %i.eg, float %i.dw, i64 1
  %i.ei = insertelement <4 x float> %i.eh, float %i.ea, i64 2
  %i.ej = insertelement <4 x float> %i.ei, float %i.ee, i64 3
  %i.ek = fmul <4 x float> %i.ef, %i.ej           ; 7 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.em = getelementptr inbounds nuw i8, ptr %i.cr, i64 32 ; 2 uses
  %i.en = load float, ptr %i.em, align 4, !tbaa !36, !alias.scope !557 ; 2 uses
  %i.eo = tail call float @llvm.fmuladd.f32(float %i.en, float %i.en, float %i.co)
  %i.ep = tail call float @sqrtf(float noundef %i.eo) #14, !noalias !560
  %i.eq = getelementptr inbounds nuw i8, ptr %i.cr, i64 36
  %i.er = load float, ptr %i.eq, align 4, !tbaa !36, !alias.scope !557 ; 2 uses
  %i.es = tail call float @llvm.fmuladd.f32(float %i.er, float %i.er, float %i.co)
  %i.et = tail call float @sqrtf(float noundef %i.es) #14, !noalias !560
  %i.eu = load <2 x float>, ptr %i.el, align 4, !tbaa !36, !alias.scope !559
  %i.ev = insertelement <2 x float> poison, float %i.ep, i64 0
  %i.ew = insertelement <2 x float> %i.ev, float %i.et, i64 1
  %i.ex = fmul <2 x float> %i.eu, %i.ew           ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !36, !alias.scope !559
  %i.fa = getelementptr inbounds nuw i8, ptr %i.cr, i64 40 ; 2 uses
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !36, !alias.scope !557 ; 2 uses
  %i.fc = tail call float @llvm.fmuladd.f32(float %i.fb, float %i.fb, float %i.co)
  %i.fd = tail call float @sqrtf(float noundef %i.fc) #14, !noalias !560
  %i.fe = fmul float %i.ez, %i.fd                 ; 5 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.cs, i64 44
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !36, !alias.scope !559
  %i.fh = getelementptr inbounds nuw i8, ptr %i.cr, i64 44 ; 2 uses
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !36, !alias.scope !557 ; 2 uses
  %i.fj = tail call float @llvm.fmuladd.f32(float %i.fi, float %i.fi, float %i.co)
  %i.fk = tail call float @sqrtf(float noundef %i.fj) #14, !noalias !560
  %i.fl = fmul float %i.fg, %i.fk                 ; 5 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.cs, i64 48
  %i.fn = getelementptr inbounds nuw i8, ptr %i.cr, i64 48 ; 2 uses
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !36, !alias.scope !557 ; 2 uses
  %i.fp = tail call float @llvm.fmuladd.f32(float %i.fo, float %i.fo, float %i.co)
  %i.fq = tail call float @sqrtf(float noundef %i.fp) #14, !noalias !560
  %i.fr = getelementptr inbounds nuw i8, ptr %i.cr, i64 52 ; 2 uses
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !36, !alias.scope !557 ; 2 uses
  %i.ft = tail call float @llvm.fmuladd.f32(float %i.fs, float %i.fs, float %i.co)
  %i.fu = tail call float @sqrtf(float noundef %i.ft) #14, !noalias !560
  %i.fv = getelementptr inbounds nuw i8, ptr %i.cr, i64 56 ; 2 uses
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !36, !alias.scope !557 ; 2 uses
  %i.fx = tail call float @llvm.fmuladd.f32(float %i.fw, float %i.fw, float %i.co)
  %i.fy = tail call float @sqrtf(float noundef %i.fx) #14, !noalias !560
  %i.fz = getelementptr inbounds nuw i8, ptr %i.cr, i64 60
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !36, !alias.scope !557 ; 5 uses
  %i.gb = tail call float @llvm.fmuladd.f32(float %i.ga, float %i.ga, float %i.co)
  %i.gc = tail call float @sqrtf(float noundef %i.gb) #14, !noalias !560
  %i.gd = load <4 x float>, ptr %i.fm, align 4, !tbaa !36, !alias.scope !559
  %i.ge = insertelement <4 x float> poison, float %i.fq, i64 0
end_hunk_2
begin_hunk_3_@quantize_iq2_xs:bb.a
  %i.acj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ach, <2 x float> %i.aci, <2 x float> %i.ace)
  %i.ack = extractelement <12 x float> %i.abj, i64 6
  %i.acl = fmul float %i.fe, %i.ack
  %i.acm = insertelement <2 x float> %i.pa, float %i.acl, i64 1
  %i.acn = shufflevector <12 x float> %i.abj, <12 x float> poison, <2 x i32> <i32 6, i32 6>
  %i.aco = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.acm, <2 x float> %i.acn, <2 x float> %i.acj)
  %i.acp = extractelement <12 x float> %i.abj, i64 7
  %i.acq = fmul float %i.fl, %i.acp
  %i.acr = insertelement <2 x float> %i.oz, float %i.acq, i64 1
  %i.acs = shufflevector <12 x float> %i.abj, <12 x float> poison, <2 x i32> <i32 7, i32 7>
  %i.act = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.acr, <2 x float> %i.acs, <2 x float> %i.aco)
  %i.acu = shufflevector <12 x float> %i.abj, <12 x float> poison, <2 x i32> <i32 8, i32 8>
  %i.acv = shufflevector <12 x float> %i.abj, <12 x float> poison, <2 x i32> <i32 9, i32 9>
  %i.acw = shufflevector <12 x float> %i.abj, <12 x float> poison, <2 x i32> <i32 10, i32 10>
  %i.acx = shufflevector <12 x float> %i.abj, <12 x float> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %i.acy = fmul <4 x float> %i.gi, %i.acx         ; 4 uses
  %i.acz = shufflevector <4 x float> %i.oy, <4 x float> %i.acy, <2 x i32> <i32 0, i32 4>
  %i.ada = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.acz, <2 x float> %i.acu, <2 x float> %i.act)
  %i.adb = shufflevector <4 x float> %i.ox, <4 x float> %i.acy, <2 x i32> <i32 0, i32 5>
  %i.adc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.adb, <2 x float> %i.acv, <2 x float> %i.ada)
  %i.add = shufflevector <4 x float> %i.acy, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.ade = insertelement <2 x float> %i.add, float %i.ov, i64 0
  %i.adf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ade, <2 x float> %i.acw, <2 x float> %i.adc)
  %i.adg = shufflevector <4 x float> %i.acy, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.adh = insertelement <2 x float> %i.adg, float %i.ow, i64 0
  %i.adi = shufflevector <12 x float> %i.abj, <12 x float> poison, <2 x i32> <i32 11, i32 11>
  %i.adj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.adh, <2 x float> %i.adi, <2 x float> %i.adf) ; 2 uses
  %i.adk = extractelement <2 x float> %i.adj, i64 1 ; 2 uses
  %i.adl = fcmp ogt float %i.adk, 0.000000e+00
  %i.adm = extractelement <2 x float> %i.adj, i64 0
  %i.adn = fdiv float %i.adm, %i.adk
  %.2.i.us = select i1 %i.adl, float %i.adn, float %.1312.i.us
  br label %.loopexit357.i.us

.loopexit357.i.us:                                ; preds = %.preheader358.preheader.i.us, %.preheader359.i.us
  %.3.i.us = phi float [ %.2.i.us, %.preheader358.preheader.i.us ], [ %.1312.i.us, %.preheader359.i.us ] ; 3 uses
  %i.ado = fcmp olt float %.3.i.us, 0.000000e+00  ; 3 uses
  %i.adp = fneg float %.3.i.us
  %i.adq = sext i1 %i.ado to i8
  %.sroa.6.0 = xor i8 %.2325.i.us.1, %i.adq
  %.4.i.us = select i1 %i.ado, float %i.adp, float %.3.i.us ; 4 uses
  %i.adr = load <8 x i8>, ptr %i.c, align 16, !tbaa !34, !noalias !560 ; 2 uses
  %i.ads = sext <8 x i8> %i.adr to <8 x i16>
  %i.adt = zext <8 x i8> %i.adr to <8 x i16>
  %i.adu = shufflevector <8 x i16> %i.ads, <8 x i16> %i.adt, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.adv = shl <8 x i16> %i.adu, <i16 0, i16 2, i16 4, i16 6, i16 8, i16 10, i16 12, i16 14>
  %i.adw = tail call i16 @llvm.vector.reduce.or.v8i16(<8 x i16> %i.adv) ; 2 uses
  %i.adx = zext i16 %i.adw to i64
  %i.ady = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.adx
  %i.adz = load i32, ptr %i.ady, align 4, !tbaa !47, !noalias !560 ; 2 uses
  %i.aea = icmp slt i32 %i.adz, 0
  br i1 %i.aea, label %.split65.us, label %.preheader352.1.i.us

.preheader352.1.i.us:                             ; preds = %.loopexit357.i.us
  %i.aeb = sext i1 %i.ado to i8
  %.sroa.0.0 = xor i8 %.2325.i.us, %i.aeb
  %i.aec = zext i8 %.sroa.0.0 to i32
  %i.aed = shl nuw nsw i32 %i.aec, 9
  %i.aee = or i32 %i.aed, %i.adz
  %i.aef = trunc i32 %i.aee to i16
  %.idx.us = shl nuw nsw i64 %indvars.iv482.i.us, 2
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.us ; 2 uses
  store i16 %i.aef, ptr %i.aeg, align 4, !tbaa !57, !noalias !560
  %i.aeh = load <8 x i8>, ptr %.0290401.lcssa.wide.i.sroa.gep30, align 8, !tbaa !34, !noalias !560 ; 2 uses
  %i.aei = sext <8 x i8> %i.aeh to <8 x i16>
  %i.aej = zext <8 x i8> %i.aeh to <8 x i16>
  %i.aek = shufflevector <8 x i16> %i.aei, <8 x i16> %i.aej, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.ael = shl <8 x i16> %i.aek, <i16 0, i16 2, i16 4, i16 6, i16 8, i16 10, i16 12, i16 14>
  %i.aem = tail call i16 @llvm.vector.reduce.or.v8i16(<8 x i16> %i.ael) ; 2 uses
  %i.aen = zext i16 %i.aem to i64
  %i.aeo = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.aen
  %i.aep = load i32, ptr %i.aeo, align 4, !tbaa !47, !noalias !560 ; 2 uses
  %i.aeq = icmp slt i32 %i.aep, 0
  br i1 %i.aeq, label %.split65.us, label %bb.s

bb.s:                                             ; preds = %.preheader352.1.i.us
  %i.aer = zext i8 %.sroa.6.0 to i32
  %i.aes = shl nuw nsw i32 %i.aer, 9
  %i.aet = or i32 %i.aes, %i.aep
  %i.aeu = trunc i32 %i.aet to i16
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aeg, i64 2
  store i16 %i.aeu, ptr %i.aev, align 2, !tbaa !57, !noalias !560
  %i.aew = fcmp ult float %.4.i.us, 0.000000e+00
  br i1 %i.aew, label %.split68.us, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aex = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv482.i.us
  store float %.4.i.us, ptr %i.aex, align 4, !tbaa !36, !noalias !560
  %i.aey = fcmp ogt float %.0334402.i.us, %.4.i.us
  %i.aez = select i1 %i.aey, float %.0334402.i.us, float %.4.i.us
  br label %bb.v

bb.u:                                             ; preds = %bb.k
  %i.afa = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv482.i.us
  store float 0.000000e+00, ptr %i.afa, align 4, !tbaa !36, !noalias !560
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.1335.i.us = phi float [ %.0334402.i.us, %bb.u ], [ %i.aez, %bb.t ] ; 3 uses
  %indvars.iv.next483.i.us = add nuw nsw i64 %indvars.iv482.i.us, 1 ; 2 uses
  %exitcond485.not.i.us = icmp eq i64 %indvars.iv.next483.i.us, 16
  br i1 %exitcond485.not.i.us, label %bb.w, label %.preheader361.preheader.i.us, !llvm.loop !553

bb.w:                                             ; preds = %bb.v
  %i.afb = fcmp une float %.1335.i.us, 0.000000e+00
  br i1 %i.afb, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.afc = getelementptr inbounds nuw i8, ptr %i.bv, i64 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(64) %i.afc, i8 0, i64 64, i1 false), !alias.scope !558
  br label %bb.ae

bb.y:                                             ; preds = %bb.w
  %i.afd = fdiv float %.1335.i.us, 3.100000e+01   ; 3 uses
  %i.afe = tail call float @llvm.fabs.f32(float %i.afd)
  %i.aff = fmul float %i.afe, f0x77800000
  %i.afg = fmul float %i.aff, f0x08800000
  %i.afh = bitcast float %i.afd to i32            ; 2 uses
  %i.afi = shl i32 %i.afh, 1                      ; 2 uses
  %i.afj = tail call i32 @llvm.umax.i32(i32 %i.afi, i32 1895825408)
  %spec.store.select.i.i.us = lshr exact i32 %i.afj, 1
  %i.afk = and i32 %spec.store.select.i.i.us, 2139095040
  %i.afl = add nuw i32 %i.afk, 125829120
  %i.afm = bitcast i32 %i.afl to float
  %i.afn = fadd float %i.afg, %i.afm
  %i.afo = bitcast float %i.afn to i32            ; 2 uses
  %i.afp = lshr i32 %i.afo, 13
  %i.afq = and i32 %i.afp, 31744
  %i.afr = and i32 %i.afo, 4095
  %i.afs = add nuw nsw i32 %i.afq, %i.afr
  %i.aft = lshr i32 %i.afh, 16
  %i.afu = and i32 %i.aft, 32768
  %i.afv = icmp ugt i32 %i.afi, -16777216
  %i.afw = select i1 %i.afv, i32 32256, i32 %i.afs
  %i.afx = or i32 %i.afw, %i.afu
  %i.afy = trunc nuw i32 %i.afx to i16
  store i16 %i.afy, ptr %i.bv, align 2, !tbaa !56, !alias.scope !558
  %i.afz = fdiv float 1.000000e+00, %i.afd
  br label %bb.z

bb.z:                                             ; preds = %bb.ac, %bb.y
  %indvars.iv486.i.us = phi i64 [ 0, %bb.y ], [ %indvars.iv.next487.i.us, %bb.ac ] ; 5 uses
  %i.aga = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv486.i.us
  %i.agb = load float, ptr %i.aga, align 4, !tbaa !36, !noalias !560
  %i.agc = tail call float @llvm.fmuladd.f32(float %i.afz, float %i.agb, float -1.000000e+00)
  %i.agd = fmul float %i.agc, 5.000000e-01
  %i.age = fadd float %i.agd, f0x4B400000
  %i.agf = bitcast float %i.age to i32
  %i.agg = and i32 %i.agf, 8388607
  %i.agh = tail call i32 @llvm.usub.sat.i32(i32 %i.agg, i32 4194304)
  %i.agi = tail call i32 @llvm.umin.i32(i32 %i.agh, i32 15) ; 2 uses
  %i.agj = and i64 %indvars.iv486.i.us, 1
  %i.agk = icmp eq i64 %i.agj, 0
  br i1 %i.agk, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.agl = lshr i64 %indvars.iv486.i.us, 1
  %i.agm = and i64 %i.agl, 2147483647
  %i.agn = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.agm ; 2 uses
  %i.ago = load i8, ptr %i.agn, align 1, !tbaa !34, !alias.scope !558
  %.tr.i.us = trunc nuw nsw i32 %i.agi to i8
  %i.agp = shl nuw i8 %.tr.i.us, 4
  %i.agq = or i8 %i.ago, %i.agp
  store i8 %i.agq, ptr %i.agn, align 1, !tbaa !34, !alias.scope !558
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.agr = trunc nuw nsw i32 %i.agi to i8
  %i.ags = lshr exact i64 %indvars.iv486.i.us, 1
  %i.agt = and i64 %i.ags, 2147483647
  %i.agu = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.agt
  store i8 %i.agr, ptr %i.agu, align 1, !tbaa !34, !alias.scope !558
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %indvars.iv.next487.i.us = add nuw nsw i64 %indvars.iv486.i.us, 1 ; 2 uses
  %exitcond489.not.i.us = icmp eq i64 %indvars.iv.next487.i.us, 16
  br i1 %exitcond489.not.i.us, label %bb.ad, label %bb.z, !llvm.loop !554

bb.ad:                                            ; preds = %bb.ac
  %i.agv = getelementptr inbounds nuw i8, ptr %i.bv, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(64) %i.agv, ptr noundef nonnull align 16 dereferenceable(64) %i.f, i64 64, i1 false), !noalias !561
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.x
  %indvars.iv.next491.i.us = add nuw nsw i64 %indvars.iv490.i.us, 1 ; 2 uses
  %exitcond493.not.i.us = icmp eq i64 %indvars.iv.next491.i.us, %i.i
  br i1 %exitcond493.not.i.us, label %quantize_row_iq2_xs_impl.exit.loopexit.us, label %bb.f, !llvm.loop !555

quantize_row_iq2_xs_impl.exit.loopexit.us:        ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14, !noalias !560
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14, !noalias !560
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14, !noalias !560
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14, !noalias !560
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14, !noalias !560
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14, !noalias !560
  %i.agw = getelementptr inbounds [4 x i8], ptr %.01653.us58, i64 %3
  %i.agx = getelementptr inbounds nuw i8, ptr %.01554.us57, i64 %i.ao
  %i.agy = add nuw nsw i64 %.055.us56, 1          ; 2 uses
  %exitcond86.not = icmp eq i64 %i.agy, %2
  br i1 %exitcond86.not, label %.lr.ph.split.split.split.us.split.split.us, label %.lr.ph.split.split.us, !llvm.loop !556

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.agz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @iq2_data, i64 32), align 16, !tbaa !76, !noalias !560
  %i.aha = icmp eq ptr %i.agz, null
  br i1 %i.aha, label %.split.us59.loopexit80, label %.lr.ph.split.split.split.us

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split
  %i.ahb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @iq2_data, i64 24), align 8, !tbaa !73, !noalias !560
  %.not348.i.us73 = icmp eq ptr %i.ahb, null
  br i1 %.not348.i.us73, label %.split61.us.a, label %.lr.ph.split.split.split.us.split

.lr.ph.split.split.split.us.split:                ; preds = %.lr.ph.split.split.split.us
  %i.ahc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @iq2_data, i64 40), align 8, !tbaa !78, !noalias !560
  %.not349.i.us74 = icmp eq ptr %i.ahc, null
  br i1 %.not349.i.us74, label %.split63.us, label %.lr.ph.split.split.split.us.split.split.us

.lr.ph.split.split.split.us.split.split.us:       ; preds = %quantize_row_iq2_xs_impl.exit.loopexit.us, %.lr.ph.split.split.split.us.split, %bb.c
  %5 = mul i64 %2, 74
  %6 = mul i64 %5, %i.i
  ret i64 %6

._crit_edge:                                      ; preds = %.lr.ph
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3480, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.10) #24, !noalias !560
  unreachable

.split.us59.loopexit80:                           ; preds = %.lr.ph.split.split
  tail call void @llvm.experimental.noalias.scope.decl(metadata !557)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !558)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !559)
  br label %.split.us59

.split.us59:                                      ; preds = %.lr.ph.split.split.us, %.split.us59.loopexit80
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3481, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.13) #24, !noalias !560
  unreachable

.split61.us.a:                                    ; preds = %bb.d, %.lr.ph.split.split.split.us
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3482, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.12) #24, !noalias !560
  unreachable

.split63.us:                                      ; preds = %bb.e, %.lr.ph.split.split.split.us.split
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3483, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.14) #24, !noalias !560
  unreachable

.split65.us:                                      ; preds = %.loopexit357.i.us, %.preheader352.1.i.us
  %.0290401.lcssa.wide.i.sroa.phi.us = phi ptr [ %i.c, %.loopexit357.i.us ], [ %.0290401.lcssa.wide.i.sroa.gep30, %.preheader352.1.i.us ] ; 8 uses
  %.lcssa413.lcssa.i.us = phi i16 [ %i.adw, %.loopexit357.i.us ], [ %i.aem, %.preheader352.1.i.us ]
  %i.ahd = zext i16 %.lcssa413.lcssa.i.us to i32
  %i.ahe = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.ahd), !noalias !560 ; 0 uses
  %i.ahf = load i8, ptr %.0290401.lcssa.wide.i.sroa.phi.us, align 1, !tbaa !34, !noalias !560
  %i.ahg = sext i8 %i.ahf to i32
  %i.ahh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.ahg), !noalias !560 ; 0 uses
  %i.ahi = getelementptr inbounds nuw i8, ptr %.0290401.lcssa.wide.i.sroa.phi.us, i64 1
  %i.ahj = load i8, ptr %i.ahi, align 1, !tbaa !34, !noalias !560
  %i.ahk = sext i8 %i.ahj to i32
  %i.ahl = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.ahk), !noalias !560 ; 0 uses
  %i.ahm = getelementptr inbounds nuw i8, ptr %.0290401.lcssa.wide.i.sroa.phi.us, i64 2
  %i.ahn = load i8, ptr %i.ahm, align 1, !tbaa !34, !noalias !560
  %i.aho = sext i8 %i.ahn to i32
  %i.ahp = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.aho), !noalias !560 ; 0 uses
  %i.ahq = getelementptr inbounds nuw i8, ptr %.0290401.lcssa.wide.i.sroa.phi.us, i64 3
  %i.ahr = load i8, ptr %i.ahq, align 1, !tbaa !34, !noalias !560
  %i.ahs = sext i8 %i.ahr to i32
  %i.aht = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.ahs), !noalias !560 ; 0 uses
  %i.ahu = getelementptr inbounds nuw i8, ptr %.0290401.lcssa.wide.i.sroa.phi.us, i64 4
  %i.ahv = load i8, ptr %i.ahu, align 1, !tbaa !34, !noalias !560
  %i.ahw = sext i8 %i.ahv to i32
  %i.ahx = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.ahw), !noalias !560 ; 0 uses
  %i.ahy = getelementptr inbounds nuw i8, ptr %.0290401.lcssa.wide.i.sroa.phi.us, i64 5
  %i.ahz = load i8, ptr %i.ahy, align 1, !tbaa !34, !noalias !560
  %i.aia = sext i8 %i.ahz to i32
  %i.aib = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.aia), !noalias !560 ; 0 uses
  %i.aic = getelementptr inbounds nuw i8, ptr %.0290401.lcssa.wide.i.sroa.phi.us, i64 6
  %i.aid = load i8, ptr %i.aic, align 1, !tbaa !34, !noalias !560
  %i.aie = sext i8 %i.aid to i32
  %i.aif = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.aie), !noalias !560 ; 0 uses
  %i.aig = getelementptr inbounds nuw i8, ptr %.0290401.lcssa.wide.i.sroa.phi.us, i64 7
  %i.aih = load i8, ptr %i.aig, align 1, !tbaa !34, !noalias !560
  %i.aii = sext i8 %i.aih to i32
  %i.aij = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.aii), !noalias !560 ; 0 uses
  %putchar.i = tail call i32 @putchar(i32 10), !noalias !560 ; 0 uses
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3624, ptr noundef nonnull @.str.19) #24, !noalias !560
  unreachable

.split68.us:                                      ; preds = %bb.s
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3628, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.20) #24, !noalias !560
  unreachable
}

; Function Attrs: nounwind uwtable
define void @iq3xs_init_impl(i32 noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 6 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca ptr, align 8                      ; 5 uses
  store i32 %0, ptr %i.a, align 4, !tbaa !47
  switch i32 %0, label %bb.b [
    i32 512, label %iq3_data_index.exit
    i32 256, label %iq3_data_index.exit
  ]

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3693, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.24) #24
  unreachable

iq3_data_index.exit:                              ; preds = %bb.a, %bb.a
  %i.k = icmp ne i32 %0, 256                      ; 3 uses
  %i.l = zext i1 %i.k to i64
  %i.m = getelementptr inbounds nuw [24 x i8], ptr @iq3_data, i64 %i.l ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !82
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %.lr.ph.preheader, label %bb.n

.lr.ph.preheader:                                 ; preds = %iq3_data_index.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i32 4096, ptr %i.b, align 4, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.o = select i1 %i.k, i32 3, i32 2
  store i32 %i.o, ptr %i.c, align 4, !tbaa !47
  %i.p = select i1 %i.k, ptr @iq3xs_init_impl.kgrid_512, ptr @iq3xs_init_impl.kgrid_256 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  %i.q = zext nneg i32 %0 to i64                  ; 5 uses
  %i.r = shl nuw nsw i64 %i.q, 2
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.r) #25 ; 5 uses
  %min.iters.check = icmp ult i32 %0, 8
  br i1 %min.iters.check, label %.lr.ph.preheader83, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.q, 2147483640               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %index
  %wide.load = load <8 x i16>, ptr %i.u, align 16, !tbaa !57 ; 2 uses
  %i.v = trunc <8 x i16> %wide.load to <8 x i8>   ; 2 uses
  %i.w = shl <8 x i8> %i.v, splat (i8 1)
  %i.x = lshr <8 x i8> %i.v, splat (i8 2)
  %i.y = shufflevector <8 x i8> %i.w, <8 x i8> %i.x, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.z = and <16 x i8> %i.y, splat (i8 14)
  %i.aa = or disjoint <16 x i8> %i.z, splat (i8 1)
  %i.ab = shufflevector <8 x i16> %wide.load, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ac = lshr <16 x i16> %i.ab, <i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>
  %i.ad = trunc <16 x i16> %i.ac to <16 x i8>
  %i.ae = and <16 x i8> %i.ad, splat (i8 14)
  %i.af = or disjoint <16 x i8> %i.ae, splat (i8 1)
  %interleaved.vec = shufflevector <16 x i8> %i.aa, <16 x i8> %i.af, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x i8> %interleaved.vec, ptr %i.t, align 1, !tbaa !34
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !562

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.q
  br i1 %cmp.n, label %.lr.ph56.preheader, label %.lr.ph.preheader83

.lr.ph.preheader83:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader83, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader83 ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %indvars.iv
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !57 ; 4 uses
  %.tr = trunc i16 %i.aj to i8
  %i.ak = shl i8 %.tr, 1
  %i.al = trunc i16 %i.aj to i8
  %i.am = lshr i8 %i.al, 2
  %sh.diff = lshr i16 %i.aj, 5
  %tr.sh.diff = trunc i16 %sh.diff to i8
  %sh.diff78 = lshr i16 %i.aj, 8
  %tr.sh.diff79 = trunc nuw i16 %sh.diff78 to i8
  %i.an = insertelement <4 x i8> poison, i8 %i.ak, i64 0
  %i.ao = insertelement <4 x i8> %i.an, i8 %i.am, i64 1
  %i.ap = insertelement <4 x i8> %i.ao, i8 %tr.sh.diff, i64 2
  %i.aq = insertelement <4 x i8> %i.ap, i8 %tr.sh.diff79, i64 3
  %i.ar = and <4 x i8> %i.aq, splat (i8 14)
  %i.as = or disjoint <4 x i8> %i.ar, splat (i8 1)
  store <4 x i8> %i.as, ptr %i.ah, align 1, !tbaa !34
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.q
  br i1 %exitcond.not, label %.lr.ph56.preheader, label %.lr.ph, !llvm.loop !563

.lr.ph56.preheader:                               ; preds = %.lr.ph, %middle.block
  store ptr %i.s, ptr %i.d, align 8, !tbaa !75
  store ptr %i.s, ptr %i.m, align 8, !tbaa !82
  %i.at = tail call noalias dereferenceable_or_null(16384) ptr @malloc(i64 noundef 16384) #25 ; 4 uses
  store ptr %i.at, ptr %i.e, align 8, !tbaa !75
  %i.au = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.at, ptr %i.au, align 8, !tbaa !83
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16384) %i.at, i8 -1, i64 16384, i1 false), !tbaa !47
  br label %.lr.ph56

._crit_edge57:                                    ; preds = %.lr.ph56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  %i.av = tail call noalias dereferenceable_or_null(16384) ptr @malloc(i64 noundef 16384) #25 ; 2 uses
  store ptr %i.av, ptr %i.g, align 8, !tbaa !75
  %.not47 = icmp eq ptr %i.av, null
  br i1 %.not47, label %bb.c, label %bb.d

.lr.ph56:                                         ; preds = %.lr.ph56.preheader, %.lr.ph56
  %indvars.iv68 = phi i64 [ 0, %.lr.ph56.preheader ], [ %indvars.iv.next69, %.lr.ph56 ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv68
  %i.ax = load <4 x i8>, ptr %i.aw, align 4, !tbaa !47
  %i.ay = zext <4 x i8> %i.ax to <4 x i16>
  %i.az = add nsw <4 x i16> %i.ay, splat (i16 -1)
  %i.ba = sdiv <4 x i16> %i.az, splat (i16 2)
  %i.bb = shl nuw <4 x i16> %i.ba, <i16 0, i16 3, i16 6, i16 9>
  %i.bc = tail call i16 @llvm.vector.reduce.or.v4i16(<4 x i16> %i.bb)
  %i.bd = zext i16 %i.bc to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.bd
  %i.bf = trunc nuw nsw i64 %indvars.iv68 to i32
  store i32 %i.bf, ptr %i.be, align 4, !tbaa !47
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1 ; 2 uses
  %exitcond72.not = icmp eq i64 %indvars.iv.next69, %i.q
  br i1 %exitcond72.not, label %._crit_edge57, label %.lr.ph56, !llvm.loop !564

bb.c:                                             ; preds = %._crit_edge57
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3795, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #24
  unreachable

bb.d:                                             ; preds = %._crit_edge57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  store i32 0, ptr %i.h, align 4, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #14
  store i32 0, ptr %i.i, align 4, !tbaa !47
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 8, ptr nonnull @iq3xs_init_impl.omp_outlined, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.e, ptr nonnull %i.g, ptr nonnull %i.i, ptr nonnull %i.d, ptr nonnull %i.c, ptr nonnull %i.h)
  %i.bg = load i32, ptr %i.h, align 4, !tbaa !47
  %i.bh = load i32, ptr %i.i, align 4, !tbaa !47
  %i.bi = add nsw i32 %i.bh, %i.bg
end_hunk_3
begin_hunk_4_@quantize_iq3_s:bb.a
  %i.agx = trunc i32 %i.agv to i8
  %i.agy = getelementptr inbounds nuw i8, ptr %.0407517.i.us, i64 4
  store i8 %i.agx, ptr %i.agy, align 1, !tbaa !34, !alias.scope !635
  %i.agz = lshr i32 %i.agv, 4
  %i.aha = load i8, ptr %i.ack, align 1, !tbaa !34, !alias.scope !635
  %i.ahb = trunc i32 %i.agz to i8
  %i.ahc = and i8 %i.ahb, -16
  %i.ahd = or i8 %i.aha, %i.ahc
  store i8 %i.ahd, ptr %i.ack, align 1, !tbaa !34, !alias.scope !635
  %i.ahe = load i8, ptr %.0363515.lcssa.wide.i.sroa.gep22, align 4, !tbaa !34, !noalias !637
  %i.ahf = sext i8 %i.ahe to i16
  %i.ahg = load i8, ptr %i.cc, align 1, !tbaa !34, !noalias !637
  %i.ahh = sext i8 %i.ahg to i16
  %i.ahi = shl nsw i16 %i.ahh, 3
  %i.ahj = or i16 %i.ahi, %i.ahf
  %i.ahk = load i8, ptr %i.cd, align 2, !tbaa !34, !noalias !637
  %i.ahl = sext i8 %i.ahk to i16
  %i.ahm = shl nsw i16 %i.ahl, 6
  %i.ahn = or i16 %i.ahj, %i.ahm
  %i.aho = load i8, ptr %i.ce, align 1, !tbaa !34, !noalias !637
  %i.ahp = zext i8 %i.aho to i16
  %i.ahq = shl i16 %i.ahp, 9
  %i.ahr = or i16 %i.ahn, %i.ahq                  ; 2 uses
  %i.ahs = zext i16 %i.ahr to i64
  %i.aht = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.ahs
  %i.ahu = load i32, ptr %i.aht, align 4, !tbaa !47, !noalias !637 ; 3 uses
  %i.ahv = icmp slt i32 %i.ahu, 0
  br i1 %i.ahv, label %.split111.us, label %.preheader457.6.i.us

.preheader457.6.i.us:                             ; preds = %.preheader457.5.i.us
  %i.ahw = trunc i32 %i.ahu to i8
  %i.ahx = getelementptr inbounds nuw i8, ptr %.0407517.i.us, i64 5
  store i8 %i.ahw, ptr %i.ahx, align 1, !tbaa !34, !alias.scope !635
  %i.ahy = lshr i32 %i.ahu, 3
  %i.ahz = load i8, ptr %i.ack, align 1, !tbaa !34, !alias.scope !635
  %i.aia = trunc i32 %i.ahy to i8
  %i.aib = and i8 %i.aia, -32
  %i.aic = or i8 %i.ahz, %i.aib
  store i8 %i.aic, ptr %i.ack, align 1, !tbaa !34, !alias.scope !635
  %i.aid = load i8, ptr %.0363515.lcssa.wide.i.sroa.gep23, align 8, !tbaa !34, !noalias !637
  %i.aie = sext i8 %i.aid to i16
  %i.aif = load i8, ptr %i.cf, align 1, !tbaa !34, !noalias !637
  %i.aig = sext i8 %i.aif to i16
  %i.aih = shl nsw i16 %i.aig, 3
  %i.aii = or i16 %i.aih, %i.aie
  %i.aij = load i8, ptr %i.cg, align 2, !tbaa !34, !noalias !637
  %i.aik = sext i8 %i.aij to i16
  %i.ail = shl nsw i16 %i.aik, 6
  %i.aim = or i16 %i.aii, %i.ail
  %i.ain = load i8, ptr %i.ch, align 1, !tbaa !34, !noalias !637
  %i.aio = zext i8 %i.ain to i16
  %i.aip = shl i16 %i.aio, 9
  %i.aiq = or i16 %i.aim, %i.aip                  ; 2 uses
  %i.air = zext i16 %i.aiq to i64
  %i.ais = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.air
  %i.ait = load i32, ptr %i.ais, align 4, !tbaa !47, !noalias !637 ; 3 uses
  %i.aiu = icmp slt i32 %i.ait, 0
  br i1 %i.aiu, label %.split111.us, label %.preheader457.7.i.us

.preheader457.7.i.us:                             ; preds = %.preheader457.6.i.us
  %i.aiv = trunc i32 %i.ait to i8
  %i.aiw = getelementptr inbounds nuw i8, ptr %.0407517.i.us, i64 6
  store i8 %i.aiv, ptr %i.aiw, align 1, !tbaa !34, !alias.scope !635
  %i.aix = lshr i32 %i.ait, 2
  %i.aiy = load i8, ptr %i.ack, align 1, !tbaa !34, !alias.scope !635
  %i.aiz = trunc i32 %i.aix to i8
  %i.aja = and i8 %i.aiz, -64
  %i.ajb = or i8 %i.aiy, %i.aja
  store i8 %i.ajb, ptr %i.ack, align 1, !tbaa !34, !alias.scope !635
  %i.ajc = load i8, ptr %.0363515.lcssa.wide.i.sroa.gep24, align 4, !tbaa !34, !noalias !637
  %i.ajd = sext i8 %i.ajc to i16
  %i.aje = load i8, ptr %i.ci, align 1, !tbaa !34, !noalias !637
  %i.ajf = sext i8 %i.aje to i16
  %i.ajg = shl nsw i16 %i.ajf, 3
  %i.ajh = or i16 %i.ajg, %i.ajd
  %i.aji = load i8, ptr %i.ck, align 2, !tbaa !34, !noalias !637
  %i.ajj = sext i8 %i.aji to i16
  %i.ajk = shl nsw i16 %i.ajj, 6
  %i.ajl = or i16 %i.ajh, %i.ajk
  %i.ajm = load i8, ptr %i.cm, align 1, !tbaa !34, !noalias !637
  %i.ajn = zext i8 %i.ajm to i16
  %i.ajo = shl i16 %i.ajn, 9
  %i.ajp = or i16 %i.ajl, %i.ajo                  ; 2 uses
  %i.ajq = zext i16 %i.ajp to i64
  %i.ajr = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.ajq
  %i.ajs = load i32, ptr %i.ajr, align 4, !tbaa !47, !noalias !637 ; 3 uses
  %i.ajt = icmp slt i32 %i.ajs, 0
  br i1 %i.ajt, label %.split111.us, label %bb.t

bb.t:                                             ; preds = %.preheader457.7.i.us
  %i.aju = trunc i32 %i.ajs to i8
  %i.ajv = getelementptr inbounds nuw i8, ptr %.0407517.i.us, i64 7
  store i8 %i.aju, ptr %i.ajv, align 1, !tbaa !34, !alias.scope !635
  %i.ajw = lshr i32 %i.ajs, 1
  %i.ajx = load i8, ptr %i.ack, align 1, !tbaa !34, !alias.scope !635
  %i.ajy = trunc i32 %i.ajw to i8
  %i.ajz = and i8 %i.ajy, -128
  %i.aka = or i8 %i.ajx, %i.ajz
  store i8 %i.aka, ptr %i.ack, align 1, !tbaa !34, !alias.scope !635
  store i8 %.sroa.0.0, ptr %.0405518.i.us, align 1, !tbaa !34, !alias.scope !635
  %i.akb = getelementptr inbounds nuw i8, ptr %.0405518.i.us, i64 1
  store i8 %.sroa.6.0, ptr %i.akb, align 1, !tbaa !34, !alias.scope !635
  %i.akc = getelementptr inbounds nuw i8, ptr %.0405518.i.us, i64 2
  store i8 %.sroa.10.0, ptr %i.akc, align 1, !tbaa !34, !alias.scope !635
  %i.akd = getelementptr inbounds nuw i8, ptr %.0405518.i.us, i64 3
  store i8 %.sroa.14.0, ptr %i.akd, align 1, !tbaa !34, !alias.scope !635
  %i.ake = fcmp ult float %.4.i.us, 0.000000e+00
  br i1 %i.ake, label %.split115.us, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.akf = getelementptr inbounds nuw i8, ptr %.0407517.i.us, i64 8
  %i.akg = getelementptr inbounds nuw i8, ptr %.0405518.i.us, i64 4
  %i.akh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv619.i.us
  store float %.4.i.us, ptr %i.akh, align 4, !tbaa !36, !noalias !637
  %i.aki = fcmp ogt float %.0403519.i.us, %.4.i.us
  %i.akj = select i1 %i.aki, float %.0403519.i.us, float %.4.i.us
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.i
  %.1408.i.us = phi ptr [ %i.akf, %bb.u ], [ %.0407517.i.us, %bb.i ]
  %.1406.i.us = phi ptr [ %i.akg, %bb.u ], [ %.0405518.i.us, %bb.i ]
  %.1404.i.us = phi float [ %i.akj, %bb.u ], [ %.0403519.i.us, %bb.i ] ; 3 uses
  %indvars.iv.next620.i.us = add nuw nsw i64 %indvars.iv619.i.us, 1 ; 2 uses
  %exitcond622.not.i.us = icmp eq i64 %indvars.iv.next620.i.us, 8
  br i1 %exitcond622.not.i.us, label %bb.w, label %bb.h, !llvm.loop !628

bb.w:                                             ; preds = %bb.v
  %i.akk = fcmp une float %.1404.i.us, 0.000000e+00
  br i1 %i.akk, label %.loopexit470.loopexit.i.us, label %.loopexit470.i.us

.loopexit470.loopexit.i.us:                       ; preds = %bb.w
  %i.akl = fdiv float %.1404.i.us, 3.100000e+01   ; 2 uses
  %i.akm = fmul float %i.akl, 1.033000e+00        ; 2 uses
  %i.akn = tail call float @llvm.fabs.f32(float %i.akm)
  %i.ako = fmul float %i.akn, f0x77800000
  %i.akp = fmul float %i.ako, f0x08800000
  %i.akq = bitcast float %i.akm to i32            ; 2 uses
  %i.akr = shl i32 %i.akq, 1                      ; 2 uses
  %i.aks = tail call i32 @llvm.umax.i32(i32 %i.akr, i32 1895825408)
  %spec.store.select.i.i.us = lshr exact i32 %i.aks, 1
  %i.akt = and i32 %spec.store.select.i.i.us, 2139095040
  %i.aku = add nuw i32 %i.akt, 125829120
  %i.akv = bitcast i32 %i.aku to float
  %i.akw = fadd float %i.akp, %i.akv
  %i.akx = bitcast float %i.akw to i32            ; 2 uses
  %i.aky = lshr i32 %i.akx, 13
  %i.akz = and i32 %i.aky, 31744
  %i.ala = and i32 %i.akx, 4095
  %i.alb = add nuw nsw i32 %i.akz, %i.ala
  %i.alc = lshr i32 %i.akq, 16
  %i.ald = and i32 %i.alc, 32768
  %i.ale = icmp ugt i32 %i.akr, -16777216
  %i.alf = select i1 %i.ale, i32 32256, i32 %i.alb
  %i.alg = or i32 %i.alf, %i.ald
  %i.alh = trunc nuw i32 %i.alg to i16
  store i16 %i.alh, ptr %i.cv, align 2, !tbaa !61, !alias.scope !635
  %i.ali = fdiv float 1.000000e+00, %i.akl
  %i.alj = getelementptr inbounds nuw i8, ptr %i.cv, i64 106
  %i.alk = load <8 x float>, ptr %i.a, align 16, !tbaa !36, !noalias !637 ; 2 uses
  %i.all = insertelement <4 x float> poison, float %i.ali, i64 0
  %i.alm = shufflevector <4 x float> %i.all, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aln = shufflevector <8 x float> %i.alk, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.alo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.alm, <4 x float> %i.aln, <4 x float> splat (float -1.000000e+00))
  %i.alp = fmul <4 x float> %i.alo, splat (float 5.000000e-01)
  %i.alq = fadd <4 x float> %i.alp, splat (float f0x4B400000)
  %i.alr = bitcast <4 x float> %i.alq to <4 x i32>
  %i.als = and <4 x i32> %i.alr, splat (i32 8388607)
  %i.alt = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %i.als, <4 x i32> splat (i32 4194304))
  %i.alu = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.alt, <4 x i32> splat (i32 15))
  %i.alv = shufflevector <8 x float> %i.alk, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.alw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.alm, <4 x float> %i.alv, <4 x float> splat (float -1.000000e+00))
  %i.alx = fmul <4 x float> %i.alw, splat (float 5.000000e-01)
  %i.aly = fadd <4 x float> %i.alx, splat (float f0x4B400000)
  %i.alz = bitcast <4 x float> %i.aly to <4 x i32>
  %i.ama = and <4 x i32> %i.alz, splat (i32 8388607)
  %i.amb = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %i.ama, <4 x i32> splat (i32 4194304))
  %i.amc = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.amb, <4 x i32> splat (i32 15))
  %i.amd = shl nuw nsw <4 x i32> %i.amc, splat (i32 4)
  %i.ame = or disjoint <4 x i32> %i.amd, %i.alu
  %i.amf = trunc nuw <4 x i32> %i.ame to <4 x i8>
  store <4 x i8> %i.amf, ptr %i.alj, align 2, !tbaa !34, !alias.scope !635
  br label %.loopexit470.i.us

.loopexit470.i.us:                                ; preds = %.loopexit470.loopexit.i.us, %bb.w
  %indvars.iv.next627.i.us = add nuw nsw i64 %indvars.iv626.i.us, 1 ; 2 uses
  %exitcond629.not.i.us = icmp eq i64 %indvars.iv.next627.i.us, %wide.trip.count.i
  br i1 %exitcond629.not.i.us, label %quantize_row_iq3_s_impl.exit.loopexit.us, label %.lr.ph.i.us, !llvm.loop !629

quantize_row_iq3_s_impl.exit.loopexit.us:         ; preds = %.loopexit470.i.us
  %i.amg = getelementptr inbounds [4 x i8], ptr %.01680.us, i64 %3
  %i.amh = getelementptr inbounds nuw i8, ptr %.01581.us, i64 %i.cr
  %i.ami = add nuw nsw i64 %.082.us, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.ami, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !630

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.amj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @iq3_data, i64 24), align 8, !tbaa !82, !noalias !637
  %i.amk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @iq3_data, i64 40), align 8, !tbaa !84, !noalias !637
  %.not.i = icmp eq ptr %i.amj, null
  %.not425.i = icmp eq ptr %i.amk, null
  br i1 %.not.i, label %.split.us, label %.lr.ph.split.split

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.aml = load ptr, ptr getelementptr inbounds nuw (i8, ptr @iq3_data, i64 32), align 16, !tbaa !83, !noalias !637
  %.not424.i = icmp eq ptr %i.aml, null
  br i1 %.not424.i, label %.split84.us, label %.lr.ph.split.split.split

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split
  br i1 %.not425.i, label %.split86.us, label %._crit_edge

._crit_edge:                                      ; preds = %quantize_row_iq3_s_impl.exit.loopexit.us, %.lr.ph.split.split.split, %bb.c
  %i.amm = mul i64 %2, 110
  %i.amn = mul i64 %i.amm, %i.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i64 %i.amn

.split.us:                                        ; preds = %.lr.ph.split.us, %.lr.ph.split
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 4188, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.25) #24, !noalias !637
  unreachable

.split84.us:                                      ; preds = %bb.d, %.lr.ph.split.split
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 4189, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.26) #24, !noalias !637
  unreachable

.split86.us:                                      ; preds = %bb.e, %.lr.ph.split.split.split
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 4190, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.27) #24, !noalias !637
  unreachable

.split88.us:                                      ; preds = %bb.j
  store <16 x i8> %i.ua, ptr %i.bx, align 1
  store i8 %i.tz, ptr %i.ck, align 1
  store i8 %i.ty, ptr %i.cm, align 1
  %i.amo = extractelement <8 x i8> %i.ud, i64 5
  store i8 %i.amo, ptr %i.bm, align 1
  %i.amp = extractelement <8 x i8> %i.ud, i64 6
  store i8 %i.amp, ptr %i.bn, align 2
  %i.amq = extractelement <8 x i8> %i.ud, i64 7
  store i8 %i.amq, ptr %i.bo, align 1
  %i.amr = extractelement <4 x i8> %i.ue, i64 0
  store i8 %i.amr, ptr %.0363515.lcssa.wide.i.sroa.gep19, align 8
  %i.ams = extractelement <4 x i8> %i.ue, i64 1
  store i8 %i.ams, ptr %i.bq, align 1
  %i.amt = extractelement <4 x i8> %i.ue, i64 2
  store i8 %i.amt, ptr %i.br, align 2
  %i.amu = extractelement <4 x i8> %i.ue, i64 3
  store i8 %i.amu, ptr %i.bs, align 1
  store i8 %i.uc, ptr %.0363515.lcssa.wide.i.sroa.gep20, align 4
  store i8 %i.ub, ptr %i.bv, align 1
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3917, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.21) #24, !noalias !645
  unreachable

.split97.us:                                      ; preds = %bb.k
  store <16 x i8> %i.ua, ptr %i.bx, align 1
  store i8 %i.tz, ptr %i.ck, align 1
  store i8 %i.ty, ptr %i.cm, align 1
  %i.amv = extractelement <8 x i8> %i.ud, i64 5
  store i8 %i.amv, ptr %i.bm, align 1
  %i.amw = extractelement <8 x i8> %i.ud, i64 6
  store i8 %i.amw, ptr %i.bn, align 2
  %i.amx = extractelement <8 x i8> %i.ud, i64 7
  store i8 %i.amx, ptr %i.bo, align 1
  %i.amy = extractelement <4 x i8> %i.ue, i64 0
  store i8 %i.amy, ptr %.0363515.lcssa.wide.i.sroa.gep19, align 8
  %i.amz = extractelement <4 x i8> %i.ue, i64 1
  store i8 %i.amz, ptr %i.bq, align 1
  %i.ana = extractelement <4 x i8> %i.ue, i64 2
  store i8 %i.ana, ptr %i.br, align 2
  %i.anb = extractelement <4 x i8> %i.ue, i64 3
  store i8 %i.anb, ptr %i.bs, align 1
  store i8 %i.uc, ptr %.0363515.lcssa.wide.i.sroa.gep20, align 4
  store i8 %i.ub, ptr %i.bv, align 1
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3932, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.22) #24, !noalias !645
  unreachable

.split107.us:                                     ; preds = %bb.p
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3917, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.21) #24, !noalias !646
  unreachable

.split109.us:                                     ; preds = %bb.q
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3932, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.22) #24, !noalias !646
  unreachable

.split111.us:                                     ; preds = %.loopexit462.i.us, %.preheader457.1.i.us, %.preheader457.2.i.us, %.preheader457.3.i.us, %.preheader457.4.i.us, %.preheader457.5.i.us, %.preheader457.6.i.us, %.preheader457.7.i.us
  %.0363515.lcssa.wide.i.sroa.phi.us = phi ptr [ %i.d, %.loopexit462.i.us ], [ %.0363515.lcssa.wide.i.sroa.gep18, %.preheader457.1.i.us ], [ %.0363515.lcssa.wide.i.sroa.gep19, %.preheader457.2.i.us ], [ %.0363515.lcssa.wide.i.sroa.gep20, %.preheader457.3.i.us ], [ %.0363515.lcssa.wide.i.sroa.gep21, %.preheader457.4.i.us ], [ %.0363515.lcssa.wide.i.sroa.gep22, %.preheader457.5.i.us ], [ %.0363515.lcssa.wide.i.sroa.gep23, %.preheader457.6.i.us ], [ %.0363515.lcssa.wide.i.sroa.gep24, %.preheader457.7.i.us ] ; 4 uses
  %.lcssa531.lcssa.i.us = phi i16 [ %i.acy, %.loopexit462.i.us ], [ %i.adv, %.preheader457.1.i.us ], [ %i.aeu, %.preheader457.2.i.us ], [ %i.aft, %.preheader457.3.i.us ], [ %i.ags, %.preheader457.4.i.us ], [ %i.ahr, %.preheader457.5.i.us ], [ %i.aiq, %.preheader457.6.i.us ], [ %i.ajp, %.preheader457.7.i.us ]
  %i.anc = zext i16 %.lcssa531.lcssa.i.us to i32
  %i.and = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.anc), !noalias !637 ; 0 uses
  %i.ane = load i8, ptr %.0363515.lcssa.wide.i.sroa.phi.us, align 1, !tbaa !34, !noalias !637
  %i.anf = sext i8 %i.ane to i32
  %i.ang = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.anf), !noalias !637 ; 0 uses
  %i.anh = getelementptr inbounds nuw i8, ptr %.0363515.lcssa.wide.i.sroa.phi.us, i64 1
  %i.ani = load i8, ptr %i.anh, align 1, !tbaa !34, !noalias !637
  %i.anj = sext i8 %i.ani to i32
  %i.ank = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.anj), !noalias !637 ; 0 uses
  %i.anl = getelementptr inbounds nuw i8, ptr %.0363515.lcssa.wide.i.sroa.phi.us, i64 2
  %i.anm = load i8, ptr %i.anl, align 1, !tbaa !34, !noalias !637
  %i.ann = sext i8 %i.anm to i32
  %i.ano = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.ann), !noalias !637 ; 0 uses
  %i.anp = getelementptr inbounds nuw i8, ptr %.0363515.lcssa.wide.i.sroa.phi.us, i64 3
  %i.anq = load i8, ptr %i.anp, align 1, !tbaa !34, !noalias !637
  %i.anr = sext i8 %i.anq to i32
  %i.ans = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.anr), !noalias !637 ; 0 uses
  %putchar.i = tail call i32 @putchar(i32 10), !noalias !637 ; 0 uses
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 4321, ptr noundef nonnull @.str.19) #24, !noalias !637
  unreachable

.split115.us:                                     ; preds = %bb.t
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 4329, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.20) #24, !noalias !637
  unreachable
}

; Function Attrs: nounwind uwtable
define void @quantize_row_iq3_s_ref(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef captures(none) %1, i64 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call i64 @quantize_iq3_s(ptr noundef %0, ptr noundef %1, i64 noundef 1, i64 noundef %2, ptr noundef null) ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @quantize_iq1_s(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef captures(none) %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca [8 x float], align 16             ; 6 uses
  %i.b = alloca [32 x float], align 16            ; 14 uses
  %i.c = alloca [32 x i8], align 16               ; 36 uses
  %i.d = alloca [33 x float], align 16            ; 8 uses
  %i.e = alloca [33 x float], align 16            ; 8 uses
  %i.f = alloca [64 x float], align 16            ; 67 uses
  %i.g = alloca [4 x i16], align 2                ; 7 uses
  %i.h = alloca [8 x i8], align 8                 ; 6 uses
  %i.i = and i64 %3, 255
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 4673, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.8) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  %i.k = ashr exact i64 %3, 8                     ; 4 uses
  %i.l = icmp sgt i64 %2, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %.not.i = icmp eq ptr %4, null
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 18 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 60
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 68
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 76
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 84
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 92
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 100
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 108
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 116
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 124
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 132
  %i.bc = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  %i.bd = getelementptr inbounds nuw i8, ptr %i.f, i64 140
  %i.be = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 148
  %i.bg = getelementptr inbounds nuw i8, ptr %i.f, i64 152
  %i.bh = getelementptr inbounds nuw i8, ptr %i.f, i64 156
  %i.bi = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  %i.bj = getelementptr inbounds nuw i8, ptr %i.f, i64 164
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 168
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 172
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 176
  %i.bn = getelementptr inbounds nuw i8, ptr %i.f, i64 180
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 184
  %i.bp = getelementptr inbounds nuw i8, ptr %i.f, i64 188
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 192
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 196
  %i.bs = getelementptr inbounds nuw i8, ptr %i.f, i64 200
  %i.bt = getelementptr inbounds nuw i8, ptr %i.f, i64 204
  %i.bu = getelementptr inbounds nuw i8, ptr %i.f, i64 208
  %i.bv = getelementptr inbounds nuw i8, ptr %i.f, i64 212
  %i.bw = getelementptr inbounds nuw i8, ptr %i.f, i64 216
  %i.bx = getelementptr inbounds nuw i8, ptr %i.f, i64 220
  %i.by = getelementptr inbounds nuw i8, ptr %i.f, i64 224
  %i.bz = getelementptr inbounds nuw i8, ptr %i.f, i64 228
  %i.ca = getelementptr inbounds nuw i8, ptr %i.f, i64 232
  %i.cb = getelementptr inbounds nuw i8, ptr %i.f, i64 236
  %i.cc = getelementptr inbounds nuw i8, ptr %i.f, i64 240
  %i.cd = getelementptr inbounds nuw i8, ptr %i.f, i64 244
  %i.ce = getelementptr inbounds nuw i8, ptr %i.f, i64 248
  %i.cf = getelementptr inbounds nuw i8, ptr %i.f, i64 252
  %i.cg = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ci = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  %i.ck = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.cl = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.c, i64 17 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.co = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.c, i64 25 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.cr = getelementptr inbounds nuw i8, ptr %i.c, i64 29 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.c, i64 30 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.c, i64 31 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.cv = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.cw = getelementptr inbounds nuw i8, ptr %i.g, i64 6 ; 2 uses
  %i.cx = mul nsw i64 %i.k, 50
  br i1 %.not.i, label %5, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.cy = icmp sgt i64 %i.k, 0
  br i1 %i.cy, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %quantize_row_iq1_s_impl.exit.loopexit.us
  %.022.us23 = phi i64 [ %i.aeb, %quantize_row_iq1_s_impl.exit.loopexit.us ], [ 0, %.lr.ph.split ]
  %.01521.us24 = phi ptr [ %i.aea, %quantize_row_iq1_s_impl.exit.loopexit.us ], [ %1, %.lr.ph.split ] ; 2 uses
  %.01620.us25 = phi ptr [ %i.adz, %quantize_row_iq1_s_impl.exit.loopexit.us ], [ %0, %.lr.ph.split ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !665)
  call void @llvm.experimental.noalias.scope.decl(metadata !666)
  call void @llvm.experimental.noalias.scope.decl(metadata !667)
  %i.cz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @iq2_data, i64 48), align 16, !tbaa !73, !noalias !668 ; 6 uses
  %i.da = load ptr, ptr getelementptr inbounds nuw (i8, ptr @iq2_data, i64 56), align 8, !tbaa !76, !noalias !668 ; 5 uses
  %i.db = load ptr, ptr getelementptr inbounds nuw (i8, ptr @iq2_data, i64 64), align 16, !tbaa !78, !noalias !668 ; 5 uses
  %.not370.i.us = icmp eq ptr %i.cz, null
  br i1 %.not370.i.us, label %.split.us26, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.split.us
  %.not371.i.us = icmp eq ptr %i.da, null
  br i1 %.not371.i.us, label %.split28.us.a, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not372.i.us = icmp eq ptr %i.db, null
  br i1 %.not372.i.us, label %.split30.us, label %.lr.ph424.i.us

.lr.ph424.i.us:                                   ; preds = %bb.e, %.loopexit.i.us
  %indvars.iv497.i.us = phi i64 [ %indvars.iv.next498.i.us, %.loopexit.i.us ], [ 0, %bb.e ] ; 3 uses
  %i.dc = getelementptr inbounds nuw [50 x i8], ptr %.01521.us24, i64 %indvars.iv497.i.us ; 4 uses
  %i.dd = shl nuw nsw i64 %indvars.iv497.i.us, 8  ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %.01620.us25, i64 %i.dd ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(50) %i.dc, i8 0, i64 50, i1 false), !alias.scope !666
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph424.i.us
  %indvars.iv.i.us = phi i64 [ 0, %.lr.ph424.i.us ], [ %indvars.iv.next.i.us.3, %bb.f ] ; 5 uses
  %.0354382.i.us = phi float [ 0.000000e+00, %.lr.ph424.i.us ], [ %i.dt, %bb.f ]
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.i.us
  %i.dg = load float, ptr %i.df, align 4, !tbaa !36, !alias.scope !665 ; 2 uses
  %i.dh = call float @llvm.fmuladd.f32(float %i.dg, float %i.dg, float %.0354382.i.us)
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.i.us
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !36, !alias.scope !665 ; 2 uses
  %i.dl = call float @llvm.fmuladd.f32(float %i.dk, float %i.dk, float %i.dh)
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.i.us
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load float, ptr %i.dn, align 4, !tbaa !36, !alias.scope !665 ; 2 uses
  %i.dp = call float @llvm.fmuladd.f32(float %i.do, float %i.do, float %i.dl)
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.i.us
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !36, !alias.scope !665 ; 2 uses
  %i.dt = call float @llvm.fmuladd.f32(float %i.ds, float %i.ds, float %i.dp) ; 2 uses
  %indvars.iv.next.i.us.3 = add nuw nsw i64 %indvars.iv.i.us, 4 ; 2 uses
  %exitcond.not.i.us.3 = icmp eq i64 %indvars.iv.next.i.us.3, 256
  br i1 %exitcond.not.i.us.3, label %bb.g, label %bb.f, !llvm.loop !651

bb.g:                                             ; preds = %bb.f
  %i.du = getelementptr inbounds nuw i8, ptr %i.dc, i64 2
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dc, i64 34 ; 3 uses
  %i.dw = fmul float %i.dt, 2.000000e+00
  %i.dx = fmul float %i.dw, 3.906250e-03          ; 32 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.dd
  br label %bb.h

bb.h:                                             ; preds = %bb.ab, %bb.g
  %indvars.iv489.i.us = phi i64 [ 0, %bb.g ], [ %indvars.iv.next490.i.us, %bb.ab ] ; 10 uses
  %.0355419.i.us = phi float [ 0.000000e+00, %bb.g ], [ %.2357.i.us, %bb.ab ] ; 4 uses
  %i.dz = shl nuw nsw i64 %indvars.iv489.i.us, 5  ; 2 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.dz ; 39 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.dz ; 8 uses
  %i.ec = load float, ptr %i.ea, align 4, !tbaa !36, !alias.scope !665 ; 4 uses
  %i.ed = call float @llvm.fmuladd.f32(float %i.ec, float %i.ec, float %i.dx)
  %i.ee = call float @sqrtf(float noundef %i.ed) #14, !noalias !668
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !36, !alias.scope !665 ; 4 uses
  %i.eh = call float @llvm.fmuladd.f32(float %i.eg, float %i.eg, float %i.dx)
  %i.ei = call float @sqrtf(float noundef %i.eh) #14, !noalias !668
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !36, !alias.scope !665 ; 4 uses
  %i.el = call float @llvm.fmuladd.f32(float %i.ek, float %i.ek, float %i.dx)
  %i.em = call float @sqrtf(float noundef %i.el) #14, !noalias !668
  %i.en = getelementptr inbounds nuw i8, ptr %i.ea, i64 12
  %i.eo = load float, ptr %i.en, align 4, !tbaa !36, !alias.scope !665 ; 4 uses
  %i.ep = call float @llvm.fmuladd.f32(float %i.eo, float %i.eo, float %i.dx)
  %i.eq = call float @sqrtf(float noundef %i.ep) #14, !noalias !668
  %i.er = load <4 x float>, ptr %i.eb, align 4, !tbaa !36, !alias.scope !667
  %i.es = insertelement <4 x float> poison, float %i.ee, i64 0
  %i.et = insertelement <4 x float> %i.es, float %i.ei, i64 1
  %i.eu = insertelement <4 x float> %i.et, float %i.em, i64 2
  %i.ev = insertelement <4 x float> %i.eu, float %i.eq, i64 3
  %i.ew = fmul <4 x float> %i.er, %i.ev
  store <4 x float> %i.ew, ptr %i.b, align 16, !tbaa !36, !noalias !668
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !36, !alias.scope !665 ; 4 uses
  %i.fa = call float @llvm.fmuladd.f32(float %i.ez, float %i.ez, float %i.dx)
  %i.fb = call float @sqrtf(float noundef %i.fa) #14, !noalias !668
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ea, i64 20
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !36, !alias.scope !665 ; 4 uses
  %i.fe = call float @llvm.fmuladd.f32(float %i.fd, float %i.fd, float %i.dx)
  %i.ff = call float @sqrtf(float noundef %i.fe) #14, !noalias !668
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !36, !alias.scope !665 ; 4 uses
  %i.fi = call float @llvm.fmuladd.f32(float %i.fh, float %i.fh, float %i.dx)
  %i.fj = call float @sqrtf(float noundef %i.fi) #14, !noalias !668
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ea, i64 28
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !36, !alias.scope !665 ; 4 uses
  %i.fm = call float @llvm.fmuladd.f32(float %i.fl, float %i.fl, float %i.dx)
  %i.fn = call float @sqrtf(float noundef %i.fm) #14, !noalias !668
  %i.fo = load <4 x float>, ptr %i.ex, align 4, !tbaa !36, !alias.scope !667
  %i.fp = insertelement <4 x float> poison, float %i.fb, i64 0
  %i.fq = insertelement <4 x float> %i.fp, float %i.ff, i64 1
  %i.fr = insertelement <4 x float> %i.fq, float %i.fj, i64 2
  %i.fs = insertelement <4 x float> %i.fr, float %i.fn, i64 3
  %i.ft = fmul <4 x float> %i.fo, %i.fs
  store <4 x float> %i.ft, ptr %i.p, align 16, !tbaa !36, !noalias !668
  %i.fu = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ea, i64 32 ; 2 uses
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !36, !alias.scope !665 ; 4 uses
  %i.fx = call float @llvm.fmuladd.f32(float %i.fw, float %i.fw, float %i.dx)
  %i.fy = call float @sqrtf(float noundef %i.fx) #14, !noalias !668
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ea, i64 36
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !36, !alias.scope !665 ; 4 uses
  %i.gb = call float @llvm.fmuladd.f32(float %i.ga, float %i.ga, float %i.dx)
  %i.gc = call float @sqrtf(float noundef %i.gb) #14, !noalias !668
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ea, i64 40
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !36, !alias.scope !665 ; 4 uses
  %i.gf = call float @llvm.fmuladd.f32(float %i.ge, float %i.ge, float %i.dx)
  %i.gg = call float @sqrtf(float noundef %i.gf) #14, !noalias !668
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ea, i64 44
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !36, !alias.scope !665 ; 4 uses
  %i.gj = call float @llvm.fmuladd.f32(float %i.gi, float %i.gi, float %i.dx)
  %i.gk = call float @sqrtf(float noundef %i.gj) #14, !noalias !668
  %i.gl = load <4 x float>, ptr %i.fu, align 4, !tbaa !36, !alias.scope !667
  %i.gm = insertelement <4 x float> poison, float %i.fy, i64 0
  %i.gn = insertelement <4 x float> %i.gm, float %i.gc, i64 1
  %i.go = insertelement <4 x float> %i.gn, float %i.gg, i64 2
  %i.gp = insertelement <4 x float> %i.go, float %i.gk, i64 3
  %i.gq = fmul <4 x float> %i.gl, %i.gp
  store <4 x float> %i.gq, ptr %i.q, align 16, !tbaa !36, !noalias !668
  %i.gr = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ea, i64 48
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !36, !alias.scope !665 ; 4 uses
  %i.gu = call float @llvm.fmuladd.f32(float %i.gt, float %i.gt, float %i.dx)
  %i.gv = call float @sqrtf(float noundef %i.gu) #14, !noalias !668
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ea, i64 52
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !36, !alias.scope !665 ; 4 uses
  %i.gy = call float @llvm.fmuladd.f32(float %i.gx, float %i.gx, float %i.dx)
  %i.gz = call float @sqrtf(float noundef %i.gy) #14, !noalias !668
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ea, i64 56
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !36, !alias.scope !665 ; 4 uses
  %i.hc = call float @llvm.fmuladd.f32(float %i.hb, float %i.hb, float %i.dx)
  %i.hd = call float @sqrtf(float noundef %i.hc) #14, !noalias !668
  %i.he = getelementptr inbounds nuw i8, ptr %i.ea, i64 60
  %i.hf = load float, ptr %i.he, align 4, !tbaa !36, !alias.scope !665 ; 4 uses
  %i.hg = call float @llvm.fmuladd.f32(float %i.hf, float %i.hf, float %i.dx)
  %i.hh = call float @sqrtf(float noundef %i.hg) #14, !noalias !668
  %i.hi = load <4 x float>, ptr %i.gr, align 4, !tbaa !36, !alias.scope !667
  %i.hj = insertelement <4 x float> poison, float %i.gv, i64 0
  %i.hk = insertelement <4 x float> %i.hj, float %i.gz, i64 1
  %i.hl = insertelement <4 x float> %i.hk, float %i.hd, i64 2
  %i.hm = insertelement <4 x float> %i.hl, float %i.hh, i64 3
  %i.hn = fmul <4 x float> %i.hi, %i.hm
  store <4 x float> %i.hn, ptr %i.r, align 16, !tbaa !36, !noalias !668
  %i.ho = getelementptr inbounds nuw i8, ptr %i.eb, i64 64
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ea, i64 64 ; 2 uses
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !36, !alias.scope !665 ; 4 uses
  %i.hr = call float @llvm.fmuladd.f32(float %i.hq, float %i.hq, float %i.dx)
  %i.hs = call float @sqrtf(float noundef %i.hr) #14, !noalias !668
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ea, i64 68
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !36, !alias.scope !665 ; 4 uses
  %i.hv = call float @llvm.fmuladd.f32(float %i.hu, float %i.hu, float %i.dx)
  %i.hw = call float @sqrtf(float noundef %i.hv) #14, !noalias !668
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ea, i64 72
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !36, !alias.scope !665 ; 4 uses
  %i.hz = call float @llvm.fmuladd.f32(float %i.hy, float %i.hy, float %i.dx)
  %i.ia = call float @sqrtf(float noundef %i.hz) #14, !noalias !668
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ea, i64 76
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !36, !alias.scope !665 ; 4 uses
  %i.id = call float @llvm.fmuladd.f32(float %i.ic, float %i.ic, float %i.dx)
  %i.ie = call float @sqrtf(float noundef %i.id) #14, !noalias !668
  %i.if = load <4 x float>, ptr %i.ho, align 4, !tbaa !36, !alias.scope !667
  %i.ig = insertelement <4 x float> poison, float %i.hs, i64 0
  %i.ih = insertelement <4 x float> %i.ig, float %i.hw, i64 1
  %i.ii = insertelement <4 x float> %i.ih, float %i.ia, i64 2
  %i.ij = insertelement <4 x float> %i.ii, float %i.ie, i64 3
  %i.ik = fmul <4 x float> %i.if, %i.ij
  store <4 x float> %i.ik, ptr %i.s, align 16, !tbaa !36, !noalias !668
  %i.il = getelementptr inbounds nuw i8, ptr %i.eb, i64 80
  %i.im = getelementptr inbounds nuw i8, ptr %i.ea, i64 80
  %i.in = load float, ptr %i.im, align 4, !tbaa !36, !alias.scope !665 ; 4 uses
  %i.io = call float @llvm.fmuladd.f32(float %i.in, float %i.in, float %i.dx)
  %i.ip = call float @sqrtf(float noundef %i.io) #14, !noalias !668
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ea, i64 84
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !36, !alias.scope !665 ; 4 uses
  %i.is = call float @llvm.fmuladd.f32(float %i.ir, float %i.ir, float %i.dx)
  %i.it = call float @sqrtf(float noundef %i.is) #14, !noalias !668
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ea, i64 88
  %i.iv = load float, ptr %i.iu, align 4, !tbaa !36, !alias.scope !665 ; 4 uses
  %i.iw = call float @llvm.fmuladd.f32(float %i.iv, float %i.iv, float %i.dx)
end_hunk_4
begin_hunk_5_@quantize_iq1_s:bb.a
  %i.yw = load float, ptr %i.yv, align 4, !tbaa !36, !noalias !668 ; 2 uses
  %i.yx = extractelement <8 x i16> %i.xy, i64 6
  %i.yy = sext i16 %i.yx to i64
  %i.yz = getelementptr inbounds [4 x i8], ptr %i.uq, i64 %i.yy
  %i.za = load float, ptr %i.yz, align 4, !tbaa !36, !noalias !668 ; 2 uses
  %i.zb = extractelement <8 x i16> %i.xy, i64 7
  %i.zc = sext i16 %i.zb to i64
  %i.zd = getelementptr inbounds [4 x i8], ptr %i.uq, i64 %i.zc
  %i.ze = load float, ptr %i.zd, align 4, !tbaa !36, !noalias !668 ; 2 uses
  %i.zf = load <2 x float>, ptr %i.xo, align 4, !tbaa !36, !alias.scope !665 ; 2 uses
  %i.zg = load <8 x float>, ptr %i.xn, align 16, !tbaa !36, !noalias !668
  %i.zh = insertelement <8 x float> poison, float %i.yc, i64 0
  %i.zi = insertelement <8 x float> %i.zh, float %i.yg, i64 1
  %i.zj = insertelement <8 x float> %i.zi, float %i.yk, i64 2
  %i.zk = insertelement <8 x float> %i.zj, float %i.yo, i64 3
  %i.zl = insertelement <8 x float> %i.zk, float %i.ys, i64 4
  %i.zm = insertelement <8 x float> %i.zl, float %i.yw, i64 5
  %i.zn = insertelement <8 x float> %i.zm, float %i.za, i64 6
  %i.zo = insertelement <8 x float> %i.zn, float %i.ze, i64 7
  %i.zp = fmul <8 x float> %i.zg, %i.zo           ; 8 uses
  %i.zq = shufflevector <8 x float> %i.zp, <8 x float> poison, <2 x i32> zeroinitializer
  %i.zr = insertelement <2 x float> poison, float %i.yc, i64 0
  %i.zs = shufflevector <2 x float> %i.zr, <2 x float> %i.zf, <2 x i32> <i32 0, i32 2>
  %i.zt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zq, <2 x float> %i.zs, <2 x float> %i.xh)
  %i.zu = shufflevector <8 x float> %i.zp, <8 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.zv = insertelement <2 x float> %i.zf, float %i.yg, i64 0
  %i.zw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zu, <2 x float> %i.zv, <2 x float> %i.zt)
  %i.zx = load <2 x float>, ptr %i.xq, align 4, !tbaa !36, !alias.scope !665 ; 2 uses
  %i.zy = shufflevector <8 x float> %i.zp, <8 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.zz = insertelement <2 x float> poison, float %i.yk, i64 0
  %i.aaa = shufflevector <2 x float> %i.zz, <2 x float> %i.zx, <2 x i32> <i32 0, i32 2>
  %i.aab = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zy, <2 x float> %i.aaa, <2 x float> %i.zw)
  %i.aac = shufflevector <8 x float> %i.zp, <8 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.aad = insertelement <2 x float> %i.zx, float %i.yo, i64 0
  %i.aae = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aac, <2 x float> %i.aad, <2 x float> %i.aab)
  %i.aaf = load <2 x float>, ptr %i.xs, align 4, !tbaa !36, !alias.scope !665 ; 2 uses
  %i.aag = shufflevector <8 x float> %i.zp, <8 x float> poison, <2 x i32> <i32 4, i32 4>
  %i.aah = insertelement <2 x float> poison, float %i.ys, i64 0
  %i.aai = shufflevector <2 x float> %i.aah, <2 x float> %i.aaf, <2 x i32> <i32 0, i32 2>
  %i.aaj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aag, <2 x float> %i.aai, <2 x float> %i.aae)
  %i.aak = shufflevector <8 x float> %i.zp, <8 x float> poison, <2 x i32> <i32 5, i32 5>
  %i.aal = insertelement <2 x float> %i.aaf, float %i.yw, i64 0
  %i.aam = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aak, <2 x float> %i.aal, <2 x float> %i.aaj)
  %i.aan = load <2 x float>, ptr %i.xu, align 4, !tbaa !36, !alias.scope !665 ; 2 uses
  %i.aao = shufflevector <8 x float> %i.zp, <8 x float> poison, <2 x i32> <i32 6, i32 6>
  %i.aap = insertelement <2 x float> poison, float %i.za, i64 0
  %i.aaq = shufflevector <2 x float> %i.aap, <2 x float> %i.aan, <2 x i32> <i32 0, i32 2>
  %i.aar = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aao, <2 x float> %i.aaq, <2 x float> %i.aam)
  %i.aas = shufflevector <8 x float> %i.zp, <8 x float> poison, <2 x i32> <i32 7, i32 7>
  %i.aat = insertelement <2 x float> %i.aan, float %i.ze, i64 0
  %i.aau = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aas, <2 x float> %i.aat, <2 x float> %i.aar) ; 4 uses
  %indvars.iv.next483.i.us = add nuw nsw i64 %indvars.iv482.i.us, 1 ; 2 uses
  %exitcond485.not.i.us = icmp eq i64 %indvars.iv.next483.i.us, 4
  br i1 %exitcond485.not.i.us, label %bb.w, label %.preheader374.i.us, !llvm.loop !661

bb.w:                                             ; preds = %.preheader374.i.us
  %i.aav = fcmp ogt <2 x float> %i.aau, zeroinitializer ; 2 uses
  %i.aaw = extractelement <2 x i1> %i.aav, i64 0
  %i.aax = extractelement <2 x i1> %i.aav, i64 1
  %or.cond5.i.us = select i1 %i.aax, i1 %i.aaw, i1 false
  %i.aay = extractelement <2 x float> %i.aau, i64 0
  %i.aaz = extractelement <2 x float> %i.aau, i64 1
  %i.aba = fdiv float %i.aaz, %i.aay
  %.5.i.us = select i1 %or.cond5.i.us, float %i.aba, float %.4342.i.us
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.abb = phi i16 [ %i.wz, %bb.v ], [ %i.xg, %bb.w ] ; 2 uses
  %.6.i.us = phi float [ %.4342.i.us, %bb.v ], [ %.5.i.us, %bb.w ] ; 4 uses
  %i.abc = shl nuw nsw i64 %indvars.iv489.i.us, 2
  %i.abd = trunc i32 %.0316.i.us to i8
  %i.abe = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.abc ; 4 uses
  store i8 %i.abd, ptr %i.abe, align 1, !tbaa !34, !alias.scope !666
  %i.abf = lshr i16 %i.vf, 8
  %i.abg = trunc i32 %.0316.1.i.us to i8
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abe, i64 1
  store i8 %i.abg, ptr %i.abh, align 1, !tbaa !34, !alias.scope !666
  %i.abi = lshr i16 %i.vw, 5
  %i.abj = and i16 %i.abi, 2040
  %i.abk = or i16 %i.abj, %i.abf
  %i.abl = trunc i32 %.0316.2.i.us to i8
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abe, i64 2
  store i8 %i.abl, ptr %i.abm, align 1, !tbaa !34, !alias.scope !666
  %i.abn = lshr i16 %i.wn, 2
  %i.abo = and i16 %i.abn, 16320
  %i.abp = or i16 %i.abk, %i.abo
  %i.abq = trunc i16 %i.abb to i8
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abe, i64 3
  store i8 %i.abq, ptr %i.abr, align 1, !tbaa !34, !alias.scope !666
  %i.abs = shl i16 %i.abb, 1
  %i.abt = and i16 %i.abs, -512
  %i.abu = or i16 %i.abp, %i.abt
  %i.abv = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %indvars.iv489.i.us
  store i16 %i.abu, ptr %i.abv, align 2, !tbaa !57, !alias.scope !666
  %i.abw = fcmp ult float %.6.i.us, 0.000000e+00
  br i1 %i.abw, label %.split32.us, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.abx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv489.i.us
  store float %.6.i.us, ptr %i.abx, align 4, !tbaa !36, !noalias !668
  %i.aby = trunc nsw i32 %.4.i.us to i8
  %i.abz = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv489.i.us
  store i8 %i.aby, ptr %i.abz, align 1, !tbaa !34, !noalias !668
  %i.aca = fcmp ogt float %.0355419.i.us, %.6.i.us
  %i.acb = select i1 %i.aca, float %.0355419.i.us, float %.6.i.us
  br label %bb.ab

bb.z:                                             ; preds = %bb.r
  %i.acc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv489.i.us
  store float 0.000000e+00, ptr %i.acc, align 4, !tbaa !36, !noalias !668
  %i.acd = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv489.i.us
  store i8 1, ptr %i.acd, align 1, !tbaa !34, !noalias !668
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, i8 1, i64 32, i1 false), !noalias !668
  br label %bb.ab

bb.aa:                                            ; preds = %bb.h
  %i.ace = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv489.i.us
  store float 0.000000e+00, ptr %i.ace, align 4, !tbaa !36, !noalias !668
  %i.acf = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv489.i.us
  store i8 1, ptr %i.acf, align 1, !tbaa !34, !noalias !668
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, i8 1, i64 32, i1 false), !noalias !668
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %.2357.i.us = phi float [ %.0355419.i.us, %bb.aa ], [ %.0355419.i.us, %bb.z ], [ %i.acb, %bb.y ] ; 3 uses
  %indvars.iv.next490.i.us = add nuw nsw i64 %indvars.iv489.i.us, 1 ; 2 uses
  %exitcond492.not.i.us = icmp eq i64 %indvars.iv.next490.i.us, 8
  br i1 %exitcond492.not.i.us, label %bb.ac, label %bb.h, !llvm.loop !662

bb.ac:                                            ; preds = %bb.ab
  %i.acg = fcmp une float %.2357.i.us, 0.000000e+00
  br i1 %i.acg, label %.loopexit.loopexit.i.us, label %.loopexit.i.us

.loopexit.loopexit.i.us:                          ; preds = %bb.ac
  %i.ach = fdiv float %.2357.i.us, 1.500000e+01   ; 2 uses
  %i.aci = fmul float %i.ach, 1.125000e+00        ; 2 uses
  %i.acj = call float @llvm.fabs.f32(float %i.aci)
  %i.ack = fmul float %i.acj, f0x77800000
  %i.acl = fmul float %i.ack, f0x08800000
  %i.acm = bitcast float %i.aci to i32            ; 2 uses
  %i.acn = shl i32 %i.acm, 1                      ; 2 uses
  %i.aco = call i32 @llvm.umax.i32(i32 %i.acn, i32 1895825408)
  %spec.store.select.i.i.us = lshr exact i32 %i.aco, 1
  %i.acp = and i32 %spec.store.select.i.i.us, 2139095040
  %i.acq = add nuw i32 %i.acp, 125829120
  %i.acr = bitcast i32 %i.acq to float
  %i.acs = fadd float %i.acl, %i.acr
  %i.act = bitcast float %i.acs to i32            ; 2 uses
  %i.acu = lshr i32 %i.act, 13
  %i.acv = and i32 %i.acu, 31744
  %i.acw = and i32 %i.act, 4095
  %i.acx = add nuw nsw i32 %i.acv, %i.acw
  %i.acy = lshr i32 %i.acm, 16
  %i.acz = and i32 %i.acy, 32768
  %i.ada = icmp ugt i32 %i.acn, -16777216
  %i.adb = select i1 %i.ada, i32 32256, i32 %i.acx
  %i.adc = or i32 %i.adb, %i.acz
  %i.add = trunc nuw i32 %i.adc to i16
  store i16 %i.add, ptr %i.dc, align 2, !tbaa !63, !alias.scope !666
  %i.ade = fdiv float 1.000000e+00, %i.ach
  %i.adf = load <8 x float>, ptr %i.a, align 16, !tbaa !36, !noalias !668
  %i.adg = insertelement <8 x float> poison, float %i.ade, i64 0
  %i.adh = shufflevector <8 x float> %i.adg, <8 x float> poison, <8 x i32> zeroinitializer
  %i.adi = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.adh, <8 x float> %i.adf, <8 x float> splat (float -1.000000e+00))
  %i.adj = fmul <8 x float> %i.adi, splat (float 5.000000e-01)
  %i.adk = fadd <8 x float> %i.adj, splat (float f0x4B400000)
  %i.adl = bitcast <8 x float> %i.adk to <8 x i32>
  %i.adm = and <8 x i32> %i.adl, splat (i32 8388607)
  %i.adn = call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %i.adm, <8 x i32> splat (i32 4194304))
  %i.ado = call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.adn, <8 x i32> splat (i32 7)) ; 2 uses
  %i.adp = load <8 x i8>, ptr %i.h, align 8, !tbaa !34, !noalias !668
  %i.adq = icmp eq <8 x i8> %i.adp, splat (i8 -1)
  %i.adr = trunc nuw nsw <8 x i32> %i.ado to <8 x i8>
  %i.ads = or disjoint <8 x i8> %i.adr, splat (i8 8)
  %i.adt = trunc nuw nsw <8 x i32> %i.ado to <8 x i8>
  %i.adu = select <8 x i1> %i.adq, <8 x i8> %i.ads, <8 x i8> %i.adt
  %i.adv = load <8 x i16>, ptr %i.dv, align 2, !tbaa !57, !alias.scope !666
  %i.adw = zext nneg <8 x i8> %i.adu to <8 x i16>
  %i.adx = shl nuw <8 x i16> %i.adw, splat (i16 12)
  %i.ady = or <8 x i16> %i.adx, %i.adv
  store <8 x i16> %i.ady, ptr %i.dv, align 2, !tbaa !57, !alias.scope !666
  br label %.loopexit.i.us

.loopexit.i.us:                                   ; preds = %.loopexit.loopexit.i.us, %bb.ac
  %indvars.iv.next498.i.us = add nuw nsw i64 %indvars.iv497.i.us, 1 ; 2 uses
  %exitcond500.not.i.us = icmp eq i64 %indvars.iv.next498.i.us, %i.k
  br i1 %exitcond500.not.i.us, label %quantize_row_iq1_s_impl.exit.loopexit.us, label %.lr.ph424.i.us, !llvm.loop !663

quantize_row_iq1_s_impl.exit.loopexit.us:         ; preds = %.loopexit.i.us
  %i.adz = getelementptr inbounds [4 x i8], ptr %.01620.us25, i64 %3
  %i.aea = getelementptr inbounds nuw i8, ptr %.01521.us24, i64 %i.cx
  %i.aeb = add nuw nsw i64 %.022.us23, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.aeb, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.split.us, !llvm.loop !664

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.aec = load ptr, ptr getelementptr inbounds nuw (i8, ptr @iq2_data, i64 48), align 16, !tbaa !73, !noalias !668
  %i.aed = load ptr, ptr getelementptr inbounds nuw (i8, ptr @iq2_data, i64 64), align 16, !tbaa !78, !noalias !668
  %.not370.i = icmp eq ptr %i.aec, null
  %.not372.i = icmp eq ptr %i.aed, null
  br i1 %.not370.i, label %.split.us26, label %.lr.ph.split.split.split

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split
  %i.aee = load ptr, ptr getelementptr inbounds nuw (i8, ptr @iq2_data, i64 56), align 8, !tbaa !76, !noalias !668
  %.not371.i = icmp eq ptr %i.aee, null
  br i1 %.not371.i, label %.split28.us.a, label %.lr.ph.split.split.split.split

.lr.ph.split.split.split.split:                   ; preds = %.lr.ph.split.split.split
  br i1 %.not372.i, label %.split30.us, label %._crit_edge

._crit_edge:                                      ; preds = %quantize_row_iq1_s_impl.exit.loopexit.us, %.lr.ph.split.split.split.split, %bb.c
  %i.aef = mul i64 %2, 50
  %i.aeg = mul i64 %i.aef, %i.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i64 %i.aeg

5:                                                ; preds = %.lr.ph
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 4524, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.10) #24, !noalias !668
  unreachable

.split.us26:                                      ; preds = %.lr.ph.split.split.us, %.lr.ph.split.split
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 4525, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.12) #24, !noalias !668
  unreachable

.split28.us.a:                                    ; preds = %bb.d, %.lr.ph.split.split.split
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 4526, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.13) #24, !noalias !668
  unreachable

.split30.us:                                      ; preds = %bb.e, %.lr.ph.split.split.split.split
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 4527, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.14) #24, !noalias !668
  unreachable

.split32.us:                                      ; preds = %bb.x
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 4650, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.20) #24, !noalias !668
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @iq1_sort_helper(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #16 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !36   ; 2 uses
  %i.b = load float, ptr %1, align 4, !tbaa !36   ; 2 uses
  %i.c = fcmp olt float %i.a, %i.b
  %i.d = fcmp ogt float %i.a, %i.b
  %i.e = zext i1 %i.d to i32
  %i.f = select i1 %i.c, i32 -1, i32 %i.e
  ret i32 %i.f
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, -2147483648) i32 @iq1_find_best_neighbour2(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, ptr noalias nofree noundef readonly captures(none) %2, ptr noalias nofree noundef nonnull readonly captures(none) %3, float noundef %4, ptr noalias nofree noundef nonnull readonly captures(none) %5, ptr noalias nofree noundef nonnull writeonly captures(none) %6) unnamed_addr #6 {
bb.a:
  %i.a = load i16, ptr %0, align 2, !tbaa !57     ; 2 uses
  %i.b = zext i16 %i.a to i32                     ; 2 uses
  %.not = icmp eq i16 %i.a, 0
  br i1 %.not, label %bb.b, label %.preheader118.preheader

.preheader118.preheader:                          ; preds = %bb.a
  %i.c = add nuw nsw i32 %i.b, 1
  %wide.trip.count = zext nneg i32 %i.c to i64    ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !36
  %.phi.trans.insert160 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.phi.trans.insert162 = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %.phi.trans.insert168 = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.phi.trans.insert170 = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %.pre171 = load float, ptr %.phi.trans.insert170, align 4, !tbaa !36
  %i.d = load <2 x float>, ptr %.phi.trans.insert162, align 4, !tbaa !36
  %i.e = load <2 x float>, ptr %3, align 4, !tbaa !36
  %i.f = load <4 x float>, ptr %2, align 4, !tbaa !36
  %i.g = fneg <4 x float> %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.i = load <2 x float>, ptr %i.h, align 4, !tbaa !36 ; 2 uses
  %i.j = load <4 x float>, ptr %.phi.trans.insert168, align 4, !tbaa !36
  %i.k = fneg <4 x float> %i.j
  %i.l = insertelement <4 x float> poison, float %4, i64 0
  %i.m = shufflevector <4 x float> %i.l, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.n = shufflevector <2 x float> %i.e, <2 x float> %i.d, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %.preheader118

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 4446, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.21) #24
  unreachable

bb.c:                                             ; preds = %.preheader118
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.p = icmp slt i32 %.195, 0
  br i1 %i.p, label %.preheader.preheader, label %.thread109

.preheader.preheader:                             ; preds = %bb.c
  %.pre175 = load float, ptr %.phi.trans.insert, align 4, !tbaa !36
  %.pre178 = load float, ptr %.phi.trans.insert170, align 4, !tbaa !36
  %i.q = load <2 x float>, ptr %.phi.trans.insert162, align 4, !tbaa !36
  %i.r = load <2 x float>, ptr %3, align 4, !tbaa !36
  %i.s = shufflevector <2 x float> %i.r, <2 x float> %i.q, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %.preheader

.preheader118:                                    ; preds = %.preheader118.preheader, %.preheader118
  %indvars.iv = phi i64 [ 1, %.preheader118.preheader ], [ %indvars.iv.next, %.preheader118 ] ; 2 uses
  %.089123 = phi float [ f0x7F7FFFFF, %.preheader118.preheader ], [ %.1, %.preheader118 ] ; 2 uses
  %.094122 = phi i32 [ -1, %.preheader118.preheader ], [ %.195, %.preheader118 ]
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.u = load i16, ptr %i.t, align 2, !tbaa !57   ; 2 uses
  %i.v = zext i16 %i.u to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.v
  %i.x = load <8 x i8>, ptr %i.w, align 1, !tbaa !34
  %i.y = sext <8 x i8> %i.x to <8 x i16>
  %i.z = add nsw <8 x i16> %i.y, splat (i16 -1)
  %i.aa = sdiv <8 x i16> %i.z, splat (i16 2)      ; 8 uses
  %i.ab = extractelement <8 x i16> %i.aa, i64 0
  %i.ac = sext i16 %i.ab to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr %5, i64 %i.ac
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !36
  %i.af = extractelement <8 x i16> %i.aa, i64 1
  %i.ag = sext i16 %i.af to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %5, i64 %i.ag
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !36
  %i.aj = extractelement <8 x i16> %i.aa, i64 2
  %i.ak = sext i16 %i.aj to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %5, i64 %i.ak
  %i.am = load float, ptr %i.al, align 4, !tbaa !36
  %i.an = extractelement <8 x i16> %i.aa, i64 3
  %i.ao = sext i16 %i.an to i64
  %i.ap = getelementptr inbounds [4 x i8], ptr %5, i64 %i.ao
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !36
  %i.ar = insertelement <4 x float> poison, float %i.ae, i64 0
  %i.as = insertelement <4 x float> %i.ar, float %i.ai, i64 1
  %i.at = insertelement <4 x float> %i.as, float %i.am, i64 2
  %i.au = insertelement <4 x float> %i.at, float %i.aq, i64 3
  %i.av = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.m, <4 x float> %i.au, <4 x float> %i.g) ; 5 uses
  %i.aw = extractelement <4 x float> %i.av, i64 0
  %i.ax = extractelement <4 x float> %i.av, i64 1
  %i.ay = extractelement <4 x float> %i.av, i64 2 ; 2 uses
  %i.az = fmul float %.pre, %i.ay
  %i.ba = extractelement <4 x float> %i.av, i64 3
  %i.bb = extractelement <8 x i16> %i.aa, i64 4
  %i.bc = sext i16 %i.bb to i64
  %i.bd = getelementptr inbounds [4 x i8], ptr %5, i64 %i.bc
  %i.be = load float, ptr %i.bd, align 4, !tbaa !36
  %i.bf = extractelement <8 x i16> %i.aa, i64 5
  %i.bg = sext i16 %i.bf to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %5, i64 %i.bg
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !36
  %i.bj = extractelement <8 x i16> %i.aa, i64 6
  %i.bk = sext i16 %i.bj to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %5, i64 %i.bk
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !36
  %i.bn = extractelement <8 x i16> %i.aa, i64 7
  %i.bo = sext i16 %i.bn to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %5, i64 %i.bo
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !36
  %i.br = insertelement <4 x float> poison, float %i.be, i64 0
  %i.bs = insertelement <4 x float> %i.br, float %i.bi, i64 1
  %i.bt = insertelement <4 x float> %i.bs, float %i.bm, i64 2
  %i.bu = insertelement <4 x float> %i.bt, float %i.bq, i64 3
  %i.bv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.m, <4 x float> %i.bu, <4 x float> %i.k) ; 6 uses
  %i.bw = extractelement <4 x float> %i.bv, i64 0
  %i.bx = shufflevector <4 x float> %i.av, <4 x float> %i.bv, <4 x i32> <i32 0, i32 1, i32 3, i32 4>
  %i.by = fmul <4 x float> %i.n, %i.bx            ; 4 uses
  %i.bz = extractelement <4 x float> %i.by, i64 0
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.bz, float %i.aw, float 0.000000e+00)
  %i.cb = extractelement <4 x float> %i.by, i64 1
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.cb, float %i.ax, float %i.ca)
  %i.cd = tail call float @llvm.fmuladd.f32(float %i.az, float %i.ay, float %i.cc)
  %i.ce = extractelement <4 x float> %i.by, i64 2
  %i.cf = tail call float @llvm.fmuladd.f32(float %i.ce, float %i.ba, float %i.cd)
  %i.cg = extractelement <4 x float> %i.by, i64 3
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.cg, float %i.bw, float %i.cf)
  %i.ci = extractelement <4 x float> %i.bv, i64 1 ; 2 uses
  %i.cj = fmul float %.pre171, %i.ci
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.cj, float %i.ci, float %i.ch)
  %i.cl = extractelement <4 x float> %i.bv, i64 2
  %i.cm = extractelement <4 x float> %i.bv, i64 3
  %i.cn = shufflevector <4 x float> %i.bv, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.co = fmul <2 x float> %i.i, %i.cn            ; 2 uses
  %i.cp = extractelement <2 x float> %i.co, i64 0
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.cl, float %i.ck)
  %i.cr = extractelement <2 x float> %i.co, i64 1
  %i.cs = tail call float @llvm.fmuladd.f32(float %i.cr, float %i.cm, float %i.cq) ; 2 uses
  %i.ct = fcmp olt float %i.cs, %.089123          ; 2 uses
  %i.cu = zext i16 %i.u to i32
  %.195 = select i1 %i.ct, i32 %i.cu, i32 %.094122 ; 3 uses
  %.1 = select i1 %i.ct, float %i.cs, float %.089123 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.c, label %.preheader118, !llvm.loop !669

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv143 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next144, %.preheader ] ; 4 uses
  %.2128 = phi float [ %.1, %.preheader.preheader ], [ %.3, %.preheader ] ; 2 uses
  %.296127 = phi i32 [ -1, %.preheader.preheader ], [ %.397, %.preheader ]
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv143
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv143
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !36
  %i.cy = fneg float %i.cx
  %i.cz = insertelement <4 x float> poison, float %i.cy, i64 0
  %i.da = shufflevector <4 x float> %i.cz, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.db = load <8 x i8>, ptr %i.cv, align 1, !tbaa !34
  %i.dc = sext <8 x i8> %i.db to <8 x i16>
  %i.dd = add nsw <8 x i16> %i.dc, splat (i16 -1)
  %i.de = sdiv <8 x i16> %i.dd, splat (i16 2)     ; 8 uses
  %i.df = extractelement <8 x i16> %i.de, i64 0
  %i.dg = sext i16 %i.df to i64
  %i.dh = getelementptr inbounds [4 x i8], ptr %5, i64 %i.dg
  %i.di = load float, ptr %i.dh, align 4, !tbaa !36
  %i.dj = extractelement <8 x i16> %i.de, i64 1
  %i.dk = sext i16 %i.dj to i64
  %i.dl = getelementptr inbounds [4 x i8], ptr %5, i64 %i.dk
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !36
  %i.dn = extractelement <8 x i16> %i.de, i64 2
  %i.do = sext i16 %i.dn to i64
  %i.dp = getelementptr inbounds [4 x i8], ptr %5, i64 %i.do
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !36
  %i.dr = extractelement <8 x i16> %i.de, i64 3
  %i.ds = sext i16 %i.dr to i64
  %i.dt = getelementptr inbounds [4 x i8], ptr %5, i64 %i.ds
  %i.du = load float, ptr %i.dt, align 4, !tbaa !36
  %i.dv = insertelement <4 x float> poison, float %i.di, i64 0
  %i.dw = insertelement <4 x float> %i.dv, float %i.dm, i64 1
  %i.dx = insertelement <4 x float> %i.dw, float %i.dq, i64 2
  %i.dy = insertelement <4 x float> %i.dx, float %i.du, i64 3
  %i.dz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.m, <4 x float> %i.dy, <4 x float> %i.da) ; 5 uses
  %i.ea = extractelement <4 x float> %i.dz, i64 0
  %i.eb = extractelement <4 x float> %i.dz, i64 1
  %i.ec = extractelement <4 x float> %i.dz, i64 2 ; 2 uses
  %i.ed = fmul float %.pre175, %i.ec
  %i.ee = extractelement <4 x float> %i.dz, i64 3
  %i.ef = extractelement <8 x i16> %i.de, i64 4
  %i.eg = sext i16 %i.ef to i64
end_hunk_5
begin_hunk_6_@quantize_iq1_m:bb.a
  %i.alh = extractelement <16 x i16> %i.akq, i64 2
  %i.ali = sext i16 %i.alh to i64
  %i.alj = getelementptr inbounds [4 x i8], ptr %i.aji, i64 %i.ali
  %i.alk = load float, ptr %i.alj, align 4, !tbaa !36, !noalias !695
  %i.all = fmul float %i.alk, %i.ajg              ; 2 uses
  %i.alm = fmul float %i.ajt, %i.all              ; 2 uses
  %i.aln = call float @llvm.fmuladd.f32(float %i.alm, float %i.aiu, float %i.alf)
  %i.alo = call float @llvm.fmuladd.f32(float %i.alm, float %i.all, float %i.alg)
  %i.alp = extractelement <16 x i16> %i.akq, i64 3
  %i.alq = sext i16 %i.alp to i64
  %i.alr = getelementptr inbounds [4 x i8], ptr %i.aji, i64 %i.alq
  %i.als = load float, ptr %i.alr, align 4, !tbaa !36, !noalias !695
  %i.alt = fmul float %i.als, %i.ajg              ; 2 uses
  %i.alu = fmul float %i.aju, %i.alt              ; 2 uses
  %i.alv = call float @llvm.fmuladd.f32(float %i.alu, float %i.ait, float %i.aln)
  %i.alw = call float @llvm.fmuladd.f32(float %i.alu, float %i.alt, float %i.alo)
  %i.alx = extractelement <16 x i16> %i.akq, i64 4
  %i.aly = sext i16 %i.alx to i64
  %i.alz = getelementptr inbounds [4 x i8], ptr %i.aji, i64 %i.aly
  %i.ama = load float, ptr %i.alz, align 4, !tbaa !36, !noalias !695
  %i.amb = extractelement <16 x i16> %i.akq, i64 5
  %i.amc = sext i16 %i.amb to i64
  %i.amd = getelementptr inbounds [4 x i8], ptr %i.aji, i64 %i.amc
  %i.ame = load float, ptr %i.amd, align 4, !tbaa !36, !noalias !695
  %i.amf = extractelement <16 x i16> %i.akq, i64 6
  %i.amg = sext i16 %i.amf to i64
  %i.amh = getelementptr inbounds [4 x i8], ptr %i.aji, i64 %i.amg
  %i.ami = load float, ptr %i.amh, align 4, !tbaa !36, !noalias !695
  %i.amj = extractelement <16 x i16> %i.akq, i64 7
  %i.amk = sext i16 %i.amj to i64
  %i.aml = getelementptr inbounds [4 x i8], ptr %i.aji, i64 %i.amk
  %i.amm = load float, ptr %i.aml, align 4, !tbaa !36, !noalias !695
  %i.amn = extractelement <16 x i16> %i.akq, i64 8
  %i.amo = sext i16 %i.amn to i64
  %i.amp = getelementptr inbounds [4 x i8], ptr %i.ajy, i64 %i.amo
  %i.amq = load float, ptr %i.amp, align 4, !tbaa !36, !noalias !695
  %i.amr = extractelement <16 x i16> %i.akq, i64 9
  %i.ams = sext i16 %i.amr to i64
  %i.amt = getelementptr inbounds [4 x i8], ptr %i.ajy, i64 %i.ams
  %i.amu = load float, ptr %i.amt, align 4, !tbaa !36, !noalias !695
  %i.amv = extractelement <16 x i16> %i.akq, i64 10
  %i.amw = sext i16 %i.amv to i64
  %i.amx = getelementptr inbounds [4 x i8], ptr %i.ajy, i64 %i.amw
  %i.amy = load float, ptr %i.amx, align 4, !tbaa !36, !noalias !695
  %i.amz = extractelement <16 x i16> %i.akq, i64 11
  %i.ana = sext i16 %i.amz to i64
  %i.anb = getelementptr inbounds [4 x i8], ptr %i.ajy, i64 %i.ana
  %i.anc = load float, ptr %i.anb, align 4, !tbaa !36, !noalias !695
  %i.and = extractelement <16 x i16> %i.akq, i64 12
  %i.ane = sext i16 %i.and to i64
  %i.anf = getelementptr inbounds [4 x i8], ptr %i.ajy, i64 %i.ane
  %i.ang = load float, ptr %i.anf, align 4, !tbaa !36, !noalias !695
  %i.anh = extractelement <16 x i16> %i.akq, i64 13
  %i.ani = sext i16 %i.anh to i64
  %i.anj = getelementptr inbounds [4 x i8], ptr %i.ajy, i64 %i.ani
  %i.ank = load float, ptr %i.anj, align 4, !tbaa !36, !noalias !695
  %i.anl = extractelement <16 x i16> %i.akq, i64 14
  %i.anm = sext i16 %i.anl to i64
  %i.ann = getelementptr inbounds [4 x i8], ptr %i.ajy, i64 %i.anm
  %i.ano = load float, ptr %i.ann, align 4, !tbaa !36, !noalias !695
  %i.anp = extractelement <16 x i16> %i.akq, i64 15
  %i.anq = sext i16 %i.anp to i64
  %i.anr = getelementptr inbounds [4 x i8], ptr %i.ajy, i64 %i.anq
  %i.ans = load float, ptr %i.anr, align 4, !tbaa !36, !noalias !695
  %i.ant = insertelement <12 x float> poison, float %i.ans, i64 0
  %i.anu = insertelement <12 x float> %i.ant, float %i.ano, i64 1
  %i.anv = insertelement <12 x float> %i.anu, float %i.ank, i64 2
  %i.anw = insertelement <12 x float> %i.anv, float %i.ang, i64 3
  %i.anx = insertelement <12 x float> %i.anw, float %i.anc, i64 4
  %i.any = insertelement <12 x float> %i.anx, float %i.amy, i64 5
  %i.anz = insertelement <12 x float> %i.any, float %i.amu, i64 6
  %i.aoa = insertelement <12 x float> %i.anz, float %i.amq, i64 7
  %i.aob = insertelement <12 x float> %i.aoa, float %i.amm, i64 8
  %i.aoc = insertelement <12 x float> %i.aob, float %i.ami, i64 9
  %i.aod = insertelement <12 x float> %i.aoc, float %i.ame, i64 10
  %i.aoe = insertelement <12 x float> %i.aod, float %i.ama, i64 11
  %i.aof = insertelement <12 x float> poison, float %i.ajg, i64 0
  %i.aog = shufflevector <12 x float> %i.aof, <12 x float> poison, <12 x i32> zeroinitializer
  %i.aoh = fmul <12 x float> %i.aoe, %i.aog       ; 13 uses
  %i.aoi = shufflevector <4 x float> %i.aja, <4 x float> %i.aiz, <12 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aoj = shufflevector <4 x float> %i.aiy, <4 x float> poison, <12 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aok = shufflevector <12 x float> %i.aoi, <12 x float> %i.aoj, <12 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 15, i32 14, i32 13, i32 12>
  %i.aol = fmul <12 x float> %i.aok, %i.aoh       ; 12 uses
  %i.aom = shufflevector <12 x float> %i.aol, <12 x float> poison, <2 x i32> <i32 11, i32 11>
  %i.aon = shufflevector <12 x float> %i.aoh, <12 x float> poison, <2 x i32> <i32 poison, i32 11>
  %i.aoo = insertelement <2 x float> %i.aon, float %i.ais, i64 0
  %i.aop = insertelement <2 x float> poison, float %i.alv, i64 0
  %i.aoq = insertelement <2 x float> %i.aop, float %i.alw, i64 1
  %i.aor = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aom, <2 x float> %i.aoo, <2 x float> %i.aoq)
  %i.aos = shufflevector <12 x float> %i.aol, <12 x float> poison, <2 x i32> <i32 10, i32 10>
  %i.aot = shufflevector <12 x float> %i.aoh, <12 x float> poison, <2 x i32> <i32 poison, i32 10>
  %i.aou = insertelement <2 x float> %i.aot, float %i.aiw, i64 0
  %i.aov = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aos, <2 x float> %i.aou, <2 x float> %i.aor)
  %i.aow = load <2 x float>, ptr %i.ajv, align 4, !tbaa !36, !alias.scope !692 ; 2 uses
  %i.aox = shufflevector <12 x float> %i.aol, <12 x float> poison, <2 x i32> <i32 9, i32 9>
  %i.aoy = shufflevector <12 x float> %i.aoh, <12 x float> poison, <2 x i32> <i32 poison, i32 9>
  %i.aoz = shufflevector <2 x float> %i.aow, <2 x float> %i.aoy, <2 x i32> <i32 0, i32 3>
  %i.apa = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aox, <2 x float> %i.aoz, <2 x float> %i.aov)
  %i.apb = shufflevector <12 x float> %i.aol, <12 x float> poison, <2 x i32> <i32 8, i32 8>
  %i.apc = shufflevector <12 x float> %i.aoh, <12 x float> poison, <2 x i32> <i32 poison, i32 8>
  %i.apd = shufflevector <2 x float> %i.aow, <2 x float> %i.apc, <2 x i32> <i32 1, i32 3>
  %i.ape = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.apb, <2 x float> %i.apd, <2 x float> %i.apa)
  %i.apf = load <2 x float>, ptr %i.akh, align 4, !tbaa !36, !alias.scope !692 ; 2 uses
  %i.apg = shufflevector <12 x float> %i.aol, <12 x float> poison, <2 x i32> <i32 7, i32 7>
  %i.aph = shufflevector <12 x float> %i.aoh, <12 x float> poison, <2 x i32> <i32 poison, i32 7>
  %i.api = shufflevector <2 x float> %i.apf, <2 x float> %i.aph, <2 x i32> <i32 0, i32 3>
  %i.apj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.apg, <2 x float> %i.api, <2 x float> %i.ape)
  %i.apk = shufflevector <12 x float> %i.aol, <12 x float> poison, <2 x i32> <i32 6, i32 6>
  %i.apl = shufflevector <12 x float> %i.aoh, <12 x float> poison, <2 x i32> <i32 poison, i32 6>
  %i.apm = shufflevector <2 x float> %i.apf, <2 x float> %i.apl, <2 x i32> <i32 1, i32 3>
  %i.apn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.apk, <2 x float> %i.apm, <2 x float> %i.apj)
  %i.apo = load <2 x float>, ptr %i.aki, align 4, !tbaa !36, !alias.scope !692 ; 2 uses
  %i.app = shufflevector <12 x float> %i.aol, <12 x float> poison, <2 x i32> <i32 5, i32 5>
  %i.apq = shufflevector <12 x float> %i.aoh, <12 x float> poison, <2 x i32> <i32 poison, i32 5>
  %i.apr = shufflevector <2 x float> %i.apo, <2 x float> %i.apq, <2 x i32> <i32 0, i32 3>
  %i.aps = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.app, <2 x float> %i.apr, <2 x float> %i.apn)
  %i.apt = shufflevector <12 x float> %i.aol, <12 x float> poison, <2 x i32> <i32 4, i32 4>
  %i.apu = shufflevector <12 x float> %i.aoh, <12 x float> poison, <2 x i32> <i32 poison, i32 4>
  %i.apv = shufflevector <2 x float> %i.apo, <2 x float> %i.apu, <2 x i32> <i32 1, i32 3>
  %i.apw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.apt, <2 x float> %i.apv, <2 x float> %i.aps)
  %i.apx = load <2 x float>, ptr %i.akj, align 4, !tbaa !36, !alias.scope !692 ; 2 uses
  %i.apy = shufflevector <12 x float> %i.aol, <12 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.apz = shufflevector <12 x float> %i.aoh, <12 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.aqa = shufflevector <2 x float> %i.apx, <2 x float> %i.apz, <2 x i32> <i32 0, i32 3>
  %i.aqb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.apy, <2 x float> %i.aqa, <2 x float> %i.apw)
  %i.aqc = shufflevector <12 x float> %i.aol, <12 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.aqd = shufflevector <12 x float> %i.aoh, <12 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.aqe = shufflevector <2 x float> %i.apx, <2 x float> %i.aqd, <2 x i32> <i32 1, i32 3>
  %i.aqf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aqc, <2 x float> %i.aqe, <2 x float> %i.aqb)
  %i.aqg = load <2 x float>, ptr %i.akk, align 4, !tbaa !36, !alias.scope !692
  %i.aqh = shufflevector <12 x float> %i.aol, <12 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aqi = shufflevector <2 x float> %i.aqg, <2 x float> poison, <12 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.aqj = shufflevector <12 x float> %i.aqi, <12 x float> %i.aoh, <2 x i32> <i32 0, i32 13>
  %i.aqk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aqh, <2 x float> %i.aqj, <2 x float> %i.aqf)
  %i.aql = shufflevector <12 x float> %i.aol, <12 x float> poison, <2 x i32> zeroinitializer
  %i.aqm = shufflevector <12 x float> %i.aqi, <12 x float> %i.aoh, <2 x i32> <i32 1, i32 12>
  %i.aqn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aql, <2 x float> %i.aqm, <2 x float> %i.aqk) ; 2 uses
  %indvars.iv.next831.i.us = add nuw nsw i64 %indvars.iv830.i.us, 1 ; 2 uses
  %exitcond833.not.i.us = icmp eq i64 %indvars.iv.next831.i.us, 16
  %i.aqo = extractelement <2 x float> %i.aqn, i64 0 ; 2 uses
  %i.aqp = extractelement <2 x float> %i.aqn, i64 1 ; 3 uses
  br i1 %exitcond833.not.i.us, label %bb.at, label %bb.ar, !llvm.loop !689

bb.at:                                            ; preds = %bb.as
  store <4 x float> %i.aix, ptr %i.b, align 16
  store <4 x float> %i.aiy, ptr %i.l, align 16
  store <4 x float> %i.aiz, ptr %i.m, align 16
  store <4 x float> %i.aja, ptr %i.n, align 16
  %i.aqq = fcmp ogt float %i.aqp, 0.000000e+00
  %i.aqr = fdiv float %i.aqo, %i.aqp
  %.0495.i.us = select i1 %i.aqq, float %i.aqr, float %i.adg
  %i.aqs = fmul float %.0495.i.us, 1.112500e+00   ; 2 uses
  %i.aqt = call float @llvm.fabs.f32(float %i.aqs)
  %i.aqu = fmul float %i.aqt, f0x77800000
  %i.aqv = fmul float %i.aqu, f0x08800000
  %i.aqw = bitcast float %i.aqs to i32            ; 2 uses
  %i.aqx = shl i32 %i.aqw, 1                      ; 2 uses
  %i.aqy = call i32 @llvm.umax.i32(i32 %i.aqx, i32 1895825408)
  %spec.store.select.i.i.us = lshr exact i32 %i.aqy, 1
  %i.aqz = and i32 %spec.store.select.i.i.us, 2139095040
  %i.ara = add nuw i32 %i.aqz, 125829120
  %i.arb = bitcast i32 %i.ara to float
  %i.arc = fadd float %i.aqv, %i.arb
  %i.ard = bitcast float %i.arc to i32            ; 2 uses
  %i.are = lshr i32 %i.ard, 13
  %i.arf = and i32 %i.are, 31744
  %i.arg = and i32 %i.ard, 4095
  %i.arh = add nuw nsw i32 %i.arf, %i.arg
  %i.ari = lshr i32 %i.aqw, 16
  %i.arj = and i32 %i.ari, 32768
  %i.ark = icmp ugt i32 %i.aqx, -16777216
  %i.arl = select i1 %i.ark, i32 32256, i32 %i.arh
  %i.arm = or i32 %i.arl, %i.arj
  %i.arn = trunc nuw i32 %i.arm to i16
  %i.aro = insertelement <4 x i16> poison, i16 %i.arn, i64 0
  %i.arp = shufflevector <4 x i16> %i.aro, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.arq = shl <4 x i16> %i.arp, <i16 12, i16 8, i16 4, i16 0>
  %i.arr = and <4 x i16> %i.arq, <i16 -1, i16 -4096, i16 -4096, i16 -4096>
  %i.ars = load <4 x i16>, ptr %i.bs, align 2, !tbaa !57, !alias.scope !693
  %i.art = or <4 x i16> %i.ars, %i.arr
  store <4 x i16> %i.art, ptr %i.bs, align 2, !tbaa !57, !alias.scope !693
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.ap
  %indvars.iv.next835.i.us = add nuw nsw i64 %indvars.iv834.i.us, 1 ; 2 uses
  %exitcond837.not.i.us = icmp eq i64 %indvars.iv.next835.i.us, %i.h
  br i1 %exitcond837.not.i.us, label %quantize_row_iq1_m_impl.exit.loopexit.us, label %.lr.ph704.i.us, !llvm.loop !690

quantize_row_iq1_m_impl.exit.loopexit.us:         ; preds = %bb.au
  %i.aru = getelementptr inbounds [4 x i8], ptr %.01662.us, i64 %3
  %i.arv = getelementptr inbounds nuw i8, ptr %.01563.us, i64 %i.av
  %i.arw = add nuw nsw i64 %.064.us, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.arw, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !691

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.arx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @iq2_data, i64 48), align 16, !tbaa !73, !noalias !695
  %i.ary = load ptr, ptr getelementptr inbounds nuw (i8, ptr @iq2_data, i64 64), align 16, !tbaa !78, !noalias !695
  %.not.i = icmp eq ptr %i.arx, null
  %.not571.i = icmp eq ptr %i.ary, null
  br i1 %.not.i, label %.split.us, label %.lr.ph.split.split

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.arz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @iq2_data, i64 56), align 8, !tbaa !76, !noalias !695
  %.not570.i = icmp eq ptr %i.arz, null
  br i1 %.not570.i, label %.split66.us, label %.lr.ph.split.split.split

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split
  br i1 %.not571.i, label %.split68.us, label %._crit_edge

._crit_edge:                                      ; preds = %quantize_row_iq1_m_impl.exit.loopexit.us, %.lr.ph.split.split.split, %bb.c
  %i.asa = mul i64 %2, 56
  %i.asb = mul i64 %i.asa, %i.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i64 %i.asb

.split.us:                                        ; preds = %.lr.ph.split.us, %.lr.ph.split
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 4707, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.12) #24, !noalias !696
  unreachable

.split66.us:                                      ; preds = %bb.d, %.lr.ph.split.split
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 4708, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.13) #24, !noalias !696
  unreachable

.split68.us:                                      ; preds = %bb.e, %.lr.ph.split.split.split
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 4709, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.14) #24, !noalias !696
  unreachable

.split70.us:                                      ; preds = %bb.ak
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 4899, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.20) #24, !noalias !696
  unreachable
}

; Function Attrs: nounwind uwtable
define i64 @quantize_iq4_nl(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef writeonly captures(none) %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %i.b = alloca [32 x float], align 16            ; 4 uses
  %i.c = alloca i16, align 2                      ; 4 uses
  %i.d = alloca float, align 4                    ; 4 uses
  %i.e = and i64 %3, 31
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 5078, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.31) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = ashr exact i64 %3, 5                     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  %i.h = icmp sgt i64 %2, 0
  br i1 %i.h, label %.preheader.lr.ph, label %._crit_edge38.split

.preheader.lr.ph:                                 ; preds = %bb.c
  %i.i = icmp sgt i64 %i.g, 0
  %i.j = mul nsw i64 %i.g, 18                     ; 2 uses
  br i1 %i.i, label %.preheader.lr.ph.split, label %._crit_edge38.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %.preheader.us, label %.preheader

.preheader.us:                                    ; preds = %.preheader.lr.ph.split, %._crit_edge.split.us.us
  %.036.us = phi ptr [ %i.n, %._crit_edge.split.us.us ], [ %0, %.preheader.lr.ph.split ] ; 2 uses
  %.02735.us = phi i64 [ %i.p, %._crit_edge.split.us.us ], [ 0, %.preheader.lr.ph.split ]
  %.02833.us = phi ptr [ %i.o, %._crit_edge.split.us.us ], [ %1, %.preheader.lr.ph.split ] ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.us
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %bb.d ], [ 0, %.preheader.us ] ; 3 uses
  %.idx = shl nuw nsw i64 %indvars.iv44, 7
  %i.k = getelementptr inbounds nuw i8, ptr %.036.us, i64 %.idx
  %i.l = getelementptr inbounds nuw [18 x i8], ptr %.02833.us, i64 %indvars.iv44 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  call fastcc void @quantize_row_iq4_nl_impl(i32 noundef 32, ptr noundef %i.k, ptr noundef %i.l, ptr noundef nonnull %i.m, ptr noundef nonnull %i.c, ptr noundef null, ptr noundef %i.d, ptr noundef %i.b, ptr noundef %i.a, ptr noundef null, i32 noundef 7)
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1 ; 2 uses
  %exitcond47.not = icmp eq i64 %indvars.iv.next45, %i.g
  br i1 %exitcond47.not, label %._crit_edge.split.us.us, label %bb.d, !llvm.loop !697

._crit_edge.split.us.us:                          ; preds = %bb.d
  %i.n = getelementptr inbounds [4 x i8], ptr %.036.us, i64 %3
  %i.o = getelementptr inbounds nuw i8, ptr %.02833.us, i64 %i.j
  %i.p = add nuw nsw i64 %.02735.us, 1            ; 2 uses
  %exitcond48.not = icmp eq i64 %i.p, %2
  br i1 %exitcond48.not, label %._crit_edge38.split, label %.preheader.us, !llvm.loop !698

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge.split
  %.036 = phi ptr [ %i.s, %._crit_edge.split ], [ %0, %.preheader.lr.ph.split ] ; 2 uses
  %.02735 = phi i64 [ %i.u, %._crit_edge.split ], [ 0, %.preheader.lr.ph.split ]
  %.02833 = phi ptr [ %i.t, %._crit_edge.split ], [ %1, %.preheader.lr.ph.split ] ; 2 uses
  br label %bb.e

._crit_edge38.split:                              ; preds = %._crit_edge.split, %._crit_edge.split.us.us, %.preheader.lr.ph, %bb.c
  %i.q = mul i64 %2, 18
  %i.r = mul i64 %i.q, %i.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i64 %i.r

._crit_edge.split:                                ; preds = %bb.e
  %i.s = getelementptr inbounds [4 x i8], ptr %.036, i64 %3
  %i.t = getelementptr inbounds nuw i8, ptr %.02833, i64 %i.j
  %i.u = add nuw nsw i64 %.02735, 1               ; 2 uses
  %exitcond43.not = icmp eq i64 %i.u, %2
  br i1 %exitcond43.not, label %._crit_edge38.split, label %.preheader, !llvm.loop !698

bb.e:                                             ; preds = %.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.v = shl nuw nsw i64 %indvars.iv, 5           ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.v
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.036, i64 %i.v
  %i.y = getelementptr inbounds nuw [18 x i8], ptr %.02833, i64 %indvars.iv ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  call fastcc void @quantize_row_iq4_nl_impl(i32 noundef 32, ptr noundef %i.x, ptr noundef %i.y, ptr noundef nonnull %i.z, ptr noundef nonnull %i.c, ptr noundef null, ptr noundef %i.d, ptr noundef %i.b, ptr noundef %i.a, ptr noundef nonnull %i.w, i32 noundef 7)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.g
  br i1 %exitcond.not, label %._crit_edge.split, label %bb.e, !llvm.loop !697
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define internal fastcc void @quantize_row_iq4_nl_impl(i32 noundef range(i32 32, 257) %0, ptr noalias nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5, ptr nofree noundef nonnull captures(none) %6, ptr nofree noundef nonnull captures(none) %7, ptr nofree noundef nonnull captures(none) %8, ptr nofree noundef readonly captures(address_is_null) %9, i32 noundef range(i32 -1, 8) %10) unnamed_addr #3 {
.new:
  %wide.trip.count = zext nneg i32 %0 to i64      ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %unroll_iter = and i64 %wide.trip.count, 508
  br label %bb.b

.lr.ph26.unr-lcssa:                               ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph26, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph26.unr-lcssa
  %lcmp.mod12 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod12)
  br label %bb.a

bb.a:                                             ; preds = %bb.a, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.3, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.a ] ; 2 uses
  %.02276.epil = phi float [ %i.bl, %.epil.preheader ], [ %i.c, %bb.a ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.a ]
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.epil
  %i.b = load float, ptr %i.a, align 4, !tbaa !36 ; 2 uses
  %i.c = tail call float @llvm.fmuladd.f32(float %i.b, float %i.b, float %.02276.epil) ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph26, label %bb.a, !llvm.loop !699

.lr.ph26:                                         ; preds = %bb.a, %.lr.ph26.unr-lcssa
  %.lcssa10 = phi float [ %i.bl, %.lr.ph26.unr-lcssa ], [ %i.c, %bb.a ]
  %i.d = uitofp nneg i32 %0 to float
  %i.e = fdiv nnan float 2.000000e+00, %i.d
  %i.f = fmul float %i.e, %.lcssa10               ; 32 uses
  %i.g = lshr i32 %0, 1
  %i.h = zext nneg i32 %i.g to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %3, i8 0, i64 %i.h, i1 false)
  store i16 0, ptr %2, align 2, !tbaa !57
  %i.i = lshr i32 %0, 5                           ; 3 uses
  %.not = icmp eq ptr %9, null
  %i.j = icmp sgt i32 %10, 0
  %.v = select i1 %i.j, float 1.270000e+02, float -1.270000e+02
  %i.k = sub nsw i32 0, %10
  %.not25918 = icmp slt i32 %10, 0
  %wide.trip.count72 = zext nneg i32 %i.i to i64
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 28
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 36
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 52
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 60
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 68
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 76
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 84
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 92
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 100
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 104
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 108
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 112
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 116
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 120
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 124
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 112
  br label %bb.c

bb.b:                                             ; preds = %bb.b, %.new
  %indvars.iv = phi i64 [ 0, %.new ], [ %indvars.iv.next.3, %bb.b ] ; 5 uses
  %.02276 = phi float [ 0.000000e+00, %.new ], [ %i.bl, %bb.b ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.b ]
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !36 ; 2 uses
  %i.az = tail call float @llvm.fmuladd.f32(float %i.ay, float %i.ay, float %.02276)
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !36 ; 2 uses
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.bc, float %i.bc, float %i.az)
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !36 ; 2 uses
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.bg, float %i.bg, float %i.bd)
end_hunk_6
begin_hunk_7_@quantize_iq2_s:bb.a
  %.2.i.us = select i1 %i.zw, float %i.zy, float %.1297.i.us
  br label %.loopexit333.i.us

.loopexit333.i.us:                                ; preds = %.preheader335.i.us..loopexit333.i.us_crit_edge, %.preheader334.preheader.i.us
  %i.zz = phi i8 [ %i.xu, %.preheader334.preheader.i.us ], [ %.pre96, %.preheader335.i.us..loopexit333.i.us_crit_edge ]
  %i.aaa = phi i8 [ %i.xt, %.preheader334.preheader.i.us ], [ %.pre95, %.preheader335.i.us..loopexit333.i.us_crit_edge ]
  %i.aab = phi i8 [ %i.xs, %.preheader334.preheader.i.us ], [ %.pre94, %.preheader335.i.us..loopexit333.i.us_crit_edge ]
  %.3.i.us = phi float [ %.2.i.us, %.preheader334.preheader.i.us ], [ %.1297.i.us, %.preheader335.i.us..loopexit333.i.us_crit_edge ] ; 3 uses
  %i.aac = fcmp olt float %.3.i.us, 0.000000e+00  ; 2 uses
  %i.aad = fneg float %.3.i.us
  %i.aae = sext i1 %i.aac to i8                   ; 2 uses
  %.sroa.6.0.i.us = xor i8 %.1304.7.1.i.us, %i.aae
  %.4.i.us = select i1 %i.aac, float %i.aad, float %.3.i.us ; 4 uses
  %i.aaf = shl nuw nsw i64 %indvars.iv460.i.us, 1 ; 2 uses
  %i.aag = lshr i64 %indvars.iv460.i.us, 1
  %i.aah = and i64 %i.aag, 2147483647
  %i.aai = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.aah ; 4 uses
  %i.aaj = load i8, ptr %i.an, align 4, !tbaa !34, !noalias !730
  %i.aak = load <4 x i8>, ptr %i.c, align 16, !tbaa !34, !noalias !730
  %i.aal = sext <4 x i8> %i.aak to <4 x i16>
  %i.aam = zext i8 %i.aaj to i16
  %i.aan = zext i8 %i.aab to i16
  %i.aao = zext i8 %i.aaa to i16
  %i.aap = zext i8 %i.zz to i16
  %i.aaq = shufflevector <4 x i16> %i.aal, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aar = insertelement <8 x i16> %i.aaq, i16 %i.aam, i64 4
  %i.aas = insertelement <8 x i16> %i.aar, i16 %i.aan, i64 5
  %i.aat = insertelement <8 x i16> %i.aas, i16 %i.aao, i64 6
  %i.aau = insertelement <8 x i16> %i.aat, i16 %i.aap, i64 7
  %i.aav = shl <8 x i16> %i.aau, <i16 0, i16 2, i16 4, i16 6, i16 8, i16 10, i16 12, i16 14>
  %i.aaw = tail call i16 @llvm.vector.reduce.or.v8i16(<8 x i16> %i.aav) ; 2 uses
  %i.aax = zext i16 %i.aaw to i64
  %i.aay = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.aax
  %i.aaz = load i32, ptr %i.aay, align 4, !tbaa !47, !noalias !730 ; 3 uses
  %i.aba = icmp slt i32 %i.aaz, 0
  br i1 %i.aba, label %.split57.us, label %.preheader328.1.i.us

.preheader328.1.i.us:                             ; preds = %.loopexit333.i.us
  %.sroa.0.0.i.us = xor i8 %.1304.7.i.us, %i.aae
  %i.abb = trunc i32 %i.aaz to i8
  %i.abc = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.aaf ; 2 uses
  store i8 %i.abb, ptr %i.abc, align 1, !tbaa !34, !alias.scope !728
  %i.abd = lshr i32 %i.aaz, 8
  %indvars.iv460.tr.i.us = trunc i64 %indvars.iv460.i.us to i32
  %i.abe = shl i32 %indvars.iv460.tr.i.us, 2
  %i.abf = and i32 %i.abe, 4
  %i.abg = shl nuw nsw i32 %i.abd, %i.abf
  %i.abh = load i8, ptr %i.aai, align 1, !tbaa !34, !alias.scope !728
  %i.abi = trunc i32 %i.abg to i8
  %i.abj = or i8 %i.abh, %i.abi
  store i8 %i.abj, ptr %i.aai, align 1, !tbaa !34, !alias.scope !728
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abc, i64 32
  store i8 %.sroa.0.0.i.us, ptr %i.abk, align 1, !tbaa !34, !alias.scope !728
  %i.abl = load <8 x i8>, ptr %.0275377.lcssa.wide.i.sroa.gep26, align 8, !tbaa !34, !noalias !730 ; 2 uses
  %i.abm = sext <8 x i8> %i.abl to <8 x i16>
  %i.abn = zext <8 x i8> %i.abl to <8 x i16>
  %i.abo = shufflevector <8 x i16> %i.abm, <8 x i16> %i.abn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.abp = shl <8 x i16> %i.abo, <i16 0, i16 2, i16 4, i16 6, i16 8, i16 10, i16 12, i16 14>
  %i.abq = tail call i16 @llvm.vector.reduce.or.v8i16(<8 x i16> %i.abp) ; 2 uses
  %i.abr = zext i16 %i.abq to i64
  %i.abs = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.abr
  %i.abt = load i32, ptr %i.abs, align 4, !tbaa !47, !noalias !730 ; 3 uses
  %i.abu = icmp slt i32 %i.abt, 0
  br i1 %i.abu, label %.split57.us, label %bb.q

bb.q:                                             ; preds = %.preheader328.1.i.us
  %i.abv = or disjoint i64 %i.aaf, 1              ; 2 uses
  %i.abw = trunc i32 %i.abt to i8
  %i.abx = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.abv ; 2 uses
  store i8 %i.abw, ptr %i.abx, align 1, !tbaa !34, !alias.scope !728
  %i.aby = lshr i32 %i.abt, 8
  %.tr585.i.us = trunc i64 %i.abv to i32
  %i.abz = shl i32 %.tr585.i.us, 1
  %i.aca = and i32 %i.abz, 6
  %i.acb = shl nuw nsw i32 %i.aby, %i.aca
  %i.acc = load i8, ptr %i.aai, align 1, !tbaa !34, !alias.scope !728
  %i.acd = trunc i32 %i.acb to i8
  %i.ace = or i8 %i.acc, %i.acd
  store i8 %i.ace, ptr %i.aai, align 1, !tbaa !34, !alias.scope !728
  %i.acf = getelementptr inbounds nuw i8, ptr %i.abx, i64 32
  store i8 %.sroa.6.0.i.us, ptr %i.acf, align 1, !tbaa !34, !alias.scope !728
  %i.acg = fcmp ult float %.4.i.us, 0.000000e+00
  br i1 %i.acg, label %.split60.us, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ach = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv460.i.us
  store float %.4.i.us, ptr %i.ach, align 4, !tbaa !36, !noalias !730
  %i.aci = fcmp ogt float %.0312378.i.us, %.4.i.us
  %i.acj = select i1 %i.aci, float %.0312378.i.us, float %.4.i.us
  br label %bb.t

bb.s:                                             ; preds = %.loopexit338.i.us
  %i.ack = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv460.i.us
  store float 0.000000e+00, ptr %i.ack, align 4, !tbaa !36, !noalias !730
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.1313.i.us = phi float [ %.0312378.i.us, %bb.s ], [ %i.acj, %bb.r ] ; 3 uses
  %indvars.iv.next461.i.us = add nuw nsw i64 %indvars.iv460.i.us, 1 ; 2 uses
  %exitcond463.not.i.us = icmp eq i64 %indvars.iv.next461.i.us, 16
  br i1 %exitcond463.not.i.us, label %bb.u, label %bb.i, !llvm.loop !723

bb.u:                                             ; preds = %bb.t
  %i.acl = fcmp une float %.1313.i.us, 0.000000e+00
  br i1 %i.acl, label %bb.v, label %.loopexit340.i.us

bb.v:                                             ; preds = %bb.u
  %i.acm = fdiv float %.1313.i.us, 3.100000e+01   ; 2 uses
  %i.acn = fmul float %i.acm, 9.875000e-01        ; 2 uses
  %i.aco = tail call float @llvm.fabs.f32(float %i.acn)
  %i.acp = fmul float %i.aco, f0x77800000
  %i.acq = fmul float %i.acp, f0x08800000
  %i.acr = bitcast float %i.acn to i32            ; 2 uses
  %i.acs = shl i32 %i.acr, 1                      ; 2 uses
  %i.act = tail call i32 @llvm.umax.i32(i32 %i.acs, i32 1895825408)
  %spec.store.select.i.i.us = lshr exact i32 %i.act, 1
  %i.acu = and i32 %spec.store.select.i.i.us, 2139095040
  %i.acv = add nuw i32 %i.acu, 125829120
  %i.acw = bitcast i32 %i.acv to float
  %i.acx = fadd float %i.acq, %i.acw
  %i.acy = bitcast float %i.acx to i32            ; 2 uses
  %i.acz = lshr i32 %i.acy, 13
  %i.ada = and i32 %i.acz, 31744
  %i.adb = and i32 %i.acy, 4095
  %i.adc = add nuw nsw i32 %i.ada, %i.adb
  %i.add = lshr i32 %i.acr, 16
  %i.ade = and i32 %i.add, 32768
  %i.adf = icmp ugt i32 %i.acs, -16777216
  %i.adg = select i1 %i.adf, i32 32256, i32 %i.adc
  %i.adh = or i32 %i.adg, %i.ade
  %i.adi = trunc nuw i32 %i.adh to i16
  store i16 %i.adi, ptr %i.bt, align 2, !tbaa !59, !alias.scope !728
  %i.adj = fdiv float 1.000000e+00, %i.acm
  %i.adk = getelementptr inbounds nuw i8, ptr %i.bt, i64 74 ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.z, %bb.v
  %indvars.iv464.i.us = phi i64 [ 0, %bb.v ], [ %indvars.iv.next465.i.us, %bb.z ] ; 5 uses
  %i.adl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv464.i.us
  %i.adm = load float, ptr %i.adl, align 4, !tbaa !36, !noalias !730
  %i.adn = tail call float @llvm.fmuladd.f32(float %i.adj, float %i.adm, float -1.000000e+00)
  %i.ado = fmul float %i.adn, 5.000000e-01
  %i.adp = fadd float %i.ado, f0x4B400000
  %i.adq = bitcast float %i.adp to i32
  %i.adr = and i32 %i.adq, 8388607
  %i.ads = tail call i32 @llvm.usub.sat.i32(i32 %i.adr, i32 4194304)
  %i.adt = tail call i32 @llvm.umin.i32(i32 %i.ads, i32 15) ; 2 uses
  %i.adu = and i64 %indvars.iv464.i.us, 1
  %i.adv = icmp eq i64 %i.adu, 0
  br i1 %i.adv, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.adw = lshr i64 %indvars.iv464.i.us, 1
  %i.adx = and i64 %i.adw, 2147483647
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adk, i64 %i.adx ; 2 uses
  %i.adz = load i8, ptr %i.ady, align 1, !tbaa !34, !alias.scope !728
  %.tr.i.us = trunc nuw nsw i32 %i.adt to i8
  %i.aea = shl nuw i8 %.tr.i.us, 4
  %i.aeb = or i8 %i.adz, %i.aea
  store i8 %i.aeb, ptr %i.ady, align 1, !tbaa !34, !alias.scope !728
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.aec = trunc nuw nsw i32 %i.adt to i8
  %i.aed = lshr exact i64 %indvars.iv464.i.us, 1
  %i.aee = and i64 %i.aed, 2147483647
  %i.aef = getelementptr inbounds nuw i8, ptr %i.adk, i64 %i.aee
  store i8 %i.aec, ptr %i.aef, align 1, !tbaa !34, !alias.scope !728
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %indvars.iv.next465.i.us = add nuw nsw i64 %indvars.iv464.i.us, 1 ; 2 uses
  %exitcond467.not.i.us = icmp eq i64 %indvars.iv.next465.i.us, 16
  br i1 %exitcond467.not.i.us, label %.loopexit340.i.us, label %bb.w, !llvm.loop !724

.loopexit340.i.us:                                ; preds = %bb.z, %bb.u
  %indvars.iv.next469.i.us = add nuw nsw i64 %indvars.iv468.i.us, 1 ; 2 uses
  %exitcond471.not.i.us = icmp eq i64 %indvars.iv.next469.i.us, %i.h
  br i1 %exitcond471.not.i.us, label %quantize_row_iq2_s_impl.exit.loopexit.us, label %bb.f, !llvm.loop !725

quantize_row_iq2_s_impl.exit.loopexit.us:         ; preds = %.loopexit340.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14, !noalias !730
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14, !noalias !730
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14, !noalias !730
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14, !noalias !730
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14, !noalias !730
  %i.aeg = getelementptr inbounds [4 x i8], ptr %.01649.us, i64 %3
  %i.aeh = getelementptr inbounds nuw i8, ptr %.01550.us, i64 %i.ar
  %i.aei = add nuw nsw i64 %.051.us, 1            ; 2 uses
  %exitcond78.not = icmp eq i64 %i.aei, %2
  br i1 %exitcond78.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !726

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.aej = load ptr, ptr getelementptr inbounds nuw (i8, ptr @iq2_data, i64 80), align 16, !tbaa !76, !noalias !730
  %i.aek = icmp eq ptr %i.aej, null
  br i1 %i.aek, label %.split.us.loopexit72, label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.ael = load ptr, ptr getelementptr inbounds nuw (i8, ptr @iq2_data, i64 72), align 8, !tbaa !73, !noalias !730
  %.not324.i.us65 = icmp eq ptr %i.ael, null
  br i1 %.not324.i.us65, label %.split53.us, label %.lr.ph.split.split.us.split

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us
  %i.aem = load ptr, ptr getelementptr inbounds nuw (i8, ptr @iq2_data, i64 88), align 8, !tbaa !78, !noalias !730
  %.not325.i.us66 = icmp eq ptr %i.aem, null
  br i1 %.not325.i.us66, label %.split55.us, label %._crit_edge

._crit_edge:                                      ; preds = %quantize_row_iq2_s_impl.exit.loopexit.us, %.lr.ph.split.split.us.split, %bb.c
  %i.aen = mul i64 %2, 82
  %i.aeo = mul i64 %i.aen, %i.h
  ret i64 %i.aeo

.split.us.loopexit72:                             ; preds = %.lr.ph.split
  tail call void @llvm.experimental.noalias.scope.decl(metadata !727)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !728)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !729)
  br label %.split.us

.split.us:                                        ; preds = %.lr.ph.split.us, %.split.us.loopexit72
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 5150, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.13) #24, !noalias !730
  unreachable

.split53.us:                                      ; preds = %bb.d, %.lr.ph.split.split.us
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 5151, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.12) #24, !noalias !730
  unreachable

.split55.us:                                      ; preds = %bb.e, %.lr.ph.split.split.us.split
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 5152, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.14) #24, !noalias !730
  unreachable

.split57.us:                                      ; preds = %.loopexit333.i.us, %.preheader328.1.i.us
  %.0275377.lcssa.wide.i.sroa.phi.us = phi ptr [ %i.c, %.loopexit333.i.us ], [ %.0275377.lcssa.wide.i.sroa.gep26, %.preheader328.1.i.us ] ; 8 uses
  %.lcssa390.lcssa.i.us = phi i16 [ %i.aaw, %.loopexit333.i.us ], [ %i.abq, %.preheader328.1.i.us ]
  %i.aep = zext i16 %.lcssa390.lcssa.i.us to i32
  %i.aeq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.aep), !noalias !730 ; 0 uses
  %i.aer = load i8, ptr %.0275377.lcssa.wide.i.sroa.phi.us, align 1, !tbaa !34, !noalias !730
  %i.aes = sext i8 %i.aer to i32
  %i.aet = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.aes), !noalias !730 ; 0 uses
  %i.aeu = getelementptr inbounds nuw i8, ptr %.0275377.lcssa.wide.i.sroa.phi.us, i64 1
  %i.aev = load i8, ptr %i.aeu, align 1, !tbaa !34, !noalias !730
  %i.aew = sext i8 %i.aev to i32
  %i.aex = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.aew), !noalias !730 ; 0 uses
  %i.aey = getelementptr inbounds nuw i8, ptr %.0275377.lcssa.wide.i.sroa.phi.us, i64 2
  %i.aez = load i8, ptr %i.aey, align 1, !tbaa !34, !noalias !730
  %i.afa = sext i8 %i.aez to i32
  %i.afb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.afa), !noalias !730 ; 0 uses
  %i.afc = getelementptr inbounds nuw i8, ptr %.0275377.lcssa.wide.i.sroa.phi.us, i64 3
  %i.afd = load i8, ptr %i.afc, align 1, !tbaa !34, !noalias !730
  %i.afe = sext i8 %i.afd to i32
  %i.aff = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.afe), !noalias !730 ; 0 uses
  %i.afg = getelementptr inbounds nuw i8, ptr %.0275377.lcssa.wide.i.sroa.phi.us, i64 4
  %i.afh = load i8, ptr %i.afg, align 1, !tbaa !34, !noalias !730
  %i.afi = sext i8 %i.afh to i32
  %i.afj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.afi), !noalias !730 ; 0 uses
  %i.afk = getelementptr inbounds nuw i8, ptr %.0275377.lcssa.wide.i.sroa.phi.us, i64 5
  %i.afl = load i8, ptr %i.afk, align 1, !tbaa !34, !noalias !730
  %i.afm = sext i8 %i.afl to i32
  %i.afn = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.afm), !noalias !730 ; 0 uses
  %i.afo = getelementptr inbounds nuw i8, ptr %.0275377.lcssa.wide.i.sroa.phi.us, i64 6
  %i.afp = load i8, ptr %i.afo, align 1, !tbaa !34, !noalias !730
  %i.afq = sext i8 %i.afp to i32
  %i.afr = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.afq), !noalias !730 ; 0 uses
  %i.afs = getelementptr inbounds nuw i8, ptr %.0275377.lcssa.wide.i.sroa.phi.us, i64 7
  %i.aft = load i8, ptr %i.afs, align 1, !tbaa !34, !noalias !730
  %i.afu = sext i8 %i.aft to i32
  %i.afv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.afu), !noalias !730 ; 0 uses
  %putchar.i = tail call i32 @putchar(i32 10), !noalias !730 ; 0 uses
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 5283, ptr noundef nonnull @.str.19) #24, !noalias !730
  unreachable

.split60.us:                                      ; preds = %bb.q
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 5290, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.20) #24, !noalias !730
  unreachable
}

; Function Attrs: nounwind uwtable
define void @quantize_row_iq2_s_ref(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef captures(none) %1, i64 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call i64 @quantize_iq2_s(ptr noundef %0, ptr noundef %1, i64 noundef 1, i64 noundef %2, ptr noundef null) ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @ggml_validate_row_data(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp ugt i32 %0, 42
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !762
  %i.c = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.ggml_validate_row_data, i32 noundef %0) #26 ; 0 uses
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i64 @ggml_type_size(i32 noundef %0) #14
  %i.e = urem i64 %2, %i.d
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !762
  %i.g = tail call ptr @ggml_type_name(i32 noundef %0) #14
  %i.h = tail call i64 @ggml_type_size(i32 noundef %0) #14
  %i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.f, ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.ggml_validate_row_data, i64 noundef %2, ptr noundef %i.g, i64 noundef %i.h) #26 ; 0 uses
  br label %.critedge

bb.e:                                             ; preds = %bb.c
  %i.j = tail call i64 @ggml_type_size(i32 noundef %0) #14 ; 30 uses
  %i.k = udiv i64 %2, %i.j                        ; 34 uses
  switch i32 %0, label %bb.cs [
    i32 30, label %.preheader
    i32 1, label %.preheader686
    i32 0, label %.preheader687
    i32 28, label %.preheader689
    i32 41, label %.preheader691
    i32 42, label %.preheader693
    i32 2, label %.preheader695
    i32 3, label %.preheader697
    i32 6, label %.preheader699
    i32 7, label %.preheader701
    i32 8, label %.preheader703
    i32 39, label %.preheader705
    i32 40, label %.critedge
    i32 10, label %.preheader707
    i32 11, label %.preheader709
    i32 12, label %.preheader711
    i32 13, label %.preheader713
    i32 14, label %.preheader715
    i32 15, label %.preheader717
    i32 34, label %.preheader719
    i32 35, label %.preheader721
    i32 19, label %.preheader723
    i32 29, label %.preheader725
    i32 16, label %.preheader727
    i32 17, label %.preheader729
    i32 22, label %.preheader731
    i32 18, label %.preheader733
    i32 21, label %.preheader735
    i32 23, label %.preheader737
    i32 20, label %.preheader739
    i32 24, label %.critedge
    i32 25, label %.critedge
    i32 26, label %.critedge
    i32 27, label %.critedge
  ]

.preheader739:                                    ; preds = %bb.e
  %.not444774.not = icmp ugt i64 %i.j, %2
  br i1 %.not444774.not, label %.critedge, label %.lr.ph

.preheader737:                                    ; preds = %bb.e
  %.not445776.not = icmp ugt i64 %i.j, %2
  br i1 %.not445776.not, label %.critedge, label %.lr.ph778

.preheader735:                                    ; preds = %bb.e
  %.not446779.not = icmp ugt i64 %i.j, %2
  br i1 %.not446779.not, label %.critedge, label %.lr.ph781

.preheader733:                                    ; preds = %bb.e
  %.not447782.not = icmp ugt i64 %i.j, %2
  br i1 %.not447782.not, label %.critedge, label %.lr.ph784

.preheader731:                                    ; preds = %bb.e
  %.not448785.not = icmp ugt i64 %i.j, %2
  br i1 %.not448785.not, label %.critedge, label %.lr.ph787

.preheader729:                                    ; preds = %bb.e
  %.not449788.not = icmp ugt i64 %i.j, %2
  br i1 %.not449788.not, label %.critedge, label %.lr.ph790

.preheader727:                                    ; preds = %bb.e
  %.not450791.not = icmp ugt i64 %i.j, %2
  br i1 %.not450791.not, label %.critedge, label %.lr.ph793

.preheader725:                                    ; preds = %bb.e
  %.not451794.not = icmp ugt i64 %i.j, %2
  br i1 %.not451794.not, label %.critedge, label %.lr.ph796

.preheader723:                                    ; preds = %bb.e
  %.not452797.not = icmp ugt i64 %i.j, %2
  br i1 %.not452797.not, label %.critedge, label %.lr.ph799

.preheader721:                                    ; preds = %bb.e
  %.not453800.not = icmp ugt i64 %i.j, %2
  br i1 %.not453800.not, label %.critedge, label %.lr.ph802

.preheader719:                                    ; preds = %bb.e
  %.not454803.not = icmp ugt i64 %i.j, %2
  br i1 %.not454803.not, label %.critedge, label %.lr.ph805

.preheader717:                                    ; preds = %bb.e
  %.not455806.not = icmp ugt i64 %i.j, %2
  br i1 %.not455806.not, label %.critedge, label %.lr.ph808

.preheader715:                                    ; preds = %bb.e
  %.not456809.not = icmp ugt i64 %i.j, %2
  br i1 %.not456809.not, label %.critedge, label %.lr.ph811

.preheader713:                                    ; preds = %bb.e
  %.not457812.not = icmp ugt i64 %i.j, %2
  br i1 %.not457812.not, label %.critedge, label %.lr.ph814

.preheader711:                                    ; preds = %bb.e
  %.not458815.not = icmp ugt i64 %i.j, %2
  br i1 %.not458815.not, label %.critedge, label %.lr.ph817

.preheader709:                                    ; preds = %bb.e
  %.not459818.not = icmp ugt i64 %i.j, %2
  br i1 %.not459818.not, label %.critedge, label %.lr.ph820

.preheader707:                                    ; preds = %bb.e
  %.not460821.not = icmp ugt i64 %i.j, %2
  br i1 %.not460821.not, label %.critedge, label %.lr.ph823

.preheader705:                                    ; preds = %bb.e
  %.not461824.not = icmp ugt i64 %i.j, %2
  br i1 %.not461824.not, label %.critedge, label %.lr.ph826

.preheader703:                                    ; preds = %bb.e
  %.not462827.not = icmp ugt i64 %i.j, %2
  br i1 %.not462827.not, label %.critedge, label %.lr.ph829

.preheader701:                                    ; preds = %bb.e
  %.not463830.not = icmp ugt i64 %i.j, %2
  br i1 %.not463830.not, label %.critedge, label %.lr.ph832

.preheader699:                                    ; preds = %bb.e
end_hunk_7
