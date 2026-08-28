Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/html5ever-rs/original/markup5ever_rcdom-94565011a5cef294.markup5ever_rcdom.fea42dc744c38c8-cgu.2?download=true
begin_hunk_0
@6 = private unnamed_addr constant [101 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/string_cache-0.11.0/src/atom.rs\00", align 1
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @6, [16 x i8] c"d\00\00\00\00\00\00\00\CF\00\00\00\1B\00\00\00" }>, align 8
@_RNvNvXCsbN1FUDjLgAL_9web_atomsNtB4_18LocalNameStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET = external local_unnamed_addr global { { ptr, i64 }, { ptr, i64 }, { ptr, i64 }, i64 }
@_RNvNvXs0_CsbN1FUDjLgAL_9web_atomsNtB7_18NamespaceStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET = external local_unnamed_addr global { { ptr, i64 }, { ptr, i64 }, { ptr, i64 }, i64 }
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @6, [16 x i8] c"d\00\00\00\00\00\00\00U\01\00\00\1F\00\00\00" }>, align 8
@9 = private unnamed_addr constant [7 x i8] c"dynamic", align 1
@10 = private unnamed_addr constant [6 x i8] c"inline", align 1
@11 = private unnamed_addr constant [6 x i8] c"static", align 1
@12 = private unnamed_addr constant [20 x i8] c"\06Atom('\C0\07' type=\C0\01)\00", align 1
@_RNvNvXs_CsbN1FUDjLgAL_9web_atomsNtB6_15PrefixStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET = external local_unnamed_addr global { { ptr, i64 }, { ptr, i64 }, { ptr, i64 }, i64 }
@switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetENtB6_5Debug3fmtCs1mImOlsSUsK_17markup5ever_rcdom = private unnamed_addr constant [3 x ptr] [ptr @9, ptr @10, ptr @11], align 8
@switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetENtB6_5Debug3fmtCs1mImOlsSUsK_17markup5ever_rcdom.47 = private unnamed_addr constant [3 x i8] c"\07\06\06", align 8

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE12contains_keyBO_ECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameuEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0ECs1mImOlsSUsK_17markup5ever_rcdom.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = tail call noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8)
  %i.f = lshr i64 %i.e, 57
  %i.g = trunc nuw nsw i64 %i.f to i8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !11, !noalias !12, !noundef !4 ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !alias.scope !11, !noalias !12, !nonnull !4, !noundef !4 ; 2 uses
  %i.k = insertelement <16 x i8> poison, i8 %i.g, i64 0
  %i.l = shufflevector <16 x i8> %i.k, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.9.0.i.i = phi i64 [ 0, %bb.b ], [ %i.ac, %bb.e ]
  %.pn.i = phi i64 [ %i.e, %bb.b ], [ %i.ad, %bb.e ]
  %.sroa.01.0.i.i = and i64 %.pn.i, %i.i          ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.i.i
  %.sroa.0.0.copyload.i24.i = load <16 x i8>, ptr %i.m, align 1, !noalias !14 ; 2 uses
  %i.n = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i, %i.l
  %i.o = bitcast <16 x i1> %i.n to i16            ; 2 uses
  %.not.i.not30.i = icmp eq i16 %i.o, 0
  br i1 %.not.i.not30.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.sroa.06.0.i31.i = phi i16 [ %i.ab, %bb.d ], [ %i.o, %bb.c ] ; 3 uses
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = add i64 %.sroa.01.0.i.i, %i.q
  %i.s = and i64 %i.r, %i.i
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [24 x i8], ptr %i.j, i64 %i.t
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -24
  %i.w = tail call noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameINtB2_10EquivalentBq_E10equivalentCs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v), !noalias !17
  br i1 %i.w, label %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameuEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0ECs1mImOlsSUsK_17markup5ever_rcdom.exit, label %bb.d, !prof !20

._crit_edge.i:                                    ; preds = %bb.d, %bb.c
  %i.x = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i, splat (i8 -1)
  %i.y = bitcast <16 x i1> %i.x to i16
  %i.z = icmp eq i16 %i.y, 0
  br i1 %i.z, label %bb.e, label %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameuEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0ECs1mImOlsSUsK_17markup5ever_rcdom.exit, !prof !21

bb.d:                                             ; preds = %.lr.ph.i
  %i.aa = add i16 %.sroa.06.0.i31.i, -1
  %i.ab = and i16 %i.aa, %.sroa.06.0.i31.i        ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.ab, 0
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.e:                                             ; preds = %._crit_edge.i
  %i.ac = add i64 %.sroa.9.0.i.i, 16              ; 2 uses
  %i.ad = add i64 %.sroa.01.0.i.i, %i.ac
  br label %bb.c

_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameuEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0ECs1mImOlsSUsK_17markup5ever_rcdom.exit: ; preds = %._crit_edge.i, %.lr.ph.i, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ true, %.lr.ph.i ], [ false, %._crit_edge.i ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.a = tail call noundef ptr %.val(ptr noalias nofree noundef align 8 dereferenceable_or_null(24) null), !noalias !22, !inline_history !25 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsG258MDvU3F_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.a, align 8, !noalias !22, !noundef !4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noalias !22, !noundef !4
  %i.f = add i64 %i.c, 1
  store i64 %i.f, ptr %i.a, align 8, !noalias !22
  %i.g = insertvalue { i64, i64 } poison, i64 %i.c, 0
  %i.h = insertvalue { i64, i64 } %i.g, i64 %i.e, 1
  ret { i64, i64 } %i.h
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0ECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i1 noundef zeroext %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [56 x i8], align 8                ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !26, !noalias !29, !noundef !4 ; 3 uses
  %i.f = add i64 %i.e, %1                         ; 3 uses
  %i.g = icmp ult i64 %i.f, %i.e
  br i1 %i.g, label %bb.c, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !26, !noalias !29, !noundef !4 ; 4 uses
  %i.j = icmp ult i64 %i.i, 8
  %i.k = add i64 %i.i, 1                          ; 6 uses
  %i.l = lshr i64 %i.k, 3
  %i.m = mul nuw i64 %i.l, 7
  %.sroa.03.0.i = select i1 %i.j, i64 %i.i, i64 %i.m ; 2 uses
  %i.n = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.f, %i.n
  br i1 %.not.i, label %bb.d, label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.o = tail call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !31 ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.o, 0
  %i.q = extractvalue { i64, i64 } %i.o, 1
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs1mImOlsSUsK_17markup5ever_rcdom.exit

bb.d:                                             ; preds = %bb.b
  %i.r = add nuw i64 %.sroa.03.0.i, 1
  %..i = tail call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.r, i64 range(i64 1, 0) %i.f) ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !35
  %i.s = icmp ult i64 %..i, 15
  br i1 %i.s, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = icmp ugt i64 %..i, 2305843009213693951
  br i1 %i.t, label %bb.l, label %bb.f, !prof !21

bb.f:                                             ; preds = %bb.e
  %i.u = shl nuw i64 %..i, 3
  %i.v = udiv i64 %i.u, 7
  %i.w = add nsw i64 %i.v, -1
  %i.x = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.w, i1 true)
  %i.y = lshr i64 -1, %i.x
  %i.z = add nuw nsw i64 %i.y, 1
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.aa = icmp samesign ult i64 %..i, 4
  %i.ab = and i64 %..i, 8
  %..i.i = add nuw nsw i64 %i.ab, 8
  %.sroa.03.0.i.i = select i1 %i.aa, i64 4, i64 %..i.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.i.ph.i = phi i64 [ %i.z, %bb.f ], [ %.sroa.03.0.i.i, %bb.g ] ; 5 uses
  %i.ac = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.4.0.i.ph.i, i64 24) ; 2 uses
  %i.ad = extractvalue { i64, i1 } %i.ac, 1
  br i1 %i.ad, label %bb.j, label %bb.i, !prof !21

bb.i:                                             ; preds = %bb.h
  %i.ae = extractvalue { i64, i1 } %i.ac, 0
  %i.af = add nuw i64 %i.ae, 8
  %i.ag = and i64 %i.af, -16                      ; 3 uses
  %i.ah = add nuw nsw i64 %.sroa.4.0.i.ph.i, 16   ; 2 uses
  %i.ai = add i64 %i.ag, %i.ah                    ; 4 uses
  %i.aj = icmp ult i64 %i.ai, %i.ag
  %i.ak = icmp ugt i64 %i.ai, 9223372036854775792
  %or.cond.i.i = or i1 %i.aj, %i.ak
  br i1 %or.cond.i.i, label %bb.j, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i, !prof !37

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #17, !noalias !38
  %i.al = tail call noundef align 16 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.ai, i64 noundef range(i64 1, -9223372036854775807) 16) #17, !noalias !38 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.k, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs1mImOlsSUsK_17markup5ever_rcdom.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.an = tail call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !38
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs1mImOlsSUsK_17markup5ever_rcdom.exit.thread

bb.k:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i
  %i.ao = tail call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext %3, i64 noundef 16, i64 noundef %i.ai), !noalias !38
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs1mImOlsSUsK_17markup5ever_rcdom.exit.thread

bb.l:                                             ; preds = %bb.e
  %i.ap = tail call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !43
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs1mImOlsSUsK_17markup5ever_rcdom.exit.thread

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs1mImOlsSUsK_17markup5ever_rcdom.exit: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ag ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.aq, i8 -1, i64 %i.ah, i1 false), !noalias !43
  %4 = add nsw i64 %.sroa.4.0.i.ph.i, -1          ; 6 uses
  %5 = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 9
  %i.ar = lshr i64 %.sroa.4.0.i.ph.i, 3
  %i.as = mul nuw nsw i64 %i.ar, 7
  %.sroa.07.0.i.i = select i1 %5, i64 %4, i64 %i.as ; 2 uses
  store ptr %i.c, ptr %i.b, align 8, !noalias !35
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 24, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !35
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !35
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  store ptr %i.aq, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !35
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store i64 %4, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !35
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store i64 %.sroa.07.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !35
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !35
  %i.at = load i64, ptr %i.d, align 8, !alias.scope !44, !noalias !45, !noundef !4 ; 2 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %._crit_edge53, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs1mImOlsSUsK_17markup5ever_rcdom.exit
  %i.av = load ptr, ptr %0, align 8, !alias.scope !44, !noalias !45, !nonnull !4, !noundef !4 ; 2 uses
  %.val536 = load <16 x i8>, ptr %i.av, align 16
  %i.aw = icmp sgt <16 x i8> %.val536, splat (i8 -1)
  %i.ax = bitcast <16 x i1> %i.aw to i16
  br label %.preheader

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs1mImOlsSUsK_17markup5ever_rcdom.exit.thread: ; preds = %bb.j, %bb.k, %bb.l
  %.pn.i.pn = phi { i64, i64 } [ %i.ap, %bb.l ], [ %i.an, %bb.j ], [ %i.ao, %bb.k ] ; 2 uses
  %.sroa.7.032 = extractvalue { i64, i64 } %.pn.i.pn, 0
  %.sroa.12.033 = extractvalue { i64, i64 } %.pn.i.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !35
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs1mImOlsSUsK_17markup5ever_rcdom.exit

bb.m:                                             ; preds = %._crit_edge
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef align 8 dereferenceable(56) %i.b) #18
  br label %common.resume

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.018.052 = phi ptr [ %i.av, %.preheader.lr.ph ], [ %.sroa.018.1.lcssa, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.051 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.050 = phi i64 [ %i.at, %.preheader.lr.ph ], [ %i.cc, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.049 = phi i16 [ %i.ax, %.preheader.lr.ph ], [ %i.ca, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i144 = icmp eq i16 %.sroa.13.049, 0
  br i1 %.not.i144, label %.noexc2, label %._crit_edge

.noexc2:                                          ; preds = %.preheader, %.noexc2
  %.sroa.018.146 = phi ptr [ %i.az, %.noexc2 ], [ %.sroa.018.052, %.preheader ] ; 2 uses
  %.sroa.5.145 = phi i64 [ %i.bc, %.noexc2 ], [ %.sroa.5.051, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.018.146) ]
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.018.146, i64 16 ; 3 uses
  %.val437 = load <16 x i8>, ptr %i.az, align 16
  %i.ba = icmp sgt <16 x i8> %.val437, splat (i8 -1)
  %i.bb = bitcast <16 x i1> %i.ba to i16          ; 2 uses
  %i.bc = add i64 %.sroa.5.145, 16                ; 2 uses
  %.not.i1 = icmp eq i16 %i.bb, 0
  br i1 %.not.i1, label %.noexc2, label %._crit_edge

._crit_edge53.loopexit:                           ; preds = %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre66 = load i64, ptr %i.d, align 8, !alias.scope !44, !noalias !45
  br label %._crit_edge53

._crit_edge53:                                    ; preds = %._crit_edge53.loopexit, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs1mImOlsSUsK_17markup5ever_rcdom.exit
  %i.bd = phi i64 [ %.pre66, %._crit_edge53.loopexit ], [ 0, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs1mImOlsSUsK_17markup5ever_rcdom.exit ] ; 2 uses
  %i.be = sub i64 %.sroa.07.0.i.i, %i.bd
  store i64 %i.be, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !35
  store i64 %i.bd, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !35
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs1mImOlsSUsK_17markup5ever_rcdom(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsjqcU1oJFKXj_9hashbrown3raw13RawTableInnerECs1mImOlsSUsK_17markup5ever_rcdom.exit unwind label %bb.n

bb.n:                                             ; preds = %._crit_edge53
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #19
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsjqcU1oJFKXj_9hashbrown3raw13RawTableInnerECs1mImOlsSUsK_17markup5ever_rcdom.exit: ; preds = %._crit_edge53
  call void @llvm.experimental.noalias.scope.decl(metadata !46)
  call void @llvm.experimental.noalias.scope.decl(metadata !49)
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !52 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !52 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !52, !noundef !4 ; 3 uses
  %i.bg = icmp eq i64 %.val3.i.i, 0
  br i1 %i.bg, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECs1mImOlsSUsK_17markup5ever_rcdom.exit, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsjqcU1oJFKXj_9hashbrown3raw13RawTableInnerECs1mImOlsSUsK_17markup5ever_rcdom.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !52
  %i.bh = add i64 %.val3.i.i, 1
  %i.bi = mul nuw i64 %.val.i.i, %i.bh            ; 2 uses
  %i.bj = add i64 %.val1.i.i, -1
  %i.bk = add i64 %i.bj, %i.bi                    ; 2 uses
  %i.bl = icmp uge i64 %i.bk, %i.bi
  call void @llvm.assume(i1 %i.bl)
  %i.bm = sub i64 0, %.val1.i.i
  %i.bn = and i64 %i.bk, %i.bm                    ; 3 uses
  %i.bo = add i64 %.val3.i.i, 17
  %i.bp = add i64 %i.bo, %i.bn                    ; 4 uses
  %i.bq = icmp uge i64 %i.bp, %i.bn
  %i.br = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.bs = icmp ule i64 %i.bp, %i.br
  call void @llvm.assume(i1 %i.bq)
  call void @llvm.assume(i1 %i.bs)
  %i.bt = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.bt)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ]
  %i.bu = icmp eq i64 %i.bp, 0
  br i1 %i.bu, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECs1mImOlsSUsK_17markup5ever_rcdom.exit, label %bb.o

bb.o:                                             ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bv = sub nsw i64 0, %i.bn
  %i.bw = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bv
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bw, i64 noundef %i.bp, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #17, !noalias !52
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECs1mImOlsSUsK_17markup5ever_rcdom.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECs1mImOlsSUsK_17markup5ever_rcdom.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsjqcU1oJFKXj_9hashbrown3raw13RawTableInnerECs1mImOlsSUsK_17markup5ever_rcdom.exit, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !35
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs1mImOlsSUsK_17markup5ever_rcdom.exit

._crit_edge:                                      ; preds = %.noexc2, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.049, %.preheader ], [ %i.bb, %.noexc2 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.051, %.preheader ], [ %i.bc, %.noexc2 ] ; 2 uses
  %.sroa.018.1.lcssa = phi ptr [ %.sroa.018.052, %.preheader ], [ %i.az, %.noexc2 ]
  %i.bx = add i16 %.sroa.13.1.lcssa, -1
  %i.by = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bz = zext nneg i16 %i.by to i64
  %i.ca = and i16 %i.bx, %.sroa.13.1.lcssa
  %i.cb = add i64 %.sroa.5.1.lcssa, %i.bz         ; 2 uses
  %i.cc = add i64 %.sroa.9.050, -1                ; 2 uses
  %i.cd = load ptr, ptr %0, align 8, !alias.scope !53, !noalias !56, !nonnull !4, !noundef !4
  %i.ce = sub nsw i64 0, %i.cb
  %i.cf = getelementptr inbounds [24 x i8], ptr %i.cd, i64 %i.ce
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -24
  %i.ch = invoke noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cg)
          to label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs1mImOlsSUsK_17markup5ever_rcdom.exit unwind label %bb.m ; 2 uses

_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs1mImOlsSUsK_17markup5ever_rcdom.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %4, %i.ch               ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.ci, align 1, !noalias !58
  %i.cj = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.ck = bitcast <16 x i1> %i.cj to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.ck, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !61

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs1mImOlsSUsK_17markup5ever_rcdom.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs1mImOlsSUsK_17markup5ever_rcdom.exit ], [ %.sroa.0.0.i9, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.ck, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs1mImOlsSUsK_17markup5ever_rcdom.exit ], [ %i.db, %.lr.ph.i ]
  %i.cl = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.cm = zext nneg i16 %i.cl to i64
  %i.cn = add nuw nsw i64 %.sroa.0.0.lcssa.i, %i.cm
  %i.co = and i64 %i.cn, %4                       ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !noundef !4
  %i.cr = icmp sgt i8 %i.cq, -1
  br i1 %i.cr, label %bb.p, label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !21

bb.p:                                             ; preds = %._crit_edge.i
  %.val62.i.i = load <16 x i8>, ptr %i.aq, align 16
  %i.cs = icmp slt <16 x i8> %.val62.i.i, zeroinitializer
  %i.ct = bitcast <16 x i1> %i.cs to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.ct, 0
  %i.cu = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ct, i1 true)
  %i.cv = zext nneg i16 %i.cu to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs1mImOlsSUsK_17markup5ever_rcdom.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i9, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs1mImOlsSUsK_17markup5ever_rcdom.exit ]
  %i.cw = phi i64 [ %i.cx, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs1mImOlsSUsK_17markup5ever_rcdom.exit ]
  %i.cx = add i64 %i.cw, 16                       ; 2 uses
  %i.cy = add i64 %i.cx, %.sroa.0.010.i
  %.sroa.0.0.i9 = and i64 %i.cy, %4               ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.0.0.i9
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cz, align 1, !noalias !58
  %i.da = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.db = bitcast <16 x i1> %i.da to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.db, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !62

_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.p, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cv, %bb.p ], [ %i.co, %._crit_edge.i ] ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.0.0.i5.i
  %i.dd = lshr i64 %i.ch, 57
  %i.de = trunc nuw nsw i64 %i.dd to i8           ; 2 uses
  %i.df = add nsw i64 %.sroa.0.0.i5.i, -16
  %i.dg = and i64 %i.df, %4
  store i8 %i.de, ptr %i.dc, align 1
  %i.dh = getelementptr i8, ptr %i.aq, i64 %i.dg
  %i.di = getelementptr i8, ptr %i.dh, i64 16
  store i8 %i.de, ptr %i.di, align 1
  %i.dj = load ptr, ptr %0, align 8, !alias.scope !44, !noalias !45, !nonnull !4, !noundef !4
  %.neg.i.i = mul i64 %i.cb, -24
  %i.dk = getelementptr i8, ptr %i.dj, i64 %.neg.i.i
  %i.dl = getelementptr i8, ptr %i.dk, i64 -24
  %.neg62.i.i = mul i64 %.sroa.0.0.i5.i, -24
  %i.dm = getelementptr i8, ptr %i.aq, i64 %.neg62.i.i
  %i.dn = getelementptr i8, ptr %i.dm, i64 -24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dn, ptr noundef nonnull align 1 dereferenceable(24) %i.dl, i64 24, i1 false)
  %i.do = icmp eq i64 %i.cc, 0
  br i1 %i.do, label %._crit_edge53.loopexit, label %.preheader

common.resume:                                    ; preds = %bb.t, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.ay, %bb.m ], [ %i.er, %bb.t ]
  resume { ptr, i32 } %common.resume.op

bb.q:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63)
  %.val13.i = load ptr, ptr %0, align 8, !alias.scope !63 ; 7 uses
  %.not6.i.i = icmp eq i64 %i.k, 0
  br i1 %.not6.i.i, label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread, label %.lr.ph.i.i

_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread: ; preds = %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !63
  br label %bb.ab

.lr.ph.i.i:                                       ; preds = %bb.q
  %i.dp = lshr i64 %i.k, 4
  %i.dq = and i64 %i.k, 15
  %.not10.i.i.i.i = icmp ne i64 %i.dq, 0
  %i.dr = zext i1 %.not10.i.i.i.i to i64
  %.sroa.05.0.i.i.i.i = add nuw nsw i64 %i.dp, %i.dr ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i.i, 1
  %i.ds = icmp eq i64 %.sroa.05.0.i.i.i.i, 1
  br i1 %i.ds, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i.i, 2305843009213693950
  br label %bb.r

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.r
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i
  %.sroa.0.08.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ec, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod107 = trunc i64 %.sroa.05.0.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod107)
  %i.dt = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %.sroa.0.08.i.i.epil.init ; 2 uses
  %.val5.i.i.epil = load <16 x i8>, ptr %i.dt, align 16, !noalias !63
  %.lobit.i.i.i.epil = ashr <16 x i8> %.val5.i.i.epil, splat (i8 7)
  %i.du = bitcast <16 x i8> %.lobit.i.i.i.epil to <2 x i64>
  %i.dv = or <2 x i64> %i.du, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dv, ptr %i.dt, align 16, !noalias !63
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader
  %i.dw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %..i11 = tail call i64 @llvm.umax.i64(i64 %i.k, i64 16)
  %.27.i = tail call i64 @llvm.umin.i64(i64 %i.k, i64 16)
  %i.dy = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %..i11
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dy, ptr nonnull align 1 %.val13.i, i64 %.27.i, i1 false), !noalias !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !63
  store ptr @_RNvYNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtBb_8RawTableTNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameuEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Es_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTOhEE9call_onceCs1mImOlsSUsK_17markup5ever_rcdom, ptr %i.dw, align 8, !noalias !63
  store i64 24, ptr %i.dx, align 8, !noalias !63
  store ptr %0, ptr %i.a, align 8, !noalias !63
  br label %.lr.ph.i12

bb.r:                                             ; preds = %bb.r, %.lr.ph.i.i.new
  %.sroa.0.08.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.ec, %bb.r ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.r ]
  %i.dz = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %.sroa.0.08.i.i ; 2 uses
  %.val5.i.i = load <16 x i8>, ptr %i.dz, align 16, !noalias !63
  %.lobit.i.i.i = ashr <16 x i8> %.val5.i.i, splat (i8 7)
  %i.ea = bitcast <16 x i8> %.lobit.i.i.i to <2 x i64>
  %i.eb = or <2 x i64> %i.ea, splat (i64 -9187201950435737472)
  store <2 x i64> %i.eb, ptr %i.dz, align 16, !noalias !63
  %i.ec = add i64 %.sroa.0.08.i.i, 32             ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %.sroa.0.08.i.i
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16 ; 2 uses
  %.val5.i.i.1 = load <16 x i8>, ptr %i.ee, align 16, !noalias !63
  %.lobit.i.i.i.1 = ashr <16 x i8> %.val5.i.i.1, splat (i8 7)
  %i.ef = bitcast <16 x i8> %.lobit.i.i.i.1 to <2 x i64>
  %i.eg = or <2 x i64> %i.ef, splat (i64 -9187201950435737472)
  store <2 x i64> %i.eg, ptr %i.ee, align 16, !noalias !63
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.r

.lr.ph.i12:                                       ; preds = %bb.z, %._crit_edge.i.i
  %.sroa.0.06.i = phi i64 [ %i.eh, %bb.z ], [ 0, %._crit_edge.i.i ] ; 9 uses
  %i.eh = add nuw i64 %.sroa.0.06.i, 1            ; 2 uses
  %i.ei = load ptr, ptr %0, align 8, !alias.scope !63, !nonnull !4, !noundef !4 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %.sroa.0.06.i
  %i.ek = load i8, ptr %i.ej, align 1, !noundef !4
  %.not.i13 = icmp eq i8 %i.ek, -128
  br i1 %.not.i13, label %bb.s, label %bb.z

bb.s:                                             ; preds = %.lr.ph.i12
  %.neg.i = mul i64 %i.eh, -24
  %i.el = getelementptr inbounds i8, ptr %i.ei, i64 %.neg.i ; 2 uses
  %i.em = sub nsw i64 0, %.sroa.0.06.i
  br label %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit.i

_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit.i: ; preds = %bb.y, %bb.s
  %i.en = load ptr, ptr %0, align 8, !alias.scope !66, !noalias !69, !nonnull !4, !noundef !4
  %i.eo = getelementptr inbounds [24 x i8], ptr %i.en, i64 %i.em
  %i.ep = getelementptr inbounds i8, ptr %i.eo, i64 -24
  %i.eq = invoke noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ep)
          to label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs1mImOlsSUsK_17markup5ever_rcdom.exit.i unwind label %bb.t ; 3 uses

bb.t:                                             ; preds = %bb.y, %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit.i
  %i.er = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #18
          to label %common.resume unwind label %bb.aa

_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs1mImOlsSUsK_17markup5ever_rcdom.exit.i: ; preds = %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit.i
  %.val.i16 = load ptr, ptr %0, align 8, !alias.scope !63, !nonnull !4, !noundef !4 ; 7 uses
  %.val12.i = load i64, ptr %i.h, align 8, !alias.scope !63, !noundef !4 ; 6 uses
  %.sroa.0.07.i.i = and i64 %.val12.i, %i.eq      ; 5 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.val.i16, i64 %.sroa.0.07.i.i
  %.sroa.0.0.copyload.i68.i.i = load <16 x i8>, ptr %i.es, align 1, !noalias !71
  %i.et = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i, zeroinitializer
  %i.eu = bitcast <16 x i1> %i.et to i16          ; 2 uses
  %.not.i9.i.i = icmp eq i16 %i.eu, 0
  br i1 %.not.i9.i.i, label %.lr.ph.i16.i, label %._crit_edge.i15.i, !prof !61

._crit_edge.i15.i:                                ; preds = %.lr.ph.i16.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs1mImOlsSUsK_17markup5ever_rcdom.exit.i
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.07.i.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs1mImOlsSUsK_17markup5ever_rcdom.exit.i ], [ %.sroa.0.0.i.i17, %.lr.ph.i16.i ]
  %.lcssa.i.i = phi i16 [ %i.eu, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs1mImOlsSUsK_17markup5ever_rcdom.exit.i ], [ %i.fl, %.lr.ph.i16.i ]
  %i.ev = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.ew = zext nneg i16 %i.ev to i64
  %i.ex = add i64 %.sroa.0.0.lcssa.i.i, %i.ew
  %i.ey = and i64 %i.ex, %.val12.i                ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.val.i16, i64 %i.ey
  %i.fa = load i8, ptr %i.ez, align 1, !noundef !4
  %i.fb = icmp sgt i8 %i.fa, -1
  br i1 %i.fb, label %bb.u, label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i, !prof !21

bb.u:                                             ; preds = %._crit_edge.i15.i
  %.val62.i.i.i = load <16 x i8>, ptr %.val.i16, align 16
  %i.fc = icmp slt <16 x i8> %.val62.i.i.i, zeroinitializer
  %i.fd = bitcast <16 x i1> %i.fc to i16          ; 2 uses
  %.not.i6.i.i = icmp ne i16 %i.fd, 0
  %i.fe = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.fd, i1 true)
  %i.ff = zext nneg i16 %i.fe to i64
  tail call void @llvm.assume(i1 %.not.i6.i.i)
  br label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i

.lr.ph.i16.i:                                     ; preds = %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs1mImOlsSUsK_17markup5ever_rcdom.exit.i, %.lr.ph.i16.i
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.0.i.i17, %.lr.ph.i16.i ], [ %.sroa.0.07.i.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs1mImOlsSUsK_17markup5ever_rcdom.exit.i ]
  %i.fg = phi i64 [ %i.fh, %.lr.ph.i16.i ], [ 0, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs1mImOlsSUsK_17markup5ever_rcdom.exit.i ]
  %i.fh = add i64 %i.fg, 16                       ; 2 uses
  %i.fi = add i64 %i.fh, %.sroa.0.010.i.i
  %.sroa.0.0.i.i17 = and i64 %i.fi, %.val12.i     ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.val.i16, i64 %.sroa.0.0.i.i17
  %.sroa.0.0.copyload.i6.i.i = load <16 x i8>, ptr %i.fj, align 1, !noalias !71
  %i.fk = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i, zeroinitializer
  %i.fl = bitcast <16 x i1> %i.fk to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.fl, 0
  br i1 %.not.i.i.i, label %.lr.ph.i16.i, label %._crit_edge.i15.i, !prof !62

_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i: ; preds = %bb.u, %._crit_edge.i15.i
  %.sroa.0.0.i5.i.i = phi i64 [ %i.ff, %bb.u ], [ %i.ey, %._crit_edge.i15.i ] ; 4 uses
  %i.fm = sub i64 %.sroa.0.06.i, %.sroa.0.07.i.i
  %i.fn = sub i64 %.sroa.0.0.i5.i.i, %.sroa.0.07.i.i
  %i.fo = xor i64 %i.fn, %i.fm
  %.unshifted.i = and i64 %i.fo, %.val12.i
  %i.fp = icmp ult i64 %.unshifted.i, 16
  br i1 %i.fp, label %bb.w, label %bb.v, !prof !20

bb.v:                                             ; preds = %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %.neg11.i = mul i64 %.sroa.0.0.i5.i.i, -24
  %i.fq = getelementptr i8, ptr %.val.i16, i64 %.neg11.i
  %i.fr = getelementptr i8, ptr %i.fq, i64 -24    ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.val.i16, i64 %.sroa.0.0.i5.i.i ; 2 uses
  %i.ft = load i8, ptr %i.fs, align 1, !noundef !4
  %i.fu = lshr i64 %i.eq, 57
  %i.fv = trunc nuw nsw i64 %i.fu to i8           ; 2 uses
  %i.fw = add i64 %.sroa.0.0.i5.i.i, -16
  %i.fx = and i64 %i.fw, %.val12.i
  store i8 %i.fv, ptr %i.fs, align 1
  %i.fy = load ptr, ptr %0, align 8, !alias.scope !63, !nonnull !4, !noundef !4
  %i.fz = getelementptr i8, ptr %i.fy, i64 %i.fx
  %i.ga = getelementptr i8, ptr %i.fz, i64 16
  store i8 %i.fv, ptr %i.ga, align 1
  %i.gb = icmp eq i8 %i.ft, -1
  br i1 %i.gb, label %bb.x, label %bb.y

bb.w:                                             ; preds = %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %i.gc = lshr i64 %i.eq, 57
  %i.gd = trunc nuw nsw i64 %i.gc to i8           ; 2 uses
  %i.ge = add i64 %.sroa.0.06.i, -16
  %i.gf = and i64 %.val12.i, %i.ge
  %i.gg = getelementptr inbounds nuw i8, ptr %.val.i16, i64 %.sroa.0.06.i
  store i8 %i.gd, ptr %i.gg, align 1
  %i.gh = load ptr, ptr %0, align 8, !alias.scope !63, !nonnull !4, !noundef !4
  %i.gi = getelementptr i8, ptr %i.gh, i64 %i.gf
  %i.gj = getelementptr i8, ptr %i.gi, i64 16
  store i8 %i.gd, ptr %i.gj, align 1
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.gk = add i64 %.sroa.0.06.i, -16
  %i.gl = load i64, ptr %i.h, align 8, !alias.scope !63, !noundef !4
  %i.gm = and i64 %i.gl, %i.gk
  %i.gn = load ptr, ptr %0, align 8, !alias.scope !63, !nonnull !4, !noundef !4
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 %.sroa.0.06.i
  store i8 -1, ptr %i.go, align 1
  %i.gp = load ptr, ptr %0, align 8, !alias.scope !63, !nonnull !4, !noundef !4
  %i.gq = getelementptr i8, ptr %i.gp, i64 %i.gm
  %i.gr = getelementptr i8, ptr %i.gq, i64 16
  store i8 -1, ptr %i.gr, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.fr, ptr noundef nonnull align 1 dereferenceable(24) %i.el, i64 24, i1 false)
  br label %bb.z

bb.y:                                             ; preds = %bb.v
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs1mImOlsSUsK_17markup5ever_rcdom(ptr noundef nonnull %i.el, ptr noundef nonnull %i.fr, i64 noundef 3)
          to label %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit.i unwind label %bb.t

bb.z:                                             ; preds = %bb.x, %bb.w, %.lr.ph.i12
  %exitcond.not.i = icmp eq i64 %.sroa.0.06.i, %i.i
  br i1 %exitcond.not.i, label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph.i12

bb.aa:                                            ; preds = %bb.t
  %i.gs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit: ; preds = %bb.z
  %.pre.i = load i64, ptr %i.h, align 8, !alias.scope !63
  %.pre.i.fr = freeze i64 %.pre.i                 ; 3 uses
  %.pre13.i = add i64 %.pre.i.fr, 1
  %i.gt = lshr i64 %.pre13.i, 3
  %i.gu = mul nuw i64 %i.gt, 7
  %i.gv = icmp ult i64 %.pre.i.fr, 8
  %spec.select = select i1 %i.gv, i64 %.pre.i.fr, i64 %i.gu
  %.pre = load i64, ptr %i.d, align 8, !alias.scope !63
  br label %bb.ab

bb.ab:                                            ; preds = %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread
  %i.gw = phi i64 [ %i.e, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread ], [ %.pre, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ]
  %i.gx = phi i64 [ 0, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread ], [ %spec.select, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ]
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gz = sub i64 %i.gx, %i.gw
  store i64 %i.gz, ptr %i.gy, align 8, !alias.scope !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !63
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs1mImOlsSUsK_17markup5ever_rcdom.exit

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs1mImOlsSUsK_17markup5ever_rcdom.exit: ; preds = %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs1mImOlsSUsK_17markup5ever_rcdom.exit.thread, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECs1mImOlsSUsK_17markup5ever_rcdom.exit, %bb.c, %bb.ab
  %.sroa.4.0.i = phi i64 [ %i.q, %bb.c ], [ undef, %bb.ab ], [ %.sroa.12.033, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs1mImOlsSUsK_17markup5ever_rcdom.exit.thread ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECs1mImOlsSUsK_17markup5ever_rcdom.exit ]
  %.sroa.0.0.i = phi i64 [ %i.p, %bb.c ], [ -1, %bb.ab ], [ %.sroa.7.032, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs1mImOlsSUsK_17markup5ever_rcdom.exit.thread ], [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECs1mImOlsSUsK_17markup5ever_rcdom.exit ]
  %i.ha = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.hb = insertvalue { i64, i64 } %i.ha, i64 %.sroa.4.0.i, 1
  ret { i64, i64 } %i.hb
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetEECs1mImOlsSUsK_17markup5ever_rcdom(i64 %.0.val) unnamed_addr #0 {
bb.a:
  %i.a = and i64 %.0.val, 3
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %_RNvXs4_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1mImOlsSUsK_17markup5ever_rcdom.exit

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %.0.val to ptr              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = atomicrmw sub ptr %i.d, i64 1 seq_cst, align 8
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_RNvXs4_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1mImOlsSUsK_17markup5ever_rcdom.exit, !prof !21

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef nonnull align 8 ptr @_RNvNtCsgv7xG79AfeB_12string_cache11dynamic_set11dynamic_set(), !noalias !74
  tail call void @_RNvMs2_NtCsgv7xG79AfeB_12string_cache11dynamic_setNtB5_3Set6remove(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g, ptr noundef nonnull %i.c), !noalias !74
  br label %_RNvXs4_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1mImOlsSUsK_17markup5ever_rcdom.exit

_RNvXs4_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1mImOlsSUsK_17markup5ever_rcdom.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECs1mImOlsSUsK_17markup5ever_rcdom(i64 %.0.val) unnamed_addr #0 {
bb.a:
  %i.a = and i64 %.0.val, 3
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %_RNvXs4_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1mImOlsSUsK_17markup5ever_rcdom.exit

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %.0.val to ptr              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = atomicrmw sub ptr %i.d, i64 1 seq_cst, align 8
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_RNvXs4_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1mImOlsSUsK_17markup5ever_rcdom.exit, !prof !21

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef nonnull align 8 ptr @_RNvNtCsgv7xG79AfeB_12string_cache11dynamic_set11dynamic_set(), !noalias !77
  tail call void @_RNvMs2_NtCsgv7xG79AfeB_12string_cache11dynamic_setNtB5_3Set6remove(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g, ptr noundef nonnull %i.c), !noalias !77
  br label %_RNvXs4_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1mImOlsSUsK_17markup5ever_rcdom.exit

_RNvXs4_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1mImOlsSUsK_17markup5ever_rcdom.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !80 ; 5 uses
  %.val2.i = load ptr, ptr %i.a, align 8, !alias.scope !80 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3.i = load i64, ptr %i.c, align 8, !alias.scope !80, !noundef !4 ; 3 uses
  %i.d = icmp eq i64 %.val3.i, 0
  br i1 %i.d, label %_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1mImOlsSUsK_17markup5ever_rcdom.exit, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load i64, ptr %i.e, align 8, !alias.scope !80
  %i.f = add i64 %.val3.i, 1
  %i.g = mul nuw i64 %.val.i, %i.f                ; 2 uses
  %i.h = add i64 %.val1.i, -1
  %i.i = add i64 %i.h, %i.g                       ; 2 uses
  %i.j = icmp uge i64 %i.i, %i.g
  tail call void @llvm.assume(i1 %i.j)
  %i.k = sub i64 0, %.val1.i
  %i.l = and i64 %i.i, %i.k                       ; 3 uses
  %i.m = add i64 %.val3.i, 17
  %i.n = add i64 %i.m, %i.l                       ; 4 uses
  %i.o = icmp uge i64 %i.n, %i.l
  %i.p = sub nuw i64 -9223372036854775808, %.val1.i
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.o)
  tail call void @llvm.assume(i1 %i.q)
  %i.r = icmp ne i64 %.val1.i, 0
  tail call void @llvm.assume(i1 %i.r)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.s = icmp eq i64 %i.n, 0
  br i1 %i.s, label %_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1mImOlsSUsK_17markup5ever_rcdom.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.t = sub nsw i64 0, %i.l
  %i.u = getelementptr inbounds i8, ptr %.val2.i, i64 %i.t
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) %.val1.i) #17, !noalias !80
  br label %_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1mImOlsSUsK_17markup5ever_rcdom.exit

_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1mImOlsSUsK_17markup5ever_rcdom.exit: ; preds = %bb.a, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !83
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !83
  %.val2.i = load ptr, ptr %0, align 8, !alias.scope !83, !nonnull !4, !align !86, !noundef !4 ; 9 uses
  %.0.val.fr.i.i = freeze ptr %.val.i             ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !83, !noundef !4 ; 3 uses
  %.not4.i.i = icmp eq i64 %i.d, -1
  br i1 %.not4.i.i, label %_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1mImOlsSUsK_17markup5ever_rcdom.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %.not.i.i = icmp eq ptr %.0.val.fr.i.i, null
  %i.e = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24 ; 4 uses
  br i1 %.not.i.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.0.03.us.i.i = phi i64 [ %i.f, %bb.c ], [ 0, %.lr.ph.i.i ] ; 4 uses
  %i.f = add nuw i64 %.sroa.0.03.us.i.i, 1
  %i.g = load ptr, ptr %.val2.i, align 8, !noalias !83, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.0.03.us.i.i ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !noalias !83, !noundef !4
  %i.j = icmp eq i8 %i.i, -128
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.split.us.i.i
  %i.k = add i64 %.sroa.0.03.us.i.i, -16
  %i.l = load i64, ptr %i.c, align 8, !noalias !83, !noundef !4
  %i.m = and i64 %i.l, %i.k
  store i8 -1, ptr %i.h, align 1, !noalias !83
  %i.n = load ptr, ptr %.val2.i, align 8, !noalias !83, !nonnull !4, !noundef !4
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m
  %i.p = getelementptr i8, ptr %i.o, i64 16
  store i8 -1, ptr %i.p, align 1, !noalias !83
  %i.q = load i64, ptr %i.e, align 8, !noalias !83, !noundef !4
  %i.r = add i64 %i.q, -1
  store i64 %i.r, ptr %i.e, align 8, !noalias !83
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us.i.i
  %exitcond6.not.i.i = icmp eq i64 %.sroa.0.03.us.i.i, %i.d
  br i1 %exitcond6.not.i.i, label %_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1mImOlsSUsK_17markup5ever_rcdom.exit, label %.lr.ph.split.us.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %bb.d
  %.sroa.0.03.i.i = phi i64 [ %i.s, %bb.d ], [ 0, %.lr.ph.i.i ] ; 5 uses
  %i.s = add nuw i64 %.sroa.0.03.i.i, 1
  %i.t = load ptr, ptr %.val2.i, align 8, !noalias !83, !nonnull !4, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.0.03.i.i ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !noalias !83, !noundef !4
  %i.w = icmp eq i8 %i.v, -128
  br i1 %i.w, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.split.i.i
  %exitcond.not.i.i = icmp eq i64 %.sroa.0.03.i.i, %i.d
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1mImOlsSUsK_17markup5ever_rcdom.exit, label %.lr.ph.split.i.i

bb.e:                                             ; preds = %.lr.ph.split.i.i
  %.neg.i.i = xor i64 %.sroa.0.03.i.i, -1
  %i.x = add i64 %.sroa.0.03.i.i, -16
  %i.y = load i64, ptr %i.c, align 8, !noalias !83, !noundef !4
  %i.z = and i64 %i.y, %i.x
  store i8 -1, ptr %i.u, align 1, !noalias !83
  %i.aa = load ptr, ptr %.val2.i, align 8, !noalias !83, !nonnull !4, !noundef !4
  %i.ab = getelementptr i8, ptr %i.aa, i64 %i.z
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  store i8 -1, ptr %i.ac, align 1, !noalias !83
  %i.ad = load ptr, ptr %.val2.i, align 8, !noalias !83, !nonnull !4, !noundef !4
  %.neg7.i.i = mul i64 %.val1.i, %.neg.i.i
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %.neg7.i.i
  tail call void %.0.val.fr.i.i(ptr noundef nonnull %i.ae), !noalias !83, !inline_history !87
  %i.af = load i64, ptr %i.e, align 8, !noalias !83, !noundef !4
  %i.ag = add i64 %i.af, -1
  store i64 %i.ag, ptr %i.e, align 8, !noalias !83
  br label %bb.d

_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1mImOlsSUsK_17markup5ever_rcdom.exit: ; preds = %bb.d, %bb.c, %bb.a
  %i.ah = load i64, ptr %i.c, align 8, !noalias !83, !noundef !4 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 8
  %i.aj = add i64 %i.ah, 1
  %i.ak = lshr i64 %i.aj, 3
  %i.al = mul nuw i64 %i.ak, 7
  %.sroa.04.0.i.i = select i1 %i.ai, i64 %i.ah, i64 %i.al
  %i.am = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24
  %i.an = load i64, ptr %i.am, align 8, !noalias !83, !noundef !4
  %i.ao = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.ap = sub i64 %.sroa.04.0.i.i, %i.an
  store i64 %i.ap, ptr %i.ao, align 8, !noalias !83
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvNtNtB4_2io5write17default_write_fmt7AdapterNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrEECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !noundef !4 ; 4 uses
  %i.c = icmp eq ptr %.val, null
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs1mImOlsSUsK_17markup5ever_rcdom.exit, label %bb.b
end_hunk_0
begin_hunk_1_@_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtB6_7Display3fmtCs1mImOlsSUsK_17markup5ever_rcdom:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  %i.b = load i64, ptr %i.a, align 8, !range !92, !alias.scope !143, !noalias !144, !noundef !4 ; 4 uses
  %i.c = trunc i64 %i.b to i8
  %i.d = and i8 %i.c, 3
  switch i8 %i.d, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !noalias !146, !nonnull !4, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noalias !146, !noundef !4
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache13trivial_implsINtNtB7_4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCs1mImOlsSUsK_17markup5ever_rcdom.exit

bb.d:                                             ; preds = %bb.a
  %i.i = lshr i64 %i.b, 4
  %i.j = and i64 %i.i, 15
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache13trivial_implsINtNtB7_4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCs1mImOlsSUsK_17markup5ever_rcdom.exit

bb.e:                                             ; preds = %bb.a
  %i.l = lshr i64 %i.b, 32                        ; 3 uses
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs_CsbN1FUDjLgAL_9web_atomsNtB6_15PrefixStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 24), align 8, !noalias !146, !noundef !4 ; 2 uses
  %i.n = icmp ult i64 %i.l, %i.m
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs_CsbN1FUDjLgAL_9web_atomsNtB6_15PrefixStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 16), align 8, !noalias !146, !nonnull !4, !align !86, !noundef !4
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.l ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !noalias !146, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load i64, ptr %i.r, align 8, !noalias !146, !noundef !4
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache13trivial_implsINtNtB7_4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCs1mImOlsSUsK_17markup5ever_rcdom.exit

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.l, i64 noundef %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #16, !noalias !146
  unreachable

_RNvXs5_NtCsgv7xG79AfeB_12string_cache13trivial_implsINtNtB7_4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCs1mImOlsSUsK_17markup5ever_rcdom.exit: ; preds = %bb.c, %bb.d, %bb.f
  %.sroa.4.0.i.i = phi i64 [ %i.h, %bb.c ], [ %i.j, %bb.d ], [ %i.s, %bb.f ]
  %.sroa.0.0.i.i = phi ptr [ %i.f, %bb.c ], [ %i.k, %bb.d ], [ %i.q, %bb.f ]
  %i.t = tail call noundef zeroext i1 @_RNvXsi_NtCskKLDkoKarTP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i, i64 noundef %.sroa.4.0.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.t
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetENtB6_7Display3fmtCs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !86, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150)
  %i.b = load i64, ptr %i.a, align 8, !range !92, !alias.scope !153, !noalias !154, !noundef !4 ; 4 uses
  %i.c = trunc i64 %i.b to i8
  %i.d = and i8 %i.c, 3
  switch i8 %i.d, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !noalias !156, !nonnull !4, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noalias !156, !noundef !4
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache13trivial_implsINtNtB7_4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCs1mImOlsSUsK_17markup5ever_rcdom.exit

bb.d:                                             ; preds = %bb.a
  %i.i = lshr i64 %i.b, 4
  %i.j = and i64 %i.i, 15
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache13trivial_implsINtNtB7_4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCs1mImOlsSUsK_17markup5ever_rcdom.exit

bb.e:                                             ; preds = %bb.a
  %i.l = lshr i64 %i.b, 32                        ; 3 uses
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXCsbN1FUDjLgAL_9web_atomsNtB4_18LocalNameStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 24), align 8, !noalias !156, !noundef !4 ; 2 uses
  %i.n = icmp ult i64 %i.l, %i.m
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXCsbN1FUDjLgAL_9web_atomsNtB4_18LocalNameStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 16), align 8, !noalias !156, !nonnull !4, !align !86, !noundef !4
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.l ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !noalias !156, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load i64, ptr %i.r, align 8, !noalias !156, !noundef !4
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache13trivial_implsINtNtB7_4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCs1mImOlsSUsK_17markup5ever_rcdom.exit

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.l, i64 noundef %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #16, !noalias !156
  unreachable

_RNvXs5_NtCsgv7xG79AfeB_12string_cache13trivial_implsINtNtB7_4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCs1mImOlsSUsK_17markup5ever_rcdom.exit: ; preds = %bb.c, %bb.d, %bb.f
  %.sroa.4.0.i.i = phi i64 [ %i.h, %bb.c ], [ %i.j, %bb.d ], [ %i.s, %bb.f ]
  %.sroa.0.0.i.i = phi ptr [ %i.f, %bb.c ], [ %i.k, %bb.d ], [ %i.q, %bb.f ]
  %i.t = tail call noundef zeroext i1 @_RNvXsi_NtCskKLDkoKarTP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i, i64 noundef %.sroa.4.0.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.t
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtB6_7Display3fmtCs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !86, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160)
  %i.b = load i64, ptr %i.a, align 8, !range !92, !alias.scope !163, !noalias !164, !noundef !4 ; 4 uses
  %i.c = trunc i64 %i.b to i8
  %i.d = and i8 %i.c, 3
  switch i8 %i.d, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !noalias !166, !nonnull !4, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noalias !166, !noundef !4
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache13trivial_implsINtNtB7_4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCs1mImOlsSUsK_17markup5ever_rcdom.exit

bb.d:                                             ; preds = %bb.a
  %i.i = lshr i64 %i.b, 4
  %i.j = and i64 %i.i, 15
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache13trivial_implsINtNtB7_4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCs1mImOlsSUsK_17markup5ever_rcdom.exit

bb.e:                                             ; preds = %bb.a
  %i.l = lshr i64 %i.b, 32                        ; 3 uses
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs0_CsbN1FUDjLgAL_9web_atomsNtB7_18NamespaceStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 24), align 8, !noalias !166, !noundef !4 ; 2 uses
  %i.n = icmp ult i64 %i.l, %i.m
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs0_CsbN1FUDjLgAL_9web_atomsNtB7_18NamespaceStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 16), align 8, !noalias !166, !nonnull !4, !align !86, !noundef !4
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.l ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !noalias !166, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load i64, ptr %i.r, align 8, !noalias !166, !noundef !4
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache13trivial_implsINtNtB7_4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCs1mImOlsSUsK_17markup5ever_rcdom.exit

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.l, i64 noundef %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #16, !noalias !166
  unreachable

_RNvXs5_NtCsgv7xG79AfeB_12string_cache13trivial_implsINtNtB7_4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCs1mImOlsSUsK_17markup5ever_rcdom.exit: ; preds = %bb.c, %bb.d, %bb.f
  %.sroa.4.0.i.i = phi i64 [ %i.h, %bb.c ], [ %i.j, %bb.d ], [ %i.s, %bb.f ]
  %.sroa.0.0.i.i = phi ptr [ %i.f, %bb.c ], [ %i.k, %bb.d ], [ %i.q, %bb.f ]
  %i.t = tail call noundef zeroext i1 @_RNvXsi_NtCskKLDkoKarTP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i, i64 noundef %.sroa.4.0.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.t
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCskKLDkoKarTP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !167, !noundef !4 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameuENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs1mImOlsSUsK_17markup5ever_rcdom.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !173, !noundef !4 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameuEECs1mImOlsSUsK_17markup5ever_rcdom.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !173, !nonnull !4, !noundef !4 ; 3 uses
  %.val13.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !174
  %i.h = icmp sgt <16 x i8> %.val13.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameuEE9next_implKb0_ECs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i, %bb.c
  %.sroa.05.016.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameuEE9next_implKb0_ECs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i ] ; 2 uses
  %.sroa.6.015.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameuEE9next_implKb0_ECs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i ] ; 2 uses
  %.sroa.107.014.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameuEE9next_implKb0_ECs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i ]
  %.sroa.86.013.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameuEE9next_implKb0_ECs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i ] ; 2 uses
  %.not11.i.i.i = icmp eq i16 %.sroa.86.013.i.i, 0
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameuEE9next_implKb0_ECs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.6.015.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.sroa.05.016.i.i, %bb.d ]
  %.val79.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !177
  %i.m = icmp sgt <16 x i8> %.val79.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -384 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.m to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameuEE9next_implKb0_ECs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i

_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameuEE9next_implKb0_ECs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.015.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.016.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.013.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [24 x i8], ptr %.sroa.05.1.i.i, i64 %i.t
  %i.v = add i64 %.sroa.107.014.i.i, -1           ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -24
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.w), !noalias !173
  %i.x = icmp eq i64 %i.v, 0
  br i1 %i.x, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameuEECs1mImOlsSUsK_17markup5ever_rcdom.exit.i, label %bb.d

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameuEECs1mImOlsSUsK_17markup5ever_rcdom.exit.i: ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameuEE9next_implKb0_ECs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i, %bb.b
  %i.y = mul i64 %i.b, 24
  %i.z = icmp slt i64 %i.b, 768614336404564650
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = and i64 %i.y, -16                       ; 2 uses
  %i.ab = add i64 %i.aa, 32                       ; 2 uses
  %i.ac = add nsw i64 %i.b, 17
  %i.ad = add i64 %i.ac, %i.ab                    ; 4 uses
  %i.ae = icmp uge i64 %i.ad, %i.ab
  %i.af = icmp ult i64 %i.ad, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ae)
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = icmp eq i64 %i.ad, 0
  br i1 %i.ag, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameuENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs1mImOlsSUsK_17markup5ever_rcdom.exit, label %bb.e

bb.e:                                             ; preds = %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameuEECs1mImOlsSUsK_17markup5ever_rcdom.exit.i
  %i.ah = load ptr, ptr %0, align 8, !alias.scope !167, !nonnull !4, !noundef !4
  %i.ai = sub i64 -32, %i.aa
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 %i.ai
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aj, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 16) #17, !noalias !167
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameuENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs1mImOlsSUsK_17markup5ever_rcdom.exit

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameuENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs1mImOlsSUsK_17markup5ever_rcdom.exit: ; preds = %bb.a, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameuEECs1mImOlsSUsK_17markup5ever_rcdom.exit.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNvNtNtCskKLDkoKarTP_4core2io5write17default_write_fmt7AdapterNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrENtNtBb_3fmt5Write10write_charCs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 0, ptr %i.b, align 4
  %i.c = icmp samesign ult i32 %1, 128
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp samesign ult i32 %1, 2048
  %i.e = trunc i32 %1 to i8
  %i.f = and i8 %i.e, 63
  %i.g = or disjoint i8 %i.f, -128                ; 3 uses
  %i.h = lshr i32 %1, 6
  %i.i = trunc i32 %i.h to i8                     ; 2 uses
  %i.j = and i8 %i.i, 63
  %i.k = or disjoint i8 %i.j, -128                ; 2 uses
  %i.l = lshr i32 %1, 12
  %i.m = trunc i32 %i.l to i8                     ; 2 uses
  %i.n = and i8 %i.m, 63
  %i.o = or disjoint i8 %i.n, -128
  %i.p = lshr i32 %1, 18
  %i.q = trunc nuw nsw i32 %i.p to i8
  %i.r = or disjoint i8 %i.q, -16
  br i1 %i.d, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.s = trunc nuw nsw i32 %1 to i8
  store i8 %i.s, ptr %i.b, align 4, !alias.scope !180
  br label %_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw.exit

bb.d:                                             ; preds = %bb.b
  %i.t = or disjoint i8 %i.i, -64
  store i8 %i.t, ptr %i.b, align 4, !alias.scope !180
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.g, ptr %i.u, align 1, !alias.scope !180
  br label %_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw.exit

bb.e:                                             ; preds = %bb.b
  %i.v = icmp samesign ult i32 %1, 65536
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = or disjoint i8 %i.m, -32
  store i8 %i.w, ptr %i.b, align 4, !alias.scope !180
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.k, ptr %i.x, align 1, !alias.scope !180
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.g, ptr %i.y, align 2, !alias.scope !180
  br label %_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.r, ptr %i.b, align 4, !alias.scope !180
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.o, ptr %i.z, align 1, !alias.scope !180
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.k, ptr %i.aa, align 2, !alias.scope !180
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 %i.g, ptr %i.ab, align 1, !alias.scope !180
  br label %_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw.exit

_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.05.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !183)
  %i.ac = load ptr, ptr %0, align 8, !alias.scope !183, !noalias !186, !nonnull !4, !noundef !4
  %i.ad = call noundef ptr @_RNvYNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef nonnull %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %.sroa.0.05.i), !noalias !183 ; 3 uses
  %.not.i = icmp ne ptr %i.ad, null               ; 2 uses
  br i1 %.not.i, label %bb.h, label %_RNvXNvNtNtCskKLDkoKarTP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCs1mImOlsSUsK_17markup5ever_rcdom.exit

bb.h:                                             ; preds = %_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val.i = load ptr, ptr %i.ae, align 8, !alias.scope !183, !noalias !186, !noundef !4 ; 4 uses
  %i.af = icmp eq ptr %.val.i, null
  br i1 %i.af, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs1mImOlsSUsK_17markup5ever_rcdom.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !188
  %i.ag = ptrtoint ptr %.val.i to i64             ; 2 uses
  %i.ah = and i64 %i.ag, 3
  switch i64 %i.ah, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i
    i64 3, label %bb.j
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i
    i64 1, label %bb.k
  ], !prof !88

default.unreachable:                              ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ai = icmp ult ptr %.val.i, inttoptr (i64 188978561024 to ptr)
  %i.aj = and i64 %i.ag, 1095216660480
  %i.ak = icmp ne i64 %i.aj, 1095216660480
  call void @llvm.assume(i1 %i.ai)
  call void @llvm.assume(i1 %i.ak)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.al = getelementptr i8, ptr %.val.i, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al) ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.al, ptr %i.am, align 8, !alias.scope !189, !noalias !188
  store i8 3, ptr %i.a, align 8, !alias.scope !189, !noalias !188
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.am)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i unwind label %bb.l, !noalias !183

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !188
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs1mImOlsSUsK_17markup5ever_rcdom.exit.i

bb.l:                                             ; preds = %bb.k
  %i.an = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ad, ptr %i.ae, align 8, !alias.scope !183, !noalias !186
  resume { ptr, i32 } %i.an

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs1mImOlsSUsK_17markup5ever_rcdom.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i, %bb.h
  store ptr %i.ad, ptr %i.ae, align 8, !alias.scope !183, !noalias !186
  br label %_RNvXNvNtNtCskKLDkoKarTP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCs1mImOlsSUsK_17markup5ever_rcdom.exit

_RNvXNvNtNtCskKLDkoKarTP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCs1mImOlsSUsK_17markup5ever_rcdom.exit: ; preds = %_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs1mImOlsSUsK_17markup5ever_rcdom.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %.not.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNvNtNtCskKLDkoKarTP_4core2io5write17default_write_fmt7AdapterNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrENtNtBb_3fmt5Write9write_fmtCs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvXs_NvNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtQINtNvNtNtBa_2io5write17default_write_fmt7AdapterNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrENtB4_12SpecWriteFmt14spec_write_fmtCs1mImOlsSUsK_17markup5ever_rcdom.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @2, ptr noundef nonnull %1, ptr noundef nonnull %2), !inline_history !192
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtBb_8RawTableTNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameuEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Es_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTOhEE9call_onceCs1mImOlsSUsK_17markup5ever_rcdom(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsG258MDvU3F_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #9

; Function Attrs: nonlazybind uwtable
end_hunk_1
