Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/just.just.5035f528a4e5d8da-cgu.0?download=true
inline.NumInlined: 1390
inline.NumDeleted: 637
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RNvCs6SXwsBSuFuw_4just4main:bb.a
_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i: ; preds = %bb.w
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !2998
  %i.di = call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.dg, i64 noundef range(i64 1, 9) 8) #26, !noalias !2998 ; 2 uses
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i, %bb.v
  %.sroa.10.0.ph.i.i.i.i.i = phi i64 [ %i.dg, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i ], [ undef, %bb.v ]
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i ], [ 0, %bb.v ]
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %.sroa.10.0.ph.i.i.i.i.i) #27
          to label %.noexc.i.i.i.i unwind label %bb.t, !noalias !2999

.noexc.i.i.i.i:                                   ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i, %bb.w
  %.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.w ], [ %i.di, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i ] ; 5 uses
  %.sroa.4.0.i.i.i.i.i = phi i64 [ 0, %bb.w ], [ %..i.i.i.i.i, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i ] ; 2 uses
  %i.dk = icmp samesign ult i64 %i.df, %.sroa.4.0.i.i.i.i.i
  call void @llvm.assume(i1 %i.dk)
  store i64 %.sroa.0.0.copyload1.i.i.i.i.i, ptr %.sroa.10.0.i.i.i.i.i, align 8, !noalias !2999
  %.sroa.412.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i, i64 8
  store ptr %.sroa.6.sroa.0.0.copyload.i.i.i.i, ptr %.sroa.412.0..sroa_idx.i.i.i.i, align 8, !noalias !2999
  %.sroa.513.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i, i64 16
  store i64 %.sroa.6.sroa.5.0.copyload.i.i.i.i, ptr %.sroa.513.0..sroa_idx.i.i.i.i, align 8, !noalias !2999
  store i64 %.sroa.4.0.i.i.i.i.i, ptr %i.at, align 8, !noalias !2989
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !2989
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !2989
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !2989
  store ptr %.sroa.020.0.copyload.i, ptr %i.as, align 8, !noalias !3000
  %.sroa.6.0..sroa_idx13.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.8.0..sroa_idx15.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store i64 %.sroa.5.0.copyload.i, ptr %.sroa.8.0..sroa_idx15.i.i, align 8, !noalias !3000
  %.sroa.10.0..sroa_idx18.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store ptr %.sroa.6.0.copyload.i, ptr %.sroa.10.0..sroa_idx18.i.i, align 8, !noalias !3000
  call void @llvm.experimental.noalias.scope.decl(metadata !3001)
  call void @llvm.experimental.noalias.scope.decl(metadata !3002)
  call void @llvm.experimental.noalias.scope.decl(metadata !3003)
  call void @llvm.experimental.noalias.scope.decl(metadata !3004)
  %i.dl = icmp eq ptr %i.ck, %.sroa.6.0.copyload.i
  br i1 %i.dl, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i.i, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i

_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i: ; preds = %bb.y, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i
  %i.dm = phi ptr [ %i.ea, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i ], [ %.sroa.10.0.i.i.i.i.i, %bb.y ]
  %i.dn = phi i64 [ %i.ec, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i ], [ 1, %bb.y ] ; 5 uses
  %.val41920.i.i.i.i.i.i = phi ptr [ %i.do, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i ], [ %i.ck, %bb.y ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3005)
  call void @llvm.experimental.noalias.scope.decl(metadata !3006)
  call void @llvm.experimental.noalias.scope.decl(metadata !3007)
  %i.do = getelementptr inbounds nuw i8, ptr %.val41920.i.i.i.i.i.i, i64 24 ; 6 uses
  %.sroa.0.0.copyload1.i.i.i.i.i.i.i = load i64, ptr %.val41920.i.i.i.i.i.i, align 8, !noalias !3008 ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.loopexit.i.i, label %bb.z

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i: ; preds = %bb.ad, %bb.ac
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapNtNtCsaKJjC64KgbL_3std3env6ArgsOsNCINvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB1O_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE12try_completeNtNtNtB1d_3ffi6os_str8OsStringB19_E0EECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.as) #28, !noalias !3009
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.at) #28, !noalias !2999
  br label %.body.i.i

bb.z:                                             ; preds = %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val41920.i.i.i.i.i.i, i64 8
  %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i, align 8, !noalias !3010 ; 3 uses
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val41920.i.i.i.i.i.i, i64 16
  %.sroa.6.sroa.5.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i.i.i.i, align 8, !noalias !3010
  %i.dp = icmp samesign ult i64 %i.dn, 384307168202282326
  call void @llvm.assume(i1 %i.dp)
  %i.dq = load i64, ptr %i.at, align 8, !range !12, !alias.scope !3011, !noalias !2989, !noundef !13
  %i.dr = icmp eq i64 %i.dn, %i.dq
  br i1 %i.dr, label %bb.ae, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i

_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.loopexit.i.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i
  %.pre.i.i = ptrtoint ptr %i.do to i64
  %.pre33.i.i = sub nuw i64 %i.db, %.pre.i.i
  %.pre35.i.i = udiv exact i64 %.pre33.i.i, 24
  br label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i.i

_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i.i: ; preds = %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.loopexit.i.i, %bb.y
  %.pre-phi36.i.i = phi i64 [ %.pre35.i.i, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.loopexit.i.i ], [ 0, %bb.y ]
  %.val.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.do, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.loopexit.i.i ], [ %i.ck, %bb.y ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3012)
  %i.ds = icmp eq ptr %.sroa.6.0.copyload.i, %.val.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.ds, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.du, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %i.dt = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.du = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.dt, align 8, !range !12, !alias.scope !3013, !noalias !3014, !noundef !13 ; 2 uses
  %i.dv = icmp eq i64 %.val8.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.dv, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dw = getelementptr i8, ptr %i.dt, i64 8
  %.val9.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.dw, align 8, !alias.scope !3012, !noalias !3014, !nonnull !13, !noundef !13
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3015
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.aa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dx = icmp eq i64 %i.du, %.pre-phi36.i.i
  br i1 %i.dx, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i.i
  %i.dy = icmp eq i64 %.sroa.5.0.copyload.i, 0
  br i1 %i.dy, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCINvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB39_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE12try_completeBR_B2J_E0EE11spec_extendCs6SXwsBSuFuw_4just.exit.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.dz = mul nuw i64 %.sroa.5.0.copyload.i, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.020.0.copyload.i, i64 noundef %i.dz, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !3014
  br label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCINvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB39_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE12try_completeBR_B2J_E0EE11spec_extendCs6SXwsBSuFuw_4just.exit.i.i.i.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i: ; preds = %._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs6SXwsBSuFuw_4just.exit.i.i_crit_edge.i.i.i.i, %bb.z
  %i.ea = phi ptr [ %.pre.i.i.i.i, %._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs6SXwsBSuFuw_4just.exit.i.i_crit_edge.i.i.i.i ], [ %i.dm, %bb.z ] ; 2 uses
  %i.eb = getelementptr inbounds nuw [24 x i8], ptr %i.ea, i64 %i.dn ; 3 uses
  store i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i, ptr %i.eb, align 8, !noalias !3016
  %.sroa.410.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store ptr %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i, ptr %.sroa.410.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !3016
  %.sroa.511.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  store i64 %.sroa.6.sroa.5.0.copyload.i.i.i.i.i.i, ptr %.sroa.511.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !3016
  %i.ec = add nuw nsw i64 %i.dn, 1                ; 2 uses
  store i64 %i.ec, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !3011, !noalias !2989
  %i.ed = icmp eq ptr %i.do, %.sroa.6.0.copyload.i
  br i1 %i.ed, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.loopexit.i.i, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i

bb.ac:                                            ; preds = %bb.ae
  %i.ee = landingpad { ptr, i32 }
          cleanup
  store ptr %i.do, ptr %.sroa.6.0..sroa_idx13.i.i, align 8, !alias.scope !3017, !noalias !2989
  %i.ef = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i, 0
  br i1 %i.ef, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload1.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3018
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i

bb.ae:                                            ; preds = %bb.z
  %i.eg = ptrtoint ptr %i.do to i64
  %i.eh = sub nuw i64 %i.db, %i.eg
  %i.ei = udiv exact i64 %i.eh, 24
  %i.ej = add nuw nsw i64 %i.ei, 1
  invoke fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.at, i64 noundef %i.dn, i64 noundef %i.ej, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs6SXwsBSuFuw_4just.exit.i.i_crit_edge.i.i.i.i unwind label %bb.ac, !noalias !3019

._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs6SXwsBSuFuw_4just.exit.i.i_crit_edge.i.i.i.i: ; preds = %bb.ae
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !3011, !noalias !2989
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCINvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB39_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE12try_completeBR_B2J_E0EE11spec_extendCs6SXwsBSuFuw_4just.exit.i.i.i.i: ; preds = %bb.ab, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !2989
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 24, i1 false), !noalias !3020
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !2989
  br label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtB10_3env6ArgsOsNCINvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB3f_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE12try_completeBU_B2O_E0EE9from_iterCs6SXwsBSuFuw_4just.exit.i.i

bb.af:                                            ; preds = %bb.u, %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !3021), !noalias !2988
  %i.ek = icmp eq ptr %.sroa.6.0.copyload.i, %i.ck
  br i1 %i.ek, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.af, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i
  %.sroa.0.011.i.i.i.i.i.i.i.i.i = phi i64 [ %i.em, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i ], [ 0, %bb.af ] ; 2 uses
  %i.el = getelementptr inbounds nuw [24 x i8], ptr %i.ck, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.em = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i.i.i = load i64, ptr %i.el, align 8, !range !12, !alias.scope !3022, !noalias !3023, !noundef !13 ; 2 uses
  %i.en = icmp eq i64 %.val8.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.en, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.eo = getelementptr i8, ptr %i.el, i64 8
  %.val9.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.eo, align 8, !alias.scope !3021, !noalias !3023, !nonnull !13, !noundef !13
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3024
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.ag, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.ep = icmp eq i64 %i.em, %i.de
  br i1 %i.ep, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i, %bb.af
  %i.eq = icmp eq i64 %.sroa.5.0.copyload.i, 0
  br i1 %i.eq, label %.body.i.i, label %bb.ah

bb.ah:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.020.0.copyload.i) ]
  %i.er = mul nuw i64 %.sroa.5.0.copyload.i, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.020.0.copyload.i, i64 noundef %i.er, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !3023
  br label %.body.i.i

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtB10_3env6ArgsOsNCINvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB3f_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE12try_completeBU_B2O_E0EE9from_iterCs6SXwsBSuFuw_4just.exit.i.i: ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCINvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB39_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE12try_completeBR_B2J_E0EE11spec_extendCs6SXwsBSuFuw_4just.exit.i.i.i.i, %bb.s, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3025)
  call void @llvm.experimental.noalias.scope.decl(metadata !3026)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !3027
  %i.es = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.et = load ptr, ptr %i.es, align 8, !alias.scope !3025, !noalias !2985, !nonnull !13, !noundef !13 ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  %i.ev = load i64, ptr %i.eu, align 8, !alias.scope !3025, !noalias !2985, !noundef !13 ; 4 uses
  invoke void @_RNvNtNtNtCsaKJjC64KgbL_3std3sys3env4unix6getenv(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ar, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.et, i64 noundef %i.ev)
          to label %_RINvNtCsaKJjC64KgbL_3std3env6var_osReECs6SXwsBSuFuw_4just.exit.i.i.i unwind label %.thread.i.i.i, !noalias !3028

bb.ai:                                            ; preds = %bb.am, %bb.al
  br i1 %.sroa.021.2.i.i.i, label %bb.dw, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECs6SXwsBSuFuw_4just.exit.i.i

.thread.i.i.i:                                    ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtB10_3env6ArgsOsNCINvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB3f_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE12try_completeBU_B2O_E0EE9from_iterCs6SXwsBSuFuw_4just.exit.i.i
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

_RINvNtCsaKJjC64KgbL_3std3env6var_osReECs6SXwsBSuFuw_4just.exit.i.i.i: ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtB10_3env6ArgsOsNCINvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB3f_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE12try_completeBU_B2O_E0EE9from_iterCs6SXwsBSuFuw_4just.exit.i.i
  %i.ex = load i64, ptr %i.ar, align 8, !range !16, !noalias !3027, !noundef !13 ; 9 uses
  %.not.i.i.i = icmp eq i64 %i.ex, -1
  br i1 %.not.i.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCsaKJjC64KgbL_3std3env6var_osReECs6SXwsBSuFuw_4just.exit.i.i.i
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.9.0.copyload.i.i.i = load ptr, ptr %.sroa.9.0..sroa_idx.i.i.i, align 8, !noalias !3027 ; 10 uses
  %.sroa.15.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.sroa.15.0.copyload.i.i.i = load i64, ptr %.sroa.15.0..sroa_idx.i.i.i, align 8, !noalias !3027 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !3027
  switch i64 %.sroa.15.0.copyload.i.i.i, label %_RNvXsb_NtNtCsaKJjC64KgbL_3std3ffi6os_strNtB5_8OsStringINtNtCsj6eKBz9Db1c_4core3cmp9PartialEqReE2eq.exit.thread.i.i.i [
    i64 0, label %bb.du
    i64 1, label %_RNvXsb_NtNtCsaKJjC64KgbL_3std3ffi6os_strNtB5_8OsStringINtNtCsj6eKBz9Db1c_4core3cmp9PartialEqReE2eq.exit.i.i.i
  ]

bb.ak:                                            ; preds = %_RINvNtCsaKJjC64KgbL_3std3env6var_osReECs6SXwsBSuFuw_4just.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !3027
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit97.i.i.i

bb.al:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit96.i.i.i, %bb.an
  %.pn33.i.i.i = phi { ptr, i32 } [ %i.ez, %bb.an ], [ %.pn.pn.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit96.i.i.i ] ; 2 uses
  %.sroa.021.2.i.i.i = phi i1 [ %.sroa.021.3.i.i.i, %bb.an ], [ %.sroa.021.4.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit96.i.i.i ]
  %i.ey = icmp eq i64 %i.ex, 0
  br i1 %i.ey, label %bb.ai, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload.i.i.i) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.0.copyload.i.i.i, i64 noundef %i.ex, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3029
  br label %bb.ai

bb.an:                                            ; preds = %bb.ar, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit74.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit70.i.i.i, %bb.as, %bb.ap, %bb.ao, %_RNvXsb_NtNtCsaKJjC64KgbL_3std3ffi6os_strNtB5_8OsStringINtNtCsj6eKBz9Db1c_4core3cmp9PartialEqReE2eq.exit.thread.i.i.i
  %.sroa.021.3.i.i.i = phi i1 [ true, %bb.ar ], [ %1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit74.i.i.i ], [ %0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit70.i.i.i ], [ true, %bb.as ], [ true, %bb.ap ], [ true, %bb.ao ], [ true, %_RNvXsb_NtNtCsaKJjC64KgbL_3std3ffi6os_strNtB5_8OsStringINtNtCsj6eKBz9Db1c_4core3cmp9PartialEqReE2eq.exit.thread.i.i.i ]
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

_RNvXsb_NtNtCsaKJjC64KgbL_3std3ffi6os_strNtB5_8OsStringINtNtCsj6eKBz9Db1c_4core3cmp9PartialEqReE2eq.exit.i.i.i: ; preds = %bb.aj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload.i.i.i) ]
  %lhsc.i.i.i = load i8, ptr %.sroa.9.0.copyload.i.i.i, align 1, !noalias !3030
  %i.fa = icmp eq i8 %lhsc.i.i.i, 48
  br i1 %i.fa, label %bb.du, label %_RNvXsb_NtNtCsaKJjC64KgbL_3std3ffi6os_strNtB5_8OsStringINtNtCsj6eKBz9Db1c_4core3cmp9PartialEqReE2eq.exit.thread.i.i.i

_RNvXsb_NtNtCsaKJjC64KgbL_3std3ffi6os_strNtB5_8OsStringINtNtCsj6eKBz9Db1c_4core3cmp9PartialEqReE2eq.exit.thread.i.i.i: ; preds = %_RNvXsb_NtNtCsaKJjC64KgbL_3std3ffi6os_strNtB5_8OsStringINtNtCsj6eKBz9Db1c_4core3cmp9PartialEqReE2eq.exit.i.i.i, %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !3031
  store ptr %i.et, ptr %i.aj, align 8, !noalias !3031
  %i.fb = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 %i.ev, ptr %i.fb, align 8, !noalias !3031
  %i.fc = invoke noundef ptr @_RNvNtNtNtCsaKJjC64KgbL_3std3sys3env4unix8unsetenv(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.et, i64 noundef %i.ev)
          to label %.noexc.i.i.i unwind label %bb.an, !noalias !3030 ; 2 uses

.noexc.i.i.i:                                     ; preds = %_RNvXsb_NtNtCsaKJjC64KgbL_3std3ffi6os_strNtB5_8OsStringINtNtCsj6eKBz9Db1c_4core3cmp9PartialEqReE2eq.exit.thread.i.i.i
  %.not.i.i.i.i = icmp eq ptr %i.fc, null
  br i1 %.not.i.i.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.noexc.i.i.i
  invoke fastcc void @_RNCINvNtCsaKJjC64KgbL_3std3env10remove_varReE0Cs6SXwsBSuFuw_4just(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aj, ptr noundef nonnull %i.fc) #32
          to label %.noexc57.i.i.i unwind label %bb.an, !noalias !3030

.noexc57.i.i.i:                                   ; preds = %bb.ao
  unreachable

bb.ap:                                            ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !3031
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !3027
  %i.fd = getelementptr inbounds nuw i8, ptr %i.av, i64 64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload.i.i.i) ]
  invoke void @_RNvMs0_NtCsgYJ0xFPoqCG_13clap_complete3envNtB5_6Shells18completer_for_path(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.aq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.fd, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.9.0.copyload.i.i.i, i64 noundef %.sroa.15.0.copyload.i.i.i)
          to label %bb.aq unwind label %bb.an, !noalias !3030

bb.aq:                                            ; preds = %bb.ap
  %i.fe = load ptr, ptr %i.aq, align 8, !noalias !3027, !noundef !13 ; 3 uses
  %i.ff = icmp eq ptr %i.fe, null
  %i.fg = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8, !noalias !3027, !nonnull !13, !noundef !13 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !3027
  br i1 %i.ff, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.fi = invoke fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawNtNtNtCsj6eKBz9Db1c_4core2io5error5ErrorECs6SXwsBSuFuw_4just(ptr noundef nonnull %i.fh)
          to label %bb.du unwind label %bb.an

bb.as:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !3027
  invoke void @_RNvXs2_NtCskXtk6F4WjxZ_4just9argumentsNtB5_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7command(ptr noalias nofree noundef nonnull sret([760 x i8]) align 8 captures(address) dereferenceable(760) %i.ap)
          to label %_RNvYNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandINtNtNtCsj6eKBz9Db1c_4core3ops8function2FnuE4callCs6SXwsBSuFuw_4just.exit.i.i.i unwind label %bb.an, !noalias !3030

_RNvYNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandINtNtNtCsj6eKBz9Db1c_4core3ops8function2FnuE4callCs6SXwsBSuFuw_4just.exit.i.i.i: ; preds = %bb.as
  invoke void @_RNvMs3_NtNtCs2FJGJNE9lTN_12clap_builder7builder7commandNtB5_7Command5build(ptr noalias nofree noundef nonnull align 8 dereferenceable(760) %i.ap)
          to label %bb.au unwind label %bb.at, !noalias !3030

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit96.i.i.i: ; preds = %bb.dt, %bb.ds, %bb.cy, %.body.i.i.i, %bb.at
  %.pn.pn.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.fj, %bb.at ], [ %eh.lpad-body.i.i.i, %bb.cy ], [ %i.iy, %bb.ds ], [ %i.iy, %bb.dt ]
  %.sroa.021.4.i.i.i = phi i1 [ true, %.body.i.i.i ], [ true, %bb.at ], [ true, %bb.cy ], [ false, %bb.ds ], [ false, %bb.dt ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(760) %i.ap) #28
          to label %bb.al unwind label %bb.cw, !noalias !3030

bb.at:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE10try_removeCs6SXwsBSuFuw_4just.exit.thread.i.i.i.i, %_RNvYNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandINtNtNtCsj6eKBz9Db1c_4core3ops8function2FnuE4callCs6SXwsBSuFuw_4just.exit.i.i.i
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit96.i.i.i

bb.au:                                            ; preds = %_RNvYNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandINtNtNtCsj6eKBz9Db1c_4core3ops8function2FnuE4callCs6SXwsBSuFuw_4just.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3032)
  call void @llvm.experimental.noalias.scope.decl(metadata !3033)
  %i.fk = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 6 uses
  %i.fl = load i64, ptr %i.fk, align 8, !alias.scope !3034, !noalias !2985, !noundef !13 ; 4 uses
  %i.fm = icmp ult i64 %i.fl, 384307168202282326
  call void @llvm.assume(i1 %i.fm)
  %i.fn = icmp eq i64 %i.fl, 0
  br i1 %i.fn, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE10try_removeCs6SXwsBSuFuw_4just.exit.thread.i.i.i.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE10try_removeCs6SXwsBSuFuw_4just.exit.i.i.i.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE10try_removeCs6SXwsBSuFuw_4just.exit.i.i.i.i: ; preds = %bb.au
  %i.fo = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8, !alias.scope !3034, !noalias !2985, !nonnull !13, !noundef !13 ; 10 uses
  %.sroa.0.0.copyload1.i.i.i.i = load i64, ptr %i.fp, align 8, !noalias !3035 ; 23 uses
  %.sroa.6.0..sroa_idx2.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %.sroa.6.i.sroa.0.0.copyload.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx2.i.i.i.i, align 8, !noalias !3035 ; 23 uses
  %.sroa.6.i.sroa.4.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %.sroa.6.i.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.6.i.sroa.4.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i, align 8, !noalias !3035 ; 5 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %i.fr = mul nuw nsw i64 %i.fl, 24
  %i.fs = add nsw i64 %i.fr, -24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fp, ptr nonnull align 8 %i.fq, i64 %i.fs, i1 false), !noalias !3036
  %i.ft = add nsw i64 %i.fl, -1                   ; 8 uses
  store i64 %i.ft, ptr %i.fk, align 8, !alias.scope !3034, !noalias !2985
  %.not.i59.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i, -1
  br i1 %.not.i59.i.i.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE10try_removeCs6SXwsBSuFuw_4just.exit.thread.i.i.i.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE6removeCs6SXwsBSuFuw_4just.exit.i.i.i, !prof !3037

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE10try_removeCs6SXwsBSuFuw_4just.exit.thread.i.i.i.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE10try_removeCs6SXwsBSuFuw_4just.exit.i.i.i.i, %bb.au
  %i.fu = phi i64 [ 0, %bb.au ], [ %i.ft, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE10try_removeCs6SXwsBSuFuw_4just.exit.i.i.i.i ]
  invoke void @_RNvNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef 0, i64 noundef %i.fu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #30
          to label %.noexc60.i.i.i unwind label %bb.at, !noalias !3030

.noexc60.i.i.i:                                   ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE10try_removeCs6SXwsBSuFuw_4just.exit.thread.i.i.i.i
  unreachable

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE6removeCs6SXwsBSuFuw_4just.exit.i.i.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE10try_removeCs6SXwsBSuFuw_4just.exit.i.i.i.i
  %.idx.i.i.i = mul nuw nsw i64 %i.ft, 24
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fp, i64 %.idx.i.i.i
  %i.fw = icmp eq i64 %i.ft, 0
  br i1 %i.fw, label %.thread156.i.i.i, label %.lr.ph.i.i.i.i

.thread156.i.i.i:                                 ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE6removeCs6SXwsBSuFuw_4just.exit.i.i.i
  store i64 0, ptr %i.fk, align 8, !alias.scope !3038, !noalias !2985
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECs6SXwsBSuFuw_4just.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE6removeCs6SXwsBSuFuw_4just.exit.i.i.i, %_RNCNvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB6_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE13try_complete_0Cs6SXwsBSuFuw_4just.exit.thread.i.i.i.i
  %.sroa.02.09.i.i.i.i = phi i64 [ %i.gg, %_RNCNvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB6_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE13try_complete_0Cs6SXwsBSuFuw_4just.exit.thread.i.i.i.i ], [ 0, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE6removeCs6SXwsBSuFuw_4just.exit.i.i.i ] ; 3 uses
  %i.fx = phi ptr [ %i.fy, %_RNCNvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB6_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE13try_complete_0Cs6SXwsBSuFuw_4just.exit.thread.i.i.i.i ], [ %i.fp, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE6removeCs6SXwsBSuFuw_4just.exit.i.i.i ] ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 24 ; 2 uses
  %i.fz = getelementptr i8, ptr %i.fx, i64 16
  %.val6.i.i.i.i = load i64, ptr %i.fz, align 8, !noalias !3039, !noundef !13
  %i.ga = icmp eq i64 %.val6.i.i.i.i, 2
  br i1 %i.ga, label %_RNCNvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB6_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE13try_complete_0Cs6SXwsBSuFuw_4just.exit.i.i.i.i, label %_RNCNvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB6_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE13try_complete_0Cs6SXwsBSuFuw_4just.exit.thread.i.i.i.i

_RNCNvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB6_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE13try_complete_0Cs6SXwsBSuFuw_4just.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.gb = getelementptr i8, ptr %i.fx, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.gb, align 8, !noalias !3039, !nonnull !13, !noundef !13
  %i.gc = load i16, ptr %.val.i.i.i.i, align 1
  %i.gd = icmp ne i16 %i.gc, 11565
  %i.ge = zext i1 %i.gd to i32
  %i.gf = icmp eq i32 %i.ge, 0
  br i1 %i.gf, label %.thread124.thread152.i.i.i, label %_RNCNvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB6_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE13try_complete_0Cs6SXwsBSuFuw_4just.exit.thread.i.i.i.i

_RNCNvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB6_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE13try_complete_0Cs6SXwsBSuFuw_4just.exit.thread.i.i.i.i: ; preds = %_RNCNvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB6_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE13try_complete_0Cs6SXwsBSuFuw_4just.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.gg = add nuw nsw i64 %.sroa.02.09.i.i.i.i, 1
  %i.gh = icmp eq ptr %i.fy, %i.fv
  br i1 %i.gh, label %.thread124.i.i.i, label %.lr.ph.i.i.i.i

.thread124.thread152.i.i.i:                       ; preds = %_RNCNvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB6_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE13try_complete_0Cs6SXwsBSuFuw_4just.exit.i.i.i.i
  %i.gi = icmp ult i64 %.sroa.02.09.i.i.i.i, %i.ft
  call void @llvm.assume(i1 %i.gi)
  %i.gj = add nuw nsw i64 %.sroa.02.09.i.i.i.i, 1 ; 2 uses
  store i64 0, ptr %i.fk, align 8, !alias.scope !3038, !noalias !2985
  %i.gk = sub nuw nsw i64 %i.ft, %i.gj
  br label %bb.av

.thread124.i.i.i:                                 ; preds = %_RNCNvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB6_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE13try_complete_0Cs6SXwsBSuFuw_4just.exit.thread.i.i.i.i
  store i64 0, ptr %i.fk, align 8, !alias.scope !3038, !noalias !2985
  br label %bb.av

bb.av:                                            ; preds = %.thread124.i.i.i, %.thread124.thread152.i.i.i
  %i.gl = phi i64 [ %i.gk, %.thread124.thread152.i.i.i ], [ 0, %.thread124.i.i.i ] ; 2 uses
  %.sroa.05.0126155.i.i.i = phi i64 [ %i.gj, %.thread124.thread152.i.i.i ], [ %i.ft, %.thread124.i.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3040)
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i2.i.i, %bb.av
  %.sroa.0.011.i.i.i.i.i.i = phi i64 [ %i.gn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i2.i.i ], [ 0, %bb.av ] ; 2 uses
  %i.gm = getelementptr inbounds nuw [24 x i8], ptr %i.fp, i64 %.sroa.0.011.i.i.i.i.i.i ; 2 uses
  %i.gn = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i = load i64, ptr %i.gm, align 8, !range !12, !alias.scope !3041, !noalias !3042, !noundef !13 ; 2 uses
  %i.go = icmp eq i64 %.val8.i.i.i.i.i.i, 0
  br i1 %i.go, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i2.i.i, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.gp = getelementptr i8, ptr %i.gm, i64 8
  %.val9.i.i.i.i.i.i = load ptr, ptr %i.gp, align 8, !alias.scope !3040, !noalias !3042, !nonnull !13, !noundef !13
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3043
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i2.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i2.i.i: ; preds = %bb.aw, %.lr.ph.i.i.i.i.i.i
  %i.gq = icmp eq i64 %i.gn, %.sroa.05.0126155.i.i.i
  br i1 %i.gq, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i2.i.i
  %.not.i.i4.i.i.i.i.i = icmp eq i64 %i.ft, %.sroa.05.0126155.i.i.i
  br i1 %.not.i.i4.i.i.i.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECs6SXwsBSuFuw_4just.exit.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i
  %.idx130154.pn.i.i.i = mul nuw nsw i64 %.sroa.05.0126155.i.i.i, 24
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fp, i64 %.idx130154.pn.i.i.i
  %i.gs = mul nuw nsw i64 %i.gl, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fp, ptr nonnull align 8 %i.gr, i64 %i.gs, i1 false), !noalias !3042
  store i64 %i.gl, ptr %i.fk, align 8, !alias.scope !3026, !noalias !3044
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !3027
  store i64 0, ptr %i.am, align 8, !noalias !3027
  %i.gt = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 5 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.gt, align 8, !noalias !3027
  %i.gu = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  store i64 0, ptr %i.gu, align 8, !noalias !3027
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !3027
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 24, i1 false), !noalias !3045
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fh, i64 48
  %i.gw = load ptr, ptr %i.gv, align 8, !invariant.load !13, !noalias !3030, !nonnull !13
  %i.gx = invoke noundef ptr %i.gw(ptr noundef nonnull %i.fe, ptr noalias nofree noundef nonnull align 8 dereferenceable(760) %i.ap, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.al, ptr noalias nofree noundef readonly captures(address, read_provenance) %.sroa.01.0.i, i64 %.sroa.5.0.i, ptr noundef nonnull %i.am, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @31)
          to label %bb.cj unwind label %bb.ch, !noalias !3030 ; 2 uses

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECs6SXwsBSuFuw_4just.exit.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i, %.thread156.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !3027
  store i64 0, ptr %i.ao, align 8, !noalias !3027
  %i.gy = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 5 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.gy, align 8, !noalias !3027
  %i.gz = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  store i64 0, ptr %i.gz, align 8, !noalias !3027
  %i.ha = getelementptr i8, ptr %i.fh, i64 40
  %.val56.i.i.i = load ptr, ptr %i.ha, align 8, !noalias !3030
  call void @llvm.experimental.noalias.scope.decl(metadata !3046)
  call void @llvm.experimental.noalias.scope.decl(metadata !3047)
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ap, i64 608
  %i.hc = load ptr, ptr %i.hb, align 8, !alias.scope !3047, !noalias !3027, !nonnull !13, !noundef !13 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ap, i64 616
  %i.he = load i64, ptr %i.hd, align 8, !alias.scope !3047, !noalias !3027, !noundef !13 ; 2 uses
  %i.hf = load i64, ptr %i.av, align 8, !range !16, !alias.scope !3048, !noalias !2985, !noundef !13
  %.not.i63.i.i.i = icmp eq i64 %i.hf, -1
  %i.hg = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.hh = load ptr, ptr %i.hg, align 8, !alias.scope !3048, !noalias !2985, !nonnull !13
  %i.hi = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.hj = load i64, ptr %i.hi, align 8, !alias.scope !3048, !noalias !2985
  br i1 %.not.i63.i.i.i, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECs6SXwsBSuFuw_4just.exit.i.i.i
  %i.hk = getelementptr inbounds nuw i8, ptr %i.ap, i64 344
  %i.hl = load i64, ptr %i.hk, align 8, !range !16, !alias.scope !3049, !noalias !3027, !noundef !13
  %.not.i.i.i.i.i.i = icmp eq i64 %i.hl, -1       ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ap, i64 352
  %i.hn = load ptr, ptr %i.hm, align 8, !alias.scope !3049, !noalias !3027, !nonnull !13
  %i.ho = getelementptr inbounds nuw i8, ptr %i.ap, i64 360
  %i.hp = load i64, ptr %i.ho, align 8, !alias.scope !3049, !noalias !3027
  %.sroa.3.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i64 undef, i64 %i.hp
  %.sroa.0.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, ptr null, ptr %i.hn
  br label %bb.ba

bb.az:                                            ; preds = %bb.bz, %bb.by
  br i1 %.not27.not.i.i.i.i, label %.body.i.i.i, label %bb.cf

.thread29.i.i.i.i:                                ; preds = %bb.bw
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.ba:                                            ; preds = %bb.ay, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECs6SXwsBSuFuw_4just.exit.i.i.i
  %.pn4.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i, %bb.ay ], [ %i.hh, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECs6SXwsBSuFuw_4just.exit.i.i.i ] ; 2 uses
  %.pn2.i.i.i.i.i = phi i64 [ %.sroa.3.0.i.i.i.i.i.i, %bb.ay ], [ %i.hj, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECs6SXwsBSuFuw_4just.exit.i.i.i ]
  %.not26.i.i.i.i = icmp eq ptr %.pn4.i.i.i.i.i, null ; 2 uses
  %.sroa.35.0.i.i.i.i = select i1 %.not26.i.i.i.i, i64 %i.he, i64 %.pn2.i.i.i.i.i
  %.sroa.04.0.i.i.i.i = select i1 %.not26.i.i.i.i, ptr %i.hc, ptr %.pn4.i.i.i.i.i
  %i.hr = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.hs = load i64, ptr %i.hr, align 8, !range !16, !alias.scope !3048, !noalias !2985, !noundef !13
  %.not27.not.i.i.i.i = icmp eq i64 %i.hs, -1     ; 4 uses
  br i1 %.not27.not.i.i.i.i, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ht = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.hu = load ptr, ptr %i.ht, align 8, !alias.scope !3048, !noalias !2985, !nonnull !13, !noundef !13
  %i.hv = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %i.hw = load i64, ptr %i.hv, align 8, !alias.scope !3048, !noalias !2985, !noundef !13 ; 7 uses
  %.not.i.i.i3.i.i = icmp slt i64 %i.hw, 0
  br i1 %.not.i.i.i3.i.i, label %bb.bw, label %bb.bc, !prof !29

bb.bc:                                            ; preds = %bb.bb
  %i.hx = icmp eq i64 %i.hw, 0
  br i1 %i.hx, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECs6SXwsBSuFuw_4just.exit.i.i.i.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i
end_hunk_0
begin_hunk_1_@_RNvCs6SXwsBSuFuw_4just4main:bb.a
  %i.il = load i64, ptr %i.ik, align 8, !noalias !3051 ; 8 uses
  br i1 %.not29.i.i.i.i, label %bb.bo, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6SXwsBSuFuw_4just.exit48.thread48.i.i.i.i

bb.bo:                                            ; preds = %bb.bn
  %.not.i45.i.i.i.i = icmp slt i64 %i.il, 0
  br i1 %.not.i45.i.i.i.i, label %bb.bq, label %bb.bp, !prof !29

bb.bp:                                            ; preds = %bb.bo
  %i.im = icmp eq i64 %i.il, 0
  br i1 %i.im, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6SXwsBSuFuw_4just.exit48.thread48.i.i.i.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i46.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i46.i.i.i.i: ; preds = %bb.bp
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !3058
  %i.in = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.il, i64 noundef range(i64 1, 9) 1) #26, !noalias !3058 ; 3 uses
  %i.io = icmp eq ptr %i.in, null
  br i1 %i.io, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i46.i.i.i.i, %bb.bo
  %.sroa.423.0.ph.i.i.i.i = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i46.i.i.i.i ], [ 0, %bb.bo ]
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.423.0.ph.i.i.i.i, i64 %i.il) #27
          to label %bb.bt unwind label %.loopexit.split-lp.i.i.i.i, !noalias !3052

bb.br:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i46.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.in, ptr nonnull align 1 %i.ij, i64 %i.il, i1 false), !noalias !3052
  br label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6SXwsBSuFuw_4just.exit48.thread48.i.i.i.i

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6SXwsBSuFuw_4just.exit48.thread48.i.i.i.i: ; preds = %bb.br, %bb.bp, %bb.bn
  %.sroa.15.0.i.i.i.i = phi i64 [ 0, %bb.bp ], [ %i.il, %bb.br ], [ %i.il, %bb.bn ] ; 2 uses
  %.sroa.9.0.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.bp ], [ %i.in, %bb.br ], [ %i.ij, %bb.bn ] ; 2 uses
  %.sroa.0.0.i65.i.i.i = phi i64 [ 0, %bb.bp ], [ %i.il, %bb.br ], [ %i.ih, %bb.bn ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !3051
  %i.ip = icmp eq i64 %.sroa.01.0.i.i.i.i, 0
  br i1 %i.ip, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECs6SXwsBSuFuw_4just.exit.i.i.i.i, label %bb.bs

bb.bs:                                            ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6SXwsBSuFuw_4just.exit48.thread48.i.i.i.i
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.i.i.i.i, i64 noundef %.sroa.01.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3059
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECs6SXwsBSuFuw_4just.exit.i.i.i.i

bb.bt:                                            ; preds = %bb.bw, %bb.bq
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECs6SXwsBSuFuw_4just.exit.i.i.i.i: ; preds = %bb.bx, %bb.bs, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6SXwsBSuFuw_4just.exit48.thread48.i.i.i.i, %bb.bc
  %.sroa.15.1.i.i.i.i = phi i64 [ %.sroa.15.0.i.i.i.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6SXwsBSuFuw_4just.exit48.thread48.i.i.i.i ], [ %.sroa.15.0.i.i.i.i, %bb.bs ], [ %i.hw, %bb.bx ], [ 0, %bb.bc ]
  %.sroa.9.1.i.i.i.i = phi ptr [ %.sroa.9.0.i.i.i.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6SXwsBSuFuw_4just.exit48.thread48.i.i.i.i ], [ %.sroa.9.0.i.i.i.i, %bb.bs ], [ %i.hy, %bb.bx ], [ inttoptr (i64 1 to ptr), %bb.bc ] ; 5 uses
  %.sroa.0.1.i.i.i.i = phi i64 [ %.sroa.0.0.i65.i.i.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6SXwsBSuFuw_4just.exit48.thread48.i.i.i.i ], [ %.sroa.0.0.i65.i.i.i, %bb.bs ], [ %i.hw, %bb.bx ], [ 0, %bb.bc ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.1.i.i.i.i) ]
  %i.iq = invoke noundef ptr %.val56.i.i.i(ptr noundef nonnull %i.fe, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.et, i64 noundef %i.ev, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hc, i64 noundef %i.he, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.04.0.i.i.i.i, i64 noundef %.sroa.35.0.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.9.1.i.i.i.i, i64 noundef %.sroa.15.1.i.i.i.i, ptr noundef nonnull %i.ao, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @31)
          to label %bb.ca unwind label %bb.by, !noalias !3052 ; 2 uses

.loopexit.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i.i
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

.loopexit.split-lp.i.i.i.i:                       ; preds = %bb.bq, %bb.bg, %bb.bf, %bb.be
  %.sroa.7.1.ph.i.i.i.i = phi ptr [ %.sroa.6.i.sroa.0.0.copyload.i.i.i, %bb.bg ], [ %.sroa.6.i.sroa.0.0.copyload.i.i.i, %bb.be ], [ %.sroa.7.0.i.i.i.i, %bb.bf ], [ %.sroa.7.0.i.i.i.i, %bb.bq ]
  %.sroa.01.1.ph.i.i.i.i = phi i64 [ %.sroa.0.0.copyload1.i.i.i.i, %bb.bg ], [ %.sroa.0.0.copyload1.i.i.i.i, %bb.be ], [ %.sroa.01.0.i.i.i.i, %bb.bf ], [ %.sroa.01.0.i.i.i.i, %bb.bq ]
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.bu:                                            ; preds = %.loopexit.split-lp.i.i.i.i, %.loopexit.i.i.i.i
  %.sroa.7.1.i.i.i.i = phi ptr [ %.sroa.6.i.sroa.0.0.copyload.i.i.i, %.loopexit.i.i.i.i ], [ %.sroa.7.1.ph.i.i.i.i, %.loopexit.split-lp.i.i.i.i ]
  %.sroa.01.1.i.i.i.i = phi i64 [ %.sroa.0.0.copyload1.i.i.i.i, %.loopexit.i.i.i.i ], [ %.sroa.01.1.ph.i.i.i.i, %.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %lpad.phi.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %i.ir = icmp eq i64 %.sroa.01.1.i.i.i.i, 0
  br i1 %i.ir, label %.body.i.i.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.1.i.i.i.i, i64 noundef %.sroa.01.1.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3060
  br label %.body.i.i.i

bb.bw:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i, %bb.bb
  %.sroa.420.0.ph.i.i.i.i = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i ], [ 0, %bb.bb ]
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.420.0.ph.i.i.i.i, i64 %i.hw) #27
          to label %bb.bt unwind label %.thread29.i.i.i.i, !noalias !3052

bb.bx:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hy, ptr nonnull align 1 %i.hu, i64 %i.hw, i1 false), !noalias !3052
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECs6SXwsBSuFuw_4just.exit.i.i.i.i

bb.by:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECs6SXwsBSuFuw_4just.exit.i.i.i.i
  %i.is = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.it = icmp eq i64 %.sroa.0.1.i.i.i.i, 0
  br i1 %i.it, label %bb.az, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.1.i.i.i.i, i64 noundef %.sroa.0.1.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3061
  br label %bb.az

bb.ca:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECs6SXwsBSuFuw_4just.exit.i.i.i.i
  %.not32.i.i.i.i = icmp eq ptr %i.iq, null
  %i.iu = icmp eq i64 %.sroa.0.1.i.i.i.i, 0       ; 2 uses
  br i1 %.not32.i.i.i.i, label %bb.cd, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  br i1 %i.iu, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit52.i.i.i.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.1.i.i.i.i, i64 noundef %.sroa.0.1.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3062
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit52.i.i.i.i

bb.cd:                                            ; preds = %bb.ca
  br i1 %i.iu, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit55.i.i.i.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.1.i.i.i.i, i64 noundef %.sroa.0.1.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3063
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit55.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit55.i.i.i.i: ; preds = %bb.ce, %bb.cd
  %i.iv = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i, 0
  %or.cond.i.i.i.i = or i1 %i.iv, %.not27.not.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %_RNvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB4_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE18write_registrationCs6SXwsBSuFuw_4just.exit.thread.i.i.i, label %_RNvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB4_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE18write_registrationCs6SXwsBSuFuw_4just.exit.thread128.i.i.i

_RNvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB4_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE18write_registrationCs6SXwsBSuFuw_4just.exit.thread128.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit55.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.i.sroa.0.0.copyload.i.i.i) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.i.sroa.0.0.copyload.i.i.i, i64 noundef %.sroa.0.0.copyload1.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3052
  br label %_RNvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB4_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE18write_registrationCs6SXwsBSuFuw_4just.exit.thread.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit52.i.i.i.i: ; preds = %bb.cc, %bb.cb
  %i.iw = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i, 0
  %or.cond71.i.i.i.i = or i1 %i.iw, %.not27.not.i.i.i.i
  br i1 %or.cond71.i.i.i.i, label %_RNvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB4_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE18write_registrationCs6SXwsBSuFuw_4just.exit.thread127.i.i.i, label %_RNvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB4_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE18write_registrationCs6SXwsBSuFuw_4just.exit.i.i.i

bb.cf:                                            ; preds = %.thread29.i.i.i.i, %bb.az
  %.pn32.i.i.i.i = phi { ptr, i32 } [ %i.hq, %.thread29.i.i.i.i ], [ %i.is, %bb.az ] ; 2 uses
  %i.ix = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i, 0
  br i1 %i.ix, label %.body.i.i.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.i.sroa.0.0.copyload.i.i.i) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.i.sroa.0.0.copyload.i.i.i, i64 noundef %.sroa.0.0.copyload1.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3064
  br label %.body.i.i.i

bb.ch:                                            ; preds = %bb.ck, %bb.co, %bb.cm, %bb.cl, %bb.ax
  %i.iy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3065)
  %.val.i66.i.i.i = load i64, ptr %i.am, align 8, !range !12, !alias.scope !3065, !noalias !3027, !noundef !13 ; 2 uses
  %i.iz = icmp eq i64 %.val.i66.i.i.i, 0
  br i1 %i.iz, label %bb.ds, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %.val1.i.i.i.i = load ptr, ptr %i.gt, align 8, !alias.scope !3065, !noalias !3027, !nonnull !13, !noundef !13
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i66.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3066
  br label %bb.ds

bb.cj:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !3027
  %.not27.i.i.i = icmp eq ptr %i.gx, null
  br i1 %.not27.i.i.i, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ja = invoke fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawNtNtNtCsj6eKBz9Db1c_4core2io5error5ErrorECs6SXwsBSuFuw_4just(ptr noundef nonnull %i.gx)
          to label %bb.ct unwind label %bb.ch

bb.cl:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !3027
  %i.jb = invoke noundef nonnull align 8 ptr @_RNvNtNtCsaKJjC64KgbL_3std2io5stdio6stdout()
          to label %bb.cm unwind label %bb.ch, !noalias !3030

bb.cm:                                            ; preds = %bb.cl
  store ptr %i.jb, ptr %i.ak, align 8, !noalias !3027
  %i.jc = load ptr, ptr %i.gt, align 8, !noalias !3027, !nonnull !13, !noundef !13
  %i.jd = load i64, ptr %i.gu, align 8, !noalias !3027, !noundef !13
  %i.je = invoke noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jc, i64 noundef %i.jd)
          to label %bb.cn unwind label %bb.ch, !noalias !3030 ; 2 uses

bb.cn:                                            ; preds = %bb.cm
  %.not28.i.i.i = icmp eq ptr %i.je, null
  br i1 %.not28.i.i.i, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.jf = invoke fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawNtNtNtCsj6eKBz9Db1c_4core2io5error5ErrorECs6SXwsBSuFuw_4just(ptr noundef nonnull %i.je)
          to label %bb.cs unwind label %bb.ch

bb.cp:                                            ; preds = %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !3027
  call void @llvm.experimental.noalias.scope.decl(metadata !3067)
  %.val.i67.i.i.i = load i64, ptr %i.am, align 8, !range !12, !alias.scope !3067, !noalias !3027, !noundef !13 ; 2 uses
  %i.jg = icmp eq i64 %.val.i67.i.i.i, 0
  br i1 %i.jg, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs6SXwsBSuFuw_4just.exit69.i.i.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %.val1.i68.i.i.i = load ptr, ptr %i.gt, align 8, !alias.scope !3067, !noalias !3027, !nonnull !13, !noundef !13
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i68.i.i.i, i64 noundef %.val.i67.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3068
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs6SXwsBSuFuw_4just.exit69.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs6SXwsBSuFuw_4just.exit69.i.i.i: ; preds = %bb.cq, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !3027
  %i.jh = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i, 0
  br i1 %i.jh, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit70.i.i.i, label %bb.cr

bb.cr:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs6SXwsBSuFuw_4just.exit69.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.i.sroa.0.0.copyload.i.i.i) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.i.sroa.0.0.copyload.i.i.i, i64 noundef %.sroa.0.0.copyload1.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3069
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit70.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit70.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs6SXwsBSuFuw_4just.exit80.i.i.i, %bb.cr, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs6SXwsBSuFuw_4just.exit69.i.i.i
  %0 = phi i1 [ true, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs6SXwsBSuFuw_4just.exit80.i.i.i ], [ false, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs6SXwsBSuFuw_4just.exit69.i.i.i ], [ false, %bb.cr ] ; 2 uses
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(760) %i.ap)
          to label %bb.de unwind label %bb.an, !noalias !3030

bb.cs:                                            ; preds = %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !3027
  br label %bb.ct

bb.ct:                                            ; preds = %bb.ck, %bb.cs
  %.sroa.1719.0.i = phi ptr [ %i.jf, %bb.cs ], [ %i.ja, %bb.ck ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3070)
  %.val.i71.i.i.i = load i64, ptr %i.am, align 8, !range !12, !alias.scope !3070, !noalias !3027, !noundef !13 ; 2 uses
  %i.ji = icmp eq i64 %.val.i71.i.i.i, 0
  br i1 %i.ji, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs6SXwsBSuFuw_4just.exit73.i.i.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %.val1.i72.i.i.i = load ptr, ptr %i.gt, align 8, !alias.scope !3070, !noalias !3027, !nonnull !13, !noundef !13
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i72.i.i.i, i64 noundef %.val.i71.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3071
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs6SXwsBSuFuw_4just.exit73.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs6SXwsBSuFuw_4just.exit73.i.i.i: ; preds = %bb.cu, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !3027
  %i.jj = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i, 0
  br i1 %i.jj, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit74.i.i.i, label %bb.cv

bb.cv:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs6SXwsBSuFuw_4just.exit73.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.i.sroa.0.0.copyload.i.i.i) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.i.sroa.0.0.copyload.i.i.i, i64 noundef %.sroa.0.0.copyload1.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3072
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit74.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit74.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs6SXwsBSuFuw_4just.exit84.i.i.i, %bb.cv, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs6SXwsBSuFuw_4just.exit73.i.i.i
  %.sroa.1719.1.i = phi ptr [ %.sroa.1719.4.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs6SXwsBSuFuw_4just.exit84.i.i.i ], [ %.sroa.1719.0.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs6SXwsBSuFuw_4just.exit73.i.i.i ], [ %.sroa.1719.0.i, %bb.cv ] ; 2 uses
  %1 = phi i1 [ true, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs6SXwsBSuFuw_4just.exit84.i.i.i ], [ false, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs6SXwsBSuFuw_4just.exit73.i.i.i ], [ false, %bb.cv ] ; 2 uses
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(760) %i.ap)
          to label %bb.dm unwind label %bb.an, !noalias !3030

bb.cw:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit96.i.i.i
  %i.jk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !3030
  unreachable

bb.cx:                                            ; preds = %_RNvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB4_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE18write_registrationCs6SXwsBSuFuw_4just.exit.thread127.i.i.i, %bb.db, %bb.cz, %_RNvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB4_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE18write_registrationCs6SXwsBSuFuw_4just.exit.thread.i.i.i
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.cx, %bb.cg, %bb.cf, %bb.bv, %bb.bu, %bb.bk, %bb.bj, %bb.az
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.jl, %bb.cx ], [ %.pn32.i.i.i.i, %bb.cg ], [ %i.is, %bb.az ], [ %.pn32.i.i.i.i, %bb.cf ], [ %i.ie, %bb.bk ], [ %i.ie, %bb.bj ], [ %lpad.phi.i.i.i.i, %bb.bu ], [ %lpad.phi.i.i.i.i, %bb.bv ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3073)
  %.val.i75.i.i.i = load i64, ptr %i.ao, align 8, !range !12, !alias.scope !3073, !noalias !3027, !noundef !13 ; 2 uses
  %i.jm = icmp eq i64 %.val.i75.i.i.i, 0
  br i1 %i.jm, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit96.i.i.i, label %bb.cy

bb.cy:                                            ; preds = %.body.i.i.i
  %.val1.i76.i.i.i = load ptr, ptr %i.gy, align 8, !alias.scope !3073, !noalias !3027, !nonnull !13, !noundef !13
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i76.i.i.i, i64 noundef %.val.i75.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3074
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit96.i.i.i

_RNvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB4_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE18write_registrationCs6SXwsBSuFuw_4just.exit.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit52.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.i.sroa.0.0.copyload.i.i.i) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.i.sroa.0.0.copyload.i.i.i, i64 noundef %.sroa.0.0.copyload1.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3052
  br label %_RNvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB4_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE18write_registrationCs6SXwsBSuFuw_4just.exit.thread127.i.i.i

_RNvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB4_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE18write_registrationCs6SXwsBSuFuw_4just.exit.thread127.i.i.i: ; preds = %_RNvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB4_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE18write_registrationCs6SXwsBSuFuw_4just.exit.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit52.i.i.i.i
  %i.jn = invoke fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawNtNtNtCsj6eKBz9Db1c_4core2io5error5ErrorECs6SXwsBSuFuw_4just(ptr noundef nonnull %i.iq)
          to label %bb.dk unwind label %bb.cx

_RNvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB4_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE18write_registrationCs6SXwsBSuFuw_4just.exit.thread.i.i.i: ; preds = %_RNvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB4_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE18write_registrationCs6SXwsBSuFuw_4just.exit.thread128.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit55.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !3027
  %i.jo = invoke noundef nonnull align 8 ptr @_RNvNtNtCsaKJjC64KgbL_3std2io5stdio6stdout()
          to label %bb.cz unwind label %bb.cx, !noalias !3030

bb.cz:                                            ; preds = %_RNvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB4_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE18write_registrationCs6SXwsBSuFuw_4just.exit.thread.i.i.i
  store ptr %i.jo, ptr %i.an, align 8, !noalias !3027
  %i.jp = load ptr, ptr %i.gy, align 8, !noalias !3027, !nonnull !13, !noundef !13
  %i.jq = load i64, ptr %i.gz, align 8, !noalias !3027, !noundef !13
  %i.jr = invoke noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.an, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jp, i64 noundef %i.jq)
          to label %bb.da unwind label %bb.cx, !noalias !3030 ; 2 uses

bb.da:                                            ; preds = %bb.cz
  %.not30.i.i.i = icmp eq ptr %i.jr, null
  br i1 %.not30.i.i.i, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.js = invoke fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawNtNtNtCsj6eKBz9Db1c_4core2io5error5ErrorECs6SXwsBSuFuw_4just(ptr noundef nonnull %i.jr)
          to label %bb.dj unwind label %bb.cx

bb.dc:                                            ; preds = %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !3027
  call void @llvm.experimental.noalias.scope.decl(metadata !3075)
  %.val.i78.i.i.i = load i64, ptr %i.ao, align 8, !range !12, !alias.scope !3075, !noalias !3027, !noundef !13 ; 2 uses
  %i.jt = icmp eq i64 %.val.i78.i.i.i, 0
  br i1 %i.jt, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs6SXwsBSuFuw_4just.exit80.i.i.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %.val1.i79.i.i.i = load ptr, ptr %i.gy, align 8, !alias.scope !3075, !noalias !3027, !nonnull !13, !noundef !13
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i79.i.i.i, i64 noundef %.val.i78.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3076
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs6SXwsBSuFuw_4just.exit80.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs6SXwsBSuFuw_4just.exit80.i.i.i: ; preds = %bb.dd, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !3027
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit70.i.i.i

bb.de:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit70.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !3027
  %i.ju = icmp eq i64 %i.ex, 0
  br i1 %i.ju, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit81.i.i.i, label %bb.df

bb.df:                                            ; preds = %bb.de
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.0.copyload.i.i.i, i64 noundef %i.ex, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3077
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit81.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit81.i.i.i: ; preds = %bb.df, %bb.de
  br i1 %0, label %bb.dg, label %bb.ei

bb.dg:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit81.i.i.i
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.au), !noalias !3078
  br label %bb.ei

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECs6SXwsBSuFuw_4just.exit.i.i: ; preds = %bb.dy, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i, %bb.ai
  %.pn37.i.i.i = phi { ptr, i32 } [ %.pn33.i.i.i, %bb.ai ], [ %.pn35112.i.i.i, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i ], [ %.pn35112.i.i.i, %bb.dy ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3079)
  %.val4.i8.i.i = load i64, ptr %i.av, align 8, !range !16, !alias.scope !3079, !noalias !3080, !noundef !13 ; 2 uses
  %i.jv = icmp sgt i64 %.val4.i8.i.i, 0
  br i1 %i.jv, label %bb.dh, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit.i.i.i

bb.dh:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECs6SXwsBSuFuw_4just.exit.i.i
  %i.jw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.val5.i10.i.i = load ptr, ptr %i.jw, align 8, !alias.scope !3079, !noalias !3080, !nonnull !13, !noundef !13
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i10.i.i, i64 noundef %.val4.i8.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3081
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit.i.i.i: ; preds = %bb.dh, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECs6SXwsBSuFuw_4just.exit.i.i
  %i.jx = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %.val.i9.i.i = load i64, ptr %i.jx, align 8, !range !16, !alias.scope !3079, !noalias !3080, !noundef !13 ; 2 uses
  %i.jy = icmp sgt i64 %.val.i9.i.i, 0
  br i1 %i.jy, label %bb.di, label %.body.i

bb.di:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit.i.i.i
  %i.jz = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %.val1.i.i.i = load ptr, ptr %i.jz, align 8, !alias.scope !3079, !noalias !3080, !nonnull !13, !noundef !13
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i9.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3082
  br label %.body.i

bb.dj:                                            ; preds = %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !3027
  br label %bb.dk

bb.dk:                                            ; preds = %_RNvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB4_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE18write_registrationCs6SXwsBSuFuw_4just.exit.thread127.i.i.i, %bb.dj
  %.sroa.1719.4.i = phi ptr [ %i.js, %bb.dj ], [ %i.jn, %_RNvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB4_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE18write_registrationCs6SXwsBSuFuw_4just.exit.thread127.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3083)
  %.val.i82.i.i.i = load i64, ptr %i.ao, align 8, !range !12, !alias.scope !3083, !noalias !3027, !noundef !13 ; 2 uses
  %i.ka = icmp eq i64 %.val.i82.i.i.i, 0
  br i1 %i.ka, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs6SXwsBSuFuw_4just.exit84.i.i.i, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %.val1.i83.i.i.i = load ptr, ptr %i.gy, align 8, !alias.scope !3083, !noalias !3027, !nonnull !13, !noundef !13
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i83.i.i.i, i64 noundef %.val.i82.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3084
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs6SXwsBSuFuw_4just.exit84.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs6SXwsBSuFuw_4just.exit84.i.i.i: ; preds = %bb.dl, %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !3027
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit74.i.i.i

bb.dm:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit74.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !3027
  %i.kb = icmp eq i64 %i.ex, 0
  br i1 %i.kb, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit85.i.i.i, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.0.copyload.i.i.i, i64 noundef %i.ex, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3085
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit85.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit85.i.i.i: ; preds = %bb.dn, %bb.dm
  br i1 %1, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit97.i.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECs6SXwsBSuFuw_4just.exit.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECs6SXwsBSuFuw_4just.exit.i.i.i: ; preds = %bb.dr, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit85.i.i.i
  %.sroa.1719.2.i = phi ptr [ %.sroa.1719.3.i, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i.i ], [ %.sroa.1719.3.i, %bb.dr ], [ %.sroa.1719.1.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit85.i.i.i ] ; 5 uses
  %.sroa.018.2.i = phi i1 [ %.sroa.018.3.i, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i.i ], [ %.sroa.018.3.i, %bb.dr ], [ true, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit85.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3086)
  %.val4.i.i.i.i = load i64, ptr %i.av, align 8, !range !16, !alias.scope !3087, !noalias !2985, !noundef !13 ; 2 uses
  %i.kc = icmp sgt i64 %.val4.i.i.i.i, 0
  br i1 %i.kc, label %bb.do, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit.i.i.i.i

bb.do:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECs6SXwsBSuFuw_4just.exit.i.i.i
  %i.kd = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.val5.i.i.i.i = load ptr, ptr %i.kd, align 8, !alias.scope !3087, !noalias !2985, !nonnull !13, !noundef !13
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i, i64 noundef %.val4.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3088
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit.i.i.i.i: ; preds = %bb.do, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECs6SXwsBSuFuw_4just.exit.i.i.i
  %i.ke = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %.val.i86.i.i.i = load i64, ptr %i.ke, align 8, !range !16, !alias.scope !3087, !noalias !2985, !noundef !13 ; 2 uses
  %i.kf = icmp sgt i64 %.val.i86.i.i.i, 0
  br i1 %i.kf, label %bb.dp, label %bb.ed

bb.dp:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit.i.i.i.i
  %i.kg = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %.val1.i87.i.i.i = load ptr, ptr %i.kg, align 8, !alias.scope !3087, !noalias !2985, !nonnull !13, !noundef !13
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i87.i.i.i, i64 noundef %.val.i86.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3089
  br label %bb.ed

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit97.i.i.i: ; preds = %bb.dv, %bb.du, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit85.i.i.i, %bb.ak
  %.sroa.1719.3.i = phi ptr [ undef, %bb.ak ], [ %.sroa.1719.5.i, %bb.du ], [ %.sroa.1719.5.i, %bb.dv ], [ %.sroa.1719.1.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit85.i.i.i ] ; 2 uses
  %.sroa.018.3.i = phi i1 [ false, %bb.ak ], [ %storemerge.i.i.i, %bb.du ], [ %storemerge.i.i.i, %bb.dv ], [ true, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit85.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3090)
  %i.kh = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.val4.i88.i.i.i = load ptr, ptr %i.kh, align 8, !alias.scope !3091, !noalias !2985, !nonnull !13, !noundef !13 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %.val5.i89.i.i.i = load i64, ptr %i.ki, align 8, !alias.scope !3091, !noalias !2985, !noundef !13 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3092)
  %i.kj = icmp eq i64 %.val5.i89.i.i.i, 0
  br i1 %i.kj, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i.i, label %.lr.ph.i.i.i90.i.i.i

.lr.ph.i.i.i90.i.i.i:                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit97.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i94.i.i.i
  %.sroa.0.011.i.i.i91.i.i.i = phi i64 [ %i.kl, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i94.i.i.i ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit97.i.i.i ] ; 2 uses
  %i.kk = getelementptr inbounds nuw [24 x i8], ptr %.val4.i88.i.i.i, i64 %.sroa.0.011.i.i.i91.i.i.i ; 2 uses
  %i.kl = add nuw nsw i64 %.sroa.0.011.i.i.i91.i.i.i, 1 ; 2 uses
  %.val8.i.i.i92.i.i.i = load i64, ptr %i.kk, align 8, !range !12, !alias.scope !3093, !noalias !3094, !noundef !13 ; 2 uses
  %i.km = icmp eq i64 %.val8.i.i.i92.i.i.i, 0
  br i1 %i.km, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i94.i.i.i, label %bb.dq

bb.dq:                                            ; preds = %.lr.ph.i.i.i90.i.i.i
  %i.kn = getelementptr i8, ptr %i.kk, i64 8
  %.val9.i.i.i93.i.i.i = load ptr, ptr %i.kn, align 8, !alias.scope !3092, !noalias !3094, !nonnull !13, !noundef !13
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i93.i.i.i, i64 noundef %.val8.i.i.i92.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3095
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i94.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i94.i.i.i: ; preds = %bb.dq, %.lr.ph.i.i.i90.i.i.i
  %i.ko = icmp eq i64 %i.kl, %.val5.i89.i.i.i
  br i1 %i.ko, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i.i, label %.lr.ph.i.i.i90.i.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i94.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit97.i.i.i
  %.val.i95.i.i.i = load i64, ptr %i.au, align 8, !range !12, !alias.scope !3091, !noalias !2985, !noundef !13 ; 2 uses
  %i.kp = icmp eq i64 %.val.i95.i.i.i, 0
  br i1 %i.kp, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECs6SXwsBSuFuw_4just.exit.i.i.i, label %bb.dr

bb.dr:                                            ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i.i
  %i.kq = mul nuw i64 %.val.i95.i.i.i, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i88.i.i.i, i64 noundef %i.kq, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !3094
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECs6SXwsBSuFuw_4just.exit.i.i.i

bb.ds:                                            ; preds = %bb.ci, %bb.ch
  %i.kr = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i, 0
  br i1 %i.kr, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit96.i.i.i, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.i.sroa.0.0.copyload.i.i.i) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.i.sroa.0.0.copyload.i.i.i, i64 noundef %.sroa.0.0.copyload1.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3096
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit96.i.i.i

bb.du:                                            ; preds = %bb.ar, %_RNvXsb_NtNtCsaKJjC64KgbL_3std3ffi6os_strNtB5_8OsStringINtNtCsj6eKBz9Db1c_4core3cmp9PartialEqReE2eq.exit.i.i.i, %bb.aj
  %.sroa.1719.5.i = phi ptr [ undef, %bb.aj ], [ undef, %_RNvXsb_NtNtCsaKJjC64KgbL_3std3ffi6os_strNtB5_8OsStringINtNtCsj6eKBz9Db1c_4core3cmp9PartialEqReE2eq.exit.i.i.i ], [ %i.fi, %bb.ar ] ; 2 uses
  %storemerge.i.i.i = phi i1 [ false, %bb.aj ], [ false, %_RNvXsb_NtNtCsaKJjC64KgbL_3std3ffi6os_strNtB5_8OsStringINtNtCsj6eKBz9Db1c_4core3cmp9PartialEqReE2eq.exit.i.i.i ], [ true, %bb.ar ] ; 2 uses
  %i.ks = icmp eq i64 %i.ex, 0
  br i1 %i.ks, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit97.i.i.i, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload.i.i.i) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.0.copyload.i.i.i, i64 noundef %i.ex, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3097
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit97.i.i.i

bb.dw:                                            ; preds = %.thread.i.i.i, %bb.ai
  %.pn35112.i.i.i = phi { ptr, i32 } [ %i.ew, %.thread.i.i.i ], [ %.pn33.i.i.i, %bb.ai ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3098)
  %i.kt = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.val4.i.i.i = load ptr, ptr %i.kt, align 8, !alias.scope !3098, !noalias !3099, !nonnull !13, !noundef !13 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %.val5.i.i.i = load i64, ptr %i.ku, align 8, !alias.scope !3098, !noalias !3099, !noundef !13 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3100), !noalias !3101
  %i.kv = icmp eq i64 %.val5.i.i.i, 0
  br i1 %i.kv, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i, label %.lr.ph.i.i.i7.i.i

.lr.ph.i.i.i7.i.i:                                ; preds = %bb.dw, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i
  %.sroa.0.011.i.i.i.i.i = phi i64 [ %i.kx, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i ], [ 0, %bb.dw ] ; 2 uses
  %i.kw = getelementptr inbounds nuw [24 x i8], ptr %.val4.i.i.i, i64 %.sroa.0.011.i.i.i.i.i ; 2 uses
  %i.kx = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i = load i64, ptr %i.kw, align 8, !range !12, !alias.scope !3102, !noalias !3103, !noundef !13 ; 2 uses
  %i.ky = icmp eq i64 %.val8.i.i.i.i.i, 0
  br i1 %i.ky, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i, label %bb.dx

bb.dx:                                            ; preds = %.lr.ph.i.i.i7.i.i
  %i.kz = getelementptr i8, ptr %i.kw, i64 8
  %.val9.i.i.i.i.i = load ptr, ptr %i.kz, align 8, !alias.scope !3100, !noalias !3103, !nonnull !13, !noundef !13
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3104
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i: ; preds = %bb.dx, %.lr.ph.i.i.i7.i.i
  %i.la = icmp eq i64 %i.kx, %.val5.i.i.i
  br i1 %i.la, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i, label %.lr.ph.i.i.i7.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i, %bb.dw
  %.val.i.i.i = load i64, ptr %i.au, align 8, !range !12, !alias.scope !3098, !noalias !3099, !noundef !13 ; 2 uses
  %i.lb = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.lb, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECs6SXwsBSuFuw_4just.exit.i.i, label %bb.dy

bb.dy:                                            ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i
  %i.lc = mul nuw i64 %.val.i.i.i, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i, i64 noundef %i.lc, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !3103
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECs6SXwsBSuFuw_4just.exit.i.i

.body.i.i:                                        ; preds = %bb.ah, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i
  %.pn16.i.i.i.i = phi { ptr, i32 } [ %i.ee, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i ], [ %i.cz, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i ], [ %i.cz, %bb.ah ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3105)
  %.val4.i.i = load i64, ptr %i.av, align 8, !range !16, !alias.scope !3105, !noalias !3106, !noundef !13 ; 2 uses
  %i.ld = icmp sgt i64 %.val4.i.i, 0
  br i1 %i.ld, label %bb.dz, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit.i.i

bb.dz:                                            ; preds = %.body.i.i
  %i.le = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.val5.i.i = load ptr, ptr %i.le, align 8, !alias.scope !3105, !noalias !3106, !nonnull !13, !noundef !13
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i, i64 noundef %.val4.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3107
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit.i.i: ; preds = %bb.dz, %.body.i.i
  %i.lf = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %.val.i.i = load i64, ptr %i.lf, align 8, !range !16, !alias.scope !3105, !noalias !3106, !noundef !13 ; 2 uses
  %i.lg = icmp sgt i64 %.val.i.i, 0
  br i1 %i.lg, label %bb.ea, label %.body.i

bb.ea:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit.i.i
  %i.lh = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %.val1.i.i = load ptr, ptr %i.lh, align 8, !alias.scope !3105, !noalias !3106, !nonnull !13, !noundef !13
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3108
  br label %.body.i

bb.eb:                                            ; preds = %bb.ei
  %i.li = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.eh, %bb.eb, %bb.ea, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit.i.i, %bb.di, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %.pn16.i.i.i.i, %bb.ea ], [ %.pn37.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit.i.i.i ], [ %.pn37.i.i.i, %bb.di ], [ %.pn16.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit.i.i ], [ %i.li, %bb.eb ], [ %i.lk, %bb.eh ] ; 2 uses
  %i.lj = icmp sgt i64 %i.bz, 0
  br i1 %i.lj, label %bb.ec, label %common.resume

bb.ec:                                            ; preds = %.body.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.038.i) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.038.i, i64 noundef %i.bz, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3109
  br label %common.resume

bb.ed:                                            ; preds = %bb.dp, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !2985
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !2985
  br i1 %.sroa.018.2.i, label %bb.ee, label %.critedge.i

bb.ee:                                            ; preds = %bb.ed
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1719.2.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !2983
  store ptr %.sroa.1719.2.i, ptr %i.ae, align 8, !noalias !3110
  invoke fastcc void @_RNvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB2_5Error4exitCs6SXwsBSuFuw_4just(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ae) #27
          to label %bb.eg unwind label %bb.ef, !noalias !2983

bb.ef:                                            ; preds = %bb.ee
  %i.lk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs2FJGJNE9lTN_12clap_builder5error10ErrorInnerECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(256) %.sroa.1719.2.i)
          to label %bb.eh unwind label %.body.i12.i, !noalias !2983

.body.i12.i:                                      ; preds = %bb.ef
  %i.ll = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %.sroa.1719.2.i, i64 noundef 256, i64 noundef 8) #26, !noalias !2983
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !2983
  unreachable

bb.eg:                                            ; preds = %bb.ee
  unreachable

bb.eh:                                            ; preds = %bb.ef
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %.sroa.1719.2.i, i64 noundef 256, i64 noundef 8) #26, !noalias !2983
  br label %.body.i

.critedge.i:                                      ; preds = %bb.ed
  %i.lm = icmp sgt i64 %i.bz, 0
end_hunk_1
