Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.05?download=true
inline.NumInlined: 9178
inline.NumDeleted: 3311
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNvXsq_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_21DisplayRepresentationNtB5_11FmtDetailed12fmt_detailed:bb.a
  br i1 %i.wn, label %bb.cy, label %bb.cz, !prof !15

bb.cy:                                            ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_10TypeWriter27set_invalid_type_annotation.exit454
  call void @llvm.trap()
  unreachable

bb.cz:                                            ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_10TypeWriter27set_invalid_type_annotation.exit454
  %i.wo = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.wp = load ptr, ptr %i.wo, align 8, !alias.scope !14006, !nonnull !9, !noundef !9 ; 3 uses
  %i.wq = load i64, ptr %i.wp, align 8, !noalias !14007, !noundef !9 ; 2 uses
  %i.wr = icmp ne i64 %i.wq, 0
  call void @llvm.assume(i1 %i.wr)
  %i.ws = add i64 %i.wq, 1                        ; 2 uses
  store i64 %i.ws, ptr %i.wp, align 8, !noalias !14007
  %i.wt = icmp eq i64 %i.ws, 0
  br i1 %i.wt, label %bb.da, label %bb.db, !prof !15

bb.da:                                            ; preds = %bb.cz
  call void @llvm.trap()
  unreachable

bb.db:                                            ; preds = %bb.cz
  %i.wu = getelementptr inbounds nuw i8, ptr %0, i64 50
  %i.wv = load i8, ptr %i.wu, align 2, !range !16, !alias.scope !14006, !noundef !9
  %i.ww = getelementptr inbounds nuw i8, ptr %0, i64 51
  %i.wx = load i8, ptr %i.ww, align 1, !range !16, !alias.scope !14006, !noundef !9
  %i.wy = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.wz = load ptr, ptr %i.wy, align 8, !alias.scope !14006, !nonnull !9, !noundef !9 ; 3 uses
  %i.xa = load i64, ptr %i.wz, align 8, !noalias !14007, !noundef !9 ; 2 uses
  %i.xb = icmp ne i64 %i.xa, 0
  call void @llvm.assume(i1 %i.xb)
  %i.xc = add i64 %i.xa, 1                        ; 2 uses
  store i64 %i.xc, ptr %i.wz, align 8, !noalias !14007
  %i.xd = icmp eq i64 %i.xc, 0
  br i1 %i.xd, label %bb.dc, label %bb.dd, !prof !15

bb.dc:                                            ; preds = %bb.db
  call void @llvm.trap()
  unreachable

bb.dd:                                            ; preds = %bb.db
  %i.xe = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.xf = load ptr, ptr %i.xe, align 8, !alias.scope !14006, !nonnull !9, !noundef !9 ; 3 uses
  %i.xg = load i64, ptr %i.xf, align 8, !noalias !14007, !noundef !9 ; 2 uses
  %i.xh = icmp ne i64 %i.xg, 0
  call void @llvm.assume(i1 %i.xh)
  %i.xi = add i64 %i.xg, 1                        ; 2 uses
  store i64 %i.xi, ptr %i.xf, align 8, !noalias !14007
  %i.xj = icmp eq i64 %i.xi, 0
  br i1 %i.xj, label %bb.de, label %_RNvXs1Q_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB6_15DisplaySettingsNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit455, !prof !15

bb.de:                                            ; preds = %bb.dd
  call void @llvm.trap()
  unreachable

_RNvXs1Q_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB6_15DisplaySettingsNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit455: ; preds = %bb.dd
  %i.xk = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.xl = load i8, ptr %i.xk, align 4, !range !16, !alias.scope !14006, !noundef !9
  call void @llvm.experimental.noalias.scope.decl(metadata !14008)
  call void @llvm.experimental.noalias.scope.decl(metadata !14009)
  %i.xm = getelementptr inbounds nuw i8, ptr %i.br, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.xm, ptr noundef nonnull readonly align 4 dereferenceable(28) %i.bq, i64 28, i1 false), !alias.scope !14010
  %i.xn = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  store ptr %i.gh, ptr %i.xn, align 8, !alias.scope !14011
  %i.xo = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  store ptr %i.gj, ptr %i.xo, align 8, !alias.scope !14011
  store ptr %i.wj, ptr %i.br, align 8, !alias.scope !14012
  %.sroa.4839.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store ptr %i.wp, ptr %.sroa.4839.0..sroa_idx, align 8, !alias.scope !14012
  %.sroa.5840.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store ptr %i.wz, ptr %.sroa.5840.0..sroa_idx, align 8, !alias.scope !14012
  %.sroa.6841.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  store ptr %i.xf, ptr %.sroa.6841.0..sroa_idx, align 8, !alias.scope !14012
  %.sroa.7842.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  store i8 %i.wi, ptr %.sroa.7842.0..sroa_idx, align 8, !alias.scope !14012
  %.sroa.8843.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 33
  store i8 %i.wg, ptr %.sroa.8843.0..sroa_idx, align 1, !alias.scope !14012
  %.sroa.9844.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 34
  store i8 %i.wv, ptr %.sroa.9844.0..sroa_idx, align 2, !alias.scope !14012
  %.sroa.10845.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 35
  store i8 %i.wx, ptr %.sroa.10845.0..sroa_idx, align 1, !alias.scope !14012
  %.sroa.11846.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 36
  store i8 %i.xl, ptr %.sroa.11846.0..sroa_idx, align 4, !alias.scope !14012
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  store ptr %i.br, ptr %i.bp, align 8
  %.sroa.4211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr @_RNvXss_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_27DisplayBoundTypeVarIdentityNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.4211.0..sroa_idx, align 8
  %i.xp = invoke noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @240, ptr noundef nonnull @239, ptr noundef nonnull %i.bp)
          to label %bb.sp unwind label %bb.so

bb.df:                                            ; preds = %bb.a
  %i.xq = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.xr = load i32, ptr %i.xq, align 4, !range !20, !noundef !9 ; 2 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.xt = load i32, ptr %i.xs, align 8, !noundef !9 ; 2 uses
  %i.xu = load i64, ptr %1, align 8, !range !18, !alias.scope !14013, !noundef !9
  %.not.i456 = icmp eq i64 %i.xu, -1
  br i1 %.not.i456, label %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_10TypeWriterNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str.exit461, label %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_10TypeWriterNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str.exit461.thread

_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_10TypeWriterNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str.exit461.thread: ; preds = %bb.df
  %i.xv = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i8 0, ptr %i.xv, align 8, !alias.scope !14013
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14014)
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(80) %1, i64 noundef 8), !noalias !14015
  %i.xw = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.xx = load i64, ptr %i.xw, align 8, !alias.scope !14016, !noundef !9 ; 2 uses
  %i.xy = icmp sgt i64 %i.xx, -1
  tail call void @llvm.assume(i1 %i.xy)
  %i.xz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ya = load ptr, ptr %i.xz, align 8, !alias.scope !14016, !nonnull !9, !noundef !9
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 %i.xx
  store i64 2322294337866920764, ptr %i.yb, align 1
  %.pre.i.i.i459 = load i64, ptr %i.xw, align 8, !alias.scope !14016
  %i.yc = add i64 %.pre.i.i.i459, 8
  store i64 %i.yc, ptr %i.xw, align 8, !alias.scope !14016
  br label %bb.sq

_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_10TypeWriterNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str.exit461: ; preds = %bb.df
  %i.yd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ye = load ptr, ptr %i.yd, align 8, !alias.scope !14014, !nonnull !9, !align !17, !noundef !9
  %i.yf = tail call noundef zeroext i1 @_RNvXsb_NtCs4NRVxsYgnAr_4core3fmtNtB5_9FormatterNtB5_5Write9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ye, ptr noalias noundef nonnull readonly captures(address, read_provenance) @677, i64 noundef 8), !noalias !14014
  br i1 %i.yf, label %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_10TypeWriterNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str.exit, label %bb.sq

bb.dg:                                            ; preds = %bb.a
  %i.yg = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.yh = load i32, ptr %i.yg, align 4, !range !20, !noundef !9 ; 2 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.yj = load i32, ptr %i.yi, align 8, !noundef !9 ; 2 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.yl = load ptr, ptr %i.yk, align 8, !nonnull !9, !align !13, !noundef !9
  %i.ym = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14017)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !14018
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14019)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14020)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !14021
  %i.yn = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i32 20, ptr %i.yn, align 8, !noalias !14022
  %.sroa.4902.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i8 33, ptr %.sroa.4902.0..sroa_idx, align 4, !noalias !14022
  store i64 -9223372036854775805, ptr %i.k, align 8, !noalias !14021
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14023), !noalias !14024
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14025), !noalias !14024
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14026), !noalias !14024
  %i.yo = load i64, ptr %1, align 8, !range !18, !alias.scope !14027, !noalias !14024, !noundef !9
  %.not.i.i689 = icmp eq i64 %i.yo, -1
  br i1 %.not.i.i689, label %bb.dn, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.yp = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.yq = load i64, ptr %i.yp, align 8, !alias.scope !14027, !noalias !14024, !noundef !9 ; 2 uses
  %i.yr = icmp ugt i64 %i.yq, 4294967295
  %i.ys = shl nuw i64 %i.yq, 32
  %.sroa.09.0.insert.insert.i.i.i690 = select i1 %i.yr, i64 513, i64 %i.ys ; 2 uses
  %i.yt = trunc i64 %.sroa.09.0.insert.insert.i.i.i690 to i1
  br i1 %i.yt, label %bb.di, label %bb.dm, !prof !15

bb.di:                                            ; preds = %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !14028
  store i8 2, ptr %i.j, align 1, !noalias !14028
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 43, ptr noundef nonnull %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @73, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @570) #41
          to label %.noexc.i.i696 unwind label %bb.dj, !noalias !14028

.noexc.i.i696:                                    ; preds = %bb.di
  unreachable

bb.dj:                                            ; preds = %bb.di
  %i.yu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display10TypeDetailEBH_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k) #39
          to label %common.resume1084 unwind label %bb.dk, !noalias !14029

bb.dk:                                            ; preds = %bb.dj
  %i.yv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #40, !noalias !14029
  unreachable

bb.dl:                                            ; preds = %bb.dn, %bb.dm
  %i.yw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display15TypeDetailGuardEBH_(ptr noalias noundef align 8 dereferenceable(40) %i.aa) #39
          to label %common.resume1084 unwind label %bb.ed, !noalias !14024, !inline_history !13559

bb.dm:                                            ; preds = %bb.dh
  %.sroa.6.0.extract.shift.i.i.i.i692 = lshr i64 %.sroa.09.0.insert.insert.i.i.i690, 32
  %.sroa.6.0.extract.trunc.i.i.i.i693 = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i.i692 to i32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !alias.scope !14030, !noalias !14031
  %i.yx = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store ptr %1, ptr %i.yx, align 8, !alias.scope !14032, !noalias !14024
  %i.yy = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i32 1, ptr %i.yy, align 8, !alias.scope !14032, !noalias !14024
  %i.yz = getelementptr inbounds nuw i8, ptr %i.aa, i64 28
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i693, ptr %i.yz, align 4, !alias.scope !14032, !noalias !14024
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !14021
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(80) %1, i64 noundef 6)
          to label %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_10TypeWriterNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str.exit688.thread unwind label %bb.dl

_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_10TypeWriterNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str.exit688.thread: ; preds = %bb.dm
  %i.za = load i64, ptr %i.yp, align 8, !alias.scope !14033, !noalias !14024, !noundef !9 ; 2 uses
  %i.zb = icmp sgt i64 %i.za, -1
  tail call void @llvm.assume(i1 %i.zb), !noalias !14024
  %i.zc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.zd = load ptr, ptr %i.zc, align 8, !alias.scope !14033, !noalias !14024, !nonnull !9, !noundef !9
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zd, i64 %i.za
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.ze, ptr noundef nonnull readonly align 1 dereferenceable(6) @42, i64 6, i1 false), !noalias !14024
  %.pre.i.i.i683 = load i64, ptr %i.yp, align 8, !alias.scope !14033, !noalias !14024
  %i.zf = add i64 %.pre.i.i.i683, 6
  store i64 %i.zf, ptr %i.yp, align 8, !alias.scope !14033, !noalias !14024
  br label %bb.dp

bb.dn:                                            ; preds = %bb.dg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !alias.scope !14030, !noalias !14031
  %i.zg = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store ptr %1, ptr %i.zg, align 8, !alias.scope !14032, !noalias !14024
  %i.zh = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i32 0, ptr %i.zh, align 8, !alias.scope !14032, !noalias !14024
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !14021
  %i.zi = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.zj = load ptr, ptr %i.zi, align 8, !alias.scope !14034, !noalias !14024, !nonnull !9, !align !17, !noundef !9
  %i.zk = invoke noundef zeroext i1 @_RNvXsb_NtCs4NRVxsYgnAr_4core3fmtNtB5_9FormatterNtB5_5Write9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.zj, ptr noalias noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 6)
          to label %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_10TypeWriterNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str.exit688 unwind label %bb.dl

_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_10TypeWriterNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str.exit688: ; preds = %bb.dn
  br i1 %i.zk, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_10TypeWriterNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str.exit688
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display15TypeDetailGuardEBH_(ptr noalias noundef align 8 dereferenceable(40) %i.aa), !noalias !14024, !inline_history !13559
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !14018
  br label %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_10TypeWriterNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str.exit

bb.dp:                                            ; preds = %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_10TypeWriterNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str.exit688.thread, %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_10TypeWriterNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str.exit688
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display15TypeDetailGuardEBH_(ptr noalias noundef align 8 dereferenceable(40) %i.aa), !noalias !14024, !inline_history !13559
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !14018
  call void @llvm.experimental.noalias.scope.decl(metadata !14035)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !14036
  store i32 91, ptr %i.g, align 4, !noalias !14036
  call void @llvm.experimental.noalias.scope.decl(metadata !14037), !noalias !14024
  %i.zl = load i64, ptr %1, align 8, !range !18, !alias.scope !14038, !noalias !14024, !noundef !9
  %.not.i.i1027 = icmp eq i64 %i.zl, -1
  br i1 %.not.i.i1027, label %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display10TypeWriterNtNtCs4NRVxsYgnAr_4core3fmt5Write10write_charB8_.exit1030, label %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display10TypeWriterNtNtCs4NRVxsYgnAr_4core3fmt5Write10write_charB8_.exit1030.thread

_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display10TypeWriterNtNtCs4NRVxsYgnAr_4core3fmt5Write10write_charB8_.exit1030.thread: ; preds = %bb.dp
  call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(80) %1, i64 noundef 1), !noalias !14039
  %i.zm = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.zn = load i64, ptr %i.zm, align 8, !alias.scope !14040, !noalias !14024, !noundef !9 ; 2 uses
  %i.zo = icmp sgt i64 %i.zn, -1
  call void @llvm.assume(i1 %i.zo), !noalias !14024
  %i.zp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.zq = load ptr, ptr %i.zp, align 8, !alias.scope !14040, !noalias !14024, !nonnull !9, !noundef !9
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 %i.zn
  store i8 91, ptr %i.zr, align 1, !noalias !14024
  %.pre.i.i.i.i1028 = load i64, ptr %i.zm, align 8, !alias.scope !14040, !noalias !14024
  %i.zs = add i64 %.pre.i.i.i.i1028, 1
  store i64 %i.zs, ptr %i.zm, align 8, !alias.scope !14040, !noalias !14024
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !14036
  br label %bb.dq

_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display10TypeWriterNtNtCs4NRVxsYgnAr_4core3fmt5Write10write_charB8_.exit1030: ; preds = %bb.dp
  %i.zt = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.zu = load ptr, ptr %i.zt, align 8, !alias.scope !14038, !noalias !14024, !nonnull !9, !align !17, !noundef !9
  %i.zv = call noundef zeroext i1 @_RNvXsb_NtCs4NRVxsYgnAr_4core3fmtNtB5_9FormatterNtB5_5Write9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.zu, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 1), !noalias !14041
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !14036
  br i1 %i.zv, label %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_10TypeWriterNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str.exit, label %bb.dq

bb.dq:                                            ; preds = %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display10TypeWriterNtNtCs4NRVxsYgnAr_4core3fmt5Write10write_charB8_.exit1030.thread, %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display10TypeWriterNtNtCs4NRVxsYgnAr_4core3fmt5Write10write_charB8_.exit1030
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !14018
  call void @_RNvXsM_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB5_10TypeIsTypeNtB5_13TypeGuardLike13type_argument(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.z, i32 noundef range(i32 1, 0) %i.yh, i32 noundef %i.yj, ptr noundef nonnull %i.gh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.gj), !noalias !14042
  %i.zw = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 3 uses
  call fastcc void @_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_15DisplaySettings10singleline(ptr noalias noundef align 8 captures(none) dereferenceable(40) %i.zw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ym)
  %i.zx = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  store ptr %i.gh, ptr %i.zx, align 8, !alias.scope !14043, !noalias !14044
  %i.zy = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  store ptr %i.gj, ptr %i.zy, align 8, !alias.scope !14043, !noalias !14044
  %i.zz = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  store ptr %i.yl, ptr %i.zz, align 8, !alias.scope !14043, !noalias !14044
  %i.aaa = invoke noundef zeroext i1 @_RNvXse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_11DisplayTypeNtB5_11FmtDetailed12fmt_detailed(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.z, ptr noalias noundef nonnull align 8 dereferenceable(80) %1)
          to label %bb.ds unwind label %bb.dr, !noalias !14042, !inline_history !13559

bb.dr:                                            ; preds = %bb.dq
  %i.aab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display15DisplaySettingsEBH_(ptr noalias noundef align 8 dereferenceable(40) %i.zw)
          to label %common.resume1084 unwind label %bb.ed

bb.ds:                                            ; preds = %bb.dq
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display15DisplaySettingsEBH_(ptr noalias noundef align 8 dereferenceable(40) %i.zw), !noalias !14042
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !14018
  br i1 %i.aaa, label %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_10TypeWriterNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str.exit, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !14018
  call void @_RNvXsM_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB5_10TypeIsTypeNtB5_13TypeGuardLike10place_name(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.y, i32 noundef range(i32 1, 0) %i.yh, i32 noundef %i.yj, ptr noundef nonnull %i.gh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.gj), !noalias !14042, !inline_history !13559
  %i.aac = load i64, ptr %i.y, align 8, !range !18, !noalias !14018, !noundef !9
  %.not.i462 = icmp eq i64 %i.aac, -1
  br i1 %.not.i462, label %bb.eb, label %bb.du

bb.du:                                            ; preds = %bb.dt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !14018
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !noalias !14018
  %i.aad = load i64, ptr %1, align 8, !range !18, !alias.scope !14045, !noundef !9
  %.not.i678 = icmp eq i64 %i.aad, -1
  br i1 %.not.i678, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_10TypeWriter27set_invalid_type_annotation.exit679, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.aae = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i8 0, ptr %i.aae, align 8, !alias.scope !14045
  br label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_10TypeWriter27set_invalid_type_annotation.exit679

bb.dw:                                            ; preds = %bb.dy, %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_10TypeWriter27set_invalid_type_annotation.exit679
  %i.aaf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x) #39
          to label %common.resume1084 unwind label %bb.ed, !noalias !14042, !inline_history !13559

_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_10TypeWriter27set_invalid_type_annotation.exit679: ; preds = %bb.dv, %bb.du
  %i.aag = invoke noundef zeroext i1 @_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_10TypeWriterNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str(ptr noalias noundef nonnull align 8 dereferenceable(80) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 3)
          to label %bb.dx unwind label %bb.dw, !noalias !14042, !inline_history !13559

bb.dx:                                            ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_10TypeWriter27set_invalid_type_annotation.exit679
  br i1 %i.aag, label %bb.ec, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.aah = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aai = load ptr, ptr %i.aah, align 8, !noalias !14018, !nonnull !9, !noundef !9
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.aak = load i64, ptr %i.aaj, align 8, !noalias !14018, !noundef !9
  %i.aal = invoke noundef zeroext i1 @_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_10TypeWriterNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str(ptr noalias noundef nonnull align 8 dereferenceable(80) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aai, i64 noundef %i.aak)
          to label %bb.dz unwind label %bb.dw, !noalias !14042, !inline_history !13559

bb.dz:                                            ; preds = %bb.dy
  br i1 %i.aal, label %bb.ec, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x), !noalias !14042, !inline_history !13559
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !14018
  br label %bb.eb

bb.eb:                                            ; preds = %bb.dt, %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !14018
  %i.aam = call noundef zeroext i1 @_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_10TypeWriterNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str(ptr noalias noundef nonnull align 8 dereferenceable(80) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 1), !noalias !14042, !inline_history !13559
  br label %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_10TypeWriterNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str.exit

bb.ec:                                            ; preds = %bb.dz, %bb.dx
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x), !noalias !14042, !inline_history !13559
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !14018
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !14018
  br label %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_10TypeWriterNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str.exit

bb.ed:                                            ; preds = %bb.dr, %bb.dw, %bb.dl
  %i.aan = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #40, !noalias !14042, !inline_history !13559
  unreachable

bb.ee:                                            ; preds = %bb.a
  %i.aao = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aap = load i32, ptr %i.aao, align 4, !range !20, !noundef !9 ; 2 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aar = load i32, ptr %i.aaq, align 8, !noundef !9 ; 2 uses
  %i.aas = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aat = load ptr, ptr %i.aas, align 8, !nonnull !9, !align !13, !noundef !9
  %i.aau = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14046)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !14047
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14048)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14049)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !14050
  %i.aav = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 20, ptr %i.aav, align 8, !noalias !14051
  %.sroa.4905.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i8 31, ptr %.sroa.4905.0..sroa_idx, align 4, !noalias !14051
  store i64 -9223372036854775805, ptr %i.i, align 8, !noalias !14050
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14052), !noalias !14053
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14054), !noalias !14053
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14055), !noalias !14053
  %i.aaw = load i64, ptr %1, align 8, !range !18, !alias.scope !14056, !noalias !14053, !noundef !9
  %.not.i.i709 = icmp eq i64 %i.aaw, -1
  br i1 %.not.i.i709, label %bb.el, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.aax = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.aay = load i64, ptr %i.aax, align 8, !alias.scope !14056, !noalias !14053, !noundef !9 ; 2 uses
  %i.aaz = icmp ugt i64 %i.aay, 4294967295
  %i.aba = shl nuw i64 %i.aay, 32
  %.sroa.09.0.insert.insert.i.i.i710 = select i1 %i.aaz, i64 513, i64 %i.aba ; 2 uses
  %i.abb = trunc i64 %.sroa.09.0.insert.insert.i.i.i710 to i1
  br i1 %i.abb, label %bb.eg, label %bb.ek, !prof !15

bb.eg:                                            ; preds = %bb.ef
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !14057
  store i8 2, ptr %i.h, align 1, !noalias !14057
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 43, ptr noundef nonnull %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @73, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @570) #41
          to label %.noexc.i.i716 unwind label %bb.eh, !noalias !14057

.noexc.i.i716:                                    ; preds = %bb.eg
  unreachable

bb.eh:                                            ; preds = %bb.eg
  %i.abc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display10TypeDetailEBH_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i) #39
          to label %common.resume1084 unwind label %bb.ei, !noalias !14058

bb.ei:                                            ; preds = %bb.eh
  %i.abd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #40, !noalias !14058
  unreachable

bb.ej:                                            ; preds = %bb.el, %bb.ek
  %i.abe = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display15TypeDetailGuardEBH_(ptr noalias noundef align 8 dereferenceable(40) %i.w) #39
          to label %common.resume1084 unwind label %bb.fb, !noalias !14053, !inline_history !13592

bb.ek:                                            ; preds = %bb.ef
  %.sroa.6.0.extract.shift.i.i.i.i712 = lshr i64 %.sroa.09.0.insert.insert.i.i.i710, 32
  %.sroa.6.0.extract.trunc.i.i.i.i713 = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i.i712 to i32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !alias.scope !14059, !noalias !14060
  %i.abf = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store ptr %1, ptr %i.abf, align 8, !alias.scope !14061, !noalias !14053
  %i.abg = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store i32 1, ptr %i.abg, align 8, !alias.scope !14061, !noalias !14053
  %i.abh = getelementptr inbounds nuw i8, ptr %i.w, i64 28
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i713, ptr %i.abh, align 4, !alias.scope !14061, !noalias !14053
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !14050
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(80) %1, i64 noundef 9)
          to label %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_10TypeWriterNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str.exit708.thread unwind label %bb.ej

_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_10TypeWriterNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str.exit708.thread: ; preds = %bb.ek
  %i.abi = load i64, ptr %i.aax, align 8, !alias.scope !14062, !noalias !14053, !noundef !9 ; 2 uses
  %i.abj = icmp sgt i64 %i.abi, -1
  tail call void @llvm.assume(i1 %i.abj), !noalias !14053
  %i.abk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.abl = load ptr, ptr %i.abk, align 8, !alias.scope !14062, !noalias !14053, !nonnull !9, !noundef !9
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abl, i64 %i.abi
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.abm, ptr noundef nonnull readonly align 1 dereferenceable(9) @45, i64 9, i1 false), !noalias !14053
  %.pre.i.i.i703 = load i64, ptr %i.aax, align 8, !alias.scope !14062, !noalias !14053
  %i.abn = add i64 %.pre.i.i.i703, 9
  store i64 %i.abn, ptr %i.aax, align 8, !alias.scope !14062, !noalias !14053
  br label %bb.en

bb.el:                                            ; preds = %bb.ee
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !alias.scope !14059, !noalias !14060
  %i.abo = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store ptr %1, ptr %i.abo, align 8, !alias.scope !14061, !noalias !14053
  %i.abp = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store i32 0, ptr %i.abp, align 8, !alias.scope !14061, !noalias !14053
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !14050
  %i.abq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.abr = load ptr, ptr %i.abq, align 8, !alias.scope !14063, !noalias !14053, !nonnull !9, !align !17, !noundef !9
  %i.abs = invoke noundef zeroext i1 @_RNvXsb_NtCs4NRVxsYgnAr_4core3fmtNtB5_9FormatterNtB5_5Write9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.abr, ptr noalias noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 9)
          to label %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_10TypeWriterNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str.exit708 unwind label %bb.ej

_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_10TypeWriterNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str.exit708: ; preds = %bb.el
  br i1 %i.abs, label %bb.em, label %bb.en

bb.em:                                            ; preds = %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_10TypeWriterNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str.exit708
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display15TypeDetailGuardEBH_(ptr noalias noundef align 8 dereferenceable(40) %i.w), !noalias !14053, !inline_history !13592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !14047
  br label %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_10TypeWriterNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str.exit

bb.en:                                            ; preds = %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_10TypeWriterNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str.exit708.thread, %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_10TypeWriterNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str.exit708
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display15TypeDetailGuardEBH_(ptr noalias noundef align 8 dereferenceable(40) %i.w), !noalias !14053, !inline_history !13592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !14047
  call void @llvm.experimental.noalias.scope.decl(metadata !14064)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !14065
  store i32 91, ptr %i.f, align 4, !noalias !14065
  call void @llvm.experimental.noalias.scope.decl(metadata !14066), !noalias !14053
  %i.abt = load i64, ptr %1, align 8, !range !18, !alias.scope !14067, !noalias !14053, !noundef !9
  %.not.i.i1031 = icmp eq i64 %i.abt, -1
  br i1 %.not.i.i1031, label %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display10TypeWriterNtNtCs4NRVxsYgnAr_4core3fmt5Write10write_charB8_.exit1036, label %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display10TypeWriterNtNtCs4NRVxsYgnAr_4core3fmt5Write10write_charB8_.exit1036.thread

_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display10TypeWriterNtNtCs4NRVxsYgnAr_4core3fmt5Write10write_charB8_.exit1036.thread: ; preds = %bb.en
  call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(80) %1, i64 noundef 1), !noalias !14068
  %i.abu = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.abv = load i64, ptr %i.abu, align 8, !alias.scope !14069, !noalias !14053, !noundef !9 ; 2 uses
  %i.abw = icmp sgt i64 %i.abv, -1
  call void @llvm.assume(i1 %i.abw), !noalias !14053
  %i.abx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aby = load ptr, ptr %i.abx, align 8, !alias.scope !14069, !noalias !14053, !nonnull !9, !noundef !9
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aby, i64 %i.abv
  store i8 91, ptr %i.abz, align 1, !noalias !14053
  %.pre.i.i.i.i1033 = load i64, ptr %i.abu, align 8, !alias.scope !14069, !noalias !14053
  %i.aca = add i64 %.pre.i.i.i.i1033, 1
  store i64 %i.aca, ptr %i.abu, align 8, !alias.scope !14069, !noalias !14053
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !14065
  br label %bb.eo

_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display10TypeWriterNtNtCs4NRVxsYgnAr_4core3fmt5Write10write_charB8_.exit1036: ; preds = %bb.en
  %i.acb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.acc = load ptr, ptr %i.acb, align 8, !alias.scope !14067, !noalias !14053, !nonnull !9, !align !17, !noundef !9
  %i.acd = call noundef zeroext i1 @_RNvXsb_NtCs4NRVxsYgnAr_4core3fmtNtB5_9FormatterNtB5_5Write9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.acc, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 1), !noalias !14070
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !14065
  br i1 %i.acd, label %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_10TypeWriterNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str.exit, label %bb.eo

bb.eo:                                            ; preds = %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display10TypeWriterNtNtCs4NRVxsYgnAr_4core3fmt5Write10write_charB8_.exit1036.thread, %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display10TypeWriterNtNtCs4NRVxsYgnAr_4core3fmt5Write10write_charB8_.exit1036
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !14047
  call void @_RNvXsN_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB5_13TypeGuardTypeNtB5_13TypeGuardLike13type_argument(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.v, i32 noundef range(i32 1, 0) %i.aap, i32 noundef %i.aar, ptr noundef nonnull %i.gh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.gj), !noalias !14071
  %i.ace = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 3 uses
  call fastcc void @_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_15DisplaySettings10singleline(ptr noalias noundef align 8 captures(none) dereferenceable(40) %i.ace, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.aau)
  %i.acf = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  store ptr %i.gh, ptr %i.acf, align 8, !alias.scope !14072, !noalias !14073
  %i.acg = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  store ptr %i.gj, ptr %i.acg, align 8, !alias.scope !14072, !noalias !14073
  %i.ach = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  store ptr %i.aat, ptr %i.ach, align 8, !alias.scope !14072, !noalias !14073
  %i.aci = invoke noundef zeroext i1 @_RNvXse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_11DisplayTypeNtB5_11FmtDetailed12fmt_detailed(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(80) %1)
          to label %bb.eq unwind label %bb.ep, !noalias !14071, !inline_history !13592

bb.ep:                                            ; preds = %bb.eo
  %i.acj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display15DisplaySettingsEBH_(ptr noalias noundef align 8 dereferenceable(40) %i.ace)
          to label %common.resume1084 unwind label %bb.fb

bb.eq:                                            ; preds = %bb.eo
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display15DisplaySettingsEBH_(ptr noalias noundef align 8 dereferenceable(40) %i.ace), !noalias !14071
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !14047
  br i1 %i.aci, label %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_10TypeWriterNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str.exit, label %bb.er

bb.er:                                            ; preds = %bb.eq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !14047
  call void @_RNvXsN_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB5_13TypeGuardTypeNtB5_13TypeGuardLike10place_name(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.u, i32 noundef range(i32 1, 0) %i.aap, i32 noundef %i.aar, ptr noundef nonnull %i.gh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.gj), !noalias !14071, !inline_history !13592
  %i.ack = load i64, ptr %i.u, align 8, !range !18, !noalias !14047, !noundef !9
  %.not.i465 = icmp eq i64 %i.ack, -1
  br i1 %.not.i465, label %bb.ez, label %bb.es

bb.es:                                            ; preds = %bb.er
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !14047
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !noalias !14047
  %i.acl = load i64, ptr %1, align 8, !range !18, !alias.scope !14074, !noundef !9
  %.not.i698 = icmp eq i64 %i.acl, -1
  br i1 %.not.i698, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_10TypeWriter27set_invalid_type_annotation.exit699, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.acm = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i8 0, ptr %i.acm, align 8, !alias.scope !14074
  br label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_10TypeWriter27set_invalid_type_annotation.exit699

bb.eu:                                            ; preds = %bb.ew, %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_10TypeWriter27set_invalid_type_annotation.exit699
  %i.acn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t) #39
          to label %common.resume1084 unwind label %bb.fb, !noalias !14071, !inline_history !13592

_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_10TypeWriter27set_invalid_type_annotation.exit699: ; preds = %bb.et, %bb.es
  %i.aco = invoke noundef zeroext i1 @_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_10TypeWriterNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str(ptr noalias noundef nonnull align 8 dereferenceable(80) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 3)
          to label %bb.ev unwind label %bb.eu, !noalias !14071, !inline_history !13592

bb.ev:                                            ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_10TypeWriter27set_invalid_type_annotation.exit699
  br i1 %i.aco, label %bb.fa, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.acp = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.acq = load ptr, ptr %i.acp, align 8, !noalias !14047, !nonnull !9, !noundef !9
  %i.acr = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.acs = load i64, ptr %i.acr, align 8, !noalias !14047, !noundef !9
  %i.act = invoke noundef zeroext i1 @_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_10TypeWriterNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str(ptr noalias noundef nonnull align 8 dereferenceable(80) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.acq, i64 noundef %i.acs)
          to label %bb.ex unwind label %bb.eu, !noalias !14071, !inline_history !13592

bb.ex:                                            ; preds = %bb.ew
  br i1 %i.act, label %bb.fa, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t), !noalias !14071, !inline_history !13592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !14047
  br label %bb.ez

bb.ez:                                            ; preds = %bb.er, %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !14047
  %i.acu = call noundef zeroext i1 @_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_10TypeWriterNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str(ptr noalias noundef nonnull align 8 dereferenceable(80) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 1), !noalias !14071, !inline_history !13592
  br label %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_10TypeWriterNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str.exit

bb.fa:                                            ; preds = %bb.ex, %bb.ev
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t), !noalias !14071, !inline_history !13592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !14047
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !14047
  br label %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_10TypeWriterNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str.exit

bb.fb:                                            ; preds = %bb.ep, %bb.eu, %bb.ej
  %i.acv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #40, !noalias !14071, !inline_history !13592
  unreachable

bb.fc:                                            ; preds = %bb.a
  %i.acw = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.acx = load i32, ptr %i.acw, align 4, !range !20, !noundef !9
  %i.acy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.acz = load i32, ptr %i.acy, align 8, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14075)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14076)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !14077
  %i.ada = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 20, ptr %i.ada, align 8, !noalias !14078
  %.sroa.4871.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i8 4, ptr %.sroa.4871.0..sroa_idx, align 4, !noalias !14078
  store i64 -9223372036854775805, ptr %i.s, align 8, !noalias !14077
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14079)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14080)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14081)
  %i.adb = load i64, ptr %1, align 8, !range !18, !alias.scope !14082, !noundef !9
  %.not.i.i467 = icmp eq i64 %i.adb, -1
  br i1 %.not.i.i467, label %bb.tq, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.adc = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.add = load i64, ptr %i.adc, align 8, !alias.scope !14082, !noundef !9 ; 2 uses
  %i.ade = icmp ugt i64 %i.add, 4294967295
  %i.adf = shl nuw i64 %i.add, 32
  %.sroa.09.0.insert.insert.i.i.i468 = select i1 %i.ade, i64 513, i64 %i.adf ; 2 uses
  %i.adg = trunc i64 %.sroa.09.0.insert.insert.i.i.i468 to i1
  br i1 %i.adg, label %bb.fe, label %bb.tp, !prof !15

bb.fe:                                            ; preds = %bb.fd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !14083
  store i8 2, ptr %i.r, align 1, !noalias !14083
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 43, ptr noundef nonnull %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @73, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @570) #41
          to label %.noexc.i.i474 unwind label %bb.ff, !noalias !14083

.noexc.i.i474:                                    ; preds = %bb.fe
  unreachable

bb.ff:                                            ; preds = %bb.fe
  %i.adh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display10TypeDetailEBH_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s) #39
          to label %common.resume1084 unwind label %bb.fg, !noalias !14084

bb.fg:                                            ; preds = %bb.ff
  %i.adi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #40, !noalias !14084
  unreachable

bb.fh:                                            ; preds = %bb.a
  %i.adj = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.adk = load i32, ptr %i.adj, align 4, !range !12, !noundef !9 ; 2 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.adm = load i32, ptr %i.adl, align 8          ; 3 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ado = load i32, ptr %i.adn, align 4          ; 3 uses
  switch i32 %i.adk, label %bb.ua [
    i32 -2, label %bb.tx
    i32 -1, label %bb.tz
  ]

bb.fi:                                            ; preds = %bb.a
  %i.adp = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
end_hunk_0
