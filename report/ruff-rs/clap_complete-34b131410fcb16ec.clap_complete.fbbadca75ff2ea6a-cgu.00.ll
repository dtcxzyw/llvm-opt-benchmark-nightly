Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/clap_complete-34b131410fcb16ec.clap_complete.fbbadca75ff2ea6a-cgu.00?download=true
inline.NumInlined: 579
inline.NumDeleted: 316
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlattenINtNtB7_10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgENCNvNtNtNtCslBX3rbrQpFC_13clap_complete3aot9generator5utils26shorts_and_visible_aliases0EENtNtNtB9_6traits8iterator8Iterator4nextB2X_:bb.a
          cleanup
  store ptr null, ptr %i.y, align 8, !alias.scope !1208
  br label %common.resume.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEEECslBX3rbrQpFC_13clap_complete.exit.i7.i: ; preds = %bb.l
  store ptr null, ptr %i.y, align 8, !alias.scope !1208
  br label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEcNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECslBX3rbrQpFC_13clap_complete.exit8.i

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEcNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECslBX3rbrQpFC_13clap_complete.exit8.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEEECslBX3rbrQpFC_13clap_complete.exit.i7.i, %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB12_3ops8function6FnOnceTQB5_EE9call_onceCslBX3rbrQpFC_13clap_complete.exit.i5.i, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgENCNvNtNtNtCslBX3rbrQpFC_13clap_complete3aot9generator5utils26shorts_and_visible_aliases0EEINtB5_8FuseImplBY_E4nextB2R_.exit.thread.i
  %.sroa.0.0.i6.i = phi i32 [ -1, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgENCNvNtNtNtCslBX3rbrQpFC_13clap_complete3aot9generator5utils26shorts_and_visible_aliases0EEINtB5_8FuseImplBY_E4nextB2R_.exit.thread.i ], [ -1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEEECslBX3rbrQpFC_13clap_complete.exit.i7.i ], [ %i.ag, %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB12_3ops8function6FnOnceTQB5_EE9call_onceCslBX3rbrQpFC_13clap_complete.exit.i5.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1191
  br label %_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgENCNvNtNtNtCslBX3rbrQpFC_13clap_complete3aot9generator5utils26shorts_and_visible_aliases0EINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEENtNtNtB9_6traits8iterator8Iterator4nextB34_.exit

bb.n:                                             ; preds = %bb.j
  %i.ai = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.4.0.copyload.i, ptr %0, align 8, !alias.scope !1191
  store ptr %.sroa.4.0.copyload.i, ptr %i.d, align 8, !alias.scope !1191
  store i64 %i.t, ptr %.sroa.617.0..sroa_idx18.i, align 8, !alias.scope !1191
  store ptr %i.v, ptr %i.c, align 8, !alias.scope !1191
  br label %common.resume.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEEECslBX3rbrQpFC_13clap_complete.exit.i: ; preds = %bb.j, %bb.i
  store ptr %.sroa.4.0.copyload.i, ptr %0, align 8, !alias.scope !1191
  store ptr %.sroa.4.0.copyload.i, ptr %i.d, align 8, !alias.scope !1191
  store i64 %i.t, ptr %.sroa.617.0..sroa_idx18.i, align 8, !alias.scope !1191
  store ptr %i.v, ptr %i.c, align 8, !alias.scope !1191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1191
  call void @llvm.experimental.noalias.scope.decl(metadata !1193)
  br label %bb.b

_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgENCNvNtNtNtCslBX3rbrQpFC_13clap_complete3aot9generator5utils26shorts_and_visible_aliases0EINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEENtNtNtB9_6traits8iterator8Iterator4nextB34_.exit: ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEcNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECslBX3rbrQpFC_13clap_complete.exit.i, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEcNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECslBX3rbrQpFC_13clap_complete.exit8.i
  %.sroa.0.0.i = phi i32 [ %.sroa.0.0.i6.i, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEcNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECslBX3rbrQpFC_13clap_complete.exit8.i ], [ %i.n, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEcNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECslBX3rbrQpFC_13clap_complete.exit.i ]
  ret i32 %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvXsX_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_5SplitReENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCslBX3rbrQpFC_13clap_complete(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(128) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1229)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 121 ; 3 uses
  %i.c = load i8, ptr %i.b, align 1, !range !15, !alias.scope !1229, !noundef !3
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCslBX3rbrQpFC_13clap_complete.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.val.i = load ptr, ptr %i.e, align 8, !alias.scope !1229, !nonnull !3, !noundef !3 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val1.i = load i64, ptr %i.f, align 8, !alias.scope !1229, !noundef !3 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1229
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1230)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1231)
  %i.g = load i64, ptr %0, align 8, !range !13, !alias.scope !1232, !noundef !3
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %i.h, label %bb.l, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %i.k = load i8, ptr %i.j, align 2, !range !15, !alias.scope !1233, !noundef !3
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %.promoted.i.i = load i64, ptr %i.i, align 8, !alias.scope !1232 ; 13 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %.promoted26.i.i = load i8, ptr %i.m, align 8, !alias.scope !1233 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1234)
  %i.n = trunc nuw i8 %.promoted26.i.i to i1      ; 2 uses
  %i.o = icmp eq i64 %.promoted.i.i, 0
  br i1 %i.o, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %.not.i.i.i.peel.i = icmp ult i64 %.promoted.i.i, %.val1.i
  br i1 %.not.i.i.i.peel.i, label %bb.d, label %.split.i.i.i.peel.i

.split.i.i.i.peel.i:                              ; preds = %bb.c
  %i.p = icmp eq i64 %.promoted.i.i, %.val1.i
  br i1 %i.p, label %bb.e, label %.loopexit.i

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.promoted.i.i
  %i.r = load i8, ptr %i.q, align 1, !alias.scope !1235, !noalias !1236, !noundef !3
  %i.s = icmp sgt i8 %i.r, -65
  br i1 %i.s, label %bb.e, label %.loopexit.i

bb.e:                                             ; preds = %bb.d, %.split.i.i.i.peel.i, %.lr.ph.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.promoted.i.i ; 4 uses
  %i.u = icmp samesign eq i64 %.promoted.i.i, %.val1.i
  br i1 %i.u, label %.loopexit19.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i8, ptr %i.t, align 1, !noalias !1237, !noundef !3 ; 5 uses
  %i.w = icmp sgt i8 %i.v, -1
  br i1 %i.w, label %bb.g, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslBX3rbrQpFC_13clap_complete.exit12.i.i.i.peel.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslBX3rbrQpFC_13clap_complete.exit12.i.i.i.peel.i: ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.y = and i8 %i.v, 31
  %i.z = zext nneg i8 %i.y to i32                 ; 3 uses
  %i.aa = add nuw nsw i64 %.promoted.i.i, 1
  %i.ab = icmp samesign ne i64 %i.aa, %.val1.i
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = load i8, ptr %i.x, align 1, !noalias !1237, !noundef !3
  %i.ad = shl nuw nsw i32 %i.z, 6
  %i.ae = and i8 %i.ac, 63
  %i.af = zext nneg i8 %i.ae to i32               ; 2 uses
  %i.ag = or disjoint i32 %i.ad, %i.af
  %i.ah = icmp samesign ugt i8 %i.v, -33
  br i1 %i.ah, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslBX3rbrQpFC_13clap_complete.exit14.i.i.i.peel.i, label %bb.h

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslBX3rbrQpFC_13clap_complete.exit14.i.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslBX3rbrQpFC_13clap_complete.exit12.i.i.i.peel.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.aj = add nuw nsw i64 %.promoted.i.i, 2
  %i.ak = icmp samesign ne i64 %i.aj, %.val1.i
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = load i8, ptr %i.ai, align 1, !noalias !1237, !noundef !3
  %i.am = shl nuw nsw i32 %i.af, 6
  %i.an = and i8 %i.al, 63
  %i.ao = zext nneg i8 %i.an to i32
  %i.ap = or disjoint i32 %i.am, %i.ao            ; 2 uses
  %i.aq = shl nuw nsw i32 %i.z, 12
  %i.ar = or disjoint i32 %i.ap, %i.aq
  %i.as = icmp samesign ugt i8 %i.v, -17
  br i1 %i.as, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslBX3rbrQpFC_13clap_complete.exit16.i.i.i.peel.i, label %bb.h

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslBX3rbrQpFC_13clap_complete.exit16.i.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslBX3rbrQpFC_13clap_complete.exit14.i.i.i.peel.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.t, i64 3
  %i.au = add nuw nsw i64 %.promoted.i.i, 3
  %i.av = icmp samesign ne i64 %i.au, %.val1.i
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = load i8, ptr %i.at, align 1, !noalias !1237, !noundef !3
  %i.ax = shl nuw nsw i32 %i.z, 18
  %i.ay = and i32 %i.ax, 1835008
  %i.az = shl nuw nsw i32 %i.ap, 6
  %i.ba = and i8 %i.aw, 63
  %i.bb = zext nneg i8 %i.ba to i32
  %i.bc = or disjoint i32 %i.az, %i.bb
  %i.bd = or disjoint i32 %i.bc, %i.ay
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.be = zext nneg i8 %i.v to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslBX3rbrQpFC_13clap_complete.exit16.i.i.i.peel.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslBX3rbrQpFC_13clap_complete.exit14.i.i.i.peel.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslBX3rbrQpFC_13clap_complete.exit12.i.i.i.peel.i
  %.sroa.4.0.i.ph.i.i.peel.i = phi i32 [ %i.ar, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslBX3rbrQpFC_13clap_complete.exit14.i.i.i.peel.i ], [ %i.bd, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslBX3rbrQpFC_13clap_complete.exit16.i.i.i.peel.i ], [ %i.ag, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslBX3rbrQpFC_13clap_complete.exit12.i.i.i.peel.i ], [ %i.be, %bb.g ] ; 4 uses
  %i.bf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 1114112
  tail call void @llvm.assume(i1 %i.bf)
  br i1 %i.n, label %.sink.split.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 128
  br i1 %i.bg, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 2048
  br i1 %i.bh, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 65536
  %..i.i.peel.i = select i1 %i.bi, i64 3, i64 4
  br label %bb.m

bb.l:                                             ; preds = %bb.b
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !1232, !noundef !3
  %i.bl = icmp eq i64 %i.bk, -1
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !1232, !nonnull !3, !noundef !3 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !1232, !noundef !3 ; 2 uses
  br i1 %i.bl, label %bb.t, label %bb.u

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.sroa.01.0.i.i.peel.i = phi i64 [ 2, %bb.j ], [ %..i.i.peel.i, %bb.k ], [ 1, %bb.i ]
  %i.bq = add i64 %.sroa.01.0.i.i.peel.i, %.promoted.i.i ; 16 uses
  store i64 %i.bq, ptr %i.i, align 8, !alias.scope !1238
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1239)
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not.i.i.i.i = icmp ult i64 %i.bq, %.val1.i
  br i1 %.not.i.i.i.i, label %bb.o, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.n
  %i.bs = icmp eq i64 %i.bq, %.val1.i
  br i1 %i.bs, label %bb.p, label %.loopexit.i

bb.o:                                             ; preds = %bb.n
  %i.bt = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.bq
  %i.bu = load i8, ptr %i.bt, align 1, !alias.scope !1235, !noalias !1240, !noundef !3
  %i.bv = icmp sgt i8 %i.bu, -65
  br i1 %i.bv, label %bb.p, label %.loopexit.i

bb.p:                                             ; preds = %bb.o, %.split.i.i.i.i, %bb.m
  %i.bw = icmp samesign eq i64 %i.bq, %.val1.i
  br i1 %i.bw, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bx = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.bq
  %i.by = load i8, ptr %i.bx, align 1, !noalias !1241, !noundef !3 ; 3 uses
  %i.bz = icmp sgt i8 %i.by, -1
  br i1 %i.bz, label %.sink.split.i, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslBX3rbrQpFC_13clap_complete.exit12.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslBX3rbrQpFC_13clap_complete.exit12.i.i.i.i: ; preds = %bb.q
  %i.ca = add nuw nsw i64 %i.bq, 1
  %i.cb = icmp samesign ne i64 %i.ca, %.val1.i
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = icmp samesign ugt i8 %i.by, -33
  br i1 %i.cc, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslBX3rbrQpFC_13clap_complete.exit14.i.i.i.i, label %.sink.split.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslBX3rbrQpFC_13clap_complete.exit14.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslBX3rbrQpFC_13clap_complete.exit12.i.i.i.i
  %i.cd = add nuw nsw i64 %i.bq, 2
  %i.ce = icmp samesign ne i64 %i.cd, %.val1.i
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = icmp samesign ugt i8 %i.by, -17
  br i1 %i.cf, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslBX3rbrQpFC_13clap_complete.exit16.i.i.i.i, label %.sink.split.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslBX3rbrQpFC_13clap_complete.exit16.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslBX3rbrQpFC_13clap_complete.exit14.i.i.i.i
  %i.cg = add nuw nsw i64 %i.bq, 3
  %i.ch = icmp samesign ne i64 %i.cg, %.val1.i
  tail call void @llvm.assume(i1 %i.ch)
  br label %.sink.split.i

.loopexit.i:                                      ; preds = %bb.o, %.split.i.i.i.i, %bb.d, %.split.i.i.i.peel.i
  %.lcssa15.i = phi i8 [ %.promoted26.i.i, %.split.i.i.i.peel.i ], [ %.promoted26.i.i, %bb.d ], [ 1, %.split.i.i.i.i ], [ 1, %bb.o ]
  %.lcssa12.i = phi i64 [ %.promoted.i.i, %.split.i.i.i.peel.i ], [ %.promoted.i.i, %bb.d ], [ %i.bq, %.split.i.i.i.i ], [ %i.bq, %bb.o ]
  %i.ci = xor i8 %.lcssa15.i, 1
  store i8 %i.ci, ptr %i.m, align 8, !alias.scope !1233
  tail call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i, i64 noundef %.lcssa12.i, i64 noundef %.val1.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #19, !noalias !1240
  unreachable

.loopexit19.i:                                    ; preds = %bb.e
  %i.cj = xor i8 %.promoted26.i.i, 1
  store i8 %i.cj, ptr %i.m, align 8, !alias.scope !1233
  br i1 %i.n, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.loopexit19.i
  store i8 1, ptr %i.j, align 2, !alias.scope !1233
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i.i

.sink.split.i:                                    ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslBX3rbrQpFC_13clap_complete.exit12.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslBX3rbrQpFC_13clap_complete.exit14.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslBX3rbrQpFC_13clap_complete.exit16.i.i.i.i, %bb.q, %bb.h
  %.lcssa14.i = phi i64 [ %.promoted.i.i, %bb.h ], [ %i.bq, %bb.q ], [ %i.bq, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslBX3rbrQpFC_13clap_complete.exit16.i.i.i.i ], [ %i.bq, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslBX3rbrQpFC_13clap_complete.exit14.i.i.i.i ], [ %i.bq, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslBX3rbrQpFC_13clap_complete.exit12.i.i.i.i ]
  store i8 0, ptr %i.m, align 8, !alias.scope !1233
  br label %bb.s

bb.s:                                             ; preds = %.sink.split.i, %.loopexit19.i, %bb.p
  %1 = phi i64 [ %.lcssa14.i, %.sink.split.i ], [ %.val1.i, %.loopexit19.i ], [ %.val1.i, %bb.p ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.ck, align 8, !alias.scope !1230, !noalias !1229
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %1, ptr %i.cl, align 8, !alias.scope !1230, !noalias !1229
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i.i

_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i.i: ; preds = %bb.s, %bb.r, %.preheader.i.i
  %storemerge.i.i = phi i64 [ 1, %bb.s ], [ 0, %bb.r ], [ 0, %.preheader.i.i ]
  store i64 %storemerge.i.i, ptr %i.a, align 8, !alias.scope !1230, !noalias !1229
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i

bb.t:                                             ; preds = %bb.l
  call fastcc void @_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslBX3rbrQpFC_13clap_complete(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(64) %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bn, i64 noundef %i.bp, i1 noundef zeroext true)
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i

bb.u:                                             ; preds = %bb.l
  call fastcc void @_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslBX3rbrQpFC_13clap_complete(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(64) %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bn, i64 noundef %i.bp, i1 noundef zeroext false)
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i

_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i: ; preds = %bb.u, %bb.t, %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i.i
  %i.cm = load i64, ptr %i.a, align 8, !range !13, !noalias !1229, !noundef !3
  %i.cn = trunc nuw i64 %i.cm to i1
  br i1 %i.cn, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !noalias !1229, !noundef !3
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !noalias !1229, !noundef !3
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !alias.scope !1229, !noundef !3 ; 2 uses
  %i.cu = sub nuw i64 %i.cp, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.ct
  store i64 %i.cr, ptr %i.cs, align 8, !alias.scope !1229
  br label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE7get_endCslBX3rbrQpFC_13clap_complete.exit.i

bb.w:                                             ; preds = %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i
  %i.cw = load i8, ptr %i.b, align 1, !range !15, !alias.scope !1242, !noundef !3
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE7get_endCslBX3rbrQpFC_13clap_complete.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i8 1, ptr %i.b, align 1, !alias.scope !1242
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cz = load i8, ptr %i.cy, align 8, !range !15, !alias.scope !1242, !noundef !3
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %._crit_edge.i.i, label %bb.y

._crit_edge.i.i:                                  ; preds = %bb.x
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !1242
  %.phi.trans.insert2.i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.pre3.i.i = load i64, ptr %.phi.trans.insert2.i.i, align 8, !alias.scope !1242
  br label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.dc = load i64, ptr %i.db, align 8, !alias.scope !1242, !noundef !3 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.de = load i64, ptr %i.dd, align 8, !alias.scope !1242, !noundef !3 ; 2 uses
  %.not.i.i = icmp eq i64 %i.dc, %i.de
  br i1 %.not.i.i, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE7get_endCslBX3rbrQpFC_13clap_complete.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge.i.i
  %i.df = phi i64 [ %.pre3.i.i, %._crit_edge.i.i ], [ %i.dc, %bb.y ]
  %i.dg = phi i64 [ %.pre.i.i, %._crit_edge.i.i ], [ %i.de, %bb.y ] ; 2 uses
  %.val.i.i = load ptr, ptr %i.e, align 8, !alias.scope !1242, !nonnull !3, !noundef !3
  %i.dh = sub nuw i64 %i.df, %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.dg
  br label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE7get_endCslBX3rbrQpFC_13clap_complete.exit.i

_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE7get_endCslBX3rbrQpFC_13clap_complete.exit.i: ; preds = %bb.z, %bb.y, %bb.w, %bb.v
  %.sroa.4.0.i = phi i64 [ %i.cu, %bb.v ], [ %i.dh, %bb.z ], [ undef, %bb.y ], [ undef, %bb.w ]
  %.sroa.0.0.i = phi ptr [ %i.cv, %bb.v ], [ %i.di, %bb.z ], [ null, %bb.y ], [ null, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1229
  br label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCslBX3rbrQpFC_13clap_complete.exit

_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCslBX3rbrQpFC_13clap_complete.exit: ; preds = %bb.a, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE7get_endCslBX3rbrQpFC_13clap_complete.exit.i
  %.sroa.4.1.i = phi i64 [ %.sroa.4.0.i, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE7get_endCslBX3rbrQpFC_13clap_complete.exit.i ], [ undef, %bb.a ]
  %.sroa.0.1.i = phi ptr [ %.sroa.0.0.i, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE7get_endCslBX3rbrQpFC_13clap_complete.exit.i ], [ null, %bb.a ]
  %i.dj = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1.i, 0
  %i.dk = insertvalue { ptr, i64 } %i.dj, i64 %.sroa.4.1.i, 1
  ret { ptr, i64 } %i.dk
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterReENCNCNvNtNtNtCslBX3rbrQpFC_13clap_complete3aot9generator5utils25longs_and_visible_aliases00EE9from_iterB3m_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val3 = load ptr, ptr %i.f, align 8, !nonnull !3, !noundef !3
  %i.g = ptrtoint ptr %.val3 to i64
  %i.h = ptrtoint ptr %.val to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 4                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslBX3rbrQpFC_13clap_complete(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.j, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.a
  %i.k = load i64, ptr %i.b, align 8, !range !13, !noundef !3
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !14, !noundef !3 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.l, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %.noexc
  %i.p = load i64, ptr %i.o, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.p) #19
          to label %.noexc4 unwind label %bb.j

.noexc4:                                          ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %.noexc
  %i.q = load ptr, ptr %i.o, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.r = icmp ule i64 %i.j, %i.n
  tail call void @llvm.assume(i1 %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.n, ptr %i.d, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.q, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  store i64 0, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1250)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1252)
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val.i.i = load ptr, ptr %i.u, align 8, !alias.scope !1253, !nonnull !3, !noundef !3
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.val5.i.i = load ptr, ptr %i.v, align 8, !alias.scope !1253, !nonnull !3, !noundef !3
  %i.w = ptrtoint ptr %.val5.i.i to i64
  %i.x = ptrtoint ptr %.val.i.i to i64
  %i.y = sub nuw i64 %i.w, %i.x
  %i.z = lshr exact i64 %i.y, 4                   ; 2 uses
  %i.aa = icmp ugt i64 %i.z, %i.n
  br i1 %i.aa, label %bb.d, label %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterReENCNCNvNtNtNtCslBX3rbrQpFC_13clap_complete3aot9generator5utils25longs_and_visible_aliases00EEB2L_.exit.i, !prof !5

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECslBX3rbrQpFC_13clap_complete(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 0, i64 noundef %i.z, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCslBX3rbrQpFC_13clap_complete.exit_crit_edge.i.i unwind label %bb.e, !noalias !1253

._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCslBX3rbrQpFC_13clap_complete.exit_crit_edge.i.i: ; preds = %bb.d
  %.pre.i.i = load i64, ptr %i.t, align 8, !alias.scope !1254
  %.pre = load ptr, ptr %i.s, align 8, !alias.scope !1254
  br label %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterReENCNCNvNtNtNtCslBX3rbrQpFC_13clap_complete3aot9generator5utils25longs_and_visible_aliases00EEB2L_.exit.i

bb.e:                                             ; preds = %bb.d
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCslBX3rbrQpFC_13clap_complete(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterReENCNCNvNtNtNtCslBX3rbrQpFC_13clap_complete3aot9generator5utils25longs_and_visible_aliases00EEB2L_.exit.i: ; preds = %._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCslBX3rbrQpFC_13clap_complete.exit_crit_edge.i.i, %bb.c
  %i.ac = phi ptr [ %.pre, %._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCslBX3rbrQpFC_13clap_complete.exit_crit_edge.i.i ], [ %i.q, %bb.c ]
  %i.ad = phi i64 [ %.pre.i.i, %._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCslBX3rbrQpFC_13clap_complete.exit_crit_edge.i.i ], [ 0, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1255
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ac, ptr %i.ae, align 8, !noalias !1255
  store ptr %i.t, ptr %i.a, align 8, !noalias !1255
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.ad, ptr %i.af, align 8, !noalias !1255
  invoke void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterReENCNCNvNtNtNtCslBX3rbrQpFC_13clap_complete3aot9generator5utils25longs_and_visible_aliases00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3g_8for_each4callNtNtB14_6string6StringNCINvMsj_B12_INtB12_3VecB4j_E14extend_trustedBN_E0E0EB1Z_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterReENCNCNvNtNtNtCslBX3rbrQpFC_13clap_complete3aot9generator5utils25longs_and_visible_aliases00EEB2L_.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.ag, %bb.g ], [ %lpad.thr_comm.i.i, %bb.e ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECslBX3rbrQpFC_13clap_complete(ptr noalias noundef align 8 dereferenceable(24) %i.d) #21
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterReENCNCNvNtNtNtCslBX3rbrQpFC_13clap_complete3aot9generator5utils25longs_and_visible_aliases00EEB2b_.exit unwind label %bb.i

bb.h:                                             ; preds = %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterReENCNCNvNtNtNtCslBX3rbrQpFC_13clap_complete3aot9generator5utils25longs_and_visible_aliases00EEB2L_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.i:                                             ; preds = %bb.j, %.body
  %i.ah = landingpad { ptr, i32 }
end_hunk_0
