Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/sequential_integer_attribute_encoder?download=true
inline.NumInlined: 2377
inline.NumDeleted: 912
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_ZN5draco44MeshPredictionSchemeTexCoordsPortableEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEE:bb.a
bb.f:                                             ; preds = %._crit_edge.i
  %i.ad = trunc nuw nsw i64 %i.ac to i32          ; 2 uses
  %i.ae = add nuw nsw i32 %i.ad, 1                ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !204
  %i.ag = lshr i32 %i.ae, 1                       ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i32 %i.ag, ptr %i.ah, align 8, !tbaa !205
  %i.ai = sub nsw i32 0, %i.ag
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !206
  %i.ak = and i32 %i.ad, 1
  %.not.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i, label %_ZN5draco37PredictionSchemeWrapEncodingTransformIiiE4InitEPKiii.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = add nsw i32 %i.ag, -1
  store i32 %i.al, ptr %i.ah, align 8, !tbaa !205
  br label %_ZN5draco37PredictionSchemeWrapEncodingTransformIiiE4InitEPKiii.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 3 uses
  %.01923.i = phi i32 [ %i.r, %.lr.ph.preheader.i.new ], [ %.1.i.1, %.lr.ph.i ] ; 2 uses
  %.02022.i = phi i32 [ %i.r, %.lr.ph.preheader.i.new ], [ %.121.i.1, %.lr.ph.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !96 ; 3 uses
  %i.ao = icmp slt i32 %i.an, %.02022.i
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.an, i32 %.01923.i)
  %.121.i = tail call i32 @llvm.smin.i32(i32 %i.an, i32 %.02022.i) ; 2 uses
  %.1.i = select i1 %i.ao, i32 %.01923.i, i32 %spec.select.i ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !96 ; 3 uses
  %i.as = icmp slt i32 %i.ar, %.121.i
  %spec.select.i.1 = tail call i32 @llvm.smax.i32(i32 %i.ar, i32 %.1.i)
  %.121.i.1 = tail call i32 @llvm.smin.i32(i32 %i.ar, i32 %.121.i) ; 3 uses
  %.1.i.1 = select i1 %i.as, i32 %.1.i, i32 %spec.select.i.1 ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !1

_ZN5draco37PredictionSchemeWrapEncodingTransformIiiE4InitEPKiii.exit: ; preds = %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit.i, %._crit_edge.i, %bb.f, %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !159 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !209
  %i.ax = load ptr, ptr %i.au, align 8, !tbaa !210
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = lshr exact i64 %i.ba, 2
  %i.bc = trunc i64 %i.bb to i32
  %.02028 = add i32 %i.bc, -1                     ; 2 uses
  %i.bd = icmp slt i32 %.02028, 0
  br i1 %i.bd, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5draco37PredictionSchemeWrapEncodingTransformIiiE4InitEPKiii.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.bk = zext nneg i32 %.02028 to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %_ZNK5draco37PredictionSchemeWrapEncodingTransformIiiE17ComputeCorrectionEPKiS3_Pi.exit
  %indvars.iv = phi i64 [ %i.bk, %.lr.ph ], [ %indvars.iv.next, %_ZNK5draco37PredictionSchemeWrapEncodingTransformIiiE17ComputeCorrectionEPKiS3_Pi.exit ] ; 7 uses
  %i.bl = load ptr, ptr %i.at, align 8, !tbaa !159 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !209
  %i.bo = load ptr, ptr %i.bl, align 8, !tbaa !210 ; 2 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = ashr exact i64 %i.br, 2                 ; 2 uses
  %.not.i.i21 = icmp ugt i64 %i.bs, %indvars.iv
  br i1 %.not.i.i21, label %_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE2atEm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.6, i64 noundef %indvars.iv, i64 noundef %i.bs) #20
  unreachable

_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE2atEm.exit: ; preds = %bb.h
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !212
  store i32 %i.bu, ptr %6, align 4, !tbaa !212
  %i.bv = trunc nuw nsw i64 %indvars.iv to i32
  %i.bw = call noundef zeroext i1 @_ZN5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21ComputePredictedValueILb1EEEbNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKii(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %6, ptr noundef %1, i32 noundef %i.bv) ; 3 uses
  br i1 %i.bw, label %bb.j, label %.critedge

bb.j:                                             ; preds = %_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE2atEm.exit
  %i.bx = mul nsw i64 %indvars.iv, %i.e           ; 2 uses
  %i.by = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bx
  %i.bz = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bx
  %i.ca = load i32, ptr %i.c, align 8, !tbaa !203
  %i.cb = icmp sgt i32 %i.ca, 0
  br i1 %i.cb, label %.lr.ph.i.i, label %_ZNK5draco37PredictionSchemeWrapEncodingTransformIiiE17ComputeCorrectionEPKiS3_Pi.exit

.lr.ph.i.i:                                       ; preds = %bb.j, %bb.t
  %indvars.iv.i23 = phi i64 [ %indvars.iv.next.i24, %bb.t ], [ 0, %bb.j ] ; 4 uses
  %.01516.i = phi ptr [ %i.cc, %bb.t ], [ %i.be, %bb.j ]
  %i.cc = load ptr, ptr %i.d, align 8             ; 4 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.p, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.p ] ; 4 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %.01516.i, i64 %indvars.iv.i.i
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !96 ; 3 uses
  %i.cf = load i32, ptr %i.bf, align 8, !tbaa !202 ; 2 uses
  %i.cg = icmp sgt i32 %i.ce, %i.cf
  br i1 %i.cg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv.i.i
  store i32 %i.cf, ptr %i.ch, align 4, !tbaa !96
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.ci = load i32, ptr %i.bg, align 4, !tbaa !201 ; 2 uses
  %i.cj = icmp slt i32 %i.ce, %i.ci
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv.i.i ; 2 uses
  br i1 %i.cj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 %i.ci, ptr %i.ck, align 4, !tbaa !96
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  store i32 %i.ce, ptr %i.ck, align 4, !tbaa !96
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.l
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.cl = load i32, ptr %i.c, align 8, !tbaa !203
  %i.cm = sext i32 %i.cl to i64
  %i.cn = icmp slt i64 %indvars.iv.next.i.i, %i.cm
  br i1 %i.cn, label %bb.k, label %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.loopexit.i, !llvm.loop !2

_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.loopexit.i: ; preds = %bb.p
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.i23
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !96
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv.i23
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !96
  %i.cs = sub nsw i32 %i.cp, %i.cr                ; 5 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.i23 ; 2 uses
  store i32 %i.cs, ptr %i.ct, align 4, !tbaa !96
  %i.cu = load i32, ptr %i.bh, align 4, !tbaa !206
  %i.cv = icmp slt i32 %i.cs, %i.cu
  br i1 %i.cv, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.loopexit.i
  %i.cw = load i32, ptr %i.bj, align 4, !tbaa !204
  %i.cx = add nsw i32 %i.cw, %i.cs
  br label %.sink.split.i

bb.r:                                             ; preds = %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.loopexit.i
  %i.cy = load i32, ptr %i.bi, align 8, !tbaa !205
  %i.cz = icmp sgt i32 %i.cs, %i.cy
  br i1 %i.cz, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.da = load i32, ptr %i.bj, align 4, !tbaa !204
  %i.db = sub nsw i32 %i.cs, %i.da
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.s, %bb.q
  %.sink.i = phi i32 [ %i.db, %bb.s ], [ %i.cx, %bb.q ]
  store i32 %.sink.i, ptr %i.ct, align 4, !tbaa !96
  br label %bb.t

bb.t:                                             ; preds = %.sink.split.i, %bb.r
  %indvars.iv.next.i24 = add nuw nsw i64 %indvars.iv.i23, 1 ; 2 uses
  %i.dc = load i32, ptr %i.c, align 8, !tbaa !203
  %i.dd = sext i32 %i.dc to i64
  %i.de = icmp slt i64 %indvars.iv.next.i24, %i.dd
  br i1 %i.de, label %.lr.ph.i.i, label %_ZNK5draco37PredictionSchemeWrapEncodingTransformIiiE17ComputeCorrectionEPKiS3_Pi.exit, !llvm.loop !3

_ZNK5draco37PredictionSchemeWrapEncodingTransformIiiE17ComputeCorrectionEPKiS3_Pi.exit: ; preds = %bb.t, %bb.j
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.df = icmp slt i64 %indvars.iv, 1
  br i1 %i.df, label %.critedge, label %bb.h, !llvm.loop !459

.critedge:                                        ; preds = %_ZNK5draco37PredictionSchemeWrapEncodingTransformIiiE17ComputeCorrectionEPKiS3_Pi.exit, %_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE2atEm.exit, %_ZN5draco37PredictionSchemeWrapEncodingTransformIiiE4InitEPKiii.exit
  %.lcssa26 = phi i1 [ true, %_ZN5draco37PredictionSchemeWrapEncodingTransformIiiE4InitEPKiii.exit ], [ %i.bw, %_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE2atEm.exit ], [ %i.bw, %_ZNK5draco37PredictionSchemeWrapEncodingTransformIiiE17ComputeCorrectionEPKiS3_Pi.exit ]
  ret i1 %.lcssa26
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21ComputePredictedValueILb1EEEbNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKii(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr nofreeobj noundef align 4 dead_on_return dereferenceable(4) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.draco::IndexType", align 4  ; 4 uses
  %5 = alloca %"class.draco::IndexType", align 4  ; 4 uses
  %6 = alloca %"class.draco::IndexType", align 4  ; 4 uses
  %7 = alloca %"class.draco::VectorD.151", align 8 ; 8 uses
  %8 = alloca %"class.draco::VectorD.151", align 8 ; 8 uses
  %9 = alloca %"class.draco::VectorD.151", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i32, ptr %1, align 4, !tbaa !212    ; 5 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %10 = insertelement <2 x i32> poison, i32 %i.b, i64 0
  %11 = shufflevector <2 x i32> %10, <2 x i32> poison, <2 x i32> zeroinitializer
  %12 = add nuw <2 x i32> %11, <i32 0, i32 1>
  %13 = urem <2 x i32> %12, splat (i32 3)
  %14 = icmp eq <2 x i32> %13, zeroinitializer    ; 2 uses
  %15 = extractelement <2 x i1> %14, i64 1
  %spec.select.i.i.a = select i1 %15, i32 -2, i32 1
  %spec.select.i.i = add i32 %i.b, %spec.select.i.i.a ; 2 uses
  %16 = extractelement <2 x i1> %14, i64 0
  br i1 %16, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add i32 %i.b, -1
  br label %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

bb.d:                                             ; preds = %bb.b
  %i.e = add i32 %i.b, 2
  br label %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.sink.i.i187 = phi i32 [ %spec.select.i.i, %bb.c ], [ %spec.select.i.i, %bb.d ], [ -1, %bb.a ]
  %.sink.i.i59 = phi i32 [ %i.d, %bb.c ], [ %i.e, %bb.d ], [ -1, %bb.a ]
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !158
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.h = zext i32 %.sink.i.i187 to i64
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !233, !noalias !490 ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.h
  %i.k = load i32, ptr %i.j, align 4, !tbaa !235, !noalias !490
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !160  ; 2 uses
  %i.n = sext i32 %i.k to i64                     ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !149
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !101  ; 3 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 2                   ; 4 uses
  %.not.i.i60 = icmp ugt i64 %i.u, %i.n
  br i1 %.not.i.i60, label %_ZNKSt6vectorIiSaIiEE2atEm.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.6, i64 noundef %i.n, i64 noundef %i.u) #20
  unreachable

_ZNKSt6vectorIiSaIiEE2atEm.exit:                  ; preds = %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.v = zext i32 %.sink.i.i59 to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !235, !noalias !491
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.n
  %i.z = load i32, ptr %i.y, align 4, !tbaa !96   ; 4 uses
  %i.aa = sext i32 %i.x to i64                    ; 3 uses
  %.not.i.i61 = icmp ugt i64 %i.u, %i.aa
  br i1 %.not.i.i61, label %_ZNKSt6vectorIiSaIiEE2atEm.exit62, label %bb.f

bb.f:                                             ; preds = %_ZNKSt6vectorIiSaIiEE2atEm.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.6, i64 noundef %i.aa, i64 noundef %i.u) #20
  unreachable

_ZNKSt6vectorIiSaIiEE2atEm.exit62:                ; preds = %_ZNKSt6vectorIiSaIiEE2atEm.exit
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !96 ; 3 uses
  %i.ad = icmp slt i32 %i.ac, %3
  %i.ae = icmp slt i32 %i.z, %3                   ; 2 uses
  %or.cond = select i1 %i.ad, i1 %i.ae, i1 false
  br i1 %or.cond, label %bb.g, label %bb.n

bb.g:                                             ; preds = %_ZNKSt6vectorIiSaIiEE2atEm.exit62
  %i.af = shl nsw i32 %i.z, 1
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ag ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !96, !noalias !492 ; 3 uses
  %i.aj = sext i32 %i.ai to i64                   ; 3 uses
  %i.ak = getelementptr i8, ptr %i.ah, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !96, !noalias !492 ; 3 uses
  %i.am = sext i32 %i.al to i64                   ; 3 uses
  %i.an = shl nsw i32 %i.ac, 1
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ao ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !96, !noalias !493 ; 2 uses
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr i8, ptr %i.ap, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !96, !noalias !493 ; 2 uses
  %i.au = sext i32 %i.at to i64
  %.not.i = icmp eq i32 %i.aq, %i.ai
  %.not.1.i = icmp eq i32 %i.at, %i.al
  %.not.lcssa.i = select i1 %.not.i, i1 %.not.1.i, i1 false
  br i1 %.not.lcssa.i, label %.thread, label %bb.h

.thread:                                          ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ai, ptr %i.av, align 8, !tbaa !96
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.al, ptr %i.aw, align 4, !tbaa !96
  br label %.loopexit

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !494)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !242, !noalias !494
  %i.az = sext i32 %3 to i64
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !93, !noalias !494 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false), !tbaa !128, !alias.scope !494
  %i.bc = load ptr, ptr %0, align 8, !tbaa !241, !noalias !494 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 100
  %i.be = load i8, ptr %i.bd, align 4, !tbaa !91, !range !61, !noalias !495, !noundef !62
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit, label %.else.i

.else.i:                                          ; preds = %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 72
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !495
  %i.bi = zext i32 %i.bb to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bi
  %storemerge.i.else.val.i = load i32, ptr %i.bj, align 4, !tbaa !96, !noalias !495
  br label %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit

_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit: ; preds = %bb.h, %.else.i
  %storemerge.i.i = phi i32 [ %i.bb, %bb.h ], [ %storemerge.i.else.val.i, %.else.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !494
  store i32 %storemerge.i.i, ptr %6, align 4, !tbaa !86, !noalias !494
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.bl = load i8, ptr %i.bk, align 8, !tbaa !121, !noalias !494
  %i.bm = call noundef zeroext i1 @_ZNK5draco17GeometryAttribute12ConvertValueIlEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEaPT_(ptr noundef nonnull align 8 dereferenceable(64) %i.bc, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %6, i8 noundef signext %i.bl, ptr noundef nonnull align 8 %7) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !494
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !496)
  %i.bn = load ptr, ptr %i.ax, align 8, !tbaa !242, !noalias !496
  %i.bo = sext i32 %i.z to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !93, !noalias !496 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false), !tbaa !128, !alias.scope !496
  %i.br = load ptr, ptr %0, align 8, !tbaa !241, !noalias !496 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 100
  %i.bt = load i8, ptr %i.bs, align 4, !tbaa !91, !range !61, !noalias !497, !noundef !62
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit66, label %.else.i63

.else.i63:                                        ; preds = %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 72
  %i.bw = load ptr, ptr %i.bv, align 8, !noalias !497
  %i.bx = zext i32 %i.bq to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.bx
  %storemerge.i.else.val.i64 = load i32, ptr %i.by, align 4, !tbaa !96, !noalias !497
  br label %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit66

_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit66: ; preds = %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit, %.else.i63
  %storemerge.i.i65 = phi i32 [ %i.bq, %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit ], [ %storemerge.i.else.val.i64, %.else.i63 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !496
  store i32 %storemerge.i.i65, ptr %5, align 4, !tbaa !86, !noalias !496
  %i.bz = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.ca = load i8, ptr %i.bz, align 8, !tbaa !121, !noalias !496
  %i.cb = call noundef zeroext i1 @_ZNK5draco17GeometryAttribute12ConvertValueIlEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEaPT_(ptr noundef nonnull align 8 dereferenceable(64) %i.br, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %5, i8 noundef signext %i.ca, ptr noundef nonnull align 8 %8) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !496
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !498)
  %i.cc = load ptr, ptr %i.ax, align 8, !tbaa !242, !noalias !498
  %i.cd = sext i32 %i.ac to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !93, !noalias !498 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false), !tbaa !128, !alias.scope !498
  %i.cg = load ptr, ptr %0, align 8, !tbaa !241, !noalias !498 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 100
  %i.ci = load i8, ptr %i.ch, align 4, !tbaa !91, !range !61, !noalias !499, !noundef !62
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit70, label %.else.i67

.else.i67:                                        ; preds = %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit66
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 72
  %i.cl = load ptr, ptr %i.ck, align 8, !noalias !499
  %i.cm = zext i32 %i.cf to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.cm
  %storemerge.i.else.val.i68 = load i32, ptr %i.cn, align 4, !tbaa !96, !noalias !499
  br label %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit70

_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit70: ; preds = %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit66, %.else.i67
  %storemerge.i.i69 = phi i32 [ %i.cf, %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit66 ], [ %storemerge.i.else.val.i68, %.else.i67 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !498
  store i32 %storemerge.i.i69, ptr %4, align 4, !tbaa !86, !noalias !498
  %i.co = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.cp = load i8, ptr %i.co, align 8, !tbaa !121, !noalias !498
  %i.cq = call noundef zeroext i1 @_ZNK5draco17GeometryAttribute12ConvertValueIlEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEaPT_(ptr noundef nonnull align 8 dereferenceable(64) %i.cg, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %4, i8 noundef signext %i.cp, ptr noundef nonnull align 8 %9) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !498
  %i.cr = load i64, ptr %9, align 8, !tbaa !128, !noalias !500
  %i.cs = load i64, ptr %8, align 8, !tbaa !128, !noalias !500 ; 3 uses
  %i.ct = sub nsw i64 %i.cr, %i.cs                ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !128, !noalias !500
  %i.cw = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !128, !noalias !500 ; 3 uses
  %i.cy = sub nsw i64 %i.cv, %i.cx                ; 5 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !128, !noalias !500
  %i.db = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !128, !noalias !500 ; 3 uses
  %i.dd = sub nsw i64 %i.da, %i.dc                ; 5 uses
  %i.de = mul nsw i64 %i.ct, %i.ct
  %i.df = mul nsw i64 %i.cy, %i.cy
  %i.dg = add nuw nsw i64 %i.df, %i.de
  %i.dh = mul nsw i64 %i.dd, %i.dd
  %i.di = add nuw nsw i64 %i.dg, %i.dh            ; 12 uses
  %.not = icmp eq i64 %i.di, 0
  br i1 %.not, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit70
  %i.dj = load i64, ptr %7, align 8, !tbaa !128, !noalias !501 ; 2 uses
  %i.dk = sub nsw i64 %i.dj, %i.cs
  %i.dl = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !128, !noalias !501 ; 2 uses
  %i.dn = sub nsw i64 %i.dm, %i.cx
  %i.do = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !128, !noalias !501 ; 2 uses
  %i.dq = sub nsw i64 %i.dp, %i.dc
  %i.dr = mul nsw i64 %i.dk, %i.ct
  %i.ds = mul nsw i64 %i.dn, %i.cy
  %i.dt = add nsw i64 %i.ds, %i.dr
  %i.du = mul nsw i64 %i.dq, %i.dd
  %i.dv = add nsw i64 %i.dt, %i.du                ; 6 uses
  %i.dw = sub nsw i64 %i.ar, %i.aj                ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN5draco44MeshPredictionSchemeTexCoordsPortableEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEE:bb.a

bb.f:                                             ; preds = %._crit_edge.i
  %i.ad = trunc nuw nsw i64 %i.ac to i32          ; 2 uses
  %i.ae = add nuw nsw i32 %i.ad, 1                ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !204
  %i.ag = lshr i32 %i.ae, 1                       ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i32 %i.ag, ptr %i.ah, align 8, !tbaa !205
  %i.ai = sub nsw i32 0, %i.ag
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !206
  %i.ak = and i32 %i.ad, 1
  %.not.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i, label %_ZN5draco37PredictionSchemeWrapEncodingTransformIiiE4InitEPKiii.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = add nsw i32 %i.ag, -1
  store i32 %i.al, ptr %i.ah, align 8, !tbaa !205
  br label %_ZN5draco37PredictionSchemeWrapEncodingTransformIiiE4InitEPKiii.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 3 uses
  %.01923.i = phi i32 [ %i.r, %.lr.ph.preheader.i.new ], [ %.1.i.1, %.lr.ph.i ] ; 2 uses
  %.02022.i = phi i32 [ %i.r, %.lr.ph.preheader.i.new ], [ %.121.i.1, %.lr.ph.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !96 ; 3 uses
  %i.ao = icmp slt i32 %i.an, %.02022.i
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.an, i32 %.01923.i)
  %.121.i = tail call i32 @llvm.smin.i32(i32 %i.an, i32 %.02022.i) ; 2 uses
  %.1.i = select i1 %i.ao, i32 %.01923.i, i32 %spec.select.i ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !96 ; 3 uses
  %i.as = icmp slt i32 %i.ar, %.121.i
  %spec.select.i.1 = tail call i32 @llvm.smax.i32(i32 %i.ar, i32 %.1.i)
  %.121.i.1 = tail call i32 @llvm.smin.i32(i32 %i.ar, i32 %.121.i) ; 3 uses
  %.1.i.1 = select i1 %i.as, i32 %.1.i, i32 %spec.select.i.1 ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !1

_ZN5draco37PredictionSchemeWrapEncodingTransformIiiE4InitEPKiii.exit: ; preds = %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit.i, %._crit_edge.i, %bb.f, %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !165 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !209
  %i.ax = load ptr, ptr %i.au, align 8, !tbaa !210
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = lshr exact i64 %i.ba, 2
  %i.bc = trunc i64 %i.bb to i32
  %.02028 = add i32 %i.bc, -1                     ; 2 uses
  %i.bd = icmp slt i32 %.02028, 0
  br i1 %i.bd, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5draco37PredictionSchemeWrapEncodingTransformIiiE4InitEPKiii.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.bk = zext nneg i32 %.02028 to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %_ZNK5draco37PredictionSchemeWrapEncodingTransformIiiE17ComputeCorrectionEPKiS3_Pi.exit
  %indvars.iv = phi i64 [ %i.bk, %.lr.ph ], [ %indvars.iv.next, %_ZNK5draco37PredictionSchemeWrapEncodingTransformIiiE17ComputeCorrectionEPKiS3_Pi.exit ] ; 7 uses
  %i.bl = load ptr, ptr %i.at, align 8, !tbaa !165 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !209
  %i.bo = load ptr, ptr %i.bl, align 8, !tbaa !210 ; 2 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = ashr exact i64 %i.br, 2                 ; 2 uses
  %.not.i.i21 = icmp ugt i64 %i.bs, %indvars.iv
  br i1 %.not.i.i21, label %_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE2atEm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.6, i64 noundef %indvars.iv, i64 noundef %i.bs) #20
  unreachable

_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE2atEm.exit: ; preds = %bb.h
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !212
  store i32 %i.bu, ptr %6, align 4, !tbaa !212
  %i.bv = trunc nuw nsw i64 %indvars.iv to i32
  %i.bw = call noundef zeroext i1 @_ZN5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21ComputePredictedValueILb1EEEbNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKii(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %6, ptr noundef %1, i32 noundef %i.bv) ; 3 uses
  br i1 %i.bw, label %bb.j, label %.critedge

bb.j:                                             ; preds = %_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE2atEm.exit
  %i.bx = mul nsw i64 %indvars.iv, %i.e           ; 2 uses
  %i.by = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bx
  %i.bz = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bx
  %i.ca = load i32, ptr %i.c, align 8, !tbaa !203
  %i.cb = icmp sgt i32 %i.ca, 0
  br i1 %i.cb, label %.lr.ph.i.i, label %_ZNK5draco37PredictionSchemeWrapEncodingTransformIiiE17ComputeCorrectionEPKiS3_Pi.exit

.lr.ph.i.i:                                       ; preds = %bb.j, %bb.t
  %indvars.iv.i23 = phi i64 [ %indvars.iv.next.i24, %bb.t ], [ 0, %bb.j ] ; 4 uses
  %.01516.i = phi ptr [ %i.cc, %bb.t ], [ %i.be, %bb.j ]
  %i.cc = load ptr, ptr %i.d, align 8             ; 4 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.p, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.p ] ; 4 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %.01516.i, i64 %indvars.iv.i.i
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !96 ; 3 uses
  %i.cf = load i32, ptr %i.bf, align 8, !tbaa !202 ; 2 uses
  %i.cg = icmp sgt i32 %i.ce, %i.cf
  br i1 %i.cg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv.i.i
  store i32 %i.cf, ptr %i.ch, align 4, !tbaa !96
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.ci = load i32, ptr %i.bg, align 4, !tbaa !201 ; 2 uses
  %i.cj = icmp slt i32 %i.ce, %i.ci
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv.i.i ; 2 uses
  br i1 %i.cj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 %i.ci, ptr %i.ck, align 4, !tbaa !96
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  store i32 %i.ce, ptr %i.ck, align 4, !tbaa !96
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.l
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.cl = load i32, ptr %i.c, align 8, !tbaa !203
  %i.cm = sext i32 %i.cl to i64
  %i.cn = icmp slt i64 %indvars.iv.next.i.i, %i.cm
  br i1 %i.cn, label %bb.k, label %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.loopexit.i, !llvm.loop !2

_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.loopexit.i: ; preds = %bb.p
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.i23
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !96
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv.i23
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !96
  %i.cs = sub nsw i32 %i.cp, %i.cr                ; 5 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.i23 ; 2 uses
  store i32 %i.cs, ptr %i.ct, align 4, !tbaa !96
  %i.cu = load i32, ptr %i.bh, align 4, !tbaa !206
  %i.cv = icmp slt i32 %i.cs, %i.cu
  br i1 %i.cv, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.loopexit.i
  %i.cw = load i32, ptr %i.bj, align 4, !tbaa !204
  %i.cx = add nsw i32 %i.cw, %i.cs
  br label %.sink.split.i

bb.r:                                             ; preds = %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.loopexit.i
  %i.cy = load i32, ptr %i.bi, align 8, !tbaa !205
  %i.cz = icmp sgt i32 %i.cs, %i.cy
  br i1 %i.cz, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.da = load i32, ptr %i.bj, align 4, !tbaa !204
  %i.db = sub nsw i32 %i.cs, %i.da
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.s, %bb.q
  %.sink.i = phi i32 [ %i.db, %bb.s ], [ %i.cx, %bb.q ]
  store i32 %.sink.i, ptr %i.ct, align 4, !tbaa !96
  br label %bb.t

bb.t:                                             ; preds = %.sink.split.i, %bb.r
  %indvars.iv.next.i24 = add nuw nsw i64 %indvars.iv.i23, 1 ; 2 uses
  %i.dc = load i32, ptr %i.c, align 8, !tbaa !203
  %i.dd = sext i32 %i.dc to i64
  %i.de = icmp slt i64 %indvars.iv.next.i24, %i.dd
  br i1 %i.de, label %.lr.ph.i.i, label %_ZNK5draco37PredictionSchemeWrapEncodingTransformIiiE17ComputeCorrectionEPKiS3_Pi.exit, !llvm.loop !3

_ZNK5draco37PredictionSchemeWrapEncodingTransformIiiE17ComputeCorrectionEPKiS3_Pi.exit: ; preds = %bb.t, %bb.j
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.df = icmp slt i64 %indvars.iv, 1
  br i1 %i.df, label %.critedge, label %bb.h, !llvm.loop !683

.critedge:                                        ; preds = %_ZNK5draco37PredictionSchemeWrapEncodingTransformIiiE17ComputeCorrectionEPKiS3_Pi.exit, %_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE2atEm.exit, %_ZN5draco37PredictionSchemeWrapEncodingTransformIiiE4InitEPKiii.exit
  %.lcssa26 = phi i1 [ true, %_ZN5draco37PredictionSchemeWrapEncodingTransformIiiE4InitEPKiii.exit ], [ %i.bw, %_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE2atEm.exit ], [ %i.bw, %_ZNK5draco37PredictionSchemeWrapEncodingTransformIiiE17ComputeCorrectionEPKiS3_Pi.exit ]
  ret i1 %.lcssa26
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21ComputePredictedValueILb1EEEbNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKii(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr nofreeobj noundef align 4 dead_on_return dereferenceable(4) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.draco::IndexType", align 4  ; 4 uses
  %5 = alloca %"class.draco::IndexType", align 4  ; 4 uses
  %6 = alloca %"class.draco::IndexType", align 4  ; 4 uses
  %7 = alloca %"class.draco::VectorD.151", align 8 ; 8 uses
  %8 = alloca %"class.draco::VectorD.151", align 8 ; 8 uses
  %9 = alloca %"class.draco::VectorD.151", align 8 ; 8 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !212    ; 4 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit61, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %10 = insertelement <2 x i32> poison, i32 %i.a, i64 0
  %11 = shufflevector <2 x i32> %10, <2 x i32> poison, <2 x i32> zeroinitializer
  %12 = add nuw <2 x i32> %11, <i32 0, i32 1>
  %13 = urem <2 x i32> %12, splat (i32 3)
  %14 = icmp eq <2 x i32> %13, zeroinitializer    ; 2 uses
  %15 = extractelement <2 x i1> %14, i64 1
  %spec.select.i.a = select i1 %15, i32 -2, i32 1
  %spec.select.i = add i32 %i.a, %spec.select.i.a ; 2 uses
  %16 = extractelement <2 x i1> %14, i64 0
  %.sink.i59.v = select i1 %16, i32 2, i32 -1
  %.sink.i59 = add i32 %.sink.i59.v, %i.a         ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !164  ; 2 uses
  %i.e = icmp eq i32 %spec.select.i, -1
  br i1 %i.e, label %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.f = zext i32 %spec.select.i to i64
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !233, !noalias !714
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.f
  %i.i = load i32, ptr %i.h, align 4, !tbaa !235, !noalias !714
  br label %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit: ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, %bb.b
  %storemerge.i = phi i32 [ %i.i, %bb.b ], [ -1, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ] ; 2 uses
  %i.j = icmp eq i32 %.sink.i59, -1
  br i1 %i.j, label %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit61, label %bb.c

bb.c:                                             ; preds = %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.k = zext i32 %.sink.i59 to i64
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !233, !noalias !715
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.k
  %i.n = load i32, ptr %i.m, align 4, !tbaa !235, !noalias !715
  %i.o = sext i32 %i.n to i64
  br label %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit61

_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit61: ; preds = %bb.a, %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, %bb.c
  %storemerge.i195 = phi i32 [ %storemerge.i, %bb.c ], [ %storemerge.i, %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ], [ -1, %bb.a ]
  %storemerge.i60 = phi i64 [ %i.o, %bb.c ], [ -1, %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ], [ -1, %bb.a ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !166  ; 2 uses
  %i.r = sext i32 %storemerge.i195 to i64         ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !149
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !101  ; 3 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 2                   ; 4 uses
  %.not.i.i = icmp ugt i64 %i.y, %i.r
  br i1 %.not.i.i, label %_ZNKSt6vectorIiSaIiEE2atEm.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit61
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.6, i64 noundef %i.r, i64 noundef %i.y) #20
  unreachable

_ZNKSt6vectorIiSaIiEE2atEm.exit:                  ; preds = %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit61
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.r
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !96  ; 4 uses
  %.not.i.i62 = icmp ult i64 %storemerge.i60, %i.y
  br i1 %.not.i.i62, label %_ZNKSt6vectorIiSaIiEE2atEm.exit63, label %bb.e

bb.e:                                             ; preds = %_ZNKSt6vectorIiSaIiEE2atEm.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.6, i64 noundef %storemerge.i60, i64 noundef %i.y) #20
  unreachable

_ZNKSt6vectorIiSaIiEE2atEm.exit63:                ; preds = %_ZNKSt6vectorIiSaIiEE2atEm.exit
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %storemerge.i60
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !96 ; 3 uses
  %i.ad = icmp slt i32 %i.ac, %3
  %i.ae = icmp slt i32 %i.aa, %3                  ; 2 uses
  %or.cond = select i1 %i.ad, i1 %i.ae, i1 false
  br i1 %or.cond, label %bb.f, label %bb.m

bb.f:                                             ; preds = %_ZNKSt6vectorIiSaIiEE2atEm.exit63
  %i.af = shl nsw i32 %i.aa, 1
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ag ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !96, !noalias !716 ; 3 uses
  %i.aj = sext i32 %i.ai to i64                   ; 3 uses
  %i.ak = getelementptr i8, ptr %i.ah, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !96, !noalias !716 ; 3 uses
  %i.am = sext i32 %i.al to i64                   ; 3 uses
  %i.an = shl nsw i32 %i.ac, 1
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ao ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !96, !noalias !717 ; 2 uses
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr i8, ptr %i.ap, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !96, !noalias !717 ; 2 uses
  %i.au = sext i32 %i.at to i64
  %.not.i64 = icmp eq i32 %i.aq, %i.ai
  %.not.1.i = icmp eq i32 %i.at, %i.al
  %.not.lcssa.i = select i1 %.not.i64, i1 %.not.1.i, i1 false
  br i1 %.not.lcssa.i, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ai, ptr %i.av, align 8, !tbaa !96
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.al, ptr %i.aw, align 4, !tbaa !96
  br label %.loopexit

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !718)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !258, !noalias !718
  %i.az = sext i32 %3 to i64
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !93, !noalias !718 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false), !tbaa !128, !alias.scope !718
  %i.bc = load ptr, ptr %0, align 8, !tbaa !257, !noalias !718 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 100
  %i.be = load i8, ptr %i.bd, align 4, !tbaa !91, !range !61, !noalias !719, !noundef !62
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit, label %.else.i

.else.i:                                          ; preds = %bb.g
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 72
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !719
  %i.bi = zext i32 %i.bb to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bi
  %storemerge.i.else.val.i = load i32, ptr %i.bj, align 4, !tbaa !96, !noalias !719
  br label %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit

_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit: ; preds = %bb.g, %.else.i
  %storemerge.i.i = phi i32 [ %i.bb, %bb.g ], [ %storemerge.i.else.val.i, %.else.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !718
  store i32 %storemerge.i.i, ptr %6, align 4, !tbaa !86, !noalias !718
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.bl = load i8, ptr %i.bk, align 8, !tbaa !121, !noalias !718
  %i.bm = call noundef zeroext i1 @_ZNK5draco17GeometryAttribute12ConvertValueIlEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEaPT_(ptr noundef nonnull align 8 dereferenceable(64) %i.bc, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %6, i8 noundef signext %i.bl, ptr noundef nonnull align 8 %7) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !718
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !720)
  %i.bn = load ptr, ptr %i.ax, align 8, !tbaa !258, !noalias !720
  %i.bo = sext i32 %i.aa to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !93, !noalias !720 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false), !tbaa !128, !alias.scope !720
  %i.br = load ptr, ptr %0, align 8, !tbaa !257, !noalias !720 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 100
  %i.bt = load i8, ptr %i.bs, align 4, !tbaa !91, !range !61, !noalias !721, !noundef !62
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit68, label %.else.i65

.else.i65:                                        ; preds = %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 72
  %i.bw = load ptr, ptr %i.bv, align 8, !noalias !721
  %i.bx = zext i32 %i.bq to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.bx
  %storemerge.i.else.val.i66 = load i32, ptr %i.by, align 4, !tbaa !96, !noalias !721
  br label %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit68

_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit68: ; preds = %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit, %.else.i65
  %storemerge.i.i67 = phi i32 [ %i.bq, %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit ], [ %storemerge.i.else.val.i66, %.else.i65 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !720
  store i32 %storemerge.i.i67, ptr %5, align 4, !tbaa !86, !noalias !720
  %i.bz = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.ca = load i8, ptr %i.bz, align 8, !tbaa !121, !noalias !720
  %i.cb = call noundef zeroext i1 @_ZNK5draco17GeometryAttribute12ConvertValueIlEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEaPT_(ptr noundef nonnull align 8 dereferenceable(64) %i.br, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %5, i8 noundef signext %i.ca, ptr noundef nonnull align 8 %8) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !720
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !722)
  %i.cc = load ptr, ptr %i.ax, align 8, !tbaa !258, !noalias !722
  %i.cd = sext i32 %i.ac to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !93, !noalias !722 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false), !tbaa !128, !alias.scope !722
  %i.cg = load ptr, ptr %0, align 8, !tbaa !257, !noalias !722 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 100
  %i.ci = load i8, ptr %i.ch, align 4, !tbaa !91, !range !61, !noalias !723, !noundef !62
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit72, label %.else.i69

.else.i69:                                        ; preds = %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit68
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 72
  %i.cl = load ptr, ptr %i.ck, align 8, !noalias !723
  %i.cm = zext i32 %i.cf to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.cm
  %storemerge.i.else.val.i70 = load i32, ptr %i.cn, align 4, !tbaa !96, !noalias !723
  br label %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit72

_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit72: ; preds = %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit68, %.else.i69
  %storemerge.i.i71 = phi i32 [ %i.cf, %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit68 ], [ %storemerge.i.else.val.i70, %.else.i69 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !722
  store i32 %storemerge.i.i71, ptr %4, align 4, !tbaa !86, !noalias !722
  %i.co = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.cp = load i8, ptr %i.co, align 8, !tbaa !121, !noalias !722
  %i.cq = call noundef zeroext i1 @_ZNK5draco17GeometryAttribute12ConvertValueIlEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEaPT_(ptr noundef nonnull align 8 dereferenceable(64) %i.cg, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %4, i8 noundef signext %i.cp, ptr noundef nonnull align 8 %9) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !722
  %i.cr = load i64, ptr %9, align 8, !tbaa !128, !noalias !724
  %i.cs = load i64, ptr %8, align 8, !tbaa !128, !noalias !724 ; 3 uses
  %i.ct = sub nsw i64 %i.cr, %i.cs                ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !128, !noalias !724
  %i.cw = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !128, !noalias !724 ; 3 uses
  %i.cy = sub nsw i64 %i.cv, %i.cx                ; 5 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !128, !noalias !724
  %i.db = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !128, !noalias !724 ; 3 uses
  %i.dd = sub nsw i64 %i.da, %i.dc                ; 5 uses
  %i.de = mul nsw i64 %i.ct, %i.ct
  %i.df = mul nsw i64 %i.cy, %i.cy
  %i.dg = add nuw nsw i64 %i.df, %i.de
  %i.dh = mul nsw i64 %i.dd, %i.dd
  %i.di = add nuw nsw i64 %i.dg, %i.dh            ; 12 uses
  %.not = icmp eq i64 %i.di, 0
  br i1 %.not, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit72
  %i.dj = load i64, ptr %7, align 8, !tbaa !128, !noalias !725 ; 2 uses
  %i.dk = sub nsw i64 %i.dj, %i.cs
  %i.dl = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !128, !noalias !725 ; 2 uses
end_hunk_1
