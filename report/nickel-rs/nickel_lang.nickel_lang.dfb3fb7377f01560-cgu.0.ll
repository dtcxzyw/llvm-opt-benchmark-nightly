Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang.nickel_lang.dfb3fb7377f01560-cgu.0?download=true
inline.NumInlined: 7487
inline.NumDeleted: 3530
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN11malachite_q10conversion27primitive_int_from_rational17try_from_unsigned17hb53c85c5a3113ff4E
define internal fastcc { i32, i32 } @_ZN11malachite_q10conversion27primitive_int_from_rational17try_from_unsigned17hb53c85c5a3113ff4E(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i8, ptr %i.a, align 8, !range !12, !noundef !11
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !range !35, !noundef !11
  %.not7 = icmp eq i64 %i.e, -9223372036854775808
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp eq i64 %i.g, 1
  %or.cond = select i1 %.not7, i1 %i.h, i1 false
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.val = load i64, ptr %0, align 8, !range !35, !noundef !11
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val8 = load i64, ptr %i.i, align 8            ; 2 uses
  %.not.i = icmp ne i64 %.val, -9223372036854775808
  %i.j = icmp ugt i64 %.val8, 4294967295
  %i.k = trunc nuw i64 %.val8 to i32
  %.not1.i = select i1 %.not.i, i1 true, i1 %i.j  ; 2 uses
  %.sroa.4.0 = select i1 %.not1.i, i32 undef, i32 %i.k
  %.sroa.0.0 = zext i1 %.not1.i to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.4.1 = phi i32 [ %.sroa.4.0, %bb.c ], [ undef, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.1 = phi i32 [ %.sroa.0.0, %bb.c ], [ 1, %bb.b ], [ 1, %bb.a ]
  %i.l = insertvalue { i32, i32 } poison, i32 %.sroa.0.1, 0
  %i.m = insertvalue { i32, i32 } %i.l, i32 %.sroa.4.1, 1
  ret { i32, i32 } %i.m
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_ZN11nickel_lang4Expr11as_enum_tag17hedc112d471215581E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [20 x i8], align 4                ; 4 uses
  %i.b = alloca [20 x i8], align 4                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_ZN16nickel_lang_core4eval5value11NickelValue11as_enum_tag17hd83cda092d6225a0E(ptr noalias noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0)
  %i.c = load i32, ptr %i.b, align 4, !range !41, !noundef !11
  %.not = icmp eq i32 %i.c, 3
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.a, ptr noundef nonnull align 4 dereferenceable(20) %i.b, i64 20, i1 false)
  %i.d = call { ptr, i64 } @_ZN18nickel_lang_parser10identifier8LocIdent5label17h23360175f9f53dcbE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(20) %i.a) ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 0
  %i.f = extractvalue { ptr, i64 } %i.d, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i64 [ %i.f, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.h
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_ZN11nickel_lang4Expr11is_enum_tag17hc2863612e2fe7fcfE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [20 x i8], align 4                ; 4 uses
  %i.b = alloca [20 x i8], align 4                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4183
  call void @_ZN16nickel_lang_core4eval5value11NickelValue11as_enum_tag17hd83cda092d6225a0E(ptr noalias noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0)
  %i.c = load i32, ptr %i.b, align 4, !range !41, !noalias !4183, !noundef !11
  %.not.i = icmp eq i32 %i.c, 3
  br i1 %.not.i, label %_ZN11nickel_lang4Expr11as_enum_tag17hedc112d471215581E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4183
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.a, ptr noundef nonnull align 4 dereferenceable(20) %i.b, i64 20, i1 false), !noalias !4183
  %i.d = call { ptr, i64 } @_ZN18nickel_lang_parser10identifier8LocIdent5label17h23360175f9f53dcbE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(20) %i.a)
  %i.e = extractvalue { ptr, i64 } %i.d, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4183
  %i.f = icmp ne ptr %i.e, null
  br label %_ZN11nickel_lang4Expr11as_enum_tag17hedc112d471215581E.exit

_ZN11nickel_lang4Expr11as_enum_tag17hedc112d471215581E.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4183
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define void @_ZN11nickel_lang4Expr15as_enum_variant17hee8315c25b71e047E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11 ; 4 uses
  %i.c = ptrtoint ptr %.val to i64
  %i.d = and i64 %i.c, 3
  %..i = tail call i64 @llvm.umin.i64(i64 %i.d, i64 2)
  switch i64 %..i, label %bb.i [
    i64 2, label %bb.b
    i64 0, label %bb.c
  ], !prof !16

bb.b:                                             ; preds = %bb.a
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @417, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @421, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @128) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = load i64, ptr %.val, align 8, !noundef !11 ; 2 uses
  %i.f = icmp ult i64 %i.e, 864691128455135232
  tail call void @llvm.assume(i1 %i.f)
  %.mask.i = and i64 %i.e, 1080863910568919040
  %i.g = icmp eq i64 %.mask.i, 504403158265495552
  br i1 %i.g, label %_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17hdf6dfe81cd9644e2E.exit, label %bb.i

_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17hdf6dfe81cd9644e2E.exit: ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4188)
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.j = tail call { ptr, i64 } @_ZN18nickel_lang_parser10identifier8LocIdent5label17h23360175f9f53dcbE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(20) %i.i), !noalias !4187 ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8, !alias.scope !4188, !noalias !4187, !noundef !11 ; 5 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17hdf6dfe81cd9644e2E.exit
  %i.l = extractvalue { ptr, i64 } %i.j, 1
  %i.m = extractvalue { ptr, i64 } %i.j, 0
  %i.n = ptrtoint ptr %i.k to i64
  %i.o = and i64 %i.n, 3
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 2)
  switch i64 %..i.i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i" [
    i64 2, label %bb.e
    i64 0, label %bb.f
  ], !prof !16

bb.e:                                             ; preds = %bb.d
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @417, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @421, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @128) #41, !noalias !4187
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = load i64, ptr %i.k, align 8, !noalias !4187, !noundef !11 ; 3 uses
  %i.q = and i64 %i.p, 72057594037927935          ; 3 uses
  %i.r = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %i.r)
  %i.s = add nuw nsw i64 %i.q, 1
  %i.t = and i64 %i.p, 1080863910568919040
  %i.u = icmp ult i64 %i.p, 864691128455135232
  tail call void @llvm.assume(i1 %i.u)
  %i.v = or i64 %i.s, %i.t
  store i64 %i.v, ptr %i.k, align 8, !noalias !4187
  %i.w = icmp eq i64 %i.q, 72057594037927935
  br i1 %i.w, label %bb.g, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i", !prof !17

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4189
  store ptr @746, ptr %i.b, align 8, !noalias !4189
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.x, align 8, !noalias !4189
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.y, align 8, !noalias !4189
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.z, align 8, !noalias !4189
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.aa, align 8, !noalias !4189
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @747) #41, !noalias !4187
  unreachable

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i": ; preds = %bb.f, %bb.d
  store ptr %i.m, ptr %0, align 8, !alias.scope !4187, !noalias !4188
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !4187, !noalias !4188
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.k, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !4187, !noalias !4188
  br label %"_ZN11nickel_lang4Expr15as_enum_variant28_$u7b$$u7b$closure$u7d$$u7d$17hb2765c82a8bcc706E.exit"

bb.h:                                             ; preds = %_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17hdf6dfe81cd9644e2E.exit
  store ptr null, ptr %0, align 8, !alias.scope !4187, !noalias !4188
  br label %"_ZN11nickel_lang4Expr15as_enum_variant28_$u7b$$u7b$closure$u7d$$u7d$17hb2765c82a8bcc706E.exit"

bb.i:                                             ; preds = %bb.c, %bb.a
  store ptr null, ptr %0, align 8
  br label %"_ZN11nickel_lang4Expr15as_enum_variant28_$u7b$$u7b$closure$u7d$$u7d$17hb2765c82a8bcc706E.exit"

"_ZN11nickel_lang4Expr15as_enum_variant28_$u7b$$u7b$closure$u7d$$u7d$17hb2765c82a8bcc706E.exit": ; preds = %bb.h, %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i", %bb.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_ZN11nickel_lang4Expr15is_enum_variant17h28a105b334d980e9E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_ZN11nickel_lang4Expr15as_enum_variant17hee8315c25b71e047E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0)
  %i.e = load ptr, ptr %i.d, align 8, !noundef !11 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.val1 = load ptr, ptr %i.f, align 8            ; 5 uses
  %1 = icmp eq ptr %i.e, null
  br i1 %1, label %"_ZN4core3ptr84drop_in_place$LT$core..option..Option$LT$$LP$$RF$str$C$nickel_lang..Expr$RP$$GT$$GT$17hdee79701843532e4E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.g = ptrtoint ptr %.val1 to i64
  %i.h = and i64 %i.g, 3
  %..i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 2)
  switch i64 %..i.i.i.i.i, label %"_ZN4core3ptr84drop_in_place$LT$core..option..Option$LT$$LP$$RF$str$C$nickel_lang..Expr$RP$$GT$$GT$17hdee79701843532e4E.exit" [
    i64 2, label %bb.c
    i64 0, label %bb.d
  ], !prof !16

bb.c:                                             ; preds = %bb.b
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @417, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @421, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @128) #41, !noalias !4196
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4196
  store ptr %.val1, ptr %i.c, align 8, !noalias !4196
  %i.i = load i64, ptr %.val1, align 8, !noalias !4197, !noundef !11 ; 3 uses
  %i.j = and i64 %i.i, 72057594037927935
  %i.k = add nsw i64 %i.j, -1                     ; 3 uses
  %i.l = and i64 %i.i, 1080863910568919040
  %i.m = icmp ult i64 %i.i, 864691128455135232
  tail call void @llvm.assume(i1 %i.m)
  %i.n = or i64 %i.k, %i.l
  store i64 %i.n, ptr %.val1, align 8, !noalias !4197
  %i.o = icmp ugt i64 %i.k, 72057594037927935
  br i1 %i.o, label %bb.f, label %bb.e, !prof !17

bb.e:                                             ; preds = %bb.d
  %i.p = icmp eq i64 %i.k, 0
  br i1 %i.p, label %bb.g, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h241a250d883b9fefE.exit.i.i.i.i.i"

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4197
  store ptr @746, ptr %i.b, align 8, !noalias !4197
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.q, align 8, !noalias !4197
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.r, align 8, !noalias !4197
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.s, align 8, !noalias !4197
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.t, align 8, !noalias !4197
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @747) #41, !noalias !4197
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c), !noalias !4196
  br label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h241a250d883b9fefE.exit.i.i.i.i.i"

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h241a250d883b9fefE.exit.i.i.i.i.i": ; preds = %bb.g, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4196
  br label %"_ZN4core3ptr84drop_in_place$LT$core..option..Option$LT$$LP$$RF$str$C$nickel_lang..Expr$RP$$GT$$GT$17hdee79701843532e4E.exit"

"_ZN4core3ptr84drop_in_place$LT$core..option..Option$LT$$LP$$RF$str$C$nickel_lang..Expr$RP$$GT$$GT$17hdee79701843532e4E.exit": ; preds = %bb.a, %bb.b, %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h241a250d883b9fefE.exit.i.i.i.i.i"
  %2 = icmp ne ptr %i.e, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %2
}

; Function Attrs: nonlazybind uwtable
define { i64, double } @_ZN11nickel_lang4Expr6as_f6417he57784c4097685ddE(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4202)
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !4202, !nonnull !11, !noundef !11 ; 3 uses
  %i.b = ptrtoint ptr %.val.i to i64
  %i.c = and i64 %i.b, 3
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 2)
  switch i64 %..i.i, label %_ZN11nickel_lang4Expr9as_number17h1f678905b2e923baE.exit.thread [
    i64 2, label %bb.b
    i64 0, label %bb.c
  ], !prof !16

bb.b:                                             ; preds = %bb.a
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @417, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @421, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @128) #41, !noalias !4202
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr %.val.i, align 8, !noalias !4202, !noundef !11 ; 2 uses
  %i.e = icmp ult i64 %i.d, 864691128455135232
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp samesign ult i64 %i.d, 72057594037927936
  br i1 %i.f, label %_ZN11nickel_lang4Expr9as_number17h1f678905b2e923baE.exit, label %_ZN11nickel_lang4Expr9as_number17h1f678905b2e923baE.exit.thread

_ZN11nickel_lang4Expr9as_number17h1f678905b2e923baE.exit: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.h = tail call { double, i8 } @"_ZN11malachite_q10conversion29primitive_float_from_rational120_$LT$impl$u20$malachite_base..num..conversion..traits..RoundingFrom$LT$$RF$malachite_q..Rational$GT$$u20$for$u20$f64$GT$13rounding_from17h9677da0c2715dedfE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g, i8 noundef 4), !noalias !4203
  %i.i = extractvalue { double, i8 } %i.h, 0
  br label %_ZN11nickel_lang4Expr9as_number17h1f678905b2e923baE.exit.thread

_ZN11nickel_lang4Expr9as_number17h1f678905b2e923baE.exit.thread: ; preds = %bb.a, %bb.c, %_ZN11nickel_lang4Expr9as_number17h1f678905b2e923baE.exit
  %.sroa.3.0 = phi double [ %i.i, %_ZN11nickel_lang4Expr9as_number17h1f678905b2e923baE.exit ], [ undef, %bb.c ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ 1, %_ZN11nickel_lang4Expr9as_number17h1f678905b2e923baE.exit ], [ 0, %bb.c ], [ 0, %bb.a ]
  %i.j = insertvalue { i64, double } poison, i64 %.sroa.0.0, 0
  %i.k = insertvalue { i64, double } %i.j, double %.sroa.3.0, 1
  ret { i64, double } %i.k
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_ZN11nickel_lang4Expr6as_i6417h06f2ec15b02a9aceE(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4210)
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !4210, !nonnull !11, !noundef !11 ; 6 uses
  %i.b = ptrtoint ptr %.val.i to i64
  %i.c = and i64 %i.b, 3
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 2)
  switch i64 %..i.i, label %_ZN11nickel_lang4Expr9as_number17h1f678905b2e923baE.exit.thread [
    i64 2, label %bb.b
    i64 0, label %bb.c
  ], !prof !16

bb.b:                                             ; preds = %bb.a
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @417, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @421, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @128) #41, !noalias !4210
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr %.val.i, align 8, !noalias !4210, !noundef !11 ; 2 uses
  %i.e = icmp ult i64 %i.d, 864691128455135232
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp samesign ult i64 %i.d, 72057594037927936
  %i.g = getelementptr inbounds nuw i8, ptr %.val.i, i64 16 ; 4 uses
  br i1 %i.f, label %_ZN11nickel_lang4Expr9as_number17h1f678905b2e923baE.exit, label %_ZN11nickel_lang4Expr9as_number17h1f678905b2e923baE.exit.thread

_ZN11nickel_lang4Expr9as_number17h1f678905b2e923baE.exit: ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.val.i, i64 40
  %i.i = load i64, ptr %i.h, align 8, !range !35, !alias.scope !4211, !noalias !4212, !noundef !11
  %.not.i.i = icmp eq i64 %i.i, -9223372036854775808
  %i.j = getelementptr inbounds nuw i8, ptr %.val.i, i64 48
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !4211, !noalias !4212
  %.not1.i.i = icmp eq i64 %i.k, 1
  %or.cond.i.i = select i1 %.not.i.i, i1 %.not1.i.i, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %_ZN11nickel_lang4Expr9as_number17h1f678905b2e923baE.exit.thread

bb.d:                                             ; preds = %_ZN11nickel_lang4Expr9as_number17h1f678905b2e923baE.exit
  %i.l = getelementptr inbounds nuw i8, ptr %.val.i, i64 64
  %i.m = load i8, ptr %i.l, align 8, !range !12, !alias.scope !4211, !noalias !4212, !noundef !11
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = tail call noundef i64 @"_ZN12malachite_nz7natural5logic16significant_bits116_$LT$impl$u20$malachite_base..num..logic..traits..SignificantBits$u20$for$u20$$RF$malachite_nz..natural..Natural$GT$16significant_bits17h0fb717fbc1d67f6fE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g), !noalias !4212 ; 2 uses
  %i.p = icmp ult i64 %i.o, 64                    ; 2 uses
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %i.p, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.d
  br i1 %i.p, label %bb.j, label %_ZN11nickel_lang4Expr9as_number17h1f678905b2e923baE.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.q = icmp eq i64 %i.o, 64
  br i1 %i.q, label %bb.i, label %_ZN11nickel_lang4Expr9as_number17h1f678905b2e923baE.exit.thread

bb.h:                                             ; preds = %bb.i, %bb.e
  %i.r = tail call noundef i64 @"_ZN12malachite_nz7natural10conversion26primitive_int_from_natural129_$LT$impl$u20$malachite_base..num..conversion..traits..WrappingFrom$LT$$RF$malachite_nz..natural..Natural$GT$$u20$for$u20$u64$GT$13wrapping_from17ha66b7b9b9c437b94E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g), !noalias !4212
  %i.s = sub i64 0, %i.r
  br label %_ZN11nickel_lang4Expr9as_number17h1f678905b2e923baE.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.t = tail call noundef zeroext i1 @"_ZN12malachite_nz7natural10arithmetic23divisible_by_power_of_2125_$LT$impl$u20$malachite_base..num..arithmetic..traits..DivisibleByPowerOf2$u20$for$u20$$RF$malachite_nz..natural..Natural$GT$23divisible_by_power_of_217hbf4bb10b06860204E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g, i64 noundef 63), !noalias !4212
  br i1 %i.t, label %bb.h, label %_ZN11nickel_lang4Expr9as_number17h1f678905b2e923baE.exit.thread

bb.j:                                             ; preds = %bb.f
  %i.u = tail call noundef i64 @"_ZN12malachite_nz7natural10conversion26primitive_int_from_natural129_$LT$impl$u20$malachite_base..num..conversion..traits..WrappingFrom$LT$$RF$malachite_nz..natural..Natural$GT$$u20$for$u20$u64$GT$13wrapping_from17ha66b7b9b9c437b94E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g), !noalias !4212
  br label %_ZN11nickel_lang4Expr9as_number17h1f678905b2e923baE.exit.thread

_ZN11nickel_lang4Expr9as_number17h1f678905b2e923baE.exit.thread: ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %_ZN11nickel_lang4Expr9as_number17h1f678905b2e923baE.exit, %bb.a, %bb.c
  %.sroa.3.0 = phi i64 [ undef, %bb.a ], [ undef, %bb.c ], [ undef, %_ZN11nickel_lang4Expr9as_number17h1f678905b2e923baE.exit ], [ %i.u, %bb.j ], [ undef, %bb.g ], [ %i.s, %bb.h ], [ undef, %bb.i ], [ undef, %bb.f ]
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %_ZN11nickel_lang4Expr9as_number17h1f678905b2e923baE.exit ], [ 1, %bb.j ], [ 0, %bb.g ], [ 1, %bb.h ], [ 0, %bb.i ], [ 0, %bb.f ]
  %i.v = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.w = insertvalue { i64, i64 } %i.v, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.w
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_ZN11nickel_lang4Expr6as_str17hd376696c192440a7E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %.val = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11 ; 4 uses
  %i.b = ptrtoint ptr %.val to i64
  %i.c = and i64 %i.b, 3
  %..i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 2)
  switch i64 %..i, label %_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17h363f96092e8a3c8bE.exit.thread [
    i64 2, label %bb.b
    i64 0, label %bb.c
  ], !prof !16

bb.b:                                             ; preds = %bb.a
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @417, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @421, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @128) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr %.val, align 8, !noundef !11 ; 2 uses
  %i.e = icmp ult i64 %i.d, 864691128455135232
  tail call void @llvm.assume(i1 %i.e)
  %.mask.i = and i64 %i.d, 1080863910568919040
  %i.f = icmp eq i64 %.mask.i, 216172782113783808
  br i1 %i.f, label %_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17h363f96092e8a3c8bE.exit, label %_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17h363f96092e8a3c8bE.exit.thread

_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17h363f96092e8a3c8bE.exit: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !11, !noundef !11
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.j = load i64, ptr %i.i, align 8, !noundef !11
  br label %_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17h363f96092e8a3c8bE.exit.thread

_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17h363f96092e8a3c8bE.exit.thread: ; preds = %bb.a, %bb.c, %_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17h363f96092e8a3c8bE.exit
  %.sroa.3.0 = phi i64 [ %i.j, %_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17h363f96092e8a3c8bE.exit ], [ undef, %bb.c ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.h, %_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17h363f96092e8a3c8bE.exit ], [ null, %bb.c ], [ null, %bb.a ]
  %i.k = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.l = insertvalue { ptr, i64 } %i.k, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.l
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 0, 3) i8 @_ZN11nickel_lang4Expr7as_bool17h3ffae250a3a90f00E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @"_ZN139_$LT$nickel_lang_core..eval..value..InlineValue$u20$as$u20$core..convert..TryFrom$LT$$RF$nickel_lang_core..eval..value..NickelValue$GT$$GT$8try_from17h05ad6936b5706c10E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) ; 2 uses
  %switch.selectcmp = icmp eq i32 %i.a, 5
  %switch.select = select i1 %switch.selectcmp, i8 1, i8 2
  %switch.selectcmp3 = icmp eq i32 %i.a, 9
  %switch.select4 = select i1 %switch.selectcmp3, i8 0, i8 %switch.select
  ret i8 %switch.select4
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_ZN11nickel_lang4Expr7is_bool17h076ddf53e1d2f34fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @"_ZN139_$LT$nickel_lang_core..eval..value..InlineValue$u20$as$u20$core..convert..TryFrom$LT$$RF$nickel_lang_core..eval..value..NickelValue$GT$$GT$8try_from17h05ad6936b5706c10E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) ; 2 uses
  %switch.selectcmp.i = icmp eq i32 %i.a, 5
  %switch.selectcmp3.i = icmp eq i32 %i.a, 9
  %i.b = or i1 %switch.selectcmp3.i, %switch.selectcmp.i
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_ZN11nickel_lang4Expr7is_null17h16920167c4b7a902E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN16nickel_lang_core4eval5value11NickelValue7is_null17he5185813c8bdff6eE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 dereferenceable_or_null(8) ptr @_ZN11nickel_lang4Expr8as_array17h63a4b8c8efef41fbE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = tail call noundef zeroext i1 @_ZN16nickel_lang_core4eval5value11NickelValue21is_inline_empty_array17h23c650a0fcee3695E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0)
  br i1 %i.b, label %_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17h8886042fdb342e77E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.c = ptrtoint ptr %.val to i64
  %i.d = and i64 %i.c, 3
  %..i = tail call i64 @llvm.umin.i64(i64 %i.d, i64 2)
  switch i64 %..i, label %_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17h8886042fdb342e77E.exit.thread [
    i64 2, label %bb.c
    i64 0, label %bb.d
  ], !prof !16
end_hunk_0
begin_hunk_1_@"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17hfd6a175fd759b2dcE":bb.a
  br label %bb.l

bb.l:                                             ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h029cca86c1f67e78E.exit21.i.i.i.i.i", %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h029cca86c1f67e78E.exit19.i.i.i.i.i"
  %i.co = phi ptr [ %i.cg, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h029cca86c1f67e78E.exit21.i.i.i.i.i" ], [ %i.bv, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h029cca86c1f67e78E.exit19.i.i.i.i.i" ]
  %.sroa.04.1.i.i.i.i.i = phi i32 [ %i.cn, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h029cca86c1f67e78E.exit21.i.i.i.i.i" ], [ %i.by, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h029cca86c1f67e78E.exit19.i.i.i.i.i" ]
  %i.cp = shl nuw nsw i32 %.sroa.04.1.i.i.i.i.i, 6
  %i.cq = and i8 %i.bp, 63
  %i.cr = zext nneg i8 %i.cq to i32
  %i.cs = or disjoint i32 %i.cp, %i.cr
  br label %bb.k

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.ct = phi ptr [ %i.bk, %bb.j ], [ %i.ca, %bb.k ] ; 2 uses
  %.sroa.4.1.i.ph.i.i.i.i = phi i32 [ %i.bt, %bb.j ], [ %i.ce, %bb.k ] ; 8 uses
  %i.cu = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.cu)
  switch i32 %.sroa.4.1.i.ph.i.i.i.i, label %bb.n [
    i32 32, label %bb.t
    i32 13, label %bb.t
    i32 12, label %bb.t
    i32 11, label %bb.t
    i32 10, label %bb.t
    i32 9, label %bb.t
  ]

bb.n:                                             ; preds = %bb.m
  %i.cv = icmp samesign ugt i32 %.sroa.4.1.i.ph.i.i.i.i, 127
  br i1 %i.cv, label %bb.o, label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.cw = lshr i32 %.sroa.4.1.i.ph.i.i.i.i, 8
  switch i32 %i.cw, label %bb.u [
    i32 0, label %bb.r
    i32 22, label %bb.p
    i32 32, label %bb.s
    i32 48, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.cx = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i, 5760
  %i.cy = zext i1 %i.cx to i8
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h00a2fbb25b8ef703E.exit.i.i.i6"

bb.q:                                             ; preds = %bb.o
  %i.cz = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i, 12288
  %i.da = zext i1 %i.cz to i8
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h00a2fbb25b8ef703E.exit.i.i.i6"

bb.r:                                             ; preds = %bb.o
  %i.db = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr @_ZN4core7unicode12unicode_data11white_space14WHITESPACE_MAP17h4cf41e25fd3a5318E, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !noalias !21709, !noundef !11
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h00a2fbb25b8ef703E.exit.i.i.i6"

bb.s:                                             ; preds = %bb.o
  %i.df = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr @_ZN4core7unicode12unicode_data11white_space14WHITESPACE_MAP17h4cf41e25fd3a5318E, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !noalias !21709, !noundef !11
  %i.dj = lshr i8 %i.di, 1
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h00a2fbb25b8ef703E.exit.i.i.i6"

"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h00a2fbb25b8ef703E.exit.i.i.i6": ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %.sroa.0.0.i.i.i.i.i.i.i7 = phi i8 [ %i.da, %bb.q ], [ %i.de, %bb.r ], [ %i.cy, %bb.p ], [ %i.dj, %bb.s ]
  %i.dk = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i7 to i1
  br i1 %i.dk, label %bb.t, label %bb.u

bb.t:                                             ; preds = %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h00a2fbb25b8ef703E.exit.i.i.i6", %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m
  %i.dl = icmp eq ptr %.sroa.4.121, %i.ct
  br i1 %i.dl, label %.loopexit, label %.lr.ph.i.i4

bb.u:                                             ; preds = %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h00a2fbb25b8ef703E.exit.i.i.i6", %bb.o, %bb.n
  %i.dm = ptrtoint ptr %i.bj to i64
  %i.dn = ptrtoint ptr %.sroa.4.121 to i64
  %i.do = sub i64 %.sroa.18.019, %i.dn
  %i.dp = add i64 %i.do, %i.dm
  br label %.loopexit

.loopexit:                                        ; preds = %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17hcf01de9d59645602E.exit.i.i", %bb.t, %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17ha43a3a9939f4eeb8E.exit", %bb.u
  %.sroa.0.042 = phi i64 [ %.sroa.0.0, %bb.u ], [ %.sroa.0.0, %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17ha43a3a9939f4eeb8E.exit" ], [ %.sroa.0.0, %bb.t ], [ 0, %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17hcf01de9d59645602E.exit.i.i" ] ; 2 uses
  %.sroa.01.1 = phi i64 [ %i.dp, %bb.u ], [ %.sroa.18.019, %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17ha43a3a9939f4eeb8E.exit" ], [ %.sroa.18.019, %bb.t ], [ 0, %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17hcf01de9d59645602E.exit.i.i" ]
  %i.dq = sub nuw i64 %.sroa.01.1, %.sroa.0.042
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.042
  %i.ds = insertvalue { ptr, i64 } poison, ptr %i.dr, 0
  %i.dt = insertvalue { ptr, i64 } %i.ds, i64 %i.dq, 1
  ret { ptr, i64 } %i.dt
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define internal fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17hacae9d906e4b76acE(i64 %.0.val, i64 %.8.val, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = xor i64 %.0.val, 8317987319222330741
  %i.d = xor i64 %.8.val, 7237128888997146477
  %i.e = xor i64 %.0.val, 7816392313619706465
  %i.f = xor i64 %.8.val, 8387220255154660723
  store i64 %i.c, ptr %i.b, align 8, !alias.scope !21722
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 %i.e, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !21722
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %i.d, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !21722
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 %i.f, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !21722
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.0.val, ptr %.sroa.711.0..sroa_idx.i, align 8, !alias.scope !21722
  %.sroa.812.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.8.val, ptr %.sroa.812.0..sroa_idx.i, align 8, !alias.scope !21722
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !21722
  %.val.i = load i32, ptr %0, align 4, !noalias !21723, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !21724
  store i32 %.val.i, ptr %i.a, align 4, !noalias !21724
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h03d1cde4dc0871c9E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !21724
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !alias.scope !21725
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !21725
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !21725 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !21725
  %i.g = load i64, ptr %.sroa.913.0..sroa_idx.i, align 8, !alias.scope !21725, !noundef !11
  %i.h = shl i64 %i.g, 56
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !21725, !noundef !11
  %i.k = or i64 %i.h, %i.j                        ; 2 uses
  %i.l = xor i64 %i.k, %.sroa.22.0.copyload.i.i   ; 3 uses
  %i.m = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.n = add i64 %i.l, %.sroa.10.0.copyload.i.i   ; 2 uses
  %i.o = tail call i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.p = xor i64 %i.o, %i.m                       ; 3 uses
  %i.q = tail call i64 @llvm.fshl.i64(i64 %i.l, i64 %i.l, i64 16)
  %i.r = xor i64 %i.q, %i.n                       ; 3 uses
  %i.s = tail call i64 @llvm.fshl.i64(i64 %i.m, i64 %i.m, i64 32)
  %i.t = add i64 %i.n, %i.p                       ; 3 uses
  %i.u = add i64 %i.r, %i.s                       ; 2 uses
  %i.v = tail call i64 @llvm.fshl.i64(i64 %i.p, i64 %i.p, i64 17)
  %i.w = xor i64 %i.t, %i.v                       ; 3 uses
  %i.x = tail call i64 @llvm.fshl.i64(i64 %i.r, i64 %i.r, i64 21)
  %i.y = xor i64 %i.x, %i.u                       ; 3 uses
  %i.z = tail call i64 @llvm.fshl.i64(i64 %i.t, i64 %i.t, i64 32)
  %i.aa = xor i64 %i.u, %i.k
  %i.ab = xor i64 %i.z, 255
  %i.ac = add i64 %i.aa, %i.w                     ; 3 uses
  %i.ad = add i64 %i.y, %i.ab                     ; 2 uses
  %i.ae = tail call i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 13)
  %i.af = xor i64 %i.ac, %i.ae                    ; 3 uses
  %i.ag = tail call i64 @llvm.fshl.i64(i64 %i.y, i64 %i.y, i64 16)
  %i.ah = xor i64 %i.ag, %i.ad                    ; 3 uses
  %i.ai = tail call i64 @llvm.fshl.i64(i64 %i.ac, i64 %i.ac, i64 32)
  %i.aj = add i64 %i.af, %i.ad                    ; 3 uses
  %i.ak = add i64 %i.ah, %i.ai                    ; 2 uses
  %i.al = tail call i64 @llvm.fshl.i64(i64 %i.af, i64 %i.af, i64 17)
  %i.am = xor i64 %i.aj, %i.al                    ; 3 uses
  %i.an = tail call i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 21)
  %i.ao = xor i64 %i.an, %i.ak                    ; 3 uses
  %i.ap = tail call i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 32)
  %i.aq = add i64 %i.am, %i.ak                    ; 3 uses
  %i.ar = add i64 %i.ao, %i.ap                    ; 2 uses
  %i.as = tail call i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 13)
  %i.at = xor i64 %i.as, %i.aq                    ; 3 uses
  %i.au = tail call i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 16)
  %i.av = xor i64 %i.au, %i.ar                    ; 3 uses
  %i.aw = tail call i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 32)
  %i.ax = add i64 %i.at, %i.ar                    ; 3 uses
  %i.ay = add i64 %i.av, %i.aw                    ; 2 uses
  %i.az = tail call i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 17)
  %i.ba = xor i64 %i.az, %i.ax                    ; 3 uses
  %i.bb = tail call i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 21)
  %i.bc = xor i64 %i.bb, %i.ay                    ; 3 uses
  %i.bd = tail call i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 32)
  %i.be = add i64 %i.ba, %i.ay
  %i.bf = add i64 %i.bc, %i.bd                    ; 2 uses
  %i.bg = tail call i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 13)
  %i.bh = xor i64 %i.bg, %i.be                    ; 3 uses
  %i.bi = tail call i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 16)
  %i.bj = xor i64 %i.bi, %i.bf                    ; 2 uses
  %i.bk = add i64 %i.bh, %i.bf                    ; 3 uses
  %i.bl = tail call i64 @llvm.fshl.i64(i64 %i.bh, i64 %i.bh, i64 17)
  %i.bm = tail call i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 21)
  %i.bn = tail call i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 32)
  %i.bo = xor i64 %i.bm, %i.bl
  %i.bp = xor i64 %i.bo, %i.bn
  %i.bq = xor i64 %i.bp, %i.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %i.bq
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core4iter6traits7collect6Extend10extend_one17h75cd785017fa6936E(ptr noalias noundef nonnull align 8 dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = alloca [64 x i8], align 8                ; 6 uses
  %i.d = alloca [64 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21749)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !21750
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(64) %1, i64 64, i1 false), !alias.scope !21751, !noalias !21749
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %.val3.i = load i64, ptr %i.f, align 8, !noalias !21750 ; 4 uses
  %.sroa.0.0.in.i = icmp ne i64 %.val3.i, -9223372036854775808
  %.sroa.0.0.i = zext i1 %.sroa.0.0.in.i to i64   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !21752, !noalias !21753, !noundef !11
  %i.j = icmp ult i64 %i.i, %.sroa.0.0.i
  br i1 %i.j, label %bb.b, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hae9d8f815a0f581bE.exit.i.i", !prof !17

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i64, ptr %i.g, align 8, !alias.scope !21754, !noalias !21755, !noundef !11
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !21754, !noalias !21755, !nonnull !11, !noundef !11
  %i.o = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h1edceb31bf7fd235E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k, i64 noundef %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.n, i64 noundef %i.l, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hae9d8f815a0f581bE.exit.i.i" unwind label %bb.e, !noalias !21755 ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hae9d8f815a0f581bE.exit.i.i": ; preds = %bb.b, %bb.a
  %i.p = load i64, ptr %0, align 8, !range !34, !alias.scope !21754, !noalias !21755, !noundef !11
  %i.q = load i64, ptr %i.g, align 8, !alias.scope !21754, !noalias !21755, !noundef !11 ; 2 uses
  %i.r = icmp ult i64 %i.q, 128102389400760776
  tail call void @llvm.assume(i1 %i.r)
  %i.s = sub nsw i64 %i.p, %i.q
  %i.t = icmp ult i64 %i.s, %.sroa.0.0.i
  br i1 %i.t, label %bb.c, label %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17h8b019c1dd5743befE.exit.i"

bb.c:                                             ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hae9d8f815a0f581bE.exit.i.i"
  %i.u = load i64, ptr %i.e, align 8, !alias.scope !21754, !noalias !21755, !noundef !11
  %i.v = load i64, ptr %i.h, align 8, !alias.scope !21754, !noalias !21755, !noundef !11
  %i.w = add i64 %i.v, %i.u
  invoke fastcc void @_ZN8indexmap3map4core15reserve_entries17h34b18e10e19f224fE(ptr noalias noundef nonnull align 8 dereferenceable(72) %0, i64 noundef 1, i64 noundef %i.w)
          to label %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17h8b019c1dd5743befE.exit.i" unwind label %bb.e, !noalias !21755

"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17h8b019c1dd5743befE.exit.i": ; preds = %bb.c, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hae9d8f815a0f581bE.exit.i.i"
  %.not12.i.i.i = icmp eq i64 %.val3.i, -9223372036854775808
  br i1 %.not12.i.i.i, label %"_ZN117_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$LP$K$C$V$RP$$GT$$GT$6extend17hfac2711e5e3fb72dE.exit", label %.noexc2.i.i.i

.noexc2.i.i.i:                                    ; preds = %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17h8b019c1dd5743befE.exit.i"
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !21756
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(64) %1, i64 24, i1 false), !noalias !21749
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.0..sroa_idx.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.x, i64 32, i1 false), !noalias !21749
  store i64 %.val3.i, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !21756
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !21757
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !21757
  call fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$11insert_full17h58b8fdd023454860E"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.c, ptr noalias noundef readonly align 8 captures(address) dereferenceable(40) %.sroa.2.0..sroa_idx.i.i.i), !noalias !21755
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.y, i64 40, i1 false), !noalias !21757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !21757
  %i.z = load i64, ptr %i.b, align 8, !range !35, !alias.scope !21758, !noalias !21757, !noundef !11
  %i.aa = icmp eq i64 %i.z, -9223372036854775808
  br i1 %i.aa, label %"_ZN4core3ptr139drop_in_place$LT$core..option..IntoIter$LT$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$RP$$GT$$GT$17h24f55e16c07da962E.exit4.loopexit.i.i.i", label %bb.d

bb.d:                                             ; preds = %.noexc2.i.i.i
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..term..record..Field$GT$17h8ed741fe930f1f88E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b), !noalias !21755
  br label %"_ZN4core3ptr139drop_in_place$LT$core..option..IntoIter$LT$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$RP$$GT$$GT$17h24f55e16c07da962E.exit4.loopexit.i.i.i"

"_ZN4core3ptr139drop_in_place$LT$core..option..IntoIter$LT$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$RP$$GT$$GT$17h24f55e16c07da962E.exit4.loopexit.i.i.i": ; preds = %bb.d, %.noexc2.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !21757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !21756
  br label %"_ZN117_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$LP$K$C$V$RP$$GT$$GT$6extend17hfac2711e5e3fb72dE.exit"

"_ZN4core3ptr139drop_in_place$LT$core..option..IntoIter$LT$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$RP$$GT$$GT$17h24f55e16c07da962E.exit.i": ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %lpad.thr_comm.i

bb.e:                                             ; preds = %bb.c, %bb.b
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  %2 = icmp eq i64 %.val3.i, -9223372036854775808
  br i1 %2, label %"_ZN4core3ptr139drop_in_place$LT$core..option..IntoIter$LT$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$RP$$GT$$GT$17h24f55e16c07da962E.exit.i", label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..term..record..Field$GT$17h8ed741fe930f1f88E"(ptr noalias noundef align 8 dereferenceable(40) %i.f)
          to label %"_ZN4core3ptr139drop_in_place$LT$core..option..IntoIter$LT$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$RP$$GT$$GT$17h24f55e16c07da962E.exit.i" unwind label %bb.g, !noalias !21755

bb.g:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !21755
  unreachable

"_ZN117_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$LP$K$C$V$RP$$GT$$GT$6extend17hfac2711e5e3fb72dE.exit": ; preds = %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17h8b019c1dd5743befE.exit.i", %"_ZN4core3ptr139drop_in_place$LT$core..option..IntoIter$LT$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$RP$$GT$$GT$17h24f55e16c07da962E.exit4.loopexit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !21750
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core4iter6traits8iterator8Iterator3nth17h3a7200befa8e4fd4E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull align 8 dereferenceable(48) %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.sroa.01.0.i.i.i = phi i64 [ %2, %bb.a ], [ %i.e, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !21771
  call void @"_ZN110_$LT$regex_automata..util..captures..CapturesPatternIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h619b166054bf7559E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c), !noalias !21772
  %i.d = load i64, ptr %i.b, align 8, !range !31, !noalias !21771, !noundef !11
  %cond.i.i.i = icmp eq i64 %i.d, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !21771
  br i1 %cond.i.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add i64 %.sroa.01.0.i.i.i, -1            ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !21773)
  call void @llvm.experimental.noalias.scope.decl(metadata !21774)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !21775
  call void @"_ZN110_$LT$regex_automata..util..captures..CapturesPatternIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h619b166054bf7559E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c), !noalias !21773
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !21774, !noalias !21773, !noundef !11
  %i.i = load i64, ptr %i.a, align 8, !range !31, !noalias !21775, !noundef !11
  switch i64 %i.i, label %bb.e [
    i64 2, label %"_ZN98_$LT$regex..regex..string..SubCaptureMatches$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc98b1521b71476e1E.exit"
    i64 0, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %1, align 8, !alias.scope !21774, !noalias !21773, !nonnull !11, !align !23, !noundef !11
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load <2 x i64>, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !21775
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.01.0.i = phi ptr [ %i.j, %bb.e ], [ null, %bb.d ]
  %i.l = phi <2 x i64> [ %i.k, %bb.e ], [ undef, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.01.0.i, ptr %i.m, align 8, !alias.scope !21773, !noalias !21774
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.h, ptr %.sroa.5.0..sroa_idx3.i, align 8, !alias.scope !21773, !noalias !21774
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx3.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x i64> %i.l, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx3.sroa_idx.i, align 8, !alias.scope !21773, !noalias !21774
  br label %"_ZN98_$LT$regex..regex..string..SubCaptureMatches$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc98b1521b71476e1E.exit"

"_ZN98_$LT$regex..regex..string..SubCaptureMatches$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc98b1521b71476e1E.exit": ; preds = %bb.d, %bb.f
  %storemerge.i = phi i64 [ 1, %bb.f ], [ 0, %bb.d ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !21773, !noalias !21774
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !21775
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  store i64 0, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %"_ZN98_$LT$regex..regex..string..SubCaptureMatches$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc98b1521b71476e1E.exit"
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN4core4iter6traits8iterator8Iterator4fold17h367641d13debb42aE(ptr noundef nonnull %0, ptr noundef nonnull %1) unnamed_addr #1 personality ptr @rust_eh_personality {
.split.us:
  %i.a = alloca [56 x i8], align 8                ; 6 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %1, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !21778
  store i8 18, ptr %i.d, align 8
  store ptr %0, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !21778
  store i64 -9223372036854775757, ptr %i.a, align 8, !noalias !21778
  %i.e = invoke noundef nonnull ptr @"_ZN118_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..convert..From$LT$nickel_lang_core..term..Term$GT$$GT$4from17h1fb3531f2197356dE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.a)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.split.us
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !21778
  store ptr %i.e, ptr %i.g, align 8
  store ptr %1, ptr %i.f, align 8
  store i64 -9223372036854775761, ptr %i.b, align 8
  %i.h = invoke noundef nonnull ptr @"_ZN118_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..convert..From$LT$nickel_lang_core..term..Term$GT$$GT$4from17h1fb3531f2197356dE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.b)
          to label %"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op19seq_terms28_$u7b$$u7b$closure$u7d$$u7d$17hab0865544180ccf0E.exit.us" unwind label %.split12.us

"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op19seq_terms28_$u7b$$u7b$closure$u7d$$u7d$17hab0865544180ccf0E.exit.us": ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %i.h

.split12.us:                                      ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.b:                                             ; preds = %.split.us
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hd5748964c34e8435E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #43
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable

bb.d:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable

bb.e:                                             ; preds = %.split12.us, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.j, %bb.b ], [ %i.i, %.split12.us ]
  invoke fastcc void @"_ZN4core3ptr102drop_in_place$LT$core..iter..sources..once..Once$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h98acb081d5f07588E"(ptr null) #43
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core4iter6traits8iterator8Iterator5unzip17h0b0967a83e8dc2e0E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(144) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 5 uses
  %i.c = alloca [128 x i8], align 8               ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [144 x i8], align 8               ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21823)
  %i.f = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !range !12, !noalias !21824, !noundef !11
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %._ZN4core3ops8function6FnOnce9call_once17h37feb23ee5aba082E.exit_crit_edge.i.i.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h8761fc9d300e6fb0E.exit.i.i.i.i.i", !prof !13

._ZN4core3ops8function6FnOnce9call_once17h37feb23ee5aba082E.exit_crit_edge.i.i.i.i.i: ; preds = %bb.a
  %.pre.i.i.i.i.i = load i64, ptr %i.f, align 8, !noalias !21825
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre1.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !noalias !21825
  br label %bb.b

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h8761fc9d300e6fb0E.exit.i.i.i.i.i": ; preds = %bb.a
  %i.j = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc unwind label %bb.l     ; 2 uses

.noexc:                                           ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h8761fc9d300e6fb0E.exit.i.i.i.i.i"
  %i.k = extractvalue { i64, i64 } %i.j, 0
  %i.l = extractvalue { i64, i64 } %i.j, 1        ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.l, ptr %i.m, align 8, !noalias !21826
  store i8 1, ptr %i.g, align 8, !noalias !21826
  br label %bb.b

bb.b:                                             ; preds = %.noexc, %._ZN4core3ops8function6FnOnce9call_once17h37feb23ee5aba082E.exit_crit_edge.i.i.i.i.i
  %.pre1.i.i.i.i9.i = phi i64 [ %.pre1.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h37feb23ee5aba082E.exit_crit_edge.i.i.i.i.i ], [ %i.l, %.noexc ] ; 2 uses
  %i.n = phi i64 [ %.pre.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h37feb23ee5aba082E.exit_crit_edge.i.i.i.i.i ], [ %i.k, %.noexc ] ; 3 uses
  %i.o = add i64 %i.n, 1
  %i.p = add i64 %i.n, 2
  store i64 %i.p, ptr %i.f, align 8, !noalias !21827
  store i64 0, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i64 %i.n, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store i64 %.pre1.i.i.i.i9.i, ptr %.sroa.8.0..sroa_idx, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 2 uses
  store i64 0, ptr %i.q, align 8, !alias.scope !21823
end_hunk_1
