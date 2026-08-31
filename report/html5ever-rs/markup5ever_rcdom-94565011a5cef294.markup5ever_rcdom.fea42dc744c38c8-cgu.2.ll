Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/html5ever-rs/original/markup5ever_rcdom-94565011a5cef294.markup5ever_rcdom.fea42dc744c38c8-cgu.2?download=true
inline.NumInlined: 152
inline.NumDeleted: 92
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
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
  %i.ar = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 9
  %i.as = add nsw i64 %.sroa.4.0.i.ph.i, -1       ; 6 uses
  %i.at = lshr i64 %.sroa.4.0.i.ph.i, 3
  %i.au = mul nuw nsw i64 %i.at, 7
  %.sroa.07.0.i.i = select i1 %i.ar, i64 %i.as, i64 %i.au ; 2 uses
  %4 = ptrtoint ptr %i.aq to i64
  %5 = ptrtoint ptr %i.c to i64
  store i64 %5, ptr %i.b, align 8, !noalias !35
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 24, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !35
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !35
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  store i64 %4, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !35
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store i64 %i.as, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !35
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store i64 %.sroa.07.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !35
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !35
  %i.av = load i64, ptr %i.d, align 8, !alias.scope !44, !noalias !45, !noundef !4 ; 2 uses
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %._crit_edge53, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs1mImOlsSUsK_17markup5ever_rcdom.exit
  %i.ax = load ptr, ptr %0, align 8, !alias.scope !44, !noalias !45, !nonnull !4, !noundef !4 ; 2 uses
  %6 = ptrtoint ptr %i.ax to i64
  %.val536 = load <16 x i8>, ptr %i.ax, align 16
  %i.ay = icmp sgt <16 x i8> %.val536, splat (i8 -1)
  %i.az = bitcast <16 x i1> %i.ay to i16
  br label %.preheader

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs1mImOlsSUsK_17markup5ever_rcdom.exit.thread: ; preds = %bb.j, %bb.k, %bb.l
  %.pn.i.pn = phi { i64, i64 } [ %i.ap, %bb.l ], [ %i.an, %bb.j ], [ %i.ao, %bb.k ] ; 2 uses
  %.sroa.12.032 = extractvalue { i64, i64 } %.pn.i.pn, 1
  %.sroa.7.033 = extractvalue { i64, i64 } %.pn.i.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !35
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs1mImOlsSUsK_17markup5ever_rcdom.exit

bb.m:                                             ; preds = %._crit_edge
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef align 8 dereferenceable(56) %i.b) #18
  br label %common.resume

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.018.052 = phi i64 [ %6, %.preheader.lr.ph ], [ %.sroa.018.1.lcssa, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.051 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.050 = phi i64 [ %i.av, %.preheader.lr.ph ], [ %i.ce, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.049 = phi i16 [ %i.az, %.preheader.lr.ph ], [ %i.cc, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i144 = icmp eq i16 %.sroa.13.049, 0
  br i1 %.not.i144, label %.noexc2.preheader, label %._crit_edge

.noexc2.preheader:                                ; preds = %.preheader
  %.sroa.018.052.ptr = inttoptr i64 %.sroa.018.052 to ptr
  br label %.noexc2

.noexc2:                                          ; preds = %.noexc2.preheader, %.noexc2
  %.sroa.018.146 = phi ptr [ %i.bb, %.noexc2 ], [ %.sroa.018.052.ptr, %.noexc2.preheader ]
  %.sroa.5.145 = phi i64 [ %i.be, %.noexc2 ], [ %.sroa.5.051, %.noexc2.preheader ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.018.146, i64 16 ; 3 uses
  %.val437 = load <16 x i8>, ptr %i.bb, align 16
  %i.bc = icmp sgt <16 x i8> %.val437, splat (i8 -1)
  %i.bd = bitcast <16 x i1> %i.bc to i16          ; 2 uses
  %i.be = add i64 %.sroa.5.145, 16                ; 2 uses
  %.not.i1 = icmp eq i16 %i.bd, 0
  br i1 %.not.i1, label %.noexc2, label %._crit_edge.loopexit

._crit_edge53.loopexit:                           ; preds = %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre66 = load i64, ptr %i.d, align 8, !alias.scope !44, !noalias !45
  br label %._crit_edge53

._crit_edge53:                                    ; preds = %._crit_edge53.loopexit, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs1mImOlsSUsK_17markup5ever_rcdom.exit
  %i.bf = phi i64 [ %.pre66, %._crit_edge53.loopexit ], [ 0, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs1mImOlsSUsK_17markup5ever_rcdom.exit ] ; 2 uses
  %i.bg = sub i64 %.sroa.07.0.i.i, %i.bf
  store i64 %i.bg, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !35
  store i64 %i.bf, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !35
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs1mImOlsSUsK_17markup5ever_rcdom(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsjqcU1oJFKXj_9hashbrown3raw13RawTableInnerECs1mImOlsSUsK_17markup5ever_rcdom.exit unwind label %bb.n

bb.n:                                             ; preds = %._crit_edge53
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #19
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsjqcU1oJFKXj_9hashbrown3raw13RawTableInnerECs1mImOlsSUsK_17markup5ever_rcdom.exit: ; preds = %._crit_edge53
  call void @llvm.experimental.noalias.scope.decl(metadata !46)
  call void @llvm.experimental.noalias.scope.decl(metadata !49)
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !52 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !52 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !52, !noundef !4 ; 3 uses
  %i.bi = icmp eq i64 %.val3.i.i, 0
  br i1 %i.bi, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECs1mImOlsSUsK_17markup5ever_rcdom.exit, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsjqcU1oJFKXj_9hashbrown3raw13RawTableInnerECs1mImOlsSUsK_17markup5ever_rcdom.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !52
  %i.bj = add i64 %.val3.i.i, 1
  %i.bk = mul nuw i64 %.val.i.i, %i.bj            ; 2 uses
  %i.bl = add i64 %.val1.i.i, -1
  %i.bm = add i64 %i.bl, %i.bk                    ; 2 uses
  %i.bn = icmp uge i64 %i.bm, %i.bk
  call void @llvm.assume(i1 %i.bn)
  %i.bo = sub i64 0, %.val1.i.i
  %i.bp = and i64 %i.bm, %i.bo                    ; 3 uses
  %i.bq = add i64 %.val3.i.i, 17
  %i.br = add i64 %i.bq, %i.bp                    ; 4 uses
  %i.bs = icmp uge i64 %i.br, %i.bp
  %i.bt = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.bu = icmp ule i64 %i.br, %i.bt
  call void @llvm.assume(i1 %i.bs)
  call void @llvm.assume(i1 %i.bu)
  %i.bv = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.bv)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ]
  %i.bw = icmp eq i64 %i.br, 0
  br i1 %i.bw, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECs1mImOlsSUsK_17markup5ever_rcdom.exit, label %bb.o

bb.o:                                             ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bx = sub nsw i64 0, %i.bp
  %i.by = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bx
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.by, i64 noundef %i.br, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #17, !noalias !52
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECs1mImOlsSUsK_17markup5ever_rcdom.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECs1mImOlsSUsK_17markup5ever_rcdom.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsjqcU1oJFKXj_9hashbrown3raw13RawTableInnerECs1mImOlsSUsK_17markup5ever_rcdom.exit, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !35
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs1mImOlsSUsK_17markup5ever_rcdom.exit

._crit_edge.loopexit:                             ; preds = %.noexc2
  %7 = ptrtoint ptr %i.bb to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.049, %.preheader ], [ %i.bd, %._crit_edge.loopexit ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.051, %.preheader ], [ %i.be, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.052, %.preheader ], [ %7, %._crit_edge.loopexit ]
  %i.bz = add i16 %.sroa.13.1.lcssa, -1
  %i.ca = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.cb = zext nneg i16 %i.ca to i64
  %i.cc = and i16 %i.bz, %.sroa.13.1.lcssa
  %i.cd = add i64 %.sroa.5.1.lcssa, %i.cb         ; 2 uses
  %i.ce = add i64 %.sroa.9.050, -1                ; 2 uses
  %i.cf = load ptr, ptr %0, align 8, !alias.scope !53, !noalias !56, !nonnull !4, !noundef !4
  %i.cg = sub nsw i64 0, %i.cd
  %i.ch = getelementptr inbounds [24 x i8], ptr %i.cf, i64 %i.cg
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -24
  %i.cj = invoke noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ci)
          to label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs1mImOlsSUsK_17markup5ever_rcdom.exit unwind label %bb.m ; 2 uses

_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs1mImOlsSUsK_17markup5ever_rcdom.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.as, %i.cj            ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.ck, align 1, !noalias !58
  %i.cl = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.cm = bitcast <16 x i1> %i.cl to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.cm, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !61

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs1mImOlsSUsK_17markup5ever_rcdom.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs1mImOlsSUsK_17markup5ever_rcdom.exit ], [ %.sroa.0.0.i9, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.cm, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs1mImOlsSUsK_17markup5ever_rcdom.exit ], [ %i.dd, %.lr.ph.i ]
  %i.cn = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.co = zext nneg i16 %i.cn to i64
  %i.cp = add nuw nsw i64 %.sroa.0.0.lcssa.i, %i.co
  %i.cq = and i64 %i.cp, %i.as                    ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !noundef !4
  %i.ct = icmp sgt i8 %i.cs, -1
  br i1 %i.ct, label %bb.p, label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !21

bb.p:                                             ; preds = %._crit_edge.i
  %.val62.i.i = load <16 x i8>, ptr %i.aq, align 16
  %i.cu = icmp slt <16 x i8> %.val62.i.i, zeroinitializer
  %i.cv = bitcast <16 x i1> %i.cu to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cv, 0
  %i.cw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cv, i1 true)
  %i.cx = zext nneg i16 %i.cw to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs1mImOlsSUsK_17markup5ever_rcdom.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i9, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs1mImOlsSUsK_17markup5ever_rcdom.exit ]
  %i.cy = phi i64 [ %i.cz, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs1mImOlsSUsK_17markup5ever_rcdom.exit ]
  %i.cz = add i64 %i.cy, 16                       ; 2 uses
  %i.da = add i64 %i.cz, %.sroa.0.010.i
  %.sroa.0.0.i9 = and i64 %i.da, %i.as            ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.0.0.i9
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.db, align 1, !noalias !58
  %i.dc = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.dd = bitcast <16 x i1> %i.dc to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.dd, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !62

_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.p, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cx, %bb.p ], [ %i.cq, %._crit_edge.i ] ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.0.0.i5.i
  %i.df = lshr i64 %i.cj, 57
  %i.dg = trunc nuw nsw i64 %i.df to i8           ; 2 uses
  %i.dh = add nsw i64 %.sroa.0.0.i5.i, -16
  %i.di = and i64 %i.dh, %i.as
  store i8 %i.dg, ptr %i.de, align 1
  %i.dj = getelementptr i8, ptr %i.aq, i64 %i.di
  %i.dk = getelementptr i8, ptr %i.dj, i64 16
  store i8 %i.dg, ptr %i.dk, align 1
  %i.dl = load ptr, ptr %0, align 8, !alias.scope !44, !noalias !45, !nonnull !4, !noundef !4
  %.neg.i.i = mul i64 %i.cd, -24
  %i.dm = getelementptr i8, ptr %i.dl, i64 %.neg.i.i
  %i.dn = getelementptr i8, ptr %i.dm, i64 -24
  %.neg62.i.i = mul i64 %.sroa.0.0.i5.i, -24
  %i.do = getelementptr i8, ptr %i.aq, i64 %.neg62.i.i
  %i.dp = getelementptr i8, ptr %i.do, i64 -24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dp, ptr noundef nonnull align 1 dereferenceable(24) %i.dn, i64 24, i1 false)
  %i.dq = icmp eq i64 %i.ce, 0
  br i1 %i.dq, label %._crit_edge53.loopexit, label %.preheader

common.resume:                                    ; preds = %bb.t, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.ba, %bb.m ], [ %i.et, %bb.t ]
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
  %i.dr = lshr i64 %i.k, 4
  %i.ds = and i64 %i.k, 15
  %.not10.i.i.i.i = icmp ne i64 %i.ds, 0
  %i.dt = zext i1 %.not10.i.i.i.i to i64
  %.sroa.05.0.i.i.i.i = add nuw nsw i64 %i.dr, %i.dt ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i.i, 1
  %i.du = icmp eq i64 %.sroa.05.0.i.i.i.i, 1
  br i1 %i.du, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i.i, 2305843009213693950
  br label %bb.r

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.r
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i
  %.sroa.0.08.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ee, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod107 = trunc i64 %.sroa.05.0.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod107)
  %i.dv = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %.sroa.0.08.i.i.epil.init ; 2 uses
  %.val5.i.i.epil = load <16 x i8>, ptr %i.dv, align 16, !noalias !63
  %.lobit.i.i.i.epil = ashr <16 x i8> %.val5.i.i.epil, splat (i8 7)
  %i.dw = bitcast <16 x i8> %.lobit.i.i.i.epil to <2 x i64>
  %i.dx = or <2 x i64> %i.dw, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dx, ptr %i.dv, align 16, !noalias !63
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader
  %i.dy = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %..i11 = tail call i64 @llvm.umax.i64(i64 %i.k, i64 16)
  %.27.i = tail call i64 @llvm.umin.i64(i64 %i.k, i64 16)
  %i.ea = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %..i11
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ea, ptr nonnull align 1 %.val13.i, i64 %.27.i, i1 false), !noalias !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !63
  store ptr @_RNvYNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtBb_8RawTableTNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameuEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Es_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTOhEE9call_onceCs1mImOlsSUsK_17markup5ever_rcdom, ptr %i.dy, align 8, !noalias !63
  store i64 24, ptr %i.dz, align 8, !noalias !63
  store ptr %0, ptr %i.a, align 8, !noalias !63
  br label %.lr.ph.i12

bb.r:                                             ; preds = %bb.r, %.lr.ph.i.i.new
  %.sroa.0.08.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.ee, %bb.r ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.r ]
  %i.eb = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %.sroa.0.08.i.i ; 2 uses
  %.val5.i.i = load <16 x i8>, ptr %i.eb, align 16, !noalias !63
  %.lobit.i.i.i = ashr <16 x i8> %.val5.i.i, splat (i8 7)
  %i.ec = bitcast <16 x i8> %.lobit.i.i.i to <2 x i64>
  %i.ed = or <2 x i64> %i.ec, splat (i64 -9187201950435737472)
  store <2 x i64> %i.ed, ptr %i.eb, align 16, !noalias !63
  %i.ee = add i64 %.sroa.0.08.i.i, 32             ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %.sroa.0.08.i.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16 ; 2 uses
  %.val5.i.i.1 = load <16 x i8>, ptr %i.eg, align 16, !noalias !63
  %.lobit.i.i.i.1 = ashr <16 x i8> %.val5.i.i.1, splat (i8 7)
  %i.eh = bitcast <16 x i8> %.lobit.i.i.i.1 to <2 x i64>
  %i.ei = or <2 x i64> %i.eh, splat (i64 -9187201950435737472)
  store <2 x i64> %i.ei, ptr %i.eg, align 16, !noalias !63
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.r

.lr.ph.i12:                                       ; preds = %bb.z, %._crit_edge.i.i
  %.sroa.0.06.i = phi i64 [ %i.ej, %bb.z ], [ 0, %._crit_edge.i.i ] ; 9 uses
  %i.ej = add nuw i64 %.sroa.0.06.i, 1            ; 2 uses
  %i.ek = load ptr, ptr %0, align 8, !alias.scope !63, !nonnull !4, !noundef !4 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %.sroa.0.06.i
  %i.em = load i8, ptr %i.el, align 1, !noundef !4
  %.not.i13 = icmp eq i8 %i.em, -128
  br i1 %.not.i13, label %bb.s, label %bb.z

bb.s:                                             ; preds = %.lr.ph.i12
  %.neg.i = mul i64 %i.ej, -24
  %i.en = getelementptr inbounds i8, ptr %i.ek, i64 %.neg.i ; 2 uses
  %i.eo = sub nsw i64 0, %.sroa.0.06.i
  br label %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit.i

_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit.i: ; preds = %bb.y, %bb.s
  %i.ep = load ptr, ptr %0, align 8, !alias.scope !66, !noalias !69, !nonnull !4, !noundef !4
  %i.eq = getelementptr inbounds [24 x i8], ptr %i.ep, i64 %i.eo
  %i.er = getelementptr inbounds i8, ptr %i.eq, i64 -24
  %i.es = invoke noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.er)
          to label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs1mImOlsSUsK_17markup5ever_rcdom.exit.i unwind label %bb.t ; 3 uses

bb.t:                                             ; preds = %bb.y, %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit.i
  %i.et = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #18
          to label %common.resume unwind label %bb.aa

_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs1mImOlsSUsK_17markup5ever_rcdom.exit.i: ; preds = %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit.i
  %.val.i16 = load ptr, ptr %0, align 8, !alias.scope !63, !nonnull !4, !noundef !4 ; 7 uses
  %.val12.i = load i64, ptr %i.h, align 8, !alias.scope !63, !noundef !4 ; 6 uses
  %.sroa.0.07.i.i = and i64 %.val12.i, %i.es      ; 5 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.val.i16, i64 %.sroa.0.07.i.i
  %.sroa.0.0.copyload.i68.i.i = load <16 x i8>, ptr %i.eu, align 1, !noalias !71
  %i.ev = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i, zeroinitializer
  %i.ew = bitcast <16 x i1> %i.ev to i16          ; 2 uses
  %.not.i9.i.i = icmp eq i16 %i.ew, 0
  br i1 %.not.i9.i.i, label %.lr.ph.i16.i, label %._crit_edge.i15.i, !prof !61

._crit_edge.i15.i:                                ; preds = %.lr.ph.i16.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs1mImOlsSUsK_17markup5ever_rcdom.exit.i
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.07.i.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs1mImOlsSUsK_17markup5ever_rcdom.exit.i ], [ %.sroa.0.0.i.i17, %.lr.ph.i16.i ]
end_hunk_0
begin_hunk_1_@_RNvMs_NtCsgv7xG79AfeB_12string_cache4atomINtB4_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetE8get_hashCs1mImOlsSUsK_17markup5ever_rcdom:bb.a
  %i.d = inttoptr i64 %i.a to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !4
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.g = lshr i64 %i.a, 32                        ; 3 uses
  %i.h = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs_CsbN1FUDjLgAL_9web_atomsNtB6_15PrefixStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 40), align 8, !noundef !4 ; 2 uses
  %i.i = icmp ult i64 %i.g, %i.h
  br i1 %i.i, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.a, %bb.f, %bb.c
  %.sroa.0.0 = phi i64 [ %i.f, %bb.c ], [ %i.l, %bb.f ], [ %i.a, %bb.a ]
  ret i64 %.sroa.0.0

bb.f:                                             ; preds = %bb.d
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs_CsbN1FUDjLgAL_9web_atomsNtB6_15PrefixStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 32), align 8, !nonnull !4, !align !86, !noundef !4
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.g
  %i.l = load i64, ptr %i.k, align 8, !noundef !4
  br label %bb.e

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.g, i64 noundef %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #16
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMs_NtCsgv7xG79AfeB_12string_cache4atomINtB4_4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetE8get_hashCs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !92, !noundef !4 ; 4 uses
  %i.b = trunc i64 %i.a to i8
  %i.c = and i8 %i.b, 3
  switch i8 %i.c, label %bb.b [
    i8 0, label %bb.c
    i8 2, label %bb.d
    i8 1, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = inttoptr i64 %i.a to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !4
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.g = lshr i64 %i.a, 32                        ; 3 uses
  %i.h = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXCsbN1FUDjLgAL_9web_atomsNtB4_18LocalNameStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 40), align 8, !noundef !4 ; 2 uses
  %i.i = icmp ult i64 %i.g, %i.h
  br i1 %i.i, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.a, %bb.f, %bb.c
  %.sroa.0.0 = phi i64 [ %i.f, %bb.c ], [ %i.l, %bb.f ], [ %i.a, %bb.a ]
  ret i64 %.sroa.0.0

bb.f:                                             ; preds = %bb.d
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXCsbN1FUDjLgAL_9web_atomsNtB4_18LocalNameStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 32), align 8, !nonnull !4, !align !86, !noundef !4
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.g
  %i.l = load i64, ptr %i.k, align 8, !noundef !4
  br label %bb.e

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.g, i64 noundef %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #16
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMs_NtCsgv7xG79AfeB_12string_cache4atomINtB4_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetE8get_hashCs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !92, !noundef !4 ; 4 uses
  %i.b = trunc i64 %i.a to i8
  %i.c = and i8 %i.b, 3
  switch i8 %i.c, label %bb.b [
    i8 0, label %bb.c
    i8 2, label %bb.d
    i8 1, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = inttoptr i64 %i.a to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !4
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.g = lshr i64 %i.a, 32                        ; 3 uses
  %i.h = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs0_CsbN1FUDjLgAL_9web_atomsNtB7_18NamespaceStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 40), align 8, !noundef !4 ; 2 uses
  %i.i = icmp ult i64 %i.g, %i.h
  br i1 %i.i, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.a, %bb.f, %bb.c
  %.sroa.0.0 = phi i64 [ %i.f, %bb.c ], [ %i.l, %bb.f ], [ %i.a, %bb.a ]
  ret i64 %.sroa.0.0

bb.f:                                             ; preds = %bb.d
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs0_CsbN1FUDjLgAL_9web_atomsNtB7_18NamespaceStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 32), align 8, !nonnull !4, !align !86, !noundef !4
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.g
  %i.l = load i64, ptr %i.k, align 8, !noundef !4
  br label %bb.e

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.g, i64 noundef %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #16
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNvNtNtCskKLDkoKarTP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.c = tail call noundef ptr @_RNvYNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) ; 3 uses
  %.not = icmp ne ptr %i.c, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val = load ptr, ptr %i.d, align 8, !noundef !4 ; 4 uses
  %i.e = icmp eq ptr %.val, null
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs1mImOlsSUsK_17markup5ever_rcdom.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = ptrtoint ptr %.val to i64                ; 2 uses
  %i.g = and i64 %i.f, 3
  switch i64 %i.g, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs1mImOlsSUsK_17markup5ever_rcdom.exit.i
    i64 3, label %bb.d
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs1mImOlsSUsK_17markup5ever_rcdom.exit.i
    i64 1, label %bb.e
  ], !prof !88

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.h = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.i = and i64 %i.f, 1095216660480
  %i.j = icmp ne i64 %i.i, 1095216660480
  tail call void @llvm.assume(i1 %i.h)
  tail call void @llvm.assume(i1 %i.j)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs1mImOlsSUsK_17markup5ever_rcdom.exit.i

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !alias.scope !127
  store i8 3, ptr %i.a, align 8, !alias.scope !127
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs1mImOlsSUsK_17markup5ever_rcdom.exit.i unwind label %bb.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs1mImOlsSUsK_17markup5ever_rcdom.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs1mImOlsSUsK_17markup5ever_rcdom.exit

bb.f:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs1mImOlsSUsK_17markup5ever_rcdom.exit
  ret i1 %.not

bb.g:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  store ptr %i.c, ptr %i.d, align 8
  resume { ptr, i32 } %i.m

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs1mImOlsSUsK_17markup5ever_rcdom.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs1mImOlsSUsK_17markup5ever_rcdom.exit.i, %bb.b
  store ptr %i.c, ptr %i.d, align 8
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtB6_5Debug3fmtCs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !4, !align !86, !noundef !4 ; 2 uses
  %.val = load ptr, ptr %1, align 8               ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.e, align 8            ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8, !noalias !130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !130
  %i.f = load i64, ptr %i.d, align 8, !range !92, !alias.scope !130, !noundef !4 ; 2 uses
  %i.g = and i64 %i.f, 3
  %i.h = and i64 %i.f, 3
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetENtB6_5Debug3fmtCs1mImOlsSUsK_17markup5ever_rcdom, i64 %i.h
  %switch.load = load ptr, ptr %switch.gep, align 8
  %switch.gep2 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetENtB6_5Debug3fmtCs1mImOlsSUsK_17markup5ever_rcdom.47, i64 %i.g
  %switch.load3 = load i8, ptr %switch.gep2, align 1
  %switch.ext = zext i8 %switch.load3 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %switch.load, ptr %i.b, align 8, !noalias !130, !captures !133
  store i64 %switch.ext, ptr %i.i, align 8, !noalias !130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !130
  %2 = ptrtoint ptr %i.c to i64
  %3 = ptrtoint ptr %i.b to i64
  store i64 %2, ptr %i.a, align 8, !noalias !130
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 ptrtoint (ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtB6_7Display3fmtCs1mImOlsSUsK_17markup5ever_rcdom to i64), ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !130
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %3, ptr %i.j, align 8, !noalias !130
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 ptrtoint (ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCs1mImOlsSUsK_17markup5ever_rcdom to i64), ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !130
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.k = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1, ptr noundef nonnull @12, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.k
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetENtB6_5Debug3fmtCs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !4, !align !86, !noundef !4 ; 2 uses
  %.val = load ptr, ptr %1, align 8               ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.e, align 8            ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8, !noalias !134
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !134
  %i.f = load i64, ptr %i.d, align 8, !range !92, !alias.scope !134, !noundef !4 ; 2 uses
  %i.g = and i64 %i.f, 3
  %i.h = and i64 %i.f, 3
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetENtB6_5Debug3fmtCs1mImOlsSUsK_17markup5ever_rcdom, i64 %i.h
  %switch.load = load ptr, ptr %switch.gep, align 8
  %switch.gep2 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetENtB6_5Debug3fmtCs1mImOlsSUsK_17markup5ever_rcdom.47, i64 %i.g
  %switch.load3 = load i8, ptr %switch.gep2, align 1
  %switch.ext = zext i8 %switch.load3 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %switch.load, ptr %i.b, align 8, !noalias !134, !captures !133
  store i64 %switch.ext, ptr %i.i, align 8, !noalias !134
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !134
  %2 = ptrtoint ptr %i.c to i64
  %3 = ptrtoint ptr %i.b to i64
  store i64 %2, ptr %i.a, align 8, !noalias !134
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 ptrtoint (ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetENtB6_7Display3fmtCs1mImOlsSUsK_17markup5ever_rcdom to i64), ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !134
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %3, ptr %i.j, align 8, !noalias !134
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 ptrtoint (ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCs1mImOlsSUsK_17markup5ever_rcdom to i64), ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !134
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.k = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1, ptr noundef nonnull @12, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.k
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRbNtB6_5Debug3fmtCs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXsg_NtCskKLDkoKarTP_4core3fmtbNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtB6_7Display3fmtCs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !86, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
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
end_hunk_1
