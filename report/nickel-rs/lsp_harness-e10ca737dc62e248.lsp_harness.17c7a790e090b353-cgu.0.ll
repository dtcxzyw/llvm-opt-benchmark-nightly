Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/lsp_harness-e10ca737dc62e248.lsp_harness.17c7a790e090b353-cgu.0?download=true
inline.NumInlined: 14236
inline.NumDeleted: 7074
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 46
begin_hunk_0_@"_ZN4core3ptr139drop_in_place$LT$core..result..Result$LT$lsp_types..OneOf$LT$bool$C$lsp_types..DocumentSymbolOptions$GT$$C$serde_json..error..Error$GT$$GT$17h6f7f51227eb1228eE":bb.a
bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27631)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27632)
  %i.a = load i64, ptr %.8.val, align 8, !range !84, !alias.scope !27633, !noalias !27634, !noundef !28
  switch i64 %i.a, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h63bc229213a9dfc7E.exit" [
    i64 0, label %bb.d
    i64 1, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %.val1.i.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !27633, !noalias !27634, !noundef !28 ; 2 uses
  %i.c = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.c, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h63bc229213a9dfc7E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i": ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !27633, !noalias !27634, !nonnull !28, !noundef !28
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %.val1.i.i.i.i, i64 noundef 1) #41, !noalias !27635
  br label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h63bc229213a9dfc7E.exit"

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h018e918931649ff7E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.e)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h63bc229213a9dfc7E.exit" unwind label %bb.f, !noalias !27634

bb.f:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 40, i64 noundef 8) #41, !noalias !27634
  resume { ptr, i32 } %i.f

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h63bc229213a9dfc7E.exit": ; preds = %bb.c, %bb.d, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i", %bb.e
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 40, i64 noundef 8) #41, !noalias !27634
  br label %"_ZN4core3ptr84drop_in_place$LT$lsp_types..OneOf$LT$bool$C$lsp_types..DocumentSymbolOptions$GT$$GT$17h584bd6ef6c5ec03eE.exit"

"_ZN4core3ptr84drop_in_place$LT$lsp_types..OneOf$LT$bool$C$lsp_types..DocumentSymbolOptions$GT$$GT$17h584bd6ef6c5ec03eE.exit": ; preds = %bb.a, %bb.a, %bb.a, %bb.b, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h63bc229213a9dfc7E.exit"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr139drop_in_place$LT$core..result..Result$LT$lsp_types..linked_editing..LinkedEditingRangeServerCapabilities$C$serde_json..error..Error$GT$$GT$17h0e3f77a7a0ebf93cE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !75, !noundef !28 ; 3 uses
  %.not = icmp eq i64 %i.a, -9223372036854775805
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27654)
  %i.b = icmp ugt i64 %i.a, -9223372036854775808
  br i1 %i.b, label %"_ZN4core3ptr84drop_in_place$LT$lsp_types..linked_editing..LinkedEditingRangeServerCapabilities$GT$17hebb81701be3d2c04E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27655)
  %i.c = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.c, label %"_ZN4core3ptr63drop_in_place$LT$lsp_types..TextDocumentRegistrationOptions$GT$17hb6f6773b8fca5214E.exit.i.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @"_ZN4core3ptr69drop_in_place$LT$alloc..vec..Vec$LT$lsp_types..DocumentFilter$GT$$GT$17h945ce430ded5f4c5E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %0)
  br label %"_ZN4core3ptr63drop_in_place$LT$lsp_types..TextDocumentRegistrationOptions$GT$17hb6f6773b8fca5214E.exit.i.i"

"_ZN4core3ptr63drop_in_place$LT$lsp_types..TextDocumentRegistrationOptions$GT$17hb6f6773b8fca5214E.exit.i.i": ; preds = %bb.d, %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i.i = load i64, ptr %i.d, align 8, !range !34, !alias.scope !27656, !noundef !28 ; 2 uses
  %switch.i.i = icmp sgt i64 %.val.i.i, 0
  br i1 %switch.i.i, label %bb.e, label %"_ZN4core3ptr84drop_in_place$LT$lsp_types..linked_editing..LinkedEditingRangeServerCapabilities$GT$17hebb81701be3d2c04E.exit"

bb.e:                                             ; preds = %"_ZN4core3ptr63drop_in_place$LT$lsp_types..TextDocumentRegistrationOptions$GT$17hb6f6773b8fca5214E.exit.i.i"
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i.i = load ptr, ptr %i.e, align 8, !alias.scope !27657, !nonnull !28, !noundef !28
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !27658
  br label %"_ZN4core3ptr84drop_in_place$LT$lsp_types..linked_editing..LinkedEditingRangeServerCapabilities$GT$17hebb81701be3d2c04E.exit"

bb.f:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27659)
  %.val.i = load ptr, ptr %i.f, align 8, !alias.scope !27659, !nonnull !28, !noundef !28 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27660)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27661)
  %i.g = load i64, ptr %.val.i, align 8, !range !84, !alias.scope !27662, !noalias !27659, !noundef !28
  switch i64 %i.g, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h63bc229213a9dfc7E.exit" [
    i64 0, label %bb.g
    i64 1, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %.val1.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !27662, !noalias !27659, !noundef !28 ; 2 uses
  %i.i = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.i, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h63bc229213a9dfc7E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i": ; preds = %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !27662, !noalias !27659, !nonnull !28, !noundef !28
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %.val1.i.i.i.i, i64 noundef 1) #41, !noalias !27663
  br label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h63bc229213a9dfc7E.exit"

bb.h:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h018e918931649ff7E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.k)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h63bc229213a9dfc7E.exit" unwind label %bb.i, !noalias !27659

bb.i:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 40, i64 noundef 8) #41, !noalias !27659
  resume { ptr, i32 } %i.l

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h63bc229213a9dfc7E.exit": ; preds = %bb.f, %bb.g, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i", %bb.h
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 40, i64 noundef 8) #41, !noalias !27659
  br label %"_ZN4core3ptr84drop_in_place$LT$lsp_types..linked_editing..LinkedEditingRangeServerCapabilities$GT$17hebb81701be3d2c04E.exit"

"_ZN4core3ptr84drop_in_place$LT$lsp_types..linked_editing..LinkedEditingRangeServerCapabilities$GT$17hebb81701be3d2c04E.exit": ; preds = %bb.e, %"_ZN4core3ptr63drop_in_place$LT$lsp_types..TextDocumentRegistrationOptions$GT$17hb6f6773b8fca5214E.exit.i.i", %bb.b, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h63bc229213a9dfc7E.exit"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr143drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$serde..private..de..content..TagOrContent$GT$$C$toml..de..error..Error$GT$$GT$17h8b37e76a7ffb1d03E"(ptr noalias noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !67, !noundef !28
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !range !91, !alias.scope !27666, !noundef !28
  %i.e = and i8 %i.d, 30
  %switch.i = icmp eq i8 %i.e, 22
  br i1 %switch.i, label %"_ZN4core3ptr90drop_in_place$LT$core..option..Option$LT$serde..private..de..content..TagOrContent$GT$$GT$17he954ce397fc39777E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h10e52ff9e93f0b3eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.c)
  br label %"_ZN4core3ptr90drop_in_place$LT$core..option..Option$LT$serde..private..de..content..TagOrContent$GT$$GT$17he954ce397fc39777E.exit"

bb.d:                                             ; preds = %bb.a
  tail call void @"_ZN4core3ptr43drop_in_place$LT$toml..de..error..Error$GT$17he592665e9c327a51E"(ptr noalias noundef nonnull align 8 dereferenceable(88) %0)
  br label %"_ZN4core3ptr90drop_in_place$LT$core..option..Option$LT$serde..private..de..content..TagOrContent$GT$$GT$17he954ce397fc39777E.exit"

"_ZN4core3ptr90drop_in_place$LT$core..option..Option$LT$serde..private..de..content..TagOrContent$GT$$GT$17he954ce397fc39777E.exit": ; preds = %bb.c, %bb.b, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr145drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h87196d6649e0d9c0E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27673)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !27673, !nonnull !28, !noundef !28 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i = load ptr, ptr %i.c, align 8, !alias.scope !27673, !nonnull !28, !noundef !28 ; 2 uses
  %i.d = ptrtoint ptr %.val2.i to i64
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 6                   ; 3 uses
  %i.h = icmp eq ptr %.val2.i, %i.b
  br i1 %i.h, label %"_ZN4core3ptr116drop_in_place$LT$$u5b$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$u5d$$GT$17hced0872ee9338eb1E.exit.i", label %.lr.ph

.body.i:                                          ; preds = %bb.f, %.body.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !27673, !noundef !28 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %"_ZN4core3ptr239drop_in_place$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$C$alloc..alloc..Global$GT$$GT$17hdd42f871f6bce3f3E.exit.i", label %bb.b

bb.b:                                             ; preds = %.body.i
  %i.l = load ptr, ptr %0, align 8, !alias.scope !27673, !nonnull !28, !noundef !28
  %i.m = shl nuw i64 %i.j, 6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.l, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !27673
  br label %"_ZN4core3ptr239drop_in_place$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$C$alloc..alloc..Global$GT$$GT$17hdd42f871f6bce3f3E.exit.i"

"_ZN4core3ptr106drop_in_place$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$17h6e4c481cba8e7e2aE.exit.i.i": ; preds = %bb.d
  %i.n = icmp eq i64 %i.p, %i.g
  br i1 %i.n, label %"_ZN4core3ptr116drop_in_place$LT$$u5b$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$u5d$$GT$17hced0872ee9338eb1E.exit.i", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %"_ZN4core3ptr106drop_in_place$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$17h6e4c481cba8e7e2aE.exit.i.i"
  %.sroa.0.0.i.i15 = phi i64 [ %i.p, %"_ZN4core3ptr106drop_in_place$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$17h6e4c481cba8e7e2aE.exit.i.i" ], [ 0, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %.sroa.0.0.i.i15 ; 3 uses
  %i.p = add nuw nsw i64 %.sroa.0.0.i.i15, 1      ; 4 uses
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h10e52ff9e93f0b3eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(64) %i.o)
          to label %bb.d unwind label %bb.c, !noalias !27673, !inline_history !27669

bb.c:                                             ; preds = %.lr.ph
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h10e52ff9e93f0b3eE"(ptr noalias noundef readonly align 8 dereferenceable(32) %i.r) #43
          to label %.body.i.i unwind label %bb.e, !noalias !27673, !inline_history !27669

bb.d:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h10e52ff9e93f0b3eE"(ptr noalias noundef readonly align 8 dereferenceable(32) %i.s)
          to label %"_ZN4core3ptr106drop_in_place$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$17h6e4c481cba8e7e2aE.exit.i.i" unwind label %bb.g, !noalias !27673, !inline_history !27669

bb.e:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40, !noalias !27674, !inline_history !27669
  unreachable

bb.f:                                             ; preds = %.lr.ph17
  %i.u = add nuw nsw i64 %.sroa.0.1.i.i16, 1      ; 2 uses
  %i.v = icmp eq i64 %i.u, %i.g
  br i1 %i.v, label %.body.i, label %.lr.ph17

bb.g:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.g, %bb.c
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.w, %bb.g ], [ %i.q, %bb.c ]
  %i.x = icmp eq i64 %i.p, %i.g
  br i1 %i.x, label %.body.i, label %.lr.ph17

.lr.ph17:                                         ; preds = %.body.i.i, %bb.f
  %.sroa.0.1.i.i16 = phi i64 [ %i.u, %bb.f ], [ %i.p, %.body.i.i ] ; 2 uses
  %i.y = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %.sroa.0.1.i.i16
  invoke fastcc void @"_ZN4core3ptr106drop_in_place$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$17h6e4c481cba8e7e2aE"(ptr noalias noundef readonly align 8 dereferenceable(64) %i.y) #43
          to label %bb.f unwind label %bb.h, !noalias !27673, !inline_history !27672

bb.h:                                             ; preds = %.lr.ph17
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40, !noalias !27674, !inline_history !27672
  unreachable

"_ZN4core3ptr116drop_in_place$LT$$u5b$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$u5d$$GT$17hced0872ee9338eb1E.exit.i": ; preds = %"_ZN4core3ptr106drop_in_place$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$17h6e4c481cba8e7e2aE.exit.i.i", %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !27673, !noundef !28 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hda45a2855ccc813cE.exit", label %bb.i

bb.i:                                             ; preds = %"_ZN4core3ptr116drop_in_place$LT$$u5b$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$u5d$$GT$17hced0872ee9338eb1E.exit.i"
  %i.ad = load ptr, ptr %0, align 8, !alias.scope !27673, !nonnull !28, !noundef !28
  %i.ae = shl nuw i64 %i.ab, 6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ad, i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !27673
  br label %"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hda45a2855ccc813cE.exit"

"_ZN4core3ptr239drop_in_place$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$C$alloc..alloc..Global$GT$$GT$17hdd42f871f6bce3f3E.exit.i": ; preds = %bb.b, %.body.i
  resume { ptr, i32 } %eh.lpad-body.i.i

"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hda45a2855ccc813cE.exit": ; preds = %"_ZN4core3ptr116drop_in_place$LT$$u5b$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$u5d$$GT$17hced0872ee9338eb1E.exit.i", %bb.i
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr147drop_in_place$LT$core..option..Option$LT$std..collections..hash..map..IntoIter$LT$url..Url$C$alloc..vec..Vec$LT$lsp_types..TextEdit$GT$$GT$$GT$$GT$17h4fbb02021ad46b2cE"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !40, !noundef !28 ; 3 uses
  %i.b = icmp eq i64 %i.a, -9223372036854775807
  br i1 %i.b, label %"_ZN4core3ptr119drop_in_place$LT$std..collections..hash..map..IntoIter$LT$url..Url$C$alloc..vec..Vec$LT$lsp_types..TextEdit$GT$$GT$$GT$17hcc1d96f21117310eE.exit", label %bb.b

"_ZN4core3ptr119drop_in_place$LT$std..collections..hash..map..IntoIter$LT$url..Url$C$alloc..vec..Vec$LT$lsp_types..TextEdit$GT$$GT$$GT$17hcc1d96f21117310eE.exit": ; preds = %bb.h, %bb.g, %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h91255e27bd43b278E.exit.i.i.i.i", %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27707)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27708)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27709)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27710)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27711)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !27712, !noundef !28 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h91255e27bd43b278E.exit.i.i.i.i", label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.promoted.i.i.i.i.i = load i16, ptr %i.g, align 8, !alias.scope !27713
  %.promoted7.i.i.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !27712
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.promoted11.i.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !27712
  br label %bb.c

bb.c:                                             ; preds = %"_ZN4core3ptr82drop_in_place$LT$$LP$url..Url$C$alloc..vec..Vec$LT$lsp_types..TextEdit$GT$$RP$$GT$17h3698e1a9bfe0767cE.exit.i.i.i.i.i", %.preheader.i.i.i.i.i
  %.lcssa13.i.i.i.i.i = phi ptr [ %.promoted11.i.i.i.i.i, %.preheader.i.i.i.i.i ], [ %.lcssa12.i.i.i.i.i, %"_ZN4core3ptr82drop_in_place$LT$$LP$url..Url$C$alloc..vec..Vec$LT$lsp_types..TextEdit$GT$$RP$$GT$17h3698e1a9bfe0767cE.exit.i.i.i.i.i" ] ; 2 uses
  %i.i = phi i64 [ %i.e, %.preheader.i.i.i.i.i ], [ %i.v, %"_ZN4core3ptr82drop_in_place$LT$$LP$url..Url$C$alloc..vec..Vec$LT$lsp_types..TextEdit$GT$$RP$$GT$17h3698e1a9bfe0767cE.exit.i.i.i.i.i" ]
  %.lcssa69.i.i.i.i.i = phi ptr [ %.promoted7.i.i.i.i.i, %.preheader.i.i.i.i.i ], [ %.lcssa68.i.i.i.i.i, %"_ZN4core3ptr82drop_in_place$LT$$LP$url..Url$C$alloc..vec..Vec$LT$lsp_types..TextEdit$GT$$RP$$GT$17h3698e1a9bfe0767cE.exit.i.i.i.i.i" ] ; 2 uses
  %i.j = phi i16 [ %.promoted.i.i.i.i.i, %.preheader.i.i.i.i.i ], [ %i.s, %"_ZN4core3ptr82drop_in_place$LT$$LP$url..Url$C$alloc..vec..Vec$LT$lsp_types..TextEdit$GT$$RP$$GT$17h3698e1a9bfe0767cE.exit.i.i.i.i.i" ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27714)
  %.not13.i.i.i.i.i.i = icmp eq i16 %i.j, 0
  br i1 %.not13.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h81ee559de26be610E.exit.i.i.i.i.i"

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i
  store ptr %i.o, ptr %i.h, align 8, !alias.scope !27713
  store ptr %i.n, ptr %i.c, align 8, !alias.scope !27713
  br label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h81ee559de26be610E.exit.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i ], [ %.lcssa13.i.i.i.i.i, %bb.c ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.i ], [ %.lcssa69.i.i.i.i.i, %bb.c ]
  %.val11.i.i.i.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !27713
  %i.m = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -1792 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  %.cast.i.i.i.i.i.i = bitcast <16 x i1> %i.m to i16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h81ee559de26be610E.exit.i.i.i.i.i": ; preds = %._crit_edge.i.i.i.i.i.i, %bb.c
  %.lcssa12.i.i.i.i.i = phi ptr [ %i.o, %._crit_edge.i.i.i.i.i.i ], [ %.lcssa13.i.i.i.i.i, %bb.c ]
  %.lcssa68.i.i.i.i.i = phi ptr [ %i.n, %._crit_edge.i.i.i.i.i.i ], [ %.lcssa69.i.i.i.i.i, %bb.c ] ; 2 uses
  %.lcssa.i.i.i.i.i.i = phi i16 [ %.cast.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ], [ %i.j, %bb.c ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i.i.i.i        ; 2 uses
  store i16 %i.s, ptr %i.g, align 8, !alias.scope !27713
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [112 x i8], ptr %.lcssa68.i.i.i.i.i, i64 %i.t ; 5 uses
  %i.v = add i64 %i.i, -1                         ; 3 uses
  store i64 %i.v, ptr %i.d, align 8, !alias.scope !27712
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -112
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27715)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27716)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27717)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27718)
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.w, align 8, !range !29, !alias.scope !27719, !noalias !27712, !noundef !28 ; 2 uses
  %i.x = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.x, label %"_ZN4core3ptr29drop_in_place$LT$url..Url$GT$17ha5fc9926f631e9bcE.exit.i.i.i.i.i.i", label %bb.d

bb.d:                                             ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h81ee559de26be610E.exit.i.i.i.i.i"
  %i.y = getelementptr inbounds i8, ptr %i.u, i64 -104
  %.val1.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.y, align 8, !alias.scope !27719, !noalias !27712, !nonnull !28, !noundef !28
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !27720
  br label %"_ZN4core3ptr29drop_in_place$LT$url..Url$GT$17ha5fc9926f631e9bcE.exit.i.i.i.i.i.i"

"_ZN4core3ptr29drop_in_place$LT$url..Url$GT$17ha5fc9926f631e9bcE.exit.i.i.i.i.i.i": ; preds = %bb.d, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h81ee559de26be610E.exit.i.i.i.i.i"
  %i.z = getelementptr inbounds i8, ptr %i.u, i64 -24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27721)
  %i.aa = getelementptr inbounds i8, ptr %i.u, i64 -16
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !27722, !noalias !27712, !nonnull !28, !noundef !28 ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %i.u, i64 -8
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.ab, align 8, !alias.scope !27722, !noalias !27712, !noundef !28 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27723)
  %i.ac = icmp eq i64 %.val1.i.i.i.i.i.i.i, 0
  br i1 %i.ac, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h93df7a45a8bce036E.exit.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %"_ZN4core3ptr29drop_in_place$LT$url..Url$GT$17ha5fc9926f631e9bcE.exit.i.i.i.i.i.i", %"_ZN4core3ptr40drop_in_place$LT$lsp_types..TextEdit$GT$17h4b1d1e831c9f902bE.exit.i.i.i.i.i.i.i.i.i"
  %.sroa.0.011.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ae, %"_ZN4core3ptr40drop_in_place$LT$lsp_types..TextEdit$GT$17h4b1d1e831c9f902bE.exit.i.i.i.i.i.i.i.i.i" ], [ 0, %"_ZN4core3ptr29drop_in_place$LT$url..Url$GT$17ha5fc9926f631e9bcE.exit.i.i.i.i.i.i" ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [40 x i8], ptr %.val.i.i.i.i.i.i.i, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ae = add nuw i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ad, align 8, !range !29, !alias.scope !27724, !noalias !27725, !noundef !28 ; 2 uses
  %i.af = icmp eq i64 %.val8.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.af, label %"_ZN4core3ptr40drop_in_place$LT$lsp_types..TextEdit$GT$17h4b1d1e831c9f902bE.exit.i.i.i.i.i.i.i.i.i", label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.ag = getelementptr i8, ptr %i.ad, i64 8
  %.val9.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ag, align 8, !alias.scope !27723, !noalias !27725, !nonnull !28, !noundef !28
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !27726
  br label %"_ZN4core3ptr40drop_in_place$LT$lsp_types..TextEdit$GT$17h4b1d1e831c9f902bE.exit.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr40drop_in_place$LT$lsp_types..TextEdit$GT$17h4b1d1e831c9f902bE.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.ah = icmp eq i64 %i.ae, %.val1.i.i.i.i.i.i.i
  br i1 %i.ah, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h93df7a45a8bce036E.exit.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h93df7a45a8bce036E.exit.i.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr40drop_in_place$LT$lsp_types..TextEdit$GT$17h4b1d1e831c9f902bE.exit.i.i.i.i.i.i.i.i.i", %"_ZN4core3ptr29drop_in_place$LT$url..Url$GT$17ha5fc9926f631e9bcE.exit.i.i.i.i.i.i"
  %.val2.i.i.i.i.i.i.i = load i64, ptr %i.z, align 8, !range !29, !alias.scope !27722, !noalias !27712, !noundef !28 ; 2 uses
  %i.ai = icmp eq i64 %.val2.i.i.i.i.i.i.i, 0
  br i1 %i.ai, label %"_ZN4core3ptr82drop_in_place$LT$$LP$url..Url$C$alloc..vec..Vec$LT$lsp_types..TextEdit$GT$$RP$$GT$17h3698e1a9bfe0767cE.exit.i.i.i.i.i", label %bb.f

bb.f:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h93df7a45a8bce036E.exit.i.i.i.i.i.i.i"
  %i.aj = mul nuw i64 %.val2.i.i.i.i.i.i.i, 40
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i, i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !27725
  br label %"_ZN4core3ptr82drop_in_place$LT$$LP$url..Url$C$alloc..vec..Vec$LT$lsp_types..TextEdit$GT$$RP$$GT$17h3698e1a9bfe0767cE.exit.i.i.i.i.i"

"_ZN4core3ptr82drop_in_place$LT$$LP$url..Url$C$alloc..vec..Vec$LT$lsp_types..TextEdit$GT$$RP$$GT$17h3698e1a9bfe0767cE.exit.i.i.i.i.i": ; preds = %bb.f, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h93df7a45a8bce036E.exit.i.i.i.i.i.i.i"
  %.old5.i.i.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.old5.i.i.i.i.i, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h91255e27bd43b278E.exit.i.i.i.i", label %bb.c

"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h91255e27bd43b278E.exit.i.i.i.i": ; preds = %"_ZN4core3ptr82drop_in_place$LT$$LP$url..Url$C$alloc..vec..Vec$LT$lsp_types..TextEdit$GT$$RP$$GT$17h3698e1a9bfe0767cE.exit.i.i.i.i.i", %bb.b
  %.not.i.i.i.i = icmp eq i64 %i.a, 0
  br i1 %.not.i.i.i.i, label %"_ZN4core3ptr119drop_in_place$LT$std..collections..hash..map..IntoIter$LT$url..Url$C$alloc..vec..Vec$LT$lsp_types..TextEdit$GT$$GT$$GT$17hcc1d96f21117310eE.exit", label %bb.g

bb.g:                                             ; preds = %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h91255e27bd43b278E.exit.i.i.i.i"
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !27727, !noundef !28 ; 2 uses
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %"_ZN4core3ptr119drop_in_place$LT$std..collections..hash..map..IntoIter$LT$url..Url$C$alloc..vec..Vec$LT$lsp_types..TextEdit$GT$$GT$$GT$17hcc1d96f21117310eE.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !27727, !nonnull !28, !noundef !28
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ao, i64 noundef %i.al, i64 noundef range(i64 1, -9223372036854775807) %i.a) #41, !noalias !27727
  br label %"_ZN4core3ptr119drop_in_place$LT$std..collections..hash..map..IntoIter$LT$url..Url$C$alloc..vec..Vec$LT$lsp_types..TextEdit$GT$$GT$$GT$17hcc1d96f21117310eE.exit"
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr150drop_in_place$LT$core..result..Result$LT$lsp_types..OneOf$LT$lsp_types..TextEdit$C$lsp_types..AnnotatedTextEdit$GT$$C$serde_json..error..Error$GT$$GT$17hf6f9e8404558289aE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !40, !noundef !28 ; 4 uses
  %.not = icmp eq i64 %i.a, -9223372036854775807
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27750)
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
end_hunk_0
begin_hunk_1_@"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h10e52ff9e93f0b3eE":bb.a
.lr.ph:                                           ; preds = %bb.s, %bb.t
  %.sroa.0.0.i.i32 = phi i64 [ %i.as, %bb.t ], [ 0, %bb.s ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %i.am, i64 %.sroa.0.0.i.i32
  %i.as = add i64 %.sroa.0.0.i.i32, 1             ; 4 uses
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h10e52ff9e93f0b3eE"(ptr noalias noundef align 8 dereferenceable(32) %i.ar)
          to label %bb.t unwind label %bb.v, !noalias !29588, !inline_history !29576

bb.u:                                             ; preds = %.lr.ph34
  %i.at = add i64 %.sroa.0.1.i.i33, 1             ; 2 uses
  %i.au = icmp eq i64 %i.at, %i.ao
  br i1 %i.au, label %.body13, label %.lr.ph34

bb.v:                                             ; preds = %.lr.ph
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aw = icmp eq i64 %i.as, %i.ao
  br i1 %i.aw, label %.body13, label %.lr.ph34

.lr.ph34:                                         ; preds = %bb.v, %bb.u
  %.sroa.0.1.i.i33 = phi i64 [ %i.at, %bb.u ], [ %i.as, %bb.v ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %i.am, i64 %.sroa.0.1.i.i33
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h10e52ff9e93f0b3eE"(ptr noalias noundef align 8 dereferenceable(32) %i.ax) #43
          to label %bb.u unwind label %bb.w, !noalias !29588, !inline_history !29576

bb.w:                                             ; preds = %.lr.ph34
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40, !noalias !29588, !inline_history !29576
  unreachable

.body13:                                          ; preds = %bb.u, %bb.v
  %.val2.i8 = load i64, ptr %i.ak, align 8, !range !29, !alias.scope !29589, !noundef !28 ; 2 uses
  %i.az = icmp eq i64 %.val2.i8, 0
  br i1 %i.az, label %common.resume, label %bb.x

bb.x:                                             ; preds = %.body13
  %i.ba = shl nuw i64 %.val2.i8, 5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.am, i64 noundef %i.ba, i64 noundef range(i64 1, -9223372036854775807) 8) #41
  br label %common.resume

"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$serde_core..private..content..Content$GT$$GT$17h5c431a548e5984fbE.exit": ; preds = %bb.t, %bb.s
  %.val.i10 = load i64, ptr %i.ak, align 8, !range !29, !alias.scope !29589, !noundef !28 ; 2 uses
  %i.bb = icmp eq i64 %.val.i10, 0
  br i1 %i.bb, label %"_ZN4core3ptr129drop_in_place$LT$alloc..vec..Vec$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17hf2898d1b11803e49E.exit", label %bb.y

bb.y:                                             ; preds = %"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$serde_core..private..content..Content$GT$$GT$17h5c431a548e5984fbE.exit"
  %i.bc = shl nuw i64 %.val.i10, 5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.am, i64 noundef %i.bc, i64 noundef range(i64 1, -9223372036854775807) 8) #41
  br label %"_ZN4core3ptr129drop_in_place$LT$alloc..vec..Vec$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17hf2898d1b11803e49E.exit"
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr59drop_in_place$LT$lsp_types..WorkspaceServerCapabilities$GT$17h3ca7d965e21f93d0E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.val = load i64, ptr %i.a, align 8, !range !50, !noundef !28 ; 2 uses
  %switch = icmp sgt i64 %.val, 0
  br i1 %switch, label %bb.b, label %"_ZN4core3ptr113drop_in_place$LT$core..option..Option$LT$lsp_types..workspace_folders..WorkspaceFoldersServerCapabilities$GT$$GT$17h96065091e3224cdfE.exit"

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !28, !noundef !28
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !29596
  br label %"_ZN4core3ptr113drop_in_place$LT$core..option..Option$LT$lsp_types..workspace_folders..WorkspaceFoldersServerCapabilities$GT$$GT$17h96065091e3224cdfE.exit"

"_ZN4core3ptr113drop_in_place$LT$core..option..Option$LT$lsp_types..workspace_folders..WorkspaceFoldersServerCapabilities$GT$$GT$17h96065091e3224cdfE.exit": ; preds = %bb.a, %bb.b
  %i.c = load i64, ptr %0, align 8, !range !40, !alias.scope !29597, !noundef !28
  %i.d = icmp eq i64 %i.c, -9223372036854775807
  br i1 %i.d, label %"_ZN4core3ptr118drop_in_place$LT$core..option..Option$LT$lsp_types..file_operations..WorkspaceFileOperationsServerCapabilities$GT$$GT$17he607c85950ccda9fE.exit2", label %bb.c

bb.c:                                             ; preds = %"_ZN4core3ptr113drop_in_place$LT$core..option..Option$LT$lsp_types..workspace_folders..WorkspaceFoldersServerCapabilities$GT$$GT$17h96065091e3224cdfE.exit"
  tail call fastcc void @"_ZN4core3ptr90drop_in_place$LT$lsp_types..file_operations..WorkspaceFileOperationsServerCapabilities$GT$17h44324bd443af1a13E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(144) %0)
  br label %"_ZN4core3ptr118drop_in_place$LT$core..option..Option$LT$lsp_types..file_operations..WorkspaceFileOperationsServerCapabilities$GT$$GT$17he607c85950ccda9fE.exit2"

"_ZN4core3ptr118drop_in_place$LT$core..option..Option$LT$lsp_types..file_operations..WorkspaceFileOperationsServerCapabilities$GT$$GT$17he607c85950ccda9fE.exit2": ; preds = %"_ZN4core3ptr113drop_in_place$LT$core..option..Option$LT$lsp_types..workspace_folders..WorkspaceFoldersServerCapabilities$GT$$GT$17h96065091e3224cdfE.exit", %bb.c
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr59drop_in_place$LT$lsp_types..references..ReferenceParams$GT$17h74a71120a1855416E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.val9 = load i64, ptr %0, align 8, !range !29, !alias.scope !95, !noundef !28 ; 2 uses
  %i.a = icmp eq i64 %.val9, 0
  br i1 %i.a, label %"_ZN4core3ptr58drop_in_place$LT$lsp_types..TextDocumentPositionParams$GT$17hf307ad23afe488fcE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val10 = load ptr, ptr %i.b, align 8, !nonnull !28, !noundef !28
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10, i64 noundef %.val9, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !29616
  br label %"_ZN4core3ptr58drop_in_place$LT$lsp_types..TextDocumentPositionParams$GT$17hf307ad23afe488fcE.exit"

"_ZN4core3ptr58drop_in_place$LT$lsp_types..TextDocumentPositionParams$GT$17hf307ad23afe488fcE.exit": ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val = load i64, ptr %i.c, align 8, !range !40, !alias.scope !96, !noundef !28 ; 2 uses
  %switch.i.i11 = icmp sgt i64 %.val, 0
  br i1 %switch.i.i11, label %bb.c, label %"_ZN4core3ptr64drop_in_place$LT$lsp_types..progress..WorkDoneProgressParams$GT$17h8a22fb8e68a8719aE.exit12"

bb.c:                                             ; preds = %"_ZN4core3ptr58drop_in_place$LT$lsp_types..TextDocumentPositionParams$GT$17hf307ad23afe488fcE.exit"
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val2 = load ptr, ptr %i.d, align 8, !nonnull !28, !noundef !28
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !29617
  br label %"_ZN4core3ptr64drop_in_place$LT$lsp_types..progress..WorkDoneProgressParams$GT$17h8a22fb8e68a8719aE.exit12"

"_ZN4core3ptr64drop_in_place$LT$lsp_types..progress..WorkDoneProgressParams$GT$17h8a22fb8e68a8719aE.exit12": ; preds = %bb.c, %"_ZN4core3ptr58drop_in_place$LT$lsp_types..TextDocumentPositionParams$GT$17hf307ad23afe488fcE.exit"
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.val5 = load i64, ptr %i.e, align 8, !range !40, !alias.scope !97, !noundef !28 ; 2 uses
  %switch.i.i14 = icmp sgt i64 %.val5, 0
  br i1 %switch.i.i14, label %bb.d, label %"_ZN4core3ptr51drop_in_place$LT$lsp_types..PartialResultParams$GT$17h936ceb5219d813d0E.exit15"

bb.d:                                             ; preds = %"_ZN4core3ptr64drop_in_place$LT$lsp_types..progress..WorkDoneProgressParams$GT$17h8a22fb8e68a8719aE.exit12"
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.val6 = load ptr, ptr %i.f, align 8, !nonnull !28, !noundef !28
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6, i64 noundef %.val5, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !29618
  br label %"_ZN4core3ptr51drop_in_place$LT$lsp_types..PartialResultParams$GT$17h936ceb5219d813d0E.exit15"

"_ZN4core3ptr51drop_in_place$LT$lsp_types..PartialResultParams$GT$17h936ceb5219d813d0E.exit15": ; preds = %"_ZN4core3ptr64drop_in_place$LT$lsp_types..progress..WorkDoneProgressParams$GT$17h8a22fb8e68a8719aE.exit12", %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr59drop_in_place$LT$serde_json..value..de..MapDeserializer$GT$17ha1a4e3bcbcb84201E"(ptr noalias noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @"_ZN4core3ptr117drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17had382107fae52de8E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %0)
          to label %"_ZN4core3ptr46drop_in_place$LT$serde_json..map..IntoIter$GT$17h787512923fc7cfc4E.exit" unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !45, !alias.scope !29623, !noundef !28
  %i.d = icmp eq i8 %i.c, 6
  br i1 %i.d, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h79d9528608d63f86E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17hd30bb28c59a03f14E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.b)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h79d9528608d63f86E.exit" unwind label %bb.e

"_ZN4core3ptr46drop_in_place$LT$serde_json..map..IntoIter$GT$17h787512923fc7cfc4E.exit": ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !range !45, !alias.scope !29624, !noundef !28
  %i.g = icmp eq i8 %i.f, 6
  br i1 %i.g, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h79d9528608d63f86E.exit1", label %bb.d

bb.d:                                             ; preds = %"_ZN4core3ptr46drop_in_place$LT$serde_json..map..IntoIter$GT$17h787512923fc7cfc4E.exit"
  tail call fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17hd30bb28c59a03f14E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.e)
  br label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h79d9528608d63f86E.exit1"

"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h79d9528608d63f86E.exit1": ; preds = %"_ZN4core3ptr46drop_in_place$LT$serde_json..map..IntoIter$GT$17h787512923fc7cfc4E.exit", %bb.d
  ret void

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40
  unreachable

"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h79d9528608d63f86E.exit": ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr59drop_in_place$LT$serde_json..value..de..SeqDeserializer$GT$17h7416d391dd09e54cE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29632)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29633)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !29634, !nonnull !28, !noundef !28 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i.i = load ptr, ptr %i.c, align 8, !alias.scope !29634, !nonnull !28, !noundef !28 ; 2 uses
  %i.d = ptrtoint ptr %.val2.i.i to i64
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 5                   ; 3 uses
  %i.h = icmp eq ptr %.val2.i.i, %i.b
  br i1 %i.h, label %"_ZN4core3ptr55drop_in_place$LT$$u5b$serde_json..value..Value$u5d$$GT$17h9dcba57ee93de94cE.exit.i.i", label %.lr.ph

.body.i.i:                                        ; preds = %bb.d, %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !29634, !noundef !28 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %"_ZN4core3ptr178drop_in_place$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$serde_json..value..Value$C$alloc..alloc..Global$GT$$GT$17hd3a0449cba6216b5E.exit.i.i", label %bb.b

bb.b:                                             ; preds = %.body.i.i
  %i.l = load ptr, ptr %0, align 8, !alias.scope !29634, !nonnull !28, !noundef !28
  %i.m = shl nuw i64 %i.j, 5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.l, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !29634
  br label %"_ZN4core3ptr178drop_in_place$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$serde_json..value..Value$C$alloc..alloc..Global$GT$$GT$17hd3a0449cba6216b5E.exit.i.i"

bb.c:                                             ; preds = %.lr.ph
  %i.n = icmp eq i64 %i.p, %i.g
  br i1 %i.n, label %"_ZN4core3ptr55drop_in_place$LT$$u5b$serde_json..value..Value$u5d$$GT$17h9dcba57ee93de94cE.exit.i.i", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.0.0.i.i.i3 = phi i64 [ %i.p, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.0.0.i.i.i3
  %i.p = add nuw nsw i64 %.sroa.0.0.i.i.i3, 1     ; 4 uses
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17hd30bb28c59a03f14E"(ptr noalias noundef readonly align 8 dereferenceable(32) %i.o)
          to label %bb.c unwind label %bb.e, !noalias !29634, !inline_history !29629

bb.d:                                             ; preds = %.lr.ph5
  %i.q = add nuw nsw i64 %.sroa.0.1.i.i.i4, 1     ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.g
  br i1 %i.r, label %.body.i.i, label %.lr.ph5

bb.e:                                             ; preds = %.lr.ph
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = icmp eq i64 %i.p, %i.g
  br i1 %i.t, label %.body.i.i, label %.lr.ph5

.lr.ph5:                                          ; preds = %bb.e, %bb.d
  %.sroa.0.1.i.i.i4 = phi i64 [ %i.q, %bb.d ], [ %i.p, %bb.e ] ; 2 uses
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.0.1.i.i.i4
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17hd30bb28c59a03f14E"(ptr noalias noundef readonly align 8 dereferenceable(32) %i.u) #43
          to label %bb.d unwind label %bb.f, !noalias !29634, !inline_history !29629

bb.f:                                             ; preds = %.lr.ph5
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40, !noalias !29635, !inline_history !29629
  unreachable

"_ZN4core3ptr55drop_in_place$LT$$u5b$serde_json..value..Value$u5d$$GT$17h9dcba57ee93de94cE.exit.i.i": ; preds = %bb.c, %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !29634, !noundef !28 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$serde_json..value..Value$GT$$GT$17hfcb3918a68f3e9f3E.exit", label %bb.g

bb.g:                                             ; preds = %"_ZN4core3ptr55drop_in_place$LT$$u5b$serde_json..value..Value$u5d$$GT$17h9dcba57ee93de94cE.exit.i.i"
  %i.z = load ptr, ptr %0, align 8, !alias.scope !29634, !nonnull !28, !noundef !28
  %i.aa = shl nuw i64 %i.x, 5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.z, i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !29634
  br label %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$serde_json..value..Value$GT$$GT$17hfcb3918a68f3e9f3E.exit"

"_ZN4core3ptr178drop_in_place$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$serde_json..value..Value$C$alloc..alloc..Global$GT$$GT$17hd3a0449cba6216b5E.exit.i.i": ; preds = %bb.b, %.body.i.i
  resume { ptr, i32 } %i.s

"_ZN4core3ptr84drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$serde_json..value..Value$GT$$GT$17hfcb3918a68f3e9f3E.exit": ; preds = %"_ZN4core3ptr55drop_in_place$LT$$u5b$serde_json..value..Value$u5d$$GT$17h9dcba57ee93de94cE.exit.i.i", %bb.g
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr60drop_in_place$LT$lsp_types..DiagnosticRelatedInformation$GT$17h11e150f941e9d2a8E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29648)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29649)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29650)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29651)
  %.val.i.i.i.i = load i64, ptr %0, align 8, !range !29, !alias.scope !29652, !noundef !28 ; 2 uses
  %i.a = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.a, label %"_ZN4core3ptr40drop_in_place$LT$lsp_types..Location$GT$17h4ebf832e6e0fcd3dE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !29652, !nonnull !28, !noundef !28
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !29652
  br label %"_ZN4core3ptr40drop_in_place$LT$lsp_types..Location$GT$17h4ebf832e6e0fcd3dE.exit"

"_ZN4core3ptr40drop_in_place$LT$lsp_types..Location$GT$17h4ebf832e6e0fcd3dE.exit": ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29653)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29654)
  %.val.i.i1 = load i64, ptr %i.c, align 8, !range !29, !alias.scope !29655, !noundef !28 ; 2 uses
  %i.d = icmp eq i64 %.val.i.i1, 0
  br i1 %i.d, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit3", label %bb.c

bb.c:                                             ; preds = %"_ZN4core3ptr40drop_in_place$LT$lsp_types..Location$GT$17h4ebf832e6e0fcd3dE.exit"
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.val1.i.i2 = load ptr, ptr %i.e, align 8, !alias.scope !29655, !nonnull !28, !noundef !28
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i2, i64 noundef %.val.i.i1, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !29655
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit3"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit3": ; preds = %"_ZN4core3ptr40drop_in_place$LT$lsp_types..Location$GT$17h4ebf832e6e0fcd3dE.exit", %bb.c
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr60drop_in_place$LT$lsp_types..completion..CompletionParams$GT$17h7385973bb3ba1d68E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.val11 = load i64, ptr %0, align 8, !range !29, !alias.scope !95, !noundef !28 ; 2 uses
  %i.a = icmp eq i64 %.val11, 0
  br i1 %i.a, label %"_ZN4core3ptr58drop_in_place$LT$lsp_types..TextDocumentPositionParams$GT$17hf307ad23afe488fcE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val12 = load ptr, ptr %i.b, align 8, !nonnull !28, !noundef !28
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val12, i64 noundef %.val11, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !29680
  br label %"_ZN4core3ptr58drop_in_place$LT$lsp_types..TextDocumentPositionParams$GT$17hf307ad23afe488fcE.exit"

"_ZN4core3ptr58drop_in_place$LT$lsp_types..TextDocumentPositionParams$GT$17hf307ad23afe488fcE.exit": ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val = load i64, ptr %i.c, align 8, !range !40, !alias.scope !96, !noundef !28 ; 2 uses
  %switch.i.i17 = icmp sgt i64 %.val, 0
  br i1 %switch.i.i17, label %bb.c, label %"_ZN4core3ptr64drop_in_place$LT$lsp_types..progress..WorkDoneProgressParams$GT$17h8a22fb8e68a8719aE.exit18"

bb.c:                                             ; preds = %"_ZN4core3ptr58drop_in_place$LT$lsp_types..TextDocumentPositionParams$GT$17hf307ad23afe488fcE.exit"
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val4 = load ptr, ptr %i.d, align 8, !nonnull !28, !noundef !28
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !29681
  br label %"_ZN4core3ptr64drop_in_place$LT$lsp_types..progress..WorkDoneProgressParams$GT$17h8a22fb8e68a8719aE.exit18"

"_ZN4core3ptr64drop_in_place$LT$lsp_types..progress..WorkDoneProgressParams$GT$17h8a22fb8e68a8719aE.exit18": ; preds = %bb.c, %"_ZN4core3ptr58drop_in_place$LT$lsp_types..TextDocumentPositionParams$GT$17hf307ad23afe488fcE.exit"
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.val7 = load i64, ptr %i.e, align 8, !range !40, !alias.scope !97, !noundef !28 ; 2 uses
  %switch.i.i20 = icmp sgt i64 %.val7, 0
  br i1 %switch.i.i20, label %bb.d, label %"_ZN4core3ptr51drop_in_place$LT$lsp_types..PartialResultParams$GT$17h936ceb5219d813d0E.exit21"

bb.d:                                             ; preds = %"_ZN4core3ptr64drop_in_place$LT$lsp_types..progress..WorkDoneProgressParams$GT$17h8a22fb8e68a8719aE.exit18"
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.val8 = load ptr, ptr %i.f, align 8, !nonnull !28, !noundef !28
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef %.val7, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !29682
  br label %"_ZN4core3ptr51drop_in_place$LT$lsp_types..PartialResultParams$GT$17h936ceb5219d813d0E.exit21"

"_ZN4core3ptr51drop_in_place$LT$lsp_types..PartialResultParams$GT$17h936ceb5219d813d0E.exit21": ; preds = %bb.d, %"_ZN4core3ptr64drop_in_place$LT$lsp_types..progress..WorkDoneProgressParams$GT$17h8a22fb8e68a8719aE.exit18"
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.val13 = load i64, ptr %i.g, align 8, !range !40, !noundef !28 ; 2 uses
  %switch = icmp sgt i64 %.val13, 0
  br i1 %switch, label %bb.e, label %"_ZN4core3ptr89drop_in_place$LT$core..option..Option$LT$lsp_types..completion..CompletionContext$GT$$GT$17ha7209252a07b4e68E.exit22"

bb.e:                                             ; preds = %"_ZN4core3ptr51drop_in_place$LT$lsp_types..PartialResultParams$GT$17h936ceb5219d813d0E.exit21"
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.val14 = load ptr, ptr %i.h, align 8, !nonnull !28, !noundef !28
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val14, i64 noundef %.val13, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !29683
  br label %"_ZN4core3ptr89drop_in_place$LT$core..option..Option$LT$lsp_types..completion..CompletionContext$GT$$GT$17ha7209252a07b4e68E.exit22"

"_ZN4core3ptr89drop_in_place$LT$core..option..Option$LT$lsp_types..completion..CompletionContext$GT$$GT$17ha7209252a07b4e68E.exit22": ; preds = %"_ZN4core3ptr51drop_in_place$LT$lsp_types..PartialResultParams$GT$17h936ceb5219d813d0E.exit21", %bb.e
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr61drop_in_place$LT$lsp_types..completion..CompletionOptions$GT$17h027c50a29065cff9E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29704)
  %i.a = load i64, ptr %0, align 8, !range !34, !alias.scope !29704, !noundef !28 ; 3 uses
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$17h036490f514b396cfE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29705)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !29706, !nonnull !28, !noundef !28 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load i64, ptr %i.d, align 8, !alias.scope !29706, !noundef !28 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29707)
  %i.e = icmp eq i64 %.val1.i.i, 0
  br i1 %i.e, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8ac9a7b7c12b2c75E.exit.i.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit.i.i.i.i"
  %.sroa.0.010.i.i.i.i = phi i64 [ %i.g, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit.i.i.i.i" ], [ 0, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i, i64 %.sroa.0.010.i.i.i.i ; 2 uses
  %i.g = add nuw i64 %.sroa.0.010.i.i.i.i, 1      ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29708)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29709)
  %.val.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !range !29, !alias.scope !29710, !noalias !29706, !noundef !28 ; 2 uses
  %i.h = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.h, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit.i.i.i.i", label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !29710, !noalias !29706, !nonnull !28, !noundef !28
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !29711
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit.i.i.i.i": ; preds = %bb.c, %.lr.ph.i.i.i.i
  %i.j = icmp eq i64 %i.g, %.val1.i.i
  br i1 %i.j, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8ac9a7b7c12b2c75E.exit.i.i", label %.lr.ph.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8ac9a7b7c12b2c75E.exit.i.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit.i.i.i.i", %bb.b
  %i.k = icmp eq i64 %i.a, 0
  br i1 %i.k, label %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$17h036490f514b396cfE.exit", label %bb.d

bb.d:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8ac9a7b7c12b2c75E.exit.i.i"
  %i.l = mul nuw i64 %i.a, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !29706
  br label %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$17h036490f514b396cfE.exit"

"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$17h036490f514b396cfE.exit": ; preds = %bb.d, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8ac9a7b7c12b2c75E.exit.i.i", %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29712)
  %i.n = load i64, ptr %i.m, align 8, !range !34, !alias.scope !29712, !noundef !28 ; 3 uses
  %i.o = icmp eq i64 %i.n, -9223372036854775808
  br i1 %i.o, label %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$17h036490f514b396cfE.exit9", label %bb.e

bb.e:                                             ; preds = %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$17h036490f514b396cfE.exit"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29713)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i.i1 = load ptr, ptr %i.p, align 8, !alias.scope !29714, !nonnull !28, !noundef !28 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1.i.i2 = load i64, ptr %i.q, align 8, !alias.scope !29714, !noundef !28 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29715)
  %i.r = icmp eq i64 %.val1.i.i2, 0
  br i1 %i.r, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8ac9a7b7c12b2c75E.exit.i.i8", label %.lr.ph.i.i.i.i3

.lr.ph.i.i.i.i3:                                  ; preds = %bb.e, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit.i.i.i.i7"
  %.sroa.0.010.i.i.i.i4 = phi i64 [ %i.t, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit.i.i.i.i7" ], [ 0, %bb.e ] ; 2 uses
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i1, i64 %.sroa.0.010.i.i.i.i4 ; 2 uses
  %i.t = add nuw i64 %.sroa.0.010.i.i.i.i4, 1     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29716)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29717)
  %.val.i.i.i.i.i.i5 = load i64, ptr %i.s, align 8, !range !29, !alias.scope !29718, !noalias !29714, !noundef !28 ; 2 uses
  %i.u = icmp eq i64 %.val.i.i.i.i.i.i5, 0
end_hunk_1
begin_hunk_2_@"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h87f623b39691dec1E":bb.a
  %.val.i.i.i.i = load i64, ptr %i.d, align 8, !range !29, !alias.scope !29806, !noundef !28 ; 2 uses
  %i.f = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.f, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit.i.i", label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !29806, !nonnull !28, !noundef !28
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !29806
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit.i.i": ; preds = %bb.b, %.lr.ph.i.i
  %i.h = icmp eq i64 %i.e, %.val1
  br i1 %i.h, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8ac9a7b7c12b2c75E.exit", label %.lr.ph.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8ac9a7b7c12b2c75E.exit": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit.i.i", %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !29, !noundef !28 ; 2 uses
  %i.i = icmp eq i64 %.val2, 0
  br i1 %i.i, label %"_ZN4core3ptr72drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..string..String$GT$$GT$17h19dba77b5fafc7b4E.exit6", label %bb.c

bb.c:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8ac9a7b7c12b2c75E.exit"
  %i.j = mul nuw i64 %.val2, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #41
  br label %"_ZN4core3ptr72drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..string..String$GT$$GT$17h19dba77b5fafc7b4E.exit6"

"_ZN4core3ptr72drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..string..String$GT$$GT$17h19dba77b5fafc7b4E.exit6": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8ac9a7b7c12b2c75E.exit", %bb.c
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$lsp_harness..TestFile$GT$$GT$17h176580aade9e5533E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !28, !noundef !28 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !28 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29821)
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h420107a5ea55698fE.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %"_ZN4core3ptr42drop_in_place$LT$lsp_harness..TestFile$GT$17h7e5963e49b1aa02bE.exit.i.i"
  %.sroa.0.07.i.i = phi i64 [ %i.e, %"_ZN4core3ptr42drop_in_place$LT$lsp_harness..TestFile$GT$17h7e5963e49b1aa02bE.exit.i.i" ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [112 x i8], ptr %.val, i64 %.sroa.0.07.i.i ; 4 uses
  %i.e = add nuw i64 %.sroa.0.07.i.i, 1           ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29822)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29823)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29824)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29825)
  %.val.i.i.i.i.i.i = load i64, ptr %i.d, align 8, !range !29, !alias.scope !29826, !noundef !28 ; 2 uses
  %i.f = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.f, label %"_ZN4core3ptr29drop_in_place$LT$url..Url$GT$17ha5fc9926f631e9bcE.exit.i.i.i", label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !29826, !nonnull !28, !noundef !28
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !29826
  br label %"_ZN4core3ptr29drop_in_place$LT$url..Url$GT$17ha5fc9926f631e9bcE.exit.i.i.i"

"_ZN4core3ptr29drop_in_place$LT$url..Url$GT$17ha5fc9926f631e9bcE.exit.i.i.i": ; preds = %bb.b, %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29827)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29828)
  %.val.i.i1.i.i.i = load i64, ptr %i.h, align 8, !range !29, !alias.scope !29829, !noundef !28 ; 2 uses
  %i.i = icmp eq i64 %.val.i.i1.i.i.i, 0
  br i1 %i.i, label %"_ZN4core3ptr42drop_in_place$LT$lsp_harness..TestFile$GT$17h7e5963e49b1aa02bE.exit.i.i", label %bb.c

bb.c:                                             ; preds = %"_ZN4core3ptr29drop_in_place$LT$url..Url$GT$17ha5fc9926f631e9bcE.exit.i.i.i"
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %.val1.i.i2.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !29829, !nonnull !28, !noundef !28
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i2.i.i.i, i64 noundef %.val.i.i1.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !29829
  br label %"_ZN4core3ptr42drop_in_place$LT$lsp_harness..TestFile$GT$17h7e5963e49b1aa02bE.exit.i.i"

"_ZN4core3ptr42drop_in_place$LT$lsp_harness..TestFile$GT$17h7e5963e49b1aa02bE.exit.i.i": ; preds = %bb.c, %"_ZN4core3ptr29drop_in_place$LT$url..Url$GT$17ha5fc9926f631e9bcE.exit.i.i.i"
  %i.k = icmp eq i64 %i.e, %.val1
  br i1 %i.k, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h420107a5ea55698fE.exit", label %.lr.ph.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h420107a5ea55698fE.exit": ; preds = %"_ZN4core3ptr42drop_in_place$LT$lsp_harness..TestFile$GT$17h7e5963e49b1aa02bE.exit.i.i", %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !29, !noundef !28 ; 2 uses
  %i.l = icmp eq i64 %.val2, 0
  br i1 %i.l, label %"_ZN4core3ptr72drop_in_place$LT$alloc..raw_vec..RawVec$LT$lsp_harness..TestFile$GT$$GT$17hea6f5e7e83a6f081E.exit6", label %bb.d

bb.d:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h420107a5ea55698fE.exit"
  %i.m = mul nuw i64 %.val2, 112
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 8) #41
  br label %"_ZN4core3ptr72drop_in_place$LT$alloc..raw_vec..RawVec$LT$lsp_harness..TestFile$GT$$GT$17hea6f5e7e83a6f081E.exit6"

"_ZN4core3ptr72drop_in_place$LT$alloc..raw_vec..RawVec$LT$lsp_harness..TestFile$GT$$GT$17hea6f5e7e83a6f081E.exit6": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h420107a5ea55698fE.exit", %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$lsp_types..Diagnostic$GT$$GT$17hf071e58cf16782c9E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !28, !noundef !28 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !28 ; 4 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ff745720a255f74E.exit", label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %.val1
  br i1 %i.d, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ff745720a255f74E.exit", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i7 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [264 x i8], ptr %.val, i64 %.sroa.0.0.i.i7
  %i.f = add i64 %.sroa.0.0.i.i7, 1               ; 4 uses
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$lsp_types..Diagnostic$GT$17h405abd5e12ff2932E"(ptr noalias noundef readonly align 8 dereferenceable(264) %i.e)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph9
  %i.g = add i64 %.sroa.0.1.i.i8, 1               ; 2 uses
  %i.h = icmp eq i64 %i.g, %.val1
  br i1 %i.h, label %.body, label %.lr.ph9

bb.d:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %.val1
  br i1 %i.j, label %.body, label %.lr.ph9

.lr.ph9:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i8 = phi i64 [ %i.g, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw [264 x i8], ptr %.val, i64 %.sroa.0.1.i.i8
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$lsp_types..Diagnostic$GT$17h405abd5e12ff2932E"(ptr noalias noundef readonly align 8 dereferenceable(264) %i.k) #43
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %.lr.ph9
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40, !noalias !29832
  unreachable

.body:                                            ; preds = %bb.c, %bb.d
  %.val4 = load i64, ptr %0, align 8, !range !29, !noundef !28 ; 2 uses
  %i.m = icmp eq i64 %.val4, 0
  br i1 %i.m, label %"_ZN4core3ptr72drop_in_place$LT$alloc..raw_vec..RawVec$LT$lsp_types..Diagnostic$GT$$GT$17h1fc3ec6b4c97f452E.exit", label %bb.f

bb.f:                                             ; preds = %.body
  %i.n = mul nuw i64 %.val4, 264
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 8) #41
  br label %"_ZN4core3ptr72drop_in_place$LT$alloc..raw_vec..RawVec$LT$lsp_types..Diagnostic$GT$$GT$17h1fc3ec6b4c97f452E.exit"

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ff745720a255f74E.exit": ; preds = %bb.b, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !29, !noundef !28 ; 2 uses
  %i.o = icmp eq i64 %.val2, 0
  br i1 %i.o, label %"_ZN4core3ptr72drop_in_place$LT$alloc..raw_vec..RawVec$LT$lsp_types..Diagnostic$GT$$GT$17h1fc3ec6b4c97f452E.exit6", label %bb.g

bb.g:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ff745720a255f74E.exit"
  %i.p = mul nuw i64 %.val2, 264
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #41
  br label %"_ZN4core3ptr72drop_in_place$LT$alloc..raw_vec..RawVec$LT$lsp_types..Diagnostic$GT$$GT$17h1fc3ec6b4c97f452E.exit6"

"_ZN4core3ptr72drop_in_place$LT$alloc..raw_vec..RawVec$LT$lsp_types..Diagnostic$GT$$GT$17h1fc3ec6b4c97f452E.exit6": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ff745720a255f74E.exit", %bb.g
  ret void

"_ZN4core3ptr72drop_in_place$LT$alloc..raw_vec..RawVec$LT$lsp_types..Diagnostic$GT$$GT$17h1fc3ec6b4c97f452E.exit": ; preds = %bb.f, %.body
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr66drop_in_place$LT$toml..de..deserializer..array..ArraySeqAccess$GT$17hd04528975fec4aacE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29840)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29841)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !29842, !nonnull !28, !noundef !28 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i.i = load ptr, ptr %i.c, align 8, !alias.scope !29842, !nonnull !28, !noundef !28 ; 2 uses
  %i.d = ptrtoint ptr %.val2.i.i to i64
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 56                  ; 3 uses
  %i.h = icmp eq ptr %.val2.i.i, %i.b
  br i1 %i.h, label %"_ZN4core3ptr104drop_in_place$LT$$u5b$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$u5d$$GT$17h9bf1f6e9a9010ef8E.exit.i.i", label %.lr.ph

.body.i.i:                                        ; preds = %bb.d, %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !29842, !noundef !28 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %"_ZN4core3ptr227drop_in_place$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$C$alloc..alloc..Global$GT$$GT$17h1d2ea18134779a79E.exit.i.i", label %bb.b

bb.b:                                             ; preds = %.body.i.i
  %i.l = load ptr, ptr %0, align 8, !alias.scope !29842, !nonnull !28, !noundef !28
  %i.m = mul nuw i64 %i.j, 56
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.l, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !29842
  br label %"_ZN4core3ptr227drop_in_place$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$C$alloc..alloc..Global$GT$$GT$17h1d2ea18134779a79E.exit.i.i"

bb.c:                                             ; preds = %.lr.ph
  %i.n = icmp eq i64 %i.p, %i.g
  br i1 %i.n, label %"_ZN4core3ptr104drop_in_place$LT$$u5b$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$u5d$$GT$17h9bf1f6e9a9010ef8E.exit.i.i", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.0.0.i.i.i3 = phi i64 [ %i.p, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw [56 x i8], ptr %i.b, i64 %.sroa.0.0.i.i.i3
  %i.p = add nuw nsw i64 %.sroa.0.0.i.i.i3, 1     ; 4 uses
  invoke fastcc void @"_ZN4core3ptr94drop_in_place$LT$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$GT$17h3830b357c8f09304E"(ptr noalias noundef readonly align 8 dereferenceable(56) %i.o)
          to label %bb.c unwind label %bb.e, !noalias !29842, !inline_history !29837

bb.d:                                             ; preds = %.lr.ph5
  %i.q = add nuw nsw i64 %.sroa.0.1.i.i.i4, 1     ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.g
  br i1 %i.r, label %.body.i.i, label %.lr.ph5

bb.e:                                             ; preds = %.lr.ph
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = icmp eq i64 %i.p, %i.g
  br i1 %i.t, label %.body.i.i, label %.lr.ph5

.lr.ph5:                                          ; preds = %bb.e, %bb.d
  %.sroa.0.1.i.i.i4 = phi i64 [ %i.q, %bb.d ], [ %i.p, %bb.e ] ; 2 uses
  %i.u = getelementptr inbounds nuw [56 x i8], ptr %i.b, i64 %.sroa.0.1.i.i.i4
  invoke fastcc void @"_ZN4core3ptr94drop_in_place$LT$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$GT$17h3830b357c8f09304E"(ptr noalias noundef readonly align 8 dereferenceable(56) %i.u) #43
          to label %bb.d unwind label %bb.f, !noalias !29842, !inline_history !29837

bb.f:                                             ; preds = %.lr.ph5
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40, !noalias !29843, !inline_history !29837
  unreachable

"_ZN4core3ptr104drop_in_place$LT$$u5b$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$u5d$$GT$17h9bf1f6e9a9010ef8E.exit.i.i": ; preds = %bb.c, %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !29842, !noundef !28 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %"_ZN4core3ptr133drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$GT$$GT$17hf4a5f425add2bf4dE.exit", label %bb.g

bb.g:                                             ; preds = %"_ZN4core3ptr104drop_in_place$LT$$u5b$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$u5d$$GT$17h9bf1f6e9a9010ef8E.exit.i.i"
  %i.z = load ptr, ptr %0, align 8, !alias.scope !29842, !nonnull !28, !noundef !28
  %i.aa = mul nuw i64 %i.x, 56
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.z, i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !29842
  br label %"_ZN4core3ptr133drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$GT$$GT$17hf4a5f425add2bf4dE.exit"

"_ZN4core3ptr227drop_in_place$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$C$alloc..alloc..Global$GT$$GT$17h1d2ea18134779a79E.exit.i.i": ; preds = %bb.b, %.body.i.i
  resume { ptr, i32 } %i.s

"_ZN4core3ptr133drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$GT$$GT$17hf4a5f425add2bf4dE.exit": ; preds = %"_ZN4core3ptr104drop_in_place$LT$$u5b$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$u5d$$GT$17h9bf1f6e9a9010ef8E.exit.i.i", %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr66drop_in_place$LT$toml..de..deserializer..table..TableMapAccess$GT$17h8a83ecca0cd96ebeE"(ptr noalias noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @"_ZN99_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hef1d1390fd42cfc9E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %0)
          to label %"_ZN4core3ptr192drop_in_place$LT$toml..map..IntoIter$LT$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$GT$$GT$17hddbcda465bba8ea2E.exit" unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke fastcc void @"_ZN4core3ptr201drop_in_place$LT$core..option..Option$LT$$LP$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$RP$$GT$$GT$17h0ff744d0c43d78a2E"(ptr noalias noundef align 8 dereferenceable(96) %i.b) #43
          to label %bb.f unwind label %bb.e

"_ZN4core3ptr192drop_in_place$LT$toml..map..IntoIter$LT$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$GT$$GT$17hddbcda465bba8ea2E.exit": ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29852)
  %i.d = load i64, ptr %i.c, align 8, !range !40, !alias.scope !29852, !noundef !28 ; 3 uses
  %i.e = icmp eq i64 %i.d, -9223372036854775807
  br i1 %i.e, label %"_ZN4core3ptr201drop_in_place$LT$core..option..Option$LT$$LP$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$RP$$GT$$GT$17h0ff744d0c43d78a2E.exit", label %bb.c

bb.c:                                             ; preds = %"_ZN4core3ptr192drop_in_place$LT$toml..map..IntoIter$LT$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$GT$$GT$17hddbcda465bba8ea2E.exit"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29853)
  %switch.i.i = icmp sgt i64 %i.d, 0
  br i1 %switch.i.i, label %bb.d, label %"_ZN4core3ptr173drop_in_place$LT$$LP$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$RP$$GT$17h8bf50e43af11f30eE.exit.i"

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val1.i.i = load ptr, ptr %i.f, align 8, !alias.scope !29854, !nonnull !28, !noundef !28
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !29855
  br label %"_ZN4core3ptr173drop_in_place$LT$$LP$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$RP$$GT$17h8bf50e43af11f30eE.exit.i"

"_ZN4core3ptr173drop_in_place$LT$$LP$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$RP$$GT$17h8bf50e43af11f30eE.exit.i": ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call fastcc void @"_ZN4core3ptr94drop_in_place$LT$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$GT$17h3830b357c8f09304E"(ptr noalias noundef readonly align 8 dereferenceable(56) %i.g)
  br label %"_ZN4core3ptr201drop_in_place$LT$core..option..Option$LT$$LP$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$RP$$GT$$GT$17h0ff744d0c43d78a2E.exit"

"_ZN4core3ptr201drop_in_place$LT$core..option..Option$LT$$LP$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$RP$$GT$$GT$17h0ff744d0c43d78a2E.exit": ; preds = %"_ZN4core3ptr192drop_in_place$LT$toml..map..IntoIter$LT$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$GT$$GT$17hddbcda465bba8ea2E.exit", %"_ZN4core3ptr173drop_in_place$LT$$LP$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$RP$$GT$17h8bf50e43af11f30eE.exit.i"
  ret void

bb.e:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40
  unreachable

bb.f:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr67drop_in_place$LT$alloc..vec..Vec$LT$lsp_types..LocationLink$GT$$GT$17h2bc371b45dfc169eE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !28, !noundef !28 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !28 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29870)
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0f855e60a127fa73E.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %"_ZN4core3ptr44drop_in_place$LT$lsp_types..LocationLink$GT$17he246538f0a699fecE.exit.i.i"
  %.sroa.0.011.i.i = phi i64 [ %i.e, %"_ZN4core3ptr44drop_in_place$LT$lsp_types..LocationLink$GT$17he246538f0a699fecE.exit.i.i" ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [144 x i8], ptr %.val, i64 %.sroa.0.011.i.i ; 2 uses
  %i.e = add nuw i64 %.sroa.0.011.i.i, 1          ; 2 uses
  %.val8.i.i = load i64, ptr %i.d, align 8, !range !29, !alias.scope !29871, !noundef !28 ; 2 uses
  %i.f = icmp eq i64 %.val8.i.i, 0
  br i1 %i.f, label %"_ZN4core3ptr44drop_in_place$LT$lsp_types..LocationLink$GT$17he246538f0a699fecE.exit.i.i", label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = getelementptr i8, ptr %i.d, i64 8
  %.val9.i.i = load ptr, ptr %i.g, align 8, !alias.scope !29870, !nonnull !28, !noundef !28
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i, i64 noundef %.val8.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !29872
  br label %"_ZN4core3ptr44drop_in_place$LT$lsp_types..LocationLink$GT$17he246538f0a699fecE.exit.i.i"

"_ZN4core3ptr44drop_in_place$LT$lsp_types..LocationLink$GT$17he246538f0a699fecE.exit.i.i": ; preds = %bb.b, %.lr.ph.i.i
  %i.h = icmp eq i64 %i.e, %.val1
  br i1 %i.h, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0f855e60a127fa73E.exit", label %.lr.ph.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0f855e60a127fa73E.exit": ; preds = %"_ZN4core3ptr44drop_in_place$LT$lsp_types..LocationLink$GT$17he246538f0a699fecE.exit.i.i", %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !29, !noundef !28 ; 2 uses
  %i.i = icmp eq i64 %.val2, 0
  br i1 %i.i, label %"_ZN4core3ptr74drop_in_place$LT$alloc..raw_vec..RawVec$LT$lsp_types..LocationLink$GT$$GT$17h0936d09f819f86c4E.exit6", label %bb.c

bb.c:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0f855e60a127fa73E.exit"
  %i.j = mul nuw i64 %.val2, 144
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #41
  br label %"_ZN4core3ptr74drop_in_place$LT$alloc..raw_vec..RawVec$LT$lsp_types..LocationLink$GT$$GT$17h0936d09f819f86c4E.exit6"

"_ZN4core3ptr74drop_in_place$LT$alloc..raw_vec..RawVec$LT$lsp_types..LocationLink$GT$$GT$17h0936d09f819f86c4E.exit6": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0f855e60a127fa73E.exit", %bb.c
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr67drop_in_place$LT$alloc..vec..Vec$LT$lsp_types..MarkedString$GT$$GT$17hf6aae2bd971fc620E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !28, !noundef !28 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !28 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29891)
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he60d39382534c53eE.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %"_ZN4core3ptr44drop_in_place$LT$lsp_types..MarkedString$GT$17hb05b442a5ff6eeb6E.exit.i.i"
  %.sroa.0.07.i.i = phi i64 [ %i.e, %"_ZN4core3ptr44drop_in_place$LT$lsp_types..MarkedString$GT$17hb05b442a5ff6eeb6E.exit.i.i" ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [48 x i8], ptr %.val, i64 %.sroa.0.07.i.i ; 5 uses
  %i.e = add nuw i64 %.sroa.0.07.i.i, 1           ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29892)
  %i.f = load i64, ptr %i.d, align 8, !range !34, !alias.scope !29893, !noundef !28 ; 3 uses
  %i.g = icmp eq i64 %i.f, -9223372036854775808
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val.i.i.i.i.i = load i64, ptr %i.h, align 8, !range !29, !alias.scope !29894, !noundef !28 ; 2 uses
  %i.i = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.i, label %"_ZN4core3ptr44drop_in_place$LT$lsp_types..MarkedString$GT$17hb05b442a5ff6eeb6E.exit.i.i", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit.sink.split.i.i.i"

bb.c:                                             ; preds = %.lr.ph.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29895)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29896)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29897)
  %i.j = icmp eq i64 %i.f, 0
  br i1 %i.j, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit.i.i.i.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !29898, !nonnull !28, !noundef !28
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !29898
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit.i.i.i.i": ; preds = %bb.d, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.val.i.i4.i.i.i.i = load i64, ptr %i.l, align 8, !range !29, !alias.scope !29899, !noundef !28 ; 2 uses
  %i.m = icmp eq i64 %.val.i.i4.i.i.i.i, 0
  br i1 %i.m, label %"_ZN4core3ptr44drop_in_place$LT$lsp_types..MarkedString$GT$17hb05b442a5ff6eeb6E.exit.i.i", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit.sink.split.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit.sink.split.i.i.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit.i.i.i.i", %bb.b
  %.sink1.i.i.i = phi i64 [ 16, %bb.b ], [ 32, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit.i.i.i.i" ]
  %.val.i.i4.i.sink.i.i.i = phi i64 [ %.val.i.i.i.i.i, %bb.b ], [ %.val.i.i4.i.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit.i.i.i.i" ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink1.i.i.i
  %.val1.i.i5.i.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !29893, !nonnull !28, !noundef !28
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i5.i.i.i.i, i64 noundef %.val.i.i4.i.sink.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !29893
  br label %"_ZN4core3ptr44drop_in_place$LT$lsp_types..MarkedString$GT$17hb05b442a5ff6eeb6E.exit.i.i"

"_ZN4core3ptr44drop_in_place$LT$lsp_types..MarkedString$GT$17hb05b442a5ff6eeb6E.exit.i.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit.sink.split.i.i.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit.i.i.i.i", %bb.b
  %i.o = icmp eq i64 %i.e, %.val1
  br i1 %i.o, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he60d39382534c53eE.exit", label %.lr.ph.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he60d39382534c53eE.exit": ; preds = %"_ZN4core3ptr44drop_in_place$LT$lsp_types..MarkedString$GT$17hb05b442a5ff6eeb6E.exit.i.i", %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !29, !noundef !28 ; 2 uses
  %i.p = icmp eq i64 %.val2, 0
  br i1 %i.p, label %"_ZN4core3ptr74drop_in_place$LT$alloc..raw_vec..RawVec$LT$lsp_types..MarkedString$GT$$GT$17hd98ec56ffc59dd87E.exit6", label %bb.e

bb.e:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he60d39382534c53eE.exit"
  %i.q = mul nuw i64 %.val2, 48
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 8) #41
  br label %"_ZN4core3ptr74drop_in_place$LT$alloc..raw_vec..RawVec$LT$lsp_types..MarkedString$GT$$GT$17hd98ec56ffc59dd87E.exit6"

"_ZN4core3ptr74drop_in_place$LT$alloc..raw_vec..RawVec$LT$lsp_types..MarkedString$GT$$GT$17hd98ec56ffc59dd87E.exit6": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he60d39382534c53eE.exit", %bb.e
end_hunk_2
begin_hunk_3_@"_ZN4core3ptr95drop_in_place$LT$lsp_types..OneOf$LT$lsp_types..TextEdit$C$lsp_types..AnnotatedTextEdit$GT$$GT$17hc5bda0a131472e42E":bb.a
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i3.i, i64 noundef %.val.i.i2.i.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !28
  br label %"_ZN4core3ptr40drop_in_place$LT$lsp_types..TextEdit$GT$17h4b1d1e831c9f902bE.exit"

"_ZN4core3ptr40drop_in_place$LT$lsp_types..TextEdit$GT$17h4b1d1e831c9f902bE.exit": ; preds = %"_ZN4core3ptr40drop_in_place$LT$lsp_types..TextEdit$GT$17h4b1d1e831c9f902bE.exit.sink.split", %"_ZN4core3ptr40drop_in_place$LT$lsp_types..TextEdit$GT$17h4b1d1e831c9f902bE.exit.i", %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr95drop_in_place$LT$serde..private..de..content..MapDeserializer$LT$toml..de..error..Error$GT$$GT$17h99841c59ab89287aE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @"_ZN4core3ptr145drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h87196d6649e0d9c0E"(ptr noalias noundef align 8 dereferenceable(32) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = load i8, ptr %0, align 8, !range !38, !alias.scope !31862, !noundef !28
  %i.d = icmp eq i8 %i.c, 22
  br i1 %i.d, label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h6e6d85a2c9f97af7E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h10e52ff9e93f0b3eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %0)
          to label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h6e6d85a2c9f97af7E.exit" unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.e = load i8, ptr %0, align 8, !range !38, !alias.scope !31863, !noundef !28
  %i.f = icmp eq i8 %i.e, 22
  br i1 %i.f, label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h6e6d85a2c9f97af7E.exit1", label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h10e52ff9e93f0b3eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %0)
  br label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h6e6d85a2c9f97af7E.exit1"

"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h6e6d85a2c9f97af7E.exit1": ; preds = %bb.d, %bb.e
  ret void

bb.f:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40
  unreachable

"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h6e6d85a2c9f97af7E.exit": ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @"_ZN4core3ptr96drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$lsp_types..DiagnosticTag$GT$$GT$$GT$17h63e9a10f68310f24E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !34, !noundef !28 ; 2 uses
  %switch = icmp sgt i64 %i.a, 0
  br i1 %switch, label %bb.b, label %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$lsp_types..DiagnosticTag$GT$$GT$17h427e56f90180c562E.exit"

"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$lsp_types..DiagnosticTag$GT$$GT$17h427e56f90180c562E.exit": ; preds = %bb.a, %bb.b
  ret void

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !28, !noundef !28
  %i.c = shl nuw i64 %i.a, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 4) #41
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$lsp_types..DiagnosticTag$GT$$GT$17h427e56f90180c562E.exit"
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr96drop_in_place$LT$lsp_harness..jsonrpc..SendRequest$LT$lsp_types..request..ExecuteCommand$GT$$GT$17h631640771b7e908fE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31884)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31885)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31886)
  %.val.i.i.i = load i64, ptr %0, align 8, !range !29, !alias.scope !31887, !noundef !28 ; 2 uses
  %i.a = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.a, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit.i", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !31887, !nonnull !28, !noundef !28
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !31887
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit.i": ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$serde_json..value..Value$GT$$GT$17hb1370c816d5955a9E"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.c)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val4.i = load ptr, ptr %i.d, align 8, !alias.scope !31884, !nonnull !28, !noundef !28
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i, i64 noundef %.val3.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !31888
  br label %"_ZN4core3ptr64drop_in_place$LT$lsp_types..progress..WorkDoneProgressParams$GT$17h8a22fb8e68a8719aE.exit.i"

bb.d:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit.i"
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val3.i = load i64, ptr %i.f, align 8, !range !40, !alias.scope !31889, !noundef !28 ; 2 uses
  %switch.i.i.i = icmp sgt i64 %.val3.i, 0
  br i1 %switch.i.i.i, label %bb.c, label %"_ZN4core3ptr64drop_in_place$LT$lsp_types..progress..WorkDoneProgressParams$GT$17h8a22fb8e68a8719aE.exit.i"

bb.e:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit.i"
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val.i = load i64, ptr %i.g, align 8, !range !40, !alias.scope !31889, !noundef !28 ; 2 uses
  %switch.i.i5.i = icmp sgt i64 %.val.i, 0
  br i1 %switch.i.i5.i, label %bb.f, label %"_ZN4core3ptr52drop_in_place$LT$lsp_types..ExecuteCommandParams$GT$17h61c510d87765bb9cE.exit"

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val2.i = load ptr, ptr %i.h, align 8, !alias.scope !31884, !nonnull !28, !noundef !28
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !31890
  br label %"_ZN4core3ptr52drop_in_place$LT$lsp_types..ExecuteCommandParams$GT$17h61c510d87765bb9cE.exit"

"_ZN4core3ptr64drop_in_place$LT$lsp_types..progress..WorkDoneProgressParams$GT$17h8a22fb8e68a8719aE.exit.i": ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.e

"_ZN4core3ptr52drop_in_place$LT$lsp_types..ExecuteCommandParams$GT$17h61c510d87765bb9cE.exit": ; preds = %bb.e, %bb.f
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr96drop_in_place$LT$lsp_harness..jsonrpc..SendRequest$LT$lsp_types..request..GotoDefinition$GT$$GT$17hb86b37ec548218b3E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31921)
  %.val9.i = load i64, ptr %0, align 8, !range !29, !alias.scope !31922, !noundef !28 ; 2 uses
  %i.a = icmp eq i64 %.val9.i, 0
  br i1 %i.a, label %"_ZN4core3ptr58drop_in_place$LT$lsp_types..TextDocumentPositionParams$GT$17hf307ad23afe488fcE.exit.i", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val10.i = load ptr, ptr %i.b, align 8, !alias.scope !31921, !nonnull !28, !noundef !28
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10.i, i64 noundef %.val9.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !31923
  br label %"_ZN4core3ptr58drop_in_place$LT$lsp_types..TextDocumentPositionParams$GT$17hf307ad23afe488fcE.exit.i"

"_ZN4core3ptr58drop_in_place$LT$lsp_types..TextDocumentPositionParams$GT$17hf307ad23afe488fcE.exit.i": ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val.i = load i64, ptr %i.c, align 8, !range !40, !alias.scope !31924, !noundef !28 ; 2 uses
  %switch.i.i11.i = icmp sgt i64 %.val.i, 0
  br i1 %switch.i.i11.i, label %bb.c, label %"_ZN4core3ptr64drop_in_place$LT$lsp_types..progress..WorkDoneProgressParams$GT$17h8a22fb8e68a8719aE.exit12.i"

bb.c:                                             ; preds = %"_ZN4core3ptr58drop_in_place$LT$lsp_types..TextDocumentPositionParams$GT$17hf307ad23afe488fcE.exit.i"
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val2.i = load ptr, ptr %i.d, align 8, !alias.scope !31921, !nonnull !28, !noundef !28
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !31925
  br label %"_ZN4core3ptr64drop_in_place$LT$lsp_types..progress..WorkDoneProgressParams$GT$17h8a22fb8e68a8719aE.exit12.i"

"_ZN4core3ptr64drop_in_place$LT$lsp_types..progress..WorkDoneProgressParams$GT$17h8a22fb8e68a8719aE.exit12.i": ; preds = %bb.c, %"_ZN4core3ptr58drop_in_place$LT$lsp_types..TextDocumentPositionParams$GT$17hf307ad23afe488fcE.exit.i"
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.val5.i = load i64, ptr %i.e, align 8, !range !40, !alias.scope !31926, !noundef !28 ; 2 uses
  %switch.i.i14.i = icmp sgt i64 %.val5.i, 0
  br i1 %switch.i.i14.i, label %bb.d, label %"_ZN4core3ptr52drop_in_place$LT$lsp_types..GotoDefinitionParams$GT$17h7b9fdb87e69c98fbE.exit"

bb.d:                                             ; preds = %"_ZN4core3ptr64drop_in_place$LT$lsp_types..progress..WorkDoneProgressParams$GT$17h8a22fb8e68a8719aE.exit12.i"
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.val6.i = load ptr, ptr %i.f, align 8, !alias.scope !31921, !nonnull !28, !noundef !28
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i, i64 noundef %.val5.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !31927
  br label %"_ZN4core3ptr52drop_in_place$LT$lsp_types..GotoDefinitionParams$GT$17h7b9fdb87e69c98fbE.exit"

"_ZN4core3ptr52drop_in_place$LT$lsp_types..GotoDefinitionParams$GT$17h7b9fdb87e69c98fbE.exit": ; preds = %"_ZN4core3ptr64drop_in_place$LT$lsp_types..progress..WorkDoneProgressParams$GT$17h8a22fb8e68a8719aE.exit12.i", %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$serde_core..private..content..Content$GT$$GT$17h9624aa523aafa0b3E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31933)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !31933, !nonnull !28, !noundef !28 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i = load ptr, ptr %i.c, align 8, !alias.scope !31933, !nonnull !28, !noundef !28 ; 2 uses
  %i.d = ptrtoint ptr %.val2.i to i64
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 5                   ; 3 uses
  %i.h = icmp eq ptr %.val2.i, %i.b
  br i1 %i.h, label %"_ZN4core3ptr68drop_in_place$LT$$u5b$serde_core..private..content..Content$u5d$$GT$17ha6b4bfab07656dbdE.exit.i", label %.lr.ph

.body.i:                                          ; preds = %bb.d, %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !31933, !noundef !28 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %"_ZN4core3ptr191drop_in_place$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$serde_core..private..content..Content$C$alloc..alloc..Global$GT$$GT$17h52c0a769254ca4b2E.exit.i", label %bb.b

bb.b:                                             ; preds = %.body.i
  %i.l = load ptr, ptr %0, align 8, !alias.scope !31933, !nonnull !28, !noundef !28
  %i.m = shl nuw i64 %i.j, 5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.l, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !31933
  br label %"_ZN4core3ptr191drop_in_place$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$serde_core..private..content..Content$C$alloc..alloc..Global$GT$$GT$17h52c0a769254ca4b2E.exit.i"

bb.c:                                             ; preds = %.lr.ph
  %i.n = icmp eq i64 %i.p, %i.g
  br i1 %i.n, label %"_ZN4core3ptr68drop_in_place$LT$$u5b$serde_core..private..content..Content$u5d$$GT$17ha6b4bfab07656dbdE.exit.i", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.0.0.i.i3 = phi i64 [ %i.p, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.0.0.i.i3
  %i.p = add nuw nsw i64 %.sroa.0.0.i.i3, 1       ; 4 uses
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h10e52ff9e93f0b3eE"(ptr noalias noundef readonly align 8 dereferenceable(32) %i.o)
          to label %bb.c unwind label %bb.e, !noalias !31933, !inline_history !31930

bb.d:                                             ; preds = %.lr.ph5
  %i.q = add nuw nsw i64 %.sroa.0.1.i.i4, 1       ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.g
  br i1 %i.r, label %.body.i, label %.lr.ph5

bb.e:                                             ; preds = %.lr.ph
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = icmp eq i64 %i.p, %i.g
  br i1 %i.t, label %.body.i, label %.lr.ph5

.lr.ph5:                                          ; preds = %bb.e, %bb.d
  %.sroa.0.1.i.i4 = phi i64 [ %i.q, %bb.d ], [ %i.p, %bb.e ] ; 2 uses
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.0.1.i.i4
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h10e52ff9e93f0b3eE"(ptr noalias noundef readonly align 8 dereferenceable(32) %i.u) #43
          to label %bb.d unwind label %bb.f, !noalias !31933, !inline_history !31930

bb.f:                                             ; preds = %.lr.ph5
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40, !noalias !31934, !inline_history !31930
  unreachable

"_ZN4core3ptr68drop_in_place$LT$$u5b$serde_core..private..content..Content$u5d$$GT$17ha6b4bfab07656dbdE.exit.i": ; preds = %bb.c, %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !31933, !noundef !28 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf309ac09da9f37c7E.exit", label %bb.g

bb.g:                                             ; preds = %"_ZN4core3ptr68drop_in_place$LT$$u5b$serde_core..private..content..Content$u5d$$GT$17ha6b4bfab07656dbdE.exit.i"
  %i.z = load ptr, ptr %0, align 8, !alias.scope !31933, !nonnull !28, !noundef !28
  %i.aa = shl nuw i64 %i.x, 5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.z, i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !31933
  br label %"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf309ac09da9f37c7E.exit"

"_ZN4core3ptr191drop_in_place$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$serde_core..private..content..Content$C$alloc..alloc..Global$GT$$GT$17h52c0a769254ca4b2E.exit.i": ; preds = %bb.b, %.body.i
  resume { ptr, i32 } %i.s

"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf309ac09da9f37c7E.exit": ; preds = %"_ZN4core3ptr68drop_in_place$LT$$u5b$serde_core..private..content..Content$u5d$$GT$17ha6b4bfab07656dbdE.exit.i", %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr97drop_in_place$LT$anyhow..error..ErrorImpl$LT$anyhow..wrapper..DisplayError$LT$$RF$str$GT$$GT$$GT$17h23f8663a7f177538E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h02b415c971360a1dE"(ptr noalias noundef align 8 dereferenceable(48) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr97drop_in_place$LT$serde..private..de..content..MapDeserializer$LT$serde_json..error..Error$GT$$GT$17h66597dc5c20beabaE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @"_ZN4core3ptr145drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h87196d6649e0d9c0E"(ptr noalias noundef align 8 dereferenceable(32) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = load i8, ptr %0, align 8, !range !38, !alias.scope !31939, !noundef !28
  %i.d = icmp eq i8 %i.c, 22
  br i1 %i.d, label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h6e6d85a2c9f97af7E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h10e52ff9e93f0b3eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %0)
          to label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h6e6d85a2c9f97af7E.exit" unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.e = load i8, ptr %0, align 8, !range !38, !alias.scope !31940, !noundef !28
  %i.f = icmp eq i8 %i.e, 22
  br i1 %i.f, label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h6e6d85a2c9f97af7E.exit1", label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h10e52ff9e93f0b3eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %0)
  br label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h6e6d85a2c9f97af7E.exit1"

"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h6e6d85a2c9f97af7E.exit1": ; preds = %bb.d, %bb.e
  ret void

bb.f:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40
  unreachable

"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h6e6d85a2c9f97af7E.exit": ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h2901d3416aaa2c26E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31949)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31950
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !alias.scope !31949 ; 3 uses
  %.not.i.i = icmp eq ptr %.sroa.0.0.copyload.i, null
  br i1 %.not.i.i, label %"_ZN4core3ptr117drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h0e5209141c093047E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !31949
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !31949 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !31951, !noalias !31952
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.0.0.copyload.i, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !31951, !noalias !31952
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !31951, !noalias !31952
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !31951, !noalias !31952
  %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %.sroa.0.0.copyload.i, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !31951, !noalias !31952
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !31951, !noalias !31952
  br label %"_ZN4core3ptr117drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h0e5209141c093047E.exit"

"_ZN4core3ptr117drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h0e5209141c093047E.exit": ; preds = %bb.a, %bb.b
  %.sink23.i.i = phi i64 [ 1, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.sroa.7.0.copyload.sink.i.i = phi i64 [ %.sroa.5.0.copyload.i, %bb.b ], [ 0, %bb.a ]
  store i64 %.sink23.i.i, ptr %i.a, align 8, !alias.scope !31951, !noalias !31952
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %.sink23.i.i, ptr %i.b, align 8, !alias.scope !31951, !noalias !31952
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %.sroa.7.0.copyload.sink.i.i, ptr %i.c, align 8, !alias.scope !31951, !noalias !31952
  call fastcc void @"_ZN4core3ptr117drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17had382107fae52de8E"(ptr noalias noundef align 8 dereferenceable(72) %i.a), !noalias !31950, !inline_history !31948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !31950
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr98drop_in_place$LT$core..option..Option$LT$lsp_types..completion..CompletionItemLabelDetails$GT$$GT$17habe8775768e16059E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !40, !noundef !28 ; 4 uses
  %i.b = icmp eq i64 %i.a, -9223372036854775807
  br i1 %i.b, label %"_ZN4core3ptr70drop_in_place$LT$lsp_types..completion..CompletionItemLabelDetails$GT$17h108fb003f2958707E.exit", label %bb.b

"_ZN4core3ptr70drop_in_place$LT$lsp_types..completion..CompletionItemLabelDetails$GT$17h108fb003f2958707E.exit": ; preds = %bb.f, %bb.e, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h04d9f720c1044bd5E.exit.i", %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31967)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31968)
  %i.c = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.c, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h04d9f720c1044bd5E.exit.i", label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31969)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31970)
  %i.d = icmp eq i64 %i.a, 0
  br i1 %i.d, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h04d9f720c1044bd5E.exit.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !31971, !nonnull !28, !noundef !28
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %i.a, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !31971
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h04d9f720c1044bd5E.exit.i"

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h04d9f720c1044bd5E.exit.i": ; preds = %bb.d, %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31972)
  %i.g = load i64, ptr %i.f, align 8, !range !34, !alias.scope !31973, !noundef !28 ; 3 uses
  %i.h = icmp eq i64 %i.g, -9223372036854775808
  br i1 %i.h, label %"_ZN4core3ptr70drop_in_place$LT$lsp_types..completion..CompletionItemLabelDetails$GT$17h108fb003f2958707E.exit", label %bb.e

bb.e:                                             ; preds = %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h04d9f720c1044bd5E.exit.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31974)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31975)
  %i.i = icmp eq i64 %i.g, 0
  br i1 %i.i, label %"_ZN4core3ptr70drop_in_place$LT$lsp_types..completion..CompletionItemLabelDetails$GT$17h108fb003f2958707E.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i.i.i3.i = load ptr, ptr %i.j, align 8, !alias.scope !31976, !nonnull !28, !noundef !28
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i3.i, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !31976
  br label %"_ZN4core3ptr70drop_in_place$LT$lsp_types..completion..CompletionItemLabelDetails$GT$17h108fb003f2958707E.exit"
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr99drop_in_place$LT$core..result..Result$LT$lsp_types..MarkedString$C$serde_json..error..Error$GT$$GT$17hf8844d1500319d66E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !40, !noundef !28 ; 4 uses
  %.not = icmp eq i64 %i.a, -9223372036854775807
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31999)
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i.i = load i64, ptr %i.c, align 8, !range !29, !alias.scope !32000, !noundef !28 ; 2 uses
  %i.d = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.d, label %"_ZN4core3ptr44drop_in_place$LT$lsp_types..MarkedString$GT$17hb05b442a5ff6eeb6E.exit", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit.sink.split.i"

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32001)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32002)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32003)
end_hunk_3
begin_hunk_4_@"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h181067632ab1ef1dE":bb.a
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !alias.scope !36695, !noalias !36697
  %wide.load2035 = load <4 x i32>, ptr %i.gk, align 4, !alias.scope !36695, !noalias !36697
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %index ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  store <4 x i32> %wide.load, ptr %i.gl, align 4, !noalias !36698
  store <4 x i32> %wide.load2035, ptr %i.gm, align 4, !noalias !36698
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gn = icmp eq i64 %index.next, %n.vec
  br i1 %i.gn, label %.lr.ph.i.i73.i.i.preheader, label %vector.body, !llvm.loop !36617

.lr.ph.i.i73.i.i.preheader:                       ; preds = %vector.body, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i.i72.i.i"
  %.sroa.015.024.i.i.i.i.ph = phi ptr [ %.val39.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i.i72.i.i" ], [ %i.gh, %vector.body ]
  %.sroa.7.023.i.i.i.i.ph = phi i64 [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i.i72.i.i" ], [ %n.vec, %vector.body ]
  %.sroa.10.022.i.i.i.i.ph = phi i64 [ %.val40.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i.i72.i.i" ], [ %i.gi, %vector.body ]
  br label %.lr.ph.i.i73.i.i

.lr.ph.i.i73.i.i:                                 ; preds = %.lr.ph.i.i73.i.i.preheader, %bb.dc
  %.sroa.015.024.i.i.i.i = phi ptr [ %i.gr, %bb.dc ], [ %.sroa.015.024.i.i.i.i.ph, %.lr.ph.i.i73.i.i.preheader ] ; 3 uses
  %.sroa.7.023.i.i.i.i = phi i64 [ %i.gq, %bb.dc ], [ %.sroa.7.023.i.i.i.i.ph, %.lr.ph.i.i73.i.i.preheader ] ; 2 uses
  %.sroa.10.022.i.i.i.i = phi i64 [ %i.gp, %bb.dc ], [ %.sroa.10.022.i.i.i.i.ph, %.lr.ph.i.i73.i.i.preheader ]
  %i.go = icmp eq ptr %.sroa.015.024.i.i.i.i, %i.fz
  br i1 %i.go, label %.loopexit.i, label %bb.dc

bb.dc:                                            ; preds = %.lr.ph.i.i73.i.i
  %i.gp = add nsw i64 %.sroa.10.022.i.i.i.i, -1   ; 2 uses
  %i.gq = add nuw nsw i64 %.sroa.7.023.i.i.i.i, 1
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.015.024.i.i.i.i, i64 4
  %.val14.i.i.i.i = load i32, ptr %.sroa.015.024.i.i.i.i, align 4, !alias.scope !36695, !noalias !36697, !noundef !28
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %.sroa.7.023.i.i.i.i
  store i32 %.val14.i.i.i.i, ptr %i.gs, align 4, !noalias !36698
  %i.gt = icmp eq i64 %i.gp, 0
  br i1 %i.gt, label %.loopexit.i, label %.lr.ph.i.i73.i.i, !llvm.loop !36618

bb.dd:                                            ; preds = %bb.db
  %i.gu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gv = load i8, ptr %i.r, align 8, !range !45, !alias.scope !36699, !noalias !36629, !noundef !28
  %i.gw = icmp eq i8 %i.gv, 6
  br i1 %i.gw, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h79d9528608d63f86E.exit.i.i", label %bb.de

bb.de:                                            ; preds = %bb.dd
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17hd30bb28c59a03f14E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.r)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h79d9528608d63f86E.exit.i.i" unwind label %bb.df, !noalias !36631

bb.df:                                            ; preds = %bb.de
  %i.gx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body25.i

.body25.i:                                        ; preds = %bb.df, %bb.cf, %.body.i23.i
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40, !noalias !36631
  unreachable

.loopexit.i:                                      ; preds = %bb.dc, %.lr.ph.i.i73.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.thread.i.i75.i.i", %bb.cu
  %.sroa.59.sroa.4.0.i.i = phi i64 [ undef, %bb.cu ], [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.thread.i.i75.i.i" ], [ %.val40.i.i, %.lr.ph.i.i73.i.i ], [ %.val40.i.i, %bb.dc ]
  %.sroa.59.sroa.0.0.i.i = phi ptr [ undef, %bb.cu ], [ inttoptr (i64 4 to ptr), %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.thread.i.i75.i.i" ], [ %i.fx, %.lr.ph.i.i73.i.i ], [ %i.fx, %bb.dc ]
  %.sroa.07.0.i.i = phi i64 [ -9223372036854775808, %bb.cu ], [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.thread.i.i75.i.i" ], [ %.val40.i.i, %.lr.ph.i.i73.i.i ], [ %.val40.i.i, %bb.dc ]
  %i.gy = trunc nuw i32 %i.ca to i1
  %.sroa.56.0.i.i = select i1 %i.gy, i32 %i.cc, i32 undef
  %i.gz = trunc nuw i32 %i.bw to i1
  %.sroa.54.0.i.i = select i1 %i.gz, i32 %i.by, i32 undef
  %i.ha = trunc nuw i32 %i.ar to i1
  %.sroa.5.0.i.i = select i1 %i.ha, i32 %i.at, i32 undef
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.065.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.065.i, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !noalias !36700
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2486.sroa.6.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2486.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10118.i, i64 24, i1 false), !noalias !36700
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3193.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3193.i, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 32, i1 false), !noalias !36700
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !36629
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10118.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !36629
  %i.hb = getelementptr inbounds nuw [464 x i8], ptr %i.w, i64 %.sroa.7.0704.i ; 55 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hb, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.065.i, i64 24, i1 false), !noalias !36627
  %.sroa.466.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 24
  store i64 %.sroa.0.0123.i.i, ptr %.sroa.466.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.567.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 32
  store ptr %.sroa.6.0.i.i, ptr %.sroa.567.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.668.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 40
  store i64 %.sroa.7.0.i.i, ptr %.sroa.668.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.769.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 48
  store i64 %.sroa.083.0.i.i, ptr %.sroa.769.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.870.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 56
  store ptr %.sroa.685.0.i.i, ptr %.sroa.870.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.971.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 64
  store i64 %.sroa.788.0.i.i, ptr %.sroa.971.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.1072.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 72
  store i64 %.sroa.091.0.i.i, ptr %.sroa.1072.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.1173.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 80
  store ptr %.sroa.693.0.i.i, ptr %.sroa.1173.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.1274.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 88
  store i64 %.sroa.796.0.i.i, ptr %.sroa.1274.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.1375.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 96
  store i64 %.sroa.099.0.i.i, ptr %.sroa.1375.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.1476.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 104
  store ptr %.sroa.6101.0.i.i, ptr %.sroa.1476.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.1577.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 112
  store i64 %.sroa.7104.0.i.i, ptr %.sroa.1577.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.1678.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 120
  store i64 %.sroa.0122.0.i, ptr %.sroa.1678.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.1678.sroa.4.0..sroa.1678.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 128
  store ptr %.sroa.6124.0.i, ptr %.sroa.1678.sroa.4.0..sroa.1678.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.1678.sroa.5.0..sroa.1678.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 136
  store i64 %.sroa.7126.0.i, ptr %.sroa.1678.sroa.5.0..sroa.1678.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.1779.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 144
  store i64 %.sroa.0128.0.i, ptr %.sroa.1779.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.1779.sroa.4.0..sroa.1779.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 152
  store ptr %.sroa.6130.0.i, ptr %.sroa.1779.sroa.4.0..sroa.1779.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.1779.sroa.5.0..sroa.1779.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 160
  store i64 %.sroa.7132.0.i, ptr %.sroa.1779.sroa.5.0..sroa.1779.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.1779.sroa.6.0..sroa.1779.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 168
  store i64 %.sroa.7134.0.i, ptr %.sroa.1779.sroa.6.0..sroa.1779.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.1779.sroa.7.0..sroa.1779.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 176
  store ptr %.sroa.8136.0.i, ptr %.sroa.1779.sroa.7.0..sroa.1779.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.1779.sroa.8.0..sroa.1779.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 184
  store i64 %.sroa.9138.0.i, ptr %.sroa.1779.sroa.8.0..sroa.1779.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.1779.sroa.9.0..sroa.1779.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 192
  store i64 %.sroa.9140.0.i, ptr %.sroa.1779.sroa.9.0..sroa.1779.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.1779.sroa.10.0..sroa.1779.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 200
  store ptr %.sroa.13141.0.i, ptr %.sroa.1779.sroa.10.0..sroa.1779.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.1779.sroa.11.0..sroa.1779.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 208
  store i64 %.sroa.15142.0.i, ptr %.sroa.1779.sroa.11.0..sroa.1779.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.1880.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 216
  store i64 %.sroa.0143.0.i, ptr %.sroa.1880.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.1880.sroa.4.0..sroa.1880.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 224
  store ptr %.sroa.6145.0.i, ptr %.sroa.1880.sroa.4.0..sroa.1880.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.1880.sroa.5.0..sroa.1880.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 232
  store i64 %.sroa.7147.0.i, ptr %.sroa.1880.sroa.5.0..sroa.1880.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.1981.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 240
  store i64 %.sroa.07.0.i.i, ptr %.sroa.1981.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.2082.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 248
  store ptr %.sroa.59.sroa.0.0.i.i, ptr %.sroa.2082.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.2183.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 256
  store i64 %.sroa.59.sroa.4.0.i.i, ptr %.sroa.2183.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.2284.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 264
  store i64 %.sroa.097.0.i, ptr %.sroa.2284.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.2284.sroa.4.0..sroa.2284.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 272
  store ptr %.sroa.698.0.i, ptr %.sroa.2284.sroa.4.0..sroa.2284.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.2284.sroa.5.0..sroa.2284.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 280
  store i64 %.sroa.899.0.i, ptr %.sroa.2284.sroa.5.0..sroa.2284.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.2284.sroa.6.0..sroa.2284.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 288
  store i64 %.sroa.9100.0.i, ptr %.sroa.2284.sroa.6.0..sroa.2284.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.2284.sroa.7.0..sroa.2284.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 296
  store ptr %.sroa.11101.0.i, ptr %.sroa.2284.sroa.7.0..sroa.2284.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.2284.sroa.8.0..sroa.2284.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 304
  store i64 %.sroa.13102.0.i, ptr %.sroa.2284.sroa.8.0..sroa.2284.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.2385.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 312
  store i64 %.sroa.0104.0.i, ptr %.sroa.2385.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.2385.sroa.4.0..sroa.2385.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 320
  store i64 %.sroa.6106.0.i, ptr %.sroa.2385.sroa.4.0..sroa.2385.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.2385.sroa.5.0..sroa.2385.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 328
  store ptr %.sroa.8108.0.i, ptr %.sroa.2385.sroa.5.0..sroa.2385.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.2385.sroa.6.0..sroa.2385.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 336
  store i64 %.sroa.9110.0.i, ptr %.sroa.2385.sroa.6.0..sroa.2385.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.2486.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 344
  store i64 %.sroa.0115.0.i, ptr %.sroa.2486.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.2486.sroa.4.0..sroa.2486.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 352
  store i64 %.sroa.6116.0.i, ptr %.sroa.2486.sroa.4.0..sroa.2486.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.2486.sroa.5.0..sroa.2486.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 360
  store ptr %.sroa.9117.0.i, ptr %.sroa.2486.sroa.5.0..sroa.2486.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.2486.sroa.6.0..sroa.2486.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2486.sroa.6.0..sroa.2486.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2486.sroa.6.i, i64 24, i1 false), !noalias !36627
  %.sroa.2486.sroa.7.0..sroa.2486.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 392
  store i64 %.sroa.10119.0.i, ptr %.sroa.2486.sroa.7.0..sroa.2486.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.2587.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 400
  store i32 %i.ar, ptr %.sroa.2587.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.2688.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 404
  store i32 %.sroa.5.0.i.i, ptr %.sroa.2688.0..sroa_idx.i, align 4, !noalias !36627
  %.sroa.2789.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 408
  store i32 %i.bw, ptr %.sroa.2789.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.2890.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 412
  store i32 %.sroa.54.0.i.i, ptr %.sroa.2890.0..sroa_idx.i, align 4, !noalias !36627
  %.sroa.2991.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 416
  store i32 %i.ca, ptr %.sroa.2991.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.3092.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 420
  store i32 %.sroa.56.0.i.i, ptr %.sroa.3092.0..sroa_idx.i, align 4, !noalias !36627
  %.sroa.3193.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 424
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3193.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3193.i, i64 32, i1 false), !noalias !36627
  %.sroa.3294.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 456
  store i8 %i.bg, ptr %.sroa.3294.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.3395.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 457
  store i8 %i.bi, ptr %.sroa.3395.0..sroa_idx.i, align 1, !noalias !36627
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.065.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2486.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3193.i)
  %i.hc = icmp eq i64 %i.ah, 0
  br i1 %i.hc, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hd5130cc855bc4c46E.exit", label %bb.d

bb.dg:                                            ; preds = %bb.n, %.body.i.i, %.loopexit160.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i, %.body.i.i ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i, %bb.n ], [ %lpad.loopexit.i, %.loopexit160.i ]
  %i.hd = icmp eq i64 %.sroa.7.0704.i, 0
  br i1 %i.hd, label %._crit_edge, label %.lr.ph2031

bb.dh:                                            ; preds = %.lr.ph2031
  %i.he = icmp eq i64 %i.hg, %.sroa.7.0704.i
  br i1 %i.he, label %._crit_edge, label %.lr.ph2031

.lr.ph2031:                                       ; preds = %bb.dg, %bb.dh
  %.sroa.0.0.i.i.i2030 = phi i64 [ %i.hg, %bb.dh ], [ 0, %bb.dg ] ; 2 uses
  %i.hf = getelementptr inbounds nuw [464 x i8], ptr %i.w, i64 %.sroa.0.0.i.i.i2030
  %i.hg = add nuw nsw i64 %.sroa.0.0.i.i.i2030, 1 ; 4 uses
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$lsp_types..completion..CompletionItem$GT$17h72d57bb2a92e3f4dE"(ptr noalias noundef readonly align 8 dereferenceable(464) %i.hf)
          to label %bb.dh unwind label %bb.dj, !noalias !36701

bb.di:                                            ; preds = %.lr.ph2034
  %i.hh = add nuw nsw i64 %.sroa.0.1.i.i.i2032, 1 ; 2 uses
  %i.hi = icmp eq i64 %i.hh, %.sroa.7.0704.i
  br i1 %i.hi, label %"_ZN4core3ptr88drop_in_place$LT$alloc..raw_vec..RawVec$LT$lsp_types..completion..CompletionItem$GT$$GT$17h55280cb01fe317afE.exit.i", label %.lr.ph2034

bb.dj:                                            ; preds = %.lr.ph2031
  %i.hj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.hk = icmp eq i64 %i.hg, %.sroa.7.0704.i
  br i1 %i.hk, label %"_ZN4core3ptr88drop_in_place$LT$alloc..raw_vec..RawVec$LT$lsp_types..completion..CompletionItem$GT$$GT$17h55280cb01fe317afE.exit.i", label %.lr.ph2034

.lr.ph2034:                                       ; preds = %bb.dj, %bb.di
  %.sroa.0.1.i.i.i2032 = phi i64 [ %i.hh, %bb.di ], [ %i.hg, %bb.dj ] ; 2 uses
  %i.hl = getelementptr inbounds nuw [464 x i8], ptr %i.w, i64 %.sroa.0.1.i.i.i2032
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$lsp_types..completion..CompletionItem$GT$17h72d57bb2a92e3f4dE"(ptr noalias noundef readonly align 8 dereferenceable(464) %i.hl) #43
          to label %bb.di unwind label %bb.dk, !noalias !36701

bb.dk:                                            ; preds = %.lr.ph2034
  %i.hm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40, !noalias !36702
  unreachable

"_ZN4core3ptr88drop_in_place$LT$alloc..raw_vec..RawVec$LT$lsp_types..completion..CompletionItem$GT$$GT$17h55280cb01fe317afE.exit.i": ; preds = %bb.di, %bb.dj
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.w, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !36701
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40, !noalias !36627
  unreachable

._crit_edge:                                      ; preds = %bb.dh, %bb.dg
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.w, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !36701
  resume { ptr, i32 } %eh.lpad-body.i

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hd5130cc855bc4c46E.exit": ; preds = %bb.d, %.loopexit.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.thread.i"
  %.sroa.7.0 = phi ptr [ inttoptr (i64 8 to ptr), %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.thread.i" ], [ %i.w, %.loopexit.i ], [ %i.w, %bb.d ]
  store i64 %.16.val, ptr %0, align 8, !noalias !36625
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !36625
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.16.val, ptr %.sroa.10.0..sroa_idx, align 8, !noalias !36625
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hea6e08763bf87b5fE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(address, read_provenance) %.8.val, i64 %.16.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !36715
  %i.c = mul i64 %.16.val, 40                     ; 3 uses
  %or.cond.i.i.i.i = icmp ugt i64 %.16.val, 230584300921369395
  br i1 %or.cond.i.i.i.i, label %bb.c, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !44

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.a
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.thread.i", label %bb.b

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.thread.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %i.e = icmp eq i64 %.16.val, 0
  tail call void @llvm.assume(i1 %i.e)
  store i64 0, ptr %i.b, align 8, !noalias !36715
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.f, align 8, !noalias !36715
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hc131ba69dc5127b1E.exit"

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !36716
  %i.h = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef range(i64 1, 9) 8) #41, !noalias !36716 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i"

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.b ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1034) #42, !noalias !36715
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i": ; preds = %bb.b
  store i64 %.16.val, ptr %i.b, align 8, !noalias !36715
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.h, ptr %i.j, align 8, !noalias !36715
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %.8.val, i64 %.16.val
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %bb.d

bb.d:                                             ; preds = %"_ZN58_$LT$lsp_types..TextEdit$u20$as$u20$core..clone..Clone$GT$5clone17h5c68822b688bc4c7E.exit.i", %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i"
  %.sroa.012.023.i = phi ptr [ %.8.val, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i" ], [ %i.r, %"_ZN58_$LT$lsp_types..TextEdit$u20$as$u20$core..clone..Clone$GT$5clone17h5c68822b688bc4c7E.exit.i" ] ; 4 uses
  %.sroa.7.022.i = phi i64 [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i" ], [ %i.q, %"_ZN58_$LT$lsp_types..TextEdit$u20$as$u20$core..clone..Clone$GT$5clone17h5c68822b688bc4c7E.exit.i" ] ; 3 uses
  %.sroa.10.021.i = phi i64 [ %.16.val, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i" ], [ %i.n, %"_ZN58_$LT$lsp_types..TextEdit$u20$as$u20$core..clone..Clone$GT$5clone17h5c68822b688bc4c7E.exit.i" ]
  %i.n = add nsw i64 %.sroa.10.021.i, -1          ; 2 uses
  %i.o = icmp eq ptr %.sroa.012.023.i, %i.l
  br i1 %i.o, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hc131ba69dc5127b1E.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !36715
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.p, i64 16, i1 false), !alias.scope !36717, !noalias !36718
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.012.023.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @876)
          to label %"_ZN58_$LT$lsp_types..TextEdit$u20$as$u20$core..clone..Clone$GT$5clone17h5c68822b688bc4c7E.exit.i" unwind label %bb.f, !noalias !36718

"_ZN58_$LT$lsp_types..TextEdit$u20$as$u20$core..clone..Clone$GT$5clone17h5c68822b688bc4c7E.exit.i": ; preds = %bb.e
  %i.q = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 40
  %i.s = getelementptr inbounds nuw [40 x i8], ptr %i.h, i64 %.sroa.7.022.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.s, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false), !noalias !36718
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !36715
  %i.t = icmp eq i64 %i.n, 0
  br i1 %i.t, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hc131ba69dc5127b1E.exit", label %bb.d

bb.f:                                             ; preds = %bb.e
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i, ptr %i.k, align 8, !alias.scope !36719, !noalias !36715
  call fastcc void @"_ZN4core3ptr63drop_in_place$LT$alloc..vec..Vec$LT$lsp_types..TextEdit$GT$$GT$17h76b566cf8131b402E"(ptr noalias noundef align 8 dereferenceable(24) %i.b) #43, !noalias !36718
  resume { ptr, i32 } %lpad.loopexit.i

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hc131ba69dc5127b1E.exit": ; preds = %bb.d, %"_ZN58_$LT$lsp_types..TextEdit$u20$as$u20$core..clone..Clone$GT$5clone17h5c68822b688bc4c7E.exit.i", %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.thread.i"
  %i.u = phi ptr [ %i.g, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.thread.i" ], [ %i.k, %"_ZN58_$LT$lsp_types..TextEdit$u20$as$u20$core..clone..Clone$GT$5clone17h5c68822b688bc4c7E.exit.i" ], [ %i.k, %bb.d ]
  store i64 %.16.val, ptr %i.u, align 8, !noalias !36715
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !36720
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !36715
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN67_$LT$lsp_harness..TestHarness$u20$as$u20$core..default..Default$GT$7default17hd541449ee1d99cbdE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([136 x i8]) align 8 captures(none) dereferenceable(136) %0) unnamed_addr #1 {
bb.a:
  tail call void @_ZN11lsp_harness11TestHarness3new17hd26058b15222c1beE(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN68_$LT$core..num..error..ParseIntError$u20$as$u20$core..fmt..Debug$GT$3fmt17ha3a87f33f6dad506E"(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h8a12e96a3fe33b10E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @967, i64 noundef 13, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @442, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @966)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN69_$LT$anyhow..context..Quoted$LT$C$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hda04cb8d06c81d42E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$10write_char17h44b6dc644adef020E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 34)
  br i1 %i.d, label %bb.c, label %"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17hb34aa6d29dda0d1aE.exit"

"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17hb34aa6d29dda0d1aE.exit": ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %1, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hdc83aebc8e7c489fE", ptr %.sroa.43.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !36724
  store ptr @0, ptr %i.a, align 8, !noalias !36725
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !36725
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !36725
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !36725
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8, !noalias !36725
  %i.e = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @1021, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !36726, !inline_history !2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !36724
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17hb34aa6d29dda0d1aE.exit"
  %i.f = call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$10write_char17h44b6dc644adef020E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 34)
  br label %bb.c

bb.c:                                             ; preds = %"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17hb34aa6d29dda0d1aE.exit", %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ true, %bb.a ], [ %i.f, %bb.b ], [ true, %"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17hb34aa6d29dda0d1aE.exit" ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN69_$LT$assert_cmd..cargo..NotFoundError$u20$as$u20$core..fmt..Debug$GT$3fmt17h345398676082839dE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h8a12e96a3fe33b10E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @969, i64 noundef 13, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @803, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @968)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @"_ZN69_$LT$lsp_types..Location$u20$as$u20$lsp_harness..output..LspDebug$GT$5debug17h9ea4e88270541208E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
end_hunk_4
begin_hunk_5_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h08172f9cfda1d154E":bb.a
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %.invoke.i.i.i.i, label %.lr.ph.i.i.i22.i.i.i.i

.invoke.i.i.i.i:                                  ; preds = %bb.u, %bb.e
  %i.bm = phi i64 [ %i.bj, %bb.u ], [ %i.ac, %bb.e ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.bm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @609) #42
          to label %.cont.i.i.i.i unwind label %bb.p, !noalias !38754

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

.lr.ph.i.i.i22.i.i.i.i:                           ; preds = %bb.u
  store i64 %.sroa.0.0.i.i.i.i.i21.i.i.i.i, ptr %i.i, align 8, !noalias !38772
  %i.bn = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %i.bk, ptr %i.bn, align 8, !noalias !38772
  %i.bo = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  store i64 0, ptr %i.bo, align 8, !noalias !38772
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i.i.i.i.i.i.i.i.i.i)
  %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %.sroa.611.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.68.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.9.0..sroa_idx6.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sroa.12.0..sroa_idx10.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.413.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %.sroa.12.0..sroa_idx11.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.3.0..sroa_idx2.i.i.i23.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx.i.i.i24.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  br label %bb.v

bb.v:                                             ; preds = %bb.aq, %.lr.ph.i.i.i22.i.i.i.i
  %.val.i8.i.i.i.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i22.i.i.i.i ], [ %i.cq, %bb.aq ] ; 3 uses
  %.val1.i9.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i22.i.i.i.i ], [ %i.bs, %bb.aq ] ; 5 uses
  %i.bq = phi ptr [ %i.be, %.lr.ph.i.i.i22.i.i.i.i ], [ %i.br, %bb.aq ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 32 ; 2 uses
  %i.bs = add nuw nsw i64 %.val1.i9.i.i.i.i.i.i.i, 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !38774
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !38774
  invoke void @_ZN5serde7private2de7content13content_clone17h95c514468b2113a9E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bq)
          to label %.noexc.i.i.i27.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i.i, !noalias !38775

.noexc.i.i.i27.i.i.i.i:                           ; preds = %bb.v
  %i.bt = load i8, ptr %i.f, align 8, !range !38, !noalias !38774, !noundef !28 ; 2 uses
  %i.bu = icmp eq i8 %i.bt, 22
  br i1 %i.bu, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.noexc.i.i.i27.i.i.i.i
  %i.bv = load ptr, ptr %.sroa.611.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !38774, !nonnull !28, !align !35, !noundef !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !38774
  br label %.thread.i.i.i.i.i.i.i

bb.x:                                             ; preds = %.noexc.i.i.i27.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, i64 7, i1 false), !noalias !38774
  %.sroa.611.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.611.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !38774
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.68.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !38774
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !38774
  store i8 %i.bt, ptr %i.g, align 8, !noalias !38774
  store ptr %.sroa.611.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !38774
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !38774
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !38774
  invoke fastcc void @"_ZN9lsp_types1_79_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$lsp_types..ResourceOp$GT$11deserialize17h7bf7efb852eee101E"(ptr noalias noundef align 8 captures(address) dereferenceable(208) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g)
          to label %bb.z unwind label %.loopexit25.i.i.i.i.i.i.i, !noalias !38776

.loopexit25.i.i.i.i.i.i.i:                        ; preds = %bb.ad, %bb.ac, %bb.x
  %lpad.loopexit27.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.loopexit.split-lp26.i.i.i.i.i.i.i:               ; preds = %bb.ah, %bb.ag
  %lpad.loopexit.split-lp28.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %.loopexit.split-lp26.i.i.i.i.i.i.i, %.loopexit25.i.i.i.i.i.i.i
  %lpad.phi29.i.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit27.i.i.i.i.i.i.i, %.loopexit25.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp28.i.i.i.i.i.i.i, %.loopexit.split-lp26.i.i.i.i.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h10e52ff9e93f0b3eE"(ptr noalias noundef align 8 dereferenceable(32) %i.g) #43
          to label %common.resume.i.i25.i.i.i.i unwind label %bb.aj, !noalias !38776

bb.z:                                             ; preds = %bb.x
  %i.bw = load i64, ptr %i.d, align 8, !range !75, !noalias !38774, !noundef !28
  %i.bx = icmp eq i64 %i.bw, -9223372036854775805
  br i1 %i.bx, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.aa

.thread.i.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.z
  %i.by = load ptr, ptr %i.bp, align 8, !noalias !38774, !nonnull !28, !align !35, !noundef !28
  store ptr %i.by, ptr %.sroa.9.0..sroa_idx6.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !38774
  store i64 -9223372036854775804, ptr %i.e, align 8, !noalias !38774
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !38774
  br label %bb.ac

bb.aa:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.e, ptr noundef nonnull align 8 dereferenceable(208) %i.d, i64 208, i1 false), !noalias !38774
  %.pr.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.e, align 8, !noalias !38774 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !38774
  %i.bz = icmp eq i64 %.pr.i.i.i.i.i.i.i.i.i.i.i.i, -9223372036854775804
  br i1 %i.bz, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.sroa.9.0.copyload7.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.9.0..sroa_idx6.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !38777
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %.sroa.12.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(192) %.sroa.12.0..sroa_idx10.i.i.i.i.i.i.i.i.i.i, i64 192, i1 false), !noalias !38778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !38774
  br label %bb.ak

bb.ac:                                            ; preds = %bb.aa, %.thread.i.i.i.i.i.i.i.i.i.i.i.i
  invoke fastcc void @"_ZN4core3ptr110drop_in_place$LT$core..result..Result$LT$lsp_types..DocumentChangeOperation$C$serde_json..error..Error$GT$$GT$17h6c4928018b8ed782E"(ptr noalias noundef align 8 dereferenceable(208) %i.e)
          to label %bb.ad unwind label %.loopexit25.i.i.i.i.i.i.i, !noalias !38776

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !38774
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !38774
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !38774
  invoke fastcc void @"_ZN109_$LT$serde..private..de..content..ContentRefDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_struct17h725ee8dbea875d42E"(ptr noalias noundef align 8 captures(address) dereferenceable(120) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g)
          to label %bb.ae unwind label %.loopexit25.i.i.i.i.i.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.ca = load i64, ptr %i.b, align 8, !range !34, !noalias !38774, !noundef !28
  %i.cb = icmp eq i64 %i.ca, -9223372036854775808
  br i1 %i.cb, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.413.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(120) %i.b, i64 120, i1 false), !noalias !38774
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !38774
  %.sroa.9.0.copyload9.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.413.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !38777
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %.sroa.12.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(192) %.sroa.12.0..sroa_idx11.i.i.i.i.i.i.i.i.i.i, i64 192, i1 false), !noalias !38778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !38774
  br label %bb.ak

bb.ag:                                            ; preds = %bb.ae
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !noalias !38774, !nonnull !28, !align !35, !noundef !28
  store ptr %i.cd, ptr %.sroa.413.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !38774
  store i64 -9223372036854775804, ptr %i.c, align 8, !noalias !38774
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !38774
  invoke fastcc void @"_ZN4core3ptr110drop_in_place$LT$core..result..Result$LT$lsp_types..DocumentChangeOperation$C$serde_json..error..Error$GT$$GT$17h6c4928018b8ed782E"(ptr noalias noundef align 8 dereferenceable(208) %i.c)
          to label %bb.ah unwind label %.loopexit.split-lp26.i.i.i.i.i.i.i, !noalias !38776

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !38774
  %i.ce = invoke fastcc noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$6custom17h84bd4f43ac49638fE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1175, i64 noundef 71)
          to label %bb.ai unwind label %.loopexit.split-lp26.i.i.i.i.i.i.i, !noalias !38776

bb.ai:                                            ; preds = %bb.ah
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h10e52ff9e93f0b3eE"(ptr noalias noundef align 8 dereferenceable(32) %i.g)
          to label %.thread.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i.i, !noalias !38775

bb.aj:                                            ; preds = %bb.y
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40, !noalias !38776
  unreachable

.thread.i.i.i.i.i.i.i:                            ; preds = %bb.ai, %bb.w
  %.sroa.9.1.ph.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bv, %bb.w ], [ %i.ce, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !38774
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.i.i.i.i.i.i.i.i.i)
  br label %.loopexit30.i.i.i.i.i.i.i

bb.ak:                                            ; preds = %bb.af, %bb.ab
  %.sroa.9.0.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.9.0.copyload9.i.i.i.i.i.i.i.i.i.i, %bb.af ], [ %.sroa.9.0.copyload7.i.i.i.i.i.i.i.i.i.i, %bb.ab ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ -9223372036854775805, %bb.af ], [ %.pr.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ab ] ; 2 uses
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h10e52ff9e93f0b3eE"(ptr noalias noundef align 8 dereferenceable(32) %i.g)
          to label %bb.al unwind label %.loopexit.i.i.i.i.i.i.i, !noalias !38775

.loopexit.i.i.i.i.i.i.i:                          ; preds = %bb.ak, %bb.v
  %lpad.loopexit.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i25.i.i.i.i

.loopexit.split-lp.i.i.i.i.i.i.i:                 ; preds = %bb.ai
  %lpad.loopexit.split-lp.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i25.i.i.i.i

common.resume.i.i25.i.i.i.i:                      ; preds = %bb.ap, %.loopexit.split-lp.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i, %bb.y
  %common.resume.op.i.i26.i.i.i.i = phi { ptr, i32 } [ %lpad.phi29.i.i.i.i.i.i.i, %bb.y ], [ %i.cp, %bb.ap ], [ %lpad.loopexit.split-lp.i.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i ], [ %lpad.loopexit.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i ]
  call fastcc void @"_ZN4core3ptr78drop_in_place$LT$alloc..vec..Vec$LT$lsp_types..DocumentChangeOperation$GT$$GT$17h435a3d4d6f50d3cdE"(ptr noalias noundef align 8 dereferenceable(24) %i.i) #43, !noalias !38779
  br label %.body.i.i.i.i

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !38774
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %.sroa.12.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(192) %.sroa.12.i.i.i.i.i.i.i.i.i.i, i64 192, i1 false), !noalias !38780
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.i.i.i.i.i.i.i.i.i)
  %i.cg = icmp eq i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, -9223372036854775803
  br i1 %i.cg, label %.loopexit30.i.i.i.i.i.i.i, label %bb.an

.loopexit30.i.i.i.i.i.i.i:                        ; preds = %bb.al, %.thread.i.i.i.i.i.i.i
  %.sroa.8.015.i.i.i.i.i.i.i = phi ptr [ %.sroa.9.1.ph.i.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i ], [ %.sroa.9.0.i.i.i.i.i.i.i.i.i.i, %bb.al ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.015.i.i.i.i.i.i.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.i.i.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !38781)
  %i.ch = icmp eq i64 %.val1.i9.i.i.i.i.i.i.i, 0
  br i1 %i.ch, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha6f1935b9e14a85fE.exit.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i40.i.i.i.i

.lr.ph.i.i.i.i.i.i40.i.i.i.i:                     ; preds = %.loopexit30.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i40.i.i.i.i
  %.sroa.0.07.i.i.i.i.i.i41.i.i.i.i = phi i64 [ %i.cj, %.lr.ph.i.i.i.i.i.i40.i.i.i.i ], [ 0, %.loopexit30.i.i.i.i.i.i.i ] ; 2 uses
  %i.ci = getelementptr inbounds nuw [208 x i8], ptr %.val.i8.i.i.i.i.i.i.i, i64 %.sroa.0.07.i.i.i.i.i.i41.i.i.i.i
  %i.cj = add nuw nsw i64 %.sroa.0.07.i.i.i.i.i.i41.i.i.i.i, 1 ; 2 uses
  call fastcc void @"_ZN4core3ptr55drop_in_place$LT$lsp_types..DocumentChangeOperation$GT$17hb65b72f8b62c0f6dE"(ptr noalias noundef readonly align 8 dereferenceable(208) %i.ci), !noalias !38782
  %i.ck = icmp eq i64 %i.cj, %.val1.i9.i.i.i.i.i.i.i
  br i1 %i.ck, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha6f1935b9e14a85fE.exit.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i40.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha6f1935b9e14a85fE.exit.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i40.i.i.i.i, %.loopexit30.i.i.i.i.i.i.i
  %.val2.i.i.i.i42.i.i.i.i = load i64, ptr %i.i, align 8, !range !29, !alias.scope !38781, !noalias !38772, !noundef !28 ; 2 uses
  %i.cl = icmp eq i64 %.val2.i.i.i.i42.i.i.i.i, 0
  br i1 %i.cl, label %"_ZN182_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$..deserialize..VecVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h129ad203b3373945E.exit.thread.i.i.i.i.i.i", label %bb.am

bb.am:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha6f1935b9e14a85fE.exit.i.i.i.i.i.i.i.i"
  %i.cm = mul nuw i64 %.val2.i.i.i.i42.i.i.i.i, 208
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i8.i.i.i.i.i.i.i, i64 noundef %i.cm, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !38782
  br label %"_ZN182_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$..deserialize..VecVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h129ad203b3373945E.exit.thread.i.i.i.i.i.i"

bb.an:                                            ; preds = %bb.al
  store i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, ptr %i.h, align 8, !noalias !38772
  store ptr %.sroa.9.0.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.3.0..sroa_idx2.i.i.i23.i.i.i.i, align 8, !noalias !38772
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx.i.i.i24.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(192) %.sroa.12.i.i.i.i.i.i.i, i64 192, i1 false), !noalias !38772
  call void @llvm.experimental.noalias.scope.decl(metadata !38783)
  %i.cn = load i64, ptr %i.i, align 8, !range !29, !alias.scope !38783, !noalias !38784, !noundef !28
  %i.co = icmp eq i64 %.val1.i9.i.i.i.i.i.i.i, %i.cn
  br i1 %i.co, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hff55dc21c4194eeaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @610)
          to label %._crit_edge35.i.i.i.i.i.i.i unwind label %bb.ap, !noalias !38785

._crit_edge35.i.i.i.i.i.i.i:                      ; preds = %bb.ao
  %.pre.i.i.i39.i.i.i.i = load ptr, ptr %i.bn, align 8, !alias.scope !38783, !noalias !38784
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.cp = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr55drop_in_place$LT$lsp_types..DocumentChangeOperation$GT$17hb65b72f8b62c0f6dE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(208) %i.h) #43, !noalias !38786
  br label %common.resume.i.i25.i.i.i.i

bb.aq:                                            ; preds = %._crit_edge35.i.i.i.i.i.i.i, %bb.an
  %i.cq = phi ptr [ %.pre.i.i.i39.i.i.i.i, %._crit_edge35.i.i.i.i.i.i.i ], [ %.val.i8.i.i.i.i.i.i.i, %bb.an ] ; 4 uses
  %i.cr = getelementptr inbounds nuw [208 x i8], ptr %i.cq, i64 %.val1.i9.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.cr, ptr noundef nonnull readonly align 8 dereferenceable(208) %i.h, i64 208, i1 false), !noalias !38786
  store i64 %i.bs, ptr %i.bo, align 8, !alias.scope !38783, !noalias !38784
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i.i.i.i.i.i.i.i.i.i)
  %i.cs = icmp eq ptr %i.br, %i.bh
  br i1 %i.cs, label %"_ZN182_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$..deserialize..VecVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h129ad203b3373945E.exit.i.i.i.i.i.i", label %bb.v

"_ZN182_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$..deserialize..VecVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h129ad203b3373945E.exit.thread.i.i.i.i.i.i": ; preds = %bb.am, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha6f1935b9e14a85fE.exit.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !38772
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !38771
  br label %bb.au

"_ZN182_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$..deserialize..VecVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h129ad203b3373945E.exit.i.i.i.i.i.i": ; preds = %bb.aq
  %.sroa.03.0.copyload5.pre.i.i28.i.i.i.i = load i64, ptr %i.i, align 8, !noalias !38787 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !38772
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !38771
  %i.ct = icmp eq i64 %.sroa.03.0.copyload5.pre.i.i28.i.i.i.i, -9223372036854775808
  br i1 %i.ct, label %bb.au, label %bb.at

bb.ar:                                            ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !38772
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !38771
  br label %bb.at

bb.as:                                            ; preds = %bb.s
  %i.cu = invoke fastcc noundef nonnull align 8 ptr @"_ZN5serde7private2de7content31ContentRefDeserializer$LT$E$GT$12invalid_type17h0ad7ba5e0b52770aE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.p, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @129)
          to label %bb.au unwind label %bb.p, !noalias !38754

bb.at:                                            ; preds = %bb.ar, %"_ZN182_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$..deserialize..VecVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h129ad203b3373945E.exit.i.i.i.i.i.i"
  %.sroa.1150.0.i.i.i.i = phi i64 [ 0, %bb.ar ], [ %i.bs, %"_ZN182_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$..deserialize..VecVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h129ad203b3373945E.exit.i.i.i.i.i.i" ]
  %.sroa.749.0.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.ar ], [ %i.cq, %"_ZN182_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$..deserialize..VecVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h129ad203b3373945E.exit.i.i.i.i.i.i" ]
  %.sroa.048.0.i.i.i.i = phi i64 [ 0, %bb.ar ], [ %.sroa.03.0.copyload5.pre.i.i28.i.i.i.i, %"_ZN182_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$..deserialize..VecVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h129ad203b3373945E.exit.i.i.i.i.i.i" ]
  %.sroa.415.sroa.4.0..sroa.415.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  store ptr %.sroa.749.0.i.i.i.i, ptr %.sroa.415.sroa.4.0..sroa.415.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !38754
  %.sroa.415.sroa.5.0..sroa.415.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 %.sroa.1150.0.i.i.i.i, ptr %.sroa.415.sroa.5.0..sroa.415.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !38754
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.415.sroa.4.0..sroa.415.0..sroa_idx.sroa_idx.i.i.i.i, i64 16, i1 false), !noalias !38768
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !38754
  br label %.noexc3.i.i

bb.au:                                            ; preds = %bb.as, %"_ZN182_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$..deserialize..VecVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h129ad203b3373945E.exit.i.i.i.i.i.i", %"_ZN182_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$..deserialize..VecVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h129ad203b3373945E.exit.thread.i.i.i.i.i.i"
  %.sroa.749.0.ph.i.i.i.i = phi ptr [ %i.cu, %bb.as ], [ %.sroa.8.015.i.i.i.i.i.i.i, %"_ZN182_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$..deserialize..VecVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h129ad203b3373945E.exit.thread.i.i.i.i.i.i" ], [ %i.cq, %"_ZN182_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$..deserialize..VecVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h129ad203b3373945E.exit.i.i.i.i.i.i" ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.749.0.ph.i.i.i.i) ]
  %i.cv = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %.sroa.749.0.ph.i.i.i.i, ptr %i.cv, align 8, !noalias !38754
  store i64 2, ptr %i.m, align 8, !noalias !38754
  invoke fastcc void @"_ZN4core3ptr102drop_in_place$LT$core..result..Result$LT$lsp_types..DocumentChanges$C$serde_json..error..Error$GT$$GT$17hd176fa6339a12a9cE"(ptr noalias noundef align 8 dereferenceable(32) %i.m)
          to label %bb.av unwind label %bb.p, !noalias !38754

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !38754
  %i.cw = invoke fastcc noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$6custom17h84bd4f43ac49638fE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1160, i64 noundef 63)
          to label %bb.aw unwind label %bb.p, !noalias !38754

bb.aw:                                            ; preds = %bb.av
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h10e52ff9e93f0b3eE"(ptr noalias noundef align 8 dereferenceable(32) %i.p), !noalias !38788
  br label %.noexc2.i.i

bb.ax:                                            ; preds = %.body.i.i.i.i
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40, !noalias !38754
  unreachable

.noexc2.i.i:                                      ; preds = %bb.aw, %bb.b
  %.sroa.8.1.ph.i.i.i = phi ptr [ %i.v, %bb.b ], [ %i.cw, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !38754
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.8.1.ph.i.i.i, ptr %i.cy, align 8, !alias.scope !38789, !noalias !38790
  store i64 3, ptr %0, align 8, !alias.scope !38789, !noalias !38790
  br label %bb.az

.noexc3.i.i:                                      ; preds = %bb.at, %bb.q
  %.sroa.8.0.in.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i, %bb.q ], [ %.sroa.048.0.i.i.i.i, %bb.at ]
  %.sroa.0.0.i.i.i = phi i64 [ 0, %bb.q ], [ 1, %bb.at ]
  %.sroa.8.0.i.i.i = inttoptr i64 %.sroa.8.0.in.i.i.i to ptr
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h10e52ff9e93f0b3eE"(ptr noalias noundef align 8 dereferenceable(32) %i.p), !noalias !38788
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !38754
  store i64 %.sroa.0.0.i.i.i, ptr %0, align 8, !alias.scope !38789, !noalias !38790
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.8.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !38789, !noalias !38790
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.i.i.i, i64 16, i1 false), !noalias !38790
  br label %bb.az

bb.ay:                                            ; preds = %bb.a
  store i64 2, ptr %0, align 8, !alias.scope !38791, !noalias !38751
  tail call fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17hd30bb28c59a03f14E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %1), !noalias !38752
  br label %"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17h74b6cb785a52f114E.exit"

bb.az:                                            ; preds = %.noexc3.i.i, %.noexc2.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i.i.i)
  br label %"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17h74b6cb785a52f114E.exit"

.body.i.i:                                        ; preds = %.body.i.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i.i

"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17h74b6cb785a52f114E.exit": ; preds = %bb.ay, %bb.az
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h087996a6b8756a1bE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 11 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [104 x i8], align 8               ; 10 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [32 x i8], align 8                ; 11 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %i.q = alloca [32 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38971)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38972)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38973)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38974)
  %i.r = load i8, ptr %1, align 8, !range !59, !alias.scope !38975, !noalias !38976, !noundef !28
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.cb, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !38977
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false), !noalias !38976
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38978)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38979)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38980)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38981)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !38982
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !38982
  %i.t = load i8, ptr %i.q, align 8, !range !59, !alias.scope !38983, !noalias !38984, !noundef !28 ; 3 uses
  switch i8 %i.t, label %bb.c [
    i8 4, label %bb.d
    i8 5, label %bb.w
  ], !prof !49

bb.c:                                             ; preds = %bb.b
  %i.u = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json5value2de42_$LT$impl$u20$serde_json..value..Value$GT$12invalid_type17hdfd4d1db8e02cda0E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.q, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @284)
          to label %bb.bv unwind label %bb.bu, !noalias !38984

bb.d:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.v, i64 24, i1 false), !noalias !38976
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38985)
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !38985, !noalias !38986, !noundef !28 ; 2 uses
  %i.y = icmp ult i64 %i.x, 288230376151711744
  tail call void @llvm.assume(i1 %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !38987
end_hunk_5
