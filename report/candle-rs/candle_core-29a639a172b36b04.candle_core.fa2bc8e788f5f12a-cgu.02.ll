Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_core-29a639a172b36b04.candle_core.fa2bc8e788f5f12a-cgu.02?download=true
inline.NumInlined: 6230
inline.NumDeleted: 3105
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectBG_EENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBK_:bb.a
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22, !inline_history !10576
  unreachable

bb.e:                                             ; preds = %.lr.ph15
  %i.m = add nuw i64 %.sroa.0.1.i14, 1            ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.d
  br i1 %i.n, label %._crit_edge, label %.lr.ph15

bb.f:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.o, %bb.f ], [ %i.i, %bb.b ]
  %i.p = icmp eq i64 %i.h, %i.d
  br i1 %i.p, label %._crit_edge, label %.lr.ph15

.lr.ph15:                                         ; preds = %.body, %bb.e
  %.sroa.0.1.i14 = phi i64 [ %i.m, %bb.e ], [ %i.h, %.body ] ; 2 uses
  %i.q = getelementptr inbounds nuw [96 x i8], ptr %i.b, i64 %.sroa.0.1.i14
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectBC_EEBG_(ptr noalias nofree noundef align 8 dereferenceable(96) %i.q) #23
          to label %bb.e unwind label %bb.g, !inline_history !10577

._crit_edge:                                      ; preds = %bb.e, %.body
  resume { ptr, i32 } %eh.lpad-body

bb.g:                                             ; preds = %.lr.ph15
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22, !inline_history !10577
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSTNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectBD_EEBH_.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectBC_EEBG_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTRNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenmEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTjjEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTjjdEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecaENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecbENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecdENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecfENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VeclENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecsENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecxENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecyENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtCsf3Ta7LF998c_4core3fmt5Debug3fmtCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !7
  %i.e = tail call noundef zeroext i1 @_RNvXsr_NtCsf3Ta7LF998c_4core3fmtShNtB5_5Debug3fmtCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtCsf3Ta7LF998c_4core3fmt5Debug3fmtCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !7
  %i.e = tail call noundef zeroext i1 @_RNvXsr_NtCsf3Ta7LF998c_4core3fmtSjNtB5_5Debug3fmtCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYINtNtCsgCecv3eZDcN_5alloc3vec3VecjENtNtCsltEA4u8Pgfu_11candle_core5shape4Dims10to_indexesBF_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [80 x i8], align 8                ; 10 uses
  %i.e = alloca [80 x i8], align 8                ; 2 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [80 x i8], align 8                ; 10 uses
  %i.h = alloca [80 x i8], align 8                ; 2 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !7, !noundef !7 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !noundef !7 ; 2 uses
  %.idx = shl nuw nsw i64 %i.m, 3
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load i64, ptr %i.o, align 8              ; 12 uses
  %i.q = icmp ult i64 %i.p, 1152921504606846976
  %i.r = icmp eq i64 %i.m, 0
  br i1 %i.r, label %._crit_edge98, label %.lr.ph97

bb.b:                                             ; preds = %_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit
  %i.s = icmp eq ptr %i.v, %i.n
  br i1 %i.s, label %._crit_edge98, label %.lr.ph97

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core5shape5ShapeEBF_.exit: ; preds = %bb.o, %bb.c
  %.pn = phi { ptr, i32 } [ %i.t, %bb.c ], [ %i.cp, %bb.o ]
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECsltEA4u8Pgfu_11candle_core.exit unwind label %bb.r

bb.c:                                             ; preds = %.invoke, %bb.i, %.loopexit, %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsltEA4u8Pgfu_11candle_core.exit37, %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsltEA4u8Pgfu_11candle_core.exit32
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core5shape5ShapeEBF_.exit

._crit_edge98:                                    ; preds = %bb.b, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.q, %._crit_edge98
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

.lr.ph97:                                         ; preds = %bb.a, %bb.b
  %.sroa.041.095 = phi ptr [ %i.v, %bb.b ], [ %i.k, %bb.a ] ; 2 uses
  %.sroa.843.094 = phi i64 [ %i.w, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.041.095, i64 8 ; 2 uses
  %i.w = add i64 %.sroa.843.094, 1
  %i.x = load i64, ptr %.sroa.041.095, align 8, !noundef !7 ; 11 uses
  %i.y = and i64 %.sroa.843.094, 1152921504606846968 ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.y ; 2 uses
  %.not.i89 = icmp eq i64 %i.y, 0
  br i1 %.not.i89, label %._crit_edge, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsI_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECsltEA4u8Pgfu_11candle_core.exit.i

bb.e:                                             ; preds = %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsI_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECsltEA4u8Pgfu_11candle_core.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i91, i64 64
  %i.ab = add nsw i64 %.sroa.5.0.i90, -8          ; 2 uses
  %.not.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i, label %._crit_edge, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsI_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECsltEA4u8Pgfu_11candle_core.exit.i

._crit_edge:                                      ; preds = %bb.e, %.lr.ph97
  %i.ac = shl i64 %.sroa.843.094, 3
  %.idx99 = and i64 %i.ac, 56                     ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx99
  %.not.not.not.i.not.not.i92 = icmp samesign eq i64 %.idx99, 0
  br i1 %.not.not.not.i.not.not.i92, label %_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit, label %.lr.ph.a

bb.f:                                             ; preds = %.lr.ph.a
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %.not.not.not.i.not.not.i.a = icmp eq ptr %i.ad, %5
  br i1 %.not.not.not.i.not.not.i.a, label %_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit, label %.lr.ph.a

.lr.ph.a:                                         ; preds = %._crit_edge, %bb.f
  %6 = phi ptr [ %i.ad, %bb.f ], [ %i.z, %._crit_edge ] ; 2 uses
  %.val2.i.i.a = load i64, ptr %6, align 8, !alias.scope !10600, !noalias !10601, !noundef !7
  %i.ae = icmp eq i64 %.val2.i.i.a, %i.x
  br i1 %i.ae, label %.loopexit, label %bb.f

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsI_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECsltEA4u8Pgfu_11candle_core.exit.i: ; preds = %.lr.ph97, %bb.e
  %.sroa.0.05.i91 = phi ptr [ %i.aa, %bb.e ], [ %i.k, %.lr.ph97 ] ; 9 uses
  %.sroa.5.0.i90 = phi i64 [ %i.ab, %bb.e ], [ %i.y, %.lr.ph97 ]
  %.val11.i.i = load i64, ptr %.sroa.0.05.i91, align 8, !alias.scope !10600, !noundef !7
  %i.af = icmp eq i64 %.val11.i.i, %i.x
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i91, i64 8
  %.val11.i.1.i = load i64, ptr %i.ag, align 8, !alias.scope !10600, !noundef !7
  %i.ah = icmp eq i64 %.val11.i.1.i, %i.x
  %i.ai = or i1 %i.af, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i91, i64 16
  %.val11.i.2.i = load i64, ptr %i.aj, align 8, !alias.scope !10600, !noundef !7
  %i.ak = icmp eq i64 %.val11.i.2.i, %i.x
  %i.al = or i1 %i.ai, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i91, i64 24
  %.val11.i.3.i = load i64, ptr %i.am, align 8, !alias.scope !10600, !noundef !7
  %i.an = icmp eq i64 %.val11.i.3.i, %i.x
  %i.ao = or i1 %i.al, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i91, i64 32
  %.val11.i.4.i = load i64, ptr %i.ap, align 8, !alias.scope !10600, !noundef !7
  %i.aq = icmp eq i64 %.val11.i.4.i, %i.x
  %i.ar = or i1 %i.ao, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i91, i64 40
  %.val11.i.5.i = load i64, ptr %i.as, align 8, !alias.scope !10600, !noundef !7
  %i.at = icmp eq i64 %.val11.i.5.i, %i.x
  %i.au = or i1 %i.ar, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i91, i64 48
  %.val11.i.6.i = load i64, ptr %i.av, align 8, !alias.scope !10600, !noundef !7
  %i.aw = icmp eq i64 %.val11.i.6.i, %i.x
  %i.ax = or i1 %i.au, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i91, i64 56
  %.val11.i.7.i = load i64, ptr %i.ay, align 8, !alias.scope !10600, !noundef !7
  %i.az = icmp eq i64 %.val11.i.7.i, %i.x
  %i.ba = or i1 %i.ax, %i.az
  br i1 %i.ba, label %.loopexit, label %bb.e

_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit: ; preds = %bb.f, %._crit_edge
  tail call void @llvm.assume(i1 %i.q)
  %.not24 = icmp ult i64 %i.x, %i.p
  br i1 %.not24, label %bb.b, label %bb.i

.loopexit:                                        ; preds = %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsI_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECsltEA4u8Pgfu_11candle_core.exit.i, %.lr.ph.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10602)
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !10602, !nonnull !7, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10603
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef range(i64 0, 1152921504606846976) %i.p, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %.loopexit
  %i.bd = load i64, ptr %i.c, align 8, !range !14, !noalias !10603, !noundef !7
  %i.be = trunc nuw i64 %i.bd to i1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !range !15, !noalias !10603, !noundef !7 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.be, label %bb.g, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsltEA4u8Pgfu_11candle_core.exit.i.i, !prof !16

bb.g:                                             ; preds = %.noexc
  %i.bi = load i64, ptr %i.bh, align 8, !noalias !10603
  br label %.invoke

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsltEA4u8Pgfu_11candle_core.exit.i.i: ; preds = %.noexc
  %i.bj = load ptr, ptr %i.bh, align 8, !noalias !10603, !nonnull !7, !noundef !7 ; 2 uses
  %i.bk = icmp ule i64 %i.p, %i.bg
  tail call void @llvm.assume(i1 %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10603
  %.not.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i, label %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsltEA4u8Pgfu_11candle_core.exit, label %bb.h

bb.h:                                             ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsltEA4u8Pgfu_11candle_core.exit.i.i
  %i.bl = shl nuw nsw i64 %i.p, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bj, ptr nonnull readonly align 8 %i.bc, i64 %i.bl, i1 false), !noalias !10604
  br label %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsltEA4u8Pgfu_11candle_core.exit

bb.i:                                             ; preds = %_RNvXsI_NtNtCsf3Ta7LF998c_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10605)
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !10605, !nonnull !7, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10606
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, 1152921504606846976) %i.p, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
          to label %.noexc30 unwind label %bb.c

.noexc30:                                         ; preds = %bb.i
  %i.bo = load i64, ptr %i.b, align 8, !range !14, !noalias !10606, !noundef !7
  %i.bp = trunc nuw i64 %i.bo to i1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !range !15, !noalias !10606, !noundef !7 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.bp, label %bb.j, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsltEA4u8Pgfu_11candle_core.exit.i.i28, !prof !16

bb.j:                                             ; preds = %.noexc30
  %i.bt = load i64, ptr %i.bs, align 8, !noalias !10606
  br label %.invoke

.invoke:                                          ; preds = %bb.g, %bb.j
  %i.bu = phi i64 [ %i.br, %bb.j ], [ %i.bg, %bb.g ]
  %i.bv = phi i64 [ %i.bt, %bb.j ], [ %i.bi, %bb.g ]
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.bu, i64 %i.bv) #28
          to label %.cont unwind label %bb.c

.cont:                                            ; preds = %.invoke
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsltEA4u8Pgfu_11candle_core.exit.i.i28: ; preds = %.noexc30
  %i.bw = load ptr, ptr %i.bs, align 8, !noalias !10606, !nonnull !7, !noundef !7 ; 2 uses
  %i.bx = icmp ule i64 %i.p, %i.br
  tail call void @llvm.assume(i1 %i.bx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10606
  %.not.i.i29 = icmp eq i64 %i.p, 0
  br i1 %.not.i.i29, label %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsltEA4u8Pgfu_11candle_core.exit32, label %bb.k

bb.k:                                             ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsltEA4u8Pgfu_11candle_core.exit.i.i28
  %i.by = shl nuw nsw i64 %i.p, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bw, ptr nonnull readonly align 8 %i.bn, i64 %i.by, i1 false), !noalias !10607
  br label %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsltEA4u8Pgfu_11candle_core.exit32

_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsltEA4u8Pgfu_11candle_core.exit32: ; preds = %bb.k, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsltEA4u8Pgfu_11candle_core.exit.i.i28
  %i.bz = trunc i64 %i.x to i32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.br, ptr %i.ca, align 8
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.bw, ptr %.sroa.455.0..sroa_idx, align 8
  %.sroa.556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.p, ptr %.sroa.556.0..sroa_idx, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i32 %i.bz, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %3, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %4, ptr %i.cd, align 8
  store i64 -9223372036854775805, ptr %i.d, align 8
  invoke void @_RNvMs_NtCsltEA4u8Pgfu_11candle_core5errorNtB4_5Error2bt(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.d)
          to label %bb.l unwind label %bb.c

bb.l:                                             ; preds = %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsltEA4u8Pgfu_11candle_core.exit32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.q

_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsltEA4u8Pgfu_11candle_core.exit: ; preds = %bb.h, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsltEA4u8Pgfu_11candle_core.exit.i.i
  store i64 %i.bg, ptr %i.f, align 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.bj, ptr %.sroa.449.0..sroa_idx, align 8
  %.sroa.550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.p, ptr %.sroa.550.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10608)
  %i.ce = load ptr, ptr %i.j, align 8, !alias.scope !10608, !nonnull !7, !noundef !7
  %i.cf = load i64, ptr %i.l, align 8, !alias.scope !10608, !noundef !7 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10609
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 1152921504606846976) %i.cf, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
          to label %.noexc35 unwind label %bb.o

.noexc35:                                         ; preds = %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsltEA4u8Pgfu_11candle_core.exit
  %i.cg = load i64, ptr %i.a, align 8, !range !14, !noalias !10609, !noundef !7
  %i.ch = trunc nuw i64 %i.cg to i1
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cj = load i64, ptr %i.ci, align 8, !range !15, !noalias !10609, !noundef !7 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.ch, label %bb.m, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsltEA4u8Pgfu_11candle_core.exit.i.i33, !prof !16

bb.m:                                             ; preds = %.noexc35
  %i.cl = load i64, ptr %i.ck, align 8, !noalias !10609
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.cj, i64 %i.cl) #28
          to label %.noexc36 unwind label %bb.o

.noexc36:                                         ; preds = %bb.m
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsltEA4u8Pgfu_11candle_core.exit.i.i33: ; preds = %.noexc35
  %i.cm = load ptr, ptr %i.ck, align 8, !noalias !10609, !nonnull !7, !noundef !7 ; 2 uses
  %i.cn = icmp ule i64 %i.cf, %i.cj
  tail call void @llvm.assume(i1 %i.cn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10609
  %.not.i.i34 = icmp eq i64 %i.cf, 0
  br i1 %.not.i.i34, label %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsltEA4u8Pgfu_11candle_core.exit37, label %bb.n

bb.n:                                             ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsltEA4u8Pgfu_11candle_core.exit.i.i33
  %i.co = shl nuw nsw i64 %i.cf, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cm, ptr nonnull readonly align 8 %i.ce, i64 %i.co, i1 false), !noalias !10610
  br label %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsltEA4u8Pgfu_11candle_core.exit37

bb.o:                                             ; preds = %bb.m, %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsltEA4u8Pgfu_11candle_core.exit
  %i.cp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core5shape5ShapeEBF_.exit unwind label %bb.r

_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsltEA4u8Pgfu_11candle_core.exit37: ; preds = %bb.n, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsltEA4u8Pgfu_11candle_core.exit.i.i33
  %i.cq = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cq, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i64 %i.cj, ptr %i.cr, align 8
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr %i.cm, ptr %.sroa.446.0..sroa_idx, align 8
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store i64 %i.cf, ptr %.sroa.547.0..sroa_idx, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store ptr %3, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store i64 %4, ptr %i.ct, align 8
  store i64 -9223372036854775804, ptr %i.g, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke void @_RNvMs_NtCsltEA4u8Pgfu_11candle_core5errorNtB4_5Error2bt(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.g)
          to label %bb.p unwind label %bb.c

bb.p:                                             ; preds = %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsltEA4u8Pgfu_11candle_core.exit37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.q

bb.q:                                             ; preds = %bb.l, %bb.p
  %.sink = phi ptr [ %i.e, %bb.l ], [ %i.h, %bb.p ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %.sink, i64 80, i1 false)
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
  br label %bb.d

bb.r:                                             ; preds = %bb.o, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core5shape5ShapeEBF_.exit
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECsltEA4u8Pgfu_11candle_core.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core5shape5ShapeEBF_.exit
  resume { ptr, i32 } %.pn
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECsltEA4u8Pgfu_11candle_core(i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

end_hunk_0
