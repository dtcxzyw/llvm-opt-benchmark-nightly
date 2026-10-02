Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/vergen_gitcl-b92187c9e2c5b0e5.vergen_gitcl.a0eaf33017eefd6d-cgu.0?download=true
inline.NumInlined: 163
inline.NumDeleted: 6
begin_hunk_0_@_ZN4time10formatting31fmt_unix_timestamp_milliseconds17hae77db8a1d60d68bE:bb.a
  %i.ac = extractvalue { i64, ptr } %.merged.i.i11, 1
  %i.ad = call { i64, ptr } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hd26ad8347f913047E"(i64 %i.ab, ptr %i.ac) ; 2 uses
  %i.ae = extractvalue { i64, ptr } %i.ad, 0
  %i.af = extractvalue { i64, ptr } %i.ad, 1      ; 2 uses
  %i.ag = trunc nuw i64 %i.ae to i1
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN4time10formatting22format_number_pad_none17ha698e12dbf4eee63E.exit
  %i.ah = call { i64, ptr } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hac691a8f1f2ad439E"(ptr %i.af, ptr nonnull align 8 @118)
  br label %bb.m

bb.l:                                             ; preds = %_ZN4time10formatting22format_number_pad_none17ha698e12dbf4eee63E.exit
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = add i64 %i.ai, %i.p
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.ak, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.g
  %.merged = phi { i64, ptr } [ %i.r, %bb.g ], [ %i.ah, %bb.k ], [ %i.al, %bb.l ]
  ret { i64, ptr } %.merged
}

; Function Attrs: inlinehint nonlazybind uwtable
define { i64, ptr } @_ZN4time10formatting5write17hbc84810202ef6dfeE(ptr align 8 %0, ptr align 1 %1, i64 %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h1531876c03521dc6E"(ptr align 8 %0, ptr align 1 %1, i64 %2)
  %i.b = tail call ptr @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hdaee63d898aba923E"(ptr %i.a) ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i64, ptr } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hac691a8f1f2ad439E"(ptr nonnull %i.b, ptr nonnull align 8 @120)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = inttoptr i64 %2 to ptr
  %i.e = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.d, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.merged = phi { i64, ptr } [ %i.c, %bb.b ], [ %i.e, %bb.c ]
  ret { i64, ptr } %.merged
}

; Function Attrs: inlinehint nonlazybind uwtable
define { i64, ptr } @_ZN4time10formatting7fmt_day17hfd0169b370638536E(ptr align 8 %0, i8 %1, i8 %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 4 uses
  switch i8 %2, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = tail call { i64, ptr } @_ZN4time10formatting23format_number_pad_space17h401b95d2579ffe6dE(ptr align 8 %0, i8 %1)
  br label %_ZN4time10formatting13format_number17h4e391e5e093e6746E.exit

bb.d:                                             ; preds = %bb.a
  %i.c = tail call { i64, ptr } @_ZN4time10formatting22format_number_pad_zero17hf82be9c85120a887E(ptr align 8 %0, i8 %1)
  br label %_ZN4time10formatting13format_number17h4e391e5e093e6746E.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN4itoa6Buffer3new17hbd8b4bf19996c101E(ptr nonnull sret([40 x i8]) align 1 %i.a)
  %i.d = call { ptr, i64 } @_ZN4itoa6Buffer6format17h169d5e382b0330f8E(ptr nonnull align 1 %i.a, i8 %1) ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 0
  %i.f = extractvalue { ptr, i64 } %i.d, 1        ; 2 uses
  %i.g = call ptr @"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h1531876c03521dc6E"(ptr align 8 %0, ptr align 1 %i.e, i64 %i.f)
  %i.h = call ptr @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hdaee63d898aba923E"(ptr %i.g) ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = call { i64, ptr } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hac691a8f1f2ad439E"(ptr nonnull %i.h, ptr nonnull align 8 @120)
  br label %_ZN4time10formatting22format_number_pad_none17h2e527eb66c51fb5dE.exit.i

bb.g:                                             ; preds = %bb.e
  %i.j = inttoptr i64 %i.f to ptr
  %i.k = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.j, 1
  br label %_ZN4time10formatting22format_number_pad_none17h2e527eb66c51fb5dE.exit.i

_ZN4time10formatting22format_number_pad_none17h2e527eb66c51fb5dE.exit.i: ; preds = %bb.g, %bb.f
  %.merged.i.i.i = phi { i64, ptr } [ %i.i, %bb.f ], [ %i.k, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN4time10formatting13format_number17h4e391e5e093e6746E.exit

_ZN4time10formatting13format_number17h4e391e5e093e6746E.exit: ; preds = %bb.c, %bb.d, %_ZN4time10formatting22format_number_pad_none17h2e527eb66c51fb5dE.exit.i
  %.pn.i = phi { i64, ptr } [ %i.b, %bb.c ], [ %i.c, %bb.d ], [ %.merged.i.i.i, %_ZN4time10formatting22format_number_pad_none17h2e527eb66c51fb5dE.exit.i ]
  ret { i64, ptr } %.pn.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define { i64, ptr } @_ZN4time10formatting8fmt_hour17hcb57760783776715E(ptr align 8 %0, i8 %1, i1 zeroext %2, i8 %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 4 uses
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  switch i8 %1, label %bb.j [
    i8 0, label %bb.c
    i8 12, label %bb.c
  ]

bb.c:                                             ; preds = %bb.j, %bb.b, %bb.b, %bb.a
  %.sroa.0.0 = phi i8 [ 12, %bb.b ], [ %spec.select, %bb.j ], [ %1, %bb.a ], [ 12, %bb.b ] ; 3 uses
  switch i8 %3, label %bb.d [
    i8 0, label %bb.e
    i8 1, label %bb.f
    i8 2, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.b = tail call { i64, ptr } @_ZN4time10formatting23format_number_pad_space17h401b95d2579ffe6dE(ptr align 8 %0, i8 %.sroa.0.0)
  br label %_ZN4time10formatting13format_number17h4e391e5e093e6746E.exit

bb.f:                                             ; preds = %bb.c
  %i.c = tail call { i64, ptr } @_ZN4time10formatting22format_number_pad_zero17hf82be9c85120a887E(ptr align 8 %0, i8 %.sroa.0.0)
  br label %_ZN4time10formatting13format_number17h4e391e5e093e6746E.exit

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN4itoa6Buffer3new17hbd8b4bf19996c101E(ptr nonnull sret([40 x i8]) align 1 %i.a)
  %i.d = call { ptr, i64 } @_ZN4itoa6Buffer6format17h169d5e382b0330f8E(ptr nonnull align 1 %i.a, i8 %.sroa.0.0) ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 0
  %i.f = extractvalue { ptr, i64 } %i.d, 1        ; 2 uses
  %i.g = call ptr @"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h1531876c03521dc6E"(ptr align 8 %0, ptr align 1 %i.e, i64 %i.f)
  %i.h = call ptr @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hdaee63d898aba923E"(ptr %i.g) ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = call { i64, ptr } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hac691a8f1f2ad439E"(ptr nonnull %i.h, ptr nonnull align 8 @120)
  br label %_ZN4time10formatting22format_number_pad_none17h2e527eb66c51fb5dE.exit.i

bb.i:                                             ; preds = %bb.g
  %i.j = inttoptr i64 %i.f to ptr
  %i.k = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.j, 1
  br label %_ZN4time10formatting22format_number_pad_none17h2e527eb66c51fb5dE.exit.i

_ZN4time10formatting22format_number_pad_none17h2e527eb66c51fb5dE.exit.i: ; preds = %bb.i, %bb.h
  %.merged.i.i.i = phi { i64, ptr } [ %i.i, %bb.h ], [ %i.k, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN4time10formatting13format_number17h4e391e5e093e6746E.exit

_ZN4time10formatting13format_number17h4e391e5e093e6746E.exit: ; preds = %bb.e, %bb.f, %_ZN4time10formatting22format_number_pad_none17h2e527eb66c51fb5dE.exit.i
  %.pn.i = phi { i64, ptr } [ %i.b, %bb.e ], [ %i.c, %bb.f ], [ %.merged.i.i.i, %_ZN4time10formatting22format_number_pad_none17h2e527eb66c51fb5dE.exit.i ]
  ret { i64, ptr } %.pn.i

bb.j:                                             ; preds = %bb.b
  %i.l = icmp ult i8 %1, 12
  %i.m = add i8 %1, -12
  %spec.select = select i1 %i.l, i8 %1, i8 %i.m
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4time10formatting8fmt_year17ha4db8fbdb343b368E(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1, i32 %2, i40 %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %.sroa.45.0.extract.shift = lshr i40 %3, 24
  %.sroa.45.0.extract.trunc = trunc i40 %.sroa.45.0.extract.shift to i8
  %.sroa.5.0.extract.shift = lshr i40 %3, 32      ; 2 uses
  %.sroa.5.0.extract.trunc = trunc nuw i40 %.sroa.5.0.extract.shift to i8
  %i.c = and i40 %3, 65536
  %.not = icmp eq i40 %i.c, 0
  switch i8 %.sroa.5.0.extract.trunc, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i32 @"_ZN4core3num21_$LT$impl$u20$i32$GT$3abs17h7ded1ba4819a81f3E"(i32 %2)
  %i.e = icmp sgt i32 %i.d, 9999
  br i1 %i.e, label %bb.f, label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.f = sdiv i32 %2, 100
  %i.g = tail call i32 @"_ZN4core3num21_$LT$impl$u20$i32$GT$3abs17h7ded1ba4819a81f3E"(i32 %2)
  %i.h = icmp sgt i32 %i.g, 9999
  br i1 %i.h, label %bb.f, label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.i = srem i32 %2, 100
  %i.j = tail call i32 @"_ZN4core3num21_$LT$impl$u20$i32$GT$3abs17h7ded1ba4819a81f3E"(i32 %i.i)
  br label %bb.h

bb.f:                                             ; preds = %bb.d, %bb.c
  store ptr @121, ptr %i.a, align 8, !alias.scope !9
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 4, ptr %i.k, align 8, !alias.scope !9
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 1, ptr %i.l, align 8, !alias.scope !9
  call void @"_ZN119_$LT$time..error..format..Format$u20$as$u20$core..convert..From$LT$time..error..component_range..ComponentRange$GT$$GT$4from17h076d86da2d471720E"(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.t, %bb.s, %bb.q, %bb.o, %bb.f
  ret void

bb.h:                                             ; preds = %bb.e, %bb.r, %bb.p, %bb.j
  %_ZN4time10formatting13format_number17h65192779b60cd19cE._ZN4time10formatting13format_number17h3f1e507c229397f7E37 = phi ptr [ %_ZN4time10formatting13format_number17h65192779b60cd19cE._ZN4time10formatting13format_number17h3f1e507c229397f7E34, %bb.r ], [ %_ZN4time10formatting13format_number17h65192779b60cd19cE._ZN4time10formatting13format_number17h3f1e507c229397f7E34, %bb.p ], [ %_ZN4time10formatting13format_number17h65192779b60cd19cE._ZN4time10formatting13format_number17h3f1e507c229397f7E34, %bb.j ], [ @_ZN4time10formatting13format_number17h3f1e507c229397f7E, %bb.e ]
  %.sroa.06.02735 = phi i32 [ %.sroa.06.027.ph, %bb.r ], [ %.sroa.06.027.ph, %bb.p ], [ %.sroa.06.027.ph, %bb.j ], [ %i.j, %bb.e ]
  %.sroa.08.0 = phi i64 [ %i.ap, %bb.r ], [ %i.ao, %bb.p ], [ 0, %bb.j ], [ 0, %bb.e ]
  %i.m = tail call i32 @"_ZN4core3num21_$LT$impl$u20$i32$GT$12unsigned_abs17haf669b7c4ef2ca87E"(i32 %.sroa.06.02735)
  %i.n = tail call { i64, ptr } %_ZN4time10formatting13format_number17h65192779b60cd19cE._ZN4time10formatting13format_number17h3f1e507c229397f7E37(ptr align 8 %1, i32 %i.m, i8 %.sroa.45.0.extract.trunc), !callees !6 ; 2 uses
  %i.o = extractvalue { i64, ptr } %i.n, 0
  %i.p = extractvalue { i64, ptr } %i.n, 1
  %i.q = tail call { i64, ptr } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hd26ad8347f913047E"(i64 %i.o, ptr %i.p) ; 2 uses
  %i.r = extractvalue { i64, ptr } %i.q, 0
  %i.s = extractvalue { i64, ptr } %i.q, 1        ; 2 uses
  %i.t = trunc nuw i64 %i.r to i1
  br i1 %i.t, label %bb.s, label %bb.t

bb.i:                                             ; preds = %bb.d, %bb.c
  %.sroa.06.027.ph = phi i32 [ %2, %bb.c ], [ %i.f, %bb.d ] ; 3 uses
  %i.u = icmp eq i40 %.sroa.5.0.extract.shift, 0
  %_ZN4time10formatting13format_number17h65192779b60cd19cE._ZN4time10formatting13format_number17h3f1e507c229397f7E34 = select i1 %i.u, ptr @_ZN4time10formatting13format_number17h65192779b60cd19cE, ptr @_ZN4time10formatting13format_number17h3f1e507c229397f7E ; 3 uses
  %i.v = icmp slt i32 %2, 0
  br i1 %i.v, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %.not, label %bb.h, label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.w = tail call ptr @"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h1531876c03521dc6E"(ptr align 8 %1, ptr nonnull align 1 @65, i64 1)
  %i.x = tail call ptr @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hdaee63d898aba923E"(ptr %i.w) ; 2 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %_ZN4time10formatting5write17hbc84810202ef6dfeE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = tail call { i64, ptr } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hac691a8f1f2ad439E"(ptr nonnull %i.x, ptr nonnull align 8 @120)
  br label %_ZN4time10formatting5write17hbc84810202ef6dfeE.exit

_ZN4time10formatting5write17hbc84810202ef6dfeE.exit: ; preds = %bb.k, %bb.l
  %.merged.i = phi { i64, ptr } [ %i.y, %bb.l ], [ { i64 0, ptr inttoptr (i64 1 to ptr) }, %bb.k ] ; 2 uses
  %i.z = extractvalue { i64, ptr } %.merged.i, 0
  %i.aa = extractvalue { i64, ptr } %.merged.i, 1
  %i.ab = tail call { i64, ptr } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hd26ad8347f913047E"(i64 %i.z, ptr %i.aa) ; 2 uses
  %i.ac = extractvalue { i64, ptr } %i.ab, 0
  %i.ad = extractvalue { i64, ptr } %i.ab, 1      ; 2 uses
  %i.ae = trunc nuw i64 %i.ac to i1
  br i1 %i.ae, label %bb.q, label %bb.r

bb.m:                                             ; preds = %bb.j
  %i.af = tail call ptr @"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h1531876c03521dc6E"(ptr align 8 %1, ptr nonnull align 1 @64, i64 1)
  %i.ag = tail call ptr @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hdaee63d898aba923E"(ptr %i.af) ; 2 uses
  %.not.i21 = icmp eq ptr %i.ag, null
  br i1 %.not.i21, label %_ZN4time10formatting5write17hbc84810202ef6dfeE.exit23, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ah = tail call { i64, ptr } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hac691a8f1f2ad439E"(ptr nonnull %i.ag, ptr nonnull align 8 @120)
  br label %_ZN4time10formatting5write17hbc84810202ef6dfeE.exit23

_ZN4time10formatting5write17hbc84810202ef6dfeE.exit23: ; preds = %bb.m, %bb.n
  %.merged.i22 = phi { i64, ptr } [ %i.ah, %bb.n ], [ { i64 0, ptr inttoptr (i64 1 to ptr) }, %bb.m ] ; 2 uses
  %i.ai = extractvalue { i64, ptr } %.merged.i22, 0
  %i.aj = extractvalue { i64, ptr } %.merged.i22, 1
  %i.ak = tail call { i64, ptr } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hd26ad8347f913047E"(i64 %i.ai, ptr %i.aj) ; 2 uses
  %i.al = extractvalue { i64, ptr } %i.ak, 0
  %i.am = extractvalue { i64, ptr } %i.ak, 1      ; 2 uses
  %i.an = trunc nuw i64 %i.al to i1
  br i1 %i.an, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN4time10formatting5write17hbc84810202ef6dfeE.exit23
  tail call void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h5a12ca94ad0c07c3E"(ptr sret([24 x i8]) align 8 %0, ptr %i.am, ptr nonnull align 8 @122)
  br label %bb.g

bb.p:                                             ; preds = %_ZN4time10formatting5write17hbc84810202ef6dfeE.exit23
  %i.ao = ptrtoint ptr %i.am to i64
  br label %bb.h

bb.q:                                             ; preds = %_ZN4time10formatting5write17hbc84810202ef6dfeE.exit
  tail call void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h5a12ca94ad0c07c3E"(ptr sret([24 x i8]) align 8 %0, ptr %i.ad, ptr nonnull align 8 @124)
  br label %bb.g

bb.r:                                             ; preds = %_ZN4time10formatting5write17hbc84810202ef6dfeE.exit
  %i.ap = ptrtoint ptr %i.ad to i64
  br label %bb.h

bb.s:                                             ; preds = %bb.h
  tail call void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h5a12ca94ad0c07c3E"(ptr sret([24 x i8]) align 8 %0, ptr %i.s, ptr nonnull align 8 @123)
  br label %bb.g

bb.t:                                             ; preds = %bb.h
  %i.aq = ptrtoint ptr %i.s to i64
  %i.ar = add i64 %.sroa.08.0, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ar, ptr %i.as, align 8
  store i64 4, ptr %0, align 8
  br label %bb.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define { i64, ptr } @_ZN4time10formatting8write_if17h1412b1c3c624a8e5E(ptr align 8 %0, i1 zeroext %1, ptr align 1 %2, i64 %3) unnamed_addr #0 {
bb.a:
  br i1 %1, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h1531876c03521dc6E"(ptr align 8 %0, ptr align 1 %2, i64 %3)
  %i.b = tail call ptr @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hdaee63d898aba923E"(ptr %i.a) ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call { i64, ptr } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hac691a8f1f2ad439E"(ptr nonnull %i.b, ptr nonnull align 8 @120)
  br label %_ZN4time10formatting5write17hbc84810202ef6dfeE.exit

bb.d:                                             ; preds = %bb.b
  %i.d = inttoptr i64 %3 to ptr
  %i.e = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.d, 1
  br label %_ZN4time10formatting5write17hbc84810202ef6dfeE.exit

_ZN4time10formatting5write17hbc84810202ef6dfeE.exit: ; preds = %bb.c, %bb.d
  %.merged.i = phi { i64, ptr } [ %i.c, %bb.c ], [ %i.e, %bb.d ] ; 2 uses
  %i.f = extractvalue { i64, ptr } %.merged.i, 0
  %i.g = extractvalue { i64, ptr } %.merged.i, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN4time10formatting5write17hbc84810202ef6dfeE.exit
  %.sroa.3.0 = phi ptr [ %i.g, %_ZN4time10formatting5write17hbc84810202ef6dfeE.exit ], [ null, %bb.a ]
  %.sroa.0.0 = phi i64 [ %i.f, %_ZN4time10formatting5write17hbc84810202ef6dfeE.exit ], [ 0, %bb.a ]
  %i.h = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.i = insertvalue { i64, ptr } %i.h, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define { i64, ptr } @_ZN4time10formatting9fmt_month17hfd3481889e19cc17E(ptr align 8 %0, i8 %1, i24 %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 4 uses
  %.sroa.3.0.extract.shift = lshr i24 %2, 16
  %trunc = trunc nuw i24 %.sroa.3.0.extract.shift to i8
  switch i8 %trunc, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.j
    i8 2, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %.sroa.22.0.extract.shift = lshr i24 %2, 8
  %.sroa.22.0.extract.trunc = trunc i24 %.sroa.22.0.extract.shift to i8
  %i.b = tail call i8 @"_ZN4time5month78_$LT$impl$u20$core..convert..From$LT$time..month..Month$GT$$u20$for$u20$u8$GT$4from17h8b039cfbc923f73fE"(i8 %1) ; 3 uses
  switch i8 %.sroa.22.0.extract.trunc, label %bb.d [
    i8 0, label %bb.e
    i8 1, label %bb.f
    i8 2, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = tail call { i64, ptr } @_ZN4time10formatting23format_number_pad_space17h401b95d2579ffe6dE(ptr align 8 %0, i8 %i.b)
  br label %_ZN4time10formatting13format_number17h4e391e5e093e6746E.exit

bb.f:                                             ; preds = %bb.c
  %i.d = tail call { i64, ptr } @_ZN4time10formatting22format_number_pad_zero17hf82be9c85120a887E(ptr align 8 %0, i8 %i.b)
  br label %_ZN4time10formatting13format_number17h4e391e5e093e6746E.exit

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN4itoa6Buffer3new17hbd8b4bf19996c101E(ptr nonnull sret([40 x i8]) align 1 %i.a)
  %i.e = call { ptr, i64 } @_ZN4itoa6Buffer6format17h169d5e382b0330f8E(ptr nonnull align 1 %i.a, i8 %i.b) ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0
  %i.g = extractvalue { ptr, i64 } %i.e, 1        ; 2 uses
  %i.h = call ptr @"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h1531876c03521dc6E"(ptr align 8 %0, ptr align 1 %i.f, i64 %i.g)
  %i.i = call ptr @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hdaee63d898aba923E"(ptr %i.h) ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = call { i64, ptr } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hac691a8f1f2ad439E"(ptr nonnull %i.i, ptr nonnull align 8 @120)
  br label %_ZN4time10formatting22format_number_pad_none17h2e527eb66c51fb5dE.exit.i

bb.i:                                             ; preds = %bb.g
  %i.k = inttoptr i64 %i.g to ptr
  %i.l = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.k, 1
  br label %_ZN4time10formatting22format_number_pad_none17h2e527eb66c51fb5dE.exit.i

_ZN4time10formatting22format_number_pad_none17h2e527eb66c51fb5dE.exit.i: ; preds = %bb.i, %bb.h
  %.merged.i.i.i = phi { i64, ptr } [ %i.j, %bb.h ], [ %i.l, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN4time10formatting13format_number17h4e391e5e093e6746E.exit

bb.j:                                             ; preds = %bb.a
  %i.m = tail call i8 @"_ZN4time5month78_$LT$impl$u20$core..convert..From$LT$time..month..Month$GT$$u20$for$u20$u8$GT$4from17h8b039cfbc923f73fE"(i8 %1)
  %i.n = tail call i64 @"_ZN38_$LT$T$u20$as$u20$num_conv..Extend$GT$6extend17h74c0f253a2788a84E"(i8 %i.m)
  %i.o = add i64 %i.n, -1                         ; 3 uses
  %i.p = icmp ult i64 %i.o, 12
end_hunk_0
begin_hunk_1_@_ZN4time18format_description5parse4Span13shrink_to_end17hbb089fe12f5341baE

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_ZN5alloc6string6String3new17h32198fabb13975b4E(ptr sret([24 x i8]) align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { i32, i32 } @_ZN4time18format_description5parse4Span15shrink_to_start17h1b59f0922e12fdafE(ptr align 4) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_ZN5alloc6string6String15from_utf8_lossy17h21794fcc38759ff3E(ptr sret([24 x i8]) align 8, ptr align 1, i64) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @"_ZN5alloc6borrow12Cow$LT$B$GT$10into_owned17hebae8966dd2d05fdE"(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h9e6a97d16c207d89E"(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @"_ZN4core3ptr102drop_in_place$LT$alloc..boxed..Box$LT$$u5b$time..format_description..parse..ast..Modifier$u5d$$GT$$GT$17h965b19f67083d4e7E"(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @"_ZN4core3ptr90drop_in_place$LT$alloc..vec..Vec$LT$time..format_description..parse..ast..Modifier$GT$$GT$17h4bdffdd3fea09999E"(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @"_ZN5alloc3vec12Vec$LT$T$GT$3new17h0cc03baf6abeb6c8E"(ptr sret([24 x i8]) align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hb21fef2d1eab4f30E"(ptr align 8, ptr align 8, i64, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @"_ZN4core3ptr151drop_in_place$LT$core..result..Result$LT$time..format_description..parse..ast..NestedFormatDescription$C$time..format_description..parse..Error$GT$$GT$17haa45de90fd5d8324E"(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h2dbc596be69752bcE"(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @"_ZN4core3ptr105drop_in_place$LT$alloc..vec..Vec$LT$time..format_description..parse..ast..NestedFormatDescription$GT$$GT$17h67f5f53de8345b8dE"(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h0f6a3ec0be0ec1feE"(ptr sret([48 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @"_ZN4core3ptr82drop_in_place$LT$time..format_description..parse..ast..NestedFormatDescription$GT$17hfcf69c65c714ae84E"(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17haeff18409c283b00E"(ptr sret([56 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @"_ZN4core3ptr163drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$time..format_description..parse..lexer..Token$C$time..format_description..parse..Error$GT$$GT$$GT$17h4abfe422d9108476E"(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare align 8 ptr @"_ZN4core4iter8adapters8peekable17Peekable$LT$I$GT$4peek17h3bfb5a67378f9f97E"(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_ZN4time18format_description5parse15attach_location17h1e59d8ca073f3a69E(ptr sret([24 x i8]) align 8, ptr, ptr) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_ZN4core4iter6traits8iterator8Iterator8peekable17h895486b89911e019E(ptr sret([48 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_ZN4core4iter7sources7from_fn7from_fn17h479ecac3fce88a87E(ptr sret([80 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_ZN4core4iter6traits8iterator8Iterator8peekable17h499cf3b285ff5d1eE(ptr sret([128 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i32 } @"_ZN108_$LT$core..iter..adapters..peekable..Peekable$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h97edb4c0e81dc953E"(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @"_ZN4core3ops5range20RangeFrom$LT$Idx$GT$8contains17hb11f13c941be23f2E"(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { i32, i32 } @_ZN4time18format_description5parse8Location2to17h546de282250f536bE(i32, i32) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i32 } @"_ZN4core4iter8adapters8peekable17Peekable$LT$I$GT$7next_if17ha8e8640443c70e5eE"(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, i32 } @"_ZN4core4iter8adapters8peekable17Peekable$LT$I$GT$7next_if17h3be51aaa288d5ec7E"(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @"_ZN4core3num20_$LT$impl$u20$u8$GT$19is_ascii_whitespace17hd50d71801168dd37E"(ptr align 1) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i32 } @"_ZN4core4iter8adapters8peekable17Peekable$LT$I$GT$7next_if17hade489559f24b3f8E"(ptr align 8, ptr align 1) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @"_ZN119_$LT$time..error..format..Format$u20$as$u20$core..convert..From$LT$time..error..component_range..ComponentRange$GT$$GT$4from17h076d86da2d471720E"(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$16deallocating_end17ha2195f23b815e2c5E"(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17h0a1aaac77d001f3eE"(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64, i64) unnamed_addr #19

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #16

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64, i64 allocalign) unnamed_addr #20

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr allocptr, i64, i64) unnamed_addr #21

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @"_ZN57_$LT$std..path..PathBuf$u20$as$u20$core..clone..Clone$GT$5clone17h41c0e1508b9461ceE"(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_ZN3std3sys2fs4unix23debug_assert_fd_is_open17hbfa9dc01bc11c8b9E(i32) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @close(i32) unnamed_addr #16

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, i64 } @_ZN4core3fmt9Arguments6as_str17h190db3482ade89aaE(ptr align 8) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$3msg17h98225272419c4fd4E"(ptr align 1, i64) unnamed_addr #22

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_ZN5alloc3fmt6format17hc8c12c70f884c57bE(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$3msg17h0cbd75cbd2030250E"(ptr align 8) unnamed_addr #22

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr align 8, ptr align 1, i64) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr align 8, ptr align 1, i64, ptr align 1, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h09b5b6b62af2a65eE"(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_ZN4core3fmt2rt8Argument11new_display17ha284d397608a9280E(ptr sret([16 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @"_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$6new_v117hfb2e622652f23766E"(ptr sret([48 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare i64 @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$20offset_from_unsigned17hb6350ab9e6140c10E"(ptr, ptr) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare align 1 ptr @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h41bcefbc207482d3E"(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17ha8c5b3bcdfa13043E"(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @"_ZN4core3ptr152drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$std..ffi..os_str..OsString$C$core..option..Option$LT$std..ffi..os_str..OsString$GT$$GT$$GT$17h1cb7940334e48c71E"(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @"_ZN4core3ptr250drop_in_place$LT$$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$std..ffi..os_str..OsString$C$core..option..Option$LT$std..ffi..os_str..OsString$GT$$C$alloc..alloc..Global$GT$$GT$17h44f5fa1ef972a6e2E"(ptr align 8) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #13

attributes #0 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { cold inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { cold inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { nounwind }
attributes #24 = { noreturn }
attributes #25 = { cold }
attributes #26 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.91.1 (ed61e7d7e 2025-11-07)"}
!6 = !{ptr @_ZN4time10formatting13format_number17h3f1e507c229397f7E, ptr @_ZN4time10formatting13format_number17h65192779b60cd19cE}
!7 = distinct !{!7, i1 false, !"_ZN4time5error15component_range14ComponentRange11conditional17h59aebecf876b432fE"}
!8 = distinct !{!8, !7, !"_ZN4time5error15component_range14ComponentRange11conditional17h59aebecf876b432fE: argument 0"}
!9 = !{!8}
end_hunk_1
