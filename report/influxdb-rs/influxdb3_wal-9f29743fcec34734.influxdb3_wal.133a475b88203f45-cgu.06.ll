Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_wal-9f29743fcec34734.influxdb3_wal.133a475b88203f45-cgu.06?download=true
inline.NumInlined: 98
inline.NumDeleted: 59
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot6SenderNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEB1q_:bb.a
  br i1 %or.cond.not.i.i, label %bb.c, label %_RNvXs0_NtNtCseCDlJsl44RV_5tokio4sync7oneshotINtB5_6SenderNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBX_.exit.thread

bb.c:                                             ; preds = %.noexc
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !noalias !70, !nonnull !4, !align !8, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !noalias !70, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !noalias !70, !noundef !4
  invoke void %i.h(ptr noundef %i.j)
          to label %_RNvXs0_NtNtCseCDlJsl44RV_5tokio4sync7oneshotINtB5_6SenderNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBX_.exit unwind label %bb.d, !inline_history !9

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71)
  %i.l = load ptr, ptr %0, align 8, !alias.scope !71, !noundef !4 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEEEB2i_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !72
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEEEB2i_.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEE9drop_slowB1t_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEEEB2i_.exit unwind label %bb.h

_RNvXs0_NtNtCseCDlJsl44RV_5tokio4sync7oneshotINtB5_6SenderNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBX_.exit: ; preds = %bb.c
  %.pr.pre = load ptr, ptr %0, align 8, !alias.scope !73 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  %i.p = icmp eq ptr %.pr.pre, null
  br i1 %i.p, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEEEB2i_.exit3, label %_RNvXs0_NtNtCseCDlJsl44RV_5tokio4sync7oneshotINtB5_6SenderNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBX_.exit.thread

_RNvXs0_NtNtCseCDlJsl44RV_5tokio4sync7oneshotINtB5_6SenderNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBX_.exit.thread: ; preds = %.noexc, %_RNvXs0_NtNtCseCDlJsl44RV_5tokio4sync7oneshotINtB5_6SenderNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBX_.exit
  %.pr7 = phi ptr [ %.pr.pre, %_RNvXs0_NtNtCseCDlJsl44RV_5tokio4sync7oneshotINtB5_6SenderNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBX_.exit ], [ %i.a, %.noexc ]
  %i.q = atomicrmw sub ptr %.pr7, i64 1 release, align 8, !noalias !74
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEEEB2i_.exit3

bb.g:                                             ; preds = %_RNvXs0_NtNtCseCDlJsl44RV_5tokio4sync7oneshotINtB5_6SenderNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBX_.exit.thread
  fence acquire
  tail call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEE9drop_slowB1t_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEEEB2i_.exit3

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEEEB2i_.exit3: ; preds = %bb.a, %_RNvXs0_NtNtCseCDlJsl44RV_5tokio4sync7oneshotINtB5_6SenderNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBX_.exit, %_RNvXs0_NtNtCseCDlJsl44RV_5tokio4sync7oneshotINtB5_6SenderNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBX_.exit.thread, %bb.g
  ret void

bb.h:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEEEB2i_.exit: ; preds = %bb.e, %bb.d, %bb.f
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseCDlJsl44RV_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEEB22_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !7, !alias.scope !79, !noundef !4
  %switch.i.i = icmp ugt i64 %i.a, -3
  br i1 %switch.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEEB1q_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs1ElB0qm0ygX_13influxdb3_wal.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs1ElB0qm0ygX_13influxdb3_wal.exit.i.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs1ElB0qm0ygX_13influxdb3_wal.exit.i.i.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs1ElB0qm0ygX_13influxdb3_wal.exit.i.i.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEEB1q_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEEB1q_.exit: ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs1ElB0qm0ygX_13influxdb3_wal.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEBF_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !10, !noundef !4
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs1ElB0qm0ygX_13influxdb3_wal.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs1ElB0qm0ygX_13influxdb3_wal.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs1ElB0qm0ygX_13influxdb3_wal.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs1ElB0qm0ygX_13influxdb3_wal.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs1ElB0qm0ygX_13influxdb3_wal.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvNtNtCseCDlJsl44RV_5tokio4sync7oneshot7channelNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEBP_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 -2, ptr %.sroa.8.0..sroa_idx, align 8
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !82
  %i.c = tail call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 80, i64 noundef 8) #21, !noalias !82 ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEE3newB1N_.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #18
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync8ArcInnerINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEEB21_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.a) #20
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e

_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEE3newB1N_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEE3newB1N_.exit
  %i.i = insertvalue { ptr, ptr } poison, ptr %i.c, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr %i.c, 1
  ret { ptr, ptr } %i.j

bb.g:                                             ; preds = %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEE3newB1N_.exit
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpNvYBX_NtNtBa_3cmp10PartialOrd2ltEBZ_(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 88686269585142076) %1, ptr noalias nofree noundef nonnull align 8 captures(address) %2, i64 noundef range(i64 0, 88686269585142076) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readnone captures(none) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %4, 0
  %i.b = icmp uge i64 %4, %1
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1c_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sub nuw nsw i64 %1, %4                   ; 2 uses
  %.sroa.0.0.i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %4) ; 2 uses
  %i.d = icmp samesign ult i64 %3, %.sroa.0.0.i
  br i1 %i.d, label %_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1c_.exit, label %.critedge

.critedge:                                        ; preds = %bb.b
  %.idx30 = mul nuw nsw i64 %4, 104
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %.idx30 ; 3 uses
  %.not = icmp samesign ugt i64 %4, %i.c          ; 2 uses
  %spec.select = select i1 %.not, ptr %i.e, ptr %0
  %i.f = mul nuw nsw i64 %.sroa.0.0.i, 104        ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select, i64 %i.f, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %i.f ; 2 uses
  br i1 %.not, label %bb.c, label %.lr.ph.i

bb.c:                                             ; preds = %.critedge
  %i.h = getelementptr inbounds nuw [104 x i8], ptr %0, i64 %1
  %i.i = getelementptr inbounds i8, ptr %i.e, i64 -104
  br label %.split.i

.split.i:                                         ; preds = %bb.c, %_RNvYNvYNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBK_3ops8function5FnMutTRB5_B1Q_EE8call_mutB7_.exit.i.1
  %i.j = phi ptr [ %i.k, %_RNvYNvYNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBK_3ops8function5FnMutTRB5_B1Q_EE8call_mutB7_.exit.i.1 ], [ %i.g, %bb.c ]
  %.sroa.0.0.i17 = phi ptr [ %i.l, %_RNvYNvYNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBK_3ops8function5FnMutTRB5_B1Q_EE8call_mutB7_.exit.i.1 ], [ %i.h, %bb.c ]
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -104 ; 4 uses
  %i.l = getelementptr inbounds i8, ptr %.sroa.0.0.i17, i64 -104 ; 2 uses
  %.val.i = load i64, ptr %i.k, align 8, !range !10, !noalias !87, !noundef !4
  %.val10.i = load i64, ptr %i.i, align 8, !noalias !87
  %i.m = icmp eq i64 %.val.i, -1                  ; 2 uses
  %i.n = icmp eq i64 %.val10.i, -1                ; 2 uses
  %or.cond.i.i.i.i = select i1 %i.m, i1 true, i1 %i.n
  %or.cond.not.i.i.i.i = xor i1 %or.cond.i.i.i.i, true
  %or.cond3.i.i.i.i = select i1 %or.cond.not.i.i.i.i, i1 true, i1 %i.n
  br i1 %or.cond3.i.i.i.i, label %_RNvYNvYNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBK_3ops8function5FnMutTRB5_B1Q_EE8call_mutB7_.exit.i.1, label %bb.d

bb.d:                                             ; preds = %.split.i
  tail call void @llvm.assume(i1 %i.m)
  br label %_RNvYNvYNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBK_3ops8function5FnMutTRB5_B1Q_EE8call_mutB7_.exit.i.1

_RNvYNvYNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBK_3ops8function5FnMutTRB5_B1Q_EE8call_mutB7_.exit.i.1: ; preds = %bb.d, %.split.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.l, ptr noundef nonnull align 8 dereferenceable(104) %i.k, i64 104, i1 false), !noalias !87
  %i.o = icmp eq ptr %i.k, %2
  br i1 %i.o, label %_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1c_.exit, label %.split.i

.lr.ph.i:                                         ; preds = %.critedge, %_RNvYNvYNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBK_3ops8function5FnMutTRB5_B1Q_EE8call_mutB7_.exit.i23.1
  %i.p = phi ptr [ %i.u, %_RNvYNvYNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBK_3ops8function5FnMutTRB5_B1Q_EE8call_mutB7_.exit.i23.1 ], [ %0, %.critedge ] ; 2 uses
  %i.q = phi ptr [ %i.t, %_RNvYNvYNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBK_3ops8function5FnMutTRB5_B1Q_EE8call_mutB7_.exit.i23.1 ], [ %2, %.critedge ] ; 3 uses
  %.val.i19 = load i64, ptr %i.e, align 8, !range !10, !noalias !88, !noundef !4
  %.val6.i = load i64, ptr %i.q, align 8, !noalias !88
  %i.r = icmp eq i64 %.val.i19, -1                ; 2 uses
  %i.s = icmp eq i64 %.val6.i, -1                 ; 2 uses
  %or.cond.i.i.i.i20 = select i1 %i.r, i1 true, i1 %i.s
  %or.cond.not.i.i.i.i21 = xor i1 %or.cond.i.i.i.i20, true
  %or.cond3.i.i.i.i22 = select i1 %or.cond.not.i.i.i.i21, i1 true, i1 %i.s
  br i1 %or.cond3.i.i.i.i22, label %_RNvYNvYNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBK_3ops8function5FnMutTRB5_B1Q_EE8call_mutB7_.exit.i23.1, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  tail call void @llvm.assume(i1 %i.r)
  br label %_RNvYNvYNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBK_3ops8function5FnMutTRB5_B1Q_EE8call_mutB7_.exit.i23.1

_RNvYNvYNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBK_3ops8function5FnMutTRB5_B1Q_EE8call_mutB7_.exit.i23.1: ; preds = %bb.e, %.lr.ph.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.p, ptr noundef nonnull align 8 dereferenceable(104) %i.q, i64 104, i1 false), !noalias !88
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 104 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  %.not.i.1 = icmp eq ptr %i.t, %i.g
  br i1 %.not.i.1, label %_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1c_.exit, label %.lr.ph.i

_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1c_.exit: ; preds = %_RNvYNvYNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBK_3ops8function5FnMutTRB5_B1Q_EE8call_mutB7_.exit.i23.1, %_RNvYNvYNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBK_3ops8function5FnMutTRB5_B1Q_EE8call_mutB7_.exit.i.1, %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs1ElB0qm0ygX_13influxdb3_wal(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #2 {
bb.a:
  %min.iters.check = icmp ult i64 %2, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.a = shl i64 %2, 3                            ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.a
  %scevgep5 = getelementptr i8, ptr %1, i64 %i.a
  %bound0 = icmp ult ptr %0, %scevgep5
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, -4                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.b, align 1, !alias.scope !101, !noalias !102
  %wide.load6 = load <2 x i64>, ptr %i.d, align 1, !alias.scope !101, !noalias !102
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %wide.load7 = load <2 x i64>, ptr %i.c, align 1, !alias.scope !102, !noalias !99
  %wide.load8 = load <2 x i64>, ptr %i.e, align 1, !alias.scope !102, !noalias !99
  store <2 x i64> %wide.load7, ptr %i.b, align 1, !alias.scope !101, !noalias !102
  store <2 x i64> %wide.load8, ptr %i.d, align 1, !alias.scope !101, !noalias !102
  store <2 x i64> %wide.load, ptr %i.c, align 1, !alias.scope !102, !noalias !99
  store <2 x i64> %wide.load6, ptr %i.e, align 1, !alias.scope !102, !noalias !99
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.f = icmp eq i64 %index.next, %n.vec
  br i1 %i.f, label %middle.block, label %vector.body, !llvm.loop !95

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.sroa.0.04.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.0.04.ph, 1
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.g = or disjoint i64 %.sroa.0.04.ph, 1
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.04.ph ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.04.ph ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  %.sroa.0.0.copyload.i.prol = load i64, ptr %i.h, align 1, !alias.scope !99, !noalias !100
  %.sroa.02.0.copyload.i.prol = load i64, ptr %i.i, align 1, !alias.scope !100, !noalias !99
  store i64 %.sroa.02.0.copyload.i.prol, ptr %i.h, align 1, !alias.scope !99, !noalias !100
  store i64 %.sroa.0.0.copyload.i.prol, ptr %i.i, align 1, !alias.scope !100, !noalias !99
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.04.unr = phi i64 [ %.sroa.0.04.ph, %scalar.ph.preheader ], [ %i.g, %scalar.ph.prol ]
  %i.j = icmp eq i64 %2, %.neg
  br i1 %i.j, label %.loopexit, label %scalar.ph

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  ret void

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.0.04 = phi i64 [ %i.n, %scalar.ph ], [ %.sroa.0.04.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.k = add nuw i64 %.sroa.0.04, 1               ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.04 ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.04 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  %.sroa.0.0.copyload.i = load i64, ptr %i.l, align 1, !alias.scope !99, !noalias !100
  %.sroa.02.0.copyload.i = load i64, ptr %i.m, align 1, !alias.scope !100, !noalias !99
  store i64 %.sroa.02.0.copyload.i, ptr %i.l, align 1, !alias.scope !99, !noalias !100
  store i64 %.sroa.0.0.copyload.i, ptr %i.m, align 1, !alias.scope !100, !noalias !99
  %i.n = add nuw i64 %.sroa.0.04, 2               ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.k ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.k ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  %.sroa.0.0.copyload.i.1 = load i64, ptr %i.o, align 1, !alias.scope !105, !noalias !106
  %.sroa.02.0.copyload.i.1 = load i64, ptr %i.p, align 1, !alias.scope !106, !noalias !105
  store i64 %.sroa.02.0.copyload.i.1, ptr %i.o, align 1, !alias.scope !105, !noalias !106
  store i64 %.sroa.0.0.copyload.i.1, ptr %i.p, align 1, !alias.scope !106, !noalias !105
  %exitcond.not.1 = icmp eq i64 %i.n, %2
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !98
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RINvNvNtCs87O7Q65ve1k_7bitcode5serde17get_mut_or_resize4coldNtNtB4_3ser11LazyEncoderECs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #3 {
bb.a:
  %i.a = add i64 %1, 1
  tail call void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderE11resize_withNvYBE_NtNtCs4NRVxsYgnAr_4core7default7Default7defaultECs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXNvCsbFlE7Gjht9i_12influxdb3_ids2_1__NtB5_4DbIdNtNtCs5CfTnloWo2c_10serde_core3ser9Serialize9serializeNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser14EncoderWrapperECs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(96) %1, ptr noalias noundef align 8 dereferenceable(8) %2) unnamed_addr #0 {
bb.a:
  %.val = load i32, ptr %0, align 4, !noundef !4
  %i.a = load i64, ptr %1, align 8, !range !11, !alias.scope !116, !noalias !117, !noundef !4
  %i.b = icmp eq i64 %i.a, 14
  br i1 %i.b, label %_RINvXsK_NtNtCs5CfTnloWo2c_10serde_core3ser5implsmNtB8_9Serialize9serializeNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser14EncoderWrapperECs1ElB0qm0ygX_13influxdb3_wal.exit, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNvXs2_NtNtCs87O7Q65ve1k_7bitcode5serde3serNtB7_14EncoderWrapperNtNtCs5CfTnloWo2c_10serde_core3ser10Serializer13serialize_u324cold(ptr noalias noundef nonnull align 8 dereferenceable(96) %1, ptr noalias noundef nonnull align 8 dereferenceable(8) %2)
  br label %_RINvXsK_NtNtCs5CfTnloWo2c_10serde_core3ser5implsmNtB8_9Serialize9serializeNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser14EncoderWrapperECs1ElB0qm0ygX_13influxdb3_wal.exit

_RINvXsK_NtNtCs5CfTnloWo2c_10serde_core3ser5implsmNtB8_9Serialize9serializeNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser14EncoderWrapperECs1ElB0qm0ygX_13influxdb3_wal.exit: ; preds = %bb.a, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !119, !noalias !120, !noundef !4 ; 2 uses
  store i32 %.val, ptr %i.d, align 4, !noalias !121
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store ptr %i.e, ptr %i.c, align 8, !alias.scope !119, !noalias !120
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXNvCsbFlE7Gjht9i_12influxdb3_ids8_1__NtB5_8ColumnIdNtNtCs5CfTnloWo2c_10serde_core3ser9Serialize9serializeNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser14EncoderWrapperECs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %0, ptr noalias noundef align 8 dereferenceable(96) %1, ptr noalias noundef align 8 dereferenceable(8) %2) unnamed_addr #0 {
bb.a:
  %.val = load i16, ptr %0, align 2, !noundef !4
  %i.a = load i64, ptr %1, align 8, !range !11, !alias.scope !131, !noalias !132, !noundef !4
  %i.b = icmp eq i64 %i.a, 13
  br i1 %i.b, label %_RINvXsJ_NtNtCs5CfTnloWo2c_10serde_core3ser5implstNtB8_9Serialize9serializeNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser14EncoderWrapperECs1ElB0qm0ygX_13influxdb3_wal.exit, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNvXs2_NtNtCs87O7Q65ve1k_7bitcode5serde3serNtB7_14EncoderWrapperNtNtCs5CfTnloWo2c_10serde_core3ser10Serializer13serialize_u164cold(ptr noalias noundef nonnull align 8 dereferenceable(96) %1, ptr noalias noundef nonnull align 8 dereferenceable(8) %2)
  br label %_RINvXsJ_NtNtCs5CfTnloWo2c_10serde_core3ser5implstNtB8_9Serialize9serializeNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser14EncoderWrapperECs1ElB0qm0ygX_13influxdb3_wal.exit

_RINvXsJ_NtNtCs5CfTnloWo2c_10serde_core3ser5implstNtB8_9Serialize9serializeNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser14EncoderWrapperECs1ElB0qm0ygX_13influxdb3_wal.exit: ; preds = %bb.a, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !134, !noalias !135, !noundef !4 ; 2 uses
  store i16 %.val, ptr %i.d, align 2, !noalias !136
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store ptr %i.e, ptr %i.c, align 8, !alias.scope !134, !noalias !135
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXs7_NtCsbFlE7Gjht9i_12influxdb3_id9serializeINtB6_11SerdeVecMapNtB8_7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksENtNtCs5CfTnloWo2c_10serde_core3ser9Serialize9serializeNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser14EncoderWrapperEB1i_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef align 8 dereferenceable(96) %1, ptr noalias noundef align 8 dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 7 uses
  %i.c = load i64, ptr %1, align 8, !range !11, !alias.scope !171, !noalias !172, !noundef !4
  %i.d = icmp eq i64 %i.c, 9
  br i1 %i.d, label %bb.c, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNvXs2_NtNtCs87O7Q65ve1k_7bitcode5serde3serNtB7_14EncoderWrapperNtNtCs5CfTnloWo2c_10serde_core3ser10Serializer13serialize_seq4cold(ptr noalias noundef nonnull align 8 dereferenceable(96) %1, ptr noalias noundef nonnull align 8 dereferenceable(8) %2), !noalias !173
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !175, !noalias !176, !noundef !4 ; 3 uses
  %i.g = icmp ult i64 %i.b, 255
  br i1 %i.g, label %bb.e, label %bb.d, !prof !177

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @_RNvNvXNtCs87O7Q65ve1k_7bitcode6lengthNtB4_13LengthEncoderINtNtB6_5coder7EncoderjE6encode11encode_slow(ptr noundef %i.f, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.b), !noalias !178
  %.pre33 = load ptr, ptr %i.e, align 8, !alias.scope !175, !noalias !176
  br label %_RNvXNtCs87O7Q65ve1k_7bitcode6lengthNtB2_13LengthEncoderINtNtB4_5coder7EncoderjE6encode.exit.i

bb.e:                                             ; preds = %bb.c
  %i.i = trunc nuw i64 %i.b to i8
  store i8 %i.i, ptr %i.f, align 1, !noalias !179
  br label %_RNvXNtCs87O7Q65ve1k_7bitcode6lengthNtB2_13LengthEncoderINtNtB4_5coder7EncoderjE6encode.exit.i

_RNvXNtCs87O7Q65ve1k_7bitcode6lengthNtB2_13LengthEncoderINtNtB4_5coder7EncoderjE6encode.exit.i: ; preds = %bb.e, %bb.d
  %i.j = phi ptr [ %i.f, %bb.e ], [ %.pre33, %bb.d ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store ptr %i.k, ptr %i.e, align 8, !alias.scope !175, !noalias !176
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !171, !noalias !172, !nonnull !4, !noundef !4 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !range !11, !alias.scope !180, !noalias !173, !noundef !4
  %.not.i.i = icmp eq i64 %i.n, -1
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RNvXNtCs87O7Q65ve1k_7bitcode6lengthNtB2_13LengthEncoderINtNtB4_5coder7EncoderjE6encode.exit.i
  %.not2.i.i = icmp eq i64 %i.b, 0
  br i1 %.not2.i.i, label %bb.i, label %bb.h

bb.g:                                             ; preds = %_RNvXNtCs87O7Q65ve1k_7bitcode6lengthNtB2_13LengthEncoderINtNtB4_5coder7EncoderjE6encode.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %i.b, ptr %i.o, align 8, !alias.scope !180, !noalias !173
  br label %bb.i

bb.h:                                             ; preds = %bb.f
end_hunk_0
begin_hunk_1_@_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderE11resize_withNvYBE_NtNtCs4NRVxsYgnAr_4core7default7Default7defaultECs1ElB0qm0ygX_13influxdb3_wal

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvXNvCs1ElB0qm0ygX_13influxdb3_wals4_1__NtB5_11TableChunksNtNtCs5CfTnloWo2c_10serde_core3ser9Serialize9serializeNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser14EncoderWrapperEB5_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias noundef align 8 dereferenceable(96), ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #11

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCseCDlJsl44RV_5tokio7runtime7context7ContextE10initializeCs1ElB0qm0ygX_13influxdb3_wal(ptr noundef nonnull align 8) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCseCDlJsl44RV_5tokio4task4coop14register_waker(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #4

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs87O7Q65ve1k_7bitcode5serde3serNtB2_16SpecifiedEncoder7reserve(ptr noalias noundef align 8 dereferenceable(88), i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCseCDlJsl44RV_5tokio4sync7oneshotNtB2_4Task9drop_task(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvMs9_NtNtCseCDlJsl44RV_5tokio4sync7oneshotNtB5_5State4load(ptr noundef nonnull align 8, i8 noundef range(i8 0, 5)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCseCDlJsl44RV_5tokio4sync7oneshotNtB2_4Task8set_task(ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvMs9_NtNtCseCDlJsl44RV_5tokio4sync7oneshotNtB5_5State12set_complete(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #14

; Function Attrs: cold noinline nonlazybind uwtable
declare void @_RNvNvXNtCs87O7Q65ve1k_7bitcode6lengthNtB4_13LengthEncoderINtNtB6_5coder7EncoderjE6encode11encode_slow(ptr noundef, ptr noalias noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsM_Cs1LivM9IBWqb_12object_storeNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvNvXs2_NtNtCs87O7Q65ve1k_7bitcode5serde3serNtB7_14EncoderWrapperNtNtCs5CfTnloWo2c_10serde_core3ser10Serializer13serialize_seq4cold(ptr noalias noundef align 8 dereferenceable(96), ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #12

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvNvXs2_NtNtCs87O7Q65ve1k_7bitcode5serde3serNtB7_14EncoderWrapperNtNtCs5CfTnloWo2c_10serde_core3ser10Serializer13serialize_u164cold(ptr noalias noundef align 8 dereferenceable(96), ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #12

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvNvXs2_NtNtCs87O7Q65ve1k_7bitcode5serde3serNtB7_14EncoderWrapperNtNtCs5CfTnloWo2c_10serde_core3ser10Serializer13serialize_u324cold(ptr noalias noundef align 8 dereferenceable(96), ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #12

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvNvXs2_NtNtCs87O7Q65ve1k_7bitcode5serde3serNtB7_14EncoderWrapperNtNtCs5CfTnloWo2c_10serde_core3ser10Serializer15serialize_tuple4cold(ptr noalias noundef align 8 dereferenceable(96), i64 noundef) unnamed_addr #12

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs87O7Q65ve1k_7bitcode5serde18panic_type_changed() unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCscdodAO9FK5_5alloc6string6StringNtB6_5Debug3fmtCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtCs1ElB0qm0ygX_13influxdb3_wal15SnapshotDetailsEE9drop_slowB1r_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #15

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEE9drop_slowB1t_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsu_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcher3new(ptr dead_on_unwind noalias noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCs9wFQrvczXsK_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { noreturn }
attributes #19 = { cold noreturn nounwind }
attributes #20 = { cold }
attributes #21 = { nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}

!0 = distinct !{null}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!4 = !{}
!5 = !{i8 0, i8 2}
!6 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!7 = !{i64 -2, i64 -9223372036854775808}
!8 = !{i64 8}
!9 = !{ptr @_RNvXs0_NtNtCseCDlJsl44RV_5tokio4sync7oneshotINtB5_6SenderNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBX_}
!10 = !{i64 -1, i64 -9223372036854775808}
!11 = !{i64 -1, i64 17}
!12 = !{!"branch_weights", i32 4000000, i32 4001}
!13 = !{i8 0, i8 3}
!14 = !{!"branch_weights", i32 1, i32 1, i32 2000, i32 2000}
!15 = distinct !{!15, !"_RNvYNtNtNtCs4NRVxsYgnAr_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCs1ElB0qm0ygX_13influxdb3_wal"}
!16 = distinct !{!16, !15, !"_RNvYNtNtNtCs4NRVxsYgnAr_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCs1ElB0qm0ygX_13influxdb3_wal: argument 1"}
!17 = distinct !{!17, !"_RNvXsw_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back"}
!18 = distinct !{!18, !17, !"_RNvXsw_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back: argument 1"}
!19 = distinct !{!19, !15, !"_RNvYNtNtNtCs4NRVxsYgnAr_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCs1ElB0qm0ygX_13influxdb3_wal: argument 0"}
!20 = distinct !{!20, !17, !"_RNvXsw_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back: argument 0"}
!21 = distinct !{!21, !"_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher9next_backNtB6_14RejectAndMatchECs1ElB0qm0ygX_13influxdb3_wal"}
!22 = distinct !{!22, !21, !"_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher9next_backNtB6_14RejectAndMatchECs1ElB0qm0ygX_13influxdb3_wal: argument 2"}
!23 = distinct !{!23, !21, !"_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher9next_backNtB6_14RejectAndMatchECs1ElB0qm0ygX_13influxdb3_wal: argument 3"}
!24 = distinct !{!24, !21, !"_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher9next_backNtB6_14RejectAndMatchECs1ElB0qm0ygX_13influxdb3_wal: argument 1"}
!25 = distinct !{!25, !21, !"_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher9next_backNtB6_14RejectAndMatchECs1ElB0qm0ygX_13influxdb3_wal: argument 0"}
!26 = distinct !{!26, !"_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!27 = distinct !{!27, !26, !"_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!28 = distinct !{!28, !"_RINvNtNtCs4NRVxsYgnAr_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECs1ElB0qm0ygX_13influxdb3_wal"}
!29 = distinct !{!29, !28, !"_RINvNtNtCs4NRVxsYgnAr_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECs1ElB0qm0ygX_13influxdb3_wal: argument 0"}
!30 = !{!16}
!31 = !{i64 0, i64 2}
!32 = !{!18, !16}
!33 = !{!20, !19}
!34 = !{!19}
!35 = !{!18}
!36 = !{!22}
!37 = !{!23}
!38 = !{!25, !24, !23, !20, !18, !19, !16}
!39 = !{!25, !24, !22, !20, !18, !19, !16}
!40 = !{!27}
!41 = !{!20, !18, !19, !16}
!42 = !{!29, !20, !18, !19, !16}
!43 = !{!25, !24, !22, !23, !20, !18, !19, !16}
!44 = distinct !{!44, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEB1p_"}
!45 = distinct !{!45, !44, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEB1p_: argument 0"}
!46 = distinct !{!46, !"_RNvXs7_NtNtCseCDlJsl44RV_5tokio4sync7oneshotINtB5_5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBW_"}
!47 = distinct !{!47, !46, !"_RNvXs7_NtNtCseCDlJsl44RV_5tokio4sync7oneshotINtB5_5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBW_: argument 0"}
!48 = distinct !{!48, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseCDlJsl44RV_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEEB22_"}
!49 = distinct !{!49, !48, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseCDlJsl44RV_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEEB22_: argument 0"}
!50 = distinct !{!50, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEEB1q_"}
!51 = distinct !{!51, !50, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEEB1q_: argument 0"}
!52 = distinct !{!52, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEB11_"}
!53 = distinct !{!53, !52, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEB11_: argument 0"}
!54 = !{!47, !45}
!55 = !{!53, !51, !49, !45}
!56 = distinct !{!56, !"_RNvXs0_NtNtCseCDlJsl44RV_5tokio4sync7oneshotINtB5_6SenderNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBX_"}
!57 = distinct !{!57, !56, !"_RNvXs0_NtNtCseCDlJsl44RV_5tokio4sync7oneshotINtB5_6SenderNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBX_: argument 0"}
!58 = distinct !{!58, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEEEB2i_"}
!59 = distinct !{!59, !58, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEEEB2i_: argument 0"}
!60 = distinct !{!60, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEEB1W_"}
!61 = distinct !{!61, !60, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEEB1W_: argument 0"}
!62 = distinct !{!62, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1t_"}
!63 = distinct !{!63, !62, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1t_: argument 0"}
!64 = distinct !{!64, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEEEB2i_"}
!65 = distinct !{!65, !64, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEEEB2i_: argument 0"}
!66 = distinct !{!66, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEEB1W_"}
!67 = distinct !{!67, !66, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEEB1W_: argument 0"}
!68 = distinct !{!68, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1t_"}
!69 = distinct !{!69, !68, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1t_: argument 0"}
!70 = !{!57}
!71 = !{!59}
!72 = !{!63, !61, !59}
!73 = !{!65}
!74 = !{!69, !67, !65}
!75 = distinct !{!75, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEEB1q_"}
!76 = distinct !{!76, !75, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEEB1q_: argument 0"}
!77 = distinct !{!77, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEB11_"}
!78 = distinct !{!78, !77, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEB11_: argument 0"}
!79 = !{!78, !76}
!80 = distinct !{!80, !"_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEE3newB1N_"}
!81 = distinct !{!81, !80, !"_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEE3newB1N_: argument 0"}
!82 = !{!81}
!83 = distinct !{!83, !"_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1c_"}
!84 = distinct !{!84, !83, !"_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1c_: argument 0"}
!85 = distinct !{!85, !"_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpE8merge_upNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1c_"}
!86 = distinct !{!86, !85, !"_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpE8merge_upNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1c_: argument 0"}
!87 = !{!84}
!88 = !{!86}
!89 = distinct !{!89, !"_RINvNtCs4NRVxsYgnAr_4core3ptr10swap_chunkKj8_ECs1ElB0qm0ygX_13influxdb3_wal"}
!90 = distinct !{!90, !89, !"_RINvNtCs4NRVxsYgnAr_4core3ptr10swap_chunkKj8_ECs1ElB0qm0ygX_13influxdb3_wal: argument 0"}
!91 = distinct !{!91, !89, !"_RINvNtCs4NRVxsYgnAr_4core3ptr10swap_chunkKj8_ECs1ElB0qm0ygX_13influxdb3_wal: argument 1"}
!92 = distinct !{!92, !"LVerDomain"}
!93 = distinct !{!93, !92}
!94 = distinct !{!94, !92}
!95 = distinct !{!95, !103, !104}
!96 = distinct !{!96, !89, !"_RINvNtCs4NRVxsYgnAr_4core3ptr10swap_chunkKj8_ECs1ElB0qm0ygX_13influxdb3_wal: argument 0:It1"}
!97 = distinct !{!97, !89, !"_RINvNtCs4NRVxsYgnAr_4core3ptr10swap_chunkKj8_ECs1ElB0qm0ygX_13influxdb3_wal: argument 1:It1"}
!98 = distinct !{!98, !103}
!99 = !{!90}
!100 = !{!91}
!101 = !{!90, !93}
!102 = !{!91, !94}
!103 = !{!"llvm.loop.isvectorized", i32 1}
!104 = !{!"llvm.loop.unroll.runtime.disable"}
!105 = !{!96}
!106 = !{!97}
!107 = distinct !{!107, !"_RINvXsK_NtNtCs5CfTnloWo2c_10serde_core3ser5implsmNtB8_9Serialize9serializeNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser14EncoderWrapperECs1ElB0qm0ygX_13influxdb3_wal"}
!108 = distinct !{!108, !107, !"_RINvXsK_NtNtCs5CfTnloWo2c_10serde_core3ser5implsmNtB8_9Serialize9serializeNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser14EncoderWrapperECs1ElB0qm0ygX_13influxdb3_wal: argument 0"}
!109 = distinct !{!109, !"_RNvXs2_NtNtCs87O7Q65ve1k_7bitcode5serde3serNtB5_14EncoderWrapperNtNtCs5CfTnloWo2c_10serde_core3ser10Serializer13serialize_u32"}
!110 = distinct !{!110, !109, !"_RNvXs2_NtNtCs87O7Q65ve1k_7bitcode5serde3serNtB5_14EncoderWrapperNtNtCs5CfTnloWo2c_10serde_core3ser10Serializer13serialize_u32: argument 0"}
!111 = distinct !{!111, !107, !"_RINvXsK_NtNtCs5CfTnloWo2c_10serde_core3ser5implsmNtB8_9Serialize9serializeNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser14EncoderWrapperECs1ElB0qm0ygX_13influxdb3_wal: argument 1"}
!112 = distinct !{!112, !109, !"_RNvXs2_NtNtCs87O7Q65ve1k_7bitcode5serde3serNtB5_14EncoderWrapperNtNtCs5CfTnloWo2c_10serde_core3ser10Serializer13serialize_u32: argument 1"}
!113 = distinct !{!113, !"_RNvXNtCs87O7Q65ve1k_7bitcode3intINtB2_10IntEncodermEINtNtB4_5coder7EncodermE6encodeCs1ElB0qm0ygX_13influxdb3_wal"}
!114 = distinct !{!114, !113, !"_RNvXNtCs87O7Q65ve1k_7bitcode3intINtB2_10IntEncodermEINtNtB4_5coder7EncodermE6encodeCs1ElB0qm0ygX_13influxdb3_wal: argument 0"}
!115 = distinct !{!115, !113, !"_RNvXNtCs87O7Q65ve1k_7bitcode3intINtB2_10IntEncodermEINtNtB4_5coder7EncodermE6encodeCs1ElB0qm0ygX_13influxdb3_wal: argument 1"}
!116 = !{!110, !108}
!117 = !{!112, !111}
!118 = !{!114}
!119 = !{!114, !110, !108}
!120 = !{!115, !112, !111}
!121 = !{!114, !115}
!122 = distinct !{!122, !"_RINvXsJ_NtNtCs5CfTnloWo2c_10serde_core3ser5implstNtB8_9Serialize9serializeNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser14EncoderWrapperECs1ElB0qm0ygX_13influxdb3_wal"}
!123 = distinct !{!123, !122, !"_RINvXsJ_NtNtCs5CfTnloWo2c_10serde_core3ser5implstNtB8_9Serialize9serializeNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser14EncoderWrapperECs1ElB0qm0ygX_13influxdb3_wal: argument 0"}
!124 = distinct !{!124, !"_RNvXs2_NtNtCs87O7Q65ve1k_7bitcode5serde3serNtB5_14EncoderWrapperNtNtCs5CfTnloWo2c_10serde_core3ser10Serializer13serialize_u16"}
!125 = distinct !{!125, !124, !"_RNvXs2_NtNtCs87O7Q65ve1k_7bitcode5serde3serNtB5_14EncoderWrapperNtNtCs5CfTnloWo2c_10serde_core3ser10Serializer13serialize_u16: argument 0"}
!126 = distinct !{!126, !122, !"_RINvXsJ_NtNtCs5CfTnloWo2c_10serde_core3ser5implstNtB8_9Serialize9serializeNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser14EncoderWrapperECs1ElB0qm0ygX_13influxdb3_wal: argument 1"}
!127 = distinct !{!127, !124, !"_RNvXs2_NtNtCs87O7Q65ve1k_7bitcode5serde3serNtB5_14EncoderWrapperNtNtCs5CfTnloWo2c_10serde_core3ser10Serializer13serialize_u16: argument 1"}
!128 = distinct !{!128, !"_RNvXNtCs87O7Q65ve1k_7bitcode3intINtB2_10IntEncodertEINtNtB4_5coder7EncodertE6encodeCs1ElB0qm0ygX_13influxdb3_wal"}
!129 = distinct !{!129, !128, !"_RNvXNtCs87O7Q65ve1k_7bitcode3intINtB2_10IntEncodertEINtNtB4_5coder7EncodertE6encodeCs1ElB0qm0ygX_13influxdb3_wal: argument 0"}
!130 = distinct !{!130, !128, !"_RNvXNtCs87O7Q65ve1k_7bitcode3intINtB2_10IntEncodertEINtNtB4_5coder7EncodertE6encodeCs1ElB0qm0ygX_13influxdb3_wal: argument 1"}
!131 = !{!125, !123}
!132 = !{!127, !126}
!133 = !{!129}
!134 = !{!129, !125, !123}
!135 = !{!130, !127, !126}
!136 = !{!129, !130}
!137 = distinct !{!137, !"_RNvXs2_NtNtCs87O7Q65ve1k_7bitcode5serde3serNtB5_14EncoderWrapperNtNtCs5CfTnloWo2c_10serde_core3ser10Serializer13serialize_seq"}
!138 = distinct !{!138, !137, !"_RNvXs2_NtNtCs87O7Q65ve1k_7bitcode5serde3serNtB5_14EncoderWrapperNtNtCs5CfTnloWo2c_10serde_core3ser10Serializer13serialize_seq: argument 1"}
!139 = distinct !{!139, !137, !"_RNvXs2_NtNtCs87O7Q65ve1k_7bitcode5serde3serNtB5_14EncoderWrapperNtNtCs5CfTnloWo2c_10serde_core3ser10Serializer13serialize_seq: argument 2"}
!140 = distinct !{!140, !137, !"_RNvXs2_NtNtCs87O7Q65ve1k_7bitcode5serde3serNtB5_14EncoderWrapperNtNtCs5CfTnloWo2c_10serde_core3ser10Serializer13serialize_seq: argument 0"}
!141 = distinct !{!141, !"_RNvXNtCs87O7Q65ve1k_7bitcode6lengthNtB2_13LengthEncoderINtNtB4_5coder7EncoderjE6encode"}
!142 = distinct !{!142, !141, !"_RNvXNtCs87O7Q65ve1k_7bitcode6lengthNtB2_13LengthEncoderINtNtB4_5coder7EncoderjE6encode: argument 0"}
!143 = distinct !{!143, !141, !"_RNvXNtCs87O7Q65ve1k_7bitcode6lengthNtB2_13LengthEncoderINtNtB4_5coder7EncoderjE6encode: argument 1"}
!144 = distinct !{!144, !"_RNvMs0_NtNtCs87O7Q65ve1k_7bitcode5serde3serNtB5_11LazyEncoder12reserve_fast"}
!145 = distinct !{!145, !144, !"_RNvMs0_NtNtCs87O7Q65ve1k_7bitcode5serde3serNtB5_11LazyEncoder12reserve_fast: argument 0"}
!146 = distinct !{!146, !"_RINvXs3_NtNtCs87O7Q65ve1k_7bitcode5serde3serNtB6_13SeqSerializerNtNtCs5CfTnloWo2c_10serde_core3ser12SerializeSeq17serialize_elementTRNtCsbFlE7Gjht9i_12influxdb3_id7TableIdRNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksEEB2M_"}
!147 = distinct !{!147, !146, !"_RINvXs3_NtNtCs87O7Q65ve1k_7bitcode5serde3serNtB6_13SeqSerializerNtNtCs5CfTnloWo2c_10serde_core3ser12SerializeSeq17serialize_elementTRNtCsbFlE7Gjht9i_12influxdb3_id7TableIdRNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksEEB2M_: argument 1"}
!148 = distinct !{!148, !146, !"_RINvXs3_NtNtCs87O7Q65ve1k_7bitcode5serde3serNtB6_13SeqSerializerNtNtCs5CfTnloWo2c_10serde_core3ser12SerializeSeq17serialize_elementTRNtCsbFlE7Gjht9i_12influxdb3_id7TableIdRNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksEEB2M_: argument 0"}
!149 = distinct !{!149, !"_RINvXs1s_NtNtCs5CfTnloWo2c_10serde_core3ser5implsTRNtCsbFlE7Gjht9i_12influxdb3_id7TableIdRNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksENtB9_9Serialize9serializeNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser14EncoderWrapperEB1s_"}
!150 = distinct !{!150, !149, !"_RINvXs1s_NtNtCs5CfTnloWo2c_10serde_core3ser5implsTRNtCsbFlE7Gjht9i_12influxdb3_id7TableIdRNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksENtB9_9Serialize9serializeNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser14EncoderWrapperEB1s_: argument 0"}
!151 = distinct !{!151, !"_RNvXs2_NtNtCs87O7Q65ve1k_7bitcode5serde3serNtB5_14EncoderWrapperNtNtCs5CfTnloWo2c_10serde_core3ser10Serializer15serialize_tuple"}
!152 = distinct !{!152, !151, !"_RNvXs2_NtNtCs87O7Q65ve1k_7bitcode5serde3serNtB5_14EncoderWrapperNtNtCs5CfTnloWo2c_10serde_core3ser10Serializer15serialize_tuple: argument 1"}
!153 = distinct !{!153, !149, !"_RINvXs1s_NtNtCs5CfTnloWo2c_10serde_core3ser5implsTRNtCsbFlE7Gjht9i_12influxdb3_id7TableIdRNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksENtB9_9Serialize9serializeNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser14EncoderWrapperEB1s_: argument 1"}
!154 = distinct !{!154, !151, !"_RNvXs2_NtNtCs87O7Q65ve1k_7bitcode5serde3serNtB5_14EncoderWrapperNtNtCs5CfTnloWo2c_10serde_core3ser10Serializer15serialize_tuple: argument 2"}
!155 = distinct !{!155, !151, !"_RNvXs2_NtNtCs87O7Q65ve1k_7bitcode5serde3serNtB5_14EncoderWrapperNtNtCs5CfTnloWo2c_10serde_core3ser10Serializer15serialize_tuple: argument 0"}
!156 = distinct !{!156, !"_RINvXs1J_NtNtCs5CfTnloWo2c_10serde_core3ser5implsRNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtB9_9Serialize9serializeNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser14EncoderWrapperECs1ElB0qm0ygX_13influxdb3_wal"}
!157 = distinct !{!157, !156, !"_RINvXs1J_NtNtCs5CfTnloWo2c_10serde_core3ser5implsRNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtB9_9Serialize9serializeNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser14EncoderWrapperECs1ElB0qm0ygX_13influxdb3_wal: argument 0"}
!158 = distinct !{!158, !156, !"_RINvXs1J_NtNtCs5CfTnloWo2c_10serde_core3ser5implsRNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtB9_9Serialize9serializeNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser14EncoderWrapperECs1ElB0qm0ygX_13influxdb3_wal: argument 1"}
!159 = distinct !{!159, !"_RINvXNvCsbFlE7Gjht9i_12influxdb3_ids4_1__NtB5_7TableIdNtNtCs5CfTnloWo2c_10serde_core3ser9Serialize9serializeNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser14EncoderWrapperECs1ElB0qm0ygX_13influxdb3_wal"}
!160 = distinct !{!160, !159, !"_RINvXNvCsbFlE7Gjht9i_12influxdb3_ids4_1__NtB5_7TableIdNtNtCs5CfTnloWo2c_10serde_core3ser9Serialize9serializeNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser14EncoderWrapperECs1ElB0qm0ygX_13influxdb3_wal: argument 0"}
!161 = distinct !{!161, !"_RINvXsK_NtNtCs5CfTnloWo2c_10serde_core3ser5implsmNtB8_9Serialize9serializeNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser14EncoderWrapperECs1ElB0qm0ygX_13influxdb3_wal"}
!162 = distinct !{!162, !161, !"_RINvXsK_NtNtCs5CfTnloWo2c_10serde_core3ser5implsmNtB8_9Serialize9serializeNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser14EncoderWrapperECs1ElB0qm0ygX_13influxdb3_wal: argument 0"}
!163 = distinct !{!163, !"_RNvXs2_NtNtCs87O7Q65ve1k_7bitcode5serde3serNtB5_14EncoderWrapperNtNtCs5CfTnloWo2c_10serde_core3ser10Serializer13serialize_u32"}
!164 = distinct !{!164, !163, !"_RNvXs2_NtNtCs87O7Q65ve1k_7bitcode5serde3serNtB5_14EncoderWrapperNtNtCs5CfTnloWo2c_10serde_core3ser10Serializer13serialize_u32: argument 0"}
!165 = distinct !{!165, !159, !"_RINvXNvCsbFlE7Gjht9i_12influxdb3_ids4_1__NtB5_7TableIdNtNtCs5CfTnloWo2c_10serde_core3ser9Serialize9serializeNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser14EncoderWrapperECs1ElB0qm0ygX_13influxdb3_wal: argument 1"}
!166 = distinct !{!166, !161, !"_RINvXsK_NtNtCs5CfTnloWo2c_10serde_core3ser5implsmNtB8_9Serialize9serializeNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser14EncoderWrapperECs1ElB0qm0ygX_13influxdb3_wal: argument 1"}
!167 = distinct !{!167, !163, !"_RNvXs2_NtNtCs87O7Q65ve1k_7bitcode5serde3serNtB5_14EncoderWrapperNtNtCs5CfTnloWo2c_10serde_core3ser10Serializer13serialize_u32: argument 1"}
!168 = distinct !{!168, !"_RNvXNtCs87O7Q65ve1k_7bitcode3intINtB2_10IntEncodermEINtNtB4_5coder7EncodermE6encodeCs1ElB0qm0ygX_13influxdb3_wal"}
!169 = distinct !{!169, !168, !"_RNvXNtCs87O7Q65ve1k_7bitcode3intINtB2_10IntEncodermEINtNtB4_5coder7EncodermE6encodeCs1ElB0qm0ygX_13influxdb3_wal: argument 0"}
!170 = distinct !{!170, !168, !"_RNvXNtCs87O7Q65ve1k_7bitcode3intINtB2_10IntEncodermEINtNtB4_5coder7EncodermE6encodeCs1ElB0qm0ygX_13influxdb3_wal: argument 1"}
!171 = !{!138}
!172 = !{!140, !139}
!173 = !{!140}
!174 = !{!142}
!175 = !{!142, !138}
!176 = !{!143, !140, !139}
!177 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!178 = !{!143, !140}
!179 = !{!142, !143, !140}
!180 = !{!145}
!181 = !{!148, !147}
!182 = !{!150}
!183 = !{!152, !150}
!184 = !{!155, !154, !153}
!185 = !{!157}
!186 = !{!157, !158, !150, !153}
!187 = !{!164, !162, !160, !157}
!188 = !{!167, !166, !165, !158, !153}
!189 = !{!169}
!190 = !{!169, !164, !162, !160, !157}
!191 = !{!170, !167, !166, !165, !158}
!192 = !{!169, !170}
!193 = distinct !{!193, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEB11_"}
!194 = distinct !{!194, !193, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEB11_: argument 0"}
!195 = distinct !{!195, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEEB1W_"}
!196 = distinct !{!196, !195, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEEB1W_: argument 0"}
!197 = distinct !{!197, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1t_"}
!198 = distinct !{!198, !197, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1t_: argument 0"}
!199 = distinct !{!199, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEEB1W_"}
!200 = distinct !{!200, !199, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEEB1W_: argument 0"}
!201 = distinct !{!201, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1t_"}
!202 = distinct !{!202, !201, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1t_: argument 0"}
!203 = distinct !{!203, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEEB1W_"}
!204 = distinct !{!204, !203, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEEB1W_: argument 0"}
!205 = distinct !{!205, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1t_"}
!206 = distinct !{!206, !205, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1t_: argument 0"}
!207 = distinct !{!207, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot6SenderNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEB1q_"}
!208 = distinct !{!208, !207, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot6SenderNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEB1q_: argument 0"}
!209 = distinct !{!209, !"_RNvXs0_NtNtCseCDlJsl44RV_5tokio4sync7oneshotINtB5_6SenderNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBX_"}
!210 = distinct !{!210, !209, !"_RNvXs0_NtNtCseCDlJsl44RV_5tokio4sync7oneshotINtB5_6SenderNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBX_: argument 0"}
!211 = distinct !{!211, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEEEB2i_"}
!212 = distinct !{!212, !211, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEEEB2i_: argument 0"}
!213 = distinct !{!213, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEEB1W_"}
!214 = distinct !{!214, !213, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEEB1W_: argument 0"}
!215 = distinct !{!215, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1t_"}
!216 = distinct !{!216, !215, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1t_: argument 0"}
!217 = distinct !{!217, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEEEB2i_"}
!218 = distinct !{!218, !217, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEEEB2i_: argument 0"}
!219 = distinct !{!219, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEEB1W_"}
!220 = distinct !{!220, !219, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEEB1W_: argument 0"}
!221 = distinct !{!221, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1t_"}
!222 = distinct !{!222, !221, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1t_: argument 0"}
!223 = distinct !{!223, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot6SenderNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEB1q_"}
!224 = distinct !{!224, !223, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot6SenderNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEB1q_: argument 0"}
!225 = distinct !{!225, !"_RNvXs0_NtNtCseCDlJsl44RV_5tokio4sync7oneshotINtB5_6SenderNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBX_"}
!226 = distinct !{!226, !225, !"_RNvXs0_NtNtCseCDlJsl44RV_5tokio4sync7oneshotINtB5_6SenderNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBX_: argument 0"}
!227 = distinct !{!227, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEEEB2i_"}
!228 = distinct !{!228, !227, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEEEB2i_: argument 0"}
!229 = distinct !{!229, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEEB1W_"}
!230 = distinct !{!230, !229, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEEB1W_: argument 0"}
!231 = distinct !{!231, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1t_"}
!232 = distinct !{!232, !231, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1t_: argument 0"}
!233 = distinct !{!233, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEEEB2i_"}
!234 = distinct !{!234, !233, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEEEB2i_: argument 0"}
!235 = distinct !{!235, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEEB1W_"}
!236 = distinct !{!236, !235, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEEB1W_: argument 0"}
!237 = distinct !{!237, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1t_"}
!238 = distinct !{!238, !237, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1t_: argument 0"}
!239 = !{!194}
!240 = !{!196}
!241 = !{!198}
!242 = !{!198, !196}
!243 = !{!200}
!244 = !{!202}
!245 = !{!202, !200}
!246 = !{!206, !204}
!247 = !{!208}
!248 = !{!210, !208}
!249 = !{!216, !214, !212, !208}
!250 = !{!222, !220, !218, !208}
!251 = !{!224}
!252 = !{!226, !224}
!253 = !{!232, !230, !228, !224}
!254 = !{!238, !236, !234, !224}
!255 = distinct !{!255, !"_RNvXs8_NtCs1LivM9IBWqb_12object_store4pathNtB5_4PathNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt"}
!256 = distinct !{!256, !255, !"_RNvXs8_NtCs1LivM9IBWqb_12object_store4pathNtB5_4PathNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt: argument 1"}
!257 = distinct !{!257, !255, !"_RNvXs8_NtCs1LivM9IBWqb_12object_store4pathNtB5_4PathNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt: argument 0"}
!258 = !{!257, !256}
!259 = distinct !{!259, !"_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCs1LivM9IBWqb_12object_store4path4PathNtB6_5Debug3fmtCs1ElB0qm0ygX_13influxdb3_wal"}
!260 = distinct !{!260, !259, !"_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCs1LivM9IBWqb_12object_store4path4PathNtB6_5Debug3fmtCs1ElB0qm0ygX_13influxdb3_wal: argument 0"}
!261 = distinct !{!261, !"_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRRNtNtCs1LivM9IBWqb_12object_store4path4PathNtB6_5Debug3fmtCs1ElB0qm0ygX_13influxdb3_wal"}
!262 = distinct !{!262, !261, !"_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRRNtNtCs1LivM9IBWqb_12object_store4path4PathNtB6_5Debug3fmtCs1ElB0qm0ygX_13influxdb3_wal: argument 0"}
!263 = distinct !{!263, !259, !"_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCs1LivM9IBWqb_12object_store4path4PathNtB6_5Debug3fmtCs1ElB0qm0ygX_13influxdb3_wal: argument 1"}
!264 = distinct !{!264, !"_RNvXs8_NtCs1LivM9IBWqb_12object_store4pathNtB5_4PathNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt"}
!265 = distinct !{!265, !264, !"_RNvXs8_NtCs1LivM9IBWqb_12object_store4pathNtB5_4PathNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt: argument 1"}
!266 = distinct !{!266, !264, !"_RNvXs8_NtCs1LivM9IBWqb_12object_store4pathNtB5_4PathNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt: argument 0"}
!267 = !{!260}
!268 = !{!263, !262}
!269 = !{!266, !265, !260, !263, !262}
!270 = distinct !{null}
!271 = distinct !{null}
!272 = distinct !{!272, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEB11_"}
!273 = distinct !{!273, !272, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEB11_: argument 0"}
!274 = !{!273}
!275 = distinct !{!275, !"_RNvMs4_NtNtCseCDlJsl44RV_5tokio4sync7oneshotINtB5_5InnerNtCs1ElB0qm0ygX_13influxdb3_wal15SnapshotDetailsE9poll_recvBU_"}
!276 = distinct !{!276, !275, !"_RNvMs4_NtNtCseCDlJsl44RV_5tokio4sync7oneshotINtB5_5InnerNtCs1ElB0qm0ygX_13influxdb3_wal15SnapshotDetailsE9poll_recvBU_: argument 1"}
!277 = distinct !{!277, !275, !"_RNvMs4_NtNtCseCDlJsl44RV_5tokio4sync7oneshotINtB5_5InnerNtCs1ElB0qm0ygX_13influxdb3_wal15SnapshotDetailsE9poll_recvBU_: argument 0"}
!278 = distinct !{!278, !"_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtNtCseCDlJsl44RV_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetINtNtNtCs4NRVxsYgnAr_4core4task4poll4PollNtNtNtB10_4task4coop16RestoreOnPendingENCNvB2O_12poll_proceed0E0B27_ECs1ElB0qm0ygX_13influxdb3_wal"}
!279 = distinct !{!279, !278, !"_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtNtCseCDlJsl44RV_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetINtNtNtCs4NRVxsYgnAr_4core4task4poll4PollNtNtNtB10_4task4coop16RestoreOnPendingENCNvB2O_12poll_proceed0E0B27_ECs1ElB0qm0ygX_13influxdb3_wal: argument 0"}
!280 = distinct !{!280, !"_RNCINvNtNtCseCDlJsl44RV_5tokio7runtime7context6budgetINtNtNtCs4NRVxsYgnAr_4core4task4poll4PollNtNtNtB8_4task4coop16RestoreOnPendingENCNvB1w_12poll_proceed0E0Cs1ElB0qm0ygX_13influxdb3_wal"}
!281 = distinct !{!281, !280, !"_RNCINvNtNtCseCDlJsl44RV_5tokio7runtime7context6budgetINtNtNtCs4NRVxsYgnAr_4core4task4poll4PollNtNtNtB8_4task4coop16RestoreOnPendingENCNvB1w_12poll_proceed0E0Cs1ElB0qm0ygX_13influxdb3_wal: argument 0"}
!282 = distinct !{!282, !"_RNCNvNtNtCseCDlJsl44RV_5tokio4task4coop12poll_proceed0Cs1ElB0qm0ygX_13influxdb3_wal"}
!283 = distinct !{!283, !282, !"_RNCNvNtNtCseCDlJsl44RV_5tokio4task4coop12poll_proceed0Cs1ElB0qm0ygX_13influxdb3_wal: argument 0"}
!284 = distinct !{!284, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtCs1ElB0qm0ygX_13influxdb3_wal15SnapshotDetailsEEEEB2g_"}
!285 = distinct !{!285, !284, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtCs1ElB0qm0ygX_13influxdb3_wal15SnapshotDetailsEEEEB2g_: argument 0"}
!286 = distinct !{!286, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtCs1ElB0qm0ygX_13influxdb3_wal15SnapshotDetailsEEEB1U_"}
end_hunk_1
