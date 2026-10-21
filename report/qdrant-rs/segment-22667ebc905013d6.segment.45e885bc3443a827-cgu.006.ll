Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/segment-22667ebc905013d6.segment.45e885bc3443a827-cgu.006?download=true
inline.NumInlined: 5529
inline.NumDeleted: 3142
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterTmINtNtCs6cW95TQWYPl_12posting_list4view15PostingListViewuEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1W_3all5checkBX_NCNCNCINvNvMs0_NtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index22on_disk_inverted_indexINtB3E_19OnDiskInvertedIndexpE16check_has_subset18check_intersectionuNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileE000E0INtNtNtB24_3ops12control_flow11ControlFlowuEEB3O_:bb.a

.loopexit.loopexit:                               ; preds = %bb.b
  %.not4.ph = xor i1 %i.k, true
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a
  %.not4 = phi i1 [ false, %bb.a ], [ %.not4.ph, %.loopexit.loopexit ]
  ret i1 %.not4
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterTmINtNtCs6cW95TQWYPl_12posting_list4view15PostingListViewuEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1W_3any5checkBX_NCNCINvNvMs0_NtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index22on_disk_inverted_indexINtB3C_19OnDiskInvertedIndexpE13check_has_any9check_anyuNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileE00E0INtNtNtB24_3ops12control_flow11ControlFlowuEEB3M_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [600 x i8], align 8               ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.d, align 8        ; 2 uses
  %.not5.not = icmp eq ptr %.promoted, %i.c
  br i1 %.not5.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.g = load i32, ptr %1, align 4, !noalias !5080, !noundef !7
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph
  %i.h = phi ptr [ %.promoted, %.lr.ph ], [ %i.i, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 80 ; 3 uses
  store ptr %i.i, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5080
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.j, i64 72, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.f, i8 0, i64 512, i1 false), !noalias !5080
  store i64 0, ptr %i.a, align 8, !noalias !5080
  %i.k = call noundef zeroext i1 @_RNvMNtCs6cW95TQWYPl_12posting_list7visitorINtB2_14PostingVisitoruE8containsCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(600) %i.a, i32 noundef %i.g), !noalias !5080 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5080
  %.not.not = icmp eq ptr %i.i, %i.c
  %or.cond = select i1 %i.k, i1 true, i1 %.not.not
  br i1 %or.cond, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.b, %bb.a
  %.not4 = phi i1 [ false, %bb.a ], [ %i.k, %bb.b ]
  ret i1 %.not4
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterTmINtNtCs6cW95TQWYPl_12posting_list4view15PostingListViewuEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1W_3any5checkBX_NCNCINvNvMs0_NtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index22on_disk_inverted_indexINtB3C_19OnDiskInvertedIndexpE13check_has_any9check_anyuNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileE00E0INtNtNtB24_3ops12control_flow11ControlFlowuEEB3M_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [600 x i8], align 8               ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.d, align 8        ; 2 uses
  %.not5.not = icmp eq ptr %.promoted, %i.c
  br i1 %.not5.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.g = load i32, ptr %1, align 4, !noalias !5085, !noundef !7
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph
  %i.h = phi ptr [ %.promoted, %.lr.ph ], [ %i.i, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 80 ; 3 uses
  store ptr %i.i, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5085
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.j, i64 72, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.f, i8 0, i64 512, i1 false), !noalias !5085
  store i64 0, ptr %i.a, align 8, !noalias !5085
  %i.k = call noundef zeroext i1 @_RNvMNtCs6cW95TQWYPl_12posting_list7visitorINtB2_14PostingVisitoruE8containsCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(600) %i.a, i32 noundef %i.g), !noalias !5085 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5085
  %.not.not = icmp eq ptr %i.i, %i.c
  %or.cond = select i1 %i.k, i1 true, i1 %.not.not
  br i1 %or.cond, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.b, %bb.a
  %.not4 = phi i1 [ false, %bb.a ], [ %i.k, %bb.b ]
  ret i1 %.not4
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define hidden noundef i64 @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterbENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB17_3num7nonzero7NonZerojENCINvNtNtB15_8adapters3map12map_try_foldbNtNtNtCs607s0NAIaWN_7segment10data_types6facets13FacetValueRefB23_INtNtB17_6option6OptionB23_ENcNtB3f_4Bool0NCNvXs_NvBZ_10advance_byINtB2F_3MapBI_B4L_ENtB56_13SpecAdvanceBy15spec_advance_by0E0B4j_EB3l_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef range(i64 1, 0) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.c = ptrtoaddr ptr %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.promoted = load ptr, ptr %i.d, align 8        ; 4 uses
  %.promoted7 = ptrtoaddr ptr %.promoted to i64
  %i.e = sub i64 %i.c, %.promoted7
  %i.f = add i64 %1, -1
  %i.g = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.f) ; 2 uses
  %min.iters.check = icmp ult i64 %i.g, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.a
  %i.h = add nuw i64 %i.g, 1                      ; 2 uses
  %i.i = and i64 %i.h, 3                          ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  %i.k = select i1 %i.j, i64 4, i64 %i.i
  %n.vec = sub i64 %i.h, %i.k                     ; 3 uses
  %i.l = getelementptr i8, ptr %.promoted, i64 %n.vec
  %i.m = sub i64 %1, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %.promoted, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 4
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !5086

middle.block:                                     ; preds = %vector.body
  %i.o = getelementptr i8, ptr %pointer.phi, i64 4
  store ptr %i.o, ptr %i.d, align 8
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.a, %middle.block
  %.ph = phi ptr [ %.promoted, %bb.a ], [ %i.l, %middle.block ]
  %.sroa.0.0.ph = phi i64 [ %1, %bb.a ], [ %i.m, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.b
  %i.p = phi ptr [ %i.q, %bb.b ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.0.0 = phi i64 [ %i.r, %bb.b ], [ %.sroa.0.0.ph, %scalar.ph.preheader ] ; 2 uses
  %.not = icmp eq ptr %i.p, %i.b
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %scalar.ph
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 2 uses
  store ptr %i.q, ptr %i.d, align 8
  %i.r = add i64 %.sroa.0.0, -1                   ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.c, label %scalar.ph, !llvm.loop !5087

bb.c:                                             ; preds = %bb.b, %scalar.ph
  %.sroa.02.0 = phi i64 [ %.sroa.0.0, %scalar.ph ], [ 0, %bb.b ]
  ret i64 %.sroa.02.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterdENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB15_8adapters3map8map_folddfuNCINvMs_NtNtCs9xXWl5j4IME_12quantization10turboquant12quantizationNtB2K_14TurboQuantizer10dequantizefEs1_0NCINvNvBZ_8for_each4callfNCINvMsk_B8_INtB8_3VecfE14extend_trustedINtB25_3MapBI_B2C_EE0E0E0ECs607s0NAIaWN_7segment(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.promoted = load ptr, ptr %i.d, align 8        ; 8 uses
  %.not.not10 = icmp eq ptr %.promoted, %i.c
  br i1 %.not.not10, label %bb.b, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.promoted22 = ptrtoaddr ptr %.promoted to i64
  %i.e = ptrtoaddr ptr %i.c to i64
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i = load ptr, ptr %i.f, align 8, !alias.scope !5100, !nonnull !7, !align !14, !noundef !7 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !5101, !noundef !7 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted11 = load i64, ptr %i.i, align 8, !alias.scope !5101 ; 5 uses
  %i.j = add i64 %i.e, -8
  %i.k = sub i64 %i.j, %.promoted22               ; 4 uses
  %i.l = lshr i64 %i.k, 3
  %i.m = add nuw nsw i64 %i.l, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.k, 152
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.n = shl i64 %.promoted11, 2                  ; 2 uses
  %i.o = getelementptr nuw i8, ptr %i.h, i64 %i.n ; 2 uses
  %i.p = lshr i64 %i.k, 1
  %i.q = and i64 %i.p, 9223372036854775804
  %i.r = getelementptr i8, ptr %i.h, i64 %i.n
  %i.s = getelementptr i8, ptr %i.r, i64 %i.q
  %i.t = getelementptr i8, ptr %i.s, i64 4        ; 2 uses
  %i.u = and i64 %i.k, -8
  %i.v = getelementptr i8, ptr %.promoted, i64 %i.u
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %i.x = getelementptr i8, ptr %.val.i, i64 8
  %bound0 = icmp ult ptr %i.o, %i.w
  %bound1 = icmp ult ptr %.promoted, %i.t
  %found.conflict = and i1 %bound0, %bound1
  %bound023 = icmp ult ptr %i.o, %i.x
  %bound124 = icmp ult ptr %.val.i, %i.t
  %found.conflict25 = and i1 %bound023, %bound124
  %conflict.rdx = or i1 %found.conflict, %found.conflict25
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.m, 4611686018427387900      ; 4 uses
  %i.y = add i64 %.promoted11, %n.vec             ; 2 uses
  %i.z = shl i64 %n.vec, 3
  %i.aa = getelementptr i8, ptr %.promoted, i64 %i.z
  %i.ab = load double, ptr %.val.i, align 8, !alias.scope !5102, !noalias !5100, !noundef !7
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ab, i64 0
  %2 = getelementptr [4 x i8], ptr %i.h, i64 %.promoted11
  %3 = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ac = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %.promoted, i64 %i.ac ; 2 uses
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x double>, ptr %next.gep, align 8, !alias.scope !5103
  %wide.load26 = load <2 x double>, ptr %i.ad, align 8, !alias.scope !5103
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5100)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5105)
  %4 = getelementptr [4 x i8], ptr %2, i64 %index
  %5 = shufflevector <2 x double> %wide.load, <2 x double> %wide.load26, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %6 = fmul <4 x double> %5, %3
  %7 = fptrunc <4 x double> %6 to <4 x float>
  store <4 x float> %7, ptr %4, align 4, !alias.scope !5106, !noalias !5107
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !5098

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.ph = phi i64 [ %.promoted11, %vector.memcheck ], [ %.promoted11, %.lr.ph ], [ %i.y, %middle.block ]
  %.ph28 = phi ptr [ %.promoted, %vector.memcheck ], [ %.promoted, %.lr.ph ], [ %i.aa, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.af = phi i64 [ %i.an, %scalar.ph ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ag = phi ptr [ %i.ai, %scalar.ph ], [ %.ph28, %scalar.ph.preheader ] ; 2 uses
  %i.ah = load double, ptr %i.ag, align 8, !noundef !7
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5100)
  %i.aj = load double, ptr %.val.i, align 8, !noalias !5100, !noundef !7
  %i.ak = fmul double %i.ah, %i.aj
  %i.al = fptrunc double %i.ak to float
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5105)
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.af
  store float %i.al, ptr %i.am, align 4, !noalias !5101
  %i.an = add i64 %i.af, 1                        ; 2 uses
  %.not.not = icmp eq ptr %i.ai, %i.c
  br i1 %.not.not, label %._crit_edge, label %scalar.ph, !llvm.loop !5099

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i64 [ %i.y, %middle.block ], [ %i.an, %scalar.ph ]
  store i64 %.lcssa, ptr %i.i, align 8, !alias.scope !5101
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %i.ao = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.aq, ptr %i.a, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ao, ptr %i.ar, align 8
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.as = landingpad { ptr, i32 }
          cleanup
  %.val6 = load ptr, ptr %1, align 8, !nonnull !7, !align !14, !noundef !7
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7 = load i64, ptr %i.at, align 8, !noundef !7
  store i64 %.val7, ptr %.val6, align 8
  resume { ptr, i32 } %i.as

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val = load ptr, ptr %1, align 8, !nonnull !7, !align !14, !noundef !7
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5 = load i64, ptr %i.au, align 8, !noundef !7
  store i64 %.val5, ptr %.val, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterdENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB15_8adapters9enumerateINtB2a_9EnumeratepEBZ_4fold9enumerateduNCINvNtB2c_3map8map_foldTjdEfuNCINvMs_NtNtCs9xXWl5j4IME_12quantization10turboquant12quantizationNtB3Q_14TurboQuantizer10dequantizefEs0_0NCINvNvBZ_8for_each4callfNCINvMsk_B8_INtB8_3VecfE14extend_trustedINtB3j_3MapIB2C_BI_EB3I_EE0E0E0E0ECs607s0NAIaWN_7segment(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.promoted = load ptr, ptr %i.e, align 8        ; 2 uses
  %.not.not25 = icmp eq ptr %.promoted, %i.d
  br i1 %.not.not25, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i.i = load ptr, ptr %i.g, align 8, !alias.scope !5120, !nonnull !7, !align !14, !noundef !7 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val1.i.i = load ptr, ptr %i.h, align 8, !alias.scope !5120 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted29 = load i64, ptr %i.f, align 8, !alias.scope !5121
  %.promoted30 = load i64, ptr %i.o, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNCINvNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateduNCINvNtBb_3map8map_foldTjdEfuNCINvMs_NtNtCs9xXWl5j4IME_12quantization10turboquant12quantizationNtB2E_14TurboQuantizer10dequantizefEs0_0NCINvNvB1e_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4N_3VecfE14extend_trustedINtB28_3MapIBX_INtNtB4N_9into_iter8IntoIterdEEB2w_EE0E0E0E0Cs607s0NAIaWN_7segment.exit
  %.val919 = phi i64 [ %.promoted30, %.lr.ph ], [ %i.an, %_RNCINvNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateduNCINvNtBb_3map8map_foldTjdEfuNCINvMs_NtNtCs9xXWl5j4IME_12quantization10turboquant12quantizationNtB2E_14TurboQuantizer10dequantizefEs0_0NCINvNvB1e_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4N_3VecfE14extend_trustedINtB28_3MapIBX_INtNtB4N_9into_iter8IntoIterdEEB2w_EE0E0E0E0Cs607s0NAIaWN_7segment.exit ] ; 3 uses
  %i.p = phi i64 [ %.promoted29, %.lr.ph ], [ %i.ao, %_RNCINvNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateduNCINvNtBb_3map8map_foldTjdEfuNCINvMs_NtNtCs9xXWl5j4IME_12quantization10turboquant12quantizationNtB2E_14TurboQuantizer10dequantizefEs0_0NCINvNvB1e_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4N_3VecfE14extend_trustedINtB28_3MapIBX_INtNtB4N_9into_iter8IntoIterdEEB2w_EE0E0E0E0Cs607s0NAIaWN_7segment.exit ] ; 6 uses
  %i.q = phi ptr [ %.promoted, %.lr.ph ], [ %i.s, %_RNCINvNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateduNCINvNtBb_3map8map_foldTjdEfuNCINvMs_NtNtCs9xXWl5j4IME_12quantization10turboquant12quantizationNtB2E_14TurboQuantizer10dequantizefEs0_0NCINvNvB1e_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4N_3VecfE14extend_trustedINtB28_3MapIBX_INtNtB4N_9into_iter8IntoIterdEEB2w_EE0E0E0E0Cs607s0NAIaWN_7segment.exit ] ; 2 uses
  %i.r = load double, ptr %i.q, align 8, !noundef !7
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5122)
  %i.t = load i64, ptr %i.i, align 8, !noalias !5120, !noundef !7 ; 2 uses
  %i.u = icmp ult i64 %i.p, %i.t
  br i1 %i.u, label %bb.c, label %.invoke

bb.c:                                             ; preds = %bb.b
  %i.v = load i64, ptr %i.j, align 8, !noalias !5120, !noundef !7 ; 2 uses
  %i.w = icmp ult i64 %i.p, %i.v
  br i1 %i.w, label %_RNCINvNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateduNCINvNtBb_3map8map_foldTjdEfuNCINvMs_NtNtCs9xXWl5j4IME_12quantization10turboquant12quantizationNtB2E_14TurboQuantizer10dequantizefEs0_0NCINvNvB1e_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4N_3VecfE14extend_trustedINtB28_3MapIBX_INtNtB4N_9into_iter8IntoIterdEEB2w_EE0E0E0E0Cs607s0NAIaWN_7segment.exit, label %.invoke

.invoke:                                          ; preds = %bb.c, %bb.b
  %i.x = phi i64 [ %i.t, %bb.b ], [ %i.v, %bb.c ]
  %i.y = phi ptr [ @1, %bb.b ], [ @2, %bb.c ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.p, i64 noundef %i.x, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.y) #23
          to label %.cont unwind label %bb.g

.cont:                                            ; preds = %.invoke
  unreachable

_RNCINvNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateduNCINvNtBb_3map8map_foldTjdEfuNCINvMs_NtNtCs9xXWl5j4IME_12quantization10turboquant12quantizationNtB2E_14TurboQuantizer10dequantizefEs0_0NCINvNvB1e_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4N_3VecfE14extend_trustedINtB28_3MapIBX_INtNtB4N_9into_iter8IntoIterdEEB2w_EE0E0E0E0Cs607s0NAIaWN_7segment.exit: ; preds = %bb.c
  %i.z = load ptr, ptr %i.k, align 8, !noalias !5120, !nonnull !7, !noundef !7
  %i.aa = load ptr, ptr %i.l, align 8, !noalias !5120, !nonnull !7, !noundef !7
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.p
  %i.ac = load float, ptr %i.ab, align 4, !noalias !5120, !noundef !7
  %i.ad = fpext float %i.ac to double
  %i.ae = fdiv double %i.r, %i.ad
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.p
  %i.ag = load float, ptr %i.af, align 4, !noalias !5120, !noundef !7
  %i.ah = fpext float %i.ag to double
  %i.ai = fsub double %i.ae, %i.ah
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.aj = load double, ptr %.val1.i.i, align 8, !noalias !5120, !noundef !7
  %i.ak = fmul double %i.ai, %i.aj
  %i.al = fptrunc double %i.ak to float
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5124)
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.val919
  store float %i.al, ptr %i.am, align 4, !noalias !5125
  %i.an = add i64 %.val919, 1                     ; 2 uses
  store i64 %i.an, ptr %i.o, align 8, !alias.scope !5125
  %i.ao = add nuw i64 %i.p, 1
  %.not.not = icmp eq ptr %i.s, %i.d
  br i1 %.not.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_RNCINvNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateduNCINvNtBb_3map8map_foldTjdEfuNCINvMs_NtNtCs9xXWl5j4IME_12quantization10turboquant12quantizationNtB2E_14TurboQuantizer10dequantizefEs0_0NCINvNvB1e_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4N_3VecfE14extend_trustedINtB28_3MapIBX_INtNtB4N_9into_iter8IntoIterdEEB2w_EE0E0E0E0Cs607s0NAIaWN_7segment.exit, %bb.a
  %i.ap = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.ar, ptr %i.b, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ap, ptr %i.as, align 8
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val6 = load ptr, ptr %1, align 8, !nonnull !7, !align !14, !noundef !7
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7 = load i64, ptr %i.at, align 8, !noundef !7
  store i64 %.val7, ptr %.val6, align 8
  ret void

bb.e:                                             ; preds = %bb.g
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.f:                                             ; preds = %._crit_edge
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  %.val8 = load ptr, ptr %1, align 8, !nonnull !7, !align !14, !noundef !7
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val9 = load i64, ptr %i.av, align 8, !noundef !7
  store i64 %.val9, ptr %.val8, align 8
  br label %.thread

.thread:                                          ; preds = %bb.f, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterdEECs607s0NAIaWN_7segment.exit
  %.pn15 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.f ], [ %lpad.thr_comm, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterdEECs607s0NAIaWN_7segment.exit ]
  resume { ptr, i32 } %.pn15

bb.g:                                             ; preds = %.invoke
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  %.val818 = load ptr, ptr %1, align 8, !nonnull !7, !align !14, !noundef !7
  store i64 %.val919, ptr %.val818, align 8
  %.val = load ptr, ptr %0, align 8, !alias.scope !5126, !nonnull !7, !noundef !7
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val5 = load i64, ptr %i.aw, align 8, !alias.scope !5126, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5127
  store i64 %.val5, ptr %i.a, align 8, !noalias !5127
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.val, ptr %i.ax, align 8, !noalias !5127
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterdEECs607s0NAIaWN_7segment.exit unwind label %bb.e

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterdEECs607s0NAIaWN_7segment.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5127
  br label %.thread
end_hunk_0
