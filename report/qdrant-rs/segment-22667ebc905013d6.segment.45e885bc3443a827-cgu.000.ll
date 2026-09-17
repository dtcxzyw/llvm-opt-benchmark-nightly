Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/segment-22667ebc905013d6.segment.45e885bc3443a827-cgu.000?download=true
inline.NumInlined: 13187
inline.NumDeleted: 6664
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 85
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListE11resize_withNvYBF_NtNtCskKLDkoKarTP_4core7default7Default7defaultEBR_:bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs9jZsDbilXxj_7roaring6bitmap9container9ContainerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs9jZsDbilXxj_7roaring6bitmap13RoaringBitmapECs607s0NAIaWN_7segment.exit.i.i.i unwind label %bb.c, !noalias !1116

bb.c:                                             ; preds = %.lr.ph
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9jZsDbilXxj_7roaring6bitmap9container9ContainerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body.i.i unwind label %bb.d, !noalias !1116

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !noalias !1116
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs9jZsDbilXxj_7roaring6bitmap13RoaringBitmapECs607s0NAIaWN_7segment.exit.i.i.i: ; preds = %.lr.ph
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9jZsDbilXxj_7roaring6bitmap9container9ContainerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListEBN_.exit.i.i unwind label %bb.f, !noalias !1116

bb.e:                                             ; preds = %.lr.ph24
  %i.o = add nuw nsw i64 %.sroa.0.1.i.i23, 1      ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.e
  br i1 %i.p, label %._crit_edge, label %.lr.ph24

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs9jZsDbilXxj_7roaring6bitmap13RoaringBitmapECs607s0NAIaWN_7segment.exit.i.i.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.f, %bb.c
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.q, %bb.f ], [ %i.m, %bb.c ]
  %i.r = icmp eq i64 %i.l, %i.e
  br i1 %i.r, label %._crit_edge, label %.lr.ph24

.lr.ph24:                                         ; preds = %.body.i.i, %bb.e
  %.sroa.0.1.i.i23 = phi i64 [ %i.o, %bb.e ], [ %i.l, %.body.i.i ] ; 2 uses
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.sroa.0.1.i.i23
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListEBN_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.s) #30
          to label %bb.e unwind label %bb.g, !noalias !1116

._crit_edge:                                      ; preds = %bb.e, %.body.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i

bb.g:                                             ; preds = %.lr.ph24
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !noalias !1116
  unreachable

bb.h:                                             ; preds = %bb.a
  %i.u = sub nuw i64 %1, %i.b                     ; 5 uses
  %i.v = load i64, ptr %0, align 8, !range !15, !alias.scope !1117, !noundef !14
  %i.w = sub nsw i64 %i.v, %i.b
  %i.x = icmp ugt i64 %i.u, %i.w
  br i1 %i.x, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListE7reserveBQ_.exit.thread.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListE7reserveBQ_.exit.i, !prof !16

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListE7reserveBQ_.exit.thread.i: ; preds = %bb.h
  tail call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %i.u, i64 noundef 8, i64 noundef 24)
  %i.y = load i64, ptr %i.a, align 8, !alias.scope !1118, !noundef !14
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListE7reserveBQ_.exit.i

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListE7reserveBQ_.exit.i: ; preds = %bb.h, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListE7reserveBQ_.exit.thread.i
  %i.z = phi i64 [ %i.y, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListE7reserveBQ_.exit.thread.i ], [ %i.b, %bb.h ] ; 3 uses
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %.in.i, align 8, !alias.scope !1118, !nonnull !14, !noundef !14 ; 3 uses
  %.neg = add nuw nsw i64 %i.b, 1
  %xtraiter = and i64 %i.u, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListE7reserveBQ_.exit.i
  %.sroa.0.0.i.i.i.i.prol = add nsw i64 %i.u, -1
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %i.z ; 3 uses
  store i64 0, ptr %i.ab, align 8, !noalias !1119
  %.sroa.52.8..sroa_idx.i.i.i.i.prol = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.52.8..sroa_idx.i.i.i.i.prol, align 8, !noalias !1119
  %.sroa.63.8..sroa_idx.i.i.i.i.prol = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 0, ptr %.sroa.63.8..sroa_idx.i.i.i.i.prol, align 8, !noalias !1119
  %i.ac = add i64 %i.z, 1                         ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListE7reserveBQ_.exit.i
  %.lcssa.unr = phi i64 [ poison, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListE7reserveBQ_.exit.i ], [ %i.ac, %.prol.loopexit.unr-lcssa ]
  %.unr = phi i64 [ %i.z, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListE7reserveBQ_.exit.i ], [ %i.ac, %.prol.loopexit.unr-lcssa ]
  %.sroa.0.0.i.in.i.i.i.unr = phi i64 [ %i.u, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListE7reserveBQ_.exit.i ], [ %.sroa.0.0.i.i.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %i.ad = icmp eq i64 %1, %.neg
  br i1 %i.ad, label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters4take4TakeINtNtNtB2T_7sources11repeat_with10RepeatWithNvYBG_NtNtB2V_7default7Default7defaultEEEBS_.exit, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListE7reserveBQ_.exit.i.new

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListE7reserveBQ_.exit.i.new: ; preds = %.prol.loopexit, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListE7reserveBQ_.exit.i.new
  %i.ae = phi i64 [ %i.ai, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListE7reserveBQ_.exit.i.new ], [ %.unr, %.prol.loopexit ] ; 3 uses
  %.sroa.0.0.i.in.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.1, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListE7reserveBQ_.exit.i.new ], [ %.sroa.0.0.i.in.i.i.i.unr, %.prol.loopexit ]
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %i.ae ; 3 uses
  store i64 0, ptr %i.af, align 8, !noalias !1119
  %.sroa.52.8..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.52.8..sroa_idx.i.i.i.i, align 8, !noalias !1119
  %.sroa.63.8..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 0, ptr %.sroa.63.8..sroa_idx.i.i.i.i, align 8, !noalias !1119
  %.sroa.0.0.i.i.i.i.1 = add i64 %.sroa.0.0.i.in.i.i.i, -2 ; 2 uses
  %i.ag = getelementptr [24 x i8], ptr %i.aa, i64 %i.ae ; 3 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 24
  store i64 0, ptr %i.ah, align 8, !noalias !1119
  %.sroa.52.8..sroa_idx.i.i.i.i.1 = getelementptr i8, ptr %i.ag, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.52.8..sroa_idx.i.i.i.i.1, align 8, !noalias !1119
  %.sroa.63.8..sroa_idx.i.i.i.i.1 = getelementptr i8, ptr %i.ag, i64 40
  store i64 0, ptr %.sroa.63.8..sroa_idx.i.i.i.i.1, align 8, !noalias !1119
  %i.ai = add i64 %i.ae, 2                        ; 2 uses
  %i.aj = icmp eq i64 %.sroa.0.0.i.i.i.i.1, 0
  br i1 %i.aj, label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters4take4TakeINtNtNtB2T_7sources11repeat_with10RepeatWithNvYBG_NtNtB2V_7default7Default7defaultEEEBS_.exit, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListE7reserveBQ_.exit.i.new

_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters4take4TakeINtNtNtB2T_7sources11repeat_with10RepeatWithNvYBG_NtNtB2V_7default7Default7defaultEEEBS_.exit: ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListE7reserveBQ_.exit.i.new, %.prol.loopexit
  %.lcssa = phi i64 [ %.lcssa.unr, %.prol.loopexit ], [ %i.ai, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListE7reserveBQ_.exit.i.new ]
  store i64 %.lcssa, ptr %i.a, align 8, !alias.scope !1118, !noalias !1120
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListE8truncateBQ_.exit

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListE8truncateBQ_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListEBN_.exit.i.i, %bb.b, %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters4take4TakeINtNtNtB2T_7sources11repeat_with10RepeatWithNvYBG_NtNtB2V_7default7Default7defaultEEEBS_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecReE5drainINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECs607s0NAIaWN_7segment(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !14 ; 3 uses
  %i.c = icmp ult i64 %i.b, 576460752303423488
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs607s0NAIaWN_7segment(i64 noundef %2, i64 noundef %3, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.j, ptr %i.m, align 8
  store ptr %i.i, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.o, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecReE6retainNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtBY_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBF_uBv_Es4_0ECs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1171)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1170, !noalias !1171, !noundef !14 ; 6 uses
  %i.e = icmp ult i64 %i.d, 576460752303423488
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecReE10retain_mutNCINvB2_6retainNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB1i_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBF_uBv_Es4_0E0ECs607s0NAIaWN_7segment.exit, label %.preheader31.i

.preheader31.i:                                   ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !1170, !noalias !1171, !nonnull !14, !noundef !14 ; 4 uses
  %i.i = load ptr, ptr %1, align 8, !alias.scope !1172, !noalias !1170, !nonnull !14, !align !22, !noundef !14 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !1172, !noalias !1170, !noundef !14 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !1172, !noalias !1170, !nonnull !14, !align !23, !noundef !14 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !1172, !noalias !1170, !nonnull !14, !align !22, !noundef !14 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.preheader31.i
  %.sroa.0.0.i = phi i64 [ %i.ao, %bb.d ], [ 0, %.preheader31.i ] ; 4 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.sroa.0.0.i ; 2 uses
  %.val12.i = load ptr, ptr %i.q, align 8, !alias.scope !1173, !noalias !1174, !nonnull !14, !noundef !14
  %i.r = getelementptr i8, ptr %i.q, i64 8
  %.val13.i = load i64, ptr %i.r, align 8, !alias.scope !1173, !noalias !1174, !noundef !14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1175)
  %i.s = load i32, ptr %i.m, align 4, !noalias !1176, !noundef !14
  %i.t = load i64, ptr %i.o, align 8, !noalias !1176, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1177
  %i.u = zext i32 %i.s to i64
  store i64 %i.u, ptr %i.b, align 8, !noalias !1177
  store i64 0, ptr %i.p, align 8, !noalias !1177
  call fastcc void @_RNvXs_NtCs5tRDsWtv0pR_6wyhash6traitsNtB4_6WyHashNtNtCskKLDkoKarTP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val12.i, i64 noundef %.val13.i) #31, !noalias !1177
  %i.v = load i64, ptr %i.b, align 8, !alias.scope !1178, !noalias !1179
  %.promoted76.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.p, align 8, !alias.scope !1178, !noalias !1179
  %i.w = xor i64 %i.v, -6884282663029611473
  %i.x = zext i64 %i.w to i128
  %i.y = mul nuw i128 %i.x, 16646288086500911140  ; 2 uses
  %i.z = lshr i128 %i.y, 64
  %i.aa = add i64 %.promoted76.i.i.i.i.i.i.i.i.i.i, 1
  %i.ab = xor i64 %i.aa, -1493879189771267739
  %.masked.i.i.i.i = and i128 %i.y, 18446744073709551612
  %i.ac = xor i128 %i.z, %.masked.i.i.i.i
  %i.ad = zext i64 %i.ab to i128
  %i.ae = mul nuw i128 %i.ac, %i.ad               ; 2 uses
  %i.af = lshr i128 %i.ae, 64
  %i.ag = xor i128 %i.af, %i.ae
  %2 = trunc i128 %i.ag to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1177
  %3 = tail call i64 @llvm.umulh.i64(i64 %2, i64 %i.t) ; 2 uses
  %i.ah = lshr i64 %3, 6                          ; 3 uses
  %i.ai = icmp ult i64 %i.ah, %i.k
  br i1 %i.ai, label %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecReE6retainNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB10_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBH_uBx_Es4_0E0Cs607s0NAIaWN_7segment.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ah, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #32, !noalias !1176
  unreachable

_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecReE6retainNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB10_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBH_uBx_Es4_0E0Cs607s0NAIaWN_7segment.exit.i: ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ah
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !1176, !noundef !14
  %i.al = and i64 %3, 63
  %i.am = shl nuw i64 1, %i.al
  %i.an = and i64 %i.ak, %i.am
  %.not.i.i.i = icmp eq i64 %i.an, 0
  %i.ao = add nuw nsw i64 %.sroa.0.0.i, 1         ; 4 uses
  br i1 %.not.i.i.i, label %bb.d, label %.preheader.i, !prof !17

.preheader.i:                                     ; preds = %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecReE6retainNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB10_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBH_uBx_Es4_0E0Cs607s0NAIaWN_7segment.exit.i
  %i.ap = icmp samesign ult i64 %i.ao, %i.d
  br i1 %i.ap, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.e

bb.d:                                             ; preds = %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecReE6retainNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB10_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBH_uBx_Es4_0E0Cs607s0NAIaWN_7segment.exit.i
  %i.ar = icmp eq i64 %i.ao, %i.d
  br i1 %i.ar, label %_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecReE10retain_mutNCINvB2_6retainNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB1i_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBF_uBv_Es4_0E0ECs607s0NAIaWN_7segment.exit, label %bb.b

._crit_edge.i:                                    ; preds = %bb.i, %.preheader.i
  %.sroa.13.0.lcssa.i = phi i64 [ %.sroa.0.0.i, %.preheader.i ], [ %.sroa.13.1.i, %bb.i ]
  store i64 %.sroa.13.0.lcssa.i, ptr %i.c, align 8, !alias.scope !1170, !noalias !1171
  br label %_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecReE10retain_mutNCINvB2_6retainNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB1i_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBF_uBv_Es4_0E0ECs607s0NAIaWN_7segment.exit

bb.e:                                             ; preds = %bb.i, %.lr.ph.i
  %.sroa.7.063.i = phi i64 [ %i.ao, %.lr.ph.i ], [ %.sroa.7.0.i, %bb.i ] ; 3 uses
  %.sroa.13.062.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i ], [ %.sroa.13.1.i, %bb.i ] ; 5 uses
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.sroa.7.063.i ; 4 uses
  %.val9.i = load ptr, ptr %i.as, align 8, !alias.scope !1173, !noalias !1174, !nonnull !14, !noundef !14
  %i.at = getelementptr i8, ptr %i.as, i64 8
  %.val10.i = load i64, ptr %i.at, align 8, !alias.scope !1173, !noalias !1174, !noundef !14
  %i.au = load i32, ptr %i.m, align 4, !noalias !1180, !noundef !14
  %i.av = load i64, ptr %i.o, align 8, !noalias !1180, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1181
  %i.aw = zext i32 %i.au to i64
  store i64 %i.aw, ptr %i.a, align 8, !noalias !1181
  store i64 0, ptr %i.aq, align 8, !noalias !1181
  invoke fastcc void @_RNvXs_NtCs5tRDsWtv0pR_6wyhash6traitsNtB4_6WyHashNtNtCskKLDkoKarTP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val9.i, i64 noundef %.val10.i) #31
          to label %.noexc.i unwind label %.loopexit.i, !noalias !1182

.noexc.i:                                         ; preds = %bb.e
  %i.ax = load i64, ptr %i.a, align 8, !alias.scope !1183, !noalias !1184
  %.promoted76.i.i.i.i.i.i.i.i.i14.i = load i64, ptr %i.aq, align 8, !alias.scope !1183, !noalias !1184
  %i.ay = xor i64 %i.ax, -6884282663029611473
  %i.az = zext i64 %i.ay to i128
  %i.ba = mul nuw i128 %i.az, 16646288086500911140 ; 2 uses
  %i.bb = lshr i128 %i.ba, 64
  %i.bc = add i64 %.promoted76.i.i.i.i.i.i.i.i.i14.i, 1
  %i.bd = xor i64 %i.bc, -1493879189771267739
  %.masked.i.i.i15.i = and i128 %i.ba, 18446744073709551612
  %i.be = xor i128 %i.bb, %.masked.i.i.i15.i
  %i.bf = zext i64 %i.bd to i128
  %i.bg = mul nuw i128 %i.be, %i.bf               ; 2 uses
  %i.bh = lshr i128 %i.bg, 64
  %i.bi = xor i128 %i.bh, %i.bg
  %4 = trunc i128 %i.bi to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1181
  %5 = tail call i64 @llvm.umulh.i64(i64 %4, i64 %i.av) ; 2 uses
  %i.bj = lshr i64 %5, 6                          ; 3 uses
  %i.bk = icmp ult i64 %i.bj, %i.k
  br i1 %i.bk, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.noexc.i
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bj, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #32
          to label %.noexc18.i unwind label %.loopexit.split-lp.i, !noalias !1182

.noexc18.i:                                       ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %.noexc.i
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.bj
  %i.bm = load i64, ptr %i.bl, align 8, !noalias !1180, !noundef !14
  %i.bn = and i64 %5, 63
  %i.bo = shl nuw i64 1, %i.bn
  %i.bp = and i64 %i.bm, %i.bo
  %.not.i.i17.i = icmp eq i64 %i.bp, 0
  br i1 %.not.i.i17.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.sroa.13.062.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, ptr noundef nonnull align 8 dereferenceable(16) %i.as, i64 16, i1 false), !noalias !1182
  %i.br = add i64 %.sroa.13.062.i, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.13.1.i = phi i64 [ %i.br, %bb.h ], [ %.sroa.13.062.i, %bb.g ] ; 2 uses
  %.sroa.7.0.i = add nuw nsw i64 %.sroa.7.063.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %.sroa.7.0.i, %i.d
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.e

.loopexit.i:                                      ; preds = %bb.e
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.loopexit.split-lp.i:                             ; preds = %bb.f
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.bs = sub nuw nsw i64 %i.d, %.sroa.7.063.i    ; 2 uses
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.sroa.13.062.i
  %i.bu = shl nuw nsw i64 %i.bs, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bt, ptr nonnull align 8 %i.as, i64 %i.bu, i1 false), !noalias !1185
  %i.bv = add i64 %i.bs, %.sroa.13.062.i
  store i64 %i.bv, ptr %i.c, align 8, !alias.scope !1170, !noalias !1186
  resume { ptr, i32 } %lpad.phi.i

_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecReE10retain_mutNCINvB2_6retainNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB1i_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBF_uBv_Es4_0E0ECs607s0NAIaWN_7segment.exit: ; preds = %bb.d, %bb.a, %._crit_edge.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecReE6retainNCINvXNtNtCsl6yn9iTqhmQ_2ph4fmph6keysetBv_INtBV_6KeySetBF_E24retain_keys_with_indicesNCINvMs1_NtBX_8functionINtB2l_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBF_uBv_Es0_0NCB2e_s1_0NCB2e_s2_0NCB2e_s3_0E0ECs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1198)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1198, !noalias !1199, !noundef !14 ; 6 uses
  %i.c = icmp ult i64 %i.b, 576460752303423488
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecReE10retain_mutNCINvB2_6retainNCINvXNtNtCsl6yn9iTqhmQ_2ph4fmph6keysetBv_INtB1f_6KeySetBF_E24retain_keys_with_indicesNCINvMs1_NtB1h_8functionINtB2G_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBF_uBv_Es0_0NCB2z_s1_0NCB2z_s2_0NCB2z_s3_0E0E0ECs607s0NAIaWN_7segment.exit, label %.preheader26.i

.preheader26.i:                                   ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre.i = load i64, ptr %2, align 8, !noalias !1200 ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !alias.scope !1201, !noalias !1200, !nonnull !14, !align !22, !noundef !14 ; 2 uses
  %i.h = load ptr, ptr %i.f, align 8, !alias.scope !1201, !noalias !1200, !nonnull !14, !align !22, !noundef !14 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !noalias !1202, !noundef !14 ; 2 uses
  %i.k = load i64, ptr %i.e, align 8              ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.m = tail call i64 @llvm.usub.sat.i64(i64 %i.j, i64 %.pre.i)
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.preheader26.i
  %i.n = phi i64 [ %i.y, %bb.f ], [ %.pre.i, %.preheader26.i ] ; 3 uses
  %.sroa.0.0.i = phi i64 [ %i.z, %bb.f ], [ 0, %.preheader26.i ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1201)
  %exitcond.not = icmp eq i64 %.sroa.0.0.i, %i.m
  br i1 %exitcond.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.l, align 8, !noalias !1202, !nonnull !14, !noundef !14
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.n
  %i.q = load i64, ptr %i.p, align 8, !noalias !1202, !noundef !14 ; 2 uses
  %i.r = lshr i64 %i.q, 6                         ; 3 uses
  %i.s = icmp ult i64 %i.r, %i.k
  br i1 %i.s, label %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecReE6retainNCINvXNtNtCsl6yn9iTqhmQ_2ph4fmph6keysetBx_INtBX_6KeySetBH_E24retain_keys_with_indicesNCINvMs1_NtBZ_8functionINtB2n_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBH_uBx_Es0_0NCB2g_s1_0NCB2g_s2_0NCB2g_s3_0E0E0Cs607s0NAIaWN_7segment.exit.i, label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.n, i64 noundef %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #32, !noalias !1202
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.r, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #32, !noalias !1202
  unreachable

_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecReE6retainNCINvXNtNtCsl6yn9iTqhmQ_2ph4fmph6keysetBx_INtBX_6KeySetBH_E24retain_keys_with_indicesNCINvMs1_NtBZ_8functionINtB2n_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBH_uBx_Es0_0NCB2g_s1_0NCB2g_s2_0NCB2g_s3_0E0E0Cs607s0NAIaWN_7segment.exit.i: ; preds = %bb.c
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.r
  %i.u = load i64, ptr %i.t, align 8, !noalias !1202, !noundef !14
  %i.v = and i64 %i.q, 63
  %i.w = shl nuw i64 1, %i.v
  %i.x = and i64 %i.u, %i.w
  %.not.i.i.i.i = icmp eq i64 %i.x, 0
  %i.y = add nuw i64 %i.n, 1                      ; 3 uses
  store i64 %i.y, ptr %2, align 8, !noalias !1200
  %i.z = add nuw nsw i64 %.sroa.0.0.i, 1          ; 4 uses
  br i1 %.not.i.i.i.i, label %bb.f, label %.preheader.i, !prof !17

.preheader.i:                                     ; preds = %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecReE6retainNCINvXNtNtCsl6yn9iTqhmQ_2ph4fmph6keysetBx_INtBX_6KeySetBH_E24retain_keys_with_indicesNCINvMs1_NtBZ_8functionINtB2n_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBH_uBx_Es0_0NCB2g_s1_0NCB2g_s2_0NCB2g_s3_0E0E0Cs607s0NAIaWN_7segment.exit.i
  %i.aa = icmp samesign ult i64 %i.z, %i.b
  br i1 %i.aa, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !1198, !noalias !1199, !nonnull !14, !noundef !14 ; 3 uses
  br label %bb.g

bb.f:                                             ; preds = %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecReE6retainNCINvXNtNtCsl6yn9iTqhmQ_2ph4fmph6keysetBx_INtBX_6KeySetBH_E24retain_keys_with_indicesNCINvMs1_NtBZ_8functionINtB2n_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBH_uBx_Es0_0NCB2g_s1_0NCB2g_s2_0NCB2g_s3_0E0E0Cs607s0NAIaWN_7segment.exit.i
  %i.ad = icmp eq i64 %i.z, %i.b
  br i1 %i.ad, label %_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecReE10retain_mutNCINvB2_6retainNCINvXNtNtCsl6yn9iTqhmQ_2ph4fmph6keysetBv_INtB1f_6KeySetBF_E24retain_keys_with_indicesNCINvMs1_NtB1h_8functionINtB2G_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBF_uBv_Es0_0NCB2z_s1_0NCB2z_s2_0NCB2z_s3_0E0E0ECs607s0NAIaWN_7segment.exit, label %bb.b

._crit_edge.i:                                    ; preds = %bb.k, %.preheader.i
  %.sroa.13.0.lcssa.i = phi i64 [ %.sroa.0.0.i, %.preheader.i ], [ %.sroa.13.1.i, %bb.k ]
  store i64 %.sroa.13.0.lcssa.i, ptr %i.a, align 8, !alias.scope !1198, !noalias !1199
  br label %_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecReE10retain_mutNCINvB2_6retainNCINvXNtNtCsl6yn9iTqhmQ_2ph4fmph6keysetBv_INtB1f_6KeySetBF_E24retain_keys_with_indicesNCINvMs1_NtB1h_8functionINtB2G_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBF_uBv_Es0_0NCB2z_s1_0NCB2z_s2_0NCB2z_s3_0E0E0ECs607s0NAIaWN_7segment.exit

bb.g:                                             ; preds = %bb.k, %.lr.ph.i
  %i.ae = phi i64 [ %i.y, %.lr.ph.i ], [ %i.av, %bb.k ] ; 4 uses
  %.sroa.7.078.i = phi i64 [ %i.z, %.lr.ph.i ], [ %.sroa.7.0.i, %bb.k ] ; 3 uses
  %.sroa.13.077.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i ], [ %.sroa.13.1.i, %bb.k ] ; 5 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %.sroa.7.078.i ; 2 uses
  %i.ag = load i64, ptr %i.i, align 8, !noalias !1203, !noundef !14 ; 2 uses
  %i.ah = icmp ult i64 %i.ae, %i.ag
  br i1 %i.ah, label %bb.h, label %.invoke

bb.h:                                             ; preds = %bb.g
  %i.ai = load ptr, ptr %i.l, align 8, !noalias !1203, !nonnull !14, !noundef !14
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ae
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !1203, !noundef !14 ; 2 uses
  %i.al = lshr i64 %i.ak, 6                       ; 3 uses
  %i.am = icmp ult i64 %i.al, %i.k
  br i1 %i.am, label %bb.i, label %.invoke

.invoke:                                          ; preds = %bb.h, %bb.g
  %i.an = phi i64 [ %i.ae, %bb.g ], [ %i.al, %bb.h ]
  %i.ao = phi i64 [ %i.ag, %bb.g ], [ %i.k, %bb.h ]
  %i.ap = phi ptr [ @7, %bb.g ], [ @9, %bb.h ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.an, i64 noundef %i.ao, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap) #32
          to label %.cont unwind label %bb.l, !noalias !1200

.cont:                                            ; preds = %.invoke
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.al
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !1203, !noundef !14
  %i.as = and i64 %i.ak, 63
  %i.at = shl nuw i64 1, %i.as
  %i.au = and i64 %i.ar, %i.at
  %.not.i.i.i12.i = icmp eq i64 %i.au, 0
  %i.av = add nuw i64 %i.ae, 1                    ; 2 uses
  store i64 %i.av, ptr %2, align 8, !noalias !1200
  br i1 %.not.i.i.i12.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %.sroa.13.077.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %i.af, i64 16, i1 false), !noalias !1200
  %i.ax = add i64 %.sroa.13.077.i, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.13.1.i = phi i64 [ %i.ax, %bb.j ], [ %.sroa.13.077.i, %bb.i ] ; 2 uses
  %.sroa.7.0.i = add nuw nsw i64 %.sroa.7.078.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %.sroa.7.0.i, %i.b
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.g

bb.l:                                             ; preds = %.invoke
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = sub nuw nsw i64 %i.b, %.sroa.7.078.i    ; 2 uses
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %.sroa.13.077.i
  %i.bb = shl nuw nsw i64 %i.az, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ba, ptr nonnull align 8 %i.af, i64 %i.bb, i1 false), !noalias !1204
  %i.bc = add i64 %i.az, %.sroa.13.077.i
  store i64 %i.bc, ptr %i.a, align 8, !alias.scope !1198, !noalias !1205
  resume { ptr, i32 } %i.ay

_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecReE10retain_mutNCINvB2_6retainNCINvXNtNtCsl6yn9iTqhmQ_2ph4fmph6keysetBv_INtB1f_6KeySetBF_E24retain_keys_with_indicesNCINvMs1_NtB1h_8functionINtB2G_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBF_uBv_Es0_0NCB2z_s1_0NCB2z_s2_0NCB2z_s3_0E0E0ECs607s0NAIaWN_7segment.exit: ; preds = %bb.f, %bb.a, %._crit_edge.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecRoE5drainINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECs607s0NAIaWN_7segment(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !14 ; 3 uses
  %i.c = icmp ult i64 %i.b, 1152921504606846976
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs607s0NAIaWN_7segment(i64 noundef %2, i64 noundef %3, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.j, ptr %i.m, align 8
  store ptr %i.i, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.o, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecRoE6retainNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtBY_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBF_uBv_Es4_0ECs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1233)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1234)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1233, !noalias !1234, !noundef !14 ; 6 uses
  %i.c = icmp ult i64 %i.b, 1152921504606846976
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecRoE10retain_mutNCINvB2_6retainNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB1i_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBF_uBv_Es4_0E0ECs607s0NAIaWN_7segment.exit, label %.preheader33.i

.preheader33.i:                                   ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !1233, !noalias !1234, !nonnull !14, !noundef !14 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !1235, !noalias !1233, !noundef !14 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !1235, !noalias !1233, !nonnull !14, !align !23, !noundef !14 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !noalias !1236, !noundef !14
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !1235, !noalias !1233, !nonnull !14, !align !22, !noundef !14 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !noalias !1236, !noundef !14
  %i.o = zext i32 %i.k to i64
  %i.p = load ptr, ptr %1, align 8, !alias.scope !1234, !noalias !1233, !nonnull !14, !align !22 ; 2 uses
  %invariant.op = xor i64 %i.o, -6884282663029611473
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.preheader33.i
  %.sroa.0.0.i = phi i64 [ %i.ak, %bb.d ], [ 0, %.preheader33.i ] ; 4 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.0.0.i
  %.val11.i = load ptr, ptr %i.q, align 8, !alias.scope !1237, !noalias !1238, !nonnull !14, !align !1239, !noundef !14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1240)
  %.val.i.i.i.i.i.i = load i128, ptr %.val11.i, align 16, !noalias !1241, !noundef !14 ; 3 uses
  %.sroa.0.0.extract.trunc.i.i.i.i.i.i.i.i = trunc i128 %.val.i.i.i.i.i.i to i64 ; 2 uses
  %.sroa.6.0.extract.shift.i.i.i.i.i.i.i.i = lshr i128 %.val.i.i.i.i.i.i, 96
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i.i = trunc nuw nsw i128 %.sroa.6.0.extract.shift.i.i.i.i.i.i.i.i to i64
  %i.r = tail call i64 @llvm.fshl.i64(i64 %.sroa.0.0.extract.trunc.i.i.i.i.i.i.i.i, i64 %.sroa.0.0.extract.trunc.i.i.i.i.i.i.i.i, i64 32)
  %.reass.i.reass.reass = xor i64 %i.r, %invariant.op
  %sh.diff.i.i.i.i.i.i.i.i = lshr i128 %.val.i.i.i.i.i.i, 32
  %tr.sh.diff.i.i.i.i.i.i.i.i = trunc i128 %sh.diff.i.i.i.i.i.i.i.i to i64
  %i.s = and i64 %tr.sh.diff.i.i.i.i.i.i.i.i, -4294967296
  %i.t = or disjoint i64 %i.s, %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i.i
  %i.u = xor i64 %i.t, -8161530843051276573
  %i.v = zext i64 %.reass.i.reass.reass to i128
  %i.w = zext i64 %i.u to i128
  %i.x = mul nuw i128 %i.w, %i.v                  ; 2 uses
  %i.y = lshr i128 %i.x, 64
  %.masked.i.i.i.i = and i128 %i.x, 18446744073709551615
  %i.z = xor i128 %i.y, %.masked.i.i.i.i
  %i.aa = mul nuw i128 %i.z, 16952864883938283893 ; 2 uses
  %i.ab = lshr i128 %i.aa, 64
  %i.ac = xor i128 %i.ab, %i.aa
  %2 = trunc i128 %i.ac to i64
  %3 = tail call i64 @llvm.umulh.i64(i64 %2, i64 %i.n) ; 2 uses
  %i.ad = lshr i64 %3, 6                          ; 3 uses
  %i.ae = icmp ult i64 %i.ad, %i.h
  br i1 %i.ae, label %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecRoE6retainNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB10_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBH_uBx_Es4_0E0Cs607s0NAIaWN_7segment.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ad, i64 noundef %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #32, !noalias !1236
  unreachable

_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecRoE6retainNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB10_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBH_uBx_Es4_0E0Cs607s0NAIaWN_7segment.exit.i: ; preds = %bb.b
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ad
  %i.ag = load i64, ptr %i.af, align 8, !noalias !1236, !noundef !14
  %i.ah = and i64 %3, 63
  %i.ai = shl nuw i64 1, %i.ah
  %i.aj = and i64 %i.ag, %i.ai
  %.not.i.i.i = icmp eq i64 %i.aj, 0
  %i.ak = add nuw nsw i64 %.sroa.0.0.i, 1         ; 4 uses
  br i1 %.not.i.i.i, label %bb.d, label %.preheader.i, !prof !17

.preheader.i:                                     ; preds = %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecRoE6retainNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB10_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBH_uBx_Es4_0E0Cs607s0NAIaWN_7segment.exit.i
  %i.al = icmp samesign ult i64 %i.ak, %i.b
  br i1 %i.al, label %.lr.ph.i, label %._crit_edge.i

bb.d:                                             ; preds = %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecRoE6retainNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB10_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBH_uBx_Es4_0E0Cs607s0NAIaWN_7segment.exit.i
  %i.am = icmp eq i64 %i.ak, %i.b
  br i1 %i.am, label %_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecRoE10retain_mutNCINvB2_6retainNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB1i_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBF_uBv_Es4_0E0ECs607s0NAIaWN_7segment.exit, label %bb.b

._crit_edge.i:                                    ; preds = %bb.h, %.preheader.i
  %.sroa.13.0.lcssa.i = phi i64 [ %.sroa.0.0.i, %.preheader.i ], [ %.sroa.13.1.i, %bb.h ]
  store i64 %.sroa.13.0.lcssa.i, ptr %i.a, align 8, !alias.scope !1233, !noalias !1234
  br label %_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecRoE10retain_mutNCINvB2_6retainNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB1i_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBF_uBv_Es4_0E0ECs607s0NAIaWN_7segment.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.h
  %.sroa.7.058.i = phi i64 [ %.sroa.7.0.i, %bb.h ], [ %i.ak, %.preheader.i ] ; 4 uses
  %.sroa.13.057.i = phi i64 [ %.sroa.13.1.i, %bb.h ], [ %.sroa.0.0.i, %.preheader.i ] ; 5 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.7.058.i
  %.val9.i = load ptr, ptr %i.an, align 8, !alias.scope !1237, !noalias !1238, !nonnull !14, !align !1239, !noundef !14 ; 2 uses
  %i.ao = load i32, ptr %i.j, align 4, !noalias !1242, !noundef !14
  %i.ap = load i64, ptr %i.m, align 8, !noalias !1242, !noundef !14
  %i.aq = zext i32 %i.ao to i64
  %.val.i.i.i.i.i12.i = load i128, ptr %.val9.i, align 16, !noalias !1243, !noundef !14 ; 3 uses
  %.sroa.0.0.extract.trunc.i.i.i.i.i.i.i13.i = trunc i128 %.val.i.i.i.i.i12.i to i64 ; 2 uses
  %.sroa.6.0.extract.shift.i.i.i.i.i.i.i14.i = lshr i128 %.val.i.i.i.i.i12.i, 96
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i15.i = trunc nuw nsw i128 %.sroa.6.0.extract.shift.i.i.i.i.i.i.i14.i to i64
  %i.ar = tail call i64 @llvm.fshl.i64(i64 %.sroa.0.0.extract.trunc.i.i.i.i.i.i.i13.i, i64 %.sroa.0.0.extract.trunc.i.i.i.i.i.i.i13.i, i64 32)
  %i.as = xor i64 %i.ar, %i.aq
  %i.at = xor i64 %i.as, -6884282663029611473
  %sh.diff.i.i.i.i.i.i.i16.i = lshr i128 %.val.i.i.i.i.i12.i, 32
  %tr.sh.diff.i.i.i.i.i.i.i17.i = trunc i128 %sh.diff.i.i.i.i.i.i.i16.i to i64
  %i.au = and i64 %tr.sh.diff.i.i.i.i.i.i.i17.i, -4294967296
  %i.av = or disjoint i64 %i.au, %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i15.i
  %i.aw = xor i64 %i.av, -8161530843051276573
  %i.ax = zext i64 %i.at to i128
  %i.ay = zext i64 %i.aw to i128
  %i.az = mul nuw i128 %i.ay, %i.ax               ; 2 uses
  %i.ba = lshr i128 %i.az, 64
  %.masked.i.i.i18.i = and i128 %i.az, 18446744073709551615
  %i.bb = xor i128 %i.ba, %.masked.i.i.i18.i
  %i.bc = mul nuw i128 %i.bb, 16952864883938283893 ; 2 uses
  %i.bd = lshr i128 %i.bc, 64
  %i.be = xor i128 %i.bd, %i.bc
  %4 = trunc i128 %i.be to i64
  %5 = tail call i64 @llvm.umulh.i64(i64 %4, i64 %i.ap) ; 2 uses
  %i.bf = lshr i64 %5, 6                          ; 3 uses
  %i.bg = icmp ult i64 %i.bf, %i.h
  %i.bh = ptrtoint ptr %.val9.i to i64
  br i1 %i.bg, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bf, i64 noundef %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #32
          to label %.noexc.i unwind label %bb.i, !noalias !1244

.noexc.i:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %.lr.ph.i
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.bf
  %i.bj = load i64, ptr %i.bi, align 8, !noalias !1242, !noundef !14
  %i.bk = and i64 %5, 63
  %i.bl = shl nuw i64 1, %i.bk
  %i.bm = and i64 %i.bj, %i.bl
  %.not.i.i20.i = icmp eq i64 %i.bm, 0
  br i1 %.not.i.i20.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.13.057.i
  store i64 %i.bh, ptr %i.bn, align 8, !noalias !1244
  %i.bo = add i64 %.sroa.13.057.i, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.13.1.i = phi i64 [ %i.bo, %bb.g ], [ %.sroa.13.057.i, %bb.f ] ; 2 uses
  %.sroa.7.0.i = add nuw nsw i64 %.sroa.7.058.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %.sroa.7.0.i, %i.b
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.i:                                             ; preds = %bb.e
  %i.bp = landingpad { ptr, i32 }
          cleanup
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.7.058.i
  %i.br = sub nuw nsw i64 %i.b, %.sroa.7.058.i    ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.13.057.i
  %i.bt = shl nuw nsw i64 %i.br, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bs, ptr nonnull align 8 %i.bq, i64 %i.bt, i1 false), !noalias !1245
  %i.bu = add i64 %i.br, %.sroa.13.057.i
  store i64 %i.bu, ptr %i.a, align 8, !alias.scope !1233, !noalias !1246
  resume { ptr, i32 } %i.bp

_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecRoE10retain_mutNCINvB2_6retainNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB1i_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBF_uBv_Es4_0E0ECs607s0NAIaWN_7segment.exit: ; preds = %bb.d, %bb.a, %._crit_edge.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecRoE6retainNCINvXNtNtCsl6yn9iTqhmQ_2ph4fmph6keysetBv_INtBV_6KeySetBF_E24retain_keys_with_indicesNCINvMs1_NtBX_8functionINtB2l_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBF_uBv_Es0_0NCB2e_s1_0NCB2e_s2_0NCB2e_s3_0E0ECs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1258)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1258, !noalias !1259, !noundef !14 ; 6 uses
  %i.c = icmp ult i64 %i.b, 1152921504606846976
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecRoE10retain_mutNCINvB2_6retainNCINvXNtNtCsl6yn9iTqhmQ_2ph4fmph6keysetBv_INtB1f_6KeySetBF_E24retain_keys_with_indicesNCINvMs1_NtB1h_8functionINtB2G_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBF_uBv_Es0_0NCB2z_s1_0NCB2z_s2_0NCB2z_s3_0E0E0ECs607s0NAIaWN_7segment.exit, label %.preheader26.i

.preheader26.i:                                   ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre.i = load i64, ptr %2, align 8, !noalias !1260 ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !alias.scope !1261, !noalias !1260, !nonnull !14, !align !22, !noundef !14 ; 2 uses
  %i.h = load ptr, ptr %i.f, align 8, !alias.scope !1261, !noalias !1260, !nonnull !14, !align !22, !noundef !14 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !noalias !1262, !noundef !14 ; 2 uses
  %i.k = load i64, ptr %i.e, align 8              ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.m = tail call i64 @llvm.usub.sat.i64(i64 %i.j, i64 %.pre.i)
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.preheader26.i
  %i.n = phi i64 [ %i.y, %bb.f ], [ %.pre.i, %.preheader26.i ] ; 3 uses
  %.sroa.0.0.i = phi i64 [ %i.z, %bb.f ], [ 0, %.preheader26.i ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1261)
  %exitcond.not = icmp eq i64 %.sroa.0.0.i, %i.m
  br i1 %exitcond.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.l, align 8, !noalias !1262, !nonnull !14, !noundef !14
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.n
  %i.q = load i64, ptr %i.p, align 8, !noalias !1262, !noundef !14 ; 2 uses
  %i.r = lshr i64 %i.q, 6                         ; 3 uses
  %i.s = icmp ult i64 %i.r, %i.k
  br i1 %i.s, label %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecRoE6retainNCINvXNtNtCsl6yn9iTqhmQ_2ph4fmph6keysetBx_INtBX_6KeySetBH_E24retain_keys_with_indicesNCINvMs1_NtBZ_8functionINtB2n_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBH_uBx_Es0_0NCB2g_s1_0NCB2g_s2_0NCB2g_s3_0E0E0Cs607s0NAIaWN_7segment.exit.i, label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.n, i64 noundef %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #32, !noalias !1262
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.r, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #32, !noalias !1262
  unreachable

_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecRoE6retainNCINvXNtNtCsl6yn9iTqhmQ_2ph4fmph6keysetBx_INtBX_6KeySetBH_E24retain_keys_with_indicesNCINvMs1_NtBZ_8functionINtB2n_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBH_uBx_Es0_0NCB2g_s1_0NCB2g_s2_0NCB2g_s3_0E0E0Cs607s0NAIaWN_7segment.exit.i: ; preds = %bb.c
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.r
  %i.u = load i64, ptr %i.t, align 8, !noalias !1262, !noundef !14
  %i.v = and i64 %i.q, 63
  %i.w = shl nuw i64 1, %i.v
  %i.x = and i64 %i.u, %i.w
  %.not.i.i.i.i = icmp eq i64 %i.x, 0
  %i.y = add nuw i64 %i.n, 1                      ; 3 uses
  store i64 %i.y, ptr %2, align 8, !noalias !1260
  %i.z = add nuw nsw i64 %.sroa.0.0.i, 1          ; 4 uses
  br i1 %.not.i.i.i.i, label %bb.f, label %.preheader.i, !prof !17

.preheader.i:                                     ; preds = %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecRoE6retainNCINvXNtNtCsl6yn9iTqhmQ_2ph4fmph6keysetBx_INtBX_6KeySetBH_E24retain_keys_with_indicesNCINvMs1_NtBZ_8functionINtB2n_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBH_uBx_Es0_0NCB2g_s1_0NCB2g_s2_0NCB2g_s3_0E0E0Cs607s0NAIaWN_7segment.exit.i
  %i.aa = icmp samesign ult i64 %i.z, %i.b
  br i1 %i.aa, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !1258, !noalias !1259, !nonnull !14, !noundef !14 ; 3 uses
  br label %bb.g

bb.f:                                             ; preds = %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecRoE6retainNCINvXNtNtCsl6yn9iTqhmQ_2ph4fmph6keysetBx_INtBX_6KeySetBH_E24retain_keys_with_indicesNCINvMs1_NtBZ_8functionINtB2n_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBH_uBx_Es0_0NCB2g_s1_0NCB2g_s2_0NCB2g_s3_0E0E0Cs607s0NAIaWN_7segment.exit.i
  %i.ad = icmp eq i64 %i.z, %i.b
  br i1 %i.ad, label %_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecRoE10retain_mutNCINvB2_6retainNCINvXNtNtCsl6yn9iTqhmQ_2ph4fmph6keysetBv_INtB1f_6KeySetBF_E24retain_keys_with_indicesNCINvMs1_NtB1h_8functionINtB2G_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBF_uBv_Es0_0NCB2z_s1_0NCB2z_s2_0NCB2z_s3_0E0E0ECs607s0NAIaWN_7segment.exit, label %bb.b

._crit_edge.i:                                    ; preds = %bb.k, %.preheader.i
  %.sroa.13.0.lcssa.i = phi i64 [ %.sroa.0.0.i, %.preheader.i ], [ %.sroa.13.1.i, %bb.k ]
  store i64 %.sroa.13.0.lcssa.i, ptr %i.a, align 8, !alias.scope !1258, !noalias !1259
  br label %_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecRoE10retain_mutNCINvB2_6retainNCINvXNtNtCsl6yn9iTqhmQ_2ph4fmph6keysetBv_INtB1f_6KeySetBF_E24retain_keys_with_indicesNCINvMs1_NtB1h_8functionINtB2G_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBF_uBv_Es0_0NCB2z_s1_0NCB2z_s2_0NCB2z_s3_0E0E0ECs607s0NAIaWN_7segment.exit

bb.g:                                             ; preds = %bb.k, %.lr.ph.i
  %i.ae = phi i64 [ %i.y, %.lr.ph.i ], [ %i.av, %bb.k ] ; 4 uses
  %.sroa.7.078.i = phi i64 [ %i.z, %.lr.ph.i ], [ %.sroa.7.0.i, %bb.k ] ; 3 uses
  %.sroa.13.077.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i ], [ %.sroa.13.1.i, %bb.k ] ; 5 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.sroa.7.078.i ; 2 uses
  %i.ag = load i64, ptr %i.i, align 8, !noalias !1263, !noundef !14 ; 2 uses
  %i.ah = icmp ult i64 %i.ae, %i.ag
  br i1 %i.ah, label %bb.h, label %.invoke

bb.h:                                             ; preds = %bb.g
  %i.ai = load ptr, ptr %i.l, align 8, !noalias !1263, !nonnull !14, !noundef !14
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ae
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !1263, !noundef !14 ; 2 uses
  %i.al = lshr i64 %i.ak, 6                       ; 3 uses
  %i.am = icmp ult i64 %i.al, %i.k
  br i1 %i.am, label %bb.i, label %.invoke

.invoke:                                          ; preds = %bb.h, %bb.g
  %i.an = phi i64 [ %i.ae, %bb.g ], [ %i.al, %bb.h ]
  %i.ao = phi i64 [ %i.ag, %bb.g ], [ %i.k, %bb.h ]
  %i.ap = phi ptr [ @7, %bb.g ], [ @9, %bb.h ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.an, i64 noundef %i.ao, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap) #32
          to label %.cont unwind label %bb.l, !noalias !1260

.cont:                                            ; preds = %.invoke
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.al
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !1263, !noundef !14
  %i.as = and i64 %i.ak, 63
  %i.at = shl nuw i64 1, %i.as
  %i.au = and i64 %i.ar, %i.at
  %.not.i.i.i12.i = icmp eq i64 %i.au, 0
  %i.av = add nuw i64 %i.ae, 1                    ; 2 uses
  store i64 %i.av, ptr %2, align 8, !noalias !1260
  br i1 %.not.i.i.i12.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.sroa.13.077.i
  %i.ax = load i64, ptr %i.af, align 8, !noalias !1260
  store i64 %i.ax, ptr %i.aw, align 8, !noalias !1260
  %i.ay = add i64 %.sroa.13.077.i, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.13.1.i = phi i64 [ %i.ay, %bb.j ], [ %.sroa.13.077.i, %bb.i ] ; 2 uses
  %.sroa.7.0.i = add nuw nsw i64 %.sroa.7.078.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %.sroa.7.0.i, %i.b
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.g

bb.l:                                             ; preds = %.invoke
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = sub nuw nsw i64 %i.b, %.sroa.7.078.i    ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.sroa.13.077.i
  %i.bc = shl nuw nsw i64 %i.ba, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr nonnull align 8 %i.af, i64 %i.bc, i1 false), !noalias !1264
  %i.bd = add i64 %i.ba, %.sroa.13.077.i
  store i64 %i.bd, ptr %i.a, align 8, !alias.scope !1258, !noalias !1265
  resume { ptr, i32 } %i.az

_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecRoE10retain_mutNCINvB2_6retainNCINvXNtNtCsl6yn9iTqhmQ_2ph4fmph6keysetBv_INtB1f_6KeySetBF_E24retain_keys_with_indicesNCINvMs1_NtB1h_8functionINtB2G_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBF_uBv_Es0_0NCB2z_s1_0NCB2z_s2_0NCB2z_s3_0E0E0ECs607s0NAIaWN_7segment.exit: ; preds = %bb.f, %bb.a, %._crit_edge.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecRxE5drainINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECs607s0NAIaWN_7segment(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !14 ; 3 uses
  %i.c = icmp ult i64 %i.b, 1152921504606846976
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs607s0NAIaWN_7segment(i64 noundef %2, i64 noundef %3, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.j, ptr %i.m, align 8
  store ptr %i.i, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.o, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecRxE6retainNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtBY_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBF_uBv_Es4_0ECs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1293)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1294)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1293, !noalias !1294, !noundef !14 ; 6 uses
  %i.c = icmp ult i64 %i.b, 1152921504606846976
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecRxE10retain_mutNCINvB2_6retainNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB1i_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBF_uBv_Es4_0E0ECs607s0NAIaWN_7segment.exit, label %.preheader28.i

.preheader28.i:                                   ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !1293, !noalias !1294, !nonnull !14, !noundef !14 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !1295, !noalias !1293, !noundef !14 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !1295, !noalias !1293, !nonnull !14, !align !23, !noundef !14 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !noalias !1296, !noundef !14
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !1295, !noalias !1293, !nonnull !14, !align !22, !noundef !14 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !noalias !1296, !noundef !14
  %i.o = zext i32 %i.k to i64
  %i.p = xor i64 %i.o, -6884282663029611473
  %i.q = zext i64 %i.p to i128
  %i.r = load ptr, ptr %1, align 8, !alias.scope !1294, !noalias !1293, !nonnull !14, !align !22 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.preheader28.i
  %.sroa.0.0.i = phi i64 [ %i.aj, %bb.d ], [ 0, %.preheader28.i ] ; 4 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.0.0.i
  %.val11.i = load ptr, ptr %i.s, align 8, !alias.scope !1297, !noalias !1298, !nonnull !14, !align !22, !noundef !14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1299)
  %.val.i.i.i.i.i.i = load i64, ptr %.val11.i, align 8, !noalias !1300, !noundef !14 ; 2 uses
  %i.t = tail call i64 @llvm.fshl.i64(i64 %.val.i.i.i.i.i.i, i64 %.val.i.i.i.i.i.i, i64 32)
  %i.u = xor i64 %i.t, -1800455987208640293
  %i.v = zext i64 %i.u to i128
  %i.w = mul nuw i128 %i.v, %i.q                  ; 2 uses
  %i.x = lshr i128 %i.w, 64
  %.masked.i.i.i.i = and i128 %i.w, 18446744073709551615
  %i.y = xor i128 %i.x, %.masked.i.i.i.i
  %i.z = mul nuw i128 %i.y, 16952864883938283885  ; 2 uses
  %i.aa = lshr i128 %i.z, 64
  %i.ab = xor i128 %i.aa, %i.z
  %2 = trunc i128 %i.ab to i64
  %3 = tail call i64 @llvm.umulh.i64(i64 %2, i64 %i.n) ; 2 uses
  %i.ac = lshr i64 %3, 6                          ; 3 uses
  %i.ad = icmp ult i64 %i.ac, %i.h
  br i1 %i.ad, label %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecRxE6retainNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB10_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBH_uBx_Es4_0E0Cs607s0NAIaWN_7segment.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ac, i64 noundef %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #32, !noalias !1296
  unreachable

_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecRxE6retainNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB10_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBH_uBx_Es4_0E0Cs607s0NAIaWN_7segment.exit.i: ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ac
  %i.af = load i64, ptr %i.ae, align 8, !noalias !1296, !noundef !14
  %i.ag = and i64 %3, 63
  %i.ah = shl nuw i64 1, %i.ag
  %i.ai = and i64 %i.af, %i.ah
  %.not.i.i.i = icmp eq i64 %i.ai, 0
  %i.aj = add nuw nsw i64 %.sroa.0.0.i, 1         ; 4 uses
  br i1 %.not.i.i.i, label %bb.d, label %.preheader.i, !prof !17

.preheader.i:                                     ; preds = %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecRxE6retainNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB10_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBH_uBx_Es4_0E0Cs607s0NAIaWN_7segment.exit.i
  %i.ak = icmp samesign ult i64 %i.aj, %i.b
  br i1 %i.ak, label %.lr.ph.i, label %._crit_edge.i

bb.d:                                             ; preds = %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecRxE6retainNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB10_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBH_uBx_Es4_0E0Cs607s0NAIaWN_7segment.exit.i
  %i.al = icmp eq i64 %i.aj, %i.b
  br i1 %i.al, label %_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecRxE10retain_mutNCINvB2_6retainNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB1i_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBF_uBv_Es4_0E0ECs607s0NAIaWN_7segment.exit, label %bb.b

._crit_edge.i:                                    ; preds = %bb.h, %.preheader.i
  %.sroa.13.0.lcssa.i = phi i64 [ %.sroa.0.0.i, %.preheader.i ], [ %.sroa.13.1.i, %bb.h ]
  store i64 %.sroa.13.0.lcssa.i, ptr %i.a, align 8, !alias.scope !1293, !noalias !1294
  br label %_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecRxE10retain_mutNCINvB2_6retainNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB1i_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBF_uBv_Es4_0E0ECs607s0NAIaWN_7segment.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.h
  %.sroa.7.053.i = phi i64 [ %.sroa.7.0.i, %bb.h ], [ %i.aj, %.preheader.i ] ; 4 uses
  %.sroa.13.052.i = phi i64 [ %.sroa.13.1.i, %bb.h ], [ %.sroa.0.0.i, %.preheader.i ] ; 5 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.7.053.i
  %.val9.i = load ptr, ptr %i.am, align 8, !alias.scope !1297, !noalias !1298, !nonnull !14, !align !22, !noundef !14 ; 2 uses
  %i.an = load i32, ptr %i.j, align 4, !noalias !1301, !noundef !14
  %i.ao = load i64, ptr %i.m, align 8, !noalias !1301, !noundef !14
  %i.ap = zext i32 %i.an to i64
  %.val.i.i.i.i.i12.i = load i64, ptr %.val9.i, align 8, !noalias !1302, !noundef !14 ; 2 uses
  %i.aq = xor i64 %i.ap, -6884282663029611473
  %i.ar = tail call i64 @llvm.fshl.i64(i64 %.val.i.i.i.i.i12.i, i64 %.val.i.i.i.i.i12.i, i64 32)
  %i.as = xor i64 %i.ar, -1800455987208640293
  %i.at = zext i64 %i.aq to i128
  %i.au = zext i64 %i.as to i128
  %i.av = mul nuw i128 %i.au, %i.at               ; 2 uses
  %i.aw = lshr i128 %i.av, 64
  %.masked.i.i.i13.i = and i128 %i.av, 18446744073709551615
  %i.ax = xor i128 %i.aw, %.masked.i.i.i13.i
  %i.ay = mul nuw i128 %i.ax, 16952864883938283885 ; 2 uses
  %i.az = lshr i128 %i.ay, 64
  %i.ba = xor i128 %i.az, %i.ay
  %4 = trunc i128 %i.ba to i64
  %5 = tail call i64 @llvm.umulh.i64(i64 %4, i64 %i.ao) ; 2 uses
  %i.bb = lshr i64 %5, 6                          ; 3 uses
  %i.bc = icmp ult i64 %i.bb, %i.h
  %i.bd = ptrtoint ptr %.val9.i to i64
  br i1 %i.bc, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bb, i64 noundef %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #32
          to label %.noexc.i unwind label %bb.i, !noalias !1303

.noexc.i:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %.lr.ph.i
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.bb
  %i.bf = load i64, ptr %i.be, align 8, !noalias !1301, !noundef !14
  %i.bg = and i64 %5, 63
  %i.bh = shl nuw i64 1, %i.bg
  %i.bi = and i64 %i.bf, %i.bh
  %.not.i.i15.i = icmp eq i64 %i.bi, 0
  br i1 %.not.i.i15.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.13.052.i
  store i64 %i.bd, ptr %i.bj, align 8, !noalias !1303
  %i.bk = add i64 %.sroa.13.052.i, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.13.1.i = phi i64 [ %i.bk, %bb.g ], [ %.sroa.13.052.i, %bb.f ] ; 2 uses
  %.sroa.7.0.i = add nuw nsw i64 %.sroa.7.053.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %.sroa.7.0.i, %i.b
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.i:                                             ; preds = %bb.e
  %i.bl = landingpad { ptr, i32 }
          cleanup
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.7.053.i
  %i.bn = sub nuw nsw i64 %i.b, %.sroa.7.053.i    ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.13.052.i
  %i.bp = shl nuw nsw i64 %i.bn, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bo, ptr nonnull align 8 %i.bm, i64 %i.bp, i1 false), !noalias !1304
  %i.bq = add i64 %i.bn, %.sroa.13.052.i
  store i64 %i.bq, ptr %i.a, align 8, !alias.scope !1293, !noalias !1305
  resume { ptr, i32 } %i.bl

_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecRxE10retain_mutNCINvB2_6retainNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB1i_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBF_uBv_Es4_0E0ECs607s0NAIaWN_7segment.exit: ; preds = %bb.d, %bb.a, %._crit_edge.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecRxE6retainNCINvXNtNtCsl6yn9iTqhmQ_2ph4fmph6keysetBv_INtBV_6KeySetBF_E24retain_keys_with_indicesNCINvMs1_NtBX_8functionINtB2l_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBF_uBv_Es0_0NCB2e_s1_0NCB2e_s2_0NCB2e_s3_0E0ECs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1317)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1317, !noalias !1318, !noundef !14 ; 6 uses
  %i.c = icmp ult i64 %i.b, 1152921504606846976
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecRxE10retain_mutNCINvB2_6retainNCINvXNtNtCsl6yn9iTqhmQ_2ph4fmph6keysetBv_INtB1f_6KeySetBF_E24retain_keys_with_indicesNCINvMs1_NtB1h_8functionINtB2G_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBF_uBv_Es0_0NCB2z_s1_0NCB2z_s2_0NCB2z_s3_0E0E0ECs607s0NAIaWN_7segment.exit, label %.preheader26.i

.preheader26.i:                                   ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre.i = load i64, ptr %2, align 8, !noalias !1319 ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !alias.scope !1320, !noalias !1319, !nonnull !14, !align !22, !noundef !14 ; 2 uses
  %i.h = load ptr, ptr %i.f, align 8, !alias.scope !1320, !noalias !1319, !nonnull !14, !align !22, !noundef !14 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !noalias !1321, !noundef !14 ; 2 uses
  %i.k = load i64, ptr %i.e, align 8              ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.m = tail call i64 @llvm.usub.sat.i64(i64 %i.j, i64 %.pre.i)
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.preheader26.i
  %i.n = phi i64 [ %i.y, %bb.f ], [ %.pre.i, %.preheader26.i ] ; 3 uses
  %.sroa.0.0.i = phi i64 [ %i.z, %bb.f ], [ 0, %.preheader26.i ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1320)
  %exitcond.not = icmp eq i64 %.sroa.0.0.i, %i.m
  br i1 %exitcond.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.l, align 8, !noalias !1321, !nonnull !14, !noundef !14
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.n
  %i.q = load i64, ptr %i.p, align 8, !noalias !1321, !noundef !14 ; 2 uses
  %i.r = lshr i64 %i.q, 6                         ; 3 uses
  %i.s = icmp ult i64 %i.r, %i.k
  br i1 %i.s, label %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecRxE6retainNCINvXNtNtCsl6yn9iTqhmQ_2ph4fmph6keysetBx_INtBX_6KeySetBH_E24retain_keys_with_indicesNCINvMs1_NtBZ_8functionINtB2n_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBH_uBx_Es0_0NCB2g_s1_0NCB2g_s2_0NCB2g_s3_0E0E0Cs607s0NAIaWN_7segment.exit.i, label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.n, i64 noundef %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #32, !noalias !1321
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.r, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #32, !noalias !1321
  unreachable

_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecRxE6retainNCINvXNtNtCsl6yn9iTqhmQ_2ph4fmph6keysetBx_INtBX_6KeySetBH_E24retain_keys_with_indicesNCINvMs1_NtBZ_8functionINtB2n_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBH_uBx_Es0_0NCB2g_s1_0NCB2g_s2_0NCB2g_s3_0E0E0Cs607s0NAIaWN_7segment.exit.i: ; preds = %bb.c
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.r
  %i.u = load i64, ptr %i.t, align 8, !noalias !1321, !noundef !14
  %i.v = and i64 %i.q, 63
  %i.w = shl nuw i64 1, %i.v
  %i.x = and i64 %i.u, %i.w
  %.not.i.i.i.i = icmp eq i64 %i.x, 0
  %i.y = add nuw i64 %i.n, 1                      ; 3 uses
  store i64 %i.y, ptr %2, align 8, !noalias !1319
  %i.z = add nuw nsw i64 %.sroa.0.0.i, 1          ; 4 uses
  br i1 %.not.i.i.i.i, label %bb.f, label %.preheader.i, !prof !17

.preheader.i:                                     ; preds = %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecRxE6retainNCINvXNtNtCsl6yn9iTqhmQ_2ph4fmph6keysetBx_INtBX_6KeySetBH_E24retain_keys_with_indicesNCINvMs1_NtBZ_8functionINtB2n_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBH_uBx_Es0_0NCB2g_s1_0NCB2g_s2_0NCB2g_s3_0E0E0Cs607s0NAIaWN_7segment.exit.i
  %i.aa = icmp samesign ult i64 %i.z, %i.b
  br i1 %i.aa, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !1317, !noalias !1318, !nonnull !14, !noundef !14 ; 3 uses
  br label %bb.g

bb.f:                                             ; preds = %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecRxE6retainNCINvXNtNtCsl6yn9iTqhmQ_2ph4fmph6keysetBx_INtBX_6KeySetBH_E24retain_keys_with_indicesNCINvMs1_NtBZ_8functionINtB2n_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBH_uBx_Es0_0NCB2g_s1_0NCB2g_s2_0NCB2g_s3_0E0E0Cs607s0NAIaWN_7segment.exit.i
  %i.ad = icmp eq i64 %i.z, %i.b
  br i1 %i.ad, label %_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecRxE10retain_mutNCINvB2_6retainNCINvXNtNtCsl6yn9iTqhmQ_2ph4fmph6keysetBv_INtB1f_6KeySetBF_E24retain_keys_with_indicesNCINvMs1_NtB1h_8functionINtB2G_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBF_uBv_Es0_0NCB2z_s1_0NCB2z_s2_0NCB2z_s3_0E0E0ECs607s0NAIaWN_7segment.exit, label %bb.b

._crit_edge.i:                                    ; preds = %bb.k, %.preheader.i
  %.sroa.13.0.lcssa.i = phi i64 [ %.sroa.0.0.i, %.preheader.i ], [ %.sroa.13.1.i, %bb.k ]
  store i64 %.sroa.13.0.lcssa.i, ptr %i.a, align 8, !alias.scope !1317, !noalias !1318
  br label %_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecRxE10retain_mutNCINvB2_6retainNCINvXNtNtCsl6yn9iTqhmQ_2ph4fmph6keysetBv_INtB1f_6KeySetBF_E24retain_keys_with_indicesNCINvMs1_NtB1h_8functionINtB2G_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBF_uBv_Es0_0NCB2z_s1_0NCB2z_s2_0NCB2z_s3_0E0E0ECs607s0NAIaWN_7segment.exit

bb.g:                                             ; preds = %bb.k, %.lr.ph.i
  %i.ae = phi i64 [ %i.y, %.lr.ph.i ], [ %i.av, %bb.k ] ; 4 uses
  %.sroa.7.078.i = phi i64 [ %i.z, %.lr.ph.i ], [ %.sroa.7.0.i, %bb.k ] ; 3 uses
  %.sroa.13.077.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i ], [ %.sroa.13.1.i, %bb.k ] ; 5 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.sroa.7.078.i ; 2 uses
  %i.ag = load i64, ptr %i.i, align 8, !noalias !1322, !noundef !14 ; 2 uses
  %i.ah = icmp ult i64 %i.ae, %i.ag
  br i1 %i.ah, label %bb.h, label %.invoke

bb.h:                                             ; preds = %bb.g
  %i.ai = load ptr, ptr %i.l, align 8, !noalias !1322, !nonnull !14, !noundef !14
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ae
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !1322, !noundef !14 ; 2 uses
  %i.al = lshr i64 %i.ak, 6                       ; 3 uses
  %i.am = icmp ult i64 %i.al, %i.k
  br i1 %i.am, label %bb.i, label %.invoke

.invoke:                                          ; preds = %bb.h, %bb.g
  %i.an = phi i64 [ %i.ae, %bb.g ], [ %i.al, %bb.h ]
  %i.ao = phi i64 [ %i.ag, %bb.g ], [ %i.k, %bb.h ]
  %i.ap = phi ptr [ @7, %bb.g ], [ @9, %bb.h ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.an, i64 noundef %i.ao, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap) #32
          to label %.cont unwind label %bb.l, !noalias !1319

.cont:                                            ; preds = %.invoke
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.al
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !1322, !noundef !14
  %i.as = and i64 %i.ak, 63
  %i.at = shl nuw i64 1, %i.as
  %i.au = and i64 %i.ar, %i.at
  %.not.i.i.i12.i = icmp eq i64 %i.au, 0
  %i.av = add nuw i64 %i.ae, 1                    ; 2 uses
  store i64 %i.av, ptr %2, align 8, !noalias !1319
  br i1 %.not.i.i.i12.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.sroa.13.077.i
  %i.ax = load i64, ptr %i.af, align 8, !noalias !1319
  store i64 %i.ax, ptr %i.aw, align 8, !noalias !1319
  %i.ay = add i64 %.sroa.13.077.i, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.13.1.i = phi i64 [ %i.ay, %bb.j ], [ %.sroa.13.077.i, %bb.i ] ; 2 uses
  %.sroa.7.0.i = add nuw nsw i64 %.sroa.7.078.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %.sroa.7.0.i, %i.b
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.g

bb.l:                                             ; preds = %.invoke
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = sub nuw nsw i64 %i.b, %.sroa.7.078.i    ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.sroa.13.077.i
  %i.bc = shl nuw nsw i64 %i.ba, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr nonnull align 8 %i.af, i64 %i.bc, i1 false), !noalias !1323
  %i.bd = add i64 %i.ba, %.sroa.13.077.i
  store i64 %i.bd, ptr %i.a, align 8, !alias.scope !1317, !noalias !1324
  resume { ptr, i32 } %i.az

_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecRxE10retain_mutNCINvB2_6retainNCINvXNtNtCsl6yn9iTqhmQ_2ph4fmph6keysetBv_INtB1f_6KeySetBF_E24retain_keys_with_indicesNCINvMs1_NtB1h_8functionINtB2G_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBF_uBv_Es0_0NCB2z_s1_0NCB2z_s2_0NCB2z_s3_0E0E0ECs607s0NAIaWN_7segment.exit: ; preds = %bb.f, %bb.a, %._crit_edge.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTmRShEE6retainNCNvMs0_NtNtNtCs607s0NAIaWN_7segment5index10hnsw_index12point_scorerNtB11_19FilteredBytesScorer12score_points0EB17_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1332)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1332, !noalias !1333, !noundef !14 ; 6 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTmRShEE10retain_mutNCINvB2_6retainNCNvMs0_NtNtNtCs607s0NAIaWN_7segment5index10hnsw_index12point_scorerNtB1l_19FilteredBytesScorer12score_points0E0EB1r_.exit, label %.preheader24.i

.preheader24.i:                                   ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !1332, !noalias !1333, !nonnull !14, !noundef !14 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.preheader24.i
  %.sroa.0.0.i = phi i64 [ %i.i, %bb.c ], [ 0, %.preheader24.i ] ; 4 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.sroa.0.0.i
  %.val11.i = load i32, ptr %i.g, align 8, !noalias !1334, !noundef !14
  %i.h = tail call noundef zeroext i1 @_RNvMNtNtNtCs607s0NAIaWN_7segment5index10hnsw_index12point_scorerNtB2_13ScorerFilters12check_vector(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %1, i32 noundef %.val11.i), !noalias !1334
  %i.i = add nuw nsw i64 %.sroa.0.0.i, 1          ; 4 uses
  br i1 %i.h, label %bb.c, label %.preheader.i, !prof !17

end_hunk_0
begin_hunk_1_@_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterxENvYxINtNtB1f_7convert4IntoxE4intoExECs607s0NAIaWN_7segment
declare hidden void @_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterxENvYxINtNtB1f_7convert4IntoxE4intoExECs607s0NAIaWN_7segment(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i32, i32 } @_RNvXs0_NtCsgNzSnKyKfuE_6either8iteratorINtB7_6EitherINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6copied6CopiedINtNtNtBX_5slice4iter4ItermEENtNtCslmvYCXbQjWR_6common16bitpacking_links19PackedLinksIteratorENtNtNtBV_6traits8iterator8Iterator4nextCs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtCsgNzSnKyKfuE_6either8iteratorINtB7_6EitherINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6copied6CopiedINtNtNtBX_5slice4iter4ItermEENtNtCslmvYCXbQjWR_6common16bitpacking_links19PackedLinksIteratorENtNtNtBV_6traits8iterator8Iterator9size_hintCs607s0NAIaWN_7segment(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter6traits8iteratorQINtNtNtB9_8adapters10filter_map9FilterMapINtNtCslmvYCXbQjWR_6common14either_variant13EitherVariantINtNtBV_6filter6FilterINtNtNtB1A_12iterator_ext14stoppable_iter13StoppableIterINtCsgNzSnKyKfuE_6either6EitherIB3H_IB2r_IB2r_INtNtNtBb_3ops5range5RangemENCNvMNtNtCs607s0NAIaWN_7segment10id_tracker14point_mappingsNtB4X_13PointMappings13iter_internal0ENCNvB4W_27iter_internal_with_behavior0EIB3H_B4l_INtNtBV_10take_while9TakeWhileB4l_NCB6t_s_0EEEIB3H_IB2r_B4q_NCNvMNtNtB4Z_10compressed25compressed_point_mappingsNtB8g_23CompressedPointMappings13iter_internal0EIB2r_B4q_NCNvMs0_NtNtB4Z_15disk_id_tracker8mappingsINtBa4_15DiskMappingsRefNtNtNtB1A_12universal_io4mmap8MmapFileE13iter_internal0EEEENCNvXNtNtNtNtB51_5index20struct_payload_index9read_view18payload_index_readINtBc4_26StructPayloadIndexReadViewNtNtNtB51_15payload_storage20payload_storage_enum18PayloadStorageEnumNtNtNtB4Z_15id_tracker_base12tracker_enum13IdTrackerEnumNtNtNtB51_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtNtBc8_11field_index16field_index_base11field_index10FieldIndexENtNtBc8_18payload_index_base16PayloadIndexRead20iter_filtered_points0EIB2r_IB2N_IB3H_IB2r_INtNtBV_7flatten7FlattenINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtBjS_5boxed3BoxDNtB5_8Iteratorp4ItemmEL_EEENCINvMs0_NtBeU_18point_mappings_refINtBlt_20PointMappingsRefEnumBb0_E27filter_deferred_and_deletedBjn_E0EIB2r_Bjn_NCBlm_s_0EEENCBbZ_s1_0EIB2r_Bj8_NCBbZ_s2_0EIB2r_INtNtB2R_14on_final_count12OnFinalCountB2M_NCINvYB2M_NtNtNtB1A_7counter23iterator_hw_measurement24HwMeasurementIteratorExt20measure_hw_with_cellNCBbZ_s3_0E0ENCBbZ_s4_0EENCNvMNtNtNtB51_7segment9read_view8samplingINtBqM_15SegmentReadViewBeQ_Bda_BdJ_NtBqO_10VectorDataE31filtered_read_by_index_shuffled0EBkT_9size_hintB51_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter6traits8iteratorQINtNtNtB9_8adapters4fuse4FuseINtCsgNzSnKyKfuE_6either6EitherINtNtBV_6filter6FilterINtNtBV_10filter_map9FilterMapINtNtNtCslmvYCXbQjWR_6common12iterator_ext14stoppable_iter13StoppableIterINtNtNtNtCsG258MDvU3F_3std11collections4hash3set8IntoItermEENCNvMNtNtNtCs607s0NAIaWN_7segment7segment9read_view15formula_rescoreINtB4U_15SegmentReadViewNtNtNtNtB4Y_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumINtNtNtNtB4Y_5index20struct_payload_index9read_view26StructPayloadIndexReadViewNtNtNtB4Y_15payload_storage20payload_storage_enum18PayloadStorageEnumB6h_NtNtNtB4Y_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtNtB7w_11field_index16field_index_base11field_index10FieldIndexEB8G_NtB4W_10VectorDataE23do_rescore_with_formulas0_0ENCB4P_s1_0EB2a_EENtB5_8Iterator9size_hintB4Y_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter6traits8iteratorQINtNtNtB9_8adapters4fuse4FuseINtNtBV_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValuejENCNvMs8_B2w_NtB2w_13FacetResponse8top_hits0EENtB5_8Iterator9size_hintB2A_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter6traits8iteratorQINtNtNtB9_8adapters4fuse4FuseINtNtNtBb_5slice4iter4IterINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query14feedback_query12FeedbackItemINtNtCsexYYUdYSQU6_5alloc3vec3VecfEEEENtB5_8Iterator9size_hintB1S_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter6traits8iteratorQINtNtNtB9_8adapters4fuse4FuseINtNtNtBb_5slice4iter4IterINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query14feedback_query12FeedbackItemINtNtNtB1S_10data_types7vectors21TypedMultiDenseVectorfEEEENtB5_8Iterator9size_hintB1S_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter6traits8iteratorQINtNtNtB9_8adapters4fuse4FuseINtNtNtBb_5slice4iter4IterINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query14feedback_query12FeedbackItemNtNtNtCs4ByaKcm8ifS_6sparse6common13sparse_vector12SparseVectorEEENtB5_8Iterator9size_hintB1S_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter6traits8iteratorQINtNtNtB9_8adapters4fuse4FuseINtNtNtBb_5slice4iter4IterNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationEENtB5_8Iterator9size_hintB1P_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvXsY_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtCs9xXWl5j4IME_12quantization24ConditionalVariableStateEENtNtCskKLDkoKarTP_4core7default7Default7defaultCs607s0NAIaWN_7segment() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvXsY_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsG258MDvU3F_3std4sync6poison7condvar7CondvarENtNtCskKLDkoKarTP_4core7default7Default7defaultCs607s0NAIaWN_7segment() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i8 } @_RNvMs5_NtCs9XvERIT2X68_9itertools11groupbylazyINtB5_7ChunkByyINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTybEENCINvMs0_NtCslmvYCXbQjWR_6common15stored_bitsliceINtB1Z_14StoredBitSliceNtNtNtB21_12universal_io4mmap8MmapFileE24set_ascending_bits_batchBX_E0E4stepCs607s0NAIaWN_7segment(ptr noundef nonnull align 8, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i8 } @_RNvMs5_NtCs9XvERIT2X68_9itertools11groupbylazyINtB5_7ChunkByyINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIBY_INtNtB12_6filter6FilterINtNtB12_9enumerate9EnumerateINtNtNtB16_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types8GeoPointEEENCNvMNtNtNtNtNtB3H_5index11field_index9geo_index17on_disk_geo_index9lifecycleNtB4s_14OnDiskGeoIndex5builds1_0ENCB4n_s2_0ENCINvNtB4w_12deleted_mask24save_deleted_mask_formatB1L_Es_0ENCINvMs0_NtCslmvYCXbQjWR_6common15stored_bitsliceINtB7p_14StoredBitSliceNtNtNtB7r_12universal_io4mmap8MmapFileE24set_ascending_bits_batchBX_E0E4stepB3H_(ptr noundef nonnull align 8, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i8 } @_RNvMs5_NtCs9XvERIT2X68_9itertools11groupbylazyINtB5_7ChunkByyINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIBY_INtNtB12_6filter6FilterINtNtB12_9enumerate9EnumerateINtNtNtB16_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs9zPlAsQS9gd_4ecow6string9EcoStringEEENCNvMs_NtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index17on_disk_map_index9lifecycleINtB4t_14OnDiskMapIndexeE5builds3_0ENCB4m_s4_0ENCINvNtB4x_12deleted_mask24save_deleted_mask_formatB1L_Es_0ENCINvMs0_NtCslmvYCXbQjWR_6common15stored_bitsliceINtB7L_14StoredBitSliceNtNtNtB7N_12universal_io4mmap8MmapFileE24set_ascending_bits_batchBX_E0E4stepB4B_(ptr noundef nonnull align 8, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i8 } @_RNvMs5_NtCs9XvERIT2X68_9itertools11groupbylazyINtB5_7ChunkByyINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIBY_INtNtB12_6filter6FilterINtNtB12_9enumerate9EnumerateINtNtNtB16_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc3vec3VecdEEENCNvMNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index13numeric_index21on_disk_numeric_index9lifecycleINtB3O_18OnDiskNumericIndexdE5builds_0ENCB3J_s0_0ENCINvNtB3S_12deleted_mask24save_deleted_mask_formatB1L_Es_0ENCINvMs0_NtCslmvYCXbQjWR_6common15stored_bitsliceINtB7i_14StoredBitSliceNtNtNtB7k_12universal_io4mmap8MmapFileE24set_ascending_bits_batchBX_E0E4stepB3W_(ptr noundef nonnull align 8, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i8 } @_RNvMs5_NtCs9XvERIT2X68_9itertools11groupbylazyINtB5_7ChunkByyINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIBY_INtNtB12_6filter6FilterINtNtB12_9enumerate9EnumerateINtNtNtB16_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc3vec3VecoEEENCNvMs_NtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index17on_disk_map_index9lifecycleINtB3Q_14OnDiskMapIndexoE5builds3_0ENCB3J_s4_0ENCINvNtB3U_12deleted_mask24save_deleted_mask_formatB1L_Es_0ENCINvMs0_NtCslmvYCXbQjWR_6common15stored_bitsliceINtB78_14StoredBitSliceNtNtNtB7a_12universal_io4mmap8MmapFileE24set_ascending_bits_batchBX_E0E4stepB3Y_(ptr noundef nonnull align 8, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i8 } @_RNvMs5_NtCs9XvERIT2X68_9itertools11groupbylazyINtB5_7ChunkByyINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIBY_INtNtB12_6filter6FilterINtNtB12_9enumerate9EnumerateINtNtNtB16_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc3vec3VecxEEENCNvMNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index13numeric_index21on_disk_numeric_index9lifecycleINtB3O_18OnDiskNumericIndexxE5builds_0ENCB3J_s0_0ENCINvNtB3S_12deleted_mask24save_deleted_mask_formatB1L_Es_0ENCINvMs0_NtCslmvYCXbQjWR_6common15stored_bitsliceINtB7i_14StoredBitSliceNtNtNtB7k_12universal_io4mmap8MmapFileE24set_ascending_bits_batchBX_E0E4stepB3W_(ptr noundef nonnull align 8, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i8 } @_RNvMs5_NtCs9XvERIT2X68_9itertools11groupbylazyINtB5_7ChunkByyINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIBY_INtNtB12_6filter6FilterINtNtB12_9enumerate9EnumerateINtNtNtB16_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc3vec3VecxEEENCNvMs_NtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index17on_disk_map_index9lifecycleINtB3Q_14OnDiskMapIndexxE5builds3_0ENCB3J_s4_0ENCINvNtB3U_12deleted_mask24save_deleted_mask_formatB1L_Es_0ENCINvMs0_NtCslmvYCXbQjWR_6common15stored_bitsliceINtB78_14StoredBitSliceNtNtNtB7a_12universal_io4mmap8MmapFileE24set_ascending_bits_batchBX_E0E4stepB3Y_(ptr noundef nonnull align 8, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i8 } @_RNvMs5_NtCs9XvERIT2X68_9itertools11groupbylazyINtB5_7ChunkByyINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIBY_INtNtB12_6filter6FilterINtNtB12_9enumerate9EnumerateINtNtNtB16_5slice4iter4IterjEENCNvMs_NtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index22on_disk_inverted_indexNtB3g_19OnDiskInvertedIndex6creates_0ENCB3b_s0_0ENCINvNtB3m_12deleted_mask24save_deleted_mask_formatB1L_Es_0ENCINvMs0_NtCslmvYCXbQjWR_6common15stored_bitsliceINtB6U_14StoredBitSliceNtNtNtB6W_12universal_io4mmap8MmapFileE24set_ascending_bits_batchBX_E0E4stepB3q_(ptr noundef nonnull align 8, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i8 } @_RNvMs5_NtCs9XvERIT2X68_9itertools11groupbylazyINtB5_7ChunkByyINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB16_3ops5range5RangeyENCINvMNtNtNtCsawMg70ExlpE_9blobstore9blobstore9gridstore7bitmaskINtB2k_7BitmaskNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileE17mark_blocks_batchIBY_INtB5_5GroupmINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB2q_7tracker12ValuePointerENCNvMs_B2m_INtB2m_9GridstoreINtB54_3VecNtNtCs9zPlAsQS9gd_4ecow6string9EcoStringEB3v_E17flush_free_blocks0ENCB6k_s_0EE0ENCINvMs0_NtB3B_15stored_bitsliceINtB8m_14StoredBitSliceB3v_E24set_ascending_bits_batchBX_E0E4stepCs607s0NAIaWN_7segment(ptr noundef nonnull align 8, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i8 } @_RNvMs5_NtCs9XvERIT2X68_9itertools11groupbylazyINtB5_7ChunkByyINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB16_3ops5range5RangeyENCINvMNtNtNtCsawMg70ExlpE_9blobstore9blobstore9gridstore7bitmaskINtB2k_7BitmaskNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileE17mark_blocks_batchIBY_INtB5_5GroupmINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB2q_7tracker12ValuePointerENCNvMs_B2m_INtB2m_9GridstoreINtB54_3VecTddEEB3v_E17flush_free_blocks0ENCB6k_s_0EE0ENCINvMs0_NtB3B_15stored_bitsliceINtB7M_14StoredBitSliceB3v_E24set_ascending_bits_batchBX_E0E4stepCs607s0NAIaWN_7segment(ptr noundef nonnull align 8, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i8 } @_RNvMs5_NtCs9XvERIT2X68_9itertools11groupbylazyINtB5_7ChunkByyINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB16_3ops5range5RangeyENCINvMNtNtNtCsawMg70ExlpE_9blobstore9blobstore9gridstore7bitmaskINtB2k_7BitmaskNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileE17mark_blocks_batchIBY_INtB5_5GroupmINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB2q_7tracker12ValuePointerENCNvMs_B2m_INtB2m_9GridstoreINtB54_3VecdEB3v_E17flush_free_blocks0ENCB6k_s_0EE0ENCINvMs0_NtB3B_15stored_bitsliceINtB7J_14StoredBitSliceB3v_E24set_ascending_bits_batchBX_E0E4stepCs607s0NAIaWN_7segment(ptr noundef nonnull align 8, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i8 } @_RNvMs5_NtCs9XvERIT2X68_9itertools11groupbylazyINtB5_7ChunkByyINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB16_3ops5range5RangeyENCINvMNtNtNtCsawMg70ExlpE_9blobstore9blobstore9gridstore7bitmaskINtB2k_7BitmaskNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileE17mark_blocks_batchIBY_INtB5_5GroupmINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB2q_7tracker12ValuePointerENCNvMs_B2m_INtB2m_9GridstoreINtB54_3VechEB3v_E17flush_free_blocks0ENCB6k_s_0EE0ENCINvMs0_NtB3B_15stored_bitsliceINtB7J_14StoredBitSliceB3v_E24set_ascending_bits_batchBX_E0E4stepCs607s0NAIaWN_7segment(ptr noundef nonnull align 8, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i8 } @_RNvMs5_NtCs9XvERIT2X68_9itertools11groupbylazyINtB5_7ChunkByyINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB16_3ops5range5RangeyENCINvMNtNtNtCsawMg70ExlpE_9blobstore9blobstore9gridstore7bitmaskINtB2k_7BitmaskNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileE17mark_blocks_batchIBY_INtB5_5GroupmINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB2q_7tracker12ValuePointerENCNvMs_B2m_INtB2m_9GridstoreINtB54_3VecoEB3v_E17flush_free_blocks0ENCB6k_s_0EE0ENCINvMs0_NtB3B_15stored_bitsliceINtB7J_14StoredBitSliceB3v_E24set_ascending_bits_batchBX_E0E4stepCs607s0NAIaWN_7segment(ptr noundef nonnull align 8, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i8 } @_RNvMs5_NtCs9XvERIT2X68_9itertools11groupbylazyINtB5_7ChunkByyINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB16_3ops5range5RangeyENCINvMNtNtNtCsawMg70ExlpE_9blobstore9blobstore9gridstore7bitmaskINtB2k_7BitmaskNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileE17mark_blocks_batchIBY_INtB5_5GroupmINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB2q_7tracker12ValuePointerENCNvMs_B2m_INtB2m_9GridstoreINtB54_3VecxEB3v_E17flush_free_blocks0ENCB6k_s_0EE0ENCINvMs0_NtB3B_15stored_bitsliceINtB7J_14StoredBitSliceB3v_E24set_ascending_bits_batchBX_E0E4stepCs607s0NAIaWN_7segment(ptr noundef nonnull align 8, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i8 } @_RNvMs5_NtCs9XvERIT2X68_9itertools11groupbylazyINtB5_7ChunkByyINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB16_3ops5range5RangeyENCINvMNtNtNtCsawMg70ExlpE_9blobstore9blobstore9gridstore7bitmaskINtB2k_7BitmaskNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileE17mark_blocks_batchIBY_INtB5_5GroupmINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB2q_7tracker12ValuePointerENCNvMs_B2m_INtB2m_9GridstoreNtNtCs607s0NAIaWN_7segment5types7PayloadB3v_E17flush_free_blocks0ENCB6k_s_0EE0ENCINvMs0_NtB3B_15stored_bitsliceINtB8a_14StoredBitSliceB3v_E24set_ascending_bits_batchBX_E0E4stepB6O_(ptr noundef nonnull align 8, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i8 } @_RNvMs5_NtCs9XvERIT2X68_9itertools11groupbylazyINtB5_7ChunkByyINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB16_3ops5range5RangeyENCINvMNtNtNtCsawMg70ExlpE_9blobstore9blobstore9gridstore7bitmaskINtB2k_7BitmaskNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileE17mark_blocks_batchIBY_INtB5_5GroupmINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB2q_7tracker12ValuePointerENCNvMs_B2m_INtB2m_9GridstoreNtNtNtNtCs607s0NAIaWN_7segment14vector_storage6sparse21stored_sparse_vectors18StoredSparseVectorB3v_E17flush_free_blocks0ENCB6k_s_0EE0ENCINvMs0_NtB3B_15stored_bitsliceINtB94_14StoredBitSliceB3v_E24set_ascending_bits_batchBX_E0E4stepB6S_(ptr noundef nonnull align 8, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i8 } @_RNvMs5_NtCs9XvERIT2X68_9itertools11groupbylazyINtB5_7ChunkByyINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB16_3ops5range5RangeyENCINvMNtNtNtCsawMg70ExlpE_9blobstore9blobstore9gridstore7bitmaskINtB2k_7BitmaskNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileE17mark_blocks_batchINtNtNtB14_7sources4once4OnceIB1M_jEEE0ENCINvMs0_NtB3B_15stored_bitsliceINtB5v_14StoredBitSliceB3v_E24set_ascending_bits_batchBX_E0E4stepCs607s0NAIaWN_7segment(ptr noundef nonnull align 8, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i8 } @_RNvMs5_NtCs9XvERIT2X68_9itertools11groupbylazyINtB5_7ChunkByyINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB16_3ops5range5RangeyENCINvMNtNtNtCsawMg70ExlpE_9blobstore9blobstore9gridstore7bitmaskINtB2k_7BitmaskNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileE17mark_blocks_batchIBY_INtB5_5GroupmINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB2q_7tracker12ValuePointerENCNvMs_B2m_INtB2m_9GridstoreNtNtCs607s0NAIaWN_7segment5types7PayloadB3v_E17flush_free_blocks0ENCB6s_s_0EE0ENCINvMs0_NtB3B_15stored_bitsliceINtB8i_14StoredBitSliceB3v_E24set_ascending_bits_batchBX_E0E4stepB6W_(ptr noundef nonnull align 8, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i8 } @_RNvMs5_NtCs9XvERIT2X68_9itertools11groupbylazyINtB5_7ChunkByyINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB16_3ops5range5RangeyENCINvMNtNtNtCsawMg70ExlpE_9blobstore9blobstore9gridstore7bitmaskINtB2k_7BitmaskNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileE17mark_blocks_batchINtNtNtB14_7sources4once4OnceIB1M_jEEE0ENCINvMs0_NtB3B_15stored_bitsliceINtB5D_14StoredBitSliceB3v_E24set_ascending_bits_batchBX_E0E4stepCs607s0NAIaWN_7segment(ptr noundef nonnull align 8, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs6_NtCsexYYUdYSQU6_5alloc5sliceSfINtB5_16SpecCloneIntoVecfNtNtB7_5alloc6GlobalE10clone_intoCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef range(i64 0, 2305843009213693952), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtCshqfBqtY9aGF_8indexmap3mapINtB2_8IndexMapNtNtCsexYYUdYSQU6_5alloc6string6StringuINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCsbojlWnkViqs_3fnv9FnvHasherEENtNtB1s_5clone5Clone5cloneCs607s0NAIaWN_7segment(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtCshqfBqtY9aGF_8indexmap3mapINtB2_8IndexMapxuINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCsbojlWnkViqs_3fnv9FnvHasherEENtNtBR_5clone5Clone5cloneCs607s0NAIaWN_7segment(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxNtNtCs607s0NAIaWN_7segment5types14FieldConditionE13new_uninit_inBK_() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxNtNtNtNtNtCs607s0NAIaWN_7segment5index18query_optimization15rescore_formula14parsed_formula16ParsedExpressionE13new_uninit_inBQ_() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsa_NtCsdCHLdnX9EvW_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTmNtNtCs3C4XC8ddIYI_9vaporetto9predictor12WeightVectorENtNtNtNtCsbj58KTtSLUn_14allocator_api26stable5alloc6global6GlobalECs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsa_NtCsjpNT60X9mgn_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtB8_5alloc5inner6GlobalECs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECs607s0NAIaWN_7segment(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4ItermuENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtCsexYYUdYSQU6_5alloc6borrowINtB5_3CowSfENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs607s0NAIaWN_7segment(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtCsexYYUdYSQU6_5alloc6borrowINtB5_3CowNtNtNtCs4ByaKcm8ifS_6sparse6common13sparse_vector12SparseVectorENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs607s0NAIaWN_7segment(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsE_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValueuEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextBZ_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 16 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCskKLDkoKarTP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsr_NtCskKLDkoKarTP_4core3fmtSNtCsadazKHFPhDw_11serde_value5ValueNtB5_5Debug3fmtCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 288230376151711744), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsr_NtCskKLDkoKarTP_4core3fmtSNtNtCsexYYUdYSQU6_5alloc6string6StringNtB5_5Debug3fmtCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 384307168202282326), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsr_NtCskKLDkoKarTP_4core3fmtSNtNtCs607s0NAIaWN_7segment9json_path12JsonPathItemNtB5_5Debug3fmtBz_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 384307168202282326), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsr_NtCskKLDkoKarTP_4core3fmtSNtNtCseUPaKcRZYeZ_4half8binary163f16NtB5_5Debug3fmtCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance), i64 noundef range(i64 0, 4611686018427387904), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsr_NtCskKLDkoKarTP_4core3fmtSNtNtNtCs4ByaKcm8ifS_6sparse6common5types11QuantizedU8NtB5_5Debug3fmtCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsr_NtCskKLDkoKarTP_4core3fmtSNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker6change13MappingChangeNtB5_5Debug3fmtBD_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 288230376151711744), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsr_NtCskKLDkoKarTP_4core3fmtSfNtB5_5Debug3fmtCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef range(i64 0, 2305843009213693952), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsr_NtCskKLDkoKarTP_4core3fmtShNtB5_5Debug3fmtCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsr_NtCskKLDkoKarTP_4core3fmtSyNtB5_5Debug3fmtCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 1152921504606846976), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsm_NtCskKLDkoKarTP_4core5arrayAuj3_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitTINtNtCsexYYUdYSQU6_5alloc6borrow3CoweENtNtNtCs607s0NAIaWN_7segment10data_types13named_vectors9CowVectorEENCINvMBN_BK_10wrap_mut_1uNCNvXNtNtCs3Sd3Uuv2szn_7tinyvec5array18const_generic_implAB1r_Bz_NtB3F_5Array7default0E0EB2a_(ptr dead_on_unwind noalias nofree noundef writable sret([216 x i8]) align 8 captures(address) dereferenceable(216)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell10UnsafeCellINtNtCs8EjlWUFl8r5_9rand_core5block8BlockRngNtNtNtCsdS7EUc5kOLy_4rand4rngs6thread13ReseedingCoreEEE9drop_slowB26_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #25

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtCs9zPlAsQS9gd_4ecow6string9EcoStringINtNtCsexYYUdYSQU6_5alloc3vec3VecmEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringmENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterjNtNtNtNtCs607s0NAIaWN_7segment14vector_storage11multi_dense42appendable_mmap_multi_dense_vector_storage21MultivectorMmapOffsetENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextBT_(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterjbENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4ItermbENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4ItermyENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IteroINtNtCsexYYUdYSQU6_5alloc3vec3VecmEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterxINtNtCsexYYUdYSQU6_5alloc3vec3VecmEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { double, double } @_RNvMs1_NtCsexYYUdYSQU6_5alloc6borrowINtB5_3CowNtNtCs607s0NAIaWN_7segment5types8GeoPointE10into_ownedBM_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtCsgNzSnKyKfuE_6either8iteratorINtB7_6EitherINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter6FilterINtNtBT_10filter_map9FilterMapINtNtNtCslmvYCXbQjWR_6common12iterator_ext14stoppable_iter13StoppableIterINtNtNtNtCsG258MDvU3F_3std11collections4hash3set8IntoItermEENCNvMNtNtNtCs607s0NAIaWN_7segment7segment9read_view15formula_rescoreINtB4s_15SegmentReadViewNtNtNtNtB4w_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumINtNtNtNtB4w_5index20struct_payload_index9read_view26StructPayloadIndexReadViewNtNtNtB4w_15payload_storage20payload_storage_enum18PayloadStorageEnumB5P_NtNtNtB4w_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtNtB74_11field_index16field_index_base11field_index10FieldIndexEB8e_NtB4u_10VectorDataE23do_rescore_with_formulas0_0ENCB4n_s1_0EB1I_ENtNtNtBV_6traits8iterator8Iterator4nextB4w_(ptr dead_on_unwind noalias nofree noundef writable sret([12 x i8]) align 4 captures(address) dereferenceable(12), ptr noalias nofree noundef align 8 dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtCsexYYUdYSQU6_5alloc6borrowINtB5_3CoweENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs607s0NAIaWN_7segment(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umulh.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #17

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { norecurse nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #20 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #29 = { cold noreturn nounwind }
attributes #30 = { cold }
attributes #31 = { inlinehint }
attributes #32 = { noinline noreturn }
attributes #33 = { noinline }
attributes #34 = { nounwind }
attributes #35 = { "function-inline-cost-multiplier"="2" }
attributes #36 = { cold "function-inline-cost-multiplier"="2" }
attributes #37 = { noreturn }

!llvm.module.flags = !{!10, !11, !12}
!llvm.ident = !{!13}

!0 = distinct !{ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs8O45qwFIwQX_10serde_json5value5ValueEECs607s0NAIaWN_7segment, null, ptr @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs8O45qwFIwQX_10serde_json5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment}
!1 = distinct !{null}
!2 = distinct !{null}
!3 = distinct !{ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCscr48XpBcNGU_8schemars6schema6SchemaEECs607s0NAIaWN_7segment, null}
!4 = distinct !{null}
!5 = distinct !{null, ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCshqfBqtY9aGF_8indexmap6BucketNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueEECs607s0NAIaWN_7segment}
!6 = distinct !{ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCscr48XpBcNGU_8schemars6schema15ArrayValidationEEECs607s0NAIaWN_7segment, null}
!7 = distinct !{!7, !"_RNvXsU_NtNtCskKLDkoKarTP_4core3cmp5implsjNtB7_10PartialOrd2lt"}
!8 = distinct !{!8, !7, !"_RNvXsU_NtNtCskKLDkoKarTP_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 0"}
!9 = distinct !{!9, !7, !"_RNvXsU_NtNtCskKLDkoKarTP_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 1"}
!10 = !{i32 8, !"PIC Level", i32 2}
!11 = !{i32 2, !"RtLibUseGOT", i32 1}
!12 = !{i32 7, !"uwtable", i32 2}
!13 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!14 = !{}
!15 = !{i64 0, i64 -9223372036854775808}
!16 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!17 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = !{i64 -1, i64 -9223372036854775808}
!20 = !{i64 0, i64 3}
!21 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!22 = !{i64 8}
!23 = !{i64 4}
!24 = !{i64 0, i64 2}
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = !{!"llvm.loop.unroll.runtime.disable"}
!27 = !{i8 -1, i8 3}
!28 = !{i8 0, i8 3}
!29 = !{i64 1, i64 536870913}
!30 = !{i64 0, i64 -9223372036854775803}
!31 = !{i64 -2, i64 -9223372036854775808}
!32 = !{ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types9ConditionEEB1c_}
!33 = !{ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs8O45qwFIwQX_10serde_json5value5ValueEECs607s0NAIaWN_7segment}
!34 = !{i64 -1, i64 -9223372036854775803}
!35 = !{i64 -1, i64 7}
!36 = !{i64 0, i64 -9223372036854775806}
!37 = !{i64 -1, i64 3}
!38 = !{i64 -1, i64 6}
!39 = !{i8 -1, i8 22}
!40 = !{ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCs4NSHK7GLW4I_10serde_core7private7content7ContentBC_EECs607s0NAIaWN_7segment}
!41 = !{i64 0, i64 -9223372036854775793}
!42 = !{i64 0, i64 -9223372036854775804}
!43 = !{i64 0, i64 -9223372036854775805}
!44 = !{i64 -4, i64 4}
!45 = !{i64 -3, i64 -9223372036854775808}
!46 = !{i64 -1, i64 -9223372036854775804}
!47 = !{i64 -2, i64 -9223372036854775794}
!48 = !{i64 -2, i64 22}
!49 = !{i32 0, i32 2}
!50 = !{i8 0, i8 4}
!51 = !{i64 0, i64 10}
!52 = !{i64 0, i64 -9223372036854775794}
!53 = !{i64 -1, i64 -9223372036854775805}
!54 = !{i64 -1, i64 -9223372036854775806}
!55 = !{!"llvm.loop.peeled.count", i32 1}
!56 = !{i64 0, i64 -9223372036854775807}
!57 = !{!"branch_weights", !"expected", i32 1717127, i32 2145766521}
!58 = !{!"branch_weights", i32 4, i32 12}
!59 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!60 = !{i8 0, i8 2}
!61 = !{i128 0, i128 2}
!62 = !{i32 0, i32 3}
!63 = !{i64 -1, i64 -9223372036854775807}
!64 = !{i64 -3, i64 4}
!65 = !{!"branch_weights", i32 1073205, i32 2146410443}
!66 = !{!"branch_weights", !"expected", i32 4292820, i32 2143190828}
!67 = !{!"branch_weights", !"expected", i32 1431179, i32 2146052469}
!68 = !{!"address", !"read_provenance"}
!69 = !{ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCscr48XpBcNGU_8schemars6schema15ArrayValidationEEECs607s0NAIaWN_7segment}
!70 = !{!"branch_weights", !"expected", i32 1717128, i32 2145766520}
!71 = !{!"branch_weights", !"expected", i32 1430940, i32 2146052708}
!72 = !{!8}
!73 = !{!9}
!74 = distinct !{!74, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecIBv_INtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCs607s0NAIaWN_7segment5index10hnsw_index15links_container14LinksContainerEEE8truncateB2n_"}
!75 = distinct !{!75, !74, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecIBv_INtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCs607s0NAIaWN_7segment5index10hnsw_index15links_container14LinksContainerEEE8truncateB2n_: argument 0"}
!76 = distinct !{!76, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecIBx_INtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCs607s0NAIaWN_7segment5index10hnsw_index15links_container14LinksContainerEEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters4take4TakeINtNtNtB40_7sources11repeat_with10RepeatWithNvMB6_BG_3newEEEB2p_"}
!77 = distinct !{!77, !76, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecIBx_INtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCs607s0NAIaWN_7segment5index10hnsw_index15links_container14LinksContainerEEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters4take4TakeINtNtNtB40_7sources11repeat_with10RepeatWithNvMB6_BG_3newEEEB2p_: argument 0"}
!78 = distinct !{!78, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecIBv_INtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCs607s0NAIaWN_7segment5index10hnsw_index15links_container14LinksContainerEEE7reserveB2n_"}
!79 = distinct !{!79, !78, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecIBv_INtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCs607s0NAIaWN_7segment5index10hnsw_index15links_container14LinksContainerEEE7reserveB2n_: argument 0"}
!80 = distinct !{!80, !"_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB5_4TakeINtNtNtB9_7sources11repeat_with10RepeatWithNvMNtCsexYYUdYSQU6_5alloc3vecINtB1I_3VecINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCs607s0NAIaWN_7segment5index10hnsw_index15links_container14LinksContainerEE3newEENtNtNtB9_6traits8iterator8Iterator8for_eachNCINvMsk_B1I_IB29_B28_E14extend_trustedBN_E0EB3Y_"}
!81 = distinct !{!81, !80, !"_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB5_4TakeINtNtNtB9_7sources11repeat_with10RepeatWithNvMNtCsexYYUdYSQU6_5alloc3vecINtB1I_3VecINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCs607s0NAIaWN_7segment5index10hnsw_index15links_container14LinksContainerEE3newEENtNtNtB9_6traits8iterator8Iterator8for_eachNCINvMsk_B1I_IB29_B28_E14extend_trustedBN_E0EB3Y_: argument 0"}
!82 = distinct !{!82, !"_RINvXs7_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB6_4TakeINtNtNtBa_7sources11repeat_with10RepeatWithNvMNtCsexYYUdYSQU6_5alloc3vecINtB1J_3VecINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCs607s0NAIaWN_7segment5index10hnsw_index15links_container14LinksContainerEE3newEENtB6_8SpecTake13spec_for_eachNCINvMsk_B1J_IB2a_B29_E14extend_trustedBO_E0EB3Z_"}
!83 = distinct !{!83, !82, !"_RINvXs7_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB6_4TakeINtNtNtBa_7sources11repeat_with10RepeatWithNvMNtCsexYYUdYSQU6_5alloc3vecINtB1J_3VecINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCs607s0NAIaWN_7segment5index10hnsw_index15links_container14LinksContainerEE3newEENtB6_8SpecTake13spec_for_eachNCINvMsk_B1J_IB2a_B29_E14extend_trustedBO_E0EB3Z_: argument 0"}
!84 = distinct !{!84, !"_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter7sources11repeat_withINtB5_10RepeatWithNvMNtCsexYYUdYSQU6_5alloc3vecINtB1f_3VecINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCs607s0NAIaWN_7segment5index10hnsw_index15links_container14LinksContainerEE3newENtNtNtB9_6traits8iterator8Iterator8try_foldjNCINvNvXs7_NtNtB9_8adapters4takeINtB5G_4TakepENtB5G_8SpecTake13spec_for_each5checkB1F_NCINvMsk_B1f_IB1G_B1F_E14extend_trustedIB62_BU_EE0E0INtNtBb_6option6OptionjEEB3v_"}
!85 = distinct !{!85, !84, !"_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter7sources11repeat_withINtB5_10RepeatWithNvMNtCsexYYUdYSQU6_5alloc3vecINtB1f_3VecINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCs607s0NAIaWN_7segment5index10hnsw_index15links_container14LinksContainerEE3newENtNtNtB9_6traits8iterator8Iterator8try_foldjNCINvNvXs7_NtNtB9_8adapters4takeINtB5G_4TakepENtB5G_8SpecTake13spec_for_each5checkB1F_NCINvMsk_B1f_IB1G_B1F_E14extend_trustedIB62_BU_EE0E0INtNtBb_6option6OptionjEEB3v_: argument 0"}
!86 = distinct !{!86, !"_RNCINvNvXs7_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCs607s0NAIaWN_7segment5index10hnsw_index15links_container14LinksContainerEENCINvMsk_B1H_IB1F_B1E_E14extend_trustedIBT_INtNtNtBe_7sources11repeat_with10RepeatWithNvMB1H_B1E_3newEEE0E0B3Q_"}
!87 = distinct !{!87, !86, !"_RNCINvNvXs7_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCs607s0NAIaWN_7segment5index10hnsw_index15links_container14LinksContainerEENCINvMsk_B1H_IB1F_B1E_E14extend_trustedIBT_INtNtNtBe_7sources11repeat_with10RepeatWithNvMB1H_B1E_3newEEE0E0B3Q_: argument 0"}
!88 = distinct !{!88, !"_RNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB8_3VecIBz_INtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCs607s0NAIaWN_7segment5index10hnsw_index15links_container14LinksContainerEEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters4take4TakeINtNtNtB42_7sources11repeat_with10RepeatWithNvMB8_BI_3newEEE0B2r_"}
!89 = distinct !{!89, !88, !"_RNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB8_3VecIBz_INtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCs607s0NAIaWN_7segment5index10hnsw_index15links_container14LinksContainerEEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters4take4TakeINtNtNtB42_7sources11repeat_with10RepeatWithNvMB8_BI_3newEEE0B2r_: argument 0"}
!90 = !{!75}
!91 = !{!79, !77}
!92 = !{!77}
!93 = !{!89, !87, !85, !83, !81}
!94 = !{!83, !81}
!95 = distinct !{!95, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecIBv_NtNtCs607s0NAIaWN_7segment5types8GeoPointEE8truncateBM_"}
!96 = distinct !{!96, !95, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecIBv_NtNtCs607s0NAIaWN_7segment5types8GeoPointEE8truncateBM_: argument 0"}
!97 = distinct !{!97, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecIBx_NtNtCs607s0NAIaWN_7segment5types8GeoPointEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters4take4TakeINtNtNtB1O_7sources11repeat_with10RepeatWithNvMB6_BG_3newEEEBO_"}
!98 = distinct !{!98, !97, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecIBx_NtNtCs607s0NAIaWN_7segment5types8GeoPointEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters4take4TakeINtNtNtB1O_7sources11repeat_with10RepeatWithNvMB6_BG_3newEEEBO_: argument 0"}
!99 = distinct !{!99, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecIBv_NtNtCs607s0NAIaWN_7segment5types8GeoPointEE7reserveBM_"}
!100 = distinct !{!100, !99, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecIBv_NtNtCs607s0NAIaWN_7segment5types8GeoPointEE7reserveBM_: argument 0"}
!101 = distinct !{!101, !"_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB5_4TakeINtNtNtB9_7sources11repeat_with10RepeatWithNvMNtCsexYYUdYSQU6_5alloc3vecINtB1I_3VecNtNtCs607s0NAIaWN_7segment5types8GeoPointE3newEENtNtNtB9_6traits8iterator8Iterator8for_eachNCINvMsk_B1I_IB29_B28_E14extend_trustedBN_E0EB2n_"}
!102 = distinct !{!102, !101, !"_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB5_4TakeINtNtNtB9_7sources11repeat_with10RepeatWithNvMNtCsexYYUdYSQU6_5alloc3vecINtB1I_3VecNtNtCs607s0NAIaWN_7segment5types8GeoPointE3newEENtNtNtB9_6traits8iterator8Iterator8for_eachNCINvMsk_B1I_IB29_B28_E14extend_trustedBN_E0EB2n_: argument 0"}
!103 = distinct !{!103, !"_RINvXs7_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB6_4TakeINtNtNtBa_7sources11repeat_with10RepeatWithNvMNtCsexYYUdYSQU6_5alloc3vecINtB1J_3VecNtNtCs607s0NAIaWN_7segment5types8GeoPointE3newEENtB6_8SpecTake13spec_for_eachNCINvMsk_B1J_IB2a_B29_E14extend_trustedBO_E0EB2o_"}
!104 = distinct !{!104, !103, !"_RINvXs7_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB6_4TakeINtNtNtBa_7sources11repeat_with10RepeatWithNvMNtCsexYYUdYSQU6_5alloc3vecINtB1J_3VecNtNtCs607s0NAIaWN_7segment5types8GeoPointE3newEENtB6_8SpecTake13spec_for_eachNCINvMsk_B1J_IB2a_B29_E14extend_trustedBO_E0EB2o_: argument 0"}
!105 = distinct !{!105, !"_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter7sources11repeat_withINtB5_10RepeatWithNvMNtCsexYYUdYSQU6_5alloc3vecINtB1f_3VecNtNtCs607s0NAIaWN_7segment5types8GeoPointE3newENtNtNtB9_6traits8iterator8Iterator8try_foldjNCINvNvXs7_NtNtB9_8adapters4takeINtB3u_4TakepENtB3u_8SpecTake13spec_for_each5checkB1F_NCINvMsk_B1f_IB1G_B1F_E14extend_trustedIB3Q_BU_EE0E0INtNtBb_6option6OptionjEEB1U_"}
!106 = distinct !{!106, !105, !"_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter7sources11repeat_withINtB5_10RepeatWithNvMNtCsexYYUdYSQU6_5alloc3vecINtB1f_3VecNtNtCs607s0NAIaWN_7segment5types8GeoPointE3newENtNtNtB9_6traits8iterator8Iterator8try_foldjNCINvNvXs7_NtNtB9_8adapters4takeINtB3u_4TakepENtB3u_8SpecTake13spec_for_each5checkB1F_NCINvMsk_B1f_IB1G_B1F_E14extend_trustedIB3Q_BU_EE0E0INtNtBb_6option6OptionjEEB1U_: argument 0"}
!107 = distinct !{!107, !"_RNCINvNvXs7_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types8GeoPointENCINvMsk_B1H_IB1F_B1E_E14extend_trustedIBT_INtNtNtBe_7sources11repeat_with10RepeatWithNvMB1H_B1E_3newEEE0E0B2f_"}
!108 = distinct !{!108, !107, !"_RNCINvNvXs7_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types8GeoPointENCINvMsk_B1H_IB1F_B1E_E14extend_trustedIBT_INtNtNtBe_7sources11repeat_with10RepeatWithNvMB1H_B1E_3newEEE0E0B2f_: argument 0"}
!109 = distinct !{!109, !"_RNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB8_3VecIBz_NtNtCs607s0NAIaWN_7segment5types8GeoPointEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters4take4TakeINtNtNtB1Q_7sources11repeat_with10RepeatWithNvMB8_BI_3newEEE0BQ_"}
!110 = distinct !{!110, !109, !"_RNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB8_3VecIBz_NtNtCs607s0NAIaWN_7segment5types8GeoPointEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters4take4TakeINtNtNtB1Q_7sources11repeat_with10RepeatWithNvMB8_BI_3newEEE0BQ_: argument 0"}
!111 = !{!96}
!112 = !{!100, !98}
!113 = !{!98}
!114 = !{!110, !108, !106, !104, !102}
!115 = !{!104, !102}
!116 = distinct !{!116, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecIBv_NtNtCs9zPlAsQS9gd_4ecow6string9EcoStringEE8truncateCs607s0NAIaWN_7segment"}
!117 = distinct !{!117, !116, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecIBv_NtNtCs9zPlAsQS9gd_4ecow6string9EcoStringEE8truncateCs607s0NAIaWN_7segment: argument 0"}
!118 = distinct !{!118, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecIBx_NtNtCs9zPlAsQS9gd_4ecow6string9EcoStringEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters4take4TakeINtNtNtB1N_7sources11repeat_with10RepeatWithNvMB6_BG_3newEEECs607s0NAIaWN_7segment"}
!119 = distinct !{!119, !118, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecIBx_NtNtCs9zPlAsQS9gd_4ecow6string9EcoStringEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters4take4TakeINtNtNtB1N_7sources11repeat_with10RepeatWithNvMB6_BG_3newEEECs607s0NAIaWN_7segment: argument 0"}
!120 = distinct !{!120, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecIBv_NtNtCs9zPlAsQS9gd_4ecow6string9EcoStringEE7reserveCs607s0NAIaWN_7segment"}
!121 = distinct !{!121, !120, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecIBv_NtNtCs9zPlAsQS9gd_4ecow6string9EcoStringEE7reserveCs607s0NAIaWN_7segment: argument 0"}
!122 = distinct !{!122, !"_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB5_4TakeINtNtNtB9_7sources11repeat_with10RepeatWithNvMNtCsexYYUdYSQU6_5alloc3vecINtB1I_3VecNtNtCs9zPlAsQS9gd_4ecow6string9EcoStringE3newEENtNtNtB9_6traits8iterator8Iterator8for_eachNCINvMsk_B1I_IB29_B28_E14extend_trustedBN_E0ECs607s0NAIaWN_7segment"}
!123 = distinct !{!123, !122, !"_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB5_4TakeINtNtNtB9_7sources11repeat_with10RepeatWithNvMNtCsexYYUdYSQU6_5alloc3vecINtB1I_3VecNtNtCs9zPlAsQS9gd_4ecow6string9EcoStringE3newEENtNtNtB9_6traits8iterator8Iterator8for_eachNCINvMsk_B1I_IB29_B28_E14extend_trustedBN_E0ECs607s0NAIaWN_7segment: argument 0"}
!124 = distinct !{!124, !"_RINvXs7_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB6_4TakeINtNtNtBa_7sources11repeat_with10RepeatWithNvMNtCsexYYUdYSQU6_5alloc3vecINtB1J_3VecNtNtCs9zPlAsQS9gd_4ecow6string9EcoStringE3newEENtB6_8SpecTake13spec_for_eachNCINvMsk_B1J_IB2a_B29_E14extend_trustedBO_E0ECs607s0NAIaWN_7segment"}
!125 = distinct !{!125, !124, !"_RINvXs7_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB6_4TakeINtNtNtBa_7sources11repeat_with10RepeatWithNvMNtCsexYYUdYSQU6_5alloc3vecINtB1J_3VecNtNtCs9zPlAsQS9gd_4ecow6string9EcoStringE3newEENtB6_8SpecTake13spec_for_eachNCINvMsk_B1J_IB2a_B29_E14extend_trustedBO_E0ECs607s0NAIaWN_7segment: argument 0"}
!126 = distinct !{!126, !"_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter7sources11repeat_withINtB5_10RepeatWithNvMNtCsexYYUdYSQU6_5alloc3vecINtB1f_3VecNtNtCs9zPlAsQS9gd_4ecow6string9EcoStringE3newENtNtNtB9_6traits8iterator8Iterator8try_foldjNCINvNvXs7_NtNtB9_8adapters4takeINtB3t_4TakepENtB3t_8SpecTake13spec_for_each5checkB1F_NCINvMsk_B1f_IB1G_B1F_E14extend_trustedIB3P_BU_EE0E0INtNtBb_6option6OptionjEECs607s0NAIaWN_7segment"}
!127 = distinct !{!127, !126, !"_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter7sources11repeat_withINtB5_10RepeatWithNvMNtCsexYYUdYSQU6_5alloc3vecINtB1f_3VecNtNtCs9zPlAsQS9gd_4ecow6string9EcoStringE3newENtNtNtB9_6traits8iterator8Iterator8try_foldjNCINvNvXs7_NtNtB9_8adapters4takeINtB3t_4TakepENtB3t_8SpecTake13spec_for_each5checkB1F_NCINvMsk_B1f_IB1G_B1F_E14extend_trustedIB3P_BU_EE0E0INtNtBb_6option6OptionjEECs607s0NAIaWN_7segment: argument 0"}
!128 = distinct !{!128, !"_RNCINvNvXs7_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs9zPlAsQS9gd_4ecow6string9EcoStringENCINvMsk_B1H_IB1F_B1E_E14extend_trustedIBT_INtNtNtBe_7sources11repeat_with10RepeatWithNvMB1H_B1E_3newEEE0E0Cs607s0NAIaWN_7segment"}
!129 = distinct !{!129, !128, !"_RNCINvNvXs7_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs9zPlAsQS9gd_4ecow6string9EcoStringENCINvMsk_B1H_IB1F_B1E_E14extend_trustedIBT_INtNtNtBe_7sources11repeat_with10RepeatWithNvMB1H_B1E_3newEEE0E0Cs607s0NAIaWN_7segment: argument 0"}
!130 = distinct !{!130, !"_RNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB8_3VecIBz_NtNtCs9zPlAsQS9gd_4ecow6string9EcoStringEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters4take4TakeINtNtNtB1P_7sources11repeat_with10RepeatWithNvMB8_BI_3newEEE0Cs607s0NAIaWN_7segment"}
!131 = distinct !{!131, !130, !"_RNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB8_3VecIBz_NtNtCs9zPlAsQS9gd_4ecow6string9EcoStringEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters4take4TakeINtNtNtB1P_7sources11repeat_with10RepeatWithNvMB8_BI_3newEEE0Cs607s0NAIaWN_7segment: argument 0"}
!132 = !{!117}
!133 = !{!121, !119}
!134 = !{!119}
!135 = !{!131, !129, !127, !125, !123}
!136 = !{!125, !123}
end_hunk_1
