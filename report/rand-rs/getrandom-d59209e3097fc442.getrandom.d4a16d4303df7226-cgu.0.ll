Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rand-rs/original/getrandom-d59209e3097fc442.getrandom.d4a16d4303df7226-cgu.0?download=true
inline.NumInlined: 50
inline.NumDeleted: 34
begin_hunk_0
@8 = private unnamed_addr constant [11 x i8] c"description", align 1
@9 = private unnamed_addr constant [39 x i8] c"getrandom: this target is not supported", align 1
@10 = private unnamed_addr constant [38 x i8] c"errno: did not return a positive value", align 1
@11 = private unnamed_addr constant [20 x i8] c"unexpected situation", align 1
@12 = private unnamed_addr constant [13 x i8] c"internal_code", align 1
@13 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtReNtB6_5Debug3fmtCsifPj74NEIss_9getrandom }>, align 8
@14 = private unnamed_addr constant [12 x i8] c"unknown_code", align 1
@15 = private unnamed_addr constant [18 x i8] c"\0FUnknown Error: \C0\00", align 1
@16 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @_RNvXs1_NtCsifPj74NEIss_9getrandom5errorNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt }>, align 8
@17 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @_RNvXs0_NtCsifPj74NEIss_9getrandom5errorNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr @_RNvXs1_NtCsifPj74NEIss_9getrandom5errorNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr @16, ptr @_RNvYNtNtCsifPj74NEIss_9getrandom5error5ErrorNtNtCskKLDkoKarTP_4core5error5Error6sourceB6_, ptr @_RNvYNtNtCsifPj74NEIss_9getrandom5error5ErrorNtNtCskKLDkoKarTP_4core5error5Error7type_idB6_, ptr @_RNvYNtNtCsifPj74NEIss_9getrandom5error5ErrorNtNtCskKLDkoKarTP_4core5error5Error11descriptionB6_, ptr @_RNvYNtNtCsifPj74NEIss_9getrandom5error5ErrorNtNtCskKLDkoKarTP_4core5error5Error5causeB6_, ptr @_RNvYNtNtCsifPj74NEIss_9getrandom5error5ErrorNtNtCskKLDkoKarTP_4core5error5Error7provideB6_ }>, align 8
@18 = private unnamed_addr constant [40 x i8] c"description() is deprecated; use Display", align 1
@19 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -4499355557285191662 to ptr), ptr inttoptr (i64 3089381279316273814 to ptr) }>, align 8
@switch.table._RNvNtNtNtNtCsG258MDvU3F_3std3sys2io5error4unix17decode_error_kind = private unnamed_addr constant [122 x i8] c"\01\00+#)+\22+++\0D&\01++\1C\0C\1F+\0E\0F\14((+\1D\1B\18\19\11 \0B++\1E!+$\10\12++++++++++++++++++++++++++++++++++++++++++++++++++++++$++\08\09\0A\05+\06\03++\07++\16\02+\04+'\13+++++\1A", align 1
@switch.table._RNvXs1_NtCsifPj74NEIss_9getrandom5errorNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt = private unnamed_addr constant [3 x i8] c"'&\14", align 8
@switch.table._RNvXs1_NtCsifPj74NEIss_9getrandom5errorNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt.20 = private unnamed_addr constant [3 x ptr] [ptr @9, ptr @10, ptr @11], align 8

; Function Attrs: noinline nonlazybind uwtable
define noundef nonnull ptr @_RINvMNtNtCsexYYUdYSQU6_5alloc2io5errorNtNtNtCskKLDkoKarTP_4core2io5error5Error3newNtNtCsifPj74NEIss_9getrandom5error5ErrorEB1m_(i8 noundef range(i8 0, 44) %0, i32 noundef range(i32 1, 0) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18
  %i.a = tail call noundef align 4 dereferenceable_or_null(4) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 4, i64 noundef 4) #18 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvXs1_NtCskKLDkoKarTP_4core7convertNtNtCsifPj74NEIss_9getrandom5error5ErrorINtB5_4IntoINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB2i_4SyncEL_EE4intoBC_.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 4, i64 noundef 4) #19
  unreachable

_RNvXs1_NtCskKLDkoKarTP_4core7convertNtNtCsifPj74NEIss_9getrandom5error5ErrorINtB5_4IntoINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB2i_4SyncEL_EE4intoBC_.exit: ; preds = %bb.a
  store i32 %1, ptr %i.a, align 4
  %i.c = tail call noundef nonnull ptr @_RNvNtNtCsexYYUdYSQU6_5alloc2io5error21custom_owner_from_box(i8 noundef %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @17)
  %i.d = tail call noundef nonnull ptr @_RNvMs0_NtNtNtCskKLDkoKarTP_4core2io5error4reprNtB5_4Repr10new_custom(ptr noundef nonnull %i.c)
  ret ptr %i.d
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsifPj74NEIss_9getrandom(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = ptrtoint ptr %.val to i64                ; 2 uses
  %i.c = and i64 %i.b, 3
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECsifPj74NEIss_9getrandom.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECsifPj74NEIss_9getrandom.exit
    i64 1, label %bb.c
  ], !prof !5

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.e = and i64 %i.b, 1095216660480
  %i.f = icmp ne i64 %i.e, 1095216660480
  tail call void @llvm.assume(i1 %i.d)
  tail call void @llvm.assume(i1 %i.f)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECsifPj74NEIss_9getrandom.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !alias.scope !12
  store i8 3, ptr %i.a, align 8, !alias.scope !12
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECsifPj74NEIss_9getrandom.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECsifPj74NEIss_9getrandom.exit: ; preds = %bb.a, %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef range(i32 -2147483647, 65538) i32 @_RNvMNtCsifPj74NEIss_9getrandom5errorNtB2_5Error10from_errno(i32 noundef %0) unnamed_addr #2 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  %i.b = sub nsw i32 0, %0
  %spec.select = select i1 %i.a, i32 %i.b, i32 65537
  ret i32 %spec.select
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define noundef i32 @_RNvNtNtCsifPj74NEIss_9getrandom8backends27linux_android_with_fallback17use_file_fallback(ptr noalias nofree noundef nonnull captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i32, ptr @_RNvNtNtCsifPj74NEIss_9getrandom8backends8use_file2FD acquire, align 4, !noalias !18 ; 2 uses
  %or.cond.i = icmp ugt i32 %i.a, -3
  br i1 %or.cond.i, label %bb.b, label %bb.c, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc { i32, i32 } @_RNvNtNtCsifPj74NEIss_9getrandom8backends8use_file12open_or_wait() #20, !noalias !18 ; 2 uses
  %i.c = extractvalue { i32, i32 } %i.b, 0
  %i.d = extractvalue { i32, i32 } %i.b, 1        ; 2 uses
  %i.e = trunc i32 %i.c to i1
  br i1 %i.e, label %_RNvNtNtCsifPj74NEIss_9getrandom8backends8use_file10fill_inner.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.08.i = phi i32 [ %i.a, %bb.a ], [ %i.d, %bb.b ]
  %i.f = icmp eq i64 %1, 0
  br i1 %i.f, label %_RNvNtNtCsifPj74NEIss_9getrandom8backends8use_file10fill_inner.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.h
  %.sroa.0.040.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.h ], [ %0, %bb.c ] ; 3 uses
  %.sroa.6.039.i.i = phi i64 [ %.sroa.6.1.i.i, %bb.h ], [ %1, %bb.c ] ; 4 uses
  %i.g = tail call noundef i64 @read(i32 noundef %.sroa.0.08.i, ptr noundef nonnull %.sroa.0.040.i.i, i64 noundef range(i64 1, -9223372036854775808) %.sroa.6.039.i.i) #18, !noalias !20 ; 5 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.i = icmp eq i64 %i.g, -1
  br i1 %i.i, label %bb.f, label %_RNvNtNtCsifPj74NEIss_9getrandom8backends8use_file10fill_inner.exit

bb.e:                                             ; preds = %.lr.ph.i.i
  %.not.i.i = icmp ugt i64 %i.g, %.sroa.6.039.i.i
  br i1 %.not.i.i, label %_RNvNtNtCsifPj74NEIss_9getrandom8backends8use_file10fill_inner.exit, label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.j = tail call noundef ptr @__errno_location() #18, !noalias !21
  %i.k = load i32, ptr %i.j, align 4, !noalias !21, !noundef !4 ; 3 uses
  %i.l = icmp eq i32 %i.k, 4
  br i1 %i.l, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = icmp sgt i32 %i.k, 0
  %i.n = sub nsw i32 0, %i.k
  %spec.select.i.i.i = select i1 %i.m, i32 %i.n, i32 65537
  br label %_RNvNtNtCsifPj74NEIss_9getrandom8backends8use_file10fill_inner.exit

bb.h:                                             ; preds = %bb.i, %bb.f
  %.sroa.6.1.i.i = phi i64 [ %i.q, %bb.i ], [ %.sroa.6.039.i.i, %bb.f ] ; 2 uses
  %.sroa.0.1.i.i = phi ptr [ %i.p, %bb.i ], [ %.sroa.0.040.i.i, %bb.f ]
  %i.o = icmp eq i64 %.sroa.6.1.i.i, 0
  br i1 %i.o, label %_RNvNtNtCsifPj74NEIss_9getrandom8backends8use_file10fill_inner.exit, label %.lr.ph.i.i

bb.i:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.040.i.i, i64 %i.g
  %i.q = sub nuw nsw i64 %.sroa.6.039.i.i, %i.g
  br label %bb.h

_RNvNtNtCsifPj74NEIss_9getrandom8backends8use_file10fill_inner.exit: ; preds = %bb.d, %bb.e, %bb.h, %bb.b, %bb.c, %bb.g
  %.sroa.0.0.i = phi i32 [ %i.d, %bb.b ], [ %spec.select.i.i.i, %bb.g ], [ 0, %bb.c ], [ 65538, %bb.d ], [ 0, %bb.h ], [ 65538, %bb.e ]
  ret i32 %.sroa.0.0.i
}

; Function Attrs: cold noinline nounwind nonlazybind uwtable
define noundef nonnull ptr @_RNvNtNtCsifPj74NEIss_9getrandom8backends27linux_android_with_fallback4init() unnamed_addr #4 {
bb.a:
  %i.a = tail call noundef ptr @dlsym(ptr noundef null, ptr noundef nonnull @0) #18 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 %i.a(ptr noundef nonnull inttoptr (i64 1 to ptr), i64 noundef 0, i32 noundef 0) #18
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef ptr @__errno_location() #18
  %i.f = load i32, ptr %i.e, align 4, !noundef !4
  switch i32 %i.f, label %bb.e [
    i32 38, label %bb.d
    i32 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.a, %bb.b ], [ %i.a, %bb.c ], [ inttoptr (i64 -1 to ptr), %bb.d ], [ inttoptr (i64 -1 to ptr), %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: cold noinline nounwind nonlazybind uwtable
define internal fastcc { i32, i32 } @_RNvNtNtCsifPj74NEIss_9getrandom8backends8use_file12open_or_wait() unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 4                 ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.b = load atomic i32, ptr @_RNvNtNtCsifPj74NEIss_9getrandom8backends8use_file2FD acquire, align 4 ; 2 uses
  switch i32 %i.b, label %.loopexit [
    i32 -1, label %bb.c
    i32 -2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = cmpxchg weak ptr @_RNvNtNtCsifPj74NEIss_9getrandom8backends8use_file2FD, i32 -1, i32 -2 acq_rel monotonic, align 4
  %i.d = extractvalue { i32, i1 } %i.c, 1
  br i1 %i.d, label %.preheader, label %.backedge

.backedge:                                        ; preds = %bb.c, %bb.d
  br label %bb.b

bb.d:                                             ; preds = %bb.b
  %i.e = tail call noundef i64 (i64, ...) @syscall(i64 noundef 202, ptr noundef nonnull align 4 @_RNvNtNtCsifPj74NEIss_9getrandom8backends8use_file2FD, i32 noundef 128, i32 noundef -2, ptr noundef null) #18 ; 0 uses
  br label %.backedge

.preheader:                                       ; preds = %bb.c, %bb.e
  %i.f = tail call noundef i32 (ptr, i32, ...) @open(ptr noundef nonnull @2, i32 noundef 524288) #18 ; 2 uses
  %0 = icmp slt i32 %i.f, 0                       ; 2 uses
  br i1 %0, label %bb.e, label %_RNvNtNtCsifPj74NEIss_9getrandom8backends8use_file13open_readonly.exit.i.i

bb.e:                                             ; preds = %.preheader
  %i.g = tail call noundef ptr @__errno_location() #18, !noalias !26
  %i.h = load i32, ptr %i.g, align 4, !noalias !26, !noundef !4 ; 3 uses
  %i.i = icmp eq i32 %i.h, 4
  br i1 %i.i, label %.preheader, label %_RNvNtNtCsifPj74NEIss_9getrandom8backends8use_file13open_readonly.exit.thread.i.i

_RNvNtNtCsifPj74NEIss_9getrandom8backends8use_file13open_readonly.exit.thread.i.i: ; preds = %bb.e
  %i.j = icmp sgt i32 %i.h, 0
  %i.k = sub nsw i32 0, %i.h
  %spec.select.i.i.i.i = select i1 %i.j, i32 %i.k, i32 65537
  br label %_RNvNtNtCsifPj74NEIss_9getrandom8backends8use_file13open_readonly.exit.i.i

_RNvNtNtCsifPj74NEIss_9getrandom8backends8use_file13open_readonly.exit.i.i: ; preds = %.preheader, %_RNvNtNtCsifPj74NEIss_9getrandom8backends8use_file13open_readonly.exit.thread.i.i
  %.sroa.3.0.i.i.i = phi i32 [ %spec.select.i.i.i.i, %_RNvNtNtCsifPj74NEIss_9getrandom8backends8use_file13open_readonly.exit.thread.i.i ], [ %i.f, %.preheader ] ; 3 uses
  br i1 %0, label %_RNvNtNtNtCsifPj74NEIss_9getrandom8backends8use_file4sync20wait_until_rng_ready.exit.i, label %bb.f

bb.f:                                             ; preds = %_RNvNtNtCsifPj74NEIss_9getrandom8backends8use_file13open_readonly.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %.sroa.3.0.i.i.i, ptr %i.a, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i16 1, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i16 0, ptr %i.m, align 2
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.n = call noundef i32 @poll(ptr noundef nonnull %i.a, i64 noundef 1, i32 noundef -1) #18
  %i.o = icmp sgt i32 %i.n, -1
  br i1 %i.o, label %.loopexit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = call noundef ptr @__errno_location() #18
  %i.q = load i32, ptr %i.p, align 4, !noundef !4 ; 3 uses
  %i.r = icmp eq i32 %i.q, 4
  br i1 %i.r, label %bb.g, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = icmp sgt i32 %i.q, 0
  %i.t = sub nsw i32 0, %i.q
  %spec.select.i.i.i = select i1 %i.s, i32 %i.t, i32 65537
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.g, %bb.i
  %.sroa.0.0.i.i = phi i32 [ %spec.select.i.i.i, %bb.i ], [ 0, %bb.g ]
  %i.u = call noundef i32 @close(i32 noundef %.sroa.3.0.i.i.i) #18 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvNtNtNtCsifPj74NEIss_9getrandom8backends8use_file4sync20wait_until_rng_ready.exit.i

_RNvNtNtNtCsifPj74NEIss_9getrandom8backends8use_file4sync20wait_until_rng_ready.exit.i: ; preds = %.loopexit.i.i, %_RNvNtNtCsifPj74NEIss_9getrandom8backends8use_file13open_readonly.exit.i.i
  %.sroa.0.1.i.i = phi i32 [ %.sroa.0.0.i.i, %.loopexit.i.i ], [ %.sroa.3.0.i.i.i, %_RNvNtNtCsifPj74NEIss_9getrandom8backends8use_file13open_readonly.exit.i.i ] ; 2 uses
  %.not.i = icmp eq i32 %.sroa.0.1.i.i, 0
  br i1 %.not.i, label %.preheader.i, label %_RNvNtNtCsifPj74NEIss_9getrandom8backends8use_file7open_fd.exit

.preheader.i:                                     ; preds = %_RNvNtNtNtCsifPj74NEIss_9getrandom8backends8use_file4sync20wait_until_rng_ready.exit.i, %bb.j
  %i.v = call noundef i32 (ptr, i32, ...) @open(ptr noundef nonnull @1, i32 noundef 524288) #18 ; 3 uses
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %bb.j, label %_RNvNtNtCsifPj74NEIss_9getrandom8backends8use_file13open_readonly.exit.i

bb.j:                                             ; preds = %.preheader.i
  %i.x = call noundef ptr @__errno_location() #18, !noalias !27
  %i.y = load i32, ptr %i.x, align 4, !noalias !27, !noundef !4 ; 3 uses
  %i.z = icmp eq i32 %i.y, 4
  br i1 %i.z, label %.preheader.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = icmp sgt i32 %i.y, 0
  %i.ab = sub nsw i32 0, %i.y
  %spec.select.i.i10.i = select i1 %i.aa, i32 %i.ab, i32 65537
  br label %_RNvNtNtCsifPj74NEIss_9getrandom8backends8use_file13open_readonly.exit.i

_RNvNtNtCsifPj74NEIss_9getrandom8backends8use_file13open_readonly.exit.i: ; preds = %.preheader.i, %bb.k
  %.sroa.3.0.i.i = phi i32 [ %spec.select.i.i10.i, %bb.k ], [ %i.v, %.preheader.i ]
  %.lobit.i = lshr i32 %i.v, 31
  br label %_RNvNtNtCsifPj74NEIss_9getrandom8backends8use_file7open_fd.exit

_RNvNtNtCsifPj74NEIss_9getrandom8backends8use_file7open_fd.exit: ; preds = %_RNvNtNtNtCsifPj74NEIss_9getrandom8backends8use_file4sync20wait_until_rng_ready.exit.i, %_RNvNtNtCsifPj74NEIss_9getrandom8backends8use_file13open_readonly.exit.i
  %.sroa.4.0.i = phi i32 [ %.sroa.0.1.i.i, %_RNvNtNtNtCsifPj74NEIss_9getrandom8backends8use_file4sync20wait_until_rng_ready.exit.i ], [ %.sroa.3.0.i.i, %_RNvNtNtCsifPj74NEIss_9getrandom8backends8use_file13open_readonly.exit.i ] ; 2 uses
  %.sroa.0.0.i5 = phi i32 [ 1, %_RNvNtNtNtCsifPj74NEIss_9getrandom8backends8use_file4sync20wait_until_rng_ready.exit.i ], [ %.lobit.i, %_RNvNtNtCsifPj74NEIss_9getrandom8backends8use_file13open_readonly.exit.i ] ; 2 uses
  %i.ac = insertvalue { i32, i32 } poison, i32 %.sroa.0.0.i5, 0
  %i.ad = trunc nuw i32 %.sroa.0.0.i5 to i1
  %.sroa.04.0 = select i1 %i.ad, i32 -1, i32 %.sroa.4.0.i
  store atomic i32 %.sroa.04.0, ptr @_RNvNtNtCsifPj74NEIss_9getrandom8backends8use_file2FD release, align 4
  %i.ae = call noundef i64 (i64, ...) @syscall(i64 noundef 202, ptr noundef nonnull align 4 @_RNvNtNtCsifPj74NEIss_9getrandom8backends8use_file2FD, i32 noundef 129, i32 noundef 2147483647) #18 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %_RNvNtNtCsifPj74NEIss_9getrandom8backends8use_file7open_fd.exit
  %.pn = phi { i32, i32 } [ %i.ac, %_RNvNtNtCsifPj74NEIss_9getrandom8backends8use_file7open_fd.exit ], [ { i32 0, i32 poison }, %bb.b ]
  %.pn6 = phi i32 [ %.sroa.4.0.i, %_RNvNtNtCsifPj74NEIss_9getrandom8backends8use_file7open_fd.exit ], [ %i.b, %bb.b ]
  %.merged = insertvalue { i32, i32 } %.pn, i32 %.pn6, 1
  ret { i32, i32 } %.merged
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvNtNtNtNtCsG258MDvU3F_3std3sys2io5error4unix14is_interrupted(i32 noundef %0) unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i32 %0, 4
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef range(i8 0, 44) i8 @_RNvNtNtNtNtCsG258MDvU3F_3std3sys2io5error4unix17decode_error_kind(i32 noundef %0) unnamed_addr #2 {
bb.a:
  %switch.tableidx = add i32 %0, -1               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 122
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvNtNtNtNtCsG258MDvU3F_3std3sys2io5error4unix17decode_error_kind, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.sroa.0.0 = phi i8 [ %switch.load, %switch.lookup ], [ 43, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef i32 @_RNvNtNtNtNtCsifPj74NEIss_9getrandom8backends8use_file5utils9get_errno9get_errno() unnamed_addr #6 {
bb.a:
  %i.a = tail call noundef ptr @__errno_location() #18
  %i.b = load i32, ptr %i.a, align 4, !noundef !4
  ret i32 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvXNtCsifPj74NEIss_9getrandom15error_std_implsNtNtNtCskKLDkoKarTP_4core2io5error5ErrorINtNtBP_7convert4FromNtNtB4_5error5ErrorE4from(i32 noundef range(i32 1, 0) %0) unnamed_addr #1 {
bb.a:
  %or.cond = icmp ult i32 %0, -2147483647
  br i1 %or.cond, label %bb.d, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.a = sub nsw i32 0, %0
  %i.b = load atomic ptr, ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions12OS_FUNCTIONS monotonic, align 8
  %.not.i = icmp eq ptr %i.b, @3
  br i1 %.not.i, label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions13set_functions19set_functions_inner(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3)
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit: ; preds = %bb.b, %bb.c
  %i.c = zext nneg i32 %i.a to i64
  %i.d = shl nuw nsw i64 %i.c, 32
  %i.e = or disjoint i64 %i.d, 2
  %i.f = inttoptr i64 %i.e to ptr
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.g = tail call noundef nonnull ptr @_RINvMNtNtCsexYYUdYSQU6_5alloc2io5errorNtNtNtCskKLDkoKarTP_4core2io5error5Error3newNtNtCsifPj74NEIss_9getrandom5error5ErrorEB1m_(i8 noundef 42, i32 noundef %0) #20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit
  %.sroa.0.0 = phi ptr [ %i.g, %bb.d ], [ %i.f, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtCsifPj74NEIss_9getrandom5errorNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 6 uses
  %i.f = alloca [4 x i8], align 4                 ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 5)
  %i.h = load i32, ptr %0, align 4, !range !8, !noundef !4 ; 5 uses
  %or.cond = icmp ult i32 %i.h, -2147483647
  br i1 %or.cond, label %bb.d, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.i = sub nsw i32 0, %i.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 %i.i, ptr %i.f, align 4
  %i.j = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 8, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.k = load i32, ptr %i.f, align 4, !noundef !4
  %i.l = load atomic ptr, ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions12OS_FUNCTIONS monotonic, align 8
  %.not.i = icmp eq ptr %i.l, @3
  br i1 %.not.i, label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  call void @_RNvNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions13set_functions19set_functions_inner(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3)
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit: ; preds = %bb.b, %bb.c
  %i.m = sext i32 %i.k to i64
  %i.n = shl nsw i64 %i.m, 32
  %i.o = or disjoint i64 %i.n, 2
  %i.p = inttoptr i64 %i.o to ptr
  store ptr %i.p, ptr %i.e, align 8
  %i.q = invoke noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 11, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7)
          to label %bb.f unwind label %bb.e       ; 0 uses

bb.d:                                             ; preds = %bb.a
  %switch.tableidx = add i32 %i.h, -65536         ; 3 uses
  %i.r = icmp ult i32 %switch.tableidx, 3
  br i1 %i.r, label %switch.lookup, label %bb.l

bb.e:                                             ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsifPj74NEIss_9getrandom(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #21
          to label %bb.k unwind label %bb.j

bb.f:                                             ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !32)
  %.val.i = load ptr, ptr %i.e, align 8, !alias.scope !32, !nonnull !4, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !32
  %i.t = ptrtoint ptr %.val.i to i64              ; 2 uses
  %i.u = and i64 %i.t, 3
  switch i64 %i.u, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsifPj74NEIss_9getrandom.exit
    i64 3, label %bb.g
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsifPj74NEIss_9getrandom.exit
    i64 1, label %bb.h
  ], !prof !5

default.unreachable:                              ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.v = icmp ult ptr %.val.i, inttoptr (i64 188978561024 to ptr)
  %i.w = and i64 %i.t, 1095216660480
  %i.x = icmp ne i64 %i.w, 1095216660480
  call void @llvm.assume(i1 %i.v)
  call void @llvm.assume(i1 %i.x)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsifPj74NEIss_9getrandom.exit

bb.h:                                             ; preds = %bb.f
  %i.y = getelementptr i8, ptr %.val.i, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.y) ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.y, ptr %i.z, align 8, !alias.scope !33, !noalias !32
  store i8 3, ptr %i.a, align 8, !alias.scope !33, !noalias !32
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.z), !noalias !32
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsifPj74NEIss_9getrandom.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsifPj74NEIss_9getrandom.exit: ; preds = %bb.f, %bb.f, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.i

bb.i:                                             ; preds = %bb.l, %switch.lookup, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsifPj74NEIss_9getrandom.exit
  %i.aa = call noundef zeroext i1 @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret i1 %i.aa

bb.j:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.k:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.s

switch.lookup:                                    ; preds = %bb.d
  %i.ac = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1_NtCsifPj74NEIss_9getrandom5errorNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, i64 %i.ac
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.ad = zext nneg i32 %switch.tableidx to i64
  %switch.gep5 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1_NtCsifPj74NEIss_9getrandom5errorNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt.20, i64 %i.ad
  %switch.load6 = load ptr, ptr %switch.gep5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %switch.load6, ptr %i.d, align 8, !captures !34
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %switch.ext, ptr %i.ae, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %i.h, ptr %i.c, align 4
  %i.af = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 13, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ag = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 11, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @13) ; 0 uses
end_hunk_0
