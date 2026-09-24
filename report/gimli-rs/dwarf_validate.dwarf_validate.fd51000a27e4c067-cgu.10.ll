Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gimli-rs/original/dwarf_validate.dwarf_validate.fd51000a27e4c067-cgu.10?download=true
inline.NumInlined: 168
inline.NumDeleted: 110
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCskKLDkoKarTP_4core3mem12maybe_uninit11MaybeUninitNtNtCs6o3pVbAMket_10rayon_core3job6JobRefEEINtB2_12SpecFromIterBU_INtNtNtNtB11_4iter8adapters3map3MapINtNtNtB11_3ops5range5RangejENCNvMs_NtCs8zAMriesZVa_15crossbeam_deque5dequeINtB42_6BufferB1P_E5alloc0EE9from_iterCslKoDbeUmNq5_14dwarf_validate:bb.a

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8, !noalias !135
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #15, !noalias !135
  unreachable

_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtNtCskKLDkoKarTP_4core3mem12maybe_uninit11MaybeUninitNtNtCs6o3pVbAMket_10rayon_core3job6JobRefEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB1a_4iter8adapters3map3MapINtNtNtB1a_3ops5range5RangejENCNvMs_NtCs8zAMriesZVa_15crossbeam_deque5dequeINtB4i_6BufferB1Y_E5alloc0EE9from_iterCslKoDbeUmNq5_14dwarf_validate.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !noalias !135, !nonnull !7, !noundef !7
  %i.i = icmp ule i64 %spec.select.i.i.i, %i.e
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !135
  store i64 %i.e, ptr %0, align 8, !alias.scope !135
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !135
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %spec.select.i.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !135
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCsi68uqYEhoRA_5gimli4read6reader14ReaderOffsetIdNtB6_5Debug3fmtCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !16, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !139
  store ptr %i.b, ptr %i.a, align 8, !noalias !139
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 14, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !139
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumerINtB5_13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1e_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !7   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !7 ; 4 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEBE_.exit, label %.lr.ph

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEBD_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsi68uqYEhoRA_5gimli4read10UnitOffsetEECslKoDbeUmNq5_14dwarf_validate.exit.i.i
  %i.e = icmp eq i64 %i.g, %i.c
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEBE_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEBD_.exit.i
  %.sroa.0.0.i13 = phi i64 [ %i.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEBD_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [64 x i8], ptr %i.a, i64 %.sroa.0.0.i13 ; 3 uses
  %i.g = add nuw nsw i64 %.sroa.0.0.i13, 1        ; 4 uses
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsi68uqYEhoRA_5gimli4read10UnitOffsetENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsi68uqYEhoRA_5gimli4read10UnitOffsetEECslKoDbeUmNq5_14dwarf_validate.exit.i.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtCsi68uqYEhoRA_5gimli4read10UnitOffsetNtNtBR_6common15DebugInfoOffsetEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body.i unwind label %bb.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsi68uqYEhoRA_5gimli4read10UnitOffsetEECslKoDbeUmNq5_14dwarf_validate.exit.i.i: ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtCsi68uqYEhoRA_5gimli4read10UnitOffsetNtNtBR_6common15DebugInfoOffsetEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEBD_.exit.i unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.d:                                             ; preds = %.lr.ph15
  %i.l = add i64 %.sroa.0.1.i14, 1                ; 2 uses
  %i.m = icmp eq i64 %i.l, %i.c
  br i1 %i.m, label %._crit_edge, label %.lr.ph15

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsi68uqYEhoRA_5gimli4read10UnitOffsetEECslKoDbeUmNq5_14dwarf_validate.exit.i.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.n, %bb.e ], [ %i.h, %bb.b ]
  %i.o = icmp eq i64 %i.g, %i.c
  br i1 %i.o, label %._crit_edge, label %.lr.ph15

.lr.ph15:                                         ; preds = %.body.i, %bb.d
  %.sroa.0.1.i14 = phi i64 [ %i.l, %bb.d ], [ %i.g, %.body.i ] ; 2 uses
  %i.p = getelementptr inbounds nuw [64 x i8], ptr %i.a, i64 %.sroa.0.1.i14
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEBD_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.p) #14
          to label %bb.d unwind label %bb.f

._crit_edge:                                      ; preds = %bb.d, %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

bb.f:                                             ; preds = %.lr.ph15
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEBE_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEBD_.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs3_NtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumerINtB5_15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEINtNtB9_8plumbing8ConsumerB1e_E8split_atB1g_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %.not = icmp ugt i64 %3, %2
  br i1 %.not, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw [64 x i8], ptr %1, i64 %3
  %i.b = sub nuw i64 %2, %3
  store ptr %1, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.b, ptr %i.e, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs6_NtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumerNtB5_14CollectReducerINtNtB9_8plumbing7ReducerINtB5_13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEE6reduceB1Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !noundef !7
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !7 ; 2 uses
  %i.d = getelementptr inbounds nuw [64 x i8], ptr %i.a, i64 %i.c
  %i.e = load ptr, ptr %2, align 8, !noundef !7   ; 3 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEB1H_.exit16, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val7 = load i64, ptr %i.g, align 8, !alias.scope !9, !noundef !7 ; 4 uses
  %i.h = icmp eq i64 %.val7, 0
  br i1 %i.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEB1H_.exit, label %.lr.ph

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEBD_.exit.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsi68uqYEhoRA_5gimli4read10UnitOffsetEECslKoDbeUmNq5_14dwarf_validate.exit.i.i.i.i
  %i.i = icmp eq i64 %i.k, %.val7
  br i1 %i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEB1H_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEBD_.exit.i.i.i
  %.sroa.0.0.i.i.i39 = phi i64 [ %i.k, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEBD_.exit.i.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw [64 x i8], ptr %i.e, i64 %.sroa.0.0.i.i.i39 ; 3 uses
  %i.k = add nuw nsw i64 %.sroa.0.0.i.i.i39, 1    ; 4 uses
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsi68uqYEhoRA_5gimli4read10UnitOffsetENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.j)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsi68uqYEhoRA_5gimli4read10UnitOffsetEECslKoDbeUmNq5_14dwarf_validate.exit.i.i.i.i unwind label %bb.c, !noalias !142

bb.c:                                             ; preds = %.lr.ph
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtCsi68uqYEhoRA_5gimli4read10UnitOffsetNtNtBR_6common15DebugInfoOffsetEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body.i.i.i unwind label %bb.d, !noalias !142

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsi68uqYEhoRA_5gimli4read10UnitOffsetEECslKoDbeUmNq5_14dwarf_validate.exit.i.i.i.i: ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtCsi68uqYEhoRA_5gimli4read10UnitOffsetNtNtBR_6common15DebugInfoOffsetEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEBD_.exit.i.i.i unwind label %bb.f, !noalias !142

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13, !noalias !142
  unreachable

bb.e:                                             ; preds = %.lr.ph41
  %i.p = add i64 %.sroa.0.1.i.i.i40, 1            ; 2 uses
  %i.q = icmp eq i64 %i.p, %.val7
  br i1 %i.q, label %.body, label %.lr.ph41

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsi68uqYEhoRA_5gimli4read10UnitOffsetEECslKoDbeUmNq5_14dwarf_validate.exit.i.i.i.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.f, %bb.c
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.r, %bb.f ], [ %i.l, %bb.c ]
  %i.s = icmp eq i64 %i.k, %.val7
  br i1 %i.s, label %.body, label %.lr.ph41

.lr.ph41:                                         ; preds = %.body.i.i.i, %bb.e
  %.sroa.0.1.i.i.i40 = phi i64 [ %i.p, %bb.e ], [ %i.k, %.body.i.i.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw [64 x i8], ptr %i.e, i64 %.sroa.0.1.i.i.i40
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEBD_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.t) #14
          to label %bb.e unwind label %bb.g, !noalias !142

bb.g:                                             ; preds = %.lr.ph41
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13, !noalias !142
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEB1H_.exit16: ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !noundef !7
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !noundef !7
  %i.z = add i64 %i.y, %i.w
  store i64 %i.z, ptr %i.x, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.417.0.copyload = load i64, ptr %.sroa.417.0..sroa_idx, align 8
  %i.aa = add i64 %.sroa.417.0.copyload, %i.c
  store i64 %i.aa, ptr %i.b, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEB1H_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEB1H_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEBD_.exit.i.i.i, %bb.b, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEB1H_.exit16
  ret void

.body:                                            ; preds = %bb.e, %.body.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs7_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i8, ptr %i.b, align 8, !range !145, !noundef !7
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECslKoDbeUmNq5_14dwarf_validate.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc noundef ptr @_RNvMs_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutE9flush_bufCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef align 8 dereferenceable(40) %0) ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECslKoDbeUmNq5_14dwarf_validate.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = and i64 %i.g, 3
  switch i64 %i.h, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslKoDbeUmNq5_14dwarf_validate.exit.i
    i64 3, label %bb.d
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslKoDbeUmNq5_14dwarf_validate.exit.i
    i64 1, label %bb.e
  ], !prof !10

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.i = icmp ult ptr %i.e, inttoptr (i64 188978561024 to ptr)
  %i.j = and i64 %i.g, 1095216660480
  %i.k = icmp ne i64 %i.j, 1095216660480
  tail call void @llvm.assume(i1 %i.i)
  tail call void @llvm.assume(i1 %i.k)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslKoDbeUmNq5_14dwarf_validate.exit.i

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.e, i64 -1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !alias.scope !146
  store i8 3, ptr %i.a, align 8, !alias.scope !146
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslKoDbeUmNq5_14dwarf_validate.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslKoDbeUmNq5_14dwarf_validate.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECslKoDbeUmNq5_14dwarf_validate.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECslKoDbeUmNq5_14dwarf_validate.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslKoDbeUmNq5_14dwarf_validate.exit.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB6_3VecINtNtB8_6borrow3CowShEEINtB4_10SpecExtendBT_INtNtB6_5drain5DrainBT_EE11spec_extendCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.410.i.i.i = alloca [16 x i8], align 8    ; 4 uses
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !166)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !167
  invoke void @_RNvXs3_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainINtNtB9_6borrow3CowShEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator9size_hintCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
          to label %bb.b unwind label %bb.h, !noalias !166

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !13, !noalias !167, !noundef !7
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noalias !167 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !167
  %i.g = trunc nuw i64 %i.d to i1
  br i1 %i.g, label %bb.c, label %bb.e, !prof !15

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !168, !noalias !169, !noundef !7 ; 3 uses
  %i.j = load i64, ptr %0, align 8, !range !11, !alias.scope !168, !noalias !169, !noundef !7
  %i.k = sub i64 %i.j, %i.i
  %i.l = icmp ugt i64 %i.f, %i.k
  br i1 %i.l, label %bb.d, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtB6_6borrow3CowShEE7reserveCslKoDbeUmNq5_14dwarf_validate.exit.i, !prof !12

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.i, i64 noundef %i.f, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtB6_6borrow3CowShEE7reserveCslKoDbeUmNq5_14dwarf_validate.exit_crit_edge.i unwind label %bb.h

._RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtB6_6borrow3CowShEE7reserveCslKoDbeUmNq5_14dwarf_validate.exit_crit_edge.i: ; preds = %bb.d
  %.pre.i = load i64, ptr %i.h, align 8, !alias.scope !166, !noalias !169
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtB6_6borrow3CowShEE7reserveCslKoDbeUmNq5_14dwarf_validate.exit.i

bb.e:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #15
          to label %bb.g unwind label %bb.h, !noalias !166

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtB6_6borrow3CowShEE7reserveCslKoDbeUmNq5_14dwarf_validate.exit.i: ; preds = %._RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtB6_6borrow3CowShEE7reserveCslKoDbeUmNq5_14dwarf_validate.exit_crit_edge.i, %bb.c
  %i.m = phi i64 [ %.pre.i, %._RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtB6_6borrow3CowShEE7reserveCslKoDbeUmNq5_14dwarf_validate.exit_crit_edge.i ], [ %i.i, %bb.c ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !166, !noalias !169, !nonnull !7, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !167
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !noalias !166
  call void @llvm.experimental.noalias.scope.decl(metadata !170)
  call void @llvm.experimental.noalias.scope.decl(metadata !171)
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.q = load ptr, ptr %i.a, align 8, !alias.scope !172, !noalias !173, !nonnull !7, !noundef !7 ; 2 uses
  %i.r = load ptr, ptr %i.p, align 8, !alias.scope !172, !noalias !173, !nonnull !7, !noundef !7 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtNtB8_6borrow3CowShEE14extend_trustedINtNtB6_5drain5DrainBG_EECslKoDbeUmNq5_14dwarf_validate.exit, label %_RNvXs3_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainINtNtB9_6borrow3CowShEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCslKoDbeUmNq5_14dwarf_validate.exit.i.i.i

_RNvXs3_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainINtNtB9_6borrow3CowShEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCslKoDbeUmNq5_14dwarf_validate.exit.i.i.i: ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtB6_6borrow3CowShEE7reserveCslKoDbeUmNq5_14dwarf_validate.exit.i, %bb.f
  %i.t = phi i64 [ %i.x, %bb.f ], [ %i.m, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtB6_6borrow3CowShEE7reserveCslKoDbeUmNq5_14dwarf_validate.exit.i ] ; 3 uses
  %i.u = phi ptr [ %i.v, %bb.f ], [ %i.q, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtB6_6borrow3CowShEE7reserveCslKoDbeUmNq5_14dwarf_validate.exit.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !174)
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 3 uses
  %.sroa.0.0.copyload6.i.i.i = load i64, ptr %i.u, align 8, !noalias !175 ; 2 uses
  %.not.i.i.i = icmp eq i64 %.sroa.0.0.copyload6.i.i.i, -2
  br i1 %.not.i.i.i, label %_RINvYINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainINtNtBa_6borrow3CowShEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNvB17_8for_each4callBK_NCINvMsk_B8_INtB8_3VecBK_E14extend_trustedB3_E0E0ECslKoDbeUmNq5_14dwarf_validate.exit.loopexit.i.i, label %bb.f

bb.f:                                             ; preds = %_RNvXs3_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainINtNtB9_6borrow3CowShEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCslKoDbeUmNq5_14dwarf_validate.exit.i.i.i
  %.sroa.7.0..sroa_idx7.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.410.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.410.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx7.i.i.i, i64 16, i1 false), !noalias !176
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.t ; 2 uses
  store i64 %.sroa.0.0.copyload6.i.i.i, ptr %i.w, align 8, !noalias !177
  %.sroa.410.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.410.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.410.i.i.i, i64 16, i1 false), !noalias !177
  %i.x = add i64 %i.t, 1                          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.410.i.i.i)
  %i.y = icmp eq ptr %i.v, %i.r
  br i1 %i.y, label %_RINvYINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainINtNtBa_6borrow3CowShEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNvB17_8for_each4callBK_NCINvMsk_B8_INtB8_3VecBK_E14extend_trustedB3_E0E0ECslKoDbeUmNq5_14dwarf_validate.exit.loopexit.i.i, label %_RNvXs3_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainINtNtB9_6borrow3CowShEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCslKoDbeUmNq5_14dwarf_validate.exit.i.i.i

_RINvYINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainINtNtBa_6borrow3CowShEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNvB17_8for_each4callBK_NCINvMsk_B8_INtB8_3VecBK_E14extend_trustedB3_E0E0ECslKoDbeUmNq5_14dwarf_validate.exit.loopexit.i.i: ; preds = %bb.f, %_RNvXs3_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainINtNtB9_6borrow3CowShEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCslKoDbeUmNq5_14dwarf_validate.exit.i.i.i
  %.val5.i.ph.i.i = phi i64 [ %i.t, %_RNvXs3_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainINtNtB9_6borrow3CowShEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCslKoDbeUmNq5_14dwarf_validate.exit.i.i.i ], [ %i.x, %bb.f ]
  store ptr %i.v, ptr %i.a, align 8, !alias.scope !178, !noalias !173
  br label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtNtB8_6borrow3CowShEE14extend_trustedINtNtB6_5drain5DrainBG_EECslKoDbeUmNq5_14dwarf_validate.exit

bb.g:                                             ; preds = %bb.e
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainINtNtBI_6borrow3CowShEEECslKoDbeUmNq5_14dwarf_validate.exit.i: ; preds = %bb.h
  resume { ptr, i32 } %lpad.thr_comm.i

bb.h:                                             ; preds = %bb.e, %bb.d, %bb.a
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainINtNtB9_6borrow3CowShEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainINtNtBI_6borrow3CowShEEECslKoDbeUmNq5_14dwarf_validate.exit.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtNtB8_6borrow3CowShEE14extend_trustedINtNtB6_5drain5DrainBG_EECslKoDbeUmNq5_14dwarf_validate.exit: ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtB6_6borrow3CowShEE7reserveCslKoDbeUmNq5_14dwarf_validate.exit.i, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainINtNtBa_6borrow3CowShEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNvB17_8for_each4callBK_NCINvMsk_B8_INtB8_3VecBK_E14extend_trustedB3_E0E0ECslKoDbeUmNq5_14dwarf_validate.exit.loopexit.i.i
  %.val5.i.i.i = phi i64 [ %i.m, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtB6_6borrow3CowShEE7reserveCslKoDbeUmNq5_14dwarf_validate.exit.i ], [ %.val5.i.ph.i.i, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainINtNtBa_6borrow3CowShEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNvB17_8for_each4callBK_NCINvMsk_B8_INtB8_3VecBK_E14extend_trustedB3_E0E0ECslKoDbeUmNq5_14dwarf_validate.exit.loopexit.i.i ]
  store i64 %.val5.i.i.i, ptr %i.h, align 8, !alias.scope !166, !noalias !179
  call void @_RNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainINtNtB9_6borrow3CowShEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !167
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB6_3VecINtNtB8_6borrow3CowShEEINtB4_10SpecExtendBT_INtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceBT_EE11spec_extendCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !196)
  %.val.i = load i64, ptr %1, align 8, !range !197, !alias.scope !196, !noalias !195, !noundef !7 ; 4 uses
  %i.a = icmp ne i64 %.val.i, -2
  %i.b = zext i1 %i.a to i64                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !198, !noalias !196, !noundef !7 ; 3 uses
  %i.e = load i64, ptr %0, align 8, !range !11, !alias.scope !198, !noalias !196, !noundef !7
  %i.f = sub i64 %i.e, %i.d
  %i.g = icmp ult i64 %i.f, %i.b
  br i1 %i.g, label %bb.b, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtB6_6borrow3CowShEE7reserveCslKoDbeUmNq5_14dwarf_validate.exit.i, !prof !12

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.d, i64 noundef %i.b, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtB6_6borrow3CowShEE7reserveCslKoDbeUmNq5_14dwarf_validate.exit_crit_edge.i unwind label %bb.c, !noalias !196

._RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtB6_6borrow3CowShEE7reserveCslKoDbeUmNq5_14dwarf_validate.exit_crit_edge.i: ; preds = %bb.b
  %.pre.i = load i64, ptr %i.c, align 8, !alias.scope !195, !noalias !196
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtB6_6borrow3CowShEE7reserveCslKoDbeUmNq5_14dwarf_validate.exit.i

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtB6_6borrow3CowShEE7reserveCslKoDbeUmNq5_14dwarf_validate.exit.i: ; preds = %._RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtB6_6borrow3CowShEE7reserveCslKoDbeUmNq5_14dwarf_validate.exit_crit_edge.i, %bb.a
  %i.h = phi i64 [ %.pre.i, %._RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtB6_6borrow3CowShEE7reserveCslKoDbeUmNq5_14dwarf_validate.exit_crit_edge.i ], [ %i.d, %bb.a ] ; 3 uses
  %.not14.i.i.i = icmp eq i64 %.val.i, -2
  br i1 %.not14.i.i.i, label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtNtB8_6borrow3CowShEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceBG_EECslKoDbeUmNq5_14dwarf_validate.exit, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtB6_6borrow3CowShEE7reserveCslKoDbeUmNq5_14dwarf_validate.exit.i
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !195, !noalias !196, !nonnull !7, !noundef !7
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.h ; 2 uses
  store i64 %.val.i, ptr %i.k, align 8, !noalias !199
  %.sroa.412.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.412.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i64 16, i1 false)
end_hunk_0
