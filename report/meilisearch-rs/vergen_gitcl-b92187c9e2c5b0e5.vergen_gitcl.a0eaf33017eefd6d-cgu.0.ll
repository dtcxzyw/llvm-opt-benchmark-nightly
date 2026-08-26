Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/vergen_gitcl-b92187c9e2c5b0e5.vergen_gitcl.a0eaf33017eefd6d-cgu.0?download=true
inline.NumInlined: 163
inline.NumDeleted: 6
begin_hunk_0_@_ZN4time10formatting9fmt_month17hfd3481889e19cc17E:bb.a
  br i1 %i.p, label %bb.l, label %bb.o

bb.k:                                             ; preds = %bb.a
  %i.q = tail call i8 @"_ZN4time5month78_$LT$impl$u20$core..convert..From$LT$time..month..Month$GT$$u20$for$u20$u8$GT$4from17h8b039cfbc923f73fE"(i8 %1)
  %i.r = tail call i64 @"_ZN38_$LT$T$u20$as$u20$num_conv..Extend$GT$6extend17h74c0f253a2788a84E"(i8 %i.q)
  %i.s = add i64 %i.r, -1                         ; 3 uses
  %i.t = icmp ult i64 %i.s, 12
  br i1 %i.t, label %bb.p, label %bb.s

_ZN4time10formatting13format_number17h4e391e5e093e6746E.exit: ; preds = %bb.r, %bb.q, %bb.n, %bb.m, %_ZN4time10formatting22format_number_pad_none17h2e527eb66c51fb5dE.exit.i, %bb.f, %bb.e
  %.pn = phi { i64, ptr } [ %i.ac, %bb.n ], [ %.merged.i.i.i, %_ZN4time10formatting22format_number_pad_none17h2e527eb66c51fb5dE.exit.i ], [ %i.c, %bb.e ], [ %i.d, %bb.f ], [ %i.aa, %bb.m ], [ %i.am, %bb.q ], [ %i.ao, %bb.r ]
  ret { i64, ptr } %.pn

bb.l:                                             ; preds = %bb.j
  %i.u = getelementptr inbounds nuw [16 x i8], ptr @137, i64 %i.o ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  %i.y = tail call ptr @"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h1531876c03521dc6E"(ptr align 8 %0, ptr align 1 %i.v, i64 %i.x)
  %i.z = tail call ptr @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hdaee63d898aba923E"(ptr %i.y) ; 2 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aa = tail call { i64, ptr } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hac691a8f1f2ad439E"(ptr nonnull %i.z, ptr nonnull align 8 @120)
  br label %_ZN4time10formatting13format_number17h4e391e5e093e6746E.exit

bb.n:                                             ; preds = %bb.l
  %i.ab = inttoptr i64 %i.x to ptr
  %i.ac = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.ab, 1
  br label %_ZN4time10formatting13format_number17h4e391e5e093e6746E.exit

bb.o:                                             ; preds = %bb.j
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 %i.o, i64 12, ptr nonnull align 8 @138) #24
  unreachable

bb.p:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr @137, i64 %i.s ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = tail call { ptr, i64 } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$13get_unchecked17h98690ae6279abbdaE"(ptr align 1 %i.ae, i64 %i.ag, i64 3, ptr nonnull align 8 @140) ; 2 uses
  %i.ai = extractvalue { ptr, i64 } %i.ah, 0
  %i.aj = extractvalue { ptr, i64 } %i.ah, 1      ; 2 uses
  %i.ak = tail call ptr @"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h1531876c03521dc6E"(ptr align 8 %0, ptr align 1 %i.ai, i64 %i.aj)
  %i.al = tail call ptr @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hdaee63d898aba923E"(ptr %i.ak) ; 2 uses
  %.not.i7 = icmp eq ptr %i.al, null
  br i1 %.not.i7, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = tail call { i64, ptr } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hac691a8f1f2ad439E"(ptr nonnull %i.al, ptr nonnull align 8 @120)
  br label %_ZN4time10formatting13format_number17h4e391e5e093e6746E.exit

bb.r:                                             ; preds = %bb.p
  %i.an = inttoptr i64 %i.aj to ptr
  %i.ao = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.an, 1
  br label %_ZN4time10formatting13format_number17h4e391e5e093e6746E.exit

bb.s:                                             ; preds = %bb.k
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 %i.s, i64 12, ptr nonnull align 8 @139) #24
  unreachable
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden range(i8 0, 3) i8 @"_ZN4time18format_description5parse11format_item154_$LT$impl$u20$core..convert..From$LT$time..format_description..parse..format_item..Padding$GT$$u20$for$u20$time..format_description..modifier..Padding$GT$4from17heb091de987e8b442E"(i8 returned %0) unnamed_addr #4 {
bb.a:
  ret i8 %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden range(i8 0, 3) i8 @"_ZN4time18format_description5parse11format_item156_$LT$impl$u20$core..convert..From$LT$time..format_description..parse..format_item..YearRepr$GT$$u20$for$u20$time..format_description..modifier..YearRepr$GT$4from17he295ee1c85286f48E"(i8 returned %0) unnamed_addr #4 {
bb.a:
  ret i8 %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden range(i8 0, 3) i8 @"_ZN4time18format_description5parse11format_item158_$LT$impl$u20$core..convert..From$LT$time..format_description..parse..format_item..MonthRepr$GT$$u20$for$u20$time..format_description..modifier..MonthRepr$GT$4from17h471743d825bd00ccE"(i8 returned %0) unnamed_addr #4 {
bb.a:
  ret i8 %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden zeroext i1 @"_ZN4time18format_description5parse11format_item158_$LT$impl$u20$core..convert..From$LT$time..format_description..parse..format_item..YearRange$GT$$u20$for$u20$time..format_description..modifier..YearRange$GT$4from17hf8ef4cf5936e0cfeE"(i1 returned zeroext %0) unnamed_addr #4 {
bb.a:
  ret i1 %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden range(i8 0, 4) i8 @"_ZN4time18format_description5parse11format_item162_$LT$impl$u20$core..convert..From$LT$time..format_description..parse..format_item..WeekdayRepr$GT$$u20$for$u20$time..format_description..modifier..WeekdayRepr$GT$4from17he2c3684f8a4ae13eE"(i8 returned %0) unnamed_addr #4 {
bb.a:
  ret i8 %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden zeroext i1 @"_ZN4time18format_description5parse11format_item166_$LT$impl$u20$core..convert..From$LT$time..format_description..parse..format_item..TrailingInput$GT$$u20$for$u20$time..format_description..modifier..TrailingInput$GT$4from17h5b6c048b3a96b3caE"(i1 returned zeroext %0) unnamed_addr #4 {
bb.a:
  ret i1 %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden range(i8 0, 3) i8 @"_ZN4time18format_description5parse11format_item168_$LT$impl$u20$core..convert..From$LT$time..format_description..parse..format_item..WeekNumberRepr$GT$$u20$for$u20$time..format_description..modifier..WeekNumberRepr$GT$4from17h01ce9fbc9b3da8fcE"(i8 returned %0) unnamed_addr #4 {
bb.a:
  ret i8 %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden range(i8 0, 10) i8 @"_ZN4time18format_description5parse11format_item170_$LT$impl$u20$core..convert..From$LT$time..format_description..parse..format_item..SubsecondDigits$GT$$u20$for$u20$time..format_description..modifier..SubsecondDigits$GT$4from17h50a9286c075fe4d4E"(i8 returned %0) unnamed_addr #4 {
bb.a:
  ret i8 %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden range(i8 0, 4) i8 @"_ZN4time18format_description5parse11format_item184_$LT$impl$u20$core..convert..From$LT$time..format_description..parse..format_item..UnixTimestampPrecision$GT$$u20$for$u20$time..format_description..modifier..UnixTimestampPrecision$GT$4from17hf52f139fd17f5040E"(i8 returned %0) unnamed_addr #4 {
bb.a:
  ret i8 %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @"_ZN4time18format_description5parse161_$LT$impl$u20$core..convert..From$LT$time..format_description..parse..Error$GT$$u20$for$u20$time..error..invalid_format_description..InvalidFormatDescription$GT$4from17h00b279563c1250f1E"(ptr nofree writeonly sret([48 x i8]) align 8 captures(none) initializes((0, 48)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define align 8 ptr @_ZN4time18format_description5parse3ast11parse_inner17h7635a193c36904bcE(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @_ZN4core4iter7sources7from_fn7from_fn17haa0ff909e221a64cE(ptr align 8 %0)
  ret ptr %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define align 8 ptr @_ZN4time18format_description5parse3ast11parse_inner17ha74d7ab6dd7570f8E(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @_ZN4core4iter7sources7from_fn7from_fn17h438a834015367d84E(ptr align 8 %0)
  ret ptr %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN4time18format_description5parse3ast11parse_inner28_$u7b$$u7b$closure$u7d$$u7d$17h492b894ea0f922dcE"(ptr nofree writeonly sret([56 x i8]) align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %.sroa.235 = alloca [28 x i8], align 4          ; 2 uses
  %i.b = alloca [48 x i8], align 8                ; 2 uses
  %i.c = alloca [48 x i8], align 8                ; 2 uses
  %i.d = alloca [56 x i8], align 8                ; 8 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = load ptr, ptr %1, align 8
  %i.g = tail call align 8 ptr @"_ZN4core4iter8adapters8peekable17Peekable$LT$I$GT$4peek17h3bfb5a67378f9f97E"(ptr align 8 %i.f) ; 4 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.g, align 8
  %.not6.i = icmp eq i64 %i.h, 7
  br i1 %.not6.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load i8, ptr %i.i, align 8
  %i.k = icmp eq i8 %i.j, 1
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 9
  %i.m = load i8, ptr %i.l, align 1
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %"_ZN4time18format_description5parse5lexer14Lexed$LT$I$GT$20peek_closing_bracket17h094f49c64e3349e8E.exit", label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  %i.o = load ptr, ptr %1, align 8
  call void @"_ZN108_$LT$core..iter..adapters..peekable..Peekable$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h50f5e51839c0e1acE"(ptr nonnull sret([48 x i8]) align 8 %i.e, ptr align 8 %i.o)
  %i.p = load i64, ptr %i.e, align 8              ; 3 uses
  %.not.i37 = icmp eq i64 %i.p, 8
  br i1 %.not.i37, label %bb.f, label %bb.g

"_ZN4time18format_description5parse5lexer14Lexed$LT$I$GT$20peek_closing_bracket17h094f49c64e3349e8E.exit": ; preds = %bb.d
  store i64 2, ptr %0, align 8
  br label %bb.x

bb.f:                                             ; preds = %bb.e
  store i64 2, ptr %0, align 8
  br label %bb.x

bb.g:                                             ; preds = %bb.e
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.3.0.copyload = load i8, ptr %.sroa.3.0..sroa_idx, align 8 ; 2 uses
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 9
  %.sroa.442.0.copyload = load i8, ptr %.sroa.442.0..sroa_idx, align 1 ; 2 uses
  %.sroa.644.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %.sroa.644.0.copyload = load i32, ptr %.sroa.644.0..sroa_idx, align 4 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.not = icmp eq i64 %i.p, 7
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.8.0..sroa_idx45 = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx45, align 8
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  %.sroa.543.0.copyload = load i16, ptr %.sroa.543.0..sroa_idx, align 2
  store i64 1, ptr %0, align 8
  %.sroa.223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %.sroa.223.0..sroa_idx, align 8
  %.sroa.324.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.3.0.copyload, ptr %.sroa.324.0..sroa_idx, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %.sroa.442.0.copyload, ptr %.sroa.425.0..sroa_idx, align 1
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i16 %.sroa.543.0.copyload, ptr %.sroa.526.0..sroa_idx, align 2
  %.sroa.627.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.644.0.copyload, ptr %.sroa.627.0..sroa_idx, align 4
  %.sroa.728.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.728.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx, i64 24, i1 false)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.8.0.copyload, ptr %.sroa.8.0..sroa_idx, align 8
  br label %bb.x

bb.i:                                             ; preds = %bb.g
  switch i8 %.sroa.3.0.copyload, label %bb.j [
    i8 0, label %bb.m
    i8 1, label %bb.k
    i8 2, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.q = trunc nuw i8 %.sroa.442.0.copyload to i1
  br i1 %i.q, label %bb.w, label %bb.n

bb.l:                                             ; preds = %bb.i
  %.sroa.235.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.235, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.235.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 0, ptr %i.r, align 8
  %.sroa.235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.235.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.235, i64 28, i1 false)
  store i64 0, ptr %i.d, align 8
  br label %bb.t

bb.m:                                             ; preds = %bb.i
  call void @"_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$9new_const17h509c9544fece2df2E"(ptr nonnull sret([48 x i8]) align 8 %i.c, ptr nonnull align 8 @142)
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr nonnull align 8 %i.c, ptr nonnull align 8 @144) #24
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.s = call zeroext i1 @"_ZN4core3ops5range27RangeToInclusive$LT$Idx$GT$8contains17h4fbf6a80c8a05d66E"(ptr nonnull align 8 @145, ptr nonnull align 8 @145)
  %i.t = load ptr, ptr %1, align 8                ; 3 uses
  br i1 %i.s, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZN4time18format_description5parse3ast15parse_component17h032000343caa85d7E(ptr nonnull sret([56 x i8]) align 8 %i.d, i32 %.sroa.644.0.copyload, ptr align 8 %i.t)
  br label %bb.t

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.u = call align 8 ptr @"_ZN4core4iter8adapters8peekable17Peekable$LT$I$GT$4peek17h3bfb5a67378f9f97E"(ptr align 8 %i.t) ; 5 uses
  %.not.i38 = icmp eq ptr %i.u, null
  br i1 %.not.i38, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.v = load i64, ptr %i.u, align 8
  %.not6.i39 = icmp eq i64 %i.v, 7
  br i1 %.not6.i39, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = load i8, ptr %i.w, align 8
  %i.y = icmp eq i8 %i.x, 1
  br i1 %i.y, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 9
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.v, label %bb.u

bb.t:                                             ; preds = %bb.l, %bb.v, %bb.u, %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false)
  br label %bb.x

bb.u:                                             ; preds = %bb.s
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.ad = load i32, ptr %i.ac, align 4
  call void @"_ZN108_$LT$core..iter..adapters..peekable..Peekable$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h50f5e51839c0e1acE"(ptr nonnull sret([48 x i8]) align 8 %i.a, ptr align 8 %i.t)
  call void @"_ZN4core3ptr163drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$time..format_description..parse..lexer..Token$C$time..format_description..parse..Error$GT$$GT$$GT$17h4abfe422d9108476E"(ptr nonnull align 8 %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_ZN4time18format_description5parse6unused17h862308da8129a9b1E(i32 %.sroa.644.0.copyload)
  call void @_ZN4time18format_description5parse6unused17h862308da8129a9b1E(i32 %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 1, ptr %i.ae, align 8
  store i64 0, ptr %i.d, align 8
  br label %bb.t

bb.v:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.af = load ptr, ptr %1, align 8
  call void @_ZN4time18format_description5parse3ast15parse_component17h032000343caa85d7E(ptr nonnull sret([56 x i8]) align 8 %i.d, i32 %.sroa.644.0.copyload, ptr align 8 %i.af)
  br label %bb.t

bb.w:                                             ; preds = %bb.k
  call void @"_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$9new_const17h509c9544fece2df2E"(ptr nonnull sret([48 x i8]) align 8 %i.b, ptr nonnull align 8 @147)
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr nonnull align 8 %i.b, ptr nonnull align 8 @148) #24
  unreachable

bb.x:                                             ; preds = %bb.t, %bb.h, %bb.f, %"_ZN4time18format_description5parse5lexer14Lexed$LT$I$GT$20peek_closing_bracket17h094f49c64e3349e8E.exit"
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN4time18format_description5parse3ast11parse_inner28_$u7b$$u7b$closure$u7d$$u7d$17h96dc15507c2df3ceE"(ptr nofree writeonly sret([56 x i8]) align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 2 uses
  %i.c = alloca [48 x i8], align 8                ; 2 uses
  %.sroa.230 = alloca [28 x i8], align 4          ; 2 uses
  %i.d = alloca [56 x i8], align 8                ; 8 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = load ptr, ptr %1, align 8
  call void @"_ZN108_$LT$core..iter..adapters..peekable..Peekable$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h50f5e51839c0e1acE"(ptr nonnull sret([48 x i8]) align 8 %i.e, ptr align 8 %i.f)
  %i.g = load i64, ptr %i.e, align 8              ; 3 uses
  %.not.i = icmp eq i64 %i.g, 8
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 2, ptr %0, align 8
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.3.0.copyload = load i8, ptr %.sroa.3.0..sroa_idx, align 8 ; 2 uses
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 9
  %.sroa.438.0.copyload = load i8, ptr %.sroa.438.0..sroa_idx, align 1 ; 2 uses
  %.sroa.640.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %.sroa.640.0.copyload = load i32, ptr %.sroa.640.0..sroa_idx, align 4 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.not = icmp eq i64 %i.g, 7
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.8.0..sroa_idx41 = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx41, align 8
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  %.sroa.539.0.copyload = load i16, ptr %.sroa.539.0..sroa_idx, align 2
  store i64 1, ptr %0, align 8
  %.sroa.223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.g, ptr %.sroa.223.0..sroa_idx, align 8
  %.sroa.324.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.3.0.copyload, ptr %.sroa.324.0..sroa_idx, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %.sroa.438.0.copyload, ptr %.sroa.425.0..sroa_idx, align 1
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i16 %.sroa.539.0.copyload, ptr %.sroa.526.0..sroa_idx, align 2
  %.sroa.627.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.640.0.copyload, ptr %.sroa.627.0..sroa_idx, align 4
  %.sroa.728.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.728.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx, i64 24, i1 false)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.8.0.copyload, ptr %.sroa.8.0..sroa_idx, align 8
  br label %bb.s

bb.e:                                             ; preds = %bb.c
  switch i8 %.sroa.3.0.copyload, label %bb.f [
    i8 0, label %bb.i
    i8 1, label %bb.g
    i8 2, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.h = trunc nuw i8 %.sroa.438.0.copyload to i1
  br i1 %i.h, label %bb.t, label %bb.k

bb.h:                                             ; preds = %bb.e
  call void @"_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$9new_const17h509c9544fece2df2E"(ptr nonnull sret([48 x i8]) align 8 %i.b, ptr nonnull align 8 @153)
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr nonnull align 8 %i.b, ptr nonnull align 8 @154) #24
  unreachable

bb.i:                                             ; preds = %bb.e
  %.sroa.230.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.230, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.230.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 0, ptr %i.i, align 8
  %.sroa.230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.230.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.230, i64 28, i1 false)
  store i64 0, ptr %i.d, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.r, %bb.q, %bb.l, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false)
  br label %bb.s

bb.k:                                             ; preds = %bb.g
  %i.j = call zeroext i1 @"_ZN4core3ops5range27RangeToInclusive$LT$Idx$GT$8contains17h4fbf6a80c8a05d66E"(ptr nonnull align 8 @145, ptr nonnull align 8 @145)
  %i.k = load ptr, ptr %1, align 8                ; 3 uses
  br i1 %i.j, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZN4time18format_description5parse3ast15parse_component17h032000343caa85d7E(ptr nonnull sret([56 x i8]) align 8 %i.d, i32 %.sroa.640.0.copyload, ptr align 8 %i.k)
  br label %bb.j

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = call align 8 ptr @"_ZN4core4iter8adapters8peekable17Peekable$LT$I$GT$4peek17h3bfb5a67378f9f97E"(ptr align 8 %i.k) ; 5 uses
  %.not.i37 = icmp eq ptr %i.l, null
  br i1 %.not.i37, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.m = load i64, ptr %i.l, align 8
  %.not6.i = icmp eq i64 %i.m, 7
  br i1 %.not6.i, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load i8, ptr %i.n, align 8
  %i.p = icmp eq i8 %i.o, 1
  br i1 %i.p, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 9
  %i.r = load i8, ptr %i.q, align 1
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.u = load i32, ptr %i.t, align 4
  call void @"_ZN108_$LT$core..iter..adapters..peekable..Peekable$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h50f5e51839c0e1acE"(ptr nonnull sret([48 x i8]) align 8 %i.a, ptr align 8 %i.k)
  call void @"_ZN4core3ptr163drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$time..format_description..parse..lexer..Token$C$time..format_description..parse..Error$GT$$GT$$GT$17h4abfe422d9108476E"(ptr nonnull align 8 %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_ZN4time18format_description5parse6unused17h862308da8129a9b1E(i32 %.sroa.640.0.copyload)
  call void @_ZN4time18format_description5parse6unused17h862308da8129a9b1E(i32 %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 1, ptr %i.v, align 8
  store i64 0, ptr %i.d, align 8
  br label %bb.j

bb.r:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.w = load ptr, ptr %1, align 8
  call void @_ZN4time18format_description5parse3ast15parse_component17h032000343caa85d7E(ptr nonnull sret([56 x i8]) align 8 %i.d, i32 %.sroa.640.0.copyload, ptr align 8 %i.w)
  br label %bb.j

bb.s:                                             ; preds = %bb.j, %bb.d, %bb.b
  ret void

bb.t:                                             ; preds = %bb.g
  call void @"_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$9new_const17h509c9544fece2df2E"(ptr nonnull sret([48 x i8]) align 8 %i.c, ptr nonnull align 8 @150)
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr nonnull align 8 %i.c, ptr nonnull align 8 @151) #24
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_ZN4time18format_description5parse3ast12parse_nested17had2dc06fb43029b6E(ptr sret([48 x i8]) align 8 %0, i32 %1, ptr align 8 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %.sroa.4 = alloca [16 x i8], align 8            ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 3 uses
  %i.e = alloca [16 x i8], align 8                ; 3 uses
  %.sroa.3 = alloca [16 x i8], align 8            ; 2 uses
  %i.f = alloca [24 x i8], align 8                ; 2 uses
  %i.g = alloca [48 x i8], align 8                ; 2 uses
  %i.h = alloca [48 x i8], align 8                ; 2 uses
  %i.i = alloca [48 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.l = tail call align 8 ptr @"_ZN4core4iter8adapters8peekable17Peekable$LT$I$GT$4peek17h3bfb5a67378f9f97E"(ptr align 8 %2) ; 5 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8
  %.not6.i = icmp eq i64 %i.m, 7
  br i1 %.not6.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load i8, ptr %i.n, align 8
  %i.p = icmp eq i8 %i.o, 1
  br i1 %i.p, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 9
  %i.r = load i8, ptr %i.q, align 1
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.u = load i32, ptr %i.t, align 4              ; 3 uses
  call void @"_ZN108_$LT$core..iter..adapters..peekable..Peekable$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h50f5e51839c0e1acE"(ptr nonnull sret([48 x i8]) align 8 %i.c, ptr align 8 %2)
  call void @"_ZN4core3ptr163drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$time..format_description..parse..lexer..Token$C$time..format_description..parse..Error$GT$$GT$$GT$17h4abfe422d9108476E"(ptr nonnull align 8 %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.v = call align 8 ptr @_ZN4core4iter7sources7from_fn7from_fn17haa0ff909e221a64cE(ptr align 8 %2)
  call void @_ZN4core4iter6traits8iterator8Iterator7collect17h0fca212fddf865ceE(ptr nonnull sret([48 x i8]) align 8 %i.h, ptr align 8 %i.v)
  call void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h35d7b70422a0b8a7E"(ptr nonnull sret([48 x i8]) align 8 %i.i, ptr nonnull align 8 %i.h)
  %i.w = load i64, ptr %i.i, align 8
  %.not = icmp eq i64 %i.w, 7
  br i1 %.not, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_ZN4time18format_description5parse8Location5error17h90555a54a2ef1507E(ptr nonnull sret([24 x i8]) align 8 %i.k, i32 %1, ptr nonnull align 1 @157, i64 24)
  call void @_ZN4time18format_description5parse6unused17h0d0ed61ed897c441E(ptr nonnull align 8 %i.k)
  %i.x = zext i32 %1 to i64
  store i64 5, ptr %0, align 8
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.x, ptr %.sroa.22.0..sroa_idx, align 8
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @158, ptr %.sroa.33.0..sroa_idx, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 15, ptr %.sroa.44.0..sroa_idx, align 8
  br label %bb.x

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false)
  call void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h51bf7120b9d163cdE"(ptr sret([48 x i8]) align 8 %0, ptr nonnull align 8 %i.g, ptr nonnull align 8 @156)
  br label %bb.x

bb.h:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ab = load i64, ptr %i.aa, align 8
  store ptr %i.z, ptr %i.j, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store i64 %i.ab, ptr %i.ac, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ad = invoke align 8 ptr @"_ZN4core4iter8adapters8peekable17Peekable$LT$I$GT$4peek17h3bfb5a67378f9f97E"(ptr align 8 %2)
          to label %.noexc unwind label %bb.ac    ; 5 uses

.noexc:                                           ; preds = %bb.h
  %.not.i22 = icmp eq ptr %i.ad, null
  br i1 %.not.i22, label %bb.r, label %bb.i

bb.i:                                             ; preds = %.noexc
  %i.ae = load i64, ptr %i.ad, align 8
  %.not6.i23 = icmp eq i64 %i.ae, 7
  br i1 %.not6.i23, label %bb.j, label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ag = load i8, ptr %i.af, align 8
  %i.ah = icmp eq i8 %i.ag, 1
  br i1 %i.ah, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 9
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.l, label %bb.r

end_hunk_0
begin_hunk_1_@_ZN4time18format_description5parse3ast15parse_component17h032000343caa85d7E:bb.a
  %i.cg = call align 8 ptr @"_ZN4core4iter8adapters8peekable17Peekable$LT$I$GT$4peek17h3bfb5a67378f9f97E"(ptr align 8 %2) ; 7 uses
  %.not.i148 = icmp eq ptr %i.cg, null
  br i1 %.not.i148, label %"_ZN4time18format_description5parse5lexer14Lexed$LT$I$GT$18next_if_whitespace17h8f221bc83cc24bf7E.exit150.thread", label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ch = load i64, ptr %i.cg, align 8
  %.not5.i149 = icmp eq i64 %i.ch, 7
  br i1 %.not5.i149, label %bb.s, label %"_ZN4time18format_description5parse5lexer14Lexed$LT$I$GT$18next_if_whitespace17h8f221bc83cc24bf7E.exit150.thread"

bb.s:                                             ; preds = %bb.r
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.cj = load i8, ptr %i.ci, align 8
  %i.ck = icmp eq i8 %i.cj, 2
  br i1 %i.ck, label %bb.t, label %"_ZN4time18format_description5parse5lexer14Lexed$LT$I$GT$18next_if_whitespace17h8f221bc83cc24bf7E.exit150.thread"

bb.t:                                             ; preds = %bb.s
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 9
  %i.cm = load i8, ptr %i.cl, align 1
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %"_ZN4time18format_description5parse5lexer14Lexed$LT$I$GT$18next_if_whitespace17h8f221bc83cc24bf7E.exit150.thread", label %"_ZN4time18format_description5parse5lexer14Lexed$LT$I$GT$18next_if_whitespace17h8f221bc83cc24bf7E.exit150"

"_ZN4time18format_description5parse5lexer14Lexed$LT$I$GT$18next_if_whitespace17h8f221bc83cc24bf7E.exit150.thread": ; preds = %bb.t, %bb.s, %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.cn

"_ZN4time18format_description5parse5lexer14Lexed$LT$I$GT$18next_if_whitespace17h8f221bc83cc24bf7E.exit150": ; preds = %bb.t
  %i.co = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %.sroa.0242.0.copyload = load ptr, ptr %i.co, align 8 ; 2 uses
  %.sroa.4243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.4227, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.4243.0..sroa_idx, i64 12, i1 false)
  %.sroa.5244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 36
  %.sroa.5244.0.copyload = load i32, ptr %.sroa.5244.0..sroa_idx, align 4 ; 2 uses
  call void @"_ZN108_$LT$core..iter..adapters..peekable..Peekable$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h50f5e51839c0e1acE"(ptr nonnull sret([48 x i8]) align 8 %i.g, ptr align 8 %2)
  call void @"_ZN4core3ptr163drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$time..format_description..parse..lexer..Token$C$time..format_description..parse..Error$GT$$GT$$GT$17h4abfe422d9108476E"(ptr nonnull align 8 %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.not132 = icmp eq ptr %.sroa.0242.0.copyload, null
  br i1 %.not132, label %bb.cn, label %bb.cm

bb.u:                                             ; preds = %bb.bj, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4246)
  %i.cp = invoke align 8 ptr @"_ZN4core4iter8adapters8peekable17Peekable$LT$I$GT$4peek17h3bfb5a67378f9f97E"(ptr align 8 %2)
          to label %.noexc153 unwind label %.thread266.loopexit.split-lp.loopexit ; 6 uses

.noexc153:                                        ; preds = %bb.u
  %.not.i151 = icmp eq ptr %i.cp, null
  br i1 %.not.i151, label %.thread270, label %bb.v

bb.v:                                             ; preds = %.noexc153
  %i.cq = load i64, ptr %i.cp, align 8
  %.not5.i152 = icmp eq i64 %i.cq, 7
  br i1 %.not5.i152, label %bb.w, label %.thread270

bb.w:                                             ; preds = %bb.v
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cs = load i8, ptr %i.cr, align 8
  %i.ct = icmp eq i8 %i.cs, 2
  br i1 %i.ct, label %bb.x, label %.thread270

bb.x:                                             ; preds = %bb.w
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 9
  %i.cv = load i8, ptr %i.cu, align 1
  %i.cw = trunc nuw i8 %i.cv to i1
  br i1 %i.cw, label %.thread270, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %.sroa.0245.0.copyload = load ptr, ptr %i.cx, align 8 ; 3 uses
  %.sroa.4246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4246, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4246.0..sroa_idx, i64 16, i1 false)
  invoke void @"_ZN108_$LT$core..iter..adapters..peekable..Peekable$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h50f5e51839c0e1acE"(ptr nonnull sret([48 x i8]) align 8 %i.f, ptr align 8 %2)
          to label %.noexc154 unwind label %.thread266.loopexit.split-lp.loopexit

.noexc154:                                        ; preds = %bb.y
  invoke void @"_ZN4core3ptr163drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$time..format_description..parse..lexer..Token$C$time..format_description..parse..Error$GT$$GT$$GT$17h4abfe422d9108476E"(ptr nonnull align 8 %i.f)
          to label %bb.z unwind label %.thread266.loopexit.split-lp.loopexit

.thread266.loopexit:                              ; preds = %bb.at
  %lpad.loopexit316 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread266.loopexit.split-lp.loopexit:            ; preds = %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bb, %bb.ay, %"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17hde31da88d6f1b363E.exit", %bb.aw, %bb.ar, %.noexc164, %.noexc154, %bb.u, %bb.y, %bb.aa, %bb.ag, %bb.ak, %bb.as, %.noexc170
  %lpad.loopexit319 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread266.loopexit.split-lp.loopexit.split-lp:   ; preds = %bb.an, %bb.am, %bb.al, %bb.af, %bb.bt, %bb.bs, %bb.br, %bb.az, %bb.bm, %bb.bl, %bb.bk, %bb.bc, %bb.av, %bb.bx, %bb.bw, %bb.bv, %.loopexit, %bb.cf, %bb.cd, %bb.cl, %bb.ce, %.noexc178, %.noexc159, %bb.ae, %.loopexit322, %bb.cc
  %lpad.loopexit.split-lp320 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread270:                                       ; preds = %bb.x, %bb.w, %bb.v, %.noexc153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4246)
  br label %.loopexit322

bb.z:                                             ; preds = %.noexc154
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4246, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4246)
  %.not129 = icmp eq ptr %.sroa.0245.0.copyload, null
  br i1 %.not129, label %.loopexit322, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.cy = invoke align 8 ptr @"_ZN4core4iter8adapters8peekable17Peekable$LT$I$GT$4peek17h3bfb5a67378f9f97E"(ptr align 8 %2)
          to label %.noexc158 unwind label %.thread266.loopexit.split-lp.loopexit ; 5 uses

.noexc158:                                        ; preds = %bb.aa
  %.not.i157 = icmp eq ptr %i.cy, null
  br i1 %.not.i157, label %bb.ag, label %bb.ab

bb.ab:                                            ; preds = %.noexc158
  %i.cz = load i64, ptr %i.cy, align 8
  %.not6.i = icmp eq i64 %i.cz, 7
  br i1 %.not6.i, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.db = load i8, ptr %i.da, align 8
  %i.dc = icmp eq i8 %i.db, 1
  br i1 %i.dc, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 9
  %i.de = load i8, ptr %i.dd, align 1
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cy, i64 12
  %i.dh = load i32, ptr %i.dg, align 4            ; 2 uses
  invoke void @"_ZN108_$LT$core..iter..adapters..peekable..Peekable$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h50f5e51839c0e1acE"(ptr nonnull sret([48 x i8]) align 8 %i.e, ptr align 8 %2)
          to label %.noexc159 unwind label %.thread266.loopexit.split-lp.loopexit.split-lp

.noexc159:                                        ; preds = %bb.ae
  invoke void @"_ZN4core3ptr163drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$time..format_description..parse..lexer..Token$C$time..format_description..parse..Error$GT$$GT$$GT$17h4abfe422d9108476E"(ptr nonnull align 8 %i.e)
          to label %bb.af unwind label %.thread266.loopexit.split-lp.loopexit.split-lp

bb.af:                                            ; preds = %.noexc159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.di = invoke { i32, i32 } @_ZN4time18format_description5parse8Location7to_self17h8618360cfaa476d4E(i32 %i.dh)
          to label %bb.al unwind label %.thread266.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ag:                                            ; preds = %.noexc158, %bb.ad, %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.dj = invoke align 8 ptr @"_ZN4core4iter8adapters8peekable17Peekable$LT$I$GT$4peek17h3bfb5a67378f9f97E"(ptr align 8 %2)
          to label %.noexc163 unwind label %.thread266.loopexit.split-lp.loopexit ; 7 uses

.noexc163:                                        ; preds = %bb.ag
  %.not.i161 = icmp eq ptr %i.dj, null
  br i1 %.not.i161, label %.thread278, label %bb.ah

bb.ah:                                            ; preds = %.noexc163
  %i.dk = load i64, ptr %i.dj, align 8
  %.not5.i162 = icmp eq i64 %i.dk, 7
  br i1 %.not5.i162, label %bb.ai, label %.thread278

bb.ai:                                            ; preds = %bb.ah
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dm = load i8, ptr %i.dl, align 8
  %i.dn = icmp eq i8 %i.dm, 2
  br i1 %i.dn, label %bb.aj, label %.thread278

bb.aj:                                            ; preds = %bb.ai
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 9
  %i.dp = load i8, ptr %i.do, align 1
  %i.dq = trunc nuw i8 %i.dp to i1
  br i1 %i.dq, label %bb.ak, label %.thread278

bb.ak:                                            ; preds = %bb.aj
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %.sroa.0247.0.copyload = load ptr, ptr %i.dr, align 8 ; 6 uses
  %.sroa.4248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %.sroa.4248.0.copyload = load i64, ptr %.sroa.4248.0..sroa_idx, align 8 ; 5 uses
  %.sroa.5249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  %i.ds = load <2 x i32>, ptr %.sroa.5249.0..sroa_idx, align 8
  invoke void @"_ZN108_$LT$core..iter..adapters..peekable..Peekable$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h50f5e51839c0e1acE"(ptr nonnull sret([48 x i8]) align 8 %i.d, ptr align 8 %2)
          to label %.noexc164 unwind label %.thread266.loopexit.split-lp.loopexit

.noexc164:                                        ; preds = %bb.ak
  invoke void @"_ZN4core3ptr163drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$time..format_description..parse..lexer..Token$C$time..format_description..parse..Error$GT$$GT$$GT$17h4abfe422d9108476E"(ptr nonnull align 8 %i.d)
          to label %bb.aq unwind label %.thread266.loopexit.split-lp.loopexit

bb.al:                                            ; preds = %bb.af
  %i.dt = extractvalue { i32, i32 } %i.di, 0
  %i.du = extractvalue { i32, i32 } %i.di, 1
  invoke void @_ZN4time18format_description5parse4Span5error17h2a707dc76c7e33b4E(ptr nonnull sret([24 x i8]) align 8 %i.aj, i32 %i.dt, i32 %i.du, ptr nonnull align 1 @163, i64 40)
          to label %bb.am unwind label %.thread266.loopexit.split-lp.loopexit.split-lp

bb.am:                                            ; preds = %bb.al
  invoke void @_ZN4time18format_description5parse6unused17h0d0ed61ed897c441E(ptr nonnull align 8 %i.aj)
          to label %bb.an unwind label %.thread266.loopexit.split-lp.loopexit.split-lp

bb.an:                                            ; preds = %bb.am
  invoke void @"_ZN76_$LT$alloc..string..String$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17hbe66d26f72e3334aE"(ptr nonnull sret([24 x i8]) align 8 %i.ai, ptr nonnull align 1 @164, i64 1)
          to label %bb.ao unwind label %.thread266.loopexit.split-lp.loopexit.split-lp

bb.ao:                                            ; preds = %bb.an
  %3 = zext i32 %i.dh to i64
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %4, align 8
  %.sroa.280.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.280.0..sroa_idx, align 8
  %.sroa.381.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.381.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false)
  br label %bb.ap

bb.ap:                                            ; preds = %11, %bb.by, %bb.bu, %bb.bp, %bb.ao
  store i64 1, ptr %0, align 8
  call void @"_ZN4core3ptr90drop_in_place$LT$alloc..vec..Vec$LT$time..format_description..parse..ast..Modifier$GT$$GT$17h4bdffdd3fea09999E"(ptr nonnull align 8 %i.ak)
  br label %bb.ck

.thread278:                                       ; preds = %.noexc163, %bb.aj, %bb.ai, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.loopexit323

bb.aq:                                            ; preds = %.noexc164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not130 = icmp eq ptr %.sroa.0247.0.copyload, null
  br i1 %.not130, label %.loopexit323, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  store <2 x i32> %i.ds, ptr %i.ah, align 8
  %i.dv = invoke { ptr, ptr } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17hc12279b0c82ddbc9E"(ptr nonnull align 1 %.sroa.0247.0.copyload, i64 %.sroa.4248.0.copyload)
          to label %bb.as unwind label %.thread266.loopexit.split-lp.loopexit ; 2 uses

.loopexit323:                                     ; preds = %bb.aq, %.thread278
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.366, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3, i64 16, i1 false)
  br label %.loopexit322

bb.as:                                            ; preds = %bb.ar
  %i.dw = extractvalue { ptr, ptr } %i.dv, 0      ; 2 uses
  %i.dx = extractvalue { ptr, ptr } %i.dv, 1      ; 2 uses
  store ptr %i.dw, ptr %i.ad, align 8
  store ptr %i.dx, ptr %i.ce, align 8
  %i.dy = invoke i64 @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$20offset_from_unsigned17hb6350ab9e6140c10E"(ptr %i.dx, ptr %i.dw)
          to label %.noexc170 unwind label %.thread266.loopexit.split-lp.loopexit ; 0 uses

.noexc170:                                        ; preds = %bb.as
  %i.dz = invoke align 1 ptr @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h41bcefbc207482d3E"(ptr nonnull align 8 %i.ad)
          to label %.noexc171 unwind label %.thread266.loopexit.split-lp.loopexit ; 2 uses

.noexc171:                                        ; preds = %.noexc170
  %.not8.i = icmp eq ptr %i.dz, null
  br i1 %.not8.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc171, %.noexc172
  %i.ea = phi ptr [ %i.ed, %.noexc172 ], [ %i.dz, %.noexc171 ]
  %.sroa.02.09.i = phi i64 [ %i.ee, %.noexc172 ], [ 0, %.noexc171 ] ; 7 uses
  %i.eb = load i8, ptr %i.ea, align 1
  %i.ec = icmp eq i8 %i.eb, 58
  br i1 %i.ec, label %bb.au, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i
  %i.ed = invoke align 1 ptr @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h41bcefbc207482d3E"(ptr nonnull align 8 %i.ad)
          to label %.noexc172 unwind label %.thread266.loopexit ; 2 uses

.noexc172:                                        ; preds = %bb.at
  %i.ee = add i64 %.sroa.02.09.i, 1
  %.not.i167 = icmp eq ptr %i.ed, null
  br i1 %.not.i167, label %.loopexit, label %.lr.ph.i

bb.au:                                            ; preds = %.lr.ph.i
  %.not.i.i.i = icmp ugt i64 %.sroa.02.09.i, %.sroa.4248.0.copyload
  br i1 %.not.i.i.i, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 0, i64 %.sroa.02.09.i, i64 %.sroa.4248.0.copyload, ptr nonnull align 8 @165) #24
          to label %.noexc unwind label %.thread266.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.av
  unreachable

.loopexit:                                        ; preds = %.noexc171, %.noexc172
  %i.ef = load i32, ptr %i.ah, align 8
  %i.eg = load i32, ptr %i.cd, align 4
  invoke void @_ZN4time18format_description5parse4Span5error17h2a707dc76c7e33b4E(ptr nonnull sret([24 x i8]) align 8 %i.ag, i32 %i.ef, i32 %i.eg, ptr nonnull align 1 @163, i64 40)
          to label %bb.bv unwind label %.thread266.loopexit.split-lp.loopexit.split-lp

bb.aw:                                            ; preds = %bb.au
  %i.eh = add i64 %.sroa.02.09.i, 1
  %i.ei = invoke { ptr, i64 } @"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h22b7d39be086b3f6E"(i64 %i.eh, ptr nonnull align 1 %.sroa.0247.0.copyload, i64 %.sroa.4248.0.copyload, ptr nonnull align 8 @166)
          to label %"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17hde31da88d6f1b363E.exit" unwind label %.thread266.loopexit.split-lp.loopexit ; 2 uses

"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17hde31da88d6f1b363E.exit": ; preds = %bb.aw
  %i.ej = extractvalue { ptr, i64 } %i.ei, 0      ; 2 uses
  %i.ek = extractvalue { ptr, i64 } %i.ei, 1      ; 2 uses
  %i.el = invoke zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8is_empty17h1e3e8f5634360472E"(ptr nonnull align 1 %.sroa.0247.0.copyload, i64 %.sroa.02.09.i)
          to label %bb.ax unwind label %.thread266.loopexit.split-lp.loopexit

bb.ax:                                            ; preds = %"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17hde31da88d6f1b363E.exit"
  br i1 %i.el, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.em = invoke zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8is_empty17h1e3e8f5634360472E"(ptr align 1 %i.ej, i64 %i.ek)
          to label %bb.ba unwind label %.thread266.loopexit.split-lp.loopexit

bb.az:                                            ; preds = %bb.ax
  %i.en = invoke { i32, i32 } @_ZN4time18format_description5parse4Span15shrink_to_start17h1b59f0922e12fdafE(ptr nonnull align 4 %i.ah)
          to label %bb.br unwind label %.thread266.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ba:                                            ; preds = %bb.ay
  br i1 %i.em, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  store ptr %.sroa.0245.0.copyload, ptr %i.r, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.370.0..sroa_idx71, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3, i64 16, i1 false)
  invoke void @_ZN4time18format_description5parse6unused17hd990d99fdbf04ea8E(ptr nonnull align 8 %i.r)
          to label %bb.bd unwind label %.thread266.loopexit.split-lp.loopexit

bb.bc:                                            ; preds = %bb.ba
  %i.eo = invoke { i32, i32 } @_ZN4time18format_description5parse4Span13shrink_to_end17hbb089fe12f5341baE(ptr nonnull align 4 %i.ah)
          to label %bb.bk unwind label %.thread266.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.bd:                                            ; preds = %bb.bb
  %i.ep = trunc i64 %.sroa.02.09.i to i32         ; 3 uses
  %i.eq = invoke { i32, i32 } @_ZN4time18format_description5parse4Span16shrink_to_before17h730131644f8ea63fE(ptr nonnull align 4 %i.ah, i32 %i.ep)
          to label %bb.be unwind label %.thread266.loopexit.split-lp.loopexit ; 2 uses

bb.be:                                            ; preds = %bb.bd
  %i.er = extractvalue { i32, i32 } %i.eq, 0
  %i.es = extractvalue { i32, i32 } %i.eq, 1
  invoke void @"_ZN67_$LT$T$u20$as$u20$time..format_description..parse..SpannedValue$GT$7spanned17hb456982be1818679E"(ptr nonnull sret([24 x i8]) align 8 %i.x, ptr nonnull align 1 %.sroa.0247.0.copyload, i64 %.sroa.02.09.i, i32 %i.er, i32 %i.es)
          to label %bb.bf unwind label %.thread266.loopexit.split-lp.loopexit

bb.bf:                                            ; preds = %bb.be
  %i.et = invoke i32 @_ZN4time18format_description5parse8Location6offset17h309e183623c171d7E(ptr nonnull align 4 %i.ah, i32 %i.ep)
          to label %bb.bg unwind label %.thread266.loopexit.split-lp.loopexit

bb.bg:                                            ; preds = %bb.bf
  invoke void @_ZN4time18format_description5parse6unused17h862308da8129a9b1E(i32 %i.et)
          to label %bb.bh unwind label %.thread266.loopexit.split-lp.loopexit

bb.bh:                                            ; preds = %bb.bg
  %i.eu = invoke { i32, i32 } @_ZN4time18format_description5parse4Span15shrink_to_after17hc0d1699f8019f988E(ptr nonnull align 4 %i.ah, i32 %i.ep)
          to label %bb.bi unwind label %.thread266.loopexit.split-lp.loopexit ; 2 uses

bb.bi:                                            ; preds = %bb.bh
  %i.ev = extractvalue { i32, i32 } %i.eu, 0
  %i.ew = extractvalue { i32, i32 } %i.eu, 1
  invoke void @"_ZN67_$LT$T$u20$as$u20$time..format_description..parse..SpannedValue$GT$7spanned17hb456982be1818679E"(ptr nonnull sret([24 x i8]) align 8 %i.w, ptr align 1 %i.ej, i64 %i.ek, i32 %i.ev, i32 %i.ew)
          to label %bb.bj unwind label %.thread266.loopexit.split-lp.loopexit

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17ha8e1709ffba11b72E"(ptr nonnull align 8 %i.ak, ptr nonnull align 8 %i.y, ptr nonnull align 8 @167)
          to label %bb.u unwind label %.thread266.loopexit.split-lp.loopexit

bb.bk:                                            ; preds = %bb.bc
  %i.ex = extractvalue { i32, i32 } %i.eo, 0
  %i.ey = extractvalue { i32, i32 } %i.eo, 1
  invoke void @_ZN4time18format_description5parse4Span5error17h2a707dc76c7e33b4E(ptr nonnull sret([24 x i8]) align 8 %i.aa, i32 %i.ex, i32 %i.ey, ptr nonnull align 1 @168, i64 23)
          to label %bb.bl unwind label %.thread266.loopexit.split-lp.loopexit.split-lp

bb.bl:                                            ; preds = %bb.bk
  invoke void @_ZN4time18format_description5parse6unused17h0d0ed61ed897c441E(ptr nonnull align 8 %i.aa)
          to label %bb.bm unwind label %.thread266.loopexit.split-lp.loopexit.split-lp

bb.bm:                                            ; preds = %bb.bl
  invoke void @_ZN5alloc6string6String3new17h32198fabb13975b4E(ptr nonnull sret([24 x i8]) align 8 %i.z)
          to label %bb.bn unwind label %.thread266.loopexit.split-lp.loopexit.split-lp

bb.bn:                                            ; preds = %bb.bm
  %i.ez = invoke { i32, i32 } @_ZN4time18format_description5parse4Span13shrink_to_end17hbb089fe12f5341baE(ptr nonnull align 4 %i.ah)
          to label %bb.bp unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.fa = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h68cfe210401133f4E"(ptr nonnull align 8 %i.z) #25
          to label %.thread unwind label %bb.bq

bb.bp:                                            ; preds = %bb.bn
  %i.fb = extractvalue { i32, i32 } %i.ez, 0
  %5 = zext i32 %i.fb to i64
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %6, align 8
  %.sroa.2107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %5, ptr %.sroa.2107.0..sroa_idx, align 8
  %.sroa.3108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3108.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  br label %bb.ap

bb.bq:                                            ; preds = %bb.do, %.thread293, %bb.ct, %.thread, %bb.ch, %bb.bo
  %i.fc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #26
  unreachable

bb.br:                                            ; preds = %bb.az
  %i.fd = extractvalue { i32, i32 } %i.en, 0
  %i.fe = extractvalue { i32, i32 } %i.en, 1
  invoke void @_ZN4time18format_description5parse4Span5error17h2a707dc76c7e33b4E(ptr nonnull sret([24 x i8]) align 8 %i.ac, i32 %i.fd, i32 %i.fe, ptr nonnull align 1 @169, i64 21)
          to label %bb.bs unwind label %.thread266.loopexit.split-lp.loopexit.split-lp

bb.bs:                                            ; preds = %bb.br
  invoke void @_ZN4time18format_description5parse6unused17h0d0ed61ed897c441E(ptr nonnull align 8 %i.ac)
          to label %bb.bt unwind label %.thread266.loopexit.split-lp.loopexit.split-lp

bb.bt:                                            ; preds = %bb.bs
  invoke void @_ZN5alloc6string6String3new17h32198fabb13975b4E(ptr nonnull sret([24 x i8]) align 8 %i.ab)
          to label %bb.bu unwind label %.thread266.loopexit.split-lp.loopexit.split-lp

bb.bu:                                            ; preds = %bb.bt
  %i.ff = load i32, ptr %i.ah, align 8
  %7 = zext i32 %i.ff to i64
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %8, align 8
  %.sroa.299.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %7, ptr %.sroa.299.0..sroa_idx, align 8
  %.sroa.3100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3100.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  br label %bb.ap

bb.bv:                                            ; preds = %.loopexit
  invoke void @_ZN4time18format_description5parse6unused17h0d0ed61ed897c441E(ptr nonnull align 8 %i.ag)
          to label %bb.bw unwind label %.thread266.loopexit.split-lp.loopexit.split-lp

bb.bw:                                            ; preds = %bb.bv
  invoke void @_ZN5alloc6string6String15from_utf8_lossy17h21794fcc38759ff3E(ptr nonnull sret([24 x i8]) align 8 %i.ae, ptr nonnull align 1 %.sroa.0247.0.copyload, i64 %.sroa.4248.0.copyload)
          to label %bb.bx unwind label %.thread266.loopexit.split-lp.loopexit.split-lp

bb.bx:                                            ; preds = %bb.bw
  invoke void @"_ZN5alloc6borrow12Cow$LT$B$GT$10into_owned17hebae8966dd2d05fdE"(ptr nonnull sret([24 x i8]) align 8 %i.af, ptr nonnull align 8 %i.ae)
          to label %bb.by unwind label %.thread266.loopexit.split-lp.loopexit.split-lp

bb.by:                                            ; preds = %bb.bx
  %i.fg = load i32, ptr %i.ah, align 8
  %9 = zext i32 %i.fg to i64
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %10, align 8
  %.sroa.288.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %9, ptr %.sroa.288.0..sroa_idx, align 8
  %.sroa.389.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.389.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false)
  br label %bb.ap

.loopexit322:                                     ; preds = %bb.z, %.thread270, %.loopexit323
  %.sroa.064.0 = phi ptr [ %.sroa.0245.0.copyload, %.loopexit323 ], [ null, %.thread270 ], [ null, %bb.z ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.fh = invoke align 8 ptr @"_ZN4core4iter8adapters8peekable17Peekable$LT$I$GT$4peek17h3bfb5a67378f9f97E"(ptr align 8 %2)
          to label %.noexc177 unwind label %.thread266.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc177:                                        ; preds = %.loopexit322
  %.not.i173 = icmp eq ptr %i.fh, null
  br i1 %.not.i173, label %bb.ce, label %bb.bz

bb.bz:                                            ; preds = %.noexc177
  %i.fi = load i64, ptr %i.fh, align 8
  %.not6.i174 = icmp eq i64 %i.fi, 7
  br i1 %.not6.i174, label %bb.ca, label %bb.ce

bb.ca:                                            ; preds = %bb.bz
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fk = load i8, ptr %i.fj, align 8
  %i.fl = icmp eq i8 %i.fk, 1
  br i1 %i.fl, label %bb.cb, label %bb.ce

bb.cb:                                            ; preds = %bb.ca
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fh, i64 9
  %i.fn = load i8, ptr %i.fm, align 1
  %i.fo = trunc nuw i8 %i.fn to i1
  br i1 %i.fo, label %bb.cc, label %bb.ce

bb.cc:                                            ; preds = %bb.cb
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fh, i64 12
  %i.fq = load i32, ptr %i.fp, align 4
  invoke void @"_ZN108_$LT$core..iter..adapters..peekable..Peekable$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h50f5e51839c0e1acE"(ptr nonnull sret([48 x i8]) align 8 %i.c, ptr align 8 %2)
          to label %.noexc178 unwind label %.thread266.loopexit.split-lp.loopexit.split-lp

.noexc178:                                        ; preds = %bb.cc
  invoke void @"_ZN4core3ptr163drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$time..format_description..parse..lexer..Token$C$time..format_description..parse..Error$GT$$GT$$GT$17h4abfe422d9108476E"(ptr nonnull align 8 %i.c)
          to label %bb.cd unwind label %.thread266.loopexit.split-lp.loopexit.split-lp

bb.cd:                                            ; preds = %.noexc178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_ZN4time18format_description5parse6unused17h862308da8129a9b1E(i32 %1)
          to label %bb.cf unwind label %.thread266.loopexit.split-lp.loopexit.split-lp

bb.ce:                                            ; preds = %.noexc177, %bb.cb, %bb.ca, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_ZN4time18format_description5parse8Location5error17h90555a54a2ef1507E(ptr nonnull sret([24 x i8]) align 8 %i.v, i32 %1, ptr nonnull align 1 @155, i64 16)
          to label %bb.cl unwind label %.thread266.loopexit.split-lp.loopexit.split-lp

bb.cf:                                            ; preds = %bb.cd
  store ptr %.sroa.0.0251, ptr %i.q, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.6205.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i32 %.sroa.6205.0, ptr %.sroa.6205.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  store i32 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 4
  invoke void @_ZN4time18format_description5parse6unused17h7850ff6521e2b4d2E(ptr nonnull align 8 %i.q)
          to label %bb.cg unwind label %.thread266.loopexit.split-lp.loopexit.split-lp

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false)
  %i.fr = call { ptr, i64 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h9e6a97d16c207d89E"(ptr nonnull align 8 %i.t, ptr nonnull align 8 @170) ; 2 uses
  %i.fs = extractvalue { ptr, i64 } %i.fr, 0      ; 2 uses
  %i.ft = extractvalue { ptr, i64 } %i.fr, 1      ; 2 uses
  store ptr %i.fs, ptr %i.u, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 %i.ft, ptr %i.fu, align 8
  store ptr %.sroa.064.0, ptr %i.s, align 8
  %.sroa.366.0..sroa_idx67 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.366.0..sroa_idx67, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.366, i64 16, i1 false)
  invoke void @_ZN4time18format_description5parse6unused17h7850ff6521e2b4d2E(ptr nonnull align 8 %i.s)
          to label %bb.ci unwind label %bb.ch

bb.ch:                                            ; preds = %bb.ci, %bb.cg
  %i.fv = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr102drop_in_place$LT$alloc..boxed..Box$LT$$u5b$time..format_description..parse..ast..Modifier$u5d$$GT$$GT$17h965b19f67083d4e7E"(ptr nonnull align 8 %i.u) #25
          to label %.thread263 unwind label %bb.bq

bb.ci:                                            ; preds = %bb.cg
  invoke void @_ZN4time18format_description5parse6unused17h862308da8129a9b1E(i32 %i.fq)
          to label %bb.cj unwind label %bb.ch

bb.cj:                                            ; preds = %bb.ci
  %.sroa.2120.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.2120, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.2120.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i64 24, i1 false)
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 2, ptr %i.fw, align 8
  %.sroa.2120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.2120.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.2120, i64 28, i1 false)
  %.sroa.3121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.fs, ptr %.sroa.3121.0..sroa_idx, align 8
  %.sroa.4122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.ft, ptr %.sroa.4122.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  br label %bb.ck

bb.ck:                                            ; preds = %.thread314, %.thread308, %bb.di, %bb.du, %bb.df, %bb.dw, %bb.dh, %bb.cn, %bb.cj, %bb.ap
  ret void

bb.cl:                                            ; preds = %bb.ce
  invoke void @_ZN4time18format_description5parse6unused17h0d0ed61ed897c441E(ptr nonnull align 8 %i.v)
          to label %11 unwind label %.thread266.loopexit.split-lp.loopexit.split-lp

11:                                               ; preds = %bb.cl
  %12 = zext i32 %1 to i64
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %13, align 8
  %.sroa.2114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %12, ptr %.sroa.2114.0..sroa_idx, align 8
  br label %bb.ap

.thread263:                                       ; preds = %bb.ch, %bb.do, %.thread293, %.thread
  %.pn140 = phi { ptr, i32 } [ %i.ia, %bb.do ], [ %.pn135296, %.thread293 ], [ %i.fv, %bb.ch ], [ %.pn262, %.thread ]
  resume { ptr, i32 } %.pn140

.thread:                                          ; preds = %.thread266.loopexit, %.thread266.loopexit.split-lp.loopexit.split-lp, %.thread266.loopexit.split-lp.loopexit, %bb.bo
  %.pn262 = phi { ptr, i32 } [ %i.fa, %bb.bo ], [ %lpad.loopexit316, %.thread266.loopexit ], [ %lpad.loopexit319, %.thread266.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp320, %.thread266.loopexit.split-lp.loopexit.split-lp ]
  invoke void @"_ZN4core3ptr90drop_in_place$LT$alloc..vec..Vec$LT$time..format_description..parse..ast..Modifier$GT$$GT$17h4bdffdd3fea09999E"(ptr nonnull align 8 %i.ak) #25
          to label %.thread263 unwind label %bb.bq

bb.cm:                                            ; preds = %"_ZN4time18format_description5parse5lexer14Lexed$LT$I$GT$18next_if_whitespace17h8f221bc83cc24bf7E.exit150"
  call void @"_ZN5alloc3vec12Vec$LT$T$GT$3new17h0cc03baf6abeb6c8E"(ptr nonnull sret([24 x i8]) align 8 %i.ao)
  %i.fx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  br label %.backedge

bb.cn:                                            ; preds = %"_ZN4time18format_description5parse5lexer14Lexed$LT$I$GT$18next_if_whitespace17h8f221bc83cc24bf7E.exit150.thread", %"_ZN4time18format_description5parse5lexer14Lexed$LT$I$GT$18next_if_whitespace17h8f221bc83cc24bf7E.exit150"
  %i.fz = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ga = load i32, ptr %i.fz, align 8
  %i.gb = getelementptr inbounds nuw i8, ptr %i.aw, i64 20 ; 2 uses
  %i.gc = load i32, ptr %i.gb, align 4
  call void @_ZN4time18format_description5parse4Span5error17h2a707dc76c7e33b4E(ptr nonnull sret([24 x i8]) align 8 %i.ap, i32 %i.ga, i32 %i.gc, ptr nonnull align 1 @173, i64 33)
  call void @_ZN4time18format_description5parse6unused17h0d0ed61ed897c441E(ptr nonnull align 8 %i.ap)
  %i.gd = load i32, ptr %i.gb, align 4
  %i.ge = zext i32 %i.gd to i64
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 5, ptr %i.gf, align 8
  %.sroa.240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ge, ptr %.sroa.240.0..sroa_idx, align 8
  %.sroa.341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @174, ptr %.sroa.341.0..sroa_idx, align 8
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 24, ptr %.sroa.442.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  br label %bb.ck

.backedge:                                        ; preds = %.backedge.backedge, %bb.cm
  invoke void @_ZN4time18format_description5parse3ast12parse_nested17had2dc06fb43029b6E(ptr nonnull sret([48 x i8]) align 8 %i.an, i32 %.sroa.5244.0.copyload, ptr align 8 %2)
          to label %bb.co unwind label %.thread301.loopexit

.thread301.loopexit:                              ; preds = %.backedge, %bb.cs
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread293

.thread301.loopexit.split-lp:                     ; preds = %bb.cz, %bb.cv, %bb.cu, %.noexc185, %bb.db, %bb.de, %bb.da, %bb.dc, %bb.dd
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread293

bb.co:                                            ; preds = %.backedge
  %i.gg = load i64, ptr %i.an, align 8
  %.not133 = icmp eq i64 %i.gg, 7
  br i1 %.not133, label %bb.cp, label %bb.cu

bb.cp:                                            ; preds = %bb.co
  %i.gh = load ptr, ptr %i.fx, align 8
  %i.gi = load i64, ptr %i.fy, align 8
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hb21fef2d1eab4f30E"(ptr nonnull align 8 %i.ao, ptr align 8 %i.gh, i64 %i.gi, ptr nonnull align 8 @171)
          to label %bb.cr unwind label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.gj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gk = load i64, ptr %i.an, align 8
  %i.gl = icmp eq i64 %i.gk, 7
  br i1 %i.gl, label %.thread293, label %bb.ct

bb.cr:                                            ; preds = %bb.cp
  %i.gm = load i64, ptr %i.an, align 8
  %.not134 = icmp eq i64 %i.gm, 7
  br i1 %.not134, label %.backedge.backedge, label %bb.cs

.backedge.backedge:                               ; preds = %bb.cr, %bb.cs
  br label %.backedge

bb.cs:                                            ; preds = %bb.cr
  invoke void @"_ZN4core3ptr151drop_in_place$LT$core..result..Result$LT$time..format_description..parse..ast..NestedFormatDescription$C$time..format_description..parse..Error$GT$$GT$17haa45de90fd5d8324E"(ptr nonnull align 8 %i.an)
          to label %.backedge.backedge unwind label %.thread301.loopexit

bb.ct:                                            ; preds = %bb.cq
  invoke void @"_ZN4core3ptr151drop_in_place$LT$core..result..Result$LT$time..format_description..parse..ast..NestedFormatDescription$C$time..format_description..parse..Error$GT$$GT$17haa45de90fd5d8324E"(ptr nonnull align 8 %i.an) #25
          to label %.thread293 unwind label %bb.bq

bb.cu:                                            ; preds = %bb.co
  invoke void @"_ZN4core3ptr151drop_in_place$LT$core..result..Result$LT$time..format_description..parse..ast..NestedFormatDescription$C$time..format_description..parse..Error$GT$$GT$17haa45de90fd5d8324E"(ptr nonnull align 8 %i.an)
          to label %bb.cv unwind label %.thread301.loopexit.split-lp

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.gn = invoke align 8 ptr @"_ZN4core4iter8adapters8peekable17Peekable$LT$I$GT$4peek17h3bfb5a67378f9f97E"(ptr align 8 %2)
          to label %.noexc184 unwind label %.thread301.loopexit.split-lp ; 5 uses

.noexc184:                                        ; preds = %bb.cv
  %.not.i180 = icmp eq ptr %i.gn, null
  br i1 %.not.i180, label %bb.db, label %bb.cw

bb.cw:                                            ; preds = %.noexc184
  %i.go = load i64, ptr %i.gn, align 8
  %.not6.i181 = icmp eq i64 %i.go, 7
  br i1 %.not6.i181, label %bb.cx, label %bb.db

bb.cx:                                            ; preds = %bb.cw
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gq = load i8, ptr %i.gp, align 8
  %i.gr = icmp eq i8 %i.gq, 1
  br i1 %i.gr, label %bb.cy, label %bb.db

bb.cy:                                            ; preds = %bb.cx
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gn, i64 9
  %i.gt = load i8, ptr %i.gs, align 1
  %i.gu = trunc nuw i8 %i.gt to i1
  br i1 %i.gu, label %bb.cz, label %bb.db

bb.cz:                                            ; preds = %bb.cy
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gn, i64 12
  %i.gw = load i32, ptr %i.gv, align 4
  invoke void @"_ZN108_$LT$core..iter..adapters..peekable..Peekable$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h50f5e51839c0e1acE"(ptr nonnull sret([48 x i8]) align 8 %i.b, ptr align 8 %2)
          to label %.noexc185 unwind label %.thread301.loopexit.split-lp

.noexc185:                                        ; preds = %bb.cz
  invoke void @"_ZN4core3ptr163drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$time..format_description..parse..lexer..Token$C$time..format_description..parse..Error$GT$$GT$$GT$17h4abfe422d9108476E"(ptr nonnull align 8 %i.b)
          to label %bb.da unwind label %.thread301.loopexit.split-lp

bb.da:                                            ; preds = %.noexc185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %.sroa.0.0251, ptr %i.p, align 8
  %.sroa.6.0..sroa_idx199 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx199, align 8
  %.sroa.6205.0..sroa_idx206 = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i32 %.sroa.6205.0, ptr %.sroa.6205.0..sroa_idx206, align 8
  %.sroa.7.0..sroa_idx212 = getelementptr inbounds nuw i8, ptr %i.p, i64 20
  store i32 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx212, align 4
  invoke void @_ZN4time18format_description5parse6unused17h7850ff6521e2b4d2E(ptr nonnull align 8 %i.p)
          to label %bb.dc unwind label %.thread301.loopexit.split-lp

bb.db:                                            ; preds = %.noexc184, %bb.cy, %bb.cx, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_ZN4time18format_description5parse8Location5error17h90555a54a2ef1507E(ptr nonnull sret([24 x i8]) align 8 %i.am, i32 %1, ptr nonnull align 1 @155, i64 16)
          to label %bb.de unwind label %.thread301.loopexit.split-lp

bb.dc:                                            ; preds = %bb.da
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i64 24, i1 false)
  invoke void @_ZN4time18format_description5parse6unused17hd990d99fdbf04ea8E(ptr nonnull align 8 %i.o)
          to label %bb.dd unwind label %.thread301.loopexit.split-lp

bb.dd:                                            ; preds = %bb.dc
  store ptr %.sroa.0242.0.copyload, ptr %i.n, align 8
  %.sroa.044.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.044.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.4227, i64 12, i1 false)
  %.sroa.245.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  store i32 %.sroa.5244.0.copyload, ptr %.sroa.245.0..sroa_idx46, align 4
  invoke void @_ZN4time18format_description5parse6unused17hd990d99fdbf04ea8E(ptr nonnull align 8 %i.n)
          to label %.thread308 unwind label %.thread301.loopexit.split-lp

.thread308:                                       ; preds = %bb.dd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 24, i1 false)
  %i.gx = call { ptr, i64 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h2dbc596be69752bcE"(ptr nonnull align 8 %i.al, ptr nonnull align 8 @172) ; 2 uses
  %i.gy = extractvalue { ptr, i64 } %i.gx, 0
  %i.gz = extractvalue { ptr, i64 } %i.gx, 1
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 4, ptr %i.ha, align 8
  %.sroa.258.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %1, ptr %.sroa.258.0..sroa_idx, align 4
  %.sroa.359.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.gw, ptr %.sroa.359.0..sroa_idx, align 8
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.gy, ptr %.sroa.461.0..sroa_idx, align 8
  %.sroa.562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.gz, ptr %.sroa.562.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  br label %bb.ck

bb.de:                                            ; preds = %bb.db
  invoke void @_ZN4time18format_description5parse6unused17h0d0ed61ed897c441E(ptr nonnull align 8 %i.am)
          to label %bb.df unwind label %.thread301.loopexit.split-lp

bb.df:                                            ; preds = %bb.de
  %i.hb = zext i32 %1 to i64
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.hc, align 8
  %.sroa.252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.hb, ptr %.sroa.252.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  call void @"_ZN4core3ptr105drop_in_place$LT$alloc..vec..Vec$LT$time..format_description..parse..ast..NestedFormatDescription$GT$$GT$17h67f5f53de8345b8dE"(ptr nonnull align 8 %i.ao)
  br label %bb.ck

.thread293:                                       ; preds = %.thread301.loopexit, %.thread301.loopexit.split-lp, %bb.ct, %bb.cq
  %.pn135296 = phi { ptr, i32 } [ %i.gj, %bb.ct ], [ %i.gj, %bb.cq ], [ %lpad.loopexit, %.thread301.loopexit ], [ %lpad.loopexit.split-lp, %.thread301.loopexit.split-lp ]
  invoke void @"_ZN4core3ptr105drop_in_place$LT$alloc..vec..Vec$LT$time..format_description..parse..ast..NestedFormatDescription$GT$$GT$17h67f5f53de8345b8dE"(ptr nonnull align 8 %i.ao) #25
          to label %.thread263 unwind label %bb.bq

bb.dg:                                            ; preds = %"_ZN4time18format_description5parse5lexer14Lexed$LT$I$GT$18next_if_whitespace17h8f221bc83cc24bf7E.exit147"
  call void @_ZN4time18format_description5parse3ast12parse_nested17had2dc06fb43029b6E(ptr nonnull sret([48 x i8]) align 8 %i.as, i32 %.sroa.5241.0.copyload, ptr align 8 %2)
  call void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h0f6a3ec0be0ec1feE"(ptr nonnull sret([48 x i8]) align 8 %i.at, ptr nonnull align 8 %i.as)
  %i.hd = load i64, ptr %i.at, align 8
  %.not138 = icmp eq i64 %i.hd, 7
  br i1 %.not138, label %bb.dj, label %bb.di

bb.dh:                                            ; preds = %"_ZN4time18format_description5parse5lexer14Lexed$LT$I$GT$18next_if_whitespace17h8f221bc83cc24bf7E.exit147.thread", %"_ZN4time18format_description5parse5lexer14Lexed$LT$I$GT$18next_if_whitespace17h8f221bc83cc24bf7E.exit147"
end_hunk_1
