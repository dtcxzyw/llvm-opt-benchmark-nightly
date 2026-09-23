Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_row-eb434ee3abd1b8b8.polars_row.38394b63a722f67c-cgu.12?download=true
inline.NumInlined: 272
inline.NumDeleted: 151
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RINvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB3_13BitmapBuilder23extend_trusted_len_iterINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1G_5slice4iter4IterRShENCNvNtCs4PheDXcg4wa_10polars_row5utils16decode_opt_nullss_0EEB2W_:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.pre = load i64, ptr %i.f, align 8, !dbg !371, !alias.scope !358
  %.pre14 = load i64, ptr %i.m, align 8, !dbg !372, !alias.scope !358
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterRShENCNvNtCs4PheDXcg4wa_10polars_row5utils16decode_opt_nullss_0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit, !dbg !370

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterRShENCNvNtCs4PheDXcg4wa_10polars_row5utils16decode_opt_nullss_0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit: ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterRShENCNvNtCs4PheDXcg4wa_10polars_row5utils16decode_opt_nullss_0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit.lr.ph, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit
  %i.q = phi i64 [ %.pre14, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterRShENCNvNtCs4PheDXcg4wa_10polars_row5utils16decode_opt_nullss_0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit.lr.ph ], [ %i.al, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit ], !dbg !372
  %i.r = phi i64 [ %.pre, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterRShENCNvNtCs4PheDXcg4wa_10polars_row5utils16decode_opt_nullss_0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit.lr.ph ], [ %i.aa, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit ], !dbg !371 ; 2 uses
  %.sroa.08.013 = phi ptr [ %.val, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterRShENCNvNtCs4PheDXcg4wa_10polars_row5utils16decode_opt_nullss_0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit.lr.ph ], [ %i.s, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 16, !dbg !373 ; 2 uses
  %.val3.i = load ptr, ptr %.sroa.08.013, align 8, !dbg !374, !noalias !359, !nonnull !123, !noundef !123
  %i.t = load i8, ptr %.val3.i, align 1, !dbg !375, !noalias !359, !noundef !123
  %i.u = load i8, ptr %.sroa.6.0.copyload, align 1, !dbg !376, !noalias !359, !noundef !123
  %i.v = icmp ne i8 %i.t, %i.u, !dbg !375
  tail call void @llvm.experimental.noalias.scope.decl(metadata !358), !dbg !377
  %i.w = zext i1 %i.v to i64, !dbg !378
  %i.x = and i64 %i.r, 63, !dbg !379
  %i.y = shl nuw i64 %i.w, %i.x, !dbg !378
  %i.z = or i64 %i.y, %i.q, !dbg !372             ; 4 uses
  store i64 %i.z, ptr %i.m, align 8, !dbg !372, !alias.scope !358
  %i.aa = add i64 %i.r, 1, !dbg !380              ; 3 uses
  store i64 %i.aa, ptr %i.f, align 8, !dbg !380, !alias.scope !358
  %i.ab = and i64 %i.aa, 63, !dbg !381
  %i.ac = icmp eq i64 %i.ab, 0, !dbg !381
  br i1 %i.ac, label %bb.d, label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit, !dbg !382

bb.d:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterRShENCNvNtCs4PheDXcg4wa_10polars_row5utils16decode_opt_nullss_0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit
  %i.ad = load i64, ptr %i.n, align 8, !dbg !383, !alias.scope !358, !noundef !123 ; 3 uses
  %i.ae = icmp sgt i64 %i.ad, -1, !dbg !384
  tail call void @llvm.assume(i1 %i.ae), !dbg !385
  %i.af = load ptr, ptr %i.o, align 8, !dbg !386, !alias.scope !358, !nonnull !123, !noundef !123
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad, !dbg !387
  store i64 %i.z, ptr %i.ag, align 1, !dbg !388, !noalias !358
  %i.ah = add nuw i64 %i.ad, 8, !dbg !389
  store i64 %i.ah, ptr %i.n, align 8, !dbg !390, !alias.scope !358
  %i.ai = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.z), !dbg !391
  %i.aj = load i64, ptr %i.p, align 8, !dbg !392, !alias.scope !358, !noundef !123
  %i.ak = add i64 %i.aj, %i.ai, !dbg !392
  store i64 %i.ak, ptr %i.p, align 8, !dbg !392, !alias.scope !358
  store i64 0, ptr %i.m, align 8, !dbg !393, !alias.scope !358
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit, !dbg !394

_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit: ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterRShENCNvNtCs4PheDXcg4wa_10polars_row5utils16decode_opt_nullss_0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit, %bb.d
  %i.al = phi i64 [ %i.z, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterRShENCNvNtCs4PheDXcg4wa_10polars_row5utils16decode_opt_nullss_0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit ], [ 0, %bb.d ]
  %i.am = icmp eq ptr %i.s, %.val7, !dbg !369
  br i1 %i.am, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterRShENCNvNtCs4PheDXcg4wa_10polars_row5utils16decode_opt_nullss_0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit.thread, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterRShENCNvNtCs4PheDXcg4wa_10polars_row5utils16decode_opt_nullss_0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit, !dbg !370

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterRShENCNvNtCs4PheDXcg4wa_10polars_row5utils16decode_opt_nullss_0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit.thread: ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit, %bb.c
  ret void, !dbg !395
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB3_13BitmapBuilder23extend_trusted_len_iterINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1G_5slice4iter7IterMutRShENCNvNtCs4PheDXcg4wa_10polars_row6decode15decode_validitys_0EEB2Z_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !396 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !dbg !461, !nonnull !123, !noundef !123 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !461
  %.val7 = load ptr, ptr %i.a, align 8, !dbg !461, !nonnull !123, !noundef !123 ; 3 uses
  %i.b = ptrtoint ptr %.val7 to i64, !dbg !462
  %i.c = ptrtoint ptr %.val to i64, !dbg !462
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !462
  %i.e = lshr exact i64 %i.d, 4, !dbg !462        ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !463 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !dbg !463, !noundef !123
  %i.h = add i64 %i.e, %i.g, !dbg !463
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !464
  %i.j = load i64, ptr %i.i, align 8, !dbg !464, !noundef !123
  %i.k = icmp ugt i64 %i.h, %i.j, !dbg !463
  br i1 %i.k, label %bb.b, label %bb.c, !dbg !463, !prof !146

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder12reserve_slow(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.e), !dbg !465
  br label %bb.c, !dbg !465

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !466
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !466 ; 2 uses
  %i.l = icmp eq ptr %.val, %.val7, !dbg !467
  br i1 %i.l, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtCs4PheDXcg4wa_10polars_row6decode15decode_validitys_0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_.exit.thread, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtCs4PheDXcg4wa_10polars_row6decode15decode_validitys_0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_.exit.lr.ph, !dbg !468

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtCs4PheDXcg4wa_10polars_row6decode15decode_validitys_0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_.exit.lr.ph: ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload) ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.pre = load i64, ptr %i.f, align 8, !dbg !469, !alias.scope !454
  %.pre14 = load i64, ptr %i.m, align 8, !dbg !470, !alias.scope !454
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtCs4PheDXcg4wa_10polars_row6decode15decode_validitys_0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_.exit, !dbg !468

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtCs4PheDXcg4wa_10polars_row6decode15decode_validitys_0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_.exit: ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtCs4PheDXcg4wa_10polars_row6decode15decode_validitys_0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_.exit.lr.ph, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit
  %i.q = phi i64 [ %.pre14, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtCs4PheDXcg4wa_10polars_row6decode15decode_validitys_0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_.exit.lr.ph ], [ %i.aq, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit ], !dbg !470
  %i.r = phi i64 [ %.pre, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtCs4PheDXcg4wa_10polars_row6decode15decode_validitys_0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_.exit.lr.ph ], [ %i.af, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit ], !dbg !469 ; 2 uses
  %.sroa.08.013 = phi ptr [ %.val, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtCs4PheDXcg4wa_10polars_row6decode15decode_validitys_0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_.exit.lr.ph ], [ %i.s, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 16, !dbg !471 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !455), !dbg !472
  %i.t = load ptr, ptr %.sroa.08.013, align 8, !dbg !473, !alias.scope !455, !noalias !456, !nonnull !123, !noundef !123 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 8, !dbg !473 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !dbg !473, !alias.scope !455, !noalias !456, !noundef !123
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 1, !dbg !474
  %i.x = add i64 %i.v, -1, !dbg !475
  store ptr %i.w, ptr %.sroa.08.013, align 8, !dbg !476, !alias.scope !455, !noalias !456
  store i64 %i.x, ptr %i.u, align 8, !dbg !476, !alias.scope !455, !noalias !456
  %i.y = load i8, ptr %i.t, align 1, !dbg !477, !noalias !460, !noundef !123
  %i.z = load i8, ptr %.sroa.6.0.copyload, align 1, !dbg !478, !noalias !460, !noundef !123
  %i.aa = icmp ne i8 %i.y, %i.z, !dbg !477
  tail call void @llvm.experimental.noalias.scope.decl(metadata !454), !dbg !479
  %i.ab = zext i1 %i.aa to i64, !dbg !480
  %i.ac = and i64 %i.r, 63, !dbg !481
  %i.ad = shl nuw i64 %i.ab, %i.ac, !dbg !480
  %i.ae = or i64 %i.ad, %i.q, !dbg !470           ; 4 uses
  store i64 %i.ae, ptr %i.m, align 8, !dbg !470, !alias.scope !454
  %i.af = add i64 %i.r, 1, !dbg !482              ; 3 uses
  store i64 %i.af, ptr %i.f, align 8, !dbg !482, !alias.scope !454
  %i.ag = and i64 %i.af, 63, !dbg !483
  %i.ah = icmp eq i64 %i.ag, 0, !dbg !483
  br i1 %i.ah, label %bb.d, label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit, !dbg !484

bb.d:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtCs4PheDXcg4wa_10polars_row6decode15decode_validitys_0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_.exit
  %i.ai = load i64, ptr %i.n, align 8, !dbg !485, !alias.scope !454, !noundef !123 ; 3 uses
  %i.aj = icmp sgt i64 %i.ai, -1, !dbg !486
  tail call void @llvm.assume(i1 %i.aj), !dbg !487
  %i.ak = load ptr, ptr %i.o, align 8, !dbg !488, !alias.scope !454, !nonnull !123, !noundef !123
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ai, !dbg !489
  store i64 %i.ae, ptr %i.al, align 1, !dbg !490, !noalias !454
  %i.am = add nuw i64 %i.ai, 8, !dbg !491
  store i64 %i.am, ptr %i.n, align 8, !dbg !492, !alias.scope !454
  %i.an = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ae), !dbg !493
  %i.ao = load i64, ptr %i.p, align 8, !dbg !494, !alias.scope !454, !noundef !123
  %i.ap = add i64 %i.ao, %i.an, !dbg !494
  store i64 %i.ap, ptr %i.p, align 8, !dbg !494, !alias.scope !454
  store i64 0, ptr %i.m, align 8, !dbg !495, !alias.scope !454
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit, !dbg !496

_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit: ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtCs4PheDXcg4wa_10polars_row6decode15decode_validitys_0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_.exit, %bb.d
  %i.aq = phi i64 [ %i.ae, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtCs4PheDXcg4wa_10polars_row6decode15decode_validitys_0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_.exit ], [ 0, %bb.d ]
  %i.ar = icmp eq ptr %i.s, %.val7, !dbg !467
  br i1 %i.ar, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtCs4PheDXcg4wa_10polars_row6decode15decode_validitys_0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_.exit.thread, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtCs4PheDXcg4wa_10polars_row6decode15decode_validitys_0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_.exit, !dbg !468

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7IterMutRShENCNvNtCs4PheDXcg4wa_10polars_row6decode15decode_validitys_0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_.exit.thread: ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit, %bb.c
  ret void, !dbg !497
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE22try_get_or_insert_withNtCsgjwxzEoLG5s_12polars_error11PolarsErrorNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB2e_18CategoricalMapping20insert_cat_with_hash0NCB2b_s_0ECs4PheDXcg4wa_10polars_row(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 128 %1, i64 noundef %2, ptr noalias noundef nonnull readonly captures(none) %3, i64 noundef %4, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %5, ptr noundef nonnull align 128 %6) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !498 {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [72 x i8], align 8                ; 21 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !1760 ; 5 uses
  %i.j = load atomic ptr, ptr %i.i acquire, align 32, !dbg !1761 ; 4 uses
  %i.k = lshr i64 %2, 3, !dbg !1762               ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 32, !dbg !1763
  %i.m = load i64, ptr %i.j, align 8, !dbg !1764, !noalias !1626, !noundef !123 ; 3 uses
  %i.n = lshr i64 %i.m, 3, !dbg !1764             ; 2 uses
  %i.o = getelementptr i8, ptr %i.j, i64 %i.m, !dbg !1765
  %i.p = getelementptr i8, ptr %i.o, i64 32, !dbg !1765
  %i.q = add nsw i64 %i.n, -1, !dbg !1766
  %i.r = lshr i64 %2, 57, !dbg !1767              ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 72340172838076673, !dbg !1768 ; 3 uses
  %i.t = icmp ne i64 %i.n, 0
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = load ptr, ptr %5, align 8, !nonnull !123
  br label %bb.b, !dbg !1769

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.7.0.i = phi i64 [ 0, %bb.a ], [ %i.aq, %bb.d ], !dbg !1770 ; 2 uses
  %.sroa.0.0.i = phi i64 [ %i.k, %bb.a ], [ %i.ar, %bb.d ], !dbg !1770 ; 3 uses
  %i.x = and i64 %.sroa.0.0.i, %i.q, !dbg !1771   ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.x, !dbg !1772
  %i.z = load atomic i64, ptr %i.y monotonic, align 8, !dbg !1773, !noalias !1626 ; 3 uses
  %i.aa = xor i64 %i.z, %i.s, !dbg !1774
  %i.ab = add i64 %i.aa, -72340172838076673, !dbg !1775
  %i.ac = and i64 %i.z, -9187201950435737472, !dbg !1776 ; 2 uses
  %i.ad = xor i64 %i.ac, -9187201950435737472, !dbg !1776
  %i.ae = and i64 %i.ad, %i.ab, !dbg !1776        ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0, !dbg !1777
  br i1 %i.af, label %._crit_edge.i, label %.lr.ph.i, !dbg !1777

.lr.ph.i:                                         ; preds = %bb.b
  %i.ag = shl nuw i64 %i.x, 3
  br label %bb.c, !dbg !1777

._crit_edge.i:                                    ; preds = %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtBT_18CategoricalMapping20insert_cat_with_hash0INtB7_5FnMutTReEE8call_mutCs4PheDXcg4wa_10polars_row.exit.thread.i, %bb.b
  %i.ah = add i64 %i.z, 72340172838076673, !dbg !1778
  %i.ai = and i64 %i.ac, %i.ah, !dbg !1779
  %i.aj = icmp eq i64 %i.ai, 0, !dbg !1780
  br i1 %i.aj, label %bb.d, label %.loopexit, !dbg !1780

bb.c:                                             ; preds = %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtBT_18CategoricalMapping20insert_cat_with_hash0INtB7_5FnMutTReEE8call_mutCs4PheDXcg4wa_10polars_row.exit.thread.i, %.lr.ph.i
  %.sroa.014.031.i = phi i64 [ %i.ae, %.lr.ph.i ], [ %i.at, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtBT_18CategoricalMapping20insert_cat_with_hash0INtB7_5FnMutTReEE8call_mutCs4PheDXcg4wa_10polars_row.exit.thread.i ] ; 3 uses
  %i.ak = tail call range(i64 7, 65) i64 @llvm.cttz.i64(i64 %.sroa.014.031.i, i1 true), !dbg !1781
  %i.al = lshr i64 %i.ak, 3, !dbg !1782
  %i.am = or disjoint i64 %i.al, %i.ag, !dbg !1783 ; 2 uses
  %i.an = icmp ult i64 %i.am, %i.m, !dbg !1784
  tail call void @llvm.assume(i1 %i.an), !dbg !1785
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.am, !dbg !1786
  %i.ap = load atomic ptr, ptr %i.ao acquire, align 8, !dbg !1787, !noalias !1626 ; 5 uses
  %magicptr.i = ptrtoint ptr %i.ap to i64, !dbg !1788
  switch i64 %magicptr.i, label %bb.e [
    i64 0, label %.loopexit
    i64 -1, label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtBT_18CategoricalMapping20insert_cat_with_hash0INtB7_5FnMutTReEE8call_mutCs4PheDXcg4wa_10polars_row.exit.thread.i
  ], !dbg !1788

bb.d:                                             ; preds = %._crit_edge.i
  %i.aq = add i64 %.sroa.7.0.i, 1, !dbg !1789     ; 2 uses
  %i.ar = add i64 %.sroa.0.0.i, %i.aq, !dbg !1790
  br label %bb.b, !dbg !1769

_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtBT_18CategoricalMapping20insert_cat_with_hash0INtB7_5FnMutTReEE8call_mutCs4PheDXcg4wa_10polars_row.exit.thread.i: ; preds = %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtBT_18CategoricalMapping20insert_cat_with_hash0INtB7_5FnMutTReEE8call_mutCs4PheDXcg4wa_10polars_row.exit.i, %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE7key_ptrCs4PheDXcg4wa_10polars_row.exit.i, %bb.e, %bb.c
  %i.as = add i64 %.sroa.014.031.i, -128, !dbg !1791
  %i.at = and i64 %i.as, %.sroa.014.031.i, !dbg !1792 ; 2 uses
  %i.au = icmp eq i64 %i.at, 0, !dbg !1777
  br i1 %i.au, label %._crit_edge.i, label %bb.c, !dbg !1777

bb.e:                                             ; preds = %bb.c
  %i.av = load atomic ptr, ptr %i.ap acquire, align 8, !dbg !1793, !noalias !1626
  %i.aw = ptrtoint ptr %i.av to i64, !dbg !1794   ; 2 uses
  %i.ax = and i64 %i.aw, 4, !dbg !1795
  %i.ay = icmp eq i64 %i.ax, 0, !dbg !1795
  br i1 %i.ay, label %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE7key_ptrCs4PheDXcg4wa_10polars_row.exit.i, label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtBT_18CategoricalMapping20insert_cat_with_hash0INtB7_5FnMutTReEE8call_mutCs4PheDXcg4wa_10polars_row.exit.thread.i, !dbg !1795

_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE7key_ptrCs4PheDXcg4wa_10polars_row.exit.i: ; preds = %bb.e
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 16, !dbg !1796
  %i.ba = load i64, ptr %i.az, align 8, !dbg !1797, !noalias !1626, !noundef !123
  %i.bb = icmp eq i64 %i.ba, %i.v, !dbg !1798
  br i1 %i.bb, label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtBT_18CategoricalMapping20insert_cat_with_hash0INtB7_5FnMutTReEE8call_mutCs4PheDXcg4wa_10polars_row.exit.i, label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtBT_18CategoricalMapping20insert_cat_with_hash0INtB7_5FnMutTReEE8call_mutCs4PheDXcg4wa_10polars_row.exit.thread.i, !dbg !1798

_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtBT_18CategoricalMapping20insert_cat_with_hash0INtB7_5FnMutTReEE8call_mutCs4PheDXcg4wa_10polars_row.exit.i: ; preds = %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE7key_ptrCs4PheDXcg4wa_10polars_row.exit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ap, i64 24, !dbg !1799
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.bc, ptr nonnull %i.w, i64 %i.v), !dbg !1800, !noalias !1626
  %i.bd = icmp eq i32 %bcmp.i.i.i, 0, !dbg !1800
  br i1 %i.bd, label %bb.f, label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtBT_18CategoricalMapping20insert_cat_with_hash0INtB7_5FnMutTReEE8call_mutCs4PheDXcg4wa_10polars_row.exit.thread.i, !dbg !1801

bb.f:                                             ; preds = %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtBT_18CategoricalMapping20insert_cat_with_hash0INtB7_5FnMutTReEE8call_mutCs4PheDXcg4wa_10polars_row.exit.i
  %i.be = and i64 %i.aw, 1, !dbg !1802
  %i.bf = icmp eq i64 %i.be, 0, !dbg !1802
  br i1 %i.bf, label %.loopexit, label %_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE9find_implQNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB1k_18CategoricalMapping20insert_cat_with_hash0ECs4PheDXcg4wa_10polars_row.exit, !dbg !1802

.loopexit:                                        ; preds = %._crit_edge.i, %bb.c, %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1653), !dbg !1803
  %i.bg = add i64 %4, -9223372036854775793, !dbg !1804
  %.not.i.i.i = icmp ult i64 %i.bg, -9223372036854775801, !dbg !1804
  br i1 %.not.i.i.i, label %bb.g, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCs4PheDXcg4wa_10polars_row.exit.i.i.i, !dbg !1805, !prof !146

bb.g:                                             ; preds = %.loopexit
  call void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #24, !dbg !1806, !noalias !1654
  unreachable

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCs4PheDXcg4wa_10polars_row.exit.i.i.i: ; preds = %.loopexit
  %i.bh = add i64 %4, 24, !dbg !1807              ; 3 uses
  %.not.i.i.i.i = icmp ugt i64 %i.bh, 9223372036854775800, !dbg !1808
  br i1 %.not.i.i.i.i, label %bb.h, label %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE6layoutCs4PheDXcg4wa_10polars_row.exit.i.i, !dbg !1809

bb.h:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCs4PheDXcg4wa_10polars_row.exit.i.i.i
  call void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #24, !dbg !1810, !noalias !1655
  unreachable

_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE6layoutCs4PheDXcg4wa_10polars_row.exit.i.i: ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCs4PheDXcg4wa_10polars_row.exit.i.i.i
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !dbg !1811, !noalias !1654
  %i.bi = tail call noundef align 8 ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef %i.bh, i64 noundef 8) #25, !dbg !1812, !noalias !1654 ; 11 uses
  %i.bj = icmp eq ptr %i.bi, null, !dbg !1813
  br i1 %i.bj, label %bb.i, label %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE3newCs4PheDXcg4wa_10polars_row.exit.i, !dbg !1813, !prof !146

bb.i:                                             ; preds = %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE6layoutCs4PheDXcg4wa_10polars_row.exit.i.i
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.bh) #24, !dbg !1814, !noalias !1654
  unreachable, !dbg !1814

_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE3newCs4PheDXcg4wa_10polars_row.exit.i: ; preds = %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE6layoutCs4PheDXcg4wa_10polars_row.exit.i.i
  %i.bk = and i64 %2, -8, !dbg !1815              ; 2 uses
  store i64 %i.bk, ptr %i.bi, align 8, !dbg !1816, !noalias !1654
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 16, !dbg !1817 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 24, !dbg !1818 ; 3 uses
  store i64 %4, ptr %i.bl, align 8, !dbg !1819, !noalias !1656
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bm, ptr nonnull readonly align 1 %3, i64 range(i64 0, -9223372036854775808) %4, i1 false), !dbg !1820, !noalias !1657
  %i.bn = load atomic ptr, ptr %i.i acquire, align 32, !dbg !1821, !noalias !1658 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16, !dbg !1822 ; 2 uses
  %i.bp = load atomic i64, ptr %i.bo monotonic, align 8, !dbg !1823, !noalias !1658
  br label %bb.j, !dbg !1824

bb.j:                                             ; preds = %bb.k, %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE3newCs4PheDXcg4wa_10polars_row.exit.i
  %.sroa.06.0.i.i.i = phi i64 [ %i.bp, %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE3newCs4PheDXcg4wa_10polars_row.exit.i ], [ %i.bt, %bb.k ], !dbg !1825 ; 3 uses
  %.not.i.i25.i = icmp eq i64 %.sroa.06.0.i.i.i, 0, !dbg !1826
  br i1 %.not.i.i25.i, label %bb.l, label %bb.k, !dbg !1827

bb.k:                                             ; preds = %bb.j
  %i.bq = add i64 %.sroa.06.0.i.i.i, -1, !dbg !1826
  %i.br = cmpxchg weak ptr %i.bo, i64 %.sroa.06.0.i.i.i, i64 %i.bq monotonic monotonic, align 8, !dbg !1828, !noalias !1658 ; 2 uses
  %i.bs = extractvalue { i64, i1 } %i.br, 1, !dbg !1828
  %i.bt = extractvalue { i64, i1 } %i.br, 0, !dbg !1828
  br i1 %i.bs, label %_RNvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB5_8RawTableemE20start_insert_attemptCs4PheDXcg4wa_10polars_row.exit.i, label %bb.j, !dbg !1829

bb.l:                                             ; preds = %bb.j
  %i.bu = cmpxchg ptr %1, i32 0, i32 1 acquire monotonic, align 4, !dbg !1830, !noalias !1661
  %i.bv = extractvalue { i32, i1 } %i.bu, 1, !dbg !1830
  br i1 %i.bv, label %bb.n, label %bb.m, !dbg !1831, !prof !207

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 128 %1), !dbg !1832, !noalias !1661
  br label %bb.n, !dbg !1832

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bw = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !1833, !noalias !1661
  %i.bx = and i64 %i.bw, 9223372036854775807, !dbg !1834
  %i.by = icmp eq i64 %i.bx, 0, !dbg !1834
  br i1 %i.by, label %_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEE4lockCs4PheDXcg4wa_10polars_row.exit.i.i, label %bb.o, !dbg !1834, !prof !207

bb.o:                                             ; preds = %bb.n
  %i.bz = tail call noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #26, !dbg !1835, !noalias !1661
  %i.ca = xor i1 %i.bz, true, !dbg !1836
  %i.cb = zext i1 %i.ca to i8, !dbg !1837
  br label %_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEE4lockCs4PheDXcg4wa_10polars_row.exit.i.i, !dbg !1835

_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEE4lockCs4PheDXcg4wa_10polars_row.exit.i.i: ; preds = %bb.o, %bb.n
  %.sroa.01.0.i.i.i.i = phi i8 [ %i.cb, %bb.o ], [ 0, %bb.n ], !dbg !1838 ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !1839 ; 3 uses
  %i.cd = load atomic i8, ptr %i.cc monotonic, align 4, !dbg !1840, !noalias !1661
  %.not.i.i = icmp eq i8 %i.cd, 0, !dbg !1841
  br i1 %.not.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEINtBM_11PoisonErrorBH_EE6unwrapCs4PheDXcg4wa_10polars_row.exit8.preheader.i.i, label %bb.p, !dbg !1842, !prof !207

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEINtBM_11PoisonErrorBH_EE6unwrapCs4PheDXcg4wa_10polars_row.exit8.preheader.i.i: ; preds = %_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEE4lockCs4PheDXcg4wa_10polars_row.exit.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 6 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEINtBM_11PoisonErrorBH_EE6unwrapCs4PheDXcg4wa_10polars_row.exit8.i.i, !dbg !1843

bb.p:                                             ; preds = %_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEE4lockCs4PheDXcg4wa_10polars_row.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !1844, !noalias !1665
  store ptr %1, ptr %i.g, align 8, !dbg !1844, !noalias !1665
  %i.cm = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !1844
  store i8 %.sroa.01.0.i.i.i.i, ptr %i.cm, align 8, !dbg !1844, !noalias !1665
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 43, ptr noundef nonnull %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #24
          to label %bb.r unwind label %bb.q, !dbg !1845, !noalias !1666

bb.q:                                             ; preds = %bb.p
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsh8eZTKRCwoO_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEEECs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g) #27
          to label %common.resume.i unwind label %bb.s, !dbg !1846, !noalias !1666

bb.r:                                             ; preds = %bb.p
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !1847, !noalias !1666
  unreachable, !dbg !1847

common.resume.i:                                  ; preds = %bb.dr, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i60.i, %bb.df, %bb.db, %bb.ct, %bb.cr, %bb.cq, %bb.cb, %bb.bd, %bb.az, %bb.ac, %bb.q
  %common.resume.op.i = phi { ptr, i32 } [ %i.me, %bb.cb ], [ %i.hn, %bb.bd ], [ %i.cn, %bb.q ], [ %i.hj, %bb.az ], [ %.pn.i.i.i, %bb.ac ], [ %i.me, %bb.ct ], [ %i.me, %bb.cr ], [ %i.me, %bb.cq ], [ %i.on, %bb.db ], [ %i.ov, %bb.df ], [ %i.pg, %bb.dr ], [ %i.pg, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i60.i ]
  resume { ptr, i32 } %common.resume.op.i, !dbg !1848

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEINtBM_11PoisonErrorBH_EE6unwrapCs4PheDXcg4wa_10polars_row.exit8.i.i: ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEINtBM_11PoisonErrorBH_EE6unwrapCs4PheDXcg4wa_10polars_row.exit8.i.i.backedge, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEINtBM_11PoisonErrorBH_EE6unwrapCs4PheDXcg4wa_10polars_row.exit8.preheader.i.i
  %i.cp = load atomic ptr, ptr %i.i acquire, align 32, !dbg !1849, !noalias !1658 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16, !dbg !1850 ; 2 uses
  %i.cr = load atomic i64, ptr %i.cq monotonic, align 8, !dbg !1851, !noalias !1658
  br label %bb.t, !dbg !1843

bb.t:                                             ; preds = %bb.u, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEINtBM_11PoisonErrorBH_EE6unwrapCs4PheDXcg4wa_10polars_row.exit8.i.i
  %.sroa.06.0.i13.i.i = phi i64 [ %i.cr, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEINtBM_11PoisonErrorBH_EE6unwrapCs4PheDXcg4wa_10polars_row.exit8.i.i ], [ %i.cv, %bb.u ], !dbg !1852 ; 3 uses
  %.not.i14.i.i = icmp eq i64 %.sroa.06.0.i13.i.i, 0, !dbg !1853
  br i1 %.not.i14.i.i, label %bb.aa, label %bb.u, !dbg !1854

bb.u:                                             ; preds = %bb.t
  %i.cs = add i64 %.sroa.06.0.i13.i.i, -1, !dbg !1853
  %i.ct = cmpxchg weak ptr %i.cq, i64 %.sroa.06.0.i13.i.i, i64 %i.cs monotonic monotonic, align 8, !dbg !1855, !noalias !1658 ; 2 uses
  %i.cu = extractvalue { i64, i1 } %i.ct, 1, !dbg !1855
  %i.cv = extractvalue { i64, i1 } %i.ct, 0, !dbg !1855
  br i1 %i.cu, label %bb.v, label %bb.t, !dbg !1856

bb.v:                                             ; preds = %bb.u
  %i.cw = trunc nuw i8 %.sroa.01.0.i.i.i.i to i1, !dbg !1857
  br i1 %i.cw, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.w, !dbg !1857

bb.w:                                             ; preds = %bb.v
  %i.cx = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !1858, !noalias !1658
  %i.cy = and i64 %i.cx, 9223372036854775807, !dbg !1859
  %i.cz = icmp eq i64 %i.cy, 0, !dbg !1859
  br i1 %i.cz, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.x, !dbg !1859, !prof !207

bb.x:                                             ; preds = %bb.w
  %i.da = tail call noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #26, !dbg !1860, !noalias !1658
  br i1 %i.da, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.y, !dbg !1861

bb.y:                                             ; preds = %bb.x
  store atomic i8 1, ptr %i.cc monotonic, align 4, !dbg !1862, !noalias !1658
  br label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, !dbg !1863

_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.y, %bb.x, %bb.w, %bb.v
  %i.db = atomicrmw xchg ptr %1, i32 0 release, align 4, !dbg !1864, !noalias !1658
  %i.dc = icmp eq i32 %i.db, 2, !dbg !1865
  br i1 %i.dc, label %bb.z, label %_RNvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB5_8RawTableemE20start_insert_attemptCs4PheDXcg4wa_10polars_row.exit.i, !dbg !1865, !prof !146

bb.z:                                             ; preds = %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  tail call void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 128 %1), !dbg !1866, !noalias !1658
  br label %_RNvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB5_8RawTableemE20start_insert_attemptCs4PheDXcg4wa_10polars_row.exit.i, !dbg !1866

bb.aa:                                            ; preds = %bb.t
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cp, i64 24, !dbg !1867
  %i.de = load atomic i64, ptr %i.dd acquire, align 8, !dbg !1868, !noalias !1658
  %i.df = icmp eq i64 %i.de, 0, !dbg !1869
  br i1 %i.df, label %bb.ab, label %bb.ay, !dbg !1869

bb.ab:                                            ; preds = %bb.aa
  %i.dg = load atomic ptr, ptr %i.i monotonic, align 32, !dbg !1870, !noalias !1658 ; 5 uses
end_hunk_0
begin_hunk_1_@_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE22try_get_or_insert_withNtCsgjwxzEoLG5s_12polars_error11PolarsErrorNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB2e_18CategoricalMapping20insert_cat_with_hash0NCB2b_s_0ECs4PheDXcg4wa_10polars_row:bb.a
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.fb, !dbg !1963
  store ptr %i.dg, ptr %i.gt, align 8, !dbg !1964, !noalias !1658
  %i.gu = add i64 %i.fb, 1, !dbg !1965
  store i64 %i.gu, ptr %i.ck, align 8, !dbg !1965, !alias.scope !1679, !noalias !1658
  store atomic ptr %i.ec, ptr %i.i release, align 32, !dbg !1966, !noalias !1658
  %i.gv = trunc nuw i8 %.sroa.01.0.i.i.i.i.i to i1, !dbg !1967 ; 2 uses
  br i1 %i.et, label %bb.as, label %bb.ao, !dbg !1967

bb.ao:                                            ; preds = %bb.an
  br i1 %i.gv, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.ap, !dbg !1968

bb.ap:                                            ; preds = %bb.ao
  %i.gw = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !1969, !noalias !1682
  %i.gx = and i64 %i.gw, 9223372036854775807, !dbg !1970
  %i.gy = icmp eq i64 %i.gx, 0, !dbg !1970
  br i1 %i.gy, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.aq, !dbg !1970, !prof !207

bb.aq:                                            ; preds = %bb.ap
  %i.gz = invoke noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #26
          to label %.noexc25.i.i.i unwind label %.thread.i.i.i, !dbg !1971, !noalias !1658

.noexc25.i.i.i:                                   ; preds = %bb.aq
  br i1 %i.gz, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.ar, !dbg !1972

bb.ar:                                            ; preds = %.noexc25.i.i.i
  store atomic i8 1, ptr %i.cg monotonic, align 8, !dbg !1973, !noalias !1682
  br label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, !dbg !1974

_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i: ; preds = %bb.ar, %.noexc25.i.i.i, %bb.ap, %bb.ao
  %i.ha = atomicrmw sub ptr %i.cf, i32 1073741823 release, align 4, !dbg !1975, !noalias !1682
  %i.hb = add i32 %i.ha, -1073741823, !dbg !1976  ; 2 uses
  %or.cond.i.i.i.i.i.i = icmp ult i32 %i.hb, 1073741824, !dbg !1977
  br i1 %or.cond.i.i.i.i.i.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlock16RwLockWriteGuarduEINtB17_11PoisonErrorB12_EEECs4PheDXcg4wa_10polars_row.exit.i.i.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlock16RwLockWriteGuarduEECs4PheDXcg4wa_10polars_row.exit.sink.split.i.i.i.i, !dbg !1977, !prof !230

bb.as:                                            ; preds = %bb.an
  br i1 %i.gv, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i, label %bb.at, !dbg !1978

bb.at:                                            ; preds = %bb.as
  %i.hc = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !1979, !noalias !1682
  %i.hd = and i64 %i.hc, 9223372036854775807, !dbg !1980
  %i.he = icmp eq i64 %i.hd, 0, !dbg !1980
  br i1 %i.he, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i, label %bb.au, !dbg !1980, !prof !207

bb.au:                                            ; preds = %bb.at
  %i.hf = invoke noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #26
          to label %.noexc26.i.i.i unwind label %.thread.i.i.i, !dbg !1981, !noalias !1658

.noexc26.i.i.i:                                   ; preds = %bb.au
  br i1 %i.hf, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i, label %bb.av, !dbg !1982

bb.av:                                            ; preds = %.noexc26.i.i.i
  store atomic i8 1, ptr %i.cg monotonic, align 8, !dbg !1983, !noalias !1682
  br label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i, !dbg !1984

_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i: ; preds = %bb.av, %.noexc26.i.i.i, %bb.at, %bb.as
  %i.hg = atomicrmw sub ptr %i.cf, i32 1073741823 release, align 4, !dbg !1985, !noalias !1682
  %i.hh = add i32 %i.hg, -1073741823, !dbg !1986  ; 2 uses
  %or.cond.i.i.i.i.i.i.i = icmp ult i32 %i.hh, 1073741824, !dbg !1987
  br i1 %or.cond.i.i.i.i.i.i.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlock16RwLockWriteGuarduEINtB17_11PoisonErrorB12_EEECs4PheDXcg4wa_10polars_row.exit.i.i.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlock16RwLockWriteGuarduEECs4PheDXcg4wa_10polars_row.exit.sink.split.i.i.i.i, !dbg !1987, !prof !230

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlock16RwLockWriteGuarduEECs4PheDXcg4wa_10polars_row.exit.sink.split.i.i.i.i: ; preds = %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i
  %.sink.i.i.i.i = phi i32 [ %i.hb, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i ], [ %i.hh, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i ]
  invoke void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %i.cf, i32 noundef %.sink.i.i.i.i)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlock16RwLockWriteGuarduEINtB17_11PoisonErrorB12_EEECs4PheDXcg4wa_10polars_row.exit.i.i.i unwind label %.thread.i.i.i, !dbg !1967, !noalias !1658

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlock16RwLockWriteGuarduEINtB17_11PoisonErrorB12_EEECs4PheDXcg4wa_10polars_row.exit.i.i.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlock16RwLockWriteGuarduEECs4PheDXcg4wa_10polars_row.exit.sink.split.i.i.i.i, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i
  invoke void @_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync6poison7condvarNtB2_7Condvar10notify_all(ptr noundef nonnull align 4 %i.ce)
          to label %_RNvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB5_8RawTableemE7reallocCs4PheDXcg4wa_10polars_row.exit.i.i unwind label %.thread.i.i.i, !dbg !1988, !noalias !1658

bb.aw:                                            ; preds = %bb.aj
  %lpad.thr_comm.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlock16RwLockWriteGuarduEINtB17_11PoisonErrorB12_EEECs4PheDXcg4wa_10polars_row(ptr noalias noundef align 8 dereferenceable(24) %i.f) #27
          to label %bb.ac unwind label %bb.ax, !dbg !1933, !noalias !1658

bb.ax:                                            ; preds = %bb.aw, %bb.ac
  %i.hi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !1989, !noalias !1658
  unreachable, !dbg !1989

_RNvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB5_8RawTableemE7reallocCs4PheDXcg4wa_10polars_row.exit.i.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlock16RwLockWriteGuarduEINtB17_11PoisonErrorB12_EEECs4PheDXcg4wa_10polars_row.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !1933, !noalias !1658
  br label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEINtBM_11PoisonErrorBH_EE6unwrapCs4PheDXcg4wa_10polars_row.exit8.i.i.backedge, !dbg !1990

bb.ay:                                            ; preds = %bb.aa
  invoke void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync7condvar5futexNtB2_7Condvar4wait(ptr noundef nonnull align 4 %i.ce, ptr noundef nonnull align 128 %1)
          to label %bb.bb unwind label %bb.az, !dbg !1991, !noalias !1683

bb.az:                                            ; preds = %bb.ay
  %i.hj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEECs4PheDXcg4wa_10polars_row(ptr nonnull align 128 %1, i8 %.sroa.01.0.i.i.i.i) #27
          to label %common.resume.i unwind label %bb.ba, !dbg !1992, !noalias !1683

bb.ba:                                            ; preds = %bb.az
  %i.hk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !1993, !noalias !1683
  unreachable, !dbg !1993

bb.bb:                                            ; preds = %bb.ay
  %i.hl = load atomic i8, ptr %i.cc monotonic, align 4, !dbg !1994, !noalias !1683
  %.not41.i.i = icmp eq i8 %i.hl, 0, !dbg !1995
  br i1 %.not41.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEINtBM_11PoisonErrorBH_EE6unwrapCs4PheDXcg4wa_10polars_row.exit8.i.i.backedge, label %bb.bc, !dbg !1996, !prof !207

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEINtBM_11PoisonErrorBH_EE6unwrapCs4PheDXcg4wa_10polars_row.exit8.i.i.backedge: ; preds = %bb.bb, %_RNvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB5_8RawTableemE7reallocCs4PheDXcg4wa_10polars_row.exit.i.i
  br label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEINtBM_11PoisonErrorBH_EE6unwrapCs4PheDXcg4wa_10polars_row.exit8.i.i, !dbg !1849

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !1997, !noalias !1687
  store ptr %1, ptr %i.h, align 8, !dbg !1997, !noalias !1687
  %i.hm = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !1997
  store i8 %.sroa.01.0.i.i.i.i, ptr %i.hm, align 8, !dbg !1997, !noalias !1687
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 43, ptr noundef nonnull %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #24
          to label %bb.be unwind label %bb.bd, !dbg !1998, !noalias !1688

bb.bd:                                            ; preds = %bb.bc
  %i.hn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsh8eZTKRCwoO_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEEECs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h) #27
          to label %common.resume.i unwind label %bb.bf, !dbg !1999, !noalias !1688

bb.be:                                            ; preds = %bb.bc
  unreachable

bb.bf:                                            ; preds = %bb.bd
  %i.ho = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !2000, !noalias !1688
  unreachable, !dbg !2000

_RNvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB5_8RawTableemE20start_insert_attemptCs4PheDXcg4wa_10polars_row.exit.i: ; preds = %bb.k, %bb.z, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  %.sroa.0.0.i26.i = phi ptr [ %i.cp, %bb.z ], [ %i.cp, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i ], [ %i.bn, %bb.k ], !dbg !2001 ; 7 uses
  %.not.i = icmp eq ptr %.sroa.0.0.i26.i, %i.j, !dbg !2002 ; 2 uses
  %.sroa.5.0.i = select i1 %.not.i, i64 %.sroa.7.0.i, i64 0, !dbg !2002
  %.sroa.0.0.i18 = select i1 %.not.i, i64 %.sroa.0.0.i, i64 %i.k, !dbg !2002
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i26.i, i64 32, !dbg !2003
  %i.hq = load i64, ptr %.sroa.0.0.i26.i, align 8, !dbg !2004, !noalias !1658, !noundef !123 ; 3 uses
  %i.hr = lshr i64 %i.hq, 3, !dbg !2004           ; 2 uses
  %i.hs = getelementptr i8, ptr %.sroa.0.0.i26.i, i64 %i.hq, !dbg !2005
  %i.ht = getelementptr i8, ptr %i.hs, i64 32, !dbg !2005
  %i.hu = add nsw i64 %i.hr, -1, !dbg !2006
  %i.hv = icmp ne i64 %i.hr, 0
  tail call void @llvm.assume(i1 %i.hv)
  %i.hw = or disjoint i64 %i.r, 128
  %i.hx = load i64, ptr %i.u, align 8, !alias.scope !1653, !noalias !1690 ; 2 uses
  %i.hy = load ptr, ptr %5, align 8, !alias.scope !1653, !noalias !1690, !nonnull !123
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 13 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 7 uses
  br label %.outer.i, !dbg !2007

.outer.i:                                         ; preds = %._crit_edge.i20, %_RNvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB5_8RawTableemE20start_insert_attemptCs4PheDXcg4wa_10polars_row.exit.i
  %.sroa.5.1.ph.i = phi i64 [ %i.jc, %._crit_edge.i20 ], [ %.sroa.5.0.i, %_RNvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB5_8RawTableemE20start_insert_attemptCs4PheDXcg4wa_10polars_row.exit.i ]
  %.sroa.0.1.ph.i = phi i64 [ %i.jd, %._crit_edge.i20 ], [ %.sroa.0.0.i18, %_RNvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB5_8RawTableemE20start_insert_attemptCs4PheDXcg4wa_10polars_row.exit.i ] ; 2 uses
  %i.ic = and i64 %.sroa.0.1.ph.i, %i.hu          ; 2 uses
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %i.ic ; 3 uses
  %i.ie = load atomic i64, ptr %i.id monotonic, align 8, !dbg !2008, !noalias !1658 ; 5 uses
  %i.if = xor i64 %i.ie, %i.s, !dbg !2009
  %i.ig = add i64 %i.if, -72340172838076673, !dbg !2010
  %i.ih = xor i64 %i.ie, -1, !dbg !2011
  %i.ii = and i64 %i.ig, %i.ih, !dbg !2012
  %i.ij = add i64 %i.ie, 72340172838076673, !dbg !2013
  %i.ik = and i64 %i.ij, %i.ie, !dbg !2014        ; 2 uses
  %i.il = or disjoint i64 %i.ii, %i.ik, !dbg !2015
  %i.im = and i64 %i.il, -9187201950435737472, !dbg !2015 ; 2 uses
  %i.in = icmp eq i64 %i.im, 0, !dbg !2016
  br i1 %i.in, label %._crit_edge.i20, label %.lr.ph.lr.ph.i, !dbg !2016

.lr.ph.lr.ph.i:                                   ; preds = %.outer.i
  %i.io = shl nuw i64 %i.ic, 3
  br label %.lr.ph.i19, !dbg !2016

.loopexit.i:                                      ; preds = %bb.bh
  %i.ip = load atomic i64, ptr %i.id monotonic, align 8, !dbg !2008, !noalias !1658 ; 5 uses
  %i.iq = xor i64 %i.ip, %i.s, !dbg !2009
  %i.ir = add i64 %i.iq, -72340172838076673, !dbg !2010
  %i.is = xor i64 %i.ip, -1, !dbg !2011
  %i.it = and i64 %i.ir, %i.is, !dbg !2012
  %i.iu = add i64 %i.ip, 72340172838076673, !dbg !2013
  %i.iv = and i64 %i.iu, %i.ip, !dbg !2014        ; 2 uses
  %i.iw = or disjoint i64 %i.it, %i.iv, !dbg !2015
  %i.ix = and i64 %i.iw, -9187201950435737472, !dbg !2015 ; 2 uses
  %i.iy = icmp eq i64 %i.ix, 0, !dbg !2016
  br i1 %i.iy, label %._crit_edge.i20, label %.lr.ph.i19, !dbg !2016

.lr.ph.i19:                                       ; preds = %.loopexit.i, %.lr.ph.lr.ph.i
  %i.iz = phi i64 [ %i.im, %.lr.ph.lr.ph.i ], [ %i.ix, %.loopexit.i ]
  %i.ja = phi i64 [ %i.ik, %.lr.ph.lr.ph.i ], [ %i.iv, %.loopexit.i ]
  %i.jb = phi i64 [ %i.ie, %.lr.ph.lr.ph.i ], [ %i.ip, %.loopexit.i ] ; 2 uses
  br label %bb.bg, !dbg !2016

._crit_edge.i20:                                  ; preds = %.loopexit.i, %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping20insert_cat_with_hash0Cs4PheDXcg4wa_10polars_row.exit.thread.i, %.outer.i
  %i.jc = add i64 %.sroa.5.1.ph.i, 1, !dbg !2017  ; 2 uses
  %i.jd = add i64 %.sroa.0.1.ph.i, %i.jc, !dbg !2018
  br label %.outer.i, !dbg !2007

bb.bg:                                            ; preds = %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping20insert_cat_with_hash0Cs4PheDXcg4wa_10polars_row.exit.thread.i, %.lr.ph.i19
  %.sroa.019.092.i = phi i64 [ %i.iz, %.lr.ph.i19 ], [ %i.nx, %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping20insert_cat_with_hash0Cs4PheDXcg4wa_10polars_row.exit.thread.i ] ; 3 uses
  %i.je = tail call range(i64 7, 65) i64 @llvm.cttz.i64(i64 %.sroa.019.092.i, i1 true), !dbg !2019 ; 2 uses
  %i.jf = lshr i64 %i.je, 3, !dbg !2020
  %i.jg = and i64 %i.je, 56, !dbg !2021           ; 2 uses
  %i.jh = shl nuw i64 128, %i.jg, !dbg !2022
  %i.ji = and i64 %i.jh, %i.ja, !dbg !2022
  %i.jj = icmp eq i64 %i.ji, 0, !dbg !2022
  br i1 %i.jj, label %bb.bi, label %bb.bh, !dbg !2022

bb.bh:                                            ; preds = %bb.bg
  %i.jk = shl nuw i64 %i.hw, %i.jg, !dbg !2023
  %i.jl = xor i64 %i.jk, %i.jb, !dbg !2024
  %i.jm = cmpxchg ptr %i.id, i64 %i.jb, i64 %i.jl monotonic monotonic, align 8, !dbg !2025, !noalias !1658
  %i.jn = extractvalue { i64, i1 } %i.jm, 1, !dbg !2025
  br i1 %i.jn, label %bb.bi, label %.loopexit.i, !dbg !2026

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.jo = or disjoint i64 %i.jf, %i.io, !dbg !2027 ; 2 uses
  %i.jp = icmp ult i64 %i.jo, %i.hq, !dbg !2028
  tail call void @llvm.assume(i1 %i.jp), !dbg !2029
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %i.jo, !dbg !2030 ; 3 uses
  %i.jr = load atomic ptr, ptr %i.jq acquire, align 8, !dbg !2031, !noalias !1658 ; 2 uses
  %i.js = icmp eq ptr %i.jr, null, !dbg !2032
  br i1 %i.js, label %bb.bj, label %bb.cu, !dbg !2032

bb.bj:                                            ; preds = %bb.bi
  %i.jt = cmpxchg ptr %i.jq, ptr null, ptr %i.bi release acquire, align 8, !dbg !2033, !noalias !1658 ; 2 uses
  %.sroa.18.0.in.i.i = extractvalue { ptr, i1 } %i.jt, 1, !dbg !2034
  %.sroa.01.0.i.i = extractvalue { ptr, i1 } %i.jt, 0, !dbg !2034
  br i1 %.sroa.18.0.in.i.i, label %bb.bk, label %bb.cu, !dbg !2035

bb.bk:                                            ; preds = %bb.bj
  %i.ju = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !2036
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i26.i, i64 24, !dbg !2037
  %i.jw = atomicrmw sub ptr %i.jv, i64 1 release, align 8, !dbg !2038, !noalias !1658
  %i.jx = icmp eq i64 %i.jw, 1, !dbg !2039
  br i1 %i.jx, label %bb.bl, label %_RNvMNtNtCs2mZqlW55729_12polars_utils5parma3rawINtB2_11AllocHeaderemE20finish_claim_attemptCs4PheDXcg4wa_10polars_row.exit.i, !dbg !2039

bb.bl:                                            ; preds = %bb.bk
  %i.jy = cmpxchg ptr %1, i32 0, i32 1 acquire monotonic, align 4, !dbg !2040, !noalias !1693
  %i.jz = extractvalue { i32, i1 } %i.jy, 1, !dbg !2040
  br i1 %i.jz, label %bb.bn, label %bb.bm, !dbg !2041, !prof !207

bb.bm:                                            ; preds = %bb.bl
  tail call void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 128 %1), !dbg !2042, !noalias !1693
  br label %bb.bn, !dbg !2042

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.ka = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !2043, !noalias !1693
  %i.kb = and i64 %i.ka, 9223372036854775807, !dbg !2044
  %i.kc = icmp eq i64 %i.kb, 0, !dbg !2044
  br i1 %i.kc, label %_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEE4lockCs4PheDXcg4wa_10polars_row.exit.thread.i.i, label %_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEE4lockCs4PheDXcg4wa_10polars_row.exit.i29.i, !dbg !2044, !prof !207

_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEE4lockCs4PheDXcg4wa_10polars_row.exit.i29.i: ; preds = %bb.bn
  %i.kd = tail call noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #26, !dbg !2045, !noalias !1693 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !2046 ; 3 uses
  %i.kf = load atomic i8, ptr %i.ke monotonic, align 4, !dbg !2047, !noalias !1693
  %.not.i30.i = icmp eq i8 %i.kf, 0, !dbg !2048
  br i1 %.not.i30.i, label %bb.bo, label %bb.br, !dbg !2049

_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEE4lockCs4PheDXcg4wa_10polars_row.exit.thread.i.i: ; preds = %bb.bn
  %i.kg = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !2046 ; 3 uses
  %i.kh = load atomic i8, ptr %i.kg monotonic, align 4, !dbg !2047, !noalias !1693
  %.not3.i.i = icmp eq i8 %i.kh, 0, !dbg !2048
  br i1 %.not3.i.i, label %.thread.i.i, label %.thread7.i.i, !dbg !2049

bb.bo:                                            ; preds = %_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEE4lockCs4PheDXcg4wa_10polars_row.exit.i29.i
  br i1 %i.kd, label %.thread.i.i, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i, !dbg !2050

.thread.i.i:                                      ; preds = %bb.bo, %_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEE4lockCs4PheDXcg4wa_10polars_row.exit.thread.i.i
  %i.ki = phi ptr [ %i.ke, %bb.bo ], [ %i.kg, %_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEE4lockCs4PheDXcg4wa_10polars_row.exit.thread.i.i ]
  %i.kj = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !2051, !noalias !1694
  %i.kk = and i64 %i.kj, 9223372036854775807, !dbg !2052
  %i.kl = icmp eq i64 %i.kk, 0, !dbg !2052
  br i1 %i.kl, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i, label %bb.bp, !dbg !2052, !prof !207

bb.bp:                                            ; preds = %.thread.i.i
  %i.km = tail call noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #26, !dbg !2053, !noalias !1694
  br i1 %i.km, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i, label %bb.bq, !dbg !2054

bb.bq:                                            ; preds = %bb.bp
  store atomic i8 1, ptr %i.ki monotonic, align 1, !dbg !2055, !noalias !1694
  br label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i, !dbg !2056

_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i: ; preds = %bb.bq, %bb.bp, %.thread.i.i, %bb.bo
  %i.kn = atomicrmw xchg ptr %1, i32 0 release, align 4, !dbg !2057, !noalias !1694
  %i.ko = icmp eq i32 %i.kn, 2, !dbg !2058
  br i1 %i.ko, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEECs4PheDXcg4wa_10polars_row.exit.sink.split.i.i.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEINtB17_11PoisonErrorB12_EEECs4PheDXcg4wa_10polars_row.exit.i.i, !dbg !2058, !prof !146

bb.br:                                            ; preds = %_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEE4lockCs4PheDXcg4wa_10polars_row.exit.i29.i
  br i1 %i.kd, label %.thread7.i.i, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i31.i, !dbg !2059

.thread7.i.i:                                     ; preds = %bb.br, %_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEE4lockCs4PheDXcg4wa_10polars_row.exit.thread.i.i
  %i.kp = phi ptr [ %i.ke, %bb.br ], [ %i.kg, %_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEE4lockCs4PheDXcg4wa_10polars_row.exit.thread.i.i ]
  %i.kq = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !2060, !noalias !1695
  %i.kr = and i64 %i.kq, 9223372036854775807, !dbg !2061
  %i.ks = icmp eq i64 %i.kr, 0, !dbg !2061
  br i1 %i.ks, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i31.i, label %bb.bs, !dbg !2061, !prof !207

bb.bs:                                            ; preds = %.thread7.i.i
  %i.kt = tail call noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #26, !dbg !2062, !noalias !1695
  br i1 %i.kt, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i31.i, label %bb.bt, !dbg !2063

bb.bt:                                            ; preds = %bb.bs
  store atomic i8 1, ptr %i.kp monotonic, align 1, !dbg !2064, !noalias !1695
  br label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i31.i, !dbg !2065

_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i31.i: ; preds = %bb.bt, %bb.bs, %.thread7.i.i, %bb.br
  %i.ku = atomicrmw xchg ptr %1, i32 0 release, align 4, !dbg !2066, !noalias !1695
  %i.kv = icmp eq i32 %i.ku, 2, !dbg !2067
  br i1 %i.kv, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEECs4PheDXcg4wa_10polars_row.exit.sink.split.i.i.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEINtB17_11PoisonErrorB12_EEECs4PheDXcg4wa_10polars_row.exit.i.i, !dbg !2067, !prof !146

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEECs4PheDXcg4wa_10polars_row.exit.sink.split.i.i.i: ; preds = %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i31.i, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i
  tail call void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 128 %1), !dbg !2049, !noalias !1694
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEINtB17_11PoisonErrorB12_EEECs4PheDXcg4wa_10polars_row.exit.i.i, !dbg !2049

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEINtB17_11PoisonErrorB12_EEECs4PheDXcg4wa_10polars_row.exit.i.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEECs4PheDXcg4wa_10polars_row.exit.sink.split.i.i.i, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i31.i, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i
  tail call void @_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync6poison7condvarNtB2_7Condvar10notify_all(ptr noundef nonnull align 4 %i.ju), !dbg !2068, !noalias !1658
  br label %_RNvMNtNtCs2mZqlW55729_12polars_utils5parma3rawINtB2_11AllocHeaderemE20finish_claim_attemptCs4PheDXcg4wa_10polars_row.exit.i, !dbg !2068

_RNvMNtNtCs2mZqlW55729_12polars_utils5parma3rawINtB2_11AllocHeaderemE20finish_claim_attemptCs4PheDXcg4wa_10polars_row.exit.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEINtB17_11PoisonErrorB12_EEECs4PheDXcg4wa_10polars_row.exit.i.i, %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !2069, !noalias !1696
  %i.kw = load i64, ptr %i.bl, align 8, !dbg !2070, !noalias !1697, !noundef !123 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.bi, i64 8, !dbg !2071
  %i.ky = getelementptr inbounds nuw i8, ptr %6, i64 616, !dbg !2072 ; 2 uses
  %i.kz = atomicrmw add ptr %i.ky, i64 1 monotonic, align 8, !dbg !2073, !noalias !1707
  %i.la = add i64 %i.kz, 1, !dbg !2074
  %i.lb = getelementptr inbounds nuw i8, ptr %6, i64 608, !dbg !2075
  %i.lc = load i64, ptr %i.lb, align 32, !dbg !2075, !noalias !1707, !noundef !123
  %.not33.i.i = icmp ugt i64 %i.la, %i.lc, !dbg !2074
  br i1 %.not33.i.i, label %.thread37.i.i, label %bb.bu, !dbg !2074

bb.bu:                                            ; preds = %_RNvMNtNtCs2mZqlW55729_12polars_utils5parma3rawINtB2_11AllocHeaderemE20finish_claim_attemptCs4PheDXcg4wa_10polars_row.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !2076, !noalias !1707
  store i64 589684135938649225, ptr %i.d, align 8, !dbg !2077, !noalias !1707
  %i.ld = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality10FixedStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneReECs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bm, i64 noundef %i.kw)
          to label %.noexc.i.i.i unwind label %bb.bx, !dbg !2078, !noalias !1696

.noexc.i.i.i:                                     ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !2079, !noalias !1707
  %i.le = getelementptr inbounds nuw i8, ptr %6, i64 128, !dbg !2080 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %6, i64 592, !dbg !2081
  %i.lg = atomicrmw add ptr %i.lf, i64 1 monotonic, align 8, !dbg !2082, !noalias !1716 ; 4 uses
  %i.lh = icmp sgt i64 %i.lg, -1, !dbg !2083
  br i1 %i.lh, label %bb.bw, label %bb.bv, !dbg !2083, !prof !207

bb.bv:                                            ; preds = %.noexc.i.i.i
  invoke void @_RNvMNtNtCsaIrsFcbE0XP_6boxcar3vec3rawINtB2_3VecTReyEE19next_index_overflowCs80wj1cxFixi_12polars_dtype(ptr noundef nonnull align 8 %i.le) #24
          to label %.noexc1.i.i.i unwind label %bb.bx, !dbg !2084, !noalias !1696

.noexc1.i.i.i:                                    ; preds = %bb.bv
  unreachable, !dbg !2085

.thread37.i.i:                                    ; preds = %_RNvMNtNtCs2mZqlW55729_12polars_utils5parma3rawINtB2_11AllocHeaderemE20finish_claim_attemptCs4PheDXcg4wa_10polars_row.exit.i
  %i.li = atomicrmw sub ptr %i.ky, i64 1 monotonic, align 8, !dbg !2086, !noalias !1707 ; 0 uses
  store i64 2, ptr %i.e, align 8, !dbg !2087, !noalias !1696
  %.sroa.425.0..sroa_idx39.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !2087
  store ptr inttoptr (i64 -9223372036854775808 to ptr), ptr %.sroa.425.0..sroa_idx39.i.i, align 8, !dbg !2087, !noalias !1696
  %.sroa.526.0..sroa_idx40.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !2087
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.526.0..sroa_idx40.i.i, ptr noundef nonnull align 8 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @4, i64 16), i64 56, i1 false), !dbg !2087, !noalias !1696
  br label %bb.cc, !dbg !2088

bb.bw:                                            ; preds = %.noexc.i.i.i
  %i.lj = icmp ne i64 %i.lg, 0, !dbg !2089
  call void @llvm.assume(i1 %i.lj), !dbg !2090
  %i.lk = invoke noundef nonnull align 8 ptr @_RNvMs2_NtCsaIrsFcbE0XP_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryTReyEEKj3a_E12get_or_allocCs4PheDXcg4wa_10polars_row(ptr noundef nonnull align 8 %i.le, i64 noundef range(i64 1, -9223372036854775808) %i.lg)
          to label %bb.bz unwind label %bb.bx, !dbg !2091, !noalias !1696 ; 4 uses

bb.bx:                                            ; preds = %bb.bw, %bb.bv, %bb.bu
  %i.ll = landingpad { ptr, i32 }
          catch ptr null, !dbg !2085
  %i.lm = extractvalue { ptr, i32 } %i.ll, 0, !dbg !2085
  %i.ln = invoke { ptr, ptr } @_RNvNvNtCsh8eZTKRCwoO_3std9panicking12catch_unwind7cleanup(ptr noundef %i.lm)
          to label %.thread.i32.i unwind label %bb.by, !dbg !2092, !noalias !1696 ; 2 uses

bb.by:                                            ; preds = %bb.bx
  %i.lo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer, !dbg !2085 ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking19panic_cannot_unwind() #28, !dbg !2093, !noalias !1696
  unreachable, !dbg !2093

.thread.i32.i:                                    ; preds = %bb.bx
  %i.lp = extractvalue { ptr, ptr } %i.ln, 0, !dbg !2092
  %i.lq = extractvalue { ptr, ptr } %i.ln, 1, !dbg !2092 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lq) ]
  %i.lr = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !2094
  store ptr %i.lp, ptr %i.lr, align 8, !dbg !2094, !noalias !1696
  %i.ls = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !2094
  store ptr %i.lq, ptr %i.ls, align 8, !dbg !2094, !noalias !1696
  store i64 19, ptr %i.e, align 8, !dbg !2094, !noalias !1696
  br label %bb.cc, !dbg !2088

bb.bz:                                            ; preds = %bb.bw
  store ptr %i.bm, ptr %i.lk, align 8, !dbg !2095, !noalias !1724
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.lk, i64 8, !dbg !2095
  store i64 %i.kw, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !dbg !2095, !noalias !1724
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.lk, i64 16, !dbg !2095
  store i64 %i.ld, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !dbg !2095, !noalias !1724
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lk, i64 24, !dbg !2096
  store atomic i8 1, ptr %i.lt release, align 8, !dbg !2097, !noalias !1732
  %i.lu = getelementptr inbounds nuw i8, ptr %6, i64 600, !dbg !2098
  %i.lv = atomicrmw add ptr %i.lu, i64 1 release, align 8, !dbg !2099, !noalias !1733 ; 0 uses
  %i.lw = trunc i64 %i.lg to i32, !dbg !2100
  %i.lx = add i32 %i.lw, -32, !dbg !2100
  store i32 %i.lx, ptr %i.kx, align 8, !dbg !2101, !noalias !1697
  store i64 18, ptr %i.e, align 8, !dbg !2087, !noalias !1696
  %.sroa.425.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !2087
  store ptr inttoptr (i64 -9223372036854775808 to ptr), ptr %.sroa.425.0..sroa_idx.i.i, align 8, !dbg !2087, !noalias !1696
  %.sroa.526.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !2087
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.526.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @4, i64 16), i64 56, i1 false), !dbg !2087, !noalias !1696
  %i.ly = or disjoint i64 %i.bk, 1, !dbg !2102
  %i.lz = inttoptr i64 %i.ly to ptr, !dbg !2103
  %i.ma = atomicrmw xchg ptr %i.bi, ptr %i.lz release, align 8, !dbg !2104, !noalias !1696
  br label %bb.ca, !dbg !2105

bb.ca:                                            ; preds = %bb.cc, %bb.bz
  %.sroa.0.0.i34.i = phi ptr [ %i.ml, %bb.cc ], [ %i.ma, %bb.bz ], !dbg !2106
  %i.mb = ptrtoint ptr %.sroa.0.0.i34.i to i64, !dbg !2107
  %i.mc = and i64 %i.mb, 2, !dbg !2108
  %i.md = icmp eq i64 %i.mc, 0, !dbg !2108
  br i1 %i.md, label %bb.cg, label %bb.cd, !dbg !2108

bb.cb:                                            ; preds = %bb.co, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuarduEINtB17_11PoisonErrorB12_EEECs4PheDXcg4wa_10polars_row.exit.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuarduEECs4PheDXcg4wa_10polars_row.exit.sink.split.i.i.i, %bb.cm, %bb.cj, %bb.cf, %bb.ce
  %.sroa.01.0.i35.i = phi i1 [ false, %bb.co ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuarduEINtB17_11PoisonErrorB12_EEECs4PheDXcg4wa_10polars_row.exit.i.i ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuarduEECs4PheDXcg4wa_10polars_row.exit.sink.split.i.i.i ], [ true, %bb.cf ], [ true, %bb.ce ], [ true, %bb.cj ], [ true, %bb.cm ], !dbg !2109
  %i.me = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.mf = load i64, ptr %i.e, align 8, !dbg !2110, !range !1735, !noalias !1696, !noundef !123
  switch i64 %i.mf, label %bb.cr [
    i64 19, label %bb.cq
    i64 18, label %common.resume.i
  ], !dbg !2110

bb.cc:                                            ; preds = %.thread.i32.i, %.thread37.i.i
  %i.mg = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !2111
  %i.mh = atomicrmw xchg ptr %i.mg, ptr %i.bi acq_rel, align 8, !dbg !2112, !noalias !1696 ; 2 uses
  %i.mi = ptrtoint ptr %i.mh to i64, !dbg !2113
  %.not.i33.i = and i64 %i.mi, 4, !dbg !2114
  %i.mj = xor i64 %.not.i33.i, 4, !dbg !2114
  %i.mk = getelementptr i8, ptr %i.mh, i64 %i.mj, !dbg !2115
  %i.ml = atomicrmw xchg ptr %i.bi, ptr %i.mk release, align 8, !dbg !2116, !noalias !1696
  store atomic ptr inttoptr (i64 -1 to ptr), ptr %i.jq monotonic, align 8, !dbg !2117, !noalias !1696
  %i.mm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i26.i, i64 8, !dbg !2118
  %i.mn = atomicrmw add ptr %i.mm, i64 1 release, align 8, !dbg !2119, !noalias !1696 ; 0 uses
  br label %bb.ca, !dbg !2105

bb.cd:                                            ; preds = %bb.ca
  %i.mo = cmpxchg ptr %i.hz, i32 0, i32 1 acquire monotonic, align 4, !dbg !2120, !noalias !1738
  %i.mp = extractvalue { i32, i1 } %i.mo, 1, !dbg !2120
  br i1 %i.mp, label %.noexc.i.i, label %bb.ce, !dbg !2121, !prof !207

bb.ce:                                            ; preds = %bb.cd
  invoke void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4 %i.hz)
          to label %.noexc.i.i unwind label %bb.cb, !dbg !2122, !noalias !1696

.noexc.i.i:                                       ; preds = %bb.ce, %bb.cd
  %i.mq = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !2123, !noalias !1738
  %i.mr = and i64 %i.mq, 9223372036854775807, !dbg !2124
  %i.ms = icmp eq i64 %i.mr, 0, !dbg !2124
  br i1 %i.ms, label %.thread41.i.i, label %bb.cf, !dbg !2124, !prof !207

bb.cf:                                            ; preds = %.noexc.i.i
  %i.mt = invoke noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #26
          to label %bb.ch unwind label %bb.cb, !dbg !2125, !noalias !1696 ; 2 uses

bb.cg:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuarduEINtB17_11PoisonErrorB12_EEECs4PheDXcg4wa_10polars_row.exit.i.i, %bb.ca
  %i.mu = load i64, ptr %i.e, align 8, !dbg !2126, !range !1735, !noalias !1696, !noundef !123 ; 2 uses
  switch i64 %i.mu, label %bb.ei [
    i64 19, label %bb.co
    i64 18, label %_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE23try_find_or_insert_implNtCsgjwxzEoLG5s_12polars_error11PolarsErrorNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB2f_18CategoricalMapping20insert_cat_with_hashs_0NCB2c_0ECs4PheDXcg4wa_10polars_row.exit.thread34
  ], !dbg !2127

_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE23try_find_or_insert_implNtCsgjwxzEoLG5s_12polars_error11PolarsErrorNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB2f_18CategoricalMapping20insert_cat_with_hashs_0NCB2c_0ECs4PheDXcg4wa_10polars_row.exit.thread34: ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !2110, !noalias !1696
  br label %_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE23try_find_or_insert_implNtCsgjwxzEoLG5s_12polars_error11PolarsErrorNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB2f_18CategoricalMapping20insert_cat_with_hashs_0NCB2c_0ECs4PheDXcg4wa_10polars_row.exit.thread, !dbg !2128

bb.ch:                                            ; preds = %bb.cf
  %i.mv = load atomic i8, ptr %i.ib monotonic, align 4, !dbg !2129, !noalias !1738
  %.not34.i.i = icmp eq i8 %i.mv, 0, !dbg !2130
  br i1 %.not34.i.i, label %bb.ci, label %bb.cl, !dbg !2131

.thread41.i.i:                                    ; preds = %.noexc.i.i
  %i.mw = load atomic i8, ptr %i.ib monotonic, align 4, !dbg !2129, !noalias !1738
  %.not3443.i.i = icmp eq i8 %i.mw, 0, !dbg !2130
  br i1 %.not3443.i.i, label %.thread46.i.i, label %.thread48.i.i, !dbg !2131

bb.ci:                                            ; preds = %bb.ch
  br i1 %i.mt, label %.thread46.i.i, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i37.i, !dbg !2132

.thread46.i.i:                                    ; preds = %bb.ci, %.thread41.i.i
  %i.mx = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !2133, !noalias !1740
  %i.my = and i64 %i.mx, 9223372036854775807, !dbg !2134
  %i.mz = icmp eq i64 %i.my, 0, !dbg !2134
  br i1 %i.mz, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i37.i, label %bb.cj, !dbg !2134, !prof !207

bb.cj:                                            ; preds = %.thread46.i.i
  %i.na = invoke noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #26
          to label %.noexc15.i.i unwind label %bb.cb, !dbg !2135, !noalias !1696

.noexc15.i.i:                                     ; preds = %bb.cj
  br i1 %i.na, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i37.i, label %bb.ck, !dbg !2136

bb.ck:                                            ; preds = %.noexc15.i.i
  store atomic i8 1, ptr %i.ib monotonic, align 4, !dbg !2137, !noalias !1740
  br label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i37.i, !dbg !2138

_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i37.i: ; preds = %bb.ck, %.noexc15.i.i, %.thread46.i.i, %bb.ci
  %i.nb = atomicrmw xchg ptr %i.hz, i32 0 release, align 4, !dbg !2139, !noalias !1740
  %i.nc = icmp eq i32 %i.nb, 2, !dbg !2140
  br i1 %i.nc, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuarduEECs4PheDXcg4wa_10polars_row.exit.sink.split.i.i.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuarduEINtB17_11PoisonErrorB12_EEECs4PheDXcg4wa_10polars_row.exit.i.i, !dbg !2140, !prof !146

bb.cl:                                            ; preds = %bb.ch
  br i1 %i.mt, label %.thread48.i.i, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i36.i, !dbg !2141

.thread48.i.i:                                    ; preds = %bb.cl, %.thread41.i.i
  %i.nd = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !2142, !noalias !1741
  %i.ne = and i64 %i.nd, 9223372036854775807, !dbg !2143
  %i.nf = icmp eq i64 %i.ne, 0, !dbg !2143
  br i1 %i.nf, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i36.i, label %bb.cm, !dbg !2143, !prof !207

bb.cm:                                            ; preds = %.thread48.i.i
  %i.ng = invoke noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #26
          to label %.noexc16.i.i unwind label %bb.cb, !dbg !2144, !noalias !1696

.noexc16.i.i:                                     ; preds = %bb.cm
  br i1 %i.ng, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i36.i, label %bb.cn, !dbg !2145

bb.cn:                                            ; preds = %.noexc16.i.i
  store atomic i8 1, ptr %i.ib monotonic, align 4, !dbg !2146, !noalias !1741
  br label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i36.i, !dbg !2147

_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i36.i: ; preds = %bb.cn, %.noexc16.i.i, %.thread48.i.i, %bb.cl
  %i.nh = atomicrmw xchg ptr %i.hz, i32 0 release, align 4, !dbg !2148, !noalias !1741
  %i.ni = icmp eq i32 %i.nh, 2, !dbg !2149
  br i1 %i.ni, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuarduEECs4PheDXcg4wa_10polars_row.exit.sink.split.i.i.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuarduEINtB17_11PoisonErrorB12_EEECs4PheDXcg4wa_10polars_row.exit.i.i, !dbg !2149, !prof !146

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuarduEECs4PheDXcg4wa_10polars_row.exit.sink.split.i.i.i: ; preds = %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i36.i, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i37.i
  invoke void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.hz)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuarduEINtB17_11PoisonErrorB12_EEECs4PheDXcg4wa_10polars_row.exit.i.i unwind label %bb.cb, !dbg !2131, !noalias !1696

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuarduEINtB17_11PoisonErrorB12_EEECs4PheDXcg4wa_10polars_row.exit.i.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuarduEECs4PheDXcg4wa_10polars_row.exit.sink.split.i.i.i, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i36.i, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i37.i
  invoke void @_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync6poison7condvarNtB2_7Condvar10notify_all(ptr noundef nonnull align 4 %i.ia)
          to label %bb.cg unwind label %bb.cb, !dbg !2150, !noalias !1696

bb.co:                                            ; preds = %bb.cg
  %i.nj = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !2151
  %i.nk = load ptr, ptr %i.nj, align 8, !dbg !2151, !noalias !1696, !nonnull !123, !noundef !123
  %i.nl = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !2151
  %i.nm = load ptr, ptr %i.nl, align 8, !dbg !2151, !noalias !1696, !nonnull !123, !align !237, !noundef !123
  invoke void @_RNvNtCsh8eZTKRCwoO_3std5panic13resume_unwind(ptr noundef nonnull %i.nk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.nm) #24
          to label %bb.cp unwind label %bb.cb, !dbg !2152, !noalias !1696

bb.cp:                                            ; preds = %bb.co
  unreachable

bb.cq:                                            ; preds = %bb.cb
  br i1 %.sroa.01.0.i35.i, label %bb.ct, label %common.resume.i, !dbg !2110

bb.cr:                                            ; preds = %bb.cb
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e) #27
          to label %common.resume.i unwind label %bb.cs, !dbg !2110, !noalias !1696

bb.cs:                                            ; preds = %bb.ct, %bb.cr
  %i.nn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !2153, !noalias !1696
  unreachable, !dbg !2153

bb.ct:                                            ; preds = %bb.cq
  %i.no = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !2110
  %.val.i.i22 = load ptr, ptr %i.no, align 8, !dbg !2110, !noalias !1696
  %i.np = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !2110
  %.val12.i.i = load ptr, ptr %i.np, align 8, !dbg !2110, !noalias !1696, !nonnull !123, !align !237, !noundef !123
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs4PheDXcg4wa_10polars_row(ptr %.val.i.i22, ptr nonnull %.val12.i.i) #27
          to label %common.resume.i unwind label %bb.cs, !dbg !2110, !noalias !1696

bb.cu:                                            ; preds = %bb.bj, %bb.bi
  %.sroa.010.0.i = phi ptr [ %i.jr, %bb.bi ], [ %.sroa.01.0.i.i, %bb.bj ], !dbg !2154 ; 8 uses
  %i.nq = icmp eq ptr %.sroa.010.0.i, inttoptr (i64 -1 to ptr), !dbg !2155
  br i1 %i.nq, label %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping20insert_cat_with_hash0Cs4PheDXcg4wa_10polars_row.exit.thread.i, label %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE7key_ptrCs4PheDXcg4wa_10polars_row.exit.i21, !dbg !2155

_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE7key_ptrCs4PheDXcg4wa_10polars_row.exit.i21: ; preds = %bb.cu
  %i.nr = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i, i64 16, !dbg !2156
  %i.ns = load i64, ptr %i.nr, align 8, !dbg !2157, !noalias !1658, !noundef !123
  %i.nt = icmp eq i64 %i.ns, %i.hx, !dbg !2158
  br i1 %i.nt, label %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping20insert_cat_with_hash0Cs4PheDXcg4wa_10polars_row.exit.i, label %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping20insert_cat_with_hash0Cs4PheDXcg4wa_10polars_row.exit.thread.i, !dbg !2158

_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping20insert_cat_with_hash0Cs4PheDXcg4wa_10polars_row.exit.i: ; preds = %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE7key_ptrCs4PheDXcg4wa_10polars_row.exit.i21
  %i.nu = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i, i64 24, !dbg !2159
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.nu, ptr nonnull %i.hy, i64 %i.hx), !dbg !2160, !noalias !1658
  %i.nv = icmp eq i32 %bcmp.i.i, 0, !dbg !2160
  br i1 %i.nv, label %bb.cv, label %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping20insert_cat_with_hash0Cs4PheDXcg4wa_10polars_row.exit.thread.i, !dbg !2161

_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping20insert_cat_with_hash0Cs4PheDXcg4wa_10polars_row.exit.thread.i: ; preds = %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE13wait_for_initCs4PheDXcg4wa_10polars_row.exit.i, %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping20insert_cat_with_hash0Cs4PheDXcg4wa_10polars_row.exit.i, %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE7key_ptrCs4PheDXcg4wa_10polars_row.exit.i21, %bb.cu
  %i.nw = add i64 %.sroa.019.092.i, -128, !dbg !2162
  %i.nx = and i64 %i.nw, %.sroa.019.092.i, !dbg !2163 ; 2 uses
  %i.ny = icmp eq i64 %i.nx, 0, !dbg !2016
  br i1 %i.ny, label %._crit_edge.i20, label %bb.bg, !dbg !2016

bb.cv:                                            ; preds = %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping20insert_cat_with_hash0Cs4PheDXcg4wa_10polars_row.exit.i
  %i.nz = load atomic ptr, ptr %.sroa.010.0.i acquire, align 8, !dbg !2164, !noalias !1658 ; 3 uses
  %i.oa = ptrtoint ptr %i.nz to i64, !dbg !2165   ; 3 uses
  %i.ob = and i64 %i.oa, 5, !dbg !2166
  %i.oc = icmp eq i64 %i.ob, 0, !dbg !2166
  br i1 %i.oc, label %bb.cw, label %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE13wait_for_initCs4PheDXcg4wa_10polars_row.exit.i, !dbg !2166

bb.cw:                                            ; preds = %bb.cv
  %i.od = cmpxchg ptr %i.hz, i32 0, i32 1 acquire monotonic, align 4, !dbg !2167, !noalias !1742
  %i.oe = extractvalue { i32, i1 } %i.od, 1, !dbg !2167
  br i1 %i.oe, label %bb.cy, label %bb.cx, !dbg !2168, !prof !207

bb.cx:                                            ; preds = %bb.cw
  tail call void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4 %i.hz), !dbg !2169, !noalias !1742
  br label %bb.cy, !dbg !2169

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %i.of = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !2170, !noalias !1742
  %i.og = and i64 %i.of, 9223372036854775807, !dbg !2171
  %i.oh = icmp eq i64 %i.og, 0, !dbg !2171
  br i1 %i.oh, label %_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexuE4lockCs4PheDXcg4wa_10polars_row.exit.i.i, label %bb.cz, !dbg !2171, !prof !207

bb.cz:                                            ; preds = %bb.cy
  %i.oi = tail call noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #26, !dbg !2172, !noalias !1742
  %i.oj = xor i1 %i.oi, true, !dbg !2173
  %i.ok = zext i1 %i.oj to i8, !dbg !2174
  br label %_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexuE4lockCs4PheDXcg4wa_10polars_row.exit.i.i, !dbg !2172

_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexuE4lockCs4PheDXcg4wa_10polars_row.exit.i.i: ; preds = %bb.cz, %bb.cy
  %.sroa.01.0.i.i.i39.i = phi i8 [ %i.ok, %bb.cz ], [ 0, %bb.cy ], !dbg !2175 ; 4 uses
  %i.ol = load atomic i8, ptr %i.ib monotonic, align 4, !dbg !2176, !noalias !1742
  %.not34.i40.i = icmp eq i8 %i.ol, 0, !dbg !2177
  br i1 %.not34.i40.i, label %bb.de, label %bb.da, !dbg !2178, !prof !207

bb.da:                                            ; preds = %_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexuE4lockCs4PheDXcg4wa_10polars_row.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !2179, !noalias !1743
  store ptr %i.hz, ptr %i.b, align 8, !dbg !2179, !noalias !1743
  %i.om = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !2179
  store i8 %.sroa.01.0.i.i.i39.i, ptr %i.om, align 8, !dbg !2179, !noalias !1743
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #24
          to label %bb.dc unwind label %bb.db, !dbg !2180, !noalias !1744

bb.db:                                            ; preds = %bb.da
  %i.on = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsh8eZTKRCwoO_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuarduEEECs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #27
          to label %common.resume.i unwind label %bb.dd, !dbg !2181, !noalias !1744

bb.dc:                                            ; preds = %bb.da
  unreachable

bb.dd:                                            ; preds = %bb.db
  %i.oo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !2182, !noalias !1744
  unreachable, !dbg !2182

bb.de:                                            ; preds = %_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexuE4lockCs4PheDXcg4wa_10polars_row.exit.i.i
  %.not.i43.i = and i64 %i.oa, 2, !dbg !2183
  %i.op = xor i64 %.not.i43.i, 2, !dbg !2183
  %i.oq = getelementptr i8, ptr %i.nz, i64 %i.op, !dbg !2184
  %i.or = cmpxchg ptr %.sroa.010.0.i, ptr %i.nz, ptr %i.oq monotonic acquire, align 8, !dbg !2185, !noalias !1658
  %.sroa.01.0.i.i.i = extractvalue { ptr, i1 } %i.or, 0, !dbg !2186
  %i.os = ptrtoint ptr %.sroa.01.0.i.i.i to i64, !dbg !2187 ; 2 uses
  %i.ot = and i64 %i.os, 5, !dbg !2188
  %i.ou = icmp eq i64 %i.ot, 0, !dbg !2188
  br i1 %i.ou, label %.lr.ph.i.i, label %._crit_edge.i.i, !dbg !2188

.lr.ph.i.i:                                       ; preds = %bb.de, %bb.du
  invoke void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync7condvar5futexNtB2_7Condvar4wait(ptr noundef nonnull align 4 %i.ia, ptr noundef nonnull align 4 %i.hz)
          to label %bb.dl unwind label %bb.df, !dbg !2189, !noalias !1745

bb.df:                                            ; preds = %.lr.ph.i.i
  %i.ov = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuarduEECs4PheDXcg4wa_10polars_row(ptr nonnull align 4 %i.hz, i8 %.sroa.01.0.i.i.i39.i) #27
          to label %common.resume.i unwind label %bb.dg, !dbg !2190, !noalias !1745

bb.dg:                                            ; preds = %bb.df
  %i.ow = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !2191, !noalias !1745
  unreachable, !dbg !2191

._crit_edge.i.i:                                  ; preds = %bb.du, %bb.de
  %.lcssa.i.i = phi i64 [ %i.os, %bb.de ], [ %i.pr, %bb.du ], !dbg !2187 ; 2 uses
  %i.ox = trunc nuw i8 %.sroa.01.0.i.i.i39.i to i1, !dbg !2192
  br i1 %i.ox, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i44.i, label %bb.dh, !dbg !2192

bb.dh:                                            ; preds = %._crit_edge.i.i
  %i.oy = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !2193, !noalias !1658
  %i.oz = and i64 %i.oy, 9223372036854775807, !dbg !2194
  %i.pa = icmp eq i64 %i.oz, 0, !dbg !2194
  br i1 %i.pa, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i44.i, label %bb.di, !dbg !2194, !prof !207

bb.di:                                            ; preds = %bb.dh
  %i.pb = tail call noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #26, !dbg !2195, !noalias !1658
  br i1 %i.pb, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i44.i, label %bb.dj, !dbg !2196

bb.dj:                                            ; preds = %bb.di
  store atomic i8 1, ptr %i.ib monotonic, align 4, !dbg !2197, !noalias !1658
  br label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i44.i, !dbg !2198

_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i44.i: ; preds = %bb.dj, %bb.di, %bb.dh, %._crit_edge.i.i
  %i.pc = atomicrmw xchg ptr %i.hz, i32 0 release, align 4, !dbg !2199, !noalias !1658
  %i.pd = icmp eq i32 %i.pc, 2, !dbg !2200
  br i1 %i.pd, label %bb.dk, label %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE13wait_for_initCs4PheDXcg4wa_10polars_row.exit.i, !dbg !2200, !prof !146

bb.dk:                                            ; preds = %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i44.i
  tail call void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.hz), !dbg !2201, !noalias !1658
  br label %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE13wait_for_initCs4PheDXcg4wa_10polars_row.exit.i, !dbg !2201

bb.dl:                                            ; preds = %.lr.ph.i.i
  %i.pe = load atomic i8, ptr %i.ib monotonic, align 4, !dbg !2202, !noalias !1745
  %.not35.i.i = icmp eq i8 %i.pe, 0, !dbg !2203
  br i1 %.not35.i.i, label %bb.du, label %bb.dm, !dbg !2204, !prof !207

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !2205, !noalias !1746
  store ptr %i.hz, ptr %i.c, align 8, !dbg !2205, !noalias !1746
  %i.pf = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !2205 ; 2 uses
  store i8 %.sroa.01.0.i.i.i39.i, ptr %i.pf, align 8, !dbg !2205, !noalias !1746
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #24
          to label %bb.ds unwind label %bb.dn, !dbg !2206, !noalias !1747

bb.dn:                                            ; preds = %bb.dm
  %i.pg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1748), !dbg !2207
  %.val.i59.i = load ptr, ptr %i.c, align 8, !dbg !2208, !alias.scope !1748, !noalias !1747, !nonnull !123, !align !238, !noundef !123 ; 3 uses
  %.val1.i.i = load i8, ptr %i.pf, align 8, !dbg !2208, !range !239, !alias.scope !1748, !noalias !1747, !noundef !123
  %i.ph = getelementptr inbounds nuw i8, ptr %.val.i59.i, i64 4, !dbg !2209
  %i.pi = trunc nuw i8 %.val1.i.i to i1, !dbg !2210
  br i1 %i.pi, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i60.i, label %bb.do, !dbg !2210

bb.do:                                            ; preds = %bb.dn
  %i.pj = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !2211, !noalias !1749
  %i.pk = and i64 %i.pj, 9223372036854775807, !dbg !2212
  %i.pl = icmp eq i64 %i.pk, 0, !dbg !2212
  br i1 %i.pl, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i60.i, label %bb.dp, !dbg !2212, !prof !207

bb.dp:                                            ; preds = %bb.do
  %i.pm = invoke noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #26
          to label %.noexc.i unwind label %bb.dt, !dbg !2213, !noalias !1658

.noexc.i:                                         ; preds = %bb.dp
  br i1 %i.pm, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i60.i, label %bb.dq, !dbg !2214

bb.dq:                                            ; preds = %.noexc.i
  store atomic i8 1, ptr %i.ph monotonic, align 4, !dbg !2215, !noalias !1749
  br label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i60.i, !dbg !2216

_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i60.i: ; preds = %bb.dq, %.noexc.i, %bb.do, %bb.dn
  %i.pn = atomicrmw xchg ptr %.val.i59.i, i32 0 release, align 4, !dbg !2217, !noalias !1749
  %i.po = icmp eq i32 %i.pn, 2, !dbg !2218
  br i1 %i.po, label %bb.dr, label %common.resume.i, !dbg !2218, !prof !146

bb.dr:                                            ; preds = %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i60.i
  invoke void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i59.i)
          to label %common.resume.i unwind label %bb.dt, !dbg !2219, !noalias !1658

bb.ds:                                            ; preds = %bb.dm
  unreachable

bb.dt:                                            ; preds = %bb.dr, %bb.dp
  %i.pp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !2220, !noalias !1747
  unreachable, !dbg !2220

bb.du:                                            ; preds = %bb.dl
  %i.pq = load atomic ptr, ptr %.sroa.010.0.i acquire, align 8, !dbg !2221, !noalias !1658
  %i.pr = ptrtoint ptr %i.pq to i64, !dbg !2187   ; 2 uses
  %i.ps = and i64 %i.pr, 5, !dbg !2188
  %i.pt = icmp eq i64 %i.ps, 0, !dbg !2188
  br i1 %i.pt, label %.lr.ph.i.i, label %._crit_edge.i.i, !dbg !2188

_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE13wait_for_initCs4PheDXcg4wa_10polars_row.exit.i: ; preds = %bb.dk, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i44.i, %bb.cv
  %.sroa.0.0.in.in.in.i.i = phi i64 [ %i.oa, %bb.cv ], [ %.lcssa.i.i, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i44.i ], [ %.lcssa.i.i, %bb.dk ]
  %.sroa.0.0.in.in.i.i = and i64 %.sroa.0.0.in.in.in.i.i, 4, !dbg !2222
  %.sroa.0.0.in.i.i = icmp eq i64 %.sroa.0.0.in.in.i.i, 0, !dbg !2222
  br i1 %.sroa.0.0.in.i.i, label %bb.dv, label %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping20insert_cat_with_hash0Cs4PheDXcg4wa_10polars_row.exit.thread.i, !dbg !2223

bb.dv:                                            ; preds = %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE13wait_for_initCs4PheDXcg4wa_10polars_row.exit.i
  %i.pu = load i64, ptr %i.bl, align 8, !dbg !2224, !noalias !1658, !noundef !123 ; 2 uses
  %i.pv = add i64 %i.pu, -9223372036854775793, !dbg !2225
  %.not.i.i45.i = icmp ult i64 %i.pv, -9223372036854775801, !dbg !2225
  br i1 %.not.i.i45.i, label %bb.dw, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCs4PheDXcg4wa_10polars_row.exit.i.i46.i, !dbg !2226, !prof !146

bb.dw:                                            ; preds = %bb.dv
  call void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #24, !dbg !2227, !noalias !1658
  unreachable

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCs4PheDXcg4wa_10polars_row.exit.i.i46.i: ; preds = %bb.dv
  %i.pw = add i64 %i.pu, 24, !dbg !2228           ; 2 uses
  %.not.i.i.i47.i = icmp ugt i64 %i.pw, 9223372036854775800, !dbg !2229
end_hunk_1
