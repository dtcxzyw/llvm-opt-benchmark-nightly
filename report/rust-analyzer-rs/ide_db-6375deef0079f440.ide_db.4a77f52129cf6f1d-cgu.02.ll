Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_db-6375deef0079f440.ide_db.4a77f52129cf6f1d-cgu.02?download=true
inline.NumInlined: 1320
inline.NumDeleted: 707
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RINvXs9_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4foldINtB6_7ShifterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB6_10TypeFolderB10_E11fold_binderNtNtB14_2ty2TyECs6oosyzwIepl_6ide_db:bb.a
bb.e:                                             ; preds = %bb.c
  store i32 %i.g, ptr %i.a, align 8
  %i.i = insertvalue { ptr, ptr } poison, ptr %i.e, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr %2, 1
  ret { ptr, ptr } %i.j
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB6_5LocalEENtNtCshzWfHUSfYae_4core4hash4Hash10hash_sliceNtCsh04pLiDBs3j_10rustc_hash8FxHasherECs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2) unnamed_addr #0 !guid !1172 {
bb.a:
  %.idx = mul nuw nsw i64 %1, 24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.pre4 = load i64, ptr %2, align 8, !alias.scope !1173
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvXsT_NtCs8K4cjrcxBsw_6hir_ty3mirINtB6_14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB6_5LocalEENtNtCshzWfHUSfYae_4core4hash4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherECs6oosyzwIepl_6ide_db.exit
  %i.c = phi i64 [ %i.ao, %_RINvXsT_NtCs8K4cjrcxBsw_6hir_ty3mirINtB6_14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB6_5LocalEENtNtCshzWfHUSfYae_4core4hash4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherECs6oosyzwIepl_6ide_db.exit ], [ %.pre4, %.lr.ph.preheader ]
  %.sroa.0.03 = phi ptr [ %i.d, %_RINvXsT_NtCs8K4cjrcxBsw_6hir_ty3mirINtB6_14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB6_5LocalEENtNtCshzWfHUSfYae_4core4hash4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherECs6oosyzwIepl_6ide_db.exit ], [ %0, %.lr.ph.preheader ] ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1175)
  %i.e = load i8, ptr %.sroa.0.03, align 8, !range !35, !alias.scope !1174, !noundef !10 ; 2 uses
  %i.f = zext nneg i8 %i.e to i64
  %i.g = add i64 %i.c, %i.f
  %i.h = mul i64 %i.g, -1065810590584100411       ; 6 uses
  store i64 %i.h, ptr %2, align 8, !alias.scope !1173
  switch i8 %i.e, label %default.unreachable [
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.d
    i8 4, label %bb.e
    i8 5, label %bb.f
    i8 0, label %_RINvXsT_NtCs8K4cjrcxBsw_6hir_ty3mirINtB6_14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB6_5LocalEENtNtCshzWfHUSfYae_4core4hash4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherECs6oosyzwIepl_6ide_db.exit
  ]

default.unreachable:                              ; preds = %.lr.ph
  unreachable

bb.b:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 4
  %i.j = load i32, ptr %i.i, align 4, !alias.scope !1174, !noundef !10
  %i.k = zext i32 %i.j to i64
  %i.l = add i64 %i.h, %i.k
  %i.m = mul i64 %i.l, -1065810590584100411       ; 2 uses
  store i64 %i.m, ptr %2, align 8, !alias.scope !1176
  br label %_RINvXsT_NtCs8K4cjrcxBsw_6hir_ty3mirINtB6_14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB6_5LocalEENtNtCshzWfHUSfYae_4core4hash4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherECs6oosyzwIepl_6ide_db.exit

bb.c:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 4
  tail call void @_RINvXs9_Csbq3eHDLgq0Z_8la_arenaINtB6_3IdxNtNtCs8K4cjrcxBsw_6hir_ty3mir5LocalENtNtCshzWfHUSfYae_4core4hash4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherECs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2)
  %.pre = load i64, ptr %2, align 8, !alias.scope !1173
  br label %_RINvXsT_NtCs8K4cjrcxBsw_6hir_ty3mirINtB6_14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB6_5LocalEENtNtCshzWfHUSfYae_4core4hash4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherECs6oosyzwIepl_6ide_db.exit

bb.d:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 8
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !1174, !noundef !10
  %i.q = add i64 %i.p, %i.h
  %i.r = mul i64 %i.q, -1065810590584100411
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 1
  %i.t = load i8, ptr %i.s, align 1, !range !36, !alias.scope !1174, !noundef !10
  %i.u = zext nneg i8 %i.t to i64
  %i.v = add i64 %i.r, %i.u
  %i.w = mul i64 %i.v, -1065810590584100411       ; 2 uses
  store i64 %i.w, ptr %2, align 8, !alias.scope !1177
  br label %_RINvXsT_NtCs8K4cjrcxBsw_6hir_ty3mirINtB6_14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB6_5LocalEENtNtCshzWfHUSfYae_4core4hash4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherECs6oosyzwIepl_6ide_db.exit

bb.e:                                             ; preds = %.lr.ph
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 8
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !1174, !noundef !10
  %i.z = add i64 %i.y, %i.h
  %i.aa = mul i64 %i.z, -1065810590584100411
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !1174, !noundef !10
  %i.ad = add i64 %i.aa, %i.ac
  %i.ae = mul i64 %i.ad, -1065810590584100411     ; 2 uses
  store i64 %i.ae, ptr %2, align 8, !alias.scope !1178
  br label %_RINvXsT_NtCs8K4cjrcxBsw_6hir_ty3mirINtB6_14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB6_5LocalEENtNtCshzWfHUSfYae_4core4hash4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherECs6oosyzwIepl_6ide_db.exit

bb.f:                                             ; preds = %.lr.ph
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1180)
  %i.ag = load i32, ptr %i.af, align 4, !range !37, !alias.scope !1181, !noundef !10
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = add i64 %i.h, %i.ah
  %i.aj = mul i64 %i.ai, -1065810590584100411
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !1181
  %i.am = add i64 %i.aj, %i.al
  %i.an = mul i64 %i.am, -1065810590584100411     ; 2 uses
  store i64 %i.an, ptr %2, align 8, !alias.scope !1182
  br label %_RINvXsT_NtCs8K4cjrcxBsw_6hir_ty3mirINtB6_14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB6_5LocalEENtNtCshzWfHUSfYae_4core4hash4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherECs6oosyzwIepl_6ide_db.exit

_RINvXsT_NtCs8K4cjrcxBsw_6hir_ty3mirINtB6_14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB6_5LocalEENtNtCshzWfHUSfYae_4core4hash4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherECs6oosyzwIepl_6ide_db.exit: ; preds = %.lr.ph, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %i.ao = phi i64 [ %i.h, %.lr.ph ], [ %i.m, %bb.b ], [ %.pre, %bb.c ], [ %i.w, %bb.d ], [ %i.ae, %bb.e ], [ %i.an, %bb.f ]
  %i.ap = icmp eq ptr %i.d, %i.a
  br i1 %i.ap, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RINvXsT_NtCs8K4cjrcxBsw_6hir_ty3mirINtB6_14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB6_5LocalEENtNtCshzWfHUSfYae_4core4hash4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherECs6oosyzwIepl_6ide_db.exit, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYeNtCs1jFIaHZAhUD_21rustc_literal_escaper8Unescape8unescapeQNCNvYNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens6StringNtNtB1b_9token_ext8IsString19escaped_char_ranges0ECs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !1237 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 6 uses
  %i.b = alloca [12 x i8], align 4                ; 6 uses
  %i.c = alloca [12 x i8], align 4                ; 6 uses
  %i.d = icmp samesign eq i64 %1, 0
  br i1 %i.d, label %.outer._crit_edge, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load ptr, ptr %2, align 8, !nonnull !10  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !10, !align !20
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !10, !align !34 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.backedge, %.lr.ph.lr.ph
  %.sroa.43.0.ph93 = phi ptr [ %i.e, %.lr.ph.lr.ph ], [ %i.lx, %.lr.ph.backedge ] ; 33 uses
  %.sroa.040.0.ph92 = phi ptr [ %0, %.lr.ph.lr.ph ], [ %.sroa.7.04456.i, %.lr.ph.backedge ]
  %i.r = ptrtoint ptr %.sroa.43.0.ph93 to i64     ; 3 uses
  %invariant.op = sub i64 %1, %i.r
  %invariant.op192 = sub i64 %1, %i.r
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvYNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens6StringNtNtBZ_9token_ext8IsString19escaped_char_ranges0INtB7_5FnMutTINtNtB9_5range5RangejEINtNtBb_6result6ResultcNtCs1jFIaHZAhUD_21rustc_literal_escaper11EscapeErrorEEE8call_mutCs6oosyzwIepl_6ide_db.exit
  %.sroa.040.091 = phi ptr [ %.sroa.040.0.ph92, %.lr.ph ], [ %.sroa.040.1, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvYNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens6StringNtNtBZ_9token_ext8IsString19escaped_char_ranges0INtB7_5FnMutTINtNtB9_5range5RangejEINtNtBb_6result6ResultcNtCs1jFIaHZAhUD_21rustc_literal_escaper11EscapeErrorEEE8call_mutCs6oosyzwIepl_6ide_db.exit ] ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.040.091, i64 1 ; 3 uses
  %i.t = load i8, ptr %.sroa.040.091, align 1, !noalias !1238, !noundef !10 ; 5 uses
  %i.u = icmp sgt i8 %i.t, -1
  br i1 %i.u, label %.thread, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit12.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit12.i: ; preds = %bb.b
  %i.v = and i8 %i.t, 31
  %i.w = zext nneg i8 %i.v to i32                 ; 3 uses
  %i.x = icmp ne ptr %i.s, %.sroa.43.0.ph93
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.040.091, i64 2 ; 3 uses
  %i.z = load i8, ptr %i.s, align 1, !noalias !1238, !noundef !10
  %i.aa = shl nuw nsw i32 %i.w, 6
  %i.ab = and i8 %i.z, 63
  %i.ac = zext nneg i8 %i.ab to i32               ; 2 uses
  %i.ad = or disjoint i32 %i.aa, %i.ac
  %i.ae = icmp samesign ugt i8 %i.t, -33
  br i1 %i.ae, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit14.i, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.af = zext nneg i8 %i.t to i32
  br label %bb.f

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit14.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit12.i
  %i.ag = icmp ne ptr %i.y, %.sroa.43.0.ph93
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.040.091, i64 3 ; 3 uses
  %i.ai = load i8, ptr %i.y, align 1, !noalias !1238, !noundef !10
  %i.aj = shl nuw nsw i32 %i.ac, 6
  %i.ak = and i8 %i.ai, 63
  %i.al = zext nneg i8 %i.ak to i32
  %i.am = or disjoint i32 %i.aj, %i.al            ; 2 uses
  %i.an = shl nuw nsw i32 %i.w, 12
  %i.ao = or disjoint i32 %i.am, %i.an
  %i.ap = icmp samesign ugt i8 %i.t, -17
  br i1 %i.ap, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit16.i, label %bb.c

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit16.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit14.i
  %i.aq = icmp ne ptr %i.ah, %.sroa.43.0.ph93
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.040.091, i64 4
  %i.as = load i8, ptr %i.ah, align 1, !noalias !1238, !noundef !10
  %i.at = shl nuw nsw i32 %i.w, 18
  %i.au = and i32 %i.at, 1835008
  %i.av = shl nuw nsw i32 %i.am, 6
  %i.aw = and i8 %i.as, 63
  %i.ax = zext nneg i8 %i.aw to i32
  %i.ay = or disjoint i32 %i.av, %i.ax
  %i.az = or disjoint i32 %i.ay, %i.au
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit12.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit16.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit14.i
  %.sroa.040.2.ph = phi ptr [ %i.y, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit12.i ], [ %i.ah, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit14.i ], [ %i.ar, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit16.i ] ; 3 uses
  %.sroa.4.0.i.ph = phi i32 [ %i.ad, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit12.i ], [ %i.ao, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit14.i ], [ %i.az, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit16.i ] ; 7 uses
  %i.ba = icmp samesign ult i32 %.sroa.4.0.i.ph, 1114112
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = icmp samesign ult i32 %.sroa.4.0.i.ph, 128
  br i1 %i.bb, label %bb.f, label %bb.d

.outer._crit_edge:                                ; preds = %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread.i, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvYNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens6StringNtNtBZ_9token_ext8IsString19escaped_char_ranges0INtB7_5FnMutTINtNtB9_5range5RangejEINtNtBb_6result6ResultcNtCs1jFIaHZAhUD_21rustc_literal_escaper11EscapeErrorEEE8call_mutCs6oosyzwIepl_6ide_db.exit, %bb.a
  ret void

bb.d:                                             ; preds = %bb.c
  %i.bc = icmp samesign ult i32 %.sroa.4.0.i.ph, 2048
  br i1 %i.bc, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bd = icmp samesign ult i32 %.sroa.4.0.i.ph, 65536
  %. = select i1 %i.bd, i64 -3, i64 -4
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.d, %bb.e, %bb.c
  %.sroa.4.0.i.ph62 = phi i32 [ %.sroa.4.0.i.ph, %bb.d ], [ %.sroa.4.0.i.ph, %bb.e ], [ %.sroa.4.0.i.ph, %bb.c ], [ %i.af, %.thread ] ; 2 uses
  %.sroa.040.2.ph61 = phi ptr [ %.sroa.040.2.ph, %bb.d ], [ %.sroa.040.2.ph, %bb.e ], [ %.sroa.040.2.ph, %bb.c ], [ %i.s, %.thread ] ; 11 uses
  %.sroa.01.0.neg = phi i64 [ -2, %bb.d ], [ %., %bb.e ], [ -1, %bb.c ], [ -1, %.thread ]
  %.pn = ptrtoint ptr %.sroa.040.2.ph61 to i64
  %.reass = add i64 %invariant.op, %.pn
  %i.be = add i64 %.reass, %.sroa.01.0.neg        ; 8 uses
  switch i32 %.sroa.4.0.i.ph62, label %bb.g [
    i32 92, label %bb.h
    i32 34, label %bb.bo
    i32 13, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %.sroa.21.0.insert.ext.i = zext nneg i32 %.sroa.4.0.i.ph62 to i64
  %.sroa.21.0.insert.shift.i = shl nuw nsw i64 %.sroa.21.0.insert.ext.i, 32 ; 3 uses
  br label %bb.bo

bb.h:                                             ; preds = %bb.f
  %.not = icmp eq ptr %.sroa.43.0.ph93, %.sroa.040.2.ph61
  br i1 %.not, label %_RNvYeNtCs1jFIaHZAhUD_21rustc_literal_escaper8Unescape10unescape_1Cs6oosyzwIepl_6ide_db.exit, label %bb.j

bb.i:                                             ; preds = %bb.f
  br label %bb.bo

bb.j:                                             ; preds = %bb.h
  %i.bf = load i8, ptr %.sroa.040.2.ph61, align 1, !noundef !10 ; 6 uses
  %i.bg = icmp eq i8 %i.bf, 10
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.040.2.ph61, i64 1 ; 12 uses
  br i1 %i.bg, label %_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs6oosyzwIepl_6ide_db.exit32, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = icmp sgt i8 %i.bf, -1
  br i1 %i.bi, label %bb.l, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit12.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit12.i.i: ; preds = %bb.k
  %i.bj = and i8 %i.bf, 31
  %i.bk = zext nneg i8 %i.bj to i32               ; 3 uses
  %i.bl = icmp ne ptr %i.bh, %.sroa.43.0.ph93
  tail call void @llvm.assume(i1 %i.bl)
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.040.2.ph61, i64 2 ; 3 uses
  %i.bn = load i8, ptr %i.bh, align 1, !noalias !1239, !noundef !10
  %i.bo = shl nuw nsw i32 %i.bk, 6
  %i.bp = and i8 %i.bn, 63
  %i.bq = zext nneg i8 %i.bp to i32               ; 2 uses
  %i.br = or disjoint i32 %i.bo, %i.bq
  %i.bs = icmp samesign ugt i8 %i.bf, -33
  br i1 %i.bs, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit14.i.i, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bt = zext nneg i8 %i.bf to i32
  br label %bb.m

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit14.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit12.i.i
  %i.bu = icmp ne ptr %i.bm, %.sroa.43.0.ph93
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.040.2.ph61, i64 3 ; 3 uses
  %i.bw = load i8, ptr %i.bm, align 1, !noalias !1239, !noundef !10
  %i.bx = shl nuw nsw i32 %i.bq, 6
  %i.by = and i8 %i.bw, 63
  %i.bz = zext nneg i8 %i.by to i32
  %i.ca = or disjoint i32 %i.bx, %i.bz            ; 2 uses
  %i.cb = shl nuw nsw i32 %i.bk, 12
  %i.cc = or disjoint i32 %i.ca, %i.cb
  %i.cd = icmp samesign ugt i8 %i.bf, -17
  br i1 %i.cd, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit16.i.i, label %bb.m

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit16.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit14.i.i
  %i.ce = icmp ne ptr %i.bv, %.sroa.43.0.ph93
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.040.2.ph61, i64 4
  %i.cg = load i8, ptr %i.bv, align 1, !noalias !1239, !noundef !10
  %i.ch = shl nuw nsw i32 %i.bk, 18
  %i.ci = and i32 %i.ch, 1835008
  %i.cj = shl nuw nsw i32 %i.ca, 6
  %i.ck = and i8 %i.cg, 63
  %i.cl = zext nneg i8 %i.ck to i32
  %i.cm = or disjoint i32 %i.cj, %i.cl
  %i.cn = or disjoint i32 %i.cm, %i.ci
  br label %bb.m

bb.m:                                             ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit16.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit14.i.i, %bb.l, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit12.i.i
  %.sroa.040.3 = phi ptr [ %i.bh, %bb.l ], [ %i.cf, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit16.i.i ], [ %i.bv, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit14.i.i ], [ %i.bm, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit12.i.i ] ; 22 uses
  %.sroa.4.0.i.ph.i = phi i32 [ %i.bt, %bb.l ], [ %i.cn, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit16.i.i ], [ %i.cc, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit14.i.i ], [ %i.br, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit12.i.i ] ; 2 uses
  %i.co = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 1114112
  tail call void @llvm.assume(i1 %i.co)
  switch i32 %.sroa.4.0.i.ph.i, label %_RNCNvYeNtCs1jFIaHZAhUD_21rustc_literal_escaper8Unescape10unescape_1s_0Cs6oosyzwIepl_6ide_db.exit.i.fold.split [
    i32 48, label %_RNvYeNtCs1jFIaHZAhUD_21rustc_literal_escaper8Unescape10unescape_1Cs6oosyzwIepl_6ide_db.exit
    i32 34, label %bb.r
    i32 110, label %_RNCNvYeNtCs1jFIaHZAhUD_21rustc_literal_escaper8Unescape10unescape_1s_0Cs6oosyzwIepl_6ide_db.exit.i
    i32 114, label %bb.n
    i32 116, label %bb.o
    i32 92, label %bb.p
    i32 39, label %bb.q
    i32 120, label %bb.s
    i32 117, label %bb.aa
  ]

bb.n:                                             ; preds = %bb.m
  br label %_RNCNvYeNtCs1jFIaHZAhUD_21rustc_literal_escaper8Unescape10unescape_1s_0Cs6oosyzwIepl_6ide_db.exit.i

bb.o:                                             ; preds = %bb.m
  br label %_RNCNvYeNtCs1jFIaHZAhUD_21rustc_literal_escaper8Unescape10unescape_1s_0Cs6oosyzwIepl_6ide_db.exit.i

bb.p:                                             ; preds = %bb.m
  br label %_RNCNvYeNtCs1jFIaHZAhUD_21rustc_literal_escaper8Unescape10unescape_1s_0Cs6oosyzwIepl_6ide_db.exit.i

bb.q:                                             ; preds = %bb.m
  br label %_RNCNvYeNtCs1jFIaHZAhUD_21rustc_literal_escaper8Unescape10unescape_1s_0Cs6oosyzwIepl_6ide_db.exit.i

bb.r:                                             ; preds = %bb.m
  br label %_RNCNvYeNtCs1jFIaHZAhUD_21rustc_literal_escaper8Unescape10unescape_1s_0Cs6oosyzwIepl_6ide_db.exit.i

bb.s:                                             ; preds = %bb.m
  %.not.i.i.i.i = icmp eq ptr %.sroa.040.3, %.sroa.43.0.ph93
  br i1 %.not.i.i.i.i, label %_RNCNvYeNtCs1jFIaHZAhUD_21rustc_literal_escaper8Unescape10unescape_1s_0Cs6oosyzwIepl_6ide_db.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.040.3, i64 1 ; 3 uses
  %i.cq = load i8, ptr %.sroa.040.3, align 1, !noalias !1240, !noundef !10 ; 5 uses
  %i.cr = icmp sgt i8 %i.cq, -1
  br i1 %i.cr, label %bb.u, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit12.i.i.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit12.i.i.i.i.i: ; preds = %bb.t
  %i.cs = and i8 %i.cq, 31
  %i.ct = zext nneg i8 %i.cs to i32               ; 3 uses
  %i.cu = icmp ne ptr %i.cp, %.sroa.43.0.ph93
  tail call void @llvm.assume(i1 %i.cu)
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.040.3, i64 2 ; 3 uses
  %i.cw = load i8, ptr %i.cp, align 1, !noalias !1240, !noundef !10
  %i.cx = shl nuw nsw i32 %i.ct, 6
  %i.cy = and i8 %i.cw, 63
  %i.cz = zext nneg i8 %i.cy to i32               ; 2 uses
  %i.da = or disjoint i32 %i.cx, %i.cz
  %i.db = icmp samesign ugt i8 %i.cq, -33
  br i1 %i.db, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit14.i.i.i.i.i, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dc = zext nneg i8 %i.cq to i32
  br label %bb.v

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit14.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit12.i.i.i.i.i
  %i.dd = icmp ne ptr %i.cv, %.sroa.43.0.ph93
  tail call void @llvm.assume(i1 %i.dd)
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.040.3, i64 3 ; 3 uses
  %i.df = load i8, ptr %i.cv, align 1, !noalias !1240, !noundef !10
  %i.dg = shl nuw nsw i32 %i.cz, 6
  %i.dh = and i8 %i.df, 63
  %i.di = zext nneg i8 %i.dh to i32
  %i.dj = or disjoint i32 %i.dg, %i.di            ; 2 uses
  %i.dk = shl nuw nsw i32 %i.ct, 12
  %i.dl = or disjoint i32 %i.dj, %i.dk
  %i.dm = icmp samesign ugt i8 %i.cq, -17
  br i1 %i.dm, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit16.i.i.i.i.i, label %bb.v

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit16.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit14.i.i.i.i.i
  %i.dn = icmp ne ptr %i.de, %.sroa.43.0.ph93
  tail call void @llvm.assume(i1 %i.dn)
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.040.3, i64 4
  %i.dp = load i8, ptr %i.de, align 1, !noalias !1240, !noundef !10
  %i.dq = shl nuw nsw i32 %i.ct, 18
  %i.dr = and i32 %i.dq, 1835008
  %i.ds = shl nuw nsw i32 %i.dj, 6
  %i.dt = and i8 %i.dp, 63
  %i.du = zext nneg i8 %i.dt to i32
  %i.dv = or disjoint i32 %i.ds, %i.du
  %i.dw = or disjoint i32 %i.dv, %i.dr
  br label %bb.v

bb.v:                                             ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit16.i.i.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit14.i.i.i.i.i, %bb.u, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit12.i.i.i.i.i
  %.sroa.040.8 = phi ptr [ %i.cp, %bb.u ], [ %i.do, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit16.i.i.i.i.i ], [ %i.de, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit14.i.i.i.i.i ], [ %i.cv, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit12.i.i.i.i.i ] ; 8 uses
  %spec.select.i.ph.i.i.i = phi i32 [ %i.dc, %bb.u ], [ %i.dw, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit16.i.i.i.i.i ], [ %i.dl, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit14.i.i.i.i.i ], [ %i.da, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit12.i.i.i.i.i ] ; 3 uses
  %i.dx = icmp samesign ugt i32 %spec.select.i.ph.i.i.i, 57
  %i.dy = add nsw i32 %spec.select.i.ph.i.i.i, -65
  %i.dz = and i32 %i.dy, -33
  %i.ea = add nuw nsw i32 %i.dz, 10
  %i.eb = add nsw i32 %spec.select.i.ph.i.i.i, -48
  %.sroa.02.0.i.i.i.i = select i1 %i.dx, i32 %i.ea, i32 %i.eb ; 3 uses
  %i.ec = icmp ult i32 %.sroa.02.0.i.i.i.i, 16
  br i1 %i.ec, label %bb.w, label %_RNCNvYeNtCs1jFIaHZAhUD_21rustc_literal_escaper8Unescape10unescape_1s_0Cs6oosyzwIepl_6ide_db.exit.i

bb.w:                                             ; preds = %bb.v
  %.not.i42.i.i.i = icmp eq ptr %.sroa.040.8, %.sroa.43.0.ph93
  br i1 %.not.i42.i.i.i, label %_RNCNvYeNtCs1jFIaHZAhUD_21rustc_literal_escaper8Unescape10unescape_1s_0Cs6oosyzwIepl_6ide_db.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.040.8, i64 1 ; 3 uses
  %i.ee = load i8, ptr %.sroa.040.8, align 1, !noalias !1241, !noundef !10 ; 5 uses
  %i.ef = icmp sgt i8 %i.ee, -1
end_hunk_0
begin_hunk_1_@_RINvYeNtCs1jFIaHZAhUD_21rustc_literal_escaper8Unescape8unescapeQNCNvYNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens6StringNtNtB1b_9token_ext8IsString19escaped_char_ranges0ECs6oosyzwIepl_6ide_db:bb.a
  %i.ix = and i8 %i.iv, 63
  %i.iy = zext nneg i8 %i.ix to i32               ; 2 uses
  %i.iz = or disjoint i32 %i.iw, %i.iy
  %i.ja = icmp samesign ugt i8 %i.ip, -33
  br i1 %i.ja, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit14.i.i54.i.i.i, label %_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit56.i.i.i

bb.aj:                                            ; preds = %bb.ai
  %i.jb = zext nneg i8 %i.ip to i32
  br label %_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit56.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit14.i.i54.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit12.i.i52.i.i.i
  %i.jc = icmp ne ptr %i.iu, %.sroa.43.0.ph93
  tail call void @llvm.assume(i1 %i.jc)
  %i.jd = getelementptr inbounds nuw i8, ptr %i.in, i64 3 ; 3 uses
  %i.je = load i8, ptr %i.iu, align 1, !noalias !1244, !noundef !10
  %i.jf = shl nuw nsw i32 %i.iy, 6
  %i.jg = and i8 %i.je, 63
  %i.jh = zext nneg i8 %i.jg to i32
  %i.ji = or disjoint i32 %i.jf, %i.jh            ; 2 uses
  %i.jj = shl nuw nsw i32 %i.is, 12
  %i.jk = or disjoint i32 %i.ji, %i.jj
  %i.jl = icmp samesign ugt i8 %i.ip, -17
  br i1 %i.jl, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit16.i.i55.i.i.i, label %_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit56.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit16.i.i55.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit14.i.i54.i.i.i
  %i.jm = icmp ne ptr %i.jd, %.sroa.43.0.ph93
  tail call void @llvm.assume(i1 %i.jm)
  %i.jn = getelementptr inbounds nuw i8, ptr %i.in, i64 4
  %i.jo = load i8, ptr %i.jd, align 1, !noalias !1244, !noundef !10
  %i.jp = shl nuw nsw i32 %i.is, 18
  %i.jq = and i32 %i.jp, 1835008
  %i.jr = shl nuw nsw i32 %i.ji, 6
  %i.js = and i8 %i.jo, 63
  %i.jt = zext nneg i8 %i.js to i32
  %i.ju = or disjoint i32 %i.jr, %i.jt
  %i.jv = or disjoint i32 %i.ju, %i.jq
  br label %_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit56.i.i.i

_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit56.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit16.i.i55.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit14.i.i54.i.i.i, %bb.aj, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit12.i.i52.i.i.i
  %.sroa.040.7 = phi ptr [ %i.io, %bb.aj ], [ %i.jn, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit16.i.i55.i.i.i ], [ %i.jd, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit14.i.i54.i.i.i ], [ %i.iu, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit12.i.i52.i.i.i ] ; 9 uses
  %spec.select.i53.i.i.i = phi i32 [ %i.jb, %bb.aj ], [ %i.jv, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit16.i.i55.i.i.i ], [ %i.jk, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit14.i.i54.i.i.i ], [ %i.iz, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit12.i.i52.i.i.i ] ; 4 uses
  switch i32 %spec.select.i53.i.i.i, label %bb.ak [
    i32 125, label %bb.am
    i32 95, label %bb.al
  ]

bb.ak:                                            ; preds = %_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit56.i.i.i
  %i.jw = icmp samesign ugt i32 %spec.select.i53.i.i.i, 57
  %i.jx = add nsw i32 %spec.select.i53.i.i.i, -65
  %i.jy = and i32 %i.jx, -33
  %i.jz = add nuw nsw i32 %i.jy, 10
  %i.ka = add nsw i32 %spec.select.i53.i.i.i, -48
  %.sroa.02.0.i57.i.i.i = select i1 %i.jw, i32 %i.jz, i32 %i.ka ; 2 uses
  %i.kb = icmp ult i32 %.sroa.02.0.i57.i.i.i, 16
  br i1 %i.kb, label %bb.an, label %_RNCNvYeNtCs1jFIaHZAhUD_21rustc_literal_escaper8Unescape10unescape_1s_0Cs6oosyzwIepl_6ide_db.exit.i

bb.al:                                            ; preds = %bb.an, %_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit56.i.i.i
  %.sroa.025.1.i.i.i = phi i32 [ %i.kd, %bb.an ], [ %.sroa.025.067.i.i.i, %_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit56.i.i.i ]
  %.not.i51.i.i.i = icmp eq ptr %.sroa.040.7, %.sroa.43.0.ph93
  br i1 %.not.i51.i.i.i, label %_RNCNvYeNtCs1jFIaHZAhUD_21rustc_literal_escaper8Unescape10unescape_1s_0Cs6oosyzwIepl_6ide_db.exit.i, label %bb.ai

bb.am:                                            ; preds = %_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit56.i.i.i
  %i.kc = icmp sgt i32 %.sroa.025.067.i.i.i, 6
  br i1 %i.kc, label %_RNCNvYeNtCs1jFIaHZAhUD_21rustc_literal_escaper8Unescape10unescape_1s_0Cs6oosyzwIepl_6ide_db.exit.i, label %_RINvCs1jFIaHZAhUD_21rustc_literal_escaper14unicode_escapeNtNtNtCshzWfHUSfYae_4core3str4iter5CharsECs6oosyzwIepl_6ide_db.exit.i.i

bb.an:                                            ; preds = %bb.ak
  %i.kd = add i32 %.sroa.025.067.i.i.i, 1         ; 3 uses
  %i.ke = icmp sgt i32 %i.kd, 6
  br i1 %i.ke, label %bb.al, label %.outer.i.i.i

.outer.i.i.i:                                     ; preds = %bb.an
  %i.kf = shl i32 %.sroa.023.0.ph80.i.i.i, 4
  %i.kg = or disjoint i32 %.sroa.02.0.i57.i.i.i, %i.kf
  %.not.i5166.i.i.i = icmp eq ptr %.sroa.040.7, %.sroa.43.0.ph93
  br i1 %.not.i5166.i.i.i, label %_RNCNvYeNtCs1jFIaHZAhUD_21rustc_literal_escaper8Unescape10unescape_1s_0Cs6oosyzwIepl_6ide_db.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %.outer.i.i.i
  %.sroa.023.0.ph80.i.i.i = phi i32 [ %i.kg, %.outer.i.i.i ], [ %.sroa.02.0.i.i39.i.i, %.preheader.i.i.i ] ; 4 uses
  %.sroa.025.0.ph79.i.i.i = phi i32 [ %i.kd, %.outer.i.i.i ], [ 1, %.preheader.i.i.i ]
  %.promoted7278.i.i.i = phi ptr [ %.sroa.040.7, %.outer.i.i.i ], [ %.sroa.040.6, %.preheader.i.i.i ]
  br label %bb.ai

bb.ao:                                            ; preds = %bb.z
  %i.kh = shl nuw nsw i32 %.sroa.02.0.i.i.i.i, 4
  %i.ki = or disjoint i32 %.sroa.02.0.i48.i.i.i, %i.kh
  %i.kj = icmp samesign ult i32 %.sroa.02.0.i.i.i.i, 8
  %i.kk = zext nneg i32 %i.ki to i64
  %i.kl = shl nuw nsw i64 %i.kk, 32
  %.sroa.0.0.insert.insert.i.i.i = select i1 %i.kj, i64 %i.kl, i64 2305 ; 2 uses
  %i.km = lshr i64 %.sroa.0.0.insert.insert.i.i.i, 32
  %i.kn = and i64 %.sroa.0.0.insert.insert.i.i.i, 1
  br label %_RNCNvYeNtCs1jFIaHZAhUD_21rustc_literal_escaper8Unescape10unescape_1s_0Cs6oosyzwIepl_6ide_db.exit.i

_RINvCs1jFIaHZAhUD_21rustc_literal_escaper14unicode_escapeNtNtNtCshzWfHUSfYae_4core3str4iter5CharsECs6oosyzwIepl_6ide_db.exit.i.i: ; preds = %bb.am
  %i.ko = zext i32 %.sroa.023.0.ph80.i.i.i to i64
  %i.kp = icmp ugt i32 %.sroa.023.0.ph80.i.i.i, 1114111 ; 2 uses
  %i.kq = xor i32 %.sroa.023.0.ph80.i.i.i, 55296
  %i.kr = add nsw i32 %i.kq, -1114112
  %i.ks = icmp ult i32 %i.kr, -1112064
  %.sroa.7.1.i.i = select i1 %i.kp, i64 4352, i64 4096
  %narrow.i.i = select i1 %i.kp, i1 true, i1 %i.ks
  %.sroa.012.1.i.i = zext i1 %narrow.i.i to i64
  br label %_RNCNvYeNtCs1jFIaHZAhUD_21rustc_literal_escaper8Unescape10unescape_1s_0Cs6oosyzwIepl_6ide_db.exit.i

_RNCNvYeNtCs1jFIaHZAhUD_21rustc_literal_escaper8Unescape10unescape_1s_0Cs6oosyzwIepl_6ide_db.exit.i.fold.split: ; preds = %bb.m
  br label %_RNCNvYeNtCs1jFIaHZAhUD_21rustc_literal_escaper8Unescape10unescape_1s_0Cs6oosyzwIepl_6ide_db.exit.i

_RNCNvYeNtCs1jFIaHZAhUD_21rustc_literal_escaper8Unescape10unescape_1s_0Cs6oosyzwIepl_6ide_db.exit.i: ; preds = %.outer.i.i.i, %bb.al, %bb.ak, %bb.m, %_RNCNvYeNtCs1jFIaHZAhUD_21rustc_literal_escaper8Unescape10unescape_1s_0Cs6oosyzwIepl_6ide_db.exit.i.fold.split, %_RINvCs1jFIaHZAhUD_21rustc_literal_escaper14unicode_escapeNtNtNtCshzWfHUSfYae_4core3str4iter5CharsECs6oosyzwIepl_6ide_db.exit.i.i, %bb.ao, %bb.am, %bb.ah, %.preheader.i.i.i, %bb.ag, %_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit50.i.i.i, %bb.ad, %_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit.i.i.i, %bb.aa, %bb.z, %bb.w, %bb.v, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n
  %.sroa.040.4 = phi ptr [ %.sroa.040.3, %bb.q ], [ %.sroa.040.3, %bb.s ], [ %.sroa.040.8, %bb.w ], [ %.sroa.040.9, %bb.ao ], [ %.sroa.040.9, %bb.z ], [ %.sroa.040.8, %bb.v ], [ %.sroa.040.3, %bb.aa ], [ %.sroa.040.5, %bb.ad ], [ %.sroa.040.6, %.preheader.i.i.i ], [ %.sroa.040.3, %bb.p ], [ %.sroa.040.7, %bb.al ], [ %.sroa.040.3, %_RNCNvYeNtCs1jFIaHZAhUD_21rustc_literal_escaper8Unescape10unescape_1s_0Cs6oosyzwIepl_6ide_db.exit.i.fold.split ], [ %.sroa.040.7, %bb.am ], [ %.sroa.040.7, %_RINvCs1jFIaHZAhUD_21rustc_literal_escaper14unicode_escapeNtNtNtCshzWfHUSfYae_4core3str4iter5CharsECs6oosyzwIepl_6ide_db.exit.i.i ], [ %.sroa.040.6, %bb.ag ], [ %.sroa.040.6, %bb.ah ], [ %.sroa.040.6, %_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit50.i.i.i ], [ %.sroa.040.5, %_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit.i.i.i ], [ %.sroa.040.3, %bb.r ], [ %.sroa.040.3, %bb.m ], [ %.sroa.040.3, %bb.n ], [ %.sroa.040.3, %bb.o ], [ %.sroa.040.7, %bb.ak ], [ %.sroa.040.7, %.outer.i.i.i ]
  %.sroa.64.1.i = phi i64 [ 39, %bb.q ], [ 0, %bb.s ], [ 0, %bb.w ], [ %i.km, %bb.ao ], [ 0, %bb.z ], [ 0, %bb.v ], [ 0, %bb.aa ], [ 0, %bb.ad ], [ 0, %.preheader.i.i.i ], [ 92, %bb.p ], [ 0, %bb.al ], [ 0, %_RNCNvYeNtCs1jFIaHZAhUD_21rustc_literal_escaper8Unescape10unescape_1s_0Cs6oosyzwIepl_6ide_db.exit.i.fold.split ], [ 0, %bb.am ], [ %i.ko, %_RINvCs1jFIaHZAhUD_21rustc_literal_escaper14unicode_escapeNtNtNtCshzWfHUSfYae_4core3str4iter5CharsECs6oosyzwIepl_6ide_db.exit.i.i ], [ 0, %bb.ag ], [ 0, %bb.ah ], [ 0, %_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit50.i.i.i ], [ 0, %_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit.i.i.i ], [ 34, %bb.r ], [ 10, %bb.m ], [ 13, %bb.n ], [ 9, %bb.o ], [ 0, %bb.ak ], [ 0, %.outer.i.i.i ]
  %.sroa.5.1.i = phi i64 [ 0, %bb.q ], [ 1792, %bb.s ], [ 1792, %bb.w ], [ 2304, %bb.ao ], [ 2048, %bb.z ], [ 2048, %bb.v ], [ 2560, %bb.aa ], [ 3328, %bb.ad ], [ 3328, %.preheader.i.i.i ], [ 0, %bb.p ], [ 3328, %bb.al ], [ 768, %_RNCNvYeNtCs1jFIaHZAhUD_21rustc_literal_escaper8Unescape10unescape_1s_0Cs6oosyzwIepl_6ide_db.exit.i.fold.split ], [ 3840, %bb.am ], [ %.sroa.7.1.i.i, %_RINvCs1jFIaHZAhUD_21rustc_literal_escaper14unicode_escapeNtNtNtCshzWfHUSfYae_4core3str4iter5CharsECs6oosyzwIepl_6ide_db.exit.i.i ], [ 2816, %bb.ag ], [ 3072, %bb.ah ], [ 3584, %_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit50.i.i.i ], [ 2560, %_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit.i.i.i ], [ 0, %bb.r ], [ 0, %bb.m ], [ 0, %bb.n ], [ 0, %bb.o ], [ 2816, %bb.ak ], [ 3328, %.outer.i.i.i ]
  %.sroa.0.1.i = phi i64 [ 0, %bb.q ], [ 1, %bb.s ], [ 1, %bb.w ], [ %i.kn, %bb.ao ], [ 1, %bb.z ], [ 1, %bb.v ], [ 1, %bb.aa ], [ 1, %bb.ad ], [ 1, %.preheader.i.i.i ], [ 0, %bb.p ], [ 1, %bb.al ], [ 1, %_RNCNvYeNtCs1jFIaHZAhUD_21rustc_literal_escaper8Unescape10unescape_1s_0Cs6oosyzwIepl_6ide_db.exit.i.fold.split ], [ 1, %bb.am ], [ %.sroa.012.1.i.i, %_RINvCs1jFIaHZAhUD_21rustc_literal_escaper14unicode_escapeNtNtNtCshzWfHUSfYae_4core3str4iter5CharsECs6oosyzwIepl_6ide_db.exit.i.i ], [ 1, %bb.ag ], [ 1, %bb.ah ], [ 1, %_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit50.i.i.i ], [ 1, %_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit.i.i.i ], [ 0, %bb.r ], [ 0, %bb.m ], [ 0, %bb.n ], [ 0, %bb.o ], [ 1, %bb.ak ], [ 1, %.outer.i.i.i ]
  %i.kt = shl nuw i64 %.sroa.64.1.i, 32
  %i.ku = or disjoint i64 %i.kt, %.sroa.5.1.i
  %i.kv = or disjoint i64 %i.ku, %.sroa.0.1.i
  br label %_RNvYeNtCs1jFIaHZAhUD_21rustc_literal_escaper8Unescape10unescape_1Cs6oosyzwIepl_6ide_db.exit

_RNvYeNtCs1jFIaHZAhUD_21rustc_literal_escaper8Unescape10unescape_1Cs6oosyzwIepl_6ide_db.exit: ; preds = %bb.m, %bb.h, %_RNCNvYeNtCs1jFIaHZAhUD_21rustc_literal_escaper8Unescape10unescape_1s_0Cs6oosyzwIepl_6ide_db.exit.i
  %.sroa.040.10 = phi ptr [ %.sroa.040.3, %bb.m ], [ %.sroa.040.4, %_RNCNvYeNtCs1jFIaHZAhUD_21rustc_literal_escaper8Unescape10unescape_1s_0Cs6oosyzwIepl_6ide_db.exit.i ], [ %.sroa.040.2.ph61, %bb.h ]
  %.sroa.64.0.i = phi i64 [ 0, %bb.m ], [ %i.kv, %_RNCNvYeNtCs1jFIaHZAhUD_21rustc_literal_escaper8Unescape10unescape_1s_0Cs6oosyzwIepl_6ide_db.exit.i ], [ 513, %bb.h ] ; 3 uses
  %.sroa.521.0.extract.shift = and i64 %.sroa.64.0.i, -65536
  br label %bb.bo

_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs6oosyzwIepl_6ide_db.exit32: ; preds = %bb.j
  %i.kw = ptrtoint ptr %i.bh to i64
  %i.kx = sub nuw i64 %i.r, %i.kw                 ; 6 uses
  %i.ky = icmp eq ptr %i.bh, %.sroa.43.0.ph93
  br i1 %i.ky, label %.preheader.i.i.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs6oosyzwIepl_6ide_db.exit32, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCINvCs1jFIaHZAhUD_21rustc_literal_escaper21skip_ascii_whitespaceNCINvYeNtB2M_8Unescape8unescapeQNCNvYNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens6StringNtNtB4r_9token_ext8IsString19escaped_char_ranges0E0E0E0E0Cs6oosyzwIepl_6ide_db.exit.i.i
  %i.kz = phi ptr [ %i.lb, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCINvCs1jFIaHZAhUD_21rustc_literal_escaper21skip_ascii_whitespaceNCINvYeNtB2M_8Unescape8unescapeQNCNvYNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens6StringNtNtB4r_9token_ext8IsString19escaped_char_ranges0E0E0E0E0Cs6oosyzwIepl_6ide_db.exit.i.i ], [ %i.bh, %_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs6oosyzwIepl_6ide_db.exit32 ] ; 2 uses
  %i.la = phi i64 [ %i.lc, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCINvCs1jFIaHZAhUD_21rustc_literal_escaper21skip_ascii_whitespaceNCINvYeNtB2M_8Unescape8unescapeQNCNvYNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens6StringNtNtB4r_9token_ext8IsString19escaped_char_ranges0E0E0E0E0Cs6oosyzwIepl_6ide_db.exit.i.i ], [ 0, %_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs6oosyzwIepl_6ide_db.exit32 ] ; 2 uses
  %.val6.i.i = load i8, ptr %i.kz, align 1, !noalias !1245, !noundef !10
  switch i8 %.val6.i.i, label %.loopexit.i [
    i8 32, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCINvCs1jFIaHZAhUD_21rustc_literal_escaper21skip_ascii_whitespaceNCINvYeNtB2M_8Unescape8unescapeQNCNvYNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens6StringNtNtB4r_9token_ext8IsString19escaped_char_ranges0E0E0E0E0Cs6oosyzwIepl_6ide_db.exit.i.i
    i8 9, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCINvCs1jFIaHZAhUD_21rustc_literal_escaper21skip_ascii_whitespaceNCINvYeNtB2M_8Unescape8unescapeQNCNvYNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens6StringNtNtB4r_9token_ext8IsString19escaped_char_ranges0E0E0E0E0Cs6oosyzwIepl_6ide_db.exit.i.i
    i8 10, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCINvCs1jFIaHZAhUD_21rustc_literal_escaper21skip_ascii_whitespaceNCINvYeNtB2M_8Unescape8unescapeQNCNvYNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens6StringNtNtB4r_9token_ext8IsString19escaped_char_ranges0E0E0E0E0Cs6oosyzwIepl_6ide_db.exit.i.i
    i8 13, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCINvCs1jFIaHZAhUD_21rustc_literal_escaper21skip_ascii_whitespaceNCINvYeNtB2M_8Unescape8unescapeQNCNvYNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens6StringNtNtB4r_9token_ext8IsString19escaped_char_ranges0E0E0E0E0Cs6oosyzwIepl_6ide_db.exit.i.i
  ]

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCINvCs1jFIaHZAhUD_21rustc_literal_escaper21skip_ascii_whitespaceNCINvYeNtB2M_8Unescape8unescapeQNCNvYNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens6StringNtNtB4r_9token_ext8IsString19escaped_char_ranges0E0E0E0E0Cs6oosyzwIepl_6ide_db.exit.i.i: ; preds = %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kz, i64 1 ; 2 uses
  %i.lc = add nuw i64 %i.la, 1
  %i.ld = icmp eq ptr %i.lb, %.sroa.43.0.ph93
  br i1 %i.ld, label %.loopexit.i, label %.lr.ph.i.i

.loopexit.i:                                      ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCINvCs1jFIaHZAhUD_21rustc_literal_escaper21skip_ascii_whitespaceNCINvYeNtB2M_8Unescape8unescapeQNCNvYNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens6StringNtNtB4r_9token_ext8IsString19escaped_char_ranges0E0E0E0E0Cs6oosyzwIepl_6ide_db.exit.i.i, %.lr.ph.i.i
  %.sroa.09.0.i = phi i64 [ %i.la, %.lr.ph.i.i ], [ %i.kx, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCINvCs1jFIaHZAhUD_21rustc_literal_escaper21skip_ascii_whitespaceNCINvYeNtB2M_8Unescape8unescapeQNCNvYNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens6StringNtNtB4r_9token_ext8IsString19escaped_char_ranges0E0E0E0E0Cs6oosyzwIepl_6ide_db.exit.i.i ] ; 11 uses
  %i.le = icmp eq i64 %.sroa.09.0.i, 0
  br i1 %i.le, label %.preheader.i.i.thread.i, label %bb.ap

.preheader.i.i.thread.i:                          ; preds = %.loopexit.i, %_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs6oosyzwIepl_6ide_db.exit32
  %i.lf = add i64 %i.be, 2
  br label %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread.i

bb.ap:                                            ; preds = %.loopexit.i
  %.not.i.i = icmp ult i64 %.sroa.09.0.i, %i.kx
  br i1 %.not.i.i, label %bb.aq, label %.split3.i.i

.split3.i.i:                                      ; preds = %bb.ap
  %i.lg = icmp eq i64 %.sroa.09.0.i, %i.kx
  br i1 %i.lg, label %_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checked.exit.i, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.lh = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.sroa.09.0.i
  %i.li = load i8, ptr %i.lh, align 1, !alias.scope !1246, !noalias !1247, !noundef !10
  %i.lj = icmp sgt i8 %i.li, -65
  br i1 %i.lj, label %_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checked.exit.i, label %bb.as

_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checked.exit.i: ; preds = %bb.aq, %.split3.i.i
  %i.lk = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.sroa.09.0.i ; 3 uses
  %i.ll = sub i64 %i.kx, %.sroa.09.0.i            ; 3 uses
  %i.lm = add i64 %i.be, 2
  %i.ln = add i64 %i.lm, %.sroa.09.0.i            ; 5 uses
  %i.lo = icmp samesign ult i64 %.sroa.09.0.i, 16
  br i1 %i.lo, label %.lr.ph.i.i.i38, label %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.i

.lr.ph.i.i.i38:                                   ; preds = %_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checked.exit.i, %bb.ar
  %.sroa.01.05.i.i.i = phi i64 [ %i.ls, %bb.ar ], [ 0, %_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checked.exit.i ] ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.sroa.01.05.i.i.i
  %i.lq = load i8, ptr %i.lp, align 1, !alias.scope !1248, !noalias !1247, !noundef !10
  %i.lr = icmp eq i8 %i.lq, 10
  br i1 %i.lr, label %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread57.i, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i.i.i38
  %i.ls = add nuw nsw i64 %.sroa.01.05.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ls, %.sroa.09.0.i
  br i1 %exitcond.not.i.i.i, label %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread.i, label %.lr.ph.i.i.i38

_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.i: ; preds = %_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checked.exit.i
  %i.lt = tail call { i64, i64 } @_RNvNtNtCshzWfHUSfYae_4core5slice6memchr14memchr_aligned(i8 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bh, i64 noundef range(i64 0, -9223372036854775808) %.sroa.09.0.i), !noalias !1247
  %i.lu = extractvalue { i64, i64 } %i.lt, 0
  %i.lv = icmp eq i64 %i.lu, 1
  br i1 %i.lv, label %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread57.i, label %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread.i

bb.as:                                            ; preds = %bb.aq, %.split3.i.i
  tail call void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bh, i64 noundef %i.kx, i64 noundef 0, i64 noundef %.sroa.09.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #46, !noalias !1247
  unreachable

_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread.i: ; preds = %bb.ar, %_RNCINvYeNtCs1jFIaHZAhUD_21rustc_literal_escaper8Unescape8unescapeQNCNvYNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens6StringNtNtB1d_9token_ext8IsString19escaped_char_ranges0E0Cs6oosyzwIepl_6ide_db.exit.i, %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.i, %.preheader.i.i.thread.i
  %.sroa.7.04456.i = phi ptr [ %i.lk, %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.i ], [ %i.lk, %_RNCINvYeNtCs1jFIaHZAhUD_21rustc_literal_escaper8Unescape8unescapeQNCNvYNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens6StringNtNtB1d_9token_ext8IsString19escaped_char_ranges0E0Cs6oosyzwIepl_6ide_db.exit.i ], [ %i.bh, %.preheader.i.i.thread.i ], [ %i.lk, %bb.ar ] ; 6 uses
  %.sroa.9.04755.i = phi i64 [ %i.ll, %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.i ], [ %i.ll, %_RNCINvYeNtCs1jFIaHZAhUD_21rustc_literal_escaper8Unescape8unescapeQNCNvYNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens6StringNtNtB1d_9token_ext8IsString19escaped_char_ranges0E0Cs6oosyzwIepl_6ide_db.exit.i ], [ %i.kx, %.preheader.i.i.thread.i ], [ %i.ll, %bb.ar ] ; 5 uses
  %i.lw = phi i64 [ %i.ln, %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.i ], [ %i.ln, %_RNCINvYeNtCs1jFIaHZAhUD_21rustc_literal_escaper8Unescape8unescapeQNCNvYNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens6StringNtNtB1d_9token_ext8IsString19escaped_char_ranges0E0Cs6oosyzwIepl_6ide_db.exit.i ], [ %i.lf, %.preheader.i.i.thread.i ], [ %i.ln, %bb.ar ]
  %i.lx = getelementptr inbounds nuw i8, ptr %.sroa.7.04456.i, i64 %.sroa.9.04755.i
  %i.ly = icmp samesign eq i64 %.sroa.9.04755.i, 0
  br i1 %i.ly, label %.outer._crit_edge, label %bb.at

bb.at:                                            ; preds = %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread.i
  %i.lz = load i8, ptr %.sroa.7.04456.i, align 1, !noalias !1249, !noundef !10 ; 5 uses
  %i.ma = icmp sgt i8 %i.lz, -1
  br i1 %i.ma, label %bb.au, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit12.i.i33

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit12.i.i33: ; preds = %bb.at
  %i.mb = getelementptr inbounds nuw i8, ptr %.sroa.7.04456.i, i64 1
  %i.mc = and i8 %i.lz, 31
  %i.md = zext nneg i8 %i.mc to i32               ; 3 uses
  %i.me = icmp samesign ne i64 %.sroa.9.04755.i, 1
  tail call void @llvm.assume(i1 %i.me)
  %i.mf = load i8, ptr %i.mb, align 1, !noalias !1249, !noundef !10
  %i.mg = shl nuw nsw i32 %i.md, 6
  %i.mh = and i8 %i.mf, 63
  %i.mi = zext nneg i8 %i.mh to i32               ; 2 uses
  %i.mj = or disjoint i32 %i.mg, %i.mi
  %i.mk = icmp samesign ugt i8 %i.lz, -33
  br i1 %i.mk, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit14.i.i35, label %bb.ba

bb.au:                                            ; preds = %bb.at
  %i.ml = zext nneg i8 %i.lz to i32
  br label %bb.ba

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit14.i.i35: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit12.i.i33
  %i.mm = getelementptr inbounds nuw i8, ptr %.sroa.7.04456.i, i64 2
  %i.mn = icmp samesign ne i64 %.sroa.9.04755.i, 2
  tail call void @llvm.assume(i1 %i.mn)
  %i.mo = load i8, ptr %i.mm, align 1, !noalias !1249, !noundef !10
  %i.mp = shl nuw nsw i32 %i.mi, 6
  %i.mq = and i8 %i.mo, 63
  %i.mr = zext nneg i8 %i.mq to i32
  %i.ms = or disjoint i32 %i.mp, %i.mr            ; 2 uses
  %i.mt = shl nuw nsw i32 %i.md, 12
  %i.mu = or disjoint i32 %i.ms, %i.mt
  %i.mv = icmp samesign ugt i8 %i.lz, -17
  br i1 %i.mv, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit16.i.i36, label %bb.ba

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit16.i.i36: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit14.i.i35
  %i.mw = getelementptr inbounds nuw i8, ptr %.sroa.7.04456.i, i64 3
  %i.mx = icmp samesign ne i64 %.sroa.9.04755.i, 3
  tail call void @llvm.assume(i1 %i.mx)
  %i.my = load i8, ptr %i.mw, align 1, !noalias !1249, !noundef !10
  %i.mz = shl nuw nsw i32 %i.md, 18
  %i.na = and i32 %i.mz, 1835008
  %i.nb = shl nuw nsw i32 %i.ms, 6
  %i.nc = and i8 %i.my, 63
  %i.nd = zext nneg i8 %i.nc to i32
  %i.ne = or disjoint i32 %i.nb, %i.nd
  %i.nf = or disjoint i32 %i.ne, %i.na
  br label %bb.ba

_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread57.i: ; preds = %.lr.ph.i.i.i38, %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1250
  %i.ng = icmp ult i64 %i.be, 4294967296          ; 2 uses
  %i.nh = trunc nuw i64 %i.be to i32
  %.sroa.5.0.i.i.i.i = select i1 %i.ng, i32 %i.nh, i32 undef
  %.sroa.03.0.i.i.i.i = zext i1 %i.ng to i32
  %i.ni = icmp ult i64 %i.ln, 4294967296          ; 2 uses
  %i.nj = trunc nuw i64 %i.ln to i32
  %.sroa.57.0.i.i.i.i = select i1 %i.ni, i32 %i.nj, i32 undef
  %.sroa.06.0.i.i.i.i = zext i1 %i.ni to i32
  call void @_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCsuAhG64lL82_9text_size4size8TextSizeE3zipBI_ECs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.c, i32 noundef %.sroa.03.0.i.i.i.i, i32 %.sroa.5.0.i.i.i.i, i32 noundef %.sroa.06.0.i.i.i.i, i32 %.sroa.57.0.i.i.i.i), !noalias !1250
  %i.nk = load i32, ptr %i.c, align 4, !range !27, !noalias !1250, !noundef !10
  %i.nl = trunc nuw i32 %i.nk to i1
  br i1 %i.nl, label %bb.av, label %_RNCINvYeNtCs1jFIaHZAhUD_21rustc_literal_escaper8Unescape8unescapeQNCNvYNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens6StringNtNtB1d_9token_ext8IsString19escaped_char_ranges0E0Cs6oosyzwIepl_6ide_db.exit.i

bb.av:                                            ; preds = %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread57.i
  %i.nm = load i32, ptr %i.n, align 4, !noalias !1250, !noundef !10 ; 3 uses
  %i.nn = load i32, ptr %i.o, align 4, !noalias !1250, !noundef !10 ; 3 uses
  %.not.i.i.i.i37 = icmp ugt i32 %i.nm, %i.nn
  br i1 %.not.i.i.i.i37, label %bb.aw, label %bb.ax, !prof !11

bb.aw:                                            ; preds = %bb.av
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @47, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #46, !noalias !1250
  unreachable

bb.ax:                                            ; preds = %bb.av
  %i.no = load i32, ptr %i.l, align 4, !noalias !1250, !noundef !10 ; 2 uses
  %i.np = add i32 %i.no, %i.nm                    ; 2 uses
  %i.nq = icmp ult i32 %i.np, %i.nm
  br i1 %i.nq, label %bb.az, label %bb.ay, !prof !11

bb.ay:                                            ; preds = %bb.ax
  %i.nr = add i32 %i.no, %i.nn                    ; 2 uses
  %i.ns = icmp ult i32 %i.nr, %i.nn
  br i1 %i.ns, label %bb.az, label %_RNvMs1_NtCsuAhG64lL82_9text_size5rangeNtB5_9TextRange11checked_add.exit.i.i.i.i, !prof !11

_RNvMs1_NtCsuAhG64lL82_9text_size5rangeNtB5_9TextRange11checked_add.exit.i.i.i.i: ; preds = %bb.ay
  %i.nt = load ptr, ptr %i.m, align 8, !invariant.load !10, !noalias !1250, !nonnull !10
  tail call void %i.nt(ptr noundef nonnull %i.h, i32 noundef %i.np, i32 noundef %i.nr, i64 5633) #44, !noalias !1250, !inline_history !1231
  br label %_RNCINvYeNtCs1jFIaHZAhUD_21rustc_literal_escaper8Unescape8unescapeQNCNvYNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens6StringNtNtB1d_9token_ext8IsString19escaped_char_ranges0E0Cs6oosyzwIepl_6ide_db.exit.i

bb.az:                                            ; preds = %bb.ay, %bb.ax
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 28, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #46, !noalias !1250
  unreachable

_RNCINvYeNtCs1jFIaHZAhUD_21rustc_literal_escaper8Unescape8unescapeQNCNvYNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens6StringNtNtB1d_9token_ext8IsString19escaped_char_ranges0E0Cs6oosyzwIepl_6ide_db.exit.i: ; preds = %_RNvMs1_NtCsuAhG64lL82_9text_size5rangeNtB5_9TextRange11checked_add.exit.i.i.i.i, %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread57.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1250
  br label %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread.i

bb.ba:                                            ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit16.i.i36, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit14.i.i35, %bb.au, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit12.i.i33
  %.sroa.4.0.i.ph.i34 = phi i32 [ %i.mu, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit14.i.i35 ], [ %i.nf, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit16.i.i36 ], [ %i.mj, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit12.i.i33 ], [ %i.ml, %bb.au ] ; 10 uses
  %i.nu = icmp samesign ult i32 %.sroa.4.0.i.ph.i34, 1114112
  tail call void @llvm.assume(i1 %i.nu)
  %switch.tableidx = add nsw i32 %.sroa.4.0.i.ph.i34, -9 ; 2 uses
  %i.nv = icmp ult i32 %switch.tableidx, 24
  %switch.shifted = lshr i32 8388639, %switch.tableidx
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond = select i1 %i.nv, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %.thread.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.nw = icmp samesign ult i32 %.sroa.4.0.i.ph.i34, 133
  br i1 %i.nw, label %.lr.ph.backedge, label %bb.bc

.lr.ph.backedge:                                  ; preds = %bb.bb, %bb.bc, %_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data11white_space6lookup.exit.i, %_RNCINvYeNtCs1jFIaHZAhUD_21rustc_literal_escaper8Unescape8unescapeQNCNvYNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens6StringNtNtB1d_9token_ext8IsString19escaped_char_ranges0E0Cs6oosyzwIepl_6ide_db.exit28.i
  br label %.lr.ph

bb.bc:                                            ; preds = %bb.bb
  %i.nx = lshr i32 %.sroa.4.0.i.ph.i34, 8
  switch i32 %i.nx, label %.lr.ph.backedge [
    i32 0, label %bb.bf
    i32 22, label %bb.bd
    i32 32, label %bb.bg
    i32 48, label %bb.be
  ]

bb.bd:                                            ; preds = %bb.bc
  %i.ny = icmp eq i32 %.sroa.4.0.i.ph.i34, 5760
  %i.nz = zext i1 %i.ny to i8
  br label %_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data11white_space6lookup.exit.i

bb.be:                                            ; preds = %bb.bc
  %i.oa = icmp eq i32 %.sroa.4.0.i.ph.i34, 12288
  %i.ob = zext i1 %i.oa to i8
  br label %_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data11white_space6lookup.exit.i

bb.bf:                                            ; preds = %bb.bc
  %i.oc = and i32 %.sroa.4.0.i.ph.i34, 255
  %i.od = zext nneg i32 %i.oc to i64
  %i.oe = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.od
  %i.of = load i8, ptr %i.oe, align 1, !noalias !1247, !noundef !10
  br label %_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data11white_space6lookup.exit.i

bb.bg:                                            ; preds = %bb.bc
  %i.og = and i32 %.sroa.4.0.i.ph.i34, 255
  %i.oh = zext nneg i32 %i.og to i64
  %i.oi = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.oh
  %i.oj = load i8, ptr %i.oi, align 1, !noalias !1247, !noundef !10
  %i.ok = lshr i8 %i.oj, 1
  br label %_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data11white_space6lookup.exit.i

_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data11white_space6lookup.exit.i: ; preds = %bb.bg, %bb.bf, %bb.be, %bb.bd
  %.sroa.0.0.i20.i = phi i8 [ %i.ob, %bb.be ], [ %i.of, %bb.bf ], [ %i.nz, %bb.bd ], [ %i.ok, %bb.bg ]
  %i.ol = trunc i8 %.sroa.0.0.i20.i to i1
  br i1 %i.ol, label %bb.bh, label %.lr.ph.backedge

bb.bh:                                            ; preds = %_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data11white_space6lookup.exit.i
  %i.om = icmp samesign ult i32 %.sroa.4.0.i.ph.i34, 2048
  br i1 %i.om, label %.thread.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.on = icmp samesign ult i32 %.sroa.4.0.i.ph.i34, 65536
  %..i = select i1 %i.on, i64 3, i64 4
  br label %.thread.i

.thread.i:                                        ; preds = %bb.ba, %bb.bi, %bb.bh
  %.sroa.08.0.i = phi i64 [ 2, %bb.bh ], [ %..i, %bb.bi ], [ 1, %bb.ba ]
  %i.oo = add i64 %.sroa.08.0.i, %i.lw            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1251
  %i.op = icmp ult i64 %i.be, 4294967296          ; 2 uses
  %i.oq = trunc nuw i64 %i.be to i32
  %.sroa.5.0.i.i.i22.i = select i1 %i.op, i32 %i.oq, i32 undef
  %.sroa.03.0.i.i.i23.i = zext i1 %i.op to i32
  %i.or = icmp ult i64 %i.oo, 4294967296          ; 2 uses
  %i.os = trunc nuw i64 %i.oo to i32
  %.sroa.57.0.i.i.i24.i = select i1 %i.or, i32 %i.os, i32 undef
  %.sroa.06.0.i.i.i25.i = zext i1 %i.or to i32
  call void @_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCsuAhG64lL82_9text_size4size8TextSizeE3zipBI_ECs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.b, i32 noundef %.sroa.03.0.i.i.i23.i, i32 %.sroa.5.0.i.i.i22.i, i32 noundef %.sroa.06.0.i.i.i25.i, i32 %.sroa.57.0.i.i.i24.i), !noalias !1251
  %i.ot = load i32, ptr %i.b, align 4, !range !27, !noalias !1251, !noundef !10
  %i.ou = trunc nuw i32 %i.ot to i1
  br i1 %i.ou, label %bb.bj, label %_RNCINvYeNtCs1jFIaHZAhUD_21rustc_literal_escaper8Unescape8unescapeQNCNvYNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens6StringNtNtB1d_9token_ext8IsString19escaped_char_ranges0E0Cs6oosyzwIepl_6ide_db.exit28.i

bb.bj:                                            ; preds = %.thread.i
  %i.ov = load i32, ptr %i.p, align 4, !noalias !1251, !noundef !10 ; 3 uses
  %i.ow = load i32, ptr %i.q, align 4, !noalias !1251, !noundef !10 ; 3 uses
  %.not.i.i.i26.i = icmp ugt i32 %i.ov, %i.ow
  br i1 %.not.i.i.i26.i, label %bb.bk, label %bb.bl, !prof !11

bb.bk:                                            ; preds = %bb.bj
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @47, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #46, !noalias !1251
  unreachable

bb.bl:                                            ; preds = %bb.bj
  %i.ox = load i32, ptr %i.l, align 4, !noalias !1251, !noundef !10 ; 2 uses
  %i.oy = add i32 %i.ox, %i.ov                    ; 2 uses
  %i.oz = icmp ult i32 %i.oy, %i.ov
  br i1 %i.oz, label %bb.bn, label %bb.bm, !prof !11

end_hunk_1
