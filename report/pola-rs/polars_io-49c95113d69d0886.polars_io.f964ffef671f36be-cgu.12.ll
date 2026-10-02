Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_io-49c95113d69d0886.polars_io.f964ffef671f36be-cgu.12?download=true
inline.NumInlined: 3542
inline.NumDeleted: 1478
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXs_NtNtCscgRAwXFJnXP_4core6future6futureINtNtB8_3pin3PinINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNCINvMs_NtNtCs2mZqlW55729_12polars_utils11async_utils13error_captureINtB1C_12ErrorCaptureNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE11wrap_futureNCNCNvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud12cloud_writer15internal_writerNtB3X_19InternalCloudWriter3put00uE0EENtB4_6Future4pollB43_:bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !37454, !noalias !37393
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCslt8cbK4E2O5_12futures_util6future6future12catch_unwind11CatchUnwindINtNtNtB4_5panic11unwind_safe16AssertUnwindSafeNCNCNvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud12cloud_writer15internal_writerNtB2O_19InternalCloudWriter3put00EEEB2U_.exit.i, !dbg !37425

bb.v:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !37454, !noalias !37393
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECslpwjCj2YNBy_9polars_io.exit21.i, !dbg !37455

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECslpwjCj2YNBy_9polars_io.exit21.i: ; preds = %bb.v, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i), !dbg !37424
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !37456, !noalias !37393
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %i.e, i64 80, i1 false), !dbg !37456, !noalias !37393
  call void @llvm.experimental.noalias.scope.decl(metadata !37403), !dbg !37457
  %i.ag = load i64, ptr %i.a, align 8, !dbg !37458, !range !1649, !alias.scope !37403, !noundef !1343 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 2, !dbg !37458
  br i1 %i.ah, label %_RINvNtCscgRAwXFJnXP_4core3mem4dropINtNtB4_6result6ResultuINtNtNtNtCskmDBXs7hs3c_5tokio4sync4mpsc5error12TrySendErrorINtNtNtCs2mZqlW55729_12polars_utils11async_utils13error_capture12ErrorMessageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEECslpwjCj2YNBy_9polars_io.exit.i, label %bb.w, !dbg !37458

bb.w:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECslpwjCj2YNBy_9polars_io.exit21.i
  call void @llvm.experimental.noalias.scope.decl(metadata !37404), !dbg !37458
  %i.ai = icmp eq i64 %i.ag, 0, !dbg !37409
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !37409 ; 3 uses
  br i1 %i.ai, label %bb.x, label %bb.ae, !dbg !37409

bb.x:                                             ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !37405), !dbg !37409
  %i.ak = load i64, ptr %i.aj, align 8, !dbg !37459, !range !1455, !alias.scope !37406, !noundef !1343
  %.not.i.i.i = icmp eq i64 %i.ak, 18, !dbg !37459
  br i1 %.not.i.i.i, label %bb.y, label %.invoke, !dbg !37459

bb.y:                                             ; preds = %bb.x
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !37459
  %.val.i.i.i = load ptr, ptr %i.al, align 8, !dbg !37459, !alias.scope !37406 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !37459
  %.val1.i.i.i = load ptr, ptr %i.am, align 8, !dbg !37459, !alias.scope !37406, !nonnull !1343, !align !1450, !noundef !1343 ; 5 uses
  %i.an = load ptr, ptr %.val1.i.i.i, align 8, !dbg !37460, !invariant.load !1343, !noalias !37406 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.an, null, !dbg !37460
  br i1 %.not.i.i.i.i, label %bb.aa, label %bb.z, !dbg !37460

bb.z:                                             ; preds = %bb.y
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  invoke void %i.an(ptr noundef nonnull %.val.i.i.i)
          to label %bb.aa unwind label %bb.ac, !dbg !37460, !noalias !37406

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ao = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8, !dbg !37461
  %i.ap = load i64, ptr %i.ao, align 8, !dbg !37461, !range !1643, !invariant.load !1343, !noalias !37406 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0, !dbg !37462
  br i1 %i.aq, label %_RINvNtCscgRAwXFJnXP_4core3mem4dropINtNtB4_6result6ResultuINtNtNtNtCskmDBXs7hs3c_5tokio4sync4mpsc5error12TrySendErrorINtNtNtCs2mZqlW55729_12polars_utils11async_utils13error_capture12ErrorMessageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEECslpwjCj2YNBy_9polars_io.exit.i, label %bb.ab, !dbg !37462

bb.ab:                                            ; preds = %bb.aa
  %i.ar = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16, !dbg !37461
  %i.as = load i64, ptr %i.ar, align 8, !dbg !37463, !range !1451, !invariant.load !1343, !noalias !37406
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %i.ap, i64 noundef range(i64 1, 536870913) %i.as) #43, !dbg !37464, !noalias !37406
  br label %_RINvNtCscgRAwXFJnXP_4core3mem4dropINtNtB4_6result6ResultuINtNtNtNtCskmDBXs7hs3c_5tokio4sync4mpsc5error12TrySendErrorINtNtNtCs2mZqlW55729_12polars_utils11async_utils13error_capture12ErrorMessageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEECslpwjCj2YNBy_9polars_io.exit.i, !dbg !37465

bb.ac:                                            ; preds = %bb.z
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8, !dbg !37466
  %i.av = load i64, ptr %i.au, align 8, !dbg !37466, !range !1643, !invariant.load !1343, !noalias !37406 ; 2 uses
  %i.aw = icmp eq i64 %i.av, 0, !dbg !37467
  br i1 %i.aw, label %.body, label %bb.ad, !dbg !37467

bb.ad:                                            ; preds = %bb.ac
  %i.ax = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16, !dbg !37466
  %i.ay = load i64, ptr %i.ax, align 8, !dbg !37468, !range !1451, !invariant.load !1343, !noalias !37406
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %i.av, i64 noundef range(i64 1, 536870913) %i.ay) #43, !dbg !37469, !noalias !37406
  br label %.body, !dbg !37470

bb.ae:                                            ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !37407), !dbg !37409
  %i.az = load i64, ptr %i.aj, align 8, !dbg !37471, !range !1455, !alias.scope !37408, !noundef !1343
  %.not.i1.i.i = icmp eq i64 %i.az, 18, !dbg !37471
  br i1 %.not.i1.i.i, label %bb.af, label %.invoke, !dbg !37471

.invoke:                                          ; preds = %bb.ae, %bb.x
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.aj)
          to label %_RINvNtCscgRAwXFJnXP_4core3mem4dropINtNtB4_6result6ResultuINtNtNtNtCskmDBXs7hs3c_5tokio4sync4mpsc5error12TrySendErrorINtNtNtCs2mZqlW55729_12polars_utils11async_utils13error_capture12ErrorMessageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEECslpwjCj2YNBy_9polars_io.exit.i unwind label %bb.al, !dbg !37472

bb.af:                                            ; preds = %bb.ae
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !37471
  %.val.i2.i.i = load ptr, ptr %i.ba, align 8, !dbg !37471, !alias.scope !37408 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !37471
  %.val1.i3.i.i = load ptr, ptr %i.bb, align 8, !dbg !37471, !alias.scope !37408, !nonnull !1343, !align !1450, !noundef !1343 ; 5 uses
  %i.bc = load ptr, ptr %.val1.i3.i.i, align 8, !dbg !37473, !invariant.load !1343, !noalias !37408 ; 2 uses
  %.not.i.i4.i.i = icmp eq ptr %i.bc, null, !dbg !37473
  br i1 %.not.i.i4.i.i, label %bb.ah, label %bb.ag, !dbg !37473

bb.ag:                                            ; preds = %bb.af
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i2.i.i) ]
  invoke void %i.bc(ptr noundef nonnull %.val.i2.i.i)
          to label %bb.ah unwind label %bb.aj, !dbg !37473, !noalias !37408

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.bd = getelementptr inbounds nuw i8, ptr %.val1.i3.i.i, i64 8, !dbg !37474
  %i.be = load i64, ptr %i.bd, align 8, !dbg !37474, !range !1643, !invariant.load !1343, !noalias !37408 ; 2 uses
  %i.bf = icmp eq i64 %i.be, 0, !dbg !37475
  br i1 %i.bf, label %_RINvNtCscgRAwXFJnXP_4core3mem4dropINtNtB4_6result6ResultuINtNtNtNtCskmDBXs7hs3c_5tokio4sync4mpsc5error12TrySendErrorINtNtNtCs2mZqlW55729_12polars_utils11async_utils13error_capture12ErrorMessageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEECslpwjCj2YNBy_9polars_io.exit.i, label %bb.ai, !dbg !37475

bb.ai:                                            ; preds = %bb.ah
  %i.bg = getelementptr inbounds nuw i8, ptr %.val1.i3.i.i, i64 16, !dbg !37474
  %i.bh = load i64, ptr %i.bg, align 8, !dbg !37476, !range !1451, !invariant.load !1343, !noalias !37408
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i2.i.i) ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i2.i.i, i64 noundef range(i64 1, 0) %i.be, i64 noundef range(i64 1, 536870913) %i.bh) #43, !dbg !37477, !noalias !37408
  br label %_RINvNtCscgRAwXFJnXP_4core3mem4dropINtNtB4_6result6ResultuINtNtNtNtCskmDBXs7hs3c_5tokio4sync4mpsc5error12TrySendErrorINtNtNtCs2mZqlW55729_12polars_utils11async_utils13error_capture12ErrorMessageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEECslpwjCj2YNBy_9polars_io.exit.i, !dbg !37478

bb.aj:                                            ; preds = %bb.ag
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.val1.i3.i.i, i64 8, !dbg !37479
  %i.bk = load i64, ptr %i.bj, align 8, !dbg !37479, !range !1643, !invariant.load !1343, !noalias !37408 ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 0, !dbg !37480
  br i1 %i.bl, label %.body, label %bb.ak, !dbg !37480

bb.ak:                                            ; preds = %bb.aj
  %i.bm = getelementptr inbounds nuw i8, ptr %.val1.i3.i.i, i64 16, !dbg !37479
  %i.bn = load i64, ptr %i.bm, align 8, !dbg !37481, !range !1451, !invariant.load !1343, !noalias !37408
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i2.i.i, i64 noundef range(i64 1, 0) %i.bk, i64 noundef range(i64 1, 536870913) %i.bn) #43, !dbg !37482, !noalias !37408
  br label %.body, !dbg !37483

bb.al:                                            ; preds = %.invoke
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !37484

.body:                                            ; preds = %bb.ac, %bb.ad, %bb.aj, %bb.ak, %bb.al
  %eh.lpad-body = phi { ptr, i32 } [ %i.bo, %bb.al ], [ %i.at, %bb.ac ], [ %i.at, %bb.ad ], [ %i.bi, %bb.ak ], [ %i.bi, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !37484, !noalias !37393
  br label %bb.aq, !dbg !37439

_RINvNtCscgRAwXFJnXP_4core3mem4dropINtNtB4_6result6ResultuINtNtNtNtCskmDBXs7hs3c_5tokio4sync4mpsc5error12TrySendErrorINtNtNtCs2mZqlW55729_12polars_utils11async_utils13error_capture12ErrorMessageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEECslpwjCj2YNBy_9polars_io.exit.i: ; preds = %.invoke, %bb.ai, %bb.ah, %bb.ab, %bb.aa, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECslpwjCj2YNBy_9polars_io.exit21.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !37484, !noalias !37393
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !37439, !noalias !37393
  %i.bp = getelementptr inbounds nuw i8, ptr %.val, i64 256, !dbg !37440 ; 5 uses
  invoke void @_RNvXs9_NtNtNtCskmDBXs7hs3c_5tokio4sync4mpsc4chanINtB5_2TxINtNtNtCs2mZqlW55729_12polars_utils11async_utils13error_capture12ErrorMessageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtB7_7bounded9SemaphoreENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bp)
          to label %bb.ao unwind label %bb.am, !dbg !37485

bb.am:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3mem4dropINtNtB4_6result6ResultuINtNtNtNtCskmDBXs7hs3c_5tokio4sync4mpsc5error12TrySendErrorINtNtNtCs2mZqlW55729_12polars_utils11async_utils13error_capture12ErrorMessageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEECslpwjCj2YNBy_9polars_io.exit.i
  %i.bq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !37410), !dbg !37485
  call void @llvm.experimental.noalias.scope.decl(metadata !37411), !dbg !37486
  %i.br = load ptr, ptr %i.bp, align 8, !dbg !37487, !alias.scope !37412, !noalias !37393, !nonnull !1343, !noundef !1343
  %i.bs = atomicrmw sub ptr %i.br, i64 1 release, align 8, !dbg !37488, !noalias !37413
  %i.bt = icmp eq i64 %i.bs, 1, !dbg !37489
  br i1 %i.bt, label %bb.an, label %.body.i, !dbg !37489

bb.an:                                            ; preds = %bb.am
  fence acquire, !dbg !37490
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtCskmDBXs7hs3c_5tokio4sync4mpsc4chan4ChanINtNtNtCs2mZqlW55729_12polars_utils11async_utils13error_capture12ErrorMessageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtBL_7bounded9SemaphoreEE9drop_slowCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bp) #45
          to label %.body.i unwind label %bb.ap, !dbg !37491

bb.ao:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3mem4dropINtNtB4_6result6ResultuINtNtNtNtCskmDBXs7hs3c_5tokio4sync4mpsc5error12TrySendErrorINtNtNtCs2mZqlW55729_12polars_utils11async_utils13error_capture12ErrorMessageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEECslpwjCj2YNBy_9polars_io.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !37414), !dbg !37485
  call void @llvm.experimental.noalias.scope.decl(metadata !37415), !dbg !37492
  %i.bu = load ptr, ptr %i.bp, align 8, !dbg !37493, !alias.scope !37416, !noalias !37393, !nonnull !1343, !noundef !1343
  %i.bv = atomicrmw sub ptr %i.bu, i64 1 release, align 8, !dbg !37494, !noalias !37417
  %i.bw = icmp eq i64 %i.bv, 1, !dbg !37495
  br i1 %i.bw, label %.invoke.i, label %_RNCINvMs_NtNtCs2mZqlW55729_12polars_utils11async_utils13error_captureINtB7_12ErrorCaptureNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE11wrap_futureNCNCNvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud12cloud_writer15internal_writerNtB2r_19InternalCloudWriter3put00uE0B2x_.exit, !dbg !37495

.invoke.i:                                        ; preds = %bb.ao, %bb.p
  %i.bx = phi ptr [ %i.u, %bb.p ], [ %i.bp, %bb.ao ]
  fence acquire, !dbg !37496
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtCskmDBXs7hs3c_5tokio4sync4mpsc4chan4ChanINtNtNtCs2mZqlW55729_12polars_utils11async_utils13error_capture12ErrorMessageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtBL_7bounded9SemaphoreEE9drop_slowCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bx) #45
          to label %_RNCINvMs_NtNtCs2mZqlW55729_12polars_utils11async_utils13error_captureINtB7_12ErrorCaptureNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE11wrap_futureNCNCNvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud12cloud_writer15internal_writerNtB2r_19InternalCloudWriter3put00uE0B2x_.exit unwind label %bb.r, !dbg !37497

bb.ap:                                            ; preds = %bb.an
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !37485
  unreachable, !dbg !37485

bb.aq:                                            ; preds = %.body, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCslt8cbK4E2O5_12futures_util6future6future12catch_unwind11CatchUnwindINtNtNtB4_5panic11unwind_safe16AssertUnwindSafeNCNCNvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud12cloud_writer15internal_writerNtB2O_19InternalCloudWriter3put00EEEB2U_.exit.i
  %.pn11.pn.i = phi { ptr, i32 } [ %.pn5.pn.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCslt8cbK4E2O5_12futures_util6future6future12catch_unwind11CatchUnwindINtNtNtB4_5panic11unwind_safe16AssertUnwindSafeNCNCNvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud12cloud_writer15internal_writerNtB2O_19InternalCloudWriter3put00EEEB2U_.exit.i ], [ %eh.lpad-body, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !37439, !noalias !37393
  %i.bz = getelementptr inbounds nuw i8, ptr %.val, i64 256, !dbg !37440
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs2mZqlW55729_12polars_utils11async_utils13error_capture12ErrorCaptureNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(8) %i.bz) #40
          to label %.body.i unwind label %bb.ar, !dbg !37440

bb.ar:                                            ; preds = %bb.aq, %bb.e
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !37419
  unreachable, !dbg !37419

_RNCINvMs_NtNtCs2mZqlW55729_12polars_utils11async_utils13error_captureINtB7_12ErrorCaptureNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE11wrap_futureNCNCNvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud12cloud_writer15internal_writerNtB2r_19InternalCloudWriter3put00uE0B2x_.exit: ; preds = %bb.h, %bb.p, %bb.ao, %.invoke.i
  %storemerge.i = phi i8 [ 3, %bb.h ], [ 1, %bb.p ], [ 1, %bb.ao ], [ 1, %.invoke.i ], !dbg !37428
  store i8 %storemerge.i, ptr %i.f, align 8, !dbg !37428, !noalias !37393
  ret i1 %i.o, !dbg !37498
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCscgRAwXFJnXP_4core6future6futureINtNtB8_3pin3PinINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNCNCNvNtNtCslpwjCj2YNBy_9polars_io10file_cache10cache_lock22GLOBAL_FILE_CACHE_LOCK0s_0EENtB4_6Future4pollB1E_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !37499 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [112 x i8], align 8               ; 5 uses
  %i.d = alloca [64 x i8], align 8                ; 5 uses
  %.val = load ptr, ptr %0, align 8, !dbg !37587, !nonnull !1343, !noundef !1343 ; 22 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 42, !dbg !37588 ; 3 uses
  %i.f = load i8, ptr %i.e, align 2, !dbg !37588, !range !1697, !noalias !37578, !noundef !1343
  switch i8 %i.f, label %bb.b [
    i8 0, label %bb.c
    i8 2, label %bb.e
    i8 3, label %bb.z
    i8 4, label %bb.g
  ], !dbg !37588

bb.b:                                             ; preds = %bb.a
  unreachable, !dbg !37589

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCskmDBXs7hs3c_5tokio4sync6notify6NotifyEECslpwjCj2YNBy_9polars_io.exit.i: ; preds = %bb.ak, %.body.i
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 41, !dbg !37590
  %i.h = load i8, ptr %i.g, align 1, !dbg !37590, !range !1463, !noalias !37578, !noundef !1343
  %i.i = trunc nuw i8 %i.h to i1, !dbg !37590
  br i1 %i.i, label %bb.ap, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCskmDBXs7hs3c_5tokio4sync6notify6NotifyEECslpwjCj2YNBy_9polars_io.exit20.i, !dbg !37590

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 41, !dbg !37591
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 24, !dbg !37592 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 8, !dbg !37593
  store i8 0, ptr %i.j, align 1, !dbg !37594, !noalias !37578
  %2 = load <2 x ptr>, ptr %i.k, align 8, !dbg !37592, !noalias !37578
  %3 = load ptr, ptr %i.k, align 8, !dbg !37592, !noalias !37578, !nonnull !1343, !noundef !1343
  store ptr %3, ptr %.val, align 8, !dbg !37595, !noalias !37578
  %4 = getelementptr inbounds nuw i8, <2 x ptr> %2, <2 x i64> <i64 16, i64 0>, !dbg !37596
  store <2 x ptr> %4, ptr %i.l, align 8, !dbg !37593, !noalias !37578
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 40, !dbg !37597
  store i8 0, ptr %i.m, align 8, !dbg !37597, !noalias !37578
  br label %bb.d, !dbg !37598

bb.d:                                             ; preds = %bb.p, %bb.c
  %i.n = phi i8 [ %.pre.i, %bb.p ], [ 0, %bb.c ], !dbg !37599
  %i.o = trunc nuw i8 %i.n to i1, !dbg !37599
  br i1 %i.o, label %bb.u, label %bb.v, !dbg !37599

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #44, !dbg !37588
  unreachable, !dbg !37588

bb.f:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio4time5sleep5SleepECslpwjCj2YNBy_9polars_io(ptr noundef nonnull align 8 %i.q) #40
          to label %.body.i unwind label %bb.al, !dbg !37600

bb.g:                                             ; preds = %bb.a, %bb.ao
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 48, !dbg !37601 ; 3 uses
  %i.r = invoke noundef zeroext i1 @_RNvXs_NtNtCskmDBXs7hs3c_5tokio4time5sleepNtB4_5SleepNtNtNtCscgRAwXFJnXP_4core6future6future6Future4poll(ptr noundef nonnull align 8 %i.q, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.h unwind label %bb.f, !dbg !37601

bb.h:                                             ; preds = %bb.g
  br i1 %i.r, label %_RNCNCNvNtNtCslpwjCj2YNBy_9polars_io10file_cache10cache_lock22GLOBAL_FILE_CACHE_LOCK0s_0B9_.exit, label %bb.i, !dbg !37601

bb.i:                                             ; preds = %bb.h
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio4time5sleep5SleepECslpwjCj2YNBy_9polars_io(ptr noundef nonnull align 8 %i.q)
          to label %bb.k unwind label %bb.j, !dbg !37600

bb.j:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.k:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio4sync6notify8NotifiedECslpwjCj2YNBy_9polars_io.exit.i, %bb.aj, %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 8, !dbg !37602
  %i.u = load ptr, ptr %i.t, align 8, !dbg !37602, !noalias !37578, !nonnull !1343, !noundef !1343
  %i.v = atomicrmw xchg ptr %i.u, i8 0 monotonic, align 1, !dbg !37603
  %.not.i = icmp eq i8 %i.v, 0, !dbg !37604
  br i1 %.not.i, label %bb.l, label %bb.an, !dbg !37602

bb.l:                                             ; preds = %bb.k
  %i.w = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCslpwjCj2YNBy_9polars_io10file_cache10cache_lock22GLOBAL_FILE_CACHE_LOCK, i64 32) acquire, align 8, !dbg !37605, !noalias !37578
  %i.x = icmp eq i32 %i.w, 0, !dbg !37606
  br i1 %i.x, label %_RNvXs1_NtNtCsh8eZTKRCwoO_3std4sync9lazy_lockINtB5_8LazyLockNtNtNtCslpwjCj2YNBy_9polars_io10file_cache10cache_lock10GlobalLockENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefB11_.exit.i, label %bb.m, !dbg !37606, !prof !1456

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !37607, !noalias !37578
  store ptr @_RNvNtNtCslpwjCj2YNBy_9polars_io10file_cache10cache_lock22GLOBAL_FILE_CACHE_LOCK, ptr %i.b, align 8, !dbg !37608, !noalias !37578
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !37609, !noalias !37578
  store ptr %i.b, ptr %i.a, align 8, !dbg !37609, !noalias !37578
  invoke void @_RNvMs0_NtNtNtNtCsh8eZTKRCwoO_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtNtCslpwjCj2YNBy_9polars_io10file_cache10cache_lock22GLOBAL_FILE_CACHE_LOCK, i64 32), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @16, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11)
          to label %.noexc.i unwind label %bb.n, !dbg !37610

.noexc.i:                                         ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !37611, !noalias !37578
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !37612, !noalias !37578
  br label %_RNvXs1_NtNtCsh8eZTKRCwoO_3std4sync9lazy_lockINtB5_8LazyLockNtNtNtCslpwjCj2YNBy_9polars_io10file_cache10cache_lock10GlobalLockENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefB11_.exit.i, !dbg !37612

bb.n:                                             ; preds = %_RNvXs1_NtNtCsh8eZTKRCwoO_3std4sync9lazy_lockINtB5_8LazyLockNtNtNtCslpwjCj2YNBy_9polars_io10file_cache10cache_lock10GlobalLockENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefB11_.exit.i, %bb.m
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RNvXs1_NtNtCsh8eZTKRCwoO_3std4sync9lazy_lockINtB5_8LazyLockNtNtNtCslpwjCj2YNBy_9polars_io10file_cache10cache_lock10GlobalLockENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefB11_.exit.i: ; preds = %.noexc.i, %bb.l
  %i.z = invoke noundef i8 @_RNvMs0_NtNtCslpwjCj2YNBy_9polars_io10file_cache10cache_lockNtB5_10GlobalLock10try_unlock(ptr noundef nonnull align 8 @_RNvNtNtCslpwjCj2YNBy_9polars_io10file_cache10cache_lock22GLOBAL_FILE_CACHE_LOCK)
          to label %bb.o unwind label %bb.n, !dbg !37613

bb.o:                                             ; preds = %_RNvXs1_NtNtCsh8eZTKRCwoO_3std4sync9lazy_lockINtB5_8LazyLockNtNtNtCslpwjCj2YNBy_9polars_io10file_cache10cache_lock10GlobalLockENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefB11_.exit.i
  switch i8 %i.z, label %bb.q [
    i8 2, label %bb.an
    i8 0, label %bb.p
  ], !dbg !37614

bb.p:                                             ; preds = %bb.s, %bb.q, %bb.o
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !dbg !37599, !range !1463, !noalias !37578
  br label %bb.d, !dbg !37598

bb.q:                                             ; preds = %bb.o
  %i.aa = getelementptr inbounds nuw i8, ptr %.val, i64 40, !dbg !37615
  %i.ab = load i8, ptr %i.aa, align 8, !dbg !37615, !range !1463, !noalias !37578, !noundef !1343
  %i.ac = trunc nuw i8 %i.ab to i1, !dbg !37615
  br i1 %i.ac, label %bb.s, label %bb.p, !dbg !37615

bb.r:                                             ; preds = %bb.s
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body.i, !dbg !37616

bb.s:                                             ; preds = %bb.q
  invoke void @_RNvNtNtCsh8eZTKRCwoO_3std2io5stdio7__eprint(ptr noundef nonnull @170, ptr noundef nonnull inttoptr (i64 133 to ptr))
          to label %bb.p unwind label %bb.r, !dbg !37617

bb.t:                                             ; preds = %bb.u
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body.i, !dbg !37616

bb.u:                                             ; preds = %bb.d
  invoke void @_RNvNtNtCsh8eZTKRCwoO_3std2io5stdio7__eprint(ptr noundef nonnull @171, ptr noundef nonnull inttoptr (i64 135 to ptr))
          to label %bb.v unwind label %bb.t, !dbg !37618

bb.v:                                             ; preds = %bb.u, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !37619, !noalias !37578
  %i.af = getelementptr inbounds nuw i8, ptr %.val, i64 16, !dbg !37619
  %.val16.i = load ptr, ptr %i.af, align 8, !dbg !37619, !noalias !37578, !nonnull !1343, !noundef !1343
  %i.ag = getelementptr inbounds nuw i8, ptr %.val16.i, i64 16, !dbg !37620
  invoke void @_RNvMs5_NtNtCskmDBXs7hs3c_5tokio4sync6notifyNtB5_6Notify8notified(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.d, ptr noundef nonnull align 8 %i.ag)
          to label %bb.x unwind label %bb.w, !dbg !37621

bb.w:                                             ; preds = %bb.v
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !37622, !noalias !37578
  br label %.body.i, !dbg !37616

bb.x:                                             ; preds = %bb.v
  %i.ai = getelementptr inbounds nuw i8, ptr %.val, i64 48, !dbg !37619
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ai, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.d, i64 64, i1 false), !dbg !37623, !noalias !37578
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !37622, !noalias !37578
  br label %bb.z, !dbg !37624

bb.y:                                             ; preds = %bb.z
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio4sync6notify8NotifiedECslpwjCj2YNBy_9polars_io(ptr noundef nonnull align 8 %i.ak) #40
          to label %.body.i unwind label %bb.al, !dbg !37622

bb.z:                                             ; preds = %bb.a, %bb.x
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 48, !dbg !37624 ; 3 uses
  %i.al = invoke noundef zeroext i1 @_RNvXsa_NtNtCskmDBXs7hs3c_5tokio4sync6notifyNtB5_8NotifiedNtNtNtCscgRAwXFJnXP_4core6future6future6Future4poll(ptr noundef nonnull align 8 %i.ak, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.aa unwind label %bb.y, !dbg !37624

bb.aa:                                            ; preds = %bb.z
  br i1 %i.al, label %_RNCNCNvNtNtCslpwjCj2YNBy_9polars_io10file_cache10cache_lock22GLOBAL_FILE_CACHE_LOCK0s_0B9_.exit, label %bb.ab, !dbg !37624

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvXsb_NtNtCskmDBXs7hs3c_5tokio4sync6notifyNtB5_8NotifiedNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.ak)
          to label %bb.ae unwind label %bb.ac, !dbg !37625

bb.ac:                                            ; preds = %bb.ab
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = getelementptr i8, ptr %.val, i64 80, !dbg !37625
  %.val2.i.i = load ptr, ptr %i.an, align 8, !dbg !37625, !noalias !37578, !align !1450, !noundef !1343 ; 2 uses
  %i.ao = icmp eq ptr %.val2.i.i, null, !dbg !37626
  br i1 %i.ao, label %.body.i, label %bb.ad, !dbg !37626

bb.ad:                                            ; preds = %bb.ac
  %i.ap = getelementptr i8, ptr %.val, i64 88, !dbg !37625
  %.val3.i.i = load ptr, ptr %i.ap, align 8, !dbg !37625, !noalias !37578
  %i.aq = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 24, !dbg !37627
  %i.ar = load ptr, ptr %i.aq, align 8, !dbg !37627, !nonnull !1343, !noundef !1343
  invoke void %i.ar(ptr noundef %.val3.i.i)
          to label %.body.i unwind label %bb.ag, !dbg !37627, !inline_history !704

bb.ae:                                            ; preds = %bb.ab
  %i.as = getelementptr i8, ptr %.val, i64 80, !dbg !37625
  %.val.i.i = load ptr, ptr %i.as, align 8, !dbg !37625, !noalias !37578, !align !1450, !noundef !1343 ; 2 uses
  %i.at = icmp eq ptr %.val.i.i, null, !dbg !37628
  br i1 %i.at, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio4sync6notify8NotifiedECslpwjCj2YNBy_9polars_io.exit.i, label %bb.af, !dbg !37628

bb.af:                                            ; preds = %bb.ae
  %i.au = getelementptr i8, ptr %.val, i64 88, !dbg !37625
  %.val1.i.i = load ptr, ptr %i.au, align 8, !dbg !37625, !noalias !37578
  %i.av = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24, !dbg !37629
  %i.aw = load ptr, ptr %i.av, align 8, !dbg !37629, !nonnull !1343, !noundef !1343
  invoke void %i.aw(ptr noundef %.val1.i.i)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio4sync6notify8NotifiedECslpwjCj2YNBy_9polars_io.exit.i unwind label %bb.ah, !dbg !37629, !inline_history !1731

bb.ag:                                            ; preds = %bb.ad
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !37625
  unreachable, !dbg !37625

bb.ah:                                            ; preds = %bb.af
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio4sync6notify8NotifiedECslpwjCj2YNBy_9polars_io.exit.i: ; preds = %bb.af, %bb.ae
  %i.az = getelementptr inbounds nuw i8, ptr %.val, i64 40, !dbg !37630
  %i.ba = load i8, ptr %i.az, align 8, !dbg !37630, !range !1463, !noalias !37578, !noundef !1343
  %i.bb = trunc nuw i8 %i.ba to i1, !dbg !37630
  br i1 %i.bb, label %bb.aj, label %bb.k, !dbg !37630

bb.ai:                                            ; preds = %bb.aj
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body.i, !dbg !37616

bb.aj:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio4sync6notify8NotifiedECslpwjCj2YNBy_9polars_io.exit.i
  invoke void @_RNvNtNtCsh8eZTKRCwoO_3std2io5stdio7__eprint(ptr noundef nonnull @172, ptr noundef nonnull inttoptr (i64 119 to ptr))
          to label %bb.k unwind label %bb.ai, !dbg !37631

.body.i:                                          ; preds = %bb.w, %bb.y, %bb.ac, %bb.ad, %bb.ah, %bb.f, %bb.j, %bb.am, %bb.ai, %bb.t, %bb.r, %bb.n
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.add.v2i64
!37306 = distinct !DISubprogram(name: "drop_in_place<tokio::sync::mpsc::error::TrySendError<polars_utils::async_utils::error_capture::ErrorMessage<polars_error::PolarsError>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCskmDBXs7hs3c_5tokio4sync4mpsc5error12TrySendErrorINtNtNtCs2mZqlW55729_12polars_utils11async_utils13error_capture12ErrorMessageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io", scope: !1365, file: !1364, line: 810, type: !1344, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1343)
!37307 = distinct !DILocation(line: 810, column: 1, scope: !37302, inlinedAt: !37303)
!37308 = distinct !{!37308, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs2mZqlW55729_12polars_utils11async_utils13error_capture12ErrorMessageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECslpwjCj2YNBy_9polars_io"}
!37309 = distinct !{!37309, !37308, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs2mZqlW55729_12polars_utils11async_utils13error_capture12ErrorMessageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECslpwjCj2YNBy_9polars_io: argument 0"}
!37310 = distinct !DISubprogram(name: "drop_in_place<polars_utils::async_utils::error_capture::ErrorMessage<polars_error::PolarsError>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs2mZqlW55729_12polars_utils11async_utils13error_capture12ErrorMessageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECslpwjCj2YNBy_9polars_io", scope: !1365, file: !1364, line: 810, type: !1344, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1343)
!37311 = distinct !DILocation(line: 810, column: 1, scope: !37306, inlinedAt: !37307)
!37312 = distinct !DILocation(line: 810, column: 1, scope: !37310, inlinedAt: !37311)
!37313 = distinct !DILocation(line: 810, column: 1, scope: !280, inlinedAt: !37312)
!37314 = distinct !DILocation(line: 1919, column: 26, scope: !285, inlinedAt: !37313)
!37315 = distinct !DILocation(line: 255, column: 43, scope: !283, inlinedAt: !37314)
!37316 = distinct !DILocation(line: 255, column: 68, scope: !283, inlinedAt: !37314)
!37317 = distinct !DILocation(line: 125, column: 30, scope: !288, inlinedAt: !37316)
!37318 = distinct !DILocation(line: 1921, column: 24, scope: !286, inlinedAt: !37313)
!37319 = distinct !DILocation(line: 462, column: 23, scope: !10, inlinedAt: !37318)
!37320 = distinct !DILocation(line: 344, column: 9, scope: !9, inlinedAt: !37319)
!37321 = distinct !DILocation(line: 229, column: 22, scope: !8, inlinedAt: !37320)
!37322 = distinct !DILocation(line: 810, column: 1, scope: !280, inlinedAt: !37312)
!37323 = distinct !DILocation(line: 1919, column: 26, scope: !285, inlinedAt: !37322)
!37324 = distinct !DILocation(line: 255, column: 43, scope: !283, inlinedAt: !37323)
!37325 = distinct !DILocation(line: 255, column: 68, scope: !283, inlinedAt: !37323)
!37326 = distinct !DILocation(line: 125, column: 30, scope: !288, inlinedAt: !37325)
!37327 = distinct !DILocation(line: 1921, column: 24, scope: !286, inlinedAt: !37322)
!37328 = distinct !DILocation(line: 462, column: 23, scope: !10, inlinedAt: !37327)
!37329 = distinct !DILocation(line: 344, column: 9, scope: !9, inlinedAt: !37328)
!37330 = distinct !DILocation(line: 229, column: 22, scope: !8, inlinedAt: !37329)
!37331 = distinct !{!37331, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs2mZqlW55729_12polars_utils11async_utils13error_capture12ErrorMessageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECslpwjCj2YNBy_9polars_io"}
!37332 = distinct !{!37332, !37331, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs2mZqlW55729_12polars_utils11async_utils13error_capture12ErrorMessageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECslpwjCj2YNBy_9polars_io: argument 0"}
!37333 = distinct !DILocation(line: 810, column: 1, scope: !37306, inlinedAt: !37307)
!37334 = distinct !DILocation(line: 810, column: 1, scope: !37310, inlinedAt: !37333)
!37335 = distinct !DILocation(line: 810, column: 1, scope: !280, inlinedAt: !37334)
!37336 = distinct !DILocation(line: 1919, column: 26, scope: !285, inlinedAt: !37335)
!37337 = distinct !DILocation(line: 255, column: 43, scope: !283, inlinedAt: !37336)
!37338 = distinct !DILocation(line: 255, column: 68, scope: !283, inlinedAt: !37336)
!37339 = distinct !DILocation(line: 125, column: 30, scope: !288, inlinedAt: !37338)
!37340 = distinct !DILocation(line: 1921, column: 24, scope: !286, inlinedAt: !37335)
!37341 = distinct !DILocation(line: 462, column: 23, scope: !10, inlinedAt: !37340)
!37342 = distinct !DILocation(line: 344, column: 9, scope: !9, inlinedAt: !37341)
!37343 = distinct !DILocation(line: 229, column: 22, scope: !8, inlinedAt: !37342)
!37344 = distinct !DILocation(line: 810, column: 1, scope: !280, inlinedAt: !37334)
!37345 = distinct !DILocation(line: 1919, column: 26, scope: !285, inlinedAt: !37344)
!37346 = distinct !DILocation(line: 255, column: 43, scope: !283, inlinedAt: !37345)
!37347 = distinct !DILocation(line: 255, column: 68, scope: !283, inlinedAt: !37345)
!37348 = distinct !DILocation(line: 125, column: 30, scope: !288, inlinedAt: !37347)
!37349 = distinct !DILocation(line: 1921, column: 24, scope: !286, inlinedAt: !37344)
!37350 = distinct !DILocation(line: 462, column: 23, scope: !10, inlinedAt: !37349)
!37351 = distinct !DILocation(line: 344, column: 9, scope: !9, inlinedAt: !37350)
!37352 = distinct !DILocation(line: 229, column: 22, scope: !8, inlinedAt: !37351)
!37353 = distinct !DILocation(line: 37, column: 5, scope: !37252, inlinedAt: !37253)
!37354 = distinct !DILocation(line: 810, column: 1, scope: !405, inlinedAt: !37353)
!37355 = distinct !DILocation(line: 810, column: 1, scope: !407, inlinedAt: !37354)
!37356 = distinct !{!37356, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtCskmDBXs7hs3c_5tokio4sync4mpsc4chan4ChanINtNtNtCs2mZqlW55729_12polars_utils11async_utils13error_capture12ErrorMessageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtB1j_7bounded9SemaphoreEEECslpwjCj2YNBy_9polars_io"}
!37357 = distinct !{!37357, !37356, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtCskmDBXs7hs3c_5tokio4sync4mpsc4chan4ChanINtNtNtCs2mZqlW55729_12polars_utils11async_utils13error_capture12ErrorMessageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtB1j_7bounded9SemaphoreEEECslpwjCj2YNBy_9polars_io: argument 0"}
!37358 = distinct !{!37358, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtCskmDBXs7hs3c_5tokio4sync4mpsc4chan4ChanINtNtNtCs2mZqlW55729_12polars_utils11async_utils13error_capture12ErrorMessageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtBL_7bounded9SemaphoreEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io"}
!37359 = distinct !{!37359, !37358, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtCskmDBXs7hs3c_5tokio4sync4mpsc4chan4ChanINtNtNtCs2mZqlW55729_12polars_utils11async_utils13error_capture12ErrorMessageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtBL_7bounded9SemaphoreEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io: argument 0"}
!37360 = distinct !DILocation(line: 810, column: 1, scope: !406, inlinedAt: !37355)
!37361 = distinct !{!37361, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs2mZqlW55729_12polars_utils11async_utils13error_capture12ErrorCaptureNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECslpwjCj2YNBy_9polars_io"}
!37362 = distinct !{!37362, !37361, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs2mZqlW55729_12polars_utils11async_utils13error_capture12ErrorCaptureNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECslpwjCj2YNBy_9polars_io: argument 0"}
!37363 = distinct !{!37363, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCskmDBXs7hs3c_5tokio4sync4mpsc7bounded6SenderINtNtNtCs2mZqlW55729_12polars_utils11async_utils13error_capture12ErrorMessageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io"}
!37364 = distinct !{!37364, !37363, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCskmDBXs7hs3c_5tokio4sync4mpsc7bounded6SenderINtNtNtCs2mZqlW55729_12polars_utils11async_utils13error_capture12ErrorMessageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io: argument 0"}
!37365 = distinct !{!37365, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCskmDBXs7hs3c_5tokio4sync4mpsc4chan2TxINtNtNtCs2mZqlW55729_12polars_utils11async_utils13error_capture12ErrorMessageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtBL_7bounded9SemaphoreEECslpwjCj2YNBy_9polars_io"}
!37366 = distinct !{!37366, !37365, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCskmDBXs7hs3c_5tokio4sync4mpsc4chan2TxINtNtNtCs2mZqlW55729_12polars_utils11async_utils13error_capture12ErrorMessageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtBL_7bounded9SemaphoreEECslpwjCj2YNBy_9polars_io: argument 0"}
!37367 = distinct !DILocation(line: 810, column: 1, scope: !399, inlinedAt: !37360)
!37368 = distinct !DILocation(line: 2814, column: 17, scope: !402, inlinedAt: !37367)
!37369 = distinct !DILocation(line: 2110, column: 27, scope: !401, inlinedAt: !37368)
!37370 = distinct !DILocation(line: 2814, column: 32, scope: !402, inlinedAt: !37367)
!37371 = distinct !DILocation(line: 3193, column: 26, scope: !404, inlinedAt: !37370)
!37372 = distinct !DILocation(line: 64, column: 9, scope: !402, inlinedAt: !37367)
!37373 = distinct !{!37373, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtCskmDBXs7hs3c_5tokio4sync4mpsc4chan4ChanINtNtNtCs2mZqlW55729_12polars_utils11async_utils13error_capture12ErrorMessageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtB1j_7bounded9SemaphoreEEECslpwjCj2YNBy_9polars_io"}
!37374 = distinct !{!37374, !37373, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtCskmDBXs7hs3c_5tokio4sync4mpsc4chan4ChanINtNtNtCs2mZqlW55729_12polars_utils11async_utils13error_capture12ErrorMessageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtB1j_7bounded9SemaphoreEEECslpwjCj2YNBy_9polars_io: argument 0"}
!37375 = distinct !{!37375, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtCskmDBXs7hs3c_5tokio4sync4mpsc4chan4ChanINtNtNtCs2mZqlW55729_12polars_utils11async_utils13error_capture12ErrorMessageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtBL_7bounded9SemaphoreEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io"}
!37376 = distinct !{!37376, !37375, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtCskmDBXs7hs3c_5tokio4sync4mpsc4chan4ChanINtNtNtCs2mZqlW55729_12polars_utils11async_utils13error_capture12ErrorMessageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtBL_7bounded9SemaphoreEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io: argument 0"}
!37377 = distinct !DILocation(line: 810, column: 1, scope: !406, inlinedAt: !37355)
!37378 = distinct !DILocation(line: 810, column: 1, scope: !399, inlinedAt: !37377)
!37379 = distinct !DILocation(line: 2814, column: 17, scope: !402, inlinedAt: !37378)
!37380 = distinct !DILocation(line: 2110, column: 27, scope: !401, inlinedAt: !37379)
!37381 = distinct !DILocation(line: 2814, column: 32, scope: !402, inlinedAt: !37378)
!37382 = distinct !DILocation(line: 3193, column: 26, scope: !404, inlinedAt: !37381)
!37383 = distinct !DILocation(line: 37, column: 5, scope: !37252, inlinedAt: !37253)
!37384 = distinct !DILocation(line: 810, column: 1, scope: !405, inlinedAt: !37383)
!37385 = distinct !DILocation(line: 810, column: 1, scope: !407, inlinedAt: !37384)
!37386 = distinct !DILocation(line: 810, column: 1, scope: !406, inlinedAt: !37385)
!37387 = distinct !DILocation(line: 810, column: 1, scope: !399, inlinedAt: !37386)
!37388 = distinct !DILocation(line: 64, column: 9, scope: !402, inlinedAt: !37387)
!37389 = !DILocation(line: 133, column: 42, scope: !37249)
!37390 = !DILocation(line: 1456, column: 45, scope: !37251, inlinedAt: !37389)
!37391 = !DINamespace(name: "{impl#1}", scope: !2019)
!37392 = !DINamespace(name: "wrap_future", scope: !37391)
!37393 = !{!37255}
!37394 = !DILexicalBlockFile(scope: !37257, file: !1464, discriminator: 0)
!37395 = !{!37271}
!37396 = !{!37273}
!37397 = !{!37273, !37271, !37280, !37278, !37276}
!37398 = !{!37273, !37271}
!37399 = !{!37288}
!37400 = !{!37290}
!37401 = !{!37290, !37288, !37280, !37278, !37276}
!37402 = !{!37290, !37288}
!37403 = !{!37299}
!37404 = !{!37305}
!37405 = !{!37309}
!37406 = !{!37309, !37305, !37299}
!37407 = !{!37332}
!37408 = !{!37332, !37305, !37299}
!37409 = !DILocation(line: 810, column: 1, scope: !37306, inlinedAt: !37307)
!37410 = !{!37357}
!37411 = !{!37359}
!37412 = !{!37359, !37357, !37366, !37364, !37362}
!37413 = !{!37359, !37357}
!37414 = !{!37374}
!37415 = !{!37376}
!37416 = !{!37376, !37374, !37366, !37364, !37362}
!37417 = !{!37376, !37374}
!37418 = !DILocation(line: 1414, column: 42, scope: !37250, inlinedAt: !37390)
!37419 = !DILocation(line: 29, column: 5, scope: !37252, inlinedAt: !37253)
!37420 = !DILocation(line: 26, column: 36, scope: !37252, inlinedAt: !37253)
!37421 = !DILocation(line: 26, column: 42, scope: !37256, inlinedAt: !37253)
!37422 = !DILocation(line: 31, column: 19, scope: !37257, inlinedAt: !37253)
!37423 = !DILocation(line: 31, column: 56, scope: !37258, inlinedAt: !37253)
!37424 = !DILocation(line: 35, column: 14, scope: !37257, inlinedAt: !37253)
!37425 = !DILocation(line: 0, scope: !37394, inlinedAt: !37253)
!37426 = !DILocation(line: 31, column: 60, scope: !37258, inlinedAt: !37253)
!37427 = !DILocation(line: 810, column: 1, scope: !37259, inlinedAt: !37262)
!37428 = !DILocation(line: 0, scope: !37252, inlinedAt: !37253)
!37429 = !DILocation(line: 31, column: 19, scope: !37258, inlinedAt: !37253)
!37430 = !DILocation(line: 810, column: 1, scope: !37259, inlinedAt: !37264)
!37431 = !DILocation(line: 31, column: 13, scope: !37257, inlinedAt: !37253)
!37432 = !DILocation(line: 34, column: 31, scope: !37265, inlinedAt: !37253)
!37433 = !DILocation(line: 34, column: 48, scope: !37265, inlinedAt: !37253)
!37434 = !DILocation(line: 34, column: 39, scope: !37265, inlinedAt: !37253)
!37435 = !DILocation(line: 33, column: 50, scope: !37266, inlinedAt: !37253)
!37436 = !DILocation(line: 33, column: 24, scope: !37257, inlinedAt: !37253)
!37437 = !DILocation(line: 33, column: 33, scope: !37266, inlinedAt: !37253)
!37438 = !DILocation(line: 33, column: 41, scope: !37266, inlinedAt: !37253)
!37439 = !DILocation(line: 37, column: 5, scope: !37257, inlinedAt: !37253)
!37440 = !DILocation(line: 37, column: 5, scope: !37252, inlinedAt: !37253)
!37441 = !DILocation(line: 810, column: 1, scope: !406, inlinedAt: !37269)
!37442 = !DILocation(line: 810, column: 1, scope: !399, inlinedAt: !37274)
!37443 = !DILocation(line: 444, column: 20, scope: !400, inlinedAt: !37283)
!37444 = !DILocation(line: 3956, column: 24, scope: !403, inlinedAt: !37285)
!37445 = !DILocation(line: 2814, column: 12, scope: !402, inlinedAt: !37281)
!37446 = !DILocation(line: 4387, column: 24, scope: !29, inlinedAt: !37286)
!37447 = !DILocation(line: 2857, column: 18, scope: !402, inlinedAt: !37281)
!37448 = !DILocation(line: 810, column: 1, scope: !399, inlinedAt: !37291)
!37449 = !DILocation(line: 444, column: 20, scope: !400, inlinedAt: !37294)
!37450 = !DILocation(line: 3956, column: 24, scope: !403, inlinedAt: !37296)
!37451 = !DILocation(line: 2814, column: 12, scope: !402, inlinedAt: !37292)
!37452 = !DILocation(line: 33, column: 74, scope: !37266, inlinedAt: !37253)
!37453 = !DILocation(line: 33, column: 74, scope: !37257, inlinedAt: !37253)
!37454 = !DILocation(line: 34, column: 74, scope: !37265, inlinedAt: !37253)
!37455 = !DILocation(line: 34, column: 74, scope: !37257, inlinedAt: !37253)
!37456 = !DILocation(line: 36, column: 14, scope: !37297, inlinedAt: !37253)
!37457 = !DILocation(line: 1003, column: 1, scope: !37300, inlinedAt: !37301)
!37458 = !DILocation(line: 810, column: 1, scope: !37302, inlinedAt: !37303)
!37459 = !DILocation(line: 810, column: 1, scope: !37310, inlinedAt: !37311)
!37460 = !DILocation(line: 810, column: 1, scope: !280, inlinedAt: !37312)
!37461 = !DILocation(line: 457, column: 14, scope: !282, inlinedAt: !37315)
!37462 = !DILocation(line: 1920, column: 16, scope: !286, inlinedAt: !37313)
!37463 = !DILocation(line: 596, column: 14, scope: !287, inlinedAt: !37317)
!37464 = !DILocation(line: 128, column: 14, scope: !7, inlinedAt: !37321)
!37465 = !DILocation(line: 1920, column: 13, scope: !286, inlinedAt: !37313)
!37466 = !DILocation(line: 457, column: 14, scope: !282, inlinedAt: !37324)
!37467 = !DILocation(line: 1920, column: 16, scope: !286, inlinedAt: !37322)
!37468 = !DILocation(line: 596, column: 14, scope: !287, inlinedAt: !37326)
!37469 = !DILocation(line: 128, column: 14, scope: !7, inlinedAt: !37330)
!37470 = !DILocation(line: 1920, column: 13, scope: !286, inlinedAt: !37322)
!37471 = !DILocation(line: 810, column: 1, scope: !37310, inlinedAt: !37333)
!37472 = !DILocation(line: 810, column: 1, scope: !37310, inlinedAt: !37409)
!37473 = !DILocation(line: 810, column: 1, scope: !280, inlinedAt: !37334)
!37474 = !DILocation(line: 457, column: 14, scope: !282, inlinedAt: !37337)
!37475 = !DILocation(line: 1920, column: 16, scope: !286, inlinedAt: !37335)
!37476 = !DILocation(line: 596, column: 14, scope: !287, inlinedAt: !37339)
!37477 = !DILocation(line: 128, column: 14, scope: !7, inlinedAt: !37343)
!37478 = !DILocation(line: 1920, column: 13, scope: !286, inlinedAt: !37335)
!37479 = !DILocation(line: 457, column: 14, scope: !282, inlinedAt: !37346)
!37480 = !DILocation(line: 1920, column: 16, scope: !286, inlinedAt: !37344)
!37481 = !DILocation(line: 596, column: 14, scope: !287, inlinedAt: !37348)
!37482 = !DILocation(line: 128, column: 14, scope: !7, inlinedAt: !37352)
!37483 = !DILocation(line: 1920, column: 13, scope: !286, inlinedAt: !37344)
!37484 = !DILocation(line: 36, column: 17, scope: !37297, inlinedAt: !37253)
!37485 = !DILocation(line: 810, column: 1, scope: !406, inlinedAt: !37355)
!37486 = !DILocation(line: 810, column: 1, scope: !399, inlinedAt: !37360)
!37487 = !DILocation(line: 444, column: 20, scope: !400, inlinedAt: !37369)
!37488 = !DILocation(line: 3956, column: 24, scope: !403, inlinedAt: !37371)
!37489 = !DILocation(line: 2814, column: 12, scope: !402, inlinedAt: !37367)
!37490 = !DILocation(line: 4387, column: 24, scope: !29, inlinedAt: !37372)
!37491 = !DILocation(line: 2857, column: 18, scope: !402, inlinedAt: !37367)
!37492 = !DILocation(line: 810, column: 1, scope: !399, inlinedAt: !37377)
!37493 = !DILocation(line: 444, column: 20, scope: !400, inlinedAt: !37380)
!37494 = !DILocation(line: 3956, column: 24, scope: !403, inlinedAt: !37382)
!37495 = !DILocation(line: 2814, column: 12, scope: !402, inlinedAt: !37378)
!37496 = !DILocation(line: 4387, column: 24, scope: !29, inlinedAt: !37388)
!37497 = !DILocation(line: 2857, column: 18, scope: !402, inlinedAt: !37387)
!37498 = !DILocation(line: 134, column: 6, scope: !37249)
!37499 = distinct !DISubprogram(name: "poll<alloc::boxed::Box<polars_io::file_cache::cache_lock::GLOBAL_FILE_CACHE_LOCK::{closure#0}::{async_block_env#1}, alloc::alloc::Global>>", linkageName: "_RNvXs_NtNtCscgRAwXFJnXP_4core6future6futureINtNtB8_3pin3PinINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNCNCNvNtNtCslpwjCj2YNBy_9polars_io10file_cache10cache_lock22GLOBAL_FILE_CACHE_LOCK0s_0EENtB4_6Future4pollB1E_", scope: !1894, file: !1891, line: 132, type: !1344, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1343)
!37500 = distinct !DISubprogram(name: "as_mut<alloc::boxed::Box<polars_io::file_cache::cache_lock::GLOBAL_FILE_CACHE_LOCK::{closure#0}::{async_block_env#1}, alloc::alloc::Global>>", linkageName: "_RNvMs5_NtCscgRAwXFJnXP_4core3pinINtB5_3PinINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNCNCNvNtNtCslpwjCj2YNBy_9polars_io10file_cache10cache_lock22GLOBAL_FILE_CACHE_LOCK0s_0EE6as_mutB1n_", scope: !1890, file: !1888, line: 1409, type: !1344, scopeLine: 1409, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1343)
!37501 = distinct !DISubprogram(name: "as_deref_mut<alloc::boxed::Box<polars_io::file_cache::cache_lock::GLOBAL_FILE_CACHE_LOCK::{closure#0}::{async_block_env#1}, alloc::alloc::Global>>", linkageName: "_RNvMs5_NtCscgRAwXFJnXP_4core3pinINtB5_3PinINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNCNCNvNtNtCslpwjCj2YNBy_9polars_io10file_cache10cache_lock22GLOBAL_FILE_CACHE_LOCK0s_0EE12as_deref_mutB1n_", scope: !1890, file: !1888, line: 1428, type: !1344, scopeLine: 1428, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1343)
!37502 = distinct !DISubprogram(name: "{async_block#1}", linkageName: "_RNCNCNvNtNtCslpwjCj2YNBy_9polars_io10file_cache10cache_lock22GLOBAL_FILE_CACHE_LOCK0s_0B9_", scope: !37577, file: !37574, line: 31, type: !1344, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1343)
!37503 = distinct !DILocation(line: 133, column: 9, scope: !37499)
!37504 = distinct !{!37504, !"_RNCNCNvNtNtCslpwjCj2YNBy_9polars_io10file_cache10cache_lock22GLOBAL_FILE_CACHE_LOCK0s_0B9_"}
!37505 = distinct !{!37505, !37504, !"_RNCNCNvNtNtCslpwjCj2YNBy_9polars_io10file_cache10cache_lock22GLOBAL_FILE_CACHE_LOCK0s_0B9_: argument 0"}
!37506 = distinct !DILexicalBlock(scope: !37502, file: !37574, line: 32, column: 9)
!37507 = distinct !DILexicalBlock(scope: !37506, file: !37574, line: 33, column: 9)
!37508 = distinct !DISubprogram(name: "deref<core::sync::atomic::Atomic<bool>, alloc::alloc::Global>", linkageName: "_RNvXsw_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtCscgRAwXFJnXP_4core4sync6atomic6AtomicbEENtNtNtBN_3ops5deref5Deref5derefCslpwjCj2YNBy_9polars_io", scope: !1445, file: !1413, line: 2427, type: !1344, scopeLine: 2427, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1343)
!37509 = distinct !DISubprogram(name: "as_ref<core::sync::atomic::Atomic<bool>, alloc::alloc::Global>", linkageName: "_RNvXs1j_NtCsgZ49sUHp3tW_5alloc4syncINtB6_3ArcINtNtNtCscgRAwXFJnXP_4core4sync6atomic6AtomicbEEINtNtBO_7convert5AsRefBH_E6as_refCslpwjCj2YNBy_9polars_io", scope: !1446, file: !1413, line: 4193, type: !1359, scopeLine: 4193, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1343)
!37510 = distinct !DILocation(line: 33, column: 38, scope: !37506, inlinedAt: !37503)
!37511 = distinct !DILocation(line: 4194, column: 10, scope: !37509, inlinedAt: !37510)
!37512 = distinct !DILexicalBlock(scope: !37507, file: !37574, line: 34, column: 9)
!37513 = distinct !DILexicalBlock(scope: !37512, file: !37574, line: 35, column: 9)
!37514 = distinct !DILexicalBlock(scope: !37513, file: !37574, line: 59, column: 60)
!37515 = distinct !DISubprogram(name: "atomic_swap<u8>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic11atomic_swaphECslpwjCj2YNBy_9polars_io", scope: !1401, file: !1399, line: 3916, type: !1344, scopeLine: 3916, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1343)
!37516 = distinct !DISubprogram(name: "swap", linkageName: "_RNvMs2_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomicbE4swap", scope: !1402, file: !1399, line: 800, type: !1344, scopeLine: 800, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1343)
!37517 = distinct !DILocation(line: 49, column: 36, scope: !37513, inlinedAt: !37503)
!37518 = distinct !DILocation(line: 805, column: 22, scope: !37516, inlinedAt: !37517)
!37519 = distinct !DILexicalBlock(scope: !37513, file: !37574, line: 50, column: 94)
!37520 = distinct !DILocation(line: 50, column: 58, scope: !37519, inlinedAt: !37503)
!37521 = distinct !DILocation(line: 357, column: 9, scope: !1237, inlinedAt: !37520)
!37522 = distinct !DILocation(line: 242, column: 19, scope: !1236, inlinedAt: !37521)
!37523 = distinct !DILocation(line: 221, column: 23, scope: !1235, inlinedAt: !37522)
!37524 = distinct !DILocation(line: 87, column: 31, scope: !1234, inlinedAt: !37523)
!37525 = distinct !DILocation(line: 2870, column: 26, scope: !1233, inlinedAt: !37524)
!37526 = distinct !DILocation(line: 42, column: 13, scope: !37513, inlinedAt: !37503)
!37527 = distinct !DISubprogram(name: "into_future<tokio::sync::notify::Notified>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core6future11into_futureNtNtNtCskmDBXs7hs3c_5tokio4sync6notify8NotifiedNtB2_10IntoFuture11into_futureCslpwjCj2YNBy_9polars_io", scope: !2041, file: !2039, line: 142, type: !1344, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1343)
!37528 = distinct !DILocation(line: 42, column: 45, scope: !37513, inlinedAt: !37503)
!37529 = distinct !DILexicalBlock(scope: !37513, file: !37574, line: 42, column: 45)
!37530 = distinct !DILocation(line: 42, column: 49, scope: !37513, inlinedAt: !37503)
!37531 = distinct !DILocation(line: 810, column: 1, scope: !702, inlinedAt: !37530)
!37532 = distinct !DILocation(line: 810, column: 1, scope: !703, inlinedAt: !37531)
!37533 = distinct !DILocation(line: 810, column: 1, scope: !580, inlinedAt: !37532)
!37534 = distinct !DILocation(line: 810, column: 1, scope: !579, inlinedAt: !37533)
!37535 = distinct !DILocation(line: 810, column: 1, scope: !578, inlinedAt: !37534)
!37536 = distinct !DILocation(line: 810, column: 1, scope: !583, inlinedAt: !37535)
!37537 = distinct !DILocation(line: 810, column: 1, scope: !702, inlinedAt: !37530)
!37538 = distinct !DILocation(line: 810, column: 1, scope: !703, inlinedAt: !37537)
!37539 = distinct !DILocation(line: 810, column: 1, scope: !580, inlinedAt: !37538)
!37540 = distinct !DILocation(line: 810, column: 1, scope: !579, inlinedAt: !37539)
!37541 = distinct !DILocation(line: 810, column: 1, scope: !578, inlinedAt: !37540)
!37542 = distinct !DILocation(line: 810, column: 1, scope: !583, inlinedAt: !37541)
!37543 = distinct !{!37543, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCskmDBXs7hs3c_5tokio4sync6notify6NotifyEECslpwjCj2YNBy_9polars_io"}
!37544 = distinct !{!37544, !37543, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCskmDBXs7hs3c_5tokio4sync6notify6NotifyEECslpwjCj2YNBy_9polars_io: argument 0"}
!37545 = distinct !{!37545, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCskmDBXs7hs3c_5tokio4sync6notify6NotifyENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io"}
!37546 = distinct !{!37546, !37545, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCskmDBXs7hs3c_5tokio4sync6notify6NotifyENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io: argument 0"}
!37547 = distinct !DISubprogram(name: "drop_in_place<alloc::sync::Arc<tokio::sync::notify::Notify, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCskmDBXs7hs3c_5tokio4sync6notify6NotifyEECslpwjCj2YNBy_9polars_io", scope: !1365, file: !1364, line: 810, type: !1344, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1343)
!37548 = distinct !DILocation(line: 62, column: 5, scope: !37507, inlinedAt: !37503)
!37549 = distinct !DISubprogram(name: "as_ref<alloc::sync::ArcInner<tokio::sync::notify::Notify>>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullINtNtCsgZ49sUHp3tW_5alloc4sync8ArcInnerNtNtNtCskmDBXs7hs3c_5tokio4sync6notify6NotifyEE6as_refCslpwjCj2YNBy_9polars_io", scope: !1405, file: !1403, line: 440, type: !1344, scopeLine: 440, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1343)
!37550 = distinct !DISubprogram(name: "inner<tokio::sync::notify::Notify, alloc::alloc::Global>", linkageName: "_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCskmDBXs7hs3c_5tokio4sync6notify6NotifyE5innerCslpwjCj2YNBy_9polars_io", scope: !1416, file: !1413, line: 2104, type: !1344, scopeLine: 2104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1343)
!37551 = distinct !DISubprogram(name: "drop<tokio::sync::notify::Notify, alloc::alloc::Global>", linkageName: "_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCskmDBXs7hs3c_5tokio4sync6notify6NotifyENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io", scope: !1423, file: !1413, line: 2810, type: !1344, scopeLine: 2810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1343)
!37552 = distinct !DILocation(line: 810, column: 1, scope: !37547, inlinedAt: !37548)
!37553 = distinct !DILocation(line: 2814, column: 17, scope: !37551, inlinedAt: !37552)
!37554 = distinct !DILocation(line: 2110, column: 27, scope: !37550, inlinedAt: !37553)
!37555 = distinct !DISubprogram(name: "atomic_sub<usize, usize>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic10atomic_subjjECslpwjCj2YNBy_9polars_io", scope: !1401, file: !1399, line: 3950, type: !1344, scopeLine: 3950, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1343)
!37556 = distinct !DISubprogram(name: "fetch_sub", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE9fetch_sub", scope: !1402, file: !1399, line: 3191, type: !1344, scopeLine: 3191, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1343)
!37557 = distinct !DILocation(line: 2814, column: 32, scope: !37551, inlinedAt: !37552)
!37558 = distinct !DILocation(line: 3193, column: 26, scope: !37556, inlinedAt: !37557)
!37559 = distinct !DILocation(line: 64, column: 9, scope: !37551, inlinedAt: !37552)
!37560 = distinct !DILocation(line: 59, column: 60, scope: !37513, inlinedAt: !37503)
!37561 = distinct !{!37561, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCskmDBXs7hs3c_5tokio4sync6notify6NotifyEECslpwjCj2YNBy_9polars_io"}
!37562 = distinct !{!37562, !37561, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCskmDBXs7hs3c_5tokio4sync6notify6NotifyEECslpwjCj2YNBy_9polars_io: argument 0"}
!37563 = distinct !{!37563, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCskmDBXs7hs3c_5tokio4sync6notify6NotifyENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io"}
!37564 = distinct !{!37564, !37563, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCskmDBXs7hs3c_5tokio4sync6notify6NotifyENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io: argument 0"}
!37565 = distinct !DILocation(line: 62, column: 5, scope: !37502, inlinedAt: !37503)
!37566 = distinct !DILocation(line: 810, column: 1, scope: !37547, inlinedAt: !37565)
!37567 = distinct !DILocation(line: 2814, column: 17, scope: !37551, inlinedAt: !37566)
!37568 = distinct !DILocation(line: 2110, column: 27, scope: !37550, inlinedAt: !37567)
!37569 = distinct !DILocation(line: 2814, column: 32, scope: !37551, inlinedAt: !37566)
!37570 = distinct !DILocation(line: 3193, column: 26, scope: !37556, inlinedAt: !37569)
!37571 = distinct !DILocation(line: 64, column: 9, scope: !37551, inlinedAt: !37566)
!37572 = !DILocation(line: 133, column: 42, scope: !37499)
!37573 = !DILocation(line: 1456, column: 45, scope: !37501, inlinedAt: !37572)
!37574 = !DIFile(filename: "crates/polars-io/src/file_cache/cache_lock.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "58cc7b724bed3eb0d9c22cdb8488cba0")
!37575 = !DINamespace(name: "cache_lock", scope: !1813)
!37576 = !DINamespace(name: "GLOBAL_FILE_CACHE_LOCK", scope: !37575)
!37577 = !DINamespace(name: "{closure#0}", scope: !37576)
!37578 = !{!37505}
!37579 = !DILexicalBlockFile(scope: !37502, file: !1464, discriminator: 0)
!37580 = !DILexicalBlockFile(scope: !37513, file: !1464, discriminator: 0)
!37581 = !{!37544}
!37582 = !{!37546}
!37583 = !{!37546, !37544}
!37584 = !{!37562}
!37585 = !{!37564}
!37586 = !{!37564, !37562}
!37587 = !DILocation(line: 1414, column: 42, scope: !37500, inlinedAt: !37573)
!37588 = !DILocation(line: 31, column: 17, scope: !37502, inlinedAt: !37503)
!37589 = !DILocation(line: 0, scope: !37579, inlinedAt: !37503)
!37590 = !DILocation(line: 62, column: 5, scope: !37502, inlinedAt: !37503)
!37591 = !DILocation(line: 32, column: 13, scope: !37502, inlinedAt: !37503)
!37592 = !DILocation(line: 32, column: 51, scope: !37502, inlinedAt: !37503)
!37593 = !DILocation(line: 33, column: 30, scope: !37506, inlinedAt: !37503)
!37594 = !DILocation(line: 34, column: 36, scope: !37507, inlinedAt: !37503)
!37595 = !DILocation(line: 32, column: 23, scope: !37502, inlinedAt: !37503)
!37596 = !DILocation(line: 2428, column: 9, scope: !37508, inlinedAt: !37511)
!37597 = !DILocation(line: 35, column: 23, scope: !37512, inlinedAt: !37503)
!37598 = !DILocation(line: 37, column: 9, scope: !37513, inlinedAt: !37503)
!37599 = !DILocation(line: 38, column: 16, scope: !37513, inlinedAt: !37503)
!37600 = !DILocation(line: 59, column: 64, scope: !37513, inlinedAt: !37503)
!37601 = !DILocation(line: 59, column: 60, scope: !37514, inlinedAt: !37503)
!37602 = !DILocation(line: 49, column: 21, scope: !37513, inlinedAt: !37503)
!37603 = !DILocation(line: 3920, column: 24, scope: !37515, inlinedAt: !37518)
!37604 = !DILocation(line: 805, column: 22, scope: !37516, inlinedAt: !37517)
!37605 = !DILocation(line: 3905, column: 24, scope: !15, inlinedAt: !37525)
!37606 = !DILocation(line: 221, column: 12, scope: !1235, inlinedAt: !37522)
!37607 = !DILocation(line: 225, column: 13, scope: !1235, inlinedAt: !37522)
!37608 = !DILocation(line: 225, column: 21, scope: !1235, inlinedAt: !37522)
!37609 = !DILocation(line: 226, column: 36, scope: !1238, inlinedAt: !37522)
!37610 = !DILocation(line: 226, column: 20, scope: !1238, inlinedAt: !37522)
!37611 = !DILocation(line: 226, column: 61, scope: !1238, inlinedAt: !37522)
!37612 = !DILocation(line: 227, column: 5, scope: !1235, inlinedAt: !37522)
!37613 = !DILocation(line: 50, column: 81, scope: !37519, inlinedAt: !37503)
!37614 = !DILocation(line: 50, column: 28, scope: !37519, inlinedAt: !37503)
!37615 = !DILocation(line: 51, column: 53, scope: !37519, inlinedAt: !37503)
!37616 = !DILocation(line: 0, scope: !37580, inlinedAt: !37503)
!37617 = !DILocation(line: 52, column: 29, scope: !37519, inlinedAt: !37503)
!37618 = !DILocation(line: 39, column: 17, scope: !37513, inlinedAt: !37503)
!37619 = !DILocation(line: 42, column: 13, scope: !37513, inlinedAt: !37503)
!37620 = !DILocation(line: 2428, column: 9, scope: !1239, inlinedAt: !37526)
!37621 = !DILocation(line: 42, column: 34, scope: !37513, inlinedAt: !37503)
!37622 = !DILocation(line: 42, column: 49, scope: !37513, inlinedAt: !37503)
!37623 = !DILocation(line: 143, column: 9, scope: !37527, inlinedAt: !37528)
!37624 = !DILocation(line: 42, column: 45, scope: !37529, inlinedAt: !37503)
!37625 = !DILocation(line: 810, column: 1, scope: !702, inlinedAt: !37530)
!37626 = !DILocation(line: 810, column: 1, scope: !578, inlinedAt: !37534)
!37627 = !DILocation(line: 674, column: 18, scope: !582, inlinedAt: !37536)
!37628 = !DILocation(line: 810, column: 1, scope: !578, inlinedAt: !37540)
!37629 = !DILocation(line: 674, column: 18, scope: !582, inlinedAt: !37542)
!37630 = !DILocation(line: 44, column: 16, scope: !37513, inlinedAt: !37503)
!37631 = !DILocation(line: 45, column: 17, scope: !37513, inlinedAt: !37503)
!37632 = !DILocation(line: 62, column: 5, scope: !37507, inlinedAt: !37503)
!37633 = !DILocation(line: 810, column: 1, scope: !37547, inlinedAt: !37548)
!37634 = !DILocation(line: 444, column: 20, scope: !37549, inlinedAt: !37554)
!37635 = !DILocation(line: 3956, column: 24, scope: !37555, inlinedAt: !37558)
!37636 = !DILocation(line: 2814, column: 12, scope: !37551, inlinedAt: !37552)
!37637 = !DILocation(line: 4387, column: 24, scope: !29, inlinedAt: !37559)
!37638 = !DILocation(line: 2857, column: 18, scope: !37551, inlinedAt: !37552)
!37639 = !DILocation(line: 59, column: 17, scope: !37513, inlinedAt: !37503)
!37640 = !DILocation(line: 143, column: 9, scope: !1240, inlinedAt: !37560)
!37641 = !DILocation(line: 810, column: 1, scope: !37547, inlinedAt: !37565)
!37642 = !DILocation(line: 444, column: 20, scope: !37549, inlinedAt: !37568)
!37643 = !DILocation(line: 3956, column: 24, scope: !37555, inlinedAt: !37570)
!37644 = !DILocation(line: 2814, column: 12, scope: !37551, inlinedAt: !37566)
!37645 = !DILocation(line: 4387, column: 24, scope: !29, inlinedAt: !37571)
!37646 = !DILocation(line: 2857, column: 18, scope: !37551, inlinedAt: !37566)
!37647 = !DILocation(line: 0, scope: !37513, inlinedAt: !37503)
!37648 = !DILocation(line: 134, column: 6, scope: !37499)
!37649 = distinct !DISubprogram(name: "poll<alloc::boxed::Box<polars_io::cloud::dns::{impl#2}::resolve::{async_block#0}::{async_block_env#0}, alloc::alloc::Global>>", linkageName: "_RNvXs_NtNtCscgRAwXFJnXP_4core6future6futureINtNtB8_3pin3PinINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNCNCNvXs0_NtNtCslpwjCj2YNBy_9polars_io5cloud3dnsNtB1E_15CachingResolverNtNtNtCs1lTGjXZLbkb_7reqwest3dns7resolve7Resolve7resolve00EENtB4_6Future4pollB1I_", scope: !1894, file: !1891, line: 132, type: !1344, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1343)
!37650 = distinct !DISubprogram(name: "as_mut<alloc::boxed::Box<polars_io::cloud::dns::{impl#2}::resolve::{async_block#0}::{async_block_env#0}, alloc::alloc::Global>>", linkageName: "_RNvMs5_NtCscgRAwXFJnXP_4core3pinINtB5_3PinINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNCNCNvXs0_NtNtCslpwjCj2YNBy_9polars_io5cloud3dnsNtB1n_15CachingResolverNtNtNtCs1lTGjXZLbkb_7reqwest3dns7resolve7Resolve7resolve00EE6as_mutB1r_", scope: !1890, file: !1888, line: 1409, type: !1344, scopeLine: 1409, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1343)
!37651 = distinct !DISubprogram(name: "as_deref_mut<alloc::boxed::Box<polars_io::cloud::dns::{impl#2}::resolve::{async_block#0}::{async_block_env#0}, alloc::alloc::Global>>", linkageName: "_RNvMs5_NtCscgRAwXFJnXP_4core3pinINtB5_3PinINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNCNCNvXs0_NtNtCslpwjCj2YNBy_9polars_io5cloud3dnsNtB1n_15CachingResolverNtNtNtCs1lTGjXZLbkb_7reqwest3dns7resolve7Resolve7resolve00EE12as_deref_mutB1r_", scope: !1890, file: !1888, line: 1428, type: !1344, scopeLine: 1428, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1343)
!37652 = distinct !DISubprogram(name: "{async_block#0}", linkageName: "_RNCNCNvXs0_NtNtCslpwjCj2YNBy_9polars_io5cloud3dnsNtB9_15CachingResolverNtNtNtCs1lTGjXZLbkb_7reqwest3dns7resolve7Resolve7resolve00Bd_", scope: !38228, file: !1723, line: 175, type: !1344, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1343)
!37653 = distinct !DILocation(line: 133, column: 9, scope: !37649)
!37654 = distinct !{!37654, !"_RNCNCNvXs0_NtNtCslpwjCj2YNBy_9polars_io5cloud3dnsNtB9_15CachingResolverNtNtNtCs1lTGjXZLbkb_7reqwest3dns7resolve7Resolve7resolve00Bd_"}
!37655 = distinct !{!37655, !37654, !"_RNCNCNvXs0_NtNtCslpwjCj2YNBy_9polars_io5cloud3dnsNtB9_15CachingResolverNtNtNtCs1lTGjXZLbkb_7reqwest3dns7resolve7Resolve7resolve00Bd_: argument 0"}
!37656 = distinct !DISubprogram(name: "{async_fn#0}", linkageName: "_RNCNvNtNtCslpwjCj2YNBy_9polars_io5cloud3dns13lookup_hedged0B7_", scope: !38230, file: !1723, line: 234, type: !1344, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1343)
!37657 = distinct !DILexicalBlock(scope: !37652, file: !1723, line: 177, column: 91)
!37658 = distinct !DILocation(line: 177, column: 91, scope: !37657, inlinedAt: !37653)
!37659 = distinct !{!37659, !"_RNCNvNtNtCslpwjCj2YNBy_9polars_io5cloud3dns13lookup_hedged0B7_"}
!37660 = distinct !{!37660, !37659, !"_RNCNvNtNtCslpwjCj2YNBy_9polars_io5cloud3dns13lookup_hedged0B7_: argument 1"}
!37661 = distinct !{!37661, !37659, !"_RNCNvNtNtCslpwjCj2YNBy_9polars_io5cloud3dns13lookup_hedged0B7_: argument 0"}
!37662 = distinct !DILexicalBlock(scope: !37656, file: !1723, line: 234, column: 38)
!37663 = distinct !DILexicalBlock(scope: !37662, file: !1723, line: 234, column: 38)
!37664 = distinct !DILexicalBlock(scope: !37663, file: !1723, line: 234, column: 38)
!37665 = distinct !DILexicalBlock(scope: !37664, file: !1723, line: 235, column: 5)
!37666 = distinct !DILexicalBlock(scope: !37665, file: !1723, line: 243, column: 5)
!37667 = distinct !{!37667, !"_RNvXsB_NtCsgZ49sUHp3tW_5alloc6stringeNtB5_8ToString9to_stringCslpwjCj2YNBy_9polars_io"}
!37668 = distinct !{!37668, !37667, !"_RNvXsB_NtCsgZ49sUHp3tW_5alloc6stringeNtB5_8ToString9to_stringCslpwjCj2YNBy_9polars_io: argument 1"}
!37669 = distinct !{!37669, !37667, !"_RNvXsB_NtCsgZ49sUHp3tW_5alloc6stringeNtB5_8ToString9to_stringCslpwjCj2YNBy_9polars_io: argument 0"}
!37670 = distinct !{!37670, !"_RNvXs21_NtCsgZ49sUHp3tW_5alloc6stringeNtB6_12SpecToString14spec_to_string"}
!37671 = distinct !{!37671, !37670, !"_RNvXs21_NtCsgZ49sUHp3tW_5alloc6stringeNtB6_12SpecToString14spec_to_string: argument 1"}
!37672 = distinct !{!37672, !37670, !"_RNvXs21_NtCsgZ49sUHp3tW_5alloc6stringeNtB6_12SpecToString14spec_to_string: argument 0"}
!37673 = distinct !{!37673, !"_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECslpwjCj2YNBy_9polars_io"}
!37674 = distinct !{!37674, !37673, !"_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECslpwjCj2YNBy_9polars_io: argument 1"}
!37675 = distinct !{!37675, !37673, !"_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECslpwjCj2YNBy_9polars_io: argument 0"}
!37676 = distinct !DISubprogram(name: "to_vec_in<u8, alloc::alloc::Global>", linkageName: "_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSh9to_vec_inNtNtB5_5alloc6GlobalECslpwjCj2YNBy_9polars_io", scope: !1599, file: !1597, line: 396, type: !1344, scopeLine: 396, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1343)
!37677 = distinct !DISubprogram(name: "to_vec<u8>", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc5sliceSh6to_vecCslpwjCj2YNBy_9polars_io", scope: !1599, file: !1597, line: 372, type: !1344, scopeLine: 372, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1343)
!37678 = distinct !DISubprogram(name: "to_owned<u8>", linkageName: "_RNvXs7_NtCsgZ49sUHp3tW_5alloc5sliceShNtNtB7_6borrow7ToOwned8to_ownedCslpwjCj2YNBy_9polars_io", scope: !1602, file: !1597, line: 841, type: !1344, scopeLine: 841, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1343)
!37679 = distinct !DISubprogram(name: "to_owned", linkageName: "_RNvXs2_NtCsgZ49sUHp3tW_5alloc3streNtNtB7_6borrow7ToOwned8to_owned", scope: !1605, file: !1603, line: 210, type: !1344, scopeLine: 210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1343)
!37680 = distinct !DISubprogram(name: "from", linkageName: "_RNvXsK_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringINtNtCscgRAwXFJnXP_4core7convert4FromReE4from", scope: !1606, file: !1345, line: 3113, type: !1344, scopeLine: 3113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1343)
!37681 = distinct !DISubprogram(name: "spec_to_string", linkageName: "_RNvXs21_NtCsgZ49sUHp3tW_5alloc6stringeNtB6_12SpecToString14spec_to_string", scope: !2079, file: !1345, line: 3043, type: !1344, scopeLine: 3043, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1343)
!37682 = distinct !DILexicalBlock(scope: !37681, file: !1345, line: 3044, column: 21)
!37683 = distinct !DISubprogram(name: "to_string<str>", linkageName: "_RNvXsB_NtCsgZ49sUHp3tW_5alloc6stringeNtB5_8ToString9to_stringCslpwjCj2YNBy_9polars_io", scope: !1349, file: !1345, line: 2893, type: !1344, scopeLine: 2893, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1343)
!37684 = distinct !DILocation(line: 244, column: 37, scope: !37666, inlinedAt: !37658)
!37685 = distinct !DILocation(line: 2894, column: 9, scope: !37683, inlinedAt: !37684)
!37686 = distinct !DILocation(line: 3045, column: 21, scope: !37682, inlinedAt: !37685)
!37687 = distinct !DILocation(line: 3114, column: 11, scope: !37680, inlinedAt: !37686)
!37688 = distinct !DILocation(line: 211, column: 62, scope: !37679, inlinedAt: !37687)
!37689 = distinct !DILocation(line: 842, column: 14, scope: !37678, inlinedAt: !37688)
!37690 = distinct !DILocation(line: 376, column: 14, scope: !37677, inlinedAt: !37689)
!37691 = distinct !DILocation(line: 400, column: 16, scope: !37676, inlinedAt: !37690)
!37692 = distinct !DILocation(line: 448, column: 29, scope: !103, inlinedAt: !37691)
!37693 = distinct !DILocation(line: 977, column: 20, scope: !101, inlinedAt: !37692)
!37694 = distinct !DILocation(line: 177, column: 20, scope: !100, inlinedAt: !37693)
!37695 = distinct !DILocation(line: 438, column: 50, scope: !112, inlinedAt: !37694)
!37696 = distinct !DILocation(line: 438, column: 21, scope: !112, inlinedAt: !37694)
!37697 = distinct !DILocation(line: 454, column: 36, scope: !114, inlinedAt: !37691)
!37698 = distinct !DILocation(line: 1252, column: 18, scope: !116, inlinedAt: !37697)
!37699 = distinct !{!37699, !"_RNCNCNvNtNtCslpwjCj2YNBy_9polars_io5cloud3dns13lookup_hedged00B9_"}
!37700 = distinct !{!37700, !37699, !"_RNCNCNvNtNtCslpwjCj2YNBy_9polars_io5cloud3dns13lookup_hedged00B9_: argument 0"}
!37701 = distinct !DISubprogram(name: "force<polars_async::RuntimeManager, fn() -> polars_async::RuntimeManager>", linkageName: "_RNvMNtNtCsh8eZTKRCwoO_3std4sync9lazy_lockINtB2_8LazyLockNtCsidoPH4Qgqxm_12polars_async14RuntimeManagerE5forceCslpwjCj2YNBy_9polars_io", scope: !1515, file: !1513, line: 241, type: !1344, scopeLine: 241, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1343)
!37702 = distinct !DISubprogram(name: "deref<polars_async::RuntimeManager, fn() -> polars_async::RuntimeManager>", linkageName: "_RNvXs1_NtNtCsh8eZTKRCwoO_3std4sync9lazy_lockINtB5_8LazyLockNtCsidoPH4Qgqxm_12polars_async14RuntimeManagerENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCslpwjCj2YNBy_9polars_io", scope: !1516, file: !1513, line: 356, type: !1344, scopeLine: 356, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1343)
!37703 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNCNvNtNtCslpwjCj2YNBy_9polars_io5cloud3dns13lookup_hedged00B9_", scope: !38237, file: !1723, line: 235, type: !1359, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1343)
!37704 = distinct !DILocation(line: 244, column: 20, scope: !37666, inlinedAt: !37658)
!37705 = distinct !DILocation(line: 236, column: 9, scope: !37703, inlinedAt: !37704)
!37706 = distinct !DILocation(line: 357, column: 9, scope: !37702, inlinedAt: !37705)
!37707 = distinct !DILocation(line: 242, column: 19, scope: !37701, inlinedAt: !37706)
!37708 = distinct !DILocation(line: 221, column: 23, scope: !1068, inlinedAt: !37707)
!37709 = distinct !DILocation(line: 87, column: 31, scope: !1067, inlinedAt: !37708)
!37710 = distinct !DILocation(line: 2870, column: 26, scope: !1066, inlinedAt: !37709)
!37711 = distinct !DISubprogram(name: "blocking_spawner", linkageName: "_RNvMs1_NtNtCskmDBXs7hs3c_5tokio7runtime9schedulerNtB5_6Handle16blocking_spawner", scope: !38240, file: !38239, line: 99, type: !1344, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1343)
!37712 = distinct !DISubprogram(name: "spawn_blocking<polars_io::cloud::dns::lookup_hedged::{async_fn#0}::{closure#0}::{closure_env#0}, core::result::Result<alloc::vec::Vec<core::net::socket_addr::SocketAddr, alloc::alloc::Global>, std::io::error::Error>>", linkageName: "_RINvMNtNtCskmDBXs7hs3c_5tokio7runtime6handleNtB3_6Handle14spawn_blockingNCNCNCNvNtNtCslpwjCj2YNBy_9polars_io5cloud3dns13lookup_hedged000INtNtCscgRAwXFJnXP_4core6result6ResultINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtB2f_3net11socket_addr10SocketAddrENtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEEB1k_", scope: !38243, file: !38241, line: 234, type: !1344, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1343)
!37713 = distinct !DISubprogram(name: "spawn_blocking<polars_io::cloud::dns::lookup_hedged::{async_fn#0}::{closure#0}::{closure_env#0}, core::result::Result<alloc::vec::Vec<core::net::socket_addr::SocketAddr, alloc::alloc::Global>, std::io::error::Error>>", linkageName: "_RINvMNtNtCskmDBXs7hs3c_5tokio7runtime7runtimeNtB3_7Runtime14spawn_blockingNCNCNCNvNtNtCslpwjCj2YNBy_9polars_io5cloud3dns13lookup_hedged000INtNtCscgRAwXFJnXP_4core6result6ResultINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtB2h_3net11socket_addr10SocketAddrENtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEEB1m_", scope: !38246, file: !38244, line: 275, type: !1344, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1343)
!37714 = distinct !DISubprogram(name: "spawn_blocking<polars_io::cloud::dns::lookup_hedged::{async_fn#0}::{closure#0}::{closure_env#0}, core::result::Result<alloc::vec::Vec<core::net::socket_addr::SocketAddr, alloc::alloc::Global>, std::io::error::Error>>", linkageName: "_RINvMCsidoPH4Qgqxm_12polars_asyncNtB3_14RuntimeManager14spawn_blockingNCNCNCNvNtNtCslpwjCj2YNBy_9polars_io5cloud3dns13lookup_hedged000INtNtCscgRAwXFJnXP_4core6result6ResultINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtB2d_3net11socket_addr10SocketAddrENtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEEB1i_", scope: !2095, file: !1808, line: 109, type: !1344, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1343)
!37715 = distinct !DILocation(line: 236, column: 15, scope: !37703, inlinedAt: !37704)
!37716 = distinct !DILocation(line: 114, column: 17, scope: !37714, inlinedAt: !37715)
!37717 = distinct !DILocation(line: 280, column: 21, scope: !37713, inlinedAt: !37716)
!37718 = distinct !DILocation(line: 239, column: 20, scope: !37712, inlinedAt: !37717)
!37719 = distinct !DILexicalBlock(scope: !37666, file: !1723, line: 245, column: 5)
!37720 = distinct !DILexicalBlock(scope: !37719, file: !1723, line: 247, column: 5)
!37721 = distinct !DILexicalBlock(scope: !37720, file: !1723, line: 250, column: 9)
!37722 = distinct !DILexicalBlock(scope: !37721, file: !1724, line: 622, column: 9)
!37723 = distinct !DILexicalBlock(scope: !37722, file: !1724, line: 641, column: 13)
!37724 = distinct !DILexicalBlock(scope: !37723, file: !1724, line: 649, column: 13)
!37725 = distinct !DILexicalBlock(scope: !37724, file: !1724, line: 657, column: 13)
!37726 = distinct !DILexicalBlock(scope: !37725, file: !1724, line: 741, column: 16)
!37727 = distinct !DILocation(line: 252, column: 9, scope: !38248, inlinedAt: !37658)
!37728 = distinct !DILocation(line: 252, column: 9, scope: !38248, inlinedAt: !37658)
!37729 = distinct !DILexicalBlock(scope: !37722, file: !1724, line: 635, column: 9)
!37730 = distinct !{!37730, !"_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionINtNtB5_6result6ResultIBJ_INtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtB5_3net11socket_addr10SocketAddrENtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorENtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5error9JoinErrorEE3mapIBJ_B18_INtNtB1d_5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SendNtB4K_4SyncEL_EENCNCNvNtNtCslpwjCj2YNBy_9polars_io5cloud3dns13lookup_hedged0s0_0EB5r_"}
!37731 = distinct !{!37731, !37730, !"_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionINtNtB5_6result6ResultIBJ_INtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtB5_3net11socket_addr10SocketAddrENtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorENtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5error9JoinErrorEE3mapIBJ_B18_INtNtB1d_5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SendNtB4K_4SyncEL_EENCNCNvNtNtCslpwjCj2YNBy_9polars_io5cloud3dns13lookup_hedged0s0_0EB5r_: argument 1"}
!37732 = distinct !DILexicalBlock(scope: !37729, file: !1724, line: 746, column: 17)
!37733 = distinct !DISubprogram(name: "map<core::result::Result<core::result::Result<alloc::vec::Vec<core::net::socket_addr::SocketAddr, alloc::alloc::Global>, std::io::error::Error>, tokio::runtime::task::error::JoinError>, core::result::Result<alloc::vec::Vec<core::net::socket_addr::SocketAddr, alloc::alloc::Global>, alloc::boxed::Box<(dyn core::error::Error + core::marker::Send + core::marker::Sync), alloc::alloc::Global>>, polars_io::cloud::dns::lookup_hedged::{async_fn#0}::{closure_env#2}>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionINtNtB5_6result6ResultIBJ_INtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtB5_3net11socket_addr10SocketAddrENtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorENtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5error9JoinErrorEE3mapIBJ_B18_INtNtB1d_5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SendNtB4K_4SyncEL_EENCNCNvNtNtCslpwjCj2YNBy_9polars_io5cloud3dns13lookup_hedged0s0_0EB5r_", scope: !1408, file: !1406, line: 1160, type: !1344, scopeLine: 1160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1343)
!37734 = distinct !DILocation(line: 257, column: 84, scope: !38251, inlinedAt: !37658)
!37735 = distinct !{!37735, !"_RNCNCNvNtNtCslpwjCj2YNBy_9polars_io5cloud3dns13lookup_hedged0s0_0B9_"}
!37736 = distinct !{!37736, !37735, !"_RNCNCNvNtNtCslpwjCj2YNBy_9polars_io5cloud3dns13lookup_hedged0s0_0B9_: argument 1"}
!37737 = distinct !DILexicalBlock(scope: !37733, file: !1406, line: 1165, column: 13)
!37738 = distinct !DISubprogram(name: "map_err<core::result::Result<alloc::vec::Vec<core::net::socket_addr::SocketAddr, alloc::alloc::Global>, std::io::error::Error>, tokio::runtime::task::error::JoinError, alloc::boxed::Box<(dyn core::error::Error + core::marker::Send + core::marker::Sync), alloc::alloc::Global>, fn(tokio::runtime::task::error::JoinError) -> alloc::boxed::Box<(dyn core::error::Error + core::marker::Send + core::marker::Sync), alloc::alloc::Global>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultIBw_INtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtB5_3net11socket_addr10SocketAddrENtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorENtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5error9JoinErrorE7map_errINtNtBR_5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SendNtB4i_4SyncEL_ENvYB3E_INtNtB5_7convert4FromB2A_E4fromECslpwjCj2YNBy_9polars_io", scope: !1358, file: !1356, line: 962, type: !1344, scopeLine: 962, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1343)
!37739 = distinct !DISubprogram(name: "{closure#2}", linkageName: "_RNCNCNvNtNtCslpwjCj2YNBy_9polars_io5cloud3dns13lookup_hedged0s0_0B9_", scope: !38237, file: !1723, line: 257, type: !1344, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1343)
!37740 = distinct !DILocation(line: 1165, column: 29, scope: !37737, inlinedAt: !37734)
!37741 = distinct !DILocation(line: 259, column: 26, scope: !37739, inlinedAt: !37740)
!37742 = distinct !{!37742, !37730, !"_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionINtNtB5_6result6ResultIBJ_INtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtB5_3net11socket_addr10SocketAddrENtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorENtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5error9JoinErrorEE3mapIBJ_B18_INtNtB1d_5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SendNtB4K_4SyncEL_EENCNCNvNtNtCslpwjCj2YNBy_9polars_io5cloud3dns13lookup_hedged0s0_0EB5r_: argument 0"}
!37743 = distinct !{!37743, !37735, !"_RNCNCNvNtNtCslpwjCj2YNBy_9polars_io5cloud3dns13lookup_hedged0s0_0B9_: argument 0"}
!37744 = distinct !{!37744, !"_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5error9JoinErrorE3newCslpwjCj2YNBy_9polars_io"}
!37745 = distinct !{!37745, !37744, !"_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5error9JoinErrorE3newCslpwjCj2YNBy_9polars_io: argument 0"}
!37746 = distinct !DISubprogram(name: "new<tokio::runtime::task::error::JoinError>", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5error9JoinErrorE3newCslpwjCj2YNBy_9polars_io", scope: !1929, file: !1370, line: 284, type: !1344, scopeLine: 284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1343)
!37747 = distinct !DISubprogram(name: "from<tokio::runtime::task::error::JoinError>", linkageName: "_RNvXse_NtNtCsgZ49sUHp3tW_5alloc5boxed7convertINtB7_3BoxDNtNtCscgRAwXFJnXP_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromNtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5error9JoinErrorE4fromCslpwjCj2YNBy_9polars_io", scope: !38256, file: !38254, line: 556, type: !1344, scopeLine: 556, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1343)
!37748 = distinct !DISubprogram(name: "call_once<fn(tokio::runtime::task::error::JoinError) -> alloc::boxed::Box<(dyn core::error::Error + core::marker::Send + core::marker::Sync), alloc::alloc::Global>, (tokio::runtime::task::error::JoinError)>", linkageName: "_RNvYNvYINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCscgRAwXFJnXP_4core5error5ErrorNtNtBJ_6marker4SendNtB1g_4SyncEL_EINtNtBJ_7convert4FromNtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5error9JoinErrorE4fromINtNtNtBJ_3ops8function6FnOnceTB27_EE9call_onceCslpwjCj2YNBy_9polars_io", scope: !1412, file: !1409, line: 250, type: !1344, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1343)
!37749 = distinct !DILexicalBlock(scope: !37738, file: !1356, line: 968, column: 13)
!37750 = distinct !DILocation(line: 968, column: 27, scope: !37749, inlinedAt: !37741)
!37751 = distinct !DILocation(line: 250, column: 5, scope: !37748, inlinedAt: !37750)
!37752 = distinct !DILocation(line: 557, column: 9, scope: !37747, inlinedAt: !37751)
!37753 = distinct !DILocation(line: 286, column: 19, scope: !37746, inlinedAt: !37752)
!37754 = distinct !DILocation(line: 248, column: 18, scope: !937, inlinedAt: !37753)
!37755 = distinct !DILocation(line: 449, column: 14, scope: !936, inlinedAt: !37754)
!37756 = distinct !DILocation(line: 332, column: 9, scope: !935, inlinedAt: !37755)
!37757 = distinct !DILocation(line: 210, column: 73, scope: !934, inlinedAt: !37756)
!37758 = distinct !DILexicalBlock(scope: !37746, file: !1370, line: 286, column: 9)
!37759 = distinct !DISubprogram(name: "and_then<core::result::Result<alloc::vec::Vec<core::net::socket_addr::SocketAddr, alloc::alloc::Global>, std::io::error::Error>, alloc::boxed::Box<(dyn core::error::Error + core::marker::Send + core::marker::Sync), alloc::alloc::Global>, alloc::vec::Vec<core::net::socket_addr::SocketAddr, alloc::alloc::Global>, polars_io::cloud::dns::lookup_hedged::{async_fn#0}::{closure#2}::{closure_env#0}>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultIBw_INtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtB5_3net11socket_addr10SocketAddrENtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEINtNtBR_5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SendNtB3e_4SyncEL_EE8and_thenBM_NCNCNCNvNtNtCslpwjCj2YNBy_9polars_io5cloud3dns13lookup_hedged0s0_00EB49_", scope: !1358, file: !1356, line: 1488, type: !1344, scopeLine: 1488, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1343)
!37760 = distinct !DILocation(line: 260, column: 26, scope: !37739, inlinedAt: !37740)
!37761 = distinct !DISubprogram(name: "map_err<alloc::vec::Vec<core::net::socket_addr::SocketAddr, alloc::alloc::Global>, std::io::error::Error, alloc::boxed::Box<(dyn core::error::Error + core::marker::Send + core::marker::Sync), alloc::alloc::Global>, fn(std::io::error::Error) -> alloc::boxed::Box<(dyn core::error::Error + core::marker::Send + core::marker::Sync), alloc::alloc::Global>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtB5_3net11socket_addr10SocketAddrENtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE7map_errINtNtBN_5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SendNtB3i_4SyncEL_ENvYB2E_INtNtB5_7convert4FromB1S_E4fromECslpwjCj2YNBy_9polars_io", scope: !1358, file: !1356, line: 962, type: !1344, scopeLine: 962, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1343)
!37762 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNCNCNvNtNtCslpwjCj2YNBy_9polars_io5cloud3dns13lookup_hedged0s0_00Bb_", scope: !38261, file: !1723, line: 260, type: !1344, scopeLine: 260, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1343)
!37763 = distinct !DILexicalBlock(scope: !37759, file: !1356, line: 1493, column: 13)
!37764 = distinct !DILocation(line: 1493, column: 22, scope: !37763, inlinedAt: !37760)
!37765 = distinct !DILocation(line: 260, column: 45, scope: !37762, inlinedAt: !37764)
!37766 = distinct !DISubprogram(name: "new<std::io::error::Error>", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE3newCslpwjCj2YNBy_9polars_io", scope: !1929, file: !1370, line: 284, type: !1344, scopeLine: 284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1343)
!37767 = distinct !DISubprogram(name: "from<std::io::error::Error>", linkageName: "_RNvXse_NtNtCsgZ49sUHp3tW_5alloc5boxed7convertINtB7_3BoxDNtNtCscgRAwXFJnXP_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4fromCslpwjCj2YNBy_9polars_io", scope: !38256, file: !38254, line: 556, type: !1344, scopeLine: 556, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1343)
!37768 = distinct !DISubprogram(name: "call_once<fn(std::io::error::Error) -> alloc::boxed::Box<(dyn core::error::Error + core::marker::Send + core::marker::Sync), alloc::alloc::Global>, (std::io::error::Error)>", linkageName: "_RNvYNvYINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCscgRAwXFJnXP_4core5error5ErrorNtNtBJ_6marker4SendNtB1g_4SyncEL_EINtNtBJ_7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4fromINtNtNtBJ_3ops8function6FnOnceTB27_EE9call_onceCslpwjCj2YNBy_9polars_io", scope: !1412, file: !1409, line: 250, type: !1344, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1343)
!37769 = distinct !DILexicalBlock(scope: !37761, file: !1356, line: 968, column: 13)
!37770 = distinct !DILocation(line: 968, column: 27, scope: !38264, inlinedAt: !37765)
!37771 = distinct !DILocation(line: 250, column: 5, scope: !38263, inlinedAt: !37770)
!37772 = distinct !DILocation(line: 557, column: 9, scope: !37767, inlinedAt: !37771)
!37773 = distinct !DILocation(line: 286, column: 19, scope: !37766, inlinedAt: !37772)
!37774 = distinct !DILocation(line: 248, column: 18, scope: !937, inlinedAt: !37773)
!37775 = distinct !DILocation(line: 449, column: 14, scope: !936, inlinedAt: !37774)
!37776 = distinct !DILocation(line: 332, column: 9, scope: !935, inlinedAt: !37775)
!37777 = distinct !DILocation(line: 210, column: 73, scope: !934, inlinedAt: !37776)
!37778 = distinct !DILexicalBlock(scope: !37766, file: !1370, line: 286, column: 9)
!37779 = distinct !{!37779, !"_RNvXsB_NtCsgZ49sUHp3tW_5alloc6stringeNtB5_8ToString9to_stringCslpwjCj2YNBy_9polars_io"}
!37780 = distinct !{!37780, !37779, !"_RNvXsB_NtCsgZ49sUHp3tW_5alloc6stringeNtB5_8ToString9to_stringCslpwjCj2YNBy_9polars_io: argument 1"}
!37781 = distinct !{!37781, !37779, !"_RNvXsB_NtCsgZ49sUHp3tW_5alloc6stringeNtB5_8ToString9to_stringCslpwjCj2YNBy_9polars_io: argument 0"}
!37782 = distinct !{!37782, !"_RNvXs21_NtCsgZ49sUHp3tW_5alloc6stringeNtB6_12SpecToString14spec_to_string"}
!37783 = distinct !{!37783, !37782, !"_RNvXs21_NtCsgZ49sUHp3tW_5alloc6stringeNtB6_12SpecToString14spec_to_string: argument 1"}
!37784 = distinct !{!37784, !37782, !"_RNvXs21_NtCsgZ49sUHp3tW_5alloc6stringeNtB6_12SpecToString14spec_to_string: argument 0"}
!37785 = distinct !{!37785, !"_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECslpwjCj2YNBy_9polars_io"}
!37786 = distinct !{!37786, !37785, !"_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECslpwjCj2YNBy_9polars_io: argument 1"}
!37787 = distinct !{!37787, !37785, !"_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECslpwjCj2YNBy_9polars_io: argument 0"}
!37788 = distinct !DILocation(line: 301, column: 49, scope: !38249, inlinedAt: !37658)
!37789 = distinct !DILocation(line: 2894, column: 9, scope: !37683, inlinedAt: !37788)
!37790 = distinct !DILocation(line: 3045, column: 21, scope: !37682, inlinedAt: !37789)
!37791 = distinct !DILocation(line: 3114, column: 11, scope: !37680, inlinedAt: !37790)
!37792 = distinct !DILocation(line: 211, column: 62, scope: !37679, inlinedAt: !37791)
!37793 = distinct !DILocation(line: 842, column: 14, scope: !37678, inlinedAt: !37792)
!37794 = distinct !DILocation(line: 376, column: 14, scope: !37677, inlinedAt: !37793)
!37795 = distinct !DILocation(line: 400, column: 16, scope: !37676, inlinedAt: !37794)
!37796 = distinct !DILocation(line: 448, column: 29, scope: !103, inlinedAt: !37795)
!37797 = distinct !DILocation(line: 977, column: 20, scope: !101, inlinedAt: !37796)
!37798 = distinct !DILocation(line: 177, column: 20, scope: !100, inlinedAt: !37797)
!37799 = distinct !DILocation(line: 438, column: 50, scope: !112, inlinedAt: !37798)
!37800 = distinct !DILocation(line: 438, column: 21, scope: !112, inlinedAt: !37798)
!37801 = distinct !DILocation(line: 454, column: 36, scope: !114, inlinedAt: !37795)
!37802 = distinct !DILocation(line: 1252, column: 18, scope: !116, inlinedAt: !37801)
!37803 = distinct !DILexicalBlock(scope: !37732, file: !1723, line: 257, column: 17)
!37804 = distinct !DILexicalBlock(scope: !37803, file: !1723, line: 286, column: 21)
!37805 = distinct !DILexicalBlock(scope: !37803, file: !1723, line: 265, column: 21)
!37806 = distinct !DILexicalBlock(scope: !37805, file: !1723, line: 266, column: 25)
!37807 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align8<u64>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align8yEE3getCslpwjCj2YNBy_9polars_io", scope: !1384, file: !1382, line: 2443, type: !1344, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1343)
!37808 = distinct !DISubprogram(name: "as_ptr", linkageName: "_RNvMs1c_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicyE6as_ptr", scope: !1402, file: !1399, line: 3614, type: !1344, scopeLine: 3614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1343)
!37809 = distinct !DISubprogram(name: "load", linkageName: "_RNvMs1c_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicyE4load", scope: !1402, file: !1399, line: 2868, type: !1344, scopeLine: 2868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1343)
!37810 = distinct !DISubprogram(name: "dns_log_threshold", linkageName: "_RNvMCshZ4kA9mlxmz_13polars_configNtB2_6Config17dns_log_threshold", scope: !2093, file: !2091, line: 520, type: !1344, scopeLine: 520, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1343)
!37811 = distinct !DILocation(line: 268, column: 74, scope: !37806, inlinedAt: !37658)
!37812 = distinct !DILocation(line: 521, column: 41, scope: !37810, inlinedAt: !37811)
!37813 = distinct !DILocation(line: 2870, column: 43, scope: !37809, inlinedAt: !37812)
!37814 = distinct !DILocation(line: 3615, column: 24, scope: !37808, inlinedAt: !37813)
!37815 = distinct !DILocation(line: 2870, column: 26, scope: !37809, inlinedAt: !37812)
!37816 = distinct !DISubprogram(name: "from_millis", linkageName: "_RNvMNtCscgRAwXFJnXP_4core4timeNtB2_8Duration11from_millis", scope: !2063, file: !2061, line: 244, type: !1344, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1343)
!37817 = distinct !DILexicalBlock(scope: !37810, file: !2091, line: 523, column: 13)
!37818 = distinct !DILocation(line: 523, column: 24, scope: !37817, inlinedAt: !37811)
!37819 = distinct !DILexicalBlock(scope: !37816, file: !2061, line: 245, column: 9)
!37820 = distinct !DILexicalBlock(scope: !37819, file: !2061, line: 246, column: 9)
!37821 = distinct !DISubprogram(name: "partial_cmp", linkageName: "_RNvXsj_NtCscgRAwXFJnXP_4core4timeNtB5_8DurationNtNtB7_3cmp10PartialOrd11partial_cmp", scope: !38270, file: !2061, line: 79, type: !1359, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1343)
!37822 = distinct !DISubprogram(name: "gt<core::time::Duration, core::time::Duration>", linkageName: "_RNvYNtNtCscgRAwXFJnXP_4core4time8DurationNtNtB6_3cmp10PartialOrd2gtCslpwjCj2YNBy_9polars_io", scope: !38271, file: !1494, line: 1447, type: !1359, scopeLine: 1447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1343)
!37823 = distinct !DILocation(line: 269, column: 40, scope: !37806, inlinedAt: !37658)
!37824 = distinct !DILocation(line: 1448, column: 14, scope: !37822, inlinedAt: !37823)
!37825 = distinct !DISubprogram(name: "is_some_and<core::cmp::Ordering, fn(core::cmp::Ordering) -> bool>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionNtNtB5_3cmp8OrderingE11is_some_andNvMBK_BI_5is_gtECslpwjCj2YNBy_9polars_io", scope: !1408, file: !1406, line: 661, type: !1344, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1343)
!37826 = distinct !DILocation(line: 1448, column: 33, scope: !37822, inlinedAt: !37823)
!37827 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align1<u8>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align1hEE3getCslpwjCj2YNBy_9polars_io", scope: !1384, file: !1382, line: 2443, type: !1344, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1343)
!37828 = distinct !DISubprogram(name: "load", linkageName: "_RNvMs2_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomicbE4load", scope: !1402, file: !1399, line: 738, type: !1344, scopeLine: 738, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1343)
!37829 = distinct !DISubprogram(name: "verbose_sensitive", linkageName: "_RNvMCshZ4kA9mlxmz_13polars_configNtB2_6Config17verbose_sensitive", scope: !2093, file: !2091, line: 446, type: !1344, scopeLine: 446, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1343)
!37830 = distinct !DILocation(line: 271, column: 74, scope: !37806, inlinedAt: !37658)
!37831 = distinct !DILocation(line: 447, column: 32, scope: !37829, inlinedAt: !37830)
!37832 = distinct !DILocation(line: 741, column: 37, scope: !37828, inlinedAt: !37831)
end_hunk_1
