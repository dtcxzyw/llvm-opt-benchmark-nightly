Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/liquid_core-693624a1712aaef7.liquid_core.91b98bf4681e5dbd-cgu.0?download=true
inline.NumInlined: 4312
inline.NumDeleted: 1825
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 26
begin_hunk_0_@"_ZN81_$LT$liquid_core..model..value..values..Value$u20$as$u20$core..cmp..PartialEq$GT$2eq17h48bb6070e4bcc32fE":bb.a
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

default.unreachable3:                             ; preds = %bb.f, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.8.0 = phi ptr [ @57, %bb.b ], [ @58, %bb.c ], [ @59, %bb.d ], [ @60, %bb.e ], [ @61, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.b, %bb.b ], [ %i.c, %bb.c ], [ %i.d, %bb.d ], [ %i.e, %bb.e ], [ %0, %bb.a ]
  %i.f = load i8, ptr %1, align 8, !range !203, !noundef !3
  switch i8 %i.f, label %default.unreachable3 [
    i8 0, label %bb.g
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.j
    i8 4, label %bb.k
  ]

bb.g:                                             ; preds = %bb.f
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %bb.k

bb.k:                                             ; preds = %bb.f, %bb.j, %bb.i, %bb.h, %bb.g
  %.sroa.82.0 = phi ptr [ @57, %bb.g ], [ @58, %bb.h ], [ @59, %bb.i ], [ @60, %bb.j ], [ @61, %bb.f ]
  %.sroa.01.0 = phi ptr [ %i.g, %bb.g ], [ %i.h, %bb.h ], [ %i.i, %bb.i ], [ %i.j, %bb.j ], [ %1, %bb.f ]
  %i.k = tail call fastcc noundef zeroext i1 @_ZN11liquid_core5model5value4view8value_eq17h5cfa56ac54299a2bE(ptr noundef nonnull align 1 %.sroa.0.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %.sroa.8.0, ptr noundef nonnull align 1 %.sroa.01.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %.sroa.82.0)
  ret i1 %i.k
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN81_$LT$liquid_core..runtime..expression..Expression$u20$as$u20$core..fmt..Debug$GT$3fmt17hcb5bc2a28b3b892eE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load i64, ptr %0, align 8, !range !283, !noundef !3
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.e, ptr %i.a, align 8
  %i.f = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @726, i64 noundef 7, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @448)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  %i.g = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @712, i64 noundef 8, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @774)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.f, %bb.b ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN81_$LT$std..io..default_write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h45fa90c3f0160055E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !29, !noundef !3 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16109)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16115)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !16118, !noalias !16121, !noundef !3 ; 3 uses
  %i.d = load i64, ptr %i.a, align 8, !range !540, !alias.scope !16118, !noalias !16121, !noundef !3
  %i.e = sub i64 %i.d, %i.c
  %i.f = icmp ugt i64 %2, %i.e
  br i1 %i.f, label %bb.b, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h83de90d8eb337a42E.exit", !prof !48

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h4287b1aa71de9ab5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.c, i64 noundef %2, i64 noundef 1, i64 noundef 1), !noalias !16121
  %.pre.i.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !16124, !noalias !16121
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h83de90d8eb337a42E.exit"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h83de90d8eb337a42E.exit": ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %i.c, %bb.a ], [ %.pre.i.i.i.i, %bb.b ] ; 3 uses
  %i.h = icmp sgt i64 %i.g, -1
  tail call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !16124, !noalias !16121, !nonnull !3, !noundef !3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !16124
  %i.l = add i64 %i.g, %2
  store i64 %i.l, ptr %i.b, align 8, !alias.scope !16124, !noalias !16121
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN81_$LT$time..error..component_range..ComponentRange$u20$as$u20$core..fmt..Debug$GT$3fmt17h6d0b6e2e814423c1E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h64a865faf2c41f70E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @589, i64 noundef 14, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @52, i64 noundef 4, ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @135, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @775, i64 noundef 14, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @746)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 -1, 3) i8 @"_ZN82_$LT$liquid_core..model..value..values..Value$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h5a74636fb1fb1841E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !203, !noundef !3
  switch i8 %i.a, label %default.unreachable1 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.8.0 = phi ptr [ @57, %bb.b ], [ @58, %bb.c ], [ @59, %bb.d ], [ @60, %bb.e ], [ @61, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.b, %bb.b ], [ %i.c, %bb.c ], [ %i.d, %bb.d ], [ %i.e, %bb.e ], [ %0, %bb.a ]
  %i.f = tail call fastcc noundef i8 @_ZN11liquid_core5model5value4view9value_cmp17h8ac1acd4dac859a5E(ptr noundef nonnull align 1 %.sroa.0.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %.sroa.8.0, ptr noundef nonnull align 1 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) @61)
  ret i8 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hfff25d08c22a1c41E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.6.i.i = alloca [7 x i8], align 8         ; 4 uses
  %i.a = alloca [80 x i8], align 8                ; 9 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x i64>, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16125)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !16125, !noalias !16128, !noundef !3 ; 6 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @44, i64 32, i1 false), !noalias !16125
  br label %"_ZN76_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hc8df9f160a97e00eE.exit"

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16130
  %i.i = add i64 %i.g, 1                          ; 2 uses
  %i.j = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.i, i64 80) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  br i1 %i.k, label %bb.e, label %bb.d, !prof !48

bb.d:                                             ; preds = %bb.c
  %i.l = extractvalue { i64, i1 } %i.j, 0         ; 3 uses
  %i.m = add i64 %i.g, 17                         ; 2 uses
  %i.n = add i64 %i.m, %i.l                       ; 5 uses
  %i.o = icmp ult i64 %i.n, %i.l
  %i.p = icmp ugt i64 %i.n, 9223372036854775792
  %or.cond.i.i = or i1 %i.o, %i.p
  br i1 %or.cond.i.i, label %bb.e, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i, !prof !130

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i: ; preds = %bb.d
  %2 = icmp eq i64 %i.n, 0
  br i1 %2, label %bb.h, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !16131
  %i.q = tail call noundef align 16 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !16131 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = tail call { i64, i64 } @_ZN9hashbrown3raw11Fallibility17capacity_overflow17h092909d5f8586bb0E(i1 noundef zeroext true), !noalias !16131
  br label %bb.g

bb.f:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i"
  %i.t = tail call { i64, i64 } @_ZN9hashbrown3raw11Fallibility9alloc_err17h44476d943b442629E(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.n), !noalias !16131
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { i64, i64 } [ %i.t, %bb.f ], [ %i.s, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.sroa.12.0.ph.i = extractvalue { i64, i64 } %.pn.i, 1
  %.pre = add i64 %.sroa.7.0.ph.i, 17
  br label %bb.j

bb.h:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i", %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i
  %.sroa.07.0.i.i6.i.i = phi ptr [ %i.q, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i" ], [ inttoptr (i64 16 to ptr), %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i6.i.i, i64 %i.l
  %i.v = icmp ult i64 %i.g, 8
  %i.w = lshr i64 %i.i, 3
  %i.x = mul nuw nsw i64 %i.w, 7
  %.sroa.02.0.i.i = select i1 %i.v, i64 %i.g, i64 %i.x
  br label %bb.j

bb.i:                                             ; preds = %bb.l
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body2

.body2:                                           ; preds = %bb.n, %bb.o, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i", %bb.i
  %eh.lpad-body3 = phi { ptr, i32 } [ %i.y, %bb.i ], [ %i.bc, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i" ], [ %i.bc, %bb.o ], [ %i.bc, %bb.n ]
  invoke fastcc void @"_ZN4core3ptr433drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$LP$usize$C$$RF$mut$u20$hashbrown..raw..RawTable$LT$$LP$kstring..string..KStringBase$LT$alloc..boxed..Box$LT$str$GT$$GT$$C$liquid_core..model..value..values..Value$RP$$GT$$RP$$C$hashbrown..raw..RawTable$LT$$LP$kstring..string..KStringBase$LT$alloc..boxed..Box$LT$str$GT$$GT$$C$liquid_core..model..value..values..Value$RP$$GT$..clone_from_impl..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h88cab4c5fd80c428E"(i64 %.sroa.06.026, ptr nonnull %i.b) #58
          to label %.body unwind label %bb.p, !noalias !16136, !inline_history !16141

bb.j:                                             ; preds = %bb.h, %bb.g
  %.pre-phi = phi i64 [ %i.m, %bb.h ], [ %.pre, %bb.g ]
  %.sroa.7.0 = phi i64 [ %.sroa.02.0.i.i, %bb.h ], [ %.sroa.12.0.ph.i, %bb.g ]
  %.sroa.5.0 = phi i64 [ %i.g, %bb.h ], [ %.sroa.7.0.ph.i, %bb.g ]
  %.sroa.0.0 = phi ptr [ %i.u, %bb.h ], [ null, %bb.g ] ; 3 uses
  store ptr %.sroa.0.0, ptr %i.b, align 8, !noalias !16130
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !16130
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0, ptr %.sroa.55.0..sroa_idx, align 8, !noalias !16130
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !16130
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16142)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16145), !noalias !16128
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16147), !noalias !16128
  %i.z = load ptr, ptr %1, align 8, !alias.scope !16148, !noalias !16149, !nonnull !3, !noundef !3 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0, ptr nonnull align 1 %i.z, i64 %.pre-phi, i1 false), !noalias !16150
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !16148, !noalias !16149, !noundef !3 ; 3 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %.val3.i = load <16 x i8>, ptr %i.z, align 16, !noalias !16151
  %i.ad = icmp sgt <16 x i8> %.val3.i, splat (i8 -1)
  %i.ae = bitcast <16 x i1> %i.ad to i16
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.65.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 23 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ah = ptrtoint ptr %i.z to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %_ZN4core5clone5Clone5clone17hf3d2005a7a5ea296E.exit
  %.sroa.06.026 = phi i64 [ 0, %.lr.ph ], [ %i.bm, %_ZN4core5clone5Clone5clone17hf3d2005a7a5ea296E.exit ]
  %.sroa.08.025 = phi ptr [ %i.z, %.lr.ph ], [ %.sroa.08.1, %_ZN4core5clone5Clone5clone17hf3d2005a7a5ea296E.exit ] ; 2 uses
  %.sroa.69.024 = phi ptr [ %i.af, %.lr.ph ], [ %.sroa.69.1, %_ZN4core5clone5Clone5clone17hf3d2005a7a5ea296E.exit ] ; 2 uses
  %.sroa.810.023 = phi i16 [ %i.ae, %.lr.ph ], [ %i.aq, %_ZN4core5clone5Clone5clone17hf3d2005a7a5ea296E.exit ] ; 2 uses
  %.sroa.1011.022 = phi i64 [ %i.ab, %.lr.ph ], [ %i.at, %_ZN4core5clone5Clone5clone17hf3d2005a7a5ea296E.exit ]
  %.not13.i = icmp eq i16 %.sroa.810.023, 0
  br i1 %.not13.i, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.k, %.lr.ph.i
  %i.ai = phi ptr [ %i.am, %.lr.ph.i ], [ %.sroa.69.024, %bb.k ] ; 2 uses
  %i.aj = phi ptr [ %i.al, %.lr.ph.i ], [ %.sroa.08.025, %bb.k ]
  %.val11.i = load <16 x i8>, ptr %i.ai, align 16, !noalias !16154
  %i.ak = icmp sgt <16 x i8> %.val11.i, splat (i8 -1)
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 -1280 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.ak to i16       ; 2 uses
  %.not.i = icmp eq i16 %.cast.i, 0
  br i1 %.not.i, label %.lr.ph.i, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i, %bb.k
  %.sroa.69.1 = phi ptr [ %.sroa.69.024, %bb.k ], [ %i.am, %.lr.ph.i ]
  %.sroa.08.1 = phi ptr [ %.sroa.08.025, %bb.k ], [ %i.al, %.lr.ph.i ] ; 2 uses
  %.lcssa.i = phi i16 [ %.sroa.810.023, %bb.k ], [ %.cast.i, %.lr.ph.i ] ; 3 uses
  %i.an = add i16 %.lcssa.i, -1
  %i.ao = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.ap = zext nneg i16 %i.ao to i64
  %i.aq = and i16 %i.an, %.lcssa.i
  %i.ar = sub nsw i64 0, %i.ap
  %i.as = getelementptr inbounds [80 x i8], ptr %.sroa.08.1, i64 %i.ar ; 6 uses
  %i.at = add i64 %.sroa.1011.022, -1             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16150
  %i.au = getelementptr inbounds i8, ptr %i.as, i64 -80 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16160)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16162), !noalias !16136
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16165), !noalias !16136
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16167), !noalias !16136
  %i.av = getelementptr inbounds i8, ptr %i.as, i64 -57
  %i.aw = load i8, ptr %i.av, align 1, !alias.scope !16170, !noalias !16172, !noundef !3 ; 2 uses
  %i.ax = icmp eq i8 %i.aw, -1
  br i1 %i.ax, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.loopexit
  %i.ay = invoke { ptr, i64 } @"_ZN67_$LT$alloc..boxed..Box$LT$str$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h99dc39076b9f17afE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.au)
          to label %.noexc unwind label %bb.i, !inline_history !16173 ; 2 uses

.noexc:                                           ; preds = %bb.l
  %i.az = extractvalue { ptr, i64 } %i.ay, 0
  %i.ba = extractvalue { ptr, i64 } %i.ay, 1
  br label %"_ZN76_$LT$kstring..string..KStringBase$LT$B$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8f3fa0212b1f67b2E.exit.i"

bb.m:                                             ; preds = %.loopexit
  %.sroa.0.0.copyload1.i.i = load ptr, ptr %i.au, align 8, !alias.scope !16174, !noalias !16178
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds i8, ptr %i.as, i64 -72
  %.sroa.5.0.copyload3.i.i = load i64, ptr %.sroa.5.0..sroa_idx2.i.i, align 8, !alias.scope !16174, !noalias !16178
  %.sroa.6.0..sroa_idx4.i.i = getelementptr inbounds i8, ptr %i.as, i64 -64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.6.i.i, ptr noundef nonnull readonly align 8 dereferenceable(7) %.sroa.6.0..sroa_idx4.i.i, i64 7, i1 false), !alias.scope !16179, !noalias !16178
  br label %"_ZN76_$LT$kstring..string..KStringBase$LT$B$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8f3fa0212b1f67b2E.exit.i"

"_ZN76_$LT$kstring..string..KStringBase$LT$B$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8f3fa0212b1f67b2E.exit.i": ; preds = %bb.m, %.noexc
  %.sroa.5.0.i.i = phi i64 [ %i.ba, %.noexc ], [ %.sroa.5.0.copyload3.i.i, %bb.m ]
  %.sroa.0.0.i.i = phi ptr [ %i.az, %.noexc ], [ %.sroa.0.0.copyload1.i.i, %bb.m ]
  store ptr %.sroa.0.0.i.i, ptr %i.a, align 8, !alias.scope !16180, !noalias !16181
  store i64 %.sroa.5.0.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !16180, !noalias !16181
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.6.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.6.i.i, i64 7, i1 false), !noalias !16181
  store i8 %i.aw, ptr %.sroa.65.0..sroa_idx.i.i, align 1, !alias.scope !16180, !noalias !16181
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  %i.bb = getelementptr inbounds i8, ptr %i.as, i64 -56
  invoke fastcc void @"_ZN79_$LT$liquid_core..model..value..values..Value$u20$as$u20$core..clone..Clone$GT$5clone17h04699453d7d13ce2E"(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bb)
          to label %_ZN4core5clone5Clone5clone17hf3d2005a7a5ea296E.exit unwind label %bb.n, !noalias !16136, !inline_history !16173

bb.n:                                             ; preds = %"_ZN76_$LT$kstring..string..KStringBase$LT$B$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8f3fa0212b1f67b2E.exit.i"
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16182)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16185), !noalias !16136
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16188), !noalias !16136
  %i.bd = load i8, ptr %.sroa.65.0..sroa_idx.i.i, align 1, !alias.scope !16191, !noalias !16136, !noundef !3
  %i.be = icmp eq i8 %i.bd, -1
  br i1 %i.be, label %bb.o, label %.body2

bb.o:                                             ; preds = %bb.n
  %.val1.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !16191, !noalias !16136, !noundef !3 ; 2 uses
  %i.bf = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.bf, label %.body2, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i": ; preds = %bb.o
  %.val.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !16191, !noalias !16136, !nonnull !3, !noundef !3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %.val1.i.i.i, i64 noundef 1) #59, !noalias !16192
  br label %.body2

_ZN4core5clone5Clone5clone17hf3d2005a7a5ea296E.exit: ; preds = %"_ZN76_$LT$kstring..string..KStringBase$LT$B$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8f3fa0212b1f67b2E.exit.i"
  %i.bg = ptrtoint ptr %i.as to i64
  %i.bh = sub i64 %i.ah, %i.bg
  %i.bi = sdiv exact i64 %i.bh, 80                ; 2 uses
  %i.bj = sub nsw i64 0, %i.bi
  %i.bk = getelementptr inbounds [80 x i8], ptr %.sroa.0.0, i64 %i.bj
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bl, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false), !noalias !16136
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16150
  %i.bm = add nsw i64 %i.bi, 1
  %i.bn = icmp eq i64 %i.at, 0
  br i1 %i.bn, label %._crit_edge, label %bb.k

bb.p:                                             ; preds = %.body2
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !16136, !inline_history !16141
  unreachable

.body:                                            ; preds = %.body2
  invoke fastcc void @"_ZN4core3ptr168drop_in_place$LT$hashbrown..raw..RawTable$LT$$LP$kstring..string..KStringBase$LT$alloc..boxed..Box$LT$str$GT$$GT$$C$liquid_core..model..value..values..Value$RP$$GT$$GT$17h047d0dbe154b0579E"(ptr noalias noundef align 8 dereferenceable(32) %i.b) #58
          to label %bb.r unwind label %bb.q, !noalias !16128, !inline_history !16193

._crit_edge:                                      ; preds = %_ZN4core5clone5Clone5clone17hf3d2005a7a5ea296E.exit, %bb.j
  store i64 %i.ab, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !16194, !noalias !16136
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !16148, !noalias !16149, !noundef !3
  store i64 %i.bq, ptr %.sroa.55.0..sroa_idx, align 8, !alias.scope !16194, !noalias !16136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !16125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16130
  br label %"_ZN76_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hc8df9f160a97e00eE.exit"

bb.q:                                             ; preds = %.body
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !16128, !inline_history !16193
  unreachable

bb.r:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body3

"_ZN76_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hc8df9f160a97e00eE.exit": ; preds = %bb.b, %._crit_edge
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.e, ptr %i.bs, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN83_$LT$kstring..string_cow..KStringCowBase$LT$B$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h40407a6b4a67e0bbE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !283, !alias.scope !16195, !noundef !3
  %i.b = trunc nuw i64 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %i.b, label %bb.b, label %bb.c
end_hunk_0
