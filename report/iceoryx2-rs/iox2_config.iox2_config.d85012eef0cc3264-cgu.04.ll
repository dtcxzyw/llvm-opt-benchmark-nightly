Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iox2_config.iox2_config.d85012eef0cc3264-cgu.04?download=true
inline.NumInlined: 66
inline.NumDeleted: 22
begin_hunk_0_@_RNvNtNtCsizqwQrikMeu_11iox2_config7command7explain7explain:bb.a
  store ptr @125, ptr %.sroa.4422.0..sroa_idx.i, align 8, !noalias !39
  %.sroa.5423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.rj, i64 1184
  store i64 52, ptr %.sroa.5423.0..sroa_idx.i, align 8, !noalias !39
  %.sroa.6424.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.rj, i64 1192
  store ptr @74, ptr %.sroa.6424.0..sroa_idx.i, align 8, !noalias !39
  %.sroa.7425.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.rj, i64 1200
  store i64 31, ptr %.sroa.7425.0..sroa_idx.i, align 8, !noalias !39
  %.sroa.8426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.rj, i64 1208
  store ptr @126, ptr %.sroa.8426.0..sroa_idx.i, align 8, !noalias !39
  %.sroa.9427.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.rj, i64 1216
  store i64 102, ptr %.sroa.9427.0..sroa_idx.i, align 8, !noalias !39
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0421.i), !noalias !37
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0414.i), !noalias !37
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0386.i), !noalias !37
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0379.i), !noalias !37
  call void @_RNvCsicpYtSlSgpD_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #7, !noalias !39
  %i.ye = call noundef align 8 dereferenceable_or_null(144) ptr @_RNvCsicpYtSlSgpD_7___rustc12___rust_alloc(i64 noundef range(i64 144, 1225) 144, i64 noundef 8) #7, !noalias !39 ; 20 uses
  %i.yf = icmp eq ptr %i.ye, null
  br i1 %i.yf, label %bb.eb, label %_RNvNtCsbqH9stoieM8_5alloc5boxed14box_new_uninit.exit1004.i, !prof !38

bb.eb:                                            ; preds = %.split885.i
  call void @_RNvNtCsbqH9stoieM8_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 144) #8, !noalias !39
  unreachable

_RNvNtCsbqH9stoieM8_5alloc5boxed14box_new_uninit.exit1004.i: ; preds = %.split885.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !37
  %i.yg = load i64, ptr %.sroa.66.0..sroa_idx, align 8, !alias.scope !36, !noundef !5
  %i.yh = call { ptr, i64 } @_RNvMsk_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impj4__fmt(i64 noundef %i.yg, ptr noalias nofree noundef nonnull %i.l, i64 noundef 20) #7, !noalias !39 ; 2 uses
  %i.yi = extractvalue { ptr, i64 } %i.yh, 0
  %i.yj = extractvalue { ptr, i64 } %i.yh, 1      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !37
  call void @_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsizqwQrikMeu_11iox2_config(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, i64 noundef %i.yj, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1) #7, !noalias !39
  %i.yk = load i64, ptr %i.k, align 8, !range !40, !noalias !37, !noundef !5
  %i.yl = trunc nuw i64 %i.yk to i1
  %i.ym = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.yn = load i64, ptr %i.ym, align 8, !range !41, !noalias !37, !noundef !5 ; 3 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  br i1 %i.yl, label %bb.ed, label %bb.ee, !prof !38

bb.ec:                                            ; preds = %bb.ea
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.xm, ptr align 1 %i.xe, i64 %i.xf, i1 false), !noalias !39
  br label %.split885.i

bb.ed:                                            ; preds = %_RNvNtCsbqH9stoieM8_5alloc5boxed14box_new_uninit.exit1004.i
  %i.yp = load i64, ptr %i.yo, align 8, !noalias !37
  call void @_RNvNtCsbqH9stoieM8_5alloc7raw_vec12handle_error(i64 noundef %i.yn, i64 %i.yp) #8, !noalias !39
  unreachable

bb.ee:                                            ; preds = %_RNvNtCsbqH9stoieM8_5alloc5boxed14box_new_uninit.exit1004.i
  %i.yq = load ptr, ptr %i.yo, align 8, !noalias !37, !nonnull !5, !noundef !5 ; 2 uses
  %i.yr = icmp ule i64 %i.yj, %i.yn
  call void @llvm.assume(i1 %i.yr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !37
  %.not940.i = icmp eq i64 %i.yj, 0
  br i1 %.not940.i, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.eg, %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !37
  %i.ys = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !36, !noundef !5
  %i.yt = call { ptr, i64 } @_RNvMsk_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impj4__fmt(i64 noundef %i.ys, ptr noalias nofree noundef nonnull %i.j, i64 noundef 20) #7, !noalias !39 ; 2 uses
  %i.yu = extractvalue { ptr, i64 } %i.yt, 0
  %i.yv = extractvalue { ptr, i64 } %i.yt, 1      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !37
  call void @_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsizqwQrikMeu_11iox2_config(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, i64 noundef %i.yv, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1) #7, !noalias !39
  %i.yw = load i64, ptr %i.i, align 8, !range !40, !noalias !37, !noundef !5
  %i.yx = trunc nuw i64 %i.yw to i1
  %i.yy = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.yz = load i64, ptr %i.yy, align 8, !range !41, !noalias !37, !noundef !5 ; 3 uses
  %i.za = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  br i1 %i.yx, label %bb.eh, label %bb.ei, !prof !38

bb.eg:                                            ; preds = %bb.ee
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.yq, ptr align 1 %i.yi, i64 %i.yj, i1 false), !noalias !39
  br label %bb.ef

bb.eh:                                            ; preds = %bb.ef
  %i.zb = load i64, ptr %i.za, align 8, !noalias !37
  call void @_RNvNtCsbqH9stoieM8_5alloc7raw_vec12handle_error(i64 noundef %i.yz, i64 %i.zb) #8, !noalias !39
  unreachable

bb.ei:                                            ; preds = %bb.ef
  %i.zc = load ptr, ptr %i.za, align 8, !noalias !37, !nonnull !5, !noundef !5 ; 2 uses
  %i.zd = icmp ule i64 %i.yv, %i.yz
  call void @llvm.assume(i1 %i.zd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !37
  %.not941.i = icmp eq i64 %i.yv, 0
  br i1 %.not941.i, label %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsizqwQrikMeu_11iox2_config7command7explain7SectionENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextB12_.exit.lr.ph, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.zc, ptr align 1 %i.yu, i64 %i.yv, i1 false), !noalias !39
  br label %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsizqwQrikMeu_11iox2_config7command7explain7SectionENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextB12_.exit.lr.ph

_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsizqwQrikMeu_11iox2_config7command7explain7SectionENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextB12_.exit.lr.ph: ; preds = %bb.ej, %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !37
  store i64 %i.yn, ptr %i.ye, align 8, !noalias !39
  %.sroa.0434.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ye, i64 8
  store ptr %i.yq, ptr %.sroa.0434.sroa.4.0..sroa_idx.i, align 8, !noalias !39
  %.sroa.0434.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ye, i64 16
  store i64 %i.yj, ptr %.sroa.0434.sroa.5.0..sroa_idx.i, align 8, !noalias !39
  %.sroa.4435.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ye, i64 24
  store ptr @128, ptr %.sroa.4435.0..sroa_idx.i, align 8, !noalias !39
  %.sroa.5436.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ye, i64 32
  store i64 31, ptr %.sroa.5436.0..sroa_idx.i, align 8, !noalias !39
  %.sroa.6437.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ye, i64 40
  store ptr @8, ptr %.sroa.6437.0..sroa_idx.i, align 8, !noalias !39
  %.sroa.7438.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ye, i64 48
  store i64 3, ptr %.sroa.7438.0..sroa_idx.i, align 8, !noalias !39
  %.sroa.8439.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ye, i64 56
  store ptr @129, ptr %.sroa.8439.0..sroa_idx.i, align 8, !noalias !39
  %.sroa.9440.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ye, i64 64
  store i64 40, ptr %.sroa.9440.0..sroa_idx.i, align 8, !noalias !39
  %i.ze = getelementptr inbounds nuw i8, ptr %i.ye, i64 72
  store i64 %i.yz, ptr %i.ze, align 8, !noalias !39
  %.sroa.0441.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ye, i64 80
  store ptr %i.zc, ptr %.sroa.0441.sroa.4.0..sroa_idx.i, align 8, !noalias !39
  %.sroa.0441.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ye, i64 88
  store i64 %i.yv, ptr %.sroa.0441.sroa.5.0..sroa_idx.i, align 8, !noalias !39
  %.sroa.4442.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ye, i64 96
  store ptr @130, ptr %.sroa.4442.0..sroa_idx.i, align 8, !noalias !39
  %.sroa.5443.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ye, i64 104
  store i64 29, ptr %.sroa.5443.0..sroa_idx.i, align 8, !noalias !39
  %.sroa.6444.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ye, i64 112
  store ptr @8, ptr %.sroa.6444.0..sroa_idx.i, align 8, !noalias !39
  %.sroa.7445.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ye, i64 120
  store i64 3, ptr %.sroa.7445.0..sroa_idx.i, align 8, !noalias !39
  %.sroa.8446.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ye, i64 128
  store ptr @131, ptr %.sroa.8446.0..sroa_idx.i, align 8, !noalias !39
  %.sroa.9447.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ye, i64 136
  store i64 115, ptr %.sroa.9447.0..sroa_idx.i, align 8, !noalias !39
  store i64 4, ptr %i.ds, align 8, !noalias !39
  %.sroa.0.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store ptr %i.du, ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 8, !noalias !39
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  store i64 4, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 8, !noalias !39
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  store ptr @12, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !39
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 32
  store i64 6, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !39
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ds, i64 40
  store i64 8, ptr %i.zf, align 8, !noalias !39
  %.sroa.027.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 48
  store ptr %i.fa, ptr %.sroa.027.sroa.4.0..sroa_idx.i, align 8, !noalias !39
  %.sroa.027.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 56
  store i64 8, ptr %.sroa.027.sroa.5.0..sroa_idx.i, align 8, !noalias !39
  %.sroa.428.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 64
  store ptr @32, ptr %.sroa.428.0..sroa_idx.i, align 8, !noalias !39
  %.sroa.529.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 72
  store i64 12, ptr %.sroa.529.0..sroa_idx.i, align 8, !noalias !39
  %i.zg = getelementptr inbounds nuw i8, ptr %i.ds, i64 80
  store i64 9, ptr %i.zg, align 8, !noalias !39
  %.sroa.089.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 88
  store ptr %i.gr, ptr %.sroa.089.sroa.4.0..sroa_idx.i, align 8, !noalias !39
  %.sroa.089.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 96
  store i64 9, ptr %.sroa.089.sroa.5.0..sroa_idx.i, align 8, !noalias !39
  %.sroa.490.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 104
  store ptr @51, ptr %.sroa.490.0..sroa_idx.i, align 8, !noalias !39
  %.sroa.591.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 112
  store i64 15, ptr %.sroa.591.0..sroa_idx.i, align 8, !noalias !39
  %i.zh = getelementptr inbounds nuw i8, ptr %i.ds, i64 120
  store i64 11, ptr %i.zh, align 8, !noalias !39
  %.sroa.0158.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 128
  store ptr %i.hk, ptr %.sroa.0158.sroa.4.0..sroa_idx.i, align 8, !noalias !39
  %.sroa.0158.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 136
  store i64 11, ptr %.sroa.0158.sroa.5.0..sroa_idx.i, align 8, !noalias !39
  %.sroa.4159.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 144
  store ptr @76, ptr %.sroa.4159.0..sroa_idx.i, align 8, !noalias !39
  %.sroa.5160.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 152
  store i64 45, ptr %.sroa.5160.0..sroa_idx.i, align 8, !noalias !39
  %i.zi = getelementptr inbounds nuw i8, ptr %i.ds, i64 160
  store i64 8, ptr %i.zi, align 8, !noalias !39
  %.sroa.0241.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 168
  store ptr %i.mb, ptr %.sroa.0241.sroa.4.0..sroa_idx.i, align 8, !noalias !39
  %.sroa.0241.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 176
  store i64 8, ptr %.sroa.0241.sroa.5.0..sroa_idx.i, align 8, !noalias !39
  %.sroa.4242.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 184
  store ptr @94, ptr %.sroa.4242.0..sroa_idx.i, align 8, !noalias !39
  %.sroa.5243.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 192
  store i64 33, ptr %.sroa.5243.0..sroa_idx.i, align 8, !noalias !39
  %i.zj = getelementptr inbounds nuw i8, ptr %i.ds, i64 200
  store i64 17, ptr %i.zj, align 8, !noalias !39
  %.sroa.0303.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 208
  store ptr %i.rj, ptr %.sroa.0303.sroa.4.0..sroa_idx.i, align 8, !noalias !39
  %.sroa.0303.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 216
  store i64 17, ptr %.sroa.0303.sroa.5.0..sroa_idx.i, align 8, !noalias !39
  %.sroa.4304.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 224
  store ptr @127, ptr %.sroa.4304.0..sroa_idx.i, align 8, !noalias !39
  %.sroa.5305.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 232
  store i64 44, ptr %.sroa.5305.0..sroa_idx.i, align 8, !noalias !39
  %i.zk = getelementptr inbounds nuw i8, ptr %i.ds, i64 240
  store i64 2, ptr %i.zk, align 8, !noalias !39
  %.sroa.0428.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 248
  store ptr %i.ye, ptr %.sroa.0428.sroa.4.0..sroa_idx.i, align 8, !noalias !39
  %.sroa.0428.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 256
  store i64 2, ptr %.sroa.0428.sroa.5.0..sroa_idx.i, align 8, !noalias !39
  %.sroa.4429.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 264
  store ptr @132, ptr %.sroa.4429.0..sroa_idx.i, align 8, !noalias !39
  %.sroa.5430.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 272
  store i64 38, ptr %.sroa.5430.0..sroa_idx.i, align 8, !noalias !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq)
  %i.zl = getelementptr inbounds nuw i8, ptr %i.ds, i64 280 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dp)
  store ptr %i.ds, ptr %i.dp, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  store i64 7, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  store ptr %i.zl, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx101 = getelementptr inbounds nuw i8, ptr %i.do, i64 8 ; 2 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.zn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.zo = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.zp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 3 uses
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.di, i64 24 ; 2 uses
  %.sroa.7106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dh, i64 8 ; 2 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.zr = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.zs = getelementptr inbounds nuw i8, ptr %i.dh, i64 40
  %i.zt = getelementptr inbounds nuw i8, ptr %i.dh, i64 48
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.zu = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.zv = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.zw = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.zx = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.zy = getelementptr inbounds nuw i8, ptr %i.dh, i64 56
  %i.zz = getelementptr inbounds nuw i8, ptr %i.dh, i64 64
  %.sroa.478.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  br label %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsizqwQrikMeu_11iox2_config7command7explain7SectionENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextB12_.exit

_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsizqwQrikMeu_11iox2_config7command7explain7SectionENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextB12_.exit: ; preds = %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsizqwQrikMeu_11iox2_config7command7explain7SectionENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextB12_.exit.lr.ph, %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsizqwQrikMeu_11iox2_config7command7explain5FieldENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread
  %.idx153 = phi i64 [ 0, %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsizqwQrikMeu_11iox2_config7command7explain7SectionENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextB12_.exit.lr.ph ], [ %.add, %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsizqwQrikMeu_11iox2_config7command7explain5FieldENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread ] ; 2 uses
  %.ptr = getelementptr inbounds nuw i8, ptr %i.ds, i64 %.idx153 ; 2 uses
  %.add = add nuw nsw i64 %.idx153, 40            ; 3 uses
  %.sroa.099.0.copyload100 = load i64, ptr %.ptr, align 8, !noalias !61 ; 2 uses
  %.not = icmp eq i64 %.sroa.099.0.copyload100, -1
  br i1 %.not, label %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsizqwQrikMeu_11iox2_config7command7explain7SectionENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread.split.loop.exit, label %.split

.split:                                           ; preds = %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsizqwQrikMeu_11iox2_config7command7explain7SectionENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextB12_.exit
  %.sroa.7.0..sroa_idx102 = getelementptr inbounds nuw i8, ptr %.ptr, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do)
  store i64 %.sroa.099.0.copyload100, ptr %i.do, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx101, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx102, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk)
  store ptr %i.zm, ptr %i.dk, align 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsizqwQrikMeu_11iox2_config, ptr %.sroa.440.0..sroa_idx, align 8
  call void @_RNvNvNtCsbqH9stoieM8_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.dl, ptr noundef nonnull @133, ptr noundef nonnull %i.dk) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dm, ptr noundef nonnull align 8 dereferenceable(24) %i.dl, i64 24, i1 false)
  %i.aaa = load ptr, ptr %i.zn, align 8, !nonnull !5, !noundef !5
  %i.aab = load i64, ptr %i.zo, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  call void @_RINvXs4_Csjtvvqn3bt1R_7coloredReNtB6_8Colorize5colorNtNtB6_5color5ColorECsizqwQrikMeu_11iox2_config(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.dn, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aaa, i64 noundef %i.aab, i32 10) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj)
  store ptr %i.dn, ptr %i.dj, align 8
  store ptr @_RNvXs5_Csjtvvqn3bt1R_7coloredNtB5_13ColoredStringNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.448.0..sroa_idx, align 8
  call void @_RNvNtNtCsigunbJSLHCW_3std2io5stdio6__print(ptr noundef nonnull @134, ptr noundef nonnull %i.dj) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj)
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsizqwQrikMeu_11iox2_config(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.dn) #7
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsizqwQrikMeu_11iox2_config(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.dn) #7
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsizqwQrikMeu_11iox2_config(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dm) #7
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsizqwQrikMeu_11iox2_config(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dm) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn)
  %i.aac = load ptr, ptr %.sroa.7.0..sroa_idx101, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.aad = load i64, ptr %i.do, align 8, !range !43, !noundef !5
  %i.aae = load i64, ptr %i.zp, align 8, !noundef !5 ; 3 uses
  %i.aaf = icmp ult i64 %i.aae, 128102389400760776
  call void @llvm.assume(i1 %i.aaf)
  %.idx = mul nuw nsw i64 %i.aae, 72
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aac, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di)
  store ptr %i.aac, ptr %i.di, align 8
  store ptr %i.aac, ptr %.sroa.42.0..sroa_idx, align 8
  store i64 %i.aad, ptr %.sroa.53.0..sroa_idx, align 8
  store ptr %i.aag, ptr %.sroa.64.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7106)
  %i.aah = icmp eq i64 %i.aae, 0
  br i1 %i.aah, label %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsizqwQrikMeu_11iox2_config7command7explain5FieldENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread, label %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsizqwQrikMeu_11iox2_config7command7explain5FieldENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextB12_.exit

_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsizqwQrikMeu_11iox2_config7command7explain7SectionENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread.split.loop.exit: ; preds = %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsizqwQrikMeu_11iox2_config7command7explain7SectionENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextB12_.exit
  %.ptr156.le = getelementptr inbounds nuw i8, ptr %i.ds, i64 %.add
  br label %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsizqwQrikMeu_11iox2_config7command7explain7SectionENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread

_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsizqwQrikMeu_11iox2_config7command7explain7SectionENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread: ; preds = %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsizqwQrikMeu_11iox2_config7command7explain5FieldENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread, %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsizqwQrikMeu_11iox2_config7command7explain7SectionENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread.split.loop.exit
  %.lcssa = phi ptr [ %.ptr156.le, %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsizqwQrikMeu_11iox2_config7command7explain7SectionENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread.split.loop.exit ], [ %i.zl, %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsizqwQrikMeu_11iox2_config7command7explain5FieldENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread ]
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store ptr %.lcssa, ptr %.sroa.4.0..sroa_idx, align 8
  call void @_RNvXse_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsizqwQrikMeu_11iox2_config7command7explain7SectionENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.dp) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp)
  ret ptr null

_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsizqwQrikMeu_11iox2_config7command7explain5FieldENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextB12_.exit: ; preds = %.split, %.split92
  %i.aai = phi ptr [ %i.aav, %.split92 ], [ %i.aac, %.split ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !62)
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aai, i64 72
  store ptr %i.aaj, ptr %.sroa.42.0..sroa_idx, align 8, !alias.scope !62
  %.sroa.0104.0.copyload105 = load i64, ptr %i.aai, align 8, !noalias !62 ; 2 uses
  %.sroa.7106.0..sroa_idx107 = getelementptr inbounds nuw i8, ptr %i.aai, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7106, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7106.0..sroa_idx107, i64 64, i1 false), !noalias !62
  %.not95 = icmp eq i64 %.sroa.0104.0.copyload105, -1
  br i1 %.not95, label %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsizqwQrikMeu_11iox2_config7command7explain5FieldENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread, label %.split92

.split92:                                         ; preds = %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsizqwQrikMeu_11iox2_config7command7explain5FieldENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextB12_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh)
  store i64 %.sroa.0104.0.copyload105, ptr %i.dh, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7106.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7106, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg)
  %i.aak = load ptr, ptr %i.zq, align 8, !nonnull !5, !noundef !5
  %i.aal = load i64, ptr %i.zr, align 8, !noundef !5
  call void @_RINvXs4_Csjtvvqn3bt1R_7coloredReNtB6_8Colorize5colorNtNtB6_5color5ColorECsizqwQrikMeu_11iox2_config(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.dg, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aak, i64 noundef %i.aal, i32 12) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df)
  %i.aam = load ptr, ptr %i.zs, align 8, !nonnull !5, !noundef !5
  %i.aan = load i64, ptr %i.zt, align 8, !noundef !5
  call void @_RINvXs4_Csjtvvqn3bt1R_7coloredReNtB6_8Colorize5colorNtNtB6_5color5ColorECsizqwQrikMeu_11iox2_config(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.df, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aam, i64 noundef %i.aan, i32 9) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.de)
  store ptr %i.dg, ptr %i.de, align 8
  store ptr @_RNvXs5_Csjtvvqn3bt1R_7coloredNtB5_13ColoredStringNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.456.0..sroa_idx, align 8
  store ptr %i.df, ptr %i.zu, align 8
  store ptr @_RNvXs5_Csjtvvqn3bt1R_7coloredNtB5_13ColoredStringNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.460.0..sroa_idx, align 8
  call void @_RNvNtNtCsigunbJSLHCW_3std2io5stdio6__print(ptr noundef nonnull @135, ptr noundef nonnull %i.de) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de)
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsizqwQrikMeu_11iox2_config(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.df) #7
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsizqwQrikMeu_11iox2_config(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.df) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df)
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsizqwQrikMeu_11iox2_config(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.dg) #7
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsizqwQrikMeu_11iox2_config(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.dg) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.db)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da)
  %i.aao = load ptr, ptr %.sroa.7106.0..sroa_idx, align 8, !nonnull !5, !noundef !5
  %i.aap = load i64, ptr %i.zv, align 8, !noundef !5
  call void @_RINvXs4_Csjtvvqn3bt1R_7coloredReNtB6_8Colorize5colorNtNtB6_5color5ColorECsizqwQrikMeu_11iox2_config(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.da, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aao, i64 noundef %i.aap, i32 15) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz)
  store ptr %i.da, ptr %i.cz, align 8
  store ptr @_RNvXs5_Csjtvvqn3bt1R_7coloredNtB5_13ColoredStringNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.466.0..sroa_idx, align 8
  call void @_RNvNvNtCsbqH9stoieM8_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.db, ptr noundef nonnull @136, ptr noundef nonnull %i.cz) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsizqwQrikMeu_11iox2_config(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.da) #7
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsizqwQrikMeu_11iox2_config(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.da) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dc, ptr noundef nonnull align 8 dereferenceable(24) %i.db, i64 24, i1 false)
  %i.aaq = load ptr, ptr %i.zw, align 8, !nonnull !5, !noundef !5
  %i.aar = load i64, ptr %i.zx, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db)
  call void @_RINvXs4_Csjtvvqn3bt1R_7coloredReNtB6_8Colorize5colorNtNtB6_5color5ColorECsizqwQrikMeu_11iox2_config(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.dd, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aaq, i64 noundef %i.aar, i32 11) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy)
  store ptr %i.dd, ptr %i.cy, align 8
  store ptr @_RNvXs5_Csjtvvqn3bt1R_7coloredNtB5_13ColoredStringNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.474.0..sroa_idx, align 8
  call void @_RNvNtNtCsigunbJSLHCW_3std2io5stdio6__print(ptr noundef nonnull @137, ptr noundef nonnull %i.cy) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsizqwQrikMeu_11iox2_config(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.dd) #7
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsizqwQrikMeu_11iox2_config(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.dd) #7
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsizqwQrikMeu_11iox2_config(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dc) #7
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsizqwQrikMeu_11iox2_config(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dc) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx)
  %i.aas = load ptr, ptr %i.zy, align 8, !nonnull !5, !noundef !5
  %i.aat = load i64, ptr %i.zz, align 8, !noundef !5
  call void @_RNvXs4_Csjtvvqn3bt1R_7coloredReNtB5_8Colorize6italic(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.cx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aas, i64 noundef %i.aat) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw)
  store ptr %i.cx, ptr %i.cw, align 8
  store ptr @_RNvXs5_Csjtvvqn3bt1R_7coloredNtB5_13ColoredStringNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.478.0..sroa_idx, align 8
  call void @_RNvNtNtCsigunbJSLHCW_3std2io5stdio6__print(ptr noundef nonnull @137, ptr noundef nonnull %i.cw) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsizqwQrikMeu_11iox2_config(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.cx) #7
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsizqwQrikMeu_11iox2_config(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.cx) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx)
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsizqwQrikMeu_11iox2_config(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.dh) #7
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsizqwQrikMeu_11iox2_config(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.dh) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7106)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7106)
  %i.aau = load ptr, ptr %.sroa.64.0..sroa_idx, align 8, !alias.scope !63, !nonnull !5, !noundef !5
  %i.aav = load ptr, ptr %.sroa.42.0..sroa_idx, align 8, !alias.scope !63, !nonnull !5, !noundef !5 ; 2 uses
  %i.aaw = icmp eq ptr %i.aav, %i.aau
  br i1 %i.aaw, label %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsizqwQrikMeu_11iox2_config7command7explain5FieldENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread, label %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsizqwQrikMeu_11iox2_config7command7explain5FieldENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextB12_.exit

_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsizqwQrikMeu_11iox2_config7command7explain5FieldENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread: ; preds = %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsizqwQrikMeu_11iox2_config7command7explain5FieldENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextB12_.exit, %.split92, %.split
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7106)
  call void @_RNvXse_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsizqwQrikMeu_11iox2_config7command7explain5FieldENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.di) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  %i.aax = icmp eq i64 %.add, 280
  br i1 %i.aax, label %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsizqwQrikMeu_11iox2_config7command7explain7SectionENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread, label %_RNvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsizqwQrikMeu_11iox2_config7command7explain7SectionENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextB12_.exit
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1_NtNtCsg6ZEkMtNi4J_8iceoryx24port21backpressure_strategyNtB5_20BackpressureStrategyNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !6, !noundef !5
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %. = select i1 %i.b, i64 11, i64 19
  %.1 = select i1 %i.b, ptr @139, ptr @138
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.1, i64 noundef %.) #7
  ret i1 %i.c
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsh_NtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocatorNtB5_18AllocationStrategyNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !64, !noundef !5 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsh_NtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocatorNtB5_18AllocationStrategyNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXsh_NtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocatorNtB5_18AllocationStrategyNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt.3, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext) #7
  ret i1 %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsizqwQrikMeu_11iox2_config(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsizqwQrikMeu_11iox2_config(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsizqwQrikMeu_11iox2_config7command7explain5FieldENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsizqwQrikMeu_11iox2_config7command7explain7SectionENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNvNtCsbqH9stoieM8_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsa_NtCs8Chj7Szqq0n_4core4timeNtB5_8DurationNtNtB7_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare { ptr, i64 } @_RNvMsk_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impj4__fmt(i64 noundef, ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsizqwQrikMeu_11iox2_config(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsbqH9stoieM8_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #4

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsicpYtSlSgpD_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsicpYtSlSgpD_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #5

; Function Attrs: cold minsize noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsbqH9stoieM8_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #4

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtRNtNtCs8tG85QUCESg_24iceoryx2_bb_system_types4path4PathNtB6_7Display3fmtCsizqwQrikMeu_11iox2_config(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsm_NtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_nameNtB5_8FileNameNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(264), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare { ptr, i64 } @_RNvMsf_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impy4__fmt(i64 noundef, ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare { ptr, i64 } @_RNvMsa_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impm4__fmt(i32 noundef, ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtCs8tG85QUCESg_24iceoryx2_bb_system_types4pathNtB5_4PathNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(264), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtCs8Chj7Szqq0n_4core3fmtbNtB5_7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXs2_NtCsg6ZEkMtNi4J_8iceoryx26configNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core7default7Default7default(ptr dead_on_unwind noalias nofree noundef writable sret([4256 x i8]) align 8 captures(none) dereferenceable(4256)) unnamed_addr #0

end_hunk_0
