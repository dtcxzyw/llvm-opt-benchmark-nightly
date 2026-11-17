Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle.candle.9114c17947f07d3c-cgu.10?download=true
inline.NumInlined: 259
inline.NumDeleted: 173
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNvXs5_NtNtCsf3Ta7LF998c_4core3num5errorNtB5_15TryFromIntErrorNtNtB9_3fmt5Debug3fmt:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 15, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsk_NtCsltEA4u8Pgfu_11candle_core5shapejNtB5_16ShapeWithOneHole10into_shapeCscsgjCEAuSgO_6candle(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs3_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5ShapeINtNtCsf3Ta7LF998c_4core7convert4FromjE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %1)
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 2305843009213693952) i64 @_RNvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterINtNtB9_6option6OptionINtNtCs4dfyxXSEGwW_4pyo38instance8BorrowedNtNtNtB19_5types3any5PyAnyEEENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCscsgjCEAuSgO_6candle(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 3
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 384307168202282326) i64 @_RNvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterNtNtCsOwuIBbUsgI_11safetensors6tensor10TensorInfoENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCscsgjCEAuSgO_6candle(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 48
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 2305843009213693952) i64 @_RNvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCscsgjCEAuSgO_6candle(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 3
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 768614336404564651) i64 @_RNvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterNtNtNtCs4dfyxXSEGwW_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCscsgjCEAuSgO_6candle(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 24
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 1152921504606846976) i64 @_RNvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterReENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCscsgjCEAuSgO_6candle(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 4
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 768614336404564651) i64 @_RNvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterTReRNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCscsgjCEAuSgO_6candle(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 24
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 2305843009213693952) i64 @_RNvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterjENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCscsgjCEAuSgO_6candle(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 3
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 2305843009213693952) i64 @_RNvYINtNtNtCsf3Ta7LF998c_4core5slice4iter7IterMutjENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCscsgjCEAuSgO_6candle(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 3
  ret i64 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYRSjNtNtCsltEA4u8Pgfu_11candle_core5shape4Dims10to_indexesCscsgjCEAuSgO_6candle(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 1152921504606846976) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [80 x i8], align 8                ; 8 uses
  %i.d = alloca [80 x i8], align 8                ; 2 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [80 x i8], align 8                ; 8 uses
  %i.h = alloca [80 x i8], align 8                ; 2 uses
  %i.i = alloca [80 x i8], align 8                ; 7 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvXsb_NtCsltEA4u8Pgfu_11candle_core5shapeRSjNtB5_4Dims19to_indexes_internal(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5)
  %i.k = load i64, ptr %i.i, align 8, !range !10, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.k, -1
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.517.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.514.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.416.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  store i64 %i.k, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.p, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = icmp ult i64 %i.s, 1152921504606846976
  %i.u = icmp eq i64 %i.p, 0
  br i1 %i.u, label %._crit_edge69, label %.lr.ph68

bb.d:                                             ; preds = %_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit
  %i.v = icmp eq ptr %i.y, %i.q
  br i1 %i.v, label %._crit_edge69, label %.lr.ph68

bb.e:                                             ; preds = %bb.q, %bb.f
  %.pn = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.bl, %bb.q ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECscsgjCEAuSgO_6candle(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #24
          to label %common.resume unwind label %bb.t

bb.f:                                             ; preds = %bb.r, %bb.k, %bb.j, %.loopexit
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

._crit_edge69:                                    ; preds = %bb.d, %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECscsgjCEAuSgO_6candle.exit, %._crit_edge69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

.lr.ph68:                                         ; preds = %bb.c, %bb.d
  %.sroa.0.066 = phi ptr [ %i.y, %bb.d ], [ %i.n, %bb.c ] ; 2 uses
  %.sroa.828.065 = phi i64 [ %i.z, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.066, i64 8 ; 2 uses
  %i.z = add i64 %.sroa.828.065, 1
  %i.aa = load i64, ptr %.sroa.0.066, align 8, !noundef !4 ; 11 uses
  %i.ab = and i64 %.sroa.828.065, 1152921504606846968 ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ab ; 2 uses
  %.not.i60 = icmp eq i64 %i.ab, 0
  br i1 %.not.i60, label %._crit_edge, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsI_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECscsgjCEAuSgO_6candle.exit.i

bb.h:                                             ; preds = %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsI_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECscsgjCEAuSgO_6candle.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i62, i64 64
  %i.ae = add nsw i64 %.sroa.5.0.i61, -8          ; 2 uses
  %.not.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i, label %._crit_edge, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsI_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECscsgjCEAuSgO_6candle.exit.i

._crit_edge:                                      ; preds = %bb.h, %.lr.ph68
  %i.af = shl i64 %.sroa.828.065, 3
  %.idx70 = and i64 %i.af, 56                     ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx70
  %.not.not.not.i.not.not.i63 = icmp samesign eq i64 %.idx70, 0
  br i1 %.not.not.not.i.not.not.i63, label %_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit, label %.lr.ph.a

bb.i:                                             ; preds = %.lr.ph.a
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %.not.not.not.i.not.not.i.a = icmp eq ptr %i.ag, %6
  br i1 %.not.not.not.i.not.not.i.a, label %_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit, label %.lr.ph.a

.lr.ph.a:                                         ; preds = %._crit_edge, %bb.i
  %7 = phi ptr [ %i.ag, %bb.i ], [ %i.ac, %._crit_edge ] ; 2 uses
  %.val2.i.i.a = load i64, ptr %7, align 8, !alias.scope !285, !noalias !286, !noundef !4
  %i.ah = icmp eq i64 %.val2.i.i.a, %i.aa
  br i1 %i.ah, label %.loopexit, label %bb.i

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsI_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECscsgjCEAuSgO_6candle.exit.i: ; preds = %.lr.ph68, %bb.h
  %.sroa.0.05.i62 = phi ptr [ %i.ad, %bb.h ], [ %i.n, %.lr.ph68 ] ; 9 uses
  %.sroa.5.0.i61 = phi i64 [ %i.ae, %bb.h ], [ %i.ab, %.lr.ph68 ]
  %.val11.i.i = load i64, ptr %.sroa.0.05.i62, align 8, !alias.scope !285, !noundef !4
  %i.ai = icmp eq i64 %.val11.i.i, %i.aa
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i62, i64 8
  %.val11.i.1.i = load i64, ptr %i.aj, align 8, !alias.scope !285, !noundef !4
  %i.ak = icmp eq i64 %.val11.i.1.i, %i.aa
  %i.al = or i1 %i.ai, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i62, i64 16
  %.val11.i.2.i = load i64, ptr %i.am, align 8, !alias.scope !285, !noundef !4
  %i.an = icmp eq i64 %.val11.i.2.i, %i.aa
  %i.ao = or i1 %i.al, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i62, i64 24
  %.val11.i.3.i = load i64, ptr %i.ap, align 8, !alias.scope !285, !noundef !4
  %i.aq = icmp eq i64 %.val11.i.3.i, %i.aa
  %i.ar = or i1 %i.ao, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i62, i64 32
  %.val11.i.4.i = load i64, ptr %i.as, align 8, !alias.scope !285, !noundef !4
  %i.at = icmp eq i64 %.val11.i.4.i, %i.aa
  %i.au = or i1 %i.ar, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i62, i64 40
  %.val11.i.5.i = load i64, ptr %i.av, align 8, !alias.scope !285, !noundef !4
  %i.aw = icmp eq i64 %.val11.i.5.i, %i.aa
  %i.ax = or i1 %i.au, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i62, i64 48
  %.val11.i.6.i = load i64, ptr %i.ay, align 8, !alias.scope !285, !noundef !4
  %i.az = icmp eq i64 %.val11.i.6.i, %i.aa
  %i.ba = or i1 %i.ax, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i62, i64 56
  %.val11.i.7.i = load i64, ptr %i.bb, align 8, !alias.scope !285, !noundef !4
  %i.bc = icmp eq i64 %.val11.i.7.i, %i.aa
  %i.bd = or i1 %i.ba, %i.bc
  br i1 %i.bd, label %.loopexit, label %bb.h

_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit: ; preds = %bb.i, %._crit_edge
  tail call void @llvm.assume(i1 %i.t)
  %.not24 = icmp ult i64 %i.aa, %i.s
  br i1 %.not24, label %bb.d, label %bb.j

.loopexit:                                        ; preds = %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsI_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECscsgjCEAuSgO_6candle.exit.i, %.lr.ph.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3)
          to label %bb.p unwind label %bb.f

bb.j:                                             ; preds = %_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3)
          to label %bb.k unwind label %bb.f

bb.k:                                             ; preds = %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bf = trunc i64 %i.aa to i32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i32 %i.bf, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %4, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %5, ptr %i.bi, align 8
  store i64 -9223372036854775805, ptr %i.c, align 8
  invoke void @_RNvMs_NtCsltEA4u8Pgfu_11candle_core5errorNtB4_5Error2bt(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.c)
          to label %bb.l unwind label %bb.f

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.m

bb.m:                                             ; preds = %bb.s, %bb.l
  %.sink = phi ptr [ %i.h, %bb.s ], [ %i.d, %bb.l ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %.sink, i64 80, i1 false)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECscsgjCEAuSgO_6candle.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable

common.resume:                                    ; preds = %bb.e, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %i.bj, %bb.n ], [ %.pn, %bb.e ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECscsgjCEAuSgO_6candle.exit: ; preds = %bb.m
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
  br label %bb.g

bb.p:                                             ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core5shape5ShapeECscsgjCEAuSgO_6candle(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #24
          to label %bb.e unwind label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.bm = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store ptr %4, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store i64 %5, ptr %i.bp, align 8
  store i64 -9223372036854775804, ptr %i.g, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke void @_RNvMs_NtCsltEA4u8Pgfu_11candle_core5errorNtB4_5Error2bt(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.g)
          to label %bb.s unwind label %bb.f

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.m

bb.t:                                             ; preds = %bb.q, %bb.e
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYjNtNtCsltEA4u8Pgfu_11candle_core5shape4Dims10to_indexesCscsgjCEAuSgO_6candle(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 9 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [80 x i8], align 8                ; 8 uses
  %i.e = alloca [80 x i8], align 8                ; 2 uses
  %i.f = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.b, align 8, !noalias !291
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !291
  call void @_RNvXs6_NtCsltEA4u8Pgfu_11candle_core5shapejNtB5_3Dim8to_index(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4), !noalias !292
  %i.g = load i64, ptr %i.a, align 8, !range !10, !noalias !291, !noundef !4 ; 2 uses
  %.not.i = icmp eq i64 %i.g, -1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noalias !291 ; 4 uses
  br i1 %.not.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !291
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !292
  %i.j = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef 8) #21, !noalias !292 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit, !prof !293

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #22, !noalias !292
  unreachable

bb.d:                                             ; preds = %bb.a
  %.sroa.514.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.11.16.copyload = load ptr, ptr %.sroa.514.0..sroa_idx.i, align 8, !noalias !294
  %.sroa.13.16..sroa.514.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.13.16.copyload = load i64, ptr %.sroa.13.16..sroa.514.0..sroa_idx.i.sroa_idx, align 8, !noalias !294
  %.sroa.14.16..sroa.514.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.517.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.14.16..sroa.514.0..sroa_idx.i.sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !291
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.g, ptr %0, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %.sroa.416.0..sroa_idx, align 8
  %.sroa.416.sroa.4.0..sroa.416.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.11.16.copyload, ptr %.sroa.416.sroa.4.0..sroa.416.0..sroa_idx.sroa_idx, align 8
  %.sroa.416.sroa.5.0..sroa.416.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.13.16.copyload, ptr %.sroa.416.sroa.5.0..sroa.416.0..sroa_idx.sroa_idx, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.g, %bb.h
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECscsgjCEAuSgO_6candle(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #24
          to label %common.resume unwind label %bb.l

.thread:                                          ; preds = %_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECscsgjCEAuSgO_6candle.exit, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit: ; preds = %bb.b
  store i64 %i.i, ptr %i.j, align 8, !noalias !292
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 1, ptr %.sroa.546.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  %i.p = icmp ult i64 %i.o, 1152921504606846976
  call void @llvm.assume(i1 %i.p)
  %.not24 = icmp ult i64 %i.i, %i.o
  br i1 %.not24, label %.thread, label %bb.g

bb.g:                                             ; preds = %_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCscsgjCEAuSgO_6candle(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.h unwind label %bb.e

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.r = trunc i64 %i.i to i32
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i32 %i.r, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %3, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %4, ptr %i.u, align 8
  store i64 -9223372036854775805, ptr %i.d, align 8
  invoke void @_RNvMs_NtCsltEA4u8Pgfu_11candle_core5errorNtB4_5Error2bt(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.d)
          to label %bb.i unwind label %bb.e

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
end_hunk_0
