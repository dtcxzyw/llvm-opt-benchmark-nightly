Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/regex_automata-11449060322bc37b.regex_automata.6a733967971a138a-cgu.14?download=true
inline.NumInlined: 223
inline.NumDeleted: 128
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs98D8VPWzHuM_14regex_automata:bb.a
_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit.thread: ; preds = %bb.a, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit12, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit16, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit14, %bb.c
  %.sroa.4.0 = phi i32 [ %i.r, %bb.c ], [ %i.p, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit12 ], [ %i.al, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit16 ], [ %i.aa, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit14 ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i32 [ 1, %bb.c ], [ 1, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit12 ], [ 1, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit16 ], [ 1, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs98D8VPWzHuM_14regex_automata.exit14 ], [ 0, %bb.a ]
  %i.am = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0
  %i.an = insertvalue { i32, i32 } %i.am, i32 %.sroa.4.0, 1
  ret { i32, i32 } %i.an
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recNtNtNtCs79ICTHwG85D_12regex_syntax3hir7literal7LiteralNvYB14_NtNtBa_3cmp10PartialOrd2ltECs98D8VPWzHuM_14regex_automata(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noalias noundef nonnull %4) unnamed_addr #2 {
bb.a:
  %i.a = and i64 %3, 2305843009213693944
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw i64 %i.b, 7                      ; 3 uses
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.e
  %i.g = tail call noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recNtNtNtCs79ICTHwG85D_12regex_syntax3hir7literal7LiteralNvYB14_NtNtBa_3cmp10PartialOrd2ltECs98D8VPWzHuM_14regex_automata(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b, ptr noalias noundef nonnull %4)
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.e
  %i.j = tail call noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recNtNtNtCs79ICTHwG85D_12regex_syntax3hir7literal7LiteralNvYB14_NtNtBa_3cmp10PartialOrd2ltECs98D8VPWzHuM_14regex_automata(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b, ptr noalias noundef nonnull %4)
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.e
  %i.m = tail call noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recNtNtNtCs79ICTHwG85D_12regex_syntax3hir7literal7LiteralNvYB14_NtNtBa_3cmp10PartialOrd2ltECs98D8VPWzHuM_14regex_automata(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b, ptr noalias noundef nonnull %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 4 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 4 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !45, !noalias !46, !nonnull !3, !noundef !3 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 16
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !45, !noalias !46, !noundef !3 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !46, !noalias !45, !nonnull !3, !noundef !3 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 16
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !46, !noalias !45, !noundef !3 ; 4 uses
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.u)
  %i.v = tail call i32 @memcmp(ptr nonnull %i.o, ptr nonnull %i.s, i64 %spec.store.select.i.i.i), !noalias !47 ; 2 uses
  %i.w = sext i32 %i.v to i64
  %i.x = icmp eq i32 %i.v, 0
  %i.y = sub i64 %i.q, %i.u
  %spec.select.i.i.i = select i1 %i.x, i64 %i.y, i64 %i.w ; 2 uses
  %i.z = icmp eq i64 %spec.select.i.i.i, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 24
  %i.ab = load i8, ptr %i.aa, align 8, !range !48, !alias.scope !45, !noalias !46 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 24
  %i.ad = load i8, ptr %i.ac, align 8, !range !48, !alias.scope !46, !noalias !45 ; 2 uses
  %i.ae = icmp samesign ult i8 %i.ab, %i.ad
  %i.af = icmp slt i64 %spec.select.i.i.i, 0
  %i.ag = select i1 %i.z, i1 %i.ae, i1 %i.af      ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55)
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !58, !noalias !59, !nonnull !3, !noundef !3 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !58, !noalias !59, !noundef !3 ; 4 uses
  %spec.store.select.i.i.i12 = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.ak)
  %i.al = tail call i32 @memcmp(ptr nonnull %i.o, ptr nonnull %i.ai, i64 %spec.store.select.i.i.i12), !noalias !63 ; 2 uses
  %i.am = sext i32 %i.al to i64
  %i.an = icmp eq i32 %i.al, 0
  %i.ao = sub i64 %i.q, %i.ak
  %spec.select.i.i.i13 = select i1 %i.an, i64 %i.ao, i64 %i.am ; 2 uses
  %i.ap = icmp eq i64 %spec.select.i.i.i13, 0
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 24
  %i.ar = load i8, ptr %i.aq, align 8, !range !48, !alias.scope !58, !noalias !59 ; 2 uses
  %i.as = icmp samesign ult i8 %i.ab, %i.ar
  %i.at = icmp slt i64 %spec.select.i.i.i13, 0
  %i.au = select i1 %i.ap, i1 %i.as, i1 %i.at
  %i.av = xor i1 %i.ag, %i.au
  br i1 %i.av, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3NtNtNtCs79ICTHwG85D_12regex_syntax3hir7literal7LiteralNvYBZ_NtNtBa_3cmp10PartialOrd2ltECs98D8VPWzHuM_14regex_automata.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %spec.store.select.i.i.i14 = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.ak)
  %i.aw = tail call i32 @memcmp(ptr nonnull %i.s, ptr nonnull %i.ai, i64 %spec.store.select.i.i.i14), !noalias !64 ; 2 uses
  %i.ax = sext i32 %i.aw to i64
  %i.ay = icmp eq i32 %i.aw, 0
  %i.az = sub i64 %i.u, %i.ak
  %spec.select.i.i.i15 = select i1 %i.ay, i64 %i.az, i64 %i.ax ; 2 uses
  %i.ba = icmp eq i64 %spec.select.i.i.i15, 0
  %i.bb = icmp samesign ult i8 %i.ad, %i.ar
  %i.bc = icmp slt i64 %spec.select.i.i.i15, 0
  %i.bd = select i1 %i.ba, i1 %i.bb, i1 %i.bc
  %i.be = xor i1 %i.ag, %i.bd
  %..i = select i1 %i.be, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3NtNtNtCs79ICTHwG85D_12regex_syntax3hir7literal7LiteralNvYBZ_NtNtBa_3cmp10PartialOrd2ltECs98D8VPWzHuM_14regex_automata.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3NtNtNtCs79ICTHwG85D_12regex_syntax3hir7literal7LiteralNvYBZ_NtNtBa_3cmp10PartialOrd2ltECs98D8VPWzHuM_14regex_automata.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %bb.c ], [ %..i, %bb.d ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDNvYB14_NtNtBa_3cmp10PartialOrd2ltEB1a_(ptr nofree noundef readonly %0, ptr nofree noundef readonly %1, ptr nofree noundef readonly %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly %4) unnamed_addr #3 {
bb.a:
  %i.a = and i64 %3, 2305843009213693944
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3NtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDNvYBZ_NtNtBa_3cmp10PartialOrd2ltEB15_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw i64 %i.b, 7                      ; 3 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.e
  %i.g = tail call noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDNvYB14_NtNtBa_3cmp10PartialOrd2ltEB1a_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b, ptr noalias noundef nonnull %4)
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.e
  %i.j = tail call noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDNvYB14_NtNtBa_3cmp10PartialOrd2ltEB1a_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b, ptr noalias noundef nonnull %4)
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.e
  %i.m = tail call noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDNvYB14_NtNtBa_3cmp10PartialOrd2ltEB1a_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b, ptr noalias noundef nonnull %4)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3NtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDNvYBZ_NtNtBa_3cmp10PartialOrd2ltEB15_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3NtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDNvYBZ_NtNtBa_3cmp10PartialOrd2ltEB15_.exit: ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %.sroa.0.0.val13 = load i32, ptr %.sroa.0.0, align 4, !noundef !3 ; 2 uses
  %.sroa.04.0.val14 = load i32, ptr %.sroa.04.0, align 4, !noundef !3 ; 2 uses
  %i.n = icmp ult i32 %.sroa.0.0.val13, %.sroa.04.0.val14 ; 2 uses
  %.sroa.08.0.val12 = load i32, ptr %.sroa.08.0, align 4, !noundef !3 ; 2 uses
  %i.o = icmp ult i32 %.sroa.0.0.val13, %.sroa.08.0.val12
  %i.p = xor i1 %i.n, %i.o
  %i.q = icmp ult i32 %.sroa.04.0.val14, %.sroa.08.0.val12
  %i.r = xor i1 %i.n, %i.q
  %..i = select i1 %i.r, ptr %.sroa.08.0, ptr %.sroa.04.0
  %.sroa.0.0.i = select i1 %i.p, ptr %.sroa.0.0, ptr %..i
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtNtNtCs98D8VPWzHuM_14regex_automata3dfa8remapper7onepassNtNtB7_7onepass3DFANtB5_10Remappable5remapNCINvMB5_NtB5_8Remapper5remapBY_E0EB9_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(376) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !74, !noalias !81, !noundef !3 ; 4 uses
  %i.c = icmp ult i64 %i.b, 1152921504606846976
  tail call void @llvm.assume(i1 %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !74, !noalias !81, !noundef !3
  %i.f = and i64 %i.e, 63                         ; 2 uses
  %i.g = lshr i64 %i.b, %i.f                      ; 2 uses
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %._crit_edge.split.i, label %.lr.ph29.i

.lr.ph29.i:                                       ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !74, !noalias !81, !noundef !3 ; 2 uses
  %.not34.i = icmp eq i64 %i.i, 0
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !74, !noalias !81, !nonnull !3
  %i.l = load i64, ptr %2, align 8, !alias.scope !79, !noalias !82
  %i.m = and i64 %i.l, 63
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !77, !noalias !83 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !77, !noalias !83, !nonnull !3
  br i1 %.not34.i, label %._crit_edge.split.i, label %.lr.ph.i

..loopexit_crit_edge.i:                           ; preds = %_RNCINvMNtNtCs98D8VPWzHuM_14regex_automata3dfa8remapperNtB5_8Remapper5remapNtNtB7_7onepass3DFAE0B9_.exit21.i
  %exitcond43.not.i.a = icmp eq i64 %i.ac, %i.g
  br i1 %exitcond43.not.i.a, label %._crit_edge.split.i, label %.lr.ph.i

._crit_edge.split.i:                              ; preds = %..loopexit_crit_edge.i, %.lr.ph29.i, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !74, !noalias !81, !noundef !3 ; 3 uses
  %i.t = icmp ult i64 %i.s, 2305843009213693952
  tail call void @llvm.assume(i1 %i.t)
  %.not35.i = icmp eq i64 %i.s, 0
  br i1 %.not35.i, label %_RINvMs4_NtNtCs98D8VPWzHuM_14regex_automata3dfa7onepassNtB6_3DFA5remapNCINvMNtB8_8remapperNtB1b_8Remapper5remapBQ_E0EBa_.exit, label %.lr.ph32.i

.lr.ph32.i:                                       ; preds = %._crit_edge.split.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !74, !noalias !81, !nonnull !3, !noundef !3
  %i.w = load i64, ptr %2, align 8, !alias.scope !79, !noalias !82, !noundef !3
  %i.x = and i64 %i.w, 63
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !77, !noalias !83, !noundef !3 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !77, !noalias !83, !nonnull !3
  br label %bb.b

.lr.ph.i:                                         ; preds = %.lr.ph29.i, %..loopexit_crit_edge.i
  %.sroa.05.028.i = phi i64 [ %i.ac, %..loopexit_crit_edge.i ], [ 0, %.lr.ph29.i ] ; 2 uses
  %i.ac = add nuw nsw i64 %.sroa.05.028.i, 1      ; 2 uses
  %i.ad = shl i64 %.sroa.05.028.i, %i.f           ; 2 uses
  %3 = tail call i64 @llvm.usub.sat.i64(i64 %i.b, i64 %i.ad)
  br label %bb.e

bb.b:                                             ; preds = %bb.d, %.lr.ph32.i
  %.sroa.010.030.i = phi i64 [ 0, %.lr.ph32.i ], [ %i.aj, %bb.d ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.sroa.010.030.i ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !noalias !84, !noundef !3
  %i.ag = zext i32 %i.af to i64
  %i.ah = lshr i64 %i.ag, %i.x                    ; 3 uses
  %i.ai = icmp ult i64 %i.ah, %i.z
  br i1 %i.ai, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ah, i64 noundef %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #26, !noalias !84
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.aj = add nuw nsw i64 %.sroa.010.030.i, 1     ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ah
  %i.al = load i32, ptr %i.ak, align 4, !noalias !84, !noundef !3
  store i32 %i.al, ptr %i.ae, align 4, !noalias !84
  %exitcond44.not.i = icmp eq i64 %i.aj, %i.s
  br i1 %exitcond44.not.i, label %_RINvMs4_NtNtCs98D8VPWzHuM_14regex_automata3dfa7onepassNtB6_3DFA5remapNCINvMNtB8_8remapperNtB1b_8Remapper5remapBQ_E0EBa_.exit, label %bb.b

bb.e:                                             ; preds = %_RNCINvMNtNtCs98D8VPWzHuM_14regex_automata3dfa8remapperNtB5_8Remapper5remapNtNtB7_7onepass3DFAE0B9_.exit21.i, %.lr.ph.i
  %.sroa.07.027.i = phi i64 [ 0, %.lr.ph.i ], [ %i.am, %_RNCINvMNtNtCs98D8VPWzHuM_14regex_automata3dfa8remapperNtB5_8Remapper5remapNtNtB7_7onepass3DFAE0B9_.exit21.i ] ; 3 uses
  %i.am = add nuw nsw i64 %.sroa.07.027.i, 1      ; 2 uses
  %i.an = add nuw nsw i64 %.sroa.07.027.i, %i.ad  ; 2 uses
  %exitcond.not.i = icmp eq i64 %.sroa.07.027.i, %3
  br i1 %exitcond.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.an ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !84, !noundef !3 ; 2 uses
  %i.aq = lshr i64 %i.ap, 43
  %i.ar = lshr i64 %i.aq, %i.m                    ; 3 uses
  %i.as = icmp ult i64 %i.ar, %i.o
  br i1 %i.as, label %_RNCINvMNtNtCs98D8VPWzHuM_14regex_automata3dfa8remapperNtB5_8Remapper5remapNtNtB7_7onepass3DFAE0B9_.exit21.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ar, i64 noundef %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #26, !noalias !84
  unreachable

_RNCINvMNtNtCs98D8VPWzHuM_14regex_automata3dfa8remapperNtB5_8Remapper5remapNtNtB7_7onepass3DFAE0B9_.exit21.i: ; preds = %bb.f
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ar
  %i.au = load i32, ptr %i.at, align 4, !noalias !84, !noundef !3
  %i.av = zext i32 %i.au to i64
  %i.aw = shl i64 %i.av, 43
  %i.ax = and i64 %i.ap, 8796093022207
  %i.ay = or disjoint i64 %i.aw, %i.ax
  store i64 %i.ay, ptr %i.ao, align 8, !noalias !84
  %exitcond42.not.i = icmp eq i64 %i.am, %i.i
  br i1 %exitcond42.not.i, label %..loopexit_crit_edge.i, label %bb.e

bb.h:                                             ; preds = %bb.e
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.an, i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #26, !noalias !84
  unreachable

_RINvMs4_NtNtCs98D8VPWzHuM_14regex_automata3dfa7onepassNtB6_3DFA5remapNCINvMNtB8_8remapperNtB1b_8Remapper5remapBQ_E0EBa_.exit: ; preds = %bb.d, %._crit_edge.split.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB5_6ClonedINtNtB7_3rev3RevINtNtNtBb_5slice4iter4IterNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB2K_8for_each4callB1I_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB40_3VecB1I_E14extend_trustedBP_E0E0EB1O_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB5_3RevINtNtNtBb_5slice4iter4IterNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldRB1m_B1m_uNvYB1m_NtNtBb_5clone5Clone5cloneNCINvNvB2n_8for_each4callB1m_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4G_3VecB1m_E14extend_trustedINtNtB7_6cloned6ClonedBM_EE0E0E0EB1s_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB2t_8for_each4callB1s_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3J_3VecB1s_E14extend_trustedBP_E0E0EB1y_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.04.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 6 uses
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.55.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx, align 8 ; 7 uses
  %.sroa.55.0.copyload7 = ptrtoaddr ptr %.sroa.55.0.copyload to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1W_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvB1Q_8for_each4callBQ_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4o_3VecBQ_E14extend_trustedINtNtB2I_6cloned6ClonedBF_EE0E0E0EBW_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.d = sub nuw i64 %i.b, %i.c                   ; 2 uses
  %i.e = lshr i64 %i.d, 2                         ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 48
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.4.0.copyload, 2
  %i.g = add i64 %i.f, %.sroa.55.0.copyload7
  %i.h = sub i64 %i.c, %i.g
  %diff.check = icmp ugt i64 %i.h, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 4611686018427387896      ; 4 uses
  %i.i = add i64 %.sroa.4.0.copyload, %n.vec      ; 2 uses
  %i.j = getelementptr [4 x i8], ptr %.sroa.55.0.copyload, i64 %.sroa.4.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %wide.load = load <4 x i32>, ptr %i.k, align 4, !noalias !85
  %wide.load8 = load <4 x i32>, ptr %i.l, align 4, !noalias !85
  %i.m = getelementptr [4 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store <4 x i32> %wide.load, ptr %i.m, align 4, !noalias !88
  store <4 x i32> %wide.load8, ptr %i.n, align 4, !noalias !88
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !95

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1W_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvB1Q_8for_each4callBQ_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4o_3VecBQ_E14extend_trustedINtNtB2I_6cloned6ClonedBF_EE0E0E0EBW_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.4.0.copyload, %vector.memcheck ], [ %.sroa.4.0.copyload, %bb.b ], [ %i.i, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.e, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.p = phi i64 [ %i.s, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.t, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i.prol
  %.val16.i.prol = load i32, ptr %i.q, align 4, !noalias !85, !noundef !3
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.sroa.55.0.copyload, i64 %i.p
  store i32 %.val16.i.prol, ptr %i.r, align 4, !noalias !88
  %i.s = add i64 %i.p, 1                          ; 3 uses
  %i.t = add nuw i64 %.sroa.01.0.i.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !98

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.s, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.s, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.t, %scalar.ph.prol ]
  %i.u = sub nsw i64 %.sroa.01.0.i.ph, %i.e
  %i.v = icmp ugt i64 %i.u, -4
  br i1 %i.v, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1W_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvB1Q_8for_each4callBQ_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4o_3VecBQ_E14extend_trustedINtNtB2I_6cloned6ClonedBF_EE0E0E0EBW_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.w = phi i64 [ %i.al, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.am, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i
  %.val16.i = load i32, ptr %i.x, align 4, !noalias !85, !noundef !3
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.sroa.55.0.copyload, i64 %i.w
  store i32 %.val16.i, ptr %i.y, align 4, !noalias !88
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %.val16.i.1 = load i32, ptr %i.aa, align 4, !noalias !85, !noundef !3
  %i.ab = getelementptr [4 x i8], ptr %.sroa.55.0.copyload, i64 %i.w
  %i.ac = getelementptr i8, ptr %i.ab, i64 4
  store i32 %.val16.i.1, ptr %i.ac, align 4, !noalias !88
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.val16.i.2 = load i32, ptr %i.ae, align 4, !noalias !85, !noundef !3
  %i.af = getelementptr [4 x i8], ptr %.sroa.55.0.copyload, i64 %i.w
  %i.ag = getelementptr i8, ptr %i.af, i64 8
  store i32 %.val16.i.2, ptr %i.ag, align 4, !noalias !88
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %.val16.i.3 = load i32, ptr %i.ai, align 4, !noalias !85, !noundef !3
  %i.aj = getelementptr [4 x i8], ptr %.sroa.55.0.copyload, i64 %i.w
  %i.ak = getelementptr i8, ptr %i.aj, i64 12
  store i32 %.val16.i.3, ptr %i.ak, align 4, !noalias !88
  %i.al = add i64 %i.w, 4                         ; 2 uses
  %i.am = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.an = icmp eq i64 %i.am, %i.e
  br i1 %i.an, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1W_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvB1Q_8for_each4callBQ_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4o_3VecBQ_E14extend_trustedINtNtB2I_6cloned6ClonedBF_EE0E0E0EBW_.exit, label %scalar.ph, !llvm.loop !100

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1W_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvB1Q_8for_each4callBQ_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4o_3VecBQ_E14extend_trustedINtNtB2I_6cloned6ClonedBF_EE0E0E0EBW_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.i, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.al, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.04.0.copyload, align 8, !noalias !85
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtNtCs98D8VPWzHuM_14regex_automata3dfa7onepassNtB5_15InternalBuilder10stack_push(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(128) %0, ptr noalias noundef nonnull align 8 dereferenceable(800) %1, i32 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 %2, ptr %i.d, align 4, !noalias !101
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  %i.e = zext i32 %2 to i64                       ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !104, !noundef !3 ; 2 uses
  %i.h = icmp ugt i64 %i.g, %i.e
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 504
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !104, !nonnull !3, !noundef !3
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.e ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !noalias !104, !noundef !3
  %i.m = zext i32 %i.l to i64                     ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 520 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !104, !noundef !3 ; 6 uses
  %i.p = icmp ugt i64 %i.o, %i.m
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.r = load i64, ptr %i.q, align 8              ; 5 uses
  br i1 %i.p, label %bb.d, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit.thread

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.e, i64 noundef %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #26, !noalias !104
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.s = icmp ugt i64 %i.r, %i.m
  br i1 %i.s, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
end_hunk_0
begin_hunk_1_@_RNvMsc_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDNtNtB7_7set_val9SetValZSTE10init_frontB1O_:bb.a

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.d
  %.sroa.013.0.lcssa = phi ptr [ %.sroa.013.015, %bb.d ], [ %.sroa.013.0.lcssa21.unr, %.lr.ph.prol.loopexit ], [ %.sroa.013.0.7, %.lr.ph ]
  store i64 1, ptr %0, align 8
  store ptr %.sroa.013.0.lcssa, ptr %i.c, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  br label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.013.017 = phi ptr [ %.sroa.013.0.7, %.lr.ph ], [ %.sroa.013.017.unr, %.lr.ph.prol.loopexit ]
  %.sroa.011.016 = phi i64 [ %i.u, %.lr.ph ], [ %.sroa.011.016.unr, %.lr.ph.prol.loopexit ]
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.013.017, i64 56
  %.sroa.013.0 = load ptr, ptr %i.m, align 8, !nonnull !3, !noundef !3
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 56
  %.sroa.013.0.1 = load ptr, ptr %i.n, align 8, !nonnull !3, !noundef !3
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.013.0.1, i64 56
  %.sroa.013.0.2 = load ptr, ptr %i.o, align 8, !nonnull !3, !noundef !3
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.013.0.2, i64 56
  %.sroa.013.0.3 = load ptr, ptr %i.p, align 8, !nonnull !3, !noundef !3
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.013.0.3, i64 56
  %.sroa.013.0.4 = load ptr, ptr %i.q, align 8, !nonnull !3, !noundef !3
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.013.0.4, i64 56
  %.sroa.013.0.5 = load ptr, ptr %i.r, align 8, !nonnull !3, !noundef !3
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.0.5, i64 56
  %.sroa.013.0.6 = load ptr, ptr %i.s, align 8, !nonnull !3, !noundef !3
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.013.0.6, i64 56
  %i.u = add i64 %.sroa.011.016, -8               ; 2 uses
  %.sroa.013.0.7 = load ptr, ptr %i.t, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef align 8 ptr @_RNvMsc_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDNtNtNtB1O_3dfa5accel5AccelE10init_frontB1O_(ptr noalias nofree noundef align 8 captures(ret: address, provenance) dereferenceable(64) %0) unnamed_addr #9 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !313, !noundef !3
  %i.b = trunc nuw i64 %i.a to i1                 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noundef !3
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0 = select i1 %i.b, ptr %i.e, ptr null
  ret ptr %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8, !noundef !3 ; 5 uses
  %.sroa.013.015 = load ptr, ptr %i.f, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %xtraiter = and i64 %i.h, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.013.017.prol = phi ptr [ %.sroa.013.0.prol, %.lr.ph.prol ], [ %.sroa.013.015, %.lr.ph.preheader ]
  %.sroa.011.016.prol = phi i64 [ %i.k, %.lr.ph.prol ], [ %i.h, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.013.017.prol, i64 144
  %i.k = add i64 %.sroa.011.016.prol, -1          ; 2 uses
  %.sroa.013.0.prol = load ptr, ptr %i.j, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !464

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.013.0.lcssa21.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %.sroa.013.0.prol, %.lr.ph.prol ]
  %.sroa.013.017.unr = phi ptr [ %.sroa.013.015, %.lr.ph.preheader ], [ %.sroa.013.0.prol, %.lr.ph.prol ]
  %.sroa.011.016.unr = phi i64 [ %i.h, %.lr.ph.preheader ], [ %i.k, %.lr.ph.prol ]
  %i.l = icmp ult i64 %i.h, 8
  br i1 %i.l, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.d
  %.sroa.013.0.lcssa = phi ptr [ %.sroa.013.015, %bb.d ], [ %.sroa.013.0.lcssa21.unr, %.lr.ph.prol.loopexit ], [ %.sroa.013.0.7, %.lr.ph ]
  store i64 1, ptr %0, align 8
  store ptr %.sroa.013.0.lcssa, ptr %i.c, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  br label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.013.017 = phi ptr [ %.sroa.013.0.7, %.lr.ph ], [ %.sroa.013.017.unr, %.lr.ph.prol.loopexit ]
  %.sroa.011.016 = phi i64 [ %i.u, %.lr.ph ], [ %.sroa.011.016.unr, %.lr.ph.prol.loopexit ]
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.013.017, i64 144
  %.sroa.013.0 = load ptr, ptr %i.m, align 8, !nonnull !3, !noundef !3
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 144
  %.sroa.013.0.1 = load ptr, ptr %i.n, align 8, !nonnull !3, !noundef !3
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.013.0.1, i64 144
  %.sroa.013.0.2 = load ptr, ptr %i.o, align 8, !nonnull !3, !noundef !3
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.013.0.2, i64 144
  %.sroa.013.0.3 = load ptr, ptr %i.p, align 8, !nonnull !3, !noundef !3
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.013.0.3, i64 144
  %.sroa.013.0.4 = load ptr, ptr %i.q, align 8, !nonnull !3, !noundef !3
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.013.0.4, i64 144
  %.sroa.013.0.5 = load ptr, ptr %i.r, align 8, !nonnull !3, !noundef !3
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.0.5, i64 144
  %.sroa.013.0.6 = load ptr, ptr %i.s, align 8, !nonnull !3, !noundef !3
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.013.0.6, i64 144
  %i.u = add i64 %.sroa.011.016, -8               ; 2 uses
  %.sroa.013.0.7 = load ptr, ptr %i.t, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef align 8 ptr @_RNvMsc_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDINtNtBb_3vec3VecNtB1K_9PatternIDEE10init_frontB1O_(ptr noalias nofree noundef align 8 captures(ret: address, provenance) dereferenceable(64) %0) unnamed_addr #9 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !313, !noundef !3
  %i.b = trunc nuw i64 %i.a to i1                 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noundef !3
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0 = select i1 %i.b, ptr %i.e, ptr null
  ret ptr %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8, !noundef !3 ; 5 uses
  %.sroa.013.015 = load ptr, ptr %i.f, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %xtraiter = and i64 %i.h, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.013.017.prol = phi ptr [ %.sroa.013.0.prol, %.lr.ph.prol ], [ %.sroa.013.015, %.lr.ph.preheader ]
  %.sroa.011.016.prol = phi i64 [ %i.k, %.lr.ph.prol ], [ %i.h, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.013.017.prol, i64 320
  %i.k = add i64 %.sroa.011.016.prol, -1          ; 2 uses
  %.sroa.013.0.prol = load ptr, ptr %i.j, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !465

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.013.0.lcssa21.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %.sroa.013.0.prol, %.lr.ph.prol ]
  %.sroa.013.017.unr = phi ptr [ %.sroa.013.015, %.lr.ph.preheader ], [ %.sroa.013.0.prol, %.lr.ph.prol ]
  %.sroa.011.016.unr = phi i64 [ %i.h, %.lr.ph.preheader ], [ %i.k, %.lr.ph.prol ]
  %i.l = icmp ult i64 %i.h, 8
  br i1 %i.l, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.d
  %.sroa.013.0.lcssa = phi ptr [ %.sroa.013.015, %bb.d ], [ %.sroa.013.0.lcssa21.unr, %.lr.ph.prol.loopexit ], [ %.sroa.013.0.7, %.lr.ph ]
  store i64 1, ptr %0, align 8
  store ptr %.sroa.013.0.lcssa, ptr %i.c, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  br label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.013.017 = phi ptr [ %.sroa.013.0.7, %.lr.ph ], [ %.sroa.013.017.unr, %.lr.ph.prol.loopexit ]
  %.sroa.011.016 = phi i64 [ %i.u, %.lr.ph ], [ %.sroa.011.016.unr, %.lr.ph.prol.loopexit ]
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.013.017, i64 320
  %.sroa.013.0 = load ptr, ptr %i.m, align 8, !nonnull !3, !noundef !3
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 320
  %.sroa.013.0.1 = load ptr, ptr %i.n, align 8, !nonnull !3, !noundef !3
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.013.0.1, i64 320
  %.sroa.013.0.2 = load ptr, ptr %i.o, align 8, !nonnull !3, !noundef !3
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.013.0.2, i64 320
  %.sroa.013.0.3 = load ptr, ptr %i.p, align 8, !nonnull !3, !noundef !3
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.013.0.3, i64 320
  %.sroa.013.0.4 = load ptr, ptr %i.q, align 8, !nonnull !3, !noundef !3
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.013.0.4, i64 320
  %.sroa.013.0.5 = load ptr, ptr %i.r, align 8, !nonnull !3, !noundef !3
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.0.5, i64 320
  %.sroa.013.0.6 = load ptr, ptr %i.s, align 8, !nonnull !3, !noundef !3
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.013.0.6, i64 320
  %i.u = add i64 %.sroa.011.016, -8               ; 2 uses
  %.sroa.013.0.7 = load ptr, ptr %i.t, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtNtCs98D8VPWzHuM_14regex_automata3dfa8remapper7onepassNtNtB6_7onepass3DFANtB4_10Remappable11swap_states(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(376) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !466)
  %i.a = zext i32 %1 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !466, !noundef !3
  %i.d = and i64 %i.c, 63                         ; 3 uses
  %i.e = shl i64 %i.a, %i.d                       ; 5 uses
  %i.f = zext i32 %2 to i64
  %i.g = shl i64 %i.f, %i.d                       ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !466, !nonnull !3, !noundef !3 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !466, !noundef !3 ; 5 uses
  %3 = tail call i64 @llvm.usub.sat.i64(i64 %i.k, i64 %i.e)
  %4 = tail call i64 @llvm.usub.sat.i64(i64 %i.k, i64 %i.g)
  %exitcond.not.i21.not = icmp ugt i64 %i.k, %i.e
  br i1 %exitcond.not.i21.not, label %.lr.ph, label %._crit_edge

bb.b:                                             ; preds = %bb.c
  %i.l = add i64 %i.q, 1
  %i.m = add nuw i64 %i.q, %i.e                   ; 2 uses
  %i.n = add nuw i64 %i.q, %i.g
  %exitcond.not.i = icmp eq i64 %i.q, %3
  br i1 %exitcond.not.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.o = phi i64 [ %i.n, %bb.b ], [ %i.g, %bb.a ] ; 2 uses
  %i.p = phi i64 [ %i.m, %bb.b ], [ %i.e, %bb.a ]
  %i.q = phi i64 [ %i.l, %bb.b ], [ 1, %bb.a ]    ; 6 uses
  %.sroa.01.013.i22 = phi i64 [ %i.q, %bb.b ], [ 0, %bb.a ]
  %exitcond20.not.i = icmp eq i64 %.sroa.01.013.i22, %4
  br i1 %exitcond20.not.i, label %bb.d, label %bb.c

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.lcssa18 = phi i64 [ %i.e, %bb.a ], [ %i.m, %bb.b ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa18, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #26, !noalias !466
  unreachable

bb.c:                                             ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.p ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.o ; 2 uses
  %.sroa.03.0.copyload.i = load i64, ptr %i.r, align 8, !noalias !466
  %i.t = load i64, ptr %i.s, align 8, !noalias !466
  store i64 %i.t, ptr %i.r, align 8, !noalias !466
  store i64 %.sroa.03.0.copyload.i, ptr %i.s, align 8, !noalias !466
  %.sroa.01.0.highbits.i = lshr i64 %i.q, %i.d
  %i.u = icmp eq i64 %.sroa.01.0.highbits.i, 0
  br i1 %i.u, label %bb.b, label %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata3dfa7onepassNtB5_3DFA11swap_states.exit

bb.d:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.o, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #26, !noalias !466
  unreachable

_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata3dfa7onepassNtB5_3DFA11swap_states.exit: ; preds = %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_7LookSetNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = load i32, ptr %0, align 4, !noundef !3   ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.a, label %.preheader

.preheader:                                       ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !3
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !3, !align !395
  br label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit.i

bb.a:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit
  %i.h = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !3, !align !395, !noundef !3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !invariant.load !3, !nonnull !3
  %i.m = tail call noundef zeroext i1 %i.l(ptr noundef nonnull %i.h, ptr noalias noundef nonnull readonly captures(address, read_provenance) @79, i64 noundef 3)
  br label %.loopexit

.loopexit:                                        ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit.i, %switch.lookup, %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ %i.m, %bb.a ], [ false, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit.i ], [ false, %bb.b ], [ true, %switch.lookup ]
  ret i1 %.sroa.0.0

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit.i: ; preds = %.preheader, %bb.b
  %.sroa.0.03438 = phi i32 [ %i.c, %.preheader ], [ %i.u, %bb.b ] ; 2 uses
  %i.n = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.0.03438, i1 true) ; 2 uses
  %i.o = icmp samesign ult i32 %i.n, 18
  br i1 %i.o, label %switch.lookup, label %.loopexit

switch.lookup:                                    ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit.i
  %i.p = zext nneg i32 %i.n to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._RNvXs0_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_7LookSetNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, i64 %i.p
  %switch.load = load i32, ptr %switch.gep, align 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.q = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 range(i32 1, 131073) %switch.load, i1 true)
  %i.r = zext nneg i32 %i.q to i64
  %switch.gep41 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._RNvXs0_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_7LookSetNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.37, i64 %i.r
  %switch.load42 = load i32, ptr %switch.gep41, align 4
  store i32 %switch.load42, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  store ptr @_RNvXsk_NtCs4NRVxsYgnAr_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.417.0..sroa_idx, align 8
  %i.s = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @80, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.s, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %switch.lookup
  %i.t = xor i32 %switch.load, -1
  %i.u = and i32 %.sroa.0.03438, %i.t             ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %.loopexit, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtNtCs98D8VPWzHuM_14regex_automata4util5startNtB5_12StartByteMapNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(256) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !align !395, !noundef !3 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !invariant.load !3, !nonnull !3 ; 3 uses
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 13)
  br i1 %i.i, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.f
  %.sroa.6.077 = phi i8 [ 0, %.preheader ], [ %.sroa.6.1.ph74, %bb.f ] ; 5 uses
  %i.k = icmp eq i8 %.sroa.6.077, -1              ; 2 uses
  br i1 %i.k, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = add nuw i8 %.sroa.6.077, 1
  %.not = icmp eq i8 %.sroa.6.077, 0
  br i1 %.not, label %bb.e, label %.thread

bb.d:                                             ; preds = %bb.f
  %i.m = call noundef zeroext i1 %i.h(ptr noundef nonnull %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) @82, i64 noundef 1)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %.thread, %bb.d, %bb.a
  %.sroa.0.0 = phi i1 [ %i.m, %bb.d ], [ true, %bb.a ], [ true, %.thread ], [ true, %bb.e ]
  ret i1 %.sroa.0.0

bb.e:                                             ; preds = %.thread, %bb.c
  %.sroa.6.1.ph74 = phi i8 [ %.sroa.6.1.ph73, %.thread ], [ 1, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.n = zext i8 %.sroa.6.077 to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !range !469, !noundef !3
  store i8 %i.p, ptr %i.c, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %.sroa.6.077, ptr %i.b, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  store ptr @_RNvXNtNtCs98D8VPWzHuM_14regex_automata4util6escapeNtB2_9DebugByteNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.433.0..sroa_idx, align 8
  store ptr %i.c, ptr %i.j, align 8
  store ptr @_RNvXs8_NtNtCs98D8VPWzHuM_14regex_automata4util5startNtB5_5StartNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.437.0..sroa_idx, align 8
  %i.q = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, ptr noundef nonnull @76, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.q, label %.loopexit, label %bb.f

.thread:                                          ; preds = %bb.b, %bb.c
  %.sroa.6.1.ph73 = phi i8 [ %i.l, %bb.c ], [ -1, %bb.b ]
  %i.r = call noundef zeroext i1 %i.h(ptr noundef nonnull %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 2)
  br i1 %i.r, label %.loopexit, label %bb.e

bb.f:                                             ; preds = %bb.e
  br i1 %i.k, label %bb.d, label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1K_NtNtCs98D8VPWzHuM_14regex_automata4util10primitivesNtB6_12StateIDErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @84, i64 noundef 12, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @83)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid2idNtB5_16LazyStateIDErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load i64, ptr %0, align 8, !noundef !3
  store i64 %i.c, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsX_NtNtCs4NRVxsYgnAr_4core3fmt3numyNtB7_5Debug3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @85, ptr %i.d, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.47.0..sroa_idx, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !3, !align !395, !noundef !3
  %i.h = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @86, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRAbj100_NtB6_5Debug3fmtCs98D8VPWzHuM_14regex_automata(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.b = tail call noundef zeroext i1 @_RNvXsa_NtCs4NRVxsYgnAr_4core5arrayAbj100_NtNtB7_3fmt5Debug3fmtCs98D8VPWzHuM_14regex_automata(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(256) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCsiVHPhtDv1FH_6memchr3cow3ImpNtB6_5Debug3fmtCs98D8VPWzHuM_14regex_automata(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
end_hunk_1
