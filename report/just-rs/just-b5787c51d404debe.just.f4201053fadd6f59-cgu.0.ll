Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/just-b5787c51d404debe.just.f4201053fadd6f59-cgu.0?download=true
inline.NumInlined: 27272
inline.NumDeleted: 11238
loop-unroll.NumCompletelyUnrolled: 122
loop-unroll.NumRuntimeUnrolled: 664
loop-unroll.NumUnrolled: 789
begin_hunk_0_@_RINvNtNtCsj6eKBz9Db1c_4core5slice3cmp13chaining_implNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralNtNtB6_3cmp8OrderingNtNtB6_7convert10InfallibleNCNvXs7_B2_BO_NtB2_8SliceOrd7compare0NCB2t_s_0EBS_:bb.a
  ]

default.unreachable:                              ; preds = %bb.e, %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 97
  %i.x = load i8, ptr %i.w, align 1, !range !38, !alias.scope !21552, !noundef !28 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 97
  %i.z = load i8, ptr %i.y, align 1, !range !38, !alias.scope !21553, !noundef !28 ; 2 uses
  %i.aa = icmp eq i8 %i.x, %i.z
  br i1 %i.aa, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.e, %bb.b
  br label %_RNCNvXs7_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralNtB7_8SliceOrd7compare0BI_.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.ad = load i8, ptr %i.ac, align 8, !range !40, !alias.scope !21552, !noundef !28
  %i.ae = load i8, ptr %i.ab, align 8, !range !40, !alias.scope !21553, !noundef !28
  %i.af = sub nsw i8 %i.ad, %i.ae                 ; 2 uses
  switch i8 %i.af, label %default.unreachable [
    i8 -1, label %_RNCNvXs7_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralNtB7_8SliceOrd7compare0BI_.exit.thread
    i8 0, label %bb.g
    i8 1, label %bb.d
  ]

bb.f:                                             ; preds = %bb.c
  %i.ag = tail call i8 @llvm.ucmp.i8.i8(i8 %i.x, i8 %i.z)
  br label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit.i

bb.g:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 99
  %i.ai = load i8, ptr %i.ah, align 1, !range !111, !alias.scope !21552, !noundef !28 ; 3 uses
  %.not.i.i = icmp eq i8 %i.ai, -1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 99
  %i.ak = load i8, ptr %i.aj, align 1, !range !111, !alias.scope !21553, !noundef !28 ; 3 uses
  %.not14.i.i = icmp eq i8 %i.ak, -1              ; 2 uses
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %.not14.i.i, label %_RNCNvXs7_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralNtB7_8SliceOrd7compare0BI_.exit.thread, label %bb.k

bb.i:                                             ; preds = %bb.g
  br i1 %.not14.i.i, label %bb.j, label %_RNCNvXs7_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralNtB7_8SliceOrd7compare0BI_.exit.thread

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.an = tail call fastcc noundef i8 @_RNvXs7_NtCskXtk6F4WjxZ_4just5tokenNtB5_5TokenNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.al, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.am) #75
  br label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit.i

bb.k:                                             ; preds = %bb.h
  %i.ao = tail call i8 @llvm.ucmp.i8.i8(i8 %i.ai, i8 %i.ak)
  %i.ap = icmp eq i8 %i.ai, %i.ak
  br i1 %i.ap, label %bb.j, label %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit.i

_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit.i: ; preds = %bb.k, %bb.j, %bb.f, %.lr.ph
  %.sroa.0.0.i.i = phi i8 [ %i.p, %.lr.ph ], [ %i.ag, %bb.f ], [ %i.an, %bb.j ], [ %i.ao, %bb.k ]
  %.sroa.0.0.i.fr.i = freeze i8 %.sroa.0.0.i.i    ; 2 uses
  switch i8 %.sroa.0.0.i.fr.i, label %_RNCNvXs7_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralNtB7_8SliceOrd7compare0BI_.exit.thread [
    i8 0, label %_RNCNvXs7_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralNtB7_8SliceOrd7compare0BI_.exit.thread17
    i8 -2, label %_RNCNvXs7_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralNtB7_8SliceOrd7compare0BI_.exit.thread17
  ]

_RNCNvXs7_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralNtB7_8SliceOrd7compare0BI_.exit.thread17: ; preds = %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit.i, %_RNvXs4_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit.i
  %i.aq = add nuw nsw i64 %.sroa.01.019, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.aq, %..i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 2) i8 @_RINvNtNtCsj6eKBz9Db1c_4core5slice3cmp13chaining_implTNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtNtBT_14string_literal13StringLiteralENtNtB6_3cmp8OrderingNtNtB6_7convert10InfallibleNCNvXs7_B2_BO_NtB2_8SliceOrd7compare0NCB30_s_0EBT_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) %0, i64 noundef range(i64 0, 39755913951960241) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %2, i64 noundef range(i64 0, 39755913951960241) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %3, i64 %1) ; 2 uses
  %.not = icmp eq i64 %..i, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %_RNvXsd_NtCsj6eKBz9Db1c_4core5tupleTNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtNtBB_14string_literal13StringLiteralENtNtB7_3cmp3Ord3cmpBB_.exit
  %i.a = add nuw nsw i64 %.sroa.01.019, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.a, %..i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.b = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %1, i64 %3)
  br label %_RNvXsd_NtCsj6eKBz9Db1c_4core5tupleTNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtNtBB_14string_literal13StringLiteralENtNtB7_3cmp3Ord3cmpBB_.exit.thread

_RNvXsd_NtCsj6eKBz9Db1c_4core5tupleTNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtNtBB_14string_literal13StringLiteralENtNtB7_3cmp3Ord3cmpBB_.exit.thread: ; preds = %bb.j, %bb.g, %bb.k, %bb.d, %_RNvXsd_NtCsj6eKBz9Db1c_4core5tupleTNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtNtBB_14string_literal13StringLiteralENtNtB7_3cmp3Ord3cmpBB_.exit, %bb.f, %._crit_edge
  %.sroa.0.0 = phi i8 [ %i.b, %._crit_edge ], [ 1, %bb.f ], [ %i.y, %bb.d ], [ -1, %bb.k ], [ %i.ai, %bb.g ], [ 1, %bb.j ], [ %.sroa.0.0.i, %_RNvXsd_NtCsj6eKBz9Db1c_4core5tupleTNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtNtBB_14string_literal13StringLiteralENtNtB7_3cmp3Ord3cmpBB_.exit ]
  ret i8 %.sroa.0.0

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.019 = phi i64 [ %i.a, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw [232 x i8], ptr %0, i64 %.sroa.01.019 ; 8 uses
  %i.d = getelementptr inbounds nuw [232 x i8], ptr %2, i64 %.sroa.01.019 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21562)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21563)
  %i.e = tail call fastcc noundef i8 @_RNvXs6_NtCskXtk6F4WjxZ_4just10expressionNtB5_10ExpressionNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %i.d) #75, !inline_history !21558 ; 2 uses
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %_RNvXsd_NtCsj6eKBz9Db1c_4core5tupleTNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtNtBB_14string_literal13StringLiteralENtNtB7_3cmp3Ord3cmpBB_.exit

bb.c:                                             ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21564)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21565)
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !21566, !nonnull !28, !noundef !28
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !21566, !noundef !28 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !21567, !nonnull !28, !noundef !28
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !21567, !noundef !28 ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 %i.n)
  %i.o = tail call i32 @memcmp(ptr nonnull %i.h, ptr nonnull %i.l, i64 %spec.store.select.i.i), !noalias !21568, !inline_history !21558 ; 2 uses
  %i.p = sext i32 %i.o to i64
  %i.q = icmp eq i32 %i.o, 0
  %i.r = sub i64 %i.j, %i.n
  %spec.select.i.i = select i1 %i.q, i64 %i.r, i64 %i.p ; 2 uses
  %i.s = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i, i64 0)
  %i.t = icmp eq i64 %spec.select.i.i, 0
  br i1 %i.t, label %bb.d, label %_RNvXsd_NtCsj6eKBz9Db1c_4core5tupleTNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtNtBB_14string_literal13StringLiteralENtNtB7_3cmp3Ord3cmpBB_.exit

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 226
  %i.v = load i8, ptr %i.u, align 2, !range !40, !alias.scope !21566, !noundef !28
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 226
  %i.x = load i8, ptr %i.w, align 2, !range !40, !alias.scope !21567, !noundef !28
  %i.y = sub nsw i8 %i.v, %i.x                    ; 2 uses
  switch i8 %i.y, label %default.unreachable [
    i8 -1, label %_RNvXsd_NtCsj6eKBz9Db1c_4core5tupleTNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtNtBB_14string_literal13StringLiteralENtNtB7_3cmp3Ord3cmpBB_.exit.thread
    i8 0, label %bb.e
    i8 1, label %bb.f
  ]

default.unreachable:                              ; preds = %bb.g, %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 225
  %i.aa = load i8, ptr %i.z, align 1, !range !38, !alias.scope !21566, !noundef !28 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 225
  %i.ac = load i8, ptr %i.ab, align 1, !range !38, !alias.scope !21567, !noundef !28 ; 2 uses
  %i.ad = icmp eq i8 %i.aa, %i.ac
  br i1 %i.ad, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.g, %bb.d
  br label %_RNvXsd_NtCsj6eKBz9Db1c_4core5tupleTNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtNtBB_14string_literal13StringLiteralENtNtB7_3cmp3Ord3cmpBB_.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %i.ag = load i8, ptr %i.af, align 8, !range !40, !alias.scope !21566, !noundef !28
  %i.ah = load i8, ptr %i.ae, align 8, !range !40, !alias.scope !21567, !noundef !28
  %i.ai = sub nsw i8 %i.ag, %i.ah                 ; 2 uses
  switch i8 %i.ai, label %default.unreachable [
    i8 -1, label %_RNvXsd_NtCsj6eKBz9Db1c_4core5tupleTNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtNtBB_14string_literal13StringLiteralENtNtB7_3cmp3Ord3cmpBB_.exit.thread
    i8 0, label %bb.i
    i8 1, label %bb.f
  ]

bb.h:                                             ; preds = %bb.e
  %i.aj = tail call i8 @llvm.ucmp.i8.i8(i8 %i.aa, i8 %i.ac)
  br label %_RNvXsd_NtCsj6eKBz9Db1c_4core5tupleTNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtNtBB_14string_literal13StringLiteralENtNtB7_3cmp3Ord3cmpBB_.exit

bb.i:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 227
  %i.al = load i8, ptr %i.ak, align 1, !range !111, !alias.scope !21566, !noundef !28 ; 3 uses
  %.not.i.i = icmp eq i8 %i.al, -1
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 227
  %i.an = load i8, ptr %i.am, align 1, !range !111, !alias.scope !21567, !noundef !28 ; 3 uses
  %.not14.i.i = icmp eq i8 %i.an, -1              ; 2 uses
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %.not14.i.i, label %_RNvXsd_NtCsj6eKBz9Db1c_4core5tupleTNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtNtBB_14string_literal13StringLiteralENtNtB7_3cmp3Ord3cmpBB_.exit.thread, label %bb.m

bb.k:                                             ; preds = %bb.i
  br i1 %.not14.i.i, label %bb.l, label %_RNvXsd_NtCsj6eKBz9Db1c_4core5tupleTNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtNtBB_14string_literal13StringLiteralENtNtB7_3cmp3Ord3cmpBB_.exit.thread

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %i.aq = tail call fastcc noundef i8 @_RNvXs7_NtCskXtk6F4WjxZ_4just5tokenNtB5_5TokenNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ao, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ap) #75, !inline_history !21558
  br label %_RNvXsd_NtCsj6eKBz9Db1c_4core5tupleTNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtNtBB_14string_literal13StringLiteralENtNtB7_3cmp3Ord3cmpBB_.exit

bb.m:                                             ; preds = %bb.j
  %i.ar = tail call i8 @llvm.ucmp.i8.i8(i8 %i.al, i8 %i.an)
  %i.as = icmp eq i8 %i.al, %i.an
  br i1 %i.as, label %bb.l, label %_RNvXsd_NtCsj6eKBz9Db1c_4core5tupleTNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtNtBB_14string_literal13StringLiteralENtNtB7_3cmp3Ord3cmpBB_.exit

_RNvXsd_NtCsj6eKBz9Db1c_4core5tupleTNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtNtBB_14string_literal13StringLiteralENtNtB7_3cmp3Ord3cmpBB_.exit: ; preds = %bb.c, %bb.h, %bb.l, %bb.m, %.lr.ph
  %.sroa.0.0.i = phi i8 [ %i.e, %.lr.ph ], [ %i.s, %bb.c ], [ %i.aj, %bb.h ], [ %i.aq, %bb.l ], [ %i.ar, %bb.m ] ; 2 uses
  %i.at = icmp eq i8 %.sroa.0.0.i, 0
  br i1 %i.at, label %bb.b, label %_RNvXsd_NtCsj6eKBz9Db1c_4core5tupleTNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtNtBB_14string_literal13StringLiteralENtNtB7_3cmp3Ord3cmpBB_.exit.thread
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal fastcc void @_RINvNtNtCskpFEDU8Hp5a_8chacha208backends4avx29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(256) %1) unnamed_addr #12 personality ptr @rust_eh_personality {
.preheader.preheader:
  %.sroa.0.0.copyload.i121 = load <4 x i32>, ptr %0, align 4, !noalias !21581
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i18122 = load <4 x i32>, ptr %i.a, align 4, !noalias !21582
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i19123 = load <4 x i32>, ptr %i.b, align 4, !noalias !21583
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i20 = load <2 x i64>, ptr %i.c, align 4, !noalias !21584
  %i.d = shufflevector <2 x i64> %.sroa.0.0.copyload.i20, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.e = add <4 x i64> %i.d, <i64 0, i64 0, i64 1, i64 0> ; 2 uses
  %i.f = add <4 x i64> %i.d, <i64 2, i64 0, i64 3, i64 0> ; 2 uses
  %.cast = shufflevector <4 x i32> %.sroa.0.0.copyload.i19123, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %2 = shufflevector <4 x i32> %.sroa.0.0.copyload.i18122, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %3 = shufflevector <4 x i32> %.sroa.0.0.copyload.i121, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 4 uses
  br label %bb.a

bb.a:                                             ; preds = %bb.a, %.preheader.preheader
  %.sroa.46.0.i = phi <4 x i64> [ %i.f, %.preheader.preheader ], [ %11, %bb.a ]
  %.sroa.19.0.i = phi <4 x i64> [ %i.e, %.preheader.preheader ], [ %9, %bb.a ]
  %.sroa.023.062.i = phi i64 [ 0, %.preheader.preheader ], [ %i.m, %bb.a ]
  %i.g = phi <8 x i32> [ %3, %.preheader.preheader ], [ %i.ce, %bb.a ]
  %i.h = phi <8 x i32> [ %2, %.preheader.preheader ], [ %i.by, %bb.a ] ; 2 uses
  %i.i = phi <8 x i32> [ %3, %.preheader.preheader ], [ %i.cg, %bb.a ]
  %i.j = phi <8 x i32> [ %2, %.preheader.preheader ], [ %i.cc, %bb.a ] ; 2 uses
  %i.k = phi <8 x i32> [ %.cast, %.preheader.preheader ], [ %i.cd, %bb.a ]
  %i.l = phi <8 x i32> [ %.cast, %.preheader.preheader ], [ %i.cf, %bb.a ]
  %i.m = add nuw nsw i64 %.sroa.023.062.i, 1      ; 2 uses
  %i.n = add <8 x i32> %i.h, %i.g                 ; 2 uses
  %i.o = bitcast <8 x i32> %i.n to <4 x i64>
  %i.p = xor <4 x i64> %.sroa.19.0.i, %i.o
  %i.q = bitcast <4 x i64> %i.p to <32 x i8>
  %i.r = shufflevector <32 x i8> %i.q, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29> ; 2 uses
  %i.s = add <8 x i32> %i.j, %i.i                 ; 2 uses
  %i.t = bitcast <8 x i32> %i.s to <4 x i64>
  %i.u = xor <4 x i64> %.sroa.46.0.i, %i.t
  %i.v = bitcast <4 x i64> %i.u to <32 x i8>
  %i.w = shufflevector <32 x i8> %i.v, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29> ; 2 uses
  %i.x = bitcast <32 x i8> %i.r to <8 x i32>
  %i.y = add <8 x i32> %i.k, %i.x                 ; 2 uses
  %i.z = xor <8 x i32> %i.y, %i.h                 ; 2 uses
  %i.aa = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.z, <8 x i32> %i.z, <8 x i32> splat (i32 12)) ; 2 uses
  %i.ab = bitcast <32 x i8> %i.w to <8 x i32>
  %i.ac = add <8 x i32> %i.l, %i.ab               ; 2 uses
  %i.ad = xor <8 x i32> %i.ac, %i.j               ; 2 uses
  %i.ae = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.ad, <8 x i32> %i.ad, <8 x i32> splat (i32 12)) ; 2 uses
  %i.af = add <8 x i32> %i.aa, %i.n               ; 2 uses
  %i.ag = bitcast <8 x i32> %i.af to <32 x i8>
  %i.ah = xor <32 x i8> %i.r, %i.ag
  %i.ai = shufflevector <32 x i8> %i.ah, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30>
  %i.aj = add <8 x i32> %i.ae, %i.s               ; 2 uses
  %i.ak = bitcast <8 x i32> %i.aj to <32 x i8>
  %i.al = xor <32 x i8> %i.w, %i.ak
  %i.am = shufflevector <32 x i8> %i.al, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30>
  %i.an = bitcast <32 x i8> %i.ai to <8 x i32>    ; 2 uses
  %i.ao = add <8 x i32> %i.y, %i.an               ; 2 uses
  %i.ap = xor <8 x i32> %i.ao, %i.aa              ; 2 uses
  %i.aq = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.ap, <8 x i32> %i.ap, <8 x i32> splat (i32 7)) ; 2 uses
  %i.ar = bitcast <32 x i8> %i.am to <8 x i32>    ; 2 uses
  %i.as = add <8 x i32> %i.ac, %i.ar              ; 2 uses
  %i.at = xor <8 x i32> %i.as, %i.ae              ; 2 uses
  %i.au = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.at, <8 x i32> %i.at, <8 x i32> splat (i32 7)) ; 2 uses
  %i.av = shufflevector <8 x i32> %i.ao, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>
  %4 = shufflevector <8 x i32> %i.an, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5>
  %i.aw = shufflevector <8 x i32> %i.af, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6>
  %i.ax = shufflevector <8 x i32> %i.as, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>
  %5 = shufflevector <8 x i32> %i.ar, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5>
  %i.ay = shufflevector <8 x i32> %i.aj, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6>
  %i.az = add <8 x i32> %i.aq, %i.aw              ; 2 uses
  %6 = xor <8 x i32> %i.az, %4
  %i.ba = bitcast <8 x i32> %6 to <32 x i8>
  %i.bb = shufflevector <32 x i8> %i.ba, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29> ; 2 uses
  %i.bc = add <8 x i32> %i.au, %i.ay              ; 2 uses
  %7 = xor <8 x i32> %i.bc, %5
  %i.bd = bitcast <8 x i32> %7 to <32 x i8>
  %i.be = shufflevector <32 x i8> %i.bd, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29> ; 2 uses
  %i.bf = bitcast <32 x i8> %i.bb to <8 x i32>
  %i.bg = add <8 x i32> %i.av, %i.bf              ; 2 uses
  %i.bh = xor <8 x i32> %i.bg, %i.aq              ; 2 uses
  %i.bi = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.bh, <8 x i32> %i.bh, <8 x i32> splat (i32 12)) ; 2 uses
  %i.bj = bitcast <32 x i8> %i.be to <8 x i32>
  %i.bk = add <8 x i32> %i.ax, %i.bj              ; 2 uses
  %i.bl = xor <8 x i32> %i.bk, %i.au              ; 2 uses
  %i.bm = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.bl, <8 x i32> %i.bl, <8 x i32> splat (i32 12)) ; 2 uses
  %i.bn = add <8 x i32> %i.bi, %i.az              ; 2 uses
  %i.bo = bitcast <8 x i32> %i.bn to <32 x i8>
  %i.bp = xor <32 x i8> %i.bb, %i.bo
  %i.bq = shufflevector <32 x i8> %i.bp, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30>
  %i.br = add <8 x i32> %i.bm, %i.bc              ; 2 uses
  %i.bs = bitcast <8 x i32> %i.br to <32 x i8>
  %i.bt = xor <32 x i8> %i.be, %i.bs
  %i.bu = shufflevector <32 x i8> %i.bt, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30>
  %i.bv = bitcast <32 x i8> %i.bq to <8 x i32>    ; 2 uses
  %i.bw = add <8 x i32> %i.bg, %i.bv              ; 2 uses
  %i.bx = xor <8 x i32> %i.bw, %i.bi              ; 2 uses
  %i.by = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.bx, <8 x i32> %i.bx, <8 x i32> splat (i32 7)) ; 2 uses
  %i.bz = bitcast <32 x i8> %i.bu to <8 x i32>    ; 2 uses
  %i.ca = add <8 x i32> %i.bk, %i.bz              ; 2 uses
  %i.cb = xor <8 x i32> %i.ca, %i.bm              ; 2 uses
  %i.cc = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.cb, <8 x i32> %i.cb, <8 x i32> splat (i32 7)) ; 2 uses
  %i.cd = shufflevector <8 x i32> %i.bw, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6> ; 2 uses
  %8 = shufflevector <8 x i32> %i.bv, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5> ; 2 uses
  %9 = bitcast <8 x i32> %8 to <4 x i64>
  %i.ce = shufflevector <8 x i32> %i.bn, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4> ; 2 uses
  %i.cf = shufflevector <8 x i32> %i.ca, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6> ; 2 uses
  %10 = shufflevector <8 x i32> %i.bz, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5> ; 2 uses
  %11 = bitcast <8 x i32> %10 to <4 x i64>
  %i.cg = shufflevector <8 x i32> %i.br, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4> ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.m, 6
  br i1 %exitcond.not.i, label %_RNvMNtNtCskpFEDU8Hp5a_8chacha208backends4avx2INtB2_7BackendNtB6_3R12NtNtB6_8variants6LegacyE21rng_gen_par_ks_blocksCskXtk6F4WjxZ_4just.exit, label %bb.a

_RNvMNtNtCskpFEDU8Hp5a_8chacha208backends4avx2INtB2_7BackendNtB6_3R12NtNtB6_8variants6LegacyE21rng_gen_par_ks_blocksCskXtk6F4WjxZ_4just.exit: ; preds = %bb.a
  %i.ch = bitcast <4 x i64> %i.f to <8 x i32>
  %i.ci = add <8 x i32> %10, %i.ch                ; 2 uses
  %i.cj = add <8 x i32> %i.cf, %.cast             ; 2 uses
  %i.ck = add <8 x i32> %i.cc, %2                 ; 2 uses
  %i.cl = add <8 x i32> %i.cg, %3                 ; 2 uses
  %i.cm = bitcast <4 x i64> %i.e to <8 x i32>
  %i.cn = add <8 x i32> %8, %i.cm                 ; 2 uses
  %i.co = add <8 x i32> %i.cd, %.cast             ; 2 uses
  %i.cp = add <8 x i32> %i.by, %2                 ; 2 uses
  %i.cq = add <8 x i32> %i.ce, %3                 ; 2 uses
  %.sroa.2.32.vec.extract = shufflevector <8 x i32> %i.cq, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.2.48.vec.extract = shufflevector <8 x i32> %i.cq, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.5.64.vec.extract = shufflevector <8 x i32> %i.cp, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.5.80.vec.extract = shufflevector <8 x i32> %i.cp, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.8.96.vec.extract = shufflevector <8 x i32> %i.co, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.8.112.vec.extract = shufflevector <8 x i32> %i.co, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.11.128.vec.extract = shufflevector <8 x i32> %i.cn, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.11.144.vec.extract = shufflevector <8 x i32> %i.cn, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %.sroa.2.32.vec.extract, ptr %1, align 4, !noalias !21585
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 64
  store <4 x i32> %.sroa.2.48.vec.extract, ptr %i.cr, align 4, !noalias !21586
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <4 x i32> %.sroa.5.64.vec.extract, ptr %i.cs, align 4, !noalias !21585
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 80
  store <4 x i32> %.sroa.5.80.vec.extract, ptr %i.ct, align 4, !noalias !21586
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 32
  store <4 x i32> %.sroa.8.96.vec.extract, ptr %i.cu, align 4, !noalias !21585
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 96
  store <4 x i32> %.sroa.8.112.vec.extract, ptr %i.cv, align 4, !noalias !21586
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 48
  store <4 x i32> %.sroa.11.128.vec.extract, ptr %i.cw, align 4, !noalias !21585
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 112
  store <4 x i32> %.sroa.11.144.vec.extract, ptr %i.cx, align 4, !noalias !21586
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.sroa.14.160.vec.extract = shufflevector <8 x i32> %i.cl, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.14.176.vec.extract = shufflevector <8 x i32> %i.cl, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.17.192.vec.extract = shufflevector <8 x i32> %i.ck, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.17.208.vec.extract = shufflevector <8 x i32> %i.ck, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.20.224.vec.extract = shufflevector <8 x i32> %i.cj, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.20.240.vec.extract = shufflevector <8 x i32> %i.cj, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.23.256.vec.extract = shufflevector <8 x i32> %i.ci, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.23.272.vec.extract = shufflevector <8 x i32> %i.ci, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %.sroa.14.160.vec.extract, ptr %i.cy, align 4, !noalias !21585
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 192
  store <4 x i32> %.sroa.14.176.vec.extract, ptr %i.cz, align 4, !noalias !21586
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 144
  store <4 x i32> %.sroa.17.192.vec.extract, ptr %i.da, align 4, !noalias !21585
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 208
  store <4 x i32> %.sroa.17.208.vec.extract, ptr %i.db, align 4, !noalias !21586
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 160
  store <4 x i32> %.sroa.20.224.vec.extract, ptr %i.dc, align 4, !noalias !21585
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 224
  store <4 x i32> %.sroa.20.240.vec.extract, ptr %i.dd, align 4, !noalias !21586
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 176
  store <4 x i32> %.sroa.23.256.vec.extract, ptr %i.de, align 4, !noalias !21585
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 240
  store <4 x i32> %.sroa.23.272.vec.extract, ptr %i.df, align 4, !noalias !21586
  %i.dg = add <4 x i64> %i.d, <i64 4, i64 poison, i64 poison, i64 poison>
  %12 = bitcast <4 x i64> %i.dg to <8 x i32>
  %13 = shufflevector <8 x i32> %12, <8 x i32> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i32> %13, ptr %i.c, align 4
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable14driftsort_mainNtNtCsaKJjC64KgbL_3std4path7PathBufNvYBZ_NtNtB8_3cmp10PartialOrd2ltINtNtCs4wP2HXfJTCR_5alloc3vec3VecBZ_EECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [4096 x i8], align 8              ; 3 uses
  %i.c = lshr i64 %1, 1
  %i.d = sub nuw nsw i64 %1, %i.c
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 333333)
  %..i8 = tail call noundef i64 @llvm.umax.i64(i64 %..i, i64 %i.d) ; 2 uses
  %..i9 = tail call noundef i64 @llvm.umax.i64(i64 %..i8, i64 48) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = icmp samesign ult i64 %..i8, 171         ; 3 uses
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = mul nuw nsw i64 %..i9, 24                ; 2 uses
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #69, !noalias !21593
  %i.g = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.f, i64 noundef range(i64 1, 9) 8) #69, !noalias !21593 ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.noexc, label %bb.d

.noexc:                                           ; preds = %bb.b
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.f) #70
  unreachable

bb.c:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  br i1 %i.e, label %bb.h, label %bb.i

bb.d:                                             ; preds = %bb.b
  store i64 %..i9, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.j = phi ptr [ undef, %bb.a ], [ %i.g, %bb.d ]
  %.sroa.4.0 = phi i64 [ 170, %bb.a ], [ %..i9, %bb.d ]
  %.pn14 = phi ptr [ %i.b, %bb.a ], [ %i.g, %bb.d ]
  %i.k = icmp samesign ult i64 %1, 65
  invoke fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift4sortNtNtCsaKJjC64KgbL_3std4path7PathBufNvYBW_NtNtBa_3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef nonnull align 8 %.pn14, i64 noundef %.sroa.4.0, i1 noundef zeroext %i.k, ptr noalias nofree noundef nonnull %2)
          to label %bb.f unwind label %bb.c

bb.f:                                             ; preds = %bb.e
  br i1 %i.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit, label %bb.g

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.g:                                             ; preds = %bb.f
  %i.l = mul nuw nsw i64 %..i9, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #69, !noalias !21594
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit

bb.h:                                             ; preds = %bb.i, %bb.c
  resume { ptr, i32 } %i.i

bb.i:                                             ; preds = %bb.c
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #71
  br label %bb.h
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable14driftsort_mainNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNvYBZ_NtNtB8_3cmp10PartialOrd2ltINtNtCs4wP2HXfJTCR_5alloc3vec3VecBZ_EEB13_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [4096 x i8], align 8              ; 3 uses
  %i.c = lshr i64 %1, 1
  %i.d = sub nuw nsw i64 %1, %i.c
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 250000)
  %..i8 = tail call noundef i64 @llvm.umax.i64(i64 %..i, i64 %i.d) ; 2 uses
  %..i9 = tail call noundef i64 @llvm.umax.i64(i64 %..i8, i64 48) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = icmp samesign ugt i64 %..i8, 128         ; 3 uses
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = shl nuw nsw i64 %..i9, 5                 ; 2 uses
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #69, !noalias !21601
  %i.g = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.f, i64 noundef range(i64 1, 9) 8) #69, !noalias !21601 ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.noexc, label %bb.d

.noexc:                                           ; preds = %bb.b
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.f) #70
  unreachable

bb.c:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  br i1 %i.e, label %bb.i, label %bb.h

bb.d:                                             ; preds = %bb.b
  store i64 %..i9, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.j = phi ptr [ undef, %bb.a ], [ %i.g, %bb.d ]
  %.sroa.4.0 = phi i64 [ 128, %bb.a ], [ %..i9, %bb.d ]
  %.pn14 = phi ptr [ %i.b, %bb.a ], [ %i.g, %bb.d ]
  %i.k = icmp samesign ult i64 %1, 65
  invoke fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift4sortNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNvYBW_NtNtBa_3cmp10PartialOrd2ltEB10_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef nonnull align 8 %.pn14, i64 noundef %.sroa.4.0, i1 noundef zeroext %i.k, ptr noalias nofree noundef nonnull %2)
          to label %bb.f unwind label %bb.c

bb.f:                                             ; preds = %bb.e
  br i1 %i.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathEEB1c_.exit, label %bb.g

bb.g:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathEEB1c_.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathEEB1c_.exit: ; preds = %bb.f
  %i.l = shl nuw nsw i64 %..i9, 5
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #69, !noalias !21602
  br label %bb.g

bb.h:                                             ; preds = %bb.i, %bb.c
  resume { ptr, i32 } %i.i

bb.i:                                             ; preds = %bb.c
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #71
  br label %bb.h
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable14driftsort_mainNtNtCskXtk6F4WjxZ_4just6signal6SignalNvYBZ_NtNtB8_3cmp10PartialOrd2ltINtNtCs4wP2HXfJTCR_5alloc3vec3VecBZ_EEB13_(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4096 x i8], align 4              ; 3 uses
  %i.b = lshr i64 %1, 1
  %i.c = sub nuw nsw i64 %1, %i.b
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 2000000)
  %..i11 = tail call noundef i64 @llvm.umax.i64(i64 %..i, i64 %i.c) ; 2 uses
  %..i12 = tail call noundef i64 @llvm.umax.i64(i64 %..i11, i64 48) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = icmp samesign ugt i64 %..i11, 1024       ; 3 uses
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = shl nuw nsw i64 %..i12, 2                ; 2 uses
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #69, !noalias !21607
  %i.f = tail call noundef align 4 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.e, i64 noundef range(i64 1, 9) 4) #69, !noalias !21607 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.noexc, label %bb.d

.noexc:                                           ; preds = %bb.b
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.e) #70
  unreachable

bb.c:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  br i1 %i.d, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just6signal6SignalEEB1c_.exit13, label %bb.g

bb.d:                                             ; preds = %bb.b, %bb.a
  %.sroa.6.1 = phi ptr [ undef, %bb.a ], [ %i.f, %bb.b ] ; 4 uses
  %.sroa.4.0 = phi i64 [ 1024, %bb.a ], [ %..i12, %bb.b ]
  %.pn22 = phi ptr [ %i.a, %bb.a ], [ %i.f, %bb.b ]
  %i.i = icmp samesign ult i64 %1, 65
  invoke fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift4sortNtNtCskXtk6F4WjxZ_4just6signal6SignalNvYBW_NtNtBa_3cmp10PartialOrd2ltEB10_(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef %1, ptr noalias nofree noundef nonnull align 4 %.pn22, i64 noundef %.sroa.4.0, i1 noundef zeroext %i.i, ptr noalias nofree noundef nonnull %2)
          to label %bb.e unwind label %bb.c

bb.e:                                             ; preds = %bb.d
  br i1 %i.d, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just6signal6SignalEEB1c_.exit, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just6signal6SignalEEB1c_.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just6signal6SignalEEB1c_.exit: ; preds = %bb.e
  %i.j = shl nuw nsw i64 %..i12, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.1) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.1, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 4) #69
  br label %bb.f

bb.g:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just6signal6SignalEEB1c_.exit13, %bb.c
  resume { ptr, i32 } %i.h

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just6signal6SignalEEB1c_.exit13: ; preds = %bb.c
  %i.k = shl nuw nsw i64 %..i12, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.1) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.1, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 4) #69
  br label %bb.g
}

; Function Attrs: noinline nonlazybind uwtable
end_hunk_0
begin_hunk_1_@_RNvXs_NtCskXtk6F4WjxZ_4just9parameterNtB4_9ParameterNtNtB6_13color_display12ColorDisplay3fmt:bb.a
  %.val3.i179 = load ptr, ptr %i.by, align 8, !alias.scope !102458, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i179, i64 noundef %.val2.i178, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !102460
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsaBFuFXHOo0Z_12nu_ansi_term7display17AnsiGenericStringeEECskXtk6F4WjxZ_4just.exit181

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsaBFuFXHOo0Z_12nu_ansi_term7display17AnsiGenericStringeEECskXtk6F4WjxZ_4just.exit181: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECskXtk6F4WjxZ_4just.exit.i177, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !range !39, !noundef !28
  %.not = icmp eq i64 %i.ca, -1
  br i1 %.not, label %bb.az, label %bb.ag

bb.ag:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsaBFuFXHOo0Z_12nu_ansi_term7display17AnsiGenericStringeEECskXtk6F4WjxZ_4just.exit181
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !102461
  store i64 0, ptr %i.c, align 8, !noalias !102461
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !102461
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !102461
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !102461
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1610612768, ptr %i.cb, align 8, !noalias !102461
  store ptr %i.c, ptr %i.b, align 8, !noalias !102461
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @2612, ptr %i.cc, align 8, !noalias !102461
  %i.cd = invoke noundef zeroext i1 @_RNvXs_NtCskXtk6F4WjxZ_4just10expressionNtB4_10ExpressionNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.bz, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.aj unwind label %bb.ah, !noalias !102462

bb.ah:                                            ; preds = %bb.ak, %bb.ag
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !102463)
  call void @llvm.experimental.noalias.scope.decl(metadata !102464)
  %.val.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !102465, !noalias !102461 ; 2 uses
  %i.cf = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.cf, label %common.resume, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.val1.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !102465, !noalias !102461, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !102466
  br label %common.resume

bb.aj:                                            ; preds = %bb.ag
  br i1 %i.cd, label %bb.ak, label %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtB5_12SpecToString14spec_to_stringBC_.exit, !prof !44

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2613, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @801, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2615) #74
          to label %.noexc.i unwind label %bb.ah, !noalias !102462

.noexc.i:                                         ; preds = %bb.ak
  unreachable

common.resume:                                    ; preds = %bb.ao, %bb.aw, %bb.y, %bb.h, %bb.ah, %bb.ai
  %common.resume.op = phi { ptr, i32 } [ %i.ce, %bb.ah ], [ %i.ce, %bb.ai ], [ %i.z, %bb.h ], [ %i.bs, %bb.y ], [ %i.cj, %bb.ao ], [ %i.cj, %bb.aw ]
  resume { ptr, i32 } %common.resume.op

_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtB5_12SpecToString14spec_to_stringBC_.exit: ; preds = %bb.aj
  %.sroa.0.0.copyload = load i64, ptr %i.c, align 8, !noalias !102467 ; 6 uses
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !102467, !nonnull !28, !noundef !28 ; 4 uses
  %.sroa.11.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !102467
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !102461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !102461
  switch i8 %i.ak, label %default.unreachable203 [
    i8 0, label %bb.an
    i8 1, label %bb.al
    i8 2, label %bb.am
  ]

bb.al:                                            ; preds = %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtB5_12SpecToString14spec_to_stringBC_.exit
  br i1 %i.ai, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al, %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtB5_12SpecToString14spec_to_stringBC_.exit
  br label %bb.an

bb.an:                                            ; preds = %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtB5_12SpecToString14spec_to_stringBC_.exit, %bb.al, %bb.am
  %.sroa.19135.0 = phi i8 [ 4, %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtB5_12SpecToString14spec_to_stringBC_.exit ], [ 4, %bb.al ], [ -1, %bb.am ]
  %i.cg = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.19135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 57
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.cg, i8 0, i64 9, i1 false)
  store i8 %.sroa.19135.0, ptr %.sroa.19135.0..sroa_idx, align 1
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 61
  store i8 -1, ptr %.sroa.22.0..sroa_idx, align 1
  store i64 -1, ptr %i.e, align 8
  %.sroa.4142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr %.sroa.7.0.copyload, ptr %.sroa.4142.0..sroa_idx, align 8
  %.sroa.5143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.11.0.copyload, ptr %.sroa.5143.0..sroa_idx, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 3 uses
  store i64 -3, ptr %i.ch, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  %.sroa.4147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs4_NtCsaBFuFXHOo0Z_12nu_ansi_term7displayINtB5_17AnsiGenericStringeENtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.4147.0..sroa_idx, align 8
  %i.ci = invoke noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.bo, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bq, ptr noundef nonnull @2819, ptr noundef nonnull %i.d)
          to label %bb.ap unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsaBFuFXHOo0Z_12nu_ansi_term7display17AnsiGenericStringeEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(72) %i.e) #71
  %i.ck = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.ck, label %common.resume, label %bb.aw

bb.ap:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.ci, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.experimental.noalias.scope.decl(metadata !102468)
  %.val.i182 = load i64, ptr %i.e, align 8, !range !37, !alias.scope !102468, !noundef !28 ; 2 uses
  %i.cl = icmp sgt i64 %.val.i182, 0
  br i1 %i.cl, label %bb.ar, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECskXtk6F4WjxZ_4just.exit.i183

bb.ar:                                            ; preds = %bb.aq
  %.val1.i186 = load ptr, ptr %.sroa.4142.0..sroa_idx, align 8, !alias.scope !102468, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i186, i64 noundef %.val.i182, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !102469
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECskXtk6F4WjxZ_4just.exit.i183

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECskXtk6F4WjxZ_4just.exit.i183: ; preds = %bb.ar, %bb.aq
  %.val2.i184 = load i64, ptr %i.ch, align 8, !range !82, !alias.scope !102468, !noundef !28 ; 2 uses
  %i.cm = icmp sgt i64 %.val2.i184, 0
  br i1 %i.cm, label %bb.as, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsaBFuFXHOo0Z_12nu_ansi_term7display17AnsiGenericStringeEECskXtk6F4WjxZ_4just.exit187

bb.as:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECskXtk6F4WjxZ_4just.exit.i183
  %i.cn = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.val3.i185 = load ptr, ptr %i.cn, align 8, !alias.scope !102468, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i185, i64 noundef %.val2.i184, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !102470
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsaBFuFXHOo0Z_12nu_ansi_term7display17AnsiGenericStringeEECskXtk6F4WjxZ_4just.exit187

bb.at:                                            ; preds = %bb.ap
  call void @llvm.experimental.noalias.scope.decl(metadata !102471)
  %.val.i188 = load i64, ptr %i.e, align 8, !range !37, !alias.scope !102471, !noundef !28 ; 2 uses
  %i.co = icmp sgt i64 %.val.i188, 0
  br i1 %i.co, label %bb.au, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECskXtk6F4WjxZ_4just.exit.i189

bb.au:                                            ; preds = %bb.at
  %.val1.i192 = load ptr, ptr %.sroa.4142.0..sroa_idx, align 8, !alias.scope !102471, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i192, i64 noundef %.val.i188, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !102472
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECskXtk6F4WjxZ_4just.exit.i189

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECskXtk6F4WjxZ_4just.exit.i189: ; preds = %bb.au, %bb.at
  %.val2.i190 = load i64, ptr %i.ch, align 8, !range !82, !alias.scope !102471, !noundef !28 ; 2 uses
  %i.cp = icmp sgt i64 %.val2.i190, 0
  br i1 %i.cp, label %bb.av, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsaBFuFXHOo0Z_12nu_ansi_term7display17AnsiGenericStringeEECskXtk6F4WjxZ_4just.exit193

bb.av:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECskXtk6F4WjxZ_4just.exit.i189
  %i.cq = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.val3.i191 = load ptr, ptr %i.cq, align 8, !alias.scope !102471, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i191, i64 noundef %.val2.i190, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !102473
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsaBFuFXHOo0Z_12nu_ansi_term7display17AnsiGenericStringeEECskXtk6F4WjxZ_4just.exit193

bb.aw:                                            ; preds = %bb.ao
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !102474
  br label %common.resume

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsaBFuFXHOo0Z_12nu_ansi_term7display17AnsiGenericStringeEECskXtk6F4WjxZ_4just.exit193: ; preds = %bb.av, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECskXtk6F4WjxZ_4just.exit.i189
  %i.cr = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.cr, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit196, label %bb.ax

bb.ax:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsaBFuFXHOo0Z_12nu_ansi_term7display17AnsiGenericStringeEECskXtk6F4WjxZ_4just.exit193
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !102475
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit196

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit196: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsaBFuFXHOo0Z_12nu_ansi_term7display17AnsiGenericStringeEECskXtk6F4WjxZ_4just.exit193, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.az

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsaBFuFXHOo0Z_12nu_ansi_term7display17AnsiGenericStringeEECskXtk6F4WjxZ_4just.exit187: ; preds = %bb.as, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECskXtk6F4WjxZ_4just.exit.i183
  %i.cs = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.cs, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit199, label %bb.ay

bb.ay:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsaBFuFXHOo0Z_12nu_ansi_term7display17AnsiGenericStringeEECskXtk6F4WjxZ_4just.exit187
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !102476
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit199

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit199: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsaBFuFXHOo0Z_12nu_ansi_term7display17AnsiGenericStringeEECskXtk6F4WjxZ_4just.exit187, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.az

bb.az:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsaBFuFXHOo0Z_12nu_ansi_term7display17AnsiGenericStringeEECskXtk6F4WjxZ_4just.exit181, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit196, %bb.u, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit199, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsaBFuFXHOo0Z_12nu_ansi_term7display17AnsiGenericStringeEECskXtk6F4WjxZ_4just.exit175, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsaBFuFXHOo0Z_12nu_ansi_term7display17AnsiGenericStringeEECskXtk6F4WjxZ_4just.exit
  %.sroa.0.0 = phi i1 [ true, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsaBFuFXHOo0Z_12nu_ansi_term7display17AnsiGenericStringeEECskXtk6F4WjxZ_4just.exit ], [ true, %bb.u ], [ true, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsaBFuFXHOo0Z_12nu_ansi_term7display17AnsiGenericStringeEECskXtk6F4WjxZ_4just.exit175 ], [ true, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit199 ], [ false, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit196 ], [ false, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsaBFuFXHOo0Z_12nu_ansi_term7display17AnsiGenericStringeEECskXtk6F4WjxZ_4just.exit181 ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @_RNvXs_NtCskpFEDU8Hp5a_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCs9ILO0rivZwZ_9rand_core5block9Generator8generateCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(256) %1) unnamed_addr #27 {
bb.a:
  %i.a = load atomic i8, ptr @_RNvNtCskpFEDU8Hp5a_8chacha2010avx2_cpuid7STORAGE monotonic, align 1
  %i.b = icmp eq i8 %i.a, 1
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102480)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102481)
  %.sroa.012.0.copyload24.i = load <4 x i32>, ptr %0, align 4, !alias.scope !102480 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.013.0.copyload25.i = load <4 x i32>, ptr %i.c, align 4, !alias.scope !102480 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.014.0.copyload26.i = load <4 x i32>, ptr %i.d, align 4, !alias.scope !102480 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.015.0.copyload.i = load <2 x i64>, ptr %i.e, align 4, !alias.scope !102480 ; 5 uses
  %2 = bitcast <2 x i64> %.sroa.015.0.copyload.i to <4 x i32> ; 2 uses
  %i.f = add <2 x i64> %.sroa.015.0.copyload.i, <i64 1, i64 0>
  %i.g = add <2 x i64> %.sroa.015.0.copyload.i, <i64 2, i64 0>
  %i.h = add <2 x i64> %.sroa.015.0.copyload.i, <i64 3, i64 0>
  %3 = bitcast <2 x i64> %i.f to <4 x i32>        ; 2 uses
  %4 = bitcast <2 x i64> %i.g to <4 x i32>        ; 2 uses
  %5 = bitcast <2 x i64> %i.h to <4 x i32>        ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.042.0110.i.i = phi i64 [ 0, %bb.b ], [ %i.u, %bb.c ]
  %6 = phi <4 x i32> [ %.sroa.012.0.copyload24.i, %bb.b ], [ %i.du, %bb.c ]
  %7 = phi <4 x i32> [ %.sroa.013.0.copyload25.i, %bb.b ], [ %i.ci, %bb.c ] ; 2 uses
  %8 = phi <4 x i32> [ %2, %bb.b ], [ %16, %bb.c ]
  %9 = phi <4 x i32> [ %.sroa.014.0.copyload26.i, %bb.b ], [ %i.dt, %bb.c ]
  %i.i = phi <4 x i32> [ %.sroa.012.0.copyload24.i, %bb.b ], [ %i.dw, %bb.c ]
  %i.j = phi <4 x i32> [ %.sroa.013.0.copyload25.i, %bb.b ], [ %i.cu, %bb.c ] ; 2 uses
  %i.k = phi <4 x i32> [ %3, %bb.b ], [ %17, %bb.c ]
  %i.l = phi <4 x i32> [ %.sroa.014.0.copyload26.i, %bb.b ], [ %i.dv, %bb.c ]
  %i.m = phi <4 x i32> [ %.sroa.012.0.copyload24.i, %bb.b ], [ %i.dy, %bb.c ]
  %i.n = phi <4 x i32> [ %.sroa.013.0.copyload25.i, %bb.b ], [ %i.dg, %bb.c ] ; 2 uses
  %i.o = phi <4 x i32> [ %4, %bb.b ], [ %18, %bb.c ]
  %i.p = phi <4 x i32> [ %.sroa.014.0.copyload26.i, %bb.b ], [ %i.dx, %bb.c ]
  %i.q = phi <4 x i32> [ %.sroa.012.0.copyload24.i, %bb.b ], [ %i.ea, %bb.c ]
  %i.r = phi <4 x i32> [ %.sroa.013.0.copyload25.i, %bb.b ], [ %i.ds, %bb.c ] ; 2 uses
  %i.s = phi <4 x i32> [ %5, %bb.b ], [ %19, %bb.c ]
  %i.t = phi <4 x i32> [ %.sroa.014.0.copyload26.i, %bb.b ], [ %i.dz, %bb.c ]
  %i.u = add nuw nsw i64 %.sroa.042.0110.i.i, 1   ; 2 uses
  %i.v = add <4 x i32> %7, %6                     ; 2 uses
  %i.w = xor <4 x i32> %8, %i.v                   ; 2 uses
  %i.x = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.w, <4 x i32> %i.w, <4 x i32> splat (i32 16)) ; 2 uses
  %i.y = add <4 x i32> %i.x, %9                   ; 2 uses
  %i.z = xor <4 x i32> %i.y, %7                   ; 2 uses
  %i.aa = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.z, <4 x i32> %i.z, <4 x i32> splat (i32 12)) ; 2 uses
  %i.ab = add <4 x i32> %i.aa, %i.v               ; 2 uses
  %i.ac = xor <4 x i32> %i.ab, %i.x               ; 2 uses
  %i.ad = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ac, <4 x i32> %i.ac, <4 x i32> splat (i32 8)) ; 2 uses
  %i.ae = add <4 x i32> %i.ad, %i.y               ; 2 uses
  %i.af = xor <4 x i32> %i.ae, %i.aa              ; 2 uses
  %i.ag = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.af, <4 x i32> %i.af, <4 x i32> splat (i32 7)) ; 2 uses
  %i.ah = add <4 x i32> %i.j, %i.i                ; 2 uses
  %i.ai = xor <4 x i32> %i.k, %i.ah               ; 2 uses
  %i.aj = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ai, <4 x i32> %i.ai, <4 x i32> splat (i32 16)) ; 2 uses
  %i.ak = add <4 x i32> %i.aj, %i.l               ; 2 uses
  %i.al = xor <4 x i32> %i.ak, %i.j               ; 2 uses
  %i.am = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.al, <4 x i32> %i.al, <4 x i32> splat (i32 12)) ; 2 uses
  %i.an = add <4 x i32> %i.am, %i.ah              ; 2 uses
  %i.ao = xor <4 x i32> %i.an, %i.aj              ; 2 uses
  %i.ap = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ao, <4 x i32> %i.ao, <4 x i32> splat (i32 8)) ; 2 uses
  %i.aq = add <4 x i32> %i.ap, %i.ak              ; 2 uses
  %i.ar = xor <4 x i32> %i.aq, %i.am              ; 2 uses
  %i.as = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ar, <4 x i32> %i.ar, <4 x i32> splat (i32 7)) ; 2 uses
  %i.at = add <4 x i32> %i.n, %i.m                ; 2 uses
  %i.au = xor <4 x i32> %i.o, %i.at               ; 2 uses
  %i.av = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.au, <4 x i32> %i.au, <4 x i32> splat (i32 16)) ; 2 uses
  %i.aw = add <4 x i32> %i.av, %i.p               ; 2 uses
  %i.ax = xor <4 x i32> %i.aw, %i.n               ; 2 uses
  %i.ay = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ax, <4 x i32> %i.ax, <4 x i32> splat (i32 12)) ; 2 uses
  %i.az = add <4 x i32> %i.ay, %i.at              ; 2 uses
  %i.ba = xor <4 x i32> %i.az, %i.av              ; 2 uses
  %i.bb = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ba, <4 x i32> %i.ba, <4 x i32> splat (i32 8)) ; 2 uses
  %i.bc = add <4 x i32> %i.bb, %i.aw              ; 2 uses
  %i.bd = xor <4 x i32> %i.bc, %i.ay              ; 2 uses
  %i.be = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bd, <4 x i32> %i.bd, <4 x i32> splat (i32 7)) ; 2 uses
  %i.bf = add <4 x i32> %i.r, %i.q                ; 2 uses
  %i.bg = xor <4 x i32> %i.s, %i.bf               ; 2 uses
  %i.bh = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bg, <4 x i32> %i.bg, <4 x i32> splat (i32 16)) ; 2 uses
  %i.bi = add <4 x i32> %i.bh, %i.t               ; 2 uses
  %i.bj = xor <4 x i32> %i.bi, %i.r               ; 2 uses
  %i.bk = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bj, <4 x i32> %i.bj, <4 x i32> splat (i32 12)) ; 2 uses
  %i.bl = add <4 x i32> %i.bk, %i.bf              ; 2 uses
  %i.bm = xor <4 x i32> %i.bl, %i.bh              ; 2 uses
  %i.bn = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bm, <4 x i32> %i.bm, <4 x i32> splat (i32 8)) ; 2 uses
  %i.bo = add <4 x i32> %i.bn, %i.bi              ; 2 uses
  %i.bp = xor <4 x i32> %i.bo, %i.bk              ; 2 uses
  %i.bq = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bp, <4 x i32> %i.bp, <4 x i32> splat (i32 7)) ; 2 uses
  %i.br = shufflevector <4 x i32> %i.ae, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %10 = shufflevector <4 x i32> %i.ad, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.bs = shufflevector <4 x i32> %i.ab, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.bt = shufflevector <4 x i32> %i.aq, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %11 = shufflevector <4 x i32> %i.ap, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.bu = shufflevector <4 x i32> %i.an, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.bv = shufflevector <4 x i32> %i.bc, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %12 = shufflevector <4 x i32> %i.bb, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.bw = shufflevector <4 x i32> %i.az, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.bx = shufflevector <4 x i32> %i.bo, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %13 = shufflevector <4 x i32> %i.bn, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %14 = shufflevector <4 x i32> %i.bl, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %15 = add <4 x i32> %i.ag, %i.bs                ; 2 uses
  %i.by = xor <4 x i32> %15, %10                  ; 2 uses
  %i.bz = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.by, <4 x i32> %i.by, <4 x i32> splat (i32 16)) ; 2 uses
  %i.ca = add <4 x i32> %i.bz, %i.br              ; 2 uses
  %i.cb = xor <4 x i32> %i.ca, %i.ag              ; 2 uses
  %i.cc = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cb, <4 x i32> %i.cb, <4 x i32> splat (i32 12)) ; 2 uses
  %i.cd = add <4 x i32> %i.cc, %15                ; 2 uses
  %i.ce = xor <4 x i32> %i.cd, %i.bz              ; 2 uses
  %i.cf = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ce, <4 x i32> %i.ce, <4 x i32> splat (i32 8)) ; 2 uses
  %i.cg = add <4 x i32> %i.cf, %i.ca              ; 2 uses
  %i.ch = xor <4 x i32> %i.cg, %i.cc              ; 2 uses
  %i.ci = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ch, <4 x i32> %i.ch, <4 x i32> splat (i32 7)) ; 2 uses
  %i.cj = add <4 x i32> %i.as, %i.bu              ; 2 uses
  %i.ck = xor <4 x i32> %i.cj, %11                ; 2 uses
  %i.cl = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ck, <4 x i32> %i.ck, <4 x i32> splat (i32 16)) ; 2 uses
  %i.cm = add <4 x i32> %i.cl, %i.bt              ; 2 uses
  %i.cn = xor <4 x i32> %i.cm, %i.as              ; 2 uses
  %i.co = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cn, <4 x i32> %i.cn, <4 x i32> splat (i32 12)) ; 2 uses
  %i.cp = add <4 x i32> %i.co, %i.cj              ; 2 uses
  %i.cq = xor <4 x i32> %i.cp, %i.cl              ; 2 uses
  %i.cr = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cq, <4 x i32> %i.cq, <4 x i32> splat (i32 8)) ; 2 uses
  %i.cs = add <4 x i32> %i.cr, %i.cm              ; 2 uses
  %i.ct = xor <4 x i32> %i.cs, %i.co              ; 2 uses
  %i.cu = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ct, <4 x i32> %i.ct, <4 x i32> splat (i32 7)) ; 2 uses
  %i.cv = add <4 x i32> %i.be, %i.bw              ; 2 uses
  %i.cw = xor <4 x i32> %i.cv, %12                ; 2 uses
  %i.cx = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cw, <4 x i32> %i.cw, <4 x i32> splat (i32 16)) ; 2 uses
  %i.cy = add <4 x i32> %i.cx, %i.bv              ; 2 uses
  %i.cz = xor <4 x i32> %i.cy, %i.be              ; 2 uses
  %i.da = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cz, <4 x i32> %i.cz, <4 x i32> splat (i32 12)) ; 2 uses
  %i.db = add <4 x i32> %i.da, %i.cv              ; 2 uses
  %i.dc = xor <4 x i32> %i.db, %i.cx              ; 2 uses
  %i.dd = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dc, <4 x i32> %i.dc, <4 x i32> splat (i32 8)) ; 2 uses
  %i.de = add <4 x i32> %i.dd, %i.cy              ; 2 uses
  %i.df = xor <4 x i32> %i.de, %i.da              ; 2 uses
  %i.dg = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.df, <4 x i32> %i.df, <4 x i32> splat (i32 7)) ; 2 uses
  %i.dh = add <4 x i32> %i.bq, %14                ; 2 uses
  %i.di = xor <4 x i32> %i.dh, %13                ; 2 uses
  %i.dj = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.di, <4 x i32> %i.di, <4 x i32> splat (i32 16)) ; 2 uses
  %i.dk = add <4 x i32> %i.dj, %i.bx              ; 2 uses
  %i.dl = xor <4 x i32> %i.dk, %i.bq              ; 2 uses
  %i.dm = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dl, <4 x i32> %i.dl, <4 x i32> splat (i32 12)) ; 2 uses
  %i.dn = add <4 x i32> %i.dm, %i.dh              ; 2 uses
  %i.do = xor <4 x i32> %i.dn, %i.dj              ; 2 uses
  %i.dp = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.do, <4 x i32> %i.do, <4 x i32> splat (i32 8)) ; 2 uses
  %i.dq = add <4 x i32> %i.dp, %i.dk              ; 2 uses
  %i.dr = xor <4 x i32> %i.dq, %i.dm              ; 2 uses
  %i.ds = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dr, <4 x i32> %i.dr, <4 x i32> splat (i32 7)) ; 2 uses
  %i.dt = shufflevector <4 x i32> %i.cg, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %16 = shufflevector <4 x i32> %i.cf, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.du = shufflevector <4 x i32> %i.cd, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.dv = shufflevector <4 x i32> %i.cs, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %17 = shufflevector <4 x i32> %i.cr, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.dw = shufflevector <4 x i32> %i.cp, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.dx = shufflevector <4 x i32> %i.de, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %18 = shufflevector <4 x i32> %i.dd, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.dy = shufflevector <4 x i32> %i.db, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.dz = shufflevector <4 x i32> %i.dq, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %19 = shufflevector <4 x i32> %i.dp, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.ea = shufflevector <4 x i32> %i.dn, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.u, 6
  br i1 %exitcond.not.i.i, label %_RINvNtNtCskpFEDU8Hp5a_8chacha208backends4sse29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECskXtk6F4WjxZ_4just.exit, label %bb.c

_RINvNtNtCskpFEDU8Hp5a_8chacha208backends4sse29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECskXtk6F4WjxZ_4just.exit: ; preds = %bb.c
  %i.eb = add <4 x i32> %i.du, %.sroa.012.0.copyload24.i
  %i.ec = add <4 x i32> %i.ci, %.sroa.013.0.copyload25.i
  %i.ed = add <4 x i32> %i.dt, %.sroa.014.0.copyload26.i
  %i.ee = add <4 x i32> %16, %2
  %i.ef = add <4 x i32> %i.dw, %.sroa.012.0.copyload24.i
  %i.eg = add <4 x i32> %i.cu, %.sroa.013.0.copyload25.i
  %i.eh = add <4 x i32> %i.dv, %.sroa.014.0.copyload26.i
  %i.ei = add <4 x i32> %17, %3
  %i.ej = add <4 x i32> %i.dy, %.sroa.012.0.copyload24.i
  %i.ek = add <4 x i32> %i.dg, %.sroa.013.0.copyload25.i
  %i.el = add <4 x i32> %i.dx, %.sroa.014.0.copyload26.i
  %i.em = add <4 x i32> %18, %4
  %i.en = add <4 x i32> %i.ea, %.sroa.012.0.copyload24.i
  %i.eo = add <4 x i32> %i.ds, %.sroa.013.0.copyload25.i
  %i.ep = add <4 x i32> %i.dz, %.sroa.014.0.copyload26.i
  %i.eq = add <4 x i32> %19, %5
  store <4 x i32> %i.eb, ptr %1, align 4, !alias.scope !102481, !noalias !28
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <4 x i32> %i.ec, ptr %.sroa.4.0..sroa_idx.i, align 4, !alias.scope !102481, !noalias !28
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  store <4 x i32> %i.ed, ptr %.sroa.5.0..sroa_idx.i, align 4, !alias.scope !102481, !noalias !28
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  store <4 x i32> %i.ee, ptr %.sroa.6.0..sroa_idx.i, align 4, !alias.scope !102481, !noalias !28
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  store <4 x i32> %i.ef, ptr %.sroa.7.0..sroa_idx.i, align 4, !alias.scope !102481, !noalias !28
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  store <4 x i32> %i.eg, ptr %.sroa.8.0..sroa_idx.i, align 4, !alias.scope !102481, !noalias !28
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 96
  store <4 x i32> %i.eh, ptr %.sroa.9.0..sroa_idx.i, align 4, !alias.scope !102481, !noalias !28
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  store <4 x i32> %i.ei, ptr %.sroa.10.0..sroa_idx.i, align 4, !alias.scope !102481, !noalias !28
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 128
  store <4 x i32> %i.ej, ptr %.sroa.11.0..sroa_idx.i, align 4, !alias.scope !102481, !noalias !28
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 144
  store <4 x i32> %i.ek, ptr %.sroa.12.0..sroa_idx.i, align 4, !alias.scope !102481, !noalias !28
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 160
  store <4 x i32> %i.el, ptr %.sroa.13.0..sroa_idx.i, align 4, !alias.scope !102481, !noalias !28
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 176
  store <4 x i32> %i.em, ptr %.sroa.14.0..sroa_idx.i, align 4, !alias.scope !102481, !noalias !28
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 192
  store <4 x i32> %i.en, ptr %.sroa.15.0..sroa_idx.i, align 4, !alias.scope !102481, !noalias !28
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 208
  store <4 x i32> %i.eo, ptr %.sroa.16.0..sroa_idx.i, align 4, !alias.scope !102481, !noalias !28
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 224
  store <4 x i32> %i.ep, ptr %.sroa.17.0..sroa_idx.i, align 4, !alias.scope !102481, !noalias !28
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 240
  store <4 x i32> %i.eq, ptr %.sroa.18.0..sroa_idx.i, align 4, !alias.scope !102481, !noalias !28
  %i.er = add <2 x i64> %.sroa.015.0.copyload.i, <i64 4, i64 0> ; 2 uses
  %i.es = bitcast <2 x i64> %i.er to <4 x i32>
  %i.et = extractelement <4 x i32> %i.es, i64 0
  store i32 %i.et, ptr %i.e, align 4, !alias.scope !102480
  %i.eu = tail call fastcc noundef i32 @_RINvNtNtNtCsj6eKBz9Db1c_4core9core_arch3x865sse4117__mm_extract_epi32Kl1_ECskXtk6F4WjxZ_4just(<2 x i64> %i.er) #75
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.eu, ptr %i.ev, align 4, !alias.scope !102480
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtNtCskpFEDU8Hp5a_8chacha208backends4avx29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 4 dereferenceable(64) %0, ptr noalias nofree noundef align 4 dereferenceable(256) %1) #75
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RINvNtNtCskpFEDU8Hp5a_8chacha208backends4sse29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECskXtk6F4WjxZ_4just.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB6_3VecINtNtNtNtB8_11collections5btree3map8BTreeMapNtNtB8_6string6StringB1B_EEINtB4_10SpecExtendBT_INtNtB6_5drain5DrainBT_EE11spec_extendCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102495)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102496)
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !102496, !nonnull !28, !noundef !28
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5.i = load ptr, ptr %i.b, align 8, !alias.scope !102496, !nonnull !28, !noundef !28
  %i.c = ptrtoint ptr %.val5.i to i64
  %i.d = ptrtoint ptr %.val.i to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = udiv exact i64 %i.e, 24                  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !102497, !noundef !28 ; 3 uses
  %i.i = load i64, ptr %0, align 8, !range !43, !alias.scope !102497, !noundef !28
  %i.j = sub i64 %i.i, %i.h
  %i.k = icmp ugt i64 %i.f, %i.j
  br i1 %i.k, label %bb.b, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtNtB6_11collections5btree3map8BTreeMapNtNtB6_6string6StringB1m_EE7reserveCskXtk6F4WjxZ_4just.exit.i, !prof !44

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.h, i64 noundef %i.f, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtNtB6_11collections5btree3map8BTreeMapNtNtB6_6string6StringB1m_EE7reserveCskXtk6F4WjxZ_4just.exit_crit_edge.i unwind label %bb.d, !noalias !102496

._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtNtB6_11collections5btree3map8BTreeMapNtNtB6_6string6StringB1m_EE7reserveCskXtk6F4WjxZ_4just.exit_crit_edge.i: ; preds = %bb.b
  %.pre.i = load i64, ptr %i.g, align 8, !alias.scope !102495
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtNtB6_11collections5btree3map8BTreeMapNtNtB6_6string6StringB1m_EE7reserveCskXtk6F4WjxZ_4just.exit.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtNtB6_11collections5btree3map8BTreeMapNtNtB6_6string6StringB1m_EE7reserveCskXtk6F4WjxZ_4just.exit.i: ; preds = %._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtNtB6_11collections5btree3map8BTreeMapNtNtB6_6string6StringB1m_EE7reserveCskXtk6F4WjxZ_4just.exit_crit_edge.i, %bb.a
  %i.l = phi i64 [ %.pre.i, %._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtNtB6_11collections5btree3map8BTreeMapNtNtB6_6string6StringB1m_EE7reserveCskXtk6F4WjxZ_4just.exit_crit_edge.i ], [ %i.h, %bb.a ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !102495, !nonnull !28, !noundef !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !102498
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !noalias !102495
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102499)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102500)
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !102501, !noalias !102498, !nonnull !28, !noundef !28 ; 2 uses
  %.promoted.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !102501, !noalias !102498 ; 2 uses
  %i.q = icmp eq ptr %.promoted.i.i.i, %i.p
  br i1 %i.q, label %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecINtNtNtNtB8_11collections5btree3map8BTreeMapNtNtB8_6string6StringB1o_EE14extend_trustedINtNtB6_5drain5DrainBG_EECskXtk6F4WjxZ_4just.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtNtB6_11collections5btree3map8BTreeMapNtNtB6_6string6StringB1m_EE7reserveCskXtk6F4WjxZ_4just.exit.i, %.lr.ph.i.i.i
  %i.r = phi i64 [ %i.v, %.lr.ph.i.i.i ], [ %i.l, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtNtB6_11collections5btree3map8BTreeMapNtNtB6_6string6StringB1m_EE7reserveCskXtk6F4WjxZ_4just.exit.i ] ; 2 uses
  %i.s = phi ptr [ %i.t, %.lr.ph.i.i.i ], [ %.promoted.i.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtNtB6_11collections5btree3map8BTreeMapNtNtB6_6string6StringB1m_EE7reserveCskXtk6F4WjxZ_4just.exit.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 3 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.r
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !noalias !102502
  %i.v = add i64 %i.r, 1                          ; 2 uses
  %i.w = icmp eq ptr %i.t, %i.p
  br i1 %i.w, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i
  store ptr %i.t, ptr %i.a, align 8, !alias.scope !102501, !noalias !102498
  br label %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecINtNtNtNtB8_11collections5btree3map8BTreeMapNtNtB8_6string6StringB1o_EE14extend_trustedINtNtB6_5drain5DrainBG_EECskXtk6F4WjxZ_4just.exit

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %lpad.thr_comm.i

bb.d:                                             ; preds = %bb.b
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec5drain5DrainINtNtNtNtBI_11collections5btree3map8BTreeMapNtNtBI_6string6StringB20_EEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1) #71
          to label %bb.c unwind label %bb.e, !noalias !102495

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #72, !noalias !102498
  unreachable

_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecINtNtNtNtB8_11collections5btree3map8BTreeMapNtNtB8_6string6StringB1o_EE14extend_trustedINtNtB6_5drain5DrainBG_EECskXtk6F4WjxZ_4just.exit: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtNtB6_11collections5btree3map8BTreeMapNtNtB6_6string6StringB1m_EE7reserveCskXtk6F4WjxZ_4just.exit.i, %._crit_edge.i.i.i
  %.val5.i.i.i = phi i64 [ %i.v, %._crit_edge.i.i.i ], [ %i.l, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtNtB6_11collections5btree3map8BTreeMapNtNtB6_6string6StringB1m_EE7reserveCskXtk6F4WjxZ_4just.exit.i ]
  store i64 %.val5.i.i.i, ptr %i.g, align 8, !alias.scope !102495, !noalias !102503
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec5drain5DrainINtNtNtNtBI_11collections5btree3map8BTreeMapNtNtBI_6string6StringB20_EEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !102498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !102498
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB6_3VecINtNtNtNtB8_11collections5btree3map8BTreeMapNtNtB8_6string6StringB1B_EEINtB4_10SpecExtendBT_INtNtNtNtCsj6eKBz9Db1c_4core4iter7sources4once4OnceBT_EE11spec_extendCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.i = alloca [24 x i8], align 8          ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102515)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102516)
  %.val.i = load i64, ptr %1, align 8, !range !41, !alias.scope !102516, !noundef !28 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !102517, !noundef !28 ; 4 uses
  %i.c = load i64, ptr %0, align 8, !range !43, !alias.scope !102517, !noundef !28
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %.val.i, %i.d
  br i1 %i.e, label %bb.b, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtNtB6_11collections5btree3map8BTreeMapNtNtB6_6string6StringB1m_EE7reserveCskXtk6F4WjxZ_4just.exit.i, !prof !44

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %.val.i, i64 noundef 8, i64 noundef 24)
          to label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtNtB6_11collections5btree3map8BTreeMapNtNtB6_6string6StringB1m_EE7reserveCskXtk6F4WjxZ_4just.exit.thread.i unwind label %bb.c, !noalias !102516

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtNtB6_11collections5btree3map8BTreeMapNtNtB6_6string6StringB1m_EE7reserveCskXtk6F4WjxZ_4just.exit.thread.i: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !102515, !nonnull !28, !noundef !28
  %i.h = load i64, ptr %i.a, align 8, !alias.scope !102515, !noundef !28
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  %.sroa.4.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.4.0..sroa_idx9.i, i64 24, i1 false), !noalias !102515
  br label %.lr.ph.split.i.i.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtNtB6_11collections5btree3map8BTreeMapNtNtB6_6string6StringB1m_EE7reserveCskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !102515, !nonnull !28, !noundef !28
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, i64 24, i1 false), !noalias !102515
  %i.k = trunc nuw i64 %.val.i to i1
  br i1 %i.k, label %.lr.ph.split.i.i.i, label %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecINtNtNtNtB8_11collections5btree3map8BTreeMapNtNtB8_6string6StringB1o_EE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter7sources4once4OnceBG_EECskXtk6F4WjxZ_4just.exit

.lr.ph.split.i.i.i:                               ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtNtB6_11collections5btree3map8BTreeMapNtNtB6_6string6StringB1m_EE7reserveCskXtk6F4WjxZ_4just.exit.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtNtB6_11collections5btree3map8BTreeMapNtNtB6_6string6StringB1m_EE7reserveCskXtk6F4WjxZ_4just.exit.thread.i
  %i.l = phi i64 [ %i.h, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtNtB6_11collections5btree3map8BTreeMapNtNtB6_6string6StringB1m_EE7reserveCskXtk6F4WjxZ_4just.exit.thread.i ], [ %i.b, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtNtB6_11collections5btree3map8BTreeMapNtNtB6_6string6StringB1m_EE7reserveCskXtk6F4WjxZ_4just.exit.i ] ; 2 uses
  %i.m = phi ptr [ %i.g, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtNtB6_11collections5btree3map8BTreeMapNtNtB6_6string6StringB1m_EE7reserveCskXtk6F4WjxZ_4just.exit.thread.i ], [ %i.j, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtNtB6_11collections5btree3map8BTreeMapNtNtB6_6string6StringB1m_EE7reserveCskXtk6F4WjxZ_4just.exit.i ]
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.i, i64 24, i1 false), !noalias !102518
  %i.o = add i64 %i.l, 1
  br label %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecINtNtNtNtB8_11collections5btree3map8BTreeMapNtNtB8_6string6StringB1o_EE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter7sources4once4OnceBG_EECskXtk6F4WjxZ_4just.exit

.noexc5.i:                                        ; preds = %bb.c
  resume { ptr, i32 } %i.p

bb.c:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringB1A_EECskXtk6F4WjxZ_4just(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.q)
          to label %.noexc5.i unwind label %bb.d, !noalias !102515

bb.d:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #72, !noalias !102519
  unreachable

_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecINtNtNtNtB8_11collections5btree3map8BTreeMapNtNtB8_6string6StringB1o_EE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter7sources4once4OnceBG_EECskXtk6F4WjxZ_4just.exit: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtNtB6_11collections5btree3map8BTreeMapNtNtB6_6string6StringB1m_EE7reserveCskXtk6F4WjxZ_4just.exit.i, %.lr.ph.split.i.i.i
  %.val5.i.i.i = phi i64 [ %i.o, %.lr.ph.split.i.i.i ], [ %i.b, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtNtB6_11collections5btree3map8BTreeMapNtNtB6_6string6StringB1m_EE7reserveCskXtk6F4WjxZ_4just.exit.i ]
  store i64 %.val5.i.i.i, ptr %i.a, align 8, !alias.scope !102515, !noalias !102520
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB6_3VecNtNtB8_6string6StringEINtB4_10SpecExtendBT_INtNtNtNtCsj6eKBz9Db1c_4core4iter7sources4once4OnceBT_EE11spec_extendCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102542)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102543)
  %.val.i = load i64, ptr %1, align 8, !range !37, !alias.scope !102543, !noundef !28 ; 4 uses
end_hunk_1
