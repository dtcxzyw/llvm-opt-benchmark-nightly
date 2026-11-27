Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/vergen_gitcl-b92187c9e2c5b0e5.vergen_gitcl.a0eaf33017eefd6d-cgu.5?download=true
inline.NumInlined: 119
inline.NumDeleted: 55
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@"_ZN4time18format_description5parse11format_item159_$LT$impl$u20$core..convert..From$LT$time..format_description..parse..format_item..Component$GT$$u20$for$u20$time..format_description..component..Component$GT$4from17h33305e6033a83577E":bb.a
  %i.bb = tail call zeroext i1 @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h60f6d44c9e90f7b2E"(i1 zeroext %i.ba, ptr nonnull align 8 @24)
  %i.bc = zext i1 %i.az to i8
  %.sroa.34.sroa.0.0.extract.trunc38 = zext i1 %i.bb to i8
  br label %bb.t

bb.r:                                             ; preds = %bb.a
  %i.bd = tail call i8 @"_ZN4core6option15Option$LT$T$GT$17unwrap_or_default17h32b26c12fdf2493aE"(i8 %.sroa.229.0.extract.trunc)
  %i.be = tail call i8 @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h3b367b7df80888afE"(i8 %i.bd, ptr nonnull align 8 @24)
  %i.bf = tail call i8 @"_ZN4core6option15Option$LT$T$GT$17unwrap_or_default17hc09033fc15b207dbE"(i8 %.sroa.18.sroa.0.0.extract.trunc)
  %i.bg = tail call i8 @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h2f9bc21addba9fc9E"(i8 %i.bf, ptr nonnull align 8 @24)
  br label %bb.t

bb.s:                                             ; preds = %bb.a
  %.sroa.5.0.extract.shift = lshr i48 %0, 40
  %.sroa.5.0.extract.trunc = trunc nuw i48 %.sroa.5.0.extract.shift to i8
  %.sroa.4.0.extract.shift = lshr i48 %0, 32
  %.sroa.4.0.extract.trunc = trunc i48 %.sroa.4.0.extract.shift to i8
  %i.bh = tail call i8 @"_ZN4core6option15Option$LT$T$GT$17unwrap_or_default17h32b26c12fdf2493aE"(i8 %.sroa.4.0.extract.trunc)
  %i.bi = tail call i8 @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h3b367b7df80888afE"(i8 %i.bh, ptr nonnull align 8 @24)
  %i.bj = tail call i8 @"_ZN4core6option15Option$LT$T$GT$17unwrap_or_default17h662052ce3567670eE"(i8 %.sroa.5.0.extract.trunc)
  %i.bk = tail call i8 @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h42db0b474e215b07E"(i8 %i.bj, ptr nonnull align 8 @24)
  %i.bl = tail call zeroext i1 @"_ZN4core6option15Option$LT$T$GT$17unwrap_or_default17hc6be724b92774c3cE"(i8 %.sroa.229.0.extract.trunc)
  %i.bm = tail call zeroext i1 @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h61190ad1de2c36c5E"(i1 zeroext %i.bl, ptr nonnull align 8 @24)
  %i.bn = tail call zeroext i1 @"_ZN4core6option15Option$LT$T$GT$17unwrap_or_default17hd1dd9c7acc7da937E"(i8 %.sroa.18.sroa.0.0.extract.trunc)
  %i.bo = tail call zeroext i1 @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h2b533962951ffd76E"(i1 zeroext %i.bn, ptr nonnull align 8 @24)
  %i.bp = tail call zeroext i1 @"_ZN4core6option15Option$LT$T$GT$17unwrap_or_default17h2e1701e88c5f4878E"(i8 %.sroa.18.sroa.10.0.extract.trunc)
  %i.bq = tail call zeroext i1 @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h34d2fa7bc363a5ebE"(i1 zeroext %i.bp, ptr nonnull align 8 @24)
  %i.br = zext i1 %i.bm to i8
  %.sroa.34.sroa.0.0.extract.trunc = zext i1 %i.bo to i8
  %.sroa.34.sroa.10.0.extract.trunc = zext i1 %i.bq to i8
  %.sroa.7.3.insert.ext = zext i8 %i.bk to i16
  %.sroa.7.3.insert.shift = shl nuw i16 %.sroa.7.3.insert.ext, 8
  %.sroa.557.3.insert.ext = zext i8 %i.bi to i16
  %.sroa.557.3.insert.insert = or disjoint i16 %.sroa.7.3.insert.shift, %.sroa.557.3.insert.ext
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.e, %bb.d, %bb.c
  %.sroa.030.0 = phi i8 [ 0, %bb.c ], [ 16, %bb.d ], [ 6, %bb.e ], [ 14, %bb.u ], [ 7, %bb.g ], [ 1, %bb.h ], [ 11, %bb.i ], [ 12, %bb.j ], [ 13, %bb.k ], [ 2, %bb.l ], [ 8, %bb.m ], [ 9, %bb.n ], [ 10, %bb.o ], [ 15, %bb.p ], [ 3, %bb.q ], [ 4, %bb.r ], [ 5, %bb.s ]
  %.sroa.18.0 = phi i8 [ %i.c, %bb.c ], [ %i.f, %bb.d ], [ %i.k, %bb.e ], [ undef, %bb.u ], [ %i.o, %bb.g ], [ %i.v, %bb.h ], [ %i.aa, %bb.i ], [ %i.ac, %bb.j ], [ %i.ae, %bb.k ], [ %i.ag, %bb.l ], [ %i.al, %bb.m ], [ %i.ao, %bb.n ], [ %i.aq, %bb.o ], [ %i.av, %bb.p ], [ %i.bc, %bb.q ], [ %i.be, %bb.r ], [ %i.br, %bb.s ]
  %.sroa.40.0 = phi i16 [ undef, %bb.c ], [ undef, %bb.d ], [ undef, %bb.e ], [ undef, %bb.u ], [ undef, %bb.g ], [ undef, %bb.h ], [ undef, %bb.i ], [ undef, %bb.j ], [ undef, %bb.k ], [ undef, %bb.l ], [ undef, %bb.m ], [ undef, %bb.n ], [ undef, %bb.o ], [ undef, %bb.p ], [ undef, %bb.q ], [ undef, %bb.r ], [ %.sroa.557.3.insert.insert, %bb.s ]
  %.sroa.34.sroa.0.0 = phi i8 [ undef, %bb.c ], [ undef, %bb.d ], [ %i.h, %bb.e ], [ %.sroa.34.sroa.0.0.extract.trunc39, %bb.u ], [ undef, %bb.g ], [ %i.q, %bb.h ], [ %i.z, %bb.i ], [ undef, %bb.j ], [ undef, %bb.k ], [ undef, %bb.l ], [ %i.am, %bb.m ], [ undef, %bb.n ], [ undef, %bb.o ], [ %i.as, %bb.p ], [ %.sroa.34.sroa.0.0.extract.trunc38, %bb.q ], [ %i.bg, %bb.r ], [ %.sroa.34.sroa.0.0.extract.trunc, %bb.s ]
  %.sroa.34.sroa.10.0 = phi i8 [ undef, %bb.c ], [ undef, %bb.d ], [ undef, %bb.e ], [ %.sroa.34.sroa.10.0.extract.trunc45, %bb.u ], [ undef, %bb.g ], [ %i.s, %bb.h ], [ undef, %bb.i ], [ undef, %bb.j ], [ undef, %bb.k ], [ undef, %bb.l ], [ undef, %bb.m ], [ undef, %bb.n ], [ undef, %bb.o ], [ undef, %bb.p ], [ %i.ax, %bb.q ], [ undef, %bb.r ], [ %.sroa.34.sroa.10.0.extract.trunc, %bb.s ]
  %.sroa.34.sroa.10.0.insert.ext = zext i8 %.sroa.34.sroa.10.0 to i16
  %.sroa.34.sroa.10.0.insert.shift = shl nuw i16 %.sroa.34.sroa.10.0.insert.ext, 8
  %.sroa.34.sroa.0.0.insert.ext = zext i8 %.sroa.34.sroa.0.0 to i16
  %.sroa.34.sroa.0.0.insert.insert = or disjoint i16 %.sroa.34.sroa.10.0.insert.shift, %.sroa.34.sroa.0.0.insert.ext
  %.sroa.40.0.insert.ext = zext i16 %.sroa.40.0 to i48
  %.sroa.40.0.insert.shift = shl nuw i48 %.sroa.40.0.insert.ext, 32
  %.sroa.34.0.insert.ext = zext i16 %.sroa.34.sroa.0.0.insert.insert to i48
  %.sroa.34.0.insert.shift = shl nuw nsw i48 %.sroa.34.0.insert.ext, 16
  %.sroa.34.0.insert.insert = or disjoint i48 %.sroa.34.0.insert.shift, %.sroa.40.0.insert.shift
  %.sroa.18.0.insert.ext = zext i8 %.sroa.18.0 to i48
  %.sroa.18.0.insert.shift = shl nuw nsw i48 %.sroa.18.0.insert.ext, 8
  %.sroa.18.0.insert.insert = or disjoint i48 %.sroa.34.0.insert.insert, %.sroa.18.0.insert.shift
  %.sroa.030.0.insert.ext = zext nneg i8 %.sroa.030.0 to i48
  %.sroa.030.0.insert.insert = or disjoint i48 %.sroa.18.0.insert.insert, %.sroa.030.0.insert.ext
  ret i48 %.sroa.030.0.insert.insert

bb.u:                                             ; preds = %bb.f
  %i.bs = tail call i16 @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h6933c5abe7007198E"(i16 %.sroa.18.sroa.0.0.insert.insert, ptr nonnull align 8 @24) ; 2 uses
  %.sroa.34.sroa.0.0.extract.trunc39 = trunc i16 %i.bs to i8
  %.sroa.34.sroa.10.0.extract.shift44 = lshr i16 %i.bs, 8
  %.sroa.34.sroa.10.0.extract.trunc45 = trunc nuw i16 %.sroa.34.sroa.10.0.extract.shift44 to i8
  br label %bb.t

bb.v:                                             ; preds = %bb.f
  call void @"_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$9new_const17h509c9544fece2df2E"(ptr nonnull sret([48 x i8]) align 8 %i.a, ptr nonnull align 8 @26)
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr nonnull align 8 %i.a, ptr nonnull align 8 @24) #18
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_ZN4time18format_description5parse14parse_borrowed17h7523491c24dfef13E(ptr sret([48 x i8]) align 8 %0, ptr align 1 %1, i64 %2) unnamed_addr #1 personality ptr @rust_eh_personality !guid !84 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 2 uses
  %i.b = alloca [48 x i8], align 8                ; 2 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [128 x i8], align 8               ; 4 uses
  call void @_ZN4time18format_description5parse5lexer3lex17h697008466f1d5d91E(ptr nonnull sret([128 x i8]) align 8 %i.d, ptr align 1 %1, i64 %2)
  %i.e = invoke align 8 ptr @_ZN4time18format_description5parse3ast5parse17hfad865a54b648755E(ptr nonnull align 8 %i.d)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.h, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr205drop_in_place$LT$time..format_description..parse..lexer..Lexed$LT$core..iter..sources..from_fn..FromFn$LT$time..format_description..parse..lexer..lex$LT$1_usize$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hf1ad48a1628fd49bE"(ptr nonnull align 8 %i.d) #16
          to label %bb.l unwind label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.g = invoke align 8 ptr @_ZN4time18format_description5parse11format_item5parse17h100ac8381434b565E(ptr align 8 %i.e)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = invoke align 8 ptr @_ZN4core4iter6traits8iterator8Iterator3map17hccf7a7e37d17da45E(ptr align 8 %i.g)
          to label %bb.e unwind label %bb.b

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4core4iter6traits8iterator8Iterator7collect17hb0354f91523e61a0E(ptr nonnull sret([48 x i8]) align 8 %i.b, ptr align 8 %i.h)
          to label %bb.f unwind label %bb.b

bb.f:                                             ; preds = %bb.e
  invoke void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hac1a2df329c8c3a6E"(ptr nonnull sret([48 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b)
          to label %bb.g unwind label %bb.b

bb.g:                                             ; preds = %bb.f
  %i.i = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.i, 7
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  invoke void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h6168d4bc5c2e57caE"(ptr sret([48 x i8]) align 8 %0, ptr nonnull align 8 %i.a, ptr nonnull align 8 @28)
          to label %bb.j unwind label %bb.b

bb.i:                                             ; preds = %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  store i64 7, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  call void @"_ZN4core3ptr205drop_in_place$LT$time..format_description..parse..lexer..Lexed$LT$core..iter..sources..from_fn..FromFn$LT$time..format_description..parse..lexer..lex$LT$1_usize$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hf1ad48a1628fd49bE"(ptr nonnull align 8 %i.d)
  ret void

bb.k:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #17
  unreachable

bb.l:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN4time18format_description5parse14parse_borrowed28_$u7b$$u7b$closure$u7d$$u7d$17h41a81f5116cdc7f7E"(ptr sret([48 x i8]) align 8 %0, ptr nofree readnone align 1 captures(none) %1, ptr align 8 %2) unnamed_addr #1 !guid !85 {
bb.a:
  tail call void @"_ZN4core6result19Result$LT$T$C$E$GT$8and_then17hf4b6dc02943e5b94E"(ptr sret([48 x i8]) align 8 %0, ptr align 8 %2)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_ZN4time18format_description5parse15attach_location17h1e59d8ca073f3a69E(ptr sret([24 x i8]) align 8 %0, ptr %1, ptr %2) unnamed_addr #1 !guid !86 {
bb.a:
  tail call void @_ZN4core4iter6traits8iterator8Iterator3map17h09b1f7d7dfbc30ffE(ptr sret([24 x i8]) align 8 %0, ptr %1, ptr %2, i32 0)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define { ptr, i32 } @"_ZN4time18format_description5parse15attach_location28_$u7b$$u7b$closure$u7d$$u7d$17h69284863d295e30cE"(ptr nofree align 4 captures(none) %0, ptr align 1 %1) unnamed_addr #4 !guid !87 {
bb.a:
  %i.a = load i32, ptr %0, align 4                ; 2 uses
  %i.b = add i32 %i.a, 1
  store i32 %i.b, ptr %0, align 4
  %i.c = insertvalue { ptr, i32 } poison, ptr %1, 0
  %i.d = insertvalue { ptr, i32 } %i.c, i32 %i.a, 1
  ret { ptr, i32 } %i.d
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { i32, i32 } @_ZN4time18format_description5parse4Span15shrink_to_after17hc0d1699f8019f988E(ptr nofree readonly align 4 captures(none) %0, i32 %1) unnamed_addr #0 !guid !88 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %i.b = add i32 %1, 1
  %i.c = add i32 %i.b, %i.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %i.f = insertvalue { i32, i32 } poison, i32 %i.c, 0
  %i.g = insertvalue { i32, i32 } %i.f, i32 %i.e, 1
  ret { i32, i32 } %i.g
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { i32, i32 } @_ZN4time18format_description5parse4Span15shrink_to_start17h1b59f0922e12fdafE(ptr nofree readonly align 4 captures(none) %0) unnamed_addr #0 !guid !89 {
bb.a:
  %i.a = load i32, ptr %0, align 4                ; 2 uses
  %i.b = insertvalue { i32, i32 } poison, i32 %i.a, 0
  %i.c = insertvalue { i32, i32 } %i.b, i32 %i.a, 1
  ret { i32, i32 } %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { i32, i32 } @_ZN4time18format_description5parse4Span16shrink_to_before17h730131644f8ea63fE(ptr nofree readonly align 4 captures(none) %0, i32 %1) unnamed_addr #0 !guid !90 {
bb.a:
  %i.a = load i32, ptr %0, align 4                ; 2 uses
  %i.b = add i32 %1, -1
  %i.c = add i32 %i.b, %i.a
  %i.d = insertvalue { i32, i32 } poison, i32 %i.a, 0
  %i.e = insertvalue { i32, i32 } %i.d, i32 %i.c, 1
  ret { i32, i32 } %i.e
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_ZN4time18format_description5parse4Span5error17h2a707dc76c7e33b4E(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, i32 %1, i32 %2, ptr align 1 %3, i64 %4) unnamed_addr #5 !guid !91 {
bb.a:
  store ptr %3, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %4, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %1, ptr %i.b, align 8
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %2, ptr %5, align 4
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_ZN4time18format_description5parse5parse17hefb7bd7fc2bce224E(ptr sret([48 x i8]) align 8 %0, ptr align 1 %1, i64 %2) unnamed_addr #1 !guid !92 {
bb.a:
  tail call void @_ZN4time18format_description5parse14parse_borrowed17h7523491c24dfef13E(ptr sret([48 x i8]) align 8 %0, ptr align 1 %1, i64 %2)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @_ZN4time18format_description5parse6unused17h7850ff6521e2b4d2E(ptr nofree readnone align 8 captures(none) %0) unnamed_addr #2 !guid !93 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @_ZN4time18format_description5parse6unused17h862308da8129a9b1E(i32 %0) unnamed_addr #2 !guid !94 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @_ZN4time18format_description5parse6unused17hd990d99fdbf04ea8E(ptr nofree readnone align 8 captures(none) %0) unnamed_addr #2 !guid !95 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { i32, i32 } @_ZN4time18format_description5parse8Location2to17h546de282250f536bE(i32 %0, i32 %1) unnamed_addr #2 !guid !96 {
bb.a:
  %i.a = insertvalue { i32, i32 } poison, i32 %0, 0
  %i.b = insertvalue { i32, i32 } %i.a, i32 %1, 1
  ret { i32, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_ZN4time18format_description5parse8Location5error17h90555a54a2ef1507E(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, i32 %1, ptr align 1 %2, i64 %3) unnamed_addr #5 !guid !97 {
bb.a:
  store ptr %2, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %1, ptr %i.b, align 8
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %1, ptr %4, align 4
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden i32 @_ZN4time18format_description5parse8Location6offset17h309e183623c171d7E(ptr nofree readonly align 4 captures(none) %0, i32 %1) unnamed_addr #0 !guid !98 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %i.b = add i32 %i.a, %1
  ret i32 %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { i32, i32 } @_ZN4time18format_description5parse8Location7to_self17h8618360cfaa476d4E(i32 %0) unnamed_addr #2 !guid !99 {
bb.a:
  %i.a = insertvalue { i32, i32 } poison, i32 %0, 0
  %i.b = insertvalue { i32, i32 } %i.a, i32 %0, 1
  ret { i32, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_ZN4time19primitive_date_time17PrimitiveDateTime3new17hc021e308285ac83eE(ptr nofree writeonly sret([12 x i8]) align 4 captures(none) initializes((0, 12)) %0, i32 %1, i64 %2) unnamed_addr #5 !guid !100 {
bb.a:
  store i64 %2, ptr %0, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.a, align 4
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, i64 } @"_ZN55_$LT$$RF$T$u20$as$u20$core..convert..AsRef$LT$U$GT$$GT$6as_ref17h1203e1e79b094260E"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #1 !guid !101 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call { ptr, i64 } @"_ZN105_$LT$std..ffi..os_str..OsString$u20$as$u20$core..ops..index..Index$LT$core..ops..range..RangeFull$GT$$GT$5index17h36f1c522d196d81dE"(ptr align 8 %i.a, ptr nonnull align 8 @36)
  ret { ptr, i64 } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @"_ZN55_$LT$$RF$T$u20$as$u20$core..convert..AsRef$LT$U$GT$$GT$6as_ref17h1e1d01f4f3ccc16dE"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 !guid !102 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 %i.c, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @"_ZN57_$LT$std..path..PathBuf$u20$as$u20$core..clone..Clone$GT$5clone17h41c0e1508b9461ceE"(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr align 8 %1) unnamed_addr #1 !guid !103 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  call void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h2eb78075a4cdc717E"(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr align 8 %1, ptr nonnull align 8 @32)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden i8 @"_ZN57_$LT$u8$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17h2d860efe989114f2E"(i8 %0) unnamed_addr #1 !guid !104 {
bb.a:
  %i.a = tail call { i32, i32 } @"_ZN4core3num20_$LT$impl$u20$u8$GT$14checked_ilog1017ha6555dc80ff5a57cE"(i8 %0) ; 2 uses
  %i.b = extractvalue { i32, i32 } %i.a, 0
  %i.c = trunc i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i32, i32 } %i.a, 1
  %i.e = tail call i8 @"_ZN40_$LT$T$u20$as$u20$num_conv..Truncate$GT$8truncate17h95895ef4fec8d461E"(i32 %i.d)
  %i.f = add i8 %i.e, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i8 [ %i.f, %bb.b ], [ 1, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Debug$GT$3fmt17h413b918065e880bcE"(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #1 !guid !105 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = tail call zeroext i1 @"_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h310aa922679ce93dE"(ptr align 1 %i.b, i64 %i.d, ptr align 8 %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden i8 @"_ZN58_$LT$u16$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hb1b5e14c5786059cE"(i16 %0) unnamed_addr #1 !guid !106 {
bb.a:
  %i.a = tail call { i32, i32 } @"_ZN4core3num21_$LT$impl$u20$u16$GT$14checked_ilog1017h6344d332603ecab4E"(i16 %0) ; 2 uses
  %i.b = extractvalue { i32, i32 } %i.a, 0
  %i.c = trunc i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i32, i32 } %i.a, 1
  %i.e = tail call i8 @"_ZN40_$LT$T$u20$as$u20$num_conv..Truncate$GT$8truncate17h95895ef4fec8d461E"(i32 %i.d)
  %i.f = add i8 %i.e, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i8 [ %i.f, %bb.b ], [ 1, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden i8 @"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17h068485e2b25f7679E"(i32 %0) unnamed_addr #1 !guid !107 {
bb.a:
  %i.a = tail call { i32, i32 } @"_ZN4core3num21_$LT$impl$u20$u32$GT$14checked_ilog1017h791846d3c2dce3e2E"(i32 %0) ; 2 uses
  %i.b = extractvalue { i32, i32 } %i.a, 0
  %i.c = trunc i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i32, i32 } %i.a, 1
  %i.e = tail call i8 @"_ZN40_$LT$T$u20$as$u20$num_conv..Truncate$GT$8truncate17h95895ef4fec8d461E"(i32 %i.d)
  %i.f = add i8 %i.e, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i8 [ %i.f, %bb.b ], [ 1, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_ZN5alloc11collections5btree3mem7replace17h556b3d9724390a05E(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr nofree align 8 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !108 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [48 x i8], align 8                ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  invoke void @"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$27deallocating_next_unchecked28_$u7b$$u7b$closure$u7d$$u7d$17hc4d49e58aeec9442E"(ptr nonnull sret([48 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr72drop_in_place$LT$alloc..collections..btree..mem..replace..PanicGuard$GT$17hcd739330c1783287E"(ptr nonnull align 1 %i.a) #16
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #17
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN5alloc11collections5btree4node127NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$21deallocate_and_ascend17h78d598b01dafac2eE"(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr %1, i64 %2) unnamed_addr #3 personality ptr @rust_eh_personality !guid !109 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = load ptr, ptr %1, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %"_ZN5alloc11collections5btree4node40NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$6ascend17h42d758a723e14929E.exit.thread", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %2, 1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 536
  %i.e = load i16, ptr %i.d, align 8
  %i.f = zext i16 %i.e to i64
  br label %"_ZN5alloc11collections5btree4node40NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$6ascend17h42d758a723e14929E.exit.thread"

"_ZN5alloc11collections5btree4node40NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$6ascend17h42d758a723e14929E.exit.thread": ; preds = %bb.a, %bb.b
  %.sroa.3.sroa.0.0 = phi i64 [ %i.c, %bb.b ], [ undef, %bb.a ]
  %.sroa.3.sroa.2.0 = phi i64 [ %i.f, %bb.b ], [ undef, %bb.a ]
  %.not = icmp eq i64 %2, 0
  %. = select i1 %.not, i64 544, i64 640
  call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h48e4f36b81ed8d6dE"(ptr nonnull align 1 %i.a, ptr nonnull %1, i64 8, i64 %.)
  store ptr %i.b, ptr %0, align 8
  %.sroa.3.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.3.sroa.0.0, ptr %.sroa.3.0..sroa_idx2, align 8
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.3.sroa.2.0, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h31e22435ffbf5aa2E"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality !guid !110 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.e
  store ptr %i.h, ptr %i.a, align 8
  invoke void @"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hb68ee8388772b5f8E"(ptr nonnull align 8 %i.f)
          to label %bb.c unwind label %bb.b

end_hunk_0
begin_hunk_1_@"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$17deallocating_next17heddf05deacc6d536E":bb.a
  %.pn31.in.i.unr = phi i64 [ %.sroa.3.0.lcssa, %bb.c ], [ %.pn31.i.prol, %.prol.preheader ]
  %i.r = icmp ult i64 %.sroa.3.0.lcssa, 8
  br i1 %i.r, label %"_ZN5alloc11collections5btree8navigate235_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$C$alloc..collections..btree..node..marker..KV$GT$$GT$14next_leaf_edge17hf3dd15f1ffbb476dE.exit", label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn33.in.i = phi ptr [ %i.aa, %.new ], [ %.pn33.in.i.unr, %.prol.loopexit ]
  %.pn31.in.i = phi i64 [ %.pn31.i.7, %.new ], [ %.pn31.in.i.unr, %.prol.loopexit ]
  %.pn33.i = load ptr, ptr %.pn33.in.i, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %.pn33.i, i64 544
  %.pn33.i.1 = load ptr, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %.pn33.i.1, i64 544
  %.pn33.i.2 = load ptr, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %.pn33.i.2, i64 544
  %.pn33.i.3 = load ptr, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %.pn33.i.3, i64 544
  %.pn33.i.4 = load ptr, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %.pn33.i.4, i64 544
  %.pn33.i.5 = load ptr, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %.pn33.i.5, i64 544
  %.pn33.i.6 = load ptr, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.pn33.i.6, i64 544
  %.pn31.i.7 = add i64 %.pn31.in.i, -8            ; 2 uses
  %.pn33.i.7 = load ptr, ptr %i.y, align 8        ; 2 uses
  %i.z = icmp eq i64 %.pn31.i.7, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %.pn33.i.7, i64 544
  br i1 %i.z, label %"_ZN5alloc11collections5btree8navigate235_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$C$alloc..collections..btree..node..marker..KV$GT$$GT$14next_leaf_edge17hf3dd15f1ffbb476dE.exit", label %.new

"_ZN5alloc11collections5btree8navigate235_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$C$alloc..collections..btree..node..marker..KV$GT$$GT$14next_leaf_edge17hf3dd15f1ffbb476dE.exit": ; preds = %.prol.loopexit, %.new, %bb.b
  %.sroa.5.0 = phi i64 [ %i.n, %bb.b ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.0.050 = phi ptr [ %.sroa.0.0.lcssa, %bb.b ], [ %.pn33.i.lcssa.unr, %.prol.loopexit ], [ %.pn33.i.7, %.new ]
  store ptr %.sroa.0.050, ptr %0, align 8
  %.sroa.037.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.037.sroa.2.0..sroa_idx, align 8
  %.sroa.037.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.0, ptr %.sroa.037.sroa.3.0..sroa_idx, align 8
  %.sroa.238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.0.0.lcssa, ptr %.sroa.238.0..sroa_idx, align 8
  %.sroa.339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.3.0.lcssa, ptr %.sroa.339.0..sroa_idx, align 8
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.4.0.lcssa, ptr %.sroa.440.0..sroa_idx, align 8
  br label %bb.f

bb.d:                                             ; preds = %.lr.ph
  %i.ab = add i64 %.sroa.3.059, 1                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.060, i64 536
  %i.ad = load i16, ptr %i.ac, align 8            ; 2 uses
  %.not.i = icmp eq i64 %.sroa.3.059, 0
  %..i = select i1 %.not.i, i64 544, i64 640
  call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h48e4f36b81ed8d6dE"(ptr nonnull align 1 %i.a, ptr nonnull %.sroa.0.060, i64 8, i64 %..i)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 538
  %i.af = load i16, ptr %i.ae, align 2
  %i.ag = icmp ult i16 %i.ad, %i.af
  br i1 %i.ag, label %._crit_edge.loopexit, label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %.not.i54 = icmp eq i64 %.sroa.3.059, 0
  %..i55 = select i1 %.not.i54, i64 544, i64 640
  call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h48e4f36b81ed8d6dE"(ptr nonnull align 1 %i.a, ptr nonnull %.sroa.0.060, i64 8, i64 %..i55)
  store ptr null, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %"_ZN5alloc11collections5btree8navigate235_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$C$alloc..collections..btree..node..marker..KV$GT$$GT$14next_leaf_edge17hf3dd15f1ffbb476dE.exit", %bb.e
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_ZN5alloc3fmt6format17hc8c12c70f884c57bE(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #1 !guid !118 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  switch i64 %i.c, label %bb.c [
    i64 0, label %bb.b
    i64 1, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.e, %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.f, %bb.c
  %.sroa.4.0 = phi i64 [ undef, %bb.c ], [ %i.j, %bb.f ], [ 0, %bb.b ]
  %.sroa.0.0 = phi ptr [ null, %bb.c ], [ %i.h, %bb.f ], [ inttoptr (i64 1 to ptr), %bb.b ]
  tail call void @"_ZN4core6option15Option$LT$T$GT$11map_or_else17hfbd07dee1d4d8a71E"(ptr sret([24 x i8]) align 8 %0, ptr align 1 %.sroa.0.0, i64 %.sroa.4.0, ptr nonnull align 8 %1)
  ret void

bb.e:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %bb.f, label %bb.c

bb.f:                                             ; preds = %bb.e
  %i.h = load ptr, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i64, ptr %i.i, align 8
  br label %bb.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { ptr, i64 } @"_ZN5alloc3str83_$LT$impl$u20$core..borrow..Borrow$LT$str$GT$$u20$for$u20$alloc..string..String$GT$6borrow17h0a35fa189e061732E"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #1 !guid !119 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = tail call { ptr, i64 } @"_ZN4core3str6traits99_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFull$GT$5index17he547224774fc1358E"(ptr align 1 %i.b, i64 %i.d, ptr nonnull align 8 @34)
  ret { ptr, i64 } %i.e
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_ZN5alloc6string6String3new17h32198fabb13975b4E(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0) unnamed_addr #5 !guid !120 {
bb.a:
  store i64 0, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.3.0..sroa_idx, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_ZN5alloc6string6String4push17hc754449fc6dfd3caE(ptr align 8 %0, i32 %1, ptr align 8 %2) unnamed_addr #1 !guid !121 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp ult i32 %1, 128
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i32 %1, 2048
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp ult i32 %1, 65536
  %. = select i1 %i.e, i64 3, i64 4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.sroa.0.0 = phi i64 [ 2, %bb.b ], [ %., %bb.c ], [ 1, %bb.a ] ; 2 uses
  tail call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h61de6076a7a02d5fE"(ptr nonnull align 8 %0, i64 %.sroa.0.0, ptr align 8 %2)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = load i64, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h
  tail call void @_ZN4core4char7methods25encode_utf8_raw_unchecked17hc236f45a50498f11E(i32 %1, ptr %i.i)
  %i.j = add i64 %.sroa.0.0, %i.b
  store i64 %i.j, ptr %i.a, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_ZN5alloc6string6String8push_str17h06dd1f6fd645fd75E(ptr align 8 %0, ptr align 1 %1, i64 %2, ptr align 8 %3) unnamed_addr #1 !guid !122 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %2
  tail call void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hf4fb6bd6ba18bf21E"(ptr align 8 %0, ptr %1, ptr %i.a, ptr align 8 %3)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h2367d45192e9e54eE"(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #1 !guid !123 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = tail call zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc26b542d45893745E"(ptr align 1 %i.b, i64 %i.d, ptr align 8 %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { ptr, i64 } @"_ZN62_$LT$std..path..PathBuf$u20$as$u20$core..ops..deref..Deref$GT$5deref17h4d455bc328f68b75E"(ptr align 8 %0) unnamed_addr #1 !guid !124 {
bb.a:
  %i.a = tail call { ptr, i64 } @"_ZN105_$LT$std..ffi..os_str..OsString$u20$as$u20$core..ops..index..Index$LT$core..ops..range..RangeFull$GT$$GT$5index17h36f1c522d196d81dE"(ptr align 8 %0, ptr nonnull align 8 @36)
  ret { ptr, i64 } %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h7bdbbcc1fc753d91E"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 !guid !125 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8
  %i.c = insertvalue { ptr, i64 } poison, ptr %.val, 0
  %i.d = insertvalue { ptr, i64 } %i.c, i64 %.val1, 1
  ret { ptr, i64 } %i.d
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @"_ZN67_$LT$T$u20$as$u20$time..format_description..parse..SpannedValue$GT$7spanned17hb456982be1818679E"(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr align 1 %1, i64 %2, i32 %3, i32 %4) unnamed_addr #5 !guid !126 {
bb.a:
  store ptr %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %3, ptr %i.b, align 8
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %4, ptr %5, align 4
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN71_$LT$std..path..PathBuf$u20$as$u20$core..convert..From$LT$$RF$T$GT$$GT$4from17h9e4294223a5e877bE"(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 !guid !127 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8
  call void @"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h66e41fa6ad34df4aE"(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr align 1 %i.c, i64 %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, i64 } @"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h47988d4a79ca8375E"(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #1 !guid !128 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = tail call { ptr, i64 } @"_ZN4core3str6traits99_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFull$GT$5index17he547224774fc1358E"(ptr align 1 %i.b, i64 %i.d, ptr align 8 %1)
  ret { ptr, i64 } %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @"_ZN76_$LT$alloc..string..String$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17hbe66d26f72e3334aE"(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr align 1 %1, i64 %2) unnamed_addr #1 !guid !129 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  call void @"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h66e41fa6ad34df4aE"(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr align 1 %1, i64 %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i32 @"_ZN92_$LT$time..date..Date$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$13calendar_year17h2333de4e882b8a2eE"(ptr align 4, ptr align 4, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i8 @"_ZN92_$LT$time..date..Date$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$15iso_week_number17hf8b6fa95affc434dE"(ptr align 4, ptr align 4, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i8 @"_ZN92_$LT$time..date..Date$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$17monday_based_week17h8d84ffe1cb872fb8E"(ptr align 4, ptr align 4, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i8 @"_ZN92_$LT$time..date..Date$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$17sunday_based_week17h73b2b8e613b12132E"(ptr align 4, ptr align 4, ptr align 8) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking11panic_const24panic_const_div_overflow17h7b996a3de29d2240E(ptr align 8) unnamed_addr #10

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i8 @"_ZN92_$LT$time..date..Date$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$3day17hd95cff9063c3129dE"(ptr align 4, ptr align 4, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i8 @"_ZN92_$LT$time..date..Date$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$5month17h76377f313ce2c270E"(ptr align 4, ptr align 4, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i16 @"_ZN92_$LT$time..date..Date$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$7ordinal17h7c122760a84c4b9dE"(ptr align 4, ptr align 4, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i8 @"_ZN92_$LT$time..date..Date$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$7weekday17h044273b5acbbfec5E"(ptr align 4, ptr align 4, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i32 @"_ZN92_$LT$time..date..Date$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$8iso_year17h4b32942a9956bbd8E"(ptr align 4, ptr align 4, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$std..ffi..os_str..OsString$GT$$GT$17h2f59a7cc2ce1dad5E"(ptr align 8) unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.powi.f64.i32(double, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.trunc.f64(double) #11

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std2fs8metadata17h97c4c7896386b9e3E(ptr sret([176 x i8]) align 8, ptr align 1, i64) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @"_ZN4core3ptr90drop_in_place$LT$core..result..Result$LT$std..fs..Metadata$C$std..io..error..Error$GT$$GT$17h0f48d805c8251a97E"(ptr align 8) unnamed_addr #3

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std4path7PathBuf5_push17h178afc062798cae0E(ptr align 8, ptr align 1, i64) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h68cfe210401133f4E"(ptr align 8) unnamed_addr #3

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() unnamed_addr #13

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i64 } @"_ZN55_$LT$$RF$T$u20$as$u20$core..convert..AsRef$LT$U$GT$$GT$6as_ref17h0bf19a4a4d5e3014E"(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @"_ZN4core3ptr109drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$core..num..error..ParseIntError$GT$$GT$$GT$17hef90a13dd7fa059eE"(ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @"_ZN4core3ptr103drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$time..error..parse..Parse$GT$$GT$$GT$17hd36fc4b23d1c9e69E"(ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @"_ZN4core3ptr149drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$core..mem..manually_drop..ManuallyDrop$LT$time..error..parse..Parse$GT$$GT$$GT$$GT$17h7302e5cf894c63deE"(ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @"_ZN4core3ptr168drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$core..mem..manually_drop..ManuallyDrop$LT$time..error..component_range..ComponentRange$GT$$GT$$GT$$GT$17h636d3fbdd5567c68E"(ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @"_ZN4core3ptr178drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$core..mem..manually_drop..ManuallyDrop$LT$time..error..indeterminate_offset..IndeterminateOffset$GT$$GT$$GT$$GT$17hbaeb9ad43978d040E"(ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @"_ZN4core3ptr189drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$core..mem..manually_drop..ManuallyDrop$LT$time..error..invalid_format_description..InvalidFormatDescription$GT$$GT$$GT$$GT$17h591b33b1e5972f64E"(ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @"_ZN4core3ptr132drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$time..error..indeterminate_offset..IndeterminateOffset$GT$$GT$$GT$17h750f9a726f6af1d3E"(ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @"_ZN4core3ptr96drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$std..env..VarError$GT$$GT$$GT$17h35ac18d0405e96c9E"(ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @"_ZN4core3ptr122drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$time..error..component_range..ComponentRange$GT$$GT$$GT$17h2b63407cd6f528ccE"(ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @"_ZN4core3ptr162drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$core..mem..manually_drop..ManuallyDrop$LT$vergen_gitcl..gitcl..GitclBuilderError$GT$$GT$$GT$$GT$17hcd2d98d9719c61edE"(ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @"_ZN4core3ptr143drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$time..error..invalid_format_description..InvalidFormatDescription$GT$$GT$$GT$17h9fc4d41333e8c866E"(ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @"_ZN4core3ptr151drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$core..mem..manually_drop..ManuallyDrop$LT$time..error..format..Format$GT$$GT$$GT$$GT$17h223cb34185379e99E"(ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @"_ZN4core3ptr142drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$core..mem..manually_drop..ManuallyDrop$LT$std..env..VarError$GT$$GT$$GT$$GT$17h8e6258fd762ec99aE"(ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @"_ZN4core3ptr116drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$vergen_gitcl..gitcl..GitclBuilderError$GT$$GT$$GT$17h74311eccdc71c096E"(ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @"_ZN4core3ptr155drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$core..mem..manually_drop..ManuallyDrop$LT$core..num..error..ParseIntError$GT$$GT$$GT$$GT$17hda8b0c347fae5d38E"(ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @"_ZN4core3ptr105drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$time..error..format..Format$GT$$GT$$GT$17h08211eb6a196fa53E"(ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h5189255d63d42cfdE"(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare i64 @"_ZN37_$LT$u8$u20$as$u20$itoa..Unsigned$GT$3fmt17hd745d283edf12631E"(i8, ptr align 1) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_ZN4itoa19slice_buffer_to_str17hebe1de0d50e49ad9E(ptr align 1, i64, i64) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare i64 @"_ZN38_$LT$u16$u20$as$u20$itoa..Unsigned$GT$3fmt17hef67c7c9f211fce9E"(i16, ptr align 1) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare i64 @"_ZN38_$LT$u32$u20$as$u20$itoa..Unsigned$GT$3fmt17hdbcd48b6fbe77a1aE"(i32, ptr align 1) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare i64 @"_ZN38_$LT$u64$u20$as$u20$itoa..Unsigned$GT$3fmt17h4ccc39de36aa4e99E"(i64, ptr align 1) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare i64 @"_ZN39_$LT$u128$u20$as$u20$itoa..Unsigned$GT$3fmt17h2ce4b20d56a7ae3cE"(i128, ptr align 1) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$3len17h475530be59364e25E"(ptr align 1, i64) unnamed_addr #1

; Function Attrs: inlinehint noreturn nonlazybind uwtable
declare hidden void @_ZN4core4hint21unreachable_unchecked17h5b50bafced6f426cE(ptr align 8) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare void @_ZN4time10formatting7iso860111format_date17h61a7f644e584dbadE(ptr sret([24 x i8]) align 8, ptr align 8, ptr align 4, ptr align 4) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17ha52f93f6106a41adE"(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_ZN4time10formatting7iso860111format_time17h89b7b34cace1e6c6E(ptr sret([24 x i8]) align 8, ptr align 8, ptr align 4, ptr align 4) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_ZN4time10formatting7iso860113format_offset17hc032c65f81dbb38dE(ptr sret([24 x i8]) align 8, ptr align 8, ptr align 4, ptr align 4) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h9cb5529d7ebfba94E"(ptr sret([24 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @"_ZN5alloc3vec12Vec$LT$T$GT$3new17h265a1754abb99c8dE"(ptr sret([24 x i8]) align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i64 } @"_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h3247d915dd39b04bE"(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN5alloc6string6String15from_utf8_lossy17h21794fcc38759ff3E(ptr sret([24 x i8]) align 8, ptr align 1, i64) unnamed_addr #3
end_hunk_1
