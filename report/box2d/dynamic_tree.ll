Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box2d/original/dynamic_tree?download=true
inline.NumInlined: 146
inline.NumDeleted: 30
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@b2DynamicTree_Query:bb.a
  %i.o = add nuw nsw i32 %.sroa.023.038, 1        ; 4 uses
  %i.p = load <2 x float>, ptr %i.n, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load <2 x float>, ptr %i.q, align 8
  %i.s = shufflevector <2 x float> %1, <2 x float> %i.p, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.t = shufflevector <2 x float> %i.r, <2 x float> %2, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.u = fcmp ule <4 x float> %i.s, %i.t
  %i.v = freeze <4 x i1> %i.u
  %i.w = bitcast <4 x i1> %i.v to i4
  %i.x = icmp eq i4 %i.w, -1
  br i1 %i.x, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !32
  %i.aa = and i64 %i.z, %3
  %.not = icmp eq i64 %i.aa, 0
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr i8, ptr %i.n, i64 38
  %.val = load i16, ptr %i.ab, align 2, !tbaa !34
  %i.ac = and i16 %.val, 4
  %.not30 = icmp eq i16 %i.ac, 0
  br i1 %.not30, label %bb.f, label %.split

.split:                                           ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !19
  %i.af = tail call zeroext i1 %4(i32 noundef %i.l, i64 noundef %i.ae, ptr noundef %5) #14
  %i.ag = add nuw nsw i32 %.sroa.4.0.ph, 1        ; 2 uses
  br i1 %i.af, label %.outer, label %.loopexit, !llvm.loop !54

bb.f:                                             ; preds = %bb.e
  %i.ah = icmp samesign ult i32 %.02739, 1024
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !19
  store i32 %i.aj, ptr %i.k, align 4, !tbaa !36
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 28
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !19
  %i.am = add nuw nsw i32 %.02739, 1
  %i.an = zext nneg i32 %.02739 to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.an
  store i32 %i.al, ptr %i.ao, align 4, !tbaa !36
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.d, %bb.g, %bb.f
  %.2 = phi i32 [ %i.i, %bb.c ], [ %i.am, %bb.g ], [ %i.i, %bb.f ], [ %i.i, %bb.d ] ; 2 uses
  %i.ap = icmp sgt i32 %.2, 0
  br i1 %i.ap, label %bb.c, label %.loopexit, !llvm.loop !54

.loopexit:                                        ; preds = %.split, %.outer, %bb.h
  %.sroa.4.3 = phi i32 [ %.sroa.4.0.ph, %bb.h ], [ %.sroa.4.0.ph, %.outer ], [ %i.ag, %.split ]
  %.sroa.023.1 = phi i32 [ %i.o, %bb.h ], [ %.sroa.023.0.ph, %.outer ], [ %i.o, %.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.aq = zext i32 %.sroa.4.3 to i64
  %i.ar = shl nuw i64 %i.aq, 32
  %i.as = zext i32 %.sroa.023.1 to i64
  %i.at = or disjoint i64 %i.ar, %i.as
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %.loopexit
  %.sroa.023.0.insert.insert = phi i64 [ 0, %bb.a ], [ %i.at, %.loopexit ]
  ret i64 %.sroa.023.0.insert.insert
}

; Function Attrs: nounwind uwtable
define i64 @b2DynamicTree_QueryAll(ptr nofree noundef readonly captures(none) %0, <2 x float> %1, <2 x float> %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [1024 x i32], align 16            ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !17
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !15
  store i32 %i.f, ptr %i.a, align 16, !tbaa !36
  br label %.outer

.outer:                                           ; preds = %.split, %bb.b
  %.sroa.4.0.ph = phi i32 [ %i.ad, %.split ], [ 0, %bb.b ] ; 3 uses
  %.sroa.021.0.ph = phi i32 [ %i.o, %.split ], [ 0, %bb.b ] ; 2 uses
  %.025.ph = phi i32 [ %i.i, %.split ], [ 1, %bb.b ] ; 2 uses
  %i.g = icmp sgt i32 %.025.ph, 0
  br i1 %i.g, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.outer
  %i.h = load ptr, ptr %0, align 8, !tbaa !18
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.g
  %.02536 = phi i32 [ %.025.ph, %.lr.ph ], [ %.2, %bb.g ] ; 4 uses
  %.sroa.021.035 = phi i32 [ %.sroa.021.0.ph, %.lr.ph ], [ %i.o, %bb.g ]
  %i.i = add nsw i32 %.02536, -1                  ; 4 uses
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !36   ; 2 uses
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [40 x i8], ptr %i.h, i64 %i.m ; 6 uses
  %i.o = add nuw nsw i32 %.sroa.021.035, 1        ; 4 uses
  %i.p = load <2 x float>, ptr %i.n, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load <2 x float>, ptr %i.q, align 8
  %i.s = shufflevector <2 x float> %1, <2 x float> %i.p, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.t = shufflevector <2 x float> %i.r, <2 x float> %2, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.u = fcmp ule <4 x float> %i.s, %i.t
  %i.v = freeze <4 x i1> %i.u
  %i.w = bitcast <4 x i1> %i.v to i4
  %i.x = icmp eq i4 %i.w, -1
  br i1 %i.x, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr i8, ptr %i.n, i64 38
  %.val = load i16, ptr %i.y, align 2, !tbaa !34
  %i.z = and i16 %.val, 4
  %.not = icmp eq i16 %i.z, 0
  br i1 %.not, label %bb.e, label %.split

.split:                                           ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !19
  %i.ac = tail call zeroext i1 %3(i32 noundef %i.l, i64 noundef %i.ab, ptr noundef %4) #14
  %i.ad = add nuw nsw i32 %.sroa.4.0.ph, 1        ; 2 uses
  br i1 %i.ac, label %.outer, label %.loopexit, !llvm.loop !55

bb.e:                                             ; preds = %bb.d
  %i.ae = icmp samesign ult i32 %.02536, 1024
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !19
  store i32 %i.ag, ptr %i.k, align 4, !tbaa !36
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 28
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !19
  %i.aj = add nuw nsw i32 %.02536, 1
  %i.ak = zext nneg i32 %.02536 to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ak
  store i32 %i.ai, ptr %i.al, align 4, !tbaa !36
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.e
  %.2 = phi i32 [ %i.i, %bb.c ], [ %i.aj, %bb.f ], [ %i.i, %bb.e ] ; 2 uses
  %i.am = icmp sgt i32 %.2, 0
  br i1 %i.am, label %bb.c, label %.loopexit, !llvm.loop !55

.loopexit:                                        ; preds = %.split, %.outer, %bb.g
  %.sroa.4.3 = phi i32 [ %.sroa.4.0.ph, %bb.g ], [ %.sroa.4.0.ph, %.outer ], [ %i.ad, %.split ]
  %.sroa.021.1 = phi i32 [ %i.o, %bb.g ], [ %.sroa.021.0.ph, %.outer ], [ %i.o, %.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.an = zext i32 %.sroa.4.3 to i64
  %i.ao = shl nuw i64 %i.an, 32
  %i.ap = zext i32 %.sroa.021.1 to i64
  %i.aq = or disjoint i64 %i.ao, %i.ap
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %.loopexit
  %.sroa.021.0.insert.insert = phi i64 [ 0, %bb.a ], [ %i.aq, %.loopexit ]
  ret i64 %.sroa.021.0.insert.insert
}

; Function Attrs: nounwind uwtable
define i64 @b2DynamicTree_RayCast(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [1024 x i32], align 16            ; 5 uses
  %5 = alloca %struct.b2RayCastInput, align 4     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !17
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.059.0.copyload = load <2 x float>, ptr %1, align 4 ; 13 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.056.0.copyload = load <2 x float>, ptr %i.e, align 4 ; 5 uses
  %i.f = fmul <2 x float> %.sroa.056.0.copyload, %.sroa.056.0.copyload
  %i.g = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.f) ; 2 uses
  %i.h = fcmp ogt float %i.g, f0x057A0000
  br i1 %i.h, label %bb.c, label %b2Normalize.exit

bb.c:                                             ; preds = %bb.b
  %sqrt.i = tail call nnan float @llvm.sqrt.f32(float %i.g)
  %i.i = fdiv nnan float 1.000000e+00, %sqrt.i
  %i.j = insertelement <2 x float> poison, float %i.i, i64 0
  %i.k = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> zeroinitializer
  %i.l = fmul <2 x float> %.sroa.056.0.copyload, %i.k
  br label %b2Normalize.exit

b2Normalize.exit:                                 ; preds = %bb.b, %bb.c
  %.sroa.012.0.i = phi <2 x float> [ %i.l, %bb.c ], [ zeroinitializer, %bb.b ] ; 3 uses
  %i.m = shufflevector <2 x float> %.sroa.012.0.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.n = extractelement <2 x float> %.sroa.012.0.i, i64 1 ; 3 uses
  %i.o = fneg float %i.n
  %.sroa.0.4.vec.extract.i97 = extractelement <2 x float> %.sroa.012.0.i, i64 0 ; 3 uses
  %6 = fcmp ogt float %i.n, 0.000000e+00
  %7 = select i1 %6, float %i.n, float %i.o
  %8 = fcmp olt float %.sroa.0.4.vec.extract.i97, 0.000000e+00
  %i.p = fneg float %.sroa.0.4.vec.extract.i97
  %i.q = select i1 %8, float %i.p, float %.sroa.0.4.vec.extract.i97
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load float, ptr %i.r, align 4, !tbaa !58 ; 2 uses
  %i.t = insertelement <2 x float> poison, float %i.s, i64 0
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer
  %i.v = fmul <2 x float> %.sroa.056.0.copyload, %i.u
  %i.w = fadd <2 x float> %.sroa.059.0.copyload, %i.v ; 4 uses
  %i.x = fcmp olt <2 x float> %.sroa.059.0.copyload, %i.w
  %i.y = select <2 x i1> %i.x, <2 x float> %.sroa.059.0.copyload, <2 x float> %i.w
  %i.z = fcmp ogt <2 x float> %.sroa.059.0.copyload, %i.w
  %i.aa = select <2 x i1> %i.z, <2 x float> %.sroa.059.0.copyload, <2 x float> %i.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !15
  store i32 %i.ac, ptr %i.a, align 16, !tbaa !36
  %i.ad = load ptr, ptr %0, align 8, !tbaa !18    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %5, ptr noundef nonnull align 4 dereferenceable(20) %1, i64 16, i1 false), !tbaa.struct !59
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.af = insertelement <2 x float> poison, float %7, i64 0
  %i.ag = insertelement <2 x float> %i.af, float %i.q, i64 1
  br label %bb.d

bb.d:                                             ; preds = %b2Normalize.exit, %select.unfold
  %.sroa.078.0191 = phi i32 [ 0, %b2Normalize.exit ], [ %.sroa.078.1, %select.unfold ] ; 2 uses
  %.sroa.4.0190 = phi i32 [ 0, %b2Normalize.exit ], [ %.sroa.4.4, %select.unfold ] ; 7 uses
  %.082189 = phi i32 [ 1, %b2Normalize.exit ], [ %.5, %select.unfold ] ; 4 uses
  %.sroa.043.0188 = phi <2 x float> [ %i.y, %b2Normalize.exit ], [ %.sroa.043.6, %select.unfold ] ; 8 uses
  %.sroa.5.0187 = phi <2 x float> [ %i.aa, %b2Normalize.exit ], [ %.sroa.5.6, %select.unfold ] ; 8 uses
  %.086186 = phi float [ %i.s, %b2Normalize.exit ], [ %.6, %select.unfold ] ; 9 uses
  %i.ah = add nsw i32 %.082189, -1                ; 8 uses
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ai ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !36 ; 3 uses
  %i.al = icmp eq i32 %i.ak, -1
  br i1 %i.al, label %select.unfold, label %bb.e, !llvm.loop !56

bb.e:                                             ; preds = %bb.d
  %i.am = sext i32 %i.ak to i64
  %i.an = getelementptr inbounds [40 x i8], ptr %i.ad, i64 %i.am ; 7 uses
  %i.ao = add nsw i32 %.sroa.078.0191, 1          ; 8 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !32
  %i.ar = and i64 %i.aq, %2
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %select.unfold, label %bb.f, !llvm.loop !56

bb.f:                                             ; preds = %bb.e
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.6.0.copyload = load <2 x float>, ptr %.sroa.6.0..sroa_idx, align 8 ; 3 uses
  %.sroa.013.0.copyload = load <2 x float>, ptr %i.an, align 8 ; 3 uses
  %i.at = shufflevector <2 x float> %.sroa.043.0188, <2 x float> %.sroa.013.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.au = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> %.sroa.5.0187, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.av = fcmp ule <4 x float> %i.at, %i.au
  %i.aw = freeze <4 x i1> %i.av
  %i.ax = bitcast <4 x i1> %i.aw to i4
  %i.ay = icmp eq i4 %i.ax, -1
  br i1 %i.ay, label %bb.g, label %select.unfold, !llvm.loop !56

bb.g:                                             ; preds = %bb.f
  %i.az = fadd <2 x float> %.sroa.6.0.copyload, %.sroa.013.0.copyload
  %i.ba = fsub <2 x float> %.sroa.6.0.copyload, %.sroa.013.0.copyload
  %i.bb = fmul <2 x float> %i.az, splat (float 5.000000e-01)
  %i.bc = fsub <2 x float> %.sroa.059.0.copyload, %i.bb
  %i.bd = fmul <2 x float> %i.m, %i.bc            ; 2 uses
  %shift = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %shift, %i.bd
  %i.be = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bf = call float @llvm.fabs.f32(float %i.be)
  %i.bg = fmul <2 x float> %i.ba, splat (float 5.000000e-01)
  %i.bh = fmul <2 x float> %i.ag, %i.bg
  %i.bi = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bh)
  %i.bj = fcmp olt float %i.bi, %i.bf
  br i1 %i.bj, label %select.unfold, label %bb.h, !llvm.loop !56

bb.h:                                             ; preds = %bb.g
  %i.bk = getelementptr i8, ptr %i.an, i64 38
  %.val = load i16, ptr %i.bk, align 2, !tbaa !34
  %i.bl = and i16 %.val, 4
  %.not = icmp eq i16 %i.bl, 0
  br i1 %.not, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  store float %.086186, ptr %i.ae, align 4, !tbaa !58
  %i.bm = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !19
  %i.bo = call float %3(ptr noundef nonnull %5, i32 noundef %i.ak, i64 noundef %i.bn, ptr noundef %4) #14 ; 5 uses
  %i.bp = add nsw i32 %.sroa.4.0190, 1            ; 3 uses
  %i.bq = fcmp une float %i.bo, 0.000000e+00
  br i1 %i.bq, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.br = fcmp ule float %i.bo, 0.000000e+00
  %i.bs = fcmp ugt float %i.bo, %.086186
  %or.cond = select i1 %i.br, i1 true, i1 %i.bs
  br i1 %or.cond, label %select.unfold, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bt = insertelement <2 x float> poison, float %i.bo, i64 0
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bv = fmul <2 x float> %.sroa.056.0.copyload, %i.bu
  %i.bw = fadd <2 x float> %.sroa.059.0.copyload, %i.bv ; 4 uses
  %i.bx = fcmp olt <2 x float> %.sroa.059.0.copyload, %i.bw
  %i.by = select <2 x i1> %i.bx, <2 x float> %.sroa.059.0.copyload, <2 x float> %i.bw
  %i.bz = fcmp ogt <2 x float> %.sroa.059.0.copyload, %i.bw
  %i.ca = select <2 x i1> %i.bz, <2 x float> %.sroa.059.0.copyload, <2 x float> %i.bw
  br label %select.unfold

bb.l:                                             ; preds = %bb.h
  %i.cb = icmp samesign ult i32 %.082189, 1024
  br i1 %i.cb, label %bb.m, label %select.unfold

bb.m:                                             ; preds = %bb.l
  %i.cc = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !19 ; 3 uses
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [40 x i8], ptr %i.ad, i64 %i.ce ; 2 uses
  %i.cg = load <2 x float>, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ci = load <2 x float>, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.an, i64 28
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !19 ; 3 uses
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds [40 x i8], ptr %i.ad, i64 %i.cl ; 2 uses
  %i.cn = load <2 x float>, ptr %i.cm, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cp = load <2 x float>, ptr %i.co, align 8
  %i.cq = fadd <2 x float> %i.cg, %i.ci
  %i.cr = fmul <2 x float> %i.cq, splat (float 5.000000e-01)
  %i.cs = fsub <2 x float> %.sroa.059.0.copyload, %i.cr ; 2 uses
  %i.ct = fmul <2 x float> %i.cs, %i.cs
  %i.cu = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ct)
  %i.cv = fadd <2 x float> %i.cn, %i.cp
  %i.cw = fmul <2 x float> %i.cv, splat (float 5.000000e-01)
  %i.cx = fsub <2 x float> %.sroa.059.0.copyload, %i.cw ; 2 uses
  %i.cy = fmul <2 x float> %i.cx, %i.cx
  %i.cz = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.cy)
  %i.da = fcmp olt float %i.cu, %i.cz             ; 2 uses
  %i.db = zext nneg i32 %.082189 to i64
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.db
  %. = select i1 %i.da, i32 %i.ck, i32 %i.cd
  %.195 = select i1 %i.da, i32 %i.cd, i32 %i.ck
  store i32 %., ptr %i.aj, align 4, !tbaa !36
  store i32 %.195, ptr %i.dc, align 4, !tbaa !36
  %.183 = add nuw nsw i32 %.082189, 1
  br label %select.unfold

select.unfold:                                    ; preds = %bb.k, %bb.j, %bb.f, %bb.e, %bb.l, %bb.m, %bb.g, %bb.d
  %.6 = phi float [ %.086186, %bb.d ], [ %.086186, %bb.e ], [ %.086186, %bb.f ], [ %.086186, %bb.l ], [ %.086186, %bb.g ], [ %.086186, %bb.m ], [ %.086186, %bb.j ], [ %i.bo, %bb.k ]
  %.sroa.5.6 = phi <2 x float> [ %.sroa.5.0187, %bb.d ], [ %.sroa.5.0187, %bb.e ], [ %.sroa.5.0187, %bb.f ], [ %.sroa.5.0187, %bb.l ], [ %.sroa.5.0187, %bb.g ], [ %.sroa.5.0187, %bb.m ], [ %.sroa.5.0187, %bb.j ], [ %i.ca, %bb.k ]
  %.sroa.043.6 = phi <2 x float> [ %.sroa.043.0188, %bb.d ], [ %.sroa.043.0188, %bb.e ], [ %.sroa.043.0188, %bb.f ], [ %.sroa.043.0188, %bb.l ], [ %.sroa.043.0188, %bb.g ], [ %.sroa.043.0188, %bb.m ], [ %.sroa.043.0188, %bb.j ], [ %i.by, %bb.k ]
  %.5 = phi i32 [ %i.ah, %bb.d ], [ %i.ah, %bb.e ], [ %i.ah, %bb.f ], [ %i.ah, %bb.l ], [ %i.ah, %bb.g ], [ %.183, %bb.m ], [ %i.ah, %bb.j ], [ %i.ah, %bb.k ] ; 2 uses
  %.sroa.4.4 = phi i32 [ %.sroa.4.0190, %bb.d ], [ %.sroa.4.0190, %bb.e ], [ %.sroa.4.0190, %bb.f ], [ %.sroa.4.0190, %bb.l ], [ %.sroa.4.0190, %bb.g ], [ %.sroa.4.0190, %bb.m ], [ %i.bp, %bb.j ], [ %i.bp, %bb.k ] ; 2 uses
  %.sroa.078.1 = phi i32 [ %.sroa.078.0191, %bb.d ], [ %i.ao, %bb.e ], [ %i.ao, %bb.f ], [ %i.ao, %bb.l ], [ %i.ao, %bb.g ], [ %i.ao, %bb.m ], [ %i.ao, %bb.j ], [ %i.ao, %bb.k ] ; 2 uses
  %i.dd = icmp sgt i32 %.5, 0
  br i1 %i.dd, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.i, %select.unfold
  %.sroa.4.5 = phi i32 [ %.sroa.4.4, %select.unfold ], [ %i.bp, %bb.i ]
  %.sroa.078.2 = phi i32 [ %.sroa.078.1, %select.unfold ], [ %i.ao, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.de = zext i32 %.sroa.4.5 to i64
  %i.df = shl nuw i64 %i.de, 32
  %i.dg = zext i32 %.sroa.078.2 to i64
  %i.dh = or disjoint i64 %i.df, %i.dg
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %.thread
  %.sroa.078.0.insert.insert = phi i64 [ 0, %bb.a ], [ %i.dh, %.thread ]
  ret i64 %.sroa.078.0.insert.insert
}

; Function Attrs: nounwind uwtable
define i64 @b2DynamicTree_BoxCast(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4) local_unnamed_addr #4 {
bb.a:
  %5 = alloca %struct.b2BoxCastInput, align 4     ; 5 uses
  %i.a = alloca [1024 x i32], align 16            ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !17
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.062.0.copyload = load <2 x float>, ptr %1, align 4 ; 8 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.9.0.copyload = load <2 x float>, ptr %.sroa.9.0..sroa_idx, align 4 ; 8 uses
  %i.e = fadd <2 x float> %.sroa.062.0.copyload, %.sroa.9.0.copyload
  %i.f = fmul <2 x float> %i.e, splat (float 5.000000e-01) ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.057.0.copyload = load <2 x float>, ptr %i.g, align 4 ; 4 uses
  %i.h = shufflevector <2 x float> %.sroa.057.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.0.4.vec.extract.i111 = extractelement <2 x float> %.sroa.057.0.copyload, i64 0 ; 3 uses
  %i.i = fsub <2 x float> %.sroa.9.0.copyload, %.sroa.062.0.copyload
  %i.j = fmul <2 x float> %i.i, splat (float 5.000000e-01)
  %i.k = extractelement <2 x float> %.sroa.057.0.copyload, i64 1 ; 3 uses
  %i.l = fneg float %i.k
  %6 = fcmp ogt float %i.k, 0.000000e+00
  %7 = select i1 %6, float %i.k, float %i.l
  %8 = fcmp olt float %.sroa.0.4.vec.extract.i111, 0.000000e+00
  %i.m = fneg float %.sroa.0.4.vec.extract.i111
  %i.n = select i1 %8, float %i.m, float %.sroa.0.4.vec.extract.i111
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load float, ptr %i.o, align 4, !tbaa !62 ; 2 uses
  %i.q = insertelement <2 x float> poison, float %i.p, i64 0
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> zeroinitializer
  %i.s = fmul <2 x float> %i.r, %.sroa.057.0.copyload ; 2 uses
  %i.t = fadd <2 x float> %.sroa.062.0.copyload, %i.s ; 2 uses
  %i.u = fcmp olt <2 x float> %.sroa.062.0.copyload, %i.t
  %i.v = select <2 x i1> %i.u, <2 x float> %.sroa.062.0.copyload, <2 x float> %i.t
  %i.w = fadd <2 x float> %.sroa.9.0.copyload, %i.s ; 2 uses
  %i.x = fcmp ogt <2 x float> %.sroa.9.0.copyload, %i.w
  %i.y = select <2 x i1> %i.x, <2 x float> %.sroa.9.0.copyload, <2 x float> %i.w
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %5, ptr noundef nonnull align 4 dereferenceable(28) %1, i64 24, i1 false), !tbaa.struct !63
  %i.z = load ptr, ptr %0, align 8, !tbaa !18     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !15
  store i32 %i.ab, ptr %i.a, align 16, !tbaa !36
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ad = insertelement <2 x float> poison, float %7, i64 0
  %i.ae = insertelement <2 x float> %i.ad, float %i.n, i64 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %select.unfold
  %.sroa.085.0236 = phi i32 [ 0, %bb.b ], [ %.sroa.085.1, %select.unfold ] ; 2 uses
  %.sroa.4.0235 = phi i32 [ 0, %bb.b ], [ %.sroa.4.4, %select.unfold ] ; 7 uses
  %.089234 = phi i32 [ 1, %bb.b ], [ %.5, %select.unfold ] ; 4 uses
  %.sroa.045.0233 = phi <2 x float> [ %i.v, %bb.b ], [ %.sroa.045.6, %select.unfold ] ; 8 uses
  %.sroa.5.0232 = phi <2 x float> [ %i.y, %bb.b ], [ %.sroa.5.6, %select.unfold ] ; 8 uses
  %.093231 = phi float [ %i.p, %bb.b ], [ %.6, %select.unfold ] ; 9 uses
  %i.af = add nsw i32 %.089234, -1                ; 8 uses
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ag ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !36 ; 3 uses
  %i.aj = icmp eq i32 %i.ai, -1
  br i1 %i.aj, label %select.unfold, label %bb.d, !llvm.loop !60

bb.d:                                             ; preds = %bb.c
  %i.ak = sext i32 %i.ai to i64
  %i.al = getelementptr inbounds [40 x i8], ptr %i.z, i64 %i.ak ; 7 uses
  %i.am = add nsw i32 %.sroa.085.0236, 1          ; 8 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !32
  %i.ap = and i64 %i.ao, %2
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %select.unfold, label %bb.e, !llvm.loop !60

bb.e:                                             ; preds = %bb.d
  %i.ar = load <2 x float>, ptr %i.al, align 8    ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.at = load <2 x float>, ptr %i.as, align 8    ; 3 uses
  %i.au = shufflevector <2 x float> %.sroa.045.0233, <2 x float> %i.ar, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.av = shufflevector <2 x float> %i.at, <2 x float> %.sroa.5.0232, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aw = fcmp ule <4 x float> %i.au, %i.av
  %i.ax = freeze <4 x i1> %i.aw
  %i.ay = bitcast <4 x i1> %i.ax to i4
  %i.az = icmp eq i4 %i.ay, -1
  br i1 %i.az, label %bb.f, label %select.unfold, !llvm.loop !60

bb.f:                                             ; preds = %bb.e
  %i.ba = fadd <2 x float> %i.ar, %i.at
  %i.bb = fsub <2 x float> %i.at, %i.ar
  %i.bc = fmul <2 x float> %i.ba, splat (float 5.000000e-01)
  %i.bd = fsub <2 x float> %i.f, %i.bc
  %i.be = fmul <2 x float> %i.h, %i.bd            ; 2 uses
  %shift = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %shift, %i.be
  %i.bf = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bg = call float @llvm.fabs.f32(float %i.bf)
  %i.bh = fmul <2 x float> %i.bb, splat (float 5.000000e-01)
  %i.bi = fadd <2 x float> %i.j, %i.bh
  %i.bj = fmul <2 x float> %i.ae, %i.bi
  %i.bk = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bj)
  %i.bl = fcmp olt float %i.bk, %i.bg
  br i1 %i.bl, label %select.unfold, label %bb.g, !llvm.loop !60

bb.g:                                             ; preds = %bb.f
  %i.bm = getelementptr i8, ptr %i.al, i64 38
  %.val = load i16, ptr %i.bm, align 2, !tbaa !34
  %i.bn = and i16 %.val, 4
  %.not = icmp eq i16 %i.bn, 0
  br i1 %.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  store float %.093231, ptr %i.ac, align 4, !tbaa !62
  %i.bo = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !19
  %i.bq = call float %3(ptr noundef nonnull %5, i32 noundef %i.ai, i64 noundef %i.bp, ptr noundef %4) #14 ; 5 uses
  %i.br = add nsw i32 %.sroa.4.0235, 1            ; 3 uses
  %i.bs = fcmp une float %i.bq, 0.000000e+00
  br i1 %i.bs, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.bt = fcmp ogt float %i.bq, 0.000000e+00
  %i.bu = fcmp olt float %i.bq, %.093231
  %or.cond = select i1 %i.bt, i1 %i.bu, i1 false
  br i1 %or.cond, label %bb.j, label %select.unfold

bb.j:                                             ; preds = %bb.i
  %i.bv = load <2 x float>, ptr %i.g, align 4
  %i.bw = insertelement <2 x float> poison, float %i.bq, i64 0
  %i.bx = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.by = fmul <2 x float> %i.bx, %i.bv           ; 2 uses
  %i.bz = fadd <2 x float> %.sroa.062.0.copyload, %i.by ; 2 uses
  %i.ca = fcmp olt <2 x float> %.sroa.062.0.copyload, %i.bz
  %i.cb = select <2 x i1> %i.ca, <2 x float> %.sroa.062.0.copyload, <2 x float> %i.bz
  %i.cc = fadd <2 x float> %.sroa.9.0.copyload, %i.by ; 2 uses
  %i.cd = fcmp ogt <2 x float> %.sroa.9.0.copyload, %i.cc
  %i.ce = select <2 x i1> %i.cd, <2 x float> %.sroa.9.0.copyload, <2 x float> %i.cc
  br label %select.unfold

bb.k:                                             ; preds = %bb.g
  %i.cf = icmp samesign ult i32 %.089234, 1024
  br i1 %i.cf, label %bb.l, label %select.unfold

bb.l:                                             ; preds = %bb.k
  %i.cg = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !19 ; 3 uses
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [40 x i8], ptr %i.z, i64 %i.ci ; 2 uses
  %i.ck = load <2 x float>, ptr %i.cj, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cm = load <2 x float>, ptr %i.cl, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.al, i64 28
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !19 ; 3 uses
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds [40 x i8], ptr %i.z, i64 %i.cp ; 2 uses
  %i.cr = load <2 x float>, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.ct = load <2 x float>, ptr %i.cs, align 8
  %i.cu = fadd <2 x float> %i.ck, %i.cm
  %i.cv = fmul <2 x float> %i.cu, splat (float 5.000000e-01)
  %i.cw = fsub <2 x float> %i.f, %i.cv            ; 2 uses
  %i.cx = fmul <2 x float> %i.cw, %i.cw
  %i.cy = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.cx)
  %i.cz = fadd <2 x float> %i.cr, %i.ct
  %i.da = fmul <2 x float> %i.cz, splat (float 5.000000e-01)
  %i.db = fsub <2 x float> %i.f, %i.da            ; 2 uses
  %i.dc = fmul <2 x float> %i.db, %i.db
  %i.dd = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.dc)
  %i.de = fcmp olt float %i.cy, %i.dd             ; 2 uses
  %i.df = zext nneg i32 %.089234 to i64
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.df
  %. = select i1 %i.de, i32 %i.co, i32 %i.ch
  %.239 = select i1 %i.de, i32 %i.ch, i32 %i.co
  store i32 %., ptr %i.ah, align 4, !tbaa !36
  store i32 %.239, ptr %i.dg, align 4, !tbaa !36
  %.190 = add nuw nsw i32 %.089234, 1
  br label %select.unfold

select.unfold:                                    ; preds = %bb.j, %bb.i, %bb.e, %bb.d, %bb.k, %bb.l, %bb.f, %bb.c
  %.6 = phi float [ %.093231, %bb.c ], [ %.093231, %bb.d ], [ %.093231, %bb.e ], [ %.093231, %bb.k ], [ %.093231, %bb.f ], [ %.093231, %bb.l ], [ %.093231, %bb.i ], [ %i.bq, %bb.j ]
  %.sroa.5.6 = phi <2 x float> [ %.sroa.5.0232, %bb.c ], [ %.sroa.5.0232, %bb.d ], [ %.sroa.5.0232, %bb.e ], [ %.sroa.5.0232, %bb.k ], [ %.sroa.5.0232, %bb.f ], [ %.sroa.5.0232, %bb.l ], [ %.sroa.5.0232, %bb.i ], [ %i.ce, %bb.j ]
  %.sroa.045.6 = phi <2 x float> [ %.sroa.045.0233, %bb.c ], [ %.sroa.045.0233, %bb.d ], [ %.sroa.045.0233, %bb.e ], [ %.sroa.045.0233, %bb.k ], [ %.sroa.045.0233, %bb.f ], [ %.sroa.045.0233, %bb.l ], [ %.sroa.045.0233, %bb.i ], [ %i.cb, %bb.j ]
  %.5 = phi i32 [ %i.af, %bb.c ], [ %i.af, %bb.d ], [ %i.af, %bb.e ], [ %i.af, %bb.k ], [ %i.af, %bb.f ], [ %.190, %bb.l ], [ %i.af, %bb.i ], [ %i.af, %bb.j ] ; 2 uses
  %.sroa.4.4 = phi i32 [ %.sroa.4.0235, %bb.c ], [ %.sroa.4.0235, %bb.d ], [ %.sroa.4.0235, %bb.e ], [ %.sroa.4.0235, %bb.k ], [ %.sroa.4.0235, %bb.f ], [ %.sroa.4.0235, %bb.l ], [ %i.br, %bb.i ], [ %i.br, %bb.j ] ; 2 uses
  %.sroa.085.1 = phi i32 [ %.sroa.085.0236, %bb.c ], [ %i.am, %bb.d ], [ %i.am, %bb.e ], [ %i.am, %bb.k ], [ %i.am, %bb.f ], [ %i.am, %bb.l ], [ %i.am, %bb.i ], [ %i.am, %bb.j ] ; 2 uses
  %i.dh = icmp sgt i32 %.5, 0
  br i1 %i.dh, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.h, %select.unfold
  %.sroa.4.5 = phi i32 [ %.sroa.4.4, %select.unfold ], [ %i.br, %bb.h ]
  %.sroa.085.2 = phi i32 [ %.sroa.085.1, %select.unfold ], [ %i.am, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  %i.di = zext i32 %.sroa.4.5 to i64
  %i.dj = shl nuw i64 %i.di, 32
  %i.dk = zext i32 %.sroa.085.2 to i64
  %i.dl = or disjoint i64 %i.dj, %i.dk
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %.thread
  %.sroa.085.0.insert.insert = phi i64 [ 0, %bb.a ], [ %i.dl, %.thread ]
  ret i64 %.sroa.085.0.insert.insert
}

; Function Attrs: nounwind uwtable
define i32 @b2DynamicTree_Rebuild(ptr nofree noundef captures(none) %0, i1 noundef zeroext %1) local_unnamed_addr #4 {
bb.a:
  %2 = alloca [1024 x %struct.b2RebuildItem], align 16 ; 11 uses
  %i.a = alloca [1024 x i32], align 16            ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !21   ; 4 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !24   ; 2 uses
  %i.g = icmp sgt i32 %i.c, %i.f
  br i1 %i.g, label %bb.c, label %._crit_edge80

._crit_edge80:                                    ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !25
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = sdiv i32 %i.c, 2
  %i.i = add nsw i32 %i.h, %i.c                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !23
  %i.l = sext i32 %i.f to i64
  %i.m = shl nsw i64 %i.l, 2
  tail call void @b2Free(ptr noundef %i.k, i64 noundef %i.m) #14
  %i.n = sext i32 %i.i to i64                     ; 2 uses
  %i.o = shl nsw i64 %i.n, 2
  %i.p = tail call ptr @b2Alloc(i64 noundef %i.o) #14
  store ptr %i.p, ptr %i.j, align 8, !tbaa !23
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !25
  %i.s = load i32, ptr %i.e, align 8, !tbaa !24
  %i.t = sext i32 %i.s to i64
  %i.u = shl nsw i64 %i.t, 3
  tail call void @b2Free(ptr noundef %i.r, i64 noundef %i.u) #14
  %i.v = shl nsw i64 %i.n, 3
  %i.w = tail call ptr @b2Alloc(i64 noundef %i.v) #14 ; 2 uses
  store ptr %i.w, ptr %i.q, align 8, !tbaa !25
  store i32 %i.i, ptr %i.e, align 8, !tbaa !24
  br label %bb.d
end_hunk_0
