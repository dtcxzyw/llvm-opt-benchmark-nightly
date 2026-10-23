Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gimli-rs/original/gimli-3e7b4f451eed5746.gimli.d2cf5f70e100ae54-cgu.04?download=true
inline.NumInlined: 249
inline.NumDeleted: 129
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write4unit9AttributeEBH_:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !143, !noundef !7 ; 4 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write2op10ExpressionEBH_.exit.i, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.m = icmp eq i64 %i.o, %i.k
  br i1 %i.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write2op10ExpressionEBH_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.0.0.i.i.i.i1 = phi i64 [ %i.o, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %.sroa.0.0.i.i.i.i1
  %i.o = add i64 %.sroa.0.0.i.i.i.i1, 1           ; 4 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write2op9OperationEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.n)
          to label %bb.d unwind label %bb.f, !noalias !143, !inline_history !1

bb.e:                                             ; preds = %.lr.ph3
  %i.p = add i64 %.sroa.0.1.i.i.i.i2, 1           ; 2 uses
  %i.q = icmp eq i64 %i.p, %i.k
  br i1 %i.q, label %.body.i.i, label %.lr.ph3

bb.f:                                             ; preds = %.lr.ph
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = icmp eq i64 %i.o, %i.k
  br i1 %i.s, label %.body.i.i, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.f, %bb.e
  %.sroa.0.1.i.i.i.i2 = phi i64 [ %i.p, %bb.e ], [ %i.o, %bb.f ] ; 2 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %.sroa.0.1.i.i.i.i2
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write2op9OperationEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.t) #22
          to label %bb.e unwind label %bb.g, !noalias !143, !inline_history !1

bb.g:                                             ; preds = %.lr.ph3
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !143, !inline_history !1
  unreachable

.body.i.i:                                        ; preds = %bb.e, %bb.f
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsi68uqYEhoRA_5gimli5write2op9OperationENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtCsi68uqYEhoRA_5gimli5write2op9OperationEEB1l_.exit.i.i unwind label %bb.h, !inline_history !2

bb.h:                                             ; preds = %.body.i.i
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !inline_history !0
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtCsi68uqYEhoRA_5gimli5write2op9OperationEEB1l_.exit.i.i: ; preds = %.body.i.i
  resume { ptr, i32 } %i.r

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write2op10ExpressionEBH_.exit.i: ; preds = %bb.d, %bb.c
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsi68uqYEhoRA_5gimli5write2op9OperationENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g), !inline_history !2
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write4unit14AttributeValueEBH_.exit

bb.i:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsi68uqYEhoRA_5gimli(ptr noalias nofree noundef nonnull align 16 dereferenceable(32) %0)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write4unit14AttributeValueEBH_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write4unit14AttributeValueEBH_.exit: ; preds = %bb.a, %bb.b, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write2op10ExpressionEBH_.exit.i, %bb.i
  ret void
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetNvYB14_NtNtBa_3cmp10PartialOrd2ltEB18_(ptr nofree noundef readonly %0, ptr nofree noundef readonly %1, ptr nofree noundef readonly %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly %4) unnamed_addr #2 {
bb.a:
  %i.a = and i64 %3, 2305843009213693944
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot7median3NtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetNvYBZ_NtNtBa_3cmp10PartialOrd2ltEB13_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw i64 %i.b, 7                      ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e
  %i.g = tail call noundef ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetNvYB14_NtNtBa_3cmp10PartialOrd2ltEB18_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b, ptr noalias nofree noundef nonnull %4)
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.e
  %i.j = tail call noundef ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetNvYB14_NtNtBa_3cmp10PartialOrd2ltEB18_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b, ptr noalias nofree noundef nonnull %4)
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.e
  %i.m = tail call noundef ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetNvYB14_NtNtBa_3cmp10PartialOrd2ltEB18_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b, ptr noalias nofree noundef nonnull %4)
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot7median3NtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetNvYBZ_NtNtBa_3cmp10PartialOrd2ltEB13_.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot7median3NtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetNvYBZ_NtNtBa_3cmp10PartialOrd2ltEB13_.exit: ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %.sroa.0.0.val13 = load i64, ptr %.sroa.0.0, align 8, !noundef !7 ; 2 uses
  %.sroa.04.0.val14 = load i64, ptr %.sroa.04.0, align 8, !noundef !7 ; 2 uses
  %i.n = icmp ult i64 %.sroa.0.0.val13, %.sroa.04.0.val14 ; 2 uses
  %.sroa.08.0.val12 = load i64, ptr %.sroa.08.0, align 8, !noundef !7 ; 2 uses
  %i.o = icmp ult i64 %.sroa.0.0.val13, %.sroa.08.0.val12
  %i.p = xor i1 %i.n, %i.o
  %i.q = icmp ult i64 %.sroa.04.0.val14, %.sroa.08.0.val12
  %i.r = xor i1 %i.n, %i.q
  %..i = select i1 %i.r, ptr %.sroa.08.0, ptr %.sroa.04.0
  %.sroa.0.0.i = select i1 %i.p, ptr %.sroa.0.0, ptr %..i
  ret ptr %.sroa.0.0.i
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable8heapsort8heapsortNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetNvYB15_NtNtBa_3cmp10PartialOrd2ltEB19_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = lshr i64 %1, 1
  %i.b = add nuw nsw i64 %i.a, %1                 ; 2 uses
  %.not17 = icmp eq i64 %i.b, 0
  br i1 %.not17, label %._crit_edge, label %.lr.ph19

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable8heapsort9sift_downNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit, %bb.a
  ret void

.lr.ph19:                                         ; preds = %bb.a, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable8heapsort9sift_downNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit
  %.sroa.2.018 = phi i64 [ %i.c, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable8heapsort9sift_downNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit ], [ %i.b, %bb.a ]
  %i.c = add nsw i64 %.sroa.2.018, -1             ; 6 uses
  %.not9 = icmp ult i64 %i.c, %1
  br i1 %.not9, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph19
  %i.d = sub nuw nsw i64 %i.c, %1
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph19
  tail call void @_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffset14swap_uncheckedBy_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, i64 noundef 0, i64 noundef %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.04.0 = phi i64 [ %i.d, %bb.b ], [ 0, %bb.c ] ; 3 uses
  %..i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %1, i64 %i.c) ; 4 uses
  %i.e = icmp ule i64 %.sroa.04.0, %..i
  tail call void @llvm.assume(i1 %i.e)
  %i.f = shl nuw nsw i64 %.sroa.04.0, 1           ; 2 uses
  %i.g = or disjoint i64 %i.f, 1                  ; 2 uses
  %.not.i14 = icmp samesign ult i64 %i.g, %..i
  br i1 %.not.i14, label %.lr.ph, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable8heapsort9sift_downNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit

.lr.ph:                                           ; preds = %bb.d, %bb.g
  %i.h = phi i64 [ %i.u, %bb.g ], [ %i.g, %bb.d ] ; 3 uses
  %i.i = phi i64 [ %i.t, %bb.g ], [ %i.f, %bb.d ]
  %.sroa.0.0.i15 = phi i64 [ %.sroa.04.0.i, %bb.g ], [ %.sroa.04.0, %bb.d ]
  %i.j = add nuw nsw i64 %i.i, 2                  ; 2 uses
  %i.k = icmp samesign ult i64 %i.j, %..i
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.h
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.j
  %.val = load i64, ptr %i.l, align 8, !noundef !7
  %.val11 = load i64, ptr %i.m, align 8, !noundef !7
  %i.n = icmp ult i64 %.val, %.val11
  %i.o = zext i1 %i.n to i64
  %i.p = add nuw nsw i64 %i.h, %i.o
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %.sroa.04.0.i = phi i64 [ %i.p, %bb.e ], [ %i.h, %.lr.ph ] ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.0.i15 ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.04.0.i ; 2 uses
  %.val12 = load i64, ptr %i.q, align 8, !noundef !7
  %.val13 = load i64, ptr %i.r, align 8, !noundef !7
  %i.s = icmp ult i64 %.val12, %.val13
  br i1 %i.s, label %bb.g, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable8heapsort9sift_downNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsi68uqYEhoRA_5gimli(ptr noundef nonnull %i.q, ptr noundef nonnull %i.r, i64 noundef 1)
  %i.t = shl nuw nsw i64 %.sroa.04.0.i, 1         ; 2 uses
  %i.u = or disjoint i64 %i.t, 1                  ; 2 uses
  %.not.i = icmp samesign ult i64 %i.u, %..i
  br i1 %.not.i, label %.lr.ph, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable8heapsort9sift_downNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable8heapsort9sift_downNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit: ; preds = %bb.f, %bb.g, %bb.d
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph19
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RINvYNtNtNtCsi68uqYEhoRA_5gimli5write5range5RangeNtNtCskKLDkoKarTP_4core4hash4Hash10hash_sliceNtCs4ix5f8b49eS_3fnv9FnvHasherEB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address) %0, i64 noundef range(i64 0, 192153584101141163) %1, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %2) unnamed_addr #4 {
bb.a:
  %.idx = mul nuw nsw i64 %1, 48
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.promoted = load i64, ptr %2, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvXsB_NtNtCsi68uqYEhoRA_5gimli5write5rangeNtB6_5RangeNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtCs4ix5f8b49eS_3fnv9FnvHasherEBa_.exit
  %.sroa.0.03 = phi ptr [ %i.d, %_RINvXsB_NtNtCsi68uqYEhoRA_5gimli5write5rangeNtB6_5RangeNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtCs4ix5f8b49eS_3fnv9FnvHasherEBa_.exit ], [ %0, %.lr.ph.preheader ] ; 16 uses
  %i.c = phi i64 [ %i.kz, %_RINvXsB_NtNtCsi68uqYEhoRA_5gimli5write5rangeNtB6_5RangeNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtCs4ix5f8b49eS_3fnv9FnvHasherEBa_.exit ], [ %.promoted, %.lr.ph.preheader ]
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  %i.e = load i64, ptr %.sroa.0.03, align 8, !range !12, !alias.scope !155, !noundef !7 ; 5 uses
  %i.f = icmp ne i64 %i.e, 4
  tail call void @llvm.assume(i1 %i.f)
  %i.g = add nsw i64 %i.e, -2
  %.inv.i = icmp samesign ult i64 %i.e, 2
  %i.h = select i1 %.inv.i, i64 2, i64 %i.g       ; 9 uses
  %.sroa.4.0.extract.shift.i.i.i = lshr i64 %i.h, 8
  %.sroa.5.0.extract.shift.i.i.i = lshr i64 %i.h, 16
  %.sroa.6.0.extract.shift.i.i.i = lshr i64 %i.h, 24
  %.sroa.7.0.extract.shift.i.i.i = lshr i64 %i.h, 32
  %.sroa.8.0.extract.shift.i.i.i = lshr i64 %i.h, 40
  %.sroa.9.0.extract.shift.i.i.i = lshr i64 %i.h, 48
  %.sroa.10.0.extract.shift.i.i.i = lshr i64 %i.h, 56
  %i.i = xor i64 %i.c, %i.h
  %i.j = mul i64 %i.i, 1099511628211
  %i.k = xor i64 %i.j, %.sroa.4.0.extract.shift.i.i.i
  %i.l = mul i64 %i.k, 1099511628211
  %i.m = xor i64 %i.l, %.sroa.5.0.extract.shift.i.i.i
  %i.n = mul i64 %i.m, 1099511628211
  %i.o = xor i64 %i.n, %.sroa.6.0.extract.shift.i.i.i
  %i.p = mul i64 %i.o, 1099511628211
  %i.q = xor i64 %i.p, %.sroa.7.0.extract.shift.i.i.i
  %i.r = mul i64 %i.q, 1099511628211
  %i.s = xor i64 %i.r, %.sroa.8.0.extract.shift.i.i.i
  %i.t = mul i64 %i.s, 1099511628211
  %i.u = xor i64 %i.t, %.sroa.9.0.extract.shift.i.i.i
  %i.v = mul i64 %i.u, 1099511628211
  %i.w = xor i64 %i.v, %.sroa.10.0.extract.shift.i.i.i
  %i.x = mul i64 %i.w, 1099511628211              ; 4 uses
  switch i64 %i.h, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.e
    i64 2, label %bb.f
    i64 3, label %bb.i
  ]

bb.b:                                             ; preds = %.lr.ph
  unreachable

bb.c:                                             ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 8
  %i.z = load i64, ptr %i.y, align 8, !range !13, !alias.scope !157, !noundef !7 ; 2 uses
  %i.aa = xor i64 %i.z, %i.x
  %i.ab = mul i64 %i.aa, 2232315406967589409
  %i.ac = trunc nuw i64 %i.z to i1
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !157, !noundef !7 ; 8 uses
  %.sroa.4.0.extract.shift.i.i1.i = lshr i64 %i.ae, 8
  %.sroa.5.0.extract.shift.i.i2.i = lshr i64 %i.ae, 16
  %.sroa.6.0.extract.shift.i.i3.i = lshr i64 %i.ae, 24
  %.sroa.7.0.extract.shift.i.i4.i = lshr i64 %i.ae, 32
  %.sroa.8.0.extract.shift.i.i5.i = lshr i64 %i.ae, 40
  %.sroa.9.0.extract.shift.i.i6.i = lshr i64 %i.ae, 48
  %.sroa.10.0.extract.shift.i.i7.i = lshr i64 %i.ae, 56
  %i.af = and i64 %i.ae, 255
  %i.ag = xor i64 %i.af, %i.ab
  %i.ah = mul i64 %i.ag, 1099511628211
  %i.ai = and i64 %.sroa.4.0.extract.shift.i.i1.i, 255
  %i.aj = xor i64 %i.ah, %i.ai
  %i.ak = mul i64 %i.aj, 1099511628211
  %i.al = and i64 %.sroa.5.0.extract.shift.i.i2.i, 255
  %i.am = xor i64 %i.ak, %i.al
  %i.an = mul i64 %i.am, 1099511628211
  %i.ao = and i64 %.sroa.6.0.extract.shift.i.i3.i, 255
  %i.ap = xor i64 %i.an, %i.ao
  %i.aq = mul i64 %i.ap, 1099511628211
  %i.ar = and i64 %.sroa.7.0.extract.shift.i.i4.i, 255
  %i.as = xor i64 %i.aq, %i.ar
  %i.at = mul i64 %i.as, 1099511628211
  %i.au = and i64 %.sroa.8.0.extract.shift.i.i5.i, 255
  %i.av = xor i64 %i.at, %i.au
  %i.aw = mul i64 %i.av, 1099511628211
  %i.ax = and i64 %.sroa.9.0.extract.shift.i.i6.i, 255
  %i.ay = xor i64 %i.aw, %i.ax
  %i.az = mul i64 %i.ay, 1099511628211
  %i.ba = xor i64 %i.az, %.sroa.10.0.extract.shift.i.i7.i ; 2 uses
  br i1 %i.ac, label %bb.d, label %_RINvXsB_NtNtCsi68uqYEhoRA_5gimli5write5rangeNtB6_5RangeNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtCs4ix5f8b49eS_3fnv9FnvHasherEBa_.exit

bb.d:                                             ; preds = %bb.c
  %i.bb = mul i64 %i.ba, 1099511628211
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 24
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !157, !noundef !7 ; 8 uses
  %.sroa.4.0.extract.shift.i.i1.i.i = lshr i64 %i.bd, 8
  %.sroa.5.0.extract.shift.i.i2.i.i = lshr i64 %i.bd, 16
  %.sroa.6.0.extract.shift.i.i3.i.i = lshr i64 %i.bd, 24
  %.sroa.7.0.extract.shift.i.i4.i.i = lshr i64 %i.bd, 32
  %.sroa.8.0.extract.shift.i.i5.i.i = lshr i64 %i.bd, 40
  %.sroa.9.0.extract.shift.i.i6.i.i = lshr i64 %i.bd, 48
  %.sroa.10.0.extract.shift.i.i7.i.i = lshr i64 %i.bd, 56
  %i.be = and i64 %i.bd, 255
  %i.bf = xor i64 %i.be, %i.bb
  %i.bg = mul i64 %i.bf, 1099511628211
  %i.bh = and i64 %.sroa.4.0.extract.shift.i.i1.i.i, 255
  %i.bi = xor i64 %i.bg, %i.bh
  %i.bj = mul i64 %i.bi, 1099511628211
  %i.bk = and i64 %.sroa.5.0.extract.shift.i.i2.i.i, 255
  %i.bl = xor i64 %i.bj, %i.bk
  %i.bm = mul i64 %i.bl, 1099511628211
  %i.bn = and i64 %.sroa.6.0.extract.shift.i.i3.i.i, 255
  %i.bo = xor i64 %i.bm, %i.bn
  %i.bp = mul i64 %i.bo, 1099511628211
  %i.bq = and i64 %.sroa.7.0.extract.shift.i.i4.i.i, 255
  %i.br = xor i64 %i.bp, %i.bq
  %i.bs = mul i64 %i.br, 1099511628211
  %i.bt = and i64 %.sroa.8.0.extract.shift.i.i5.i.i, 255
  %i.bu = xor i64 %i.bs, %i.bt
  %i.bv = mul i64 %i.bu, 1099511628211
  %i.bw = and i64 %.sroa.9.0.extract.shift.i.i6.i.i, 255
  %i.bx = xor i64 %i.bv, %i.bw
  %i.by = mul i64 %i.bx, 1099511628211
  %i.bz = xor i64 %i.by, %.sroa.10.0.extract.shift.i.i7.i.i
  br label %_RINvXsB_NtNtCsi68uqYEhoRA_5gimli5write5rangeNtB6_5RangeNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtCs4ix5f8b49eS_3fnv9FnvHasherEBa_.exit

bb.e:                                             ; preds = %.lr.ph
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !alias.scope !155, !noundef !7 ; 8 uses
  %.sroa.4.0.extract.shift.i.i = lshr i64 %i.cb, 8
  %.sroa.5.0.extract.shift.i.i = lshr i64 %i.cb, 16
  %.sroa.6.0.extract.shift.i.i = lshr i64 %i.cb, 24
  %.sroa.7.0.extract.shift.i.i = lshr i64 %i.cb, 32
  %.sroa.8.0.extract.shift.i.i = lshr i64 %i.cb, 40
  %.sroa.9.0.extract.shift.i.i = lshr i64 %i.cb, 48
  %.sroa.10.0.extract.shift.i.i = lshr i64 %i.cb, 56
  %i.cc = and i64 %i.cb, 255
  %i.cd = xor i64 %i.cc, %i.x
  %i.ce = mul i64 %i.cd, 1099511628211
  %i.cf = and i64 %.sroa.4.0.extract.shift.i.i, 255
  %i.cg = xor i64 %i.ce, %i.cf
  %i.ch = mul i64 %i.cg, 1099511628211
  %i.ci = and i64 %.sroa.5.0.extract.shift.i.i, 255
  %i.cj = xor i64 %i.ch, %i.ci
  %i.ck = mul i64 %i.cj, 1099511628211
  %i.cl = and i64 %.sroa.6.0.extract.shift.i.i, 255
  %i.cm = xor i64 %i.ck, %i.cl
  %i.cn = mul i64 %i.cm, 1099511628211
  %i.co = and i64 %.sroa.7.0.extract.shift.i.i, 255
  %i.cp = xor i64 %i.cn, %i.co
  %i.cq = mul i64 %i.cp, 1099511628211
  %i.cr = and i64 %.sroa.8.0.extract.shift.i.i, 255
  %i.cs = xor i64 %i.cq, %i.cr
  %i.ct = mul i64 %i.cs, 1099511628211
  %i.cu = and i64 %.sroa.9.0.extract.shift.i.i, 255
  %i.cv = xor i64 %i.ct, %i.cu
  %i.cw = mul i64 %i.cv, 1099511628211
  %i.cx = xor i64 %i.cw, %.sroa.10.0.extract.shift.i.i
  %i.cy = mul i64 %i.cx, 1099511628211
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 16
  %i.da = load i64, ptr %i.cz, align 8, !alias.scope !155, !noundef !7 ; 8 uses
  %.sroa.4.0.extract.shift.i8.i = lshr i64 %i.da, 8
  %.sroa.5.0.extract.shift.i9.i = lshr i64 %i.da, 16
  %.sroa.6.0.extract.shift.i10.i = lshr i64 %i.da, 24
  %.sroa.7.0.extract.shift.i11.i = lshr i64 %i.da, 32
  %.sroa.8.0.extract.shift.i12.i = lshr i64 %i.da, 40
  %.sroa.9.0.extract.shift.i13.i = lshr i64 %i.da, 48
  %.sroa.10.0.extract.shift.i14.i = lshr i64 %i.da, 56
  %i.db = and i64 %i.da, 255
  %i.dc = xor i64 %i.cy, %i.db
  %i.dd = mul i64 %i.dc, 1099511628211
  %i.de = and i64 %.sroa.4.0.extract.shift.i8.i, 255
  %i.df = xor i64 %i.dd, %i.de
  %i.dg = mul i64 %i.df, 1099511628211
  %i.dh = and i64 %.sroa.5.0.extract.shift.i9.i, 255
  %i.di = xor i64 %i.dg, %i.dh
  %i.dj = mul i64 %i.di, 1099511628211
  %i.dk = and i64 %.sroa.6.0.extract.shift.i10.i, 255
  %i.dl = xor i64 %i.dj, %i.dk
  %i.dm = mul i64 %i.dl, 1099511628211
  %i.dn = and i64 %.sroa.7.0.extract.shift.i11.i, 255
  %i.do = xor i64 %i.dm, %i.dn
  %i.dp = mul i64 %i.do, 1099511628211
  %i.dq = and i64 %.sroa.8.0.extract.shift.i12.i, 255
  %i.dr = xor i64 %i.dp, %i.dq
  %i.ds = mul i64 %i.dr, 1099511628211
  %i.dt = and i64 %.sroa.9.0.extract.shift.i13.i, 255
  %i.du = xor i64 %i.ds, %i.dt
  %i.dv = mul i64 %i.du, 1099511628211
  %i.dw = xor i64 %i.dv, %.sroa.10.0.extract.shift.i14.i
  br label %_RINvXsB_NtNtCsi68uqYEhoRA_5gimli5write5rangeNtB6_5RangeNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtCs4ix5f8b49eS_3fnv9FnvHasherEBa_.exit

bb.f:                                             ; preds = %.lr.ph
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 24
  %i.dy = xor i64 %i.x, %i.e
  %i.dz = mul i64 %i.dy, 2232315406967589409
  %i.ea = trunc nuw i64 %i.e to i1
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 8
  %i.ec = load i64, ptr %i.eb, align 8, !alias.scope !158, !noundef !7 ; 8 uses
  %.sroa.4.0.extract.shift.i.i15.i = lshr i64 %i.ec, 8
  %.sroa.5.0.extract.shift.i.i16.i = lshr i64 %i.ec, 16
  %.sroa.6.0.extract.shift.i.i17.i = lshr i64 %i.ec, 24
  %.sroa.7.0.extract.shift.i.i18.i = lshr i64 %i.ec, 32
  %.sroa.8.0.extract.shift.i.i19.i = lshr i64 %i.ec, 40
  %.sroa.9.0.extract.shift.i.i20.i = lshr i64 %i.ec, 48
  %.sroa.10.0.extract.shift.i.i21.i = lshr i64 %i.ec, 56
  %i.ed = and i64 %i.ec, 255
  %i.ee = xor i64 %i.ed, %i.dz
  %i.ef = mul i64 %i.ee, 1099511628211
  %i.eg = and i64 %.sroa.4.0.extract.shift.i.i15.i, 255
  %i.eh = xor i64 %i.ef, %i.eg
  %i.ei = mul i64 %i.eh, 1099511628211
  %i.ej = and i64 %.sroa.5.0.extract.shift.i.i16.i, 255
  %i.ek = xor i64 %i.ei, %i.ej
  %i.el = mul i64 %i.ek, 1099511628211
  %i.em = and i64 %.sroa.6.0.extract.shift.i.i17.i, 255
  %i.en = xor i64 %i.el, %i.em
  %i.eo = mul i64 %i.en, 1099511628211
  %i.ep = and i64 %.sroa.7.0.extract.shift.i.i18.i, 255
  %i.eq = xor i64 %i.eo, %i.ep
  %i.er = mul i64 %i.eq, 1099511628211
  %i.es = and i64 %.sroa.8.0.extract.shift.i.i19.i, 255
  %i.et = xor i64 %i.er, %i.es
  %i.eu = mul i64 %i.et, 1099511628211
  %i.ev = and i64 %.sroa.9.0.extract.shift.i.i20.i, 255
  %i.ew = xor i64 %i.eu, %i.ev
  %i.ex = mul i64 %i.ew, 1099511628211
  %i.ey = xor i64 %i.ex, %.sroa.10.0.extract.shift.i.i21.i ; 2 uses
  br i1 %i.ea, label %bb.g, label %_RINvXse_NtCsi68uqYEhoRA_5gimli5writeNtB6_7AddressNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtCs4ix5f8b49eS_3fnv9FnvHasherEB8_.exit31.i

bb.g:                                             ; preds = %bb.f
  %i.ez = mul i64 %i.ey, 1099511628211
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 16
  %i.fb = load i64, ptr %i.fa, align 8, !alias.scope !158, !noundef !7 ; 8 uses
  %.sroa.4.0.extract.shift.i.i1.i24.i = lshr i64 %i.fb, 8
  %.sroa.5.0.extract.shift.i.i2.i25.i = lshr i64 %i.fb, 16
  %.sroa.6.0.extract.shift.i.i3.i26.i = lshr i64 %i.fb, 24
  %.sroa.7.0.extract.shift.i.i4.i27.i = lshr i64 %i.fb, 32
  %.sroa.8.0.extract.shift.i.i5.i28.i = lshr i64 %i.fb, 40
  %.sroa.9.0.extract.shift.i.i6.i29.i = lshr i64 %i.fb, 48
  %.sroa.10.0.extract.shift.i.i7.i30.i = lshr i64 %i.fb, 56
end_hunk_0
