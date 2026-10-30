Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/sequential_integer_attribute_decoder?download=true
inline.NumInlined: 2410
inline.NumDeleted: 886
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZN5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21ComputeOriginalValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEE:bb.a
  br label %bb.i

bb.i:                                             ; preds = %bb.n, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.n ] ; 4 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.i.i
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !102 ; 3 uses
  %i.az = load i32, ptr %i.ab, align 8, !tbaa !175 ; 2 uses
  %i.ba = icmp sgt i32 %i.ay, %i.az
  br i1 %i.ba, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.i.i
  store i32 %i.az, ptr %i.bb, align 4, !tbaa !102
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.bc = load i32, ptr %i.ac, align 4, !tbaa !174 ; 2 uses
  %i.bd = icmp slt i32 %i.ay, %i.bc
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.i.i ; 2 uses
  br i1 %i.bd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 %i.bc, ptr %i.be, align 4, !tbaa !102
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  store i32 %i.ay, ptr %i.be, align 4, !tbaa !102
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.j
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.bf = load i32, ptr %i.f, align 8, !tbaa !179 ; 2 uses
  %i.bg = sext i32 %i.bf to i64
  %i.bh = icmp slt i64 %indvars.iv.next.i.i, %i.bg
  br i1 %i.bh, label %bb.i, label %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i, !llvm.loop !1

_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i: ; preds = %bb.n
  %i.bi = icmp sgt i32 %i.bf, 0
  br i1 %i.bi, label %.lr.ph.i, label %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit

.lr.ph.i:                                         ; preds = %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i, %bb.r
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.r ], [ 0, %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i ] ; 4 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.i
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !102
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv.i
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !102
  %i.bn = add i32 %i.bm, %i.bk                    ; 5 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.i ; 2 uses
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !102
  %i.bp = load i32, ptr %i.ab, align 8, !tbaa !175
  %i.bq = icmp sgt i32 %i.bn, %i.bp
  br i1 %i.bq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph.i
  %i.br = load i32, ptr %i.ad, align 4, !tbaa !176
  %i.bs = sub nsw i32 %i.bn, %i.br
  br label %.sink.split.i

bb.p:                                             ; preds = %.lr.ph.i
  %i.bt = load i32, ptr %i.ac, align 4, !tbaa !174
  %i.bu = icmp slt i32 %i.bn, %i.bt
  br i1 %i.bu, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bv = load i32, ptr %i.ad, align 4, !tbaa !176
  %i.bw = add nsw i32 %i.bv, %i.bn
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.q, %bb.o
  %.sink.i = phi i32 [ %i.bs, %bb.o ], [ %i.bw, %bb.q ]
  store i32 %.sink.i, ptr %i.bo, align 4, !tbaa !102
  br label %bb.r

bb.r:                                             ; preds = %.sink.split.i, %bb.p
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bx = load i32, ptr %i.f, align 8, !tbaa !179
  %i.by = sext i32 %i.bx to i64
  %i.bz = icmp slt i64 %indvars.iv.next.i, %i.by
  br i1 %i.bz, label %.lr.ph.i, label %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit, !llvm.loop !2

_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit: ; preds = %bb.r, %bb.h, %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge27, label %bb.f, !llvm.loop !430

.critedge27:                                      ; preds = %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit, %_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE2atEm.exit, %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit, %bb.a
  %.4 = phi i1 [ false, %bb.a ], [ true, %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit ], [ %i.ap, %_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE2atEm.exit ], [ %i.ap, %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit ]
  ret i1 %.4
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21ComputePredictedValueENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKii(ptr noundef nonnull align 8 dereferenceable(172) %0, ptr nofreeobj noundef align 4 dead_on_return dereferenceable(4) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.draco::IndexType", align 4  ; 4 uses
  %5 = alloca %"class.draco::IndexType", align 4  ; 4 uses
  %6 = alloca %"class.draco::IndexType", align 4  ; 4 uses
  %7 = alloca %"class.draco::VectorD.115", align 4 ; 7 uses
  %8 = alloca %"class.draco::VectorD.115", align 4 ; 7 uses
  %9 = alloca %"class.draco::VectorD.115", align 4 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i32, ptr %1, align 4, !tbaa !185    ; 5 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = insertelement <2 x i32> poison, i32 %i.b, i64 0
  %i.e = shufflevector <2 x i32> %i.d, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.f = add nuw <2 x i32> %i.e, <i32 0, i32 1>
  %i.g = urem <2 x i32> %i.f, splat (i32 3)
  %i.h = icmp eq <2 x i32> %i.g, zeroinitializer  ; 2 uses
  %i.i = extractelement <2 x i1> %i.h, i64 1
  %spec.select.i.i.v = select i1 %i.i, i32 -2, i32 1
  %spec.select.i.i = add i32 %i.b, %spec.select.i.i.v ; 2 uses
  %i.j = extractelement <2 x i1> %i.h, i64 0
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = add i32 %i.b, -1
  br label %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

bb.d:                                             ; preds = %bb.b
  %i.l = add i32 %i.b, 2
  br label %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.sink.i.i157 = phi i32 [ %spec.select.i.i, %bb.c ], [ %spec.select.i.i, %bb.d ], [ -1, %bb.a ]
  %.sink.i.i87 = phi i32 [ %i.k, %bb.c ], [ %i.l, %bb.d ], [ -1, %bb.a ]
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !127
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  %i.o = zext i32 %.sink.i.i157 to i64
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !204, !noalias !461 ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.o
  %i.r = load i32, ptr %i.q, align 4, !tbaa !206, !noalias !461
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !129  ; 2 uses
  %i.u = sext i32 %i.r to i64                     ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !118
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !58   ; 3 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 2                 ; 4 uses
  %.not.i.i88 = icmp ugt i64 %i.ab, %i.u
  br i1 %.not.i.i88, label %_ZNKSt6vectorIiSaIiEE2atEm.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef %i.u, i64 noundef %i.ab) #20
  unreachable

_ZNKSt6vectorIiSaIiEE2atEm.exit:                  ; preds = %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.ac = zext i32 %.sink.i.i87 to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !206, !noalias !462
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.u
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !102 ; 4 uses
  %i.ah = sext i32 %i.ae to i64                   ; 3 uses
  %.not.i.i89 = icmp ugt i64 %i.ab, %i.ah
  br i1 %.not.i.i89, label %_ZNKSt6vectorIiSaIiEE2atEm.exit90, label %bb.f

bb.f:                                             ; preds = %_ZNKSt6vectorIiSaIiEE2atEm.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef %i.ah, i64 noundef %i.ab) #20
  unreachable

_ZNKSt6vectorIiSaIiEE2atEm.exit90:                ; preds = %_ZNKSt6vectorIiSaIiEE2atEm.exit
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !102 ; 3 uses
  %i.ak = icmp slt i32 %i.aj, %3
  %i.al = icmp slt i32 %i.ag, %3                  ; 2 uses
  %or.cond85 = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %or.cond85, label %bb.g, label %bb.q

bb.g:                                             ; preds = %_ZNKSt6vectorIiSaIiEE2atEm.exit90
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.an = load i32, ptr %i.am, align 8, !tbaa !211, !noalias !463 ; 2 uses
  %i.ao = mul nsw i32 %i.an, %i.ag
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ap
  %i.ar = load <2 x i32>, ptr %i.aq, align 4, !tbaa !102, !noalias !463
  %i.as = sitofp <2 x i32> %i.ar to <2 x float>   ; 4 uses
  %i.at = mul nsw i32 %i.an, %i.aj
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %2, i64 %i.au
  %i.aw = load <2 x i32>, ptr %i.av, align 4, !tbaa !102, !noalias !464
  %i.ax = sitofp <2 x i32> %i.aw to <2 x float>   ; 5 uses
  %i.ay = extractelement <2 x float> %i.ax, i64 0 ; 2 uses
  %i.az = extractelement <2 x float> %i.as, i64 0
  %i.ba = fcmp oeq float %i.ay, %i.az
  %i.bb = extractelement <2 x float> %i.ax, i64 1 ; 2 uses
  %i.bc = extractelement <2 x float> %i.as, i64 1
  %i.bd = fcmp oeq float %i.bb, %i.bc
  %.lcssa.i = select i1 %i.ba, i1 %i.bd, i1 false
  br i1 %.lcssa.i, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bf = fpext <2 x float> %i.ax to <2 x double>
  %i.bg = fptosi float %i.ay to i32
  %i.bh = load ptr, ptr %i.be, align 8, !tbaa !161 ; 3 uses
  %i.bi = fcmp ogt <2 x double> %i.bf, splat (double f0x41DFFFFFFFC00000)
  %10 = fcmp ult <2 x float> %i.ax, splat (float f0xCF000000)
  %i.bj = or <2 x i1> %10, %i.bi                  ; 2 uses
  %i.bk = extractelement <2 x i1> %i.bj, i64 0
  %.sink = select i1 %i.bk, i32 -2147483648, i32 %i.bg
  store i32 %.sink, ptr %i.bh, align 4, !tbaa !102
  %i.bl = extractelement <2 x i1> %i.bj, i64 1
  br i1 %i.bl, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bm = fptosi float %i.bb to i32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !102
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  store i32 -2147483648, ptr %i.bo, align 4, !tbaa !102
  br label %.loopexit

bb.k:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !465)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !212, !noalias !465
  %i.br = sext i32 %3 to i64
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !214, !noalias !465 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, i8 0, i64 12, i1 false), !tbaa !215, !alias.scope !465
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !210, !noalias !465 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 100
  %i.bx = load i8, ptr %i.bw, align 4, !tbaa !98, !range !216, !noalias !466, !noundef !217
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit, label %.else.i

.else.i:                                          ; preds = %bb.k
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 72
  %i.ca = load ptr, ptr %i.bz, align 8, !noalias !466
  %i.cb = zext i32 %i.bt to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.cb
  %storemerge.i.else.val.i = load i32, ptr %i.cc, align 4, !tbaa !102, !noalias !466
  br label %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit

_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit: ; preds = %bb.k, %.else.i
  %storemerge.i.i = phi i32 [ %i.bt, %bb.k ], [ %storemerge.i.else.val.i, %.else.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !465
  store i32 %storemerge.i.i, ptr %6, align 4, !tbaa !219, !noalias !465
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.ce = load i8, ptr %i.cd, align 8, !tbaa !101, !noalias !465
  %i.cf = call noundef zeroext i1 @_ZNK5draco17GeometryAttribute12ConvertValueIfEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEaPT_(ptr noundef nonnull align 8 dereferenceable(64) %i.bv, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %6, i8 noundef signext %i.ce, ptr noundef nonnull align 4 %7) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !465
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !467)
  %i.cg = load ptr, ptr %i.bp, align 8, !tbaa !212, !noalias !467
  %i.ch = sext i32 %i.ag to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !214, !noalias !467 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %8, i8 0, i64 12, i1 false), !tbaa !215, !alias.scope !467
  %i.ck = load ptr, ptr %i.bu, align 8, !tbaa !210, !noalias !467 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 100
  %i.cm = load i8, ptr %i.cl, align 4, !tbaa !98, !range !216, !noalias !468, !noundef !217
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit94, label %.else.i91

.else.i91:                                        ; preds = %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 72
  %i.cp = load ptr, ptr %i.co, align 8, !noalias !468
  %i.cq = zext i32 %i.cj to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.cq
  %storemerge.i.else.val.i92 = load i32, ptr %i.cr, align 4, !tbaa !102, !noalias !468
  br label %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit94

_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit94: ; preds = %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit, %.else.i91
  %storemerge.i.i93 = phi i32 [ %i.cj, %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit ], [ %storemerge.i.else.val.i92, %.else.i91 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !467
  store i32 %storemerge.i.i93, ptr %5, align 4, !tbaa !219, !noalias !467
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.ct = load i8, ptr %i.cs, align 8, !tbaa !101, !noalias !467
  %i.cu = call noundef zeroext i1 @_ZNK5draco17GeometryAttribute12ConvertValueIfEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEaPT_(ptr noundef nonnull align 8 dereferenceable(64) %i.ck, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %5, i8 noundef signext %i.ct, ptr noundef nonnull align 4 %8) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !467
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !469)
  %i.cv = load ptr, ptr %i.bp, align 8, !tbaa !212, !noalias !469
  %i.cw = sext i32 %i.aj to i64
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !214, !noalias !469 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %9, i8 0, i64 12, i1 false), !tbaa !215, !alias.scope !469
  %i.cz = load ptr, ptr %i.bu, align 8, !tbaa !210, !noalias !469 ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 100
  %i.db = load i8, ptr %i.da, align 4, !tbaa !98, !range !216, !noalias !470, !noundef !217
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit98, label %.else.i95

.else.i95:                                        ; preds = %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit94
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 72
  %i.de = load ptr, ptr %i.dd, align 8, !noalias !470
  %i.df = zext i32 %i.cy to i64
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.df
  %storemerge.i.else.val.i96 = load i32, ptr %i.dg, align 4, !tbaa !102, !noalias !470
  br label %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit98

_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit98: ; preds = %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit94, %.else.i95
  %storemerge.i.i97 = phi i32 [ %i.cy, %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit94 ], [ %storemerge.i.else.val.i96, %.else.i95 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !469
  store i32 %storemerge.i.i97, ptr %4, align 4, !tbaa !219, !noalias !469
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.di = load i8, ptr %i.dh, align 8, !tbaa !101, !noalias !469
  %i.dj = call noundef zeroext i1 @_ZNK5draco17GeometryAttribute12ConvertValueIfEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEaPT_(ptr noundef nonnull align 8 dereferenceable(64) %i.cz, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %4, i8 noundef signext %i.di, ptr noundef nonnull align 4 %9) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !469
  %i.dk = load float, ptr %9, align 4, !tbaa !215, !noalias !471
  %i.dl = load float, ptr %8, align 4, !tbaa !215, !noalias !471 ; 2 uses
  %i.dm = fsub float %i.dk, %i.dl                 ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.do = load float, ptr %i.dn, align 4, !tbaa !215, !noalias !471
  %i.dp = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !215, !noalias !471 ; 2 uses
  %i.dr = fsub float %i.do, %i.dq                 ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !215, !noalias !471
  %i.du = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dv = load float, ptr %i.du, align 4, !tbaa !215, !noalias !471 ; 2 uses
  %i.dw = fsub float %i.dt, %i.dv                 ; 4 uses
  %i.dx = call float @llvm.fmuladd.f32(float %i.dm, float %i.dm, float 0.000000e+00)
  %i.dy = call float @llvm.fmuladd.f32(float %i.dr, float %i.dr, float %i.dx)
  %i.dz = call noundef float @llvm.fmuladd.f32(float %i.dw, float %i.dw, float %i.dy) ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !160
  %i.ec = icmp slt i32 %i.eb, 258
  %i.ed = fcmp ogt float %i.dz, 0.000000e+00
  %or.cond = or i1 %i.ec, %i.ed
  br i1 %or.cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit98
  %i.ee = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !215, !noalias !472
  %i.eg = fsub float %i.ef, %i.dv                 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !215, !noalias !472
  %i.ej = fsub float %i.ei, %i.dq                 ; 2 uses
  %i.ek = load float, ptr %7, align 4, !tbaa !215, !noalias !472
  %i.el = fsub float %i.ek, %i.dl                 ; 2 uses
  %i.em = call float @llvm.fmuladd.f32(float %i.dm, float %i.el, float 0.000000e+00)
  %i.en = call float @llvm.fmuladd.f32(float %i.dr, float %i.ej, float %i.em)
  %i.eo = call noundef float @llvm.fmuladd.f32(float %i.dw, float %i.eg, float %i.en)
  %i.ep = fdiv float %i.eo, %i.dz                 ; 4 uses
  %i.eq = fmul float %i.dm, %i.ep
  %i.er = fmul float %i.dr, %i.ep
  %i.es = fmul float %i.dw, %i.ep
  %i.et = fsub float %i.el, %i.eq                 ; 2 uses
  %i.eu = fsub float %i.ej, %i.er                 ; 2 uses
  %i.ev = fsub float %i.eg, %i.es                 ; 2 uses
  %i.ew = call float @llvm.fmuladd.f32(float %i.et, float %i.et, float 0.000000e+00)
  %i.ex = call float @llvm.fmuladd.f32(float %i.eu, float %i.eu, float %i.ew)
  %i.ey = call noundef float @llvm.fmuladd.f32(float %i.ev, float %i.ev, float %i.ex)
  %i.ez = fdiv float %i.ey, %i.dz
  %i.fa = call noundef float @sqrtf(float noundef %i.ez) #17
  br label %bb.m

bb.m:                                             ; preds = %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit98, %bb.l
  %.0155 = phi float [ %i.ep, %bb.l ], [ 0.000000e+00, %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit98 ]
  %.076 = phi float [ %i.fa, %bb.l ], [ 0.000000e+00, %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit98 ] ; 2 uses
  %i.fb = fsub <2 x float> %i.ax, %i.as           ; 3 uses
  %i.fc = extractelement <2 x float> %i.fb, i64 0
  %i.fd = fmul float %i.fc, %.076                 ; 2 uses
  %i.fe = insertelement <2 x float> poison, float %.0155, i64 0
  %i.ff = shufflevector <2 x float> %i.fe, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fb, <2 x float> %i.ff, <2 x float> %i.as)
  %i.fh = extractelement <2 x float> %i.fb, i64 1
  %i.fi = fmul float %i.fh, %.076                 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !143
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !143 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !144 ; 3 uses
  %i.fp = icmp ne ptr %i.fk, %i.fm
  %i.fq = icmp ne i32 %i.fo, 0                    ; 2 uses
  %.not164 = select i1 %i.fp, i1 true, i1 %i.fq   ; 2 uses
  br i1 %.not164, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.fr = zext i32 %i.fo to i64
  %i.fs = add nsw i64 %i.fr, -1                   ; 3 uses
  %i.ft = sdiv i64 %i.fs, 64
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.ft
  %i.fv = and i64 %i.fs, -9223372036854775745
  %i.fw = icmp ugt i64 %i.fv, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.fw, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.fu, i64 %storemerge.idx.i.i.i.i.i
  %i.fx = and i64 %i.fs, 63
  %i.fy = shl nuw i64 1, %i.fx
  %i.fz = load i64, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !186
  %i.ga = and i64 %i.fz, %i.fy
  %.not161 = icmp eq i64 %i.ga, 0                 ; 2 uses
  %i.gb = add i32 %i.fo, -1
  store i32 %i.gb, ptr %i.fn, align 8, !tbaa !144
  br i1 %i.fq, label %_ZNSt6vectorIbSaIbEE8pop_backEv.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 63, ptr %i.fn, align 8, !tbaa !144
  %i.gc = getelementptr inbounds i8, ptr %i.fm, i64 -8
  store ptr %i.gc, ptr %i.fl, align 8, !tbaa !143
  br label %_ZNSt6vectorIbSaIbEE8pop_backEv.exit

_ZNSt6vectorIbSaIbEE8pop_backEv.exit:             ; preds = %bb.n, %bb.o
  %i.gd = fneg float %i.fd
  %i.ge = fneg float %i.fi
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !161
  %.sroa.6.0.p = select i1 %.not161, float %i.gd, float %i.fd
  %.sroa.0111.0.p = select i1 %.not161, float %i.fi, float %i.ge
  %i.gh = insertelement <2 x float> poison, float %.sroa.0111.0.p, i64 0
  %i.gi = insertelement <2 x float> %i.gh, float %.sroa.6.0.p, i64 1
  %i.gj = fadd <2 x float> %i.fg, %i.gi
  %i.gk = fpext <2 x float> %i.gj to <2 x double>
  %i.gl = fadd <2 x double> %i.gk, splat (double 5.000000e-01)
  %i.gm = call <2 x double> @llvm.floor.v2f64(<2 x double> %i.gl) ; 3 uses
  %11 = fcmp ugt <2 x double> %i.gm, splat (double f0x41DFFFFFFFC00000)
  %i.gn = fcmp olt <2 x double> %i.gm, splat (double f0xC1E0000000000000)
  %i.go = or <2 x i1> %11, %i.gn
  %i.gp = fptosi <2 x double> %i.gm to <2 x i32>
  %i.gq = select <2 x i1> %i.go, <2 x i32> splat (i32 -2147483648), <2 x i32> %i.gp
  store <2 x i32> %i.gq, ptr %i.gg, align 4, !tbaa !102
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIbSaIbEE8pop_backEv.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %.loopexit

bb.q:                                             ; preds = %_ZNKSt6vectorIiSaIiEE2atEm.exit90
  br i1 %i.al, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gr = icmp sgt i32 %3, 0
  br i1 %i.gr, label %bb.s, label %.preheader

.preheader:                                       ; preds = %bb.r
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !211
  %i.gu = icmp sgt i32 %i.gt, 0
  br i1 %i.gu, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !161
  br label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.gx = add nsw i32 %3, -1
  br label %bb.u

bb.t:                                             ; preds = %.lr.ph, %bb.t
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.t ] ; 2 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %indvars.iv
  store i32 0, ptr %i.gy, align 4, !tbaa !102
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gz = load i32, ptr %i.gs, align 8, !tbaa !211
  %i.ha = sext i32 %i.gz to i64
  %i.hb = icmp slt i64 %indvars.iv.next, %i.ha
  br i1 %i.hb, label %bb.t, label %.loopexit, !llvm.loop !459

bb.u:                                             ; preds = %bb.q, %bb.s
  %.sink197 = phi i32 [ %i.gx, %bb.s ], [ %i.ag, %bb.q ]
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.hd = load i32, ptr %i.hc, align 8, !tbaa !211 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.hf = icmp sgt i32 %i.hd, 0
  br i1 %i.hf, label %.lr.ph168, label %.loopexit

.lr.ph168:                                        ; preds = %bb.u
  %i.hg = mul nsw i32 %i.hd, %.sink197
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !161
  %i.hj = sext i32 %i.hg to i64
  %invariant.gep = getelementptr [4 x i8], ptr %2, i64 %i.hj
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph168, %bb.v
  %indvars.iv172 = phi i64 [ 0, %.lr.ph168 ], [ %indvars.iv.next173, %bb.v ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv172
  %i.hk = load i32, ptr %gep, align 4, !tbaa !102
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %indvars.iv172
  store i32 %i.hk, ptr %i.hl, align 4, !tbaa !102
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172, 1 ; 2 uses
  %i.hm = load i32, ptr %i.he, align 8, !tbaa !211
  %i.hn = sext i32 %i.hm to i64
  %i.ho = icmp slt i64 %indvars.iv.next173, %i.hn
  br i1 %i.ho, label %bb.v, label %.loopexit, !llvm.loop !460

.loopexit:                                        ; preds = %bb.t, %bb.v, %bb.p, %bb.j, %bb.i, %.preheader, %bb.u
  %.3 = phi i1 [ true, %bb.v ], [ true, %bb.u ], [ true, %.preheader ], [ true, %bb.i ], [ %.not164, %bb.p ], [ true, %bb.j ], [ true, %bb.t ]
  ret i1 %.3
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #12

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5draco17GeometryAttribute12ConvertValueIfEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEaPT_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofreeobj noundef align 4 dead_on_return dereferenceable(4) %1, i8 noundef signext %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %3, null
  br i1 %i.a, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIafEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.c = load i32, ptr %i.b, align 4, !tbaa !100
  switch i32 %i.c, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIafEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit [
    i32 1, label %bb.c
    i32 2, label %bb.f
    i32 3, label %bb.i
    i32 4, label %bb.l
    i32 5, label %bb.o
    i32 6, label %bb.r
    i32 7, label %bb.u
    i32 8, label %bb.x
    i32 9, label %bb.aa
    i32 10, label %bb.ad
    i32 11, label %bb.ag
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %1, align 4, !tbaa !219
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8, !tbaa !89
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !220
  %i.i = zext i32 %i.d to i64
  %i.j = mul nsw i64 %i.h, %i.i
  %i.k = load ptr, ptr %0, align 8, !tbaa !90     ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !92
  %i.m = getelementptr i8, ptr %i.l, i64 %i.j
  %i.n = getelementptr i8, ptr %i.m, i64 %i.f     ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.p = load i8, ptr %i.o, align 8, !tbaa !103   ; 2 uses
  %.sroa.speculated29.i = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.p)
  %.not30.i = icmp eq i8 %.sroa.speculated29.i, 0
  br i1 %.not30.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !94   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load i8, ptr %i.s, align 8, !range !216
  %.fr47.i = freeze i8 %i.t
  %i.u = trunc i8 %.fr47.i to i1
  %i.v = icmp ugt ptr %i.r, %i.n                  ; 2 uses
  br i1 %i.u, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  br i1 %i.v, label %.lr.ph43.i, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIafEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.d:                                             ; preds = %.lr.ph43.i
  %i.w = getelementptr inbounds nuw i8, ptr %.01731.us42.i, i64 1 ; 2 uses
  %i.x = icmp ugt ptr %i.r, %i.w
  br i1 %i.x, label %.lr.ph43.i, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIafEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit, !llvm.loop !473

.lr.ph43.i:                                       ; preds = %.lr.ph.split.us.i, %bb.d
  %indvars.iv56.i = phi i64 [ %indvars.iv.next57.i, %bb.d ], [ 0, %.lr.ph.split.us.i ] ; 2 uses
  %.01731.us42.i = phi ptr [ %i.w, %bb.d ], [ %i.n, %.lr.ph.split.us.i ] ; 2 uses
  %i.y = load i8, ptr %.01731.us42.i, align 1, !tbaa !103
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv56.i
  %i.aa = sitofp i8 %i.y to float
  %i.ab = fdiv float %i.aa, 1.270000e+02
  store float %i.ab, ptr %i.z, align 4, !tbaa !215
  %indvars.iv.next57.i = add nuw nsw i64 %indvars.iv56.i, 1 ; 2 uses
  %i.ac = load i8, ptr %i.o, align 8, !tbaa !103  ; 2 uses
  %.sroa.speculated.us.i = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.ac)
  %i.ad = zext i8 %.sroa.speculated.us.i to i64
  %.not.us.not.i = icmp samesign ult i64 %indvars.iv.next57.i, %i.ad
  br i1 %.not.us.not.i, label %bb.d, label %.critedge.i, !llvm.loop !473

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  br i1 %i.v, label %.lr.ph39.i, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIafEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.e:                                             ; preds = %.lr.ph39.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.0173138.i, i64 1 ; 2 uses
  %i.af = icmp ugt ptr %i.r, %i.ae
  br i1 %i.af, label %.lr.ph39.i, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIafEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit, !llvm.loop !473

.lr.ph39.i:                                       ; preds = %.lr.ph.split.i, %bb.e
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.e ], [ 0, %.lr.ph.split.i ] ; 2 uses
  %.0173138.i = phi ptr [ %i.ae, %bb.e ], [ %i.n, %.lr.ph.split.i ] ; 2 uses
  %i.ag = load i8, ptr %.0173138.i, align 1, !tbaa !103
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i
  %i.ai = sitofp i8 %i.ag to float
  store float %i.ai, ptr %i.ah, align 4, !tbaa !215
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.aj = load i8, ptr %i.o, align 8, !tbaa !103  ; 2 uses
  %.sroa.speculated.i = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.aj)
  %i.ak = zext i8 %.sroa.speculated.i to i64
  %.not.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.ak
  br i1 %.not.not.i, label %bb.e, label %.critedge.i, !llvm.loop !473

.critedge.i:                                      ; preds = %.lr.ph39.i, %.lr.ph43.i, %bb.c
  %.lcssa.i = phi i8 [ %i.p, %bb.c ], [ %i.ac, %.lr.ph43.i ], [ %i.aj, %.lr.ph39.i ] ; 2 uses
  %i.al = icmp ult i8 %.lcssa.i, %2
  br i1 %i.al, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIafEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit.sink.split, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIafEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.f:                                             ; preds = %bb.b
  %i.am = load i32, ptr %1, align 4, !tbaa !219
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !89
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !220
  %i.ar = zext i32 %i.am to i64
  %i.as = mul nsw i64 %i.aq, %i.ar
  %i.at = load ptr, ptr %0, align 8, !tbaa !90    ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !92
  %i.av = getelementptr i8, ptr %i.au, i64 %i.as
  %i.aw = getelementptr i8, ptr %i.av, i64 %i.ao  ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !103 ; 2 uses
  %.sroa.speculated29.i25 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.ay)
  %.not30.i26 = icmp eq i8 %.sroa.speculated29.i25, 0
  br i1 %.not30.i26, label %.critedge.i37, label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 8
end_hunk_0
begin_hunk_1_@_ZN5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21ComputeOriginalValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEE:bb.a
  %i.az = load i32, ptr %i.ab, align 8, !tbaa !175 ; 2 uses
  %i.ba = icmp sgt i32 %i.ay, %i.az
  br i1 %i.ba, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.i.i
  store i32 %i.az, ptr %i.bb, align 4, !tbaa !102
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.bc = load i32, ptr %i.ac, align 4, !tbaa !174 ; 2 uses
  %i.bd = icmp slt i32 %i.ay, %i.bc
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.i.i ; 2 uses
  br i1 %i.bd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 %i.bc, ptr %i.be, align 4, !tbaa !102
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  store i32 %i.ay, ptr %i.be, align 4, !tbaa !102
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.j
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.bf = load i32, ptr %i.f, align 8, !tbaa !179 ; 2 uses
  %i.bg = sext i32 %i.bf to i64
  %i.bh = icmp slt i64 %indvars.iv.next.i.i, %i.bg
  br i1 %i.bh, label %bb.i, label %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i, !llvm.loop !1

_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i: ; preds = %bb.n
  %i.bi = icmp sgt i32 %i.bf, 0
  br i1 %i.bi, label %.lr.ph.i, label %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit

.lr.ph.i:                                         ; preds = %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i, %bb.r
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.r ], [ 0, %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i ] ; 4 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.i
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !102
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv.i
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !102
  %i.bn = add i32 %i.bm, %i.bk                    ; 5 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.i ; 2 uses
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !102
  %i.bp = load i32, ptr %i.ab, align 8, !tbaa !175
  %i.bq = icmp sgt i32 %i.bn, %i.bp
  br i1 %i.bq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph.i
  %i.br = load i32, ptr %i.ad, align 4, !tbaa !176
  %i.bs = sub nsw i32 %i.bn, %i.br
  br label %.sink.split.i

bb.p:                                             ; preds = %.lr.ph.i
  %i.bt = load i32, ptr %i.ac, align 4, !tbaa !174
  %i.bu = icmp slt i32 %i.bn, %i.bt
  br i1 %i.bu, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bv = load i32, ptr %i.ad, align 4, !tbaa !176
  %i.bw = add nsw i32 %i.bv, %i.bn
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.q, %bb.o
  %.sink.i = phi i32 [ %i.bs, %bb.o ], [ %i.bw, %bb.q ]
  store i32 %.sink.i, ptr %i.bo, align 4, !tbaa !102
  br label %bb.r

bb.r:                                             ; preds = %.sink.split.i, %bb.p
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bx = load i32, ptr %i.f, align 8, !tbaa !179
  %i.by = sext i32 %i.bx to i64
  %i.bz = icmp slt i64 %indvars.iv.next.i, %i.by
  br i1 %i.bz, label %.lr.ph.i, label %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit, !llvm.loop !2

_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit: ; preds = %bb.r, %bb.h, %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge27, label %bb.f, !llvm.loop !727

.critedge27:                                      ; preds = %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit, %_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE2atEm.exit, %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit, %bb.a
  %.4 = phi i1 [ false, %bb.a ], [ true, %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit ], [ %i.ap, %_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE2atEm.exit ], [ %i.ap, %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit ]
  ret i1 %.4
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21ComputePredictedValueENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKii(ptr noundef nonnull align 8 dereferenceable(172) %0, ptr nofreeobj noundef align 4 dead_on_return dereferenceable(4) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.draco::IndexType", align 4  ; 4 uses
  %5 = alloca %"class.draco::IndexType", align 4  ; 4 uses
  %6 = alloca %"class.draco::IndexType", align 4  ; 4 uses
  %7 = alloca %"class.draco::VectorD.115", align 4 ; 7 uses
  %8 = alloca %"class.draco::VectorD.115", align 4 ; 7 uses
  %9 = alloca %"class.draco::VectorD.115", align 4 ; 7 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !185    ; 4 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit89, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = insertelement <2 x i32> poison, i32 %i.a, i64 0
  %i.e = shufflevector <2 x i32> %i.d, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.f = add nuw <2 x i32> %i.e, <i32 0, i32 1>
  %i.g = urem <2 x i32> %i.f, splat (i32 3)
  %i.h = icmp eq <2 x i32> %i.g, zeroinitializer  ; 2 uses
  %i.i = extractelement <2 x i1> %i.h, i64 1
  %spec.select.i.v = select i1 %i.i, i32 -2, i32 1
  %spec.select.i = add i32 %i.a, %spec.select.i.v ; 2 uses
  %i.j = extractelement <2 x i1> %i.h, i64 0
  %.sink.i87.v = select i1 %i.j, i32 2, i32 -1
  %.sink.i87 = add i32 %.sink.i87.v, %i.a         ; 2 uses
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !133  ; 2 uses
  %i.l = icmp eq i32 %spec.select.i, -1
  br i1 %i.l, label %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.m = zext i32 %spec.select.i to i64
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !204, !noalias !758
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.m
  %i.p = load i32, ptr %i.o, align 4, !tbaa !206, !noalias !758
  br label %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit: ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, %bb.b
  %storemerge.i = phi i32 [ %i.p, %bb.b ], [ -1, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ] ; 2 uses
  %i.q = icmp eq i32 %.sink.i87, -1
  br i1 %i.q, label %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit89, label %bb.c

bb.c:                                             ; preds = %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.r = zext i32 %.sink.i87 to i64
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !204, !noalias !759
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.r
  %i.u = load i32, ptr %i.t, align 4, !tbaa !206, !noalias !759
  %i.v = sext i32 %i.u to i64
  br label %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit89

_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit89: ; preds = %bb.a, %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, %bb.c
  %storemerge.i164 = phi i32 [ %storemerge.i, %bb.c ], [ %storemerge.i, %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ], [ -1, %bb.a ]
  %storemerge.i88 = phi i64 [ %i.v, %bb.c ], [ -1, %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ], [ -1, %bb.a ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !135  ; 2 uses
  %i.y = sext i32 %storemerge.i164 to i64         ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !118
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !58  ; 3 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = ashr exact i64 %i.ae, 2                 ; 4 uses
  %.not.i.i = icmp ugt i64 %i.af, %i.y
  br i1 %.not.i.i, label %_ZNKSt6vectorIiSaIiEE2atEm.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit89
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef %i.y, i64 noundef %i.af) #20
  unreachable

_ZNKSt6vectorIiSaIiEE2atEm.exit:                  ; preds = %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit89
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.y
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !102 ; 4 uses
  %.not.i.i90 = icmp ult i64 %storemerge.i88, %i.af
  br i1 %.not.i.i90, label %_ZNKSt6vectorIiSaIiEE2atEm.exit91, label %bb.e

bb.e:                                             ; preds = %_ZNKSt6vectorIiSaIiEE2atEm.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef %storemerge.i88, i64 noundef %i.af) #20
  unreachable

_ZNKSt6vectorIiSaIiEE2atEm.exit91:                ; preds = %_ZNKSt6vectorIiSaIiEE2atEm.exit
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %storemerge.i88
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !102 ; 3 uses
  %i.ak = icmp slt i32 %i.aj, %3
  %i.al = icmp slt i32 %i.ah, %3                  ; 2 uses
  %or.cond85 = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %or.cond85, label %bb.f, label %bb.p

bb.f:                                             ; preds = %_ZNKSt6vectorIiSaIiEE2atEm.exit91
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.an = load i32, ptr %i.am, align 8, !tbaa !240, !noalias !760 ; 2 uses
  %i.ao = mul nsw i32 %i.an, %i.ah
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ap
  %i.ar = load <2 x i32>, ptr %i.aq, align 4, !tbaa !102, !noalias !760
  %i.as = sitofp <2 x i32> %i.ar to <2 x float>   ; 4 uses
  %i.at = mul nsw i32 %i.an, %i.aj
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %2, i64 %i.au
  %i.aw = load <2 x i32>, ptr %i.av, align 4, !tbaa !102, !noalias !761
  %i.ax = sitofp <2 x i32> %i.aw to <2 x float>   ; 5 uses
  %i.ay = extractelement <2 x float> %i.ax, i64 0 ; 2 uses
  %i.az = extractelement <2 x float> %i.as, i64 0
  %i.ba = fcmp oeq float %i.ay, %i.az
  %i.bb = extractelement <2 x float> %i.ax, i64 1 ; 2 uses
  %i.bc = extractelement <2 x float> %i.as, i64 1
  %i.bd = fcmp oeq float %i.bb, %i.bc
  %.lcssa.i = select i1 %i.ba, i1 %i.bd, i1 false
  br i1 %.lcssa.i, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bf = fpext <2 x float> %i.ax to <2 x double>
  %i.bg = fptosi float %i.ay to i32
  %i.bh = load ptr, ptr %i.be, align 8, !tbaa !161 ; 3 uses
  %i.bi = fcmp ogt <2 x double> %i.bf, splat (double f0x41DFFFFFFFC00000)
  %10 = fcmp ult <2 x float> %i.ax, splat (float f0xCF000000)
  %i.bj = or <2 x i1> %10, %i.bi                  ; 2 uses
  %i.bk = extractelement <2 x i1> %i.bj, i64 0
  %.sink = select i1 %i.bk, i32 -2147483648, i32 %i.bg
  store i32 %.sink, ptr %i.bh, align 4, !tbaa !102
  %i.bl = extractelement <2 x i1> %i.bj, i64 1
  br i1 %i.bl, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bm = fptosi float %i.bb to i32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !102
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  store i32 -2147483648, ptr %i.bo, align 4, !tbaa !102
  br label %.loopexit

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !762)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !241, !noalias !762
  %i.br = sext i32 %3 to i64
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !214, !noalias !762 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, i8 0, i64 12, i1 false), !tbaa !215, !alias.scope !762
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !239, !noalias !762 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 100
  %i.bx = load i8, ptr %i.bw, align 4, !tbaa !98, !range !216, !noalias !763, !noundef !217
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit, label %.else.i

.else.i:                                          ; preds = %bb.j
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 72
  %i.ca = load ptr, ptr %i.bz, align 8, !noalias !763
  %i.cb = zext i32 %i.bt to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.cb
  %storemerge.i.else.val.i = load i32, ptr %i.cc, align 4, !tbaa !102, !noalias !763
  br label %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit

_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit: ; preds = %bb.j, %.else.i
  %storemerge.i.i = phi i32 [ %i.bt, %bb.j ], [ %storemerge.i.else.val.i, %.else.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !762
  store i32 %storemerge.i.i, ptr %6, align 4, !tbaa !219, !noalias !762
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.ce = load i8, ptr %i.cd, align 8, !tbaa !101, !noalias !762
  %i.cf = call noundef zeroext i1 @_ZNK5draco17GeometryAttribute12ConvertValueIfEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEaPT_(ptr noundef nonnull align 8 dereferenceable(64) %i.bv, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %6, i8 noundef signext %i.ce, ptr noundef nonnull align 4 %7) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !762
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !764)
  %i.cg = load ptr, ptr %i.bp, align 8, !tbaa !241, !noalias !764
  %i.ch = sext i32 %i.ah to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !214, !noalias !764 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %8, i8 0, i64 12, i1 false), !tbaa !215, !alias.scope !764
  %i.ck = load ptr, ptr %i.bu, align 8, !tbaa !239, !noalias !764 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 100
  %i.cm = load i8, ptr %i.cl, align 4, !tbaa !98, !range !216, !noalias !765, !noundef !217
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit95, label %.else.i92

.else.i92:                                        ; preds = %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 72
  %i.cp = load ptr, ptr %i.co, align 8, !noalias !765
  %i.cq = zext i32 %i.cj to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.cq
  %storemerge.i.else.val.i93 = load i32, ptr %i.cr, align 4, !tbaa !102, !noalias !765
  br label %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit95

_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit95: ; preds = %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit, %.else.i92
  %storemerge.i.i94 = phi i32 [ %i.cj, %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit ], [ %storemerge.i.else.val.i93, %.else.i92 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !764
  store i32 %storemerge.i.i94, ptr %5, align 4, !tbaa !219, !noalias !764
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.ct = load i8, ptr %i.cs, align 8, !tbaa !101, !noalias !764
  %i.cu = call noundef zeroext i1 @_ZNK5draco17GeometryAttribute12ConvertValueIfEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEaPT_(ptr noundef nonnull align 8 dereferenceable(64) %i.ck, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %5, i8 noundef signext %i.ct, ptr noundef nonnull align 4 %8) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !764
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !766)
  %i.cv = load ptr, ptr %i.bp, align 8, !tbaa !241, !noalias !766
  %i.cw = sext i32 %i.aj to i64
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !214, !noalias !766 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %9, i8 0, i64 12, i1 false), !tbaa !215, !alias.scope !766
  %i.cz = load ptr, ptr %i.bu, align 8, !tbaa !239, !noalias !766 ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 100
  %i.db = load i8, ptr %i.da, align 4, !tbaa !98, !range !216, !noalias !767, !noundef !217
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit99, label %.else.i96

.else.i96:                                        ; preds = %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit95
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 72
  %i.de = load ptr, ptr %i.dd, align 8, !noalias !767
  %i.df = zext i32 %i.cy to i64
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.df
  %storemerge.i.else.val.i97 = load i32, ptr %i.dg, align 4, !tbaa !102, !noalias !767
  br label %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit99

_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit99: ; preds = %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit95, %.else.i96
  %storemerge.i.i98 = phi i32 [ %i.cy, %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit95 ], [ %storemerge.i.else.val.i97, %.else.i96 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !766
  store i32 %storemerge.i.i98, ptr %4, align 4, !tbaa !219, !noalias !766
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.di = load i8, ptr %i.dh, align 8, !tbaa !101, !noalias !766
  %i.dj = call noundef zeroext i1 @_ZNK5draco17GeometryAttribute12ConvertValueIfEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEaPT_(ptr noundef nonnull align 8 dereferenceable(64) %i.cz, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %4, i8 noundef signext %i.di, ptr noundef nonnull align 4 %9) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !766
  %i.dk = load float, ptr %9, align 4, !tbaa !215, !noalias !768
  %i.dl = load float, ptr %8, align 4, !tbaa !215, !noalias !768 ; 2 uses
  %i.dm = fsub float %i.dk, %i.dl                 ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.do = load float, ptr %i.dn, align 4, !tbaa !215, !noalias !768
  %i.dp = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !215, !noalias !768 ; 2 uses
  %i.dr = fsub float %i.do, %i.dq                 ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !215, !noalias !768
  %i.du = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dv = load float, ptr %i.du, align 4, !tbaa !215, !noalias !768 ; 2 uses
  %i.dw = fsub float %i.dt, %i.dv                 ; 4 uses
  %i.dx = call float @llvm.fmuladd.f32(float %i.dm, float %i.dm, float 0.000000e+00)
  %i.dy = call float @llvm.fmuladd.f32(float %i.dr, float %i.dr, float %i.dx)
  %i.dz = call noundef float @llvm.fmuladd.f32(float %i.dw, float %i.dw, float %i.dy) ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !236
  %i.ec = icmp slt i32 %i.eb, 258
  %i.ed = fcmp ogt float %i.dz, 0.000000e+00
  %or.cond = or i1 %i.ec, %i.ed
  br i1 %or.cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit99
  %i.ee = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !215, !noalias !769
  %i.eg = fsub float %i.ef, %i.dv                 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !215, !noalias !769
  %i.ej = fsub float %i.ei, %i.dq                 ; 2 uses
  %i.ek = load float, ptr %7, align 4, !tbaa !215, !noalias !769
  %i.el = fsub float %i.ek, %i.dl                 ; 2 uses
  %i.em = call float @llvm.fmuladd.f32(float %i.dm, float %i.el, float 0.000000e+00)
  %i.en = call float @llvm.fmuladd.f32(float %i.dr, float %i.ej, float %i.em)
  %i.eo = call noundef float @llvm.fmuladd.f32(float %i.dw, float %i.eg, float %i.en)
  %i.ep = fdiv float %i.eo, %i.dz                 ; 4 uses
  %i.eq = fmul float %i.dm, %i.ep
  %i.er = fmul float %i.dr, %i.ep
  %i.es = fmul float %i.dw, %i.ep
  %i.et = fsub float %i.el, %i.eq                 ; 2 uses
  %i.eu = fsub float %i.ej, %i.er                 ; 2 uses
  %i.ev = fsub float %i.eg, %i.es                 ; 2 uses
  %i.ew = call float @llvm.fmuladd.f32(float %i.et, float %i.et, float 0.000000e+00)
  %i.ex = call float @llvm.fmuladd.f32(float %i.eu, float %i.eu, float %i.ew)
  %i.ey = call noundef float @llvm.fmuladd.f32(float %i.ev, float %i.ev, float %i.ex)
  %i.ez = fdiv float %i.ey, %i.dz
  %i.fa = call noundef float @sqrtf(float noundef %i.ez) #17
  br label %bb.l

bb.l:                                             ; preds = %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit99, %bb.k
  %.0156 = phi float [ %i.ep, %bb.k ], [ 0.000000e+00, %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit99 ]
  %.076 = phi float [ %i.fa, %bb.k ], [ 0.000000e+00, %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit99 ] ; 2 uses
  %i.fb = fsub <2 x float> %i.ax, %i.as           ; 3 uses
  %i.fc = extractelement <2 x float> %i.fb, i64 0
  %i.fd = fmul float %i.fc, %.076                 ; 2 uses
  %i.fe = insertelement <2 x float> poison, float %.0156, i64 0
  %i.ff = shufflevector <2 x float> %i.fe, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fb, <2 x float> %i.ff, <2 x float> %i.as)
  %i.fh = extractelement <2 x float> %i.fb, i64 1
  %i.fi = fmul float %i.fh, %.076                 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !143
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !143 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !144 ; 3 uses
  %i.fp = icmp ne ptr %i.fk, %i.fm
  %i.fq = icmp ne i32 %i.fo, 0                    ; 2 uses
  %.not171 = select i1 %i.fp, i1 true, i1 %i.fq   ; 2 uses
  br i1 %.not171, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.fr = zext i32 %i.fo to i64
  %i.fs = add nsw i64 %i.fr, -1                   ; 3 uses
  %i.ft = sdiv i64 %i.fs, 64
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.ft
  %i.fv = and i64 %i.fs, -9223372036854775745
  %i.fw = icmp ugt i64 %i.fv, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.fw, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.fu, i64 %storemerge.idx.i.i.i.i.i
  %i.fx = and i64 %i.fs, 63
  %i.fy = shl nuw i64 1, %i.fx
  %i.fz = load i64, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !186
  %i.ga = and i64 %i.fz, %i.fy
  %.not168 = icmp eq i64 %i.ga, 0                 ; 2 uses
  %i.gb = add i32 %i.fo, -1
  store i32 %i.gb, ptr %i.fn, align 8, !tbaa !144
  br i1 %i.fq, label %_ZNSt6vectorIbSaIbEE8pop_backEv.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 63, ptr %i.fn, align 8, !tbaa !144
  %i.gc = getelementptr inbounds i8, ptr %i.fm, i64 -8
  store ptr %i.gc, ptr %i.fl, align 8, !tbaa !143
  br label %_ZNSt6vectorIbSaIbEE8pop_backEv.exit

_ZNSt6vectorIbSaIbEE8pop_backEv.exit:             ; preds = %bb.m, %bb.n
  %i.gd = fneg float %i.fd
  %i.ge = fneg float %i.fi
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !161
  %.sroa.6.0.p = select i1 %.not168, float %i.gd, float %i.fd
  %.sroa.0112.0.p = select i1 %.not168, float %i.fi, float %i.ge
  %i.gh = insertelement <2 x float> poison, float %.sroa.0112.0.p, i64 0
  %i.gi = insertelement <2 x float> %i.gh, float %.sroa.6.0.p, i64 1
  %i.gj = fadd <2 x float> %i.fg, %i.gi
  %i.gk = fpext <2 x float> %i.gj to <2 x double>
  %i.gl = fadd <2 x double> %i.gk, splat (double 5.000000e-01)
  %i.gm = call <2 x double> @llvm.floor.v2f64(<2 x double> %i.gl) ; 3 uses
  %11 = fcmp ugt <2 x double> %i.gm, splat (double f0x41DFFFFFFFC00000)
  %i.gn = fcmp olt <2 x double> %i.gm, splat (double f0xC1E0000000000000)
  %i.go = or <2 x i1> %11, %i.gn
  %i.gp = fptosi <2 x double> %i.gm to <2 x i32>
  %i.gq = select <2 x i1> %i.go, <2 x i32> splat (i32 -2147483648), <2 x i32> %i.gp
  store <2 x i32> %i.gq, ptr %i.gg, align 4, !tbaa !102
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIbSaIbEE8pop_backEv.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %.loopexit

bb.p:                                             ; preds = %_ZNKSt6vectorIiSaIiEE2atEm.exit91
  br i1 %i.al, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gr = icmp sgt i32 %3, 0
  br i1 %i.gr, label %bb.r, label %.preheader

.preheader:                                       ; preds = %bb.q
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !240
  %i.gu = icmp sgt i32 %i.gt, 0
  br i1 %i.gu, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !161
  br label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.gx = add nsw i32 %3, -1
  br label %bb.t

bb.s:                                             ; preds = %.lr.ph, %bb.s
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.s ] ; 2 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %indvars.iv
  store i32 0, ptr %i.gy, align 4, !tbaa !102
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gz = load i32, ptr %i.gs, align 8, !tbaa !240
  %i.ha = sext i32 %i.gz to i64
  %i.hb = icmp slt i64 %indvars.iv.next, %i.ha
  br i1 %i.hb, label %bb.s, label %.loopexit, !llvm.loop !756

bb.t:                                             ; preds = %bb.p, %bb.r
  %.sink202 = phi i32 [ %i.gx, %bb.r ], [ %i.ah, %bb.p ]
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.hd = load i32, ptr %i.hc, align 8, !tbaa !240 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.hf = icmp sgt i32 %i.hd, 0
  br i1 %i.hf, label %.lr.ph175, label %.loopexit

.lr.ph175:                                        ; preds = %bb.t
  %i.hg = mul nsw i32 %i.hd, %.sink202
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !161
  %i.hj = sext i32 %i.hg to i64
  %invariant.gep = getelementptr [4 x i8], ptr %2, i64 %i.hj
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph175, %bb.u
  %indvars.iv179 = phi i64 [ 0, %.lr.ph175 ], [ %indvars.iv.next180, %bb.u ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv179
  %i.hk = load i32, ptr %gep, align 4, !tbaa !102
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %indvars.iv179
  store i32 %i.hk, ptr %i.hl, align 4, !tbaa !102
  %indvars.iv.next180 = add nuw nsw i64 %indvars.iv179, 1 ; 2 uses
  %i.hm = load i32, ptr %i.he, align 8, !tbaa !240
  %i.hn = sext i32 %i.hm to i64
  %i.ho = icmp slt i64 %indvars.iv.next180, %i.hn
  br i1 %i.ho, label %bb.u, label %.loopexit, !llvm.loop !757

.loopexit:                                        ; preds = %bb.s, %bb.u, %bb.o, %bb.i, %bb.h, %.preheader, %bb.t
  %.3 = phi i1 [ true, %bb.u ], [ true, %bb.t ], [ true, %.preheader ], [ true, %bb.h ], [ %.not171, %bb.o ], [ true, %bb.i ], [ true, %bb.s ]
  ret i1 %.3
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5draco44MeshPredictionSchemeTexCoordsPortableDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5draco44MeshPredictionSchemeTexCoordsPortableDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !143  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !147  ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 3
  %i.i = sub nsw i64 0, %i.h
  %i.j = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.i
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.g) #18
  br label %_ZN5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEED2Ev.exit

_ZN5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEED2Ev.exit: ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5draco23PredictionSchemeDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEEEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !58   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i, label %_ZN5draco23PredictionSchemeDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEED2Ev.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !59
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #18, !inline_history !173
  br label %_ZN5draco23PredictionSchemeDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEEED2Ev.exit

_ZN5draco23PredictionSchemeDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEEED2Ev.exit: ; preds = %_ZN5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5draco44MeshPredictionSchemeTexCoordsPortableDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5draco44MeshPredictionSchemeTexCoordsPortableDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !143  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !147  ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 3
  %i.i = sub nsw i64 0, %i.h
  %i.j = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.i
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.g) #18, !inline_history !770
  br label %_ZN5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEED2Ev.exit.i

_ZN5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEED2Ev.exit.i: ; preds = %bb.b, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5draco23PredictionSchemeDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEEEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !58   ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5draco44MeshPredictionSchemeTexCoordsPortableDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEED2Ev.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !59
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #18, !inline_history !771
  br label %_ZN5draco44MeshPredictionSchemeTexCoordsPortableDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEED2Ev.exit

_ZN5draco44MeshPredictionSchemeTexCoordsPortableDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEED2Ev.exit: ; preds = %_ZN5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEED2Ev.exit.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 192) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK5draco44MeshPredictionSchemeTexCoordsPortableDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE19GetPredictionMethodEv(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret i32 5
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5draco44MeshPredictionSchemeTexCoordsPortableDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE13IsInitializedEv(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !243
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZNK5draco24MeshPredictionSchemeDataINS_11CornerTableEE13IsInitializedEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !132
  %.not.i = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8
  %.not1.i = icmp eq ptr %i.f, null
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load ptr, ptr %i.g, align 8
  %.not2.i = icmp eq ptr %i.h, null
  %or.cond5.i = select i1 %or.cond.i, i1 true, i1 %.not2.i
  br i1 %or.cond5.i, label %_ZNK5draco24MeshPredictionSchemeDataINS_11CornerTableEE13IsInitializedEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !134
  %i.k = icmp ne ptr %i.j, null
  br label %_ZNK5draco24MeshPredictionSchemeDataINS_11CornerTableEE13IsInitializedEv.exit

_ZNK5draco24MeshPredictionSchemeDataINS_11CornerTableEE13IsInitializedEv.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %i.k, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK5draco44MeshPredictionSchemeTexCoordsPortableDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE22GetNumParentAttributesEv(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #7 comdat align 2 {
end_hunk_1
