Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_lib-b059757b77138e23.influxdb3_lib.bfc5fb6112bc5ebd-cgu.14?download=true
inline.NumInlined: 7854
inline.NumDeleted: 3329
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_RINvNtCs2AWtUsOyxgP_3std2io17default_write_fmtNtNtNtNtB4_3sys5stdio4unix6StderrECsgsNUVCRJO2f_13influxdb3_lib:bb.a
          cleanup
  %i.e = load ptr, ptr %i.b, align 8, !alias.scope !1237, !noundef !20
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvNtCs2AWtUsOyxgP_3std2io17default_write_fmt7AdapterNtNtNtNtBI_3sys5stdio4unix6StderrEECsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvNtCs2AWtUsOyxgP_3std2io17default_write_fmt7AdapterNtNtNtNtBI_3sys5stdio4unix6StderrEECsgsNUVCRJO2f_13influxdb3_lib.exit unwind label %bb.j

bb.d:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.b, align 8, !noundef !20 ; 2 uses
  %.not = icmp eq ptr %i.g, null                  ; 2 uses
  br i1 %i.c, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  br i1 %.not, label %bb.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit, !prof !24

bb.f:                                             ; preds = %bb.d
  br i1 %.not, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.b)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.g, %bb.f, %bb.e
  %.sroa.0.0 = phi ptr [ %i.g, %bb.e ], [ null, %bb.f ], [ null, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %.sroa.0.0

bb.h:                                             ; preds = %bb.e
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @82, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #44
          to label %bb.i unwind label %bb.b

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvNtCs2AWtUsOyxgP_3std2io17default_write_fmt7AdapterNtNtNtNtBI_3sys5stdio4unix6StderrEECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, ptr } @_RINvNtCs2AWtUsOyxgP_3std2io19default_read_to_endINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEECsgsNUVCRJO2f_13influxdb3_lib(ptr %.0.val, ptr %.8.val, ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef range(i64 0, 2) %1, i64 %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !1251 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !20 ; 7 uses
  %i.d = icmp sgt i64 %i.c, -1
  tail call void @llvm.assume(i1 %i.d)
  %i.e = load i64, ptr %0, align 8, !range !32, !noundef !20 ; 2 uses
  %i.f = trunc nuw i64 %1 to i1                   ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %2, -1025
  br i1 %i.g, label %_RNCINvNtCs2AWtUsOyxgP_3std2io19default_read_to_endINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEE0CsgsNUVCRJO2f_13influxdb3_lib.exit.thread, label %_RNCINvNtCs2AWtUsOyxgP_3std2io19default_read_to_endINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEE0CsgsNUVCRJO2f_13influxdb3_lib.exit, !prof !24

_RNCINvNtCs2AWtUsOyxgP_3std2io19default_read_to_endINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEE0CsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.b
  %i.h = add nuw i64 %2, 1024                     ; 3 uses
  %i.i = and i64 %i.h, 8191                       ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  %i.k = sub i64 %2, %i.i
  %i.l = add i64 %i.k, 9216                       ; 2 uses
  %.not51 = icmp ult i64 %i.l, %i.h
  %.sroa.5.1.i = select i1 %.not51, i64 8192, i64 %i.l
  %.sroa.040.1 = select i1 %i.j, i64 %i.h, i64 %.sroa.5.1.i ; 2 uses
  %i.m = icmp eq i64 %2, 0
  br i1 %i.m, label %bb.c, label %_RNCINvNtCs2AWtUsOyxgP_3std2io19default_read_to_endINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEE0CsgsNUVCRJO2f_13influxdb3_lib.exit.thread

bb.c:                                             ; preds = %bb.a, %_RNCINvNtCs2AWtUsOyxgP_3std2io19default_read_to_endINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEE0CsgsNUVCRJO2f_13influxdb3_lib.exit
  %.sroa.040.0 = phi i64 [ %.sroa.040.1, %_RNCINvNtCs2AWtUsOyxgP_3std2io19default_read_to_endINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEE0CsgsNUVCRJO2f_13influxdb3_lib.exit ], [ 8192, %bb.a ] ; 2 uses
  %i.n = sub nsw i64 %i.e, %i.c
  %i.o = icmp ult i64 %i.n, 32
  br i1 %i.o, label %bb.d, label %_RNCINvNtCs2AWtUsOyxgP_3std2io19default_read_to_endINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEE0CsgsNUVCRJO2f_13influxdb3_lib.exit.thread

_RNCINvNtCs2AWtUsOyxgP_3std2io19default_read_to_endINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEE0CsgsNUVCRJO2f_13influxdb3_lib.exit.thread: ; preds = %._RNCINvNtCs2AWtUsOyxgP_3std2io19default_read_to_endINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEE0CsgsNUVCRJO2f_13influxdb3_lib.exit.thread_crit_edge, %bb.b, %bb.c, %_RNCINvNtCs2AWtUsOyxgP_3std2io19default_read_to_endINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEE0CsgsNUVCRJO2f_13influxdb3_lib.exit
  %.pre = phi i64 [ %.pre.pre, %._RNCINvNtCs2AWtUsOyxgP_3std2io19default_read_to_endINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEE0CsgsNUVCRJO2f_13influxdb3_lib.exit.thread_crit_edge ], [ %i.c, %bb.c ], [ %i.c, %_RNCINvNtCs2AWtUsOyxgP_3std2io19default_read_to_endINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEE0CsgsNUVCRJO2f_13influxdb3_lib.exit ], [ %i.c, %bb.b ]
  %.sroa.040.2 = phi i64 [ %.sroa.040.0, %._RNCINvNtCs2AWtUsOyxgP_3std2io19default_read_to_endINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEE0CsgsNUVCRJO2f_13influxdb3_lib.exit.thread_crit_edge ], [ %.sroa.040.0, %bb.c ], [ %.sroa.040.1, %_RNCINvNtCs2AWtUsOyxgP_3std2io19default_read_to_endINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEE0CsgsNUVCRJO2f_13influxdb3_lib.exit ], [ 8192, %bb.b ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  br label %.outer

bb.d:                                             ; preds = %bb.c
  %i.t = tail call fastcc { i64, ptr } @_RINvNvNtCs2AWtUsOyxgP_3std2io19default_read_to_end16small_probe_readINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEECsgsNUVCRJO2f_13influxdb3_lib(ptr %.0.val, ptr %.8.val, ptr noalias noundef align 8 dereferenceable(24) %0) ; 2 uses
  %i.u = extractvalue { i64, ptr } %i.t, 0
  %i.v = extractvalue { i64, ptr } %i.t, 1        ; 2 uses
  %i.w = trunc nuw i64 %i.u to i1
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = ptrtoint ptr %i.v to i64
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.y = icmp eq ptr %i.v, null
  br i1 %i.y, label %.loopexit, label %._RNCINvNtCs2AWtUsOyxgP_3std2io19default_read_to_endINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEE0CsgsNUVCRJO2f_13influxdb3_lib.exit.thread_crit_edge

._RNCINvNtCs2AWtUsOyxgP_3std2io19default_read_to_endINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEE0CsgsNUVCRJO2f_13influxdb3_lib.exit.thread_crit_edge: ; preds = %bb.f
  %.pre.pre = load i64, ptr %i.b, align 8
  br label %_RNCINvNtCs2AWtUsOyxgP_3std2io19default_read_to_endINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEE0CsgsNUVCRJO2f_13influxdb3_lib.exit.thread

bb.g:                                             ; preds = %.backedge, %.outer
  %i.z = phi i64 [ %.ph, %.outer ], [ %i.dk, %.backedge ] ; 3 uses
  %i.aa = icmp sgt i64 %i.z, -1
  call void @llvm.assume(i1 %i.aa)
  %i.ab = load i64, ptr %0, align 8, !range !32, !noundef !20 ; 3 uses
  %i.ac = icmp eq i64 %i.z, %i.ab
  %i.ad = icmp eq i64 %i.ab, %i.e
  %or.cond52 = and i1 %i.ac, %i.ad
  br i1 %or.cond52, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g
  %i.ae = phi i64 [ %.pre96, %._crit_edge ], [ %i.ab, %bb.g ] ; 3 uses
  %i.af = phi i64 [ %.pre95, %._crit_edge ], [ %i.z, %bb.g ] ; 3 uses
  %i.ag = icmp sgt i64 %i.af, -1
  call void @llvm.assume(i1 %i.ag)
  %i.ah = icmp eq i64 %i.af, %i.ae
  br i1 %i.ah, label %bb.m, label %_RNvMs3_NtNtCs4NRVxsYgnAr_4core2io12borrowed_bufNtB5_14BorrowedCursor11ensure_init.exit.i.i.peel

bb.i:                                             ; preds = %bb.g
  %i.ai = call fastcc { i64, ptr } @_RINvNvNtCs2AWtUsOyxgP_3std2io19default_read_to_end16small_probe_readINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEECsgsNUVCRJO2f_13influxdb3_lib(ptr %.0.val, ptr %.8.val, ptr noalias noundef align 8 dereferenceable(24) %0) ; 2 uses
  %i.aj = extractvalue { i64, ptr } %i.ai, 0
  %i.ak = extractvalue { i64, ptr } %i.ai, 1      ; 2 uses
  %i.al = trunc nuw i64 %i.aj to i1
  br i1 %i.al, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.am = ptrtoint ptr %i.ak to i64
  br label %.loopexit

bb.k:                                             ; preds = %bb.i
  %i.an = icmp eq ptr %i.ak, null
  %.pre95 = load i64, ptr %i.b, align 8           ; 3 uses
  br i1 %i.an, label %bb.l, label %._crit_edge

._crit_edge:                                      ; preds = %bb.k
  %.pre96 = load i64, ptr %0, align 8, !range !32
  br label %bb.h

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp sgt i64 %.pre95, -1
  call void @llvm.assume(i1 %i.ao)
  %i.ap = sub nsw i64 %.pre95, %i.c
  br label %.loopexit

bb.m:                                             ; preds = %bb.h
  %i.aq = call { i64, i64 } @_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.ae, i64 noundef 32, i64 noundef 1, i64 noundef 1)
  %i.ar = extractvalue { i64, i64 } %i.aq, 0
  %.not = icmp eq i64 %i.ar, -1
  br i1 %.not, label %..peel.begin_crit_edge, label %.loopexit

..peel.begin_crit_edge:                           ; preds = %bb.m
  %.pre97 = load i64, ptr %i.b, align 8
  %.pre98 = load i64, ptr %0, align 8, !range !32
  br label %_RNvMs3_NtNtCs4NRVxsYgnAr_4core2io12borrowed_bufNtB5_14BorrowedCursor11ensure_init.exit.i.i.peel

_RNvMs3_NtNtCs4NRVxsYgnAr_4core2io12borrowed_bufNtB5_14BorrowedCursor11ensure_init.exit.i.i.peel: ; preds = %..peel.begin_crit_edge, %bb.h
  %i.as = phi i64 [ %.pre98, %..peel.begin_crit_edge ], [ %i.ae, %bb.h ]
  %i.at = phi i64 [ %.pre97, %..peel.begin_crit_edge ], [ %i.af, %bb.h ] ; 2 uses
  %i.au = load ptr, ptr %i.p, align 8, !nonnull !20, !noundef !20
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.at ; 3 uses
  %i.aw = sub i64 %i.as, %i.at                    ; 2 uses
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.040.3.ph, i64 %i.aw) ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val), "nonnull"(ptr %.0.val) ]
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.av, i8 0, i64 %.sroa.0.0.i, i1 false), !noalias !1252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1253
  store ptr %i.av, ptr %i.a, align 8, !noalias !1253
  store i64 %.sroa.0.0.i, ptr %i.q, align 8, !noalias !1253
  store i64 0, ptr %i.r, align 8, !noalias !1253
  store i64 %.sroa.0.0.i, ptr %i.s, align 8, !noalias !1253
  %i.ax = call { i64, ptr } @_RNvXs0_NtNtNtCseCDlJsl44RV_5tokio3net3tcp6streamNtB5_9TcpStreamNtNtNtBb_2io10async_read9AsyncRead9poll_read(ptr noalias noundef nonnull align 8 dereferenceable(32) %.0.val, ptr noalias noundef nonnull align 8 dereferenceable(32) %.8.val, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a), !noalias !1254 ; 2 uses
  %i.ay = extractvalue { i64, ptr } %i.ax, 0
  %i.az = trunc nuw i64 %i.ay to i1
  br i1 %i.az, label %_RNvYINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtNtCs2AWtUsOyxgP_3std2io4Read8read_bufCsgsNUVCRJO2f_13influxdb3_lib.exit.peel, label %bb.n

bb.n:                                             ; preds = %_RNvMs3_NtNtCs4NRVxsYgnAr_4core2io12borrowed_bufNtB5_14BorrowedCursor11ensure_init.exit.i.i.peel
  %i.ba = extractvalue { i64, ptr } %i.ax, 1      ; 2 uses
  %.not.i.i.i.i.peel = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i.peel, label %.loopexit86, label %_RNvYINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtNtCs2AWtUsOyxgP_3std2io4Read8read_bufCsgsNUVCRJO2f_13influxdb3_lib.exit.peel

_RNvYINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtNtCs2AWtUsOyxgP_3std2io4Read8read_bufCsgsNUVCRJO2f_13influxdb3_lib.exit.peel: ; preds = %_RNvMs3_NtNtCs4NRVxsYgnAr_4core2io12borrowed_bufNtB5_14BorrowedCursor11ensure_init.exit.i.i.peel, %bb.n
  %i.bb = phi ptr [ %i.ba, %bb.n ], [ inttoptr (i64 55834574851 to ptr), %_RNvMs3_NtNtCs4NRVxsYgnAr_4core2io12borrowed_bufNtB5_14BorrowedCursor11ensure_init.exit.i.i.peel ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1253
  %i.bc = ptrtoint ptr %i.bb to i64               ; 8 uses
  %i.bd = and i64 %i.bc, 3
  switch i64 %i.bd, label %_RNvYINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtNtCs2AWtUsOyxgP_3std2io4Read8read_bufCsgsNUVCRJO2f_13influxdb3_lib.exit.peel.unreachabledefault [
    i64 2, label %.split.peel
    i64 3, label %bb.s
    i64 0, label %.split44.peel
    i64 1, label %.split43.peel
  ], !prof !45

.split43.peel:                                    ; preds = %_RNvYINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtNtCs2AWtUsOyxgP_3std2io4Read8read_bufCsgsNUVCRJO2f_13influxdb3_lib.exit.peel
  %i.be = getelementptr i8, ptr %i.bb, i64 -1     ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.be) ]
  %i.bf = getelementptr i8, ptr %i.bb, i64 15
  %i.bg = load i8, ptr %i.bf, align 8, !range !46, !noundef !20
  %i.bh = icmp eq i8 %i.bg, 35
  br i1 %i.bh, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %.split43.peel
  %.val.i.i.i.i.i.peel = load ptr, ptr %i.be, align 8, !noalias !1255 ; 5 uses
  %i.bi = getelementptr i8, ptr %i.bb, i64 7
  %.val1.i.i.i.i.i.peel = load ptr, ptr %i.bi, align 8, !noalias !1255, !nonnull !20, !align !30, !noundef !20 ; 4 uses
  %i.bj = load ptr, ptr %.val1.i.i.i.i.i.peel, align 8, !invariant.load !20, !noalias !1255 ; 2 uses
  %.not.i.i.i.i.i.i.i.peel = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i.i.i.i.peel, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.peel) ]
  invoke void %i.bj(ptr noundef nonnull %.val.i.i.i.i.i.peel)
          to label %bb.q unwind label %.loopexit.split-lp, !noalias !1255

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bk = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.peel, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !range !32, !invariant.load !20, !noalias !1255 ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i.peel, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bn = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.peel, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !range !44, !invariant.load !20, !noalias !1255
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.peel) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.peel, i64 noundef range(i64 1, 0) %i.bl, i64 noundef range(i64 1, 536870913) %i.bo) #47, !noalias !1255
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i.peel

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i.peel: ; preds = %bb.r, %bb.q
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.be, i64 noundef 24, i64 noundef 8) #47, !noalias !1255
  br label %_RNvMs3_NtNtCs4NRVxsYgnAr_4core2io12borrowed_bufNtB5_14BorrowedCursor11ensure_init.exit.i.i.preheader

.split44.peel:                                    ; preds = %_RNvYINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtNtCs2AWtUsOyxgP_3std2io4Read8read_bufCsgsNUVCRJO2f_13influxdb3_lib.exit.peel
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bq = load i8, ptr %i.bp, align 8, !range !46, !noundef !20
  %i.br = icmp eq i8 %i.bq, 35
  br i1 %i.br, label %_RNvMs3_NtNtCs4NRVxsYgnAr_4core2io12borrowed_bufNtB5_14BorrowedCursor11ensure_init.exit.i.i.preheader, label %.loopexit

bb.s:                                             ; preds = %_RNvYINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtNtCs2AWtUsOyxgP_3std2io4Read8read_bufCsgsNUVCRJO2f_13influxdb3_lib.exit.peel
  %i.bs = lshr i64 %i.bc, 32
  %i.bt = icmp ult ptr %i.bb, inttoptr (i64 180388626432 to ptr) ; 2 uses
  %switch.idx.cast.i.i.peel = trunc i64 %i.bs to i8
  %spec.select.i.i.peel = select i1 %i.bt, i8 %switch.idx.cast.i.i.peel, i8 -1 ; 2 uses
  %i.bu = icmp ne i8 %spec.select.i.i.peel, -1
  call void @llvm.assume(i1 %i.bu)
  %i.bv = icmp eq i8 %spec.select.i.i.peel, 35
  br i1 %i.bv, label %bb.t, label %.loopexit

bb.t:                                             ; preds = %bb.s
  %i.bw = and i64 %i.bc, 1095216660480
  %i.bx = icmp ne i64 %i.bw, 1095216660480
  call void @llvm.assume(i1 %i.bt)
  call void @llvm.assume(i1 %i.bx)
  br label %_RNvMs3_NtNtCs4NRVxsYgnAr_4core2io12borrowed_bufNtB5_14BorrowedCursor11ensure_init.exit.i.i.preheader

.split.peel:                                      ; preds = %_RNvYINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtNtCs2AWtUsOyxgP_3std2io4Read8read_bufCsgsNUVCRJO2f_13influxdb3_lib.exit.peel
  %.mask.peel = and i64 %i.bc, -4294967296
  %i.by = icmp eq i64 %.mask.peel, 17179869184
  br i1 %i.by, label %_RNvMs3_NtNtCs4NRVxsYgnAr_4core2io12borrowed_bufNtB5_14BorrowedCursor11ensure_init.exit.i.i.preheader, label %.loopexit

_RNvMs3_NtNtCs4NRVxsYgnAr_4core2io12borrowed_bufNtB5_14BorrowedCursor11ensure_init.exit.i.i.preheader: ; preds = %.split.peel, %bb.t, %.split44.peel, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i.peel
  br label %_RNvMs3_NtNtCs4NRVxsYgnAr_4core2io12borrowed_bufNtB5_14BorrowedCursor11ensure_init.exit.i.i

_RNvMs3_NtNtCs4NRVxsYgnAr_4core2io12borrowed_bufNtB5_14BorrowedCursor11ensure_init.exit.i.i: ; preds = %_RNvMs3_NtNtCs4NRVxsYgnAr_4core2io12borrowed_bufNtB5_14BorrowedCursor11ensure_init.exit.i.i.backedge, %_RNvMs3_NtNtCs4NRVxsYgnAr_4core2io12borrowed_bufNtB5_14BorrowedCursor11ensure_init.exit.i.i.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1253
  store ptr %i.av, ptr %i.a, align 8, !noalias !1253
  store i64 %.sroa.0.0.i, ptr %i.q, align 8, !noalias !1253
  store i64 0, ptr %i.r, align 8, !noalias !1253
  store i64 %.sroa.0.0.i, ptr %i.s, align 8, !noalias !1253
  %i.bz = call { i64, ptr } @_RNvXs0_NtNtNtCseCDlJsl44RV_5tokio3net3tcp6streamNtB5_9TcpStreamNtNtNtBb_2io10async_read9AsyncRead9poll_read(ptr noalias noundef nonnull align 8 dereferenceable(32) %.0.val, ptr noalias noundef nonnull align 8 dereferenceable(32) %.8.val, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a), !noalias !1254 ; 2 uses
  %i.ca = extractvalue { i64, ptr } %i.bz, 0
  %i.cb = trunc nuw i64 %i.ca to i1
  br i1 %i.cb, label %_RNvYINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtNtCs2AWtUsOyxgP_3std2io4Read8read_bufCsgsNUVCRJO2f_13influxdb3_lib.exit.thread18, label %bb.u

bb.u:                                             ; preds = %_RNvMs3_NtNtCs4NRVxsYgnAr_4core2io12borrowed_bufNtB5_14BorrowedCursor11ensure_init.exit.i.i
  %i.cc = extractvalue { i64, ptr } %i.bz, 1      ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i, label %.loopexit86, label %_RNvYINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtNtCs2AWtUsOyxgP_3std2io4Read8read_bufCsgsNUVCRJO2f_13influxdb3_lib.exit.thread18

.loopexit86:                                      ; preds = %bb.u, %bb.n
  %i.cd = load i64, ptr %i.q, align 8, !noalias !1253, !noundef !20 ; 2 uses
  %i.ce = load i64, ptr %i.r, align 8, !noalias !1253, !noundef !20 ; 6 uses
  %.not7.i.i.i.i = icmp ugt i64 %i.ce, %i.cd
  br i1 %.not7.i.i.i.i, label %bb.v, label %bb.w, !prof !47

bb.v:                                             ; preds = %.loopexit86
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ce, i64 noundef %i.cd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @453) #44, !noalias !1254
  unreachable

bb.w:                                             ; preds = %.loopexit86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1253
  %.not.i.i = icmp ult i64 %.sroa.0.0.i, %i.ce
  br i1 %.not.i.i, label %bb.x, label %bb.ag, !prof !24

bb.x:                                             ; preds = %bb.w
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @78, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #44, !noalias !1252
  unreachable

_RNvYINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtNtCs2AWtUsOyxgP_3std2io4Read8read_bufCsgsNUVCRJO2f_13influxdb3_lib.exit.thread18: ; preds = %bb.u, %_RNvMs3_NtNtCs4NRVxsYgnAr_4core2io12borrowed_bufNtB5_14BorrowedCursor11ensure_init.exit.i.i
  %i.cf = phi ptr [ inttoptr (i64 55834574851 to ptr), %_RNvMs3_NtNtCs4NRVxsYgnAr_4core2io12borrowed_bufNtB5_14BorrowedCursor11ensure_init.exit.i.i ], [ %i.cc, %bb.u ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1253
  %i.cg = ptrtoint ptr %i.cf to i64               ; 8 uses
  %i.ch = and i64 %i.cg, 3
  switch i64 %i.ch, label %_RNvYINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtNtCs2AWtUsOyxgP_3std2io4Read8read_bufCsgsNUVCRJO2f_13influxdb3_lib.exit.thread18.unreachabledefault [
    i64 2, label %.split
    i64 3, label %bb.y
    i64 0, label %.split44
    i64 1, label %.split43
  ], !prof !45

_RNvYINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtNtCs2AWtUsOyxgP_3std2io4Read8read_bufCsgsNUVCRJO2f_13influxdb3_lib.exit.thread18.unreachabledefault: ; preds = %_RNvYINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtNtCs2AWtUsOyxgP_3std2io4Read8read_bufCsgsNUVCRJO2f_13influxdb3_lib.exit.thread18
  unreachable

_RNvYINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtNtCs2AWtUsOyxgP_3std2io4Read8read_bufCsgsNUVCRJO2f_13influxdb3_lib.exit.peel.unreachabledefault: ; preds = %_RNvYINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtNtCs2AWtUsOyxgP_3std2io4Read8read_bufCsgsNUVCRJO2f_13influxdb3_lib.exit.peel
  unreachable

.split:                                           ; preds = %_RNvYINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtNtCs2AWtUsOyxgP_3std2io4Read8read_bufCsgsNUVCRJO2f_13influxdb3_lib.exit.thread18
  %.mask = and i64 %i.cg, -4294967296
  %i.ci = icmp eq i64 %.mask, 17179869184
  br i1 %i.ci, label %_RNvMs3_NtNtCs4NRVxsYgnAr_4core2io12borrowed_bufNtB5_14BorrowedCursor11ensure_init.exit.i.i.backedge, label %.loopexit

_RNvMs3_NtNtCs4NRVxsYgnAr_4core2io12borrowed_bufNtB5_14BorrowedCursor11ensure_init.exit.i.i.backedge: ; preds = %.split, %.split44, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i, %bb.z
  br label %_RNvMs3_NtNtCs4NRVxsYgnAr_4core2io12borrowed_bufNtB5_14BorrowedCursor11ensure_init.exit.i.i, !llvm.loop !1250

.split44:                                         ; preds = %_RNvYINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtNtCs2AWtUsOyxgP_3std2io4Read8read_bufCsgsNUVCRJO2f_13influxdb3_lib.exit.thread18
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ck = load i8, ptr %i.cj, align 8, !range !46, !noundef !20
  %i.cl = icmp eq i8 %i.ck, 35
  br i1 %i.cl, label %_RNvMs3_NtNtCs4NRVxsYgnAr_4core2io12borrowed_bufNtB5_14BorrowedCursor11ensure_init.exit.i.i.backedge, label %.loopexit

.split43:                                         ; preds = %_RNvYINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtNtCs2AWtUsOyxgP_3std2io4Read8read_bufCsgsNUVCRJO2f_13influxdb3_lib.exit.thread18
  %i.cm = getelementptr i8, ptr %i.cf, i64 -1     ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cm) ]
  %i.cn = getelementptr i8, ptr %i.cf, i64 15
  %i.co = load i8, ptr %i.cn, align 8, !range !46, !noundef !20
  %i.cp = icmp eq i8 %i.co, 35
  br i1 %i.cp, label %bb.aa, label %.loopexit

bb.y:                                             ; preds = %_RNvYINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtNtCs2AWtUsOyxgP_3std2io4Read8read_bufCsgsNUVCRJO2f_13influxdb3_lib.exit.thread18
  %i.cq = lshr i64 %i.cg, 32
  %i.cr = icmp ult ptr %i.cf, inttoptr (i64 180388626432 to ptr) ; 2 uses
  %switch.idx.cast.i.i = trunc i64 %i.cq to i8
  %spec.select.i.i = select i1 %i.cr, i8 %switch.idx.cast.i.i, i8 -1 ; 2 uses
  %i.cs = icmp ne i8 %spec.select.i.i, -1
  call void @llvm.assume(i1 %i.cs)
  %i.ct = icmp eq i8 %spec.select.i.i, 35
  br i1 %i.ct, label %bb.z, label %.loopexit

bb.z:                                             ; preds = %bb.y
  %i.cu = and i64 %i.cg, 1095216660480
  %i.cv = icmp ne i64 %i.cu, 1095216660480
  call void @llvm.assume(i1 %i.cr)
  call void @llvm.assume(i1 %i.cv)
  br label %_RNvMs3_NtNtCs4NRVxsYgnAr_4core2io12borrowed_bufNtB5_14BorrowedCursor11ensure_init.exit.i.i.backedge

bb.aa:                                            ; preds = %.split43
  %.val.i.i.i.i.i = load ptr, ptr %i.cm, align 8, !noalias !1255 ; 5 uses
  %i.cw = getelementptr i8, ptr %i.cf, i64 7
  %.val1.i.i.i.i.i = load ptr, ptr %i.cw, align 8, !noalias !1255, !nonnull !20, !align !30, !noundef !20 ; 4 uses
  %i.cx = load ptr, ptr %.val1.i.i.i.i.i, align 8, !invariant.load !20, !noalias !1255 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  invoke void %i.cx(ptr noundef nonnull %.val.i.i.i.i.i)
          to label %bb.ac unwind label %.loopexit88, !noalias !1255

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.cy = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !range !32, !invariant.load !20, !noalias !1255 ; 2 uses
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.db = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !range !44, !invariant.load !20, !noalias !1255
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.cz, i64 noundef range(i64 1, 536870913) %i.dc) #47, !noalias !1255
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i

.loopexit88:                                      ; preds = %bb.ab
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

.loopexit.split-lp:                               ; preds = %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ae:                                            ; preds = %.loopexit.split-lp, %.loopexit88
  %.lcssa = phi ptr [ %i.cm, %.loopexit88 ], [ %i.be, %.loopexit.split-lp ]
  %.val.i.i.i.i.i.lcssa = phi ptr [ %.val.i.i.i.i.i, %.loopexit88 ], [ %.val.i.i.i.i.i.peel, %.loopexit.split-lp ]
  %.val1.i.i.i.i.i.lcssa = phi ptr [ %.val1.i.i.i.i.i, %.loopexit88 ], [ %.val1.i.i.i.i.i.peel, %.loopexit.split-lp ] ; 2 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit88 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.lcssa, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !range !32, !invariant.load !20, !noalias !1255 ; 2 uses
  %i.df = icmp eq i64 %i.de, 0
  br i1 %i.df, label %.body, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dg = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.lcssa, i64 16
end_hunk_0
begin_hunk_1_@_RNvYINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtNtCs2AWtUsOyxgP_3std2io4Read10read_exactCsgsNUVCRJO2f_13influxdb3_lib:bb.a
  %.mask.i = and i64 %i.o, -4294967296
  %i.u = icmp eq i64 %.mask.i, 17179869184
  br i1 %i.u, label %.thread8.i, label %.loopexit.sink.split.i

.split35.i:                                       ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.w = load i8, ptr %i.v, align 8, !range !46, !noundef !20
  %i.x = icmp eq i8 %i.w, 35
  br i1 %i.x, label %.thread8.i, label %.loopexit.sink.split.i

.split33.i:                                       ; preds = %bb.f
  %i.y = getelementptr i8, ptr %i.k, i64 15
  %i.z = load i8, ptr %i.y, align 8, !range !46, !noundef !20
  %i.aa = icmp eq i8 %i.z, 35
  br i1 %i.aa, label %.thread8.i, label %.loopexit.sink.split.i

bb.k:                                             ; preds = %bb.f, %.thread.i
  %i.ab = phi ptr [ inttoptr (i64 55834574851 to ptr), %.thread.i ], [ %i.k, %bb.f ] ; 2 uses
  %.sroa.4.1.i.ph7.i = phi i64 [ 55834574851, %.thread.i ], [ %i.o, %bb.f ]
  %i.ac = lshr i64 %.sroa.4.1.i.ph7.i, 32
  %i.ad = icmp ult ptr %i.ab, inttoptr (i64 180388626432 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.ac to i8
  %spec.select.i.i.i = select i1 %i.ad, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.ae = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.ae)
  %i.af = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.af, label %.thread8.i, label %.loopexit.sink.split.i

.thread8.i:                                       ; preds = %bb.k, %.split33.i, %.split35.i, %.split.i
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %bb.l

bb.l:                                             ; preds = %.thread8.i, %bb.j
  %.sroa.0.113.i = phi ptr [ %.sroa.0.049.i, %.thread8.i ], [ %i.t, %bb.j ]
  %.sroa.7.111.i = phi i64 [ %.sroa.7.047.i, %.thread8.i ], [ %i.s, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20052
  %i.ag = icmp eq i64 %.sroa.7.111.i, 0
  br i1 %i.ag, label %_RINvNtCs2AWtUsOyxgP_3std2io18default_read_exactINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEECsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.b

_RINvNtCs2AWtUsOyxgP_3std2io18default_read_exactINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.l, %bb.a, %.loopexit.sink.split.i
  %.sroa.09.0.i = phi ptr [ null, %bb.a ], [ %.sroa.09.0.ph.i, %.loopexit.sink.split.i ], [ null, %bb.l ]
  ret ptr %.sroa.09.0.i
}

; Function Attrs: nonlazybind uwtable
define internal { i64, ptr } @_RNvYINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtNtCs2AWtUsOyxgP_3std2io4Read11read_to_endCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !20055 {
bb.a:
  %.val = load ptr, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8
  %i.b = tail call fastcc { i64, ptr } @_RINvNtCs2AWtUsOyxgP_3std2io19default_read_to_endINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEECsgsNUVCRJO2f_13influxdb3_lib(ptr %.val, ptr %.val1, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef 0, i64 undef)
  ret { i64, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal { i64, ptr } @_RNvYINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtNtCs2AWtUsOyxgP_3std2io4Read13read_vectoredCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 576460752303423488) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !20067 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8            ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20068)
  %.idx = shl nuw nsw i64 %2, 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.d = icmp eq i64 %2, 0
  br i1 %i.d, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionQNtNtCs2AWtUsOyxgP_3std2io10IoSliceMutE6map_orQShNCINvBL_21default_read_vectoredNCNvYINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtBL_4Read13read_vectored0Es_0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionQNtNtCs2AWtUsOyxgP_3std2io10IoSliceMutE6map_orQShNCINvBL_21default_read_vectoredNCNvYINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtBL_4Read13read_vectored0Es_0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.e, %bb.b ], [ %1, %bb.a ]   ; 3 uses
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !20068, !noalias !20069, !noundef !20 ; 2 uses
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %.val.i.i = load ptr, ptr %i.g, align 8, !alias.scope !20070, !noundef !20
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionQNtNtCs2AWtUsOyxgP_3std2io10IoSliceMutE6map_orQShNCINvBL_21default_read_vectoredNCNvYINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtBL_4Read13read_vectored0Es_0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionQNtNtCs2AWtUsOyxgP_3std2io10IoSliceMutE6map_orQShNCINvBL_21default_read_vectoredNCNvYINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtBL_4Read13read_vectored0Es_0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.3.0.i.i = phi i64 [ %i.i, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ] ; 2 uses
  %.sroa.02.0.i.i = phi ptr [ %.val.i.i, %bb.c ], [ inttoptr (i64 1 to ptr), %bb.a ], [ inttoptr (i64 1 to ptr), %bb.b ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.02.0.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20071
  store ptr %.sroa.02.0.i.i, ptr %i.a, align 8, !noalias !20071
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 %.sroa.3.0.i.i, ptr %i.j, align 8, !noalias !20071
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.k, align 8, !noalias !20071
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.3.0.i.i, ptr %i.l, align 8, !noalias !20071
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1), "nonnull"(ptr %.val) ]
  %i.m = call { i64, ptr } @_RNvXs0_NtNtNtCseCDlJsl44RV_5tokio3net3tcp6streamNtB5_9TcpStreamNtNtNtBb_2io10async_read9AsyncRead9poll_read(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val, ptr noalias noundef nonnull align 8 dereferenceable(32) %.val1, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a), !noalias !20072 ; 2 uses
  %i.n = extractvalue { i64, ptr } %i.m, 0
  %i.o = extractvalue { i64, ptr } %i.m, 1        ; 2 uses
  %i.p = trunc nuw i64 %i.n to i1
  br i1 %i.p, label %_RINvNtCs2AWtUsOyxgP_3std2io21default_read_vectoredNCNvYINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtB2_4Read13read_vectored0ECsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.d

bb.d:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionQNtNtCs2AWtUsOyxgP_3std2io10IoSliceMutE6map_orQShNCINvBL_21default_read_vectoredNCNvYINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtBL_4Read13read_vectored0Es_0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = ptrtoint ptr %i.o to i64
  br label %_RINvNtCs2AWtUsOyxgP_3std2io21default_read_vectoredNCNvYINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtB2_4Read13read_vectored0ECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.f:                                             ; preds = %bb.d
  %i.r = load i64, ptr %i.j, align 8, !noalias !20071, !noundef !20 ; 2 uses
  %i.s = load i64, ptr %i.k, align 8, !noalias !20071, !noundef !20 ; 3 uses
  %.not7.i.i.i = icmp ugt i64 %i.s, %i.r
  br i1 %.not7.i.i.i, label %bb.g, label %_RINvNtCs2AWtUsOyxgP_3std2io21default_read_vectoredNCNvYINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtB2_4Read13read_vectored0ECsgsNUVCRJO2f_13influxdb3_lib.exit, !prof !47

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.s, i64 noundef %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @453) #44, !noalias !20072
  unreachable

_RINvNtCs2AWtUsOyxgP_3std2io21default_read_vectoredNCNvYINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtB2_4Read13read_vectored0ECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionQNtNtCs2AWtUsOyxgP_3std2io10IoSliceMutE6map_orQShNCINvBL_21default_read_vectoredNCNvYINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtBL_4Read13read_vectored0Es_0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i, %bb.e, %bb.f
  %.sroa.4.1.i.i.i = phi i64 [ 55834574851, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionQNtNtCs2AWtUsOyxgP_3std2io10IoSliceMutE6map_orQShNCINvBL_21default_read_vectoredNCNvYINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtBL_4Read13read_vectored0Es_0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i ], [ %i.q, %bb.e ], [ %i.s, %bb.f ]
  %.sroa.0.1.i.i.i = phi i64 [ 1, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionQNtNtCs2AWtUsOyxgP_3std2io10IoSliceMutE6map_orQShNCINvBL_21default_read_vectoredNCNvYINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtBL_4Read13read_vectored0Es_0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i ], [ 1, %bb.e ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20071
  %i.t = inttoptr i64 %.sroa.4.1.i.i.i to ptr
  %i.u = insertvalue { i64, ptr } poison, i64 %.sroa.0.1.i.i.i, 0
  %i.v = insertvalue { i64, ptr } %i.u, ptr %i.t, 1
  ret { i64, ptr } %i.v
}

; Function Attrs: nonlazybind uwtable
define internal noundef ptr @_RNvYINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtNtCs2AWtUsOyxgP_3std2io4Read14read_buf_exactCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !20091 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 13 uses
  %i.b = alloca [8 x i8], align 8                 ; 8 uses
  %.val = load ptr, ptr %0, align 8               ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.c, align 8            ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20092)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !20092, !noundef !20 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %.promoted.i = load i64, ptr %i.f, align 8, !alias.scope !20092 ; 5 uses
  %.not30.i = icmp eq i64 %i.e, %.promoted.i
  br i1 %.not30.i, label %_RINvNtCs2AWtUsOyxgP_3std2io22default_read_buf_exactINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEECsgsNUVCRJO2f_13influxdb3_lib.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !alias.scope !20093, !nonnull !20, !noundef !20 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1), "nonnull"(ptr %.val) ]
  %.promoted37.i = load i8, ptr %i.h, align 8, !alias.scope !20093
  %i.l = trunc nuw i8 %.promoted37.i to i1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20094)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20095)
  %i.m = sub i64 %i.e, %.promoted.i               ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 %.promoted.i ; 2 uses
  br i1 %i.l, label %_RNvMs3_NtNtCs4NRVxsYgnAr_4core2io12borrowed_bufNtB5_14BorrowedCursor11ensure_init.exit.i.i.i.peel, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.n, i8 0, i64 %i.m, i1 false), !noalias !20096
  store i8 1, ptr %i.h, align 8, !alias.scope !20097
  br label %_RNvMs3_NtNtCs4NRVxsYgnAr_4core2io12borrowed_bufNtB5_14BorrowedCursor11ensure_init.exit.i.i.i.peel

_RNvMs3_NtNtCs4NRVxsYgnAr_4core2io12borrowed_bufNtB5_14BorrowedCursor11ensure_init.exit.i.i.i.peel: ; preds = %bb.b, %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20098
  store ptr %i.n, ptr %i.a, align 8, !noalias !20098
  store i64 %i.m, ptr %i.i, align 8, !noalias !20098
  store i64 0, ptr %i.j, align 8, !noalias !20098
  store i64 %i.m, ptr %i.k, align 8, !noalias !20098
  %i.o = call { i64, ptr } @_RNvXs0_NtNtNtCseCDlJsl44RV_5tokio3net3tcp6streamNtB5_9TcpStreamNtNtNtBb_2io10async_read9AsyncRead9poll_read(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val, ptr noalias noundef nonnull align 8 dereferenceable(32) %.val1, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a), !noalias !20099 ; 2 uses
  %i.p = extractvalue { i64, ptr } %i.o, 0
  %i.q = trunc nuw i64 %i.p to i1
  br i1 %i.q, label %_RNvYINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtNtCs2AWtUsOyxgP_3std2io4Read8read_bufCsgsNUVCRJO2f_13influxdb3_lib.exit.thread5.i.peel, label %bb.c

bb.c:                                             ; preds = %_RNvMs3_NtNtCs4NRVxsYgnAr_4core2io12borrowed_bufNtB5_14BorrowedCursor11ensure_init.exit.i.i.i.peel
  %i.r = extractvalue { i64, ptr } %i.o, 1        ; 2 uses
  %.not.i.i.i.i.i.peel = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.peel, label %bb.d, label %_RNvYINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtNtCs2AWtUsOyxgP_3std2io4Read8read_bufCsgsNUVCRJO2f_13influxdb3_lib.exit.thread5.i.peel

bb.d:                                             ; preds = %bb.c
  %i.s = load i64, ptr %i.i, align 8, !noalias !20098, !noundef !20 ; 2 uses
  %i.t = load i64, ptr %i.j, align 8, !noalias !20098, !noundef !20 ; 5 uses
  %.not7.i.i.i.i.i.peel = icmp ugt i64 %i.t, %i.s
  br i1 %.not7.i.i.i.i.i.peel, label %.loopexit, label %bb.e, !prof !47

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20098
  %.not.i.i.i.peel = icmp ult i64 %i.m, %i.t
  br i1 %.not.i.i.i.peel, label %.loopexit9, label %_RNvYINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtNtCs2AWtUsOyxgP_3std2io4Read8read_bufCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i.peel, !prof !24

_RNvYINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtNtCs2AWtUsOyxgP_3std2io4Read8read_bufCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i.peel: ; preds = %bb.e
  %i.u = add i64 %i.t, %.promoted.i               ; 2 uses
  store i64 %i.u, ptr %i.f, align 8, !alias.scope !20097
  %i.v = icmp eq i64 %i.t, 0
  br i1 %i.v, label %_RINvNtCs2AWtUsOyxgP_3std2io22default_read_buf_exactINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEECsgsNUVCRJO2f_13influxdb3_lib.exit, label %.backedge.i.peel

_RNvYINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtNtCs2AWtUsOyxgP_3std2io4Read8read_bufCsgsNUVCRJO2f_13influxdb3_lib.exit.thread5.i.peel: ; preds = %bb.c, %_RNvMs3_NtNtCs4NRVxsYgnAr_4core2io12borrowed_bufNtB5_14BorrowedCursor11ensure_init.exit.i.i.i.peel
  %i.w = phi ptr [ inttoptr (i64 55834574851 to ptr), %_RNvMs3_NtNtCs4NRVxsYgnAr_4core2io12borrowed_bufNtB5_14BorrowedCursor11ensure_init.exit.i.i.i.peel ], [ %i.r, %bb.c ] ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20098
  %i.x = ptrtoint ptr %i.w to i64                 ; 3 uses
  %i.y = and i64 %i.x, 3
  switch i64 %i.y, label %default.unreachable [
    i64 2, label %.split.i.peel
    i64 3, label %bb.f
    i64 0, label %.split26.i.peel
    i64 1, label %.split25.i.peel
  ], !prof !45

.split25.i.peel:                                  ; preds = %_RNvYINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtNtCs2AWtUsOyxgP_3std2io4Read8read_bufCsgsNUVCRJO2f_13influxdb3_lib.exit.thread5.i.peel
  %i.z = getelementptr i8, ptr %i.w, i64 15
  %i.aa = load i8, ptr %i.z, align 8, !range !46, !noalias !20092, !noundef !20
  %i.ab = icmp eq i8 %i.aa, 35
  br i1 %i.ab, label %bb.g, label %_RINvNtCs2AWtUsOyxgP_3std2io22default_read_buf_exactINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEECsgsNUVCRJO2f_13influxdb3_lib.exit

.split26.i.peel:                                  ; preds = %_RNvYINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtNtCs2AWtUsOyxgP_3std2io4Read8read_bufCsgsNUVCRJO2f_13influxdb3_lib.exit.thread5.i.peel
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ad = load i8, ptr %i.ac, align 8, !range !46, !noalias !20092, !noundef !20
  %i.ae = icmp eq i8 %i.ad, 35
  br i1 %i.ae, label %bb.g, label %_RINvNtCs2AWtUsOyxgP_3std2io22default_read_buf_exactINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.f:                                             ; preds = %_RNvYINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtNtCs2AWtUsOyxgP_3std2io4Read8read_bufCsgsNUVCRJO2f_13influxdb3_lib.exit.thread5.i.peel
  %i.af = lshr i64 %i.x, 32
  %i.ag = icmp ult ptr %i.w, inttoptr (i64 180388626432 to ptr)
  %switch.idx.cast.i.i.i.peel = trunc i64 %i.af to i8
  %spec.select.i.i.i.peel = select i1 %i.ag, i8 %switch.idx.cast.i.i.i.peel, i8 -1 ; 2 uses
  %i.ah = icmp ne i8 %spec.select.i.i.i.peel, -1
  call void @llvm.assume(i1 %i.ah)
  %i.ai = icmp eq i8 %spec.select.i.i.i.peel, 35
  br i1 %i.ai, label %bb.g, label %_RINvNtCs2AWtUsOyxgP_3std2io22default_read_buf_exactINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEECsgsNUVCRJO2f_13influxdb3_lib.exit

.split.i.peel:                                    ; preds = %_RNvYINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtNtCs2AWtUsOyxgP_3std2io4Read8read_bufCsgsNUVCRJO2f_13influxdb3_lib.exit.thread5.i.peel
  %.mask.i.peel = and i64 %i.x, -4294967296
  %i.aj = icmp eq i64 %.mask.i.peel, 17179869184
  br i1 %i.aj, label %bb.g, label %_RINvNtCs2AWtUsOyxgP_3std2io22default_read_buf_exactINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.g:                                             ; preds = %.split.i.peel, %bb.f, %.split26.i.peel, %.split25.i.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20092
  store ptr %i.w, ptr %i.b, align 8, !noalias !20092
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b), !noalias !20092
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20092
  br label %.backedge.i.peel

.backedge.i.peel:                                 ; preds = %bb.g, %_RNvYINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtNtCs2AWtUsOyxgP_3std2io4Read8read_bufCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i.peel
  %i.ak = phi i64 [ %.promoted.i, %bb.g ], [ %i.u, %_RNvYINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtNtCs2AWtUsOyxgP_3std2io4Read8read_bufCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i.peel ] ; 2 uses
  %.not.i.peel = icmp eq i64 %i.e, %i.ak
  br i1 %.not.i.peel, label %_RINvNtCs2AWtUsOyxgP_3std2io22default_read_buf_exactINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEECsgsNUVCRJO2f_13influxdb3_lib.exit, label %_RNvMs3_NtNtCs4NRVxsYgnAr_4core2io12borrowed_bufNtB5_14BorrowedCursor11ensure_init.exit.i.i.i

_RNvMs3_NtNtCs4NRVxsYgnAr_4core2io12borrowed_bufNtB5_14BorrowedCursor11ensure_init.exit.i.i.i: ; preds = %.backedge.i.peel, %.backedge.i
  %i.al = phi i64 [ %i.bk, %.backedge.i ], [ %i.ak, %.backedge.i.peel ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20100)
  call void @llvm.experimental.noalias.scope.decl(metadata !20101)
  %i.am = sub i64 %i.e, %i.al                     ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20102
  store ptr %i.an, ptr %i.a, align 8, !noalias !20102
  store i64 %i.am, ptr %i.i, align 8, !noalias !20102
  store i64 0, ptr %i.j, align 8, !noalias !20102
  store i64 %i.am, ptr %i.k, align 8, !noalias !20102
  %i.ao = call { i64, ptr } @_RNvXs0_NtNtNtCseCDlJsl44RV_5tokio3net3tcp6streamNtB5_9TcpStreamNtNtNtBb_2io10async_read9AsyncRead9poll_read(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val, ptr noalias noundef nonnull align 8 dereferenceable(32) %.val1, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a), !noalias !20103 ; 2 uses
  %i.ap = extractvalue { i64, ptr } %i.ao, 0
  %i.aq = trunc nuw i64 %i.ap to i1
  br i1 %i.aq, label %_RNvYINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtNtCs2AWtUsOyxgP_3std2io4Read8read_bufCsgsNUVCRJO2f_13influxdb3_lib.exit.thread5.i, label %bb.h

bb.h:                                             ; preds = %_RNvMs3_NtNtCs4NRVxsYgnAr_4core2io12borrowed_bufNtB5_14BorrowedCursor11ensure_init.exit.i.i.i
  %i.ar = extractvalue { i64, ptr } %i.ao, 1      ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i.i, label %bb.i, label %_RNvYINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtNtCs2AWtUsOyxgP_3std2io4Read8read_bufCsgsNUVCRJO2f_13influxdb3_lib.exit.thread5.i

bb.i:                                             ; preds = %bb.h
  %i.as = load i64, ptr %i.i, align 8, !noalias !20102, !noundef !20 ; 2 uses
  %i.at = load i64, ptr %i.j, align 8, !noalias !20102, !noundef !20 ; 5 uses
  %.not7.i.i.i.i.i = icmp ugt i64 %i.at, %i.as
  br i1 %.not7.i.i.i.i.i, label %.loopexit, label %bb.j, !prof !47

.loopexit:                                        ; preds = %bb.i, %bb.d
  %.lcssa6 = phi i64 [ %i.s, %bb.d ], [ %i.as, %bb.i ]
  %.lcssa = phi i64 [ %i.t, %bb.d ], [ %i.at, %bb.i ]
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.lcssa, i64 noundef %.lcssa6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @453) #44, !noalias !20103
  unreachable

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20102
  %.not.i.i.i = icmp ult i64 %i.am, %i.at
  br i1 %.not.i.i.i, label %.loopexit9, label %_RNvYINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtNtCs2AWtUsOyxgP_3std2io4Read8read_bufCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i, !prof !24

.loopexit9:                                       ; preds = %bb.j, %bb.e
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @78, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #44, !noalias !20104
  unreachable

_RNvYINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtNtCs2AWtUsOyxgP_3std2io4Read8read_bufCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i: ; preds = %bb.j
  %i.au = add i64 %i.at, %i.al                    ; 2 uses
  store i64 %i.au, ptr %i.f, align 8, !alias.scope !20093
  %i.av = icmp eq i64 %i.at, 0
  br i1 %i.av, label %_RINvNtCs2AWtUsOyxgP_3std2io22default_read_buf_exactINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEECsgsNUVCRJO2f_13influxdb3_lib.exit, label %.backedge.i

_RNvYINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtNtCs2AWtUsOyxgP_3std2io4Read8read_bufCsgsNUVCRJO2f_13influxdb3_lib.exit.thread5.i: ; preds = %bb.h, %_RNvMs3_NtNtCs4NRVxsYgnAr_4core2io12borrowed_bufNtB5_14BorrowedCursor11ensure_init.exit.i.i.i
  %i.aw = phi ptr [ inttoptr (i64 55834574851 to ptr), %_RNvMs3_NtNtCs4NRVxsYgnAr_4core2io12borrowed_bufNtB5_14BorrowedCursor11ensure_init.exit.i.i.i ], [ %i.ar, %bb.h ] ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20102
  %i.ax = ptrtoint ptr %i.aw to i64               ; 3 uses
  %i.ay = and i64 %i.ax, 3
  switch i64 %i.ay, label %_RNvYINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtNtCs2AWtUsOyxgP_3std2io4Read8read_bufCsgsNUVCRJO2f_13influxdb3_lib.exit.thread5.i.unreachabledefault [
    i64 2, label %.split.i
    i64 3, label %bb.k
    i64 0, label %.split26.i
    i64 1, label %.split25.i
  ], !prof !45

_RNvYINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtNtCs2AWtUsOyxgP_3std2io4Read8read_bufCsgsNUVCRJO2f_13influxdb3_lib.exit.thread5.i.unreachabledefault: ; preds = %_RNvYINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtNtCs2AWtUsOyxgP_3std2io4Read8read_bufCsgsNUVCRJO2f_13influxdb3_lib.exit.thread5.i
  unreachable

default.unreachable:                              ; preds = %_RNvYINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtNtCs2AWtUsOyxgP_3std2io4Read8read_bufCsgsNUVCRJO2f_13influxdb3_lib.exit.thread5.i.peel
  unreachable

.split.i:                                         ; preds = %_RNvYINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtNtCs2AWtUsOyxgP_3std2io4Read8read_bufCsgsNUVCRJO2f_13influxdb3_lib.exit.thread5.i
  %.mask.i = and i64 %i.ax, -4294967296
  %i.az = icmp eq i64 %.mask.i, 17179869184
  br i1 %i.az, label %bb.l, label %_RINvNtCs2AWtUsOyxgP_3std2io22default_read_buf_exactINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEECsgsNUVCRJO2f_13influxdb3_lib.exit

.split26.i:                                       ; preds = %_RNvYINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtNtCs2AWtUsOyxgP_3std2io4Read8read_bufCsgsNUVCRJO2f_13influxdb3_lib.exit.thread5.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bb = load i8, ptr %i.ba, align 8, !range !46, !noalias !20092, !noundef !20
  %i.bc = icmp eq i8 %i.bb, 35
  br i1 %i.bc, label %bb.l, label %_RINvNtCs2AWtUsOyxgP_3std2io22default_read_buf_exactINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEECsgsNUVCRJO2f_13influxdb3_lib.exit

.split25.i:                                       ; preds = %_RNvYINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtNtCs2AWtUsOyxgP_3std2io4Read8read_bufCsgsNUVCRJO2f_13influxdb3_lib.exit.thread5.i
  %i.bd = getelementptr i8, ptr %i.aw, i64 15
  %i.be = load i8, ptr %i.bd, align 8, !range !46, !noalias !20092, !noundef !20
  %i.bf = icmp eq i8 %i.be, 35
  br i1 %i.bf, label %bb.l, label %_RINvNtCs2AWtUsOyxgP_3std2io22default_read_buf_exactINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.k:                                             ; preds = %_RNvYINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtNtCs2AWtUsOyxgP_3std2io4Read8read_bufCsgsNUVCRJO2f_13influxdb3_lib.exit.thread5.i
  %i.bg = lshr i64 %i.ax, 32
  %i.bh = icmp ult ptr %i.aw, inttoptr (i64 180388626432 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.bg to i8
  %spec.select.i.i.i = select i1 %i.bh, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.bi = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.bi)
  %i.bj = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.bj, label %bb.l, label %_RINvNtCs2AWtUsOyxgP_3std2io22default_read_buf_exactINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.l:                                             ; preds = %bb.k, %.split25.i, %.split26.i, %.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20092
  store ptr %i.aw, ptr %i.b, align 8, !noalias !20092
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b), !noalias !20092
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20092
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.l, %_RNvYINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtNtCs2AWtUsOyxgP_3std2io4Read8read_bufCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i
  %i.bk = phi i64 [ %i.al, %bb.l ], [ %i.au, %_RNvYINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtNtCs2AWtUsOyxgP_3std2io4Read8read_bufCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i ] ; 2 uses
  %.not.i = icmp eq i64 %i.e, %i.bk
  br i1 %.not.i, label %_RINvNtCs2AWtUsOyxgP_3std2io22default_read_buf_exactINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEECsgsNUVCRJO2f_13influxdb3_lib.exit, label %_RNvMs3_NtNtCs4NRVxsYgnAr_4core2io12borrowed_bufNtB5_14BorrowedCursor11ensure_init.exit.i.i.i, !llvm.loop !20090

_RINvNtCs2AWtUsOyxgP_3std2io22default_read_buf_exactINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %_RNvYINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtNtCs2AWtUsOyxgP_3std2io4Read8read_bufCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i, %.split.i, %.split26.i, %.split25.i, %bb.k, %.backedge.i, %_RNvYINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtNtCs2AWtUsOyxgP_3std2io4Read8read_bufCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i.peel, %.split25.i.peel, %.split26.i.peel, %bb.f, %.split.i.peel, %.backedge.i.peel, %bb.a
  %.sroa.0.0.i = phi ptr [ null, %bb.a ], [ @87, %_RNvYINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtNtCs2AWtUsOyxgP_3std2io4Read8read_bufCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i.peel ], [ %i.w, %.split25.i.peel ], [ %i.w, %.split26.i.peel ], [ %i.w, %bb.f ], [ %i.w, %.split.i.peel ], [ null, %.backedge.i.peel ], [ %i.aw, %.split26.i ], [ @87, %_RNvYINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtNtCs2AWtUsOyxgP_3std2io4Read8read_bufCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i ], [ %i.aw, %.split25.i ], [ %i.aw, %.split.i ], [ %i.aw, %bb.k ], [ null, %.backedge.i ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define internal { i64, ptr } @_RNvYINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamENtNtCs2AWtUsOyxgP_3std2io4Read14read_to_stringCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !20107 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %.val = load ptr, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.d, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20108)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !20108
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !20108, !noundef !20 ; 4 uses
  %i.g = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.g)
  store ptr %1, ptr %i.c, align 8, !noalias !20108
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store i64 %i.f, ptr %i.h, align 8, !noalias !20108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20108
  %i.i = invoke fastcc { i64, ptr } @_RINvNtCs2AWtUsOyxgP_3std2io19default_read_to_endINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEECsgsNUVCRJO2f_13influxdb3_lib(ptr %.val, ptr %.val1, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0, i64 undef)
          to label %_RNCINvNtCs2AWtUsOyxgP_3std2io22default_read_to_stringINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEE0CsgsNUVCRJO2f_13influxdb3_lib.exit.i unwind label %bb.b ; 3 uses

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.j, %bb.b ], [ %i.s, %bb.d ], [ %i.s, %bb.c ]
  invoke void @_RNvXNtCs2AWtUsOyxgP_3std2ioNtB2_5GuardNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std2io5GuardECsgsNUVCRJO2f_13influxdb3_lib.exit.i unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i

_RNCINvNtCs2AWtUsOyxgP_3std2io22default_read_to_stringINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEE0CsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %bb.a
  %i.k = extractvalue { i64, ptr } %i.i, 0        ; 3 uses
  %i.l = extractvalue { i64, ptr } %i.i, 1        ; 2 uses
  store i64 %i.k, ptr %i.b, align 8, !noalias !20108
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !noalias !20108
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !20108, !nonnull !20, !noundef !20
  %i.p = load i64, ptr %i.e, align 8, !alias.scope !20108, !noundef !20
  %i.q = sub nuw i64 %i.p, %i.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20108
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.r, i64 noundef %i.q)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %_RNCINvNtCs2AWtUsOyxgP_3std2io22default_read_to_stringINtNtCs8rTCm43AEA0_12tokio_rustls6common15SyncReadAdapterNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEE0CsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = icmp eq i64 %i.k, 0
  br i1 %i.t, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i, label %bb.d
end_hunk_1
