Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/sequential_integer_attribute_decoder?download=true
inline.NumInlined: 2410
inline.NumDeleted: 886
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_ZN5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21ComputeOriginalValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEE:bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #19
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !162  ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !162
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i

_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i: ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #18
  br label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store i32 2, ptr %i.f, align 8, !tbaa !180
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !119  ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !58   ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = ashr exact i64 %i.m, 2                   ; 2 uses
  %i.o = icmp ult i64 %i.n, 2
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit
  %i.p = sub nuw nsw i64 2, %i.n
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.p)
  br label %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit

bb.d:                                             ; preds = %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit
  %.not30 = icmp eq i64 %i.m, 8
  br i1 %.not30, label %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, %i.q
  br i1 %.not.i.i.i, label %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.e
  store ptr %i.q, ptr %i.h, align 8, !tbaa !119
  br label %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit

_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit: ; preds = %bb.c, %bb.d, %bb.e, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !129  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !183
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !184
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = lshr exact i64 %i.y, 2                   ; 2 uses
  %i.aa = trunc i64 %i.z to i32
  %.not25.not33 = icmp sgt i32 %i.aa, 0
  br i1 %.not25.not33, label %.lr.ph, label %.critedge27

.lr.ph:                                           ; preds = %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %wide.trip.count = and i64 %i.z, 2147483647
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit ] ; 6 uses
  %i.ae = load ptr, ptr %i.r, align 8, !tbaa !129 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !183
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !184 ; 2 uses
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 2                 ; 2 uses
  %.not.i.i = icmp ugt i64 %i.al, %indvars.iv
  br i1 %.not.i.i, label %_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE2atEm.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef %indvars.iv, i64 noundef %i.al) #20
  unreachable

_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE2atEm.exit: ; preds = %bb.f
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv
  %i.an = load i32, ptr %i.am, align 4, !tbaa !186
  store i32 %i.an, ptr %6, align 4, !tbaa !186
  %i.ao = trunc nuw nsw i64 %indvars.iv to i32
  %i.ap = call noundef zeroext i1 @_ZN5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21ComputePredictedValueENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKii(ptr noundef nonnull align 8 dereferenceable(172) %0, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %6, ptr noundef %2, i32 noundef %i.ao) ; 3 uses
  br i1 %i.ap, label %bb.h, label %.critedge27

bb.h:                                             ; preds = %_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE2atEm.exit
  %i.aq = shl nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.ar = load ptr, ptr %i.d, align 8, !tbaa !162
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aq
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aq
  %i.au = load i32, ptr %i.f, align 8, !tbaa !180
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %.lr.ph.i.i, label %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit

.lr.ph.i.i:                                       ; preds = %bb.h
  %i.aw = load ptr, ptr %i.g, align 8             ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.n, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.n ] ; 4 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.i.i
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !102 ; 3 uses
  %i.az = load i32, ptr %i.ab, align 8, !tbaa !176 ; 2 uses
  %i.ba = icmp sgt i32 %i.ay, %i.az
  br i1 %i.ba, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.i.i
  store i32 %i.az, ptr %i.bb, align 4, !tbaa !102
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.bc = load i32, ptr %i.ac, align 4, !tbaa !175 ; 2 uses
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
  %i.bf = load i32, ptr %i.f, align 8, !tbaa !180 ; 2 uses
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
  %i.bp = load i32, ptr %i.ab, align 8, !tbaa !176
  %i.bq = icmp sgt i32 %i.bn, %i.bp
  br i1 %i.bq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph.i
  %i.br = load i32, ptr %i.ad, align 4, !tbaa !177
  %i.bs = sub nsw i32 %i.bn, %i.br
  br label %.sink.split.i

bb.p:                                             ; preds = %.lr.ph.i
  %i.bt = load i32, ptr %i.ac, align 4, !tbaa !175
  %i.bu = icmp slt i32 %i.bn, %i.bt
  br i1 %i.bu, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bv = load i32, ptr %i.ad, align 4, !tbaa !177
  %i.bw = add nsw i32 %i.bv, %i.bn
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.q, %bb.o
  %.sink.i = phi i32 [ %i.bs, %bb.o ], [ %i.bw, %bb.q ]
  store i32 %.sink.i, ptr %i.bo, align 4, !tbaa !102
  br label %bb.r

bb.r:                                             ; preds = %.sink.split.i, %bb.p
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bx = load i32, ptr %i.f, align 8, !tbaa !180
  %i.by = sext i32 %i.bx to i64
  %i.bz = icmp slt i64 %indvars.iv.next.i, %i.by
  br i1 %i.bz, label %.lr.ph.i, label %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit, !llvm.loop !2

_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit: ; preds = %bb.r, %bb.h, %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge27, label %bb.f, !llvm.loop !444

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
  %i.b = load i32, ptr %1, align 4, !tbaa !186    ; 5 uses
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
  %.sink.i.i157 = phi i32 [ %spec.select.i.i, %bb.c ], [ %spec.select.i.i, %bb.d ], [ -1, %bb.a ]
  %.sink.i.i87 = phi i32 [ %i.d, %bb.c ], [ %i.e, %bb.d ], [ -1, %bb.a ]
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !128
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.h = zext i32 %.sink.i.i157 to i64
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !205, !noalias !475 ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.h
  %i.k = load i32, ptr %i.j, align 4, !tbaa !207, !noalias !475
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !130  ; 2 uses
  %i.n = sext i32 %i.k to i64                     ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !119
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !58   ; 3 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 2                   ; 4 uses
  %.not.i.i88 = icmp ugt i64 %i.u, %i.n
  br i1 %.not.i.i88, label %_ZNKSt6vectorIiSaIiEE2atEm.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef %i.n, i64 noundef %i.u) #20
  unreachable

_ZNKSt6vectorIiSaIiEE2atEm.exit:                  ; preds = %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.v = zext i32 %.sink.i.i87 to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !207, !noalias !476
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.n
  %i.z = load i32, ptr %i.y, align 4, !tbaa !102  ; 4 uses
  %i.aa = sext i32 %i.x to i64                    ; 3 uses
  %.not.i.i89 = icmp ugt i64 %i.u, %i.aa
  br i1 %.not.i.i89, label %_ZNKSt6vectorIiSaIiEE2atEm.exit90, label %bb.f

bb.f:                                             ; preds = %_ZNKSt6vectorIiSaIiEE2atEm.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef %i.aa, i64 noundef %i.u) #20
  unreachable

_ZNKSt6vectorIiSaIiEE2atEm.exit90:                ; preds = %_ZNKSt6vectorIiSaIiEE2atEm.exit
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !102 ; 3 uses
  %i.ad = icmp slt i32 %i.ac, %3
  %i.ae = icmp slt i32 %i.z, %3                   ; 2 uses
  %or.cond85 = select i1 %i.ad, i1 %i.ae, i1 false
  br i1 %or.cond85, label %bb.g, label %bb.q

bb.g:                                             ; preds = %_ZNKSt6vectorIiSaIiEE2atEm.exit90
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !211, !noalias !477 ; 2 uses
  %i.ah = mul nsw i32 %i.ag, %i.z
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ai
  %i.ak = load <2 x i32>, ptr %i.aj, align 4, !tbaa !102, !noalias !477
  %i.al = sitofp <2 x i32> %i.ak to <2 x float>   ; 4 uses
  %i.am = mul nsw i32 %i.ag, %i.ac
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %2, i64 %i.an
  %i.ap = load <2 x i32>, ptr %i.ao, align 4, !tbaa !102, !noalias !478
  %i.aq = sitofp <2 x i32> %i.ap to <2 x float>   ; 5 uses
  %i.ar = extractelement <2 x float> %i.aq, i64 0 ; 2 uses
  %i.as = extractelement <2 x float> %i.al, i64 0
  %i.at = fcmp oeq float %i.ar, %i.as
  %i.au = extractelement <2 x float> %i.aq, i64 1 ; 2 uses
  %i.av = extractelement <2 x float> %i.al, i64 1
  %i.aw = fcmp oeq float %i.au, %i.av
  %.lcssa.i = select i1 %i.at, i1 %i.aw, i1 false
  br i1 %.lcssa.i, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ay = fpext <2 x float> %i.aq to <2 x double>
  %i.az = fptosi float %i.ar to i32
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !162 ; 3 uses
  %i.bb = fcmp ogt <2 x double> %i.ay, splat (double f0x41DFFFFFFFC00000)
  %i.bc = fcmp olt <2 x float> %i.aq, splat (float f0xCF000000)
  %i.bd = or <2 x i1> %i.bc, %i.bb                ; 2 uses
  %i.be = extractelement <2 x i1> %i.bd, i64 0
  %.sink = select i1 %i.be, i32 -2147483648, i32 %i.az
  store i32 %.sink, ptr %i.ba, align 4, !tbaa !102
  %i.bf = extractelement <2 x i1> %i.bd, i64 1
  br i1 %i.bf, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = fptosi float %i.au to i32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !102
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  store i32 -2147483648, ptr %i.bi, align 4, !tbaa !102
  br label %.loopexit

bb.k:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !479)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !212, !noalias !479
  %i.bl = sext i32 %3 to i64
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !214, !noalias !479 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, i8 0, i64 12, i1 false), !tbaa !215, !alias.scope !479
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !210, !noalias !479 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 100
  %i.br = load i8, ptr %i.bq, align 4, !tbaa !98, !range !216, !noalias !480, !noundef !217
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit, label %.else.i

.else.i:                                          ; preds = %bb.k
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 72
  %i.bu = load ptr, ptr %i.bt, align 8, !noalias !480
  %i.bv = zext i32 %i.bn to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.bv
  %storemerge.i.else.val.i = load i32, ptr %i.bw, align 4, !tbaa !102, !noalias !480
  br label %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit

_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit: ; preds = %bb.k, %.else.i
  %storemerge.i.i = phi i32 [ %i.bn, %bb.k ], [ %storemerge.i.else.val.i, %.else.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !479
  store i32 %storemerge.i.i, ptr %6, align 4, !tbaa !219, !noalias !479
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.by = load i8, ptr %i.bx, align 8, !tbaa !101, !noalias !479
  %i.bz = call noundef zeroext i1 @_ZNK5draco17GeometryAttribute12ConvertValueIfEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEaPT_(ptr noundef nonnull align 8 dereferenceable(64) %i.bp, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %6, i8 noundef signext %i.by, ptr noundef nonnull align 4 %7) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !479
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !481)
  %i.ca = load ptr, ptr %i.bj, align 8, !tbaa !212, !noalias !481
  %i.cb = sext i32 %i.z to i64
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !214, !noalias !481 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %8, i8 0, i64 12, i1 false), !tbaa !215, !alias.scope !481
  %i.ce = load ptr, ptr %i.bo, align 8, !tbaa !210, !noalias !481 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 100
  %i.cg = load i8, ptr %i.cf, align 4, !tbaa !98, !range !216, !noalias !482, !noundef !217
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit94, label %.else.i91

.else.i91:                                        ; preds = %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 72
  %i.cj = load ptr, ptr %i.ci, align 8, !noalias !482
  %i.ck = zext i32 %i.cd to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.ck
  %storemerge.i.else.val.i92 = load i32, ptr %i.cl, align 4, !tbaa !102, !noalias !482
  br label %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit94

_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit94: ; preds = %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit, %.else.i91
  %storemerge.i.i93 = phi i32 [ %i.cd, %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit ], [ %storemerge.i.else.val.i92, %.else.i91 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !481
  store i32 %storemerge.i.i93, ptr %5, align 4, !tbaa !219, !noalias !481
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cn = load i8, ptr %i.cm, align 8, !tbaa !101, !noalias !481
  %i.co = call noundef zeroext i1 @_ZNK5draco17GeometryAttribute12ConvertValueIfEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEaPT_(ptr noundef nonnull align 8 dereferenceable(64) %i.ce, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %5, i8 noundef signext %i.cn, ptr noundef nonnull align 4 %8) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !481
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !483)
  %i.cp = load ptr, ptr %i.bj, align 8, !tbaa !212, !noalias !483
  %i.cq = sext i32 %i.ac to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !214, !noalias !483 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %9, i8 0, i64 12, i1 false), !tbaa !215, !alias.scope !483
  %i.ct = load ptr, ptr %i.bo, align 8, !tbaa !210, !noalias !483 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 100
  %i.cv = load i8, ptr %i.cu, align 4, !tbaa !98, !range !216, !noalias !484, !noundef !217
  %i.cw = trunc nuw i8 %i.cv to i1
  br i1 %i.cw, label %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit98, label %.else.i95

.else.i95:                                        ; preds = %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit94
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 72
  %i.cy = load ptr, ptr %i.cx, align 8, !noalias !484
  %i.cz = zext i32 %i.cs to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %i.cz
  %storemerge.i.else.val.i96 = load i32, ptr %i.da, align 4, !tbaa !102, !noalias !484
  br label %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit98

_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit98: ; preds = %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit94, %.else.i95
  %storemerge.i.i97 = phi i32 [ %i.cs, %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit94 ], [ %storemerge.i.else.val.i96, %.else.i95 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !483
  store i32 %storemerge.i.i97, ptr %4, align 4, !tbaa !219, !noalias !483
  %i.db = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.dc = load i8, ptr %i.db, align 8, !tbaa !101, !noalias !483
  %i.dd = call noundef zeroext i1 @_ZNK5draco17GeometryAttribute12ConvertValueIfEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEaPT_(ptr noundef nonnull align 8 dereferenceable(64) %i.ct, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %4, i8 noundef signext %i.dc, ptr noundef nonnull align 4 %9) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !483
  %i.de = load float, ptr %9, align 4, !tbaa !215, !noalias !485
  %i.df = load float, ptr %8, align 4, !tbaa !215, !noalias !485 ; 2 uses
  %i.dg = fsub float %i.de, %i.df                 ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.di = load float, ptr %i.dh, align 4, !tbaa !215, !noalias !485
  %i.dj = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !215, !noalias !485 ; 2 uses
  %i.dl = fsub float %i.di, %i.dk                 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !215, !noalias !485
  %i.do = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dp = load float, ptr %i.do, align 4, !tbaa !215, !noalias !485 ; 2 uses
  %i.dq = fsub float %i.dn, %i.dp                 ; 4 uses
  %i.dr = call float @llvm.fmuladd.f32(float %i.dg, float %i.dg, float 0.000000e+00)
  %i.ds = call float @llvm.fmuladd.f32(float %i.dl, float %i.dl, float %i.dr)
  %i.dt = call noundef float @llvm.fmuladd.f32(float %i.dq, float %i.dq, float %i.ds) ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 168
end_hunk_0
begin_hunk_1_@_ZN5draco44MeshPredictionSchemeTexCoordsPortableDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE20DecodePredictionDataEPNS_13DecoderBufferE:bb.a

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5draco44MeshPredictionSchemeTexCoordsPortableDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21ComputeOriginalValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.draco::IndexType.93", align 4 ; 2 uses
  %.not = icmp eq i32 %4, 2
  br i1 %.not, label %bb.b, label %.critedge25

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %5, ptr %i.b, align 8, !tbaa !226
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store i32 2, ptr %i.c, align 8, !tbaa !180
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !119  ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !58   ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = ashr exact i64 %i.j, 2                   ; 2 uses
  %i.l = icmp ult i64 %i.k, 2
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = sub nuw nsw i64 2, %i.k
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.m)
  br label %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit

bb.d:                                             ; preds = %bb.b
  %.not26 = icmp eq i64 %i.j, 8
  br i1 %.not26, label %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, %i.n
  br i1 %.not.i.i.i, label %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.e
  store ptr %i.n, ptr %i.e, align 8, !tbaa !119
  br label %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit

_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit: ; preds = %bb.c, %bb.d, %bb.e, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !129  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !183
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !184
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = lshr exact i64 %i.v, 2                   ; 2 uses
  %i.x = trunc i64 %i.w to i32
  %.not23.not29 = icmp sgt i32 %i.x, 0
  br i1 %.not23.not29, label %.lr.ph, label %.critedge25

.lr.ph:                                           ; preds = %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %wide.trip.count = and i64 %i.w, 2147483647
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit ] ; 6 uses
  %i.ac = load ptr, ptr %i.o, align 8, !tbaa !129 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !183
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !184 ; 2 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 2                 ; 2 uses
  %.not.i.i = icmp ugt i64 %i.aj, %indvars.iv
  br i1 %.not.i.i, label %_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE2atEm.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef %indvars.iv, i64 noundef %i.aj) #20
  unreachable

_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE2atEm.exit: ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !186
  store i32 %i.al, ptr %6, align 4, !tbaa !186
  %i.am = trunc nuw nsw i64 %indvars.iv to i32
  %i.an = call noundef zeroext i1 @_ZN5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21ComputePredictedValueILb0EEEbNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKii(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %6, ptr noundef %2, i32 noundef %i.am) ; 3 uses
  br i1 %i.an, label %bb.h, label %.critedge25

bb.h:                                             ; preds = %_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE2atEm.exit
  %i.ao = shl nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ao
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ao
  %i.ar = load i32, ptr %i.c, align 8, !tbaa !180
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %.lr.ph.i.i, label %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit

.lr.ph.i.i:                                       ; preds = %bb.h
  %i.at = load ptr, ptr %i.d, align 8             ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.n, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.n ] ; 4 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.i.i
  %i.av = load i32, ptr %i.au, align 4, !tbaa !102 ; 3 uses
  %i.aw = load i32, ptr %i.z, align 8, !tbaa !176 ; 2 uses
  %i.ax = icmp sgt i32 %i.av, %i.aw
  br i1 %i.ax, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.i.i
  store i32 %i.aw, ptr %i.ay, align 4, !tbaa !102
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.az = load i32, ptr %i.aa, align 4, !tbaa !175 ; 2 uses
  %i.ba = icmp slt i32 %i.av, %i.az
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.i.i ; 2 uses
  br i1 %i.ba, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 %i.az, ptr %i.bb, align 4, !tbaa !102
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  store i32 %i.av, ptr %i.bb, align 4, !tbaa !102
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.j
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.bc = load i32, ptr %i.c, align 8, !tbaa !180 ; 2 uses
  %i.bd = sext i32 %i.bc to i64
  %i.be = icmp slt i64 %indvars.iv.next.i.i, %i.bd
  br i1 %i.be, label %bb.i, label %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i, !llvm.loop !1

_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i: ; preds = %bb.n
  %i.bf = icmp sgt i32 %i.bc, 0
  br i1 %i.bf, label %.lr.ph.i, label %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit

.lr.ph.i:                                         ; preds = %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i, %bb.r
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.r ], [ 0, %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i ] ; 4 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.i
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !102
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.i
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !102
  %i.bk = add i32 %i.bj, %i.bh                    ; 5 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.i ; 2 uses
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !102
  %i.bm = load i32, ptr %i.z, align 8, !tbaa !176
  %i.bn = icmp sgt i32 %i.bk, %i.bm
  br i1 %i.bn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph.i
  %i.bo = load i32, ptr %i.ab, align 4, !tbaa !177
  %i.bp = sub nsw i32 %i.bk, %i.bo
  br label %.sink.split.i

bb.p:                                             ; preds = %.lr.ph.i
  %i.bq = load i32, ptr %i.aa, align 4, !tbaa !175
  %i.br = icmp slt i32 %i.bk, %i.bq
  br i1 %i.br, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bs = load i32, ptr %i.ab, align 4, !tbaa !177
  %i.bt = add nsw i32 %i.bs, %i.bk
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.q, %bb.o
  %.sink.i = phi i32 [ %i.bp, %bb.o ], [ %i.bt, %bb.q ]
  store i32 %.sink.i, ptr %i.bl, align 4, !tbaa !102
  br label %bb.r

bb.r:                                             ; preds = %.sink.split.i, %bb.p
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bu = load i32, ptr %i.c, align 8, !tbaa !180
  %i.bv = sext i32 %i.bu to i64
  %i.bw = icmp slt i64 %indvars.iv.next.i, %i.bv
  br i1 %i.bw, label %.lr.ph.i, label %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit, !llvm.loop !2

_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit: ; preds = %bb.r, %bb.h, %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge25, label %bb.f, !llvm.loop !501

.critedge25:                                      ; preds = %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit, %_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE2atEm.exit, %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit, %bb.a
  %.4 = phi i1 [ false, %bb.a ], [ true, %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit ], [ %i.an, %_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE2atEm.exit ], [ %i.an, %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit ]
  ret i1 %.4
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21ComputePredictedValueILb0EEEbNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKii(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr nofreeobj noundef align 4 dead_on_return dereferenceable(4) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.draco::IndexType", align 4  ; 4 uses
  %5 = alloca %"class.draco::IndexType", align 4  ; 4 uses
  %6 = alloca %"class.draco::IndexType", align 4  ; 4 uses
  %7 = alloca %"class.draco::VectorD.120", align 8 ; 8 uses
  %8 = alloca %"class.draco::VectorD.120", align 8 ; 8 uses
  %9 = alloca %"class.draco::VectorD.120", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i32, ptr %1, align 4, !tbaa !186    ; 5 uses
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
  %.sink.i.i193 = phi i32 [ %spec.select.i.i, %bb.c ], [ %spec.select.i.i, %bb.d ], [ -1, %bb.a ]
  %.sink.i.i59 = phi i32 [ %i.d, %bb.c ], [ %i.e, %bb.d ], [ -1, %bb.a ]
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !128
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.h = zext i32 %.sink.i.i193 to i64
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !205, !noalias !530 ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.h
  %i.k = load i32, ptr %i.j, align 4, !tbaa !207, !noalias !530
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !130  ; 2 uses
  %i.n = sext i32 %i.k to i64                     ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !119
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !58   ; 3 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 2                   ; 4 uses
  %.not.i.i60 = icmp ugt i64 %i.u, %i.n
  br i1 %.not.i.i60, label %_ZNKSt6vectorIiSaIiEE2atEm.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef %i.n, i64 noundef %i.u) #20
  unreachable

_ZNKSt6vectorIiSaIiEE2atEm.exit:                  ; preds = %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.v = zext i32 %.sink.i.i59 to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !207, !noalias !531
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.n
  %i.z = load i32, ptr %i.y, align 4, !tbaa !102  ; 4 uses
  %i.aa = sext i32 %i.x to i64                    ; 3 uses
  %.not.i.i61 = icmp ugt i64 %i.u, %i.aa
  br i1 %.not.i.i61, label %_ZNKSt6vectorIiSaIiEE2atEm.exit62, label %bb.f

bb.f:                                             ; preds = %_ZNKSt6vectorIiSaIiEE2atEm.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef %i.aa, i64 noundef %i.u) #20
  unreachable

_ZNKSt6vectorIiSaIiEE2atEm.exit62:                ; preds = %_ZNKSt6vectorIiSaIiEE2atEm.exit
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !102 ; 3 uses
  %i.ad = icmp slt i32 %i.ac, %3
  %i.ae = icmp slt i32 %i.z, %3                   ; 2 uses
  %or.cond = select i1 %i.ad, i1 %i.ae, i1 false
  br i1 %or.cond, label %bb.g, label %bb.p

bb.g:                                             ; preds = %_ZNKSt6vectorIiSaIiEE2atEm.exit62
  %i.af = shl nsw i32 %i.z, 1
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ag ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !102, !noalias !532 ; 3 uses
  %i.aj = sext i32 %i.ai to i64                   ; 3 uses
  %i.ak = getelementptr i8, ptr %i.ah, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !102, !noalias !532 ; 3 uses
  %i.am = sext i32 %i.al to i64                   ; 3 uses
  %i.an = shl nsw i32 %i.ac, 1
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ao ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !102, !noalias !533 ; 2 uses
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr i8, ptr %i.ap, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !102, !noalias !533 ; 2 uses
  %i.au = sext i32 %i.at to i64
  %.not.i = icmp eq i32 %i.aq, %i.ai
  %.not.1.i = icmp eq i32 %i.at, %i.al
  %.not.lcssa.i = select i1 %.not.i, i1 %.not.1.i, i1 false
  br i1 %.not.lcssa.i, label %.thread, label %bb.h

.thread:                                          ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ai, ptr %i.av, align 8, !tbaa !102
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.al, ptr %i.aw, align 4, !tbaa !102
  br label %.loopexit

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !534)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !226, !noalias !534
  %i.az = sext i32 %3 to i64
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !214, !noalias !534 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false), !tbaa !187, !alias.scope !534
  %i.bc = load ptr, ptr %0, align 8, !tbaa !225, !noalias !534 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 100
  %i.be = load i8, ptr %i.bd, align 4, !tbaa !98, !range !216, !noalias !535, !noundef !217
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit, label %.else.i

.else.i:                                          ; preds = %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 72
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !535
  %i.bi = zext i32 %i.bb to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bi
  %storemerge.i.else.val.i = load i32, ptr %i.bj, align 4, !tbaa !102, !noalias !535
  br label %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit

_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit: ; preds = %bb.h, %.else.i
  %storemerge.i.i = phi i32 [ %i.bb, %bb.h ], [ %storemerge.i.else.val.i, %.else.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !534
  store i32 %storemerge.i.i, ptr %6, align 4, !tbaa !219, !noalias !534
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.bl = load i8, ptr %i.bk, align 8, !tbaa !101, !noalias !534
  %i.bm = call noundef zeroext i1 @_ZNK5draco17GeometryAttribute12ConvertValueIlEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEaPT_(ptr noundef nonnull align 8 dereferenceable(64) %i.bc, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %6, i8 noundef signext %i.bl, ptr noundef nonnull align 8 %7) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !534
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !536)
  %i.bn = load ptr, ptr %i.ax, align 8, !tbaa !226, !noalias !536
  %i.bo = sext i32 %i.z to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !214, !noalias !536 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false), !tbaa !187, !alias.scope !536
  %i.br = load ptr, ptr %0, align 8, !tbaa !225, !noalias !536 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 100
  %i.bt = load i8, ptr %i.bs, align 4, !tbaa !98, !range !216, !noalias !537, !noundef !217
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit66, label %.else.i63

.else.i63:                                        ; preds = %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 72
  %i.bw = load ptr, ptr %i.bv, align 8, !noalias !537
  %i.bx = zext i32 %i.bq to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.bx
  %storemerge.i.else.val.i64 = load i32, ptr %i.by, align 4, !tbaa !102, !noalias !537
  br label %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit66

_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit66: ; preds = %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit, %.else.i63
  %storemerge.i.i65 = phi i32 [ %i.bq, %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit ], [ %storemerge.i.else.val.i64, %.else.i63 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !536
  store i32 %storemerge.i.i65, ptr %5, align 4, !tbaa !219, !noalias !536
  %i.bz = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.ca = load i8, ptr %i.bz, align 8, !tbaa !101, !noalias !536
  %i.cb = call noundef zeroext i1 @_ZNK5draco17GeometryAttribute12ConvertValueIlEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEaPT_(ptr noundef nonnull align 8 dereferenceable(64) %i.br, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %5, i8 noundef signext %i.ca, ptr noundef nonnull align 8 %8) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !536
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !538)
  %i.cc = load ptr, ptr %i.ax, align 8, !tbaa !226, !noalias !538
  %i.cd = sext i32 %i.ac to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !214, !noalias !538 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false), !tbaa !187, !alias.scope !538
  %i.cg = load ptr, ptr %0, align 8, !tbaa !225, !noalias !538 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 100
  %i.ci = load i8, ptr %i.ch, align 4, !tbaa !98, !range !216, !noalias !539, !noundef !217
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit70, label %.else.i67

.else.i67:                                        ; preds = %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit66
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 72
  %i.cl = load ptr, ptr %i.ck, align 8, !noalias !539
  %i.cm = zext i32 %i.cf to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.cm
  %storemerge.i.else.val.i68 = load i32, ptr %i.cn, align 4, !tbaa !102, !noalias !539
  br label %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit70

_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit70: ; preds = %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit66, %.else.i67
  %storemerge.i.i69 = phi i32 [ %i.cf, %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit66 ], [ %storemerge.i.else.val.i68, %.else.i67 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !538
  store i32 %storemerge.i.i69, ptr %4, align 4, !tbaa !219, !noalias !538
  %i.co = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.cp = load i8, ptr %i.co, align 8, !tbaa !101, !noalias !538
  %i.cq = call noundef zeroext i1 @_ZNK5draco17GeometryAttribute12ConvertValueIlEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEaPT_(ptr noundef nonnull align 8 dereferenceable(64) %i.cg, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %4, i8 noundef signext %i.cp, ptr noundef nonnull align 8 %9) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !538
  %i.cr = load i64, ptr %9, align 8, !tbaa !187, !noalias !540
  %i.cs = load i64, ptr %8, align 8, !tbaa !187, !noalias !540 ; 3 uses
  %i.ct = sub nsw i64 %i.cr, %i.cs                ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !187, !noalias !540
  %i.cw = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !187, !noalias !540 ; 3 uses
  %i.cy = sub nsw i64 %i.cv, %i.cx                ; 5 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !187, !noalias !540
  %i.db = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !187, !noalias !540 ; 3 uses
  %i.dd = sub nsw i64 %i.da, %i.dc                ; 5 uses
  %i.de = mul nsw i64 %i.ct, %i.ct
  %i.df = mul nsw i64 %i.cy, %i.cy
  %i.dg = add nuw nsw i64 %i.df, %i.de
  %i.dh = mul nsw i64 %i.dd, %i.dd
  %i.di = add nuw nsw i64 %i.dg, %i.dh            ; 10 uses
  %.not = icmp eq i64 %i.di, 0
  br i1 %.not, label %bb.o, label %bb.i

bb.i:                                             ; preds = %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit70
  %i.dj = load i64, ptr %7, align 8, !tbaa !187, !noalias !541 ; 2 uses
  %i.dk = sub nsw i64 %i.dj, %i.cs
  %i.dl = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !187, !noalias !541 ; 2 uses
  %i.dn = sub nsw i64 %i.dm, %i.cx
  %i.do = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !187, !noalias !541 ; 2 uses
  %i.dq = sub nsw i64 %i.dp, %i.dc
  %i.dr = mul nsw i64 %i.dk, %i.ct
  %i.ds = mul nsw i64 %i.dn, %i.cy
  %i.dt = add nsw i64 %i.ds, %i.dr
  %i.du = mul nsw i64 %i.dq, %i.dd
  %i.dv = add nsw i64 %i.dt, %i.du                ; 6 uses
  %i.dw = sub nsw i64 %i.ar, %i.aj                ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21ComputeOriginalValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEE:bb.a
  store ptr %5, ptr %i.b, align 8, !tbaa !241
  %i.c = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #19
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !162  ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !162
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i

_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i: ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #18
  br label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store i32 2, ptr %i.f, align 8, !tbaa !180
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !119  ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !58   ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = ashr exact i64 %i.m, 2                   ; 2 uses
  %i.o = icmp ult i64 %i.n, 2
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit
  %i.p = sub nuw nsw i64 2, %i.n
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.p)
  br label %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit

bb.d:                                             ; preds = %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit
  %.not30 = icmp eq i64 %i.m, 8
  br i1 %.not30, label %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, %i.q
  br i1 %.not.i.i.i, label %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.e
  store ptr %i.q, ptr %i.h, align 8, !tbaa !119
  br label %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit

_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit: ; preds = %bb.c, %bb.d, %bb.e, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !135  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !183
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !184
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = lshr exact i64 %i.y, 2                   ; 2 uses
  %i.aa = trunc i64 %i.z to i32
  %.not25.not33 = icmp sgt i32 %i.aa, 0
  br i1 %.not25.not33, label %.lr.ph, label %.critedge27

.lr.ph:                                           ; preds = %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %wide.trip.count = and i64 %i.z, 2147483647
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit ] ; 6 uses
  %i.ae = load ptr, ptr %i.r, align 8, !tbaa !135 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !183
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !184 ; 2 uses
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 2                 ; 2 uses
  %.not.i.i = icmp ugt i64 %i.al, %indvars.iv
  br i1 %.not.i.i, label %_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE2atEm.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef %indvars.iv, i64 noundef %i.al) #20
  unreachable

_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE2atEm.exit: ; preds = %bb.f
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv
  %i.an = load i32, ptr %i.am, align 4, !tbaa !186
  store i32 %i.an, ptr %6, align 4, !tbaa !186
  %i.ao = trunc nuw nsw i64 %indvars.iv to i32
  %i.ap = call noundef zeroext i1 @_ZN5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21ComputePredictedValueENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKii(ptr noundef nonnull align 8 dereferenceable(172) %0, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %6, ptr noundef %2, i32 noundef %i.ao) ; 3 uses
  br i1 %i.ap, label %bb.h, label %.critedge27

bb.h:                                             ; preds = %_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE2atEm.exit
  %i.aq = shl nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.ar = load ptr, ptr %i.d, align 8, !tbaa !162
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aq
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aq
  %i.au = load i32, ptr %i.f, align 8, !tbaa !180
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %.lr.ph.i.i, label %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit

.lr.ph.i.i:                                       ; preds = %bb.h
  %i.aw = load ptr, ptr %i.g, align 8             ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.n, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.n ] ; 4 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.i.i
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !102 ; 3 uses
  %i.az = load i32, ptr %i.ab, align 8, !tbaa !176 ; 2 uses
  %i.ba = icmp sgt i32 %i.ay, %i.az
  br i1 %i.ba, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.i.i
  store i32 %i.az, ptr %i.bb, align 4, !tbaa !102
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.bc = load i32, ptr %i.ac, align 4, !tbaa !175 ; 2 uses
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
  %i.bf = load i32, ptr %i.f, align 8, !tbaa !180 ; 2 uses
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
  %i.bp = load i32, ptr %i.ab, align 8, !tbaa !176
  %i.bq = icmp sgt i32 %i.bn, %i.bp
  br i1 %i.bq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph.i
  %i.br = load i32, ptr %i.ad, align 4, !tbaa !177
  %i.bs = sub nsw i32 %i.bn, %i.br
  br label %.sink.split.i

bb.p:                                             ; preds = %.lr.ph.i
  %i.bt = load i32, ptr %i.ac, align 4, !tbaa !175
  %i.bu = icmp slt i32 %i.bn, %i.bt
  br i1 %i.bu, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bv = load i32, ptr %i.ad, align 4, !tbaa !177
  %i.bw = add nsw i32 %i.bv, %i.bn
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.q, %bb.o
  %.sink.i = phi i32 [ %i.bs, %bb.o ], [ %i.bw, %bb.q ]
  store i32 %.sink.i, ptr %i.bo, align 4, !tbaa !102
  br label %bb.r

bb.r:                                             ; preds = %.sink.split.i, %bb.p
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bx = load i32, ptr %i.f, align 8, !tbaa !180
  %i.by = sext i32 %i.bx to i64
  %i.bz = icmp slt i64 %indvars.iv.next.i, %i.by
  br i1 %i.bz, label %.lr.ph.i, label %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit, !llvm.loop !2

_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit: ; preds = %bb.r, %bb.h, %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge27, label %bb.f, !llvm.loop !741

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
  %i.a = load i32, ptr %1, align 4, !tbaa !186    ; 4 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit89, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

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
  %.sink.i87.v = select i1 %16, i32 2, i32 -1
  %.sink.i87 = add i32 %.sink.i87.v, %i.a         ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !134  ; 2 uses
  %i.e = icmp eq i32 %spec.select.i, -1
  br i1 %i.e, label %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.f = zext i32 %spec.select.i to i64
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !205, !noalias !772
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.f
  %i.i = load i32, ptr %i.h, align 4, !tbaa !207, !noalias !772
  br label %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit: ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, %bb.b
  %storemerge.i = phi i32 [ %i.i, %bb.b ], [ -1, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ] ; 2 uses
  %i.j = icmp eq i32 %.sink.i87, -1
  br i1 %i.j, label %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit89, label %bb.c

bb.c:                                             ; preds = %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.k = zext i32 %.sink.i87 to i64
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !205, !noalias !773
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.k
  %i.n = load i32, ptr %i.m, align 4, !tbaa !207, !noalias !773
  %i.o = sext i32 %i.n to i64
  br label %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit89

_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit89: ; preds = %bb.a, %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, %bb.c
  %storemerge.i164 = phi i32 [ %storemerge.i, %bb.c ], [ %storemerge.i, %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ], [ -1, %bb.a ]
  %storemerge.i88 = phi i64 [ %i.o, %bb.c ], [ -1, %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ], [ -1, %bb.a ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !136  ; 2 uses
  %i.r = sext i32 %storemerge.i164 to i64         ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !119
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !58   ; 3 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 2                   ; 4 uses
  %.not.i.i = icmp ugt i64 %i.y, %i.r
  br i1 %.not.i.i, label %_ZNKSt6vectorIiSaIiEE2atEm.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit89
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef %i.r, i64 noundef %i.y) #20
  unreachable

_ZNKSt6vectorIiSaIiEE2atEm.exit:                  ; preds = %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit89
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.r
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !102 ; 4 uses
  %.not.i.i90 = icmp ult i64 %storemerge.i88, %i.y
  br i1 %.not.i.i90, label %_ZNKSt6vectorIiSaIiEE2atEm.exit91, label %bb.e

bb.e:                                             ; preds = %_ZNKSt6vectorIiSaIiEE2atEm.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef %storemerge.i88, i64 noundef %i.y) #20
  unreachable

_ZNKSt6vectorIiSaIiEE2atEm.exit91:                ; preds = %_ZNKSt6vectorIiSaIiEE2atEm.exit
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %storemerge.i88
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !102 ; 3 uses
  %i.ad = icmp slt i32 %i.ac, %3
  %i.ae = icmp slt i32 %i.aa, %3                  ; 2 uses
  %or.cond85 = select i1 %i.ad, i1 %i.ae, i1 false
  br i1 %or.cond85, label %bb.f, label %bb.p

bb.f:                                             ; preds = %_ZNKSt6vectorIiSaIiEE2atEm.exit91
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !240, !noalias !774 ; 2 uses
  %i.ah = mul nsw i32 %i.ag, %i.aa
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ai
  %i.ak = load <2 x i32>, ptr %i.aj, align 4, !tbaa !102, !noalias !774
  %i.al = sitofp <2 x i32> %i.ak to <2 x float>   ; 4 uses
  %i.am = mul nsw i32 %i.ag, %i.ac
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %2, i64 %i.an
  %i.ap = load <2 x i32>, ptr %i.ao, align 4, !tbaa !102, !noalias !775
  %i.aq = sitofp <2 x i32> %i.ap to <2 x float>   ; 5 uses
  %i.ar = extractelement <2 x float> %i.aq, i64 0 ; 2 uses
  %i.as = extractelement <2 x float> %i.al, i64 0
  %i.at = fcmp oeq float %i.ar, %i.as
  %i.au = extractelement <2 x float> %i.aq, i64 1 ; 2 uses
  %i.av = extractelement <2 x float> %i.al, i64 1
  %i.aw = fcmp oeq float %i.au, %i.av
  %.lcssa.i = select i1 %i.at, i1 %i.aw, i1 false
  br i1 %.lcssa.i, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ay = fpext <2 x float> %i.aq to <2 x double>
  %i.az = fptosi float %i.ar to i32
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !162 ; 3 uses
  %i.bb = fcmp ogt <2 x double> %i.ay, splat (double f0x41DFFFFFFFC00000)
  %i.bc = fcmp olt <2 x float> %i.aq, splat (float f0xCF000000)
  %i.bd = or <2 x i1> %i.bc, %i.bb                ; 2 uses
  %i.be = extractelement <2 x i1> %i.bd, i64 0
  %.sink = select i1 %i.be, i32 -2147483648, i32 %i.az
  store i32 %.sink, ptr %i.ba, align 4, !tbaa !102
  %i.bf = extractelement <2 x i1> %i.bd, i64 1
  br i1 %i.bf, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bg = fptosi float %i.au to i32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !102
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  store i32 -2147483648, ptr %i.bi, align 4, !tbaa !102
  br label %.loopexit

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !776)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !241, !noalias !776
  %i.bl = sext i32 %3 to i64
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !214, !noalias !776 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, i8 0, i64 12, i1 false), !tbaa !215, !alias.scope !776
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !239, !noalias !776 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 100
  %i.br = load i8, ptr %i.bq, align 4, !tbaa !98, !range !216, !noalias !777, !noundef !217
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit, label %.else.i

.else.i:                                          ; preds = %bb.j
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 72
  %i.bu = load ptr, ptr %i.bt, align 8, !noalias !777
  %i.bv = zext i32 %i.bn to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.bv
  %storemerge.i.else.val.i = load i32, ptr %i.bw, align 4, !tbaa !102, !noalias !777
  br label %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit

_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit: ; preds = %bb.j, %.else.i
  %storemerge.i.i = phi i32 [ %i.bn, %bb.j ], [ %storemerge.i.else.val.i, %.else.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !776
  store i32 %storemerge.i.i, ptr %6, align 4, !tbaa !219, !noalias !776
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.by = load i8, ptr %i.bx, align 8, !tbaa !101, !noalias !776
  %i.bz = call noundef zeroext i1 @_ZNK5draco17GeometryAttribute12ConvertValueIfEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEaPT_(ptr noundef nonnull align 8 dereferenceable(64) %i.bp, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %6, i8 noundef signext %i.by, ptr noundef nonnull align 4 %7) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !776
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !778)
  %i.ca = load ptr, ptr %i.bj, align 8, !tbaa !241, !noalias !778
  %i.cb = sext i32 %i.aa to i64
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !214, !noalias !778 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %8, i8 0, i64 12, i1 false), !tbaa !215, !alias.scope !778
  %i.ce = load ptr, ptr %i.bo, align 8, !tbaa !239, !noalias !778 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 100
  %i.cg = load i8, ptr %i.cf, align 4, !tbaa !98, !range !216, !noalias !779, !noundef !217
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit95, label %.else.i92

.else.i92:                                        ; preds = %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 72
  %i.cj = load ptr, ptr %i.ci, align 8, !noalias !779
  %i.ck = zext i32 %i.cd to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.ck
  %storemerge.i.else.val.i93 = load i32, ptr %i.cl, align 4, !tbaa !102, !noalias !779
  br label %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit95

_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit95: ; preds = %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit, %.else.i92
  %storemerge.i.i94 = phi i32 [ %i.cd, %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit ], [ %storemerge.i.else.val.i93, %.else.i92 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !778
  store i32 %storemerge.i.i94, ptr %5, align 4, !tbaa !219, !noalias !778
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cn = load i8, ptr %i.cm, align 8, !tbaa !101, !noalias !778
  %i.co = call noundef zeroext i1 @_ZNK5draco17GeometryAttribute12ConvertValueIfEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEaPT_(ptr noundef nonnull align 8 dereferenceable(64) %i.ce, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %5, i8 noundef signext %i.cn, ptr noundef nonnull align 4 %8) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !778
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !780)
  %i.cp = load ptr, ptr %i.bj, align 8, !tbaa !241, !noalias !780
  %i.cq = sext i32 %i.ac to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !214, !noalias !780 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %9, i8 0, i64 12, i1 false), !tbaa !215, !alias.scope !780
  %i.ct = load ptr, ptr %i.bo, align 8, !tbaa !239, !noalias !780 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 100
  %i.cv = load i8, ptr %i.cu, align 4, !tbaa !98, !range !216, !noalias !781, !noundef !217
  %i.cw = trunc nuw i8 %i.cv to i1
  br i1 %i.cw, label %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit99, label %.else.i96

.else.i96:                                        ; preds = %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit95
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 72
  %i.cy = load ptr, ptr %i.cx, align 8, !noalias !781
  %i.cz = zext i32 %i.cs to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %i.cz
  %storemerge.i.else.val.i97 = load i32, ptr %i.da, align 4, !tbaa !102, !noalias !781
  br label %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit99

_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit99: ; preds = %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit95, %.else.i96
  %storemerge.i.i98 = phi i32 [ %i.cs, %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit95 ], [ %storemerge.i.else.val.i97, %.else.i96 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !780
  store i32 %storemerge.i.i98, ptr %4, align 4, !tbaa !219, !noalias !780
  %i.db = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.dc = load i8, ptr %i.db, align 8, !tbaa !101, !noalias !780
  %i.dd = call noundef zeroext i1 @_ZNK5draco17GeometryAttribute12ConvertValueIfEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEaPT_(ptr noundef nonnull align 8 dereferenceable(64) %i.ct, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %4, i8 noundef signext %i.dc, ptr noundef nonnull align 4 %9) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !780
  %i.de = load float, ptr %9, align 4, !tbaa !215, !noalias !782
  %i.df = load float, ptr %8, align 4, !tbaa !215, !noalias !782 ; 2 uses
  %i.dg = fsub float %i.de, %i.df                 ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.di = load float, ptr %i.dh, align 4, !tbaa !215, !noalias !782
  %i.dj = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !215, !noalias !782 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN5draco44MeshPredictionSchemeTexCoordsPortableDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE20DecodePredictionDataEPNS_13DecoderBufferE:bb.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5draco44MeshPredictionSchemeTexCoordsPortableDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21ComputeOriginalValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.draco::IndexType.93", align 4 ; 2 uses
  %.not = icmp eq i32 %4, 2
  br i1 %.not, label %bb.b, label %.critedge25

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %5, ptr %i.b, align 8, !tbaa !244
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store i32 2, ptr %i.c, align 8, !tbaa !180
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !119  ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !58   ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = ashr exact i64 %i.j, 2                   ; 2 uses
  %i.l = icmp ult i64 %i.k, 2
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = sub nuw nsw i64 2, %i.k
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.m)
  br label %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit

bb.d:                                             ; preds = %bb.b
  %.not26 = icmp eq i64 %i.j, 8
  br i1 %.not26, label %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, %i.n
  br i1 %.not.i.i.i, label %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.e
  store ptr %i.n, ptr %i.e, align 8, !tbaa !119
  br label %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit

_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit: ; preds = %bb.c, %bb.d, %bb.e, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !135  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !183
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !184
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = lshr exact i64 %i.v, 2                   ; 2 uses
  %i.x = trunc i64 %i.w to i32
  %.not23.not29 = icmp sgt i32 %i.x, 0
  br i1 %.not23.not29, label %.lr.ph, label %.critedge25

.lr.ph:                                           ; preds = %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %wide.trip.count = and i64 %i.w, 2147483647
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit ] ; 6 uses
  %i.ac = load ptr, ptr %i.o, align 8, !tbaa !135 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !183
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !184 ; 2 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 2                 ; 2 uses
  %.not.i.i = icmp ugt i64 %i.aj, %indvars.iv
  br i1 %.not.i.i, label %_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE2atEm.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef %indvars.iv, i64 noundef %i.aj) #20
  unreachable

_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE2atEm.exit: ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !186
  store i32 %i.al, ptr %6, align 4, !tbaa !186
  %i.am = trunc nuw nsw i64 %indvars.iv to i32
  %i.an = call noundef zeroext i1 @_ZN5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21ComputePredictedValueILb0EEEbNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKii(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %6, ptr noundef %2, i32 noundef %i.am) ; 3 uses
  br i1 %i.an, label %bb.h, label %.critedge25

bb.h:                                             ; preds = %_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE2atEm.exit
  %i.ao = shl nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ao
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ao
  %i.ar = load i32, ptr %i.c, align 8, !tbaa !180
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %.lr.ph.i.i, label %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit

.lr.ph.i.i:                                       ; preds = %bb.h
  %i.at = load ptr, ptr %i.d, align 8             ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.n, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.n ] ; 4 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.i.i
  %i.av = load i32, ptr %i.au, align 4, !tbaa !102 ; 3 uses
  %i.aw = load i32, ptr %i.z, align 8, !tbaa !176 ; 2 uses
  %i.ax = icmp sgt i32 %i.av, %i.aw
  br i1 %i.ax, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.i.i
  store i32 %i.aw, ptr %i.ay, align 4, !tbaa !102
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.az = load i32, ptr %i.aa, align 4, !tbaa !175 ; 2 uses
  %i.ba = icmp slt i32 %i.av, %i.az
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.i.i ; 2 uses
  br i1 %i.ba, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 %i.az, ptr %i.bb, align 4, !tbaa !102
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  store i32 %i.av, ptr %i.bb, align 4, !tbaa !102
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.j
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.bc = load i32, ptr %i.c, align 8, !tbaa !180 ; 2 uses
  %i.bd = sext i32 %i.bc to i64
  %i.be = icmp slt i64 %indvars.iv.next.i.i, %i.bd
  br i1 %i.be, label %bb.i, label %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i, !llvm.loop !1

_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i: ; preds = %bb.n
  %i.bf = icmp sgt i32 %i.bc, 0
  br i1 %i.bf, label %.lr.ph.i, label %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit

.lr.ph.i:                                         ; preds = %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i, %bb.r
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.r ], [ 0, %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i ] ; 4 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.i
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !102
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.i
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !102
  %i.bk = add i32 %i.bj, %i.bh                    ; 5 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.i ; 2 uses
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !102
  %i.bm = load i32, ptr %i.z, align 8, !tbaa !176
  %i.bn = icmp sgt i32 %i.bk, %i.bm
  br i1 %i.bn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph.i
  %i.bo = load i32, ptr %i.ab, align 4, !tbaa !177
  %i.bp = sub nsw i32 %i.bk, %i.bo
  br label %.sink.split.i

bb.p:                                             ; preds = %.lr.ph.i
  %i.bq = load i32, ptr %i.aa, align 4, !tbaa !175
  %i.br = icmp slt i32 %i.bk, %i.bq
  br i1 %i.br, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bs = load i32, ptr %i.ab, align 4, !tbaa !177
  %i.bt = add nsw i32 %i.bs, %i.bk
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.q, %bb.o
  %.sink.i = phi i32 [ %i.bp, %bb.o ], [ %i.bt, %bb.q ]
  store i32 %.sink.i, ptr %i.bl, align 4, !tbaa !102
  br label %bb.r

bb.r:                                             ; preds = %.sink.split.i, %bb.p
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bu = load i32, ptr %i.c, align 8, !tbaa !180
  %i.bv = sext i32 %i.bu to i64
  %i.bw = icmp slt i64 %indvars.iv.next.i, %i.bv
  br i1 %i.bw, label %.lr.ph.i, label %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit, !llvm.loop !2

_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit: ; preds = %bb.r, %bb.h, %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge25, label %bb.f, !llvm.loop !787

.critedge25:                                      ; preds = %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit, %_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE2atEm.exit, %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit, %bb.a
  %.4 = phi i1 [ false, %bb.a ], [ true, %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit ], [ %i.an, %_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE2atEm.exit ], [ %i.an, %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit ]
  ret i1 %.4
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21ComputePredictedValueILb0EEEbNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKii(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr nofreeobj noundef align 4 dead_on_return dereferenceable(4) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.draco::IndexType", align 4  ; 4 uses
  %5 = alloca %"class.draco::IndexType", align 4  ; 4 uses
  %6 = alloca %"class.draco::IndexType", align 4  ; 4 uses
  %7 = alloca %"class.draco::VectorD.120", align 8 ; 8 uses
  %8 = alloca %"class.draco::VectorD.120", align 8 ; 8 uses
  %9 = alloca %"class.draco::VectorD.120", align 8 ; 8 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !186    ; 4 uses
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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !134  ; 2 uses
  %i.e = icmp eq i32 %spec.select.i, -1
  br i1 %i.e, label %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.f = zext i32 %spec.select.i to i64
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !205, !noalias !816
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.f
  %i.i = load i32, ptr %i.h, align 4, !tbaa !207, !noalias !816
  br label %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit: ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, %bb.b
  %storemerge.i = phi i32 [ %i.i, %bb.b ], [ -1, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ] ; 2 uses
  %i.j = icmp eq i32 %.sink.i59, -1
  br i1 %i.j, label %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit61, label %bb.c

bb.c:                                             ; preds = %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.k = zext i32 %.sink.i59 to i64
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !205, !noalias !817
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.k
  %i.n = load i32, ptr %i.m, align 4, !tbaa !207, !noalias !817
  %i.o = sext i32 %i.n to i64
  br label %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit61

_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit61: ; preds = %bb.a, %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, %bb.c
  %storemerge.i201 = phi i32 [ %storemerge.i, %bb.c ], [ %storemerge.i, %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ], [ -1, %bb.a ]
  %storemerge.i60 = phi i64 [ %i.o, %bb.c ], [ -1, %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ], [ -1, %bb.a ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !136  ; 2 uses
  %i.r = sext i32 %storemerge.i201 to i64         ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !119
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !58   ; 3 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 2                   ; 4 uses
  %.not.i.i = icmp ugt i64 %i.y, %i.r
  br i1 %.not.i.i, label %_ZNKSt6vectorIiSaIiEE2atEm.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit61
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef %i.r, i64 noundef %i.y) #20
  unreachable

_ZNKSt6vectorIiSaIiEE2atEm.exit:                  ; preds = %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit61
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.r
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !102 ; 4 uses
  %.not.i.i62 = icmp ult i64 %storemerge.i60, %i.y
  br i1 %.not.i.i62, label %_ZNKSt6vectorIiSaIiEE2atEm.exit63, label %bb.e

bb.e:                                             ; preds = %_ZNKSt6vectorIiSaIiEE2atEm.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef %storemerge.i60, i64 noundef %i.y) #20
  unreachable

_ZNKSt6vectorIiSaIiEE2atEm.exit63:                ; preds = %_ZNKSt6vectorIiSaIiEE2atEm.exit
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %storemerge.i60
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !102 ; 3 uses
  %i.ad = icmp slt i32 %i.ac, %3
  %i.ae = icmp slt i32 %i.aa, %3                  ; 2 uses
  %or.cond = select i1 %i.ad, i1 %i.ae, i1 false
  br i1 %or.cond, label %bb.f, label %bb.o

bb.f:                                             ; preds = %_ZNKSt6vectorIiSaIiEE2atEm.exit63
  %i.af = shl nsw i32 %i.aa, 1
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ag ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !102, !noalias !818 ; 3 uses
  %i.aj = sext i32 %i.ai to i64                   ; 3 uses
  %i.ak = getelementptr i8, ptr %i.ah, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !102, !noalias !818 ; 3 uses
  %i.am = sext i32 %i.al to i64                   ; 3 uses
  %i.an = shl nsw i32 %i.ac, 1
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ao ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !102, !noalias !819 ; 2 uses
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr i8, ptr %i.ap, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !102, !noalias !819 ; 2 uses
  %i.au = sext i32 %i.at to i64
  %.not.i64 = icmp eq i32 %i.aq, %i.ai
  %.not.1.i = icmp eq i32 %i.at, %i.al
  %.not.lcssa.i = select i1 %.not.i64, i1 %.not.1.i, i1 false
  br i1 %.not.lcssa.i, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ai, ptr %i.av, align 8, !tbaa !102
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.al, ptr %i.aw, align 4, !tbaa !102
  br label %.loopexit

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !820)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !244, !noalias !820
  %i.az = sext i32 %3 to i64
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !214, !noalias !820 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false), !tbaa !187, !alias.scope !820
  %i.bc = load ptr, ptr %0, align 8, !tbaa !243, !noalias !820 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 100
  %i.be = load i8, ptr %i.bd, align 4, !tbaa !98, !range !216, !noalias !821, !noundef !217
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit, label %.else.i

.else.i:                                          ; preds = %bb.g
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 72
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !821
  %i.bi = zext i32 %i.bb to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bi
  %storemerge.i.else.val.i = load i32, ptr %i.bj, align 4, !tbaa !102, !noalias !821
  br label %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit

_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit: ; preds = %bb.g, %.else.i
  %storemerge.i.i = phi i32 [ %i.bb, %bb.g ], [ %storemerge.i.else.val.i, %.else.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !820
  store i32 %storemerge.i.i, ptr %6, align 4, !tbaa !219, !noalias !820
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.bl = load i8, ptr %i.bk, align 8, !tbaa !101, !noalias !820
  %i.bm = call noundef zeroext i1 @_ZNK5draco17GeometryAttribute12ConvertValueIlEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEaPT_(ptr noundef nonnull align 8 dereferenceable(64) %i.bc, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %6, i8 noundef signext %i.bl, ptr noundef nonnull align 8 %7) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !820
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !822)
  %i.bn = load ptr, ptr %i.ax, align 8, !tbaa !244, !noalias !822
  %i.bo = sext i32 %i.aa to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !214, !noalias !822 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false), !tbaa !187, !alias.scope !822
  %i.br = load ptr, ptr %0, align 8, !tbaa !243, !noalias !822 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 100
  %i.bt = load i8, ptr %i.bs, align 4, !tbaa !98, !range !216, !noalias !823, !noundef !217
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit68, label %.else.i65

.else.i65:                                        ; preds = %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 72
  %i.bw = load ptr, ptr %i.bv, align 8, !noalias !823
  %i.bx = zext i32 %i.bq to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.bx
  %storemerge.i.else.val.i66 = load i32, ptr %i.by, align 4, !tbaa !102, !noalias !823
  br label %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit68

_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit68: ; preds = %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit, %.else.i65
  %storemerge.i.i67 = phi i32 [ %i.bq, %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit ], [ %storemerge.i.else.val.i66, %.else.i65 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !822
  store i32 %storemerge.i.i67, ptr %5, align 4, !tbaa !219, !noalias !822
  %i.bz = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.ca = load i8, ptr %i.bz, align 8, !tbaa !101, !noalias !822
  %i.cb = call noundef zeroext i1 @_ZNK5draco17GeometryAttribute12ConvertValueIlEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEaPT_(ptr noundef nonnull align 8 dereferenceable(64) %i.br, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %5, i8 noundef signext %i.ca, ptr noundef nonnull align 8 %8) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !822
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !824)
  %i.cc = load ptr, ptr %i.ax, align 8, !tbaa !244, !noalias !824
  %i.cd = sext i32 %i.ac to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !214, !noalias !824 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false), !tbaa !187, !alias.scope !824
  %i.cg = load ptr, ptr %0, align 8, !tbaa !243, !noalias !824 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 100
  %i.ci = load i8, ptr %i.ch, align 4, !tbaa !98, !range !216, !noalias !825, !noundef !217
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit72, label %.else.i69

.else.i69:                                        ; preds = %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit68
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 72
  %i.cl = load ptr, ptr %i.ck, align 8, !noalias !825
  %i.cm = zext i32 %i.cf to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.cm
  %storemerge.i.else.val.i70 = load i32, ptr %i.cn, align 4, !tbaa !102, !noalias !825
  br label %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit72

_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit72: ; preds = %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit68, %.else.i69
  %storemerge.i.i71 = phi i32 [ %i.cf, %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit68 ], [ %storemerge.i.else.val.i70, %.else.i69 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !824
  store i32 %storemerge.i.i71, ptr %4, align 4, !tbaa !219, !noalias !824
  %i.co = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.cp = load i8, ptr %i.co, align 8, !tbaa !101, !noalias !824
  %i.cq = call noundef zeroext i1 @_ZNK5draco17GeometryAttribute12ConvertValueIlEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEaPT_(ptr noundef nonnull align 8 dereferenceable(64) %i.cg, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %4, i8 noundef signext %i.cp, ptr noundef nonnull align 8 %9) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !824
  %i.cr = load i64, ptr %9, align 8, !tbaa !187, !noalias !826
  %i.cs = load i64, ptr %8, align 8, !tbaa !187, !noalias !826 ; 3 uses
  %i.ct = sub nsw i64 %i.cr, %i.cs                ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !187, !noalias !826
  %i.cw = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !187, !noalias !826 ; 3 uses
  %i.cy = sub nsw i64 %i.cv, %i.cx                ; 5 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !187, !noalias !826
  %i.db = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !187, !noalias !826 ; 3 uses
  %i.dd = sub nsw i64 %i.da, %i.dc                ; 5 uses
  %i.de = mul nsw i64 %i.ct, %i.ct
  %i.df = mul nsw i64 %i.cy, %i.cy
  %i.dg = add nuw nsw i64 %i.df, %i.de
  %i.dh = mul nsw i64 %i.dd, %i.dd
  %i.di = add nuw nsw i64 %i.dg, %i.dh            ; 10 uses
  %.not = icmp eq i64 %i.di, 0
  br i1 %.not, label %bb.n, label %bb.h

bb.h:                                             ; preds = %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit72
  %i.dj = load i64, ptr %7, align 8, !tbaa !187, !noalias !827 ; 2 uses
  %i.dk = sub nsw i64 %i.dj, %i.cs
  %i.dl = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !187, !noalias !827 ; 2 uses
end_hunk_3
