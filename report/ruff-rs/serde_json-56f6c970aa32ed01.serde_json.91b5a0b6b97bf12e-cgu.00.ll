Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/serde_json-56f6c970aa32ed01.serde_json.91b5a0b6b97bf12e-cgu.00?download=true
inline.NumInlined: 159
inline.NumDeleted: 105
begin_hunk_0_@_RINvXsd_NtCscvBHLZPbXnS_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQNtNvXs_NtB8_5valueNtB1x_5ValueNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt15WriterFormatterEB8_:bb.a
  %i.j = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.k = and i64 %i.j, 3
  switch i64 %i.k, label %.lr.ph.i.unreachabledefault [
    i64 2, label %.split.i.i
    i64 3, label %bb.b
    i64 0, label %.split48.i.i
    i64 1, label %.split47.i.i
  ], !prof !50

.lr.ph.i.unreachabledefault:                      ; preds = %.lr.ph.i
  unreachable

default.unreachable:                              ; preds = %.lr.ph.i12, %.lr.ph.i22
  unreachable

.split.i.i:                                       ; preds = %.lr.ph.i
  %.mask.i.i = and i64 %i.j, -4294967296
  %i.l = icmp eq i64 %.mask.i.i, 17179869184
  br i1 %i.l, label %bb.c, label %_RNvXs_NtNtCs2AWtUsOyxgP_3std2io5implsQNtNvXs_NtCscvBHLZPbXnS_10serde_json5valueNtBH_5ValueNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt15WriterFormatterNtB6_5Write9write_allBJ_.exit

.split48.i.i:                                     ; preds = %.lr.ph.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.n = load i8, ptr %i.m, align 8, !range !70, !noalias !56, !noundef !4
  %i.o = icmp eq i8 %i.n, 35
  br i1 %i.o, label %bb.c, label %_RNvXs_NtNtCs2AWtUsOyxgP_3std2io5implsQNtNvXs_NtCscvBHLZPbXnS_10serde_json5valueNtBH_5ValueNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt15WriterFormatterNtB6_5Write9write_allBJ_.exit

.split47.i.i:                                     ; preds = %.lr.ph.i
  %i.p = getelementptr i8, ptr %i.i, i64 15
  %i.q = load i8, ptr %i.p, align 8, !range !70, !noalias !56, !noundef !4
  %i.r = icmp eq i8 %i.q, 35
  br i1 %i.r, label %bb.c, label %_RNvXs_NtNtCs2AWtUsOyxgP_3std2io5implsQNtNvXs_NtCscvBHLZPbXnS_10serde_json5valueNtBH_5ValueNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt15WriterFormatterNtB6_5Write9write_allBJ_.exit

bb.b:                                             ; preds = %.lr.ph.i
  %i.s = lshr i64 %i.j, 32
  %i.t = icmp ult ptr %i.i, inttoptr (i64 180388626432 to ptr)
  %switch.idx.cast.i.i.i.i = trunc i64 %i.s to i8
  %spec.select.i.i.i.i = select i1 %i.t, i8 %switch.idx.cast.i.i.i.i, i8 -1 ; 2 uses
  %i.u = icmp ne i8 %spec.select.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.u)
  %i.v = icmp eq i8 %spec.select.i.i.i.i, 35
  br i1 %i.v, label %bb.c, label %_RNvXs_NtNtCs2AWtUsOyxgP_3std2io5implsQNtNvXs_NtCscvBHLZPbXnS_10serde_json5valueNtBH_5ValueNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt15WriterFormatterNtB6_5Write9write_allBJ_.exit

bb.c:                                             ; preds = %bb.b, %.split47.i.i, %.split48.i.i, %.split.i.i
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECscvBHLZPbXnS_10serde_json(ptr nonnull %i.i), !noalias !56
  %i.w = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !71
  br i1 %i.w, label %.lr.ph.i, label %_RNvXs_NtNtCs2AWtUsOyxgP_3std2io5implsQNtNvXs_NtCscvBHLZPbXnS_10serde_json5valueNtBH_5ValueNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt15WriterFormatterNtB6_5Write9write_allBJ_.exit

bb.d:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  %i.x = load ptr, ptr %.0.val, align 8, !alias.scope !76, !noalias !79, !nonnull !4, !align !51, !noundef !4 ; 2 uses
  %i.y = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x, ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !84
  br i1 %i.y, label %.lr.ph.i12, label %_RNvXs_NtNtCs2AWtUsOyxgP_3std2io5implsQNtNvXs_NtCscvBHLZPbXnS_10serde_json5valueNtBH_5ValueNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt15WriterFormatterNtB6_5Write9write_allBJ_.exit20

.lr.ph.i12:                                       ; preds = %bb.d, %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  %i.z = tail call noundef nonnull ptr @_RINvMs3_NtNtCs2AWtUsOyxgP_3std2io5errorNtB6_5Error3newReEBa_(i8 noundef 40, ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 9), !noalias !76 ; 9 uses
  %i.aa = ptrtoint ptr %i.z to i64                ; 3 uses
  %i.ab = and i64 %i.aa, 3
  switch i64 %i.ab, label %default.unreachable [
    i64 2, label %.split.i.i17
    i64 3, label %bb.e
    i64 0, label %.split48.i.i14
    i64 1, label %.split47.i.i13
  ], !prof !50

.split.i.i17:                                     ; preds = %.lr.ph.i12
  %.mask.i.i18 = and i64 %i.aa, -4294967296
  %i.ac = icmp eq i64 %.mask.i.i18, 17179869184
  br i1 %i.ac, label %bb.f, label %_RNvXs_NtNtCs2AWtUsOyxgP_3std2io5implsQNtNvXs_NtCscvBHLZPbXnS_10serde_json5valueNtBH_5ValueNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt15WriterFormatterNtB6_5Write9write_allBJ_.exit

.split48.i.i14:                                   ; preds = %.lr.ph.i12
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ae = load i8, ptr %i.ad, align 8, !range !70, !noalias !73, !noundef !4
  %i.af = icmp eq i8 %i.ae, 35
  br i1 %i.af, label %bb.f, label %_RNvXs_NtNtCs2AWtUsOyxgP_3std2io5implsQNtNvXs_NtCscvBHLZPbXnS_10serde_json5valueNtBH_5ValueNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt15WriterFormatterNtB6_5Write9write_allBJ_.exit

.split47.i.i13:                                   ; preds = %.lr.ph.i12
  %i.ag = getelementptr i8, ptr %i.z, i64 15
  %i.ah = load i8, ptr %i.ag, align 8, !range !70, !noalias !73, !noundef !4
  %i.ai = icmp eq i8 %i.ah, 35
  br i1 %i.ai, label %bb.f, label %_RNvXs_NtNtCs2AWtUsOyxgP_3std2io5implsQNtNvXs_NtCscvBHLZPbXnS_10serde_json5valueNtBH_5ValueNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt15WriterFormatterNtB6_5Write9write_allBJ_.exit

bb.e:                                             ; preds = %.lr.ph.i12
  %i.aj = lshr i64 %i.aa, 32
  %i.ak = icmp ult ptr %i.z, inttoptr (i64 180388626432 to ptr)
  %switch.idx.cast.i.i.i.i15 = trunc i64 %i.aj to i8
  %spec.select.i.i.i.i16 = select i1 %i.ak, i8 %switch.idx.cast.i.i.i.i15, i8 -1 ; 2 uses
  %i.al = icmp ne i8 %spec.select.i.i.i.i16, -1
  tail call void @llvm.assume(i1 %i.al)
  %i.am = icmp eq i8 %spec.select.i.i.i.i16, 35
  br i1 %i.am, label %bb.f, label %_RNvXs_NtNtCs2AWtUsOyxgP_3std2io5implsQNtNvXs_NtCscvBHLZPbXnS_10serde_json5valueNtBH_5ValueNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt15WriterFormatterNtB6_5Write9write_allBJ_.exit

bb.f:                                             ; preds = %bb.e, %.split47.i.i13, %.split48.i.i14, %.split.i.i17
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECscvBHLZPbXnS_10serde_json(ptr nonnull %i.z), !noalias !73
  %i.an = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x, ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !87
  br i1 %i.an, label %.lr.ph.i12, label %_RNvXs_NtNtCs2AWtUsOyxgP_3std2io5implsQNtNvXs_NtCscvBHLZPbXnS_10serde_json5valueNtBH_5ValueNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt15WriterFormatterNtB6_5Write9write_allBJ_.exit20

_RNvXs_NtNtCs2AWtUsOyxgP_3std2io5implsQNtNvXs_NtCscvBHLZPbXnS_10serde_json5valueNtBH_5ValueNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt15WriterFormatterNtB6_5Write9write_allBJ_.exit20: ; preds = %bb.f, %bb.d
  %i.ao = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !4 ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  %i.ar = icmp eq i64 %i.aq, 0
  %or.cond = or i1 %.not, %i.ar
  br i1 %or.cond, label %.loopexit, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %_RNvXs_NtNtCs2AWtUsOyxgP_3std2io5implsQNtNvXs_NtCscvBHLZPbXnS_10serde_json5valueNtBH_5ValueNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt15WriterFormatterNtB6_5Write9write_allBJ_.exit20
  %i.as = load ptr, ptr %.0.val, align 8, !alias.scope !89, !noalias !94, !nonnull !4, !align !51, !noundef !4 ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.split, %_RNvXs_NtNtCs2AWtUsOyxgP_3std2io5implsQNtNvXs_NtCscvBHLZPbXnS_10serde_json5valueNtBH_5ValueNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt15WriterFormatterNtB6_5Write9write_allBJ_.exit30
  %.sroa.06.011 = phi i64 [ 0, %.lr.ph.split ], [ %i.at, %_RNvXs_NtNtCs2AWtUsOyxgP_3std2io5implsQNtNvXs_NtCscvBHLZPbXnS_10serde_json5valueNtBH_5ValueNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt15WriterFormatterNtB6_5Write9write_allBJ_.exit30 ]
  %i.at = add nuw i64 %.sroa.06.011, 1            ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99)
  %i.au = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.as, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ao, i64 noundef range(i64 0, -9223372036854775808) %i.aq), !noalias !100
  br i1 %i.au, label %.lr.ph.i22, label %_RNvXs_NtNtCs2AWtUsOyxgP_3std2io5implsQNtNvXs_NtCscvBHLZPbXnS_10serde_json5valueNtBH_5ValueNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt15WriterFormatterNtB6_5Write9write_allBJ_.exit30

.lr.ph.i22:                                       ; preds = %.lr.ph.i.i, %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  %i.av = tail call noundef nonnull ptr @_RINvMs3_NtNtCs2AWtUsOyxgP_3std2io5errorNtB6_5Error3newReEBa_(i8 noundef 40, ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 9), !noalias !89 ; 9 uses
  %i.aw = ptrtoint ptr %i.av to i64               ; 3 uses
  %i.ax = and i64 %i.aw, 3
  switch i64 %i.ax, label %default.unreachable [
    i64 2, label %.split.i.i27
    i64 3, label %bb.g
    i64 0, label %.split48.i.i24
    i64 1, label %.split47.i.i23
  ], !prof !50

.split.i.i27:                                     ; preds = %.lr.ph.i22
  %.mask.i.i28 = and i64 %i.aw, -4294967296
  %i.ay = icmp eq i64 %.mask.i.i28, 17179869184
  br i1 %i.ay, label %bb.h, label %_RNvXs_NtNtCs2AWtUsOyxgP_3std2io5implsQNtNvXs_NtCscvBHLZPbXnS_10serde_json5valueNtBH_5ValueNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt15WriterFormatterNtB6_5Write9write_allBJ_.exit

.split48.i.i24:                                   ; preds = %.lr.ph.i22
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ba = load i8, ptr %i.az, align 8, !range !70, !noalias !99, !noundef !4
  %i.bb = icmp eq i8 %i.ba, 35
  br i1 %i.bb, label %bb.h, label %_RNvXs_NtNtCs2AWtUsOyxgP_3std2io5implsQNtNvXs_NtCscvBHLZPbXnS_10serde_json5valueNtBH_5ValueNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt15WriterFormatterNtB6_5Write9write_allBJ_.exit

.split47.i.i23:                                   ; preds = %.lr.ph.i22
  %i.bc = getelementptr i8, ptr %i.av, i64 15
  %i.bd = load i8, ptr %i.bc, align 8, !range !70, !noalias !99, !noundef !4
  %i.be = icmp eq i8 %i.bd, 35
  br i1 %i.be, label %bb.h, label %_RNvXs_NtNtCs2AWtUsOyxgP_3std2io5implsQNtNvXs_NtCscvBHLZPbXnS_10serde_json5valueNtBH_5ValueNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt15WriterFormatterNtB6_5Write9write_allBJ_.exit

bb.g:                                             ; preds = %.lr.ph.i22
  %i.bf = lshr i64 %i.aw, 32
  %i.bg = icmp ult ptr %i.av, inttoptr (i64 180388626432 to ptr)
  %switch.idx.cast.i.i.i.i25 = trunc i64 %i.bf to i8
  %spec.select.i.i.i.i26 = select i1 %i.bg, i8 %switch.idx.cast.i.i.i.i25, i8 -1 ; 2 uses
  %i.bh = icmp ne i8 %spec.select.i.i.i.i26, -1
  tail call void @llvm.assume(i1 %i.bh)
  %i.bi = icmp eq i8 %spec.select.i.i.i.i26, 35
  br i1 %i.bi, label %bb.h, label %_RNvXs_NtNtCs2AWtUsOyxgP_3std2io5implsQNtNvXs_NtCscvBHLZPbXnS_10serde_json5valueNtBH_5ValueNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt15WriterFormatterNtB6_5Write9write_allBJ_.exit

bb.h:                                             ; preds = %bb.g, %.split47.i.i23, %.split48.i.i24, %.split.i.i27
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECscvBHLZPbXnS_10serde_json(ptr nonnull %i.av), !noalias !99
  %i.bj = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.as, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ao, i64 noundef range(i64 0, -9223372036854775808) %i.aq), !noalias !103
  br i1 %i.bj, label %.lr.ph.i22, label %_RNvXs_NtNtCs2AWtUsOyxgP_3std2io5implsQNtNvXs_NtCscvBHLZPbXnS_10serde_json5valueNtBH_5ValueNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt15WriterFormatterNtB6_5Write9write_allBJ_.exit30

_RNvXs_NtNtCs2AWtUsOyxgP_3std2io5implsQNtNvXs_NtCscvBHLZPbXnS_10serde_json5valueNtBH_5ValueNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt15WriterFormatterNtB6_5Write9write_allBJ_.exit30: ; preds = %bb.h, %.lr.ph.i.i
  %exitcond.not = icmp eq i64 %i.at, %i.c
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.i.i

_RNvXs_NtNtCs2AWtUsOyxgP_3std2io5implsQNtNvXs_NtCscvBHLZPbXnS_10serde_json5valueNtBH_5ValueNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt15WriterFormatterNtB6_5Write9write_allBJ_.exit: ; preds = %.split.i.i17, %.split48.i.i14, %bb.e, %.split47.i.i13, %.split.i.i27, %.split48.i.i24, %bb.g, %.split47.i.i23, %bb.c, %bb.b, %.split47.i.i, %.split48.i.i, %.split.i.i, %.loopexit
  %.sroa.0.0 = phi ptr [ null, %.loopexit ], [ %i.i, %.split.i.i ], [ %i.av, %.split.i.i27 ], [ %i.i, %.split48.i.i ], [ %i.i, %bb.b ], [ %i.i, %.split47.i.i ], [ null, %bb.c ], [ %i.av, %.split47.i.i23 ], [ %i.av, %bb.g ], [ %i.av, %.split48.i.i24 ], [ %i.z, %.split47.i.i13 ], [ %i.z, %bb.e ], [ %i.z, %.split48.i.i14 ], [ %i.z, %.split.i.i17 ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvMs0_NtCscvBHLZPbXnS_10serde_json5valueNtB5_5Value11pointer_mut(ptr noalias noundef align 8 dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [80 x i8], align 8                ; 14 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 47, ptr %i.d, align 4
  %i.g = call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCscvBHLZPbXnS_10serde_json(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.g, label %bb.ac, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_3str4iter5SplitcEENtNtNtB9_6traits8iterator8Iterator8try_foldQNtNtCscvBHLZPbXnS_10serde_json5value5ValueNCINvNtB7_3map12map_try_foldReNtNtCscdodAO9FK5_5alloc6string6StringB27_INtNtBb_6option6OptionB27_ENCNvMs0_B2a_B28_11pointer_mut0NCB4q_s_0E0B3X_EB2c_.exit
  %.sroa.0.0 = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.i, %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_3str4iter5SplitcEENtNtNtB9_6traits8iterator8Iterator8try_foldQNtNtCscvBHLZPbXnS_10serde_json5value5ValueNCINvNtB7_3map12map_try_foldReNtNtCscdodAO9FK5_5alloc6string6StringB27_INtNtBb_6option6OptionB27_ENCNvMs0_B2a_B28_11pointer_mut0NCB4q_s_0E0B3X_EB2c_.exit ], [ null, %bb.b ]
  ret ptr %.sroa.0.0

bb.d:                                             ; preds = %bb.ac
  call void @llvm.experimental.noalias.scope.decl(metadata !105)
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.promoted.i = load i8, ptr %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx, align 1, !range !55, !alias.scope !108, !noalias !115
  %.val.i.i.i.i = load ptr, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8, !nonnull !4 ; 3 uses
  %.val1.i.i.i.i = load i64, ptr %.sroa.4.sroa.5.sroa.4.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 8 ; 2 uses
  %i.m = load i64, ptr %.sroa.4.sroa.5.sroa.6.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 8 ; 5 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.m, %.val1.i.i.i.i
  %i.n = load i8, ptr %.sroa.4.sroa.5.sroa.9.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 8 ; 2 uses
  %i.o = zext nneg i8 %i.n to i64                 ; 4 uses
  %i.p = icmp ult i8 %i.n, 5
  %i.q = getelementptr i8, ptr %.sroa.4.sroa.5.sroa.7.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, i64 %i.o
  %i.r = getelementptr i8, ptr %i.q, i64 -1
  %i.s = load i8, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx, align 8, !range !55
  %i.t = trunc nuw i8 %i.s to i1
  %.pre2.i.i.i.i.i = load i64, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldReNtNtCscdodAO9FK5_5alloc6string6StringQNtNtCscvBHLZPbXnS_10serde_json5value5ValueINtNtBa_6option6OptionB1C_ENCNvMs0_B1F_B1D_11pointer_mut0NCB2M_s_0E0B1H_.exit.i.i, %bb.d
  %i.u = phi i8 [ %.promoted.i, %bb.d ], [ %i.ar, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldReNtNtCscdodAO9FK5_5alloc6string6StringQNtNtCscvBHLZPbXnS_10serde_json5value5ValueINtNtBa_6option6OptionB1C_ENCNvMs0_B1F_B1D_11pointer_mut0NCB2M_s_0E0B1H_.exit.i.i ]
  %.sroa.01.0.i.i = phi ptr [ %0, %bb.d ], [ %.sroa.0.1.i.i13.i.i, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldReNtNtCscdodAO9FK5_5alloc6string6StringQNtNtCscvBHLZPbXnS_10serde_json5value5ValueINtNtBa_6option6OptionB1C_ENCNvMs0_B1F_B1D_11pointer_mut0NCB2M_s_0E0B1H_.exit.i.i ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !118)
  call void @llvm.experimental.noalias.scope.decl(metadata !119)
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_3str4iter5SplitcEENtNtNtB9_6traits8iterator8Iterator8try_foldQNtNtCscvBHLZPbXnS_10serde_json5value5ValueNCINvNtB7_3map12map_try_foldReNtNtCscdodAO9FK5_5alloc6string6StringB27_INtNtBb_6option6OptionB27_ENCNvMs0_B2a_B28_11pointer_mut0NCB4q_s_0E0B3X_EB2c_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !120)
  %.promoted.i.i.i.i.i = load i64, ptr %.sroa.4.sroa.5.sroa.5.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 8, !alias.scope !123, !noalias !124 ; 2 uses
  %i.w = icmp ult i64 %i.m, %.promoted.i.i.i.i.i
  %brmerge = select i1 %i.w, i1 true, i1 %.not.i.i.i.i.i
  br i1 %brmerge, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCscvBHLZPbXnS_10serde_json.exit.i.i.i.i, label %.lr.ph.split.i.i.i.i.i

.lr.ph.split.i.i.i.i.i:                           ; preds = %bb.f
  call void @llvm.assume(i1 %i.p)
  %.pre.i.i.i.i.i = load i8, ptr %i.r, align 1, !alias.scope !123, !noalias !124 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.l, %.lr.ph.split.i.i.i.i.i
  %i.x = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i ], [ %i.am, %bb.l ] ; 3 uses
  %i.y = sub nuw i64 %i.m, %i.x                   ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.x ; 2 uses
  %i.aa = icmp samesign ult i64 %i.y, 16
  br i1 %i.aa, label %.preheader.i.i.i.i.i.i, label %bb.h

.preheader.i.i.i.i.i.i:                           ; preds = %bb.g
  %.not.i.i.i.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.ab = call { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef range(i64 0, -9223372036854775808) %i.y), !noalias !126
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.i, %.lr.ph.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i ], [ %.sroa.01.05.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.y, %bb.i ]
  %.sroa.0.1.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.i ], [ 0, %bb.i ]
  %i.ac = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i.i.i, 0
  %i.ad = insertvalue { i64, i64 } %i.ac, i64 %.sroa.01.0.lcssa.i.i.i.i.i.i, 1
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %bb.i
  %.sroa.01.05.i.i.i.i.i.i = phi i64 [ %i.ah, %bb.i ], [ 0, %.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 %.sroa.01.05.i.i.i.i.i.i
  %i.af = load i8, ptr %i.ae, align 1, !alias.scope !127, !noalias !126, !noundef !4
  %i.ag = icmp eq i8 %i.af, %.pre.i.i.i.i.i
  br i1 %i.ag, label %._crit_edge.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ah = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.ah, %i.y
  br i1 %exitcond.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i, %bb.h
  %.merged.i.i.i.i.i.i = phi { i64, i64 } [ %i.ad, %._crit_edge.i.i.i.i.i.i ], [ %i.ab, %bb.h ] ; 2 uses
  %i.ai = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i, 0
  %i.aj = trunc nuw i64 %i.ai to i1
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i
  %i.ak = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i, 1
  %i.al = add i64 %i.x, 1
  %i.am = add i64 %i.al, %i.ak                    ; 7 uses
  store i64 %i.am, ptr %.sroa.4.sroa.5.sroa.5.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 8, !alias.scope !123, !noalias !124
  %.not12.i.i.i.i.i = icmp ult i64 %i.am, %i.o
  %.not13.i.i.i.i.i = icmp ugt i64 %i.am, %.val1.i.i.i.i
  %or.cond.i.i.i.i.i = or i1 %.not12.i.i.i.i.i, %.not13.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %bb.l, label %bb.m

bb.k:                                             ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i
  store i64 %i.m, ptr %.sroa.4.sroa.5.sroa.5.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 8, !alias.scope !123, !noalias !124
  br label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCscvBHLZPbXnS_10serde_json.exit.i.i.i.i

bb.l:                                             ; preds = %bb.m, %bb.j
  %i.an = icmp ult i64 %i.m, %i.am
  br i1 %i.an, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCscvBHLZPbXnS_10serde_json.exit.i.i.i.i, label %bb.g

bb.m:                                             ; preds = %bb.j
  %i.ao = sub nuw i64 %i.am, %i.o                 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.ao
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.ap, ptr nonnull %.sroa.4.sroa.5.sroa.7.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, i64 %i.o), !noalias !130
  %i.aq = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.aq, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i, label %bb.l

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i: ; preds = %bb.m
  %3 = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !108, !noalias !115, !noundef !4 ; 2 uses
  %4 = sub nuw i64 %i.ao, %3
  store i64 %i.am, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !108, !noalias !115
  br label %select.unfold.i.i

_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCscvBHLZPbXnS_10serde_json.exit.i.i.i.i: ; preds = %bb.l, %bb.f, %bb.k
  store i8 1, ptr %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx, align 1, !alias.scope !131, !noalias !115
  %.pre.i2.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !131, !noalias !115 ; 3 uses
  %.not.i3.i.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i, %.pre.i2.i.i.i.i
  %or.cond.not.i.i.i.i.i = select i1 %i.t, i1 true, i1 %.not.i3.i.i.i.i
  %5 = sub nuw i64 %.pre2.i.i.i.i.i, %.pre.i2.i.i.i.i
  br i1 %or.cond.not.i.i.i.i.i, label %select.unfold.i.i, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_3str4iter5SplitcEENtNtNtB9_6traits8iterator8Iterator8try_foldQNtNtCscvBHLZPbXnS_10serde_json5value5ValueNCINvNtB7_3map12map_try_foldReNtNtCscdodAO9FK5_5alloc6string6StringB27_INtNtBb_6option6OptionB27_ENCNvMs0_B2a_B28_11pointer_mut0NCB4q_s_0E0B3X_EB2c_.exit

select.unfold.i.i:                                ; preds = %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCscvBHLZPbXnS_10serde_json.exit.i.i.i.i, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i
  %i.ar = phi i8 [ 0, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i ], [ 1, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCscvBHLZPbXnS_10serde_json.exit.i.i.i.i ]
  %.pn = phi i64 [ %4, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i ], [ %5, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCscvBHLZPbXnS_10serde_json.exit.i.i.i.i ]
  %.pn.i.i = phi i64 [ %3, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i ], [ %.pre.i2.i.i.i.i, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCscvBHLZPbXnS_10serde_json.exit.i.i.i.i ]
  %.sroa.0.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.pn.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !134)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !137
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !137
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !139
  call fastcc void @_RINvMs3_NtCscdodAO9FK5_5alloc3stre7replaceReECscvBHLZPbXnS_10serde_json(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i.i, i64 noundef %.pn, ptr noalias noundef nonnull readonly captures(address, read_provenance) @12, ptr noalias noundef nonnull readonly captures(address, read_provenance) @13)
  %i.as = load ptr, ptr %i.h, align 8, !noalias !139, !nonnull !4, !noundef !4
  %i.at = load i64, ptr %i.i, align 8, !noalias !139, !noundef !4
  invoke fastcc void @_RINvMs3_NtCscdodAO9FK5_5alloc3stre7replaceReECscvBHLZPbXnS_10serde_json(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.as, i64 noundef %i.at, ptr noalias noundef nonnull readonly captures(address, read_provenance) @14, ptr noalias noundef nonnull readonly captures(address, read_provenance) @15)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %select.unfold.i.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECscvBHLZPbXnS_10serde_json(ptr noalias noundef align 8 dereferenceable(24) %i.a) #17
          to label %common.resume.i.i.i unwind label %bb.r, !noalias !143

bb.o:                                             ; preds = %select.unfold.i.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCscvBHLZPbXnS_10serde_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RNCNvMs0_NtCscvBHLZPbXnS_10serde_json5valueNtB7_5Value11pointer_mut0B9_.exit.i.i.i unwind label %bb.p, !noalias !143

bb.p:                                             ; preds = %bb.o
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCscvBHLZPbXnS_10serde_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume.i.i.i unwind label %bb.q, !noalias !143

bb.q:                                             ; preds = %bb.p
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18, !noalias !143
  unreachable

common.resume.i.i.i:                              ; preds = %bb.z, %bb.u, %bb.p, %bb.n
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.au, %bb.n ], [ %i.av, %bb.p ], [ %i.bo, %bb.z ], [ %i.be, %bb.u ]
  resume { ptr, i32 } %common.resume.op.i.i.i

bb.r:                                             ; preds = %bb.n
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18, !noalias !143
  unreachable

_RNCNvMs0_NtCscvBHLZPbXnS_10serde_json5valueNtB7_5Value11pointer_mut0B9_.exit.i.i.i: ; preds = %bb.o
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCscvBHLZPbXnS_10serde_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !139
  store ptr %.sroa.01.0.i.i, ptr %i.c, align 8, !noalias !137
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !137
  call void @llvm.experimental.noalias.scope.decl(metadata !144)
  call void @llvm.experimental.noalias.scope.decl(metadata !147)
  %i.ay = load i8, ptr %.sroa.01.0.i.i, align 8, !range !49, !alias.scope !149, !noalias !150, !noundef !4
  switch i8 %i.ay, label %bb.y [
    i8 4, label %bb.s
    i8 5, label %bb.t
  ]

bb.s:                                             ; preds = %_RNCNvMs0_NtCscvBHLZPbXnS_10serde_json5valueNtB7_5Value11pointer_mut0B9_.exit.i.i.i
  %i.az = load ptr, ptr %i.k, align 8, !alias.scope !147, !noalias !151, !nonnull !4, !noundef !4
  %i.ba = load i64, ptr %i.l, align 8, !alias.scope !147, !noalias !151, !noundef !4
  %i.bb = invoke fastcc { i64, i64 } @_RNvNtCscvBHLZPbXnS_10serde_json5value11parse_index(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.az, i64 noundef %i.ba)
          to label %bb.v unwind label %bb.u, !noalias !152 ; 2 uses

bb.t:                                             ; preds = %_RNCNvMs0_NtCscvBHLZPbXnS_10serde_json5valueNtB7_5Value11pointer_mut0B9_.exit.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 8
  %i.bd = invoke noundef align 8 ptr @_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringNtNtCscvBHLZPbXnS_10serde_json5value5ValueE7get_mutB17_EB1w_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
          to label %bb.y unwind label %bb.u, !noalias !105

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECscvBHLZPbXnS_10serde_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #17
          to label %common.resume.i.i.i unwind label %bb.ab, !noalias !105

bb.v:                                             ; preds = %bb.s
  %i.bf = extractvalue { i64, i64 } %i.bb, 0
  %i.bg = extractvalue { i64, i64 } %i.bb, 1      ; 2 uses
  %i.bh = trunc nuw i64 %i.bf to i1
  br i1 %i.bh, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 24
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !149, !noalias !150, !noundef !4
  %i.bk = icmp ult i64 %i.bg, %i.bj
  br i1 %i.bk, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !149, !noalias !150, !nonnull !4, !noundef !4
  %i.bn = getelementptr inbounds nuw [32 x i8], ptr %i.bm, i64 %i.bg
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.t, %_RNCNvMs0_NtCscvBHLZPbXnS_10serde_json5valueNtB7_5Value11pointer_mut0B9_.exit.i.i.i
  %.sroa.0.1.i.i13.i.i = phi ptr [ null, %bb.w ], [ null, %_RNCNvMs0_NtCscvBHLZPbXnS_10serde_json5valueNtB7_5Value11pointer_mut0B9_.exit.i.i.i ], [ %i.bn, %bb.x ], [ null, %bb.v ], [ %i.bd, %bb.t ] ; 2 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCscvBHLZPbXnS_10serde_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldReNtNtCscdodAO9FK5_5alloc6string6StringQNtNtCscvBHLZPbXnS_10serde_json5value5ValueINtNtBa_6option6OptionB1C_ENCNvMs0_B1F_B1D_11pointer_mut0NCB2M_s_0E0B1H_.exit.i.i unwind label %bb.z, !noalias !105

bb.z:                                             ; preds = %bb.y
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCscvBHLZPbXnS_10serde_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume.i.i.i unwind label %bb.aa, !noalias !105

bb.aa:                                            ; preds = %bb.z
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18, !noalias !105
  unreachable

bb.ab:                                            ; preds = %bb.u
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18, !noalias !105
  unreachable

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldReNtNtCscdodAO9FK5_5alloc6string6StringQNtNtCscvBHLZPbXnS_10serde_json5value5ValueINtNtBa_6option6OptionB1C_ENCNvMs0_B1F_B1D_11pointer_mut0NCB2M_s_0E0B1H_.exit.i.i: ; preds = %bb.y
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCscvBHLZPbXnS_10serde_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j), !noalias !105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !137
  %i.br = icmp eq ptr %.sroa.0.1.i.i13.i.i, null
  br i1 %i.br, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_3str4iter5SplitcEENtNtNtB9_6traits8iterator8Iterator8try_foldQNtNtCscvBHLZPbXnS_10serde_json5value5ValueNCINvNtB7_3map12map_try_foldReNtNtCscdodAO9FK5_5alloc6string6StringB27_INtNtBb_6option6OptionB27_ENCNvMs0_B2a_B28_11pointer_mut0NCB4q_s_0E0B3X_EB2c_.exit, label %bb.e

bb.ac:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 %2, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  store ptr %1, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.sroa.4.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  store i64 %2, ptr %.sroa.4.sroa.5.sroa.4.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.sroa.5.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 4 uses
  store i64 0, ptr %.sroa.4.sroa.5.sroa.5.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.sroa.6.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  store i64 %2, ptr %.sroa.4.sroa.5.sroa.6.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.sroa.7.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  store i32 47, ptr %.sroa.4.sroa.5.sroa.7.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.sroa.8.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 60
  store i32 47, ptr %.sroa.4.sroa.5.sroa.8.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 4
  %.sroa.4.sroa.5.sroa.9.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  store i8 1, ptr %.sroa.4.sroa.5.sroa.9.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 2 uses
  store i8 1, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 73 ; 3 uses
  store i8 0, ptr %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx, align 1
  call void @llvm.experimental.noalias.scope.decl(metadata !153)
  store i64 0, ptr %i.e, align 8, !alias.scope !153, !noalias !154
  %i.bs = call fastcc ptr @_RNvYINtNtNtCs4NRVxsYgnAr_4core3str4iter5SplitcENtNtNtNtB9_4iter6traits8iterator8Iterator3nthCscvBHLZPbXnS_10serde_json(ptr noalias noundef align 8 dereferenceable(72) %.sroa.4.0..sroa_idx, i64 noundef 0)
  %.not4.i = icmp eq ptr %i.bs, null
  br i1 %.not4.i, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_3str4iter5SplitcEENtNtNtB9_6traits8iterator8Iterator8try_foldQNtNtCscvBHLZPbXnS_10serde_json5value5ValueNCINvNtB7_3map12map_try_foldReNtNtCscdodAO9FK5_5alloc6string6StringB27_INtNtBb_6option6OptionB27_ENCNvMs0_B2a_B28_11pointer_mut0NCB4q_s_0E0B3X_EB2c_.exit, label %bb.d

_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_3str4iter5SplitcEENtNtNtB9_6traits8iterator8Iterator8try_foldQNtNtCscvBHLZPbXnS_10serde_json5value5ValueNCINvNtB7_3map12map_try_foldReNtNtCscdodAO9FK5_5alloc6string6StringB27_INtNtBb_6option6OptionB27_ENCNvMs0_B2a_B28_11pointer_mut0NCB4q_s_0E0B3X_EB2c_.exit: ; preds = %bb.e, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCscvBHLZPbXnS_10serde_json.exit.i.i.i.i, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldReNtNtCscdodAO9FK5_5alloc6string6StringQNtNtCscvBHLZPbXnS_10serde_json5value5ValueINtNtBa_6option6OptionB1C_ENCNvMs0_B1F_B1D_11pointer_mut0NCB2M_s_0E0B1H_.exit.i.i, %bb.ac
  %.sroa.0.0.i = phi ptr [ %0, %bb.ac ], [ %.sroa.01.0.i.i, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCscvBHLZPbXnS_10serde_json.exit.i.i.i.i ], [ null, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldReNtNtCscdodAO9FK5_5alloc6string6StringQNtNtCscvBHLZPbXnS_10serde_json5value5ValueINtNtBa_6option6OptionB1C_ENCNvMs0_B1F_B1D_11pointer_mut0NCB2M_s_0E0B1H_.exit.i.i ], [ %.sroa.01.0.i.i, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvMs0_NtCscvBHLZPbXnS_10serde_json5valueNtB5_5Value7pointer(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [80 x i8], align 8                ; 14 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 47, ptr %i.d, align 4
  %i.g = call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCscvBHLZPbXnS_10serde_json(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.g, label %bb.ab, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_3str4iter5SplitcEENtNtNtB9_6traits8iterator8Iterator8try_foldRNtNtCscvBHLZPbXnS_10serde_json5value5ValueNCINvNtB7_3map12map_try_foldReNtNtCscdodAO9FK5_5alloc6string6StringB27_INtNtBb_6option6OptionB27_ENCNvMs0_B2a_B28_7pointer0NCB4q_s_0E0B3X_EB2c_.exit
  %.sroa.0.0 = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.i, %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_3str4iter5SplitcEENtNtNtB9_6traits8iterator8Iterator8try_foldRNtNtCscvBHLZPbXnS_10serde_json5value5ValueNCINvNtB7_3map12map_try_foldReNtNtCscdodAO9FK5_5alloc6string6StringB27_INtNtBb_6option6OptionB27_ENCNvMs0_B2a_B28_7pointer0NCB4q_s_0E0B3X_EB2c_.exit ], [ null, %bb.b ]
  ret ptr %.sroa.0.0

bb.d:                                             ; preds = %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !155)
  %.promoted.i.i = load i8, ptr %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx, align 1, !alias.scope !158, !noalias !165
  %.promoted21.i.i = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !168, !noalias !165
  %.val.i.i.i.i = load ptr, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8, !alias.scope !168, !noalias !165, !nonnull !4 ; 3 uses
  %.val1.i.i.i.i = load i64, ptr %.sroa.4.sroa.5.sroa.4.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 8, !alias.scope !168, !noalias !165 ; 2 uses
  %i.h = load i64, ptr %.sroa.4.sroa.5.sroa.6.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 8, !alias.scope !168, !noalias !165 ; 6 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.h, %.val1.i.i.i.i
  %i.i = load i8, ptr %.sroa.4.sroa.5.sroa.9.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 8, !alias.scope !168, !noalias !165 ; 2 uses
  %i.j = zext nneg i8 %i.i to i64                 ; 4 uses
  %i.k = icmp ult i8 %i.i, 5
  %i.l = getelementptr i8, ptr %.sroa.4.sroa.5.sroa.7.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, i64 %i.j
  %i.m = getelementptr i8, ptr %i.l, i64 -1
  %i.n = load i8, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx, align 8, !range !55, !alias.scope !168, !noalias !165
  %i.o = trunc nuw i8 %i.n to i1
  %.pre2.i.i.i.i.i = load i64, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8, !alias.scope !168, !noalias !165 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.promoted24.i.i = load i64, ptr %.sroa.4.sroa.5.sroa.5.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 8, !alias.scope !168, !noalias !165
  br label %bb.e

bb.e:                                             ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldReNtNtCscdodAO9FK5_5alloc6string6StringRNtNtCscvBHLZPbXnS_10serde_json5value5ValueINtNtBa_6option6OptionB1C_ENCNvMs0_B1F_B1D_7pointer0NCB2M_s_0E0B1H_.exit.i.i, %bb.d
  %i.u = phi i64 [ %.promoted24.i.i, %bb.d ], [ %i.at, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldReNtNtCscdodAO9FK5_5alloc6string6StringRNtNtCscvBHLZPbXnS_10serde_json5value5ValueINtNtBa_6option6OptionB1C_ENCNvMs0_B1F_B1D_7pointer0NCB2M_s_0E0B1H_.exit.i.i ] ; 3 uses
  %.lcssa1723.i.i = phi i64 [ %.promoted21.i.i, %bb.d ], [ %.lcssa1722.i.i, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldReNtNtCscdodAO9FK5_5alloc6string6StringRNtNtCscvBHLZPbXnS_10serde_json5value5ValueINtNtBa_6option6OptionB1C_ENCNvMs0_B1F_B1D_7pointer0NCB2M_s_0E0B1H_.exit.i.i ] ; 4 uses
  %i.v = phi i8 [ %.promoted.i.i, %bb.d ], [ %i.au, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldReNtNtCscdodAO9FK5_5alloc6string6StringRNtNtCscvBHLZPbXnS_10serde_json5value5ValueINtNtBa_6option6OptionB1C_ENCNvMs0_B1F_B1D_7pointer0NCB2M_s_0E0B1H_.exit.i.i ]
  %.sroa.01.0.i.i = phi ptr [ %0, %bb.d ], [ %.sroa.0.1.i.i13.i.i, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldReNtNtCscdodAO9FK5_5alloc6string6StringRNtNtCscvBHLZPbXnS_10serde_json5value5ValueINtNtBa_6option6OptionB1C_ENCNvMs0_B1F_B1D_7pointer0NCB2M_s_0E0B1H_.exit.i.i ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !169)
  call void @llvm.experimental.noalias.scope.decl(metadata !170)
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_3str4iter5SplitcEENtNtNtB9_6traits8iterator8Iterator8try_foldRNtNtCscvBHLZPbXnS_10serde_json5value5ValueNCINvNtB7_3map12map_try_foldReNtNtCscdodAO9FK5_5alloc6string6StringB27_INtNtBb_6option6OptionB27_ENCNvMs0_B2a_B28_7pointer0NCB4q_s_0E0B3X_EB2c_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !171)
  %i.x = icmp ult i64 %i.h, %i.u
  %brmerge.i.i = select i1 %i.x, i1 true, i1 %.not.i.i.i.i.i
  br i1 %brmerge.i.i, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCscvBHLZPbXnS_10serde_json.exit.i.i.i.i, label %.lr.ph.split.i.i.i.i.i

.lr.ph.split.i.i.i.i.i:                           ; preds = %bb.f
  call void @llvm.assume(i1 %i.k)
  %.pre.i.i.i.i.i = load i8, ptr %i.m, align 1, !alias.scope !174, !noalias !175 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.l, %.lr.ph.split.i.i.i.i.i
  %i.y = phi i64 [ %i.u, %.lr.ph.split.i.i.i.i.i ], [ %i.an, %bb.l ] ; 3 uses
  %i.z = sub nuw i64 %i.h, %i.y                   ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.y ; 2 uses
  %i.ab = icmp samesign ult i64 %i.z, 16
  br i1 %i.ab, label %.preheader.i.i.i.i.i.i, label %bb.h

.preheader.i.i.i.i.i.i:                           ; preds = %bb.g
  %.not.i.i.i.i.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.ac = call { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef range(i64 0, -9223372036854775808) %i.z), !noalias !177
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.i, %.lr.ph.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i ], [ %.sroa.01.05.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.z, %bb.i ]
  %.sroa.0.1.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.i ], [ 0, %bb.i ]
  %i.ad = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i.i.i, 0
  %i.ae = insertvalue { i64, i64 } %i.ad, i64 %.sroa.01.0.lcssa.i.i.i.i.i.i, 1
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %bb.i
  %.sroa.01.05.i.i.i.i.i.i = phi i64 [ %i.ai, %bb.i ], [ 0, %.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.sroa.01.05.i.i.i.i.i.i
  %i.ag = load i8, ptr %i.af, align 1, !alias.scope !178, !noalias !177, !noundef !4
  %i.ah = icmp eq i8 %i.ag, %.pre.i.i.i.i.i
  br i1 %i.ah, label %._crit_edge.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ai = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.ai, %i.z
  br i1 %exitcond.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i, %bb.h
  %.merged.i.i.i.i.i.i = phi { i64, i64 } [ %i.ae, %._crit_edge.i.i.i.i.i.i ], [ %i.ac, %bb.h ] ; 2 uses
  %i.aj = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i, 0
  %i.ak = trunc nuw i64 %i.aj to i1
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i
  %i.al = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i, 1
  %i.am = add i64 %i.y, 1
  %i.an = add i64 %i.am, %i.al                    ; 10 uses
  store i64 %i.an, ptr %.sroa.4.sroa.5.sroa.5.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 8, !alias.scope !174, !noalias !175
  %.not12.i.i.i.i.i = icmp ult i64 %i.an, %i.j
  %.not13.i.i.i.i.i = icmp ugt i64 %i.an, %.val1.i.i.i.i
  %or.cond.i.i.i.i.i = or i1 %.not12.i.i.i.i.i, %.not13.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %bb.l, label %bb.m

bb.k:                                             ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i
  store i64 %i.h, ptr %.sroa.4.sroa.5.sroa.5.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 8, !alias.scope !174, !noalias !175
  br label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCscvBHLZPbXnS_10serde_json.exit.i.i.i.i

bb.l:                                             ; preds = %bb.m, %bb.j
  %i.ao = icmp ult i64 %i.h, %i.an
  br i1 %i.ao, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCscvBHLZPbXnS_10serde_json.exit.i.i.i.i, label %bb.g

bb.m:                                             ; preds = %bb.j
  %i.ap = sub nuw i64 %i.an, %i.j                 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.ap
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.aq, ptr nonnull %.sroa.4.sroa.5.sroa.7.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, i64 %i.j), !noalias !181
  %i.ar = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.ar, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i, label %bb.l

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i: ; preds = %bb.m
  store i64 %i.an, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !158, !noalias !165
  br label %select.unfold.i.i

_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCscvBHLZPbXnS_10serde_json.exit.i.i.i.i: ; preds = %bb.l, %bb.k, %bb.f
  %i.as = phi i64 [ %i.u, %bb.f ], [ %i.h, %bb.k ], [ %i.an, %bb.l ]
  store i8 1, ptr %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx, align 1, !alias.scope !182, !noalias !165
  %.not.i3.i.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i, %.lcssa1723.i.i
  %or.cond.not.i.i.i.i.i = select i1 %i.o, i1 true, i1 %.not.i3.i.i.i.i
  br i1 %or.cond.not.i.i.i.i.i, label %select.unfold.i.i, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_3str4iter5SplitcEENtNtNtB9_6traits8iterator8Iterator8try_foldRNtNtCscvBHLZPbXnS_10serde_json5value5ValueNCINvNtB7_3map12map_try_foldReNtNtCscdodAO9FK5_5alloc6string6StringB27_INtNtBb_6option6OptionB27_ENCNvMs0_B2a_B28_7pointer0NCB4q_s_0E0B3X_EB2c_.exit

select.unfold.i.i:                                ; preds = %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCscvBHLZPbXnS_10serde_json.exit.i.i.i.i, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i
  %i.at = phi i64 [ %i.an, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i ], [ %i.as, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCscvBHLZPbXnS_10serde_json.exit.i.i.i.i ]
  %.lcssa1722.i.i = phi i64 [ %i.an, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i ], [ %.lcssa1723.i.i, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCscvBHLZPbXnS_10serde_json.exit.i.i.i.i ]
  %i.au = phi i8 [ 0, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i ], [ 1, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCscvBHLZPbXnS_10serde_json.exit.i.i.i.i ]
  %.pn27.i.i = phi i64 [ %i.ap, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i ], [ %.pre2.i.i.i.i.i, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCscvBHLZPbXnS_10serde_json.exit.i.i.i.i ]
  %.sroa.4.1.i.i.i.i = sub nuw i64 %.pn27.i.i, %.lcssa1723.i.i
  %.sroa.0.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.lcssa1723.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !185)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !188
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !188
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !190
  call fastcc void @_RINvMs3_NtCscdodAO9FK5_5alloc3stre7replaceReECscvBHLZPbXnS_10serde_json(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i.i, i64 noundef %.sroa.4.1.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @12, ptr noalias noundef nonnull readonly captures(address, read_provenance) @13)
  %i.av = load ptr, ptr %i.p, align 8, !noalias !190, !nonnull !4, !noundef !4
  %i.aw = load i64, ptr %i.q, align 8, !noalias !190, !noundef !4
  invoke fastcc void @_RINvMs3_NtCscdodAO9FK5_5alloc3stre7replaceReECscvBHLZPbXnS_10serde_json(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.av, i64 noundef %i.aw, ptr noalias noundef nonnull readonly captures(address, read_provenance) @14, ptr noalias noundef nonnull readonly captures(address, read_provenance) @15)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %select.unfold.i.i
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECscvBHLZPbXnS_10serde_json(ptr noalias noundef align 8 dereferenceable(24) %i.a) #17
          to label %common.resume.i.i.i unwind label %bb.r, !noalias !194

bb.o:                                             ; preds = %select.unfold.i.i
end_hunk_0
