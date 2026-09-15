Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/just-b5787c51d404debe.just.f4201053fadd6f59-cgu.0?download=true
inline.NumInlined: 27272
inline.NumDeleted: 11245
loop-unroll.NumCompletelyUnrolled: 122
loop-unroll.NumRuntimeUnrolled: 597
loop-unroll.NumUnrolled: 722
begin_hunk_0_@_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE8write_toNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just:bb.a
  %.pre4.i38.i = load ptr, ptr %i.bi, align 8, !alias.scope !1408, !noalias !1342
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i36.i
  %i.yr = phi ptr [ %.pre4.i38.i, %bb.eh ], [ %i.ym, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i36.i ]
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 %i.yp
  store i8 %i.di, ptr %i.ys, align 1, !noalias !1409
  %i.yt = add nuw nsw i64 %i.xd, 11               ; 4 uses
  store i64 %i.yt, ptr %i.bh, align 8, !alias.scope !1408, !noalias !1342
  call void @llvm.experimental.noalias.scope.decl(metadata !1410), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1411), !noalias !1277
  %i.yu = load i64, ptr %1, align 8, !range !43, !alias.scope !1412, !noalias !1342, !noundef !28 ; 2 uses
  %i.yv = icmp eq i64 %i.yu, %i.yt
  br i1 %i.yv, label %bb.ej, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit43.i, !prof !44

bb.ej:                                            ; preds = %bb.ei
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.yt, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1342
  %.pre73.i = load i64, ptr %1, align 8, !range !43, !alias.scope !1413, !noalias !1342
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit43.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit43.i: ; preds = %bb.ej, %bb.ei
  %i.yw = phi i64 [ %i.yu, %bb.ei ], [ %.pre73.i, %bb.ej ] ; 3 uses
  %i.yx = load ptr, ptr %i.bi, align 8, !alias.scope !1414, !noalias !1342, !nonnull !28, !noundef !28 ; 2 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 %i.yt
  store i8 58, ptr %i.yy, align 1, !noalias !1415
  %i.yz = add nuw nsw i64 %i.xd, 12               ; 3 uses
  store i64 %i.yz, ptr %i.bh, align 8, !alias.scope !1414, !noalias !1342
  call void @llvm.experimental.noalias.scope.decl(metadata !1416), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1417), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1418), !noalias !1277
  %i.za = icmp eq i64 %i.yw, %i.yz
  br i1 %i.za, label %bb.ek, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i44.i, !prof !44

bb.ek:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit43.i
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.yw, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1342
  %.pre.i47.i = load i64, ptr %1, align 8, !range !43, !alias.scope !1419, !noalias !1342
  %.pre74.i = load ptr, ptr %i.bi, align 8, !alias.scope !1420, !noalias !1342
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i44.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i44.i: ; preds = %bb.ek, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit43.i
  %i.zb = phi ptr [ %.pre74.i, %bb.ek ], [ %i.yx, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit43.i ] ; 2 uses
  %i.zc = phi i64 [ %.pre.i47.i, %bb.ek ], [ %i.yw, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit43.i ] ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zb, i64 %i.yz
  store i8 %i.dl, ptr %i.zd, align 1, !noalias !1421
  %i.ze = add nuw i64 %i.xd, 13                   ; 3 uses
  store i64 %i.ze, ptr %i.bh, align 8, !alias.scope !1420, !noalias !1342
  call void @llvm.experimental.noalias.scope.decl(metadata !1422), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1423), !noalias !1277
  %i.zf = icmp eq i64 %i.zc, %i.ze
  br i1 %i.zf, label %bb.el, label %bb.em, !prof !44

bb.el:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i44.i
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.zc, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1342
  %.pre4.i46.i = load ptr, ptr %i.bi, align 8, !alias.scope !1424, !noalias !1342
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i44.i
  %i.zg = phi ptr [ %.pre4.i46.i, %bb.el ], [ %i.zb, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i44.i ]
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zg, i64 %i.ze
  store i8 %i.dn, ptr %i.zh, align 1, !noalias !1425
  %i.zi = add nuw nsw i64 %i.xd, 14               ; 4 uses
  store i64 %i.zi, ptr %i.bh, align 8, !alias.scope !1424, !noalias !1342
  call void @llvm.experimental.noalias.scope.decl(metadata !1426), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1427), !noalias !1277
  %i.zj = load i64, ptr %1, align 8, !range !43, !alias.scope !1428, !noalias !1342, !noundef !28 ; 2 uses
  %i.zk = icmp eq i64 %i.zj, %i.zi
  br i1 %i.zk, label %bb.en, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit51.i38, !prof !44

bb.en:                                            ; preds = %bb.em
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.zi, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1342
  %.pre75.i = load i64, ptr %1, align 8, !range !43, !alias.scope !1429, !noalias !1342
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit51.i38

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit51.i38: ; preds = %bb.en, %bb.em
  %i.zl = phi i64 [ %i.zj, %bb.em ], [ %.pre75.i, %bb.en ] ; 3 uses
  %i.zm = load ptr, ptr %i.bi, align 8, !alias.scope !1430, !noalias !1342, !nonnull !28, !noundef !28 ; 2 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zm, i64 %i.zi
  store i8 58, ptr %i.zn, align 1, !noalias !1431
  %i.zo = add nuw nsw i64 %i.xd, 15               ; 3 uses
  store i64 %i.zo, ptr %i.bh, align 8, !alias.scope !1430, !noalias !1342
  call void @llvm.experimental.noalias.scope.decl(metadata !1432), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1433), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1434), !noalias !1277
  %i.zp = icmp eq i64 %i.zl, %i.zo
  br i1 %i.zp, label %bb.eo, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i52.i39, !prof !44

bb.eo:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit51.i38
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.zl, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1342
  %.pre.i55.i41 = load i64, ptr %1, align 8, !range !43, !alias.scope !1435, !noalias !1342
  %.pre76.i = load ptr, ptr %i.bi, align 8, !alias.scope !1436, !noalias !1342
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i52.i39

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i52.i39: ; preds = %bb.eo, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit51.i38
  %i.zq = phi ptr [ %.pre76.i, %bb.eo ], [ %i.zm, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit51.i38 ] ; 2 uses
  %i.zr = phi i64 [ %.pre.i55.i41, %bb.eo ], [ %i.zl, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit51.i38 ] ; 2 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zq, i64 %i.zo
  store i8 %i.ek, ptr %i.zs, align 1, !noalias !1437
  %i.zt = add nuw i64 %i.xd, 16                   ; 3 uses
  store i64 %i.zt, ptr %i.bh, align 8, !alias.scope !1436, !noalias !1342
  call void @llvm.experimental.noalias.scope.decl(metadata !1438), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1439), !noalias !1277
  %i.zu = icmp eq i64 %i.zr, %i.zt
  br i1 %i.zu, label %bb.ep, label %.split68, !prof !44

bb.ep:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i52.i39
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.zr, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1342
  %.pre4.i54.i40 = load ptr, ptr %i.bi, align 8, !alias.scope !1440, !noalias !1342
  br label %.split68

.split68:                                         ; preds = %bb.ep, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i52.i39
  %i.zv = phi ptr [ %.pre4.i54.i40, %bb.ep ], [ %i.zq, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i52.i39 ]
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 %i.zt
  store i8 %i.em, ptr %i.zw, align 1, !noalias !1441
  %i.zx = add nuw i64 %i.xd, 17
  store i64 %i.zx, ptr %i.bh, align 8, !alias.scope !1440, !noalias !1342
  %i.zy = call noundef zeroext i1 @_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 32) #76, !noalias !1342 ; 0 uses
  %i.zz = call fastcc noundef zeroext i1 @_RINvMs0_NtNtCs2uF6e5yHHeh_6chrono6format10formattingNtB8_12OffsetFormat6formatNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(4) @188, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %i.cn), !noalias !1342
  br i1 %i.zz, label %_RINvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB3_13DelayedFormatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_4ItemEE14format_numericNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread, label %.critedge

bb.eq:                                            ; preds = %bb.dg
  call void @llvm.experimental.noalias.scope.decl(metadata !1442)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1443
  store i32 %i.co, ptr %i.i, align 4, !noalias !1443
  br i1 %or.cond.i26, label %bb.er, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECskXtk6F4WjxZ_4just.exit.thread.i

_RINvYINtNtNtCsj6eKBz9Db1c_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECskXtk6F4WjxZ_4just.exit.thread.i: ; preds = %bb.eq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1443
  store ptr %i.i, ptr %i.h, align 8, !noalias !1443
  store ptr @_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !1443
  %i.aaa = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @2613, ptr noundef nonnull @189, ptr noundef nonnull %i.h), !noalias !1444, !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1443
  br i1 %i.aaa, label %_RINvNtNtCs2uF6e5yHHeh_6chrono6format10formatting14write_hundredsNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread.i, label %bb.eu

bb.er:                                            ; preds = %bb.eq
  call void @llvm.experimental.noalias.scope.decl(metadata !1445), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1446), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1447), !noalias !1277
  %i.aab = load i64, ptr %i.bh, align 8, !alias.scope !1448, !noalias !1444, !noundef !28 ; 8 uses
  %i.aac = icmp sgt i64 %i.aab, -1
  call void @llvm.assume(i1 %i.aac), !noalias !1277
  %i.aad = load i64, ptr %1, align 8, !range !43, !alias.scope !1449, !noalias !1444, !noundef !28 ; 2 uses
  %i.aae = icmp eq i64 %i.aad, %i.aab
  br i1 %i.aae, label %bb.es, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i.i, !prof !44

bb.es:                                            ; preds = %bb.er
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.aab, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1444
  %.pre.i.i30 = load i64, ptr %1, align 8, !range !43, !alias.scope !1450, !noalias !1444
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i.i: ; preds = %bb.es, %bb.er
  %i.aaf = phi i64 [ %.pre.i.i30, %bb.es ], [ %i.aad, %bb.er ] ; 2 uses
  %i.aag = load ptr, ptr %i.bi, align 8, !alias.scope !1448, !noalias !1444, !nonnull !28, !noundef !28 ; 2 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 %i.aab
  store i8 %i.cs, ptr %i.aah, align 1, !noalias !1451
  %i.aai = add nuw nsw i64 %i.aab, 1              ; 3 uses
  store i64 %i.aai, ptr %i.bh, align 8, !alias.scope !1448, !noalias !1444
  call void @llvm.experimental.noalias.scope.decl(metadata !1452), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1453), !noalias !1277
  %i.aaj = icmp eq i64 %i.aaf, %i.aai
  br i1 %i.aaj, label %bb.et, label %bb.ex, !prof !44

bb.et:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i.i
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.aaf, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1444
  %.pre4.i.i = load ptr, ptr %i.bi, align 8, !alias.scope !1454, !noalias !1444
  br label %bb.ex

bb.eu:                                            ; preds = %_RINvYINtNtNtCsj6eKBz9Db1c_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECskXtk6F4WjxZ_4just.exit.thread.i
  %.pre.i = load i64, ptr %i.bh, align 8, !alias.scope !1455, !noalias !1444
  br label %bb.ev

bb.ev:                                            ; preds = %_RINvNtNtCs2uF6e5yHHeh_6chrono6format10formatting14write_hundredsNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit37.i, %bb.eu
  %i.aak = phi i64 [ %i.abm, %_RINvNtNtCs2uF6e5yHHeh_6chrono6format10formatting14write_hundredsNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit37.i ], [ %.pre.i, %bb.eu ] ; 19 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1456), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1457), !noalias !1277
  %i.aal = icmp sgt i64 %i.aak, -1
  call void @llvm.assume(i1 %i.aal), !noalias !1277
  %i.aam = load i64, ptr %1, align 8, !range !43, !alias.scope !1458, !noalias !1444, !noundef !28
  %i.aan = icmp eq i64 %i.aam, %i.aak
  br i1 %i.aan, label %bb.ew, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i27, !prof !44

bb.ew:                                            ; preds = %bb.ev
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.aak, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1444
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i27

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i27: ; preds = %bb.ew, %bb.ev
  %i.aao = load ptr, ptr %i.bi, align 8, !alias.scope !1455, !noalias !1444, !nonnull !28, !noundef !28
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aao, i64 %i.aak
  store i8 45, ptr %i.aap, align 1, !noalias !1459
  %i.aaq = add nuw i64 %i.aak, 1                  ; 5 uses
  store i64 %i.aaq, ptr %i.bh, align 8, !alias.scope !1455, !noalias !1444
  br i1 %i.cj, label %bb.fb, label %bb.fe

bb.ex:                                            ; preds = %bb.et, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i.i
  %i.aar = phi ptr [ %.pre4.i.i, %bb.et ], [ %i.aag, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i.i ]
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aar, i64 %i.aai
  store i8 %i.cu, ptr %i.aas, align 1, !noalias !1460
  %i.aat = add nuw i64 %i.aab, 2                  ; 5 uses
  store i64 %i.aat, ptr %i.bh, align 8, !alias.scope !1454, !noalias !1444
  %i.aau = load i32, ptr %i.i, align 4, !noalias !1443, !noundef !28
  %i.aav = srem i32 %i.aau, 100                   ; 2 uses
  %i.aaw = trunc nuw nsw i32 %i.aav to i8         ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1461), !noalias !1277
  %i.aax = icmp slt i32 %i.aav, 0
  br i1 %i.aax, label %_RINvNtNtCs2uF6e5yHHeh_6chrono6format10formatting14write_hundredsNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.thread.i, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.aay = udiv i8 %i.aaw, 10
  %i.aaz = urem i8 %i.aaw, 10
  %i.aba = or disjoint i8 %i.aay, 48
  call void @llvm.experimental.noalias.scope.decl(metadata !1462), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1463), !noalias !1277
  %i.abb = icmp sgt i64 %i.aat, -1
  call void @llvm.assume(i1 %i.abb), !noalias !1277
  %i.abc = load i64, ptr %1, align 8, !range !43, !alias.scope !1464, !noalias !1444, !noundef !28 ; 2 uses
  %i.abd = icmp eq i64 %i.abc, %i.aat
  br i1 %i.abd, label %bb.ez, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i33.i, !prof !44

bb.ez:                                            ; preds = %bb.ey
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.aat, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1444
  %.pre.i36.i = load i64, ptr %1, align 8, !range !43, !alias.scope !1465, !noalias !1444
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i33.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i33.i: ; preds = %bb.ez, %bb.ey
  %i.abe = phi i64 [ %.pre.i36.i, %bb.ez ], [ %i.abc, %bb.ey ] ; 2 uses
  %i.abf = load ptr, ptr %i.bi, align 8, !alias.scope !1466, !noalias !1444, !nonnull !28, !noundef !28 ; 2 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abf, i64 %i.aat
  store i8 %i.aba, ptr %i.abg, align 1, !noalias !1467
  %i.abh = add nuw i64 %i.aab, 3                  ; 3 uses
  store i64 %i.abh, ptr %i.bh, align 8, !alias.scope !1466, !noalias !1444
  %i.abi = or disjoint i8 %i.aaz, 48
  call void @llvm.experimental.noalias.scope.decl(metadata !1468), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1469), !noalias !1277
  %i.abj = icmp eq i64 %i.abe, %i.abh
  br i1 %i.abj, label %bb.fa, label %_RINvNtNtCs2uF6e5yHHeh_6chrono6format10formatting14write_hundredsNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit37.i, !prof !44

bb.fa:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i33.i
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.abe, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1444
  %.pre4.i35.i = load ptr, ptr %i.bi, align 8, !alias.scope !1470, !noalias !1444
  br label %_RINvNtNtCs2uF6e5yHHeh_6chrono6format10formatting14write_hundredsNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit37.i

_RINvNtNtCs2uF6e5yHHeh_6chrono6format10formatting14write_hundredsNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit37.i: ; preds = %bb.fa, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i33.i
  %i.abk = phi ptr [ %.pre4.i35.i, %bb.fa ], [ %i.abf, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i33.i ]
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abk, i64 %i.abh
  store i8 %i.abi, ptr %i.abl, align 1, !noalias !1471
  %i.abm = add nuw i64 %i.aab, 4                  ; 2 uses
  store i64 %i.abm, ptr %i.bh, align 8, !alias.scope !1470, !noalias !1444
  br label %bb.ev

bb.fb:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i27
  %i.abn = load i8, ptr %i.ck, align 1, !noalias !1443, !noundef !28 ; 2 uses
  %i.abo = zext i8 %i.abn to i32
  %i.abp = add nuw nsw i32 %i.ch, %i.abo          ; 3 uses
  %i.abq = lshr i32 %i.abp, 6
  %i.abr = trunc nuw nsw i32 %i.abq to i8         ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1472), !noalias !1277
  %.cmp.i = icmp samesign ugt i32 %i.abp, 639
  %i.abs = zext i1 %.cmp.i to i8
  %i.abt = or disjoint i8 %i.abs, 48
  call void @llvm.experimental.noalias.scope.decl(metadata !1473), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1474), !noalias !1277
  %i.abu = icmp sgt i64 %i.aaq, -1
  call void @llvm.assume(i1 %i.abu), !noalias !1277
  %i.abv = load i64, ptr %1, align 8, !range !43, !alias.scope !1475, !noalias !1444, !noundef !28 ; 2 uses
  %i.abw = icmp eq i64 %i.abv, %i.aaq
  br i1 %i.abw, label %bb.fc, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i38.i, !prof !44

bb.fc:                                            ; preds = %bb.fb
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.aaq, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1444
  %.pre.i41.i = load i64, ptr %1, align 8, !range !43, !alias.scope !1476, !noalias !1444
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i38.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i38.i: ; preds = %bb.fc, %bb.fb
  %i.abx = phi i64 [ %.pre.i41.i, %bb.fc ], [ %i.abv, %bb.fb ] ; 2 uses
  %i.aby = load ptr, ptr %i.bi, align 8, !alias.scope !1477, !noalias !1444, !nonnull !28, !noundef !28 ; 2 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aby, i64 %i.aaq
  store i8 %i.abt, ptr %i.abz, align 1, !noalias !1478
  %i.aca = add nuw i64 %i.aak, 2                  ; 3 uses
  store i64 %i.aca, ptr %i.bh, align 8, !alias.scope !1477, !noalias !1444
  %.urem.i = add nsw i8 %i.abr, -10
  %.cmp91.i = icmp samesign ult i32 %i.abp, 640
  %i.acb = select i1 %.cmp91.i, i8 %i.abr, i8 %.urem.i
  %i.acc = or disjoint i8 %i.acb, 48
  call void @llvm.experimental.noalias.scope.decl(metadata !1479), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1480), !noalias !1277
  %i.acd = icmp eq i64 %i.abx, %i.aca
  br i1 %i.acd, label %bb.fd, label %bb.ff, !prof !44

bb.fd:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i38.i
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.abx, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1444
  %.pre4.i40.i = load ptr, ptr %i.bi, align 8, !alias.scope !1481, !noalias !1444
  br label %bb.ff

bb.fe:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i27
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ci, i64 noundef 733, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #75, !noalias !1444
  unreachable

bb.ff:                                            ; preds = %bb.fd, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i38.i
  %i.ace = phi ptr [ %.pre4.i40.i, %bb.fd ], [ %i.aby, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i38.i ]
  %i.acf = getelementptr inbounds nuw i8, ptr %i.ace, i64 %i.aca
  store i8 %i.acc, ptr %i.acf, align 1, !noalias !1482
  %i.acg = add nuw nsw i64 %i.aak, 3              ; 4 uses
  store i64 %i.acg, ptr %i.bh, align 8, !alias.scope !1481, !noalias !1444
  call void @llvm.experimental.noalias.scope.decl(metadata !1483), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1484), !noalias !1277
  %i.ach = load i64, ptr %1, align 8, !range !43, !alias.scope !1485, !noalias !1444, !noundef !28
  %i.aci = icmp eq i64 %i.ach, %i.acg
  br i1 %i.aci, label %bb.fg, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit44.i, !prof !44

bb.fg:                                            ; preds = %bb.ff
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.acg, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1444
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit44.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit44.i: ; preds = %bb.fg, %bb.ff
  %i.acj = load ptr, ptr %i.bi, align 8, !alias.scope !1486, !noalias !1444, !nonnull !28, !noundef !28
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acj, i64 %i.acg
  store i8 45, ptr %i.ack, align 1, !noalias !1487
  %i.acl = add nuw nsw i64 %i.aak, 4              ; 4 uses
  store i64 %i.acl, ptr %i.bh, align 8, !alias.scope !1486, !noalias !1444
  %i.acm = add i8 %i.abn, %i.cv
  %i.acn = lshr i8 %i.acm, 1
  %i.aco = and i8 %i.acn, 31                      ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1488), !noalias !1277
  %i.acp = udiv i8 %i.aco, 10
  %i.acq = urem i8 %i.aco, 10
  %i.acr = or disjoint i8 %i.acp, 48
  call void @llvm.experimental.noalias.scope.decl(metadata !1489), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1490), !noalias !1277
  %i.acs = load i64, ptr %1, align 8, !range !43, !alias.scope !1491, !noalias !1444, !noundef !28 ; 2 uses
  %i.act = icmp eq i64 %i.acs, %i.acl
  br i1 %i.act, label %bb.fh, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i45.i, !prof !44

bb.fh:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit44.i
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.acl, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1444
  %.pre.i48.i = load i64, ptr %1, align 8, !range !43, !alias.scope !1492, !noalias !1444
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i45.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i45.i: ; preds = %bb.fh, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit44.i
  %i.acu = phi i64 [ %.pre.i48.i, %bb.fh ], [ %i.acs, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit44.i ] ; 2 uses
  %i.acv = load ptr, ptr %i.bi, align 8, !alias.scope !1493, !noalias !1444, !nonnull !28, !noundef !28 ; 2 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acv, i64 %i.acl
  store i8 %i.acr, ptr %i.acw, align 1, !noalias !1494
  %i.acx = add nuw i64 %i.aak, 5                  ; 3 uses
  store i64 %i.acx, ptr %i.bh, align 8, !alias.scope !1493, !noalias !1444
  %i.acy = or disjoint i8 %i.acq, 48
  call void @llvm.experimental.noalias.scope.decl(metadata !1495), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1496), !noalias !1277
  %i.acz = icmp eq i64 %i.acu, %i.acx
  br i1 %i.acz, label %bb.fi, label %bb.fj, !prof !44

bb.fi:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i45.i
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.acu, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1444
  %.pre4.i47.i = load ptr, ptr %i.bi, align 8, !alias.scope !1497, !noalias !1444
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i45.i
  %i.ada = phi ptr [ %.pre4.i47.i, %bb.fi ], [ %i.acv, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i45.i ]
  %i.adb = getelementptr inbounds nuw i8, ptr %i.ada, i64 %i.acx
  store i8 %i.acy, ptr %i.adb, align 1, !noalias !1498
  %i.adc = add nuw nsw i64 %i.aak, 6              ; 4 uses
  store i64 %i.adc, ptr %i.bh, align 8, !alias.scope !1497, !noalias !1444
  call void @llvm.experimental.noalias.scope.decl(metadata !1499), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1500), !noalias !1277
  %i.add = load i64, ptr %1, align 8, !range !43, !alias.scope !1501, !noalias !1444, !noundef !28
  %i.ade = icmp eq i64 %i.add, %i.adc
  br i1 %i.ade, label %bb.fk, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit51.i, !prof !44

bb.fk:                                            ; preds = %bb.fj
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.adc, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1444
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit51.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit51.i: ; preds = %bb.fk, %bb.fj
  %i.adf = load ptr, ptr %i.bi, align 8, !alias.scope !1502, !noalias !1444, !nonnull !28, !noundef !28
  %i.adg = getelementptr inbounds nuw i8, ptr %i.adf, i64 %i.adc
  store i8 84, ptr %i.adg, align 1, !noalias !1503
  %i.adh = add nuw i64 %i.aak, 7                  ; 5 uses
  store i64 %i.adh, ptr %i.bh, align 8, !alias.scope !1502, !noalias !1444
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1443
  store i32 %storemerge.i, ptr %i.g, align 4, !noalias !1443
  call void @llvm.experimental.noalias.scope.decl(metadata !1504), !noalias !1277
  br i1 %i.de, label %_RINvNtNtCs2uF6e5yHHeh_6chrono6format10formatting14write_hundredsNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit56.thread.i, label %bb.fl

bb.fl:                                            ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit51.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1505), !noalias !1277
  call void @llvm.experimental.noalias.scope.decl(metadata !1506), !noalias !1277
  %i.adi = icmp sgt i64 %i.adh, -1
  call void @llvm.assume(i1 %i.adi), !noalias !1277
  %i.adj = load i64, ptr %1, align 8, !range !43, !alias.scope !1507, !noalias !1444, !noundef !28 ; 2 uses
  %i.adk = icmp eq i64 %i.adj, %i.adh
  br i1 %i.adk, label %bb.fm, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i52.i, !prof !44

bb.fm:                                            ; preds = %bb.fl
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.adh, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1444
  %.pre.i55.i = load i64, ptr %1, align 8, !range !43, !alias.scope !1508, !noalias !1444
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i52.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i52.i: ; preds = %bb.fm, %bb.fl
  %i.adl = phi i64 [ %.pre.i55.i, %bb.fm ], [ %i.adj, %bb.fl ] ; 2 uses
  %i.adm = load ptr, ptr %i.bi, align 8, !alias.scope !1509, !noalias !1444, !nonnull !28, !noundef !28 ; 2 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adm, i64 %i.adh
  store i8 %i.dg, ptr %i.adn, align 1, !noalias !1510
  %i.ado = add nuw i64 %i.aak, 8                  ; 3 uses
end_hunk_0
begin_hunk_1_@_RNvMNtCskXtk6F4WjxZ_4just10expressionNtB2_10Expression17resolve_variables:bb.a

bb.t:                                             ; preds = %_RNvMNtCskXtk6F4WjxZ_4just5tokenNtB2_5Token6lexeme.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34443)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34444)
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !34445, !noalias !34446, !noundef !28
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i.i = load i64, ptr %i.bx, align 8, !alias.scope !34445, !noalias !34446, !noundef !28
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val5.i.i = load i64, ptr %i.by, align 8, !alias.scope !34445, !noalias !34446, !noundef !28
  %i.bz = tail call fastcc noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneReECskXtk6F4WjxZ_4just(i64 %.val.i.i, i64 %.val5.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bh, i64 noundef %i.au), !noalias !34445 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34447)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34448)
  %i.ca = lshr i64 %i.bz, 57
  %i.cb = trunc nuw nsw i64 %i.ca to i8
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !34449, !noalias !34450, !noundef !28 ; 2 uses
  %i.ce = load ptr, ptr %1, align 8, !alias.scope !34449, !noalias !34450, !nonnull !28, !noundef !28 ; 2 uses
  %i.cf = insertelement <16 x i8> poison, i8 %i.cb, i64 0
  %i.cg = shufflevector <16 x i8> %i.cf, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %bb.u
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %bb.u ], [ %i.cz, %bb.w ]
  %.pn.i.i.i = phi i64 [ %i.bz, %bb.u ], [ %i.da, %bb.w ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i, %i.cd ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i25.i.i.i = load <16 x i8>, ptr %i.ch, align 1, !noalias !34451 ; 2 uses
  %i.ci = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i.i.i, %i.cg
  %i.cj = bitcast <16 x i1> %i.ci to i16          ; 2 uses
  %.not.i.not31.i.i.i = icmp eq i16 %i.cj, 0
  br i1 %.not.i.not31.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.v, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTReNtNtCskXtk6F4WjxZ_4just6number6NumberEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.thread.i.i.i
  %.sroa.06.0.i32.i.i.i = phi i16 [ %i.cy, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTReNtNtCskXtk6F4WjxZ_4just6number6NumberEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.thread.i.i.i ], [ %i.cj, %bb.v ] ; 3 uses
  %i.ck = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i32.i.i.i, i1 true)
  %i.cl = zext nneg i16 %i.ck to i64
  %i.cm = add i64 %.sroa.01.0.i.i.i.i, %i.cl
  %i.cn = and i64 %i.cm, %i.cd
  %i.co = sub nsw i64 0, %i.cn
  %i.cp = getelementptr inbounds [24 x i8], ptr %i.ce, i64 %i.co ; 3 uses
  %i.cq = getelementptr i8, ptr %i.cp, i64 -16
  %.val4.i.i.i.i = load i64, ptr %i.cq, align 8, !noalias !34452, !noundef !28
  %i.cr = icmp eq i64 %i.au, %.val4.i.i.i.i
  br i1 %i.cr, label %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTReNtNtCskXtk6F4WjxZ_4just6number6NumberEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.i.i.i, label %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTReNtNtCskXtk6F4WjxZ_4just6number6NumberEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.thread.i.i.i, !prof !32

_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTReNtNtCskXtk6F4WjxZ_4just6number6NumberEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.cs = getelementptr inbounds i8, ptr %i.cp, i64 -24
  %.val3.i.i.i.i = load ptr, ptr %i.cs, align 8, !noalias !34452, !nonnull !28, !noundef !28
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.bh, ptr nonnull readonly %.val3.i.i.i.i, i64 %i.au), !alias.scope !34453, !noalias !34454
  %i.ct = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.ct, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtCskXtk6F4WjxZ_4just6number6NumberE7or_elseNCNvMNtBM_10expressionNtB1x_10Expression17resolve_variabless_0EBM_.exit.sink.split, label %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTReNtNtCskXtk6F4WjxZ_4just6number6NumberEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.thread.i.i.i, !prof !33

._crit_edge.i.i.i:                                ; preds = %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTReNtNtCskXtk6F4WjxZ_4just6number6NumberEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.thread.i.i.i, %bb.v
  %i.cu = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i.i.i, splat (i8 -1)
  %i.cv = bitcast <16 x i1> %i.cu to i16
  %i.cw = icmp eq i16 %i.cv, 0
  br i1 %i.cw, label %bb.w, label %.thread, !prof !44

_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTReNtNtCskXtk6F4WjxZ_4just6number6NumberEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.thread.i.i.i: ; preds = %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTReNtNtCskXtk6F4WjxZ_4just6number6NumberEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.i.i.i, %.lr.ph.i.i.i
  %i.cx = add i16 %.sroa.06.0.i32.i.i.i, -1
  %i.cy = and i16 %i.cx, %.sroa.06.0.i32.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.cy, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.w:                                             ; preds = %._crit_edge.i.i.i
  %i.cz = add i64 %.sroa.9.0.i.i.i.i, 16          ; 2 uses
  %i.da = add i64 %.sroa.01.0.i.i.i.i, %i.cz
  br label %bb.v

.thread:                                          ; preds = %._crit_edge.i.i.i, %bb.t, %_RNvMNtCskXtk6F4WjxZ_4just5tokenNtB2_5Token6lexeme.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34455)
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dc = load i64, ptr %i.db, align 8, !alias.scope !34455, !noalias !34456, !noundef !28
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtCskXtk6F4WjxZ_4just6number6NumberE7or_elseNCNvMNtBM_10expressionNtB1x_10Expression17resolve_variabless_0EBM_.exit, label %bb.x

bb.x:                                             ; preds = %.thread
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.val.i.i.i = load i64, ptr %i.de, align 8, !alias.scope !34455, !noalias !34456, !noundef !28
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.val5.i.i.i = load i64, ptr %i.df, align 8, !alias.scope !34455, !noalias !34456, !noundef !28
  %i.dg = tail call fastcc noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneReECskXtk6F4WjxZ_4just(i64 %.val.i.i.i, i64 %.val5.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bh, i64 noundef %i.au), !noalias !34457 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34458)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34459)
  %i.dh = lshr i64 %i.dg, 57
  %i.di = trunc nuw nsw i64 %i.dh to i8
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !alias.scope !34460, !noalias !34461, !noundef !28 ; 2 uses
  %i.dl = load ptr, ptr %2, align 8, !alias.scope !34460, !noalias !34461, !nonnull !28, !noundef !28 ; 2 uses
  %i.dm = insertelement <16 x i8> poison, i8 %i.di, i64 0
  %i.dn = shufflevector <16 x i8> %i.dm, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.y

bb.y:                                             ; preds = %bb.z, %bb.x
  %.sroa.9.0.i.i.i.i.i = phi i64 [ 0, %bb.x ], [ %i.eg, %bb.z ]
  %.pn.i.i.i.i = phi i64 [ %i.dg, %bb.x ], [ %i.eh, %bb.z ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i, %i.dk ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i25.i.i.i.i = load <16 x i8>, ptr %i.do, align 1, !noalias !34462 ; 2 uses
  %i.dp = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i.i.i.i, %i.dn
  %i.dq = bitcast <16 x i1> %i.dp to i16          ; 2 uses
  %.not.i.not31.i.i.i.i = icmp eq i16 %i.dq, 0
  br i1 %.not.i.not31.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.y, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTReNtNtCskXtk6F4WjxZ_4just6number6NumberEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.thread.i.i.i.i
  %.sroa.06.0.i32.i.i.i.i = phi i16 [ %i.ef, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTReNtNtCskXtk6F4WjxZ_4just6number6NumberEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.thread.i.i.i.i ], [ %i.dq, %bb.y ] ; 3 uses
  %i.dr = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i32.i.i.i.i, i1 true)
  %i.ds = zext nneg i16 %i.dr to i64
  %i.dt = add i64 %.sroa.01.0.i.i.i.i.i, %i.ds
  %i.du = and i64 %i.dt, %i.dk
  %i.dv = sub nsw i64 0, %i.du
  %i.dw = getelementptr inbounds [24 x i8], ptr %i.dl, i64 %i.dv ; 3 uses
  %i.dx = getelementptr i8, ptr %i.dw, i64 -16
  %.val4.i.i.i.i.i = load i64, ptr %i.dx, align 8, !noalias !34463, !noundef !28
  %i.dy = icmp eq i64 %i.au, %.val4.i.i.i.i.i
  br i1 %i.dy, label %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTReNtNtCskXtk6F4WjxZ_4just6number6NumberEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.i.i.i.i, label %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTReNtNtCskXtk6F4WjxZ_4just6number6NumberEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.thread.i.i.i.i, !prof !32

_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTReNtNtCskXtk6F4WjxZ_4just6number6NumberEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.dz = getelementptr inbounds i8, ptr %i.dw, i64 -24
  %.val3.i.i.i.i.i = load ptr, ptr %i.dz, align 8, !noalias !34463, !nonnull !28, !noundef !28
  %bcmp.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.bh, ptr nonnull readonly %.val3.i.i.i.i.i, i64 %i.au), !alias.scope !34464, !noalias !34465
  %i.ea = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.ea, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtCskXtk6F4WjxZ_4just6number6NumberE7or_elseNCNvMNtBM_10expressionNtB1x_10Expression17resolve_variabless_0EBM_.exit.sink.split, label %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTReNtNtCskXtk6F4WjxZ_4just6number6NumberEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.thread.i.i.i.i, !prof !33

._crit_edge.i.i.i.i:                              ; preds = %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTReNtNtCskXtk6F4WjxZ_4just6number6NumberEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.thread.i.i.i.i, %bb.y
  %i.eb = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i.i.i.i, splat (i8 -1)
  %i.ec = bitcast <16 x i1> %i.eb to i16
  %i.ed = icmp eq i16 %i.ec, 0
  br i1 %i.ed, label %bb.z, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtCskXtk6F4WjxZ_4just6number6NumberE7or_elseNCNvMNtBM_10expressionNtB1x_10Expression17resolve_variabless_0EBM_.exit, !prof !44

_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTReNtNtCskXtk6F4WjxZ_4just6number6NumberEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.thread.i.i.i.i: ; preds = %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTReNtNtCskXtk6F4WjxZ_4just6number6NumberEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.ee = add i16 %.sroa.06.0.i32.i.i.i.i, -1
  %i.ef = and i16 %i.ee, %.sroa.06.0.i32.i.i.i.i  ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i16 %i.ef, 0
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.z:                                             ; preds = %._crit_edge.i.i.i.i
  %i.eg = add i64 %.sroa.9.0.i.i.i.i.i, 16        ; 2 uses
  %i.eh = add i64 %.sroa.01.0.i.i.i.i.i, %i.eg
  br label %bb.y

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtCskXtk6F4WjxZ_4just6number6NumberE7or_elseNCNvMNtBM_10expressionNtB1x_10Expression17resolve_variabless_0EBM_.exit.sink.split: ; preds = %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTReNtNtCskXtk6F4WjxZ_4just6number6NumberEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.i.i.i, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTReNtNtCskXtk6F4WjxZ_4just6number6NumberEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.i.i.i.i
  %.lcssa81.sink = phi ptr [ %i.dw, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTReNtNtCskXtk6F4WjxZ_4just6number6NumberEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.i.i.i.i ], [ %i.cp, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTReNtNtCskXtk6F4WjxZ_4just6number6NumberEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.i.i.i ]
  %i.ei = getelementptr inbounds i8, ptr %.lcssa81.sink, i64 -8
  %i.ej = load i32, ptr %i.ei, align 4, !noalias !28, !noundef !28
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtCskXtk6F4WjxZ_4just6number6NumberE7or_elseNCNvMNtBM_10expressionNtB1x_10Expression17resolve_variabless_0EBM_.exit

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtCskXtk6F4WjxZ_4just6number6NumberE7or_elseNCNvMNtBM_10expressionNtB1x_10Expression17resolve_variabless_0EBM_.exit: ; preds = %._crit_edge.i.i.i.i, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtCskXtk6F4WjxZ_4just6number6NumberE7or_elseNCNvMNtBM_10expressionNtB1x_10Expression17resolve_variabless_0EBM_.exit.sink.split, %.thread
  %.pn4.i = phi i32 [ 0, %.thread ], [ 1, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtCskXtk6F4WjxZ_4just6number6NumberE7or_elseNCNvMNtBM_10expressionNtB1x_10Expression17resolve_variabless_0EBM_.exit.sink.split ], [ 0, %._crit_edge.i.i.i.i ]
  %.pn2.i = phi i32 [ undef, %.thread ], [ %i.ej, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtCskXtk6F4WjxZ_4just6number6NumberE7or_elseNCNvMNtBM_10expressionNtB1x_10Expression17resolve_variabless_0EBM_.exit.sink.split ], [ undef, %._crit_edge.i.i.i.i ]
  %i.ek = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  store i32 %.pn4.i, ptr %i.ek, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %.tr, i64 12
  store i32 %.pn2.i, ptr %i.el, align 4
  br label %.loopexit
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCskXtk6F4WjxZ_4just10modulepathNtB2_10Modulepath13from_argument(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not.i = icmp samesign ult i64 %2, 2
  br i1 %.not.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.thread, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit: ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 %2
  %i.c = getelementptr i8, ptr %i.b, i64 -2
  %i.d = load i16, ptr %i.c, align 1
  %i.e = icmp ne i16 14906, %i.d
  %i.f = zext i1 %i.e to i32
  %bcmp.i.i.fr = freeze i32 %i.f
  %i.g = icmp eq i32 %bcmp.i.i.fr, 0
  %i.h = add i64 %2, -2
  %spec.select = select i1 %i.g, i64 %i.h, i64 %2
  br label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.thread

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.thread: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit, %bb.a
  %i.i = phi i64 [ %2, %bb.a ], [ %spec.select, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit ]
  store ptr %1, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.i, ptr %i.j, align 8
  call void @_RNvXs2_NtCskXtk6F4WjxZ_4just10modulepathNtB5_10ModulepathINtNtCsj6eKBz9Db1c_4core7convert7TryFromRSReE8try_from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCskXtk6F4WjxZ_4just10modulepathNtB2_10Modulepath4join(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !28, !noundef !28
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !28 ; 6 uses
  %.not.i = icmp slt i64 %3, 0
  br i1 %.not.i, label %bb.d, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %3, 0                        ; 3 uses
  br i1 %i.g, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringEEINtNtNtB8_7sources4once4OnceB1L_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !34508
  %i.h = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %3, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !34508 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.a, %bb.c
  %.sroa.416.0.ph = phi i64 [ 1, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.416.0.ph, i64 %3) #71
  unreachable

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringEEINtNtNtB8_7sources4once4OnceB1L_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.b, %bb.j
  %i.j = phi ptr [ %i.h, %bb.j ], [ inttoptr (i64 1 to ptr), %bb.b ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !34509
  %.sink22.i.i = add nuw nsw i64 %i.f, 1          ; 2 uses
  %i.k = mul i64 %.sink22.i.i, 24                 ; 2 uses
  %or.cond.i.i.i = icmp ugt i64 %i.f, 384307168202282324
  br i1 %or.cond.i.i.i, label %bb.f, label %bb.e, !prof !118

bb.e:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringEEINtNtNtB8_7sources4once4OnceB1L_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit.i
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !34510
  %i.l = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef range(i64 1, 9) 8) #70, !noalias !34510 ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.f, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringEEINtNtNtB8_7sources4once4OnceB1L_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit.i.i.i

bb.f:                                             ; preds = %bb.e, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringEEINtNtNtB8_7sources4once4OnceB1L_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit.i
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.e ], [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringEEINtNtNtB8_7sources4once4OnceB1L_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit.i ]
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.k) #71
          to label %.noexc.i unwind label %bb.h, !noalias !34509

.noexc.i:                                         ; preds = %bb.f
  unreachable

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringEEINtNtNtB8_7sources4once4OnceB1L_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit.i.i.i: ; preds = %bb.e
  store i64 %.sink22.i.i, ptr %i.b, align 8, !noalias !34509
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.l, ptr %i.n, align 8, !noalias !34509
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34511)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34512)
  %i.p = icmp eq i64 %i.f, 0
  br i1 %i.p, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain5ChainINtNtB1Y_6cloned6ClonedINtNtNtB22_5slice4iter4IterB13_EEINtNtNtB20_7sources4once4OnceB13_EEE9from_iterCskXtk6F4WjxZ_4just.exit, label %.preheader

.preheader:                                       ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringEEINtNtNtB8_7sources4once4OnceB1L_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit.i.i.i, %.noexc.i.i.i.i.i
  %.val6.i.i.i.i.i = phi i64 [ %i.s, %.noexc.i.i.i.i.i ], [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringEEINtNtNtB8_7sources4once4OnceB1L_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit.i.i.i ] ; 4 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.val6.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !34513
  invoke void @_RNvXs4_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q)
          to label %.noexc.i.i.i.i.i unwind label %bb.g, !noalias !34514

.noexc.i.i.i.i.i:                                 ; preds = %.preheader
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %.val6.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !34515
  %i.s = add nuw nsw i64 %.val6.i.i.i.i.i, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !34513
  %i.t = icmp eq i64 %i.s, %i.f
  br i1 %i.t, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain5ChainINtNtB1Y_6cloned6ClonedINtNtNtB22_5slice4iter4IterB13_EEINtNtNtB20_7sources4once4OnceB13_EEE9from_iterCskXtk6F4WjxZ_4just.exit, label %.preheader

bb.g:                                             ; preds = %.preheader
  %i.u = landingpad { ptr, i32 }
          cleanup
  store i64 %.val6.i.i.i.i.i, ptr %i.o, align 8, !alias.scope !34516, !noalias !34517
  br i1 %i.g, label %.body.i, label %.body.sink.split.i.i.i

.body.sink.split.i.i.i:                           ; preds = %bb.g
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %3, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !34518
  br label %.body.i

.body.i:                                          ; preds = %.body.sink.split.i.i.i, %bb.g
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #72, !noalias !34509
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtBG_6cloned6ClonedINtNtNtB4_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringEEINtNtNtBI_7sources4once4OnceB1Z_EEECskXtk6F4WjxZ_4just.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtBG_6cloned6ClonedINtNtNtB4_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringEEINtNtNtBI_7sources4once4OnceB1Z_EEECskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.i, %bb.h, %.body.i
  %.pn7.i = phi { ptr, i32 } [ %i.u, %.body.i ], [ %i.v, %bb.h ], [ %i.v, %bb.i ]
  resume { ptr, i32 } %.pn7.i

bb.h:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.g, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtBG_6cloned6ClonedINtNtNtB4_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringEEINtNtNtBI_7sources4once4OnceB1Z_EEECskXtk6F4WjxZ_4just.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %3, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !34519
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtBG_6cloned6ClonedINtNtNtB4_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringEEINtNtNtBI_7sources4once4OnceB1Z_EEECskXtk6F4WjxZ_4just.exit.i

_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain5ChainINtNtB1Y_6cloned6ClonedINtNtNtB22_5slice4iter4IterB13_EEINtNtNtB20_7sources4once4OnceB13_EEE9from_iterCskXtk6F4WjxZ_4just.exit: ; preds = %.noexc.i.i.i.i.i, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringEEINtNtNtB8_7sources4once4OnceB1L_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit.i.i.i
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.f ; 3 uses
  store i64 %3, ptr %i.w, align 8, !noalias !34520
  %.sroa.417.0..sroa_idx.us.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.j, ptr %.sroa.417.0..sroa_idx.us.i.i.i.i.i.i, align 8, !noalias !34521
  %.sroa.7.8..sroa.417.0..sroa_idx.us.i.i.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 %3, ptr %.sroa.7.8..sroa.417.0..sroa_idx.us.i.i.i.sroa_idx.i.i.i, align 8, !noalias !34521
  %i.x = add nuw nsw i64 %i.f, 1
  store i64 %i.x, ptr %i.o, align 8, !alias.scope !34516, !noalias !34517
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !34509
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load i8, ptr %i.y, align 8, !range !40, !noundef !28
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.z, ptr %i.aa, align 8
  ret void

bb.j:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull align 1 %2, i64 %3, i1 false)
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringEEINtNtNtB8_7sources4once4OnceB1L_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCskXtk6F4WjxZ_4just10resolutionINtB2_10ResolutionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtB4_6recipe6RecipeEE14resolve_recipe(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr nofree readonly captures(address) %.8.val, i64 %.16.val, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 11 uses
  %.not.i = icmp eq i64 %.16.val, 0
  br i1 %.not.i, label %bb.b, label %_RNvMNtCskXtk6F4WjxZ_4just8namepathNtB2_8Namepath10split_last.exit, !prof !44

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @978) #75, !noalias !34604
  unreachable

_RNvMNtCskXtk6F4WjxZ_4just8namepathNtB2_8Namepath10split_last.exit: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %.idx = mul i64 %.16.val, 72                    ; 2 uses
  %i.d = getelementptr i8, ptr %.8.val, i64 %.idx ; 5 uses
  %i.e = getelementptr i8, ptr %i.d, i64 -72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  store i64 0, ptr %i.g, align 8
  %i.h = icmp eq i64 %.idx, 72
  br i1 %i.h, label %bb.g, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMNtCskXtk6F4WjxZ_4just8namepathNtB2_8Namepath10split_last.exit, %bb.x
  %i.i = phi i64 [ %i.bl, %bb.x ], [ 0, %_RNvMNtCskXtk6F4WjxZ_4just8namepathNtB2_8Namepath10split_last.exit ]
  %.sroa.0.0116 = phi ptr [ %i.cl, %bb.x ], [ %1, %_RNvMNtCskXtk6F4WjxZ_4just8namepathNtB2_8Namepath10split_last.exit ] ; 2 uses
  %.sroa.02.0115 = phi ptr [ %i.ck, %bb.x ], [ %3, %_RNvMNtCskXtk6F4WjxZ_4just8namepathNtB2_8Namepath10split_last.exit ] ; 2 uses
  %.sroa.04.0114 = phi ptr [ %i.j, %bb.x ], [ %.8.val, %_RNvMNtCskXtk6F4WjxZ_4just8namepathNtB2_8Namepath10split_last.exit ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.04.0114, i64 72 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34605)
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.04.0114, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !34605, !nonnull !28, !noundef !28 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.04.0114, i64 24
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !34605, !noundef !28 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.0114, i64 56
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !34605, !noundef !28 ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.04.0114, i64 40
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !34605, !noundef !28 ; 13 uses
  %i.s = add i64 %i.r, %i.p                       ; 7 uses
  %i.t = icmp ugt i64 %i.p, %i.s
  %i.u = icmp ugt i64 %i.s, %i.n
  %or.cond.i.i = or i1 %i.t, %i.u
  br i1 %or.cond.i.i, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i70.invoke, label %bb.c, !prof !31

bb.c:                                             ; preds = %.lr.ph
  %i.v = icmp eq i64 %i.p, %i.n
  br i1 %i.v, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = icmp eq i64 %i.p, 0
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.x = icmp eq i64 %i.s, %i.n
  br i1 %i.x, label %bb.l, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.p
  %i.z = load i8, ptr %i.y, align 1, !alias.scope !34606, !noalias !34605, !noundef !28
  %i.aa = icmp sgt i8 %i.z, -65
  br i1 %i.aa, label %bb.e, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i70.invoke, !prof !32

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i: ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.s
  %i.ac = load i8, ptr %i.ab, align 1, !alias.scope !34606, !noalias !34605, !noundef !28
  %i.ad = icmp sgt i8 %i.ac, -65
  br i1 %i.ad, label %bb.l, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i70.invoke, !prof !33

._crit_edge:                                      ; preds = %bb.x
  %i.ae = getelementptr inbounds nuw i8, ptr %i.cj, i64 824
  %i.af = getelementptr inbounds nuw i8, ptr %i.cj, i64 704
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %_RNvMNtCskXtk6F4WjxZ_4just8namepathNtB2_8Namepath10split_last.exit
  %.sroa.03.0.lcssa = phi ptr [ %i.ae, %._crit_edge ], [ %4, %_RNvMNtCskXtk6F4WjxZ_4just8namepathNtB2_8Namepath10split_last.exit ] ; 2 uses
  %.sroa.01.0.lcssa = phi ptr [ %i.af, %._crit_edge ], [ %2, %_RNvMNtCskXtk6F4WjxZ_4just8namepathNtB2_8Namepath10split_last.exit ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34607)
  %i.ag = getelementptr i8, ptr %i.d, i64 -56
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !34607, !nonnull !28, !noundef !28 ; 9 uses
  %i.ai = getelementptr i8, ptr %i.d, i64 -48
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !34607, !noundef !28 ; 9 uses
  %i.ak = getelementptr i8, ptr %i.d, i64 -16
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !34607, !noundef !28 ; 12 uses
  %i.am = getelementptr i8, ptr %i.d, i64 -32
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !34607, !noundef !28 ; 5 uses
  %i.ao = add i64 %i.an, %i.al                    ; 11 uses
  %i.ap = icmp ugt i64 %i.al, %i.ao
  %i.aq = icmp ugt i64 %i.ao, %i.aj
  %or.cond.i.i36 = or i1 %i.ap, %i.aq
  br i1 %or.cond.i.i36, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i70.invoke, label %bb.h, !prof !31

bb.h:                                             ; preds = %bb.g
  %i.ar = icmp eq i64 %i.al, %i.aj                ; 2 uses
  br i1 %i.ar, label %bb.af, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = icmp eq i64 %i.al, 0
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.at = icmp eq i64 %i.ao, %i.aj
  br i1 %i.at, label %bb.af, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i38

bb.k:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.al
  %i.av = load i8, ptr %i.au, align 1, !alias.scope !34608, !noalias !34607, !noundef !28
  %i.aw = icmp sgt i8 %i.av, -65
  br i1 %i.aw, label %bb.j, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i70.invoke, !prof !32

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i38: ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ao
  %i.ay = load i8, ptr %i.ax, align 1, !alias.scope !34608, !noalias !34607, !noundef !28
  %i.az = icmp sgt i8 %i.ay, -65
  br i1 %i.az, label %bb.af, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i70.invoke, !prof !33

.body.thread10:                                   ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i70.invoke, %bb.az, %bb.o, %bb.ay
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.l:                                             ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i, %bb.e, %bb.c
  %i.ba = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.p ; 3 uses
  %.not.i41 = icmp slt i64 %i.r, 0
  br i1 %.not.i41, label %bb.o, label %bb.m, !prof !42

bb.m:                                             ; preds = %bb.l
  %i.bb = icmp eq i64 %i.r, 0                     ; 2 uses
  br i1 %i.bb, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit.thread18, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !34609
  %i.bc = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !34609 ; 3 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.l, %bb.n
  %.sroa.44.0.ph = phi i64 [ 1, %bb.n ], [ 0, %bb.l ]
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.44.0.ph, i64 %i.r) #71
          to label %bb.ae unwind label %.body.thread10

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit.thread18: ; preds = %bb.m, %bb.s
  %i.be = phi i64 [ %.pre, %bb.s ], [ %i.i, %bb.m ] ; 4 uses
  %i.bf = phi ptr [ %i.bc, %bb.s ], [ inttoptr (i64 1 to ptr), %bb.m ] ; 2 uses
  %i.bg = load i64, ptr %i.c, align 8, !range !43, !alias.scope !34610, !noalias !34611, !noundef !28
  %i.bh = icmp eq i64 %i.be, %i.bg
  br i1 %i.bh, label %bb.p, label %bb.t

bb.p:                                             ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit.thread18
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCsaKJjC64KgbL_3std(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.t unwind label %bb.q, !noalias !34611

bb.q:                                             ; preds = %bb.p
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.bb, label %.body.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bf, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !34612
  br label %.body.thread

bb.s:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bc, ptr nonnull align 1 %i.ba, i64 %i.r, i1 false)
  %.pre = load i64, ptr %i.g, align 8, !alias.scope !34610, !noalias !34611
  br label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit.thread18

bb.t:                                             ; preds = %bb.p, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit.thread18
  %i.bj = load ptr, ptr %i.f, align 8, !alias.scope !34610, !noalias !34611, !nonnull !28, !noundef !28
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %i.be ; 3 uses
  store i64 %i.r, ptr %i.bk, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.bf, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store i64 %i.r, ptr %.sroa.7.0..sroa_idx, align 8
  %i.bl = add i64 %i.be, 1                        ; 3 uses
  store i64 %i.bl, ptr %i.g, align 8, !alias.scope !34610, !noalias !34611
  %.sroa.02.0.val = load ptr, ptr %.sroa.02.0115, align 8, !noundef !28 ; 2 uses
end_hunk_1
begin_hunk_2_@_RNvMNtCskXtk6F4WjxZ_4just8compilerNtB2_8Compiler7compile:bb.a
  %i.acd = getelementptr inbounds nuw i8, ptr %.sroa.024.04146, i64 160
  %i.ace = load i8, ptr %i.acd, align 8, !range !40, !noundef !28
  %i.acf = trunc nuw i8 %i.ace to i1
  br i1 %i.acf, label %bb.hm, label %bb.hl

bb.hj:                                            ; preds = %bb.hh
  %i.acg = load ptr, ptr %i.gt, align 8, !nonnull !28, !noundef !28 ; 2 uses
  %i.ach = load i64, ptr %i.gu, align 8, !noundef !28 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !54031)
  %.idx10867 = mul nuw nsw i64 %i.ach, 24
  %i.aci = getelementptr inbounds nuw i8, ptr %i.acg, i64 %.idx10867
  %.not.not.not.i.not.not.not.i.not10855 = icmp eq i64 %i.ach, 0
  br i1 %.not.not.not.i.not.not.not.i.not10855, label %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCsaKJjC64KgbL_3std4path7PathBufNtB5_13SliceContains14slice_containsCskXtk6F4WjxZ_4just.exit, label %.lr.ph10857

bb.hk:                                            ; preds = %.noexc526
  %.not.not.not.i.not.not.not.i.not = icmp eq ptr %i.ack, %i.aci
  br i1 %.not.not.not.i.not.not.not.i.not, label %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCsaKJjC64KgbL_3std4path7PathBufNtB5_13SliceContains14slice_containsCskXtk6F4WjxZ_4just.exit, label %.lr.ph10857

.lr.ph10857:                                      ; preds = %bb.hj, %bb.hk
  %i.acj = phi ptr [ %i.ack, %bb.hk ], [ %i.acg, %bb.hj ] ; 3 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acj, i64 24 ; 2 uses
  %i.acl = getelementptr i8, ptr %i.acj, i64 8
  %.val2.i.i523 = load ptr, ptr %i.acl, align 8, !alias.scope !54031, !noalias !54032, !nonnull !28, !noundef !28
  %i.acm = getelementptr i8, ptr %i.acj, i64 16
  %.val3.i.i = load i64, ptr %i.acm, align 8, !alias.scope !54031, !noalias !54032, !noundef !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !54033
  invoke void @_RNvMs16_NtCsaKJjC64KgbL_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.bj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val2.i.i523, i64 noundef %.val3.i.i)
          to label %.noexc524 unwind label %.thread1066.loopexit

.noexc524:                                        ; preds = %.lr.ph10857
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !54033
  invoke void @_RNvMs16_NtCsaKJjC64KgbL_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.bi, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.abw, i64 noundef %i.abx)
          to label %.noexc525 unwind label %.thread1066.loopexit

.noexc525:                                        ; preds = %.noexc524
  %i.acn = invoke fastcc noundef zeroext i1 @_RNvXsl_NtCsaKJjC64KgbL_3std4pathNtB5_10ComponentsNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bi) #76
          to label %.noexc526 unwind label %.thread1066.loopexit

.noexc526:                                        ; preds = %.noexc525
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !54033
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !54033
  br i1 %i.acn, label %bb.ht, label %bb.hk

bb.hl:                                            ; preds = %bb.hi
  %i.aco = getelementptr inbounds nuw i8, ptr %i.do, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4103)
  %i.acp = getelementptr inbounds nuw i8, ptr %.sroa.024.04146, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4103, ptr noundef nonnull align 8 dereferenceable(72) %i.acp, i64 72, i1 false)
  %i.acq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 61, ptr %i.acq, align 8
  %.sroa.4103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4103.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4103, i64 72, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4103)
  br label %bb.ho

bb.hm:                                            ; preds = %bb.hi
  call void @llvm.experimental.noalias.scope.decl(metadata !54034)
  call void @llvm.experimental.noalias.scope.decl(metadata !54035)
  %.val.i.i527 = load i64, ptr %i.dg, align 8, !alias.scope !54036 ; 2 uses
  %i.acr = icmp eq i64 %.val.i.i527, 0
  br i1 %i.acr, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit529, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.abw, i64 noundef %.val.i.i527, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !54037
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit529

bb.ho:                                            ; preds = %bb.hl, %bb.hg
  %i.acs = phi ptr [ %i.aco, %bb.hl ], [ %i.abz, %bb.hg ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !54038)
  call void @llvm.experimental.noalias.scope.decl(metadata !54039)
  %.val.i.i530 = load i64, ptr %i.dg, align 8, !alias.scope !54040 ; 2 uses
  %i.act = icmp eq i64 %.val.i.i530, 0
  br i1 %i.act, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit532, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.abw, i64 noundef %.val.i.i530, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !54041
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit532

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit529: ; preds = %bb.hn, %bb.hm, %bb.it
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg)
  br label %.backedge

_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCsaKJjC64KgbL_3std4path7PathBufNtB5_13SliceContains14slice_containsCskXtk6F4WjxZ_4just.exit: ; preds = %bb.hk, %bb.hj
  %i.acu = icmp eq i64 %i.abx, 0                  ; 2 uses
  br i1 %i.acu, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCskXtk6F4WjxZ_4just.exit535, label %bb.hq

bb.hq:                                            ; preds = %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCsaKJjC64KgbL_3std4path7PathBufNtB5_13SliceContains14slice_containsCskXtk6F4WjxZ_4just.exit
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !54042
  %i.acv = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.abx, i64 noundef range(i64 1, 9) 1) #70, !noalias !54042 ; 3 uses
  %i.acw = icmp eq ptr %i.acv, null
  br i1 %i.acw, label %bb.hr, label %bb.hs

bb.hr:                                            ; preds = %bb.hq
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %i.abx) #71
          to label %.noexc534 unwind label %.thread1066.loopexit.split-lp.loopexit.split-lp

.noexc534:                                        ; preds = %bb.hr
  unreachable

bb.hs:                                            ; preds = %bb.hq
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.acv, ptr nonnull readonly align 1 %i.abw, i64 range(i64 0, -9223372036854775808) %i.abx, i1 false), !noalias !54043
  br label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCskXtk6F4WjxZ_4just.exit535

bb.ht:                                            ; preds = %.noexc526
  %i.acx = getelementptr inbounds nuw i8, ptr %i.do, i64 48 ; 2 uses
  %.sroa.499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.499.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.acx, i64 24, i1 false)
  %.sroa.5100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5100.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.dg, i64 24, i1 false)
  %i.acy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 22, ptr %i.acy, align 8
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit532

_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCskXtk6F4WjxZ_4just.exit535: ; preds = %bb.hs, %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCsaKJjC64KgbL_3std4path7PathBufNtB5_13SliceContains14slice_containsCskXtk6F4WjxZ_4just.exit
  %.sroa.5947.0 = phi ptr [ %i.acv, %bb.hs ], [ inttoptr (i64 1 to ptr), %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCsaKJjC64KgbL_3std4path7PathBufNtB5_13SliceContains14slice_containsCskXtk6F4WjxZ_4just.exit ]
  %i.acz = getelementptr inbounds nuw i8, ptr %.sroa.024.04146, i64 112 ; 2 uses
  %.val365 = load i64, ptr %i.acz, align 8, !range !37, !noundef !28 ; 2 uses
  %i.ada = getelementptr i8, ptr %.sroa.024.04146, i64 120 ; 2 uses
  %i.adb = icmp sgt i64 %.val365, 0
  br i1 %i.adb, label %bb.hu, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit539

bb.hu:                                            ; preds = %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCskXtk6F4WjxZ_4just.exit535
  %.val366 = load ptr, ptr %i.ada, align 8, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val366, i64 noundef %.val365, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !54044
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit539

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit539: ; preds = %bb.hu, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCskXtk6F4WjxZ_4just.exit535
  store i64 %i.abx, ptr %i.acz, align 8
  store ptr %.sroa.5947.0, ptr %i.ada, align 8
  %.sroa.6963.0..sroa_idx964 = getelementptr inbounds nuw i8, ptr %.sroa.024.04146, i64 128
  store i64 %i.abx, ptr %.sroa.6963.0..sroa_idx964, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dc)
  %.sroa.0869.0.copyload = load i64, ptr %i.dg, align 8 ; 5 uses
  %i.adc = getelementptr inbounds nuw i8, ptr %.sroa.024.04146, i64 88
  %i.add = load i64, ptr %i.adc, align 8, !noundef !28
  call void @llvm.experimental.noalias.scope.decl(metadata !54045)
  call void @llvm.experimental.noalias.scope.decl(metadata !54046)
  %i.ade = load i32, ptr %i.gv, align 8, !alias.scope !54046, !noalias !54047, !noundef !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !54048
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !54048
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !54048
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !54048
  %.val13.i540 = load ptr, ptr %i.gt, align 8, !alias.scope !54046, !noalias !54047, !nonnull !28, !noundef !28
  %.val14.i541 = load i64, ptr %i.gu, align 8, !alias.scope !54046, !noalias !54047, !noundef !28
  invoke fastcc void @_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtCsaKJjC64KgbL_3std4path7PathBufNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.be, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.val13.i540, i64 noundef %.val14.i541) #76
          to label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsaKJjC64KgbL_3std4path7PathBufENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCskXtk6F4WjxZ_4just.exit.i unwind label %bb.hv, !noalias !54048

bb.hv:                                            ; preds = %bb.hz, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit539
  %i.adf = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsaKJjC64KgbL_3std4path7PathBufENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCskXtk6F4WjxZ_4just.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit539
  %i.adg = load ptr, ptr %i.hp, align 8, !noalias !54048, !nonnull !28, !noundef !28 ; 3 uses
  %i.adh = load i64, ptr %i.be, align 8, !range !43, !noalias !54048, !noundef !28
  %i.adi = load i64, ptr %i.hq, align 8, !noalias !54048, !noundef !28 ; 2 uses
  %i.adj = icmp ult i64 %i.adi, 384307168202282326
  call void @llvm.assume(i1 %i.adj)
  %i.adk = getelementptr inbounds nuw [24 x i8], ptr %i.adg, i64 %i.adi
  store ptr %i.adg, ptr %i.bf, align 8, !noalias !54048
  store i64 %i.adh, ptr %i.hr, align 8, !noalias !54048
  store ptr %i.adg, ptr %i.hs, align 8, !noalias !54048
  store ptr %i.adk, ptr %i.ht, align 8, !noalias !54048
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !54048
  br i1 %i.acu, label %bb.hz, label %bb.hw

bb.hw:                                            ; preds = %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsaKJjC64KgbL_3std4path7PathBufENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCskXtk6F4WjxZ_4just.exit.i
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !54049
  %i.adl = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.abx, i64 noundef range(i64 1, 9) 1) #70, !noalias !54049 ; 3 uses
  %i.adm = icmp eq ptr %i.adl, null
  br i1 %i.adm, label %bb.hx, label %bb.hy

bb.hx:                                            ; preds = %bb.hw
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %i.abx) #71
          to label %.noexc.i556 unwind label %bb.ip, !noalias !54048

.noexc.i556:                                      ; preds = %bb.hx
  unreachable

bb.hy:                                            ; preds = %bb.hw
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.adl, ptr nonnull readonly align 1 %i.abw, i64 range(i64 0, -9223372036854775808) %i.abx, i1 false), !noalias !54050
  br label %bb.hz

bb.hz:                                            ; preds = %bb.hy, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsaKJjC64KgbL_3std4path7PathBufENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCskXtk6F4WjxZ_4just.exit.i
  %.sroa.549.0.i = phi ptr [ %i.adl, %bb.hy ], [ inttoptr (i64 1 to ptr), %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsaKJjC64KgbL_3std4path7PathBufENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCskXtk6F4WjxZ_4just.exit.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !54051)
  call void @llvm.experimental.noalias.scope.decl(metadata !54052)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hu, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.bf, i64 32, i1 false), !alias.scope !54053, !noalias !54054
  store i64 %i.abx, ptr %i.bg, align 8, !alias.scope !54055, !noalias !54056
  store ptr %.sroa.549.0.i, ptr %.sroa.470.0..sroa_idx.i, align 8, !alias.scope !54055, !noalias !54056
  store i64 %i.abx, ptr %.sroa.571.0..sroa_idx.i, align 8, !alias.scope !54055, !noalias !54056
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !54048
  invoke fastcc void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCsaKJjC64KgbL_3std4path7PathBufEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain5ChainINtNtB6_9into_iter8IntoIterB13_EINtNtNtB2e_7sources4once4OnceB13_EEE9from_iterCskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.bh, ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.bg)
          to label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterjEEINtNtNtB8_7sources4once4OncejEENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit.i.i unwind label %bb.hv, !noalias !54048

.body.i:                                          ; preds = %bb.io, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit.i554, %bb.il
  %.pn.i = phi { ptr, i32 } [ %i.afp, %bb.il ], [ %i.afq, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit.i554 ], [ %i.afq, %bb.io ] ; 2 uses
  %.sroa.01.2.i = phi i1 [ true, %bb.il ], [ false, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit.i554 ], [ false, %bb.io ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aed, i64 noundef %i.aeb, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !54057
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bh) #72, !noalias !54048
  br i1 %.sroa.01.2.i, label %.thread.i, label %.body516

.body.thread.i:                                   ; preds = %bb.id
  %i.adn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !54058)
  %i.ado = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.val.i768 = load ptr, ptr %i.ado, align 8, !alias.scope !54058, !noalias !54048, !nonnull !28, !noundef !28 ; 2 uses
  %i.adp = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %.val1.i769 = load i64, ptr %i.adp, align 8, !alias.scope !54058, !noalias !54048, !noundef !28 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !54059), !noalias !54048
  %i.adq = icmp eq i64 %.val1.i769, 0
  br i1 %i.adq, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsaKJjC64KgbL_3std4path7PathBufENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i775, label %.lr.ph.i.i.i770

.lr.ph.i.i.i770:                                  ; preds = %.body.thread.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit.i.i.i774
  %.sroa.0.010.i.i.i771 = phi i64 [ %i.ads, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit.i.i.i774 ], [ 0, %.body.thread.i ] ; 2 uses
  %i.adr = getelementptr inbounds nuw [24 x i8], ptr %.val.i768, i64 %.sroa.0.010.i.i.i771 ; 2 uses
  %i.ads = add nuw nsw i64 %.sroa.0.010.i.i.i771, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !54060), !noalias !54048
  call void @llvm.experimental.noalias.scope.decl(metadata !54061), !noalias !54048
  %.val.i.i.i.i.i772 = load i64, ptr %i.adr, align 8, !alias.scope !54062, !noalias !54063 ; 2 uses
  %i.adt = icmp eq i64 %.val.i.i.i.i.i772, 0
  br i1 %i.adt, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit.i.i.i774, label %bb.ia

bb.ia:                                            ; preds = %.lr.ph.i.i.i770
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adr, i64 8
  %.val1.i.i.i.i.i773 = load ptr, ptr %i.adu, align 8, !alias.scope !54064, !noalias !54063, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i773, i64 noundef %.val.i.i.i.i.i772, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !54065
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit.i.i.i774

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit.i.i.i774: ; preds = %bb.ia, %.lr.ph.i.i.i770
  %i.adv = icmp eq i64 %i.ads, %.val1.i769
  br i1 %i.adv, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsaKJjC64KgbL_3std4path7PathBufENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i775, label %.lr.ph.i.i.i770

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsaKJjC64KgbL_3std4path7PathBufENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i775: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit.i.i.i774, %.body.thread.i
  %.val2.i776 = load i64, ptr %i.bh, align 8, !alias.scope !54058, !noalias !54048 ; 2 uses
  %i.adw = icmp eq i64 %.val2.i776, 0
  br i1 %i.adw, label %.thread.i, label %bb.ib

bb.ib:                                            ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsaKJjC64KgbL_3std4path7PathBufENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i775
  %i.adx = mul nuw i64 %.val2.i776, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i768, i64 noundef %i.adx, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !54063
  br label %.thread.i

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterjEEINtNtNtB8_7sources4once4OncejEENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit.i.i: ; preds = %bb.hz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !54048
  %i.ady = load ptr, ptr %i.hv, align 8, !alias.scope !54046, !noalias !54047, !nonnull !28, !noundef !28 ; 7 uses
  %i.adz = ptrtoaddr ptr %i.ady to i64
  %i.aea = load i64, ptr %i.hw, align 8, !alias.scope !54046, !noalias !54047, !noundef !28 ; 10 uses
  %spec.select.i.i = add nuw nsw i64 %i.aea, 1    ; 3 uses
  %i.aeb = shl i64 %spec.select.i.i, 3            ; 4 uses
  %i.aec = icmp ugt i64 %i.aea, 2305843009213693950
  %.not.i.i.i.i544 = icmp ugt i64 %i.aeb, 9223372036854775800
  %or.cond.i.i.i.i = or i1 %i.aec, %.not.i.i.i.i544
  br i1 %or.cond.i.i.i.i, label %bb.id, label %bb.ic, !prof !42

bb.ic:                                            ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterjEEINtNtNtB8_7sources4once4OncejEENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit.i.i
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !54066
  %i.aed = call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.aeb, i64 noundef range(i64 1, 9) 8) #70, !noalias !54066 ; 11 uses
  %5 = ptrtoaddr ptr %i.aed to i64
  %i.aee = icmp eq ptr %i.aed, null
  br i1 %i.aee, label %bb.id, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterjEEINtNtNtB8_7sources4once4OncejEENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit.i.i.i.i

bb.id:                                            ; preds = %bb.ic, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterjEEINtNtNtB8_7sources4once4OncejEENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit.i.i
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.ic ], [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterjEEINtNtNtB8_7sources4once4OncejEENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit.i.i ]
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.aeb) #71
          to label %.noexc15.i unwind label %.body.thread.i, !noalias !54048

.noexc15.i:                                       ; preds = %bb.id
  unreachable

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterjEEINtNtNtB8_7sources4once4OncejEENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit.i.i.i.i: ; preds = %bb.ic
  %i.aef = icmp eq i64 %i.aea, 0
  br i1 %i.aef, label %.loopexit.i546, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterjEEINtNtNtB8_7sources4once4OncejEENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit.i.i.i.i
  %min.iters.check = icmp ult i64 %i.aea, 4
  %i.aeg = sub i64 %i.adz, %5
  %diff.check = icmp ugt i64 %i.aeg, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.preheader.i.preheader10885, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i.preheader
  %n.vec = and i64 %i.aea, 2305843009213693948    ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aeh = getelementptr inbounds nuw [8 x i8], ptr %i.ady, i64 %index ; 2 uses
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aeh, i64 16
  %wide.load = load <2 x i64>, ptr %i.aeh, align 8, !noalias !54067
  %wide.load10864 = load <2 x i64>, ptr %i.aei, align 8, !noalias !54067
  %i.aej = getelementptr inbounds nuw [8 x i8], ptr %i.aed, i64 %index ; 2 uses
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aej, i64 16
  store <2 x i64> %wide.load, ptr %i.aej, align 8, !noalias !54068
  store <2 x i64> %wide.load10864, ptr %i.aek, align 8, !noalias !54068
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ael = icmp eq i64 %index.next, %n.vec
  br i1 %i.ael, label %middle.block, label %vector.body, !llvm.loop !52875

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aea, %n.vec
  br i1 %cmp.n, label %.loopexit.i546, label %.preheader.i.preheader10885

.preheader.i.preheader10885:                      ; preds = %.preheader.i.preheader, %middle.block
  %.ph10886 = phi i64 [ 0, %.preheader.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter13105 = and i64 %i.aea, 3              ; 2 uses
  %lcmp.mod13106.not = icmp eq i64 %xtraiter13105, 0
  br i1 %lcmp.mod13106.not, label %.preheader.i.prol.loopexit, label %.preheader.i.prol

.preheader.i.prol:                                ; preds = %.preheader.i.preheader10885, %.preheader.i.prol
  %i.aem = phi i64 [ %i.aep, %.preheader.i.prol ], [ %.ph10886, %.preheader.i.preheader10885 ] ; 3 uses
  %prol.iter13107 = phi i64 [ %prol.iter13107.next, %.preheader.i.prol ], [ 0, %.preheader.i.preheader10885 ]
  %i.aen = getelementptr inbounds nuw [8 x i8], ptr %i.ady, i64 %i.aem
  %.val8.i.i.i.i.i.i.i.i.prol = load i64, ptr %i.aen, align 8, !noalias !54067, !noundef !28
  %i.aeo = getelementptr inbounds nuw [8 x i8], ptr %i.aed, i64 %i.aem
  store i64 %.val8.i.i.i.i.i.i.i.i.prol, ptr %i.aeo, align 8, !noalias !54068
  %i.aep = add nuw nsw i64 %i.aem, 1              ; 2 uses
  %prol.iter13107.next = add i64 %prol.iter13107, 1 ; 2 uses
  %prol.iter13107.cmp.not = icmp eq i64 %prol.iter13107.next, %xtraiter13105
  br i1 %prol.iter13107.cmp.not, label %.preheader.i.prol.loopexit, label %.preheader.i.prol, !llvm.loop !52876

.preheader.i.prol.loopexit:                       ; preds = %.preheader.i.prol, %.preheader.i.preheader10885
  %.unr13108 = phi i64 [ %.ph10886, %.preheader.i.preheader10885 ], [ %i.aep, %.preheader.i.prol ]
  %i.aeq = sub nsw i64 %.ph10886, %i.aea
  %i.aer = icmp ugt i64 %i.aeq, -4
  br i1 %i.aer, label %.loopexit.i546, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.prol.loopexit, %.preheader.i
  %i.aes = phi i64 [ %i.afe, %.preheader.i ], [ %.unr13108, %.preheader.i.prol.loopexit ] ; 6 uses
  %i.aet = getelementptr inbounds nuw [8 x i8], ptr %i.ady, i64 %i.aes
  %.val8.i.i.i.i.i.i.i.i = load i64, ptr %i.aet, align 8, !noalias !54067, !noundef !28
  %i.aeu = getelementptr inbounds nuw [8 x i8], ptr %i.aed, i64 %i.aes
  store i64 %.val8.i.i.i.i.i.i.i.i, ptr %i.aeu, align 8, !noalias !54068
  %i.aev = add nuw nsw i64 %i.aes, 1              ; 2 uses
  %i.aew = getelementptr inbounds nuw [8 x i8], ptr %i.ady, i64 %i.aev
  %.val8.i.i.i.i.i.i.i.i.1 = load i64, ptr %i.aew, align 8, !noalias !54067, !noundef !28
  %i.aex = getelementptr inbounds nuw [8 x i8], ptr %i.aed, i64 %i.aev
  store i64 %.val8.i.i.i.i.i.i.i.i.1, ptr %i.aex, align 8, !noalias !54068
  %i.aey = add nuw nsw i64 %i.aes, 2              ; 2 uses
  %i.aez = getelementptr inbounds nuw [8 x i8], ptr %i.ady, i64 %i.aey
  %.val8.i.i.i.i.i.i.i.i.2 = load i64, ptr %i.aez, align 8, !noalias !54067, !noundef !28
  %i.afa = getelementptr inbounds nuw [8 x i8], ptr %i.aed, i64 %i.aey
  store i64 %.val8.i.i.i.i.i.i.i.i.2, ptr %i.afa, align 8, !noalias !54068
  %i.afb = add nuw nsw i64 %i.aes, 3              ; 2 uses
  %i.afc = getelementptr inbounds nuw [8 x i8], ptr %i.ady, i64 %i.afb
  %.val8.i.i.i.i.i.i.i.i.3 = load i64, ptr %i.afc, align 8, !noalias !54067, !noundef !28
  %i.afd = getelementptr inbounds nuw [8 x i8], ptr %i.aed, i64 %i.afb
  store i64 %.val8.i.i.i.i.i.i.i.i.3, ptr %i.afd, align 8, !noalias !54068
  %i.afe = add nuw nsw i64 %i.aes, 4              ; 2 uses
  %i.aff = icmp eq i64 %i.afe, %i.aea
  br i1 %i.aff, label %.loopexit.i546, label %.preheader.i, !llvm.loop !52877

.loopexit.i546:                                   ; preds = %.preheader.i.prol.loopexit, %.preheader.i, %middle.block, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterjEEINtNtNtB8_7sources4once4OncejEENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit.i.i.i.i
  %i.afg = getelementptr inbounds nuw [8 x i8], ptr %i.aed, i64 %i.aea
  store i64 %i.add, ptr %i.afg, align 8, !noalias !54069
  %i.afh = load i64, ptr %i.fc, align 8, !range !37, !alias.scope !54046, !noalias !54047, !noundef !28
  %.not.i547 = icmp eq i64 %i.afh, -1
  br i1 %.not.i547, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCskXtk6F4WjxZ_4just4name4NameENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBJ_.exit.i, label %bb.ie

bb.ie:                                            ; preds = %.loopexit.i546
  %.val11.i548 = load ptr, ptr %i.hc, align 8, !alias.scope !54046, !noalias !54047, !nonnull !28, !noundef !28
  %.val12.i549 = load i64, ptr %i.hd, align 8, !alias.scope !54046, !noalias !54047, !noundef !28 ; 4 uses
  %i.afi = mul nuw nsw i64 %.val12.i549, 72       ; 3 uses
  %i.afj = icmp eq i64 %.val12.i549, 0
  br i1 %i.afj, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCskXtk6F4WjxZ_4just4name4NameENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBJ_.exit.i, label %bb.if

bb.if:                                            ; preds = %bb.ie
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !54070
  %i.afk = call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.afi, i64 noundef range(i64 1, 9) 8) #70, !noalias !54070 ; 3 uses
  %i.afl = icmp eq ptr %i.afk, null
  br i1 %i.afl, label %bb.ig, label %bb.ih

bb.ig:                                            ; preds = %bb.if
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.afi) #71
          to label %.noexc17.i unwind label %bb.il, !noalias !54048

.noexc17.i:                                       ; preds = %bb.ig
  unreachable

bb.ih:                                            ; preds = %bb.if
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.afk, ptr nonnull readonly align 8 %.val11.i548, i64 %i.afi, i1 false), !noalias !54071
  br label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCskXtk6F4WjxZ_4just4name4NameENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBJ_.exit.i

_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCskXtk6F4WjxZ_4just4name4NameENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBJ_.exit.i: ; preds = %bb.ih, %bb.ie, %.loopexit.i546
  %.sroa.7.0.i = phi i64 [ undef, %.loopexit.i546 ], [ %.val12.i549, %bb.ih ], [ 0, %bb.ie ]
  %.sroa.635.0.i = phi ptr [ undef, %.loopexit.i546 ], [ %i.afk, %bb.ih ], [ inttoptr (i64 8 to ptr), %bb.ie ] ; 3 uses
  %.sroa.033.0.i = phi i64 [ -1, %.loopexit.i546 ], [ %.val12.i549, %bb.ih ], [ 0, %bb.ie ] ; 3 uses
  %.val.i550 = load ptr, ptr %i.hx, align 8, !alias.scope !54046, !noalias !54047, !nonnull !28, !noundef !28
  %.val6.i551 = load i64, ptr %i.hy, align 8, !alias.scope !54046, !noalias !54047, !noundef !28 ; 6 uses
  %i.afm = icmp eq i64 %.val6.i551, 0
  br i1 %i.afm, label %bb.ir, label %bb.ii

bb.ii:                                            ; preds = %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCskXtk6F4WjxZ_4just4name4NameENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBJ_.exit.i
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !54072
  %i.afn = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val6.i551, i64 noundef range(i64 1, 9) 1) #70, !noalias !54072 ; 3 uses
  %i.afo = icmp eq ptr %i.afn, null
  br i1 %i.afo, label %bb.ij, label %bb.ik

bb.ij:                                            ; preds = %bb.ii
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val6.i551) #71
          to label %.noexc19.i555 unwind label %bb.im, !noalias !54048

.noexc19.i555:                                    ; preds = %bb.ij
  unreachable

bb.ik:                                            ; preds = %bb.ii
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.afn, ptr nonnull readonly align 1 %.val.i550, i64 range(i64 0, -9223372036854775808) %.val6.i551, i1 false), !noalias !54073
  br label %bb.ir

bb.il:                                            ; preds = %bb.ig
  %i.afp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.im:                                            ; preds = %bb.ij
  %i.afq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.afr = icmp eq i64 %.sroa.0869.0.copyload, 0
  br i1 %i.afr, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit.i554, label %bb.in

bb.in:                                            ; preds = %bb.im
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.abw, i64 noundef %.sroa.0869.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !54074
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit.i554

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit.i554: ; preds = %bb.in, %bb.im
  %.0.val.off.i.i = add i64 %.sroa.033.0.i, -1
  %switch.i.i = icmp ult i64 %.0.val.off.i.i, -2
  br i1 %switch.i.i, label %bb.io, label %.body.i

bb.io:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit.i554
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.635.0.i) ]
  %i.afs = mul nuw i64 %.sroa.033.0.i, 72
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.635.0.i, i64 noundef %i.afs, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !54075
  br label %.body.i

bb.ip:                                            ; preds = %bb.hx
  %i.aft = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(32) %i.bf) #72, !noalias !54048
  br label %.thread.i

.thread.i:                                        ; preds = %bb.ib, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsaKJjC64KgbL_3std4path7PathBufENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i775, %bb.ip, %.body.i, %bb.hv
  %.pn.pn.pn93.i = phi { ptr, i32 } [ %.pn.i, %.body.i ], [ %i.adf, %bb.hv ], [ %i.aft, %bb.ip ], [ %i.adn, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsaKJjC64KgbL_3std4path7PathBufENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i775 ], [ %i.adn, %bb.ib ] ; 2 uses
  %i.afu = icmp eq i64 %.sroa.0869.0.copyload, 0
  br i1 %i.afu, label %.body516, label %bb.iq

bb.iq:                                            ; preds = %.thread.i
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.abw, i64 noundef %.sroa.0869.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !54076
  br label %.body516

bb.ir:                                            ; preds = %bb.ik, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCskXtk6F4WjxZ_4just4name4NameENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBJ_.exit.i
  %.sroa.579.0.i = phi ptr [ %i.afn, %bb.ik ], [ inttoptr (i64 1 to ptr), %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCskXtk6F4WjxZ_4just4name4NameENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBJ_.exit.i ]
  %i.afv = add i32 %i.ade, 1
  store i32 %i.afv, ptr %i.hz, align 8, !alias.scope !54045, !noalias !54077
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.dc, ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 24, i1 false), !noalias !54077
  store i64 %spec.select.i.i, ptr %i.ia, align 8, !alias.scope !54045, !noalias !54077
  store ptr %i.aed, ptr %.sroa.5.0..sroa_idx.i552, align 8, !alias.scope !54045, !noalias !54077
  store i64 %spec.select.i.i, ptr %.sroa.6.0..sroa_idx.i553, align 8, !alias.scope !54045, !noalias !54077
  store i64 %.sroa.033.0.i, ptr %i.ib, align 8, !alias.scope !54045, !noalias !54077
  store ptr %.sroa.635.0.i, ptr %.sroa.635.0..sroa_idx36.i, align 8, !alias.scope !54045, !noalias !54077
  store i64 %.sroa.7.0.i, ptr %.sroa.7.0..sroa_idx38.i, align 8, !alias.scope !54045, !noalias !54077
  store i64 %.sroa.0869.0.copyload, ptr %i.ic, align 8, !alias.scope !54045, !noalias !54077
  store ptr %i.abw, ptr %.sroa.542.0..sroa_idx43.i, align 8, !alias.scope !54045, !noalias !54077
  store i64 %i.abx, ptr %.sroa.645.0..sroa_idx46.i, align 8, !alias.scope !54045, !noalias !54077
  store i64 %.val6.i551, ptr %i.id, align 8, !alias.scope !54045, !noalias !54077
  store ptr %.sroa.579.0.i, ptr %.sroa.488.0..sroa_idx.i, align 8, !alias.scope !54045, !noalias !54077
  store i64 %.val6.i551, ptr %.sroa.589.0..sroa_idx.i, align 8, !alias.scope !54045, !noalias !54077
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !54048
  call void @llvm.experimental.noalias.scope.decl(metadata !54027)
  %i.afw = load i64, ptr %i.ey, align 8, !alias.scope !54027, !noalias !54078, !noundef !28 ; 3 uses
  %i.afx = load i64, ptr %i.dr, align 8, !range !43, !alias.scope !54027, !noalias !54078, !noundef !28
  %i.afy = icmp eq i64 %i.afw, %i.afx
  br i1 %i.afy, label %bb.is, label %bb.it

bb.is:                                            ; preds = %bb.ir
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCskXtk6F4WjxZ_4just6source6SourceE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dr)
          to label %bb.it unwind label %bb.he, !noalias !54078

bb.it:                                            ; preds = %bb.is, %bb.ir
  %i.afz = load ptr, ptr %i.ex, align 8, !alias.scope !54027, !noalias !54078, !nonnull !28, !noundef !28
  %i.aga = getelementptr inbounds nuw [128 x i8], ptr %i.afz, i64 %i.afw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.aga, ptr noundef nonnull readonly align 8 dereferenceable(128) %i.dc, i64 128, i1 false), !noalias !54027
  %i.agb = add i64 %i.afw, 1
  store i64 %i.agb, ptr %i.ey, align 8, !alias.scope !54027, !noalias !54078
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit529

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit532: ; preds = %bb.hp, %bb.ho, %bb.ht, %bb.gu
  %i.agc = phi ptr [ %i.abk, %bb.gu ], [ %i.acx, %bb.ht ], [ %i.acs, %bb.ho ], [ %i.acs, %bb.hp ]
  %.sroa.0128.6 = phi i8 [ 1, %bb.gu ], [ 0, %bb.ht ], [ 1, %bb.ho ], [ 1, %bb.hp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit641

bb.iu:                                            ; preds = %.thread1066
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.abw, i64 noundef %.val.i.i563, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !54079
  br label %.body516

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit641: ; preds = %bb.sn, %bb.um, %bb.un, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit532
  %i.agd = phi ptr [ %i.agc, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit532 ], [ %i.bfx, %bb.sn ], [ %i.bji, %bb.um ], [ %i.bji, %bb.un ]
  %.sroa.0128.7 = phi i8 [ %.sroa.0128.6, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit532 ], [ 1, %bb.sn ], [ %.sroa.0128.8, %bb.um ], [ %.sroa.0128.8, %bb.un ] ; 2 uses
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just3ast3AstEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.dk)
          to label %bb.uq unwind label %.body502.thread1022.loopexit.split-lp

bb.iv:                                            ; preds = %bb.gq
  %i.age = extractvalue { ptr, i64 } %i.abc, 0    ; 3 uses
  %i.agf = extractvalue { ptr, i64 } %i.abc, 1    ; 2 uses
  %.not315 = icmp eq ptr %i.age, null
  br i1 %.not315, label %.invoke8597, label %bb.iw, !prof !44

bb.iw:                                            ; preds = %bb.iv
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.746)
  %i.agg = getelementptr inbounds nuw i8, ptr %.sroa.024.04146, i64 56
  %i.agh = load i64, ptr %i.agg, align 8, !range !37, !noundef !28
  %.not316 = icmp eq i64 %i.agh, -1
  br i1 %.not316, label %bb.iy, label %bb.ix

.invoke8597:                                      ; preds = %bb.iv, %bb.gr
  %i.agi = phi ptr [ @952, %bb.gr ], [ @953, %bb.iv ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.agi) #71
          to label %.cont8598 unwind label %.loopexit.split-lp1132.loopexit.split-lp

.cont8598:                                        ; preds = %.invoke8597
  unreachable

bb.ix:                                            ; preds = %bb.iw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck)
  %i.agj = getelementptr i8, ptr %.sroa.024.04146, i64 64
  %.val393 = load ptr, ptr %i.agj, align 8, !nonnull !28, !noundef !28
  %i.agk = getelementptr i8, ptr %.sroa.024.04146, i64 72
  %.val394 = load i64, ptr %i.agk, align 8, !noundef !28
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just8compilerNtB2_8Compiler12expand_tilde(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %i.ck, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val393, i64 noundef %.val394)
          to label %_RNCNvMNtCskXtk6F4WjxZ_4just8compilerNtB4_8Compiler7compile0B6_.exit unwind label %.loopexit1131

bb.iy:                                            ; preds = %_RNCNvMNtCskXtk6F4WjxZ_4just8compilerNtB4_8Compiler7compile0B6_.exit, %bb.iw
  %.sroa.738.sroa.8.sroa.7.0 = phi i64 [ undef, %bb.iw ], [ %.sroa.644.sroa.6.sroa.6.0.copyload, %_RNCNvMNtCskXtk6F4WjxZ_4just8compilerNtB4_8Compiler7compile0B6_.exit ] ; 4 uses
  %.sroa.738.sroa.8.sroa.0.0 = phi ptr [ undef, %bb.iw ], [ %.sroa.644.sroa.6.sroa.0.0.copyload, %_RNCNvMNtCskXtk6F4WjxZ_4just8compilerNtB4_8Compiler7compile0B6_.exit ] ; 10 uses
  %.sroa.738.sroa.0.0 = phi i64 [ -1, %bb.iw ], [ %.sroa.644.sroa.0.0.copyload, %_RNCNvMNtCskXtk6F4WjxZ_4just8compilerNtB4_8Compiler7compile0B6_.exit ] ; 19 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.746)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.33)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di)
  %i.agl = getelementptr inbounds nuw i8, ptr %.sroa.024.04146, i64 160 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.di, ptr noundef nonnull align 8 dereferenceable(72) %i.agl, i64 72, i1 false)
  %.not318 = icmp eq i64 %.sroa.738.sroa.0.0, -1
  call void @llvm.experimental.noalias.scope.decl(metadata !54080)
  call void @llvm.experimental.noalias.scope.decl(metadata !54081)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  store ptr %i.age, ptr %i.bd, align 8, !noalias !54082
  store i64 %i.agf, ptr %i.fo, align 8, !noalias !54082
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !54082
  store i64 0, ptr %i.bc, align 8, !noalias !54082
  store ptr inttoptr (i64 8 to ptr), ptr %i.fp, align 8, !noalias !54082
  store i64 0, ptr %i.fq, align 8, !noalias !54082
  br i1 %.not318, label %bb.ja, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !54082
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !54082
  invoke void @_RNvMs16_NtCsaKJjC64KgbL_3std4pathNtB6_4Path5__join(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ba, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.age, i64 noundef %i.agf, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.738.sroa.8.sroa.0.0, i64 noundef %.sroa.738.sroa.8.sroa.7.0)
          to label %_RINvMs16_NtCsaKJjC64KgbL_3std4pathNtB7_4Path4joinRBw_ECskXtk6F4WjxZ_4just.exit.i unwind label %bb.jb, !noalias !54080

bb.ja:                                            ; preds = %bb.iy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !54082
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !54082
  store ptr %i.di, ptr %i.av, align 8, !noalias !54082
  store ptr @_RNvXs0_NtCskXtk6F4WjxZ_4just4nameNtB5_4NameNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.4108.0..sroa_idx.i, align 8, !noalias !54082
  invoke void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aw, ptr noundef nonnull @944, ptr noundef nonnull %i.av)
          to label %bb.kb unwind label %bb.jb, !noalias !54080

bb.jb:                                            ; preds = %bb.ke, %bb.ja, %bb.iz
  %i.agm = landingpad { ptr, i32 }
          cleanup
  br label %bb.sk

_RINvMs16_NtCsaKJjC64KgbL_3std4pathNtB7_4Path4joinRBw_ECskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.iz
  %i.agn = load ptr, ptr %i.fr, align 8, !noalias !54082, !nonnull !28, !noundef !28 ; 3 uses
  %i.ago = load i64, ptr %i.fs, align 8, !noalias !54082, !noundef !28
  invoke void @_RNvXNtCskXtk6F4WjxZ_4just5cleanRNtNtCsaKJjC64KgbL_3std4path4PathNtB2_5Clean5clean(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.agn, i64 noundef %i.ago)
          to label %bb.je unwind label %bb.jc, !noalias !54080

bb.jc:                                            ; preds = %_RINvMs16_NtCsaKJjC64KgbL_3std4pathNtB7_4Path4joinRBw_ECskXtk6F4WjxZ_4just.exit.i
  %i.agp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !54083)
  call void @llvm.experimental.noalias.scope.decl(metadata !54084)
  %.val.i.i.i568 = load i64, ptr %i.ba, align 8, !alias.scope !54085, !noalias !54082 ; 2 uses
  %i.agq = icmp eq i64 %.val.i.i.i568, 0
  br i1 %i.agq, label %bb.sk, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.agn, i64 noundef %.val.i.i.i568, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !54086
  br label %bb.sk

bb.je:                                            ; preds = %_RINvMs16_NtCsaKJjC64KgbL_3std4pathNtB7_4Path4joinRBw_ECskXtk6F4WjxZ_4just.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !54087)
  call void @llvm.experimental.noalias.scope.decl(metadata !54088)
  %.val.i.i255.i = load i64, ptr %i.ba, align 8, !alias.scope !54089, !noalias !54082 ; 2 uses
  %i.agr = icmp eq i64 %.val.i.i255.i, 0
  br i1 %i.agr, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit257.i, label %bb.jf

bb.jf:                                            ; preds = %bb.je
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.agn, i64 noundef %.val.i.i255.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !54090
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit257.i

.body.i569:                                       ; preds = %bb.jw, %bb.jv, %bb.js, %bb.jq, %bb.jp, %bb.jh
  %.pn242.i = phi { ptr, i32 } [ %i.aha, %bb.jp ], [ %i.agt, %bb.jh ], [ %i.aha, %bb.jq ], [ %i.ahd, %bb.js ], [ %i.ahk, %bb.jw ], [ %i.ahk, %bb.jv ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !54091)
  call void @llvm.experimental.noalias.scope.decl(metadata !54092)
  %.val.i.i258.i = load i64, ptr %i.bb, align 8, !alias.scope !54093, !noalias !54082 ; 2 uses
  %i.ags = icmp eq i64 %.val.i.i258.i, 0
  br i1 %i.ags, label %bb.sk, label %bb.jg

bb.jg:                                            ; preds = %.body.i569
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.agu, i64 noundef %.val.i.i258.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !54094
  br label %bb.sk

bb.jh:                                            ; preds = %bb.jm, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit257.i
  %i.agt = landingpad { ptr, i32 }
          cleanup
  br label %.body.i569

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit257.i: ; preds = %bb.jf, %bb.je
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !54082
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !54082
  %i.agu = load ptr, ptr %i.ft, align 8, !noalias !54082, !nonnull !28, !noundef !28 ; 5 uses
  %i.agv = load i64, ptr %i.fu, align 8, !noalias !54082, !noundef !28 ; 2 uses
  invoke fastcc void @_RNvNtCskXtk6F4WjxZ_4just10filesystem7is_file(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.az, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.agu, i64 noundef %i.agv)
          to label %bb.ji unwind label %bb.jh, !noalias !54080

bb.ji:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit257.i
  %i.agw = load i64, ptr %i.az, align 8, !range !117, !noalias !54082, !noundef !28 ; 2 uses
  %.not219.i = icmp eq i64 %i.agw, -1
  %i.agx = load i8, ptr %.sroa.488.0..sroa_idx.i570, align 8, !noalias !54082 ; 3 uses
  br i1 %.not219.i, label %bb.jl, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  %.sroa.11810.sroa.11.sroa.0.0.copyload = load i56, ptr %.sroa.589.0..sroa_idx.i571, align 1, !noalias !54095 ; 2 uses
  %.sroa.20.9.copyload = load ptr, ptr %.sroa.20.9..sroa.589.0..sroa_idx.i571.sroa_idx, align 8, !noalias !54095 ; 2 uses
  %.sroa.26.9.copyload = load i64, ptr %.sroa.26.9..sroa.589.0..sroa_idx.i571.sroa_idx, align 8, !noalias !54095 ; 2 uses
  %.sroa.29.9.copyload = load ptr, ptr %.sroa.29.9..sroa.589.0..sroa_idx.i571.sroa_idx, align 8, !noalias !54095 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.33, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.33.9..sroa.589.0..sroa_idx.i571.sroa_idx, i64 64, i1 false), !noalias !54095
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !54082
  call void @llvm.experimental.noalias.scope.decl(metadata !54096)
  call void @llvm.experimental.noalias.scope.decl(metadata !54097)
  %.val.i.i261.i = load i64, ptr %i.bb, align 8, !alias.scope !54098, !noalias !54082 ; 2 uses
  %i.agy = icmp eq i64 %.val.i.i261.i, 0
  br i1 %i.agy, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtCsaKJjC64KgbL_3std4path7PathBufbEEECskXtk6F4WjxZ_4just.exit.i, label %bb.jk

bb.jk:                                            ; preds = %bb.jj
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.agu, i64 noundef %.val.i.i261.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !54099
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtCsaKJjC64KgbL_3std4path7PathBufbEEECskXtk6F4WjxZ_4just.exit.i

bb.jl:                                            ; preds = %bb.ji
  %i.agz = trunc nuw i8 %i.agx to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !54082
  br i1 %i.agz, label %bb.jn, label %bb.jm

bb.jm:                                            ; preds = %bb.jl
end_hunk_2
begin_hunk_3_@_RNvMs10_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_16BalancingContextlNtNtCsaKJjC64KgbL_3std7process7CommandE16bulk_steal_rightCskXtk6F4WjxZ_4just:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 2208 ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.g
  store i32 %i.ac, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw [200 x i8], ptr %i.af, i64 %i.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.ag, ptr noundef nonnull align 8 dereferenceable(200) %i.a, i64 200, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ah = add nuw nsw i64 %i.g, 1                 ; 5 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ah
  %i.aj = shl nuw nsw i64 %i.r, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ai, ptr nonnull readonly align 4 %i.s, i64 %i.aj, i1 false), !alias.scope !62374
  %i.ak = getelementptr inbounds nuw [200 x i8], ptr %i.af, i64 %i.ah
  %i.al = mul nuw nsw i64 %i.r, 200
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ak, ptr nonnull readonly align 8 %i.v, i64 %i.al, i1 false), !alias.scope !62375
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %1
  %i.an = shl nuw nsw i64 %i.o, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.s, ptr nonnull align 4 %i.am, i64 %i.an, i1 false), !alias.scope !62376
  %i.ao = getelementptr inbounds nuw [200 x i8], ptr %i.v, i64 %1
  %i.ap = mul nuw nsw i64 %i.o, 200
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.v, ptr nonnull align 8 %i.ao, i64 %i.ap, i1 false), !alias.scope !62377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !28
  %i.as = icmp eq i64 %i.ar, 0
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.au = load i64, ptr %i.at, align 8, !noundef !28
  %i.av = icmp eq i64 %i.au, 0                    ; 2 uses
  br i1 %i.as, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  br i1 %i.av, label %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit25, label %bb.h, !prof !29

bb.g:                                             ; preds = %bb.e
  br i1 %i.av, label %bb.h, label %bb.i, !prof !44

_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit25.loopexit.unr-lcssa: ; preds = %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit25, label %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit.epil.preheader

_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit.epil.preheader: ; preds = %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit25.loopexit.unr-lcssa, %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit.preheader
  %.sroa.0.06.i23.epil.init = phi i64 [ 0, %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit.preheader ], [ %i.de, %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit25.loopexit.unr-lcssa ]
  %lcmp.mod32 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod32)
  br label %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit.epil

_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit.epil: ; preds = %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit.epil, %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit.epil.preheader
  %.sroa.0.06.i23.epil = phi i64 [ %i.aw, %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit.epil ], [ %.sroa.0.06.i23.epil.init, %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit.epil.preheader ] ; 4 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit.epil ], [ 0, %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit.epil.preheader ]
  %i.aw = add nuw nsw i64 %.sroa.0.06.i23.epil, 1
  %i.ax = icmp samesign ult i64 %.sroa.0.06.i23.epil, 12
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.sroa.0.06.i23.epil
  %i.az = load ptr, ptr %i.ay, align 8, !nonnull !28, !noundef !28 ; 2 uses
  store ptr %i.i, ptr %i.az, align 8
  %i.ba = trunc nuw nsw i64 %.sroa.0.06.i23.epil to i16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 2252
  store i16 %i.ba, ptr %i.bb, align 4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit25, label %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit.epil, !llvm.loop !62365

_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit25: ; preds = %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit25.loopexit.unr-lcssa, %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit.epil, %bb.f
  ret void

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @193, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1042) #75
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %i.i, i64 2256 ; 8 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 2256 ; 6 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.ah
  %i.bf = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.be, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.bc, i64 %i.bf, i1 false), !alias.scope !62378
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %1
  %i.bh = shl nuw nsw i64 %i.o, 3
  %i.bi = add nuw nsw i64 %i.bh, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bc, ptr noundef nonnull align 8 dereferenceable(1) %i.bg, i64 %i.bi, i1 false), !alias.scope !62379
  %i.bj = icmp ult i16 %i.f, 11
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.ah
  %i.bl = load ptr, ptr %i.bk, align 8, !nonnull !28, !noundef !28 ; 2 uses
  store ptr %i.d, ptr %i.bl, align 8
  %i.bm = trunc nuw nsw i64 %i.ah to i16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 2252
  store i16 %i.bm, ptr %i.bn, align 4
  %exitcond.not.i = icmp eq i64 %1, 1
  br i1 %exitcond.not.i, label %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bo = add nuw nsw i64 %i.g, 2                 ; 2 uses
  %i.bp = icmp samesign ult i16 %i.f, 10
  tail call void @llvm.assume(i1 %i.bp)
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bo
  %i.br = load ptr, ptr %i.bq, align 8, !nonnull !28, !noundef !28 ; 2 uses
  store ptr %i.d, ptr %i.br, align 8
  %i.bs = trunc nuw nsw i64 %i.bo to i16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 2252
  store i16 %i.bs, ptr %i.bt, align 4
  %exitcond.not.i.1 = icmp eq i64 %1, 2
  br i1 %exitcond.not.i.1, label %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit.preheader, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bu = add nuw nsw i64 %i.g, 3                 ; 2 uses
  %i.bv = icmp samesign ult i16 %i.f, 9
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bu
  %i.bx = load ptr, ptr %i.bw, align 8, !nonnull !28, !noundef !28 ; 2 uses
  store ptr %i.d, ptr %i.bx, align 8
  %i.by = trunc nuw nsw i64 %i.bu to i16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 2252
  store i16 %i.by, ptr %i.bz, align 4
  %exitcond.not.i.2 = icmp eq i64 %1, 3
  br i1 %exitcond.not.i.2, label %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ca = add nuw nsw i64 %i.g, 4                 ; 2 uses
  %i.cb = icmp samesign ult i16 %i.f, 8
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.ca
  %i.cd = load ptr, ptr %i.cc, align 8, !nonnull !28, !noundef !28 ; 2 uses
  store ptr %i.d, ptr %i.cd, align 8
  %i.ce = trunc nuw nsw i64 %i.ca to i16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 2252
  store i16 %i.ce, ptr %i.cf, align 4
  %exitcond.not.i.3 = icmp eq i64 %1, 4
  br i1 %exitcond.not.i.3, label %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit.preheader, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cg = add nuw nsw i64 %i.g, 5                 ; 2 uses
  %i.ch = icmp ne i16 %i.f, 7
  tail call void @llvm.assume(i1 %i.ch)
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.cg
  %i.cj = load ptr, ptr %i.ci, align 8, !nonnull !28, !noundef !28 ; 2 uses
  store ptr %i.d, ptr %i.cj, align 8
  %i.ck = trunc nuw nsw i64 %i.cg to i16
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 2252
  store i16 %i.ck, ptr %i.cl, align 4
  br label %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit.preheader

_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit.preheader: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %i.cm = add nuw nsw i64 %i.l, 1
  %i.cn = sub nsw i64 %i.cm, %1                   ; 2 uses
  %xtraiter = and i64 %i.cn, 3                    ; 3 uses
  %i.co = icmp samesign ult i64 %i.o, 3
  br i1 %i.co, label %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit.epil.preheader, label %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit.preheader.new

_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit.preheader.new: ; preds = %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit.preheader
  %unroll_iter = and i64 %i.cn, -4
  br label %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit

_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit: ; preds = %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit, %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit.preheader.new
  %.sroa.0.06.i23 = phi i64 [ 0, %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit.preheader.new ], [ %i.de, %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit ] ; 7 uses
  %niter = phi i64 [ 0, %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit.preheader.new ], [ %niter.next.3, %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit ]
  %i.cp = or disjoint i64 %.sroa.0.06.i23, 1      ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.sroa.0.06.i23
  %i.cr = load ptr, ptr %i.cq, align 8, !nonnull !28, !noundef !28 ; 2 uses
  store ptr %i.i, ptr %i.cr, align 8
  %i.cs = trunc nuw nsw i64 %.sroa.0.06.i23 to i16
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 2252
  store i16 %i.cs, ptr %i.ct, align 4
  %i.cu = or disjoint i64 %.sroa.0.06.i23, 2      ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.cp
  %i.cw = load ptr, ptr %i.cv, align 8, !nonnull !28, !noundef !28 ; 2 uses
  store ptr %i.i, ptr %i.cw, align 8
  %i.cx = trunc nuw nsw i64 %i.cp to i16
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 2252
  store i16 %i.cx, ptr %i.cy, align 4
  %i.cz = or disjoint i64 %.sroa.0.06.i23, 3      ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.cu
  %i.db = load ptr, ptr %i.da, align 8, !nonnull !28, !noundef !28 ; 2 uses
  store ptr %i.i, ptr %i.db, align 8
  %i.dc = trunc nuw nsw i64 %i.cu to i16
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 2252
  store i16 %i.dc, ptr %i.dd, align 4
  %i.de = add nuw nsw i64 %.sroa.0.06.i23, 4      ; 2 uses
  %i.df = icmp samesign ult i64 %.sroa.0.06.i23, 12
  tail call void @llvm.assume(i1 %i.df)
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.cz
  %i.dh = load ptr, ptr %i.dg, align 8, !nonnull !28, !noundef !28 ; 2 uses
  store ptr %i.i, ptr %i.dh, align 8
  %i.di = trunc nuw nsw i64 %i.cz to i16
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 2252
  store i16 %i.di, ptr %i.dj, align 4
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit25.loopexit.unr-lcssa, label %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs1_CscRggLTdVSaO_11typed_arenaINtB5_9ChunkListINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapNtNtBV_6string6StringB1L_EE7reserveCskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %0, i64 noundef %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = icmp ult i64 %1, 2
  %i.c = add i64 %1, -1
  %i.d = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.c, i1 true)
  %i.e = lshr i64 -1, %i.d
  %.sroa.05.0 = select i1 %i.b, i64 0, i64 %i.e   ; 2 uses
  %i.f = icmp eq i64 %.sroa.05.0, -1
  br i1 %i.f, label %2, label %bb.b, !prof !44

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %0, align 8, !range !43, !noundef !28
  %i.h = shl nuw i64 %i.g, 1
  %i.i = add nuw i64 %.sroa.05.0, 1
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %i.i, i64 %i.h) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = mul i64 %..i, 24                         ; 2 uses
  %or.cond.i = icmp ugt i64 %..i, 384307168202282325
  br i1 %or.cond.i, label %3, label %bb.c, !prof !42

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !62385
  %i.k = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !62385 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %3, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  store i64 %..i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62386)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !62386, !noalias !62387, !noundef !28 ; 3 uses
  %i.p = load i64, ptr %i.m, align 8, !range !43, !alias.scope !62386, !noalias !62387, !noundef !28
  %i.q = icmp eq i64 %i.o, %i.p
  br i1 %i.q, label %bb.d, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_INtNtNtNtB7_11collections5btree3map8BTreeMapNtNtB7_6string6StringB1r_EEE8push_mutCskXtk6F4WjxZ_4just.exit

2:                                                ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @161, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1043) #75
  unreachable

3:                                                ; preds = %bb.b, %bb.c
  %.sroa.4.0.ph = phi i64 [ 8, %bb.c ], [ 0, %bb.b ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %i.j) #71
  unreachable

bb.d:                                             ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtB7_6string6StringB1K_EEE8grow_oneCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_INtNtNtNtB7_11collections5btree3map8BTreeMapNtNtB7_6string6StringB1r_EEE8push_mutCskXtk6F4WjxZ_4just.exit unwind label %bb.e, !noalias !62387

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtNtNtBG_11collections5btree3map8BTreeMapNtNtBG_6string6StringB1Q_EEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.a) #72
          to label %bb.g unwind label %bb.f, !noalias !62386

bb.f:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #73, !noalias !62388
  unreachable

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.r

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_INtNtNtNtB7_11collections5btree3map8BTreeMapNtNtB7_6string6StringB1r_EEE8push_mutCskXtk6F4WjxZ_4just.exit: ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !62386, !noalias !62387, !nonnull !28, !noundef !28
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !62386
  %i.w = add i64 %i.o, 1
  store i64 %i.w, ptr %i.n, align 8, !alias.scope !62386, !noalias !62387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs1_CscRggLTdVSaO_11typed_arenaINtB5_9ChunkListNtNtCs4wP2HXfJTCR_5alloc6string6StringE7reserveCskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %0, i64 noundef %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = icmp ult i64 %1, 2
  %i.c = add i64 %1, -1
  %i.d = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.c, i1 true)
  %i.e = lshr i64 -1, %i.d
  %.sroa.05.0 = select i1 %i.b, i64 0, i64 %i.e   ; 2 uses
  %i.f = icmp eq i64 %.sroa.05.0, -1
  br i1 %i.f, label %2, label %bb.b, !prof !44

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %0, align 8, !range !43, !noundef !28
  %i.h = shl nuw i64 %i.g, 1
  %i.i = add nuw i64 %.sroa.05.0, 1
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %i.i, i64 %i.h) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = mul i64 %..i, 24                         ; 2 uses
  %or.cond.i = icmp ugt i64 %..i, 384307168202282325
  br i1 %or.cond.i, label %3, label %bb.c, !prof !42

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !62394
  %i.k = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !62394 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %3, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  store i64 %..i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62395)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !62395, !noalias !62396, !noundef !28 ; 3 uses
  %i.p = load i64, ptr %i.m, align 8, !range !43, !alias.scope !62395, !noalias !62396, !noundef !28
  %i.q = icmp eq i64 %i.o, %i.p
  br i1 %i.q, label %bb.d, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtB7_6string6StringEE8push_mutCskXtk6F4WjxZ_4just.exit

2:                                                ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @161, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1043) #75
  unreachable

3:                                                ; preds = %bb.b, %bb.c
  %.sroa.4.0.ph = phi i64 [ 8, %bb.c ], [ 0, %bb.b ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %i.j) #71
  unreachable

bb.d:                                             ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtB7_6string6StringEE8grow_oneCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtB7_6string6StringEE8push_mutCskXtk6F4WjxZ_4just.exit unwind label %bb.e, !noalias !62396

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.a) #72, !noalias !62395
  resume { ptr, i32 } %i.r

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtB7_6string6StringEE8push_mutCskXtk6F4WjxZ_4just.exit: ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !62395, !noalias !62396, !nonnull !28, !noundef !28
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !62395
  %i.v = add i64 %i.o, 1
  store i64 %i.v, ptr %i.n, align 8, !alias.scope !62395, !noalias !62396
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs1_CscRggLTdVSaO_11typed_arenaINtB5_9ChunkListNtNtCsaKJjC64KgbL_3std4path7PathBufE7reserveCskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %0, i64 noundef %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = icmp ult i64 %1, 2
  %i.c = add i64 %1, -1
  %i.d = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.c, i1 true)
  %i.e = lshr i64 -1, %i.d
  %.sroa.05.0 = select i1 %i.b, i64 0, i64 %i.e   ; 2 uses
  %i.f = icmp eq i64 %.sroa.05.0, -1
  br i1 %i.f, label %2, label %bb.b, !prof !44

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %0, align 8, !range !43, !noundef !28
  %i.h = shl nuw i64 %i.g, 1
  %i.i = add nuw i64 %.sroa.05.0, 1
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %i.i, i64 %i.h) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = mul i64 %..i, 24                         ; 2 uses
  %or.cond.i = icmp ugt i64 %..i, 384307168202282325
  br i1 %or.cond.i, label %3, label %bb.c, !prof !42

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !62402
  %i.k = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !62402 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %3, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  store i64 %..i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62403)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !62403, !noalias !62404, !noundef !28 ; 3 uses
  %i.p = load i64, ptr %i.m, align 8, !range !43, !alias.scope !62403, !noalias !62404, !noundef !28
  %i.q = icmp eq i64 %i.o, %i.p
  br i1 %i.q, label %bb.d, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtCsaKJjC64KgbL_3std4path7PathBufEE8push_mutCskXtk6F4WjxZ_4just.exit

2:                                                ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @161, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1043) #75
  unreachable

3:                                                ; preds = %bb.b, %bb.c
  %.sroa.4.0.ph = phi i64 [ 8, %bb.c ], [ 0, %bb.b ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %i.j) #71
  unreachable

bb.d:                                             ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtCsaKJjC64KgbL_3std4path7PathBufEE8grow_oneCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtCsaKJjC64KgbL_3std4path7PathBufEE8push_mutCskXtk6F4WjxZ_4just.exit unwind label %bb.e, !noalias !62404

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.a) #72, !noalias !62403
  resume { ptr, i32 } %i.r

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtCsaKJjC64KgbL_3std4path7PathBufEE8push_mutCskXtk6F4WjxZ_4just.exit: ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !62403, !noalias !62404, !nonnull !28, !noundef !28
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !62403
  %i.v = add i64 %i.o, 1
  store i64 %i.v, ptr %i.n, align 8, !alias.scope !62403, !noalias !62404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs1_CscRggLTdVSaO_11typed_arenaINtB5_9ChunkListNtNtCskXtk6F4WjxZ_4just5scope5ScopeE7reserveBQ_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %0, i64 noundef %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = icmp ult i64 %1, 2
  %i.c = add i64 %1, -1
  %i.d = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.c, i1 true)
  %i.e = lshr i64 -1, %i.d
  %.sroa.05.0 = select i1 %i.b, i64 0, i64 %i.e   ; 2 uses
  %i.f = icmp eq i64 %.sroa.05.0, -1
  br i1 %i.f, label %bb.d, label %bb.b, !prof !44

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %0, align 8, !range !43, !noundef !28
  %i.h = shl nuw i64 %i.g, 1
  %i.i = add nuw i64 %.sroa.05.0, 1
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %i.i, i64 %i.h) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = shl i64 %..i, 5                          ; 3 uses
  %i.k = icmp ugt i64 %..i, 576460752303423487
  %.not.i = icmp ugt i64 %i.j, 9223372036854775800
  %or.cond.i = or i1 %i.k, %.not.i
  br i1 %or.cond.i, label %bb.e, label %bb.c, !prof !42

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !62410
  %i.l = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !62410 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @161, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1043) #75
  unreachable

bb.e:                                             ; preds = %bb.b, %bb.c
  %.sroa.4.0.ph = phi i64 [ 8, %bb.c ], [ 0, %bb.b ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %i.j) #71
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  store i64 %..i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62411)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !62411, !noalias !62412, !noundef !28 ; 3 uses
  %i.q = load i64, ptr %i.n, align 8, !range !43, !alias.scope !62411, !noalias !62412, !noundef !28
  %i.r = icmp eq i64 %i.p, %i.q
  br i1 %i.r, label %bb.f, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtCskXtk6F4WjxZ_4just5scope5ScopeEE8push_mutBN_.exit

bb.f:                                             ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtCskXtk6F4WjxZ_4just5scope5ScopeEE8grow_oneB16_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtCskXtk6F4WjxZ_4just5scope5ScopeEE8push_mutBN_.exit unwind label %bb.g, !noalias !62412

bb.g:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just5scope5ScopeEEB1c_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.a) #72
          to label %bb.i unwind label %bb.h, !noalias !62411

bb.h:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #73, !noalias !62413
  unreachable

bb.i:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.s

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtCskXtk6F4WjxZ_4just5scope5ScopeEE8push_mutBN_.exit: ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit, %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !62411, !noalias !62412, !nonnull !28, !noundef !28
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %i.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !62411
  %i.x = add i64 %i.p, 1
  store i64 %i.x, ptr %i.o, align 8, !alias.scope !62411, !noalias !62412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB5_7HashMapNtNtCskXtk6F4WjxZ_4just6number6NumberINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3set7HashSetBN_ENtNtNtB1x_4hash6random11RandomStateE6insertBR_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4 = alloca [52 x i8], align 4            ; 4 uses
  %i.a = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %2, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.val = load i64, ptr %i.b, align 8, !noundef !28
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val6 = load i64, ptr %i.c, align 8, !noundef !28
  %i.d = call fastcc noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRNtNtCskXtk6F4WjxZ_4just6number6NumberEB1J_(i64 %.val, i64 %.val6, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a) ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !62428, !noalias !62429, !noundef !28
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTNtNtCskXtk6F4WjxZ_4just6number6NumberINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3set7HashSetBQ_EEE7reserveNCINvNtB8_3map11make_hasherBQ_B1r_NtNtNtB1A_4hash6random11RandomStateE0EBU_.exit.i, !prof !44

bb.b:                                             ; preds = %bb.a
  %i.h = invoke { i64, i64 } @_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTNtNtCskXtk6F4WjxZ_4just6number6NumberINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3set7HashSetBQ_EEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1r_NtNtNtB1A_4hash6random11RandomStateE0EBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i1 noundef zeroext true) #74
          to label %_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTNtNtCskXtk6F4WjxZ_4just6number6NumberINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3set7HashSetBQ_EEE7reserveNCINvNtB8_3map11make_hasherBQ_B1r_NtNtNtB1A_4hash6random11RandomStateE0EBU_.exit.i unwind label %bb.l ; 0 uses

_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTNtNtCskXtk6F4WjxZ_4just6number6NumberINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3set7HashSetBQ_EEE7reserveNCINvNtB8_3map11make_hasherBQ_B1r_NtNtNtB1A_4hash6random11RandomStateE0EBU_.exit.i: ; preds = %bb.b, %bb.a
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !62430, !noalias !62431, !nonnull !28, !noundef !28 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5.i = load i64, ptr %i.i, align 8, !alias.scope !62430, !noalias !62431, !noundef !28 ; 4 uses
  %i.j = lshr i64 %i.d, 57
  %i.k = trunc nuw nsw i64 %i.j to i8             ; 3 uses
  %i.l = insertelement <16 x i8> poison, i8 %i.k, i64 0
  %i.m = shufflevector <16 x i8> %i.l, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTNtNtCskXtk6F4WjxZ_4just6number6NumberINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3set7HashSetBQ_EEE7reserveNCINvNtB8_3map11make_hasherBQ_B1r_NtNtNtB1A_4hash6random11RandomStateE0EBU_.exit.i
  %.pn.i.i = phi i64 [ %i.d, %_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTNtNtCskXtk6F4WjxZ_4just6number6NumberINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3set7HashSetBQ_EEE7reserveNCINvNtB8_3map11make_hasherBQ_B1r_NtNtNtB1A_4hash6random11RandomStateE0EBU_.exit.i ], [ %i.al, %bb.f ]
  %.sroa.4.0.i.i = phi i64 [ undef, %_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTNtNtCskXtk6F4WjxZ_4just6number6NumberINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3set7HashSetBQ_EEE7reserveNCINvNtB8_3map11make_hasherBQ_B1r_NtNtNtB1A_4hash6random11RandomStateE0EBU_.exit.i ], [ %.sroa.4.120.i.i, %bb.f ]
  %.sroa.04.0.i.i = phi i64 [ 0, %_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTNtNtCskXtk6F4WjxZ_4just6number6NumberINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3set7HashSetBQ_EEE7reserveNCINvNtB8_3map11make_hasherBQ_B1r_NtNtNtB1A_4hash6random11RandomStateE0EBU_.exit.i ], [ %.sroa.04.122.i.i, %bb.f ]
  %i.n = phi i64 [ 0, %_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTNtNtCskXtk6F4WjxZ_4just6number6NumberINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3set7HashSetBQ_EEE7reserveNCINvNtB8_3map11make_hasherBQ_B1r_NtNtNtB1A_4hash6random11RandomStateE0EBU_.exit.i ], [ %i.ak, %bb.f ]
  %.sroa.0.017.i.i = and i64 %.pn.i.i, %.val5.i   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.017.i.i
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.o, align 1, !noalias !62432 ; 3 uses
  %i.p = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %i.m
  %i.q = bitcast <16 x i1> %i.p to i16            ; 2 uses
  %.not28.i.i = icmp eq i16 %i.q, 0
  br i1 %.not28.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.01.029.i.i = phi i16 [ %i.aa, %bb.d ], [ %i.q, %bb.c ] ; 3 uses
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.029.i.i, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = add i64 %.sroa.0.017.i.i, %i.s
  %i.u = and i64 %i.t, %.val5.i
  %i.v = sub nsw i64 0, %i.u
  %i.w = getelementptr inbounds [56 x i8], ptr %.val.i, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -56
  %.val2.i.i = load i32, ptr %i.x, align 4, !noalias !62433, !noundef !28
  %i.y = icmp eq i32 %2, %.val2.i.i
  br i1 %i.y, label %bb.i, label %bb.d, !prof !29

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %.not12.i.i = icmp eq i64 %.sroa.04.0.i.i, 1
  br i1 %.not12.i.i, label %.thread.i.i, label %bb.e, !prof !44

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.z = add i16 %.sroa.01.029.i.i, -1
  %i.aa = and i16 %i.z, %.sroa.01.029.i.i         ; 2 uses
  %.not.i.i = icmp eq i16 %i.aa, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ab = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i, zeroinitializer
  %i.ac = bitcast <16 x i1> %i.ab to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ac, 0
  br i1 %.not.i.i.i, label %bb.f, label %.thread24.i.i, !prof !44

.thread24.i.i:                                    ; preds = %bb.e
  %i.ad = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ac, i1 true)
  %i.ae = zext nneg i16 %i.ad to i64
  %i.af = add i64 %.sroa.0.017.i.i, %i.ae
  %i.ag = and i64 %i.af, %.val5.i
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread24.i.i, %._crit_edge.i.i
  %.sroa.4.121.i.i = phi i64 [ %i.ag, %.thread24.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ah = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1)
  %i.ai = bitcast <16 x i1> %i.ah to i16
  %i.aj = icmp eq i16 %i.ai, 0
  br i1 %i.aj, label %bb.f, label %bb.g, !prof !44

bb.f:                                             ; preds = %.thread.i.i, %bb.e
  %.sroa.04.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.e ]
  %.sroa.4.120.i.i = phi i64 [ %.sroa.4.121.i.i, %.thread.i.i ], [ undef, %bb.e ]
  %i.ak = add i64 %i.n, 16                        ; 2 uses
  %i.al = add i64 %i.ak, %.sroa.0.017.i.i
  br label %bb.c

bb.g:                                             ; preds = %.thread.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.121.i.i
end_hunk_3
begin_hunk_4_@_RNvNtCskXtk6F4WjxZ_4just11load_dotenv14load_from_file:bb.a
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit103.backedge

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit103.backedge: ; preds = %bb.cr, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit103

bb.cs:                                            ; preds = %_RINvNtCsaKJjC64KgbL_3std3env6var_osRNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.cn

bb.ct:                                            ; preds = %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.experimental.noalias.scope.decl(metadata !75561)
  %i.kt = load i64, ptr %i.l, align 8, !range !37, !alias.scope !75561, !noundef !28 ; 3 uses
  %i.ku = icmp eq i64 %i.kt, -1
  br i1 %i.ku, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.experimental.noalias.scope.decl(metadata !75562)
  call void @llvm.experimental.noalias.scope.decl(metadata !75563)
  %i.kv = icmp eq i64 %i.kt, 0
  br i1 %i.kv, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %.val1.i.i.i = load ptr, ptr %i.bo, align 8, !alias.scope !75564, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %i.kt, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !75564
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit: ; preds = %bb.cv, %bb.cu, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit103.backedge

bb.cw:                                            ; preds = %bb.cm
  %i.kw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kx = icmp eq ptr %.sroa.14.0.copyload, null
  br i1 %i.kx, label %bb.cz, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.km, i64 noundef %i.kk, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !75565
  br label %bb.cz

bb.cy:                                            ; preds = %bb.de, %.body
  %i.ky = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #73
  unreachable

bb.cz:                                            ; preds = %bb.cw, %bb.cx
  %i.kz = icmp eq i64 %i.jl, 0
  br i1 %i.kz, label %.body91, label %bb.da

bb.da:                                            ; preds = %bb.cz
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.kl, i64 noundef %i.jl, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !75566
  br label %.body91

bb.db:                                            ; preds = %bb.ci, %bb.bx
  %i.la = phi i64 [ %i.ki, %bb.ci ], [ 1, %bb.bx ]
  %i.lb = inttoptr i64 %.sroa.103.1.ph75 to ptr
  store i64 33, ptr %0, align 8
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %.sroa.463.0..sroa_idx, align 8
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.la, ptr %.sroa.564.0..sroa_idx, align 8
  %.sroa.564.sroa.4.0..sroa.564.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %.sroa.564.sroa.4.0..sroa.564.0..sroa_idx.sroa_idx, align 8
  %.sroa.564.sroa.5.0..sroa.564.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.lb, ptr %.sroa.564.sroa.5.0..sroa.564.0..sroa_idx.sroa_idx, align 8
  %.sroa.564.sroa.6.0..sroa.564.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.13.1.ph74, ptr %.sroa.564.sroa.6.0..sroa.564.0..sroa_idx.sroa_idx, align 8
  %.sroa.665.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.js, ptr %.sroa.665.0..sroa_idx, align 8
  %.sroa.766.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.15.1.ph72, ptr %.sroa.766.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !75567)
  call void @llvm.experimental.noalias.scope.decl(metadata !75568)
  call void @llvm.experimental.noalias.scope.decl(metadata !75569)
  %.val3.i.i.i110 = load i64, ptr %i.bg, align 8, !alias.scope !75570, !noundef !28 ; 2 uses
  %i.lc = icmp eq i64 %.val3.i.i.i110, 0
  br i1 %i.lc, label %bb.dc, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i111

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i111: ; preds = %bb.db
  %.val2.i.i.i112 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !75570, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i112, i64 noundef %.val3.i.i.i110, i64 noundef 1) #70, !noalias !75570
  br label %bb.dc

bb.dc:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i111, %bb.db
  %.val.i.i.i113 = load i32, ptr %i.bf, align 8, !range !74, !alias.scope !75570, !noundef !28
  %i.ld = call noundef i32 @close(i32 noundef %.val.i.i.i113) #70, !noalias !75570 ; 0 uses
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtB4_6option6OptionB1w_EEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(96) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringB1A_EECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.bw

bb.dd:                                            ; preds = %bb.de, %.body
  %.pn78 = phi { ptr, i32 } [ %i.le, %bb.de ], [ %.pn75, %.body ]
  resume { ptr, i32 } %.pn78

bb.de:                                            ; preds = %.noexc, %bb.e, %bb.dl
  %i.le = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p) #72
          to label %bb.dd unwind label %bb.cy

_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit: ; preds = %bb.h, %bb.g, %bb.f, %.noexc
  %.sroa.0.0.i = phi i8 [ %i.al, %bb.h ], [ %switch.idx.cast.i.i.i, %bb.f ], [ %i.aj, %bb.g ], [ %i.ae, %.noexc ]
  %i.lf = icmp eq i8 %.sroa.0.0.i, 0
  br i1 %i.lf, label %bb.di, label %bb.df

bb.df:                                            ; preds = %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit
  %.not.i = icmp slt i64 %2, 0
  br i1 %.not.i, label %bb.dl, label %bb.dg, !prof !42

bb.dg:                                            ; preds = %bb.df
  %i.lg = icmp eq i64 %2, 0
  br i1 %i.lg, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit.thread107, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !75571
  %i.lh = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !75571 ; 3 uses
  %i.li = icmp eq ptr %i.lh, null
  br i1 %i.li, label %bb.dl, label %bb.dm

bb.di:                                            ; preds = %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.lj, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !75572
  switch i64 %i.y, label %default.unreachable [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskXtk6F4WjxZ_4just.exit
    i64 3, label %bb.dj
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskXtk6F4WjxZ_4just.exit
    i64 1, label %bb.dk
  ], !prof !69

bb.dj:                                            ; preds = %bb.di
  %i.lk = icmp ult ptr %i.w, inttoptr (i64 188978561024 to ptr)
  %i.ll = and i64 %i.x, 1095216660480
  %i.lm = icmp ne i64 %i.ll, 1095216660480
  call void @llvm.assume(i1 %i.lk)
  call void @llvm.assume(i1 %i.lm)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskXtk6F4WjxZ_4just.exit

bb.dk:                                            ; preds = %bb.di
  %i.ln = getelementptr i8, ptr %i.w, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ln) ]
  %i.lo = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.ln, ptr %i.lo, align 8, !alias.scope !75573, !noalias !75572
  store i8 3, ptr %i.b, align 8, !alias.scope !75573, !noalias !75572
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.lo), !noalias !75572
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskXtk6F4WjxZ_4just.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskXtk6F4WjxZ_4just.exit: ; preds = %bb.di, %bb.di, %bb.dj, %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !75572
  br label %bb.dn

bb.dl:                                            ; preds = %bb.df, %bb.dh
  %.sroa.419.0.ph = phi i64 [ 1, %bb.dh ], [ 0, %bb.df ]
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.419.0.ph, i64 %2) #71
          to label %bb.do unwind label %bb.de

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit.thread107: ; preds = %bb.dg, %bb.dm
  %i.lp = phi ptr [ %i.lh, %bb.dm ], [ inttoptr (i64 1 to ptr), %bb.dg ]
  store i64 46, ptr %0, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.44.sroa.4.0..sroa.44.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.lp, ptr %.sroa.44.sroa.4.0..sroa.44.0..sroa_idx.sroa_idx, align 8
  %.sroa.44.sroa.5.0..sroa.44.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %.sroa.44.sroa.5.0..sroa.44.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.w, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.dn

bb.dm:                                            ; preds = %bb.dh
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.lh, ptr nonnull align 1 %1, i64 %2, i1 false)
  br label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit.thread107

bb.dn:                                            ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit.thread107, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskXtk6F4WjxZ_4just.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.bw

bb.do:                                            ; preds = %bb.dl
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCskXtk6F4WjxZ_4just5error10format_cmd(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree readonly captures(none) %.8.val, i64 %.16.val) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtNtNtBb_5slice4iter4IterB1J_EENCNvNtCskXtk6F4WjxZ_4just5error10format_cmd0ENtNtNtB9_6traits8iterator8Iterator9size_hintB34_.exit.i:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !75607
  %i.f = add nuw nsw i64 %.16.val, 1              ; 2 uses
  %i.g = mul i64 %i.f, 24                         ; 2 uses
  %or.cond.i.i.i = icmp ugt i64 %.16.val, 384307168202282324
  br i1 %or.cond.i.i.i, label %bb.b, label %bb.a, !prof !118

bb.a:                                             ; preds = %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtNtNtBb_5slice4iter4IterB1J_EENCNvNtCskXtk6F4WjxZ_4just5error10format_cmd0ENtNtNtB9_6traits8iterator8Iterator9size_hintB34_.exit.i
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !75608
  %i.h = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.g, i64 noundef range(i64 1, 9) 8) #70, !noalias !75608 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.b, label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtNtNtBb_5slice4iter4IterB1J_EENCNvNtCskXtk6F4WjxZ_4just5error10format_cmd0ENtNtNtB9_6traits8iterator8Iterator9size_hintB34_.exit.i.i.i

bb.b:                                             ; preds = %bb.a, %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtNtNtBb_5slice4iter4IterB1J_EENCNvNtCskXtk6F4WjxZ_4just5error10format_cmd0ENtNtNtB9_6traits8iterator8Iterator9size_hintB34_.exit.i
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.a ], [ 0, %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtNtNtBb_5slice4iter4IterB1J_EENCNvNtCskXtk6F4WjxZ_4just5error10format_cmd0ENtNtNtB9_6traits8iterator8Iterator9size_hintB34_.exit.i ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.g) #71, !noalias !75607
  unreachable

_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtNtNtBb_5slice4iter4IterB1J_EENCNvNtCskXtk6F4WjxZ_4just5error10format_cmd0ENtNtNtB9_6traits8iterator8Iterator9size_hintB34_.exit.i.i.i: ; preds = %bb.a
  store i64 %i.f, ptr %i.c, align 8, !noalias !75607
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.h, ptr %i.j, align 8, !noalias !75607
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.k, align 8, !noalias !75607
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !75609
  store ptr %i.k, ptr %i.b, align 8, !noalias !75610
  %.sroa.46.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 0, ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !noalias !75610
  %.sroa.57.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.h, ptr %.sroa.57.0..sroa_idx.i.i.i, align 8, !noalias !75610
  %.sink.i.sroa.gep.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3.us.i.i.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !75611, !noalias !75612, !nonnull !28, !noundef !28
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val4.us.i.i.i.i.i.i.i = load i64, ptr %i.m, align 8, !alias.scope !75611, !noalias !75612, !noundef !28
  invoke fastcc void @_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtNtCs4wP2HXfJTCR_5alloc6string6StringuNCNvNtCskXtk6F4WjxZ_4just5error10format_cmd0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1D_NCINvMsk_NtB1H_3vecINtB44_3VecB1D_E14extend_trustedINtB4_3MapINtNtB6_5chain5ChainINtNtNtB8_7sources4once4OnceBU_EINtNtNtBa_5slice4iter4IterBV_EEB2g_EE0E0E0B2m_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, ptr readonly %.val3.us.i.i.i.i.i.i.i, i64 %.val4.us.i.i.i.i.i.i.i) #76
          to label %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter7sources4once4OnceRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNtNtBa_8adapters3map8map_foldBS_NtNtCs4wP2HXfJTCR_5alloc6string6StringuNCNvNtCskXtk6F4WjxZ_4just5error10format_cmd0NCINvNvB1C_8for_each4callB2S_NCINvMsk_NtB2W_3vecINtB4P_3VecB2S_E14extend_trustedINtB2m_3MapINtNtB2o_5chain5ChainB3_INtNtNtBc_5slice4iter4IterBT_EEB3v_EE0E0E0EB3B_.exit.i.i.i.i.i.i unwind label %bb.d, !noalias !75613

.body.i.i.i.i.i.i:                                ; preds = %.preheader
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter7sources4once4OnceRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNtNtBa_8adapters3map8map_foldBS_NtNtCs4wP2HXfJTCR_5alloc6string6StringuNCNvNtCskXtk6F4WjxZ_4just5error10format_cmd0NCINvNvB1C_8for_each4callB2S_NCINvMsk_NtB2W_3vecINtB4P_3VecB2S_E14extend_trustedINtB2m_3MapINtNtB2o_5chain5ChainB3_INtNtNtBc_5slice4iter4IterBT_EEB3v_EE0E0E0EB3B_.exit.i.i.i.i.i.i: ; preds = %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtNtNtBb_5slice4iter4IterB1J_EENCNvNtCskXtk6F4WjxZ_4just5error10format_cmd0ENtNtNtB9_6traits8iterator8Iterator9size_hintB34_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !75614
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !75615
  call void @llvm.experimental.noalias.scope.decl(metadata !75616)
  %i.o = icmp eq i64 %.16.val, 0
  br i1 %i.o, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB1Y_5chain5ChainINtNtNtB20_7sources4once4OnceRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtNtNtB22_5slice4iter4IterB3w_EENCNvNtCskXtk6F4WjxZ_4just5error10format_cmd0EE9from_iterB4S_.exit, label %.preheader

.preheader:                                       ; preds = %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter7sources4once4OnceRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNtNtBa_8adapters3map8map_foldBS_NtNtCs4wP2HXfJTCR_5alloc6string6StringuNCNvNtCskXtk6F4WjxZ_4just5error10format_cmd0NCINvNvB1C_8for_each4callB2S_NCINvMsk_NtB2W_3vecINtB4P_3VecB2S_E14extend_trustedINtB2m_3MapINtNtB2o_5chain5ChainB3_INtNtNtBc_5slice4iter4IterBT_EEB3v_EE0E0E0EB3B_.exit.i.i.i.i.i.i, %bb.c
  %.sroa.01.0.i.i.i.i.i.i.i = phi i64 [ %i.s, %bb.c ], [ 0, %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter7sources4once4OnceRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNtNtBa_8adapters3map8map_foldBS_NtNtCs4wP2HXfJTCR_5alloc6string6StringuNCNvNtCskXtk6F4WjxZ_4just5error10format_cmd0NCINvNvB1C_8for_each4callB2S_NCINvMsk_NtB2W_3vecINtB4P_3VecB2S_E14extend_trustedINtB2m_3MapINtNtB2o_5chain5ChainB3_INtNtNtBc_5slice4iter4IterBT_EEB3v_EE0E0E0EB3B_.exit.i.i.i.i.i.i ] ; 2 uses
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %.8.val, i64 %.sroa.01.0.i.i.i.i.i.i.i ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 8
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.q, align 8, !noalias !75617, !nonnull !28, !noundef !28
  %i.r = getelementptr i8, ptr %i.p, i64 16
  %.val10.i.i.i.i.i.i.i = load i64, ptr %i.r, align 8, !noalias !75617, !noundef !28
  invoke fastcc void @_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtNtCs4wP2HXfJTCR_5alloc6string6StringuNCNvNtCskXtk6F4WjxZ_4just5error10format_cmd0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1D_NCINvMsk_NtB1H_3vecINtB44_3VecB1D_E14extend_trustedINtB4_3MapINtNtB6_5chain5ChainINtNtNtB8_7sources4once4OnceBU_EINtNtNtBa_5slice4iter4IterBV_EEB2g_EE0E0E0B2m_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr %.val.i.i.i.i.i.i.i, i64 %.val10.i.i.i.i.i.i.i)
          to label %bb.c unwind label %.body.i.i.i.i.i.i, !noalias !75618

bb.c:                                             ; preds = %.preheader
  %i.s = add nuw nsw i64 %.sroa.01.0.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.t = icmp eq i64 %i.s, %.16.val
  br i1 %i.t, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB1Y_5chain5ChainINtNtNtB20_7sources4once4OnceRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtNtNtB22_5slice4iter4IterB3w_EENCNvNtCskXtk6F4WjxZ_4just5error10format_cmd0EE9from_iterB4S_.exit, label %.preheader

.body.i:                                          ; preds = %bb.d, %.body.i.i.i.i.i.i
  %.sink.i.sroa.phi.i.i.i.i.i = phi ptr [ %.sink.i.sroa.gep.i.i.i.i.i, %.body.i.i.i.i.i.i ], [ %.sroa.46.0..sroa_idx.i.i.i, %bb.d ]
  %.sink.i.i.i.i.i.i = phi ptr [ %i.a, %.body.i.i.i.i.i.i ], [ %i.b, %bb.d ]
  %eh.lpad-body9.i.i.i.i.i.i = phi { ptr, i32 } [ %i.n, %.body.i.i.i.i.i.i ], [ %i.u, %bb.d ]
  %.val11.i.i.i.i.i.i.i = load ptr, ptr %.sink.i.i.i.i.i.i, align 8, !noalias !75615, !nonnull !28, !align !35, !noundef !28
  %.val12.i.i.i.i.i.i.i = load i64, ptr %.sink.i.sroa.phi.i.i.i.i.i, align 8, !noalias !75615, !noundef !28
  store i64 %.val12.i.i.i.i.i.i.i, ptr %.val11.i.i.i.i.i.i.i, align 8, !noalias !75618
  br label %common.resume

bb.d:                                             ; preds = %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtNtNtBb_5slice4iter4IterB1J_EENCNvNtCskXtk6F4WjxZ_4just5error10format_cmd0ENtNtNtB9_6traits8iterator8Iterator9size_hintB34_.exit.i.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

common.resume:                                    ; preds = %bb.e, %.body.i
  %.sink = phi ptr [ %i.e, %bb.e ], [ %i.c, %.body.i ]
  %common.resume.op = phi { ptr, i32 } [ %i.z, %bb.e ], [ %eh.lpad-body9.i.i.i.i.i.i, %.body.i ]
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sink) #72
  resume { ptr, i32 } %common.resume.op

_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB1Y_5chain5ChainINtNtNtB20_7sources4once4OnceRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtNtNtB22_5slice4iter4IterB3w_EENCNvNtCskXtk6F4WjxZ_4just5error10format_cmd0EE9from_iterB4S_.exit: ; preds = %bb.c, %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter7sources4once4OnceRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNtNtBa_8adapters3map8map_foldBS_NtNtCs4wP2HXfJTCR_5alloc6string6StringuNCNvNtCskXtk6F4WjxZ_4just5error10format_cmd0NCINvNvB1C_8for_each4callB2S_NCINvMsk_NtB2W_3vecINtB4P_3VecB2S_E14extend_trustedINtB2m_3MapINtNtB2o_5chain5ChainB3_INtNtNtBc_5slice4iter4IterBT_EEB3v_EE0E0E0EB3B_.exit.i.i.i.i.i.i
  %.val13.i.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !75616, !noalias !75614, !nonnull !28, !align !35, !noundef !28
  %.val14.i.i.i.i.i.i.i = load i64, ptr %.sink.i.sroa.gep.i.i.i.i.i, align 8, !alias.scope !75616, !noalias !75614, !noundef !28
  store i64 %.val14.i.i.i.i.i.i.i, ptr %.val13.i.i.i.i.i.i.i, align 8, !noalias !75617
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !75614
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !75609
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !75619
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !75607
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !28, !noundef !28 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.y = load i64, ptr %i.x, align 8, !noundef !28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke fastcc void @_RINvNtCs4wP2HXfJTCR_5alloc3str17join_generic_copyehNtNtB4_6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.w, i64 noundef %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @870, i64 noundef 1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB1Y_5chain5ChainINtNtNtB20_7sources4once4OnceRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtNtNtB22_5slice4iter4IterB3w_EENCNvNtCskXtk6F4WjxZ_4just5error10format_cmd0EE9from_iterB4S_.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.f:                                             ; preds = %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB1Y_5chain5ChainINtNtNtB20_7sources4once4OnceRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtNtNtB22_5slice4iter4IterB3w_EENCNvNtCskXtk6F4WjxZ_4just5error10format_cmd0EE9from_iterB4S_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !75620)
  call void @llvm.experimental.noalias.scope.decl(metadata !75621)
  %i.aa = icmp eq i64 %i.y, 0
  br i1 %i.aa, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i
  %.sroa.0.010.i.i.i = phi i64 [ %i.ac, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i ], [ 0, %bb.f ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %.sroa.0.010.i.i.i ; 2 uses
  %i.ac = add nuw nsw i64 %.sroa.0.010.i.i.i, 1   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !75622)
  call void @llvm.experimental.noalias.scope.decl(metadata !75623)
  %.val.i.i.i.i.i = load i64, ptr %i.ab, align 8, !alias.scope !75624, !noalias !75620 ; 2 uses
  %i.ad = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.ad, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.val1.i.i.i.i.i = load ptr, ptr %i.ae, align 8, !alias.scope !75624, !noalias !75620, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !75625
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i
  %i.af = icmp eq i64 %i.ac, %i.y
  br i1 %i.af, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i, label %.lr.ph.i.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i, %bb.f
  %.val2.i = load i64, ptr %i.e, align 8, !alias.scope !75620 ; 2 uses
  %i.ag = icmp eq i64 %.val2.i, 0
  br i1 %i.ag, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just.exit, label %bb.h

bb.h:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i
  %i.ah = mul nuw i64 %.val2.i, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.w, i64 noundef %i.ah, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !75620
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just.exit: ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCskXtk6F4WjxZ_4just5which5which(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr nofree readonly captures(none) %.152.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  %i.i = alloca [56 x i8], align 8                ; 9 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [32 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 8 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [32 x i8], align 8                ; 8 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [32 x i8], align 8                ; 9 uses
  %i.s = alloca [64 x i8], align 8                ; 6 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %1, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %2, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @_RNvMs16_NtCsaKJjC64KgbL_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !75837
  call void @_RNvXsi_NtCsaKJjC64KgbL_3std4pathNtB5_10ComponentsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.s)
  %i.v = load i8, ptr %i.i, align 8, !range !134, !noalias !75837, !noundef !28
  %.not3.i = icmp eq i8 %i.v, -1
  br i1 %.not3.i, label %_RINvYNtNtCsaKJjC64KgbL_3std4path10ComponentsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_BG_5count0ECskXtk6F4WjxZ_4just.exit.thread, label %.lr.ph.i

_RINvYNtNtCsaKJjC64KgbL_3std4path10ComponentsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_BG_5count0ECskXtk6F4WjxZ_4just.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !75837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.f

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.0.04.i = phi i64 [ %i.w, %.lr.ph.i ], [ 0, %bb.a ]
  %i.w = add i64 %.sroa.0.04.i, 1                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !75837
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !75837
  call void @_RNvXsi_NtCsaKJjC64KgbL_3std4pathNtB5_10ComponentsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.s)
  %i.x = load i8, ptr %i.i, align 8, !range !134, !noalias !75837, !noundef !28
  %.not.i = icmp eq i8 %i.x, -1
  br i1 %.not.i, label %_RINvYNtNtCsaKJjC64KgbL_3std4path10ComponentsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_BG_5count0ECskXtk6F4WjxZ_4just.exit, label %.lr.ph.i

_RINvYNtNtCsaKJjC64KgbL_3std4path10ComponentsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_BG_5count0ECskXtk6F4WjxZ_4just.exit: ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !75837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  switch i64 %i.w, label %bb.b [
    i64 0, label %bb.f
    i64 1, label %bb.g
  ]

bb.b:                                             ; preds = %_RINvYNtNtCsaKJjC64KgbL_3std4path10ComponentsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_BG_5count0ECskXtk6F4WjxZ_4just.exit
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70
  %i.y = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #70 ; 6 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.c, label %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit, !prof !26

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #71
  unreachable

_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.b
  %.not.i90 = icmp slt i64 %2, 0
  br i1 %.not.i90, label %bb.ak, label %bb.d, !prof !42

bb.d:                                             ; preds = %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit
  %i.aa = icmp eq i64 %2, 0
  br i1 %i.aa, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit.thread92, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !75838
  %i.ab = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !75838 ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.ak, label %bb.al
end_hunk_4
begin_hunk_5_@_RNvXs5_NtCskXtk6F4WjxZ_4just10expressionNtB5_10ExpressionNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone:bb.a
          cleanup
  store i64 %.sroa.7.022.i, ptr %i.bw, align 8, !noalias !99086
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #72
          to label %common.resume236 unwind label %bb.q, !noalias !99088, !inline_history !98984

_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBO_.exit: ; preds = %.lr.ph.i, %bb.p, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskXtk6F4WjxZ_4just.exit.thread.i
  %i.cf = phi ptr [ %i.bs, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskXtk6F4WjxZ_4just.exit.thread.i ], [ %i.bw, %bb.p ], [ %i.bw, %.lr.ph.i ]
  store i64 %i.bo, ptr %i.cf, align 8, !noalias !99086
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !99086
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ch, ptr noundef nonnull align 8 dereferenceable(72) %i.bk, i64 72, i1 false)
  store i64 -9223372036854775805, ptr %0, align 8
  br label %bb.bs

bb.s:                                             ; preds = %bb.a
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99089)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !99089
  %i.cj = tail call noalias noundef align 8 dereferenceable_or_null(128) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !99089 ; 5 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %bb.t, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionE13new_uninit_inBK_.exit87, !prof !44

bb.t:                                             ; preds = %bb.s
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #71, !noalias !99089
  unreachable

_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionE13new_uninit_inBK_.exit87: ; preds = %bb.s
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cm = load ptr, ptr %i.cl, align 8, !alias.scope !99089, !nonnull !28, !noundef !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !99090
  invoke fastcc void @_RNvXs5_NtCskXtk6F4WjxZ_4just10expressionNtB5_10ExpressionNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(128) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.cm) #76
          to label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit21 unwind label %bb.u, !inline_history !98967

bb.u:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionE13new_uninit_inBK_.exit87
  %i.cn = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cj, i64 noundef 128, i64 noundef 8) #70, !noalias !99089
  br label %common.resume236

_RNvXsd_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit21: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionE13new_uninit_inBK_.exit87
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.cj, ptr noundef nonnull align 8 dereferenceable(128) %i.v, i64 128, i1 false), !noalias !99090
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !99090
  store ptr %i.cj, ptr %i.ag, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cp = load i8, ptr %i.co, align 8, !range !104, !noundef !28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99091)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70
  %i.cq = tail call noalias noundef align 8 dereferenceable_or_null(128) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef range(i64 1, -9223372036854775807) 8) #70 ; 4 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %bb.v, label %.noexc23, !prof !44

bb.v:                                             ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit21
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #71
          to label %.noexc90 unwind label %bb.bz

.noexc90:                                         ; preds = %bb.v
  unreachable

.noexc23:                                         ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit21
  %i.cs = load ptr, ptr %i.ci, align 8, !alias.scope !99091, !nonnull !28, !noundef !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !99092
  invoke fastcc void @_RNvXs5_NtCskXtk6F4WjxZ_4just10expressionNtB5_10ExpressionNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(128) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.cs) #76
          to label %bb.ca unwind label %bb.w, !inline_history !98967

bb.w:                                             ; preds = %.noexc23
  %i.ct = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cq, i64 noundef 128, i64 noundef 8) #70, !noalias !99091
  br label %.body24

bb.x:                                             ; preds = %bb.a
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99093)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !99093
  %i.cv = tail call noalias noundef align 8 dereferenceable_or_null(128) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !99093 ; 5 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %bb.y, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionE13new_uninit_inBK_.exit94, !prof !44

bb.y:                                             ; preds = %bb.x
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #71, !noalias !99093
  unreachable

_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionE13new_uninit_inBK_.exit94: ; preds = %bb.x
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !alias.scope !99093, !nonnull !28, !noundef !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !99094
  invoke fastcc void @_RNvXs5_NtCskXtk6F4WjxZ_4just10expressionNtB5_10ExpressionNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(128) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.cy) #76
          to label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit28 unwind label %bb.z, !inline_history !98967

bb.z:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionE13new_uninit_inBK_.exit94
  %i.cz = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cv, i64 noundef 128, i64 noundef 8) #70, !noalias !99093
  br label %common.resume236

_RNvXsd_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit28: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionE13new_uninit_inBK_.exit94
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.cv, ptr noundef nonnull align 8 dereferenceable(128) %i.t, i64 128, i1 false), !noalias !99094
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !99094
  store ptr %i.cv, ptr %i.af, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99095)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70
  %i.db = tail call noalias noundef align 8 dereferenceable_or_null(128) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef range(i64 1, -9223372036854775807) 8) #70 ; 4 uses
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %bb.aa, label %.noexc30, !prof !44

bb.aa:                                            ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit28
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #71
          to label %.noexc97 unwind label %bb.cb

.noexc97:                                         ; preds = %bb.aa
  unreachable

.noexc30:                                         ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit28
  %i.dd = load ptr, ptr %i.cu, align 8, !alias.scope !99095, !nonnull !28, !noundef !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !99096
  invoke fastcc void @_RNvXs5_NtCskXtk6F4WjxZ_4just10expressionNtB5_10ExpressionNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(128) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.dd) #76
          to label %bb.cc unwind label %bb.ab, !inline_history !98967

bb.ab:                                            ; preds = %.noexc30
  %i.de = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.db, i64 noundef 128, i64 noundef 8) #70, !noalias !99095
  br label %.body31

bb.ac:                                            ; preds = %bb.a
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99097)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !99097
  %i.dg = tail call noalias noundef align 8 dereferenceable_or_null(128) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !99097 ; 5 uses
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %bb.ad, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionE13new_uninit_inBK_.exit101, !prof !44

bb.ad:                                            ; preds = %bb.ac
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #71, !noalias !99097
  unreachable

_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionE13new_uninit_inBK_.exit101: ; preds = %bb.ac
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !alias.scope !99097, !nonnull !28, !noundef !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !99098
  invoke fastcc void @_RNvXs5_NtCskXtk6F4WjxZ_4just10expressionNtB5_10ExpressionNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(128) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.dj) #76
          to label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit35 unwind label %bb.ae, !inline_history !98967

bb.ae:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionE13new_uninit_inBK_.exit101
  %i.dk = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dg, i64 noundef 128, i64 noundef 8) #70, !noalias !99097
  br label %common.resume236

_RNvXsd_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit35: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionE13new_uninit_inBK_.exit101
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.dg, ptr noundef nonnull align 8 dereferenceable(128) %i.r, i64 128, i1 false), !noalias !99098
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !99098
  store ptr %i.dg, ptr %i.ae, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99099)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70
  %i.dl = tail call noalias noundef align 8 dereferenceable_or_null(128) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef range(i64 1, -9223372036854775807) 8) #70 ; 5 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %bb.af, label %.noexc37, !prof !44

bb.af:                                            ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit35
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #71
          to label %.noexc104 unwind label %bb.cd

.noexc104:                                        ; preds = %bb.af
  unreachable

.noexc37:                                         ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit35
  %i.dn = load ptr, ptr %i.df, align 8, !alias.scope !99099, !nonnull !28, !noundef !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !99100
  invoke fastcc void @_RNvXs5_NtCskXtk6F4WjxZ_4just10expressionNtB5_10ExpressionNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(128) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.dn) #76
          to label %bb.ce unwind label %bb.ag, !inline_history !98967

bb.ag:                                            ; preds = %.noexc37
  %i.do = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dl, i64 noundef 128, i64 noundef 8) #70, !noalias !99099
  br label %.body38

bb.ah:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @_RNvXs4_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.dq = load <4 x i8>, ptr %i.dp, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload146 = load i64, ptr %i.z, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx148 = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.5.0.copyload149 = load ptr, ptr %.sroa.5.0..sroa_idx148, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx151 = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ds = load i64, ptr %.sroa.6.0..sroa_idx151, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.dv = load ptr, ptr %i.du, align 8, !alias.scope !99101, !noalias !99102, !nonnull !28, !noundef !28 ; 2 uses
  %i.dw = load i64, ptr %i.dt, align 8, !alias.scope !99101, !noalias !99102, !noundef !28 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !99103
  %i.dx = mul i64 %i.dw, 232                      ; 3 uses
  %or.cond.i.i.i = icmp ugt i64 %i.dw, 39755913951960240
  br i1 %or.cond.i.i.i, label %bb.ak, label %bb.ai, !prof !42

bb.ai:                                            ; preds = %bb.ah
  %i.dy = icmp eq i64 %i.dx, 0
  br i1 %i.dy, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskXtk6F4WjxZ_4just.exit.i.thread, label %bb.aj

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskXtk6F4WjxZ_4just.exit.i.thread: ; preds = %bb.ai
  %i.dz = icmp eq i64 %i.dw, 0
  tail call void @llvm.assume(i1 %i.dz)
  store i64 0, ptr %i.p, align 8, !noalias !99103
  %i.ea = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ea, align 8, !noalias !99103
  %i.eb = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtNtB1C_14string_literal13StringLiteralEEENtNtNtB8_6traits8iterator8Iterator4nextB1C_.exit.i.thread

bb.aj:                                            ; preds = %bb.ai
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !99104, !inline_history !99017
  %i.ec = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.dx, i64 noundef range(i64 1, 9) 8) #70, !noalias !99104, !inline_history !99017 ; 3 uses
  %i.ed = icmp eq ptr %i.ec, null
  br i1 %i.ed, label %bb.ak, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskXtk6F4WjxZ_4just.exit.i

bb.ak:                                            ; preds = %bb.aj, %bb.ah
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.aj ], [ 0, %bb.ah ]
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.dx) #71
          to label %.noexc107 unwind label %bb.ck, !inline_history !99017

.noexc107:                                        ; preds = %bb.ak
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.aj
  store i64 %i.dw, ptr %i.p, align 8, !noalias !99103
  %i.ee = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.ec, ptr %i.ee, align 8, !noalias !99103
  %i.ef = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.eg = getelementptr inbounds nuw [232 x i8], ptr %i.dv, i64 %i.dw
  %2 = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  %3 = getelementptr inbounds nuw i8, ptr %i.o, i64 152
  %4 = getelementptr inbounds nuw i8, ptr %i.o, i64 224
  br label %bb.al

bb.al:                                            ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskXtk6F4WjxZ_4just.exit.i, %_RNvYTNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtNtB7_14string_literal13StringLiteralENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneB7_.exit.i
  %.sroa.0174.0191 = phi ptr [ %i.dv, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskXtk6F4WjxZ_4just.exit.i ], [ %i.ej, %_RNvYTNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtNtB7_14string_literal13StringLiteralENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneB7_.exit.i ] ; 6 uses
  %.sroa.7176.0190 = phi i64 [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskXtk6F4WjxZ_4just.exit.i ], [ %i.ek, %_RNvYTNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtNtB7_14string_literal13StringLiteralENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneB7_.exit.i ] ; 3 uses
  %.sroa.10177.0189 = phi i64 [ %i.dw, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskXtk6F4WjxZ_4just.exit.i ], [ %i.eh, %_RNvYTNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtNtB7_14string_literal13StringLiteralENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneB7_.exit.i ]
  %i.eh = add nsw i64 %.sroa.10177.0189, -1       ; 2 uses
  %i.ei = icmp eq ptr %.sroa.0174.0191, %i.eg
  br i1 %i.ei, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtNtB1C_14string_literal13StringLiteralEEENtNtNtB8_6traits8iterator8Iterator4nextB1C_.exit.i.thread, label %bb.am

.loopexit:                                        ; preds = %bb.am
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit, %bb.an
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.em, %bb.an ], [ %lpad.loopexit, %.loopexit ]
  store i64 %.sroa.7176.0190, ptr %i.ef, align 8, !noalias !99105
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtNtB1d_14string_literal13StringLiteralEEEB1d_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #72
          to label %.body108 unwind label %bb.ap, !noalias !99105, !inline_history !99017

bb.am:                                            ; preds = %bb.al
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0174.0191, i64 232
  %i.ek = add nuw nsw i64 %.sroa.7176.0190, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !99103
  invoke fastcc void @_RNvXs5_NtCskXtk6F4WjxZ_4just10expressionNtB5_10ExpressionNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(232) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %.sroa.0174.0191) #76
          to label %.noexc.i unwind label %.loopexit, !noalias !99105, !inline_history !99018

.noexc.i:                                         ; preds = %bb.am
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.0174.0191, i64 128
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99107)
  invoke void @_RNvXs4_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(104) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.el)
          to label %_RNvYTNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtNtB7_14string_literal13StringLiteralENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneB7_.exit.i unwind label %bb.an

bb.an:                                            ; preds = %.noexc.i
  %i.em = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %i.o) #72
          to label %.body.i unwind label %bb.ao, !noalias !99105, !inline_history !99018

bb.ao:                                            ; preds = %bb.an
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #73, !noalias !99108, !inline_history !99018
  unreachable

_RNvYTNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtNtB7_14string_literal13StringLiteralENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneB7_.exit.i: ; preds = %.noexc.i
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.0174.0191, i64 224
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.0174.0191, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.ep, i64 72, i1 false), !alias.scope !99109, !noalias !99105
  %i.eq = load <4 x i8>, ptr %i.eo, align 8, !alias.scope !99107, !noalias !99110
  store <4 x i8> %i.eq, ptr %4, align 8, !alias.scope !99106, !noalias !99111
  %i.er = getelementptr inbounds nuw [232 x i8], ptr %i.ec, i64 %.sroa.7176.0190
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.er, ptr noundef nonnull align 8 dereferenceable(232) %i.o, i64 232, i1 false), !noalias !99105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !99103
  %i.es = icmp eq i64 %i.eh, 0
  br i1 %i.es, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtNtB1C_14string_literal13StringLiteralEEENtNtNtB8_6traits8iterator8Iterator4nextB1C_.exit.i.thread, label %bb.al

bb.ap:                                            ; preds = %.body.i
  %i.et = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #73, !noalias !99105, !inline_history !99017
  unreachable

bb.aq:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99112)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !99112
  %i.eu = tail call noalias noundef align 8 dereferenceable_or_null(128) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !99112 ; 4 uses
  %i.ev = icmp eq ptr %i.eu, null
  br i1 %i.ev, label %bb.ar, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionE13new_uninit_inBK_.exit112, !prof !44

bb.ar:                                            ; preds = %bb.aq
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #71, !noalias !99112
  unreachable

_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionE13new_uninit_inBK_.exit112: ; preds = %bb.aq
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !alias.scope !99112, !nonnull !28, !noundef !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !99113
  invoke fastcc void @_RNvXs5_NtCskXtk6F4WjxZ_4just10expressionNtB5_10ExpressionNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(128) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.ex) #76
          to label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit43 unwind label %bb.as, !inline_history !98967

bb.as:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionE13new_uninit_inBK_.exit112
  %i.ey = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.eu, i64 noundef 128, i64 noundef 8) #70, !noalias !99112
  br label %common.resume236

_RNvXsd_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit43: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionE13new_uninit_inBK_.exit112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.eu, ptr noundef nonnull align 8 dereferenceable(128) %i.n, i64 128, i1 false), !noalias !99113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !99113
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.eu, ptr %i.ez, align 8
  store i64 -9223372036854775800, ptr %0, align 8
  br label %bb.bs

bb.at:                                            ; preds = %bb.a
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !align !35, !noundef !28 ; 2 uses
  %.not8 = icmp eq ptr %i.fc, null
  br i1 %.not8, label %bb.cp, label %bb.cm

bb.au:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99114)
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8, !alias.scope !99114, !noalias !99115, !nonnull !28, !noundef !28 ; 2 uses
  %i.fg = load i64, ptr %i.fd, align 8, !alias.scope !99114, !noalias !99115, !noundef !28 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !99116
  %i.fh = shl nuw nsw i64 %i.fg, 7                ; 2 uses
  %i.fi = icmp eq i64 %i.fg, 0
  br i1 %i.fi, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskXtk6F4WjxZ_4just.exit.thread.i234, label %bb.av

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskXtk6F4WjxZ_4just.exit.thread.i234: ; preds = %bb.au
  store i64 0, ptr %i.b, align 8, !noalias !99116
  %i.fj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.fj, align 8, !noalias !99116
  %i.fk = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBO_.exit235

bb.av:                                            ; preds = %bb.au
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !99117, !inline_history !98984
  %i.fl = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.fh, i64 noundef range(i64 1, 9) 8) #70, !noalias !99117, !inline_history !98984 ; 3 uses
  %i.fm = icmp eq ptr %i.fl, null
  br i1 %i.fm, label %bb.aw, label %.lr.ph.preheader.i228

bb.aw:                                            ; preds = %bb.av
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.fh) #71, !noalias !99116, !inline_history !98984
  unreachable

.lr.ph.preheader.i228:                            ; preds = %bb.av
  store i64 %i.fg, ptr %i.b, align 8, !noalias !99116
  %i.fn = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.fl, ptr %i.fn, align 8, !noalias !99116
  %i.fo = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.fp = getelementptr inbounds nuw [128 x i8], ptr %i.ff, i64 %i.fg
  br label %.lr.ph.i229

.lr.ph.i229:                                      ; preds = %bb.ay, %.lr.ph.preheader.i228
  %.sroa.012.023.i230 = phi ptr [ %i.ft, %bb.ay ], [ %i.ff, %.lr.ph.preheader.i228 ] ; 3 uses
  %.sroa.7.022.i231 = phi i64 [ %i.fs, %bb.ay ], [ 0, %.lr.ph.preheader.i228 ] ; 3 uses
  %.sroa.10.021.i232 = phi i64 [ %i.fq, %bb.ay ], [ %i.fg, %.lr.ph.preheader.i228 ]
  %i.fq = add nsw i64 %.sroa.10.021.i232, -1      ; 2 uses
  %i.fr = icmp eq ptr %.sroa.012.023.i230, %i.fp
  br i1 %i.fr, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBO_.exit235, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph.i229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !99116
  invoke fastcc void @_RNvXs5_NtCskXtk6F4WjxZ_4just10expressionNtB5_10ExpressionNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(128) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %.sroa.012.023.i230)
          to label %bb.ay unwind label %bb.ba, !noalias !99118, !inline_history !98984

bb.ay:                                            ; preds = %bb.ax
  %i.fs = add nuw nsw i64 %.sroa.7.022.i231, 1
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i230, i64 128
  %i.fu = getelementptr inbounds nuw [128 x i8], ptr %i.fl, i64 %.sroa.7.022.i231
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.fu, ptr noundef nonnull align 8 dereferenceable(128) %i.a, i64 128, i1 false), !noalias !99118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !99116
  %i.fv = icmp eq i64 %i.fq, 0
  br i1 %i.fv, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBO_.exit235, label %.lr.ph.i229

bb.az:                                            ; preds = %bb.ba
  %i.fw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #73, !noalias !99118, !inline_history !98984
  unreachable

bb.ba:                                            ; preds = %bb.ax
  %lpad.loopexit.i233 = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i231, ptr %i.fo, align 8, !noalias !99116
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #72
          to label %common.resume236 unwind label %bb.az, !noalias !99118, !inline_history !98984

_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBO_.exit235: ; preds = %.lr.ph.i229, %bb.ay, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskXtk6F4WjxZ_4just.exit.thread.i234
  %i.fx = phi ptr [ %i.fk, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskXtk6F4WjxZ_4just.exit.thread.i234 ], [ %i.fo, %bb.ay ], [ %i.fo, %.lr.ph.i229 ]
  store i64 %i.fg, ptr %i.fx, align 8, !noalias !99116
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fy, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !99116
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ga, ptr noundef nonnull align 8 dereferenceable(72) %i.fz, i64 72, i1 false)
  store i64 -9223372036854775798, ptr %0, align 8
  br label %bb.bs

bb.bb:                                            ; preds = %bb.a
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99119)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !99119
  %i.gc = tail call noalias noundef align 8 dereferenceable_or_null(128) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !99119 ; 5 uses
  %i.gd = icmp eq ptr %i.gc, null
  br i1 %i.gd, label %bb.bc, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionE13new_uninit_inBK_.exit115, !prof !44

bb.bc:                                            ; preds = %bb.bb
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #71, !noalias !99119
  unreachable

_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionE13new_uninit_inBK_.exit115: ; preds = %bb.bb
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8, !alias.scope !99119, !nonnull !28, !noundef !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !99120
  invoke fastcc void @_RNvXs5_NtCskXtk6F4WjxZ_4just10expressionNtB5_10ExpressionNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(128) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.gf) #76
          to label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit45 unwind label %bb.bd, !inline_history !98967

bb.bd:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionE13new_uninit_inBK_.exit115
  %i.gg = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gc, i64 noundef 128, i64 noundef 8) #70, !noalias !99119
  br label %common.resume236

_RNvXsd_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit45: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionE13new_uninit_inBK_.exit115
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.gc, ptr noundef nonnull align 8 dereferenceable(128) %i.m, i64 128, i1 false), !noalias !99120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !99120
  store ptr %i.gc, ptr %i.ab, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99121)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70
  %i.gi = tail call noalias noundef align 8 dereferenceable_or_null(128) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef range(i64 1, -9223372036854775807) 8) #70 ; 4 uses
  %i.gj = icmp eq ptr %i.gi, null
  br i1 %i.gj, label %bb.be, label %.noexc47, !prof !44

bb.be:                                            ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit45
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #71
          to label %.noexc118 unwind label %bb.cu

.noexc118:                                        ; preds = %bb.be
  unreachable

.noexc47:                                         ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit45
  %i.gk = load ptr, ptr %i.gb, align 8, !alias.scope !99121, !nonnull !28, !noundef !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !99122
  invoke fastcc void @_RNvXs5_NtCskXtk6F4WjxZ_4just10expressionNtB5_10ExpressionNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(128) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.gk) #76
          to label %bb.cv unwind label %bb.bf, !inline_history !98967

bb.bf:                                            ; preds = %.noexc47
  %i.gl = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gi, i64 noundef 128, i64 noundef 8) #70, !noalias !99121
  br label %.body48

bb.bg:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99123)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !99123
  %i.gm = tail call noalias noundef align 8 dereferenceable_or_null(128) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !99123 ; 4 uses
  %i.gn = icmp eq ptr %i.gm, null
  br i1 %i.gn, label %bb.bh, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionE13new_uninit_inBK_.exit122, !prof !44

bb.bh:                                            ; preds = %bb.bg
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #71, !noalias !99123
end_hunk_5
begin_hunk_6_@_RNvXs5_NtCskXtk6F4WjxZ_4just10expressionNtB5_10ExpressionNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone:bb.a
  store i64 -9223372036854775808, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bp, %bb.bo, %bb.cx, %bb.cv, %bb.ct, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtNtB1C_14string_literal13StringLiteralEEENtNtNtB8_6traits8iterator8Iterator4nextB1C_.exit.i.thread, %bb.ci, %bb.cc, %bb.ca, %bb.bx, %bb.br, %_RNvXsd_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit52, %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBO_.exit235, %_RNvXsd_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit43, %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBO_.exit, %bb.k
  ret void

bb.bt:                                            ; preds = %.body57, %.body48, %.body74, %.body67, %.body38, %.body31, %.body24, %.body62, %.body
  %i.ht = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #73
  unreachable

bb.bu:                                            ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit19
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70
  %i.hu = tail call noalias noundef align 8 dereferenceable_or_null(128) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef range(i64 1, -9223372036854775807) 8) #70 ; 4 uses
  %i.hv = icmp eq ptr %i.hu, null
  br i1 %i.hv, label %bb.bv, label %.noexc61, !prof !44

bb.bv:                                            ; preds = %bb.bu
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #71
          to label %.noexc132 unwind label %bb.by

.noexc132:                                        ; preds = %bb.bv
  unreachable

.noexc61:                                         ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !99129
  invoke fastcc void @_RNvXs5_NtCskXtk6F4WjxZ_4just10expressionNtB5_10ExpressionNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(128) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.bf) #76
          to label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit64 unwind label %bb.bw, !inline_history !98967

bb.bw:                                            ; preds = %.noexc61
  %i.hw = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hu, i64 noundef 128, i64 noundef 8) #70, !noalias !99130
  br label %.body62

_RNvXsd_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit64: ; preds = %.noexc61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.hu, ptr noundef nonnull align 8 dereferenceable(128) %i.h, i64 128, i1 false), !noalias !99129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !99129
  br label %bb.bx

bb.bx:                                            ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit64, %_RNvXsd_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit19
  %.sroa.0.0 = phi ptr [ null, %_RNvXsd_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit19 ], [ %i.hu, %_RNvXsd_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit64 ]
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.hy, ptr noundef nonnull align 8 dereferenceable(72) %i.hx, i64 72, i1 false)
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.az, ptr %i.hz, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0, ptr %i.ia, align 8
  store i64 -9223372036854775807, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %bb.bs

bb.by:                                            ; preds = %bb.bv
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %.body62

.body62:                                          ; preds = %bb.bw, %bb.by
  %eh.lpad-body63 = phi { ptr, i32 } [ %i.ib, %bb.by ], [ %i.hw, %bb.bw ]
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEEB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ai) #72
          to label %common.resume236 unwind label %bb.bt

bb.bz:                                            ; preds = %bb.v
  %i.ic = landingpad { ptr, i32 }
          cleanup
  br label %.body24

.body24:                                          ; preds = %bb.w, %bb.bz
  %eh.lpad-body25 = phi { ptr, i32 } [ %i.ic, %bb.bz ], [ %i.ct, %bb.w ]
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEEB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ag) #72
          to label %common.resume236 unwind label %bb.bt

bb.ca:                                            ; preds = %.noexc23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.cq, ptr noundef nonnull align 8 dereferenceable(128) %i.u, i64 128, i1 false), !noalias !99092
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !99092
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ie, ptr noundef nonnull align 8 dereferenceable(72) %i.id, i64 72, i1 false)
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.cj, ptr %i.if, align 8
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 %i.cp, ptr %i.ig, align 8
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.cq, ptr %i.ih, align 8
  store i64 -9223372036854775804, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %bb.bs

bb.cb:                                            ; preds = %bb.aa
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %.body31

.body31:                                          ; preds = %bb.ab, %bb.cb
  %eh.lpad-body32 = phi { ptr, i32 } [ %i.ii, %bb.cb ], [ %i.de, %bb.ab ]
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEEB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.af) #72
          to label %common.resume236 unwind label %bb.bt

bb.cc:                                            ; preds = %.noexc30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.db, ptr noundef nonnull align 8 dereferenceable(128) %i.s, i64 128, i1 false), !noalias !99096
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !99096
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cv, ptr %i.ij, align 8
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ik, ptr noundef nonnull align 8 dereferenceable(72) %i.da, i64 72, i1 false)
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.db, ptr %i.il, align 8
  store i64 -9223372036854775803, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.bs

.body38:                                          ; preds = %bb.cd, %bb.ag, %.body67
  %.pn = phi { ptr, i32 } [ %eh.lpad-body68, %.body67 ], [ %i.im, %bb.cd ], [ %i.do, %bb.ag ]
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEEB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ae) #72
          to label %common.resume236 unwind label %bb.bt

bb.cd:                                            ; preds = %bb.af
  %i.im = landingpad { ptr, i32 }
          cleanup
  br label %.body38

bb.ce:                                            ; preds = %.noexc37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.dl, ptr noundef nonnull align 8 dereferenceable(128) %i.q, i64 128, i1 false), !noalias !99100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !99100
  store ptr %i.dl, ptr %i.ad, align 8
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.io = load ptr, ptr %i.in, align 8, !align !35, !noundef !28 ; 2 uses
  %.not10 = icmp eq ptr %i.io, null
  br i1 %.not10, label %bb.ci, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70
  %i.ip = tail call noalias noundef align 8 dereferenceable_or_null(128) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef range(i64 1, -9223372036854775807) 8) #70 ; 4 uses
  %i.iq = icmp eq ptr %i.ip, null
  br i1 %i.iq, label %bb.cg, label %.noexc66, !prof !44

bb.cg:                                            ; preds = %bb.cf
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #71
          to label %.noexc136 unwind label %bb.cj

.noexc136:                                        ; preds = %bb.cg
  unreachable

.noexc66:                                         ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !99131
  invoke fastcc void @_RNvXs5_NtCskXtk6F4WjxZ_4just10expressionNtB5_10ExpressionNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(128) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.io) #76
          to label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit69 unwind label %bb.ch, !inline_history !98967

bb.ch:                                            ; preds = %.noexc66
  %i.ir = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ip, i64 noundef 128, i64 noundef 8) #70, !noalias !99132
  br label %.body67

_RNvXsd_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit69: ; preds = %.noexc66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ip, ptr noundef nonnull align 8 dereferenceable(128) %i.g, i64 128, i1 false), !noalias !99131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !99131
  br label %bb.ci

bb.ci:                                            ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit69, %bb.ce
  %.sroa.01.0 = phi ptr [ null, %bb.ce ], [ %i.ip, %_RNvXsd_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit69 ]
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dg, ptr %i.is, align 8
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.dl, ptr %i.it, align 8
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.01.0, ptr %i.iu, align 8
  store i64 -9223372036854775802, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.bs

bb.cj:                                            ; preds = %bb.cg
  %i.iv = landingpad { ptr, i32 }
          cleanup
  br label %.body67

.body67:                                          ; preds = %bb.ch, %bb.cj
  %eh.lpad-body68 = phi { ptr, i32 } [ %i.iv, %bb.cj ], [ %i.ir, %bb.ch ]
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEEB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ad) #72
          to label %.body38 unwind label %bb.bt

bb.ck:                                            ; preds = %bb.ak
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %.body108

.body108:                                         ; preds = %.body.i, %bb.ck
  %eh.lpad-body109 = phi { ptr, i32 } [ %i.iw, %bb.ck ], [ %eh.lpad-body.i, %.body.i ] ; 2 uses
  %i.ix = icmp eq i64 %.sroa.0.0.copyload146, 0
  br i1 %i.ix, label %common.resume236, label %bb.cl

bb.cl:                                            ; preds = %.body108
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload149) ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload149, i64 noundef %.sroa.0.0.copyload146, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !99133
  br label %common.resume236

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtNtB1C_14string_literal13StringLiteralEEENtNtNtB8_6traits8iterator8Iterator4nextB1C_.exit.i.thread: ; preds = %_RNvYTNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtNtB7_14string_literal13StringLiteralENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneB7_.exit.i, %bb.al, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskXtk6F4WjxZ_4just.exit.i.thread
  %5 = phi ptr [ %i.eb, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskXtk6F4WjxZ_4just.exit.i.thread ], [ %i.ef, %bb.al ], [ %i.ef, %_RNvYTNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtNtB7_14string_literal13StringLiteralENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneB7_.exit.i ]
  store i64 %i.dw, ptr %5, align 8, !noalias !99103
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.iy, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !99103
  store i64 %.sroa.0.0.copyload146, ptr %0, align 8
  %.sroa.5.0..sroa_idx147 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0.copyload149, ptr %.sroa.5.0..sroa_idx147, align 8
  %.sroa.6.0..sroa_idx150 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ds, ptr %.sroa.6.0..sroa_idx150, align 8
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx150.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx150.sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %i.dr, i64 72, i1 false)
  %.sroa.7.0..sroa_idx152 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <4 x i8> %i.dq, ptr %.sroa.7.0..sroa_idx152, align 8
  br label %bb.bs

bb.cm:                                            ; preds = %bb.at
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !99134
  %i.iz = tail call noalias noundef align 8 dereferenceable_or_null(128) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !99134 ; 4 uses
  %i.ja = icmp eq ptr %i.iz, null
  br i1 %i.ja, label %bb.cn, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionE13new_uninit_inBK_.exit140, !prof !44

bb.cn:                                            ; preds = %bb.cm
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #71, !noalias !99134
  unreachable

_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionE13new_uninit_inBK_.exit140: ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !99135
  invoke fastcc void @_RNvXs5_NtCskXtk6F4WjxZ_4just10expressionNtB5_10ExpressionNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(128) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.fc) #76
          to label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit71 unwind label %bb.co, !inline_history !98967

bb.co:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionE13new_uninit_inBK_.exit140
  %i.jb = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.iz, i64 noundef 128, i64 noundef 8) #70, !noalias !99134
  br label %common.resume236

_RNvXsd_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit71: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionE13new_uninit_inBK_.exit140
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.iz, ptr noundef nonnull align 8 dereferenceable(128) %i.f, i64 128, i1 false), !noalias !99135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !99135
  br label %bb.cp

bb.cp:                                            ; preds = %bb.at, %_RNvXsd_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit71
  %storemerge = phi ptr [ %i.iz, %_RNvXsd_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit71 ], [ null, %bb.at ] ; 2 uses
  store ptr %storemerge, ptr %i.ac, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99136)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70
  %i.jd = tail call noalias noundef align 8 dereferenceable_or_null(128) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef range(i64 1, -9223372036854775807) 8) #70 ; 4 uses
  %i.je = icmp eq ptr %i.jd, null
  br i1 %i.je, label %bb.cq, label %.noexc73, !prof !44

bb.cq:                                            ; preds = %bb.cp
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #71
          to label %.noexc143 unwind label %bb.cs

.noexc143:                                        ; preds = %bb.cq
  unreachable

.noexc73:                                         ; preds = %bb.cp
  %i.jf = load ptr, ptr %i.fa, align 8, !alias.scope !99136, !nonnull !28, !noundef !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !99137
  invoke fastcc void @_RNvXs5_NtCskXtk6F4WjxZ_4just10expressionNtB5_10ExpressionNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(128) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.jf) #76
          to label %bb.ct unwind label %bb.cr, !inline_history !98967

bb.cr:                                            ; preds = %.noexc73
  %i.jg = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.jd, i64 noundef 128, i64 noundef 8) #70, !noalias !99136
  br label %.body74

bb.cs:                                            ; preds = %bb.cq
  %i.jh = landingpad { ptr, i32 }
          cleanup
  br label %.body74

.body74:                                          ; preds = %bb.cr, %bb.cs
  %eh.lpad-body75 = phi { ptr, i32 } [ %i.jh, %bb.cs ], [ %i.jg, %bb.cr ]
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEEEB1A_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ac) #72
          to label %common.resume236 unwind label %bb.bt

bb.ct:                                            ; preds = %.noexc73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.jd, ptr noundef nonnull align 8 dereferenceable(128) %i.e, i64 128, i1 false), !noalias !99137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !99137
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %storemerge, ptr %i.ji, align 8
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.jj, ptr noundef nonnull align 8 dereferenceable(72) %i.jc, i64 72, i1 false)
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.jd, ptr %i.jk, align 8
  store i64 -9223372036854775799, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.bs

bb.cu:                                            ; preds = %bb.be
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %.body48

.body48:                                          ; preds = %bb.bf, %bb.cu
  %eh.lpad-body49 = phi { ptr, i32 } [ %i.jl, %bb.cu ], [ %i.gl, %bb.bf ]
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEEB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ab) #72
          to label %common.resume236 unwind label %bb.bt

bb.cv:                                            ; preds = %.noexc47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.gi, ptr noundef nonnull align 8 dereferenceable(128) %i.l, i64 128, i1 false), !noalias !99122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !99122
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gc, ptr %i.jm, align 8
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.jn, ptr noundef nonnull align 8 dereferenceable(72) %i.gh, i64 72, i1 false)
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.gi, ptr %i.jo, align 8
  store i64 -9223372036854775797, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.bs

bb.cw:                                            ; preds = %bb.bm
  %i.jp = landingpad { ptr, i32 }
          cleanup
  br label %.body57

.body57:                                          ; preds = %bb.bn, %bb.cw
  %eh.lpad-body58 = phi { ptr, i32 } [ %i.jp, %bb.cw ], [ %i.hb, %bb.bn ]
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEEB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aa) #72
          to label %common.resume236 unwind label %bb.bt

bb.cx:                                            ; preds = %.noexc56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.gy, ptr noundef nonnull align 8 dereferenceable(128) %i.i, i64 128, i1 false), !noalias !99128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !99128
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gt, ptr %i.jq, align 8
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.gy, ptr %i.jr, align 8
  store i64 -9223372036854775795, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.bs
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs5_NtCskXtk6F4WjxZ_4just11interpreterINtB5_11InterpreterNtNtB7_14string_literal13StringLiteralENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqB7_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99142)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 98
  %i.b = load i8, ptr %i.a, align 2, !range !40, !alias.scope !99141, !noalias !99142, !noundef !28
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 98
  %i.d = load i8, ptr %i.c, align 2, !range !40, !alias.scope !99142, !noalias !99141, !noundef !28
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXs1_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !99141, !noalias !99142, !noundef !28 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !99142, !noalias !99141, !noundef !28
  %i.j = icmp eq i64 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_RNvXs1_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !99142, !noalias !99141, !nonnull !28, !noundef !28
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !99141, !noalias !99142, !nonnull !28, !noundef !28
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.n, ptr nonnull %i.l, i64 %i.g), !noalias !99143
  %i.o = icmp eq i32 %bcmp.i, 0
  br i1 %i.o, label %bb.d, label %_RNvXs1_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.q = load i8, ptr %i.p, align 8, !range !40, !alias.scope !99141, !noalias !99142, !noundef !28
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.s = load i8, ptr %i.r, align 8, !range !40, !alias.scope !99142, !noalias !99141, !noundef !28
  %i.t = icmp eq i8 %i.q, %i.s
  br i1 %i.t, label %bb.e, label %_RNvXs1_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 97
  %i.v = load i8, ptr %i.u, align 1, !range !38, !alias.scope !99141, !noalias !99142, !noundef !28
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 97
  %i.x = load i8, ptr %i.w, align 1, !range !38, !alias.scope !99142, !noalias !99141, !noundef !28
  %i.y = icmp eq i8 %i.v, %i.x
  br i1 %i.y, label %bb.f, label %_RNvXs1_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 99
  %i.aa = load i8, ptr %i.z, align 1, !range !112, !alias.scope !99141, !noalias !99142, !noundef !28 ; 2 uses
  %.not.i = icmp eq i8 %i.aa, -1
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 99
  %i.ac = load i8, ptr %i.ab, align 1, !range !112, !alias.scope !99142, !noalias !99141, !noundef !28 ; 2 uses
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = icmp eq i8 %i.aa, %i.ac
  br i1 %i.ad, label %_RNvXs1_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit, label %_RNvXs1_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread

bb.h:                                             ; preds = %bb.f
  %i.ae = icmp eq i8 %i.ac, -1
  br i1 %i.ae, label %_RNvXs1_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit, label %_RNvXs1_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread

_RNvXs1_NtCskXtk6F4WjxZ_4just14string_literalNtB5_13StringLiteralNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit: ; preds = %bb.g, %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_6
